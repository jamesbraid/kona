# Kernel driver: DMA ioctl structures

Driver-side view of the 6.5.30m kernel graphics driver. The hardware-visible half is in [hip.md](hip.md). Facts are labelled **established** (disassembly or the 6.5.5 installed header `sys/kona.h`), **inferred** or **unknown**.

## DMA ioctls

**Established** (`kona_ioctl.o` `KONAprivate`, `kona_dma.o`; structures from the 6.5.5 header). The private ioctl numbers are 10000 + n: `KONA_DMAREAD` 0, `KONA_DMAWRITE` 1, `KONA_START_SELECTFEED` 2, `KONA_FINISH_SELECTFEED` 3, `KONA_DMAPOOL_OLD` 7, `KONA_DMAPOOL` 18. The 64-bit kernel has 32-bit-caller converters (`abi32_to_kona_dmaread_args` and siblings) that widen the pointer.

| Structure | Layout (64-bit kernel) |
|---|---|
| `kona_dmavec` | base pointer at 0 (8 bytes), total length at 8, line length at 12, stride at 16, padding to 24. All lengths in bytes. |
| `kona_dmaread_args` | `kona_dmavec` at 0, `hip_data[32]` words at 24, `hip_cmdcnt` at 152 |
| `kona_dmawrite_args` | table pointer at 0, entry count at 8, `hip_data[32]` at 12, `hip_cmdcnt` at 140 (the entries are 24-byte dmavecs) |
| `kona_start_selectfeed_args` | `kona_dmavec` at 0, `snapshot` at 24 |
| `kona_finish_selectfeed_args` | out: word count at 0, overflow flag at 4 |
| `kona_dmapool_args` | address at 0 (8 bytes), length at 8, type at 12, share at 16 |

`hip_data` is an array of command groups: token word, count n, n payload words, `hip_cmdcnt` groups in all (`hip.md`). The kernel writes them, uninterpreted, to the pipe's command port (`P+2304`) between the setup and completion steps of a transfer.

Per-pipe counters and handles the DMA code uses (offsets in the pipe state, names ours; roles from the code that uses them):

| Offset | Role |
|---|---|
| `P+80` | count of operations in flight on the process (incremented around each ioctl, **inferred** from the increment and decrement pairs) |
| `P+5176` | semaphore the writer sleeps on until the pipe reports an input DMA done |
| `P+5192` | timeout handle for an input DMA |
| `P+5200`, `P+5208` | address and length of the input DMA in flight, printed by `kona_idma_timeout` |
| `P+2184` | pipe identity passed to `alloc_gfx_io_space` and `free_gfx_io_space` |

A context's select-feedback record is the 80-byte-or-so object at (context's pointer at +112) + 32: base at 0, length at 8, line length at 12, stride at 16, snapshot at 24, locked length at 28, outstanding word count at 32, status word at 36, pipe address at 40, semaphore at 48, timeout handle at 64, owning process at 72, in-flight flag at the object's +104 (`kona_start_selectfeed`, `kona_finish_selectfeed`, `kona_ge_intr`). **Established** as offsets; names ours.
