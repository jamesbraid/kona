# The IR diagnostic: `irsaudit` function reference

Sources: `usr/diags/IR/bin/irsaudit` (6.5.30m) with its symbols, its option help and its message strings. `irsaudit` is the InfiniteReality diagnostic: it runs one named test or a board's whole set against a pipe, reports PASS or FAIL with the lines "CODE", "INFO", "TRCE", "TIME", "META" and "RSLT", and can write and compare CRC logs. This page groups its functions by role. **Inferred** throughout, from the names, the option help text and the neighbouring documents; a name is listed under the group its prefix and its callers point to, and only the functions the other documents cite ([hip.md](hip.md), [ge.md](ge.md), [rm.md](rm.md), [dg.md](dg.md), [ucode/ge_ops.md](../ucode/ge_ops.md)) were read in detail. Where a test's expected values were read, they are in those documents.

**Established** (option help). The test groups on the command line are `-ge`, `-rm`, `-dg`, `-pab` (second pixel-assembly board), `-gvo` (graphics video option), `-dvp`, `-ddo` and `-ddo2` (digital display options), `-dplex` and `-ddo3` (the multi-pipe display option), `-tvo` (TV output option) and `-conn` (connectivity); `PIPE=n` selects the pipe and `-gemask` the geometry engines. The settings `FORCE_TEX_MEM`, `TEX_MEM_STEP_SIZE`, `DDC_CHANNEL`, `XMAP_CLK`, `XG_REQ`, `SET_HUB_WAR`, `CLRCOLOR`, `DGOFBMODE`, `FORCE_DPLEX` and `OPTVIDEO_MODE` tune individual tests.

## Function readings from the shipped diagnostic

- `probe_rm6_chain` (`usr/diags/IR/bin/irsaudit` 0x1004f078): **Established.**
  The 6076-byte body first checks host access by calling the 32-bit PIO reader
  with offset `0x370` at 0x1004f0b0.  On success it builds the RM6 chain
  description, formats the chain description (call at 0x1004f154), selects the chain (`jt_select_chain`, call at 0x1004f168), soft-resets it (`jt_soft_reset`, call at 0x1004f1d8), measures its length (`jt_find_chain_length`, call at 0x1004f2fc), and records the selected
  chain data in the caller's result object; an access or chain failure reports
  the corresponding diagnostic and returns one.  Successful completion stores
  the discovered chain state through the caller's records at 0x1004f35c,
  0x1004f360, 0x1004f36c, 0x1004f3e0, 0x1004f3ec and
  0x1004f44c (the chain read is the call at 0x1004f448), then returns the probe status.

- `probe_dg4_chain` (`usr/diags/IR/bin/irsaudit` 0x10053ff8): **Established.**
  This 5100-byte probe marks the caller's DG result record active with a word
  store of one at offset `0xdbc` (0x1005402c), verifies host access through
  PIO offset `0x370` (call at 0x10054030), and then selects the DG4 chain (`jt_select_chain`, call at 0x100540cc), soft-resets it (`jt_soft_reset`, call at 0x10054138) and copies a name with `strdup` (call at 0x100542fc).
  It writes the resulting chain and board identifiers into the caller's
  record at offsets `0xdbc`, `0xe30`, `0xe2c`, `0xf80` and `0xf7c` (stores at
  0x1005428c, 0x10054294, 0x1005429c, 0x10054318 and 0x10054320); failures
  clear `0xdbc` and return one, while the completed probe returns its helper
  status.

- `probe_dg5_chain` (`usr/diags/IR/bin/irsaudit` 0x100553e4): **Established.**
  The complete 5040-byte body is the DG5 variant of the chain probe: it marks
  the result record with one at `0xdbc` (store at 0x10055414), checks host PIO
  access at offset `0x370` (call at 0x10055418), selects the chain (`jt_select_chain`, call at
  0x100554b4), soft-resets it (`jt_soft_reset`, call at 0x10055520) and copies a name (`strdup`, call at 0x100556e0).  The successful path
  records the chain result, board data and extracted status at `0xdbc`,
  `0xe30`, `0xe2c`, `0xf80` and `0xf7c` (stores at 0x10055670,
  0x1005567c, 0x10055680, 0x100556fc and 0x10055704); each failure clears
  `0xdbc` and returns one.

- `probe_ge12_chain` (`usr/diags/IR/bin/irsaudit` 0x1004d25c): **Established.**
  Its 3052-byte body rejects unavailable host access after the PIO read of
  offset `0x370` at 0x1004d288, then selects chain code `0x31` through the
  chain setup call at 0x1004d3e8 and passes the GE list to `locate_break` (call at
  0x1004d410) and copies a name with `strdup` (call at 0x1004d4e0).  The resulting chain handle and
  decoded board values are stored in the caller's GE record at offsets
  `0x15c` and `0x158` (stores at 0x1004d4fc and 0x1004d520); setup, read or
  decode failure returns one, and the normal path returns the final probe
  result.

- `run_video1` (`usr/diags/IR/bin/irsaudit` 0x1009eca0): **Established.**
  The 2040-byte routine accepts only video modes one, two or four and returns
  two after reporting another mode.  For an accepted mode it initializes the
  geometry path, waits for the graphics FIFO status at host offset `0x208`
  (reads at 0x1009edf0 and 0x1009ee20), submits ioctl `0x2775` through the
  caller's pipe handle (call at 0x1009ee68), and then invokes the video-format
  and display-generator setup chain at 0x100969b4.  A negative ioctl result
  or failed setup selects the diagnostic error path; the normal completion
  returns the setup result after restoring the saved registers.

- `run_video` (`usr/diags/IR/bin/irsaudit` 0x10096ea4): **Established.**
  This 1944-byte entry has the same mode gate for one, two and four, then
  initializes the selected geometry engines, polls host FIFO status offset
  `0x208` at 0x10096fe8 and 0x10097014, and submits ioctl `0x2775` at
  0x1009705c.  It passes the ioctl result into the display/video setup path
  beginning at 0x100969b4; a negative ioctl or failed setup takes the failure
  reporting branches, while unsupported modes return two before any hardware
  access.

The following entries are **Established** from complete `irsaudit` 6.5.30m fact sheets. Addresses and sizes are the symbol ranges in that binary; register offsets are the arguments passed to the diagnostic's 32-bit PIO helpers.

- `fcGfxWrite64` (`usr/diags/IR/bin/irsaudit`): **Established.**
  At 0x1013e2d0 it occupies 768 bytes. The routine takes one 64-bit graphics word, records it in the adapter's pending-write bookkeeping when tracing is enabled, and sends it through `fcPioWrite64` with FIFO offset 0 at 0x1013e590. The traced path stores the word into the pending record at 0x1013e388; a negative adapter status then sleeps through `sginap` at 0x1013e3a4. If the pending-write record is absent, it instead uses the adapter's configured alternate path and reports the access through the diagnostic callback.
- `vdBaseVocInitWithRegs` (`usr/diags/IR/bin/irsaudit`): **Established.**
  The complete 796-byte body begins at 0x10133bd8. It consumes a variable register list, sends each positive-count item to `vcWrite` with a base of 0x200 at 0x10133c90, and copies each value into the caller's register record at 0x10133cb4. Sentinel `0xdeadbeef` fields select default writes at offsets 0x201, 0x203, 0x206, 0x207, 0x230, 0x243, 0x244, 0x270, 0x281 and 0x28f; those `vcWrite` calls occur at 0x10133e28, 0x10133e44, 0x10133e58, 0x10133e6c, 0x10133e80, 0x10133e94, 0x10133ea8, 0x10133ebc, 0x10133ed0 and 0x10133ee4. It also clears the 0x140 and 0x180 record fields at 0x10133d6c and 0x10133d90, then invokes `vdResetVocFifo`, `vdBeginVCBusPoll` and `vcRead` at 0x10133d8c, 0x10133da0 and 0x10133db4 before returning the final helper result.
