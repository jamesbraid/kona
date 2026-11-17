# Readings: `usr/gfx/KONA/bin/kpm`

One entry per routine, filed here from the reading batches by binary.

- `__start` in `usr/gfx/KONA/bin/kpm` at 0x10009ef0
  **Inferred.** Looks like a C runtime entry. It makes a call at 0x10009f08 to a routine at 0x10009f10 that is part of this entry. It stores at 0x10009f4c (only when the word loaded from entry(0x14225c) is zero), 0x10009f64 and 0x10009f78; the facts do not name those destinations. Four indirect calls at 0x10009f84, 0x10009f98, 0x10009fd8 and 0x10009ff0 are unresolved. The call at 0x10009fd8 takes the words at entry(0x142a9c), entry(0x142a98) and entry(0x14225c) as its first three arguments, so the call that reaches main is not shown.
  Reviewed: 2026-11-12

- `__start` in `usr/gfx/KONA/bin/kpm` at 0x10009ef0
  **Inferred.** The same startup shape as the `__start` in `usr/bin/X11/xsetmon`, with slots at 0x14225c, 0x142a98 and 0x142a9c. It branch-and-links to __start+32 (0x10009f10) at 0x10009f08, makes four indirect calls at 0x10009f84, 0x10009f98, 0x10009fd8 and 0x10009ff0, and tests the slot at 0x14225c at 0x10009f3c.
  Reviewed: 2026-11-12

- `main` in `usr/gfx/KONA/bin/kpm` at 0x1000a6cc
  **Inferred.** Parses the command line. It compares each argument with strcmp against a string table at 0x10064078 through 0x10064170 and reads values with strtok at 0x1000add8, atoi and strcpy into the options block at sym(opts), at offsets such as +0x0, +0xc8, +0x190, +0x3f0, +0x498 and +0x4a0. It then dispatches on the mode word at +1184 (values 1 through 4): 2 goes to a path that calls init_report at 0x1003206c, kpm_dump at 0x1000d510 and close_report at 0x10032404; 1 calls kpm_interact at 0x1000f538; 3 calls kpm_view at 0x1000e330; 4 calls kpm_status at 0x1000e210. It calls exit with status 0 at 0x1000aa28 and with status 1 at 0x1000af40.
  Reviewed: 2026-11-12

- `kpm_view` in `usr/gfx/KONA/bin/kpm` at 0x1000e330 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1000e330-0x1000e844 (1300 bytes).
  It occupies 1300 bytes.
  The `lw` at 0x1000e350 loads 4 bytes from abs 0x1014c2b4.
  The `lw` at 0x1000e370 loads 4 bytes from abs 0x1014bdc0.
  The `lw` at 0x1000e384 loads 4 bytes from abs 0x1014bdc4.
  The `lw` at 0x1000e3c8 loads 4 bytes from abs 0x1014bdc8.
  The `lw` at 0x1000e3d4 loads 4 bytes from abs 0x1014c0dc.
  The `lw` at 0x1000e3dc loads 4 bytes from abs 0x1014bdcc.
  The `lw` at 0x1000e3e0 loads 4 bytes from abs 0x1014c6fc.
  The `lw` at 0x1000e3fc loads 4 bytes from abs 0x1014c15c.
  The `lw` at 0x1000e400 loads 4 bytes from abs 0x1014c150.
  13 such `lw` accesses load 4 bytes from abs 0x1014bdd0, including `lw` at 0x1000e434, `lw` at 0x1000e4d8, `lw` at 0x1000e4fc.
  The `lw` at 0x1000e454 loads 4 bytes from abs 0x1014bdd4.
  The `lw` at 0x1000e48c loads 4 bytes from abs 0x1014c2d4.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1000e514, `sw` at 0x1000e7b4, `sw` at 0x1000e7dc.
  4 such `lw` accesses load 4 bytes from abs 0x1014d98c, including `lw` at 0x1000e544, `lw` at 0x1000e71c, `lw` at 0x1000e7cc.
  The `lw` at 0x1000e570 loads 4 bytes from abs 0x1014bdd8.
  The `lw` at 0x1000e59c loads 4 bytes from abs 0x1014c298.
  The `lw` at 0x1000e5bc loads 4 bytes from abs 0x1014c140.
  3 such `lw` accesses load 4 bytes from sym(output) +0x0, including `lw` at 0x1000e5c4, `lw` at 0x1000e604, `lw` at 0x1000e630.
  2 such `lw` accesses load 4 bytes from abs 0x1014c110, including `lw` at 0x1000e5fc, `lw` at 0x1000e628.
  2 such `sw` accesses store 4 bytes to sym(output) +0x0, including `sw` at 0x1000e610, `sw` at 0x1000e63c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c2e8, including `lw` at 0x1000e648, `lw` at 0x1000e6c4.
  The `lw` at 0x1000e684 loads 4 bytes from abs 0x1014bddc.
  The `lw` at 0x1000e690 loads 4 bytes from table(0x10095f64) +0x0.
  The `lw` at 0x1000e740 loads 4 bytes from abs 0x1014bde0.
  The `lw` at 0x1000e7f4 loads 4 bytes from abs 0x1014c13c.
  The `lw` at 0x1000e820 loads 4 bytes from abs 0x1014c128.
  The `jal` at 0x1000e358 calls dfOpenDumpFile [0x1000b5c4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1000e374 calls (unnamed) [0x1000f260] with a0=ret(dfOpenDumpFile), a1=?, a2=?, a3=?.
  The `jal` at 0x1000e388 calls (unnamed) [0x1000e84c] with a0=ret(dfOpenDumpFile), a1=?, a2=?, a3=?.
  The `jal` at 0x1000e418 calls (unnamed) [0x1000e8c0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e43c calls strtok with a0=ret(0x1000e8c0), a1=0x10064c88, a2=?, a3=?.
  The `jal` at 0x1000e458 calls (unnamed) [0x1000e988] with a0=ret(strtok), a1=?, a2=?, a3=?.
  The `jal` at 0x1000e490 calls dfCloseDumpFile [0x1000c080] with a0=ret(dfOpenDumpFile), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e4e0 calls strcmp with a0=ret(strtok), a1=0x10064ca8, a2=?, a3=?.
  The `jalr` at 0x1000e504 calls strcmp with a0=ret(strtok), a1=0x10064caa, a2=?, a3=?.
  The `jalr` at 0x1000e534 calls strtok with a0=0x0, a1=0x10064c88, a2=?, a3=?.
  The `jal` at 0x1000e574 calls (unnamed) [0x1000ed98] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1000e5a8 calls V_show [0x1000a2b4] with a0=ret(dfOpenDumpFile), a1=?, a2=sp-4280, a3=?.
  The `jalr` at 0x1000e5c0 calls fflush with a0=[sym(output)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e5dc calls strcmp with a0=0x10064cb0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e600 calls fclose with a0=[sym(output)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e62c calls fclose with a0=[sym(output)], a1=?, a2=?, a3=?.
  The `jal` at 0x1000e65c calls kerror [0x1000f540] with a0=0x0, a1=0x10064c30, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000e69c calls (unknown callee) with a0=ret(dfOpenDumpFile), a1=?, a2=sp-4280, a3=?.
  The `jal` at 0x1000e6d0 calls kerror [0x1000f540] with a0=0x0, a1=0x10064c58, a2=?, a3=?.
  The `jalr` at 0x1000e6f4 calls strcmp with a0=ret(strtok), a1=0x10064ca8, a2=?, a3=?.
  The `jalr` at 0x1000e714 calls strtok with a0=0x0, a1=0x10064c88, a2=?, a3=?.
  The `jal` at 0x1000e744 calls (unnamed) [0x1000f4b4] with a0=ret(strtok), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000e788 calls strtok with a0=0x0, a1=0x10064c88, a2=?, a3=?.
  The `jalr` at 0x1000e7b8 calls strtok with a0=0x0, a1=0x10064c88, a2=ret(strtok), a3=?.
  The `jalr` at 0x1000e800 calls waitpid with a0=?, a1=0x0, a2=0x0, a3=?.
  The `jalr` at 0x1000e82c calls fprintf with a0=?, a1=0x10064c90, a2=?, a3=?.
  The `beq` branch at 0x1000e360 targets 0x1000e640, is taken when v0(=ret(dfOpenDumpFile)) == 0, and falls through when v0(=ret(dfOpenDumpFile)) != 0.
  The `bltz` branch at 0x1000e3a0 targets 0x1000e6b4, is taken when v0(=ret(0x1000e84c)) < 0 (signed), and falls through when v0(=ret(0x1000e84c)) >= 0 (signed).
  The `beq` branch at 0x1000e420 targets 0x1000e488, is taken when v0(=ret(0x1000e8c0)) == 0, and falls through when v0(=ret(0x1000e8c0)) != 0.
  The `beq` branch at 0x1000e444 targets 0x1000e414, is taken when v0(=ret(strtok)) == 0, and falls through when v0(=ret(strtok)) != 0.
  The `bltz` branch at 0x1000e460 targets 0x1000e738, is taken when v0(=ret(0x1000e988)) < 0 (signed), and falls through when v0(=ret(0x1000e988)) >= 0 (signed).
  The `beq` branch at 0x1000e480 targets 0x1000e520 and is always taken.
  The `beq` branch at 0x1000e4e8 targets 0x1000e6e4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x1000e50c targets 0x1000e6e4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1000e53c targets 0x1000e4cc, is taken when v0(=ret(strtok)) != 0, and falls through when v0(=ret(strtok)) == 0.
  The `beq` branch at 0x1000e548 targets 0x1000e66c, is taken when a1(=[0x1014d98c]) == 0, and falls through when a1(=[0x1014d98c]) != 0.
  The `beq` branch at 0x1000e554 targets 0x1000e588, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1000e55c targets 0x1000e6ac, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1000e580 targets 0x1000e414, is taken when v0(=ret(0x1000ed98)) < 0x0 (signed), and falls through when v0(=ret(0x1000ed98)) >= 0x0 (signed).
  The `beq` branch at 0x1000e58c targets 0x1000e67c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1000e5b0 targets 0x1000e414, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x1000e5e4 targets 0x1000e5f4, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x1000e5ec targets 0x1000e618, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x1000e608 targets 0x1000e614, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x1000e618 targets 0x1000e7f0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1000e638 targets 0x1000e414 and is always taken.
  The `beq` branch at 0x1000e664 targets 0x1000e36c and is always taken.
  The `bne` branch at 0x1000e670 targets 0x1000e594, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x1000e6a4 targets 0x1000e5b0 and is always taken.
  The `beq` branch at 0x1000e6ac targets 0x1000e56c and is always taken.
  The `beq` branch at 0x1000e6d8 targets 0x1000e3ac and is always taken.
  The `beq` branch at 0x1000e6fc targets 0x1000e774, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x1000e728 targets 0x1000e7e8, is taken when a1(=[0x1014d98c]) == 0, and falls through when a1(=[0x1014d98c]) != 0.
  The `beq` branch at 0x1000e730 targets 0x1000e554 and is always taken.
  The `beq` branch at 0x1000e74c targets 0x1000e810, is taken when v0(=ret(0x1000f4b4)) == 0, and falls through when v0(=ret(0x1000f4b4)) != 0.
  The `beq` branch at 0x1000e76c targets 0x1000e474 and is always taken.
  The `beq` branch at 0x1000e790 targets 0x1000e7d0, is taken when v0(=ret(strtok)) == 0, and falls through when v0(=ret(strtok)) != 0.
  The `bne` branch at 0x1000e7c0 targets 0x1000e79c, is taken when v0(=ret(strtok)) != 0, and falls through when v0(=ret(strtok)) == 0.
  The `beq` branch at 0x1000e7c8 targets 0x1000e7d8 and is always taken.
  The `beq` branch at 0x1000e7d8 targets 0x1000e83c, is taken when a1(=[0x1014d98c]) == 0, and falls through when a1(=[0x1014d98c]) != 0.
  The `beq` branch at 0x1000e7e0 targets 0x1000e550 and is always taken.
  The `beq` branch at 0x1000e7e8 targets 0x1000e564 and is always taken.
  The `beq` branch at 0x1000e808 targets 0x1000e418 and is always taken.
  The `beq` branch at 0x1000e834 targets 0x1000e418 and is always taken.
  The `beq` branch at 0x1000e83c targets 0x1000e564 and is always taken.
  The return at 0x1000e4c4 has v0 = ret(dfCloseDumpFile).
  The instructions from 0x1000e6e0 to 0x1000e6e0 are not reached by any path from the entry, and their branches are not listed.

- `klog` in `usr/gfx/KONA/bin/kpm` at 0x1000f794
  **Inferred.** Writes a message from its format argument a1, using the level in a0 (compared with 3 at 0x1000f8fc). Depending on option words at sym(opts)+0x4a8, +0x4b0 and +0x4b4, it sends the message with vfprintf to the stream in sym(output), with vsyslog at priority 6 at 0x1000f8b8, and with vfprintf to sym(summary) at 0x1000f8d8, and it sets sym(summary_error) at 0x1000f8f4 on one path. The exact option meanings are not shown beyond these offsets.
  Reviewed: 2026-11-12

- `klog` in `usr/gfx/KONA/bin/kpm` at 0x1000f794
  **Inferred.** A 504-byte logging routine. It writes a formatted message to the stream in the global at sym(output) with fprintf at 0x1000f838 and vfprintf at 0x1000f858, and it sends the variadic arguments to vsyslog at 0x1000f8b8 with level 0x6. It writes a second copy through vfprintf at 0x1000f8d8 to the stream at sym(summary), and it reads option fields at offsets 1192, 1200 and 1204 of the global sym(opts) to decide which messages to print.
  Reviewed: 2026-11-12

- `dump_indata_as_bits` in `usr/gfx/KONA/bin/kpm` at 0x10010044
  **Inferred.** Role (from name): dumps the input data as bits. The loop is skipped when a1 <= 0 (the test is at 0x10010054). It tests bits of a0 with a mask in a6 (branch at 0x10010090), loads a word at 0x10010064 and 0x100100a8, stores bytes with sb at 0x1001007c and 0x100100c4, and returns 0x1014e9b0 (table(0x1014e9b0)) at 0x100100c0. The facts do not resolve the output buffer, because the store at 0x1001007c goes to an address the renderer could not name, and they do not show the byte values stored.
  Reviewed: 2026-11-12

- `dump_outdata_as_bits` in `usr/gfx/KONA/bin/kpm` at 0x100100c8
  **Inferred.** Role (from name): the output-side sibling of dump_indata_as_bits. The loop is skipped when a1 <= 0 (the test is at 0x100100d8). It tests bits of a0 with a mask in a7 (branch at 0x10010120), stores bytes with sb at 0x1001010c and 0x10010154, and returns 0x1014e9d8 (table(0x1014e9d8)) at 0x10010150, which suggests a buffer there that the stores fill. The store at 0x1001010c goes to an address the renderer could not name, and the facts do not show the byte values stored.
  Reviewed: 2026-11-12

- `ged_register_write` in `usr/gfx/KONA/bin/kpm` at 0x10019e3c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10019e3c-0x10019ee0 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x10019e5c loads 4 bytes from abs 0x1014be54.
  The `lw` at 0x10019e7c loads 4 bytes from abs 0x1014c810.
  4 such `lw` accesses load 4 bytes from sym(mapRegs) +0x0, including `lw` at 0x10019e80, `lw` at 0x10019e9c, `lw` at 0x10019eb4.
  2 such `sw` accesses store 4 bytes to [sym(mapRegs)] +0x3e8, including `sw` at 0x10019e94, `sw` at 0x10019ec0.
  2 such `sw` accesses store 4 bytes to [sym(mapRegs)] +0x3f0, including `sw` at 0x10019eb0, `sw` at 0x10019ecc.
  The `jal` at 0x10019e6c calls (unnamed) [0x10019e18] with a0=0x0, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10019ed8 has v0 = 0x0.

- `ged_set_current_ge` in `usr/gfx/KONA/bin/kpm` at 0x10019ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10019ee0-0x10019fc4 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x10019f04 loads 4 bytes from abs 0x1014c350.
  The `lw` at 0x10019f6c loads 4 bytes from abs 0x1014c810.
  4 such `lw` accesses load 4 bytes from sym(mapRegs) +0x0, including `lw` at 0x10019f70, `lw` at 0x10019f84, `lw` at 0x10019f98.
  2 such `sw` accesses store 4 bytes to [sym(mapRegs)] +0x3e8, including `sw` at 0x10019f80, `sw` at 0x10019fa4.
  2 such `sw` accesses store 4 bytes to [sym(mapRegs)] +0x3f0, including `sw` at 0x10019f94, `sw` at 0x10019fc0.
  The `jal` at 0x10019f1c calls ged_register_write [0x10019e3c] with a0=0x222, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10019f2c calls ged_register_write [0x10019e3c] with a0=0x222, a1=?, a2=?, a3=?.
  The `jal` at 0x10019f3c calls ged_register_write [0x10019e3c] with a0=0x222, a1=?, a2=?, a3=?.
  The `jal` at 0x10019f4c calls ged_register_write [0x10019e3c] with a0=0x222, a1=?, a2=?, a3=?.
  The `jal` at 0x10019f5c calls ged_register_write [0x10019e3c] with a0=0x222, a1=?, a2=?, a3=?.
  The return at 0x10019fbc has v0 = 0x0.

- `rm_backward_analysis` in `usr/gfx/KONA/bin/kpm` at 0x1002f0fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1002f0fc-0x1002f7d8 (1756 bytes).
  It occupies 1756 bytes.
  The `lw` at 0x1002f11c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1002f15c loads 4 bytes from abs 0x1014c408.
  The `lw` at 0x1002f168 loads 4 bytes from abs 0x1014c808.
  The `lw` at 0x1002f170 loads 4 bytes from abs 0x1014c100.
  The `lw` at 0x1002f178 loads 4 bytes from abs 0x1014c2ec.
  The `lw` at 0x1002f188 loads 4 bytes from abs 0x1014c850.
  21 such `lw` accesses load 4 bytes from abs 0x1014bf08, including `lw` at 0x1002f1a4, `lw` at 0x1002f1d4, `lw` at 0x1002f254.
  66 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002f1bc, `lw` at 0x1002f1ec, `lw` at 0x1002f1f8.
  The `lw` at 0x1002f248 loads 4 bytes from abs 0x1014c30c.
  3 such `lw` accesses load 4 bytes from sym(kpminfo) +0x8, including `lw` at 0x1002f284, `lw` at 0x1002f2ac, `lw` at 0x1002f324.
  The `lw` at 0x1002f2dc loads 4 bytes from abs 0x1014bf0c.
  The `lw` at 0x1002f2fc loads 4 bytes from table(0x101458d0) +0x0.
  The `jal` at 0x1002f1ac calls jt_find_chip [0x10033680] with a0=?, a1=0x1008ebf0, a2=?, a3=?.
  The `jal` at 0x1002f1dc calls jt_find_chip [0x10033680] with a0=?, a1=0x1008ec14, a2=?, a3=?.
  The `jal` at 0x1002f260 calls kj_arrange_global_instruction [0x10011df4] with a0=?, a1=0x1008eaf0, a2=?, a3=?.
  The `jalr` at 0x1002f2f8 calls sprintf with a0=sp-176, a1=0x1008ec50, a2=entry(0x101458d0), a3=?, a5=one of 0x0, 0x14, 0x1e.
  The `jal` at 0x1002f308 calls jt_find_chip [0x10033680] with a0=?, a1=sp-176, a2=?, a3=?.
  The `jal` at 0x1002f364 calls klog [0x1000f794] with a0=0x2, a1=0x1008ec90, a2=?, a3=sp-176.
  The `jal` at 0x1002f3b8 calls klog [0x1000f794] with a0=0x3, a1=0x1008ed38, a2=?, a3=?.
  The `jal` at 0x1002f3e0 calls klog [0x1000f794] with a0=0x2, a1=0x1008ec90, a2=?, a3=sp-176.
  The `jal` at 0x1002f480 calls klog [0x1000f794] with a0=0x3, a1=0x1008ecf0, a2=?, a3=?.
  The `jal` at 0x1002f4b4 calls klog [0x1000f794] with a0=0x2, a1=0x1008ed68, a2=?, a3=sp-160.
  The `jal` at 0x1002f508 calls klog [0x1000f794] with a0=0x3, a1=0x1008ed98, a2=?, a3=?.
  The `jalr` at 0x1002f544 calls sprintf with a0=sp-160, a1=0x1008ec48, a2=?, a3=?.
  The `jal` at 0x1002f554 calls jt_find_chip [0x10033680] with a0=?, a1=sp-160, a2=?, a3=?.
  The `jal` at 0x1002f5b4 calls klog [0x1000f794] with a0=0x2, a1=0x1008ee08, a2=?, a3=sp-160.
  The `jalr` at 0x1002f604 calls sprintf with a0=sp-144, a1=0x1008ec38, a2=?, a3=?.
  The `jal` at 0x1002f614 calls jt_find_chip [0x10033680] with a0=?, a1=sp-144, a2=?, a3=?.
  The `jal` at 0x1002f648 calls klog [0x1000f794] with a0=0x2, a1=0x1008ee38, a2=?, a3=sp-144.
  The `jal` at 0x1002f6a8 calls klog [0x1000f794] with a0=0x2, a1=0x1008ee68, a2=?, a3=sp-144.
  The `jal` at 0x1002f6d0 calls klog [0x1000f794] with a0=0x2, a1=0x1008edd8, a2=?, a3=sp-160.
  The `jal` at 0x1002f6f4 calls klog [0x1000f794] with a0=0x2, a1=0x1008ee98, a2=?, a3=?.
  The `jal` at 0x1002f718 calls klog [0x1000f794] with a0=0x2, a1=0x1008eec8, a2=?, a3=?.
  The `jal` at 0x1002f740 calls klog [0x1000f794] with a0=0x2, a1=0x1008eef8, a2=?, a3=?.
  The `jal` at 0x1002f774 calls klog [0x1000f794] with a0=0x2, a1=0x1008ec90, a2=?, a3=sp-176.
  The `jal` at 0x1002f7c8 calls klog [0x1000f794] with a0=0x3, a1=0x1008ecc0, a2=?, a3=?.
  The `beq` branch at 0x1002f13c targets 0x1002f750, is taken when (at(=[a0]) & 0x4) == 0, and falls through when (at(=[a0]) & 0x4) != 0.
  The `beq` branch at 0x1002f190 targets 0x1002f22c and is always taken.
  The `bltz` branch at 0x1002f1b4 targets 0x1002f1cc, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `beq` branch at 0x1002f1c0 targets 0x1002f6e0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bltz` branch at 0x1002f1e4 targets 0x1002f200, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `beq` branch at 0x1002f1f0 targets 0x1002f704, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1002f1fc targets 0x1002f728, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1002f224 targets 0x1002f658, is taken when s7(?) >= 0x4 (signed), and falls through when s7(?) < 0x4 (signed).
  The `beq` branch at 0x1002f230 targets 0x1002f200, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `blez` branch at 0x1002f278 targets 0x1002f488, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `beq` branch at 0x1002f280 targets 0x1002f2b0 and is always taken.
  The `beq` branch at 0x1002f28c targets 0x1002f3c8, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x1002f298 targets 0x1002f488, is taken when s2(?) >= 0x14 (signed), and falls through when s2(?) < 0x14 (signed).
  The `beq` branch at 0x1002f2a8 targets 0x1002f488, is taken when s2(?) >= at(?) (signed), and falls through when s2(?) < at(?) (signed).
  The `beq` branch at 0x1002f2b4 targets 0x1002f2c8, is taken when v0(=[sym(kpminfo)+8]) == a2(=0x2), and falls through when v0(=[sym(kpminfo)+8]) != a2(=0x2).
  The `beq` branch at 0x1002f2bc targets 0x1002f2c8, is taken when v0(=[sym(kpminfo)+8]) == v1(=0x6), and falls through when v0(=[sym(kpminfo)+8]) != v1(=0x6).
  The `bltz` branch at 0x1002f31c targets 0x1002f294, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `beq` branch at 0x1002f328 targets 0x1002f338, is taken when v0(=[sym(kpminfo)+8]) == a2(=0x2), and falls through when v0(=[sym(kpminfo)+8]) != a2(=0x2).
  The `bne` branch at 0x1002f330 targets 0x1002f288, is taken when v0(=[sym(kpminfo)+8]) != a3(=0x6), and falls through when v0(=[sym(kpminfo)+8]) == a3(=0x6).
  The `beq` branch at 0x1002f33c targets 0x1002f758, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x1002f344 targets 0x1002f294, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x1002f3c0 targets 0x1002f48c and is always taken.
  The `beq` branch at 0x1002f490 targets 0x1002f52c and is always taken.
  The `beq` branch at 0x1002f524 targets 0x1002f5c4, is taken when a2(?) >= 0x4 (signed), and falls through when a2(?) < 0x4 (signed).
  The `bltz` branch at 0x1002f55c targets 0x1002f510, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `beq` branch at 0x1002f574 targets 0x1002f498, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1002f57c targets 0x1002f56c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1002f588 targets 0x1002f6b8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1002f594 targets 0x1002f510, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1002f5bc targets 0x1002f514 and is always taken.
  The `beq` branch at 0x1002f5c8 targets 0x1002f5ec and is always taken.
  The `beq` branch at 0x1002f5d4 targets 0x1002f690, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1002f5e4 targets 0x1002f198, is taken when s4(?) >= 0x8 (signed), and falls through when s4(?) < 0x8 (signed).
  The `bltz` branch at 0x1002f61c targets 0x1002f5dc, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `bne` branch at 0x1002f628 targets 0x1002f5d0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1002f650 targets 0x1002f5d4 and is always taken.
  The `beq` branch at 0x1002f6b0 targets 0x1002f5e0 and is always taken.
  The `beq` branch at 0x1002f6d8 targets 0x1002f594 and is always taken.
  The `beq` branch at 0x1002f6fc targets 0x1002f1cc and is always taken.
  The `beq` branch at 0x1002f720 targets 0x1002f1f8 and is always taken.
  The `beq` branch at 0x1002f748 targets 0x1002f200 and is always taken.
  The `beq` branch at 0x1002f750 targets 0x1002f65c and is always taken.
  The `beq` branch at 0x1002f7d0 targets 0x1002f48c and is always taken.
  The return at 0x1002f688 has v0 = one of -0x1, 0x0.

- `rm_forward_analysis` in `usr/gfx/KONA/bin/kpm` at 0x1002f930 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1002f930-0x1003001c (1772 bytes).
  It occupies 1772 bytes.
  The `lw` at 0x1002f950 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1002f994 loads 4 bytes from abs 0x1014c408.
  The `lw` at 0x1002f9a0 loads 4 bytes from abs 0x1014c808.
  The `lw` at 0x1002f9a8 loads 4 bytes from abs 0x1014c100.
  The `lw` at 0x1002f9b0 loads 4 bytes from abs 0x1014c2ec.
  The `lw` at 0x1002f9bc loads 4 bytes from abs 0x1014c850.
  21 such `lw` accesses load 4 bytes from abs 0x1014bf08, including `lw` at 0x1002f9d8, `lw` at 0x1002f9f4, `lw` at 0x1002fae8.
  67 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1002f9f8, `lw` at 0x1002f9fc, `lw` at 0x1002fa00.
  The `lw` at 0x1002fadc loads 4 bytes from abs 0x1014c30c.
  3 such `lw` accesses load 4 bytes from sym(kpminfo) +0x8, including `lw` at 0x1002fd54, `lw` at 0x1002fd7c, `lw` at 0x1002fdf4.
  The `lw` at 0x1002fdb0 loads 4 bytes from abs 0x1014bf0c.
  The `lw` at 0x1002fdd0 loads 4 bytes from table(0x101458d0) +0x0.
  The `jal` at 0x1002f9e4 calls klog [0x1000f794] with a0=0x2, a1=0x1008ec90, a2=?, a3=sp-144.
  The `jal` at 0x1002fa84 calls klog [0x1000f794] with a0=0x3, a1=0x1008ecf0, a2=?, a3=?.
  The `jal` at 0x1002faf4 calls kj_arrange_global_instruction [0x10011df4] with a0=?, a1=0x1008eaf0, a2=?, a3=?.
  The `jal` at 0x1002fb10 calls jt_find_chip [0x10033680] with a0=?, a1=0x1008ebf0, a2=?, a3=?.
  The `jal` at 0x1002fb40 calls jt_find_chip [0x10033680] with a0=?, a1=0x1008ec14, a2=?, a3=?.
  The `jalr` at 0x1002fb98 calls sprintf with a0=sp-176, a1=0x1008ec38, a2=?, a3=?.
  The `jal` at 0x1002fba8 calls jt_find_chip [0x10033680] with a0=?, a1=sp-176, a2=?, a3=?.
  The `jal` at 0x1002fbe8 calls klog [0x1000f794] with a0=0x2, a1=0x1008ee68, a2=?, a3=sp-176.
  The `jal` at 0x1002fc24 calls klog [0x1000f794] with a0=0x2, a1=0x1008ed68, a2=?, a3=sp-160.
  The `jal` at 0x1002fc78 calls klog [0x1000f794] with a0=0x3, a1=0x1008ed98, a2=?, a3=?.
  The `jalr` at 0x1002fcb4 calls sprintf with a0=sp-160, a1=0x1008ec48, a2=?, a3=?.
  The `jal` at 0x1002fcc4 calls jt_find_chip [0x10033680] with a0=?, a1=sp-160, a2=?, a3=?.
  The `jal` at 0x1002fd2c calls klog [0x1000f794] with a0=0x2, a1=0x1008ee08, a2=?, a3=sp-160.
  The `jalr` at 0x1002fdcc calls sprintf with a0=sp-144, a1=0x1008ec50, a2=entry(0x101458d0), a3=?, a5=one of 0x0, 0x14, 0x1e, a6=0x6.
  The `jal` at 0x1002fddc calls jt_find_chip [0x10033680] with a0=?, a1=sp-144, a2=?, a3=?.
  The `jal` at 0x1002fe38 calls klog [0x1000f794] with a0=0x2, a1=0x1008ec90, a2=?, a3=sp-144.
  The `jal` at 0x1002fe8c calls klog [0x1000f794] with a0=0x3, a1=0x1008ed38, a2=?, a3=?.
  The `jal` at 0x1002feec calls klog [0x1000f794] with a0=0x2, a1=0x1008ee38, a2=?, a3=sp-176.
  The `jal` at 0x1002ff14 calls klog [0x1000f794] with a0=0x2, a1=0x1008edd8, a2=?, a3=sp-160.
  The `jal` at 0x1002ff38 calls klog [0x1000f794] with a0=0x2, a1=0x1008ee98, a2=?, a3=?.
  The `jal` at 0x1002ff5c calls klog [0x1000f794] with a0=0x2, a1=0x1008eec8, a2=?, a3=?.
  The `jal` at 0x1002ff84 calls klog [0x1000f794] with a0=0x2, a1=0x1008eef8, a2=?, a3=?.
  The `jal` at 0x1002ffb8 calls klog [0x1000f794] with a0=0x2, a1=0x1008ec90, a2=?, a3=sp-144.
  The `jal` at 0x1003000c calls klog [0x1000f794] with a0=0x3, a1=0x1008ecc0, a2=?, a3=?.
  The `beq` branch at 0x1002f970 targets 0x1002ff94, is taken when (at(=[a0]) & 0x4) == 0, and falls through when (at(=[a0]) & 0x4) != 0.
  The `beq` branch at 0x1002f9c4 targets 0x1002fac0 and is always taken.
  The `beq` branch at 0x1002fab8 targets 0x1002fe9c, is taken when s7(?) >= 0x4 (signed), and falls through when s7(?) < 0x4 (signed).
  The `beq` branch at 0x1002fac8 targets 0x1002fa8c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bltz` branch at 0x1002fb18 targets 0x1002fb30, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `beq` branch at 0x1002fb24 targets 0x1002ff24, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bltz` branch at 0x1002fb48 targets 0x1002fb68, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `beq` branch at 0x1002fb54 targets 0x1002ff48, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1002fb60 targets 0x1002ff6c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1002fb68 targets 0x1002fb80 and is always taken.
  The `beq` branch at 0x1002fb78 targets 0x1002fbf8, is taken when s4(?) >= 0x8 (signed), and falls through when s4(?) < 0x8 (signed).
  The `bltz` branch at 0x1002fbb0 targets 0x1002fb70, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `beq` branch at 0x1002fbbc targets 0x1002fed4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1002fbc8 targets 0x1002fb70, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1002fbf0 targets 0x1002fb74 and is always taken.
  The `beq` branch at 0x1002fc00 targets 0x1002fc9c and is always taken.
  The `beq` branch at 0x1002fc94 targets 0x1002fd3c, is taken when a2(?) >= 0x4 (signed), and falls through when a2(?) < 0x4 (signed).
  The `bltz` branch at 0x1002fccc targets 0x1002fc84, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `beq` branch at 0x1002fce8 targets 0x1002fc08, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1002fcf0 targets 0x1002fce0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1002fcfc targets 0x1002fefc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1002fd08 targets 0x1002fc84, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1002fd34 targets 0x1002fc84 and is always taken.
  The `blez` branch at 0x1002fd48 targets 0x1002fa8c, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x1002fd50 targets 0x1002fd80 and is always taken.
  The `beq` branch at 0x1002fd5c targets 0x1002f9cc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1002fd68 targets 0x1002fa8c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1002fd78 targets 0x1002fa8c, is taken when s2(?) >= a5(?) (signed), and falls through when s2(?) < a5(?) (signed).
  The `beq` branch at 0x1002fd88 targets 0x1002fd9c, is taken when v0(=[sym(kpminfo)+8]) == a2(=0x2), and falls through when v0(=[sym(kpminfo)+8]) != a2(=0x2).
  The `beq` branch at 0x1002fd90 targets 0x1002fd9c, is taken when v0(=[sym(kpminfo)+8]) == a6(=0x6), and falls through when v0(=[sym(kpminfo)+8]) != a6(=0x6).
  The `bltz` branch at 0x1002fde8 targets 0x1002fd64, is taken when v0(=ret(jt_find_chip)) < 0 (signed), and falls through when v0(=ret(jt_find_chip)) >= 0 (signed).
  The `beq` branch at 0x1002fdf8 targets 0x1002fe08, is taken when v0(=[sym(kpminfo)+8]) == a2(=0x2), and falls through when v0(=[sym(kpminfo)+8]) != a2(=0x2).
  The `bne` branch at 0x1002fe00 targets 0x1002fd58, is taken when v0(=[sym(kpminfo)+8]) != a3(=0x6), and falls through when v0(=[sym(kpminfo)+8]) == a3(=0x6).
  The `beq` branch at 0x1002fe0c targets 0x1002ff9c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x1002fe14 targets 0x1002fd68, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x1002fe94 targets 0x1002fa90 and is always taken.
  The `beq` branch at 0x1002fef4 targets 0x1002fbc8 and is always taken.
  The `beq` branch at 0x1002ff1c targets 0x1002fd08 and is always taken.
  The `beq` branch at 0x1002ff40 targets 0x1002fb30 and is always taken.
  The `beq` branch at 0x1002ff64 targets 0x1002fb60 and is always taken.
  The `beq` branch at 0x1002ff8c targets 0x1002fb68 and is always taken.
  The `beq` branch at 0x1002ff94 targets 0x1002fea0 and is always taken.
  The `beq` branch at 0x10030014 targets 0x1002fa90 and is always taken.
  The return at 0x1002fecc has v0 = one of -0x1, 0x0.

- `Vpseudo_jtag` in `usr/gfx/KONA/bin/kpm` at 0x1003001c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003001c-0x10030390 (884 bytes).
  It occupies 884 bytes.
  The `lw` at 0x1003005c loads 4 bytes from abs 0x1014bf14.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x10030068, `lw` at 0x10030114.
  The `lw` at 0x10030080 loads 4 bytes from abs 0x1014c150.
  13 such `lw` accesses load 4 bytes from abs 0x1014bf18, including `lw` at 0x10030084, `lw` at 0x100300b0, `lw` at 0x100300f0.
  The `lw` at 0x100300b4 loads 4 bytes from abs 0x1008f160.
  The `lw` at 0x100300c4 loads 4 bytes from abs 0x1014c0cc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c100, including `lw` at 0x100300d8, `lw` at 0x10030370.
  2 such `lw` accesses load 4 bytes from abs 0x1014c12c, including `lw` at 0x100300ec, `lw` at 0x10030108.
  The `lw` at 0x10030144 loads 4 bytes from abs 0x1014c298.
  The `lw` at 0x10030268 loads 4 bytes from abs 0x1014c114.
  2 such `lw` accesses load 4 bytes from abs 0x1014c128, including `lw` at 0x100302c0, `lw` at 0x10030324.
  2 such `lw` accesses load 4 bytes from abs 0x1014c15c, including `lw` at 0x100302c4, `lw` at 0x10030328.
  The `lw` at 0x10030348 loads 4 bytes from abs 0x1014c0e4.
  The `lw` at 0x10030350 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `jal` at 0x10030064 calls (unnamed) [0x10030390] with a0=[a2+4], a1=sp-96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003008c calls strcmp with a0=sp-96, a1=0x1008f150, a2=?, a3=?.
  The `jalr` at 0x100300d4 calls malloc with a0=0x28, a1=?, a2=?, a3=?.
  The `jalr` at 0x100300f8 calls strdup with a0=0x1008f168, a1=?, a2=?, a3=?.
  The `jalr` at 0x10030110 calls strdup with a0=[a2+4], a1=?, a2=?, a3=?.
  The `jalr` at 0x10030134 calls sprintf with a0=?, a1=0x1008f170, a2=sp-96, a3=?.
  The `jal` at 0x10030154 calls V_show [0x1000a2b4] with a0=a0 at entry (arg0), a1=0x3, a2=sp-72, a3=?.
  The `jalr` at 0x10030174 calls sprintf with a0=?, a1=0x1008f180, a2=sp-96, a3=?.
  The `jal` at 0x10030188 calls V_show [0x1000a2b4] with a0=a0 at entry (arg0), a1=0x3, a2=sp-72, a3=?.
  The `jalr` at 0x100301a8 calls sprintf with a0=?, a1=0x1008f190, a2=sp-96, a3=?.
  The `jal` at 0x100301bc calls V_show [0x1000a2b4] with a0=a0 at entry (arg0), a1=0x3, a2=sp-72, a3=?.
  The `jalr` at 0x100301dc calls sprintf with a0=?, a1=0x1008f1a0, a2=sp-96, a3=?.
  The `jal` at 0x100301f0 calls V_show [0x1000a2b4] with a0=a0 at entry (arg0), a1=0x3, a2=sp-72, a3=?.
  The `jalr` at 0x10030210 calls sprintf with a0=?, a1=0x1008f1b0, a2=sp-96, a3=?.
  The `jal` at 0x10030224 calls V_show [0x1000a2b4] with a0=a0 at entry (arg0), a1=0x3, a2=sp-72, a3=?.
  The `jalr` at 0x10030244 calls sprintf with a0=?, a1=0x1008f1c0, a2=sp-96, a3=?.
  The `jal` at 0x10030258 calls V_show [0x1000a2b4] with a0=a0 at entry (arg0), a1=0x3, a2=sp-72, a3=?.
  The `jalr` at 0x10030270 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003027c calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10030288 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100302dc calls fprintf with a0=sym(__iob)+32, a1=0x1008f0c8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100302f8 calls fprintf with a0=sym(__iob)+32, a1=0x1008f0f8, a2=?, a3=?.
  The `jalr` at 0x10030330 calls fprintf with a0=sym(__iob)+32, a1=0x1008f128, a2=?, a3=?.
  The `jalr` at 0x1003034c calls atoi with a0=[a2+8], a1=?, a2=?, a3=?.
  The `jalr` at 0x10030380 calls sprintf with a0=sp-96, a1=0x1008f158, a2=ret(atoi), a3=?.
  The `bne` branch at 0x1003004c targets 0x100302b0, is taken when a1 < 0x2 (signed), and falls through when a1 >= 0x2 (signed).
  The `beq` branch at 0x1003006c targets 0x10030308, is taken when v0(=ret(0x10030390)) == 0, and falls through when v0(=ret(0x10030390)) != 0.
  The `bne` branch at 0x10030094 targets 0x100300c0, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x100300a4 targets 0x10030340, is taken when ra(=a1) >= 0x3 (signed), and falls through when ra(=a1) < 0x3 (signed).
  The `beq` branch at 0x10030300 targets 0x10030294 and is always taken.
  The `beq` branch at 0x10030338 targets 0x10030294 and is always taken.
  The `bltz` branch at 0x10030354 targets 0x100300a8, is taken when v0(=ret(atoi)) < 0 (signed), and falls through when v0(=ret(atoi)) >= 0 (signed).
  The `beq` branch at 0x1003035c targets 0x100300a8, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10030388 targets 0x100300c0 and is always taken.
  The return at 0x100302a8 has v0 = one of -0x1, 0x0.

- `history_get_history_state` in `usr/gfx/KONA/bin/kpm` at 0x1003add0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003add0-0x1003aeb0 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0x1003adf4 loads 4 bytes from abs 0x1014c6e4.
  4 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003ae0c, `lw` at 0x1003ae24, `lw` at 0x1003ae54.
  The `lw` at 0x1003ae10 loads 4 bytes from abs 0x1024a87c.
  The `sw` at 0x1003ae18 stores 4 bytes to ret(xmalloc) +0x0.
  The `lw` at 0x1003ae28 loads 4 bytes from abs 0x1024a888.
  The `sw` at 0x1003ae30 stores 4 bytes to ret(xmalloc) +0x4.
  The `lw` at 0x1003ae3c loads 4 bytes from abs 0x1014c864.
  The `lw` at 0x1003ae40 loads 4 bytes from sym(history_length) +0x0.
  The `sw` at 0x1003ae48 stores 4 bytes to ret(xmalloc) +0x8.
  The `lw` at 0x1003ae58 loads 4 bytes from abs 0x1024a890.
  The `sw` at 0x1003ae60 stores 4 bytes to ret(xmalloc) +0xc.
  2 such `sw` accesses store 4 bytes to ret(xmalloc) +0x10, including `sw` at 0x1003ae68, `sw` at 0x1003ae94.
  The `lw` at 0x1003ae78 loads 4 bytes from abs 0x1024a880.
  The `lw` at 0x1003ae88 loads 4 bytes from ret(xmalloc) +0x10.
  The `jal` at 0x1003adf8 calls xmalloc [0x10061950] with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1003ae7c targets 0x1003ae98, is taken when at(=[0x1024a880]) == 0, and falls through when at(=[0x1024a880]) != 0.
  The return at 0x1003aea8 has v0 = ret(xmalloc).

- `history_set_history_state` in `usr/gfx/KONA/bin/kpm` at 0x1003aeb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003aeb0-0x1003af60 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1003aecc loads 4 bytes from a0 (arg0 at entry) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003aed8, `lw` at 0x1003aef0, `lw` at 0x1003af20.
  The `sw` at 0x1003aedc stores 4 bytes to abs 0x1024a87c.
  The `lw` at 0x1003aee4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x1003aef4 stores 4 bytes to abs 0x1024a888.
  The `lw` at 0x1003aefc loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1003af08 loads 4 bytes from abs 0x1014c864.
  The `sw` at 0x1003af0c stores 4 bytes to sym(history_length) +0x0.
  The `lw` at 0x1003af14 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x1003af24 stores 4 bytes to abs 0x1024a890.
  The `lw` at 0x1003af2c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x1003af4c stores 4 bytes to abs 0x1024a880.
  The `beq` branch at 0x1003af34 targets 0x1003af50, is taken when (v0(=[a0+16]) & 0x1) == 0, and falls through when (v0(=[a0+16]) & 0x1) != 0.
  The return at 0x1003af58 has v0 = ?.

- `using_history` in `usr/gfx/KONA/bin/kpm` at 0x1003af60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003af60-0x1003af94 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x1003af74 loads 4 bytes from abs 0x1014c864.
  The `lw` at 0x1003af78 loads 4 bytes from sym(history_length) +0x0.
  The `lw` at 0x1003af84 loads 4 bytes from abs 0x1014bf68.
  The `sw` at 0x1003af88 stores 4 bytes to abs 0x1024a888.
  The return at 0x1003af8c has v0 = [sym(history_length)].

- `history_total_bytes` in `usr/gfx/KONA/bin/kpm` at 0x1003afa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003afa0-0x1003b0a8 (264 bytes).
  It occupies 264 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003afc8, `lw` at 0x1003afe0, `lw` at 0x1003b008.
  5 such `lw` accesses load 4 bytes from abs 0x1024a87c, including `lw` at 0x1003afcc, `lw` at 0x1003afe4, `lw` at 0x1003b00c.
  The `lw` at 0x1003aff4 loads 4 bytes from [0x1024a87c] +0x0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003b01c, `lw` at 0x1003b020, `lw` at 0x1003b084.
  The `lw` at 0x1003b02c loads 4 bytes from abs 0x1014c158.
  The `jalr` at 0x1003b030 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003afd0 targets 0x1003b090, is taken when at(=[0x1024a87c]) == 0, and falls through when at(=[0x1024a87c]) != 0.
  The `beq` branch at 0x1003aff8 targets 0x1003b090, is taken when v1(=[[0x1024a87c]]) == 0, and falls through when v1(=[[0x1024a87c]]) != 0.
  The `beq` branch at 0x1003b060 targets 0x1003b090, is taken when a1(=[0x1024a87c]) == 0, and falls through when a1(=[0x1024a87c]) != 0.
  The `bne` branch at 0x1003b088 targets 0x1003b000, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The return at 0x1003b0a0 has v0 = one of 0x0, ?.

- `add_history` in `usr/gfx/KONA/bin/kpm` at 0x1003b0b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003b0b0-0x1003b494 (996 bytes).
  It occupies 996 bytes.
  18 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003b0d4, `lw` at 0x1003b134, `lw` at 0x1003b150.
  The `lw` at 0x1003b0d8 loads 4 bytes from abs 0x1024a880.
  The `lw` at 0x1003b0ec loads 4 bytes from abs 0x1014c860.
  The `lw` at 0x1003b0f0 loads 4 bytes from sym(max_input_history) +0x0.
  10 such `lw` accesses load 4 bytes from abs 0x1014c864, including `lw` at 0x1003b0fc, `lw` at 0x1003b114, `lw` at 0x1003b1a8.
  8 such `lw` accesses load 4 bytes from sym(history_length) +0x0, including `lw` at 0x1003b100, `lw` at 0x1003b118, `lw` at 0x1003b1ac.
  8 such `lw` accesses load 4 bytes from abs 0x1024a87c, including `lw` at 0x1003b138, `lw` at 0x1003b154, `lw` at 0x1003b180.
  3 such `lw` accesses load 4 bytes from [0x1024a87c] +0x0, including `lw` at 0x1003b13c, `lw` at 0x1003b158, `lw` at 0x1003b184.
  The `lw` at 0x1003b15c loads 4 bytes from [[0x1024a87c]] +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1003b168, `lw` at 0x1003b190.
  The `lw` at 0x1003b1e0 loads 4 bytes from ?.
  The `sw` at 0x1003b200 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7a8, including `lw` at 0x1003b238, `lw` at 0x1003b24c.
  The `lw` at 0x1003b23c loads 4 bytes from sym(history_base) +0x0.
  The `sw` at 0x1003b250 stores 4 bytes to sym(history_base) +0x0.
  5 such `lw` accesses load 4 bytes from abs 0x1024a890, including `lw` at 0x1003b268, `lw` at 0x1003b294, `lw` at 0x1003b2fc.
  2 such `sw` accesses store 4 bytes to abs 0x1024a890, including `sw` at 0x1003b284, `sw` at 0x1003b32c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1003b2a4, `lw` at 0x1003b3ac, `lw` at 0x1003b3e8.
  2 such `sw` accesses store 4 bytes to abs 0x1024a87c, including `sw` at 0x1003b2c0, `sw` at 0x1003b378.
  2 such `sw` accesses store 4 bytes to sym(history_length) +0x0, including `sw` at 0x1003b2d4, `sw` at 0x1003b39c.
  The `lw` at 0x1003b35c loads 4 bytes from abs 0x1014c6e8.
  The `lw` at 0x1003b3cc loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1003b404 loads 4 bytes from abs 0x1014c0f8.
  The `sw` at 0x1003b414 stores 4 bytes to ret(xmalloc) +0x0.
  The `sw` at 0x1003b41c stores 4 bytes to ret(xmalloc) +0x4.
  The `sw` at 0x1003b448 stores 4 bytes to ([0x1024a87c] + ([sym(history_length)] << 0x2)) +0x0.
  The `sw` at 0x1003b47c stores 4 bytes to ([0x1024a87c] + ([sym(history_length)]-1 << 0x2)) +0x0.
  The `jalr` at 0x1003b16c calls free with a0=[[[0x1024a87c]]], a1=[[0x1024a87c]], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003b194 calls free with a0=[[0x1024a87c]], a1=?, a2=?, a3=?.
  The `jal` at 0x1003b2a8 calls xmalloc [0x10061950] with a0=([0x1024a890] << 0x2), a1=0x32, a2=0x1024a868, a3=a3 at entry (arg3).
  The `jal` at 0x1003b360 calls xrealloc [0x100619d0] with a0=[0x1024a87c], a1=([0x1024a890] << 0x2), a2=0x1024a868, a3=a3 at entry (arg3), a6=[sym(history_length)], a7=[0x1024a890]-1.
  The `jal` at 0x1003b3b0 calls xmalloc [0x10061950] with a0=0x8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b3d0 calls strlen with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1003b3ec calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b408 calls strcpy with a0=ret(xmalloc), a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1003b0dc targets 0x1003b25c, is taken when at(=[0x1024a880]) == 0, and falls through when at(=[0x1024a880]) != 0.
  The `bne` branch at 0x1003b104 targets 0x1003b25c, is taken when v1(=[sym(max_input_history)]) != a0(=[sym(history_length)]), and falls through when v1(=[sym(max_input_history)]) == a0(=[sym(history_length)]).
  The `bne` branch at 0x1003b11c targets 0x1003b12c, is taken when a0(=[sym(history_length)]) != 0, and falls through when a0(=[sym(history_length)]) == 0.
  The `beq` branch at 0x1003b124 targets 0x1003b480 and is always taken.
  The `beq` branch at 0x1003b140 targets 0x1003b19c, is taken when a1(=[[0x1024a87c]]) == 0, and falls through when a1(=[[0x1024a87c]]) != 0.
  The `beq` branch at 0x1003b1b8 targets 0x1003b230, is taken when a1(=0x0) >= a2(=[sym(history_length)]) (signed), and falls through when a1(=0x0) < a2(=[sym(history_length)]) (signed).
  The `bne` branch at 0x1003b228 targets 0x1003b1c0, is taken when a3(?) < a4(=[sym(history_length)]) (signed), and falls through when a3(?) >= a4(=[sym(history_length)]) (signed).
  The `beq` branch at 0x1003b254 targets 0x1003b3a0 and is always taken.
  The `bne` branch at 0x1003b26c targets 0x1003b2e0, is taken when t0(=[0x1024a890]) != 0, and falls through when t0(=[0x1024a890]) == 0.
  The `beq` branch at 0x1003b2d8 targets 0x1003b3a0 and is always taken.
  The `bne` branch at 0x1003b304 targets 0x1003b37c, is taken when a6(=[sym(history_length)]) != a7(=[0x1024a890]-1), and falls through when a6(=[sym(history_length)]) == a7(=[0x1024a890]-1).
  The return at 0x1003b48c has v0 = one of 0x118c10, ([sym(history_length)]-1 << 0x2).

- `replace_history_entry` in `usr/gfx/KONA/bin/kpm` at 0x1003b4a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003b4a0-0x1003b5e0 (320 bytes).
  It occupies 320 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1003b4d0, `lw` at 0x1003b55c.
  The `lw` at 0x1003b4ec loads 4 bytes from abs 0x1014c864.
  The `lw` at 0x1003b4f0 loads 4 bytes from sym(history_length) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003b518, `lw` at 0x1003b5a4.
  2 such `lw` accesses load 4 bytes from abs 0x1024a87c, including `lw` at 0x1003b51c, `lw` at 0x1003b5a8.
  The `lw` at 0x1003b52c loads 4 bytes from ([0x1024a87c] + (a0 << 0x2)) +0x0.
  The `lw` at 0x1003b540 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1003b578 loads 4 bytes from abs 0x1014c0f8.
  The `sw` at 0x1003b588 stores 4 bytes to ret(xmalloc) +0x0.
  The `sw` at 0x1003b594 stores 4 bytes to ret(xmalloc) +0x4.
  The `sw` at 0x1003b5b8 stores 4 bytes to ([0x1024a87c] + (a0 << 0x2)) +0x0.
  The `jal` at 0x1003b4d4 calls xmalloc [0x10061950] with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003b544 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1003b560 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003b57c calls strcpy with a0=ret(xmalloc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x1003b4fc targets 0x1003b510, is taken when at(=a0) < v0(=[sym(history_length)]) (signed), and falls through when at(=a0) >= v0(=[sym(history_length)]) (signed).
  The `beq` branch at 0x1003b508 targets 0x1003b5c8 and is always taken.
  The return at 0x1003b5d8 has v0 = one of 0x0, [([0x1024a87c] + (a0 << 0x2))].

- `where_history` in `usr/gfx/KONA/bin/kpm` at 0x1003b5e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003b5e0-0x1003b604 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x1003b5f4 loads 4 bytes from abs 0x1014bf68.
  The `lw` at 0x1003b5f8 loads 4 bytes from abs 0x1024a888.
  The return at 0x1003b5fc has v0 = [0x1024a888].

- `history_search` in `usr/gfx/KONA/bin/kpm` at 0x1003ba60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003ba60-0x1003bab4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1003ba94 loads 4 bytes from abs 0x1014bf6c.
  The `jal` at 0x1003ba98 calls (unnamed) [0x1003b610] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The return at 0x1003baac has v0 = ret(0x1003b610).

- `history_search_prefix` in `usr/gfx/KONA/bin/kpm` at 0x1003bac0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003bac0-0x1003bb14 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1003baf4 loads 4 bytes from abs 0x1014bf6c.
  The `jal` at 0x1003baf8 calls (unnamed) [0x1003b610] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3).
  The return at 0x1003bb0c has v0 = ret(0x1003b610).

- `remove_history` in `usr/gfx/KONA/bin/kpm` at 0x1003bb20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003bb20-0x1003bc70 (336 bytes).
  It occupies 336 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014c864, including `lw` at 0x1003bb40, `lw` at 0x1003bb60, `lw` at 0x1003bbb0.
  5 such `lw` accesses load 4 bytes from sym(history_length) +0x0, including `lw` at 0x1003bb44, `lw` at 0x1003bb64, `lw` at 0x1003bbb4.
  3 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003bb84, `lw` at 0x1003bbd0, `lw` at 0x1003bbf4.
  3 such `lw` accesses load 4 bytes from abs 0x1024a87c, including `lw` at 0x1003bb88, `lw` at 0x1003bbd4, `lw` at 0x1003bbf8.
  The `lw` at 0x1003bb98 loads 4 bytes from ([0x1024a87c] + (a0 << 0x2)) +0x0.
  The `lw` at 0x1003bbe8 loads 4 bytes from ?.
  The `sw` at 0x1003bc08 stores 4 bytes to ?.
  The `sw` at 0x1003bc58 stores 4 bytes to sym(history_length) +0x0.
  The `beq` branch at 0x1003bb50 targets 0x1003bb70, is taken when v0(=a0) >= v1(=[sym(history_length)]) (signed), and falls through when v0(=a0) < v1(=[sym(history_length)]) (signed).
  The `bne` branch at 0x1003bb68 targets 0x1003bb7c, is taken when a2(=[sym(history_length)]) != 0, and falls through when a2(=[sym(history_length)]) == 0.
  The `beq` branch at 0x1003bb74 targets 0x1003bc5c and is always taken.
  The `beq` branch at 0x1003bbc0 targets 0x1003bc38, is taken when a3(=a0) >= a4(=[sym(history_length)]) (signed), and falls through when a3(=a0) < a4(=[sym(history_length)]) (signed).
  The `bne` branch at 0x1003bc30 targets 0x1003bbc8, is taken when a7(?) < t0(=[sym(history_length)]) (signed), and falls through when a7(?) >= t0(=[sym(history_length)]) (signed).
  The return at 0x1003bc68 has v0 = one of 0x0, [([0x1024a87c] + (a0 << 0x2))].

- `stifle_history` in `usr/gfx/KONA/bin/kpm` at 0x1003bc70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003bc70-0x1003beb4 (580 bytes).
  It occupies 580 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c864, including `lw` at 0x1003bca4, `lw` at 0x1003bccc, `lw` at 0x1003bd6c.
  4 such `lw` accesses load 4 bytes from sym(history_length) +0x0, including `lw` at 0x1003bca8, `lw` at 0x1003bcd0, `lw` at 0x1003bd70.
  6 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003bcf0, `lw` at 0x1003bd28, `lw` at 0x1003bdd8.
  5 such `lw` accesses load 4 bytes from abs 0x1024a87c, including `lw` at 0x1003bcf4, `lw` at 0x1003bd2c, `lw` at 0x1003bddc.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1003bd04, `lw` at 0x1003bd08, `lw` at 0x1003bd3c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1003bd14, `lw` at 0x1003bd48.
  The `lw` at 0x1003bd94 loads 4 bytes from abs 0x1014c7a8.
  The `sw` at 0x1003bd98 stores 4 bytes to sym(history_base) +0x0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1003be0c, `sw` at 0x1003be60.
  The `sw` at 0x1003be74 stores 4 bytes to sym(history_length) +0x0.
  The `sw` at 0x1003be88 stores 4 bytes to abs 0x1024a880.
  The `lw` at 0x1003be98 loads 4 bytes from abs 0x1014c860.
  The `sw` at 0x1003be9c stores 4 bytes to sym(max_input_history) +0x0.
  The `jalr` at 0x1003bd18 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003bd4c calls free with a0=?, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x1003bc90 targets 0x1003bc9c, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1003bcb4 targets 0x1003be78, is taken when v1(?) >= a0(=[sym(history_length)]) (signed), and falls through when v1(?) < a0(=[sym(history_length)]) (signed).
  The `beq` branch at 0x1003bce0 targets 0x1003bd88, is taken when a1(=0x0) >= a2(?) (signed), and falls through when a1(=0x0) < a2(?) (signed).
  The `bne` branch at 0x1003bd80 targets 0x1003bce8, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The `beq` branch at 0x1003bdc8 targets 0x1003be44, is taken when a4(=0x0) >= a5(?) (signed), and falls through when a4(=0x0) < a5(?) (signed).
  The `bne` branch at 0x1003be3c targets 0x1003bdd0, is taken when t1(?) < t2(?) (signed), and falls through when t1(?) >= t2(?) (signed).
  The return at 0x1003beac has v0 = one of 0x118050, sym(history_length).

- `unstifle_history` in `usr/gfx/KONA/bin/kpm` at 0x1003bec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003bec0-0x1003bf30 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1003bedc loads 4 bytes from abs 0x1014c860.
  The `lw` at 0x1003bee0 loads 4 bytes from sym(max_input_history) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003bef0, `lw` at 0x1003bf14.
  The `lw` at 0x1003bef4 loads 4 bytes from abs 0x1024a880.
  The `sw` at 0x1003bf18 stores 4 bytes to abs 0x1024a880.
  The `beq` branch at 0x1003bef8 targets 0x1003bf1c, is taken when v0(=[0x1024a880]) == 0, and falls through when v0(=[0x1024a880]) != 0.
  The return at 0x1003bf28 has v0 = one of [sym(max_input_history)], ?.

- `history_is_stifled` in `usr/gfx/KONA/bin/kpm` at 0x1003bf30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003bf30-0x1003bf54 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x1003bf44 loads 4 bytes from abs 0x1014bf68.
  The `lw` at 0x1003bf48 loads 4 bytes from abs 0x1024a880.
  The return at 0x1003bf4c has v0 = [0x1024a880].

- `read_history` in `usr/gfx/KONA/bin/kpm` at 0x1003c110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003c110-0x1003c160 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1003c140 loads 4 bytes from abs 0x1014c484.
  The `jal` at 0x1003c144 calls read_history_range [0x1003c160] with a0=a0 at entry (arg0), a1=0x0, a2=-0x1, a3=a3 at entry (arg3).
  The return at 0x1003c158 has v0 = ret(read_history_range).

- `read_history_range` in `usr/gfx/KONA/bin/kpm` at 0x1003c160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003c160-0x1003c534 (980 bytes).
  It occupies 980 bytes.
  The `lw` at 0x1003c194 loads 4 bytes from abs 0x1014bf74.
  The `lw` at 0x1003c1bc loads 4 bytes from abs 0x1014c194.
  The `lw` at 0x1003c1ec loads 4 bytes from abs 0x1014c204.
  The `lw` at 0x1003c220 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1003c24c loads 4 bytes from abs 0x1014c0f4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c104, including `lw` at 0x1003c280, `lw` at 0x1003c2fc.
  4 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1003c2a4, `lw` at 0x1003c2c8, `lw` at 0x1003c4e4.
  The `lw` at 0x1003c2dc loads 4 bytes from abs 0x1014c134.
  The `lw` at 0x1003c2e0 loads 4 bytes from sym(errno) +0x0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1003c380, `lbu` at 0x1003c428, `lbu` at 0x1003c454.
  The `sb` at 0x1003c444 stores 1 byte to ?.
  The `lw` at 0x1003c474 loads 4 bytes from abs 0x1014c470.
  The `jal` at 0x1003c198 calls (unnamed) [0x1003bf60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003c1c0 calls open with a0=ret(0x1003bf60), a1=0x0, a2=0x1b6, a3=?.
  The `jalr` at 0x1003c1f0 calls fstat with a0=ret(open), a1=sp-240, a2=?, a3=?.
  The `jal` at 0x1003c224 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c250 calls read with a0=ret(open), a1=ret(xmalloc), a2=?, a3=?.
  The `jalr` at 0x1003c284 calls close with a0=ret(open), a1=?, a2=?, a3=?, a4=ret(open).
  The `jalr` at 0x1003c2a8 calls free with a0=ret(0x1003bf60), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c2cc calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c300 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jal` at 0x1003c478 calls add_history [0x1003b0b0] with a0=?, a1=ret(xmalloc), a2=?, a3=?, a5=0xa, a7=ret(xmalloc).
  The `jalr` at 0x1003c4e8 calls free with a0=ret(0x1003bf60), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c50c calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `bltz` branch at 0x1003c1d4 targets 0x1003c268, is taken when ra(=ret(open)) < 0 (signed), and falls through when ra(=ret(open)) >= 0 (signed).
  The `bne` branch at 0x1003c200 targets 0x1003c210, is taken when v0(=ret(fstat)) != ra(=-0x1), and falls through when v0(=ret(fstat)) == ra(=-0x1).
  The `beq` branch at 0x1003c208 targets 0x1003c268 and is always taken.
  The `beq` branch at 0x1003c260 targets 0x1003c2f0, is taken when v0(=ret(read)) == a3(?), and falls through when v0(=ret(read)) != a3(?).
  The `bltz` branch at 0x1003c26c targets 0x1003c28c, is taken when a4(=ret(open)) < 0 (signed), and falls through when a4(=ret(open)) >= 0 (signed).
  The `beq` branch at 0x1003c290 targets 0x1003c2b0, is taken when ra(=ret(0x1003bf60)) == 0, and falls through when ra(=ret(0x1003bf60)) != 0.
  The `beq` branch at 0x1003c2b4 targets 0x1003c2d4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1003c2e8 targets 0x1003c51c and is always taken.
  The `bgez` branch at 0x1003c30c targets 0x1003c31c, is taken when ra(=a2) >= 0 (signed), and falls through when ra(=a2) < 0 (signed).
  The `beq` branch at 0x1003c33c targets 0x1003c400, is taken when v0(=0x0) >= v1(?) (signed), and falls through when v0(=0x0) < v1(?) (signed).
  The `beq` branch at 0x1003c350 targets 0x1003c400, is taken when a1(=0x0) >= a2(=a1) (signed), and falls through when a1(=0x0) < a2(=a1) (signed).
  The `beq` branch at 0x1003c36c targets 0x1003c3d8, is taken when a3(?) >= a4(?) (signed), and falls through when a3(?) < a4(?) (signed).
  The `bne` branch at 0x1003c388 targets 0x1003c3b8, is taken when a6(?) != a7(=0xa), and falls through when a6(?) == a7(=0xa).
  The `beq` branch at 0x1003c3b0 targets 0x1003c3d8, is taken when t0(=a1) == t1(?), and falls through when t0(=a1) != t1(?).
  The `bne` branch at 0x1003c3d0 targets 0x1003c374, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `beq` branch at 0x1003c3e4 targets 0x1003c400, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `bne` branch at 0x1003c3f8 targets 0x1003c358, is taken when v1(?) < a0(=a1) (signed), and falls through when v1(?) >= a0(=a1) (signed).
  The `beq` branch at 0x1003c414 targets 0x1003c4cc, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `bne` branch at 0x1003c430 targets 0x1003c4ac, is taken when a4(?) != a5(=0xa), and falls through when a4(?) == a5(=0xa).
  The `beq` branch at 0x1003c458 targets 0x1003c480, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1003c498 targets 0x1003c4cc, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `bne` branch at 0x1003c4c4 targets 0x1003c41c, is taken when a6(?) < a7(?) (signed), and falls through when a6(?) >= a7(?) (signed).
  The `beq` branch at 0x1003c4d0 targets 0x1003c4f0, is taken when t1(=ret(0x1003bf60)) == 0, and falls through when t1(=ret(0x1003bf60)) != 0.
  The `beq` branch at 0x1003c4f4 targets 0x1003c514, is taken when ra(=ret(xmalloc)) == 0, and falls through when ra(=ret(xmalloc)) != 0.
  The return at 0x1003c52c has v0 = one of [sym(errno)], 0x0.

- `history_truncate_file` in `usr/gfx/KONA/bin/kpm` at 0x1003c540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003c540-0x1003c80c (716 bytes).
  It occupies 716 bytes.
  The `lw` at 0x1003c570 loads 4 bytes from abs 0x1014bf74.
  2 such `lw` accesses load 4 bytes from abs 0x1014c194, including `lw` at 0x1003c598, `lw` at 0x1003c748.
  The `lw` at 0x1003c5cc loads 4 bytes from abs 0x1014c204.
  The `lw` at 0x1003c600 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1003c62c loads 4 bytes from abs 0x1014c0f4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c104, including `lw` at 0x1003c64c, `lw` at 0x1003c7ac.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1003c694, `lbu` at 0x1003c6ec.
  The `lw` at 0x1003c794 loads 4 bytes from abs 0x1014c208.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1003c7d0, `lw` at 0x1003c7e8.
  The `jal` at 0x1003c574 calls (unnamed) [0x1003bf60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003c59c calls open with a0=ret(0x1003bf60), a1=0x0, a2=0x1b6, a3=?.
  The `jalr` at 0x1003c5d0 calls fstat with a0=ret(open), a1=sp-208, a2=?, a3=?.
  The `jal` at 0x1003c604 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c630 calls read with a0=ret(open), a1=ret(xmalloc), a2=?, a3=?.
  The `jalr` at 0x1003c650 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c74c calls open with a0=ret(0x1003bf60), a1=0x201, a2=0x1b6, a3=?.
  The `jalr` at 0x1003c798 calls write with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c7b0 calls close with a0=ret(open), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c7d4 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003c7ec calls free with a0=ret(0x1003bf60), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003c5b4 targets 0x1003c7b8, is taken when ra(=ret(open)) == at(=-0x1), and falls through when ra(=ret(open)) != at(=-0x1).
  The `bne` branch at 0x1003c5e0 targets 0x1003c5f0, is taken when v0(=ret(fstat)) != ra(=-0x1), and falls through when v0(=ret(fstat)) == ra(=-0x1).
  The `beq` branch at 0x1003c5e8 targets 0x1003c7b8 and is always taken.
  The `blez` branch at 0x1003c65c targets 0x1003c7b8, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x1003c674 targets 0x1003c6d4, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `beq` branch at 0x1003c680 targets 0x1003c6d4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1003c69c targets 0x1003c6b0, is taken when a0(?) != a1(=0xa), and falls through when a0(?) == a1(=0xa).
  The `beq` branch at 0x1003c6c0 targets 0x1003c6d4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x1003c6cc targets 0x1003c688, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1003c6d8 targets 0x1003c728, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1003c6f4 targets 0x1003c710, is taken when a7(?) != t0(=0xa), and falls through when a7(?) == t0(=0xa).
  The `beq` branch at 0x1003c708 targets 0x1003c728 and is always taken.
  The `bne` branch at 0x1003c720 targets 0x1003c6e0, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x1003c72c targets 0x1003c7b8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1003c764 targets 0x1003c7b8, is taken when ra(=ret(open)) == at(=-0x1), and falls through when ra(=ret(open)) != at(=-0x1).
  The `beq` branch at 0x1003c7bc targets 0x1003c7dc, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The return at 0x1003c804 has v0 = 0x0.

- `append_history` in `usr/gfx/KONA/bin/kpm` at 0x1003cba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003cba0-0x1003cbf4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1003cbd4 loads 4 bytes from abs 0x1014bf78.
  The `jal` at 0x1003cbd8 calls (unnamed) [0x1003c810] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3).
  The return at 0x1003cbec has v0 = ret(0x1003c810).

- `write_history` in `usr/gfx/KONA/bin/kpm` at 0x1003cc00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003cc00-0x1003cc5c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x1003cc28 loads 4 bytes from abs 0x1014c864.
  The `lw` at 0x1003cc2c loads 4 bytes from sym(history_length) +0x0.
  The `lw` at 0x1003cc3c loads 4 bytes from abs 0x1014bf78.
  The `jal` at 0x1003cc40 calls (unnamed) [0x1003c810] with a0=a0 at entry (arg0), a1=[sym(history_length)], a2=0x1, a3=a3 at entry (arg3).
  The return at 0x1003cc54 has v0 = ret(0x1003c810).

- `current_history` in `usr/gfx/KONA/bin/kpm` at 0x1003cc60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003cc60-0x1003cd10 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1003cc7c loads 4 bytes from abs 0x1014c864.
  The `lw` at 0x1003cc80 loads 4 bytes from sym(history_length) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003cc8c, `lw` at 0x1003cca4, `lw` at 0x1003ccc8.
  2 such `lw` accesses load 4 bytes from abs 0x1024a888, including `lw` at 0x1003cc90, `lw` at 0x1003ccdc.
  2 such `lw` accesses load 4 bytes from abs 0x1024a87c, including `lw` at 0x1003cca8, `lw` at 0x1003cccc.
  The `lw` at 0x1003cce8 loads 4 bytes from ([0x1024a87c] + ([0x1024a888] << 0x2)) +0x0.
  The `beq` branch at 0x1003cc94 targets 0x1003ccb4, is taken when v0(=[sym(history_length)]) == v1(=[0x1024a888]), and falls through when v0(=[sym(history_length)]) != v1(=[0x1024a888]).
  The `bne` branch at 0x1003ccac targets 0x1003ccc0, is taken when a0(=[0x1024a87c]) != 0, and falls through when a0(=[0x1024a87c]) == 0.
  The `beq` branch at 0x1003ccb8 targets 0x1003ccfc and is always taken.
  The `beq` branch at 0x1003ccf4 targets 0x1003ccfc and is always taken.
  The return at 0x1003cd08 has v0 = one of 0x0, [([0x1024a87c] + ([0x1024a888] << 0x2))].

- `previous_history` in `usr/gfx/KONA/bin/kpm` at 0x1003cd10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003cd10-0x1003cdbc (172 bytes).
  It occupies 172 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003cd2c, `lw` at 0x1003cd50, `lw` at 0x1003cd64.
  3 such `lw` accesses load 4 bytes from abs 0x1024a888, including `lw` at 0x1003cd30, `lw` at 0x1003cd54, `lw` at 0x1003cd88.
  The `sw` at 0x1003cd68 stores 4 bytes to abs 0x1024a888.
  The `lw` at 0x1003cd78 loads 4 bytes from abs 0x1024a87c.
  The `lw` at 0x1003cd94 loads 4 bytes from ([0x1024a87c] + ([0x1024a888] << 0x2)) +0x0.
  The `bne` branch at 0x1003cd34 targets 0x1003cd48, is taken when v0(=[0x1024a888]) != 0, and falls through when v0(=[0x1024a888]) == 0.
  The `beq` branch at 0x1003cd40 targets 0x1003cda8 and is always taken.
  The `beq` branch at 0x1003cda0 targets 0x1003cda8 and is always taken.
  The return at 0x1003cdb4 has v0 = one of 0x0, [([0x1024a87c] + ([0x1024a888] << 0x2))].

- `next_history` in `usr/gfx/KONA/bin/kpm` at 0x1003cdc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003cdc0-0x1003ce7c (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x1003cddc loads 4 bytes from abs 0x1014c864.
  The `lw` at 0x1003cde0 loads 4 bytes from sym(history_length) +0x0.
  5 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003cdec, `lw` at 0x1003ce10, `lw` at 0x1003ce24.
  3 such `lw` accesses load 4 bytes from abs 0x1024a888, including `lw` at 0x1003cdf0, `lw` at 0x1003ce14, `lw` at 0x1003ce48.
  The `sw` at 0x1003ce28 stores 4 bytes to abs 0x1024a888.
  The `lw` at 0x1003ce38 loads 4 bytes from abs 0x1024a87c.
  The `lw` at 0x1003ce54 loads 4 bytes from ([0x1024a87c] + ([0x1024a888] << 0x2)) +0x0.
  The `bne` branch at 0x1003cdf4 targets 0x1003ce08, is taken when v0(=[sym(history_length)]) != v1(=[0x1024a888]), and falls through when v0(=[sym(history_length)]) == v1(=[0x1024a888]).
  The `beq` branch at 0x1003ce00 targets 0x1003ce68 and is always taken.
  The `beq` branch at 0x1003ce60 targets 0x1003ce68 and is always taken.
  The return at 0x1003ce74 has v0 = one of 0x0, [([0x1024a87c] + ([0x1024a888] << 0x2))].

- `history_list` in `usr/gfx/KONA/bin/kpm` at 0x1003ce80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003ce80-0x1003cea4 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x1003ce94 loads 4 bytes from abs 0x1014bf68.
  The `lw` at 0x1003ce98 loads 4 bytes from abs 0x1024a87c.
  The return at 0x1003ce9c has v0 = [0x1024a87c].

- `history_get` in `usr/gfx/KONA/bin/kpm` at 0x1003ceb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003ceb0-0x1003cf70 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x1003ced4 loads 4 bytes from abs 0x1014c7a8.
  The `lw` at 0x1003ced8 loads 4 bytes from sym(history_base) +0x0.
  The `lw` at 0x1003ceec loads 4 bytes from abs 0x1014c864.
  The `lw` at 0x1003cef0 loads 4 bytes from sym(history_length) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003cf18, `lw` at 0x1003cf3c.
  2 such `lw` accesses load 4 bytes from abs 0x1024a87c, including `lw` at 0x1003cf1c, `lw` at 0x1003cf40.
  The `lw` at 0x1003cf50 loads 4 bytes from ?.
  The `beq` branch at 0x1003cefc targets 0x1003cf28, is taken when v0(?) >= v1(=[sym(history_length)]) (signed), and falls through when v0(?) < v1(=[sym(history_length)]) (signed).
  The `bltz` branch at 0x1003cf08 targets 0x1003cf28, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x1003cf20 targets 0x1003cf34, is taken when a4(=[0x1024a87c]) != 0, and falls through when a4(=[0x1024a87c]) == 0.
  The `beq` branch at 0x1003cf2c targets 0x1003cf5c and is always taken.
  The return at 0x1003cf68 has v0 = one of 0x0, ?.

- `history_search_pos` in `usr/gfx/KONA/bin/kpm` at 0x1003cf70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003cf70-0x1003d074 (260 bytes).
  It occupies 260 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c478, including `lw` at 0x1003cf9c, `lw` at 0x1003d024.
  3 such `lw` accesses load 4 bytes from abs 0x1014c49c, including `lw` at 0x1003cfbc, `lw` at 0x1003d000, `lw` at 0x1003d044.
  The `lw` at 0x1003cfd8 loads 4 bytes from abs 0x1014c47c.
  The `jal` at 0x1003cfa0 calls where_history [0x1003b5e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003cfc0 calls history_set_pos [0x1003d080] with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jal` at 0x1003cfdc calls history_search [0x1003ba60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1003d004 calls history_set_pos [0x1003d080] with a0=ret(where_history), a1=?, a2=?, a3=?.
  The `jal` at 0x1003d028 calls where_history [0x1003b5e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1003d048 calls history_set_pos [0x1003d080] with a0=ret(where_history), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1003cfec targets 0x1003d01c, is taken when v0(=ret(history_search)) != ra(=-0x1), and falls through when v0(=ret(history_search)) == ra(=-0x1).
  The `beq` branch at 0x1003d014 targets 0x1003d05c and is always taken.
  The return at 0x1003d06c has v0 = one of -0x1, ret(where_history).

- `history_set_pos` in `usr/gfx/KONA/bin/kpm` at 0x1003d080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003d080-0x1003d11c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x1003d0a0 loads 4 bytes from abs 0x1014c864.
  The `lw` at 0x1003d0a4 loads 4 bytes from sym(history_length) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003d0cc, `lw` at 0x1003d0f4.
  The `lw` at 0x1003d0d0 loads 4 bytes from abs 0x1024a87c.
  The `sw` at 0x1003d0f8 stores 4 bytes to abs 0x1024a888.
  The `bne` branch at 0x1003d0b0 targets 0x1003d0dc, is taken when v0(=[sym(history_length)]) < v1(=a0) (signed), and falls through when v0(=[sym(history_length)]) >= v1(=a0) (signed).
  The `bltz` branch at 0x1003d0bc targets 0x1003d0dc, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x1003d0d4 targets 0x1003d0e8, is taken when a1(=[0x1024a87c]) != 0, and falls through when a1(=[0x1024a87c]) == 0.
  The `beq` branch at 0x1003d0e0 targets 0x1003d108 and is always taken.
  The return at 0x1003d114 has v0 = one of 0x0, 0x1.

- `get_history_event` in `usr/gfx/KONA/bin/kpm` at 0x1003d120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003d120-0x1003d830 (1808 bytes).
  It occupies 1808 bytes.
  The `lw` at 0x1003d148 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lbu` at 0x1003d168 loads 1 byte from ([a1] + a0) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c79c, including `lw` at 0x1003d174, `lw` at 0x1003d1b4.
  2 such `lbu` accesses load 1 byte from sym(history_expansion_char) +0x0, including `lbu` at 0x1003d178, `lbu` at 0x1003d1b8.
  2 such `lbu` accesses load 1 byte from ([a1]+1 + a0) +0x0, including `lbu` at 0x1003d1a8, `lbu` at 0x1003d26c.
  5 such `lw` accesses load 4 bytes from abs 0x1014c864, including `lw` at 0x1003d1d8, `lw` at 0x1003d394, `lw` at 0x1003d660.
  5 such `lw` accesses load 4 bytes from sym(history_length) +0x0, including `lw` at 0x1003d1dc, `lw` at 0x1003d398, `lw` at 0x1003d664.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7a8, including `lw` at 0x1003d1e8, `lw` at 0x1003d3a4.
  2 such `lw` accesses load 4 bytes from sym(history_base) +0x0, including `lw` at 0x1003d1ec, `lw` at 0x1003d3a8.
  3 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x1003d204, `sw` at 0x1003d37c, `sw` at 0x1003d608.
  2 such `lw` accesses load 4 bytes from abs 0x1014c498, including `lw` at 0x1003d214, `lw` at 0x1003d3c8.
  2 such `lw` accesses load 4 bytes from ret(history_get) +0x0, including `lw` at 0x1003d23c, `lw` at 0x1003d3f0.
  5 such `lbu` accesses load 1 byte from (([a1] + one of 0x1, 0x2) + a0) +0x0, including `lbu` at 0x1003d29c, `lbu` at 0x1003d2b8, `lbu` at 0x1003d2d8.
  8 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1003d310, `lbu` at 0x1003d348, `lbu` at 0x1003d364.
  The `lbu` at 0x1003d45c loads 1 byte from (([a1] + one of 0x1, 0x2, 0x3) + a0) +0x0.
  The `lw` at 0x1003d570 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1003d5a8 loads 4 bytes from abs 0x1014c20c.
  The `sb` at 0x1003d5c8 stores 1 byte to ?.
  The `lw` at 0x1003d638 loads 4 bytes from abs 0x1014bf6c.
  9 such `lw` accesses load 4 bytes from abs 0x1014bf68, including `lw` at 0x1003d670, `lw` at 0x1003d6e8, `lw` at 0x1003d704.
  4 such `sw` accesses store 4 bytes to abs 0x1024a888, including `sw` at 0x1003d674, `sw` at 0x1003d6ec, `sw` at 0x1003d7b8.
  4 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1003d684, `lw` at 0x1003d72c, `lw` at 0x1003d760.
  The `lw` at 0x1003d6bc loads 4 bytes from abs 0x1014c488.
  2 such `lw` accesses load 4 bytes from abs 0x1024a898, including `lw` at 0x1003d708, `lw` at 0x1003d720.
  The `sw` at 0x1003d748 stores 4 bytes to abs 0x1024a898.
  The `lw` at 0x1003d770 loads 4 bytes from ret(current_history) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1024a888, including `lw` at 0x1003d78c, `lw` at 0x1003d7a4.
  The `jal` at 0x1003d218 calls history_get [0x1003ceb0] with a0=([sym(history_length)] + [sym(history_base)])-1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x116ba0, a4=[([a1]+1 + a0)]:1, a5=[sym(history_expansion_char)]:1, a6=[a1]+1.
  The `jal` at 0x1003d3cc calls history_get [0x1003ceb0] with a0=?, a1=?, a2=?, a3=?, a4=one of -0x1, 0x1, a6=a1 at entry (arg1).
  The `jal` at 0x1003d574 calls xmalloc [0x10061950] with a0=?, a1=([a1] + one of 0x1, 0x2, 0x3), a2=?, a3=?.
  The `jalr` at 0x1003d5ac calls strncpy with a0=ret(xmalloc), a1=(([a1] + one of 0x1, 0x2, 0x3) + a0), a2=?, a3=([a1] + one of 0x1, 0x2, 0x3).
  The `jal` at 0x1003d63c calls (unnamed) [0x1003b610] with a0=ret(xmalloc), a1=-0x1, a2=?, a3=?.
  The `jalr` at 0x1003d688 calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jal` at 0x1003d6c0 calls current_history [0x1003cc60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d730 calls free with a0=[0x1024a898], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d764 calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1003d7f4 calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1003d17c targets 0x1003d190, is taken when at(=[([a1] + a0)]:1) == v0(=[sym(history_expansion_char)]:1), and falls through when at(=[([a1] + a0)]:1) != v0(=[sym(history_expansion_char)]:1).
  The `beq` branch at 0x1003d188 targets 0x1003d818 and is always taken.
  The `bne` branch at 0x1003d1bc targets 0x1003d260, is taken when a4(=[([a1]+1 + a0)]:1) != a5(=[sym(history_expansion_char)]:1), and falls through when a4(=[([a1]+1 + a0)]:1) == a5(=[sym(history_expansion_char)]:1).
  The `beq` branch at 0x1003d230 targets 0x1003d24c, is taken when a0(=ret(history_get)) == 0, and falls through when a0(=ret(history_get)) != 0.
  The `beq` branch at 0x1003d244 targets 0x1003d250 and is always taken.
  The `beq` branch at 0x1003d258 targets 0x1003d818 and is always taken.
  The `bne` branch at 0x1003d274 targets 0x1003d290, is taken when a3(=[([a1]+1 + a0)]:1) != a4(=0x2d), and falls through when a3(=[([a1]+1 + a0)]:1) == a4(=0x2d).
  The `bne` branch at 0x1003d2a4 targets 0x1003d414, is taken when a7(=[(([a1] + one of 0x1, 0x2) + a0)]:1) < 0x30 (signed), and falls through when a7(=[(([a1] + one of 0x1, 0x2) + a0)]:1) >= 0x30 (signed).
  The `beq` branch at 0x1003d2c0 targets 0x1003d414, is taken when t1(=[(([a1] + one of 0x1, 0x2) + a0)]:1) >= 0x3a (signed), and falls through when t1(=[(([a1] + one of 0x1, 0x2) + a0)]:1) < 0x3a (signed).
  The `bne` branch at 0x1003d2e0 targets 0x1003d374, is taken when t3(=[(([a1] + one of 0x1, 0x2) + a0)]:1) < 0x30 (signed), and falls through when t3(=[(([a1] + one of 0x1, 0x2) + a0)]:1) >= 0x30 (signed).
  The `beq` branch at 0x1003d2fc targets 0x1003d374, is taken when t9(=[(([a1] + one of 0x1, 0x2) + a0)]:1) >= 0x3a (signed), and falls through when t9(=[(([a1] + one of 0x1, 0x2) + a0)]:1) < 0x3a (signed).
  The `bne` branch at 0x1003d350 targets 0x1003d374, is taken when at(?) < 0x30 (signed), and falls through when at(?) >= 0x30 (signed).
  The `bne` branch at 0x1003d36c targets 0x1003d304, is taken when a2(?) < 0x3a (signed), and falls through when a2(?) >= 0x3a (signed).
  The `bgez` branch at 0x1003d384 targets 0x1003d3bc, is taken when a4(=one of -0x1, 0x1) >= 0 (signed), and falls through when a4(=one of -0x1, 0x1) < 0 (signed).
  The `beq` branch at 0x1003d3e4 targets 0x1003d400, is taken when ra(=ret(history_get)) == 0, and falls through when ra(=ret(history_get)) != 0.
  The `beq` branch at 0x1003d3f8 targets 0x1003d404 and is always taken.
  The `beq` branch at 0x1003d40c targets 0x1003d818 and is always taken.
  The `bne` branch at 0x1003d428 targets 0x1003d448, is taken when v1(=[(([a1] + one of 0x1, 0x2) + a0)]:1) != a0(=0x3f), and falls through when v1(=[(([a1] + one of 0x1, 0x2) + a0)]:1) == a0(=0x3f).
  The `beq` branch at 0x1003d468 targets 0x1003d558, is taken when a3(=[(([a1] + one of 0x1, 0x2, 0x3) + a0)]:1) == 0, and falls through when a3(=[(([a1] + one of 0x1, 0x2, 0x3) + a0)]:1) != 0.
  The `bne` branch at 0x1003d474 targets 0x1003d4c8, is taken when a6(=one of 0x0, 0x1) != 0, and falls through when a6(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x1003d484 targets 0x1003d50c, is taken when a7(?) == t0(=0x20), and falls through when a7(?) != t0(=0x20).
  The `beq` branch at 0x1003d494 targets 0x1003d50c, is taken when t1(?) == t2(=0x9), and falls through when t1(?) != t2(=0x9).
  The `beq` branch at 0x1003d4a4 targets 0x1003d50c, is taken when t3(?) == t8(=0x3a), and falls through when t3(?) != t8(=0x3a).
  The `beq` branch at 0x1003d4c0 targets 0x1003d50c, is taken when t9(=a2) == ra(?), and falls through when t9(=a2) != ra(?).
  The `beq` branch at 0x1003d4dc targets 0x1003d50c, is taken when v0(?) == v1(=0xa), and falls through when v0(?) != v1(=0xa).
  The `beq` branch at 0x1003d4e8 targets 0x1003d51c, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x1003d504 targets 0x1003d51c, is taken when a1(?) != a2(=0x3f), and falls through when a1(?) == a2(=0x3f).
  The `beq` branch at 0x1003d514 targets 0x1003d520 and is always taken.
  The `bne` branch at 0x1003d524 targets 0x1003d558, is taken when a4(=one of 0x0, 0x1) != 0, and falls through when a4(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x1003d550 targets 0x1003d470, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1003d5d0 targets 0x1003d600, is taken when a3(=one of 0x0, 0x1) == 0, and falls through when a3(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x1003d5ec targets 0x1003d600, is taken when a7(?) != t0(=0x3f), and falls through when a7(?) == t0(=0x3f).
  The `beq` branch at 0x1003d61c targets 0x1003d818 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bgez` branch at 0x1003d650 targets 0x1003d69c, is taken when ra(=ret(0x1003b610)) >= 0 (signed), and falls through when ra(=ret(0x1003b610)) < 0 (signed).
  The `beq` branch at 0x1003d694 targets 0x1003d818 and is always taken.
  The `beq` branch at 0x1003d6a0 targets 0x1003d6b4, is taken when at(=ret(0x1003b610)) == 0, and falls through when at(=ret(0x1003b610)) != 0.
  The `beq` branch at 0x1003d6ac targets 0x1003d780, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1003d6f4 targets 0x1003d754, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1003d70c targets 0x1003d738, is taken when v0(=[0x1024a898]) == 0, and falls through when v0(=[0x1024a898]) != 0.
  The `beq` branch at 0x1003d74c targets 0x1003d76c and is always taken.
  The `beq` branch at 0x1003d778 targets 0x1003d818 and is always taken.
  The `beq` branch at 0x1003d790 targets 0x1003d7c4, is taken when at(=[0x1024a888]) == 0, and falls through when at(=[0x1024a888]) != 0.
  The `beq` branch at 0x1003d7bc targets 0x1003d80c and is always taken.
  The `beq` branch at 0x1003d804 targets 0x1003d818 and is always taken.
  The `bne` branch at 0x1003d810 targets 0x1003d624 and is always taken.
  The return at 0x1003d828 has v0 = one of 0x0, ?, [ret(current_history)].

- `history_expand` in `usr/gfx/KONA/bin/kpm` at 0x1003efb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003efb0-0x1003f8dc (2348 bytes).
  It occupies 2348 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c79c, including `lw` at 0x1003efd8, `lw` at 0x1003f0f8, `lw` at 0x1003f1c0.
  5 such `lbu` accesses load 1 byte from sym(history_expansion_char) +0x0, including `lbu` at 0x1003efdc, `lbu` at 0x1003f0fc, `lbu` at 0x1003f1c4.
  4 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1003eff4, `lw` at 0x1003f09c, `lw` at 0x1003f2b4.
  4 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1003f010, `lw` at 0x1003f068, `lw` at 0x1003f0e0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c0f8, including `lw` at 0x1003f030, `lw` at 0x1003f14c, `lw` at 0x1003f2f0.
  4 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x1003f044, `sw` at 0x1003f304, `sw` at 0x1003f618.
  2 such `sb` accesses store 1 byte to ret(xmalloc) +0x0, including `sb` at 0x1003f080, `sb` at 0x1003f114.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x1003f0b4, `lbu` at 0x1003f184.
  The `lw` at 0x1003f0c0 loads 4 bytes from abs 0x1014c7a0.
  The `lbu` at 0x1003f0c4 loads 1 byte from sym(history_subst_char) +0x0.
  The `sb` at 0x1003f10c stores 1 byte to ret(xmalloc) +0x1.
  The `sb` at 0x1003f124 stores 1 byte to ret(xmalloc) +0x2.
  The `sb` at 0x1003f134 stores 1 byte to ret(xmalloc) +0x3.
  9 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1003f1a0, `lbu` at 0x1003f1b4, `lbu` at 0x1003f25c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7a4, including `lw` at 0x1003f1f0, `lw` at 0x1003f4fc.
  2 such `lw` accesses load 4 bytes from sym(history_no_expand_chars) +0x0, including `lw` at 0x1003f1f4, `lw` at 0x1003f500.
  2 such `lw` accesses load 4 bytes from abs 0x1014c200, including `lw` at 0x1003f204, `lw` at 0x1003f510.
  5 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1003f29c, `lw` at 0x1003f628, `lw` at 0x1003f650.
  5 such `lw` accesses load 4 bytes from abs 0x1014c6e8, including `lw` at 0x1003f398, `lw` at 0x1003f47c, `lw` at 0x1003f574.
  8 such `sb` accesses store 1 byte to ?, including `sb` at 0x1003f3cc, `sb` at 0x1003f3dc, `sb` at 0x1003f4b0.
  The `lw` at 0x1003f5f0 loads 4 bytes from abs 0x1014bf8c.
  The `lw` at 0x1003f898 loads 4 bytes from abs 0x1014c470.
  The `jalr` at 0x1003eff8 calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003f014 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f034 calls strcpy with a0=ret(xmalloc), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1003f06c calls xmalloc [0x10061950] with a0=0x100, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1003f0a0 calls strlen with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1003f0e4 calls xmalloc [0x10061950] with a0=ret(strlen)+5, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f150 calls strcpy with a0=ret(xmalloc)+4, a1=a0 at entry (arg0), a2=ret(xmalloc)+3, a3=0x3a, a4=ret(xmalloc)+2, a5=[sym(history_expansion_char)]:1, a6=ret(xmalloc), a7=ret(xmalloc)+1.
  The `jalr` at 0x1003f208 calls strchr with a0=[sym(history_no_expand_chars)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f2a0 calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?, a7=[sym(history_expansion_char)]:1.
  The `jalr` at 0x1003f2b8 calls strlen with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1003f2d4 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f2f4 calls strcpy with a0=ret(xmalloc), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1003f39c calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1003f480 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?, a4=[sym(history_expansion_char)]:1, a7=0x5c.
  The `jalr` at 0x1003f514 calls strchr with a0=[sym(history_no_expand_chars)], a1=?, a2=?, a3=?, a7=0x5c.
  The `jal` at 0x1003f578 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1003f5f4 calls (unnamed) [0x1003df60] with a0=?, a1=?, a2=sp-100, a3=sp-96.
  The `jalr` at 0x1003f62c calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f654 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f6a4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1003f720 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f754 calls strcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1003f770 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1003f7d0 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?, a4=[sym(history_expansion_char)]:1, a7=0x5c.
  The `jalr` at 0x1003f878 calls free with a0=?, a1=?, a2=?, a3=?, a5=a0 at entry (arg0).
  The `jal` at 0x1003f89c calls add_history [0x1003b0b0] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1003efe0 targets 0x1003f054, is taken when at(=[sym(history_expansion_char)]:1) != 0, and falls through when at(=[sym(history_expansion_char)]:1) == 0.
  The `beq` branch at 0x1003f04c targets 0x1003f8c4 and is always taken.
  The `bne` branch at 0x1003f0c8 targets 0x1003f16c, is taken when at(=[a0]:1) != v0(=[sym(history_subst_char)]:1), and falls through when at(=[a0]:1) == v0(=[sym(history_subst_char)]:1).
  The `beq` branch at 0x1003f164 targets 0x1003f314 and is always taken.
  The `beq` branch at 0x1003f188 targets 0x1003f268, is taken when a7(=[a0]:1) == 0, and falls through when a7(=[a0]:1) != 0.
  The `bne` branch at 0x1003f1c8 targets 0x1003f244, is taken when t2(?) != t3(=[sym(history_expansion_char)]:1), and falls through when t2(?) == t3(=[sym(history_expansion_char)]:1).
  The `beq` branch at 0x1003f1d4 targets 0x1003f234, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1003f1e0 targets 0x1003f224, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1003f21c targets 0x1003f228 and is always taken.
  The `beq` branch at 0x1003f22c targets 0x1003f23c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1003f234 targets 0x1003f244 and is always taken.
  The `beq` branch at 0x1003f23c targets 0x1003f268 and is always taken.
  The `bne` branch at 0x1003f260 targets 0x1003f190, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1003f288 targets 0x1003f314, is taken when a6(?) == a7(=[sym(history_expansion_char)]:1), and falls through when a6(?) != a7(=[sym(history_expansion_char)]:1).
  The `beq` branch at 0x1003f30c targets 0x1003f8c4 and is always taken.
  The `beq` branch at 0x1003f338 targets 0x1003f84c, is taken when at(=0x0) >= v0(?) (signed), and falls through when at(=0x0) < v0(?) (signed).
  The `beq` branch at 0x1003f358 targets 0x1003f3ec, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1003f374 targets 0x1003f3ac, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The `beq` branch at 0x1003f3e4 targets 0x1003f82c and is always taken.
  The `bne` branch at 0x1003f400 targets 0x1003f410, is taken when a3(?) != a4(=[sym(history_expansion_char)]:1), and falls through when a3(?) == a4(=[sym(history_expansion_char)]:1).
  The `beq` branch at 0x1003f41c targets 0x1003f43c, is taken when a6(?) == a7(=0x5c), and falls through when a6(?) != a7(=0x5c).
  The `beq` branch at 0x1003f42c targets 0x1003f4d0, is taken when t0(?) == t1(=-0x3), and falls through when t0(?) != t1(=-0x3).
  The `beq` branch at 0x1003f434 targets 0x1003f798 and is always taken.
  The `bne` branch at 0x1003f458 targets 0x1003f490, is taken when t3(?) < t8(?) (signed), and falls through when t3(?) >= t8(?) (signed).
  The `beq` branch at 0x1003f4c8 targets 0x1003f82c and is always taken.
  The `beq` branch at 0x1003f4ec targets 0x1003f530, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1003f528 targets 0x1003f534 and is always taken.
  The `beq` branch at 0x1003f538 targets 0x1003f5d4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1003f550 targets 0x1003f588, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The `beq` branch at 0x1003f5cc targets 0x1003f82c and is always taken.
  The `bgez` branch at 0x1003f608 targets 0x1003f66c, is taken when ra(=ret(0x1003df60)) >= 0 (signed), and falls through when ra(=ret(0x1003df60)) < 0 (signed).
  The `beq` branch at 0x1003f63c targets 0x1003f65c, is taken when v0(=a0) == v1(?), and falls through when v0(=a0) != v1(?).
  The `beq` branch at 0x1003f664 targets 0x1003f8c4 and is always taken.
  The `beq` branch at 0x1003f670 targets 0x1003f778, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1003f68c targets 0x1003f760, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1003f6d0 targets 0x1003f730, is taken when ra(?) < at(?) (signed), and falls through when ra(?) >= at(?) (signed).
  The `bne` branch at 0x1003f6e4 targets 0x1003f70c, is taken when a0(?) < a1(?) (signed), and falls through when a0(?) >= a1(?) (signed).
  The `beq` branch at 0x1003f704 targets 0x1003f6ec, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `beq` branch at 0x1003f790 targets 0x1003f82c and is always taken.
  The `bne` branch at 0x1003f7a8 targets 0x1003f7e0, is taken when v0(?) < v1(?) (signed), and falls through when v0(?) >= v1(?) (signed).
  The `beq` branch at 0x1003f824 targets 0x1003f82c and is always taken.
  The `bne` branch at 0x1003f844 targets 0x1003f340, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The `beq` branch at 0x1003f860 targets 0x1003f880, is taken when a5(=a0) == a6(?), and falls through when a5(=a0) != a6(?).
  The `beq` branch at 0x1003f884 targets 0x1003f8b4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1003f8ac targets 0x1003f8c4 and is always taken.
  The return at 0x1003f8d4 has v0 = one of 0x0, -0x1, 0x2, ?.

- `history_arg_extract` in `usr/gfx/KONA/bin/kpm` at 0x1003ffa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1003ffa0-0x10040354 (948 bytes).
  It occupies 948 bytes.
  The `lw` at 0x1003ffdc loads 4 bytes from abs 0x1014c4a8.
  The `lw` at 0x1004001c loads 4 bytes from ret(history_tokenize) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10040044, `lw` at 0x10040154, `lw` at 0x100401fc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x10040160, `lw` at 0x10040230.
  The `lw` at 0x100401b0 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x10040208 loads 4 bytes from abs 0x1014c0f8.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10040284, `sb` at 0x10040294.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x100402ec, `lw` at 0x10040324.
  The `jal` at 0x1003ffe0 calls history_tokenize [0x10040360] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10040164 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100401b4 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004020c calls strcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10040234 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100402f0 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10040328 calls free with a0=ret(history_tokenize), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1003fff4 targets 0x10040008, is taken when at(=ret(history_tokenize)) != 0, and falls through when at(=ret(history_tokenize)) == 0.
  The `beq` branch at 0x10040000 targets 0x1004033c and is always taken.
  The `beq` branch at 0x10040020 targets 0x10040050, is taken when v0(=[ret(history_tokenize)]) == 0, and falls through when v0(=[ret(history_tokenize)]) != 0.
  The `bne` branch at 0x10040048 targets 0x10040028, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bgez` branch at 0x10040054 targets 0x10040070, is taken when a3(=a1) >= 0 (signed), and falls through when a3(=a1) < 0 (signed).
  The `bgez` branch at 0x10040074 targets 0x10040090, is taken when a6(=a0) >= 0 (signed), and falls through when a6(=a0) < 0 (signed).
  The `bne` branch at 0x10040098 targets 0x100400ac, is taken when t1(?) != t2(=0x24), and falls through when t1(?) == t2(=0x24).
  The `bne` branch at 0x100400b4 targets 0x100400c8, is taken when t8(?) != t9(=0x24), and falls through when t8(?) == t9(=0x24).
  The `bne` branch at 0x100400e0 targets 0x10040114, is taken when at(?) < v0(?) (signed), and falls through when at(?) >= v0(?) (signed).
  The `bne` branch at 0x100400f4 targets 0x10040114, is taken when a0(?) < a1(?) (signed), and falls through when a0(?) >= a1(?) (signed).
  The `bltz` branch at 0x10040100 targets 0x10040114, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bgez` branch at 0x1004010c targets 0x10040120, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x10040118 targets 0x100402b8 and is always taken.
  The `beq` branch at 0x1004013c targets 0x100401a0, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `bne` branch at 0x10040198 targets 0x10040144, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The `beq` branch at 0x100401d8 targets 0x100402b8, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `beq` branch at 0x1004025c targets 0x10040298, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `bne` branch at 0x100402b0 targets 0x100401e0, is taken when t2(?) < t3(?) (signed), and falls through when t2(?) >= t3(?) (signed).
  The `beq` branch at 0x100402c8 targets 0x10040318, is taken when t9(=0x0) >= ra(?) (signed), and falls through when t9(=0x0) < ra(?) (signed).
  The `bne` branch at 0x10040310 targets 0x100402d0, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The return at 0x1004034c has v0 = one of 0x0, ?.

- `history_tokenize` in `usr/gfx/KONA/bin/kpm` at 0x10040360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10040360-0x10040bb4 (2132 bytes).
  It occupies 2132 bytes.
  The `lbu` at 0x100403a0 loads 1 byte from a0 (arg0 at entry) +0x0.
  37 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100403bc, `lbu` at 0x100403d4, `lbu` at 0x100403f0.
  The `lw` at 0x1004048c loads 4 bytes from abs 0x1014c868.
  The `lbu` at 0x10040490 loads 1 byte from sym(history_comment_char) +0x0.
  6 such `lw` accesses load 4 bytes from abs 0x1014bf70, including `lw` at 0x100404d4, `lw` at 0x10040558, `lw` at 0x10040740.
  6 such `lw` accesses load 4 bytes from abs 0x1014c200, including `lw` at 0x100404f4, `lw` at 0x10040578, `lw` at 0x10040760.
  The `lw` at 0x10040ab8 loads 4 bytes from abs 0x1014c6e8.
  The `lw` at 0x10040adc loads 4 bytes from abs 0x1014c6e4.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10040afc, `sw` at 0x10040b74.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10040b10, `lw` at 0x10040b4c.
  The `lw` at 0x10040b2c loads 4 bytes from abs 0x1014c20c.
  The `sb` at 0x10040b54 stores 1 byte to ?.
  The `jalr` at 0x100404f8 calls strchr with a0=0x10092994, a1=?, a2=a0 at entry (arg0), a3=a0 at entry (arg0).
  The `jalr` at 0x1004057c calls strchr with a0=0x10092998, a1=?, a2=a0 at entry (arg0), a3=?, a5=a0 at entry (arg0).
  The `jalr` at 0x10040764 calls strchr with a0=0x100929a0, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x100408bc calls strchr with a0=0x100929a8, a1=?, a2=a0 at entry (arg0), a3=?, a4=a0 at entry (arg0).
  The `jalr` at 0x10040988 calls strchr with a0=0x100929b0, a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10040a0c calls strchr with a0=0x100929a0, a1=?, a2=a0 at entry (arg0), a3=?, a5=a0 at entry (arg0).
  The `jal` at 0x10040abc calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10040ae0 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10040b30 calls strncpy with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100403a4 targets 0x10040b90, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `beq` branch at 0x100403c0 targets 0x1004045c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100403dc targets 0x10040400, is taken when a4(?) == a5(=0x20), and falls through when a4(?) != a5(=0x20).
  The `bne` branch at 0x100403f8 targets 0x1004045c, is taken when a6(?) != a7(=0x9), and falls through when a6(?) == a7(=0x9).
  The `beq` branch at 0x1004041c targets 0x1004045c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x10040438 targets 0x10040400, is taken when t3(?) == t8(=0x20), and falls through when t3(?) != t8(=0x20).
  The `beq` branch at 0x10040454 targets 0x10040400, is taken when t9(?) == ra(=0x9), and falls through when t9(?) != ra(=0x9).
  The `beq` branch at 0x1004046c targets 0x1004049c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x10040494 targets 0x100404ac, is taken when v1(?) != a0(=[sym(history_comment_char)]:1), and falls through when v1(?) == a0(=[sym(history_comment_char)]:1).
  The `beq` branch at 0x100404a4 targets 0x10040b9c and is always taken.
  The `beq` branch at 0x100404c4 targets 0x10040514, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1004050c targets 0x10040518 and is always taken.
  The `beq` branch at 0x1004051c targets 0x10040538, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10040530 targets 0x10040a70 and is always taken.
  The `beq` branch at 0x10040548 targets 0x10040598, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10040590 targets 0x1004059c and is always taken.
  The `beq` branch at 0x100405a0 targets 0x10040720, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x100405d4 targets 0x1004063c, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0x100405e4 targets 0x1004063c, is taken when t0(?) == t1(=0x24), and falls through when t0(?) != t1(=0x24).
  The `bne` branch at 0x100405f4 targets 0x10040628, is taken when t2(?) != t3(=0x3c), and falls through when t2(?) == t3(=0x3c).
  The `bne` branch at 0x10040614 targets 0x10040628, is taken when t8(?) != t9(=0x2d), and falls through when t8(?) == t9(=0x2d).
  The `beq` branch at 0x10040634 targets 0x10040a70 and is always taken.
  The `bne` branch at 0x10040644 targets 0x10040684, is taken when v0(?) != v1(=0x26), and falls through when v0(?) == v1(=0x26).
  The `beq` branch at 0x10040660 targets 0x100406dc, is taken when a0(?) == a1(=0x3e), and falls through when a0(?) != a1(=0x3e).
  The `beq` branch at 0x1004067c targets 0x100406dc, is taken when a2(?) == a3(=0x3c), and falls through when a2(?) != a3(=0x3c).
  The `bne` branch at 0x1004068c targets 0x100406b0, is taken when a4(?) != a5(=0x3e), and falls through when a4(?) == a5(=0x3e).
  The `beq` branch at 0x100406a8 targets 0x100406dc, is taken when a6(?) == a7(=0x26), and falls through when a6(?) != a7(=0x26).
  The `bne` branch at 0x100406b8 targets 0x100406f0, is taken when t0(?) != t1(=0x28), and falls through when t0(?) == t1(=0x28).
  The `bne` branch at 0x100406d4 targets 0x100406f0, is taken when t2(?) != t3(=0x24), and falls through when t2(?) == t3(=0x24).
  The `beq` branch at 0x100406e8 targets 0x10040a70 and is always taken.
  The `beq` branch at 0x10040704 targets 0x10040720, is taken when t9(?) == ra(=0x24), and falls through when t9(?) != ra(=0x24).
  The `beq` branch at 0x10040718 targets 0x10040a70 and is always taken.
  The `beq` branch at 0x10040730 targets 0x10040780, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10040778 targets 0x10040784 and is always taken.
  The `beq` branch at 0x10040788 targets 0x100407b4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100407c4 targets 0x10040a70, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x100407e0 targets 0x1004081c, is taken when t0(?) != t1(=0x5c), and falls through when t0(?) == t1(=0x5c).
  The `bne` branch at 0x10040800 targets 0x1004081c, is taken when t2(?) != t3(=0xa), and falls through when t2(?) == t3(=0xa).
  The `beq` branch at 0x10040814 targets 0x10040a4c and is always taken.
  The `bne` branch at 0x10040830 targets 0x10040858, is taken when t9(?) != ra(=0x5c), and falls through when t9(?) == ra(=0x5c).
  The `beq` branch at 0x10040840 targets 0x10040858, is taken when at(?) == v0(=0x27), and falls through when at(?) != v0(=0x27).
  The `beq` branch at 0x10040850 targets 0x1004085c and is always taken.
  The `beq` branch at 0x10040860 targets 0x10040904, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x10040870 targets 0x100408f0, is taken when a1(?) != a2(=0x22), and falls through when a1(?) == a2(=0x22).
  The `beq` branch at 0x10040888 targets 0x100408d8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x100408d0 targets 0x100408dc and is always taken.
  The `beq` branch at 0x100408e0 targets 0x10040904, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100408e8 targets 0x100408f0 and is always taken.
  The `beq` branch at 0x100408fc targets 0x10040a4c and is always taken.
  The `beq` branch at 0x10040908 targets 0x10040938, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x10040924 targets 0x10040938, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `beq` branch at 0x10040930 targets 0x10040a4c and is always taken.
  The `bne` branch at 0x1004093c targets 0x100409bc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x10040954 targets 0x100409a4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1004099c targets 0x100409a8 and is always taken.
  The `beq` branch at 0x100409ac targets 0x100409bc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x100409b4 targets 0x10040a70 and is always taken.
  The `bne` branch at 0x100409c0 targets 0x10040a4c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x100409d8 targets 0x10040a28, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10040a20 targets 0x10040a2c and is always taken.
  The `beq` branch at 0x10040a30 targets 0x10040a4c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10040a68 targets 0x100407cc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x10040a90 targets 0x10040acc, is taken when t0(?) < t1(?) (signed), and falls through when t0(?) >= t1(?) (signed).
  The `bne` branch at 0x10040b88 targets 0x100403ac, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The return at 0x10040bac has v0 = ?.

- `rl_complete` in `usr/gfx/KONA/bin/kpm` at 0x10040bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10040bd0-0x10040ce4 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x10040bf8 loads 4 bytes from abs 0x1014c8b4.
  The `lw` at 0x10040bfc loads 4 bytes from sym(rl_last_func) +0x0.
  The `lw` at 0x10040c08 loads 4 bytes from abs 0x1014c4ac.
  The `lw` at 0x10040c1c loads 4 bytes from abs 0x1014bf90.
  The `lw` at 0x10040c20 loads 4 bytes from abs 0x1024a8b8.
  3 such `lw` accesses load 4 bytes from abs 0x1014c4b4, including `lw` at 0x10040c38, `lw` at 0x10040c7c, `lw` at 0x10040ca8.
  The `lw` at 0x10040c60 loads 4 bytes from abs 0x1014c874.
  The `lw` at 0x10040c64 loads 4 bytes from sym(_rl_complete_show_all) +0x0.
  The `jal` at 0x10040c3c calls rl_complete_internal [0x10041320] with a0=0x3f, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10040c80 calls rl_complete_internal [0x10041320] with a0=0x21, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10040cac calls rl_complete_internal [0x10041320] with a0=0x9, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x10040c0c targets 0x10040c58, is taken when at(=[sym(rl_last_func)]) != v0(=sym(rl_complete)), and falls through when at(=[sym(rl_last_func)]) == v0(=sym(rl_complete)).
  The `bne` branch at 0x10040c24 targets 0x10040c58, is taken when v1(=[0x1024a8b8]) != 0, and falls through when v1(=[0x1024a8b8]) == 0.
  The `beq` branch at 0x10040c50 targets 0x10040ccc and is always taken.
  The `beq` branch at 0x10040c68 targets 0x10040c9c, is taken when at(=[sym(_rl_complete_show_all)]) == 0, and falls through when at(=[sym(_rl_complete_show_all)]) != 0.
  The `beq` branch at 0x10040c94 targets 0x10040ccc and is always taken.
  The `beq` branch at 0x10040cc4 targets 0x10040ccc and is always taken.
  The return at 0x10040cdc has v0 = ret(rl_complete_internal).

- `rl_possible_completions` in `usr/gfx/KONA/bin/kpm` at 0x10040cf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10040cf0-0x10040d3c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10040d1c loads 4 bytes from abs 0x1014c4b4.
  The `jal` at 0x10040d20 calls rl_complete_internal [0x10041320] with a0=0x3f, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10040d34 has v0 = ret(rl_complete_internal).

- `rl_insert_completions` in `usr/gfx/KONA/bin/kpm` at 0x10040d40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10040d40-0x10040d8c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10040d6c loads 4 bytes from abs 0x1014c4b4.
  The `jal` at 0x10040d70 calls rl_complete_internal [0x10041320] with a0=0x2a, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10040d84 has v0 = ret(rl_complete_internal).

- `get_y_or_n` in `usr/gfx/KONA/bin/kpm` at 0x10040d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10040d90-0x10040ea8 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0x10040dbc loads 4 bytes from abs 0x1014c4dc.
  The `lw` at 0x10040e64 loads 4 bytes from abs 0x1014c518.
  The `lw` at 0x10040e78 loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x10040dc0 calls rl_read_key [0x10045470] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10040e68 calls rl_abort [0x10048750] with a0=ret(rl_read_key), a1=0x20, a2=?, a3=ret(rl_read_key), a4=0x6e, a5=ret(rl_read_key), a6=0x4e, a7=ret(rl_read_key).
  The `jal` at 0x10040e7c calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10040dac targets 0x10040e90 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x10040dd4 targets 0x10040dfc, is taken when ra(=ret(rl_read_key)) == at(=0x79), and falls through when ra(=ret(rl_read_key)) != at(=0x79).
  The `beq` branch at 0x10040de4 targets 0x10040dfc, is taken when v0(=ret(rl_read_key)) == v1(=0x59), and falls through when v0(=ret(rl_read_key)) != v1(=0x59).
  The `bne` branch at 0x10040df4 targets 0x10040e0c, is taken when a0(=ret(rl_read_key)) != a1(=0x20), and falls through when a0(=ret(rl_read_key)) == a1(=0x20).
  The `beq` branch at 0x10040e04 targets 0x10040e90 and is always taken.
  The `beq` branch at 0x10040e14 targets 0x10040e3c, is taken when a3(=ret(rl_read_key)) == a4(=0x6e), and falls through when a3(=ret(rl_read_key)) != a4(=0x6e).
  The `beq` branch at 0x10040e24 targets 0x10040e3c, is taken when a5(=ret(rl_read_key)) == a6(=0x4e), and falls through when a5(=ret(rl_read_key)) != a6(=0x4e).
  The `bne` branch at 0x10040e34 targets 0x10040e4c, is taken when a7(=ret(rl_read_key)) != t0(=0x7f), and falls through when a7(=ret(rl_read_key)) == t0(=0x7f).
  The `beq` branch at 0x10040e44 targets 0x10040e90 and is always taken.
  The `bne` branch at 0x10040e54 targets 0x10040e70, is taken when t1(=ret(rl_read_key)) != t2(=0x7), and falls through when t1(=ret(rl_read_key)) == t2(=0x7).
  The `bne` branch at 0x10040e88 targets 0x10040db4 and is always taken.
  The return at 0x10040ea0 has v0 = one of 0x0, 0x1.

- `rl_complete_internal` in `usr/gfx/KONA/bin/kpm` at 0x10041320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10041320-0x10042c44 (6436 bytes).
  It occupies 6436 bytes.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10041350, `lw` at 0x10041368, `lw` at 0x100413b0.
  11 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10041354, `lw` at 0x1004136c, `lw` at 0x100413b4.
  5 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x10041378, `lw` at 0x10041a38, `lw` at 0x10041f20.
  4 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x10041394, `lw` at 0x10041a54, `lw` at 0x10041b90.
  3 such `lw` accesses load 4 bytes from abs 0x1014c0f8, including `lw` at 0x100413c0, `lw` at 0x10041a78, `lw` at 0x10041f8c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c87c, including `lw` at 0x100413e8, `lw` at 0x10041400.
  2 such `lw` accesses load 4 bytes from sym(rl_completion_entry_function) +0x0, including `lw` at 0x100413ec, `lw` at 0x10041404.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4bc, including `lw` at 0x1004141c, `lw` at 0x10041d94.
  3 such `lw` accesses load 4 bytes from abs 0x1014c894, including `lw` at 0x1004142c, `lw` at 0x10041df8, `lw` at 0x10042150.
  The `sw` at 0x10041430 stores 4 bytes to sym(rl_filename_completion_desired) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7b8, including `lw` at 0x10041440, `lw` at 0x10041e10.
  The `sw` at 0x10041444 stores 4 bytes to sym(rl_filename_quoting_desired) +0x0.
  25 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10041450, `lw` at 0x10041464, `lw` at 0x1004154c.
  17 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10041454, `lw` at 0x10041468, `lw` at 0x1004164c.
  4 such `lw` accesses load 4 bytes from abs 0x1014c88c, including `lw` at 0x1004147c, `lw` at 0x10041564, `lw` at 0x10041de0.
  4 such `lw` accesses load 4 bytes from sym(rl_completer_quote_characters) +0x0, including `lw` at 0x10041480, `lw` at 0x10041568, `lw` at 0x10041de4.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100414dc, `lbu` at 0x1004152c, `lbu` at 0x10041584.
  8 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10041550, `sw` at 0x100415dc, `sw` at 0x10041680.
  5 such `lw` accesses load 4 bytes from abs 0x1014c200, including `lw` at 0x10041590, `lw` at 0x100416e4, `lw` at 0x10041780.
  3 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x100416c0, `lbu` at 0x1004175c, `lbu` at 0x100421e4.
  3 such `lw` accesses load 4 bytes from abs 0x1014c888, including `lw` at 0x100416d0, `lw` at 0x1004176c, `lw` at 0x10041e9c.
  3 such `lw` accesses load 4 bytes from sym(rl_completer_word_break_characters) +0x0, including `lw` at 0x100416d4, `lw` at 0x10041770, `lw` at 0x10041ea0.
  7 such `lw` accesses load 4 bytes from abs 0x1014bf98, including `lw` at 0x100417a0, `lw` at 0x100421fc, `lw` at 0x10042390.
  2 such `lw` accesses load 4 bytes from abs 0x1014c890, including `lw` at 0x100417fc, `lw` at 0x10041814.
  2 such `lw` accesses load 4 bytes from sym(rl_special_prefixes) +0x0, including `lw` at 0x10041800, `lw` at 0x10041818.
  The `lw` at 0x1004189c loads 4 bytes from abs 0x1014c51c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c880, including `lw` at 0x100418b8, `lw` at 0x100418dc.
  2 such `lw` accesses load 4 bytes from sym(rl_attempted_completion_function) +0x0, including `lw` at 0x100418bc, `lw` at 0x100418e0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c884, including `lw` at 0x10041908, `lw` at 0x10041920.
  The `lw` at 0x1004190c loads 4 bytes from sym(rl_attempted_completion_over) +0x0.
  The `sw` at 0x10041924 stores 4 bytes to sym(rl_attempted_completion_over) +0x0.
  The `lw` at 0x10041944 loads 4 bytes from abs 0x1014c4b8.
  10 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x10041964, `lw` at 0x10041b18, `lw` at 0x10041c84.
  2 such `lw` accesses load 4 bytes from abs 0x1014c514, including `lw` at 0x10041984, `lw` at 0x10042098.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7b4, including `lw` at 0x100419a0, `lw` at 0x10042764.
  2 such `lw` accesses load 4 bytes from sym(rl_ignore_completion_duplicates) +0x0, including `lw` at 0x100419a4, `lw` at 0x10042768.
  42 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100419c8, `lw` at 0x100419f0, `lw` at 0x10041a2c.
  2 such `lw` accesses load 4 bytes from abs 0x1014bf9c, including `lw` at 0x10041a10, `lw` at 0x10042788.
  2 such `lw` accesses load 4 bytes from abs 0x1014c21c, including `lw` at 0x10041a1c, `lw` at 0x10042794.
  3 such `lw` accesses load 4 bytes from abs 0x1014c150, including `lw` at 0x10041ae4, `lw` at 0x10041ce4, `lw` at 0x10042bd0.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10041b38, `sw` at 0x10041c20, `sw` at 0x10041c5c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c898, including `lw` at 0x10041d78, `lw` at 0x10041dac.
  2 such `lw` accesses load 4 bytes from sym(rl_ignore_some_completions_function) +0x0, including `lw` at 0x10041d7c, `lw` at 0x10041db0.
  2 such `lw` accesses load 4 bytes from sym(rl_filename_completion_desired) +0x0, including `lw` at 0x10041dfc, `lw` at 0x10042154.
  The `lw` at 0x10041e14 loads 4 bytes from sym(rl_filename_quoting_desired) +0x0.
  The `lw` at 0x10041eac loads 4 bytes from abs 0x1014bfa0.
  The `lbu` at 0x10041f60 loads 1 byte from [sym(rl_completer_quote_characters)] +0x0.
  The `sb` at 0x10041f70 stores 1 byte to ret(xmalloc) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c574, including `lw` at 0x10041fac, `lw` at 0x100422d8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c528, including `lw` at 0x10041fd4, `lw` at 0x10042300.
  8 such `lw` accesses load 4 bytes from abs 0x1014c524, including `lw` at 0x10042000, `lw` at 0x1004220c, `lw` at 0x10042254.
  2 such `lw` accesses load 4 bytes from abs 0x1014c578, including `lw` at 0x10042014, `lw` at 0x10042418.
  The `lw` at 0x10042080 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x10042084 loads 4 bytes from sym(rl_editing_mode) +0x0.
  The `sb` at 0x10042124 stores 1 byte to (sp-328 + one of 0x0, 0x1) +0x0.
  The `sb` at 0x10042144 stores 1 byte to (sp-328 + one of 0x1, 0x2) +0x0.
  The `lw` at 0x10042170 loads 4 bytes from abs 0x1014c6ec.
  The `lw` at 0x10042194 loads 4 bytes from abs 0x1014c120.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10042238, `lw` at 0x10042298.
  2 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x1004223c, `lw` at 0x1004229c.
  3 such `lw` accesses load 4 bytes from abs 0x1014bfa4, including `lw` at 0x10042450, `lw` at 0x100424fc, `lw` at 0x1004284c.
  7 such `lw` accesses load 4 bytes from abs 0x1014c50c, including `lw` at 0x1004246c, `lw` at 0x100424a0, `lw` at 0x100425a8.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfa8, including `lw` at 0x1004248c, `lw` at 0x100428a0.
  The `lw` at 0x100424d4 loads 4 bytes from table(0x4) +0x0.
  The `lw` at 0x10042588 loads 4 bytes from abs 0x1014c7ac.
  The `lw` at 0x1004258c loads 4 bytes from sym(rl_completion_query_items) +0x0.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x100425bc, `lw` at 0x10042608, `lw` at 0x1004263c.
  11 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x100425c0, `lw` at 0x1004260c, `lw` at 0x10042640.
  3 such `lw` accesses load 4 bytes from abs 0x1014c128, including `lw` at 0x100425e0, `lw` at 0x10042628, `lw` at 0x10042af8.
  The `lw` at 0x1004264c loads 4 bytes from abs 0x1014c140.
  The `lw` at 0x10042660 loads 4 bytes from abs 0x1014c4b0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ec, including `lw` at 0x100426a8, `lw` at 0x100426dc.
  2 such `lw` accesses load 4 bytes from sym(screenwidth) +0x0, including `lw` at 0x100426ac, `lw` at 0x100426e0.
  The `lw` at 0x100428fc loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10042900 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  The `lw` at 0x10042928 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10042958, `lw` at 0x10042984.
  The `sw` at 0x10042970 stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x100429ac loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x100429dc, `lw` at 0x10042a10.
  The `sw` at 0x100429f4 stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x10042a14 stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  The `lw` at 0x10042abc loads 4 bytes from abs 0x1014c5d4.
  The `lw` at 0x10042ad8 loads 4 bytes from abs 0x1014c15c.
  The `lw` at 0x10042b0c loads 4 bytes from abs 0x1014c220.
  The `lw` at 0x10042b34 loads 4 bytes from table(0x0) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014bf90, including `lw` at 0x10042bf4, `lw` at 0x10042c0c.
  2 such `sw` accesses store 4 bytes to abs 0x1024a8b8, including `sw` at 0x10042bf8, `sw` at 0x10042c10.
  The `jalr` at 0x1004137c calls strlen with a0=[sym(rl_line_buffer)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10041398 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100413c4 calls strcpy with a0=ret(xmalloc), a1=[sym(rl_line_buffer)], a2=?, a3=?.
  The `jalr` at 0x10041594 calls strchr with a0=[sym(rl_completer_quote_characters)], a1=?, a2=[sym(rl_line_buffer)], a3=?.
  The `jalr` at 0x100416e8 calls strchr with a0=[sym(rl_completer_word_break_characters)], a1=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a2=[sym(rl_line_buffer)], a3=?.
  The `jalr` at 0x10041784 calls strchr with a0=[sym(rl_completer_word_break_characters)], a1=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a2=[sym(rl_line_buffer)], a3=?.
  The `jalr` at 0x100417b4 calls strchr with a0=0x100929c8, a1=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a2=?, a3=?.
  The `jalr` at 0x1004182c calls strchr with a0=[sym(rl_special_prefixes)], a1=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a2=?, a3=?, a4=[sym(rl_special_prefixes)].
  The `jal` at 0x100418a0 calls rl_copy_text [0x10048860] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `jalr` at 0x100418e4 calls (unknown callee) with a0=ret(rl_copy_text), a1=[sym(rl_point)], a2=[sym(rl_point)], a3=?.
  The `jal` at 0x10041948 calls completion_matches [0x100431d0] with a0=ret(rl_copy_text), a1=?, a2=?, a3=?.
  The `jalr` at 0x10041968 calls free with a0=ret(rl_copy_text), a1=?, a2=?, a3=?.
  The `jal` at 0x10041988 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041a20 calls qsort with a0=?, a1=?, a2=0x4, a3=0x10042d70.
  The `jalr` at 0x10041a3c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10041a58 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041a7c calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10041ae8 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041b1c calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10041b94 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041c88 calls free with a0=?, a1=?, a2=0x4, a3=0x1.
  The `jalr` at 0x10041ca0 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041ce8 calls strcmp with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041d10 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041db4 calls (unknown callee) with a0=?, a1=?, a2=a0 at entry (arg0), a3=0x9.
  The `jal` at 0x10041eb0 calls (unnamed) [0x100445d0] with a0=?, a1=[sym(rl_completer_word_break_characters)], a2=one of 0x0, 0x1, a3=one of 0x0, 0x1.
  The `jalr` at 0x10041f24 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10041f40 calls xmalloc [0x10061950] with a0=ret(strlen)+2, a1=?, a2=?, a3=?.
  The `jalr` at 0x10041f90 calls strcpy with a0=ret(xmalloc)+1, a1=?, a2=ret(xmalloc), a3=[[sym(rl_completer_quote_characters)]]:1.
  The `jal` at 0x10041fb0 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10041fd8 calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x10042004 calls rl_insert_text [0x10048a40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10042018 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042044 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004209c calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10042174 calls tilde_expand [0x10061ec0] with a0=?, a1=?, a2=one of 0x1, 0x2, a3=?, a5=[sym(rl_filename_completion_desired)], a6=(sp-328 + one of 0x1, 0x2), a7=sp-328.
  The `jalr` at 0x10042198 calls stat with a0=ret(tilde_expand), a1=sp-320, a2=?, a3=?.
  The `jal` at 0x10042210 calls rl_insert_text [0x10048a40] with a0=0x100929cc, a1=?, a2=?, a3=?.
  The `jal` at 0x10042258 calls rl_insert_text [0x10048a40] with a0=sp-328, a1=[sym(rl_point)], a2=[sym(rl_end)], a3=?.
  The `jalr` at 0x10042270 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100422b8 calls rl_insert_text [0x10048a40] with a0=sp-328, a1=?, a2=one of 0x1, 0x2, a3=?, a5=[sym(rl_filename_completion_desired)], a6=(sp-328 + one of 0x1, 0x2), a7=sp-328.
  The `jal` at 0x100422dc calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=a0 at entry (arg0), a3=0x9, a4=a0 at entry (arg0), a5=0x21, a6=a0 at entry (arg0), a7=0x2a.
  The `jal` at 0x10042304 calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x10042380 calls rl_insert_text [0x10048a40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100423a4 calls rl_insert_text [0x10048a40] with a0=0x100929ce, a1=?, a2=?, a3=?.
  The `jal` at 0x100423e4 calls rl_insert_text [0x10048a40] with a0=?, a1=?, a2=?, a3=[sym(rl_point)], a4=sym(rl_point).
  The `jal` at 0x10042408 calls rl_insert_text [0x10048a40] with a0=0x100929ce, a1=?, a2=?, a3=?.
  The `jal` at 0x1004241c calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10042454 calls (unnamed) [0x10040eb0] with a0=?, a1=?, a2=a0 at entry (arg0), a3=0x9, a4=a0 at entry (arg0), a5=0x21, a6=a0 at entry (arg0), a7=0x2a.
  The `jal` at 0x10042470 calls crlf [0x10048360] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10042490 calls (unnamed) [0x10040f50] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100424a4 calls crlf [0x10048360] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10042500 calls (unnamed) [0x10040eb0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042520 calls strlen with a0=ret(0x10040eb0), a1=?, a2=?, a3=?.
  The `jal` at 0x100425ac calls crlf [0x10048360] with a0=?, a1=?, a2=?, a3=[sym(rl_completion_query_items)].
  The `jalr` at 0x100425e4 calls fprintf with a0=[sym(rl_outstream)], a1=0x100929d0, a2=?, a3=?.
  The `jal` at 0x100425f8 calls crlf [0x10048360] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004262c calls fprintf with a0=[sym(rl_outstream)], a1=0x10092a00, a2=?, a3=?.
  The `jalr` at 0x10042650 calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `jal` at 0x10042664 calls get_y_or_n [0x10040d90] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10042684 calls crlf [0x10048360] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042798 calls qsort with a0=?, a1=?, a2=0x4, a3=0x10042d70.
  The `jal` at 0x100427ac calls crlf [0x10048360] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10042850 calls (unnamed) [0x10040eb0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042870 calls strlen with a0=ret(0x10040eb0), a1=?, a2=?, a3=?.
  The `jal` at 0x100428a4 calls (unnamed) [0x10040f50] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004292c calls __semputc with a0=0x20, a1=[sym(rl_outstream)], a2=?, a3=?.
  The `jalr` at 0x100429b0 calls __flsbuf with a0=0x20, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)].
  The `jal` at 0x10042a88 calls crlf [0x10048360] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10042ac0 calls rl_on_new_line [0x10050d10] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042afc calls fprintf with a0=sym(__iob)+32, a1=0x10092a20, a2=a0 at entry (arg0), a3=0x9, a4=a0 at entry (arg0), a5=0x21, a6=a0 at entry (arg0), a7=0x2a.
  The `jalr` at 0x10042b10 calls abort with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042b60 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042ba0 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042bd4 calls strcmp with a0=[sym(rl_line_buffer)], a1=?, a2=?, a3=?.
  The `jalr` at 0x10042c24 calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10041358 targets 0x100413dc, is taken when at(=[sym(rl_line_buffer)]) == 0, and falls through when at(=[sym(rl_line_buffer)]) != 0.
  The `beq` branch at 0x100413d4 targets 0x100413e0 and is always taken.
  The `beq` branch at 0x100413f0 targets 0x10041414, is taken when a2(=[sym(rl_completion_entry_function)]) == 0, and falls through when a2(=[sym(rl_completion_entry_function)]) != 0.
  The `beq` branch at 0x1004140c targets 0x10041424 and is always taken.
  The `beq` branch at 0x1004146c targets 0x10041864, is taken when a5(=[sym(rl_point)]) == 0, and falls through when a5(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x10041484 targets 0x10041640, is taken when t2(=[sym(rl_completer_quote_characters)]) == 0, and falls through when t2(=[sym(rl_completer_quote_characters)]) != 0.
  The `beq` branch at 0x100414a4 targets 0x10041640, is taken when t3(=0x0) >= t8(=[sym(rl_point)]) (signed), and falls through when t3(=0x0) < t8(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x100414b0 targets 0x100414c4, is taken when t9(=one of 0x0, 0x1) == 0, and falls through when t9(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x100414bc targets 0x10041620 and is always taken.
  The `bne` branch at 0x100414e4 targets 0x10041508, is taken when ra(?) != at(=0x5c), and falls through when ra(?) == at(=0x5c).
  The `beq` branch at 0x10041500 targets 0x10041620 and is always taken.
  The `beq` branch at 0x1004150c targets 0x1004155c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x10041534 targets 0x10041554, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x10041554 targets 0x10041620 and is always taken.
  The `beq` branch at 0x100415a0 targets 0x10041620, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `bne` branch at 0x100415e8 targets 0x10041604, is taken when a1(?) != a2(=0x27), and falls through when a1(?) == a2(=0x27).
  The `beq` branch at 0x100415fc targets 0x10041620 and is always taken.
  The `bne` branch at 0x1004160c targets 0x10041620, is taken when a7(?) != t0(=0x22), and falls through when a7(?) == t0(=0x22).
  The `bne` branch at 0x10041638 targets 0x100414ac, is taken when t2(?) < t3(=[sym(rl_point)]) (signed), and falls through when t2(?) >= t3(=[sym(rl_point)]) (signed).
  The `bne` branch at 0x10041654 targets 0x10041738, is taken when t9(=[sym(rl_point)]) != ra(=[sym(rl_point)]), and falls through when t9(=[sym(rl_point)]) == ra(=[sym(rl_point)]).
  The `beq` branch at 0x10041694 targets 0x10041738, is taken when ra(=[sym(rl_point)]) == 0, and falls through when ra(=[sym(rl_point)]) != 0.
  The `bne` branch at 0x100416f4 targets 0x10041738, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `bne` branch at 0x10041730 targets 0x1004169c, is taken when a2(=[sym(rl_point)]) != 0, and falls through when a2(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x10041790 targets 0x10041864, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x100417c0 targets 0x100417f4, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `bne` branch at 0x100417e4 targets 0x100417f4, is taken when a1(?) < 0x2 (signed), and falls through when a1(?) >= 0x2 (signed).
  The `beq` branch at 0x10041804 targets 0x10041840, is taken when a4(=[sym(rl_special_prefixes)]) == 0, and falls through when a4(=[sym(rl_special_prefixes)]) != 0.
  The `bne` branch at 0x10041838 targets 0x10041864, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x100418c0 targets 0x10041934, is taken when v1(=[sym(rl_attempted_completion_function)]) == 0, and falls through when v1(=[sym(rl_attempted_completion_function)]) != 0.
  The `bne` branch at 0x100418f8 targets 0x10041918, is taken when ra(=ret(?)) != 0, and falls through when ra(=ret(?)) == 0.
  The `beq` branch at 0x10041910 targets 0x10041934, is taken when at(=[sym(rl_attempted_completion_over)]) == 0, and falls through when at(=[sym(rl_attempted_completion_over)]) != 0.
  The `beq` branch at 0x1004192c targets 0x10041958 and is always taken.
  The `bne` branch at 0x10041974 targets 0x10041998, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x10041990 targets 0x10042ba8 and is always taken.
  The `beq` branch at 0x100419a8 targets 0x10041d24, is taken when ra(=[sym(rl_ignore_completion_duplicates)]) == 0, and falls through when ra(=[sym(rl_ignore_completion_duplicates)]) != 0.
  The `beq` branch at 0x100419cc targets 0x100419fc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x100419f4 targets 0x100419d4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x10041aa8 targets 0x10041b7c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x10041af4 targets 0x10041b44, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10041b3c targets 0x10041b50 and is always taken.
  The `bne` branch at 0x10041b74 targets 0x10041ab0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x10041bc4 targets 0x10041c4c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10041be4 targets 0x10041c24, is taken when a4(?) == a5(=sp-356), and falls through when a4(?) != a5(=sp-356).
  The `bne` branch at 0x10041c44 targets 0x10041bcc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x10041c6c targets 0x10041c90, is taken when t8(?) == t9(=sp-356), and falls through when t8(?) != t9(=sp-356).
  The `bne` branch at 0x10041cc4 targets 0x10041d24, is taken when ra(?) != at(=0x2), and falls through when ra(?) == at(=0x2).
  The `bne` branch at 0x10041cf4 targets 0x10041d24, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10041d30 targets 0x10041d70, is taken when a2(=a0) == a3(=0x9), and falls through when a2(=a0) != a3(=0x9).
  The `beq` branch at 0x10041d40 targets 0x10041d70, is taken when a4(=a0) == a5(=0x21), and falls through when a4(=a0) != a5(=0x21).
  The `beq` branch at 0x10041d50 targets 0x100422c8, is taken when a6(=a0) == a7(=0x2a), and falls through when a6(=a0) != a7(=0x2a).
  The `beq` branch at 0x10041d60 targets 0x1004242c, is taken when t0(=a0) == t1(=0x3f), and falls through when t0(=a0) != t1(=0x3f).
  The `beq` branch at 0x10041d68 targets 0x10042ad0 and is always taken.
  The `beq` branch at 0x10041d80 targets 0x10041dbc, is taken when t2(=[sym(rl_ignore_some_completions_function)]) == 0, and falls through when t2(=[sym(rl_ignore_some_completions_function)]) != 0.
  The `bne` branch at 0x10041d98 targets 0x10041dbc, is taken when t3(?) != t8(=sym(filename_completion_function)), and falls through when t3(?) == t8(=sym(filename_completion_function)).
  The `beq` branch at 0x10041dd0 targets 0x10041e30, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10041de8 targets 0x10041e30, is taken when v0(=[sym(rl_completer_quote_characters)]) == 0, and falls through when v0(=[sym(rl_completer_quote_characters)]) != 0.
  The `beq` branch at 0x10041e00 targets 0x10041e30, is taken when v1(=[sym(rl_filename_completion_desired)]) == 0, and falls through when v1(=[sym(rl_filename_completion_desired)]) != 0.
  The `beq` branch at 0x10041e18 targets 0x10041e30, is taken when a0(=[sym(rl_filename_quoting_desired)]) == 0, and falls through when a0(=[sym(rl_filename_quoting_desired)]) != 0.
  The `beq` branch at 0x10041e28 targets 0x10041e34 and is always taken.
  The `beq` branch at 0x10041e40 targets 0x10041e7c, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10041e4c targets 0x10041e70, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x10041e58 targets 0x10041e70, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x10041e68 targets 0x10041e74 and is always taken.
  The `beq` branch at 0x10041e80 targets 0x10041f98, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10041ec8 targets 0x10041f04, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10041edc targets 0x10041ef4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x10041eec targets 0x10041efc and is always taken.
  The `beq` branch at 0x10041f08 targets 0x10041f98, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10041f9c targets 0x1004204c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1004202c targets 0x1004204c, is taken when ra(?) == at(?), and falls through when ra(?) != at(?).
  The `beq` branch at 0x10042058 targets 0x100420ac, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x10042068 targets 0x10042078, is taken when at(=a0) != v0(=0x21), and falls through when at(=a0) == v0(=0x21).
  The `beq` branch at 0x10042070 targets 0x100424b4 and is always taken.
  The `beq` branch at 0x10042088 targets 0x100420a4, is taken when v1(=[sym(rl_editing_mode)]) == 0, and falls through when v1(=[sym(rl_editing_mode)]) != 0.
  The `beq` branch at 0x100420a4 targets 0x100422c0 and is always taken.
  The `beq` branch at 0x100420b4 targets 0x100420e0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100420f0 targets 0x10042108, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10042100 targets 0x10042110 and is always taken.
  The `beq` branch at 0x10042158 targets 0x10042280, is taken when a5(=[sym(rl_filename_completion_desired)]) == 0, and falls through when a5(=[sym(rl_filename_completion_desired)]) != 0.
  The `bne` branch at 0x100421a4 targets 0x10042220, is taken when v0(=ret(stat)) != 0, and falls through when v0(=ret(stat)) == 0.
  The `bne` branch at 0x100421b8 targets 0x10042220, is taken when ra(?) != at(=0x4000), and falls through when ra(?) == at(=0x4000).
  The `beq` branch at 0x100421ec targets 0x10042218, is taken when at(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v0(=0x2f), and falls through when at(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v0(=0x2f).
  The `beq` branch at 0x10042218 targets 0x10042260 and is always taken.
  The `bne` branch at 0x10042240 targets 0x10042260, is taken when a1(=[sym(rl_point)]) != a2(=[sym(rl_end)]), and falls through when a1(=[sym(rl_point)]) == a2(=[sym(rl_end)]).
  The `beq` branch at 0x10042278 targets 0x100422c0 and is always taken.
  The `bne` branch at 0x100422a0 targets 0x100422c0, is taken when ra(=[sym(rl_point)]) != at(=[sym(rl_end)]), and falls through when ra(=[sym(rl_point)]) == at(=[sym(rl_end)]).
  The `beq` branch at 0x100422c0 targets 0x10042b20 and is always taken.
  The `beq` branch at 0x1004232c targets 0x100423d0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10042348 targets 0x100423c8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x100423c0 targets 0x10042350, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x100423c8 targets 0x10042410 and is always taken.
  The `beq` branch at 0x10042424 targets 0x10042b20 and is always taken.
  The `bne` branch at 0x10042438 targets 0x100424b4, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x100424ac targets 0x10042ab4 and is always taken.
  The `beq` branch at 0x100424d8 targets 0x10042574, is taken when ra(=entry(0x4)) == 0, and falls through when ra(=entry(0x4)) != 0.
  The `beq` branch at 0x1004253c targets 0x1004254c, is taken when ra(?) >= at(=ret(strlen)) (signed), and falls through when ra(?) < at(=ret(strlen)) (signed).
  The `bne` branch at 0x1004256c targets 0x100424e0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x10042598 targets 0x10042694, is taken when a2(?) < a3(=[sym(rl_completion_query_items)]) (signed), and falls through when a2(?) >= a3(=[sym(rl_completion_query_items)]) (signed).
  The `bne` branch at 0x10042670 targets 0x10042694, is taken when v0(=ret(get_y_or_n)) != 0, and falls through when v0(=ret(get_y_or_n)) == 0.
  The `beq` branch at 0x1004268c targets 0x10042ab4 and is always taken.
  The `beq` branch at 0x100426cc targets 0x10042708, is taken when ra(?) == at(=0x1), and falls through when ra(?) != at(=0x1).
  The `bne` branch at 0x100426f4 targets 0x10042708, is taken when a2(=[sym(screenwidth)]) != a3(?), and falls through when a2(=[sym(screenwidth)]) == a3(?).
  The `bne` branch at 0x1004270c targets 0x1004271c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1004274c targets 0x1004275c, is taken when a6(?) >= a7(?) (signed), and falls through when a6(?) < a7(?) (signed).
  The `bne` branch at 0x1004276c targets 0x100427a0, is taken when t9(=[sym(rl_ignore_completion_duplicates)]) != 0, and falls through when t9(=[sym(rl_ignore_completion_duplicates)]) == 0.
  The `beq` branch at 0x100427cc targets 0x10042ab4, is taken when ra(=0x1) >= at(?) (signed), and falls through when ra(=0x1) < at(?) (signed).
  The `beq` branch at 0x100427f0 targets 0x10042a7c, is taken when v1(=0x0) >= a0(?) (signed), and falls through when v1(=0x0) < a0(?) (signed).
  The `bne` branch at 0x10042804 targets 0x10042828, is taken when a2(?) < a3(?) (signed), and falls through when a2(?) >= a3(?) (signed).
  The `bne` branch at 0x10042820 targets 0x10042830, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x10042828 targets 0x10042a7c and is always taken.
  The `beq` branch at 0x100428cc targets 0x10042a4c, is taken when a3(?) >= a4(?) (signed), and falls through when a3(?) < a4(?) (signed).
  The `beq` branch at 0x100428ec targets 0x10042a4c, is taken when a5(=0x0) >= a6(?) (signed), and falls through when a5(=0x0) < a6(?) (signed).
  The `beq` branch at 0x10042904 targets 0x10042948, is taken when t0(=[sym(__us_rsthread_stdio)]) == 0, and falls through when t0(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10042940 targets 0x10042a24 and is always taken.
  The `bgez` branch at 0x10042988 targets 0x100429cc, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x100429c4 targets 0x10042a1c and is always taken.
  The `bne` branch at 0x10042a44 targets 0x100428f4, is taken when a7(?) < t0(?) (signed), and falls through when a7(?) >= t0(?) (signed).
  The `bne` branch at 0x10042a74 targets 0x100427f8, is taken when t3(?) < t8(?) (signed), and falls through when t3(?) >= t8(?) (signed).
  The `bne` branch at 0x10042aac targets 0x100427d4, is taken when ra(?) < at(?) (signed), and falls through when ra(?) >= at(?) (signed).
  The `beq` branch at 0x10042ac8 targets 0x10042b20 and is always taken.
  The `beq` branch at 0x10042b18 targets 0x10042b20 and is always taken.
  The `beq` branch at 0x10042b38 targets 0x10042b90, is taken when ra(=entry(0x0)) == 0, and falls through when ra(=entry(0x0)) != 0.
  The `bne` branch at 0x10042b88 targets 0x10042b40, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10042bac targets 0x10042c2c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x10042be0 targets 0x10042c04, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x10042bfc targets 0x10042c14 and is always taken.
  The return at 0x10042c3c has v0 = 0x0.

- `username_completion_function` in `usr/gfx/KONA/bin/kpm` at 0x10042e00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10042e00-0x100431d0 (976 bytes).
  It occupies 976 bytes.
  23 such `lw` accesses load 4 bytes from abs 0x1014bf90, including `lw` at 0x10042e34, `lw` at 0x10042e4c, `lw` at 0x10042e78.
  5 such `lw` accesses load 4 bytes from abs 0x1024a8d4, including `lw` at 0x10042e38, `lw` at 0x10042e50, `lw` at 0x10042f60.
  The `lw` at 0x10042e5c loads 4 bytes from abs 0x1014c114.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x10042e6c, `lbu` at 0x10043128.
  The `sw` at 0x10042e7c stores 4 bytes to abs 0x1024a8e0.
  2 such `lw` accesses load 4 bytes from abs 0x1024a8e0, including `lw` at 0x10042e8c, `lw` at 0x10043180.
  2 such `sw` accesses store 4 bytes to abs 0x1024a8e4, including `sw` at 0x10042eac, `sw` at 0x10042ec4.
  3 such `lw` accesses load 4 bytes from abs 0x1024a8e4, including `lw` at 0x10042ed4, `lw` at 0x10042f24, `lw` at 0x10043140.
  3 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x10042ee8, `lw` at 0x10042f6c, `lw` at 0x100430f4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x10042f04, `lw` at 0x10043110.
  2 such `lw` accesses load 4 bytes from abs 0x1014c0f8, including `lw` at 0x10042f38, `lw` at 0x10043168.
  The `sw` at 0x10042f50 stores 4 bytes to abs 0x1024a8d4.
  The `sw` at 0x10042f88 stores 4 bytes to abs 0x1024a8dc.
  The `lw` at 0x10042f94 loads 4 bytes from abs 0x1014c228.
  2 such `lw` accesses load 4 bytes from abs 0x1014c22c, including `lw` at 0x10042fa8, `lw` at 0x10043070.
  2 such `sw` accesses store 4 bytes to abs 0x1024a8d8, including `sw` at 0x10042fcc, `sw` at 0x10043094.
  5 such `lw` accesses load 4 bytes from abs 0x1024a8d8, including `lw` at 0x10042fe4, `lw` at 0x10043028, `lw` at 0x100430ac.
  4 such `lw` accesses load 4 bytes from [0x1024a8d8] +0x0, including `lw` at 0x10042fe8, `lw` at 0x1004302c, `lw` at 0x100430e8.
  The `lbu` at 0x10042fec loads 1 byte from [[0x1024a8d8]] +0x0.
  The `lbu` at 0x10043000 loads 1 byte from [0x1024a8d4] +0x0.
  The `lw` at 0x1004303c loads 4 bytes from abs 0x1024a8dc.
  The `lw` at 0x10043048 loads 4 bytes from abs 0x1014c170.
  The `lw` at 0x100430c0 loads 4 bytes from abs 0x1014c230.
  The `sb` at 0x10043130 stores 1 byte to ret(xmalloc) +0x0.
  The `lw` at 0x1004319c loads 4 bytes from abs 0x1014c894.
  The `sw` at 0x100431a0 stores 4 bytes to sym(rl_filename_completion_desired) +0x0.
  The `jalr` at 0x10042e60 calls free with a0=[0x1024a8d4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10042eec calls strlen with a0=([0x1024a8e4] + a0), a1=a0 at entry (arg0), a2=0x7e, a3=one of 0x1, 0x1024a89c.
  The `jal` at 0x10042f08 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042f3c calls strcpy with a0=ret(xmalloc), a1=([0x1024a8e4] + a0), a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10042f70 calls strlen with a0=[0x1024a8d4], a1=0x1024a89c, a2=?, a3=?.
  The `jalr` at 0x10042f98 calls setpwent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10042fac calls getpwent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004304c calls strncmp with a0=[0x1024a8d4], a1=[[0x1024a8d8]], a2=[0x1024a8dc], a3=?.
  The `jalr` at 0x10043074 calls getpwent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100430c4 calls endpwent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100430f8 calls strlen with a0=[[0x1024a8d8]], a1=?, a2=?, a3=?.
  The `jal` at 0x10043114 calls xmalloc [0x10061950] with a0=ret(strlen)+2, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004316c calls strcpy with a0=([0x1024a8e4] + ret(xmalloc)), a1=[[0x1024a8d8]], a2=ret(xmalloc), a3=?.
  The `bne` branch at 0x10042e24 targets 0x10042fa0, is taken when at(=a1) != 0, and falls through when at(=a1) == 0.
  The `beq` branch at 0x10042e3c targets 0x10042e68, is taken when v1(=[0x1024a8d4]) == 0, and falls through when v1(=[0x1024a8d4]) != 0.
  The `bne` branch at 0x10042e94 targets 0x10042eb8, is taken when a1(=[0x1024a8e0]) != a2(=0x7e), and falls through when a1(=[0x1024a8e0]) == a2(=0x7e).
  The `beq` branch at 0x10042eb0 targets 0x10042ec8 and is always taken.
  The `beq` branch at 0x10042fd0 targets 0x100430a0, is taken when ra(=ret(getpwent)) == 0, and falls through when ra(=ret(getpwent)) != 0.
  The `bne` branch at 0x10043004 targets 0x10043068, is taken when v0(=[[[0x1024a8d8]]]:1) != v1(=[[0x1024a8d4]]:1), and falls through when v0(=[[[0x1024a8d8]]]:1) == v1(=[[0x1024a8d4]]:1).
  The `bne` branch at 0x10043058 targets 0x10043068, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x10043060 targets 0x100430a0 and is always taken.
  The `bne` branch at 0x10043098 targets 0x10042fd8, is taken when ra(=ret(getpwent)) != 0, and falls through when ra(=ret(getpwent)) == 0.
  The `bne` branch at 0x100430b0 targets 0x100430d8, is taken when v0(=[0x1024a8d8]) != 0, and falls through when v0(=[0x1024a8d8]) == 0.
  The `beq` branch at 0x100430d0 targets 0x100431b8 and is always taken.
  The `bne` branch at 0x10043188 targets 0x100431a4, is taken when a2(=[0x1024a8e0]) != a3(=0x7e), and falls through when a2(=[0x1024a8e0]) == a3(=0x7e).
  The `beq` branch at 0x100431b0 targets 0x100431b8 and is always taken.
  The return at 0x100431c8 has v0 = one of 0x0, ret(xmalloc).

- `completion_matches` in `usr/gfx/KONA/bin/kpm` at 0x100431d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100431d0-0x100436c8 (1272 bytes).
  It occupies 1272 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1004320c, `lw` at 0x10043638.
  The `sw` at 0x1004322c stores 4 bytes to ret(xmalloc) +0x4.
  The `lw` at 0x10043294 loads 4 bytes from abs 0x1014c6e8.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100432c8, `sw` at 0x100432e0, `sw` at 0x10043350.
  14 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10043348, `lw` at 0x100433bc, `lw` at 0x100433d4.
  The `lw` at 0x10043384 loads 4 bytes from abs 0x1014c89c.
  The `lw` at 0x10043388 loads 4 bytes from sym(completion_case_fold) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x100433a0, `lw` at 0x1004346c.
  2 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x100433a4, `lw` at 0x10043470.
  8 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100433c4, `lbu` at 0x10043400, `lbu` at 0x10043448.
  2 such `lw` accesses load 4 bytes from abs 0x1014c234, including `lw` at 0x1004340c, `lw` at 0x100434e0.
  The `lw` at 0x1004366c loads 4 bytes from abs 0x1014c20c.
  The `sb` at 0x10043688 stores 1 byte to ?.
  The `lw` at 0x100436a0 loads 4 bytes from abs 0x1014c114.
  The `jal` at 0x10043210 calls xmalloc [0x10061950] with a0=0x2c, a1=a1 at entry (arg1), a2=0x110af0, a3=a3 at entry (arg3).
  The `jalr` at 0x1004323c calls (unknown callee) with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=ret(xmalloc)+4.
  The `jal` at 0x10043298 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100432f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=ret(?).
  The `jalr` at 0x10043410 calls tolower with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100434e4 calls tolower with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004363c calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10043670 calls strncpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100436a4 calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10043254 targets 0x10043310, is taken when a4(=ret(?)) == 0, and falls through when a4(=ret(?)) != 0.
  The `bne` branch at 0x10043268 targets 0x100432a8, is taken when a5(?) != a6(?), and falls through when a5(?) == a6(?).
  The `bne` branch at 0x10043308 targets 0x1004325c, is taken when t1(=ret(?)) != 0, and falls through when t1(=ret(?)) == 0.
  The `beq` branch at 0x10043314 targets 0x10043694, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x10043338 targets 0x10043368, is taken when t3(?) != t8(=0x1), and falls through when t3(?) == t8(=0x1).
  The `beq` branch at 0x10043360 targets 0x1004368c and is always taken.
  The `beq` branch at 0x10043374 targets 0x10043628, is taken when v1(=0x1) >= a0(?) (signed), and falls through when v1(=0x1) < a0(?) (signed).
  The `beq` branch at 0x1004338c targets 0x10043560, is taken when a1(=[sym(completion_case_fold)]) == 0, and falls through when a1(=[sym(completion_case_fold)]) != 0.
  The `beq` branch at 0x100433dc targets 0x1004342c, is taken when (a2(?) & 0x1) == 0, and falls through when (a2(?) & 0x1) != 0.
  The `beq` branch at 0x10043424 targets 0x10043450 and is always taken.
  The `beq` branch at 0x1004345c targets 0x10043558, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x100434ac targets 0x100434fc, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x100434f4 targets 0x10043524 and is always taken.
  The `beq` branch at 0x1004352c targets 0x10043558, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x1004353c targets 0x10043558, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x10043550 targets 0x10043398 and is always taken.
  The `beq` branch at 0x10043558 targets 0x100435ec and is always taken.
  The `beq` branch at 0x1004358c targets 0x100435ec, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x100435c0 targets 0x100435ec, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x100435d0 targets 0x100435ec, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x100435e4 targets 0x10043564 and is always taken.
  The `beq` branch at 0x100435f8 targets 0x10043608, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `bne` branch at 0x10043620 targets 0x1004337c, is taken when a6(?) < a7(?) (signed), and falls through when a6(?) >= a7(?) (signed).
  The `beq` branch at 0x1004368c targets 0x100436b0 and is always taken.
  The return at 0x100436c0 has v0 = one of ?, 0x0.

- `filename_completion_function` in `usr/gfx/KONA/bin/kpm` at 0x100436d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100436d0-0x10044194 (2756 bytes).
  It occupies 2756 bytes.
  55 such `lw` accesses load 4 bytes from abs 0x1014bf90, including `lw` at 0x10043708, `lw` at 0x10043720, `lw` at 0x10043744.
  20 such `lw` accesses load 4 bytes from abs 0x1024a8f0, including `lw` at 0x1004370c, `lw` at 0x10043724, `lw` at 0x100438b4.
  8 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x10043730, `lw` at 0x1004376c, `lw` at 0x100437a8.
  8 such `lw` accesses load 4 bytes from abs 0x1024a8ec, including `lw` at 0x10043748, `lw` at 0x10043760, `lw` at 0x100438fc.
  8 such `lw` accesses load 4 bytes from abs 0x1024a8f4, including `lw` at 0x10043784, `lw` at 0x1004379c, `lw` at 0x10043ab0.
  11 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x100437c0, `lw` at 0x1004384c, `lw` at 0x10043980.
  7 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x100437dc, `lw` at 0x10043868, `lw` at 0x1004399c.
  8 such `lw` accesses load 4 bytes from abs 0x1014c0f8, including `lw` at 0x100437fc, `lw` at 0x10043888, `lw` at 0x1004390c.
  2 such `sw` accesses store 4 bytes to abs 0x1024a8ec, including `sw` at 0x10043818, `sw` at 0x10043e60.
  The `lbu` at 0x10043820 loads 1 byte from a0 (arg0 at entry) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014bf98, including `lw` at 0x10043834, `lw` at 0x10043930, `lw` at 0x10043c48.
  3 such `sw` accesses store 4 bytes to abs 0x1024a8f0, including `sw` at 0x100438a4, `sw` at 0x10043a48, `sw` at 0x10043e14.
  The `lw` at 0x100438c4 loads 4 bytes from abs 0x1014c1e4.
  The `sb` at 0x1004391c stores 1 byte to ret(strrchr) +0x1.
  The `lbu` at 0x10043948 loads 1 byte from abs 0x10092a58.
  The `sb` at 0x1004394c stores 1 byte to [0x1024a8f0] +0x0.
  The `lbu` at 0x10043950 loads 1 byte from abs 0x10092a59.
  The `sb` at 0x10043954 stores 1 byte to [0x1024a8f0] +0x1.
  3 such `sw` accesses store 4 bytes to abs 0x1024a8f4, including `sw` at 0x100439e4, `sw` at 0x10043b44, `sw` at 0x10043eac.
  The `lw` at 0x10043a00 loads 4 bytes from abs 0x1014c6ec.
  2 such `lw` accesses load 4 bytes from abs 0x1014c86c, including `lw` at 0x10043a58, `lw` at 0x10043a80.
  2 such `lw` accesses load 4 bytes from sym(rl_directory_completion_hook) +0x0, including `lw` at 0x10043a5c, `lw` at 0x10043a84.
  The `lw` at 0x10043b60 loads 4 bytes from abs 0x1014c238.
  2 such `sw` accesses store 4 bytes to abs 0x1024a8e8, including `sw` at 0x10043b7c, `sw` at 0x10043dc8.
  The `sw` at 0x10043bb4 stores 4 bytes to abs 0x1024a8f8.
  The `lw` at 0x10043bc4 loads 4 bytes from abs 0x1014c894.
  The `sw` at 0x10043bc8 stores 4 bytes to sym(rl_filename_completion_desired) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1024a8e8, including `lw` at 0x10043bd8, `lw` at 0x10043bf0, `lw` at 0x10043d8c.
  The `lw` at 0x10043bfc loads 4 bytes from abs 0x1014c23c.
  3 such `lw` accesses load 4 bytes from abs 0x1024a8f8, including `lw` at 0x10043c2c, `lw` at 0x10043d0c, `lw` at 0x10043d40.
  2 such `lw` accesses load 4 bytes from abs 0x1014c150, including `lw` at 0x10043c58, `lw` at 0x10043c90.
  The `lbu` at 0x10043cc8 loads 1 byte from [0x1024a8ec] +0x0.
  The `lbu` at 0x10043cd4 loads 1 byte from ret(readdir) +0x12.
  The `lw` at 0x10043d4c loads 4 bytes from abs 0x1014c170.
  The `lw` at 0x10043db0 loads 4 bytes from abs 0x1014c240.
  The `lbu` at 0x10043ee4 loads 1 byte from [0x1024a8f0] +0x0.
  The `lbu` at 0x10043f08 loads 1 byte from [0x1024a8f0] +0x1.
  The `lw` at 0x10043f1c loads 4 bytes from abs 0x1014c870.
  The `lw` at 0x10043f20 loads 4 bytes from sym(rl_complete_with_tilde_expansion) +0x0.
  The `lbu` at 0x10043f3c loads 1 byte from [0x1024a8f4] +0x0.
  The `lbu` at 0x10044004 loads 1 byte from ([0x1024a8f0] + ret(strlen)-1) +0x0.
  The `sb` at 0x10044024 stores 1 byte to (ret(strlen) + ret(xmalloc)) +0x0.
  The `sb` at 0x10044038 stores 1 byte to (ret(xmalloc) + ret(strlen)+1) +0x0.
  The `lw` at 0x100440f0 loads 4 bytes from abs 0x1014c0ec.
  The `jalr` at 0x10043734 calls free with a0=[0x1024a8f0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10043770 calls free with a0=[0x1024a8ec], a1=[0x1024a8ec], a2=?, a3=?.
  The `jalr` at 0x100437ac calls free with a0=[0x1024a8f4], a1=[0x1024a8f4], a2=?, a3=?.
  The `jalr` at 0x100437c4 calls strlen with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100437e0 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10043800 calls strcpy with a0=ret(xmalloc), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x10043850 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004386c calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004388c calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100438c8 calls strrchr with a0=[0x1024a8f0], a1=0x2f, a2=?, a3=?.
  The `jalr` at 0x10043910 calls strcpy with a0=[0x1024a8ec], a1=ret(strrchr)+1, a2=ret(strrchr), a3=?.
  The `jalr` at 0x10043984 calls strlen with a0=[0x1024a8f0], a1=?, a2=?, a3=?.
  The `jal` at 0x100439a0 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100439cc calls strcpy with a0=ret(xmalloc), a1=[0x1024a8f0], a2=?, a3=?.
  The `jal` at 0x10043a04 calls tilde_expand [0x10061ec0] with a0=[0x1024a8f0], a1=?, a2=0x1024a89c, a3=?.
  The `jalr` at 0x10043a30 calls free with a0=[0x1024a8f0], a1=?, a2=?, a3=?.
  The `jalr` at 0x10043a88 calls (unknown callee) with a0=0x1024a8f0, a1=[sym(rl_directory_completion_hook)], a2=ret(tilde_expand), a3=0x1024a89c.
  The `jalr` at 0x10043ac0 calls free with a0=[0x1024a8f4], a1=?, a2=?, a3=?.
  The `jalr` at 0x10043ae4 calls strlen with a0=[0x1024a8f0], a1=?, a2=?, a3=?.
  The `jal` at 0x10043b00 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10043b2c calls strcpy with a0=ret(xmalloc), a1=[0x1024a8f0], a2=?, a3=?.
  The `jalr` at 0x10043b64 calls opendir with a0=[0x1024a8f0], a1=?, a2=?, a3=?.
  The `jalr` at 0x10043b9c calls strlen with a0=[0x1024a8ec], a1=0x1024a89c, a2=?, a3=?.
  The `jalr` at 0x10043c00 calls readdir with a0=[0x1024a8e8], a1=?, a2=?, a3=?, a5=[0x1024a8e8].
  The `jalr` at 0x10043c5c calls strcmp with a0=ret(readdir)+18, a1=0x10092a58, a2=[0x1024a8f8], a3=?.
  The `jalr` at 0x10043c94 calls strcmp with a0=ret(readdir)+18, a1=0x10092a5c, a2=?, a3=?.
  The `jalr` at 0x10043cf4 calls strlen with a0=ret(readdir)+18, a1=[[0x1024a8ec]]:1, a2=[ret(readdir)+18]:1, a3=?.
  The `jalr` at 0x10043d50 calls strncmp with a0=[0x1024a8ec], a1=ret(readdir)+18, a2=[0x1024a8f8], a3=?.
  The `jalr` at 0x10043db4 calls closedir with a0=[0x1024a8e8], a1=?, a2=[0x1024a8e8], a3=?.
  The `jalr` at 0x10043e00 calls free with a0=[0x1024a8f0], a1=?, a2=[0x1024a8f0], a3=?.
  The `jalr` at 0x10043e4c calls free with a0=[0x1024a8ec], a1=?, a2=[0x1024a8ec], a3=?.
  The `jalr` at 0x10043e98 calls free with a0=[0x1024a8f4], a1=?, a2=[0x1024a8f4], a3=?.
  The `jalr` at 0x10043f68 calls strlen with a0=[0x1024a8f0], a1=?, a2=[0x1024a8f0], a3=[[0x1024a8f0]]:1, a5=[sym(rl_complete_with_tilde_expansion)], a6=[[0x1024a8f4]]:1, a7=0x7e.
  The `jalr` at 0x10043f8c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10043fb0 calls xmalloc [0x10061950] with a0=(ret(strlen) + ret(strlen))+2, a1=?, a2=?, a3=?.
  The `jalr` at 0x10043fe0 calls strcpy with a0=ret(xmalloc), a1=[0x1024a8f0], a2=?, a3=?.
  The `jalr` at 0x10044060 calls strlen with a0=[0x1024a8f4], a1=?, a2=[0x1024a8f0], a3=[[0x1024a8f0]]:1, a5=[sym(rl_complete_with_tilde_expansion)].
  The `jalr` at 0x10044080 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100440a4 calls xmalloc [0x10061950] with a0=(ret(strlen) + ret(strlen))+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100440d4 calls strcpy with a0=ret(xmalloc), a1=[0x1024a8f4], a2=?, a3=?.
  The `jalr` at 0x100440f4 calls strcat with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10044118 calls strlen with a0=?, a1=?, a2=[0x1024a8f0], a3=?.
  The `jal` at 0x10044134 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10044158 calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `bne` branch at 0x100436f8 targets 0x10043bcc, is taken when at(=a1) != 0, and falls through when at(=a1) == 0.
  The `beq` branch at 0x10043710 targets 0x1004373c, is taken when v1(=[0x1024a8f0]) == 0, and falls through when v1(=[0x1024a8f0]) != 0.
  The `beq` branch at 0x1004374c targets 0x10043778, is taken when a1(=[0x1024a8ec]) == 0, and falls through when a1(=[0x1024a8ec]) != 0.
  The `beq` branch at 0x10043788 targets 0x100437b4, is taken when a1(=[0x1024a8f4]) == 0, and falls through when a1(=[0x1024a8f4]) != 0.
  The `bne` branch at 0x10043824 targets 0x10043840, is taken when ra(=[a0]:1) != 0, and falls through when ra(=[a0]:1) == 0.
  The `beq` branch at 0x100438dc targets 0x10043928, is taken when a2(=ret(strrchr)) == 0, and falls through when a2(=ret(strrchr)) != 0.
  The `beq` branch at 0x10043920 targets 0x10043968 and is always taken.
  The `beq` branch at 0x10043a60 targets 0x10043a98, is taken when a1(=[sym(rl_directory_completion_hook)]) == 0, and falls through when a1(=[sym(rl_directory_completion_hook)]) != 0.
  The `beq` branch at 0x10043a9c targets 0x10043b48, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10043bdc targets 0x10043d74, is taken when a5(=[0x1024a8e8]) == 0, and falls through when a5(=[0x1024a8e8]) != 0.
  The `beq` branch at 0x10043c18 targets 0x10043d74, is taken when a1(=ret(readdir)) == 0, and falls through when a1(=ret(readdir)) != 0.
  The `bne` branch at 0x10043c30 targets 0x10043cb8, is taken when a2(=[0x1024a8f8]) != 0, and falls through when a2(=[0x1024a8f8]) == 0.
  The `beq` branch at 0x10043c68 targets 0x10043cb0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x10043ca0 targets 0x10043cb0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x10043ca8 targets 0x10043d74 and is always taken.
  The `beq` branch at 0x10043cb0 targets 0x10043d6c and is always taken.
  The `bne` branch at 0x10043cd8 targets 0x10043d6c, is taken when a1(=[[0x1024a8ec]]:1) != a2(=[ret(readdir)+18]:1), and falls through when a1(=[[0x1024a8ec]]:1) == a2(=[ret(readdir)+18]:1).
  The `bne` branch at 0x10043d14 targets 0x10043d6c, is taken when v0(=ret(strlen)) < a1(=[0x1024a8f8]) (signed), and falls through when v0(=ret(strlen)) >= a1(=[0x1024a8f8]) (signed).
  The `bne` branch at 0x10043d5c targets 0x10043d6c, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x10043d64 targets 0x10043d74 and is always taken.
  The `beq` branch at 0x10043d6c targets 0x10043bcc and is always taken.
  The `bne` branch at 0x10043d78 targets 0x10043ebc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x10043d90 targets 0x10043dcc, is taken when a2(=[0x1024a8e8]) == 0, and falls through when a2(=[0x1024a8e8]) != 0.
  The `beq` branch at 0x10043ddc targets 0x10043e18, is taken when a2(=[0x1024a8f0]) == 0, and falls through when a2(=[0x1024a8f0]) != 0.
  The `beq` branch at 0x10043e28 targets 0x10043e64, is taken when a2(=[0x1024a8ec]) == 0, and falls through when a2(=[0x1024a8ec]) != 0.
  The `beq` branch at 0x10043e74 targets 0x10043eb0, is taken when a2(=[0x1024a8f4]) == 0, and falls through when a2(=[0x1024a8f4]) != 0.
  The `beq` branch at 0x10043eb4 targets 0x1004417c and is always taken.
  The `beq` branch at 0x10043ecc targets 0x10044104, is taken when a2(=[0x1024a8f0]) == 0, and falls through when a2(=[0x1024a8f0]) != 0.
  The `bne` branch at 0x10043eec targets 0x10043f14, is taken when a3(=[[0x1024a8f0]]:1) != a4(=0x2e), and falls through when a3(=[[0x1024a8f0]]:1) == a4(=0x2e).
  The `beq` branch at 0x10043f0c targets 0x10044104, is taken when a4(=[[0x1024a8f0]+1]:1) == 0, and falls through when a4(=[[0x1024a8f0]+1]:1) != 0.
  The `beq` branch at 0x10043f24 targets 0x10044044, is taken when a5(=[sym(rl_complete_with_tilde_expansion)]) == 0, and falls through when a5(=[sym(rl_complete_with_tilde_expansion)]) != 0.
  The `bne` branch at 0x10043f44 targets 0x10044044, is taken when a6(=[[0x1024a8f4]]:1) != a7(=0x7e), and falls through when a6(=[[0x1024a8f4]]:1) == a7(=0x7e).
  The `beq` branch at 0x1004400c targets 0x1004403c, is taken when a2(=[([0x1024a8f0] + ret(strlen)-1)]:1) == a3(=0x2f), and falls through when a2(=[([0x1024a8f0] + ret(strlen)-1)]:1) != a3(=0x2f).
  The `beq` branch at 0x1004403c targets 0x100440dc and is always taken.
  The `beq` branch at 0x100440fc targets 0x10044168 and is always taken.
  The `beq` branch at 0x10044174 targets 0x1004417c and is always taken.
  The return at 0x1004418c has v0 = one of 0x0, ?.

- `rl_tilde_expand` in `usr/gfx/KONA/bin/kpm` at 0x100441a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100441a0-0x100445d0 (1072 bytes).
  It occupies 1072 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100441c8, `lw` at 0x100441e8, `lw` at 0x10044210.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100441cc, `lw` at 0x100441ec, `lw` at 0x10044214.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x100441f8, `lw` at 0x100443d4, `lw` at 0x10044444.
  3 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x100441fc, `lw` at 0x100443d8, `lw` at 0x10044448.
  12 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10044220, `lw` at 0x1004427c, `lw` at 0x100442a4.
  12 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10044224, `lw` at 0x10044280, `lw` at 0x100442a8.
  The `lbu` at 0x1004422c loads 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0.
  The `lw` at 0x10044244 loads 4 bytes from abs 0x1014bf98.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6ec, including `lw` at 0x10044254, `lw` at 0x10044518.
  3 such `lbu` accesses load 1 byte from ([sym(rl_point)]-1 + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10044288, `lbu` at 0x100442b0, `lbu` at 0x100442d8.
  7 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10044318, `lbu` at 0x10044340, `lbu` at 0x10044394.
  The `lw` at 0x100444b4 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x100444f0 loads 4 bytes from abs 0x1014c20c.
  The `sb` at 0x10044508 stores 1 byte to ?.
  The `lw` at 0x10044538 loads 4 bytes from abs 0x1014c114.
  The `lw` at 0x1004454c loads 4 bytes from abs 0x1014c574.
  The `lw` at 0x1004456c loads 4 bytes from abs 0x1014c528.
  The `sw` at 0x10044588 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x10044598 loads 4 bytes from abs 0x1014c524.
  The `lw` at 0x100445ac loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x10044258 calls tilde_expand [0x10061ec0] with a0=0x10092a60, a1=a1 at entry (arg1), a2=0x10fb20, a3=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a4=0x7e.
  The `jal` at 0x100444b8 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?, a6=0x20.
  The `jalr` at 0x100444f4 calls strncpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jal` at 0x1004451c calls tilde_expand [0x10061ec0] with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004453c calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jal` at 0x10044550 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10044570 calls rl_delete_text [0x10048d90] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004459c calls rl_insert_text [0x10048a40] with a0=ret(tilde_expand), a1=?, a2=?, a3=?.
  The `jal` at 0x100445b0 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10044200 targets 0x10044270, is taken when at(=[sym(rl_point)]) != v0(=[sym(rl_end)]), and falls through when at(=[sym(rl_point)]) == v0(=[sym(rl_end)]).
  The `bne` branch at 0x10044234 targets 0x10044270, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x7e), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x7e).
  The `beq` branch at 0x10044268 targets 0x10044544 and is always taken.
  The `beq` branch at 0x10044290 targets 0x10044368, is taken when a1(=[([sym(rl_point)]-1 + [sym(rl_line_buffer)])]:1) == a2(=0x7e), and falls through when a1(=[([sym(rl_point)]-1 + [sym(rl_line_buffer)])]:1) != a2(=0x7e).
  The `beq` branch at 0x100442b8 targets 0x1004435c, is taken when a3(=[([sym(rl_point)]-1 + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)]-1 + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x100442e0 targets 0x1004435c, is taken when a5(=[([sym(rl_point)]-1 + [sym(rl_line_buffer)])]:1) == a6(=0x9), and falls through when a5(=[([sym(rl_point)]-1 + [sym(rl_line_buffer)])]:1) != a6(=0x9).
  The `bltz` branch at 0x100442ec targets 0x1004435c, is taken when a7(=[sym(rl_point)]-1) < 0 (signed), and falls through when a7(=[sym(rl_point)]-1) >= 0 (signed).
  The `beq` branch at 0x10044320 targets 0x1004435c, is taken when t0(?) == t1(=0x20), and falls through when t0(?) != t1(=0x20).
  The `beq` branch at 0x10044348 targets 0x1004435c, is taken when t3(?) == t8(=0x9), and falls through when t3(?) != t8(=0x9).
  The `bgez` branch at 0x10044354 targets 0x100442f4, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `beq` branch at 0x1004439c targets 0x100443ec, is taken when v0(?) == v1(=0x20), and falls through when v0(?) != v1(=0x20).
  The `beq` branch at 0x100443c4 targets 0x100443ec, is taken when a1(?) == a2(=0x9), and falls through when a1(?) != a2(=0x9).
  The `bne` branch at 0x100443e4 targets 0x10044370, is taken when a3(?) < a4(=[sym(rl_end)]) (signed), and falls through when a3(?) >= a4(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x1004440c targets 0x1004445c, is taken when a5(?) == a6(=0x20), and falls through when a5(?) != a6(=0x20).
  The `beq` branch at 0x10044434 targets 0x1004445c, is taken when a7(?) == t0(=0x9), and falls through when a7(?) != t0(=0x9).
  The `bne` branch at 0x10044454 targets 0x10044468, is taken when t1(?) < t2(=[sym(rl_end)]) (signed), and falls through when t1(?) >= t2(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10044488 targets 0x100445b8, is taken when t8(?) != t9(=0x7e), and falls through when t8(?) == t9(=0x7e).
  The return at 0x100445c8 has v0 = 0x0.

- `readline` in `usr/gfx/KONA/bin/kpm` at 0x10044690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10044690-0x100447e4 (340 bytes).
  It occupies 340 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8c0, including `lw` at 0x100446b8, `lw` at 0x10044700.
  The `sw` at 0x100446bc stores 4 bytes to sym(rl_prompt) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8d0, including `lw` at 0x100446c8, `lw` at 0x100446e4.
  The `lw` at 0x100446cc loads 4 bytes from sym(rl_pending_input) +0x0.
  The `sw` at 0x100446e8 stores 4 bytes to sym(rl_pending_input) +0x0.
  The `lw` at 0x10044704 loads 4 bytes from sym(rl_prompt) +0x0.
  The `lw` at 0x10044710 loads 4 bytes from abs 0x1014c5cc.
  The `lw` at 0x10044728 loads 4 bytes from abs 0x1014c8c4.
  The `sw` at 0x1004472c stores 4 bytes to sym(rl_visible_prompt_length) +0x0.
  The `lw` at 0x10044738 loads 4 bytes from abs 0x1014c4ec.
  The `lw` at 0x1004474c loads 4 bytes from abs 0x1014c900.
  The `lw` at 0x10044750 loads 4 bytes from sym(_rl_meta_flag) +0x0.
  The `lw` at 0x1004475c loads 4 bytes from abs 0x1014c5fc.
  The `lw` at 0x10044770 loads 4 bytes from abs 0x1014c6dc.
  The `lw` at 0x10044784 loads 4 bytes from abs 0x1014bfac.
  The `lw` at 0x100447a0 loads 4 bytes from abs 0x1014c600.
  The `lw` at 0x100447b4 loads 4 bytes from abs 0x1014c6e0.
  The `jal` at 0x10044714 calls rl_expand_prompt [0x1004e570] with a0=[sym(rl_prompt)], a1=0x10f630, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004473c calls rl_initialize [0x10046590] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10044760 calls rl_prep_terminal [0x10052eb0] with a0=[sym(_rl_meta_flag)], a1=?, a2=?, a3=?.
  The `jal` at 0x10044774 calls rl_set_signals [0x10061540] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10044788 calls (unnamed) [0x100447f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100447a4 calls rl_deprep_terminal [0x100530e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100447b8 calls rl_clear_signals [0x100617c0] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100446d4 targets 0x100446f8, is taken when at(=[sym(rl_pending_input)]) != v0(=-0x1), and falls through when at(=[sym(rl_pending_input)]) == v0(=-0x1).
  The `beq` branch at 0x100446f0 targets 0x100447cc and is always taken.
  The return at 0x100447dc has v0 = one of 0x0, ret(0x100447f0).

- `rl_stuff_char` in `usr/gfx/KONA/bin/kpm` at 0x10044e20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10044e20-0x10044f14 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0x10044e5c loads 4 bytes from abs 0x1014c8d0.
  The `sw` at 0x10044e60 stores 4 bytes to sym(rl_pending_input) +0x0.
  7 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10044e6c, `lw` at 0x10044e80, `lw` at 0x10044e94.
  4 such `lw` accesses load 4 bytes from abs 0x1024aa6c, including `lw` at 0x10044e70, `lw` at 0x10044e98, `lw` at 0x10044ed4.
  2 such `sw` accesses store 4 bytes to abs 0x1024aa6c, including `sw` at 0x10044e84, `sw` at 0x10044ef0.
  The `sb` at 0x10044eb4 stores 1 byte to table(0x1024aa6f) +0x0.
  The `lw` at 0x10044ec0 loads 4 bytes from abs 0x1014bfb8.
  The `lw` at 0x10044ec4 loads 4 bytes from abs 0x10148f70.
  The `bne` branch at 0x10044e40 targets 0x10044e64, is taken when v0(=a0) != v1(=-0x1), and falls through when v0(=a0) == v1(=-0x1).
  The `bne` branch at 0x10044edc targets 0x10044ef4, is taken when a5(=[0x1024aa6c]) < a6(=[0x10148f70]) (signed), and falls through when a5(=[0x1024aa6c]) >= a6(=[0x10148f70]) (signed).
  The return at 0x10044f0c has v0 = [0x1024aa6c].

- `ibuffer_space` in `usr/gfx/KONA/bin/kpm` at 0x10044f20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10044f20-0x10044fec (204 bytes).
  It occupies 204 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10044f3c, `lw` at 0x10044f4c, `lw` at 0x10044f68.
  3 such `lw` accesses load 4 bytes from abs 0x1024aa68, including `lw` at 0x10044f40, `lw` at 0x10044f6c, `lw` at 0x10044fbc.
  3 such `lw` accesses load 4 bytes from abs 0x1024aa6c, including `lw` at 0x10044f50, `lw` at 0x10044f7c, `lw` at 0x10044fac.
  The `lw` at 0x10044f98 loads 4 bytes from abs 0x1014bfb8.
  The `lw` at 0x10044f9c loads 4 bytes from abs 0x10148f70.
  The `beq` branch at 0x10044f58 targets 0x10044f90, is taken when v0(=[0x1024aa6c]) >= v1(=[0x1024aa68]) (signed), and falls through when v0(=[0x1024aa6c]) < v1(=[0x1024aa68]) (signed).
  The `beq` branch at 0x10044f88 targets 0x10044fd8 and is always taken.
  The `beq` branch at 0x10044fd0 targets 0x10044fd8 and is always taken.
  The return at 0x10044fe4 has v0 = ?.

- `rl_get_char` in `usr/gfx/KONA/bin/kpm` at 0x10044ff0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10044ff0-0x100450f0 (256 bytes).
  It occupies 256 bytes.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10045010, `lw` at 0x10045020, `lw` at 0x10045044.
  4 such `lw` accesses load 4 bytes from abs 0x1024aa68, including `lw` at 0x10045014, `lw` at 0x10045048, `lw` at 0x1004506c.
  The `lw` at 0x10045024 loads 4 bytes from abs 0x1024aa6c.
  2 such `sw` accesses store 4 bytes to abs 0x1024aa68, including `sw` at 0x1004505c, `sw` at 0x100450cc.
  The `lbu` at 0x10045088 loads 1 byte from table(0x1024aa6f) +0x0.
  The `sw` at 0x10045090 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x1004509c loads 4 bytes from abs 0x1014bfb8.
  The `lw` at 0x100450a0 loads 4 bytes from abs 0x10148f70.
  The `bne` branch at 0x10045028 targets 0x1004503c, is taken when v0(=[0x1024aa68]) != v1(=[0x1024aa6c]), and falls through when v0(=[0x1024aa68]) == v1(=[0x1024aa6c]).
  The `beq` branch at 0x10045034 targets 0x100450dc and is always taken.
  The `bne` branch at 0x100450b8 targets 0x100450d0, is taken when a0(=[0x1024aa68]) < a1(=[0x10148f70]) (signed), and falls through when a0(=[0x1024aa68]) >= a1(=[0x10148f70]) (signed).
  The return at 0x100450e8 has v0 = one of 0x0, 0x1.

- `rl_unget_char` in `usr/gfx/KONA/bin/kpm` at 0x100450f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100450f0-0x100451e4 (244 bytes).
  It occupies 244 bytes.
  The `lw` at 0x10045114 loads 4 bytes from abs 0x1014c4cc.
  6 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10045130, `lw` at 0x10045144, `lw` at 0x10045154.
  3 such `lw` accesses load 4 bytes from abs 0x1024aa68, including `lw` at 0x10045134, `lw` at 0x10045158, `lw` at 0x10045198.
  2 such `sw` accesses store 4 bytes to abs 0x1024aa68, including `sw` at 0x10045148, `sw` at 0x10045184.
  The `lw` at 0x1004516c loads 4 bytes from abs 0x1014bfb8.
  The `lw` at 0x10045170 loads 4 bytes from abs 0x10148f70.
  The `sb` at 0x100451b0 stores 1 byte to table(0x1024aa70) +0x0.
  The `jal` at 0x10045118 calls ibuffer_space [0x10044f20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10045120 targets 0x100451c4, is taken when v0(=ret(ibuffer_space)) == 0, and falls through when v0(=ret(ibuffer_space)) != 0.
  The `bgez` branch at 0x1004515c targets 0x10045188, is taken when at(=[0x1024aa68]) >= 0 (signed), and falls through when at(=[0x1024aa68]) < 0 (signed).
  The `beq` branch at 0x100451bc targets 0x100451cc and is always taken.
  The return at 0x100451dc has v0 = one of 0x0, 0x1.

- `rl_gather_tyi` in `usr/gfx/KONA/bin/kpm` at 0x100451f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100451f0-0x10045464 (628 bytes).
  It occupies 628 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10045210, `lw` at 0x100453d0.
  2 such `lw` accesses load 4 bytes from abs 0x1024aa08, including `lw` at 0x10045214, `lw` at 0x100453d4.
  The `lhu` at 0x10045218 loads 2 bytes from [0x1024aa08] +0xe.
  The `lw` at 0x10045240 loads 4 bytes from abs 0x1014c0c8.
  3 such `lw` accesses load 4 bytes from abs 0x1014c198, including `lw` at 0x10045278, `lw` at 0x100452a4, `lw` at 0x100452ec.
  The `lw` at 0x100452c4 loads 4 bytes from abs 0x1014c0f4.
  The `lw` at 0x10045310 loads 4 bytes from abs 0x1014c134.
  The `lw` at 0x10045314 loads 4 bytes from sym(errno) +0x0.
  The `lw` at 0x10045348 loads 4 bytes from abs 0x1014c4cc.
  The `lw` at 0x10045380 loads 4 bytes from abs 0x1014bfb8.
  The `lw` at 0x10045384 loads 4 bytes from abs 0x10148f70.
  The `lw` at 0x100453e0 loads 4 bytes from abs 0x1014c5c8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4c8, including `lw` at 0x100453fc, `lw` at 0x10045444.
  The `jalr` at 0x10045244 calls ioctl with a0=[[0x1024aa08]+14]:2, a1=0x4004667f, a2=sp-40, a3=[[0x1024aa08]+14]:2, a4=0x10ead0.
  The `jalr` at 0x1004527c calls fcntl with a0=[[0x1024aa08]+14]:2, a1=0x3, a2=0x0, a3=?, a5=ret(ioctl), a6=-0x1.
  The `jalr` at 0x100452a8 calls fcntl with a0=[[0x1024aa08]+14]:2, a1=0x4, a2=(ret(fcntl) | 0x4), a3=?.
  The `jalr` at 0x100452c8 calls read with a0=[[0x1024aa08]+14]:2, a1=sp-32, a2=0x1, a3=?.
  The `jalr` at 0x100452f0 calls fcntl with a0=[[0x1024aa08]+14]:2, a1=0x4, a2=?, a3=?.
  The `jal` at 0x1004534c calls ibuffer_space [0x10044f20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100453e4 calls rl_getc [0x1004ddc0] with a0=[0x1024aa08], a1=?, a2=?, a3=?.
  The `jal` at 0x10045400 calls rl_stuff_char [0x10044e20] with a0=ret(rl_getc), a1=?, a2=?, a3=?.
  The `jal` at 0x10045448 calls rl_stuff_char [0x10044e20] with a0=?, a1=ret(ioctl), a2=-0x1, a3=?.
  The `bne` branch at 0x1004525c targets 0x1004532c, is taken when a5(=ret(ioctl)) != a6(=-0x1), and falls through when a5(=ret(ioctl)) == a6(=-0x1).
  The `bne` branch at 0x10045300 targets 0x1004532c, is taken when ra(?) != at(=-0x1), and falls through when ra(?) == at(=-0x1).
  The `bne` branch at 0x1004531c targets 0x1004532c, is taken when v0(=[sym(errno)]) != v1(=0xb), and falls through when v0(=[sym(errno)]) == v1(=0xb).
  The `beq` branch at 0x10045324 targets 0x10045450 and is always taken.
  The `bne` branch at 0x10045330 targets 0x10045340, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x10045338 targets 0x10045450 and is always taken.
  The `beq` branch at 0x10045368 targets 0x10045378, is taken when ra(=ret(ibuffer_space)) >= at(?) (signed), and falls through when ra(=ret(ibuffer_space)) < at(?) (signed).
  The `beq` branch at 0x10045390 targets 0x1004539c, is taken when v1(=ret(ibuffer_space)) >= a0(=[0x10148f70]) (signed), and falls through when v1(=ret(ibuffer_space)) < a0(=[0x10148f70]) (signed).
  The `beq` branch at 0x100453a4 targets 0x1004542c, is taken when a1(=ret(ioctl)) == a2(=-0x1), and falls through when a1(=ret(ioctl)) != a2(=-0x1).
  The `beq` branch at 0x100453c0 targets 0x10045424, is taken when a3(?) == a4(=-0x1), and falls through when a3(?) != a4(=-0x1).
  The `bne` branch at 0x1004541c targets 0x100453c8, is taken when ra(?) != at(=-0x1), and falls through when ra(?) == at(=-0x1).
  The `beq` branch at 0x10045424 targets 0x10045450 and is always taken.
  The `beq` branch at 0x10045430 targets 0x10045450, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x1004545c has v0 = one of [sym(errno)], ?, ret(ibuffer_space), ret(rl_stuff_char).

- `rl_read_key` in `usr/gfx/KONA/bin/kpm` at 0x10045470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10045470-0x1004562c (444 bytes).
  It occupies 444 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8c8, including `lw` at 0x10045490, `lw` at 0x100454a4.
  The `lw` at 0x10045494 loads 4 bytes from sym(rl_key_sequence_length) +0x0.
  The `sw` at 0x100454a8 stores 4 bytes to sym(rl_key_sequence_length) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8d0, including `lw` at 0x100454b4, `lw` at 0x100454cc, `lw` at 0x100454e0.
  2 such `lw` accesses load 4 bytes from sym(rl_pending_input) +0x0, including `lw` at 0x100454b8, `lw` at 0x100454d0.
  The `sw` at 0x100454e4 stores 4 bytes to sym(rl_pending_input) +0x0.
  The `lw` at 0x100454f8 loads 4 bytes from abs 0x1014bfbc.
  3 such `lw` accesses load 4 bytes from abs 0x1014c904, including `lw` at 0x10045530, `lw` at 0x10045548, `lw` at 0x10045584.
  3 such `lw` accesses load 4 bytes from sym(rl_event_hook) +0x0, including `lw` at 0x10045534, `lw` at 0x1004554c, `lw` at 0x10045588.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4d0, including `lw` at 0x10045564, `lw` at 0x100455c4.
  The `lw` at 0x1004559c loads 4 bytes from abs 0x1014c4d8.
  The `lw` at 0x100455e4 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x100455e8 loads 4 bytes from abs 0x1024aa08.
  The `lw` at 0x100455f4 loads 4 bytes from abs 0x1014c5c8.
  The `jal` at 0x100454fc calls (unnamed) [0x10045c00] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10045568 calls rl_get_char [0x10044ff0] with a0=sp-48, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004558c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100455a0 calls rl_gather_tyi [0x100451f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100455c8 calls rl_get_char [0x10044ff0] with a0=sp-48, a1=?, a2=?, a3=?.
  The `jal` at 0x100455f8 calls rl_getc [0x1004ddc0] with a0=[0x1024aa08], a1=?, a2=?, a3=?.
  The `beq` branch at 0x100454bc targets 0x100454f0, is taken when at(=[sym(rl_pending_input)]) == 0, and falls through when at(=[sym(rl_pending_input)]) != 0.
  The `beq` branch at 0x100454e8 targets 0x10045608 and is always taken.
  The `beq` branch at 0x10045510 targets 0x10045528, is taken when ra(=ret(0x10045c00)) == 0, and falls through when ra(=ret(0x10045c00)) != 0.
  The `beq` branch at 0x10045520 targets 0x10045614 and is always taken.
  The `beq` branch at 0x10045538 targets 0x100455b8, is taken when v0(=[sym(rl_event_hook)]) == 0, and falls through when v0(=[sym(rl_event_hook)]) != 0.
  The `beq` branch at 0x10045550 targets 0x100455b0, is taken when v1(=[sym(rl_event_hook)]) == 0, and falls through when v1(=[sym(rl_event_hook)]) != 0.
  The `bne` branch at 0x10045574 targets 0x100455b0, is taken when v0(=ret(rl_get_char)) != 0, and falls through when v0(=ret(rl_get_char)) == 0.
  The `beq` branch at 0x100455a8 targets 0x10045540 and is always taken.
  The `beq` branch at 0x100455b0 targets 0x10045608 and is always taken.
  The `bne` branch at 0x100455d4 targets 0x10045608, is taken when v0(=ret(rl_get_char)) != 0, and falls through when v0(=ret(rl_get_char)) == 0.
  The return at 0x10045624 has v0 = one of ret(0x10045c00), ?.

- `_rl_dispatch` in `usr/gfx/KONA/bin/kpm` at 0x10045630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10045630-0x10045ba0 (1392 bytes).
  It occupies 1392 bytes.
  The `lw` at 0x1004565c loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x10045660 loads 4 bytes from abs 0x1024aa58.
  The `lw` at 0x10045678 loads 4 bytes from abs 0x1014bfc0.
  The `lw` at 0x100456ac loads 4 bytes from abs 0x1014c7d8.
  The `lw` at 0x100456b0 loads 4 bytes from sym(_rl_convert_meta_chars_to_ascii) +0x0.
  The `lbu` at 0x100456c4 loads 1 byte from a1 (arg1 at entry) +0xd8.
  The `lw` at 0x100456dc loads 4 bytes from a1 (arg1 at entry) +0xdc.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8c8, including `lw` at 0x100456fc, `lw` at 0x10045710, `lw` at 0x10045964.
  2 such `lw` accesses load 4 bytes from sym(rl_key_sequence_length) +0x0, including `lw` at 0x10045700, `lw` at 0x10045968.
  2 such `sw` accesses store 4 bytes to sym(rl_key_sequence_length) +0x0, including `sw` at 0x10045714, `sw` at 0x1004597c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c4e0, including `lw` at 0x10045728, `lw` at 0x10045860, `lw` at 0x100459bc.
  The `lw` at 0x10045750 loads 4 bytes from abs 0x1014c514.
  The `lbu` at 0x10045778 loads 1 byte from (a1 + (a0 << 0x3)) +0x0.
  8 such `lw` accesses load 4 bytes from (a1 + (a0 << 0x3)) +0x4, including `lw` at 0x100457c0, `lw` at 0x100458bc, `lw` at 0x100458f8.
  The `lw` at 0x100457e0 loads 4 bytes from abs 0x1014c554.
  The `lw` at 0x100457f4 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x100457f8 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004580c loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The `lw` at 0x10045828 loads 4 bytes from abs 0x1014c234.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7c4, including `lw` at 0x10045888, `lw` at 0x10045b50.
  2 such `lw` accesses load 4 bytes from sym(rl_numeric_arg) +0x0, including `lw` at 0x1004588c, `lw` at 0x10045b54.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7c8, including `lw` at 0x10045898, `lw` at 0x10045b60.
  2 such `lw` accesses load 4 bytes from sym(rl_arg_sign) +0x0, including `lw` at 0x1004589c, `lw` at 0x10045b64.
  The `lw` at 0x100458d8 loads 4 bytes from abs 0x1014c8d0.
  The `lw` at 0x100458dc loads 4 bytes from sym(rl_pending_input) +0x0.
  The `lw` at 0x10045904 loads 4 bytes from abs 0x1014c8b4.
  The `sw` at 0x10045908 stores 4 bytes to sym(rl_last_func) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c518, including `lw` at 0x1004591c, `lw` at 0x100459e0.
  The `lw` at 0x10045988 loads 4 bytes from abs 0x1014c4dc.
  The `lw` at 0x10045a3c loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x10045a58 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x10045a88 loads 4 bytes from abs 0x1014c0f8.
  The `lw` at 0x10045aa4 loads 4 bytes from abs 0x1014bfc4.
  The `lw` at 0x10045acc loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x10045ad0 loads 4 bytes from sym(rl_editing_mode) +0x0.
  The `lw` at 0x10045ae4 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x10045ae8 loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lw` at 0x10045af4 loads 4 bytes from abs 0x1014c7f8.
  The `lw` at 0x10045b2c loads 4 bytes from abs 0x1014c620.
  The `lw` at 0x10045b70 loads 4 bytes from abs 0x1014c61c.
  The `jal` at 0x1004567c calls (unnamed) [0x10045ec0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004572c calls _rl_dispatch [0x10045630] with a0=?, a1=[a1+220], a2=?, a3=?.
  The `jal` at 0x10045754 calls ding [0x100485f0] with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004582c calls tolower with a0=a0 at entry (arg0), a1=?, a2=[(a1 + (a0 << 0x3))+4], a3=[(a1 + (a0 << 0x3))+4], a4=(a0 << 0x3), a5=[(a1 + (a0 << 0x3))+4], a6=sym(rl_do_lowercase_version).
  The `jal` at 0x10045864 calls _rl_dispatch [0x10045630] with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x100458c0 calls (unknown callee) with a0=?, a1=a0 at entry (arg0), a2=[(a1 + (a0 << 0x3))+4], a3=[(a1 + (a0 << 0x3))+4], a4=(a0 << 0x3), a5=[(a1 + (a0 << 0x3))+4], a6=sym(rl_do_lowercase_version).
  The `jal` at 0x10045920 calls rl_abort [0x10048750] with a0=?, a1=?, a2=[(a1 + (a0 << 0x3))+4], a3=[(a1 + (a0 << 0x3))+4], a4=(a0 << 0x3).
  The `jal` at 0x1004598c calls rl_read_key [0x10045470] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100459c0 calls _rl_dispatch [0x10045630] with a0=ret(rl_read_key), a1=[(a1 + (a0 << 0x3))+4], a2=(a0 << 0x3), a3=?.
  The `jal` at 0x100459e4 calls rl_abort [0x10048750] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10045a40 calls strlen with a0=[(a1 + (a0 << 0x3))+4], a1=(a0 << 0x3), a2=?, a3=?.
  The `jal` at 0x10045a5c calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10045a8c calls strcpy with a0=ret(xmalloc), a1=[(a1 + (a0 << 0x3))+4], a2=(a0 << 0x3), a3=?.
  The `jal` at 0x10045aa8 calls (unnamed) [0x10045ba0] with a0=ret(strcpy), a1=?, a2=?, a3=?.
  The `jal` at 0x10045b30 calls rl_vi_textmod_command [0x10053ab0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10045b74 calls _rl_vi_set_last [0x10053a40] with a0=a0 at entry (arg0), a1=[sym(rl_numeric_arg)], a2=[sym(rl_arg_sign)], a3=?.
  The `beq` branch at 0x10045664 targets 0x10045684, is taken when at(=[0x1024aa58]) == 0, and falls through when at(=[0x1024aa58]) != 0.
  The `bne` branch at 0x1004568c targets 0x10045768, is taken when ra(=a0) < 0x80 (signed), and falls through when ra(=a0) >= 0x80 (signed).
  The `beq` branch at 0x1004569c targets 0x10045768, is taken when at(=a0) >= 0x100 (signed), and falls through when at(=a0) < 0x100 (signed).
  The `beq` branch at 0x100456b4 targets 0x10045768, is taken when v0(=[sym(_rl_convert_meta_chars_to_ascii)]) == 0, and falls through when v0(=[sym(_rl_convert_meta_chars_to_ascii)]) != 0.
  The `bne` branch at 0x100456cc targets 0x10045748, is taken when v1(=[a1+216]:1) != a0(=0x1), and falls through when v1(=[a1+216]:1) == a0(=0x1).
  The `beq` branch at 0x10045740 targets 0x10045b88 and is always taken.
  The `beq` branch at 0x10045760 targets 0x10045b88 and is always taken.
  The `beq` branch at 0x10045780 targets 0x100457b0, is taken when ra(=[(a1 + (a0 << 0x3))]:1) == 0, and falls through when ra(=[(a1 + (a0 << 0x3))]:1) != 0.
  The `beq` branch at 0x10045790 targets 0x10045940, is taken when v0(=[(a1 + (a0 << 0x3))]:1) == v1(=0x1), and falls through when v0(=[(a1 + (a0 << 0x3))]:1) != v1(=0x1).
  The `beq` branch at 0x100457a0 targets 0x10045a04, is taken when a0(=[(a1 + (a0 << 0x3))]:1) == a1(=0x2), and falls through when a0(=[(a1 + (a0 << 0x3))]:1) != a1(=0x2).
  The `beq` branch at 0x100457a8 targets 0x10045ac4 and is always taken.
  The `beq` branch at 0x100457cc targets 0x10045914, is taken when a2(=[(a1 + (a0 << 0x3))+4]) == 0, and falls through when a2(=[(a1 + (a0 << 0x3))+4]) != 0.
  The `bne` branch at 0x100457e4 targets 0x10045880, is taken when a5(=[(a1 + (a0 << 0x3))+4]) != a6(=sym(rl_do_lowercase_version)), and falls through when a5(=[(a1 + (a0 << 0x3))+4]) == a6(=sym(rl_do_lowercase_version)).
  The `beq` branch at 0x10045814 targets 0x10045848, is taken when (a7(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) == 0, and falls through when (a7(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10045840 targets 0x10045850 and is always taken.
  The `beq` branch at 0x10045878 targets 0x10045b88 and is always taken.
  The `bne` branch at 0x100458e0 targets 0x1004590c, is taken when v0(=[sym(rl_pending_input)]) != 0, and falls through when v0(=[sym(rl_pending_input)]) == 0.
  The `beq` branch at 0x1004590c targets 0x10045938 and is always taken.
  The `beq` branch at 0x10045930 targets 0x10045b88 and is always taken.
  The `beq` branch at 0x10045938 targets 0x10045ac4 and is always taken.
  The `beq` branch at 0x10045954 targets 0x100459d8, is taken when at(=[(a1 + (a0 << 0x3))+4]) == 0, and falls through when at(=[(a1 + (a0 << 0x3))+4]) != 0.
  The `beq` branch at 0x100459d0 targets 0x100459fc and is always taken.
  The `beq` branch at 0x100459f4 targets 0x10045b88 and is always taken.
  The `beq` branch at 0x100459fc targets 0x10045ac4 and is always taken.
  The `beq` branch at 0x10045a18 targets 0x10045abc, is taken when at(=[(a1 + (a0 << 0x3))+4]) == 0, and falls through when at(=[(a1 + (a0 << 0x3))+4]) != 0.
  The `beq` branch at 0x10045ab4 targets 0x10045b88 and is always taken.
  The `beq` branch at 0x10045abc targets 0x10045ac4 and is always taken.
  The `bne` branch at 0x10045ad4 targets 0x10045b10, is taken when ra(=[sym(rl_editing_mode)]) != 0, and falls through when ra(=[sym(rl_editing_mode)]) == 0.
  The `bne` branch at 0x10045af8 targets 0x10045b10, is taken when at(=[sym(_rl_keymap)]) != v0(=sym(vi_movement_keymap)), and falls through when at(=[sym(_rl_keymap)]) == v0(=sym(vi_movement_keymap)).
  The `beq` branch at 0x10045b08 targets 0x10045b14 and is always taken.
  The `beq` branch at 0x10045b18 targets 0x10045b7c, is taken when v1(=one of 0x0, 0x1) == 0, and falls through when v1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10045b3c targets 0x10045b7c, is taken when v0(=ret(rl_vi_textmod_command)) == 0, and falls through when v0(=ret(rl_vi_textmod_command)) != 0.
  The return at 0x10045b98 has v0 = one of ret(_rl_dispatch), 0x0, -0x1, ?.

- `rl_start_kbd_macro` in `usr/gfx/KONA/bin/kpm` at 0x10046050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10046050-0x100461a4 (340 bytes).
  It occupies 340 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10046078, `lw` at 0x100460cc, `lw` at 0x100460e4.
  The `lw` at 0x1004607c loads 4 bytes from abs 0x1024aa58.
  The `lw` at 0x10046090 loads 4 bytes from abs 0x1014c518.
  The `lw` at 0x100460b4 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x100460b8 loads 4 bytes from sym(rl_explicit_arg) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1024ac7c, including `lw` at 0x100460d0, `lw` at 0x100460e8, `lw` at 0x10046128.
  The `lw` at 0x100460f4 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1004610c loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x10046134 loads 4 bytes from abs 0x1014c0f8.
  The `lw` at 0x1004614c loads 4 bytes from abs 0x1014bfc4.
  The `sw` at 0x1004616c stores 4 bytes to abs 0x1024ac84.
  The `sw` at 0x10046180 stores 4 bytes to abs 0x1024aa58.
  The `jal` at 0x10046094 calls rl_abort [0x10048750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100460f8 calls strlen with a0=[0x1024ac7c], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10046110 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10046138 calls strcpy with a0=ret(xmalloc), a1=[0x1024ac7c], a2=?, a3=?.
  The `jal` at 0x10046150 calls (unnamed) [0x10045ba0] with a0=ret(strcpy), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10046080 targets 0x100460ac, is taken when at(=[0x1024aa58]) == 0, and falls through when at(=[0x1024aa58]) != 0.
  The `beq` branch at 0x100460a4 targets 0x1004618c and is always taken.
  The `beq` branch at 0x100460bc targets 0x10046160, is taken when at(=[sym(rl_explicit_arg)]) == 0, and falls through when at(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x100460d4 targets 0x10046158, is taken when v0(=[0x1024ac7c]) == 0, and falls through when v0(=[0x1024ac7c]) != 0.
  The `beq` branch at 0x10046158 targets 0x10046170 and is always taken.
  The return at 0x1004619c has v0 = one of -0x1, 0x0.

- `rl_end_kbd_macro` in `usr/gfx/KONA/bin/kpm` at 0x100461b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100461b0-0x100462c8 (280 bytes).
  It occupies 280 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100461d8, `lw` at 0x10046214, `lw` at 0x1004623c.
  The `lw` at 0x100461dc loads 4 bytes from abs 0x1024aa58.
  The `lw` at 0x100461f0 loads 4 bytes from abs 0x1014c518.
  2 such `lw` accesses load 4 bytes from abs 0x1024ac84, including `lw` at 0x10046218, `lw` at 0x10046250.
  The `lw` at 0x10046224 loads 4 bytes from abs 0x1014c8c8.
  The `lw` at 0x10046228 loads 4 bytes from sym(rl_key_sequence_length) +0x0.
  The `sw` at 0x10046240 stores 4 bytes to abs 0x1024ac84.
  The `lw` at 0x10046260 loads 4 bytes from abs 0x1024ac7c.
  The `sb` at 0x10046268 stores 1 byte to ([0x1024ac84] + [0x1024ac7c]) +0x0.
  The `sw` at 0x10046278 stores 4 bytes to abs 0x1024aa58.
  The `lw` at 0x10046298 loads 4 bytes from abs 0x1014c4e4.
  The `jal` at 0x100461f4 calls rl_abort [0x10048750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004629c calls rl_call_last_kbd_macro [0x100462d0] with a0=a0-1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x100461e0 targets 0x1004620c, is taken when at(=[0x1024aa58]) != 0, and falls through when at(=[0x1024aa58]) == 0.
  The `beq` branch at 0x10046204 targets 0x100462b0 and is always taken.
  The return at 0x100462c0 has v0 = one of -0x1, ret(rl_call_last_kbd_macro).

- `rl_call_last_kbd_macro` in `usr/gfx/KONA/bin/kpm` at 0x100462d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100462d0-0x10046474 (420 bytes).
  It occupies 420 bytes.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100462f8, `lw` at 0x10046324, `lw` at 0x10046350.
  4 such `lw` accesses load 4 bytes from abs 0x1024ac7c, including `lw` at 0x100462fc, `lw` at 0x10046388, `lw` at 0x100463c8.
  The `lw` at 0x10046310 loads 4 bytes from abs 0x1014c518.
  The `lw` at 0x10046328 loads 4 bytes from abs 0x1024aa58.
  The `lw` at 0x1004633c loads 4 bytes from abs 0x1014c514.
  2 such `lw` accesses load 4 bytes from abs 0x1024ac84, including `lw` at 0x10046354, `lw` at 0x10046378.
  The `sw` at 0x10046368 stores 4 bytes to abs 0x1024ac84.
  The `sb` at 0x10046390 stores 1 byte to ([0x1024ac84] + [0x1024ac7c]) +0x0.
  The `lw` at 0x100463d4 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x100463ec loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x10046414 loads 4 bytes from abs 0x1014c0f8.
  The `lw` at 0x1004642c loads 4 bytes from abs 0x1014bfc4.
  The `jal` at 0x10046314 calls rl_abort [0x10048750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10046340 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100463d8 calls strlen with a0=[0x1024ac7c], a1=?, a2=?, a3=?.
  The `jal` at 0x100463f0 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10046418 calls strcpy with a0=ret(xmalloc), a1=[0x1024ac7c], a2=?, a3=?.
  The `jal` at 0x10046430 calls (unnamed) [0x10045ba0] with a0=ret(strcpy), a1=?, a2=?, a3=?.
  The `bne` branch at 0x10046300 targets 0x1004631c, is taken when at(=[0x1024ac7c]) != 0, and falls through when at(=[0x1024ac7c]) == 0.
  The `beq` branch at 0x1004632c targets 0x100463a0, is taken when ra(=[0x1024aa58]) == 0, and falls through when ra(=[0x1024aa58]) != 0.
  The `beq` branch at 0x10046398 targets 0x1004645c and is always taken.
  The `beq` branch at 0x100463b4 targets 0x10046454, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `bne` branch at 0x1004644c targets 0x100463bc, is taken when ra(?) != at(=-0x1), and falls through when ra(?) == at(=-0x1).
  The return at 0x1004646c has v0 = 0x0.

- `_rl_kill_kbd_macro` in `usr/gfx/KONA/bin/kpm` at 0x10046480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10046480-0x10046584 (260 bytes).
  It occupies 260 bytes.
  10 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100464a0, `lw` at 0x100464b8, `lw` at 0x100464dc.
  2 such `lw` accesses load 4 bytes from abs 0x1024ac7c, including `lw` at 0x100464a4, `lw` at 0x100464bc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x100464c8, `lw` at 0x10046534.
  The `sw` at 0x100464e0 stores 4 bytes to abs 0x1024ac7c.
  The `sw` at 0x100464f0 stores 4 bytes to abs 0x1024ac84.
  The `sw` at 0x10046500 stores 4 bytes to abs 0x1024ac80.
  2 such `lw` accesses load 4 bytes from abs 0x1024ac74, including `lw` at 0x10046510, `lw` at 0x10046528.
  The `sw` at 0x1004654c stores 4 bytes to abs 0x1024ac74.
  The `sw` at 0x1004655c stores 4 bytes to abs 0x1024ac78.
  The `sw` at 0x1004656c stores 4 bytes to abs 0x1024aa58.
  The `jalr` at 0x100464cc calls free with a0=[0x1024ac7c], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10046538 calls free with a0=[0x1024ac74], a1=?, a2=[0x1024ac74], a3=0x1024a900, a4=0x1024a900.
  The `beq` branch at 0x100464a8 targets 0x100464e4, is taken when at(=[0x1024ac7c]) == 0, and falls through when at(=[0x1024ac7c]) != 0.
  The `beq` branch at 0x10046514 targets 0x10046550, is taken when a2(=[0x1024ac74]) == 0, and falls through when a2(=[0x1024ac74]) != 0.
  The return at 0x1004657c has v0 = one of ?, ret(free).

- `rl_initialize` in `usr/gfx/KONA/bin/kpm` at 0x10046590 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10046590-0x1004679c (524 bytes).
  It occupies 524 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100465b0, `lw` at 0x100465dc, `lw` at 0x100465f0.
  2 such `lw` accesses load 4 bytes from abs 0x1024a908, including `lw` at 0x100465b4, `lw` at 0x100465e0.
  The `lw` at 0x100465c8 loads 4 bytes from abs 0x1014bfd0.
  The `sw` at 0x100465f4 stores 4 bytes to abs 0x1024a908.
  The `lw` at 0x10046604 loads 4 bytes from abs 0x1014c8ac.
  The `sw` at 0x10046608 stores 4 bytes to sym(rl_end) +0x0.
  The `lw` at 0x10046614 loads 4 bytes from abs 0x1014c8a4.
  The `sw` at 0x10046618 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x10046624 loads 4 bytes from abs 0x1014c8e0.
  The `lw` at 0x10046628 loads 4 bytes from sym(rl_line_buffer) +0x0.
  The `sw` at 0x10046638 stores 4 bytes to abs 0x1024aa28.
  The `lw` at 0x10046648 loads 4 bytes from abs 0x1024aa28.
  The `sb` at 0x1004664c stores 1 byte to [0x1024aa28] +0x0.
  The `lw` at 0x10046658 loads 4 bytes from abs 0x1014c8b0.
  The `sw` at 0x1004665c stores 4 bytes to sym(rl_done) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014bfb4, including `lw` at 0x10046668, `lw` at 0x100466a4, `lw` at 0x100466d8.
  The `lw` at 0x10046678 loads 4 bytes from abs 0x1014c19c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c150, including `lw` at 0x100466b4, `lw` at 0x100466e8.
  The `lw` at 0x10046710 loads 4 bytes from abs 0x1014c900.
  The `sw` at 0x10046714 stores 4 bytes to sym(_rl_meta_flag) +0x0.
  The `lw` at 0x10046720 loads 4 bytes from abs 0x1014c7d8.
  The `sw` at 0x10046724 stores 4 bytes to sym(_rl_convert_meta_chars_to_ascii) +0x0.
  The `lw` at 0x10046734 loads 4 bytes from abs 0x1014c8fc.
  The `sw` at 0x10046738 stores 4 bytes to sym(_rl_output_meta_chars) +0x0.
  The `lw` at 0x10046744 loads 4 bytes from abs 0x1014bfd4.
  The `lw` at 0x10046758 loads 4 bytes from abs 0x1014c5f0.
  The `lw` at 0x1004676c loads 4 bytes from abs 0x1014c8b4.
  The `sw` at 0x10046770 stores 4 bytes to sym(rl_last_func) +0x0.
  The `lw` at 0x1004677c loads 4 bytes from abs 0x1014c8f8.
  The `sb` at 0x10046780 stores 1 byte to sym(_rl_parsing_conditionalized_out) +0x0.
  The `jal` at 0x100465cc calls (unnamed) [0x100467a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004667c calls getenv with a0=0x10092a88, a1=sym(rl_done), a2=[0x1024aa28], a3=[sym(rl_line_buffer)], a4=0x1024a900, a5=sym(rl_end).
  The `jalr` at 0x100466b8 calls strcmp with a0=ret(getenv), a1=0x10092a98, a2=?, a3=?, a6=ret(getenv).
  The `jalr` at 0x100466ec calls strcmp with a0=ret(getenv), a1=0x10092aa8, a2=?, a3=?.
  The `jal` at 0x10046748 calls (unnamed) [0x1004c0f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004675c calls rl_reset_line_state [0x10051a00] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100465b8 targets 0x100465f8, is taken when at(=[0x1024a908]) != 0, and falls through when at(=[0x1024a908]) == 0.
  The `beq` branch at 0x10046690 targets 0x1004673c, is taken when a6(=ret(getenv)) == 0, and falls through when a6(=ret(getenv)) != 0.
  The `beq` branch at 0x100466c4 targets 0x10046704, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x100466f4 targets 0x1004673c, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x100466fc targets 0x10046704 and is always taken.
  The return at 0x10046794 has v0 = 0x0.

- `rl_digit_argument` in `usr/gfx/KONA/bin/kpm` at 0x10047030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047030-0x1004708c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x1004705c loads 4 bytes from abs 0x1014c8d0.
  The `sw` at 0x10047060 stores 4 bytes to sym(rl_pending_input) +0x0.
  The `lw` at 0x1004706c loads 4 bytes from abs 0x1014bfe8.
  The `jal` at 0x10047070 calls (unnamed) [0x10046d80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10047084 has v0 = ret(0x10046d80).

- `rl_discard_argument` in `usr/gfx/KONA/bin/kpm` at 0x10047090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047090-0x100470fc (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0x100470b0 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x100470c4 loads 4 bytes from abs 0x1014c5ec.
  The `lw` at 0x100470d8 loads 4 bytes from abs 0x1014c4f4.
  The `jal` at 0x100470b4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100470c8 calls rl_clear_message [0x10051990] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100470dc calls rl_init_argument [0x10047100] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x100470f4 has v0 = 0x0.

- `rl_init_argument` in `usr/gfx/KONA/bin/kpm` at 0x10047100 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047100-0x1004714c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x10047118 loads 4 bytes from abs 0x1014c7c8.
  The `sw` at 0x1004711c stores 4 bytes to sym(rl_arg_sign) +0x0.
  The `lw` at 0x10047128 loads 4 bytes from abs 0x1014c7c4.
  The `sw` at 0x1004712c stores 4 bytes to sym(rl_numeric_arg) +0x0.
  The `lw` at 0x10047138 loads 4 bytes from abs 0x1014c8a0.
  The `sw` at 0x1004713c stores 4 bytes to sym(rl_explicit_arg) +0x0.
  The return at 0x10047144 has v0 = 0x0.

- `rl_universal_argument` in `usr/gfx/KONA/bin/kpm` at 0x10047150 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047150-0x100471b4 (100 bytes).
  It occupies 100 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7c4, including `lw` at 0x10047170, `lw` at 0x10047184.
  The `lw` at 0x10047174 loads 4 bytes from sym(rl_numeric_arg) +0x0.
  The `sw` at 0x10047188 stores 4 bytes to sym(rl_numeric_arg) +0x0.
  The `lw` at 0x10047194 loads 4 bytes from abs 0x1014bfe8.
  The `jal` at 0x10047198 calls (unnamed) [0x10046d80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100471ac has v0 = ret(0x10046d80).

- `rl_reset_terminal` in `usr/gfx/KONA/bin/kpm` at 0x100471c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100471c0-0x1004720c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x100471e8 loads 4 bytes from abs 0x1014bfd8.
  The `jal` at 0x100471ec calls (unnamed) [0x10047620] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10047204 has v0 = 0x0.

- `_rl_set_screen_size` in `usr/gfx/KONA/bin/kpm` at 0x10047210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047210-0x10047554 (836 bytes).
  It occupies 836 bytes.
  The `lw` at 0x10047248 loads 4 bytes from abs 0x1014c0c8.
  10 such `lw` accesses load 4 bytes from abs 0x1014c8ec, including `lw` at 0x1004726c, `lw` at 0x10047290, `lw` at 0x1004730c.
  5 such `sw` accesses store 4 bytes to sym(screenwidth) +0x0, including `sw` at 0x10047270, `sw` at 0x10047310, `sw` at 0x10047378.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8f0, including `lw` at 0x10047280, `lw` at 0x10047384, `lw` at 0x10047400.
  4 such `sw` accesses store 4 bytes to sym(screenheight) +0x0, including `sw` at 0x10047284, `sw` at 0x10047404, `sw` at 0x1004746c.
  5 such `lw` accesses load 4 bytes from sym(screenwidth) +0x0, including `lw` at 0x10047294, `lw` at 0x10047320, `lw` at 0x1004747c.
  4 such `lw` accesses load 4 bytes from abs 0x1014bfb4, including `lw` at 0x100472b4, `lw` at 0x1004734c, `lw` at 0x100473a8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c19c, including `lw` at 0x100472c4, `lw` at 0x100473b8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c0e4, including `lw` at 0x100472f4, `lw` at 0x100473e8.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10047334, `lw` at 0x10047428.
  2 such `lw` accesses load 4 bytes from abs 0x1024ac90, including `lw` at 0x10047338, `lw` at 0x1004742c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c248, including `lw` at 0x1004735c, `lw` at 0x10047450.
  4 such `lw` accesses load 4 bytes from sym(screenheight) +0x0, including `lw` at 0x10047388, `lw` at 0x10047414, `lw` at 0x100474ac.
  The `lw` at 0x100474d4 loads 4 bytes from abs 0x1014c8e8.
  The `lw` at 0x100474d8 loads 4 bytes from sym(term_xn) +0x0.
  The `lw` at 0x10047538 loads 4 bytes from abs 0x1014c8f4.
  The `sw` at 0x1004753c stores 4 bytes to sym(screenchars) +0x0.
  The `jalr` at 0x1004724c calls ioctl with a0=a0 at entry (arg0), a1=0x40087468, a2=sp-64, a3=a3 at entry (arg3).
  The `jalr` at 0x100472c8 calls getenv with a0=0x10092af0, a1=?, a2=?, a3=?, a7=[sym(screenwidth)].
  The `jalr` at 0x100472f8 calls atoi with a0=ret(getenv), a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x10047360 calls tgetnum with a0=0x10092af8, a1=?, a2=?, a3=?.
  The `jalr` at 0x100473bc calls getenv with a0=0x10092b00, a1=?, a2=[sym(screenheight)], a3=a1 at entry (arg1).
  The `jalr` at 0x100473ec calls atoi with a0=ret(getenv), a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x10047454 calls tgetnum with a0=0x10092b08, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10047258 targets 0x10047288, is taken when v0(=ret(ioctl)) != 0, and falls through when v0(=ret(ioctl)) == 0.
  The `bgtz` branch at 0x10047298 targets 0x1004737c, is taken when a7(=[sym(screenwidth)]) > 0 (signed), and falls through when a7(=[sym(screenwidth)]) <= 0 (signed).
  The `bne` branch at 0x100472a4 targets 0x10047314, is taken when t0(=a1) != 0, and falls through when t0(=a1) == 0.
  The `beq` branch at 0x100472e0 targets 0x10047314, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `bgtz` branch at 0x10047324 targets 0x1004737c, is taken when at(=[sym(screenwidth)]) > 0 (signed), and falls through when at(=[sym(screenwidth)]) <= 0 (signed).
  The `beq` branch at 0x1004733c targets 0x1004737c, is taken when v0(=[0x1024ac90]) == 0, and falls through when v0(=[0x1024ac90]) != 0.
  The `bgtz` branch at 0x1004738c targets 0x10047470, is taken when a2(=[sym(screenheight)]) > 0 (signed), and falls through when a2(=[sym(screenheight)]) <= 0 (signed).
  The `bne` branch at 0x10047398 targets 0x10047408, is taken when a3(=a1) != 0, and falls through when a3(=a1) == 0.
  The `beq` branch at 0x100473d4 targets 0x10047408, is taken when a1(=ret(getenv)) == 0, and falls through when a1(=ret(getenv)) != 0.
  The `bgtz` branch at 0x10047418 targets 0x10047470, is taken when at(=[sym(screenheight)]) > 0 (signed), and falls through when at(=[sym(screenheight)]) <= 0 (signed).
  The `beq` branch at 0x10047430 targets 0x10047470, is taken when v0(=[0x1024ac90]) == 0, and falls through when v0(=[0x1024ac90]) != 0.
  The `beq` branch at 0x10047484 targets 0x100474a0, is taken when a2(=[sym(screenwidth)]) >= 0x2 (signed), and falls through when a2(=[sym(screenwidth)]) < 0x2 (signed).
  The `bgtz` branch at 0x100474b0 targets 0x100474cc, is taken when a5(=[sym(screenheight)]) > 0 (signed), and falls through when a5(=[sym(screenheight)]) <= 0 (signed).
  The `bne` branch at 0x100474dc targets 0x10047508, is taken when t0(=[sym(term_xn)]) != 0, and falls through when t0(=[sym(term_xn)]) == 0.
  The return at 0x1004754c has v0 = ?.

- `rl_get_termcap` in `usr/gfx/KONA/bin/kpm` at 0x10047e30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047e30-0x10047f64 (308 bytes).
  It occupies 308 bytes.
  The `lw` at 0x10047e54 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x10047e58 loads 4 bytes from abs 0x1024ac94.
  3 such `lw` accesses load 4 bytes from abs 0x1014bfb8, including `lw` at 0x10047e8c, `lw` at 0x10047ec0, `lw` at 0x10047f00.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10047ea0, `lw` at 0x10047ed4, `lw` at 0x10047f14.
  The `lbu` at 0x10047ea4 loads 1 byte from ?.
  The `lbu` at 0x10047eac loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x10047ee4 loads 4 bytes from abs 0x1014c150.
  The `jalr` at 0x10047ee8 calls strcmp with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bne` branch at 0x10047e5c targets 0x10047e70, is taken when at(=[0x1024ac94]) != 0, and falls through when at(=[0x1024ac94]) == 0.
  The `beq` branch at 0x10047e68 targets 0x10047f4c and is always taken.
  The `beq` branch at 0x10047e7c targets 0x10047f44 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10047eb0 targets 0x10047f28, is taken when a0(?) != a1(=[a0]:1), and falls through when a0(?) == a1(=[a0]:1).
  The `bne` branch at 0x10047ef0 targets 0x10047f28, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x10047f20 targets 0x10047f4c and is always taken.
  The `bne` branch at 0x10047f3c targets 0x10047e84, is taken when a2(?) < 0x15 (unsigned), and falls through when a2(?) >= 0x15 (unsigned).
  The return at 0x10047f5c has v0 = one of 0x0, ?.

- `_rl_output_character_function` in `usr/gfx/KONA/bin/kpm` at 0x10047f70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10047f70-0x100480cc (348 bytes).
  It occupies 348 bytes.
  The `lw` at 0x10047f94 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10047f98 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10047fb0, `lw` at 0x10047fe4, `lw` at 0x10047ffc.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa0c, including `lw` at 0x10047fb4, `lw` at 0x10047fe8, `lw` at 0x10048000.
  The `lw` at 0x10047fc0 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x0, including `lw` at 0x10047fec, `lw` at 0x10048018.
  The `sw` at 0x10048004 stores 4 bytes to [0x1024aa0c] +0x0.
  The `lw` at 0x10048040 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x4, including `lw` at 0x1004806c, `lw` at 0x100480a0.
  The `sw` at 0x10048084 stores 4 bytes to [0x1024aa0c] +0x4.
  The `sb` at 0x100480a4 stores 1 byte to [[0x1024aa0c]+4] -0x1.
  The `jalr` at 0x10047fc4 calls __semputc with a0=a0 at entry (arg0), a1=[0x1024aa0c], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10048044 calls __flsbuf with a0=a0 at entry (arg0), a1=[0x1024aa0c], a2=a2 at entry (arg2), a3=[[0x1024aa0c]], a4=[[0x1024aa0c]]-1, a5=[0x1024aa0c].
  The `beq` branch at 0x10047f9c targets 0x10047fdc, is taken when at(=[sym(__us_rsthread_stdio)]) == 0, and falls through when at(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10047fd4 targets 0x100480b4 and is always taken.
  The `bgez` branch at 0x1004801c targets 0x1004805c, is taken when a3(=[[0x1024aa0c]]) >= 0 (signed), and falls through when a3(=[[0x1024aa0c]]) < 0 (signed).
  The `beq` branch at 0x10048054 targets 0x100480ac and is always taken.
  The return at 0x100480c4 has v0 = one of ret(__semputc), ?.

- `_rl_output_some_chars` in `usr/gfx/KONA/bin/kpm` at 0x100480d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100480d0-0x10048134 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x10048104 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x10048108 loads 4 bytes from abs 0x1024aa0c.
  The `lw` at 0x10048114 loads 4 bytes from abs 0x1014c180.
  The `jalr` at 0x10048118 calls fwrite with a0=a0 at entry (arg0), a1=0x1, a2=a1 at entry (arg1), a3=[0x1024aa0c], a4=0x10bbf0.
  The return at 0x1004812c has v0 = ret(fwrite).

- `backspace` in `usr/gfx/KONA/bin/kpm` at 0x10048140 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048140-0x1004835c (540 bytes).
  It occupies 540 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c91c, including `lw` at 0x10048164, `lw` at 0x10048194.
  2 such `lw` accesses load 4 bytes from sym(term_backspace) +0x0, including `lw` at 0x10048168, `lw` at 0x10048198.
  The `lw` at 0x100481a8 loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x100481b4 loads 4 bytes from abs 0x1014c258.
  The `lw` at 0x10048208 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x1004820c loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10048224, `lw` at 0x10048258, `lw` at 0x10048270.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa0c, including `lw` at 0x10048228, `lw` at 0x1004825c, `lw` at 0x10048274.
  The `lw` at 0x10048234 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x0, including `lw` at 0x10048260, `lw` at 0x1004828c.
  The `sw` at 0x10048278 stores 4 bytes to [0x1024aa0c] +0x0.
  The `lw` at 0x100482b4 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x4, including `lw` at 0x100482e0, `lw` at 0x10048310.
  The `sw` at 0x100482f8 stores 4 bytes to [0x1024aa0c] +0x4.
  The `sb` at 0x10048314 stores 1 byte to [[0x1024aa0c]+4] -0x1.
  The `jalr` at 0x100481b8 calls tputs with a0=[sym(term_backspace)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `jalr` at 0x10048238 calls __semputc with a0=0x8, a1=[0x1024aa0c], a2=?, a3=?, a6=[sym(__us_rsthread_stdio)].
  The `jalr` at 0x100482b8 calls __flsbuf with a0=0x8, a1=[0x1024aa0c], a2=?, a3=[[0x1024aa0c]], a4=[[0x1024aa0c]]-1, a5=[0x1024aa0c], a6=[sym(__us_rsthread_stdio)].
  The `beq` branch at 0x1004816c targets 0x100481e8, is taken when at(=[sym(term_backspace)]) == 0, and falls through when at(=[sym(term_backspace)]) != 0.
  The `beq` branch at 0x10048184 targets 0x100481e0, is taken when v1(=0x0) >= a0 (signed), and falls through when v1(=0x0) < a0 (signed).
  The `bne` branch at 0x100481d8 targets 0x1004818c, is taken when a1(?) < a2(=a0) (signed), and falls through when a1(?) >= a2(=a0) (signed).
  The `beq` branch at 0x100481e0 targets 0x10048344 and is always taken.
  The `beq` branch at 0x100481f8 targets 0x10048344, is taken when a4(=0x0) >= a5(=a0) (signed), and falls through when a4(=0x0) < a5(=a0) (signed).
  The `beq` branch at 0x10048210 targets 0x10048250, is taken when a6(=[sym(__us_rsthread_stdio)]) == 0, and falls through when a6(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10048248 targets 0x10048324 and is always taken.
  The `bgez` branch at 0x10048290 targets 0x100482d0, is taken when a3(=[[0x1024aa0c]]) >= 0 (signed), and falls through when a3(=[[0x1024aa0c]]) < 0 (signed).
  The `beq` branch at 0x100482c8 targets 0x1004831c and is always taken.
  The `bne` branch at 0x1004833c targets 0x10048200, is taken when a7(?) < t0(=a0) (signed), and falls through when a7(?) >= t0(=a0) (signed).
  The return at 0x10048354 has v0 = 0x0.

- `crlf` in `usr/gfx/KONA/bin/kpm` at 0x10048360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048360-0x100484b4 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x10048380 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10048384 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004839c, `lw` at 0x100483d0, `lw` at 0x100483e8.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa0c, including `lw` at 0x100483a0, `lw` at 0x100483d4, `lw` at 0x100483ec.
  The `lw` at 0x100483ac loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x0, including `lw` at 0x100483d8, `lw` at 0x10048404.
  The `sw` at 0x100483f0 stores 4 bytes to [0x1024aa0c] +0x0.
  The `lw` at 0x1004842c loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [0x1024aa0c] +0x4, including `lw` at 0x10048458, `lw` at 0x10048488.
  The `sw` at 0x10048470 stores 4 bytes to [0x1024aa0c] +0x4.
  The `sb` at 0x1004848c stores 1 byte to [[0x1024aa0c]+4] -0x1.
  The `jalr` at 0x100483b0 calls __semputc with a0=0xa, a1=[0x1024aa0c], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10048430 calls __flsbuf with a0=0xa, a1=[0x1024aa0c], a2=a2 at entry (arg2), a3=[[0x1024aa0c]], a4=[[0x1024aa0c]]-1, a5=[0x1024aa0c].
  The `beq` branch at 0x10048388 targets 0x100483c8, is taken when at(=[sym(__us_rsthread_stdio)]) == 0, and falls through when at(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x100483c0 targets 0x1004849c and is always taken.
  The `bgez` branch at 0x10048408 targets 0x10048448, is taken when a3(=[[0x1024aa0c]]) >= 0 (signed), and falls through when a3(=[[0x1024aa0c]]) < 0 (signed).
  The `beq` branch at 0x10048440 targets 0x10048494 and is always taken.
  The return at 0x100484ac has v0 = 0x0.

- `rl_tty_status` in `usr/gfx/KONA/bin/kpm` at 0x100484c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100484c0-0x1004850c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x100484e8 loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x100484ec calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10048504 has v0 = 0x0.

- `alphabetic` in `usr/gfx/KONA/bin/kpm` at 0x10048510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048510-0x100485e4 (212 bytes).
  It occupies 212 bytes.
  The `lw` at 0x10048534 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10048538 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004854c loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The `lw` at 0x10048574 loads 4 bytes from abs 0x1014c96c.
  The `lw` at 0x10048578 loads 4 bytes from sym(allow_pathname_alphabetic_chars) +0x0.
  The `lw` at 0x1004858c loads 4 bytes from abs 0x1014c7dc.
  The `lw` at 0x10048590 loads 4 bytes from sym(pathname_alphabetic_chars) +0x0.
  The `lw` at 0x100485a0 loads 4 bytes from abs 0x1014c200.
  The `jalr` at 0x100485a4 calls strchr with a0=[sym(pathname_alphabetic_chars)], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10048554 targets 0x1004856c, is taken when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x7) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x7) != 0.
  The `beq` branch at 0x10048564 targets 0x100485cc and is always taken.
  The `beq` branch at 0x1004857c targets 0x100485bc, is taken when a0(=[sym(allow_pathname_alphabetic_chars)]) == 0, and falls through when a0(=[sym(allow_pathname_alphabetic_chars)]) != 0.
  The `beq` branch at 0x100485b4 targets 0x100485cc and is always taken.
  The `beq` branch at 0x100485c4 targets 0x100485cc and is always taken.
  The return at 0x100485dc has v0 = one of 0x1, ?, 0x0.

- `ding` in `usr/gfx/KONA/bin/kpm` at 0x100485f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100485f0-0x10048744 (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x10048610 loads 4 bytes from abs 0x1014c7cc.
  The `lw` at 0x10048614 loads 4 bytes from sym(readline_echoing_p) +0x0.
  The `lw` at 0x10048628 loads 4 bytes from abs 0x1014c7d4.
  The `lw` at 0x1004862c loads 4 bytes from sym(_rl_bell_preference) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c944, including `lw` at 0x10048660, `lw` at 0x10048678.
  2 such `lw` accesses load 4 bytes from sym(visible_bell) +0x0, including `lw` at 0x10048664, `lw` at 0x1004867c.
  The `lw` at 0x1004868c loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x10048698 loads 4 bytes from abs 0x1014c258.
  2 such `lw` accesses load 4 bytes from abs 0x1014c15c, including `lw` at 0x100486b4, `lw` at 0x100486e8.
  The `lw` at 0x100486c4 loads 4 bytes from abs 0x1014bfb4.
  The `lw` at 0x100486d4 loads 4 bytes from abs 0x1014c128.
  The `lw` at 0x100486f8 loads 4 bytes from abs 0x1014c140.
  The `jalr` at 0x1004869c calls tputs with a0=[sym(visible_bell)], a1=0x1, a2=sym(_rl_output_character_function), a3=a3 at entry (arg3).
  The `jalr` at 0x100486d8 calls fprintf with a0=sym(__iob)+32, a1=0x10092b34, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0x100486fc calls fflush with a0=sym(__iob)+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10048618 targets 0x10048720, is taken when at(=[sym(readline_echoing_p)]) == 0, and falls through when at(=[sym(readline_echoing_p)]) != 0.
  The `beq` branch at 0x10048638 targets 0x10048658, is taken when v1(=[sym(_rl_bell_preference)]) == a0(=0x2), and falls through when v1(=[sym(_rl_bell_preference)]) != a0(=0x2).
  The `beq` branch at 0x10048648 targets 0x100486ac, is taken when a0(=[sym(_rl_bell_preference)]) == a1(=0x1), and falls through when a0(=[sym(_rl_bell_preference)]) != a1(=0x1).
  The `beq` branch at 0x10048650 targets 0x1004870c and is always taken.
  The `beq` branch at 0x10048668 targets 0x100486ac, is taken when a2(=[sym(visible_bell)]) == 0, and falls through when a2(=[sym(visible_bell)]) != 0.
  The `beq` branch at 0x100486a4 targets 0x10048714 and is always taken.
  The `beq` branch at 0x10048704 targets 0x10048714 and is always taken.
  The `beq` branch at 0x1004870c targets 0x10048714 and is always taken.
  The `beq` branch at 0x10048718 targets 0x1004872c and is always taken.
  The return at 0x1004873c has v0 = one of -0x1, 0x0.

- `rl_abort` in `usr/gfx/KONA/bin/kpm` at 0x10048750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048750-0x10048854 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0x10048770 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x10048784 loads 4 bytes from abs 0x1014c5ec.
  The `lw` at 0x10048798 loads 4 bytes from abs 0x1014c4f4.
  The `lw` at 0x100487ac loads 4 bytes from abs 0x1014c8d0.
  The `sw` at 0x100487b0 stores 4 bytes to sym(rl_pending_input) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100487bc, `lw` at 0x100487cc, `lw` at 0x100487f8.
  The `sw` at 0x100487c0 stores 4 bytes to abs 0x1024aa58.
  2 such `lw` accesses load 4 bytes from abs 0x1024ac74, including `lw` at 0x100487d0, `lw` at 0x100487fc.
  The `lw` at 0x100487e4 loads 4 bytes from abs 0x1014bfcc.
  The `lw` at 0x10048810 loads 4 bytes from abs 0x1014c8b4.
  The `sw` at 0x10048814 stores 4 bytes to sym(rl_last_func) +0x0.
  The `lw` at 0x10048834 loads 4 bytes from abs 0x1014c25c.
  The `jal` at 0x10048774 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10048788 calls rl_clear_message [0x10051990] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004879c calls rl_init_argument [0x10047100] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100487e8 calls (unnamed) [0x10045d90] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10048838 calls longjmp with a0=0x1024a928, a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x100487d4 targets 0x10048808, is taken when ra(=[0x1024ac74]) == 0, and falls through when ra(=[0x1024ac74]) != 0.
  The `bne` branch at 0x10048800 targets 0x100487dc, is taken when ra(=[0x1024ac74]) != 0, and falls through when ra(=[0x1024ac74]) == 0.
  The return at 0x1004884c has v0 = ret(longjmp).

- `rl_copy_text` in `usr/gfx/KONA/bin/kpm` at 0x10048860 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048860-0x10048938 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x100488cc loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x100488ec loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x100488f0 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x10048904 loads 4 bytes from abs 0x1014c20c.
  The `sb` at 0x1004891c stores 1 byte to ?.
  The `jal` at 0x100488d0 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jalr` at 0x10048908 calls strncpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004888c targets 0x100488ac, is taken when at(=a1) >= v0(=a0) (signed), and falls through when at(=a1) < v0(=a0) (signed).
  The return at 0x10048930 has v0 = ret(xmalloc).

- `rl_extend_line_buffer` in `usr/gfx/KONA/bin/kpm` at 0x10048940 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048940-0x10048a38 (248 bytes).
  It occupies 248 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8e4, including `lw` at 0x10048964, `lw` at 0x10048984, `lw` at 0x10048998.
  4 such `lw` accesses load 4 bytes from sym(rl_line_buffer_len) +0x0, including `lw` at 0x10048968, `lw` at 0x10048988, `lw` at 0x100489bc.
  The `sw` at 0x1004899c stores 4 bytes to sym(rl_line_buffer_len) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x100489a8, `lw` at 0x100489dc, `lw` at 0x10048a0c.
  2 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x100489ac, `lw` at 0x10048a10.
  The `lw` at 0x100489c8 loads 4 bytes from abs 0x1014c6e8.
  The `sw` at 0x100489e0 stores 4 bytes to sym(rl_line_buffer) +0x0.
  The `lw` at 0x10048a1c loads 4 bytes from abs 0x1014bfb0.
  The `sw` at 0x10048a20 stores 4 bytes to abs 0x1024aa28.
  The `jal` at 0x100489cc calls xrealloc [0x100619d0] with a0=[sym(rl_line_buffer)], a1=[sym(rl_line_buffer_len)], a2=sym(rl_line_buffer_len), a3=?.
  The `bne` branch at 0x10048974 targets 0x10048a04, is taken when at(=a0) < v0(=[sym(rl_line_buffer_len)]) (signed), and falls through when at(=a0) >= v0(=[sym(rl_line_buffer_len)]) (signed).
  The `beq` branch at 0x100489fc targets 0x1004897c, is taken when a2(=a0) >= a3(=[sym(rl_line_buffer_len)]) (signed), and falls through when a2(=a0) < a3(=[sym(rl_line_buffer_len)]) (signed).
  The return at 0x10048a30 has v0 = one of [sym(rl_line_buffer_len)], ret(xrealloc).

- `rl_insert_text` in `usr/gfx/KONA/bin/kpm` at 0x10048a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048a40-0x10048d84 (836 bytes).
  It occupies 836 bytes.
  The `lw` at 0x10048a68 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x10048a80 loads 4 bytes from abs 0x1014c8e4.
  The `lw` at 0x10048a84 loads 4 bytes from sym(rl_line_buffer_len) +0x0.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10048a90, `lw` at 0x10048ab4, `lw` at 0x10048ae0.
  5 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10048a94, `lw` at 0x10048ab8, `lw` at 0x10048ae4.
  The `lw` at 0x10048acc loads 4 bytes from abs 0x1014c520.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10048af4, `lw` at 0x10048b60, `lw` at 0x10048b80.
  7 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10048af8, `lw` at 0x10048b64, `lw` at 0x10048b84.
  5 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10048b18, `lw` at 0x10048b30, `lw` at 0x10048b90.
  4 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x10048b1c, `lw` at 0x10048b34, `lw` at 0x10048b94.
  The `lbu` at 0x10048b24 loads 1 byte from ?.
  The `sb` at 0x10048b48 stores 1 byte to ?.
  The `lw` at 0x10048bac loads 4 bytes from abs 0x1014c20c.
  The `lw` at 0x10048bc4 loads 4 bytes from abs 0x1024aa60.
  7 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x10048be8, `lw` at 0x10048c00, `lw` at 0x10048c30.
  7 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x10048bec, `lw` at 0x10048c04, `lw` at 0x10048c34.
  The `lw` at 0x10048c08 loads 4 bytes from [sym(rl_undo_list)] +0x10.
  3 such `lw` accesses load 4 bytes from [sym(rl_undo_list)] +0x8, including `lw` at 0x10048c38, `lw` at 0x10048c54, `lw` at 0x10048c8c.
  The `lw` at 0x10048c68 loads 4 bytes from [sym(rl_undo_list)] +0x4.
  The `sw` at 0x10048ca4 stores 4 bytes to [sym(rl_undo_list)] +0x8.
  The `lw` at 0x10048ce8 loads 4 bytes from abs 0x1014c568.
  The `sw` at 0x10048d18 stores 4 bytes to sym(rl_point) +0x0.
  The `sw` at 0x10048d40 stores 4 bytes to sym(rl_end) +0x0.
  The `sb` at 0x10048d68 stores 1 byte to ([sym(rl_end)] + [0x1024aa28]) +0x0.
  The `jalr` at 0x10048a6c calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10048ad0 calls rl_extend_line_buffer [0x10048940] with a0=([sym(rl_end)] + ret(strlen)), a1=ret(strlen), a2=?, a3=?.
  The `jalr` at 0x10048bb0 calls strncpy with a0=([sym(rl_point)] + [0x1024aa28]), a1=a0 at entry (arg0), a2=ret(strlen), a3=[sym(rl_end)].
  The `jal` at 0x10048cec calls rl_add_undo [0x1004b990] with a0=0x1, a1=[sym(rl_point)], a2=([sym(rl_point)] + ret(strlen)), a3=0x0.
  The `bne` branch at 0x10048aa4 targets 0x10048ad8, is taken when at(=([sym(rl_end)] + ret(strlen))) < v0(=[sym(rl_line_buffer_len)]) (signed), and falls through when at(=([sym(rl_end)] + ret(strlen))) >= v0(=[sym(rl_line_buffer_len)]) (signed).
  The `bne` branch at 0x10048b04 targets 0x10048b78, is taken when a1(=[sym(rl_end)]) < a2(=[sym(rl_point)]) (signed), and falls through when a1(=[sym(rl_end)]) >= a2(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x10048b70 targets 0x10048b0c, is taken when a4(?) >= a5(=[sym(rl_point)]) (signed), and falls through when a4(?) < a5(=[sym(rl_point)]) (signed).
  The `bne` branch at 0x10048bc8 targets 0x10048cf4, is taken when a1(=[0x1024aa60]) != 0, and falls through when a1(=[0x1024aa60]) == 0.
  The `bne` branch at 0x10048bd8 targets 0x10048cb0, is taken when a2(=ret(strlen)) != a3(=0x1), and falls through when a2(=ret(strlen)) == a3(=0x1).
  The `beq` branch at 0x10048bf0 targets 0x10048cb0, is taken when a4(=[sym(rl_undo_list)]) == 0, and falls through when a4(=[sym(rl_undo_list)]) != 0.
  The `bne` branch at 0x10048c10 targets 0x10048cb0, is taken when a5(=[[sym(rl_undo_list)]+16]) != a6(=0x1), and falls through when a5(=[[sym(rl_undo_list)]+16]) == a6(=0x1).
  The `bne` branch at 0x10048c3c targets 0x10048cb0, is taken when a6(=[sym(rl_point)]) != a7(=[[sym(rl_undo_list)]+8]), and falls through when a6(=[sym(rl_point)]) == a7(=[[sym(rl_undo_list)]+8]).
  The `beq` branch at 0x10048c74 targets 0x10048cb0, is taken when a7(?) >= 0x14 (signed), and falls through when a7(?) < 0x14 (signed).
  The `beq` branch at 0x10048ca8 targets 0x10048cf4 and is always taken.
  The return at 0x10048d7c has v0 = ret(strlen).

- `rl_delete_text` in `usr/gfx/KONA/bin/kpm` at 0x10048d90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048d90-0x10048f74 (484 bytes).
  It occupies 484 bytes.
  The `lw` at 0x10048dec loads 4 bytes from abs 0x1014c51c.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10048e20, `lw` at 0x10048e94, `lw` at 0x10048f14.
  4 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10048e24, `lw` at 0x10048e98, `lw` at 0x10048f18.
  4 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10048e44, `lw` at 0x10048e6c, `lw` at 0x10048eb8.
  3 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x10048e48, `lw` at 0x10048e70, `lw` at 0x10048f50.
  The `lbu` at 0x10048e5c loads 1 byte from ?.
  The `sb` at 0x10048e78 stores 1 byte to ?.
  The `lw` at 0x10048ebc loads 4 bytes from abs 0x1024aa60.
  The `lw` at 0x10048ee0 loads 4 bytes from abs 0x1014c568.
  The `lw` at 0x10048f00 loads 4 bytes from abs 0x1014c114.
  The `sw` at 0x10048f30 stores 4 bytes to sym(rl_end) +0x0.
  The `sb` at 0x10048f58 stores 1 byte to ([sym(rl_end)] + [0x1024aa28]) +0x0.
  The `jal` at 0x10048df0 calls rl_copy_text [0x10048860] with a0=?, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x10048ee4 calls rl_add_undo [0x1004b990] with a0=0x0, a1=?, a2=?, a3=ret(rl_copy_text), a5=[0x1024aa60].
  The `jalr` at 0x10048f04 calls free with a0=ret(rl_copy_text), a1=?, a2=?, a3=?, a5=[0x1024aa60].
  The `beq` branch at 0x10048dbc targets 0x10048ddc, is taken when at(=a1) >= v0(=a0) (signed), and falls through when at(=a1) < v0(=a0) (signed).
  The `beq` branch at 0x10048e34 targets 0x10048eb0, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `bne` branch at 0x10048ea8 targets 0x10048e3c, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The `bne` branch at 0x10048ec0 targets 0x10048ef4, is taken when a5(=[0x1024aa60]) != 0, and falls through when a5(=[0x1024aa60]) == 0.
  The `beq` branch at 0x10048eec targets 0x10048f0c and is always taken.
  The return at 0x10048f6c has v0 = ?.

- `rl_forward` in `usr/gfx/KONA/bin/kpm` at 0x10048f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10048f80-0x10049094 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x10048fbc loads 4 bytes from abs 0x1014c530.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10048fe4, `lw` at 0x10049044, `lw` at 0x10049074.
  The `lw` at 0x10048fe8 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10049000 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10049004 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x10049010 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x10049014 loads 4 bytes from sym(rl_editing_mode) +0x0.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10049048, `sw` at 0x10049078.
  The `lw` at 0x10049054 loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x10048fc0 calls rl_backward [0x100490a0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10049058 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=?, a3=([sym(rl_point)] + a0), a6=a0 at entry (arg0).
  The `bgez` branch at 0x10048fa4 targets 0x10048fd0, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x10048fc8 targets 0x1004907c and is always taken.
  The `blez` branch at 0x10048fd4 targets 0x1004907c, is taken when a1(=a0) <= 0 (signed), and falls through when a1(=a0) > 0 (signed).
  The `beq` branch at 0x10049030 targets 0x10049068, is taken when a2(?) >= a3(=([sym(rl_point)] + a0)) (signed), and falls through when a2(?) < a3(=([sym(rl_point)] + a0)) (signed).
  The `beq` branch at 0x10049060 targets 0x1004907c and is always taken.
  The return at 0x1004908c has v0 = 0x0.

- `rl_backward` in `usr/gfx/KONA/bin/kpm` at 0x100490a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100490a0-0x10049188 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x100490dc loads 4 bytes from abs 0x1014c52c.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10049104, `lw` at 0x10049124, `lw` at 0x10049150.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10049108, `lw` at 0x10049154.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10049128, `sw` at 0x1004916c.
  The `lw` at 0x10049134 loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x100490e0 calls rl_forward [0x10048f80] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10049138 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=?, a3=a0 at entry (arg0).
  The `bgez` branch at 0x100490c4 targets 0x100490f0, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x100490e8 targets 0x10049170 and is always taken.
  The `blez` branch at 0x100490f4 targets 0x10049170, is taken when a1(=a0) <= 0 (signed), and falls through when a1(=a0) > 0 (signed).
  The `beq` branch at 0x10049114 targets 0x10049148, is taken when a2(=[sym(rl_point)]) >= a3(=a0) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=a0) (signed).
  The `beq` branch at 0x10049140 targets 0x10049170 and is always taken.
  The return at 0x10049180 has v0 = 0x0.

- `rl_beg_of_line` in `usr/gfx/KONA/bin/kpm` at 0x10049190 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049190-0x100491b8 (40 bytes).
  It occupies 40 bytes.
  The `lw` at 0x100491a4 loads 4 bytes from abs 0x1014c8a4.
  The `sw` at 0x100491a8 stores 4 bytes to sym(rl_point) +0x0.
  The return at 0x100491b0 has v0 = 0x0.

- `rl_end_of_line` in `usr/gfx/KONA/bin/kpm` at 0x100491c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100491c0-0x100491f8 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x100491d4 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100491d8 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x100491e4 loads 4 bytes from abs 0x1014c8a4.
  The `sw` at 0x100491e8 stores 4 bytes to sym(rl_point) +0x0.
  The return at 0x100491f0 has v0 = 0x0.

- `rl_forward_word` in `usr/gfx/KONA/bin/kpm` at 0x10049200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049200-0x10049530 (816 bytes).
  It occupies 816 bytes.
  The `lw` at 0x1004923c loads 4 bytes from abs 0x1014c540.
  17 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10049268, `lw` at 0x1004929c, `lw` at 0x100492ec.
  13 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004926c, `lw` at 0x100492a0, `lw` at 0x100492f0.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10049278, `lw` at 0x10049320, `lw` at 0x100493c0.
  6 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x1004927c, `lw` at 0x10049324, `lw` at 0x100493c4.
  3 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100492ac, `lw` at 0x1004934c, `lw` at 0x10049470.
  3 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x100492b0, `lw` at 0x10049350, `lw` at 0x10049474.
  3 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [0x1024aa28]) +0x0, including `lbu` at 0x100492b8, `lbu` at 0x10049358, `lbu` at 0x1004947c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c510, including `lw` at 0x100492cc, `lw` at 0x1004936c, `lw` at 0x10049490.
  4 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10049304, `sw` at 0x100493a4, `sw` at 0x10049428.
  The `jal` at 0x10049240 calls rl_backward_word [0x10049530] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100492d0 calls alphabetic [0x10048510] with a0=[([sym(rl_point)] + [0x1024aa28])]:1, a1=?, a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `jal` at 0x10049370 calls alphabetic [0x10048510] with a0=[([sym(rl_point)] + [0x1024aa28])]:1, a1=?, a2=?, a3=?.
  The `jal` at 0x10049494 calls alphabetic [0x10048510] with a0=[([sym(rl_point)] + [0x1024aa28])]:1, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x10049224 targets 0x10049254, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004924c targets 0x10049518 and is always taken.
  The `beq` branch at 0x10049258 targets 0x10049510, is taken when a1(=a0) == 0, and falls through when a1(=a0) != 0.
  The `bne` branch at 0x10049280 targets 0x10049294, is taken when a2(=[sym(rl_point)]) != a3(=[sym(rl_end)]), and falls through when a2(=[sym(rl_point)]) == a3(=[sym(rl_end)]).
  The `beq` branch at 0x1004928c targets 0x10049518 and is always taken.
  The `bne` branch at 0x100492dc targets 0x100493d4, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `beq` branch at 0x1004932c targets 0x100493d4, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x1004937c targets 0x100493d4, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `bne` branch at 0x100493cc targets 0x10049334, is taken when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x100493f4 targets 0x10049408, is taken when v1(=[sym(rl_point)]) != a0(=[sym(rl_end)]), and falls through when v1(=[sym(rl_point)]) == a0(=[sym(rl_end)]).
  The `beq` branch at 0x10049400 targets 0x10049518 and is always taken.
  The `beq` branch at 0x10049450 targets 0x100494f8, is taken when a0(=[sym(rl_point)]) >= a1(=[sym(rl_end)]) (signed), and falls through when a0(=[sym(rl_point)]) < a1(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x100494a0 targets 0x100494f8, is taken when v0(=ret(alphabetic)) == 0, and falls through when v0(=ret(alphabetic)) != 0.
  The `bne` branch at 0x100494f0 targets 0x10049458, is taken when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10049508 targets 0x10049260, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x10049528 has v0 = 0x0.

- `rl_backward_word` in `usr/gfx/KONA/bin/kpm` at 0x10049530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049530-0x100497bc (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0x1004956c loads 4 bytes from abs 0x1014c53c.
  14 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10049598, `lw` at 0x100495cc, `lw` at 0x10049610.
  11 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004959c, `lw` at 0x100495d0, `lw` at 0x10049614.
  3 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x100495bc, `lw` at 0x1004964c, `lw` at 0x100496f4.
  3 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x100495c0, `lw` at 0x10049650, `lw` at 0x100496f8.
  3 such `lbu` accesses load 1 byte from ([0x1024aa28] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x100495dc, `lbu` at 0x1004966c, `lbu` at 0x10049714.
  3 such `lw` accesses load 4 bytes from abs 0x1014c510, including `lw` at 0x100495f0, `lw` at 0x10049680, `lw` at 0x10049728.
  3 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10049628, `sw` at 0x100496b8, `sw` at 0x10049768.
  The `jal` at 0x10049570 calls rl_forward_word [0x10049200] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100495f4 calls alphabetic [0x10048510] with a0=[([0x1024aa28] + [sym(rl_point)]-1)]:1, a1=?, a2=[sym(rl_point)], a3=?.
  The `jal` at 0x10049684 calls alphabetic [0x10048510] with a0=[([0x1024aa28] + [sym(rl_point)]-1)]:1, a1=?, a2=?, a3=?.
  The `jal` at 0x1004972c calls alphabetic [0x10048510] with a0=[([0x1024aa28] + [sym(rl_point)]-1)]:1, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x10049554 targets 0x10049584, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004957c targets 0x100497a4 and is always taken.
  The `beq` branch at 0x10049588 targets 0x1004979c, is taken when a1(=a0) == 0, and falls through when a1(=a0) != 0.
  The `bne` branch at 0x100495a0 targets 0x100495b4, is taken when a2(=[sym(rl_point)]) != 0, and falls through when a2(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x100495ac targets 0x100497a4 and is always taken.
  The `bne` branch at 0x10049600 targets 0x100496d4, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `beq` branch at 0x1004963c targets 0x100496d4, is taken when at(=[sym(rl_point)]) == 0, and falls through when at(=[sym(rl_point)]) != 0.
  The `bne` branch at 0x10049690 targets 0x100496d4, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `bne` branch at 0x100496cc targets 0x10049644, is taken when at(=[sym(rl_point)]) != 0, and falls through when at(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x100496e4 targets 0x10049784, is taken when v1(=[sym(rl_point)]) == 0, and falls through when v1(=[sym(rl_point)]) != 0.
  The `bne` branch at 0x10049738 targets 0x10049748, is taken when v0(=ret(alphabetic)) != 0, and falls through when v0(=ret(alphabetic)) == 0.
  The `beq` branch at 0x10049740 targets 0x10049784 and is always taken.
  The `bne` branch at 0x1004977c targets 0x100496ec, is taken when v0(=[sym(rl_point)]) != 0, and falls through when v0(=[sym(rl_point)]) == 0.
  The `bne` branch at 0x10049794 targets 0x10049590, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x100497b4 has v0 = 0x0.

- `rl_refresh_line` in `usr/gfx/KONA/bin/kpm` at 0x100497c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100497c0-0x10049978 (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0x100497e0 loads 4 bytes from abs 0x1014c988.
  The `lw` at 0x100497e4 loads 4 bytes from sym(rl_display_prompt) +0x0.
  The `lw` at 0x100497f0 loads 4 bytes from abs 0x1014c8c0.
  The `lw` at 0x100497f4 loads 4 bytes from sym(rl_prompt) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c98c, including `lw` at 0x10049808, `lw` at 0x1004984c.
  2 such `lw` accesses load 4 bytes from sym(_rl_last_c_pos) +0x0, including `lw` at 0x1004980c, `lw` at 0x10049850.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8ec, including `lw` at 0x10049818, `lw` at 0x1004985c, `lw` at 0x10049884.
  3 such `lw` accesses load 4 bytes from sym(screenwidth) +0x0, including `lw` at 0x1004981c, `lw` at 0x10049860, `lw` at 0x10049888.
  The `lw` at 0x1004982c loads 4 bytes from abs 0x1014c8c4.
  The `lw` at 0x10049830 loads 4 bytes from sym(rl_visible_prompt_length) +0x0.
  The `lw` at 0x100498b8 loads 4 bytes from abs 0x1014c5e0.
  The `lw` at 0x100498d0 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x100498d4 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x100498e0 loads 4 bytes from abs 0x1014c5dc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c910, including `lw` at 0x100498f4, `lw` at 0x1004990c.
  2 such `lw` accesses load 4 bytes from sym(term_clreol) +0x0, including `lw` at 0x100498f8, `lw` at 0x10049910.
  The `lw` at 0x10049920 loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x1004992c loads 4 bytes from abs 0x1014c258.
  The `lw` at 0x10049940 loads 4 bytes from abs 0x1014c5d8.
  The `lw` at 0x10049958 loads 4 bytes from abs 0x1014c984.
  The `sw` at 0x1004995c stores 4 bytes to sym(rl_display_fixed) +0x0.
  The `jal` at 0x100498bc calls _rl_move_vert [0x10051200] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100498e4 calls _rl_move_cursor_relative [0x10050e90] with a0=0x0, a1=[0x1024aa28], a2=?, a3=?.
  The `jalr` at 0x10049930 calls tputs with a0=[sym(term_clreol)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `jal` at 0x10049944 calls rl_forced_update_display [0x10050db0] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100497f8 targets 0x10049844, is taken when at(=[sym(rl_display_prompt)]) != v0(=[sym(rl_prompt)]), and falls through when at(=[sym(rl_display_prompt)]) == v0(=[sym(rl_prompt)]).
  The `beq` branch at 0x1004983c targets 0x1004986c and is always taken.
  The `blez` branch at 0x10049870 targets 0x100498a8, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x100498a0 targets 0x100498ac and is always taken.
  The `beq` branch at 0x100498fc targets 0x10049938, is taken when a2(=[sym(term_clreol)]) == 0, and falls through when a2(=[sym(term_clreol)]) != 0.
  The return at 0x10049970 has v0 = 0x0.

- `rl_clear_screen` in `usr/gfx/KONA/bin/kpm` at 0x10049980 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049980-0x10049a88 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x100499a8 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x100499ac loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x100499c0 loads 4 bytes from abs 0x1014c544.
  2 such `lw` accesses load 4 bytes from abs 0x1014c918, including `lw` at 0x100499e0, `lw` at 0x100499f8.
  2 such `lw` accesses load 4 bytes from sym(term_clrpag) +0x0, including `lw` at 0x100499e4, `lw` at 0x100499fc.
  The `lw` at 0x10049a0c loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x10049a18 loads 4 bytes from abs 0x1014c258.
  The `lw` at 0x10049a34 loads 4 bytes from abs 0x1014c50c.
  The `lw` at 0x10049a48 loads 4 bytes from abs 0x1014c5d8.
  The `lw` at 0x10049a60 loads 4 bytes from abs 0x1014c984.
  The `sw` at 0x10049a64 stores 4 bytes to sym(rl_display_fixed) +0x0.
  The `jal` at 0x100499c4 calls rl_refresh_line [0x100497c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10049a1c calls tputs with a0=[sym(term_clrpag)], a1=0x1, a2=sym(_rl_output_character_function), a3=a3 at entry (arg3).
  The `jal` at 0x10049a38 calls crlf [0x10048360] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10049a4c calls rl_forced_update_display [0x10050db0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100499b0 targets 0x100499d8, is taken when at(=[sym(rl_explicit_arg)]) == 0, and falls through when at(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x100499d0 targets 0x10049a70 and is always taken.
  The `beq` branch at 0x100499e8 targets 0x10049a2c, is taken when ra(=[sym(term_clrpag)]) == 0, and falls through when ra(=[sym(term_clrpag)]) != 0.
  The `beq` branch at 0x10049a24 targets 0x10049a40 and is always taken.
  The return at 0x10049a80 has v0 = 0x0.

- `rl_arrow_keys` in `usr/gfx/KONA/bin/kpm` at 0x10049a90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049a90-0x10049c2c (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0x10049ab8 loads 4 bytes from abs 0x1014c4dc.
  The `lw` at 0x10049ad4 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10049ad8 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10049aec loads 4 bytes from ([sym(__libc_attr)] + (ret(rl_read_key) << 0x2)) +0x4.
  The `lw` at 0x10049b08 loads 4 bytes from abs 0x1014c260.
  The `lw` at 0x10049b84 loads 4 bytes from abs 0x1014c59c.
  The `lw` at 0x10049ba4 loads 4 bytes from abs 0x1014c598.
  The `lw` at 0x10049bc4 loads 4 bytes from abs 0x1014c52c.
  The `lw` at 0x10049be4 loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x10049c00 loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x10049abc calls rl_read_key [0x10045470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10049b0c calls toupper with a0=ret(rl_read_key), a1=?, a2=?, a3=?.
  The `jal` at 0x10049b88 calls rl_get_previous_history [0x1004c8f0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10049ba8 calls rl_get_next_history [0x1004c6b0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10049bc8 calls rl_forward [0x10048f80] with a0=a0 at entry (arg0), a1=?, a2=0x43, a3=?.
  The `jal` at 0x10049be8 calls rl_backward [0x100490a0] with a0=a0 at entry (arg0), a1=?, a2=0x43, a3=?, a4=0x44.
  The `jal` at 0x10049c04 calls ding [0x100485f0] with a0=0x42, a1=?, a2=0x43, a3=?, a4=0x44.
  The `beq` branch at 0x10049af4 targets 0x10049b24, is taken when (at(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x2) == 0, and falls through when (at(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x10049b1c targets 0x10049b2c and is always taken.
  The `beq` branch at 0x10049b38 targets 0x10049b78, is taken when v0(?) == v1(=0x41), and falls through when v0(?) != v1(=0x41).
  The `beq` branch at 0x10049b48 targets 0x10049b98, is taken when v1(?) == a0(=0x42), and falls through when v1(?) != a0(=0x42).
  The `beq` branch at 0x10049b58 targets 0x10049bb8, is taken when a1(?) == a2(=0x43), and falls through when a1(?) != a2(=0x43).
  The `beq` branch at 0x10049b68 targets 0x10049bd8, is taken when a3(?) == a4(=0x44), and falls through when a3(?) != a4(=0x44).
  The `beq` branch at 0x10049b70 targets 0x10049bf8 and is always taken.
  The `beq` branch at 0x10049b90 targets 0x10049c14 and is always taken.
  The `beq` branch at 0x10049bb0 targets 0x10049c14 and is always taken.
  The `beq` branch at 0x10049bd0 targets 0x10049c14 and is always taken.
  The `beq` branch at 0x10049bf0 targets 0x10049c14 and is always taken.
  The `beq` branch at 0x10049c0c targets 0x10049c14 and is always taken.
  The return at 0x10049c24 has v0 = 0x0.

- `rl_insert` in `usr/gfx/KONA/bin/kpm` at 0x10049c30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10049c30-0x1004a094 (1124 bytes).
  It occupies 1124 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x10049c98, `lw` at 0x10049e70.
  6 such `sb` accesses store 1 byte to ?, including `sb` at 0x10049cd4, `sb` at 0x10049d04, `sb` at 0x10049d78.
  4 such `lw` accesses load 4 bytes from abs 0x1014c524, including `lw` at 0x10049d14, `lw` at 0x10049df0, `lw` at 0x1004a024.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x10049d2c, `lw` at 0x1004a03c.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x10049e2c, `lw` at 0x10049e3c.
  The `lw` at 0x10049e30 loads 4 bytes from abs 0x1024aa68.
  The `lw` at 0x10049e40 loads 4 bytes from abs 0x1024aa6c.
  The `lw` at 0x10049e5c loads 4 bytes from abs 0x1014bfb8.
  The `lw` at 0x10049e60 loads 4 bytes from abs 0x10148f70.
  The `sb` at 0x10049ea4 stores 1 byte to ret(xmalloc) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4d0, including `lw` at 0x10049eb4, `lw` at 0x10049f64.
  4 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x10049ee0, `lw` at 0x10049f08, `lw` at 0x10049f90.
  4 such `lw` accesses load 4 bytes from sym(_rl_keymap) +0x0, including `lw` at 0x10049ee4, `lw` at 0x10049f0c, `lw` at 0x10049f94.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10049ef4, `lbu` at 0x10049fa4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10049f1c, `lw` at 0x10049fcc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c548, including `lw` at 0x10049f28, `lw` at 0x10049fd8.
  The `lw` at 0x10049ffc loads 4 bytes from abs 0x1014c4d4.
  The `jal` at 0x10049c9c calls xmalloc [0x10061950] with a0=a0+1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10049d18 calls rl_insert_text [0x10048a40] with a0=ret(xmalloc), a1=?, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10049d30 calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jal` at 0x10049df4 calls rl_insert_text [0x10048a40] with a0=sp-1112, a1=?, a2=?, a3=?.
  The `jal` at 0x10049e74 calls xmalloc [0x10061950] with a0=[0x10148f70]+1, a1=a1 at entry (arg1), a2=[0x1024aa68], a3=[0x1024aa6c].
  The `jal` at 0x10049eb8 calls rl_get_char [0x10044ff0] with a0=sp-76, a1=?, a2=?, a3=?.
  The `jal` at 0x10049f68 calls rl_get_char [0x10044ff0] with a0=sp-76, a1=?, a2=?, a3=sym(rl_insert).
  The `jal` at 0x1004a000 calls rl_unget_char [0x100450f0] with a0=?, a1=?, a2=?, a3=ret(rl_get_char).
  The `jal` at 0x1004a028 calls rl_insert_text [0x10048a40] with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004a040 calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jal` at 0x1004a06c calls rl_insert_text [0x10048a40] with a0=sp-68, a1=a1 at entry (arg1), a2=[0x1024aa68], a3=[0x1024aa6c].
  The `bgtz` branch at 0x10049c54 targets 0x10049c68, is taken when at(=a0) > 0 (signed), and falls through when at(=a0) <= 0 (signed).
  The `beq` branch at 0x10049c60 targets 0x1004a07c and is always taken.
  The `bne` branch at 0x10049c70 targets 0x10049d44, is taken when v1(=a0) < 0x2 (signed), and falls through when v1(=a0) >= 0x2 (signed).
  The `beq` branch at 0x10049c80 targets 0x10049d44, is taken when a0 >= 0x400 (signed), and falls through when a0 < 0x400 (signed).
  The `beq` branch at 0x10049cbc targets 0x10049cf8, is taken when a1(=0x0) >= a2(=a0) (signed), and falls through when a1(=0x0) < a2(=a0) (signed).
  The `bne` branch at 0x10049cf0 targets 0x10049cc4, is taken when a3(?) < a4(=a0) (signed), and falls through when a3(?) >= a4(=a0) (signed).
  The `beq` branch at 0x10049d3c targets 0x1004a07c and is always taken.
  The `bne` branch at 0x10049d4c targets 0x10049e24, is taken when ra(=a0) < 0x401 (signed), and falls through when ra(=a0) >= 0x401 (signed).
  The `beq` branch at 0x10049d60 targets 0x10049d98 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10049d90 targets 0x10049d68, is taken when v0(?) < 0x400 (signed), and falls through when v0(?) >= 0x400 (signed).
  The `beq` branch at 0x10049d9c targets 0x10049e18, is taken when a3(=a0) == 0, and falls through when a3(=a0) != 0.
  The `bne` branch at 0x10049dac targets 0x10049dc4, is taken when a4(?) < 0x401 (signed), and falls through when a4(?) >= 0x401 (signed).
  The `beq` branch at 0x10049dbc targets 0x10049dcc and is always taken.
  The `bne` branch at 0x10049e10 targets 0x10049da4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x10049e1c targets 0x1004a07c and is always taken.
  The `beq` branch at 0x10049e44 targets 0x1004a050, is taken when a2(=[0x1024aa68]) == a3(=[0x1024aa6c]), and falls through when a2(=[0x1024aa68]) != a3(=[0x1024aa6c]).
  The `beq` branch at 0x10049ed0 targets 0x10049fe4, is taken when a0(=ret(rl_get_char)) == 0, and falls through when a0(=ret(rl_get_char)) != 0.
  The `bne` branch at 0x10049ef8 targets 0x10049fe4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x10049f2c targets 0x10049fe4, is taken when a2(?) != a3(=sym(rl_insert)), and falls through when a2(?) == a3(=sym(rl_insert)).
  The `beq` branch at 0x10049f80 targets 0x10049fe4, is taken when a0(=ret(rl_get_char)) == 0, and falls through when a0(=ret(rl_get_char)) != 0.
  The `bne` branch at 0x10049fa8 targets 0x10049fe4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x10049fdc targets 0x10049f34, is taken when a2(?) == a3(=sym(rl_insert)), and falls through when a2(?) != a3(=sym(rl_insert)).
  The `beq` branch at 0x10049fe8 targets 0x1004a008, is taken when a3(=ret(rl_get_char)) == 0, and falls through when a3(=ret(rl_get_char)) != 0.
  The `beq` branch at 0x1004a048 targets 0x1004a074 and is always taken.
  The return at 0x1004a08c has v0 = 0x0.

- `rl_quoted_insert` in `usr/gfx/KONA/bin/kpm` at 0x1004a0a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a0a0-0x1004a110 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1004a0c8 loads 4 bytes from abs 0x1014c4dc.
  The `lw` at 0x1004a0ec loads 4 bytes from abs 0x1014c548.
  The `jal` at 0x1004a0cc calls rl_read_key [0x10045470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a0f0 calls rl_insert [0x10049c30] with a0=a0 at entry (arg0), a1=ret(rl_read_key), a2=?, a3=?.
  The return at 0x1004a108 has v0 = ret(rl_insert).

- `rl_tab_insert` in `usr/gfx/KONA/bin/kpm` at 0x1004a110 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a110-0x1004a160 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1004a140 loads 4 bytes from abs 0x1014c548.
  The `jal` at 0x1004a144 calls rl_insert [0x10049c30] with a0=a0 at entry (arg0), a1=0x9, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004a158 has v0 = ret(rl_insert).

- `rl_newline` in `usr/gfx/KONA/bin/kpm` at 0x1004a160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a160-0x1004a200 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x1004a18c loads 4 bytes from abs 0x1014c8b0.
  The `sw` at 0x1004a190 stores 4 bytes to sym(rl_done) +0x0.
  The `lw` at 0x1004a19c loads 4 bytes from abs 0x1014c650.
  The `lw` at 0x1004a1b0 loads 4 bytes from abs 0x1014c618.
  The `lw` at 0x1004a1c4 loads 4 bytes from abs 0x1014c7cc.
  The `lw` at 0x1004a1c8 loads 4 bytes from sym(readline_echoing_p) +0x0.
  The `lw` at 0x1004a1dc loads 4 bytes from abs 0x1014c5f8.
  The `jal` at 0x1004a1a0 calls _rl_vi_done_inserting [0x10057130] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a1b4 calls _rl_vi_reset_last [0x100539e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004a1e0 calls _rl_update_final [0x10052320] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004a1cc targets 0x1004a1e8, is taken when ra(=[sym(readline_echoing_p)]) == 0, and falls through when ra(=[sym(readline_echoing_p)]) != 0.
  The return at 0x1004a1f8 has v0 = 0x0.

- `rl_clean_up_for_exit` in `usr/gfx/KONA/bin/kpm` at 0x1004a200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a200-0x1004a2b4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x1004a220 loads 4 bytes from abs 0x1014c7cc.
  The `lw` at 0x1004a224 loads 4 bytes from sym(readline_echoing_p) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c994, including `lw` at 0x1004a238, `lw` at 0x1004a25c.
  The `lw` at 0x1004a23c loads 4 bytes from sym(_rl_vis_botlin) +0x0.
  The `lw` at 0x1004a248 loads 4 bytes from abs 0x1014c5e0.
  The `sw` at 0x1004a260 stores 4 bytes to sym(_rl_vis_botlin) +0x0.
  The `lw` at 0x1004a26c loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004a270 loads 4 bytes from abs 0x1024aa0c.
  The `lw` at 0x1004a27c loads 4 bytes from abs 0x1014c140.
  The `lw` at 0x1004a290 loads 4 bytes from abs 0x1014c604.
  The `jal` at 0x1004a24c calls _rl_move_vert [0x10051200] with a0=[sym(_rl_vis_botlin)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004a280 calls fflush with a0=[0x1024aa0c], a1=sym(_rl_vis_botlin), a2=?, a3=?.
  The `jal` at 0x1004a294 calls rl_restart_output [0x10053220] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004a228 targets 0x1004a29c, is taken when at(=[sym(readline_echoing_p)]) == 0, and falls through when at(=[sym(readline_echoing_p)]) != 0.
  The return at 0x1004a2ac has v0 = 0x0.

- `rl_do_lowercase_version` in `usr/gfx/KONA/bin/kpm` at 0x1004a2c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a2c0-0x1004a2dc (28 bytes).
  It occupies 28 bytes.
  The return at 0x1004a2d4 has v0 = 0x0.

- `rl_rubout` in `usr/gfx/KONA/bin/kpm` at 0x1004a2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a2e0-0x1004a550 (624 bytes).
  It occupies 624 bytes.
  The `lw` at 0x1004a31c loads 4 bytes from abs 0x1014c55c.
  10 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004a33c, `lw` at 0x1004a3a0, `lw` at 0x1004a3d0.
  9 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004a340, `lw` at 0x1004a3a4, `lw` at 0x1004a3d4.
  The `lw` at 0x1004a354 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004a388 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x1004a38c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x1004a3b8 loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x1004a3e0 loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004a414 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1004a430 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004a434 loads 4 bytes from abs 0x1024aa28.
  The `lbu` at 0x1004a43c loads 1 byte from ([sym(rl_point)] + [0x1024aa28]) +0x0.
  The `lw` at 0x1004a470 loads 4 bytes from abs 0x1014c528.
  The `lw` at 0x1004a494 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004a498 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x1004a4ac loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004a4b0 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004a4c4 loads 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_point)] + [0x1024aa28])]:1 << 0x2)) +0x4.
  The `lw` at 0x1004a4dc loads 4 bytes from abs 0x1014c98c.
  The `lw` at 0x1004a4e0 loads 4 bytes from sym(_rl_last_c_pos) +0x0.
  The `lw` at 0x1004a508 loads 4 bytes from abs 0x1014c5e4.
  The `lw` at 0x1004a524 loads 4 bytes from abs 0x1014c5f4.
  The `jal` at 0x1004a320 calls rl_delete [0x1004a550] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a358 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=[sym(rl_point)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a3bc calls rl_backward [0x100490a0] with a0=a0 at entry (arg0), a1=[sym(rl_point)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a3e4 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004a474 calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)]+1, a2=[0x1024aa28], a3=sym(rl_point).
  The `jal` at 0x1004a50c calls rl_character_len [0x10051790] with a0=[([sym(rl_point)] + [0x1024aa28])]:1, a1=[sym(rl_point)], a2=?, a3=[sym(rl_point)], a5=[sym(_rl_last_c_pos)].
  The `jal` at 0x1004a528 calls _rl_erase_at_end_of_line [0x10051ab0] with a0=ret(rl_character_len), a1=?, a2=?, a3=?.
  The `bgez` branch at 0x1004a304 targets 0x1004a334, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004a32c targets 0x1004a538 and is always taken.
  The `bne` branch at 0x1004a344 targets 0x1004a370, is taken when a1(=[sym(rl_point)]) != 0, and falls through when a1(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x1004a368 targets 0x1004a538 and is always taken.
  The `beq` branch at 0x1004a378 targets 0x1004a398, is taken when at(=a0) >= 0x2 (signed), and falls through when at(=a0) < 0x2 (signed).
  The `beq` branch at 0x1004a390 targets 0x1004a3f4, is taken when v0(=[sym(rl_explicit_arg)]) == 0, and falls through when v0(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x1004a3ec targets 0x1004a530 and is always taken.
  The `bne` branch at 0x1004a49c targets 0x1004a530, is taken when a3(=[sym(rl_point)]) != a4(=[sym(rl_end)]), and falls through when a3(=[sym(rl_point)]) == a4(=[sym(rl_end)]).
  The `beq` branch at 0x1004a4cc targets 0x1004a530, is taken when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [0x1024aa28])]:1 << 0x2))+4]) & 0xc097) == 0, and falls through when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [0x1024aa28])]:1 << 0x2))+4]) & 0xc097) != 0.
  The `beq` branch at 0x1004a4e4 targets 0x1004a530, is taken when a5(=[sym(_rl_last_c_pos)]) == 0, and falls through when a5(=[sym(_rl_last_c_pos)]) != 0.
  The return at 0x1004a548 has v0 = one of -0x1, 0x0.

- `rl_delete` in `usr/gfx/KONA/bin/kpm` at 0x1004a550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a550-0x1004a704 (436 bytes).
  It occupies 436 bytes.
  The `lw` at 0x1004a58c loads 4 bytes from abs 0x1014c558.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004a5b4, `lw` at 0x1004a628, `lw` at 0x1004a658.
  5 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004a5b8, `lw` at 0x1004a62c, `lw` at 0x1004a65c.
  The `lw` at 0x1004a5c4 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004a5c8 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x1004a5dc loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004a610 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x1004a614 loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x1004a640 loads 4 bytes from abs 0x1014c52c.
  The `lw` at 0x1004a668 loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004a684 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1004a6c8 loads 4 bytes from abs 0x1014c528.
  The `jal` at 0x1004a590 calls rl_rubout [0x1004a2e0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004a5e0 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `jal` at 0x1004a644 calls rl_forward [0x10048f80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `jal` at 0x1004a66c calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004a6cc calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)]+1, a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `bgez` branch at 0x1004a574 targets 0x1004a5ac, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004a5a4 targets 0x1004a6ec and is always taken.
  The `bne` branch at 0x1004a5cc targets 0x1004a5f8, is taken when a2(=[sym(rl_point)]) != a3(=[sym(rl_end)]), and falls through when a2(=[sym(rl_point)]) == a3(=[sym(rl_end)]).
  The `beq` branch at 0x1004a5f0 targets 0x1004a6ec and is always taken.
  The `beq` branch at 0x1004a600 targets 0x1004a620, is taken when at(=a0) >= 0x2 (signed), and falls through when at(=a0) < 0x2 (signed).
  The `beq` branch at 0x1004a618 targets 0x1004a69c, is taken when v0(=[sym(rl_explicit_arg)]) == 0, and falls through when v0(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x1004a68c targets 0x1004a6ec and is always taken.
  The `beq` branch at 0x1004a6e4 targets 0x1004a6ec and is always taken.
  The return at 0x1004a6fc has v0 = one of ret(rl_rubout), -0x1, 0x0, ret(rl_delete_text).
  The instructions from 0x1004a694 to 0x1004a698 are not reached by any path from the entry, and their branches are not listed.

- `rl_delete_horizontal_space` in `usr/gfx/KONA/bin/kpm` at 0x1004a710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004a710-0x1004aa48 (824 bytes).
  It occupies 824 bytes.
  21 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004a738, `lw` at 0x1004a74c, `lw` at 0x1004a774.
  18 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004a73c, `lw` at 0x1004a750, `lw` at 0x1004a778.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004a764, `lw` at 0x1004a79c, `lw` at 0x1004a810.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004a768, `lw` at 0x1004a7a0, `lw` at 0x1004a814.
  4 such `lbu` accesses load 1 byte from ([0x1024aa28] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x1004a784, `lbu` at 0x1004a7bc, `lbu` at 0x1004a830.
  3 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004a7ec, `sw` at 0x1004a940, `sw` at 0x1004aa2c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1004a8a4, `lw` at 0x1004a95c.
  2 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x1004a8a8, `lw` at 0x1004a960.
  4 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [0x1024aa28]) +0x0, including `lbu` at 0x1004a8dc, `lbu` at 0x1004a910, `lbu` at 0x1004a994.
  The `lw` at 0x1004aa10 loads 4 bytes from abs 0x1014c528.
  The `jal` at 0x1004aa14 calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?, a7=[sym(rl_end)].
  The `beq` branch at 0x1004a754 targets 0x1004a878, is taken when at(=[sym(rl_point)]) == 0, and falls through when at(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004a78c targets 0x1004a7cc, is taken when a0(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a1(=0x20), and falls through when a0(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a1(=0x20).
  The `bne` branch at 0x1004a7c4 targets 0x1004a878, is taken when a1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a2(=0x9), and falls through when a1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a2(=0x9).
  The `beq` branch at 0x1004a800 targets 0x1004a878, is taken when a2(=[sym(rl_point)]) == 0, and falls through when a2(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004a838 targets 0x1004a7cc, is taken when a4(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a5(=0x20), and falls through when a4(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a5(=0x20).
  The `beq` branch at 0x1004a870 targets 0x1004a7cc, is taken when a5(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a6(=0x9), and falls through when a5(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a6(=0x9).
  The `beq` branch at 0x1004a8b0 targets 0x1004a9d8, is taken when a6(=[sym(rl_point)]) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=[sym(rl_point)]) < a7(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x1004a8e4 targets 0x1004a920, is taken when t0(=[([sym(rl_point)] + [0x1024aa28])]:1) == t1(=0x20), and falls through when t0(=[([sym(rl_point)] + [0x1024aa28])]:1) != t1(=0x20).
  The `bne` branch at 0x1004a918 targets 0x1004a9d8, is taken when t1(=[([sym(rl_point)] + [0x1024aa28])]:1) != t2(=0x9), and falls through when t1(=[([sym(rl_point)] + [0x1024aa28])]:1) == t2(=0x9).
  The `beq` branch at 0x1004a968 targets 0x1004a9d8, is taken when t2(=[sym(rl_point)]) >= t3(=[sym(rl_end)]) (signed), and falls through when t2(=[sym(rl_point)]) < t3(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x1004a99c targets 0x1004a920, is taken when t8(=[([sym(rl_point)] + [0x1024aa28])]:1) == t9(=0x20), and falls through when t8(=[([sym(rl_point)] + [0x1024aa28])]:1) != t9(=0x20).
  The `beq` branch at 0x1004a9d0 targets 0x1004a920, is taken when t9(=[([sym(rl_point)] + [0x1024aa28])]:1) == ra(=0x9), and falls through when t9(=[([sym(rl_point)] + [0x1024aa28])]:1) != ra(=0x9).
  The `beq` branch at 0x1004a9ec targets 0x1004aa30, is taken when ra(=[sym(rl_point)]) == at(=[sym(rl_point)]), and falls through when ra(=[sym(rl_point)]) != at(=[sym(rl_point)]).
  The return at 0x1004aa40 has v0 = 0x0.

- `rl_unix_word_rubout` in `usr/gfx/KONA/bin/kpm` at 0x1004aa50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004aa50-0x1004ad60 (784 bytes).
  It occupies 784 bytes.
  19 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004aa78, `lw` at 0x1004aaac, `lw` at 0x1004aac0.
  17 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004aa7c, `lw` at 0x1004aab0, `lw` at 0x1004aac4.
  The `lw` at 0x1004aa90 loads 4 bytes from abs 0x1014c514.
  8 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004aad8, `lw` at 0x1004ab10, `lw` at 0x1004ab84.
  8 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004aadc, `lw` at 0x1004ab14, `lw` at 0x1004ab88.
  8 such `lbu` accesses load 1 byte from ([0x1024aa28] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x1004aaf8, `lbu` at 0x1004ab30, `lbu` at 0x1004aba4.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004ab60, `sw` at 0x1004ac94.
  The `lw` at 0x1004ad3c loads 4 bytes from abs 0x1014c5a8.
  The `jal` at 0x1004aa94 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004ad40 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?, a4=[sym(rl_point)].
  The `bne` branch at 0x1004aa80 targets 0x1004aaa4, is taken when at(=[sym(rl_point)]) != 0, and falls through when at(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x1004aa9c targets 0x1004ad48 and is always taken.
  The `beq` branch at 0x1004aac8 targets 0x1004abec, is taken when ra(=[sym(rl_point)]) == 0, and falls through when ra(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004ab00 targets 0x1004ab40, is taken when v0(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == v1(=0x20), and falls through when v0(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != v1(=0x20).
  The `bne` branch at 0x1004ab38 targets 0x1004abec, is taken when v1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a0(=0x9), and falls through when v1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a0(=0x9).
  The `beq` branch at 0x1004ab74 targets 0x1004abec, is taken when a0(=[sym(rl_point)]) == 0, and falls through when a0(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004abac targets 0x1004ab40, is taken when a2(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a3(=0x20), and falls through when a2(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a3(=0x20).
  The `beq` branch at 0x1004abe4 targets 0x1004ab40, is taken when a3(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a4(=0x9), and falls through when a3(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a4(=0x9).
  The `beq` branch at 0x1004abfc targets 0x1004ad20, is taken when a4(=[sym(rl_point)]) == 0, and falls through when a4(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004ac34 targets 0x1004ad20, is taken when a5(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a6(=0x20), and falls through when a5(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a6(=0x20).
  The `beq` branch at 0x1004ac6c targets 0x1004ad20, is taken when a6(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == a7(=0x9), and falls through when a6(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != a7(=0x9).
  The `beq` branch at 0x1004aca8 targets 0x1004ad20, is taken when a7(=[sym(rl_point)]) == 0, and falls through when a7(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004ace0 targets 0x1004ad20, is taken when t1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == t2(=0x20), and falls through when t1(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != t2(=0x20).
  The `bne` branch at 0x1004ad18 targets 0x1004ac74, is taken when t2(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) != t3(=0x9), and falls through when t2(=[([0x1024aa28] + [sym(rl_point)]-1)]:1) == t3(=0x9).
  The return at 0x1004ad58 has v0 = 0x0.

- `rl_unix_line_discard` in `usr/gfx/KONA/bin/kpm` at 0x1004ad60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ad60-0x1004ae04 (164 bytes).
  It occupies 164 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004ad88, `lw` at 0x1004adbc, `lw` at 0x1004ade4.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004ad8c, `lw` at 0x1004adc0.
  The `lw` at 0x1004ada0 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004add0 loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004ade8 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1004ada4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004add4 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1004ad90 targets 0x1004adb4, is taken when at(=[sym(rl_point)]) != 0, and falls through when at(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x1004adac targets 0x1004adec and is always taken.
  The return at 0x1004adfc has v0 = 0x0.

- `rl_upcase_word` in `usr/gfx/KONA/bin/kpm` at 0x1004ae10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ae10-0x1004ae60 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1004ae40 loads 4 bytes from abs 0x1014bff0.
  The `jal` at 0x1004ae44 calls (unnamed) [0x1004af00] with a0=a0 at entry (arg0), a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004ae58 has v0 = ret(0x1004af00).

- `rl_downcase_word` in `usr/gfx/KONA/bin/kpm` at 0x1004ae60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ae60-0x1004aeb0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1004ae90 loads 4 bytes from abs 0x1014bff0.
  The `jal` at 0x1004ae94 calls (unnamed) [0x1004af00] with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004aea8 has v0 = ret(0x1004af00).

- `rl_capitalize_word` in `usr/gfx/KONA/bin/kpm` at 0x1004aeb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004aeb0-0x1004af00 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1004aee0 loads 4 bytes from abs 0x1014bff0.
  The `jal` at 0x1004aee4 calls (unnamed) [0x1004af00] with a0=a0 at entry (arg0), a1=0x3, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004aef8 has v0 = ret(0x1004af00).

- `rl_transpose_words` in `usr/gfx/KONA/bin/kpm` at 0x1004b450 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004b450-0x1004b70c (700 bytes).
  It occupies 700 bytes.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004b478, `lw` at 0x1004b4bc, `lw` at 0x1004b4e8.
  5 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004b47c, `lw` at 0x1004b4c0, `lw` at 0x1004b4ec.
  2 such `lw` accesses load 4 bytes from abs 0x1014c53c, including `lw` at 0x1004b4a8, `lw` at 0x1004b52c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c540, including `lw` at 0x1004b4d4, `lw` at 0x1004b500.
  The `lw` at 0x1004b578 loads 4 bytes from abs 0x1014c514.
  4 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004b594, `sw` at 0x1004b614, `sw` at 0x1004b65c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c51c, including `lw` at 0x1004b5b8, `lw` at 0x1004b5dc.
  The `lw` at 0x1004b5f8 loads 4 bytes from abs 0x1014c574.
  2 such `lw` accesses load 4 bytes from abs 0x1014c528, including `lw` at 0x1004b628, `lw` at 0x1004b670.
  2 such `lw` accesses load 4 bytes from abs 0x1014c524, including `lw` at 0x1004b640, `lw` at 0x1004b688.
  The `lw` at 0x1004b6b0 loads 4 bytes from abs 0x1014c578.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004b6c8, `lw` at 0x1004b6e0.
  The `jal` at 0x1004b4ac calls rl_forward_word [0x10049200] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004b4d8 calls rl_backward_word [0x10049530] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b504 calls rl_backward_word [0x10049530] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1004b530 calls rl_forward_word [0x10049200] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b57c calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b5bc calls rl_copy_text [0x10048860] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004b5e0 calls rl_copy_text [0x10048860] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004b5fc calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004b62c calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004b644 calls rl_insert_text [0x10048a40] with a0=ret(rl_copy_text), a1=?, a2=?, a3=?.
  The `jal` at 0x1004b674 calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004b68c calls rl_insert_text [0x10048a40] with a0=ret(rl_copy_text), a1=?, a2=?, a3=?.
  The `jal` at 0x1004b6b4 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004b6cc calls free with a0=ret(rl_copy_text), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004b6e4 calls free with a0=ret(rl_copy_text), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004b488 targets 0x1004b49c, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1004b494 targets 0x1004b6f4 and is always taken.
  The `beq` branch at 0x1004b554 targets 0x1004b570, is taken when at(=[sym(rl_point)]) == v0(=[sym(rl_point)]), and falls through when at(=[sym(rl_point)]) != v0(=[sym(rl_point)]).
  The `beq` branch at 0x1004b568 targets 0x1004b5a8, is taken when a0(=[sym(rl_point)]) >= a1(=[sym(rl_point)]) (signed), and falls through when a0(=[sym(rl_point)]) < a1(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x1004b5a0 targets 0x1004b6f4 and is always taken.
  The return at 0x1004b704 has v0 = one of -0x1, 0x0.

- `rl_transpose_chars` in `usr/gfx/KONA/bin/kpm` at 0x1004b710 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004b710-0x1004b984 (628 bytes).
  It occupies 628 bytes.
  15 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004b750, `lw` at 0x1004b7bc, `lw` at 0x1004b7e4.
  10 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004b754, `lw` at 0x1004b7c0, `lw` at 0x1004b7e8.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1004b768, `lw` at 0x1004b7cc, `lw` at 0x1004b8d4.
  4 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x1004b76c, `lw` at 0x1004b7d0, `lw` at 0x1004b8d8.
  The `lw` at 0x1004b784 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004b7a8 loads 4 bytes from abs 0x1014c574.
  5 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004b7fc, `sw` at 0x1004b828, `sw` at 0x1004b8b8.
  The `lw` at 0x1004b844 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004b848 loads 4 bytes from abs 0x1024aa28.
  The `lbu` at 0x1004b850 loads 1 byte from ([sym(rl_point)] + [0x1024aa28]) +0x0.
  The `lw` at 0x1004b888 loads 4 bytes from abs 0x1014c528.
  The `lw` at 0x1004b944 loads 4 bytes from abs 0x1014c524.
  The `lw` at 0x1004b958 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x1004b788 calls ding [0x100485f0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004b7ac calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004b88c calls rl_delete_text [0x10048d90] with a0=[sym(rl_point)], a1=[sym(rl_point)]+1, a2=[0x1024aa28], a3=sym(rl_point).
  The `jal` at 0x1004b948 calls rl_insert_text [0x10048a40] with a0=sp-48, a1=?, a2=?, a3=?, a4=[sym(rl_point)].
  The `jal` at 0x1004b95c calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004b734 targets 0x1004b748, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1004b740 targets 0x1004b96c and is always taken.
  The `beq` branch at 0x1004b758 targets 0x1004b77c, is taken when v1(=[sym(rl_point)]) == 0, and falls through when v1(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x1004b774 targets 0x1004b7a0, is taken when a0(=[sym(rl_end)]) >= 0x2 (signed), and falls through when a0(=[sym(rl_end)]) < 0x2 (signed).
  The `beq` branch at 0x1004b798 targets 0x1004b96c and is always taken.
  The `bne` branch at 0x1004b7d4 targets 0x1004b808, is taken when ra(=[sym(rl_point)]) != at(=[sym(rl_end)]), and falls through when ra(=[sym(rl_point)]) == at(=[sym(rl_end)]).
  The `beq` branch at 0x1004b8e0 targets 0x1004b910, is taken when a3(=[sym(rl_end)]) >= a4(=[sym(rl_point)]) (signed), and falls through when a3(=[sym(rl_end)]) < a4(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x1004b908 targets 0x1004b938 and is always taken.
  The `bgez` branch at 0x1004b920 targets 0x1004b938, is taken when a7(=[sym(rl_point)]) >= 0 (signed), and falls through when a7(=[sym(rl_point)]) < 0 (signed).
  The return at 0x1004b97c has v0 = one of -0x1, 0x0.

- `rl_add_undo` in `usr/gfx/KONA/bin/kpm` at 0x1004b990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004b990-0x1004ba44 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x1004b9c4 loads 4 bytes from abs 0x1014c6e4.
  The `sw` at 0x1004b9dc stores 4 bytes to ret(xmalloc) +0x10.
  The `sw` at 0x1004b9e8 stores 4 bytes to ret(xmalloc) +0x4.
  The `sw` at 0x1004b9f4 stores 4 bytes to ret(xmalloc) +0x8.
  The `sw` at 0x1004ba00 stores 4 bytes to ret(xmalloc) +0xc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004ba0c, `lw` at 0x1004ba28.
  The `lw` at 0x1004ba10 loads 4 bytes from sym(rl_undo_list) +0x0.
  The `sw` at 0x1004ba18 stores 4 bytes to ret(xmalloc) +0x0.
  The `sw` at 0x1004ba2c stores 4 bytes to sym(rl_undo_list) +0x0.
  The `jal` at 0x1004b9c8 calls xmalloc [0x10061950] with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004ba3c has v0 = sym(rl_undo_list).

- `free_undo_list` in `usr/gfx/KONA/bin/kpm` at 0x1004ba50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ba50-0x1004bb38 (232 bytes).
  It occupies 232 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004ba70, `lw` at 0x1004ba88, `lw` at 0x1004ba9c.
  4 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x1004ba74, `lw` at 0x1004ba8c, `lw` at 0x1004baa0.
  The `lw` at 0x1004baa4 loads 4 bytes from [sym(rl_undo_list)] +0x0.
  2 such `sw` accesses store 4 bytes to sym(rl_undo_list) +0x0, including `sw` at 0x1004bab4, `sw` at 0x1004bb20.
  The `lw` at 0x1004babc loads 4 bytes from [sym(rl_undo_list)] +0x10.
  The `lw` at 0x1004bacc loads 4 bytes from [sym(rl_undo_list)] +0xc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004bad8, `lw` at 0x1004baf0.
  The `jalr` at 0x1004badc calls free with a0=[[sym(rl_undo_list)]+12], a1=sym(rl_undo_list), a2=?, a3=?.
  The `jalr` at 0x1004baf4 calls free with a0=[sym(rl_undo_list)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004ba78 targets 0x1004bb14, is taken when at(=[sym(rl_undo_list)]) == 0, and falls through when at(=[sym(rl_undo_list)]) != 0.
  The `bne` branch at 0x1004bac0 targets 0x1004bae4, is taken when v1(=[[sym(rl_undo_list)]+16]) != 0, and falls through when v1(=[[sym(rl_undo_list)]+16]) == 0.
  The `bne` branch at 0x1004bb0c targets 0x1004ba80, is taken when ra(=[sym(rl_undo_list)]) != 0, and falls through when ra(=[sym(rl_undo_list)]) == 0.
  The return at 0x1004bb30 has v0 = one of 0x108270, ret(free).

- `rl_do_undo` in `usr/gfx/KONA/bin/kpm` at 0x1004bb40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004bb40-0x1004bdb0 (624 bytes).
  It occupies 624 bytes.
  11 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004bb64, `lw` at 0x1004bb9c, `lw` at 0x1004bbf4.
  10 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x1004bb68, `lw` at 0x1004bba0, `lw` at 0x1004bbf8.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004bb8c, `lw` at 0x1004bd28.
  2 such `sw` accesses store 4 bytes to abs 0x1024aa60, including `sw` at 0x1004bb90, `sw` at 0x1004bd2c.
  The `lw` at 0x1004bba4 loads 4 bytes from [sym(rl_undo_list)] +0x10.
  3 such `lw` accesses load 4 bytes from [sym(rl_undo_list)] +0x4, including `lw` at 0x1004bbfc, `lw` at 0x1004bc78, `lw` at 0x1004bcb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004bc08, `lw` at 0x1004bcc0.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004bc0c, `sw` at 0x1004bcc4.
  2 such `lw` accesses load 4 bytes from [sym(rl_undo_list)] +0xc, including `lw` at 0x1004bc20, `lw` at 0x1004bc48.
  The `lw` at 0x1004bc2c loads 4 bytes from abs 0x1014c524.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004bc54, `lw` at 0x1004bd74.
  The `lw` at 0x1004bc8c loads 4 bytes from [sym(rl_undo_list)] +0x8.
  The `lw` at 0x1004bc98 loads 4 bytes from abs 0x1014c528.
  The `lw` at 0x1004bd0c loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004bd54 loads 4 bytes from [sym(rl_undo_list)] +0x0.
  The `sw` at 0x1004bd64 stores 4 bytes to sym(rl_undo_list) +0x0.
  The `jal` at 0x1004bc30 calls rl_insert_text [0x10048a40] with a0=[[sym(rl_undo_list)]+12], a1=[[sym(rl_undo_list)]+4], a2=sym(rl_point), a3=?.
  The `jalr` at 0x1004bc58 calls free with a0=[[sym(rl_undo_list)]+12], a1=?, a2=?, a3=?.
  The `jal` at 0x1004bc9c calls rl_delete_text [0x10048d90] with a0=[[sym(rl_undo_list)]+4], a1=[[sym(rl_undo_list)]+8], a2=[[sym(rl_undo_list)]+16], a3=0x1.
  The `jal` at 0x1004bd10 calls ding [0x100485f0] with a0=0x1, a1=0x1024a900, a2=[[sym(rl_undo_list)]+16], a3=?, a4=[[sym(rl_undo_list)]+16], a5=0x3, a6=[[sym(rl_undo_list)]+16], a7=0x2.
  The `jalr` at 0x1004bd78 calls free with a0=[sym(rl_undo_list)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004bb6c targets 0x1004bb80, is taken when v0(=[sym(rl_undo_list)]) != 0, and falls through when v0(=[sym(rl_undo_list)]) == 0.
  The `beq` branch at 0x1004bb78 targets 0x1004bd98 and is always taken.
  The `beq` branch at 0x1004bbac targets 0x1004bbec, is taken when v1(=[[sym(rl_undo_list)]+16]) == 0, and falls through when v1(=[[sym(rl_undo_list)]+16]) != 0.
  The `beq` branch at 0x1004bbbc targets 0x1004bc68, is taken when a2(=[[sym(rl_undo_list)]+16]) == a3(=0x1), and falls through when a2(=[[sym(rl_undo_list)]+16]) != a3(=0x1).
  The `beq` branch at 0x1004bbcc targets 0x1004bcd0, is taken when a4(=[[sym(rl_undo_list)]+16]) == a5(=0x3), and falls through when a4(=[[sym(rl_undo_list)]+16]) != a5(=0x3).
  The `beq` branch at 0x1004bbdc targets 0x1004bce4, is taken when a6(=[[sym(rl_undo_list)]+16]) == a7(=0x2), and falls through when a6(=[[sym(rl_undo_list)]+16]) != a7(=0x2).
  The `beq` branch at 0x1004bbe4 targets 0x1004bd20 and is always taken.
  The `beq` branch at 0x1004bc60 targets 0x1004bd20 and is always taken.
  The `beq` branch at 0x1004bcc8 targets 0x1004bd20 and is always taken.
  The `beq` branch at 0x1004bcdc targets 0x1004bd20 and is always taken.
  The `beq` branch at 0x1004bce8 targets 0x1004bd04, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1004bcfc targets 0x1004bd18 and is always taken.
  The `beq` branch at 0x1004bd18 targets 0x1004bd20 and is always taken.
  The `bne` branch at 0x1004bd84 targets 0x1004bb5c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x1004bda8 has v0 = one of 0x0, 0x1.

- `rl_begin_undo_group` in `usr/gfx/KONA/bin/kpm` at 0x1004bdb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004bdb0-0x1004be04 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1004bde0 loads 4 bytes from abs 0x1014c568.
  The `jal` at 0x1004bde4 calls rl_add_undo [0x1004b990] with a0=0x2, a1=0x0, a2=0x0, a3=0x0.
  The return at 0x1004bdfc has v0 = 0x0.

- `rl_end_undo_group` in `usr/gfx/KONA/bin/kpm` at 0x1004be10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004be10-0x1004be64 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1004be40 loads 4 bytes from abs 0x1014c568.
  The `jal` at 0x1004be44 calls rl_add_undo [0x1004b990] with a0=0x3, a1=0x0, a2=0x0, a3=0x0.
  The return at 0x1004be5c has v0 = 0x0.

- `rl_modifying` in `usr/gfx/KONA/bin/kpm` at 0x1004be70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004be70-0x1004bf74 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0x1004bedc loads 4 bytes from abs 0x1014c51c.
  The `lw` at 0x1004bef4 loads 4 bytes from abs 0x1014c574.
  2 such `lw` accesses load 4 bytes from abs 0x1014c568, including `lw` at 0x1004bf18, `lw` at 0x1004bf3c.
  The `lw` at 0x1004bf50 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x1004bee0 calls rl_copy_text [0x10048860] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004bef8 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004bf1c calls rl_add_undo [0x1004b990] with a0=0x0, a1=?, a2=?, a3=ret(rl_copy_text).
  The `jal` at 0x1004bf40 calls rl_add_undo [0x1004b990] with a0=0x1, a1=?, a2=?, a3=0x0.
  The `jal` at 0x1004bf54 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004be9c targets 0x1004bebc, is taken when at(=a1) >= v0(=a0) (signed), and falls through when at(=a1) < v0(=a0) (signed).
  The `beq` branch at 0x1004bec4 targets 0x1004bf5c, is taken when a3(?) == a4(?), and falls through when a3(?) != a4(?).
  The return at 0x1004bf6c has v0 = 0x0.

- `rl_revert_line` in `usr/gfx/KONA/bin/kpm` at 0x1004bf80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004bf80-0x1004c030 (176 bytes).
  It occupies 176 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004bfa8, `lw` at 0x1004bfdc, `lw` at 0x1004c008.
  3 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x1004bfac, `lw` at 0x1004bfe0, `lw` at 0x1004c00c.
  The `lw` at 0x1004bfc0 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004bff4 loads 4 bytes from abs 0x1014c570.
  The `jal` at 0x1004bfc4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004bff8 calls rl_do_undo [0x1004bb40] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004bfb0 targets 0x1004bfd4, is taken when at(=[sym(rl_undo_list)]) != 0, and falls through when at(=[sym(rl_undo_list)]) == 0.
  The `beq` branch at 0x1004bfcc targets 0x1004c018 and is always taken.
  The `beq` branch at 0x1004bfe4 targets 0x1004c018, is taken when ra(=[sym(rl_undo_list)]) == 0, and falls through when ra(=[sym(rl_undo_list)]) != 0.
  The `bne` branch at 0x1004c010 targets 0x1004bfec, is taken when ra(=[sym(rl_undo_list)]) != 0, and falls through when ra(=[sym(rl_undo_list)]) == 0.
  The return at 0x1004c028 has v0 = 0x0.

- `rl_undo_command` in `usr/gfx/KONA/bin/kpm` at 0x1004c030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c030-0x1004c0ec (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x1004c07c loads 4 bytes from abs 0x1014c570.
  The `lw` at 0x1004c0ac loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x1004c080 calls rl_do_undo [0x1004bb40] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c0b0 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `bgez` branch at 0x1004c054 targets 0x1004c068, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004c060 targets 0x1004c0d4 and is always taken.
  The `beq` branch at 0x1004c06c targets 0x1004c0cc, is taken when v1(=a0) == 0, and falls through when v1(=a0) != 0.
  The `beq` branch at 0x1004c088 targets 0x1004c0a4, is taken when v0(=ret(rl_do_undo)) == 0, and falls through when v0(=ret(rl_do_undo)) != 0.
  The `beq` branch at 0x1004c09c targets 0x1004c0c0 and is always taken.
  The `beq` branch at 0x1004c0b8 targets 0x1004c0cc and is always taken.
  The `bne` branch at 0x1004c0c4 targets 0x1004c074, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The return at 0x1004c0e4 has v0 = 0x0.

- `_rl_free_history_entry` in `usr/gfx/KONA/bin/kpm` at 0x1004c170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c170-0x1004c1f8 (136 bytes).
  It occupies 136 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x1004c1a4, `lw` at 0x1004c1b4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004c1c0, `lw` at 0x1004c1d8.
  The `jalr` at 0x1004c1c4 calls free with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004c1dc calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004c190 targets 0x1004c1a0, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1004c198 targets 0x1004c1e4 and is always taken.
  The `beq` branch at 0x1004c1a8 targets 0x1004c1cc, is taken when v1(=[a0]) == 0, and falls through when v1(=[a0]) != 0.
  The return at 0x1004c1f0 has v0 = one of 0x107b50, ret(free).

- `maybe_replace_line` in `usr/gfx/KONA/bin/kpm` at 0x1004c200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c200-0x1004c300 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0x1004c220 loads 4 bytes from abs 0x1014c488.
  2 such `lw` accesses load 4 bytes from abs 0x1014c970, including `lw` at 0x1004c248, `lw` at 0x1004c294.
  2 such `lw` accesses load 4 bytes from sym(rl_undo_list) +0x0, including `lw` at 0x1004c24c, `lw` at 0x1004c298.
  The `lw` at 0x1004c254 loads 4 bytes from ret(current_history) +0x4.
  The `lw` at 0x1004c268 loads 4 bytes from abs 0x1014c478.
  The `lw` at 0x1004c284 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004c288 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x1004c2a4 loads 4 bytes from abs 0x1014c474.
  The `lw` at 0x1004c2b8 loads 4 bytes from ret(replace_history_entry) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004c2c4, `lw` at 0x1004c2dc.
  The `jal` at 0x1004c224 calls current_history [0x1003cc60] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c26c calls where_history [0x1003b5e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c2a8 calls replace_history_entry [0x1003b4a0] with a0=ret(where_history), a1=[0x1024aa28], a2=[sym(rl_undo_list)], a3=?.
  The `jalr` at 0x1004c2c8 calls free with a0=[ret(replace_history_entry)], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c2e0 calls free with a0=ret(replace_history_entry), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004c238 targets 0x1004c2e8, is taken when at(=ret(current_history)) == 0, and falls through when at(=ret(current_history)) != 0.
  The `beq` branch at 0x1004c258 targets 0x1004c2e8, is taken when v0(=[sym(rl_undo_list)]) == v1(=[ret(current_history)+4]), and falls through when v0(=[sym(rl_undo_list)]) != v1(=[ret(current_history)+4]).
  The return at 0x1004c2f8 has v0 = 0x0.

- `maybe_unsave_line` in `usr/gfx/KONA/bin/kpm` at 0x1004c300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c300-0x1004c4a8 (424 bytes).
  It occupies 424 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014c974, including `lw` at 0x1004c320, `lw` at 0x1004c338, `lw` at 0x1004c3b0.
  5 such `lw` accesses load 4 bytes from sym(saved_line_for_history) +0x0, including `lw` at 0x1004c324, `lw` at 0x1004c33c, `lw` at 0x1004c3b4.
  2 such `lw` accesses load 4 bytes from [sym(saved_line_for_history)] +0x0, including `lw` at 0x1004c340, `lw` at 0x1004c3b8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1004c34c, `lw` at 0x1004c440.
  The `lw` at 0x1004c368 loads 4 bytes from abs 0x1014c8e4.
  The `lw` at 0x1004c36c loads 4 bytes from sym(rl_line_buffer_len) +0x0.
  The `lw` at 0x1004c38c loads 4 bytes from abs 0x1014c520.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004c3a0, `lw` at 0x1004c430.
  2 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004c3a4, `lw` at 0x1004c434.
  The `lw` at 0x1004c3c4 loads 4 bytes from abs 0x1014c0f8.
  The `lw` at 0x1004c3e0 loads 4 bytes from [sym(saved_line_for_history)] +0x4.
  The `lw` at 0x1004c3ec loads 4 bytes from abs 0x1014c970.
  The `sw` at 0x1004c3f0 stores 4 bytes to sym(rl_undo_list) +0x0.
  The `lw` at 0x1004c40c loads 4 bytes from abs 0x1014c584.
  The `sw` at 0x1004c424 stores 4 bytes to sym(saved_line_for_history) +0x0.
  The `lw` at 0x1004c45c loads 4 bytes from abs 0x1014c8a4.
  The `sw` at 0x1004c460 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1004c46c loads 4 bytes from abs 0x1014c8ac.
  The `sw` at 0x1004c470 stores 4 bytes to sym(rl_end) +0x0.
  The `lw` at 0x1004c484 loads 4 bytes from abs 0x1014c514.
  The `jalr` at 0x1004c350 calls strlen with a0=[[sym(saved_line_for_history)]], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c390 calls rl_extend_line_buffer [0x10048940] with a0=ret(strlen), a1=?, a2=[sym(rl_line_buffer_len)], a3=?.
  The `jalr` at 0x1004c3c8 calls strcpy with a0=[0x1024aa28], a1=[[sym(saved_line_for_history)]], a2=?, a3=?.
  The `jal` at 0x1004c410 calls _rl_free_history_entry [0x1004c170] with a0=[sym(saved_line_for_history)], a1=[[sym(saved_line_for_history)]+4], a2=sym(rl_undo_list), a3=?.
  The `jalr` at 0x1004c444 calls strlen with a0=[0x1024aa28], a1=sym(saved_line_for_history), a2=?, a3=?.
  The `jal` at 0x1004c488 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004c328 targets 0x1004c47c, is taken when at(=[sym(saved_line_for_history)]) == 0, and falls through when at(=[sym(saved_line_for_history)]) != 0.
  The `bne` branch at 0x1004c378 targets 0x1004c398, is taken when a1(=ret(strlen)) < a2(=[sym(rl_line_buffer_len)]) (signed), and falls through when a1(=ret(strlen)) >= a2(=[sym(rl_line_buffer_len)]) (signed).
  The `beq` branch at 0x1004c474 targets 0x1004c490 and is always taken.
  The return at 0x1004c4a0 has v0 = 0x0.

- `maybe_save_line` in `usr/gfx/KONA/bin/kpm` at 0x1004c4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c4b0-0x1004c5c4 (276 bytes).
  It occupies 276 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c974, including `lw` at 0x1004c4d0, `lw` at 0x1004c504, `lw` at 0x1004c57c.
  3 such `lw` accesses load 4 bytes from sym(saved_line_for_history) +0x0, including `lw` at 0x1004c4d4, `lw` at 0x1004c580, `lw` at 0x1004c5a4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1004c4ec, `lw` at 0x1004c540.
  The `sw` at 0x1004c508 stores 4 bytes to sym(saved_line_for_history) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004c514, `lw` at 0x1004c558.
  2 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004c518, `lw` at 0x1004c55c.
  The `lw` at 0x1004c524 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1004c568 loads 4 bytes from abs 0x1014c0f8.
  The `sw` at 0x1004c584 stores 4 bytes to [sym(saved_line_for_history)] +0x0.
  The `lw` at 0x1004c590 loads 4 bytes from abs 0x1014c970.
  The `lw` at 0x1004c594 loads 4 bytes from sym(rl_undo_list) +0x0.
  The `sw` at 0x1004c5a8 stores 4 bytes to [sym(saved_line_for_history)] +0x4.
  The `jal` at 0x1004c4f0 calls xmalloc [0x10061950] with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004c528 calls strlen with a0=[0x1024aa28], a1=sym(saved_line_for_history), a2=?, a3=?.
  The `jal` at 0x1004c544 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c56c calls strcpy with a0=ret(xmalloc), a1=[0x1024aa28], a2=?, a3=?.
  The `bne` branch at 0x1004c4d8 targets 0x1004c5ac, is taken when at(=[sym(saved_line_for_history)]) != 0, and falls through when at(=[sym(saved_line_for_history)]) == 0.
  The return at 0x1004c5bc has v0 = 0x0.

- `rl_beginning_of_history` in `usr/gfx/KONA/bin/kpm` at 0x1004c5d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c5d0-0x1004c630 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x1004c5f8 loads 4 bytes from abs 0x1014c478.
  The `lw` at 0x1004c610 loads 4 bytes from abs 0x1014c59c.
  The `jal` at 0x1004c5fc calls where_history [0x1003b5e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c614 calls rl_get_previous_history [0x1004c8f0] with a0=ret(where_history)+1, a1=?, a2=?, a3=?.
  The return at 0x1004c628 has v0 = ret(rl_get_previous_history).

- `rl_end_of_history` in `usr/gfx/KONA/bin/kpm` at 0x1004c630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c630-0x1004c6a4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x1004c658 loads 4 bytes from abs 0x1014c588.
  The `lw` at 0x1004c66c loads 4 bytes from abs 0x1014c46c.
  The `lw` at 0x1004c680 loads 4 bytes from abs 0x1014c58c.
  The `jal` at 0x1004c65c calls maybe_replace_line [0x1004c200] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c670 calls using_history [0x1003af60] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c684 calls maybe_unsave_line [0x1004c300] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1004c69c has v0 = 0x0.

- `rl_get_next_history` in `usr/gfx/KONA/bin/kpm` at 0x1004c6b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c6b0-0x1004c8e4 (564 bytes).
  It occupies 564 bytes.
  The `lw` at 0x1004c6f0 loads 4 bytes from abs 0x1014c59c.
  The `lw` at 0x1004c730 loads 4 bytes from abs 0x1014c588.
  The `lw` at 0x1004c750 loads 4 bytes from abs 0x1014c490.
  The `lw` at 0x1004c79c loads 4 bytes from abs 0x1014c58c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1004c7b4, `lw` at 0x1004c820, `lw` at 0x1004c83c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1004c7c0, `lw` at 0x1004c868.
  The `lw` at 0x1004c7dc loads 4 bytes from abs 0x1014c8e4.
  The `lw` at 0x1004c7e0 loads 4 bytes from sym(rl_line_buffer_len) +0x0.
  The `lw` at 0x1004c800 loads 4 bytes from abs 0x1014c520.
  2 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004c814, `lw` at 0x1004c858.
  2 such `lw` accesses load 4 bytes from abs 0x1024aa28, including `lw` at 0x1004c818, `lw` at 0x1004c85c.
  The `lw` at 0x1004c82c loads 4 bytes from abs 0x1014c0f8.
  The `lw` at 0x1004c848 loads 4 bytes from abs 0x1014c970.
  The `sw` at 0x1004c84c stores 4 bytes to sym(rl_undo_list) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004c884, `lw` at 0x1004c8bc.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004c888, `sw` at 0x1004c8c0.
  The `lw` at 0x1004c894 loads 4 bytes from abs 0x1014c8ac.
  The `sw` at 0x1004c898 stores 4 bytes to sym(rl_end) +0x0.
  The `lw` at 0x1004c8a4 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x1004c8a8 loads 4 bytes from sym(rl_editing_mode) +0x0.
  The `jal` at 0x1004c6f4 calls rl_get_previous_history [0x1004c8f0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c734 calls maybe_replace_line [0x1004c200] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jal` at 0x1004c754 calls next_history [0x1003cdc0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c7a0 calls maybe_unsave_line [0x1004c300] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c7c4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c804 calls rl_extend_line_buffer [0x10048940] with a0=ret(strlen), a1=?, a2=[sym(rl_line_buffer_len)], a3=?.
  The `jalr` at 0x1004c830 calls strcpy with a0=[0x1024aa28], a1=?, a2=?, a3=?.
  The `jalr` at 0x1004c86c calls strlen with a0=[0x1024aa28], a1=?, a2=sym(rl_undo_list), a3=?.
  The `bgez` branch at 0x1004c6d8 targets 0x1004c710, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004c708 targets 0x1004c8cc and is always taken.
  The `bne` branch at 0x1004c714 targets 0x1004c728, is taken when a2(=a0) != 0, and falls through when a2(=a0) == 0.
  The `beq` branch at 0x1004c720 targets 0x1004c8cc and is always taken.
  The `beq` branch at 0x1004c740 targets 0x1004c788, is taken when ra(=a0) == 0, and falls through when ra(=a0) != 0.
  The `beq` branch at 0x1004c768 targets 0x1004c788, is taken when ra(=ret(next_history)) == 0, and falls through when ra(=ret(next_history)) != 0.
  The `bne` branch at 0x1004c780 targets 0x1004c748, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x1004c78c targets 0x1004c7b0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1004c7a8 targets 0x1004c8c4 and is always taken.
  The `bne` branch at 0x1004c7ec targets 0x1004c80c, is taken when a1(=ret(strlen)) < a2(=[sym(rl_line_buffer_len)]) (signed), and falls through when a1(=ret(strlen)) >= a2(=[sym(rl_line_buffer_len)]) (signed).
  The `bne` branch at 0x1004c8ac targets 0x1004c8c4, is taken when a2(=[sym(rl_editing_mode)]) != 0, and falls through when a2(=[sym(rl_editing_mode)]) == 0.
  The return at 0x1004c8dc has v0 = one of ret(rl_get_previous_history), 0x0.

- `rl_get_previous_history` in `usr/gfx/KONA/bin/kpm` at 0x1004c8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004c8f0-0x1004cb48 (600 bytes).
  It occupies 600 bytes.
  The `lw` at 0x1004c934 loads 4 bytes from abs 0x1014c598.
  The `lw` at 0x1004c974 loads 4 bytes from abs 0x1014c590.
  The `lw` at 0x1004c988 loads 4 bytes from abs 0x1014c588.
  The `lw` at 0x1004c9a8 loads 4 bytes from abs 0x1014c48c.
  The `lw` at 0x1004ca24 loads 4 bytes from abs 0x1014c514.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1004ca3c, `lw` at 0x1004caa8, `lw` at 0x1004cac4.
  The `lw` at 0x1004ca48 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1004ca64 loads 4 bytes from abs 0x1014c8e4.
  The `lw` at 0x1004ca68 loads 4 bytes from sym(rl_line_buffer_len) +0x0.
  The `lw` at 0x1004ca88 loads 4 bytes from abs 0x1014c520.
  The `lw` at 0x1004ca9c loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004caa0 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x1004cab4 loads 4 bytes from abs 0x1014c0f8.
  The `lw` at 0x1004cad0 loads 4 bytes from abs 0x1014c970.
  The `sw` at 0x1004cad4 stores 4 bytes to sym(rl_undo_list) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004cae8, `lw` at 0x1004cb20.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1004caec, `sw` at 0x1004cb24.
  The `lw` at 0x1004caf8 loads 4 bytes from abs 0x1014c8ac.
  The `sw` at 0x1004cafc stores 4 bytes to sym(rl_end) +0x0.
  The `lw` at 0x1004cb08 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x1004cb0c loads 4 bytes from sym(rl_editing_mode) +0x0.
  The `jal` at 0x1004c938 calls rl_get_next_history [0x1004c6b0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004c978 calls maybe_save_line [0x1004c4b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jal` at 0x1004c98c calls maybe_replace_line [0x1004c200] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004c9ac calls previous_history [0x1003cd10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004ca28 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004ca4c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004ca8c calls rl_extend_line_buffer [0x10048940] with a0=ret(strlen), a1=?, a2=[sym(rl_line_buffer_len)], a3=?.
  The `jalr` at 0x1004cab8 calls strcpy with a0=[0x1024aa28], a1=?, a2=?, a3=?.
  The `bgez` branch at 0x1004c91c targets 0x1004c954, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004c94c targets 0x1004cb30 and is always taken.
  The `bne` branch at 0x1004c958 targets 0x1004c96c, is taken when a2(=a0) != 0, and falls through when a2(=a0) == 0.
  The `beq` branch at 0x1004c964 targets 0x1004cb30 and is always taken.
  The `beq` branch at 0x1004c998 targets 0x1004c9f0, is taken when ra(=a0) == 0, and falls through when ra(=a0) != 0.
  The `bne` branch at 0x1004c9c0 targets 0x1004c9d0, is taken when ra(=ret(previous_history)) != 0, and falls through when ra(=ret(previous_history)) == 0.
  The `beq` branch at 0x1004c9c8 targets 0x1004c9f0 and is always taken.
  The `bne` branch at 0x1004c9e8 targets 0x1004c9a0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x1004c9f4 targets 0x1004ca10, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1004ca00 targets 0x1004ca10, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1004ca14 targets 0x1004ca38, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1004ca30 targets 0x1004cb28 and is always taken.
  The `bne` branch at 0x1004ca74 targets 0x1004ca94, is taken when a1(=ret(strlen)) < a2(=[sym(rl_line_buffer_len)]) (signed), and falls through when a1(=ret(strlen)) >= a2(=[sym(rl_line_buffer_len)]) (signed).
  The `bne` branch at 0x1004cb10 targets 0x1004cb28, is taken when a1(=[sym(rl_editing_mode)]) != 0, and falls through when a1(=[sym(rl_editing_mode)]) == 0.
  The return at 0x1004cb40 has v0 = one of ret(rl_get_next_history), 0x0.

- `rl_execute_next` in `usr/gfx/KONA/bin/kpm` at 0x1004cb50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cb50-0x1004cb88 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x1004cb70 loads 4 bytes from abs 0x1014c8d0.
  The `sw` at 0x1004cb74 stores 4 bytes to sym(rl_pending_input) +0x0.
  The return at 0x1004cb80 has v0 = 0x0.

- `rl_set_mark` in `usr/gfx/KONA/bin/kpm` at 0x1004cb90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cb90-0x1004cc08 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1004cbb0 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004cbb4 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x1004cbe4 loads 4 bytes from abs 0x1014c8a8.
  The `sw` at 0x1004cbe8 stores 4 bytes to sym(rl_mark) +0x0.
  The `beq` branch at 0x1004cbc0 targets 0x1004cbd8, is taken when v0(=[sym(rl_end)]) >= v1(=a0) (signed), and falls through when v0(=[sym(rl_end)]) < v1(=a0) (signed).
  The `beq` branch at 0x1004cbd0 targets 0x1004cbf4 and is always taken.
  The return at 0x1004cc00 has v0 = one of -0x1, 0x0.

- `rl_exchange_mark_and_point` in `usr/gfx/KONA/bin/kpm` at 0x1004cc10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cc10-0x1004cd18 (264 bytes).
  It occupies 264 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x1004cc38, `lw` at 0x1004cc68, `lw` at 0x1004cc78.
  3 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x1004cc3c, `lw` at 0x1004cc7c, `lw` at 0x1004ccd0.
  The `lw` at 0x1004cc48 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004cc4c loads 4 bytes from sym(rl_end) +0x0.
  2 such `sw` accesses store 4 bytes to sym(rl_mark) +0x0, including `sw` at 0x1004cc6c, `sw` at 0x1004ccf4.
  The `lw` at 0x1004cc94 loads 4 bytes from abs 0x1014c514.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004ccb8, `lw` at 0x1004ccdc.
  The `lw` at 0x1004ccbc loads 4 bytes from sym(rl_point) +0x0.
  The `sw` at 0x1004cce0 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1004cc98 calls ding [0x100485f0] with a0=?, a1=?, a2=[sym(rl_mark)], a3=-0x1.
  The `beq` branch at 0x1004cc54 targets 0x1004cc70, is taken when at(=[sym(rl_end)]) >= v0(=[sym(rl_mark)]) (signed), and falls through when at(=[sym(rl_end)]) < v0(=[sym(rl_mark)]) (signed).
  The `bne` branch at 0x1004cc84 targets 0x1004ccb0, is taken when a2(=[sym(rl_mark)]) != a3(=-0x1), and falls through when a2(=[sym(rl_mark)]) == a3(=-0x1).
  The `beq` branch at 0x1004cca8 targets 0x1004cd00 and is always taken.
  The return at 0x1004cd10 has v0 = one of -0x1, 0x0.

- `rl_set_retained_kills` in `usr/gfx/KONA/bin/kpm` at 0x1004cd20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cd20-0x1004cd38 (24 bytes).
  It occupies 24 bytes.
  The return at 0x1004cd30 has v0 = 0x0.

- `rl_kill_text` in `usr/gfx/KONA/bin/kpm` at 0x1004cd40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004cd40-0x1004d238 (1272 bytes).
  It occupies 1272 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014bfb0, including `lw` at 0x1004cd78, `lw` at 0x1004cd8c, `lw` at 0x1004cde8.
  4 such `lw` accesses load 4 bytes from abs 0x1024a900, including `lw` at 0x1004cd7c, `lw` at 0x1004cdec, `lw` at 0x1004d030.
  2 such `sw` accesses store 4 bytes to abs 0x1024a900, including `sw` at 0x1004cd90, `sw` at 0x1004d214.
  The `lw` at 0x1004cdb0 loads 4 bytes from abs 0x1014c51c.
  The `lw` at 0x1004cdd4 loads 4 bytes from abs 0x1014c528.
  12 such `lw` accesses load 4 bytes from abs 0x1014c978, including `lw` at 0x1004ce00, `lw` at 0x1004ce50, `lw` at 0x1004ce68.
  10 such `lw` accesses load 4 bytes from sym(rl_kill_ring) +0x0, including `lw` at 0x1004ce04, `lw` at 0x1004ce6c, `lw` at 0x1004cec0.
  6 such `lw` accesses load 4 bytes from abs 0x1014c980, including `lw` at 0x1004ce20, `lw` at 0x1004ce8c, `lw` at 0x1004cf68.
  2 such `sw` accesses store 4 bytes to sym(rl_kill_ring_length) +0x0, including `sw` at 0x1004ce24, `sw` at 0x1004cf80.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1004ce38, `lw` at 0x1004d0c4.
  2 such `sw` accesses store 4 bytes to sym(rl_kill_ring) +0x0, including `sw` at 0x1004ce54, `sw` at 0x1004cfd4.
  The `sw` at 0x1004ce78 stores 4 bytes to [sym(rl_kill_ring)] +0x0.
  4 such `lw` accesses load 4 bytes from sym(rl_kill_ring_length) +0x0, including `lw` at 0x1004ce90, `lw` at 0x1004cf6c, `lw` at 0x1004cf90.
  The `lw` at 0x1004cea0 loads 4 bytes from abs 0x1014c7e0.
  The `lw` at 0x1004cea4 loads 4 bytes from sym(rl_max_kills) +0x0.
  The `lw` at 0x1004cec4 loads 4 bytes from [sym(rl_kill_ring)] +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004ced0, `lw` at 0x1004d16c, `lw` at 0x1004d184.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1004cf14, `lw` at 0x1004d070.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1004cf34, `sw` at 0x1004d1b0, `sw` at 0x1004d1dc.
  The `lw` at 0x1004cfb8 loads 4 bytes from abs 0x1014c6e8.
  The `sw` at 0x1004d000 stores 4 bytes to ([sym(rl_kill_ring)] + ([sym(rl_kill_ring_length)]-1 << 0x2)) +0x0.
  The `lw` at 0x1004d044 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x1004d048 loads 4 bytes from sym(rl_editing_mode) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1004d084, `lw` at 0x1004d0a0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c0f8, including `lw` at 0x1004d0f8, `lw` at 0x1004d138.
  2 such `lw` accesses load 4 bytes from abs 0x1014c0ec, including `lw` at 0x1004d114, `lw` at 0x1004d154.
  The `lw` at 0x1004d1ec loads 4 bytes from abs 0x1014c97c.
  The `sw` at 0x1004d1f0 stores 4 bytes to sym(rl_kill_index) +0x0.
  The `jal` at 0x1004cdb4 calls rl_copy_text [0x10048860] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004cdd8 calls rl_delete_text [0x10048d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1004ce3c calls xmalloc [0x10061950] with a0=0x8, a1=sym(rl_kill_ring_length), a2=?, a3=?.
  The `jalr` at 0x1004ced4 calls free with a0=[[sym(rl_kill_ring)]], a1=?, a2=?, a3=?, a4=[sym(rl_max_kills)], a5=[sym(rl_kill_ring_length)].
  The `jal` at 0x1004cfbc calls xrealloc [0x100619d0] with a0=[sym(rl_kill_ring)], a1=([sym(rl_kill_ring_length)] << 0x2), a2=[sym(rl_kill_ring_length)]+1, a3=sym(rl_kill_ring_length), a4=[sym(rl_max_kills)], a5=[sym(rl_kill_ring_length)].
  The `jalr` at 0x1004d088 calls strlen with a0=?, a1=?, a2=?, a3=?, a7=[0x1024a900].
  The `jalr` at 0x1004d0a4 calls strlen with a0=ret(rl_copy_text), a1=?, a2=?, a3=?.
  The `jal` at 0x1004d0c8 calls xmalloc [0x10061950] with a0=(ret(strlen) + ret(strlen))+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d0fc calls strcpy with a0=ret(xmalloc), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x1004d118 calls strcat with a0=ret(xmalloc), a1=ret(rl_copy_text), a2=?, a3=?.
  The `jalr` at 0x1004d13c calls strcpy with a0=ret(xmalloc), a1=ret(rl_copy_text), a2=a1 at entry (arg1), a3=?.
  The `jalr` at 0x1004d158 calls strcat with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d170 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004d188 calls free with a0=ret(rl_copy_text), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004cd68 targets 0x1004cda0, is taken when at(=a0) != v0(=a1), and falls through when at(=a0) == v0(=a1).
  The `beq` branch at 0x1004cd98 targets 0x1004d220 and is always taken.
  The `bne` branch at 0x1004cdf0 targets 0x1004d00c, is taken when ra(=[0x1024a900]) != 0, and falls through when ra(=[0x1024a900]) == 0.
  The `bne` branch at 0x1004ce08 targets 0x1004ce84, is taken when at(=[sym(rl_kill_ring)]) != 0, and falls through when at(=[sym(rl_kill_ring)]) == 0.
  The `beq` branch at 0x1004ce7c targets 0x1004d004 and is always taken.
  The `bne` branch at 0x1004ceac targets 0x1004cf60, is taken when a4(=[sym(rl_max_kills)]) != a5(=[sym(rl_kill_ring_length)]), and falls through when a4(=[sym(rl_max_kills)]) == a5(=[sym(rl_kill_ring_length)]).
  The `beq` branch at 0x1004ceec targets 0x1004cf58, is taken when a1(=0x0) >= a2(=[sym(rl_kill_ring_length)]) (signed), and falls through when a1(=0x0) < a2(=[sym(rl_kill_ring_length)]) (signed).
  The `bne` branch at 0x1004cf50 targets 0x1004cef4, is taken when a3(?) < a4(=[sym(rl_kill_ring_length)]) (signed), and falls through when a3(?) >= a4(=[sym(rl_kill_ring_length)]) (signed).
  The `beq` branch at 0x1004cf58 targets 0x1004cfd8 and is always taken.
  The `beq` branch at 0x1004d004 targets 0x1004d024 and is always taken.
  The `beq` branch at 0x1004d034 targets 0x1004d1bc, is taken when a7(=[0x1024a900]) == 0, and falls through when a7(=[0x1024a900]) != 0.
  The `beq` branch at 0x1004d04c targets 0x1004d1bc, is taken when t0(=[sym(rl_editing_mode)]) == 0, and falls through when t0(=[sym(rl_editing_mode)]) != 0.
  The `beq` branch at 0x1004d0e0 targets 0x1004d128, is taken when a1(=a0) >= a2(=a1) (signed), and falls through when a1(=a0) < a2(=a1) (signed).
  The `beq` branch at 0x1004d120 targets 0x1004d160 and is always taken.
  The `beq` branch at 0x1004d1b4 targets 0x1004d1e0 and is always taken.
  The return at 0x1004d230 has v0 = 0x0.

- `rl_kill_word` in `usr/gfx/KONA/bin/kpm` at 0x1004d240 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d240-0x1004d33c (252 bytes).
  It occupies 252 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d268, `lw` at 0x1004d2cc, `lw` at 0x1004d2ec.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d26c, `lw` at 0x1004d2d0, `lw` at 0x1004d2f0.
  The `lw` at 0x1004d290 loads 4 bytes from abs 0x1014c5b0.
  The `lw` at 0x1004d2b8 loads 4 bytes from abs 0x1014c53c.
  The `lw` at 0x1004d2fc loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004d318 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1004d294 calls rl_backward_kill_word [0x1004d340] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d2bc calls rl_forward_word [0x10049200] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d300 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `bgez` branch at 0x1004d278 targets 0x1004d2ac, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004d2a4 targets 0x1004d324 and is always taken.
  The `beq` branch at 0x1004d2d8 targets 0x1004d308, is taken when ra(=[sym(rl_point)]) == at(=[sym(rl_point)]), and falls through when ra(=[sym(rl_point)]) != at(=[sym(rl_point)]).
  The return at 0x1004d334 has v0 = one of ret(rl_backward_kill_word), 0x0.

- `rl_backward_kill_word` in `usr/gfx/KONA/bin/kpm` at 0x1004d340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d340-0x1004d428 (232 bytes).
  It occupies 232 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d368, `lw` at 0x1004d3cc, `lw` at 0x1004d3ec.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d36c, `lw` at 0x1004d3d0, `lw` at 0x1004d3f0.
  The `lw` at 0x1004d390 loads 4 bytes from abs 0x1014c5ac.
  The `lw` at 0x1004d3b8 loads 4 bytes from abs 0x1014c540.
  The `lw` at 0x1004d3fc loads 4 bytes from abs 0x1014c5a8.
  The `jal` at 0x1004d394 calls rl_kill_word [0x1004d240] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d3bc calls rl_backward_word [0x10049530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d400 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `bgez` branch at 0x1004d378 targets 0x1004d3ac, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004d3a4 targets 0x1004d410 and is always taken.
  The `beq` branch at 0x1004d3d8 targets 0x1004d408, is taken when ra(=[sym(rl_point)]) == at(=[sym(rl_point)]), and falls through when ra(=[sym(rl_point)]) != at(=[sym(rl_point)]).
  The return at 0x1004d420 has v0 = one of ret(rl_kill_word), 0x0.

- `rl_kill_line` in `usr/gfx/KONA/bin/kpm` at 0x1004d430 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d430-0x1004d524 (244 bytes).
  It occupies 244 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d458, `lw` at 0x1004d4b4, `lw` at 0x1004d4d4.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d45c, `lw` at 0x1004d4b8, `lw` at 0x1004d4d8.
  The `lw` at 0x1004d47c loads 4 bytes from abs 0x1014c5b8.
  The `lw` at 0x1004d4a0 loads 4 bytes from abs 0x1014c538.
  The `lw` at 0x1004d4e4 loads 4 bytes from abs 0x1014c5a8.
  The `sw` at 0x1004d500 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1004d480 calls rl_backward_kill_line [0x1004d530] with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d4a4 calls rl_end_of_line [0x100491c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d4e8 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `bgez` branch at 0x1004d468 targets 0x1004d498, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004d490 targets 0x1004d50c and is always taken.
  The `beq` branch at 0x1004d4c0 targets 0x1004d4f0, is taken when ra(=[sym(rl_point)]) == at(=[sym(rl_point)]), and falls through when ra(=[sym(rl_point)]) != at(=[sym(rl_point)]).
  The return at 0x1004d51c has v0 = one of ret(rl_backward_kill_line), 0x0.

- `rl_backward_kill_line` in `usr/gfx/KONA/bin/kpm` at 0x1004d530 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d530-0x1004d628 (248 bytes).
  It occupies 248 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d558, `lw` at 0x1004d5a0, `lw` at 0x1004d5ec.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d55c, `lw` at 0x1004d5a4, `lw` at 0x1004d5f0.
  The `lw` at 0x1004d57c loads 4 bytes from abs 0x1014c5b4.
  The `lw` at 0x1004d5b8 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1004d5d4 loads 4 bytes from abs 0x1014c534.
  The `lw` at 0x1004d5fc loads 4 bytes from abs 0x1014c5a8.
  The `jal` at 0x1004d580 calls rl_kill_line [0x1004d430] with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d5bc calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d5d8 calls rl_beg_of_line [0x10049190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d600 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_point)], a2=?, a3=?.
  The `bgez` branch at 0x1004d568 targets 0x1004d598, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x1004d590 targets 0x1004d610 and is always taken.
  The `bne` branch at 0x1004d5a8 targets 0x1004d5cc, is taken when at(=[sym(rl_point)]) != 0, and falls through when at(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x1004d5c4 targets 0x1004d608 and is always taken.
  The return at 0x1004d620 has v0 = one of ret(rl_kill_line), 0x0.

- `rl_kill_full_line` in `usr/gfx/KONA/bin/kpm` at 0x1004d630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d630-0x1004d6d4 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1004d658 loads 4 bytes from abs 0x1014c574.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d66c, `lw` at 0x1004d67c.
  The `sw` at 0x1004d670 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1004d680 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x1004d68c loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1004d690 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x1004d69c loads 4 bytes from abs 0x1014c5a8.
  The `lw` at 0x1004d6b0 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x1004d65c calls rl_begin_undo_group [0x1004bdb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d6a0 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_end)], a2=?, a3=?.
  The `jal` at 0x1004d6b4 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1004d6cc has v0 = 0x0.

- `rl_yank` in `usr/gfx/KONA/bin/kpm` at 0x1004d6e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d6e0-0x1004d7c0 (224 bytes).
  It occupies 224 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c978, including `lw` at 0x1004d708, `lw` at 0x1004d768.
  2 such `lw` accesses load 4 bytes from sym(rl_kill_ring) +0x0, including `lw` at 0x1004d70c, `lw` at 0x1004d76c.
  The `lw` at 0x1004d720 loads 4 bytes from abs 0x1014c518.
  The `lw` at 0x1004d744 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x1004d748 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x1004d754 loads 4 bytes from abs 0x1014c5a4.
  The `lw` at 0x1004d778 loads 4 bytes from abs 0x1014c97c.
  The `lw` at 0x1004d77c loads 4 bytes from sym(rl_kill_index) +0x0.
  The `lw` at 0x1004d788 loads 4 bytes from ([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2)) +0x0.
  The `lw` at 0x1004d794 loads 4 bytes from abs 0x1014c524.
  The `jal` at 0x1004d724 calls rl_abort [0x10048750] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d758 calls rl_set_mark [0x1004cb90] with a0=[sym(rl_point)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004d798 calls rl_insert_text [0x10048a40] with a0=[([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2))], a1=([sym(rl_kill_index)] << 0x2), a2=?, a3=?.
  The `bne` branch at 0x1004d710 targets 0x1004d73c, is taken when at(=[sym(rl_kill_ring)]) != 0, and falls through when at(=[sym(rl_kill_ring)]) == 0.
  The `beq` branch at 0x1004d734 targets 0x1004d7a8 and is always taken.
  The return at 0x1004d7b8 has v0 = one of -0x1, 0x0.

- `rl_yank_pop` in `usr/gfx/KONA/bin/kpm` at 0x1004d7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004d7c0-0x1004da74 (692 bytes).
  It occupies 692 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8b4, including `lw` at 0x1004d7e8, `lw` at 0x1004d80c.
  2 such `lw` accesses load 4 bytes from sym(rl_last_func) +0x0, including `lw` at 0x1004d7ec, `lw` at 0x1004d810.
  The `lw` at 0x1004d7f8 loads 4 bytes from abs 0x1014c5c0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c5bc, including `lw` at 0x1004d81c, `lw` at 0x1004da1c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c978, including `lw` at 0x1004d830, `lw` at 0x1004d86c, `lw` at 0x1004d900.
  3 such `lw` accesses load 4 bytes from sym(rl_kill_ring) +0x0, including `lw` at 0x1004d834, `lw` at 0x1004d870, `lw` at 0x1004d904.
  2 such `lw` accesses load 4 bytes from abs 0x1014c518, including `lw` at 0x1004d848, `lw` at 0x1004da3c.
  6 such `lw` accesses load 4 bytes from abs 0x1014c97c, including `lw` at 0x1004d87c, `lw` at 0x1004d910, `lw` at 0x1004d9b4.
  4 such `lw` accesses load 4 bytes from sym(rl_kill_index) +0x0, including `lw` at 0x1004d880, `lw` at 0x1004d914, `lw` at 0x1004d9b8.
  2 such `lw` accesses load 4 bytes from ([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2)) +0x0, including `lw` at 0x1004d88c, `lw` at 0x1004d920.
  The `lw` at 0x1004d898 loads 4 bytes from abs 0x1014c158.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1004d8b4, `lw` at 0x1004d8e4, `lw` at 0x1004d950.
  5 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x1004d8b8, `lw` at 0x1004d8e8, `lw` at 0x1004d954.
  The `lw` at 0x1004d8d4 loads 4 bytes from abs 0x1014bfb0.
  The `lw` at 0x1004d8d8 loads 4 bytes from abs 0x1024aa28.
  The `lw` at 0x1004d930 loads 4 bytes from abs 0x1014c170.
  The `lw` at 0x1004d978 loads 4 bytes from abs 0x1014c528.
  The `sw` at 0x1004d9a8 stores 4 bytes to sym(rl_point) +0x0.
  2 such `sw` accesses store 4 bytes to sym(rl_kill_index) +0x0, including `sw` at 0x1004d9cc, `sw` at 0x1004da08.
  The `lw` at 0x1004d9f0 loads 4 bytes from abs 0x1014c980.
  The `lw` at 0x1004d9f4 loads 4 bytes from sym(rl_kill_ring_length) +0x0.
  The `jal` at 0x1004d84c calls rl_abort [0x10048750] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004d89c calls strlen with a0=[([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2))], a1=([sym(rl_kill_index)] << 0x2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004d934 calls strncmp with a0=?, a1=[([sym(rl_kill_ring)] + ([sym(rl_kill_index)] << 0x2))], a2=ret(strlen), a3=?.
  The `jal` at 0x1004d97c calls rl_delete_text [0x10048d90] with a0=?, a1=[sym(rl_point)], a2=?, a3=?.
  The `jal` at 0x1004da20 calls rl_yank [0x1004d6e0] with a0=0x1, a1=0x0, a2=[sym(rl_kill_index)]-1, a3=sym(rl_kill_index).
  The `jal` at 0x1004da40 calls rl_abort [0x10048750] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004d7fc targets 0x1004d828, is taken when at(=[sym(rl_last_func)]) == v0(=sym(rl_yank_pop)), and falls through when at(=[sym(rl_last_func)]) != v0(=sym(rl_yank_pop)).
  The `bne` branch at 0x1004d820 targets 0x1004d840, is taken when v1(=[sym(rl_last_func)]) != a0(=sym(rl_yank)), and falls through when v1(=[sym(rl_last_func)]) == a0(=sym(rl_yank)).
  The `bne` branch at 0x1004d838 targets 0x1004d864, is taken when a0(=[sym(rl_kill_ring)]) != 0, and falls through when a0(=[sym(rl_kill_ring)]) == 0.
  The `beq` branch at 0x1004d85c targets 0x1004da5c and is always taken.
  The `bltz` branch at 0x1004d8c4 targets 0x1004da34, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0x1004d940 targets 0x1004da34, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `bgez` branch at 0x1004d9e0 targets 0x1004da0c, is taken when a1(=[sym(rl_kill_index)]) >= 0 (signed), and falls through when a1(=[sym(rl_kill_index)]) < 0 (signed).
  The `beq` branch at 0x1004da2c targets 0x1004da5c and is always taken.
  The `beq` branch at 0x1004da54 targets 0x1004da5c and is always taken.
  The return at 0x1004da6c has v0 = one of -0x1, 0x0.

- `rl_yank_nth_arg` in `usr/gfx/KONA/bin/kpm` at 0x1004da80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004da80-0x1004dc3c (444 bytes).
  It occupies 444 bytes.
  The `lw` at 0x1004daa8 loads 4 bytes from abs 0x1014c48c.
  The `lw` at 0x1004dad0 loads 4 bytes from abs 0x1014c490.
  2 such `lw` accesses load 4 bytes from abs 0x1014c514, including `lw` at 0x1004daec, `lw` at 0x1004db58.
  The `lw` at 0x1004db14 loads 4 bytes from ret(previous_history) +0x0.
  The `lw` at 0x1004db20 loads 4 bytes from abs 0x1014c4a4.
  The `lbu` at 0x1004db44 loads 1 byte from ret(history_arg_extract) +0x0.
  The `lw` at 0x1004db7c loads 4 bytes from abs 0x1014c574.
  The `lw` at 0x1004db90 loads 4 bytes from abs 0x1014c7c0.
  The `lw` at 0x1004db94 loads 4 bytes from sym(rl_editing_mode) +0x0.
  The `lw` at 0x1004dba8 loads 4 bytes from abs 0x1014c648.
  The `lw` at 0x1004dbbc loads 4 bytes from abs 0x1014bfb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c524, including `lw` at 0x1004dbcc, `lw` at 0x1004dbe4.
  The `lw` at 0x1004dbfc loads 4 bytes from abs 0x1014c114.
  The `lw` at 0x1004dc10 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x1004daac calls previous_history [0x1003cd10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004dad4 calls next_history [0x1003cdc0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004daf0 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004db24 calls history_arg_extract [0x1003ffa0] with a0=a0 at entry (arg0), a1=a0 at entry (arg0), a2=[ret(previous_history)], a3=?.
  The `jal` at 0x1004db5c calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=ret(history_arg_extract).
  The `jal` at 0x1004db80 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=ret(history_arg_extract), a4=[ret(history_arg_extract)]:1.
  The `jal` at 0x1004dbac calls rl_vi_append_mode [0x10056fa0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004dbd0 calls rl_insert_text [0x10048a40] with a0=0x10092b36, a1=?, a2=?, a3=?.
  The `jal` at 0x1004dbe8 calls rl_insert_text [0x10048a40] with a0=ret(history_arg_extract), a1=?, a2=?, a3=?.
  The `jalr` at 0x1004dc00 calls free with a0=ret(history_arg_extract), a1=?, a2=?, a3=?.
  The `jal` at 0x1004dc14 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1004dac0 targets 0x1004dae4, is taken when at(=ret(previous_history)) == 0, and falls through when at(=ret(previous_history)) != 0.
  The `beq` branch at 0x1004dadc targets 0x1004db08 and is always taken.
  The `beq` branch at 0x1004db00 targets 0x1004dc24 and is always taken.
  The `beq` branch at 0x1004db38 targets 0x1004db50, is taken when a3(=ret(history_arg_extract)) == 0, and falls through when a3(=ret(history_arg_extract)) != 0.
  The `bne` branch at 0x1004db48 targets 0x1004db74, is taken when a4(=[ret(history_arg_extract)]:1) != 0, and falls through when a4(=[ret(history_arg_extract)]:1) == 0.
  The `beq` branch at 0x1004db6c targets 0x1004dc24 and is always taken.
  The `bne` branch at 0x1004db98 targets 0x1004dbd8, is taken when ra(=[sym(rl_editing_mode)]) != 0, and falls through when ra(=[sym(rl_editing_mode)]) == 0.
  The return at 0x1004dc34 has v0 = one of -0x1, 0x0.

- `rl_yank_last_arg` in `usr/gfx/KONA/bin/kpm` at 0x1004dc40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004dc40-0x1004dcf4 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0x1004dc68 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x1004dc6c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c5c4, including `lw` at 0x1004dc88, `lw` at 0x1004dcb8.
  The `jal` at 0x1004dc8c calls rl_yank_nth_arg [0x1004da80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004dcbc calls rl_yank_nth_arg [0x1004da80] with a0=0x24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004dc70 targets 0x1004dca8, is taken when at(=[sym(rl_explicit_arg)]) == 0, and falls through when at(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x1004dca0 targets 0x1004dcdc and is always taken.
  The `beq` branch at 0x1004dcd4 targets 0x1004dcdc and is always taken.
  The return at 0x1004dcec has v0 = ret(rl_yank_nth_arg).

- `rl_vi_editing_mode` in `usr/gfx/KONA/bin/kpm` at 0x1004dd00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004dd00-0x1004dd5c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x1004dd28 loads 4 bytes from abs 0x1014c7c0.
  The `sw` at 0x1004dd2c stores 4 bytes to sym(rl_editing_mode) +0x0.
  The `lw` at 0x1004dd38 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x1004dd3c calls rl_vi_insertion_mode [0x100570f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1004dd54 has v0 = 0x0.

- `rl_emacs_editing_mode` in `usr/gfx/KONA/bin/kpm` at 0x1004dd60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004dd60-0x1004ddb8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x1004dd84 loads 4 bytes from abs 0x1014c7c0.
  The `sw` at 0x1004dd88 stores 4 bytes to sym(rl_editing_mode) +0x0.
  The `lw` at 0x1004dd94 loads 4 bytes from abs 0x1014c7f0.
  The `lw` at 0x1004dda0 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x1004dda4 stores 4 bytes to sym(_rl_keymap) +0x0.
  The return at 0x1004ddb0 has v0 = 0x0.

- `rl_getc` in `usr/gfx/KONA/bin/kpm` at 0x1004ddc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004ddc0-0x1004df5c (412 bytes).
  It occupies 412 bytes.
  3 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0xe, including `lhu` at 0x1004ddec, `lhu` at 0x1004de70, `lhu` at 0x1004ded8.
  The `lw` at 0x1004de00 loads 4 bytes from abs 0x1014c0f4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c134, including `lw` at 0x1004de58, `lw` at 0x1004df10.
  2 such `lw` accesses load 4 bytes from sym(errno) +0x0, including `lw` at 0x1004de5c, `lw` at 0x1004df14.
  2 such `lw` accesses load 4 bytes from abs 0x1014c198, including `lw` at 0x1004de84, `lw` at 0x1004deec.
  The `jalr` at 0x1004de04 calls read with a0=[a0+14]:2, a1=sp-64, a2=0x1, a3=?.
  The `jalr` at 0x1004de88 calls fcntl with a0=[a0+14]:2, a1=0x3, a2=0x0, a3=?, a4=ret(read), a6=[sym(errno)], a7=0xb.
  The `jalr` at 0x1004def0 calls fcntl with a0=[a0+14]:2, a1=0x4, a2=?, a3=?.
  The `beq` branch at 0x1004dde0 targets 0x1004df44 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x1004de1c targets 0x1004de34, is taken when a1(=ret(read)) != a2(=0x1), and falls through when a1(=ret(read)) == a2(=0x1).
  The `beq` branch at 0x1004de2c targets 0x1004df44 and is always taken.
  The `bne` branch at 0x1004de38 targets 0x1004de50, is taken when a4(=ret(read)) != 0, and falls through when a4(=ret(read)) == 0.
  The `beq` branch at 0x1004de48 targets 0x1004df44 and is always taken.
  The `bne` branch at 0x1004de64 targets 0x1004df08, is taken when a6(=[sym(errno)]) != a7(=0xb), and falls through when a6(=[sym(errno)]) == a7(=0xb).
  The `bgez` branch at 0x1004de9c targets 0x1004deb4, is taken when a1(=ret(fcntl)) >= 0 (signed), and falls through when a1(=ret(fcntl)) < 0 (signed).
  The `beq` branch at 0x1004deac targets 0x1004df44 and is always taken.
  The `beq` branch at 0x1004debc targets 0x1004df00, is taken when (a3(=ret(fcntl)) & 0x4) == 0, and falls through when (a3(=ret(fcntl)) & 0x4) != 0.
  The `beq` branch at 0x1004def8 targets 0x1004df38 and is always taken.
  The `beq` branch at 0x1004df00 targets 0x1004df38 and is always taken.
  The `beq` branch at 0x1004df1c targets 0x1004df38, is taken when a3(=[sym(errno)]) == a4(=0x4), and falls through when a3(=[sym(errno)]) != a4(=0x4).
  The `beq` branch at 0x1004df30 targets 0x1004df44 and is always taken.
  The `bne` branch at 0x1004df3c targets 0x1004dde8 and is always taken.
  The return at 0x1004df54 has v0 = one of ?, -0x1.

- `savestring` in `usr/gfx/KONA/bin/kpm` at 0x1004df60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004df60-0x1004dfdc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x1004df88 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1004dfa0 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1004dfbc loads 4 bytes from abs 0x1014c0f8.
  The `jalr` at 0x1004df8c calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1004dfa4 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004dfc0 calls strcpy with a0=ret(xmalloc), a1=a0 at entry (arg0), a2=?, a3=?.
  The return at 0x1004dfd4 has v0 = ret(strcpy).

- `uppercase_p` in `usr/gfx/KONA/bin/kpm` at 0x1004dfe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004dfe0-0x1004e028 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x1004dffc loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e000 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e014 loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The return at 0x1004e020 has v0 = ?.

- `lowercase_p` in `usr/gfx/KONA/bin/kpm` at 0x1004e030 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e030-0x1004e078 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x1004e04c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e050 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e064 loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The return at 0x1004e070 has v0 = ?.

- `pure_alphabetic` in `usr/gfx/KONA/bin/kpm` at 0x1004e080 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e080-0x1004e120 (160 bytes).
  It occupies 160 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x1004e0a0, `lw` at 0x1004e0d0.
  2 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x1004e0a4, `lw` at 0x1004e0d4.
  2 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4, including `lw` at 0x1004e0b8, `lw` at 0x1004e0e8.
  The `bne` branch at 0x1004e0c0 targets 0x1004e0f8, is taken when (v0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) != 0, and falls through when (v0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) == 0.
  The `beq` branch at 0x1004e0f0 targets 0x1004e108, is taken when (a0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x2) == 0, and falls through when (a0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x1004e100 targets 0x1004e10c and is always taken.
  The return at 0x1004e118 has v0 = one of 0x0, 0x1.

- `digit_p` in `usr/gfx/KONA/bin/kpm` at 0x1004e120 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e120-0x1004e168 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x1004e13c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e140 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e154 loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The return at 0x1004e160 has v0 = ?.

- `to_lower` in `usr/gfx/KONA/bin/kpm` at 0x1004e170 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e170-0x1004e204 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x1004e194 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e198 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e1ac loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The `lw` at 0x1004e1c8 loads 4 bytes from abs 0x1014c234.
  The `jalr` at 0x1004e1cc calls tolower with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004e1b4 targets 0x1004e1e4, is taken when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x1004e1dc targets 0x1004e1ec and is always taken.
  The return at 0x1004e1fc has v0 = one of ret(tolower), a0.

- `to_upper` in `usr/gfx/KONA/bin/kpm` at 0x1004e210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e210-0x1004e2a4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x1004e234 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e238 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e24c loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The `lw` at 0x1004e268 loads 4 bytes from abs 0x1014c260.
  The `jalr` at 0x1004e26c calls toupper with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1004e254 targets 0x1004e284, is taken when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x2) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x1004e27c targets 0x1004e28c and is always taken.
  The return at 0x1004e29c has v0 = one of ret(toupper), a0.

- `digit_value` in `usr/gfx/KONA/bin/kpm` at 0x1004e2b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e2b0-0x1004e328 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x1004e2d0 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004e2d4 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004e2e8 loads 4 bytes from ([sym(__libc_attr)] + (a0 << 0x2)) +0x4.
  The `beq` branch at 0x1004e2f0 targets 0x1004e30c, is taken when (v0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x4) == 0, and falls through when (v0(=[([sym(__libc_attr)] + (a0 << 0x2))+4]) & 0x4) != 0.
  The `beq` branch at 0x1004e304 targets 0x1004e314 and is always taken.
  The return at 0x1004e320 has v0 = one of a0-48, a0.

- `rl_expand_prompt` in `usr/gfx/KONA/bin/kpm` at 0x1004e570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e570-0x1004e7a4 (564 bytes).
  It occupies 564 bytes.
  15 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x1004e594, `lw` at 0x1004e5ac, `lw` at 0x1004e5d0.
  2 such `lw` accesses load 4 bytes from abs 0x1024adbc, including `lw` at 0x1004e598, `lw` at 0x1004e5b0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1004e5bc, `lw` at 0x1004e5f8.
  2 such `lw` accesses load 4 bytes from abs 0x1024adc0, including `lw` at 0x1004e5d4, `lw` at 0x1004e5ec.
  3 such `sw` accesses store 4 bytes to abs 0x1024adc0, including `sw` at 0x1004e614, `sw` at 0x1004e6a0, `sw` at 0x1004e75c.
  3 such `sw` accesses store 4 bytes to abs 0x1024adbc, including `sw` at 0x1004e624, `sw` at 0x1004e690, `sw` at 0x1004e70c.
  The `lw` at 0x1004e638 loads 4 bytes from abs 0x1014c1e4.
  3 such `lw` accesses load 4 bytes from abs 0x1014bff8, including `lw` at 0x1004e674, `lw` at 0x1004e6f0, `lw` at 0x1004e740.
  The `lw` at 0x1004e6b0 loads 4 bytes from abs 0x1024adc4.
  The `lbu` at 0x1004e714 loads 1 byte from ret(strrchr) +0x1.
  2 such `sb` accesses store 1 byte to ret(strrchr) +0x1, including `sb` at 0x1004e720, `sb` at 0x1004e768.
  The `lw` at 0x1004e778 loads 4 bytes from abs 0x1024adc8.
  The `jalr` at 0x1004e5c0 calls free with a0=[0x1024adbc], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004e5fc calls free with a0=[0x1024adc0], a1=[0x1024adc0], a2=?, a3=?.
  The `jalr` at 0x1004e63c calls strrchr with a0=a0 at entry (arg0), a1=0xa, a2=?, a3=?.
  The `jal` at 0x1004e678 calls (unnamed) [0x1004e330] with a0=a0 at entry (arg0), a1=0x1024adc4, a2=?, a3=?.
  The `jal` at 0x1004e6f4 calls (unnamed) [0x1004e330] with a0=ret(strrchr)+1, a1=0x1024adc4, a2=ret(strrchr)+1, a3=ret(strrchr)+1.
  The `jal` at 0x1004e744 calls (unnamed) [0x1004e330] with a0=a0 at entry (arg0), a1=0x1024adc8, a2=ret(strrchr)+1, a3=[ret(strrchr)+1]:1, a4=0x1024ad18.
  The `beq` branch at 0x1004e59c targets 0x1004e5c8, is taken when at(=[0x1024adbc]) == 0, and falls through when at(=[0x1024adbc]) != 0.
  The `beq` branch at 0x1004e5d8 targets 0x1004e604, is taken when a1(=[0x1024adc0]) == 0, and falls through when a1(=[0x1024adc0]) != 0.
  The `bne` branch at 0x1004e650 targets 0x1004e6c0, is taken when v0(=ret(strrchr)) != 0, and falls through when v0(=ret(strrchr)) == 0.
  The `beq` branch at 0x1004e6b8 targets 0x1004e78c and is always taken.
  The `beq` branch at 0x1004e784 targets 0x1004e78c and is always taken.
  The return at 0x1004e79c has v0 = [one of 0x1024adc4, 0x1024adc8].

- `rl_redisplay` in `usr/gfx/KONA/bin/kpm` at 0x1004e7b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1004e7b0-0x1004fff0 (6208 bytes).
  It occupies 6208 bytes.
  63 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x1004e7d0, `lw` at 0x1004e840, `lw` at 0x1004e880.
  12 such `lw` accesses load 4 bytes from abs 0x1024ad34, including `lw` at 0x1004e7d4, `lw` at 0x1004e844, `lw` at 0x1004e8cc.
  The `lw` at 0x1004e7ec loads 4 bytes from abs 0x1014c7cc.
  The `lw` at 0x1004e7f0 loads 4 bytes from sym(readline_echoing_p) +0x0.
  7 such `lw` accesses load 4 bytes from abs 0x1014c988, including `lw` at 0x1004e80c, `lw` at 0x1004e830, `lw` at 0x1004ea5c.
  6 such `lw` accesses load 4 bytes from sym(rl_display_prompt) +0x0, including `lw` at 0x1004e810, `lw` at 0x1004ea60, `lw` at 0x1004ebd8.
  3 such `lw` accesses load 4 bytes from abs 0x1014bffc, including `lw` at 0x1004e824, `lw` at 0x1004ee90, `lw` at 0x1004f274.
  The `sw` at 0x1004e834 stores 4 bytes to sym(rl_display_prompt) +0x0.
  9 such `lw` accesses load 4 bytes from abs 0x1014c000, including `lw` at 0x1004e858, `lw` at 0x1004e890, `lw` at 0x1004e8e0.
  8 such `lw` accesses load 4 bytes from abs 0x10149028, including `lw` at 0x1004e85c, `lw` at 0x1004e894, `lw` at 0x1004e8e4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1004e868, `lw` at 0x1004e8a0.
  3 such `sw` accesses store 4 bytes to abs 0x1024ad30, including `sw` at 0x1004e884, `sw` at 0x1004edc0, `sw` at 0x1004ff58.
  3 such `sw` accesses store 4 bytes to abs 0x1024ad34, including `sw` at 0x1004e8bc, `sw` at 0x1004ee08, `sw` at 0x1004ff6c.
  7 such `lw` accesses load 4 bytes from abs 0x1024ad30, including `lw` at 0x1004e908, `lw` at 0x1004ea10, `lw` at 0x1004ed88.
  13 such `sb` accesses store 1 byte to ?, including `sb` at 0x1004e910, `sb` at 0x1004e930, `sb` at 0x1004eba4.
  The `lw` at 0x1004e968 loads 4 bytes from abs 0x1014c5d4.
  The `lw` at 0x1004e988 loads 4 bytes from abs 0x1014c8dc.
  The `lw` at 0x1004e98c loads 4 bytes from sym(_rl_mark_modified_lines) +0x0.
  The `lw` at 0x1004e9a0 loads 4 bytes from abs 0x1014c488.
  The `lw` at 0x1004e9c0 loads 4 bytes from abs 0x1014c970.
  The `lw` at 0x1004e9c4 loads 4 bytes from sym(rl_undo_list) +0x0.
  The `sb` at 0x1004e9f0 stores 1 byte to [0x1024ad34] +0x0.
  The `sb` at 0x1004ea00 stores 1 byte to [0x1024ad34] +0x1.
  The `lbu` at 0x1004ea14 loads 1 byte from [0x1024ad30] +0x0.
  The `lbu` at 0x1004ea28 loads 1 byte from [0x1024ad34] +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c984, including `lw` at 0x1004ea3c, `lw` at 0x1004f170, `lw` at 0x1004fc34.
  2 such `sw` accesses store 4 bytes to sym(rl_display_fixed) +0x0, including `sw` at 0x1004ea40, `sw` at 0x1004ff7c.
  The `lw` at 0x1004ea4c loads 4 bytes from abs 0x1014c8c0.
  The `lw` at 0x1004ea50 loads 4 bytes from sym(rl_prompt) +0x0.
  5 such `lw` accesses load 4 bytes from abs 0x1024adbc, including `lw` at 0x1004ea78, `lw` at 0x1004ea90, `lw` at 0x1004eb6c.
  4 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1004ea9c, `lw` at 0x1004eb10, `lw` at 0x1004ec90.
  3 such `lw` accesses load 4 bytes from abs 0x1024adc0, including `lw` at 0x1004ead4, `lw` at 0x1004eb04, `lw` at 0x1004eb30.
  4 such `lw` accesses load 4 bytes from abs 0x1024adb8, including `lw` at 0x1004eaec, `lw` at 0x1004ec3c, `lw` at 0x1004f18c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c504, including `lw` at 0x1004eb3c, `lw` at 0x1004ec78, `lw` at 0x1004f870.
  2 such `lw` accesses load 4 bytes from abs 0x1014c20c, including `lw` at 0x1004eb7c, `lw` at 0x1004ecc0.
  3 such `lw` accesses load 4 bytes from abs 0x1024adc4, including `lw` at 0x1004ebb8, `lw` at 0x1004f790, `lw` at 0x1004f9e0.
  The `lw` at 0x1004ebe8 loads 4 bytes from abs 0x1014c1e4.
  The `sb` at 0x1004ece8 stores 1 byte to ((ret(strlen) + one of 0x0, 0x1) + [0x1024ad34]) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1004ecfc, `lw` at 0x1004f0cc.
  2 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x1004ed00, `lw` at 0x1004f0d0.
  The `lw` at 0x1004ed20 loads 4 bytes from abs 0x1014c8e0.
  The `lw` at 0x1004ed24 loads 4 bytes from sym(rl_line_buffer) +0x0.
  The `lbu` at 0x1004ed2c loads 1 byte from ?.
  The `sw` at 0x1004ed78 stores 4 bytes to abs 0x10149028.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e8, including `lw` at 0x1004eda4, `lw` at 0x1004edec.
  The `lw` at 0x1004ee28 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x1004ee2c loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x1004ee6c loads 4 bytes from abs 0x1014c8fc.
  The `lw` at 0x1004ee70 loads 4 bytes from sym(_rl_output_meta_chars) +0x0.
  The `lw` at 0x1004eea4 loads 4 bytes from abs 0x1014c100.
  The `lw` at 0x1004efac loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1004efb0 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1004efc8 loads 4 bytes from ?.
  The `lw` at 0x1004efe8 loads 4 bytes from abs 0x1014c260.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8d8, including `lw` at 0x1004f110, `lw` at 0x1004ff88.
  2 such `lw` accesses load 4 bytes from sym(_rl_horizontal_scroll_mode) +0x0, including `lw` at 0x1004f114, `lw` at 0x1004ff8c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c940, including `lw` at 0x1004f128, `lw` at 0x1004f140.
  2 such `lw` accesses load 4 bytes from sym(term_up) +0x0, including `lw` at 0x1004f12c, `lw` at 0x1004f144.
  The `lbu` at 0x1004f148 loads 1 byte from [sym(term_up)] +0x0.
  The `lw` at 0x1004f15c loads 4 bytes from abs 0x1014c8f4.
  The `lw` at 0x1004f160 loads 4 bytes from sym(screenchars) +0x0.
  2 such `lw` accesses load 4 bytes from sym(rl_display_fixed) +0x0, including `lw` at 0x1004f174, `lw` at 0x1004fc38.
  2 such `sw` accesses store 4 bytes to abs 0x1024adb8, including `sw` at 0x1004f1a4, `sw` at 0x1004fc84.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8e8, including `lw` at 0x1004f1d0, `lw` at 0x1004f6a8.
  2 such `lw` accesses load 4 bytes from sym(term_xn) +0x0, including `lw` at 0x1004f1d4, `lw` at 0x1004f6ac.
  20 such `lw` accesses load 4 bytes from abs 0x1014c8ec, including `lw` at 0x1004f208, `lw` at 0x1004f2a8, `lw` at 0x1004f304.
  20 such `lw` accesses load 4 bytes from sym(screenwidth) +0x0, including `lw` at 0x1004f20c, `lw` at 0x1004f2ac, `lw` at 0x1004f308.
  6 such `lw` accesses load 4 bytes from abs 0x1014c994, including `lw` at 0x1004f254, `lw` at 0x1004f50c, `lw` at 0x1004f52c.
  5 such `lw` accesses load 4 bytes from sym(_rl_vis_botlin) +0x0, including `lw` at 0x1004f258, `lw` at 0x1004f510, `lw` at 0x1004f530.
  6 such `lw` accesses load 4 bytes from abs 0x1024adcc, including `lw` at 0x1004f29c, `lw` at 0x1004f344, `lw` at 0x1004f404.
  2 such `lw` accesses load 4 bytes from abs 0x1014c004, including `lw` at 0x1004f3d4, `lw` at 0x1004fd30.
  13 such `lw` accesses load 4 bytes from abs 0x1014c98c, including `lw` at 0x1004f420, `lw` at 0x1004f464, `lw` at 0x1004f764.
  10 such `lw` accesses load 4 bytes from sym(_rl_last_c_pos) +0x0, including `lw` at 0x1004f424, `lw` at 0x1004f468, `lw` at 0x1004f768.
  3 such `lw` accesses load 4 bytes from abs 0x1024add0, including `lw` at 0x1004f434, `lw` at 0x1004fde0, `lw` at 0x1004fe88.
  3 such `lw` accesses load 4 bytes from abs 0x1014c008, including `lw` at 0x1004f480, `lw` at 0x1004f648, `lw` at 0x1004fe1c.
  3 such `sw` accesses store 4 bytes to abs 0x1024add0, including `sw` at 0x1004f4e0, `sw` at 0x1004fe68, `sw` at 0x1004feb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c5e0, including `lw` at 0x1004f5b8, `lw` at 0x1004f738.
  3 such `lw` accesses load 4 bytes from abs 0x1014c5dc, including `lw` at 0x1004f5d4, `lw` at 0x1004f9a0, `lw` at 0x1004fee4.
  The `sw` at 0x1004f690 stores 4 bytes to sym(_rl_vis_botlin) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c990, including `lw` at 0x1004f708, `lw` at 0x1004f9bc.
  The `lw` at 0x1004f70c loads 4 bytes from sym(_rl_last_v_pos) +0x0.
  3 such `sw` accesses store 4 bytes to sym(_rl_last_c_pos) +0x0, including `sw` at 0x1004f780, `sw` at 0x1004f88c, `sw` at 0x1004f95c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c914, including `lw` at 0x1004f810, `lw` at 0x1004f828.
  2 such `lw` accesses load 4 bytes from sym(term_cr) +0x0, including `lw` at 0x1004f814, `lw` at 0x1004f82c.
  The `lw` at 0x1004f83c loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x1004f848 loads 4 bytes from abs 0x1014c258.
  The `lw` at 0x1004f940 loads 4 bytes from abs 0x1014c508.
  The `sw` at 0x1004f9c0 stores 4 bytes to sym(_rl_last_v_pos) +0x0.
  6 such `lw` accesses load 4 bytes from abs 0x1024ad2c, including `lw` at 0x1004f9fc, `lw` at 0x1004fa14, `lw` at 0x1004fb94.
  The `sw` at 0x1004ff00 stores 4 bytes to abs 0x1024ad2c.
  The `lw` at 0x1004ff0c loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x1004ff10 loads 4 bytes from sym(rl_outstream) +0x0.
  The `lw` at 0x1004ff1c loads 4 bytes from abs 0x1014c140.
  2 such `sw` accesses store 4 bytes to abs 0x1024adcc, including `sw` at 0x1004ffbc, `sw` at 0x1004ffd8.
  The `jal` at 0x1004e86c calls xmalloc [0x10061950] with a0=[0x10149028], a1=?, a2=[0x1024ad34], a3=a3 at entry (arg3).
  The `jal` at 0x1004e8a4 calls xmalloc [0x10061950] with a0=[0x10149028], a1=0x1024ad18, a2=?, a3=?.
  The `jal` at 0x1004e96c calls rl_on_new_line [0x10050d10] with a0=?, a1=?, a2=?, a3=[0x10149028], a4=[0x1024ad34], a5=0x1024ad18.
  The `jal` at 0x1004e9a4 calls current_history [0x1003cc60] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004eaa0 calls strlen with a0=[0x1024adbc], a1=?, a2=?, a3=[[0x1024ad30]]:1, a5=[sym(rl_prompt)], a6=[0x1024adbc].
  The `jalr` at 0x1004eb14 calls strlen with a0=[0x1024adc0], a1=?, a2=[0x1024adc0], a3=?, a4=[0x1024adb8].
  The `jal` at 0x1004eb40 calls _rl_output_some_chars [0x100480d0] with a0=[0x1024adc0], a1=ret(strlen), a2=?, a3=?.
  The `jalr` at 0x1004eb80 calls strncpy with a0=([0x1024ad34] + one of 0x0, 0x1), a1=[0x1024adbc], a2=?, a3=?.
  The `jalr` at 0x1004ebec calls strrchr with a0=[sym(rl_display_prompt)], a1=0xa, a2=?, a3=[[0x1024ad30]]:1, a5=[sym(rl_prompt)], a6=[sym(rl_display_prompt)].
  The `jal` at 0x1004ec7c calls _rl_output_some_chars [0x100480d0] with a0=[sym(rl_display_prompt)], a1=?, a2=[sym(rl_display_prompt)], a3=[0x1024adb8], a4=ret(strrchr)+1.
  The `jalr` at 0x1004ec94 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004ecc4 calls strncpy with a0=([0x1024ad34] + one of 0x0, 0x1), a1=?, a2=ret(strlen), a3=?.
  The `jal` at 0x1004eda8 calls xrealloc [0x100619d0] with a0=[0x1024ad30], a1=[0x10149028], a2=0x10149028, a3=?.
  The `jal` at 0x1004edf0 calls xrealloc [0x100619d0] with a0=[0x1024ad34], a1=[0x10149028], a2=?, a3=?.
  The `jalr` at 0x1004eea8 calls sprintf with a0=?, a1=0x10092ba0, a2=?, a3=?, a4=[sym(rl_point)].
  The `jalr` at 0x1004efec calls toupper with a0=?, a1=?, a2=?, a3=0x5e.
  The `jal` at 0x1004f3d8 calls (unnamed) [0x1004fff0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f484 calls (unnamed) [0x10051d20] with a0=?, a1=?, a2=?, a3=?, a7=[0x1024add0].
  The `jal` at 0x1004f5bc calls _rl_move_vert [0x10051200] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f5d8 calls _rl_move_cursor_relative [0x10050e90] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1004f60c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f64c calls (unnamed) [0x10051d20] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f73c calls _rl_move_vert [0x10051200] with a0=?, a1=?, a2=sym(_rl_vis_botlin), a3=?.
  The `jalr` at 0x1004f84c calls tputs with a0=[sym(term_cr)], a1=0x1, a2=sym(_rl_output_character_function), a3=?, a4=[sym(_rl_last_c_pos)], a5=[0x1024adbc], a6=[sym(term_cr)].
  The `jal` at 0x1004f874 calls _rl_output_some_chars [0x100480d0] with a0=[0x1024adbc], a1=?, a2=?, a3=?.
  The `jal` at 0x1004f944 calls backspace [0x10048140] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1004f9a4 calls _rl_move_cursor_relative [0x10050e90] with a0=?, a1=?, a2=[0x1024ad34], a3=[sym(_rl_last_c_pos)].
  The `jal` at 0x1004fd34 calls (unnamed) [0x1004fff0] with a0=([0x1024ad2c] + [0x1024ad30]), a1=?, a2=0x0, a3=([sym(screenwidth)] + [0x1024adcc]), a5=0x0.
  The `jal` at 0x1004fe20 calls (unnamed) [0x10051d20] with a0=?, a1=?, a2=?, a3=?, a7=[sym(_rl_last_c_pos)].
  The `jal` at 0x1004fee8 calls _rl_move_cursor_relative [0x10050e90] with a0=?, a1=?, a2=[0x1024ad34], a3=?.
  The `jalr` at 0x1004ff20 calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x1004e7f4 targets 0x1004e804, is taken when at(=[sym(readline_echoing_p)]) != 0, and falls through when at(=[sym(readline_echoing_p)]) == 0.
  The `beq` branch at 0x1004e7fc targets 0x1004ffdc and is always taken.
  The `bne` branch at 0x1004e814 targets 0x1004e838, is taken when a0(=[sym(rl_display_prompt)]) != 0, and falls through when a0(=[sym(rl_display_prompt)]) == 0.
  The `bne` branch at 0x1004e848 targets 0x1004e974, is taken when a2(=[0x1024ad34]) != 0, and falls through when a2(=[0x1024ad34]) == 0.
  The `beq` branch at 0x1004e8f0 targets 0x1004e960, is taken when a2(=0x0) >= a3(=[0x10149028]) (signed), and falls through when a2(=0x0) < a3(=[0x10149028]) (signed).
  The `bne` branch at 0x1004e958 targets 0x1004e8f8, is taken when a6(?) < a7(=[0x10149028]) (signed), and falls through when a6(?) >= a7(=[0x10149028]) (signed).
  The `beq` branch at 0x1004e990 targets 0x1004ea04, is taken when ra(=[sym(_rl_mark_modified_lines)]) == 0, and falls through when ra(=[sym(_rl_mark_modified_lines)]) != 0.
  The `beq` branch at 0x1004e9b0 targets 0x1004ea04, is taken when v0(=ret(current_history)) == 0, and falls through when v0(=ret(current_history)) != 0.
  The `beq` branch at 0x1004e9c8 targets 0x1004ea04, is taken when ra(=[sym(rl_undo_list)]) == 0, and falls through when ra(=[sym(rl_undo_list)]) != 0.
  The `beq` branch at 0x1004ea2c targets 0x1004ea44, is taken when a3(=[[0x1024ad30]]:1) == a4(=[[0x1024ad34]]:1), and falls through when a3(=[[0x1024ad30]]:1) != a4(=[[0x1024ad34]]:1).
  The `bne` branch at 0x1004ea64 targets 0x1004ebcc, is taken when a5(=[sym(rl_prompt)]) != a6(=[sym(rl_display_prompt)]), and falls through when a5(=[sym(rl_prompt)]) == a6(=[sym(rl_display_prompt)]).
  The `beq` branch at 0x1004ea7c targets 0x1004eabc, is taken when a6(=[0x1024adbc]) == 0, and falls through when a6(=[0x1024adbc]) != 0.
  The `beq` branch at 0x1004eab4 targets 0x1004eac0 and is always taken.
  The `beq` branch at 0x1004ead8 targets 0x1004eb48, is taken when a2(=[0x1024adc0]) == 0, and falls through when a2(=[0x1024adc0]) != 0.
  The `beq` branch at 0x1004eaf0 targets 0x1004eb48, is taken when a4(=[0x1024adb8]) == 0, and falls through when a4(=[0x1024adb8]) != 0.
  The `blez` branch at 0x1004eb4c targets 0x1004eb88, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1004ebc4 targets 0x1004ecf0 and is always taken.
  The `bne` branch at 0x1004ec00 targets 0x1004ec24, is taken when a1(=ret(strrchr)) != 0, and falls through when a1(=ret(strrchr)) == 0.
  The `beq` branch at 0x1004ec1c targets 0x1004ec84 and is always taken.
  The `beq` branch at 0x1004ec40 targets 0x1004ec84, is taken when a3(=[0x1024adb8]) == 0, and falls through when a3(=[0x1024adb8]) != 0.
  The `beq` branch at 0x1004ed0c targets 0x1004f0e4, is taken when a6(=0x0) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=0x0) < a7(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x1004ed50 targets 0x1004ee20, is taken when t0(?) < t1(=[0x10149028]) (signed), and falls through when t0(?) >= t1(=[0x10149028]) (signed).
  The `bne` branch at 0x1004ee34 targets 0x1004ee44, is taken when a4(=[sym(rl_point)]) != a5(?), and falls through when a4(=[sym(rl_point)]) == a5(?).
  The `bne` branch at 0x1004ee4c targets 0x1004eef0, is taken when a6(?) < 0x80 (signed), and falls through when a6(?) >= 0x80 (signed).
  The `beq` branch at 0x1004ee5c targets 0x1004eef0, is taken when a7(?) >= 0x100 (signed), and falls through when a7(?) < 0x100 (signed).
  The `bne` branch at 0x1004ee74 targets 0x1004eec4, is taken when t0(=[sym(_rl_output_meta_chars)]) != 0, and falls through when t0(=[sym(_rl_output_meta_chars)]) == 0.
  The `beq` branch at 0x1004eebc targets 0x1004eee8 and is always taken.
  The `beq` branch at 0x1004eee8 targets 0x1004f0b8 and is always taken.
  The `bne` branch at 0x1004eef8 targets 0x1004ef64, is taken when a7(?) != t0(=0x9), and falls through when a7(?) == t0(=0x9).
  The `beq` branch at 0x1004ef1c targets 0x1004ef5c, is taken when t1(?) >= t2(?) (signed), and falls through when t1(?) < t2(?) (signed).
  The `bne` branch at 0x1004ef54 targets 0x1004ef24, is taken when t8(?) < t9(?) (signed), and falls through when t8(?) >= t9(?) (signed).
  The `beq` branch at 0x1004ef5c targets 0x1004f0b8 and is always taken.
  The `beq` branch at 0x1004ef6c targets 0x1004f034, is taken when a0(?) >= 0x20 (signed), and falls through when a0(?) < 0x20 (signed).
  The `beq` branch at 0x1004efd0 targets 0x1004f008, is taken when (a1(?) & 0x2) == 0, and falls through when (a1(?) & 0x2) != 0.
  The `beq` branch at 0x1004f000 targets 0x1004f014 and is always taken.
  The `beq` branch at 0x1004f02c targets 0x1004f0b8 and is always taken.
  The `bne` branch at 0x1004f03c targets 0x1004f094, is taken when a6(?) != a7(=0x7f), and falls through when a6(?) == a7(=0x7f).
  The `beq` branch at 0x1004f08c targets 0x1004f0b8 and is always taken.
  The `bne` branch at 0x1004f0dc targets 0x1004ed14, is taken when a2(?) < a3(=[sym(rl_end)]) (signed), and falls through when a2(?) >= a3(=[sym(rl_end)]) (signed).
  The `bgez` branch at 0x1004f0f8 targets 0x1004f108, is taken when a5(?) >= 0 (signed), and falls through when a5(?) < 0 (signed).
  The `bne` branch at 0x1004f118 targets 0x1004f9b4, is taken when t1(=[sym(_rl_horizontal_scroll_mode)]) != 0, and falls through when t1(=[sym(_rl_horizontal_scroll_mode)]) == 0.
  The `beq` branch at 0x1004f130 targets 0x1004f9b4, is taken when t2(=[sym(term_up)]) == 0, and falls through when t2(=[sym(term_up)]) != 0.
  The `beq` branch at 0x1004f14c targets 0x1004f9b4, is taken when t3(=[[sym(term_up)]]:1) == 0, and falls through when t3(=[[sym(term_up)]]:1) != 0.
  The `beq` branch at 0x1004f178 targets 0x1004f198, is taken when t8(=[sym(rl_display_fixed)]) == 0, and falls through when t8(=[sym(rl_display_fixed)]) != 0.
  The `beq` branch at 0x1004f190 targets 0x1004f9ac, is taken when ra(=[0x1024adb8]) == 0, and falls through when ra(=[0x1024adb8]) != 0.
  The `bne` branch at 0x1004f1b4 targets 0x1004f1c8, is taken when at(?) < v0(=[sym(screenchars)]) (signed), and falls through when at(?) >= v0(=[sym(screenchars)]) (signed).
  The `blez` branch at 0x1004f1f4 targets 0x1004f228, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1004f220 targets 0x1004f22c and is always taken.
  The `bne` branch at 0x1004f244 targets 0x1004f504, is taken when a5(?) < a6(=0x0) (signed), and falls through when a5(?) >= a6(=0x0) (signed).
  The `beq` branch at 0x1004f264 targets 0x1004f284, is taken when t0(=[sym(_rl_vis_botlin)]) >= t1(?) (signed), and falls through when t0(=[sym(_rl_vis_botlin)]) < t1(?) (signed).
  The `beq` branch at 0x1004f27c targets 0x1004f2ec and is always taken.
  The `blez` branch at 0x1004f288 targets 0x1004f2cc, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x1004f2c4 targets 0x1004f2d0 and is always taken.
  The `blez` branch at 0x1004f2f0 targets 0x1004f328, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x1004f320 targets 0x1004f32c and is always taken.
  The `bne` branch at 0x1004f330 targets 0x1004f354, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1004f34c targets 0x1004f358 and is always taken.
  The `bne` branch at 0x1004f35c targets 0x1004f374, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1004f36c targets 0x1004f378 and is always taken.
  The `bne` branch at 0x1004f3e4 targets 0x1004f48c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x1004f3f0 targets 0x1004f48c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1004f410 targets 0x1004f48c, is taken when a5(=[0x1024adcc]) >= a6(?) (signed), and falls through when a5(=[0x1024adcc]) < a6(?) (signed).
  The `beq` branch at 0x1004f43c targets 0x1004f48c, is taken when a6(=[sym(_rl_last_c_pos)]) >= a7(=[0x1024add0]) (signed), and falls through when a6(=[sym(_rl_last_c_pos)]) < a7(=[0x1024add0]) (signed).
  The `bne` branch at 0x1004f490 targets 0x1004f4e4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `blez` branch at 0x1004f49c targets 0x1004f4c0, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x1004f4b8 targets 0x1004f4d0 and is always taken.
  The `beq` branch at 0x1004f4fc targets 0x1004f24c, is taken when a4(?) >= a5(?) (signed), and falls through when a4(?) < a5(?) (signed).
  The `beq` branch at 0x1004f51c targets 0x1004f680, is taken when a7(?) >= t0(=[sym(_rl_vis_botlin)]) (signed), and falls through when a7(?) < t0(=[sym(_rl_vis_botlin)]) (signed).
  The `bne` branch at 0x1004f53c targets 0x1004f680, is taken when t1(=[sym(_rl_vis_botlin)]) < t2(?) (signed), and falls through when t1(=[sym(_rl_vis_botlin)]) >= t2(?) (signed).
  The `blez` branch at 0x1004f548 targets 0x1004f58c, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x1004f584 targets 0x1004f590 and is always taken.
  The `bne` branch at 0x1004f5f4 targets 0x1004f628, is taken when ra(=[sym(_rl_vis_botlin)]) != at(?), and falls through when ra(=[sym(_rl_vis_botlin)]) == at(?).
  The `beq` branch at 0x1004f620 targets 0x1004f63c and is always taken.
  The `beq` branch at 0x1004f678 targets 0x1004f544, is taken when ra(=[sym(_rl_vis_botlin)]) >= at(?) (signed), and falls through when ra(=[sym(_rl_vis_botlin)]) < at(?) (signed).
  The `blez` branch at 0x1004f6c0 targets 0x1004f6f4, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x1004f6ec targets 0x1004f6f8 and is always taken.
  The `beq` branch at 0x1004f724 targets 0x1004f784, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1004f748 targets 0x1004f784, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x1004f754 targets 0x1004f784, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x1004f7a4 targets 0x1004f890, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `blez` branch at 0x1004f7b0 targets 0x1004f890, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `blez` branch at 0x1004f7c8 targets 0x1004f890, is taken when a2(=[sym(_rl_last_c_pos)]) <= 0 (signed), and falls through when a2(=[sym(_rl_last_c_pos)]) > 0 (signed).
  The `bne` branch at 0x1004f7e8 targets 0x1004f890, is taken when a3(?) < a4(=[sym(_rl_last_c_pos)]) (signed), and falls through when a3(?) >= a4(=[sym(_rl_last_c_pos)]) (signed).
  The `beq` branch at 0x1004f800 targets 0x1004f890, is taken when a5(=[0x1024adbc]) == 0, and falls through when a5(=[0x1024adbc]) != 0.
  The `beq` branch at 0x1004f818 targets 0x1004f854, is taken when a6(=[sym(term_cr)]) == 0, and falls through when a6(=[sym(term_cr)]) != 0.
  The `blez` branch at 0x1004f894 targets 0x1004f8cc, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x1004f8c4 targets 0x1004f8d0 and is always taken.
  The `beq` branch at 0x1004f8ec targets 0x1004f960, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x1004f8f8 targets 0x1004f960, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x1004f918 targets 0x1004f960, is taken when t8(?) >= t9(=[sym(_rl_last_c_pos)]) (signed), and falls through when t8(?) < t9(=[sym(_rl_last_c_pos)]) (signed).
  The `beq` branch at 0x1004f974 targets 0x1004f9ac, is taken when a3(=[sym(_rl_last_c_pos)]) == a4(?), and falls through when a3(=[sym(_rl_last_c_pos)]) != a4(?).
  The `beq` branch at 0x1004f9ac targets 0x1004ff04 and is always taken.
  The `beq` branch at 0x1004fa00 targets 0x1004fa24, is taken when a3(=[0x1024ad2c]) == 0, and falls through when a3(=[0x1024ad2c]) != 0.
  The `beq` branch at 0x1004fa1c targets 0x1004fa2c and is always taken.
  The `beq` branch at 0x1004fa78 targets 0x1004fae0, is taken when t2(=[sym(screenwidth)]-2) >= t3(?) (signed), and falls through when t2(=[sym(screenwidth)]-2) < t3(?) (signed).
  The `bgez` branch at 0x1004fa98 targets 0x1004faa4, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `beq` branch at 0x1004faa8 targets 0x1004fad8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `blez` branch at 0x1004fab4 targets 0x1004fad8, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1004fac8 targets 0x1004fad8, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `beq` branch at 0x1004fad8 targets 0x1004fb9c and is always taken.
  The `beq` branch at 0x1004fafc targets 0x1004fb10, is taken when a5(?) >= a6(=[sym(screenwidth)]-2) (signed), and falls through when a5(?) < a6(=[sym(screenwidth)]-2) (signed).
  The `beq` branch at 0x1004fb08 targets 0x1004fb9c and is always taken.
  The `bgtz` branch at 0x1004fb14 targets 0x1004fb88, is taken when a7(?) > 0 (signed), and falls through when a7(?) <= 0 (signed).
  The `beq` branch at 0x1004fb50 targets 0x1004fb80, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `blez` branch at 0x1004fb5c targets 0x1004fb80, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x1004fb70 targets 0x1004fb80, is taken when at(?) >= v0(?) (signed), and falls through when at(?) < v0(?) (signed).
  The `beq` branch at 0x1004fb80 targets 0x1004fb9c and is always taken.
  The `blez` branch at 0x1004fba0 targets 0x1004fbbc, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `bne` branch at 0x1004fbc0 targets 0x1004fbd8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1004fbd0 targets 0x1004fbdc and is always taken.
  The `beq` branch at 0x1004fc0c targets 0x1004fc2c, is taken when a7(?) >= t0(?) (signed), and falls through when a7(?) < t0(?) (signed).
  The `beq` branch at 0x1004fc3c targets 0x1004fc78, is taken when t9(=[sym(rl_display_fixed)]) == 0, and falls through when t9(=[sym(rl_display_fixed)]) != 0.
  The `bne` branch at 0x1004fc54 targets 0x1004fc78, is taken when ra(=[0x1024adb8]) != 0, and falls through when ra(=[0x1024adb8]) == 0.
  The `beq` branch at 0x1004fc70 targets 0x1004ff04, is taken when at(=[0x1024ad2c]) == v0(?), and falls through when at(=[0x1024ad2c]) != v0(?).
  The `beq` branch at 0x1004fc8c targets 0x1004fca0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1004fc98 targets 0x1004fca8 and is always taken.
  The `bne` branch at 0x1004fd40 targets 0x1004fd58, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1004fd50 targets 0x1004fd5c and is always taken.
  The `bne` branch at 0x1004fd7c targets 0x1004fd94, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1004fd8c targets 0x1004fd98 and is always taken.
  The `beq` branch at 0x1004fdb0 targets 0x1004fe28, is taken when a6(=[0x1024adcc]) >= a7(?) (signed), and falls through when a6(=[0x1024adcc]) < a7(?) (signed).
  The `bne` branch at 0x1004fdcc targets 0x1004fe28, is taken when a7(=[sym(_rl_last_c_pos)]) != t0(?), and falls through when a7(=[sym(_rl_last_c_pos)]) == t0(?).
  The `beq` branch at 0x1004fdec targets 0x1004fe28, is taken when t0(?) >= t1(=[0x1024add0]) (signed), and falls through when t0(?) < t1(=[0x1024add0]) (signed).
  The `bne` branch at 0x1004fe2c targets 0x1004fe44, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x1004fe3c targets 0x1004fe48 and is always taken.
  The `beq` branch at 0x1004fe90 targets 0x1004feb8, is taken when v1(=[sym(screenwidth)]) >= a0(=[0x1024add0]) (signed), and falls through when v1(=[sym(screenwidth)]) < a0(=[0x1024add0]) (signed).
  The `beq` branch at 0x1004ff90 targets 0x1004ffc8, is taken when a1(=[sym(_rl_horizontal_scroll_mode)]) == 0, and falls through when a1(=[sym(_rl_horizontal_scroll_mode)]) != 0.
  The `beq` branch at 0x1004ffa8 targets 0x1004ffc8, is taken when a7(=[0x1024ad2c]) == 0, and falls through when a7(=[0x1024ad2c]) != 0.
  The `beq` branch at 0x1004ffc0 targets 0x1004ffdc and is always taken.
  The return at 0x1004ffe8 has v0 = one of [0x1024ad34], ret(fflush).

- `rl_on_new_line` in `usr/gfx/KONA/bin/kpm` at 0x10050d10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10050d10-0x10050dac (156 bytes).
  It occupies 156 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x10050d2c, `lw` at 0x10050d44, `lw` at 0x10050d80.
  2 such `lw` accesses load 4 bytes from abs 0x1024ad30, including `lw` at 0x10050d30, `lw` at 0x10050d48.
  The `sb` at 0x10050d4c stores 1 byte to [0x1024ad30] +0x0.
  The `lw` at 0x10050d5c loads 4 bytes from abs 0x1014c990.
  The `sw` at 0x10050d60 stores 4 bytes to sym(_rl_last_v_pos) +0x0.
  The `lw` at 0x10050d6c loads 4 bytes from abs 0x1014c98c.
  The `sw` at 0x10050d70 stores 4 bytes to sym(_rl_last_c_pos) +0x0.
  The `sw` at 0x10050d84 stores 4 bytes to abs 0x1024ad2c.
  The `lw` at 0x10050d90 loads 4 bytes from abs 0x1014c994.
  The `sw` at 0x10050d94 stores 4 bytes to sym(_rl_vis_botlin) +0x0.
  The `beq` branch at 0x10050d34 targets 0x10050d50, is taken when v0(=[0x1024ad30]) == 0, and falls through when v0(=[0x1024ad30]) != 0.
  The return at 0x10050da4 has v0 = 0x0.

- `rl_forced_update_display` in `usr/gfx/KONA/bin/kpm` at 0x10050db0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10050db0-0x10050e8c (220 bytes).
  It occupies 220 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x10050dd0, `lw` at 0x10050de8, `lw` at 0x10050e44.
  2 such `lw` accesses load 4 bytes from abs 0x1024ad30, including `lw` at 0x10050dd4, `lw` at 0x10050dec.
  The `lbu` at 0x10050df8 loads 1 byte from [0x1024ad30] +0x0.
  The `sb` at 0x10050e14 stores 1 byte to ?.
  The `lbu` at 0x10050e1c loads 1 byte from ?.
  The `lw` at 0x10050e30 loads 4 bytes from abs 0x1014c5d4.
  The `lw` at 0x10050e48 loads 4 bytes from abs 0x1024adb8.
  The `sw` at 0x10050e5c stores 4 bytes to abs 0x1024adb8.
  The `lw` at 0x10050e68 loads 4 bytes from abs 0x1014c5d0.
  The `jal` at 0x10050e34 calls rl_on_new_line [0x10050d10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10050e6c calls rl_redisplay [0x1004e7b0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10050dd8 targets 0x10050e28, is taken when at(=[0x1024ad30]) == 0, and falls through when at(=[0x1024ad30]) != 0.
  The `beq` branch at 0x10050dfc targets 0x10050e28, is taken when v1(=[[0x1024ad30]]:1) == 0, and falls through when v1(=[[0x1024ad30]]:1) != 0.
  The `bne` branch at 0x10050e20 targets 0x10050e04, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The return at 0x10050e84 has v0 = 0x0.

- `_rl_move_cursor_relative` in `usr/gfx/KONA/bin/kpm` at 0x10050e90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10050e90-0x100511f4 (868 bytes).
  It occupies 868 bytes.
  9 such `lw` accesses load 4 bytes from abs 0x1014c98c, including `lw` at 0x10050eb8, `lw` at 0x10050f14, `lw` at 0x10050f38.
  7 such `lw` accesses load 4 bytes from sym(_rl_last_c_pos) +0x0, including `lw` at 0x10050ebc, `lw` at 0x10050f18, `lw` at 0x10050f3c.
  The `lw` at 0x10050edc loads 4 bytes from abs 0x1014c990.
  The `lw` at 0x10050ee0 loads 4 bytes from sym(_rl_last_v_pos) +0x0.
  The `lw` at 0x10050ef4 loads 4 bytes from abs 0x1014bff4.
  The `lw` at 0x10050ef8 loads 4 bytes from abs 0x1024adcc.
  The `lw` at 0x10050f5c loads 4 bytes from abs 0x1014c8e8.
  The `lw` at 0x10050f60 loads 4 bytes from sym(term_xn) +0x0.
  The `lw` at 0x10050f74 loads 4 bytes from abs 0x1014c8ec.
  The `lw` at 0x10050f78 loads 4 bytes from sym(screenwidth) +0x0.
  The `lw` at 0x10050f90 loads 4 bytes from abs 0x1014c914.
  The `lw` at 0x10050f94 loads 4 bytes from sym(term_cr) +0x0.
  The `lw` at 0x10050fa4 loads 4 bytes from abs 0x1014c500.
  The `lw` at 0x10050fb0 loads 4 bytes from abs 0x1014c258.
  2 such `sw` accesses store 4 bytes to sym(_rl_last_c_pos) +0x0, including `sw` at 0x10050fc8, `sw` at 0x100511dc.
  The `lw` at 0x1005101c loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10051020 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10051038, `lbu` at 0x100510c4, `lbu` at 0x10051134.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x10051044, `lw` at 0x10051078, `lw` at 0x10051090.
  8 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x10051048, `lw` at 0x1005107c, `lw` at 0x10051094.
  The `lw` at 0x10051054 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10051080, `lw` at 0x100510ac.
  The `sw` at 0x10051098 stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x100510e0 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x1005110c, `lw` at 0x10051148.
  The `sw` at 0x10051124 stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x1005114c stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  The `lw` at 0x100511c0 loads 4 bytes from abs 0x1014c508.
  The `jalr` at 0x10050fb4 calls tputs with a0=[sym(term_cr)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `jalr` at 0x10051058 calls __semputc with a0=?, a1=[sym(rl_outstream)], a2=?, a3=?, a6=[sym(__us_rsthread_stdio)].
  The `jalr` at 0x100510e4 calls __flsbuf with a0=?, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)], a6=[sym(__us_rsthread_stdio)].
  The `jal` at 0x100511c4 calls backspace [0x10048140] with a0=?, a1=a0 at entry (arg0), a2=?, a3=a0 at entry (arg0).
  The `bne` branch at 0x10050ec4 targets 0x10050ed4, is taken when at(=[sym(_rl_last_c_pos)]) != v0(=a0), and falls through when at(=[sym(_rl_last_c_pos)]) == v0(=a0).
  The `beq` branch at 0x10050ecc targets 0x100511e0 and is always taken.
  The `bne` branch at 0x10050ee4 targets 0x10050f08, is taken when v1(=[sym(_rl_last_v_pos)]) != 0, and falls through when v1(=[sym(_rl_last_v_pos)]) == 0.
  The `beq` branch at 0x10050f00 targets 0x10050f0c and is always taken.
  The `bne` branch at 0x10050f4c targets 0x10050f88, is taken when a1(=a0+1) < a2(?) (signed), and falls through when a1(=a0+1) >= a2(?) (signed).
  The `beq` branch at 0x10050f64 targets 0x10050fcc, is taken when a3(=[sym(term_xn)]) == 0, and falls through when a3(=[sym(term_xn)]) != 0.
  The `bne` branch at 0x10050f80 targets 0x10050fcc, is taken when a4(=[sym(screenwidth)]) != a5(?), and falls through when a4(=[sym(screenwidth)]) == a5(?).
  The `beq` branch at 0x10050fe4 targets 0x10051184, is taken when a2(=[sym(_rl_last_c_pos)]) >= a3(=a0) (signed), and falls through when a2(=[sym(_rl_last_c_pos)]) < a3(=a0) (signed).
  The `beq` branch at 0x1005100c targets 0x1005117c, is taken when a3(=[sym(_rl_last_c_pos)]) >= a4(=a0) (signed), and falls through when a3(=[sym(_rl_last_c_pos)]) < a4(=a0) (signed).
  The `beq` branch at 0x10051024 targets 0x10051070, is taken when a6(=[sym(__us_rsthread_stdio)]) == 0, and falls through when a6(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10051068 targets 0x1005115c and is always taken.
  The `bgez` branch at 0x100510b0 targets 0x100510fc, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x100510f4 targets 0x10051154 and is always taken.
  The `bne` branch at 0x10051174 targets 0x10051014, is taken when a7(?) < t0(=a0) (signed), and falls through when a7(?) >= t0(=a0) (signed).
  The `beq` branch at 0x1005117c targets 0x100511cc and is always taken.
  The `beq` branch at 0x10051198 targets 0x100511cc, is taken when t2(=[sym(_rl_last_c_pos)]) == t3(=a0), and falls through when t2(=[sym(_rl_last_c_pos)]) != t3(=a0).
  The return at 0x100511ec has v0 = one of a0, ?.

- `_rl_move_vert` in `usr/gfx/KONA/bin/kpm` at 0x10051200 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051200-0x10051504 (772 bytes).
  It occupies 772 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c990, including `lw` at 0x10051224, `lw` at 0x1005126c, `lw` at 0x100514e8.
  2 such `lw` accesses load 4 bytes from sym(_rl_last_v_pos) +0x0, including `lw` at 0x10051228, `lw` at 0x10051270.
  The `lw` at 0x10051240 loads 4 bytes from abs 0x1014c8f0.
  The `lw` at 0x10051244 loads 4 bytes from sym(screenheight) +0x0.
  The `lw` at 0x100512a8 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x100512ac loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x100512c4, `lw` at 0x100512fc, `lw` at 0x10051314.
  8 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x100512c8, `lw` at 0x10051300, `lw` at 0x10051318.
  The `lw` at 0x100512d4 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10051304, `lw` at 0x10051330.
  The `sw` at 0x1005131c stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x10051358 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x10051384, `lw` at 0x100513b4.
  The `sw` at 0x1005139c stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x100513b8 stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  The `lw` at 0x100513f0 loads 4 bytes from abs 0x1014c914.
  The `lw` at 0x100513f4 loads 4 bytes from sym(term_cr) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c500, including `lw` at 0x10051404, `lw` at 0x100514a0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c258, including `lw` at 0x10051410, `lw` at 0x100514ac.
  The `lw` at 0x10051424 loads 4 bytes from abs 0x1014c98c.
  The `sw` at 0x10051428 stores 4 bytes to sym(_rl_last_c_pos) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c940, including `lw` at 0x1005143c, `lw` at 0x10051454, `lw` at 0x1005148c.
  3 such `lw` accesses load 4 bytes from sym(term_up) +0x0, including `lw` at 0x10051440, `lw` at 0x10051458, `lw` at 0x10051490.
  The `lbu` at 0x1005145c loads 1 byte from [sym(term_up)] +0x0.
  The `sw` at 0x100514ec stores 4 bytes to sym(_rl_last_v_pos) +0x0.
  The `jalr` at 0x100512d8 calls __semputc with a0=0xa, a1=[sym(rl_outstream)], a2=?, a3=?, a4=[sym(__us_rsthread_stdio)].
  The `jalr` at 0x1005135c calls __flsbuf with a0=0xa, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)].
  The `jalr` at 0x10051414 calls tputs with a0=[sym(term_cr)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `jalr` at 0x100514b0 calls tputs with a0=[sym(term_up)], a1=0x1, a2=sym(_rl_output_character_function), a3=?.
  The `beq` branch at 0x10051230 targets 0x10051258, is taken when at(=[sym(_rl_last_v_pos)]) == v0(=a0), and falls through when at(=[sym(_rl_last_v_pos)]) != v0(=a0).
  The `beq` branch at 0x10051250 targets 0x10051260, is taken when v1(=[sym(screenheight)]) >= a0 (signed), and falls through when v1(=[sym(screenheight)]) < a0 (signed).
  The `beq` branch at 0x10051258 targets 0x100514f0 and is always taken.
  The `blez` branch at 0x10051280 targets 0x10051434, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x10051298 targets 0x100513e8, is taken when a2(=0x0) >= a3(?) (signed), and falls through when a2(=0x0) < a3(?) (signed).
  The `beq` branch at 0x100512b0 targets 0x100512f4, is taken when a4(=[sym(__us_rsthread_stdio)]) == 0, and falls through when a4(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x100512ec targets 0x100513c8 and is always taken.
  The `bgez` branch at 0x10051334 targets 0x10051374, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x1005136c targets 0x100513c0 and is always taken.
  The `bne` branch at 0x100513e0 targets 0x100512a0, is taken when a7(?) < t0(?) (signed), and falls through when a7(?) >= t0(?) (signed).
  The `beq` branch at 0x1005142c targets 0x100514dc and is always taken.
  The `beq` branch at 0x10051444 targets 0x100514dc, is taken when a2(=[sym(term_up)]) == 0, and falls through when a2(=[sym(term_up)]) != 0.
  The `beq` branch at 0x10051460 targets 0x100514dc, is taken when a3(=[[sym(term_up)]]:1) == 0, and falls through when a3(=[[sym(term_up)]]:1) != 0.
  The `beq` branch at 0x1005147c targets 0x100514dc, is taken when a4(=0x0) >= a5(?) (signed), and falls through when a4(=0x0) < a5(?) (signed).
  The `bne` branch at 0x100514d4 targets 0x10051484, is taken when a1(?) < a2(?) (signed), and falls through when a1(?) >= a2(?) (signed).
  The return at 0x100514fc has v0 = one of a0, ?.

- `rl_show_char` in `usr/gfx/KONA/bin/kpm` at 0x10051510 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051510-0x1005178c (636 bytes).
  It occupies 636 bytes.
  The `lw` at 0x1005155c loads 4 bytes from abs 0x1014c8fc.
  The `lw` at 0x10051560 loads 4 bytes from sym(_rl_output_meta_chars) +0x0.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x10051574, `lw` at 0x100515e4, `lw` at 0x1005164c.
  11 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x10051578, `lw` at 0x100515e8, `lw` at 0x10051650.
  2 such `lw` accesses load 4 bytes from abs 0x1014bffc, including `lw` at 0x10051584, `lw` at 0x100515f4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c128, including `lw` at 0x10051594, `lw` at 0x10051604.
  The `lw` at 0x10051630 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10051634 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  The `lw` at 0x1005165c loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10051688, `lw` at 0x100516b4.
  The `sw` at 0x100516a0 stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x100516dc loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x10051708, `lw` at 0x1005173c.
  The `sw` at 0x10051720 stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x10051740 stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  The `lw` at 0x10051768 loads 4 bytes from abs 0x1014c140.
  The `jalr` at 0x10051598 calls fprintf with a0=[sym(rl_outstream)], a1=0x10092ba4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10051608 calls fprintf with a0=[sym(rl_outstream)], a1=0x10092ba8, a2=?, a3=?, a6=0x9.
  The `jalr` at 0x10051660 calls __semputc with a0=?, a1=[sym(rl_outstream)], a2=?, a3=[sym(__us_rsthread_stdio)].
  The `jalr` at 0x100516e0 calls __flsbuf with a0=?, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)].
  The `jalr` at 0x1005176c calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x1005153c targets 0x100515bc, is taken when at(=a0) < 0x80 (signed), and falls through when at(=a0) >= 0x80 (signed).
  The `beq` branch at 0x1005154c targets 0x100515bc, is taken when a0 >= 0x100 (signed), and falls through when a0 < 0x100 (signed).
  The `bne` branch at 0x10051564 targets 0x100515bc, is taken when a1(=[sym(_rl_output_meta_chars)]) != 0, and falls through when a1(=[sym(_rl_output_meta_chars)]) == 0.
  The `beq` branch at 0x100515c4 targets 0x10051628, is taken when a4(?) >= 0x20 (signed), and falls through when a4(?) < 0x20 (signed).
  The `beq` branch at 0x100515d4 targets 0x10051628, is taken when a5(?) == a6(=0x9), and falls through when a5(?) != a6(=0x9).
  The `beq` branch at 0x10051638 targets 0x10051678, is taken when a3(=[sym(__us_rsthread_stdio)]) == 0, and falls through when a3(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10051670 targets 0x10051750 and is always taken.
  The `bgez` branch at 0x100516b8 targets 0x100516f8, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x100516f0 targets 0x10051748 and is always taken.
  The return at 0x10051784 has v0 = one of 0x1, 0x3, 0x5.

- `rl_character_len` in `usr/gfx/KONA/bin/kpm` at 0x10051790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051790-0x100518ac (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0x100517dc loads 4 bytes from abs 0x1014c8fc.
  The `lw` at 0x100517e0 loads 4 bytes from sym(_rl_output_meta_chars) +0x0.
  The `lw` at 0x1005184c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10051850 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10051864 loads 4 bytes from ?.
  The `bne` branch at 0x100517bc targets 0x10051814, is taken when v0(?) < 0x80 (signed), and falls through when v0(?) >= 0x80 (signed).
  The `beq` branch at 0x100517cc targets 0x10051814, is taken when a3(?) >= 0x100 (signed), and falls through when a3(?) < 0x100 (signed).
  The `bne` branch at 0x100517e4 targets 0x100517fc, is taken when a4(=[sym(_rl_output_meta_chars)]) != 0, and falls through when a4(=[sym(_rl_output_meta_chars)]) == 0.
  The `beq` branch at 0x100517f4 targets 0x10051804 and is always taken.
  The `beq` branch at 0x1005180c targets 0x10051898 and is always taken.
  The `bne` branch at 0x1005181c targets 0x10051844, is taken when t0(?) != t1(=0x9), and falls through when t0(?) == t1(=0x9).
  The `beq` branch at 0x1005183c targets 0x10051898 and is always taken.
  The `beq` branch at 0x1005186c targets 0x10051884, is taken when (t3(?) & 0xc097) == 0, and falls through when (t3(?) & 0xc097) != 0.
  The `beq` branch at 0x1005187c targets 0x1005188c and is always taken.
  The return at 0x100518a4 has v0 = one of 0x1, 0x4, ?, 0x2.

- `rl_message` in `usr/gfx/KONA/bin/kpm` at 0x100518b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100518b0-0x10051988 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x10051908 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x10051918, `lw` at 0x10051944.
  The `lw` at 0x10051930 loads 4 bytes from abs 0x1014c18c.
  The `lw` at 0x10051954 loads 4 bytes from abs 0x1014c988.
  The `sw` at 0x10051958 stores 4 bytes to sym(rl_display_prompt) +0x0.
  The `lw` at 0x10051964 loads 4 bytes from abs 0x1014c5d0.
  The `jalr` at 0x10051934 calls vsprintf with a0=0x1024ad38, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x10051968 calls rl_redisplay [0x1004e7b0] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10051980 has v0 = 0x0.

- `rl_clear_message` in `usr/gfx/KONA/bin/kpm` at 0x10051990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051990-0x100519f4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x100519b0 loads 4 bytes from abs 0x1014c8c0.
  The `lw` at 0x100519b4 loads 4 bytes from sym(rl_prompt) +0x0.
  The `lw` at 0x100519c0 loads 4 bytes from abs 0x1014c988.
  The `sw` at 0x100519c4 stores 4 bytes to sym(rl_display_prompt) +0x0.
  The `lw` at 0x100519d0 loads 4 bytes from abs 0x1014c5d0.
  The `jal` at 0x100519d4 calls rl_redisplay [0x1004e7b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100519ec has v0 = 0x0.

- `rl_reset_line_state` in `usr/gfx/KONA/bin/kpm` at 0x10051a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051a00-0x10051ab0 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x10051a20 loads 4 bytes from abs 0x1014c5d4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8c0, including `lw` at 0x10051a34, `lw` at 0x10051a4c.
  2 such `lw` accesses load 4 bytes from sym(rl_prompt) +0x0, including `lw` at 0x10051a38, `lw` at 0x10051a50.
  The `lw` at 0x10051a68 loads 4 bytes from abs 0x1014bffc.
  The `lw` at 0x10051a78 loads 4 bytes from abs 0x1014c988.
  The `sw` at 0x10051a80 stores 4 bytes to sym(rl_display_prompt) +0x0.
  The `lw` at 0x10051a90 loads 4 bytes from abs 0x1014bff4.
  The `sw` at 0x10051a94 stores 4 bytes to abs 0x1024adb8.
  The `jal` at 0x10051a24 calls rl_on_new_line [0x10050d10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10051a3c targets 0x10051a60, is taken when at(=[sym(rl_prompt)]) == 0, and falls through when at(=[sym(rl_prompt)]) != 0.
  The `beq` branch at 0x10051a58 targets 0x10051a70 and is always taken.
  The return at 0x10051aa8 has v0 = 0x0.

- `_rl_erase_at_end_of_line` in `usr/gfx/KONA/bin/kpm` at 0x10051ab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10051ab0-0x10051d14 (612 bytes).
  It occupies 612 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c508, including `lw` at 0x10051ad8, `lw` at 0x10051c4c.
  The `lw` at 0x10051b04 loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x10051b08 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x10051b20, `lw` at 0x10051b54, `lw` at 0x10051b6c.
  8 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x10051b24, `lw` at 0x10051b58, `lw` at 0x10051b70.
  The `lw` at 0x10051b30 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10051b5c, `lw` at 0x10051b88.
  The `sw` at 0x10051b74 stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x10051bb0 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x10051bdc, `lw` at 0x10051c0c.
  The `sw` at 0x10051bf4 stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x10051c10 stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  3 such `lw` accesses load 4 bytes from abs 0x1014c98c, including `lw` at 0x10051c78, `lw` at 0x10051c8c, `lw` at 0x10051c9c.
  2 such `lw` accesses load 4 bytes from sym(_rl_last_c_pos) +0x0, including `lw` at 0x10051c7c, `lw` at 0x10051ca0.
  The `sw` at 0x10051c90 stores 4 bytes to sym(_rl_last_c_pos) +0x0.
  The `lw` at 0x10051cac loads 4 bytes from abs 0x1014bff4.
  The `lw` at 0x10051cb0 loads 4 bytes from abs 0x1024ad30.
  The `sb` at 0x10051cb8 stores 1 byte to ([sym(_rl_last_c_pos)] + [0x1024ad30]) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c984, including `lw` at 0x10051ce4, `lw` at 0x10051cf8.
  The `lw` at 0x10051ce8 loads 4 bytes from sym(rl_display_fixed) +0x0.
  The `sw` at 0x10051cfc stores 4 bytes to sym(rl_display_fixed) +0x0.
  The `jal` at 0x10051adc calls backspace [0x10048140] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10051b34 calls __semputc with a0=0x20, a1=[sym(rl_outstream)], a2=?, a3=?.
  The `jalr` at 0x10051bb4 calls __flsbuf with a0=0x20, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)].
  The `jal` at 0x10051c50 calls backspace [0x10048140] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10051af4 targets 0x10051c40, is taken when at(=0x0) >= v0(=a0) (signed), and falls through when at(=0x0) < v0(=a0) (signed).
  The `beq` branch at 0x10051b0c targets 0x10051b4c, is taken when v1(=[sym(__us_rsthread_stdio)]) == 0, and falls through when v1(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x10051b44 targets 0x10051c20 and is always taken.
  The `bgez` branch at 0x10051b8c targets 0x10051bcc, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x10051bc4 targets 0x10051c18 and is always taken.
  The `bne` branch at 0x10051c38 targets 0x10051afc, is taken when a7(?) < t0(=a0) (signed), and falls through when a7(?) >= t0(=a0) (signed).
  The `beq` branch at 0x10051c68 targets 0x10051cdc, is taken when ra(=0x0) >= at(=a0) (signed), and falls through when ra(=0x0) < at(=a0) (signed).
  The `bne` branch at 0x10051cd4 targets 0x10051c70, is taken when v0(?) < v1(=a0) (signed), and falls through when v0(?) >= v1(=a0) (signed).
  The return at 0x10051d0c has v0 = one of ret(backspace), ?.

- `_rl_update_final` in `usr/gfx/KONA/bin/kpm` at 0x10052320 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10052320-0x1005268c (876 bytes).
  It occupies 876 bytes.
  7 such `lw` accesses load 4 bytes from abs 0x1014c994, including `lw` at 0x10052344, `lw` at 0x1005237c, `lw` at 0x100523a4.
  5 such `lw` accesses load 4 bytes from sym(_rl_vis_botlin) +0x0, including `lw` at 0x10052348, `lw` at 0x10052380, `lw` at 0x100523a8.
  2 such `lw` accesses load 4 bytes from abs 0x1014bff4, including `lw` at 0x1005235c, `lw` at 0x10052418.
  2 such `lw` accesses load 4 bytes from abs 0x1024ad30, including `lw` at 0x10052360, `lw` at 0x1005241c.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8ec, including `lw` at 0x1005236c, `lw` at 0x10052428, `lw` at 0x10052458.
  6 such `lw` accesses load 4 bytes from sym(screenwidth) +0x0, including `lw` at 0x10052370, `lw` at 0x1005242c, `lw` at 0x1005245c.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10052390, `lbu` at 0x100524c8, `lbu` at 0x10052564.
  2 such `sw` accesses store 4 bytes to sym(_rl_vis_botlin) +0x0, including `sw` at 0x100523bc, `sw` at 0x10052618.
  The `lw` at 0x100523e0 loads 4 bytes from abs 0x1014c5e0.
  The `lw` at 0x10052400 loads 4 bytes from abs 0x1014c8e8.
  The `lw` at 0x10052404 loads 4 bytes from sym(term_xn) +0x0.
  The `lw` at 0x10052470 loads 4 bytes from abs 0x1014c5dc.
  The `lw` at 0x10052488 loads 4 bytes from abs 0x1014c008.
  The `lw` at 0x1005249c loads 4 bytes from abs 0x1014c0c4.
  The `lw` at 0x100524a0 loads 4 bytes from sym(__us_rsthread_stdio) +0x0.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x100524d4, `lw` at 0x10052508, `lw` at 0x10052520.
  9 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x100524d8, `lw` at 0x1005250c, `lw` at 0x10052524.
  The `lw` at 0x100524e4 loads 4 bytes from abs 0x1014c214.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x0, including `lw` at 0x10052510, `lw` at 0x1005253c.
  The `sw` at 0x10052528 stores 4 bytes to [sym(rl_outstream)] +0x0.
  The `lw` at 0x10052580 loads 4 bytes from abs 0x1014c218.
  2 such `lw` accesses load 4 bytes from [sym(rl_outstream)] +0x4, including `lw` at 0x100525ac, `lw` at 0x100525f8.
  The `sw` at 0x100525c4 stores 4 bytes to [sym(rl_outstream)] +0x4.
  The `sb` at 0x100525fc stores 1 byte to [[sym(rl_outstream)]+4] -0x1.
  The `lw` at 0x10052624 loads 4 bytes from abs 0x1014c50c.
  The `lw` at 0x10052648 loads 4 bytes from abs 0x1014c140.
  2 such `lw` accesses load 4 bytes from abs 0x1014c984, including `lw` at 0x1005265c, `lw` at 0x10052670.
  The `lw` at 0x10052660 loads 4 bytes from sym(rl_display_fixed) +0x0.
  The `sw` at 0x10052674 stores 4 bytes to sym(rl_display_fixed) +0x0.
  The `jal` at 0x100523e4 calls _rl_move_vert [0x10051200] with a0=[sym(_rl_vis_botlin)], a1=?, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x10052474 calls _rl_move_cursor_relative [0x10050e90] with a0=[sym(screenwidth)]-1, a1=?, a2=?, a3=[sym(screenwidth)], a4=[sym(_rl_vis_botlin)].
  The `jal` at 0x1005248c calls (unnamed) [0x10051d20] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100524e8 calls __semputc with a0=?, a1=[sym(rl_outstream)], a2=?, a3=?.
  The `jalr` at 0x10052584 calls __flsbuf with a0=?, a1=[sym(rl_outstream)], a2=?, a3=[[sym(rl_outstream)]], a4=[[sym(rl_outstream)]]-1, a5=[sym(rl_outstream)].
  The `jal` at 0x10052628 calls crlf [0x10048360] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005264c calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005234c targets 0x100523c8, is taken when at(=[sym(_rl_vis_botlin)]) == 0, and falls through when at(=[sym(_rl_vis_botlin)]) != 0.
  The `bne` branch at 0x10052394 targets 0x100523c8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x100523f0 targets 0x1005260c, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10052408 targets 0x1005260c, is taken when a2(=[sym(term_xn)]) == 0, and falls through when a2(=[sym(term_xn)]) != 0.
  The `beq` branch at 0x100524a4 targets 0x10052500, is taken when ra(=[sym(__us_rsthread_stdio)]) == 0, and falls through when ra(=[sym(__us_rsthread_stdio)]) != 0.
  The `beq` branch at 0x100524f8 targets 0x1005260c and is always taken.
  The `bgez` branch at 0x10052540 targets 0x1005259c, is taken when a3(=[[sym(rl_outstream)]]) >= 0 (signed), and falls through when a3(=[[sym(rl_outstream)]]) < 0 (signed).
  The `beq` branch at 0x10052594 targets 0x10052604 and is always taken.
  The return at 0x10052684 has v0 = ret(fflush).

- `rl_prep_terminal` in `usr/gfx/KONA/bin/kpm` at 0x10052eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10052eb0-0x100530e0 (560 bytes).
  It occupies 560 bytes.
  The `lw` at 0x10052ed4 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x10052ed8 loads 4 bytes from sym(rl_instream) +0x0.
  The `lhu` at 0x10052edc loads 2 bytes from [sym(rl_instream)] +0xe.
  6 such `lw` accesses load 4 bytes from abs 0x1014c018, including `lw` at 0x10052eec, `lw` at 0x10052f68, `lw` at 0x10052fa8.
  The `lw` at 0x10052ef0 loads 4 bytes from abs 0x1024ae04.
  The `lw` at 0x10052f0c loads 4 bytes from abs 0x1014c020.
  The `lw` at 0x10052f28 loads 4 bytes from abs 0x1014c024.
  3 such `lw` accesses load 4 bytes from abs 0x1014c028, including `lw` at 0x10052f48, `lw` at 0x10053014, `lw` at 0x100530c0.
  The `sd` at 0x10052f74 stores 8 bytes to abs 0x1024ae08.
  The `sd` at 0x10052f7c stores 8 bytes to abs 0x1024ae10.
  The `sd` at 0x10052f84 stores 8 bytes to abs 0x1024ae18.
  The `sd` at 0x10052f8c stores 8 bytes to abs 0x1024ae20.
  The `sd` at 0x10052f94 stores 8 bytes to abs 0x1024ae28.
  The `sd` at 0x10052f9c stores 8 bytes to abs 0x1024ae30.
  The `ld` at 0x10052fb0 loads 8 bytes from abs 0x1024ae08.
  The `ld` at 0x10052fb4 loads 8 bytes from abs 0x1024ae10.
  The `ld` at 0x10052fb8 loads 8 bytes from abs 0x1024ae18.
  The `ld` at 0x10052fbc loads 8 bytes from abs 0x1024ae20.
  The `ld` at 0x10052fc0 loads 8 bytes from abs 0x1024ae28.
  The `ld` at 0x10052fc4 loads 8 bytes from abs 0x1024ae30.
  The `lw` at 0x10052fd8 loads 4 bytes from abs 0x1014c02c.
  The `lw` at 0x10052ff4 loads 4 bytes from abs 0x1014c030.
  The `lw` at 0x10053034 loads 4 bytes from abs 0x1024add8.
  The `sw` at 0x1005304c stores 4 bytes to abs 0x1024add8.
  The `lw` at 0x1005305c loads 4 bytes from abs 0x1014c034.
  The `lw` at 0x10053074 loads 4 bytes from abs 0x1014c038.
  The `lw` at 0x10053088 loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x1005308c loads 4 bytes from sym(rl_outstream) +0x0.
  The `lw` at 0x10053098 loads 4 bytes from abs 0x1014c140.
  The `sw` at 0x100530b4 stores 4 bytes to abs 0x1024ae04.
  The `jal` at 0x10052f10 calls (unnamed) [0x10052690] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10052f2c calls (unnamed) [0x10052b40] with a0=[[sym(rl_instream)]+14]:2, a1=sp-88, a2=?, a3=?.
  The `jal` at 0x10052f4c calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10052fdc calls (unnamed) [0x10052d50] with a0=a0 at entry (arg0), a1=[0x1024ae08]:8, a2=[0x1024ae10]:8, a3=[0x1024ae18]:8, a4=[0x1024ae20]:8, a5=[0x1024ae28]:8, a6=[0x1024ae30]:8, a7=sp-88.
  The `jal` at 0x10052ff8 calls (unnamed) [0x10052c90] with a0=[[sym(rl_instream)]+14]:2, a1=sp-88, a2=?, a3=?.
  The `jal` at 0x10053018 calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10053060 calls (unnamed) [0x10052970] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10053078 calls (unnamed) [0x10052a60] with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005309c calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `jal` at 0x100530c4 calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10052ef4 targets 0x10052f04, is taken when at(=[0x1024ae04]) == 0, and falls through when at(=[0x1024ae04]) != 0.
  The `beq` branch at 0x10052efc targets 0x100530cc and is always taken.
  The `bgez` branch at 0x10052f38 targets 0x10052f5c, is taken when v0(=ret(0x10052b40)) >= 0 (signed), and falls through when v0(=ret(0x10052b40)) < 0 (signed).
  The `beq` branch at 0x10052f54 targets 0x100530cc and is always taken.
  The `bgez` branch at 0x10053004 targets 0x10053028, is taken when v0(=ret(0x10052c90)) >= 0 (signed), and falls through when v0(=ret(0x10052c90)) < 0 (signed).
  The `beq` branch at 0x10053020 targets 0x100530cc and is always taken.
  The `beq` branch at 0x10053038 targets 0x10053050, is taken when ra(=[0x1024add8]) == 0, and falls through when ra(=[0x1024add8]) != 0.
  The return at 0x100530d8 has v0 = one of [[sym(rl_instream)]+14]:2, ret(0x10052790).

- `rl_deprep_terminal` in `usr/gfx/KONA/bin/kpm` at 0x100530e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100530e0-0x1005321c (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x10053100 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x10053104 loads 4 bytes from sym(rl_instream) +0x0.
  The `lhu` at 0x10053108 loads 2 bytes from [sym(rl_instream)] +0xe.
  3 such `lw` accesses load 4 bytes from abs 0x1014c018, including `lw` at 0x10053118, `lw` at 0x10053150, `lw` at 0x100531ec.
  The `lw` at 0x1005311c loads 4 bytes from abs 0x1024ae04.
  The `lw` at 0x10053138 loads 4 bytes from abs 0x1014c020.
  The `lw` at 0x10053160 loads 4 bytes from abs 0x1014c030.
  2 such `lw` accesses load 4 bytes from abs 0x1014c028, including `lw` at 0x1005317c, `lw` at 0x100531fc.
  The `lw` at 0x1005319c loads 4 bytes from abs 0x1014c034.
  The `lw` at 0x100531b4 loads 4 bytes from abs 0x1014c038.
  The `lw` at 0x100531c8 loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x100531cc loads 4 bytes from sym(rl_outstream) +0x0.
  The `lw` at 0x100531d8 loads 4 bytes from abs 0x1014c140.
  The `sw` at 0x100531f0 stores 4 bytes to abs 0x1024ae04.
  The `jal` at 0x1005313c calls (unnamed) [0x10052690] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053164 calls (unnamed) [0x10052c90] with a0=[[sym(rl_instream)]+14]:2, a1=0x1024ae08, a2=?, a3=?.
  The `jal` at 0x10053180 calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100531a0 calls (unnamed) [0x10052970] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x100531b8 calls (unnamed) [0x10052a60] with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100531dc calls fflush with a0=[sym(rl_outstream)], a1=?, a2=?, a3=?.
  The `jal` at 0x10053200 calls (unnamed) [0x10052790] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10053120 targets 0x10053130, is taken when at(=[0x1024ae04]) != 0, and falls through when at(=[0x1024ae04]) == 0.
  The `beq` branch at 0x10053128 targets 0x10053208 and is always taken.
  The `bgez` branch at 0x1005316c targets 0x10053190, is taken when v0(=ret(0x10052c90)) >= 0 (signed), and falls through when v0(=ret(0x10052c90)) < 0 (signed).
  The `beq` branch at 0x10053188 targets 0x10053208 and is always taken.
  The return at 0x10053214 has v0 = one of [[sym(rl_instream)]+14]:2, ret(0x10052790).

- `rl_restart_output` in `usr/gfx/KONA/bin/kpm` at 0x10053220 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053220-0x10053290 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x10053248 loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x1005324c loads 4 bytes from sym(rl_outstream) +0x0.
  The `lhu` at 0x10053250 loads 2 bytes from [sym(rl_outstream)] +0xe.
  The `lw` at 0x1005326c loads 4 bytes from abs 0x1014c0c8.
  The `jalr` at 0x10053270 calls ioctl with a0=[[sym(rl_outstream)]+14]:2, a1=0x746e, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x10053288 has v0 = 0x0.

- `rl_stop_output` in `usr/gfx/KONA/bin/kpm` at 0x10053290 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053290-0x10053300 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x100532b8 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x100532bc loads 4 bytes from sym(rl_instream) +0x0.
  The `lhu` at 0x100532c0 loads 2 bytes from [sym(rl_instream)] +0xe.
  The `lw` at 0x100532dc loads 4 bytes from abs 0x1014c0c8.
  The `jalr` at 0x100532e0 calls ioctl with a0=[[sym(rl_instream)]+14]:2, a1=0x746f, a2=0x0, a3=a3 at entry (arg3).
  The return at 0x100532f8 has v0 = 0x0.

- `rltty_set_default_bindings` in `usr/gfx/KONA/bin/kpm` at 0x10053300 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053300-0x10053414 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0x10053324 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x10053328 loads 4 bytes from sym(rl_instream) +0x0.
  The `lhu` at 0x1005332c loads 2 bytes from [sym(rl_instream)] +0xe.
  The `lw` at 0x10053344 loads 4 bytes from abs 0x1014c024.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005337c, `lbu` at 0x100533d0.
  The `lw` at 0x10053390 loads 4 bytes from abs 0x1014c558.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100533a4, `sw` at 0x100533f8.
  The `lw` at 0x100533e4 loads 4 bytes from abs 0x1014c564.
  The `jal` at 0x10053348 calls (unnamed) [0x10052b40] with a0=[[sym(rl_instream)]+14]:2, a1=sp-88, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x10053350 targets 0x10053400, is taken when v0(=ret(0x10052b40)) != 0, and falls through when v0(=ret(0x10052b40)) == 0.
  The `beq` branch at 0x10053364 targets 0x100533a8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x10053380 targets 0x100533a8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x100533b8 targets 0x100533fc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x100533d4 targets 0x100533fc, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The return at 0x1005340c has v0 = one of ret(0x10052b40), ?.

- `rl_add_funmap_entry` in `usr/gfx/KONA/bin/kpm` at 0x10053420 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053420-0x10053664 (580 bytes).
  It occupies 580 bytes.
  13 such `lw` accesses load 4 bytes from abs 0x1014c03c, including `lw` at 0x10053448, `lw` at 0x10053458, `lw` at 0x10053498.
  3 such `lw` accesses load 4 bytes from abs 0x1024ae3c, including `lw` at 0x1005344c, `lw` at 0x100534dc, `lw` at 0x10053510.
  7 such `lw` accesses load 4 bytes from abs 0x1024ae40, including `lw` at 0x1005345c, `lw` at 0x10053578, `lw` at 0x100535a8.
  8 such `lw` accesses load 4 bytes from abs 0x1014c998, including `lw` at 0x10053478, `lw` at 0x100534c0, `lw` at 0x100534fc.
  6 such `lw` accesses load 4 bytes from sym(funmap) +0x0, including `lw` at 0x1005347c, `lw` at 0x10053500, `lw` at 0x10053568.
  2 such `sw` accesses store 4 bytes to abs 0x1024ae3c, including `sw` at 0x1005349c, `sw` at 0x100534f0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x100534ac, `lw` at 0x1005354c.
  2 such `sw` accesses store 4 bytes to sym(funmap) +0x0, including `sw` at 0x100534c4, `sw` at 0x1005353c.
  The `lw` at 0x10053520 loads 4 bytes from abs 0x1014c6e8.
  2 such `sw` accesses store 4 bytes to ([sym(funmap)] + ([0x1024ae40] << 0x2)) +0x0, including `sw` at 0x10053584, `sw` at 0x1005363c.
  2 such `lw` accesses load 4 bytes from ([sym(funmap)] + ([0x1024ae40] << 0x2)) +0x0, including `lw` at 0x100535b4, `lw` at 0x100535e8.
  The `sw` at 0x100535b8 stores 4 bytes to [([sym(funmap)] + ([0x1024ae40] << 0x2))] +0x0.
  The `sw` at 0x100535ec stores 4 bytes to [([sym(funmap)] + ([0x1024ae40] << 0x2))] +0x4.
  The `sw` at 0x10053610 stores 4 bytes to abs 0x1024ae40.
  The `jal` at 0x100534b0 calls xmalloc [0x10061950] with a0=0x140, a1=0x1024ae38, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053524 calls xrealloc [0x100619d0] with a0=[sym(funmap)], a1=([0x1024ae3c] << 0x2), a2=0x1024ae38, a3=a3 at entry (arg3).
  The `jal` at 0x10053550 calls xmalloc [0x10061950] with a0=0x8, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10053468 targets 0x10053540, is taken when at(=[0x1024ae40]+2) < v0(=[0x1024ae3c]) (signed), and falls through when at(=[0x1024ae40]+2) >= v0(=[0x1024ae3c]) (signed).
  The `bne` branch at 0x10053480 targets 0x100534d0, is taken when a0(=[sym(funmap)]) != 0, and falls through when a0(=[sym(funmap)]) == 0.
  The `beq` branch at 0x100534c8 targets 0x10053540 and is always taken.
  The return at 0x1005365c has v0 = [0x1024ae40].

- `rl_initialize_funmap` in `usr/gfx/KONA/bin/kpm` at 0x10053670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053670-0x10053788 (280 bytes).
  It occupies 280 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c03c, including `lw` at 0x10053690, `lw` at 0x10053758.
  The `lw` at 0x10053694 loads 4 bytes from abs 0x1024ae48.
  4 such `lw` accesses load 4 bytes from abs 0x1014c040, including `lw` at 0x100536b4, `lw` at 0x100536d8, `lw` at 0x100536f4.
  The `lw` at 0x100536c4 loads 4 bytes from abs 0x10149030.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100536e8, `lw` at 0x10053704, `lw` at 0x10053740.
  The `lw` at 0x10053710 loads 4 bytes from abs 0x1014c60c.
  The `sw` at 0x1005375c stores 4 bytes to abs 0x1024ae48.
  The `lw` at 0x1005376c loads 4 bytes from abs 0x1014c99c.
  The `sw` at 0x10053770 stores 4 bytes to sym(funmap_program_specific_entry_start) +0x0.
  The `jal` at 0x10053714 calls rl_add_funmap_entry [0x10053420] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10053698 targets 0x100536a8, is taken when at(=[0x1024ae48]) == 0, and falls through when at(=[0x1024ae48]) != 0.
  The `beq` branch at 0x100536a0 targets 0x10053774 and is always taken.
  The `beq` branch at 0x100536c8 targets 0x1005374c, is taken when v1(=[0x10149030]) == 0, and falls through when v1(=[0x10149030]) != 0.
  The `bne` branch at 0x10053744 targets 0x100536d0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The return at 0x10053780 has v0 = one of 0x100650, ?.

- `rl_funmap_names` in `usr/gfx/KONA/bin/kpm` at 0x10053790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053790-0x10053948 (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0x100537c0 loads 4 bytes from abs 0x1014c610.
  3 such `lw` accesses load 4 bytes from abs 0x1014c998, including `lw` at 0x100537d8, `lw` at 0x10053888, `lw` at 0x100538e4.
  3 such `lw` accesses load 4 bytes from sym(funmap) +0x0, including `lw` at 0x100537dc, `lw` at 0x1005388c, `lw` at 0x100538e8.
  The `lw` at 0x100537ec loads 4 bytes from [sym(funmap)] +0x0.
  The `lw` at 0x10053834 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1005386c loads 4 bytes from abs 0x1014c6e8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005389c, `lw` at 0x100538a0, `lw` at 0x100538f8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100538b4, `sw` at 0x100538cc.
  The `lw` at 0x10053918 loads 4 bytes from abs 0x1014c044.
  The `lw` at 0x10053924 loads 4 bytes from abs 0x1014c21c.
  The `jal` at 0x100537c4 calls rl_initialize_funmap [0x10053670] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053838 calls xmalloc [0x10061950] with a0=0x50, a1=?, a2=?, a3=?.
  The `jal` at 0x10053870 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10053928 calls qsort with a0=?, a1=?, a2=0x4, a3=0x10053950.
  The `beq` branch at 0x100537f0 targets 0x10053904, is taken when at(=[[sym(funmap)]]) == 0, and falls through when at(=[[sym(funmap)]]) != 0.
  The `beq` branch at 0x10053808 targets 0x10053880, is taken when v0(?) >= v1(?) (signed), and falls through when v0(?) < v1(?) (signed).
  The `bne` branch at 0x10053814 targets 0x1005384c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x10053844 targets 0x10053880 and is always taken.
  The `bne` branch at 0x100538fc targets 0x100537f8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x10053940 has v0 = ?.

- `_rl_vi_reset_last` in `usr/gfx/KONA/bin/kpm` at 0x100539e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100539e0-0x10053a40 (96 bytes).
  It occupies 96 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c048, including `lw` at 0x100539f8, `lw` at 0x10053a0c, `lw` at 0x10053a20.
  The `sw` at 0x100539fc stores 4 bytes to abs 0x10149380.
  The `sw` at 0x10053a10 stores 4 bytes to abs 0x10149384.
  The `sw` at 0x10053a24 stores 4 bytes to abs 0x10149388.
  The `lw` at 0x10053a30 loads 4 bytes from abs 0x1014c04c.
  The `sw` at 0x10053a34 stores 4 bytes to abs 0x1024ae60.
  The return at 0x10053a38 has v0 = 0x1024ae4c.

- `_rl_vi_set_last` in `usr/gfx/KONA/bin/kpm` at 0x10053a40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053a40-0x10053aa4 (100 bytes).
  It occupies 100 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c048, including `lw` at 0x10053a68, `lw` at 0x10053a7c, `lw` at 0x10053a90.
  The `sw` at 0x10053a6c stores 4 bytes to abs 0x10149380.
  The `sw` at 0x10053a80 stores 4 bytes to abs 0x10149384.
  The `sw` at 0x10053a94 stores 4 bytes to abs 0x10149388.
  The return at 0x10053a9c has v0 = a2.

- `rl_vi_textmod_command` in `usr/gfx/KONA/bin/kpm` at 0x10053ab0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053ab0-0x10053b2c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x10053ae0 loads 4 bytes from abs 0x1014c048.
  The `lw` at 0x10053ae4 loads 4 bytes from abs 0x1014938c.
  The `lw` at 0x10053af4 loads 4 bytes from abs 0x1014c200.
  The `jalr` at 0x10053af8 calls strchr with a0=[0x1014938c], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10053ad0 targets 0x10053b10, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10053b08 targets 0x10053b14 and is always taken.
  The return at 0x10053b24 has v0 = one of ?, 0x0.

- `rl_vi_redo` in `usr/gfx/KONA/bin/kpm` at 0x10053b30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053b30-0x10053c18 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x10053b58 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x10053b5c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c048, including `lw` at 0x10053b70, `lw` at 0x10053b90, `lw` at 0x10053bc4.
  The `lw` at 0x10053b74 loads 4 bytes from abs 0x10149384.
  The `lw` at 0x10053b80 loads 4 bytes from abs 0x1014c7c4.
  The `sw` at 0x10053b84 stores 4 bytes to sym(rl_numeric_arg) +0x0.
  The `lw` at 0x10053b94 loads 4 bytes from abs 0x10149388.
  The `lw` at 0x10053ba0 loads 4 bytes from abs 0x1014c7c8.
  The `sw` at 0x10053ba4 stores 4 bytes to sym(rl_arg_sign) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10053bb4, `lw` at 0x10053bf8.
  2 such `sw` accesses store 4 bytes to abs 0x1024ae6c, including `sw` at 0x10053bb8, `sw` at 0x10053bfc.
  The `lw` at 0x10053bc8 loads 4 bytes from abs 0x10149380.
  The `lw` at 0x10053bd4 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x10053bd8 loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lw` at 0x10053be4 loads 4 bytes from abs 0x1014c4e0.
  The `jal` at 0x10053be8 calls _rl_dispatch [0x10045630] with a0=[0x10149380], a1=[sym(_rl_keymap)], a2=0x1024ae4c, a3=a3 at entry (arg3).
  The `bne` branch at 0x10053b60 targets 0x10053ba8, is taken when at(=[sym(rl_explicit_arg)]) != 0, and falls through when at(=[sym(rl_explicit_arg)]) == 0.
  The return at 0x10053c10 has v0 = 0x0.

- `rl_vi_yank_arg` in `usr/gfx/KONA/bin/kpm` at 0x10053c20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053c20-0x10053cb4 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x10053c48 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x10053c4c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c5c4, including `lw` at 0x10053c6c, `lw` at 0x10053c90.
  The `jal` at 0x10053c70 calls rl_yank_nth_arg [0x1004da80] with a0=a0-1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053c94 calls rl_yank_nth_arg [0x1004da80] with a0=0x24, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10053c50 targets 0x10053c80, is taken when at(=[sym(rl_explicit_arg)]) == 0, and falls through when at(=[sym(rl_explicit_arg)]) != 0.
  The `beq` branch at 0x10053c78 targets 0x10053c9c and is always taken.
  The return at 0x10053cac has v0 = 0x0.

- `rl_vi_fetch_history` in `usr/gfx/KONA/bin/kpm` at 0x10053cc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053cc0-0x10053db8 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x10053ce8 loads 4 bytes from abs 0x1014c478.
  The `lw` at 0x10053d00 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x10053d04 loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x10053d18 loads 4 bytes from abs 0x1014c7a8.
  The `lw` at 0x10053d1c loads 4 bytes from sym(history_base) +0x0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c594, including `lw` at 0x10053d50, `lw` at 0x10053d94.
  The `lw` at 0x10053d70 loads 4 bytes from abs 0x1014c59c.
  The `jal` at 0x10053cec calls where_history [0x1003b5e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053d54 calls rl_beginning_of_history [0x1004c5d0] with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x10053d74 calls rl_get_previous_history [0x1004c8f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10053d98 calls rl_beginning_of_history [0x1004c5d0] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x10053d08 targets 0x10053d84, is taken when at(=[sym(rl_explicit_arg)]) == 0, and falls through when at(=[sym(rl_explicit_arg)]) != 0.
  The `bgtz` branch at 0x10053d38 targets 0x10053d64, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `beq` branch at 0x10053d5c targets 0x10053d7c and is always taken.
  The `beq` branch at 0x10053d7c targets 0x10053da0 and is always taken.
  The return at 0x10053db0 has v0 = 0x0.

- `rl_vi_search_again` in `usr/gfx/KONA/bin/kpm` at 0x10053dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053dc0-0x10053e6c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x10053e1c loads 4 bytes from abs 0x1014c6c0.
  The `lw` at 0x10053e40 loads 4 bytes from abs 0x1014c6bc.
  The `jal` at 0x10053e20 calls rl_noninc_reverse_search_again [0x1005f820] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053e44 calls rl_noninc_forward_search_again [0x1005f770] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10053dec targets 0x10053e0c, is taken when at(=a1) == v0(=0x6e), and falls through when at(=a1) != v0(=0x6e).
  The `beq` branch at 0x10053dfc targets 0x10053e30, is taken when a0(=a1) == a1(=0x4e), and falls through when a0(=a1) != a1(=0x4e).
  The `beq` branch at 0x10053e04 targets 0x10053e54 and is always taken.
  The `beq` branch at 0x10053e28 targets 0x10053e54 and is always taken.
  The `beq` branch at 0x10053e4c targets 0x10053e54 and is always taken.
  The return at 0x10053e64 has v0 = 0x0.

- `rl_vi_search` in `usr/gfx/KONA/bin/kpm` at 0x10053e70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053e70-0x10053f38 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0x10053ecc loads 4 bytes from abs 0x1014c6b4.
  The `lw` at 0x10053ef0 loads 4 bytes from abs 0x1014c6b8.
  The `lw` at 0x10053f0c loads 4 bytes from abs 0x1014c514.
  The `jal` at 0x10053ed0 calls rl_noninc_forward_search [0x1005f650] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053ef4 calls rl_noninc_reverse_search [0x1005f6e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10053f10 calls ding [0x100485f0] with a0=a1 at entry (arg1), a1=0x2f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10053e9c targets 0x10053ebc, is taken when at(=a1) == v0(=0x3f), and falls through when at(=a1) != v0(=0x3f).
  The `beq` branch at 0x10053eac targets 0x10053ee0, is taken when a0(=a1) == a1(=0x2f), and falls through when a0(=a1) != a1(=0x2f).
  The `beq` branch at 0x10053eb4 targets 0x10053f04 and is always taken.
  The `beq` branch at 0x10053ed8 targets 0x10053f20 and is always taken.
  The `beq` branch at 0x10053efc targets 0x10053f20 and is always taken.
  The `beq` branch at 0x10053f18 targets 0x10053f20 and is always taken.
  The return at 0x10053f30 has v0 = 0x0.

- `rl_vi_complete` in `usr/gfx/KONA/bin/kpm` at 0x10053f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10053f40-0x100541c8 (648 bytes).
  It occupies 648 bytes.
  7 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10053f68, `lw` at 0x10053f94, `lw` at 0x10053fc8.
  6 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10053f6c, `lw` at 0x10053f98, `lw` at 0x10053fcc.
  The `lw` at 0x10053f78 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10053f7c loads 4 bytes from sym(rl_end) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10053fa4, `lw` at 0x10053fd8, `lw` at 0x10053ffc.
  4 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10053fa8, `lw` at 0x10053fdc, `lw` at 0x10054000.
  2 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10053fb0, `lbu` at 0x10053fe4.
  2 such `lbu` accesses load 1 byte from ([sym(rl_line_buffer)] + [sym(rl_point)]+1) +0x0, including `lbu` at 0x1005401c, `lbu` at 0x10054054.
  The `lw` at 0x10054074 loads 4 bytes from abs 0x1014c62c.
  The `sw` at 0x100540a0 stores 4 bytes to sym(rl_point) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c4b4, including `lw` at 0x100540c0, `lw` at 0x100540f0, `lw` at 0x10054120.
  The `lw` at 0x10054144 loads 4 bytes from abs 0x1014c4ac.
  The `lw` at 0x10054180 loads 4 bytes from abs 0x1014c7c8.
  The `lw` at 0x10054184 loads 4 bytes from sym(rl_arg_sign) +0x0.
  The `lw` at 0x10054190 loads 4 bytes from abs 0x1014c61c.
  The `lw` at 0x100541a4 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10054078 calls rl_vi_end_word [0x100544d0] with a0=0x1, a1=0x45, a2=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1, a3=0x9.
  The `jal` at 0x100540c4 calls rl_complete_internal [0x10041320] with a0=0x2a, a1=?, a2=?, a3=?.
  The `jal` at 0x100540f4 calls rl_complete_internal [0x10041320] with a0=0x3f, a1=?, a2=?, a3=?.
  The `jal` at 0x10054124 calls rl_complete_internal [0x10041320] with a0=0x9, a1=?, a2=?, a3=?.
  The `jal` at 0x10054148 calls rl_complete [0x10040bd0] with a0=0x0, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10054194 calls _rl_vi_set_last [0x10053a40] with a0=a1 at entry (arg1), a1=0x1, a2=[sym(rl_arg_sign)], a3=?.
  The `jal` at 0x100541a8 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10053f84 targets 0x100540a4, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10053fb8 targets 0x100540a4, is taken when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a0(=0x20), and falls through when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a0(=0x20).
  The `beq` branch at 0x10053fec targets 0x100540a4, is taken when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a1(=0x9), and falls through when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a1(=0x9).
  The `beq` branch at 0x10054024 targets 0x10054080, is taken when a1(=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1) == a2(=0x20), and falls through when a1(=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1) != a2(=0x20).
  The `beq` branch at 0x1005405c targets 0x10054080, is taken when a2(=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1) == a3(=0x9), and falls through when a2(=[([sym(rl_line_buffer)] + [sym(rl_point)]+1)]:1) != a3(=0x9).
  The `bne` branch at 0x100540ac targets 0x100540d4, is taken when at(=a1) != v0(=0x2a), and falls through when at(=a1) == v0(=0x2a).
  The `beq` branch at 0x100540cc targets 0x10054150 and is always taken.
  The `bne` branch at 0x100540dc targets 0x10054104, is taken when ra(=a1) != at(=0x3d), and falls through when ra(=a1) == at(=0x3d).
  The `beq` branch at 0x100540fc targets 0x10054150 and is always taken.
  The `bne` branch at 0x1005410c targets 0x10054134, is taken when ra(=a1) != at(=0x5c), and falls through when ra(=a1) == at(=0x5c).
  The `beq` branch at 0x1005412c targets 0x10054150 and is always taken.
  The `beq` branch at 0x10054158 targets 0x10054170, is taken when ra(=a1) == at(=0x2a), and falls through when ra(=a1) != at(=0x2a).
  The `bne` branch at 0x10054168 targets 0x100541b0, is taken when v0(=a1) != v1(=0x5c), and falls through when v0(=a1) == v1(=0x5c).
  The return at 0x100541c0 has v0 = 0x0.

- `rl_vi_tilde_expand` in `usr/gfx/KONA/bin/kpm` at 0x100541d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100541d0-0x10054264 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x10054200 loads 4 bytes from abs 0x1014c4c0.
  The `lw` at 0x1005421c loads 4 bytes from abs 0x1014c7c8.
  The `lw` at 0x10054220 loads 4 bytes from sym(rl_arg_sign) +0x0.
  The `lw` at 0x1005422c loads 4 bytes from abs 0x1014c61c.
  The `lw` at 0x10054240 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10054204 calls rl_tilde_expand [0x100441a0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10054230 calls _rl_vi_set_last [0x10053a40] with a0=a1 at entry (arg1), a1=0x1, a2=[sym(rl_arg_sign)], a3=?.
  The `jal` at 0x10054244 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1005425c has v0 = 0x0.

- `rl_vi_prev_word` in `usr/gfx/KONA/bin/kpm` at 0x10054270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10054270-0x1005438c (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0x100542b0 loads 4 bytes from abs 0x1014c628.
  The `lw` at 0x100542d4 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x100542d8 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x100542ec loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1005430c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10054310 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10054324 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x10054340 loads 4 bytes from abs 0x1014c634.
  The `lw` at 0x10054360 loads 4 bytes from abs 0x1014c640.
  The `jal` at 0x100542b4 calls rl_vi_next_word [0x10054390] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100542f0 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=a3 at entry (arg3).
  The `jal` at 0x10054344 calls rl_vi_bWord [0x10054910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=a3 at entry (arg3).
  The `jal` at 0x10054364 calls rl_vi_bword [0x10055af0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(rl_point)], a3=a3 at entry (arg3).
  The `bgez` branch at 0x10054294 targets 0x100542cc, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x100542c4 targets 0x10054374 and is always taken.
  The `bne` branch at 0x100542dc targets 0x10054304, is taken when a2(=[sym(rl_point)]) != 0, and falls through when a2(=[sym(rl_point)]) == 0.
  The `beq` branch at 0x100542fc targets 0x10054374 and is always taken.
  The `beq` branch at 0x1005432c targets 0x10054354, is taken when (ra(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (ra(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x1005434c targets 0x1005436c and is always taken.
  The return at 0x10054384 has v0 = one of ret(rl_vi_next_word), 0x0.

- `rl_vi_next_word` in `usr/gfx/KONA/bin/kpm` at 0x10054390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10054390-0x100544c4 (308 bytes).
  It occupies 308 bytes.
  The `lw` at 0x100543d0 loads 4 bytes from abs 0x1014c624.
  The `lw` at 0x100543f4 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x100543f8 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10054404 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10054408 loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x10054424 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x10054444 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10054448 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1005445c loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x10054478 loads 4 bytes from abs 0x1014c630.
  The `lw` at 0x10054498 loads 4 bytes from abs 0x1014c63c.
  The `jal` at 0x100543d4 calls rl_vi_prev_word [0x10054270] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10054428 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[sym(rl_end)]-1.
  The `jal` at 0x1005447c calls rl_vi_fWord [0x100545b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[sym(rl_end)]-1.
  The `jal` at 0x1005449c calls rl_vi_fword [0x10055310] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[sym(rl_end)]-1.
  The `bgez` branch at 0x100543b4 targets 0x100543ec, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x100543e4 targets 0x100544ac and is always taken.
  The `bne` branch at 0x10054414 targets 0x1005443c, is taken when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10054434 targets 0x100544ac and is always taken.
  The `beq` branch at 0x10054464 targets 0x1005448c, is taken when (ra(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (ra(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10054484 targets 0x100544a4 and is always taken.
  The return at 0x100544bc has v0 = one of ret(rl_vi_prev_word), 0x0.

- `rl_vi_end_word` in `usr/gfx/KONA/bin/kpm` at 0x100544d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100544d0-0x100545a8 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x10054504 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x10054528 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1005452c loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10054540 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x1005455c loads 4 bytes from abs 0x1014c638.
  The `lw` at 0x1005457c loads 4 bytes from abs 0x1014c644.
  The `jal` at 0x10054508 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10054560 calls rl_vi_eWord [0x10054d50] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10054580 calls rl_vi_eword [0x10056640] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgez` branch at 0x100544f4 targets 0x10054520, is taken when at(=a0) >= 0 (signed), and falls through when at(=a0) < 0 (signed).
  The `beq` branch at 0x10054518 targets 0x10054590 and is always taken.
  The `beq` branch at 0x10054548 targets 0x10054570, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10054568 targets 0x10054588 and is always taken.
  The return at 0x100545a0 has v0 = one of -0x1, 0x0.

- `rl_vi_fWord` in `usr/gfx/KONA/bin/kpm` at 0x100545b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100545b0-0x1005490c (860 bytes).
  It occupies 860 bytes.
  18 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100545ec, `lw` at 0x1005461c, `lw` at 0x10054650.
  16 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100545f0, `lw` at 0x10054620, `lw` at 0x10054654.
  6 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x100545fc, `lw` at 0x10054694, `lw` at 0x1005474c.
  6 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10054600, `lw` at 0x10054698, `lw` at 0x10054750.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x1005462c, `lw` at 0x10054660, `lw` at 0x100546e4.
  8 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10054630, `lw` at 0x10054664, `lw` at 0x100546e8.
  8 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10054638, `lbu` at 0x1005466c, `lbu` at 0x100546f0.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x100546c8, `sw` at 0x10054814.
  The `beq` branch at 0x100545dc targets 0x100548f8, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `beq` branch at 0x1005460c targets 0x100548f8, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10054640 targets 0x10054760, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10054674 targets 0x10054760, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x100546a0 targets 0x10054760, is taken when a5(=[sym(rl_point)]) >= a6(=[sym(rl_end)]) (signed), and falls through when a5(=[sym(rl_point)]) < a6(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x100546f8 targets 0x10054760, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x20), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x20).
  The `beq` branch at 0x1005472c targets 0x10054760, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9).
  The `bne` branch at 0x10054758 targets 0x100546a8, is taken when t1(=[sym(rl_point)]) < t2(=[sym(rl_end)]) (signed), and falls through when t1(=[sym(rl_point)]) >= t2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x1005478c targets 0x100547c8, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x20), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x20).
  The `bne` branch at 0x100547c0 targets 0x100548ac, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x9), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x9).
  The `beq` branch at 0x100547ec targets 0x100548ac, is taken when t8(=[sym(rl_point)]) >= t9(=[sym(rl_end)]) (signed), and falls through when t8(=[sym(rl_point)]) < t9(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10054844 targets 0x10054880, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `bne` branch at 0x10054878 targets 0x100548ac, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x9), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x9).
  The `bne` branch at 0x100548a4 targets 0x100547f4, is taken when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x100548c0 targets 0x100548f8, is taken when a0(?) == a1(=-0x1), and falls through when a0(?) != a1(=-0x1).
  The `bne` branch at 0x100548f0 targets 0x10054614, is taken when a3(=[sym(rl_point)]) < a4(=[sym(rl_end)]-1) (signed), and falls through when a3(=[sym(rl_point)]) >= a4(=[sym(rl_end)]-1) (signed).
  The return at 0x10054904 has v0 = 0x0.

- `rl_vi_bWord` in `usr/gfx/KONA/bin/kpm` at 0x10054910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10054910-0x10054d48 (1080 bytes).
  It occupies 1080 bytes.
  29 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005494c, `lw` at 0x10054964, `lw` at 0x10054998.
  24 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10054950, `lw` at 0x10054968, `lw` at 0x1005499c.
  12 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10054974, `lw` at 0x100549a8, `lw` at 0x100549cc.
  12 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10054978, `lw` at 0x100549ac, `lw` at 0x100549d0.
  10 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10054980, `lbu` at 0x100549b4, `lbu` at 0x10054a94.
  2 such `lbu` accesses load 1 byte from ([sym(rl_line_buffer)] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x100549ec, `lbu` at 0x10054a24.
  5 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10054a54, `sw` at 0x10054af8, `sw` at 0x10054bb4.
  The `beq` branch at 0x1005493c targets 0x10054d34, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `blez` branch at 0x10054954 targets 0x10054d34, is taken when a2(=[sym(rl_point)]) <= 0 (signed), and falls through when a2(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10054988 targets 0x10054a58, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x100549bc targets 0x10054a58, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x100549f4 targets 0x10054a34, is taken when a5(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == a6(=0x20), and falls through when a5(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != a6(=0x20).
  The `bne` branch at 0x10054a2c targets 0x10054a58, is taken when a6(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != a7(=0x9), and falls through when a6(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == a7(=0x9).
  The `blez` branch at 0x10054a68 targets 0x10054b7c, is taken when t0(=[sym(rl_point)]) <= 0 (signed), and falls through when t0(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10054a9c targets 0x10054ad8, is taken when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t2(=0x20), and falls through when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t2(=0x20).
  The `bne` branch at 0x10054ad0 targets 0x10054b7c, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x9), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x9).
  The `blez` branch at 0x10054b0c targets 0x10054b7c, is taken when t3(=[sym(rl_point)]) <= 0 (signed), and falls through when t3(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10054b40 targets 0x10054ad8, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `beq` branch at 0x10054b74 targets 0x10054ad8, is taken when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v0(=0x9), and falls through when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v0(=0x9).
  The `blez` branch at 0x10054b8c targets 0x10054d00, is taken when v0(=[sym(rl_point)]) <= 0 (signed), and falls through when v0(=[sym(rl_point)]) > 0 (signed).
  The `bltz` branch at 0x10054bc8 targets 0x10054cdc, is taken when v1(=[sym(rl_point)]) < 0 (signed), and falls through when v1(=[sym(rl_point)]) >= 0 (signed).
  The `beq` branch at 0x10054bfc targets 0x10054cdc, is taken when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a2(=0x20), and falls through when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a2(=0x20).
  The `beq` branch at 0x10054c30 targets 0x10054cdc, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x9), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x9).
  The `bltz` branch at 0x10054c6c targets 0x10054cdc, is taken when a3(=[sym(rl_point)]) < 0 (signed), and falls through when a3(=[sym(rl_point)]) >= 0 (signed).
  The `beq` branch at 0x10054ca0 targets 0x10054cdc, is taken when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a6(=0x20), and falls through when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a6(=0x20).
  The `bne` branch at 0x10054cd4 targets 0x10054c38, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x9), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x9).
  The `beq` branch at 0x10054d14 targets 0x10054d34, is taken when t0(?) == t1(=-0x1), and falls through when t0(?) != t1(=-0x1).
  The `bgtz` branch at 0x10054d2c targets 0x1005495c, is taken when t3(=[sym(rl_point)]) > 0 (signed), and falls through when t3(=[sym(rl_point)]) <= 0 (signed).
  The return at 0x10054d40 has v0 = 0x0.

- `rl_vi_eWord` in `usr/gfx/KONA/bin/kpm` at 0x10054d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10054d50-0x10055310 (1472 bytes).
  It occupies 1472 bytes.
  36 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10054d8c, `lw` at 0x10054dbc, `lw` at 0x10054df0.
  30 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10054d90, `lw` at 0x10054dc0, `lw` at 0x10054df4.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10054d9c, `lw` at 0x10054e7c, `lw` at 0x10054f34.
  9 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10054da0, `lw` at 0x10054e80, `lw` at 0x10054f38.
  14 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10054dcc, `lw` at 0x10054e00, `lw` at 0x10054ea8.
  14 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10054dd0, `lw` at 0x10054e04, `lw` at 0x10054eac.
  14 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10054dd8, `lbu` at 0x10054e0c, `lbu` at 0x10054eb4.
  6 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10054e3c, `sw` at 0x10054e60, `sw` at 0x10054f18.
  The `beq` branch at 0x10054d7c targets 0x100552fc, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `beq` branch at 0x10054dac targets 0x100552fc, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10054de0 targets 0x10054e40, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10054e14 targets 0x10054e40, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x10054e88 targets 0x10054fb0, is taken when a6(=[sym(rl_point)]) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=[sym(rl_point)]) < a7(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10054ebc targets 0x10054ef8, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x20), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x20).
  The `bne` branch at 0x10054ef0 targets 0x10054fb0, is taken when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t2(=0x9), and falls through when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t2(=0x9).
  The `beq` branch at 0x10054f40 targets 0x10054fb0, is taken when t2(=[sym(rl_point)]) >= t3(=[sym(rl_end)]) (signed), and falls through when t2(=[sym(rl_point)]) < t3(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10054f74 targets 0x10054ef8, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x20), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x20).
  The `beq` branch at 0x10054fa8 targets 0x10054ef8, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x9), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x9).
  The `beq` branch at 0x10054fc0 targets 0x100552b0, is taken when ra(=[sym(rl_point)]) == 0, and falls through when ra(=[sym(rl_point)]) != 0.
  The `beq` branch at 0x10054fec targets 0x100552b0, is taken when v0(=[sym(rl_point)]) >= v1(=[sym(rl_end)]) (signed), and falls through when v0(=[sym(rl_point)]) < v1(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055018 targets 0x10055140, is taken when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x1005504c targets 0x10055088, is taken when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a1(=0x20), and falls through when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a1(=0x20).
  The `bne` branch at 0x10055080 targets 0x10055140, is taken when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a2(=0x9), and falls through when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a2(=0x9).
  The `beq` branch at 0x100550d0 targets 0x10055140, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055104 targets 0x10055088, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x20), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x20).
  The `beq` branch at 0x10055138 targets 0x10055088, is taken when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a6(=0x9), and falls through when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a6(=0x9).
  The `beq` branch at 0x10055164 targets 0x1005528c, is taken when a6(=[sym(rl_point)]) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=[sym(rl_point)]) < a7(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055198 targets 0x1005528c, is taken when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t0(=0x20), and falls through when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t0(=0x20).
  The `beq` branch at 0x100551cc targets 0x1005528c, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9).
  The `beq` branch at 0x1005521c targets 0x1005528c, is taken when t1(=[sym(rl_point)]) >= t2(=[sym(rl_end)]) (signed), and falls through when t1(=[sym(rl_point)]) < t2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055250 targets 0x1005528c, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x20), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x20).
  The `bne` branch at 0x10055284 targets 0x100551d4, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x9), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x9).
  The `beq` branch at 0x100552c4 targets 0x100552fc, is taken when ra(?) == v0(=-0x1), and falls through when ra(?) != v0(=-0x1).
  The `bne` branch at 0x100552f4 targets 0x10054db4, is taken when a0(=[sym(rl_point)]) < a1(=[sym(rl_end)]-1) (signed), and falls through when a0(=[sym(rl_point)]) >= a1(=[sym(rl_end)]-1) (signed).
  The return at 0x10055308 has v0 = 0x0.

- `rl_vi_fword` in `usr/gfx/KONA/bin/kpm` at 0x10055310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10055310-0x10055ae8 (2008 bytes).
  It occupies 2008 bytes.
  36 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005534c, `lw` at 0x1005538c, `lw` at 0x100553d0.
  33 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10055350, `lw` at 0x10055390, `lw` at 0x100553d4.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1005535c, `lw` at 0x1005549c, `lw` at 0x10055574.
  8 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10055360, `lw` at 0x100554a0, `lw` at 0x10055578.
  9 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x1005537c, `lw` at 0x10055404, `lw` at 0x100554dc.
  9 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x10055380, `lw` at 0x10055408, `lw` at 0x100554e0.
  22 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x1005539c, `lw` at 0x100553e0, `lw` at 0x10055424.
  22 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x100553a0, `lw` at 0x100553e4, `lw` at 0x10055428.
  22 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x100553a8, `lbu` at 0x100553ec, `lbu` at 0x10055430.
  9 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2)) +0x4, including `lw` at 0x100553b8, `lw` at 0x10055440, `lw` at 0x10055518.
  3 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x100554d0, `sw` at 0x10055774, `sw` at 0x100559f0.
  The `beq` branch at 0x1005533c targets 0x10055ad4, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `beq` branch at 0x1005536c targets 0x10055ad4, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `bne` branch at 0x100553c0 targets 0x100553fc, is taken when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x100553f4 targets 0x10055590, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x5f), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x5f).
  The `bne` branch at 0x10055448 targets 0x10055484, is taken when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x1005547c targets 0x10055588, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x5f), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x5f).
  The `beq` branch at 0x100554a8 targets 0x10055588, is taken when a7(=[sym(rl_point)]) >= t0(=[sym(rl_end)]) (signed), and falls through when a7(=[sym(rl_point)]) < t0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10055520 targets 0x1005555c, is taken when (t0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (t0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10055554 targets 0x10055588, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x5f), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x5f).
  The `bne` branch at 0x10055580 targets 0x100554b0, is taken when t3(=[sym(rl_point)]) < t8(=[sym(rl_end)]) (signed), and falls through when t3(=[sym(rl_point)]) >= t8(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055588 targets 0x1005593c and is always taken.
  The `bne` branch at 0x100555dc targets 0x1005593c, is taken when (t8(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (t8(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10055630 targets 0x1005593c, is taken when (t9(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (t9(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10055684 targets 0x1005593c, is taken when (ra(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (ra(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x100556b8 targets 0x1005593c, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x5f), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x5f).
  The `beq` branch at 0x100556ec targets 0x1005593c, is taken when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a0(=0x20), and falls through when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a0(=0x20).
  The `beq` branch at 0x10055720 targets 0x1005593c, is taken when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a1(=0x9), and falls through when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a1(=0x9).
  The `beq` branch at 0x1005574c targets 0x1005593c, is taken when a1(=[sym(rl_point)]) >= a2(=[sym(rl_end)]) (signed), and falls through when a1(=[sym(rl_point)]) < a2(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x100557c4 targets 0x1005593c, is taken when (a2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (a2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10055818 targets 0x1005593c, is taken when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x1005586c targets 0x1005593c, is taken when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x100558a0 targets 0x1005593c, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x5f), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x5f).
  The `beq` branch at 0x100558d4 targets 0x1005593c, is taken when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t0(=0x20), and falls through when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t0(=0x20).
  The `beq` branch at 0x10055908 targets 0x1005593c, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9).
  The `bne` branch at 0x10055934 targets 0x10055754, is taken when t1(=[sym(rl_point)]) < t2(=[sym(rl_end)]) (signed), and falls through when t1(=[sym(rl_point)]) >= t2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055968 targets 0x100559a4, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x20), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x20).
  The `bne` branch at 0x1005599c targets 0x10055a88, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x9), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x9).
  The `beq` branch at 0x100559c8 targets 0x10055a88, is taken when t8(=[sym(rl_point)]) >= t9(=[sym(rl_end)]) (signed), and falls through when t8(=[sym(rl_point)]) < t9(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055a20 targets 0x10055a5c, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `bne` branch at 0x10055a54 targets 0x10055a88, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x9), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x9).
  The `bne` branch at 0x10055a80 targets 0x100559d0, is taken when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10055a9c targets 0x10055ad4, is taken when a0(?) == a1(=-0x1), and falls through when a0(?) != a1(=-0x1).
  The `bne` branch at 0x10055acc targets 0x10055374, is taken when a3(=[sym(rl_point)]) < a4(=[sym(rl_end)]-1) (signed), and falls through when a3(=[sym(rl_point)]) >= a4(=[sym(rl_end)]-1) (signed).
  The return at 0x10055ae0 has v0 = 0x0.

- `rl_vi_bword` in `usr/gfx/KONA/bin/kpm` at 0x10055af0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10055af0-0x10056640 (2896 bytes).
  It occupies 2896 bytes.
  59 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10055b2c, `lw` at 0x10055b44, `lw` at 0x10055b78.
  51 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10055b30, `lw` at 0x10055b48, `lw` at 0x10055b7c.
  34 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10055b54, `lw` at 0x10055b88, `lw` at 0x10055bac.
  34 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10055b58, `lw` at 0x10055b8c, `lw` at 0x10055bb0.
  30 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10055b60, `lbu` at 0x10055b94, `lbu` at 0x10055d18.
  4 such `lbu` accesses load 1 byte from ([sym(rl_line_buffer)] + [sym(rl_point)]-1) +0x0, including `lbu` at 0x10055bcc, `lbu` at 0x10055c04, `lbu` at 0x10055c70.
  8 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10055c34, `sw` at 0x10055ed4, `sw` at 0x10055f78.
  14 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x10055c40, `lw` at 0x10055cec, `lw` at 0x10055d80.
  14 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x10055c44, `lw` at 0x10055cf0, `lw` at 0x10055d84.
  The `lw` at 0x10055c80 loads 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1 << 0x2)) +0x4.
  13 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2)) +0x4, including `lw` at 0x10055d28, `lw` at 0x10055dbc, `lw` at 0x10055e10.
  The `beq` branch at 0x10055b1c targets 0x1005662c, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `blez` branch at 0x10055b34 targets 0x1005662c, is taken when a2(=[sym(rl_point)]) <= 0 (signed), and falls through when a2(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10055b68 targets 0x10055c38, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10055b9c targets 0x10055c38, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x10055bd4 targets 0x10055c14, is taken when a5(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == a6(=0x20), and falls through when a5(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != a6(=0x20).
  The `bne` branch at 0x10055c0c targets 0x10055c38, is taken when a6(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != a7(=0x9), and falls through when a6(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == a7(=0x9).
  The `bne` branch at 0x10055c88 targets 0x10055cc8, is taken when (t0(=[([sym(__libc_attr)] + ([([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (t0(=[([sym(__libc_attr)] + ([([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10055cc0 targets 0x10055cd8, is taken when t1(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) != t2(=0x5f), and falls through when t1(=[([sym(rl_line_buffer)] + [sym(rl_point)]-1)]:1) == t2(=0x5f).
  The `beq` branch at 0x10055cd0 targets 0x10055cdc and is always taken.
  The `bne` branch at 0x10055d30 targets 0x10055d6c, is taken when (t3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (t3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10055d64 targets 0x10055d78, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x5f), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x5f).
  The `beq` branch at 0x10055d70 targets 0x10055eb4, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x10055dc4 targets 0x10055ed8, is taken when (v0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (v0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10055e18 targets 0x10055ed8, is taken when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10055e6c targets 0x10055ed8, is taken when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10055ea0 targets 0x10055ed8, is taken when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a2(=0x5f), and falls through when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a2(=0x5f).
  The `beq` branch at 0x10055eac targets 0x10055ed8, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x10055ee8 targets 0x10055ffc, is taken when a4(=[sym(rl_point)]) <= 0 (signed), and falls through when a4(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10055f1c targets 0x10055f58, is taken when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a6(=0x20), and falls through when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a6(=0x20).
  The `bne` branch at 0x10055f50 targets 0x10055ffc, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x9), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x9).
  The `blez` branch at 0x10055f8c targets 0x10055ffc, is taken when a7(=[sym(rl_point)]) <= 0 (signed), and falls through when a7(=[sym(rl_point)]) > 0 (signed).
  The `beq` branch at 0x10055fc0 targets 0x10055f58, is taken when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t2(=0x20), and falls through when t1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t2(=0x20).
  The `beq` branch at 0x10055ff4 targets 0x10055f58, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x9), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x9).
  The `blez` branch at 0x1005600c targets 0x100565f8, is taken when t3(=[sym(rl_point)]) <= 0 (signed), and falls through when t3(=[sym(rl_point)]) > 0 (signed).
  The `bne` branch at 0x10056060 targets 0x1005609c, is taken when (t8(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (t8(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10056094 targets 0x1005622c, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x5f), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x5f).
  The `bltz` branch at 0x100560d0 targets 0x10056224, is taken when ra(=[sym(rl_point)]) < 0 (signed), and falls through when ra(=[sym(rl_point)]) >= 0 (signed).
  The `bne` branch at 0x10056124 targets 0x10056160, is taken when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10056158 targets 0x10056224, is taken when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a1(=0x5f), and falls through when a0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a1(=0x5f).
  The `bltz` branch at 0x10056194 targets 0x10056224, is taken when a1(=[sym(rl_point)]) < 0 (signed), and falls through when a1(=[sym(rl_point)]) >= 0 (signed).
  The `bne` branch at 0x100561e8 targets 0x10056160, is taken when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `beq` branch at 0x1005621c targets 0x10056160, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x5f), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x5f).
  The `beq` branch at 0x10056224 targets 0x100565d4 and is always taken.
  The `bltz` branch at 0x10056260 targets 0x100565d4, is taken when a5(=[sym(rl_point)]) < 0 (signed), and falls through when a5(=[sym(rl_point)]) >= 0 (signed).
  The `bne` branch at 0x100562b4 targets 0x100565d4, is taken when (a7(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (a7(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10056308 targets 0x100565d4, is taken when (t0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (t0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x1005635c targets 0x100565d4, is taken when (t1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (t1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10056390 targets 0x100565d4, is taken when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t3(=0x5f), and falls through when t2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t3(=0x5f).
  The `beq` branch at 0x100563c4 targets 0x100565d4, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x20), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x20).
  The `beq` branch at 0x100563f8 targets 0x100565d4, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x9), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x9).
  The `bltz` branch at 0x10056434 targets 0x100565d4, is taken when t9(=[sym(rl_point)]) < 0 (signed), and falls through when t9(=[sym(rl_point)]) >= 0 (signed).
  The `bne` branch at 0x10056488 targets 0x100565d4, is taken when (v0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (v0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x100564dc targets 0x100565d4, is taken when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (v1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10056530 targets 0x100565d4, is taken when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10056564 targets 0x100565d4, is taken when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a2(=0x5f), and falls through when a1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a2(=0x5f).
  The `beq` branch at 0x10056598 targets 0x100565d4, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x20), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x20).
  The `bne` branch at 0x100565cc targets 0x10056400, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x9), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x9).
  The `beq` branch at 0x1005660c targets 0x1005662c, is taken when a5(?) == a6(=-0x1), and falls through when a5(?) != a6(=-0x1).
  The `bgtz` branch at 0x10056624 targets 0x10055b3c, is taken when t0(=[sym(rl_point)]) > 0 (signed), and falls through when t0(=[sym(rl_point)]) <= 0 (signed).
  The return at 0x10056638 has v0 = 0x0.

- `rl_vi_eword` in `usr/gfx/KONA/bin/kpm` at 0x10056640 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10056640-0x10056f3c (2300 bytes).
  It occupies 2300 bytes.
  47 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005667c, `lw` at 0x100566ac, `lw` at 0x100566e0.
  40 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10056680, `lw` at 0x100566b0, `lw` at 0x100566e4.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1005668c, `lw` at 0x10056748, `lw` at 0x10056800.
  9 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10056690, `lw` at 0x1005674c, `lw` at 0x10056804.
  24 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x100566bc, `lw` at 0x100566f0, `lw` at 0x10056774.
  24 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x100566c0, `lw` at 0x100566f4, `lw` at 0x10056778.
  24 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x100566c8, `lbu` at 0x100566fc, `lbu` at 0x10056780.
  7 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x1005672c, `sw` at 0x100567e4, `sw` at 0x10056950.
  9 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x100568b0, `lw` at 0x10056988, `lw` at 0x10056a60.
  9 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x100568b4, `lw` at 0x1005698c, `lw` at 0x10056a64.
  9 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2)) +0x4, including `lw` at 0x100568ec, `lw` at 0x100569c4, `lw` at 0x10056a9c.
  The `beq` branch at 0x1005666c targets 0x10056f28, is taken when v0(=a0-1) == v1(=-0x1), and falls through when v0(=a0-1) != v1(=-0x1).
  The `beq` branch at 0x1005669c targets 0x10056f28, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x100566d0 targets 0x10056730, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10056704 targets 0x10056730, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `beq` branch at 0x10056754 targets 0x1005687c, is taken when a6(=[sym(rl_point)]) >= a7(=[sym(rl_end)]) (signed), and falls through when a6(=[sym(rl_point)]) < a7(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10056788 targets 0x100567c4, is taken when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t0(=0x20), and falls through when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t0(=0x20).
  The `bne` branch at 0x100567bc targets 0x1005687c, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9).
  The `beq` branch at 0x1005680c targets 0x1005687c, is taken when t1(=[sym(rl_point)]) >= t2(=[sym(rl_end)]) (signed), and falls through when t1(=[sym(rl_point)]) < t2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10056840 targets 0x100567c4, is taken when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t8(=0x20), and falls through when t3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t8(=0x20).
  The `beq` branch at 0x10056874 targets 0x100567c4, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x9), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x9).
  The `beq` branch at 0x100568a0 targets 0x10056eb8, is taken when t9(=[sym(rl_point)]) >= ra(=[sym(rl_end)]) (signed), and falls through when t9(=[sym(rl_point)]) < ra(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x100568f4 targets 0x10056930, is taken when (ra(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (ra(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10056928 targets 0x10056ae8, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x5f), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x5f).
  The `beq` branch at 0x10056978 targets 0x10056ae0, is taken when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x100569cc targets 0x10056a08, is taken when (a1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `bne` branch at 0x10056a00 targets 0x10056ae0, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x5f), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x5f).
  The `beq` branch at 0x10056a50 targets 0x10056ae0, is taken when a3(=[sym(rl_point)]) >= a4(=[sym(rl_end)]) (signed), and falls through when a3(=[sym(rl_point)]) < a4(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10056aa4 targets 0x10056a08, is taken when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) != 0, and falls through when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x7) == 0.
  The `beq` branch at 0x10056ad8 targets 0x10056a08, is taken when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a7(=0x5f), and falls through when a6(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a7(=0x5f).
  The `beq` branch at 0x10056ae0 targets 0x10056eb8 and is always taken.
  The `beq` branch at 0x10056b30 targets 0x10056eb8, is taken when a7(=[sym(rl_point)]) >= t0(=[sym(rl_end)]) (signed), and falls through when a7(=[sym(rl_point)]) < t0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10056b84 targets 0x10056eb8, is taken when (t1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (t1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10056bd8 targets 0x10056eb8, is taken when (t2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (t2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10056c2c targets 0x10056eb8, is taken when (t3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (t3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10056c60 targets 0x10056eb8, is taken when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t9(=0x5f), and falls through when t8(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t9(=0x5f).
  The `beq` branch at 0x10056c94 targets 0x10056eb8, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `beq` branch at 0x10056cc8 targets 0x10056eb8, is taken when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v0(=0x9), and falls through when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v0(=0x9).
  The `beq` branch at 0x10056d18 targets 0x10056eb8, is taken when v0(=[sym(rl_point)]) >= v1(=[sym(rl_end)]) (signed), and falls through when v0(=[sym(rl_point)]) < v1(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10056d6c targets 0x10056eb8, is taken when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0, and falls through when (a0(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0.
  The `bne` branch at 0x10056dc0 targets 0x10056eb8, is taken when (a1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0, and falls through when (a1(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10056e14 targets 0x10056eb8, is taken when (a2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) != 0, and falls through when (a2(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x4) == 0.
  The `beq` branch at 0x10056e48 targets 0x10056eb8, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x5f), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x5f).
  The `beq` branch at 0x10056e7c targets 0x10056eb8, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x20), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x20).
  The `bne` branch at 0x10056eb0 targets 0x10056cd0, is taken when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a6(=0x9), and falls through when a5(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a6(=0x9).
  The `beq` branch at 0x10056ef0 targets 0x10056f28, is taken when a6(?) == a7(=-0x1), and falls through when a6(?) != a7(=-0x1).
  The `bne` branch at 0x10056f20 targets 0x100566a4, is taken when t2(=[sym(rl_point)]) < t3(=[sym(rl_end)]-1) (signed), and falls through when t2(=[sym(rl_point)]) >= t3(=[sym(rl_end)]-1) (signed).
  The return at 0x10056f34 has v0 = 0x0.

- `rl_vi_insert_beg` in `usr/gfx/KONA/bin/kpm` at 0x10056f40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10056f40-0x10056fa0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10056f68 loads 4 bytes from abs 0x1014c534.
  The `lw` at 0x10056f7c loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10056f6c calls rl_beg_of_line [0x10049190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10056f80 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10056f98 has v0 = 0x0.

- `rl_vi_append_mode` in `usr/gfx/KONA/bin/kpm` at 0x10056fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10056fa0-0x10057034 (148 bytes).
  It occupies 148 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10056fc0, `lw` at 0x10056fec, `lw` at 0x10057000.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10056fc4, `lw` at 0x10056ff0.
  The `lw` at 0x10056fd0 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10056fd4 loads 4 bytes from sym(rl_end) +0x0.
  The `sw` at 0x10057004 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x10057010 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10057014 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10056fdc targets 0x10057008, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The return at 0x1005702c has v0 = 0x0.

- `rl_vi_append_eol` in `usr/gfx/KONA/bin/kpm` at 0x10057040 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057040-0x100570a0 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x10057068 loads 4 bytes from abs 0x1014c538.
  The `lw` at 0x1005707c loads 4 bytes from abs 0x1014c648.
  The `jal` at 0x1005706c calls rl_end_of_line [0x100491c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10057080 calls rl_vi_append_mode [0x10056fa0] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10057098 has v0 = 0x0.

- `rl_vi_eof_maybe` in `usr/gfx/KONA/bin/kpm` at 0x100570a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100570a0-0x100570f0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x100570d0 loads 4 bytes from abs 0x1014c54c.
  The `jal` at 0x100570d4 calls rl_newline [0x1004a160] with a0=0x1, a1=0xa, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100570e8 has v0 = ret(rl_newline).

- `rl_vi_insertion_mode` in `usr/gfx/KONA/bin/kpm` at 0x100570f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100570f0-0x10057124 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10057104 loads 4 bytes from abs 0x1014c7fc.
  The `lw` at 0x10057110 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x10057114 stores 4 bytes to sym(_rl_keymap) +0x0.
  The return at 0x1005711c has v0 = 0x0.

- `_rl_vi_done_inserting` in `usr/gfx/KONA/bin/kpm` at 0x10057130 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057130-0x100571c4 (148 bytes).
  It occupies 148 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10057150, `lw` at 0x1005717c, `lw` at 0x10057190.
  The `lw` at 0x10057154 loads 4 bytes from abs 0x1024ae4c.
  The `lw` at 0x10057168 loads 4 bytes from abs 0x1014c578.
  The `sw` at 0x10057180 stores 4 bytes to abs 0x1024ae4c.
  2 such `sw` accesses store 4 bytes to abs 0x1024ae5c, including `sw` at 0x10057194, `sw` at 0x100571ac.
  The `jal` at 0x1005716c calls rl_end_undo_group [0x1004be10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10057158 targets 0x100571a0, is taken when at(=[0x1024ae4c]) == 0, and falls through when at(=[0x1024ae4c]) != 0.
  The `beq` branch at 0x10057198 targets 0x100571b0 and is always taken.
  The return at 0x100571bc has v0 = one of 0xfcb90, 0x1024ae4c.

- `rl_vi_movement_mode` in `usr/gfx/KONA/bin/kpm` at 0x100571d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100571d0-0x10057268 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x100571f8 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x100571fc loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10057214 loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x10057228 loads 4 bytes from abs 0x1014c7f8.
  The `lw` at 0x10057234 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x10057238 stores 4 bytes to sym(_rl_keymap) +0x0.
  The `lw` at 0x10057244 loads 4 bytes from abs 0x1014c650.
  The `jal` at 0x10057218 calls rl_backward [0x100490a0] with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10057248 calls _rl_vi_done_inserting [0x10057130] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10057200 targets 0x10057220, is taken when at(=[sym(rl_point)]) <= 0 (signed), and falls through when at(=[sym(rl_point)]) > 0 (signed).
  The return at 0x10057260 has v0 = 0x0.

- `rl_vi_arg_digit` in `usr/gfx/KONA/bin/kpm` at 0x10057270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057270-0x10057348 (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0x100572a8 loads 4 bytes from abs 0x1014c7c4.
  The `lw` at 0x100572ac loads 4 bytes from sym(rl_numeric_arg) +0x0.
  The `lw` at 0x100572c4 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x100572c8 loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x100572dc loads 4 bytes from abs 0x1014c534.
  The `lw` at 0x1005730c loads 4 bytes from abs 0x1014c4f0.
  The `jal` at 0x100572e0 calls rl_beg_of_line [0x10049190] with a0=[sym(rl_numeric_arg)], a1=[sym(rl_explicit_arg)], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10057310 calls rl_digit_argument [0x10047030] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x10057298 targets 0x100572fc, is taken when at(=a1) != v0(=0x30), and falls through when at(=a1) == v0(=0x30).
  The `bne` branch at 0x100572b4 targets 0x100572fc, is taken when a0(=[sym(rl_numeric_arg)]) != a1(=0x1), and falls through when a0(=[sym(rl_numeric_arg)]) == a1(=0x1).
  The `bne` branch at 0x100572cc targets 0x100572fc, is taken when a1(=[sym(rl_explicit_arg)]) != 0, and falls through when a1(=[sym(rl_explicit_arg)]) == 0.
  The `beq` branch at 0x100572f4 targets 0x10057330 and is always taken.
  The `beq` branch at 0x10057328 targets 0x10057330 and is always taken.
  The return at 0x10057340 has v0 = one of ret(rl_beg_of_line), ret(rl_digit_argument).

- `rl_vi_change_case` in `usr/gfx/KONA/bin/kpm` at 0x10057350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057350-0x10057784 (1076 bytes).
  It occupies 1076 bytes.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005737c, `lw` at 0x100573d0, `lw` at 0x1005740c.
  11 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10057380, `lw` at 0x100573d4, `lw` at 0x10057410.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x1005738c, `lw` at 0x100573e0, `lw` at 0x10057750.
  3 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10057390, `lw` at 0x100573e4, `lw` at 0x10057754.
  4 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x100573fc, `lw` at 0x10057450, `lw` at 0x10057530.
  4 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x10057400, `lw` at 0x10057454, `lw` at 0x10057534.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x1005741c, `lw` at 0x10057470, `lw` at 0x100574b4.
  8 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10057420, `lw` at 0x10057474, `lw` at 0x100574b8.
  8 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10057428, `lbu` at 0x1005747c, `lbu` at 0x100574c0.
  4 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2)) +0x4, including `lw` at 0x10057438, `lw` at 0x1005748c, `lw` at 0x1005756c.
  The `lw` at 0x100574cc loads 4 bytes from abs 0x1014c234.
  The `lw` at 0x10057600 loads 4 bytes from abs 0x1014c260.
  2 such `lw` accesses load 4 bytes from abs 0x1014c52c, including `lw` at 0x10057668, `lw` at 0x10057710.
  The `lw` at 0x10057690 loads 4 bytes from abs 0x1014c574.
  The `lw` at 0x100576ac loads 4 bytes from abs 0x1014c55c.
  The `lw` at 0x100576c8 loads 4 bytes from abs 0x1014c548.
  The `lw` at 0x100576dc loads 4 bytes from abs 0x1014c578.
  The `lw` at 0x100576f0 loads 4 bytes from abs 0x1014c658.
  The `jalr` at 0x100574d0 calls tolower with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=?, a3=?, a5=([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2), a6=[sym(rl_line_buffer)].
  The `jalr` at 0x10057604 calls toupper with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=?, a3=?, a6=([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2), a7=[sym(rl_line_buffer)].
  The `jal` at 0x1005766c calls rl_forward [0x10048f80] with a0=0x1, a1=?, a2=?, a3=?, a5=([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2), a6=[sym(rl_line_buffer)].
  The `jal` at 0x10057694 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100576b0 calls rl_delete [0x1004a550] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x100576cc calls rl_insert [0x10049c30] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x100576e0 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100576f4 calls rl_vi_check [0x10057880] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10057714 calls rl_forward [0x10048f80] with a0=0x1, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10057398 targets 0x100573ac, is taken when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x100573a4 targets 0x1005776c and is always taken.
  The `beq` branch at 0x100573c0 targets 0x10057764, is taken when v1(=a0-1) == a0(=-0x1), and falls through when v1(=a0-1) != a0(=-0x1).
  The `beq` branch at 0x100573ec targets 0x10057764, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10057440 targets 0x10057528, is taken when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0, and falls through when (a3(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10057494 targets 0x100574ec, is taken when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) == 0, and falls through when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x100574e4 targets 0x10057518 and is always taken.
  The `beq` branch at 0x10057520 targets 0x1005767c and is always taken.
  The `beq` branch at 0x10057574 targets 0x1005765c, is taken when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0, and falls through when (a4(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x100575c8 targets 0x10057620, is taken when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) == 0, and falls through when (a5(=[([sym(__libc_attr)] + ([([sym(rl_point)] + [sym(rl_line_buffer)])]:1 << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x10057618 targets 0x1005764c and is always taken.
  The `beq` branch at 0x10057654 targets 0x1005767c and is always taken.
  The `beq` branch at 0x10057674 targets 0x1005771c and is always taken.
  The `beq` branch at 0x10057680 targets 0x10057704, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x100576fc targets 0x1005771c and is always taken.
  The `beq` branch at 0x10057730 targets 0x10057764, is taken when ra(?) == at(=-0x1), and falls through when ra(?) != at(=-0x1).
  The `bne` branch at 0x1005775c targets 0x100573f4, is taken when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed).
  The return at 0x1005777c has v0 = 0x0.

- `rl_vi_put` in `usr/gfx/KONA/bin/kpm` at 0x10057790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057790-0x10057878 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x100577b8 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x100577bc loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x100577d0 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x100577e8 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100577ec loads 4 bytes from sym(rl_end) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100577f8, `lw` at 0x10057818, `lw` at 0x1005782c.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100577fc, `lw` at 0x1005781c.
  The `sw` at 0x10057830 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x1005783c loads 4 bytes from abs 0x1014c5bc.
  The `lw` at 0x10057854 loads 4 bytes from abs 0x1014c530.
  The `jal` at 0x10057840 calls rl_yank [0x1004d6e0] with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10057858 calls rl_backward [0x100490a0] with a0=0x1, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100577d8 targets 0x10057834, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0.
  The `bne` branch at 0x10057808 targets 0x10057834, is taken when v1(=[sym(rl_end)]) < a0(=[sym(rl_point)]+1) (signed), and falls through when v1(=[sym(rl_end)]) >= a0(=[sym(rl_point)]+1) (signed).
  The return at 0x10057870 has v0 = 0x0.

- `rl_vi_check` in `usr/gfx/KONA/bin/kpm` at 0x10057880 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057880-0x1005790c (140 bytes).
  It occupies 140 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x1005789c, `lw` at 0x100578b4, `lw` at 0x100578dc.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100578a0, `lw` at 0x100578b8, `lw` at 0x100578e0.
  The `lw` at 0x100578c4 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100578c8 loads 4 bytes from sym(rl_end) +0x0.
  The `sw` at 0x100578f4 stores 4 bytes to sym(rl_point) +0x0.
  The `beq` branch at 0x100578a4 targets 0x100578f8, is taken when v0(=[sym(rl_point)]) == 0, and falls through when v0(=[sym(rl_point)]) != 0.
  The `bne` branch at 0x100578cc targets 0x100578f8, is taken when a0(=[sym(rl_point)]) != a1(=[sym(rl_end)]), and falls through when a0(=[sym(rl_point)]) == a1(=[sym(rl_end)]).
  The return at 0x10057904 has v0 = 0x0.

- `rl_vi_column` in `usr/gfx/KONA/bin/kpm` at 0x10057910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10057910-0x1005799c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x10057938 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x1005793c loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x10057958 loads 4 bytes from abs 0x1014c538.
  The `lw` at 0x1005797c loads 4 bytes from abs 0x1014c8a4.
  The `sw` at 0x10057980 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x1005795c calls rl_end_of_line [0x100491c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10057948 targets 0x1005796c, is taken when at(=[sym(rl_end)]) >= v0(=a0) (signed), and falls through when at(=[sym(rl_end)]) < v0(=a0) (signed).
  The `beq` branch at 0x10057964 targets 0x10057984 and is always taken.
  The return at 0x10057994 has v0 = 0x0.

- `rl_vi_domove` in `usr/gfx/KONA/bin/kpm` at 0x100579a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100579a0-0x10058290 (2288 bytes).
  It occupies 2288 bytes.
  31 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100579c8, `lw` at 0x10057ce0, `lw` at 0x10057d1c.
  25 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100579cc, `lw` at 0x10057ce4, `lw` at 0x10057d30.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x100579d8, `lw` at 0x10057b84, `lw` at 0x10057d3c.
  3 such `sw` accesses store 4 bytes to sym(rl_mark) +0x0, including `sw` at 0x100579dc, `sw` at 0x10057b88, `sw` at 0x10058268.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4dc, including `lw` at 0x100579e8, `lw` at 0x10057b04.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x10057a04, `sw` at 0x10057b20.
  The `lw` at 0x10057a1c loads 4 bytes from abs 0x1014c048.
  The `lw` at 0x10057a20 loads 4 bytes from abs 0x1014937c.
  The `lw` at 0x10057a30 loads 4 bytes from abs 0x1014c200.
  3 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x10057a68, `lw` at 0x10057d64, `lw` at 0x10057f18.
  3 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x10057a6c, `lw` at 0x10057d68, `lw` at 0x10057f1c.
  3 such `lw` accesses load 4 bytes from ([sym(__libc_attr)] + (ret(rl_read_key) << 0x2)) +0x4, including `lw` at 0x10057a80, `lw` at 0x10057d7c, `lw` at 0x10057f30.
  4 such `lw` accesses load 4 bytes from abs 0x1014c7c4, including `lw` at 0x10057a98, `lw` at 0x10057ab4, `lw` at 0x10057ad8.
  2 such `lw` accesses load 4 bytes from sym(rl_numeric_arg) +0x0, including `lw` at 0x10057a9c, `lw` at 0x10057adc.
  2 such `sw` accesses store 4 bytes to sym(rl_numeric_arg) +0x0, including `sw` at 0x10057ab8, `sw` at 0x10057af8.
  The `lw` at 0x10057ac4 loads 4 bytes from abs 0x1014c050.
  12 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10057b74, `lw` at 0x10057bec, `lw` at 0x10057c00.
  10 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10057b78, `lw` at 0x10057bf0, `lw` at 0x10057c04.
  The `lw` at 0x10057b94 loads 4 bytes from abs 0x1014c534.
  2 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10057bac, `lw` at 0x10057bdc.
  2 such `sw` accesses store 4 bytes to abs 0x1024ae60, including `sw` at 0x10057bb0, `sw` at 0x10057be0.
  2 such `sw` accesses store 4 bytes to sym(rl_end) +0x0, including `sw` at 0x10057c18, `sw` at 0x10057cac.
  11 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10057c28, `lw` at 0x10057c64, `lw` at 0x10057cc8.
  11 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10057c2c, `lw` at 0x10057c68, `lw` at 0x10057ccc.
  The `sb` at 0x10057c48 stores 1 byte to ([sym(rl_line_buffer)] + [sym(rl_end)]-1) +0x0.
  2 such `sb` accesses store 1 byte to ([sym(rl_end)] + [sym(rl_line_buffer)]) +0x0, including `sb` at 0x10057c70, `sb` at 0x10057cd4.
  The `lw` at 0x10057c80 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x10057c84 loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lw` at 0x10057c90 loads 4 bytes from abs 0x1014c4e0.
  6 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x10057d20, `sw` at 0x10057eb0, `sw` at 0x10058038.
  8 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x10057d40, `lw` at 0x10057e18, `lw` at 0x10057ee0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c260, including `lw` at 0x10057d98, `lw` at 0x10057f4c.
  8 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10057e4c, `lbu` at 0x10057e80, `lbu` at 0x10057fd4.
  The `jal` at 0x100579ec calls rl_read_key [0x10045470] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10057a34 calls strchr with a0=[0x1014937c], a1=ret(rl_read_key), a2=?, a3=?.
  The `jal` at 0x10057ac8 calls (unnamed) [0x10058290] with a0=?, a1=?, a2=?, a3=?, a4=(ret(rl_read_key) << 0x2).
  The `jal` at 0x10057b08 calls rl_read_key [0x10045470] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10057b98 calls rl_beg_of_line [0x10049190] with a0=?, a1=a0 at entry (arg0), a2=ret(rl_read_key), a3=a0 at entry (arg0), a4=0x64.
  The `jal` at 0x10057c94 calls _rl_dispatch [0x10045630] with a0=ret(rl_read_key), a1=[sym(_rl_keymap)], a2=([sym(rl_end)] + [sym(rl_line_buffer)]), a3=[sym(rl_line_buffer)], a4=([sym(rl_line_buffer)] + [sym(rl_end)]-1), a5=[sym(rl_end)]-1, a6=sym(rl_end), a7=ret(rl_read_key).
  The `jalr` at 0x10057d9c calls toupper with a0=ret(rl_read_key), a1=?, a2=?, a3=?.
  The `jalr` at 0x10057f50 calls toupper with a0=ret(rl_read_key), a1=?, a2=?, a3=?, a6=a0 at entry (arg0), a7=0x63.
  The `beq` branch at 0x10057a0c targets 0x10057a50, is taken when v0(=ret(rl_read_key)) == 0, and falls through when v0(=ret(rl_read_key)) != 0.
  The `beq` branch at 0x10057a48 targets 0x10057a54 and is always taken.
  The `bne` branch at 0x10057a58 targets 0x10057bd0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x10057a88 targets 0x10057b2c, is taken when (a3(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x4) == 0, and falls through when (a3(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x4) != 0.
  The `beq` branch at 0x10057b24 targets 0x10057bd0 and is always taken.
  The `bne` branch at 0x10057b34 targets 0x10057bc0, is taken when a1(=a0) != a2(=ret(rl_read_key)), and falls through when a1(=a0) == a2(=ret(rl_read_key)).
  The `beq` branch at 0x10057b44 targets 0x10057b6c, is taken when a3(=a0) == a4(=0x64), and falls through when a3(=a0) != a4(=0x64).
  The `beq` branch at 0x10057b54 targets 0x10057b6c, is taken when a5(=a0) == a6(=0x79), and falls through when a5(=a0) != a6(=0x79).
  The `bne` branch at 0x10057b64 targets 0x10057bc0, is taken when a7(=a0) != t0(=0x63), and falls through when a7(=a0) == t0(=0x63).
  The `beq` branch at 0x10057bb8 targets 0x10058278 and is always taken.
  The `beq` branch at 0x10057bc8 targets 0x10058278 and is always taken.
  The `beq` branch at 0x10057cfc targets 0x10057d24, is taken when t1(=[sym(rl_end)]) >= t2(=[sym(rl_point)]) (signed), and falls through when t1(=[sym(rl_end)]) < t2(=[sym(rl_point)]) (signed).
  The `bne` branch at 0x10057d44 targets 0x10057d5c, is taken when at(=[sym(rl_point)]) != v0(=[sym(rl_mark)]), and falls through when at(=[sym(rl_point)]) == v0(=[sym(rl_mark)]).
  The `beq` branch at 0x10057d54 targets 0x10058278 and is always taken.
  The `beq` branch at 0x10057d84 targets 0x10057db8, is taken when (v1(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x2) == 0, and falls through when (v1(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x10057db0 targets 0x10057dc0 and is always taken.
  The `bne` branch at 0x10057dc8 targets 0x10057eb4, is taken when v0(?) != v1(=0x57), and falls through when v0(?) == v1(=0x57).
  The `beq` branch at 0x10057df4 targets 0x10057eb4, is taken when a0(=[sym(rl_point)]) >= a1(=[sym(rl_end)]) (signed), and falls through when a0(=[sym(rl_point)]) < a1(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10057e20 targets 0x10057eb4, is taken when a1(=[sym(rl_mark)]) >= a2(=[sym(rl_point)]) (signed), and falls through when a1(=[sym(rl_mark)]) < a2(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x10057e54 targets 0x10057eb4, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x20), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x20).
  The `beq` branch at 0x10057e88 targets 0x10057eb4, is taken when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a5(=0x9), and falls through when a4(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a5(=0x9).
  The `bne` branch at 0x10057ebc targets 0x10057f00, is taken when a6(=a0) != a7(=0x63), and falls through when a6(=a0) == a7(=0x63).
  The `bne` branch at 0x10057ee8 targets 0x10057f00, is taken when t0(=[sym(rl_point)]) < t1(=[sym(rl_mark)]) (signed), and falls through when t0(=[sym(rl_point)]) >= t1(=[sym(rl_mark)]) (signed).
  The `beq` branch at 0x10057ef8 targets 0x10057f04 and is always taken.
  The `beq` branch at 0x10057f08 targets 0x100581f8, is taken when t2(=one of 0x0, 0x1) == 0, and falls through when t2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x10057f38 targets 0x10057f6c, is taken when (t3(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x2) == 0, and falls through when (t3(=[([sym(__libc_attr)] + (ret(rl_read_key) << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x10057f64 targets 0x10057f74 and is always taken.
  The `bne` branch at 0x10057f7c targets 0x100581f8, is taken when v0(?) != v1(=0x57), and falls through when v0(?) == v1(=0x57).
  The `beq` branch at 0x10057fa8 targets 0x100580d0, is taken when a0(=[sym(rl_mark)]) >= a1(=[sym(rl_point)]) (signed), and falls through when a0(=[sym(rl_mark)]) < a1(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x10057fdc targets 0x10058018, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x20), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x20).
  The `bne` branch at 0x10058010 targets 0x100580d0, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x9), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x9).
  The `beq` branch at 0x10058060 targets 0x100580d0, is taken when a4(=[sym(rl_mark)]) >= a5(=[sym(rl_point)]) (signed), and falls through when a4(=[sym(rl_mark)]) < a5(=[sym(rl_point)]) (signed).
  The `beq` branch at 0x10058094 targets 0x10058018, is taken when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t0(=0x20), and falls through when a7(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t0(=0x20).
  The `beq` branch at 0x100580c8 targets 0x10058018, is taken when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == t1(=0x9), and falls through when t0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != t1(=0x9).
  The `bne` branch at 0x100580f0 targets 0x10058124, is taken when t1(=[sym(rl_point)]) != t2(=[sym(rl_mark)]), and falls through when t1(=[sym(rl_point)]) == t2(=[sym(rl_mark)]).
  The `beq` branch at 0x1005811c targets 0x100581f8 and is always taken.
  The `bltz` branch at 0x10058134 targets 0x100581f8, is taken when t3(=[sym(rl_point)]) < 0 (signed), and falls through when t3(=[sym(rl_point)]) >= 0 (signed).
  The `beq` branch at 0x10058164 targets 0x100581f8, is taken when t8(=[sym(rl_point)]) >= t9(=[sym(rl_end)]-1) (signed), and falls through when t8(=[sym(rl_point)]) < t9(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10058198 targets 0x100581f8, is taken when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == ra(=0x20), and falls through when t9(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != ra(=0x20).
  The `beq` branch at 0x100581cc targets 0x100581f8, is taken when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == at(=0x9), and falls through when ra(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != at(=0x9).
  The `beq` branch at 0x1005821c targets 0x10058270, is taken when v0(=[sym(rl_mark)]) >= v1(=[sym(rl_point)]) (signed), and falls through when v0(=[sym(rl_mark)]) < v1(=[sym(rl_point)]) (signed).
  The return at 0x10058288 has v0 = one of -0x1, 0x0.

- `rl_vi_delete_to` in `usr/gfx/KONA/bin/kpm` at 0x100584c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100584c0-0x10058690 (464 bytes).
  It occupies 464 bytes.
  The `lw` at 0x100584e8 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x100584ec loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10058500 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4c8, including `lw` at 0x1005851c, `lw` at 0x10058560.
  2 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10058538, `lw` at 0x10058550.
  The `lw` at 0x1005853c loads 4 bytes from abs 0x1024ae6c.
  The `lw` at 0x10058554 loads 4 bytes from abs 0x1024ae60.
  The `lw` at 0x1005857c loads 4 bytes from abs 0x1014c65c.
  The `lw` at 0x1005859c loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x100585c0 loads 4 bytes from abs 0x1014c054.
  The `lw` at 0x100585d4 loads 4 bytes from abs 0x1014c200.
  The `lw` at 0x100585f4 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100585f8 loads 4 bytes from sym(rl_end) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x10058604, `lw` at 0x10058620, `lw` at 0x10058634.
  3 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x10058608, `lw` at 0x10058624, `lw` at 0x10058658.
  The `sw` at 0x10058638 stores 4 bytes to sym(rl_mark) +0x0.
  The `lw` at 0x10058644 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x10058648 loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10058664 loads 4 bytes from abs 0x1014c5a8.
  The `jal` at 0x10058520 calls rl_stuff_char [0x10044e20] with a0=0x24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058564 calls rl_stuff_char [0x10044e20] with a0=[0x1024ae60], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058580 calls rl_vi_domove [0x100579a0] with a0=a1 at entry (arg1), a1=sp-64, a2=?, a3=?.
  The `jal` at 0x100585a0 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100585d8 calls strchr with a0=0x10093350, a1=?, a2=?, a3=?.
  The `jal` at 0x10058668 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_mark)], a2=?, a3=?.
  The `beq` branch at 0x10058508 targets 0x10058530, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10058528 targets 0x1005856c and is always taken.
  The `beq` branch at 0x10058540 targets 0x1005856c, is taken when ra(=[0x1024ae6c]) == 0, and falls through when ra(=[0x1024ae6c]) != 0.
  The `beq` branch at 0x1005858c targets 0x100585b8, is taken when v0(=ret(rl_vi_domove)) == 0, and falls through when v0(=ret(rl_vi_domove)) != 0.
  The `beq` branch at 0x100585b0 targets 0x10058678 and is always taken.
  The `bne` branch at 0x100585e4 targets 0x1005863c, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x10058610 targets 0x1005863c, is taken when a1(=[sym(rl_mark)]) >= a2(=[sym(rl_end)]) (signed), and falls through when a1(=[sym(rl_mark)]) < a2(=[sym(rl_end)]) (signed).
  The return at 0x10058688 has v0 = one of -0x1, 0x0.

- `rl_vi_change_to` in `usr/gfx/KONA/bin/kpm` at 0x10058690 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058690-0x10058984 (756 bytes).
  It occupies 756 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x100586b8, `lw` at 0x10058828.
  2 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x100586bc, `lw` at 0x1005882c.
  The `lw` at 0x100586d0 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c4c8, including `lw` at 0x100586ec, `lw` at 0x10058730.
  3 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10058708, `lw` at 0x10058720, `lw` at 0x1005891c.
  The `lw` at 0x1005870c loads 4 bytes from abs 0x1024ae6c.
  The `lw` at 0x10058724 loads 4 bytes from abs 0x1024ae60.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10058744, `lw` at 0x1005889c, `lw` at 0x100588c0.
  3 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10058748, `lw` at 0x100588a0, `lw` at 0x100588d4.
  The `lw` at 0x10058760 loads 4 bytes from abs 0x1014c65c.
  The `lw` at 0x10058780 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x100587a4 loads 4 bytes from abs 0x1014c054.
  The `lw` at 0x100587b8 loads 4 bytes from abs 0x1014c200.
  The `lw` at 0x100587d8 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x100587dc loads 4 bytes from sym(rl_end) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x100587e8, `lw` at 0x10058804, `lw` at 0x10058818.
  3 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x100587ec, `lw` at 0x10058808, `lw` at 0x100588e4.
  The `sw` at 0x1005881c stores 4 bytes to sym(rl_mark) +0x0.
  The `lw` at 0x10058840 loads 4 bytes from ?.
  The `lw` at 0x1005885c loads 4 bytes from abs 0x1014c260.
  The `sw` at 0x100588c4 stores 4 bytes to sym(rl_point) +0x0.
  The `lw` at 0x100588f0 loads 4 bytes from abs 0x1014c5a8.
  The `lw` at 0x10058904 loads 4 bytes from abs 0x1014c574.
  The `sw` at 0x10058920 stores 4 bytes to abs 0x1024ae4c.
  The `lw` at 0x10058934 loads 4 bytes from abs 0x1014c7c8.
  The `lw` at 0x10058938 loads 4 bytes from sym(rl_arg_sign) +0x0.
  The `lw` at 0x10058944 loads 4 bytes from abs 0x1014c61c.
  The `lw` at 0x10058958 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x100586f0 calls rl_stuff_char [0x10044e20] with a0=0x24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058734 calls rl_stuff_char [0x10044e20] with a0=[0x1024ae60], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058764 calls rl_vi_domove [0x100579a0] with a0=a1 at entry (arg1), a1=sp-60, a2=?, a3=?.
  The `jal` at 0x10058784 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100587bc calls strchr with a0=0x10093360, a1=?, a2=?, a3=?.
  The `jalr` at 0x10058860 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100588f4 calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_mark)], a2=?, a3=?.
  The `jal` at 0x10058908 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10058948 calls _rl_vi_set_last [0x10053a40] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=[sym(rl_arg_sign)], a3=0x1, a4=0x1024ae4c.
  The `jal` at 0x1005895c calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100586d8 targets 0x10058700, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x100586f8 targets 0x1005873c and is always taken.
  The `beq` branch at 0x10058710 targets 0x1005873c, is taken when ra(=[0x1024ae6c]) == 0, and falls through when ra(=[0x1024ae6c]) != 0.
  The `beq` branch at 0x10058770 targets 0x1005879c, is taken when v0(=ret(rl_vi_domove)) == 0, and falls through when v0(=ret(rl_vi_domove)) != 0.
  The `beq` branch at 0x10058794 targets 0x1005896c and is always taken.
  The `bne` branch at 0x100587c8 targets 0x10058820, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x100587f4 targets 0x10058820, is taken when a1(=[sym(rl_mark)]) >= a2(=[sym(rl_end)]) (signed), and falls through when a1(=[sym(rl_mark)]) < a2(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10058848 targets 0x1005887c, is taken when (a4(?) & 0x2) == 0, and falls through when (a4(?) & 0x2) != 0.
  The `beq` branch at 0x10058874 targets 0x10058884 and is always taken.
  The `bne` branch at 0x1005888c targets 0x100588c8, is taken when v0(?) != v1(=0x57), and falls through when v0(?) == v1(=0x57).
  The `beq` branch at 0x100588ac targets 0x100588c8, is taken when a0(=[sym(rl_point)]) >= a1(=[sym(rl_point)]) (signed), and falls through when a0(=[sym(rl_point)]) < a1(=[sym(rl_point)]) (signed).
  The return at 0x1005897c has v0 = one of -0x1, 0x0.

- `rl_vi_yank_to` in `usr/gfx/KONA/bin/kpm` at 0x10058990 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058990-0x10058b80 (496 bytes).
  It occupies 496 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100589b8, `lw` at 0x10058af8, `lw` at 0x10058b58.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x100589bc, `lw` at 0x10058afc.
  The `lw` at 0x100589cc loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x100589d0 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x100589e4 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x10058a00 loads 4 bytes from abs 0x1014c4c8.
  The `lw` at 0x10058a1c loads 4 bytes from abs 0x1014c65c.
  The `lw` at 0x10058a3c loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x10058a60 loads 4 bytes from abs 0x1014c054.
  The `lw` at 0x10058a74 loads 4 bytes from abs 0x1014c200.
  The `lw` at 0x10058a94 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10058a98 loads 4 bytes from sym(rl_end) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a8, including `lw` at 0x10058aa4, `lw` at 0x10058ac0, `lw` at 0x10058ad4.
  3 such `lw` accesses load 4 bytes from sym(rl_mark) +0x0, including `lw` at 0x10058aa8, `lw` at 0x10058ac4, `lw` at 0x10058b0c.
  The `sw` at 0x10058ad8 stores 4 bytes to sym(rl_mark) +0x0.
  The `lw` at 0x10058ae4 loads 4 bytes from abs 0x1014c574.
  The `lw` at 0x10058b18 loads 4 bytes from abs 0x1014c5a8.
  The `lw` at 0x10058b2c loads 4 bytes from abs 0x1014c578.
  The `lw` at 0x10058b40 loads 4 bytes from abs 0x1014c570.
  The `sw` at 0x10058b5c stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x10058a04 calls rl_stuff_char [0x10044e20] with a0=0x24, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058a20 calls rl_vi_domove [0x100579a0] with a0=a1 at entry (arg1), a1=sp-60, a2=?, a3=?.
  The `jal` at 0x10058a40 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10058a78 calls strchr with a0=0x10093350, a1=?, a2=?, a3=?.
  The `jal` at 0x10058ae8 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10058b1c calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=[sym(rl_mark)], a2=?, a3=?.
  The `jal` at 0x10058b30 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10058b44 calls rl_do_undo [0x1004bb40] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100589ec targets 0x10058a0c, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10058a2c targets 0x10058a58, is taken when v0(=ret(rl_vi_domove)) == 0, and falls through when v0(=ret(rl_vi_domove)) != 0.
  The `beq` branch at 0x10058a50 targets 0x10058b68 and is always taken.
  The `bne` branch at 0x10058a84 targets 0x10058adc, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x10058ab0 targets 0x10058adc, is taken when a1(=[sym(rl_mark)]) >= a2(=[sym(rl_end)]) (signed), and falls through when a1(=[sym(rl_mark)]) < a2(=[sym(rl_end)]) (signed).
  The return at 0x10058b78 has v0 = one of -0x1, 0x0.

- `rl_vi_delete` in `usr/gfx/KONA/bin/kpm` at 0x10058b80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058b80-0x10058ccc (332 bytes).
  It occupies 332 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10058ba8, `lw` at 0x10058c00, `lw` at 0x10058c20.
  4 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10058bac, `lw` at 0x10058c04, `lw` at 0x10058c24.
  The `lw` at 0x10058bc0 loads 4 bytes from abs 0x1014c514.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10058be4, `lw` at 0x10058c34, `lw` at 0x10058c5c.
  4 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10058be8, `lw` at 0x10058c38, `lw` at 0x10058c60.
  The `lw` at 0x10058c48 loads 4 bytes from abs 0x1014c5a8.
  The `lw` at 0x10058ca0 loads 4 bytes from abs 0x1014c530.
  The `jal` at 0x10058bc4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058c4c calls rl_kill_text [0x1004cd40] with a0=[sym(rl_point)], a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058ca4 calls rl_backward [0x100490a0] with a0=0x1, a1=[sym(rl_point)], a2=[sym(rl_point)], a3=[sym(rl_end)].
  The `bne` branch at 0x10058bb0 targets 0x10058bdc, is taken when at(=[sym(rl_end)]) != 0, and falls through when at(=[sym(rl_end)]) == 0.
  The `beq` branch at 0x10058bd4 targets 0x10058cb4 and is always taken.
  The `bne` branch at 0x10058c10 targets 0x10058c2c, is taken when at(=([sym(rl_point)] + a0)) < v0(=[sym(rl_end)]) (signed), and falls through when at(=([sym(rl_point)] + a0)) >= v0(=[sym(rl_end)]) (signed).
  The `blez` branch at 0x10058c64 targets 0x10058cac, is taken when a1(=[sym(rl_point)]) <= 0 (signed), and falls through when a1(=[sym(rl_point)]) > 0 (signed).
  The `bne` branch at 0x10058c8c targets 0x10058cac, is taken when a2(=[sym(rl_point)]) != a3(=[sym(rl_end)]), and falls through when a2(=[sym(rl_point)]) == a3(=[sym(rl_end)]).
  The return at 0x10058cc4 has v0 = one of -0x1, 0x0.

- `rl_vi_comment` in `usr/gfx/KONA/bin/kpm` at 0x10058cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058cd0-0x10058db4 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x10058cf8 loads 4 bytes from abs 0x1014c534.
  2 such `lw` accesses load 4 bytes from abs 0x1014c9a0, including `lw` at 0x10058d0c, `lw` at 0x10058d24.
  2 such `lw` accesses load 4 bytes from sym(rl_vi_comment_begin) +0x0, including `lw` at 0x10058d10, `lw` at 0x10058d28.
  2 such `lw` accesses load 4 bytes from abs 0x1014c524, including `lw` at 0x10058d34, `lw` at 0x10058d60.
  The `lw` at 0x10058d50 loads 4 bytes from abs 0x1014c054.
  The `lw` at 0x10058d74 loads 4 bytes from abs 0x1014c5d0.
  The `lw` at 0x10058d90 loads 4 bytes from abs 0x1014c54c.
  The `jal` at 0x10058cfc calls rl_beg_of_line [0x10049190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10058d38 calls rl_insert_text [0x10048a40] with a0=[sym(rl_vi_comment_begin)], a1=?, a2=?, a3=?.
  The `jal` at 0x10058d64 calls rl_insert_text [0x10048a40] with a0=0x10093370, a1=?, a2=?, a3=?.
  The `jal` at 0x10058d78 calls rl_redisplay [0x1004e7b0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10058d94 calls rl_newline [0x1004a160] with a0=0x1, a1=0x8, a2=?, a3=?.
  The `beq` branch at 0x10058d14 targets 0x10058d48, is taken when at(=[sym(rl_vi_comment_begin)]) == 0, and falls through when at(=[sym(rl_vi_comment_begin)]) != 0.
  The `beq` branch at 0x10058d40 targets 0x10058d6c and is always taken.
  The return at 0x10058dac has v0 = 0x0.

- `rl_vi_first_print` in `usr/gfx/KONA/bin/kpm` at 0x10058dc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058dc0-0x10058e08 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x10058de8 loads 4 bytes from abs 0x1014c660.
  The `jal` at 0x10058dec calls rl_back_to_indent [0x10058e10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10058e00 has v0 = ret(rl_back_to_indent).

- `rl_back_to_indent` in `usr/gfx/KONA/bin/kpm` at 0x10058e10 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058e10-0x10058fa8 (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0x10058e38 loads 4 bytes from abs 0x1014c534.
  8 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10058e4c, `lw` at 0x10058e78, `lw` at 0x10058eac.
  7 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10058e50, `lw` at 0x10058e7c, `lw` at 0x10058eb0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10058e5c, `lw` at 0x10058f14.
  2 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10058e60, `lw` at 0x10058f18.
  4 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10058e88, `lw` at 0x10058ebc, `lw` at 0x10058f40.
  4 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10058e8c, `lw` at 0x10058ec0, `lw` at 0x10058f44.
  4 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10058e94, `lbu` at 0x10058ec8, `lbu` at 0x10058f4c.
  The `sw` at 0x10058ef8 stores 4 bytes to sym(rl_point) +0x0.
  The `jal` at 0x10058e3c calls rl_beg_of_line [0x10049190] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10058e68 targets 0x10058f90, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10058e9c targets 0x10058ed8, is taken when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == v1(=0x20), and falls through when v0(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != v1(=0x20).
  The `bne` branch at 0x10058ed0 targets 0x10058f90, is taken when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a0(=0x9), and falls through when v1(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a0(=0x9).
  The `beq` branch at 0x10058f20 targets 0x10058f90, is taken when a0(=[sym(rl_point)]) >= a1(=[sym(rl_end)]) (signed), and falls through when a0(=[sym(rl_point)]) < a1(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10058f54 targets 0x10058ed8, is taken when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a3(=0x20), and falls through when a2(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a3(=0x20).
  The `beq` branch at 0x10058f88 targets 0x10058ed8, is taken when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) == a4(=0x9), and falls through when a3(=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1) != a4(=0x9).
  The return at 0x10058fa0 has v0 = 0x0.

- `rl_vi_char_search` in `usr/gfx/KONA/bin/kpm` at 0x10058fb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10058fb0-0x100594d8 (1320 bytes).
  It occupies 1320 bytes.
  21 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10059008, `lw` at 0x10059024, `lw` at 0x1005903c.
  2 such `lw` accesses load 4 bytes from abs 0x1024ae74, including `lw` at 0x1005900c, `lw` at 0x10059028.
  5 such `sw` accesses store 4 bytes to abs 0x1024ae78, including `sw` at 0x10059044, `sw` at 0x1005913c, `sw` at 0x1005916c.
  The `lw` at 0x1005905c loads 4 bytes from abs 0x1024ae6c.
  The `lw` at 0x10059074 loads 4 bytes from abs 0x1024ae64.
  2 such `sb` accesses store 1 byte to abs 0x1024ae70, including `sb` at 0x10059084, `sb` at 0x100590c8.
  The `lw` at 0x10059098 loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x1005909c loads 4 bytes from sym(rl_instream) +0x0.
  The `lw` at 0x100590a8 loads 4 bytes from abs 0x1014c5c8.
  The `sw` at 0x100590d8 stores 4 bytes to abs 0x1024ae64.
  4 such `sw` accesses store 4 bytes to abs 0x1024ae74, including `sw` at 0x1005914c, `sw` at 0x1005917c, `sw` at 0x100591ac.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x100591f0, `lw` at 0x100592cc, `lw` at 0x100592e8.
  The `lw` at 0x100591f4 loads 4 bytes from sym(rl_point) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1024ae78, including `lw` at 0x10059224, `lw` at 0x100592ac, `lw` at 0x100593dc.
  4 such `lw` accesses load 4 bytes from abs 0x1014c514, including `lw` at 0x10059244, `lw` at 0x10059328, `lw` at 0x10059374.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10059278, `lw` at 0x100593a8.
  2 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x1005927c, `lw` at 0x100593ac.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10059284, `lbu` at 0x100593b4.
  2 such `lbu` accesses load 1 byte from abs 0x1024ae70, including `lbu` at 0x10059294, `lbu` at 0x100593c4.
  4 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x100592d0, `sw` at 0x100592ec, `sw` at 0x10059400.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10059354, `lw` at 0x1005943c, `lw` at 0x10059460.
  3 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10059358, `lw` at 0x10059440, `lw` at 0x10059464.
  The `jal` at 0x100590ac calls rl_getc [0x1004ddc0] with a0=[sym(rl_instream)], a1=0x2c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10059248 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005932c calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059378 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059484 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10058fd8 targets 0x10058ff0, is taken when at(=a1) == v0(=0x3b), and falls through when at(=a1) != v0(=0x3b).
  The `bne` branch at 0x10058fe8 targets 0x10059050, is taken when a0(=a1) != a1(=0x2c), and falls through when a0(=a1) == a1(=0x2c).
  The `bne` branch at 0x10058ff8 targets 0x1005901c, is taken when a2(=a1) != a3(=0x3b), and falls through when a2(=a1) == a3(=0x3b).
  The `beq` branch at 0x10059014 targets 0x10059034 and is always taken.
  The `beq` branch at 0x10059048 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x10059060 targets 0x10059090, is taken when t0(=[0x1024ae6c]) == 0, and falls through when t0(=[0x1024ae6c]) != 0.
  The `beq` branch at 0x10059088 targets 0x100590dc and is always taken.
  The `beq` branch at 0x100590e8 targets 0x10059128, is taken when a4(=a1) == a5(=0x74), and falls through when a4(=a1) != a5(=0x74).
  The `beq` branch at 0x100590f8 targets 0x10059158, is taken when a6(=a1) == a7(=0x54), and falls through when a6(=a1) != a7(=0x54).
  The `beq` branch at 0x10059108 targets 0x10059188, is taken when t0(=a1) == t1(=0x66), and falls through when t0(=a1) != t1(=0x66).
  The `beq` branch at 0x10059118 targets 0x100591b8, is taken when t2(=a1) == t3(=0x46), and falls through when t2(=a1) != t3(=0x46).
  The `beq` branch at 0x10059120 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x10059150 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x10059180 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x100591b0 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x100591e0 targets 0x100591e8 and is always taken.
  The `beq` branch at 0x10059210 targets 0x100594b8, is taken when a6(=a0-1) == a7(=-0x1), and falls through when a6(=a0-1) != a7(=-0x1).
  The `bgez` branch at 0x10059228 targets 0x1005934c, is taken when t2(=[0x1024ae78]) >= 0 (signed), and falls through when t2(=[0x1024ae78]) < 0 (signed).
  The `bne` branch at 0x10059234 targets 0x10059260, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x10059258 targets 0x100594c0 and is always taken.
  The `bne` branch at 0x10059298 targets 0x100592f8, is taken when v0(?) != v1(=[0x1024ae70]:1), and falls through when v0(?) == v1(=[0x1024ae70]:1).
  The `bne` branch at 0x100592b4 targets 0x100592dc, is taken when a0(=[0x1024ae78]) != a1(=-0x1), and falls through when a0(=[0x1024ae78]) == a1(=-0x1).
  The `beq` branch at 0x100592d4 targets 0x100592f0 and is always taken.
  The `beq` branch at 0x100592f0 targets 0x10059314 and is always taken.
  The `bne` branch at 0x1005930c targets 0x1005926c, is taken when a4(?) != a5(=-0x1), and falls through when a4(?) == a5(=-0x1).
  The `bgez` branch at 0x10059318 targets 0x10059344, is taken when a7(?) >= 0 (signed), and falls through when a7(?) < 0 (signed).
  The `beq` branch at 0x1005933c targets 0x100594c0 and is always taken.
  The `beq` branch at 0x10059344 targets 0x1005949c and is always taken.
  The `bne` branch at 0x10059364 targets 0x10059390, is taken when at(?) < v0(=[sym(rl_end)]) (signed), and falls through when at(?) >= v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10059388 targets 0x100594c0 and is always taken.
  The `bne` branch at 0x100593c8 targets 0x10059428, is taken when v0(?) != v1(=[0x1024ae70]:1), and falls through when v0(?) == v1(=[0x1024ae70]:1).
  The `bne` branch at 0x100593e4 targets 0x1005940c, is taken when a0(=[0x1024ae78]) != a1(=0x1), and falls through when a0(=[0x1024ae78]) == a1(=0x1).
  The `beq` branch at 0x10059404 targets 0x10059420 and is always taken.
  The `beq` branch at 0x10059420 targets 0x10059454 and is always taken.
  The `bne` branch at 0x1005944c targets 0x1005939c, is taken when a4(?) < a5(=[sym(rl_end)]) (signed), and falls through when a4(?) >= a5(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10059470 targets 0x1005949c, is taken when a7(?) < t0(=[sym(rl_end)]-1) (signed), and falls through when a7(?) >= t0(=[sym(rl_end)]-1) (signed).
  The `beq` branch at 0x10059494 targets 0x100594c0 and is always taken.
  The `bne` branch at 0x100594b0 targets 0x10059218, is taken when at(?) != v0(=-0x1), and falls through when at(?) == v0(=-0x1).
  The return at 0x100594d0 has v0 = one of -0x1, 0x0.

- `rl_vi_match` in `usr/gfx/KONA/bin/kpm` at 0x100594e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100594e0-0x100598f4 (1044 bytes).
  It occupies 1044 bytes.
  9 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10059510, `lw` at 0x10059524, `lw` at 0x10059578.
  7 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10059514, `lw` at 0x10059528, `lw` at 0x1005957c.
  5 such `lw` accesses load 4 bytes from abs 0x1014c8e0, including `lw` at 0x10059534, `lw` at 0x10059588, `lw` at 0x10059624.
  5 such `lw` accesses load 4 bytes from sym(rl_line_buffer) +0x0, including `lw` at 0x10059538, `lw` at 0x1005958c, `lw` at 0x10059628.
  3 such `lbu` accesses load 1 byte from ([sym(rl_point)] + [sym(rl_line_buffer)]) +0x0, including `lbu` at 0x10059540, `lbu` at 0x10059594, `lbu` at 0x10059630.
  5 such `lw` accesses load 4 bytes from abs 0x1014c664, including `lw` at 0x1005954c, `lw` at 0x100595a0, `lw` at 0x1005963c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x100595dc, `lw` at 0x10059678, `lw` at 0x100597f4.
  3 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x100595e0, `lw` at 0x1005967c, `lw` at 0x100597f8.
  The `lw` at 0x10059600 loads 4 bytes from abs 0x1014c52c.
  2 such `sw` accesses store 4 bytes to sym(rl_point) +0x0, including `sw` at 0x100596ac, `sw` at 0x100598d0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c514, including `lw` at 0x100596b8, `lw` at 0x100597a4, `lw` at 0x10059898.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10059730, `lbu` at 0x10059824.
  The `jal` at 0x10059550 calls rl_vi_bracktype [0x10059900] with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=0x1, a3=0xfa7e0.
  The `jal` at 0x100595a4 calls rl_vi_bracktype [0x10059900] with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=?, a3=?, a4=ret(rl_vi_bracktype).
  The `jal` at 0x10059604 calls rl_forward [0x10048f80] with a0=0x1, a1=ret(rl_vi_bracktype), a2=?, a3=[sym(rl_end)]-1.
  The `jal` at 0x10059640 calls rl_vi_bracktype [0x10059900] with a0=[([sym(rl_point)] + [sym(rl_line_buffer)])]:1, a1=[sym(rl_line_buffer)], a2=?, a3=?.
  The `jal` at 0x100596bc calls ding [0x100485f0] with a0=?, a1=ret(rl_vi_bracktype), a2=?, a3=ret(rl_vi_bracktype).
  The `jal` at 0x10059740 calls rl_vi_bracktype [0x10059900] with a0=?, a1=[sym(rl_line_buffer)], a2=?, a3=?.
  The `jal` at 0x100597a8 calls ding [0x100485f0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059834 calls rl_vi_bracktype [0x10059900] with a0=?, a1=[sym(rl_line_buffer)], a2=?, a3=?.
  The `jal` at 0x1005989c calls ding [0x100485f0] with a0=[sym(rl_end)], a1=?, a2=?, a3=?.
  The `bne` branch at 0x10059568 targets 0x100596d4, is taken when a4(=ret(rl_vi_bracktype)) != 0, and falls through when a4(=ret(rl_vi_bracktype)) == 0.
  The `bne` branch at 0x100595bc targets 0x10059690, is taken when a1(=ret(rl_vi_bracktype)) != 0, and falls through when a1(=ret(rl_vi_bracktype)) == 0.
  The `beq` branch at 0x100595ec targets 0x10059690, is taken when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed).
  The `bne` branch at 0x10059658 targets 0x10059690, is taken when a1(=ret(rl_vi_bracktype)) != 0, and falls through when a1(=ret(rl_vi_bracktype)) == 0.
  The `bne` branch at 0x10059688 targets 0x100595f4, is taken when a2(=[sym(rl_point)]) < a3(=[sym(rl_end)]-1) (signed), and falls through when a2(=[sym(rl_point)]) >= a3(=[sym(rl_end)]-1) (signed).
  The `bgtz` branch at 0x10059694 targets 0x100596d4, is taken when a3(=ret(rl_vi_bracktype)) > 0 (signed), and falls through when a3(=ret(rl_vi_bracktype)) <= 0 (signed).
  The `beq` branch at 0x100596cc targets 0x100598dc and is always taken.
  The `bgez` branch at 0x100596ec targets 0x100597d4, is taken when v1(=ret(rl_vi_bracktype)) >= 0 (signed), and falls through when v1(=ret(rl_vi_bracktype)) < 0 (signed).
  The `beq` branch at 0x100596f8 targets 0x100597cc and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bltz` branch at 0x10059710 targets 0x1005979c, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bne` branch at 0x1005975c targets 0x10059778, is taken when a2(=ret(rl_vi_bracktype)) != a3(?), and falls through when a2(=ret(rl_vi_bracktype)) == a3(?).
  The `beq` branch at 0x10059770 targets 0x10059794 and is always taken.
  The `bne` branch at 0x10059780 targets 0x10059794, is taken when a5(=ret(rl_vi_bracktype)) != a6(=ret(rl_vi_bracktype)), and falls through when a5(=ret(rl_vi_bracktype)) == a6(=ret(rl_vi_bracktype)).
  The `beq` branch at 0x10059794 targets 0x100597c0 and is always taken.
  The `beq` branch at 0x100597b8 targets 0x100598dc and is always taken.
  The `bne` branch at 0x100597c4 targets 0x10059700, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x100597cc targets 0x100598c0 and is always taken.
  The `beq` branch at 0x100597d8 targets 0x100598c0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x10059804 targets 0x10059890, is taken when v1(?) >= a0(=[sym(rl_end)]) (signed), and falls through when v1(?) < a0(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10059850 targets 0x1005986c, is taken when a2(=ret(rl_vi_bracktype)) != a3(?), and falls through when a2(=ret(rl_vi_bracktype)) == a3(?).
  The `beq` branch at 0x10059864 targets 0x10059888 and is always taken.
  The `bne` branch at 0x10059874 targets 0x10059888, is taken when a5(=ret(rl_vi_bracktype)) != a6(=ret(rl_vi_bracktype)), and falls through when a5(=ret(rl_vi_bracktype)) == a6(=ret(rl_vi_bracktype)).
  The `beq` branch at 0x10059888 targets 0x100598b4 and is always taken.
  The `beq` branch at 0x100598ac targets 0x100598dc and is always taken.
  The `bne` branch at 0x100598b8 targets 0x100597e0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The return at 0x100598ec has v0 = one of -0x1, 0x0.

- `rl_vi_bracktype` in `usr/gfx/KONA/bin/kpm` at 0x10059900 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059900-0x100599fc (252 bytes).
  It occupies 252 bytes.
  The `beq` branch at 0x10059918 targets 0x10059978, is taken when at(=a0) == v0(=0x28), and falls through when at(=a0) != v0(=0x28).
  The `beq` branch at 0x10059928 targets 0x10059988, is taken when v1(=a0) == a0(=0x29), and falls through when v1(=a0) != a0(=0x29).
  The `beq` branch at 0x10059938 targets 0x10059998, is taken when a1(=a0) == a2(=0x5b), and falls through when a1(=a0) != a2(=0x5b).
  The `beq` branch at 0x10059948 targets 0x100599a8, is taken when a3(=a0) == a4(=0x5d), and falls through when a3(=a0) != a4(=0x5d).
  The `beq` branch at 0x10059958 targets 0x100599b8, is taken when a5(=a0) == a6(=0x7b), and falls through when a5(=a0) != a6(=0x7b).
  The `beq` branch at 0x10059968 targets 0x100599c8, is taken when a7(=a0) == t0(=0x7d), and falls through when a7(=a0) != t0(=0x7d).
  The `beq` branch at 0x10059970 targets 0x100599d8 and is always taken.
  The `beq` branch at 0x10059980 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x10059990 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599a0 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599b0 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599c0 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599d0 targets 0x100599e8 and is always taken.
  The `beq` branch at 0x100599e0 targets 0x100599e8 and is always taken.
  The return at 0x100599f4 has v0 = one of 0x1, -0x1, 0x2, -0x2, 0x3, -0x3, 0x0.

- `rl_vi_change_char` in `usr/gfx/KONA/bin/kpm` at 0x10059a00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059a00-0x10059bf4 (500 bytes).
  It occupies 500 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10059a28, `lw` at 0x10059a40, `lw` at 0x10059a88.
  The `lw` at 0x10059a2c loads 4 bytes from abs 0x1024ae6c.
  The `lw` at 0x10059a44 loads 4 bytes from abs 0x1024ae68.
  The `lw` at 0x10059a5c loads 4 bytes from abs 0x1014c8b8.
  The `lw` at 0x10059a60 loads 4 bytes from sym(rl_instream) +0x0.
  The `lw` at 0x10059a6c loads 4 bytes from abs 0x1014c5c8.
  The `sw` at 0x10059a8c stores 4 bytes to abs 0x1024ae68.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10059ae4, `lw` at 0x10059bb0.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10059ae8, `lw` at 0x10059bb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8ac, including `lw` at 0x10059af4, `lw` at 0x10059bc0.
  2 such `lw` accesses load 4 bytes from sym(rl_end) +0x0, including `lw` at 0x10059af8, `lw` at 0x10059bc4.
  The `lw` at 0x10059b10 loads 4 bytes from abs 0x1014c574.
  The `lw` at 0x10059b2c loads 4 bytes from abs 0x1014c55c.
  The `lw` at 0x10059b48 loads 4 bytes from abs 0x1014c548.
  The `lw` at 0x10059b6c loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x10059b80 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x10059a70 calls rl_getc [0x1004ddc0] with a0=[sym(rl_instream)], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10059b14 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059b30 calls rl_delete [0x1004a550] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10059b4c calls rl_insert [0x10049c30] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10059b70 calls rl_backward [0x100490a0] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10059b84 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10059a30 targets 0x10059a54, is taken when at(=[0x1024ae6c]) == 0, and falls through when at(=[0x1024ae6c]) != 0.
  The `beq` branch at 0x10059a4c targets 0x10059a90 and is always taken.
  The `beq` branch at 0x10059a98 targets 0x10059ab0, is taken when a3(?) == a4(=0x1b), and falls through when a3(?) != a4(=0x1b).
  The `bne` branch at 0x10059aa8 targets 0x10059ac0, is taken when a5(?) != a6(=0x3), and falls through when a5(?) == a6(=0x3).
  The `beq` branch at 0x10059ab8 targets 0x10059bdc and is always taken.
  The `beq` branch at 0x10059ad4 targets 0x10059bd4, is taken when t0(=a0-1) == t1(=-0x1), and falls through when t0(=a0-1) != t1(=-0x1).
  The `beq` branch at 0x10059b00 targets 0x10059bd4, is taken when t3(=[sym(rl_point)]) >= t8(=[sym(rl_end)]) (signed), and falls through when t3(=[sym(rl_point)]) < t8(=[sym(rl_end)]) (signed).
  The `bne` branch at 0x10059b58 targets 0x10059b78, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x10059ba0 targets 0x10059bd4, is taken when ra(?) == at(=-0x1), and falls through when ra(?) != at(=-0x1).
  The `bne` branch at 0x10059bcc targets 0x10059b08, is taken when v1(=[sym(rl_point)]) < a0(=[sym(rl_end)]) (signed), and falls through when v1(=[sym(rl_point)]) >= a0(=[sym(rl_end)]) (signed).
  The return at 0x10059bec has v0 = one of -0x1, 0x0.

- `rl_vi_subst` in `usr/gfx/KONA/bin/kpm` at 0x10059c00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059c00-0x10059d48 (328 bytes).
  It occupies 328 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c574, including `lw` at 0x10059c28, `lw` at 0x10059cfc.
  The `lw` at 0x10059c3c loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x10059c40 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x10059c54 loads 4 bytes from ([sym(__libc_attr)] + (a1 << 0x2)) +0x4.
  The `lw` at 0x10059c6c loads 4 bytes from abs 0x1014c534.
  The `lw` at 0x10059c84 loads 4 bytes from abs 0x1014c5b4.
  The `lw` at 0x10059ca8 loads 4 bytes from abs 0x1014c55c.
  The `lw` at 0x10059cbc loads 4 bytes from abs 0x1014c578.
  The `lw` at 0x10059cd8 loads 4 bytes from abs 0x1014c7c8.
  The `lw` at 0x10059cdc loads 4 bytes from sym(rl_arg_sign) +0x0.
  The `lw` at 0x10059ce8 loads 4 bytes from abs 0x1014c61c.
  The `lw` at 0x10059d14 loads 4 bytes from abs 0x1014c04c.
  The `sw` at 0x10059d18 stores 4 bytes to abs 0x1024ae4c.
  The `lw` at 0x10059d24 loads 4 bytes from abs 0x1014c64c.
  The `jal` at 0x10059c2c calls rl_begin_undo_group [0x1004bdb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10059c70 calls rl_beg_of_line [0x10049190] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059c88 calls rl_kill_line [0x1004d430] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10059cac calls rl_delete [0x1004a550] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10059cc0 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059cec calls _rl_vi_set_last [0x10053a40] with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=[sym(rl_arg_sign)], a3=?.
  The `jal` at 0x10059d00 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059d28 calls rl_vi_insertion_mode [0x100570f0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10059c5c targets 0x10059c98, is taken when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) == 0, and falls through when (at(=[([sym(__libc_attr)] + (a1 << 0x2))+4]) & 0x1) != 0.
  The `beq` branch at 0x10059c90 targets 0x10059cb4 and is always taken.
  The return at 0x10059d40 has v0 = 0x0.

- `rl_vi_overstrike` in `usr/gfx/KONA/bin/kpm` at 0x10059d50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059d50-0x10059ed4 (388 bytes).
  It occupies 388 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10059d78, `lw` at 0x10059d94, `lw` at 0x10059dd0.
  The `lw` at 0x10059d7c loads 4 bytes from abs 0x1024ae4c.
  The `sw` at 0x10059d98 stores 4 bytes to abs 0x1024ae4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c574, including `lw` at 0x10059da4, `lw` at 0x10059df4.
  The `lw` at 0x10059dd4 loads 4 bytes from abs 0x1024ae58.
  The `sw` at 0x10059de8 stores 4 bytes to abs 0x1024ae58.
  The `lw` at 0x10059e08 loads 4 bytes from abs 0x1014c8a4.
  The `lw` at 0x10059e0c loads 4 bytes from sym(rl_point) +0x0.
  The `lw` at 0x10059e18 loads 4 bytes from abs 0x1014c8ac.
  The `lw` at 0x10059e1c loads 4 bytes from sym(rl_end) +0x0.
  The `lw` at 0x10059e3c loads 4 bytes from abs 0x1014c55c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c548, including `lw` at 0x10059e58, `lw` at 0x10059e7c.
  The `lw` at 0x10059e90 loads 4 bytes from abs 0x1014c578.
  The `jal` at 0x10059da8 calls rl_begin_undo_group [0x1004bdb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10059df8 calls rl_begin_undo_group [0x1004bdb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10059e40 calls rl_delete [0x1004a550] with a0=0x1, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10059e5c calls rl_insert [0x10049c30] with a0=0x1, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10059e80 calls rl_insert [0x10049c30] with a0=0x1, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10059e94 calls rl_end_undo_group [0x1004be10] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10059d80 targets 0x10059db0, is taken when at(=[0x1024ae4c]) != 0, and falls through when at(=[0x1024ae4c]) == 0.
  The `beq` branch at 0x10059dc0 targets 0x10059ebc, is taken when v0(=0x0) >= v1(=a0) (signed), and falls through when v0(=0x0) < v1(=a0) (signed).
  The `beq` branch at 0x10059e24 targets 0x10059e6c, is taken when at(=[sym(rl_point)]) >= v0(=[sym(rl_end)]) (signed), and falls through when at(=[sym(rl_point)]) < v0(=[sym(rl_end)]) (signed).
  The `beq` branch at 0x10059e64 targets 0x10059e88 and is always taken.
  The `bne` branch at 0x10059eb4 targets 0x10059dc8, is taken when ra(?) < at(=a0) (signed), and falls through when ra(?) >= at(=a0) (signed).
  The return at 0x10059ecc has v0 = 0x0.

- `rl_vi_overstrike_delete` in `usr/gfx/KONA/bin/kpm` at 0x10059ee0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10059ee0-0x1005a070 (400 bytes).
  It occupies 400 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x10059f1c, `lw` at 0x10059f80, `lw` at 0x10059f94.
  3 such `lw` accesses load 4 bytes from abs 0x1024ae58, including `lw` at 0x10059f20, `lw` at 0x10059f84, `lw` at 0x10059ffc.
  The `lw` at 0x10059f34 loads 4 bytes from abs 0x1014c514.
  2 such `lw` accesses load 4 bytes from abs 0x1014c8a4, including `lw` at 0x10059f50, `lw` at 0x10059fa4.
  2 such `lw` accesses load 4 bytes from sym(rl_point) +0x0, including `lw` at 0x10059f54, `lw` at 0x10059fa8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c570, including `lw` at 0x10059f64, `lw` at 0x1005a03c.
  The `sw` at 0x10059f98 stores 4 bytes to abs 0x1024ae58.
  The `lw` at 0x10059fc4 loads 4 bytes from abs 0x1014c530.
  The `lw` at 0x1005a014 loads 4 bytes from abs 0x1024ae4c.
  The `lw` at 0x1005a028 loads 4 bytes from abs 0x1014c578.
  The `sw` at 0x1005a054 stores 4 bytes to abs 0x1024ae4c.
  The `jal` at 0x10059f38 calls ding [0x100485f0] with a0=[0x1024ae58], a1=?, a2=?, a3=?.
  The `jal` at 0x10059f68 calls rl_do_undo [0x1004bb40] with a0=[0x1024ae58], a1=?, a2=?, a3=?.
  The `jal` at 0x10059fc8 calls rl_backward [0x100490a0] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1005a02c calls rl_end_undo_group [0x1004be10] with a0=[0x1024ae4c], a1=?, a2=?, a3=?.
  The `jal` at 0x1005a040 calls rl_do_undo [0x1004bb40] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10059f0c targets 0x10059ff0, is taken when at(=0x0) >= v0(=a0) (signed), and falls through when at(=0x0) < v0(=a0) (signed).
  The `bne` branch at 0x10059f24 targets 0x10059f48, is taken when a0(=[0x1024ae58]) != 0, and falls through when a0(=[0x1024ae58]) == 0.
  The `beq` branch at 0x10059f40 targets 0x10059ff0 and is always taken.
  The `beq` branch at 0x10059f70 targets 0x10059f9c, is taken when v0(=ret(rl_do_undo)) == 0, and falls through when v0(=ret(rl_do_undo)) != 0.
  The `bne` branch at 0x10059fb0 targets 0x10059fd0, is taken when v0(=[sym(rl_point)]) != v1(=[sym(rl_point)]), and falls through when v0(=[sym(rl_point)]) == v1(=[sym(rl_point)]).
  The `bne` branch at 0x10059fe8 targets 0x10059f14, is taken when ra(?) < at(=a0) (signed), and falls through when ra(?) >= at(=a0) (signed).
  The `bne` branch at 0x1005a000 targets 0x1005a058, is taken when v1(=[0x1024ae58]) != 0, and falls through when v1(=[0x1024ae58]) == 0.
  The `beq` branch at 0x1005a018 targets 0x1005a058, is taken when a0(=[0x1024ae4c]) == 0, and falls through when a0(=[0x1024ae4c]) != 0.
  The return at 0x1005a068 has v0 = 0x0.

- `rl_vi_replace` in `usr/gfx/KONA/bin/kpm` at 0x1005a070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a070-0x1005a264 (500 bytes).
  It occupies 500 bytes.
  10 such `lw` accesses load 4 bytes from abs 0x1014c04c, including `lw` at 0x1005a098, `lw` at 0x1005a0a8, `lw` at 0x1005a0d4.
  The `sw` at 0x1005a09c stores 4 bytes to abs 0x1024ae58.
  8 such `lw` accesses load 4 bytes from abs 0x1024ae54, including `lw` at 0x1005a0ac, `lw` at 0x1005a10c, `lw` at 0x1005a154.
  The `lw` at 0x1005a0c0 loads 4 bytes from abs 0x1014c6d4.
  The `sw` at 0x1005a0d8 stores 4 bytes to abs 0x1024ae54.
  The `lw` at 0x1005a0fc loads 4 bytes from abs 0x1014c668.
  The `sw` at 0x1005a11c stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from abs 0x1014c66c, including `lw` at 0x1005a144, `lw` at 0x1005a210.
  The `sw` at 0x1005a15c stores 4 bytes to [0x1024ae54] +0x3fc.
  The `lw` at 0x1005a168 loads 4 bytes from abs 0x1014c654.
  The `sw` at 0x1005a180 stores 4 bytes to [0x1024ae54] +0xdc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c54c, including `lw` at 0x1005a18c, `lw` at 0x1005a1b0.
  The `sw` at 0x1005a1a4 stores 4 bytes to [0x1024ae54] +0x6c.
  The `sw` at 0x1005a1c8 stores 4 bytes to [0x1024ae54] +0x54.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7fc, including `lw` at 0x1005a1d4, `lw` at 0x1005a1ec.
  The `lbu` at 0x1005a1d8 loads 1 byte from sym(vi_insertion_keymap) +0x40.
  The `lw` at 0x1005a1f0 loads 4 bytes from sym(vi_insertion_keymap) +0x44.
  The `lw` at 0x1005a1fc loads 4 bytes from abs 0x1014c558.
  The `sw` at 0x1005a228 stores 4 bytes to [0x1024ae54] +0x44.
  The `lw` at 0x1005a244 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x1005a248 stores 4 bytes to sym(_rl_keymap) +0x0.
  The `jal` at 0x1005a0c4 calls rl_make_bare_keymap [0x10060ce0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005a0b0 targets 0x1005a22c, is taken when at(=[0x1024ae54]) != 0, and falls through when at(=[0x1024ae54]) == 0.
  The `beq` branch at 0x1005a0ec targets 0x1005a13c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x1005a134 targets 0x1005a0f4, is taken when a0(?) < 0x7f (signed), and falls through when a0(?) >= 0x7f (signed).
  The `bne` branch at 0x1005a1dc targets 0x1005a22c, is taken when a3(=[sym(vi_insertion_keymap)+64]:1) != 0, and falls through when a3(=[sym(vi_insertion_keymap)+64]:1) == 0.
  The `bne` branch at 0x1005a200 targets 0x1005a22c, is taken when t0(=[sym(vi_insertion_keymap)+68]) != t1(=sym(rl_rubout)), and falls through when t0(=[sym(vi_insertion_keymap)+68]) == t1(=sym(rl_rubout)).
  The return at 0x1005a25c has v0 = 0x0.

- `rl_add_defun` in `usr/gfx/KONA/bin/kpm` at 0x1005a280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a280-0x1005a304 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x1005a2c4 loads 4 bytes from abs 0x1014c670.
  The `lw` at 0x1005a2e0 loads 4 bytes from abs 0x1014c60c.
  The `jal` at 0x1005a2c8 calls rl_bind_key [0x1005a310] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005a2e4 calls rl_add_funmap_entry [0x10053420] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x1005a2ac targets 0x1005a2d0, is taken when at(=a2) == v0(=-0x1), and falls through when at(=a2) != v0(=-0x1).
  The return at 0x1005a2fc has v0 = 0x0.

- `rl_bind_key` in `usr/gfx/KONA/bin/kpm` at 0x1005a310 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a310-0x1005a478 (360 bytes).
  It occupies 360 bytes.
  The `lw` at 0x1005a370 loads 4 bytes from abs 0x1014c7d8.
  The `lw` at 0x1005a374 loads 4 bytes from sym(_rl_convert_meta_chars_to_ascii) +0x0.
  4 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005a388, `lw` at 0x1005a3ac, `lw` at 0x1005a420.
  4 such `lw` accesses load 4 bytes from sym(_rl_keymap) +0x0, including `lw` at 0x1005a38c, `lw` at 0x1005a3b0, `lw` at 0x1005a424.
  The `lbu` at 0x1005a394 loads 1 byte from [sym(_rl_keymap)] +0xd8.
  The `lw` at 0x1005a3b8 loads 4 bytes from [sym(_rl_keymap)] +0xdc.
  The `sb` at 0x1005a3e0 stores 1 byte to ?.
  The `sw` at 0x1005a3f8 stores 4 bytes to ?.
  The `sb` at 0x1005a434 stores 1 byte to ([sym(_rl_keymap)] + (a0 << 0x3)) +0x0.
  The `sw` at 0x1005a458 stores 4 bytes to ([sym(_rl_keymap)] + (a0 << 0x3)) +0x4.
  The `bgez` branch at 0x1005a330 targets 0x1005a348, is taken when v0(=a0) >= 0 (signed), and falls through when v0(=a0) < 0 (signed).
  The `beq` branch at 0x1005a340 targets 0x1005a464 and is always taken.
  The `bne` branch at 0x1005a350 targets 0x1005a418, is taken when a1(=a0) < 0x80 (signed), and falls through when a1(=a0) >= 0x80 (signed).
  The `beq` branch at 0x1005a360 targets 0x1005a418, is taken when a2(=a0) >= 0x100 (signed), and falls through when a2(=a0) < 0x100 (signed).
  The `beq` branch at 0x1005a378 targets 0x1005a418, is taken when a3(=[sym(_rl_convert_meta_chars_to_ascii)]) == 0, and falls through when a3(=[sym(_rl_convert_meta_chars_to_ascii)]) != 0.
  The `bne` branch at 0x1005a39c targets 0x1005a408, is taken when a4(=[[sym(_rl_keymap)]+216]:1) != a5(=0x1), and falls through when a4(=[[sym(_rl_keymap)]+216]:1) == a5(=0x1).
  The `beq` branch at 0x1005a400 targets 0x1005a464 and is always taken.
  The `beq` branch at 0x1005a410 targets 0x1005a464 and is always taken.
  The return at 0x1005a470 has v0 = one of a0, 0x0.

- `rl_bind_key_in_map` in `usr/gfx/KONA/bin/kpm` at 0x1005a480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a480-0x1005a518 (152 bytes).
  It occupies 152 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005a4ac, `lw` at 0x1005a4c4, `lw` at 0x1005a4f8.
  The `lw` at 0x1005a4b0 loads 4 bytes from sym(_rl_keymap) +0x0.
  2 such `sw` accesses store 4 bytes to sym(_rl_keymap) +0x0, including `sw` at 0x1005a4c8, `sw` at 0x1005a4fc.
  The `lw` at 0x1005a4dc loads 4 bytes from abs 0x1014c670.
  The `jal` at 0x1005a4e0 calls rl_bind_key [0x1005a310] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1005a510 has v0 = ret(rl_bind_key).

- `rl_unbind_key` in `usr/gfx/KONA/bin/kpm` at 0x1005a520 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a520-0x1005a56c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x1005a54c loads 4 bytes from abs 0x1014c670.
  The `jal` at 0x1005a550 calls rl_bind_key [0x1005a310] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1005a564 has v0 = ret(rl_bind_key).

- `rl_unbind_key_in_map` in `usr/gfx/KONA/bin/kpm` at 0x1005a570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a570-0x1005a5c4 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1005a5a4 loads 4 bytes from abs 0x1014c674.
  The `jal` at 0x1005a5a8 calls rl_bind_key_in_map [0x1005a480] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0x1005a5bc has v0 = ret(rl_bind_key_in_map).

- `rl_set_key` in `usr/gfx/KONA/bin/kpm` at 0x1005a5d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a5d0-0x1005a62c (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x1005a60c loads 4 bytes from abs 0x1014c680.
  The `jal` at 0x1005a610 calls rl_generic_bind [0x1005a730] with a0=0x0, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0x1005a624 has v0 = ret(rl_generic_bind).

- `rl_macro_bind` in `usr/gfx/KONA/bin/kpm` at 0x1005a630 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a630-0x1005a728 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x1005a660 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1005a680 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1005a6a4 loads 4 bytes from abs 0x1014c684.
  The `lw` at 0x1005a6c8 loads 4 bytes from abs 0x1014c114.
  The `lw` at 0x1005a6fc loads 4 bytes from abs 0x1014c680.
  The `jalr` at 0x1005a664 calls strlen with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005a684 calls xmalloc [0x10061950] with a0=(ret(strlen) + ret(strlen))+1, a1=?, a2=?, a3=?.
  The `jal` at 0x1005a6a8 calls rl_translate_keyseq [0x1005aa90] with a0=a1 at entry (arg1), a1=ret(xmalloc), a2=sp-76, a3=?.
  The `jalr` at 0x1005a6cc calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jal` at 0x1005a700 calls rl_generic_bind [0x1005a730] with a0=0x2, a1=a0 at entry (arg0), a2=ret(xmalloc), a3=a2 at entry (arg2).
  The `beq` branch at 0x1005a6b4 targets 0x1005a6e4, is taken when v0(=ret(rl_translate_keyseq)) == 0, and falls through when v0(=ret(rl_translate_keyseq)) != 0.
  The `beq` branch at 0x1005a6dc targets 0x1005a710 and is always taken.
  The return at 0x1005a720 has v0 = one of -0x1, 0x0.

- `rl_generic_bind` in `usr/gfx/KONA/bin/kpm` at 0x1005a730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005a730-0x1005aa8c (860 bytes).
  It occupies 860 bytes.
  The `lbu` at 0x1005a768 loads 1 byte from a1 (arg1 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1005a790, `lw` at 0x1005a820, `lw` at 0x1005a94c.
  The `lw` at 0x1005a7b8 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1005a7d8 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1005a7fc loads 4 bytes from abs 0x1014c684.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005a860, `lbu` at 0x1005a8b8, `lbu` at 0x1005a900.
  The `lw` at 0x1005a870 loads 4 bytes from abs 0x1014c7d8.
  The `lw` at 0x1005a874 loads 4 bytes from sym(_rl_convert_meta_chars_to_ascii) +0x0.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005a8d0, `lw` at 0x1005a940, `lw` at 0x1005a9ac.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1005a96c, `sb` at 0x1005aa30.
  The `lw` at 0x1005a978 loads 4 bytes from abs 0x1014c6d4.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1005a998, `sw` at 0x1005aa18.
  The `jalr` at 0x1005a794 calls free with a0=a2 at entry (arg2), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005a7bc calls strlen with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005a7dc calls xmalloc [0x10061950] with a0=(ret(strlen) + ret(strlen))+1, a1=?, a2=?, a3=?.
  The `jal` at 0x1005a800 calls rl_translate_keyseq [0x1005aa90] with a0=a1 at entry (arg1), a1=ret(xmalloc), a2=sp-76, a3=?.
  The `jalr` at 0x1005a824 calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005a950 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005a97c calls rl_make_bare_keymap [0x10060ce0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005a9fc calls free with a0=?, a1=?, a2=?, a3=?, a4=0x2.
  The `jalr` at 0x1005aa64 calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005a75c targets 0x1005a774, is taken when at(=a1) == 0, and falls through when at(=a1) != 0.
  The `bne` branch at 0x1005a76c targets 0x1005a7ac, is taken when v1(=[a1]:1) != 0, and falls through when v1(=[a1]:1) == 0.
  The `bne` branch at 0x1005a77c targets 0x1005a79c, is taken when a0 != a1(=0x2), and falls through when a0 == a1(=0x2).
  The `beq` branch at 0x1005a7a4 targets 0x1005aa74 and is always taken.
  The `beq` branch at 0x1005a80c targets 0x1005a83c, is taken when v0(=ret(rl_translate_keyseq)) == 0, and falls through when v0(=ret(rl_translate_keyseq)) != 0.
  The `beq` branch at 0x1005a834 targets 0x1005aa74 and is always taken.
  The `beq` branch at 0x1005a84c targets 0x1005aa54, is taken when at(=0x0) >= v0(?) (signed), and falls through when at(=0x0) < v0(?) (signed).
  The `beq` branch at 0x1005a878 targets 0x1005a8d8, is taken when v1(=[sym(_rl_convert_meta_chars_to_ascii)]) == 0, and falls through when v1(=[sym(_rl_convert_meta_chars_to_ascii)]) != 0.
  The `bne` branch at 0x1005a888 targets 0x1005a8d8, is taken when a2(?) < 0x80 (signed), and falls through when a2(?) >= 0x80 (signed).
  The `beq` branch at 0x1005a898 targets 0x1005a8d8, is taken when a3(?) >= 0x100 (signed), and falls through when a3(?) < 0x100 (signed).
  The `bne` branch at 0x1005a8c0 targets 0x1005a8d8, is taken when a4(?) != a5(=0x1), and falls through when a4(?) == a5(=0x1).
  The `beq` branch at 0x1005a8e8 targets 0x1005a9bc, is taken when t0(?) >= t1(?) (signed), and falls through when t0(?) < t1(?) (signed).
  The `beq` branch at 0x1005a908 targets 0x1005a99c, is taken when t1(?) == t2(=0x1), and falls through when t1(?) != t2(=0x1).
  The `bne` branch at 0x1005a928 targets 0x1005a958, is taken when t3(?) != t8(=0x2), and falls through when t3(?) == t8(=0x2).
  The `beq` branch at 0x1005a9b4 targets 0x1005aa34 and is always taken.
  The `bne` branch at 0x1005a9d4 targets 0x1005aa04, is taken when a3(?) != a4(=0x2), and falls through when a3(?) == a4(=0x2).
  The `bne` branch at 0x1005aa4c targets 0x1005a854, is taken when t0(?) < t1(?) (signed), and falls through when t0(?) >= t1(?) (signed).
  The return at 0x1005aa84 has v0 = one of -0x1, 0x0.

- `rl_translate_keyseq` in `usr/gfx/KONA/bin/kpm` at 0x1005aa90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005aa90-0x1005aee8 (1112 bytes).
  It occupies 1112 bytes.
  The `lbu` at 0x1005aac8 loads 1 byte from a0 (arg0 at entry) +0x0.
  11 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005ab04, `lbu` at 0x1005ab48, `lbu` at 0x1005abfc.
  The `lw` at 0x1005ab7c loads 4 bytes from abs 0x1014c058.
  The `lw` at 0x1005ab8c loads 4 bytes from abs 0x1014c170.
  8 such `sb` accesses store 1 byte to ?, including `sb` at 0x1005abc4, `sb` at 0x1005ac80, `sb` at 0x1005ad18.
  2 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x1005abe8, `lw` at 0x1005ad8c.
  2 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x1005abec, `lw` at 0x1005ad90.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005ac0c, `lw` at 0x1005adb0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c260, including `lw` at 0x1005ac34, `lw` at 0x1005add8.
  The `sw` at 0x1005aebc stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jalr` at 0x1005ab90 calls strncmp with a0=?, a1=0x100933a8, a2=0x5, a3=?, a4=a0 at entry (arg0), a7=0x43.
  The `jalr` at 0x1005ac38 calls toupper with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a4=a0 at entry (arg0), a5=0x1b.
  The `jalr` at 0x1005addc calls toupper with a0=?, a1=a0 at entry (arg0), a2=?, a3=0x3f.
  The `beq` branch at 0x1005aad4 targets 0x1005aeb4, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `bne` branch at 0x1005aae4 targets 0x1005ae64, is taken when a0(?) != a1(=0x5c), and falls through when a0(?) == a1(=0x5c).
  The `beq` branch at 0x1005ab10 targets 0x1005aeb4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1005ab20 targets 0x1005ab38, is taken when a6(?) == a7(=0x43), and falls through when a6(?) != a7(=0x43).
  The `bne` branch at 0x1005ab30 targets 0x1005ab58, is taken when t0(?) != t1(=0x4d), and falls through when t0(?) == t1(=0x4d).
  The `beq` branch at 0x1005ab50 targets 0x1005ab68, is taken when t2(?) == t3(=0x2d), and falls through when t2(?) != t3(=0x2d).
  The `bne` branch at 0x1005ab60 targets 0x1005ae64, is taken when t8(?) != t9(=0x65), and falls through when t8(?) == t9(=0x65).
  The `bne` branch at 0x1005ab9c targets 0x1005acb0, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x1005ac14 targets 0x1005ac54, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `beq` branch at 0x1005ac4c targets 0x1005ac68 and is always taken.
  The `bne` branch at 0x1005ac94 targets 0x1005aca8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1005aca8 targets 0x1005ae88 and is always taken.
  The `beq` branch at 0x1005acbc targets 0x1005acec, is taken when t1(?) == t2(=0x4d), and falls through when t1(?) != t2(=0x4d).
  The `beq` branch at 0x1005accc targets 0x1005ad24, is taken when t3(?) == t8(=0x43), and falls through when t3(?) != t8(=0x43).
  The `beq` branch at 0x1005acdc targets 0x1005ae30, is taken when t9(?) == ra(=0x65), and falls through when t9(?) != ra(=0x65).
  The `beq` branch at 0x1005ace4 targets 0x1005ae5c and is always taken.
  The `beq` branch at 0x1005ad1c targets 0x1005ae5c and is always taken.
  The `bne` branch at 0x1005ad44 targets 0x1005ad78, is taken when a2(?) != a3(=0x3f), and falls through when a2(?) == a3(=0x3f).
  The `beq` branch at 0x1005ad70 targets 0x1005ae28 and is always taken.
  The `beq` branch at 0x1005adb8 targets 0x1005adf8, is taken when (t1(?) & 0x2) == 0, and falls through when (t1(?) & 0x2) != 0.
  The `beq` branch at 0x1005adf0 targets 0x1005ae0c and is always taken.
  The `beq` branch at 0x1005ae28 targets 0x1005ae5c and is always taken.
  The `beq` branch at 0x1005ae54 targets 0x1005ae5c and is always taken.
  The `beq` branch at 0x1005ae5c targets 0x1005ae88 and is always taken.
  The `bne` branch at 0x1005aeac targets 0x1005aadc, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The return at 0x1005aee0 has v0 = 0x0.

- `rl_named_function` in `usr/gfx/KONA/bin/kpm` at 0x1005aef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005aef0-0x1005b014 (292 bytes).
  It occupies 292 bytes.
  The `lw` at 0x1005af14 loads 4 bytes from abs 0x1014c610.
  4 such `lw` accesses load 4 bytes from abs 0x1014c998, including `lw` at 0x1005af2c, `lw` at 0x1005af54, `lw` at 0x1005af98.
  4 such `lw` accesses load 4 bytes from sym(funmap) +0x0, including `lw` at 0x1005af30, `lw` at 0x1005af58, `lw` at 0x1005af9c.
  The `lw` at 0x1005af40 loads 4 bytes from [sym(funmap)] +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005af68, `lw` at 0x1005af6c, `lw` at 0x1005afac.
  The `lw` at 0x1005af7c loads 4 bytes from abs 0x1014c274.
  The `jal` at 0x1005af18 calls rl_initialize_funmap [0x10053670] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005af80 calls strcasecmp with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1005af44 targets 0x1005aff4, is taken when at(=[[sym(funmap)]]) == 0, and falls through when at(=[[sym(funmap)]]) != 0.
  The `bne` branch at 0x1005af88 targets 0x1005afc0, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005afb8 targets 0x1005affc and is always taken.
  The `bne` branch at 0x1005afec targets 0x1005af4c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0x1005b00c has v0 = one of ?, 0x0.

- `rl_function_of_keyseq` in `usr/gfx/KONA/bin/kpm` at 0x1005b020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005b020-0x1005b26c (588 bytes).
  It occupies 588 bytes.
  The `lw` at 0x1005b054 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x1005b058 loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lbu` at 0x1005b07c loads 1 byte from a0 (arg0 at entry) +0x0.
  7 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005b094, `lbu` at 0x1005b0dc, `lbu` at 0x1005b100.
  The `lw` at 0x1005b0c4 loads 4 bytes from abs 0x1014c7d8.
  The `lw` at 0x1005b0c8 loads 4 bytes from sym(_rl_convert_meta_chars_to_ascii) +0x0.
  3 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x1005b108, `sw` at 0x1005b194, `sw` at 0x1005b1fc.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005b114, `lw` at 0x1005b12c, `lw` at 0x1005b1a8.
  The `bne` branch at 0x1005b044 targets 0x1005b060, is taken when v0(=a1) != 0, and falls through when v0(=a1) == 0.
  The `beq` branch at 0x1005b068 targets 0x1005b250, is taken when a1(=a0) == 0, and falls through when a1(=a0) != 0.
  The `beq` branch at 0x1005b080 targets 0x1005b250, is taken when a2(=[a0]:1) == 0, and falls through when a2(=[a0]:1) != 0.
  The `bne` branch at 0x1005b0a4 targets 0x1005b144, is taken when a4(?) < 0x80 (signed), and falls through when a4(?) >= 0x80 (signed).
  The `beq` branch at 0x1005b0b4 targets 0x1005b144, is taken when a7(?) >= 0x100 (signed), and falls through when a7(?) < 0x100 (signed).
  The `beq` branch at 0x1005b0cc targets 0x1005b144, is taken when t0(=[sym(_rl_convert_meta_chars_to_ascii)]) == 0, and falls through when t0(=[sym(_rl_convert_meta_chars_to_ascii)]) != 0.
  The `beq` branch at 0x1005b0e4 targets 0x1005b124, is taken when t1(?) == t2(=0x1), and falls through when t1(?) != t2(=0x1).
  The `beq` branch at 0x1005b0f0 targets 0x1005b10c, is taken when t2(=a2) == 0, and falls through when t2(=a2) != 0.
  The `beq` branch at 0x1005b11c targets 0x1005b258 and is always taken.
  The `bne` branch at 0x1005b15c targets 0x1005b1d8, is taken when v1(?) != a0(=0x1), and falls through when v1(?) == a0(=0x1).
  The `bne` branch at 0x1005b178 targets 0x1005b1b8, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1005b184 targets 0x1005b198, is taken when a3(=a2) == 0, and falls through when a3(=a2) != 0.
  The `beq` branch at 0x1005b1b0 targets 0x1005b258 and is always taken.
  The `beq` branch at 0x1005b1d0 targets 0x1005b220 and is always taken.
  The `beq` branch at 0x1005b1dc targets 0x1005b200, is taken when t2(=a2) == 0, and falls through when t2(=a2) != 0.
  The `beq` branch at 0x1005b218 targets 0x1005b258 and is always taken.
  The `beq` branch at 0x1005b230 targets 0x1005b250, is taken when v0(=a0) == 0, and falls through when v0(=a0) != 0.
  The `bne` branch at 0x1005b248 targets 0x1005b088, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The return at 0x1005b264 has v0 = one of ?, 0x0.

- `rl_re_read_init_file` in `usr/gfx/KONA/bin/kpm` at 0x1005b270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005b270-0x1005b2d8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1005b29c loads 4 bytes from abs 0x1014c690.
  The `lw` at 0x1005b2b4 loads 4 bytes from abs 0x1014c6a4.
  The `jal` at 0x1005b2a0 calls rl_read_init_file [0x1005b2e0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005b2b8 calls rl_set_keymap_from_edit_mode [0x1005d9d0] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1005b2d0 has v0 = ret(rl_read_init_file).

- `rl_read_init_file` in `usr/gfx/KONA/bin/kpm` at 0x1005b2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005b2e0-0x1005b790 (1200 bytes).
  It occupies 1200 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c05c, including `lw` at 0x1005b310, `lw` at 0x1005b46c, `lw` at 0x1005b488.
  4 such `lw` accesses load 4 bytes from abs 0x1024ae7c, including `lw` at 0x1005b314, `lw` at 0x1005b470, `lw` at 0x1005b48c.
  3 such `lw` accesses load 4 bytes from abs 0x1014c058, including `lw` at 0x1005b330, `lw` at 0x1005b368, `lw` at 0x1005b38c.
  The `lw` at 0x1005b340 loads 4 bytes from abs 0x1014c19c.
  10 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005b378, `lbu` at 0x1005b64c, `lbu` at 0x1005b670.
  The `lw` at 0x1005b3a4 loads 4 bytes from abs 0x1014c6ec.
  The `lw` at 0x1005b3c8 loads 4 bytes from abs 0x1014c120.
  The `lw` at 0x1005b3f4 loads 4 bytes from abs 0x1014c194.
  4 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1005b424, `lw` at 0x1005b458, `lw` at 0x1005b4b0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c134, including `lw` at 0x1005b438, `lw` at 0x1005b5a0.
  2 such `lw` accesses load 4 bytes from sym(errno) +0x0, including `lw` at 0x1005b43c, `lw` at 0x1005b5a4.
  The `lw` at 0x1005b4c8 loads 4 bytes from abs 0x1014c158.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1005b4e4, `lw` at 0x1005b534.
  The `lw` at 0x1005b504 loads 4 bytes from abs 0x1014c0f8.
  The `sw` at 0x1005b520 stores 4 bytes to abs 0x1024ae7c.
  The `lw` at 0x1005b55c loads 4 bytes from abs 0x1014c0f4.
  The `lw` at 0x1005b57c loads 4 bytes from abs 0x1014c104.
  The `lbu` at 0x1005b60c loads 1 byte from table(0x0) +0x0.
  The `sb` at 0x1005b668 stores 1 byte to ?.
  The `lw` at 0x1005b724 loads 4 bytes from abs 0x1014c694.
  The `jalr` at 0x1005b344 calls getenv with a0=0x100933b0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005b3a8 calls tilde_expand [0x10061ec0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005b3cc calls stat with a0=ret(tilde_expand), a1=sp-248, a2=?, a3=?.
  The `jalr` at 0x1005b3f8 calls open with a0=ret(tilde_expand), a1=0x0, a2=0x1b6, a3=?.
  The `jalr` at 0x1005b428 calls free with a0=ret(tilde_expand), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005b45c calls free with a0=ret(tilde_expand), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005b4b4 calls free with a0=[0x1024ae7c], a1=?, a2=?, a3=?.
  The `jalr` at 0x1005b4cc calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005b4e8 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005b508 calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jal` at 0x1005b538 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005b560 calls read with a0=?, a1=ret(xmalloc), a2=?, a3=?.
  The `jalr` at 0x1005b580 calls close with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005b728 calls rl_parse_and_bind [0x1005c250] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005b768 calls free with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1005b300 targets 0x1005b374, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `bne` branch at 0x1005b320 targets 0x1005b354, is taken when v1(=[0x1024ae7c]) != 0, and falls through when v1(=[0x1024ae7c]) == 0.
  The `bne` branch at 0x1005b358 targets 0x1005b374, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x1005b37c targets 0x1005b398, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bltz` branch at 0x1005b3d8 targets 0x1005b418, is taken when v0(=ret(stat)) < 0 (signed), and falls through when v0(=ret(stat)) >= 0 (signed).
  The `bgez` branch at 0x1005b410 targets 0x1005b44c, is taken when ra(=ret(open)) >= 0 (signed), and falls through when ra(=ret(open)) < 0 (signed).
  The `beq` branch at 0x1005b444 targets 0x1005b778 and is always taken.
  The `beq` branch at 0x1005b478 targets 0x1005b524, is taken when ra(=[0x1024ae7c]) == at(?), and falls through when ra(=[0x1024ae7c]) != at(?).
  The `beq` branch at 0x1005b490 targets 0x1005b4bc, is taken when at(=[0x1024ae7c]) == 0, and falls through when at(=[0x1024ae7c]) != 0.
  The `beq` branch at 0x1005b590 targets 0x1005b5b4, is taken when ra(?) == at(?), and falls through when ra(?) != at(?).
  The `beq` branch at 0x1005b5ac targets 0x1005b778 and is always taken.
  The `beq` branch at 0x1005b5dc targets 0x1005b758, is taken when v1(?) >= a0(?) (unsigned), and falls through when v1(?) < a0(?) (unsigned).
  The `beq` branch at 0x1005b5f8 targets 0x1005b65c, is taken when a3(?) == a4(=table(0x0)), and falls through when a3(?) != a4(=table(0x0)).
  The `beq` branch at 0x1005b614 targets 0x1005b65c, is taken when a6(=entry(0x0)) == a7(=0xa), and falls through when a6(=entry(0x0)) != a7(=0xa).
  The `beq` branch at 0x1005b638 targets 0x1005b65c, is taken when t0(?) == t1(?), and falls through when t0(?) != t1(?).
  The `bne` branch at 0x1005b654 targets 0x1005b61c, is taken when t8(?) != t9(=0xa), and falls through when t8(?) == t9(=0xa).
  The `beq` branch at 0x1005b674 targets 0x1005b6f4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1005b688 targets 0x1005b6a4, is taken when v1(?) == a0(=0x20), and falls through when v1(?) != a0(=0x20).
  The `bne` branch at 0x1005b69c targets 0x1005b6f4, is taken when a0(?) != a1(=0x9), and falls through when a0(?) == a1(=0x9).
  The `beq` branch at 0x1005b6c4 targets 0x1005b6f4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1005b6d8 targets 0x1005b6a4, is taken when a4(?) == a5(=0x20), and falls through when a4(?) != a5(=0x20).
  The `beq` branch at 0x1005b6ec targets 0x1005b6a4, is taken when a5(?) == a6(=0x9), and falls through when a5(?) != a6(=0x9).
  The `beq` branch at 0x1005b6fc targets 0x1005b730, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005b710 targets 0x1005b730, is taken when a7(?) == t0(=0x23), and falls through when a7(?) != t0(=0x23).
  The `bne` branch at 0x1005b750 targets 0x1005b5e4, is taken when ra(?) < at(?) (unsigned), and falls through when ra(?) >= at(?) (unsigned).
  The return at 0x1005b788 has v0 = one of [sym(errno)], 0x0.

- `rl_parse_and_bind` in `usr/gfx/KONA/bin/kpm` at 0x1005c250 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005c250-0x1005cfac (3420 bytes).
  It occupies 3420 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x1005c27c, `lbu` at 0x1005c290.
  61 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1005c2bc, `lbu` at 0x1005c2d0, `lbu` at 0x1005c2f0.
  The `lw` at 0x1005c340 loads 4 bytes from abs 0x1014c064.
  The `lw` at 0x1005c360 loads 4 bytes from abs 0x1014c8f8.
  The `lbu` at 0x1005c364 loads 1 byte from sym(_rl_parsing_conditionalized_out) +0x0.
  2 such `lbu` accesses load 1 byte from table(0x1) +0x0, including `lbu` at 0x1005c3ac, `lbu` at 0x1005ca94.
  9 such `sb` accesses store 1 byte to ?, including `sb` at 0x1005c564, `sb` at 0x1005c590, `sb` at 0x1005c6f8.
  2 such `lw` accesses load 4 bytes from abs 0x1014c058, including `lw` at 0x1005c5a0, `lw` at 0x1005cee0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c274, including `lw` at 0x1005c5b0, `lw` at 0x1005cef0.
  The `lw` at 0x1005c788 loads 4 bytes from abs 0x1014c698.
  3 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x1005ca4c, `lw` at 0x1005cbc0, `lw` at 0x1005ce38.
  The `lw` at 0x1005ca68 loads 4 bytes from abs 0x1014c6e4.
  4 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005cc2c, `lw` at 0x1005cc7c, `lw` at 0x1005ceb0.
  4 such `lw` accesses load 4 bytes from sym(_rl_keymap) +0x0, including `lw` at 0x1005cc30, `lw` at 0x1005cc80, `lw` at 0x1005ceb4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c67c, including `lw` at 0x1005cc3c, `lw` at 0x1005cec0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c688, including `lw` at 0x1005cc5c, `lw` at 0x1005cf60.
  The `lw` at 0x1005cc8c loads 4 bytes from abs 0x1014c678.
  The `lw` at 0x1005cca4 loads 4 bytes from abs 0x1014c114.
  The `lw` at 0x1005cccc loads 4 bytes from abs 0x1014c1e4.
  The `lw` at 0x1005cd14 loads 4 bytes from abs 0x1014c068.
  The `lw` at 0x1005cd34 loads 4 bytes from abs 0x1014c7e4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c06c, including `lw` at 0x1005cd40, `lw` at 0x1005cde0.
  The `lw` at 0x1005cd60 loads 4 bytes from abs 0x1014c10c.
  The `lw` at 0x1005cd64 loads 4 bytes from sym(__libc_attr) +0x0.
  The `lw` at 0x1005cd78 loads 4 bytes from ([sym(__libc_attr)] + (ret(0x1005d740) << 0x2)) +0x4.
  The `lw` at 0x1005cd94 loads 4 bytes from abs 0x1014c260.
  The `lw` at 0x1005cdd4 loads 4 bytes from abs 0x1014c7e8.
  The `lw` at 0x1005cf24 loads 4 bytes from abs 0x1014c7f4.
  The `lw` at 0x1005cf40 loads 4 bytes from abs 0x1014c680.
  The `lw` at 0x1005cf80 loads 4 bytes from abs 0x1014c670.
  The `jal` at 0x1005c344 calls (unnamed) [0x1005bf10] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005c5b4 calls strcasecmp with a0=?, a1=0x100933e4, a2=?, a3=one of 0x0, 0x1, a7=one of 0x0, 0x1.
  The `jal` at 0x1005c78c calls rl_variable_bind [0x1005cfb0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005ca50 calls strlen with a0=?, a1=?, a2=?, a3=?, a6=one of 0x0, 0x1.
  The `jal` at 0x1005ca6c calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005cbc4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cc40 calls rl_macro_bind [0x1005a630] with a0=ret(xmalloc), a1=?, a2=[sym(_rl_keymap)], a3=?.
  The `jal` at 0x1005cc60 calls rl_named_function [0x1005aef0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cc90 calls rl_set_key [0x1005a5d0] with a0=ret(xmalloc), a1=ret(rl_named_function), a2=[sym(_rl_keymap)], a3=?.
  The `jalr` at 0x1005cca8 calls free with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005ccd0 calls strrchr with a0=?, a1=0x2d, a2=?, a3=?, a6=one of 0x0, 0x1.
  The `jal` at 0x1005cd18 calls (unnamed) [0x1005d740] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cd44 calls (unnamed) [0x1005eae0] with a0=?, a1=sym(possible_control_prefixes), a2=?, a3=?.
  The `jalr` at 0x1005cd98 calls toupper with a0=ret(0x1005d740), a1=?, a2=?, a3=(ret(0x1005d740) << 0x2).
  The `jal` at 0x1005cde4 calls (unnamed) [0x1005eae0] with a0=?, a1=sym(possible_meta_prefixes), a2=?, a3=?.
  The `jalr` at 0x1005ce3c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cec4 calls rl_macro_bind [0x1005a630] with a0=sp-80, a1=?, a2=[sym(_rl_keymap)], a3=?.
  The `jalr` at 0x1005cef4 calls strcasecmp with a0=?, a1=0x100933e8, a2=?, a3=?, a5=0x22.
  The `jal` at 0x1005cf44 calls rl_generic_bind [0x1005a730] with a0=0x1, a1=sp-78, a2=sym(emacs_meta_keymap), a3=[sym(_rl_keymap)].
  The `jal` at 0x1005cf64 calls rl_named_function [0x1005aef0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005cf84 calls rl_bind_key [0x1005a310] with a0=?, a1=ret(rl_named_function), a2=?, a3=?.
  The `beq` branch at 0x1005c270 targets 0x1005c2e0, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1005c284 targets 0x1005c2a0, is taken when v1(=[a0]:1) == a0(=0x20), and falls through when v1(=[a0]:1) != a0(=0x20).
  The `bne` branch at 0x1005c298 targets 0x1005c2e0, is taken when a0(=[a0]:1) != a1(=0x9), and falls through when a0(=[a0]:1) == a1(=0x9).
  The `beq` branch at 0x1005c2b0 targets 0x1005c2e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1005c2c4 targets 0x1005c2a0, is taken when a3(?) == a4(=0x20), and falls through when a3(?) != a4(=0x20).
  The `beq` branch at 0x1005c2d8 targets 0x1005c2a0, is taken when a4(?) == a5(=0x9), and falls through when a4(?) != a5(=0x9).
  The `beq` branch at 0x1005c2e4 targets 0x1005c310, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1005c2f4 targets 0x1005c310, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1005c308 targets 0x1005c31c, is taken when a7(?) != t0(=0x23), and falls through when a7(?) == t0(=0x23).
  The `beq` branch at 0x1005c314 targets 0x1005cf94 and is always taken.
  The `bne` branch at 0x1005c328 targets 0x1005c358, is taken when t0(?) != t1(=0x24), and falls through when t0(?) == t1(=0x24).
  The `beq` branch at 0x1005c350 targets 0x1005cf94 and is always taken.
  The `beq` branch at 0x1005c368 targets 0x1005c37c, is taken when a1(=[sym(_rl_parsing_conditionalized_out)]:1) == 0, and falls through when a1(=[sym(_rl_parsing_conditionalized_out)]:1) != 0.
  The `beq` branch at 0x1005c374 targets 0x1005cf94 and is always taken.
  The `bne` branch at 0x1005c38c targets 0x1005c438, is taken when a2(?) != a3(=0x22), and falls through when a2(?) == a3(=0x22).
  The `beq` branch at 0x1005c3b8 targets 0x1005c438, is taken when a3(=entry(0x1)) == 0, and falls through when a3(=entry(0x1)) != 0.
  The `beq` branch at 0x1005c3c4 targets 0x1005c3d8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1005c3d0 targets 0x1005c40c and is always taken.
  The `bne` branch at 0x1005c3e0 targets 0x1005c3fc, is taken when a7(?) != t0(=0x5c), and falls through when a7(?) == t0(=0x5c).
  The `beq` branch at 0x1005c3f4 targets 0x1005c40c and is always taken.
  The `beq` branch at 0x1005c404 targets 0x1005c438, is taken when t2(?) == t3(=0x22), and falls through when t2(?) != t3(=0x22).
  The `bne` branch at 0x1005c430 targets 0x1005c3c0, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x1005c450 targets 0x1005c4e4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1005c460 targets 0x1005c4e4, is taken when v1(?) == a0(=0x3a), and falls through when v1(?) != a0(=0x3a).
  The `beq` branch at 0x1005c470 targets 0x1005c4e4, is taken when a1(?) == a2(=0x20), and falls through when a1(?) != a2(=0x20).
  The `beq` branch at 0x1005c480 targets 0x1005c4e4, is taken when a3(?) == a4(=0x9), and falls through when a3(?) != a4(=0x9).
  The `beq` branch at 0x1005c4ac targets 0x1005c4e4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1005c4bc targets 0x1005c4e4, is taken when t0(?) == t1(=0x3a), and falls through when t0(?) != t1(=0x3a).
  The `beq` branch at 0x1005c4cc targets 0x1005c4e4, is taken when t2(?) == t3(=0x20), and falls through when t2(?) != t3(=0x20).
  The `bne` branch at 0x1005c4dc targets 0x1005c488, is taken when t8(?) != t9(=0x9), and falls through when t8(?) == t9(=0x9).
  The `bne` branch at 0x1005c4ec targets 0x1005c524, is taken when ra(?) != at(=0x3a), and falls through when ra(?) == at(=0x3a).
  The `bne` branch at 0x1005c50c targets 0x1005c524, is taken when v0(?) != v1(=0x3d), and falls through when v0(?) == v1(=0x3d).
  The `beq` branch at 0x1005c51c targets 0x1005c528 and is always taken.
  The `beq` branch at 0x1005c540 targets 0x1005c568, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1005c56c targets 0x1005c594, is taken when a7(=one of 0x0, 0x1) == 0, and falls through when a7(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x1005c5c0 targets 0x1005c7a0, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005c5e0 targets 0x1005c654, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1005c5f4 targets 0x1005c610, is taken when a5(?) == a6(=0x20), and falls through when a5(?) != a6(=0x20).
  The `bne` branch at 0x1005c608 targets 0x1005c654, is taken when a6(?) != a7(=0x9), and falls through when a6(?) == a7(=0x9).
  The `beq` branch at 0x1005c624 targets 0x1005c654, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005c638 targets 0x1005c610, is taken when t1(?) == t2(=0x20), and falls through when t1(?) != t2(=0x20).
  The `beq` branch at 0x1005c64c targets 0x1005c610, is taken when t2(?) == t3(=0x9), and falls through when t2(?) != t3(=0x9).
  The `beq` branch at 0x1005c664 targets 0x1005c6d8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1005c678 targets 0x1005c6d8, is taken when t9(?) == ra(=0x20), and falls through when t9(?) != ra(=0x20).
  The `beq` branch at 0x1005c68c targets 0x1005c6d8, is taken when ra(?) == at(=0x9), and falls through when ra(?) != at(=0x9).
  The `beq` branch at 0x1005c6a8 targets 0x1005c6d8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1005c6bc targets 0x1005c6d8, is taken when v1(?) == a0(=0x20), and falls through when v1(?) != a0(=0x20).
  The `bne` branch at 0x1005c6d0 targets 0x1005c694, is taken when a0(?) != a1(=0x9), and falls through when a0(?) == a1(=0x9).
  The `beq` branch at 0x1005c6e0 targets 0x1005c6fc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1005c704 targets 0x1005c778, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1005c718 targets 0x1005c734, is taken when a5(?) == a6(=0x20), and falls through when a5(?) != a6(=0x20).
  The `bne` branch at 0x1005c72c targets 0x1005c778, is taken when a6(?) != a7(=0x9), and falls through when a6(?) == a7(=0x9).
  The `beq` branch at 0x1005c748 targets 0x1005c778, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005c75c targets 0x1005c734, is taken when t1(?) == t2(=0x20), and falls through when t1(?) != t2(=0x20).
  The `beq` branch at 0x1005c770 targets 0x1005c734, is taken when t2(?) == t3(=0x9), and falls through when t2(?) != t3(=0x9).
  The `beq` branch at 0x1005c798 targets 0x1005cf94 and is always taken.
  The `beq` branch at 0x1005c7b0 targets 0x1005c84c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1005c7cc targets 0x1005c7f0, is taken when v0(?) == v1(=0x20), and falls through when v0(?) != v1(=0x20).
  The `bne` branch at 0x1005c7e8 targets 0x1005c84c, is taken when a0(?) != a1(=0x9), and falls through when a0(?) == a1(=0x9).
  The `beq` branch at 0x1005c80c targets 0x1005c84c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1005c828 targets 0x1005c7f0, is taken when a5(?) == a6(=0x20), and falls through when a5(?) != a6(=0x20).
  The `beq` branch at 0x1005c844 targets 0x1005c7f0, is taken when a7(?) == t0(=0x9), and falls through when a7(?) != t0(=0x9).
  The `beq` branch at 0x1005c868 targets 0x1005c884, is taken when t1(?) == t2(=0x27), and falls through when t1(?) != t2(=0x27).
  The `bne` branch at 0x1005c87c targets 0x1005c958, is taken when t8(?) != t9(=0x22), and falls through when t8(?) == t9(=0x22).
  The `beq` branch at 0x1005c8c4 targets 0x1005c940, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x1005c8d0 targets 0x1005c8e4, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1005c8dc targets 0x1005c914 and is always taken.
  The `bne` branch at 0x1005c8ec targets 0x1005c904, is taken when a1(?) != a2(=0x5c), and falls through when a1(?) == a2(=0x5c).
  The `beq` branch at 0x1005c8fc targets 0x1005c914 and is always taken.
  The `beq` branch at 0x1005c90c targets 0x1005c940, is taken when a4(?) == a5(?), and falls through when a4(?) != a5(?).
  The `bne` branch at 0x1005c938 targets 0x1005c8cc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1005c944 targets 0x1005c958, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1005c968 targets 0x1005ca04, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1005c984 targets 0x1005ca04, is taken when t9(?) == ra(=0x20), and falls through when t9(?) != ra(=0x20).
  The `beq` branch at 0x1005c9a0 targets 0x1005ca04, is taken when at(?) == v0(=0x9), and falls through when at(?) != v0(=0x9).
  The `beq` branch at 0x1005c9c4 targets 0x1005ca04, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1005c9e0 targets 0x1005ca04, is taken when a2(?) == a3(=0x20), and falls through when a2(?) != a3(=0x20).
  The `bne` branch at 0x1005c9fc targets 0x1005c9a8, is taken when a4(?) != a5(=0x9), and falls through when a4(?) == a5(=0x9).
  The `beq` branch at 0x1005ca18 targets 0x1005ca2c, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1005ca24 targets 0x1005cf94 and is always taken.
  The `bne` branch at 0x1005ca38 targets 0x1005ccbc, is taken when t1(?) != t2(=0x22), and falls through when t1(?) == t2(=0x22).
  The `beq` branch at 0x1005ca98 targets 0x1005cb7c, is taken when ra(=entry(0x1)) == 0, and falls through when ra(=entry(0x1)) != 0.
  The `bne` branch at 0x1005caa4 targets 0x1005cac8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x1005cac0 targets 0x1005cb0c, is taken when a0(?) != a1(=0x5c), and falls through when a0(?) == a1(=0x5c).
  The `beq` branch at 0x1005cb04 targets 0x1005cb58 and is always taken.
  The `beq` branch at 0x1005cb20 targets 0x1005cb7c, is taken when a6(?) == a7(=0x22), and falls through when a6(?) != a7(=0x22).
  The `bne` branch at 0x1005cb74 targets 0x1005caa0, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x1005cb98 targets 0x1005cbb4, is taken when ra(?) == at(=0x27), and falls through when ra(?) != at(=0x27).
  The `bne` branch at 0x1005cbac targets 0x1005cc50, is taken when v1(?) != a0(=0x22), and falls through when v1(?) == a0(=0x22).
  The `beq` branch at 0x1005cbd8 targets 0x1005cc18, is taken when ra(=ret(strlen)) == 0, and falls through when ra(=ret(strlen)) != 0.
  The `bne` branch at 0x1005cbfc targets 0x1005cc18, is taken when at(?) != v0(?), and falls through when at(?) == v0(?).
  The `beq` branch at 0x1005cc48 targets 0x1005cc98 and is always taken.
  The `beq` branch at 0x1005ccb4 targets 0x1005cf94 and is always taken.
  The `bne` branch at 0x1005cce4 targets 0x1005ccfc, is taken when ra(=ret(strrchr)) != 0, and falls through when ra(=ret(strrchr)) == 0.
  The `beq` branch at 0x1005ccf4 targets 0x1005cd08 and is always taken.
  The `beq` branch at 0x1005cd50 targets 0x1005cdc8, is taken when v0(=ret(0x1005eae0)) == 0, and falls through when v0(=ret(0x1005eae0)) != 0.
  The `beq` branch at 0x1005cd80 targets 0x1005cdb4, is taken when (a2(=[([sym(__libc_attr)] + (ret(0x1005d740) << 0x2))+4]) & 0x2) == 0, and falls through when (a2(=[([sym(__libc_attr)] + (ret(0x1005d740) << 0x2))+4]) & 0x2) != 0.
  The `beq` branch at 0x1005cdac targets 0x1005cdbc and is always taken.
  The `beq` branch at 0x1005cdf0 targets 0x1005ce04, is taken when v0(=ret(0x1005eae0)) == 0, and falls through when v0(=ret(0x1005eae0)) != 0.
  The `beq` branch at 0x1005ce10 targets 0x1005ce2c, is taken when a3(?) == a4(=0x27), and falls through when a3(?) != a4(=0x27).
  The `bne` branch at 0x1005ce24 targets 0x1005ced4, is taken when a4(?) != a5(=0x22), and falls through when a4(?) == a5(=0x22).
  The `beq` branch at 0x1005ce5c targets 0x1005ce9c, is taken when ra(=ret(strlen)) == 0, and falls through when ra(=ret(strlen)) != 0.
  The `bne` branch at 0x1005ce80 targets 0x1005ce9c, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x1005cecc targets 0x1005cf8c and is always taken.
  The `bne` branch at 0x1005cf00 targets 0x1005cf54, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005cf4c targets 0x1005cf8c and is always taken.
  The return at 0x1005cfa4 has v0 = 0x0.

- `rl_variable_bind` in `usr/gfx/KONA/bin/kpm` at 0x1005cfb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005cfb0-0x1005d740 (1936 bytes).
  It occupies 1936 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c060, including `lw` at 0x1005cfdc, `lw` at 0x1005d008, `lw` at 0x1005d0e0.
  The `lw` at 0x1005cff0 loads 4 bytes from abs 0x101493b8.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005d01c, `lw` at 0x1005d0f4, `lw` at 0x1005d120.
  14 such `lw` accesses load 4 bytes from abs 0x1014c274, including `lw` at 0x1005d028, `lw` at 0x1005d06c, `lw` at 0x1005d184.
  7 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x1005d044, `lbu` at 0x1005d090, `lbu` at 0x1005d2b0.
  15 such `lw` accesses load 4 bytes from abs 0x1014c058, including `lw` at 0x1005d05c, `lw` at 0x1005d174, `lw` at 0x1005d1a8.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x1, including `lbu` at 0x1005d0a8, `lbu` at 0x1005d6c4.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1005d0f8, `sw` at 0x1005d124.
  2 such `lw` accesses load 4 bytes from abs 0x1014c278, including `lw` at 0x1005d1bc, `lw` at 0x1005d228.
  The `lw` at 0x1005d1dc loads 4 bytes from abs 0x1014c7fc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005d1e8, `lw` at 0x1005d254.
  2 such `sw` accesses store 4 bytes to sym(_rl_keymap) +0x0, including `sw` at 0x1005d1ec, `sw` at 0x1005d258.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7c0, including `lw` at 0x1005d1f8, `lw` at 0x1005d268.
  2 such `sw` accesses store 4 bytes to sym(rl_editing_mode) +0x0, including `sw` at 0x1005d1fc, `sw` at 0x1005d26c.
  The `lw` at 0x1005d248 loads 4 bytes from abs 0x1014c7f0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c9a0, including `lw` at 0x1005d2c4, `lw` at 0x1005d2dc, `lw` at 0x1005d354.
  2 such `lw` accesses load 4 bytes from sym(rl_vi_comment_begin) +0x0, including `lw` at 0x1005d2c8, `lw` at 0x1005d2e0.
  The `lw` at 0x1005d2ec loads 4 bytes from abs 0x1014c114.
  The `lw` at 0x1005d304 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1005d320 loads 4 bytes from abs 0x1014c6e4.
  The `lw` at 0x1005d340 loads 4 bytes from abs 0x1014c0f8.
  The `sw` at 0x1005d358 stores 4 bytes to sym(rl_vi_comment_begin) +0x0.
  The `lw` at 0x1005d3bc loads 4 bytes from abs 0x1014c0e4.
  The `lw` at 0x1005d3ec loads 4 bytes from abs 0x1014c7ac.
  The `sw` at 0x1005d3f0 stores 4 bytes to sym(rl_completion_query_items) +0x0.
  The `lw` at 0x1005d43c loads 4 bytes from abs 0x1014c69c.
  The `lw` at 0x1005d468 loads 4 bytes from abs 0x1014c6a0.
  6 such `lw` accesses load 4 bytes from abs 0x1014c7d4, including `lw` at 0x1005d4cc, `lw` at 0x1005d54c, `lw` at 0x1005d5d0.
  6 such `sw` accesses store 4 bytes to sym(_rl_bell_preference) +0x0, including `sw` at 0x1005d4d0, `sw` at 0x1005d550, `sw` at 0x1005d5d4.
  The `jalr` at 0x1005d02c calls strcasecmp with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005d070 calls strcasecmp with a0=a1 at entry (arg1), a1=0x100933f8, a2=[a1]:1, a3=?.
  The `jalr` at 0x1005d188 calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093400, a2=?, a3=?.
  The `jalr` at 0x1005d1c0 calls strncasecmp with a0=a1 at entry (arg1), a1=0x100933e0, a2=0x2, a3=?.
  The `jalr` at 0x1005d22c calls strncasecmp with a0=a1 at entry (arg1), a1=0x100933d8, a2=0x5, a3=?.
  The `jalr` at 0x1005d298 calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093410, a2=?, a3=?.
  The `jalr` at 0x1005d2f0 calls free with a0=[sym(rl_vi_comment_begin)], a1=?, a2=[a1]:1, a3=[sym(rl_vi_comment_begin)].
  The `jalr` at 0x1005d308 calls strlen with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1005d324 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005d344 calls strcpy with a0=ret(xmalloc), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1005d384 calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093420, a2=?, a3=?.
  The `jalr` at 0x1005d3c0 calls atoi with a0=a1 at entry (arg1), a1=?, a2=[a1]:1, a3=0x64.
  The `jalr` at 0x1005d41c calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093438, a2=?, a3=?.
  The `jal` at 0x1005d440 calls rl_get_keymap_by_name [0x1005d840] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1005d46c calls rl_set_keymap [0x1005d950] with a0=ret(rl_get_keymap_by_name), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005d49c calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093440, a2=?, a3=?.
  The `jalr` at 0x1005d4fc calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093450, a2=[a1]:1, a3=?.
  The `jalr` at 0x1005d530 calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093458, a2=?, a3=?.
  The `jalr` at 0x1005d57c calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093460, a2=?, a3=?.
  The `jalr` at 0x1005d5b0 calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093468, a2=?, a3=?.
  The `jalr` at 0x1005d600 calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093470, a2=?, a3=?.
  The `jalr` at 0x1005d650 calls strcasecmp with a0=a0 at entry (arg0), a1=0x10093478, a2=?, a3=?.
  The `jalr` at 0x1005d694 calls strcasecmp with a0=a1 at entry (arg1), a1=0x10093468, a2=[a1]:1, a3=?.
  The `beq` branch at 0x1005cff4 targets 0x1005d168, is taken when at(=[0x101493b8]) == 0, and falls through when at(=[0x101493b8]) != 0.
  The `bne` branch at 0x1005d038 targets 0x1005d134, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d048 targets 0x1005d0d4, is taken when a2(=[a1]:1) == 0, and falls through when a2(=[a1]:1) != 0.
  The `bne` branch at 0x1005d07c targets 0x1005d08c, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d084 targets 0x1005d0d4 and is always taken.
  The `bne` branch at 0x1005d098 targets 0x1005d0c4, is taken when a2(=[a1]:1) != a3(=0x31), and falls through when a2(=[a1]:1) == a3(=0x31).
  The `bne` branch at 0x1005d0ac targets 0x1005d0c4, is taken when a3(=[a1+1]:1) != 0, and falls through when a3(=[a1+1]:1) == 0.
  The `beq` branch at 0x1005d0bc targets 0x1005d0c8 and is always taken.
  The `beq` branch at 0x1005d0cc targets 0x1005d104, is taken when a5(=one of 0x0, 0x1) == 0, and falls through when a5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1005d0fc targets 0x1005d128 and is always taken.
  The `beq` branch at 0x1005d12c targets 0x1005d728 and is always taken.
  The `bne` branch at 0x1005d160 targets 0x1005cffc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x1005d194 targets 0x1005d278, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `bne` branch at 0x1005d1cc targets 0x1005d208, is taken when v0(=ret(strncasecmp)) != 0, and falls through when v0(=ret(strncasecmp)) == 0.
  The `beq` branch at 0x1005d200 targets 0x1005d270 and is always taken.
  The `bne` branch at 0x1005d238 targets 0x1005d270, is taken when v0(=ret(strncasecmp)) != 0, and falls through when v0(=ret(strncasecmp)) == 0.
  The `beq` branch at 0x1005d270 targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d2a4 targets 0x1005d364, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d2b4 targets 0x1005d35c, is taken when a2(=[a1]:1) == 0, and falls through when a2(=[a1]:1) != 0.
  The `beq` branch at 0x1005d2cc targets 0x1005d2f8, is taken when a3(=[sym(rl_vi_comment_begin)]) == 0, and falls through when a3(=[sym(rl_vi_comment_begin)]) != 0.
  The `beq` branch at 0x1005d35c targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d390 targets 0x1005d3fc, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d3a8 targets 0x1005d3e0, is taken when a2(=[a1]:1) == 0, and falls through when a2(=[a1]:1) != 0.
  The `bgez` branch at 0x1005d3d4 targets 0x1005d3e0, is taken when ra(=ret(atoi)) >= 0 (signed), and falls through when ra(=ret(atoi)) < 0 (signed).
  The `beq` branch at 0x1005d3f4 targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d428 targets 0x1005d47c, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d454 targets 0x1005d474, is taken when ra(=ret(rl_get_keymap_by_name)) == 0, and falls through when ra(=ret(rl_get_keymap_by_name)) != 0.
  The `beq` branch at 0x1005d474 targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d4a8 targets 0x1005d630, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `bne` branch at 0x1005d4b8 targets 0x1005d4dc, is taken when a2(=[a1]:1) != 0, and falls through when a2(=[a1]:1) == 0.
  The `beq` branch at 0x1005d4d4 targets 0x1005d628 and is always taken.
  The `beq` branch at 0x1005d508 targets 0x1005d544, is taken when v0(=ret(strcasecmp)) == 0, and falls through when v0(=ret(strcasecmp)) != 0.
  The `bne` branch at 0x1005d53c targets 0x1005d55c, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d554 targets 0x1005d628 and is always taken.
  The `beq` branch at 0x1005d588 targets 0x1005d5c4, is taken when v0(=ret(strcasecmp)) == 0, and falls through when v0(=ret(strcasecmp)) != 0.
  The `bne` branch at 0x1005d5bc targets 0x1005d5e0, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d5d8 targets 0x1005d628 and is always taken.
  The `bne` branch at 0x1005d60c targets 0x1005d628, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d628 targets 0x1005d720 and is always taken.
  The `bne` branch at 0x1005d65c targets 0x1005d720, is taken when v0(=ret(strcasecmp)) != 0, and falls through when v0(=ret(strcasecmp)) == 0.
  The `beq` branch at 0x1005d66c targets 0x1005d70c, is taken when a2(=[a1]:1) == 0, and falls through when a2(=[a1]:1) != 0.
  The `beq` branch at 0x1005d6a0 targets 0x1005d6d0, is taken when v0(=ret(strcasecmp)) == 0, and falls through when v0(=ret(strcasecmp)) != 0.
  The `bne` branch at 0x1005d6b4 targets 0x1005d6e0, is taken when a2(=[a1]:1) != a3(=0x31), and falls through when a2(=[a1]:1) == a3(=0x31).
  The `bne` branch at 0x1005d6c8 targets 0x1005d6e0, is taken when a3(=[a1+1]:1) != 0, and falls through when a3(=[a1+1]:1) == 0.
  The `beq` branch at 0x1005d6d8 targets 0x1005d6e4 and is always taken.
  The `beq` branch at 0x1005d6e8 targets 0x1005d70c, is taken when a5(=one of 0x0, 0x1) == 0, and falls through when a5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1005d704 targets 0x1005d720 and is always taken.
  The return at 0x1005d738 has v0 = 0x0.

- `rl_get_keymap_by_name` in `usr/gfx/KONA/bin/kpm` at 0x1005d840 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005d840-0x1005d948 (264 bytes).
  It occupies 264 bytes.
  4 such `lw` accesses load 4 bytes from abs 0x1014c060, including `lw` at 0x1005d868, `lw` at 0x1005d894, `lw` at 0x1005d8d0.
  The `lw` at 0x1005d87c loads 4 bytes from abs 0x10149460.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005d8a8, `lw` at 0x1005d8e4, `lw` at 0x1005d91c.
  The `lw` at 0x1005d8b4 loads 4 bytes from abs 0x1014c150.
  The `jalr` at 0x1005d8b8 calls strcmp with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005d880 targets 0x1005d928, is taken when at(=[0x10149460]) == 0, and falls through when at(=[0x10149460]) != 0.
  The `bne` branch at 0x1005d8c0 targets 0x1005d8f4, is taken when v0(=ret(strcmp)) != 0, and falls through when v0(=ret(strcmp)) == 0.
  The `beq` branch at 0x1005d8ec targets 0x1005d930 and is always taken.
  The `bne` branch at 0x1005d920 targets 0x1005d888, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x1005d940 has v0 = one of ?, 0x0.

- `rl_set_keymap` in `usr/gfx/KONA/bin/kpm` at 0x1005d950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005d950-0x1005d998 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0x1005d980 loads 4 bytes from abs 0x1014c7bc.
  The `sw` at 0x1005d984 stores 4 bytes to sym(_rl_keymap) +0x0.
  The `beq` branch at 0x1005d96c targets 0x1005d988, is taken when v0(=a0) == 0, and falls through when v0(=a0) != 0.
  The return at 0x1005d990 has v0 = a0.

- `rl_get_keymap` in `usr/gfx/KONA/bin/kpm` at 0x1005d9a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005d9a0-0x1005d9c4 (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x1005d9b4 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x1005d9b8 loads 4 bytes from sym(_rl_keymap) +0x0.
  The return at 0x1005d9bc has v0 = [sym(_rl_keymap)].

- `rl_set_keymap_from_edit_mode` in `usr/gfx/KONA/bin/kpm` at 0x1005d9d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005d9d0-0x1005da68 (152 bytes).
  It occupies 152 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7c0, including `lw` at 0x1005d9ec, `lw` at 0x1005da2c.
  2 such `lw` accesses load 4 bytes from sym(rl_editing_mode) +0x0, including `lw` at 0x1005d9f0, `lw` at 0x1005da30.
  The `lw` at 0x1005da08 loads 4 bytes from abs 0x1014c7f0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005da14, `lw` at 0x1005da50.
  2 such `sw` accesses store 4 bytes to sym(_rl_keymap) +0x0, including `sw` at 0x1005da18, `sw` at 0x1005da54.
  The `lw` at 0x1005da44 loads 4 bytes from abs 0x1014c7fc.
  The `bne` branch at 0x1005d9f8 targets 0x1005da24, is taken when v0(=[sym(rl_editing_mode)]) != v1(=0x1), and falls through when v0(=[sym(rl_editing_mode)]) == v1(=0x1).
  The `beq` branch at 0x1005da1c targets 0x1005da58 and is always taken.
  The `bne` branch at 0x1005da34 targets 0x1005da58, is taken when a1(=[sym(rl_editing_mode)]) != 0, and falls through when a1(=[sym(rl_editing_mode)]) == 0.
  The return at 0x1005da60 has v0 = [sym(rl_editing_mode)].

- `rl_list_funmap_names` in `usr/gfx/KONA/bin/kpm` at 0x1005da70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005da70-0x1005db78 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x1005da98 loads 4 bytes from abs 0x1014c614.
  The `lw` at 0x1005dad0 loads 4 bytes from ret(rl_funmap_names) +0x0.
  The `lw` at 0x1005dae4 loads 4 bytes from abs 0x1014c8bc.
  The `lw` at 0x1005dae8 loads 4 bytes from sym(rl_outstream) +0x0.
  The `lw` at 0x1005daf4 loads 4 bytes from abs 0x1014c058.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005db0c, `lw` at 0x1005db40.
  The `lw` at 0x1005db18 loads 4 bytes from abs 0x1014c128.
  The `lw` at 0x1005db58 loads 4 bytes from abs 0x1014c114.
  The `jal` at 0x1005da9c calls rl_funmap_names [0x10053790] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005db1c calls fprintf with a0=[sym(rl_outstream)], a1=0x10093490, a2=?, a3=?.
  The `jalr` at 0x1005db5c calls free with a0=ret(rl_funmap_names), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1005daac targets 0x1005dabc, is taken when at(=ret(rl_funmap_names)) != 0, and falls through when at(=ret(rl_funmap_names)) == 0.
  The `beq` branch at 0x1005dab4 targets 0x1005db64 and is always taken.
  The `beq` branch at 0x1005dad4 targets 0x1005db4c, is taken when v0(=[ret(rl_funmap_names)]) == 0, and falls through when v0(=[ret(rl_funmap_names)]) != 0.
  The `bne` branch at 0x1005db44 targets 0x1005dadc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The return at 0x1005db70 has v0 = one of ret(rl_funmap_names), ret(free).

- `rl_invoking_keyseqs_in_map` in `usr/gfx/KONA/bin/kpm` at 0x1005db80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005db80-0x1005e480 (2304 bytes).
  It occupies 2304 bytes.
  The `lbu` at 0x1005dbd4 loads 1 byte from ?.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005dc1c, `lw` at 0x1005dc80, `lw` at 0x1005dcec.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x1005dc38, `lw` at 0x1005e034.
  8 such `lw` accesses load 4 bytes from abs 0x1014c10c, including `lw` at 0x1005dc64, `lw` at 0x1005dcd4, `lw` at 0x1005dd04.
  8 such `lw` accesses load 4 bytes from sym(__libc_attr) +0x0, including `lw` at 0x1005dc68, `lw` at 0x1005dcd8, `lw` at 0x1005dd08.
  6 such `lw` accesses load 4 bytes from abs 0x1014c260, including `lw` at 0x1005dca0, `lw` at 0x1005dd40, `lw` at 0x1005dddc.
  2 such `lw` accesses load 4 bytes from abs 0x1014c234, including `lw` at 0x1005dd78, `lw` at 0x1005e1b4.
  5 such `lw` accesses load 4 bytes from abs 0x1014c058, including `lw` at 0x1005de1c, `lw` at 0x1005de60, `lw` at 0x1005e064.
  5 such `lw` accesses load 4 bytes from abs 0x1014c100, including `lw` at 0x1005de30, `lw` at 0x1005de70, `lw` at 0x1005e074.
  4 such `sb` accesses store 1 byte to ret(xmalloc) +0x0, including `sb` at 0x1005deac, `sb` at 0x1005dedc, `sb` at 0x1005e2e8.
  4 such `sb` accesses store 1 byte to ret(xmalloc) +0x1, including `sb` at 0x1005debc, `sb` at 0x1005dee8, `sb` at 0x1005e2f8.
  2 such `sb` accesses store 1 byte to ret(xmalloc) +0x2, including `sb` at 0x1005dec8, `sb` at 0x1005e304.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e8, including `lw` at 0x1005df24, `lw` at 0x1005e3b4.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1005df5c, `sw` at 0x1005df70, `sw` at 0x1005e3ec.
  The `lw` at 0x1005dfbc loads 4 bytes from abs 0x1014c6a8.
  The `lw` at 0x1005dff0 loads 4 bytes from table(0x0) +0x0.
  The `lw` at 0x1005e018 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x1005e348 loads 4 bytes from abs 0x1014c0ec.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1005e370, `lw` at 0x1005e438.
  The `jal` at 0x1005dc3c calls xmalloc [0x10061950] with a0=0x5, a1=?, a2=?, a3=?, a6=a0 at entry (arg0).
  The `jalr` at 0x1005dca4 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005dd44 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005dd7c calls tolower with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005dde0 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005de34 calls sprintf with a0=ret(xmalloc), a1=0x10093498, a2=?, a3=?.
  The `jalr` at 0x1005de74 calls sprintf with a0=ret(xmalloc), a1=0x100934a0, a2=?, a3=0x7f.
  The `jal` at 0x1005df28 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005dfc0 calls rl_invoking_keyseqs_in_map [0x1005db80] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=0x1.
  The `jalr` at 0x1005e01c calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005e038 calls xmalloc [0x10061950] with a0=ret(strlen)+6, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e078 calls sprintf with a0=ret(xmalloc), a1=0x100934a8, a2=?, a3=?.
  The `jalr` at 0x1005e0e0 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e180 calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e1b8 calls tolower with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e21c calls toupper with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e270 calls sprintf with a0=ret(xmalloc), a1=0x10093498, a2=?, a3=?.
  The `jalr` at 0x1005e2b0 calls sprintf with a0=ret(xmalloc), a1=0x100934a0, a2=?, a3=0x7f.
  The `jalr` at 0x1005e34c calls strcat with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e374 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005e3b8 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e43c calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005dbbc targets 0x1005e468 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x1005dbdc targets 0x1005dc0c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1005dbec targets 0x1005dc0c, is taken when a1(?) == a2(=0x2), and falls through when a1(?) != a2(=0x2).
  The `beq` branch at 0x1005dbfc targets 0x1005df7c, is taken when a3(?) == a4(=0x1), and falls through when a3(?) != a4(=0x1).
  The `beq` branch at 0x1005dc04 targets 0x1005e44c and is always taken.
  The `bne` branch at 0x1005dc24 targets 0x1005df74, is taken when a5(?) != a6(=a0), and falls through when a5(?) == a6(=a0).
  The `beq` branch at 0x1005dc54 targets 0x1005de44, is taken when ra(?) >= 0x20 (signed), and falls through when ra(?) < 0x20 (signed).
  The `beq` branch at 0x1005dc88 targets 0x1005dcc0, is taken when (at(?) & 0x2) == 0, and falls through when (at(?) & 0x2) != 0.
  The `beq` branch at 0x1005dcb8 targets 0x1005dccc and is always taken.
  The `beq` branch at 0x1005dcf4 targets 0x1005dd98, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x1005dd28 targets 0x1005dd60, is taken when (a4(?) & 0x2) == 0, and falls through when (a4(?) & 0x2) != 0.
  The `beq` branch at 0x1005dd58 targets 0x1005dd6c and is always taken.
  The `beq` branch at 0x1005dd90 targets 0x1005de10 and is always taken.
  The `beq` branch at 0x1005ddc4 targets 0x1005ddfc, is taken when (at(?) & 0x2) == 0, and falls through when (at(?) & 0x2) != 0.
  The `beq` branch at 0x1005ddf4 targets 0x1005de08 and is always taken.
  The `beq` branch at 0x1005de3c targets 0x1005deec and is always taken.
  The `bne` branch at 0x1005de4c targets 0x1005de84, is taken when a2(?) != a3(=0x7f), and falls through when a2(?) == a3(=0x7f).
  The `beq` branch at 0x1005de7c targets 0x1005deec and is always taken.
  The `beq` branch at 0x1005de8c targets 0x1005dea4, is taken when a2(?) == a3(=0x5c), and falls through when a2(?) != a3(=0x5c).
  The `bne` branch at 0x1005de9c targets 0x1005ded4, is taken when a4(?) != a5(=0x22), and falls through when a4(?) == a5(=0x22).
  The `beq` branch at 0x1005decc targets 0x1005deec and is always taken.
  The `beq` branch at 0x1005defc targets 0x1005df38, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `beq` branch at 0x1005df74 targets 0x1005e44c and is always taken.
  The `beq` branch at 0x1005df94 targets 0x1005dfd0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1005dfd4 targets 0x1005e444, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1005dff4 targets 0x1005e42c, is taken when a4(=entry(0x0)) == 0, and falls through when a4(=entry(0x0)) != 0.
  The `bne` branch at 0x1005e050 targets 0x1005e088, is taken when ra(?) != at(=0x1b), and falls through when ra(?) == at(=0x1b).
  The `beq` branch at 0x1005e080 targets 0x1005e328 and is always taken.
  The `beq` branch at 0x1005e090 targets 0x1005e280, is taken when a2(?) >= 0x20 (signed), and falls through when a2(?) < 0x20 (signed).
  The `beq` branch at 0x1005e0c4 targets 0x1005e0fc, is taken when (a3(?) & 0x2) == 0, and falls through when (a3(?) & 0x2) != 0.
  The `beq` branch at 0x1005e0f4 targets 0x1005e108 and is always taken.
  The `beq` branch at 0x1005e130 targets 0x1005e1d4, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x1005e164 targets 0x1005e19c, is taken when (a4(?) & 0x2) == 0, and falls through when (a4(?) & 0x2) != 0.
  The `beq` branch at 0x1005e194 targets 0x1005e1a8 and is always taken.
  The `beq` branch at 0x1005e1cc targets 0x1005e24c and is always taken.
  The `beq` branch at 0x1005e200 targets 0x1005e238, is taken when (at(?) & 0x2) == 0, and falls through when (at(?) & 0x2) != 0.
  The `beq` branch at 0x1005e230 targets 0x1005e244 and is always taken.
  The `beq` branch at 0x1005e278 targets 0x1005e328 and is always taken.
  The `bne` branch at 0x1005e288 targets 0x1005e2c0, is taken when a2(?) != a3(=0x7f), and falls through when a2(?) == a3(=0x7f).
  The `beq` branch at 0x1005e2b8 targets 0x1005e328 and is always taken.
  The `beq` branch at 0x1005e2c8 targets 0x1005e2e0, is taken when a2(?) == a3(=0x5c), and falls through when a2(?) != a3(=0x5c).
  The `bne` branch at 0x1005e2d8 targets 0x1005e310, is taken when a4(?) != a5(=0x22), and falls through when a4(?) == a5(=0x22).
  The `beq` branch at 0x1005e308 targets 0x1005e328 and is always taken.
  The `beq` branch at 0x1005e38c targets 0x1005e3c8, is taken when a2(?) >= a3(?) (signed), and falls through when a2(?) < a3(?) (signed).
  The `bne` branch at 0x1005e424 targets 0x1005dffc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1005e444 targets 0x1005e44c and is always taken.
  The `bne` branch at 0x1005e460 targets 0x1005dbc4, is taken when ra(?) < 0x80 (signed), and falls through when ra(?) >= 0x80 (signed).
  The return at 0x1005e478 has v0 = ?.

- `rl_invoking_keyseqs` in `usr/gfx/KONA/bin/kpm` at 0x1005e480 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005e480-0x1005e4d8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x1005e4a8 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x1005e4ac loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lw` at 0x1005e4b8 loads 4 bytes from abs 0x1014c6a8.
  The `jal` at 0x1005e4bc calls rl_invoking_keyseqs_in_map [0x1005db80] with a0=a0 at entry (arg0), a1=[sym(_rl_keymap)], a2=0xf5840, a3=a3 at entry (arg3).
  The return at 0x1005e4d0 has v0 = ret(rl_invoking_keyseqs_in_map).

- `rl_dump_functions` in `usr/gfx/KONA/bin/kpm` at 0x1005e4e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005e4e0-0x1005e550 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x1005e508 loads 4 bytes from abs 0x1014c8a0.
  The `lw` at 0x1005e50c loads 4 bytes from sym(rl_explicit_arg) +0x0.
  The `lw` at 0x1005e518 loads 4 bytes from abs 0x1014c6ac.
  The `lw` at 0x1005e52c loads 4 bytes from abs 0x1014c5d4.
  The `jal` at 0x1005e51c calls rl_function_dumper [0x1005e550] with a0=[sym(rl_explicit_arg)], a1=a1 at entry (arg1), a2=0xf57e0, a3=a3 at entry (arg3).
  The `jal` at 0x1005e530 calls rl_on_new_line [0x10050d10] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x1005e548 has v0 = 0x0.

- `rl_function_dumper` in `usr/gfx/KONA/bin/kpm` at 0x1005e550 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005e550-0x1005ea1c (1228 bytes).
  It occupies 1228 bytes.
  The `lw` at 0x1005e574 loads 4 bytes from abs 0x1014c614.
  7 such `lw` accesses load 4 bytes from abs 0x1014c8bc, including `lw` at 0x1005e590, `lw` at 0x1005e654, `lw` at 0x1005e6b4.
  7 such `lw` accesses load 4 bytes from sym(rl_outstream) +0x0, including `lw` at 0x1005e594, `lw` at 0x1005e658, `lw` at 0x1005e6b8.
  9 such `lw` accesses load 4 bytes from abs 0x1014c058, including `lw` at 0x1005e5a0, `lw` at 0x1005e664, `lw` at 0x1005e6c4.
  7 such `lw` accesses load 4 bytes from abs 0x1014c128, including `lw` at 0x1005e5b0, `lw` at 0x1005e678, `lw` at 0x1005e6ec.
  The `lw` at 0x1005e5d0 loads 4 bytes from ret(rl_funmap_names) +0x0.
  The `lw` at 0x1005e5f0 loads 4 bytes from abs 0x1014c688.
  The `lw` at 0x1005e610 loads 4 bytes from abs 0x1014c7bc.
  The `lw` at 0x1005e614 loads 4 bytes from sym(_rl_keymap) +0x0.
  The `lw` at 0x1005e620 loads 4 bytes from abs 0x1014c6a8.
  3 such `lw` accesses load 4 bytes from ret(rl_invoking_keyseqs_in_map) +0x0, including `lw` at 0x1005e6a0, `lw` at 0x1005e800, `lw` at 0x1005e964.
  10 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1005e6dc, `lw` at 0x1005e708, `lw` at 0x1005e73c.
  4 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x1005e714, `lw` at 0x1005e754, `lw` at 0x1005e98c.
  The `jal` at 0x1005e578 calls rl_funmap_names [0x10053790] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1005e5b4 calls fprintf with a0=[sym(rl_outstream)], a1=0x100934ac, a2=?, a3=?.
  The `jal` at 0x1005e5f4 calls rl_named_function [0x1005aef0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1005e624 calls rl_invoking_keyseqs_in_map [0x1005db80] with a0=ret(rl_named_function), a1=[sym(_rl_keymap)], a2=?, a3=?.
  The `jalr` at 0x1005e67c calls fprintf with a0=[sym(rl_outstream)], a1=0x100934b0, a2=?, a3=ret(rl_invoking_keyseqs_in_map).
  The `jalr` at 0x1005e6f0 calls fprintf with a0=[sym(rl_outstream)], a1=0x100934c8, a2=?, a3=?.
  The `jalr` at 0x1005e718 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e758 calls free with a0=ret(rl_invoking_keyseqs_in_map), a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e7a4 calls fprintf with a0=[sym(rl_outstream)], a1=0x100934d8, a2=?, a3=?.
  The `jalr` at 0x1005e7e4 calls fprintf with a0=[sym(rl_outstream)], a1=0x100934f8, a2=?, a3=?.
  The `jalr` at 0x1005e8b0 calls fprintf with a0=[sym(rl_outstream)], a1=0x10093518, a2=?, a3=one of 0x10093510, 0x10093514.
  The `jalr` at 0x1005e948 calls fprintf with a0=[sym(rl_outstream)], a1=0x10093520, a2=?, a3=?, a6=0x5.
  The `jalr` at 0x1005e990 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1005e9d0 calls free with a0=ret(rl_invoking_keyseqs_in_map), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1005e5dc targets 0x1005ea08, is taken when a1(=[ret(rl_funmap_names)]) == 0, and falls through when a1(=[ret(rl_funmap_names)]) != 0.
  The `beq` branch at 0x1005e638 targets 0x1005e768, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The `bne` branch at 0x1005e644 targets 0x1005e68c, is taken when a3(=ret(rl_invoking_keyseqs_in_map)) != 0, and falls through when a3(=ret(rl_invoking_keyseqs_in_map)) == 0.
  The `beq` branch at 0x1005e684 targets 0x1005e760 and is always taken.
  The `beq` branch at 0x1005e6a4 targets 0x1005e748, is taken when a1(=[ret(rl_invoking_keyseqs_in_map)]) == 0, and falls through when a1(=[ret(rl_invoking_keyseqs_in_map)]) != 0.
  The `bne` branch at 0x1005e740 targets 0x1005e6ac, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1005e760 targets 0x1005e9d8 and is always taken.
  The `bne` branch at 0x1005e76c targets 0x1005e7b4, is taken when ra(=ret(rl_invoking_keyseqs_in_map)) != 0, and falls through when ra(=ret(rl_invoking_keyseqs_in_map)) == 0.
  The `beq` branch at 0x1005e7ac targets 0x1005e9d8 and is always taken.
  The `beq` branch at 0x1005e804 targets 0x1005e8f0, is taken when a1(=[ret(rl_invoking_keyseqs_in_map)]) == 0, and falls through when a1(=[ret(rl_invoking_keyseqs_in_map)]) != 0.
  The `beq` branch at 0x1005e814 targets 0x1005e8f0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x1005e834 targets 0x1005e858, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1005e850 targets 0x1005e86c and is always taken.
  The `beq` branch at 0x1005e8d8 targets 0x1005e8f0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1005e8e8 targets 0x1005e81c, is taken when a4(?) < 0x5 (signed), and falls through when a4(?) >= 0x5 (signed).
  The `bne` branch at 0x1005e8f8 targets 0x1005e950, is taken when a5(?) != a6(=0x5), and falls through when a5(?) == a6(=0x5).
  The `beq` branch at 0x1005e914 targets 0x1005e950, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1005e968 targets 0x1005e9c0, is taken when a1(=[ret(rl_invoking_keyseqs_in_map)]) == 0, and falls through when a1(=[ret(rl_invoking_keyseqs_in_map)]) != 0.
  The `bne` branch at 0x1005e9b8 targets 0x1005e970, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x1005ea00 targets 0x1005e5e4, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The return at 0x1005ea14 has v0 = one of ret(fprintf), ?.

- `_rl_bind_if_unbound` in `usr/gfx/KONA/bin/kpm` at 0x1005ea20 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005ea20-0x1005eae0 (192 bytes).
  It occupies 192 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c7bc, including `lw` at 0x1005ea58, `lw` at 0x1005eab0.
  2 such `lw` accesses load 4 bytes from sym(_rl_keymap) +0x0, including `lw` at 0x1005ea5c, `lw` at 0x1005eab4.
  The `lw` at 0x1005ea6c loads 4 bytes from abs 0x1014c68c.
  The `lw` at 0x1005ea94 loads 4 bytes from abs 0x1014c554.
  The `lw` at 0x1005eac0 loads 4 bytes from abs 0x1014c678.
  The `jal` at 0x1005ea70 calls rl_function_of_keyseq [0x1005b020] with a0=a0 at entry (arg0), a1=[sym(_rl_keymap)], a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x1005eac4 calls rl_set_key [0x1005a5d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(_rl_keymap)], a3=?.
  The `beq` branch at 0x1005ea44 targets 0x1005eacc, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x1005ea80 targets 0x1005eaa0, is taken when a2(=ret(rl_function_of_keyseq)) == 0, and falls through when a2(=ret(rl_function_of_keyseq)) != 0.
  The `bne` branch at 0x1005ea98 targets 0x1005eacc, is taken when a3(=ret(rl_function_of_keyseq)) != a4(=sym(rl_do_lowercase_version)), and falls through when a3(=ret(rl_function_of_keyseq)) == a4(=sym(rl_do_lowercase_version)).
  The return at 0x1005ead8 has v0 = one of 0xf52a0, ret(rl_function_of_keyseq), ret(rl_set_key).

- `rl_noninc_forward_search` in `usr/gfx/KONA/bin/kpm` at 0x1005f650 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005f650-0x1005f6d8 (136 bytes).
  It occupies 136 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c080, including `lw` at 0x1005f690, `lw` at 0x1005f6b4.
  The `jal` at 0x1005f694 calls (unnamed) [0x1005f070] with a0=0x1, a1=0x3f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005f6b8 calls (unnamed) [0x1005f070] with a0=0x1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005f678 targets 0x1005f6a4, is taken when at(=a1) != v0(=0x3f), and falls through when at(=a1) == v0(=0x3f).
  The `beq` branch at 0x1005f69c targets 0x1005f6c0 and is always taken.
  The return at 0x1005f6d0 has v0 = 0x0.

- `rl_noninc_reverse_search` in `usr/gfx/KONA/bin/kpm` at 0x1005f6e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005f6e0-0x1005f768 (136 bytes).
  It occupies 136 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c080, including `lw` at 0x1005f720, `lw` at 0x1005f744.
  The `jal` at 0x1005f724 calls (unnamed) [0x1005f070] with a0=-0x1, a1=0x2f, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005f748 calls (unnamed) [0x1005f070] with a0=-0x1, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005f708 targets 0x1005f734, is taken when at(=a1) != v0(=0x2f), and falls through when at(=a1) == v0(=0x2f).
  The `beq` branch at 0x1005f72c targets 0x1005f750 and is always taken.
  The return at 0x1005f760 has v0 = 0x0.

- `rl_noninc_forward_search_again` in `usr/gfx/KONA/bin/kpm` at 0x1005f770 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005f770-0x1005f814 (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c074, including `lw` at 0x1005f798, `lw` at 0x1005f7d4.
  2 such `lw` accesses load 4 bytes from abs 0x1024ae8c, including `lw` at 0x1005f79c, `lw` at 0x1005f7d8.
  The `lw` at 0x1005f7b0 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1005f7e8 loads 4 bytes from abs 0x1014c07c.
  The `jal` at 0x1005f7b4 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005f7ec calls (unnamed) [0x1005ed90] with a0=[0x1024ae8c], a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005f7a0 targets 0x1005f7cc, is taken when at(=[0x1024ae8c]) != 0, and falls through when at(=[0x1024ae8c]) == 0.
  The `beq` branch at 0x1005f7c4 targets 0x1005f7fc and is always taken.
  The return at 0x1005f80c has v0 = one of -0x1, 0x0.

- `rl_noninc_reverse_search_again` in `usr/gfx/KONA/bin/kpm` at 0x1005f820 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005f820-0x1005f8c4 (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1014c074, including `lw` at 0x1005f848, `lw` at 0x1005f884.
  2 such `lw` accesses load 4 bytes from abs 0x1024ae8c, including `lw` at 0x1005f84c, `lw` at 0x1005f888.
  The `lw` at 0x1005f860 loads 4 bytes from abs 0x1014c514.
  The `lw` at 0x1005f898 loads 4 bytes from abs 0x1014c07c.
  The `jal` at 0x1005f864 calls ding [0x100485f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1005f89c calls (unnamed) [0x1005ed90] with a0=[0x1024ae8c], a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1005f850 targets 0x1005f87c, is taken when at(=[0x1024ae8c]) != 0, and falls through when at(=[0x1024ae8c]) == 0.
  The `beq` branch at 0x1005f874 targets 0x1005f8ac and is always taken.
  The return at 0x1005f8bc has v0 = one of -0x1, 0x0.

- `rl_history_search_forward` in `usr/gfx/KONA/bin/kpm` at 0x1005fbe0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005fbe0-0x1005fcd8 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x1005fc20 loads 4 bytes from abs 0x1014c8b4.
  The `lw` at 0x1005fc24 loads 4 bytes from sym(rl_last_func) +0x0.
  The `lw` at 0x1005fc30 loads 4 bytes from abs 0x1014c6c4.
  The `lw` at 0x1005fc44 loads 4 bytes from abs 0x1014c074.
  The `sw` at 0x1005fc48 stores 4 bytes to abs 0x1024ae94.
  The `lw` at 0x1005fca8 loads 4 bytes from abs 0x1014c084.
  The `jal` at 0x1005fcac calls (unnamed) [0x1005f8d0] with a0=?, a1=one of -0x1, 0x1, a2=?, a3=?, a4=a0 at entry (arg0).
  The `bne` branch at 0x1005fc04 targets 0x1005fc18, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1005fc10 targets 0x1005fcc0 and is always taken.
  The `beq` branch at 0x1005fc34 targets 0x1005fc4c, is taken when v1(=[sym(rl_last_func)]) == a0(=sym(rl_history_search_forward)), and falls through when v1(=[sym(rl_last_func)]) != a0(=sym(rl_history_search_forward)).
  The `blez` branch at 0x1005fc50 targets 0x1005fc68, is taken when a1(=a0) <= 0 (signed), and falls through when a1(=a0) > 0 (signed).
  The `beq` branch at 0x1005fc60 targets 0x1005fc74 and is always taken.
  The `blez` branch at 0x1005fc78 targets 0x1005fc90, is taken when a4(=a0) <= 0 (signed), and falls through when a4(=a0) > 0 (signed).
  The `beq` branch at 0x1005fc88 targets 0x1005fc98 and is always taken.
  The return at 0x1005fcd0 has v0 = one of 0x0, ret(0x1005f8d0).

- `rl_history_search_backward` in `usr/gfx/KONA/bin/kpm` at 0x1005fce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005fce0-0x1005fdd8 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x1005fd20 loads 4 bytes from abs 0x1014c8b4.
  The `lw` at 0x1005fd24 loads 4 bytes from sym(rl_last_func) +0x0.
  The `lw` at 0x1005fd30 loads 4 bytes from abs 0x1014c6c8.
  The `lw` at 0x1005fd44 loads 4 bytes from abs 0x1014c074.
  The `sw` at 0x1005fd48 stores 4 bytes to abs 0x1024ae94.
  The `lw` at 0x1005fda8 loads 4 bytes from abs 0x1014c084.
  The `jal` at 0x1005fdac calls (unnamed) [0x1005f8d0] with a0=?, a1=one of -0x1, 0x1, a2=?, a3=?, a4=a0 at entry (arg0).
  The `bne` branch at 0x1005fd04 targets 0x1005fd18, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x1005fd10 targets 0x1005fdc0 and is always taken.
  The `beq` branch at 0x1005fd34 targets 0x1005fd4c, is taken when v1(=[sym(rl_last_func)]) == a0(=sym(rl_history_search_backward)), and falls through when v1(=[sym(rl_last_func)]) != a0(=sym(rl_history_search_backward)).
  The `blez` branch at 0x1005fd50 targets 0x1005fd68, is taken when a1(=a0) <= 0 (signed), and falls through when a1(=a0) > 0 (signed).
  The `beq` branch at 0x1005fd60 targets 0x1005fd74 and is always taken.
  The `blez` branch at 0x1005fd78 targets 0x1005fd90, is taken when a4(=a0) <= 0 (signed), and falls through when a4(=a0) > 0 (signed).
  The `beq` branch at 0x1005fd88 targets 0x1005fd98 and is always taken.
  The return at 0x1005fdd0 has v0 = one of 0x0, ret(0x1005f8d0).

- `rl_reverse_search_history` in `usr/gfx/KONA/bin/kpm` at 0x1005fde0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005fde0-0x1005fe34 (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x1005fe14 loads 4 bytes from abs 0x1014c088.
  The `jal` at 0x1005fe18 calls (unnamed) [0x10060040] with a0=?, a1=a1 at entry (arg1), a2=0xf3ee0, a3=a3 at entry (arg3).
  The return at 0x1005fe2c has v0 = ret(0x10060040).

- `rl_forward_search_history` in `usr/gfx/KONA/bin/kpm` at 0x1005fe40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x1005fe40-0x1005fe90 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1005fe70 loads 4 bytes from abs 0x1014c088.
  The `jal` at 0x1005fe74 calls (unnamed) [0x10060040] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1005fe88 has v0 = ret(0x10060040).

- `rl_make_bare_keymap` in `usr/gfx/KONA/bin/kpm` at 0x10060ce0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10060ce0-0x10060dec (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0x10060d04 loads 4 bytes from abs 0x1014c6e4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10060d38, `sb` at 0x10060d94.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10060d4c, `sw` at 0x10060db4.
  The `lw` at 0x10060da0 loads 4 bytes from abs 0x1014c554.
  The `jal` at 0x10060d08 calls xmalloc [0x10061950] with a0=0x800, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10060d20 targets 0x10060d6c and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10060d64 targets 0x10060d28, is taken when v0(?) < 0x100 (signed), and falls through when v0(?) >= 0x100 (signed).
  The `beq` branch at 0x10060d7c targets 0x10060dd4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10060dcc targets 0x10060d84, is taken when a6(?) < 0x5b (signed), and falls through when a6(?) >= 0x5b (signed).
  The return at 0x10060de4 has v0 = ret(xmalloc).

- `rl_copy_keymap` in `usr/gfx/KONA/bin/kpm` at 0x10060df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10060df0-0x10060ebc (204 bytes).
  It occupies 204 bytes.
  The `lw` at 0x10060e14 loads 4 bytes from abs 0x1014c6d4.
  The `lbu` at 0x10060e48 loads 1 byte from ?.
  The `sb` at 0x10060e5c stores 1 byte to ?.
  The `lw` at 0x10060e70 loads 4 bytes from ?.
  The `sw` at 0x10060e84 stores 4 bytes to ?.
  The `jal` at 0x10060e18 calls rl_make_bare_keymap [0x10060ce0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10060e30 targets 0x10060ea4 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10060e9c targets 0x10060e38, is taken when v0(?) < 0x100 (signed), and falls through when v0(?) >= 0x100 (signed).
  The return at 0x10060eb4 has v0 = ret(rl_make_bare_keymap).

- `rl_make_keymap` in `usr/gfx/KONA/bin/kpm` at 0x10060ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10060ec0-0x1006104c (396 bytes).
  It occupies 396 bytes.
  The `lw` at 0x10060ee0 loads 4 bytes from abs 0x1014c6d4.
  4 such `lw` accesses load 4 bytes from abs 0x1014c548, including `lw` at 0x10060f10, `lw` at 0x10060f4c, `lw` at 0x10060fac.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10060f24, `sw` at 0x10060fc0, `sw` at 0x10061014.
  The `sw` at 0x10060f58 stores 4 bytes to ret(rl_make_bare_keymap) +0x4c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c558, including `lw` at 0x10060f64, `lw` at 0x10060f7c.
  The `sw` at 0x10060f70 stores 4 bytes to ret(rl_make_bare_keymap) +0x3fc.
  The `sw` at 0x10060f88 stores 4 bytes to ret(rl_make_bare_keymap) +0x44.
  The `jal` at 0x10060ee4 calls rl_make_bare_keymap [0x10060ce0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10060f00 targets 0x10060f44 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10060f3c targets 0x10060f08, is taken when v1(?) < 0x7e (signed), and falls through when v1(?) >= 0x7e (signed).
  The `beq` branch at 0x10060f9c targets 0x10060fe0 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x10060fd8 targets 0x10060fa4, is taken when a7(?) < 0xa0 (signed), and falls through when a7(?) >= 0xa0 (signed).
  The `beq` branch at 0x10060ff0 targets 0x10061034 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x1006102c targets 0x10060ff8, is taken when t8(?) < 0x100 (signed), and falls through when t8(?) >= 0x100 (signed).
  The return at 0x10061044 has v0 = ret(rl_make_bare_keymap).

- `rl_discard_keymap` in `usr/gfx/KONA/bin/kpm` at 0x10061050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10061050-0x10061174 (292 bytes).
  It occupies 292 bytes.
  The `lbu` at 0x100610a4 loads 1 byte from ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100610f4, `lw` at 0x10061124.
  The `lw` at 0x10061100 loads 4 bytes from abs 0x1014c6d8.
  The `lw` at 0x10061130 loads 4 bytes from abs 0x1014c114.
  The `jal` at 0x10061104 calls rl_discard_keymap [0x10061050] with a0=?, a1=?, a2=?, a3=0x1.
  The `jalr` at 0x10061134 calls free with a0=?, a1=?, a2=?, a3=0x1, a5=0x2.
  The `bne` branch at 0x10061070 targets 0x10061080, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x10061078 targets 0x10061160 and is always taken.
  The `beq` branch at 0x1006108c targets 0x10061160 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x100610ac targets 0x100610dc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x100610bc targets 0x100610e4, is taken when a2(?) == a3(=0x1), and falls through when a2(?) != a3(=0x1).
  The `beq` branch at 0x100610cc targets 0x10061114, is taken when a4(?) == a5(=0x2), and falls through when a4(?) != a5(=0x2).
  The `beq` branch at 0x100610d4 targets 0x10061144 and is always taken.
  The `beq` branch at 0x100610dc targets 0x10061144 and is always taken.
  The `beq` branch at 0x1006110c targets 0x10061144 and is always taken.
  The `beq` branch at 0x1006113c targets 0x10061144 and is always taken.
  The `bne` branch at 0x10061158 targets 0x10061094, is taken when a2(?) < 0x100 (signed), and falls through when a2(?) >= 0x100 (signed).
  The return at 0x1006116c has v0 = one of 0xf2c70, ?.

- `rl_set_signals` in `usr/gfx/KONA/bin/kpm` at 0x10061540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10061540-0x100617bc (636 bytes).
  It occupies 636 bytes.
  5 such `lw` accesses load 4 bytes from abs 0x1014c0a0, including `lw` at 0x10061564, `lw` at 0x100615d4, `lw` at 0x10061644.
  6 such `lw` accesses load 4 bytes from abs 0x1014c0a4, including `lw` at 0x10061570, `lw` at 0x100615e0, `lw` at 0x10061650.
  10 such `lw` accesses load 4 bytes from abs 0x1014c09c, including `lw` at 0x10061588, `lw` at 0x10061598, `lw` at 0x100615f8.
  The `sw` at 0x1006158c stores 4 bytes to abs 0x1024aea0.
  The `lw` at 0x1006159c loads 4 bytes from abs 0x1024aea0.
  5 such `lw` accesses load 4 bytes from abs 0x1014c168, including `lw` at 0x100615bc, `lw` at 0x1006162c, `lw` at 0x1006169c.
  The `sw` at 0x100615fc stores 4 bytes to abs 0x1024aea4.
  The `lw` at 0x1006160c loads 4 bytes from abs 0x1024aea4.
  The `sw` at 0x1006166c stores 4 bytes to abs 0x1024aea8.
  2 such `lw` accesses load 4 bytes from abs 0x1024aea8, including `lw` at 0x1006167c, `lw` at 0x10061724.
  The `sw` at 0x100616dc stores 4 bytes to abs 0x1024aeac.
  The `sw` at 0x10061714 stores 4 bytes to abs 0x1024aeb0.
  The `lw` at 0x10061778 loads 4 bytes from abs 0x1014c0a8.
  The `sw` at 0x100617a0 stores 4 bytes to abs 0x1024ae9c.
  The `jal` at 0x10061574 calls (unnamed) [0x100614c0] with a0=0x2, a1=0x10061290, a2=0xf2780, a3=a3 at entry (arg3).
  The `jalr` at 0x100615c0 calls signal with a0=0x2, a1=0x1, a2=?, a3=[0x1024aea0], a4=0x1.
  The `jal` at 0x100615e4 calls (unnamed) [0x100614c0] with a0=0xe, a1=0x10061290, a2=?, a3=?.
  The `jalr` at 0x10061630 calls signal with a0=0xe, a1=0x1, a2=[0x1024aea4], a3=0x1.
  The `jal` at 0x10061654 calls (unnamed) [0x100614c0] with a0=0x18, a1=0x10061290, a2=?, a3=?.
  The `jalr` at 0x100616a0 calls signal with a0=0x18, a1=0x1, a2=[0x1024aea8], a3=0x1.
  The `jal` at 0x100616c4 calls (unnamed) [0x100614c0] with a0=0x1b, a1=0x10061290, a2=?, a3=?.
  The `jal` at 0x100616fc calls (unnamed) [0x100614c0] with a0=0x1a, a1=0x10061290, a2=0x1024ae9c, a3=?.
  The `jalr` at 0x10061748 calls signal with a0=0x1b, a1=0x1, a2=?, a3=[0x1024aea8], a4=0x1.
  The `jalr` at 0x10061764 calls signal with a0=0x1a, a1=0x1, a2=?, a3=?.
  The `jal` at 0x10061788 calls (unnamed) [0x100614c0] with a0=0x14, a1=0x10061180, a2=?, a3=?.
  The `bne` branch at 0x100615a4 targets 0x100615c8, is taken when a3(=[0x1024aea0]) != a4(=0x1), and falls through when a3(=[0x1024aea0]) == a4(=0x1).
  The `bne` branch at 0x10061614 targets 0x10061638, is taken when a2(=[0x1024aea4]) != a3(=0x1), and falls through when a2(=[0x1024aea4]) == a3(=0x1).
  The `bne` branch at 0x10061684 targets 0x100616a8, is taken when a2(=[0x1024aea8]) != a3(=0x1), and falls through when a2(=[0x1024aea8]) == a3(=0x1).
  The `bne` branch at 0x1006172c targets 0x1006176c, is taken when a3(=[0x1024aea8]) != a4(=0x1), and falls through when a3(=[0x1024aea8]) == a4(=0x1).
  The return at 0x100617b4 has v0 = 0x0.

- `rl_clear_signals` in `usr/gfx/KONA/bin/kpm` at 0x100617c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100617c0-0x100618e0 (288 bytes).
  It occupies 288 bytes.
  6 such `lw` accesses load 4 bytes from abs 0x1014c09c, including `lw` at 0x100617e4, `lw` at 0x1006180c, `lw` at 0x10061834.
  The `lw` at 0x100617e8 loads 4 bytes from abs 0x1024aea0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c0a4, including `lw` at 0x100617f4, `lw` at 0x1006181c.
  The `lw` at 0x10061810 loads 4 bytes from abs 0x1024aea4.
  The `lw` at 0x10061838 loads 4 bytes from abs 0x1024aea8.
  4 such `lw` accesses load 4 bytes from abs 0x1014c168, including `lw` at 0x10061844, `lw` at 0x1006186c, `lw` at 0x10061894.
  The `lw` at 0x10061860 loads 4 bytes from abs 0x1024aeac.
  The `lw` at 0x10061888 loads 4 bytes from abs 0x1024aeb0.
  The `lw` at 0x100618b0 loads 4 bytes from abs 0x1024ae9c.
  The `jal` at 0x100617f8 calls (unnamed) [0x100614c0] with a0=0x2, a1=[0x1024aea0], a2=0xf2500, a3=a3 at entry (arg3).
  The `jal` at 0x10061820 calls (unnamed) [0x100614c0] with a0=0xe, a1=[0x1024aea4], a2=?, a3=?.
  The `jalr` at 0x10061848 calls signal with a0=0x18, a1=[0x1024aea8], a2=?, a3=?.
  The `jalr` at 0x10061870 calls signal with a0=0x1b, a1=[0x1024aeac], a2=?, a3=?.
  The `jalr` at 0x10061898 calls signal with a0=0x1a, a1=[0x1024aeb0], a2=?, a3=?.
  The `jalr` at 0x100618c0 calls signal with a0=0x14, a1=[0x1024ae9c], a2=?, a3=?.
  The return at 0x100618d8 has v0 = 0x0.

- `xmalloc` in `usr/gfx/KONA/bin/kpm` at 0x10061950 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10061950-0x100619cc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x10061978 loads 4 bytes from abs 0x1014c0cc.
  The `lw` at 0x1006199c loads 4 bytes from abs 0x1014c0ac.
  The `lw` at 0x100619a8 loads 4 bytes from abs 0x1014c0b0.
  The `jalr` at 0x1006197c calls malloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100619ac calls (unnamed) [0x10061a90] with a0=0x100936b8, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1006198c targets 0x100619b4, is taken when at(=ret(malloc)) != 0, and falls through when at(=ret(malloc)) == 0.
  The return at 0x100619c4 has v0 = ret(malloc).

- `xrealloc` in `usr/gfx/KONA/bin/kpm` at 0x100619d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100619d0-0x10061a90 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x10061a08 loads 4 bytes from abs 0x1014c0cc.
  The `lw` at 0x10061a34 loads 4 bytes from abs 0x1014c17c.
  The `lw` at 0x10061a5c loads 4 bytes from abs 0x1014c0ac.
  The `lw` at 0x10061a6c loads 4 bytes from abs 0x1014c0b0.
  The `jalr` at 0x10061a0c calls malloc with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10061a38 calls realloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10061a70 calls (unnamed) [0x10061a90] with a0=0x100936c0, a1=?, a2=?, a3=?.
  The `bne` branch at 0x100619f4 targets 0x10061a24, is taken when at(=a0) != 0, and falls through when at(=a0) == 0.
  The `beq` branch at 0x10061a1c targets 0x10061a48 and is always taken.
  The `bne` branch at 0x10061a4c targets 0x10061a78, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The return at 0x10061a88 has v0 = ?.

- `tilde_expand` in `usr/gfx/KONA/bin/kpm` at 0x10061ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x10061ec0-0x100621b0 (752 bytes).
  It occupies 752 bytes.
  The `lw` at 0x10061f08 loads 4 bytes from abs 0x1014c0b4.
  2 such `lw` accesses load 4 bytes from abs 0x1014c6e8, including `lw` at 0x10061f64, `lw` at 0x1006211c.
  2 such `lw` accesses load 4 bytes from abs 0x1014c20c, including `lw` at 0x10061f94, `lw` at 0x10062050.
  The `lw` at 0x10061fcc loads 4 bytes from abs 0x1014c0b8.
  The `lw` at 0x10062028 loads 4 bytes from abs 0x1014c6e4.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10062068, `sb` at 0x10062194.
  The `lw` at 0x10062088 loads 4 bytes from abs 0x1014c6f0.
  2 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x100620a8, `lw` at 0x10062170.
  The `lw` at 0x100620c0 loads 4 bytes from abs 0x1014c158.
  The `lw` at 0x10062148 loads 4 bytes from abs 0x1014c0f8.
  The `jal` at 0x10061f0c calls (unnamed) [0x10061b00] with a0=?, a1=sp-68, a2=?, a3=?.
  The `jal` at 0x10061f68 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=ret(0x10061b00).
  The `jalr` at 0x10061f98 calls strncpy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10061fd0 calls (unnamed) [0x10061cf0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1006202c calls xmalloc [0x10061950] with a0=ret(0x10061cf0)+1, a1=?, a2=?, a3=one of 0x0, 0x1.
  The `jalr` at 0x10062054 calls strncpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jal` at 0x1006208c calls tilde_expand_word [0x100621b0] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100620ac calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100620c4 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10062120 calls xrealloc [0x100619d0] with a0=?, a1=?, a2=?, a3=ret(strlen).
  The `jalr` at 0x1006214c calls strcpy with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062174 calls free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10061ef0 targets 0x10062188 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x10061f34 targets 0x10061f78, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `bne` branch at 0x10061fe4 targets 0x10062008, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x10061ff0 targets 0x10062008, is taken when a1(=ret(0x10061cf0)) != 0, and falls through when a1(=ret(0x10061cf0)) == 0.
  The `beq` branch at 0x10062000 targets 0x1006200c and is always taken.
  The `bne` branch at 0x10062010 targets 0x10062188, is taken when a3(=one of 0x0, 0x1) != 0, and falls through when a3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x100620ec targets 0x10062130, is taken when ra(?) >= at(?) (signed), and falls through when ra(?) < at(?) (signed).
  The `bne` branch at 0x10062180 targets 0x10061ef8 and is always taken.
  The return at 0x100621a8 has v0 = ?.

- `tilde_expand_word` in `usr/gfx/KONA/bin/kpm` at 0x100621b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/KONA/bin/kpm`.
  Range: 0x100621b0-0x10062714 (1380 bytes).
  It occupies 1380 bytes.
  7 such `lw` accesses load 4 bytes from abs 0x1014c158, including `lw` at 0x100621e4, `lw` at 0x1006232c, `lw` at 0x10062354.
  4 such `lw` accesses load 4 bytes from abs 0x1014c6e4, including `lw` at 0x10062200, `lw` at 0x10062390, `lw` at 0x10062584.
  4 such `lw` accesses load 4 bytes from abs 0x1014c0f8, including `lw` at 0x10062220, `lw` at 0x100623c8, `lw` at 0x100625a8.
  5 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1006225c, `lbu` at 0x10062274, `lbu` at 0x10062288.
  The `lw` at 0x100622a0 loads 4 bytes from abs 0x1014c0bc.
  The `lw` at 0x100622ac loads 4 bytes from abs 0x1014c19c.
  The `lw` at 0x100622d4 loads 4 bytes from abs 0x1014c1a8.
  The `lw` at 0x100622f0 loads 4 bytes from abs 0x1014c28c.
  The `lw` at 0x10062314 loads 4 bytes from ret(getpwuid) +0x1c.
  The `sb` at 0x100623a8 stores 1 byte to ret(xmalloc) +0x0.
  3 such `lw` accesses load 4 bytes from abs 0x1014c0ec, including `lw` at 0x100623e8, `lw` at 0x100625cc, `lw` at 0x100626bc.
  4 such `lw` accesses load 4 bytes from abs 0x1014c114, including `lw` at 0x10062400, `lw` at 0x100625e4, `lw` at 0x100625fc.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10062478, `sb` at 0x100624b8.
  The `lw` at 0x100624c8 loads 4 bytes from abs 0x1014c290.
  2 such `lw` accesses load 4 bytes from abs 0x1014c9a4, including `lw` at 0x100624f0, `lw` at 0x1006250c.
  2 such `lw` accesses load 4 bytes from sym(tilde_expansion_failure_hook) +0x0, including `lw` at 0x100624f4, `lw` at 0x10062510.
  The `lw` at 0x1006261c loads 4 bytes from ret(getpwnam) +0x1c.
  The `lw` at 0x1006268c loads 4 bytes from ?.
  The `lw` at 0x100626f0 loads 4 bytes from abs 0x1014c230.
  The `jalr` at 0x100621e8 calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10062204 calls xmalloc [0x10061950] with a0=ret(strlen)+1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062224 calls strcpy with a0=ret(xmalloc), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x100622b0 calls getenv with a0=0x100936f0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100622d8 calls getuid with a0=?, a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x100622f4 calls getpwuid with a0=ret(getuid), a1=?, a2=?, a3=?.
  The `jalr` at 0x10062330 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062358 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10062394 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100623cc calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=ret(xmalloc).
  The `jalr` at 0x100623ec calls strcat with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10062404 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100624cc calls getpwnam with a0=sp-360, a1=?, a2=0x2f, a3=?.
  The `jalr` at 0x10062514 calls (unknown callee) with a0=sp-360, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062540 calls strlen with a0=ret(?), a1=?, a2=?, a3=?.
  The `jalr` at 0x10062564 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10062588 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100625ac calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100625d0 calls strcat with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100625e8 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10062600 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006262c calls strlen with a0=[ret(getpwnam)+28], a1=?, a2=?, a3=?.
  The `jalr` at 0x10062650 calls strlen with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10062674 calls xmalloc [0x10061950] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1006269c calls strcpy with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100626c0 calls strcat with a0=ret(xmalloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x100626d8 calls free with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100626f4 calls endpwent with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100621d0 targets 0x10062240, is taken when at(=a0) == 0, and falls through when at(=a0) != 0.
  The `beq` branch at 0x10062238 targets 0x10062244 and is always taken.
  The `beq` branch at 0x10062250 targets 0x100626fc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x10062264 targets 0x100626fc, is taken when v1(?) != a0(=0x7e), and falls through when v1(?) == a0(=0x7e).
  The `beq` branch at 0x10062278 targets 0x10062298, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x10062290 targets 0x1006241c, is taken when a1(?) != a2(=0x2f), and falls through when a1(?) == a2(=0x2f).
  The `bne` branch at 0x100622c4 targets 0x1006231c, is taken when a1(=ret(getenv)) != 0, and falls through when a1(=ret(getenv)) == 0.
  The `beq` branch at 0x10062308 targets 0x1006231c, is taken when ra(=ret(getpwuid)) == 0, and falls through when ra(=ret(getpwuid)) != 0.
  The `beq` branch at 0x10062340 targets 0x10062374, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1006236c targets 0x10062378 and is always taken.
  The `beq` branch at 0x100623b0 targets 0x100623d4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10062414 targets 0x100626fc and is always taken.
  The `beq` branch at 0x10062444 targets 0x100624a8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x10062454 targets 0x10062464, is taken when a1(?) != a2(=0x2f), and falls through when a1(?) == a2(=0x2f).
  The `beq` branch at 0x1006245c targets 0x100624a8 and is always taken.
  The `bne` branch at 0x100624a0 targets 0x1006244c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x100624e0 targets 0x10062618, is taken when v0(=ret(getpwnam)) != 0, and falls through when v0(=ret(getpwnam)) == 0.
  The `beq` branch at 0x100624f8 targets 0x10062610, is taken when v1(=[sym(tilde_expansion_failure_hook)]) == 0, and falls through when v1(=[sym(tilde_expansion_failure_hook)]) != 0.
  The `beq` branch at 0x10062528 targets 0x10062610, is taken when ra(=ret(?)) == 0, and falls through when ra(=ret(?)) != 0.
  The `beq` branch at 0x10062610 targets 0x100626e8 and is always taken.
  The return at 0x1006270c has v0 = one of ?, ret(xmalloc).
