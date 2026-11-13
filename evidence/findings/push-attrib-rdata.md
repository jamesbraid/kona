# Why a GL client can wait forever on the return-data page after a push-attributes token

Scope: the client's wait on word 0 of the return-data page after token 0xc9
(push the attribute stack), what answers it, what the host-interface register
at 0x8003a8 is, and which requests the `cycles` demo makes. Sources, all
IRIX 6.5.30m unless stated: the N32 `libGLcore.so`
(`usr/gfx/arch/IP27KONA32`, addresses are its virtual addresses; the 64-bit
build was cross-read through `software/opengl/libglcore-driver-builds.md`; the o32 build
was not read), the pipe firmware `software/ucode/arm1.s` (ARM addresses 0x0c......),
the engine listings in `software/ucode/ge_listing/`, the kernel objects
`kona_video.o`, `kona_timeout.o` and `kona_crash.o` (text offsets from
`software/kernel/disasm/`), and the demo binary `cycles` from the 6.5 base
applications disc (SHA-256
`b49909e9ae6bd1c4b0504df0a01adbbc5b2c3fb543ea25d8604963e2efab256c`;
`usr/demos/General_Demos/cycles/cycles`, an N32 dynamic executable; the
6.5.30 media extraction holds no demos, so this is the only copy read, and
that it equals the copy on the run's disk is unchecked).
Grades: **established** (read from bytes), **inferred** (reasoned, reasoning
given), **unknown** (with the test that would settle it).
`formats/token/command-table.md` is not edited here; the rows to adopt are under
"Proposed command-table rows".

## Answers in one line each

1. After 0xc9 the pipe's push-attributes handler, not the 0x10b light step,
   is what ends the wait. The handler brackets every push, whatever the
   mask, with the read-back start and finish engine handlers, and the finish
   handler is what makes word 0 non-zero. Established that the bracket is
   unconditional; inferred that the finish handler's last word is the
   non-zero completion value (the same unverified step every query shares).
   Mask 0x20000 is the list-base bit: the handler never tests it, nothing is
   read back for it, and the client's wait is a pure ordering wait.
   The 0x10b step runs only when the lighting bit (0x40) is set. A bare 0x10b
   still gets no completion word (inferred, re-checked, unchanged).
2. Register 0x8003a8 is the host interface's TBUS status register. Bit 0 is
   written with 1 by the kernel's video-interrupt service once per video
   interrupt, not by the client. No user-space library writes the register
   window. Nothing on the pipe or in the kernel reads bit 0. Established.
3. `cycles` makes 48 core GL calls plus 9 GLX and 6 GLU calls. Every
   command token traced from them is in the table. Two paths are not traced
   to words: display-list replay and the GLU internals. The first push in
   the demo that has mask 0x20000 is its text-drawing helper.

## 1. What completes after 0xc9

### The client side (established)

`__glkonim_PushAttrib` (0xd95d8b0, 3408 bytes; assembly in
`software/opengl/asm/KONA/kon_attrib.s` from line 242):

- Inside a begin block (word at process address 0x1018 equal to 1) it raises
  error 0x502 and sends nothing (0xd95d8b0 area, `beq` on 4120).
- The first time, when the attribute-stack storage pointer (context +0xa124)
  is null, it calls `__glkon_mem_alloc(0,0,0,depth<<11,0)`, where depth is
  context word +0xec0. This is the kernel's pipe-memory reserve (token 0x1e4,
  class 0) that the run shows ahead of the push. That the two are the same
  call chain is inferred from order and from the firmware side below.
- At 0xd95d92c it stores 0xc9 and then the mask to the command port
  (process address 0x4000, `sw` at 0xd95d930 and 0xd95d934) and at 0xd95d938
  calls `__glkona_wait_rdata`. There is no condition on the mask between the
  store and the call: every push waits.
- `__glkona_wait_rdata` (0xd9587c0, 504 bytes) waits for the first word of the
  page at context +0x7b64 to become non-zero: 200000 spins, 200000 zero-length
  `sginap` calls, then naps of `2 * sysconf(3) / 100` ticks. At pass 3000 of
  the nap phase (compared for equality, so once) it calls the check-pipe
  ioctl (10017), prints "GL:Wait Rdata timed out" and the first 64 words of
  the page, and goes on waiting forever. No path leaves except a non-zero
  word or a signal. With a 100-tick clock the nap is about 20 ms, so the
  message comes about 60 s into the nap phase (the clock value is assumed).
