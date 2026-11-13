# libGLcore list records and dispatch wrappers

These IRIX 6.5.30m readings use the exact build paths below. Each body was
disassembled in full as big-endian MIPS with Capstone. The accompanying
[listing](libglcore-list-records.s) preserves every instruction and the GOT
resolutions used to identify calls. Two zero-source `ori` loads use the
binutils `dli` alias in the citations.

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

## `__gllc_PixelTexGenParameterivSGIS` (IP27KONA32)

- `__gllc_PixelTexGenParameterivSGIS`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda45dd0, 196 bytes.
  Established. Uses `__glPixelTexGenParameterivSGIS_size` to size the integer-vector payload (`jalr`
  at 0xda45dfc). A left shift by 2 produces its byte count, and `bltz` sends a negative result to
  the invalid-enum call (`sll` at 0xda45e04, `bltz` at 0xda45e08, `jalr` at 0xda45e84). Allocation
  requests that count plus 4 (`jalr` at 0xda45e14, `addiu` at 0xda45e18). The taken `bnez` path
  writes the first argument at +0x10 and opcode 0xff at +0xc, then copies the vector to +0x14 with
  `memcpy` (`bnez` at 0xda45e1c, `addiu` at 0xda45e50, `sw` at 0xda45e54, `addiu` at 0xda45e58,
  `jalr` at 0xda45e5c, `sh` at 0xda45e60). `__glDlistAppendOp` receives the completed record (`jalr`
  at 0xda45e70).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda45dd0, 196 bytes, identical.

## `__gllc_PixelTexGenParameterfvSGIS` (IP27KONA)

- `__gllc_PixelTexGenParameterfvSGIS`:
  `usr/gfx/arch/IP27KONA/libGLcore.so`, 0xda4b528, 204 bytes.
  Established. In this O32 body, `bgez` accepts a nonnegative byte count after
  `__glPixelTexGenParameterfvSGIS_size` and a shift by 2 (`jalr` at 0xda4b550, `sll` at 0xda4b558,
  `bgez` at 0xda4b55c). The negative fallthrough calls `__gllc_InvalidEnum` (`jalr` at 0xda4b56c).
  Allocation asks for count +4 and `beqz` skips construction on failure (`addiu` at 0xda4b584,
  `jalr` at 0xda4b588, `beqz` at 0xda4b594). Successful records hold opcode 0x101 at +0xc and the
  first argument at +0x10 (`addiu` at 0xda4b59c, `sh` at 0xda4b5a0, `sw` at 0xda4b5ac). `memcpy`
  fills the vector area at +0x14 before `__glDlistAppendOp` (`addiu` at 0xda4b5a8, `jalr` at
  0xda4b5bc, `jalr` at 0xda4b5d8).
  Byte comparison: `usr/gfx/arch/IP35KONA/libGLcore.so`, 0xda4b528, 204 bytes, identical.

## `__gllc_PixelTexGenParameterivSGIS` (IP27KONA)

- `__gllc_PixelTexGenParameterivSGIS`:
  `usr/gfx/arch/IP27KONA/libGLcore.so`, 0xda4b3dc, 204 bytes.
  Established. Serialises an integer pixel-texture parameter into an O32 list record. Its size
  helper is called before shifting the result by 2 (`jalr` at 0xda4b404, `sll` at 0xda4b40c). `bgez`
  takes the valid-size route, leaving the negative route to call `__gllc_InvalidEnum` (`bgez` at
  0xda4b410, `jalr` at 0xda4b420). The allocation size is count +4, and a null pointer branches to
  return (`addiu` at 0xda4b438, `jalr` at 0xda4b43c, `beqz` at 0xda4b448). Opcode 0xff and the first
  argument occupy +0xc and +0x10 (`addiu` at 0xda4b450, `sh` at 0xda4b454, `sw` at 0xda4b460). The
  vector is copied at +0x14 and the record appended (`addiu` at 0xda4b45c, `jalr` at 0xda4b470,
  `jalr` at 0xda4b48c).
  Byte comparison: `usr/gfx/arch/IP35KONA/libGLcore.so`, 0xda4b3dc, 204 bytes, identical.

