# Open items and the capture that would settle each

Everything here is **unknown** from the binaries and public sources read so far. Each entry names the owning file, what is unknown, and the capture or measurement on a running InfiniteReality pipe that would settle it. A capture means an observation of a running machine: a register read, a bus or video trace, a memory dump or an output DMA while a stated program runs. A row of [coverage.md](coverage.md) is marked done once every remaining unknown in it is listed here.

## Geometry engine program

| Item | Owner | Capture |
|---|---|---|
| Ties the instruction test leaves open: 0x50 AND or NOR, 0x54 and 0x56 between OR, XOR and NAND, 0x66 and 0x68 minimum and maximum or moves, unit-2 0x2f and 0x3f move of the second operand or minimum; whether 0x42's 0x80000000 is saturation | `ucode/ge_ops.md` | Run the diagnostic `ge_inst.s` test on a real pipe with its operand constants changed (first operand larger, one negative, one zero, an overflowing pair) and record the engine's output DMA, as `TEST_ge_instTest` does. |
| Each branch condition on its false side, the fourth flag condition, and `cc` 0x10, 0x11, 0x14, 0x15 | `ucode/ge_ops.md`, `GE.h` | The same run with each branch case given an input that makes its condition false; read the flag register (source 0x1b) after each flag-setting word. |
| How form 11 encodes two operations in one M (M = 0x440: integer add and float multiply together) | `ucode/ge_ops.md` | The same run with the form-11 lines 3512-3528 given distinct integer and float operands. |
| Which staging register each command operand word lands in (the engine's input FIFO operation) | `ucode/ge_ops.md`, `ucode/ge_isa.md` | Send `TbusRegWrite` with two known operand words and trace the engine's raster-bus output, or single-step the engine with the diagnostic's `ge_host_reg_write` path and read registers 0x1d-0x1f. |
