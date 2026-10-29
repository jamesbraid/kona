# tport.bin: a second ARM image with the display-generator code

What `usr/gfx/ucode/KONA/tport.bin` (IRIX 6.5.30m, 127889 bytes) is, from its container, its disassembly ([tport.s](tport.s)) and a comparison with `arm1.u` ([arm1.md](arm1.md)). Facts are labelled **established** (read from the file or its code at the stated address), **inferred** (with the reasoning) or **unknown**.

`scripts/arm1_disasm.py --tport` ([script](../scripts/arm1_disasm.py)) writes [tport.s](tport.s): the read-only image disassembled, call targets labelled, and the display-request table printed at its head.

## Container

**Established.** Five big-endian words precede an AIF-style header laid out as in [arm1.md](arm1.md): 0xbadc0ffe, 0x83, 0x44c00a35, 0 and 0. The header then has two no-op words, a branch-and-link (0xeb00000c), a data word (0xa4), an SWI 0x11, the read-only size 0x178e0 (96480), the read-write size 0x7a1c (31260), a debug size of 0, the zero-initialised size 0x52794 (337812), a debug type of 0, the image base 0x0c000000 (the same as `arm1.u`) and the data base 0x040178e0. The header is the 0x80 bytes from file offset 0x14: read-only address A is file offset 0x94 + (A - 0x0c000000), and read-write address A is file offset 0x94 + 0x178e0 + (A - 0x040178e0). 0x94 + 96480 + 31260 is 127888, one byte short of the file size. There is no debug table, so the image has no symbols. **Checked:** under this mapping every handler pointer of the request table below lands on a function entry or a one-instruction stub, and every name pointer on a request name. The meaning of 0xbadc0ffe, 0x83 and 0x44c00a35 is **unknown**; **inferred:** a magic number, a version and a build stamp.

## Function names

**Established** (`arm1_disasm.py --tport`). 227 addresses are branch-and-link targets or request handlers. 135 carry the name of the `arm1.u` function whose instruction words are identical once branch offsets and pc-relative offsets are masked (the rule is in the script), and the request handlers carry the names of the request table. The rest print as `fn_<address>`. **Inferred:** a matched function is the same source compiled into both images.

## Start-up

**Established** (0x0c000000-0x0c0001ff). The entry differs from `arm1.u`'s. It loads r10 from 0x0c000000, sets r8 = 0x800000, clears memory below 0xa00000 in 32-byte steps (as `arm1.u` does, there with r8 = 0), copies two blocks described by a table at 0x7ff00 (address and length pairs, then a fill length), stores r8 to the host-interface word at 0x2002bc, switches processor mode through the same `msr`/`ldmda` sequence as `arm1.u`, sets r8 = 0 and r9 = 0x200200 (the host-interface base `arm1.u` uses), calls `fn_0c012be4`, and jumps through the word at r9 + 0x200. That jump is the step of `arm1.u`'s input loop that fetches the next handler address from the host interface ([arm1_firmware.md](arm1_firmware.md)).

**Established** (`fn_0c012be4`, 0x0c012be4-0x0c012cf0). The initialisation reads bit 31 of the host-interface word at r9 - 0x200 into a flag word at 0x040198a8, fills a small record there, calls `DoDGRqstFetal(0)` (the display-generator state build of `arm1.u`), runs two delay loops of 0x0fffffff iterations around two helpers, copies three big-endian halfwords from r8 + 0x40-0x45 into a record at 0x0406f70c, and ends in `simfast_end`.

## The display-request table

**Established** (read-write data at 0x040188d8, printed at the head of [tport.s](tport.s)). 93 entries of 12 bytes, {name pointer, payload word count, handler}. Names and word counts equal `arm1.u`'s `DGDispatchTable` ([dg_dispatch.tsv](dg_dispatch.tsv)) for all 93 requests, including `LoadFormat` with 383 words. `arm1.u`'s entries are 8 bytes, {count, handler}.

- Requests 80-92 (`QueryMonitorName`, `MonitorCommand`, `LoadXilinx`, `XServerVideoInit`, `InternalGenlock`, `GetInternalGenlock`, `BufferParams`, `GetBufferParams`, `DataFormat`, `GetDataFormat`, `DVPMult2Freq`, `VBOBCommand`, `GetVBOBReply`) point at 13 consecutive stubs at 0x0c00e454-0x0c00e484, each a single `mov pc, lr`. **Established:** this image accepts those requests and does nothing.
- Requests 0-79 have real handlers; most match `arm1.u` word for word, among them `DoDGRqstLoadFormat`, `DoDGRqstEnableChannel`, the cursor, blanking, gain, pedestal, sync, encoder, genlock, phase, gamma and textport requests.

