# XG: attach and reset sequence

What the 6.5.30m kernel driver does to the pipe's Xtalk-side registers when it attaches and resets a pipe. Source: `kona_kernel/disasm/kona_edtinit_hip2/kona_edtinit_hip2.text.s`, functions `kona_attach` and `kona_reset_adaptor`. Facts are labelled **established** (read from the disassembly), **inferred** (with the reasoning) or **unknown**. The first configuration read is one IP27 Onyx2 with one InfiniteReality2 pipe.

Notation: `P` is the driver's pipe state (offset 2376 holds the base of a 16 MB window the driver maps onto the pipe, mapped with `xtalk_piomap_alloc` for 0x1000000 bytes in `kona_attach`). Every register access below is a 32-bit `gfx_pio_read_32` / `gfx_pio_write_32` at `window + offset`. Offsets below 0x800000 are called the XG window here and offsets from 0x800000 the host-interface window (`HIP.h`). **Inferred** from the split in the kpm register tables and from the driver using only these two ranges; the hardware names for the XG registers are **unknown**, so they are named by offset.

## Attach, `kona_attach`

**Established.** In order:

1. Finds the pipe's Xtalk widget info and its id; the low 8 bits are the widget number, used to find or claim a free pipe record (byte at `P+2208` holds it). The check `lw 100(base)` & 7 must be zero before it goes on (the offset-0x64 test of the crossbow node's widget status; the base here is the node's widget window, not the pipe's).
2. Maps the window, calls `kona_init_flow_control`, adds a hardware-graph edge.
3. Allocates three Xtalk interrupt handles, stored at `P+2240`, `P+2256` and `P+2264`, and connects each to a driver handler taken from a handler table. The device description used for the first sets the interrupt target CPU; the second and third reuse it. The identities of the three handlers are **unknown** (the table is resolved through the global pointer); `kona_xg_intr_handler` and `kona_intr_handler` both exist in `kona_intr_hip2.o`.
4. Writes 0x8800 to window+0x8003c0 (`HH_VC_ADDRESS`) and reads window+0x8003d0 (`HH_VC_DATA`) (**established**; the names are from `HIP.h`).
5. Calls `kona_reset_adaptor` (below) when a driver-wide debug flag word at `0($gp)` allows, otherwise skips it; calls `kona_report_errs`.
6. Reads XG window+0x04 and stores its bits 28-31 at `P+2196`; reads XG window+0x64, takes bits 3-5 (default 8 when zero) and stores them shifted left by 15 at `P+2312`.
7. Writes 0x0b00 to `HH_VC_ADDRESS` again, reads `HH_VC_DATA`, and uses bits 0-1 of the first value read to pick one of several board-name comparisons (`strncmp` against a name string, then `kona_extract_nic_info`, `kona_init_board_mapping`, `kona_inventory_board`).

**Unknown:** what the video-controller indirect register (`HH_VC_ADDRESS` 0x8800 and 0x0b00) holds, and what the values chosen by bits 0-1 mean.

## Reset, `kona_reset_adaptor`

**Established.** Given the pipe state P, in this order (all writes are 32-bit):

