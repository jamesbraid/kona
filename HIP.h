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
 *            field. Extracted to diags/kpm/hip_registers.tsv. Names carry a
 *            HIP1_ or HIP2_ prefix where the two host-interface chip
 *            generations differ; HH_ names are common to both.
 *   kernel   IRIX 6.5.30m kona.a, disassembled under kona_kernel/disasm/.
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
 * "saved hh_tbus_status", the two registers kona_die reads.
 */
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
 * ESTABLISHED (kpm 6.5.30m, its ARM-side table, ucode/arm1_registers.tsv):
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
 * it), kpm's tables and dump code and the 6.5.5 kona*.h headers. An emulator may treat

 * FORCE like PRIV.
 *


 * client registers, XG_FC_CLIENT_REGS, beside the plain view at 0x800000 and
 * the graphics FIFO view at 0xc10000 (XG.h, docs/xg.md). INFERRED: the kernel writes the kick

 * through the flow-controlled view so that it reaches the host interface in
 * order with the command words it writes through 0xc10000; every other
 * kernel access uses 0x800000. Bits 3-9 of a 0xc00000 address still select
 * the register, so an emulator can decode 0xc00000 + offset as the register
 * at 0x800000 + offset.
 */
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
 * docs/xg.md) it is the error lower-address register. kpm only prints it.
 *
 * Return data, ESTABLISHED for 6.5.5: the 16 KB area starts with a valid
 * word and a count word, then data, and ends with an instrumentation
 * overflow word and a pad word.
 */
#define KONA_MAP_FIFO_OFFSET          0x0000
#define KONA_MAP_REGS_OFFSET          0x4000
#define KONA_MAP_RDATA_OFFSET         0x8000
#define KONA_MAP_XG_OFFSET            0xc000

/*
 * Event codes the pipe reports to the kernel, ESTABLISHED for 6.5.5
 * (kona_if.h). The geometry engine writes them to a communication area
 * (the page HP_PIPE_SETUP names, kona_kern.h); the ARM-named processor
 * passes them through HH_ARM_MBOX. Values below 0x100 are reserved for
 * microcode primitives; 0 is a print request.
 */
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

#define KONA_HIP1_HH_GFIFO                  0x000  /* register mask 0xffffffff */

/*
 * HH_SWITCH at 0x800100 (mask 0x1ff), 6.5.30m. Unknown: no shipped software or published
 * source depends on it. The register is a kpm table entry with no field names, and nothing
 * else in the shipped software names or reaches it, so its effect cannot be read.
 * Routes tried: the kernel's register accesses (kona_kernel/registers.tsv), kpm's dump
 * list (`hipInspectionPreJtag`, 0x10012834), the strings of `irsaudit`
 * and of `ireeprom` and `gfxinfo`,
 * the 6.5.5 kona headers; none has one. */ PROM driver; none touches it.
 */
#define KONA_HH_SWITCH                      0x100  /* register mask 0x1ff */

#define KONA_HIP1_HH_GINTR_INFO             0x108  /* register mask 0x77fff */
#define KONA_HIP1_GINTR_VECTOR_MASK         0x000000ff  /* shift 0 */
#define KONA_HIP1_GINTR_CPUID_MASK          0x00007f00  /* shift 8 */
#define KONA_HIP1_GINTR_PRIV_MASK           0x00010000  /* shift 16 */
#define KONA_HIP1_GINTR_FORCE_MASK          0x00020000  /* shift 17 */
#define KONA_HIP1_GINTR_WGORDER_MASK        0x00040000  /* shift 18 */

/*
 * HH_NOP at 0x8001f8 (mask 0), 6.5.30m. Unknown: no shipped software or published
 * source depends on it. It is a kpm table entry whose zero mask says it holds no data;
 * by its name only (inferred) an access to it does nothing.
 * Routes tried: the kernel's register accesses (kona_kernel/registers.tsv), kpm's dump
 * list (`hipInspectionPreJtag`, 0x10012834), the strings of `irsaudit`
 * and of `ireeprom` and `gfxinfo`,
 * the 6.5.5 kona headers; none has one. */ PROM driver; none touches it.
 */
#define KONA_HH_NOP                         0x1f8  /* register mask 0x0 */

/*
 * HH_RTC at 0x800200 (32 bits), established: irsaudit 6.5.30m `probe_hip_clock_speed` (0x1004cd0c)
 * zeroes the counter by writing the ARM address 0x2000b0, sleeps a measured time and reads this
 * register to compute the host-interface clock rate (accepted 20-60 MHz). The register is
 * therefore a free-running counter that ticks at that clock and reads the same as the ARM's own copy.
 */
