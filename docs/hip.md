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

**Inferred.** The 0x20000000 bit is a valid flag and the low two bits of the stored page number are the two low bits of the 4 KB frame number, which a 16 KB-aligned page leaves zero. The reading rests on the shift pair and on "Map RAM Invalid" being one of the XG error bits (below, interrupts). The meaning of 0x9000 in the low word is still **unknown** (`kona_kern.h`).

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

**Inferred.** The six words of `START_SELECTFEED` load the output-DMA registers (`HH_ODMA_PNUM`, `_POFF`, `_LEN`, `_LLEN`, `_STRIDE`, `_TOTAL`, `_OVER`, `_FLUSH`, HIP.h) from the stream, since the register names carry the same fields. The driver reads `HH_ODMA_PNUM/POFF/TOTAL` and the `ODMA2` set only in a diagnostic dump of an unexpected GE event. What `snapshot` selects, the exact meaning of the second word of `FINISH_SELECTFEED` beyond "slot index" being its second payload, and why 256 is sent, are **unknown**.

### DMA pools

**Established.** `KONA_DMAPOOL` (`kona_dmapool`) registers a user buffer the pipe can DMA from at will. The 6.5.5 `kona_dmapool_args` is `{addr, len, type, share}`; `type` must be 0 (any other value returns 2) and both `addr` and `len` must be multiples of 16 KB (EINVAL otherwise). A zero `len` releases the pool. The pool record is the per-context one, or the shared one when `share` is nonzero. The call returns 34 (ERANGE) for some already-populated combination of the per-context and shared slots (the exact test is not decoded). Otherwise the pages are locked and mapped, and `kona_dmapool_update_pipe` sends `DMAPOOL_SETUP` (token 0x1ed) with three payload words `A_hi`, `A_lo` and the pool length, followed by `GED_NOP` (0x172) and a 0 word. `kona_dmapool_update` resends the setup for a pool record and `kona_dmapool_destroy` unlocks and unmaps one; their callers are outside this file and were not read.

**Unknown:** what the pipe does with a pool (which commands read from it, and whether it is the texture source) and what `type` values exist. The 6.5.5 header lists only the four fields.

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

How the pipe decides when to raise each bit beyond what the names say; what the XG registers 0x04, 0x24, 0x2c, 0x74 do; whether `HH_INTR_ACK` is needed or only conventional; the units of the 2328 and 2332 thresholds beyond their use as microseconds and FIFO level. RM and kernel timeout interrupts are not separate sources: timeouts are software timers.

## The command stream as the ARM firmware reads it

What the pipe's own firmware (`arm1.u`, IRIX 6.5.30m; [ucode/arm1_firmware.md](../ucode/arm1_firmware.md)) shows of the command format the host sends. Facts are labelled **established** (read from the firmware), **inferred** (with the reasoning) or **unknown**.

**Established.** A host command is a token number from 0 to 0x1ff followed by its payload words (GE.h lists the 512 token names). The host-interface hardware looks the token up in a 512-entry table the ARM builds at start-up ([ucode/arm1.md](../ucode/arm1.md), [ucode/icu_map.tsv](../ucode/icu_map.tsv)). An entry tells the hardware one of two things: run this ARM routine (306 tokens, the routine's address is the entry shifted left four bits), or route the command (206 tokens), with a payload word count in bits 6-10 (0 meaning 32), a command number in bits 15-23 and a type in bits 29-30 (2 single precision, 3 double precision). Bits 1-2 mark whether the token may arrive between a begin and its end.

**Established.** An ARM routine reads the payload itself: one word per read of a payload port, the last word of the command with a read at offset 0x3c of the register window. No length is stored for an ARM-run token; the routine knows it. A token whose routine is the firmware's bad-command handler (54 of the 306, including the `TEXIMAGE*` and `GETINTEGERV` tokens) is never sent by a working driver. The pipe answers a host query by sending words back through the output DMA, set up by RDATA_SETUP and the ARM's register writes ([ucode/arm1_firmware.md](../ucode/arm1_firmware.md)), and events through one mailbox word per interrupt.

**Established.** The ARM firmware also sends commands to itself and to the engines using the same entry format: it writes an entry-shaped word to a descriptor port and then the payload ([ucode/arm1.md](../ucode/arm1.md)). The host cannot see that path.

**Unknown.** The framing of the 64-bit stores the user process makes at 0x4000 and how the hardware splits them into tokens and payload ([GE.h](../GE.h) records the stores); the FIFO depth and credit scheme beyond the high and low water marks above; what makes the hardware refuse a token (the begin/end and divert vectors).

## Reset and start of the ARM

**Established** ([HIP.h](../HIP.h) for the register). The reset register `HH_RESET` (0x300) has a host-interface reset bit and an ARM start bit; the register `HH_ARM_CTRL` (0x308) grants the host access to the ARM's memory and `HH_ARM_STATUS` (0x310) reports stall, remap, abort and processor mode, and the register names (`HH_ARM_STALL`, `HH_ARM_UNSTALL`, `HH_ARM_STEP`, `HH_ARM_ADDRESS`, `HH_ARM_DATA`) suggest the host can load, start, stall and single-step the firmware (**inferred** from the names).

**Established** (the firmware side, `init` and `init_ge_board`). When the ARM starts it clears its RAM window, sets up its exception vectors, reads whether it runs inside a simulator from the first register of its window, scans the boards on the boundary-scan chain, builds the token map, loads the distributor program and tables, downloads the engine start-up stub, configures the raster and display boards and waits for the engines' mailbox handshake (`check_pipe_sync`) before it accepts the first host command. Until then it does not read the token fetch register, so host commands cannot be dispatched (**inferred**: the loop that reads it starts after `init` returns). The order and the register accesses are in [ucode/arm1_firmware.md](../ucode/arm1_firmware.md).

**Inferred.** The host's reset of the host interface (`HH_RESET` bit 0) does not by itself restart the ARM's start-up: the ARM start bit is separate. **Unknown:** what the hardware does to the token map and FIFOs on that reset, and how the kernel's `HH_RESET` pulses in [xg.md](xg.md) relate to the ARM start bit.