## `__gllc_TexGeniv` (IP27KONA32)

- `__gllc_TexGeniv`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda41880, 212 bytes.
  Established. Compiles integer texture-generation parameters: `__glTexGeniv_size` receives the
  second argument, and its result becomes a byte count by shifting left 2 (`move` at 0xda418b0,
  `jalr` at 0xda418b4, `sll` at 0xda418bc). `bltz` selects the invalid-enum call on a negative count
  (`bltz` at 0xda418c0, `jalr` at 0xda41944). It allocates count +8 bytes and `bnez` chooses
  construction for a nonzero record (`jalr` at 0xda418cc, `addiu` at 0xda418d0, `bnez` at
  0xda418d4). The first two arguments go at +0x10/+0x14 and opcode 0x77 at +0xc (`sw` at 0xda41914,
  `sw` at 0xda41908, `addiu` at 0xda41910, `sh` at 0xda41920). `memcpy` targets +0x18 before the
  append call (`addiu` at 0xda41918, `jalr` at 0xda4191c, `jalr` at 0xda41930).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda41880, 212 bytes, identical.

## `__gllc_TexGenfv` (IP27KONA32)

- `__gllc_TexGenfv`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda41720, 212 bytes.
  Established. Packs float texture-generation state behind two argument words. The size call uses
  the second argument and its return is multiplied by four (`move` at 0xda41750, `jalr` at
  0xda41754, `sll` at 0xda4175c). Negative byte counts take `bltz` to `__gllc_InvalidEnum` (`bltz`
  at 0xda41760, `jalr` at 0xda417e4). `__glDlistAllocOp2` receives count +8, and `bnez` selects the
  writing path (`jalr` at 0xda4176c, `addiu` at 0xda41770, `bnez` at 0xda41774). That path stores
  the two arguments at +0x10/+0x14, writes opcode 0x75 at +0xc, copies into +0x18 with `memcpy`, and
  appends (`sw` at 0xda417b4, `sw` at 0xda417a8, `addiu` at 0xda417b0, `sh` at 0xda417c0, `addiu` at
  0xda417b8, `jalr` at 0xda417bc, `jalr` at 0xda417d0).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda41720, 212 bytes, identical.

## `__gllc_TexGeniv` (IP27KONA64)

- `__gllc_TexGeniv`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ea68a0, 220 bytes.
  Established. The 64-bit integer recorder rounds its size-helper result times four up to an 8-byte
  boundary using +7 and a -8 mask (`jalr` at 0x2ea68d4, `sll` at 0x2ea68dc, `addiu` at 0x2ea68e0,
  `addiu` at 0x2ea68e4, `and` at 0x2ea68e8). `bltz` rejects a negative rounded count through
  `__gllc_InvalidEnum` (`bltz` at 0x2ea68ec, `jalr` at 0x2ea696c). Allocation requests rounded count
  +8, with nonzero `bnez` entering construction (`jalr` at 0x2ea68f8, `addiu` at 0x2ea68fc, `bnez`
  at 0x2ea6900). It writes opcode 0x77 at +0x14 and the first two argument words at +0x18/+0x1c
  (`addiu` at 0x2ea6924, `sh` at 0x2ea6928, `sw` at 0x2ea6948, `sw` at 0x2ea693c). The rounded count
  is passed to `memcpy` at destination +0x20, then the operation is appended (`move` at 0x2ea6938,
  `daddiu` at 0x2ea6940, `jalr` at 0x2ea6944, `jalr` at 0x2ea6958).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x22868a0, 220 bytes, identical.

## `__gllc_TexGenfv` (IP27KONA64)

