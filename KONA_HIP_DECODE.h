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

/* ---- host window: mailbox, ARM access, video-controller port ---- */

/* The offsets below are from the base of the host register window, like the */
/* interrupt status register above. */

/* Word the pipe processor posts to the host with its doorbell: an event code, */
/* or one character of a text print. The host never writes it. */
/* REG: HIP.hh_arm_mbox 0x240 r32 reset=unknown established */

/* Pipe-processor access control, two bits wide. Bit 0 opens the host path into */
/* the processor address space through the address and data ports below; the */
/* role of bit 1 is not derived. */
/* REG: HIP.hh_arm_ctrl 0x308 rw32 reset=unknown established */
/* FIELD: HIP.hh_arm_ctrl.host_access 0:0 established */
#define HIP_HH_ARM_CTRL_HOST_ACCESS_SHIFT 0
#define HIP_HH_ARM_CTRL_HOST_ACCESS_MASK 0x1u

/* Address half of the indirect video-controller port: a display-bus access */
/* starts with a write here, and the data port then moves the value. 16 bits, */
/* fully read-write. The value is an address in the display board local space. */
/* REG: HIP.hh_vc_address 0x3c0 rw32 reset=unknown established */
/* FIELD: HIP.hh_vc_address.value 15:0 established */
#define HIP_HH_VC_ADDRESS_VALUE_SHIFT 0
#define HIP_HH_VC_ADDRESS_VALUE_MASK 0xffffu

/* One-bit ready register of the video-controller port. That it exists is */
/* established; no shipped software polls it, so when it sets is unknown (the */
/* fast-list reading of its name is a name-only inference). */
/* REG: HIP.hh_vc_ready 0x3c8 r32 reset=unknown inferred */
/* FIELD: HIP.hh_vc_ready.ready 0:0 inferred */
#define HIP_HH_VC_READY_READY_SHIFT 0
#define HIP_HH_VC_READY_READY_MASK 0x1u

/* Data half of the indirect video-controller port: after an address write, one */
/* write stores the value in that display register and one read returns it. */
/* REG: HIP.hh_vc_data 0x3d0 rw32 reset=unknown established */

/* Video-controller data port that takes no address write first. Access is */
/* established; that the address then advances is inferred by analogy with the */
/* processor-memory increment port. */
/* REG: HIP.hh_vc_data_incr 0x3d8 rw32 reset=unknown inferred */

/* Processor address that the next data or increment-data access touches. 28 */
/* bits, word aligned: bits 1:0 read as zero. */
/* REG: HIP.hh_arm_address 0x3e8 rw32 reset=unknown established */
/* FIELD: HIP.hh_arm_address.word_address 27:2 established */
#define HIP_HH_ARM_ADDRESS_WORD_ADDRESS_SHIFT 2
#define HIP_HH_ARM_ADDRESS_WORD_ADDRESS_MASK 0x3ffffffu

/* Data port of the host window into processor memory (needs the host-access */
/* bit set). The address does not advance after an access. */
/* REG: HIP.hh_arm_data 0x3f0 rw32 reset=unknown established */

/* Data port that steps the processor address after each access. Use for runs */
/* of words is established; the step of four bytes is inferred. */
/* REG: HIP.hh_arm_data_incr 0x3f8 rw32 reset=unknown inferred */


/* ---- host window: routed-command ports ---- */

/* Ports through which the firmware, and the diagnostic, send a routed command: */
/* a descriptor word first, then the payload words. Direction from the host side */
/* is not derived; these are the offsets whose processor-side twins the firmware */
/* writes. */

/* Descriptor port: an entry-shaped descriptor word, written before the */
/* payload. */
/* REG: HIP.cmd_descriptor 0x400 w32 reset=unknown established */

/* Operand port: the operands of a descriptor command. */
/* REG: HIP.cmd_operand 0x840 w32 reset=unknown established */

/* Data port, also the last-word port of a payload. */
/* REG: HIP.cmd_data 0x8c0 w32 reset=unknown established */


