/*
 * kona_kern.h - InfiniteReality (KONA) kernel driver: how the 6.5.30m driver
 * talks to the pipe when it switches contexts, checks a pipe and declares
 * one dead.
 *
 * Labels: ESTABLISHED = read directly from the disassembly at the cited
 * function; INFERRED = a reading with its reasoning; UNKNOWN = not settled.
 *
 * Sources: IRIX 6.5.30m /usr/cpu/sysgen/IP27boot/kona.a, disassembled under
 * kona_kernel/disasm/<member>/. The objects carry no type information, so
 * structure offsets below are the ones the code uses, named by role.
 * Command tokens are named as in GE.h.
 */
#ifndef KONA_KERN_H
#define KONA_KERN_H

/*
 * Per-pipe driver state offsets (ESTABLISHED as used; names are ours).
 */
#define KONA_SC_DEATH_LOCK        0x878   /* spinlock taken by kona_die */
#define KONA_SC_DEATH_REASON      0x87c   /* 0 while alive; kona_die stores its reason once.
                                             kona_alloc_bdata starts it at 1 (never initialised)
                                             and KONAinitialize clears it; KONAresume treats 0 and
                                             1 alike (kona_sched.o 0x1b4-0x1c4), the context switch
                                             and kona_die any nonzero value as dead */
#define KONA_SC_DEATH_HIP_220     0x880   /* register 0x800220 read at death */
#define KONA_SC_DEATH_HIP_3A8     0x884   /* register 0x8003a8 read at death */
#define KONA_SC_PIPE_ID           0x888   /* printed by every death and timeout message (INFERRED role) */
#define KONA_SC_FLOW              0x8e0   /* flow-control handle passed to gfx_flow_* */
#define KONA_SC_FIFO_PORT         0x900   /* address the kernel writes command words to */
#define KONA_SC_KICK              0x938   /* value last written to the kick register */
#define KONA_SC_HIP_220_SHADOW    0x93c   /* software copy of register 0x800220 */
#define KONA_SC_REGBASE           0x948   /* base of the pipe's register window */
#define KONA_SC_CTX_SEMA          0x1498  /* waited on by KONApcxswap around deactivation */
#define KONA_SC_DEACT_TIMEOUT     0x14a8  /* kona_timeout handle for a deactivation */
#define KONA_SC_CHECKPIPE_SEMA    0x14e0  /* waited on by kona_checkpipe */
#define KONA_SC_CHECKPIPE_TIMEOUT 0x14f0  /* kona_timeout handle; nonzero while a check is pending */

/*
 * Register window offsets the code below touches (from KONA_SC_REGBASE).
 *
 * KICK, ESTABLISHED: before each phase of a kernel packet the driver writes
 * KONA_SC_KICK to REGBASE + 0xc00108: 0x30000 before the token word (0x10000
 * instead in kona_checkpipe when the rendering node's connection is the
 * board's manager, kona_crash.o 0x23c-0x258), 0x10000 before the payload
 * words, and 0 when the packet is
 * done. It is written once per phase, not per word. The address selects
 * host-interface register 0x108, HH_GINTR_INFO, so 0x10000 is its PRIV bit
 * and 0x20000 its FORCE bit (HIP.h).
 *
 * DETACH_FLUSH, ESTABLISHED (KONApcxswap 0x8a8): before leaving the
 * flow-control group the driver writes 1 to REGBASE + 0x7c and reads it back;
 * joining writes the credit-return transaction number there, shifted left
 * by one (see kona_act_pcx below).
 */
#define KONA_REG_KICK             0xc00108
#define KONA_REG_DETACH_FLUSH     0x7c
#define KONA_REG_FIFO_LEVEL       0x800208  /* HH_GFIFO_LEVEL, read for the death message */
#define KONA_REG_HIP_220          0x800220  /* HH_INTR_INFO */
#define KONA_REG_DEATH_MARK       0x800298  /* HH_ODMA_FLUSH */
#define KONA_REG_HIP_3A8          0x8003a8  /* HH_TBUS_STATUS */

