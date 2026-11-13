/*
 * XG.h - InfiniteReality (KONA) Xtalk widget (XG) registers, as far as the
 * 6.5.30m kernel driver shows them.
 *
 * Labels: ESTABLISHED = read directly from a binary; INFERRED = a reading
 * with its reasoning; UNKNOWN = not settled.
 *
 * Sources: IRIX 6.5.30m kona.a, members kona_edtinit_hip2.o (kona_attach,
 * kona_reset_adaptor, kona_report_errs) and kona_mapram_hip2.o; the error
 * message strings in the .rodata of kona_edtinit_hip2.o. devices/xg/README.md has the
 * attach and reset sequence; devices/hip/README.md the interrupt chapter.
 *
 * Offsets are from the 16 MB window the driver maps on the pipe. Offsets
 * below 0x800000 are the XG window; the host interface (HIP.h) is at
 * 0x800000.
 *
 * Identity, ESTABLISHED: kona_init registers the driver with
 * xwidget_driver_register(part 0xc102, manufacturer 0x2aa), the values
 * Linux lists as WIDGET_KONA_PART_NUM and WIDGET_KONA_MFGR_NUM
 * (arch/mips/include/asm/xtalk/xwidget.h, "InfiniteReality3 / Kona GFX").
 *
 * Register names and fields, ESTABLISHED: the kpm diagnostic
 * (/usr/gfx/KONA/bin/kpm, 6.5.30m) carries an XG register table of 98
 * records, extracted to diags/kpm/xg_registers.tsv by
 * scripts/extract_kpm_tables.py: every register's window offset, name and
 * mask, every field's mask and shift, and the three window bases. The names
 * below are kpm's. kpm names the generic Xtalk control register at 0x24
 * (XG_XT_CTRL) with the same low fields as Linux's WIDGET_CONTROL, which
 * confirms the earlier inferred match; it has no record for 0x04, 0x2c, 0x34
 * and 0x3c, which keep the generic widget names from the Linux header
 * (INFERRED, as before, from the driver's writes fitting those layouts).
 *
 * Every register is a 32-bit word at offset 8n + 4: the 64-bit Xtalk
 * register slots seen through the big-endian low half (INFERRED from every
 * kpm offset and every generic widget offset being 4 mod 8).
 *
 * Reset values: UNKNOWN: no shipped software or published source depends
 * on them. kpm's table has masks but no reset values, and the driver writes
 * every register whose value it relies on except the command water marks
 * in XG_HI_LO_WATER (routes tried listed there, below).
 */
#ifndef KONA_XG_H
#define KONA_XG_H

/* Window layout (kpm window-base records, ESTABLISHED; "FC" read as flow
 * control is INFERRED from the kernel's flow-control kick going to 0xc00108
 * and the user FIFO page being mapped from 0xc10000) */

/*
 * XG_MAP_RAM (window offset 0x100000), the widget's page map: one 32-bit entry per 16 KB page,
 * entry n at 0x100000 + 4n. Established: `kona_mapram_init` in kona_mapram_hip2.o writes INVALID
 * (0x10000000) or-ed with the entry number to every entry (store at 0x50 in the object) and reads each back at 0x5c;
 * a mismatch is logged and the pipe declared dead through a call to `kona_die` with reason 21.
 * `kona_mapram_map` later fills entries with a page-size code and frame number, so DMA addresses
 * the pipe issues are translated through this table. */
#define KONA_XG_MAP_RAM               0x100000  /* XG_MAP_RAM, to XG_MAP_RAM_END 0x200000 */
#define KONA_XG_MAP_RAM_END           0x200000
#define KONA_XG_CLIENT_REGS           0x800000  /* host-interface registers, no flow control */
#define KONA_XG_FC_CLIENT_REGS        0xc00000  /* the same registers through flow control */
#define KONA_XG_FC_GFX                0xc10000  /* graphics FIFO through flow control */

