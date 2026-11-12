# DAC cursor: index advance, the position port, position meaning, pixel colours

Four questions about the video DAC's hardware cursor, answered from the
published register description of the part the DAC matches, the shipped kernel
module, the X server module and the diagnostic. The same note fixes the
evidence key S67, which named a document nobody could open.

Grades follow the rest of the repository: established (read directly or stated
by a published source for the same part), inferred (follows from the above plus
one stated assumption), unknown (with the test that would settle it).

## Sources

S67 in `docs/command-table.md` reads "the published ADV716x video-DAC register
description (the vgadoc RAMDAC reference)". It is two documents, both public:

| Document | Where it is held | Identity |
|---|---|---|
| vgadoc `RAMDAC.TXT`, section "Analog Devices ADV7160,ADV7162 True-Color Video RAM-DAC" (about 80 kB for the whole file; the section is lines 291-467) | reference library, cache path `graphics/vgadoc/RAMDAC.TXT` | SHA-256 `6413c323ce3935ba900256da4d797b5d76f5b2bceb0b9a6ed7c30dec5ff2b6df`; retrieved from `https://pdos.csail.mit.edu/6.1810/2017/readings/hardware/vgadoc/RAMDAC.TXT`, a course-readings mirror of the vgadoc collection |
| Analog Devices, ADV7160/ADV7162 96-bit 220 MHz True-Color Video RAM-DAC data sheet, REV. 0, 44 pages | reference library, cache path `graphics/analog-devices/adv7160_7162.pdf` | SHA-256 `c8fa1a6dfc222d72655b9a33298198eae8675add875e96690e719b0dec713c24`; retrieved from `https://www.analog.com/media/en/technical-documentation/data-sheets/adv7160_7162.pdf` |

Neither was in the library or this repository before. Both were added with the
library's own acquisition tool and its manifest, which hashes them and snapshots
each URL to an archive. The search index had not picked either up when this was
written, so a text search for "ADV7160" will not find them until it re-indexes;
the cache path above is exact.

Proposed replacement for the S67 row:

```
| S67 | the published ADV716x video-DAC register description: vgadoc `RAMDAC.TXT` (library cache path `graphics/vgadoc/RAMDAC.TXT`, SHA-256 6413c323ce39...ff5b6df, section "Analog Devices ADV7160,ADV7162 True-Color Video RAM-DAC") and the Analog Devices ADV7160/ADV7162 data sheet REV. 0 (library cache path `graphics/analog-devices/adv7160_7162.pdf`, SHA-256 c8fa1a6dfc22...b713c24; address map, auto-increment rules, cursor and Table II on pp. 23-31). The data sheet is the authority; the vgadoc text is a summary of it. The DAC's part identity is inferred from the scan-chain name `adv7160_chip_type` and the matching register map |
```

The vgadoc text is a terse summary and omits the colour-register table, the
auto-increment rules for the colour registers and the pixel-origin statement; the
data sheet carries all three. Cite the data sheet for those.

Binaries read for this note: the kernel video object (`kona_video.o`, functions
`kona_enable_dac_cursor` and `kona_video_intr`), the X server module `kona.so`
(`konDisplayCursor` 0x441980, `konRecolorCursor` 0x53be80, the DAC cursor builder
0x53b6c0 and its only caller 0x4b78ac), and the diagnostic `irsaudit`
(`vdac_regs` 0x101fffc0, `TEST_dacreg` 0x100957a0 and its walker 0x10095918,
`vcWrite` 0x1014071c). All 6.5.30m. The ARM display firmware was not re-read in
this pass; its behaviour below is quoted from `ucode/arm1_functions.md`.

## Answers at a glance

