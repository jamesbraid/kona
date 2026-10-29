# KONA coverage map

Map of what the InfiniteReality (KONA) workspace has covered. It is the index later readers fill: each row is one area of one block. Block names follow `AGENTS.md`; a block's facts are labelled established, inferred or unknown in its header and docs, and this file says how far each area has got.

## Status key

`none`: nothing derived yet. `partial`: some facts written with their derivation, gaps remain. `done`: every fact in the area is written and labelled, with nothing known to be missing. A reader who changes a row updates it in the same commit as the doc or header that backs it.

"Owner" is the header or doc that holds the facts (a planned name until the file exists). "Datasheet topic" is the kind of hardware specification the area feeds. "Seed" records what prior work already reports so a reader can aim at it: it is a lead to verify against the binaries, not a finding of this repository.


## Priority

Open problems, most important first. Opus readers take these in order.

1. **Geometry, raster and display command formats.** Packet and token layout from libGLcore emission, the kernel driver and the microcode. Start from the command-emission paths in libGLcore and the FIFO accesses found by `analyze_fifo.py`; cross-check against `ge.u` dispatch.
2. **Texture download and filtering.** How texture memory is loaded (DMA and PIO), texel formats, mipmap layout, filter modes and the arithmetic precision of filtering. Cover every texel path, not only the common one.
3. **Pipe recovery and context switching.** What the kernel does to save, restore and swap contexts and to recover a stuck pipe: packets, ordering, completion and failure handling.

## Blocks

### XG

Xtalk widget and XIO attachment: the pipe's identity and apertures as the host sees them.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | none | `XG.h`, `docs/xg.md` | kernel attach and host interface | widget identity, aperture windows and a map RAM are reported by prior work |
| DMA | none | `XG.h`, `docs/xg.md` | kernel attach and host interface |  |
| Interrupts | none | `XG.h`, `docs/xg.md` | kernel attach and host interface |  |
| Reset | none | `XG.h`, `docs/xg.md` | kernel attach and host interface | liveness and bring-up ordering reported by prior work |

### HIP

Host interface: PIO FIFO words, DMA streams, flow control and doorbells.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `HIP.h`, `docs/hip.md` | host interface and command grammar | full HIP1/HIP2 register and field table from kpm; window base 0x800000 inferred from kernel accesses; meaning of the 0xc00000 alias unknown |
| Command and FIFO formats | none | `HIP.h`, `docs/hip.md` | host interface and command grammar | kernel push port, textport port, indirect pair and user doorbell reported by prior work |
| DMA | none | `HIP.h`, `docs/hip.md` | host interface and command grammar | strided two-dimensional descriptor reported by prior work |
| Interrupts | partial | `HIP.h`, `docs/hip.md` | host interface and command grammar | HH_INTR_INFO/ENABLE/STATUS/ACK and GINTR_INFO fields; GE and ARM event codes (6.5.5); INTR_ENABLE/STATUS bit names not in kpm |
| Reset | none | `HIP.h`, `docs/hip.md` | host interface and command grammar |  |
| Context save and restore | partial | `HIP.h`, `kona_kernel/include/kona_kern.h` | host interface and command grammar | kick = HH_GINTR_INFO PRIV/FORCE; physical-address word pair; the 0x9000 constant is read at every sender (low word of an address pair, hi word bit 28 on host-physical buffers only) but its meaning and FORCE's exact effect are unknown |

### GE

Geometry engines: transform, lighting, clipping and primitive assembly, fed by the host interface.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `GE.h`, `docs/ge.md` | host and geometry | 15 GE11 diagnostic registers (0x40000-0x40038) and 24 special-register numbers from kpm; the host path to them and the value column unknown |
| Command and FIFO formats | partial | `GE.h`, `docs/ge.md` | host and geometry | 512 token names; framing, 64-bit store order, fixed payloads for 118 tokens (libglcore/payloads.tsv). Remaining: variable-length grammars (texture, pixel, display list, vertex array, eval) and the microcode dispatch |
| DMA | none | `GE.h`, `docs/ge.md` | host and geometry |  |
| Interrupts | none | `GE.h`, `docs/ge.md` | host and geometry |  |
| Reset | none | `GE.h`, `docs/ge.md` | host and geometry |  |
| Context save and restore | none | `GE.h`, `docs/ge.md` | host and geometry |  |

### RM and TM

Raster manager and texture memory: rasterisation, pixel ownership, framebuffer and texture storage.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | partial | `RM.h`, `docs/rm.md` | raster, texture and display | full index, field and value table from kpm; block-to-ASIC mapping and bus transport unknown |
| Command and FIFO formats | none | `RM.h`, `docs/rm.md` | raster, texture and display |  |
| DMA | none | `RM.h`, `docs/rm.md` | raster, texture and display |  |
| Interrupts | none | `RM.h`, `docs/rm.md` | raster, texture and display |  |
| Reset | none | `RM.h`, `docs/rm.md` | raster, texture and display |  |
| Context save and restore | none | `RM.h`, `docs/rm.md` | raster, texture and display |  |
| Texture formats and filtering (incl. precision) | partial | `RM.h`, `docs/rm.md` | raster, texture and display | texel formats, filter modes, filter4 S1.7 weights, sharpen/detail 8+2-bit codes, LOD-bias 4.4 scale; per-pixel LOD and sub-texel precision unknown |
| Display and scanout | none | `RM.h`, `docs/rm.md` | raster, texture and display |  |

