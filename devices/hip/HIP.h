/*
 * HIP.h - InfiniteReality (KONA) host interface: the register window the
 * host CPU reaches through the Crosstalk widget.
 *
 * Labels: ESTABLISHED = read directly from a binary or a cited header;
 * INFERRED = a reading with its reasoning; UNKNOWN = not settled.
 *
 * Sources:
 *   kpm      IRIX 6.5.30m /usr/gfx/KONA/bin/kpm. Its .data holds a table of
 *            60-byte records {kind, offset, name[32], 0, 0, mask, 0, shift}
 *            from vaddr 0x100b4820 (181 records): kind 1 = register, kind 2 =
 *            field. Extracted to software/diags/kpm/hip_registers.tsv. Names carry a
 *            HIP1_ or HIP2_ prefix where the two host-interface chip
 *            generations differ; HH_ names are common to both.
 *   kernel   IRIX 6.5.30m kona.a, disassembled under software/kernel/disasm/.
 *   kona.h   IRIX 6.5.5 /usr/include/sys/kona.h and kona_if.h (installed
 *            system headers, revision 1.71 of 1998-12-10). Facts from them
 *            are labelled with the release.
 */
#ifndef KONA_HIP_H
#define KONA_HIP_H

/*
 * Where the registers sit.
 *
 * ESTABLISHED (kpm): register offsets run 0x000-0x3f8 in steps of 8. The
 * HIP1_HH_ADDR and HIP2_HH_ADDR records (offset 0xdead) describe the access
 * address instead of a register: bits 0-2 zero, bits 3-9 the register
 * number (offset / 8), bit 16 USER; HIP1 adds bit 15 NOTF, bit 17 CPUV and
 * bits 18-24 CPUID.
 *
 * INFERRED: the kernel reaches these registers at register-window offset
 * 0x800000 + offset. Its accesses line up with the table: it polls
 * 0x800208 under mask 0x7fe (HIP2_GFIFO_LEVEL is bits 1-10 of
 * HH_GFIFO_LEVEL at 0x208); kona_die clears bit 15 of 0x800220
 * (HIP2_INTR_GLOBAL_EN in HH_INTR_INFO), reads 0x800220 and 0x8003a8
 * (HH_TBUS_STATUS) and writes 0x800298 (HH_ODMA_FLUSH); the video paths use
 * 0x8003c0 / 0x8003d0 (HH_VC_ADDRESS / HH_VC_DATA) as an address/data
 * pair. The 6.5.5 KONA_HEALTH ioctl returns "saved hh_intr_info" and
 * "saved hh_tbus_status", the two registers kona_die reads. */
#define KONA_HIP_REG_BASE             0x800000

/*
 * The kick register (ESTABLISHED usage, INFERRED identity).
 *
 * Before each phase of a kernel packet the driver writes 0x30000, 0x10000
 * or 0 to register-window offset 0xc00108 (kona_kern.h). Bits 3-9 of that
 * address select register 0x108, HH_GINTR_INFO, whose HIP2 fields are
 * HIP2_GINTR_PRIV (bit 16) and HIP2_GINTR_FORCE (bit 17); HIP1 has the same
 * two bits plus vector, CPU id and a WGORDER bit. So:
 *   0x30000 = PRIV | FORCE   written before the token of a kernel packet
 *                            that interrupts another context's stream;
 *   0x10000 = PRIV           written before payload words, and before the
 *                            token when the caller's own context is current;
 *   0                        written when the packet is done.
 * ESTABLISHED (kpm 6.5.30m, its ARM-side table, software/ucode/arm1_registers.tsv):
 * the ARM sees the two bits as ICU_STATUS_PRIV and ICU_STATUS_FORCE, bits 2
 * and 3 of its register 0x200060. The firmware refuses the privileged
 * tokens when PRIV is clear and never reads FORCE. INFERRED: PRIV marks the
 * FIFO words that follow as privileged kernel commands; FORCE, from its name
 * and from the kernel setting it only when it interrupts another context's
 * stream, lets the kernel's words in ahead of that stream's state. What
 * FORCE does inside the host interface is UNKNOWN: no shipped software or
 * published source depends on it beyond the kernel's use. Routes tried: the
 * kernel kick sites, the firmware (bit 3 is never read), irsaudit (writes
 * PRIV | FORCE once while setting up the video interrupts and never tests
 * it), kpm's tables and dump code and the 6.5.5 kona*.h headers. Software may treat
 * FORCE like PRIV.
 *
 * ESTABLISHED (kpm's window-base records): 0xc00000 is a second view of the
 * client registers, XG_FC_CLIENT_REGS, beside the plain view at 0x800000 and
 * the graphics FIFO view at 0xc10000 (XG.h, devices/xg/README.md). INFERRED: the kernel writes the kick
 * through the flow-controlled view so that it reaches the host interface in
 * order with the command words it writes through 0xc10000; every other
 * kernel access uses 0x800000. Bits 3-9 of a 0xc00000 address still select
 * the register, so 0xc00000 + offset decodes as the register
 * at 0x800000 + offset. */
#define KONA_HIP_KICK_OFFSET          0xc00108
#define KONA_HIP_GINTR_PRIV           0x10000
#define KONA_HIP_GINTR_FORCE          0x20000

/*
 * User mapping, ESTABLISHED for 6.5.5 (kona.h): the kernel maps each
 * graphics thread a region whose first 16 KB (offsets 0x0000-0x3fff) is
 * the graphics FIFO, the next 16 KB (0x4000-0x7fff) the host-interface
 * registers (read-only except for diagnostics), then 16 KB of return-data
 * memory (0x8000-0xbfff). Diagnostics also get the XG registers from
 * 0xc000. INFERRED for 6.5.30: libGLcore's FIFO address 0x4000 is the
 * start of this region, so any store in the first 16 KB is a FIFO write.
 *
 * Not pipe accesses, ESTABLISHED: the scan's user-pipe window runs to
 * process address 0x20c000 and so overlaps the IRIX per-thread data area at
 * 0x200000 (PRDA, 6.5.5 sys/prctl.h). libGL's __glXInitThread loads window
 * offset +0x1fce00 (address 0x200e00, the start of the PRDA's system area)
 * and libGLcore's __glSoftResetContext loads offsets +0x1fce90 and
 * +0x1fce98 (0x200e90 and 0x200e98, in the PRDA's library area, lui 0x20 +
 * 0xe90 at 0x0d9d0bf8 in the IP27KONA build): per-thread library state, not
 * host-interface registers.
 *
 * Diagnostic XG page, ESTABLISHED (kpm adapterInspection 0x10012378): kpm
 * reads the XG widget registers through the page at 0xc000, the low word of
 * each 64-bit slot (offsets 0xc, 0x14, 0x1c, 0x24 ...). Register offset
 * +0xc01c is widget offset 0x1c, which kpm's XG table does not name;
 * INFERRED from the generic Crosstalk widget layout (Linux xwidget.h,
 * devices/xg/README.md) it is the error lower-address register. kpm only prints it.
 *
 * Return data, ESTABLISHED for 6.5.5: the 16 KB area starts with a valid
 * word and a count word, then data, and ends with an instrumentation
 * overflow word and a pad word. */
#define KONA_MAP_FIFO_OFFSET          0x0000
#define KONA_MAP_REGS_OFFSET          0x4000
#define KONA_MAP_RDATA_OFFSET         0x8000
#define KONA_MAP_XG_OFFSET            0xc000

/*
 * XG_XT_STAT register at user offset 0xc00c (window offset 0xc), the Xtalk link status word,
 * established: kpm `adapterInspection` (0x10012378) loads the word at fixed user address 0x1000c
 * (at 0x10012430) and files it by offset under kpm's name XG_XT_STAT, whose fields are the pending
 * count, LLP retry flags and 8-bit transmit and receive counters. Inferred: that address is this
 * register when the pipe is mapped at user address 0x4000, as libGL does (`__glXGetPipeAddress`
 * returns 16384). No kernel code reads it. */
#define KONA_USER_XG_XT_STAT              0xc00c

/*
 * Register at user offset 0xc014 (window offset 0x14), established as read: `adapterInspection` in
 * kpm loads it at 0x10012464, but kpm's XG table has no record at offset 0x14, so
 * `assign_register` (0x100121f4) fails and the dump logs an error instead of storing the word.
 * Inferred from the generic Xtalk widget layout (Linux xwidget.h, devices/xg/README.md): the upper half of
 * the error address of the last failed request. */
#define KONA_USER_XG_ERR_UPPER_ADDR       0xc014

/*
 * Register at user offset 0xc01c (window offset 0x1c), established as read by kpm at 0x10012484
 * inside `adapterInspection`; as for the entry at 0xc014, kpm's XG table lacks a record for it and
 * the dump drops the word with an error message. Inferred from the generic Xtalk widget layout
 * (Linux xwidget.h): the lower half of the error address that pairs with the upper half. */
#define KONA_USER_XG_ERR_LOWER_ADDR       0xc01c

/*
 * XG_XT_CTRL register at user offset 0xc024 (window offset 0x24), the Xtalk control word,
 * established: kpm `adapterInspection` reads it at 0x100124a4 and files it under that name. The
 * kernel's `kona_reset_adaptor` (kona_edtinit_hip2.o, writes at +0x145c and +0x1574) programs it
 * with the widget number, the target number, the crossbar credit count, 0x00240200 and finally bit
 * 17 (interrupt enable), so the diagnostic dump shows what the driver set. */
#define KONA_USER_XG_XT_CTRL              0xc024

/*
 * Register at user offset 0xc02c (window offset 0x2c), established as read by kpm at 0x100124c4 in
 * `adapterInspection`; the table lookup fails there too, so only the load happens. The kernel's
 * `kona_reset_adaptor` (kona_edtinit_hip2.o, at +0x1538) writes 0 to this window offset after
 * reading the error status; inferred from the generic widget layout (Linux xwidget.h) that this is
 * the request timeout register, cleared so no timeout is armed. */
