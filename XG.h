/*
 * XG.h - InfiniteReality (KONA) Xtalk widget (XG) registers, as far as the
 * 6.5.30m kernel driver shows them.
 *
 * Labels: ESTABLISHED = read directly from a binary; INFERRED = a reading
 * with its reasoning; UNKNOWN = not settled.
 *
 * Sources: IRIX 6.5.30m kona.a, members kona_edtinit_hip2.o (kona_attach,
 * kona_reset_adaptor, kona_report_errs) and kona_mapram_hip2.o; the error
 * message strings in the .rodata of kona_edtinit_hip2.o. docs/xg.md has the
 * attach and reset sequence; docs/hip.md the interrupt chapter.
 *
 * Offsets are from the 16 MB window the driver maps on the pipe. Offsets
 * below 0x800000 are the XG window; the host interface (HIP.h) is at
 * 0x800000. The hardware names of the XG registers are UNKNOWN, so they are
 * named by offset and role.
 */
#ifndef KONA_XG_H
#define KONA_XG_H

/*
 * Registers the driver writes when it sets up how the pipe signals
 * interrupts (kona_reset_adaptor; see docs/xg.md for the order).
 */
#define KONA_XG_REG_04                0x04    /* read at attach; bits 28-31 kept (role UNKNOWN) */
#define KONA_XG_REG_24                0x24    /* target number, widget number, N, constant; bit 17 set last */
#define KONA_XG_REG_2C                0x2c    /* cleared to 0 once during reset */
#define KONA_XG_REG_34                0x34    /* interrupt target number and address bits 32-47 */
#define KONA_XG_REG_3C                0x3c    /* interrupt target address bits 0-31 */
#define KONA_XG_REG_64                0x64    /* bits 3-5: map RAM size code (docs/hip.md) */

/*
 * Interrupt vector register, ESTABLISHED as written (kona_reset_adaptor
 * step 6): 0x00020000 | (V1 << 18 & 0x03fc0000) | (V2 << 9 & 0x0001fe00)
 * | (V3 & 0xff), where V1, V2, V3 are the vector numbers of the three Xtalk
 * interrupt handles the driver allocates at attach (pipe state +2240,
 * +2264, +2256). Which handler serves which handle is INFERRED from the
 * order of the driver's handler table: V1 = the XG error handler,
 * V2 = the geometry-engine handler, V3 = the host-interface handler
 * (docs/hip.md).
 */
#define KONA_XG_REG_INTR_VECTORS      0x5c
#define KONA_XG_INTR_VEC_XG_SHIFT     18
#define KONA_XG_INTR_VEC_GE_SHIFT     9
#define KONA_XG_INTR_VEC_HIP_SHIFT    0

/*
 * Error status, ESTABLISHED as to which bit prints which message
 * (kona_report_errs reads XG+0x6c and prints one line per set bit,
 * bits 0-30, in this order; the message offsets in .rodata line up with
 * the bit tests one to one). The text names are the driver's. The driver
 * reads this register in the XG error interrupt and in kona_reset_adaptor,
 * which also reads it, writes 0 to XG+0x2c, reads it again and writes the
 * value back (INFERRED: write-one-to-clear). "Guava" is the driver's word
 * for the other side of a bus the XG talks to; which chip it names is
 * UNKNOWN.
 */
#define KONA_XG_REG_ERR_STATUS        0x6c
#define KONA_XG_ERR_GUAVA_OVERLAP            (1u << 0)
#define KONA_XG_ERR_GUAVA_PIO_DATA_OVF       (1u << 1)
#define KONA_XG_ERR_GUAVA_PIO_CMD_OVF        (1u << 2)
#define KONA_XG_ERR_GUAVA_VALID_WHEN_IDLE    (1u << 3)
#define KONA_XG_ERR_GUAVA_BAD_COMMAND        (1u << 4)
#define KONA_XG_ERR_GUAVA_BAD_INTERRUPT      (1u << 5)
#define KONA_XG_ERR_XTALK_ADDRESS            (1u << 6)
#define KONA_XG_ERR_XTALK_BAD_COMMAND        (1u << 7)
#define KONA_XG_ERR_XTALK_READ_REQ_TIMEOUT   (1u << 8)
#define KONA_XG_ERR_XTALK_RESPONSE           (1u << 9)
#define KONA_XG_ERR_XTALK_REQUEST            (1u << 10)
#define KONA_XG_ERR_GFIFO_OVERFLOW           (1u << 11)
#define KONA_XG_ERR_MAPRAM_PARITY            (1u << 12)
#define KONA_XG_ERR_MAPRAM_INVALID           (1u << 13)
#define KONA_XG_ERR_GUAVA_BUS_CMD_PARITY     (1u << 14)
#define KONA_XG_ERR_GUAVA_BUS_DATA_PARITY    (1u << 15)
#define KONA_XG_ERR_GUAVA_BUS_PARITY         (1u << 16)
#define KONA_XG_ERR_XTALK_REQ_CREDIT_OVF     (1u << 17)
#define KONA_XG_ERR_XTALK_REQ_CREDIT_UDF     (1u << 18)
#define KONA_XG_ERR_XTALK_RSP_CREDIT_OVF     (1u << 19)
#define KONA_XG_ERR_XTALK_RSP_CREDIT_UDF     (1u << 20)
#define KONA_XG_ERR_GFX_CACHELINE_CREDIT_OVF (1u << 21)
#define KONA_XG_ERR_GFX_CACHELINE_CREDIT_UDF (1u << 22)
#define KONA_XG_ERR_GFX_DWORD_CREDIT_OVF     (1u << 23)
#define KONA_XG_ERR_GFX_DWORD_CREDIT_UDF     (1u << 24)
#define KONA_XG_ERR_CMD_FIFO_OVERFLOW        (1u << 25)
#define KONA_XG_ERR_ODMA_FIFO_OVERFLOW       (1u << 26)
#define KONA_XG_ERR_IDMA_RESPONSE_SIZE       (1u << 27)
#define KONA_XG_ERR_IDMA_RESPONSE_BAD_TNUM   (1u << 28)
#define KONA_XG_ERR_GUAVA_WRITE_TOO_FEW      (1u << 29)
#define KONA_XG_ERR_XTALK_WRITE_FULL_INPUT   (1u << 30)

#define KONA_XG_REG_74                0x74    /* read-modify-write at reset; fields at bits 16-21 and 22-27 kept, 0x3f40 or-ed in (role UNKNOWN) */

#endif /* KONA_XG_H */
