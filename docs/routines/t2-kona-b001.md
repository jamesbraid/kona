# Routine role entries, kona tier-2 batch 1

These entries come from rendered facts for 25 routines: memory accesses, calls, branches and return values at fixed addresses. Names come from the inventory. The facts show what the code does, not what its callers intend, so every label is inferred. Where a fact is missing, the entry says so.

- `jt_set_global_instruction` in `usr/diags/IR/bin/irsaudit` at 0x10166e60
  **Inferred.** Walks a list of instruction entries, counted by the word at +0x8 of its argument (the count test is at 0x10166edc and the loop closes at 0x10167110). For each one it copies the name from arg1 with strdup, canonizes it through jt_canonize at 0x1016bdf0, and compares it with strcmp at 0x10166f94. It then builds a vector with jt_new_inst_vector, packs it with jt_pack_vector at 0x10167138, sends it through jt_send_instruction at 0x10167154, and disposes of it at 0x10167174. The facts do not show what the sent vector tests.

- `jt_set_individual_instructions` in `usr/diags/IR/bin/irsaudit` at 0x101678f0
  **Inferred.** Builds a vector with jt_new_inst_vector at 0x10167918, copies a name with strcpy at 0x101679bc, canonizes it through jt_canonize at 0x101679cc, and compares it with strcmp at 0x10167a30. A comparison that fails goes to jt_error at 0x10167aa8. A name that passes is packed and sent through jt_pack_vector at 0x10167c24 and jt_send_instruction at 0x10167c40, and the return is 0 or -1.

- `jt_test_thyself` in `usr/diags/IR/bin/irsaudit` at 0x10168640
  **Inferred.** A 60-byte forwarding stub. It loads a word from the absolute address 0x102bc308 and calls through it with its four argument registers passed unchanged, then returns that result. The callee is not resolved, so the facts do not say what the self-test runs.

- `jt_send_instruction` in `usr/diags/IR/bin/irsaudit` at 0x10168680
  **Inferred.** An 84-byte forwarding stub with the same shape as jt_test_thyself. It loads a word from 0x102bc30c and calls through it with its arguments unchanged, then returns the result. The pointer slot at 0x102bc30c sits next to the slots at 0x102bc308 and 0x102bc310, which suggests a small hook table, but the facts do not show the table itself.

- `jt_send_data` in `usr/diags/IR/bin/irsaudit` at 0x101686e0
  **Inferred.** An 84-byte forwarding stub with the same shape as jt_send_instruction. It loads a word from 0x102bc310 and calls through it with its arguments unchanged, then returns the result. Its pointer slot is the third of three adjacent slots, and the facts do not show the callee.

- `jt_print_bsr` in `usr/diags/IR/bin/irsaudit` at 0x1016b250
  **Inferred.** Prints the fields of the record at a0 to the stream in a1 with fprintf, one labelled line per field, at 0x1016b298 and after. Word offsets +0x0 through +0x38 are read from the record, and the bits of word +0x8 (masks 0x1, 0x2 and 0x4) choose which lines are printed. A few string fields are compared with strcmp at 0x1016b528, 0x1016b620 and 0x1016b6d0, and the return value is the fprintf result at 0x1016b924.

- `__start` in `usr/gfx/KONA/bin/kpm` at 0x10009ef0
  **Inferred.** Looks like a C runtime entry. It stores to the words at 0x14225c, 0x142a9c and 0x142a98, loads from 0x1427e4, 0x142264, 0x14238c and 0x142254, and makes a call at 0x10009f08 to a routine at 0x10009f10 that is part of this entry. Three indirect calls at 0x10009f84, 0x10009f98 and 0x10009fd8 are unresolved, so the call that reaches main is not shown.

- `main` in `usr/gfx/KONA/bin/kpm` at 0x1000a6cc
  **Inferred.** Parses the command line. It compares each argument with strcmp against a string table at 0x10064078 through 0x100640f0 and reads values with strtok at 0x1000add8, atoi and strcpy into the options block at sym(opts), at offsets such as +0x0, +0xc8, +0x190, +0x3f0, +0x498 and +0x4a0. It then dispatches on the mode word at +1184 (values 1 through 4) to init_report at 0x1003206c, kpm_dump at 0x1000d510, kpm_interact at 0x1000f538 or kpm_view at 0x1000e330, and closes with close_report at 0x10032404. It exits with status 0 at 0x1000aa28 or status 1 at 0x1000af40.

