# Hardware-facing routine explanations, InfiniteReality (KONA), pilot 1

Each entry says what one routine does to the hardware and cites the instruction addresses it rests on. The facts come from the routine bodies in the shipped binaries and from the linked register and ioctl rows of the inventory. Meanings that come from a datasheet or a callee are marked Inferred, and open points are marked Unknown with the route that would settle them.

- `SGICapGLCapture..HAE` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10152680 (n32).
  Inferred: the failure string at 0x10299ff8 ('unable to query snoop on rn, rnid') and the linked 
  ioctl 0x3f2 row under the graphics manager table point to a snoop-state query on a window's 
  private data. It returns 2 at once when the sign bit of the word at +0x7c of the first 
  argument, shifted left 0x15, is clear (0x101526bc, 0x101526cc); otherwise it calls through the 
  pointer at +0x17c of the structure that the word at +0x0 of the second argument points to, and 
  returns 2 when that call returns 0 (0x101526f8, 0x10152700). It then takes the entry at index 
  `rrmWindowPrivateIndex` in the table that the word at +0x84 of the first argument points to, 
  and returns 2 when that entry is null (0x10152720, 0x10152724). When either bit 0x1 of the 
  halfword at +0x0 or bit 0x2 of the byte at +0x6 of the entry is clear, it returns 1 if the word 
  at +0x10 of the entry is nonzero and 2 otherwise (0x1015273c, 0x10152744, 0x10152858); when 
  both bits are set, it sends ioctl 0x3f2 with a five-word buffer holding the word at +0xc of the 
  entry, the word at +0x4 of the first argument, 0x80, and two zeros (0x10152760 to 0x1015276c, 
  0x10152788). On a -1 return it logs the string at 0x10299ff8 with errno unless errno is 0x16, 
  and every path that reaches the request ends in the +0x10 test, returning 1 for a nonzero word 
  and 2 for zero (0x10152884, 0x10152894, 0x10152848, 0x10152850). When the request succeeds with 
  bit 0x80 set in the frame word at +0x8, which held 0x80 before the call (0x10152774, 
  0x101527a8), it walks a chain of entries through the pointer at +0x14, calls the pointers at 
  +0x17c and +0x168 of the structure the second argument points to (0x101527e8, 0x1015280c), and 
  then calls the pointer at +0x20 of a second structure with the first argument, 0x8 and 0x1 
  (0x10152834). The request buffer's first word, the entry's +0xc word stored at 0x10152760, is
  read back before the log call and printed as the 'rnid' value (0x10152894). The descriptor for the ioctl is the word at +0x64 (0x1015278c) of the structure at +0x74
  (0x1015277c) of the structure that the second argument points to. Unknown: what `rn` and `rnid` identify; a
  reviewed datasheet giving the ioctl 0x3f2 request layout, or a capture of that request, would
  settle it.
  Evidence grade: inferred.
- `TEST_callig` in `usr/diags/IR/bin/irsaudit` at 0x10104794 (n32).
  Inferred: a board check in the `irsaudit` tool that reads the RM count at +0x16c of the structure
  in `a0`, accepts 1, 2 or 4, and then runs a status poll and a CRC or `test_callig` check, judging
  by the strings and callee names it uses.
  For a count other than 1, 2 or 4 it prints 'Detected %d RM(s)' with the count (the `jal` at
  0x10104814) and then 'Detected invalid number of RMs' (the `jal` at 0x10104838), and returns
  (the `beq` at 0x10104840).
  When the word that `KONAINFO` points to equals 6 (the `beq` at 0x1010484c), it stores
  0xfffff7ffffffffff at 0x1020c800 and 0x7ffffffffff at 0x1020c808 (the `sd` at 0x10104a88 and
  0x10104a94) and prints the IR4 CRC warning string at 0x101b3db8 (the `jal` at 0x10104a90); either
  way it then calls `kt_code_result` with 2 and 1 (the `jal` at 0x10104878) once per index below
  the count, looping on the `bne` at 0x10104888.
  Inferred: per its committed note, `fcPioRead32` reads the adapter word at byte address 0x208, so
  the code polls that word: it calls `fcPioRead32` with 0x208 (the `jal` at 0x101048a0) and, when
  the read is nonzero, loops `sginap` with 5 (the `jalr` at 0x101048c4) and the read, stopping at
  the first zero read or after five passes (the `bne` at 0x101048e4); if every pass reads nonzero
  it prints 'HH_GFIFO_LEVEL is > 0' (0x101b3df8, the `jal` at 0x101049c0) and returns.
  Then it issues ioctl 0x2775 on the descriptor in `pipeFD` with 1 as its third argument (the
  `jalr` at 0x1010491c); a negative result prints 'KONA_DIAG_FLOW ioctl failed.' (0x101b3e10, the
  `jal` at 0x10104af8) and returns (the `bltz` at 0x10104924).
  If the word at `Nocrc` is zero (the `beq` at 0x10104938), it calls `run_crc_testlist` (the `jal`
  at 0x101049e8) with `a0` set to 0x1020c810 plus 0x10; otherwise it calls `test_callig` (the `jal`
  at 0x1010494c) with the entry `a0`. Either callee's zero return passes 1 to `kt_output_rslt` (the
  `jal`s at 0x10104a08 and 0x10104a24), and a nonzero return passes 0 (the `jal`s at 0x10104a40 and
  0x1010496c); the path then issues ioctl 0x2775 with 0 (the `jalr` at 0x10104980).
  Unknown: the values `kt_code_result` sends back and what `run_crc_testlist` checks before it
  returns are open; their entries would close that gap.
  Unknown: the short path for a `KONAINFO` word equal to 2 (the `beq` at 0x101047d4 to 0x10104aa0)
  prints through the format at 0x101b3d50, which is not among the bundle strings; reading that
  string from the binary would close it.
  Evidence grade: inferred.
- `TEST_fmovdid` in `usr/diags/IR/bin/irsaudit` at 0x10067eec (n32).
  Runs one check on the DG board through the routine at 0x100680ac and reports pass or fail. It does
  not touch the device itself: the bundle shows no board register access, only the word at +0xdbc of
  the structure in `a0` (the `lw` at 0x10067ef0), the `MAX_ERRORS` word and calls into the `kt_`
  reporting routines.
  When the word at +0xdbc is zero (the `beq` at 0x10067f08), the routine first sends four messages:
  `kt_output_info` with the text at 0x10196f20, 'WARNING: JTAG reports no DG4 present.' (the `jal` at
  0x1006804c), `kt_output_info` with 0x10196f48, 'WARNING: Is JTAG circuitry broken?' (0x10068064),
  `kt_output_diag` with 0x10196f70, 'Please verify/fix the on-board JTAG circuitry.' (0x10068084), and
  `kt_output_info` with 0x10196fa0, 'Test (via vcbus) still continues.' (0x1006809c). A nonzero word
  skips them.
  Both paths then call `kt_output_dbug` with 5 and 'MAX_ERRORS = %d' and the `MAX_ERRORS` word (the `jal`
  at 0x10067f48), and call the unnamed routine at 0x100680ac (the `jal` at 0x10067f5c), keeping its
  return value in the frame word at sp+0x0 (the `sd` at 0x10067f68).
  A nonzero return (the `beq` at 0x10067f64 falls through) goes to the failure report:
  `kt_output_diag` with 'Replace DG board; repair by reworking flawed ASIC.' (0x10067f7c),
  `kt_code_result` with 3, 0 and 4 (0x10067f98), `kt_code_chip` with 7, 0 and 4 (0x10067fb4) and
  `kt_output_rslt` with 0, 'TEST FAILED TOTAL ERRORS = %d' and the routine's return as the count
  (0x10067fdc).
  A zero return goes to the pass report: `kt_code_result` with 3, 0 and 1 (0x1006800c) and
  `kt_output_rslt` with 1 and 0 (0x10068024). The return at 0x10067ff0 passes back the result of
  the last `kt_output_rslt` call.
  Inferred: the routine at 0x100680ac returns an error count, since the failure text prints its return
  as 'TOTAL ERRORS' and a zero return takes the pass report.
  Unknown: the fields the routine at 0x100680ac reads and the board accesses it makes; its own body
  would settle it.
  Evidence grade: inferred.
