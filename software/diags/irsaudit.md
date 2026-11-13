# The IR diagnostic: `irsaudit` function reference

Sources: `usr/diags/IR/bin/irsaudit` (6.5.30m) with its symbols, its option help and its message strings. `irsaudit` is the InfiniteReality diagnostic: it runs one named test or a board's whole set against a pipe, reports PASS or FAIL with the lines "CODE", "INFO", "TRCE", "TIME", "META" and "RSLT", and can write and compare CRC logs. This page groups its functions by role. **Inferred** throughout, from the names, the option help text and the neighbouring documents; a name is listed under the group its prefix and its callers point to, and only the functions the other documents cite ([hip.md](../../devices/hip/README.md), [ge.md](../../devices/ge/README.md), [rm.md](../../devices/rm/README.md), [dg.md](../../devices/dg/README.md), [ucode/ge_ops.md](../../ucode/ge_ops.md)) were read in detail. Where a test's expected values were read, they are in those documents.

- `TEST_gvo_vocspreg` (`usr/diags/IR/bin/irsaudit` 0x100a9a08): **Established.** The 1112-byte test requires the GVO board and option state at +0xdbc and +0xfb4, builds a special-register record through the chain helper at 0x100a9a94, and seeds its expected values at offsets 0 and 8 (stores at 0x100a9b00 and 0x100a9b1c). It invokes the checker at 0x100a9b24, replaces the expected value at 0x100a9bd4 on the alternate result, and reports the comparison and disabled-board paths through the callbacks at 0x100a9c00 and 0x100a9c34.

- `TEST_dvp_vocreg` (`usr/diags/IR/bin/irsaudit` 0x100a6a74): **Established.** This 1064-byte DVP register test checks +0xdbc and +0xfb4, initializes the expected record with the observed words at offsets 0x10, 0x14 and 0x18 (stores at 0x100a6b88, 0x100a6b6c and 0x100a6b84), and runs the register checker at 0x100a6b90. It increments the local failure count after a mismatch and emits the missing-board and mismatch messages before returning the accumulated status.

- `enable_voc_crc` (`usr/diags/IR/bin/irsaudit` 0x101359e0): **Established.** The 1060-byte routine stores the caller's enable value in the VOC state at offset 0xa0 (`sw` at 0x10135a74), selects the board's VOC register record through the indirect call at 0x10135ac4, and saves the returned state pointer back at +0xa0 (`sw` at 0x10135ae8). It then programs the CRC control sequence through the helpers at 0x10135afc, 0x10135b7c, 0x10135bc0 and 0x10135c2c, reporting the final status through the diagnostic callback.

- `TEST_tvo_vocreg` (`usr/diags/IR/bin/irsaudit` 0x100a7298): **Established.** The 1020-byte TVO register test checks the board, enable count and option state, initializes a three-word expected record at offsets 0x10, 0x14 and 0x18 (stores at 0x100a737c, 0x100a7374 and 0x100a7388), and invokes the checker at 0x100a7390. It records the returned status at the record base (`sw` at 0x100a7408), compares the observed count at +0xfb8, and routes absent, disabled and mismatch cases through their distinct diagnostic callbacks.

- `TEST_dvp_vocspreg` (`usr/diags/IR/bin/irsaudit` 0x100a9e60): **Established.** The 1000-byte DVP special-register test requires the same board and option words, initializes a two-word expectation at offsets 0 and 8 (stores at 0x100a9f18 and 0x100a9f50), and calls the special-register checker at 0x100a9f58. It records the checker result at the record base (`sw` at 0x100a9fd8), reports the observed value through the diagnostic callback at 0x100aa048, and returns the recorded failure count.

- `TEST_vocreg` (`usr/diags/IR/bin/irsaudit` 0x100a61f8): **Established.** The 988-byte base VOC register test initializes the result word to zero at 0x100a62ec, fills expected values at offsets 0x10, 0x14 and 0x18 (stores at 0x100a6338, 0x100a6330 and 0x100a6344), and invokes the common checker at 0x100a634c. It records the observed status at the result base (`sw` at 0x100a63c4), compares the board's value at +0xe48, and sends the mismatch and disabled paths to the diagnostic callbacks.

- `vdGetVocCrcs` (`usr/diags/IR/bin/irsaudit` 0x10136618): **Established.** The 988-byte routine saves the current VOC state pointer in the scratch record at +0xa0 (`sw` at 0x10136680 and 0x101366f4), selects the board record through the indirect call at 0x101366d0, and reads the requested CRC words through the helper calls at 0x10136788, 0x101367a8 and 0x10136800. It returns the generated values through the caller's output record after restoring the saved registers.

- `TEST_pab2vocreg` (`usr/diags/IR/bin/irsaudit` 0x10080998): **Established.** This 980-byte PAB2 VOC test selects one of the two board workspaces at +0xf84 or +0xf88, clears its result word at 0x10080a88, fills expected values at offsets 0x10, 0x14 and 0x18 (stores at 0x10080ab0, 0x10080aac and 0x10080aa8), and runs the checker at 0x10080ab8. It records the returned value at the workspace base (`sw` at 0x10080b28), checks the board count at +0xfb8, and reports the selected workspace's failure state.

- `TEST_tvo_vocspreg` (`usr/diags/IR/bin/irsaudit` 0x100aa5fc): **Established.** The 948-byte TVO special-register test initializes the result record at offsets 0 and 8 (stores at 0x100aa698 and 0x100aa6d0), calls the special-register checker at 0x100aa6d8, and stores its result back at the record base (0x100aa748). It compares the option count at +0xfb8 and reports absent, disabled and mismatching states through the diagnostic callbacks before returning.

- `vdInitVocCrcs` (`usr/diags/IR/bin/irsaudit` 0x10136264): **Established.** The 948-byte initializer stores the selected VOC state in the scratch record at +0xa0 (`sw` at 0x101362c4 and 0x10136338), selects the board's CRC record through the indirect call at 0x10136314, and initializes it with the helpers at 0x1013634c, 0x101363cc and 0x101363ec. It then clears and seeds the CRC fields through the callbacks at 0x1013641c, 0x10136448 and 0x10136460.

- `TEST_pab2vocspreg` (`usr/diags/IR/bin/irsaudit` 0x100815ac): **Established.** The 924-byte PAB2 special-register test selects the board workspace, clears its result word at 0x1008168c, initializes the expectation at offsets 0 and 8 (stores at 0x100816a4 and 0x100816ac), and calls the checker at 0x100816b4. It records the returned result at the workspace base (`sw` at 0x10081724), checks the board count at +0xfb8, and reports comparison failures through the final diagnostic path.

- `TEST_vocspreg` (`usr/diags/IR/bin/irsaudit` 0x100a9680): **Established.** The 904-byte base VOC special-register test initializes its result record at offsets 0 and 8 (stores at 0x100a9770 and 0x100a97b0), invokes the checker at 0x100a97b8, and records the returned status at the record base (`sw` at 0x100a9828). It compares the expected board value at +0xe48 and reports the mismatch and disabled paths before returning.

- `unscramble_ge_boardId` (`usr/diags/IR/bin/irsaudit` 0x1008cbd8): **Established.** The 856-byte routine reads the encoded GE board word at record offset +0x68 (`lw` at 0x1008cbdc), passes successive bit fields through the decode helper at 0x1008cc68 and 0x1008ccac, and writes the decoded result to +0x74 (`sw` at 0x1008cdc0). It preserves the shared diagnostic word at the pointer loaded by 0x1008cd4c, reports the decoded fields, and returns through the saved-register epilogue.

- `vdLoadVocIwsc` (`usr/diags/IR/bin/irsaudit` 0x10136bc4): **Established.** The 840-byte loader reads the requested format fields at offsets 0x10, 0x14, 0x18, 0x20, 0x24 and 0x28, writes them into the VOC state record at offsets 0xc, 0x10 and 0x14 (stores at 0x10136d38, 0x10136d8c, 0x10136dc8 and 0x10136e50), and applies each derived timing value through `vdWaitForVocPllInterface` at 0x10136d2c, 0x10136dbc and 0x10136e48. A missing or invalid format follows the diagnostic error path before returning.

- `unscramble_dg_boardId` (`usr/diags/IR/bin/irsaudit` 0x1008cf30): **Established.** The 828-byte routine reads the encoded DG board word at +0xf78 (`lw` at 0x1008cf38), decodes its fields through the helpers at 0x1008cfcc and 0x1008d008, and stores the decoded board value at +0xe2c (`sw` at 0x1008d0cc). It preserves the shared diagnostic word through the load/store at 0x1008d058 and 0x1008d070, reports the decoded fields, and returns after restoring the saved registers.

- `aaspoke` (`usr/diags/IR/bin/irsaudit` 0x1010274c): **Established.** The 2956-byte body initializes the diagnostic state through the call at 0x10102784, sends raster-bus words through the register writer at 0x101027fc, 0x1010287c, 0x101028ac, 0x101028d8, 0x10102910, 0x10102964, 0x101029b8, 0x101029e0, 0x10102a0c, 0x10102a34 and 0x10102b04, and updates the 64-bit shadow fields at offsets 0x4030, 0x4038, 0x4040, -0x178, -0x1f0, -0x1e8 and -0x1ff0 (stores at 0x1010289c, 0x101028c8, 0x101028fc, 0x1010292c, 0x10102950, 0x10102980, 0x101029a4, 0x101029c8, 0x101029f8, 0x10102a20 and 0x10102a64). It then emits the remaining command sequence and returns through the saved-register epilogue.

- `TEST_rmcrctex_comp` (`usr/diags/IR/bin/irsaudit` 0x100d0948): **Established.** The 1692-byte test gates on the selected raster state, clears the diagnostic work record, waits for host FIFO offset 0x208 through the reads at 0x100d0ab0 and 0x100d0ae0, and submits ioctl 0x2775 with count one at 0x100d0b28. It runs the texture CRC comparison chain through the calls at 0x100d0c00 and 0x100d0c34, advances the per-test records by four bytes at 0x100d0c9c-0x100d0ca8, and reports each failure before restoring the ioctl state at 0x100d0c7c.

- `gedStressTd` (`usr/diags/IR/bin/irsaudit` 0x10074ba4): **Established.** The 1644-byte stress test fills a table beginning at the record selected by the load at 0x10074c3c with incrementing words (stores at 0x10074c20 and 0x10074d5c), emits command words 1, 9, 0x282 and 0x283 through calls at 0x10074c00-0x10074c74, and checks the returned values with the helper at 0x1013f830. It writes the six-word test result at offsets 0, 4, 8, 0xc, 0x10 and 0x14 (stores at 0x10074f1c, 0x10074f30, 0x10074f40, 0x10074f4c, 0x10074f60 and 0x10074f68), then submits the result with tokens 1, 9, 0x240, 0x241 and 6 at 0x10074f6c-0x10074fbc.

- `TEST_texobjdetail` (`usr/diags/IR/bin/irsaudit` 0x1012d828): **Established.** This 1612-byte test accepts texture-detail modes one, two and four, waits for FIFO offset 0x208 at 0x1012d97c and 0x1012d9a8, and submits ioctl 0x2775 at 0x1012db0c. The normal path calls the detail checker at 0x1012db54, records a zero in the texture state at offset 0x269c (`sw` at 0x1012dadc), and reports a failed checker through the diagnostic result path at 0x1012db80; unsupported modes use the error path at 0x1012d898.

- `TEST_rmcrctri_comp` (`usr/diags/IR/bin/irsaudit` 0x100cf718): **Established.** The 1564-byte test gates on raster state, waits for host FIFO offset 0x208 at 0x100cf878 and 0x100cf8a4, and submits ioctl 0x2775 at 0x100cf8f0. It builds the triangle CRC descriptors through calls at 0x100cf95c, 0x100cf9a8, 0x100cfa70, 0x100cfab4 and 0x100cfb58, stores the active descriptor pointer at workspace offset 0x18bc (`sw` at 0x100cfa78), and reports a nonzero comparison before restoring the pipe state.

- `vdLoadVocClockParams` (`usr/diags/IR/bin/irsaudit` 0x10134320): **Established.** The 1512-byte routine converts the requested clock values, loads the resulting records into the option-video state at offsets 0xd8, 0x138, 0x168, 0x198 and 0x1c8 (calls at 0x10134404, 0x101344f0, 0x1013457c, 0x10134604 and 0x101346b8), and iterates the selected parameter list through `vdWaitForVocPllInterface` at 0x101347dc and 0x10134830. A zero parameter count skips the loop; the final path reports the request status through the diagnostic callback at 0x101348ec.

- `TEST_texdetail` (`usr/diags/IR/bin/irsaudit` 0x10125d54): **Established.** The 1508-byte test gates on texture mode, waits for FIFO offset 0x208 at 0x10125e94 and 0x10125ec0, then submits ioctl 0x2775 through the indirect call at 0x10125fd0. It clears the texture state word at offset 0x2608 (`sw` at 0x10125fa0), runs the detail check at 0x10126018, and reports the returned failure count through the result callback at 0x10126044; the cleanup branch restores the pipe state and returns the recorded status.

- `TEST_rm_intbist` (`usr/diags/IR/bin/irsaudit` 0x100830b0): **Established.** The 1304-byte raster-manager test creates and initializes the chain descriptor through calls at 0x100830ec, 0x10083154 and 0x1008316c, records the selected chip result through the helper at 0x10083234, and runs the internal BIST twice through `jt_execute_internal_bists` calls at 0x100834d4 and 0x1008351c when the first result is nonzero. It accumulates failures in the word loaded from the test record, reports them at 0x10083330 and 0x10083584, and returns through the final diagnostic-result call.

- `gedSequencer` (`usr/diags/IR/bin/irsaudit` 0x10075210): **Established.** The 1280-byte routine initializes a GE diagnostic descriptor, emits the setup sequence 1, 9, 0x282, 0x283 and zero through calls at 0x100752b0-0x100752e0, and writes the generated six-word record at offsets 0, 4, 8, 0xc and 0x10 (stores at 0x10075420-0x10075438). It then emits 1, 9, 0x240, 0x241, zero and 5 at 0x10075434-0x10075478, loads the GE test selections 0x284-0x28b and 0x29d/0x2a5 at 0x100754c4-0x10075564, and finishes through the result callback.

- `TEST_texfmt` (`usr/diags/IR/bin/irsaudit` 0x10124060): **Established.** The 1276-byte test accepts texture modes one, two and four, waits for FIFO offset 0x208 at 0x101241b4 and 0x101241e0, and submits ioctl 0x2775 at 0x10124228. It runs the four format checks at 0x1012427c, 0x101242cc, 0x1012431c and 0x1012436c, increments the failure count after each nonzero result, and restores the ioctl state through the indirect call at 0x101243d8 before returning the accumulated status.

- `TEST_dgopt_intbist` (`usr/diags/IR/bin/irsaudit` 0x10082be8): **Established.** The 1192-byte option-display-generator test selects a chain workspace from the board state at +0xfb4, marks the shared status word at offset zero (`sw` at 0x10082d90), and initializes the selected chain through calls at 0x10082ca4, 0x10082cd0 and 0x10082cf0. It allocates the BIST result buffer with the helper at 0x10082e40, runs the test through the call at 0x10082dcc, accumulates its return value at 0x10082dec, and reports a nonzero final status through the diagnostic callback before restoring the saved registers.

- `TEST_gvo_vocreg` (`usr/diags/IR/bin/irsaudit` 0x100a65d4): **Established.** The 1184-byte graphics-video-option register test requires the option state at +0xdbc and +0xfb4, selects the VOC chain through the call at 0x100a665c, and initializes an expected record whose status starts at 0xc6 (`sw` at 0x100a66cc). It checks the record with 0x100a6704, increments the status at 0x100a6778 for a mismatch, reloads the special-register expectation through 0x100a67a4, and reports missing board, disabled channel or failed comparison through the separate callbacks at 0x100a6928, 0x100a6998 and 0x100a6a00.

- `TEST_rmcrctri1` (`usr/diags/IR/bin/irsaudit` 0x100d00d8): **Established.** The 1172-byte triangle CRC test waits for host FIFO offset 0x208 at 0x100d021c and 0x100d024c, submits ioctl 0x2775 at 0x100d0294, and runs the component tests through `crc_pgtest` at 0x100d02c0, `crc_pgtest1` at 0x100d0314, the triangle helper at 0x100d0348 and the comparison helper at 0x100d0380. Each nonzero result increments the local failure count, which is reported before the pipe state is restored; unsupported mode and ioctl failure return through their diagnostic paths.

**Established** (option help). The test groups on the command line are `-ge`, `-rm`, `-dg`, `-pab` (second pixel-assembly board), `-gvo` (graphics video option), `-dvp`, `-ddo` and `-ddo2` (digital display options), `-dplex` and `-ddo3` (the multi-pipe display option), `-tvo` (TV output option) and `-conn` (connectivity); `PIPE=n` selects the pipe and `-gemask` the geometry engines. The settings `FORCE_TEX_MEM`, `TEX_MEM_STEP_SIZE`, `DDC_CHANNEL`, `XMAP_CLK`, `XG_REQ`, `SET_HUB_WAR`, `CLRCOLOR`, `DGOFBMODE`, `FORCE_DPLEX` and `OPTVIDEO_MODE` tune individual tests.

## Function readings from the shipped diagnostic

- `tbuGenPattern` (`usr/diags/IR/bin/irsaudit` 0x1014ffe8): **Established.**
  The 8536-byte routine initializes the caller's pattern record, allocates a
  16-byte-per-element buffer with the product of its two dimensions at
  0x10150054, and records the allocation and derived power-of-two dimensions
  at offsets 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x80 and 0x8c (`sw` at 0x1015005c, 0x10150060, 0x10150064, 0x101500b0, 0x101500c4, 0x101500d8, 0x101500e0, 0x101500f8, 0x10150104 and 0x10150110). A pattern selector below 0x23 dispatches through the table
  loaded at 0x1015011c; the fallback calls the pattern helper at 0x10150154.
  Selected handlers fill records with four-word samples (the stores at
  0x1015020c, 0x10150218, 0x10150220 and 0x10150228), then return through
  the common epilogue at 0x101501a4. (`usr/diags/IR/bin/irsaudit`, 6.5.30m.)

- `probe_rm7_rm8_chain` (`usr/diags/IR/bin/irsaudit` 0x10050834): **Established.**
  Its 13796-byte body allocates a 0x370-byte chain record at 0x10050878 and
  returns 1 after allocation or initial chain validation fails (the exits at
  0x100508bc and 0x10050968). It builds the scan descriptor on the stack
  through the indirect call at 0x10050920, checks it at 0x10050934, reads the
  board identifier through 0x10050a18, and dispatches identifiers 0x69, 0x109,
  0x99, 0xb9 and 0x49 at 0x10050a3c-0x10050a68. For a recognized raster-board
  chain it records state at offsets 0x444 and 0x18c and increments the board
  count at +0x16c (`sw` at 0x10050b7c, 0x10050b88 and 0x10050b94), then walks
  chip/register descriptors through the repeated helpers at 0x10046d74,
  0x10059ecc, 0x1004bf24, 0x101647c4, 0x10166e60 and 0x10166a70.
  (`usr/diags/IR/bin/irsaudit`, 6.5.30m.)

- `tbuGenPattern3D` (`usr/diags/IR/bin/irsaudit` 0x10152140): **Established.**
  The 5208-byte routine marks the caller's record as three-dimensional with
  `sw` at 0x101521b4 writes 2, computes the element count from three dimensions,
  allocates a 16-byte-per-element buffer at 0x101521c0, and saves it at +0x8c
  (`sw` at 0x101521c8). It derives log2 dimensions and masks into +0x68,
  +0x6c, +0x70, +0x74, +0x78 and +0x7c (`sw` at 0x10152214, 0x1015223c, 0x10152264, 0x10152284, 0x10152290, 0x1015229c). Selectors below 0x1c
  use the table indexed at 0x101522a8; other selectors use the fallback
  helper called at 0x101522e0. The normal path returns at 0x10152330.
  (`usr/diags/IR/bin/irsaudit`, 6.5.30m.)