- `__gllc_TexGenfv`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ea6740, 220 bytes.
  Established. Calls `__glTexGenfv_size` and derives an 8-byte-aligned copy count from its return:
  shift left 2, add 7, AND with -8 (`jalr` at 0x2ea6774, `sll` at 0x2ea677c, `addiu` at 0x2ea6780,
  `addiu` at 0x2ea6784, `and` at 0x2ea6788). A negative rounded value takes `bltz` to the
  invalid-enum call (`bltz` at 0x2ea678c, `jalr` at 0x2ea680c). The requested allocation is rounded
  count +8, and zero falls through the untaken `bnez` to return (`jalr` at 0x2ea6798, `addiu` at
  0x2ea679c, `bnez` at 0x2ea67a0). For success, opcode 0x75 goes at +0x14 and the two argument words
  at +0x18/+0x1c (`addiu` at 0x2ea67c4, `sh` at 0x2ea67c8, `sw` at 0x2ea67e8, `sw` at 0x2ea67dc). It
  copies the rounded byte count into +0x20 with `memcpy` and appends (`move` at 0x2ea67d8, `daddiu`
  at 0x2ea67e0, `jalr` at 0x2ea67e4, `jalr` at 0x2ea67f8).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x2286740, 220 bytes, identical.

## `__gllc_TexGendv` (IP27KONA32)

- `__gllc_TexGendv`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda415c0, 220 bytes.
  Established. Records double texture-generation values using a byte count eight times the return
  from `__glTexGendv_size` (`jalr` at 0xda415f4, `sll` at 0xda415fc). `bltz` routes a negative
  result to `__gllc_InvalidEnum` (`bltz` at 0xda41600, `jalr` at 0xda4168c). The count +8 allocation
  must return nonzero to take `bnez` into construction (`jalr` at 0xda4160c, `addiu` at 0xda41610,
  `bnez` at 0xda41614). The record gets argument words at +0x10/+0x14, byte 1 at +0xe and opcode
  0x73 at +0xc (`sw` at 0xda41650, `sw` at 0xda41644, `addiu` at 0xda41658, `sb` at 0xda4165c,
  `addiu` at 0xda41654, `sh` at 0xda41668). `memcpy` writes the double vector at +0x18, followed by
  append (`addiu` at 0xda41660, `jalr` at 0xda41664, `jalr` at 0xda41678).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda415c0, 220 bytes, identical.

## `__gllc_TexGendv` (IP27KONA64)

- `__gllc_TexGendv`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2ea65d0, 228 bytes.
  Established. Marks a 64-bit double-vector operation with byte 1 at +0x16 and opcode 0x73 at +0x14
  (`addiu` at 0x2ea6650, `sb` at 0x2ea6654, `addiu` at 0x2ea6658, `sh` at 0x2ea665c). Before that,
  it calls `__glTexGendv_size`, shifts by 3 and applies the +7/-8 alignment calculation (`jalr` at
  0x2ea6604, `sll` at 0x2ea660c, `addiu` at 0x2ea6610, `addiu` at 0x2ea6614, `and` at 0x2ea6618).
  `bltz` takes negative rounded sizes to `__gllc_InvalidEnum` (`bltz` at 0x2ea661c, `jalr` at
  0x2ea66a4). Allocation requests rounded count +8 and `bnez` selects a nonzero record (`jalr` at
  0x2ea6628, `addiu` at 0x2ea662c, `bnez` at 0x2ea6630). Argument words land at +0x18/+0x1c before
  `memcpy` into +0x20 and `__glDlistAppendOp` (`sw` at 0x2ea6678, `sw` at 0x2ea666c, `daddiu` at
  0x2ea6680, `jalr` at 0x2ea667c, `jalr` at 0x2ea6690).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x22865d0, 228 bytes, identical.

## `__glsplc_TexSubImage1DEXT` (IP27KONA64)