1. `xwidget_gfx_reset(P+200)`: the kernel's own widget reset for the Xtalk widget handle at `P+200`. What the hardware does for this call is **unknown**; it is not a register write in this driver.
2. Gets the interrupt target address (`xtalk_intr_addr_get`, 64-bit, call it A) and target number (`xtalk_intr_target_get`, call it T) from the first interrupt handle (`P+2240`).
3. Reads a word W from a per-node table indexed by the halfword at `P+2210`, at offset 4. N = 4 when bits 12-27 of W are nonzero; otherwise N = 3 if bits 28-31 of W are below 3, else 4. (The word's meaning is **unknown**; it is the same word class as the one stored at `P+2196` during attach, which suggests it is a copy of XG window+0x04. **Inferred.**)
4. Writes XG+0x24 = (T & 0xff) << 22 (masked to 0x03c00000) | (byte at `P+2208` & 0xf) | ((N << 12) & 0xf000) | 0x00240200, then reads XG+0x24 back.
5. Writes XG+0x3c = A bits 0-31, and XG+0x34 = ((T & 0xff) << 16, masked to 0x000f0000) | (A bits 32-47).
6. Reads the vector number of each of the three handles (V1 for `P+2240`, V2 for `P+2264`, V3 for `P+2256`) and writes XG+0x5c = 0x00020000 | ((V1 << 18) & 0x03fc0000) | ((V2 << 9) & 0x0001fe00) | (V3 & 0xff).
7. Calls `kona_report_errs`.
8. Reads XG+0x6c, writes XG+0x2c = 0, reads XG+0x6c again and writes the value read back to XG+0x6c.
9. Reads XG+0x24 and writes it back with bit 17 (0x20000) set.
10. Reads XG+0x74 and writes back ((bits 16-21 of it) << 16) | ((bits 22-27) << 22) | 0x3f40, dropping every other bit of the old value.
11. Writes 0xfff to window+0x800238 (`HH_INTR_STATUS`), and 0 to window+0x800390 and window+0x800398 (`HH_GV_ERR_STAT1` and `_STAT2`).

**Inferred:** steps 4-6 set up how the pipe signals interrupts to the host. The packing shows a target number, a 48-bit target address and three 8-bit vector numbers, which matches an Xtalk interrupt destination. Step 8's read, clear, read, write-back pattern on XG+0x6c looks like an error or status register that is cleared by writing back the bits read. Step 11 clears the interrupt-status bits and both error-status words. None of this is confirmed against a register description.

**Unknown:** every XG register's name and layout; the effect of `xwidget_gfx_reset`; whether bit 17 of XG+0x24 enables interrupts; the 0x3f40 constant in step 10.

## Pipe reset, `KONAinitialize` and the credit-wait path

**Established.** The host-interface reset register `HH_RESET` (0x800300, bit 0 is the reset bit in `HIP.h`) is pulsed in two places. Both run `kona_reset_adaptor` first and then the same four accesses: write 1, read back, write 0, read back.

- `KONAinitialize` (`kona_kernel/disasm/kona_setup/kona_setup.text.s`), after registering the board with the host-transfer layer and setting `P+2368` to 256: the pulse, then write `P+2368` (256) to `HH_INTR_ENABLE` (0x800230), write 0x8000 to `HH_INTR_INFO` (0x800220) and to its shadow at `P+2364`, `kona_mapram_init`, then under the interrupt-priority lock detach from the flow-control group if attached, reset the flow-control state (`gfx_flow_reset`), re-run `kona_flow_init`, and clear the word at `P+2172`.
- `kona_flow_await_returned_credits` (`kona_kernel/disasm/kona_flow/kona_flow.text.s`): when the returned credits stay below the bias, it polls the credit count up to 1000 times, one microsecond apart. If, at any poll, the word at `P+2344` is zero, the word at `P+2172` is nonzero, and bit 2 of the word at offset 4 of the object at `P+72` is set, it takes the reset path: `kona_reset_adaptor`, the `HH_RESET` pulse, then flush, detach, `gfx_flow_reset`, re-attach to the flow-control group, write the group number into the register at window offset 0x7c (as in `kona_kern.h`) and finish the attach. If the poll runs out, it reads `HH_GFIFO_LEVEL` (0x800208) and, when it is above `P+2332`, forces a reschedule of the current process; otherwise it returns. With neither path taken, no reset happens, and `kona_die` is the only other recovery code.

**Inferred:** the path through `kona_flow_await_returned_credits` is a recovery used when a pipe stops returning credits while an extra flag (`P+2172`, cleared by `KONAinitialize`) is set. What `P+2172` and bit 2 of the word at `P+72`+4 mean is **unknown**.

**Unknown:** what the pulse width of `HH_RESET` is (the two reads between the writes are the only delay) and which state the reset clears. `HH_JTAG_RESET` (0x378) is not accessed by the driver.