#define KONA_HH_RTC                         0x200  /* register mask 0xffffffff */
/*
 * HH_RTC: the host's view of the free-running counter the ARM reads at
 * 0x2000b0. Established (irsaudit 6.5.30m, probe_hip_clock_speed 0x1004cd0c):
 * the diagnostic grants host access to ARM space (HH_ARM_CTRL = 1), writes 0
 * to ARM address 0x2000b0 through HH_ARM_ADDRESS/HH_ARM_DATA, sleeps, reads
 * HH_RTC and divides the count by the elapsed wall time in microseconds. It
 * accepts 20-60 MHz and flags a rate under 45 MHz as "too slow, DO NOT SHIP".
 * So the counter can be written from ARM space, reads the same value at both
 * addresses, and counts at the host-interface clock, nominally 45-60 MHz.
 * The exact nominal frequency is unknown: no shipped software states it.
 */

#define KONA_HIP1_HH_GFIFO_LEVEL            0x208  /* register mask 0xfff */
/*
 * GFIFO_LEVEL: ESTABLISHED (kpm 6.5.30m hipInspectionPreJtag 0x10012834 and
 * show_overview_section 0x1000dc90): kpm takes the level, HH_GFIFO_HI and
 * HH_GFIFO_LO as (raw >> 1) & 0x3ff on HIP2 and (raw >> 1) & 0x7ff on HIP1
 * and prints them as "GFX fifo level", HWM and LWM; analyze_hip reports a
 * nonzero level as "Gfx FIFO not empty" or "backed up".
 * textport waits for the masked level to read 0 before each request.
 * INFERRED: one level unit is one 32-bit word (irsaudit: two words reach a
 * HI field of 2), so HIP1 holds 2048 words (it overflows on the 2051st) and
 * HIP2's 10-bit field counts at most 1023. The kernel's HI of 0x700 raw
 * (field 896) and its software wait level of 0x300 raw (field 384) fit
 * under that. HIP2's exact depth, and whether the HIP2 log's "#requests" is
 * a second unit, are UNKNOWN: no shipped software or published source
 * depends on them; every user keeps the level far below the field's top.
 * Routes tried: the kernel's flow control, irsaudit TEST_intr (its overflow
 * test is skipped on HIP2 boards), kpm's dump and overview, the 6.5.5
 * kona_diag.h flow-control notes (they describe the XG credit FIFO, not
 * An emulator may give HIP2 1024 words.
 */
#define KONA_HIP1_GFIFO_LEVEL_ZERO_MASK     0x00000001  /* shift 0 */
#define KONA_HIP1_GFIFO_LEVEL_MASK          0x00000ffe  /* shift 1 */

#define KONA_HH_GFIFO_HI                    0x210  /* register mask 0x7ff */
#define KONA_GFIFO_HI_ZERO_MASK             0x00000001  /* shift 0 */
#define KONA_GFIFO_HI_MASK                  0x000007fe  /* shift 1 */

#define KONA_HH_GFIFO_LO                    0x218  /* register mask 0x7ff */
/*
 * GFIFO_HI/GFIFO_LO: established (irsaudit TEST_intr 0x10079858, register
 * test table 0x10200c00): writable mask 0x7fe, the field in bits 1-10 like
 * the level register. FIFO_HI sets when the level is at or above HI (two
 * words reach a HI field of 2 on HILO boards); FIFO_LO sets when it is at
 * or below LO (an empty FIFO raises it). Inferred: the level counts 32-bit
 * words. The diagnostic's working values are HI = 256, LO = 0 (raw); the
 * kernel writes HI = 0x700. HIP1's FIFO holds fewer than 2051 words.
 */
#define KONA_GFIFO_LO_ZERO_MASK             0x00000001  /* shift 0 */
#define KONA_GFIFO_LO_MASK                  0x000007fe  /* shift 1 */

#define KONA_HIP1_HH_INTR_INFO              0x220  /* register mask 0xffff */
#define KONA_HIP1_INTR_VECTOR_MASK          0x000000ff  /* shift 0 */
#define KONA_HIP1_INTR_CPUID_MASK           0x00007f00  /* shift 8 */
#define KONA_HIP1_INTR_GLOBAL_EN_MASK       0x00008000  /* shift 15 */

