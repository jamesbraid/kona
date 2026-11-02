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
  conditional branch in its body. The called GL stub `glRasterPos4s` loads this slot and jumps
  through it (`ld` at 0x2edd764 and `jr` at 0x2edd768, both in `glRasterPos4s`).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x229c380, 140 bytes, identical.

## `__glce_RasterPos4i` (IP27KONA64)

- `__glce_RasterPos4i`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ebc270, 140 bytes.
  Established. Temporarily redirects the `glRasterPos4i` dispatch word: context +0x2930 supplies the
  first pointer and context +0x46a8 the second (`ld` at 0x2ebc2ac, `sd` at 0x2ebc2b8, `ld` at
  0x2ebc2d0, `sd` at 0x2ebc2dc). Both calls are visible (`jalr` at 0x2ebc2b4, `jalr` at 0x2ebc2d8).
  The incoming word at 0x1ee0 survives on the stack and is restored on return (`ld` at 0x2ebc270,
  `sd` at 0x2ebc284, `ld` at 0x2ebc2ec, `sd` at 0x2ebc2f8). The called GL stub `glRasterPos4i` loads
  this slot and jumps through it (`ld` at 0x2edd744 and `jr` at 0x2edd748, both in `glRasterPos4i`).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x229c270, 140 bytes, identical.

## `__glce_RasterPos4f` (IP27KONA64)

- `__glce_RasterPos4f`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ebc160, 140 bytes.
  Established. Preserves the first float argument with `mov.s` while running `glRasterPos4f` through
  two dispatch pointers (`mov.s` at 0x2ebc1a0, `jalr` at 0x2ebc1a4, `mov.s` at 0x2ebc1c0, `jalr` at
  0x2ebc1c4). It loads those pointers from context +0x2920 and +0x4698 and installs each at 0x1ed0
  (`ld` at 0x2ebc19c, `sd` at 0x2ebc1a8, `ld` at 0x2ebc1bc, `sd` at 0x2ebc1c8). The saved incoming
  dispatch value is written back in the return delay slot (`ld` at 0x2ebc160, `sd` at 0x2ebc174,
  `ld` at 0x2ebc1dc, `sd` at 0x2ebc1e8). The called GL stub `glRasterPos4f` loads this slot and
  jumps through it (`ld` at 0x2edd724 and `jr` at 0x2edd728, both in `glRasterPos4f`).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x229c160, 140 bytes, identical.

## `__glce_RasterPos4d` (IP27KONA64)

- `__glce_RasterPos4d`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ebc050, 140 bytes.
  Established. Runs the double-coordinate entry `glRasterPos4d` twice (`jalr` at 0x2ebc094, `jalr`
  at 0x2ebc0b4), keeping the first coordinate in a saved floating-point register (`mov.d` at
  0x2ebc090, `mov.d` at 0x2ebc0b0). Its context supplies pointers at +0x2910 and +0x4688 for
  successive writes to dispatch slot 0x1ec0 (`ld` at 0x2ebc08c, `sd` at 0x2ebc098, `ld` at
  0x2ebc0ac, `sd` at 0x2ebc0b8). The prior slot contents are restored before control leaves (`ld` at
  0x2ebc050, `sd` at 0x2ebc064, `ld` at 0x2ebc0cc, `sd` at 0x2ebc0d8). The called GL stub
  `glRasterPos4d` loads this slot and jumps through it (`ld` at 0x2edd704 and `jr` at 0x2edd708,
  both in `glRasterPos4d`).
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

## `__gllc_RasterPos2d` (IP27KONA32)

- `__gllc_RasterPos2d`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3c860, 148 bytes.
  Established. Allocates a 0x10-byte double-coordinate payload through `__glDlistAllocOp2` (`addiu`
  at 0xda3c888, `jalr` at 0xda3c88c). `bnez` enters construction on success (`bnez` at 0xda3c894).
  The record contains byte 1 at +0xe, opcode 0x20 at +0xc, and the two doubles at +0x10/+0x18
  (`addiu` at 0xda3c898, `sb` at 0xda3c8ac, `addiu` at 0xda3c8b0, `sh` at 0xda3c8b4, `sdc1` at
  0xda3c8cc, `sdc1` at 0xda3c8c8). The context flag word is ORed with 0x20 before
  `__glDlistAppendOp` (`ori` at 0xda3c8e0, `sw` at 0xda3c8e8, `jalr` at 0xda3c8e4).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3c860, 148 bytes, identical.

## `__gllc_RasterPos3fv` (IP27KONA32)