- `vdLoadManRequest` (`usr/diags/IR/bin/irsaudit` 0x10136f0c): **Established.**
  Its 3860-byte body validates the current video request, initializes request
  state, and loads the selected format data through `vdLoadVocIwsc` at
  0x10137088. It packs fields from the request record at +0x34, +0x3c, +0x40,
  +0x44, +0x48, +0x4c and +0x6c into a display-request word, masking and
  shifting them at 0x101379cc-0x10137a68, writes the companion word at +4 of
  the request buffer (`sw` at 0x10137a70), and submits the assembled value
  through the request helper at 0x10137b38. It stores the result at +0x110 of
  the state record (`sw` at 0x10137b54) and returns it at 0x10137b5c. Special
  request codes checked at 0x10137a7c-0x10137a9c may set bit 0x400 in display
  state and save it at +0x23c (`sw` at 0x10137b98).
  (`usr/diags/IR/bin/irsaudit`, 6.5.30m.)

- `crc_pgtest` (`usr/diags/IR/bin/irsaudit`): **Established.** The complete body starts at 0x100d47d4 and occupies 7684 bytes. It initializes the selected raster-manager test context, then sends the test's control words through the register writer: token 0x1c00 is written at 0x100d48cc and 0x100d4970, token 0x1c03 at 0x100d4a8c, 0x100d4ab8 and 0x100d4ae8, and token 0x1c0b at 0x100d4b54. The setup masks and sets bits in the selected context before each write, and the later branches call the pixel/texture test helpers and return their recorded diagnostic result; an unsupported or failed setup follows the existing error-reporting path.

- `Load_GED_Ucode_Flush` (`usr/diags/IR/bin/irsaudit`): **Established.** Its 364-byte body begins at 0x1014022c. It programs internal GE-download selections 0x200, 0x201, 0x212 and 0x213 with values 0x3f, 4, 0x3f and the caller's argument through the helper calls at 0x10140268, 0x10140278, 0x10140288 and 0x10140298, clears selection 0x2b0 three times at 0x101402a8, 0x101402b8 and 0x101402c8, and then calls `Get_GED_Fetch_Inst` and `Get_GED_Release_Inst` at 0x101402dc and 0x101402fc. It stores the two returned words in the caller's record at offsets 0 and 4 (stores at 0x10140300 and 0x10140314), emits FIFO words 1, 9, 0x240, 0x241, the first returned word and 2 at 0x10140318, 0x10140324, 0x10140330, 0x1014033c, 0x10140348 and 0x10140354, and repeats the first returned word for two iterations at 0x10140364.

- `tbuEnableFog` (`usr/diags/IR/bin/irsaudit`): **Established.** The 1540-byte routine starts at 0x101442b0 and branches on the texture-state word at offset 0xd7c (load at 0x101442f0). On one path it rewrites the shadow word at `s2-24552` (store at 0x1014435c), keeping the low 16 bits and inserting the caller's mode in the shifted field, and sends token 0x1403 through `tbRegWrite` at 0x10144358. The trace at 0x1014438c is a `fprintf` call that runs when the board-state word at `s0+4` is nonzero. On the other path it marks offset 0xd7c with one (store at 0x101443e4), clears the low four bits of the shadow word (store at 0x101443ec), and stores the shadow word again at 0x10144444. It writes tokens 0x1414 at 0x101445e4, 0x1404 at 0x10144678 and 0x1405 at 0x10144710 through `tbRegWrite`, and prints through `fprintf` at 0x10144420, 0x10144470, 0x101444b0 and 0x1014487c. The routine returns through its saved-register epilogue.

- `tbuBindCubeMap` (`usr/diags/IR/bin/irsaudit`): **Established.** This 1200-byte body begins at 0x1014a5fc. It enables the cube map with `tbuEnableCubeMap` (call at 0x1014a664), writes register tokens 0x1016 at 0x1014a6b0, 0x1017 at 0x1014a748 and 0x1014a7b4, 0x1018 at 0x1014a834 and 0x1014a894, and 0x1021 at 0x1014aa4c through `tbRegWrite`, and prints the face records through `fprintf` at 0x1014a778, 0x1014a7e8, 0x1014a868 and 0x1014a8c8. It writes command token 0x3fd5 at 0x1014a914 and token 0x13d5 at 0x1014a9f8 through `tbRegWrite`, and binds the texture with `tbuBindTextureCCT` (call at 0x1014a8e0).

- `TEST_hippio` (`usr/diags/IR/bin/irsaudit`): **Established.** Its 1032-byte body starts at 0x100769e0. It resets HIP control offset 0x320 to zero at 0x10076a50, writes one to 0x308 at 0x10076a60, writes 0x200098 to 0x3e8 at 0x10076a74, writes one to 0x3f0 at 0x10076a84, writes -1 to 0x390 at 0x10076a94 and writes -1 to status offset 0x238 at 0x10076ac0. It then fills and checks the test vectors, reads the result through the 32-bit PIO reader at 0x10076d18, reports mismatches through the diagnostic record, and returns the accumulated test status after restoring the HIP state.

- `tbuLoadTLut` (`usr/diags/IR/bin/irsaudit`): **Established.** The complete 728-byte routine begins at 0x10154768. It clears the texture-LUT shadow field to a 0x400-aligned value and writes command token 0x1853 at 0x101547d0, then iterates 0x400 entries. Each iteration combines the source words at offsets 0, 4, 8 and 0xc into the shadow word at `s3-0x3d60` (stores at 0x10154870, 0x10154888 and 0x10154930), writes the assembled value with token 0x1854 at 0x101548bc, and prints the source entry through `fprintf` at 0x1015495c. The loop advances the source by a 16-byte record at 0x1015490c and returns the final shadow value.

- `tbuStartTMReadback` (`usr/diags/IR/bin/irsaudit`): **Established.** Its 712-byte body begins at 0x1014344c. It inserts the low 12 bits of the fourth argument into the texture shadow word and sends token 0x101c at 0x10143550, inserts the low 12 bits of the first argument into the readback shadow word and prints it through `fprintf` at 0x101435c8, then inserts the low 12 bits of the second argument and prints through `fprintf` at 0x1014361c. It writes token 0x101b with 0x3ff in bits 32 to 41 at 0x10143654 and token 0x101d at 0x101436b8. The routine returns after its final `fprintf` at 0x101436e8.

- `probe_hip_clock_speed` (`usr/diags/IR/bin/irsaudit`): **Established.** The 628-byte probe starts at 0x1004cd0c. It writes one to HIP control offset 0x308 at 0x1004cd44, writes 0x2000b0 to address port 0x3e8 at 0x1004cd5c, clears data port 0x3f0 at 0x1004cd84, calls `_sysconf` with argument 3 at 0x1004cd98, and reads host offset 0x200 at 0x1004cddc. It derives elapsed high and low words from the two probe results, scales them with the calibration double at record offset 0x3c8, and reports the measured value through the diagnostic record; negative elapsed results take the failure branch and the normal path returns the recorded status.

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

- `TEST_rmcrctex_comp` (`usr/diags/IR/bin/irsaudit` 0x100d0948): **Established.** Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d0ab0). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d0ae0). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=unknown (`jalr` at 0x100d0b28). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a5=[[sym(KONAINFO)]], a7=[sym(Nocrc)] (`jal` at 0x100d0c00). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d0c34). Calls `free` with a0=[sym(rm)], a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x100d0c7c).

- `TEST_rmcrctri_comp` (`usr/diags/IR/bin/irsaudit` 0x100cf718): **Established.** Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100cf878). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100cf8a4). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=unknown (`jalr` at 0x100cf8f0). Calls `init_rm_jtag` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100cf95c). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a6=[[sym(KONAINFO)]] (`jal` at 0x100cf9a8). Calls `sprintf` with a0=sp-240, a1=0x101ae7d8, a2=unknown, a3=unknown (`jalr` at 0x100cfa70). Calls `run_crc_testlist` with a0=0x1020c2f8, a1=a0 at entry (arg0), a2=unknown, a3=unknown, a6=[[sym(KONAINFO)]] (`jal` at 0x100cfab4). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=[[sym(KONAINFO)]], a5=one of 0x3, 0x7 (`jalr` at 0x100cfb58). Stores a word at `absolute address 0x1020c2fc` (`sw` at 0x100cfa78).

- `TEST_rm_intbist` (`usr/diags/IR/bin/irsaudit` 0x100830b0): **Established.** Calls `hash_lookup` with a0=0x1019c778, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100830ec). Calls `kt_data_file` with a0=0x1019c776, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10083154). Calls `strcpy` with a0=sp-432, a1=ret(kt_data_file), a2=unknown, a3=unknown (`jalr` at 0x1008316c). Calls `kt_output_dbug` with a0=0x5, a1=0x1019ccd0, a2=unknown, a3=unknown (`jal` at 0x10083234). Calls `jt_execute_internal_bists` with a0=unknown, a1=0x1008194c, a2=unknown, a3=unknown (`jal` at 0x100834d4). Calls `jt_execute_internal_bists` with a0=unknown, a1=0x1008194c, a2=unknown, a3=unknown (`jal` at 0x1008351c). Stores a word at `absolute address 0x102cc0a0` (`sw` at 0x100834f4). Calls `kt_output_diag` with a0=0x1019cc58, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10083330). Calls `kt_output_info` with a0=0x1019cd18, a1=unknown, a2=[a0+364], a3=unknown (`jal` at 0x10083584).

- `TEST_rmcrctri1` (`usr/diags/IR/bin/irsaudit` 0x100d00d8): **Established.** Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d021c). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d024c). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=unknown (`jalr` at 0x100d0294). Calls `crc_pgtest` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d02c0). Calls `crc_pgtest1` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d0314). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d0348). Calls `crc_imptest1` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d0380).

- `probe_rm7_rm8_chain` (`usr/diags/IR/bin/irsaudit` 0x10050834): **Established.** Calls `fcPioRead32` with a0=0x370, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10050878). Calls `sprintf` with a0=sp-40, a1=0x1018ce08, a2=a1 at entry (arg1), a3=unknown (`jalr` at 0x10050920). Calls `jt_select_chain` with a0=sp-40, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10050934). Calls `hash_lookup` with a0=0x1018b200, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10050a18). The `beq` at 0x10050a68 is taken when s2(=ret(0x1004cf80)) == a0(=0x49) -> B80 and falls through when s2(=ret(0x1004cf80)) != a0(=0x49) -> B13 (`beq` at 0x10050a68). Stores a word at `s2+0x444 (resolved address unknown)` (`sw` at 0x10050b7c). Stores a word at `s2+0x18c (resolved address unknown)` (`sw` at 0x10050b88). Stores a word at `a0 (arg0 at entry) +0x16c` (`sw` at 0x10050b94). Calls `kt_read_chain` with a0=ret(kt_data_file), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10050be8). Calls `jt_set_global_instruction` with a0=unknown, a1=0x1018b4e0, a2=0x5, a3=unknown (`jal` at 0x10050cb0). Calls `jt_test_idcode` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10050cc4). Calls `de_gray_code` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10051070).

- `TEST_rm_chains` (`usr/diags/IR/bin/irsaudit` 0x100dffb8): **Established.** Calls `jt_init` with a0=a0 at entry (arg0), a1=0x101afa68, a2=0x101afa6c, a3=0x101afa88, a4=0x1020304858607c, a5=sp-71480, a6=0x8c90a8b0ccd0e8ff, a7=0x101afa90 (`jal` at 0x100e0238). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100e0374). Calls `kt_output_dbug` with a0=0x3, a1=0x101afc68, a2=unknown, a3=unknown, a6=0x6 (`jal` at 0x100e04fc). Calls `strcmp` with a0=unknown, a1=0x101afa90, a2=unknown, a3=unknown (`jalr` at 0x100e0518). Calls `strncmp` with a0=unknown, a1=0x101afc90, a2=0x2, a3=unknown (`jalr` at 0x100e0544). Calls `jt_select_chain` with a0=sp-70912, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100e040c).

- `crc_imptest1` (`usr/diags/IR/bin/irsaudit` 0x100d8b78): **Established.** Calls `srandom` with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x100d8ba4). Calls `kt_output_dbug` with a0=0x4, a1=0x101aed18, a2=unknown, a3=unknown (`jal` at 0x100d8bcc). Calls `kt_output_dbug` with a0=0x4, a1=0x101aed78, a2=unknown, a3=unknown (`jal` at 0x100d921c). Calls `kt_output_dbug` with a0=0x4, a1=0x101aed88, a2=unknown, a3=unknown (`jal` at 0x100d9250). Calls `mytbuInit` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d8be0). Calls `tbuTexOnOff` with a0=0x0, a1=ret(mytbuInit), a2=unknown, a3=unknown, a4=0x1c (`jal` at 0x100d8c3c). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=unknown (`jal` at 0x100d8ca8). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=[sym(rm)]+65536, a4=([[sym(rm)]+57344]:8 | 0x200), a5=[sym(rm)]+65536, a6=([[sym(rm)]+57344]:8 | 0x100), a7=[sym(rm)]+65536 (`jal` at 0x100d8d28). Calls `kt_output_info` with a0=0x101aeba8, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d8e4c).

- `TEST_rm_chainlen` (`usr/diags/IR/bin/irsaudit` 0x100e277c): **Established.** Calls `hash_value` with a0=0x101afd30, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100e27d0). Calls `hash_value` with a0=0x101afd38, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100e27f4). Calls `jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100e286c). Calls `kt_output_info` with a0=0x101afc50, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100e291c). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100e2968). Calls `kt_output_dbug` with a0=0x2, a1=0x101afc40, a2=sp-79360, a3=unknown (`jal` at 0x100e29e4).

- `TEST_rm_chainlen_no_sysprobe` (`usr/diags/IR/bin/irsaudit` 0x100f06c4): **Established.** Calls `hash_value` with a0=0x101b13b0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100f0700). Calls `hash_value` with a0=0x101b13b8, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100f0724). Calls `jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100f07a0). Calls `kt_read_chain` with a0=0x101b13d8, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100f0824). Calls `kt_output_info` with a0=0x101b1418, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100f08b0). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100f090c).

- `TEST_rm_chainlen_1bit` (`usr/diags/IR/bin/irsaudit` 0x100ee3c0): **Established.** Calls `hash_lookup` with a0=0x101b0fe8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100ee3f8). Calls `hash_value` with a0=0x101b1058, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100ee474). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100ee614). Calls `kt_output_rslt` with a0=0x0, a1=0x101b11b8, a2=unknown, a3=unknown (`jal` at 0x100ee738). Calls `kt_output_info` with a0=0x101b11c8, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100ee77c).

- `TEST_rm_chainlen_imp8d_instr` (`usr/diags/IR/bin/irsaudit` 0x100f2a18): **Established.** Calls `hash_lookup` with a0=0x101b1868, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100f2a64). Calls `hash_value` with a0=0x101b1910, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100f2acc). Calls `kt_read_chain` with a0=0x101b1938, a1=sp-416, a2=unknown, a3=unknown (`jal` at 0x100f2be4). Calls `kt_output_info` with a0=0x101b1980, a1=unknown, a2=unknown, a3=unknown, a6=[sym(KONAINFO)] (`jal` at 0x100f2c60). Calls `kt_output_dbug` with a0=0x2, a1=0x101b1970, a2=sp-736, a3=unknown (`jal` at 0x100f2d14).

- `TEST_rm_chainlen_sample` (`usr/diags/IR/bin/irsaudit` 0x100e7008): **Established.** Calls `hash_value` with a0=0x101b03a8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100e7044). Calls `hash_value` with a0=0x101b03b0, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100e7064). Calls `jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100e70e4). Calls `kt_output_info` with a0=0x101b0400, a1=unknown, a2=unknown, a3=unknown, a5=0x7c (`jal` at 0x100e71d4). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100e7214). Calls `sprintf` with a0=sp-496, a1=0x101b03e0, a2=unknown, a3=unknown (`jalr` at 0x100e724c).

- `TEST_rm_chainlen_crcdata` (`usr/diags/IR/bin/irsaudit` 0x100ea1a0): **Established.** Calls `hash_value` with a0=0x101b08e8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100ea1dc). Calls `hash_value` with a0=0x101b08f0, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100ea1fc). Calls `jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100ea27c). Calls `kt_output_info` with a0=0x101b0940, a1=unknown, a2=unknown, a3=unknown, a5=0x7c (`jal` at 0x100ea36c). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100ea3ac). Calls `kt_output_dbug` with a0=0x2, a1=0x101b0930, a2=sp-496, a3=unknown (`jal` at 0x100ea40c).

- `TEST_rm_chainlen_tcbistdata` (`usr/diags/IR/bin/irsaudit` 0x100eb228): **Established.** Calls `hash_value` with a0=0x101b0aa8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100eb264). Calls `hash_value` with a0=0x101b0ab0, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100eb284). Calls `jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100eb304). Calls `kt_output_info` with a0=0x101b0b00, a1=unknown, a2=unknown, a3=unknown, a5=0x7c (`jal` at 0x100eb3f4). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100eb434). Calls `kt_output_dbug` with a0=0x2, a1=0x101b0af0, a2=sp-496, a3=unknown (`jal` at 0x100eb494).

- `TEST_rm_chainlen_bistctrl` (`usr/diags/IR/bin/irsaudit` 0x100ed338): **Established.** Calls `hash_value` with a0=0x101b0e28, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100ed374). Calls `hash_value` with a0=0x101b0e30, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100ed394). Calls `jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100ed414). Calls `kt_output_info` with a0=0x101b0e80, a1=unknown, a2=unknown, a3=unknown, a5=0x7c (`jal` at 0x100ed504). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100ed544). Calls `kt_output_dbug` with a0=0x2, a1=0x101b0e70, a2=sp-496, a3=unknown (`jal` at 0x100ed5a4).

- `TEST_rm_chainlen_intmode` (`usr/diags/IR/bin/irsaudit` 0x100ef63c): **Established.** Calls `hash_value` with a0=0x101b11f0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100ef678). Calls `hash_value` with a0=0x101b11f8, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100ef698). Calls `jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100ef718). Calls `kt_output_info` with a0=0x101b1248, a1=unknown, a2=unknown, a3=unknown, a5=0x7c (`jal` at 0x100ef808). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100ef848). Calls `kt_output_dbug` with a0=0x2, a1=0x101b1238, a2=sp-496, a3=unknown (`jal` at 0x100ef8a8).

- `TEST_rm_chainlen_imp8d` (`usr/diags/IR/bin/irsaudit` 0x100f19b4): **Established.** Calls `hash_value` with a0=0x101b1580, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100f1a04). Calls `hash_value` with a0=0x101b1588, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100f1a28). Calls `jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100f1aa8). Calls `kt_read_chain` with a0=0x101b15a8, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100f1b28). Calls `kt_output_info` with a0=0x101b15f0, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100f1b98). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x100f1be8).

- `crc_pgtest1` (`usr/diags/IR/bin/irsaudit` 0x100d65d8): **Established.** Calls `srandom` with a0=0x1, a1=s8 at entry, a2=0x400, a3=a3 at entry (arg3) (`jalr` at 0x100d6634). Calls `kt_output_dbug` with a0=0x4, a1=0x101aeb10, a2=unknown, a3=unknown (`jal` at 0x100d6658). Calls `mytbuInit` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100d666c). Calls `tbuTexOnOff` with a0=0x0, a1=ret(mytbuInit), a2=unknown, a3=unknown (`jal` at 0x100d669c). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=[sym(rm)]+65536, a5=-0x4 (`jal` at 0x100d670c). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=[sym(rm)]+65536, a4=[[sym(rm)]+57344]:8, a5=[sym(rm)]+65536, a6=([[sym(rm)]+57344]:8 | 0x100), a7=[sym(rm)]+65536 (`jal` at 0x100d67a0). Calls `tbRegWrite` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=unknown, a3=[sym(rm)], a4=0xfffffffffffcffff (`jal` at 0x100d67e4).

