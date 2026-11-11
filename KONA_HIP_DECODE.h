/*
 * KONA_HIP_DECODE.h - host-interface registers
 *
 * The host-interface chip's own registers, as the host sees them through the
 * pipe's register window. Only the interrupt status register is here so far;
 * the chip's other registers are described in the repository's host-interface
 * header, which has not been moved into decode form. The address on the REG
 * line is the offset from the base of the register window.
 *
 * Derivation: the register offset, width and the meaning of each bit are those
 * of docs/hip.md (the interrupt table) and the repository's host-interface
 * header, which read them from the shipped kernel driver's interrupt handlers and the shipped diagnostic's
 * interrupt tests. Bits 3 and 9 are also confirmed by the diagnostic's own
 * reports for the two video lines. A grade says how the layout was derived,
 * not that silicon was measured.
 */
#ifndef KONA_HIP_DECODE_H
#define KONA_HIP_DECODE_H

#include <stdint.h>

/* Pending interrupt causes. A bit sets whether or not the enable register has */
/* it; the driver clears a bit by writing it back (write-one-to-clear is inferred */
/* from the values written). The first host-interface generation implements bits */
/* 0 to 9; the second adds bits 10 and 11, so the register is 10 or 12 bits wide. */
/* REG: HIP.hh_intr_status 0x238 rw32 reset=unknown established */

/* Graphics FIFO at or above its high-water mark; the driver never enables it. */
/* FIELD: HIP.hh_intr_status.fifo_hi 0:0 established */
#define HIP_HH_INTR_STATUS_FIFO_HI_SHIFT 0
#define HIP_HH_INTR_STATUS_FIFO_HI_MASK 0x1u
/* Graphics FIFO drained to its low-water mark; wakes the sender that waited. */
/* FIELD: HIP.hh_intr_status.fifo_lo 1:1 established */
#define HIP_HH_INTR_STATUS_FIFO_LO_SHIFT 1
#define HIP_HH_INTR_STATUS_FIFO_LO_MASK 0x1u
/* Graphics FIFO overflow; data lost, the driver marks the pipe dead. */
/* FIELD: HIP.hh_intr_status.fifo_ov 2:2 established */
#define HIP_HH_INTR_STATUS_FIFO_OV_SHIFT 2
#define HIP_HH_INTR_STATUS_FIFO_OV_MASK 0x1u
/* Video: the retrace sequence number, a cursor update or a swap completed. The */
/* diagnostic reports this bit as the video interrupt. The hardware condition */
/* behind it is unknown; software depends only on its arrival about once a frame. */
/* FIELD: HIP.hh_intr_status.video 3:3 established */
#define HIP_HH_INTR_STATUS_VIDEO_SHIFT 3
#define HIP_HH_INTR_STATUS_VIDEO_MASK 0x1u
/* The pipe processor rang its doorbell; writing the bit back also clears the */
/* doorbell. */
/* FIELD: HIP.hh_intr_status.arm 4:4 established */
#define HIP_HH_INTR_STATUS_ARM_SHIFT 4
#define HIP_HH_INTR_STATUS_ARM_MASK 0x1u
/* Geometry engine event; it has its own vector and handler. */
/* FIELD: HIP.hh_intr_status.ge 5:5 established */
#define HIP_HH_INTR_STATUS_GE_SHIFT 5
#define HIP_HH_INTR_STATUS_GE_MASK 0x1u
/* Output-DMA overflow; the driver only prints. */
/* FIELD: HIP.hh_intr_status.odma 6:6 established */
#define HIP_HH_INTR_STATUS_ODMA_SHIFT 6
#define HIP_HH_INTR_STATUS_ODMA_MASK 0x1u
/* Never enabled and never handled. */
/* FIELD: HIP.hh_intr_status.unused 7:7 established */
#define HIP_HH_INTR_STATUS_UNUSED_SHIFT 7
#define HIP_HH_INTR_STATUS_UNUSED_MASK 0x1u
/* Parity error; data lost, the driver marks the pipe dead. The cause beyond the */
/* name is unknown. */
/* FIELD: HIP.hh_intr_status.parity 8:8 established */
#define HIP_HH_INTR_STATUS_PARITY_SHIFT 8
#define HIP_HH_INTR_STATUS_PARITY_MASK 0x1u
/* Video-output controller line: the driver answers with the genlock notification. */
/* The diagnostic reports this bit as the video-output controller interrupt. Which */
/* controller condition raises it is inferred: the controller's own interrupt */
/* enable, which only the genlock code sets. */
/* FIELD: HIP.hh_intr_status.voc 9:9 established */
#define HIP_HH_INTR_STATUS_VOC_SHIFT 9
#define HIP_HH_INTR_STATUS_VOC_MASK 0x1u
/* Programmed-I/O overflow; second generation only. The driver marks the pipe dead. */
/* FIELD: HIP.hh_intr_status.pio_ov 10:10 established */
#define HIP_HH_INTR_STATUS_PIO_OV_SHIFT 10
#define HIP_HH_INTR_STATUS_PIO_OV_MASK 0x1u
/* Input-DMA overflow; second generation only. The driver marks the pipe dead. */
/* FIELD: HIP.hh_intr_status.idma_ov 11:11 established */
#define HIP_HH_INTR_STATUS_IDMA_OV_SHIFT 11
#define HIP_HH_INTR_STATUS_IDMA_OV_MASK 0x1u

/* ---- board-side registers on the raster bus ---- */

/* The host-interface chip's output-DMA registers are also written through the */
/* raster bus, in a register space of its own, separate from the host register */
/* window above (hence the space attribute). Each write is one */
/* 32-bit value. Only the two registers that carry a query's reply are listed so */
/* far. */

/* Data port of the second output-DMA channel: a query's reply words are written */
/* here and land in the return-data buffer. The read-start routine writes 0 to it */
/* as a placeholder for word 0 of the buffer and the finish routine writes 1 once */
/* the reply has landed, which is what the client's wait spins on. */
/* REG: HIP.rbus_odma2_data 0x476 w32 space=rbus reset=unknown established */

/* Ends or flushes the second channel's output path. The firmware writes only 0 */
/* (at the start and at the finish of a reply, before the channel is */
/* reprogrammed); the diagnostics write only 1, after queueing data and before */
/* waiting for the channel's total. The role is inferred from those uses; what a */
/* write of 0 does is unknown. */
/* REG: HIP.rbus_odma2_flush 0x477 w32 space=rbus reset=unknown inferred */

#endif
