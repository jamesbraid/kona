# libGLcore list records and dispatch wrappers

These IRIX 6.5.30m readings use the exact build paths below. Each body was
disassembled in full as big-endian MIPS with Capstone. The accompanying
[listing](libglcore-list-records.s) preserves every instruction and the GOT
resolutions used to identify calls.

Every IP35 comparison below covers the entire stated byte range, not a
normalised instruction sequence. Identical code does not establish identical
data or runtime state. No entry claims a direct FIFO write unless it names
the value and store instruction.

## `__glce_RasterPos4s` (IP27KONA64)

- `__glce_RasterPos4s`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ebc380, 140 bytes.
  Established. Calls `glRasterPos4s` twice (`jalr` at 0x2ebc3c4, `jalr` at 0x2ebc3e8), with its
  dispatch slot at 0x1ef0 first replaced by the pointer from context +0x2940 (`ld` at 0x2ebc3bc,
  `sd` at 0x2ebc3c8), then by context +0x46b8 (`ld` at 0x2ebc3e0, `sd` at 0x2ebc3ec). The original
  slot is saved before either call and restored in the return delay slot (`ld` at 0x2ebc380, `sd` at
  0x2ebc394, `ld` at 0x2ebc3fc, `sd` at 0x2ebc408). This is a two-dispatch wrapper, with no
  conditional branch in its body.
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x229c380, 140 bytes, identical.

## `__glce_RasterPos4i` (IP27KONA64)

- `__glce_RasterPos4i`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ebc270, 140 bytes.
  Established. Temporarily redirects the `glRasterPos4i` dispatch word: context +0x2930 supplies the
  first pointer and context +0x46a8 the second (`ld` at 0x2ebc2ac, `sd` at 0x2ebc2b8, `ld` at
  0x2ebc2d0, `sd` at 0x2ebc2dc). Both calls are visible (`jalr` at 0x2ebc2b4, `jalr` at 0x2ebc2d8).
  The incoming word at 0x1ee0 survives on the stack and is restored on return (`ld` at 0x2ebc270,
  `sd` at 0x2ebc284, `ld` at 0x2ebc2ec, `sd` at 0x2ebc2f8).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x229c270, 140 bytes, identical.

## `__glce_RasterPos4f` (IP27KONA64)

- `__glce_RasterPos4f`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ebc160, 140 bytes.
  Established. Preserves the first float argument with `mov.s` while running `glRasterPos4f` through
  two dispatch pointers (`mov.s` at 0x2ebc1a0, `jalr` at 0x2ebc1a4, `mov.s` at 0x2ebc1c0, `jalr` at
  0x2ebc1c4). It loads those pointers from context +0x2920 and +0x4698 and installs each at 0x1ed0
  (`ld` at 0x2ebc19c, `sd` at 0x2ebc1a8, `ld` at 0x2ebc1bc, `sd` at 0x2ebc1c8). The saved incoming
  dispatch value is written back in the return delay slot (`ld` at 0x2ebc160, `sd` at 0x2ebc174,
  `ld` at 0x2ebc1dc, `sd` at 0x2ebc1e8).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x229c160, 140 bytes, identical.

## `__glce_RasterPos4d` (IP27KONA64)

- `__glce_RasterPos4d`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ebc050, 140 bytes.
  Established. Runs the double-coordinate entry `glRasterPos4d` twice (`jalr` at 0x2ebc094, `jalr`
  at 0x2ebc0b4), keeping the first coordinate in a saved floating-point register (`mov.d` at
  0x2ebc090, `mov.d` at 0x2ebc0b0). Its context supplies pointers at +0x2910 and +0x4688 for
  successive writes to dispatch slot 0x1ec0 (`ld` at 0x2ebc08c, `sd` at 0x2ebc098, `ld` at
  0x2ebc0ac, `sd` at 0x2ebc0b8). The prior slot contents are restored before control leaves (`ld` at
  0x2ebc050, `sd` at 0x2ebc064, `ld` at 0x2ebc0cc, `sd` at 0x2ebc0d8).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x229c050, 140 bytes, identical.

## `__gllc_RasterPos2f` (IP27KONA32)

- `__gllc_RasterPos2f`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3c9a0, 140 bytes.
  Established. Records two scalar float coordinates: `__glDlistAllocOp2` receives an 8-byte payload
  request (`addiu` at 0xda3c9c8, `jalr` at 0xda3c9cc). The nonzero allocation path is selected by
  `bnez` (`bnez` at 0xda3c9d4). Zero falls through to return. The record gets opcode 0x21 at +0xc
  and the two floats at +0x10 and +0x14 (`addiu` at 0xda3c9d8, `sh` at 0xda3c9ec, `swc1` at
  0xda3ca04, `swc1` at 0xda3ca00). It sets context +0x1384 bit 0x20 before calling
  `__glDlistAppendOp` (`ori` at 0xda3ca18, `sw` at 0xda3ca20, `jalr` at 0xda3ca1c).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3c9a0, 140 bytes, identical.

