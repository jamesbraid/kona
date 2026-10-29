# XG: attach and reset sequence

What the 6.5.30m kernel driver does to the pipe's Xtalk-side registers when it attaches and resets a pipe. Source: `kona_kernel/disasm/kona_edtinit_hip2/kona_edtinit_hip2.text.s`, functions `kona_attach` and `kona_reset_adaptor`. Facts are labelled **established** (read from the disassembly), **inferred** (with the reasoning) or **unknown**. The first configuration read is one IP27 Onyx2 with one InfiniteReality2 pipe.

Notation: `P` is the driver's pipe state (offset 2376 holds the base of a 16 MB window the driver maps onto the pipe, mapped with `xtalk_piomap_alloc` for 0x1000000 bytes in `kona_attach`). Every register access below is a 32-bit `gfx_pio_read_32` / `gfx_pio_write_32` at `window + offset`. Offsets below 0x800000 are called the XG window here and offsets from 0x800000 the host-interface window (`HIP.h`). **Inferred** from the split in the kpm register tables and from the driver using only these two ranges; offsets 0x04-0x3c are the generic Xtalk widget registers (WIDGET_ID 0x04, WIDGET_CONTROL 0x24, REQ_TIMEOUT 0x2c, INTDEST_UPPER_ADDR 0x34, INTDEST_LOWER_ADDR 0x3c in Linux's `arch/mips/include/asm/xtalk/xwidget.h`), **inferred** because the driver's writes fit those layouts field for field (below). The chip-specific registers from 0x5c have no public name and are named by offset. **Established:** `kona_init` registers the driver for Xtalk part 0xc102, manufacturer 0x2aa, the numbers the same Linux header lists for "InfiniteReality3 / Kona GFX".

## Attach, `kona_attach`

**Established.** In order:

1. Finds the pipe's Xtalk widget info and its id; the low 8 bits are the widget number, used to find or claim a free pipe record (byte at `P+2208` holds it). The check `lw 100(base)` & 7 must be zero before it goes on (INFERRED role: a status word of the node's widget window, not the pipe's).
2. Maps the window, calls `kona_init_flow_control`, adds a hardware-graph edge.
3. Allocates three Xtalk interrupt handles, stored at `P+2240`, `P+2256` and `P+2264`, and connects each to a driver handler taken from a handler table. The device description used for the first sets the interrupt target CPU; the second and third reuse it. The handlers are `kona_xg_intr_handler`, `kona_intr_handler` and `kona_ge_intr_handler`, assigned in that order to the handles at `P+2240`, `P+2256` and `P+2264` (**inferred** from the order of the driver's handler table; `docs/hip.md`, interrupts).
4. Writes 0x8800 to window+0x8003c0 (`HH_VC_ADDRESS`) and reads window+0x8003d0 (`HH_VC_DATA`) (**established**; the names are from `HIP.h`).
5. Calls `kona_reset_adaptor` (below) when a driver-wide debug flag word at `0($gp)` allows, otherwise skips it; calls `kona_report_errs`.
6. Reads XG window+0x04 and stores its bits 28-31 at `P+2196`; reads XG window+0x64, takes bits 3-5 (default 8 when zero) and stores them shifted left by 15 at `P+2312`.
7. Writes 0x0b00 to `HH_VC_ADDRESS` again, reads `HH_VC_DATA`, and uses bits 0-1 of the first value read to pick one of several board-name comparisons (`strncmp` against a name string, then `kona_extract_nic_info`, `kona_init_board_mapping`, `kona_inventory_board`).

**Unknown:** what the video-controller indirect register (`HH_VC_ADDRESS` 0x8800 and 0x0b00) holds, and what the values chosen by bits 0-1 mean.

## Reset, `kona_reset_adaptor`

**Established.** Given the pipe state P, in this order (all writes are 32-bit):

1. `xwidget_gfx_reset(P+200)`: the kernel's own widget reset for the Xtalk widget handle at `P+200`. It is not a register write in this driver. **Established** from the kernel itself (`root/unix`, 6.5.30m, `xwidget_gfx_reset` at 0xc00000000006c908): it calls `xswitch_reset_link`, which is `xbow_reset_link`, and then `hub_widget_reset` for the widget's master hub. `xbow_reset_link` works on the crossbar's register block for the pipe's port (crossbar base + 0x100 + 0x40 x (port & 7)): it saves the word at +0x0c, writes 0 to +0x34, then polls bit 31 of +0x14 with `us_delay` until it is set or a timeout passes, and on success writes the saved word back to +0x0c. `hub_widget_reset` raises the interrupt level, walks the hub's eight I/O response-buffer entries (the 64-bit words at +776 of the hub's register block, one per entry), and for each valid entry (bit 56 set) whose bits 31-24 name this widget it zeroes the entry and writes (entry | 0x10) to +904, asserting if bit 4 reads back set; it then calls `hub_setup_prb(node, widget, 3, 2)`. **Inferred:** the crossbar side resets the Xtalk link to the pipe (the register at +0x34 is a link reset, bit 31 of +0x14 is link-alive and +0x0c is the link control it restores), and the hub side discards outstanding responses for the widget and reprograms its response-buffer credits; the XG therefore sees a link reset, not a write to any of its own registers. What the XG does on a link reset is **unknown: needs capture** ([captures.md](captures.md)).
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