- `run_video1` (`usr/diags/IR/bin/irsaudit` 0x1009eca0): **Established.**
  The 2040-byte routine accepts only video modes one, two or four and returns
  two after reporting another mode.  For an accepted mode it initializes the
  geometry path, waits for the graphics FIFO status at host offset `0x208`
  (reads at 0x1009edf0 and 0x1009ee20), submits ioctl `0x2775` through the
  caller's pipe handle (call at 0x1009ee68), and then invokes the video-format
  and display-generator setup chain at 0x100969b4.  A negative ioctl result
  or failed setup selects the diagnostic error path; the normal completion
  returns the setup result after restoring the saved registers.

- `run_video2` (`usr/diags/IR/bin/irsaudit` 0x1009ba1c): **Established.** Its 2680-byte body accepts the video-mode values 1, 2 and 4 after the board-status query at 0x1009ba6c; other values report the unsupported mode and return 2 through 0x1009bb48-0x1009bd30. It enables the selected geometry engines, reports a code result through `kt_code_result` at 0x1009bc0c, and polls host FIFO status offset 0x208 through the reads at 0x1009bc24 and 0x1009bc54. After the poll it submits ioctl 0x2775 with count 1 at 0x1009bca0, rejects a negative result at 0x1009bca8, and invokes the video-format/display setup at 0x1009bcd0; the normal return is that setup result, while the cleanup path stores the selected mode in the result record at 0x1009c314 and reports setup failure through 0x1009c328.

- `video_fbwrite` (`usr/diags/IR/bin/irsaudit` 0x100a05cc): **Established.** This 1872-byte video test accepts board modes 1, 2 and 4, initializes the selected geometry engines, waits for host FIFO offset 0x208, and submits ioctl 0x2775 at 0x100a07a4. It prepares two frame-buffer write descriptors through 0x100b6c58 at 0x100a08d0 and 0x100a0900, then calls the frame-buffer writer at 0x100a091c for each 0x100-byte block; the loop advances its source and destination records by 0x100 at 0x100a0c24 and 0x100a0c40 and its channel record by 0x400 at 0x100a0c34. A successful block sets bit 0 in the per-channel state with the `ori` at 0x100a0bf8, and the mode-6 recovery path writes the reset descriptor words at 0x100a0cf8, 0x100a0d04 and 0x100a0d08 before returning to setup. Unsupported modes return 2, and failed ioctl, setup or write paths report an error and return zero.

- `video_fbwrite_read` (`usr/diags/IR/bin/irsaudit` 0x100a4bd8): **Established.** Its 1880-byte body mirrors `video_fbwrite`'s mode gate, geometry/FIFO preparation and ioctl 0x2775 submission at 0x100a4db4, but calls the block writer `myFrameBufferWriteTest4` at 0x100a4f28 after constructing the two descriptors at 0x100a4edc and 0x100a4f0c. Each successful block advances the three 0x100-byte addresses and the 0x400-byte channel record at 0x100a5238, 0x100a5240, 0x100a5248 and 0x100a5254, then sets the state bit with the `ori` at 0x100a520c. The mode-6 recovery path writes its reset descriptor at 0x100a530c and 0x100a531c; unsupported modes return 2 and all failed hardware/setup paths use the diagnostic error callbacks before returning zero.

- `TEST_idma` (`usr/diags/IR/bin/irsaudit` 0x1007784c): **Established.** The 1620-byte test builds a 0x203-word input-DMA pattern record: the stack words at offsets 0, 4, 8, 0xc, 0x10 and 0x14 are initialized with 0x5a5a5a5a, 0xa5a5a5a5, 0x55555555, 0xaaaaaaaa, -1 and 0xdeadbeef, starting with the store at 0x100778c4. It allocates the transfer descriptor at 0x1007795c, fills its header with type 1, width 4 and count 0x200 at 0x10077970-0x10077988, then copies the pattern into the descriptor in the loop ending at 0x100779bc. For each of two channels it submits ioctl 0x2774 with the descriptor at 0x10077af0, writes the six returned control words through the FIFO helper at 0x10077b0c-0x10077b48, and polls status offset 0x238 at 0x10077b58 until bit 0x10 clears or 0x1f4 iterations elapse; timeout clears status with the write at 0x10077ba8. It frees the mapping on the success and error paths and returns the accumulated diagnostic result.

- `TEST_pab2voccpbuf` (`usr/diags/IR/bin/irsaudit` 0x1007e8dc): **Established.** This 768-byte option-board command-buffer test first requires the board-enable word at record offset 0xfb4 (load at 0x1007e904), chooses one of two register bases from offsets 0xf84 and 0xf88, and exits through the diagnostic message path when the required channel or state at offset 0xdbc is absent. It clears the command index at the selected base, calls the command-buffer checker at 0x1007e9c4 once per entry, and accumulates the returned failure count in `s1`; each failure reports the entry index through `kt_output_info` at 0x1007e9f4. A complete buffer is reported through `kt_output_diag` at 0x1007ea50, followed by `kt_code_result` with 4 at 0x1007ea6c and the result report through `kt_output_rslt` at 0x1007ea94. The alternate and disabled paths report through `kt_output_rslt` at 0x1007ebcc and `kt_output_info` at 0x1007eba4 and return through the same saved-register epilogue.

- `jt_load_internal_bist` (`usr/diags/IR/bin/irsaudit` 0x100154f0): **Established.** Its 2304-byte body finds the built-in-test image with `jt_findfile` and opens it with `fopen` (calls at 0x10015518 and 0x100155a0), reads it in 0x1000-byte requests with `fgets` (calls at 0x100155c8 and 0x100155e8), and splits each line with `strtok`, `strcmp` and `atoi`. Its records are allocated with `malloc` (calls at 0x10015a0c, 0x10015bf8 and 0x10015cc8) and filled as four-word entries: the stores at 0x10015d1c (offset 0, value 5), 0x10015d54 (offset 0, value 7), 0x10015cc4 (offset 4, value 1), 0x10015d38 (offset 4, the `atoi` result), 0x10015cd0 (offset 12, the allocation) and 0x10015dc0 (offset 4, the `strdup` result). For the variable-length records it copies each returned word into the output array at 0x10015cec-0x10015cf8 and advances the output entry by 0x10 at 0x10015d00. It closes the image at 0x10015914, reports malformed lines through `jt_error` (call at 0x1001597c), and returns the loader status after the final record.

- `TEST_ddo3_vocreg` (`usr/diags/IR/bin/irsaudit` 0x100a6e9c): **Established.** This 1020-byte DDO3 register test requires the option-board state at record offsets 0xdbc and 0xfb4 (loads at 0x100a6ec0 and 0x100a6ee4), builds the expected register record at the workspace selected through the board table, and calls the VOC register test at 0x100a6f94. The test sets the workspace status word at offset 0 to 0xde (store at 0x100a6f38), preserves the expected values at offsets 0x10 and 0x18 (stores at 0x100a706c and 0x100a7060), and reports each mismatch through the diagnostic callbacks at 0x100a7034 and 0x100a70e0. A missing board or disabled channel takes separate reporting paths; the normal and failure paths both restore the saved registers and return the recorded test status.

- `TEST_ddo3_vocspreg` (`usr/diags/IR/bin/irsaudit` 0x100aa248): **Established.** Its 948-byte body applies the same DDO3 presence and enable checks at record offsets 0xdbc and 0xfb4, then builds the special-register expectation record and invokes the DDO3 special-register checker at 0x100aa324. It sets the status word at workspace offset 0 to 0xde (store at 0x100aa2e4) and increments it after the checker call (store at 0x100aa394), keeps the expected value at offset 8 (0x100aa31c and 0x100aa3d8), and reports mismatches through the callbacks at 0x100aa3c0 and 0x100aa44c. Disabled, absent and failed-board cases branch to separate diagnostic messages, then return through the saved-register epilogue.

- `Pab2_TestDblBuffRegs` (`usr/diags/IR/bin/irsaudit` 0x1007f270): **Established.** The 848-byte PAB2 test saves the current double-buffer state, clears the local control word at `s3-0x7e4` and seeds the expected register state at `s3-0x7f8` and `s3-0x7fc` (stores at 0x1007f32c, 0x1007f350 and 0x1007f3e0). It reads the register back with `vcRead` (calls at 0x1007f460, 0x1007f47c and 0x1007f4c8), records each returned value at `s3-0x7f8` (0x1007f46c and 0x1007f490), and retries while the returned status or comparison flag requires it at 0x1007f470-0x1007f4d8. It clears the control word at 0x1007f420, reports the final mismatch through 0x1007f4fc, and writes the final result into the caller's record at offset 0xc (0x1007f50c); the function returns that recorded status.

- `TEST_ge_intbist` (`usr/diags/IR/bin/irsaudit` 0x10081e48): **Established.** This 1436-byte geometry-engine test runs the internal self-test through `reset_libjtag_error_count` (call at 0x10082118), `jt_read_internal_bist_info` (call at 0x10082140) and `get_libjtag_error_count` (call at 0x1008214c). A failed first or second run reports the result and then reloads the engine test state through 0x100822d8-0x10082324; the retry loops repeat the engine execution at 0x10082334-0x100823cc and store the final status at 0x10082330 and 0x100823e0. When the status word is nonzero it emits the failure report and clears the test state before returning through 0x10082270.

- `TEST_dg_intbist` (`usr/diags/IR/bin/irsaudit` 0x10082560): **Established.** Its 1436-byte body performs the display-generator internal self-test with the same staged setup, engine execution and status-read helpers, starting with the calls at 0x10082824 and 0x10082840. It stores the current result in the caller's word at offset 0 (0x10082810, 0x10082a08, 0x10082a9c and 0x10082af8), reports a nonzero result through the diagnostic callback at 0x100828a4, and reruns the test after the cleanup and reload sequence at 0x100829b4-0x100829f4. The final status determines whether the display-generator test is reported as failed, and the saved-register epilogue returns that status.

- `TEST_clipmap` (`usr/diags/IR/bin/irsaudit` 0x1012042c): **Established.** The 1428-byte clip-map test initializes five independent texture/raster checks through the helper calls at 0x10120690, 0x101206e0, 0x10120730, 0x10120780 and 0x101207d0, reporting the returned error after each zero test at the following branches. It clears the shared test handle at offset 0 (store at 0x10120838) and the word behind the `HUB_WAR` setting pointer at offset 0 (store at 0x10120850) before returning. If the setup flag is set, the cleanup path reads and rewrites the saved 64-bit state word at offset 8 (a load at 0x101208b0 and a store at 0x101208c0), calls `run_crc_testlist` at 0x101208dc with the saved list, and reports its result through `kt_output_rslt` before the final epilogue.

- `imgopen` (`usr/diags/IR/bin/irsaudit` 0x1016fee4): **Established.** This 1428-byte image-reader entry initializes the image record, opens one file with `open` (call at 0x101700cc) and creates another with `creat` (call at 0x101702f0), and stores two `malloc` results at record offsets 0x90 and 0x94 (stores at 0x1017024c and 0x10170260). It rejects a missing handle at 0x1017025c-0x10170268, stores a value at offset 0x8c (store at 0x10170280), and clears the record fields at offsets 0x14 and 0x80 (0x101701cc and 0x101702d4). The normal path scans the source records through the loop at 0x101702a8-0x101702cc, frees the temporary buffer at 0x101702dc, and returns the initialized image record; each failed open or metadata step closes any handle already stored and follows the cleanup branches at 0x101703c8-0x10170468.

- `TEST_nicprobe` (`usr/diags/IR/bin/irsaudit` 0x10042548): **Established.** Its 4684-byte body resets the adapter with callback command 0x6a at 0x1004258c, clears the serial-number result record, and writes one to HIP control offset 0x308 at 0x10042638 before probing the board identity. It clears the local word at sp+0x400 (store at 0x100426bc) and looks up board records with `hash_lookup` (calls at 0x10043280, 0x1004335c, 0x10043430 and 0x10043624) to validate and collect the returned words. A failed page read, absent NIC word or failed comparison branches to the corresponding diagnostic report, while the success path copies the accumulated serial data into the caller's record and returns after the final status callback.

- `run_optvideo` (`usr/diags/IR/bin/irsaudit` 0x100976e8): **Established.** This 3392-byte option-video runner accepts only modes 1, 2 and 4; unsupported modes report through 0x100977a4 and return 2. For an accepted mode it polls host FIFO offset 0x208 (reads at 0x10097878 and 0x100978a4), submits ioctl 0x2775 at 0x100978ec, and invokes the option-video setup through `dgrm_config` (call at 0x10097804), `vdWaitForVocPllInterface` (calls at 0x100981c8 and 0x100983bc) and `dgoptRestoreDefaultPllValues` (calls at 0x100981ec and 0x10098240). The path stores the generated frame-buffer result at record offset 0x174 (stores at 0x100980f8, 0x10098268 and 0x10098348), programs the option-board state through the descriptor writes at 0x10098040-0x100980d8, and performs the final video request with 0x100b6c58 at 0x10098220. Negative ioctl or failed setup takes the diagnostic error path; successful completion returns the recorded status after the cleanup calls at 0x10098110 and 0x10098124.

- `run_video` (`usr/diags/IR/bin/irsaudit` 0x10096ea4): **Established.**
  This 1944-byte entry has the same mode gate for one, two and four, then
  initializes the selected geometry engines, polls host FIFO status offset
  `0x208` at 0x10096fe8 and 0x10097014, and submits ioctl `0x2775` at
  0x1009705c.  It passes the ioctl result into the display/video setup path
  beginning at 0x100969b4; a negative ioctl or failed setup takes the failure
  reporting branches, while unsupported modes return two before any hardware
  access.

- `TEST_odma` (`usr/diags/IR/bin/irsaudit` 0x1007c9c4): **Established.**
  The 4844-byte test allocates and maps a 0x1000-byte transfer buffer, scans
  the returned mapping records, and releases a failed mapping through `destroy_map_diag` (call at 0x1007cc08, argument `0x400`).  Its primary output
  channel selects raster-bus register `0x441` at 0x1007cc78, writes pack mode `0x43` to `0x441` at 0x1007ccf4, and writes the transfer length to `0x452`
  and `0x453` at 0x1007cd04 and 0x1007cd14.  The mapped address and length are
  then passed back through ioctl `0x2774` at 0x1007cd5c; the later body
  programs the secondary channel's `0x440` and `0x460`-`0x463` fields and
  finishes by polling the output-DMA totals.  Mapping or DMA failure takes the
  diagnostic error path, while the successful path frees the mapping and
  returns the test result.

- `unscramble_ge_boardId` (`usr/diags/IR/bin/irsaudit` 0x1008cbd8): **Established.** Loads a word at `a0 (arg0 at entry) +0x68` (`lw` at 0x1008cbdc). Calls `de_gray_code` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1008cc68). Calls `de_gray_code` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1008ccac). Stores a word at `a0 (arg0 at entry) +0x74` (`sw` at 0x1008cdc0). Calls `kt_output_info` with a0=0x1019e920, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1008cc2c). Calls `hash_lookup` with a0=0x1019e9c8, a1=0x1, a2=one of 0x3, 0x4, a3=unknown, a5=0x8 (`jal` at 0x1008cd24).

- `unscramble_dg_boardId` (`usr/diags/IR/bin/irsaudit` 0x1008cf30): **Established.** Loads a word at `a0 (arg0 at entry) +0xf78` (`lw` at 0x1008cf38). Calls `de_gray_code` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1008cfcc). Calls `de_gray_code` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1008d008). Loads a word at `a0 (arg0 at entry) +0xf78` (`lw` at 0x1008d038). Stores a word at `a0 (arg0 at entry) +0xe2c` (`sw` at 0x1008d0cc). Stores a word at `sym(total_errors) +0x0` (`sw` at 0x1008d070). Calls `kt_output_info` with a0=0x1019e920, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1008cf8c).

- `aaspoke` (`usr/diags/IR/bin/irsaudit` 0x1010274c): **Established.** Calls `mytbuInit` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10102784). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=unknown (`jal` at 0x101027fc). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=[sym(rm)]+65536, a4=-0x3d, a5=[sym(rm)]+65536, a6=([[sym(rm)]+57344]:8 | 0x100), a7=[sym(rm)]+65536 (`jal` at 0x1010287c). Calls `tbRegWrite` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=unknown, a3=[sym(rm)], a4=-0xc001 (`jal` at 0x101028ac). Calls `tbRegWrite` with a0=0x806, a1=[[sym(rm)]+16432]:8, a2=unknown, a3=[sym(rm)], a4=-0xd (`jal` at 0x101028d8). Calls `tbRegWrite` with a0=0x3fd1, a1=[[sym(rm)]+130696]:8, a2=unknown, a3=[sym(rm)]+131072, a4=-0x1000 (`jal` at 0x10102910). Calls `tbRegWrite` with a0=0x3fc2, a1=[[sym(rm)]+130576]:8, a2=unknown, a3=[sym(rm)]+131072, a5=[[sym(rm)]+130576]:8, a6=[[sym(rm)]+130576]:8 (`jal` at 0x10102964). Calls `tbRegWrite` with a0=0x3fc3, a1=[[sym(rm)]+130584]:8, a2=unknown, a3=[sym(rm)]+131072, a5=[[sym(rm)]+130584]:8, a6=[[sym(rm)]+130584]:8 (`jal` at 0x101029b8). Calls `tbRegWrite` with a0=0x807, a1=[[sym(rm)]+16440]:8, a2=unknown, a3=[sym(rm)], a4=[[sym(rm)]+16440]:8 (`jal` at 0x101029e0). Calls `tbRegWrite` with a0=0x808, a1=[[sym(rm)]+16448]:8, a2=unknown, a3=[sym(rm)], a4=[[sym(rm)]+16448]:8 (`jal` at 0x10102a0c). Calls `tbRegWrite` with a0=0x3ff6, a1=[[sym(rm)]+130992]:8, a2=[sym(rm)]+131072, a3=unknown (`jal` at 0x10102a34). Calls `tbRegWrite` with a0=0x1c02, a1=[[sym(rm)]+57360]:8, a2=unknown, a3=[sym(rm)]+65536, a4=-0x2001, a5=[sym(rm)]+65536, a6=-0x1001, a7=[sym(rm)]+65536 (`jal` at 0x10102b04). Stores a doubleword at `a3+0x4030 (resolved as [sym(rm)] +0x4030)` (`sd` at 0x1010289c). Stores a doubleword at `a3+0x4030 (resolved as [sym(rm)] +0x4030)` (`sd` at 0x101028c8). Stores a doubleword at `a3+0x4038 (resolved as [sym(rm)] +0x4038)` (`sd` at 0x101029d0). Stores a doubleword at `a3+0x4040 (resolved as [sym(rm)] +0x4040)` (`sd` at 0x101029f8). Stores a doubleword at `a3-0x178 (resolved as [sym(rm)] +0x1fe88)` (`sd` at 0x101028fc). Stores a doubleword at `a5-0x1f0 (resolved as [sym(rm)] +0x1fe10)` (`sd` at 0x1010292c). Stores a doubleword at `a3-0x1f0 (resolved as [sym(rm)] +0x1fe10)` (`sd` at 0x10102950). Stores a doubleword at `a5-0x1e8 (resolved as [sym(rm)] +0x1fe18)` (`sd` at 0x10102980). Stores a doubleword at `a3-0x1e8 (resolved as [sym(rm)] +0x1fe18)` (`sd` at 0x101029a4). Stores a doubleword at `a2-0x50 (resolved as [sym(rm)] +0x1ffb0)` (`sd` at 0x10102a20). Stores a doubleword at `ret(mytbuInit) +0xe000` (`sd` at 0x101027e4). Stores a doubleword at `t3-0x2000 (resolved as [sym(rm)] +0xe000)` (`sd` at 0x10102814). Stores a doubleword at `t1-0x2000 (resolved as [sym(rm)] +0xe000)` (`sd` at 0x10102828). Stores a doubleword at `a7-0x2000 (resolved as [sym(rm)] +0xe000)` (`sd` at 0x1010283c). Stores a doubleword at `a5-0x2000 (resolved as [sym(rm)] +0xe000)` (`sd` at 0x10102850). Stores a doubleword at `a3-0x2000 (resolved as [sym(rm)] +0xe000)` (`sd` at 0x10102868).