- After the wait returns, the client copies state out of the page only for
  the mask bits whose values live on the pipe (bit 0x1 current values at
  page +0xb4, and so on). For the list bit it copies a word from its own
  context (context +0x7bc into the new stack record, `kon_attrib.c`
  around line 1556) and reads nothing from the page (inferred: the
  decompile is machine-made and noisy, the store itself is plain).

### The firmware side (established for the code path)

`arm_pushattrib` (0x0c039c80, `arm1.u` +0x39c80, 791 words):

- Entry reads the mask from the payload (0x0c039c8c, `ldr r5,[r9,#0x3c]`) and
  immediately opens the read-back: the address words kept by the read-back
  set-up token (state block 0xc98, 0xc9c, 0xca0) go to ports 0x474 and 0x840
  and the start-read engine handler word (`gepc`+0x674, `mgesi_StartRdata`)
  to port 0x8c0 (0x0c039c9c to 0x0c039cbc).
- A depth of 16 or more calls `set_stack_overflow` and branches straight to the
  close (0x0c039cc8 to 0x0c039ccc), so even the failing push finishes.
- The close (0x0c03a8bc to 0x0c03a8d0) sends the same two words again and the
  finish-read engine handler (`gepc`+0x678, `mgesi_FinishRdata`) to port
  0x8c0, then returns. Every other path in the function falls through to it;
  there is no early return.
- The opening and closing are word for word what `arm_getcurrent` does
  (0x0c038470 to 0x0c038490 and 0x0c0384a8 to 0x0c0384bc), the query whose
  completion the table already treats as normal. `arm_getcurrent` adds a
  reply-count write (0x476 = 13) between them; `arm_pushattrib` writes a
  count only inside the bits that send data.
- Mask bits the function tests, by `tst r5` (the complete list, 19 tests):
  0x1, 0x2, 0x4, 0x8, 0x10, 0x20, 0x40, 0x80, 0x100, 0x200, 0x400, 0x800,
  0x1000, 0x2000, 0x4000, 0x8000, 0x40000, 0x80000, 0x20000000. Bits 0x10000
  and 0x20000 are not tested. With the OpenGL meaning of the mask, 0x20000 is
  the list bit (list base) and 0x10000 the evaluator bit. For mask 0x20000
  the handler therefore pushes the entry (stores the mask in the stack
  record, bumps the depth) and closes. Nothing is sent to the host between
  open and close.
- Which engine handler writes the completion word: the closing
  `mgesi_FinishRdata` (`hostio.S` lines 409-467, entry 0x6a32, listing
  `software/ucode/ge_listing/hostio.S.lst`). It restores the second output channel's
  registers (0x460-0x464, 0x440, 0x476) and ends in a group-31 transfer. The
  table's completion-rule row already records that the literal last word is
  taken from an operand the caller supplies and that this operand was not
  traced to a constant (inferred). That open point is shared by every query,
  so it does not separate push from the other queries that do complete.

### The 0x10b step (established placement, inferred effect)

- The only place the firmware builds the 0x10b descriptor (0x58514800) is
  0x0c03a150 to 0x0c03a158, inside the block entered when the lighting bit
  0x40 is set (`tst r5,#0x40` at 0x0c039f74; the `beq` at 0x0c039f78 skips
  the block, `material_push` is called at 0x0c039f7c). So the table's
  "inside the push-attributes read-back bracket" needs the added condition
  "when the mask has the lighting bit". With mask 0x20000 it does not run.
- Engine `mgesi_PushAttrLights` (`getlight.S` lines 470-541, 0xc255-0xc283)
  was re-read. Its bus writes are 0x2c7 (staged), the reply header 0x476
  on 0x1f7, light-block words to the output window, and a zero to 0x1f4.
  It never writes 0x440, 0x460-0x464 or 0x477 and sends no count word, so it
  neither programs the output DMA nor writes word 0. Only `init_ged` sends it
  by name; the lighting block reaches it by the descriptor above. The table's
  statement that a bare 0x10b gets no completion word is unchanged
  (inferred: the claim is about absence of a write across the whole
  handler).

### Unknowns, with tests