**Inferred** (generic widget layout from the Linux header): in step 4 the low half of WIDGET_CONTROL takes the widget number in bits 3-0, `SYS_END` (0x200) and N in the crossbar-credit field (bits 15-12); N follows the revision of the word read in step 3, which fits that word being the crossbar's own WIDGET_ID (older crossbars get 3 credits). Step 5 fills INTDEST_LOWER and INTDEST_UPPER (target id in bits 19-16, address bits 47-32) and leaves the generic vector field (bits 31-24) zero, because the three vectors go in the chip-specific 0x5c. Step 8 zeroes REQ_TIMEOUT. Bits 16-31 of WIDGET_CONTROL are chip-specific: 0x240000 is always set, the target number goes in bits 25-22 and bit 17 is set last.

**Inferred:** steps 4-6 set up how the pipe signals interrupts to the host. The packing shows a target number, a 48-bit target address and three 8-bit vector numbers, which matches an Xtalk interrupt destination. Step 8's read, clear, read, write-back pattern on XG+0x6c looks like an error or status register that is cleared by writing back the bits read. Step 11 clears the interrupt-status bits and both error-status words. None of this is confirmed against a register description.

**Unknown: needs capture** ([captures.md](captures.md)): the names and layouts of the chip-specific registers 0x5c-0x74 beyond what the driver writes, bits 16-31 of WIDGET_CONTROL (including bit 17), the fields of 0x74 and its 0x3f40 constant, and the effect of `xwidget_gfx_reset` on the XG.

## Pipe reset, `KONAinitialize` and the credit-wait path

**Established.** The host-interface reset register `HH_RESET` (0x800300, bit 0 is the reset bit in `HIP.h`) is pulsed in two places. Both run `kona_reset_adaptor` first and then the same four accesses: write 1, read back, write 0, read back.

- `KONAinitialize` (`kona_kernel/disasm/kona_setup/kona_setup.text.s`), after registering the board with the host-transfer layer and setting `P+2368` to 256: the pulse, then write `P+2368` (256) to `HH_INTR_ENABLE` (0x800230), write 0x8000 to `HH_INTR_INFO` (0x800220) and to its shadow at `P+2364`, `kona_mapram_init`, then under the interrupt-priority lock detach from the flow-control group if attached, reset the flow-control state (`gfx_flow_reset`), re-run `kona_flow_init`, and clear the word at `P+2172`.
- `kona_flow_await_returned_credits` (`kona_kernel/disasm/kona_flow/kona_flow.text.s`): when the returned credits stay below the bias, it polls the credit count up to 1000 times, one microsecond apart. If, at any poll, the word at `P+2344` is zero, the word at `P+2172` is nonzero, and bit 2 of the word at offset 4 of the object at `P+72` is set, it takes the reset path: `kona_reset_adaptor`, the `HH_RESET` pulse, then flush, detach, `gfx_flow_reset`, re-attach to the flow-control group, write the group number into the register at window offset 0x7c (as in `kona_kern.h`) and finish the attach. If the poll runs out, it reads `HH_GFIFO_LEVEL` (0x800208) and, when it is above `P+2332`, forces a reschedule of the current process; otherwise it returns. With neither path taken, no reset happens, and `kona_die` is the only other recovery code.

**Inferred:** the path through `kona_flow_await_returned_credits` is a recovery used when a pipe stops returning credits while an extra flag (`P+2172`, cleared by `KONAinitialize`) is set. What `P+2172` and bit 2 of the word at `P+72`+4 mean is **unknown**.

**What the pulse clears, from the driver and from the firmware loader.** *Established*: bit 0 of `HH_RESET` resets the host-interface chip ("Reset the HIP"). The loader starts the ARM with `HH_INTR_INFO` = 0, then `HH_RESET` = 3 (reset, with the ARM start bit), a read-back, then 2 (reset released, start bit (bit 1, `ARM_START` in kpm's table) and leaves the register at 0. What the kernel then rewrites tells which state it does not assume survives: the interrupt enable (`HH_INTR_ENABLE` = 0x100, `KONAinitialize`), the global interrupt enable (`HH_INTR_INFO` bit set, reset clear).

*Inferred:* the pulse returns the host-interface registers the driver rewrites to their reset state (interrupt enable, global enable, credit threshold) and empties the map RAM's valid state, from the rewriting. A reset with the start bit set restarts the ARM: **inferred** from `init_graphics` in `kona_tport.o` (kernel-functions.md), which writes 3 then 2 to start a pipe that does not answer.



**Unknown:** the pulse width (the two reads between the writes are the only delay), whether the 1-to-0 sequence with the start bit clear stops a running ARM, and what happens to the graphics FIFO contents, the DMA and event counters and the token map. `HH_JTAG_RESET` (0x378) is not accessed by the driver.