- `__glsplc_TexSubImage1DEXT`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2df5b70, 308 bytes.
  Established. Compiles a one-dimensional subimage record. Negative width takes `bltz` to
  `__glsplc_InvalidValue` (`bltz` at 0x2df5bb4, `bgezall` at 0x2df5c94). `FormatAndType` is called
  at 0x2df4ff0 and a zero result exits (`bgezall` at 0x2df5bc8, `beqz` at 0x2df5bd0).
  `__glImageSize` is called with height 1 (`jalr` at 0x2df5be4, `addiu` at 0x2df5be8). Its result is
  rounded by +7 and AND -8, then `__glSPDlalloc` receives that count +0x20 and operation 0xc1
  (`addiu` at 0x2df5bf0, `addiu` at 0x2df5bf4, `and` at 0x2df5bfc, `addiu` at 0x2df5bf8, `jalr` at
  0x2df5c04, `addiu` at 0x2df5c08). A null allocation exits (`beqz` at 0x2df5c0c). The record's
  words are target, level, x offset, width, format, type and rounded byte count at +0 through +0x18
  (`sw` at 0x2df5c24, `sw` at 0x2df5c3c, `sw` at 0x2df5c28, `sw` at 0x2df5c20, `sw` at 0x2df5c1c,
  `sw` at 0x2df5c18, `sw` at 0x2df5c34). Nonpositive count exits through `blez` (`blez` at
  0x2df5c38). For positive count, `bnez` reaches `__glFillImage` only with nonnull input, writing at
  record +0x20 (`bnez` at 0x2df5c44, `daddiu` at 0x2df5c6c, `jalr` at 0x2df5c80).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x21d5b70, 308 bytes, identical.

## `__glsplc_TexSubImage1DEXT` (IP27KONA)

- `__glsplc_TexSubImage1DEXT`:
  `usr/gfx/arch/IP27KONA/libGLcore.so`, 0xd995a00, 308 bytes.
  Established. The O32 one-dimensional compiler accepts nonnegative width through `bgez`, with the
  negative fallthrough calling `__glsplc_InvalidValue` (`bgez` at 0xd995a2c, `jalr` at 0xd995a38).
  It calls `FormatAndType` at 0xd9951e8 and exits on zero (`addiu` at 0xd995a54, `jalr` at
  0xd995a58, `beqz` at 0xd995a60). After `__glImageSize`, the payload count is rounded using +3 and
  AND -4 (`jalr` at 0xd995a78, `addiu` at 0xd995a84, `addiu` at 0xd995a88, `and` at 0xd995a90).
  `__glSPDlalloc` receives count +0x1c and operation 0xc1, with null return exiting (`addiu` at
  0xd995a94, `jalr` at 0xd995a9c, `addiu` at 0xd995aa0, `beqz` at 0xd995aac). Stores at
  +0/+4/+8/+0xc/+0x10/+0x14 hold target, level, x offset, width, format and type, followed by
  rounded count at +0x18 (`sw` at 0xd995ab8, `sw` at 0xd995ac0, `sw` at 0xd995ac8, `sw` at
  0xd995ad0, `sw` at 0xd995ad8, `sw` at 0xd995ae8, `sw` at 0xd995ae0). `blez` skips filling for
  nonpositive count, and `beqz` skips it for null input (`blez` at 0xd995ae4, `beqz` at 0xd995af8).
  The remaining path calls `__glFillImage` with output at record +0x1c (`addiu` at 0xd995b08, `sw`
  at 0xd995b0c, `jalr` at 0xd995b18).
  Byte comparison: `usr/gfx/arch/IP35KONA/libGLcore.so`, 0xd995a00, 308 bytes, identical.

## `__glim_TexSubImage1DEXT` (IP27KONA64)

- `__glim_TexSubImage1DEXT`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2e8b190, 320 bytes.
  Established. Prepares and dispatches a one-dimensional texture-subimage operation. Process state 0
  at 0x1030 branches directly to argument checking (`lw` at 0x2e8b1b0, `beqz` at 0x2e8b1cc). State 2
  takes `beq` to a context +0x4748 callback and a clear of 0x1030 (`addiu` at 0x2e8b1d4, `beq` at
  0x2e8b1d8, `ld` at 0x2e8b200, `jalr` at 0x2e8b204, `sw` at 0x2e8b210). Other states call
  `__glSetError` with 0x502 and return (`jalr` at 0x2e8b1e4, `addiu` at 0x2e8b1e8, `jr` at
  0x2e8b1f8). `__glCheckTexSubImage1DArgs` is called and its zero result exits (`bgezall` at
  0x2e8b230, `beqz` at 0x2e8b238). Success initialises a stack descriptor through
  `__glInitTexSourceUnpack`, `__glInitTexSubImageStore`, `__glInitUnpacker` and `__glInitPacker`
  (`jalr` at 0x2e8b264, `bgezall` at 0x2e8b288, `jalr` at 0x2e8b298, `jalr` at 0x2e8b2a8). Finally
  it calls the pointer at checked object +0x108 with that descriptor (`ld` at 0x2e8b2b4, `jalr` at
  0x2e8b2c0, `daddiu` at 0x2e8b2c4).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x226b190, 320 bytes, identical.

