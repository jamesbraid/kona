# Routine role entries, kona tier-2 batch 1

These entries come from rendered facts for 25 routines: memory accesses, calls, branches and return values at fixed addresses. Names come from the inventory. The facts show what the code does, not what its callers intend, so every label is inferred. Where a fact is missing, the entry says so.

- `jt_set_global_instruction` in `usr/diags/IR/bin/irsaudit` at 0x10166e60
  **Inferred.** Before the loop it copies arg1 with strdup (call at 0x10166e88), canonizes the copy through jt_canonize at 0x1016bdf0 (call at 0x10166ea0) and builds a vector with jt_new_inst_vector at 0x10166eb0. The loop runs over entries counted by the word at +0x8 of its argument (count test at 0x10166edc, back-edge at 0x10167110). It compares against the copy with strcmp at 0x10166f94 and calls jt_unpack_vector at 0x10167004. After the loop it packs the vector with jt_pack_vector at 0x10167138, sends it through jt_send_instruction at 0x10167154, frees the copy at 0x10167164 and disposes of the vector at 0x10167174. The facts do not show what the sent vector tests.
  Reviewed: 2026-11-12 (sonnet)

- `jt_set_individual_instructions` in `usr/diags/IR/bin/irsaudit` at 0x101678f0
  **Inferred.** Builds a vector with jt_new_inst_vector at 0x10167918, copies a name with strcpy at 0x101679bc, canonizes it through jt_canonize at 0x101679cc, and compares it with strcmp at 0x10167a30. A strcmp match branches to 0x10167ad0, where jt_unpack_vector at 0x10167af0 follows. When the scan over the entries ends without a match, it calls jt_error at 0x10167aa8 and jt_dispose_vector at 0x10167ab8. After the loop it packs the vector through jt_pack_vector at 0x10167c24, sends it through jt_send_instruction at 0x10167c40 and disposes of it at 0x10167c50. The return is -1 or 0; the facts do not say which path gives which.
  Reviewed: 2026-11-12 (sonnet)

- `jt_test_thyself` in `usr/diags/IR/bin/irsaudit` at 0x10168640
  **Inferred.** A 60-byte forwarding stub. It loads a word from the absolute address 0x102bc308 and calls through it with its four argument registers passed unchanged, then returns that result. The callee is not resolved, so the facts do not say what the self-test runs.
  Reviewed: 2026-11-12 (sonnet)

- `jt_send_instruction` in `usr/diags/IR/bin/irsaudit` at 0x10168680
  **Inferred.** An 84-byte forwarding stub with the same shape as jt_test_thyself. It loads a word from 0x102bc30c and calls through it with its arguments unchanged, then returns the result. The pointer slot at 0x102bc30c sits next to the slots at 0x102bc308 and 0x102bc310, which suggests a small hook table, but the facts do not show the table itself.
  Reviewed: 2026-11-12 (sonnet)

- `jt_send_data` in `usr/diags/IR/bin/irsaudit` at 0x101686e0
  **Inferred.** An 84-byte forwarding stub with the same shape as jt_send_instruction. It loads a word from 0x102bc310 and calls through it with its arguments unchanged, then returns the result. Its pointer slot is the third of three adjacent slots, and the facts do not show the callee.
  Reviewed: 2026-11-12 (sonnet)

- `jt_print_bsr` in `usr/diags/IR/bin/irsaudit` at 0x1016b250
  **Inferred.** Prints fields of the record at a0 to the stream in a1 with fprintf, one call per line, at 0x1016b298 and after. Word offsets +0x0 through +0x38 are read from the record, and the bits of word +0x8 (masks 0x1, 0x2 and 0x4) choose which lines are printed. A few string fields are compared with strcmp at 0x1016b528, 0x1016b620 and 0x1016b6d0, and the return value is the fprintf result at 0x1016b924. The facts do not show the format strings, so the field labels are not shown.
  Reviewed: 2026-11-12 (sonnet)

- `__start` in `usr/gfx/KONA/bin/kpm` at 0x10009ef0
  **Inferred.** Looks like a C runtime entry. It makes a call at 0x10009f08 to a routine at 0x10009f10 that is part of this entry. It stores at 0x10009f4c (only when the word loaded from entry(0x14225c) is zero), 0x10009f64 and 0x10009f78; the facts do not name those destinations. Four indirect calls at 0x10009f84, 0x10009f98, 0x10009fd8 and 0x10009ff0 are unresolved. The call at 0x10009fd8 takes the words at entry(0x142a9c), entry(0x142a98) and entry(0x14225c) as its first three arguments, so the call that reaches main is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `main` in `usr/gfx/KONA/bin/kpm` at 0x1000a6cc
  **Inferred.** Parses the command line. It compares each argument with strcmp against a string table at 0x10064078 through 0x10064170 and reads values with strtok at 0x1000add8, atoi and strcpy into the options block at sym(opts), at offsets such as +0x0, +0xc8, +0x190, +0x3f0, +0x498 and +0x4a0. It then dispatches on the mode word at +1184 (values 1 through 4): 2 goes to a path that calls init_report at 0x1003206c, kpm_dump at 0x1000d510 and close_report at 0x10032404; 1 calls kpm_interact at 0x1000f538; 3 calls kpm_view at 0x1000e330; 4 calls kpm_status at 0x1000e210. It calls exit with status 0 at 0x1000aa28 and with status 1 at 0x1000af40.
  Reviewed: 2026-11-12 (sonnet)