/* ---- error register of the host-bus bridge ---- */

/* The bridge chip in front of the host interface has its own register window. */
/* Its error status register is read by the driver in the bridge error */
/* interrupt, which prints one line per set bit. Only the bits that a failed */
/* host DMA can raise are listed. Write-one-to-clear is inferred from the reset */
/* sequence, which reads the register and writes the value back. */

/* Bridge error status. Which bit prints which message is established. */
/* REG: HIP.xg_err_status 0x6c rw32 space=xg reset=unknown established */
/* A read request the bridge sent went unanswered. */
/* FIELD: HIP.xg_err_status.read_req_timeout 8:8 established */
#define HIP_XG_ERR_STATUS_READ_REQ_TIMEOUT_SHIFT 8
#define HIP_XG_ERR_STATUS_READ_REQ_TIMEOUT_MASK 0x1u
/* A bad response arrived from the host bus. */
/* FIELD: HIP.xg_err_status.response 9:9 established */
#define HIP_XG_ERR_STATUS_RESPONSE_SHIFT 9
#define HIP_XG_ERR_STATUS_RESPONSE_MASK 0x1u
/* Parity error in the address-translation RAM. */
/* FIELD: HIP.xg_err_status.mapram_parity 12:12 established */
#define HIP_XG_ERR_STATUS_MAPRAM_PARITY_SHIFT 12
#define HIP_XG_ERR_STATUS_MAPRAM_PARITY_MASK 0x1u
/* An access hit an invalid address-translation entry. */
/* FIELD: HIP.xg_err_status.mapram_invalid 13:13 established */
#define HIP_XG_ERR_STATUS_MAPRAM_INVALID_SHIFT 13
#define HIP_XG_ERR_STATUS_MAPRAM_INVALID_MASK 0x1u
/* The output-DMA FIFO overflowed. */
/* FIELD: HIP.xg_err_status.odma_fifo_overflow 26:26 established */
#define HIP_XG_ERR_STATUS_ODMA_FIFO_OVERFLOW_SHIFT 26
#define HIP_XG_ERR_STATUS_ODMA_FIFO_OVERFLOW_MASK 0x1u
/* An input-DMA response had the wrong size. */
/* FIELD: HIP.xg_err_status.idma_response_size 27:27 established */
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_SIZE_SHIFT 27
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_SIZE_MASK 0x1u
/* An input-DMA response carried an unknown transaction number. */
/* FIELD: HIP.xg_err_status.idma_response_bad_tnum 28:28 established */
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_BAD_TNUM_SHIFT 28
#define HIP_XG_ERR_STATUS_IDMA_RESPONSE_BAD_TNUM_MASK 0x1u


/* ---- processor-side control registers ---- */

/* The pipe processor sees its own control registers in one block of its address */
/* space, on 4-byte steps; the offsets below are from the base of that block */
/* (the processor address of its first register, two million and some bytes). */
/* Each width is the read-write mask of the host-interface diagnostic's register */
/* table: the bits that table treats as implemented. A mask can differ from the */
/* one the kernel-side dump carries for the same register. */

/* Processor control. The firmware reads bit 31 (outside the writable mask) as */
/* "running in a simulator". */
/* REG: HIP.ha_arm_ctrl 0x00 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_arm_ctrl.value 1:0 established */
#define HIP_HA_ARM_CTRL_VALUE_SHIFT 0
#define HIP_HA_ARM_CTRL_VALUE_MASK 0x3u

/* Input-DMA page number. */
/* REG: HIP.ha_idma_pnum 0x10 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_idma_pnum.page 28:0 established */
#define HIP_HA_IDMA_PNUM_PAGE_SHIFT 0
#define HIP_HA_IDMA_PNUM_PAGE_MASK 0x1fffffffu