| # | Question | Answer | Grade |
|---|---|---|---|
| 1 | Does the DAC index auto-advance after each data write? | Yes, for the ranges the cursor uses: 0x200-0x204 after every access, 0x400-0x7ff after every access (0x7ff wraps to 0x000), 0x303-0x304 after each blue component. Two senders depend on it. Not stated for 0x000-0x00f. | established for the cursor ranges; unknown outside them |
| 2 | Is display-bus address 0x22 the data register of the block last addressed? | No such address is ever written. The four position bytes go to display-bus address 0xb02 + 0x100n, which is register 2 of channel n's DAC block, with the address re-sent before every byte. The 0x22 in older notes is a misreading. | established |
| 3 | Is the position a signed 16-bit top-left in output pixels, and does the part add an offset? | Yes to the first; the part adds no offset of its own. Where pixel 0 of the image lands against active video depends on the BLANK timing the board feeds it. | established (software, part); unknown (BLANK alignment on this board) |
| 4 | 3 foreground, 2 background, 0 and 1 transparent? | Yes. | established for the published part; inferred that this board's DAC matches it; software agrees independently |

## 1. Does the index advance after each data write?

**Published part (established for the part).** The data sheet says that when
accessing control registers 200H to 204H, and when accessing the cursor image,
the address register auto-increments after each register access, and that on
accessing the last image location 7FFH it reverts to 000H. It also
auto-increments after a blue access to the colour registers 303H to 304H. The
cursor X/Y paragraph adds that all four position bytes are written in the order
X-low, X-high, Y-low, Y-high. The vgadoc text states the same for 200H to 203H
("the index register autoincrements with each access"). Neither document says
anything about auto-increment for the low control registers (0x003 to 0x00f).

**Shipped software (established).** Two senders write the index once and then
stream data:

- The kernel writes index 0x200 (display-bus address 0xb00 + 0x100n, data 0 then
  2, low byte first), then writes four data bytes to 0xb02 + 0x100n. It writes
  the index once; the second to fourth bytes can only land on 0x201 to 0x203 if
  the index advances.
- The display firmware (read earlier, not re-read now) selects index 0x303 once
  and writes six colour values, then selects 0x400 once and writes 1024 image
  bytes. That is 0x303 advancing to 0x304 after the first triple, and 0x400
  advancing through 0x7ff.

Software that writes the index before every access (the firmware's generic
indexed-register writer) does not depend on it, and neither does the diagnostic:
every access in its DAC register walk is preceded by a fresh index write, so it
neither proves nor disproves advance.

Grade: established for the cursor ranges, from the published description and
from two independent senders that would not work otherwise. Unknown for index
0x000 to 0x00f (the part may or may not advance; no software relies on it).
Inferred, not established, that the display chip in front of the DAC passes each
access through one-for-one; the senders' behaviour is the evidence.

Test to settle the low registers (needs a live board; none of the project's
systems has one): write index 0x004 and data 0xef, then without re-indexing read
the data port twice. If the index advanced, the second read returns index 0x005
(command register 1, start-up value 0x88); if it did not, both reads return
0xef. Restore index 0x004 to 0xff afterwards.

## 2. What is display-bus address 0x22?

The reading under test (the data register of the last-addressed block) has the
right destination and the wrong mechanism: no code writes address 0x22.

The kernel's cursor-position path (label `.L000019ec` in `kona_video_intr`)
does this, for the channel that owns the cursor:

1. address port (host window offset 0x3c0) <- 0xb00 + 0x100n
2. data port (0x3d0) <- 0, then <- 2 (index low byte, then high byte = 0x200)
3. then four times: address port <- 0xb02 + 0x100n, data port <- one byte, in
   the order x low, x high, y low, y high

The constant 0xb02 + 0x100n is formed in the sequence (the `addiu 2` on the
block address). A search of the kernel objects' disassembly for 34 and 0x22
immediates finds nothing in the video object and one `ori` in the generic kernel
object, outside the video path (not examined). The host window is an address latch (0x3c0) plus a data port (0x3d0),
so "the data register of the block last addressed" would be a coherent design,
but this driver does not rely on it: it re-sends the full address each time.