## `__glsplc_ConvolutionFilter1DEXT` (IP27KONA64)

- `__glsplc_ConvolutionFilter1DEXT`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2df5e00, 320 bytes.
  Established. Accepts target 0x8010 through `beq` (binutils `dli` at 0x2df5e20, `beq` at
  0x2df5e38). A mismatch calls `__glsplc_InvalidEnum` (`bgezall` at 0x2df5e44). A negative width
  takes `bltz` to `__glsplc_InvalidValue` (`bltz` at 0x2df5e74, `bgezall` at 0x2df5f30). The helper
  at 0x2df4ff0 must return nonzero to pass `beqz` (`bgezall` at 0x2df5e88, `beqz` at 0x2df5e90). It
  calls `__glImageSize` with height 1, rounds the result to eight bytes and allocates count +0x18
  using operation 0xc3 (`jalr` at 0x2df5ea4, `addiu` at 0x2df5ea8, `addiu` at 0x2df5eb0, `addiu` at
  0x2df5eb4, `and` at 0x2df5ebc, `addiu` at 0x2df5eb8, `jalr` at 0x2df5ec4, `addiu` at 0x2df5ec8).
  Null allocation exits (`beqz` at 0x2df5ecc). Target, internal format, width, format, type and
  rounded count occupy +0/+4/+8/+0xc/+0x10/+0x14 (`sw` at 0x2df5ee8, `sw` at 0x2df5eec, `sw` at
  0x2df5ee0, `sw` at 0x2df5edc, `sw` at 0x2df5ed8, `sw` at 0x2df5ef4). `blez` rejects nonpositive
  count and `beqz` skips null input before `__glFillImage` writes at record +0x18 (`blez` at
  0x2df5ef0, `beqz` at 0x2df5efc, `daddiu` at 0x2df5f08, `jalr` at 0x2df5f1c).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x21d5e00, 320 bytes, identical.

## `__glsplc_TexSubImage2DEXT` (IP27KONA64)

- `__glsplc_TexSubImage2DEXT`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2df5cb0, 332 bytes.
  Established. Checks width and height with two `bltz` branches to `__glsplc_InvalidValue` (`bltz`
  at 0x2df5cec, `bltz` at 0x2df5d04, `bgezall` at 0x2df5dec). A call to the helper at 0x2df4ff0 must
  return nonzero (`bgezall` at 0x2df5d18, `beqz` at 0x2df5d20). After `__glImageSize`, +7 and AND -8
  round the size for a count +0x28 allocation tagged 0xc2 (`jalr` at 0x2df5d34, `addiu` at
  0x2df5d40, `addiu` at 0x2df5d44, `and` at 0x2df5d4c, `addiu` at 0x2df5d48, `jalr` at 0x2df5d54,
  `addiu` at 0x2df5d58). Null allocation returns (`beqz` at 0x2df5d5c). The record stores target,
  level, x/y offsets, width, height, format, type and rounded byte count at +0 through +0x20 (`sw`
  at 0x2df5d9c, `sw` at 0x2df5d94, `sw` at 0x2df5d90, `sw` at 0x2df5d8c, `sw` at 0x2df5d70, `sw` at
  0x2df5d6c, `sw` at 0x2df5d68, `sw` at 0x2df5d64, `sw` at 0x2df5d88). Filling is bypassed for
  nonpositive count or null input by `blez`/`beqz` (`blez` at 0x2df5d98, `beqz` at 0x2df5da4).
  Otherwise `__glFillImage` receives output record +0x28 (`jalr` at 0x2df5dc0, `daddiu` at
  0x2df5dc4).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x21d5cb0, 332 bytes, identical.

## `__glsplc_ConvolutionFilter1DEXT` (IP27KONA)