/* Input-DMA page offset, word aligned. */
/* REG: HIP.ha_idma_poff 0x14 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_idma_poff.offset 11:2 established */
#define HIP_HA_IDMA_POFF_OFFSET_SHIFT 2
#define HIP_HA_IDMA_POFF_OFFSET_MASK 0x3ffu

/* Input-DMA mode. The firmware writes 2, the diagnostic 1. */
/* REG: HIP.ha_idma_ctrl 0x20 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_idma_ctrl.mode 1:0 established */
#define HIP_HA_IDMA_CTRL_MODE_SHIFT 0
#define HIP_HA_IDMA_CTRL_MODE_MASK 0x3u

/* List-DMA pipe address, 8-byte aligned. */
/* REG: HIP.ha_ldma_addr 0x30 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_ldma_addr.addr 25:3 established */
#define HIP_HA_LDMA_ADDR_ADDR_SHIFT 3
#define HIP_HA_LDMA_ADDR_ADDR_MASK 0x7fffffu

/* List-DMA control. The firmware never writes it. */
/* REG: HIP.ha_ldma_ctrl 0x3c rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_ldma_ctrl.value 0:0 established */
#define HIP_HA_LDMA_CTRL_VALUE_SHIFT 0
#define HIP_HA_LDMA_CTRL_VALUE_MASK 0x1u

/* List-DMA source: steers the input stream into the list-DMA writer. */
/* REG: HIP.ha_ldma_src 0x48 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_ldma_src.value 0:0 established */
#define HIP_HA_LDMA_SRC_VALUE_SHIFT 0
#define HIP_HA_LDMA_SRC_VALUE_MASK 0x1u

/* Token-map control. Bit 0 is the processor-access bit. */
/* REG: HIP.ha_icu_ctrl 0x50 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_icu_ctrl.value 1:0 established */
#define HIP_HA_ICU_CTRL_VALUE_SHIFT 0
#define HIP_HA_ICU_CTRL_VALUE_MASK 0x3u

/* Divert vector, word aligned. */
/* REG: HIP.ha_icu_divert_pc 0x54 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_icu_divert_pc.vector 27:2 established */
#define HIP_HA_ICU_DIVERT_PC_VECTOR_SHIFT 2
#define HIP_HA_ICU_DIVERT_PC_VECTOR_MASK 0x3ffffffu

/* Per-context word count the firmware saves. Implemented bits are 8 and 5:0 */
/* (not contiguous, so no field). */
/* REG: HIP.ha_icu_wc 0x5c rw32 space=arm reset=unknown established */

/* In-begin flag. */
/* REG: HIP.ha_icu_state 0x68 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_icu_state.value 1:0 established */
#define HIP_HA_ICU_STATE_VALUE_SHIFT 0
#define HIP_HA_ICU_STATE_VALUE_MASK 0x3u

/* Refusal vector for a begin or end the processor cannot take, word aligned. */
/* REG: HIP.ha_icu_error_pc 0x6c rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_icu_error_pc.vector 27:2 established */
#define HIP_HA_ICU_ERROR_PC_VECTOR_SHIFT 2
#define HIP_HA_ICU_ERROR_PC_VECTOR_MASK 0x3ffffffu

/* Start address of the vertex-array loop command. */
/* REG: HIP.ha_icu_loop_addr 0x70 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_icu_loop_addr.value 8:0 established */
#define HIP_HA_ICU_LOOP_ADDR_VALUE_SHIFT 0
#define HIP_HA_ICU_LOOP_ADDR_VALUE_MASK 0x1ffu

/* Repeat count of the vertex-array loop. */
/* REG: HIP.ha_icu_arrcnt 0x74 rw32 space=arm reset=unknown established */
/* FIELD: HIP.ha_icu_arrcnt.count 15:0 established */
#define HIP_HA_ICU_ARRCNT_COUNT_SHIFT 0
#define HIP_HA_ICU_ARRCNT_COUNT_MASK 0xffffu

/* Mailbox word to the host. */
/* REG: HIP.ha_host_mbox 0x90 rw32 space=arm reset=unknown established */

#endif