- `diagLoadDGOXilinxes` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Its 1080-byte body starts at 0x1011c44c. It builds a local download descriptor, obtains the diagnostic data-file handle at 0x1011c4c4, and passes the loaded image and the instruction value `0x855a` to the option-board programming helper at 0x1011c584. A failed load reports the failure and returns 1 at 0x1011c5b0; the successful path selects VC address `0x8a02` and writes payload bytes through `vcWrite` at 0x1011c718, then writes zero to address `0xc008` at 0x1011c728. The completion path closes the data source and returns the status from the final diagnostic result helper.

- `crc_tex1_load` (0x100de250, 280 bytes): **Established.** Builds a local texture-test record, calls `mytbuInit`, creates a texture, generates a 128x128 pattern and one mipmap, loads and binds it with the test's raster-manager handle, destroys it, then sleeps for 5 ticks. It returns zero after the sleep and performs no direct host-interface access. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `crc_tex1_load`.)
- `tbuTexOnOff` (0x10154b68, 332 bytes): **Established.** Selects the texture-control path from its first argument, writes register 0x1500 with the eight-byte value at the second argument plus 43008, and reports the write result; the alternate path writes 0x3fd3 with the value at that record plus 130712 and reports that result. The two branches test the selected mode and each `tbRegWrite` result. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `tbuTexOnOff`.)
- `setup_dma` (0x10037e48, 396 bytes): **Established.** Obtains the diagnostic DMA mapping with ioctl 0x2774 and argument kind 9, then programs raster-bus registers 0x440, 0x450-0x453 and 0x460-0x463 from the returned address and length words. It returns zero on the normal path and one after the diagnostic error report when the ioctl fails. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `setup_dma`.)
- `setup_dma` calls `ioctl` at 0x10037ea8 and `tbRegWrite` at 0x10037ee0, 0x10037f08 and 0x10037f4c; those call sites establish the mapping and the raster-bus writes above. **Established.**
- `wait_for_dma_completion` (0x10037fd4, 184 bytes): **Established.** Polls the secondary output-DMA total at host offset 0x2b8, with the loop bounded by its caller-supplied condition, then reads host offset 0x278 before returning. The success path returns zero; the completion/failure branch returns one. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `wait_for_dma_completion`.)
- `initialize_icu` (0x100385d4, 444 bytes): **Established.** Enables token-map access by writing 1 to host offset 0x3e8, writes the initial token-map words through 0x3f0 and 0x3f8, writes `0xbabebabe` to the ARM error-PC address 0x20006c, and clears the control word. Its loop distinguishes the two caller-selected map modes and returns the final PIO-write result. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `initialize_icu`.)
- `enable_hip_intr` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x10038790; size 104 bytes. It reads host interrupt-enable offset 0x230, forms `1 <<` the first argument, ORs that bit into the read value, and writes the result back to 0x230. The second PIO helper's result is returned; the calls are at 0x100387bc and 0x100387dc.
- `enable_hip_intr` calls `fcPioRead32` at 0x100387bc and `fcPioWrite32` at 0x100387dc for host offset 0x230. **Established.**
- `init_hip_interrupt_regs` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x100387f8; size 108 bytes. It writes 0 to interrupt-enable offset 0x230, writes `0xfff` to status offset 0x238, then writes 0 to interrupt-information offset 0x220. The final PIO-write result is returned; the calls are at 0x10038828, 0x10038838 and 0x10038848.
- `init_hip_interrupt_regs` calls `fcPioWrite32` at 0x10038828, 0x10038838 and 0x10038848 for offsets 0x230, 0x238 and 0x220. **Established.**
- `set_hip_intr_info` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x10038864; size 124 bytes. It reads offset 0x220, keeps only bit 15, places the low byte of the second argument in bits 0-7 and the low byte of the first argument in bits 8-15, and writes that combined word back to 0x220. The read and write calls occur at 0x10038894 and 0x100388c4.
- `set_hip_intr_info` calls `fcPioRead32` and `fcPioWrite32` for host offset 0x220; the write call returns the routine's result. **Established.**
- `ResetKona` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x100388e0; size 116 bytes. It calls the diagnostic control callback with command 0x6a and zero arguments. When that callback returns nonzero it calls the error-reporting routine at 0x10046fd0 with the callback object's address plus 0x80; otherwise it only restores its saved registers and returns. The callback call is at 0x10038918.
- `HipRevRead` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x10038954; size 52 bytes. It follows the diagnostic's board-pointer chain through the global adapter record, adds host offset 0xc008 to the selected register base, loads the resulting 64-bit revision word and returns it. The final load is at 0x1003897c.
- `f3RevRead` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x10038988; size 52 bytes. It follows the same board-pointer chain, adds host offset 0xc000 to the selected register base, loads the resulting 64-bit revision word and returns it. The final load is at 0x100389b0.
- `destroy_map_diag` (`usr/diags/IR/bin/irsaudit` 0x10037218): **Established.** Size 188
  bytes. It submits ioctl 0x2774 with the caller's address, a byte length of
  four times the third argument, zero flags, and type 6 when the first
  argument is nonzero or type 10 otherwise. A successful ioctl returns zero;
  the error callback is called and the routine returns -1 when it fails.
  (`irsaudit`, 6.5.30m, full routine at 0x10037218.)
- `ged_host_reg_write` (`usr/diags/IR/bin/irsaudit` 0x100372d4): **Established.** Size
  156 bytes. It converts the first argument into the distributor host-address
  field, sets the low control bit and the 0x20 access flag, writes that word
  through the host helper for selection 0x200600, then writes the second
  argument through selection 0x200ac0. (`irsaudit`, 6.5.30m, full routine at
  0x100372d4.)
- `set_ge11_bypass_pointer` (`usr/diags/IR/bin/irsaudit` 0x100377c4): **Established.**
  Size 176 bytes. It writes 0x40038 to distributor register 0x235, selects
  register 0x233 with 0x8e1 when the current engine count is below five and
  0xce1 otherwise, and finally writes the caller's pointer to register 0x235.
  (`irsaudit`, 6.5.30m, full routine at 0x100377c4.)
- `fcAdapPioWrite64` (`usr/diags/IR/bin/irsaudit` 0x1013dcec): **Established.** Size
  52 bytes. It adds the adapter's mapped base at record offset 0x1b38 to
  caller offset plus 0xc000 and stores the 64-bit value there. (`irsaudit`,
  6.5.30m, full routine at 0x1013dcec.)
