# Pipe tools: one entry per function

Read from the 6.5.30m N32 programs `usr/gfx/KONA/bin/ireeprom` and `usr/diags/IR/bin/hyper`, whose roles are in [install-tools.md](install-tools.md#programs-that-reach-the-pipe) and [setup-tools.md](setup-tools.md#ireeprom). Offsets are file addresses of the build. A word written to the pipe goes through `KonWGWrite`, and an operation is a token word (492) followed by a command word and its arguments. Routines without a symbol, such as the ones at 0x10002960, 0x1000280c, 0x10003b44, 0x10003c60, 0x10003c98 and 0x10003d64, are named by address.

## `ireeprom`: pipe EEPROM tool

- `__start` (`usr/gfx/KONA/bin/ireeprom` 0x10001540, 268 bytes): **Established.** The process entry. It takes argument count and vector from the initial stack (words at sp+0 and sp+4), aligns the stack down to 16 bytes and reserves 16, and works out the environment pointer as the vector plus four bytes per argument plus four. It stores that pointer into
  `_environ` only when `_environ` is still zero, and stores the count and the vector into `__Argc` and `__Argv`. It then calls `__istart` and `__readenv_sigfpe`, calls `main` with the count, the vector and the environment pointer loaded back from those three variables, passes the result to
  `exit`, and ends in a `break` that is never reached.
- `_mcount` (`usr/gfx/KONA/bin/ireeprom` 0x1000164c, 12 bytes): **Established.** The profiling hook the compiler plants at function entry when it builds with call counting. This copy only pops the 16 bytes the caller pushed (`addiu sp,sp,16`) and returns with
  `jr ra`, whose delay slot restores `ra` from `at` (the call sequence left the profiled function's own return address there), so nothing is counted and no pipe word is written.
- `main` (`usr/gfx/KONA/bin/ireeprom` 0x1000165c, 964 bytes): **Established.** The driver of the tool, followed from its first instruction to its single return. It calls `getuid` and, for a non-zero user, prints "Not a super-user" on stderr and calls `exit(1)`. The routine at 0x10001ecc runs
  `getopt` over the argument vector and fills the `opts` block (mode bits at +0, the force flag at +4, the debug level at +8 from `atoi`, the pipe number at +12 from `atoi` and the data file name at +16 from
  `strdup`), the routine at 0x10001a20 returns an open handle on the graphics device (a negative result goes to `exit(2)`), and a pipe number of -1 makes the loop run from pipe 0 up to the count in `numpipes` less one. Each pipe prints "==== Pipe %d ====", is passed with the handle to the routine at 0x10001abc (which also stores a word through its third argument, an address in the frame of
  `main`; a negative result skips the pipe) and then to `setup_ucode` with that word as its second argument; a failure prints "Cannot communicate with graphics board". The mode word selects one operation: 1 `write_eeprom`, 2
  `read_eeprom`, 8 `erase_eeprom`, 4 `verify_eeprom`, 16
  `info_eeprom`, 32 `erase_combo`. A negative result prints that operation's failure line and a good one its success line (verification, information and combination erase print none), and the routine at 0x10001e74 then calls `ioctl(handle, 104, 0)` and `perror`s "detach" on -1. A pipe that cannot be reached or brought up, and an operation that returns a negative result, each set the exit value to 2 when it is 0 and add 1 otherwise; the routine at 0x10001ec0 jumps to the library close routine for the handle and the value returned is that exit value (0 when every pipe worked).
- `setup_ucode` (`usr/gfx/KONA/bin/ireeprom` 0x1000228c, 900 bytes): **Established.** Puts the pipe into a state in which
  `ireeprom` can talk to it; when the second argument is zero it first sends the five words 492, 3,
  `pagenum`, `pageoff` and 16384 through `KonWGWrite`, and in either case it then makes up to three probes, each a
  `set_rdata`, the words 492, 4 and
  0, and `get_rdata` with a limit of 100 polls; a probe succeeds when `get_rdata` is not negative and the third word of the read-back area is non-zero, and the routine then calls `debug_enable` (first argument 1 when the second argument was zero, otherwise 0; second argument the `-d` level) and returns 0. A failed probe prints "graphics not responding...", followed by " trying again" on the first two and "loading ucode" on the third. After three failures it sends the private ioctl 10100 with flag 10 and a 65536-byte length, the generic ioctl 106, and ioctl 10100 again with flag 9, treating a negative result of any as a failure that prints the `perror` text "diag-map" or "gfx-initialize" and returns -1. The two words it gets back are stored in
  `pagenum` (from offset 8 of the ioctl block) and `pageoff` (from offset 16) and handed to the routine at 0x1000280c, whose negative result prints "Cannot load ucode for flashing EEPROM" and returns -1. It then sends the word 1 three times, calls `debug_enable` with a first argument of 1, sends 1,
  8, 1280 and 1024, then the five words 492,
  3, `pagenum`, `pageoff` and 16384, and runs the same probe once more: a negative reply or a zero third word returns -1, and a non-zero one completes as above.
- `debug_enable` (`usr/gfx/KONA/bin/ireeprom` 0x10002610, 188 bytes): **Established.** Sends a debug-level request to the pipe when the
  `-d` value is in range. It takes a flag in its first argument and the level in its second (the callers pass the word at `opts`+8), and returns 0 without writing when either is zero (the level is tested first). A level of -99 or above, or below -105, returns -1 without writing. A level from -105 to -100 is turned into the number -100 minus the level (0 to 5) and sent through `KonWGWrite` as the six words 1,
  14, that number, 1, 1 and 0, with no 492 token before them; the result is 0.
- `get_rdata` (`usr/gfx/KONA/bin/ireeprom` 0x100026cc, 172 bytes): **Established.** Waits for the pipe's reply. The second argument is the poll limit and is replaced by 500 when it is zero; the first argument is not read. It tests the first word of the read-back area (reached through the
  `r_area` pointer) and, while that word is zero, calls `sginap(2)` and tests again, at most limit minus one sleeps in all. A non-zero first word returns the second word of the area, and a word still zero when the limit is used up returns -1.
- `set_rdata` (`usr/gfx/KONA/bin/ireeprom` 0x10002778, 28 bytes): **Established.** Clears the reply flag before a request: it loads the
  `r_area` pointer, follows it and stores zero in the first word of the read-back area, with no other effect and no result value. Every sequence of tokens that expects an answer starts with this call, so `get_rdata` sees only the next reply.
- `KonWGWrite` (`usr/gfx/KONA/bin/ireeprom` 0x10002a4c, 400 bytes): **Established.** Writes one word into the write-gather window. It first reads the word at offset 16904 (0x4208) of the mapped window
  (`gfxvaddr` points at it), masks it with 0xffe and, while the result exceeds 1500, calls `sginap(1)` and reads again; when the round counter (it starts at 1) has reached 1000 it prints "ireeprom: Gfx Fifo write error" on stderr and calls `exit(1)`. The word then goes to window offset 12 when the cached board class is 1 and to offset 0 when the class is 2, 3 or
  4. A class of zero in the cache is first filled in by the routine at 0x10002960, which opens the inventory with `setinvent`, walks `getinvent` records until one has class 1 and type 1 (+4 and +8), maps its word at +20 from 11,
  15, 19, 22 to 1,
  2, 3, 4, closes with
  `endinvent`, and, when it found none, prints the warning "CPUBOARD is not IP19, IP25,
  IP27 or IP35, assuming IP19" and stores 1; the last matching record wins, and the class is always 1 to 4 or the cached value.
- `write_eeprom` (`usr/gfx/KONA/bin/ireeprom` 0x10002bdc, 1688 bytes): **Established.** Programs the pipe EEPROM from a boot-format file. It returns -1 for a null file name, opens the file with flags 0x800 and reads a 20-byte header whose first word must be 0xbadc0ffe, then a 128-byte image header. It reads the EEPROM's current header with the routine at 0x10003b44. When the stored header's state is not 1 (erased) and its revision is not lower than the file's, it prints "Warning: attempt to load non-newer revision" with both revisions and returns -1 unless the force flag
  (`opts`+4) is set. The code and data length is the sum of the words at +20 and +24 of the image header; a zero length returns -1, else it reads that many bytes, computes the byte sum with the routine at 0x10003c60 and cuts the data into passes of at most 4096 words, each a `set_rdata`, the words 492,
  1, 0, the byte offset and the count, a "." printed on stdout, `sginap(100)`, the data words, `sginap(100)` and
  `get_rdata` with a limit of 1000 (a negative result or a zero third word prints "EEPROM write failed." and returns -1). It writes the new 48-byte header with state 2 through the routine at 0x10003c98, reads everything back, compares the data with `memcmp` and the header over 48 bytes, and on a mismatch prints "error: EEPROM contents do not match load image", rewrites the header with state 3 and returns -1; a match prints "Images match: EEPROM loaded with new image" and returns 0.
- `erase_eeprom` (`usr/gfx/KONA/bin/ireeprom` 0x10003274, 444 bytes): **Established.** Blanks the whole firmware area. After printing "Erasing KONA EEPROM..." it runs 32 passes (the counter climbs by 4096 to 0x20000), each a
  `set_rdata`, the words 492, 1,
  0, the byte offset (16384 more per pass) and 4096, then 4096 data words of zero and a `get_rdata` with limit 0 (so 500). A negative result or a zero third word prints "EEPROM write error..." on stderr and returns -1; a good pass prints "." and flushes stdout. After the last pass it prints a newline and calls the routine at 0x10003c98 with a header block whose only word stored here is +28 (value 1, the erased state), then returns 0, or -1 when that call fails.
- `erase_combo` (`usr/gfx/KONA/bin/ireeprom` 0x10003430, 84 bytes): **Established.** Removes only the stored video combination. It prints "Erasing KONA EEPROM video combination..." with
  `printf`, then sends two words through `KonWGWrite`, the token 492 and the word 6, with no `set_rdata`, no
  `get_rdata` and no reply check, and returns 0.
- `info_eeprom` (`usr/gfx/KONA/bin/ireeprom` 0x10003484, 296 bytes): **Established.** Prints the EEPROM's header. The routine at 0x10003b44 fills a block in its frame and a negative result returns -1. It prints the manufacturer code (word +20 of the block) and the device code (+24), then the state word (+28) as "Erased" for 1, "Good" for 2 and "Bad" for anything else. For state 1 it stops with result 0; otherwise it prints the revision (+36), the time stamp from
  `ctime` of the word at +32, the code and data length (+40) and the checksum (+44), and returns 0.
- `read_eeprom` (`usr/gfx/KONA/bin/ireeprom` 0x100035ac, 628 bytes): **Established.** Saves the EEPROM image to a file. It allocates 0x80000 bytes (a failure prints the
  `malloc` text and returns -1), reads the header and the contents with the routine at 0x10003d64, and for state 1 prints "EEPROM is erased. No readback possible..." and returns -1. It opens the named file for writing and writes a 20-byte header (the word 0xbadc0ffe, the revision from header +36 and the time stamp from +32), a cleared 128-byte block holding header words +4, +8, +12, +16 and +0 (the last plus 0x8000000) at block offsets 20, 52,
  24, 32 and 40, then as many data bytes as header +40 gives. Any short write calls `perror("fwrite")`, frees the buffer, closes the file and returns -1; success returns 0.
- `verify_eeprom` (`usr/gfx/KONA/bin/ireeprom` 0x10003820, 804 bytes): **Established.** Compares the EEPROM with a boot-format file. After printing "Reading EEPROM contents ... " it reads the header and data with the routine at 0x10003d64 and prints "done" (or "failed" and -1). A state of 1 prints "EEPROM is erased ... No readback possible" and returns -1. It opens the file, reads the 20-byte header (checking the word 0xbadc0ffe) and the 128-byte image header, sizes the data as the sum of the words at +20 and +24, reads it, and prints "Comparing images...". Seven pairs of header words are compared and then
  `memcmp` runs over the data; it prints "EEPROM contents match file data" or "EEPROM contents do not match file data". Both outcomes return 0, so the caller prints its verification failure only for an error such as an unreadable file.
- `__istart` (`usr/gfx/KONA/bin/ireeprom` 0x10003eec, 4 bytes): **Established.** The start-up hook
  `__start` calls before `main`. Its 4-byte symbol is one `nop` word (0x00000000) in the `.init` section, and the
  `jr ra` that returns sits at 0x10003ef0, just past the symbol, so the hook does nothing and touches no register or memory.

## `hyper`: hyperpipe test program

- `__start` (`usr/diags/IR/bin/hyper` 0x10002680, 268 bytes): **Established.** The process entry of the test program, laid out like the entry of the EEPROM tool but bound to this program's own global slots. It reads the argument count from sp+0, takes the vector address from sp+4, rounds the stack down to 16 bytes and finds the environment as vector plus four plus four bytes per argument. The environment goes into
  `_environ` only while that is zero; the count and vector go into `__Argc` and `__Argv`. After
  `__istart` and `__readenv_sigfpe` it calls `main` with count, vector and `_environ`, hands the result to
  `exit` and ends in a `break` that cannot be reached.
- `_mcount` (`usr/diags/IR/bin/hyper` 0x1000278c, 12 bytes): **Established.** The compiler's call-counting stub in this build. Its three words drop the 16 bytes the caller pushed, return with `jr ra` and copy
  `at` into `ra` in the delay slot, so no count is kept and nothing is drawn or sent.
- `usage` (`usr/diags/IR/bin/hyper` 0x10003f00, 460 bytes): **Established.** Prints the help text and quits. It writes the line "usage: %s -[d e# h# l# n# p# r# s# t w# x# y# z]" with the program name from
  `_pname`, then one `fprintf` line each for the thirteen options d, e, h, l, n, p, r, s, t, w, x, y and z, all to stderr, and calls `exit(1)`, so it never returns. The text says -e is the frame count to exit after, -h the window height (default 1024), -l the most random lines per frame, -n the most pipes, -p the pipe list, -r the hardware ring, -s the frames per image in slow mode, -t test mode without hyperpipe hardware, -w the width (default 1280), -x and -y the origin and -z a random sleep per frame. The option string at 0x10008000 also holds `v`, which the help does not list.
- `getScreenFromDisplay` (`usr/diags/IR/bin/hyper` 0x10005300, 228 bytes): **Established.** Pulls the screen number out of a display name. Its argument is the display string;
  `strchr` looks for ':' and, when none is found, the routine prints "invalid display name" with the name and `_pname` to stderr and calls `exit(1)`. From the colon it looks for '.' with `strchr`; no dot returns 0, otherwise the result is `atoi` of the text after the dot. It makes no X call, so the video-control queries of the program happen elsewhere, in
  `perPipeMainProc`.
- `waitForMapNotify` (`usr/diags/IR/bin/hyper` 0x100053f0, 104 bytes): **Established.** The event test that
  `perPipeMainProc` passes to `XIfEvent` while waiting for its window to appear. It takes the display, the event and a pointer to the wanted window, and returns 1 only when the event's type word (+0) is 19, the map notification, and the window the pointer designates equals the word at +16 of the event; any other event returns 0. It stores nothing outside its own frame.
- `perPipeGfxInit` (`usr/diags/IR/bin/hyper` 0x10005460, 784 bytes): **Established.** Sets the drawing state of one pipe's window and loads a font for its labels. It takes the display (first argument), the pipe number (third) and the window width and height (fourth and fifth). It selects the modelview matrix mode (5888) and then the projection mode (5889), loading the identity in each, and in the projection mode sets an orthographic box of 0 to 1 in x and y and -1 to 1 in z, a viewport of the full width and height, disables depth test (0xb71), lighting (0xb50) and dither (0xbd0), enables capability 0x809d, sets the raster position to 0,
  0 with a pixel zoom of 1 and -1, selects the front buffer (0x404) for drawing, clears it to green (0, 1, 0,
  0) and then selects the back buffer (0x405). It then tries `XLoadQueryFont` with a Palatino, a New Century Schoolbook and a Times italic name, in that order, stopping at the first that loads; if none does it prints "no suitable font found" and returns 0. With a font it calls `glGenLists` for the font's character range (a zero result prints "couldn't generate display lists" and returns 0), `glXUseXFont` over that range, `glListBase` and
  `glFinish`, and returns 1.
- `perPipeGfxScribble` (`usr/diags/IR/bin/hyper` 0x10006610, 280 bytes): **Established.** Draws random coloured line segments for the scribble mode. Only its third argument, the count, is read. It calls `glBegin(3)` (line strip) and, for each of the count's iterations, takes three
  `drand48` values as the colour for `glColor3f` and two more for `glVertex2f`, whose second coordinate is the second value times 0.25 (the double at 0x10008f38); it ends with
  `glEnd` and returns its result.
- `__istart` (`usr/diags/IR/bin/hyper` 0x1000673c, 4 bytes): **Established.** The start-up hook that
  `__start` calls before `main`. The symbol covers one `nop` word (0x00000000) at the end of the `.init` padding; the
  `jr ra` that returns is the next word, at 0x10006740, outside the symbol, so the hook changes no register or memory.
- `perPipeMainProc` (`usr/diags/IR/bin/hyper` 0x100040d0, 4644 bytes): **Established.**
  The body of one per-pipe child process: it opens that pipe's display, builds a window and a direct context,
  binds the process to the hyperpipe, then renders frames until told to stop. Its only argument is the pipe
  number, kept at sp+144. The display name is the address `hyperConfig` + 92 times the pipe number, the same
  92-byte stride and name-at-+0 layout `perPipeGfxDraw` uses for its label. Two attribute lists are copied from
  read-only data onto the stack, 15 words at sp+32 and 11 words at sp+96: the words 4, 5, 8, 8, 9, 8, 10, 8, 11,
  8 (attributes 4 and 5 without a value, then attributes 8, 9, 10 and 11 each with the value 8), and the first
  list continues with attribute 100000 valued 4, attribute 100001 valued 1 and a zero terminator; the second
  list stops after attribute 11 with the zero. In the standard GLX numbering these are RGBA, double buffer and
  8-bit red, green, blue and alpha, and the first list adds the multisample pair. Every failure below is handled
  the same way, called here "the failure exit": a line on stderr beginning with the program name and pipe
  number, the pipe's word in `pipe_ready` set to -1, `done` set to 1, and `exit(1)`. Set-up order, each step
  guarded by the check named: `XOpenDisplay` (null: "can't connect to display"); `getScreenFromDisplay` for the
  screen number kept at sp+156; `glXQueryExtensionsString` (null: "can't obtain extension string"); `strstr` for
  "GLX_SGIX_hyperpipe" (absent: "no GLX_SGIX_hyperpipe extension"); `XSGIvcQueryVideoScreenInfo` into the block
  at sp+168 ("can't get Xvc screen information"); `XSGIvcQueryChannelInfo` for channel 0, which returns a
  pointer through sp+216 ("can't get Xvc channel information"); and `XSGIvcQueryScreenInputSyncSource` with the
  addresses sp+220, sp+224 and sp+228 ("can't get Xvc sync source information"). When `flag_debug` is non-zero
  the process also prints "child process running on %s" after the first step and "child process %d screen %d"
  with its `getpid` result after the screen number, and here prints, in this order, the string at sp+180 as
  "type", the channel structure's word at +0 as "active", its word at +404 as "physical port", and the words at
  sp+224 and sp+228 as "source" and "locked". The pipe counts as genlocked only when the word at sp+224 is -2
  and the word at sp+228 is 1: it then sets the pipe's word in `pipe_genlocked` to 1, otherwise it prints "this
  pipe is not genlocked" and sets it to 0. `glXChooseVisual` runs with the first list and, when that returns
  null, again with the second, a second null giving "no appropriate visual".
  `glXCreateContext(display, visual, 0, 1)` (null: "can't create context") is followed by `glXIsDirect` (zero:
  "not a direct rendering context"). `XCreateColormap` takes the root window from the screen record array at the
  word display+140 (80 bytes per screen, the root at +8 of the record the visual's word at +8 selects), the
  visual's first word and an alloc argument of zero (null: "can't create colormap"). `XCreateWindow` takes as
  parent the root of the screen record picked by the screen number at sp+156, uses `x_orig`, `y_orig`, `x_size`
  and `y_size`, a border width of 0, the visual info's depth word at +12, class 1, the visual's first word and a
  value mask of 0x2808 (bits 0x8, 0x800 and 0x2000, built up in the word at sp+244) over the attribute block
  whose address it passes on the stack; the block holds a border pixel of 0 (stored at sp+260), the colormap
  just made (sp+300) and an event mask of 0x28001 (sp+288; key press, exposure and structure-notify in the
  standard numbering); null gives "can't create window". `XSetStandardProperties` then names the window with the
  program name and passes size hints of flags 3 (user position and size) built from the same four globals,
  `XInternAtom` interns "_MOTIF_WM_HINTS" and `XChangeProperty` replaces the property with four 32-bit words
  from sp+400, of which the code sets the first to 2 and the third to 0; the second and fourth are not set here.
  `XMapRaised` and `XIfEvent` with `waitForMapNotify` wait for the map, `glXMakeCurrent` (zero: "can't connect
  context to window") makes the context current and `perPipeGfxInit` runs with the pipe number, `x_size` and
  `y_size`; a zero return takes the failure exit without a message of its own. Only when `flag_test` is zero
  does it bind: with `flag_debug` set it prints "binding to hyperid %d", then
  `glXBindHyperpipeSGIX(display, hyperId)` returning non-zero prints "can't bind to hyperpipe %d" and takes the
  failure exit. It then sets the pipe's `pipe_ready` word to 1. When `flag_slow` is non-zero it spins until the
  pipe's `pipe_time_adjust` word is non-zero, calls `glXGetVideoSyncSGI` once into sp+520 and again into sp+524
  until the two counts differ, and stores the second count in `pipe_time_adjust`. It always spins until the
  pipe's `pipe_go` word is non-zero. With `flag_slow` set, it then calls `glXWaitVideoSyncSGI` with divisor
  `flag_slow` times `num_pipes` and remainder (that pipe's adjust word + `flag_slow` times the pipe number + 1)
  modulo the divisor (an unsigned divide that traps on zero). If the pipe number is below `num_pipes` it sets
  `pipe_go` for the next pipe to 1, which hands the start signal on, and at `flag_debug` 2 or more prints
  "started, q = %d". The frame counter at sp+528 starts at the pipe number. The frame loop runs while `done` is
  zero and the counter is below `flag_exit`. Each pass drains `XPending` and `XNextEvent`: a type 2 event (key
  press) goes through `XLookupString` and a key symbol of 0xff1b (Escape) sets `done`. It prints "about to
  render %d" at `flag_debug` 3 or more, calls `perPipeGfxDraw` with display, window, the frame number, the pipe
  number, `num_pipes`, `x_size` and `y_size`, calls `perPipeGfxScribble` when `flag_scribble` is non-zero with
  the count truncated from `drand48` times `flag_scribble`, repeats the video-sync wait when `flag_slow` is set
  (the remainder here has no +1), sleeps `sginap` for the truncation of `drand48` times 5.0 when `flag_z` is
  set, prints "frame %d about to call glXSwapBuffers" at `flag_debug` 2 or more, calls `glXSwapBuffers` and adds
  `num_pipes` to the counter. After the loop it sets `done` to 1 and, unless `flag_test` is set, unbinds with
  `glXBindHyperpipeSGIX(display, -1)`: a non-zero result prints "can't unbind from hyperpipe", sets `pipe_ready`
  to -1 and exits 1; `flag_debug` adds "unbinding .." and "unbinding done.." lines. It ends by setting the
  pipe's `pipe_ready` word to 0 and calling `exit(0)`, so the `jr ra` at 0x100052ec is never reached. The
  routine writes no board register; the pipe is reached only through the GLX hyperpipe calls.
- `perPipeGfxDraw` (`usr/diags/IR/bin/hyper` 0x10005770, 3744 bytes): **Established.**
  Draws one frame of a test picture, a clock face with frame and pipe labels and four colour ramps, but only
  when the frame is this pipe's turn. Its arguments are, in order, the display and the window (both stored but
  never read), the frame number (third), the pipe number (fourth), the pipe count (fifth) and the window width
  and height (sixth and seventh). A signed remainder of the frame number by the pipe count (an unconditional
  trap on zero) must equal the pipe number; otherwise it writes "%s(%d): rendering %d out of order, skipped" to
  stderr (`__iob` + 32) with the program name, the pipe number and the frame number and returns the `fprintf`
  result. On the matching frame it clears the colour buffer (0x4000) to black, sets a line width of 3.0 and
  draws a white unit-square outline (`glBegin(2)` with the corners (0,0), (0,1), (1,1), (1,0)). From the width
  and height it forms four floats: a horizontal radius height * 0.3 / width and a vertical radius 0.3 (at sp+0
  and sp+4), and character offsets (1/width) * -5.0 and (1/height) * -10.0 (at sp+8 and sp+12). In magenta it
  draws a 360-vertex ellipse outline, centre (0.5, 0.55), x = 0.5 + radius * cos and y = 0.55 + radius * sin of
  each whole degree. It then draws 60 minute ticks as line pairs (`glBegin(1)`) every 6 degrees, here with x
  from the sine and y from the cosine: the vertex pair runs from 0.8 times the radii when the angle is a
  multiple of 30 (otherwise 0.9) to the full radius. In cyan it labels the hours: for 1 to 12 it formats the
  number with "%d", places the raster position at 0.75 of the radii at an angle of 360 * number / 12 degrees,
  shifted by the string length times the first offset and by the second offset, and draws it with
  `glCallLists(length, 5121, text)`. In white it draws a second hand at an angle of 6 times (frame mod 60)
  degrees from the centre out to the full radii, and a slower hand at (frame mod 3600) * 360 / 3600 degrees out
  to 0.6 of the radii. It prints, each through `sprintf`, `strlen`, `glRasterPos2f` and `glCallLists`: "Frame
  %5d" with the frame number at y + 0.65, "Pipe %2d" at y + 0.45, the display name `hyperConfig` + 92 times the
  pipe number at y + 0.4 (all three at x = 0.5 plus the string length times the first offset), and the pipe
  number alone at x = (pipe + 1) / (pipe count + 1), y = 0.9. The final loop runs 100 times with v = i / 100.0
  and draws four 0.01-wide quads (`glBegin(9)`) at x from v: a grey ramp at y 0.15 to 0.2 with colour (v, v, v),
  red (v, 0, 0) at 0.1 to 0.15, green (0, v, 0) at 0.05 to 0.1 and blue (0, 0, v) at 0 to 0.05. The return value
  is the result of the last `glEnd`. It touches only GL and C-library calls, no board register.

- `main` (`usr/diags/IR/bin/hyper` 0x100027b0, 5968 bytes): **Established.**
  The parent process of the test program: it reads the options, lists and picks the hyperpipe-capable pipes,
  configures the ring, starts one child per pipe, supervises them and tears the ring down. It returns 1 on every
  failure and 0 after a clean run (the result sits at sp+176 and is the only value loaded at the single return).
  It first fills the 32-word `usepipes` array with 0 to 31. Then `getopt` with `:de:h:l:n:p:r:s:tvw:x:y:z`
  dispatches through a 23-entry jump table (0x10008020, indexed by the option character minus 100): `d` and `v`
  both add one to `flag_debug`; `e`, `h`, `l`, `r` and `w` store `atoi` of the argument in `flag_exit`,
  `y_size`, `flag_scribble`, `flag_ring` and `x_size`; `s` stores it in `flag_slow` and calls `usage` unless it
  is positive; `t` sets `flag_test` and `z` sets `flag_z`; `x` and `y` both store their argument in `x_orig`,
  and no code in `main` writes `y_orig`; every other letter calls `usage`. `n` stores the pipe count in
  `flag_npipes` but calls `usage` when `flag_npipes` is not 32 or `flag_usepipes` is already set; `p` makes the
  same two tests, resets `flag_npipes` to 0 and walks the comma-separated list, storing `atoi` of each item in
  the next `usepipes` word (the loop tests `flag_npipes` below 33 although 32 words are initialised) and setting
  `flag_usepipes`. It then opens the default display with `XOpenDisplay(0)`, takes the word at display+132 as
  the screen number and applies the same checks as the other pipe tools, each printing a line with the program
  name to stderr and returning 1: a null display ("can't connect to display" with the `DISPLAY` value), a null
  `glXQueryExtensionsString`, no "GLX_SGIX_hyperpipe" in it, and a null or zero-count
  `glXQueryHyperpipeNetworkSGIX` result (count at sp+20, list pointer at sp+24; "no hyperpipe capabilities in
  the system"). It prints the count ("%d hyperpipe-capable pipes in this system:") and one "Pipe %s Ring %2d"
  line per 84-byte entry, name at +0, ring number (the word at +80). Selection runs over the entries while the
  number chosen, `num_pipes`, is below `flag_npipes`. With `-p` it looks for the entry whose index equals the
  next `usepipes` word; without `-p` it takes the entries whose ring number equals `flag_ring`. A chosen entry
  is copied into the 92-byte record `hyperConfig` + 92 times `num_pipes` (name by `strcpy`, then the word at +84
  set to 2, the word at +88 to the new record's own slot number, `num_pipes`, and the word at +80 to -1; with
  `flag_debug` it prints "including pipe %s as entry %d timeSlice (%d) in configuration"). Record 0 then gets
  +80 set to 0 and bit 0 of +84 set, and the program prints "using %d pipes on hyperpipe ring %d" and, per
  record, "Pipe %s is time slice %d". Unless `flag_test` is set it calls
  `glXHyperpipeConfigSGIX(display, flag_ring, num_pipes, hyperConfig, &hyperId)`; the result 91 prints "error
  configuring hyperpipe" and returns 1. Next `done` is cleared and, for 32 slots, the child process id word (at
  sp+40, set to -1), `pipe_ready`, `pipe_genlocked` and `pipe_time_adjust` are initialised; `srand48(getpid())`
  seeds the random numbers and, with five or more pipes, `usconfig(1, num_pipes + 4)` raises the process limit.
  For each pipe it calls `sginap(10)` and `sproc(perPipeMainProc, 64, pipe)`; -1 prints "can't sproc for pipe
  %d", calls `perror` and goes to the failure cleanup, otherwise the id is stored. It then polls each pipe's
  `pipe_ready` word with up to 1000 `sginap(2)` waits; a word of -1, or a wait that runs out, prints "pipe %d
  didn't initialize" and cleans up. It adds up `pipe_genlocked`; a sum below `num_pipes` minus one prints "more
  than one pipe not genlocked" and cleans up. With `flag_slow` it sets every `pipe_time_adjust` to -1, waits for
  each child to replace it, and then reduces each modulo `flag_slow` times `num_pipes` (modulo `num_pipes` in
  the branch taken when `flag_slow` is read as zero), printing "pipe %d time adjustment %d" in debug mode. It
  sets `pipe_go` for pipe 0, then until `done` is set sleeps `sginap(50)` and calls `getpgid` on each child,
  printing "pipe %d died" and cleaning up when one is gone. Afterwards it waits for each `pipe_ready` word to
  return to 0, destroys the configuration with `glXDestroyHyperpipeConfigSGIX(display, hyperId)` unless
  `flag_test` is set (a non-zero result prints "can't destroy hyperpipe config", debug adds "destroy done"),
  calls `XFree` on the list and `XCloseDisplay` and returns 0. The failure cleanup sets `done`, sleeps
  `sginap(100)`, sends signal 9 with `kill` to every child whose id is not -1, repeats the destroy, `XFree` and
  `XCloseDisplay`, and returns 1. The routine writes no board register.