- `__gllc_RasterPos3fv`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3cee0, 152 bytes.
  Established. Records the three floats read from input +0/+4/+8 at operation +0x10/+0x14/+0x18
  (`lwc1` at 0xda3cf34, `swc1` at 0xda3cf38, `lwc1` at 0xda3cf3c, `swc1` at 0xda3cf44, `lwc1` at
  0xda3cf48, `swc1` at 0xda3cf50). `__glDlistAllocOp2` is asked for 0xc bytes, with a nonzero
  pointer branching into the writer (`addiu` at 0xda3cf00, `jalr` at 0xda3cf0c, `bnez` at
  0xda3cf14). Opcode 0x25 identifies the record (`addiu` at 0xda3cf2c, `sh` at 0xda3cf30). The
  append call follows the context-bit update (`ori` at 0xda3cf64, `sw` at 0xda3cf6c, `jalr` at
  0xda3cf68).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3cee0, 152 bytes, identical.

## `__gllc_RasterPos3f` (IP27KONA32)

- `__gllc_RasterPos3f`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3ce40, 152 bytes.
  Established. Combines three scalar float arguments into a list operation. Allocation requests 0xc
  bytes and `bnez` chooses the successful construction path (`addiu` at 0xda3ce6c, `jalr` at
  0xda3ce70, `bnez` at 0xda3ce78). The stored opcode is 0x25, followed by coordinates at +0x10,
  +0x14 and +0x18 (`addiu` at 0xda3ce7c, `sh` at 0xda3ce90, `swc1` at 0xda3ceb0, `swc1` at
  0xda3ceac, `swc1` at 0xda3cea8). Context +0x1384 receives its old value OR 0x20 before appending
  (`lw` at 0xda3ceb4, `ori` at 0xda3cec4, `sw` at 0xda3cecc, `jalr` at 0xda3cec8).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3ce40, 152 bytes, identical.

## `__gllc_RasterPos2dv` (IP27KONA32)

- `__gllc_RasterPos2dv`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3c900, 152 bytes.
  Established. Copies a pair of doubles rather than retaining the caller's vector: loads at input
  +0/+8 feed stores at record +0x10/+0x18 (`ldc1` at 0xda3c95c, `sdc1` at 0xda3c964, `ldc1` at
  0xda3c968, `sdc1` at 0xda3c970). It requests 0x10 bytes from `__glDlistAllocOp2` and proceeds only
  along the taken nonzero branch (`addiu` at 0xda3c920, `jalr` at 0xda3c92c, `bnez` at 0xda3c934).
  Byte 1 at +0xe and opcode 0x20 at +0xc describe the record (`addiu` at 0xda3c948, `sb` at
  0xda3c94c, `addiu` at 0xda3c954, `sh` at 0xda3c958). Its final append follows setting context bit
  0x20 (`ori` at 0xda3c984, `sw` at 0xda3c98c, `jalr` at 0xda3c988).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3c900, 152 bytes, identical.

## `__gllc_RasterPos3i` (IP27KONA32)

- `__gllc_RasterPos3i`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3cf80, 156 bytes.
  Established. Stores three integer arguments in the payload at +0x10/+0x14/+0x18, tagging the
  record with opcode 0x26 at +0xc (`sw` at 0xda3cff4, `sw` at 0xda3cfe4, `sw` at 0xda3cfe0, `addiu`
  at 0xda3cfe8, `sh` at 0xda3cfec). The preceding allocator request is 0xc bytes (`addiu` at
  0xda3cfa8, `jalr` at 0xda3cfb4). `bnez` takes the success path, while zero returns without
  appending (`bnez` at 0xda3cfbc, `jr` at 0xda3cfcc). Context bit 0x20 is set in the delay slot of
  `__glDlistAppendOp` (`ori` at 0xda3d008, `jalr` at 0xda3d00c, `sw` at 0xda3d010).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3cf80, 156 bytes, identical.

## `__gllc_RasterPos3dv` (IP27KONA32)

- `__gllc_RasterPos3dv`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3cda0, 160 bytes.
  Established. Produces a three-double vector record after a 0x18-byte allocation (`addiu` at
  0xda3cdc0, `jalr` at 0xda3cdcc). Allocation success is the taken `bnez` path (`bnez` at
  0xda3cdd4). Byte 1 at +0xe and opcode 0x24 at +0xc precede three double loads and stores into
  +0x10/+0x18/+0x20 (`addiu` at 0xda3cde8, `sb` at 0xda3cdec, `addiu` at 0xda3cdf4, `sh` at
  0xda3cdf8, `ldc1` at 0xda3cdfc, `sdc1` at 0xda3ce00, `ldc1` at 0xda3ce04, `sdc1` at 0xda3ce0c,
  `ldc1` at 0xda3ce10, `sdc1` at 0xda3ce18). It appends after raising context bit 0x20 (`ori` at
  0xda3ce2c, `sw` at 0xda3ce34, `jalr` at 0xda3ce30).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3cda0, 160 bytes, identical.