What the destination is: register 2 of the channel's DAC block, the
indexed-register data port. That matches the data sheet's register select
(C1:C0 = 1:0 is the control-register data port; 0 address, 1 palette data,
3 mode) and the firmware's use of 0x602c08 + (channel << 10), which is
display-bus 0xb02 + 0x100n (ARM address = 0x600000 + 4 x bus address).

Grade: established (instructions read) for the destination being register 2 of the channel's block, from the driver's and firmware's use of bus word 0xb02 + 0x100n. Inferred for the data sheet's register-select encoding quoted above: its text was not re-read in this pass, and the encoding agrees with the 0xb00-0xb03 port order in `defs/dac.toml` (address, palette data, register data, mode), which grades the palette-data and mode ports inferred. The 0x22 value survives only in two
places: the constant `KONA_DG_DAC_CURSOR_POS` in `DG.h` (whose own comment already
says the driver does not address 0x22) and the sentence "four address-0x22
writes" in `docs/dg.md`. Both should be corrected by their owners; this note
does not touch them.

No test needed. Any display-bus address 0x22 would be inside the display-chip's
own register space (below 0x100), which holds the display-id table
(`docs/command-table.md` section 6.2); nothing in the cursor path touches it.

## 3. Position bytes 0x200-0x203

**What the kernel sends (established).** Per axis the kernel computes

```
x_out = dac_xout * (x - x1) / (x2 - x1) - hot_x
y_out = dac_yout * (y - y1) / (y2 - y1) - hot_y
```