- `TEST_fog` in `usr/diags/IR/bin/irsaudit` at 0x1010c09c (n32).
  Inferred: this check acts on the context in `a0`, reads the RM count at +0x16c, and runs its
  steps only at a count of 1; the strings 'This test only runs on 1 RM systems' (0x101b5948),
  'VIDEO' (0x101b5a08) and '1280x1024_60.vfo' (0x101b5a10) suggest a video-path check.
  Any count other than 1 takes the exit at 0x1010c134 after printing a message with the count (the
  `jal` at 0x1010c0f0), 'This test only runs on 1 RM systems' (the `jal` at 0x1010c108) and
  'Detected invalid number of RMs' (the `jal` at 0x1010c12c).
  The `sd` pair at 0x1010c434 and 0x1010c440 writes 0xfffff7ffffffffff to 0x1020c920 and
  0x7ffffffffff to 0x1020c928, and it runs only for a count of 1 with a `KONAINFO` word equal to 6
  (the `beq` at 0x1010c154). The loop that follows calls `kt_code_result` with 2 and 1 (the `jal` at
  0x1010c180) for each index under the count, and the `bne` at 0x1010c190 closes it.
  Reading 0x208 through `fcPioRead32` (the `jal` at 0x1010c1a8) starts a retry loop whenever the value
  comes back nonzero: each pass calls `sginap` with 5 (the `jalr` at 0x1010c1c8) and reads again, and
  the loop ends on a zero read or at the bound checked by the `bne` at 0x1010c1e8. Reaching the bound
  with every read nonzero prints 'HH_GFIFO_LEVEL is > 0' from the `jal` at 0x1010c398 before returning.
  The ioctl 0x2775 at 0x1010c21c takes 1 as its third argument; a negative result leaves through
  the `bltz` at 0x1010c224 to print 'KONA_DIAG_FLOW ioctl failed.' (0x101b59e8, the `jal` at
  0x1010c3ec) and return.
  On a nonnegative ioctl result it hashes 'VIDEO' (the `jal` at 0x1010c244) and, when the hash is
  nonzero (the `beq` at 0x1010c24c), calls `reset_dacs` (the `jal` at 0x1010c260), `kt_data_file` on
  '1280x1024_60.vfo' (the `jal` at 0x1010c280), `tst_multi_voc` twice (the `jal`s at 0x1010c2bc and
  0x1010c2e8) and `sleep` with 1 (the `jalr` at 0x1010c2fc).
  A nonzero `Nocrc` word (the `beq` at 0x1010c314 falls through) sends the path to `fog` (the `jal`
  at 0x1010c328); a zero one sends it to `run_crc_testlist` (the `jal` at 0x1010c3c0). Both routes
  then print a result (the `jal` at 0x1010c344) and issue ioctl 0x2775 with 0 (the `jalr` at
  0x1010c358).
  Unknown: the format at 0x101b5930 that the `jal` at 0x1010c0f0 prints from is not among the bundle
  strings, and the callees `fog`, `hash_value`, `reset_dacs`, `kt_data_file`, `tst_multi_voc`,
  `run_crc_testlist` and `kt_code_result` have no committed entries; their entries and that string
  would close these.
  Evidence grade: inferred.
- `TEST_gvo_fb_pixel_readback` in `usr/diags/IR/bin/irsaudit` at 0x1011c140 (n32).
  Inferred: this is the GVO framebuffer pixel readback test, since the strings at 0x101b9970 and
  0x101b99b0 name it that way ('...in GVO FB pixel readback test'), and its test step is the call to `dgo_pixel_readback` at 0x1011e958
  (`jal` at 0x1011c1f4).
  It reads the word at `xilinx_loaded` (`lw` at 0x1011c160) and branches on it (`beq` at 0x1011c16c);
  when that word is zero it calls `dgo_loadXilinx_reset` with its four arguments (`jal` at 0x1011c284),
  checks the word again (`beq` at 0x1011c1a8), and if it is still zero sends the string at 0x101b93e8,
  'ERROR: Unable to load up Xilixes - Aborting tests' (`jal` at 0x1011c2a8), and joins the shared tail
  at 0x1011c234.
  Inferred: `dgo_loadXilinx_reset` loads the board's programmable logic, since the abort text after
  it names the load and the `xilinx_loaded` word is rechecked after the call.
  A nonzero word at the first test instead sends 'xilinxes found loaded from previous test'
  (0x101b93b8) to `kt_output_dbug` with 1 (`jal` at 0x1011c190). Both of those paths then call
  `dgo_reset` (`jal` at 0x1011c1bc), print the string at 0x101b9948, 'Beginning FB pixel readback
  tests...' (`jal` at 0x1011c1e0), and call `dgo_pixel_readback` with the first argument it saved on entry (`sd` at
  0x1011c164, reloaded at 0x1011c1f8); the committed note for that callee mentions a framebuffer write test and `dgo_setup_fb_mode`.
  Inferred: the value `dgo_pixel_readback` returns is an error count, since the string at 0x101b9970
  reads 'ERROR: %d error(s) encountered' and takes that value as its second argument (`jal` at
  0x1011c220).
  A zero return prints the string at 0x101b99b0 (`jal` at 0x1011c2d4), then calls `kt_code_result`
  with a0=4 and a2=1 (`jal` at 0x1011c2f4) and `kt_output_rslt` with a0=1 (`jal` at 0x1011c30c); a
  nonzero return prints the error string and takes the shared tail, which calls `kt_code_result` with
  a0=4 and a2=4 (`jal` at 0x1011c244) and `kt_output_rslt` with a0=0 (`jal` at 0x1011c25c), and the
  routine returns what `kt_output_rslt` returned (`jr` at 0x1011c270).
  Unknown: what `dgo_reset` at 0x1011c1bc and `dgo_loadXilinx_reset` at 0x1011c284 change on the board;
  neither has a committed entry, and writing their entries settles it.
  Evidence grade: inferred.
- `TEST_gvo_fb` in `usr/diags/IR/bin/irsaudit` at 0x1011b1b8 (n32).
  The routine's own accesses stay off the device: it reads the `xilinx_loaded` word (the `lw` at
  0x1011b1e0 and 0x1011b224) and branches on results from `dgo_fb_test` and `fbpc_test`, which have
  no committed notes.
  Inferred: it runs a GVO frame-buffer test and then a frame-buffer configuration-loop test, because
  its strings 'Beginning GVO Frame Buffer tests...' (0x101b94a8) and 'Beginning FB Configuration Loop
  test...' (0x101b9528) are printed at the calls at 0x1011b24c and 0x1011b29c, in that order.
  If `xilinx_loaded` is zero on entry (the `beq` at 0x1011b1ec), it calls `dgo_loadXilinx_reset` with
  the entry arguments (the `jal` at 0x1011b348) and tests the word again (the `beq` at 0x1011b228); if
  it is still zero, it prints 'ERROR: Unable to load up Xilixes - Aborting tests' (0x101b93e8, the
  `jal` at 0x1011b378) and goes to the block at 0x1011b2ec, which calls `kt_code_result` with 4 and 4
  (the `jal` at 0x1011b2fc) and `kt_output_rslt` with 0 (the `jal` at 0x1011b314).
  It prints 'Beginning GVO Frame Buffer tests...' (the `jal` at 0x1011b24c), calls `dgo_fb_test` with
  the entry `a0` (the `jal` at 0x1011b260), and then prints 'No errors encountered in GVO FB test'
  (0x101b9500, the `jal` at 0x1011b39c) when the result is zero (the `beq` at 0x1011b268), or 'ERROR:
  %d errors encountered in GVO FB test' with the result (the `jal` at 0x1011b284) otherwise.
  It then calls `fbpc_test` (the `jal` at 0x1011b2b0) and prints 'ERROR: %d errors encountered in FB
  config loop test' with its result (the `jal` at 0x1011b2d4) when nonzero, or 'No errors encountered
  in FB config loop test' (0x101b9588, the `jal` at 0x1011b3c0) when zero (the `beq` at 0x1011b2b8).
  Then it branches on `a1` (the `beq` at 0x1011b2e0): zero leads to `kt_code_result` with 4 and 1 and
  `kt_output_rslt` with 1 (the `jal`s at 0x1011b3e0 and 0x1011b3f8), and nonzero leads to the 4 and 4
  path at 0x1011b2fc and 0x1011b314.
  Unknown: the sum the tool reads into `a1` at 0x1011b2e0 is computed only in the delay slot at
  0x1011b3cc on the zero-result path, so the value on the nonzero-result path is open; a trace of
  `a1` across the call at 0x1011b2b0 would settle it.
  Unknown: the message at 0x101b93b8, printed by the `kt_output_dbug` at 0x1011b210 when
  `xilinx_loaded` is set, is not among the bundle strings, and the four callees `dgo_loadXilinx_reset`,
  `dgo_fb_test`, `fbpc_test` and `kt_code_result` have no committed entries.
  Evidence grade: inferred.
- `TEST_gvo_regs` in `usr/diags/IR/bin/irsaudit` at 0x1011afa8 (n32).
  Inferred: this is the GVO register test, since the strings at 0x101b9420 and 0x101b9440 name it
  that way, and its test step is the call to `dgo_regs` at 0x10113b04 (`jal` at 0x1011b08c).
  It reads the word at `xilinx_loaded` (`lw` at 0x1011b02c) and, when that word is zero, calls
  `dgo_loadXilinx_reset` with that word as its first argument (`jal` at 0x1011b11c), then checks the
  word again (`beq` at 0x1011b058); if it is still zero it prints the string at 0x101b93e8 (`jal` at
  0x1011b144) and joins the shared tail at 0x1011b0cc.
  Otherwise it prints the string at 0x101b9420 (`jal` at 0x1011b078) and calls `dgo_regs` with
  arguments left unresolved (`jal` at 0x1011b08c); a nonzero return prints the string at 0x101b9440
  with that value (`jal` at 0x1011b0b8) and takes the shared tail, which calls `kt_code_result` with
  a0=4 and a2=4 (`jal` at 0x1011b0dc) and `kt_output_rslt` with a0=0 (`jal` at 0x1011b0f4), while a
  zero return prints the string at 0x101b9478 (`jal` at 0x1011b170) and then calls `kt_code_result`
  with a0=4 and a2=1 and `kt_output_rslt` with a0=1 (`jal` at 0x1011b190 and 0x1011b1a8).
  Inferred: the value `dgo_regs` returns is an error count, since the string at 0x101b9440 reads
  'ERROR: %d errors encountered in GVO register test' and takes that value as its second argument.
  The exit at 0x1011b108 returns whatever `kt_output_rslt` returned (`jr` at 0x1011b108).
  Unknown: which buffer the loop at 0x1011b008 to 0x1011b028 walks, since it reads and stores through
  v0 (`lw` at 0x1011b010, `sw` at 0x1011b028) and v0 is loaded from the word at 0x102bd0b8 (`lw` at
  0x1011aff0); reading that word settles which buffer it is.
  Unknown: what message the `kt_output_dbug` call at 0x1011b04c prints on the nonzero-word path, since
  the address its second argument points at has no recorded text; the binary's text there would settle it.
  Unknown: what `dgo_loadXilinx_reset` (0x10119708) and `dgo_regs` (0x10113b04) change on the board;
  neither has a committed entry, so writing their entries settles it.
  Evidence grade: inferred.
