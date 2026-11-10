# Curve quantiser (`getS2p7`): the clamp and the halving

Scope: the routine in the N32 build of the client library `libGLcore` (IP27KONA32) that turns one detail or sharpen curve sample into a 10-bit code for token 0x17e. Settled by disassembling the shipped binary. No vendor source was read. Addresses are virtual addresses in that build.

Not re-checked here: the IP27KONA and IP27KONA64 builds that [rm.md](../rm.md) also cites, and the sign and sample grid of the curve (both stay as the command-table row has them).

## Answer

The description in [rm.md](../rm.md) and in [verify-corrections.md](verify-corrections.md) (commit e5ad18d) is right. The clamp is asymmetric, -1024 to 1023, and the routine does halve the value while it lies outside -128 to 127, counting the halvings. The "+/-0x3ff" bound is wrong. It was the text of the command-table row before e5ad18d; that commit already replaced it.

## Evidence

Each address below is an instruction in the N32 build. "Established" means read directly from the listing and the literal bytes.

Constants (established):

- 0x0d9650d0 `lwc1` loads a single-precision constant at gp-0x3f84. With gp = 0x0da90fd8 (the ELF `MIPS_GP_VALUE`) the literal is at 0x0da8d054; its bytes are 0x44000000, which is 512.0.
- 0x0d9650d8 `ldc1` loads a double-precision constant at gp-0x3d90, which is 0x0da8d248. Its bytes are 0x4000000000000000, which is 2.0.

Sample to integer (established):

- 0x0d9650d4 `mul.s`: v x 512.0 in single precision, before the add.
- 0x0d9650dc `cvt.d.s` and 0x0d9650e0 `add.d`: widen the product and add 2.0 in double precision.
- 0x0d9650e4 `trunc.w.d` and 0x0d9650e8 `mfc1`: truncate toward zero to a 32-bit integer.
- 0x0d9650ec `sra`: arithmetic shift right by two, giving n.

Clamp to -1024..1023 (established):

- 0x0d9650f0 tests n < 1024. 0x0d9650f4 preloads -1024. 0x0d9650f8 branches to 0x0d965138 when n < 1024; the fall-through at 0x0d965100 sets 1023 for n >= 1024.
- The lower bound is applied at 0x0d965138 with `movz`, using the flag from the delay slot at 0x0d9650fc (n < -1024). n is kept when it is at least -1024, and -1024 stands otherwise.

Halving loop (established, and it exists):

- 0x0d965104 zeroes the halving count. The loop body is 0x0d965110 (`sra` by one), with the count increment at 0x0d96511c in the delay slot of the branch at 0x0d965118. The count therefore rises once per halving.
- The loop repeats while the value is at least 128 (0x0d965114 to 0x0d965118) and while it is below -128 (0x0d965120 to 0x0d965124). It stops once the value is in -128..127.
- A value already in -128..127 at entry skips the loop with count 0 (0x0d96513c to 0x0d965148).

Output encoding (established):

- 0x0d96512c and 0x0d965130 shift the low mantissa byte left two. 0x0d965134 ORs in the count. The in-range path at 0x0d965150 to 0x0d965154 returns the same encoding with count 0.
- Result: code = count | ((n & 0xff) << 2), with count in 0..3 and n in -128..127, so the represented value is n x 2^count / 128.

Worked values, by hand from the listing (not run):

| input v | n after clamp | halvings | code | value |
|---|---|---|---|---|
| 8.0 | 1023 | 3 | 0x1ff | 7.9375 |
| 2.0 | 256 | 2 | 0x102 | 2.0 |
| -2.0 | -256 | 1 | 0x201 | -2.0 |
| -8.0 | -1024 | 3 | 0x203 | -8.0 |

## Replacement row for the command table

The table cell has no unescaped `|`, and the output encoding is written with "OR" for that reason. Whoever applies the row should use it as written.

```
| detail and sharpen curve (0x17e, kinds 1 and 2) | 64 samples at x_i = log2(i/64); the detail samples are doubled (x2) and the sharpen samples negated; each sample v is quantised by `getS2p7`: n = trunc(v x 512 + 2) >> 2 (the multiply is single precision, the add double, the shift arithmetic), clamped to -1024..1023, then halved (arithmetic) until it lies in -128..127, counting the halvings (0 to 3); the 10-bit code is ((n & 0xff) << 2) OR count, representing n x 2^count / 128; default points (-4, 1) and (0, 0). This settles which sign sharpening takes | established | CL N32 `getS2p7` 0x0d9650d0-0x0d965158 (clamp 0x0d9650f0-0x0d965138, halving 0x0d965104-0x0d96511c, encoding 0x0d96512c-0x0d965134) |
```

## Superseded

Nothing in this file contradicts a findings file. Both [volume-detail-sharpen.md](volume-detail-sharpen.md) section 3 (commit 7b8cb0c) and verify-corrections.md already state the -1024..1023 bound and the halving, and this listing confirms both.

The one superseded text is the pre-e5ad18d command-table row, which read "clamped to +/-0x3ff". That row is gone from HEAD, which carries the replacement above.