- `gedStressTd` (`usr/diags/IR/bin/irsaudit` 0x10074ba4): **Established.** Calls `Load_GED_Reg` with a0=0x2ad, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x10074c00). Calls `fcGfxWrite32` with a0=0x1, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074c44). Calls `fcGfxWrite32` with a0=0x9, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074c50). Calls `fcGfxWrite32` with a0=0x282, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074c5c). Calls `fcGfxWrite32` with a0=0x283, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074c68). Stores a word at `a3+0x0 (resolved address unknown)` (`sw` at 0x10074c20). Stores a word at `a3+0x0 (resolved address unknown)` (`sw` at 0x10074d5c). Stores a word at `absolute address 0x102c69f8` (`sw` at 0x10074f1c). Stores a word at `absolute address 0x102c69fc` (`sw` at 0x10074f30). Stores a word at `absolute address 0x102c6a00` (`sw` at 0x10074f40). Stores a word at `absolute address 0x102c6a04` (`sw` at 0x10074f4c). Stores a word at `absolute address 0x102c6a08` (`sw` at 0x10074f60). Stores a word at `absolute address 0x102c6a0c` (`sw` at 0x10074f68). Calls `fcGfxWrite32` with a0=0x1, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074f6c). Calls `fcGfxWrite32` with a0=0x9, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074f78). Calls `fcGfxWrite32` with a0=0x240, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074f84). Calls `fcGfxWrite32` with a0=0x241, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074f90). Calls `fcGfxWrite32` with a0=0x0, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074f9c). Calls `fcGfxWrite32` with a0=0x6, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10074fa8).

- `TEST_texobjdetail` (`usr/diags/IR/bin/irsaudit` 0x1012d828): **Established.** Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1012d97c). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1012d9a8). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=unknown (`jalr` at 0x1012db0c). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1012db54). Stores a word at `absolute address 0x10379044` (`sw` at 0x1012dadc). Calls `kt_output_rslt` with a0=0x0, a1=0x101be4a8, a2=unknown, a3=unknown (`jal` at 0x1012db80). Calls `kt_output_info` with a0=0x101be2b8, a1=[a0+364], a2=a2 at entry (arg2), a3=sym(KonatestTexRepeat), a4=0x1, a5=0x2, a6=0x4 (`jal` at 0x1012d898).

- `TEST_texdetail` (`usr/diags/IR/bin/irsaudit` 0x10125d54): **Established.** Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10125e94). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10125ec0). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=unknown (`jalr` at 0x10125fd0). Stores a word at `absolute address 0x10373ec8` (`sw` at 0x10125fa0). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10126018). Calls `kt_output_rslt` with a0=0x0, a1=0x101bd9e0, a2=unknown, a3=unknown (`jal` at 0x10126044).

- `gedSequencer` (`usr/diags/IR/bin/irsaudit` 0x10075210): **Established.** Calls `fcGfxWrite32` with a0=0x1, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100752b0). Calls `fcGfxWrite32` with a0=0x9, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100752bc). Calls `fcGfxWrite32` with a0=0x282, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100752c8). Calls `fcGfxWrite32` with a0=0x283, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100752d4). Calls `fcGfxWrite32` with a0=0x0, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100752e0). Stores a word at `absolute address 0x102c69f8` (`sw` at 0x10075438). Stores a word at `absolute address 0x102c69fc` (`sw` at 0x1007542c). Stores a word at `absolute address 0x102c6a00` (`sw` at 0x10075420). Stores a word at `absolute address 0x102c6a04` (`sw` at 0x1007541c). Stores a word at `absolute address 0x102c6a08` (`sw` at 0x10075418). Calls `fcGfxWrite32` with a0=0x1, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10075434). Calls `fcGfxWrite32` with a0=0x9, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10075444). Calls `fcGfxWrite32` with a0=0x241, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1007545c). Calls `fcGfxWrite32` with a0=0x5, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10075474). Calls `Load_GED_Reg` with a0=0x284, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x100754c4). Calls `Load_GED_Reg` with a0=0x2a5, a1=0xfe, a2=unknown, a3=unknown (`jal` at 0x10075564).

- `TEST_texfmt` (`usr/diags/IR/bin/irsaudit` 0x10124060): **Established.** Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x101241b4). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x101241e0). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=unknown (`jalr` at 0x10124228). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1012427c). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x101242cc). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1012431c). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1012436c). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x0, a3=unknown (`jalr` at 0x101243d8).

- `TEST_dgopt_intbist` (`usr/diags/IR/bin/irsaudit` 0x10082be8): **Established.** Stores a word at `absolute address 0x102cc0a0` (`sw` at 0x10082d90). Calls `hash_lookup` with a0=0x1019c778, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10082ca4). Calls `hash_lookup` with a0=0x1019c788, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10082d20). Calls `ensure_jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10082cd0). Calls `kt_data_file` with a0=0x1019c776, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10082cf0). Calls `strcpy` with a0=sp-368, a1=ret(kt_data_file), a2=unknown, a3=unknown (`jalr` at 0x10082d08). Calls `jt_read_internal_bist_info` with a0=[a0+4096], a1=sp-368, a2=unknown, a3=0x10082afc, a4=0x0 (`jal` at 0x10082dcc). Loads a word at `absolute address 0x102cc0a0` (`lw` at 0x10082dec). Calls `kt_code_result` with a0=0x4, a1=0x0, a2=0x4, a3=unknown (`jal` at 0x10082e40).

- `jt_execute_internal_bists` (`usr/diags/IR/bin/irsaudit` 0x10016b9c): **Established.** Calls `(unnamed)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10016bcc). Calls `kt_output_dbug` with a0=0x1, a1=0x10174440, a2=0x10174448, a3=unknown (`jal` at 0x10016c1c). Calls `kt_output_dbug` with a0=0x1, a1=0x10174b30, a2=ret(0x10016508), a3=0x10174060, a4=(ret(0x10016508) << 0x2) (`jal` at 0x10016c8c). Calls `kt_output_dbug` with a0=0x1, a1=0x10174440, a2=0x101744a0, a3=0x10174060, a4=entry(0x10174468) (`jal` at 0x10016de8). Calls `kt_output_dbug` with a0=0x1, a1=0x10174440, a2=0x101744c8, a3=0x10174060, a4=entry(0x10174468) (`jal` at 0x10016e60). Calls `__assert` with a0=0x101743ac, a1=0x10174120, a2=0x36e, a3=unknown (`jalr` at 0x10016cb4). Calls `hash_lookup` with a0=0x10174b40, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10016cf4).

- `gedStressVtu` (`usr/diags/IR/bin/irsaudit` 0x10073b4c): **Established.** Calls `kt_output_info` with a0=0x10199538, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10073b88). Calls `Load_GED_Reg` with a0=0x2ad, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x10073bac). Calls `fcGfxWrite32` with a0=0x1, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10073bec). Calls `fcGfxWrite32` with a0=0x9, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10073bf8). Calls `fcGfxWrite32` with a0=0x282, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10073c04).

- `init_kona_hw_access` (`usr/diags/IR/bin/irsaudit` 0x10163938): **Established.** Calls `open` with a0=0x101c3e60, a1=0x802, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10163974). Calls `fcntl` with a0=ret(open), a1=0x2, a2=0x5, a3=unknown (`jalr` at 0x101639c0). Calls `hash_value` with a0=0x101c3ef0, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x10163a10). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x66, a2=sp-192, a3=unknown, a5=[sym(pipeNum)] (`jalr` at 0x10163aa0). Calls `strcmp` with a0=sp-176, a1=0x101c3f98, a2=unknown, a3=unknown (`jalr` at 0x10163acc).

- `smallwrite` (`usr/diags/IR/bin/irsaudit` 0x100a2ff8): **Established.** Calls `kt_output_dbug` with a0=0x1, a1=0x101a2400, a2=0x221348, a3=sp-256 (`jal` at 0x100a3064). Calls `mytbuInit` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100a307c). Calls `hash_value` with a0=0x101a2410, a1=0xa0, a2=unknown, a3=unknown (`jal` at 0x100a30b4). Calls `hash_value` with a0=0x101a2418, a1=0x1, a2=unknown, a3=unknown (`jal` at 0x100a30e0). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=unknown (`jal` at 0x100a314c). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=[sym(rm)]+65536, a4=-0x3d, a5=[sym(rm)]+65536, a6=([[sym(rm)]+57344]:8 | 0x100), a7=[sym(rm)]+65536 (`jal` at 0x100a31d0).

- `dgo_pixel_readback` (`usr/diags/IR/bin/irsaudit` 0x1011e958): **Established.** Calls `dgo_FbWrTest` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1011e994). Calls `dgo_setup_fb_mode` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1011e9ac). Calls `kt_output_info` with a0=0x101bc6f8, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1011e9d8). Calls `kt_output_info` with a0=0x101bc738, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1011ea48). Calls `dgo_setup_video` with a0=0x0, a1=0xe6, a2=0x1, a3=unknown (`jal` at 0x1011ea20). Calls `load_gamma_lut` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1011ea68). Calls `kt_output_trce` with a0=0x101bc780, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1011ead4). Calls `gvo_crc_test` with a0=0x2, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x1011eaec).

- `myFrameBufferWriteWords` (`usr/diags/IR/bin/irsaudit` 0x100b4bf4): **Established.** Calls `hash_value` with a0=0x101abb98, a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x101abb18, a5=sp-288 (`jal` at 0x100b4c78). Calls `hash_value` with a0=0x101abba8, a1=0x500, a2=unknown, a3=unknown (`jal` at 0x100b4c98). Calls `hash_value` with a0=0x101abbb0, a1=0x400, a2=unknown, a3=unknown (`jal` at 0x100b4cb8). Calls `hash_value` with a0=0x101abba8, a1=0x500, a2=unknown, a3=unknown (`jal` at 0x100b4d24). Calls `hash_value` with a0=0x101abbb0, a1=0x400, a2=unknown, a3=unknown (`jal` at 0x100b4d50). Calls `kt_output_dbug` with a0=0x1, a1=0x101abbb8, a2=unknown, a3=unknown (`jal` at 0x100b4ce0). Calls `mytbuInit` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100b4cf4).

- `myFrameBufferWriteTest2` (`usr/diags/IR/bin/irsaudit` 0x100b23f4): **Established.** Calls `kt_output_dbug` with a0=0x1, a1=0x101ab5f0, a2=0x211f4c, a3=unknown, a4=sp-256 (`jal` at 0x100b2460). Calls `mytbuInit` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100b2478). Calls `hash_value` with a0=0x101ab518, a1=0x500, a2=unknown, a3=unknown (`jal` at 0x100b24b4). Calls `hash_value` with a0=0x101ab520, a1=0x400, a2=unknown, a3=unknown (`jal` at 0x100b24e4). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=unknown (`jal` at 0x100b2550). Calls `tbRegWrite` with a0=0x1c00, a1=[[sym(rm)]+57344]:8, a2=unknown, a3=[sym(rm)]+65536, a4=-0x3d, a5=[sym(rm)]+65536, a6=([[sym(rm)]+57344]:8 | 0x100), a7=[sym(rm)]+65536 (`jal` at 0x100b25d0).