#define KONA_KICK_START_FOREIGN   0x30000
#define KONA_KICK_PAYLOAD         0x10000
#define KONA_KICK_IDLE            0

/*
 * Address argument pair, ESTABLISHED (kona_context.o KONApcxswap; kona_mem.o
 * swap-out and swap-in; kona_dma.o kona_idma, kona_dmapool_update_pipe,
 * kona_start_selectfeed, kona_diag_map; kona_edtinit.o kona_alloc_bdata;
 * kona_ddrn.o KONAcreateddrn): a buffer address A is passed as two 32-bit
 * words, (A >> 12) and ((A & 0xfff) | 0x9000). Two kinds of address are
 * passed this way.
 *
 * Host-physical buffers, ESTABLISHED: kona_alloc_bdata and KONAcreateddrn
 * allocate with kvpalloc, take kvtophys, and store the pair as
 * ((pa >> 12) | 0x10000000, (pa & 0xfff) | 0x9000) in the driver or context
 * record. KONApcxswap sends the context-record pair (+8, +12) as the first
 * two words of HP_RDATA_SETUP, so that pair names the return-data buffer.
 * The high word carries bit 28 here: IDMA_PNUM_ABS in kpm's table of the
 * pipe's DMA page register (ucode/arm1_registers.tsv, ARM 0x200010), which
 * marks a host frame number instead of a map-RAM page.
 *
 * Pipe-space addresses, ESTABLISHED for kona_start_selectfeed and
 * kona_diag_map: they send the value alloc_gfx_io_space returns
 * (gfx_io_space.o), a per-pipe allocator that hands out addresses in a space
 * the pipe sees and calls registered map routines to map host pages into it.
 * kona_mem_swapout and kona_mem_swapin also call it. Those pairs carry no
 * bit 28: the high word is just A >> 12. Every sender except the two
 * kvtophys ones omits bit 28 (read in the code). The origin of the address
 * was not traced for kona_idma, kona_dmapool_update_pipe, the swap
 * senders' final pair and the HP_CONTEXT_LOAD save area (kona_context.o,
 * record +24), so whether those are mapped-space addresses is UNKNOWN.
 * INFERRED: the old name "physical address" is wrong at least for the
 * selectfeed and diag-map pairs.
 *
 * 0x9000, ESTABLISHED as a constant, set in every low word of both kinds.
 * ESTABLISHED meaning (kpm 6.5.30m, its field names for the HIP2 DMA page
 * offset at ARM 0x200014, HIP.h): bits 12-13 are PSIZE, bit 14 IOMEM, bit
 * 15 COHERENT and bit 16 GBR, so 0x9000 asks for a coherent transfer with
 * page-size code 1, the code of the 16 KB map-RAM page. HIP1's offset field
 * is 12 bits and drops it. No sender uses another value in those bits
 * (kona_ddrn.o also or-s 0x8000 into a kvpalloc size, which is unrelated).
 */
#define KONA_ADDR_HI(a)           ((unsigned)((a) >> 12))
#define KONA_ADDR_HI_PHYS(pa)     ((unsigned)(((pa) >> 12) | 0x10000000))
#define KONA_ADDR_LO(a)           ((unsigned)(((a) & 0xfff) | 0x9000))