## What the image contains

**Established** (function names and strings in [tport.s](tport.s)):

- The display-generator request handlers and their helpers, including the clock helpers `dgLoadVocClockParams`, `dgProgramClock` and `dgStartVocClock` and the reset request ("ResetRMBoards starting...", "Restarting master voc...").
- The scan-chain helpers of `arm1.u` (`jt_soft_reset`, `jt_reg_write`, `jt_reg_init`, `jt_flush`, `chip_id`, `insert_bits`, `extract_bits`), the exception entries (`reset`, `badinstr`, `pabort`, `badaddr`, `irq`, `fiq`), `send_host_intr` and `sleep`.
- The EEPROM and stored-combination code (`eeprom_state`, `eeprom_id`, `DoDGRqstAutoInit`, "el: writing combo", "loading combination from EEPROM").
- The PAB option-board loader (`DoDGRqstLoadPabXilinx`, `pgmclr`, `databit`, `chkdone`, `DoDGRqstLoadPabSizeRegs`, `DoDGRqstLoadPabCtrlRegs`).
- Five board names, "InfiniteReality Graphics", "InfiniteReality2 Graphics", "InfiniteReality2E Graphics", "InfiniteReality3 Graphics" and "InfiniteReality4 Graphics" (0x0c01691c, 0x0c01678c, 0x0c0167dc, 0x0c016808, 0x0c016760), next to engine and raster-board counts ("%d GEs, %d RMs"). `arm1.u` has no board-name string of this form.

**Established** by the display-bus scan ([scripts/dg_access.py](../scripts/dg_access.py) on [tport.s](tport.s), compared with [dg_access.tsv](dg_access.tsv)): every display-bus address `tport.bin` touches is one `arm1.u` touches, except 0x81, the first slot of the FM swap table ([docs/dg.md](../docs/dg.md#the-firmwares-display-bus-window)). The option-board addresses 0xc000-0xe806 that `arm1.u`'s `DoDGRqstDataFormat`, `DoDGRqstXServerVideoInit` and genlock code use are absent, which matches the stubs above.

**Established** (absence): none of `arm1.u`'s OpenGL token handlers (`arm_*`), nor `init_hip`, `init_ge` or the distributor loader, matched a function here, and the image has no `find_ucode`.

## What it is

**Established** (`ireeprom`, IRIX 6.5.30m, `read_eeprom` at 0x100035ac). `ireeprom -r` saves the pipe's EEPROM to a file that starts with a 20-byte header, {0xbadc0ffe, two words taken from the EEPROM's own header, 0, 0}, written with one 20-byte `fwrite`, followed by a 128-byte block and the image. `ireeprom -w -f file` writes such a file back, prints "Existing rev: %d, Image revision: %d" and refuses an older revision without `-F`. `tport.bin` starts with this header. **Inferred:** `tport.bin` is an image of the pipe's EEPROM program in `ireeprom`'s file format, and 0x83 (131) is its revision; 0x44c00a35 is **unknown**.

**Inferred.** It is the program the ARM boots from the EEPROM before any firmware is loaded: a display-only program (formats, channels, cursor, stored combinations, textport glyphs and colours) with no geometry path. It draws a console through one textport token followed by small sub-commands (colour, character and bitmap drawing, cursor, screen blanking, initialisation, a graphics-information query). `gfxinit` later loads `arm1.u`, which replaces it. This rests on the function set, the stubs and the `ireeprom` file format.

**Unknown: no shipped software or published source depends on the rest.** The textport token's number and its sub-command codes are in neither the 6.5.30 token map, nor kpm's name table, nor the 6.5.5 installed headers, so the textport command handler inside [tport.s](tport.s) is not identified, and the 92 `fn_` functions are not read one by one. Routes tried: the code and strings above, the strings of `gfxinit` (it names `arm1.u`, `geif.u`, `ged1b.u` and `ge11.u`), `kpm`, `ireeprom`, `irsaudit`, the X modules, `setmon`, `ircombine` and the 28 kernel objects of `kona.a` (none names `tport.bin`), and the 6.5.30 media sends these commands, and no PROM image ships there.