/*
 * XG +0x4 is the generic widget identification word: revision in bits 28-31, part number 0xc102,
 * manufacturer 0x2aa. Established: `kona_attach` in kona_edtinit_hip2.o reads it at +0x268 and keeps
 * the revision at pipe state +2196, which `KONAprivate` copies into the configuration record at
 * +0x4e8; the part and manufacturer are the pair `kona_init` registers the driver for (at +0x84). */
#define KONA_XG_REG_WIDGET_ID       0x04    /* generic; attach keeps bits 31-28, the widget revision */
#define   KONA_XG_WID_REV(v)            (((v) >> 28) & 0xf)
#define   KONA_XG_WID_PART(v)           (((v) >> 12) & 0xffff)  /* 0xc102 */
#define   KONA_XG_WID_MFG(v)            (((v) >> 1) & 0x7ff)    /* 0x2aa */

/* XG_XT_STAT: link status and counters (kpm only; the driver never reads it) */
#define KONA_XG_XT_STAT               0x0c
#define   KONA_XG_XT_STAT_PENDING         0x0000001f
#define   KONA_XG_XT_STAT_LLP_SIZE        0x00000020
#define   KONA_XG_XT_STAT_LLP_CHKBIT_RETRY 0x00000040
#define   KONA_XG_XT_STAT_LLP_SEQNUM_RETRY 0x00000080
#define   KONA_XG_XT_STAT_LLP_MAXRETRY    0x00000100
#define   KONA_XG_XT_STAT_TX_CNT          0x00ff0000
#define   KONA_XG_XT_STAT_REC_CNT         0xff000000

/*
 * XG_XT_CTRL (+0x24), the widget control register. Established: `kona_reset_adaptor` in
 * kona_edtinit_hip2.o writes 0x00240200 | interrupt target << 22 | crossbar credits << 12 | widget
 * number at +0x94 (credits 4, or 3 for an early crossbar revision), reads it back at +0xa0 to push the
 * write out, and after clearing errors reads it again and sets INTERRUPT_ENA (0x20000) at +0x1ac.
 * So the driver turns on map RAM parity (bit 18) and Guava-bus parity (bit 21) and keeps the
 * bad-packet, clear-strobe, classic-mode and forced-parity test bits off. */
#define KONA_XG_XT_CTRL               0x24
#define   KONA_XG_XT_CTRL_WIDGET_ID       0x0000000f
#define   KONA_XG_XT_CTRL_MAX_TRANS       0x000001f0
#define   KONA_XG_XT_CTRL_SYS_END         0x00000200
#define   KONA_XG_XT_CTRL_CLR_TLLP_CNT    0x00000400
#define   KONA_XG_XT_CTRL_CLR_RLLP_CNT    0x00000800
#define   KONA_XG_XT_CTRL_LLP_XBAR_CRD    0x0000f000  /* N = 3 or 4 (devices/xg/README.md) */
#define   KONA_XG_XT_CTRL_F_BAD_PKT       0x00010000
#define   KONA_XG_XT_CTRL_INTERRUPT_ENA   0x00020000  /* set last by the driver */
#define   KONA_XG_XT_CTRL_MAPRAM_ENA_PAR  0x00040000
#define   KONA_XG_XT_CTRL_MAPRAM_BAD_PAR  0x00080000
#define   KONA_XG_XT_CTRL_CLR_LLP_STATS   0x00100000
#define   KONA_XG_XT_CTRL_GUAVA_ENA_PAR   0x00200000
#define   KONA_XG_XT_CTRL_DMA_DEST_ID     0x03c00000  /* the interrupt target number */
#define   KONA_XG_XT_CTRL_XTALK_CLASSIC_MODE 0x04000000
#define   KONA_XG_XT_CTRL_FORCE_PERR_GUAVA_IN  0x08000000
#define   KONA_XG_XT_CTRL_FORCE_PERR_GUAVA_OUT 0x10000000

/*
 * XG +0x2c, the generic widget request-timeout register. Established: `kona_reset_adaptor` writes 0
 * to it at +0x170, between two reads of the error status, and nowhere else touches it. Inferred from
 * the generic widget layout: 0 is written as the timeout so an old pending-request timer cannot
 * raise a new error while the reset clears the status. */