#define KONA_USER_XG_REQ_TIMEOUT          0xc02c

/*
 * Register at user offset 0xc034 (window offset 0x34), established as read by kpm at 0x100124e4 in
 * `adapterInspection` with no matching record in kpm's table. The kernel writes it from
 * `kona_reset_adaptor` (at +0x14b0) with the interrupt target number in bits 16-19 and address
 * bits 32-47; inferred from the generic widget layout (Linux xwidget.h) that this is the upper
 * word of the interrupt destination, so a dump of it shows where the pipe sends interrupts. */
#define KONA_USER_XG_INTDEST_UPPER        0xc034

/*
 * Register at user offset 0xc03c (window offset 0x3c), established as read by kpm at 0x10012504 in
 * `adapterInspection` (its table has no record, so the value is not stored). The kernel's
 * `kona_reset_adaptor` writes the low 32 bits of the interrupt target address here at +0x1484;
 * inferred from the generic widget layout (Linux xwidget.h): the lower interrupt destination word
 * that completes the 48-bit address begun at 0xc034. */
#define KONA_USER_XG_INTDEST_LOWER        0xc03c

/*
 * XG_CONFIG register at user offset 0xc064 (window offset 0x64), established: kpm
 * `adapterInspection` reads it at 0x10012524, and the kernel's `kona_attach` (kona_edtinit_hip2.o,
 * at +0x1150 and +0x1174) reads the same offset and takes bits 3-5, kpm's MAPRAM_SIZE field, as
 * the number of map RAM blocks (zero meaning 8), storing the result at pipe state +2312. Bits 0-2
 * are kpm's SUBSYSTEM field and bits 6-7 MAPRAM_TYPE. */
#define KONA_USER_XG_CONFIG               0xc064

/*
 * XG_ERR_STAT register at user offset 0xc06c (window offset 0x6c), the pipe's error status,
 * established: kpm `adapterInspection` reads it at 0x10012544, `kona_report_errs` reads it for the
 * kernel's error report, and `kona_reset_adaptor` (kona_edtinit_hip2.o, +0x1528 to +0x1554) reads
 * it, zeroes REQ_TIMEOUT, reads it again and writes the value read back to it. Inferred from that
 * pattern: bits are cleared by writing them back; kpm's table names 31 error bits. */
#define KONA_USER_XG_ERR_STAT             0xc06c

/*
 * XG_HI_LO_WATER register at user offset 0xc074 (window offset 0x74), the water marks,
 * established: kpm `adapterInspection` reads it at 0x10012564 and `kona_reset_adaptor`
 * (kona_edtinit_hip2.o, read at +0x1580, write at +0x15bc) rewrites it keeping the command-FIFO
 * low and high marks (bits 16-27) and setting the output-DMA marks to low 0x40 and high 0x3f
 * through the constant 0x3f40. Inferred from kpm's field names that the marks drive the command-
 * FIFO and output-DMA flow. */
#define KONA_USER_XG_HI_LO_WATER          0xc074

/*
 * XG_GFX_DET register at user offset 0xc07c (window offset 0x7c), the flow-control attach word,
 * established: kpm `adapterInspection` reads it at 0x10012584, while the kernel writes it on every
 * packet sender: `kona_act_pcx` (kona_context.o, offset formed at +0x48c) and
 * `kona_flow_await_returned_credits` (kona_flow.o, formed at +0x8a8) store (tnum << 1) & 0x3e to
 * attach or 1 to detach, with tnum the constant 17. Inferred: bit 0 detaches the pipe from flow
 * control and bits 1-5 name the transaction number on which credits return. */
#define KONA_USER_XG_GFX_DET              0xc07c

/*
 * XG_GFX_AVCC register at user offset 0xc084 (window offset 0x84), a 12-bit counter, established
 * as read only by kpm: `adapterInspection` loads it at 0x100125a4 and files it under that name; no
 * kernel object, irsaudit routine or library touches it. What it counts: unknown: no shipped
 * software or published source depends on it beyond that one dump read; routes tried, the kernel's
 * flow-control code, irsaudit and libGLcore. */
#define KONA_USER_XG_GFX_AVCC             0xc084

/*
 * XG_GFX_AVDWC register at user offset 0xc08c (window offset 0x8c), a 12-bit counter, established
 * as read only by kpm: `adapterInspection` loads it at 0x100125c4, and nothing else in the shipped
 * software reads or writes it. Its count is unknown: no shipped software or published source
 * depends on it. Routes tried: kpm's other XG reads, the kernel flow-control layer, irsaudit and
 * the libraries, none of which uses the doubleword counter. */
#define KONA_USER_XG_GFX_AVDWC            0xc08c

/*
 * XG_MAP_ADDR register at user offset 0xc094 (window offset 0x94), an 18-bit field, established as
 * read only by kpm: `adapterInspection` loads it at 0x100125e4, which is also the last of its XG
 * reads. The kernel writes map RAM entries through the 0x100000 array directly and never uses
 * this register, so what it latches is unknown: no shipped software or published source depends
 * on it. Routes tried: `kona_mapram_hip2.o`, the rest of kpm and irsaudit. */
#define KONA_USER_XG_MAP_ADDR             0xc094

/*
 * Dummy read at user offset 0xc100 (window offset 0x100), established: libGLcore.so
 * `__glkonim_Flush` (0x0d94beb0) stores token 199 and then 0 to the FIFO at 0x4000 and ends with a
 * load at address 0x10100 whose destination is the zero register, and `__glkona_wait_rdata`
 * (0x0d956c68) issues the same load at 0x0d956cb0 before it polls the return-data valid word.
 * Established from `map_rtc` in the same library (0x0d948750, called from `MakeCurrentRead`):
 * process address 0x10000 is the hub real-time counter's page of /dev/mmem, mapped there and
 * checked to put the counter at 0x10100, so this load reads the counter, not the pipe, and the
 * inventory only places it in the user I/O window by its address. Inferred: the value is
 * discarded, so the uncached read exists to push the posted FIFO stores out ahead of what follows. */
#define KONA_USER_FLUSH_READ              0xc100

/*
 * Not a pipe register, established: user offset 0x1fce00 is process address 0x200e00, the start of
 * the system area of the per-process data area that IRIX maps at 0x200000 (struct prda in
 * sys/prctl.h, release 6.5.5). libGL.so `__glXInitThread` (0x0d80ff60, load at 0x0d80ff80) reads
 * that word in passing a thread value to its helper; the scan of the user window counts it only
 * because the window runs to 0x20c000. */
#define KONA_USER_PRDA_SYS_AREA           0x1fce00

/*
 * Not a pipe register, established: user offset 0x1fce90 is process address 0x200e90, inside the
 * library part of the per-process data area (struct prda in sys/prctl.h, release 6.5.5, whose
 * library area starts at 0xe80). libGLcore.so `__glSoftResetContext` (lui 0x20 at 0x0d9d0bf8 in
 * the IP27KONA build) loads the word and passes it to a diagnostic log call at level 5, so it is
 * per-thread library state read by software. */
#define KONA_USER_PRDA_LIB_SLOT           0x1fce90

/*
 * Not a pipe register, established: user offset 0x1fce98 is process address 0x200e98, the next
 * doubleword of the per-process library area after the slot at 0x1fce90. The 64-bit libGLcore.so
 * (IP27KONA64) `__glSoftResetContext` loads it with `ld` at 0x02e31048 after lui 0x20 at
 * 0x02e31044 and hands it to the same level 5 log call, so it too is per-thread library state. */
#define KONA_USER_PRDA_LIB_SLOT64         0x1fce98

/*
 * Event codes the pipe reports to the kernel, ESTABLISHED for 6.5.5
 * (kona_if.h). The geometry engine writes them to a communication area
 * (the page HP_PIPE_SETUP names, kona_kern.h); the ARM-named processor
 * passes them through HH_ARM_MBOX. Values below 0x100 are reserved for
 * microcode primitives; 0 is a print request. */
#define KONA_GE_EV_SELECTFEED         0x100
#define KONA_GE_EV_DEACT              0x101
#define KONA_GE_EV_MEM_SWAPOUT        0x102
#define KONA_GE_EV_MOPUP              0x103
#define KONA_GE_EV_MEM_SUSPEND        0x104
#define KONA_GE_EV_CHECKPIPE          0x105
#define KONA_ARM_EV_IDMA              0x100
#define KONA_ARM_EV_MEM_SWAPIN        0x102
#define KONA_ARM_EV_ACT               0x103

/* Register table (kpm vaddr 0x100b4820). */

/* HIP1_HH_ADDR: address-bit layout of a register access */
#define KONA_HIP1_ADDR_REGCNT_ZERO_MASK     0x00000007  /* shift 0 */
#define KONA_HIP1_ADDR_REGCNT_MASK          0x000003f8  /* shift 3 */
#define KONA_HIP1_ADDR_NOTF_MASK            0x00008000  /* shift 15 */
#define KONA_HIP1_ADDR_USER_MASK            0x00010000  /* shift 16 */
#define KONA_HIP1_ADDR_CPUV_MASK            0x00020000  /* shift 17 */
#define KONA_HIP1_ADDR_CPUID_MASK           0x01fc0000  /* shift 18 */

/*
 * HIP1_HH_GFIFO at 0x800000 (32-bit, write only), first-generation host interface only.
 * Whether any software pushes command words here is unknown; the user FIFO page is mapped from
 * the flow-controlled window at 0xc10000 instead. No shipped binary touches offset 0: the
 * kernel access list (software/kernel/registers.tsv) has no entry, and kpm's `hipInspectionPreJtag`
 * (0x10012834) does not read it. Inferred: each store appends one word to the graphics FIFO whose
 * fill HH_GFIFO_LEVEL (0x208) counts. */