/*
 * HH_INTR_ACK at 0x800228 (mask 0, write-only), established in the 6.5.30m kernel:
 * `kona_intr_handler` (kona_intr_hip2.o) writes 0xbadc0ffe to it after serving the status bits
 * and `KONAstart` (kona_setup.o) writes the same value once; irsaudit writes 0. The register holds no
 * data, so (inferred) any write is an end-of-interrupt strobe that re-arms the interrupt line.
 */
#define KONA_HH_INTR_ACK                    0x228  /* register mask 0x0 */
/*
 * INTR_ACK: written only after a write-back to INTR_STATUS, with 0 by
 * irsaudit and 0xbadc0ffe by the kernel. Inferred: an end-of-interrupt
 * strobe whose data is ignored; clearing status does not need it (irsaudit
 * TEST_intr clears the ARM bit without it).
 */

/*
 * HIP1_HH_INTR_ENABLE and HIP2_HH_INTR_ENABLE at 0x800230 (ten or twelve bits wide), established
 * in the 6.5.30m kernel: the interrupt-source mask, one bit per HH_INTR_STATUS bit.
 * `KONAinitialize` writes 0x100 and `KONAstart` writes 0xf7c (kona_setup.o).
 * `kona_hiwater_intr` sets FIFO_LO (bit 1), `kona_lowater_intr` clears it (kona_flow.o); `kona_diag_flow` clears or sets bits 0-2 for a
 * diagnostic. A source whose bit is clear is not delivered to the CPU. HIP2 adds bits 10-11.
 */
#define KONA_HIP1_HH_INTR_ENABLE            0x230  /* register mask 0x3ff */

/*
 * HIP1_HH_INTR_STATUS and HIP2_HH_INTR_STATUS at 0x800238 (ten or twelve bits wide), established in
 * the 6.5.30m kernel: the pending-interrupt bits, set whether or not the enable mask has
 * them. `kona_intr_handler` (kona_intr_hip2.o) reads it, masks it with the enable word and serves
 * each bit, and the handlers, `kona_reset_adaptor` and `kona_hiwater_intr` write set bits back to
 * clear them (write one to clear, inferred from the written values 0x20, 3 and 0xfff).
 */
#define KONA_HIP1_HH_INTR_STATUS            0x238  /* register mask 0x3ff */
/*
 * INTR_STATUS: write one to clear (irsaudit TEST_intr, TEST_mbox). The bits
 * set whether or not INTR_ENABLE has them. ARM (bit 4) is raised by any
 * ARM write to its doorbell 0x200094 and clearing it here clears the
 * doorbell. docs/hip.md has the condition behind each bit as the
 * diagnostic raises it.
 */
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
 * (docs/hip.md) are UNKNOWN: no shipped software or published source
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

#define KONA_HH_ARM_MBOX                    0x240  /* register mask 0xffffffff */

/*
 * HH_SEQID at 0x800248 (32 bits, read-only), established: `kona_video_intr` (kona_video.o)
 * reads it on each video interrupt and completes every queued retrace record whose sequence
 * number is not greater than it (docs/dg.md). Inferred: the pipe copies there the number
 * the RETRACE_SEQID token wrote behind the drawing that came before it (DG.h).
 */
#define KONA_HH_SEQID                       0x248  /* register mask 0xffffffff */

/*
 * HH_ODMA_CHANNEL at 0x800250 (1 bits), established as a kpm table entry; read in the dump by
 * kpm 6.5.30m `hipInspectionPreJtag` (0x10012834). Inferred: it selects the output-DMA channel
 * (0 primary, 1 secondary); the firmware sets raster-bus index 0x440, which docs/rm.md pairs
 * with it, to 1 before a read-back through the second channel (`start_rdata`, 0x0c0224d4).
 */
#define KONA_HH_ODMA_CHANNEL                0x250  /* register mask 0x1 */

/*
 * HH_PACK_MODE at 0x800258 (7 bits), established as a kpm table entry; read in the dump by
 * kpm 6.5.30m `hipInspectionPreJtag` (0x10012834). Inferred: it holds the pixel packing mode
 * of output DMA; the firmware's `__glkonSetupPacker` (0x0c028d20) writes a 7-bit value to
 * the paired raster-bus index 0x441, built from four small fields (docs/rm.md).
 */
#define KONA_HH_PACK_MODE                   0x258  /* register mask 0x7f */

/*
 * HH_ODMA_PNUM at 0x800260 (29 bits), established in the 6.5.30m kernel:
 * the page number of the primary output-DMA destination. `kona_ge_intr` (kona_intr.o) reads it
 * only to print it in the dump for a spurious engine event; the firmware loads the paired
 * raster-bus index 0x450 from the A_hi word of START_SELECTFEED (`arm_start_selectfeed`, 0x0c022a50).
 */