#define KONA_XG_REG_REQ_TIMEOUT     0x2c
/*
 * XG +0x34, upper half of the interrupt destination. Established: `kona_reset_adaptor` writes it at
 * +0xe8 with the interrupt target's crossbar id (from `xtalk_intr_target_get`) in bits 16-19 and
 * bits 32-47 of the address `xtalk_intr_addr_get` returned in bits 0-15. Inferred from the generic
 * widget layout in Linux xwidget.h: the XG sends its interrupt write packets to that node. */
#define KONA_XG_REG_INTDEST_UPPER   0x34
/*
 * XG +0x3c, lower half of the interrupt destination: address bits 0-31. Established: written once,
 * by `kona_reset_adaptor` at +0xbc, from the same `xtalk_intr_addr_get` result, before the upper
 * half; together they give the hub address each interrupt packet from the pipe is written to. */
#define KONA_XG_REG_INTDEST_LOWER   0x3c

/*
 * XG_XT_INTRVEC: the three interrupt vectors. kona_reset_adaptor step 6
 * writes 0x00020000 | V1 << 18 | V2 << 9 | V3 (V1-V3 the vector numbers of
 * the handles at pipe state +2240, +2264, +2256). With kpm's names:
 * XG_INTR_VEC = V1, which settles that the handle at +2240 is the XG's own
 * error interrupt (kona_xg_intr_handler); INTR_VEC1 = V2 with its barrier
 * bit set, INTR_VEC0 = V3 without. INFERRED from the handler table order:
 * vector 1 is the geometry-engine handler's and vector 0 the host
 * interface's; and that the barrier bit makes the XG order the interrupt
 * behind the DMA writes before it, which the output-DMA completion that the
 * geometry-engine handler reads needs (devices/hip/README.md).
 */
/*
 * XG +0x5c is XG_XT_INTRVEC. Established: `kona_reset_adaptor` writes it at +0x148 with
 * 0x20000 (the second vector's barrier bit) or-ed with three vector numbers from
 * `xtalk_intr_vector_get`: the handle at pipe state +2240 in bits 18-25, +2264 in bits 9-16 and
 * +2256 in bits 0-7. So the XG's own error interrupt, the geometry-engine interrupt and the
 * host-interface interrupt each arrive at the hub with their own vector. */
#define KONA_XG_XT_INTRVEC            0x5c
#define   KONA_XG_XT_INTRVEC_INTR_VEC0      0x000000ff
#define   KONA_XG_XT_INTRVEC_BARRIER_VEC0   0x00000100
#define   KONA_XG_XT_INTRVEC_INTR_VEC1      0x0001fe00
#define   KONA_XG_XT_INTRVEC_BARRIER_VEC1   0x00020000
#define   KONA_XG_XT_INTRVEC_XG_INTR_VEC    0x03fc0000

/* XG_CONFIG: read by kona_attach for the map RAM size (bits 3-5; the entry
 * count is that code << 15, 8 when zero). SUBSYSTEM and MAPRAM_TYPE are not
 * read by any shipped code found. */
/*
 * XG +0x64 is XG_CONFIG. Established: `kona_attach` reads it at +0x27c and again at +0x2a0, takes
 * MAPRAM_SIZE (bits 3-5, treated as 8 when zero) and stores that code shifted left by 15 at pipe
 * state +2312, the map RAM entry count that `kona_mapram_init` then fills; so the field tells the
 * driver how large the fitted page-map RAM is. The SUBSYSTEM and MAPRAM_TYPE fields are not read. */
#define KONA_XG_CONFIG                0x64
#define   KONA_XG_CONFIG_SUBSYSTEM        0x07
#define   KONA_XG_CONFIG_MAPRAM_SIZE      0x38
#define   KONA_XG_CONFIG_MAPRAM_TYPE      0xc0