- `impvid` (`usr/diags/IR/bin/irsaudit` 0x100781b0): **Established.** Calls `mytbuInit` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100781d8). Calls `(unnamed)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100781fc). Calls `kt_output_info` with a0=0x10199f08, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10078340). Calls `__semgetc` with a0=sym(__iob), a1=[sym(__iob)]-1, a2=[sym(__us_rsthread_stdio)], a3=unknown, a6=[sym(__iob)+4] (`jalr` at 0x10078384). Calls `tbRegWrite` with a0=0x1c0b, a1=[[sym(rm)]+57432]:8, a2=unknown, a3=[sym(rm)]+65536 (`jal` at 0x10078428). Calls `testClear` with a0=0x0, a1=0x4ff, a2=0x0, a3=0x3ff (`jal` at 0x10078448).

- `dgo_clearfb` (`usr/diags/IR/bin/irsaudit` 0x1011582c): **Established.** Calls `fcPioRead32` with a0=0x208, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10115870). Calls `sginap` with a0=0x5, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x1011589c). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=unknown (`jalr` at 0x101158ec). Calls `mytbuInit` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10115904). Calls `kt_output_dbug` with a0=0x2, a1=0x101b7340, a2=[a0+364], a3=unknown (`jal` at 0x10115944). Calls `kt_output_dbug` with a0=0x2, a1=0x101b7350, a2=0x4ff, a3=([a0+364] << 0xa)-1 (`jal` at 0x10115970).

- `clearfb_vid` (`usr/diags/IR/bin/irsaudit` 0x100a0ea4): **Established.** Calls `hash_value` with a0=0x101a2050, a1=0xffffffffff0000c0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100a0ef8). Calls `hash_value` with a0=0x101a20a0, a1=0x500, a2=unknown, a3=unknown (`jal` at 0x100a0f54). Calls `hash_value` with a0=0x101a20b0, a1=0x400, a2=unknown, a3=unknown (`jal` at 0x100a0f78). Calls `mytbuInit` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100a0f24). Calls `kt_output_dbug` with a0=0x2, a1=0x101a20c0, a2=[a0+364], a3=unknown (`jal` at 0x100a0fb0). Calls `kt_output_dbug` with a0=0x2, a1=0x101a20d0, a2=ret(hash_value)-1, a3=unknown (`jal` at 0x100a0fe4).

- `kt_exit_crashlog` (`usr/diags/IR/bin/irsaudit` 0x10044df4): **Established.** Calls `sprintf` with a0=unknown, a1=0x1018a3d0, a2=unknown, a3=unknown (`jalr` at 0x10044ea0). Calls `sprintf` with a0=unknown, a1=0x1018a3f0, a2=unknown, a3=one of 0x1018a3e8, 0x1018a408 (`jalr` at 0x10044f4c). Calls `sprintf` with a0=unknown, a1=0x1018a3f0, a2=unknown, a3=one of 0x1018a3e8, 0x1018a40a (`jalr` at 0x100450c8). Calls `emapiSendEvent` with a0=0x0, a1=0x0, a2=0x200402, a3=0x46, a4=sp-16496 (`jalr` at 0x10044f74). Calls `kt_output_dbug` with a0=0x1, a1=0x1018a410, a2=unknown, a3=unknown (`jal` at 0x10044fa0). Calls `kt_output_dbug` with a0=0x4, a1=0x1018a440, a2=sp-16496, a3=unknown (`jal` at 0x10044fc0). Calls `kt_code_summary` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10045030).

- `TEST_tbusfile` (`usr/diags/IR/bin/irsaudit` 0x1010a75c): **Established.** Calls `kt_output_info` with a0=0x101b54e8, a1=[a0+364], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1010a7b4). Calls `kt_output_info` with a0=0x101b5500, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1010a7cc). Calls `kt_output_rslt` with a0=0x2, a1=0x101b5528, a2=unknown, a3=unknown (`jal` at 0x1010a7f0). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x1010a840). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1010a890). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1010a8c0). Calls `sginap` with a0=0x5, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x1010a8b4).

- `clearfb` (`usr/diags/IR/bin/irsaudit` 0x100b1cd0): **Established.** Calls `hash_value` with a0=0x101ab508, a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100b1d20). Calls `mytbuInit` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100b1d38). Calls `hash_value` with a0=0x101ab518, a1=0x500, a2=unknown, a3=unknown (`jal` at 0x100b1d68). Calls `hash_value` with a0=0x101ab520, a1=0x400, a2=unknown, a3=unknown (`jal` at 0x100b1d8c). Calls `kt_output_dbug` with a0=0x2, a1=0x101ab528, a2=[a0+364], a3=unknown (`jal` at 0x100b1dc4). Calls `kt_output_dbug` with a0=0x2, a1=0x101ab538, a2=ret(hash_value)-1, a3=unknown (`jal` at 0x100b1df8).

- `TEST_texrndm` (`usr/diags/IR/bin/irsaudit` 0x10128954): **Established.** Calls `kt_output_info` with a0=0x101bde28, a1=[a0+364], a2=a2 at entry (arg2), a3=sym(KonatestTexRepeat), a4=0x1, a5=0x2, a6=0x4 (`jal` at 0x101289c8). Calls `kt_output_info` with a0=0x101bde28, a1=[a0+364], a2=a2 at entry (arg2), a3=sym(KonatestTexRepeat), a4=0x1, a5=0x2 (`jal` at 0x10128ba0). Calls `kt_output_rslt` with a0=0x2, a1=0x101bde40, a2=unknown, a3=unknown (`jal` at 0x101289ec). Calls `kt_output_rslt` with a0=0x2, a1=0x101bdee0, a2=unknown, a3=unknown (`jal` at 0x10128b70). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x10128a94). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10128abc). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10128ae8).

- `TEST_readback_comp` (`usr/diags/IR/bin/irsaudit` 0x10085904): **Established.** Calls `kt_output_info` with a0=0x1019d750, a1=[a0+364], a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x10085968). Calls `kt_output_info` with a0=0x1019d768, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10085980). Calls `kt_output_rslt` with a0=0x2, a1=0x1019d790, a2=unknown, a3=unknown (`jal` at 0x100859a4). Calls `kt_code_result` with a0=0x2, a1=unknown, a2=0x1, a3=unknown (`jal` at 0x10085a18). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10085a40). Calls `sginap` with a0=0x5, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x10085a60).

- `TEST_idmabug` (`usr/diags/IR/bin/irsaudit` 0x100b0e70): **Established.** Calls `getpagesize` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x100b0e94). Calls `memalign` with a0=ret(getpagesize), a1=0x10020, a2=unknown, a3=unknown (`jalr` at 0x100b0eb8). Stores a word at `a6+0x0 (resolved address unknown)` (`sw` at 0x100b0ed8). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2774, a2=sp-144, a3=unknown (`jalr` at 0x100b0f20). Calls `PioWriteArm32` with a0=0x200010, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100b0fec). Calls `PioWriteArm32` with a0=0x200014, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100b1000). Calls `PioReadArm32` with a0=0x200024, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100b1064). Calls `PioReadArm32` with a0=0x200060, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100b1078). Calls `fcPioWrite32` with a0=0x320, a1=0x1, a2=unknown, a3=unknown (`jal` at 0x100b1090). Calls `fcPioWrite32` with a0=0x308, a1=0x1, a2=unknown, a3=unknown (`jal` at 0x100b10a0). Calls `kt_output_info` with a0=0x101ab2b8, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100b1164).

- `jt_dump_internal_bist` (`usr/diags/IR/bin/irsaudit` 0x10015df0): **Established.** Loads a word at `a0 (arg0 at entry) +0x0` (`lw` at 0x10015e08). Loads a doubleword at `sp (at entry) -0x10` (`ld` at 0x10015e8c). The `beq` at 0x10015e28 is taken when a2(=[a0]) == s4(=0x6) -> B8 and falls through when a2(=[a0]) != s4(=0x6) -> B1 (`beq` at 0x10015e28). Calls `printf` with a0=0x101742a0, a1=unknown, a2=unknown, a3=unknown, a4=0x10174060, a5=entry(0x101741e0) (`jalr` at 0x10015e4c). Calls `printf` with a0=0x10174208, a1=unknown, a2=unknown, a3=unknown, a4=0x10174060, a5=entry(0x101741e0) (`jalr` at 0x10015eb8). Calls `printf` with a0=0x10174218, a1=unknown, a2=unknown, a3=unknown, a4=0x10174060, a5=entry(0x101741e0) (`jalr` at 0x10015ed4). Calls `printf` with a0=0x10174230, a1=unknown, a2=unknown, a3=unknown, a4=0x10174060, a5=entry(0x101741e0) (`jalr` at 0x10015eec). Calls `printf` with a0=0x10174248, a1=unknown, a2=unknown, a3=unknown, a4=0x10174060, a5=entry(0x101741e0) (`jalr` at 0x10015f04). Calls `printf` with a0=0x10174260, a1=unknown, a2=unknown, a3=unknown, a4=0x10174060, a5=entry(0x101741e0) (`jalr` at 0x10015f18). Calls `printf` with a0=0x10174270, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x10015f4c). Calls `printf` with a0=0x101741a0, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x10015f78). Calls `printf` with a0=0x10174278, a1=unknown, a2=unknown, a3=unknown, a4=0x10174060, a5=entry(0x101741e0) (`jalr` at 0x10015f8c). Calls `printf` with a0=0x10174288, a1=unknown, a2=sp-8064, a3=unknown (`jalr` at 0x10015fd8). Calls `jt_unpack_vector` with a0=sp-8064, a1=unknown, a2=unknown, a3=unknown, a4=0x10174060, a5=entry(0x101741e0) (`jal` at 0x10015fac). Loads a word at `s0+0x8 (resolved address unknown)` (`lw` at 0x10015f20). Loads a word at `a1+0x0 (resolved address unknown)` (`lw` at 0x10015f48).

- `jt_dump_internal_bist` (`usr/diags/IR/bin/irsaudit`, 524 bytes): **Established.**
  It walks 16-byte records whose type word is at +0 (`lw` at 0x10015e08 and
  0x10015e54) and stops at type 6 (`beq` at 0x10015e28 and 0x10015e64). A
  type of 9 or more is skipped (`sltiu` at 0x10015e70, `beqz` at
  0x10015e78); lower types index a table of words (`sll` at 0x10015e74,
  `jr` at 0x10015e84). One arm prints the count at +8 and then each 4-byte
  word of the array at +0xc (`lw` at 0x10015f20, 0x10015f34 and 0x10015f48;
  loop `bnez` at 0x10015f60). Another expands a vector with
  `jt_unpack_vector` (`jal` at 0x10015fac) into a stack buffer, writes a
  zero byte at the index held at +4 (`sb` at 0x10015fd0) and prints the
  text. The other arms print the word at +4, the word at +8 or both
  (`jalr` at 0x10015eb8, 0x10015ed4, 0x10015eec, 0x10015f04 and
  0x10015f18); the meaning of each type is unknown.

- `ensure_jt_init` (`usr/diags/IR/bin/irsaudit` 0x1004c1bc): **Established.** Calls `kt_output_dbug` with a0=0x9, a1=0x1018ace8, a2=0x278184, a3=a3 at entry (arg3) (`jal` at 0x1004c1f8). Loads a word at `absolute address 0x102c5cd8` (`lw` at 0x1004c20c). Loads a word at `sym(fakejtag) +0x0` (`lw` at 0x1004c224). Calls `jt_init` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1004c258). Calls `kt_output_info` with a0=0x1018ad10, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x1004c284). Calls `jt_set_error_handler` with a0=sym(libjtag_error_handler), a1=unknown, a2=unknown, a3=[0x102c5cd8] (`jal` at 0x1004c2f4). Calls `jt_set_debug_handler` with a0=sym(libjtag_debug_handler), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1004c310). Calls `kona_jt_set_custom_error_report` with a0=sym(libjtag_error_handler), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1004c32c). Stores a word at `absolute address 0x102c5cd8` (`sw` at 0x1004c348).

- `ogLibOrderRand` (`usr/diags/IR/bin/irsaudit` 0x101300d0): **Established.** Stores a word at `s0+0x0 (resolved address unknown)` (`sw` at 0x10130160). Calls `ogLibIntRand` with a0=0x0, a1=a1-1, a2=unknown, a3=unknown (`jal` at 0x101301a8). Calls `(unnamed)` with a0=unknown, a1=(a0 + (ret(ogLibIntRand) << 0x2)), a2=unknown, a3=unknown (`jal` at 0x101301bc). Calls `kt_output_dbug` with a0=0x2, a1=0x101be788, a2=unknown, a3=unknown (`jal` at 0x10130128). Calls `kt_output_dbug` with a0=0x2, a1=0x101be798, a2=unknown, a3=unknown (`jal` at 0x10130164). Calls `kt_output_dbug` with a0=0x2, a1=0x101be740, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1013021c).

- `ClipSize` (`usr/diags/IR/bin/irsaudit` 0x100f7834): **Established.** Calls `GetNextString` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x100f7858). Calls `DLGetNameData` with a0=0x0, a1=ret(GetNextString), a2=unknown, a3=unknown (`jal` at 0x100f7878). Calls `fprintf` with a0=sym(__iob)+32, a1=0x101b2290, a2=unknown, a3=unknown (`jalr` at 0x100f78b8). Calls `fprintf` with a0=sym(__iob)+32, a1=0x101b22b8, a2=unknown, a3=unknown (`jalr` at 0x100f78d4). Calls `GetNextInteger` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100f78f0). Stores a word at `ret(DLGetNameData) +0x38` (`sw` at 0x100f7918). Calls `pow` with a0=unknown, a1=unknown, a2=unknown, a3=unknown; fp f12=0x4000000000000000 (`jalr` at 0x100f7920). Stores a word at `ret(DLGetNameData) +0x34` (`swc1` at 0x100f794c).

- `shell_read_ram` (`usr/diags/IR/bin/irsaudit` 0x1005f8f0): **Established.** Calls `getpagesize` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x1005f928). Calls `memalign` with a0=ret(getpagesize), a1=0x400, a2=unknown, a3=unknown (`jalr` at 0x1005f944). Calls `setup_dma` with a0=ret(memalign), a1=(a0 << 0x2), a2=0x0, a3=unknown (`jal` at 0x1005f97c). Calls `tbRegWrite` with a0=unknown, a1=0x476, a2=unknown, a3=unknown (`jal` at 0x1005f9f4). Calls `tbRegWrite` with a0=0x477, a1=0x1, a2=unknown, a3=unknown (`jal` at 0x1005fa1c). Calls `wait_for_dma_completion` with a0=0x0, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1005fa30). Calls `kt_output_info` with a0=0x10193d18, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1005f9a0). Calls `free` with a0=ret(memalign), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x1005f9b4).

- `shell_write_ram` (`usr/diags/IR/bin/irsaudit` 0x1005f608): **Established.** Calls `getpagesize` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x1005f648). Calls `memalign` with a0=ret(getpagesize), a1=0x400, a2=unknown, a3=unknown (`jalr` at 0x1005f664). Calls `setup_dma` with a0=ret(memalign), a1=(a0 << 0x2), a2=0x0, a3=unknown (`jal` at 0x1005f688). Calls `kt_output_info` with a0=0x10193d18, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1005f6ac). Calls `free` with a0=ret(memalign), a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x1005f6c0). Calls `tbRegWrite` with a0=unknown, a1=0x476, a2=unknown, a3=unknown (`jal` at 0x1005f728). Calls `tbRegWrite` with a0=0x477, a1=0x1, a2=unknown, a3=unknown (`jal` at 0x1005f768). Stores a word at `s4-0x4 (resolved address unknown)` (`sw` at 0x1005f744). Calls `wait_for_dma_completion` with a0=0x0, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1005f77c). Calls `printf` with a0=0x10193f68, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x1005f820).

- `unscramble_rm_boardId` (`usr/diags/IR/bin/irsaudit` 0x1008d26c): **Established.** Loads a word at `s1+0x438 (resolved address unknown)` (`lw` at 0x1008d294). Calls `de_gray_code` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1008d324). Calls `de_gray_code` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1008d360). Calls `kt_output_info` with a0=0x1019e920, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1008d2e4). Calls `kt_output_info` with a0=0x1019e950, a1=0x1, a2=unknown, a3=unknown (`jal` at 0x1008d304). Calls `kt_output_info` with a0=0x1019e980, a1=ret(de_gray_code), a2=unknown, a3=unknown (`jal` at 0x1008d34c). Calls `kt_output_info` with a0=0x1019e9a0, a1=ret(de_gray_code), a2=unknown, a3=unknown (`jal` at 0x1008d388). Stores a word at `sym(total_errors) +0x0` (`sw` at 0x1008d410).

- `unscramble_rm_boardId` (`usr/diags/IR/bin/irsaudit`): **Established.**
  The 644-byte body at 0x1008d26c indexes the caller's array in steps of
  0x254 bytes (`sll`/`subu`/`addu` chain at 0x1008d274-0x1008d290) and reads
  the word at +0x438 of the record (`lw` at 0x1008d294). Bits 14:9 (`srl` at
  0x1008d2a4, `andi` at 0x1008d2b0) are compared with 1 (`beq` at
  0x1008d2c0): equal prints one message (`jal` at 0x1008d44c), otherwise it
  prints two (`jal` at 0x1008d2e4 and 0x1008d304). Bits 4:1 (`srl` at
  0x1008d320, `andi` at 0x1008d328) and bits 8:6 (`srl` at 0x1008d35c,
  `andi` at 0x1008d364) each go through `de_gray_code` and are printed with
  the raw field. Bits 18:16 (`srl` at 0x1008d394, `andi` at 0x1008d39c)
  select among five messages for the values 0 to 4 (`beqz` at 0x1008d3a8,
  `beq` at 0x1008d3b0, 0x1008d3b8, 0x1008d3c0 and 0x1008d3c8); any other
  value prints two messages (`jal` at 0x1008d3dc and 0x1008d3f4) and adds
  one to `total_errors` (`sw` at 0x1008d410).

The following entries are **Established** from complete `irsaudit` 6.5.30m fact sheets. Addresses and sizes are the symbol ranges in that binary; register offsets are the arguments passed to the diagnostic's 32-bit PIO helpers.

- `fcGfxWrite64` (`usr/diags/IR/bin/irsaudit`): **Established.**
  At 0x1013e2d0 it occupies 768 bytes. The routine takes one 64-bit graphics word, records it in the adapter's pending-write bookkeeping when tracing is enabled, and sends it through `fcPioWrite64` with FIFO offset 0 at 0x1013e590. The traced path stores the word into the pending record at 0x1013e388; a negative adapter status then sleeps through `sginap` at 0x1013e3a4. If the pending-write record is absent, it instead uses the adapter's configured alternate path and reports the access through the diagnostic callback.
- `vdBaseVocInitWithRegs` (`usr/diags/IR/bin/irsaudit`): **Established.**
  The complete 796-byte body begins at 0x10133bd8. It consumes a variable register list, sends each positive-count item to `vcWrite` with a base of 0x200 at 0x10133c90, and copies each value into the caller's register record at 0x10133cb4. Sentinel `0xdeadbeef` fields select default writes at offsets 0x201, 0x203, 0x206, 0x207, 0x230, 0x243, 0x244, 0x270, 0x281 and 0x28f; those `vcWrite` calls occur at 0x10133e28, 0x10133e44, 0x10133e58, 0x10133e6c, 0x10133e80, 0x10133e94, 0x10133ea8, 0x10133ebc, 0x10133ed0 and 0x10133ee4. It also clears the 0x140 and 0x180 record fields at 0x10133d6c and 0x10133d90, then invokes `vdResetVocFifo`, `vdBeginVCBusPoll` and `vcRead` at 0x10133d8c, 0x10133da0 and 0x10133db4 before returning the final helper result.
- `diagLoadDGOXilinxes` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Its 1080-byte body starts at 0x1011c44c. It builds a local download descriptor, obtains the diagnostic data-file handle at 0x1011c4c4, and passes the loaded image and the instruction value `0x855a` to the option-board programming helper at 0x1011c584. A failed load reports the failure and returns 1 at 0x1011c5b0; the successful path selects VC address `0x8a02` and writes payload bytes through `vcWrite` at 0x1011c718, then writes zero to address `0xc008` at 0x1011c728. The completion path closes the data source and returns the status from the final diagnostic result helper.

- `TEST_vocreg` (`usr/diags/IR/bin/irsaudit`, 988 bytes): **Established.**
  The routine begins at 0x100a61f8. It loads the board word at offset 0xdbc
  (`lw` at 0x100a6218); a zero word prints information and diagnostic lines
  from 0x100a6538 and rejoins the main path at 0x100a6240 instead of
  returning. It calls `reset_dacs` at 0x100a6258 and reads the word at offset
  0xe2c (`lw` at 0x100a6260): 8 or 2 selects that many iterations, and any
  other value prints two information lines and runs two. Each iteration stores
  three target words into the checker record at offsets 0x10, 0x14 and 0x18
  (`sw` at 0x100a6338, 0x100a6330 and 0x100a6344), calls the register checker
  at 0x100a634c and adds its return to the failure count. A nonzero return is
  printed and `kt_code_chip` is called at 0x100a6398 with the loop index plus
  61. The word at offset 0xe48 plus 20 times the index of the iteration about
  to run (`lw` at 0x100a63d0) is compared with 0x5631057: a match stores the
  alternate target set at 0x100a641c-0x100a6428 and any other value keeps the
  normal targets. After the loop, an iteration count different from the word
  at 0xe2c is printed and adds one to the failure count. A nonzero count goes
  to `kt_output_diag` (0x100a6454), `kt_code_result` (0x100a6470) and
  `kt_output_rslt` (0x100a6498); a zero count goes to `kt_code_result`
  (0x100a6510) and `kt_output_rslt` (0x100a6528).

- `TEST_gvo_vocreg` (`usr/diags/IR/bin/irsaudit`, 1184 bytes): **Established.**
  At 0x100a65d4 this variant loads the board word at offset 0xdbc (`lw` at
  0x100a65e4) and the enable word at offset 0xfb4 (`lw` at 0x100a660c); a zero
  in either prints information and diagnostic lines (from 0x100a690c and
  0x100a6988) and continues into the test. It then reads the word that the GOT
  slot at gp-23680 points to. When that word is zero it calls
  `dgo_loadXilinx_reset` at 0x100a68b8 and reads the word again; if it is
  still zero it prints a message, reports through `kt_code_result`
  (0x100a6a1c) and `kt_output_rslt` (0x100a6a44) with a count of 1 and returns
  without calling the checker. The loop index starts at 198 and the loop runs
  twice. Each iteration stores the three target words at offsets 0x10, 0x14
  and 0x18 of the checker record (`sw` at 0x100a66fc, 0x100a66f0 and
  0x100a66e8), calls the common register checker at 0x100a6704 and adds the
  return to the failure count. A nonzero return is printed and `kt_code_chip`
  at 0x100a6750 receives the loop index minus 129. When the word at offset
  0x54 plus 20 times the index of the iteration about to run (`lw` at
  0x100a6784) equals 0x5631057, the alternate target record is stored by `sw`
  at 0x100a67d0-0x100a67dc. A nonzero failure count goes to `kt_output_diag`
  (0x100a6808), `kt_code_result` (0x100a6824) and `kt_output_rslt`
  (0x100a684c).

- `TEST_dvp_vocreg` (`usr/diags/IR/bin/irsaudit`, 1064 bytes): **Established.**
  This entry at 0x100a6a74 loads the board word at 0xdbc (`lw` at 0x100a6a8c)
  and the enable word at 0xfb4 (`lw` at 0x100a6ab0). A zero in either prints
  information and diagnostic lines (from 0x100a6d8c and 0x100a6e08) and
  continues into the test, so neither word ends the routine. Two loads through
  the GOT slot at gp-24928 select the first loop index: 201 when the final
  word is nonzero and 46 when it is zero (`li` at 0x100a6af0 and 0x100a6d40).
  Each iteration stores the checker record's target words at offsets 0x10,
  0x14 and 0x18 (`sw` at 0x100a6b88, 0x100a6b6c and 0x100a6b84) and calls the
  checker at 0x100a6b90. When the return is nonzero it is printed and
  `kt_code_chip` is called at 0x100a6be0 with the loop index plus 69. The word
  at 0xfcc plus 20 times the index of the iteration about to run (`lw` at
  0x100a6c1c) is compared with 0x5631057, and a match replaces all three
  target words at 0x100a6c64-0x100a6c70. A nonzero failure total goes to
  `kt_output_diag` (0x100a6c9c), `kt_code_result` (0x100a6cb8) and
  `kt_output_rslt` (0x100a6ce0); a zero total goes to `kt_code_result`
  (0x100a6d64) and `kt_output_rslt` (0x100a6d7c).

- `TEST_tvo_vocreg` (`usr/diags/IR/bin/irsaudit`, 1020 bytes): **Established.**
  The TV-output register pass starts at 0x100a7298. It loads the board word at
  0xdbc (`lw` at 0x100a72bc) and the enable word at 0xfb4 (`lw` at
  0x100a72e0); a zero in either prints information and diagnostic lines (from
  0x100a7588 and 0x100a7604) and continues into the test. The loop index
  starts at 94 (`li` at 0x100a72f4). Each iteration stores the three checker
  target words with `sw` at 0x100a737c (offset 0x10), 0x100a7374 (0x14) and
  0x100a7388 (0x18) and calls the shared checker at 0x100a7390. A nonzero
  return is printed and `kt_code_chip` is called at 0x100a73dc with the loop
  index minus 25. The word at 0x874 plus 20 times the index of the iteration
  about to run (`lw` at 0x100a7414) is compared with 0x5631057, and a match
  writes the alternate target words at 0x100a745c-0x100a7468. A nonzero
  failure total goes to `kt_output_diag` (0x100a7498), `kt_code_result`
  (0x100a74b4) and `kt_output_rslt` (0x100a74dc); a zero total goes to
  `kt_code_result` (0x100a7560) and `kt_output_rslt` (0x100a7578).

- `TEST_vocspreg` (`usr/diags/IR/bin/irsaudit`, 904 bytes): **Established.**
  This special-register pass begins at 0x100a9680. It loads the board word at
  offset 0xdbc (`lw` at 0x100a96a4); a zero prints information and diagnostic
  lines from 0x100a9974 and then continues into the test instead of returning.
  It calls `reset_dacs` at 0x100a96e0 and reads the word at 0xe2c (`lw` at
  0x100a96e8) to run two or eight iterations. Each iteration stores one
  special-register target word at offset 8 of the checker record (`sw` at
  0x100a97b0) and calls the shared checker at 0x100aa9b0 (call at 0x100a97b8),
  adding its return to the failure count. A nonzero return is printed and
  `kt_code_chip` is called at 0x100a9804 with the loop index plus 61. The word
  at 0xe48 plus 20 times the index of the iteration about to run (`lw` at
  0x100a9834) is compared with 0x5631057, and a match stores the alternate
  target at 0x100a986c. A nonzero total goes to `kt_output_diag` (0x100a989c),
  `kt_code_result` (0x100a98b8) and `kt_output_rslt` (0x100a98e0); a zero
  total goes to `kt_code_result` (0x100a994c) and `kt_output_rslt`
  (0x100a9964).

- `TEST_gvo_vocspreg` (`usr/diags/IR/bin/irsaudit`, 1112 bytes): **Established.**
  The graphics-video special-register check begins at 0x100a9a08. It loads the
  board word at 0xdbc (`lw` at 0x100a9a18) and the enable word at 0xfb4 (`lw`
  at 0x100a9a40); a zero in either prints messages (from 0x100a9d00 and
  0x100a9d7c) and continues. It then reads the word that the GOT slot at
  gp-23680 points to: when that word is zero it calls `dgo_loadXilinx_reset`
  at 0x100a9cac and reads it again, and if it is still zero it reports a
  failure with `kt_code_result` (0x100a9e10) and `kt_output_rslt` (0x100a9e38)
  without running the checker. The loop index starts at 198. Each iteration
  stores one target word at offset 8 of the checker record (`sw` at
  0x100a9b1c) and enters the checker at 0x100aa9b0 (call at 0x100a9b24). A
  nonzero return is printed and `kt_code_chip` at 0x100a9b70 receives the loop
  index minus 129. The word at offset 0x54 plus 20 times the index of the
  iteration about to run (`lw` at 0x100a9b9c) is compared with 0x5631057, and
  a match stores the alternate target at 0x100a9bd4. A nonzero total goes to
  `kt_output_diag` (0x100a9c00), `kt_code_result` (0x100a9c1c) and
  `kt_output_rslt` (0x100a9c44).

- `TEST_dvp_vocspreg` (`usr/diags/IR/bin/irsaudit`, 1000 bytes): **Established.**
  The DVP special-register test starts at 0x100a9e60. It loads the board word
  at 0xdbc (`lw` at 0x100a9e78) and the enable word at 0xfb4 (`lw` at
  0x100a9e9c); a zero in either prints messages (from 0x100aa138 and
  0x100aa1b4) and continues into the test. Two loads through the GOT slot at
  gp-24928 select the first loop index, 201 when the word is nonzero and 46
  when it is zero (`li` at 0x100a9ed0 and 0x100aa0ec). Each iteration stores
  one target word at offset 8 of the checker record (`sw` at 0x100a9f50)
  before the checker is called at 0x100a9f58. A nonzero return is printed and
  `kt_code_chip` at 0x100a9fa8 receives the loop index plus 69. The word at
  0xfcc plus 20 times the index of the iteration about to run (`lw` at
  0x100a9fe4) is compared with 0x5631057, and a match installs the replacement
  target with `sw` at 0x100aa01c. A nonzero failure total goes to
  `kt_output_diag` (0x100aa048), `kt_code_result` (0x100aa064) and
  `kt_output_rslt` (0x100aa08c); a zero total goes to `kt_code_result`
  (0x100aa110) and `kt_output_rslt` (0x100aa128).

- `TEST_tvo_vocspreg` (`usr/diags/IR/bin/irsaudit`, 948 bytes): **Established.**
  This TV special-register wrapper begins at 0x100aa5fc. It loads the board
  word at 0xdbc (`lw` at 0x100aa620) and the enable word at 0xfb4 (`lw` at
  0x100aa644); a zero in either prints messages (from 0x100aa8ac and
  0x100aa928) and continues into the test. The loop index starts at 94 (`li`
  at 0x100aa690). Each iteration stores one target word at offset 8 of the
  checker record (`sw` at 0x100aa6d0) and calls the checker at 0x100aa6d8. A
  nonzero return is printed and `kt_code_chip` at 0x100aa724 receives the loop
  index minus 25. The word at 0x874 plus 20 times the index of the iteration
  about to run (`lw` at 0x100aa754) is compared with 0x5631057, and a match
  writes the alternate target at 0x100aa78c. A nonzero total goes to
  `kt_output_diag` (0x100aa7bc), `kt_code_result` (0x100aa7d8) and
  `kt_output_rslt` (0x100aa800); a zero total goes to `kt_code_result`
  (0x100aa884) and `kt_output_rslt` (0x100aa89c).

- `TEST_pab2vocreg` (`usr/diags/IR/bin/irsaudit` 0x10080998): **Established.** Stores a word at `absolute address 0x102cc088` (`sw` at 0x10080ab0). Stores a word at `absolute address 0x102cc08c` (`sw` at 0x10080aac). Stores a word at `absolute address 0x102cc090` (`sw` at 0x10080aa8). Calls `(unnamed)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10080ab8). Stores a word at `absolute address 0x102cc078` (`sw` at 0x10080b28).

