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
