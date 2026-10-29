# Open items and the capture that would settle each

Everything here is **unknown** from the binaries and public sources read so far. Each entry names the owning file, what is unknown, and the capture or measurement on a running InfiniteReality pipe that would settle it. A capture means an observation of a running machine: a register read, a bus or video trace, a memory dump or an output DMA while a stated program runs. A row of [coverage.md](coverage.md) is marked done once every remaining unknown in it is listed here.

## Geometry engine program

| Item | Owner | Capture |
|---|---|---|
| Ties the instruction test leaves open: 0x50 AND or NOR, 0x54 and 0x56 between OR, XOR and NAND, 0x66 and 0x68 minimum and maximum or moves, unit-2 0x2f and 0x3f move of the second operand or minimum; whether 0x42's 0x80000000 is saturation | `ucode/ge_ops.md` | Run the diagnostic `ge_inst.s` test on a real pipe with its operand constants changed (first operand larger, one negative, one zero, an overflowing pair) and record the engine's output DMA, as `TEST_ge_instTest` does. |
| Each branch condition on its false side, the fourth flag condition, and `cc` 0x10, 0x11, 0x14, 0x15 | `ucode/ge_ops.md`, `GE.h` | The same run with each branch case given an input that makes its condition false; read the flag register (source 0x1b) after each flag-setting word. |
| How form 11 encodes two operations in one M (M = 0x440: integer add and float multiply together) | `ucode/ge_ops.md` | The same run with the form-11 lines 3512-3528 given distinct integer and float operands. |
| Which staging register each command operand word lands in (the engine's input FIFO operation) | `ucode/ge_ops.md`, `ucode/ge_isa.md` | Send `TbusRegWrite` with two known operand words and trace the engine's raster-bus output, or single-step the engine with the diagnostic's `ge_host_reg_write` path and read registers 0x1d-0x1f. |

## XG (Xtalk widget)

| Item | Owner | Capture |
|---|---|---|
| Names, reset values and layouts of the chip-specific registers 0x5c-0x74, of bits 16-31 of WIDGET_CONTROL (0x24; the driver always sets 0x240000, puts the interrupt target in bits 25-22 and sets bit 17 last) and of 0x74 (bits 16-27 kept, 0x3f40 or-ed in) | `XG.h`, `docs/xg.md` | Read the XG window 0x00-0x7c from a stopped kernel (or the PROM) right after power-on, then after each step of `kona_reset_adaptor`; then write each unexplained bit alone and read back. |
| What the XG does on the crossbar link reset that `xwidget_gfx_reset` performs (which XG and host-interface state survives it) | `docs/xg.md` | Read the XG window and the host-interface registers before and after `xwidget_gfx_reset` on a pipe with a nonzero map RAM and a nonzero error status. |
| What lies in the 16 MB window outside the offsets the driver uses (below 0x800000 apart from 0x04-0x74; the 0xc00000 alias) | `docs/xg.md`, `HIP.h` | Read a few words at stride through each unused range from a kernel debugger; note bus errors. |
| The XG side of host DMA: how it turns a map-RAM entry into Xtalk read and write requests (request size, ordering, how many outstanding) and what raises each DMA error bit of 0x6c (bits 8, 9, 26-28) | `docs/hip.md`, `XG.h` | Trace the Xtalk link (logic analyser on the crossbar port) during a `KONA_DMAREAD` and a `KONA_DMAWRITE` of a few pages; repeat with one map-RAM entry invalidated. |
| The hardware conditions that raise each XG error bit and each of the three interrupt vectors | `XG.h`, `docs/hip.md` | Provoke the conditions the bit names where software can (an invalid map-RAM entry, an over-full graphics FIFO with flow control off, a bad PIO command) and read 0x6c and the interrupt that arrives. |