#define KONA_HH_ODMA_PNUM                   0x260  /* register mask 0x1fffffff */

/*
 * HIP1_HH_ODMA_POFF and HIP2_HH_ODMA_POFF at 0x800268 (twelve or seventeen bits wide), established
 * in the 6.5.30m kernel: the offset in the destination page of primary
 * output DMA, with the attribute bits above it on HIP2. `kona_ge_intr` (kona_intr.o) reads
 * it for the spurious-event dump; the firmware loads the paired index 0x451 from the A_lo word.
 */
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
 * HH_ODMA_LLEN.
 */
#define KONA_HH_ODMA_LEN                    0x270  /* register mask 0xffffffff */

/*
 * HH_ODMA_TOTAL at 0x800278 (32 bits), established: `kona_ge_intr` (kona_intr.o) reads it
 * for its spurious-event dump, and kpm (`wait_for_dma_completion`, 0x1001f7c0) and irsaudit
 * (`wait_for_odma`, 0x10037c68) poll it until it reads 0. Inferred: it counts the bytes
 * of the whole transfer still to be written to host memory, so 0 means the transfer is done.
 */
#define KONA_HH_ODMA_TOTAL                  0x278  /* register mask 0xffffffff */

/*
 * HH_ODMA_OVER at 0x800280 (12 bits), established as a kpm 6.5.30m table entry; kpm clears the
 * secondary copy before programming a transfer and the firmware clears this one when a
 * select-feedback starts (docs/hip.md). Inferred: it records overflow of the output DMA, with
 * bit 11 the overflow flag of the select-feedback status word.
 */
#define KONA_HH_ODMA_OVER                   0x280  /* register mask 0xfff */

/*
 * HH_ODMA_LLEN at 0x800288 (32 bits), primary channel only, established as a kpm 6.5.30m table entry;
 * the firmware's `arm_start_selectfeed` (0x0c022a50) writes the line length to the paired
 * raster-bus index 0x452 and 0x455. Inferred: it is the line length the length counter
 * reloads at the start of each line.
 */
#define KONA_HH_ODMA_LLEN                   0x288  /* register mask 0xffffffff */

/*
 * HH_ODMA_STRIDE at 0x800290 (32 bits), primary channel only, established: irsaudit 6.5.30m
 * `TEST_ge_hip` (0x1006f0f4) writes a pattern to the paired raster-bus index and reads it
 * back here, and `arm_start_selectfeed` (0x0c022a50) writes the `stride` payload word to it.
 * Inferred: it is the distance between the starts of successive lines of the destination.
 */
#define KONA_HH_ODMA_STRIDE                 0x290  /* register mask 0xffffffff */

#define KONA_HH_ODMA_FLUSH                  0x298  /* register mask 0x0 */

/*
 * HH_ODMA2_PNUM at 0x8002a0 (29 bits), established: the page number of the destination
 * of the secondary output-DMA channel, which kpm 6.5.30m drives through the host registers to
 * pull pipe state into a host buffer (`setup_dma`, 0x1001f76c). `kona_ge_intr` reads it only
 * for the spurious-event dump.
 */
#define KONA_HH_ODMA2_PNUM                  0x2a0  /* register mask 0x1fffffff */

/*
 * HIP1_HH_ODMA2_POFF and HIP2_HH_ODMA2_POFF at 0x8002a8 (twelve or seventeen bits wide), established
 * in the 6.5.30m kernel: the in-page offset of the secondary output-DMA
 * destination, with attribute bits above it on HIP2. `kona_ge_intr` reads it for the
 * spurious-event dump (kona_intr.o); kpm's `setup_dma` (0x1001f76c) writes it.
 */
#define KONA_HIP1_HH_ODMA2_POFF             0x2a8  /* register mask 0xfff */
/* HIP1 second-channel page offset: 12 bits, as HIP1_HH_ODMA_POFF. */

/*
 * HH_ODMA2_LEN at 0x8002b0 (32 bits), established: kpm 6.5.30m `setup_dma` (0x1001f76c)
 * writes the whole transfer length to it and to HH_ODMA2_TOTAL before starting a pull of pipe
 * state, in bytes: `ge11ReadDiagRegisters` (0x1001e748) passes 64 to pull sixteen 4-byte
 * registers. Inferred: it is the secondary channel's line counter, which for kpm's one-line
 * pulls equals the total.
 */
