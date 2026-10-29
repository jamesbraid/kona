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
 * INFERRED: PRIV marks the FIFO words that follow as privileged kernel
 * commands, and FORCE makes the host interface accept them ahead of the
 * user stream's own state. Why the kernel uses offset 0xc00000 rather
 * than 0x800000 for this register is UNKNOWN; the address bits above bit
 * 9 select something the table does not name.
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

#define KONA_HH_SWITCH                      0x100  /* register mask 0x1ff */

#define KONA_HIP1_HH_GINTR_INFO             0x108  /* register mask 0x77fff */
#define KONA_HIP1_GINTR_VECTOR_MASK         0x000000ff  /* shift 0 */
#define KONA_HIP1_GINTR_CPUID_MASK          0x00007f00  /* shift 8 */
#define KONA_HIP1_GINTR_PRIV_MASK           0x00010000  /* shift 16 */
#define KONA_HIP1_GINTR_FORCE_MASK          0x00020000  /* shift 17 */
#define KONA_HIP1_GINTR_WGORDER_MASK        0x00040000  /* shift 18 */

#define KONA_HH_NOP                         0x1f8  /* register mask 0x0 */

#define KONA_HH_RTC                         0x200  /* register mask 0xffffffff */

#define KONA_HIP1_HH_GFIFO_LEVEL            0x208  /* register mask 0xfff */
#define KONA_HIP1_GFIFO_LEVEL_ZERO_MASK     0x00000001  /* shift 0 */
#define KONA_HIP1_GFIFO_LEVEL_MASK          0x00000ffe  /* shift 1 */

#define KONA_HH_GFIFO_HI                    0x210  /* register mask 0x7ff */
#define KONA_GFIFO_HI_ZERO_MASK             0x00000001  /* shift 0 */
#define KONA_GFIFO_HI_MASK                  0x000007fe  /* shift 1 */

#define KONA_HH_GFIFO_LO                    0x218  /* register mask 0x7ff */
#define KONA_GFIFO_LO_ZERO_MASK             0x00000001  /* shift 0 */
#define KONA_GFIFO_LO_MASK                  0x000007fe  /* shift 1 */

#define KONA_HIP1_HH_INTR_INFO              0x220  /* register mask 0xffff */
#define KONA_HIP1_INTR_VECTOR_MASK          0x000000ff  /* shift 0 */
#define KONA_HIP1_INTR_CPUID_MASK           0x00007f00  /* shift 8 */
#define KONA_HIP1_INTR_GLOBAL_EN_MASK       0x00008000  /* shift 15 */

#define KONA_HH_INTR_ACK                    0x228  /* register mask 0x0 */

#define KONA_HIP1_HH_INTR_ENABLE            0x230  /* register mask 0x3ff */

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

#define KONA_HH_ARM_MBOX                    0x240  /* register mask 0xffffffff */

#define KONA_HH_SEQID                       0x248  /* register mask 0xffffffff */

#define KONA_HH_ODMA_CHANNEL                0x250  /* register mask 0x1 */

#define KONA_HH_PACK_MODE                   0x258  /* register mask 0x7f */

#define KONA_HH_ODMA_PNUM                   0x260  /* register mask 0x1fffffff */

#define KONA_HIP1_HH_ODMA_POFF              0x268  /* register mask 0xfff */

#define KONA_HH_ODMA_LEN                    0x270  /* register mask 0xffffffff */

#define KONA_HH_ODMA_TOTAL                  0x278  /* register mask 0xffffffff */

#define KONA_HH_ODMA_OVER                   0x280  /* register mask 0xfff */

#define KONA_HH_ODMA_LLEN                   0x288  /* register mask 0xffffffff */

#define KONA_HH_ODMA_STRIDE                 0x290  /* register mask 0xffffffff */

#define KONA_HH_ODMA_FLUSH                  0x298  /* register mask 0x0 */

#define KONA_HH_ODMA2_PNUM                  0x2a0  /* register mask 0x1fffffff */

