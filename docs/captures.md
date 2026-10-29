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

## Host interface (HIP)

| Item | Owner | Capture |
|---|---|---|
| What the 0xc00000 alias of the host-interface window selects (the kernel writes `HH_GINTR_INFO` at 0xc00108, not 0x800108) | `HIP.h` | Read and write a harmless register (`HH_INTR_ENABLE`) through both offsets from a kernel debugger and compare; then repeat the kernel's kick through 0x800108 and see whether the privileged packet is taken. |
| How the host interface splits the user's 64-bit stores at 0x4000 into token and payload words, and the credit scheme behind `HH_GFIFO_LEVEL` beyond the 0x700 and 0x300 marks | `docs/hip.md`, `GE.h` | Trace the Xtalk PIO writes to the pipe (logic analyser on the crossbar port) while a GL program issues Begin, Vertex3f, End; read `HH_GFIFO_LEVEL` after each store with the pipe held (`HH_GINTR_INFO` hold). |
| What makes the hardware refuse a token to the ARM's divert and begin/end vectors | `docs/hip.md`, `ucode/arm1_firmware.md` | Send a geometry token outside Begin/End and a token whose map entry is the bad-command entry; log the ARM's vector entry with its firmware trace (`printf` output on the ARM console) and the token registers 0x200078 and 0x20007c. |
| Register-level behaviour of the input and output DMA engines (0x200010-0x200024, the `ODMA` set), the meaning of bits 15-12 = 0x9 of the page-offset word, and of `flags` 256 and `snapshot` | `docs/hip.md`, `HIP.h`, `kona_kernel/include/kona_kern.h` | Trace the Xtalk read requests of one `DO_IDMA` with the page-offset word's top nibble 0x9 and then 0x0 (sent through the diagnostic map); repeat a select feedback with `snapshot` 0 and 1 and compare the returned words. |
| The hardware conditions behind each `HH_INTR_STATUS` bit, the low-water level that ends the FIFO-full wait, whether `HH_INTR_ACK` is required | `docs/hip.md`, `HIP.h` | Read `HH_INTR_STATUS` and `HH_GFIFO_LEVEL` on every interrupt while a program fills the FIFO past 0x700 and drains it; repeat once without writing `HH_INTR_ACK`. |
| What the host-interface reset pulse (1 then 0, start bit clear) does to the token map, the FIFOs, the DMA and event counters, and whether it stops a running ARM | `docs/hip.md`, `docs/xg.md` | Fill the FIFO with a held pipe, read the token map at ARM 0x00400000 and the counters, pulse `HH_RESET` as the kernel does, read them again and check whether the ARM still answers its mailbox. |
| The exact effect of `HH_GINTR_INFO` FORCE on a user stream that is mid-command | `HIP.h` | Kick a privileged packet while a user process is between a token and its payload; read back the user's next result. |