/*
 * Context switch, KONApcxswap (kona_context.o 0x680-0xe94), ESTABLISHED.
 * Every packet below is kick 0x30000, token, kick 0x10000, payload; the
 * whole switch ends with kick 0.
 *
 * Outgoing context (taken when a context is being switched away):
 *   arms kona_timeout (handle at KONA_SC_DEACT_TIMEOUT), then
 *   HP_CONTEXT_DEACTIVATE 0x1fc, payload: one word, the context's slot
 *   index ((slot address - table base) / 176, so slots are 176 bytes);
 *   then it sleeps on KONA_SC_CTX_SEMA until the pipe reports completion.
 *   If the timeout fires first, kona_deact_timeout kills the pipe with
 *   reason 2.
 *
 * Incoming context seen before (its "initialised" flag at +16 is set):
 *   HP_CONTEXT_LOAD 0x1f9, payload: the word a pointer at record +16 names,
 *   KONA_ADDR_HI(save area), KONA_ADDR_LO(save area), 0xededeDED.
 *   INFERRED: the save area is where the pipe's state for this context was
 *   saved, and 0xedededed is an end marker.
 *
 * Incoming context never seen:
 *   HP_CONTEXT_INIT 0x1fd, payload: KONA_ADDR_HI(save area),
 *   KONA_ADDR_LO(save area), 0x10000;
 *   then HP_RDATA_SETUP 0x1f2, payload: two words from the context record
 *   (+8, +12), 0x4000; then the "initialised" flag is set.
 *   INFERRED: RDATA_SETUP names where the pipe returns data to the client;
 *   0x4000 is likely a size, not the user FIFO address. UNKNOWN which.
 *
 * Then, on the CONTEXT_LOAD path only, kona_act_pcx(sc, gfxp,
 * activate_token) (0x124-0x680) runs (call at 0x820); the CONTEXT_INIT
 * path branches from 0xa2c past that call to 0x828. KONApcxswap passes
 * the word at save area +8 as the third argument. ESTABLISHED sequence, all in one kernel stream (kick 0x30000
 * before the first token only, 0x10000 before every payload and every
 * later token):
 *   1. If gfxp halfword +4 has bit 1 set (INFERRED: clip changed):
 *      HP_VALIDATE_CLIP 0x1f3, 11 words. With D = the drawable at gfxp+120
 *      and R = D+96: R+8, R+12, R+16, R+20; then four words from the list
 *      D+128 points to (+0, +4, +8, +12); then R+60, R+40, R+44.
 *   2. If gfxp+140 differs from (gfxp+128)->+8 (INFERRED: the read drawable
 *      changed; the new value is stored back): HP_VALIDATE_READCLIP 0x1ee,
 *      3 words: with R' = (gfxp+128)+96, R'+8, R'+12, R'+60.
 *   3. If gfxp+64 is not its own grand-parent's +8 link (INFERRED: the
 *      bank assignment moved): HP_VALIDATE_BANK 0x1f4, 2 words: the signed
 *      halfwords at +18 of the draw drawable (gfxp+120) and of the read
 *      drawable (gfxp+128), sign-extended.
 *   4. activate_token, then one 0 word (the no-argument form, GE.h).
 * The field meanings are settled below ("Rendering node and drawable").
 *
 * Activate token, ESTABLISHED: it is not a constant. KONApcxswap loads
 * X = the pointer at context record +16 (the same pointer CONTEXT_LOAD
 * reads its first payload word from) and passes the word at X+8 to
 * kona_act_pcx. X is the 64 KB context save area and X+8 is word 2 of the
 * saved image's header (CONTEXT_LOAD sends word 0, the image length). No
 * kona.a member, gfx.o, rrm.o or the libGLcore assembly holds 0x1fa or
 * 506. The pipe writes the word when it saves the context: the ARM's
 * deactivate_hip keeps the previous token number (low nine bits of
 * 0x20007c), deactivate_arm stores it as header word 2 through engine
 * slot 181, and on CONTEXT_LOAD load_arm points that token's map entry at
 * arm_context_activate until activate_hip restores it. So the token is the
 * last one the context ran, not HP_CONTEXT_ACTIVATE 0x1fa (the section
 * "Rendering node, drawable and private record" of software/kernel/kernel.md has the
 * addresses; the engine half of the store is INFERRED).
 *
 * KONAvalidateclip (kona_context.o 0xf8c-0x1350), ESTABLISHED: sends the
 * same three validate packets as steps 1-3 above, in the order VALIDATE_CLIP
 * 0x1f3 (when D+8 differs from the cached gfxp+136), VALIDATE_READCLIP
 * 0x1ee (when (gfxp+128)->+8 differs from gfxp+140), then always
 * VALIDATE_BANK 0x1f4 (the two halfwords at +18), and ends with token 0x172
 * (named GED_NOP in GE.h) and one 0 word. So the cached values at gfxp+136
 * and gfxp+140 are copies of the +8 word of the draw and read drawable:
 * INFERRED a change counter or generation number, since it alone decides
 * whether the clip is resent. Step 1 of kona_act_pcx instead tests bit 1 of
 * the halfword at gfxp+4. KONApcxswap ORs 2 into the word at +4 of the
 * object that gfxp+64 points to (kona_context.o 0x734) just before it sends
 * the context packets. ESTABLISHED: that object is the node's graphics
 * connection, whose +4 is its flags word, not the node's request mask, so
 * the write and the step 1 test touch different words; no reader of the
 * connection's bit 1 was found in kona.a, gfx.o or rrm.o.
 *
 * KONAsetnullclip(R) (kona_context.o 0x1350), ESTABLISHED: stores R+8,
 * +12, +16, +20, +24, +48 and +60 as 0, R+40 as -1 and R+44, R+52 as 1.
 * INFERRED: the null region is empty rectangle words, a -1 in R+40 that
 * the VALIDATE_CLIP packet carries after R+60, and R+44 = 1. UNKNOWN which
 * of these is a count and which a sentinel.
 *
 * Attaching to the flow-control group, ESTABLISHED (kona_act_pcx 0x478 and
 * three copies): the driver writes ((sc+0x8c8) << 1) & 0x3e to register-
 * window offset 0x7c, then waits for returned credits. Leaving the group
 * writes 1 to the same offset (KONApcxswap). sc+0x8c8 is not a group
 * number: kona_attach stores gfx_flow_credit_tnum_get() there
 * (kona_edtinit_hip2.o 0x1010-0x1018), a constant 17, so every attach
 * writes 34. ESTABLISHED (kpm's XG table): 0x7c is XG_GFX_DET, bit 0
 * DETACH and bits 1-5 RES_TNUM, so 17 is the Xtalk transaction number the
 * pipe returns flow-control credits on (XG.h, software/kernel/kernel.md "Flow-control
 * layer").
 *
 * Nothing in the switch saves pipe state through the host: the kernel only
 * names the save area. INFERRED: the pipe saves and restores its own state
 * by DMA to that area, under control of the geometry-engine microcode.
 *
 * If KONA_SC_DEATH_REASON is nonzero the switch returns without sending
 * anything.
 */