- `TEST_pab2vocspreg` (`usr/diags/IR/bin/irsaudit` 0x100815ac): **Established.** Stores a word at `absolute address 0x102cc094` (`sw` at 0x1008168c). Stores a word at `absolute address 0x102cc09c` (`sw` at 0x100816ac). Calls `(unnamed)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100816b4). Stores a word at `absolute address 0x102cc094` (`sw` at 0x10081724). Loads a word at `a0 (arg0 at entry) +0xfb8` (`lw` at 0x10081768).

- `vdLoadVocClockParams` (`usr/diags/IR/bin/irsaudit` 0x10134320): **Established.** Calls `floor` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10134380). Calls `floor` with a0=unknown, a1=unknown, a2=0x101bf540, a3=unknown (`jalr` at 0x10134498). Calls `kt_output_dbug` with a0=0x6, a1=0x101bf618, a2=one of 0x1, 0x2, 0x4, 0x8, a3=unknown (`jal` at 0x10134404). Calls `kt_output_dbug` with a0=0x6, a1=0x101bf678, a2=unknown, a3=unknown (`jal` at 0x101344f0). Calls `kt_output_dbug` with a0=0x6, a1=0x101bf6a8, a2=unknown, a3=unknown (`jal` at 0x1013457c). Calls `kt_output_dbug` with a0=0x6, a1=0x101bf6d8, a2=unknown, a3=unknown (`jal` at 0x10134604). Calls `kt_output_dbug` with a0=0x6, a1=0x101bf708, a2=unknown, a3=unknown (`jal` at 0x101346b8). Calls `vdWaitForVocPllInterface` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10134788). Calls `vcWrite` with a0=(a0 << 0x8)+627, a1=unknown, a2=one of 0x0, 0x8, a3=unknown (`jal` at 0x101347dc). Calls `vcWrite` with a0=(a0 << 0x8)+625, a1=unknown, a2=one of 0x0, 0x8, a3=unknown (`jal` at 0x10134830). Calls `kt_output_info` with a0=0x101bf748, a1=unknown, a2=0x2, a3=0x3 (`jal` at 0x101348ec).

- `vdLoadManRequest` (`usr/diags/IR/bin/irsaudit` 0x10136f0c): **Established.** Calls `getenv` with a0=0x101bfd00, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10136f54). Calls `vdLoadVocIwsc` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jal` at 0x10137088). Calls `vcWrite` with a0=(a0 << 0x8)+580, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10137b38). Stores a word at `absolute address 0x10473064` (`sw` at 0x10137a70). Loads a word at `a1 (arg1 at entry) +0x68` (`lw` at 0x10137b6c). The `beq` at 0x10137a7c is taken when s3(=a0) == s2(=0x1) -> B64 and falls through when s3(=a0) != s2(=0x1) -> B59 (`beq` at 0x10137a7c). The `beq` at 0x10137a9c is taken when s3(=a0) == at(=0xde) -> B64 and falls through when s3(=a0) != at(=0xde) -> B63 (`beq` at 0x10137a9c). Stores a word at `s1+0x110 (resolved address unknown)` (`sw` at 0x10137b54). Stores a word at `s1+0x23c (resolved address unknown)` (`sw` at 0x10137b98).

- `enable_voc_crc` (`usr/diags/IR/bin/irsaudit` 0x101359e0): **Established.** Loads a word at `a0+0xfb4 (resolved as [sym(KONAINFO)] +0xfb4)` (`lw` at 0x10135a54). Loads a word at `a0+0xf7c (resolved as [sym(KONAINFO)] +0xf7c)` (`lw` at 0x10135ae4). Calls `jt_select_chain` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10135afc). Calls `jt_new_data_vector` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10135b7c). Calls `setSubField` with a0=unknown, a1=unknown, a2=0x830, a3=ret(jt_new_data_vector), a4=0x0 (`jal` at 0x10135c2c). Calls `jt_send_data` with a0=unknown, a1=ret(jt_new_data_vector), a2=0x0, a3=unknown (`jal` at 0x10135c48). Calls `setSubField` with a0=unknown, a1=unknown, a2=0x830, a3=ret(jt_new_data_vector), a4=0x1 (`jal` at 0x10135c90). Calls `jt_send_data` with a0=unknown, a1=ret(jt_new_data_vector), a2=0x0, a3=unknown (`jal` at 0x10135cac). Calls `vcWrite` with a0=(a1 << 0x8)+653, a1=0x3, a2=unknown, a3=unknown (`jal` at 0x10135cc8). Stores a word at `(sym(vdVocShadowRegs) + ((a1 << 0x8) << 0x2)) +0x234` (`sw` at 0x10135d00).

- `vdGetVocCrcs` (`usr/diags/IR/bin/irsaudit` 0x10136618): **Established.** Calls `jt_select_chain` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10136708). Calls `jt_new_data_vector` with a0=unknown, a1=unknown, a2=unknown, a3=-0x1 (`jal` at 0x101367a8). Calls `vdBeginVCBusPoll` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10136800). Calls `vcRead` with a0=(a0 << 0x8)+653, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10136868). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x234` (`sw` at 0x10136878). The `bne` at 0x10136874 is taken when (s4(unknown) & v0(=ret(vcRead))) != 0 -> B20 and falls through when (s4(unknown) & v0(=ret(vcRead))) == 0 -> B23 (`bne` at 0x10136874). Calls `vdEndVCBusPoll` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10136888). Calls `setSubField` with a0=unknown, a1=unknown, a2=0x830, a3=unknown, a4=0x0 (`jal` at 0x101368f0). Calls `jt_send_data` with a0=unknown, a1=unknown, a2=0x0, a3=unknown (`jal` at 0x1013690c).

- `vdInitVocCrcs` (`usr/diags/IR/bin/irsaudit` 0x10136264): **Established.** Loads a word at `a1+0xfb4 (resolved as [sym(KONAINFO)] +0xfb4)` (`lw` at 0x101362a4). Calls `jt_select_chain` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1013634c). Calls `jt_new_data_vector` with a0=unknown, a1=unknown, a2=unknown, a3=-0x1 (`jal` at 0x101363ec). Calls `setSubField` with a0=unknown, a1=unknown, a2=0x830, a3=ret(jt_new_data_vector), a4=0x0 (`jal` at 0x101364d8). Calls `jt_send_data` with a0=unknown, a1=ret(jt_new_data_vector), a2=0x0, a3=unknown (`jal` at 0x101364f4). Calls `setSubField` with a0=unknown, a1=unknown, a2=0x830, a3=ret(jt_new_data_vector), a4=0x1 (`jal` at 0x10136540). Calls `jt_send_data` with a0=unknown, a1=ret(jt_new_data_vector), a2=0x0, a3=unknown (`jal` at 0x1013655c). Calls `vcWrite` with a0=(a0 << 0x8)+653, a1=0x3, a2=unknown, a3=unknown (`jal` at 0x10136580). Stores a word at `(sym(vdVocShadowRegs) + ((a0 << 0x8) << 0x2)) +0x234` (`sw` at 0x101365a4).

- `vdLoadVocIwsc` (`usr/diags/IR/bin/irsaudit` 0x10136bc4): **Established.** Loads a word at `a1 (arg1 at entry) +0x0` (`lw` at 0x10136c20). Loads a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0xc` (`lw` at 0x10136c30). The `bne` at 0x10136c4c is taken when t8(=[(sym(vdVocShadowRegs) + (a0 << 0xa))+12]) != s2(unknown) -> B13 and falls through when t8(=[(sym(vdVocShadowRegs) + (a0 << 0xa))+12]) == s2(unknown) -> B2 (`bne` at 0x10136c4c). Calls `vcWrite` with a0=(a0 << 0x8)+515, a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10136d2c). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0xc` (`sw` at 0x10136d38). Calls `vcWrite` with a0=(a0 << 0x8)+516, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x10136d84). Calls `vcWrite` with a0=(a0 << 0x8)+517, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10136dbc). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x10` (`sw` at 0x10136d8c). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x14` (`sw` at 0x10136dc8). The `beq` at 0x10136c7c is taken when a0(=[a1+24]) == t9(=0x2) -> B23 and falls through when a0(=[a1+24]) != t9(=0x2) -> B7 (`beq` at 0x10136c7c). Calls `vcWrite` with a0=(a0 << 0x8)+516, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x10136ea0). Calls `vcWrite` with a0=(a0 << 0x8)+517, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x10136ec0). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x10` (`sw` at 0x10136ea8). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x14` (`sw` at 0x10136ecc).

- `TEST_voccpbuf` (`usr/diags/IR/bin/irsaudit` 0x100ab1d0): **Established.** Loads a word at `a0 (arg0 at entry) +0xdbc` (`lw` at 0x100ab1ec). Calls `reset_dacs` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100ab234). Loads a word at `a0 (arg0 at entry) +0xe2c` (`lw` at 0x100ab23c). Loads a word at `a0 (arg0 at entry) +0xe2c` (`lw` at 0x100ab330). Calls `(unnamed)` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100ab2d0). Calls `kt_output_info` with a0=0x101a4578, a1=[0x102cfe64], a2=ret(0x100ac1d8), a3=unknown (`jal` at 0x100ab2fc). Calls `kt_output_rslt` with a0=0x0, a1=0x101a46e0, a2=unknown, a3=unknown (`jal` at 0x100ab398).

- `TEST_voccpbuf` (`usr/diags/IR/bin/irsaudit`, 740 bytes): **Established.**
  A zero board word at +0xdbc takes the `beqz` at 0x100ab208 to a message
  path at 0x100ab438. Otherwise, after `reset_dacs`, the word at +0xe2c
  selects the pass count: 8 runs eight passes (`beq` at 0x100ab248), 2 runs
  two (`beq` at 0x100ab250), and any other value first makes two message
  calls (`jal` at 0x100ab264 and 0x100ab280) and then runs two. Each pass
  calls 0x100ac1d8 (`jal` at 0x100ab2d0) and adds the result to a failure
  total (`addu` at 0x100ab2d8). A nonzero result is printed (`jal` at
  0x100ab2fc) and passed to a second call at 0x100ab314. After the loop the
  count of passes run is compared with the word at +0xe2c (`bne` at
  0x100ab334); a difference prints a message (`jal` at 0x100ab3e4) and adds
  one to the total (`addiu` at 0x100ab3ec). A zero total makes the closing
  calls with 1 as the first argument to the result call (`jal` at
  0x100ab42c); a nonzero total goes through the call at 0x100ab354 and
  reports the total with 0 (`jal` at 0x100ab398).

- `TEST_rmcrcreg` (`usr/diags/IR/bin/irsaudit` 0x100cf3ac): **Established.** Loads a word at `a0 (arg0 at entry) +0x16c` (`lw` at 0x100cf3b8). Calls `fcPioRead32` with a0=0x208, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100cf4ac). Calls `ioctl` with a0=[sym(pipeFD)], a1=0x2775, a2=0x1, a3=unknown (`jalr` at 0x100cf528). Loads a word at `sym(Nocrc) +0x0` (`lw` at 0x100cf540). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x100cf558).

- `TEST_rmcrcreg` (`usr/diags/IR/bin/irsaudit`, 876 bytes): **Established.**
  The word at +0x16c must be 1, 2 or 4 (`beq` at 0x100cf3d8, 0x100cf3e4 and
  0x100cf3f0). Any other value is printed (`jal` at 0x100cf40c), reported
  through the result call with 2 as its first argument (`jal` at
  0x100cf430) and returned from (`b` at 0x100cf438). Reads of host offset
  0x208 repeat while the value is nonzero: each repeat calls an indirect
  helper with 5 (`jalr` at 0x100cf4d0; `addiu` at 0x100cf4d4) and reads
  again, up to five times (`sltiu` at 0x100cf4ec); running out of tries takes
  the exit at 0x100cf5d0. The `ioctl` 0x2775 with 1 at 0x100cf528 fails on a
  negative result (`bltz` at 0x100cf530); a zero shared enable word skips
  the CRC operation (`beqz` at 0x100cf544). The CRC operation at 0x100cf558
  returning zero takes the `beqz` at 0x100cf560 to a result call with 1
  (`jal` at 0x100cf650); a nonzero result prints a diagnostic (`jal` at
  0x100cf580) and reports 0 (`jal` at 0x100cf598). Both paths then issue
  `ioctl` 0x2775 with 0 (`jalr` at 0x100cf5ac) before returning.

- `vdManRequest` (`usr/diags/IR/bin/irsaudit` 0x10137e20): **Established.** Calls `vcRead` with a0=(a0 << 0x8)+580, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10137eac). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x110` (`sw` at 0x10137ec0). Calls `vcWrite` with a0=(a0 << 0x8)+580, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10137eec). Calls `vcWrite` with a0=(a0 << 0x8)+580, a1=(ret(vcRead) | 0x18), a2=unknown, a3=unknown (`jal` at 0x10137f08). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x110` (`sw` at 0x10137f0c). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x110` (`sw` at 0x10137f18). Loads a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x4` (`lw` at 0x10137f1c). Calls `vcWrite` with a0=(a0 << 0x8)+513, a1=unknown, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10137f60).

- `vdBeginAutoRequest` (`usr/diags/IR/bin/irsaudit` 0x10138c94): **Established.** Calls `vcWrite` with a0=(a0 << 0x8)+519, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x10138cf8). Stores a word at `(sym(vdVocShadowRegs) + ((a0 << 0x8) << 0x2)) +0x1c` (`sw` at 0x10138d28). Stores a word at `a1 (arg1 at entry) +0x18` (`sw` at 0x10138d3c). Calls `vdLoadManRequest` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jal` at 0x10138d44). Calls `vcWrite` with a0=(a0 << 0x8)+580, a1=([(sym(vdVocShadowRegs) + ((a0 << 0x8) << 0x2))+272] | 0x1), a2=unknown, a3=unknown (`jal` at 0x10138d5c). Calls `vcWrite` with a0=(a0 << 0x8)+513, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10138d80). Stores a word at `(sym(vdVocShadowRegs) + ((a0 << 0x8) << 0x2)) +0x4` (`sw` at 0x10138d88). Calls `vdSetVocInternalClock` with a0=a0 at entry (arg0), a1=0x0, a2=unknown, a3=unknown; fp f14=0x4191e1a300000000 (`jal` at 0x10138db8). Calls `vcWrite` with a0=(a0 << 0x8)+519, a1=0x2100, a2=unknown, a3=unknown (`jal` at 0x10138dcc).

- `ensure_voc_crc_done` (`usr/diags/IR/bin/irsaudit` 0x10135e04): **Established.** Loads a word at `a0+0xf7c (resolved as [sym(KONAINFO)] +0xf7c)` (`lw` at 0x10135f18). Calls `jt_select_chain` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10135f30). Calls `vcRead` with a0=unknown, a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10135fe4). Stores a word at `a2+0x234 (resolved address unknown)` (`sw` at 0x1013600c). The `beq` at 0x10136028 is taken when s3(unknown) == a2(=0x31) -> B29 and falls through when s3(unknown) != a2(=0x31) -> B15 (`beq` at 0x10136028). Calls `setSubField` with a0=unknown, a1=unknown, a2=0x830, a3=ret(jt_new_data_vector), a4=0x0 (`jal` at 0x101361a0). Calls `jt_send_data` with a0=unknown, a1=ret(jt_new_data_vector), a2=0x0, a3=unknown (`jal` at 0x101361bc).

- `vdDrainVocFifo` (`usr/diags/IR/bin/irsaudit` 0x1013578c): **Established.** Calls `vdDisableVocFifoReset` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x101357c4). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x18` (`sw` at 0x10135814). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x1c` (`sw` at 0x1013583c). Calls `vcWrite` with a0=(a0 << 0x8)+518, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x1013580c). Calls `vcWrite` with a0=(a0 << 0x8)+519, a1=0x0, a2=unknown, a3=unknown (`jal` at 0x10135834). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=unknown, a3=unknown (`jal` at 0x10135850). Calls `vcWrite` with a0=(a0 << 0x8)+518, a1=0x1, a2=unknown, a3=unknown (`jal` at 0x10135870). Stores a word at `(sym(vdVocShadowRegs) + (a0 << 0xa)) +0x18` (`sw` at 0x10135878). Calls `vdGetVocCrcs` with a0=a0 at entry (arg0), a1=sp-176, a2=sp-128, a3=unknown (`jal` at 0x101358c0). Calls `kt_output_info` with a0=0x101bf980, a1=a0 at entry (arg0), a2=unknown, a3=unknown (`jal` at 0x101359d0).

