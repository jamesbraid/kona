# GL entry point to command word map

[gl-command-map.tsv](gl-command-map.tsv) gives one row per public GL entry stub in the N32 `libGLcore.so` of IRIX 6.5.30m (`usr/gfx/arch/IP27KONA32/libGLcore.so`). Each row names the sender that the immediate-mode dispatch table holds for that entry, and the words the sender stores to the command port (absolute 0x4000), with the token where one is established. [scripts/gl_command_map.py](../scripts/gl_command_map.py) produces the table from the binary. The o32 and 64-bit builds and the IP35 builds were not read.

## The chain

1. **Established.** An entry stub is `lw $t9,OFF($zero)`, `jr $t9` and a delay-slot nop; The stub at 0xda78494 is 12 bytes. It loads the absolute word at OFF. Some stubs are longer (the one at 0xda784a0 is 20 bytes) but load their slot the same way.
2. **Established** for the base: in `MakeCurrentRead` (`kon_context.s`) the copy loop writes each saved word to the global table at `$a1 + offset`, with `$a1` set to 4176. The offsets of the 505 stubs give table indexes 0 to 504 under that base. The sender name contains the entry name in 451 rows, and the rest are aliases, unimplemented stubs and list-mode routines.
3. **Established.** `__glkonim_dispatchState` is 1888 bytes at 0xda81298 in `.data`, 472 words. Each word holds the address of a sender, and the names agree with the entry names in the rows above.
4. **Established**, from `MakeCurrentRead` in `kon_context.s`: the code copies `__glkonim_dispatchState` into the context at +8032, and on a second path copies the context's saved table (+8032) into the global table at 4176 and stores 4176 at context +6132. **Inferred:** the global table holds the immediate table while a context is in immediate mode. The rest of the function, which chooses between the two paths, was not read whole.
5. **Established** for each row, from the sender's fact sheet: every store to 0x4000 in address order, with its value.

## Grades

- **established**: the sender body has no conditional branch, no register jump other than the return, and no call before its last command-port store. The first command-port store is a constant, or an expression that ends in a constant byte, which gives the token.
- **inferred**: as above, but a branch or call comes before a store, so the stored words depend on the path. The row lists every store, not one token.
- **located**: the sender stores no command word (unimplemented stubs and error-only senders, which call `__glSetError`), or it sends through a helper the table does not follow, or its first store is not a constant.

Counts at this revision: 505 entries, 199 established, 102 inferred, 204 located.

## Hand readings

The fact sheet did not evaluate the masked byte words of three senders, so each body was read from `objdump -d` and the rows were filled in by hand:

- `__glkonim_Color3b`: token 0x061 (`ori v0,v0,0x61` before the first store).
- `__glkonim_Color4b`: token 0x069.
- `__glkonim_Normal3b`: token 0x076.

`__glkonim_Begin` stores KONA_HP_BEGIN_POINTS (0x057) plus the mode in `a0`, the same as the GE.h macro `KONA_HP_BEGIN`. Its error path stores 0xe4 and 0x500, so the row is inferred.

## Limits

- The list-compile senders in `g_lcompex.s` (`__glce_*`) write their own addresses into the global table, so the immediate map applies only while the immediate table is installed. Entries inside a display list do not follow it.
- Path-dependent rows list all their stores. For example, the sender at 0xda663c4 sends 0xe4 (HP_SETERROR) with payload 0x500 on its invalid-mode path and 0x011 (HP_TEXENVF) otherwise.
- Located senders include the texture, pixel and transform senders that send through helpers. The helpers were not followed.
- Token names are the `KONA_HP_*` names in [GE.h](../GE.h). A name is the first one listed for the value.