#define KONA_HIP1_HH_GFIFO                  0x000  /* register mask 0xffffffff */

/*
 * HH_SWITCH at 0x800100 (mask 0x1ff), 6.5.30m. What its nine bits switch is unknown, since no
 * shipped software or published source reads or writes the register. kpm's register table gives it a nine-bit mask and no field names, and
 * no program loads or stores the offset. Routes tried for this switch register: the kernel's
 * access list (software/kernel/registers.tsv), the 0x10012834 dump routine of kpm, which skips it,
 * irsaudit, ireeprom, gfxinfo and the 6.5.5 kona headers. */
#define KONA_HH_SWITCH                      0x100  /* register mask 0x1ff */

/*
 * HIP1_HH_GINTR_INFO and HIP2_HH_GINTR_INFO at 0x800108 (19 or 18 bits), established: the kernel
 * writes it only through the flow-controlled alias 0xc00108 (KONA_HIP_KICK_OFFSET), irsaudit
 * `vdEnableDgInterrupts` (0x10130c98) writes 0x30000 at 0x10130cf8, and kpm `hipInspectionPreJtag`
 * reads it at 0x10012aa4. Bit 16 PRIV and bit 17 FORCE exist on both generations; HIP1 adds a
 * vector field (bits 0-7), a CPU id (bits 8-14) and bit 18 WGORDER, which no shipped 6.5.30m
 * binary sets (the kernel kick writes only 0, 0x10000 and 0x30000). Inferred from those values:
 * PRIV marks the FIFO words that follow as privileged kernel commands and FORCE lets them pass
 * another context's stream; what FORCE changes inside the chip is not read anywhere. */
#define KONA_HIP1_HH_GINTR_INFO             0x108  /* register mask 0x77fff */
#define KONA_HIP1_GINTR_VECTOR_MASK         0x000000ff  /* shift 0 */
#define KONA_HIP1_GINTR_CPUID_MASK          0x00007f00  /* shift 8 */
#define KONA_HIP1_GINTR_PRIV_MASK           0x00010000  /* shift 16 */
#define KONA_HIP1_GINTR_FORCE_MASK          0x00020000  /* shift 17 */
#define KONA_HIP1_GINTR_WGORDER_MASK        0x00040000  /* shift 18 */

/*
 * HH_NOP at 0x8001f8 (mask 0), 6.5.30m. An access to it has an unknown effect, and no shipped
 * software or published source makes one. Its zero mask in kpm's table means no bit of it holds data.
 * Routes tried for a reader or writer of offset 0x1f8: kpm, whose dump at 0x10012834 omits
 * it, the kernel access list, irsaudit, ireeprom, gfxinfo and the 6.5.5 headers; none has one. */
#define KONA_HH_NOP                         0x1f8  /* register mask 0x0 */

/*
 * HH_RTC at 0x800200 (32 bits), established: irsaudit `probe_hip_clock_speed` (0x1004cd0c) writes
 * ARM address 0x2000b0, kpm's name HA_RTC, through HH_ARM_ADDRESS (at 0x1004cd5c) and HH_ARM_DATA
 * to zero it, sleeps a measured time and reads this register at 0x1004cddc, then divides by the
 * elapsed time and accepts 20 to 60 MHz (its messages "HIP real-time clock outside operating
 * bounds" and "too slow, DO NOT SHIP"). Inferred: a free-running counter at the host-interface
 * clock that reads the same value as the ARM's copy. kpm reads it into its dump at 0x10012ac8. */
#define KONA_HH_RTC                         0x200  /* register mask 0xffffffff */

/*
 * HIP1_HH_GFIFO_LEVEL and HIP2_HH_GFIFO_LEVEL at 0x800208 (12 or 11 bits), established: the number
 * of words waiting in the graphics FIFO sits in bits 1-10 on HIP2 (mask 0x7fe) and bits 1-11 on
 * HIP1 (mask 0xffe), from kpm's table; bit 0 is always zero. The kernel polls it in
 * `kona_hiwater_intr` at +0x274, `kona_hiwater_timeout`, `kona_delay_monitor_gfifo` at +0x178 and
 * `kona_flow_await_returned_credits` at +0x8f0 (kona_flow.o) against its raw software level 0x300,
 * and `kona_die` reads it at +0x118 (kona_crash.o); kpm reads it into its dump at
 * 0x10012af4. Inferred: one level unit is one 32-bit FIFO word, from irsaudit `TEST_intr`
 * (0x10079858), whose high mark of 4 raw (0x10079c94) trips on two words as devices/hip/README.md reads it. */
#define KONA_HIP1_HH_GFIFO_LEVEL            0x208  /* register mask 0xfff */
#define KONA_HIP1_GFIFO_LEVEL_ZERO_MASK     0x00000001  /* shift 0 */
#define KONA_HIP1_GFIFO_LEVEL_MASK          0x00000ffe  /* shift 1 */

/*
 * HH_GFIFO_HI at 0x800210 (field in bits 1-10, writable mask 0x7fe), established: the FIFO high-
 * water mark. `kona_flow_init` (kona_flow.o, at +0x30) writes 1792 (0x700 raw) to it for every
 * pipe, irsaudit `TEST_intr` writes 4 (at 0x10079c94) to raise the FIFO_HI interrupt and 256 (at
 * 0x1007a4cc) to restore it, and kpm reads it into its dump at 0x10012b28. Inferred:
 * HH_INTR_STATUS bit 0 sets while the level is at or above this mark, since two words reach a mark
 * of 4 raw. */
#define KONA_HH_GFIFO_HI                    0x210  /* register mask 0x7ff */
#define KONA_GFIFO_HI_ZERO_MASK             0x00000001  /* shift 0 */
#define KONA_GFIFO_HI_MASK                  0x000007fe  /* shift 1 */

/*
 * HH_GFIFO_LO at 0x800218 (field in bits 1-10, writable mask 0x7fe), established: the FIFO low-
 * water mark. irsaudit `TEST_intr` writes 3 at 0x10079cac to arm the FIFO_LO interrupt and 0 at
 * 0x1007a4dc to restore it, kpm reads it into its dump at 0x10012b5c, and the kernel never writes
 * it (`kona_flow_init` sets only the high mark). Inferred: HH_INTR_STATUS bit 1 sets while the
 * level is at or below this mark, because an empty FIFO raises it in the diagnostic without any
 * write first. */
#define KONA_HH_GFIFO_LO                    0x218  /* register mask 0x7ff */
#define KONA_GFIFO_LO_ZERO_MASK             0x00000001  /* shift 0 */
#define KONA_GFIFO_LO_MASK                  0x000007fe  /* shift 1 */

/*
 * HIP1_HH_INTR_INFO and HIP2_HH_INTR_INFO at 0x800220 (16 bits), established: bit 15 is the global
 * interrupt enable (INTR_GLOBAL_EN). `KONAinitialize` (kona_setup.o, at +0xb4) writes 0x8000,
 * `kona_die` (kona_crash.o) reads the register at +0x6c, saves it for the KONA_HEALTH record and
 * writes it back with bit 15 cleared at +0xa8, irsaudit `vdEnableDgInterrupts` writes 0x8000 and
 * `init_hip_interrupt_regs` (0x10038848) writes 0, and kpm clears bit 15 before dumping
 * (0x10012934). HIP1 also keeps a vector (bits 0-7) and a CPU id (bits 8-14) here that no shipped
 * binary sets; kpm's HIP2 table marks bits 0-14 as zero. */
#define KONA_HIP1_HH_INTR_INFO              0x220  /* register mask 0xffff */
#define KONA_HIP1_INTR_VECTOR_MASK          0x000000ff  /* shift 0 */
#define KONA_HIP1_INTR_CPUID_MASK           0x00007f00  /* shift 8 */
#define KONA_HIP1_INTR_GLOBAL_EN_MASK       0x00008000  /* shift 15 */

/*
 * HH_INTR_ACK at 0x800228 (write only, no data field), established: `kona_intr_handler`
 * (kona_intr_hip2.o, at +0x1cc) writes 0xbadc0ffe after serving the status bits, `KONAstart`
 * (kona_setup.o, at +0x42c) writes the same word once after a stray parity status, and irsaudit
 * `TEST_intr` (0x10079ef8) writes 0 after each status write-back. Inferred: an end-of-interrupt
 * strobe whose data is ignored (the two callers write different words), and the diagnostic clears
 * the ARM bit without it, so status clearing does not depend on it. */
#define KONA_HH_INTR_ACK                    0x228  /* register mask 0x0 */

/*
 * HIP1_HH_INTR_ENABLE and HIP2_HH_INTR_ENABLE at 0x800230 (10 or 12 bits), established: one enable
 * bit per HH_INTR_STATUS bit; a source whose bit is clear is not delivered. `KONAinitialize`
 * (kona_setup.o, at +0x98) writes 0x100, `KONAstart` (at +0x174) writes 0xf7c, `kona_hiwater_intr`
 * sets bit 1 at +0x30c and clears it at +0x34c while `kona_lowater_intr` clears it at +0x528
 * (kona_flow.o), `kona_diag_flow` clears bits 0-2 at +0x604 and sets bit 2 at +0x62c, and irsaudit
 * `vdEnableDgInterrupts` writes 0x208 (VIDEO and VOC). HIP2 adds bits 10 and 11 (PIO_OV, IDMA_OV),
 * which the kernel's 0xf7c enables. */
#define KONA_HIP1_HH_INTR_ENABLE            0x230  /* register mask 0x3ff */