/*
 * Error status (kpm: XG_ERR_STAT, the field names in the comment after each
 * bit), ESTABLISHED as to which bit prints which message
 * (kona_report_errs reads XG+0x6c and prints one line per set bit,
 * bits 0-30, in this order; the message offsets in .rodata line up with
 * the bit tests one to one). The text names are the driver's. The driver
 * reads this register in the XG error interrupt and in kona_reset_adaptor,
 * which also reads it, writes 0 to XG+0x2c, reads it again and writes the
 * value back (INFERRED: write-one-to-clear). "Guava" is the driver's word
 * for the other side of a bus the XG talks to; which chip it names is
 * UNKNOWN.
 */
/*
 * XG +0x6c, XG_ERR_STAT. Established: `kona_report_errs` in kona_edtinit_hip2.o reads it at +0x18
 * and logs one message per set bit; `kona_reset_adaptor` calls that routine, then reads the
 * register at +0x160, writes 0 to +0x2c, reads it again at +0x17c and writes the value back at
 * +0x18c. Inferred from that sequence: the bits are write-one-to-clear, so the reset leaves no
 * stale error latched before interrupts are enabled. */
#define KONA_XG_REG_ERR_STATUS        0x6c
#define KONA_XG_ERR_GUAVA_OVERLAP            (1u << 0)  /* XG_ERR_STAT_G_OVLP_ERR */
#define KONA_XG_ERR_GUAVA_PIO_DATA_OVF       (1u << 1)  /* XG_ERR_STAT_G_PRSP_DATA_OVFLOW */
#define KONA_XG_ERR_GUAVA_PIO_CMD_OVF        (1u << 2)  /* XG_ERR_STAT_G_PRSP_CMD_OVFLOW */
#define KONA_XG_ERR_GUAVA_VALID_WHEN_IDLE    (1u << 3)  /* XG_ERR_STAT_G_IDLE_VLD_ERR */
#define KONA_XG_ERR_GUAVA_BAD_COMMAND        (1u << 4)  /* XG_ERR_STAT_G_BADCMD_ERR */
#define KONA_XG_ERR_GUAVA_BAD_INTERRUPT      (1u << 5)  /* XG_ERR_STAT_G_INTR_ERR */
#define KONA_XG_ERR_XTALK_ADDRESS            (1u << 6)  /* XG_ERR_STAT_X_ADDR_ERR */
#define KONA_XG_ERR_XTALK_BAD_COMMAND        (1u << 7)  /* XG_ERR_STAT_X_BADCMD_ERR */
#define KONA_XG_ERR_XTALK_READ_REQ_TIMEOUT   (1u << 8)  /* XG_ERR_STAT_X_RDTIMER_ERR */
#define KONA_XG_ERR_XTALK_RESPONSE           (1u << 9)  /* XG_ERR_STAT_X_RSP_ERR */
#define KONA_XG_ERR_XTALK_REQUEST            (1u << 10)  /* XG_ERR_STAT_X_REQ_ERR */
#define KONA_XG_ERR_GFIFO_OVERFLOW           (1u << 11)  /* XG_ERR_STAT_GFX_FIFO_OVFLOW */
#define KONA_XG_ERR_MAPRAM_PARITY            (1u << 12)  /* XG_ERR_STAT_MAPRAM_PERR */
#define KONA_XG_ERR_MAPRAM_INVALID           (1u << 13)  /* XG_ERR_STAT_MAPRAM_INVLD_ERR */
#define KONA_XG_ERR_GUAVA_BUS_CMD_PARITY     (1u << 14)  /* XG_ERR_STAT_G_CMD_PERR */
#define KONA_XG_ERR_GUAVA_BUS_DATA_PARITY    (1u << 15)  /* XG_ERR_STAT_G_DATA_PERR */
#define KONA_XG_ERR_GUAVA_BUS_PARITY         (1u << 16)  /* XG_ERR_STAT_CLT_GV_PERR */
#define KONA_XG_ERR_XTALK_REQ_CREDIT_OVF     (1u << 17)  /* XG_ERR_STAT_X_REQ_CRD_OVFLOW */
#define KONA_XG_ERR_XTALK_REQ_CREDIT_UDF     (1u << 18)  /* XG_ERR_STAT_X_REQ_CRD_UNFLOW */
#define KONA_XG_ERR_XTALK_RSP_CREDIT_OVF     (1u << 19)  /* XG_ERR_STAT_X_RESP_CRD_OVFLOW */
#define KONA_XG_ERR_XTALK_RSP_CREDIT_UDF     (1u << 20)  /* XG_ERR_STAT_X_RESP_CRD_UNFLOW */
#define KONA_XG_ERR_GFX_CACHELINE_CREDIT_OVF (1u << 21)  /* XG_ERR_STAT_GFX_CL_CRD_OVFLOW */
#define KONA_XG_ERR_GFX_CACHELINE_CREDIT_UDF (1u << 22)  /* XG_ERR_STAT_GFX_CL_CRD_UNFLOW */
#define KONA_XG_ERR_GFX_DWORD_CREDIT_OVF     (1u << 23)  /* XG_ERR_STAT_GFX_DW_CRD_OVFLOW */
#define KONA_XG_ERR_GFX_DWORD_CREDIT_UDF     (1u << 24)  /* XG_ERR_STAT_GFX_DW_CRD_UNFLOW */
#define KONA_XG_ERR_CMD_FIFO_OVERFLOW        (1u << 25)  /* XG_ERR_STAT_CMD_FIFO_OVFLOW */
#define KONA_XG_ERR_ODMA_FIFO_OVERFLOW       (1u << 26)  /* XG_ERR_STAT_ODMA_FIFO_OVFLOW */
#define KONA_XG_ERR_IDMA_RESPONSE_SIZE       (1u << 27)  /* XG_ERR_STAT_IDMA_SIZE_ERR */
#define KONA_XG_ERR_IDMA_RESPONSE_BAD_TNUM   (1u << 28)  /* XG_ERR_STAT_IDMA_INVAL_TNUM_ERR */
#define KONA_XG_ERR_GUAVA_WRITE_TOO_FEW      (1u << 29)  /* XG_ERR_STAT_G_WR_ERR */
#define KONA_XG_ERR_XTALK_WRITE_FULL_INPUT   (1u << 30)  /* XG_ERR_STAT_INFIFO_WR_ERR */