/*
 * Rendering node and drawable ("pane"), ESTABLISHED by agreement between the
 * kernel's accesses (kona_context.o, kona_video.o, kona_dma.o, kona_ddrn.o)
 * and the 6.5.5 installed header sys/rrm.h (struct rrm_rnode, struct pane,
 * struct RRM_ValidateClip, struct swapgroup). The header supplies names; each
 * offset below is one the 6.5.30m driver uses, and the sizes agree: the
 * rendering node is 176 bytes (the divisor in the FINISH_SELECTFEED and
 * CONTEXT_DEACTIVATE payloads), and p_vclip at +96 plus its 64 bytes puts the
 * swap-group pointer at +160, where the driver reads it. The driver's own
 * name "rnid" (kona_dma.o, kona_intr.o messages) is the index of the
 * rendering node in its table, the same slot number that
 * CONTEXT_DEACTIVATE and FINISH_SELECTFEED carry.
 *
 * Throughout this file "gfxp" in the context code is the rendering node
 * (argument 2 of kona_act_pcx, argument 3 of KONApcxswap), not the thread's
 * graphics struct. Rendering node, with 6.5.5 names:
 *   +4    gr_reqmask (halfword). Bit 1 is RRM_RMASK_CLIP (0x2): kona_act_pcx
 *         step 1 sends VALIDATE_CLIP when it is set, and KONApcxswap ORs 2
 *         into the word at +4 of the object at +64.
 *   +16   header: gr_pcxsize. USAGE: KONApcxswap sets it to 1 after it sends
 *         CONTEXT_INIT and picks CONTEXT_LOAD or CONTEXT_INIT by testing it,
 *         so the driver uses it as an "initialised" flag. The header name
 *         does not match the use; both are labelled and the use is what the
 *         code does.
 *   +64   gr_gfxp: the graphics connection (struct gfx_gfx) the node
 *         belongs to. ESTABLISHED by comparison: clean_up_other_gfxp
 *         (kona_context.o 0x0) loads node+64, walks the list that
 *         gthread_find_gfxp(curthreadhandle()) returns (6.5.5 sys/gfx.h
 *         declares it as returning struct gfx_gfx *), skips the entry equal
 *         to node+64 and calls KONAunmapgfx on every other entry whose word
 *         at +4 has bit 0 set. So +64 holds the same kind of pointer as
 *         that list. The connection's own layout in 6.5.30m (gfxopen
 *         allocates 128 bytes; software/kernel/kernel.md "The graphics connection"):
 *         +4 flags (bit 0 mapped, bit 2 privileged, set from drv_priv),
 *         +8 the board's generic record, +16 thread, +24 next connection,
 *         +32 operation table, +40 pipe state, +48 address-space handle.
 *         ESTABLISHED: kona_act_pcx step 3 compares node+64 with
 *         (node+64)->+8->+8, the generic board record's manager slot that
 *         GfxOpen fills and GfxUnmanage clears; only nodes of the managing
 *         connection skip VALIDATE_BANK.
 *   +112  gr_private: the driver's 256-byte private record (below).
 *   +120  gr_pane, the draw pane; +128 gr_readpane, the read pane.
 *   +136  gr_serial, +140 gr_readserial: the pane serial numbers the node
 *         last sent to the pipe. kona_act_pcx resends the clip when the
 *         draw pane's serial differs from +136 and the read clip when the
 *         read pane's differs from +140 (the "cached +8 word" above).
 *
 * Pane (the drawable the draw and read pointers name), with the 6.5.5 names
 * and what the driver does with each:
 *   +0    paneid (two 16-bit halves: incarnation, id)
 *   +4    clipid, the opaque window id
 *   +8    p_serial, "serial number for validate clip": the generation word.
 *         It is the value compared with the node's cached copy to decide
 *         whether to resend VALIDATE_CLIP / VALIDATE_READCLIP. Who
 *         increments it is on the other side of the clip validation call
 *         (rrm.o, RRM_ValidateClip, not read for this).
 *   +12 p_validmask, +14 p_waitmask, +16 p_rncnt (halfwords; not touched by
 *         the pipe code)
 *   +18   p_displaybank, the currently displayed buffer: the two halfwords
 *         VALIDATE_BANK carries are the draw pane's and the read pane's
 *   +20   p_swapbufid, the "display id" (hardware DID): the first payload
 *         word of DISPMODE (devices/dg/README.md)
 *   +24 p_swapinterval, +28 p_nextswaptime, +32 p_hwi_mode (hardware-
 *         independent display mode)
 *   +96   p_vclip, a struct RRM_ValidateClip (R = pane + 96 above):
 *           R+0 rnid, +4 clipid, +8 xorg, +12 yorg (window origin),
 *           +16 xsize, +20 ysize (window size), +24 numpieces, +32 pointer
 *           to the piece list (an array of {x, y, xsize, ysize}, four ints
 *           each: the four list words VALIDATE_CLIP carries are piece 0),
 *           +40 wid (window id for the hardware), +44 obscured,
 *           +48 widcheck, +52 changed (1 moved, 2 shrunk), +56 hwi_mode,
 *           +60 fboffset.
 *         VALIDATE_CLIP therefore carries: xorg, yorg, xsize, ysize, piece
 *         0 (x, y, xsize, ysize), fboffset, wid, obscured. KONAsetnullclip
 *         makes the null region: origin, size, numpieces, widcheck and
 *         fboffset 0, wid -1, obscured 1, changed 1.
 *   +160  p_swapgroup: pointer to {refcnt, swapcnt, seqid}. KONAschedswapbuf
 *         reloads swapcnt from refcnt when it is 0 and decrements it per
 *         member, which is the countdown devices/dg/README.md calls a swap group.
 *   +168  p_next, the next pane in the swap group; +176 p_swapped (byte).
 * The pane's field types and names are the header's; the offsets are the
 * driver's, so the two agree on every field the driver touches. Fields the
 * driver never touches (+12..+16, +24..+32 and the pane's locks) keep the
 * header's names unverified.
 *
 * Private record (gr_private), 256 bytes allocated and zeroed by
 * KONAcreateddrn (kona_ddrn.o):
 *   +0    pointer to a 16 KB return-data buffer (kvpalloc, size argument 1,
 *         INFERRED to be in 16 KB pages)
 *   +8, +12  that buffer's address pair, ((pa >> 12) | 0x10000000,
 *         (pa & 0xfff) | 0x9000): RDATA_SETUP's first two words
 *   +16   pointer to the context save area, 64 KB (kvpalloc, size argument
 *         4; the 64 KB follows from the mapping size below)
 *   +24   the save area's pipe-space address (alloc_gfx_io_space, 64 KB,
 *         16 KB pages): CONTEXT_LOAD/INIT's address pair is built from it
 *   +32..  the select-feedback record (kona.h notes, software/kernel/kernel.md);
 *         +80 is its semaphore, +96 its timeout, +104 its owning
 *         process, nonzero while a feed is in flight (the flag that
 *         kona_start_selectfeed and kona_mem_suspend test)
 *   +208  the per-context DMA pool record; +240 a pointer to the shared pool
 *         object, whose +72 holds the shared pool record (devices/hip/README.md)
 *   +112..+136  the retrace record: sequence number, timeout handle,
 *         callback, and the next node in the queue at +136
 *   +248  halfword, -1 at creation
 *
 * The context save area. KONApcxswap sends CONTEXT_LOAD with the word at
 * the save area's +0 as its first payload word and passes the word at +8 as
 * the activate token (above). KONAcreateddrn allocates the area and never
 * initialises it (bzero covers only the 256-byte record), and no store to
 * either word was found in any kona.a member; the area is named to the
 * pipe in CONTEXT_INIT and CONTEXT_DEACTIVATE. The pipe writes both
 * words when it saves a context (a header the host reads back and
 * returns); the writer of X+8 is traced above.
 *
 * Pipe side, ESTABLISHED from the ARM firmware and the geometry program
 * (ucode/arm1.md, ucode/ge_isa.md): the firmware's token map sends 0x1fa
 * to arm_context_activate, 0x1f9 to arm_context_load, 0x1fc to
 * arm_context_deactivate and 0x1fd to arm_context_init, so 0x1fa is the
 * token the pipe treats as activate when the host names it, but the host
 * never does: it sends the saved token number, whose map entry load_arm
 * has pointed at arm_context_activate (load_arm 0x0c020f60-0x0c020f94).
 * arm_context_deactivate ends by handing the geometry engine slot 182,
 * mges_ContextDeactFinish, which writes the header from engine words
 * 0x1333 onward (INFERRED). The immediate 0x1fa at 0x6641 in ctx_load.S
 * is a copy-loop count, not the token.
 */

