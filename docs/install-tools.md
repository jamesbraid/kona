# Installed programs, scripts and configuration files

One entry per file the graphics packages install beside the InfiniteReality driver (IRIX 6.5.30m, N32 programs unless noted). Each says what the file is for, how it reaches the pipe (a device node and its ioctls, a mapped window, a library call, or not at all) and where its key entry points are. **Established** means the whole routine or file named was read; **inferred** says what the reading rested on. Function-level groupings of the large programs are in [kpm.md](kpm.md), [irsaudit.md](irsaudit.md) and [setup-tools.md](setup-tools.md); the ioctl numbers are those of [kernel.md](kernel.md). Addresses are virtual addresses in the program's own image.

## Scripts and kernel configuration

- `usr/gfx/startgfx`: **established.**
  A 1477-byte Bourne script that starts the window system, shared by every graphics family, so it names no pipe.
  Line 28 runs `chkconfig windowsystem on` and leaves with status 1 when the flag is off.
  Lines 34 to 46 look for a login on the `tport` line; when one is present they rewrite the `tp:` entry of `/etc/inittab` from `respawn` to `off` through a temporary copy and run `telinit q`, which frees the textport driver's hold on the board.
  Lines 50 to 60 read `sysconf MAC`; on a system that is not label-based they send SIGHUP to a running `xdm` or exec `/usr/bin/X11/xdm`.
  It never opens `/dev/opengl`: the pipe is reached later, by the X server's Kona module.
- `usr/gfx/stopgfx`: **established.**
  The 1654-byte inverse of the start script.
  Line 26 insists that `/etc/inittab` is writable by the caller, line 34 repeats the `chkconfig` test, and lines 40 to 55 turn the `tp:` entry back from `off` to `respawn` so the textport reclaims the head.
  Line 57 sets `windowsystem` to off, and lines 59 to 63 kill `XFree86` when that server exists and `Xsgi` otherwise.
  The pipe is released by the server's exit, since the script holds no device handle.
- `usr/gfx/gfxtopology`: **established.**
  A 6294-byte Perl script that reports which graphics pipe sits behind which brick and port and which keyboard and mouse belong to which pipe, for Origin and Onyx systems.
  It runs `hinv -mv` (line 11) and keeps the location line of a `kona` or `xtalk` entry and the part-number line of a `KTOWN`, `GE` or `ODY` entry in the tables `%ktown` and `%ginfo` (lines 24 to 43).
  Without `/hw/gfx` (line 52) it lists `/hw/module/<node>/CGbrick/xtalk/*/agp/*/1a/fglrx` and files the pipe as `SN1` (lines 74 to 103).
  With `/hw/gfx` it splits each link target and classes it `SN1` for `IXbrick`, `Ibrick`, `Xbrick` or `Nbrick` (line 119) and `SN0` for a `slot` path (line 130), reading `.master` to find the owning node.
  Lines 155 to 195 place input devices from `/etc/ioconfig.conf`.
  It reads only the hardware graph and `hinv` output, never the board.
- `usr/gfx/KONA/bin/postmortem`: **established.**
  A shell wrapper named `pm.sh` in its header: a 1545-byte script that runs `kpm` against one pipe and files the result.
  It refuses to run unless the uid is 0 (line 14), takes the pipe number from its first argument (default 0), and keeps only the four newest `kpm_*.dump` files in `/usr/adm/crash/diags/gfx/IR` by deleting older dump, `.rslt` and `.sum` triples (lines 38 to 47).
  The capture is `kpm -dump -pipe N -field -force -f <stamp>.dump -summary <stamp>.sum -result <stamp>.rslt` (line 50), after which it hands the summary and result to the availability agent `amdiag` or, failing that, mails both through `amsend` (lines 55 to 60).
  The pipe is reached only by the program it launches.
- `usr/diags/IR/bin/availmon`: **established.**
  A 1140-byte shell script named `availmon.sh` that does the same housekeeping and mailing for `irsaudit`: it takes a name, a summary file and a result file (line 21, exit status 2 and a usage line otherwise), keeps the newest five `.rslt` files in `/usr/adm/crash/diags/gfx/IR` (lines 30 to 40) and passes the pair to `amdiag` or `amsend`.
  It touches no device and runs nothing graphical.
