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

The dump-file helpers below are the complete N32 bodies from the same `kpm`
image. They operate on a file record whose type byte is at +8, section count
is at +12, section table at +20, and current file position at +28.

- `dfNewSection` (`usr/gfx/KONA/bin/kpm` 0x1000b1a0): **Established.**
  Size 296 bytes. It appends a 16-byte section record after growing the table
  by ten records when the current count reaches its capacity (`lw` at
  0x1000b204; allocator call at 0x1000b22c). The record stores the new
  section's returned file offset, caller-supplied position, and zero length at
  offsets 0, 4, and 8 (`sw` at 0x1000b26c, 0x1000b284, and 0x1000b298), then
  increments the count at +12 (`sw` at 0x1000b2ac). It returns zero for a null
  record or allocation failure and one after the record is appended.

- `dfWriteSection` (`usr/gfx/KONA/bin/kpm` 0x1000b2c8): **Established.**
  Size 228 bytes. It rejects a null record with zero, otherwise calls the
  record's write callback with the caller's buffer and byte count (`jalr` at
  0x1000b348). The callback result is added to the current section length at
  record +8 (`lw` at 0x1000b360; `sw` at 0x1000b368) and to the file position
  at +28 (`lw` at 0x1000b36c; `sw` at 0x1000b37c). It returns zero when the
  callback wrote the requested count and one when it wrote a short count.

- `dfWriteNewSectionFromPipe` (`usr/gfx/KONA/bin/kpm` 0x1000b3ac):
  **Established.** Size 392 bytes. It creates a section with `dfNewSection`
  (call at 0x1000b434), captures a shell command into a 0x1000-byte stack
  buffer (`addiu` at 0x1000b4c8), and appends the captured bytes with
  `dfWriteSection` (call at 0x1000b4f4). A capture or append failure closes the
  section handle through the cleanup callback and retries the caller's
  cleanup path; the function returns zero only after the section is complete.

- `dfListSections` (`usr/gfx/KONA/bin/kpm` 0x1000b934): **Established.**
  Size 384 bytes. It obtains the section-list buffer from the file callback
  (call at 0x1000b970), walks the count at record +12 in 16-byte steps, and
  replaces each list entry with the result of the section-name callback (call
  at 0x1000b9c4). If a name lookup fails it marks the result as incomplete and
  stores zero for that entry (`sw` at 0x1000b9dc); it returns the list buffer
  and stores the section count through the caller's pointer (`sw` at
  0x1000ba78).

- `dfFindSection` (`usr/gfx/KONA/bin/kpm` 0x1000bb8c): **Established.**
  Size 260 bytes. It scans the section records in 16-byte steps, comparing
  each record's name with the caller's string (call at 0x1000bc20). On a match
  it calls `dfSeekSection` with the matched index (call at 0x1000bc80), stores
  that index at record +24 (`sw` at 0x1000bc84), and returns the seek result;
  the no-match path returns -1 (`addiu` at 0x1000bc44).

- `dfReadSection` (`usr/gfx/KONA/bin/kpm` 0x1000bc90): **Established.**
  Size 180 bytes. It rejects a non-reader file type through the diagnostic
  error callback (call at 0x1000bce8), then invokes the record's read callback
  with the destination and requested count (`jalr` at 0x1000bd08). The number
  returned is added to the current position at +28 (`lw` at 0x1000bd14;
  `sw` at 0x1000bd24), and the return value is zero for a full read or one for
  a short read.

- `dfMarkSection` (`usr/gfx/KONA/bin/kpm` 0x1000bd44): **Established.**
  Size 244 bytes. It scans the section records and compares their names with
  the requested section (`jalr` at 0x1000bdd8). On a match it stores one in
  that record's mark field at +12 (`sw` at 0x1000be34) and returns zero after
  the scan; when no record matches it returns one. A non-reader record first
  reports error 398 through the diagnostic callback at 0x1000bda4.

- `dfUnmarkSection` (`usr/gfx/KONA/bin/kpm` 0x1000be38): **Established.**
  Size 240 bytes. It uses the same 16-byte record walk and name comparison as
  `dfMarkSection` (call at 0x1000becc), but clears the matching record's mark
  field at +12 (`sw` at 0x1000bf24). It returns one on every path, whether the
  requested name matches or is absent, and a non-reader file takes the diagnostic
  error path at 0x1000be98.

- `dfIsSectionMarked` (`usr/gfx/KONA/bin/kpm` 0x1000bf28): **Established.**
  Size 240 bytes. It compares the requested name with each section record and
  returns that record's mark word at +12 (`lw` at 0x1000c014) on the first
  match. A complete scan without a match returns -1 (`addiu` at 0x1000bfe0),
  and a non-reader record reports error 429 through the callback at
  0x1000bf80.

- `dfOpenDumpFile` (`usr/gfx/KONA/bin/kpm` 0x1000b5c4): **Established.**
  Size 880 bytes. It opens the requested path, allocates the file record and
  initializes its type and callbacks (`sw` at 0x1000b644 and `sb` at
  0x1000b67c). Reader mode allocates the section table from the header count
  (`lw` at 0x1000b770; allocator call at 0x1000b77c), loads each 16-byte
  record, and marks a malformed or short header with count -1 at +24
  (`sw` at 0x1000b900). Allocation or header failure closes the path and
  returns zero; success returns the initialized file record.

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
  **Established.** Calls `klog` with priority 5 (call at 0x1001b840), then reads
  the engine status word at +0x10 of the `kpminfo` record (`lw` at 0x1001b85c).
  The value it writes is 0x801 when no bit of 0xf0 is set in that word and 0xc01
  otherwise (0x800 or 0xc00 ORed with 1; `andi` at 0x1001b874, `ori` at
  0x1001b8a0). It scans engine numbers 0..7 and, for every engine whose bit is
  set in the status word, calls `ged_set_current_ge` with the engine number
  (call at 0x1001b8ac) and `ge_register_write` with register 0x40038 and that
  value (call at 0x1001b8bc; the register is `lui` 4 and `ori` 0x38). It then
  calls `ged_set_current_ge` with the word at +0x18 of the same record (call at
  0x1001b8f4) and returns zero.
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

- `locate_register` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10012068; size 396 bytes. Walks the six-word register records until the
  record terminator or a matching name is found; active records are selected
  by their kind at record offset 0x8 (`lw` at 0x100120cc), and the match is
  returned through the caller's record pointer. Kinds 1 and 3-6 take the
  normal lookup path, while kinds 2 and 5 use an alternate descriptor before
  continuing; an empty table returns -1 (`addiu` at 0x10012164). (`kpm`,
  6.5.30m, complete N32 body read at 0x10012068-0x100121f0.)
- `kjiSetSubField` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x100116f0; size 548 bytes. Locates a scan-field descriptor, masks the
  caller's value to the field width, shifts it to the descriptor's bit
  position, and merges it into the supplied instruction or data word. The
  descriptor's field record supplies the source word and field index
  (`lw` at 0x100117e4 and 0x1001180c), while its start and end positions
  bound the inserted value (`lw` at 0x10011818 and `0x1001182c`). A failed
  descriptor lookup reports the field error at 0x100118d4 and returns -1
  (`addiu` at 0x10011910); a successful insertion returns zero. (`kpm`,
  6.5.30m, complete N32 body read at 0x100116f0-0x10011913.)
- `kjiGetSubField` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10011914; size 528 bytes. Finds a named scan field, extracts the selected
  bits from the caller's word, right-shifts them by the descriptor's start bit,
  and returns the field value. It reports a missing field through the same
  diagnostic path used by `kjiSetSubField` and returns the extracted value only
  after the descriptor bounds have been checked. (`kpm`, 6.5.30m, complete N32
  body read at 0x10011914-0x10011b23.)
- `kjiGetSubFieldV` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10011b24; size 720 bytes. Reads a named field from each element of a
  caller-supplied vector, using the descriptor's element stride and bit range,
  and writes the extracted values to the destination vector. A missing field
  or invalid vector takes the diagnostic error return; successful extraction
  preserves the vector order. (`kpm`, 6.5.30m, complete N32 body read at
  0x10011b24-0x10011df3.)
- `kj_arrange_global_instruction` (`usr/gfx/KONA/bin/kpm`): **Established.**
  Address 0x10011df4; size 564 bytes. Builds a global scan instruction by
  clearing the destination word, selecting the requested chip and register
  descriptor, and inserting the descriptor's instruction field at its mapped
  bit position. It returns the arranged word or the diagnostic error result
  when the chip/register pair is not present. (`kpm`, 6.5.30m, complete N32
  body read at 0x10011df4-0x10012027.)
- `show_general_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1000a5c0; size 268 bytes. Reads the general capture section into a 0x1000-
  byte local buffer (`addiu` at 0x1000a65c), repeatedly formats each returned
  record, and stops when the formatter returns zero (`bnez` at 0x1000a698).
  The successful path returns zero; a section-reader failure follows the
  formatter's error path. (`kpm`, 6.5.30m, complete N32 body read at
  0x1000a5c0-0x1000a6c7.)
- `show_overview_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x1000dc90; size 780 bytes. Requests one overview record, formats the pipe
  and FIFO fields, then examines the eight per-engine status bits in the
  record's status word (`and` at 0x1000dd9c). It emits either the ordinary
  engine line or the special bypass line for each selected engine and formats
  the DMA, bus-status and stalled-engine fields on their corresponding paths.
  A non-positive section result reports the section error and returns -1
  (`addiu` at 0x1000df38); a complete decode returns zero. (`kpm`, 6.5.30m,
  complete N32 body read at 0x1000dc90-0x1000df9b.)