- `__glsplc_ConvolutionFilter1DEXT`:
  `usr/gfx/arch/IP27KONA/libGLcore.so`, 0xd995c88, 336 bytes.
  Established. Compiles an O32 one-dimensional convolution filter for target 0x8010. Equality takes
  `beq` past the invalid-enum call (`ori` at 0xd995c9c, `beq` at 0xd995cb8, `jalr` at 0xd995cc4).
  `bgez` accepts nonnegative width (`bgez` at 0xd995cd8). The negative path calls
  `__glsplc_InvalidValue` (`jalr` at 0xd995ce4). A zero result from the helper at 0xd9951e8 exits
  (`addiu` at 0xd995d00, `jalr` at 0xd995d04, `beqz` at 0xd995d0c). The image size is rounded to
  four bytes by +3 and AND -4, then `__glSPDlalloc` receives count +0x18 and operation 0xc3 (`jalr`
  at 0xd995d24, `addiu` at 0xd995d30, `addiu` at 0xd995d34, `and` at 0xd995d3c, `addiu` at
  0xd995d40, `jalr` at 0xd995d48, `addiu` at 0xd995d4c). Its null result returns (`beqz` at
  0xd995d58). Header stores carry target, internal format, width, format, type and rounded count at
  +0 through +0x14 (`sw` at 0xd995d64, `sw` at 0xd995d6c, `sw` at 0xd995d74, `sw` at 0xd995d7c, `sw`
  at 0xd995d8c, `sw` at 0xd995d84). `blez` skips a nonpositive payload and `beqz` skips a null
  source, otherwise `__glFillImage` writes after the 0x18-byte header (`blez` at 0xd995d88, `beqz`
  at 0xd995d9c, `addiu` at 0xd995dac, `sw` at 0xd995db0, `jalr` at 0xd995dbc).
  Byte comparison: `usr/gfx/arch/IP35KONA/libGLcore.so`, 0xd995c88, 336 bytes, identical.

## `__glim_TexSubImage2DEXT` (IP27KONA64)

- `__glim_TexSubImage2DEXT`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2e8b410, 340 bytes.
  Established. Builds the descriptor for a two-dimensional subimage, then invokes the checked
  object's callback. The state word at 0x1030 accepts zero via `beqz` (`lw` at 0x2e8b434, `beqz` at
  0x2e8b454). `beq` accepts 2 by calling context +0x4748 and clearing the word (`addiu` at
  0x2e8b448, `beq` at 0x2e8b45c, `ld` at 0x2e8b488, `jalr` at 0x2e8b48c, `sw` at 0x2e8b498). Other
  values call `__glSetError` with 0x502 (`jalr` at 0x2e8b468, `addiu` at 0x2e8b46c).
  `__glCheckTexSubImage2DArgs` runs next, and `beqz` exits for its null result (`bgezall` at
  0x2e8b4c4, `beqz` at 0x2e8b4cc). The successful sequence calls `__glInitTexSourceUnpack`,
  `__glInitTexSubImageStore`, `__glInitUnpacker` and `__glInitPacker` with the stack descriptor
  (`jalr` at 0x2e8b4f8, `daddiu` at 0x2e8b4fc, `bgezall` at 0x2e8b51c, `daddiu` at 0x2e8b520, `jalr`
  at 0x2e8b52c, `daddiu` at 0x2e8b530, `jalr` at 0x2e8b53c, `daddiu` at 0x2e8b540). The final
  indirect call loads its target from object +0x108 (`ld` at 0x2e8b548, `jalr` at 0x2e8b554).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x226b410, 340 bytes, identical.

## `__glsplc_TexSubImage2DEXT` (IP27KONA)