- `var/sysgen/system/gfx.sm`: **established.**
  The 878-byte system file the autoconfiguration step reads for the graphics drivers.
  It includes the input drivers (`shmiq`, `idev`, `mouse`, `keyboard`; line 31) and lists `USE: kona` at line 43 and `USE: mgras` at line 47, so the Kona driver and the Origin 350 and Octane raster driver share one file.
  Textport drivers `tport`, `tportpckbd` and `htport` follow, and `USE: gfxs rrm xconn` then `USE: gfx` come last (lines 61 and 62), a placement its comment gives as the reason the kernel calls the generic layer first.
- `var/sysgen/master.d/gfxs`: **established.**
  The 399-byte master entry of the graphics streams device.
  Line 6 declares the flags `sofp`, prefix `gfxs`, soft number 56 and the dependencies `gfx` and `clone`.
  The C part sets `GfxBoardLimit` to 128 when `IP27` or `IP35` is defined and 8 otherwise (lines 11 to 16) and sizes the `GfxBoards` pointer array to match (line 17), the table `gfx.o` fills with one record per head.
- `var/sysgen/mtune/gfx`: **established.**
  The 2848-byte tunable table for the generic layer.
  Line 39 sets `gfxlockablemem` to a default of 20 percent of memory that graphics may lock (range 0 to 100) and line 40 `gfxlockablemem_gt64` to 50 for larger machines.
  Line 41 gives `gfxdmasleepthreshold` default 0 with minimum 0, and line 42 `gfxupdatedmousehandling` 1 (range 0 to 1) to turn the mouse-event synchronisation handling on.
  Line 71 marks the `compositor` group as run-time settable, `compositorforceswapready` (line 72, 0 to 3) chooses when the driver fires the swap-ready line after a configuration change, and `compositordisablefastupdate` (line 82, 0 or 1) selects the synchronised tile update; the compositor belongs to the multi-pipe combiner, not to the pipe tested here.

## X resource files

- `usr/lib/X11/app-defaults/Dmconf`: **established.**
  The 3525-byte resource file of the `dmconf` window, generated by RapidApp 1.2 (line 5).
  Lines 11 to 20 turn on the SGI schemes, SGI mode, the enhanced file selector and explicit keyboard focus; 35 label strings follow.
  Thirteen are the `denaliFormat` buttons (lines 28 to 40: 1920x1080 and 1280x720 and the two standard-definition rates) for the digital-media option, and the `odyFormatLabel` ("VPro Format:", line 73) and `odyPropertiesButton` entries name the Octane2 board, so the file serves several families and holds nothing specific to this one.
- `usr/lib/X11/app-defaults/Ircombine`: **established.**
  The 26754-byte resource file of the `ircombine` window, with 444 label strings.
  Lines 215 to 218 label the four graphics choices of its first form: `gfxOnyx2IR` "Onyx2/Onyx3000 InfiniteReality(2,2E,3)", `gfxOnyx2IR4` "InfiniteReality4", `gfxOnyx2R` "Onyx2 Reality" and `gfxOnyxIR` "Onyx Infinite Reality".
  The prefixes `dvp_` (20 resources), `gvo_` (20), `hdgvo` (18) and `enc_` name the option boards the combiner edits: the digital video projector, the graphics video output, its high-definition form and the encoder.
  Entries such as `rmMenu` ("Number of RMs:", line 413) and `managedLabel` ("Managed Area:", line 313) correspond to fields the program writes into a combination.
- `usr/lib/X11/app-defaults/XSetmon`: **established.**
  The 25223-byte resource file of the `xsetmon` window, with 128 label strings.
  Its fallback message (line 88) tells the user that a server without the video-control extension cannot change formats from the window and points to the command-line `setmon`.
  Labels at lines 74 to 155 (`label16` "Origin:", `labelFrameRateAnnounce`, `labelHBPAnnounce` and others) are the readouts of the timing form, and the `gammaMapEditor` resources (line 301) belong to the colour-map page.

## Programs that reach the pipe