- `klog` in `usr/gfx/KONA/bin/kpm` at 0x1000f794
  **Inferred.** Writes a message from its format argument a1, using the level in a0 (compared with 3 at 0x1000f8fc). Depending on option words at sym(opts)+0x4a8, +0x4b0 and +0x4b4, it sends the message with vfprintf to the stream in sym(output), with vsyslog at priority 6 at 0x1000f8b8, and with vfprintf to sym(summary) at 0x1000f8d8, and it sets sym(summary_error) at 0x1000f8f4 on one path. The exact option meanings are not shown beyond these offsets.
  Reviewed: 2026-11-12 (sonnet)

- `dump_indata_as_bits` in `usr/gfx/KONA/bin/kpm` at 0x10010044
  **Inferred.** Role (from name): dumps the input data as bits. The loop is skipped when a1 <= 0 (the test is at 0x10010054). It tests bits of a0 with a mask in a6 (branch at 0x10010090), loads a word at 0x10010064 and 0x100100a8, stores bytes with sb at 0x1001007c and 0x100100c4, and returns 0x1014e9b0 (table(0x1014e9b0)) at 0x100100c0. The facts do not resolve the output buffer, because the store at 0x1001007c goes to an address the renderer could not name, and they do not show the byte values stored.
  Reviewed: 2026-11-12 (sonnet)

- `dump_outdata_as_bits` in `usr/gfx/KONA/bin/kpm` at 0x100100c8
  **Inferred.** Role (from name): the output-side sibling of dump_indata_as_bits. The loop is skipped when a1 <= 0 (the test is at 0x100100d8). It tests bits of a0 with a mask in a7 (branch at 0x10010120), stores bytes with sb at 0x1001010c and 0x10010154, and returns 0x1014e9d8 (table(0x1014e9d8)) at 0x10010150, which suggests a buffer there that the stores fill. The store at 0x1001010c goes to an address the renderer could not name, and the facts do not show the byte values stored.
  Reviewed: 2026-11-12 (sonnet)

- `__start` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005f6a0
  **Inferred.** Has the same shape as the kpm entry. It calls a routine at 0x1005f6c0 through a bal at 0x1005f6b8, stores at 0x1005f6fc (only when the word loaded from entry(0x266100) is zero), 0x1005f714 and 0x1005f728, and the facts do not name those destinations. The indirect calls at 0x1005f734, 0x1005f748, 0x1005f788 and 0x1005f7a0 do not resolve. The call at 0x1005f788 takes the words at entry(0x266670), entry(0x26666c) and entry(0x266100) as its first three arguments, so the path to main at 0x10218270 is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `ErrorF` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10094ec0
  **Inferred.** An 88-byte forwarder. It calls VLogError..CK at 0x101523c0 with the constant 3 in a0 and its own first argument in a1. It passes a pointer into its own stack frame (sp-56) in a2 and its third argument unchanged in a3, and returns that routine's result. The name suggests an error logger, which the call target supports, but the facts do not show what the logger does.
  Reviewed: 2026-11-12 (sonnet)

- `t1_CopyRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c0a10
  **Inferred.** Allocates a 0x50-byte object with t1_Allocate at 0x1011d0f0 and stores a zero word at +0x1c of it. When the source object's word at +0x20 is nonzero, it duplicates that sub-object with t1_Dup at 0x101565b0 and stores the result at +0x20 of the new object. On a path that depends on the source's word at +0x1c and two halfwords read from it, it allocates a second, 0x18-byte record with t1_Allocate at 0x100c0b70 and fills that record: a byte at +0x1 (only when a tested value is nonzero), a word at +0x14 and halfwords at +0xc, +0xe, +0x10 and +0x12. A failure path calls FatalError at 0x100c0cbc, and the return value is ret(t1_Allocate). The "t1_" prefix suggests a Type 1 font object, which the facts do not confirm.
  Reviewed: 2026-11-12 (sonnet)

- `t1_KillRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d6350
  **Inferred.** Works on the object at a0. It stores a halfword at +0x2 and, on one path, a byte at +0x0, and calls xiFree at 0x100d63c0 inside a loop. One path ends in a tail call to xiFree at 0x100d63f0 with a0 itself. It calls FatalError at 0x100d6420, 0x100d643c and 0x100d6458; the facts do not say which conditions lead to those calls. The facts do not show the exact value written to the flag fields.
  Reviewed: 2026-11-12 (sonnet)