#define KONA_HH_ODMA2_LEN                   0x2b0  /* register mask 0xffffffff */

/*
 * HH_ODMA2_TOTAL at 0x8002b8 (32 bits), established: kpm 6.5.30m `setup_dma` (0x1001f76c)
 * loads the transfer length, `wait_for_dma_completion` (0x1001f7c0) polls it for 0, and
 * irsaudit TEST_odma polls it the same way. `kona_ge_intr` reads it for its dump.
 * Inferred: it counts down the bytes still to be written by the secondary channel.
 */
#define KONA_HH_ODMA2_TOTAL                 0x2b8  /* register mask 0xffffffff */

/*
 * HH_ODMA2_OVER at 0x8002c0 (12 bits), established: kpm 6.5.30m `setup_dma` (0x1001f76c)
 * clears it before programming the secondary channel. Inferred: it records overflow of that
 * channel's output DMA.
 */
#define KONA_HH_ODMA2_OVER                  0x2c0  /* register mask 0xfff */

#define KONA_HH_RESET                       0x300  /* register mask 0x3 */
/*
 * bit 1 lets the ARM run. The PROM starts a pipe that does not answer by
 * writing HH_INTR_INFO = 0, then HH_RESET = 3, reading HH_RESET back, then
 * HH_RESET = 2 and waiting: the ARM leaves reset with the EEPROM remapped
 * and boots from it. To read the EEPROM's boot header it writes 1, reads
 * back, writes 0 and waits (the ARM stays stopped), sets HH_ARM_CTRL bit 0,
 * clears the ARM's HA_REMAP_EPROM (0x2000bc) and reads the header at ARM
 * address 0x800000 through HH_ARM_ADDRESS/HH_ARM_DATA. The kernel's pulse
 * is in docs/xg.md. What the reset does to the token map, the FIFOs and the
 * counters is UNKNOWN: no shipped software or published source depends on
 * it: the firmware rebuilds the map and every table on each start, the
 * kernel rewrites the registers it needs after the pulse, and irsaudit and
 * kpm check nothing afterwards. Routes tried: the kernel pulse sites,
 * irsaudit's reset ioctl, kpm's hipReset (boundary-scan RESET or the
 * overlap-disable bit, never HH_RESET), the firmware start-up, the 6.5.5
 * headers; none has one. */ PROM above.
 */
#define KONA_HIP_RESET_MASK                 0x00000001  /* shift 0 */
#define KONA_ARM_START_MASK                 0x00000002  /* shift 1 */

#define KONA_HH_ARM_CTRL                    0x308  /* register mask 0x3 */
#define KONA_ARM_CTRL_HOST_ACCESS_MASK      0x00000001  /* shift 0 */
#define KONA_HOST_ARM_CACHE_DISABLE_MASK    0x00000002  /* shift 1 */

/*
 * HH_ARM_STATUS at 0x800310 (16 bits), established: kpm 6.5.30m `hipInspectionPreJtag`
 * (0x10012834) reads it and `analyze_hip` (0x100173a0) tests its NOPC bit (bit 10), adding
 * "(Opcode fetch)" to a stalled-address report. The fields STALL, REMAP, GE_CNT, MREQ, SEQ, NRW,
 * NBW, ABORT, NOPC and MODE report the ARM processor's stall, boot remap and bus-cycle state.
 */
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
 * HH_ARM_STALL at 0x800320 (mask 0, trigger). Unknown: no shipped software or published
 * source depends on it. It is named in kpm's table beside HH_ARM_UNSTALL and HH_ARM_STEP, and
 * the three are inferred from their names to halt, resume and single-step the ARM. Routes tried:
 * the kernel, kpm's dump list (it reads status, not these), irsaudit, ireeprom, the firmware
 * (which cannot see its own debug window), the 6.5.5 headers.
 */
#define KONA_HH_ARM_STALL                   0x320  /* register mask 0x0 */

/*
 * HH_ARM_UNSTALL at 0x800328 (mask 0, trigger), 6.5.30m. Unknown: no shipped software or published
 * source depends on it. Inferred from its name only: a write lets a stalled ARM run again.
 * Routes tried: the same as HH_ARM_STALL, none of which touches it.
 */
#define KONA_HH_ARM_UNSTALL                 0x328  /* register mask 0x0 */

/*
 * HH_ARM_STEP at 0x800330 (mask 0, trigger), 6.5.30m. Unknown: no shipped software or published
 * source depends on it. Inferred from its name only: a write lets a stalled ARM execute one
 * bus cycle. Routes tried: the same as HH_ARM_STALL, none of which touches it.
 */