- `__glsplc_TexSubImage2DEXT`:
  `usr/gfx/arch/IP27KONA/libGLcore.so`, 0xd995b34, 340 bytes.
  Established. Rejects negative width with `bltz` and accepts nonnegative height with `bgez`,
  otherwise calling `__glsplc_InvalidValue` (`bltz` at 0xd995b64, `bgez` at 0xd995b70, `jalr` at
  0xd995b7c). The helper at 0xd9951e8 is called before `__glImageSize`, and a zero helper result
  exits (`addiu` at 0xd995b98, `jalr` at 0xd995b9c, `beqz` at 0xd995ba4, `jalr` at 0xd995bbc). The
  image size is rounded with +3 and AND -4 for `__glSPDlalloc`, which receives count +0x24 and
  operation 0xc2 (`addiu` at 0xd995bc8, `addiu` at 0xd995bcc, `and` at 0xd995bd4, `addiu` at
  0xd995bd8, `jalr` at 0xd995be0, `addiu` at 0xd995be4). A null allocation exits (`beqz` at
  0xd995bf0). Its header contains target, level, x/y offsets, width, height, format, type and
  rounded count at +0 through +0x20 (`sw` at 0xd995bfc, `sw` at 0xd995c04, `sw` at 0xd995c0c, `sw`
  at 0xd995c14, `sw` at 0xd995c1c, `sw` at 0xd995c24, `sw` at 0xd995c2c, `sw` at 0xd995c3c, `sw` at
  0xd995c34). Nonpositive count and null source take `blez`/`beqz` past the fill (`blez` at
  0xd995c38, `beqz` at 0xd995c4c). `__glFillImage` otherwise receives record +0x24 as output
  (`addiu` at 0xd995c5c, `sw` at 0xd995c60, `jalr` at 0xd995c6c).
  Byte comparison: `usr/gfx/arch/IP35KONA/libGLcore.so`, 0xd995b34, 340 bytes, identical.

## `__glsplc_TexSubImage3DEXT` (IP27KONA64)

- `__glsplc_TexSubImage3DEXT`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2df6440, 344 bytes.
  Established. Creates a three-dimensional list record, rejecting negative width, height or depth
  through three `bltz` branches to `__glsplc_InvalidValue` (`bltz` at 0x2df6474, `bltz` at
  0x2df647c, `bltz` at 0x2df6498, `bgezall` at 0x2df6588). The helper at 0x2df4ff0 is called and a
  zero result returns (`bgezall` at 0x2df64ac, `beqz` at 0x2df64b4). `__glImageSize3D` supplies the
  count rounded with +7 and AND -8 (`jalr` at 0x2df64cc, `addiu` at 0x2df64d8, `addiu` at 0x2df64dc,
  `and` at 0x2df64e4). Allocation uses count +0x30 and operation 0xd1, with `beqz` exiting on
  failure (`addiu` at 0x2df64e0, `jalr` at 0x2df64ec, `addiu` at 0x2df64f0, `beqz` at 0x2df64f8).
  Stores put target, level, x/y/z offsets, width, height, depth, format, type and rounded count at
  +0 through +0x28 (`sw` at 0x2df6544, `sw` at 0x2df653c, `sw` at 0x2df6538, `sw` at 0x2df6534, `sw`
  at 0x2df6530, `sw` at 0x2df6510, `sw` at 0x2df650c, `sw` at 0x2df6508, `sw` at 0x2df6504, `sw` at
  0x2df6500, `sw` at 0x2df652c). `blez` skips filling only for nonpositive count (`blez` at
  0x2df6540). The positive path calls `__glFillImage3D` with output at +0x30, without a local
  null-source branch (`daddiu` at 0x2df655c, `jalr` at 0x2df6560, `ld` at 0x2df6564).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x21d6440, 344 bytes, identical.

## `__glsplc_ConvolutionFilter2DEXT` (IP27KONA64)