- `klog` in `usr/gfx/KONA/bin/kpm` at 0x1000f794
  **Inferred.** Writes a message from its format argument a1, using the level in a0 (compared with 3 at 0x1000f8fc). Depending on option words at sym(opts)+0x4a8, +0x4b0 and +0x4b4, it sends the message with vfprintf to the stream in sym(output), with vsyslog at priority 6 at 0x1000f8b8, and with vfprintf to sym(summary) at 0x1000f8d8, and it sets sym(summary_error) at 0x1000f8f4 on one path. The exact option meanings are not shown beyond these offsets.

- `dump_indata_as_bits` in `usr/gfx/KONA/bin/kpm` at 0x10010044
  **Inferred.** Renders a value as a string of bits, one byte per bit, using a loop that runs while a1 is positive (the test is at 0x10010054). It reads a word from the absolute address 0x1014be00 at 0x10010064 and 0x100100a8, tests bits with a mask in a6, and stores a byte to table(0x1014e9b0) at 0x100100c4. The facts do not fully resolve the output buffer, because one store at 0x1001007c goes to an address the renderer could not name.

- `dump_outdata_as_bits` in `usr/gfx/KONA/bin/kpm` at 0x100100c8
  **Inferred.** The output-side sibling of dump_indata_as_bits. It runs a loop while a1 is positive (the test is at 0x100100d8) and tests bits of a0 with a mask in a7, storing bytes with sb at 0x1001010c and 0x10010154. The byte at 0x10010154 goes to table(0x1014e9d8), and the routine returns that address at 0x10010150, so it fills a buffer there and returns it. One store at 0x1001010c goes to an address the renderer could not name.

- `__start` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1005f6a0
  **Inferred.** Has the same shape as the kpm entry: it stores to the words at entry(0x266100), entry(0x266670) and entry(0x26666c), loads from table(0x26607c), table(0x266258), table(0x266054) and table(0x266104), and calls a routine at 0x1005f6c0 through a bal at 0x1005f6b8. The indirect calls at 0x1005f734, 0x1005f748, 0x1005f788 and 0x1005f7a0 do not resolve, so the path to main at 0x10218270 is not shown.

- `ErrorF` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10094ec0
  **Inferred.** An 88-byte forwarder. It calls VLogError..CK at 0x101523c0 with a severity constant of 3 in a0 and its own arguments in the remaining registers, and returns that routine's result. The name suggests an error logger, which the call target supports, but the facts do not show what the logger does.

- `t1_CopyRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100c0a10
  **Inferred.** Creates a copy of a 0x50-byte object with t1_Allocate at 0x1011d0f0, duplicates a sub-object at +0x20 with t1_Dup at 0x101565b0, and allocates an 0x18-byte record with a second t1_Allocate at 0x100c0b70. It fills the new object's fields, with a word at +0x20, a byte at +0x1 and halfwords at +0xc, +0xe, +0x10 and +0x12. A failure path calls FatalError at 0x100c0cbc, and the return value is the new object's address. The "t1_" prefix suggests a Type 1 font object, which the facts do not confirm.

- `t1_KillRegion` in `usr/gfx/arch/GENERIC/Xsgi` at 0x100d6350
  **Inferred.** Tears down the object at a0. It writes a byte at +0x0 and a halfword at +0x2, releases part of it with xiFree at 0x100d63c0, and calls FatalError at 0x100d6420, 0x100d643c and 0x100d6458 on the invalid-state paths. The facts do not show the exact value written to the flag fields.

- `Type1RegisterFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x1012c080
  **Inferred.** Registers a set of font-file functions in a growable table. It calls Type1InitStdProps at 0x1012c094, compares a name with strcmp at 0x1012c0e4, and grows the array through Xrealloc at 0x1012c11c, using the count at 0x102c7318 and the base pointer at 0x102c731c, then stores the new entry at the end. The function returns a value that the facts leave unresolved.