- `TEST_idma_cntrl` in `usr/diags/IR/bin/irsaudit` at 0x10077408 (n32).
  Inferred: this is the IDMA command FIFO control test, since the strings at 0x10199af0 ('Testing the
  IDMA control logic') and 0x10199bf8 ('IDMA Command FIFO control test FAILED') name it, and it reads
  and writes the adapter words at byte addresses 0x308, 0x320, 0x3e8 and 0x3f0 through `fcPioWrite32`
  and `fcPioRead32`, whose committed notes say each access selects the word at the byte address divided
  by four.
  After a loop at 0x10077448 whose counter starts at 9 (constant at 0x1007743c), it prints the start
  string (`jal` at 0x1007747c), writes 0 to 0x320 and 1 to 0x308 (`jal` at 0x10077498 and 0x100774a8),
  writes 0x200020 to 0x3e8 and 1 to 0x3f0 (`jal` at 0x100774bc and 0x100774e0), and then, in a loop
  controlled by the word at `[sym(KONAINFO)]` (`bne` at 0x10077558), writes the word at [s2] to 0x3e8,
  the word at [s5] to 0x3f0 and the word at [s4] to 0x3e8 (`jal` at 0x10077520, 0x10077530 and 0x10077568).
  It reads 0x3f0 (`jal` at 0x1007759c) and prints the word as 'The status is %x'; a clear 0x2 bit prints
  'Error !!!. Status mismatch. CFULL bit not set' (`jal` at 0x100777e0), and a word whose 0x7c000 bits
  are all zero prints 'Error !!!. Command FIFO size error.' (`jal` at 0x10077808).
  A loop at 0x10077624 writes 0x200028 to 0x3e8 and reads 0x3f0 on each pass (`jal` at 0x10077640 and
  0x1007764c), printing 'Exp: %x :: Recv: %x' (`jal` at 0x10077678), and prints 'Error in reading value
  from CFIFO' (`jal` at 0x100776a0) when s5 and s6 differ; after the loop it writes 0x200024 to 0x3e8 and
  reads 0x3f0 (`jal` at 0x100776bc and 0x100776c8), and a clear 0x1 bit prints 'STATUS mismatch. CEMPTY
  bit is not set' (`jal` at 0x10077834).
  A word at 72(sp) starts at zero (`sd` at 0x100775d4) and the three error blocks store 1 to it (`sd` at
  0x100777f0, 0x1007781c and 0x10077848); the routine then loads it (`ld` at 0x100776fc) and branches
  on it (`beq` at 0x10077700): when it is set, `kt_code_result` with a0=1 and a2=4 (`jal` at 0x1007771c),
  `kt_code_chip` with a0=2 (`jal` at 0x10077738) and `kt_output_rslt` with the 'IDMA Command FIFO
  control test FAILED' string (`jal` at 0x1007775c) run; when it is clear, `kt_code_result` with a2=1
  (`jal` at 0x100777a8) and `kt_output_rslt` with a0=1 (`jal` at 0x100777c0) run.
  Unknown: what the words at [s2], [s5] and [s4] hold (s2 starts at 0x10200b28 and s4 at 0x10200a68 in
  .data), what the word at `[sym(KONAINFO)]` holds, and what the store `sd` at 0x10077460 writes, since
  its base register is not resolved; reading those words and tracing that base settles them.
  Unknown: which bits the masks 0x2, 0x1 and 0x7c000 and the values 0x200020, 0x200024 and 0x200028 select
  in the adapter words at 0x308, 0x320, 0x3e8 and 0x3f0; no register row is linked, so a linked register
  row or field table for those words would settle it.
  Evidence grade: inferred.
- `TEST_tvo_vocdblbuf` in `usr/diags/IR/bin/irsaudit` at 0x100a9280 (n32).
  Inferred: this is the TVO check of the VOC register blocks, since the strings 'Replace TVO board'
  (0x101a3a28), 'Selecting VOC1b regs (0x%x)' (0x101a34f0) and 'Selecting VOC1a regs (0x%x)' (0x101a34d0)
  name the board and the two blocks, and the per-VOC failure text 'VOC#%d: FAILED with %d errs.'
  (0x101a3510) names the unit it counts.
  A zero word at +0xdbc of the argument (`beq` at 0x100a92c0) prints 'WARNING: JTAG reports no DG5
  present.' (0x101a3688), 'WARNING: Is JTAG circuitry broken?' (0x101a33e8), 'Please verify/fix the
  on-board JTAG circuitry.' (0x101a3410, `kt_output_diag`) and 'Test (via vcbus) still continues.'
  (0x101a3440), and the routine continues in every case.
  A zero word at +0xfb4 (`beq` at 0x100a92d4) prints 'WARNING: JTAG reports no DG Option Board present.'
  (0x101a36b0) with the same circuitry and continuation texts (`jal` at 0x100a9600, 0x100a9618, 0x100a9638
  and 0x100a9650).
  Each VOC pass prints 'Selecting VOC1b regs' (`jal` at 0x100a9354) or 'Selecting VOC1a regs' (`jal` at
  0x100a9418), stores the block's three symbols into the record at 0x102cfa38 at +0x418, +0x41c and
  +0x10 (`sw` at 0x100a9364, 0x100a935c and 0x100a9370 for the 1b block; 0x100a9448, 0x100a9444 and
  0x100a9450 for the 1a block), and calls the unnamed routine at 0x100a8028 with arg0 (`jal` at 0x100a9378).
  A nonzero return from that call prints 'VOC#%d: FAILED with %d errs.' with the record's word at
  0x102cfa38 and the returned value (`jal` at 0x100a93a4), and calls `kt_code_chip` with that word minus
  25 (`jal` at 0x100a93c4); s4 counts the passes (`addiu` at 0x100a9388).
  When the word at +0xfb8 differs from s4 (`bne` at 0x100a9458), the routine prints 'ERROR: JTAG
  determined number of VOCs (%d) doesn't match number of VOCs tested (%d).' with the word at +0xe2c
  (`jal` at 0x100a9528).
  The exits report through `kt_output_rslt`, either with 0 and the '%d errors.' text (0x101a3678, `jal`
  at 0x100a94c4) or with 1 after `kt_code_result` with a2=1 (`jal` at 0x100a954c and 0x100a9564), and
  the routine returns what `kt_output_rslt` returned (`jr` at 0x100a94f8).
  Unknown: what the unnamed routine at 0x100a8028 checks and what its nonzero return counts, since it
  has no committed entry; writing that entry settles it.
  Evidence grade: inferred.
- `TEST_tvoconn` in `usr/diags/IR/bin/irsaudit` at 0x10065350 (n32).
  Inferred: this is the TVO-to-DG connectivity test, since the strings 'Testing for stucks on TVO-DG
  interface.' (0x10195e98) and 'Testing for shorts on TVO-DG interface.' (0x10195ec0) name the two
  checks it runs.
  It calls `ensure_jt_init` first (`jal` at 0x10065378); a nonzero return prints 'ensure_jt_init failed'
  (0x10195dd8), calls `ResetKona` (its committed note says it issues control command 0x6a), prints
  '%d errors detected' (0x10196070) through `kt_output_info` and returns 0 through `kt_output_rslt`
  (`jal` at 0x10065448 and 0x10065458).
  After a zero return, a zero word at +0xf7c (`beq` at 0x10065498) skips the test and reports 'Requires
  an operable DG board.' (0x10196088) with `kt_output_rslt` and a0=2 (`jal` at 0x10065864).
  Otherwise it checks the words at +0xe2c and +0xe30 against 2 and 8 (`bne` at 0x10065590 and `beq` at
  0x10065584), prints 'Invalid DG configuration for tvoconn, numVOCS = %d, numDACs = %d' (0x10196008,
  `jal` at 0x100655bc) on the mismatch branches, and prints 'Invalid configuration: DG5-8 + TVO'
  (0x10195e70, `jal` at 0x100658dc) on the branch where the word at +0xe2c is 8.
  On the main path it writes 0x800 to the vcbus address 0x8400 (`vcWrite`, `jal` at 0x100654d4) after
  printing the DG5 power text (0x10195df0), then puts chains into reset ('reset', 0x10195e68, `jal` at
  0x10065540) or bypass ('bypass', 0x10195dd0, `jal` at 0x10065634) with `jt_select_chain` and
  `jt_set_global_instruction`.
  Its two checks run `kt_connectivity_test` on the table `tvo_funcs` with a3 set to 1 and then 2 (`jal`
  at 0x10065758 and 0x100657ac), each after its trace text, followed by `kt_report_pin_status` (`jal` at
  0x100657d4).
  Its failure tail prints the 'Fix suggestions' text (0x10195ee8) through `kt_output_diag` (`jal` at
  0x10065838) on the branch where s1 is nonzero (`beq` at 0x100657dc).
  Unknown: which call consumes the table names 'dg4_2voc_hdgvo.stuck' (0x10195fd8) and 'dg4_2voc_hdgvo.short'
  (0x10195ff0) that the code loads into s7 and s1 at 0x10065888 and 0x10065880; the consuming call is not
  resolved.
  Evidence grade: inferred.
- `__glPixmapMakeCurrent` in `usr/gfx/arch/IP27KONA/libGLcore.so` at 0xda3d6bc (o32).
  Inferred: it acts on the context block in `a0`, going by the committed notes for `InitBuffers`
  and `__glMakeCurrentBuffers` (the latter written for the IP27KONA32 build), which say those
  callees set up the context's buffer descriptors and store a drawable at context offset 31552
  (+0x7b40).
  It writes 2 to absolute 0x1018 (the `sw` at 0xda3d764), then ORs 0x80 into the word at +0x2e24
  (the `lw` at 0xda3d768 and the `sw` at 0xda3d77c).
  Unless bit 0x4 of the flag word at +0xa8 is set (the `bne` at 0xda3d778), it calls `InitBuffers`
  (the `jalr` at 0xda3d78c); it then always calls `__glMakeCurrentBuffers` (the `jalr` at
  0xda3d7a4), and when that returns nonzero (the `beq` at 0xda3d7ac) it stores `a1` at +0x7810 and
  zero at +0x18 of the object whose pointer sits at +0x1c of the object at +0x7b40 (the `sw` at
  0xda3d7c0 and 0xda3d7c4).
  It stores `a0`+0x7800 at +0x77f8 and `a0`+0x78dc at +0x77fc (the `sw` at 0xda3d7d8 and
  0xda3d7e0), then calls `InitFnPtrs` (the `jalr` at 0xda3d7f0) if bit 0x4 is still clear (the
  `bne` at 0xda3d7dc).
  If bit 0x2 or bit 0x4 is set in the flag word (the `bne` at 0xda3d818) it calls `ApplyViewport`
  (the `jalr` at 0xda3d894); with neither set it calls `__glSoftResetContext` (the `jalr` at
  0xda3d828) and two unnamed callees, at 0xda3d854 (with the words at +0xe74 and +0xe78 as its
  third and fourth arguments) and at 0xda3d878; both paths then call `__glContextSetColorScales`
  (the `jalr` at 0xda3d8a8) and an unnamed callee (the `jalr` at 0xda3d8bc).
  Inferred: the word at absolute 0x1048 (the `lw` at 0xda3d8c4) is a memory-mapped device word,
  because the bundle lists that address among memory-mapped I/O with no linked row; the `beql` at
  0xda3d8cc branches on it, the word at +0x137c (the `lw` at 0xda3d8d4) decides between the `beq`
  at 0xda3d8e0 and the `beql` at 0xda3d938, and the path taken ends in one of four stores to
  +0x17f4 (the `sw` at 0xda3d92c, 0xda3d8e8, 0xda3d940 or 0xda3d984).
  It writes the flag word back at +0xa8 with 0x4 OR-ed in (the `sw` at 0xda3d9cc) and returns 1
  (the return at 0xda3d9e4).
  Unknown: the three unnamed callees at 0xda3d854, 0xda3d878 and 0xda3d8bc remain open, as do the load loops at 0xda3d6f8, 0xda3d734, 0xda3d8f8, 0xda3d950 and 0xda3d990 (the tool does
  not follow their loaded addresses) and the value of the `sw` at 0xda3d9d4; a trace of those addresses and
  the callees' own entries would close them.
  Evidence grade: inferred.
- `ddxFindAvailableBoards..CGC` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10082870 (n32).
  Inferred: the strings '/dev/opengl' (0x102979d8), "Couldn't get number of boards" (0x10297a00) 
  and 'Alloc of board info failed' (0x10297a70) point to opening the graphics device and 
  enumerating its boards into the global board words. It returns 1 at once when the word at 
  0x102e7644 is nonzero (0x10082874, 0x10082880); otherwise it calls `open` on '/dev/opengl' with 
  flags 0x2 and, when that fails, logs "Xsgi: Couldn't open %s" with the path and returns 0 
  (0x100828a4, 0x10082bd8). Next it calls ioctl 101 (0x65) for the count (0x100828c4); on failure 
  it logs "Couldn't get number of boards", closes the descriptor and returns 0 (0x10082c18, 
  0x10082c24). A count of 0x11 or more logs "Warning! More boards (%d) than allowed (%d)" with 
  0x10 as the limit and then stores 0x10 as the count (0x10082af8, 0x10082bb0), and with 
  `sgiNoDriverDDX` set a count of 0x10 or more clears that word (0x100828e8, 0x10082b24). With a 
  nonzero count it calls ioctl 102 (0x66) into a frame buffer (0x1008294c) and returns 0 after 
  logging "Get board info (short) failed" if that fails (0x10082b48); otherwise, if the frame 
  word at +0x24 is zero or less, it logs "Alloc of board info failed" and returns 0 (0x1008295c, 
  0x10082ab4), and if not it calls `__malloc..ML` with that length and logs the same "Alloc" 
  message on a null result, calling FatalError with "Out of memory" first when `Must_have_memory` 
  is set (0x10082978, 0x10082a98, 0x10082aa4), then calls ioctl 102 again and logs "Get board 
  info (long) failed" on failure (0x100829bc, 0x10082b80). When `sgiNoDriverDDX` is set, it calls 
  `Xalloc` with 0x1000 and passes the string at that pointer to `strlen` and `bcopy` into the 
  block, stores the block at 0x102ca724, writes 0x1000 at +0x24 and the `sgiNoDriverHeight` and 
  `sgiNoDriverWidth` halfwords at +0x22 and +0x20 of the block, and logs "Alloc of board info 
  failed" if `Xalloc` returns null (0x10082a10, 0x10082a24, 0x10082a38, 0x10082a6c, 0x10082a4c, 
  0x10082a54, 0x10082a64, 0x10082bf8). On the path that reaches the end it sets the word at 
  0x102e7644 to 1 and returns 1, and the other exits return 0 (0x10082a84, 0x10082adc, 
  0x10082b70). When the word at 0x102ca714 is nonzero and the count is not 0x10, the count plus one is stored
  into `nBoards..163` (the `sw` at 0x100828f8, in the delay slot of the branch to 0x10082900);
  when that word is zero, the count itself is stored (the `sw` at 0x100828fc). A count of 0x11 or
  more on that path also logs a second warning with the limit 0x11 (0x10082b30). Unknown: why
  the count is raised by one on that path; the code that reads `nBoards..163` after this
  routine would settle it.
  Evidence grade: inferred.
