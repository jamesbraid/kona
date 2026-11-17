# Readings: `usr/gfx/setmon`

One entry per routine, filed here from the reading batches by binary.

- `Usage` in `usr/gfx/setmon` at 0x10008e38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10008e38-0x10008e78 (64 bytes).
  It occupies 64 bytes.
  The `jalr` at 0x10008e64 calls fprintf with a0=sym(__iob)+32, a1=0x10038008, a2=0x10038018, a3=a3 at entry (arg3).
  The `jalr` at 0x10008e70 calls exit with a0=0x1, a1=?, a2=?, a3=?.

- `getvofpath` in `usr/gfx/setmon` at 0x10009f04 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10009f04-0x1000a038 (308 bytes).
  It occupies 308 bytes.
  The `sb` at 0x10009f54 stores 1 byte to abs 0x10042800.
  The `lw` at 0x10009fa4 loads 4 bytes from sym(verboseFlag) +0x0.
  The `jalr` at 0x10009f58 calls strcat with a0=0x10042800, a1=0x10038538, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10009f70 calls strcat with a0=0x10042800, a1=0x10041e88, a2=?, a3=?.
  The `jalr` at 0x10009f88 calls strcat with a0=0x10042800, a1=a2 at entry (arg2), a2=?, a3=?.
  The `jalr` at 0x10009f98 calls strcat with a0=0x10042800, a1=0x10041e90, a2=?, a3=?.
  The `jalr` at 0x10009fc0 calls fprintf with a0=sym(__iob)+32, a1=0x10038548, a2=0x10042800, a3=?.
  The `jalr` at 0x10009ff4 calls strcat with a0=0x10042800, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1000a004 calls strcat with a0=0x10042800, a1=0x10041e82, a2=?, a3=?.
  The `jalr` at 0x1000a018 calls strcat with a0=0x10042800, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1000a028 calls strcat with a0=0x10042800, a1=0x10041e82, a2=?, a3=?.
  The `bne` branch at 0x10009f60 targets 0x10009ff0, is taken when s3(=a0) != 0, and falls through when s3(=a0) == 0.
  The `bne` branch at 0x10009f78 targets 0x1000a014, is taken when s2(=a1) != 0, and falls through when s2(=a1) == 0.
  The `beq` branch at 0x10009fa8 targets 0x10009fc8, is taken when t9(=[sym(verboseFlag)]) == 0, and falls through when t9(=[sym(verboseFlag)]) != 0.
  The `beq` branch at 0x1000a00c targets 0x10009f6c and is always taken.
  The `beq` branch at 0x1000a030 targets 0x10009f84 and is always taken.
  The return at 0x10009fe8 has v0 = 0x10042800.

- `vTimeoutOpenDisplay` in `usr/gfx/setmon` at 0x1000a038 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000a038-0x1000a070 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x1000a058 calls longjmp with a0=sym(tTimeoutReturn), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000a068 has v0 = ret(longjmp).

- `timeoutXOpenDisplay` in `usr/gfx/setmon` at 0x1000a070 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000a070-0x1000a140 (208 bytes).
  It occupies 208 bytes.
  The `jalr` at 0x1000a0b0 calls setitimer with a0=0x0, a1=sp-64, a2=sp-48, a3=a3 at entry (arg3).
  The `jalr` at 0x1000a0c4 calls signal with a0=0xe, a1=sym(vTimeoutOpenDisplay), a2=?, a3=?.
  The `jalr` at 0x1000a0d4 calls setjmp with a0=sym(tTimeoutReturn), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a0f0 calls signal with a0=0xe, a1=ret(signal), a2=?, a3=?.
  The `jalr` at 0x1000a110 calls setitimer with a0=0x0, a1=sp-64, a2=sp-48, a3=?.
  The `jalr` at 0x1000a130 calls XOpenDisplay with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000a0dc targets 0x1000a130, is taken when v0(=ret(setjmp)) == 0, and falls through when v0(=ret(setjmp)) != 0.
  The `beq` branch at 0x1000a138 targets 0x1000a0e8 and is always taken.
  The return at 0x1000a128 has v0 = ?.

- `fglrxDoFramelock` in `usr/gfx/setmon` at 0x1000a278 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000a278-0x1000a390 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0x1000a2f4 loads 4 bytes from sym(verboseFlag) +0x0.
  The `jalr` at 0x1000a2a8 calls strstr with a0=a0 at entry (arg0), a1=0x10042020, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000a2cc calls fprintf with a0=sym(__iob)+32, a1=0x10038770, a2=?, a3=?.
  The `jalr` at 0x1000a2d8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a2e8 calls (unknown callee) with a0=sp-320, a1=0x104, a2=?, a3=?.
  The `jalr` at 0x1000a30c calls printf with a0=0x10038798, a1=sp-316, a2=?, a3=?.
  The `jalr` at 0x1000a328 calls strncpy with a0=sp-316, a1=?, a2=0xfe, a3=0x1.
  The `jalr` at 0x1000a348 calls XSGIvcSetPlatformParameter with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=0x0, a3=0x1, a4=sp-320, a5=0x104.
  The `jalr` at 0x1000a37c calls fprintf with a0=sym(__iob)+32, a1=0x10038740, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000a388 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000a29c targets 0x1000a36c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1000a2b0 targets 0x1000a2e0, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0x1000a2f8 targets 0x1000a314, is taken when a1(=[sym(verboseFlag)]) == 0, and falls through when a1(=[sym(verboseFlag)]) != 0.
  The return at 0x1000a364 has v0 = 0x0.