- `vdSetVocInternalClock` (`usr/diags/IR/bin/irsaudit` 0x10134908): **Established.** Calls `vcRead` with a0=0x8e, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10134958). Calls `vcWrite` with a0=0x8e, a1=(ret(vcRead) | 0x800000), a2=unknown, a3=unknown (`jal` at 0x10134978). Calls `vcWrite` with a0=(a0 << 0x8)+641, a1=one of 0x0, 0x1, a2=unknown, a3=unknown (`jal` at 0x10134a28). Stores a word at `(sym(vdVocShadowRegs) + ((a0 << 0x8) << 0x2)) +0x204` (`sw` at 0x10134a4c). Calls `vcWrite` with a0=(a0 << 0x8)+560, a1=one of 0x0, 0x10, a2=unknown, a3=unknown (`jal` at 0x10134a5c). Calls `vdLoadVocClockParams` with a0=a0 at entry (arg0), a1=unknown, a2=0x1, a3=unknown, a4=0x0; fp f13=one of 0x4167688780000000, 0x416c222600000000, f15=f14 (`jal` at 0x10134a9c). Calls `vdWaitForVocPllInterface` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x10134ab4). Calls `vcWrite` with a0=(a0 << 0x8)+624, a1=0x8, a2=unknown, a3=unknown (`jal` at 0x10134acc). Calls `vdBackdoorVocClock` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown, a4=0x0, a5=sym(KONAINFO); fp f13=f14 (`jal` at 0x10134b9c).

- `initCRCreg` (`usr/diags/IR/bin/irsaudit` 0x1001ede4): **Established.** Calls `kt_output_dbug` with a0=0x8, a1=0x10176728, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1001ee28). Calls `(unnamed)` with a0=a0 at entry (arg0), a1=0x10176750, a2=unknown, a3=unknown (`jal` at 0x1001ee4c). Calls `jtcrc_initialize_crcs` with a0=[a1+8], a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1001ee7c). Calls `sleep` with a0=0x1, a1=unknown, a2=unknown, a3=unknown (`jalr` at 0x1001ee90). Calls `jtcrc_register_konainfo` with a0=a0 at entry (arg0), a1=unknown, a2=unknown, a3=unknown (`jal` at 0x1001eec4). Loads a word at `absolute address 0x102c1e60` (`lw` at 0x1001ee60). Stores a word at `absolute address 0x102c1e60` (`sw` at 0x1001eedc). Loads a word at `a1 (arg1 at entry) +0x8` (`lw` at 0x1001ee98).

- `tbuInterlaceDownLoads` (`usr/diags/IR/bin/irsaudit`): **Established.**
  At 0x10141b8c it occupies 224 bytes and reads the 64-bit texture shadow at the second argument plus 0x3fe28 (`ld` at 0x10141b94). It compares bit 15 of that shadow with the requested mode in the first argument. When they are equal it skips the update and the trace report. When they differ it replaces bit 15 with the mode, keeps every other shadow bit, issues token 0x7fc5 through the command writer (`jal` at 0x10141bec) and commits the new shadow with `sd` at 0x10141bf0. On that differing path only, a nonzero trace word at offset 4 of the diagnostic state selects the call at 0x10141c40, which reports the requested mode. On both paths the mode is then stored in the word at offset 0 of the diagnostic state with `sw` at 0x10141c5c.

- `tbuLoadWaitOnDrawID` (`usr/diags/IR/bin/irsaudit`): **Established.**
  This 184-byte helper starts at 0x1014665c and replaces the low 20 bits of the 64-bit shadow at the second argument plus 0x28010 with the low 20 bits of its first argument, keeping the upper bits. The `sd` at 0x101466b0 sits in the delay slot of the `jal` at 0x101466ac, which submits token 0x5002 through the command writer. It calls the trace reporter at 0x101466fc only when the word at offset 4 of the diagnostic state is nonzero.

- `tbuSendDrawID` (`usr/diags/IR/bin/irsaudit`): **Established.**
  Beginning at 0x10146714, the 188-byte sender replaces the low 20 bits of the 64-bit shadow at the second argument plus 0x8018 with its first argument, keeping the upper bits. The `sd` at 0x10146768 is in the delay slot of the command-writer call at 0x10146764, which sends token 0x1003. The report call at 0x101467b8 receives the original argument and runs only when the word at offset 4 of the diagnostic state is nonzero.

- `tbuSendLoadID` (`usr/diags/IR/bin/irsaudit`): **Established.**
  The complete 188-byte routine is at 0x101467d0. It masks the caller value to 20 bits, substitutes it into the low bits of the 64-bit shadow at the second argument plus 0x28018, and saves the result with `sd` at 0x10146824. The command writer at 0x10146820 is called with token 0x5003. A nonzero word at offset 4 of the diagnostic state selects the reporting call at 0x10146874.

- `tbuDrawWaitOnLoadID` (`usr/diags/IR/bin/irsaudit`): **Established.**
  This helper occupies 184 bytes from 0x1014688c. The low 20 bits of its first argument replace the corresponding field in the 64-bit shadow at the second argument plus 0x8010, and the updated doubleword is stored by `sd` at 0x101468e0. The command writer at 0x101468dc is invoked with token 0x1002. The trace path reaches the reporter at 0x1014692c when the word at offset 4 of the diagnostic state is nonzero.

- `tbuClipBorder` (`usr/diags/IR/bin/irsaudit`): **Established.**
  At 0x1014e58c, this 260-byte routine first calls the reporting routine at 0x1014e5e8 with its first argument, without testing the trace word. It then shifts the argument left by 12, masks the result to bits 21:12 (0x3ff000), merges those bits into the 64-bit shadow at the second argument plus 0x1feb0 with all other bits kept, and writes the shadow with `sd` at 0x1014e630. The command-writer call at 0x1014e62c uses token 0x3fd6. The second report call at 0x1014e670 passes the original border value and runs only when the word at offset 4 of the diagnostic state is nonzero.

- `tbuNewMipmap` (`usr/diags/IR/bin/irsaudit`): **Established.**
  The 320-byte constructor at 0x1014f04c allocates a 0x12f8-byte object with `malloc` (call at 0x1014f074), clears its scalar fields, and initializes fifteen subrecords at a 0x28-byte stride. Each subrecord receives zero fields, a -1 marker via `sw` at 0x1014f0b4, and an alternating 0 or 1 selector stored by `sw` at 0x1014f0d0. The parent receives constants 0x10, 4, 1 and 6 at 0x1014f0d8, 0x1014f124, 0x1014f130 and 0x1014f154. Two calls to `tbuGetNextTexID` at 0x1014f158 and 0x1014f164 return values that `sw` at 0x1014f168 and 0x1014f178 store in fields 0x5c and 0x60; the `sw` at 0x1014f15c in the first delay slot clears field 0x3c. The object pointer is then returned.

- `tbuGenMipmap` (`usr/diags/IR/bin/irsaudit`): **Established.**
  From 0x1014fac4, this 96-byte initializer fixes the caller record's mode fields to 6 and 1 using `sw` at 0x1014fac8 and 0x1014fad0, clears offsets 0x48, 0x4c and 0x18 with stores at 0x1014fad4, 0x1014fad8 and 0x1014faf8, and copies three further arguments to offsets 0xc, 0x10 and 0x14 at 0x1014fb04, 0x1014fb08 and 0x1014fb10. It then calls `tbuGenerateMipmaps` with `jal` at 0x1014fb0c and returns.

- `tbuLoadBicubicTable` (`usr/diags/IR/bin/irsaudit`): **Established.**
  This 324-byte loader begins at 0x10154238 and walks 33 source records of 16 bytes from the diagnostic table at state offset 0x38. For each record it packs four low-byte fields into the 64-bit shadow at the first argument plus 0xc100 (advancing 8 bytes per record); the four successive writes are `sd` at 0x101542d0, 0x101542e8, 0x10154308 and 0x10154330. `addiu` at 0x10154310 advances the source pointer 16 bytes, `addiu` at 0x1015433c the destination 8 bytes, and `slti` at 0x10154338 counts the 33 records. The command writer at 0x1015432c is called for tokens 0x1820 through 0x1840, with the token incremented in the branch delay slot at 0x10154344.

- `tbuLoadBicubicTable2` (`usr/diags/IR/bin/irsaudit`): **Established.**
  The 324-byte body at 0x1015437c has the same 33-record packing loop but reads its four-byte groups from state offset 0x248. It deposits the assembled bytes in the shadow at the first argument plus 0xc100 with `sd` at 0x10154414, 0x1015442c, 0x1015444c and 0x10154474. The final store is in the delay slot of the writer call at 0x10154470, while the loop counts with `slti` at 0x1015447c and advances token values starting at 0x1820.

- `tbuLoadSharpenTable` (`usr/diags/IR/bin/irsaudit`): **Established.**
  At 0x101544c0, this 340-byte routine processes sixteen 16-byte table records beginning at diagnostic state offset 0x458. It folds their 10-bit fields into separate bit ranges of the 64-bit shadow at the first argument plus 0xc000 (advancing 8 bytes per record), using `sd` at 0x1015455c, 0x1015457c, 0x10154598 and 0x101545c8. `addiu` at 0x10154590 advances the source pointer 16 bytes, the count is tested by `slti` at 0x101545d0, and the token is incremented in the branch delay slot at 0x101545dc. The command writer at 0x101545c4 is invoked with tokens 0x1800 through 0x180f.

- `tbuLoadDetailTable` (`usr/diags/IR/bin/irsaudit`): **Established.**
  This 340-byte table path starts at 0x10154614. It consumes sixteen records from state offset 0x558, masks and positions the four source fields, and commits each assembly stage to the 64-bit shadow at the first argument plus 0xc080 by `sd` at 0x101546b0, 0x101546d0, 0x101546ec and 0x1015471c. The branch at 0x1015472c repeats until the counter reaches 16; each iteration uses the command writer at 0x10154718 with token values starting at 0x1810.

- `tbuSetScissorRect` (`usr/diags/IR/bin/irsaudit`): **Established.**
  The 684-byte state setter at 0x1015c684 returns without commands when four cached words (offsets 0x79c to 0x7a8 of the state in the GOT slot at gp-28724) already equal its four arguments. Otherwise it updates two 64-bit shadows at the word at offset 0x110 of the diagnostic state plus 0x1fe10 and plus 0x1fe18. The first shadow takes the first argument shifted left by 3 (`sd` at 0x1015c740), then the sum of the first and third arguments shifted left by 3 (`sd` at 0x1015c7e4, in the delay slot of the token-0x3fc2 writer call at 0x1015c7e0). The second shadow takes the second argument and then the sum of the second and fourth arguments in the same way (`sd` at 0x1015c840 and 0x1015c8a8, token 0x3fc3 at 0x1015c8a4). It records the four new arguments as words with `sw` at 0x1015c8ec, 0x1015c8f0, 0x1015c8f4 and 0x1015c8f8.

- `tbuGenPattern` (`usr/diags/IR/bin/irsaudit` 0x1014ffe8): **Established.** Calls `malloc` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x10150054). Stores a word at `a0 (arg0 at entry) +0x68` (`sw` at 0x1015005c). Stores a word at `a0 (arg0 at entry) +0x68` (`sw` at 0x101500b0). Stores a word at `a0 (arg0 at entry) +0x6c` (`sw` at 0x101500c4). Stores a word at `a0 (arg0 at entry) +0x6c` (`sw` at 0x101500d8). Stores a word at `a0 (arg0 at entry) +0x70` (`sw` at 0x101500f8). Stores a word at `a0 (arg0 at entry) +0x74` (`sw` at 0x10150110). Stores a word at `a0 (arg0 at entry) +0x78` (`sw` at 0x10150104). Stores a word at `a0 (arg0 at entry) +0x7c` (`sw` at 0x101500e0). Stores a word at `a0 (arg0 at entry) +0x80` (`sw` at 0x10150060). Stores a word at `a0 (arg0 at entry) +0x8c` (`sw` at 0x10150064). Loads a word at `table(0x101c27f0) +0x0` (`lw` at 0x1015011c). Calls `fprintf` with a0=sym(__iob)+32, a1=0x101c28c8, a2=a1 at entry (arg1), a3=unknown, a6=0x101c16a8, a7=ret(malloc) (`jalr` at 0x10150154). Stores a word at `s0+0xc (resolved address unknown)` (`sw` at 0x1015020c). Stores a word at `s0-0x8 (resolved address unknown)` (`sw` at 0x10150218). Stores a word at `s0-0xc (resolved address unknown)` (`sw` at 0x10150220). Stores a word at `s0-0x10 (resolved address unknown)` (`sw` at 0x10150228). Returns `v0 = unknown` at 0x101501a4.

- `tbuGenPattern3D` (`usr/diags/IR/bin/irsaudit` 0x10152140): **Established.** Stores a word at `a0 (arg0 at entry) +0x3c` (`sw` at 0x101521b4). Calls `malloc` with a0=unknown, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x101521c0). Stores a word at `a0 (arg0 at entry) +0x68` (`sw` at 0x101521c8). Stores a word at `a0 (arg0 at entry) +0x8c` (`sw` at 0x101521cc). Stores a word at `a0 (arg0 at entry) +0x68` (`sw` at 0x10152214). Stores a word at `a0 (arg0 at entry) +0x6c` (`sw` at 0x1015223c). Stores a word at `a0 (arg0 at entry) +0x70` (`sw` at 0x10152264). Stores a word at `a0 (arg0 at entry) +0x74` (`sw` at 0x1015229c). Stores a word at `a0 (arg0 at entry) +0x78` (`sw` at 0x10152290). Stores a word at `a0 (arg0 at entry) +0x7c` (`sw` at 0x10152284). Loads a word at `table(0x101c28e8) +0x0` (`lw` at 0x101522a8). Calls `fprintf` with a0=sym(__iob)+32, a1=0x101c28c8, a2=a1 at entry (arg1), a3=unknown (`jalr` at 0x101522e0). Returns `v0 = unknown` at 0x10152330.

- `test_prims` (`usr/diags/IR/bin/irsaudit` 0x101000d4): **Established.** Calls `tbuInitTexture` with a0=sp-5408, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10100128). Calls `tbuGenPattern` with a0=sp-5408, a1=0x2, a2=0x40, a3=0x40 (`jal` at 0x10100148). Calls `tbuGenMipmap` with a0=sp-5408, a1=0x1, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x1010016c). Calls `tbRegWrite` with a0=0x1c03, a1=[[sym(rm)]+57368]:8, a2=[sym(rm)], a3=unknown (`jal` at 0x1010027c). Calls `tbRegWrite` with a0=0x1c03, a1=[[sym(rm)]+57368]:8, a2=[sym(rm)], a3=unknown, a4=[sym(rm)]+65536 (`jal` at 0x10100354).

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
  Address 0x10038444; size 104 bytes. It writes the caller's address to host offset 0x3e8 and its value to the non-incrementing ARM data port 0x3f0. It returns the second PIO-write result; the calls are at 0x1003847c and 0x1003848c.
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
  0x10037aa0 and 0x10037ab4.)
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

- `TEST_rm_chains` (`usr/diags/IR/bin/irsaudit` 0x100dffb8): **Established.**
  This 10180-byte test constructs the raster-manager scan-test context, walks
  the selected chain descriptors, and routes each result through the diagnostic
  reporting record. The initial context setup calls the chain setup helper at
  0x100e0238 and the first chain operation at 0x100e0374; later iterations
  repeat the operation through calls at 0x100e04fc, 0x100e0518 and
  0x100e0544. A failed descriptor or scan operation takes the test's failure
  path, while the completed walk returns the accumulated diagnostic status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100e0238, 0x100e0374, 0x100e04fc.)

- `crc_imptest1` (`usr/diags/IR/bin/irsaudit` 0x100d8b78): **Established.**
  The 7700-byte body initializes an IMP CRC test record, emits the raster-bus
  setup and drawing sequence, and compares the collected result before leaving
  through the diagnostic result path. Its setup begins with the helper calls at
  0x100d8bcc and 0x100d8be0; the test starts its first programmed sequence with
  the call at 0x100d8e4c and performs the later comparison work through calls at
  0x100d921c and 0x100d9250. Error branches preserve the reported mismatch and
  return the test status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100d8bcc, 0x100d8e4c, 0x100d921c.)

- `crc_pgtest` (`usr/diags/IR/bin/irsaudit` 0x100d47d4): **Established.**
  This 7684-byte routine prepares the pixel-generator CRC context and sends its
  register sequence through the local FIFO writer. It issues the first control
  operation at 0x100d48cc, repeats the setup at 0x100d4970, and sends the
  0x1c03 and 0x1c0b test operations at 0x100d4a8c and 0x100d4b54. The later
  branches invoke the drawing and CRC comparison helpers, then return the
  recorded diagnostic result; setup failure reports an error before that return.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100d48cc, 0x100d4970, 0x100d4a8c,
  0x100d4b54.)

- `jt_execute_internal_bists` (`usr/diags/IR/bin/irsaudit` 0x10016b9c): **Established.**
  Its 6440-byte body selects each requested internal scan self-test, loads the
  test data, starts execution, and collects the result and error count. The
  common setup calls occur at 0x10016bcc and 0x10016c1c; the per-chip execution
  path calls the scan operation at 0x10016de8 and the result reader at
  0x10016e60. It returns the accumulated scan status after reporting failures
  for a rejected selection or unsuccessful BIST.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x10016bcc, 0x10016de8, 0x10016e60.)

- `test_prims` (`usr/diags/IR/bin/irsaudit` 0x101000d4): **Established.**
  The 5824-byte drawing test initializes its raster-bus state, builds primitive
  data from the test parameters, submits the primitive sequence, and waits for
  the resulting status. Initialization and test setup call the local helpers at
  0x10100128, 0x10100148 and 0x1010016c; the first primitive submission is
  reached through 0x1010027c and the later completion path through 0x10100354.
  Invalid setup and timeout branches report the diagnostic failure and return
  the test result.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x10100128, 0x1010016c, 0x1010027c,
  0x10100354.)

- `TEST_rm_chainlen` (`usr/diags/IR/bin/irsaudit` 0x100e277c): **Established.**
  This 5412-byte test builds a scan descriptor for the raster-manager chain,
  resets and measures it, then checks the measured length against the selected
  test record. Descriptor setup uses calls at 0x100e27d0 and 0x100e27f4; the
  chain operation and result path are reached at 0x100e291c, 0x100e2968 and
  0x100e29e4. It reports a mismatch or scan error and returns the resulting
  diagnostic status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100e27d0, 0x100e291c, 0x100e2968.)

- `TEST_rm_chainlen_no_sysprobe` (`usr/diags/IR/bin/irsaudit` 0x100f06c4): **Established.**
  The 4848-byte variant creates the raster-manager chain-length descriptor and
  performs the reset, shift and length comparison without the system-probe
  precheck. Its setup calls are at 0x100f0700 and 0x100f0724; the scan and
  result stages use 0x100f0824, 0x100f08b0 and 0x100f090c. A failed chain
  access or unexpected count is sent to the diagnostic failure path, and the
  routine returns that path's status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100f0700, 0x100f0824, 0x100f090c.)