## `__gllc_RasterPos2sv` (IP27KONA32)

- `__gllc_RasterPos2sv`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3cc70, 144 bytes.
  Established. Copies a two-short vector into a list operation after requesting 4 payload bytes
  (`addiu` at 0xda3cc90, `jalr` at 0xda3cc9c). `bnez` takes the allocation-success path (`bnez` at
  0xda3cca4). Opcode 0x23 goes at +0xc, and signed halfwords from input +0 and +2 go at record +0x10
  and +0x12 (`addiu` at 0xda3ccc4, `sh` at 0xda3ccc8, `lh` at 0xda3cccc, `sh` at 0xda3ccd0, `lh` at
  0xda3ccd4, `sh` at 0xda3ccd8). Context bit 0x20 is raised before `__glDlistAppendOp` (`ori` at
  0xda3ccec, `sw` at 0xda3ccf4, `jalr` at 0xda3ccf0).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3cc70, 144 bytes, identical.

## `__gllc_RasterPos2s` (IP27KONA32)

- `__gllc_RasterPos2s`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3cbe0, 144 bytes.
  Established. The scalar-short recorder reserves 4 bytes via `__glDlistAllocOp2` (`addiu` at
  0xda3cc04, `jalr` at 0xda3cc10). A nonzero return branches to record construction (`bnez` at
  0xda3cc18): opcode 0x23 at +0xc and the saved scalar arguments at +0x10/+0x12 (`addiu` at
  0xda3cc1c, `sh` at 0xda3cc30, `sh` at 0xda3cc48, `sh` at 0xda3cc40). It updates the context flag
  word at +0x1384 with bit 0x20, then appends the record (`ori` at 0xda3cc5c, `sw` at 0xda3cc64,
  `jalr` at 0xda3cc60).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3cbe0, 144 bytes, identical.

## `__gllc_RasterPos2iv` (IP27KONA32)

- `__gllc_RasterPos2iv`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3cb50, 144 bytes.
  Established. Builds an integer-vector raster-position record. The allocator is called for 8 bytes
  and `bnez` skips the early return only on success (`addiu` at 0xda3cb70, `jalr` at 0xda3cb7c,
  `bnez` at 0xda3cb84). The input words at +0 and +4 are copied to record +0x10 and +0x14 (`lw` at
  0xda3cbac, `sw` at 0xda3cbb0, `lw` at 0xda3cbb4, `sw` at 0xda3cbb8). Opcode 0x22 is stored at +0xc
  (`addiu` at 0xda3cba4, `sh` at 0xda3cba8). Appending follows a context +0x1384 OR with 0x20 (`ori`
  at 0xda3cbcc, `sw` at 0xda3cbd4, `jalr` at 0xda3cbd0).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3cb50, 144 bytes, identical.

## `__gllc_RasterPos2i` (IP27KONA32)

- `__gllc_RasterPos2i`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3cac0, 144 bytes.
  Established. Captures two scalar integers in an 8-byte list payload (`addiu` at 0xda3cae4, `jalr`
  at 0xda3caf0, `sw` at 0xda3cb28, `sw` at 0xda3cb20). The allocation check branches to the writer
  for a nonzero result (`bnez` at 0xda3caf8). It labels the operation 0x22 at record +0xc (`addiu`
  at 0xda3cafc, `sh` at 0xda3cb10). The append call executes with context bit 0x20 set (`ori` at
  0xda3cb3c, `sw` at 0xda3cb44, `jalr` at 0xda3cb40).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3cac0, 144 bytes, identical.

## `__gllc_RasterPos2fv` (IP27KONA32)

- `__gllc_RasterPos2fv`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3ca30, 144 bytes.
  Established. Loads two floats from the caller's vector and stores them in the allocated operation
  at +0x10/+0x14 (`lwc1` at 0xda3ca84, `swc1` at 0xda3ca8c, `lwc1` at 0xda3ca90, `swc1` at
  0xda3ca98). Its 8-byte allocation request calls `__glDlistAllocOp2`, and `bnez` enters this copy
  path only for a nonzero pointer (`addiu` at 0xda3ca50, `jalr` at 0xda3ca5c, `bnez` at 0xda3ca64).
  The opcode is 0x21 (`addiu` at 0xda3ca7c, `sh` at 0xda3ca80). Context +0x1384 gains bit 0x20
  before the append (`ori` at 0xda3caac, `sw` at 0xda3cab4, `jalr` at 0xda3cab0).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3ca30, 144 bytes, identical.