### DG

Display generator: video timing, scanout, palettes, cursor and retrace.

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | none | `DG.h`, `docs/dg.md` | display |  |
| Command and FIFO formats | none | `DG.h`, `docs/dg.md` | display | display-mode packet and cursor commands reported by prior work |
| Interrupts | none | `DG.h`, `docs/dg.md` | display |  |
| Reset | none | `DG.h`, `docs/dg.md` | display |  |
| Display and scanout | none | `DG.h`, `docs/dg.md` | display | mode set, colour format and retrace reported by prior work |

### Kernel driver

The kernel graphics driver and its resource manager: attach, ioctls, context and swap scheduling (kona.a, gfx.o, rrm.o).

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Registers and fields | none | `kona_kernel/include/kona_kern.h`, `docs/kernel.md` | kernel attach and host interface |  |
| Command and FIFO formats | none | `kona_kernel/include/kona_kern.h`, `docs/kernel.md` | kernel attach and host interface | private ioctl family and kernel command selectors reported by prior work |
| DMA | none | `kona_kernel/include/kona_kern.h`, `docs/kernel.md` | kernel attach and host interface |  |
| Interrupts | none | `kona_kernel/include/kona_kern.h`, `docs/kernel.md` | kernel attach and host interface |  |
| Reset | partial | `kona_kernel/include/kona_kern.h`, `docs/kernel.md` | kernel attach and host interface | pipe check and kona_die register writes named, 16 death reasons by caller with 6.5.5 names; attach-time HH_RESET sequence not read |
| Context save and restore | partial | `kona_kernel/include/kona_kern.h`, `docs/kernel.md` | kernel attach and host interface | KONApcxswap and kona_act_pcx packet order and payload word sources, flow-group attach/detach at offset 0x7c. Address pair shapes written down (0x9000 meaning unknown). KONAvalidateclip and KONAsetnullclip layouts written; the activate token is data read at X+8, not a constant. Remaining: drawable field meanings (origin, size, +8 generation word, +40/+44), who writes X+8 |

### OpenGL core and X modules

Userspace drivers: libGLcore command emission and the X server modules (kona*.so, glx.so).

| Area | Status | Owner | Datasheet topic | Seed |
|---|---|---|---|---|
| Command and FIFO formats | partial | `GE.h`, `libglcore/include/glcore_kona.h, ddx/include/kona_ddx.h`, `docs/opengl.md` | command grammar | user doorbell 0x4000, token-only header word, Begin/End/Vertex/Color/LoadMatrix/Viewport payloads in GE.h; X module emission not read |
| Context save and restore | none | `libglcore/include/glcore_kona.h, ddx/include/kona_ddx.h`, `docs/opengl.md` | command grammar |  |
| Texture formats and filtering (incl. precision) | partial | `RM.h`, `libglcore/include/glcore_kona.h, ddx/include/kona_ddx.h`, `docs/opengl.md` | command grammar | host builds TGTMTFT and filter tables; DRAWTEXELS (20 header words) and DRAWPIXELS (8) word sources, format remap table, components-per-format and type-size tables. Remaining: meaning of header words 9-11, 17, 19-20 (desc+0x64, +0x68, +0x80, +0x88, +0x8c, the third argument), bits of the flags word, TEXLOAD_SETUP/TEXLOAD_ID payloads |
| Display and scanout | none | `libglcore/include/glcore_kona.h, ddx/include/kona_ddx.h`, `docs/opengl.md` | command grammar |  |

## Microcode (lower priority)

Rows for each microcoded engine. They rank below the Priority items: take them when a Priority item needs the program behind a command, or when the block rows above are done.

| Program | Behaviour to cover | Status | Owner | Datasheet topic |
|---|---|---|---|---|
| ge.u, ge11.u, ged1b.u, geif.u, ge_kpm.hex | Geometry engine programs and their interface stub: instruction format, schedule, local memory, entry points, command dispatch | partial | `ucode/ge.md, GE.h` | host and geometry |
| arm1.u, arm1_kpm.u | The ARM-named program: role, instruction format and what it controls (role unknown) | partial | `ucode/ge.md` (ARM section), `ucode/arm1.md` | host and geometry |
| tport.bin | Textport program: command set and display behaviour | none | `ucode/tport.md` | command grammar |
| dg4/vfo, dg4/cmb, vof, dgo1 | Display tables: video format and combiner table layouts | none | `ucode/dg.md, DG.h` | display |

Microcode detail: container formats, the one-program-three-encodings equivalence and the geif.u slot table are established in ucode/ge.md. The ge.u record is mapped byte to W bit per form (ucode/ge_u_bitmap.tsv) but the byte values are not slices of W, so the field layout is still open. Open, in order: the ge.u byte value mapping, the token-to-slot translation, the distributor program ged1b.u, and a disassembly of arm1.u (plain ARM code, load address unknown).

Rows: 43.