/*
 * HIP1_HH_INTR_STATUS and HIP2_HH_INTR_STATUS at 0x800238 (10 or 12 bits), established: the
 * pending interrupt causes, set whether or not HH_INTR_ENABLE has them and cleared by writing one
 * back. `kona_intr_handler` (kona_intr_hip2.o) reads it at +0xd4, masks it with its software
 * enable word and the GE bit, and writes the served set back at +0x1ac; `kona_ge_intr_handler`
 * writes 0x20 at +0x2fc, `kona_arm_intr` writes 0x10 at +0x118 (kona_intr.o), `kona_reset_adaptor`
 * writes 0xfff at +0x15d4 (kona_edtinit_hip2.o), and irsaudit writes 0x3ff or 0xfff then polls it.
 * Inferred write-one-to-clear from those written values; devices/hip/README.md reads irsaudit `TEST_intr` as
 * showing that clearing the ARM bit also zeroes the ARM's doorbell at 0x200094. */
#define KONA_HIP1_HH_INTR_STATUS            0x238  /* register mask 0x3ff */
#define KONA_HIP1_INTR_BIT_FIFO_HI_MASK     0x00000001  /* shift 0 */
#define KONA_HIP1_INTR_BIT_FIFO_LO_MASK     0x00000002  /* shift 1 */
#define KONA_HIP1_INTR_BIT_FIFO_OV_MASK     0x00000004  /* shift 2 */
#define KONA_HIP1_INTR_BIT_VIDEO_MASK       0x00000008  /* shift 3 */
#define KONA_HIP1_INTR_BIT_ARM_MASK         0x00000010  /* shift 4 */
#define KONA_HIP1_INTR_BIT_GE_MASK          0x00000020  /* shift 5 */
#define KONA_HIP1_INTR_BIT_ODMA_MASK        0x00000040  /* shift 6 */
#define KONA_HIP1_INTR_BIT_UNUSED_MASK      0x00000080  /* shift 7 */
#define KONA_HIP1_INTR_BIT_PARITY_MASK      0x00000100  /* shift 8 */
#define KONA_HIP1_INTR_BIT_VOC_MASK         0x00000200  /* shift 9 */
/*
 * The causes behind ODMA (6), UNUSED (7), PARITY (8), PIO_OV (10, HIP2) and
 * IDMA_OV (11, HIP2) beyond their names and the kernel's actions
 * (devices/hip/README.md) are UNKNOWN: no shipped software or published source
 * depends on them. No program raises them on purpose: irsaudit raises only
 * ARM, FIFO_HI, FIFO_LO, FIFO_OV, GE, VIDEO and VOC; the kernel only reports
 * the others and kills the pipe (or prints, for ODMA). INFERRED from the
 * HIP2 error-capture register HH_GV_ERR_STAT2 (0x398), whose fields include
 * FIFO_OV, PIO_OV and IDMA_OV beside the failed command and word: PIO_OV and
 * IDMA_OV are overflows of the programmed-I/O and input-DMA paths into the
 * command FIFO, latched there with the offending command; kpm reads
 * HH_GV_ERR_STAT1/2 into its dump but decodes nothing from them. Routes
 * tried: the kernel's three handlers, irsaudit TEST_intr and its register
 * tests, kpm's dump and analysis code, the firmware (which cannot see these
 * bits) and the 6.5.5 kona*.h headers.
 */

/*
 * HH_ARM_MBOX at 0x800240 (32 bits, read only for the host), established: the word the ARM
 * firmware posts to the host with its doorbell. `kona_arm_intr` (kona_intr.o) reads it at +0x24 as
 * an event code (0 text print, 0x100, 0x102 and 0x103 for the KONA_ARM_EV values) and, for a text
 * print, reads it again at +0x17c once per character after writing 0x10 to HH_INTR_STATUS to let
 * the firmware send the next; irsaudit `TEST_mbox` (0x1007a720) posts a test word from the host
 * side of ARM space and reads it back here at 0x1007a7f4; kpm dumps it at 0x10012bb4. The host
 * never writes it. */
#define KONA_HH_ARM_MBOX                    0x240  /* register mask 0xffffffff */

/*
 * HH_SEQID at 0x800248 (32 bits, read only), established: `kona_video_intr` (kona_video.o) reads
 * it at +0x17ec on every video interrupt and passes it to `kona_nclops_swapped`, and devices/dg/README.md
 * reads the following loop as finishing every queued retrace record whose sequence number is not
 * greater than it; kpm dumps it at 0x10012bd8. Inferred: the pipe copies there the number its
 * RETRACE_SEQID token (DG.h) carried, once the drawing queued before that token is done.
 * No kernel path writes it. Inferred: 0 once the firmware has run init_dg_board (DG.h); the
 * reset value before that is UNKNOWN (devices/dg/README.md, first tag and hardware tag). */
#define KONA_HH_SEQID                       0x248  /* register mask 0xffffffff */

/*
 * HH_ODMA_CHANNEL at 0x800250 (1 bits), established as a kpm table entry; read in the dump by
 * kpm 6.5.30m `hipInspectionPreJtag` (0x10012834). Inferred: it selects the output-DMA channel
 * (0 primary, 1 secondary); the firmware sets raster-bus index 0x440, which devices/rm/README.md pairs
 * with it, to 1 before a read-back through the second channel (`start_rdata`, 0x0c0224d4). */
#define KONA_HH_ODMA_CHANNEL                0x250  /* register mask 0x1 */

/*
 * HH_PACK_MODE at 0x800258 (7 bits), established as a kpm table entry; read in the dump by
 * kpm 6.5.30m `hipInspectionPreJtag` (0x10012834). Inferred: it holds the pixel packing mode
 * of output DMA; the firmware's `__glkonSetupPacker` (0x0c028d20) writes a 7-bit value to
 * the paired raster-bus index 0x441, built from four small fields (devices/rm/README.md). */
#define KONA_HH_PACK_MODE                   0x258  /* register mask 0x7f */

/*
 * HH_ODMA_PNUM at 0x800260 (29 bits), established in the 6.5.30m kernel:
 * the page number of the primary output-DMA destination. `kona_ge_intr` (kona_intr.o) reads it
 * only to print it in the dump for a spurious engine event; the firmware loads the paired
 * raster-bus index 0x450 from the A_hi word of START_SELECTFEED (`arm_start_selectfeed`, 0x0c022a50). */
#define KONA_HH_ODMA_PNUM                   0x260  /* register mask 0x1fffffff */

/*
 * HIP1_HH_ODMA_POFF and HIP2_HH_ODMA_POFF at 0x800268 (twelve or seventeen bits wide), established
 * in the 6.5.30m kernel: the offset in the destination page of primary
 * output DMA, with the attribute bits above it on HIP2. `kona_ge_intr` (kona_intr.o) reads
 * it for the spurious-event dump; the firmware loads the paired index 0x451 from the A_lo word. */
#define KONA_HIP1_HH_ODMA_POFF              0x268  /* register mask 0xfff */
/* HIP1 output-DMA page offset: 12 bits, the byte offset only; the attribute bits above it exist on HIP2 (below). */

/*
 * HH_ODMA_LEN at 0x800270 (32 bits), established as a kpm table entry, read by kpm 6.5.30m
 * `hipInspectionPreJtag` (0x10012834); irsaudit `TEST_ge_hip` (0x1006f0f4) writes patterns to the
 * paired raster-bus index and reads them back from this offset. The firmware loads it (raster-bus
 * 0x452) with the same line length as HH_ODMA_LLEN (0x455) when a select-feedback starts
 * (`arm_start_selectfeed`, 0x0c022a50), and the secondary channel's length is in bytes (kpm
 * `ge11ReadDiagRegisters` 0x1001e748 sets 64 for its sixteen 4-byte registers). Inferred: it
 * counts the bytes left in the current line of a primary output-DMA transfer and reloads from
 * HH_ODMA_LLEN. */
#define KONA_HH_ODMA_LEN                    0x270  /* register mask 0xffffffff */

/*
 * HH_ODMA_TOTAL at 0x800278 (32 bits), established: `kona_ge_intr` (kona_intr.o) reads it
 * for its spurious-event dump, and kpm (`wait_for_dma_completion`, 0x1001f7c0) and irsaudit
 * (`wait_for_odma`, 0x10037c68) poll it until it reads 0. Inferred: it counts the bytes
 * of the whole transfer still to be written to host memory, so 0 means the transfer is done. */
#define KONA_HH_ODMA_TOTAL                  0x278  /* register mask 0xffffffff */

/*
 * HH_ODMA_OVER at 0x800280 (12 bits), established as a kpm 6.5.30m table entry; kpm clears the
 * secondary copy before programming a transfer and the firmware clears this one when a
 * select-feedback starts (devices/hip/README.md). Inferred: it records overflow of the output DMA, with
 * bit 11 the overflow flag of the select-feedback status word. */
#define KONA_HH_ODMA_OVER                   0x280  /* register mask 0xfff */

/*
 * HH_ODMA_LLEN at 0x800288 (32 bits), primary channel only, established as a kpm 6.5.30m table entry;
 * the firmware's `arm_start_selectfeed` (0x0c022a50) writes the line length to the paired
 * raster-bus index 0x452 and 0x455. Inferred: it is the line length the length counter
 * reloads at the start of each line. */
#define KONA_HH_ODMA_LLEN                   0x288  /* register mask 0xffffffff */

/*
 * HH_ODMA_STRIDE at 0x800290 (32 bits), primary channel only, established: irsaudit 6.5.30m
 * `TEST_ge_hip` (0x1006f0f4) writes a pattern to the paired raster-bus index and reads it
 * back here, and `arm_start_selectfeed` (0x0c022a50) writes the `stride` payload word to it.
 * Inferred: it is the distance between the starts of successive lines of the destination. */
#define KONA_HH_ODMA_STRIDE                 0x290  /* register mask 0xffffffff */

