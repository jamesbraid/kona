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
#define KONA_SC_DEATH_REASON      0x87c   /* 0 while alive; kona_die stores its reason once */
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
 * instead when the calling thread's own context is current, in kona_checkpipe), 0x10000 before the payload words, and 0 when the packet is
 * done. It is written once per phase, not per word. The address selects
 * host-interface register 0x108, HH_GINTR_INFO, so 0x10000 is its PRIV bit
 * and 0x20000 its FORCE bit (HIP.h).
 *
 * DETACH_FLUSH, ESTABLISHED (KONApcxswap 0x8a8): before leaving the
 * flow-control group the driver writes 1 to REGBASE + 0x7c and reads it back;
 * joining writes the group number there (see kona_act_pcx below).
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
 * Physical-address argument pair, ESTABLISHED (KONApcxswap, KONAstart): a
 * host buffer is passed as two words, (pa >> 12) and ((pa & 0xfff) | 0x9000).
 * INFERRED: 0x9000 is a flag set in the low word; its meaning is UNKNOWN.
 */
#define KONA_PA_HI(pa)            ((unsigned)((pa) >> 12))
#define KONA_PA_LO(pa)            ((unsigned)(((pa) & 0xfff) | 0x9000))

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
 *   KONA_PA_HI(save area), KONA_PA_LO(save area), 0xededeDED.
 *   INFERRED: the save area is where the pipe's state for this context was
 *   saved, and 0xedededed is an end marker.
 *
 * Incoming context never seen:
 *   HP_CONTEXT_INIT 0x1fd, payload: KONA_PA_HI(save area),
 *   KONA_PA_LO(save area), 0x10000;
 *   then HP_RDATA_SETUP 0x1f2, payload: two words from the context record
 *   (+8, +12), 0x4000; then the "initialised" flag is set.
 *   INFERRED: RDATA_SETUP names where the pipe returns data to the client;
 *   0x4000 is likely a size, not the user FIFO address. UNKNOWN which.
 *
 * Then, either way, kona_act_pcx(sc, gfxp, activate_token) (0x124-0x680)
 * runs; KONApcxswap passes the word at context record +8 as the third
 * argument. ESTABLISHED sequence, all in one kernel stream (kick 0x30000
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
 * INFERRED: R+8..R+20 and R'+8/+12 are window origin and size, and the
 * four list words a clip rectangle; R+60/R'+60 match in both packets and
 * may be a drawable id. Field meanings are UNKNOWN beyond these offsets;
 * activate_token is INFERRED to be HP_CONTEXT_ACTIVATE 0x1fa, since no other
 * token in KONApcxswap or kona_act_pcx activates the context.
 *
 * Attaching to the flow-control group, ESTABLISHED (kona_act_pcx 0x478 and
 * three copies): the driver writes ((sc+0x8c8) << 1) & 0x3e to register-
 * window offset 0x7c, then waits for returned credits. Leaving the group
 * writes 1 to the same offset (KONApcxswap). INFERRED: offset 0x7c takes a
 * write-gather group number in bits 1-5 with bit 0 as "detach".
 *
 * Nothing in the switch saves pipe state through the host: the kernel only
 * names the save area. INFERRED: the pipe saves and restores its own state
 * by DMA to that area, under control of the geometry-engine microcode.
 *
 * If KONA_SC_DEATH_REASON is nonzero the switch returns without sending
 * anything.
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