#define KONA_HH_ARM_STEP                    0x330  /* register mask 0x0 */

/*
 * HH_ARM_CURR_ADDR at 0x800338 (32 bits), established: kpm 6.5.30m `hipInspectionPreJtag`
 * (0x10012834) reads it and `analyze_hip` (0x100173a0) takes it as the ARM address of the bus
 * cycle the stalled processor waits on, comparing it with the command, data and distributor
 * port addresses to say what the ARM is waiting for.
 */
#define KONA_HH_ARM_CURR_ADDR               0x338  /* register mask 0xffffffff */

/*
 * HH_CURR_DATA_FM_ARM at 0x800340 (32 bits), established as read by kpm 6.5.30m
 * `hipInspectionPreJtag` (0x10012834) into its dump, which `show_hip_host_registers_section`
 * (0x1001545c) prints raw; `analyze_hip` uses HH_ARM_CURR_ADDR but not this word. Inferred from
 * the name: it holds the data word the ARM drives on its bus in the current cycle. Which cycle it
 * latches and when it updates is unknown: no shipped software or published source depends on it.
 * Routes tried: kpm's dump, display and analysis code, the kernel's register accesses
 * (kona_kernel/registers.tsv has none), the firmware and the 6.5.5 headers.
 */
#define KONA_HH_CURR_DATA_FM_ARM            0x340  /* register mask 0xffffffff */

/*
 * HH_CURR_DATA_TO_ARM at 0x800348 (32 bits), established as read by kpm 6.5.30m
 * `hipInspectionPreJtag` (0x10012834) into its dump, which `show_hip_host_registers_section`
 * (0x1001545c) prints raw. Inferred from the name: it holds the data word presented to the ARM in
 * the current cycle. Which cycle it latches is unknown: no shipped software or published source
 * depends on it; routes tried as for HH_CURR_DATA_FM_ARM.
 */
#define KONA_HH_CURR_DATA_TO_ARM            0x348  /* register mask 0xffffffff */

/*
 * HH_JTAG_DATA at 0x800350 (32 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) write it to start a shift and read it for the bits shifted out.
 * Its self-test writes 0x99799999 and expects the complement 0x66866666 back for a 32-bit shift.
 */
#define KONA_HH_JTAG_DATA                   0x350  /* register mask 0xffffffff */

/*
 * HH_JTAG_TMS at 0x800358 (6 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) write the test-mode-select bits here before writing
 * HH_JTAG_DATA: 31 before a reset shift, 18 before a data shift and 3 between tests.
 */
#define KONA_HH_JTAG_TMS                    0x358  /* register mask 0x3f */

/*
 * HH_JTAG_CTRL at 0x800360 (11 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) write the chain number shifted left by 5 (bits 5-10) to
 * select a board's scan chain; bits 0-4 are the shift length, where its self-test writes
 * 0x501, 0x505 and 0x500 for its three test shifts.
 */
#define KONA_HH_JTAG_CTRL                   0x360  /* register mask 0x7ff */

/*
 * HH_JTAG_STATUS at 0x800368 (1 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) poll bit 0 until it clears after each shift and give up with
 * "JTAG stall timeout" after 1000 polls, so (inferred) bit 0 is the controller busy flag.
 */
#define KONA_HH_JTAG_STATUS                 0x368  /* register mask 0x1 */

/*
 * HH_JTAG_ACCESS at 0x800370 (1 bits), established: kpm 6.5.30m's host boundary-scan routines
 * (code at 0x10010284-0x10010aa0) write 1 to bit 0 (HOST) before the first chain select, which
 * (inferred from the name) hands the scan controller from the ARM's bit-bang port to the host.
 */
#define KONA_HH_JTAG_ACCESS                 0x370  /* register mask 0x1 */
#define KONA_JTAG_ACCESS_HOST_MASK          0x00000001  /* shift 0 */

/*
 * HH_JTAG_RESET at 0x800378 (mask 0, trigger). Unknown: no shipped software or published
 * source depends on it beyond its name. kpm 6.5.30m `hipInspectionPreJtag` (0x10012834) reads
 * it; inferred from the name that a write resets the scan controller. Routes tried: kpm's
 * `jt_hard_reset` (not traced to a write of the offset), irsaudit, the kernel and the firmware.
 */
#define KONA_HH_JTAG_RESET                  0x378  /* register mask 0x0 */