/*
 * HH_ODMA_FLUSH at 0x800298 (write only, no data field), established: `kona_die` (kona_crash.o, at
 * +0xe4) writes 0xbadc0ffe to it while killing a pipe, and irsaudit `wait_for_odma` (0x10037c68)
 * writes 0 at 0x10037d54 when the transfer total has not drained to zero and then polls the total
 * again, and kpm `wait_for_dma_completion` (0x1001f7c0) writes 1 at 0x1001f86c once its wait ends.
 * The callers write different words, so (inferred) the write itself is the action: it pushes out
 * output-DMA data still held inside the chip so a stalled transfer finishes or is abandoned. */
#define KONA_HH_ODMA_FLUSH                  0x298  /* register mask 0x0 */

/*
 * HH_ODMA2_PNUM at 0x8002a0 (29 bits), established: the page number of the destination
 * of the secondary output-DMA channel, which kpm 6.5.30m drives through the host registers to
 * pull pipe state into a host buffer (`setup_dma`, 0x1001f76c). `kona_ge_intr` reads it only
 * for the spurious-event dump. */
#define KONA_HH_ODMA2_PNUM                  0x2a0  /* register mask 0x1fffffff */

/*
 * HIP1_HH_ODMA2_POFF and HIP2_HH_ODMA2_POFF at 0x8002a8 (twelve or seventeen bits wide), established
 * in the 6.5.30m kernel: the in-page offset of the secondary output-DMA
 * destination, with attribute bits above it on HIP2. `kona_ge_intr` reads it for the
 * spurious-event dump (kona_intr.o); kpm's `setup_dma` (0x1001f76c) writes it. */
#define KONA_HIP1_HH_ODMA2_POFF             0x2a8  /* register mask 0xfff */
/* HIP1 second-channel page offset: 12 bits, as HIP1_HH_ODMA_POFF. */

/*
 * HH_ODMA2_LEN at 0x8002b0 (32 bits), established: kpm 6.5.30m `setup_dma` (0x1001f76c)
 * writes the whole transfer length to it and to HH_ODMA2_TOTAL before starting a pull of pipe
 * state, in bytes: `ge11ReadDiagRegisters` (0x1001e748) passes 64 to pull sixteen 4-byte
 * registers. Inferred: it is the secondary channel's line counter, which for kpm's one-line
 * pulls equals the total. */
#define KONA_HH_ODMA2_LEN                   0x2b0  /* register mask 0xffffffff */

/*
 * HH_ODMA2_TOTAL at 0x8002b8 (32 bits), established: kpm 6.5.30m `setup_dma` (0x1001f76c)
 * loads the transfer length, `wait_for_dma_completion` (0x1001f7c0) polls it for 0, and
 * irsaudit TEST_odma polls it the same way. `kona_ge_intr` reads it for its dump.
 * Inferred: it counts down the bytes still to be written by the secondary channel. */
#define KONA_HH_ODMA2_TOTAL                 0x2b8  /* register mask 0xffffffff */

/*
 * HH_ODMA2_OVER at 0x8002c0 (12 bits), established: kpm 6.5.30m `setup_dma` (0x1001f76c)
 * clears it before programming the secondary channel. Inferred: it records overflow of that
 * channel's output DMA. */
#define KONA_HH_ODMA2_OVER                  0x2c0  /* register mask 0xfff */

/*
 * HH_RESET at 0x800300 (2 bits). Bit 0 holds the host interface in reset, established from the
 * kernel pulse (write 1, read back, write 0). Bit 1 is named ARM_START in kpm's table
 * (software/diags/kpm/hip_registers.tsv). Established: `init_graphics` (kona_tport.o) starts a pipe that
 * does not answer by writing HH_INTR_INFO 0, then HH_RESET 3 and 2 (+0x13ec); that bit 1
 * lets the ARM run, booting from the EEPROM, is inferred from that sequence and the name.
 * `KONAinitialize` (kona_setup.o) writes 1 at +0x58, reads back at
 * +0x64 and writes 0 at +0x74, and `kona_flow_await_returned_credits` (kona_flow.o, +0x824, +0x840) pulses
 * it the same way. What the pulse clears (token map, FIFOs, counters) is unknown: no shipped
 * software or published source depends on it, as the firmware rebuilds them on each start and the
 * kernel rewrites what it needs afterwards. Routes tried: kernel pulse sites, irsaudit's reset
 * ioctl, kpm `hipReset` (0x10017204; it never writes this register), arm1.u start-up and the 6.5.5
 * headers. */
#define KONA_HH_RESET                       0x300  /* register mask 0x3 */
#define KONA_HIP_RESET_MASK                 0x00000001  /* shift 0 */
#define KONA_ARM_START_MASK                 0x00000002  /* shift 1 */

/*
 * HH_ARM_CTRL at 0x800308 (2 bits), established: bit 0 HOST_ACCESS opens the host's path to ARM
 * address space through HH_ARM_ADDRESS and HH_ARM_DATA. kpm `armAccessEnable` (0x10012340) sets it
 * at 0x1001236c right after writing HH_ARM_STALL, irsaudit raises it before every ARM-memory
 * access and drops it afterwards (`probe_hip_clock_speed` at 0x1004cd44, `TEST_hh_reg` at
 * 0x10079098 and 0x10079158), and irsaudit's register test round-trips
 * values under mask 0x3. Bit 1, kpm's HOST_ARM_CACHE_DISABLE, is never set by any shipped
 * software. */
#define KONA_HH_ARM_CTRL                    0x308  /* register mask 0x3 */
#define KONA_ARM_CTRL_HOST_ACCESS_MASK      0x00000001  /* shift 0 */
#define KONA_HOST_ARM_CACHE_DISABLE_MASK    0x00000002  /* shift 1 */

/*
 * HH_ARM_STATUS at 0x800310 (16 bits), established: kpm 6.5.30m `hipInspectionPreJtag`
 * (0x10012834) reads it and `analyze_hip` (0x100173a0) tests its NOPC bit (bit 10), adding
 * "(Opcode fetch)" to a stalled-address report. The fields STALL, REMAP, GE_CNT, MREQ, SEQ, NRW,
 * NBW, ABORT, NOPC and MODE report the ARM processor's stall, boot remap and bus-cycle state. */
#define KONA_HH_ARM_STATUS                  0x310  /* register mask 0xffff */
#define KONA_ARM_STATUS_STALL_MASK          0x00000001  /* shift 0 */
#define KONA_ARM_STATUS_REMAP_MASK          0x00000002  /* shift 1 */
#define KONA_ARM_STATUS_GE_CNT_MASK         0x0000001c  /* shift 2 */
#define KONA_ARM_STATUS_MREQ_MASK           0x00000020  /* shift 5 */
#define KONA_ARM_STATUS_SEQ_MASK            0x00000040  /* shift 6 */
#define KONA_ARM_STATUS_NRW_MASK            0x00000080  /* shift 7 */
#define KONA_ARM_STATUS_NBW_MASK            0x00000100  /* shift 8 */
#define KONA_ARM_STATUS_ABORT_MASK          0x00000200  /* shift 9 */
#define KONA_ARM_STATUS_NOPC_MASK           0x00000400  /* shift 10 */
#define KONA_ARM_STATUS_MODE_MASK           0x0000f800  /* shift 11 */

/*
 * HH_ARM_STALL at 0x800320 (write-only trigger, no data field), established: kpm `armAccessEnable`
 * (0x10012340, store at 0x1001235c) and `hipInspectionPreJtag` (0x10013218) write 0 to it just
 * before enabling host access to ARM memory, while irsaudit `StallArm` (0x10038554, call at
 * 0x1003857c) writes 1. Inferred: because both values are used, the write itself halts the ARM so
 * the host can read its memory consistently; HH_ARM_UNSTALL undoes it. */
#define KONA_HH_ARM_STALL                   0x320  /* register mask 0x0 */

/*
 * HH_ARM_UNSTALL at 0x800328 (write-only trigger, no data field), established: irsaudit
 * `UnStallArm` (0x10038594, call at 0x100385bc) writes 1 to it once the host has finished its ARM-
 * memory access; kpm never writes it. Inferred from the name and that pairing: a write lets a
 * halted ARM run again. */
#define KONA_HH_ARM_UNSTALL                 0x328  /* register mask 0x0 */

/*
 * HH_ARM_STEP at 0x800330 (write-only trigger, no data field), beside HH_ARM_STALL and
 * HH_ARM_UNSTALL. The effect of a write is unknown: no shipped software or published source
 * ever writes it to single-step the processor. Routes tried for a single-step user: kpm's code (no load or store at offset 816 anywhere in the binary),
 * irsaudit's host accesses, the kernel access list, ireeprom, gfxinfo, arm1.u (which cannot see
 * its own debug window) and the 6.5.5 headers. */
#define KONA_HH_ARM_STEP                    0x330  /* register mask 0x0 */

/*
 * HH_ARM_CURR_ADDR at 0x800338 (32 bits), established: kpm `hipInspectionPreJtag` (0x10012834)
 * reads it at 0x10012df4 and `analyze_hip` (0x100173b0) compares it with the ARM command port
 * address 0x200400 (at 0x10017474) and the data and distributor port addresses to say what a
 * stalled ARM is waiting for. Inferred: it holds the ARM address of the bus cycle the processor is
 * currently on. */
#define KONA_HH_ARM_CURR_ADDR               0x338  /* register mask 0xffffffff */

/*
 * HH_CURR_DATA_FM_ARM at 0x800340 (32 bits), established as read by kpm 6.5.30m
 * `hipInspectionPreJtag` (0x10012834) into its dump, which `show_hip_host_registers_section`
 * (0x1001545c) prints raw; `analyze_hip` uses HH_ARM_CURR_ADDR but not this word. Inferred from
 * the name: it holds the data word the ARM drives on its bus in the current cycle. Which cycle it
 * latches and when it updates is unknown: no shipped software or published source depends on it.
 * Routes tried: kpm's dump, display and analysis code, the kernel's register accesses
 * (software/kernel/registers.tsv has none), the firmware and the 6.5.5 headers. */
