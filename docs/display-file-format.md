# Display-format file format

The display-format files of the board (`.vfo` video formats and `.cmb` combinations under `usr/gfx/ucode/KONA/dg4/`, and the diagnostics' copies under `usr/diags/IR/data/`) share one binary container. This chapter derives the container and how the X module reads a video format into the 1532-byte `LoadFormat` payload. The decoded parameters of every file are in [display-formats.md](display-formats.md), written by `scripts/display_formats.py`, which applies what is derived here. The meaning of the fields as timing, and the request they feed, are in [ucode/dg.md](../ucode/dg.md) and [dg.md](dg.md#the-loadformat-request-383-words).

Sources: the 6.5.30m binary `usr/lib/X11/dyDDX/konal.so` (the X module an IP27 system loads), read with `objdump` and a GOT-resolving annotator; addresses below are its file addresses. The same functions with the same sizes are in `kona.so`, `konad.so` and `konas.so` ([kona-ddx.md](kona-ddx.md#symbol-database-reader-and-writer)). Labels: **established** (read from the code and checked on all 104 container files), **inferred** (a reading with its reason).

## Which routines read the files

- `vfmtFindKonaFormatFile` (konal.so, address 0x13ab1a0): **established.** Resolves a format name to a path; `vfmtReadKonaVideoFormat` calls it first and keeps the file's base name, the text after the last slash.
- `vfmtReadKonaVideoFormat` (konal.so, address 0x13b1140): **established.** Opens the file with `SDBreadOpenDatabase` (address 0x13b1ee8) and clears a 2020-byte record with `bzero`. It copies the base name into the record at +460 (64 bytes, NUL at +523), and stores the file's modification time at +524 and at +260 from the `stat` result of `vfmtGetLastKonaFileStat`. It then calls seven section decoders in order, stopping at the first that fails, and closes the database with `SDBcloseReadDatabase`. Failures are logged with source line numbers 646 (file not found), 649 (cannot open) and 662 (no `stat`). The request sent to the display generator is the 1532 bytes of the record from +452, which this chapter calls the format block; every offset below is from the start of the block unless it says "record".
- `vfmtReadKonaCombination` (konal.so, address 0x13acd70): **established.** Reads a `.cmb`; its global fields and the 2736-byte channel records are in [kona-ddx.md](kona-ddx.md#symbol-database-reader-and-writer) and [ucode/dg.md](../ucode/dg.md#combination-files-cmb).

## The container

**Established**, from `xdr_SDBfileHeader` (konal.so, address 0x13b26c0), `xdr_SDBsymbolTableEntry` (address 0x13b28a4) and `xdr_SDBversionNumber` (address 0x13b296c), and checked against the bytes of all 104 container files (74 and 4 `.vfo` files and 26 `.cmb` files). Everything is XDR, so each item is a big-endian 32-bit word or a run of such words.

| File offset | Content | Derived from |
|---|---|---|
| 0 | `xdr_bytes` of the magic with a maximum of 4: a length word 4, then the bytes `sdb ` | first call of `xdr_SDBfileHeader`, maximum argument 4 |
| 8, 12 | format version, major then minor: two `xdr_u_short` values, each in a word; 0 and 1 in every file | `xdr_SDBversionNumber` at header +4, called at 0x13b273c |
| 16, 20 | data version, major then minor, in the same encoding: equal to `VFCMajorVersion` and `VFCMinorVersion` of a `.vfo` (1 and 1 in 73 files) and to `MajorVersion` and `MinorVersion` of a `.cmb` (1 and 0 in 26 files); 0 and 1 in the five `.vfo` files that carry neither field | `xdr_SDBversionNumber` at header +8; `SDBsetHeader` fills it from the caller's pair |
| 24, 28 | `xdr_bytes` of the description with a fixed length word 100, then 100 bytes zero padded: `VideoFormatCompiler` in a `.vfo`, `Kona video format combination file` in a `.cmb`, and a sentence of text in two diagnostics files | second `xdr_bytes`, length 100, maximum 100 |
| 128 | symbol count (`xdr_SDBelementIndex`, header +112) | the call at 0x13b2780 |
| 132 | a file offset (`xdr_SDBfileOffset`, header +116), 0 in every file | the call at 0x13b2794 |
| 136 | file offset of the name table (header +120) | the call at 0x13b27a8 |
| 140 | `xdr_array` of ten words with element count 0 written, so a single zero word | the call at 0x13b27cc with count 0 and maximum 10 |
| 144 | the field values, back to back | `SDBaddNewScalarSymbol` and `SDBaddNewArraySymbol` write each value at the stream position when it is added, and `SDBcloseNewDatabase` writes the table last |
| table | a count word equal to the symbol count, then one entry per symbol | `xdr_array` in `SDBcloseNewDatabase` |

A table entry is four items in this order: the name as `xdr_string` (a length word, the characters, padding to four bytes), the data type as an enumeration word, the element count word (0 for a scalar; the array length otherwise), and the file offset of the value. `xdr_SDBsymbolName` limits a name to 31 characters and forces the 32nd byte of the in-memory copy to NUL, so every name is at most 31 characters (the longest in the files, `_TransitionLineTypesUsing_Name_`, has exactly 31). The table is sorted by name: `SDBcloseNewDatabase` sorts the 44-byte in-memory entries with `qsort` and `compareSTEName` (address 0x13b228c), and the lookup helper behind `SDBgetSymbolValueScalar` uses `bsearch` with the same comparison on the 32-byte name at +12 of an entry. The values are not sorted: they are in the order the writer added them, each starting where the previous ended.

**Established** (the 144-byte head and the table of all files): the offset of the table in the header is exact in 103 of the 104 files. In `160x100_5000.vfo` it is one byte above the real table (0x2bd0 against 0x2bcf) and the value offsets from the string `dg4_def_version` on are one byte above the data, which the element count that opens each array shows; `scripts/display_formats.py` takes the true positions from those counts.

## Data types

**Established**, from `mapTypeToXDRPROC` (konal.so, address 0x13b22c4), whose jump table of 21 entries at 0x1511e48 gives each type its XDR routine and in-memory size, and checked against the types the files use:

| Type | XDR routine | Memory size | Used for |
|---:|---|---:|---|
| 2 | `xdr_int` | 4 | integers: lines, pixels, counts, indexes, array entries |
| 7 | `xdr_u_short` (the default case) | 2 | the two version fields of a `.cmb`; a file stores it in a full word |
| 10 | `xdr_bool` | 4 | booleans: interlace, stereo, valid flags, per-line-type edge masks |
| 15 | `xdr_wrapstring` | 4 | strings |
| 16 | `xdr_float` | 4 | single-precision values in a `.cmb`: gains, gammas, safe area, filter size |
| 17 | `xdr_double` | 8 | rates and times in a `.vfo` |

Types 3, 4, 5, 6, 8, 9, 11, 18 and 19 map to the other `xdr_*` routines; no file uses them, and type 0 and types above 20 trip the assertions `DataType_Unused != type` and `typeMustBeDefined` of `sdbcommon.c`. A value with a nonzero element count starts with that count and then holds the elements through `xdr_array`, in `xdr_typedData` (address 0x13b256c).

## How a `.vfo` is read into the format block

**Established**, from the seven decoders that `vfmtReadKonaVideoFormat` calls, which sit between 0x13aea00 and 0x13b1140. Each takes the record and the open database, fetches fields with `SDBgetSymbolValueScalar`, `SDBgetSymbolValueArray` and `SDBgetSymbolElementCount`, logs "unable to find %s" with a source line number when a required field is missing, and returns 1 on success. The format-block offset of each result is the word number of the `LoadFormat` request ([dg.md](dg.md#the-loadformat-request-383-words)) times four.

| Decoder (konal.so) | Fields read | Result in the format block |
|---|---|---|
| address 0x13aea00 | `FormatName`, `FieldsPerFrame`, `SwapsPerFrame`, `OldStyleStereo`, `SerratedCSyncOnHSync`, `FramesPerSecond`, `TotalLinesPerFrame`, `TotalPixelsPerLine`, `ActiveLinesPerFrame`, `ActivePixelsPerLine`, `VideoClockRatioNumerator`, `VideoClockRatioDenominator`, `ActiveBlankingLeft`, `ActiveBlankingRight`, the three `FormatInfo_H_` porch fields and, per field, five `FormatInfo_F_%d_V_` timings | the name into the record at +4 (255 bytes); the fields count at +80 (checked to be 1 to 8, else "illegal nFieldsPerFrame"); swaps, old-style stereo and serrated sync into the record at +440, +444 and +448 (0 when absent); the rate times a constant into +76; total lines and pixels at +84 and +88; active lines and pixels at +92 and +96; the denominator at +100 (1, 2 or 4, else "illegal nPixelsPerClock"); the constant 1 at +112 and the two blanking widths turned into masks at +116 and +120; the horizontal timings into the record at +268, +272 and +276 and the vertical timings from +280 |
| address 0x13af430 | `TransitionDirectionHigh`, `TransitionDirectionLow`, `SignalInitialStateValid`, `SignalInitialStateValue` | a bit mask at +128, bit n set when initial state n of at most 14 equals the high-direction code; a count above 14 fails with "exceeds max size 14" |
| address 0x13af990 | `StateTableValidStates`, `StateTableLineType`, `StateTableRepetitions` | the number of states at +124; two states per word from +132, packed by the routine at 0x13af810 (repetitions in 11 bits and the line type in 5, the odd state in the upper half); at most 256 entries |
| address 0x13afd00 | `LineTypeValid`, `LineTypeLength` | per line type a word from +772 holding the length minus 3 in bits 30 to 18, cleared when the type is not valid; at most 32 entries |
| address 0x13b0040 | the four name templates `_TransitionValid_Name_`, `_TransitionValue_Name_`, `_TransitionDirection_Name_` and `_TransitionLineTypesUsing_Name_`, then the arrays they name, then `TransitionDirectionHigh` and `TransitionDirectionLow` again | per line type the mask of edges 0 to 31 from +644 and edges 32 to 49 in the low 18 bits of the +772 words; per edge slot the position from +900 |
| address 0x13b0960 | `FieldLineCount`, `FieldLineOffset`, `FieldLineSkip`, `FieldColor`, `FieldEye` | five arrays of at most `FieldsPerFrame` entries at +1212, +1276, +1340, +1404 and +1468, the last two re-coded in place |
| address 0x13b0c50 | `PFDLT`, `PFDEQ`, `PFDGT`, `PFDTrigger`, `PFDInvert`, `PFDRegularLines`, `PFDComparatorPrecision`, `PFDClockSelect`, `PFDVOFVerticalPhase`, `PFDValidTable`, `PFDTable` | the record past the request, from offset 1984 to 2012 ([dg.md](dg.md#genlock-parameters-command-25) lists the consumers) |

**Established** (absence): the decoders never fetch `DACRateMaximum`, `DACRateMinimum`, the `System*` and `Monitor*` rate limits, the `Hardware` and `Architecture` strings, `HBackPorchClampStart`, `HBackPorchClampLength` or `FormatInfo_F_n_ActiveLineCount`; those fields are stored in the file and reach no part of the request. The name template of the third decoder shows that a writer builds the 50 per-edge array names from a format stored in the file itself (`TransitionLineTypesUsing%05d`), so the reader needs no list of names.

## The parser

`scripts/display_formats.py` applies the container and the type table above, reads fields by name, and computes the rows of [display-formats.md](display-formats.md). Its `--check` mode tests, on every `.vfo`, the relations the format keeps: the repetitions of the valid states sum to `TotalLinesPerFrame`, each valid `LineTypeLength` is `TotalPixelsPerLine` times `VideoClockRatio`, `FormatInfo_PixelClock` is the product of pixels, lines and frame rate within 0.2 percent, and the horizontal sync, back porch, active width and front porch sum to the pixels per line. It passes on all 78 `.vfo` files except the diagnostics' `CCIR601_525_DGO.vfo`, whose stored `FormatInfo_H_Active` is 719 against 720 active pixels per line.