/*
 * HIP1_HH_FCI_OVERLAP at 0x800380 (7 bits), HIP1 only, established: kpm 6.5.30m `hipReset`
 * (0x10017204) sets the OVERLAP_DISABLE field (bit 0) to disable overlapped crosstalk transactions
 * as an alternative to a boundary-scan reset (the HIP2 counterpart is HIP2_HH_GV_OVERLAP). Bits 1-6
 * are the DMA_INTL field; no shipped software states what they select.
 */
#define KONA_HIP1_HH_FCI_OVERLAP            0x380  /* register mask 0x7f */
#define KONA_HIP1_FCI_OVERLAP_DISABLE_MASK  0x00000001  /* shift 0 */
#define KONA_HIP1_FCI_DMA_INTL_MASK         0x0000007e  /* shift 1 */

/*
 * HIP1_HH_FCI_LOOPBACK at 0x800388 (16 bits), HIP1 only. Unknown: no shipped software or
 * published source depends on it. kpm 6.5.30m `hipInspectionPreJtag` (0x10012834) reads it into
 * its dump; inferred from the name that it is a loopback control of the first-generation
 * crosstalk interface. Routes tried: kpm's table (name and mask), irsaudit, the kernel, the
 * firmware and the 6.5.5 headers.
 */
#define KONA_HIP1_HH_FCI_LOOPBACK           0x388  /* register mask 0xffff */

/*
 * HIP1_HH_FCI_ERR_STAT1 and HIP2_HH_GV_ERR_STAT1 at 0x800390 (32 bits), established:
 * `kona_reset_adaptor` (kona_edtinit_hip2.o) writes it during a pipe reset, and kpm 6.5.30m
 * `hipInspectionPreJtag` (0x10012834) reads it. Inferred from the table's single 32-bit DATA field:
 * it latches the data word of the first failed command, with the register at 0x800398 holding the
 * command and the counters.
 */
#define KONA_HIP1_HH_FCI_ERR_STAT1          0x390  /* register mask 0xffffffff */
#define KONA_HIP1_FCI_ERR_DATA_MASK         0xffffffff  /* shift 0 */

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
 * size of the last programmed-I/O access, including its USER bit (bit 11).
 */
#define KONA_HIP1_HH_FCI_PIO_STATUS         0x3a0  /* register mask 0x7fffff */
#define KONA_HIP1_PIO_REGCNT_ZERO_MASK      0x00000007  /* shift 0 */
#define KONA_HIP1_PIO_REGCNT_MASK           0x000003f8  /* shift 3 */
#define KONA_HIP1_PIO_NOTF_MASK             0x00000400  /* shift 10 */
#define KONA_HIP1_PIO_USER_MASK             0x00000800  /* shift 11 */
#define KONA_HIP1_PIO_CPUV_MASK             0x00001000  /* shift 12 */
#define KONA_HIP1_PIO_CPUID_MASK            0x000fe000  /* shift 13 */
#define KONA_HIP1_PIO_SIZE_MASK             0x00700000  /* shift 20 */

#define KONA_HH_TBUS_STATUS                 0x3a8  /* register mask 0xf */
#define KONA_TBUS_DRAW_MASK                 0x00000001  /* shift 0 */
#define KONA_TBUS_LOAD_MASK                 0x00000002  /* shift 1 */
#define KONA_TBUS_ACTIVE_MASK               0x00000004  /* shift 2 */
#define KONA_TBUS_STALL_MASK                0x00000008  /* shift 3 */

/*
 * HH_TFIFO_HI at 0x8003b0 (4 bits), established: kpm 6.5.30m `hipReset` (0x10017204) writes 5
 * to it in its non-scan reset and `hipInspectionPreJtag` (0x10012834) reads it. Inferred from
 * the name: it is the high-water mark of the raster-bus (T-bus) FIFO.
 */
#define KONA_HH_TFIFO_HI                    0x3b0  /* register mask 0xf */

#define KONA_HH_VC_ADDRESS                  0x3c0  /* register mask 0xffff */

#define KONA_HH_VC_FREADY                   0x3c8  /* register mask 0x1 */

#define KONA_HH_VC_DATA                     0x3d0  /* register mask 0xffffffff */

#define KONA_HH_VC_DATA_INCR                0x3d8  /* register mask 0xffffffff */