with (x1, y1, x2, y2) the channel's rectangle, `dac_xout`/`dac_yout` its output
size in pixels, and `hot_x`/`hot_y` signed bytes from the same record. The
signed 32-bit result is written as its low byte then its arithmetic-shifted high
byte (low 16 bits, two's complement). Division truncates toward zero. There is
no bias: unlike the other cursor path, which adds 32, this one adds nothing. The
result is therefore the screen position of the pointer in the channel's output
pixels minus the hot spot, i.e. where the image's top-left pixel goes. Because
the pointer lies inside the rectangle, the scaled value is non-negative, so the
only way to reach a negative position is the hot spot, at most 128 pixels.

**What the part does (established for the published part).** The X and Y
registers form 16-bit two's complement values; the valid range is -4096 to 4095
(0xfff). The cursor origin (0, 0) is the cursor image's top-left, and the
position is taken relative to that point, which is how a negative value puts the
cursor partly off the left or top edge. The part adds no offset to the value.
Screen coordinates are measured from the rising edge of BLANK: the first pixel
after that edge is (0, 0).

Grade: established that the position is a signed 16-bit top-left in output
pixels and that neither software nor the part adds an offset. Unknown, because it
depends on the board and not the part: which active-video pixel is (0, 0). The
part counts from BLANK, so the answer is whatever BLANK edge the display chip
supplies; whether that edge is the first active pixel or sits a fixed number of
clocks earlier is not in the software or the data sheet.

Test: with the cursor channel at a known output format, load a 64 x 64 image
whose only lit pixel is its top-left, set position 0, 0 and zero hot spot, and
observe on the monitor (or by capturing the DAC output) which output pixel
lights. Repeat at 1, 1. If the lit pixel is not the first active pixel, the
difference is the BLANK offset. Also unknown: interlaced outputs. The kernel
always writes control value 5, so the interlace bit (bit 3) stays clear; the
data sheet shows a field-dependent line offset when it is set. Whether any
interlaced format uses the DAC cursor is a separate observation.

## 4. Which colour does each 2-bit value select?

**Published part (established for the part).** Table II of the data sheet (the
vgadoc text has the same table), for cursor mode 1 (X11):

| Pixel value (bit 1, bit 0) | Colour | Grade |
|---|---|---|
| 0 | transparent | established for the part |
| 1 | transparent | established for the part |
| 2 | Cursor Color 1 | established for the part |
| 3 | Cursor Color 2 | established for the part |

Cursor Color 2 is at index 0x303 and Cursor Color 1 at 0x304 (note the reverse
numbering against address). Each is three 10-bit components accessed red, green,
blue, with the index advancing after blue.

**What the senders put in the registers (established).**

- The X module's DAC cursor builder (kona.so 0x53b6c0) forms each image pixel as
  (mask << 1) | source, so value 3 is source and mask both set, value 2 is mask
  only, value 1 is source only, value 0 neither. Under X cursor semantics those
  are foreground, background, undefined and transparent.
- The same builder sends the colours in request words 1 to 6 as the cursor's
  foreground red, green, blue and then its background red, green, blue, each the
  top ten bits of the 16-bit X colour.
- The firmware (quoted) selects index 0x303 and streams the six values. The first
  triple therefore lands at 0x303 (Cursor Color 2, pixel value 3) and the second
  at 0x304 (Cursor Color 1, pixel value 2).

So the foreground triple is the colour the part shows for value 3 and the
background triple the colour it shows for value 2. The software's X semantics
and the data sheet's table agree, with no free parameter: swap either pairing and
every X cursor would draw with foreground and background reversed.

**Other findings in the same code.**

- `konRecolorCursor` (0x53be80) and `konDisplayCursor` (0x441980) only ever send the
  display-generator cursor loads (colour words 256-259 and mode requests). Neither
  calls the DAC builder, and the builder is the only place in kona.so that sends
  display request 56 (the DAC cursor load), reached from the channel-rectangle
  setup at 0x4b78ac. So recolouring an already-loaded cursor does not resend DAC
  colours in the paths read; a recolour reaches the DAC only when the module
  reloads the image. Found by reading the three functions; not tested.
- The diagnostic names index 0x304 `CURSOR_CLR_2`. That is its own numbering
  (second colour, which here is pixel value 2, the background), not the data
  sheet's "Color 2", which is 0x303. Do not read it as a conflict.
- The diagnostic checks only the low 4 bits of cursor control (mask 0xf), which
  fits the data sheet's rule to write zero to bits 7:4. It masks the colour
  register with 0x3ff, i.e. 10 bits, and writes a single value then reads it back
  after a fresh index write each time, so it exercises only the red component of
  0x304.
- The same table gives the pixel-mask register (index 0x004) the mask 0x3ff. The
  data sheet describes the pixel mask as 8 bits (D0 matched to R0, G0, B0, "set
  to FFh"), and the diagnostic compares only the low 8 bits on read-back, so the
  command table's "10 bits" for index 0x004 is not supported; it reads as 8 bits.
- Whether the value 1 can reach the part: the builder ANDs source and mask with
  the width mask only and does not clear source bits that lie outside the mask,
  so a cursor whose source is not a subset of its mask sends value 1. The part
  draws nothing for it in X11 mode.

Grade: established for the published part's table and for what the senders
write; inferred that this board's DAC follows the same table, because the part
identity itself is inferred (nothing reads the ID register at index 3). The
agreement between two independent chains (data sheet table + stream order vs. X
fore/back semantics) is the strongest argument that the identity inference is
right on this point.

Test to settle identity and the table together: read index 3 (low byte 3, high
byte 0) and expect 0x76 (ADV7160) or 0x79 (ADV7162). Then load a cursor whose
image has all four values in four blocks and distinct foreground and background
colours, and see which blocks are drawn: 3 shows the first-streamed colour, 2
the second, 0 and 1 show the screen.

## Unknowns, with tests

| Unknown | Test |
|---|---|
| Auto-advance of index 0x000-0x00f | write index 4, data 0xef, read twice with no re-index; second read 0x88 if advancing (question 1) |
| Part identity (ADV7160 vs ADV7162) | read index 3, expect 0x76 or 0x79 |
| Which active pixel is cursor (0, 0) | single-pixel cursor at 0, 0 and 1, 1 on a known output format |
| Interlaced behaviour (bit 3 never set by the kernel) | cursor on an interlaced channel, compare line parity with the data sheet's Even/Odd field rule |
| How the diagnostic's index write reaches the part: it writes the index as one 32-bit word equal to the block address plus the register number (0xd04 for 0x204 on the first block), not as two byte writes; the code read does not explain how the high byte 0x2 arrives | write 0xd04 to 0xb00, then read register 0 twice (low, then high) and compare with 0x04 and 0x02; settles whether the display chip splits wide writes |
| Pixel order inside an image byte | the data sheet text says four pixels per byte, leftmost first, but not which bit pair; the repository's derived order (leftmost pixel in bits 7:6) is inferred; load a one-pixel image and see which column lights |

## Proposed rows

Replacement rows for `docs/command-table.md` section 6.6 (the evidence key
column assumes the proposed S67 above; S7 and S44 stay):

```
| DAC block register 0 | index: two byte writes, low then high, forming a 16-bit index (the part's address register; the second same-type access reaches the high byte, any intervening access to another register or a change of read/write makes the next access the low byte again). The index advances after each access in 0x200-0x204, after each access in 0x400-0x7ff (0x7ff wraps to 0x000) and after each blue component in 0x303-0x304; whether it advances in 0x000-0x00f is not stated | high byte selects the 0x000 / 0x200 / 0x300 / 0x400 spaces | established (advance in the cursor ranges: published description plus the kernel's four-byte position write and the firmware's colour and image streams); unknown (advance in 0x000-0x00f); part identity inferred | S13, S67 |
| indexed 0x200-0x203 | DAC cursor position: x low byte, x high byte, y low byte, y high byte, written in that order after one index write. Two's complement 16 bits per axis, valid -4096 to 4095; value is the image's top-left in output pixels (the kernel sends the scaled pointer position minus the hot spot, with no bias); the part adds no offset; (0, 0) is the first pixel after the rising BLANK edge | scaled to the channel output size; port is display-bus 0xb02 + 0x100n (the kernel re-sends the address before each byte) | established (software, part); unknown (which active pixel BLANK's first pixel is on this board); interlaced use unknown (kernel never sets control bit 3) | S7, S67 |
| indexed 0x303, 0x304 | DAC cursor colours: 0x303 is the part's Cursor Color 2 and 0x304 its Cursor Color 1, each red, green, blue of 10 bits, index advancing after blue. The firmware streams six values from 0x303: the first triple (foreground) to 0x303, the second (background) to 0x304. The diagnostic's name `CURSOR_CLR_2` for 0x304 is its own numbering | 10-bit components | established (stream order and published layout); the part identity inferred | S13, S44, S45, S67 |
| which colour a 2-bit DAC cursor value selects | X11 mode (control bits 1:0 = 1): 0 and 1 transparent, 2 = the triple at 0x304 (background), 3 = the triple at 0x303 (foreground). The builder forms the value as (mask << 1) \| source, so value 1 (source without mask) is sent only by a cursor whose source is not a subset of its mask, and draws nothing | - | established for the published part's table and the senders; inferred that this board's DAC follows it | S44, S67 |
| cursor-load request words 1-6 | foreground red, green, blue then background red, green, blue, each a 16-bit X colour >> 6 (10 bits); the firmware streams them to indexed registers 0x303 (the three foreground components, then the index advances) and 0x304 (the three background components) | 6 words | established | S5, S44, S67 |
| indexed 0x004 | pixel mask | 8 bits per the published description (the diagnostic's table mask is 0x3ff but its read-back compares the low 8 bits); start-up 0xff | established | S13, S45, S67 |
```

Also for `DG.h` and `docs/dg.md`: remove the value 0x22 and the phrase "four
address-0x22 writes"; the port is display-bus 0xb02 + 0x100n.