/*
 * XG_HI_LO_WATER, ESTABLISHED names. kona_reset_adaptor step 10 keeps the
 * two command-FIFO marks and writes the output-DMA marks: ODMA_LOWATER =
 * 0x40, ODMA_HIWATER = 0x3f (the 0x3f40 constant). So the command marks
 * stay at whatever the chip resets them to. Their reset values are
 * UNKNOWN: no shipped software or published source depends on them.
 * Routes tried: the 6.5.30m kernel (it only carries the bits over), kpm's
 * XG table (masks, no defaults), the strings of kpm, irsaudit, postmortem
 * and ireeprom (no water-mark name beyond kpm's table), the 6.5.5 headers and Linux
 * xwidget.h. The values are unknown and any implementer must choose and say so.
 */
/*
 * XG +0x74 is XG_HI_LO_WATER. Established: `kona_reset_adaptor` reads it at +0x1b8 and writes it
 * at +0x1f4 with the two command-FIFO marks it found (bits 16-21 and 22-27) kept and the output-DMA
 * marks set to 0x3f40 (low mark 0x40, high mark 0x3f), so the driver chooses the levels where
 * output DMA stalls and resumes and leaves the command marks at the chip's own values. */
#define KONA_XG_HI_LO_WATER           0x74
#define   KONA_XG_HI_LO_WATER_ODMA_LOWATER  0x000000ff
#define   KONA_XG_HI_LO_WATER_ODMA_HIWATER  0x0000ff00
#define   KONA_XG_HI_LO_WATER_CMD_LOWATER   0x003f0000
#define   KONA_XG_HI_LO_WATER_CMD_HIWATER   0x0fc00000