- `PioReadArm32` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x100384ac; size 84 bytes. It writes its argument to ARM address port 0x3e8, reads the non-incrementing data port 0x3f0, and returns the read word. The two helper calls are at 0x100384d4 and 0x100384e8.
- `PioReadArm32` calls `fcPioWrite32` at 0x100384d4 for address port 0x3e8, then `fcPioRead32` at 0x100384e8 for data port 0x3f0. **Established.**
- `StallArm` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x10038554; size 64 bytes. It writes 1 to host offset 0x320 and returns the PIO-write result from the call at 0x1003857c.
- `StallArm` calls `fcPioWrite32` for host offset 0x320 and returns its result. **Established.**
- `UnStallArm` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x10038594; size 64 bytes. It writes 1 to host offset 0x328 and returns the PIO-write result from the call at 0x100385bc.
- `UnStallArm` calls `fcPioWrite32` for host offset 0x328 and returns its result. **Established.**
- `load_arm_mem` (0x100389c0, 256 bytes): **Established.** Writes its first argument to ARM address port 0x3e8, writes each word of the buffer at its second argument through incrementing data port 0x3f8, using the third argument divided by four as the count, and emits start/end diagnostic messages. A zero count skips the loop. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `load_arm_mem`.)
- `vdEnableDgInterrupts` (0x10130c98, 140 bytes): **Established.** Clears host interrupt-enable offset 0x230, acknowledges all status bits at 0x238 with `0x3ff`, writes `0x8000` to interrupt information 0x220, writes `0x30000` to global interrupt information 0x108, and enables mask `0x208` at 0x230. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `vdEnableDgInterrupts`.)
- `vdDisableDgInterrupts` (0x10130d24, 108 bytes): **Established.** Clears host interrupt-enable offset 0x230, acknowledges all status bits at 0x238 with `0x3ff`, and clears interrupt information at 0x220. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `vdDisableDgInterrupts`.)
- `fcGfxWrite32` (0x1013df2c, 932 bytes): **Established.** Accepts one graphics-FIFO word, applies the diagnostic access-delay and pending-write bookkeeping, writes the word through host FIFO offset 0, and checks the FIFO status at offset 0x208. Error paths report or assert the failing access; the normal path returns the final PIO-write result. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `fcGfxWrite32`.)
- `fcGfxFlush` (0x1013e5d0, 588 bytes): **Established.** Drains pending graphics writes, waits between diagnostic accesses, reads host FIFO status offset 0x208, and asserts the expected status transitions before returning. Its error branches report failed adapter reads or assertions, and its normal path returns after the final FIFO write. (`usr/diags/IR/bin/irsaudit`, 6.5.30m fact sheet for `fcGfxFlush`.)

The following pipe-access routines were also read from their complete symbol
ranges in `usr/diags/IR/bin/irsaudit` (6.5.30m).

- `fcPioWrite32` (`usr/diags/IR/bin/irsaudit`). **Established.** Address
  0x1013dae8; size 244 bytes. It stores a 32-bit value at the adapter word
  selected by the caller's byte address divided by four. When diagnostic
  tracing is enabled it reports the access first, and when the adapter status
  is negative it calls the low-level flush hook after the store. (`irsaudit`,
  store and status branch at 0x1013db78-0x1013dbd8.)

- `fcPioWrite64` (`usr/diags/IR/bin/irsaudit`). **Established.** Address
  0x1013dbdc; size 220 bytes. It rounds the caller's byte address down to an
  eight-byte boundary, stores the supplied 64-bit value at that adapter slot,
  and performs the same optional trace and negative-status flush handling as
  the 32-bit writer. (`irsaudit`, aligned store at 0x1013dc64-0x1013dc9c.)

- `fcPioRead32` (`usr/diags/IR/bin/irsaudit`). **Established.** Address
  0x1013dd88; size 292 bytes. It optionally traces the requested byte address,
  flushes pending graphics writes, reads the adapter word selected by the
  address divided by four, and returns that word. A negative adapter status
  still invokes the diagnostic flush hook before the value is returned.
  (`irsaudit`, read and return path at 0x1013de18-0x1013dea8.)

- `fcGfxWrite` (`usr/diags/IR/bin/irsaudit`). **Established.** Address
  0x1013deac; size 128 bytes. It accepts a word pointer and count, skips the
  loop for a non-positive count, and sends each word to the graphics-register
  writer at 0x1013df2c in pointer order. The pointer advances by four bytes per
  transfer. (`irsaudit`, loop at 0x1013dee8-0x1013df08.)

- `fcTbusWrite` (`usr/diags/IR/bin/irsaudit`). **Established.** Address
  0x1013e81c; size 128 bytes. It emits the raster-bus operation prefix 0xe2,
  emits the caller's second argument shifted left one bit, then emits the two
  words supplied at the caller's first argument. All four words go through the
  graphics-register writer at 0x1013df2c. (`irsaudit`, four writes at
  0x1013e854-0x1013e884.)

- `init_kona_access` (`usr/diags/IR/bin/irsaudit`). **Established.** Address
  0x10164620; size 420 bytes. It determines the host type, records a successful
  result in the global access flag, conditionally logs the existing adapter,
  DMA and interrupt state, and then calls the board-information initializer.
  That initializer's result is returned as zero for success or -1 when it
  reports failure. (`irsaudit`, state setup at 0x1016464c-0x10164778 and final
  result test at 0x10164788-0x101647bc.)

The following geometry and distributor helpers were read from their complete
symbol ranges in the same binary:

- `set_bef_user_reg` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x1001b7b0; size 88 bytes. It saves the variadic words at stack offsets 0 through 0x14, passes field mask 0x3f and that saved block to `modify_bef_user_reg` at call site 0x1001b7f0, and returns its result.
- `set_bef_config_reg` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x1001cc8c; size 100 bytes. It saves the variadic words at stack offsets 0 through 0x1c, passes mask 0x1ff and that block to `modify_bef_config_reg` at call site 0x1001ccd8, and returns its result.
- `init_ge_num` (0x1003808c, 384 bytes): **Established.** Builds a one-bit
  engine mask from its argument, writes it repeatedly to distributor selector
  0x222, calls `PioWriteArm32` with 0x200600 and 0x58400800 and then with
  0x200a80 and 1, then masks the saved engine count and repeats selector 0x222 writes with the resulting mask.
- `arm_ged_write` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x10038288; size 140 bytes. It sends five words through the graphics-register writer at call sites 0x100382c0-0x100382f4: 1, 0xb, the caller's register, 0, and the caller's value. The fifth writer result is left in the return register.
- `diag_arm_reg_write` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x1003820c; size 124 bytes. It sends four words through the graphics-register writer at 0x10038244-0x1003826c: 1, 0x16, the caller's register, and the caller's value. The fourth writer result is returned.
- `PioWriteArm32` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x10038444; size 104 bytes. It writes the caller's address to host offset 0x3e8 and its value to the non-incrementing ARM data port 0x3f0. It returns the second PIO-write result; the calls are at 0x1003847c and 0x10038488.
- `PioReadArmIncr32` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Address 0x10038500; size 84 bytes. It writes the caller's address to offset 0x3e8, reads one word from the incrementing data port 0x3f8, and returns that word. The calls are at 0x10038528 and 0x1003853c.
- `arm_init_ge` (0x10038314, 304 bytes): **Established.** Writes the engine
  selector 546 with value 1 five times, advances to the next engine, masks the
  saved engine count into a one-bit-per-engine mask, and writes that mask five
  more times to the same selector. It returns without a status value.
  (`irsaudit`, calls to the distributor writer at 0x1003835c-0x10038424.)
- `switch_ged_ge` (0x10037a68, 104 bytes): **Established.** Selects distributor
  register 0x20600 with value 0x5840800 through the ARM path, then writes 1 to
  register 0x20a80. It returns after the two ARM writes. (`irsaudit`, calls at
  0x10037aa0 and 0x10037ab0.)
- `befSelCurrGE` (0x10037648, 288 bytes): **Established.** If the boundary-scan
  chain is available, selects chain 19, inserts the requested engine value into
  field 1121, and pokes the updated chain before freeing it. Without a chain it
  calls the BEF configuration path with the saved engine count. The sentinel
  engine value -1 becomes zero before either path. (`irsaudit`, calls at
  0x10037698-0x10037758.)
