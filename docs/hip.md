# HIP: what the kernel driver shows of the host interface

The hardware-visible side of the 6.5.30m kernel driver's DMA and interrupt handling. Register tables and constants are in [HIP.h](../HIP.h); the driver-side structures are in [kernel.md](kernel.md). Facts are labelled **established** (read from the disassembly, function named), **inferred** (reasoning given) or **unknown**. First configuration only: one IP27 Onyx2, one InfiniteReality2 (HIP2, XG) pipe.

Sources: `kona_kernel/disasm/kona_dma/kona_dma.text.s`, `kona_mapram_hip2/kona_mapram_hip2.text.s`, `gfx_io_space/gfx_io_space.text.s`, `kona_ioctl/kona_ioctl.text.s`, and the 6.5.5 installed header `sys/kona.h` for the ioctl structures.

## DMA

The kernel never programs a DMA engine by register. It sends a command in the privileged stream (the kick sequence of `kona_kern.h`) carrying a buffer address, a length and a stride, and the pipe does the transfer. The driver's job is to lock the pages, map them into a space the pipe can address, send the command and wait for the pipe's completion event.

### Address path

**Established.** Host memory reaches the pipe through a **map RAM** in the XG window: an array of 32-bit entries at window offset 0x100000 + 4 * index, one entry per 16 KB page of pipe space.

- `kona_mapram_pagesizeshiftof` returns the constant 14, so the page is 16 KB.
- `alloc_gfx_io_space` (`gfx_io_space.o`) hands out a run of pages from a per-pipe free list and calls a registered map routine, which for this board is `kona_mapram_map`. That walks the host buffer in 16 KB pieces (user addresses through `uvaddr_to_alenlist`, kernel addresses through `kvaddr_to_alenlist`) and writes, for each piece, `0x20000000 | ((physical >> 14) << 2)` into the next map RAM entry.
- The address returned is `(first page index << 14) + (buffer address & 0x3fff)`. That value A is what the DMA commands carry, as the two words `(A >> 12)` and `((A & 0xfff) | 0x9000)` (`kona_kern.h`, address pair).
- `kona_mapram_init` (run from `KONAinitialize`) writes `0x10000000 | index` into every entry and reads each back. A mismatch prints a message and kills the pipe with reason 21. The entry count is the 3-bit field in XG window+0x64 bits 3-5 (8 when zero) shifted left by 15 (`docs/xg.md`, attach step 6).
- `free_gfx_io_space` returns the run to the free list; `kona_mapram_unmap` does nothing. If the free list is empty the allocator calls a registered grow routine; "Ran out of gfx io space!" is the message in `kona_dma.o`.