/*
 * XG_GFX_DET (+0x7c), the flow-control attach register: DETACH in bit 0, RES_TNUM in bits 1-5.
 * Established: a sender attaches with (tnum << 1) & 0x3e, where tnum is the flow layer's credit
 * transaction number 17, so the value is 34 (`kona_diag_flow` in kona_flow.o writes it at +0x104),
 * and detaches with 1, read back at once to push it out (`KONAreleasegfxsema` at 0x980 and 0x98c);
 * every packet sender in kona.a brackets its writes this way. Inferred: RES_TNUM is the crossbar
 * transaction number on which the pipe returns flow-control credits to the hub, and DETACH stops
 * the credit return before another process may own the pipe. */
#define KONA_XG_GFX_DET               0x7c
#define   KONA_XG_GFX_DET_DETACH          0x01
#define   KONA_XG_GFX_DET_RES_TNUM        0x3e

/* Credit counters (kpm only): available cache-line and doubleword credits */
/*
 * XG +0xc084 in the user mapping is the available cache-line credit counter at XG +0x84,
 * established: kpm 6.5.30m `adapterInspection` (0x10012378) reads it through the I/O window
 * that a privileged process maps from 0xc000 and stores it in its dump. Inferred from the name:
 * it shows how many cache-line credits the pipe has left to return.
 */
#define KONA_XG_GFX_AVCC              0x84
#define   KONA_XG_GFX_AVCC_CACHE_BLOCKS   0xfff
#define KONA_XG_GFX_AVDWC             0x8c
#define   KONA_XG_GFX_AVDWC_DW_CREDITS    0xfff

/* XG_MAP_ADDR (kpm only): an 18-bit map RAM address */
/*
 * XG +0xc094 in the user mapping is the map RAM address register at XG +0x94, established:
 * kpm 6.5.30m `adapterInspection` (0x10012378) reads it through the I/O window that a
 * privileged process maps from 0xc000. Inferred from the name: it holds the 18-bit entry number
 * that a map RAM access selects.
 */
#define KONA_XG_MAP_ADDR              0x94
#define   KONA_XG_MAP_ADDR_ADDR           0x3ffff

/* XG_NIC: the one-wire serial-number ("number in a can") port */
#define KONA_XG_NIC                   0x9c
#define   KONA_XG_NIC_RD_DATA             0x00001
#define   KONA_XG_NIC_DONE                0x00002
#define   KONA_XG_NIC_SAMPLE              0x003fc
#define   KONA_XG_NIC_PULSE               0xffc00

/* XG_XT_LLP_LOG (kpm only): link-level error counters */
#define KONA_XG_XT_LLP_LOG            0xa4
#define   KONA_XG_XT_LLP_LOG_SEQNUM_ERR_CNT 0x003ff
#define   KONA_XG_XT_LLP_LOG_CHKBIT_ERR_CNT 0xffc00

/*
 * Map RAM entry (XG_MAP_RAM, 32-bit entries from 0x100000), ESTABLISHED
 * field names from kpm. kona_mapram_map writes 0x20000000 | 4 KB frame
 * number: PAGESIZE = 1, which the driver pairs with its 16 KB page
 * (kona_mapram_pagesizeshiftof returns 14), so INFERRED: page-size code 1 is
 * 16 KB. The IRIX 6.5-base driver's table names the other codes: 0 is 4 KB,
 * 2 is 64 KB and 3 is 1 MB (kona_xg_psize_shift_to_index, kona_mapram_hip2.o).
 * Those names are INFERRED, a driver expectation rather than a hardware fact.
 * kona_mapram_init writes 0x10000000 | index: INVALID set. The
 * parity bit is the chip's (MAPRAM_ENA_PAR in XG_XT_CTRL).
 */
#define   KONA_XG_MAP_RAM_PPN             0x0fffffff
#define   KONA_XG_MAP_RAM_INVALID         0x10000000
#define   KONA_XG_MAP_RAM_PAGESIZE        0x60000000
#define   KONA_XG_MAP_RAM_ODD_PARITY      0x80000000

/*
 * The kpm reads of the widget page through the user I/O window (0xc00c-0xc094) have their
 * entries with the KONA_USER_ defines in HIP.h. kpm's XG table has no record at widget offsets
 * 0x14, 0x1c, 0x2c, 0x34 or 0x3c, so its dump cannot label those words.
 */

#endif /* KONA_XG_H */