- `ddxRequestBoards` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101064d0 (n32).
  Inferred: builds the table of board records from the board count word `nBoards..163` (0x102ca720),
  limited to 0x10 boards: the messages at 0x10297ab0 ('System has more boards (%d) than the server can
  use (%d)') and 0x10297af0 ('Using the first %d available boards only') say that extra boards are
  dropped.
  A count of zero or less first calls `ddxFindAvailableBoards..CGC` with the entry arguments and the
  count as its second argument (0x101066b8), and returns 0 when that call returns 0 (0x101066c0,
  0x101066d0). A count of 0x11 or more (the `slti` at 0x101066cc) logs both messages with the count and
  0x10, then stores 0x10 into the count word (0x101066b4).
  The walk visits board i from 0 up to the count. The record for board i is at 0x102c5d40 plus 0x18 times
  i, and its name pointer is the word at +0x49e8 of 0x102c5d40 plus 4 times i (steps of 0x18 at
  0x10106544 and 0x10106550, of 4 at 0x10106558). A board whose record byte at +0x4585 is 0x1 is skipped
  (0x1010655c, 0x10106564). For any other board the name is lowercased one character at a time through
  `tolower` into a buffer at the stack pointer, ending when the next name byte is zero or the buffer
  pointer reaches sp plus 0xf (0x1010658c, 0x1010659c, 0x101065a0). A zero byte is stored at the end of
  the buffer, at sp plus the number of characters copied (the `sb` at 0x101065c4, in the delay slot of the
  call), and `strdup` copies the buffer (0x101065c0).
  The `strdup` result goes to +0x457c of board i's record (0x101065fc). The record also gets 0xff at
  +0x4583, +0x4586 and +0x458a to +0x458d, zero at +0x4587 and i at +0x4584 (0x101065c8 to 0x101065e8).
  Each recorded board adds 1 to a frame word at sp+0x18 (reload at 0x101065b0, `addiu` 0x1 at 0x101065ec,
  store at 0x101065f0); skipped boards do not.
  When the entry argument a0, saved at sp+0x70 (0x101064d4) and reloaded at 0x101065e4, is nonzero, the
  walk stops after the first recorded board: the routine stores 1 into `ddxNRequestedScreens`
  (0x102ca2b4) and returns 1 (0x10106600, 0x10106630). When it is zero the walk goes on (the `beq` at
  0x101065f8). When the board index reaches the count (the `beq` at 0x10106554), the frame word is stored
  into `ddxNRequestedScreens` (0x10106650, 0x10106658) and the routine returns from 0x1010667c with v0
  holding the zero result of the index comparison.
  Unknown: the value in v0 at the return 0x1010667c on the path from the count test at 0x10106508, which
  the bundle lists as ?. Route: the last instruction that writes v0 before that return on that path.
  Evidence grade: inferred.
- `dgo_setup_fb_mode` in `usr/diags/IR/bin/irsaudit` at 0x10116ddc (n32).
  Inferred: the banner at 0x101b7a60 reads 'Configuring GVO into FB mode...', so the routine is
  the board-diagnostic step that switches the GVO output to framebuffer mode.
  The `vcWrite` call at 0x10116e38 takes a0=0x8400 and a1=0x800, and the `vcWrite` call at
  0x10116e88 takes a0=0x8000 and a1=0x1, with `dgo_wait` calls at 0x10116e78 and 0x10116e94
  around them.
  Inferred: the messages at 0x10116e60, 0x10116f18 and 0x10116f84 name DG5_POWER,
  DGO1_601_CTRL_SEL and DGO1_601_FBC_CTRL and print 0x8400, 0xc006 and 0xc104 as their last
  value, so those addresses are taken to be those registers.
  The `vcRead` at 0x10116ec8 and the `vcWrite` at 0x10116ee8 use 0xc006, with the written value
  taken from s7, which the instruction at 0x10116ed0 sets to -0x781, and `dgo_wait` at
  0x10116ef4 follows.
  The `vcRead` at 0x10116f2c and `vcWrite` at 0x10116f4c use 0xc104 in the same way, with the
  written value taken from s8, set to -0x1f at 0x10116f34, and `dgo_wait` at 0x10116f5c follows.
  The routine is one basic block with no branch, so no call result is tested, and the return at
  0x10116fa0 gives v0 = 0x0 whatever the calls returned.
  Unknown: what `vcWrite`, `vcRead`, `dgo_wait` and `csc_config` do beyond their argument lists,
  since no committed callee note covers them; `csc_config` is called once, with a0=0x1, at
  0x10116eac.
  Unknown: whether the `vcRead` results at 0x10116ec8 and 0x10116f2c reach the writes, since the
  writes take s7 and s8 and not a read result, and how the immediates 0x48a at 0x10116edc and
  0x7ff at 0x10116ee4 change the value written at 0x10116ee8; a fuller reading of those
  instructions would settle it.
  Evidence grade: inferred.
- `gedStressReorder` in `usr/diags/IR/bin/irsaudit` at 0x1007341c (n32).
  Inferred: the banners 'gedStressReorder():' at 0x10199478 and 'Done gedStressReorder():' at
  0x10199490 bracket one step of the board diagnostic, and the routine's own accesses are stack
  stores and stores into the block at 0x102c69f8.
  The `sw` stores from 0x10073470 to 0x10073520 write words into that block at offsets +0x1200 to
  +0x1238; those at 0x10073484, 0x10073490, 0x1007349c, 0x100734a4 and 0x100734ac write 0x53053,
  0x1, 0x100, 0xff and 0x2 to +0x1210, +0x1204, +0x1200, +0x1228 and +0x1224, and the rest write
  zero or a value built from the word at +0x1200.
  The routine at 0x100757ec is called at 0x10073498 with a0=0x100, a1=0x100, a2=0x1 and
  a3=0x53053, the routine at 0x100758b0 at 0x100734d8 with a3=0x2 and a4=0xff, and the routine at
  0x100759a0 at 0x10073540 with the words at +0x1210 and +0x1214.
  The routine at 0x100759f4 is called at 0x10073508 with the word at 0x102c7bf8 in a2 and a3, the
  routine at 0x1007594c at 0x10073528 with zeros, and the routine at 0x10075710 at 0x10073554 with
  arguments the tool cannot follow.
  Inferred: per the `waitBefDone` note, the last call at 0x1007358c polls the register at 0x238 for
  status bit 0x20 up to 99 times, so the routine ends by waiting on that poll.
  The 'Done' message at 0x10073578 is printed before the call to `waitBefDone`, and the return at
  0x100735a0 passes its v0 back unchanged.
  Unknown: what the routines at 0x100757ec, 0x100758b0, 0x100759f4 and 0x100759a0 do with the words
  they receive, since no committed callee note covers them and their register traffic is not in
  the bundle.
  Unknown: whether the block at 0x102c69f8 is a device register window or program data, since no
  linked mmio row or datasheet excerpt covers +0x1200 to +0x1238.
  Evidence grade: inferred.
- `gl_g_gversion` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec748f0 (o32).
  Inferred: the callee note for `gversionIoctl` says it builds the IrisGL version string for one 
  board, taking the destination buffer as argument 0 and the board index as argument 1, and this 
  routine passes its own argument 0 to that call, so it builds the version string into the 
  caller's buffer. It first calls `__iglooInitializeVersion` with its four entry arguments 
  (0xec74910), then calls `getenv` on the string whose pointer is in the cell at 0xecdd500 
  (0xec74924, 0xec74928). When `gl_sstatep` (0xecdfb9c) is nonzero and getenv returns null, it 
  passes the word at +0x1c of the structure that `gl_sstatep` points to, plus 0x104, to `strcpy` 
  with the buffer, then returns 0 (0xec74938, 0xec74950, 0xec74958, 0xec74960). When getenv 
  returns a value, it passes that value to `strncpy` with 0xb as the length, sets byte 0xb of the 
  buffer to zero, and returns 0 (0xec7497c, 0xec74990). Otherwise it calls `XOpenDisplay` with a 
  null name (0xec749a0); on a null result it calls `gversionIoctl` with the buffer and zero 
  (0xec749ac, 0xec749f0), and on a non-null result it calls `XDefaultScreen` and `XCloseDisplay` 
  and then `gversionIoctl` with the buffer and the default screen number (0xec749bc, 0xec749d4). 
  Every path returns 0 (0xec74a08). Unknown: the environment variable name, since the bundle 
  gives only the pointer loaded from 0xecdd500 and no string; the string at that pointer would 
  settle it. Unknown: what `__iglooInitializeVersion` writes into the buffer or returns, because 
  its body is not in this bundle; its own bundle would settle it.
  Evidence grade: inferred.
- `glxBindSwapBarrierSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xeb0830 (n32).
  Looks up a drawable from the word at +0xc of its second argument, makes sure a swap-group record
  exists for it, and sends two ioctl requests, 0x3f5 (at 0xeb0a48) and 0x3fb (at 0xeb0ac8), whose
  blocks are built from the +0xc and +0x10 words of that second argument.
  Inferred: 1013 and 1019 are the linked ioctl rows for 0x3f5 and 0x3fb, both filed under the graphics
  manager table, which is why these requests are read as graphics-manager calls.
  It calls `LookupDrawable` at 0xeb0888 with the +0xc word, the word at +0x2c of the first argument
  and 0x69014; if that returns zero it calls `LookupIDByType` at 0xeb08b4 with `__glXWindowRes`
  (0xf130c0), and on a zero result there it calls the unnamed routine at 0xeaf2f0 (`bgezall` at 0xeb08f0).
  When that returns zero, or the byte test below fails, the routine stores the +0xc word at +0x18 of the
  pointer at +0x2c of the first argument (`sw` at 0xeb0918 and 0xeb095c) and returns the word at
  `__glXBadDrawable` (0xf130cc); when it returns nonzero the routine returns 0 (0xeb0908).
  A drawable pointer found by either lookup (the second lookup takes the word at its +0x0, 0xeb08d4)
  is tested by reading the byte at the address it holds (`lbu` at 0xeb0934 and 0xeb0944): a byte of
  0 or 2 continues, and any other byte takes the store and `__glXBadDrawable` return above.
  The continuing path loads the word at +0x74 of the structure at +0x10 of that pointer into a frame
  slot (0xeb0974 to 0xeb0980) and calls `LookupIDByType` (the `jalr` at 0xeb0994) with
  `__glXSwapGroupRes`. A zero result calls `Xalloc`
  with 0x4 (0xeb09b8), zeroes the first word of the new record (`sw` at 0xeb09cc) and calls
  `AddResource` (0xeb09e4); when `AddResource` returns zero the routine calls `Xfree` (0xeb0a00) and
  returns 0xb.
  When the first word of the swap-group record is zero (the `bne` at 0xeb0a20), ioctl 0x3f5 is sent
  with a two-word block: the +0xc word and zero. A nonzero result returns `__glXBadDrawable`; a zero
  result stores 1 into the first word of the record (`sw` at 0xeb0a78).
  Ioctl 0x3fb then gets a three-word block at sp-72: the +0xc word; the +0x10 word minus one (the
  immediate -0x1 at 0xeb0a94) and 1 when the +0x10 word is nonzero (`beq` at 0xeb0a88), otherwise zero
  and zero. Both ioctls take their descriptor from the word at +0x64 of the structure in the frame slot
  loaded at 0xeb0a34 and 0xeb0ab4. A zero result returns 0; otherwise the routine returns 0x2 when
  `sym(errno)` is 0x10 or 0x25 (`beq` at 0xeb0aec and 0xeb0afc) and 0 for any other value.
  Unknown: which field the +0x18 word of the pointer at +0x2c is, and the content of the unnamed
  routine at 0xeaf2f0; the route is a reader of that field and a reading of 0xeaf2f0.
  Unknown: which setting the +0x10 word of the second argument selects, since here it only picks one
  of the two block shapes for ioctl 0x3fb; the route is the linked ioctl row's handler for 1019, which names none.
  Evidence grade: inferred.
- `glxJoinSwapGroupSGIX` in `usr/lib/X11/dyDDX/glx.so` at 0xeeddc0 (n32).
  Looks up drawables and resource ids from its two argument structures, registers 4-byte records
  under `__glXSwapGroupRes` when a lookup comes back empty, and sends ioctl requests whose words come
  from those structures.
  Inferred: the linked ioctl row numbers 1013 for 0x3f5 and places it in the graphics manager table,
  and no linked row covers 0x3f6.
  Its first lookup is `LookupDrawable` (0xeede18), fed by the word at +0xc of the second argument, the
  word at +0x2c of the first, and 0x2ba84; when that and a zero `LookupIDByType` on the word at abs
  0xf130c0 (`__glXWindowRes`, 0xeede44) both come back zero, the unnamed routine at 0xeaf2f0 is called
  (`jalr` at 0xeede80), and called again on the word at +0x10 of the second argument (0xeedea0) when
  it returns zero. A second zero stores the word at +0xc of the second argument at +0x18 of the
  pointer at +0x2c of the first (`sw` at 0xeedec4) and returns the word at abs 0xf130cc
  (`__glXBadDrawable`); a nonzero return from either call returns 0.
  A nonzero drawable or window result runs a byte test on the word the lookups left in the frame
  slot at +0x10 (`lbu` at 0xeedee0 and 0xeedef0): a byte of 0 or 2 continues, and any other byte
  takes the same store and `__glXBadDrawable` return (`sw` at 0xeedf08); the continuing path looks
  up `__glXSwapGroupRes` at 0xeedf40, and if that returns zero it calls `Xalloc` with 0x4 at
  0xeedf64, zeroes the first word of the result (`sw` at 0xeedf78), and calls `AddResource` at
  0xeedf90, where a failure calls `Xfree` (0xeedfac) and returns 0xb.
  When the word at +0x10 of the second argument is nonzero (`lw` at 0xeede04, tested by the `beq`
  at 0xeedfc8), the routine repeats the drawable and window lookups at 0xeedfdc and 0xeee008 with
  the same byte test and `__glXBadDrawable` return, then runs the same swap-group allocation at
  0xeee0ac, 0xeee0d0 and 0xeee0fc; when the word in that second record is zero (`lw` at 0xeee134)
  it issues ioctl 0x3f5 at 0xeee160 on a two-word block of the +0x10 word and zero, sets the record
  word to 1 on success (`sw` at 0xeee190), and returns `__glXBadDrawable` on failure.
  Otherwise, when the words at +0xc and +0x10 of the second argument differ (`bne` at 0xeee19c), it
  issues ioctl 0x3f6 when the +0x10 word is zero and 0x3f5 when it is not (`bne` at 0xeee1d4) on a
  two-word block of both words, stores the +0x10 word through the first record (`sw` at 0xeee234),
  and returns 0 whatever that ioctl returned; when the words are equal it returns 0 directly.
  Unknown: the target of request 0x3f6, which no linked ioctl row covers; an inventory row for it
  would settle this.
  Unknown: where the handle loaded from +0x64 comes from, given the loads at 0xeedf24 and 0xeedf28
  that feed it, and the content of the unnamed routine at 0xeaf2f0 on its nonzero return.
  Evidence grade: inferred.
- `glxVendorPrivate` in `usr/lib/X11/dyDDX/glx.so` at 0xee91d0 (n32).
  Makes no ioctl or register access of its own; it routes on the code word at +0x4 of the second
  argument to one of eight callees, and answers every other code without a call.
  Code 0x10002 goes to `glxCreateGLXVideoSourceSGIX` (`jalr` at 0xee946c), 0x10003 to
  `glxDestroyGLXVideoSourceSGIX` (0xee9494), 0x10005 to `glxCreateContextWithConfigSGIX` (0xee94bc),
  0x10006 to `glxCreateGLXPixmapWithConfigSGIX` (0xee94e4), 0x10008 to `glxDestroyGLXPbufferSGIX`
  (0xee950c), 0x10009 to `glxChangeDrawableAttributesSGIX` (0xee9534), 0x1000b to
  `glxJoinSwapGroupSGIX` (`bgezall` at 0xee955c), and 0x1000c to `glxBindSwapBarrierSGIX`
  (0xee9584).
  Codes 0xc and 0x10000 first call `glxLookupContextByTag` (0xee95b0 and 0xee93d0) on the word at
  +0x8 of the second argument; code 0xc then calls `glxSendVendorPrivateCommand` (0xee9608) when the
  lookup is nonzero, while code 0x10000 calls it (0xee944c) only when the pointer at +0x3c of the
  lookup result is nonzero and the byte it points to is zero (`beq` at 0xee941c, `bne` at 0xee9430);
  both return 0 once the send step is passed.
  When a lookup returns zero, the word at +0x8 of the second argument is stored at +0x18 of the
  pointer at +0x2c of the first argument (`sw` at 0xee93fc and 0xee95dc) and the routine returns the
  word at abs 0xf130d4 (`__glXBadContextTag`).
  Any other code stores the word at +0x4 of the second argument at +0x18 of the same pointer
  (`sw` at 0xee962c) and returns the word at abs 0xf130e4 (`__glXUnsupportedPrivateRequest`).
  Unknown: which protocol request each code in the table names, since no linked token or ioctl row
  covers these codes; the route is a reviewed datasheet or token row that names them.
  Unknown: the callees' handling of the pointers they receive, and which structure the +0x18 field
  of the pointer at +0x2c of the first argument belongs to; the routes are each callee's own entry
  and the owner of that structure.
  Evidence grade: established.
- `irixKernInit` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10124250 (n32).
  Inferred: the "Xsgi:" prefix on the messages at 0x1028e9f8, 0x1028ea80 and 0x1028eaf8 and the 
  strings '/dev/opengl' (0x1028e9e8), '/dev/gfx' (0x1028ea70) and 'GFX_ATTACH_BOARD ioctl failed' 
  (0x1028ea18) point to the X server's graphics driver opening the device nodes and attaching 
  each board. When the word cached at 0x102cc0dc differs from `serverGeneration`, it stores the 
  new value there and calls `AllocateScreenPrivateIndex` with its four arguments, returning 0 if 
  that call returns a negative value (0x10124274, 0x10124278, 0x10124288, 0x10124310, 0x10124314, 
  0x10124320); when argument 0 is nonzero and the word at 0x102d0bfc ANDed with t2 (set to 0x1 at 
  0x10124298) is nonzero, it passes the words at +0x90, +0x50, +0xd0 and +0x110 of the record at 
  0x102d0bb0 (`ddxActiveScreens`) to the pointers in arguments 3, 4, 5 and 6, and returns 1 
  (0x101242a8, 0x101242b4 to 0x101242c0, 0x101242f0). Otherwise it calls `open` on '/dev/opengl' 
  with flags 0x802 and `fcntl` with 0x2 and 0x5, then calls ioctl 103 (0x67) with a stack slot at 
  +0x4 holding the saved argument 2, or the word at RRMBOARDBASE (0x102cc0d4) when argument 2 is 
  zero; on a -1 return it logs the GFX_ATTACH_BOARD failure with `strerror`, then "boardnum = %d, 
  addr = 0x%x" with argument 1, and returns 0 (0x10124348, 0x10124364, 0x1012439c, 0x101243a0, 
  0x101243a8, 0x101245bc, 0x101245d8). Then it calls `open` on '/dev/gfx' with flags 0x802; a 
  negative result logs "Xsgi: /dev/gfx open failed" with `strerror` and returns 0 (0x101243c4, 
  0x101243cc, 0x1012454c). A -1 from ioctl 1000 (0x3e8) logs "rendering node open failed" and a 
  -1 from ioctl 1002 (0x3ea) logs "rendering node bind failed", each with `strerror`, and both 
  return 0 (0x10124400, 0x1012440c, 0x10124584, 0x10124434, 0x10124440, 0x1012460c). Before ioctl 
  111 (0x6f), `sprintf` fills a frame buffer with ':%s.%d' from `display` and argument 0 
  (0x10124464, 0x10124478); a -1 from that ioctl logs "GFX_LABEL failed, board %d has no label" 
  with argument 1 and the routine continues (0x10124484, 0x10124630). On the success path it 
  calls `shmiqLink` with `rrmEvent` at 0x101e9ff0 (0x10124498), stores its result and three other 
  registers into the record at 0x102d0bb0 at +0x50, +0x90, +0xd0 and +0x110 (0x101244bc to 
  0x101244d4), then branches to the common exit at 0x101242c4 (0x101244d8). Unknown: which values 
  the common exit stores to the argument pointers on this success path, because it stores 
  registers that the copy path sets from the record and this path sets from `shmiqLink`. Route: 
  the stores at 0x101244bc to 0x101244d4 and the loads that feed 0x101242c4. Unknown: which later 
  instruction takes the value that `getpagesize` returns at 0x10124418. Route: the instructions 
  after 0x10124418 that read the register v0. Unknown: the handling by `shmiqLink` of the address of 
  `rrmEvent`, since its callee note is empty. Route: read `shmiqLink` as its own bundle entry.
  Evidence grade: inferred.
- `jt_dump_internal_bist` in `usr/diags/IR/bin/irsaudit` at 0x10015df0 (n32).
  Inferred: the 'tcbist_' format strings printed by its cases show that the routine prints one line
  per command of a BIST sequence taken from the record it is given, and its own accesses are stack
  stores and loads from that record and from the block at 0x102c4340, with no linked mmio row.
  The word at +0x0 of the argument, loaded at 0x10015e08, returns at once when it equals 0x6 (branch
  at 0x10015e28), other values below 0x9 index the nine-entry jump table at 0x101741e0 through the
  `jr` at 0x10015e84, and values of 0x9 or more take the common path at 0x10015e54.
  The table targets print 'tcbist_hw_rst' at 0x10015e4c, 'tcbist_ctrl %d:%s' at 0x10015fd8,
  'tcbist_poll %d' at 0x10015eb8, 'tcbist_sw_rst' at 0x10015f8c, 'tcbist_expect' at 0x10015f18,
  'tcbist_sleep %d' at 0x10015f04, 'tcbist_comment %s' at 0x10015eec and 'tcbist_ram %d %s' at
  0x10015ed4, and the common path at 0x10015e54 prints nothing.
  The 'tcbist_ctrl' case calls `jt_unpack_vector` at 0x10015fac with the buffer at sp-8064, and the
  'tcbist_expect' case loops from 0x10015f30 to 0x10015f64 while the branch at 0x10015f60 finds s3
  below a1 (signed).
  Inferred: the `jt_unpack_vector` note says it expands packed bytes into ASCII 0 and 1 characters,
  so the buffer at sp-8064 holds a bit string that the 'tcbist_ctrl' line prints.
  Unknown: which field of the record each %d and %s operand comes from, since the loads from s0 at
  0x10015ebc through 0x10015f98 use a base register the tool does not trace back to the argument.
  Unknown: the device-side result of the 'tcbist_' commands, since no committed callee note or linked
  row covers them, and the target of the zero byte stored at 0x10015fd0, whose base a1 the tool does
  not follow.
  Unknown: the text the printf at 0x10015f78 prints from the string at 0x101741a0, which the bundle
  does not list, and whether the return at 0x10015ea8 gives a value, since v0 is not traced.
  Evidence grade: inferred.
- `jt_test_idcode` in `usr/diags/IR/bin/irsaudit` at 0x10166a70 (n32).
  Inferred: the message at 0x101dcd90 reads 'idcode mismatch on chip %s expected 0x%08x received
  0x%08x', and the callee notes describe a chain of chips shifted with instruction and data vectors,
  so the routine checks the idcode returned by one chip against an expected value and reports a
  mismatch through `jt_error`.
  It first calls `jt_powerup_chain` at 0x10166a98 with its four arguments unchanged, then creates a
  data vector with `jt_new_data_vector` at 0x10166aa8, fills it with 0xaa by `memset` at 0x10166adc,
  and sends it with `jt_send_data` at 0x10166af8.
  The count [a0+8] minus 1 is stored at 0x10166b0c and tested by `bltz` at 0x10166b14, which skips
  the loop when it is negative, and the path that reaches `jt_copy_bits` at 0x10166b84 copies 0x20
  bits into the buffer at sp-48, which `jt_vector_to_int` at 0x10166b98 turns into a word at sp-44.
  The `beq` at 0x10166bb0 jumps to 0x10166c80 when a2 equals a3, and the `jt_error` call at
  0x10166c6c passes the string at 0x101dcd80, 'jt_test_idcode', and the mismatch message at
  0x101dcd90.
  After the loop, `jt_dispose_vector` at 0x10166ca0 releases the vector, and the return at 0x10166cb8
  gives v0 from the frame slot at sp+0, loaded at 0x10166ca8.
  Unknown: which operand of the compare at 0x10166bb0 holds the value received from the chain and
  which holds the expected value, since the loads at 0x10166b40 through 0x10166bc0 use pointers the
  tool does not trace.
  Unknown: the chip name passed as %s, the expected value, and what v0 holds at the return, since
  those come from fields and frame slots the tool does not trace.
  Inferred: the routine's own accesses are stack slots, the argument record and the 0x102c4340 block,
  while the chain shifts run inside `jt_send_data` and `jt_powerup_chain`, which the callee notes
  describe as forwarding to an installed procedure and building a chain image, so the device traffic
  is not in this body.
  Evidence grade: inferred.
- `konasetmon` in `usr/gfx/setmon` at 0x1000a9c4 (n32).
  Inferred: the strings at 0x10038be8 ("The X Window System must be running in order to change
  combinations on the fly"), 0x10038b90 ("video combination %s not found") and 0x10038c38 ("Setting
  EXTERNAL genlock source") say this routine applies a named video format combination to a pipe
  through a running X server, with an external genlock source as one option. It copies its name
  argument into a local buffer with `strcpy` (0x1000aa18), compares the last characters of that copy
  with the suffix at 0x10042040 (".cmb") using `strcmp` (0x1000aa38), and appends the suffix with
  `strcat` (0x1000aa4c) unless the comparison matched. Inferred: the callee note for
  `pipenumToString` describes a kernel query for a pipe's board name, issued as request 102 on the
  descriptor in `gfxfd`; this routine maps the pipe number in `pipenum` to such a name before the
  display open at 0x1000aa84, and a zero from the mapping skips that open (0x1000aa78). It opens the
  display with `timeoutXOpenDisplay` on that name, sets `XSynchronize` to 1 (0x1000aaa0), installs
  the error handler at 0x1000a1f8 (0x1000aabc), and passes the display to
  `XSGIvcListVideoFormatCombinations` (0x1000aad8), whose result goes to `XFree` (0x1000aae4). An
  error at the lookup or the open sends control to the unnamed routine at 0x1000be44 (0x1000ab38);
  when that routine returns nonzero, the string at 0x10038b20 is printed and the routine exits with
  -1 (0x1000ab54, 0x1000ab60). Separately, a nonzero fourth argument together with a nonzero
  `getuid` result (0x1000ab00) leads to the string at 0x10038bb0 and an exit with -1 (0x1000ab18,
  0x1000ab24). On the path where `s2` is 1 (set at 0x1000aaa4) and the fourth argument is zero, a
  nonzero `genlockFlag` leads to the message at 0x10038c38 and a call to
  `XSGIvcSetScreenInputSyncSource` with 1 and -2 as its third and fourth arguments (0x1000ac78).
  Unknown: the list entry that the loop from 0x1000aaf0 matches the name against (via `strncmp` at
  0x1000ac00) before it loads the combination with `XSGIvcLoadVideoFormatCombination` (0x1000aba4,
  0x1000abdc), and which path prints the not-found string at 0x10038b90 (0x1000ae08, exit at
  0x1000ae14); the layout of the list that `XSGIvcListVideoFormatCombinations` fills is not in any
  callee note. Unknown: what `XSGIvcSetPlatformParameter` (0x1000ab90),
  `XSGIvcLoadVideoFormatCombination`, `XSGIvcSetScreenInputSyncSource` and the `saXSGIvc` routines
  in this binary at 0x10024a20, 0x10028d30 and 0x1002fbd0 change on the board; the bundle has no
  notes for those entries.
  Evidence grade: inferred.
- `loadVS2VOFFromData` in `usr/gfx/gfxinfo` at 0x1001b670 (n32).
  Issues `vs2WriteXilinxReg` with 0x20 as its third argument and 1 as its fourth before the loads
  (`jal` at 0x1001b6c0) and with 0 as its fourth after them (`jal` at 0x1001b724), and returns the
  value of the second call.
  Inferred: the committed note for `venice_loadsection_vs2_top` describes that routine as loading one
  video-input channel of a display board, which is why the middle call (`jal` at 0x1001b6e0) is read
  as loading video input.
  Between those writes, `venice_loadsection_vs2_top` (`jal` at 0x1001b6e0) receives arguments a0
  to a3 unchanged, and `venice_loadsection_vs2_body` (`jal` at 0x1001b700) receives the same four
  plus the sixth argument in a5.
  Unknown: which register `vs2WriteXilinxReg` writes when its third argument is 0x20 and its fourth
  is 1 or 0; no committed entry covers it, so a reading of that routine would settle it.
  Unknown: which words `venice_loadsection_vs2_body` writes through the pointer in its sixth
  argument, because the committed note for it is cut off before its write list ends; a complete note
  would settle this.
  Evidence grade: inferred.
- `loadVS2VOFFromData` in `usr/gfx/setmon` at 0x10015f14 (n32).
  Inferred: `venice_loadsection_vs2_top` is noted as loading one video-input channel of a
  RealityEngine display board and mirroring it into that board's shadow block; the routine calls it
  together with `venice_loadsection_vs2_body`, so the pair of calls below loads video-input sections
  of such a board from the caller's records. The first step is a call to `vs2WriteXilinxReg`
  (0x10015f64) with the caller's first two argument registers, 0x20 as the third and 1 as the
  fourth. Next come `venice_loadsection_vs2_top` on the first four argument registers (0x10015f84)
  and `venice_loadsection_vs2_body` on the same four, with the sixth argument register passed in the
  fifth slot (0x10015fa4). The last step is a second `vs2WriteXilinxReg` call (0x10015fc8) using
  0x20 and 0 as its third and fourth arguments, whose result the routine returns (0x10015fe0); no
  branch tests the earlier results. Inferred: per the body routine's note, a zero fourth argument
  leaves the word at +0xd40 of its sixth-argument pointer untouched and a nonzero one sets bit 0x40
  in it, so the fourth argument this routine receives controls that bit. Unknown: the Xilinx
  register that `vs2WriteXilinxReg` selects with 0x20 and 1 or 0 as the fourth argument; no note for
  that routine exists yet. Unknown: what the word at +0xd40 belongs to and whose pointer it is; the
  callers of this routine pass that pointer in, and the bundle has none of their notes.
  Evidence grade: inferred.
- `venice_dg2initEncoder` in `usr/gfx/gfxinfo` at 0x10017570 (n32).
  Calls `init_luts` with its four arguments (`jal` at 0x1001758c), then calls `write_encoder_reg` with
  0xa33b as its first argument (`jal` at 0x100175a4), and makes further `write_encoder_reg`,
  `read_encoder_reg` and `venice_set_vcreg` calls in an order chosen by the values it reads back; it
  returns the result of its last `write_encoder_reg` call, at the return (0x10017870).
  Inferred: the committed notes for `write_encoder_reg` and `read_encoder_reg` describe each as one
  register access to the video encoder through the board driver, using ioctl requests 10022 and
  10025 respectively, so this routine programs that encoder.
  It calls `read_encoder_reg` with 0x1f first (`jal` at 0x100175b4), and when that value is 0x32 or
  0x19 (`beq` at 0x100175e4 and 0x100175ec) it takes a separate path at 0x10017914 that makes its own
  `venice_set_vcreg` calls for 0xb400 to 0xb405 and writes 0xb406 and 0xe before the shared tail at
  0x10017748.
  Otherwise it calls `read_encoder_reg` with 0x16 and 0x17 (`jal` at 0x100175c8 and 0x100175d8) and
  picks one of three further `venice_set_vcreg` sets by comparing them with 0x618, 0x20d, 0x22b, 0x370
  and 0x320 (`beq` at 0x100175f4 and 0x10017600, `bne` at 0x1001760c, 0x10017618, 0x10017878 and
  0x10017904); each of these sets ends with `write_encoder_reg` calls for 0xb406 and 0xe (0x10017728
  and 0x1001773c), and the shared tail then writes 0x0 through 0xd as the first argument to
  `write_encoder_reg` with 0xff as its third argument each time (0x10017758 to 0x1001785c).
  Inferred: the committed notes say a -1 result from `write_encoder_reg` or `read_encoder_reg` prints
  an error and exits, so this routine never resumes after such a failure.
  Unknown: whether `init_luts` changes any state that the later encoder accesses read, since its
  four arguments are passed through and no committed entry says what it writes.
  Unknown: what `venice_set_vcreg` stores for each first and second argument pair from 0xb400 to
  0xb406; no committed entry describes it.
  Evidence grade: inferred.
- `venice_dg2initVof` in `usr/gfx/gfxinfo` at 0x100179c0 (n32).
  Inferred: the callee notes say `venice_loadsection_dg2_top` loads the video-output part of a
  display-generator format and `venice_loadsection_dg2_body` programs a display-generator format
  into a RealityEngine board, which points at this routine feeding such a format for a DG2 board
  from the EEPROM copy in `ven_eeprom` or from the default file named at 0x10026cb8. With
  `ven_eeprom_valid` (read at 0x100179dc) at zero, the branch at 0x100179ec lands on 0x10017b1c,
  where the fprintf at 0x10017b34 prints the string at 0x10026c68 before control reaches the default
  file load at 0x10017a48. Otherwise the word at `VEN_info` +0x50, read by the `lw` at 0x100179f4,
  decides: zero sends control down the section path, which invokes, at 0x10017ac4, `venice_loadsection_dg2_top` on `ven_eeprom` +56 and, at 0x10017ad8, `venice_loadsection_dg2_body` on `ven_eeprom` +124
  and never reaches `loadVS2ModeDG2VOF`. Inferred: a nonzero result from `loadVS2ModeDG2VOF` (tested
  at 0x10017a18) or from either section load means the EEPROM load failed, as the string at
  0x10026c48 reads, so that path stores zero to `ven_eeprom_valid` (the `sw` at 0x10017a38) and prints the
  string. The default path invokes `venice_loaducode` (0x10017a78) with `ven_pipenum`, the string at
  0x10026cb8, and 0, 0, 1, 1 and 0 in the remaining argument registers; a negative result leads to
  the string at 0x10026cd0 being printed (0x10017b4c). Every path ends by calling `venice_set_vcreg`
  with 0xaf00 as the first argument, the word at `vof_clock_value` as the second and 0 as the third
  (0x10017a94, 0x10017b00 or 0x10017b70), then calls `sginap` with 2 and returns at 0x10017ab8.
  Unknown: the register that `venice_set_vcreg` selects from 0xaf00, and the value in the word at
  `vof_clock_value`; the `venice_set_vcreg` entry and the writers of `vof_clock_value` are the way
  to pin them.
  Evidence grade: inferred.
- `vs2GetHphaseShadow` in `usr/gfx/gfxinfo` at 0x1001990c (n32).
  Inferred: the only callee is `vs2GetShadow`, whose note (the copy in `usr/gfx/setmon`) says it
  reads the display-board shadow block through ioctl request 10031; this routine therefore returns
  two bytes of that block to its caller. Its single call at 0x10019934 receives `a0`, `a2` and `a3`
  exactly as they came in, plus `a1` pointed at a buffer at the bottom of the 112-byte frame. Once
  the call returns, `lbu` at 0x10019940 loads one byte from offset 0xd of the buffer and `sw` at 0x10019944
  writes it as a word through the caller's `a1`. A second byte, at +0x6, goes through `lbu` at
  0x10019954 and `sw` at 0x1001995c into the word the caller's `a2` points to. Nothing tests the
  result of `vs2GetShadow`, and the routine returns zero at 0x10019960 whatever that call gave.
  Unknown: which shadow-block fields sit at +0xd and +0x6; a field table for that block is needed,
  and no datasheet excerpt in this bundle gives one. Unknown: whether those bytes are valid when
  `vs2GetShadow` fails on a Kona pipe, as its callee note says it does; a Kona run that logs that
  call's return value is the way to check.
  Evidence grade: inferred.
- `vs2GetHphaseShadow` in `usr/gfx/setmon` at 0x100141b0 (n32).
  Inferred: `vs2GetShadow` at 0x100140ec, documented in this binary's note, reads a display-board
  shadow block from a connection record and a buffer, so the two byte fields this routine returns
  come out of that block through its second and third arguments. The scratch area is the bottom of
  the 112-byte frame, handed over in `a1` by the call at 0x100141d8, while `a0`, `a2` and `a3` go
  through unchanged. The byte at offset 0xd of that area is read by `lbu` at 0x100141e4 and written as a
  word by `sw` at 0x100141e8 through the original `a1`. The last store, `sw` at 0x10014200, writes
  the byte at +0x6 (read by `lbu` at 0x100141f8) as a word through the original `a2`. The return at
  0x10014204 hands back zero, and no branch in the routine looks at what `vs2GetShadow` returned.
  Unknown: the fields behind +0xd and +0x6 of the shadow block; no field layout for that block
  appears in this bundle. Unknown: whether the two bytes are valid when the call returns -1, the
  case where the callee note says the `perror` path returns that value; a run that logs that return
  is the check.
  Evidence grade: inferred.
- `xmap_jtag_id` in `usr/diags/IR/bin/irsaudit` at 0x10139fa0 (n32).
  Inferred: the banner 'xmap %d jtag id is %x' at 0x101c0708 and the errors naming the DG scan chain
  and an 'idcode' mode show that the routine selects a chain, puts one xmap chip into idcode mode,
  reads back its id word and prints it.
  It first sends 'in xmap_jtag_id' (0x101c0620) to `kt_output_dbug` with 4 (the `jal` at 0x10139fd8).
  If the word at +0xf7c of the record that `KONAINFO` points to is zero, the branch at 0x10139ff4
  goes to 0x1013a0e8, which prints 'ERROR: unable to find DG scan chain.' at 0x1013a104 and 'ERROR:
  has the sysprobe been called yet?' at 0x1013a11c, and returns -1.
  Otherwise `jt_select_chain` is called at 0x1013a004 with the word at +0x4 of the pointer stored at
  +0xf7c, and a nonzero return prints 'ERROR: unable to select %s chain...' at 0x1013a030 and returns
  -1 at 0x1013a038.
  On success, `jt_isolate_chip` is called at 0x1013a08c with the string 'idcode' at 0x101c06b0 and
  an entry of the table at 0x1020fb98 chosen by the xmap number in a0, and a return of -1 prints 'ERROR: unable to set %s in idcode mode.' at
  0x1013a1f4 and returns -1.
  Next, `jt_new_data_vector` is called at 0x1013a0ac; its a3 shows -0x1 only because the return test at
  0x1013a098 compared against that constant, and no instruction sets a3 for the call. A zero result prints 'ERROR:
  unable to create idcode vector.' at 0x1013a0d8 and returns -1.
  A nonzero vector goes through `setSubField` at 0x1013a148 with a2=0x754, `jt_send_data` at
  0x1013a164 and `getSubField` at 0x1013a188 with its output at the frame's offset 0; the word there
  is printed as the id at 0x1013a1b0 and passed out as v0 by the branch at 0x1013a1d0.
  The print at 0x1013a1b0 runs first, and then `jt_dispose_vector` at 0x1013a1c4 frees the vector;
  the other paths return -1 from 0x1013a038, 0x1013a0e4, 0x1013a128 and 0x1013a200.
  Unknown: which field the value 0x754 selects in `setSubField` and `getSubField`, since no callee
  note covers those arguments.
  Evidence grade: inferred.