**Established** (kpm's XG table, [xg.md](xg.md#the-rest-of-the-window)): an entry is `PPN` (bits 0-27, the 4 KB frame number), `INVALID` (bit 28), `PAGESIZE` (bits 29-30) and `ODD_PARITY` (bit 31). So the 0x20000000 the driver writes is page-size code 1, paired with its 16 KB page, not a valid flag, and the initialisation pattern 0x10000000 \| index marks every entry invalid. The low two bits of the stored frame number are zero for a 16 KB-aligned page. The 0x9000 in the low word is a set of transfer attributes, not part of the address ([below](#dma-pools)).

### Host to pipe: `kona_dmawrite`, `kona_idma`

**Established.** The ioctl (`KONA_DMAWRITE`) takes the 6.5.5 `kona_dmawrite_args`: a table of `tlen` vector descriptors (24 bytes each: base pointer, total length, line length, stride, 4 bytes padding), then up to 32 words of caller commands and a count. For each vector:

1. `lock_dmavec`: a zero line length means "same as the total length". The span is `total` for a flat vector, else `llen + (total/llen - 1) * (llen + stride)`. A zero span returns EINVAL (22). The page count of `(base & 0x3fff) + span` in 16 KB units must fit in 32 bits (E2BIG, 7, otherwise). Locks the user pages (`userdma`).
2. `alloc_gfx_io_space` maps them (above).

Then the caller commands are written to the command port, then for each vector `kona_idma` sends, in the privileged stream:

`DO_IDMA` (token 0x1eb) with six payload words: `A_hi`, `A_lo`, `len`, `llen`, `stride`, `flags`. `flags` is 256 when the caller waits for completion (`kona_idma` arms a software timeout and the ioctl sleeps on the semaphore at `P+5176`) and 0 otherwise. The units of `len`, `llen` and `stride` are bytes. The vector is then unlocked and its pipe-space range freed.

The caller commands are a list of groups, each one a token word, a count word n and n payload words; only the token and the n payload words are written, the count is not. The same format is used by `KONA_DMAREAD`. **Established** (`kona_dmaread` loop, `kona_dmawrite` loop).

**Established, and odd.** The loop that maps the vectors keeps one address and one page shift, those of the last vector, and the loop that sends them reuses that address and frees it once per vector. With one vector (the normal case) this is consistent; with `tlen > 1` the descriptors after the first would all use the last mapping. Whether callers ever pass more than one vector is **unknown** (libGLcore's use of `KONA_DMAWRITE` is not read).

**Completion.** The pipe reports the end of an input DMA with the ARM event code 0x100 through `HH_ARM_MBOX` (`kona_arm_intr`, HIP.h `KONA_ARM_EV_IDMA`): the driver wakes the waiter and cancels the timeout. If the timeout fires first, `kona_idma_timeout` prints the pipe-space address and length (cmn_err tag 2122) and kills the pipe with reason 4.

### Pipe to host: select feedback, `kona_dmaread`

**Established.** `KONA_DMAREAD` (and the pair `KONA_START_SELECTFEED` / `KONA_FINISH_SELECTFEED` that it wraps) reads data back from the pipe:

1. `kona_start_selectfeed` refuses if the context already has a feed in flight (EBUSY, 16). It copies base, total length, line length, stride and the `snapshot` word into the context's feed record, locks the buffer with `lock_dmavec` when the length is nonzero, maps it, and sends `START_SELECTFEED` (token 0x1f5) with six payload words: `A_hi`, `A_lo`, `len`, `llen`, `stride`, `snapshot`. With a zero length the lock and mapping are skipped and the address words are whatever the record already holds.
2. `kona_dmaread` then writes the caller's command groups (format above) to the command port. These are the commands that make the pipe produce the data.
3. `kona_finish_selectfeed` arms a timeout, sends `FINISH_SELECTFEED` (token 0x1f6) with two payload words, 256 and the context's slot index (`(context address - table base) / 176`), and sleeps on the context's semaphore.
4. The pipe answers with the geometry-engine event 0x100 (`KONA_GE_EV_SELECTFEED`) carrying the slot index, a remaining-bytes count and a status word (`kona_ge_intr`). The driver wakes the sleeper. The word count returned is `(len - remaining) / 4`, and the overflow flag is bit 11 (0x800) of the status word. A timeout (`kona_selectfeed_timeout`, message tag 2123) sets the count to -1 and kills the pipe with reason 5. The driver's message calls the slot index "rnid".

**Established** (firmware `arm_start_selectfeed` 0x0c022a50, `arm_finish_selectfeed`, `arm_restart_selectfeed`, `start_kcomm`, `arm1.u` 6.5.30m; irsaudit `TEST_ge_hip` 0x1006f0f4 for the register pairing). The six words of `START_SELECTFEED` program output-DMA channel 0 through the raster-bus register path (`tbus_regwrite`): `len` to 0x453, 0 to 0x454, `A_hi` to 0x450, `A_lo` to 0x451, `llen` to 0x452 and 0x455, `stride` to 0x456. irsaudit writes test patterns to 0x452, 0x453 and 0x456 and reads them back from the host registers `HH_ODMA_LEN` (0x270), `HH_ODMA_TOTAL` (0x278) and `HH_ODMA_STRIDE` (0x290), so the raster-bus numbers 0x450-0x456 are the host's `HH_ODMA_*` registers in the order PNUM, POFF, LEN, TOTAL, OVER, LLEN, STRIDE (**inferred** for the four irsaudit does not read back), and by the same layout 0x460-0x464 are the `HH_ODMA2_*` set. `snapshot` = 1 makes the ARM keep a copy of the five values (r8 + 0xcb4 and 0xcc8); `RESTART_SELECTFEED` reprograms channel 0 from that copy while a feed is active (r8 + 0xca4 = 1). So `snapshot` asks the pipe to remember the set-up for a restart. `FINISH_SELECTFEED`'s first word (256 from the kernel) is passed to `start_kcomm`, which writes it as word 0 of the engine-event record through the second channel (0x460-0x464 loaded from `gecomm_pnum`, then the word to 0x476); the slot index follows as word 1, then raster-bus writes to 0x473 and 0x474 (data 0), then 0x453 = 0 and 0x454 = 0x400. So 256 is the event code 0x100 that `kona_ge_intr` reads as "select feedback done", chosen by the kernel and echoed by the pipe. **Inferred:** the writes to 0x473 and 0x474 append the channel's remaining count and status (the record's words 2 and 3, which the kernel reads as remaining bytes and a status with overflow bit 0x800); no software states what those two register numbers do.

**Established** (firmware `arm_do_idma`): `DO_IDMA`'s last word is the mailbox value the ARM sends when the transfer has been set up, and 0 sends nothing. 256 is the ARM event 0x100 the kernel waits for; that is why `kona_idma` sends 256 only when the caller waits.

### DMA pools

**Established.** `KONA_DMAPOOL` (`kona_dmapool`) registers a user buffer the pipe can DMA from at will. The 6.5.5 `kona_dmapool_args` is `{addr, len, type, share}`; `type` must be 0 (any other value returns 2) and both `addr` and `len` must be multiples of 16 KB (EINVAL otherwise). A zero `len` releases the pool. The pool record is the per-context one, or the shared one when `share` is nonzero. The call returns 34 (ERANGE) for some already-populated combination of the per-context and shared slots (the exact test is not decoded). Otherwise the pages are locked and mapped, and `kona_dmapool_update_pipe` sends `DMAPOOL_SETUP` (token 0x1ed) with three payload words `A_hi`, `A_lo` and the pool length, followed by `GED_NOP` (0x172) and a 0 word. `kona_dmapool_update` resends the setup for a pool record and `kona_dmapool_destroy` unlocks and unmaps one; their callers are outside this file and were not read.

**Established** (firmware, `arm1.u` 6.5.30m). `arm_dmapool_setup` (token 0x1ed) refuses the command unless it came through the privileged stream (it tests bit 2 of 0x200060 and prints "Command privilege violation."), then keeps `A_hi`, `A_lo` with its low 12 bits cleared, and the length in its data block (r8 + 0xcdc, 0xce0, 0xce4). Only three handlers read those words: `arm_execlist_idma` (token 0x16e `EXECLIST_IDMA`), `arm_execlist_idma_n` (0x171) and `arm_usercopylist_ldma` (0x167 `USERCOPYLIST_LDMA`). `arm_execlist_idma` takes a byte offset and a word count, prints a message when offset + 4 x count passes the pool length (and goes on), and programs the host-to-pipe DMA registers from the pool: 0x200010 = `A_hi` + (offset >> 12), 0x200014 = (offset & 0xfff) + (`A_lo` & ~0xfff), 0x200018 = 4 x count, 0x200020 = 2. So the pool is the host buffer from which the pipe fetches command lists by DMA, at an offset the command names. libGLcore registers it from its display-list code (`kon_dlist.s`, [opengl.md](opengl.md)). **Inferred:** the pool holds compiled display lists that the pipe executes without the host copying them through the FIFO.

**Established** in passing: the page-offset register 0x200014 receives the 0x9000 that the kernel puts in the low word of every address pair, since `A_lo` & ~0xfff keeps it. **Established** (kpm 6.5.30m, its table of the ARM-side registers, [ucode/arm1_registers.tsv](../ucode/arm1_registers.tsv)): on HIP2 that register is `HIP2_HA_IDMA_POFF`, with the offset in bits 2-11 and four attribute fields above it: `HIP2_IDMA_PSIZE` (bits 12-13), `HIP2_IDMA_IOMEM` (14), `HIP2_IDMA_COHERENT` (15) and `HIP2_IDMA_GBR` (16). So 0x9000 is `COHERENT` with `PSIZE` = 1. Page-size code 1 is the code the kernel writes into every map-RAM entry for its 16 KB page ([address path](#address-path)), so the word gives the DMA engine the page size of the mapping and asks for cache-coherent transfers (**inferred** from the names and that match). The 6.5.5 `sys/kona_diag.h` describes the diagnostic map's returned low word as "page offset and other memory attributes", which fits. The page register's bit 28 is `IDMA_PNUM_ABS`, the bit the kernel's physical-address form sets ([kernel.md](kernel.md#diagnostic-map-kona_diag_map)), so it marks a host frame number rather than a map-RAM page (**inferred**). What `IOMEM` and `GBR` select is **unknown: no shipped software or published source depends on it**: no sender sets them (routes tried: every 6.5.30m kernel sender of an address pair, kpm's DMA helpers, irsaudit, which uses the words the diagnostic map returns, the firmware, which passes the payload's bits through, the 6.5.5 headers).

**Unknown:** what `type` values other than 0 would mean; the 6.5.30m driver rejects them.

## Not covered

How the pipe's input DMA engine walks the descriptor, the XG-side response errors, the diagnostic mapping (`KONA_DIAG_MAP`, `kona_diag_map`) and the DMA paths used by multi-pipe configurations.

## Interrupts

What raises each interrupt, what the kernel does about it and how it acknowledges. Registers are in HIP.h (`HH_INTR_*`), the XG error bits in [XG.h](../XG.h).

### Delivery

**Established.** At attach the driver allocates three Xtalk interrupt handles, connects each to a handler (`kona_edtinit_hip2.o`, relocations at 0x20-0x38 of its data: `kona_intr_set`, `kona_xg_intr_handler`, `kona_intr_handler`, `kona_ge_intr_handler`) and `kona_reset_adaptor` packs their vector numbers into XG+0x5c (`docs/xg.md`, step 6).

**Inferred.** The handler table is consecutive and the three connect calls use the three slots after `kona_intr_set` in that order, so: the handle at `P+2240` (V1, bits 18-25 of XG+0x5c) serves `kona_xg_intr_handler`; the handle at `P+2256` (V3, bits 0-7) serves `kona_intr_handler`; the handle at `P+2264` (V2, bits 9-16) serves `kona_ge_intr_handler`. This is a reading of table order, not of a register description.

So there are three sources: XG errors (own vector), the geometry-engine bit of `HH_INTR_STATUS` (own vector, own handler), and the rest of `HH_INTR_STATUS` (one vector).

### XG errors: `kona_xg_intr_handler`

**Established.** Counts the interrupt, prints "XG error interrupt received", kills the pipe with reason 12 (`kona_die`, see `kona_kern.h`) and calls `kona_report_errs`, which reads XG+0x6c and prints one message per set bit (31 bits, listed in XG.h). It does not clear the register: `kona_reset_adaptor` does that (read, write 0 to XG+0x2c, read, write back). There is no recovery short of reinitialising the pipe.

### Host-interface interrupts: `kona_intr_handler`

**Established.** For each interrupt the handler adds one to a per-CPU counter and to `P+5268`. It returns at once when the software mask `P+2368` is still 0x100 (the value `KONAinitialize` sets and `KONAstart` replaces with 0xf7c, HIP.h). Otherwise it takes the lock at `P+2352`, reads `HH_INTR_STATUS`, ANDs it with the mask and with `~0x20` (GE is left to its own handler), and serves the set bits in this order. Bit numbers and names are the HIP2 ones in HIP.h:

| Bit | Source | What the kernel does |
|---|---|---|
| 0 | FIFO_HI | prints "unexpected HIP2 graphics fifo hi-water interrupt. Ignored." (never enabled) |
| 1 | FIFO_LO | `kona_lowater_intr`: wakes the thread waiting for the graphics FIFO to drain; below |
| 2 | FIFO_OV | prints "graphics fifo overflow. Data lost. Resetting pipe." and `kona_die` reason 10 |
| 3 | VIDEO | `kona_video_intr`: retrace sequence, cursor update, swap completion (`docs/dg.md`) |
| 4 | ARM | `kona_arm_intr`: reads `HH_ARM_MBOX`; below |
| 6 | ODMA | prints "odma overflow" (cmn_err tag 2120); no die |
| 8 | PARITY | prints "parity error. Data lost. Resetting pipe." and `kona_die` reason 22 |
| 9 | VOC | `kona_voc_intr`: `rrmGenlockNotify(-1)`, the video-option or genlock notification |
| 10 | PIO_OV | "PIO overflow ..." and `kona_die` reason 13 |
| 11 | IDMA_OV | "IDMA overflow ..." and `kona_die` reason 14 |
| 5 | GE | not here, see below |
| 7 | UNUSED | never enabled, not handled |

After the table the handler writes the served bits back to `HH_INTR_STATUS` and writes 0xbadc0ffe to `HH_INTR_ACK`, then drops the lock. Despite the "Resetting pipe" text, reasons 10, 13, 14 and 22 only mark the pipe dead (`kona_die`); `docs/xg.md` has what a real reset does.

`KONAstart` (the first command after the pipe is configured) reads `HH_INTR_STATUS`; with bit 8 set it prints a message and kills the pipe (reason 22). Otherwise it sets the running mask, sends `PIPE_SETUP` (0x1f1) with the three payload words `P+2592`, `P+2596` and 0x4000, and clears every pending bit except GE with a write-back, then writes the ack value. **Inferred:** the two words are the address pair of the page the geometry engine uses for its event record, the 0x4000 a size; `kona_ge_intr` reads that record through the pointer at `P+2584`.

### ARM events: `kona_arm_intr`

**Established.** The handler reads `HH_ARM_MBOX` (0x240), sets `P+5464` to 1, and acts on the value V:

| V | Action |
|---|---|
| 0 | text print: loop (up to 5000 rounds) writes 0x10 to `HH_INTR_STATUS`, waits up to 5000 x 20 us for bit 4 to rise, reads the mailbox and keeps its low byte; stops at a zero byte or 511 characters; prints the string as "ARM: ..." (level 6). "ARM is spewing garbage" if it never ends |
| 0x100 | input DMA done: wake the waiter at `P+5176`, cancel the timeout at `P+5192` |
| 0x102 | `kona_mem_swapin_complete(P, 0, 0)` |
| 0x103 | context-activate done: wake `P+5296`, cancel the timeout at `P+5312` |
| other | message "unknown reason for ARM interrupt" (tag 2100) |

The values are the 6.5.5 `KONA_ARM_*` events (HIP.h). The mailbox is read as a plain 32-bit register; the driver never writes it.

### Geometry-engine events: `kona_ge_intr_handler`, `kona_ge_intr`

**Established.** The GE handler calls `kona_ge_intr` and then writes 0x20 to `HH_INTR_STATUS`. `kona_ge_intr` reads an event record the microcode stores in the area at `P+2584`: word 0 the event code, words 1-3 its arguments. It overwrites word 0 with `code | 0xbad00000` as soon as it has read it. If the record shows an argument of 256 in word 1 and a code below the number of contexts, it swaps the two (message "fixing mangled selectfeed interrupt"): **inferred** a workaround for the microcode storing the two words in the wrong order. Then:

| Code | Action |
|---|---|
| 0 | text print: the arguments are a print request that `kona_geprint` formats into a 512-byte buffer (truncated with a message if too long); printed at level 6 |
| 0x100 | select feedback done (`hip.md` DMA): arguments are the context slot ("rnid"), remaining bytes and a status word; stored in the context's feed record, then wake it and cancel its timeout |
| 0x101 | context deactivate done: wake `P+5272` (`KONApcxswap` waits on it), cancel the timeout at `P+5288` |
| 0x102 | `kona_mem_swapout_complete(P, 0, 0)` |
| 0x103 | `kona_mopup_complete(P, 0)` |
| 0x104 | `kona_mem_suspend_complete(P, 0, &word1)` |
| 0x105 | `kona_checkpipe_complete(P, 0)`: the answer to the check-pipe stream command |
| other | "spurious GE interrupt reason" (tag 2101) plus a dump of `HH_ODMA2_PNUM/POFF/TOTAL` and `HH_ODMA_PNUM/POFF/TOTAL` |

**Established** (the completion bodies, `kona_mem.o` and `kona_ddrn.o` of 6.5.30m `kona.a`). Each completion is also the timeout path: the second argument is nonzero when the driver's software timer fired instead of the event.

- `kona_mem_swapout_complete(P, timedout, rec)` and `kona_mem_swapin_complete` take the lock at `P+2576` and pop the head of their request queue (swap-out: head `P+5080`, tail `P+5072`; swap-in: head `P+5096`, tail `P+5088`; next pointer at request +56). An empty queue prints a level-7 warning. On a real event they first cancel the request's timer (handle at request +88) unless the pipe is in recovery (`P+2172` set), and stop if the cancel finds the timer already gone. On a timeout outside recovery they print the record's first two bytes and word +8 and kill the pipe (reason 16 for swap-out, 15 for swap-in). The popped request gets state byte +3 = 1 (swap-out done) or 2 (swap-out timed out, or any swap-in), goes onto the finished list at `P+5104`, and its waiter is woken (`vsema` on request +72).
- `kona_mem_suspend_complete(P, timedout, words)`: on a timeout it prints tag 2109 and kills the pipe (reason 16). Otherwise word 0 of the event arguments is a count n; when n is not negative it clears `P+5168` and copies words 0 to n into the array at `P+5112`. Either way it wakes `P+5152`. **Inferred:** the pipe's answer to `MEM_SUSPEND` is a short list the kernel keeps for the following resume.
- `kona_mopup_complete(P, timedout)` wakes `P+5320`; on a timeout it prints tag 2121 and kills the pipe (reason 17), otherwise it cancels the timer at `P+5336`; it then clears that handle.

The codes are the 6.5.5 `KONA_GE_*` events (HIP.h).

### Flow control: the FIFO interrupts

**Established.** `HH_GFIFO_HI` is set to 0x700 at initialisation. When a sender finds the FIFO fuller than 0x300 entries it calls `kona_hiwater_intr` (from the flow layer, not from the interrupt handler): it first spins up to `P+2328` microseconds reading `HH_GFIFO_LEVEL`. If the level does not fall it writes 3 to `HH_INTR_STATUS`, sets the FIFO_LO bit in the mask (`P+2368 |= 2`, written to `HH_INTR_ENABLE`), re-reads the level and, if still high, arms a software timeout (`kona_hiwater_timeout`, message tag 2102 and `kona_die` reason 6 if the level is still above the threshold when it expires) and gives up the CPU. The FIFO_LO interrupt calls `kona_lowater_intr`, which cancels the timeout, removes the FIFO_LO bit from the mask and clears status bits 0-1. The low-water level itself is not written by the driver (**unknown** how it is set).

### Where a failed host DMA is reported

**Established** (the driver's handlers above, `XG.h`, `HIP.h`; labels for what the driver treats as a failure, not for what the chip raises). There is no single "DMA failed" cause. A failure of a transfer between the pipe and host memory can surface in three places, with different numbers:

| Where | Bit | Name | Driver action |
|---|---|---|---|
| Xtalk error register XG+0x6c, own interrupt vector (`kona_xg_intr_handler`) | 8, mask 0x100 | `XTALK_READ_REQ_TIMEOUT` | prints the line, `kona_die` reason 12 |
| the same register | 9, 0x200 | `XTALK_RESPONSE` | same |
| the same register | 27, 0x08000000; 28, 0x10000000 | `IDMA_RESPONSE_SIZE`, `IDMA_RESPONSE_BAD_TNUM` | same |
| the same register | 26, 0x04000000 | `ODMA_FIFO_OVERFLOW` | same |
| the same register | 12, 0x1000; 13, 0x2000 | `MAPRAM_PARITY`, `MAPRAM_INVALID` (the address-translation RAM of [xg.md](xg.md)) | same |
| `HH_INTR_STATUS` | 11, 0x800 | `IDMA_OV` | "IDMA overflow", `kona_die` reason 14 |
| `HH_INTR_STATUS` | 6, 0x40 | `ODMA` | prints "odma overflow" only |

Software timers cover the rest: an input DMA that never completes is `kona_idma_timeout` (`kona_die` reason 4, [kernel.md](kernel.md)); a select-feedback that never completes is reason 5.

**Established, and easy to confuse:** the value 0x100 means four unrelated things in the driver. It is bit 8 of `HH_INTR_STATUS`, `PARITY` (the "parity error. Data lost. Resetting pipe." path, `kona_die` reason 22); it is the software enable mask `KONAinitialize` writes to `HH_INTR_ENABLE` before the pipe starts (only the `PARITY` bit); it is bit 8 of the Xtalk error register, `XTALK_READ_REQ_TIMEOUT`; and it is the event value 0x100 in two code spaces that are not interrupt causes at all (the ARM mailbox value "input DMA done" and the geometry-engine event code "select feedback done", tables above).

**Inferred.** A host-memory read by the pipe that gets no reply is the XG bit 8 case (0x100 of XG+0x6c); a bad reply to an input DMA is bits 9, 27 or 28. The host-interface chip's own bit for a failed DMA is **unknown**: no named `HH_INTR_STATUS` bit is a response error, and the driver never reads which cause set an XG error beyond printing it.

### Unknown

How the pipe decides when to raise PARITY, ODMA, PIO_OV and IDMA_OV beyond what the names say (labelled with its routes at `HH_INTR_STATUS` in [HIP.h](../HIP.h)); what the XG registers 0x04, 0x24, 0x2c, 0x74 do; whether `HH_INTR_ACK` is needed or only conventional; the units of the 2328 and 2332 thresholds beyond their use as microseconds and FIFO level. RM and kernel timeout interrupts are not separate sources: timeouts are software timers.

## What the IR diagnostic shows of the host interface

`usr/diags/IR/bin/irsaudit` (IRIX 6.5.30m) tests the host interface from the host. It maps only the user register page (FIFO at +0, registers at +0x4000, every register offset it uses is in 0x000-0x3f8) and reaches the ARM side through `HH_ARM_ADDRESS` (0x3e8) and `HH_ARM_DATA` (0x3f0), with `HH_ARM_DATA_INCR` (0x3f8) for runs of consecutive words. Facts below are **established** from its code, with the function and address, unless labelled.

### ARM-side register names

`TEST_ha_reg` (0x10079244) checks a table of ARM-side registers with a name and a read/write mask each. It names the registers the firmware uses ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md#control-and-status-registers)):

| ARM address | Name | Read/write mask | Firmware role |
|---|---|---|---|
| 0x000000 | `HA_SRAM` | 0xffffffff | ARM memory |
| 0x200000 | `HA_ARM_CTRL` | 0x3 | the firmware reads bit 31 as "in a simulator" (outside the writable mask) |
| 0x200010 | `HA_IDMA_PNUM` | 0x1fffffff | input-DMA page number |
| 0x200014 | `HA_IDMA_POFF` | 0xffc | input-DMA page offset |
| 0x200020 | `HA_IDMA_CTRL` | 0x3 | input-DMA mode (the firmware writes 2, the diagnostic 1) |
| 0x200030 | `HA_LDMA_ADDR` | 0x3fffff8 | list-DMA pipe address |
| 0x20003c | `HA_LDMA_CTRL` | 0x1 | list-DMA control; the firmware never writes it |
| 0x200048 | `HA_LDMA_SRC` | 0x1 | list-DMA source: the firmware's "steer the input stream into the list-DMA writer" |
| 0x200050 | `HA_ICU_CTRL` | 0x3 | token-map control; bit 0 is `ARMACC` |
| 0x200054 | `HA_ICU_DIVERT_PC` | 0xffffffc | the divert vector |
| 0x20005c | `HA_ICU_WC` ("ICU DH word count") | 0x13f | the per-context word the firmware saves at +0xc |
| 0x200068 | `HA_ICU_STATE` | 0x3 | the in-begin flag |
| 0x20006c | `HA_ICU_ERROR_PC` | 0xffffffc | the begin/end refusal vector (`arm_bgnend`) |
| 0x200070 | `HA_ICU_LOOP_ADDR` ("arrayed command start address") | 0x1ff | the vertex-array loop token |
| 0x200074 | `HA_ICU_ARRCNT` ("arrayed command count") | 0xffff | the loop's repeat count |
| 0x200090 | `HA_HOST_MBOX` | 0xffffffff | the mailbox word to the host |

**Established:** the ARM address 0xc00000 in the same table is the ARM cache-tag RAM on revision-A host-interface chips (0x8000000 on revision B, chosen by `HipRevRead` = 0x30). It is an ARM-side address and has nothing to do with the host's 0xc00000 window.

### Interrupt conditions

`TEST_intr` (0x10079858) resets the pipe, gives the host ARM-space access (`HH_ARM_CTRL` = 1, so the ARM is not running), loads its own six-entry token map (`initialize_icu`, below) and writes `HH_INTR_ENABLE` = 0, `HH_INTR_STATUS` = 0xfff, `HH_INTR_INFO` = 0. It then polls `HH_INTR_STATUS` directly, so the status bits set whether or not they are enabled.

| Bit | What raises it in the test | Clearing |
|---|---|---|
| 4 ARM | the host writes 0xbabebabe to ARM 0x200094. Bit 4 rises; ARM 0x200094 then reads nonzero ("expected ARM to pend") | writing the bits back to `HH_INTR_STATUS` (0x3ff on HIP1, 0xfff on HIP2) clears bit 4 and makes ARM 0x200094 read 0 ("ARM still pending" otherwise); no `HH_INTR_ACK` write is involved |
| 0 FIFO_HI | `HH_GFIFO_HI` = 4 and `HH_GFIFO_LO` = 3 (raw values; the registers' writable mask is 0x7fe, so the fields are 2 and 1), then 40 FIFO words (eight token-1 commands of four payload words). On the board sets the diagnostic calls HILO (those with the wider HIP2 register fields) two words suffice (log text "Setting #requests to 1") | status write-back, then `HH_INTR_ACK` = 0 |
| 1 FIFO_LO | an empty FIFO: nothing is written first. `HH_GFIFO_LEVEL` must then read 0 ("Unable to clear the GFX FIFO") | the test restores `HH_GFIFO_HI` = 256, `HH_GFIFO_LO` = 0 and writes 0x3ff to the status |
| 2 FIFO_OV | 2051 words with no ARM consuming (original board set only; skipped on HILO) | status write-back |
| 5 GE | `TEST_ge_hip` (0x1006f0f4): a raster-bus write to register 0x400 from the host's diagnostic path | |
| 3 VIDEO, 9 VOC | `vdEnableDgInterrupts` (0x10130c9c) enables them with `HH_INTR_ENABLE` = 0x208 after `HH_INTR_INFO` = 0x8000 (GLOBAL_EN) and `HH_GINTR_INFO` = 0x30000 (PRIV \| FORCE); `vdCheckDgInterrupts` reads bits 3 and 9 | status write-back, then `HH_INTR_ACK` = 0 |

`TEST_mbox` (0x1007a720) shows the mailbox round trip: the host writes 0x5a5a5a5a to ARM 0x200090 and 1 to 0x200094, waits for bit 4, reads 0x5a5a5a5a from `HH_ARM_MBOX` (0x240), writes the status back and `HH_INTR_ACK` = 0, and requires 0x200094 to read 0 afterwards.

What this settles:

- `HH_INTR_STATUS` is write-one-to-clear, and clearing the ARM bit also clears the ARM's doorbell 0x200094. That is how the kernel's text loop ([ARM events](#arm-events-kona_arm_intr)) paces the ARM: writing 0x10 lets the firmware's `send_host_intr` post the next character.
- `HH_INTR_ACK` is only ever written with 0, and only after a status write-back, by the kernel (0xbadc0ffe) and by both diagnostics. The test that most needs it (the ARM bit) works without it. **Inferred:** it is an end-of-interrupt strobe for the interrupt message, with its data ignored; no shipped software relies on it to clear status.
- The FIFO marks compare against the level with "at or above" for HI and "at or below" for LO, since two words reach a HI field of 2 and an empty FIFO raises LO. **Inferred:** the level counts 32-bit words; the "#requests" in the HIP2 log is the only hint of another unit.
- The FIFO holds fewer than 2051 words on HIP1. **Inferred** from the 11-bit HIP1 level field (`HIP1_GFIFO_LEVEL` 0x7fe of 0x208): 2048 words.

### The token map seen from the host

`initialize_icu` (0x100385d4) sets `HA_ICU_CTRL` = 1, writes entries for tokens 0-5 at ARM 0x400000 through `HH_ARM_DATA_INCR`, writes 0xbabebabe to `HA_ICU_ERROR_PC` and clears `HA_ICU_CTRL`. Tokens 1 and 2 are routed entries with payload counts 4 and 1, token 3 is an ARM entry, token 4 is END (kind 2) and token 5 is BEGIN (kind 1). `icuSanity` (0x1008ac74) writes all 512 entries with `HA_ICU_CTRL` = 0, reads them back with `HA_ICU_CTRL` = 1 and compares every bit: the map is 512 x 32 bits of read/write memory.

`TEST_icu` (0x10076dec), with no ARM running:

- The 40 words of eight token-1 commands and the 16 words of eight token-2 commands leave the FIFO by themselves: routed tokens go to the engines in hardware.
- The ARM token (token 3 with two payload words) stays in the FIFO until something reads ARM 0x200400 (the handler fetch), 0x200200 (the next payload word) and 0x20023c (the last word). The diagnostic does these three reads itself and calls them `ha_cmd`, `ha_data` and `ha_data_last`. So the hardware advances past an ARM-run command only when its last word has been read at r9 + 0x3c, which settles the firmware reading in [ucode/arm1_firmware.md](../ucode/arm1_firmware.md#the-input-loop).
- A token stream sent as single 32-bit stores to FIFO offset 0 (`fcGfxWrite32`) works: the first word of a command is the token number, and the map entry's payload count (routed) or the ARM's reads (ARM-run) decide where the next command starts.
- BEGIN followed by a second BEGIN and then an ARM token leaves bits 0 and 1 of ARM 0x200060 set; the test requires both ("Replace GE board; repair by reworking flawed HIP ASIC" otherwise). kpm names the two bits `ICU_STATUS_BGNENDS` and `ICU_STATUS_BGNENDE`, the same names as the two bits of `HA_ICU_STATE` (0x200068), the in-begin flag the firmware saves with a context. **Inferred:** they are the begin/end checker's state and error flags, raised here by the second BEGIN and by the refused token. The firmware never reads them, so which of the two the hardware sets first is **unknown: no shipped software or published source depends on it** (routes tried: irsaudit `TEST_icu`, the firmware's `arm_bgnend`, which uses 0x200068 only, kpm's table).

### Input DMA command queue

`TEST_idma_cntrl` (0x10077408) sets `HA_IDMA_CTRL` = 1 and writes 16 values in turn to 0x200010, 0x200014 and 0x200018. Then status 0x200024 bit 1 must be set ("CFULL bit not set") with a nonzero field in bits 14-18 ("command FIFO size error"); 16 reads of ARM 0x200028 return the values in order ("error in reading value from CFIFO"); and bit 0 must be set at the end ("CEMPTY bit is not set"). So page, offset and count writes enter a 16-entry command queue, 0x200024 bit 0 is "queue empty" and bit 1 "queue full", and in mode 1 the queue can be read back at 0x200028. The firmware's wait on bit 1 is a wait for room in this queue. The writable offset field is 12 bits on HIP1 (mask 0xfff) and 17 bits on HIP2 (0x1ffff, table at 0x10200b40), so the 0x9000 the kernel adds to every low address word fits inside the stored field only on HIP2.

`TEST_idmabug` (0x100b0e70) plays the firmware's `arm_do_idma` from the host: 0x200010 = page, 0x200014 = offset, 0x200018 = 0x10000 bytes, 0x20001c = 0, 0x200064 = 1, then the pass-through counter 0x200058 = 0x4000 (the full word count, with none of bits 26-28 set), then it waits for bit 2 of 0x200024 and bit 4 of 0x200060. **Inferred:** 0x200024 bit 2 reports the transfer complete.

### Output DMA from the pipe side

`TEST_odma` sets up the primary channel with raster-bus writes (`tbRegWrite`, which sends FIFO token 5, then (register << 16) \| the value's bits 32-47, then its low 32 bits): 0x440 = channel 0, 0x441 = pack mode 0x43, 0x452 = 0x453 = the length, 0x450 and 0x451 = the mapped address; draws pixels; writes 0x477 = 1; and polls `HH_ODMA_TOTAL` (0x278) until it reads 0. The secondary channel uses 0x440 = 1 and 0x460-0x463 and is fed through 0x476, ending with 0x477 = 1 and a poll of `HH_ODMA2_TOTAL` (0x2b8). `wait_for_odma` (0x10037c68) writes `HH_ODMA_FLUSH` (0x298) = 0 after TOTAL reaches 0. **Inferred:** 0x476 is the data port into the output DMA and 0x477 = 1 ends a transfer, the order the firmware's `start_rdata` and `finish_rdata` use.

### Output-DMA registers as the host programs them

**Established** (`kpm`, 6.5.30m `/usr/gfx/KONA/bin/kpm`: the dump tool's DMA helpers `set_transfer_address` 0x1001f534, `setup_dma` 0x1001f76c, `wait_for_dma_completion` 0x1001f7c0, `cleanup_dma` 0x1001f898; the register order and widths from kpm's own host-interface table in [diags/kpm/hip_registers.tsv](../diags/kpm/hip_registers.tsv); the select-feedback pairing from [above](#pipe-to-host-select-feedback-kona_dmaread)). The host-interface chip has two output-DMA channels that carry data from the pipe to the host. The primary channel is the set the select-feedback and pixel-read commands use; the secondary channel is the one `kpm` drives directly through the host registers to pull pipe state into a host buffer. A channel is a page number and an offset into that page, a length counter, a total counter and an overflow field, plus (primary only) a line length and a stride:

| Register | Offset | Mask on HIP1, HIP2 | What it holds |
|---|---|---|---|
| `HH_ODMA_PNUM`, `HH_ODMA2_PNUM` | 0x260, 0x2a0 | 29 bits | page number of the destination; `kpm` loads the high word the diagnostic map returns ([kernel.md](kernel.md#diagnostic-map-kona_diag_map): the I/O address shifted right by 12) |
| `HIP1_HH_ODMA_POFF`, `HIP1_HH_ODMA2_POFF` | 0x268, 0x2a8 | 12 bits | offset within the page; `kpm` loads the low word the diagnostic map returns, which is the byte offset ORed with 0x9000 |
| `HIP2_HH_ODMA_POFF`, `HIP2_HH_ODMA2_POFF` | 0x268, 0x2a8 | 17 bits | the same registers on the second host-interface generation, wide enough to hold the 0x9000 attribute bits that the diagnostic map's low word carries: page-size code and coherent bit, with the field layout kpm gives the input-DMA offset register ([DMA pools](#dma-pools); **inferred** that the output registers share it, from the equal masks and the equal words written) |
| `HH_ODMA_LEN`, `HH_ODMA2_LEN` | 0x270, 0x2b0 | 32 bits | length counter; `kpm` writes the whole transfer length here and again in `TOTAL`, and the firmware writes the line length to the primary one (**inferred**: it counts the bytes left in the current line) |
| `HH_ODMA_TOTAL`, `HH_ODMA2_TOTAL` | 0x278, 0x2b8 | 32 bits | bytes left in the whole transfer (**inferred** from the polling); it counts down to 0, and both `kpm` (`wait_for_dma_completion`, which sleeps and re-reads it up to a caller-supplied number of times) and `irsaudit` (`wait_for_odma`) poll it for 0 as the completion test |
| `HH_ODMA_OVER`, `HH_ODMA2_OVER` | 0x280, 0x2c0 | 12 bits | overflow status; `kpm` clears the secondary one before programming it and the firmware clears the primary one when it starts a feed. **Inferred:** bit 11 is the overflow bit (0x800) that the select-feedback completion record's status word carries, since the 12-bit field has exactly that top bit |
| `HH_ODMA_LLEN` | 0x288 | 32 bits | primary channel only: the line length the counter reloads at each line (**inferred**: the firmware writes the same line-length word to the length register and to this one) |
| `HH_ODMA_STRIDE` | 0x290 | 32 bits | primary channel only: distance between the starts of successive lines |
| `HH_ODMA_FLUSH` | 0x298 | none (write-only trigger) | `wait_for_odma` writes 0 and `kpm` writes 1 after `TOTAL` reaches 0, to push out the last partial word (**inferred** from the name and the position after completion) |

The order a host program uses, as `kpm` does it for the secondary channel: clear `HH_ODMA2_OVER`; write `HH_ODMA2_PNUM`, `HH_ODMA2_POFF`, `HH_ODMA2_LEN` and `HH_ODMA2_TOTAL`; write 1 to `HH_TBUS_STATUS` (0x3a8; the write sits at the end of `setup_dma`, and what it clears or starts is the open question of that register, [kernel.md](kernel.md#hh_tbus_status)); start the pipe-side transfer through the raster-bus path ([above](#output-dma-from-the-pipe-side)); poll `HH_ODMA2_TOTAL` for 0; write `HH_ODMA_FLUSH`. The buffer comes from the diagnostic-map ioctl 10100 with a 2 MB request and kind 8 (through the map RAM), so the page and offset are pipe-space values, not host physical addresses ([kernel.md](kernel.md#diagnostic-map-kona_diag_map)). **Unknown: no shipped software or published source depends on it:** the units of `LEN`, `TOTAL` and `STRIDE` beyond "bytes" (`kpm` uses byte counts, the firmware passes the pixel-read line length unchanged), the width of the counters inside the chip, and whether `OVER` is a count or a flag set; routes tried: `kpm`, `irsaudit`, the firmware's select-feedback and read-back code, the kernel's overflow handler (which only prints) and kpm's register table (masks only).

### Reset

`ResetKona` in irsaudit is only the pipe-initialise ioctl and nothing checks the state afterwards. kpm's `hipReset` (`usr/gfx/KONA/bin/kpm`, 0x10017204) either resets the chip through boundary scan (`jt_isolate_chip` "hip" "RESET", then "IDCODE"), or sets the overlap-disable bit (bit 0 of 0x380 on HIP1, 0x3a0 on HIP2) and writes 5 to `HH_TFIFO_HI`; it does not write `HH_RESET`. The FIFO_LO test passes straight after a reset, so whatever the reset leaves in the low-water mark, an empty FIFO is at or below it.

### The host's boundary-scan controller and the ARM debug window

**Established** (`kpm` 6.5.30m, the host-side routines the `jt_*` library calls through `jt_set_procs`, in the code at 0x10010284-0x10010aa0 that the symbol table attributes to `kona_jt_set_custom_error_report`; `irsaudit`'s messages "HH_JTAG_DATA write" and "HH_JTAG_DATA read" and its `jt_*` copy of the same library). The host reaches the pipe's boundary-scan chains through five registers of the host interface: `HH_JTAG_DATA` (0x350), `HH_JTAG_TMS` (0x358), `HH_JTAG_CTRL` (0x360), `HH_JTAG_STATUS` (0x368) and `HH_JTAG_ACCESS` (0x370, bit 0 `JTAG_ACCESS_HOST`); `HH_JTAG_RESET` (0x378) is a write-only trigger with no field. The ARM firmware drives the same controller through its own bit-bang port at 0x2000c0-0x2000cc ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md)), and the bit in `HH_JTAG_ACCESS` hands the controller to one side or the other (**inferred** from the name `JTAG_ACCESS_HOST` and from `kpm` setting it before every access). The sequence `kpm` follows:

| Step | Register access | Meaning |
|---|---|---|
| take the controller | write 1 to `HH_JTAG_ACCESS` | host owns the scan controller (done once, before the first select or reset) |
| select a chain | write `HH_JTAG_CTRL` = chain number << 5 (bits 5-10, the `JTAG_CTRL_JSEL` field `kpm` names) | choose which board's scan chain the next shift goes to; the mask is 0x7ff |
| shift | write `HH_JTAG_TMS`, then write `HH_JTAG_DATA` | the TMS word carries the test-mode-select bits for the shift (`kpm` writes 31 before a reset shift, 18 before a data shift and 3 between tests; **inferred** to be a reset sequence, a shift-data sequence and a return to idle, from the standard scan protocol); writing `HH_JTAG_DATA` starts the shift |
| shift length | `HH_JTAG_CTRL` bits 0-4 | `kpm`'s controller self-test writes 0x501, 0x505 and 0x500 for its 1-bit, 5-bit and 32-bit shifts, so a field value of 0 means 32 bits (**inferred**) |
| wait | read `HH_JTAG_STATUS` bit 0 until it is clear | busy flag; `kpm` calls a delay with argument 0 between polls and gives up after 1000 iterations with "JTAG stall timeout, exceeded 1000 iterations!" |
| result | read `HH_JTAG_DATA` | the bits shifted out; the self-test checks the top bit of the word for the 1-bit and 5-bit cases and compares the whole word for 32 bits |

The self-test (`jt_test_thyself`'s host procedure, messages "JTAG controller test 1-bit shift failed", "5-bit", "32-bit") writes 0x99799999 as the 32-bit pattern and expects 0x66866666, its bitwise complement, back. **Unknown: no shipped software or published source depends on it:** what the chain select does to a field value of 0 (no chain), the exact clocking of TMS against the data bits for lengths other than the three the self-test uses, and what `HH_JTAG_RESET` does beyond its name (kpm's `jt_hard_reset` is the only candidate and was not traced to a write of 0x378); routes tried: `kpm` and `irsaudit` code and strings, the firmware's bit-bang routines, the kernel (which never touches these registers).

**Established** (kpm 6.5.30m: `hipInspectionPreJtag` 0x10012834 reads 0x338, 0x340 and 0x348 into its dump; `analyze_hip` 0x100173a0 interprets the first). `HH_ARM_CURR_ADDR` (0x338), `HH_CURR_DATA_FM_ARM` (0x340) and `HH_CURR_DATA_TO_ARM` (0x348) are 32-bit registers next to `HH_ARM_STALL`, `HH_ARM_UNSTALL` and `HH_ARM_STEP`. `analyze_hip` reads `HH_ARM_CURR_ADDR` as the ARM address of the bus cycle the processor is stalled on: it compares it with `HA_CMD` (0x200400, "reading address ... (HA_CMD)", the processor waiting for the next command), `HA_DATA`, `HA_DATA_LAST` and `HA_DATA_NOPIPE` (0x200200, 0x20023c, 0x200240, waiting for payload), the `HA_GED_CTRL` range 0x200600-0x2009ff and the `HA_GED_DATA` range 0x200a00-0x200bfc ("writing to ... ", waiting for the distributor), and reports anything else as an access at that address, adding "(Opcode fetch)" when bit 10 of `HH_ARM_STATUS` (`ARM_STATUS_NOPC`) is set. **Inferred:** the two data registers hold the word on the bus in each direction for that cycle. kpm prints them raw and nothing else reads them. Their behaviour while the processor runs is **unknown: no shipped software or published source depends on it** (routes tried: kpm, irsaudit, `ireeprom`, the 6.5.30m kernel, the firmware, which cannot see its own debug window). An emulator that stalls the ARM can report the stalled address here; otherwise 0.

**Unknown: no shipped software or published source depends on it:** `HIP1_HH_FCI_LOOPBACK` (0x388, 16 bits) and `HIP2_HH_PIO_HI` (0x2c8, 5 bits, field `HIP2_PIO_HI`). The names suggest a loopback control for the first generation's crosstalk interface and the high address bits of programmed I/O on the second generation (**inferred** from the names; the neighbouring registers on HIP1 are the `FCI` overlap and error registers, and `HH_IDMA_HI` at 0x3b8 on HIP2 is the matching high-address register for input DMA). Routes tried: kpm's table (name and mask only), `irsaudit`, the 6.5.30m kernel's `kona_edtinit_hip2.o`, `kona_mapram_hip2.o` and `kona_intr_hip2.o` (no store to either offset), the firmware, and the 6.5.5 headers.

## The command stream as the ARM firmware reads it

What the pipe's own firmware (`arm1.u`, IRIX 6.5.30m; [ucode/arm1_firmware.md](../ucode/arm1_firmware.md)) shows of the command format the host sends. Facts are labelled **established** (read from the firmware), **inferred** (with the reasoning) or **unknown**.

**Established.** A host command is a token number from 0 to 0x1ff followed by its payload words (GE.h lists the 512 token names). The host-interface hardware looks the token up in a 512-entry table the ARM builds at start-up ([ucode/arm1.md](../ucode/arm1.md), [ucode/icu_map.tsv](../ucode/icu_map.tsv)). An entry tells the hardware one of two things: run this ARM routine (306 tokens, the routine's address is the entry shifted left four bits), or route the command (206 tokens), with a payload word count in bits 6-10 (0 meaning 32), a command number in bits 15-23 and a type in bits 29-30 (2 single precision, 3 double precision). Bits 1-2 mark whether the token may arrive between a begin and its end.

**Established.** An ARM routine reads the payload itself: one word per read of a payload port, the last word of the command with a read at offset 0x3c of the register window. No length is stored for an ARM-run token; the routine knows it. A token whose routine is the firmware's bad-command handler (54 of the 306, including the `TEXIMAGE*` and `GETINTEGERV` tokens) is never sent by a working driver. The pipe answers a host query by sending words back through the output DMA, set up by RDATA_SETUP and the ARM's register writes ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md)), and events through one mailbox word per interrupt.

**Established.** The ARM firmware also sends commands to itself and to the engines using the same entry format: it writes an entry-shaped word to a descriptor port and then the payload ([ucode/arm1.md](../ucode/arm1.md)). The host cannot see that path.

**Established** (irsaudit, [above](#the-token-map-seen-from-the-host)): a stream of single 32-bit words at FIFO offset 0 is split by the token map alone: the first word is a token number, a routed entry's count says how many payload words follow, and an ARM-run command ends when the ARM reads its last word at offset 0x3c. **Established as the software's contract** ([GE.h](../GE.h)): a 64-bit store to the FIFO delivers two words, the one at the lower address (the high half of the register) first; libGLcore's vector forms and the X module's copy helpers depend on that order How the Crosstalk write is split inside the host interface is **unknown: no shipped software or published source depends on it** beyond that order. The FIFO's depth is under `HH_GFIFO_LEVEL` in [HIP.h](../HIP.h), and the divert path in [ucode/arm1_firmware.md](../ucode/arm1_firmware.md#refused-tokens-beginend-divert-bad-command): it needs `ICU_CTRL_DHDIVERT`, which no shipped software sets.

## Reset and start of the ARM

**Established** ([HIP.h](../HIP.h) for the register). The reset register `HH_RESET` (0x300) has a host-interface reset bit and an ARM start bit; the register `HH_ARM_CTRL` (0x308) grants the host access to the ARM's memory and `HH_ARM_STATUS` (0x310) reports stall, remap, abort and processor mode, and the register names (`HH_ARM_STALL`, `HH_ARM_UNSTALL`, `HH_ARM_STEP`, `HH_ARM_ADDRESS`, `HH_ARM_DATA`) suggest the host can load, start, stall and single-step the firmware (**inferred** from the names).

**Established** (the firmware side, `init` and `init_ge_board`). When the ARM starts it clears its RAM window, sets up its exception vectors, reads whether it runs inside a simulator from the first register of its window, scans the boards on the boundary-scan chain, builds the token map, loads the distributor program and tables, downloads the engine start-up stub, configures the raster and display boards and waits for the engines' mailbox handshake (`check_pipe_sync`) before it accepts the first host command. Until then it does not read the token fetch register, so host commands cannot be dispatched (**inferred**: the loop that reads it starts after `init` returns). The order and the register accesses are in [ucode/arm1_firmware.md](../ucode/arm1_firmware.md).

**Established**: `HH_RESET` bit 0 holds the host interface in reset and bit 1 lets the kernel writes `HH_INTR_INFO` = 0, `HH_RESET` = 3, a read-back, `HH_RESET` = 2, and a wait, so the ARM run, booting from the board's EEPROM; to read the register's `ARM_START` name. The kernel's pulses are in [xg.md](xg.md). What the reset does to the token map, the FIFOs and the counters is **unknown: no shipped software or published source depends on it**, with the routes in [HIP.h](../HIP.h) at `HH_RESET`.