- `CIDRegisterFontFileFunctions` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10162530
  **Inferred.** The CID counterpart of Type1RegisterFontFileFunctions. It calls Type1InitStdProps at 0x10162540, compares a name with strcmp at 0x10162570 against the word at 0x102cd308, and appends to the same growable table through Xrealloc at 0x101625ac, using the same count and base globals. It returns the Xrealloc result or the strcmp result, depending on the path.

- `yylook` in `usr/gfx/arch/GENERIC/Xsgi` at 0x101e8720
  **Inferred.** A 1596-byte table-driven routine of the kind a lex-generated scanner uses to look up a token. It reads a table at 0x102ce840 indexed by a value from entry(0x10295b10). On its error paths it prints a diagnostic with fprintf to stderr (sym(__iob)+16) using a 0x800-byte buffer at 0x10295c38, then calls exit with status 1 at 0x101e8944. The facts do not resolve the table contents, so the token mapping is not shown.

- `main` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10218270
  **Inferred.** The X server's startup and main loop. It processes the command line with ProcessCommandLine at 0x102182f0, initializes the server with OsInit, InitClientResources, InitAtoms, InitEvents, InitOutput, InitExtensions, InitInput, InitAndStartDevices and InitFonts, creates the root window and cursor, and enters Dispatch at 0x10219084 and 0x102190a4. On shutdown it calls CloseDownExtensions, FreeClientResources and CloseDevice, and errors go through FatalError at 0x10094f20. Dispatch is called twice, and the facts do not explain the second call.

- `yylex` in `usr/gfx/arch/GENERIC/Xsgi` at 0x10220b80
  **Inferred.** The front end of a lex-generated scanner. It calls yylook at 0x10220ba8 with its four arguments, and it returns 0 or a token code from 0x101 through 0x111 (specific returns include 0x105, 0x106 and 0x10c). It converts the matched text with atoi and sscanf on the buffer at 0x102c9188, and on errors it prints with fprintf to stderr and calls exit with status 1 at 0x10220e04. The facts do not show which token each code represents.

- `_stub` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec31000
  **Inferred.** A long run of forwarding thunks. Each call site loads the function pointer at 0xfb602ac and calls through it with its arguments passed through unchanged, and the sampled sites are 0x14 bytes apart. The facts show the thunks but not the names of their targets, so the stub's purpose is not established.

- `gl_g_pushattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32cc0
  **Inferred.** A GL push-attributes entry, going by its name. It checks the word at 0xecdd8e8: when that word is nonzero it calls gl_compile at 0xecb5010 with the opcode 2, and otherwise it calls gl_intrptab_insert at 0xec5f9f0 with 0xecd67b8 as its first argument. The facts do not show what the compile path records, and the return value is the result of gl_compile.

- `gl_n_pushattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32d30
  **Inferred.** The push-attributes entry. The name says it does not compile, and the facts do not show that. If the flag word at 0xece8bf0 (gl_inMoveDraw) is nonzero, it calls __iglooNCloseMoveDraw at 0xec92d80 first, then calls _pushattributes at 0xec32e60 with its arguments, and returns a0. The facts show the move-draw check and the two calls, but not what _pushattributes stores.

- `gl_g_popattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32d90
  **Inferred.** The pop counterpart of gl_g_pushattributes. It checks the word at 0xecdd8ec: a nonzero value calls gl_compile at 0xecb5010 with the opcode 2, and a zero value calls gl_intrptab_insert at 0xec5f9f0 with 0xecd67c8 as its first argument. The return value is the gl_compile result.

- `gl_n_popattributes` in `usr/gfx/arch/IGLOO32/libgl.so` at 0xec32e00
  **Inferred.** The pop-attributes entry, mirroring gl_n_pushattributes. It checks the move-draw flag at 0xece8bf0 and calls __iglooNCloseMoveDraw at 0xec92d80 when the flag is set, then calls _popattributes at 0xec33010 and returns a0. The facts do not show what _popattributes restores.