/*
 * Pipe check, kona_checkpipe (kona_crash.o), ESTABLISHED.
 *   - returns 14 (EFAULT) if RRM_CheckValidFault rejects the caller;
 *   - returns 0 at once if a check is already pending;
 *   - arms kona_timeout (handle at KONA_SC_CHECKPIPE_TIMEOUT);
 *   - sends HP_GE_INTR 0x1dd with one payload word, 0x105;
 *   - sleeps on KONA_SC_CHECKPIPE_SEMA.
 * kona_checkpipe_complete(sc, timed_out) wakes it. On time-out it prints a
 * message and calls kona_die(sc, 18); otherwise it cancels the timeout.
 * 0x105 is the geometry engine's check-pipe event code (6.5.5 kona_if.h,
 * HIP.h), so the pipe proves it still executes commands by reporting it.
 */
#define KONA_CHECKPIPE_REASON     0x105

/*
 * Declaring a pipe dead, kona_die(sc, reason) (kona_crash.o 0x0), ESTABLISHED.
 * Under KONA_SC_DEATH_LOCK, only the first call acts:
 *   1. store reason in KONA_SC_DEATH_REASON;
 *   2. read 0x800220 and 0x8003a8 into KONA_SC_DEATH_HIP_220 / _3A8;
 *   3. write 0x800220 = KONA_SC_HIP_220_SHADOW & ~0x8000;
 *   4. write 0x8003a8 = 8;
 *   5. write 0x800298 = 0xbadc0ffe;
 *   6. print a message with 0x800208 and the reason;
 *   7. clear three driver words (+0x68, +0x6c, +0x78) and signal every
 *      graphics thread on the pipe (gthread_scan with action 9).
 * By the host-interface table (HIP.h): step 3 clears HIP2_INTR_GLOBAL_EN in
 * HH_INTR_INFO, step 4 writes TBUS_STALL (bit 3) of HH_TBUS_STATUS, step 5
 * writes HH_ODMA_FLUSH, and step 6 reads HH_GFIFO_LEVEL. INFERRED: the pipe
 * is silenced and its texture bus stalled, and 0xbadc0ffe is a marker
 * for post-mortem tools. There is no reset or restart: a dead pipe stays
 * dead until the driver is reinitialised.
 *
 * Reasons, ESTABLISHED for 6.5.30 as the argument each caller passes. The
 * 6.5.5 kona.h names the codes; where the 6.5.30 caller agrees with that
 * name it is used below, otherwise the 6.5.5 name is given in the comment.
 * 6.5.5 also defines 1 never initialised, 3 context verify failed,
 * 7 and 8 FIFO clogged without and with texture-bus I/O, 11 output DMA
 * overflowed, 19 debug request, 20 context activate timeout, 23 FIFO above
 * high water and 24 credits stuck below bias; no 6.5.30 caller passes
 * those. 25 has no 6.5.5 name.
 */