- `fglrxsetmon` in `usr/gfx/setmon` at 0x1000a390 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000a390-0x1000a9c4 (1588 bytes).
  It occupies 1588 bytes.
  2 such `lw` accesses load 4 bytes from sym(genlockFlag) +0x0, including `lw` at 0x1000a3c0, `lw` at 0x1000a5d8.
  2 such `lw` accesses load 4 bytes from sym(splitterFlag) +0x0, including `lw` at 0x1000a3f8, `lw` at 0x1000a66c.
  2 such `lw` accesses load 4 bytes from sym(pipenum) +0x0, including `lw` at 0x1000a424, `lw` at 0x1000a5b0.
  The `lw` at 0x1000a444 loads 4 bytes from sym(errno) +0x0.
  The `lw` at 0x1000a5d0 loads 4 bytes from ret(timeoutXOpenDisplay) +0x84.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000a610, `lw` at 0x1000a910.
  The `jalr` at 0x1000a420 calls snprintf with a0=sp-1600, a1=0x100, a2=?, a3=[sym(pipenum)].
  The `jalr` at 0x1000a430 calls stat with a0=sp-1600, a1=sp-1344, a2=?, a3=?.
  The `jalr` at 0x1000a464 calls snprintf with a0=sp-1192, a1=0x100, a2=0x10038828, a3=sp-1600, a4=-0x1, a5=[sym(errno)], a6=0x2.
  The `jalr` at 0x1000a470 calls perror with a0=sp-1192, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a47c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a490 calls fopen with a0=sp-1600, a1=0x10042024, a2=?, a3=?.
  The `jalr` at 0x1000a4ac calls fgets with a0=sp-936, a1=0x100, a2=ret(fopen), a3=?.
  The `jalr` at 0x1000a4c8 calls fgets with a0=sp-936, a1=0x100, a2=ret(fopen), a3=?.
  The `jalr` at 0x1000a4e0 calls fclose with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a514 calls atoi with a0=sp-936, a1=?, a2=?, a3=?, a4=0x3000.
  The `jalr` at 0x1000a528 calls fopen with a0=sp-1600, a1=0x10042028, a2=?, a3=?.
  The `jalr` at 0x1000a54c calls snprintf with a0=sp-1192, a1=0x100, a2=0x10038878, a3=sp-1600.
  The `jalr` at 0x1000a558 calls perror with a0=sp-1192, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a574 calls (unknown callee) with a0=ret(fopen), a1=0x1004202c, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000a588 calls (unknown callee) with a0=ret(fopen), a1=0x10042030, a2=ret(atoi), a3=?.
  The `jalr` at 0x1000a594 calls fclose with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jal` at 0x1000a5ac calls pipenumToString [0x1000bdb4] with a0=[sym(pipenum)], a1=sp-1600, a2=?, a3=?.
  The `jal` at 0x1000a5bc calls timeoutXOpenDisplay [0x1000a070] with a0=sp-1600, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a5f0 calls (unknown callee) with a0=?, a1=0x100387b8, a2=?, a3=?.
  The `jalr` at 0x1000a5fc calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1000a60c calls (unnamed) [0x1000be44] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a628 calls (unknown callee) with a0=?, a1=0x10038898, a2=?, a3=?.
  The `jalr` at 0x1000a634 calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a660 calls XSGIvcSetPlatformParameter with a0=?, a1=?, a2=0x0, a3=0x1, a4=sp-680, a5=0x104.
  The `jalr` at 0x1000a684 calls XSGIvcLoadVideoFormatCombination with a0=?, a1=?, a2=a0 at entry (arg0), a3=?, a7=[sym(splitterFlag)].
  The `jalr` at 0x1000a6c4 calls clearerr with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a6e4 calls fprintf with a0=sym(__iob)+32, a1=0x100387b8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000a6f0 calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a714 calls snprintf with a0=sp-1192, a1=0x100, a2=0x10038850, a3=sp-1600.
  The `jalr` at 0x1000a720 calls perror with a0=sp-1192, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a72c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1000a73c calls fglrxDoFramelock [0x1000a278] with a0=a4 at entry (arg4), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a750 calls perror with a0=0x10038908, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a75c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a764 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a784 calls XSGIvcLoadVideoFormatByName with a0=?, a1=?, a2=0x0, a3=a0 at entry (arg0), a7=[sym(splitterFlag)].
  The `jalr` at 0x1000a798 calls bzero with a0=sp-408, a1=0x138, a2=?, a3=?.
  The `jalr` at 0x1000a7c0 calls XSGIvcListVideoFormats with a0=?, a1=?, a2=0x0, a3=sp-408, a4=0x0, a5=0x0, a6=0x63, a7=sp-96.
  The `jalr` at 0x1000a7ec calls strcmp with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1000a820 calls (unknown callee) with a0=?, a1=0x100389d8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000a834 calls (unknown callee) with a0=?, a1=0x10038a08, a2=?, a3=?.
  The `jalr` at 0x1000a858 calls (unknown callee) with a0=?, a1=0x10042038, a2=?, a3=?.
  The `jalr` at 0x1000a880 calls (unknown callee) with a0=?, a1=0x10038a20, a2=?, a3=?.
  The `jalr` at 0x1000a88c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a8a4 calls (unknown callee) with a0=?, a1=0x10038920, a2=?, a3=?.
  The `jalr` at 0x1000a8c0 calls XSGIvcListVideoFormatCombinations with a0=?, a1=?, a2=?, a3=0x3e8, a4=sp-416.
  The `jalr` at 0x1000a8e4 calls (unknown callee) with a0=?, a1=0x10038978, a2=?, a3=?.
  The `jalr` at 0x1000a90c calls (unknown callee) with a0=?, a1=0x10042038, a2=?, a3=?.
  The `jalr` at 0x1000a92c calls XFree with a0=ret(XSGIvcListVideoFormatCombinations), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a938 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a950 calls (unknown callee) with a0=?, a1=0x10038948, a2=?, a3=?.
  The `jalr` at 0x1000a95c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a974 calls XSGIvcLoadVideoFormatByName with a0=?, a1=?, a2=0x0, a3=?.
  The `jalr` at 0x1000a990 calls (unknown callee) with a0=?, a1=0x10038af8, a2=?, a3=?.
  The `jalr` at 0x1000a99c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000a9b0 calls (unknown callee) with a0=?, a1=0x100389b0, a2=?, a3=?.
  The `jalr` at 0x1000a9bc calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000a3d8 targets 0x1000a3e4, is taken when at(=[sym(genlockFlag)]) == 0, and falls through when at(=[sym(genlockFlag)]) != 0.
  The `bne` branch at 0x1000a3e0 targets 0x1000a6d4, is taken when a4 != 0, and falls through when a4 == 0.
  The `beq` branch at 0x1000a3ec targets 0x1000a59c, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x1000a3fc targets 0x1000a6f8, is taken when v1(=[sym(splitterFlag)]) == 0, and falls through when v1(=[sym(splitterFlag)]) != 0.
  The `bne` branch at 0x1000a43c targets 0x1000a484, is taken when v0(=ret(stat)) != a4(=-0x1), and falls through when v0(=ret(stat)) == a4(=-0x1).
  The `beq` branch at 0x1000a44c targets 0x1000a504, is taken when a5(=[sym(errno)]) == a6(=0x2), and falls through when a5(=[sym(errno)]) != a6(=0x2).
  The `beq` branch at 0x1000a498 targets 0x1000a700, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x1000a4b4 targets 0x1000a6c4, is taken when v0(=ret(fgets)) == 0, and falls through when v0(=ret(fgets)) != 0.
  The `beq` branch at 0x1000a4d0 targets 0x1000a764, is taken when v0(=ret(fgets)) == 0, and falls through when v0(=ret(fgets)) != 0.
  The `beq` branch at 0x1000a4e8 targets 0x1000a508, is taken when s4(=one of 0x0, 0x1, 0x2) == 0, and falls through when s4(=one of 0x0, 0x1, 0x2) != 0.
  The `beq` branch at 0x1000a4f4 targets 0x1000a50c, is taken when s4(=one of 0x0, 0x1, 0x2) == a3(=0x1), and falls through when s4(=one of 0x0, 0x1, 0x2) != a3(=0x1).
  The `beq` branch at 0x1000a4fc targets 0x1000a514 and is always taken.
  The `bne` branch at 0x1000a530 targets 0x1000a568, is taken when v0(=ret(fopen)) != 0, and falls through when v0(=ret(fopen)) == 0.
  The `beq` branch at 0x1000a560 targets 0x1000a59c and is always taken.
  The `beq` branch at 0x1000a59c targets 0x1000a694, is taken when s6(=a2) == 0, and falls through when s6(=a2) != 0.
  The `beq` branch at 0x1000a5b4 targets 0x1000a604, is taken when v0(=ret(pipenumToString)) == 0, and falls through when v0(=ret(pipenumToString)) != 0.
  The `beq` branch at 0x1000a5c4 targets 0x1000a604, is taken when v0(=ret(timeoutXOpenDisplay)) == 0, and falls through when v0(=ret(timeoutXOpenDisplay)) != 0.
  The `beq` branch at 0x1000a5d4 targets 0x1000a63c, is taken when s3(=a4) == 0, and falls through when s3(=a4) != 0.
  The `beq` branch at 0x1000a5dc targets 0x1000a734, is taken when v0(=[sym(genlockFlag)]) == 0, and falls through when v0(=[sym(genlockFlag)]) != 0.
  The `beq` branch at 0x1000a614 targets 0x1000a74c, is taken when v0(=ret(0x1000be44)) == 0, and falls through when v0(=ret(0x1000be44)) != 0.
  The `beq` branch at 0x1000a670 targets 0x1000a774, is taken when a7(=[sym(splitterFlag)]) == 0, and falls through when a7(=[sym(splitterFlag)]) != 0.
  The `beq` branch at 0x1000a68c targets 0x1000a894, is taken when v0(=ret(XSGIvcLoadVideoFormatCombination)) == 0, and falls through when v0(=ret(XSGIvcLoadVideoFormatCombination)) != 0.
  The `beq` branch at 0x1000a6cc targets 0x1000a4dc and is always taken.
  The `beq` branch at 0x1000a6f8 targets 0x1000a40c and is always taken.
  The `beq` branch at 0x1000a744 targets 0x1000a668 and is always taken.
  The `beq` branch at 0x1000a76c targets 0x1000a4dc and is always taken.
  The `bne` branch at 0x1000a78c targets 0x1000a694, is taken when v0(=ret(XSGIvcLoadVideoFormatByName)) != 0, and falls through when v0(=ret(XSGIvcLoadVideoFormatByName)) == 0.
  The `beq` branch at 0x1000a7c8 targets 0x1000a9a4, is taken when v0(=ret(XSGIvcListVideoFormats)) == 0, and falls through when v0(=ret(XSGIvcListVideoFormats)) != 0.
  The `blez` branch at 0x1000a7d0 targets 0x1000a80c, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `beq` branch at 0x1000a7f4 targets 0x1000a964, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1000a804 targets 0x1000a7e4, is taken when s6(?) < a2(?) (signed), and falls through when s6(?) >= a2(?) (signed).
  The `blez` branch at 0x1000a840 targets 0x1000a874, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x1000a86c targets 0x1000a84c, is taken when s1(?) < a3(?) (signed), and falls through when s1(?) >= a3(?) (signed).
  The `beq` branch at 0x1000a8cc targets 0x1000a940, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `blez` branch at 0x1000a8f0 targets 0x1000a92c, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x1000a920 targets 0x1000a900, is taken when s2(?) < a3(?) (signed), and falls through when s2(?) >= a3(?) (signed).
  The `bne` branch at 0x1000a97c targets 0x1000a694, is taken when v0(=ret(XSGIvcLoadVideoFormatByName)) != 0, and falls through when v0(=ret(XSGIvcLoadVideoFormatByName)) == 0.
  The return at 0x1000a6bc has v0 = one of ?, ret(XSGIvcLoadVideoFormatCombination), ret(XSGIvcLoadVideoFormatByName).

- `konasetmon` in `usr/gfx/setmon` at 0x1000a9c4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000a9c4-0x1000aea0 (1244 bytes).
  It occupies 1244 bytes.
  The `lw` at 0x1000aa74 loads 4 bytes from sym(pipenum) +0x0.
  The `lw` at 0x1000aab8 loads 4 bytes from ret(timeoutXOpenDisplay) +0x84.
  9 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000ab3c, `lw` at 0x1000abb8, `lw` at 0x1000abc0.
  2 such `lw` accesses load 4 bytes from sym(genlockFlag) +0x0, including `lw` at 0x1000ac50, `lw` at 0x1000ac80.
  The `lw` at 0x1000ad70 loads 4 bytes from sym(gfxfd) +0x0.
  The `sw` at 0x1000ad7c stores 4 bytes to sym(Xvc_sa_pipenum) +0x0.
  The `jalr` at 0x1000aa04 calls strlen with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000aa18 calls strcpy with a0=sp-1400, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1000aa38 calls strcmp with a0=(ret(strlen) + sp-1400)-4, a1=0x10042040, a2=?, a3=?.
  The `jalr` at 0x1000aa4c calls strcat with a0=sp-1400, a1=0x10042040, a2=?, a3=?.
  The `jal` at 0x1000aa70 calls pipenumToString [0x1000bdb4] with a0=[sym(pipenum)], a1=sp-376, a2=?, a3=?.
  The `jal` at 0x1000aa84 calls timeoutXOpenDisplay [0x1000a070] with a0=sp-376, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000aaa0 calls XSynchronize with a0=ret(timeoutXOpenDisplay), a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1000aabc calls XSetErrorHandler with a0=0x1000a1f8, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000aad8 calls XSGIvcListVideoFormatCombinations with a0=ret(timeoutXOpenDisplay), a1=[ret(timeoutXOpenDisplay)+132], a2=sp-1400, a3=0x1, a4=sp-1408.
  The `jalr` at 0x1000aae4 calls XFree with a0=ret(XSGIvcListVideoFormatCombinations), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ab00 calls getuid with a0=sym(__iob), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ab18 calls fprintf with a0=sym(__iob)+32, a1=0x10038bb0, a2=?, a3=?.
  The `jalr` at 0x1000ab24 calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1000ab38 calls (unnamed) [0x1000be44] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ab54 calls fprintf with a0=sym(__iob)+32, a1=0x10038b20, a2=?, a3=?.
  The `jalr` at 0x1000ab60 calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ab90 calls XSGIvcSetPlatformParameter with a0=?, a1=?, a2=0x0, a3=-0x1, a4=sp-112, a5=0x1.
  The `jalr` at 0x1000aba4 calls XSGIvcLoadVideoFormatCombination with a0=?, a1=?, a2=sp-1400, a3=?.
  The `jalr` at 0x1000abdc calls XSGIvcLoadVideoFormatCombination with a0=?, a1=?, a2=sp-1400, a3=?.
  The `jalr` at 0x1000abec calls strlen with a0=[0x10042330], a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ac00 calls strncmp with a0=a0 at entry (arg0), a1=[0x10042330], a2=ret(strlen), a3=?.
  The `jalr` at 0x1000ac28 calls XSync with a0=?, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x1000ac60 calls printf with a0=0x10038c38, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ac78 calls XSGIvcSetScreenInputSyncSource with a0=?, a1=?, a2=0x1, a3=-0x2.
  The `jal` at 0x1000acec calls saXSGIvcSetPlatformParameter [0x10024a20] with a0=?, a1=?, a2=0x0, a3=-0x1, a4=sp-104, a5=0x4, a6=0x1.
  The `jal` at 0x1000ad00 calls saXSGIvcLoadVideoFormatCombination [0x10028d30] with a0=?, a1=?, a2=sp-1400, a3=?.
  The `jalr` at 0x1000ad30 calls XSGIQueryStereoMode with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ad50 calls XSGISetStereoMode with a0=?, a1=?, a2=0x0, a3=0x0, a4=0x0.
  The `jalr` at 0x1000ad78 calls close with a0=[sym(gfxfd)], a1=0x10040000, a2=?, a3=?, a7=sym(Xvc_sa_pipenum).
  The `jal` at 0x1000ad9c calls saXSGIvcListVideoFormatCombinations [0x1002fbd0] with a0=?, a1=?, a2=sp-1400, a3=0x64, a4=sp-1408.
  The `jalr` at 0x1000adc8 calls fprintf with a0=sym(__iob)+32, a1=0x10038be8, a2=?, a3=?.
  The `jalr` at 0x1000add4 calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ade8 calls (unknown callee) with a0=?, a1=?, a2=0x1, a3=-0x1.
  The `jalr` at 0x1000ae08 calls fprintf with a0=sym(__iob)+32, a1=0x10038b90, a2=sp-1400, a3=?.
  The `jalr` at 0x1000ae14 calls exit with a0=-0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ae1c calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000ae54 calls XSGISetStereoMode with a0=?, a1=?, a2=0x1ec, a3=?, a4=0x1.
  The `jalr` at 0x1000ae90 calls XSGISetStereoMode with a0=?, a1=?, a2=0x1ec, a3=?, a4=0x2.
  The `bne` branch at 0x1000aa24 targets 0x1000aa44, is taken when s0(=ret(strlen)) < 0x4 (signed), and falls through when s0(=ret(strlen)) >= 0x4 (signed).
  The `beq` branch at 0x1000aa40 targets 0x1000aa54, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x1000aa78 targets 0x1000ab2c, is taken when v0(=ret(pipenumToString)) == 0, and falls through when v0(=ret(pipenumToString)) != 0.
  The `beq` branch at 0x1000aa8c targets 0x1000ab30, is taken when v0(=ret(timeoutXOpenDisplay)) == 0, and falls through when v0(=ret(timeoutXOpenDisplay)) != 0.
  The `beq` branch at 0x1000aaf0 targets 0x1000adf8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1000aaf8 targets 0x1000ab68, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0x1000ab08 targets 0x1000ab68, is taken when v0(=ret(getuid)) == 0, and falls through when v0(=ret(getuid)) != 0.
  The `beq` branch at 0x1000ab40 targets 0x1000ad60, is taken when v0(=ret(0x1000be44)) == 0, and falls through when v0(=ret(0x1000be44)) != 0.
  The `beq` branch at 0x1000ab68 targets 0x1000acc4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x1000ab70 targets 0x1000acbc, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `beq` branch at 0x1000abb0 targets 0x1000ad20, is taken when s5(=a2) == 0, and falls through when s5(=a2) != 0.
  The `bne` branch at 0x1000ac08 targets 0x1000ad28, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x1000ac10 targets 0x1000ae24, is taken when s8(=a4) == a0(=0x1b), and falls through when s8(=a4) != a0(=0x1b).
  The `beq` branch at 0x1000ac18 targets 0x1000ae64, is taken when s8(=a4) == at(=0x1c), and falls through when s8(=a4) != at(=0x1c).
  The `beq` branch at 0x1000ac30 targets 0x1000adb4, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x1000ac38 targets 0x1000ae1c, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x1000ac40 targets 0x1000ac8c, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x1000ac48 targets 0x1000ac8c, is taken when s3(=a3) != 0, and falls through when s3(=a3) == 0.
  The `beq` branch at 0x1000ac54 targets 0x1000ac84, is taken when v0(=[sym(genlockFlag)]) == 0, and falls through when v0(=[sym(genlockFlag)]) != 0.
  The `beq` branch at 0x1000ac84 targets 0x1000addc, is taken when v0(=[sym(genlockFlag)]) == 0, and falls through when v0(=[sym(genlockFlag)]) != 0.
  The `bne` branch at 0x1000acbc targets 0x1000abb0, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x1000acc4 targets 0x1000adac, is taken when s3(=a3) == 0, and falls through when s3(=a3) != 0.
  The `bne` branch at 0x1000ad08 targets 0x1000abb0, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x1000ad10 targets 0x1000ac38, is taken when s5(=a2) == 0, and falls through when s5(=a2) != 0.
  The `beq` branch at 0x1000ad18 targets 0x1000adbc and is always taken.
  The `beq` branch at 0x1000ad20 targets 0x1000ac38 and is always taken.
  The `beq` branch at 0x1000ad38 targets 0x1000ac20, is taken when v0(=ret(XSGIQueryStereoMode)) == 0, and falls through when v0(=ret(XSGIQueryStereoMode)) != 0.
  The `beq` branch at 0x1000ad58 targets 0x1000ac24 and is always taken.
  The `beq` branch at 0x1000ada4 targets 0x1000aaf0 and is always taken.
  The `bne` branch at 0x1000adac targets 0x1000ac38, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x1000adb4 targets 0x1000ac38, is taken when s5(=a2) == 0, and falls through when s5(=a2) != 0.
  The `beq` branch at 0x1000adf0 targets 0x1000ac90 and is always taken.
  The `beq` branch at 0x1000ae5c targets 0x1000ac24 and is always taken.
  The `beq` branch at 0x1000ae98 targets 0x1000ac24 and is always taken.
  The return at 0x1000acb4 has v0 = ?.

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

- `mgGetVOFpath` in `usr/gfx/setmon` at 0x1000ce90 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000ce90-0x1000cf8c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0x1000cecc loads 4 bytes from sym(info) +0x0.
  The `lw` at 0x1000cee0 loads 4 bytes from sym(splitterFlag) +0x0.
  The `lbu` at 0x1000cf04 loads 1 byte from [sym(info)] +0x2b.
  The `lw` at 0x1000cf38 loads 4 bytes from sym(verboseFlag) +0x0.
  The `jal` at 0x1000ced4 calls (unnamed) [0x1000ce10] with a0=0x10042a10, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000cef4 calls strcat with a0=0x10042a10, a1=0x100420a0, a2=?, a3=?.
  The `jalr` at 0x1000cf1c calls strcat with a0=0x10042a10, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1000cf2c calls strcat with a0=0x10042a10, a1=0x100420b0, a2=?, a3=?.
  The `jalr` at 0x1000cf54 calls fprintf with a0=sym(__iob)+32, a1=0x100395f0, a2=0x10042a10, a3=?.
  The `jalr` at 0x1000cf7c calls strcat with a0=0x10042a10, a1=0x100420a8, a2=?, a3=?.
  The `beq` branch at 0x1000cee4 targets 0x1000cf04, is taken when at(=[sym(splitterFlag)]) == 0, and falls through when at(=[sym(splitterFlag)]) != 0.
  The `beq` branch at 0x1000cefc targets 0x1000cf18 and is always taken.
  The `beq` branch at 0x1000cf0c targets 0x1000cf78, is taken when v0(=[[sym(info)]+43]:1) >= 0x2 (signed), and falls through when v0(=[[sym(info)]+43]:1) < 0x2 (signed).
  The `beq` branch at 0x1000cf3c targets 0x1000cf5c, is taken when v1(=[sym(verboseFlag)]) == 0, and falls through when v1(=[sym(verboseFlag)]) != 0.
  The `beq` branch at 0x1000cf84 targets 0x1000cf14 and is always taken.
  The return at 0x1000cf70 has v0 = 0x10042a10.

- `odyGetVOFpath` in `usr/gfx/setmon` at 0x1000d4dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000d4dc-0x1000d580 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x1000d540 loads 4 bytes from sym(verboseFlag) +0x0.
  The `jal` at 0x1000d514 calls (unnamed) [0x1000ce10] with a0=0x10042b10, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000d524 calls strcat with a0=0x10042b10, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0x1000d534 calls strcat with a0=0x10042b10, a1=0x100420c0, a2=?, a3=?.
  The `jalr` at 0x1000d55c calls fprintf with a0=sym(__iob)+32, a1=0x100395f0, a2=0x10042b10, a3=?.
  The `beq` branch at 0x1000d544 targets 0x1000d564, is taken when at(=[sym(verboseFlag)]) == 0, and falls through when at(=[sym(verboseFlag)]) != 0.
  The return at 0x1000d578 has v0 = 0x10042b10.

- `odyDoFramelock` in `usr/gfx/setmon` at 0x1000d580 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000d580-0x1000d864 (740 bytes).
  It occupies 740 bytes.
  2 such `lw` accesses load 4 bytes from sym(esdscreen) +0x0, including `lw` at 0x1000d610, `lw` at 0x1000d72c.
  2 such `lw` accesses load 4 bytes from sym(esddpy) +0x0, including `lw` at 0x1000d61c, `lw` at 0x1000d738.
  The `lw` at 0x1000d6c8 loads 4 bytes from sym(verboseFlag) +0x0.
  The `lwc1` at 0x1000d6d4 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1000d6e4, `lw` at 0x1000d6ec.
  The `jalr` at 0x1000d5d4 calls strstr with a0=a0 at entry (arg0), a1=0x100420c8, a2=?, a3=?.
  The `jalr` at 0x1000d5e8 calls bzero with a0=sp-672, a1=0x138, a2=?, a3=?.
  The `jalr` at 0x1000d618 calls XSGIvcListVideoFormats with a0=[sym(esddpy)], a1=[sym(esdscreen)], a2=0x0, a3=sp-672, a4=0x0, a5=0x0, a6=0xa, a7=sp-360.
  The `jalr` at 0x1000d648 calls strcmp with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x1000d688 calls strlen with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d69c calls strncmp with a0=?, a1=a0 at entry (arg0), a2=ret(strlen), a3=?.
  The `jalr` at 0x1000d6f4 calls printf with a0=0x10039338, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d70c calls strcpy with a0=sp-348, a1=a0 at entry (arg0), a2=0x1, a3=?.
  The `jalr` at 0x1000d734 calls XSGIvcSetPlatformParameter with a0=[sym(esddpy)], a1=[sym(esdscreen)], a2=0x0, a3=0x3, a4=sp-352, a5=0x104.
  The `jalr` at 0x1000d754 calls XFree with a0=ret(XSGIvcListVideoFormats), a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d784 calls fprintf with a0=sym(__iob)+32, a1=0x10039730, a2=?, a3=?.
  The `jalr` at 0x1000d790 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d7d0 calls fprintf with a0=sym(__iob)+32, a1=0x10039758, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x1000d7ec calls fprintf with a0=sym(__iob)+32, a1=0x10039248, a2=?, a3=?.
  The `jal` at 0x1000d804 calls (unnamed) [0x1000c840] with a0=sym(__iob)+32, a1=ret(XSGIvcListVideoFormats), a2=?, a3=?.
  The `jalr` at 0x1000d810 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d830 calls fprintf with a0=sym(__iob)+32, a1=0x10039700, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000d83c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000d854 calls perror with a0=0x100391e0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1000d5b8 targets 0x1000d820, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x1000d5dc targets 0x1000d778, is taken when v0(=ret(strstr)) != 0, and falls through when v0(=ret(strstr)) == 0.
  The `beq` branch at 0x1000d620 targets 0x1000d84c, is taken when v0(=ret(XSGIvcListVideoFormats)) == 0, and falls through when v0(=ret(XSGIvcListVideoFormats)) != 0.
  The `blez` branch at 0x1000d62c targets 0x1000d66c, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x1000d650 targets 0x1000d7a0, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x1000d664 targets 0x1000d640, is taken when s1(?) < a2(?) (signed), and falls through when s1(?) >= a2(?) (signed).
  The `blez` branch at 0x1000d670 targets 0x1000d6bc, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x1000d6a4 targets 0x1000d7b0, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0x1000d6b4 targets 0x1000d684, is taken when s1(?) < v1(?) (signed), and falls through when s1(?) >= v1(?) (signed).
  The `beq` branch at 0x1000d6bc targets 0x1000d7bc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1000d6cc targets 0x1000d700, is taken when a0(=[sym(verboseFlag)]) == 0, and falls through when a0(=[sym(verboseFlag)]) != 0.
  The `beq` branch at 0x1000d798 targets 0x1000d5e4 and is always taken.
  The `bne` branch at 0x1000d7a0 targets 0x1000d6bc, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `beq` branch at 0x1000d7a8 targets 0x1000d670 and is always taken.
  The `bne` branch at 0x1000d7b0 targets 0x1000d6c4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1000d7dc targets 0x1000d80c, is taken when t8(=a3) == 0, and falls through when t8(=a3) != 0.
  The `beq` branch at 0x1000d818 targets 0x1000d740 and is always taken.
  The `beq` branch at 0x1000d844 targets 0x1000d5c4 and is always taken.
  The `beq` branch at 0x1000d85c targets 0x1000d62c and is always taken.
  The return at 0x1000d770 has v0 = 0x0.

- `venice_grok_dg2_eeprom_error` in `usr/gfx/setmon` at 0x1000fcc4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000fcc4-0x1000fdb0 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x1000fcf8 loads 4 bytes from table(0x10039fd4) +0x0.
  The `jalr` at 0x1000fd0c calls printf with a0=0x1003f220, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10039fd4), a4=(a0 << 0x2).
  The `jalr` at 0x1000fd2c calls printf with a0=0x1003f0d0, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10039fd4), a4=(a0 << 0x2), a5=entry(0x10039fd4).
  The `jalr` at 0x1000fd44 calls printf with a0=0x1003f1e8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10039fd4), a4=(a0 << 0x2), a5=entry(0x10039fd4).
  The `jalr` at 0x1000fd5c calls printf with a0=0x1003f1b0, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10039fd4), a4=(a0 << 0x2), a5=entry(0x10039fd4).
  The `jalr` at 0x1000fd70 calls printf with a0=0x1003f178, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10039fd4), a4=(a0 << 0x2), a5=entry(0x10039fd4).
  The `jalr` at 0x1000fd88 calls printf with a0=0x1003f140, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10039fd4), a4=(a0 << 0x2), a5=entry(0x10039fd4).
  The `jalr` at 0x1000fda0 calls printf with a0=0x1003f108, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=table(0x10039fd4), a4=(a0 << 0x2), a5=entry(0x10039fd4).
  The `beq` branch at 0x1000fcf0 targets 0x1000fd04, is taken when a0 >= 0x8 (unsigned), and falls through when a0 < 0x8 (unsigned).
  The `beq` branch at 0x1000fd34 targets 0x1000fd18 and is always taken.
  The `beq` branch at 0x1000fd4c targets 0x1000fd18 and is always taken.
  The `beq` branch at 0x1000fd64 targets 0x1000fd18 and is always taken.
  The `beq` branch at 0x1000fd78 targets 0x1000fd18 and is always taken.
  The `beq` branch at 0x1000fd90 targets 0x1000fd18 and is always taken.
  The `beq` branch at 0x1000fda8 targets 0x1000fd18 and is always taken.
  The return at 0x1000fd1c has v0 = one of ?, ret(printf).
  The indirect jump at 0x1000fcfc uses the jump table at 0x10039fd4 with targets 0x1000fd14, 0x1000fd24, 0x1000fd98, 0x1000fd80, 0x1000fd6c, 0x1000fd14, 0x1000fd54, 0x1000fd3c.

- `get_ven_type` in `usr/gfx/setmon` at 0x1000fdb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000fdb0-0x1000fea0 (240 bytes).
  It occupies 240 bytes.
  2 such `lw` accesses load 4 bytes from sym(ven_type) +0x0, including `lw` at 0x1000fdc8, `lw` at 0x1000fe94.
  The `sw` at 0x1000fdf4 stores 4 bytes to sym(ven_type) +0x0.
  3 such `sw` accesses store 4 bytes to sym(ven_iptype) +0x0, including `sw` at 0x1000fe18, `sw` at 0x1000fe78, `sw` at 0x1000fe9c.
  The `lw` at 0x1000fe38 loads 4 bytes from ret(getinvent) +0x4.
  The `lw` at 0x1000fe40 loads 4 bytes from ret(getinvent) +0x8.
  The `lw` at 0x1000fe4c loads 4 bytes from ret(getinvent) +0x14.
  The `jalr` at 0x1000fdf0 calls setinvent with a0=0x1, a1=sym(ven_type), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1000fdfc calls getinvent with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1000fe20 calls getinvent with a0=?, a1=?, a2=?, a3=0x1, a4=sym(ven_iptype), a5=[ret(getinvent)+4].
  The `jalr` at 0x1000fe80 calls endinvent with a0=?, a1=?, a2=ret(getinvent), a3=?.
  The `beq` branch at 0x1000fdd0 targets 0x1000fde4, is taken when v0(=[sym(ven_type)]) == at(=-0x1), and falls through when v0(=[sym(ven_type)]) != at(=-0x1).
  The `beq` branch at 0x1000fe04 targets 0x1000fe7c, is taken when v0(=ret(getinvent)) == 0, and falls through when v0(=ret(getinvent)) != 0.
  The `beq` branch at 0x1000fe10 targets 0x1000fe38 and is always taken.
  The `beq` branch at 0x1000fe30 targets 0x1000fe7c, is taken when v0(=ret(getinvent)) == 0, and falls through when v0(=ret(getinvent)) != 0.
  The `bne` branch at 0x1000fe3c targets 0x1000fe1c, is taken when a5(=[ret(getinvent)+4]) != a3(=0x1), and falls through when a5(=[ret(getinvent)+4]) == a3(=0x1).
  The `bne` branch at 0x1000fe44 targets 0x1000fe20, is taken when v0(=[ret(getinvent)+8]) != a3(=0x1), and falls through when v0(=[ret(getinvent)+8]) == a3(=0x1).
  The `beq` branch at 0x1000fe54 targets 0x1000fe18, is taken when v0(=[ret(getinvent)+20]) == a6(=0xb), and falls through when v0(=[ret(getinvent)+20]) != a6(=0xb).
  The `beq` branch at 0x1000fe60 targets 0x1000fe98, is taken when v0(=[ret(getinvent)+20]) == a7(=0xd), and falls through when v0(=[ret(getinvent)+20]) != a7(=0xd).
  The `bne` branch at 0x1000fe6c targets 0x1000fe1c, is taken when v0(=[ret(getinvent)+20]) != t0(=0xf), and falls through when v0(=[ret(getinvent)+20]) == t0(=0xf).
  The `beq` branch at 0x1000fe74 targets 0x1000fe1c and is always taken.
  The `beq` branch at 0x1000fe90 targets 0x1000fdd8 and is always taken.
  The `beq` branch at 0x1000fe98 targets 0x1000fe1c and is always taken.
  The return at 0x1000fddc has v0 = [sym(ven_type)].

- `get_ven_iptype` in `usr/gfx/setmon` at 0x1000fea0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000fea0-0x1000fefc (92 bytes).
  It occupies 92 bytes.
  2 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1000feb8, `lw` at 0x1000fef0.
  The `jal` at 0x1000fedc calls get_ven_type [0x1000fdb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=0x398c0.
  The `beq` branch at 0x1000fec4 targets 0x1000fed8, is taken when a2(=[sym(ven_iptype)]) == at(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != at(=-0x1).
  The return at 0x1000fed0 has v0 = [sym(ven_iptype)].
  The return at 0x1000fef4 has v0 = [sym(ven_iptype)].

- `venice_set_pipeaddr` in `usr/gfx/setmon` at 0x1000fefc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000fefc-0x1000ff38 (60 bytes).
  It occupies 60 bytes.
  The `sw` at 0x1000ff24 stores 4 bytes to sym(ven_pipeMapped) +0x0.
  The `jal` at 0x1000ff20 calls fcg_venice_set_pipeaddr [0x10010f84] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000ff30 has v0 = ret(fcg_venice_set_pipeaddr).

- `venice_get_vcreg` in `usr/gfx/setmon` at 0x1000ff38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000ff38-0x1000ff6c (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x1000ff54 calls fcg_venice_get_vcreg [0x100110d4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000ff64 has v0 = ret(fcg_venice_get_vcreg).

- `venice_set_vcreg` in `usr/gfx/setmon` at 0x1000ff6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000ff6c-0x1000ffa0 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x1000ff88 calls fcg_venice_set_vcreg [0x10011108] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1000ff98 has v0 = ret(fcg_venice_set_vcreg).

- `fcg_get_ge_cnt` in `usr/gfx/setmon` at 0x1000ffa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1000ffa0-0x10010050 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x1000ffa4 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1000ffd4 loads 4 bytes from table(0x10039ff4) +0x0.
  The `jalr` at 0x1000fff0 calls fprintf with a0=sym(__iob)+32, a1=0x1003f250, a2=[a0+40], a3=a3 at entry (arg3).
  The `beq` branch at 0x1000ffcc targets 0x1000ffe0, is taken when a2(=[a0+40]) >= 0x8 (unsigned), and falls through when a2(=[a0+40]) < 0x8 (unsigned).
  The `beq` branch at 0x1001000c targets 0x1000fffc and is always taken.
  The `beq` branch at 0x10010014 targets 0x1000fffc and is always taken.
  The `beq` branch at 0x1001001c targets 0x1000fffc and is always taken.
  The `beq` branch at 0x10010024 targets 0x1000fffc and is always taken.
  The `beq` branch at 0x1001002c targets 0x1000fffc and is always taken.
  The `beq` branch at 0x10010034 targets 0x10010000 and is always taken.
  The return at 0x10010004 has v0 = one of ?, 0x2.
  The return at 0x10010048 has v0 = 0x1.
  The indirect jump at 0x1000ffd8 uses the jump table at 0x10039ff4 with targets 0x1000ffe0, 0x1001003c, 0x10010034, 0x1001002c, 0x10010024, 0x1001001c, 0x10010014, 0x1001000c.

- `venice_loadsection_fcg` in `usr/gfx/setmon` at 0x10010050 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10010050-0x1001015c (268 bytes).
  It occupies 268 bytes.
  The `lw` at 0x1001008c loads 4 bytes from sym(ven_pipeaddr) +0x0.
  The `lw` at 0x100100dc loads 4 bytes from ?.
  The `sw` at 0x100100e8 stores 4 bytes to ?.
  The `jalr` at 0x10010088 calls malloc with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100100a4 calls read with a0=a0 at entry (arg0), a1=ret(malloc), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x100100f0 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `jalr` at 0x10010128 calls fprintf with a0=sym(__iob)+32, a1=0x1003f2a8, a2=ret(malloc), a3=?.
  The `jalr` at 0x1001014c calls fprintf with a0=sym(__iob)+32, a1=0x1003f278, a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x10010090 targets 0x10010138, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `bne` branch at 0x100100ac targets 0x10010118, is taken when v0(=ret(read)) != s0(=a2), and falls through when v0(=ret(read)) == s0(=a2).
  The `beq` branch at 0x100100b8 targets 0x100100ec, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x100100e4 targets 0x100100c0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x10010130 targets 0x100100fc and is always taken.
  The `beq` branch at 0x10010154 targets 0x100100fc and is always taken.
  The return at 0x10010110 has v0 = one of -0x1, 0x0.

- `fcg_get_gfx_fifo_count` in `usr/gfx/setmon` at 0x1001015c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001015c-0x1001019c (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10010168 loads 4 bytes from abs 0x10041d94.
  The `lw` at 0x1001016c loads 4 bytes from sym(ven_pipeaddr) +0x0.
  The `lw` at 0x10010178 loads 4 bytes from [sym(ven_pipeaddr)] +0xa028.
  The `lw` at 0x1001017c loads 4 bytes from [sym(ven_pipeaddr)] +0xa020.
  The `bne` branch at 0x10010184 targets 0x10010194, is taken when a3(=[[sym(ven_pipeaddr)]+41000]) < a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned), and falls through when a3(=[[sym(ven_pipeaddr)]+41000]) >= a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned).
  The return at 0x1001018c has v0 = ?.
  The return at 0x10010194 has v0 = ?.

- `fcg_get_gfx_fifo_count` in `usr/gfx/setmon` at 0x1001015c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001015c-0x1001019c (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x10010168 loads 4 bytes from abs 0x10041d94.
  The `lw` at 0x1001016c loads 4 bytes from sym(ven_pipeaddr) +0x0.
  The `lw` at 0x10010178 loads 4 bytes from [sym(ven_pipeaddr)] +0xa028.
  The `lw` at 0x1001017c loads 4 bytes from [sym(ven_pipeaddr)] +0xa020.
  The `bne` branch at 0x10010184 targets 0x10010194, is taken when a3(=[[sym(ven_pipeaddr)]+41000]) < a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned), and falls through when a3(=[[sym(ven_pipeaddr)]+41000]) >= a4(=[[sym(ven_pipeaddr)]+40992]) (unsigned).
  The return at 0x1001018c has v0 = ?.
  The return at 0x10010194 has v0 = ?.

- `fcg_init_cp` in `usr/gfx/setmon` at 0x1001019c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001019c-0x100102f0 (340 bytes).
  It occupies 340 bytes.
  4 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x100101c0, `lw` at 0x100101e8, `lw` at 0x10010204.
  The `sw` at 0x10010200 stores 4 bytes to [0x10041db8] +0x6020.
  The `sw` at 0x1001023c stores 4 bytes to [0x10041db8] +0x0.
  3 such `sw` accesses store 4 bytes to [0x10041dbc] +0x0, including `sw` at 0x10010260, `sw` at 0x1001026c, `sw` at 0x10010274.
  3 such `sw` accesses store 4 bytes to [0x10041dc0] +0x0, including `sw` at 0x10010280, `sw` at 0x10010288, `sw` at 0x10010290.
  The `jal` at 0x10010298 calls get_ven_iptype [0x1000fea0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[sym(ven_iptype)], a4=[sym(ven_iptype)].
  The `jal` at 0x100102b0 calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=[sym(ven_iptype)], a5=0x19.
  The `jal` at 0x100102c8 calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=[sym(ven_iptype)], a5=0x19.
  The `jal` at 0x100102dc calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=[sym(ven_iptype)], a5=0x19.
  The `beq` branch at 0x100101d4 targets 0x10010294, is taken when a3(=[sym(ven_iptype)]) == s2(=-0x1), and falls through when a3(=[sym(ven_iptype)]) != s2(=-0x1).
  The `beq` branch at 0x100101e4 targets 0x10010278, is taken when a4(?) == a5(=0x19), and falls through when a4(?) != a5(=0x19).
  The `beq` branch at 0x100101ec targets 0x100102d8, is taken when a3(=[sym(ven_iptype)]) == s2(=-0x1), and falls through when a3(=[sym(ven_iptype)]) != s2(=-0x1).
  The `beq` branch at 0x100101f8 targets 0x10010264, is taken when a0(?) == v0(=0x15), and falls through when a0(?) != v0(=0x15).
  The `beq` branch at 0x10010208 targets 0x100102ac, is taken when a3(=[sym(ven_iptype)]) == s2(=-0x1), and falls through when a3(=[sym(ven_iptype)]) != s2(=-0x1).
  The `beq` branch at 0x10010218 targets 0x1001028c, is taken when a0(?) == a5(=0x19), and falls through when a0(?) != a5(=0x19).
  The `beq` branch at 0x10010224 targets 0x100102c4, is taken when a3(=[sym(ven_iptype)]) == s2(=-0x1), and falls through when a3(=[sym(ven_iptype)]) != s2(=-0x1).
  The `beq` branch at 0x10010234 targets 0x1001025c, is taken when a0(?) == t8(=0x15), and falls through when a0(?) != t8(=0x15).
  The `beq` branch at 0x1001025c targets 0x10010240 and is always taken.
  The `beq` branch at 0x10010270 targets 0x10010204 and is always taken.
  The `beq` branch at 0x10010284 targets 0x10010204 and is always taken.
  The `beq` branch at 0x1001028c targets 0x10010240 and is always taken.
  The `beq` branch at 0x100102a4 targets 0x100101dc and is always taken.
  The `beq` branch at 0x100102bc targets 0x10010210 and is always taken.
  The `beq` branch at 0x100102d0 targets 0x1001022c and is always taken.
  The `beq` branch at 0x100102e8 targets 0x100101f4 and is always taken.
  The return at 0x10010254 has v0 = ?.

- `fcg_init_ge` in `usr/gfx/setmon` at 0x100102f0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100102f0-0x10010530 (576 bytes).
  It occupies 576 bytes.
  6 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x10010314, `lw` at 0x10010340, `lw` at 0x10010360.
  The `sw` at 0x1001035c stores 4 bytes to [0x10041db8] +0x6040.
  2 such `sw` accesses store 4 bytes to [0x10041db8] +0x0, including `sw` at 0x10010390, `sw` at 0x100103f0.
  3 such `lw` accesses load 4 bytes from sym(VEN_info) +0x3a4, including `lw` at 0x100103d8, `lw` at 0x10010448, `lw` at 0x100104c4.
  4 such `sw` accesses store 4 bytes to [0x10041dc0] +0x0, including `sw` at 0x10010428, `sw` at 0x1001048c, `sw` at 0x10010494.
  4 such `sw` accesses store 4 bytes to [0x10041dbc] +0x0, including `sw` at 0x10010464, `sw` at 0x10010470, `sw` at 0x10010478.
  The `jal` at 0x100103c0 calls venice_rm_ibrev [0x100116b4] with a0=?, a1=0x15, a2=?, a3=?.
  The `jal` at 0x100103cc calls venice_rm_imprev [0x100114fc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10010414 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10010430 calls venice_rm_ibrev [0x100116b4] with a0=?, a1=0x15, a2=?, a3=?.
  The `jal` at 0x1001043c calls venice_rm_imprev [0x100114fc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1001049c calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100104ac calls venice_rm_ibrev [0x100116b4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100104b8 calls venice_rm_imprev [0x100114fc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100104e8 calls get_ven_iptype [0x1000fea0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100104fc calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?.
  The `jal` at 0x1001050c calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10010520 calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a5=[0x10041dc0].
  The `beq` branch at 0x1001032c targets 0x100104e4, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x1001033c targets 0x10010484, is taken when a0(?) == s4(=0x19), and falls through when a0(?) != s4(=0x19).
  The `beq` branch at 0x10010344 targets 0x1001050c, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x10010354 targets 0x10010468, is taken when a0(?) == v0(=0x15), and falls through when a0(?) != v0(=0x15).
  The `beq` branch at 0x10010364 targets 0x10010410, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x1001036c targets 0x10010424, is taken when v0(=[sym(ven_iptype)]) == s4(=0x19), and falls through when v0(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x10010378 targets 0x1001051c, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x10010388 targets 0x1001047c, is taken when a0(?) == v1(=0x15), and falls through when a0(?) != v1(=0x15).
  The `beq` branch at 0x10010398 targets 0x10010498, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x100103a0 targets 0x100104ac, is taken when v0(=[sym(ven_iptype)]) == s4(=0x19), and falls through when v0(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x100103ac targets 0x100104f8, is taken when v0(=[sym(ven_iptype)]) == s1(=-0x1), and falls through when v0(=[sym(ven_iptype)]) != s1(=-0x1).
  The `beq` branch at 0x100103b8 targets 0x1001042c, is taken when a0(?) == a1(=0x15), and falls through when a0(?) != a1(=0x15).
  The `bne` branch at 0x1001041c targets 0x10010374, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x10010424 targets 0x10010394 and is always taken.
  The `beq` branch at 0x10010460 targets 0x100103f4 and is always taken.
  The `beq` branch at 0x10010474 targets 0x10010360 and is always taken.
  The `beq` branch at 0x1001047c targets 0x10010394 and is always taken.
  The `beq` branch at 0x10010490 targets 0x10010360 and is always taken.
  The `bne` branch at 0x100104a4 targets 0x100103a8, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x100104dc targets 0x100103f4 and is always taken.
  The `beq` branch at 0x100104f0 targets 0x10010338 and is always taken.
  The `beq` branch at 0x10010504 targets 0x100103b4 and is always taken.
  The `beq` branch at 0x10010514 targets 0x10010350 and is always taken.
  The `beq` branch at 0x10010528 targets 0x10010380 and is always taken.
  The return at 0x10010408 has v0 = ret(venice_rm_imprev).

- `wg_flush` in `usr/gfx/setmon` at 0x100105f4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100105f4-0x10010778 (388 bytes).
  It occupies 388 bytes.
  4 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x1001060c, `lw` at 0x10010644, `lw` at 0x1001068c.
  The `lw` at 0x10010664 loads 4 bytes from [0x10042340] +0x0.
  The `sw` at 0x100106b4 stores 4 bytes to [0x10041db8] +0x1fe0.
  The `sw` at 0x100106e4 stores 4 bytes to [0x10041dbc] +0x20.
  2 such `sw` accesses store 4 bytes to [0x10041dbc] +0x0, including `sw` at 0x10010728, `sw` at 0x10010730.
  2 such `sw` accesses store 4 bytes to [0x10041dc0] +0x0, including `sw` at 0x1001073c, `sw` at 0x10010744.
  The `jal` at 0x100106c8 calls get_ven_iptype [0x1000fea0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=a3 at entry (arg3), a4=sym(ven_iptype).
  The `jal` at 0x100106e8 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x100106fc calls get_ven_iptype [0x1000fea0] with a0=?, a1=[0x10041dbc], a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype).
  The `jal` at 0x10010710 calls (unnamed) [0x10010530] with a0=0x19, a1=[0x10042340], a2=?, a3=?.
  The `jal` at 0x1001074c calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=sym(ven_iptype), a5=[sym(ven_iptype)].
  The `jal` at 0x10010760 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=0xffffffffdeadbeef, a4=sym(ven_iptype), a6=0x19.
  The `beq` branch at 0x10010618 targets 0x100106c4, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x10010628 targets 0x1001067c, is taken when a3(?) == v0(=0x13), and falls through when a3(?) != v0(=0x13).
  The `beq` branch at 0x10010630 targets 0x100106e8, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1001063c targets 0x100106e0, is taken when a2(?) == v1(=0x15), and falls through when a2(?) != v1(=0x15).
  The `beq` branch at 0x10010648 targets 0x100106fc, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x10010654 targets 0x10010668, is taken when a2(?) != a0(=0x19), and falls through when a2(?) == a0(=0x19).
  The `beq` branch at 0x1001065c targets 0x1001070c, is taken when s0(=-0x1) == a1(=[0x10042340]), and falls through when s0(=-0x1) != a1(=[0x10042340]).
  The `beq` branch at 0x1001067c targets 0x10010748, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x10010690 targets 0x10010734, is taken when a5(?) == a6(=0x19), and falls through when a5(?) != a6(=0x19).
  The `beq` branch at 0x10010698 targets 0x10010760, is taken when a2(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x100106ac targets 0x10010720, is taken when a2(?) == a7(=0x15), and falls through when a2(?) != a7(=0x15).
  The `beq` branch at 0x100106d8 targets 0x10010624 and is always taken.
  The `beq` branch at 0x100106e0 targets 0x10010668 and is always taken.
  The `beq` branch at 0x100106f4 targets 0x10010638 and is always taken.
  The `beq` branch at 0x10010704 targets 0x10010650 and is always taken.
  The `beq` branch at 0x10010718 targets 0x10010664 and is always taken.
  The `beq` branch at 0x1001072c targets 0x10010668 and is always taken.
  The `beq` branch at 0x10010740 targets 0x10010668 and is always taken.
  The `beq` branch at 0x10010758 targets 0x10010684 and is always taken.
  The `beq` branch at 0x10010770 targets 0x100106a0 and is always taken.
  The return at 0x10010674 has v0 = one of ?, [0x10041dc0].
  The return at 0x100106bc has v0 = ?.

- `fcg_cp_loaducode` in `usr/gfx/setmon` at 0x10010778 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10010778-0x100109ec (628 bytes).
  It occupies 628 bytes.
  8 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x100107a8, `lw` at 0x100107e0, `lw` at 0x10010804.
  The `sw` at 0x10010800 stores 4 bytes to [0x10041db8] +0xfee0.
  3 such `sw` accesses store 4 bytes to [0x10041db8] +0x0, including `sw` at 0x10010834, `sw` at 0x10010868, `sw` at 0x1001089c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10010898, `lw` at 0x100108d4, `lw` at 0x100108f4.
  5 such `sw` accesses store 4 bytes to [0x10041dbc] +0x0, including `sw` at 0x100108dc, `sw` at 0x10010968, `sw` at 0x10010970.
  5 such `sw` accesses store 4 bytes to [0x10041dc0] +0x0, including `sw` at 0x100108fc, `sw` at 0x10010944, `sw` at 0x1001095c.
  The `jal` at 0x10010880 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x100108e0 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x10010930 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x10010948 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x100109a0 calls get_ven_iptype [0x1000fea0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[sym(ven_iptype)].
  The `jal` at 0x100109b4 calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x100109c8 calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x100109dc calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=?, a2=?, a3=?, a4=[sym(ven_iptype)].
  The `beq` branch at 0x100107c4 targets 0x10010998, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x100107d8 targets 0x10010984, is taken when a0(?) == s4(=0x19), and falls through when a0(?) != s4(=0x19).
  The `beq` branch at 0x100107e4 targets 0x100109b0, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x100107f4 targets 0x10010960, is taken when a0(?) == v0(=0x15), and falls through when a0(?) != v0(=0x15).
  The `beq` branch at 0x10010808 targets 0x1001092c, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x10010810 targets 0x10010940, is taken when a4(=[sym(ven_iptype)]) == s4(=0x19), and falls through when a4(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x1001081c targets 0x100109c4, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x1001082c targets 0x10010974, is taken when a0(?) == a1(=0x15), and falls through when a0(?) != a1(=0x15).
  The `beq` branch at 0x1001083c targets 0x10010948, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x10010844 targets 0x10010958, is taken when a4(=[sym(ven_iptype)]) == s4(=0x19), and falls through when a4(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x10010850 targets 0x100109d8, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x10010860 targets 0x1001097c, is taken when a0(?) == a3(=0x15), and falls through when a0(?) != a3(=0x15).
  The `beq` branch at 0x10010870 targets 0x10010900, is taken when s1(=a0-1) == s0(=-0x1), and falls through when s1(=a0-1) != s0(=-0x1).
  The `beq` branch at 0x10010878 targets 0x100108a8 and is always taken.
  The `beq` branch at 0x10010888 targets 0x100108d0, is taken when v0(=ret(get_ven_iptype)) == s5(=0x15), and falls through when v0(=ret(get_ven_iptype)) != s5(=0x15).
  The `beq` branch at 0x100108a4 targets 0x10010900, is taken when s1(?) == s0(=-0x1), and falls through when s1(?) != s0(=-0x1).
  The `beq` branch at 0x100108ac targets 0x100108e0, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `beq` branch at 0x100108b4 targets 0x100108f0, is taken when a4(=[sym(ven_iptype)]) == s4(=0x19), and falls through when a4(=[sym(ven_iptype)]) != s4(=0x19).
  The `beq` branch at 0x100108c0 targets 0x10010880, is taken when a4(=[sym(ven_iptype)]) == s0(=-0x1), and falls through when a4(=[sym(ven_iptype)]) != s0(=-0x1).
  The `bne` branch at 0x100108c8 targets 0x10010890, is taken when a4(=[sym(ven_iptype)]) != s5(=0x15), and falls through when a4(=[sym(ven_iptype)]) == s5(=0x15).
  The `beq` branch at 0x100108d8 targets 0x100108a0 and is always taken.
  The `bne` branch at 0x100108e8 targets 0x100108bc, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x100108f8 targets 0x100108a0 and is always taken.
  The `bne` branch at 0x10010938 targets 0x10010818, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x10010940 targets 0x10010838 and is always taken.
  The `bne` branch at 0x10010950 targets 0x1001084c, is taken when v0(=ret(get_ven_iptype)) != s4(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s4(=0x19).
  The `beq` branch at 0x10010958 targets 0x1001086c and is always taken.
  The `beq` branch at 0x1001096c targets 0x10010804 and is always taken.
  The `beq` branch at 0x10010974 targets 0x10010838 and is always taken.
  The `beq` branch at 0x1001097c targets 0x1001086c and is always taken.
  The `beq` branch at 0x10010990 targets 0x10010804 and is always taken.
  The `beq` branch at 0x100109a8 targets 0x100107d4 and is always taken.
  The `beq` branch at 0x100109bc targets 0x100107ec and is always taken.
  The `beq` branch at 0x100109d0 targets 0x10010824 and is always taken.
  The `beq` branch at 0x100109e4 targets 0x10010858 and is always taken.
  The return at 0x10010924 has v0 = ?.

- `fcg_cp_ge_bootstrap` in `usr/gfx/setmon` at 0x10010cb4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10010cb4-0x10010eb0 (508 bytes).
  It occupies 508 bytes.
  6 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x10010ce0, `lw` at 0x10010d0c, `lw` at 0x10010d68.
  The `sw` at 0x10010d24 stores 4 bytes to [0x10041db8] +0x64e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x10010d28, `lw` at 0x10010d70.
  The `sw` at 0x10010d60 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x10010d6c stores 4 bytes to [0x10041db8] +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10010da0, `lw` at 0x10010dec.
  3 such `sw` accesses store 4 bytes to [0x10041dbc] +0x0, including `sw` at 0x10010dd8, `sw` at 0x10010e68, `sw` at 0x10010e70.
  3 such `sw` accesses store 4 bytes to [0x10041dc0] +0x0, including `sw` at 0x10010e1c, `sw` at 0x10010e7c, `sw` at 0x10010e84.
  The `jal` at 0x10010ddc calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?.
  The `jal` at 0x10010e50 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=[sym(ven_iptype)].
  The `jal` at 0x10010e8c calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=a3 at entry (arg3).
  The `jal` at 0x10010ea0 calls get_ven_iptype [0x1000fea0] with a0=?, a1=?, a2=[sym(ven_iptype)], a3=?, a4=[sym(ven_iptype)].
  The `beq` branch at 0x10010cf8 targets 0x10010e88, is taken when a2(=[sym(ven_iptype)]) == s3(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s3(=-0x1).
  The `beq` branch at 0x10010d08 targets 0x10010e74, is taken when a0(?) == s5(=0x19), and falls through when a0(?) != s5(=0x19).
  The `beq` branch at 0x10010d10 targets 0x10010e9c, is taken when a2(=[sym(ven_iptype)]) == s3(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s3(=-0x1).
  The `beq` branch at 0x10010d1c targets 0x10010e60, is taken when a4(?) == v0(=0x15), and falls through when a4(?) != v0(=0x15).
  The `beq` branch at 0x10010d5c targets 0x10010e20, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x10010d64 targets 0x10010d88 and is always taken.
  The `bne` branch at 0x10010d7c targets 0x10010e20, is taken when a2(=[a0]) < s1(?) (unsigned), and falls through when a2(=[a0]) >= s1(?) (unsigned).
  The `beq` branch at 0x10010d88 targets 0x10010ddc, is taken when a2(=[sym(ven_iptype)]) == s3(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s3(=-0x1).
  The `beq` branch at 0x10010d90 targets 0x10010dec, is taken when a2(=[sym(ven_iptype)]) == s5(=0x19), and falls through when a2(=[sym(ven_iptype)]) != s5(=0x19).
  The `beq` branch at 0x10010d98 targets 0x10010e4c, is taken when a2(=[sym(ven_iptype)]) == s3(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != s3(=-0x1).
  The `bne` branch at 0x10010dcc targets 0x10010d6c, is taken when a4(?) != s6(=0x15), and falls through when a4(?) == s6(=0x15).
  The `beq` branch at 0x10010dd4 targets 0x10010d70 and is always taken.
  The `bne` branch at 0x10010de4 targets 0x10010d98, is taken when v0(=ret(get_ven_iptype)) != s5(=0x19), and falls through when v0(=ret(get_ven_iptype)) == s5(=0x19).
  The `beq` branch at 0x10010e18 targets 0x10010d70 and is always taken.
  The `beq` branch at 0x10010e58 targets 0x10010da0 and is always taken.
  The `beq` branch at 0x10010e6c targets 0x10010d28 and is always taken.
  The `beq` branch at 0x10010e80 targets 0x10010d28 and is always taken.
  The `beq` branch at 0x10010e94 targets 0x10010d00 and is always taken.
  The `beq` branch at 0x10010ea8 targets 0x10010d18 and is always taken.
  The return at 0x10010e44 has v0 = ?.

- `fcg_cp_ge_goto` in `usr/gfx/setmon` at 0x10010eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10010eb0-0x10010f84 (212 bytes).
  It occupies 212 bytes.
  2 such `lw` accesses load 4 bytes from sym(ven_iptype) +0x0, including `lw` at 0x10010ec8, `lw` at 0x10010eec.
  The `sw` at 0x10010f04 stores 4 bytes to [0x10041db8] +0x6860.
  2 such `sw` accesses store 4 bytes to [0x10041dbc] +0x0, including `sw` at 0x10010f2c, `sw` at 0x10010f30.
  2 such `sw` accesses store 4 bytes to [0x10041dc0] +0x0, including `sw` at 0x10010f48, `sw` at 0x10010f50.
  The `jal` at 0x10010f58 calls get_ven_iptype [0x1000fea0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[sym(ven_iptype)], a3=sym(ven_iptype), a4=-0x1.
  The `jal` at 0x10010f74 calls get_ven_iptype [0x1000fea0] with a0=[sym(ven_iptype)], a1=?, a2=[sym(ven_iptype)], a3=sym(ven_iptype), a4=-0x1.
  The `beq` branch at 0x10010ed8 targets 0x10010f54, is taken when a2(=[sym(ven_iptype)]) == a4(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != a4(=-0x1).
  The `beq` branch at 0x10010ee8 targets 0x10010f40, is taken when a0(?) == v0(=0x19), and falls through when a0(?) != v0(=0x19).
  The `beq` branch at 0x10010ef0 targets 0x10010f70, is taken when a2(=[sym(ven_iptype)]) == a4(=-0x1), and falls through when a2(=[sym(ven_iptype)]) != a4(=-0x1).
  The `beq` branch at 0x10010efc targets 0x10010f1c, is taken when a0(?) == v1(=0x15), and falls through when a0(?) != v1(=0x15).
  The `beq` branch at 0x10010f4c targets 0x10010f08 and is always taken.
  The `beq` branch at 0x10010f68 targets 0x10010ee4 and is always taken.
  The `beq` branch at 0x10010f7c targets 0x10010ef8 and is always taken.
  The return at 0x10010f14 has v0 = one of ?, 0x19.
  The return at 0x10010f38 has v0 = ?.

- `fcg_venice_get_vcreg` in `usr/gfx/setmon` at 0x100110d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100110d4-0x10011108 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x100110e0 loads 4 bytes from abs 0x10041d90.
  The `lw` at 0x100110e8 loads 4 bytes from sym(ven_gfxvaddr) +0x0.
  The `lw` at 0x10011104 loads 4 bytes from ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000.
  The return at 0x10011100 has v0 = [([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192].

- `fcg_venice_set_vcreg` in `usr/gfx/setmon` at 0x10011108 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011108-0x1001113c (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x10011114 loads 4 bytes from abs 0x10041d90.
  The `lw` at 0x1001111c loads 4 bytes from sym(ven_gfxvaddr) +0x0.
  The `sw` at 0x10011138 stores 4 bytes to ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2)) +0xfc000.
  The return at 0x10011134 has v0 = ([sym(ven_gfxvaddr)] + ((a0 + a0) << 0x2))+1032192.

- `venice_fifo_hack` in `usr/gfx/setmon` at 0x1001113c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001113c-0x10011218 (220 bytes).
  It occupies 220 bytes.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x2c, including `lw` at 0x100111a0, `lw` at 0x100111cc.
  The `jalr` at 0x10011194 calls printf with a0=0x1003f468, a1=?, a2=?, a3=?.
  The `jal` at 0x100111c4 calls venice_rmfifo [0x10011218] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10011170 targets 0x10011208, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x10011178 targets 0x100111a0, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x100111a8 targets 0x100111e0, is taken when a1(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when a1(=[sym(VEN_info)+44]) > 0 (signed).
  The `bne` branch at 0x100111d8 targets 0x100111b8, is taken when s0(?) < a2(=[sym(VEN_info)+44]) (signed), and falls through when s0(?) >= a2(=[sym(VEN_info)+44]) (signed).
  The `beq` branch at 0x10011210 targets 0x10011178 and is always taken.
  The return at 0x10011200 has v0 = one of ?, ret(venice_rmfifo).

- `venice_fifo_hack` in `usr/gfx/setmon` at 0x1001113c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001113c-0x10011218 (220 bytes).
  It occupies 220 bytes.
  2 such `lw` accesses load 4 bytes from sym(VEN_info) +0x2c, including `lw` at 0x100111a0, `lw` at 0x100111cc.
  The `jalr` at 0x10011194 calls printf with a0=0x1003f468, a1=?, a2=?, a3=?.
  The `jal` at 0x100111c4 calls venice_rmfifo [0x10011218] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10011170 targets 0x10011208, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x10011178 targets 0x100111a0, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x100111a8 targets 0x100111e0, is taken when a1(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when a1(=[sym(VEN_info)+44]) > 0 (signed).
  The `bne` branch at 0x100111d8 targets 0x100111b8, is taken when s0(?) < a2(=[sym(VEN_info)+44]) (signed), and falls through when s0(?) >= a2(=[sym(VEN_info)+44]) (signed).
  The `beq` branch at 0x10011210 targets 0x10011178 and is always taken.
  The return at 0x10011200 has v0 = one of ?, ret(venice_rmfifo).

- `venice_imprev` in `usr/gfx/setmon` at 0x100113dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100113dc-0x100114fc (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0x10011408 loads 4 bytes from (sym(rm_chain) + (a0 << 0x2)) +0x0.
  The `lw` at 0x100114a4 loads 4 bytes from ?.
  The `jal` at 0x10011404 calls _jt_select_chain [0x10011acc] with a0=[(sym(rm_chain) + (a0 << 0x2))], a1=sym(rm_chain), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001141c calls (unnamed) [0x1001136c] with a0=sp-320, a1=0x11, a2=0x14, a3=?.
  The `jal` at 0x10011430 calls _jt_send_instruction [0x10011b00] with a0=0xa0, a1=sp-320, a2=sp-320, a3=?.
  The `jal` at 0x1001145c calls _jt_send_data [0x10011b34] with a0=0x800, a1=sp-320, a2=sp-320, a3=?.
  The `jal` at 0x100114a8 calls (unnamed) [0x10011390] with a0=sp-320, a1=?, a2=0x20, a3=?.
  The `beq` branch at 0x10011484 targets 0x1001149c and is always taken.
  The `beq` branch at 0x1001148c targets 0x100114cc, is taken when v0(=ret(0x10011390)) == s4(=0xc30c30b), and falls through when v0(=ret(0x10011390)) != s4(=0xc30c30b).
  The `beq` branch at 0x10011494 targets 0x100114d0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x100114b0 targets 0x1001148c, is taken when v0(=ret(0x10011390)) != s2(=0x1451450b), and falls through when v0(=ret(0x10011390)) == s2(=0x1451450b).
  The `bne` branch at 0x100114bc targets 0x1001148c, is taken when s5(=one of 0x1, 0x2) != t9(=0x2), and falls through when s5(=one of 0x1, 0x2) == t9(=0x2).
  The `beq` branch at 0x100114c4 targets 0x10011490 and is always taken.
  The return at 0x100114f4 has v0 = one of 0x0, 0x1, 0x2.

- `venice_rm_imprev` in `usr/gfx/setmon` at 0x100114fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100114fc-0x100115b4 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0x10011524 loads 4 bytes from sym(VEN_info) +0x2c.
  The `jal` at 0x1001155c calls venice_imprev [0x100113dc] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10011538 targets 0x100115ac, is taken when s2(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when s2(=[sym(VEN_info)+44]) > 0 (signed).
  The `beq` branch at 0x10011544 targets 0x10011558 and is always taken.
  The `beq` branch at 0x1001154c targets 0x10011580, is taken when v0(=ret(venice_imprev)) == 0, and falls through when v0(=ret(venice_imprev)) != 0.
  The `beq` branch at 0x10011554 targets 0x10011584, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x10011564 targets 0x1001154c, is taken when s1(=one of 0x1, 0x2) != s3(=0x2), and falls through when s1(=one of 0x1, 0x2) == s3(=0x2).
  The `bne` branch at 0x10011570 targets 0x1001154c, is taken when v0(=ret(venice_imprev)) != t9(=0x1), and falls through when v0(=ret(venice_imprev)) == t9(=0x1).
  The `beq` branch at 0x10011578 targets 0x10011550 and is always taken.
  The `beq` branch at 0x100115ac targets 0x10011588 and is always taken.
  The return at 0x100115a4 has v0 = one of 0x0, 0x1, 0x2.

- `venice_ibrev` in `usr/gfx/setmon` at 0x100115b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100115b4-0x100116b4 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0x10011610 loads 4 bytes from (sym(rm_chain) + (a0 << 0x2)) +0x0.
  The `lw` at 0x10011670 loads 4 bytes from ?.
  The `jalr` at 0x100115d8 calls getenv with a0=0x1003f480, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001160c calls _jt_select_chain [0x10011acc] with a0=[(sym(rm_chain) + (a0 << 0x2))], a1=(a0 << 0x2), a2=?, a3=?.
  The `jal` at 0x10011624 calls (unnamed) [0x1001136c] with a0=sp-304, a1=0x11, a2=0x14, a3=?.
  The `jal` at 0x10011638 calls _jt_send_instruction [0x10011b00] with a0=0xa0, a1=sp-304, a2=sp-304, a3=?.
  The `jal` at 0x10011654 calls _jt_send_data [0x10011b34] with a0=0x800, a1=sp-304, a2=sp-304, a3=?.
  The `jal` at 0x10011674 calls (unnamed) [0x10011390] with a0=sp-304, a1=?, a2=0x20, a3=?.
  The `beq` branch at 0x100115e0 targets 0x100115f8, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10011684 targets 0x100116ac, is taken when v0(=ret(0x10011390)) == a2(=0x180a057), and falls through when v0(=ret(0x10011390)) != a2(=0x180a057).
  The `bne` branch at 0x10011694 targets 0x10011668, is taken when s1(?) < 0x5 (signed), and falls through when s1(?) >= 0x5 (signed).
  The `beq` branch at 0x100116a4 targets 0x100115e8 and is always taken.
  The `beq` branch at 0x100116ac targets 0x100116a0 and is always taken.
  The return at 0x100115f0 has v0 = one of 0x0, 0x1.

- `venice_rm_ibrev` in `usr/gfx/setmon` at 0x100116b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100116b4-0x10011730 (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0x100116d4 loads 4 bytes from sym(VEN_info) +0x2c.
  The `jal` at 0x100116f0 calls venice_ibrev [0x100115b4] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x100116e0 targets 0x10011708, is taken when s1(=[sym(VEN_info)+44]) <= 0 (signed), and falls through when s1(=[sym(VEN_info)+44]) > 0 (signed).
  The `beq` branch at 0x100116f8 targets 0x10011728, is taken when v0(=ret(venice_ibrev)) == 0, and falls through when v0(=ret(venice_ibrev)) != 0.
  The `bne` branch at 0x10011704 targets 0x100116ec, is taken when s0(?) < s1(=[sym(VEN_info)+44]) (signed), and falls through when s0(?) >= s1(=[sym(VEN_info)+44]) (signed).
  The `beq` branch at 0x10011728 targets 0x1001170c and is always taken.
  The return at 0x10011720 has v0 = one of 0x0, 0x1.

- `venice_pgrev` in `usr/gfx/setmon` at 0x10011730 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011730-0x10011738 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10011730 has v0 = 0x0.

- `venice_tdrev` in `usr/gfx/setmon` at 0x10011738 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011738-0x10011740 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10011738 has v0 = 0x1.

- `venice_tarev` in `usr/gfx/setmon` at 0x10011740 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011740-0x10011748 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10011740 has v0 = 0x0.

- `venice_rm_rev` in `usr/gfx/setmon` at 0x10011748 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011748-0x10011818 (208 bytes).
  It occupies 208 bytes.
  The `jal` at 0x10011770 calls venice_bdrev [0x10011a24] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10011780 calls venice_pgrev [0x10011730] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10011790 calls venice_tarev [0x10011740] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100117a0 calls venice_tdrev [0x10011738] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100117b0 calls venice_ibrev [0x100115b4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100117c0 calls venice_imprev [0x100113dc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x10011810 has v0 = ((ret(venice_imprev) | (ret(venice_ibrev) << 0x4)) | (((ret(venice_bdrev) << 0x14) | (ret(venice_pgrev) << 0x10)) | ((ret(venice_tarev) << 0xc) | (ret(venice_tdrev) << 0x8)))).

- `venice_ifrev` in `usr/gfx/setmon` at 0x10011818 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011818-0x10011868 (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x10011834 calls get_ven_type [0x1000fdb0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001183c targets 0x10011854, is taken when v0(=ret(get_ven_type)) == 0, and falls through when v0(=ret(get_ven_type)) != 0.
  The return at 0x1001184c has v0 = 0x0.
  The return at 0x10011860 has v0 = 0x1.

- `venice_gefrev` in `usr/gfx/setmon` at 0x100119b8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100119b8-0x100119c0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x100119b8 has v0 = 0x1.

- `venice_ge_rev` in `usr/gfx/setmon` at 0x100119c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100119c0-0x10011a24 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x100119dc calls venice_ifrev [0x10011818] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100119e8 calls venice_cprev [0x10011868] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100119f4 calls venice_gefrev [0x100119b8] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10011a1c has v0 = (ret(venice_gefrev) | ((ret(venice_ifrev) << 0x8) | (ret(venice_cprev) << 0x4))).

- `venice_bdrev` in `usr/gfx/setmon` at 0x10011a24 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011a24-0x10011acc (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x10011a50 loads 4 bytes from (sym(rm_chain) + (a0 << 0x2)) +0x0.
  The `lw` at 0x10011a9c loads 4 bytes from sym(pgoff) +0x0.
  The `jal` at 0x10011a4c calls _jt_select_chain [0x10011acc] with a0=[(sym(rm_chain) + (a0 << 0x2))], a1=sym(rm_chain), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10011a64 calls (unnamed) [0x1001136c] with a0=sp-1040, a1=0x22, a2=0x14, a3=?.
  The `jal` at 0x10011a78 calls _jt_send_instruction [0x10011b00] with a0=0xa0, a1=sp-1040, a2=sp-1040, a3=?.
  The `jal` at 0x10011a8c calls _jt_send_data [0x10011b34] with a0=0x2000, a1=sp-1040, a2=sp-1040, a3=?.
  The `jal` at 0x10011aac calls (unnamed) [0x10011390] with a0=sp-1040, a1=[sym(pgoff)]+7, a2=0x2, a3=?.
  The return at 0x10011ac4 has v0 = ?.

- `_jt_select_chain` in `usr/gfx/setmon` at 0x10011acc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011acc-0x10011b00 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x10011ae8 calls fcg_jt_select_chain [0x10011ff8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10011af8 has v0 = ret(fcg_jt_select_chain).

- `_jt_send_instruction` in `usr/gfx/setmon` at 0x10011b00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011b00-0x10011b34 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x10011b1c calls fcg_jt_send_instruction [0x100120b4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10011b2c has v0 = ret(fcg_jt_send_instruction).

- `_jt_send_data` in `usr/gfx/setmon` at 0x10011b34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011b34-0x10011b68 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x10011b50 calls fcg_jt_send_data [0x1001230c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10011b60 has v0 = ret(fcg_jt_send_data).

- `vector_to_int` in `usr/gfx/setmon` at 0x10011b68 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011b68-0x10011b98 (48 bytes).
  It occupies 48 bytes.
  The `lbu` at 0x10011b68 loads 1 byte from a1 (arg1 at entry) +0x1.
  The `lbu` at 0x10011b6c loads 1 byte from a1 (arg1 at entry) +0x3.
  The `lbu` at 0x10011b70 loads 1 byte from a1 (arg1 at entry) +0x2.
  The `lbu` at 0x10011b78 loads 1 byte from a1 (arg1 at entry) +0x0.
  The `sw` at 0x10011b94 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x10011b90 has v0 = (([a1]:1 | ([a1+1]:1 << 0x8)) | (([a1+2]:1 << 0x10) | ([a1+3]:1 << 0x18))).

- `fcg_jt_init` in `usr/gfx/setmon` at 0x10011b98 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011b98-0x10011ba0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10011b98 has v0 = 0x0.

- `fcg_jt_soft_reset` in `usr/gfx/setmon` at 0x10011ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011ba0-0x10011c38 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10011bb8 loads 4 bytes from sym(ven_pipeaddr) +0x0.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10011be0, `sw` at 0x10011be8, `sw` at 0x10011bec.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10011bf0, `lw` at 0x10011c20.
  The `jalr` at 0x10011c18 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10011bd4 targets 0x10011be0, is taken when a2(=[sym(ven_pipeaddr)]) == 0, and falls through when a2(=[sym(ven_pipeaddr)]) != 0.
  The `beq` branch at 0x10011bf8 targets 0x10011c14, is taken when (a4(?) & 0x1) == 0, and falls through when (a4(?) & 0x1) != 0.
  The `beq` branch at 0x10011c28 targets 0x10011c18, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x10011c30 targets 0x10011c00 and is always taken.
  The return at 0x10011c0c has v0 = 0x0.

- `fcg_jt_hard_reset` in `usr/gfx/setmon` at 0x10011c38 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011c38-0x10011c40 (8 bytes).
  It occupies 8 bytes.
  The return at 0x10011c38 has v0 = -0x1.

- `fcg_jt_select_chain` in `usr/gfx/setmon` at 0x10011ff8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10011ff8-0x100120b4 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0x1001201c loads 4 bytes from sym(ven_pipeaddr) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10012058, `lw` at 0x1001209c.
  The `sw` at 0x100120b0 stores 4 bytes to ?.
  The `jalr` at 0x1001205c calls strcmp with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `beq` branch at 0x1001203c targets 0x10012048, is taken when a1(=[sym(ven_pipeaddr)]) == 0, and falls through when a1(=[sym(ven_pipeaddr)]) != 0.
  The `beq` branch at 0x10012064 targets 0x1001209c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x10012070 targets 0x10012054, is taken when s1(?) < 0x6 (signed), and falls through when s1(?) >= 0x6 (signed).
  The `beq` branch at 0x100120ac targets 0x1001207c and is always taken.
  The return at 0x10012094 has v0 = one of -0x1, 0x0.

- `fcg_jt_send_instruction` in `usr/gfx/setmon` at 0x100120b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100120b4-0x1001230c (600 bytes).
  It occupies 600 bytes.
  The `lw` at 0x100120ec loads 4 bytes from sym(ven_pipeaddr) +0x0.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10012138, `sw` at 0x1001213c, `sw` at 0x1001219c.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10012160, `lw` at 0x1001217c, `lw` at 0x100121a0.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10012180, `sb` at 0x10012270.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10012198, `lbu` at 0x100121dc.
  The `jalr` at 0x10012158 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012204 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100122dc calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1001210c targets 0x100122fc, is taken when a5(=[sym(ven_pipeaddr)]) == 0, and falls through when a5(=[sym(ven_pipeaddr)]) != 0.
  The `blez` branch at 0x10012114 targets 0x10012304, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x10012140 targets 0x100121c8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1001214c targets 0x10012198 and is always taken.
  The `beq` branch at 0x10012168 targets 0x10012158, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x10012170 targets 0x10012184, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x10012184 targets 0x100121b8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10012190 targets 0x100121c8, is taken when s4(?) == s7(=-0x1), and falls through when s4(?) != s7(=-0x1).
  The `bne` branch at 0x100121a8 targets 0x10012170, is taken when (t2(?) & 0x1) != 0, and falls through when (t2(?) & 0x1) == 0.
  The `beq` branch at 0x100121b0 targets 0x10012158 and is always taken.
  The `beq` branch at 0x100121c0 targets 0x1001218c and is always taken.
  The `beq` branch at 0x100121d4 targets 0x10012274, is taken when (s1(=a0) & 0x7) == 0, and falls through when (s1(=a0) & 0x7) != 0.
  The `beq` branch at 0x100121f0 targets 0x10012264, is taken when s1(?) == s7(=-0x1), and falls through when s1(?) != s7(=-0x1).
  The `beq` branch at 0x100121f8 targets 0x1001223c and is always taken.
  The `beq` branch at 0x10012214 targets 0x10012204, is taken when (ra(?) & 0x1) == 0, and falls through when (ra(?) & 0x1) != 0.
  The `beq` branch at 0x10012230 targets 0x100122c8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10012238 targets 0x1001225c, is taken when s1(?) == s7(=-0x1), and falls through when s1(?) != s7(=-0x1).
  The `bne` branch at 0x1001224c targets 0x1001221c, is taken when (t9(?) & 0x1) != 0, and falls through when (t9(?) & 0x1) == 0.
  The `beq` branch at 0x10012254 targets 0x10012204 and is always taken.
  The `beq` branch at 0x10012264 targets 0x10012274, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1001228c targets 0x100122d8, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0x100122d0 targets 0x10012238 and is always taken.
  The `beq` branch at 0x100122ec targets 0x100122dc, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x100122f4 targets 0x10012298 and is always taken.
  The `bgtz` branch at 0x100122fc targets 0x1001211c, is taken when a0 > 0 (signed), and falls through when a0 <= 0 (signed).
  The `beq` branch at 0x10012304 targets 0x1001229c and is always taken.
  The return at 0x100122c0 has v0 = one of -0x1, 0x0.
  The instructions from 0x10012154 to 0x10012154 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10012200 to 0x10012200 are not reached by any path from the entry, and their branches are not listed.

- `fcg_jt_send_data` in `usr/gfx/setmon` at 0x1001230c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001230c-0x10012564 (600 bytes).
  It occupies 600 bytes.
  The `lw` at 0x10012344 loads 4 bytes from sym(ven_pipeaddr) +0x0.
  10 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10012390, `sw` at 0x10012394, `sw` at 0x100123f4.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100123b8, `lw` at 0x100123d4, `lw` at 0x100123f8.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x100123d8, `sb` at 0x100124c8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100123f0, `lbu` at 0x10012434.
  The `jalr` at 0x100123b0 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001245c calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012534 calls sginap with a0=0x0, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10012364 targets 0x10012554, is taken when a5(=[sym(ven_pipeaddr)]) == 0, and falls through when a5(=[sym(ven_pipeaddr)]) != 0.
  The `blez` branch at 0x1001236c targets 0x1001255c, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x10012398 targets 0x10012420, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x100123a4 targets 0x100123f0 and is always taken.
  The `beq` branch at 0x100123c0 targets 0x100123b0, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x100123c8 targets 0x100123dc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x100123dc targets 0x10012410, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x100123e8 targets 0x10012420, is taken when s4(?) == s7(=-0x1), and falls through when s4(?) != s7(=-0x1).
  The `bne` branch at 0x10012400 targets 0x100123c8, is taken when (t2(?) & 0x1) != 0, and falls through when (t2(?) & 0x1) == 0.
  The `beq` branch at 0x10012408 targets 0x100123b0 and is always taken.
  The `beq` branch at 0x10012418 targets 0x100123e4 and is always taken.
  The `beq` branch at 0x1001242c targets 0x100124cc, is taken when (s1(=a0) & 0x7) == 0, and falls through when (s1(=a0) & 0x7) != 0.
  The `beq` branch at 0x10012448 targets 0x100124bc, is taken when s1(?) == s7(=-0x1), and falls through when s1(?) != s7(=-0x1).
  The `beq` branch at 0x10012450 targets 0x10012494 and is always taken.
  The `beq` branch at 0x1001246c targets 0x1001245c, is taken when (ra(?) & 0x1) == 0, and falls through when (ra(?) & 0x1) != 0.
  The `beq` branch at 0x10012488 targets 0x10012520, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10012490 targets 0x100124b4, is taken when s1(?) == s7(=-0x1), and falls through when s1(?) != s7(=-0x1).
  The `bne` branch at 0x100124a4 targets 0x10012474, is taken when (t9(?) & 0x1) != 0, and falls through when (t9(?) & 0x1) == 0.
  The `beq` branch at 0x100124ac targets 0x1001245c and is always taken.
  The `beq` branch at 0x100124bc targets 0x100124cc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x100124e4 targets 0x10012530, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0x10012528 targets 0x10012490 and is always taken.
  The `beq` branch at 0x10012544 targets 0x10012534, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x1001254c targets 0x100124f0 and is always taken.
  The `bgtz` branch at 0x10012554 targets 0x10012374, is taken when a0 > 0 (signed), and falls through when a0 <= 0 (signed).
  The `beq` branch at 0x1001255c targets 0x100124f4 and is always taken.
  The return at 0x10012518 has v0 = one of -0x1, 0x0.
  The instructions from 0x100123ac to 0x100123ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x10012458 to 0x10012458 are not reached by any path from the entry, and their branches are not listed.

- `generateFilename` in `usr/gfx/setmon` at 0x10012564 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10012564-0x100125a8 (68 bytes).
  It occupies 68 bytes.
  The `jalr` at 0x10012590 calls sprintf with a0=a2 at entry (arg2), a1=0x10042120, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The return at 0x100125a0 has v0 = ret(sprintf).

- `vs2GeneratePath` in `usr/gfx/setmon` at 0x10012670 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10012670-0x100126d8 (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x1001269c calls getRMCount [0x100133b4] with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100126bc calls sprintf with a0=a0 at entry (arg0), a1=0x1003a078, a2=a1 at entry (arg1), a3=ret(getRMCount), a4=a2 at entry (arg2).
  The return at 0x100126d0 has v0 = ret(sprintf).

- `vs2ConsistencyCheck` in `usr/gfx/setmon` at 0x100126d8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100126d8-0x1001284c (372 bytes).
  It occupies 372 bytes.
  4 such `lw` accesses load 4 bytes from sym(vs2ProductName) +0x0, including `lw` at 0x1001272c, `lw` at 0x100127e8, `lw` at 0x10012810.
  The `jal` at 0x10012700 calls vs2ProbeBoardType [0x100137d0] with a0=a0 at entry (arg0), a1=sp-8704, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10012738 calls syslog with a0=0x2, a1=0x1003a0a0, a2=[sym(vs2ProductName)], a3=a0 at entry (arg0), a4=[sym(vs2ProductName)].
  The `jal` at 0x1001275c calls venice_get_vcreg [0x1000ff38] with a0=0xa830, a1=?, a2=?, a3=0x5653.
  The `jal` at 0x10012778 calls vs2Open [0x10013708] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10012788 calls getRMCount [0x100133b4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1001279c calls vs2ReadEEPROMData [0x1001464c] with a0=?, a1=sp-8696, a2=?, a3=?.
  The `jal` at 0x100127c0 calls vs2Close [0x10013608] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100127ec calls syslog with a0=0x2, a1=0x1003a1c8, a2=[sym(vs2ProductName)], a3=a0 at entry (arg0).
  The `jalr` at 0x10012814 calls syslog with a0=0x2, a1=0x1003a0f8, a2=[sym(vs2ProductName)], a3=a0 at entry (arg0).
  The `jalr` at 0x1001283c calls syslog with a0=0x2, a1=0x1003a150, a2=[sym(vs2ProductName)], a3=a0 at entry (arg0).
  The `beq` branch at 0x1001270c targets 0x100127d0, is taken when v0(=ret(vs2ProbeBoardType)) == 0, and falls through when v0(=ret(vs2ProbeBoardType)) != 0.
  The `beq` branch at 0x10012714 targets 0x1001275c, is taken when a0(?) == a3(=0x5653), and falls through when a0(?) != a3(=0x5653).
  The `blez` branch at 0x10012770 targets 0x100127fc, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x100127a4 targets 0x10012824, is taken when v0(=ret(vs2ReadEEPROMData)) == 0, and falls through when v0(=ret(vs2ReadEEPROMData)) != 0.
  The `bne` branch at 0x100127b0 targets 0x100127d8, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `beq` branch at 0x100127c8 targets 0x10012748 and is always taken.
  The `beq` branch at 0x100127d0 targets 0x10012744 and is always taken.
  The `beq` branch at 0x100127f4 targets 0x100127bc and is always taken.
  The `beq` branch at 0x1001281c targets 0x10012744 and is always taken.
  The `beq` branch at 0x10012844 targets 0x100127bc and is always taken.
  The return at 0x10012754 has v0 = one of -0x4, -0x3, -0x2, -0x5, -0x1, 0x0.

- `vs2GetHeadInfo` in `usr/gfx/setmon` at 0x1001284c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001284c-0x10012958 (268 bytes).
  It occupies 268 bytes.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x100128a4, `lw` at 0x100128b8, `lw` at 0x100128d0.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x100128c4, `sw` at 0x100128dc, `sw` at 0x100128f4.
  The `lw` at 0x10012918 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lw` at 0x10012924 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `jal` at 0x10012878 calls vs2Open [0x10013708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001288c calls vs2ReadEEPROMData [0x1001464c] with a0=ret(vs2Open), a1=sp-8688, a2=?, a3=?.
  The `jal` at 0x10012938 calls vs2Close [0x10013608] with a0=ret(vs2Open), a1=?, a2=sp-8688, a3=?.
  The `bgtz` branch at 0x10012910 targets 0x100128fc, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `bne` branch at 0x10012928 targets 0x100128a4, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The return at 0x10012950 has v0 = ret(vs2Close).

- `vs2Initialize` in `usr/gfx/setmon` at 0x10012958 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10012958-0x100129b4 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x10012978 calls vs2Open [0x10013708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001298c calls venice_vs2init [0x10016344] with a0=ret(vs2Open), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x1001299c calls vs2Close [0x10013608] with a0=ret(vs2Open), a1=?, a2=?, a3=?.
  The return at 0x100129ac has v0 = ret(vs2Close).

- `vs2Installed` in `usr/gfx/setmon` at 0x100129b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100129b4-0x100129ec (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x100129d0 calls vs2ConsistencyCheck [0x100126d8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100129e4 has v0 = ?.

- `vs2LoadVdrc` in `usr/gfx/setmon` at 0x100129ec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100129ec-0x10012aec (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0x10012a80 loads 4 bytes from sym(vs2ProductName) +0x0.
  The `jal` at 0x10012a08 calls vs2Open [0x10013708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10012a1c calls vs2ReadEEPROMData [0x1001464c] with a0=ret(vs2Open), a1=sp-9696, a2=?, a3=?.
  The `jal` at 0x10012a34 calls generateFilename [0x10012564] with a0=sp-2532, a1=0x1003a248, a2=sp-1048, a3=?.
  The `jal` at 0x10012a40 calls venice_get_vcreg [0x1000ff38] with a0=0xa830, a1=?, a2=?, a3=?.
  The `jalr` at 0x10012a6c calls fopen with a0=sp-1048, a1=0x10042128, a2=?, a3=0x20000.
  The `jalr` at 0x10012a94 calls syslog with a0=0x1, a1=0x1003a258, a2=[sym(vs2ProductName)], a3=sp-1048.
  The `jalr` at 0x10012aac calls (unknown callee) with a0=ret(fopen), a1=?, a2=[sym(vs2ProductName)], a3=?.
  The `jalr` at 0x10012ab8 calls fclose with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jal` at 0x10012ac4 calls vs2Close [0x10013608] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10012a54 targets 0x10012ae0, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x10012a7c targets 0x10012aa4, is taken when v0(=ret(fopen)) != 0, and falls through when v0(=ret(fopen)) == 0.
  The `beq` branch at 0x10012a9c targets 0x10012ac0 and is always taken.
  The `beq` branch at 0x10012ae4 targets 0x10012a60 and is always taken.
  The return at 0x10012ad8 has v0 = ret(vs2Close).

- `vs2ManagedArea` in `usr/gfx/setmon` at 0x10012aec (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10012aec-0x10012b60 (116 bytes).
  It occupies 116 bytes.
  The `sw` at 0x10012b30 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x10012b48 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x10012b10 calls vs2Open [0x10013708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10012b24 calls vs2ReadEEPROMData [0x1001464c] with a0=ret(vs2Open), a1=sp-8688, a2=?, a3=?.
  The `jal` at 0x10012b44 calls vs2Close [0x10013608] with a0=?, a1=?, a2=?, a3=?.
  The return at 0x10012b58 has v0 = ret(vs2Close).

- `vs2ReadByte` in `usr/gfx/setmon` at 0x10012bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10012bf0-0x10012c04 (20 bytes).
  It occupies 20 bytes.
  The `lw` at 0x10012bf0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x10012c00 loads 1 byte from ((a1 + [a0+4]) << 0x0) +0x0.
  The return at 0x10012bfc has v0 = [((a1 + [a0+4]) << 0x0)]:1.

- `vs2RegisterClearBit` in `usr/gfx/setmon` at 0x10012c04 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10012c04-0x10012c6c (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x10012c30 calls vs2ReadByte [0x10012bf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10012c50 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The return at 0x10012c64 has v0 = ret(vs2WriteByte).

- `vs2ReadStatus` in `usr/gfx/setmon` at 0x10012cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10012cd0-0x10012d58 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x10012cf8 calls vs2ReadByte [0x10012bf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10012d0c calls vs2ReadByte [0x10012bf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x10012d48 calls vs2ReadByte [0x10012bf0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x10012d20 targets 0x10012d44, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x10012d50 targets 0x10012d28 and is always taken.
  The return at 0x10012d3c has v0 = ?.

- `vs2Setmon` in `usr/gfx/setmon` at 0x10012d58 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10012d58-0x10013020 (712 bytes).
  It occupies 712 bytes.
  4 such `lw` accesses load 4 bytes from sym(vs2ProductName) +0x0, including `lw` at 0x10012dd4, `lw` at 0x10012e24, `lw` at 0x10012ecc.
  The `lw` at 0x10012ea4 loads 4 bytes from ?.
  The `ld` at 0x10012f94 loads 8 bytes from ?.
  The `sd` at 0x10012fa4 stores 8 bytes to ?.
  The `jal` at 0x10012d90 calls vs2Open [0x10013708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10012da0 calls getRMCount [0x100133b4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10012db0 calls vs2ProbeBoardType [0x100137d0] with a0=a0 at entry (arg0), a1=sp-10960, a2=?, a3=?.
  The `jalr` at 0x10012df0 calls fprintf with a0=sym(__iob)+32, a1=0x1003a318, a2=[sym(vs2ProductName)], a3=sym(vs2ProductName).
  The `jalr` at 0x10012e0c calls fprintf with a0=sym(__iob)+32, a1=0x1003a358, a2=[sym(vs2ProductName)], a3=sym(vs2ProductName).
  The `jalr` at 0x10012e28 calls fprintf with a0=sym(__iob)+32, a1=0x1003a3c0, a2=[sym(vs2ProductName)], a3=?.
  The `jalr` at 0x10012e34 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10012e60 calls vs2ReadEEPROMData [0x1001464c] with a0=ret(vs2Open), a1=sp-10952, a2=?, a3=sym(vs2ProductName).
  The `jalr` at 0x10012e78 calls strncpy with a0=sp-3788, a1=a1 at entry (arg1), a2=0x400, a3=?.
  The `jal` at 0x10012ea8 calls generateFilename [0x10012564] with a0=a1 at entry (arg1), a1=?, a2=sp-2304, a3=?.
  The `jalr` at 0x10012ed0 calls printf with a0=0x1003a280, a1=sp-2304, a2=[sym(vs2ProductName)], a3=a2 at entry (arg2).
  The `jal` at 0x10012ee4 calls loadVofToDataStructure [0x100159d4] with a0=sp-2304, a1=?, a2=?, a3=?.
  The `jal` at 0x10012f2c calls generateFilename [0x10012564] with a0=a1 at entry (arg1), a1=0x1003a2a0, a2=sp-1280, a3=?.
  The `jalr` at 0x10012f3c calls fopen with a0=sp-1280, a1=0x10042128, a2=?, a3=?.
  The `jalr` at 0x10012f5c calls fread with a0=sp-256, a1=0xa8, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10012f68 calls fclose with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x10012fcc calls printf with a0=0x1003a2f0, a1=[sym(vs2ProductName)], a2=0x4b, a3=?, a4=sp-2472, a7=sym(printf).
  The `jal` at 0x10012fe0 calls vs2WriteEEPROMData [0x10014750] with a0=ret(vs2Open), a1=sp-10952, a2=0x0, a3=?.
  The `jal` at 0x10012fec calls vs2Close [0x10013608] with a0=ret(vs2Open), a1=?, a2=?, a3=?.
  The `jalr` at 0x10013004 calls perror with a0=0x1003a2b0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013010 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10012dc0 targets 0x10012dd0, is taken when v0(=ret(vs2ProbeBoardType)) == 0, and falls through when v0(=ret(vs2ProbeBoardType)) != 0.
  The `beq` branch at 0x10012dcc targets 0x10012e58, is taken when a1(?) == v1(=0x5653), and falls through when a1(?) != v1(=0x5653).
  The `bne` branch at 0x10012dd8 targets 0x10012e00, is taken when v0(=ret(vs2ProbeBoardType)) != 0, and falls through when v0(=ret(vs2ProbeBoardType)) == 0.
  The `beq` branch at 0x10012df8 targets 0x10012e14 and is always taken.
  The `beq` branch at 0x10012eb4 targets 0x10012edc, is taken when a3(=a2) == 0, and falls through when a3(=a2) != 0.
  The `bne` branch at 0x10012f14 targets 0x10012e9c, is taken when a3(?) < 0x2 (signed), and falls through when a3(?) >= 0x2 (signed).
  The `beq` branch at 0x10012f44 targets 0x10012ffc, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `bgtz` branch at 0x10012fa0 targets 0x10012f8c, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0x10012ff4 targets 0x10012e40 and is always taken.
  The `beq` branch at 0x10013018 targets 0x10012f50 and is always taken.
  The return at 0x10012e50 has v0 = one of ret(exit), ret(vs2Close).

- `vs2ToggleSerialClock` in `usr/gfx/setmon` at 0x10013020 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10013020-0x10013078 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x1001304c calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=0x4280, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x1001305c calls vs2ReadByte [0x10012bf0] with a0=a0 at entry (arg0), a1=0x41a0, a2=?, a3=?.
  The return at 0x10013070 has v0 = ret(vs2ReadByte).

- `vs2WriteRegisterBlock` in `usr/gfx/setmon` at 0x10013078 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10013078-0x10013108 (144 bytes).
  It occupies 144 bytes.
  The `lbu` at 0x100130d0 loads 1 byte from ?.
  The `jal` at 0x100130cc calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x100130b4 targets 0x100130e4, is taken when s2(=a3-1) == s4(=-0x1), and falls through when s2(=a3-1) != s4(=-0x1).
  The `bne` branch at 0x100130dc targets 0x100130bc, is taken when s2(?) != s4(=-0x1), and falls through when s2(?) == s4(=-0x1).
  The return at 0x10013100 has v0 = one of ?, 0x2.

- `vs2WriteByte` in `usr/gfx/setmon` at 0x10013108 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10013108-0x1001311c (20 bytes).
  It occupies 20 bytes.
  The `lw` at 0x10013108 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sb` at 0x10013118 stores 1 byte to ((a1 + [a0+4]) << 0x0) +0x0.
  The return at 0x10013114 has v0 = ?.

- `vs2WriteProgClock` in `usr/gfx/setmon` at 0x1001311c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001311c-0x1001316c (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x10013140 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=0x41d0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1001315c calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=0x41c0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10013134 targets 0x10013158, is taken when a1 == at(=0x4200), and falls through when a1 != at(=0x4200).
  The `beq` branch at 0x10013164 targets 0x1001314c and is always taken.
  The return at 0x10013150 has v0 = ret(vs2WriteByte).

- `vs2WriteXilinxReg` in `usr/gfx/setmon` at 0x1001316c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001316c-0x10013184 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0x1001316c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sb` at 0x10013180 stores 1 byte to ((a2 + (a1 + [a0+4])) << 0x0) +0x0.
  The return at 0x1001317c has v0 = ?.

- `getRMCount` in `usr/gfx/setmon` at 0x100133b4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100133b4-0x100133ec (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x100133d0 calls getVeniceInfo [0x10013184] with a0=a0 at entry (arg0), a1=sp-960, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x100133e4 has v0 = ?.

- `vs2Close` in `usr/gfx/setmon` at 0x10013608 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10013608-0x10013660 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10013630 calls (unnamed) [0x100135b8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10013640 calls free with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x10013658 has v0 = ret(0x100135b8).

- `vs2Delay` in `usr/gfx/setmon` at 0x10013660 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10013660-0x10013708 (168 bytes).
  It occupies 168 bytes.
  The `jalr` at 0x10013684 calls _sysconf with a0=0x3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100136bc calls sginap with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100136d8 calls _sysconf with a0=0x3, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100136b0 targets 0x100136d4, is taken when v0(?) >= 0x2 (signed), and falls through when v0(?) < 0x2 (signed).
  The `beq` branch at 0x10013700 targets 0x100136bc and is always taken.
  The return at 0x100136cc has v0 = ret(sginap).

- `vs2Open` in `usr/gfx/setmon` at 0x10013708 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10013708-0x10013794 (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x10013744 stores 4 bytes to ret(malloc) +0x4.
  The `sw` at 0x1001374c stores 4 bytes to ret(malloc) +0x8.
  The `lw` at 0x10013758 loads 4 bytes from ret(malloc) +0x4.
  The `jalr` at 0x10013730 calls malloc with a0=0x14, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10013750 calls (unnamed) [0x100133ec] with a0=a0 at entry (arg0), a1=ret(malloc), a2=?, a3=?.
  The `jalr` at 0x10013784 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10013760 targets 0x10013780, is taken when ra(=[ret(malloc)+4]) == at(=-0x1), and falls through when ra(=[ret(malloc)+4]) != at(=-0x1).
  The `beq` branch at 0x1001378c targets 0x10013768 and is always taken.
  The return at 0x10013778 has v0 = one of ret(malloc), 0x0.

- `vs2ProbeBoardType` in `usr/gfx/setmon` at 0x100137d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100137d0-0x10013910 (320 bytes).
  It occupies 320 bytes.
  The `lw` at 0x100138c0 loads 4 bytes from sym(vs2ProductName) +0x0.
  The `sw` at 0x1001390c stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x100137f8 calls (unnamed) [0x100133ec] with a0=a0 at entry (arg0), a1=sp-96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10013828 calls signal with a0=0xb, a1=0x10013794, a2=?, a3=?.
  The `jalr` at 0x1001383c calls signal with a0=0xa, a1=0x10013794, a2=?, a3=?.
  The `jalr` at 0x10013850 calls setjmp with a0=0x10043130, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001386c calls signal with a0=0xb, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001387c calls signal with a0=0xa, a1=?, a2=?, a3=?.
  The `jal` at 0x1001388c calls (unnamed) [0x100135b8] with a0=sp-96, a1=?, a2=?, a3=?.
  The `jalr` at 0x100138c4 calls syslog with a0=0x6, a1=0x1003a6d8, a2=[sym(vs2ProductName)], a3=?.
  The `jal` at 0x100138d8 calls vs2ReadByte [0x10012bf0] with a0=sp-96, a1=0x0, a2=?, a3=?.
  The `jal` at 0x100138f0 calls vs2ReadEEPROMBlock [0x10014468] with a0=sp-96, a1=0x0, a2=sp-72, a3=0x4.
  The `beq` branch at 0x1001380c targets 0x100138b0, is taken when at(?) == v0(=-0x1), and falls through when at(?) != v0(=-0x1).
  The `beq` branch at 0x10013858 targets 0x100138d4, is taken when v0(=ret(setjmp)) == 0, and falls through when v0(=ret(setjmp)) != 0.
  The `beq` branch at 0x100138cc targets 0x10013894 and is always taken.
  The `beq` branch at 0x10013908 targets 0x10013864 and is always taken.
  The return at 0x100138a8 has v0 = one of 0x0, 0x1.

- `venice_get_vs2_xilinx_config` in `usr/gfx/setmon` at 0x10013910 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10013910-0x10013a50 (320 bytes).
  It occupies 320 bytes.
  3 such `lw` accesses load 4 bytes from (sym(vs2_xilii_files) + (a0 << 0x2)) +0x0, including `lw` at 0x1001394c, `lw` at 0x10013a18, `lw` at 0x10013a38.
  The `lbu` at 0x10013954 loads 1 byte from abs 0x10043030.
  The `lw` at 0x10013a3c loads 4 bytes from sym(vs2ProductName) +0x0.
  The `jal` at 0x10013948 calls venice_grok_vs2_fname [0x10013a50] with a0=[(sym(vs2_xilii_files) + (a0 << 0x2))], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100139a8 calls printf with a0=0x1003a7b0, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x100139bc calls read_xilinx_file [0x10018b3c] with a0=one of 0x6, 0x8, a1=0x10043030, a2=?, a3=?.
  The `jalr` at 0x100139fc calls printf with a0=0x1003a7e8, a1=0x10043030, a2=?, a3=?.
  The `jalr` at 0x10013a1c calls printf with a0=0x1003a720, a1=[(sym(vs2_xilii_files) + (a0 << 0x2))], a2=?, a3=?.
  The `jalr` at 0x10013a40 calls syslog with a0=0x2, a1=0x1003a758, a2=[(sym(vs2_xilii_files) + (a0 << 0x2))], a3=[sym(vs2ProductName)].
  The `beq` branch at 0x10013958 targets 0x10013a0c, is taken when t8(=[0x10043030]:1) == 0, and falls through when t8(=[0x10043030]:1) != 0.
  The `beq` branch at 0x10013964 targets 0x100139b8, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x10013970 targets 0x100139b8, is taken when s0(=a0) == t9(=0x1), and falls through when s0(=a0) != t9(=0x1).
  The `beq` branch at 0x10013978 targets 0x100139b8, is taken when s0(=a0) == ra(=0x4), and falls through when s0(=a0) != ra(=0x4).
  The `beq` branch at 0x10013980 targets 0x100139e8, is taken when s0(=a0) == at(=0x2), and falls through when s0(=a0) != at(=0x2).
  The `beq` branch at 0x1001398c targets 0x100139e8, is taken when s0(=a0) == v1(=0x3), and falls through when s0(=a0) != v1(=0x3).
  The `beq` branch at 0x10013994 targets 0x100139e8, is taken when s0(=a0) == a1(=0x5), and falls through when s0(=a0) != a1(=0x5).
  The `beq` branch at 0x100139b0 targets 0x100139d0 and is always taken.
  The `beq` branch at 0x100139c4 targets 0x100139f0, is taken when v0(=ret(read_xilinx_file)) == 0, and falls through when v0(=ret(read_xilinx_file)) != 0.
  The `beq` branch at 0x100139e8 targets 0x100139bc and is always taken.
  The `beq` branch at 0x10013a04 targets 0x100139d0 and is always taken.
  The `beq` branch at 0x10013a48 targets 0x10013964 and is always taken.
  The return at 0x100139e0 has v0 = one of 0x0, ret(read_xilinx_file).

- `venice_free_vs2_xilinx_config` in `usr/gfx/setmon` at 0x10013b64 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10013b64-0x10013b98 (52 bytes).
  It occupies 52 bytes.
  The `jalr` at 0x10013b80 calls free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10013b90 has v0 = ret(free).

- `vs2_loaducode` in `usr/gfx/setmon` at 0x10013b98 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10013b98-0x100140ec (1364 bytes).
  It occupies 1364 bytes.
  The `jalr` at 0x10013bd4 calls getenv with a0=0x1003a830, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10013be8 calls strcpy with a0=sp-4016, a1=ret(getenv), a2=?, a3=?.
  The `jalr` at 0x10013c08 calls strcat with a0=sp-4016, a1=0x1003a860, a2=?, a3=?.
  The `jalr` at 0x10013c1c calls strcat with a0=sp-4016, a1=a5 at entry (arg5), a2=?, a3=?.
  The `jalr` at 0x10013c40 calls fprintf with a0=sym(__iob)+32, a1=0x1003a880, a2=sp-4016, a3=?.
  The `jalr` at 0x10013c54 calls fopen with a0=sp-4016, a1=0x10042130, a2=?, a3=?.
  The `jalr` at 0x10013c84 calls fread with a0=sp-3760, a1=0x1, a2=0x2c, a3=ret(fopen).
  The `jalr` at 0x10013ca8 calls fprintf with a0=sym(__iob)+32, a1=0x1003a8c0, a2=sp-4016, a3=?.
  The `jalr` at 0x10013cb4 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013cd8 calls fprintf with a0=sym(__iob)+32, a1=0x1003a8e0, a2=?, a3=0x4581.
  The `jalr` at 0x10013d18 calls fread with a0=sp-3712, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10013d3c calls fread with a0=sp-3708, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10013d5c calls fprintf with a0=sym(__iob)+32, a1=0x1003a908, a2=sp-4016, a3=?.
  The `jalr` at 0x10013d68 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013d80 calls fread with a0=sp-3704, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10013da0 calls fprintf with a0=sym(__iob)+32, a1=0x1003a908, a2=sp-4016, a3=?.
  The `jalr` at 0x10013dac calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013dd4 calls fprintf with a0=sym(__iob)+32, a1=0x1003a930, a2=sp-4016, a3=?.
  The `jalr` at 0x10013de8 calls fprintf with a0=sym(__iob)+32, a1=0x1003a958, a2=?, a3=?.
  The `jalr` at 0x10013e04 calls fprintf with a0=sym(__iob)+32, a1=0x1003a988, a2=?, a3=0x44.
  The `jalr` at 0x10013e10 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013e3c calls fread with a0=sp-3712, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10013e58 calls fprintf with a0=sym(__iob)+32, a1=0x1003a908, a2=sp-4016, a3=?.
  The `jalr` at 0x10013e64 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013e8c calls fread with a0=sp-3696, a1=0x1, a2=0x44, a3=ret(fopen).
  The `jalr` at 0x10013eac calls fprintf with a0=sym(__iob)+32, a1=0x1003a908, a2=sp-4016, a3=?.
  The `jalr` at 0x10013eb8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013ed4 calls fread with a0=sp-3708, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10013ef4 calls fprintf with a0=sym(__iob)+32, a1=0x1003a908, a2=sp-4016, a3=?.
  The `jalr` at 0x10013f00 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013f18 calls fread with a0=sp-3704, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10013f38 calls fprintf with a0=sym(__iob)+32, a1=0x1003a908, a2=sp-4016, a3=?.
  The `jalr` at 0x10013f44 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013f6c calls fprintf with a0=sym(__iob)+32, a1=0x1003a930, a2=sp-4016, a3=?.
  The `jalr` at 0x10013f80 calls fprintf with a0=sym(__iob)+32, a1=0x1003a9a8, a2=?, a3=?.
  The `jalr` at 0x10013f8c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10013fb8 calls fread with a0=sp-3712, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10013fd4 calls fprintf with a0=sym(__iob)+32, a1=0x1003a908, a2=sp-4016, a3=?.
  The `jalr` at 0x10013fe0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10014008 calls fread with a0=sp-3624, a1=0x1, a2=0xda8, a3=ret(fopen).
  The `jalr` at 0x10014028 calls fprintf with a0=sym(__iob)+32, a1=0x1003a908, a2=sp-4016, a3=?.
  The `jalr` at 0x10014034 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x10014064 calls loadVS2VOFFromData [0x10015f14] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=sp-3696, a6=sp-3624.
  The `jalr` at 0x100140a4 calls fprintf with a0=sym(__iob)+32, a1=0x1003a908, a2=sp-4016, a3=?.
  The `jalr` at 0x100140d0 calls fprintf with a0=sym(__iob)+32, a1=0x1003a890, a2=sp-4016, a3=?.
  The `jalr` at 0x100140dc calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10013bdc targets 0x10013bf8, is taken when v0(=ret(getenv)) == 0, and falls through when v0(=ret(getenv)) != 0.
  The `beq` branch at 0x10013bf0 targets 0x10013c00 and is always taken.
  The `beq` branch at 0x10013c64 targets 0x100140c0, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x10013c90 targets 0x10013cc0, is taken when t8(=0x2c) == v0(=ret(fread)), and falls through when t8(=0x2c) != v0(=ret(fread)).
  The `beq` branch at 0x10013cc4 targets 0x10013ce8, is taken when a2(?) == a3(=0x4581), and falls through when a2(?) != a3(=0x4581).
  The `beq` branch at 0x10013ce0 targets 0x10014070 and is always taken.
  The `beq` branch at 0x10013cf8 targets 0x10013d2c, is taken when a2(?) == a3(=0x2c), and falls through when a2(?) != a3(=0x2c).
  The `bne` branch at 0x10013d20 targets 0x10014094, is taken when s6(=0x1) != v0(=ret(fread)), and falls through when s6(=0x1) == v0(=ret(fread)).
  The `bne` branch at 0x10013d28 targets 0x10013d08, is taken when s2(?) != s7(=-0x1), and falls through when s2(?) == s7(=-0x1).
  The `beq` branch at 0x10013d48 targets 0x10013d70, is taken when s2(=0x4) == v0(=ret(fread)), and falls through when s2(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x10013d88 targets 0x10013db8, is taken when s2(=0x4) == v0(=ret(fread)), and falls through when s2(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x10013dbc targets 0x10013e1c, is taken when a2(?) == v0(=0x44), and falls through when a2(?) != v0(=0x44).
  The `beq` branch at 0x10013e24 targets 0x10013e78, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x10013e44 targets 0x10013e6c, is taken when s6(=0x1) == v0(=ret(fread)), and falls through when s6(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x10013e70 targets 0x10013e30, is taken when s2(?) != s7(=-0x1), and falls through when s2(?) == s7(=-0x1).
  The `beq` branch at 0x10013e94 targets 0x10013ec4, is taken when s2(=0x44) == v0(=ret(fread)), and falls through when s2(=0x44) != v0(=ret(fread)).
  The `beq` branch at 0x10013edc targets 0x10013f0c, is taken when s2(=0x4) == v0(=ret(fread)), and falls through when s2(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x10013f20 targets 0x10013f50, is taken when s2(=0x4) == v0(=ret(fread)), and falls through when s2(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x10013f54 targets 0x10013f98, is taken when a2(?) == s6(=0xda8), and falls through when a2(?) != s6(=0xda8).
  The `beq` branch at 0x10013f98 targets 0x10013ff4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10013fc0 targets 0x10013fe8, is taken when s6(=0x1) == v0(=ret(fread)), and falls through when s6(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x10013fec targets 0x10013fac, is taken when s2(?) != s7(=-0x1), and falls through when s2(?) == s7(=-0x1).
  The `beq` branch at 0x10014010 targets 0x10014040, is taken when s2(=0xda8) == v0(=ret(fread)), and falls through when s2(=0xda8) != v0(=ret(fread)).
  The `beq` branch at 0x100140b8 targets 0x10014070 and is always taken.
  The `beq` branch at 0x100140e4 targets 0x10013c70 and is always taken.
  The return at 0x1001408c has v0 = one of 0x0, 0x1.

- `vs2GetHphaseShadow` in `usr/gfx/setmon` at 0x100141b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100141b0-0x1001420c (92 bytes).
  It occupies 92 bytes.
  The `sw` at 0x100141e8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x10014200 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x100141d8 calls vs2GetShadow [0x100140ec] with a0=a0 at entry (arg0), a1=sp-112, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10014204 has v0 = 0x0.

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

- `vs2DefaultEEPROMValues` in `usr/gfx/setmon` at 0x10014288 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10014288-0x10014468 (480 bytes).
  It occupies 480 bytes.
  The `lw` at 0x100142b4 loads 4 bytes from abs 0x1003aa80.
  The `lbu` at 0x100142bc loads 1 byte from abs 0x1003aa9e.
  The `lhu` at 0x100142c0 loads 2 bytes from abs 0x1003aa9c.
  The `lw` at 0x100142c4 loads 4 bytes from abs 0x1003aa98.
  The `lw` at 0x100142c8 loads 4 bytes from abs 0x1003aa94.
  The `lw` at 0x100142cc loads 4 bytes from abs 0x1003aa90.
  The `lw` at 0x100142d0 loads 4 bytes from abs 0x1003aa8c.
  The `lw` at 0x100142d4 loads 4 bytes from abs 0x1003aa88.
  The `lw` at 0x100142dc loads 4 bytes from abs 0x1003aa84.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10014324, `sw` at 0x10014328, `sw` at 0x1001432c.
  The `sdc1` at 0x10014384 stores 8 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x10014388, `sb` at 0x10014398, `sb` at 0x100143a0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1001438c, `lw` at 0x10014394.
  The `jal` at 0x100143e4 calls vs2WriteEEPROMData [0x10014750] with a0=a0 at entry (arg0), a1=sp-8704, a2=0x0, a3=?, a4=0xffffffff80000000, a5=0x40000000, a6=0x20000000, a7=0x7fffffff.
  The `jal` at 0x1001440c calls vs2WriteEEPROMBlock [0x1001487c] with a0=a0 at entry (arg0), a1=sp-56, a2=?, a3=0x4.
  The `beq` branch at 0x1001431c targets 0x1001444c and is always taken.
  The `beq` branch at 0x1001433c targets 0x10014358, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x10014348 targets 0x10014324, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x10014350 targets 0x10014328 and is always taken.
  The `bne` branch at 0x100143bc targets 0x10014380, is taken when a2(?) < 0x6 (signed), and falls through when a2(?) >= 0x6 (signed).
  The `bne` branch at 0x100143c8 targets 0x10014374, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x100143f8 targets 0x1001445c and is always taken.
  The `beq` branch at 0x10014420 targets 0x10014430, is taken when s0(?) >= 0x8 (signed), and falls through when s0(?) < 0x8 (signed).
  The `bne` branch at 0x10014428 targets 0x10014400, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x10014454 targets 0x10014348 and is always taken.
  The `beq` branch at 0x10014460 targets 0x10014428 and is always taken.
  The return at 0x10014444 has v0 = ?.

- `vs2ReadEEPROMBlock` in `usr/gfx/setmon` at 0x10014468 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10014468-0x100145bc (340 bytes).
  It occupies 340 bytes.
  The `lw` at 0x100144f0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x1001451c loads 1 byte from ?.
  The `sb` at 0x10014528 stores 1 byte to ?.
  The `jal` at 0x10014500 calls (unnamed) [0x100145bc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100145a0 calls (unnamed) [0x100145bc] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x100144cc targets 0x10014574, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x100144e0 targets 0x10014538 and is always taken.
  The `beq` branch at 0x1001450c targets 0x1001452c, is taken when t9(?) == s2(=-0x1), and falls through when t9(?) != s2(=-0x1).
  The `bne` branch at 0x10014524 targets 0x10014514, is taken when a5(?) != s2(=-0x1), and falls through when a5(?) == s2(=-0x1).
  The `beq` branch at 0x10014530 targets 0x10014574, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x10014540 targets 0x1001454c, is taken when a5(?) < 0x2000 (signed), and falls through when a5(?) >= 0x2000 (signed).
  The `beq` branch at 0x10014550 targets 0x10014560, is taken when s3(?) >= a1(?) (signed), and falls through when s3(?) < a1(?) (signed).
  The `beq` branch at 0x10014558 targets 0x100144e8 and is always taken.
  The `beq` branch at 0x10014560 targets 0x100144e8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1001456c targets 0x100144e8 and is always taken.
  The return at 0x100145b4 has v0 = ret(0x100145bc).

- `vs2ReadEEPROMCode` in `usr/gfx/setmon` at 0x10014610 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10014610-0x1001464c (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x10014634 calls vs2ReadEEPROMBlock [0x10014468] with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=0xc000.
  The return at 0x10014644 has v0 = ret(vs2ReadEEPROMBlock).

- `vs2ReadEEPROMData` in `usr/gfx/setmon` at 0x1001464c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001464c-0x10014704 (184 bytes).
  It occupies 184 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x10014680, `lw` at 0x100146c0.
  The `lw` at 0x100146a4 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x100146a8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `jal` at 0x10014678 calls vs2ReadEEPROMBlock [0x10014468] with a0=a0 at entry (arg0), a1=0xc000, a2=a1 at entry (arg1), a3=0x21c8.
  The `jal` at 0x1001469c calls (unnamed) [0x1001420c] with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `bne` branch at 0x10014688 targets 0x10014694, is taken when a1(=[a1+4]) < 0x21c9 (unsigned), and falls through when a1(=[a1+4]) >= 0x21c9 (unsigned).
  The `bne` branch at 0x100146bc targets 0x100146cc, is taken when a6(=[a1+12]) < 0x2 (unsigned), and falls through when a6(=[a1+12]) >= 0x2 (unsigned).
  The `bne` branch at 0x100146c4 targets 0x100146dc, is taken when a2(=[a1+8]) != v0(=ret(0x1001420c)), and falls through when a2(=[a1+8]) == v0(=ret(0x1001420c)).
  The `bne` branch at 0x100146cc targets 0x100146dc, is taken when a1(=[a1+4]) != a0(=0x21c8), and falls through when a1(=[a1+4]) == a0(=0x21c8).
  The `beq` branch at 0x100146d4 targets 0x100146ec, is taken when a6(=[a1+12]) == a5(=0x2), and falls through when a6(=[a1+12]) != a5(=0x2).
  The return at 0x100146e4 has v0 = 0x0.
  The return at 0x100146fc has v0 = 0x1.

- `vs2WriteEEPROMCode` in `usr/gfx/setmon` at 0x10014704 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10014704-0x10014750 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x10014738 calls vs2WriteEEPROMBlock [0x1001487c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=?.
  The `beq` branch at 0x1001471c targets 0x10014734, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x10014728 targets 0x10014734, is taken when a3(=0xc000) < a2 (signed), and falls through when a3(=0xc000) >= a2 (signed).
  The return at 0x10014748 has v0 = ret(vs2WriteEEPROMBlock).

- `vs2WriteEEPROMData` in `usr/gfx/setmon` at 0x10014750 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10014750-0x1001487c (300 bytes).
  It occupies 300 bytes.
  The `sw` at 0x100147bc stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `sw` at 0x100147c8 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0x100147d0 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `sw` at 0x100147d4 stores 4 bytes to a1 (arg1 at entry) +0x8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10014814, `lbu` at 0x10014818.
  The `jal` at 0x100147a0 calls vs2ReadEEPROMData [0x1001464c] with a0=a0 at entry (arg0), a1=sp-8720, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100147c4 calls (unnamed) [0x1001420c] with a0=a1 at entry (arg1), a1=0x21c8, a2=0x21c8, a3=?.
  The `jal` at 0x10014830 calls vs2WriteEEPROMBlock [0x1001487c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=0x1.
  The `beq` branch at 0x1001477c targets 0x10014798, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x1001478c targets 0x10014798, is taken when a2 >= s4(=0x21c8) (signed), and falls through when a2 < s4(=0x21c8) (signed).
  The `blez` branch at 0x100147e4 targets 0x10014854, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0x100147f0 targets 0x10014814 and is always taken.
  The `beq` branch at 0x1001480c targets 0x10014854, is taken when s3(?) >= s4(?) (signed), and falls through when s3(?) < s4(?) (signed).
  The `beq` branch at 0x1001481c targets 0x100147f8, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `bne` branch at 0x1001484c targets 0x10014814, is taken when s3(?) < s4(?) (signed), and falls through when s3(?) >= s4(?) (signed).
  The return at 0x10014874 has v0 = one of ret(0x1001420c), ?, ret(vs2WriteEEPROMBlock).

- `vs2WriteEEPROMBlock` in `usr/gfx/setmon` at 0x1001487c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001487c-0x100149f8 (380 bytes).
  It occupies 380 bytes.
  The `sb` at 0x10014900 stores 1 byte to ?.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10014920, `lbu` at 0x10014924, `lbu` at 0x100149ac.
  The `lw` at 0x10014988 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `jal` at 0x10014904 calls vs2Delay [0x10013660] with a0=0x2710, a1=?, a2=?, a3=?.
  The `jal` at 0x10014998 calls (unnamed) [0x100145bc] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x100149dc calls (unnamed) [0x100145bc] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x100148e0 targets 0x100149b0, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0x100148f4 targets 0x1001494c and is always taken.
  The `blez` branch at 0x10014918 targets 0x10014940, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `bne` branch at 0x10014928 targets 0x100148fc, is taken when t9(?) != a4(?), and falls through when t9(?) == a4(?).
  The `bgtz` branch at 0x10014938 targets 0x10014920, is taken when ra(?) > 0 (signed), and falls through when ra(?) <= 0 (signed).
  The `beq` branch at 0x10014944 targets 0x100149b0, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x10014954 targets 0x10014960, is taken when a5(?) < 0x2000 (signed), and falls through when a5(?) >= 0x2000 (signed).
  The `beq` branch at 0x10014964 targets 0x10014974, is taken when s3(?) >= a1(?) (signed), and falls through when s3(?) < a1(?) (signed).
  The `beq` branch at 0x1001496c targets 0x10014980 and is always taken.
  The `bne` branch at 0x10014974 targets 0x10014980, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `blez` branch at 0x100149a0 targets 0x10014940, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `beq` branch at 0x100149a8 targets 0x10014924 and is always taken.
  The return at 0x100149f0 has v0 = ret(0x100145bc).

- `venice_clock_vs2_serial_dataBit` in `usr/gfx/setmon` at 0x100149f8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100149f8-0x10014a50 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x10014a20 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=0x4290, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x10014a34 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=0x4280, a2=0x1, a3=?.
  The return at 0x10014a48 has v0 = ret(vs2WriteByte).

- `venice_load_vs2_clockDivider` in `usr/gfx/setmon` at 0x10014f18 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10014f18-0x100150c0 (424 bytes).
  It occupies 424 bytes.
  The `jal` at 0x10014fb4 calls vs2RegisterClearBit [0x10012c04] with a0=a0 at entry (arg0), a1=0x4020, a2=0x8, a3=?.
  The `jal` at 0x10014fd4 calls venice_clock_vs2_serial_dataBit [0x100149f8] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x10015000 calls venice_clock_vs2_serial_dataBit [0x100149f8] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x10015020 calls venice_clock_vs2_serial_dataBit [0x100149f8] with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x1001504c calls venice_clock_vs2_serial_dataBit [0x100149f8] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x10015068 calls venice_clock_vs2_serial_dataBit [0x100149f8] with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x10015090 calls vs2RegisterSetBit [0x10012c6c] with a0=a0 at entry (arg0), a1=0x4020, a2=0x8, a3=?.
  The `jal` at 0x100150a4 calls vs2RegisterClearBit [0x10012c04] with a0=a0 at entry (arg0), a1=0x4020, a2=0x8, a3=?.
  The `beq` branch at 0x10014f7c targets 0x10014f98, is taken when a3(?) >= s4(?) (signed), and falls through when a3(?) < s4(?) (signed).
  The `bne` branch at 0x10014f88 targets 0x10014f98, is taken when a4(?) < 0xb (signed), and falls through when a4(?) >= 0xb (signed).
  The `beq` branch at 0x10014fc8 targets 0x10014fe8 and is always taken.
  The `blez` branch at 0x10014fe0 targets 0x10015010, is taken when s6(?) <= 0 (signed), and falls through when s6(?) > 0 (signed).
  The `bne` branch at 0x10014ff0 targets 0x10014fd0, is taken when (s5(?) & a3(?)) != 0, and falls through when (s5(?) & a3(?)) == 0.
  The `beq` branch at 0x10015008 targets 0x10014fe0 and is always taken.
  The `beq` branch at 0x10015014 targets 0x10015034 and is always taken.
  The `blez` branch at 0x1001502c targets 0x1001505c, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `bne` branch at 0x1001503c targets 0x1001501c, is taken when (s4(?) & a4(?)) != 0, and falls through when (s4(?) & a4(?)) == 0.
  The `beq` branch at 0x10015054 targets 0x1001502c and is always taken.
  The return at 0x100150b8 has v0 = ret(vs2RegisterClearBit).

- `loadVofToDataStructure` in `usr/gfx/setmon` at 0x100159d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100159d4-0x10015e50 (1148 bytes).
  It occupies 1148 bytes.
  The `jalr` at 0x10015a04 calls fopen with a0=a0 at entry (arg0), a1=0x10042138, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10015a50 calls fread with a0=sp-176, a1=0x1, a2=0x2c, a3=ret(fopen).
  The `jalr` at 0x10015a74 calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015a80 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015aa0 calls fprintf with a0=sym(__iob)+32, a1=0x1003ae08, a2=?, a3=0x4581.
  The `jalr` at 0x10015aac calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015ad8 calls fread with a0=sp-128, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10015af4 calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015b00 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015b28 calls fread with a0=sp-124, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10015b4c calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015b58 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015b70 calls fread with a0=sp-120, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10015b90 calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015b9c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015bc0 calls fprintf with a0=sym(__iob)+32, a1=0x1003ae28, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015bcc calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015bf8 calls fread with a0=sp-128, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10015c18 calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015c24 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015c54 calls fread with a0=a1 at entry (arg1), a1=0x1, a2=0x44, a3=ret(fopen).
  The `jalr` at 0x10015c70 calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015c7c calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015c94 calls fread with a0=sp-124, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10015cb4 calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015cc0 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015cd8 calls fread with a0=sp-120, a1=0x1, a2=0x4, a3=ret(fopen).
  The `jalr` at 0x10015cf4 calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015d00 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015d24 calls fprintf with a0=sym(__iob)+32, a1=0x1003ae28, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015d30 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015d5c calls fread with a0=sp-128, a1=0x1, a2=0x1, a3=ret(fopen).
  The `jalr` at 0x10015d78 calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015d84 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015db0 calls fread with a0=a2 at entry (arg2), a1=0x1, a2=0xda8, a3=ret(fopen).
  The `jalr` at 0x10015dcc calls fprintf with a0=sym(__iob)+32, a1=0x1003ade8, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015dd8 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10015e04 calls close with a0=ret(fopen), a1=?, a2=?, a3=?.
  The `jalr` at 0x10015e34 calls fprintf with a0=sym(__iob)+32, a1=0x1003adc0, a2=a0 at entry (arg0), a3=?.
  The `jalr` at 0x10015e40 calls exit with a0=0x1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10015a28 targets 0x10015e20, is taken when v0(=ret(fopen)) == 0, and falls through when v0(=ret(fopen)) != 0.
  The `beq` branch at 0x10015a5c targets 0x10015a8c, is taken when s6(=0x2c) == v0(=ret(fread)), and falls through when s6(=0x2c) != v0(=ret(fread)).
  The `beq` branch at 0x10015a90 targets 0x10015ab4, is taken when a2(?) == a3(=0x4581), and falls through when a2(?) != a3(=0x4581).
  The `beq` branch at 0x10015ab8 targets 0x10015b18, is taken when s3(?) == s6(=0x2c), and falls through when s3(?) != s6(=0x2c).
  The `beq` branch at 0x10015ae0 targets 0x10015b08, is taken when s7(=0x1) == v0(=ret(fread)), and falls through when s7(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x10015b10 targets 0x10015acc, is taken when s3(?) != a2(=-0x1), and falls through when s3(?) == a2(=-0x1).
  The `beq` branch at 0x10015b34 targets 0x10015b64, is taken when s6(=0x4) == v0(=ret(fread)), and falls through when s6(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x10015b78 targets 0x10015ba8, is taken when s6(=0x4) == v0(=ret(fread)), and falls through when s6(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x10015bac targets 0x10015bd4, is taken when a2(?) == s7(=0x44), and falls through when a2(?) != s7(=0x44).
  The `beq` branch at 0x10015bd8 targets 0x10015c3c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10015c00 targets 0x10015c30, is taken when s7(=0x1) == v0(=ret(fread)), and falls through when s7(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x10015c34 targets 0x10015bec, is taken when s3(?) != a2(=-0x1), and falls through when s3(?) == a2(=-0x1).
  The `beq` branch at 0x10015c5c targets 0x10015c84, is taken when s7(=0x44) == v0(=ret(fread)), and falls through when s7(=0x44) != v0(=ret(fread)).
  The `beq` branch at 0x10015c9c targets 0x10015ccc, is taken when s6(=0x4) == v0(=ret(fread)), and falls through when s6(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x10015ce0 targets 0x10015d08, is taken when s6(=0x4) == v0(=ret(fread)), and falls through when s6(=0x4) != v0(=ret(fread)).
  The `beq` branch at 0x10015d10 targets 0x10015d38, is taken when a2(?) == s6(=0xda8), and falls through when a2(?) != s6(=0xda8).
  The `beq` branch at 0x10015d3c targets 0x10015d9c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10015d64 targets 0x10015d8c, is taken when s7(=0x1) == v0(=ret(fread)), and falls through when s7(=0x1) != v0(=ret(fread)).
  The `bne` branch at 0x10015d94 targets 0x10015d50, is taken when s3(?) != a2(=-0x1), and falls through when s3(?) == a2(=-0x1).
  The `beq` branch at 0x10015db8 targets 0x10015de0, is taken when s6(=0xda8) == v0(=ret(fread)), and falls through when s6(=0xda8) != v0(=ret(fread)).
  The `beq` branch at 0x10015e48 targets 0x10015a34 and is always taken.
  The return at 0x10015e18 has v0 = ret(close).

- `loadVS2ModeDG2VOF` in `usr/gfx/setmon` at 0x10015e50 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10015e50-0x10015f14 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0x10015f00 loads 4 bytes from sym(vs2ProductName) +0x0.
  The `jal` at 0x10015e7c calls vs2Open [0x10013708] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10015e8c calls vs2ReadEEPROMData [0x1001464c] with a0=ret(vs2Open), a1=sp-9696, a2=?, a3=?.
  The `jal` at 0x10015ea4 calls generateFilename [0x10012564] with a0=sp-2532, a1=0x1003ae48, a2=sp-1048, a3=?.
  The `jalr` at 0x10015ec8 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-1048, a2=0x0, a3=0x0, a4=0x1, a5=0x1, a6=a2 at entry (arg2).
  The `jalr` at 0x10015f04 calls syslog with a0=0x2, a1=0x1003ae58, a2=[sym(vs2ProductName)], a3=sp-1048.
  The `bltz` branch at 0x10015ed4 targets 0x10015eec, is taken when v0(=ret(?)) < 0 (signed), and falls through when v0(=ret(?)) >= 0 (signed).
  The `beq` branch at 0x10015f0c targets 0x10015edc and is always taken.
  The return at 0x10015ee4 has v0 = one of ret(?), ?.

- `loadVS2VOFFromData` in `usr/gfx/setmon` at 0x10015f14 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10015f14-0x10015fe8 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x10015f64 calls vs2WriteXilinxReg [0x1001316c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=0x1.
  The `jal` at 0x10015f84 calls venice_loadsection_vs2_top [0x100150c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10015fa4 calls venice_loadsection_vs2_body [0x10015570] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a6 at entry (arg6).
  The `jal` at 0x10015fc8 calls vs2WriteXilinxReg [0x1001316c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x20, a3=0x0.
  The return at 0x10015fe0 has v0 = ret(vs2WriteXilinxReg).

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
  register that `vs2WriteXilinxReg` selects with 0x20 and 1 or 0 as the fourth argument is the byte
  at offset 0x20 of the register block the second argument selects (the six-instruction routine is the
  same in `setmon`, 0x1001316c); its meaning is unknown. Unknown: what the word at +0xd40 belongs to and whose pointer it is; the
  callers of this routine pass that pointer in, and the bundle has none of their notes.
  Evidence grade: inferred.

- `venice_vs2init` in `usr/gfx/setmon` at 0x10016344 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10016344-0x100165c4 (640 bytes).
  It occupies 640 bytes.
  2 such `lw` accesses load 4 bytes from sym(vs2ProductName) +0x0, including `lw` at 0x10016428, `lw` at 0x100164c8.
  The `lwu` at 0x100164e0 loads 4 bytes from ?.
  The `jal` at 0x10016390 calls vs2ReadEEPROMData [0x1001464c] with a0=a0 at entry (arg0), a1=sp-8752, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100163b0 calls (unnamed) [0x100168f0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-8752, a3=ret(vs2ReadEEPROMData).
  The `jal` at 0x100163cc calls (unnamed) [0x100165c4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-8752, a3=ret(vs2ReadEEPROMData).
  The `jal` at 0x100163e8 calls (unnamed) [0x10016844] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-8752, a3=ret(vs2ReadEEPROMData).
  The `jal` at 0x10016404 calls (unnamed) [0x10016c1c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-8752, a3=ret(vs2ReadEEPROMData).
  The `jalr` at 0x10016424 calls printf with a0=0x1003aec0, a1=[sym(vs2ProductName)], a2=?, a3=?.
  The `jal` at 0x10016448 calls venice_load_vs2_xilinx [0x10017c28] with a0=a0 at entry (arg0), a1=0x0, a2=sym(venice_get_vs2_xilinx_config), a3=sym(venice_free_vs2_xilinx_config).
  The `jal` at 0x10016460 calls venice_load_vs2_xilinx [0x10017c28] with a0=a0 at entry (arg0), a1=0x1, a2=sym(venice_get_vs2_xilinx_config), a3=sym(venice_free_vs2_xilinx_config).
  The `jal` at 0x10016478 calls venice_load_vs2_xilinx [0x10017c28] with a0=a0 at entry (arg0), a1=0x2, a2=sym(venice_get_vs2_xilinx_config), a3=sym(venice_free_vs2_xilinx_config).
  The `jal` at 0x10016490 calls venice_load_vs2_xilinx [0x10017c28] with a0=a0 at entry (arg0), a1=0x3, a2=sym(venice_get_vs2_xilinx_config), a3=sym(venice_free_vs2_xilinx_config).
  The `jalr` at 0x100164cc calls printf with a0=0x1003aed8, a1=[sym(vs2ProductName)], a2=?, a3=?.
  The `jal` at 0x100164f0 calls loadVS2VOFFromData [0x10015f14] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x10016504 calls vs2GetHphaseShadow [0x100141b0] with a0=a0 at entry (arg0), a1=sp-104, a2=sp-100, a3=?.
  The `jal` at 0x1001652c calls vs2WriteXilinxReg [0x1001316c] with a0=a0 at entry (arg0), a1=0x4200, a2=0x2, a3=?.
  The `jal` at 0x10016554 calls vs2WriteXilinxReg [0x1001316c] with a0=a0 at entry (arg0), a1=0x4200, a2=0xc, a3=?.
  The `beq` branch at 0x1001640c targets 0x10016430, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `beq` branch at 0x100164a8 targets 0x10016574 and is always taken.
  The `beq` branch at 0x100164b0 targets 0x100164d8, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `beq` branch at 0x1001656c targets 0x10016590, is taken when s1(?) >= 0x2 (signed), and falls through when s1(?) < 0x2 (signed).
  The `beq` branch at 0x10016580 targets 0x100164b0, is taken when t8(?) == s1(?), and falls through when t8(?) != s1(?).
  The `beq` branch at 0x10016588 targets 0x100164b0 and is always taken.
  The return at 0x100165bc has v0 = ret(vs2WriteXilinxReg).

- `vs2MapScreenToChannel` in `usr/gfx/setmon` at 0x10016c60 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10016c60-0x10016ce8 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x10016ca0 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=0x42a0, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x10016cb4 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=0x42b0, a2=?, a3=?.
  The `jal` at 0x10016ccc calls vs2RegisterClearBit [0x10012c04] with a0=a0 at entry (arg0), a1=0x42a0, a2=0x1, a3=?.
  The return at 0x10016ce0 has v0 = ret(vs2RegisterClearBit).

- `vs2WriteDACAlternateRAM` in `usr/gfx/setmon` at 0x10016ce8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10016ce8-0x10016d9c (180 bytes).
  It occupies 180 bytes.
  The `lbu` at 0x10016d64 loads 1 byte from ?.
  The `jal` at 0x10016d28 calls (unnamed) [0x10016f20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016d60 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10016d40 targets 0x10016d74, is taken when s0(=a3-1) == s5(=-0x1), and falls through when s0(=a3-1) != s5(=-0x1).
  The `bne` branch at 0x10016d6c targets 0x10016d54, is taken when s0(?) != s5(=-0x1), and falls through when s0(?) == s5(=-0x1).
  The return at 0x10016d94 has v0 = one of ret(0x10016f20), ret(vs2WriteByte).

- `vs2ReadDACCommandRegister` in `usr/gfx/setmon` at 0x10016d9c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10016d9c-0x10016e00 (100 bytes).
  It occupies 100 bytes.
  The `jal` at 0x10016dc8 calls (unnamed) [0x10016f20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016de4 calls vs2ReadByte [0x10012bf0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x10016df8 has v0 = ret(vs2ReadByte).

- `vs2WriteDACCommandRegister` in `usr/gfx/setmon` at 0x10016e00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10016e00-0x10016e6c (108 bytes).
  It occupies 108 bytes.
  The `jal` at 0x10016e30 calls (unnamed) [0x10016f20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016e50 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?.
  The return at 0x10016e64 has v0 = ret(vs2WriteByte).

- `vs2WriteDACPrimaryRAM` in `usr/gfx/setmon` at 0x10016e6c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10016e6c-0x10016f20 (180 bytes).
  It occupies 180 bytes.
  The `lbu` at 0x10016ee8 loads 1 byte from ?.
  The `jal` at 0x10016eac calls (unnamed) [0x10016f20] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10016ee4 calls vs2WriteByte [0x10013108] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10016ec4 targets 0x10016ef8, is taken when s0(=a3-1) == s5(=-0x1), and falls through when s0(=a3-1) != s5(=-0x1).
  The `bne` branch at 0x10016ef0 targets 0x10016ed8, is taken when s0(?) != s5(=-0x1), and falls through when s0(?) == s5(=-0x1).
  The return at 0x10016f18 has v0 = one of ret(0x10016f20), ret(vs2WriteByte).

- `vs2SetDACGamma` in `usr/gfx/setmon` at 0x10016f80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10016f80-0x10017098 (280 bytes).
  It occupies 280 bytes.
  The `sb` at 0x10017014 stores 1 byte to ?.
  The `jalr` at 0x10016ff0 calls pow with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1001702c calls vs2WriteDACPrimaryRAM [0x10016e6c] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x0, a3=0x400, a4=sp-1120.
  The `jal` at 0x10017060 calls vs2WriteDACPrimaryRAM [0x10016e6c] with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=0x0, a3=0x400, a4=sp-1120.
  The `jal` at 0x1001707c calls vs2WriteDACPrimaryRAM [0x10016e6c] with a0=a0 at entry (arg0), a1=a4 at entry (arg4), a2=0x0, a3=0x400, a4=sp-1120.
  The `bne` branch at 0x10017010 targets 0x10016fe0, is taken when s0(?) < 0x400 (signed), and falls through when s0(?) >= 0x400 (signed).
  The return at 0x10017090 has v0 = ret(vs2WriteDACPrimaryRAM).

- `vs2DPOTDeselect` in `usr/gfx/setmon` at 0x10017098 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017098-0x10017148 (176 bytes).
  It occupies 176 bytes.
  3 such `lw` accesses load 4 bytes from abs 0x10043210, including `lw` at 0x100170f0, `lw` at 0x10017110, `lw` at 0x10017118.
  The `lbu` at 0x10017104 loads 1 byte from abs 0x10043220.
  The `ld` at 0x10017108 loads 8 bytes from abs 0x10043218.
  The `jalr` at 0x100170d4 calls __assert with a0=0x1003af00, a1=0x1003af18, a2=0x48, a3=a3 at entry (arg3).
  The `jal` at 0x100170ec calls vs2ReadByte [0x10012bf0] with a0=[0x10043210], a1=0x41a0, a2=?, a3=?.
  The `jal` at 0x100170f8 calls vs2Delay [0x10013660] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x1001710c calls vs2RegisterSetBit [0x10012c6c] with a0=[0x10043210], a1=[0x10043218]:8, a2=[0x10043220]:1, a3=?.
  The `jal` at 0x1001711c calls vs2ReadByte [0x10012bf0] with a0=[0x10043210], a1=0x41a0, a2=?, a3=?.
  The `jal` at 0x1001712c calls vs2Delay [0x10013660] with a0=0x4e20, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100170b8 targets 0x100170dc, is taken when at(=[0x10041dd4]) == v0(=0x1), and falls through when at(=[0x10041dd4]) != v0(=0x1).
  The return at 0x10017140 has v0 = ret(vs2Delay).

- `vs2DPOTEasySet` in `usr/gfx/setmon` at 0x10017148 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017148-0x1001720c (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0x10017184 loads 8 bytes from abs 0x10043210.
  The `ld` at 0x10017190 loads 8 bytes from abs 0x10043218.
  The `ld` at 0x10017194 loads 8 bytes from abs 0x10043220.
  The `jal` at 0x1001719c calls vs2DPOTDeselect [0x10017098] with a0=a0 at entry (arg0), a1=[0x10043218]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x100171b0 calls vs2DPOTSelect [0x1001720c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x100171bc calls vs2DPOTSet [0x100172dc] with a0=a3 at entry (arg3), a1=?, a2=?, a3=?.
  The `jal` at 0x100171c8 calls vs2DPOTDeselect [0x10017098] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100171e8 calls vs2DPOTSelect [0x1001720c] with a0=?, a1=?, a2=?, a3=sym(vs2DPOTSelect).
  The `jal` at 0x100171f4 calls vs2DPOTSet [0x100172dc] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10017174 targets 0x100171a4, is taken when at(=[0x10041dd4]) == 0, and falls through when at(=[0x10041dd4]) != 0.
  The `beq` branch at 0x100171d4 targets 0x100171fc, is taken when a2(=[0x10041dd4]) == 0, and falls through when a2(=[0x10041dd4]) != 0.
  The return at 0x10017204 has v0 = one of ret(vs2DPOTDeselect), ret(vs2DPOTSet).

- `vs2DPOTSelect` in `usr/gfx/setmon` at 0x1001720c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001720c-0x100172dc (208 bytes).
  It occupies 208 bytes.
  The `sw` at 0x10017268 stores 4 bytes to abs 0x10043210.
  The `sb` at 0x10017278 stores 1 byte to abs 0x10043220.
  The `sd` at 0x10017284 stores 8 bytes to abs 0x10043218.
  The `sb` at 0x100172c0 stores 1 byte to abs 0x10043221.
  The `jalr` at 0x10017250 calls __assert with a0=0x1003af28, a1=0x1003af18, a2=0xae, a3=a3 at entry (arg3).
  The `jal` at 0x10017280 calls vs2RegisterClearBit [0x10012c04] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a1 at entry (arg1), a4=0x10043210, a5=a2 at entry (arg2).
  The `jal` at 0x10017290 calls vs2ReadByte [0x10012bf0] with a0=a0 at entry (arg0), a1=0x41a0, a2=?, a3=?.
  The `jal` at 0x100172a0 calls vs2Delay [0x10013660] with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x100172bc calls vs2DPOTSet [0x100172dc] with a0=0x0, a1=?, a2=?, a3=?, a5=0x63, a6=0x10043210.
  The `beq` branch at 0x10017234 targets 0x10017258, is taken when at(=[0x10041dd4]) == 0, and falls through when at(=[0x10041dd4]) != 0.
  The return at 0x100172d4 has v0 = ret(vs2DPOTSet).

- `vs2DPOTSet` in `usr/gfx/setmon` at 0x100172dc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100172dc-0x100173d0 (244 bytes).
  It occupies 244 bytes.
  The `lbu` at 0x10017300 loads 1 byte from abs 0x10043221.
  4 such `lw` accesses load 4 bytes from abs 0x10043210, including `lw` at 0x10017338, `lw` at 0x10017348, `lw` at 0x10017378.
  The `sb` at 0x1001739c stores 1 byte to abs 0x10043221.
  The `jal` at 0x10017334 calls vs2RegisterClearBit [0x10012c04] with a0=[0x10043210], a1=0x4020, a2=0x4, a3=[0x10043221]:1, a4=0x10040000.
  The `jal` at 0x10017344 calls vs2ReadByte [0x10012bf0] with a0=[0x10043210], a1=0x41a0, a2=?, a3=?.
  The `jal` at 0x10017350 calls vs2Delay [0x10013660] with a0=0x3, a1=?, a2=?, a3=?.
  The `jal` at 0x10017374 calls vs2ToggleSerialClock [0x10013020] with a0=[0x10043210], a1=?, a2=?, a3=?.
  The `jal` at 0x100173c0 calls vs2RegisterSetBit [0x10012c6c] with a0=[0x10043210], a1=0x4020, a2=0x4, a3=[0x10043221]:1, a4=0x10040000.
  The `bltz` branch at 0x10017318 targets 0x100173b0, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `blez` branch at 0x10017320 targets 0x100173b4, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x10017368 targets 0x10017388, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x10017380 targets 0x10017374, is taken when s1(?) != s3(=-0x1), and falls through when s1(?) == s3(=-0x1).
  The `beq` branch at 0x100173c8 targets 0x10017340 and is always taken.
  The return at 0x100173a8 has v0 = one of ret(vs2Delay), ret(vs2ToggleSerialClock).

- `venice_clock_vs2_serial_dataByte` in `usr/gfx/setmon` at 0x100173d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100173d0-0x10017458 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x10017410 calls vs2WriteByte [0x10013108] with a0=[0x10041dd8], a1=0x4290, a2=?, a3=?.
  The `jal` at 0x10017424 calls vs2WriteByte [0x10013108] with a0=[0x10041dd8], a1=0x4280, a2=0x1, a3=?.
  The `bne` branch at 0x10017434 targets 0x10017400, is taken when s1(?) < 0x8 (signed), and falls through when s1(?) >= 0x8 (signed).
  The return at 0x10017450 has v0 = ret(vs2WriteByte).

- `venice_wait_vs2_vif0_configMem_clear` in `usr/gfx/setmon` at 0x10017458 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017458-0x100174e0 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x10017480 calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41b0, a2=?, a3=?.
  The `jal` at 0x100174a0 calls vs2Delay [0x10013660] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x100174c0 calls vs2Delay [0x10013660] with a0=0x5, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1001748c targets 0x100174b0, is taken when (v0(=ret(vs2ReadStatus)) & 0x10) != 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x10) == 0.
  The `beq` branch at 0x10017498 targets 0x100174b8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x100174a8 targets 0x1001747c and is always taken.
  The `bne` branch at 0x100174b0 targets 0x100174c0, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x100174b8 targets 0x100174cc and is always taken.
  The return at 0x100174d8 has v0 = one of -0x1, 0x1.

- `venice_write_vs2_vif0_program` in `usr/gfx/setmon` at 0x100174e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100174e0-0x10017540 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x1001750c calls vs2RegisterSetBit [0x10012c6c] with a0=[0x10041dd8], a1=0x4050, a2=0x4, a3=a3 at entry (arg3), a4=[0x10041dd8].
  The `jal` at 0x10017530 calls vs2RegisterClearBit [0x10012c04] with a0=[0x10041dd8], a1=0x4050, a2=0x4, a3=a3 at entry (arg3), a4=[0x10041dd8].
  The `beq` branch at 0x100174f8 targets 0x10017524, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10017538 targets 0x10017518 and is always taken.
  The return at 0x1001751c has v0 = one of ret(vs2RegisterSetBit), ret(vs2RegisterClearBit).

- `venice_check_vs2_vif0_frame_status` in `usr/gfx/setmon` at 0x10017540 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017540-0x1001759c (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x10017560 calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10017574 targets 0x10017588, is taken when (v0(=ret(vs2ReadStatus)) & 0x10) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x10) != 0.
  The return at 0x10017580 has v0 = 0x1.
  The return at 0x10017594 has v0 = 0x0.

- `venice_read_vs2_vif0_done` in `usr/gfx/setmon` at 0x1001759c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001759c-0x100175f8 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x100175bc calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x100175d0 targets 0x100175e4, is taken when (v0(=ret(vs2ReadStatus)) & 0x4) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x4) != 0.
  The return at 0x100175dc has v0 = 0x1.
  The return at 0x100175f0 has v0 = 0x0.

- `venice_wait_vs2_vif1_configMem_clear` in `usr/gfx/setmon` at 0x1001764c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1001764c-0x100176d4 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x10017674 calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41b0, a2=?, a3=?.
  The `jal` at 0x10017694 calls vs2Delay [0x10013660] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x100176b4 calls vs2Delay [0x10013660] with a0=0x5, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10017680 targets 0x100176a4, is taken when (v0(=ret(vs2ReadStatus)) & 0x20) != 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x20) == 0.
  The `beq` branch at 0x1001768c targets 0x100176ac, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1001769c targets 0x10017670 and is always taken.
  The `bne` branch at 0x100176a4 targets 0x100176b4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x100176ac targets 0x100176c0 and is always taken.
  The return at 0x100176cc has v0 = one of -0x1, 0x1.

- `venice_write_vs2_vif1_program` in `usr/gfx/setmon` at 0x100176d4 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100176d4-0x10017734 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x10017700 calls vs2RegisterSetBit [0x10012c6c] with a0=[0x10041dd8], a1=0x4050, a2=0x8, a3=a3 at entry (arg3), a4=[0x10041dd8].
  The `jal` at 0x10017724 calls vs2RegisterClearBit [0x10012c04] with a0=[0x10041dd8], a1=0x4050, a2=0x8, a3=a3 at entry (arg3), a4=[0x10041dd8].
  The `beq` branch at 0x100176ec targets 0x10017718, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1001772c targets 0x1001770c and is always taken.
  The return at 0x10017710 has v0 = one of ret(vs2RegisterSetBit), ret(vs2RegisterClearBit).

- `venice_check_vs2_vif1_frame_status` in `usr/gfx/setmon` at 0x10017734 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017734-0x10017790 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x10017754 calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10017768 targets 0x1001777c, is taken when (v0(=ret(vs2ReadStatus)) & 0x20) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x20) != 0.
  The return at 0x10017774 has v0 = 0x1.
  The return at 0x10017788 has v0 = 0x0.

- `venice_read_vs2_vif1_done` in `usr/gfx/setmon` at 0x10017790 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017790-0x100177ec (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x100177b0 calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x100177c4 targets 0x100177d8, is taken when (v0(=ret(vs2ReadStatus)) & 0x8) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x8) != 0.
  The return at 0x100177d0 has v0 = 0x1.
  The return at 0x100177e4 has v0 = 0x0.

- `venice_wait_vs2_vof0_configMem_clear` in `usr/gfx/setmon` at 0x10017840 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017840-0x100178c8 (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x10017868 calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41b0, a2=?, a3=?.
  The `jal` at 0x10017888 calls vs2Delay [0x10013660] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x100178a8 calls vs2Delay [0x10013660] with a0=0x5, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10017874 targets 0x10017898, is taken when (v0(=ret(vs2ReadStatus)) & 0x40) != 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x40) == 0.
  The `beq` branch at 0x10017880 targets 0x100178a0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x10017890 targets 0x10017864 and is always taken.
  The `bne` branch at 0x10017898 targets 0x100178a8, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x100178a0 targets 0x100178b4 and is always taken.
  The return at 0x100178c0 has v0 = one of -0x1, 0x1.

- `venice_write_vs2_vof0_program` in `usr/gfx/setmon` at 0x100178c8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100178c8-0x10017928 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x100178f4 calls vs2RegisterSetBit [0x10012c6c] with a0=[0x10041dd8], a1=0x4050, a2=0x1, a3=a3 at entry (arg3), a4=[0x10041dd8].
  The `jal` at 0x10017918 calls vs2RegisterClearBit [0x10012c04] with a0=[0x10041dd8], a1=0x4050, a2=0x1, a3=a3 at entry (arg3), a4=[0x10041dd8].
  The `beq` branch at 0x100178e0 targets 0x1001790c, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10017920 targets 0x10017900 and is always taken.
  The return at 0x10017904 has v0 = one of ret(vs2RegisterSetBit), ret(vs2RegisterClearBit).

- `venice_check_vs2_vof0_frame_status` in `usr/gfx/setmon` at 0x10017928 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017928-0x10017984 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x10017948 calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1001795c targets 0x10017970, is taken when (v0(=ret(vs2ReadStatus)) & 0x40) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x40) != 0.
  The return at 0x10017968 has v0 = 0x1.
  The return at 0x1001797c has v0 = 0x0.

- `venice_read_vs2_vof0_done` in `usr/gfx/setmon` at 0x10017984 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017984-0x100179e0 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x100179a4 calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x100179b8 targets 0x100179cc, is taken when (v0(=ret(vs2ReadStatus)) & 0x1) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x1) != 0.
  The return at 0x100179c4 has v0 = 0x1.
  The return at 0x100179d8 has v0 = 0x0.

- `venice_wait_vs2_vof1_configMem_clear` in `usr/gfx/setmon` at 0x10017a34 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017a34-0x10017abc (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0x10017a5c calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41b0, a2=?, a3=?.
  The `jal` at 0x10017a7c calls vs2Delay [0x10013660] with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x10017a9c calls vs2Delay [0x10013660] with a0=0x5, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10017a68 targets 0x10017a8c, is taken when (v0(=ret(vs2ReadStatus)) & 0x80) != 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x80) == 0.
  The `beq` branch at 0x10017a74 targets 0x10017a94, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x10017a84 targets 0x10017a58 and is always taken.
  The `bne` branch at 0x10017a8c targets 0x10017a9c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x10017a94 targets 0x10017aa8 and is always taken.
  The return at 0x10017ab4 has v0 = one of -0x1, 0x1.

- `venice_write_vs2_vof1_program` in `usr/gfx/setmon` at 0x10017abc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017abc-0x10017b1c (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x10017ae8 calls vs2RegisterSetBit [0x10012c6c] with a0=[0x10041dd8], a1=0x4050, a2=0x2, a3=a3 at entry (arg3), a4=[0x10041dd8].
  The `jal` at 0x10017b0c calls vs2RegisterClearBit [0x10012c04] with a0=[0x10041dd8], a1=0x4050, a2=0x2, a3=a3 at entry (arg3), a4=[0x10041dd8].
  The `beq` branch at 0x10017ad4 targets 0x10017b00, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10017b14 targets 0x10017af4 and is always taken.
  The return at 0x10017af8 has v0 = one of ret(vs2RegisterSetBit), ret(vs2RegisterClearBit).

- `venice_check_vs2_vof1_frame_status` in `usr/gfx/setmon` at 0x10017b1c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017b1c-0x10017b78 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x10017b3c calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41b0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10017b50 targets 0x10017b64, is taken when (v0(=ret(vs2ReadStatus)) & 0x80) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x80) != 0.
  The return at 0x10017b5c has v0 = 0x1.
  The return at 0x10017b70 has v0 = 0x0.

- `venice_read_vs2_vof1_done` in `usr/gfx/setmon` at 0x10017b78 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017b78-0x10017bd4 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x10017b98 calls vs2ReadStatus [0x10012cd0] with a0=[0x10041dd8], a1=0x41a0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x10017bac targets 0x10017bc0, is taken when (v0(=ret(vs2ReadStatus)) & 0x2) == 0, and falls through when (v0(=ret(vs2ReadStatus)) & 0x2) != 0.
  The return at 0x10017bb8 has v0 = 0x1.
  The return at 0x10017bcc has v0 = 0x0.

- `venice_load_vs2_xilinx` in `usr/gfx/setmon` at 0x10017c28 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017c28-0x10017d4c (292 bytes).
  It occupies 292 bytes.
  The `jalr` at 0x10017c58 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10017cd8 calls printf with a0=0x1003af40, a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `jalr` at 0x10017ce8 calls (unknown callee) with a0=ret(?), a1=?, a2=?, a3=?.
  The `jal` at 0x10017d00 calls (unnamed) [0x100179e0] with a0=ret(?), a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `jal` at 0x10017d14 calls (unnamed) [0x10017bd4] with a0=ret(?), a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `jal` at 0x10017d28 calls (unnamed) [0x100175f8] with a0=ret(?), a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `jal` at 0x10017d3c calls (unnamed) [0x100177ec] with a0=ret(?), a1=0x1, a2=?, a3=?, a5=0x3, a6=0x1, a7=0x4.
  The `beq` branch at 0x10017c74 targets 0x10017cc8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10017c7c targets 0x10017cf8, is taken when s0(=a1) == a0(=0x2), and falls through when s0(=a1) != a0(=0x2).
  The `beq` branch at 0x10017c84 targets 0x10017d10, is taken when s0(=a1) == a5(=0x3), and falls through when s0(=a1) != a5(=0x3).
  The `beq` branch at 0x10017c8c targets 0x10017d24, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0x10017c94 targets 0x10017d38, is taken when s0(=a1) == a6(=0x1), and falls through when s0(=a1) != a6(=0x1).
  The `beq` branch at 0x10017c9c targets 0x10017cd0, is taken when s0(=a1) == a7(=0x4), and falls through when s0(=a1) != a7(=0x4).
  The `beq` branch at 0x10017ca4 targets 0x10017cd4, is taken when s0(=a1) == v0(=0x5), and falls through when s0(=a1) != v0(=0x5).
  The `beq` branch at 0x10017cc8 targets 0x10017cb0 and is always taken.
  The `beq` branch at 0x10017cf0 targets 0x10017cac and is always taken.
  The `beq` branch at 0x10017d08 targets 0x10017ce4 and is always taken.
  The `beq` branch at 0x10017d1c targets 0x10017ce4 and is always taken.
  The `beq` branch at 0x10017d30 targets 0x10017ce4 and is always taken.
  The `beq` branch at 0x10017d44 targets 0x10017ce4 and is always taken.
  The return at 0x10017cc0 has v0 = one of ?, -0x5.

- `load_3000_serial` in `usr/gfx/setmon` at 0x10017d4c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017d4c-0x10017eb0 (356 bytes).
  It occupies 356 bytes.
  The `lw` at 0x10017e1c loads 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x8.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x10017e30, `lbu` at 0x10017e50.
  The `jalr` at 0x10017d98 calls (unknown callee) with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10017da4 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017db0 calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017dbc calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017dc8 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017dd4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017e3c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017e74 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017e8c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10017de4 targets 0x10017e0c, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `blez` branch at 0x10017e20 targets 0x10017e64, is taken when v0(=[(sym(xilinx_info) + (a5 << 0x4))+8]) <= 0 (signed), and falls through when v0(=[(sym(xilinx_info) + (a5 << 0x4))+8]) > 0 (signed).
  The `bnel` branch at 0x10017e4c targets 0x10017e34, is taken when s0(?) < 0x100 (unsigned), and falls through when s0(?) >= 0x100 (unsigned); its branch-likely delay slot `lbu a0,0(s1)` at 0x10017e50 runs only when taken and is annulled on fall-through.
  The `bgtz` branch at 0x10017e5c targets 0x10017e30, is taken when s3(?) > 0 (signed), and falls through when s3(?) <= 0 (signed).
  The `bne` branch at 0x10017e84 targets 0x10017e70, is taken when s0(?) < 0x19 (signed), and falls through when s0(?) >= 0x19 (signed).
  The `beq` branch at 0x10017e94 targets 0x10017ea4, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10017e9c targets 0x10017df0 and is always taken.
  The `beq` branch at 0x10017ea8 targets 0x10017df0 and is always taken.
  The return at 0x10017e04 has v0 = one of -0x3, -0x1, 0x1.

- `load_3000_serial_byte` in `usr/gfx/setmon` at 0x10017eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10017eb0-0x10018008 (344 bytes).
  It occupies 344 bytes.
  The `lw` at 0x10017f80 loads 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x8.
  The `lbu` at 0x10017f98 loads 1 byte from ?.
  The `jalr` at 0x10017ef8 calls (unknown callee) with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10017f04 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017f10 calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017f1c calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017f28 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017f34 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10017f9c calls (unknown callee) with a0=?, a1=0x8, a2=?, a3=?.
  The `jalr` at 0x10017fc8 calls (unknown callee) with a0=0xff, a1=0x8, a2=?, a3=?.
  The `jalr` at 0x10017fe4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10017f44 targets 0x10017f70, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `blez` branch at 0x10017f88 targets 0x10017fb4, is taken when s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) <= 0 (signed), and falls through when s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) > 0 (signed).
  The `bne` branch at 0x10017fac targets 0x10017f94, is taken when s1(?) < s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) (signed), and falls through when s1(?) >= s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) (signed).
  The `bne` branch at 0x10017fd8 targets 0x10017fc4, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x10017ff0 targets 0x10018000, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10017ff8 targets 0x10017f4c and is always taken.
  The `beq` branch at 0x10018000 targets 0x10017f50 and is always taken.
  The return at 0x10017f68 has v0 = one of -0x3, -0x1, 0x1.

- `load_4000_serial` in `usr/gfx/setmon` at 0x10018008 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10018008-0x10018280 (632 bytes).
  It occupies 632 bytes.
  The `lw` at 0x100180b4 loads 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x8.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x100180bc, `lbu` at 0x100180dc, `lbu` at 0x10018148.
  2 such `lw` accesses load 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x0, including `lw` at 0x100180f4, `lw` at 0x10018124.
  3 such `lw` accesses load 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x4, including `lw` at 0x1001810c, `lw` at 0x10018138, `lw` at 0x10018170.
  The `jalr` at 0x10018058 calls (unknown callee) with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10018064 calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018070 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001807c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100180c8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018114 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018164 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100181a0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100181dc calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001820c calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018224 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100180a4 targets 0x100180b4, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `beq` branch at 0x100180ac targets 0x10018238 and is always taken.
  The `bnel` branch at 0x100180d8 targets 0x100180c0, is taken when s0(?) < 0x100 (unsigned), and falls through when s0(?) >= 0x100 (unsigned); its branch-likely delay slot `lbu a0,0(s2)` at 0x100180dc runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x100180ec targets 0x100180b8, is taken when s3(?) < 0x5 (signed), and falls through when s3(?) >= 0x5 (signed).
  The `blez` branch at 0x10018100 targets 0x10018194, is taken when a3(=[(sym(xilinx_info) + (a5 << 0x4))]) <= 0 (signed), and falls through when a3(=[(sym(xilinx_info) + (a5 << 0x4))]) > 0 (signed).
  The `beq` branch at 0x10018108 targets 0x1001813c and is always taken.
  The `beq` branch at 0x1001811c targets 0x10018278, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10018130 targets 0x1001818c, is taken when s7(?) >= a4(=[(sym(xilinx_info) + (a5 << 0x4))]) (signed), and falls through when s7(?) < a4(=[(sym(xilinx_info) + (a5 << 0x4))]) (signed).
  The `blez` branch at 0x1001813c targets 0x10018110, is taken when a5(=[(sym(xilinx_info) + (a5 << 0x4))+4]) <= 0 (signed), and falls through when a5(=[(sym(xilinx_info) + (a5 << 0x4))+4]) > 0 (signed).
  The `beq` branch at 0x10018144 targets 0x1001815c and is always taken.
  The `beq` branch at 0x10018150 targets 0x10018110, is taken when s3(?) >= v0(=[(sym(xilinx_info) + (a5 << 0x4))+4]) (signed), and falls through when s3(?) < v0(=[(sym(xilinx_info) + (a5 << 0x4))+4]) (signed).
  The `bne` branch at 0x10018174 targets 0x1001814c, is taken when s5(=0x100) != s0(?), and falls through when s5(=0x100) == s0(?).
  The `beq` branch at 0x10018184 targets 0x1001814c and is always taken.
  The `beq` branch at 0x1001818c targets 0x100181bc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x100181b0 targets 0x10018194, is taken when s0(?) < 0x100 (unsigned), and falls through when s0(?) >= 0x100 (unsigned).
  The `bne` branch at 0x100181c4 targets 0x10018204, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x100181ec targets 0x100181d0, is taken when s0(?) < 0x100 (unsigned), and falls through when s0(?) >= 0x100 (unsigned).
  The `bgtz` branch at 0x100181fc targets 0x100181d0, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The `bne` branch at 0x1001821c targets 0x10018208, is taken when s0(?) < 0x19 (signed), and falls through when s0(?) >= 0x19 (signed).
  The `beq` branch at 0x1001822c targets 0x1001826c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x10018270 targets 0x10018238 and is always taken.
  The `beq` branch at 0x10018278 targets 0x10018234 and is always taken.
  The return at 0x10018264 has v0 = one of -0x3, -0x2, -0x1, 0x1.

- `load_4000_serial_byte` in `usr/gfx/setmon` at 0x10018280 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10018280-0x100183b0 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0x1001832c loads 4 bytes from (sym(xilinx_info) + (a5 << 0x4)) +0x8.
  The `lbu` at 0x10018344 loads 1 byte from ?.
  The `jalr` at 0x100182c0 calls (unknown callee) with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100182cc calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x100182d8 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x100182e4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018348 calls (unknown callee) with a0=?, a1=0x8, a2=?, a3=?.
  The `jalr` at 0x10018374 calls (unknown callee) with a0=0xff, a1=0x8, a2=?, a3=?.
  The `jalr` at 0x1001838c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x100182f4 targets 0x1001831c, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `blez` branch at 0x10018334 targets 0x10018360, is taken when s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) <= 0 (signed), and falls through when s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) > 0 (signed).
  The `bne` branch at 0x10018358 targets 0x10018340, is taken when s1(?) < s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) (signed), and falls through when s1(?) >= s3(=[(sym(xilinx_info) + (a5 << 0x4))+8]) (signed).
  The `bne` branch at 0x10018384 targets 0x1001836c, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x10018398 targets 0x100183a8, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x100183a0 targets 0x100182fc and is always taken.
  The `beq` branch at 0x100183a8 targets 0x10018300 and is always taken.
  The return at 0x10018314 has v0 = one of -0x3, -0x1, 0x1.

- `read_3000_serial` in `usr/gfx/setmon` at 0x100183b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100183b0-0x100184a8 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x10018420 loads 4 bytes from (sym(xilinx_info) + (a3 << 0x4)) +0x8.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10018434, `sb` at 0x10018468.
  The `lbu` at 0x10018458 loads 1 byte from ?.
  The `jalr` at 0x100183f4 calls (unknown callee) with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10018400 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001840c calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001843c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018448 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10018424 targets 0x1001847c, is taken when a1(=[(sym(xilinx_info) + (a3 << 0x4))+8]) <= 0 (signed), and falls through when a1(=[(sym(xilinx_info) + (a3 << 0x4))+8]) > 0 (signed).
  The `bne` branch at 0x10018464 targets 0x10018438, is taken when s0(?) < 0x8 (signed), and falls through when s0(?) >= 0x8 (signed).
  The `bgtz` branch at 0x10018474 targets 0x10018434, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The return at 0x100184a0 has v0 = 0x1.

- `read_4000_serial` in `usr/gfx/setmon` at 0x100184a8 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100184a8-0x10018628 (384 bytes).
  It occupies 384 bytes.
  3 such `lw` accesses load 4 bytes from (sym(xilinx_info) + (a4 << 0x4)) +0x0, including `lw` at 0x10018518, `lw` at 0x10018530, `lw` at 0x10018558.
  The `lw` at 0x10018584 loads 4 bytes from (sym(xilinx_info) + (a4 << 0x4)) +0x8.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x10018598, `sb` at 0x100185cc.
  The `lbu` at 0x100185bc loads 1 byte from ?.
  The `jalr` at 0x100184f4 calls (unknown callee) with a0=0x1, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10018504 calls (unknown callee) with a0=0x0, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018528 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018550 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10018570 calls (unknown callee) with a0=0x1, a1=?, a2=?, a3=?.
  The `jalr` at 0x1001857c calls sginap with a0=0x2, a1=?, a2=?, a3=?.
  The `jalr` at 0x100185a0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100185ac calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x100185f4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x1001851c targets 0x10018544, is taken when v0(=[(sym(xilinx_info) + (a4 << 0x4))]) <= 0 (signed), and falls through when v0(=[(sym(xilinx_info) + (a4 << 0x4))]) > 0 (signed).
  The `bne` branch at 0x1001853c targets 0x10018528, is taken when s4(?) < v0(=[(sym(xilinx_info) + (a4 << 0x4))]) (signed), and falls through when s4(?) >= v0(=[(sym(xilinx_info) + (a4 << 0x4))]) (signed).
  The `blez` branch at 0x10018544 targets 0x1001856c, is taken when v0(=[(sym(xilinx_info) + (a4 << 0x4))]) <= 0 (signed), and falls through when v0(=[(sym(xilinx_info) + (a4 << 0x4))]) > 0 (signed).
  The `bne` branch at 0x10018564 targets 0x10018550, is taken when s4(?) < ra(=[(sym(xilinx_info) + (a4 << 0x4))]) (signed), and falls through when s4(?) >= ra(=[(sym(xilinx_info) + (a4 << 0x4))]) (signed).
  The `bne` branch at 0x1001858c targets 0x100185e0, is taken when s4(=[(sym(xilinx_info) + (a4 << 0x4))+8]) < -0x1 (signed), and falls through when s4(=[(sym(xilinx_info) + (a4 << 0x4))+8]) >= -0x1 (signed).
  The `bne` branch at 0x100185c8 targets 0x1001859c, is taken when s0(?) < 0x8 (signed), and falls through when s0(?) >= 0x8 (signed).
  The `bgtz` branch at 0x100185d8 targets 0x10018598, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The `beq` branch at 0x10018608 targets 0x10018620, is taken when v0(=ret(?)) == v1(=0x1), and falls through when v0(=ret(?)) != v1(=0x1).
  The `beq` branch at 0x10018620 targets 0x10018614 and is always taken.
  The return at 0x10018618 has v0 = one of -0x4, 0x1.

- `dump_xilinx_config` in `usr/gfx/setmon` at 0x10018628 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10018628-0x100186fc (212 bytes).
  It occupies 212 bytes.
  The `lbu` at 0x10018694 loads 1 byte from ?.
  The `jalr` at 0x1001865c calls printf with a0=0x1003fb68, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10018690 calls printf with a0=0x10042370, a1=?, a2=?, a3=?.
  The `jalr` at 0x100186d0 calls printf with a0=0x10042378, a1=?, a2=?, a3=?.
  The `jalr` at 0x100186ec calls printf with a0=0x10042376, a1=?, a2=?, a3=?.
  The `blez` branch at 0x10018674 targets 0x100186b8, is taken when s2(=a0) <= 0 (signed), and falls through when s2(=a0) > 0 (signed).
  The `beq` branch at 0x100186a0 targets 0x100186ec, is taken when s5(=0x19) == v1(?), and falls through when s5(=0x19) != v1(?).
  The `bne` branch at 0x100186b0 targets 0x10018688, is taken when s1(?) < s2(=a0) (signed), and falls through when s1(?) >= s2(=a0) (signed).
  The `beq` branch at 0x100186f4 targets 0x100186ac and is always taken.
  The return at 0x100186e4 has v0 = ret(printf).

- `get_config_size` in `usr/gfx/setmon` at 0x100186fc (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100186fc-0x10018798 (156 bytes).
  It occupies 156 bytes.
  The `lbu` at 0x100186fc loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0x10018700 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0x10018704 loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x1001870c loads 1 byte from a0 (arg0 at entry) +0x2.
  The `bne` branch at 0x10018728 targets 0x10018714, is taken when a2(?) < 0x100 (signed), and falls through when a2(?) >= 0x100 (signed).
  The `bne` branch at 0x10018748 targets 0x10018734, is taken when a2(?) < 0x100 (signed), and falls through when a2(?) >= 0x100 (signed).
  The `bne` branch at 0x10018768 targets 0x10018754, is taken when a2(?) < 0x100 (signed), and falls through when a2(?) >= 0x100 (signed).
  The `bne` branch at 0x10018788 targets 0x10018774, is taken when a2(?) < 0x10 (signed), and falls through when a2(?) >= 0x10 (signed).
  The return at 0x10018790 has v0 = ?.

- `read_xilinx_file` in `usr/gfx/setmon` at 0x10018b3c (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10018b3c-0x10018bd4 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x10018b6c loads 4 bytes from (sym(xilinx_info) + (a0 << 0x4)) +0x8.
  The `jalr` at 0x10018b70 calls malloc with a0=[(sym(xilinx_info) + (a0 << 0x4))+8], a1=a1 at entry (arg1), a2=sym(xilinx_info), a3=a3 at entry (arg3).
  The `jal` at 0x10018b90 calls (unnamed) [0x10018798] with a0=a1 at entry (arg1), a1=[(sym(xilinx_info) + (a0 << 0x4))+8], a2=ret(malloc), a3=?.
  The `jalr` at 0x10018bc4 calls free with a0=ret(malloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10018b78 targets 0x10018bbc, is taken when v0(=ret(malloc)) == 0, and falls through when v0(=ret(malloc)) != 0.
  The `beq` branch at 0x10018b9c targets 0x10018bc4, is taken when v0(=ret(0x10018798)) == ra(=-0x1), and falls through when v0(=ret(0x10018798)) != ra(=-0x1).
  The `beq` branch at 0x10018bbc targets 0x10018ba4 and is always taken.
  The `beq` branch at 0x10018bcc targets 0x10018ba4 and is always taken.
  The return at 0x10018bb4 has v0 = one of ret(malloc), 0x0.

- `saXSGIvcQueryGammaMap` in `usr/gfx/setmon` at 0x10024970 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10024970-0x10024a1c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x100249b0 loads 4 bytes from ret(XSGIvcInitTestJig) +0x20.
  2 such `lw` accesses load 4 bytes from ret(XSGIvcInitTestJig) +0x24, including `lw` at 0x100249dc, `lw` at 0x100249f4.
  The `lw` at 0x100249ec loads 4 bytes from ([ret(XSGIvcInitTestJig)+36] + (a2 << 0x4)) +0x0.
  The `sw` at 0x100249f0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x10024a04 loads 4 bytes from ([ret(XSGIvcInitTestJig)+36] + (a2 << 0x4)) +0x4.
  The `sw` at 0x10024a0c stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `sw` at 0x10024a18 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `jal` at 0x1002499c calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x100249a8 targets 0x100249bc, is taken when s0(=a2) < 0 (signed), and falls through when s0(=a2) >= 0 (signed).
  The `bne` branch at 0x100249b8 targets 0x100249d4, is taken when s0(=a2) < v0(=[ret(XSGIvcInitTestJig)+32]) (signed), and falls through when s0(=a2) >= v0(=[ret(XSGIvcInitTestJig)+32]) (signed).
  The return at 0x100249cc has v0 = 0x0.
  The return at 0x10024a14 has v0 = 0x1.

- `saXSGIvcListVideoFormats` in `usr/gfx/setmon` at 0x10025090 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10025090-0x100250f8 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x100250c0 loads 4 bytes from ret(XSGIvcInitTestJig) +0x40.
  The `sw` at 0x100250e8 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `jal` at 0x100250b4 calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x100250d0 calls (unknown callee) with a0=0x0, a1=a2 at entry (arg2), a2=sp-48, a3=0x0.
  The return at 0x100250f0 has v0 = ?.

- `KonCmd` in `usr/gfx/setmon` at 0x10026850 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10026850-0x10026910 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x10026868 loads 4 bytes from sym(kon_ip_type) +0x0.
  4 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x100268a0, `sw` at 0x100268a4, `sw` at 0x100268cc.
  The `sw` at 0x100268c8 stores 4 bytes to (a2 + (a0 << 0x5)) +0xc.
  The `jal` at 0x100268f0 calls (unnamed) [0x1002b0d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[sym(kon_ip_type)], a6=0x22f10.
  The `beq` branch at 0x1002686c targets 0x100268e0, is taken when a5(=[sym(kon_ip_type)]) == 0, and falls through when a5(=[sym(kon_ip_type)]) != 0.
  The `beq` branch at 0x10026880 targets 0x100268b4, is taken when a5(?) == a7(=0x13), and falls through when a5(?) != a7(=0x13).
  The `beq` branch at 0x10026888 targets 0x100268cc, is taken when a5(?) == t0(=0x19), and falls through when a5(?) != t0(=0x19).
  The `beq` branch at 0x10026890 targets 0x100268a0, is taken when a5(?) == t1(=0x1b), and falls through when a5(?) != t1(=0x1b).
  The `beq` branch at 0x10026908 targets 0x10026874 and is always taken.
  The return at 0x10026898 has v0 = ?.
  The return at 0x100268ac has v0 = ?.
  The return at 0x100268c4 has v0 = ?.
  The return at 0x100268d8 has v0 = ?.

- `vcGetVideoRply` in `usr/gfx/setmon` at 0x10026e40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10026e40-0x10026e78 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x10026e60 calls printf with a0=0x1003c7f0, a1=0x22920, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10026e70 has v0 = ret(printf).

- `saXSGIvcQueryOutputGain` in `usr/gfx/setmon` at 0x10027340 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10027340-0x100274c0 (384 bytes).
  It occupies 384 bytes.
  5 such `lw` accesses load 4 bytes from ret(XSGIvcInitTestJig) +0x5c, including `lw` at 0x100273b0, `lw` at 0x100273f4, `lw` at 0x1002742c.
  5 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0x100273d4, `swc1` at 0x1002741c, `swc1` at 0x10027454.
  The `jal` at 0x100273a8 calls XSGIvcInitTestJig [0x1002fa40] with a0=0x3, a1=0x4, a2=0x5, a3=a3 at entry (arg3).
  The `jalr` at 0x100273c0 calls (unknown callee) with a0=0x0, a1=a2 at entry (arg2), a2=0x5, a3=sp-272.
  The `jal` at 0x100273ec calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x5, a3=a3 at entry (arg3).
  The `jalr` at 0x10027404 calls (unknown callee) with a0=0x0, a1=a2 at entry (arg2), a2=0x1, a3=sp-80.
  The `jal` at 0x10027424 calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x5, a3=a3 at entry (arg3).
  The `jalr` at 0x1002743c calls (unknown callee) with a0=0x0, a1=a2 at entry (arg2), a2=0x2, a3=sp-128.
  The `jal` at 0x10027458 calls XSGIvcInitTestJig [0x1002fa40] with a0=0x3, a1=a1 at entry (arg1), a2=0x5, a3=a3 at entry (arg3).
  The `jalr` at 0x10027470 calls (unknown callee) with a0=0x0, a1=a2 at entry (arg2), a2=0x3, a3=sp-176.
  The `jal` at 0x1002748c calls XSGIvcInitTestJig [0x1002fa40] with a0=0x3, a1=0x4, a2=0x5, a3=a3 at entry (arg3).
  The `jalr` at 0x100274a4 calls (unknown callee) with a0=0x0, a1=a2 at entry (arg2), a2=0x4, a3=sp-224.
  The `beq` branch at 0x10027368 targets 0x100273e8, is taken when a3 == at(=0x1), and falls through when a3 != at(=0x1).
  The `beq` branch at 0x10027374 targets 0x10027420, is taken when a3 == v1(=0x2), and falls through when a3 != v1(=0x2).
  The `beq` branch at 0x10027380 targets 0x10027458, is taken when a3 == a0(=0x3), and falls through when a3 != a0(=0x3).
  The `beq` branch at 0x1002738c targets 0x1002748c, is taken when a3 == a1(=0x4), and falls through when a3 != a1(=0x4).
  The `beq` branch at 0x10027394 targets 0x100273a8, is taken when a3 == a2(=0x5), and falls through when a3 != a2(=0x5).
  The `beq` branch at 0x10027418 targets 0x100273d8 and is always taken.
  The `beq` branch at 0x10027450 targets 0x100273d8 and is always taken.
  The `beq` branch at 0x10027484 targets 0x100273d8 and is always taken.
  The `beq` branch at 0x100274b8 targets 0x100273d8 and is always taken.
  The return at 0x100273a0 has v0 = 0x0.
  The return at 0x100273e0 has v0 = 0x1.

- `KonData` in `usr/gfx/setmon` at 0x100280e0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100280e0-0x10028188 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x100280f8 loads 4 bytes from sym(kon_ip_type) +0x0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x10028130, `sw` at 0x10028150.
  The `sw` at 0x10028140 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `jal` at 0x1002816c calls (unnamed) [0x1002b0d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[sym(kon_ip_type)], a5=0x21680.
  The `beq` branch at 0x100280fc targets 0x10028160, is taken when a4(=[sym(kon_ip_type)]) == 0, and falls through when a4(=[sym(kon_ip_type)]) != 0.
  The `beq` branch at 0x10028110 targets 0x10028140, is taken when a4(?) == a6(=0x13), and falls through when a4(?) != a6(=0x13).
  The `beq` branch at 0x10028118 targets 0x10028150, is taken when a4(?) == a7(=0x19), and falls through when a4(?) != a7(=0x19).
  The `beq` branch at 0x10028120 targets 0x10028130, is taken when a4(?) == t0(=0x1b), and falls through when a4(?) != t0(=0x1b).
  The `beq` branch at 0x10028180 targets 0x10028104 and is always taken.
  The return at 0x10028128 has v0 = ?.
  The return at 0x10028138 has v0 = ?.
  The return at 0x10028148 has v0 = ?.
  The return at 0x10028158 has v0 = ?.

- `saXSGIvcLoadVideoFormatCombination` in `usr/gfx/setmon` at 0x10028d30 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10028d30-0x10028dcc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x10028d58 loads 4 bytes from ret(XSGIvcInitTestJig) +0x50.
  The `jal` at 0x10028d50 calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10028d6c calls (unknown callee) with a0=0x0, a1=a2 at entry (arg2), a2=sp-32, a3=sp-28, a4=0x0.
  The `beq` branch at 0x10028d80 targets 0x10028db4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10028d8c targets 0x10028d9c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x10028d94 has v0 = 0x1.
  The return at 0x10028dac has v0 = 0x0.
  The return at 0x10028dc4 has v0 = 0x0.

- `saXSGIvcStoreGammaColors16` in `usr/gfx/setmon` at 0x1002a210 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1002a210-0x1002a29c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0x1002a24c loads 4 bytes from ret(XSGIvcInitTestJig) +0x20.
  The `jal` at 0x1002a23c calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unnamed) [0x10033fc0] via direct with a0=0x0, a1=a4 at entry (arg4), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=a5 at entry (arg5) (`j` at 0x1002a294).
  The `bltz` branch at 0x1002a244 targets 0x1002a25c, is taken when s0(=a2) < 0 (signed), and falls through when s0(=a2) >= 0 (signed).
  The `bne` branch at 0x1002a254 targets 0x1002a26c, is taken when s0(=a2) < v1(=[ret(XSGIvcInitTestJig)+32]) (signed), and falls through when s0(=a2) >= v1(=[ret(XSGIvcInitTestJig)+32]) (signed).
  The return at 0x1002a264 has v0 = ret(XSGIvcInitTestJig).

- `saXSGIvcSetOutputPhaseH` in `usr/gfx/setmon` at 0x1002a800 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1002a800-0x1002a860 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x1002a834 loads 4 bytes from ret(XSGIvcInitTestJig) +0x58.
  The `jal` at 0x1002a824 calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002a844 calls (unknown callee) with a0=0x0, a1=a2 at entry (arg2), a2=0x7, a3=sp-80.
  The return at 0x1002a858 has v0 = ret(?).

- `XSGIvcInitTestJig` in `usr/gfx/setmon` at 0x1002fa40 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1002fa40-0x1002fbc4 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0x1002fa84 loads 4 bytes from ret(0x1002c600) +0x0.
  The `sw` at 0x1002fba4 stores 4 bytes to sym(vcScreenPrivateIndex) +0x0.
  The `jal` at 0x1002fa74 calls (unnamed) [0x1002c600] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1002fa8c calls KonCmd [0x10026850] with a0=0x128, a1=0x500, a2=[ret(0x1002c600)], a3=?.
  The `jal` at 0x1002faa0 calls KonData2 [0x10035360] with a0=0x400, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1002fab0 calls KonFlush [0x10032ef0] with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1002fac0 calls (unnamed) [0x1002cb80] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x1002fae4 calls (unnamed) [0x1002ae20] with a0=0x1003c750, a1=0x1e92, a2=?, a3=?.
  The `jal` at 0x1002faf4 calls (unnamed) [0x1002c600] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1002fb18 calls (unnamed) [0x100334e0] with a0=0x0, a1=0x0, a2=sp-32, a3=0x4.
  The `jal` at 0x1002fb34 calls (unnamed) [0x10032fe0] with a0=0x0, a1=sp-32, a2=0x4, a3=?.
  The `jal` at 0x1002fb44 calls (unnamed) [0x1002c600] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1002fb68 calls (unnamed) [0x10032c80] with a0=0x0, a1=0x0, a2=sp-28, a3=0x4.
  The `jal` at 0x1002fb84 calls (unnamed) [0x1002ae20] with a0=0x1003c768, a1=0x1e94, a2=?, a3=?.
  The `jal` at 0x1002fbb4 calls (unnamed) [0x10027640] with a0=0x0, a1=sp-28, a2=0x4, a3=?.
  The `beq` branch at 0x1002fa58 targets 0x1002fa6c, is taken when v0(=[0x10041df4]) == 0, and falls through when v0(=[0x10041df4]) != 0.
  The `beq` branch at 0x1002fac8 targets 0x1002fb8c, is taken when v0(=ret(0x1002cb80)) == 0, and falls through when v0(=ret(0x1002cb80)) != 0.
  The `beq` branch at 0x1002fafc targets 0x1002fb28, is taken when v0(=ret(0x1002c600)) == 0, and falls through when v0(=ret(0x1002c600)) != 0.
  The `beq` branch at 0x1002fb20 targets 0x1002fb40 and is always taken.
  The `beq` branch at 0x1002fb4c targets 0x1002fba8, is taken when v0(=ret(0x1002c600)) == 0, and falls through when v0(=ret(0x1002c600)) != 0.
  The `beq` branch at 0x1002fbbc targets 0x1002fb70 and is always taken.
  The return at 0x1002fa64 has v0 = [0x10041df4].
  The return at 0x1002fba0 has v0 = [0x10041df4].

- `saXSGIvcListVideoFormatCombinations` in `usr/gfx/setmon` at 0x1002fbd0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x1002fbd0-0x1002fce0 (272 bytes).
  It occupies 272 bytes.
  The `lw` at 0x1002fbfc loads 4 bytes from ret(XSGIvcInitTestJig) +0x48.
  The `sw` at 0x1002fc58 stores 4 bytes to ?.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1002fc5c, `lbu` at 0x1002fc6c, `lbu` at 0x1002fc7c.
  The `sw` at 0x1002fcd0 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `jal` at 0x1002fbf4 calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1002fc18 calls (unknown callee) with a0=0x0, a1=0x10043500, a2=sp-48, a3=sp-44, a4=0x0.
  The `blez` branch at 0x1002fc24 targets 0x1002fcc4, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x1002fc3c targets 0x1002fc58 and is always taken.
  The `beq` branch at 0x1002fc50 targets 0x1002fcc4, is taken when a2(?) == a3(=table(0x10043438)), and falls through when a2(?) != a3(=table(0x10043438)).
  The `beq` branch at 0x1002fc64 targets 0x1002fc50, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1002fc74 targets 0x1002fc50, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1002fc84 targets 0x1002fc50, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1002fc94 targets 0x1002fc50, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1002fca4 targets 0x1002fc50, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x1002fcb0 targets 0x1002fc6c, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x1002fcb8 targets 0x1002fc50 and is always taken.
  The return at 0x1002fcd8 has v0 = 0x10043438.
  The instructions from 0x1002fc44 to 0x1002fc4c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1002fcc0 to 0x1002fcc0 are not reached by any path from the entry, and their branches are not listed.

- `KonFlush` in `usr/gfx/setmon` at 0x10032ef0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10032ef0-0x10032fa0 (176 bytes).
  It occupies 176 bytes.
  The `lw` at 0x10032f08 loads 4 bytes from sym(kon_ip_type) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4200, including `lw` at 0x10032f3c, `lw` at 0x10032f4c.
  The `jal` at 0x10032f68 calls (unnamed) [0x1002b0d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3), a4=[sym(kon_ip_type)], a5=0x16870.
  The `jal` at 0x10032f90 calls KonCmd [0x10026850] with a0=0x1ff, a1=0xffffffffdeadbeef, a2=a0 at entry (arg0), a3=?, a6=0x13, a7=0x19.
  The `beq` branch at 0x10032f0c targets 0x10032f5c, is taken when a4(=[sym(kon_ip_type)]) == 0, and falls through when a4(=[sym(kon_ip_type)]) != 0.
  The `beq` branch at 0x10032f1c targets 0x10032f80, is taken when a4(?) == a6(=0x13), and falls through when a4(?) != a6(=0x13).
  The `beq` branch at 0x10032f24 targets 0x10032f4c, is taken when a4(?) == a7(=0x19), and falls through when a4(?) != a7(=0x19).
  The `beq` branch at 0x10032f2c targets 0x10032f3c, is taken when a4(?) == t0(=0x1b), and falls through when a4(?) != t0(=0x1b).
  The `beq` branch at 0x10032f78 targets 0x10032f14 and is always taken.
  The `beq` branch at 0x10032f98 targets 0x10032f30 and is always taken.
  The return at 0x10032f34 has v0 = ?.
  The return at 0x10032f44 has v0 = ?.
  The return at 0x10032f54 has v0 = ?.

- `vcVideoCmd` in `usr/gfx/setmon` at 0x10032fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10032fa0-0x10032fd8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0x10032fc0 calls printf with a0=0x1003c7f0, a1=0x167c0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10032fd0 has v0 = ret(printf).

- `saXSGIvcQueryVideoScreenInfo` in `usr/gfx/setmon` at 0x10033bc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10033bc0-0x10033c2c (108 bytes).
  It occupies 108 bytes.
  The `lbu` at 0x10033bf4 loads 1 byte from abs 0x100421b4.
  The `lw` at 0x10033bf8 loads 4 bytes from ret(XSGIvcInitTestJig) +0x4.
  The `sw` at 0x10033bfc stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lw` at 0x10033c00 loads 4 bytes from ret(XSGIvcInitTestJig) +0xc.
  The `sw` at 0x10033c04 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `lw` at 0x10033c08 loads 4 bytes from ret(XSGIvcInitTestJig) +0x14.
  The `sb` at 0x10033c0c stores 1 byte to a2 (arg2 at entry) +0x10.
  The `sw` at 0x10033c14 stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `sw` at 0x10033c1c stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `jal` at 0x10033be0 calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x10033c24 has v0 = 0x1.

- `saXSGIvcQueryChannelInfo` in `usr/gfx/setmon` at 0x10033d00 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10033d00-0x10033fc0 (704 bytes).
  It occupies 704 bytes.
  The `lw` at 0x10033d28 loads 4 bytes from ret(XSGIvcInitTestJig) +0x4.
  The `lw` at 0x10033d34 loads 4 bytes from ret(XSGIvcInitTestJig) +0x8.
  28 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10033d9c, `lw` at 0x10033e10, `lw` at 0x10033e48.
  The `sw` at 0x10033da0 stores 4 bytes to ret(calloc) +0x0.
  4 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x10033da4, `lwc1` at 0x10033dac, `lwc1` at 0x10033db8.
  The `swc1` at 0x10033da8 stores 4 bytes to ret(calloc) +0x4.
  The `swc1` at 0x10033db0 stores 4 bytes to ret(calloc) +0x8.
  The `swc1` at 0x10033dd0 stores 4 bytes to ret(calloc) +0xc.
  The `swc1` at 0x10033df4 stores 4 bytes to ret(calloc) +0x10.
  9 such `sw` accesses store 4 bytes to ?, including `sw` at 0x10033e1c, `sw` at 0x10033e50, `sw` at 0x10033e60.
  The `sw` at 0x10033ee0 stores 4 bytes to ret(calloc) +0x150.
  The `sw` at 0x10033ee4 stores 4 bytes to ret(calloc) +0x14c.
  The `sw` at 0x10033eec stores 4 bytes to ret(calloc) +0x154.
  The `sw` at 0x10033ef8 stores 4 bytes to ret(calloc) +0x158.
  The `sw` at 0x10033f04 stores 4 bytes to ret(calloc) +0x15c.
  The `sw` at 0x10033f10 stores 4 bytes to ret(calloc) +0x160.
  The `sw` at 0x10033f1c stores 4 bytes to ret(calloc) +0x164.
  The `sw` at 0x10033f28 stores 4 bytes to ret(calloc) +0x168.
  The `sw` at 0x10033f34 stores 4 bytes to ret(calloc) +0x16c.
  The `sw` at 0x10033f3c stores 4 bytes to ret(calloc) +0x170.
  The `sw` at 0x10033f44 stores 4 bytes to ret(calloc) +0x174.
  The `sw` at 0x10033f4c stores 4 bytes to ret(calloc) +0x178.
  The `sw` at 0x10033f54 stores 4 bytes to ret(calloc) +0x17c.
  The `sw` at 0x10033f5c stores 4 bytes to ret(calloc) +0x180.
  The `sw` at 0x10033f64 stores 4 bytes to ret(calloc) +0x184.
  The `sw` at 0x10033f6c stores 4 bytes to ret(calloc) +0x188.
  The `sw` at 0x10033f74 stores 4 bytes to ret(calloc) +0x18c.
  The `sw` at 0x10033f7c stores 4 bytes to ret(calloc) +0x190.
  The `sw` at 0x10033f90 stores 4 bytes to ret(calloc) +0x194.
  The `jal` at 0x10033d20 calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10033d6c calls calloc with a0=0x1, a1=0x198, a2=?, a3=?.
  The `beq` branch at 0x10033d4c targets 0x10033d64, is taken when a1(=[ret(XSGIvcInitTestJig)+4]) >= s0(=a2) (unsigned), and falls through when a1(=[ret(XSGIvcInitTestJig)+4]) < s0(=a2) (unsigned).
  The `beq` branch at 0x10033d90 targets 0x10033f94, is taken when v0(=ret(calloc)) == 0, and falls through when v0(=ret(calloc)) != 0.
  The `bne` branch at 0x10033e18 targets 0x10033e00, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bgtz` branch at 0x10033ec4 targets 0x10033e40, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The return at 0x10033d5c has v0 = 0x0.
  The return at 0x10033f8c has v0 = 0x1.
  The return at 0x10033fb8 has v0 = 0x0.

- `saXSGIvcListVideoFormatsInCombination` in `usr/gfx/setmon` at 0x10034bc0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10034bc0-0x10034c28 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x10034bf4 loads 4 bytes from ret(XSGIvcInitTestJig) +0x4c.
  The `jal` at 0x10034be4 calls XSGIvcInitTestJig [0x1002fa40] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x10034c08 calls (unknown callee) with a0=0x0, a1=a2 at entry (arg2), a2=sp-48, a3=sp-44, a4=a3 at entry (arg3).
  The return at 0x10034c20 has v0 = ?.

- `KonData2` in `usr/gfx/setmon` at 0x10035360 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x10035360-0x100353b4 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x10035388 calls KonData [0x100280e0] with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x10035398 calls KonData [0x100280e0] with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0x100353ac has v0 = ret(KonData).

- `KonData5` in `usr/gfx/setmon` at 0x100353c0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/setmon`.
  Range: 0x100353c0-0x10035464 (164 bytes).
  It occupies 164 bytes.
  The `jal` at 0x100353fc calls KonData [0x100280e0] with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1003540c calls KonData [0x100280e0] with a0=a1 at entry (arg1), a1=a5 at entry (arg5), a2=?, a3=?.
  The `jal` at 0x10035420 calls KonData [0x100280e0] with a0=a2 at entry (arg2), a1=a5 at entry (arg5), a2=?, a3=?.
  The `jal` at 0x10035434 calls KonData [0x100280e0] with a0=a3 at entry (arg3), a1=a5 at entry (arg5), a2=?, a3=?.
  The `jal` at 0x10035444 calls KonData [0x100280e0] with a0=a4 at entry (arg4), a1=a5 at entry (arg5), a2=?, a3=?.
  The return at 0x1003545c has v0 = ret(KonData).