#define KONA_HH_CURR_DATA_FM_ARM            0x340  /* register mask 0xffffffff */

/*
 * HH_CURR_DATA_TO_ARM at 0x800348 (32 bits), established as read by kpm 6.5.30m
 * `hipInspectionPreJtag` (0x10012834) into its dump, which `show_hip_host_registers_section`
 * (0x1001545c) prints raw. Inferred from the name: it holds the data word presented to the ARM in
 * the current cycle. Which cycle it latches is unknown: no shipped software or published source
 * depends on it; routes tried as for HH_CURR_DATA_FM_ARM. */
#define KONA_HH_CURR_DATA_TO_ARM            0x348  /* register mask 0xffffffff */

/*
 * HH_JTAG_DATA at 0x800350 (32 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) write it to start a shift and read it for the bits shifted out.
 * Its self-test writes 0x99799999 and expects the complement 0x66866666 back for a 32-bit shift. */
#define KONA_HH_JTAG_DATA                   0x350  /* register mask 0xffffffff */

/*
 * HH_JTAG_TMS at 0x800358 (6 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) write the test-mode-select bits here before writing
 * HH_JTAG_DATA: 31 before a reset shift, 18 before a data shift and 3 between tests. */
#define KONA_HH_JTAG_TMS                    0x358  /* register mask 0x3f */

/*
 * HH_JTAG_CTRL at 0x800360 (11 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) write the chain number shifted left by 5 (bits 5-10) to
 * select a board's scan chain; bits 0-4 are the shift length, where its self-test writes
 * 0x501, 0x505 and 0x500 for its three test shifts. */
#define KONA_HH_JTAG_CTRL                   0x360  /* register mask 0x7ff */

/*
 * HH_JTAG_STATUS at 0x800368 (1 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) poll bit 0 until it clears after each shift and give up with
 * "JTAG stall timeout" after 1000 polls, so (inferred) bit 0 is the controller busy flag. */
#define KONA_HH_JTAG_STATUS                 0x368  /* register mask 0x1 */

/*
 * HH_JTAG_ACCESS at 0x800370 (1 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) write 1 to bit 0 (HOST) before the first chain select, which
 * (inferred from the name) hands the scan controller from the ARM's bit-bang port to the host. */
#define KONA_HH_JTAG_ACCESS                 0x370  /* register mask 0x1 */
#define KONA_JTAG_ACCESS_HOST_MASK          0x00000001  /* shift 0 */

/*
 * HH_JTAG_RESET at 0x800378 (mask 0, trigger). Unknown: no shipped software or published
 * source depends on it beyond its name. kpm 6.5.30m `hipInspectionPreJtag` (0x10012834) reads
 * it; inferred from the name that a write resets the scan controller. Routes tried: kpm's
 * `jt_hard_reset` (0x10033b10) calls slot 3 of its procedure vector, a stub at 0x1001048c that
 * returns -1 without a store; irsaudit's vector slot 3 is the same kind of stub (0x1002f720);
 * the kernel and the firmware never touch the offset. */
#define KONA_HH_JTAG_RESET                  0x378  /* register mask 0x0 */

/*
 * HIP1_HH_FCI_OVERLAP at 0x800380 (7 bits), HIP1 only, established: kpm 6.5.30m `hipReset`
 * (0x10017204) sets the OVERLAP_DISABLE field (bit 0) to disable overlapped crosstalk transactions
 * as an alternative to a boundary-scan reset (the HIP2 counterpart is HIP2_HH_GV_OVERLAP). Bits 1-6
 * are the DMA_INTL field; no shipped software states what they select. */
#define KONA_HIP1_HH_FCI_OVERLAP            0x380  /* register mask 0x7f */
#define KONA_HIP1_FCI_OVERLAP_DISABLE_MASK  0x00000001  /* shift 0 */
#define KONA_HIP1_FCI_DMA_INTL_MASK         0x0000007e  /* shift 1 */

/*
 * HIP1_HH_FCI_LOOPBACK at 0x800388 (16 bits), HIP1 only. Unknown: no shipped software or
 * published source depends on it. kpm 6.5.30m `hipInspectionPreJtag` (0x10012834) reads it into
 * its dump; inferred from the name that it is a loopback control of the first-generation
 * crosstalk interface. Routes tried: kpm's table (name and mask), irsaudit, the kernel, the
 * firmware and the 6.5.5 headers. */
#define KONA_HIP1_HH_FCI_LOOPBACK           0x388  /* register mask 0xffff */

/*
 * HIP1_HH_FCI_ERR_STAT1 and HIP2_HH_GV_ERR_STAT1 at 0x800390 (32 bits), established: the kernel
 * `kona_reset_adaptor` (kona_edtinit_hip2.o, at +0x15ec) writes 0 to it after every pipe reset,
 * irsaudit `TEST_hippio` (0x10076a94) writes 0xffffffff once before its PIO test, and kpm reads it
 * at 0x10012940. Inferred from kpm's single 32-bit DATA field: it latches the data word of the
 * first failed command, with HH_FCI_ERR_STAT2 holding the command and counters, and a write re-
 * arms the capture, since the two writers use different words. */
#define KONA_HIP1_HH_FCI_ERR_STAT1          0x390  /* register mask 0xffffffff */
#define KONA_HIP1_FCI_ERR_DATA_MASK         0xffffffff  /* shift 0 */

/*
 * HIP1_HH_FCI_ERR_STAT2 and HIP2_HH_GV_ERR_STAT2 at 0x800398 (32 or 9 bits), established:
 * `kona_reset_adaptor` (kona_edtinit_hip2.o, at +0x1604) writes 0 to it after every pipe reset and
 * kpm reads it at 0x10012960. Inferred from kpm's field names: the companion of HH_FCI_ERR_STAT1,
 * holding what the first failed command was. HIP1 packs the DBP, SCMD, SCMDP, SBEND, SOE and WORD
 * fields, five transaction counters and an overflow flag into 32 bits; HIP2 keeps data parity, a
 * 3-bit command with its parity, the word index and the FIFO, PIO and IDMA overflow flags in 9. */
#define KONA_HIP1_HH_FCI_ERR_STAT2          0x398  /* register mask 0xffffffff */
#define KONA_HIP1_FCI_ERR_DBP_MASK          0x00000003  /* shift 0 */
#define KONA_HIP1_FCI_ERR_SCMD_MASK         0x0000000c  /* shift 2 */
#define KONA_HIP1_FCI_ERR_SCMDP_MASK        0x00000010  /* shift 4 */
#define KONA_HIP1_FCI_ERR_SBEND_MASK        0x00000020  /* shift 5 */
#define KONA_HIP1_FCI_ERR_SOE_MASK          0x00000040  /* shift 6 */
#define KONA_HIP1_FCI_ERR_WORD_MASK         0x00000080  /* shift 7 */
#define KONA_HIP1_FCI_ERR_IDMA_CNT_MASK     0x00001f00  /* shift 8 */
#define KONA_HIP1_FCI_ERR_PIO_CNT_MASK      0x0001e000  /* shift 13 */
#define KONA_HIP1_FCI_ERR_ODMA_CNT_MASK     0x001e0000  /* shift 17 */
#define KONA_HIP1_FCI_ERR_PIO_REQ_CNT_MASK  0x01e00000  /* shift 21 */
#define KONA_HIP1_FCI_ERR_PIO_RR_CNT_MASK   0x06000000  /* shift 25 */
#define KONA_HIP1_FCI_ERR_CMD_CNT_MASK      0x78000000  /* shift 27 */
#define KONA_HIP1_FCI_ERR_OVER_FLAG_MASK    0x80000000  /* shift 31 */

/*
 * HIP1_HH_FCI_PIO_STATUS at 0x8003a0 (23 bits), HIP1 only, established: kpm 6.5.30m
 * `hipInspectionPreJtag` (0x10012834) reads it. The fields REGCNT, NOTF, USER, CPUV, CPUID and SIZE
 * repeat the layout of an access address plus its size, so (inferred) it holds the address and
 * size of the last programmed-I/O access, including its USER bit (bit 11). */
#define KONA_HIP1_HH_FCI_PIO_STATUS         0x3a0  /* register mask 0x7fffff */
#define KONA_HIP1_PIO_REGCNT_ZERO_MASK      0x00000007  /* shift 0 */
#define KONA_HIP1_PIO_REGCNT_MASK           0x000003f8  /* shift 3 */
#define KONA_HIP1_PIO_NOTF_MASK             0x00000400  /* shift 10 */
#define KONA_HIP1_PIO_USER_MASK             0x00000800  /* shift 11 */
#define KONA_HIP1_PIO_CPUV_MASK             0x00001000  /* shift 12 */
#define KONA_HIP1_PIO_CPUID_MASK            0x000fe000  /* shift 13 */
#define KONA_HIP1_PIO_SIZE_MASK             0x00700000  /* shift 20 */

/*
 * HH_TBUS_STATUS at 0x8003a8 (4 sticky bits: DRAW 0, LOAD 1, ACTIVE 2, STALL 3), established:
 * `kona_callout` (kona_timeout.o) reads it at +0x250 and counts the pipe as busy when ACTIVE is
 * set, then writes 4 at +0x220; `kona_video_intr` (kona_video.o) writes 1 at +0x1838 on every
 * video interrupt; `kona_die` (kona_crash.o) reads it at +0x84 for KONA_HEALTH and writes 8 at
 * +0xc8; kpm `setup_dma` writes 1. Inferred: each bit is cleared by writing one to it, because the
 * watchdog writes back exactly the bit it tested. What sets DRAW, LOAD and STALL is not read
 * anywhere. */