enum kona_death_reason {
    KONA_DIE_DEACTIVATE_TIMEOUT = 2,   /* kona_deact_timeout */
    KONA_DIE_IDMA_TIMEOUT       = 4,   /* kona_idma_timeout */
    KONA_DIE_SELECTFEED_TIMEOUT = 5,   /* kona_selectfeed_timeout */
    KONA_DIE_HIWATER_TIMEOUT    = 6,   /* kona_hiwater_timeout */
    KONA_DIE_SET_TIMEOUT_FAILED = 9,   /* kona_hiwater_intr, kona_itimeout_func, kona_gfifo_spin */
    KONA_DIE_GFIFO_OVERFLOW     = 10,  /* kona_intr_handler */
    KONA_DIE_XG_ERROR           = 12,  /* kona_xg_intr_handler */
    KONA_DIE_PIO_OVERFLOW       = 13,  /* kona_intr_handler */
    KONA_DIE_IDMA_OVERFLOW      = 14,  /* kona_intr_handler */
    KONA_DIE_SWAPIN_TIMEOUT     = 15,  /* kona_mem_swapin_complete */
    KONA_DIE_SWAPOUT_TIMEOUT    = 16,  /* kona_mem_swapout_complete, kona_mem_suspend_complete */
    KONA_DIE_MOPUP_TIMEOUT      = 17,  /* kona_mopup_complete */
    KONA_DIE_CHECKPIPE_TIMEOUT  = 18,  /* kona_checkpipe_complete */
    KONA_DIE_MAPRAM_VERIFY      = 21,  /* kona_mapram_init, kona_mapram_map */
    KONA_DIE_PARITY_ERROR       = 22,  /* kona_intr_handler, KONAstart */
    KONA_DIE_CREDITS            = 25,  /* kona_flow_await_returned_credits; no 6.5.5 name */
};

#endif /* KONA_KERN_H */
