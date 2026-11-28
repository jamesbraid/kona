# X tokens while a GL context is current, and two GL contexts switched back to back

What the pipe does when an X drawing or load token arrives while a GL context is the one the pipe runs, and what happens across a switch between two GL contexts. It answers request K8 of the NT 4.0 InfiniteReality design (graphics-kona section 9). No shipped software or published source states the interaction as a rule, so most of this page is what the pieces say when read together; each row says how it is known.

Labels are **established** (read in full from a binary, with address), **inferred** or **unknown**. IRIX 6.5.30m, one InfiniteReality2 pipe on an IP27 host. No hardware was read.

## Answer first

| Question | Answer | Label |
|---|---|---|
| Does IRIX ever send an X token while another node's context is current? | Not by any path read. Every client reaches the pipe through a mapping that a fault validates, and the validation makes the client's own node current first; the X server is a node like the others (it is the board's manager and is exempt only from the bank packet and from eviction) | established for the fault, switch and exemption control flow; inferred that no other path exists |
| What does the pipe do with an X token that arrives anyway, outside a begin/end pair? | It runs it against the current context's state. Nothing in the token handlers or the context image distinguishes an X context from a GL one | inferred; the handlers read, the absence of a check is from their code |
| Inside a begin/end pair? | Every X load, drawing and pixel token is marked illegal between begin and end. The host interface sends it to `arm_bgnend`, which records an invalid-operation error in the context, reads and discards the token's payload by a per-token count, and carries on | established |
| What of the GL state do the X loads overwrite? | the nine raster registers and four engine words that `X_LOADGC` names, so a GL context that receives one has its colour format, read format, draw buffer, read-back format, colour base, logic-op code and bus pixel format replaced. Nothing found restores them | established for the writes; inferred that nothing restores them |
| What of the GL state do the X tokens leave alone? | depth test and stencil enables, blend enable, alpha test, fog, texturing, multisample and the window-id test register. An X fill in a GL context may therefore be depth-, stencil-, blend- or id-tested as that context left them | inferred |
| Two GL contexts back to back | the kernel sends deactivate, waits for the pipe's event, then load (a context seen before) or init (a new one), then clip and bank packets, then the saved activate token. The pipe saves and restores per-context state itself; no host-written state crosses the switch | established |
| What does not survive a switch | the 513-entry texture load and bind id tables are reset at every activation, so every texture must be bound again; and the raster registers themselves are not shown to be rewritten from the saved shadow | established for the id reset; the raster rewrite unknown |

## IRIX never mixes them: the control flow

All of this is **established** from the kernel readings; the unmapping rule is inferred.

- Each client of the pipe, the X server included, owns a rendering node with its own context slot, a 64 KB save area and a return-data page ([kernel.md](../../software/kernel/kernel.md#rendering-node-drawable-and-private-record)). The X server's node is the board's manager: its node skips the `VALIDATE_BANK` packet and is never evicted from a slot ([kona_act_pcx and rrmAllocPcxid](../../software/kernel/kernel-functions.md)).
- A client's mapping of the command page is filled on first touch. A touch while the client is unmapped enters `RRM_ValidFault`, which requires the client's node to have the context bit valid; if it does not, `rrmValidateMyPcx` makes it current (marking the previous node's context bit invalid) and only then does `KONAmapgfx` map the page.
- `clean_up_other_gfxp` unmaps every other connection of the same thread before a switch, so a thread never holds two mappings. Between threads, `rrmSuspend` and `rrmResume` unmap or revalidate a connection when its thread stops or resumes, and a mismatch between requested and valid bits unmaps it so the next touch faults.

So each client's writes happen under its own current context. **Inferred:** this is the discipline the X server relies on, and the reason no source states what an X token does in a GL context. A driver that does not keep that discipline is outside anything the shipped software exercised.

## An X token in the current context

**Inferred**, from the handlers:

- The X load and draw tokens are hardware-routed or ARM-run handlers that write the current context's shadow and engine state. There is no X-versus-GL mode in the context record. The context's pixel record has a kind (1, 2 or 3); kind 3 is the X pixel path, and `arm_context_activate` restores it through `XPixelRestore` ([arm1_functions.md](../../software/ucode/arm1_functions.md)), so a pixel write that straddles a switch resumes.
- `X_LOADGC` ([command-table.md 7.8](../../formats/token/command-table.md#78-x-graphics-context-load-token-0x129-thirteen-words-and-its-companion-loads)) writes, under fixed masks, raster registers `0x1c14` and `0x1c15` (plane masks), `0x1c00` (colour format 5:2, read format 13:11), `0x1c02` (draw buffer 3:0, read-back format 17:14, read base 23:18), `0x1c0b` (colour base), `0x1c0d` (logic-op code, bits 4:1 only), `0x3ff8` (bus format), `0x140f` and `0x1410`. Those are shadow words 45, 46, 36, 37, 43, 44, 47, 87 and 86. A GL context sets some of these once, in `kona_writeconfig`, and the library does not resend them on a make-current of an already configured context ([opengl.md](../../software/opengl/opengl.md#who-calls-them-the-contexts-function-table)). **Inferred:** after an X load in a GL context the next GL draw uses the X format words until the buffer configuration is sent again.
- The masks leave `0x1c0d` bit 0 (logic-op enable) and bit 5 (blend enable), `0x1c07` (stencil), `0x1c08` (depth test and function), `0x1407` (alpha test), `0x1403` (fog), `0x1500` (texturing), `0x1c03` (multisample) and `0x1c06` (window-id test) as the context had them. The X initialiser `x_initregs` (`arm1.u` 0x0c03d0b8, run by token `0x128`) writes its own defaults for several of them, but no shipped module sends `0x128` ([architecture.md](architecture.md)), so an X server context starts from the GL defaults that `context_init` writes. The two sets, read in full this pass (`x_initregs`, `init_tg` 0x0c0038e8, `prim_init` 0x0c016584, `color_init` 0x0c014084 and `depth_init` 0x0c014a9c, all established):

  | Raster register | X initialiser | GL context default | Difference |
  |---|---|---|---|
  | `0x3fcf`, `0x3fd0` (point, line generator buffers) | `0x10`, `0x10` | `0x10`, `0x10` | none |
  | `0x3fd1`, `0x3fd2` (triangle generator buffer, image buffer) | `0xf`, `0xf00f` | `0xf`, `0xf00f` | none |
  | `0x3fd3` (generator enables) | `0xa` | `0xe` | bit 2 (listed as the depth unit, inferred) off for X, on for GL |
  | `0x1c0d` (blend and logic-op word) | `0x7`: logic-op enable and code 3 | `0x11006`: code 3, logic-op and blend enables off, other fields `0x11000` | the enable bit and the `0x11000` fields |
  | `0x1c14`, `0x1c15` (plane masks) | `0xffffff`, `0xffffff` | all ones written under an all-ones mask | register width only |
  | `0x1c06` (window-id test) | 0 | 0 at start-up, set by the clip request | none until a clip is sent |
  | `0x1c07` (stencil) | 0 | `0x1fffe01c`, enable bit clear | the other fields; both test-off |
  | `0x1c08` (depth) | 0 | `0x12c00`, enable bit 9 clear | the function field; both test-off |

  So at the defaults depth test, stencil, blending and the id test are off in both sets, and the only difference that could change an X fill is `0x3fd3` bit 2 and the logic-op enable. Whether either matters is **unknown**: the role of `0x3fd3`'s bits is inferred from the order of the diagnostic's name list, and what the logic-op enable does for code 3 (copy) was not read. The registers `0x1c02`, `0x1c03`, `0x1c0b` and `0x0800` are also written by `x_initregs` (`0x11`, `0`, `0x0c20a281`, `1`); the GL values depend on the buffer configuration sent later, so they were not compared. **Inferred:** a fill in a GL context that has turned depth test, stencil, blending or the id test on is subject to them. Whether the X drawing modules bypass any of these tests is **unknown**: the engine modules `xentry.S`, `xsetup.S`, `xload.S` and `xclipdraw.S` end in raster-bus vertex and pixel words, the same destination as GL ([architecture.md](architecture.md)), and that the raster boards then apply the tests to them was not read.

**For the NT driver** (a consequence, not a finding): keep the desktop's drawing in its own context, created with `CONTEXT_INIT` like the X server's, and give each GL context its own, switched exactly as below. That keeps `X_LOADGC` out of every GL context. For a bug check inside a GL run, the design's plan of making the desktop context current first is the safe form; what happens if X fills are sent in the GL context is the unknown recorded here, so a first test would send a fill with every test register left as GL had it and read the screen back.

| Open question | What would settle it |
|---|---|
| Whether X draw modules bypass depth, stencil, blend and the window-id test | the raster-board register description, or a model of the raster path; no shipped software sends an X fill with a test on |
| Whether `X_LOADGC` after GL leaves the buffer configuration changed | a trace in which a GL context receives an X load and then draws; or the whole engine routine `mgebi_XLoadGC` (`xload.S.lst` 0x4cf4 to 0x4d13) read for registers beyond the nine named |

## Two GL contexts back to back

**Established**, `KONApcxswap` (`kona_context.o` +0x680) and `kona_act_pcx` (+0x124), 6.5.30m; the pipe side from `arm1.u` 6.5.30m.

1. If the pipe is dead the kernel returns at once. Otherwise it unmaps the thread's other connections (`clean_up_other_gfxp`) and makes the incoming node's pipe-memory blocks resident (`kona_mem_validate`).
2. **Deactivate the outgoing context.** Arm the deactivate timeout, send `CONTEXT_DEACTIVATE` (token 508, `0x1fc`) with the context's slot number (a 176-byte slot index), and sleep until GE event `0x101`. On timeout the kernel logs, kills the pipe (reason 2) and wakes the sleeper.
3. **Bring in the incoming one.**
   - A context seen before: `CONTEXT_LOAD` (token 505, `0x1f9`) with the image length word, the save area's pipe-space address pair and the marker `0xedededed`; then `kona_act_pcx`.
   - A new context: `CONTEXT_INIT` (token 509, `0x1fd`) with the address pair and `0x10000`, then `RDATA_SETUP` (token 498, `0x1f2`) with the return-data address pair and `0x4000`; the initialised flag is set and `kona_act_pcx` is skipped.
4. **`kona_act_pcx`, for a loaded context:** restore the node's pipe memory and DMA pool (`kona_mem_update`, `kona_dmapool_update`), then, each as its own packet bracketed by command-port kicks: `VALIDATE_CLIP` (499, 11 words) when the draw pane's serial differs from the node's cached copy, `VALIDATE_READCLIP` (494, 3 words) likewise for the read pane, `VALIDATE_BANK` (500, two halfwords) unless the node belongs to the manager, then the *activate token the pipe itself left in word 2 of the save area* and one zero word. `KONApcxswap` writes the closing kick.

What the pipe does with them. **Established** (`arm1.u`):

- `arm_context_deactivate` (token `0x1fc`, privileged only) stamps its guard word, saves the host-interface state (owed word count, pass-through counter, begin/end state, previous and current command numbers, array loop), the engine and distributor state, and the ARM's own state-block (`0x2ca` words), context record (`0x44a` words), 17 registers and stack into the 64 KB save area as tagged sections, and writes zero to raster register `0x3ff1`.
- `arm_context_load` (token `0x1f9`) reads a `0x52`-word header, walks its three-word entries by tag, and requires the end marker `0xedededed`; a header word that disagrees with the first payload word makes it print and hang.
- `arm_context_activate` (token `0x1fa`) restores pixel state (kind 1 or 2) or X pixel state (kind 3), then `activate_private` (vertex arrays, transforms, fog, lighting power table, textures and min/max; antialiased-line table and polygon stipple when flagged), the engine selection, engine registers (`activate_geregs`), engine FIFO, distributor tables (`activate_ged`) and, last, the host-interface registers (`activate_hip`), and returns into the interrupted ARM code if one was saved.
- A half-received command survives: the host-interface state keeps the previous-token register and begin/end flag, and the map entry of the interrupted token is re-pointed at the activate handler.
- `activate_texture` zeroes both id counters, writes zero to raster operands `0x5003`, `0x1003`, `0x1002` and `0x5002`, and invalidates all 513 cache entries, so no texture load or bind survives a switch.

**Not shown:** that the raster registers (`0x1c00` and the rest of the 89-word shadow) are rewritten from the saved shadow at switch-in. The shadow is saved and loaded back into the engines' shadow RAM, but no switch-in routine was found writing it out to the raster bus (the only walk of the shadow to the bus is the reload in `reset_imps`); [command-table.md section 7.10](../../formats/token/command-table.md#710-texture-load-headers-tokens-0x173-0x174-and-0x176) records this as inferred. Which GL context's depth, blend and colour-format registers the raster boards hold after a switch is therefore **unknown**. What would settle it: a read of `restore`, `activate_geregs` and engine handler slot 132 for raster-bus writes of the shadow range `0x1c00` to `0x1c15`, or a trace of two contexts with different blend states drawn alternately.

**Back to back means nothing extra on the wire.** The sequence above is the whole switch; no packet separates two switches, and a switch needs the previous one to have completed (the deactivate event). A host that sends two switches without the event in between is outside the shipped sequence, and the kernel's timeout kills the pipe if the event is late.

## What the NT driver takes from this

- Switch lazily, at the first run submitted by a context that is not current, with exactly the sequence above, and treat a missing `0x101` event within the bounded wait as a dead pipe.
- After `CONTEXT_INIT` the GL library still sends `HP_BUFFER_CONFIG`, `HP_PACK` and, for a separate read target, the read configuration, once per context ([opengl.md](../../software/opengl/opengl.md#who-calls-them-the-contexts-function-table)); nothing in the kernel sequence does.
- Rebind every texture after a switch; keep each context's table records in its own save area (the pipe does).
- Do not send X tokens in a GL context. If a bug-check path must, expect the format overwrite and the unknown test interaction above.