- `ge_bypass_read_nomap` (0x10037ad0, 408 bytes): **Established.** Programs the
  no-map bypass transfer with the caller's address, buffer, and word count,
  polls the transfer count at host offset 0x2b8, reads one distributor value per
  requested word, waits for output DMA mode 2, and restores the distributor
  control values 0x438 and either 0x8e0 or 0xce0. A zero count skips the read
  loop and the routine returns zero. (`irsaudit`, calls at 0x10037b24-0x10037c38.)
- `waitBefDone` (0x1002c060, 368 bytes): **Established.** Writes 0x3ff to
  raster-bus register 0x238, writes 0x5a5a5a5a to register 0x400, then polls
  host offset 0x238 up to 99 times for status bit 0x20. It returns zero when
  the bit appears and -1 after the final diagnostic report. (`irsaudit`, calls
  at 0x1002c0b0, 0x1002c0d8 and 0x1002c12c.)
- `modify_bef_config_reg` (0x1001b808, 2096 bytes): **Established.** Isolates
  the BEF scan chain, creates a data vector from the caller's low nine-bit
  configuration value, and conditionally updates field 1103 when bit 0x100 is
  set. It separately handles the all-ones mask 0x1ff, sends the vector through
  the chain, and returns the scan-library result after restoring the chain.
  (`irsaudit`, scan operations at 0x1001b88c-0x1001b988.)
- `query_bef_config_reg` (0x1001c038, 976 bytes): **Established.** Isolates the
  BEF chain, extracts the configuration register, reads fields 1114 and 1115,
  stores the first field in the caller's result pointer, reports both values,
  and returns the scan-library status. (`irsaudit`, extraction at 0x1001c128
  and field reads at 0x1001c14c and 0x1001c194.)
- `query_bef_user_reg` (0x1001c408, 824 bytes): **Established.** Isolates the
  user-register scan path, extracts its register, reads the paired fields 1307
  and 1308, stores the first value through the caller's pointer, and reports
  both extracted values. Its return value is the final scan status.
  (`irsaudit`, extraction at 0x1001c4fc and field reads at 0x1001c51c and
  0x1001c564.)
- `query_bef_status_reg` (0x1001c740, 1356 bytes): **Established.** Isolates the
  status-register chain, extracts the register, reads status fields 1102 and
  1101, stores the first result through the caller's pointer, and reports the
  two values before returning the final scan status. (`irsaudit`, extraction at
  0x1001c834 and field reads at 0x1001c854 and 0x1001c89c.)

## Tests

| Group | Functions | Role |
|---|---|---|
| Raster board tests | `TEST_aaspoke`, `TEST_bpconn`, `TEST_callig`, `TEST_checktex`, `TEST_clipmap`, `TEST_clrfb`, `TEST_copy_in_pixel`, `TEST_dquad`, `TEST_encfb`, `TEST_encreg`, `TEST_fbfull`, `TEST_fbread`, `TEST_fbread_video`, `TEST_fog`, `TEST_framebuf1`, `TEST_gpi`, `TEST_imp9mem`, `TEST_imp_ie`, `TEST_impvid`, `TEST_perf`, `TEST_pixelcopy`, `TEST_readback_comp`, `TEST_rm_chainlen`, `TEST_rm_chainlen_1bit`, `TEST_rm_chainlen_bdid`, `TEST_rm_chainlen_bistctrl`, `TEST_rm_chainlen_config`, `TEST_rm_chainlen_crcctrl`, `TEST_rm_chainlen_crcdata`, `TEST_rm_chainlen_extest`, `TEST_rm_chainlen_idcode`, `TEST_rm_chainlen_imp8d`, `TEST_rm_chainlen_imp8d_instr`, `TEST_rm_chainlen_intmode`, `TEST_rm_chainlen_no_sysprobe`, `TEST_rm_chainlen_sample`, `TEST_rm_chainlen_status`, `TEST_rm_chainlen_tcbistdata`, `TEST_rm_chains`, `TEST_rm_extbist`, `TEST_rm_intbist`, `TEST_rm_sysloop`, `TEST_rmconn`, `TEST_rmcrcreg`, `TEST_rmcrctex`, `TEST_rmcrctex1`, `TEST_rmcrctex_comp`, `TEST_rmcrctri`, `TEST_rmcrctri1`, `TEST_rmcrctri2`, `TEST_rmcrctri_comp`, `TEST_rmjtaginit`, `TEST_rmvis`, `TEST_swap`, `TEST_test_instr`, `TEST_texfmt`, `TEST_texmem2`, `TEST_texmem3`, `TEST_texobjdetail`, `TEST_texrndm`, `TEST_tris` | raster-board boundary-scan chain-length tests (one per scan register, `rm_chainlen*`), built-in self tests, the system loop, CRC tests of triangles and textures, and drawing tests (frame buffer, texture formats and memory, fog, clip-maps, pixel copy, read-back, swap) used to exercise the raster and texture chips ([rm.md](rm.md)) |
| Host interface and ARM tests | `TEST_arm_sdram`, `TEST_arminit`, `TEST_armsanity`, `TEST_armucode`, `TEST_befconfig`, `TEST_befintram`, `TEST_befsdram`, `TEST_befshadow`, `TEST_eeprom`, `TEST_hh_reg`, `TEST_icu_mem`, `TEST_idma`, `TEST_miniodma`, `TEST_miniread`, `TEST_nicprobe`, `TEST_sdrampio`, `TEST_srampio`, `TEST_xgcred`, `TEST_xgerr`, `TEST_xgid`, `TEST_xgram`, `TEST_xgregs` | host-interface register, input-DMA, token-map memory and output-DMA tests ([hip.md](hip.md)), ARM start-up, sanity, microcode and SDRAM tests, the BEF block tests, the SRAM and SDRAM programmed-I/O tests, the ARM EEPROM test, the board serial-number probe, and the XG widget tests (`xgcred`, `xgerr`, `xgid`, `xgram`, `xgregs`; [xg.md](xg.md)) |
| Geometry engine tests | `TEST_bypass`, `TEST_geNext`, `TEST_ge_cram`, `TEST_ge_eram_parallel`, `TEST_ge_ext_stress`, `TEST_ge_extbist`, `TEST_ge_intbist`, `TEST_ge_tbus_walk`, `TEST_ge_wram`, `TEST_geclock`, `TEST_geconn`, `TEST_gedcrc_fe`, `TEST_gedcrc_ptu`, `TEST_gedcrc_reorder`, `TEST_gedcrc_seq`, `TEST_gedcrc_token`, `TEST_gedcrc_vtu`, `TEST_gedreg`, `TEST_geducode`, `TEST_geucode_ram`, `TEST_minigeconn`, `TEST_tbstress`, `TEST_tbusdata`, `TEST_tbusfile`, `TEST_verify_ge11` | register, microcode-load, internal and external built-in self test, memory and connectivity tests of the geometry boards and the distributor, the distributor CRC sequences (`gedcrc`) and the raster-bus walk; the per-engine mask is the `-gemask` option |
| Display board and video option tests | `TEST_ddo3_voccpbuf`, `TEST_ddo3_vocdblbuf`, `TEST_ddo3_vocreg`, `TEST_ddo3_vocspreg`, `TEST_dg_ddc`, `TEST_dg_intbist`, `TEST_dg_reg`, `TEST_dganalog`, `TEST_dgconn`, `TEST_dgopt_intbist`, `TEST_dplexconn`, `TEST_dplexlvds`, `TEST_dvp_voccpbuf`, `TEST_dvp_vocdblbuf`, `TEST_dvp_vocreg`, `TEST_dvp_vocspreg`, `TEST_dvpconn`, `TEST_fmdid`, `TEST_fmovdid`, `TEST_fmreg`, `TEST_fmvcbus`, `TEST_fpconn`, `TEST_gvo_fb`, `TEST_gvo_fb_lite`, `TEST_gvo_fb_pixel_readback`, `TEST_gvo_genlock`, `TEST_gvo_ll`, `TEST_gvo_lsb`, `TEST_gvo_lut`, `TEST_gvo_regs`, `TEST_gvo_reset`, `TEST_gvo_status`, `TEST_gvo_voccpbuf`, `TEST_gvo_vocdblbuf`, `TEST_gvo_vocreg`, `TEST_gvo_vocspreg`, `TEST_optdacreg`, `TEST_optvideo`, `TEST_pab2voccpbuf`, `TEST_pab2vocdblbuf`, `TEST_pab2vocreg`, `TEST_pab2vocspreg`, `TEST_setvid`, `TEST_tvo_voccpbuf`, `TEST_tvo_vocdblbuf`, `TEST_tvo_vocreg`, `TEST_tvo_vocspreg`, `TEST_tvoconn`, `TEST_tvoregs`, `TEST_vcbus`, `TEST_vcconn`, `TEST_video`, `TEST_video2`, `TEST_video3`, `TEST_video3_read`, `TEST_video4`, `TEST_video_pix_write`, `TEST_videotiny`, `TEST_voccpbuf`, `TEST_vocdblbuf`, `TEST_vocreg`, `TEST_vocspreg`, `TEST_xmapchid`, `TEST_xmapdid`, `TEST_xmapovdid` | display-generator register, analogue, connectivity and DDC tests, the frame-buffer and XMAP tests, the video-bus tests, and the option-board tests: the DPLEX and digital display option (`ddo3`, `dvp`), the TV output option (`tvo`), the graphics video option (`gvo`) and the second pixel-assembly board (`pab2`), each with a video-output-controller register, special-register, command-buffer and double-buffer test ([dg.md](dg.md)) |
| Test infrastructure tests | `TEST_fail`, `TEST_jtaginit`, `TEST_reset`, `TEST_showconfig`, `TEST_sysprobe`, `TEST_wait_done` | tests that set up or report rather than test: initialise the scan library, probe and print the configuration, reset, a deliberate failure, and wait for the pipe to finish |