#define KONA_HH_TBUS_STATUS                 0x3a8  /* register mask 0xf */
#define KONA_TBUS_DRAW_MASK                 0x00000001  /* shift 0 */
#define KONA_TBUS_LOAD_MASK                 0x00000002  /* shift 1 */
#define KONA_TBUS_ACTIVE_MASK               0x00000004  /* shift 2 */
#define KONA_TBUS_STALL_MASK                0x00000008  /* shift 3 */

/*
 * HH_TFIFO_HI at 0x8003b0 (4 bits), established: kpm 6.5.30m `hipReset` (0x10017204) writes 5
 * to it in its non-scan reset and `hipInspectionPreJtag` (0x10012834) reads it back for the dump.
 * What the level 5 governs: unknown: no shipped software or published source depends on it
 * beyond kpm restoring that value. Routes tried for the raster-bus FIFO level: the register
 * scan, which finds no site at 0x8003b0 in the kernel, libGLcore or the X module, and the 6.5.5
 * headers. */
#define KONA_HH_TFIFO_HI                    0x3b0  /* register mask 0xf */

/*
 * HH_VC_ADDRESS at 0x8003c0 (16 bits, fully read-write: irsaudit's register test passes mask
 * 0xffff), established: the address half of the indirect video-controller port; every display
 * access starts with a write here and the following HH_VC_DATA access moves the value. The kernel
 * writes 0x8800 and 0x0b00 in `kona_attach` (kona_edtinit_hip2.o, at +0x1108 and +0x1194), 0x80 in
 * `kona_swap_complete` (kona_video.o, at +0x27c) and 0x103 in `kona_enable_dac_cursor`; irsaudit
 * `vcWrite` (0x1014071c) and `vcRead` (0x10140bac) use it the same way, and kpm reads it back at
 * 0x10012f88. Inferred: the value is an address in the display board's local space, as devices/dg/README.md
 * decodes it. */
#define KONA_HH_VC_ADDRESS                  0x3c0  /* register mask 0xffff */

/*
 * HH_VC_FREADY at 0x8003c8 (1 bit), a kpm table entry. Established: kpm `hipInspectionPreJtag`
 * (0x10012834) reads it into its dump at 0x10012fac and prints the word raw; the ARM-side twin in
 * kpm's ARM table is HA_VCBUS_FREADY at 0x2000f0. When the bit is set is unknown, because no
 * shipped software or published source polls it before a display-bus access. Routes
 * tried: the kernel access list (software/kernel/registers.tsv; the display writes never poll it),
 * irsaudit's `vcWrite` and `vcRead` (no access to offset 968), arm1.s `DoDGRqstVCWrite` and
 * `DoDGRqstVCRead` (0x0c012200, 0x0c012250; they store and load through 0x600000 without polling a
 * ready bit), and the 6.5.5 headers. */
#define KONA_HH_VC_FREADY                   0x3c8  /* register mask 0x1 */

/*
 * HH_VC_DATA at 0x8003d0 (32 bits), established: the data half of the indirect video-controller
 * port. After a write to HH_VC_ADDRESS, one write here stores a value in that display register and
 * one read returns it. The kernel writes it after every address write (`kona_swap_complete` stores
 * the strobe value 2 at +0x294 in kona_video.o, `kona_video_intr` writes cursor words) and reads
 * it only in `kona_attach` (+0x111c and +0x11a4 in kona_edtinit_hip2.o) to learn the board
 * variant; irsaudit `vcWrite` writes it at 0x101407d4 and `vcRead` reads it at 0x10140c54. */
#define KONA_HH_VC_DATA                     0x3d0  /* register mask 0xffffffff */

/*
 * HH_VC_DATA_INCR at 0x8003d8 (32 bits), established: irsaudit `vcWriteIncr` (0x10140988) takes
 * only a data word and stores it here (call at 0x10140a1c), without writing HH_VC_ADDRESS first,
 * and `vcReadIncr` (0x10140d14) reads it at 0x10140d94. Inferred by analogy with HH_ARM_DATA_INCR,
 * whose address advance is established: each access acts like HH_VC_DATA and then steps the video-
 * controller address to the next register. The kernel and kpm never touch it. */
#define KONA_HH_VC_DATA_INCR                0x3d8  /* register mask 0xffffffff */

/*
 * HH_GFIFO_WAIT at 0x8003e0 (mask 0, trigger), 6.5.30m. Whether an access to it stalls is
 * unknown, as no shipped software or published source touches it; only kpm's register table
 * lists it. Routes tried for a waiter: the
 * kernel flow layer, which polls HH_GFIFO_LEVEL instead, kpm's dump list,
 * irsaudit, the firmware and the headers. */
#define KONA_HH_GFIFO_WAIT                  0x3e0  /* register mask 0x0 */

/*
 * HH_ARM_ADDRESS at 0x8003e8 (28 bits, word aligned: irsaudit's register test uses mask
 * 0x0ffffffc), established: the ARM address that the next HH_ARM_DATA or HH_ARM_DATA_INCR access
 * touches. irsaudit `PioWriteArm32` (0x10038444, write at 0x1003847c) and `load_arm_mem`
 * (0x100389c0, write at 0x10038a38) load it first, and kpm reads it at 0x10012fd0. */
#define KONA_HH_ARM_ADDRESS                 0x3e8  /* register mask 0xfffffff */
#define KONA_ARM_ADDRESS_ZERO_MASK          0x00000003  /* shift 0 */
#define KONA_ARM_ADDRESS_MASK               0x0ffffffc  /* shift 2 */

/*
 * HH_ARM_DATA at 0x8003f0 (32 bits), established: the data port of the host's ARM-memory window; a
 * write stores the word at the ARM address held in HH_ARM_ADDRESS and a read returns it, with
 * HH_ARM_CTRL bit 0 set. irsaudit `PioWriteArm32` writes it at 0x1003848c, `initialize_icu` loads
 * the token map through it; the address does
 * not advance after an access, which is why HH_ARM_DATA_INCR exists. */
#define KONA_HH_ARM_DATA                    0x3f0  /* register mask 0xffffffff */

/*
 * HH_ARM_DATA_INCR at 0x8003f8 (32 bits), established: irsaudit `load_arm_mem` writes the ARM
 * address once to HH_ARM_ADDRESS (at 0x10038a38) and then sends each successive word of a buffer
 * to this register in a loop (at 0x10038a64), and `PioReadArmIncr32` (0x10038500) reads
 * consecutive words the same way. Inferred: each access behaves like HH_ARM_DATA and then steps
 * the ARM address by four. */
#define KONA_HH_ARM_DATA_INCR               0x3f8  /* register mask 0xffffffff */

/* HIP2_HH_ADDR: address-bit layout of a register access */
#define KONA_HIP2_ADDR_REGCNT_ZERO_MASK     0x00000007  /* shift 0 */
#define KONA_HIP2_ADDR_REGCNT_MASK          0x000003f8  /* shift 3 */
#define KONA_HIP2_ADDR_USER_MASK            0x00010000  /* shift 16 */

#define KONA_HIP2_HH_GINTR_INFO             0x108  /* register mask 0x3ffff */
#define KONA_HIP2_GINTR_INFO_ZERO_MASK      0x0000ffff  /* shift 0 */
#define KONA_HIP2_GINTR_PRIV_MASK           0x00010000  /* shift 16 */
#define KONA_HIP2_GINTR_FORCE_MASK          0x00020000  /* shift 17 */

#define KONA_HIP2_HH_GFIFO_LEVEL            0x208  /* register mask 0x7ff */
#define KONA_HIP2_GFIFO_LEVEL_ZERO_MASK     0x00000001  /* shift 0 */
#define KONA_HIP2_GFIFO_LEVEL_MASK          0x000007fe  /* shift 1 */

#define KONA_HIP2_HH_INTR_INFO              0x220  /* register mask 0xffff */
#define KONA_HIP2_INTR_INFO_ZERO_MASK       0x00007fff  /* shift 0 */
#define KONA_HIP2_INTR_GLOBAL_EN_MASK       0x00008000  /* shift 15 */

#define KONA_HIP2_HH_INTR_ENABLE            0x230  /* register mask 0xfff */

#define KONA_HIP2_HH_INTR_STATUS            0x238  /* register mask 0xfff */
#define KONA_HIP2_INTR_BIT_FIFO_HI_MASK     0x00000001  /* shift 0 */
#define KONA_HIP2_INTR_BIT_FIFO_LO_MASK     0x00000002  /* shift 1 */
#define KONA_HIP2_INTR_BIT_FIFO_OV_MASK     0x00000004  /* shift 2 */
#define KONA_HIP2_INTR_BIT_VIDEO_MASK       0x00000008  /* shift 3 */
#define KONA_HIP2_INTR_BIT_ARM_MASK         0x00000010  /* shift 4 */
#define KONA_HIP2_INTR_BIT_GE_MASK          0x00000020  /* shift 5 */
#define KONA_HIP2_INTR_BIT_ODMA_MASK        0x00000040  /* shift 6 */
#define KONA_HIP2_INTR_BIT_UNUSED_MASK      0x00000080  /* shift 7 */
#define KONA_HIP2_INTR_BIT_PARITY_MASK      0x00000100  /* shift 8 */
#define KONA_HIP2_INTR_BIT_VOC_MASK         0x00000200  /* shift 9 */
#define KONA_HIP2_INTR_BIT_PIO_OV_MASK      0x00000400  /* shift 10 */
#define KONA_HIP2_INTR_BIT_IDMA_OV_MASK     0x00000800  /* shift 11 */