- `__glsplc_ConvolutionFilter2DEXT`:
  `usr/gfx/arch/IP27KONA64/libGLcore.so`, 0x2df5f40, 344 bytes.
  Established. Only target 0x8011 takes `beq` past `__glsplc_InvalidEnum` (binutils `dli` at
  0x2df5f68, `beq` at 0x2df5f80, `bgezall` at 0x2df5f8c). Negative width or height branches to
  `__glsplc_InvalidValue` (`bltz` at 0x2df5fb4, `bltz` at 0x2df5fc8, `bgezall` at 0x2df6088). The
  helper at 0x2df4ff0 must return nonzero before `__glImageSize` (`bgezall` at 0x2df5fdc,
  `beqz` at 0x2df5fe4, `jalr` at 0x2df5ff8). Eight-byte rounding uses +7 and AND -8 before an
  operation-0xc4 allocation of count +0x20 (`addiu` at 0x2df6004, `addiu` at 0x2df6008, `and` at
  0x2df6010, `addiu` at 0x2df600c, `jalr` at 0x2df6018, `addiu` at 0x2df601c). `beqz` exits on null
  allocation (`beqz` at 0x2df6020). Header words at +0/+4/+8/+0xc/+0x10/+0x14/+0x18 contain target,
  internal format, width, height, format, type and rounded count (`sw` at 0x2df6040, `sw` at
  0x2df6044, `sw` at 0x2df6038, `sw` at 0x2df6034, `sw` at 0x2df6030, `sw` at 0x2df602c, `sw` at
  0x2df604c). A positive count and nonnull source are required by `blez`/`beqz` before
  `__glFillImage` writes into record +0x20 (`blez` at 0x2df6048, `beqz` at 0x2df6054, `jalr` at
  0x2df6074, `daddiu` at 0x2df6078).
  Byte comparison: `usr/gfx/arch/IP35KONA64/libGLcore.so`, 0x21d5f40, 344 bytes, identical.

## `InitBuffers` (IP27KONA32)

- `InitBuffers`:
  `usr/gfx/arch/IP27KONA32/libGLcore.so`, 0xda37b50, 344 bytes.
  Established. Initialises context buffer descriptors. It writes 2 to process word 0x1018, makes
  context +0x77f8 point to context +0x7800, and ORs context +0x2e24 with 0xff (`addiu` at 0xda37b50,
  `sw` at 0xda37b54, `addiu` at 0xda37b58, `sw` at 0xda37b5c, `lw` at 0xda37b68, `ori` at 0xda37b74,
  `sw` at 0xda37b7c). `beqz` on byte +0xc96 selects one descriptor when zero (`lbu` at 0xda37b60,
  `beqz` at 0xda37b78). The nonzero path also sets +0x77fc to context +0x78dc (`addiu` at 0xda37b84,
  `sw` at 0xda37b88). Byte +0xc95 selects CI versus RGB initialisation: zero branches to RGB for
  both the two-descriptor and one-descriptor paths (`lbu` at 0xda37b80, `beqz` at 0xda37b8c, `lbu`
  at 0xda37c44, `beqz` at 0xda37c48). The visible CI calls initialise the first and optional second
  descriptors (`bgezall` at 0xda37b9c, `bgezall` at 0xda37bac, `bgezall` at 0xda37c58). The RGB
  calls occupy the alternate paths (`bgezall` at 0xda37c70, `bgezall` at 0xda37c80, `bgezall` at
  0xda37c98). It stores -1 at context +0x12f4 and byte 1 at +0x12f0 (`addiu` at 0xda37bb8, `sw` at
  0xda37bbc, `addiu` at 0xda37bc0, `sb` at 0xda37bc8). Zero bytes at +0xc98/+0xc99/+0xc9a skip
  `__glInitAccum64`, `__glInitDepth32` and `__glInitStencil8`, respectively (`lbu` at 0xda37bb4,
  `beqz` at 0xda37bc4, `jalr` at 0xda37bd4, `lbu` at 0xda37be4, `beqz` at 0xda37bec, `jalr` at
  0xda37bfc, `lbu` at 0xda37c10, `beqz` at 0xda37c14, `jalr` at 0xda37c24). The accumulation path
  stores the `__glPixmapAllocAccum` pointer at context +0x7b3c (`lw` at 0xda37bdc, `sw` at
  0xda37be0). The no-depth path writes 0x7fffff80 at +0x7a80 (`lui` at 0xda37be8, `ori` at
  0xda37bf0, `sw` at 0xda37c0c). It ends with a tail branch to `__glUpdateDepthRange` (`bgezl` at
  0xda37c3c).
  Byte comparison: `usr/gfx/arch/IP35KONA32/libGLcore.so`, 0xda37b50, 344 bytes, identical.