- `usr/gfx/KONA/bin/ireeprom`: **established** for the paths named, **inferred** for what the sub-commands mean.
  A 150304-byte program that reads, writes, erases and verifies the pipe's boot EEPROM; entry `__start` at 0x10001540, `main` at 0x1000165c.
  The option string at 0x100042b0 is `wrveiFp:f:hcd:s` (write, read, verify, erase, info, force, pipe, file, help, erase-combination), and the code at 0x100016c8 refuses a caller that is not the super-user.
  The helper at 0x10001a20 opens `/dev/opengl` with flags 0x802 and counts boards with ioctl 101; the per-pipe routine at 0x10001abc fetches the board record with ioctl 102 and compares its name field against `KONA`, `KONAT`, `KONAS`, `KONAL` and `KONAD` (strings at 0x10024080 to 0x100240a0), asks 105 whether a window system manages the board, then attaches with 103 followed by 1000 and 1002 when it does or sends 113 when it does not.
  `setup_ucode` at 0x1000228c sends the private ioctl 10100 (`KONA_DIAG_MAP`, [kernel.md](kernel.md#diagnostic-map-kona_diag_map)) twice with a 65536-byte length: flags 10 (release, kind 8) and then, after generic ioctl 106, flags 9 (map through the map RAM), and keeps the two returned address words.
  Everything after that goes through `KonWGWrite` at 0x10002a4c, which waits up to 1000 one-tick sleeps for the FIFO-fill field (word 0x4208 of the mapped window, mask 0xffe) to fall to 1500 or less and then stores one word at window offset 12 when the CPU board class is the first of four and at offset 0 otherwise; the routine at 0x10002960 reads that class from `getinvent` and maps inventory types 11, 15, 19 and 22 to the classes the warning string calls IP19, IP25, IP27 and IP35 (**inferred** for the pairing of number and name).
  Every operation starts with the token word 492 (0x1ec): `erase_eeprom` at 0x10003274 follows it with 1 and 4096 data words, `erase_combo` at 0x10003430 with 6, `write_eeprom` at 0x10002bdc with 1 and the image, and `setup_ucode` with 3 followed by the two address words just mapped and the length 16384 (at 0x100024b4 to 0x100024ec, and again at 0x1000255c to 0x10002594), and with 4 before each `get_rdata` handshake.
  Results come back through `get_rdata` at 0x100026cc, which polls the first word of the read-back area with `sginap(2)` and returns the second.
  The sub-command words 1, 3, 4 and 6 are named only by the string each operation prints, so their meaning at the hardware is **inferred**.
  Each function of the program has its own entry in [pipe-tool-functions.md](pipe-tool-functions.md#ireeprom-pipe-eeprom-tool).
- `usr/gfx/hyperpipeinfo`: **established.**
  An 18328-byte program that prints the hyperpipe network of one display; `main` at 0x10000ff0.
  It parses `-d <displayname>` with `getopt` (option character 100 at 0x10001050), opens that display or the default one with `XOpenDisplay`, and requires `GLX_SGIX_hyperpipe` in `glXQueryExtensionsString` of the screen (strstr at 0x10001244).
  It then calls `glXQueryHyperpipeNetworkSGIX` (0x10001294) and prints one `pipe %s network id %d` line per record, reading the name at offset 0 and the id at offset 80 of 84-byte records (0x10001300 to 0x10001344).
  It has no device handle of its own; the library reaches the board through `/dev/opengl`.
- `__start` (`usr/gfx/hyperpipeinfo` at 0x10000ed0 for 268 bytes):
  **Established.** The program entry, read in full from 0x10000ed0 to the `break` at 0x10000fd8. It takes the argument count from the word at the stack pointer and the argument vector as the address sp+4, rounds the stack pointer down to a 16-byte boundary, finds its global pointer with a `bal` to the next instruction, and forms the environment vector as the vector address plus 4 plus 4 times the count. The environment vector is stored through the `_environ` slot (GOT slot 26, dynsym 45) only when the word already there is zero. It then stores the count through the `__Argc` slot and the vector through the `__Argv` slot, clears s8 and the doubleword at sp+8, and calls in order `__istart` (slot 38, call at 0x10000f64), `__readenv_sigfpe` (slot 28, 0x10000f78), then `main` (slot 37, 0x10000fb8) with the stored count, the stored vector and the word held in `_environ`. The result of `main` goes to `exit` (slot 27, 0x10000fd0). The `break` after it is reached only if `exit` returns.
- `_mcount` (`usr/gfx/hyperpipeinfo` at 0x10000fdc for 12 bytes):
  **Established.** The profiling hook that the compiler's call-counting prologue targets; this build links it as a stub. Its three instructions add 16 to the stack pointer to discard the frame the caller's prologue pushed, then return with the delay slot `move ra,at`, so the caller's own return address, which the prologue left in the at register, is restored. It reads no memory, writes no memory and counts nothing, and no routine in this program calls it: it has no GOT slot and `main` makes no call to it.
- `__istart` (`usr/gfx/hyperpipeinfo` at 0x100013bc for 4 bytes):
  **Established.** The initialisation hook that `__start` calls before `main`. Its 4 bytes are one nop at 0x100013bc; execution falls through to the `jr ra` at 0x100013c0, whose delay slot is another nop, and the zero words from 0x100013b0 before it are nops too. The program therefore runs no start-up code of its own here, and the hook leaves the registers and memory as it found them.
- `main` (`usr/gfx/hyperpipeinfo` at 0x10000ff0 for 956 bytes):
  **Established.** Read in full from 0x10000ff0 to the return at 0x100013a4. It calls `getopt` (slot 29, call sites 0x10001024 and 0x100010c4) with the 2-byte option string `d:` at 0x10004230; option character 100 stores the word `optarg` points at into sp+8 and adds 1 to the counter at sp+0, and any other result except -1 prints the usage line at 0x10004000 with `printf` (slot 30) and calls `exit(1)`. With no `-d` (counter zero) it calls `getenv` on the string `DISPLAY` at 0x10004238, prints "opening default display %s" with the returned pointer, and calls `XOpenDisplay(0)`. With `-d` it prints "opening display %s" with the name and calls `XOpenDisplay` on that name, the last one given. A null display prints "can't connect to display" with the name (the default path calls `getenv` on `DISPLAY` a second time for it, the `-d` path reuses sp+8) and calls `exit(1)`. It passes the display and the word at +132 of the display record to `glXQueryExtensionsString` (slot 33), prints "can't obtain extension string" and calls `exit(1)` on a null result, calls `strstr` (slot 34) for `GLX_SGIX_hyperpipe` at 0x10004098 and exits 1 with the "extension not present" text when it is absent. It calls `glXQueryHyperpipeNetworkSGIX` (slot 35) with the display and the address sp+24 for the record count; a null result or a zero count prints "no hyperpipe capable pipes in the system" and exits 1. Otherwise a counted loop from zero to the count (tested at 0x10001368 against the word at sp+24) prints one line (format at 0x10004110: `pipe %s`, a space, a tab, ` network id %d`, a space and a newline) with the string at the start of 84-byte record i (84 is formed as i times 21 times 4) and the word at +80 of that record, then calls `XFree` (slot 36) on the array and `exit(0)`.
- `usr/diags/IR/bin/hyper`: **established.**
  A 38544-byte test program that builds a hyperpipe ring across the pipes and draws on all of them; `main` at 0x100027b0, `usage` at 0x10003f00.
  The option string at the `getopt` call is `:de:h:l:n:p:r:s:tvw:x:y:z` (debug, exit count, window height, ring size, pipe count and a comma-separated pipe list, slow, scribble and Z modes).
  `main` queries `glXQueryHyperpipeNetworkSGIX`, builds the configuration with `glXHyperpipeConfigSGIX`, forks one process per pipe with `sproc`, and `perPipeMainProc` at 0x100040d0 creates a window with `XCreateWindow`, binds with `glXBindHyperpipeSGIX` and loops over `perPipeGfxDraw` at 0x10005770 and `perPipeGfxScribble` at 0x10006610.
  Each pipe's process queries its sync source with `XSGIvcQueryScreenInputSyncSource` (call at 0x100044d8 in `perPipeMainProc`), and `main` holds the message "more than one pipe not genlocked" (printed at 0x1000389c). `getScreenFromDisplay` makes no X call: it only extracts the screen number from the display name.
  The board is reached only through libGL and the video-control library.
  Five of its functions and the start-up stubs have entries in [pipe-tool-functions.md](pipe-tool-functions.md#hyper-hyperpipe-test-program).
- `usr/gfx/ucode/vfc/sdbutil`: **established** for its role and structure, **inferred** for the parser grammar.
  A 70452-byte C++ program (libC.so.2) that creates or prints a symbol database in the `.vfo` format; `_main` at 0x10003f30, program `main` at 0x10004b60.
  Its usage text is `sdbutil ([-c <sdbfile> [<txtfile>]] | <sdbfile>)...`: `createFile` at 0x10005720 parses a text description with the generated scanner `yylex` (0x100058ac) and parser `yyparse` (0x1000652c) and writes a new database through `SDBopenNewDatabase` (0x1000a684), `SDBaddNewScalarSymbol` and `SDBaddNewArraySymbol` (0x1000a4b0 and 0x1000a478) and `SDBcloseNewDatabase` (0x1000a4f0); `readExistingFile` at 0x100052b8 opens a database with `SDBreadOpenDatabase` (0x1000ac5c) and prints each symbol with the `binToAsc_*` converters.
  Its imports are only libC and libc, with no graphics library and no device, so it never touches a pipe; the video-format compiler uses its output as an input file ([ucode/dg.md](../ucode/dg.md)).
- `usr/gfx/KONA/bin/kpm`: **established** for its modes and entry points, **inferred** for the capture groupings in [kpm.md](kpm.md).
  A 1388788-byte post-mortem and inspection program with symbols, linked against `libcurses` for its viewer; `main` at 0x1000a6cc.
  `main` turns the options of its usage string (`-help`, `-view`, `-dump`, `-sim`, `-hw`, `-fake`, `-ged`, `-rm`, `-dg`, `-f`, `-pipe`, `-debug`, and the `+geeram +beffifo +rm +dg +sram +sdram +eeprom` modifiers) into one of four modes and calls `init_report`, `kpm_dump` (0x1000d510) and `close_report` for a dump, `kpm_view` (0x1000e330) for the viewer, `kpm_status` (0x1000e210) for the read-only status and `kpm_interact` (0x1000f538, an 8-byte stub) for the interactive mode.
  It opens `/dev/opengl` and checks `GFX_IS_MANAGED` (ioctl 105, strings "Unexpected error doing GFX_IS_MANAGED ioctl"), then reaches the pipe's registers through its own boundary-scan helpers, such as `hipReset` at 0x10017204, `setup_dma` at 0x1001f76c and `jtagInspection` at 0x1002207c, rather than through the drawing window.
  `dfCreateDumpFile` at 0x1000afdc writes the dump header; `read_chains` at 0x100216dc loads the scan-chain description files of [data-files.md](data-files.md).

## Setup and video-configuration programs

- `usr/gfx/gfxinfo` (installed a second time as `usr/gfx/gfxinit`): **inferred** for the pipe paths, from the routine boundaries and strings.
  A 177132-byte program that reports on and initialises every graphics board; `main` at 0x10005888 (2192 bytes) opens `/dev/opengl` with flags 0x802 at 0x10005a74, asks for the board count with ioctl 101 (0x10005ab4) and hands each record to the routine of its family.
  The pipe's routines are `kona_info` at 0x1000acbc (prints the configuration through `nic_report` at 0x1000cd5c, once per serial-number device), `kona_getconfig` at 0x1000ae90, `kona_init` at 0x1000b0e0 and `kona_diagnose` at 0x1000b1f8.
  `kona_getconfig` maps a 16384-byte buffer with ioctl 10100, writes the command words 498 and 489 through the helper at 0x1000a108, sends the set-configuration-information Kona driver request (10006) at 0x1000afc0 and unmaps with 10100 again; its error strings name the two ioctls.
  `kona_init` calls `kona_loaducode` (0x1000ca5c, which reads microcode from `/usr/gfx/ucode/`) before it starts the pipe; `kona_diagnose` reads the health word (ioctl 10016) and, when the state is bad, prints "starting postmortem" and runs `/usr/gfx/KONA/bin/postmortem`.
  Most of the file's remaining code belongs to the older Venice and VS2 boards and to other families, and the pipe's own functions are a small fraction of its 227 symbols.
- `usr/gfx/setmon`: **inferred** for the pipe path.
  A 289580-byte command-line monitor and format setter; `main` at 0x10008e8c (4216 bytes), usage string `-[vnwxigtTGS] [-m wxh] [-s syncsel] [-j glockdelay] [-D DAC_gain] [-F hphase] [-p pipenum] [-c ms] [-d depth] [-a accumtype]` at 0x10038000.
  `konasetmon` at 0x1000a9c4 (1244 bytes) is its pipe entry: it turns the pipe number into a display name with `pipenumToString` (0x1000bdb4), opens that display through `timeoutXOpenDisplay` (0x1000a070), loads the combination file with `saXSGIvcLoadVideoFormatCombination` (0x10028d30) and sets one platform parameter through `saXSGIvcSetPlatformParameter` (0x10024a20), so the format reaches the pipe through the X server's video-control extension and not through a device node.
  The direct route is the group of `KonCmd` (0x10026850), `KonData` (0x100280e0), `KonData2` (0x10035360), `KonData5` (0x100353c0), `KonFlush` (0x10032ef0) and `KonWaitRData` (0x100278e0), which store command words through a window mapped from `/dev/graphics` and are described in [setup-tools.md](setup-tools.md#setmon).
  `vcVideoCmd` (0x10032fa0) and `vcGetVideoRply` (0x10026e40) are 56-byte wrappers for one framed display-generator request and its reply.
- `usr/gfx/ircombine`: **inferred.**
  A 766080-byte ViewKit and Motif program that edits and loads video-format combinations for the pipe; `main` at 0x10020040 (940 bytes) starts the toolkit with `InitEZ`, parses the command line with `vfcDoCommandLine` (0x10070980), reads a format file with `iGUIReadFormatFile` (about 0x10020750), builds `VkwindowMainWindow` (0x1006e600) or a `SmallFormatFileBrowser` (0x1006d1f0), and calls `usage` (0x10070880) on a bad option.
  Its form classes (`EncoderForm`, `Form1`, `Form2`, `SiriusForm`, `GvoForm`, `HdgvoForm`, `DvpForm`) match the option boards named in the resource file, and it searches `%s/usr/gfx/ucode/KONA/dg4/vfo` for formats.
  It links `libXsgivc`, so a combination reaches the running pipe through the video-control extension, and it contains the string `/dev/opengl`; the sequence it sends on that device was not read, so the hardware path past the library call is **unknown** here.
- `usr/gfx/sgcombine`: **inferred.**
  A 230584-byte ViewKit program of the same design as `ircombine`, built for the Octane2 and Fuel families: its search paths are `/usr/gfx/ucode/STINGRAY/cmb`, `.../vfo` and `/usr/gfx/ucode/ODSY/vof`, and its target check prints "target display does not have VPRO graphics".
  Only three helper names (`vfmtFindKonaFormatFile`, `vfmtFindKonaCombinationFile`, `vfmtGetLastKonaFileStat`) and the path `%s/usr/gfx/ucode/KONA/dg4/cmb/%s` come from a library shared with the Kona tools; `main` is at 0x1000fba0.
  It has no role for an InfiniteReality pipe: it holds no device path and imports neither `ioctl` nor `open`, so it reaches boards only through the video-control extension and `libGL`.
- `usr/gfx/dmconf`: **inferred.**
  A 162976-byte ViewKit program that configures the digital-media and VPro option hardware of a display; `main` at 0x10008850, usage with `[-destination file F] [-gui] [-vpro [list]] [-dmx [list]] [-target display]`.
  It searches the `STINGRAY`, `VOYAGER`, `ODSY` and `KONA/dg4` format directories, and it prints "target display does not have InfiniteReality graphics" when asked for the pipe class on a display that lacks it, so a Kona display is a legal target for part of its work.
  The `DM5/DM7 area must be fully contained within VPro area` check shows that its main subject is the Octane2 path; it holds no `/dev/` path, so it reaches boards through the video-control extension.
- `usr/bin/X11/xsetmon`: **inferred.**
  A 361984-byte Motif client that shows and changes the video format and gamma of a running X server's screens; `main` at 0x1003ca70 (296 bytes) builds the `xsetmon` class.
  Its options are `-target`, `-nogui` and `-help` with an optional file name (usage string "Usage: xsetmon -target -nogui -help [file name]"), the `-target` host being reached with `rsh root@%s date` as an access test before the display is opened.
  Its 61 `XSGIvc*` imports make the extension its only route to the pipe, and the fallback message in [`XSetmon`](#x-resource-files) covers a server without that extension.