#define KONA_HIP1_HH_ODMA2_POFF             0x2a8  /* register mask 0xfff */

#define KONA_HH_ODMA2_LEN                   0x2b0  /* register mask 0xffffffff */

#define KONA_HH_ODMA2_TOTAL                 0x2b8  /* register mask 0xffffffff */

#define KONA_HH_ODMA2_OVER                  0x2c0  /* register mask 0xfff */

#define KONA_HH_RESET                       0x300  /* register mask 0x3 */
#define KONA_HIP_RESET_MASK                 0x00000001  /* shift 0 */
#define KONA_ARM_START_MASK                 0x00000002  /* shift 1 */

#define KONA_HH_ARM_CTRL                    0x308  /* register mask 0x3 */
#define KONA_ARM_CTRL_HOST_ACCESS_MASK      0x00000001  /* shift 0 */
#define KONA_HOST_ARM_CACHE_DISABLE_MASK    0x00000002  /* shift 1 */

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

#define KONA_HH_ARM_STALL                   0x320  /* register mask 0x0 */

#define KONA_HH_ARM_UNSTALL                 0x328  /* register mask 0x0 */

#define KONA_HH_ARM_STEP                    0x330  /* register mask 0x0 */

#define KONA_HH_ARM_CURR_ADDR               0x338  /* register mask 0xffffffff */

#define KONA_HH_CURR_DATA_FM_ARM            0x340  /* register mask 0xffffffff */

#define KONA_HH_CURR_DATA_TO_ARM            0x348  /* register mask 0xffffffff */

#define KONA_HH_JTAG_DATA                   0x350  /* register mask 0xffffffff */

#define KONA_HH_JTAG_TMS                    0x358  /* register mask 0x3f */

#define KONA_HH_JTAG_CTRL                   0x360  /* register mask 0x7ff */

#define KONA_HH_JTAG_STATUS                 0x368  /* register mask 0x1 */

#define KONA_HH_JTAG_ACCESS                 0x370  /* register mask 0x1 */
#define KONA_JTAG_ACCESS_HOST_MASK          0x00000001  /* shift 0 */

#define KONA_HH_JTAG_RESET                  0x378  /* register mask 0x0 */

#define KONA_HIP1_HH_FCI_OVERLAP            0x380  /* register mask 0x7f */
#define KONA_HIP1_FCI_OVERLAP_DISABLE_MASK  0x00000001  /* shift 0 */
#define KONA_HIP1_FCI_DMA_INTL_MASK         0x0000007e  /* shift 1 */

#define KONA_HIP1_HH_FCI_LOOPBACK           0x388  /* register mask 0xffff */

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

#define KONA_HH_TFIFO_HI                    0x3b0  /* register mask 0xf */

#define KONA_HH_VC_ADDRESS                  0x3c0  /* register mask 0xffff */

#define KONA_HH_VC_FREADY                   0x3c8  /* register mask 0x1 */

#define KONA_HH_VC_DATA                     0x3d0  /* register mask 0xffffffff */

#define KONA_HH_VC_DATA_INCR                0x3d8  /* register mask 0xffffffff */

#define KONA_HH_GFIFO_WAIT                  0x3e0  /* register mask 0x0 */

#define KONA_HH_ARM_ADDRESS                 0x3e8  /* register mask 0xfffffff */
#define KONA_ARM_ADDRESS_ZERO_MASK          0x00000003  /* shift 0 */
#define KONA_ARM_ADDRESS_MASK               0x0ffffffc  /* shift 2 */

#define KONA_HH_ARM_DATA                    0x3f0  /* register mask 0xffffffff */

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

#define KONA_HIP2_HH_ODMA2_POFF             0x2a8  /* register mask 0x1ffff */

#define KONA_HIP2_HH_PIO_HI                 0x2c8  /* register mask 0x1f */
#define KONA_HIP2_PIO_HI_MASK               0x0000001f  /* shift 0 */

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