## Reporting and options

| Group | Functions | Role |
|---|---|---|
| Remaining helpers | `all_extest_but_vocs`, `dispose_netmap`, `f3RevRead`, `fiopen`, `impvid`, `load_fb_from_file`, `print_netmap`, `read_netmap`, `readimagedata`, `run_copy_in_pixel`, `sendVidRBusReg`, `shell_func`, `shell_read_ram`, `shell_write_ram`, `verify_match_num_vocs`, `waitDrawLoadDone` | small helpers that belong to the groups above: shell commands for peeking and poking memory (`shell_func`, `shell_read_ram`, `shell_write_ram`), the mid-plane and network-map readers (`read_netmap`, `print_netmap`, `dispose_netmap`), a line-oriented file parser and the like |
| CRC harness | `arm_xmap_crc`, `collectCRC`, `compareCRC`, `crc_imptest1`, `crc_pgtest1`, `crc_tex1_draw`, `crc_zclose`, `crc_zopen`, `create_konacrc_t`, `decode_crc_errs`, `determine_crc_goldfile`, `enable_voc_crc`, `ensure_voc_crc_done`, `initCRCreg`, `init_accum`, `init_crc_structs`, `readGoldCRC`, `run_crc_testlist`, `verify_xmap_crc_done`, `writeGoldCRC`, `xmap_crc_start`, `xmap_crc_stop`, `xmap_dump_crc_to_observe`, `xmap_print_crc` | the CRC harness: the chips keep running CRCs of what passes through them (collection is switched on, read out through the scan chain as 32, 64 or 128-bit values and compared with a gold file written earlier by `-writecrc`; `RMMASK`, `PGMASK`, `TGMASK`, `TFMASK`, `TMMASK`, `IMPMASK` and the `*CRCMASK` settings pick which chips are reset or ignored) |
| Test list, options and reporting | `assert_in_test_again`, `compareSTEName`, `determineHostType`, `diag_sleep`, `evCheck`, `evPcheck`, `evSkip`, `exit_with_brief_usage_message`, `exit_with_full_usage_message`, `findCharacterInString`, `findQuotedStringLength`, `get_status`, `helen_keller_nondg_boards`, `kt_code_chip`, `kt_code_generate`, `kt_code_result`, `kt_code_summary`, `kt_connectivity_test`, `kt_current_chain`, `kt_data_file`, `kt_dispose_chain`, `kt_exit_crashlog`, `kt_file`, `kt_init_crashlog`, `kt_init_time`, `kt_output_abrt`, `kt_output_code`, `kt_output_code_end`, `kt_output_code_start`, `kt_output_dbug`, `kt_output_diag`, `kt_output_direct`, `kt_output_info`, `kt_output_meta`, `kt_output_nshp`, `kt_output_rslt`, `kt_output_test`, `kt_output_time`, `kt_output_trce`, `kt_output_uniq`, `kt_read_chain`, `kt_report_pin_status`, `kt_setup_pin_status`, `kt_trace_direct`, `kt_ucode_file`, `lazarus_nondg_boards`, `maybe_print_meta_results`, `mystrcmp`, `output_command_line`, `output_revision_info`, `parse_args`, `post_fatal_error`, `print_meta_results`, `read_hub_rtc`, `rtc_time`, `run_tests`, `sort_test_list`, `standard_init`, `stringContainsSpace`, `swap1`, `tlDelay` | the test table and its option parser (`-all`, `-ge`, `-rm`, `-dg`, `-pab`, `-gvo`, `-dvp`, `-ddo`, `-dplex`, `-tvo`, `-conn`, `-gemask`, `-writecrc`, `-goldfile`, `-forever`, `-continue`, and the `NAME=value` settings such as `PIPE`, `REPEAT`, `DELAY`, `LOG`, `TRACE`, `DEBUG`), the result and message writers (the `kt_output_*` family prints one message class each: abort, code, debug, diagnosis, information, meta results, result, test, time, trace, unique), the crash-log writer, the connectivity pin report and the host-type and clock helpers |
| Boundary-scan access | `auto_get_jtag_reg_field`, `auto_init_jtag_reg_field`, `auto_set_jtag_reg_field`, `backdoor_jtPeek`, `backdoor_jtPoke`, `de_gray_code`, `ensure_jt_init`, `get_libjtag_error_count`, `grant_tcbist_waiver`, `init_jtag_regs`, `init_kona_jtag`, `init_real_jtag`, `jaBoardQuery`, `jaChipQuery`, `jaPeek`, `jaPoke`, `jaReset`, `jtAllocChain`, `jtBoardQuery`, `jtChipQuery`, `jtExtract`, `jtFreeChain`, `jtInsert`, `jtNProcs`, `jtPeek`, `jtPextract`, `jtPinsert`, `jtPoke`, `jtReset`, `jt_dump_external_bist`, `jt_dump_external_bist_info`, `jt_dump_internal_bist`, `jt_dump_internal_bist_info`, `jt_execute_external_bists`, `jt_execute_internal_bists`, `jt_extract`, `jt_insert`, `jt_isolate_chip_block_udr`, `jt_load_external_bist`, `jt_load_internal_bist`, `jt_lookup_bit_offset_from_pin`, `jt_lookup_pin_from_bit_offset`, `jt_read_external_bist_info`, `jt_read_internal_bist_info`, `jt_test_chain`, `jt_test_idcode`, `jtcrc_chip_name_to_pos`, `jtcrc_disable_collection`, `jtcrc_enable_collection`, `jtcrc_get_crc_128`, `jtcrc_get_crc_32`, `jtcrc_get_crc_64`, `jtcrc_get_crc_vector`, `jtcrc_impcrc_onoff`, `jtcrc_initialize_crcs`, `jtcrc_read_crcs`, `jtcrc_register_konainfo`, `jtcrc_set_collection`, `jtcrc_set_crc_ctrl`, `libjtag_debug_handler`, `libjtag_error_handler`, `manual_set_jtag_reg_field`, `probe_dg4_chain`, `probe_dg5_chain`, `probe_ge11_chain`, `probe_ge12_chain`, `probe_ge14_chain`, `probe_hilo_dgopt_chain`, `probe_kona_dgopt_chain`, `probe_rm6_chain`, `probe_rm7_rm8_chain`, `reset_libjtag_error_count`, `sel_to_instrname`, `tbuInitKonaJtag`, `unscramble_dg_boardId`, `unscramble_ge_boardId`, `unscramble_idcode`, `unscramble_rm_boardId`, `xmap_jtag_id`, `xmap_jtag_status` | the boundary-scan library shared with `kpm` ([kpm.md](kpm.md#boundary-scan-library-jt_)) plus the diagnostic's own layer: the built-in self-test load, run and dump calls (`jt_load_internal_bist`, `jt_execute_external_bists` and relatives; internal and external, each with an information reader), chain and ID-code tests, the generic register peek and poke wrappers (`jtPeek`, `jtPoke`, `jtInsert`, `jtExtract`, `jaPeek`, `jaPoke`), board and chip queries, and the probes that identify which chain revision is fitted (display generator 4 or 5, geometry engine 11, 12 or 14, raster board 6, 7 or 8, the HILO option chains); board identifiers read from the chain are scrambled and the `unscramble_*` functions undo it |

## Hardware access layers

| Group | Functions | Role |
|---|---|---|
| Geometry engine, distributor and BEF helpers | `Ge11ERamAddrPathParallel`, `Ge11ERamCellParallel`, `Ge11ERamDataPathParallel`, `RealRM`, `Send_GED_CI_Token`, `Send_GED_Inc_GE`, `SetBefConfig`, `Transfer_GED_Reg`, `befSelCurrGE`, `bef_configuration`, `black_hole_ged`, `define_imp_did`, `define_imp_ov_did`, `dgrm_config`, `diag_setupGED`, `ge11_bypass_read`, `ge11_bypass_write`, `ge12_external_memory_config`, `ge12_init`, `ge12_stop`, `ge_bypass_read_nomap`, `geconn`, `gedStressForm`, `gedStressPtu`, `gedStressReorder`, `gedStressTd`, `gedStressUnpack`, `gedStressVtu`, `ged_set_ge`, `imp_map`, `init_ge_num`, `modify_bef_config_reg`, `modify_bef_user_reg`, `pxid_permute`, `pxid_to_impnum`, `pxid_to_tfnum`, `query_bef_config_reg`, `query_bef_status_reg`, `query_bef_user_reg`, `rm6_external_memory_config`, `rm6_init`, `rm6_stop`, `rm6_test`, `rm_hold`, `rm_release`, `screenx_to_rmx`, `screenxy_to_all`, `select_bef_current_ge`, `send_imp_dids`, `send_imp_dids_partial`, `set_bef_config_reg`, `set_bef_user_reg`, `set_current_ge`, `set_ge11_bypass_pointer`, `set_num_rms`, `split_geconn`, `switch_ged_ge`, `tbNextGE`, `waitBefDone`, `xy_to_imp_id` | geometry-engine and distributor helpers: selecting the current engine, bypass reads and writes (`ge11_bypass_read`, `ge_bypass_read_nomap`), the distributor stress forms (`gedStressPtu`, `gedStressVtu`, `gedStressReorder`, `gedStressTd`, `gedStressUnpack`, `gedStressForm`), the BEF configuration, user and status registers (`set_bef_config_reg`, `query_bef_status_reg`, `modify_bef_user_reg`), external-memory set-up for the GE12 and RM6 boards, raster board reset and release, and the mapping between pixel IDs or screen coordinates and image-processor numbers |
| Pipe access (`fc*`, `tl*`, host access) | `LoadArmBoot`, `LoadArmFile`, `LoadUcodeFile`, `Load_GED_Ucode_Loop`, `Pab2_TestDblBuffRegs`, `PioReadArm32`, `PioReadArmIncr32`, `StallArm`, `TestRegs`, `UnStallArm`, `arm_ged_write`, `arm_init_ge`, `basicSanityReg`, `cmp_nic_sn`, `destroy_map_diag`, `diag_arm_reg_write`, `enable_hip_intr`, `fcAdapPioRead32`, `fcAdapPioRead64`, `fcAdapPioWrite32`, `fcAdapPioWrite64`, `fcGfxFlush`, `fcGfxWrite`, `fcGfxWrite64`, `fcIntrCount`, `fcIntrGet`, `fcPioRead32`, `fcPioWrite32`, `fcPioWrite64`, `fcTbusWrite`, `fcWriteBefSdram`, `fciTest`, `fetch_tables`, `init_hip_interrupt_regs`, `init_kona_access`, `init_kona_hw_access`, `init_konainfo_BDinfo`, `init_konatest_data`, `klcfg_get_nic_info`, `mapTypeToXDRPROC`, `nic_info_get`, `nic_read_mfg`, `nic_read_one_page`, `pab2TestRegs`, `reg_test`, `sendBoardControlReg`, `sendTransControlReg`, `set_hip_intr_info`, `tear_down_konatest_data`, `tlForce`, `tlPassthruData`, `tlPassthruEnd`, `tlPassthruWrite`, `tlRelease`, `tlTraceComment`, `update_registers`, `update_ucode_struc`, `verif_update_ucode_struc`, `verify_arm_mem`, `xg_xt_report_stats`, `zero_arm_mem` | the pipe-access layer: programmed I/O to the host-interface and adapter registers (`fcPioRead32`, `fcAdapPioWrite64` and relatives), raster-bus and graphics FIFO writes (`fcTbusWrite`, `fcGfxWrite`, `fcGfxWrite64`, `fcGfxFlush`, `fcWriteBefSdram`), interrupt counting, the trace and force hooks (`tlForce`, `tlRelease`, `tlPassthruWrite`), ARM stall, load and memory access, microcode load, host-interrupt setup, the one-wire serial-number reads of every board, and the register read-back tests |

## Video, display and option boards

| Group | Functions | Role |
|---|---|---|
| Display-generator and video-option bring-up | `DacReset`, `DgSanityTest`, `DgVDacControlWrite`, `FrameBufferInit`, `bpln_init`, `bpln_reset`, `bpln_stop`, `bpln_test`, `csc_config`, `dg4_init`, `dg4_stop`, `dg4_test`, `dgRestoreDefaultPllValues`, `dg_clock_restore`, `dg_make_dac_fetal`, `dgo_FbWrTest`, `dgo_clearfb`, `dgo_csc_status`, `dgo_fb_lite_test`, `dgo_fb_path`, `dgo_fb_test`, `dgo_gamma_lut_abus_test`, `dgo_gamma_lut_cell_test`, `dgo_gamma_lut_dbus_test`, `dgo_gamma_lut_funky_cell_test`, `dgo_genlock`, `dgo_genlock_NTSC`, `dgo_genlock_PAL`, `dgo_genlock_reset`, `dgo_genlock_status`, `dgo_genlock_test`, `dgo_ll_path`, `dgo_loadXilinx_reset`, `dgo_lsb_test`, `dgo_pixel_readback`, `dgo_regs`, `dgo_reset`, `dgo_setup_fb_mode`, `dgo_setup_video`, `dgo_status`, `dgo_stop_video`, `dgo_wait`, `dgo_write_tcm22071`, `dgoptResetDefaultPllValues`, `dgoptRestoreDefaultPllValues`, `dgopt_clock_restore`, `dgopt_clock_setup`, `diagLoadDGOXilinxes`, `dplex_init`, `dplex_stop`, `dplex_test`, `dvp_init`, `dvp_stop`, `dvp_test`, `fb_rd_rst`, `fb_step_clk`, `fmDidLoadShifting`, `fmFrameBufferRead`, `fpln_init`, `fpln_stop`, `fpln_test`, `gvo_crc_test`, `gvo_low_latency_test`, `i2c_arb`, `i2c_errmsg`, `i2c_master_recv`, `i2c_master_xmit`, `i2c_master_xmit_recv`, `i2c_test`, `load_cursor_pos`, `load_direct_color`, `load_full_cmap`, `load_gamma_lut`, `mike_video_setup`, `resetVidbusInterface`, `run_dgo_fb_lite_test`, `run_optvideo`, `run_video`, `run_video1`, `run_video2`, `run_video4`, `set_xmap_id`, `setupVidbusInterface`, `test_ddc_chan`, `tst_multi_voc`, `turn_off_substitute_xmap_data`, `tvo_init`, `tvo_stop`, `tvo_test`, `vcReadIncr`, `vcReadSame`, `vcWriteAddr`, `vcWriteIncr`, `vcWriteSame`, `vc_init`, `vc_stop`, `vc_test`, `vdBackdoorVocClock`, `vdBaseVocInit`, `vdBaseVocInitLite`, `vdBaseVocInitWithRegs`, `vdBeginAutoRequest`, `vdBeginManRequest`, `vdBeginManRequestLite`, `vdBeginVCBusPoll`, `vdCalcResize`, `vdDisableDgInterrupts`, `vdDisableVocFifoReset`, `vdDrainVocFifo`, `vdEnableVOCSignalTrace`, `vdEnableVocFifoReset`, `vdEndAutoRequest`, `vdEndManRequest`, `vdEndVCBusPoll`, `vdEndVof`, `vdFillVocFifo`, `vdGetNumLinesComplete`, `vdGetVocCrcs`, `vdInitManRequestDesc`, `vdInitVocCrcs`, `vdIsManRequestDone`, `vdIsManRequestFieldDone`, `vdIsManRequestReady`, `vdLoadExternalSync`, `vdLoadFormat`, `vdLoadManRequest`, `vdLoadResize`, `vdLoadVocClockParams`, `vdLoadVocIwsc`, `vdLoadVof`, `vdMakeFileName`, `vdManRequest`, `vdPerformManRequest`, `vdReadFormat`, `vdResetVocFifo`, `vdRestartVOF`, `vdSetDacPixelMux`, `vdSetVocDoubleBufferFieldMode`, `vdSetVocInternalClock`, `vdSetVocReadbackClock`, `vdShowResize`, `vdStartVof`, `vdStopExternalSync`, `vdUseBackdoorVocClock`, `vdVerifyLoadedFormat`, `vdWaitForVocPllInterface`, `vdrc_en`, `vfLoadPFD`, `vidbusFlush`, `video_fbwrite`, `video_fbwrite_read`, `video_tiny`, `waitIMPVideoDone`, `waitRbusDone` | the display and option-board drivers: each option board has an `init`, a `stop` and a `test` entry (`dvp_init`, `dplex_test`, `tvo_stop`, `vc_test`, `fpln_test` and `bpln_test` for the front and back plane boards), the digital-display-option routines (`dgo_*`: frame-buffer write and path tests, gamma-table cell and bus tests, genlock for NTSC and PAL, colour-space-conversion status, pixel read-back, the Xilinx loader, the TCM22071 encoder write), the second-generation option (`dgopt_*`: PLL defaults and clock restore), display-generator reset and clock restore, the video-format and video-output-controller routines (`vd*`: load a format, resize, manual and automatic request, FIFO fill, drain and reset, CRC read, external sync, readback clock), the video bus (`vcReadIncr`, `vcWriteAddr`, `vidbusFlush`), the I2C helpers, the XMAP identification and cursor, gamma and colour-map loaders (`load_cursor_pos`, `load_full_cmap`, `load_gamma_lut`) and the frame-buffer set-up routines |

## Drawing test support

| Group | Functions | Role |
|---|---|---|
| Texture state, matrices and the test-script interpreter | `AssignElement`, `AttachDetail`, `BindCubeMap`, `BindTexture`, `ClipBorder`, `ClipCenter`, `ClipLevels`, `ClipSize`, `ClipTexture`, `ClipVirtSize`, `CreateTexture`, `DLDataType`, `DLGetData`, `DLGetGenericDList`, `DLGetName`, `DLGetNameData`, `DLGetNameIndex`, `DLGetNamedDList`, `DLGetNum`, `DLNameDList`, `DLNameData`, `DLNameType`, `DLNewDList`, `Debug`, `DefineData`, `DoPrint`, `DoPrintHex`, `DoSub`, `DownLoadTexture`, `ExecuteIf`, `GenerateTexturePattern`, `GetCurrentTextureMatrix`, `GetCurrentTri`, `GetCurrentViewMatrix`, `GetCurrentViewport`, `GetNextFloat`, `GetNextInteger`, `GetNextString`, `GetNextToken`, `GetStringElement`, `GetSubField`, `GetTextureLevelSize`, `GetTokenFunction`, `GetTokenIndex`, `GlobalTMemOffset`, `IdentityTextureMatrix`, `IdentityViewMatrix`, `IfDef`, `IfEqual`, `IfGreaterThan`, `IfGreaterThanOrEqual`, `IfLessThan`, `IfLessThanOrEqual`, `IfNotDef`, `IfNotEqual`, `IncludeFile`, `InitDestRectangle`, `InitParser`, `IssueViewportCommands`, `LoadLevel`, `LoadTextureImage`, `MAX`, `MatrixDebug`, `MipToNonMip`, `NewTokenType`, `NewTri`, `NormalizeTexAddress`, `ParseFile`, `ParserAdd`, `ParserDefine`, `ParserDivide`, `ParserMax`, `ParserMin`, `ParserMod`, `ParserMultiply`, `ParserPower`, `ParserRand`, `ParserSeed`, `ParserSubtract`, `PassOnIf`, `PerspectiveViewMatrix`, `PrintAllDefines`, `PrintDefine`, `PrintDefineHex`, `PrintNamedTriangle`, `PrintTextureMatrix`, `PrintTri`, `PrintViewMatrix`, `PutNextID`, `RegisterMatrixTokens`, `RegisterTextureTokens`, `RegisterTriTokens`, `Repeat`, `RotateTextureMatrix`, `RotateViewMatrix`, `SDBcloseReadDatabase`, `SDBgetSymbolDataAddress`, `SDBgetSymbolDatatype`, `SDBgetSymbolElementCount`, `SDBgetSymbolValueArray`, `SDBgetSymbolValueScalar`, `SDBinitializeSymbolTableEntries`, `SDBprocessOneUserMethod`, `SDBreadOpenDatabase`, `SDBsetupMemoryInterface`, `ScaleTextureMatrix`, `ScaleViewMatrix`, `ScissorOrigin`, `ScissorSize`, `ScissorTriangles`, `SetFromEnv`, `SetInputFile`, `SetMatrixDebug`, `SetStringElement`, `SetSubField`, `SetTextureDebug`, `StringToToken`, `TBUDebug`, `TexAddress`, `TexBank`, `TexForceAddress`, `TexFreeImages`, `TexSendDrawID`, `TexSendID`, `TexShadow`, `TexWaitOnDrawID`, `TexWaitOnID`, `TextureClamp`, `TextureClipOffset`, `TextureDebug`, `TextureEnableFog`, `TextureEnvironment`, `TextureFormat`, `TextureID`, `TextureInterlaceDownLoads`, `TextureLevelSize`, `TextureMagFilter`, `TextureMinFilter`, `TextureNLevels`, `TextureOnOff`, `TexturePassREnable`, `TexturePrintLevel`, `TextureReadback`, `TextureSetBaseID`, `TextureSetClipOffset`, `TextureStorageMode`, `TextureSubLoad`, `TranslateTextureMatrix`, `TranslateViewMatrix`, `UnAttachDetail`, `UpdatePlaceHolder`, `ViewportLocation`, `ViewportSize`, `compare`, `formatterFlush`, `getLine`, `getNextBuffer`, `getString`, `getSubField`, `hash_enter`, `hash_lookup`, `hash_value`, `hist_base_check`, `hist_ecd_check`, `hist_ecdbase_check`, `i_errhdlr`, `i_seterror`, `ibufalloc`, `iclose`, `iflush`, `img_badrow`, `img_getrowsize`, `img_optseek`, `img_read`, `img_rle_compact`, `img_rle_expand`, `img_seek`, `img_setrowsize`, `img_write`, `imgopen`, `iopen`, `isetcolormap`, `isetname`, `locate_break`, `ogLibBitRand`, `ogLibDlistRand`, `ogLibExpRand`, `ogLibFloatRand`, `ogLibGetSeed`, `ogLibIntRand`, `ogLibOrderRand`, `ogLibSetSeed`, `readNewTri`, `readT2f`, `readT3f`, `readV3f`, `reverse`, `setCurrentTri`, `setSubField`, `xdr_SDBdataType`, `xdr_SDBelementIndex`, `xdr_SDBfileHeader`, `xdr_SDBfileOffset`, `xdr_SDBsymbolName`, `xdr_SDBsymbolTableEntry`, `xdr_SDBversionNumber`, `xdr_typedData` | the test-vector script interpreter and the state it manipulates: a small text language (`#define`-style names, `IfDef`, `IfEqual` and the other comparisons, `Repeat`, `IncludeFile`, arithmetic `Parser*` operators, named data lists `DL*`) that describes textures, matrices, triangles and viewports, the matrix helpers that build them, the symbol database reader (`SDB*`, with XDR decoders `xdr_SDB*`) that gives the loaded microcode symbol addresses, an SGI image-file reader and writer (`img*`, `iopen`, `ibufalloc`), a seedable random-number library (`ogLib*`), a string hash table and the histogram checks (`hist_base_check`, `hist_ecd_check`) |
| Texture and drawing library (`tbu*`, `tb*`) | `ClipAndCenterTexture`, `EvenFirst`, `StartAddrs`, `ToggleStartSigs`, `aaspoke`, `add_ci_to_image`, `clearfb`, `clearfb_vid`, `create_fb`, `cvtimage`, `cvtlongs`, `cvtshorts`, `draw_random_thing`, `draw_rect`, `draw_tri`, `draw_triz`, `fbpc_test`, `flip`, `fog`, `free_fb`, `getrow`, `init_addr`, `init_bl`, `init_clear_color`, `init_clip`, `init_depth_clear`, `init_mask_color`, `init_ms`, `init_ms_loc`, `init_op`, `init_sz0`, `init_sz1`, `init_user_color`, `mini_decode_func`, `myFrameBufferCopy`, `myFrameBufferInit`, `myFrameBufferInitDestRectangle`, `myFrameBufferWriteTest2`, `myFrameBufferWriteTest4`, `myFrameBufferWriteWords`, `my_draw_tri`, `my_glTexParameterf`, `my_glTexParameterfv`, `my_glTexParameteri`, `my_glTexParameteriv`, `mytbuInit`, `mytbuRegReset`, `pack_ci`, `pack_rgba`, `pack_z`, `putrow`, `send_data_to_fb`, `set_decode_fcn`, `smallwrite`, `tbDirectQuad`, `tbEndFast`, `tbPixel`, `tbReadFB`, `tbReadTex16`, `tbReadTex32`, `tbReadTex64`, `tbStartFast`, `tbTexel`, `tbTextureCoord`, `tbTextureCoord1`, `tbTraceOff`, `tbTraceOn`, `tbVertex`, `tbWriteFB`, `tbWriteTex16`, `tbWriteTex32`, `tbWriteTex64`, `tbuAssignSTBits`, `tbuAttachDetailMap`, `tbuClipBorder`, `tbuCompare3DMaps`, `tbuCompareMipmaps`, `tbuDebugMode`, `tbuDestroyTexture`, `tbuDoShadow`, `tbuDrawWaitOnLoadID`, `tbuEnableCubeMap`, `tbuFakeDownloadRegs`, `tbuFormat3D`, `tbuFormatTexels`, `tbuGenMipmap`, `tbuGenPat`, `tbuGenPattern`, `tbuGenPattern3D`, `tbuGenerateMipmaps`, `tbuGetComponentBits`, `tbuGetNComponents`, `tbuGetNTexelBytes`, `tbuGetNextTexID`, `tbuGetTSize`, `tbuGetTexelSize`, `tbuGlobalOffset`, `tbuIdentity`, `tbuInit`, `tbuInitTexture`, `tbuInterlaceDownLoads`, `tbuLineEdgePos`, `tbuLineStyle`, `tbuLineWidth`, `tbuLoad3D`, `tbuLoadBicubic`, `tbuLoadBicubicTable`, `tbuLoadBicubicTable2`, `tbuLoadDetail`, `tbuLoadDetailTable`, `tbuLoadImage`, `tbuLoadMipmap`, `tbuLoadMipmap3D`, `tbuLoadSharpenTable`, `tbuLoadTexture`, `tbuLoadWaitOnDrawID`, `tbuMapNextLoadID`, `tbuMipToClip`, `tbuMipToClipAndCenter`, `tbuNewMipmap`, `tbuNextBicubicBaseAddr`, `tbuNextMipmapBaseAddr`, `tbuOffsetClip`, `tbuOrtho`, `tbuPerspective`, `tbuPrint3DMapSlice`, `tbuPrint3DMipmapLevelSlice`, `tbuPrintFormattedTexels`, `tbuPrintMipmapLevel`, `tbuRead3D`, `tbuReadMipmap`, `tbuReplicateMap`, `tbuRotate`, `tbuRoundPoint`, `tbuScale`, `tbuSendDrawID`, `tbuSendLoadID`, `tbuSetNextTexID`, `tbuSetScissorRect`, `tbuSubLoadMap`, `tbuTexEnv`, `tbuTransform`, `tbuTranslate`, `tbuUnFormatTexels`, `tbuViewport`, `tbuWaitDone`, `tbuWindow`, `testClear`, `testClear1`, `test_callig`, `test_prims`, `test_rderr`, `wishy_washy_decode_func`, `writebb` | the raster-bus test library: `tbu*` builds and loads textures (mipmap, 3-D, clip-map, bicubic and detail tables, cube maps; image formatting and generated patterns), sets the viewport, scissor and transform state and sends draw and load IDs and waits on them; `tb*` writes vertices, pixels, texels and texture coordinates straight to the raster-bus FIFO and reads the frame buffer and texture memory back (`tbReadFB`, `tbReadTex16`, `tbWriteTex64`); the remaining names draw triangles and rectangles, clear and copy the frame buffer, pack colours and convert image data |