- `Type1RegisterFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1012c080
  **Inferred.** Role (from name): registers font-file functions. The facts show it calling Type1InitStdProps at 0x1012c094, comparing a name with strcmp at 0x1012c0e4, and growing an array through Xrealloc at 0x1012c11c, using the count at 0x102c7318 and the base pointer at 0x102c731c (a strcmp match skips the growth). It then stores at 0x1012c138 and 0x1012c140; the facts do not name the destinations. The function returns a value that the facts leave unresolved.
  Reviewed: 2026-11-12 (sonnet)

- `CIDRegisterFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10162530
  **Inferred.** Role (from name): the CID counterpart of Type1RegisterFontFileFunctions. The facts show it calling Type1InitStdProps at 0x10162540, comparing a name with strcmp at 0x10162570 against the word at 0x102cd308, and growing an array through Xrealloc at 0x101625ac with the same count and base globals as the Type1 routine. It returns the Xrealloc result or the strcmp result, depending on the path.
  Reviewed: 2026-11-12 (sonnet)

- `yylook` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101e8720
  **Inferred.** A 1596-byte routine. Role (from name): the lookup routine of a lex-generated scanner. It reads a table at 0x102ce840 indexed by a value from entry(0x10295b10). At four sites (0x101e8938, 0x101e8a9c, 0x101e8c34 and 0x101e8c94) it calls fprintf on the stream at sym(__iob)+16, passing 0x10295c38 as the second argument and 0x800 as the third, and each is followed by exit with status 1 (at 0x101e8944, 0x101e8aa8, 0x101e8c40 and 0x101e8ca0). The facts do not resolve the table contents, so the token mapping is not shown.
  Reviewed: 2026-11-12 (sonnet)

- `main` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10218270
  **Inferred.** The X server's startup and main loop. It processes the command line with ProcessCommandLine at 0x102182f0, initializes the server with OsInit, InitClientResources, InitAtoms, InitEvents, InitOutput, InitExtensions, InitInput, InitAndStartDevices and InitFonts, creates the root window and cursor, and enters Dispatch. Dispatch has two call sites, at 0x10219084 and 0x102190a4, each preceded by a CreateConnectionBlock call; the facts do not explain the second. After Dispatch it calls CloseDownExtensions, FreeClientResources and CloseDevice, and errors go through FatalError at 0x10094f20.
  Reviewed: 2026-11-12 (sonnet)

- `yylex` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10220b80
  **Inferred.** A 2028-byte routine. Role (from name): the front end of a lex-generated scanner. It calls yylook at 0x10220ba8 with its four arguments, and it returns 0 or one of the codes 0x101 through 0x111 except 0x10a (specific returns include 0x105, 0x106 and 0x10c). It calls atoi (0x10221170, 0x102212b8) and sscanf (0x102212a4) on the buffer at 0x102c9188. It calls fprintf on the stream at sym(__iob)+16 at 0x10220c48 and at four sites passing 0x10295c38, each followed by exit with status 1 (at 0x10220e04, 0x10220f68, 0x10221124 and 0x102212e4). The facts do not show which token each code represents.
  Reviewed: 2026-11-12 (sonnet)

- `_stub` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec31000
  **Inferred.** A long run of forwarding thunks. Each call site calls the target at 0xfb602ac, and the first call passes its four argument registers on unchanged. The sampled call sites are 0x14 bytes apart. The facts show the thunks but not the name of their target, so the stub's purpose is not established.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_pushattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32cc0
  **Inferred.** A GL push-attributes entry, going by its name. It tests the word at 0xecdd8e8. When it is nonzero it calls gl_compile at 0xecb5010 with 2 as its first argument. When it is zero the branch at 0xec32cd8 goes to a call to gl_intrptab_insert at 0xec5f9f0 with 0xecd67b8 as its first argument; the facts show a single return, v0 = ret(gl_compile), so they do not show that path as an alternative to the compile call. The facts do not show what the compile path records.
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_pushattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32d30
  **Inferred.** The push-attributes entry. The name says it does not compile, and the facts do not show that. If the flag word at 0xece8bf0 (gl_inMoveDraw) is nonzero, it calls __iglooNCloseMoveDraw at 0xec92d80 first. It then calls _pushattributes at 0xec32e60, and returns a0. The facts show the move-draw check and the two calls, but not the arguments to _pushattributes or what it stores.
  Reviewed: 2026-11-12 (sonnet)

- `gl_g_popattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32d90
  **Inferred.** The pop counterpart of gl_g_pushattributes. It tests the word at 0xecdd8ec. When it is nonzero it calls gl_compile at 0xecb5010 with 2 as its first argument. When it is zero the branch goes to a call to gl_intrptab_insert at 0xec5f9f0 with 0xecd67c8 as its first argument. The facts show a single return, v0 = ret(gl_compile).
  Reviewed: 2026-11-12 (sonnet)

- `gl_n_popattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32e00
  **Inferred.** The pop-attributes entry, mirroring gl_n_pushattributes. It checks the move-draw flag at 0xece8bf0 and calls __iglooNCloseMoveDraw at 0xec92d80 when the flag is set, then calls _popattributes at 0xec33010 and returns a0. The facts do not show what _popattributes restores.
  Reviewed: 2026-11-12 (sonnet)