| # | Unknown | Test that settles it |
|---|---|---|
| 1.1 | The literal non-zero value the finish handler writes to word 0, and that the DMA lands on the page base after 0xc9 | Capture the raster-bus writes of one completed query that uses the same bracket (for example a glGet of a state variable, or glFinish) and one push with mask 0x20000; compare registers 0x440, 0x460-0x464, 0x476 and the last data word. Equal brackets mean push completes the same way. |
| 1.2 | Whether the page the finish handler writes to is the page the client waits on in this run | In the command stream before the first 0xc9, find the read-back set-up token 0x1f2 (three words: address high, address low, 0x4000) and check its address pair equals the client's page (context +0x7b64). Check also whether an earlier wait in the same process completed: `cycles` calls `glGetIntegerv` (0x10009a54, 0x1000b8ec, 0x10012d88) and `glFinish` (0x1000b298) in its drawing code, but which of them runs before the first text is not established (the `glFinish` at 0x1001726c sits beside the context teardown). If an earlier query completed, 1.2 is closed. |
| 1.3 | Whether the pipe-memory reserve before the push was accepted as the attribute-stack store | `arm_mem_reserve` (0x0c024378) takes four words: memory kind, key, page, count (the kernel's own name for the second word is an id byte). Kind 0 is taken to select `mem_reserve_arm` (inferred: the four reserve routines sit in the order of the kernel's four pools; the table `reserve` at 0x040494d8 was not read). For [0,0,0,0x20] that routine (0x0c023b3c) stores the ARM-area base plus page times 2 KiB at context-area +0x1110 and count times 2 KiB at +0x10c8; `arm_pushattrib` then reads that base (0x0c039ce8) and the depth word (+0x10cc, 0x0c039c98). A reserve with key not 0 prints "invalid key" and leaves the base unset. Check the first word after 0x1e4 is 0 and the key word 0. (The client asked for 16 x 2048 bytes; whether 0x20 two-KiB pages is the kernel's rounding is unread.) |
| 1.4 | Whether anything after the "timed out" message shows the kernel's own check | The check-pipe ioctl sends 0x1dd, then the event number 0x105 (`kona_checkpipe`, `kona_crash.o` +0x1d8). The message is printed after that ioctl returns, so a stream with no 0x1dd after the message means the ioctl returned early (a check already running, or a validity failure), not that the pipe was asked. |

## 2. What 0x8003a8 bit 0 is

- Established: 0x8003a8 is `HH_TBUS_STATUS` (HIP.h): four sticky bits, DRAW 0,
  LOAD 1, ACTIVE 2, STALL 3. The names come from the kernel's use and from
  kpm, not from a published register description (inferred as names).
- Writers found (established): `kona_video_intr` (`kona_video.o` +0x17b8)
  writes 1 at +0x1830 to +0x1840 on every video interrupt (bit 3 of the
  interrupt status), whichever branch it took before; `kona_callout`
  (`kona_timeout.o`, label +0x214) writes 4 once per 500 ms watchdog tick;
  `kona_die` (`kona_crash.o`) saves it and writes 8; kpm's `setup_dma` writes
  1 (a diagnostic tool, not run here).
- No client writes it (established for what was scanned): a scan of every
  executable section for an upper-half load of 0x80 followed by 0x3a8 found no
  hit in the N32, 64-bit and o32 `libGLcore.so`, N32 `libGL.so`, `kona.so`,
  `konal.so`, `gfxinit` or `gfx.o`. The client talks through the command port
  (process address 0x4000), the return-data page and ioctls only. The
  observation "the client writes it in the wait loop" is therefore the kernel's
  video interrupt landing during the wait.
- Rate: 3,400 writes in 40 s is 85 per second. That fits one write per video
  interrupt at an 85 Hz field or frame rate; the run's configured rate is not
  known to this note, so the match is unproven.
- Readers (established): only `kona_callout` reads it and tests bit 2 only;
  `kona_die` reads it whole for the KONA_HEALTH save. Nothing tests bit 0.
  The pipe firmware does not read it: a search of `arm1.s` for the offset
  finds only unrelated state-block offsets (a negative from one text search).
- Expected pipe behaviour: none. The write is the kernel acknowledging a
  status bit. Inferred: write-one-clears, because the watchdog writes back the
  exact bit it tested. What sets DRAW is unknown.
- Consequence for the stalled wait: the video interrupt firing means the
  display generator and interrupt line are running; it says nothing about
  the command stream. The watchdog does matter: whenever a kernel timeout is
  pending (the check-pipe ioctl arms one), `kona_callout` calls the pipe hung
  ("Pipe hung: no TBUS or ARM activity") unless TBUS ACTIVE (bit 2) is set or an
  ARM interrupt has been seen in the tick, and then fires every pending
  timeout at once (established, `software/kernel/kernel.md` and `kona_timeout.o`).

| # | Unknown | Test |
|---|---|---|
| 2.1 | That the 3,400 writes are the video interrupt | Count video interrupts (bit 3 of the interrupt status) over the same 40 s; expect the same count, and the display format's refresh rate to be 85 Hz. |
| 2.2 | What sets DRAW, LOAD and STALL | No shipped software depends on them; a bus-level capture of the register during a draw would settle it. |

## 3. What `cycles` asks of the pipe

Method: the dynamic symbol table (48 core GL, 9 GLX, 6 GLU undefined
symbols) and call sites found by decoding every `lw t9,off(gp)`/`jalr` pair in
`.text` and mapping the global-offset slot to its symbol (the first global
slot is dynamic symbol 69, after 17 local slots, and the base register
is the table start plus 0x7ff0; the mapping was checked against the
shape of the call counts, for example 277 `glVertex3fv` and 96 `glEnd`).
Call sites are static; order of execution is not proven.

Imports (core GL): `glBegin glBitmap glBlendFunc glCallList glCallLists
glClear glClearColor glClearDepth glColor3f glColor3ub glColor3ubv
glDeleteLists glDepthFunc glDisable glEnable glEnd glEndList glFinish
glFlush glFrustum glGenLists glGetIntegerv glHint glLineWidth glListBase
glLoadIdentity glMatrixMode glNewList glOrtho glPixelStorei glPolygonMode
glPolygonStipple glPopAttrib glPopMatrix glPushAttrib glPushMatrix
glRasterPos3f glRectf glRotatef glScalef glShadeModel glTranslatef
glVertex2d glVertex2f glVertex2fv glVertex3f glVertex3fv glViewport`.
GLX: `glXUseXFont` (5 sites), `glXChooseVisual`, `glXCreateContext`,
`glXMakeCurrent`, `glXSwapBuffers`, `glXIsDirect`, `glXGetConfig`,
`glXQueryExtension`, `glXDestroyContext`. GLU: `gluOrtho2D gluLookAt
gluNewQuadric gluQuadricDrawStyle gluDisk gluPartialDisk`.

Push and pop sites (established, from the bytes):

| Site | Mask | Reading |
|---|---|---|
| 0x100160dc | `lui a0,2` = 0x20000 | `glPushAttrib(GL_LIST_BIT)`, then `glListBase`, `strlen`, `glCallLists(n, 0x1401, text)`, `glPopAttrib` at 0x10016118. This is the demo's text routine (function at 0x100160b0, called from 0x1000a5d0 after a `glRasterPos3f`). It is the observed 0xc9 with mask 0x20000. |
| 0x10011c30 | `addiu a0,zero,8` = 0x8 | `glPushAttrib(GL_POLYGON_BIT)`, `glPolygonMode(0x408, 0x1b01)` (front and back, line), a draw, `glPopAttrib` at 0x10011c64. A render-loop site. |

That the first push at run time is the text routine is inferred from the mask
and from the stack-storage reserve coming first; the call order was not run.

Command tokens for each core call, from `software/opengl/gl-command-map.tsv` (rows
established or inferred there) checked against `formats/token/command-table.md`:
all 48 entries have a row, and every token word that map shows for the
calls above is in the table: 0x03 / 0x57-0x60 begin, 0x71 end, 0x24 enable,
0x25 disable, 0x66, 0x63 colour, 0x8b, 0x8c, 0x90 vertices, 0xd0 to 0xdf
matrix operations, 0xd1 frustum, 0xd7 ortho, 0xe3 viewport, 0x1a clear, 0x1d
and 0x1f clear values, 0xc0 shading, 0xbd line width, 0xbb hint, 0xcb blend,
0xce depth function, 0xbf polygon mode, 0x0b polygon stipple, 0x33 pixel
store, 0x06 and 0x05 bitmap, 0xad raster position, 0xc7 flush, 0xc6 finish,
0x4c generic query, 0xc9 and 0xc8 / 0x119 / 0x1d6 / 0x1ca push and pop, 0xe4
error. No token outside the table was found.

Not traced to words (flagged, not missing):

- Display lists. `glNewList`, `glEndList`, `glCallList`, `glCallLists`,
  `glGenLists`, `glDeleteLists` and `glListBase` send no command word
  themselves (`gl-command-map.tsv` grades them "located"). What a replayed
  list sends is whatever its recorded calls send. `glXUseXFont` builds bitmap
  lists through `glNewList`, `glBitmap`, `glPixelStorei` and `glGetIntegerv`;
  the list form of a bitmap is token 0x05, already in the table.
- GLU internals. `libGLU.so` imports `glPushAttrib` and `glPopAttrib`, among
  other calls, so a GLU routine may add a push. Which GLU routine, and
  whether `cycles` reaches it, was not read.
- `glGetIntegerv` and `glRasterPos3f` may send more than the first token
  (the map lists a branch and a helper); the table's generic query row 0x4c
  and raster-position row 0xad cover their first words.

| # | Unknown | Test |
|---|---|---|
| 3.1 | Order of calls before the first wait | Set a breakpoint in `glPushAttrib` and log the caller; or read the command stream from the start of the run for the sequence of tokens before 0xc9. |
| 3.2 | Whether a GLU routine adds a push | Disassemble `libGLU.so` push sites and match against the six GLU imports. |
| 3.3 | What a replayed list sends | Trace one `glCallLists` of the demo's font lists and list the tokens. |

## Proposed command-table rows

Replace the row `| 0x0c9 | push the attribute stack | 1 | y | inferred | S3 |`
(section with the attribute stack, around line 447) with:

```
| 0x0c9 | push the attribute stack: the word is the GL attribute mask. The handler opens the read-back before it looks at the mask and closes it on every path, including a push onto a full stack (16 entries), so each 0xc9 ends with the finish handler writing the completion word. Bits 0x10000 and 0x20000 are not tested and nothing is read back for them; the client still waits. Bits that send data to the host are handled inside the handler (current values 0x1, lighting 0x40, texture 0x40000, transform 0x1000, and others) | 1 | y | established (open and close on every path; mask bits tested); inferred (the finish handler's last word is the completion value) | S3, S63, S64 and a new entry for `arm_pushattrib` 0x0c039c80 and N32 `__glkonim_PushAttrib` 0xd95d8b0 |
```

Replace the leading clause of the 0x10b row's description (line 779) so it
reads "... the firmware injects it with descriptor 0x58514800 inside the
push-attributes read-back bracket, only when the mask has the lighting bit
0x40 (`arm_pushattrib` 0x0c039f74, injection 0x0c03a150) ...". The rest of
the row and the "bare gets no completion word (inferred)" text stand.

Add one sentence to the completion-rule row of the return-data table (line
1716, "completion word"): "Push attributes (0xc9) is a bracketed query for
every mask: the client waits after every 0xc9 and the pipe closes the
read-back on every path, so a mask with no host-bound bits (for example
0x20000) still completes."

Replace the `| 0x1e4 | pipe-memory reserve (privileged) | 4 | y | inferred | S3 |`
row with one that names the words:

```
| 0x1e4 | pipe-memory reserve (privileged): words memory kind, key, page, count. Kind 0 with key 0 (the case the attribute stack uses) sets the context's attribute-stack base to the ARM-area base plus page times 2 KiB and its size to count times 2 KiB; any other key prints "invalid key" and changes nothing. Followed in the kernel's stream by the no-op token 0x172 and a zero word | 4 | y | established (what `mem_reserve_arm` does for key 0); inferred (that kind 0 selects it) | S3 and a new entry for `arm_mem_reserve` 0x0c024378 and `mem_reserve_arm` 0x0c023b3c |
```

Add a row to the register table that holds the host-interface registers, or
extend an existing note, for `HH_TBUS_STATUS` (0x8003a8): "bit 0 (DRAW) is
written 1 by the kernel once per video interrupt; bit 2 (ACTIVE) is the only
bit the watchdog reads; a write of 1 to a bit clears it (inferred); the
client never touches it (established)." The register is described in
`HIP.h` already; this only adds the writer list.