- `show_bef_fifo_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x100193cc; size 1500 bytes. Reads the BEF FIFO section as four-byte records,
  rejects an empty section, derives the byte count from the returned record
  count (`sll` at 0x1001946c), and decodes each record through
  `disassemble_tbus` when the requested display mode is below 3. The raw and
  decoded words are copied into the section output in bounded chunks; malformed
  counts and failed reads select the error returns, while a complete walk
  returns zero. (`kpm`, 6.5.30m, complete N32 body read at
  0x100193cc-0x1001999b.)
- `ged_register_write` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10019e3c; size 164 bytes. Selects distributor register 0x600 (`sw` at
  0x10019e94), encodes the caller's index as bit 5 plus its upper bits masked
  by 0x1ff00 (`and` at 0x10019ea8), writes the value through offset 0x3f0
  (`sw` at 0x10019eb0), then selects 0xac0 (`sw` at 0x10019ec0) and writes
  the same value there (`sw` at 0x10019ecc). It returns zero. (`kpm`,
  6.5.30m, complete N32 body read at 0x10019e3c-0x10019edf.)
- `ged_set_current_ge` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10019ee0; size 228 bytes. Converts the requested engine number to a one-bit
  mask (`sllv` at 0x10019f10), writes that mask five times to distributor
  register 0x222 through `ged_register_write` (calls at 0x10019f1c,
  0x10019f2c, 0x10019f3c, 0x10019f4c and 0x10019f5c), then writes
  0x58400800 to selected register 0x200600 (`sw` at 0x10019f94) and 1 to
  0x200a80 (`sw` at 0x10019fc0). It returns zero. (`kpm`, 6.5.30m,
  complete N32 body read at 0x10019ee0-0x10019fbf.)

- `get_field_length` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10012028; size 64 bytes. It selects the caller's register-table row by
  multiplying the index by nine (`sll` at 0x10012040, `addu` at 0x10012044
  and `sll` at 0x1001204c), reads that row's end and start bit positions at
  offsets +0x14 and +0x10 (`lw` at 0x10012054 and 0x10012058), and returns
  end minus start plus one (`subu` at 0x1001205c and the delay-slot `addiu`
  at 0x10012064). (`kpm`, 6.5.30m, complete N32 body read at
  0x10012028-0x10012067.)

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
  0x100167cc; size 292 bytes. It reads 0x200 four-byte entries with `fread`
  (call at 0x100167fc; the stream is its argument `a0`) into a stack buffer. A
  short read prints a message and returns -1. Otherwise it loops over the 0x200
  entries and prints, with `fprintf` to `output`, the index, the word read from
  the stream and the word at the same index of an array in memory whose base is
  a global pointer (GOT slot 85) plus 0x8218 (load at 0x100168a8). It then
  returns zero. What that array is, and what the two printed columns mean, is
  unknown.
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
- `free_arm_symbols` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10032a98; size 116 bytes. Walks the ARM-symbol list in eight-byte records,
  frees each non-zero symbol pointer at record offset 0 (`lw` at 0x10032ac0),
  follows the next record at offset 8 (`lw` at 0x10032ae4), and returns zero
  after the list terminator. (`kpm`, 6.5.30m, complete N32 body read at
  0x10032a98-0x10032b0b.)
- `asym_address` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10032b0c; size 132 bytes. Scans eight-byte ARM-symbol records until the
  name pointer is null (`lw` at 0x10032b64), passes each name and the caller's
  query to the match callback (`jalr` at 0x10032b50), and returns the matched
  record's second word (`lw` at 0x10032b74). A non-match advances by one
  record and returns the terminal record's second word. (`kpm`, 6.5.30m,
  complete N32 body read at 0x10032b0c-0x10032b8f.)
- `asym_symbol` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10032b90; size 188 bytes. Searches the ARM-symbol records by address,
  comparing each record's value at offset 4 with the query (`lw` at
  0x10032bf8 and 0x10032c10), and returns the matching name pointer or the
  preceding record's name pointer (`lw` at 0x10032c28). It stops at the
  one-byte name terminator (`lbu` at 0x10032bac) and returns the table's
  terminal pointer when no later record qualifies. (`kpm`, 6.5.30m, complete
  N32 body read at 0x10032b90-0x10032c4b.)
- `analyze_rbus` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1002d2ac;
  size 8 bytes. It immediately returns zero through the delay-slot move at
  0x1002d2b0 and performs no raster-bus reads, writes, or report calls in its
  complete body. (`kpm`, 6.5.30m, instructions at 0x1002d2ac and
  0x1002d2b0.)
- `kpm_interact` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000f538;
  size 8 bytes. Its only instructions are the return at 0x1000f538 and the
  delay-slot `nop` at 0x1000f53c, so the advertised interactive mode has no
  body behavior in this executable. (`kpm`, 6.5.30m, complete N32 body read at
  0x1000f538-0x1000f53f.)

## Register tables and logging

| Function | Role |
|---|---|
| `locate_register`, `assign_register`, `extract_register`, `get_field_length` | find a register by name in the per-chip tables (`hip1_jt_regs`, `hip2_jt_regs`, `imp8_jt_regs`, `pg2_jt_regs`, `tg1_jt_regs`, `tf1_jt_regs`, `tm1_jt_regs` and their later revisions), then set or read a bit field of a captured image |
| `kjiSetSubField`, `kjiGetSubField`, `kjiGetSubFieldV`, `kj_arrange_global_instruction` | set or read a sub-field of a scan instruction or data register and build the global instruction word that selects one chip's register on a chain |
| `kerror`, `klog`, `get_time`, `findfile`, `create_file`, `open_file`, `init_report`, `close_report` | the tool's logging and files: error and information lines ("EFATAL", "EINFO"), the time stamp, a path search under the `GL_GRROOT` root, and the summary and error report files |
| `__start`, `__istart`, `_mcount` | C runtime start-up and the profiling hook the compiler inserts |

The following readings pin down the small helpers used by those tables and
reports.

- `findfile` (`usr/gfx/KONA/bin/kpm` 0x1000f9e0): **Established.** The
  300-byte body first asks the path helper for the graphics-root directory,
  then tries the caller's first name and second name in that directory. It
  returns the first successful path result, frees the temporary path after
  each failed attempt, and returns null after both lookups fail; the two
  search calls are at 0x1000fa50 and 0x1000fac4.

- `create_file` (`usr/gfx/KONA/bin/kpm` 0x1000fb0c): **Established.** Its
  644-byte body creates a 0x1000-byte temporary path buffer, asks the path
  helper for the caller's root, and opens the requested name with the selected
  mode. It loops over generated output records, flushing each record through
  the file callback at 0x1000fc40 and appending it to the destination at
  0x1000fc50; a negative callback result closes the destination and returns
  zero. The alternate two-byte header path reads a halfword at 0x1000fd68
  and stores it at 0x1000fd70 before entering the same loop.

- `open_file` (`usr/gfx/KONA/bin/kpm` 0x1000fd90): **Established.** The
  692-byte body chooses the reader or writer path from the global mode word at
  +0x4ac, allocates the file record, and reads the fixed header through the
  file callback. Reader mode loads the record's type halfword at +0xa (`lhu` at
  0x1000fea8), checks the header descriptor, and repeatedly reads section
  records until the requested count is satisfied; malformed input releases
  the record and returns zero. A valid writer returns the initialized record,
  while a failed path or callback returns the saved error value.

- `init_report` (`usr/gfx/KONA/bin/kpm` 0x1003206c): **Established.** The
  920-byte body returns zero when reporting is disabled, otherwise initializes
  the report descriptor, writes the caller's leading values and each of its
  words, adds the fixed report fields 5 and 6 through callbacks at 0x100322a0
  and 0x100322c8, then creates the report file. It stores the resulting handle
  in the global slot at 0x10032400 and returns zero on success or -1 after
  closing the partial report.

- `close_report` (`usr/gfx/KONA/bin/kpm` 0x10032404): **Established.** The
  428-byte body returns immediately when reporting is disabled or no current
  report exists. Otherwise it writes the final report descriptor, emits the
  completion field 6, closes the file, and clears the global report slot; if
  the close path has no descriptor it creates one from the saved status word
  before doing the same cleanup.

## Boundary-scan library (`jt_*`)

- `kona_jt_set_custom_error_report` (`usr/gfx/KONA/bin/kpm`): **Established.**
  Address 0x10010164; occupies 32 bytes. It loads the callback-slot address
  from absolute 0x1014be00 (`lw` at 0x10010178), returns that address
  (`jr` at 0x1001017c) and stores the caller's function pointer through it
  in the return delay slot (`sw` at 0x10010180). The body does not read the
  callback value already in the slot.
- `kona_jt_set_custom_error_report` in `usr/diags/IR/bin/irsaudit`:
  Address 0x1002f1a4; occupies 32 bytes.
  **Established.** It loads the callback-slot address from absolute 0x102bc558 (`lw` at 0x1002f1b8),
  returns 0x102c1fb0 (`jr` at 0x1002f1bc) and stores the caller's function pointer through it
  in the return delay slot (`sw` at 0x1002f1c0). Its body differs from
  usr/gfx/KONA/bin/kpm at 0x10010164 in five byte positions; the slot pointer resolves to
  0x102c1fb0 here and 0x1014e9a8 in KPM.

**Established** (names, strings and the host procedures in [hip.md](hip.md#the-hosts-boundary-scan-controller-and-the-arm-debug-window)). `kpm` and `irsaudit` link the same boundary-scan library: it reads chain and chip descriptions from boundary-scan description files (`read_bsdl`, `read_bsr`, `jt_findfile`, `jt_zopen`, `jt_zclose`, `jt_canonize`, `type_to_func`, `type_to_safe`, `porttopin`, `pintoport`, `premature_eof`), builds instruction and data vectors for each chip on a chain, and sends them through a set of low-level procedures that the tool installs (`jt_set_procs`; for `kpm` those are the host-register routines of the previous reference).

| Function | Role |
|---|---|
| `jt_init`, `jt_set_error_handler`, `jt_set_debug_handler`, `jt_error`, `jt_debug`, `jt_perror` | library start-up and the error and debug hooks (the tool's handler prints "KONAjtag:") |
| `jt_new_data_vector`, `jt_new_data_bvector`, `jt_new_inst_vector`, `jt_new_inst_bvector`, `jt_dispose_vector`, `jt_int_to_vector`, `jt_reverse_unpacked_vector`, `jt_copy_bits`, `jt_extract_bits`, `jt_insert_bits`, `jt_nullify` | bit vectors for shifting: allocate, convert to and from integers, reverse, copy, cut out and splice bit ranges |
| `jt_find_chip`, `jt_find_chain_length`, `jt_expand_portlist`, `jt_lookup_port`, `jt_extract_chip_register`, `jt_insert_chip_register`, `jt_print_chain`, `jt_print_bsr`, `jt_dispose_chain`, `jt_read_chain` | the chain model: find a chip by name, measure the chain, resolve pin names, move a register's bits in and out of the chain image, print and free it |

- `jt_set_global_instruction` (`usr/gfx/KONA/bin/kpm` 0x10033e70):
  **Established.** Size 876 bytes. It walks the chain records from the last
  chip toward the first, packs the selected instruction bits into the chain
  vector with `jt_unpack_vector` (call at 0x10034014), and records each
  chip's resulting bit offset and length in its chain record (`sw` at
  0x1003404c and 0x100340b0). It then writes the vector through the installed
  scan procedure (call at 0x10034160), disposes the temporary vector, and
  returns zero; a scan-procedure failure leaves -1 in the result slot at 32(sp) (`sd` at
  0x100341bc), which the return path loads.

- `jt_set_individual_instructions` (`usr/gfx/KONA/bin/kpm` 0x10034900):
  **Established.** Size 904 bytes. It visits each chain record whose kind is
  one, extracts the instruction value for that chip from the caller's array
  (`lw` at 0x100349c4), and repeats the value across the chip's instruction
  width while building the packed vector (call at 0x10034afc). It updates the
  chain offset and packed length fields (`sw` at 0x10034b38 and 0x10034b9c),
  sends the vector through the installed scan procedure (call at
  0x10034c50), and returns zero after cleanup. An error from vector creation
  or scanning leaves the saved result negative.

- `jt_isolate_chip` (`usr/gfx/KONA/bin/kpm` 0x10034c90): **Established.**
  Size 960 bytes. It finds the requested chip in the chain, reads its
  instruction width and bypass value from the chip record (`lw` at
  0x10034d60 and 0x10034d8c), and builds an instruction vector in which the
  selected chip receives the caller's instruction while the other chips get
  their bypass value. The per-chip vector words are packed with
  `jt_unpack_vector` (call at 0x10034eb8), then emitted through the installed
  scan procedure (call at 0x10035008). The selected chain record receives the
  packed offset and length (`sw` at 0x10034ef0 and 0x10034f14); vector or scan
  failure returns -1, otherwise cleanup returns zero.

- `jt_read_chain` (`usr/gfx/KONA/bin/kpm` 0x100352a0): **Established.**
  Size 2388 bytes. It resolves and opens the chain description (`jt_findfile`
  at 0x100352d0 and `jt_zopen` at 0x10035314), allocates the chain and its
  chip-record array, and reads the description's chip lines into 56-byte
  records (`sw` at 0x10035384 through 0x1003539c). It skips spaces and tabs
  while extracting each non-empty line (`lbu` at 0x10035980-0x10035a54), then
  canonicalizes the chip name and loads its boundary-register description
  (`jt_canonize` at 0x10035acc). For each chip it accumulates instruction and
  data lengths into the chain totals at +16 and +20 (`sw` at 0x10035848 and
  0x10035880), closes the compressed input at 0x10035bc8, and returns the
  chain object; allocation, parse, or lookup errors return null after the
  library error callback.
| `jt_send_instruction`, `jt_set_individual_instructions`, `jt_conditional_reset`, `jt_powerup_chain`, `jt_free_bist` | send an instruction to one chip or one to each, reset the chain only when needed, power up the chips' test logic, release a chip's built-in self-test state |

- `jt_free_bist` (`usr/gfx/KONA/bin/kpm` 0x100389f0): **Established.** Its
  528-byte body walks the 16-byte chip records from the chain pointer at
  record +0x244, dispatching records whose type is not 6 through the callback
  selected by the table at 0x10038a68. The callback argument is the selected
  record field at +4, +8 or +0xc, with the exact choice determined by the
  record subtype; the loop increments its index at 0x10038ba8 and stops when
  the next record has type 6 (`lw` at 0x10038bc0). It then invokes the final
  cleanup callback on the chain pointer and clears the owner field with the
  word store at 0x10038be8.

These boundary-scan helpers were read in their complete N32 address ranges.

- `jt_reverse_unpacked_vector` (`usr/gfx/KONA/bin/kpm`). **Established.** It
  swaps the first and last bytes of the caller's vector, then advances inward
  until the index reaches half the supplied length; the two byte reads are at
  0x10033074 and 0x10033088, and the writes are at 0x10033098 and
  0x100330ac. Address 0x10033020; the routine occupies 212 bytes and returns
  through its normal `jr` at 0x100330ec. (`kpm`, 6.5.30m.)

- `jt_pack_vector` (`usr/gfx/KONA/bin/kpm`). **Established.** It converts an
  ASCII bit string into packed bytes, consuming eight characters per output
  byte and placing each `0`/`1` value at its bit position; the character load
  is at 0x10033170 and the full-byte store is at 0x100331bc. A final partial
  byte is emitted when the bit count is not divisible by eight, using the load
  at 0x10033224 and store at 0x1003326c. It returns the requested bit count
  at 0x10033270. Address 0x10033100; the routine occupies 388 bytes. (`kpm`,
  6.5.30m.)

- `jt_unpack_vector` (`usr/gfx/KONA/bin/kpm`). **Established.** It expands
  packed bytes into ASCII `0`/`1` characters, reading the partial leading byte
  when the bit count has a remainder and then walking complete bytes in reverse
  order; the partial-byte read is at 0x100332d8, the complete-byte read at
  0x10033374, and the output character store at 0x100333bc. It returns the
  supplied bit count at 0x100333f4. Address 0x10033290; the routine occupies
  376 bytes. (`kpm`, 6.5.30m.)

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

The following additional readings were taken from complete N32 address ranges.

- `V_inspect` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000a008;
  size 88 bytes. It passes the selected dump and inspection arguments to the
  inspection callback (`jalr` at 0x1000a044) and returns zero after the
  callback completes (`move` at 0x1000a050).

- `V_list` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000a060;
  size 444 bytes. It lists section names from `dfListSections` (call at
  0x1000a090), prints each name, and marks or unmarks entries when the viewer's
  state requests it (`dfIsSectionMarked` call at 0x1000a148). It frees the
  returned list at 0x1000a1a4 and returns zero; a list failure takes the
  diagnostic formatter at 0x1000a204.

- `V_mark` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000a21c;
  size 152 bytes. It calls `dfMarkSection` (`jal` at 0x1000a274) once for
  each pointer in the array passed as the third argument (`a2`), starting at
  index 1 (array plus 4, `addiu` at 0x1000a25c) and passing its first argument
  through. The count is the second argument (`a1`): the loop ends when the index
  reaches it (`slt` at 0x1000a280) and a count below 2 skips it (`slti` at
  0x1000a23c). It returns zero.

- `V_show` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000a2b4;
  size 496 bytes. It obtains the current file position (`dfGetFilePointer`
  call at 0x1000a2f0), seeks the requested section (`dfFindSection` call at
  0x1000a324), reads each selected section record, and dispatches its content
  to the viewer formatter (`jalr` at 0x1000a3f4). It handles the one-section
  shortcut by calling `V_list` at 0x1000a474 and returns -1 for a missing
  section (`addiu` at 0x1000a480).

- `V_unmark` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000a4a4;
  size 152 bytes. It walks the viewer's section-name array and calls
  `dfUnmarkSection` for each entry (`jal` at 0x1000a4fc), then returns zero
  after the count loop (`slt` at 0x1000a508).

- `dfCreateDumpFile` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1000afdc; size 452 bytes. It creates the underlying file (`create_file`
  call at 0x1000b018), allocates a 0x20-byte file record (`jalr` at
  0x1000b034), initializes type 2 and an 0x800-byte section capacity (`sb` at
  0x1000b090 and `sw` at 0x1000b06c), and writes the dump header. Any
  allocation or header failure closes the file and returns null (`jalr` calls
  at 0x1000b0ac-0x1000b0d8).

- `dfPrintf` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000b534;
  size 144 bytes. It formats the variadic arguments into a 0x450-byte stack
  buffer (`addiu` at 0x1000b534), then appends the resulting byte count through
  `dfWriteSection` (`jal` at 0x1000b5ac). Its return value is the section-write
  result.

- `dfSeekSection` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000bab4;
  size 216 bytes. It rejects non-reader records (`lbu` at 0x1000babc and
  diagnostic call at 0x1000bb00), seeks to the selected 16-byte section record
  (`sll` at 0x1000bb20 and read callback at 0x1000bb38), and stores the new
  file position at record offset +0x1c (`sw` at 0x1000bb80). It returns zero on
  success and one when the read callback fails (`addiu` at 0x1000bb48).

- `dfGetFilePointer` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1000c018; size 104 bytes. It checks that the file is a reader (`lbu` at
  0x1000c01c), reports the wrong type through the error callback at
  0x1000c060, and returns the file's current position from record offset zero
  (`lw` at 0x1000c074).

- `dfCloseDumpFile` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1000c080; size 656 bytes. It distinguishes reader and writer records
  (`lbu` at 0x1000c08c), flushes and closes a reader through the file callback
  (`jalr` at 0x1000c11c), and for a writer closes every section, releases its
  16-byte records (`addiu` at 0x1000c1cc), writes the final header, and frees
  the file, path, and record allocations (`jalr` calls at 0x1000c29c-0x1000c2c4).
  It returns zero on success and one on a close failure (`addiu` at
  0x1000c130).

- `kpm_dump` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000d510;
  size 1604 bytes. It initializes the report timestamp and capture state,
  opens the requested dump (`dfCreateDumpFile` call at 0x1000d650), loads ARM
  and GE symbols when enabled (`jal` calls at 0x1000d678 and 0x1000d6a0),
  then runs the adapter, HIP and JTAG inspections in sequence (`jal` calls at
  0x1000d714-0x1000d744). It writes the overview, closes the dump, cleans the
  DMA map, and reports errors at each negative return branch.

- `kpm_status` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000e210;
  size 288 bytes. It sets the status-mode bit in the global pipe flags
  (`ori` at 0x1000e258), runs the pipe check (`jal` at 0x1000e25c), then reads
  the JTAG state with `jtagInspection` (`jal` at 0x1000e294). Each negative
  result is logged and the routine returns zero on completion (`move` at
  0x1000e2a8).

- `kerror` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000f540;
  size 596 bytes. It formats an error message into the caller's variadic
  buffer (`jalr` at 0x1000f5d8), writes it to the diagnostic report and log
  streams (`jalr` at 0x1000f60c and 0x1000f638), and sets the global error flag
  (`sw` at 0x1000f6a0). When report output is enabled it also closes the report
  and emits the terminal error status (`jal` at 0x1000f730).

- `klog` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000f794;
  size 504 bytes. `a0` is a priority, `a1` a format string and the remaining
  argument registers the variadic values, which it spills to the frame. It
  returns at once, through 0x1000f878, when the priority is not below the word
  at +1192 of the `opts` record (`slt` at 0x1000f7e4). Otherwise it writes to
  the stream held in `output`: `fprintf` of a string chosen by the priority
  (call at 0x1000f838), then `vfprintf` of the caller's format and arguments
  (call at 0x1000f858). When the `opts` word at +1200 is non-zero and the
  priority is below 3 it also calls `vsyslog` (0x1000f8b8), `vfprintf` to a
  second stream (0x1000f8d8) and stores 1 in a global word (0x1000f8f4). The
  meaning of the `opts` words at +1192, +1200 and +1204 is unknown.

- `get_time` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1000f98c;
  size 84 bytes. It obtains the current clock value (`jalr` at 0x1000f9b0),
  converts it to printable time text through the caller's buffer (`jalr` at
  0x1000f9c8), and returns the conversion result.

- `read_chains` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x100216dc;
  size 2464 bytes. It initializes the boundary-scan lookup tables and selects
  a chain-description parser through the configuration jump table (`lw` at
  0x100218b4 and `jr` at 0x100218b8). The selected parser allocates a chain
  record (`jalr` at 0x10021964), parses the description and chip records, and
  stores the completed object in the global chain slot (`sw` at 0x10021980).
  Invalid configuration releases the temporary record through the error path.

- `disassemble_tbus` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x1003141c; size 1924 bytes. It keeps a pending raster-bus word in a state
  record, combines the low two command bits with the caller's alignment
  (`andi` at 0x10031480 and `or` at 0x10031508), and dispatches command
  classes 9, 10, 11, 13, 14 and 15 through the decoder table (`beq` tests at
  0x1003150c-0x10031544). Class 14 selects a handler from the upper command
  bits (`and` at 0x100315d4 and table load at 0x100315ec); handled words clear
  the pending state at 0x10031564. A partial command is retained in the state
  record (`sw` at 0x100315ac-0x100315bc).

- `armInspection` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10032c4c;
  size 652 bytes. It creates an ARM-register dump section, selects an ARM
  address, reads the host word at offset 0x3f0 (`sw` at 0x10032ce8 and `lw` at
  0x10032d00), and writes a 20-byte record (`dfWriteSection` call at
  0x10032d90 with length 0x14). When status bit 8 is set (`andi` at
  0x10032da8), it allocates a second section, reads 0x2000 words from the ARM
  window (`sw` at 0x10032e28 and loop bound at 0x10032e34), writes 0x8000
  bytes, frees the buffer, and returns zero. Allocation failure returns -1
  (`addiu` at 0x10032ed4).

- `show_arm_symbols_section` (`usr/gfx/KONA/bin/kpm`): **Established.** Address
  0x10032ed8; size 324 bytes. It requests a 20-byte ARM-symbol section with
  element size one (`jalr` at 0x10032f08), and, when the returned count is
  nonzero, prints the symbol records from the section at offsets +0x1f0 and
  +0x208 through the section formatter (`jalr` at 0x10032f54 and 0x10032f74).
  A requested auxiliary section at offset +0x220 is printed only when the
  caller's flag at stack offset +0xc is nonzero (`beqz` at 0x10032f94 skips it when the flag is zero); a
  failed section request reports the error and returns -1 (`bltz` at
  0x10032f10 and `addiu` at 0x1003300c), while the normal path returns zero.
  (`kpm`, 6.5.30m, complete N32 body read at 0x10032ed8-0x1003301b.)

- `read_arm_symbols` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x100325b0; size 1256 bytes. It reads the ARM symbol file into a temporary
  table, parses each record's address and name, and stores the completed table
  in the caller-visible state (`sw` at 0x100329d8 and loop at 0x100327f0).
  The symbol-count and record-width variants come from the image header
  (`lhu` at 0x100329fc); malformed input frees the temporary table and returns
  -1 through the error path at 0x10032924.

- `jt_print_chain` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10037700;
  size 1144 bytes. It walks all chain records (`lw` at 0x10037748 and loop
  branch at 0x10037a60), prints each chip's name and register description, and
  dispatches register contents to `jt_print_bsr` (`jal` at 0x10037810). It
  counts instruction and data fields in separate stack counters and prints
  their totals through formatter calls near 0x10037a74-0x10037b58.

- `jt_print_bsr` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10037b80;
  size 1756 bytes. It prints the chip's descriptor words, conditionally prints
  the instruction and data vectors (`andi` tests at 0x10037bf8 and
  0x10037c2c), then walks the register list at +0x14 in 4-byte index steps
  (`lw` at 0x10037c84 and loop at 0x10037cb0). It prints each register's bit
  width and value, followed by bit names selected by the width at +0x1c
  (`sllv` at 0x10037d14).

- `jt_dispose_chain` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x10038f10; size 268 bytes. It walks the chain records backwards from count
  minus one (`addiu` at 0x10038f34 and loop at 0x10038fb0), disposes each
  active chip record through the cleanup callback (`jal` at 0x10038f9c), then
  frees the record array, name and chain allocations (`jalr` calls at
  0x10038fc8-0x10038ffc).

- `jt_findfile` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10039020;
  size 536 bytes. It obtains the configured search path, tries the caller's
  filename and then the library suffix form (`jalr` calls at 0x1003904c,
  0x100390a8 and 0x100390f8), and returns the matching path buffer. On a
  successful search it strips the final separator byte (`sb` at 0x10039134
  and 0x10039200); failed searches return null at 0x10039218.

- `jt_zopen` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10039440;
  size 656 bytes. It allocates an aligned input buffer from the filename
  length (`subu` at 0x1003948c), reads the compressed header, and stores its
  two result words at frame offsets -0xbc and -0x15c (`sw` at 0x100394c4 and
  0x100394e0). Uncompressed input allocates a second buffer and returns that
  handle (`jal` at 0x10039690); compressed input builds the stream object and
  returns the decompressor result (`jal` at 0x1003958c). Allocation or header
  failure returns zero.

- `jt_conditional_reset` (`usr/gfx/KONA/bin/kpm`). **Established.** Address
  0x100341e0; size 1816 bytes. It builds the reset instruction list,
  canonicalizes the chain, and scans active records backwards from count minus
  one (`lw` at 0x100342a8 and `bltz` at 0x100342bc). It skips power, test and
  memory entries when the caller masks request them (tests at
  0x10034340-0x10034498), inserts the selected instruction with
  `jt_unpack_vector` (call at 0x10034768), and sends the vector with
  `jt_send_instruction` (call at 0x100348b8). It records the packed length at
  chain offset +0x18 (`sw` at 0x10034884) and returns zero after cleanup.

- `jt_insert_bits` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x10039c80;
  size 860 bytes. It resolves a chip and register, converts the selected bit
  offset to a byte and bit position (`sra` at 0x10039e58), replaces target bits
  while preserving the other bits (`and`/`or` at 0x10039ee4-0x10039ef8), and
  stores the updated byte (`sb` at 0x10039f18). It frees the temporary lookup
  vector and returns zero; lookup or allocation failures return -1 (`sd` at
  0x10039cfc, 0x10039d58 and 0x10039e44).

- `jt_nullify` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1003a670;
  size 672 bytes. It walks every active chain record (`lw` at 0x1003a6e4 and
  loop at 0x1003a8f4), resolves its instruction and data vectors, and replaces
  selected bit ranges with zero or the descriptor's null value (`jalr` at
  0x1003a778 and `sb` at 0x1003a860 and 0x1003a89c). It skips records whose
  kind is not one (`bne` at 0x1003a710) and returns after the final record.

- `jt_copy_bits` (`usr/gfx/KONA/bin/kpm`). **Established.** Address 0x1003a910;
  size 596 bytes. It copies the requested number of bits between packed byte
  vectors. Misaligned offsets use a per-bit loop (`andi` tests at 0x1003a944
  and 0x1003a954), masking and merging one destination bit at a time
  (`and`/`or` at 0x1003a9e0-0x1003aa00). Aligned full bytes use the direct
  `lbu`/`sb` loop at 0x1003aa78-0x1003aa98, and a final partial byte is merged
  at 0x1003aad0-0x1003ab50.

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
  0x100335c0 and 0x100335d4), combines them at shifts 0, 8, 16 and 24, and
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

### IRIX 6.5.30m irsaudit build

The IRIX 6.5.30m irsaudit copy uses the same JTAG library names as KPM, but its routine bodies have different bytes. Each entry records the irsaudit body and identifies the KPM counterpart.

- `jt_new_data_vector` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10164db0; occupies 68 bytes.
  **Established.** Allocates a data vector from the descriptor's word at +0x18
  (`lw` at 0x10164dd0). The `malloc` call receives that word as its
  first argument (`jalr` at 0x10164dd8), and its result becomes the
  wrapper's result (`jr` at 0x10164dec). Its memory accesses are confined
  to the descriptor, linkage data and stack.
  `usr/gfx/KONA/bin/kpm` at 0x10033410,
  68 bytes. Comparison: 5 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_new_data_bvector` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10164e00; occupies 76 bytes.
  **Established.** Builds the allocation request for a packed data vector, starting
  with the word at caller descriptor +0x18 (`lw` at 0x10164e20).
  It calls `malloc` (`jalr` at 0x10164e30) and preserves the returned
  handle (`jr` at 0x10164e44). Hostfacts leaves the allocator's first
  argument unknown after the intervening arithmetic, so this entry does
  not assign an allocation size. The wrapper contains no direct hardware
  access.
  `usr/gfx/KONA/bin/kpm` at 0x10033460,
  76 bytes. Comparison: 5 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_new_inst_vector` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10164e50; occupies 68 bytes.
  **Established.** Uses the instruction-vector length word at descriptor +0x14
  as the allocation size (`lw` at 0x10164e70, `jalr` to `malloc` at
  0x10164e78). The returned pointer passes back through `jr` at
  0x10164e8c. This is host-memory allocation rather than a scan request.
  `usr/gfx/KONA/bin/kpm` at 0x100334b0,
  68 bytes. Comparison: 5 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_new_inst_bvector` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10164ea0; occupies 76 bytes.
  **Established.** Obtains the instruction-vector word from descriptor +0x14
  (`lw` at 0x10164ec0) before requesting memory from `malloc` (`jalr`
  at 0x10164ed0). The packed-vector allocation size is unknown in
  hostfacts, while the returned value is the allocator's result (`jr`
  at 0x10164ee4). Only host-memory and linkage accesses appear here.
  `usr/gfx/KONA/bin/kpm` at 0x10033500,
  76 bytes. Comparison: 5 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_dispose_vector` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10164ef0; occupies 64 bytes.
  **Established.** Releases the caller's vector through `free`, passing entry
  argument 0 unchanged (`jalr` at 0x10164f14). The call is resolved
  through this build's GOT, rather than through the scan-procedure
  table. The routine has no vector-content store or hardware access.
  `usr/gfx/KONA/bin/kpm` at 0x10033550,
  64 bytes. Comparison: 5 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_find_chip` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10165020; occupies 252 bytes.
  **Established.** Searches the chain records for a matching selector. It reads
  the record count from argument 0 +0x8 and the record-array pointer
  from argument 0 +0xc (`lw` at 0x10165048, 0x10165060). A record value
  unequal to one takes the next-record path (`bne` at 0x10165080).
  The name comparison calls `strcmp` with entry argument 1 as its second
  argument and an unknown first argument (`jalr` at 0x101650b4).
  A nonzero comparison advances the search (`bnez` at 0x101650bc).
  Exhaustion reaches the -1 result recorded by `sd` at 0x101650fc.
  Hostfacts leaves the matching result and the effective addresses
  of the per-record loads unknown. No scan procedure is called.
  `usr/gfx/KONA/bin/kpm` at 0x10033680,
  252 bytes. Comparison: 5 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_extract_chip_register` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10165130; occupies 348 bytes.
  **Established.** Prepares a register-image copy after calling `jt_find_chip`
  with the caller's first two arguments (`jal` at 0x10165164).
  A result other than -1 enters the copy path (`bne` at 0x10165178),
  while -1 falls through to a zero result. The continuing path calls
  `calloc` with an unknown first argument and second argument one
  (`jalr` at 0x1016522c), then calls `jt_copy_bits` with entry argument 2
  as its first argument, the allocated buffer as its third argument,
  and zero as its fourth (`jal` at 0x10165254). It writes a word through
  entry argument 3 at +0 (`sw` at 0x10165264). The value of that word
  and the intermediate descriptor bases remain unknown in hostfacts.
  The allocation and copy calls establish buffer preparation, while
  unresolved effective addresses leave the other accesses unclassified.
  `usr/gfx/KONA/bin/kpm` at 0x100396d0,
  348 bytes. Comparison: 15 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_insert_chip_register` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10165290; occupies 292 bytes.
  **Established.** Copies caller-supplied bits into a register image after a
  `jt_find_chip` lookup (`jal` at 0x101652c4). The lookup result unequal
  to -1 takes the copy path (`bne` at 0x101652d4), and the -1 path
  returns failure. Its `jt_copy_bits` call passes entry argument 3,
  zero, and entry argument 2 as its first three arguments, while the
  fourth argument is unknown (`jal` at 0x1016538c). The copy path
  records zero as the result (`sd` at 0x10165394). Descriptor-derived
  copy positions and effective addresses remain unknown in hostfacts.
  `usr/gfx/KONA/bin/kpm` at 0x10039830,
  292 bytes. Comparison: 13 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_extract_bits` in `usr/diags/IR/bin/irsaudit`:
  Address 0x101653c0; occupies 796 bytes.
  **Established.** Extracts selected bits through chip and port lookups, using
  `jt_find_chip` (`jal` at 0x101653f8), the unnamed helper at 0x10165a40
  (`jal` at 0x10165434), and `jt_lookup_port` (`jal` at 0x101654e8).
  A chip result of -1 falls through the failure arm (`bne` at
  0x10165410), and a zero helper result falls through another failure
  arm (`bnez` at 0x1016544c). A port result of -1 falls through to
  `jt_error` (`bne` at 0x10165504, `jal` at 0x10165538).
  The data path includes byte loads and a byte store whose effective
  bases are unknown (`lbu` at 0x10165598, 0x101655cc, `sb` at
  0x10165618). Cleanup uses `free` at two call sites (`jalr` at
  0x1016567c, 0x101656b4). Hostfacts records -1 on the failure arms
  and zero after normal cleanup. The unresolved byte-access bases
  do not establish the destination's address space.
  `usr/gfx/KONA/bin/kpm` at 0x10039960,
  796 bytes. Comparison: 34 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_insert_bits` in `usr/diags/IR/bin/irsaudit`:
  Address 0x101656e0; occupies 860 bytes.
  **Established.** Updates a selected bit image using `jt_find_chip`, the
  unnamed helper at 0x10165a40, and `jt_lookup_port` (`jal` at
  0x10165718, 0x10165774, 0x10165848). The chip result equal to -1
  falls through to an error call (`bne` at 0x10165730, `jal` at
  0x10165750). A zero helper result falls through to its own error
  call (`bnez` at 0x1016578c, `jal` at 0x101657ac). Port lookup
  failure likewise falls through when the result is -1 (`bne` at
  0x10165864, `jal` to `jt_error` at 0x10165898). Its buffer work
  includes byte reads and a byte write at unknown effective bases
  (`lbu` at 0x101658cc, 0x1016592c, `sb` at 0x10165978).
  `free` handles cleanup (`jalr` at 0x101659dc, 0x10165a14).
  The return paths distinguish -1 failure from zero after cleanup.
  Hostfacts does not resolve the byte accesses to an address space.
  `usr/gfx/KONA/bin/kpm` at 0x10039c80,
  860 bytes. Comparison: 56 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_expand_portlist` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10166080; occupies 68 bytes.
  **Established.** Acts as a forwarding wrapper for the unnamed routine at
  0x10165a40, retaining entry argument 0 (`jal` at 0x101660a8).
  Its return is that helper's result (`jr` at 0x101660bc).
  The wrapper itself only saves arguments and accesses linkage data.
- `jt_nullify` in `usr/diags/IR/bin/irsaudit`:
  Address 0x101660d0; occupies 672 bytes.
  **Established.** Initializes the caller's output with `memset`, passing entry
  argument 1, byte value 0x30, and the word at entry argument 0 +0x18
  (`jalr` at 0x10166104). The record loop reads the count at argument
  0 +0x8 (`lw` at 0x10166114), and skips a record when the tested value
  differs from one (`bne` at 0x10166170). Two `strcmp` calls compare
  against addresses 0x102be7a0 and 0x102be7a8 (`jalr` at 0x101661d8,
  0x10166228). Either zero comparison enters the update path (`beqz`
  at 0x101661e4, 0x10166230). The updates include byte stores at
  unknown effective bases (`sb` at 0x101662c0, 0x101662fc).
  No scan procedure is called here. Hostfacts leaves the byte-store
  destinations unresolved.
  `usr/gfx/KONA/bin/kpm` at 0x1003a670,
  672 bytes. Comparison: 13 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_conditional_reset` in `usr/diags/IR/bin/irsaudit`:
  Address 0x101671d0; occupies 1816 bytes.
  **Established.** Constructs and emits an instruction image. It duplicates the
  string at 0x102be7c0, canonicalizes the resulting buffer, and allocates
  an instruction vector (`strdup` through `jalr` at 0x10167208, `jal` to
  `jt_canonize` at 0x10167270, `jal` to `jt_new_inst_vector` at
  0x10167280). The initial reverse-loop index is the word at entry
  argument 0 +0x8 minus one, and a negative index skips the loop
  (`bltz` at 0x101672ac). Its selection logic tests caller arguments
  and values at unresolved descriptor bases. For example, a nonzero
  entry argument 1 takes the selection arm (`bnez` at 0x10167360),
  and a nonzero entry argument 2 takes the same arm (`bnez` at
  0x10167398). The other masks remain unknown in hostfacts.
  Vector construction calls `jt_unpack_vector` with its second
  argument at entry stack pointer -0x6c (`jal` at 0x10167758).
  The final word store targets entry argument 0 +0x18 (`sw` at
  0x10167874). It packs the vector (`jal` to `jt_pack_vector` at
  0x1016788c), then calls `jt_send_instruction` with the word at
  entry argument 0 +0x14 as argument 0 and zero as argument 2
  (`jal` at 0x101678a8). `free` and `jt_dispose_vector` release
  temporary storage (`jalr` at 0x101678b8, `jal` at 0x101678c8).
  The scan effect is delegated to `jt_send_instruction`.
  `usr/gfx/KONA/bin/kpm` at 0x100341e0,
  1816 bytes. Comparison: 43 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_isolate_chip` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10167c80; occupies 960 bytes.
  **Established.** Builds an instruction scan image around the requested chip
  and instruction. It duplicates entry argument 2 and canonicalizes
  that copy (`strdup` through `jalr` at 0x10167cac, `jal` to `jt_canonize`
  at 0x10167cc4), then allocates an instruction vector from entry
  argument 0 (`jal` to `jt_new_inst_vector` at 0x10167cd4).
  A negative initial index, the word at argument 0 +0x8 minus one,
  skips the reverse walk (`bltz` at 0x10167d00). A nonzero chip-name
  comparison takes the alternate-instruction path through `strcmp` (`jalr` at
  0x10167d88, `bnez` at 0x10167d94). In the selected-chip path,
  zero from the instruction-name comparison reaches vector building
  through `strcmp` (`jalr` at 0x10167e00, `beqz` at 0x10167e0c).
  The construction calls `jt_unpack_vector` with its second argument
  at entry stack pointer -0x50 (`jal` at 0x10167ea8).
  The routine stores a word at entry argument 0 +0x18 (`sw` at
  0x10167fc4), packs the vector (`jal` at 0x10167fdc), and calls
  `jt_send_instruction` with the word at argument 0 +0x14 as its
  first argument and zero as its third (`jal` at 0x10167ff8).
  Both cleanup exits use `free` and `jt_dispose_vector` (`jalr` at
  0x10167e44, 0x10168008, `jal` at 0x10167e54, 0x10168018).
  Hostfacts records -1 on the unsuccessful lookup exit and zero
  after the send call. The hardware effect of `jt_send_instruction`
  is outside this routine's body.
  `usr/gfx/KONA/bin/kpm` at 0x10034c90,
  960 bytes. Comparison: 48 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_powerup_chain` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10168040; occupies 548 bytes.
  **Established.** Recomputes chain state in a reverse record walk. The initial
  index comes from entry argument 0 +0x8 minus one, and a negative
  value skips the loop (`bltz` at 0x10168078). A tested record value
  other than one takes the alternate path (`bne` at 0x101680a4).
  In the active-record path, a clear low bit of the tested value
  bypasses the name search (`beqz` at 0x101680dc). Otherwise
  `strcmp` compares an unresolved first argument against address
  0x102be7c8 (`jalr` at 0x10168128), and zero ends that search
  (`beqz` at 0x10168134). Record updates include word stores at
  unknown effective bases (`sw` at 0x101681a8, 0x101681cc,
  0x1016821c). The final word goes to entry argument 0 +0x18
  (`sw` at 0x1016824c). This body updates the software chain
  description without calling a scan procedure.
  `usr/gfx/KONA/bin/kpm` at 0x10035050,
  548 bytes. Comparison: 7 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_set_procs` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10168270; occupies 104 bytes.
  **Established.** Installs the caller's seven procedure words. Reads at caller
  offsets 0, 4, 8, 0xc, 0x10, 0x14 and 0x18 feed the corresponding
  seven absolute destinations 0x102bc2f8, 0x102bc2fc, 0x102bc300,
  0x102bc304, 0x102bc308, 0x102bc30c and 0x102bc310 (`lw` at
  0x10168290, 0x10168298, 0x101682a0, 0x101682a8, 0x101682b0,
  0x101682b8, 0x101682c0, `sw` at 0x10168294, 0x1016829c,
  0x101682a4, 0x101682ac, 0x101682b4, 0x101682bc, 0x101682c4).
  It makes no calls and performs no hardware register access.
  `usr/gfx/KONA/bin/kpm` at 0x10033780,
  104 bytes. Comparison: 6 differing byte offsets,
  first at +0x7 (target 0x16, existing 0x12).

- `jt_init` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10168530; occupies 60 bytes.
  **Established.** Dispatches a call through the procedure word at
  absolute address 0x102bc2f8 (`lw` at 0x1016854c, `jalr` at
  0x10168550). The target is unknown in hostfacts, and its returned
  value is retained (`jr` at 0x10168564). The wrapper does not establish
  the callback's hardware effect.
  `usr/gfx/KONA/bin/kpm` at 0x10033a40,
  60 bytes. Comparison: 6 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_select_chain` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10168570; occupies 68 bytes.
  **Established.** Forwards entry argument 0 to the installed chain-selection
  procedure loaded from absolute address 0x102bc2fc (`lw` at
  0x10168594, `jalr` at 0x10168598). The indirect target remains
  unknown, while its result passes back through `jr` at 0x101685ac.
  The wrapper does not directly address the scan controller.
  `usr/gfx/KONA/bin/kpm` at 0x10033a80,
  68 bytes. Comparison: 6 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_soft_reset` in `usr/diags/IR/bin/irsaudit`:
  Address 0x101685c0; occupies 60 bytes.
  **Established.** Loads the installed soft-reset procedure from absolute
  address 0x102bc300 (`lw` at 0x101685dc) and invokes that unknown
  target (`jalr` at 0x101685e0). It leaves the callee's return value
  intact (`jr` at 0x101685f4). The callback's hardware effect is unknown
  from this wrapper.
  `usr/gfx/KONA/bin/kpm` at 0x10033ad0,
  60 bytes. Comparison: 6 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

- `jt_hard_reset` in `usr/diags/IR/bin/irsaudit`:
  Address 0x10168600; occupies 60 bytes.
  **Established.** Reaches the hard-reset callback through the word at absolute
  address 0x102bc304 (`lw` at 0x1016861c). The register-indirect
  call has an unknown target (`jalr` at 0x10168620), whose result
  remains the wrapper's return (`jr` at 0x10168634). This wrapper
  writes only its saved linkage on the stack (`sd` at 0x10168604,
  0x10168608). The callback's hardware effect is unknown.
  `usr/gfx/KONA/bin/kpm` at 0x10033b10,
  60 bytes. Comparison: 6 differing byte offsets,
  first at +0xf (target 0x16, existing 0x12).

| Routine | irsaudit address / size | irsaudit SHA-256 | Existing build path / address / size | Existing SHA-256 | Different bytes |
|---|---|---|---|---|---|
| jt_new_data_vector | 0x10164db0 / 68 | b2c888d92bf1b232ee278cbe2f2340282610af05e31da72294ffd6ceb26d183f | 0x10033410 68 / usr/gfx/KONA/bin/kpm | 68f210df1a1e52c0ab37eaa6b8acc67c26cf64e5f84b02ccb7c708d9894b189e | 5 offsets: 0xf 16/12, 0x12 f5/08, 0x13 90/b0, 0x26 91/84, 0x27 4c/0c |
| jt_new_data_bvector | 0x10164e00 / 76 | a26de0bbdf25a5d04522878db1f8dcbbfa13ebf1b85b20ec6d091f0c827e8df1 | 0x10033460 76 / usr/gfx/KONA/bin/kpm | b6b27b6688669f42bd932afe43cbd600cd7167729f09c207b18dab5d6e7e53f5 | 5 offsets: 0xf 16/12, 0x12 f5/08, 0x13 40/60, 0x2e 91/84, 0x2f 4c/0c |
| jt_new_inst_vector | 0x10164e50 / 68 | 6b8d07b66b4db937afd32ef1fee4b0bae2b952d216648dbdef46d23acfb6fedb | 0x100334b0 68 / usr/gfx/KONA/bin/kpm | b9aba9592a9225a18ebb192dcc9bb7ec53b953a2f69bedd13a5139eb0e175141 | 5 offsets: 0xf 16/12, 0x12 f4/08, 0x13 f0/10, 0x26 91/84, 0x27 4c/0c |
| jt_new_inst_bvector | 0x10164ea0 / 76 | 4fcde72cf4828bff547f91e126d1fc86417d94666a8fb78bb34aeaae948ebf03 | 0x10033500 76 / usr/gfx/KONA/bin/kpm | 20fb625fe64ce92bd22e49d9632f44067f6c85d33f959ce25b38bf401a8289c7 | 5 offsets: 0xf 16/12, 0x12 f4/07, 0x13 a0/c0, 0x2e 91/84, 0x2f 4c/0c |
| jt_dispose_vector | 0x10164ef0 / 64 | c12380a0af9271c2c72dd26e2ec1c673b39224d949027767baee3bfa8c7bab71 | 0x10033550 64 / usr/gfx/KONA/bin/kpm | ab1371c5f09bf314bcb4833011fec7a92e14751f61ac420d89c32a2439b3924d | 5 offsets: 0xf 16/12, 0x12 f4/07, 0x13 50/70, 0x22 90/84, 0x23 e0/54 |
| jt_find_chip | 0x10165020 / 252 | 27fab07a438cbe8995373cf9c635cd67fc580e59ebe3e62249dcaf29ca2763db | 0x10033680 252 / usr/gfx/KONA/bin/kpm | 273d6789416cb2792fbb4ae219046500ef4882d47cfa0bf93e083b2ce3f5e08b | 5 offsets: 0xf 16/12, 0x12 f3/06, 0x13 20/40, 0x92 91/84, 0x93 20/90 |
| jt_extract_chip_register | 0x10165130 / 348 | 9ffa162c1f11440b5e330f7b1983facf0dc1f2c4ba88c35f5ad1be276f5495c7 | 0x100396d0 348 / usr/gfx/KONA/bin/kpm | 480e4ac1f56b123d278e0cd30b557287696b9ab5307011eb157dc9bedade5c18 | 15 offsets: 0xf 16/12, 0x12 f2/a5, 0x13 10/f0, 0x32 9c/87, 0x33 e4/48, 0x35 05/00, 0x36 94/cd, 0x37 08/a0, 0xfa 91/85, 0xfb 54/3c, 0x122 9c/87, 0x123 f8/a4, 0x125 05/00, 0x126 98/ea, 0x127 dc/44 |
| jt_insert_chip_register | 0x10165290 / 292 | b29aec83ccda9750833afa950e23e08862147629e33e884c92a4217a29f22427 | 0x10039830 292 / usr/gfx/KONA/bin/kpm | 0667d0af0b2c03b35fb398d8144e2dd258c7a618f4b856cc55d32f6be1df99b2 | 13 offsets: 0xf 16/12, 0x12 f0/a4, 0x13 b0/90, 0x32 9c/87, 0x33 e4/48, 0x35 05/00, 0x36 94/cd, 0x37 08/a0, 0xfa 9c/87, 0xfb f8/a4, 0xfd 05/00, 0xfe 98/ea, 0xff dc/44 |
| jt_extract_bits | 0x101653c0 / 796 | 9c494d17a39986952ae7dd2df5aca10eef138734def8539e7638dcd915124bd0 | 0x10039960 796 / usr/gfx/KONA/bin/kpm | 8081a8e1e1c6cc49305d1249bc463477be4f7b0c672ae675ee729834fe90a5c7 | 34 offsets: 0xf 16/12, 0x12 ef/a3, 0x13 80/60, 0x36 9c/87, 0x37 e4/48, 0x39 05/00, 0x3a 94/cd, 0x3b 08/a0, 0x6f 68/24, 0x72 5a/9f, 0x73 40/e0, 0x75 05/00, 0x76 96/e7, 0x77 90/f8, 0x126 9d/87, 0x127 60/8c, 0x129 05/00, 0x12a ae/e1, 0x12b b8/04, 0x14f b8/68, 0x152 cc/28, 0x153 d0/78, 0x157 b8/68, 0x15a cc/28, 0x15b e0/88, 0x176 9d/87, 0x177 40/64, 0x179 05/00, 0x17a a1/cf, 0x17b e8/2c, 0x2ba 90/84, 0x2bb e0/54 |
| jt_insert_bits | 0x101656e0 / 860 | 994bd8974a3334c384627fa2c1988121849a12d24da5852ce70b922c75416573 | 0x10039c80 860 / usr/gfx/KONA/bin/kpm | cf0723b3c172262f2fd25658ca5946d37f99ba7a151ea599aa925e0e0ba8af5a | 56 offsets: 0xf 16/12, 0x12 ec/a0, 0x13 60/40, 0x36 9c/87, 0x37 e4/48, 0x39 05/00, 0x3a 94/cd, 0x3b 08/a0, 0x5b b8/68, 0x5e cd/28, 0x5f 00/a8, 0x63 b8/68, 0x66 cd/28, 0x67 10/b8, 0x6e 9d/87, 0x6f 40/64, 0x71 05/00, 0x72 a1/cf, 0x73 e8/2c, 0x8f 68/24, 0x92 5a/9f, 0x93 40/e0, 0x95 05/00, 0x96 96/e7, 0x97 90/f8, 0xb7 b8/68, 0xba cd/28, 0xbb 00/a8, 0xbf b8/68, 0xc2 cd/28, 0xc3 28/d0, 0xca 9d/87 |
| jt_expand_portlist | 0x10166080 / 68 | 9709103908c318b0cccba2dec0856f8be617b795e54a65328cfe612ba45ef98e | 0x1003a620 68 / usr/gfx/KONA/bin/kpm | fd63861d039427b5e0a33f0f1f95a1ae8b239d368783e8987cd429edd4f99fd6 | 9 offsets: 0xf 16/12, 0x12 e2/96, 0x13 c0/a0, 0x23 68/24, 0x26 5a/9f, 0x27 40/e0, 0x29 05/00, 0x2a 96/e7, 0x2b 90/f8 |
| jt_nullify | 0x101660d0 / 672 | f69f1e751a4e16245d0a6accdc9e8039ce257b71c05ae0aa0c9ac2405260b92a | 0x1003a670 672 / usr/gfx/KONA/bin/kpm | 3788d16e92f2671637d17d7f431c1d5b62ad4fc89d975e2c085112821348dc88 | 13 offsets: 0xf 16/12, 0x12 e2/96, 0x13 70/50, 0x32 91/84, 0x33 88/e4, 0x102 a4/8e, 0x103 60/10, 0x106 91/84, 0x107 20/90, 0x152 a4/8e, 0x153 68/18, 0x156 91/84, 0x157 20/90 |
| jt_conditional_reset | 0x101671d0 / 1816 | 6d77e8b82065fe5451ee1c692bf5bf16b08231d854d3685a40ae395c15230358 | 0x100341e0 1816 / usr/gfx/KONA/bin/kpm | 0cbe99ef8391fceb62d1324ebe2a20638d1e7128c7786d8a8849b60745a1575b | 43 offsets: 0xf 16/12, 0x12 d1/fa, 0x13 70/e0, 0x32 a4/8d, 0x33 80/18, 0x36 91/84, 0x37 58/6c, 0x9e 9d/87, 0x9f 64/90, 0xa1 05/00, 0xa2 af/e1, 0xa3 7c/c8, 0xae 9c/87, 0xaf d4/38, 0xb1 05/00, 0xb2 93/cd, 0xb3 94/2c, 0x472 91/84, 0x473 34/98, 0x516 91/84, 0x517 20/90, 0x586 9c/87, 0x587 c8/30, 0x589 05/00, 0x58a 93/cc, 0x58b 0c/a4, 0x6ba 9c/87, 0x6bb c4/2c, 0x6bd 05/00, 0x6be 92/cc, 0x6bf a8/40, 0x6d6 9d/87 |
| jt_isolate_chip | 0x10167c80 / 960 | 5d70a8cdea57b2c54240a94d0872420be44c535df724657524a6f20e4b3cf63b | 0x10034c90 960 / usr/gfx/KONA/bin/kpm | 08b8fdf5cf06728f21f06ea9412d4792169aaab0b373d672349b96ec2a421020 | 48 offsets: 0xf 16/12, 0x12 c6/f0, 0x13 c0/30, 0x2a 91/84, 0x2b 58/6c, 0x42 9d/87, 0x43 64/90, 0x45 05/00, 0x46 af/e1, 0x47 7c/c8, 0x52 9c/87, 0x53 d4/38, 0x55 05/00, 0x56 93/cd, 0x57 94/2c, 0x106 91/84, 0x107 20/90, 0x17e 91/84, 0x17f 20/90, 0x1c2 90/84, 0x1c3 e0/54, 0x1d2 9c/87, 0x1d3 d8/3c, 0x1d5 05/00, 0x1d6 93/cd, 0x1d7 bc/54, 0x226 9c/87, 0x227 c8/30, 0x229 05/00, 0x22a 93/cc, 0x22b 0c/a4, 0x35a 9c/87 |
| jt_powerup_chain | 0x10168040 / 548 | 543b5d8236f352599d489db039aaaf064eb0bb70087453e2fe8d8a7aa9e6f6ac | 0x10035050 548 / usr/gfx/KONA/bin/kpm | 0f034013562dbd5c91c53eb0f003e29934b963357275ea2a105eed9558661a3c | 7 offsets: 0xf 16/12, 0x12 c3/ec, 0x13 00/70, 0xe2 a4/8d, 0xe3 88/20, 0xe6 91/84, 0xe7 20/90 |
| jt_set_procs | 0x10168270 / 104 | 437b07e1d4ad5533d00e7c859b642000abdf64a55bdf0c1c763657965cd8faec | 0x10033780 104 / usr/gfx/KONA/bin/kpm | 8d5e421b8b1ab168b4a438cb1f8d05925b59e49bb1b5e577b62c08c5ae99a364 | 6 offsets: 0x7 16/12, 0xa c0/05, 0xb d0/40, 0x1b c8/7c, 0x1e c2/8e, 0x1f f8/f0 |
| jt_init | 0x10168530 / 60 | 0b6102fcb0c93908c567022f6513af3925100df0d0a71a3ed7b3d2548c3fb921 | 0x10033a40 60 / usr/gfx/KONA/bin/kpm | 0563b0c5899f8a0900bd0288fed2ee6b2cdf3695506ffe03d6a906fb1f89643d | 6 offsets: 0xf 16/12, 0x12 be/02, 0x13 10/80, 0x1b c8/7c, 0x1e c2/8e, 0x1f f8/f0 |
| jt_select_chain | 0x10168570 / 68 | 011ee45f927557d1c9e245bc88d98af8dba177958292fbb1bbd0b0de4c832208 | 0x10033a80 68 / usr/gfx/KONA/bin/kpm | cc3857e54058bf825383095b01756eb66309a13ab03a390304956818bf9b7971 | 6 offsets: 0xf 16/12, 0x12 bd/02, 0x13 d0/40, 0x23 c8/7c, 0x26 c2/8e, 0x27 fc/f4 |
| jt_soft_reset | 0x101685c0 / 60 | 9fb250ccd7f0d120ef6f4098ea1204a24946946d31969e9f1a506425ad664b44 | 0x10033ad0 60 / usr/gfx/KONA/bin/kpm | d410a29d542d5ffb6f359080c1b0f85c6f3474a583d98e008f257fad630e4276 | 6 offsets: 0xf 16/12, 0x12 bd/01, 0x13 80/f0, 0x1b c8/7c, 0x1e c3/8e, 0x1f 00/f8 |
| jt_hard_reset | 0x10168600 / 60 | b3cb51b2edcc8c4a6e9dda932cbe9f94ad96d0b940de83a51f5028d76182b4ea | 0x10033b10 60 / usr/gfx/KONA/bin/kpm | 9aa939db17a19f9c462fcad29e6575d579ed2ccc5df42bccfb9e11415d30f224 | 6 offsets: 0xf 16/12, 0x12 bd/01, 0x13 40/b0, 0x1b c8/7c, 0x1e c3/8e, 0x1f 04/fc |

## GNU readline and history (compiled in)

**Established** (names and strings: "rl_", "history_", "tilde_expand" and the library's own key-binding and completion tables). `kpm`'s viewer links the GNU readline line-editing library and its history module; none of it touches the hardware.

- Line editing, key bindings, the keyboard macro and undo machinery: `_rl_bind_if_unbound`, `_rl_dispatch`, `_rl_erase_at_end_of_line`, `_rl_free_history_entry`, `_rl_kill_kbd_macro`, `_rl_move_cursor_relative`, `_rl_move_vert`, `_rl_output_character_function`, `_rl_output_some_chars`, `_rl_set_screen_size`, `_rl_update_final`, `_rl_vi_done_inserting`, `_rl_vi_reset_last`, `_rl_vi_set_last`, `rl_abort`, `rl_add_defun`, `rl_add_funmap_entry`, `rl_add_undo`, `rl_arrow_keys`, `rl_back_to_indent`, `rl_backward`, `rl_backward_kill_line`, `rl_backward_kill_word`, `rl_backward_word`, `rl_beg_of_line`, `rl_begin_undo_group`, `rl_beginning_of_history`, `rl_bind_key`, `rl_bind_key_in_map`, `rl_call_last_kbd_macro`, `rl_capitalize_word`, `rl_character_len`, `rl_clean_up_for_exit`, `rl_clear_message`, `rl_clear_screen`, `rl_clear_signals`, `rl_complete`, `rl_complete_internal`, `rl_copy_keymap`, `rl_copy_text`, `rl_delete`, `rl_delete_horizontal_space`, `rl_delete_text`, `rl_deprep_terminal`, `rl_digit_argument`, `rl_discard_argument`, `rl_discard_keymap`, `rl_do_lowercase_version`, `rl_do_undo`, `rl_downcase_word`, `rl_dump_functions`, `rl_emacs_editing_mode`, `rl_end_kbd_macro`, `rl_end_of_history`, `rl_end_of_line`, `rl_end_undo_group`, `rl_exchange_mark_and_point`, `rl_execute_next`, `rl_expand_prompt`, `rl_extend_line_buffer`, `rl_forced_update_display`, `rl_forward`, `rl_forward_search_history`, `rl_forward_word`, `rl_function_dumper`, `rl_function_of_keyseq`, `rl_funmap_names`, `rl_gather_tyi`, `rl_generic_bind`, `rl_get_char`, `rl_get_keymap`, `rl_get_keymap_by_name`, `rl_get_next_history`, `rl_get_previous_history`, `rl_get_termcap`, `rl_getc`, `rl_history_search_backward`, `rl_history_search_forward`, `rl_init_argument`, `rl_initialize`, `rl_initialize_funmap`, `rl_insert`, `rl_insert_completions`, `rl_insert_text`, `rl_invoking_keyseqs`, `rl_invoking_keyseqs_in_map`, `rl_kill_full_line`, `rl_kill_line`, `rl_kill_text`, `rl_kill_word`, `rl_list_funmap_names`, `rl_macro_bind`, `rl_make_bare_keymap`, `rl_make_keymap`, `rl_message`, `rl_modifying`, `rl_named_function`, `rl_newline`, `rl_noninc_forward_search`, `rl_noninc_forward_search_again`, `rl_noninc_reverse_search`, `rl_noninc_reverse_search_again`, `rl_on_new_line`, `rl_parse_and_bind`, `rl_possible_completions`, `rl_prep_terminal`, `rl_quoted_insert`, `rl_re_read_init_file`, `rl_read_init_file`, `rl_read_key`, `rl_redisplay`, `rl_refresh_line`, `rl_reset_line_state`, `rl_reset_terminal`, `rl_restart_output`, `rl_reverse_search_history`, `rl_revert_line`, `rl_rubout`, `rl_set_key`, `rl_set_keymap`, `rl_set_keymap_from_edit_mode`, `rl_set_mark`, `rl_set_retained_kills`, `rl_set_signals`, `rl_show_char`, `rl_start_kbd_macro`, `rl_stop_output`, `rl_stuff_char`, `rl_tab_insert`, `rl_tilde_expand`, `rl_translate_keyseq`, `rl_transpose_chars`, `rl_transpose_words`, `rl_tty_status`, `rl_unbind_key`, `rl_unbind_key_in_map`, `rl_undo_command`, `rl_unget_char`, `rl_universal_argument`, `rl_unix_line_discard`, `rl_unix_word_rubout`, `rl_upcase_word`, `rl_variable_bind`, `rl_vi_append_eol`, `rl_vi_append_mode`, `rl_vi_arg_digit`, `rl_vi_bWord`, `rl_vi_bracktype`, `rl_vi_bword`, `rl_vi_change_case`, `rl_vi_change_char`, `rl_vi_change_to`, `rl_vi_char_search`, `rl_vi_check`, `rl_vi_column`, `rl_vi_comment`, `rl_vi_complete`, `rl_vi_delete`, `rl_vi_delete_to`, `rl_vi_domove`, `rl_vi_eWord`, `rl_vi_editing_mode`, `rl_vi_end_word`, `rl_vi_eof_maybe`, `rl_vi_eword`, `rl_vi_fWord`, `rl_vi_fetch_history`, `rl_vi_first_print`, `rl_vi_fword`, `rl_vi_insert_beg`, `rl_vi_insertion_mode`, `rl_vi_match`, `rl_vi_movement_mode`, `rl_vi_next_word`, `rl_vi_overstrike`, `rl_vi_overstrike_delete`, `rl_vi_prev_word`, `rl_vi_put`, `rl_vi_redo`, `rl_vi_replace`, `rl_vi_search`, `rl_vi_search_again`, `rl_vi_subst`, `rl_vi_textmod_command`, `rl_vi_tilde_expand`, `rl_vi_yank_arg`, `rl_vi_yank_to`, `rl_yank`, `rl_yank_last_arg`, `rl_yank_nth_arg`, `rl_yank_pop`.
- History list and search: `add_history`, `append_history`, `current_history`, `get_history_event`, `history_arg_extract`, `history_expand`, `history_get`, `history_get_history_state`, `history_is_stifled`, `history_list`, `history_search`, `history_search_pos`, `history_search_prefix`, `history_set_history_state`, `history_set_pos`, `history_tokenize`, `history_total_bytes`, `history_truncate_file`, `next_history`, `previous_history`, `read_history`, `read_history_range`, `remove_history`, `replace_history_entry`, `stifle_history`, `unstifle_history`, `using_history`, `where_history`, `write_history`.
- Completion, prompting and small helpers: `completion_matches`, `filename_completion_function`, `get_y_or_n`, `readline`, `username_completion_function`, `tilde_expand`, `tilde_expand_word`, `xmalloc`, `xrealloc`.
- Character-class and string helpers: `alphabetic`, `backspace`, `crlf`, `digit_p`, `digit_value`, `ding`, `free_undo_list`, `ibuffer_space`, `lowercase_p`, `maybe_replace_line`, `maybe_save_line`, `maybe_unsave_line`, `pure_alphabetic`, `rltty_set_default_bindings`, `savestring`, `to_lower`, `to_upper`, `uppercase_p`.

**Unknown: no shipped software or published source depends on it:** what "BEF" stands for. Routes tried: the strings and section names of `kpm`, `irsaudit` and `postmortem`.

## Capture routines read in full

- `adapterInspection` (`usr/gfx/KONA/bin/kpm` 0x10012378, 1212 bytes, `hip.c`):
  **Established.** Records the adapter registers for the report. `a0` (`s3`) is the report handle. It calls `klog` (0x1000f794) with level 5 and "Inspecting HIP (before Jtag)\n" (0x100747b0) and `dfNewSection` (0x1000b1a0) with the report and the name "adapter-registers" (0x100747d0). It then loads the word at `kpminfo` + 8 (the global `kpminfo`, whose address is the GOT entry at gp-29880; the load is at 0x100123e8). When that word is zero it skips the reads. Otherwise it makes fourteen calls of `assign_register` (0x100121f4) on the buffer at 0x100b2620 (`s0`, written out as 8700 bytes, which is 145 records of 60 bytes), each with a register key in `a1` and, in `a2`, a word read from the absolute address 0x10000 plus the same key: keys 12, 20, 28, 36, 44, 52, 60, 100, 108, 116, 124, 132, 140 and 148, in that order. The reads are plain 32-bit loads from the offsets 0xc, 0x14, 0x1c, 0x24, 0x2c, 0x34, 0x3c, 0x64, 0x6c, 0x74, 0x7c, 0x84, 0x8c and 0x94 past the base 0x10000, so the words read lie far below the program image, in a window the program does not map itself. `assign_register` finds the record by looking the key up with `locate_register` (0x10012068) in the buffer; a negative result is returned as it is, otherwise it stores `a2` in the word at +52 of the 60-byte record with that index (the instructions at 0x10012230 to 0x1001224c) and returns 0. A negative result from any of the fourteen calls goes to a stub that calls `__assert` (the GOT entry at gp-31656) with "rc >= 0" (0x100747e8), "hip.c" (0x100747f0) and the source line 106, 107, 108, 109, 110, 111, 112, 114, 115, 116, 117, 118, 119 or 120 for the keys in the order above, and then resumes at the next call if `__assert` returns. Both paths finish by calling `dfWriteSection` (0x1000b2c8) with the report, the buffer and 8700 bytes and returning 0.