#define KONA_HIP2_HH_ODMA_POFF              0x268  /* register mask 0x1ffff */
/*
 * HIP2 output-DMA page offset: the byte offset in bits 0-11 and, above it,
 * the 0x9000 the kernel and the diagnostic map put in every low address
 * word. kpm names the matching input-DMA register's upper fields
 * (HIP2_HA_IDMA_POFF at ARM 0x200014): bits 12-13 PSIZE, bit 14 IOMEM, bit
 * 15 COHERENT, bit 16 GBR, so 0x9000 is COHERENT with page-size code 1, the
 * code every map-RAM entry carries for the 16 KB page. INFERRED: the output
 * register has the same layout, since it has the same 17-bit mask and
 * receives the same word (START_SELECTFEED's A_lo, devices/hip/README.md). kpm and the
 * kernel read it only in error dumps (kona_ge_intr).
 */

#define KONA_HIP2_HH_ODMA2_POFF             0x2a8  /* register mask 0x1ffff */
/* Second output-DMA channel's page offset: the same layout as HIP2_HH_ODMA_POFF above. */

/*
 * HIP2_HH_PIO_HI at 0x8002c8 (5 bits, field PIO_HI), HIP2 only. Unknown: no shipped
 * software or published source depends on it. By its name only (inferred) it is a high-water
 * mark of programmed-I/O requests: HIP2 has a PIO overflow interrupt, HH_INTR_STATUS bit 10.
 * Routes tried: kpm's table (name and mask), the kernel's `kona_edtinit_hip2.o`, `kona_mapram_hip2.o`
 * and `kona_intr_hip2.o` (no store to the offset), irsaudit, the firmware and the 6.5.5 headers. */
#define KONA_HIP2_HH_PIO_HI                 0x2c8  /* register mask 0x1f */
#define KONA_HIP2_PIO_HI_MASK               0x0000001f  /* shift 0 */

/*
 * HIP2_HH_IDMA_HI at 0x8003b8 (7 bits, field IDMA_HI), HIP2 only, 6.5.30m. The level its seven
 * bits set is unknown: no shipped software or published source programs or reads it. Routes tried for an input-DMA level: kpm's table
 * (name and seven-bit mask; its dump does not read it), irsaudit, the kernel's HIP2 objects,
 * the firmware and the headers. */
#define KONA_HIP2_HH_IDMA_HI                0x3b8  /* register mask 0x7f */
#define KONA_HIP2_IDMA_HI_ZERO_MASK         0x00000001  /* shift 0 */
#define KONA_HIP2_IDMA_HI_MASK              0x0000007e  /* shift 1 */

#define KONA_HIP2_HH_GV_ERR_STAT1           0x390  /* register mask 0xffffffff */
#define KONA_HIP2_GV_ERR_DATA_MASK          0xffffffff  /* shift 0 */

#define KONA_HIP2_HH_GV_ERR_STAT2           0x398  /* register mask 0x1ff */
#define KONA_HIP2_GV_ERR_DATAP_MASK         0x00000001  /* shift 0 */
#define KONA_HIP2_GV_ERR_CMD_MASK           0x0000000e  /* shift 1 */
#define KONA_HIP2_GV_ERR_CMDP_MASK          0x00000010  /* shift 4 */
#define KONA_HIP2_GV_ERR_WORD_MASK          0x00000020  /* shift 5 */
#define KONA_HIP2_GV_ERR_FIFO_OV_MASK       0x00000040  /* shift 6 */
#define KONA_HIP2_GV_ERR_PIO_OV_MASK        0x00000080  /* shift 7 */
#define KONA_HIP2_GV_ERR_IDMA_OV_MASK       0x00000100  /* shift 8 */

/*
 * HIP2_HH_GV_OVERLAP at 0x8003a0 (1 bit, OVERLAP_DISABLE), HIP2 boards only, established: kpm
 * `hipReset` (0x10017204) reads the register, ors in bit 0 and stores it back (at 0x1001728c to
 * 0x10017294) when it resets a second-generation pipe without boundary scan, and writes 5 to
 * HH_TFIFO_HI beside it. Inferred from the name: setting the bit stops the host interface from
 * overlapping crosstalk transactions. HIP1 has the corresponding bit at 0x380 and uses 0x3a0 for
 * HH_FCI_PIO_STATUS instead. */
#define KONA_HIP2_HH_GV_OVERLAP             0x3a0  /* register mask 0x1 */
#define KONA_HIP2_GV_OVERLAP_DISABLE_MASK   0x00000001  /* shift 0 */

/*
 * DMA, ESTABLISHED from the 6.5.30m kernel driver (kona_dma.o, devices/hip/README.md).
 *
 * The kernel starts every DMA by sending a command in the privileged
 * stream (kick sequence in kona_kern.h); the transfer itself is run by the
 * pipe. Addresses are PIPE-SPACE addresses, not host physical ones: the
 * kernel maps the host pages into a space the pipe sees through the map RAM
 * (below) and sends the result as the address pair of kona_kern.h,
 * (A >> 12, (A & 0xfff) | 0x9000). Page unit 16 KB (2^14), constant 14 from
 * kona_mapram_pagesizeshiftof.
 *
 * DO_IDMA (0x1eb), host memory to pipe, six payload words:
 *   A_hi, A_lo, len, llen, stride, flags
 * len/llen/stride are bytes as in the 6.5.5 kona_dmavec (llen == len for a
 * flat copy). flags is 256 when the caller waits for completion, else 0
 * (INFERRED role: request a completion event). The completion arrives as
 * the ARM event KONA_ARM_EV_IDMA through HH_ARM_MBOX.
 *
 * START_SELECTFEED (0x1f5), pipe to host memory, six payload words:
 *   A_hi, A_lo, len, llen, stride, snapshot
 * FINISH_SELECTFEED (0x1f6), two payload words: 256, rnid (the sending
 * context's slot index; the driver's message calls it "rnid").
 * The pipe answers with the GE event KONA_GE_EV_SELECTFEED carrying
 * (rnid, remaining bytes, status word); status bit 11 (0x800) is the
 * overflow flag the driver reports. INFERRED: the six words load the
 * HH_ODMA_* output-DMA registers (PNUM, POFF, LEN, LLEN, STRIDE, ...) from
 * the stream, since those names carry the same fields; the driver reads
 * them only in an error dump.
 *
 * DMAPOOL_SETUP (0x1ed), three payload words: A_hi, A_lo, pool length in
 * bytes. Base and length must both be multiples of 16 KB. */
#define KONA_DMA_PAGE_SHIFT           14
#define KONA_DMA_IDMA_WAIT            256
#define KONA_DMA_FINISH_FLAG          256
#define KONA_DMA_SELECTFEED_OVERFLOW  0x00000800

/*
 * Map RAM, ESTABLISHED (kona_mapram_hip2.o): an array of 32-bit entries at
 * XG-window offset 0x100000 + 4 * index, one per 16 KB page of pipe space.
 * kona_mapram_map writes, for each 16 KB piece of a host buffer, the word
 * 0x20000000 | ((phys >> 14) << 2). kona_mapram_init writes
 * 0x10000000 | index to every entry and reads each back; a mismatch kills
 * the pipe (reason 21). Number of entries: ((XG+0x64 bits 3-5) or 8) << 15
 * (devices/xg/README.md attach step 6). The pipe-space address of byte b of a buffer
 * starting at map index i is (i << 14) + (b & 0x3fff) for the first page.
 * INFERRED: 0x20000000 is a valid bit; the low two bits of the entry are
 * the low bits of the 4 KB frame number, which a 16 KB page leaves zero. */
#define KONA_MAPRAM_BASE              0x100000
#define KONA_MAPRAM_ENTRY_VALID       0x20000000
#define KONA_MAPRAM_INIT_PATTERN      0x10000000

/*
 * Interrupt masks and acknowledge, ESTABLISHED from the 6.5.30m kernel
 * driver (kona_setup.o, kona_intr_hip2.o, kona_flow.o; devices/hip/README.md).
 *
 * HH_INTR_ENABLE (0x230) is written with the driver's software mask:
 *   reset value     0x100 (PARITY only), written by KONAinitialize;
 *                   the handler ignores every interrupt while the mask is
 *                   exactly this value;
 *   running value   0xf7c, written by KONAstart: bits 2-6 and 8-11, i.e.
 *                   FIFO_OV, VIDEO, ARM, GE, ODMA, PARITY, VOC, PIO_OV,
 *                   IDMA_OV. FIFO_HI (bit 0) and UNUSED (bit 7) are never
 *                   enabled;
 *   FIFO_LO (bit 1) is or-ed in while a thread waits for the graphics FIFO
 *   to drain (kona_hiwater_intr) and cleared again by kona_lowater_intr.
 * HH_INTR_STATUS (0x238) is read to find the causes. INFERRED
 * write-one-to-clear: every handler writes the bits it served back to it
 * (the GE handler writes 0x20; the FIFO paths write 3; the main handler
 * writes its served set; reset writes 0xfff). HH_INTR_ACK (0x228, an
 * address-only register in the table) is written with 0xbadc0ffe after the
 * main handler and by KONAstart; INFERRED to re-arm the interrupt line.
 * HH_INTR_INFO (0x220) holds only the global enable, bit 15, on HIP2: the
 * driver writes 0x8000 at initialisation and clears it in kona_die.
 *
 * Flow control thresholds the driver writes: HH_GFIFO_HI (0x210) = 0x700
 * (kona_flow_init); the software wait threshold is 0x300 (768) against
 * HH_GFIFO_LEVEL (0x208). HH_GFIFO_LO is not written. */
#define KONA_INTR_ENABLE_RESET        0x100
#define KONA_INTR_ENABLE_RUNNING      0xf7c
#define KONA_INTR_ACK_VALUE           0xbadc0ffe
#define KONA_GFIFO_HI_INIT            0x700
#define KONA_GFIFO_WAIT_LEVEL         0x300

#endif /* KONA_HIP_H */