/*
 * HH_GFIFO_WAIT at 0x8003e0 (mask 0, trigger), 6.5.30m. Unknown: no shipped software or published
 * source depends on it. It is a kpm table entry only; inferred from its name that a read waits
 * until the graphics FIFO has room. Routes tried: the kernel flow layer (it polls
 * HH_GFIFO_LEVEL instead), kpm's dump list, irsaudit, the firmware and the headers.
 */
#define KONA_HH_GFIFO_WAIT                  0x3e0  /* register mask 0x0 */

#define KONA_HH_ARM_ADDRESS                 0x3e8  /* register mask 0xfffffff */
#define KONA_ARM_ADDRESS_ZERO_MASK          0x00000003  /* shift 0 */
#define KONA_ARM_ADDRESS_MASK               0x0ffffffc  /* shift 2 */

#define KONA_HH_ARM_DATA                    0x3f0  /* register mask 0xffffffff */

#define KONA_HH_ARM_DATA_INCR               0x3f8  /* register mask 0xffffffff */
/*
 * ARM_DATA_INCR: established (irsaudit initialize_icu, icuSanity,
 * load_arm_mem): reads and writes ARM memory at HH_ARM_ADDRESS like
 * ARM_DATA; the loops write the address once and then use only this
 * register, so (inferred) each access steps the address by 4. ARM_CTRL
 * bit 0 (HOST_ACCESS) is set around every such use.
 */

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
 * receives the same word (START_SELECTFEED's A_lo, docs/hip.md). kpm and the
 * kernel read it only in error dumps (kona_ge_intr).
 */

#define KONA_HIP2_HH_ODMA2_POFF             0x2a8  /* register mask 0x1ffff */
/* Second output-DMA channel's page offset: the same layout as HIP2_HH_ODMA_POFF above. */

/*
 * HIP2_HH_PIO_HI at 0x8002c8 (5 bits, field PIO_HI), HIP2 only. Unknown: no shipped
 * software or published source depends on it. By its name only (inferred) it is a high-water
 * mark of programmed-I/O requests: HIP2 has a PIO overflow interrupt, HH_INTR_STATUS bit 10.
 * Routes tried: kpm's table (name and mask), the kernel's `kona_edtinit_hip2.o`, `kona_mapram_hip2.o`
 * and `kona_intr_hip2.o` (no store to the offset), irsaudit, the firmware and the 6.5.5 headers.
 */
#define KONA_HIP2_HH_PIO_HI                 0x2c8  /* register mask 0x1f */
#define KONA_HIP2_PIO_HI_MASK               0x0000001f  /* shift 0 */

/*
 * HIP2_HH_IDMA_HI at 0x8003b8 (7 bits, field IDMA_HI), HIP2 only, 6.5.30m. Unknown: no shipped
 * software or published source depends on it. Inferred from the name and from the IDMA_OV
 * interrupt bit: a high-water mark of the input-DMA queue. Routes tried: kpm's table (name and
 * mask; its dump does not read it), irsaudit, the kernel's HIP2 objects, the firmware and the headers.
 */
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

#define KONA_HIP2_HH_GV_OVERLAP             0x3a0  /* register mask 0x1 */
#define KONA_HIP2_GV_OVERLAP_DISABLE_MASK   0x00000001  /* shift 0 */

/*
 * DMA, ESTABLISHED from the 6.5.30m kernel driver (kona_dma.o, docs/hip.md).
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
 * bytes. Base and length must both be multiples of 16 KB.
 */
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
 * (docs/xg.md attach step 6). The pipe-space address of byte b of a buffer
 * starting at map index i is (i << 14) + (b & 0x3fff) for the first page.
 * INFERRED: 0x20000000 is a valid bit; the low two bits of the entry are
 * the low bits of the 4 KB frame number, which a 16 KB page leaves zero.
 */
#define KONA_MAPRAM_BASE              0x100000
#define KONA_MAPRAM_ENTRY_VALID       0x20000000
#define KONA_MAPRAM_INIT_PATTERN      0x10000000

/*
 * Interrupt masks and acknowledge, ESTABLISHED from the 6.5.30m kernel
 * driver (kona_setup.o, kona_intr_hip2.o, kona_flow.o; docs/hip.md).
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
 * HH_GFIFO_LEVEL (0x208). HH_GFIFO_LO is not written.
 */
#define KONA_INTR_ENABLE_RESET        0x100
#define KONA_INTR_ENABLE_RUNNING      0xf7c
#define KONA_INTR_ACK_VALUE           0xbadc0ffe
#define KONA_GFIFO_HI_INIT            0x700
#define KONA_GFIFO_WAIT_LEVEL         0x300

#endif /* KONA_HIP_H */