- `TEST_rm_chainlen_1bit` (`usr/diags/IR/bin/irsaudit` 0x100ee3c0): **Established.**
  Its 4728-byte body runs the raster-manager chain-length check with the
  one-bit test configuration, then records the observed count and pass/fail
  result. It prepares the chain through 0x100ee3f8 and 0x100ee474, enters the
  scan sequence at 0x100ee614, and uses the result path at 0x100ee738 and
  0x100ee77c. The final return carries the diagnostic status after mismatch
  reporting.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100ee3f8, 0x100ee614, 0x100ee738.)

- `TEST_rm_chainlen_imp8d_instr` (`usr/diags/IR/bin/irsaudit` 0x100f2a18): **Established.**
  This 4564-byte test selects the IMP8D instruction scan register, executes its
  chain-length transaction, and compares the returned count with the test
  record. It sets up the selected chain at 0x100f2a64 and 0x100f2acc, performs
  the scan at 0x100f2be4 and 0x100f2c60, and reaches the comparison/reporting
  path at 0x100f2d14. Bad scan state and a count mismatch both return through
  the diagnostic error handling.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100f2a64, 0x100f2be4, 0x100f2d14.)

- `TEST_rm_chainlen_sample` (`usr/diags/IR/bin/irsaudit` 0x100e7008): **Established.**
  The 4232-byte sample-register test initializes the raster-manager scan chain,
  shifts the sample configuration, and validates the measured chain length.
  The descriptor and reset sequence uses 0x100e7044 and 0x100e7064; the scan
  operation begins at 0x100e71d4 and the result handling continues at
  0x100e7214 and 0x100e724c. It returns the recorded pass or failure status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100e7044, 0x100e71d4, 0x100e7214.)

- `TEST_rm_chainlen_crcdata` (`usr/diags/IR/bin/irsaudit` 0x100ea1a0): **Established.**
  Its 4232-byte body tests the CRC-data scan register by setting up the chain,
  shifting the register request, and checking the resulting length and status.
  It enters setup at 0x100ea1dc and 0x100ea1fc, performs the scan at
  0x100ea36c and 0x100ea3ac, and sends the result through 0x100ea40c. The
  mismatch branch reports the failed CRC-data check before returning.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100ea1dc, 0x100ea36c, 0x100ea40c.)

- `TEST_rm_chainlen_tcbistdata` (`usr/diags/IR/bin/irsaudit` 0x100eb228): **Established.**
  This 4232-byte routine selects the TCBIST-data scan register, performs the
  same reset-and-shift measurement sequence, and checks the returned chain
  result. The setup calls are at 0x100eb264 and 0x100eb284, the scan begins at
  0x100eb3f4, and the result path uses 0x100eb434 and 0x100eb494. It returns
  the diagnostic status after reporting an access or count failure.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100eb264, 0x100eb3f4, 0x100eb434.)

- `TEST_rm_chainlen_bistctrl` (`usr/diags/IR/bin/irsaudit` 0x100ed338): **Established.**
  The 4232-byte BIST-control variant prepares its scan descriptor, shifts the
  selected register and compares the observed chain length. It uses setup calls
  at 0x100ed374 and 0x100ed394, starts the scan at 0x100ed504, and handles the
  result through 0x100ed544 and 0x100ed5a4. Failure reporting precedes the
  routine's final diagnostic return.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100ed374, 0x100ed504, 0x100ed544.)

- `TEST_rm_chainlen_intmode` (`usr/diags/IR/bin/irsaudit` 0x100ef63c): **Established.**
  This 4232-byte test selects the interrupt-mode scan register, carries out the
  reset and chain-length transaction, and records the comparison result. Its
  setup is reached through 0x100ef678 and 0x100ef698; the scan starts at
  0x100ef808 and the result/reporting path uses 0x100ef848 and 0x100ef8a8.
  An access error or unexpected count returns the diagnostic failure status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100ef678, 0x100ef808, 0x100ef848.)

- `TEST_rm_chainlen_imp8d` (`usr/diags/IR/bin/irsaudit` 0x100f19b4): **Established.**
  The 4196-byte IMP8D scan-register test builds its descriptor, performs the
  reset-and-shift operation, and validates the chain result against the test
  record. It prepares the transaction at 0x100f1a04 and 0x100f1a28, invokes the
  scan path at 0x100f1b28 and 0x100f1b98, and reports the comparison through
  0x100f1be8. The return value is the accumulated diagnostic status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100f1a04, 0x100f1b28, 0x100f1be8.)

- `gedStressVtu` (`usr/diags/IR/bin/irsaudit` 0x10073b4c): **Established.**
  The 4184-byte stress routine initializes a distributor VTU test, fills its
  instruction and data inputs, activates the distributor, and checks the
  resulting status. The setup sequence starts at 0x10073b88 and 0x10073bac,
  while the repeated input operations use 0x10073bec, 0x10073bf8 and
  0x10073c04. It reports a failed stress iteration and returns the accumulated
  test result after the completion checks.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x10073b88, 0x10073bec, 0x10073c04.)

- `crc_pgtest1` (`usr/diags/IR/bin/irsaudit` 0x100d65d8): **Established.**
  This 3740-byte pixel-generator CRC test creates its test state, emits the
  register and drawing sequence, and compares the collected CRC. It initializes
  through 0x100d6634 and 0x100d6658, sends the first test operation at
  0x100d669c, and uses the later collection path at 0x100d67a0 and
  0x100d67e4. Mismatch reporting is followed by the routine's diagnostic
  status return.
  (`usr/diags/IR/bin/irsaudit`, `jalr` at 0x100d6634, `jal` at 0x100d669c,
  0x100d67e4.)

- `init_kona_hw_access` (`usr/diags/IR/bin/irsaudit` 0x10163938): **Established.**
  Its 3304-byte body selects the pipe access mode, initializes the hardware
  access record, and installs the read, write and reporting paths used by later
  diagnostic tests. The mode setup calls occur at 0x10163974, 0x101639c0 and
  0x10163a10; the record-building path continues through 0x10163aa0 and
  0x10163acc. It returns the initialized access status, with invalid setup
  routed to the diagnostic error path.
  (`usr/diags/IR/bin/irsaudit`, `jalr` at 0x10163974, 0x101639c0, 0x10163aa0.)

- `smallwrite` (`usr/diags/IR/bin/irsaudit` 0x100a2ff8): **Established.**
  The 3252-byte helper formats a short raster-bus write from the caller's
  address and data, emits the selected words, and waits for the write result.
  It enters the write setup at 0x100a3064 and 0x100a307c, sends the transfer
  through 0x100a30b4 and 0x100a30e0, and handles completion at 0x100a314c and
  0x100a31d0. The returned value is the transfer or diagnostic status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100a3064, 0x100a30b4, 0x100a314c.)

- `dgo_pixel_readback` (`usr/diags/IR/bin/irsaudit` 0x1011e958): **Established.**
  This 2908-byte display-option test configures a frame-buffer readback,
  requests the pixel data, and compares the returned words with the test
  record. Display setup begins at 0x1011e994 and 0x1011e9ac, the readback
  sequence uses 0x1011ea20, 0x1011ea48 and 0x1011ea68, and the comparison path
  continues at 0x1011ead4 and 0x1011eaec. It reports a mismatch before returning
  the test status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x1011e994, 0x1011ea20, 0x1011ead4.)

- `myFrameBufferWriteWords` (`usr/diags/IR/bin/irsaudit` 0x100b4bf4): **Established.**
  Its 2760-byte body converts the caller's word range into raster-bus writes,
  submits the frame-buffer transaction, and waits for completion. It prepares
  the transfer at 0x100b4c78, 0x100b4c98 and 0x100b4cb8, writes the first data
  group through 0x100b4ce0 and 0x100b4cf4, and reaches the completion checks at
  0x100b4d24 and 0x100b4d50. A short write or hardware error returns the
  recorded failure status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100b4c78, 0x100b4ce0, 0x100b4d24.)

- `myFrameBufferWriteTest2` (`usr/diags/IR/bin/irsaudit` 0x100b23f4): **Established.**
  The 2440-byte test initializes a two-dimensional frame-buffer write pattern,
  sends its rows through the raster-bus helper, and verifies completion. The
  setup calls at 0x100b2460 and 0x100b2478 prepare the test, row emission starts
  at 0x100b24b4 and 0x100b24e4, and the verification path uses 0x100b2550 and
  0x100b25d0. It returns the diagnostic result after reporting a failed row.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100b2460, 0x100b24b4, 0x100b2550.)

- `impvid` (`usr/diags/IR/bin/irsaudit` 0x100781b0): **Established.**
  This 1980-byte IMP video test selects the video path, programs its raster-bus
  state, waits for the transfer, and records the returned status. It performs
  initial selection at 0x100781d8 and 0x100781fc, submits the video operation
  at 0x10078340 and 0x10078384, and reaches the wait and report path through
  0x10078428 and 0x10078448. Failure leaves the diagnostic result set before
  the final return.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100781d8, 0x10078340, 0x10078428.)

- `dgo_clearfb` (`usr/diags/IR/bin/irsaudit` 0x1011582c): **Established.**
  The 1964-byte display-generator helper selects the frame-buffer mode, clears
  the target through raster-bus writes, and waits for drawing completion. It
  initializes the option state at 0x10115870 and 0x1011589c, emits the clear
  sequence through 0x101158ec and 0x10115904, and checks the result at
  0x10115944 and 0x10115970. The routine reports failed setup or completion and
  returns the resulting status.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x10115870, `jalr` at 0x101158ec,
  `jal` at 0x10115944.)

- `clearfb_vid` (`usr/diags/IR/bin/irsaudit` 0x100a0ea4): **Established.**
  Its 1896-byte body prepares a video frame-buffer clear, writes the required
  raster-bus registers, and waits until the draw operation finishes. The setup
  path uses 0x100a0ef8, 0x100a0f24 and 0x100a0f54; the clear and completion
  helpers are called at 0x100a0f78, 0x100a0fb0 and 0x100a0fe4. It returns the
  recorded diagnostic status on both the normal and error paths.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100a0ef8, 0x100a0f78, 0x100a0fb0.)

- `kt_exit_crashlog` (`usr/diags/IR/bin/irsaudit` 0x10044df4): **Established.**
  This 1868-byte reporting routine closes the current diagnostic crash log,
  writes the pending test and status records, and releases the associated file
  state. It enters the log-finalization path at 0x10044ea0 and 0x10044f4c,
  performs the record writes through 0x10044f74 and 0x10044fa0, and completes
  cleanup at 0x10045030 and 0x100450c8. The final return preserves the exit
  status after a failed log write.
  (`usr/diags/IR/bin/irsaudit`, `jalr` at 0x10044ea0, 0x10044f74,
  `jal` at 0x10045030.)

- `TEST_tbusfile` (`usr/diags/IR/bin/irsaudit` 0x1010a75c): **Established.**
  The 1840-byte test opens and parses a TBUS data file, programs the selected
  words, and verifies the resulting bus status. File and record setup begins at
  0x1010a7b4, 0x1010a7cc and 0x1010a7f0; the programmed transfer uses
  0x1010a840 and 0x1010a890, and the diagnostic check uses 0x1010a8b4 and
  0x1010a8c0. Parse, I/O and bus errors take the reported failure return.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x1010a7b4, 0x1010a840,
  `jalr` at 0x1010a8b4.)

- `clearfb` (`usr/diags/IR/bin/irsaudit` 0x100b1cd0): **Established.**
  Its 1828-byte routine sets the frame-buffer clear colour and mode, emits the
  clear through the raster-bus path, then waits for the draw completion. It
  builds the clear state at 0x100b1d20 and 0x100b1d38, starts the transfer at
  0x100b1d68 and 0x100b1d8c, and handles completion at 0x100b1dc4 and
  0x100b1df8. The status returned is the recorded clear result.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x100b1d20, 0x100b1d68, 0x100b1dc4.)

- `TEST_texrndm` (`usr/diags/IR/bin/irsaudit` 0x10128954): **Established.**
  This 1728-byte texture-random-data test initializes the texture path, emits
  its random data pattern, reads back the selected result and compares it with
  the expected record. Setup uses 0x101289c8 and 0x101289ec, the pattern path
  calls 0x10128a94 and 0x10128abc, and the readback/check path continues at
  0x10128b70 and 0x10128ba0. A mismatch is reported before the test status is
  returned.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x101289c8, 0x10128a94, 0x10128b70.)

- `TEST_readback_comp` (`usr/diags/IR/bin/irsaudit` 0x10085904): **Established.**
  The 1712-byte comparison test configures a readback transfer, obtains the
  returned component values, and compares them with the expected frame-buffer
  record. It prepares the transaction at 0x10085968 and 0x10085980, starts the
  readback at 0x100859a4 and 0x10085a18, and checks the values through
  0x10085a40 and 0x10085a60. It reports the first mismatch and returns the
  accumulated diagnostic result.
  (`usr/diags/IR/bin/irsaudit`, `jal` at 0x10085968, 0x100859a4, 0x10085a40.)

## Tests

| Group | Functions | Role |
|---|---|---|
| Raster board tests | `TEST_aaspoke`, `TEST_bpconn`, `TEST_callig`, `TEST_checktex`, `TEST_clipmap`, `TEST_clrfb`, `TEST_copy_in_pixel`, `TEST_dquad`, `TEST_encfb`, `TEST_encreg`, `TEST_fbfull`, `TEST_fbread`, `TEST_fbread_video`, `TEST_fog`, `TEST_framebuf1`, `TEST_gpi`, `TEST_imp9mem`, `TEST_imp_ie`, `TEST_impvid`, `TEST_perf`, `TEST_pixelcopy`, `TEST_readback_comp`, `TEST_rm_chainlen`, `TEST_rm_chainlen_1bit`, `TEST_rm_chainlen_bdid`, `TEST_rm_chainlen_bistctrl`, `TEST_rm_chainlen_config`, `TEST_rm_chainlen_crcctrl`, `TEST_rm_chainlen_crcdata`, `TEST_rm_chainlen_extest`, `TEST_rm_chainlen_idcode`, `TEST_rm_chainlen_imp8d`, `TEST_rm_chainlen_imp8d_instr`, `TEST_rm_chainlen_intmode`, `TEST_rm_chainlen_no_sysprobe`, `TEST_rm_chainlen_sample`, `TEST_rm_chainlen_status`, `TEST_rm_chainlen_tcbistdata`, `TEST_rm_chains`, `TEST_rm_extbist`, `TEST_rm_intbist`, `TEST_rm_sysloop`, `TEST_rmconn`, `TEST_rmcrcreg`, `TEST_rmcrctex`, `TEST_rmcrctex1`, `TEST_rmcrctex_comp`, `TEST_rmcrctri`, `TEST_rmcrctri1`, `TEST_rmcrctri2`, `TEST_rmcrctri_comp`, `TEST_rmjtaginit`, `TEST_rmvis`, `TEST_swap`, `TEST_test_instr`, `TEST_texfmt`, `TEST_texmem2`, `TEST_texmem3`, `TEST_texobjdetail`, `TEST_texrndm`, `TEST_tris` | raster-board boundary-scan chain-length tests (one per scan register, `rm_chainlen*`), built-in self tests, the system loop, CRC tests of triangles and textures, and drawing tests (frame buffer, texture formats and memory, fog, clip-maps, pixel copy, read-back, swap) used to exercise the raster and texture chips ([rm.md](../../devices/rm/README.md)) |
| Host interface and ARM tests | `TEST_arm_sdram`, `TEST_arminit`, `TEST_armsanity`, `TEST_armucode`, `TEST_befconfig`, `TEST_befintram`, `TEST_befsdram`, `TEST_befshadow`, `TEST_eeprom`, `TEST_hh_reg`, `TEST_icu_mem`, `TEST_idma`, `TEST_miniodma`, `TEST_miniread`, `TEST_nicprobe`, `TEST_sdrampio`, `TEST_srampio`, `TEST_xgcred`, `TEST_xgerr`, `TEST_xgid`, `TEST_xgram`, `TEST_xgregs` | host-interface register, input-DMA, token-map memory and output-DMA tests ([hip.md](../../devices/hip/README.md)), ARM start-up, sanity, microcode and SDRAM tests, the BEF block tests, the SRAM and SDRAM programmed-I/O tests, the ARM EEPROM test, the board serial-number probe, and the XG widget tests (`xgcred`, `xgerr`, `xgid`, `xgram`, `xgregs`; [xg.md](../../devices/xg/README.md)) |
| Geometry engine tests | `TEST_bypass`, `TEST_geNext`, `TEST_ge_cram`, `TEST_ge_eram_parallel`, `TEST_ge_ext_stress`, `TEST_ge_extbist`, `TEST_ge_intbist`, `TEST_ge_tbus_walk`, `TEST_ge_wram`, `TEST_geclock`, `TEST_geconn`, `TEST_gedcrc_fe`, `TEST_gedcrc_ptu`, `TEST_gedcrc_reorder`, `TEST_gedcrc_seq`, `TEST_gedcrc_token`, `TEST_gedcrc_vtu`, `TEST_gedreg`, `TEST_geducode`, `TEST_geucode_ram`, `TEST_minigeconn`, `TEST_tbstress`, `TEST_tbusdata`, `TEST_tbusfile`, `TEST_verify_ge11` | register, microcode-load, internal and external built-in self test, memory and connectivity tests of the geometry boards and the distributor, the distributor CRC sequences (`gedcrc`) and the raster-bus walk; the per-engine mask is the `-gemask` option |
| Display board and video option tests | `TEST_ddo3_voccpbuf`, `TEST_ddo3_vocdblbuf`, `TEST_ddo3_vocreg`, `TEST_ddo3_vocspreg`, `TEST_dg_ddc`, `TEST_dg_intbist`, `TEST_dg_reg`, `TEST_dganalog`, `TEST_dgconn`, `TEST_dgopt_intbist`, `TEST_dplexconn`, `TEST_dplexlvds`, `TEST_dvp_voccpbuf`, `TEST_dvp_vocdblbuf`, `TEST_dvp_vocreg`, `TEST_dvp_vocspreg`, `TEST_dvpconn`, `TEST_fmdid`, `TEST_fmovdid`, `TEST_fmreg`, `TEST_fmvcbus`, `TEST_fpconn`, `TEST_gvo_fb`, `TEST_gvo_fb_lite`, `TEST_gvo_fb_pixel_readback`, `TEST_gvo_genlock`, `TEST_gvo_ll`, `TEST_gvo_lsb`, `TEST_gvo_lut`, `TEST_gvo_regs`, `TEST_gvo_reset`, `TEST_gvo_status`, `TEST_gvo_voccpbuf`, `TEST_gvo_vocdblbuf`, `TEST_gvo_vocreg`, `TEST_gvo_vocspreg`, `TEST_optdacreg`, `TEST_optvideo`, `TEST_pab2voccpbuf`, `TEST_pab2vocdblbuf`, `TEST_pab2vocreg`, `TEST_pab2vocspreg`, `TEST_setvid`, `TEST_tvo_voccpbuf`, `TEST_tvo_vocdblbuf`, `TEST_tvo_vocreg`, `TEST_tvo_vocspreg`, `TEST_tvoconn`, `TEST_tvoregs`, `TEST_vcbus`, `TEST_vcconn`, `TEST_video`, `TEST_video2`, `TEST_video3`, `TEST_video3_read`, `TEST_video4`, `TEST_video_pix_write`, `TEST_videotiny`, `TEST_voccpbuf`, `TEST_vocdblbuf`, `TEST_vocreg`, `TEST_vocspreg`, `TEST_xmapchid`, `TEST_xmapdid`, `TEST_xmapovdid` | display-generator register, analogue, connectivity and DDC tests, the frame-buffer and XMAP tests, the video-bus tests, and the option-board tests: the DPLEX and digital display option (`ddo3`, `dvp`), the TV output option (`tvo`), the graphics video option (`gvo`) and the second pixel-assembly board (`pab2`), each with a video-output-controller register, special-register, command-buffer and double-buffer test ([dg.md](../../devices/dg/README.md)) |
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