## `__gllc_RasterPos3d` (IP27KONA32)

- `__gllc_RasterPos3d`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda3cd00, 160 bytes.
  Established. Saves scalar doubles around `__glDlistAllocOp2` and asks for 0x18 payload bytes
  (`sdc1` at 0xda3cd08, `sdc1` at 0xda3cd24, `addiu` at 0xda3cd2c, `jalr` at 0xda3cd30, `sdc1` at
  0xda3cd34). `bnez` selects the record-writing path (`bnez` at 0xda3cd38). That path writes byte 1
  at +0xe, opcode 0x24 at +0xc, and coordinates at +0x10/+0x18/+0x20 (`addiu` at 0xda3cd3c, `sb` at
  0xda3cd50, `addiu` at 0xda3cd54, `sh` at 0xda3cd58, `sdc1` at 0xda3cd78, `sdc1` at 0xda3cd74,
  `sdc1` at 0xda3cd70). The record is appended with context +0x1384 bit 0x20 set (`ori` at
  0xda3cd8c, `sw` at 0xda3cd94, `jalr` at 0xda3cd90).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda3cd00, 160 bytes, identical.

## `__glce_TexImage1D` (IP27KONA32)

- `__glce_TexImage1D`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda5a260, 172 bytes.
  Established. Invokes `glTexImage1D` through two temporary dispatch settings (`jalr` at 0xda5a2b4,
  `jalr` at 0xda5a2e8). Context +0x18a8 supplies the first setting and +0x2770 the second, both
  written to process slot 0x1100 (`lw` at 0xda5a2ac, `sw` at 0xda5a2b8, `lw` at 0xda5a2e0, `sw` at
  0xda5a2ec). The incoming dispatch word is saved and restored at return (`lw` at 0xda5a260, `sd` at
  0xda5a284, `ld` at 0xda5a2fc, `sw` at 0xda5a308). The body contains no direct graphics-window
  store. The called GL stub `glTexImage1D` loads this slot and jumps through it (`lw` at 0xda786f4
  and `jr` at 0xda786f8, both in `glTexImage1D`).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda5a260, 172 bytes, identical.

## `__glce_TexImage2D` (IP27KONA32)

- `__glce_TexImage2D`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda5a310, 180 bytes.
  Established. Wraps two calls to `glTexImage2D` (`jalr` at 0xda5a368, `jalr` at 0xda5a3a4). The
  call's stack argument is copied to outgoing stack +4 each time (`lw` at 0xda5a364, `sw` at
  0xda5a36c, `lw` at 0xda5a3a0, `sw` at 0xda5a3a8). Dispatch slot 0x1104 first receives context
  +0x18ac, then context +0x2774 (`lw` at 0xda5a34c, `sw` at 0xda5a360, `lw` at 0xda5a398, `sw` at
  0xda5a39c). It restores the original slot value in the return delay slot (`lw` at 0xda5a310, `sd`
  at 0xda5a328, `ld` at 0xda5a3b4, `sw` at 0xda5a3c0). The called GL stub `glTexImage2D` loads this
  slot and jumps through it (`lw` at 0xda78700 and `jr` at 0xda78704, both in `glTexImage2D`).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda5a310, 180 bytes, identical.

## `__gllc_PixelTexGenParameterfvSGIS` (IP27KONA32)

- `__gllc_PixelTexGenParameterfvSGIS`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda45f20, 196 bytes.
  Established. Builds a float pixel-texture parameter record. It calls
  `__glPixelTexGenParameterfvSGIS_size`, shifts the result left by 2, and branches to
  `__gllc_InvalidEnum` if that byte count is negative (`jalr` at 0xda45f4c, `sll` at 0xda45f54,
  `bltz` at 0xda45f58, `jalr` at 0xda45fd4). Otherwise it asks `__glDlistAllocOp2` for count +4
  bytes (`jalr` at 0xda45f64, `addiu` at 0xda45f68). `bnez` enters the successful path (`bnez` at
  0xda45f6c): store the first argument at +0x10, store opcode 0x101 at +0xc, and call `memcpy` into
  record +0x14 for the computed byte count (`addiu` at 0xda45fa0, `sw` at 0xda45fa4, `addiu` at
  0xda45fa8, `move` at 0xda45f9c, `jalr` at 0xda45fac, `sh` at 0xda45fb0). It finishes with
  `__glDlistAppendOp` (`jalr` at 0xda45fc0).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda45f20, 196 bytes, identical.
