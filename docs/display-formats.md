# Display-format files: decoded parameters

Every row below is read from the file it names by `scripts/display_formats.py`; rerun the script to regenerate this page. The container layout, the field dictionary and the routines that read them are in [display-file-format.md](display-file-format.md). All values are **established** from the file contents (IRIX 6.5.30m install, first configuration: the DG4 display generator); the page makes no claim about what a field does beyond what its section of that chapter derives.

The script also tests the relations the format keeps on every file and reports the failures in the closing section: the repetitions of the valid states add up to the lines of the frame, every valid line length is the pixels per line times the clock ratio, the pixel clock is pixels times lines times frame rate within 0.2 percent, and the four horizontal parts add up to the line.

## Video formats of the display generator

One row per `.vfo` file under `dg4/vfo/`. Columns: the active and total raster, the frame rate, the pixel clock (`FormatInfo_PixelClock` divided by a million), the three horizontal parts in pixels and the three vertical parts in lines of the first field (the file stores them as clock counts and the script divides by the pixels per line). Scan, mode, fields, clock ratio and frame detection come from the interlace, stereo, field and sync fields; the counts are the valid entries of the state table, the line types and the edge slots. The last three columns say where in the file the name table starts, where the pixel clock value is stored and how many fields the file has.

| File | Label | Active (x by lines) | Total (x by lines) | Frame rate (Hz) | Pixel clock (MHz) | H sync (pixels) | H back porch (pixels) | H front porch (pixels) | V sync (lines) | V back porch (lines) | V front porch (lines) | Scan | Mode | Fields | Clock ratio | Frame detection | State table | Line types | Edges | Container | Clock value | File fields |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `1024x768_120_20e21s.vfo` | established | 1024x768 | 1280x1614 | 60 | 123.955 | 128 | 112 | 16 | 6 | 30 | 3 | progressive | stereo | 2 fields | 2 pixels/clock | hsync serrated | 20 states | 11 line types | 22 edges | table at 0x2bdc | clock at +0x2b84 | 179 fields |
| `1024x768_120s.vfo` | established | 1024x768 | 1280x1614 | 60 | 123.955 | 128 | 112 | 16 | 6 | 30 | 3 | progressive | stereo | 2 fields | 2 pixels/clock | hsync serrated | 20 states | 11 line types | 22 edges | table at 0x2bdc | clock at +0x2b84 | 179 fields |
| `1024x768_50.vfo` | established | 1024x768 | 1280x806 | 50 | 51.584 | 128 | 112 | 16 | 4 | 30 | 4 | progressive | mono | 1 field | 2 pixels/clock | csync | 12 states | 9 line types | 21 edges | table at 0x2bc8 | clock at +0x2b88 | 176 fields |
| `1024x768_60.vfo` | established | 1024x768 | 1280x806 | 60 | 61.901 | 128 | 112 | 16 | 4 | 30 | 4 | progressive | mono | 1 field | 2 pixels/clock | csync | 12 states | 9 line types | 21 edges | table at 0x2bc8 | clock at +0x2b88 | 176 fields |
| `1024x768_96_20e21s.vfo` | established | 1024x768 | 1280x1614 | 48 | 99.164 | 128 | 112 | 16 | 6 | 30 | 3 | progressive | stereo | 2 fields | 2 pixels/clock | hsync serrated | 20 states | 11 line types | 22 edges | table at 0x2bd8 | clock at +0x2b80 | 179 fields |
| `1024x768_96s.vfo` | established | 1024x768 | 1280x1614 | 48 | 99.164 | 128 | 112 | 16 | 6 | 30 | 3 | progressive | stereo | 2 fields | 2 pixels/clock | hsync serrated | 20 states | 11 line types | 22 edges | table at 0x2bd8 | clock at +0x2b80 | 179 fields |
| `1080x809_30i.vfo` | established | 1080x809 | 1322x875 | 30 | 34.703 | 96 | 112 | 34 | 2 | 24 | 5 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 28 states | 18 line types | 26 edges | table at 0x2be4 | clock at +0x2b8c | 179 fields |
| `1120x840_96_20e21s.vfo` | established | 1120x840 | 1400x1758 | 48 | 118.138 | 140 | 124 | 16 | 6 | 30 | 3 | progressive | stereo | 2 fields | 2 pixels/clock | hsync serrated | 20 states | 11 line types | 22 edges | table at 0x2bd8 | clock at +0x2b80 | 179 fields |
| `1120x840_96s.vfo` | established | 1120x840 | 1400x1758 | 48 | 118.138 | 140 | 124 | 16 | 6 | 30 | 3 | progressive | stereo | 2 fields | 2 pixels/clock | hsync serrated | 20 states | 11 line types | 22 edges | table at 0x2bd8 | clock at +0x2b80 | 179 fields |
| `1200x900_72.vfo` | established | 1200x900 | 1500x945 | 72 | 102.06 | 150 | 132 | 18 | 4 | 37 | 4 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 10 line types | 21 edges | table at 0x2bc8 | clock at +0x2b88 | 176 fields |
| `1280x1024_114s.vfo` | established | 1280x1024 | 1600x2186 | 57 | 199.363 | 160 | 140 | 20 | 6 | 60 | 3 | progressive | stereo | 2 fields | 4 pixels/clock | hsync serrated | 20 states | 11 line types | 22 edges | table at 0x2bdc | clock at +0x2b84 | 179 fields |
| `1280x1024_120s.vfo` | established | 1280x1024 | 1600x2186 | 60 | 209.856 | 160 | 140 | 20 | 6 | 60 | 3 | progressive | stereo | 2 fields | 4 pixels/clock | hsync serrated | 20 states | 11 line types | 22 edges | table at 0x2bdc | clock at +0x2b84 | 179 fields |
| `1280x1024_180qi.vfo` | established | 1280x1024 | 1640x3270 | 30 | 160.884 | 140 | 180 | 40 | 6 | 26 | 1 | interlaced | sequential colour | 6 fields | 4 pixels/clock | hsync serrated | 52 states | 16 line types | 26 edges | table at 0x2cb8 | clock at +0x3cc | 203 fields |
| `1280x1024_25r2.vfo` | established | 1280x1024 | 1680x2130 | 25 | 89.46 | 120 | 240 | 40 | 6 | 32 | 3 | progressive | mono | 2 fields | 2 pixels/clock | hsync serrated | 19 states | 11 line types | 22 edges | table at 0x2bec | clock at +0x2b94 | 179 fields |
| `1280x1024_25r3.vfo` | established | 1280x1024 | 1680x3195 | 25 | 134.19 | 120 | 240 | 40 | 6 | 32 | 3 | progressive | mono | 3 fields | 2 pixels/clock | hsync serrated | 28 states | 12 line types | 22 edges | table at 0x2c1c | clock at +0x2bac | 185 fields |
| `1280x1024_30r2.vfo` | established | 1280x1024 | 1680x2130 | 29.97 | 107.245 | 120 | 240 | 40 | 6 | 32 | 3 | progressive | mono | 2 fields | 2 pixels/clock | hsync serrated | 19 states | 11 line types | 22 edges | table at 0x2bf0 | clock at +0x2b98 | 179 fields |
| `1280x1024_50.vfo` | established | 1280x1024 | 1680x1065 | 50 | 89.46 | 120 | 240 | 40 | 3 | 35 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2ba8 | clock at +0x2b68 | 173 fields |
| `1280x1024_60.vfo` | established | 1280x1024 | 1680x1065 | 60 | 107.352 | 120 | 240 | 40 | 3 | 35 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2ba8 | clock at +0x2b68 | 173 fields |
| `1280x1024_72.vfo` | established | 1280x1024 | 1680x1065 | 72 | 128.822 | 120 | 240 | 40 | 3 | 35 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2ba8 | clock at +0x2b68 | 173 fields |
| `1280x492_120s.vfo` | established | 1280x984 | 1680x1066 | 60 | 107.453 | 120 | 240 | 40 | 6 | 32 | 3 | progressive | stereo | 2 fields | 2 pixels/clock | hsync serrated | 19 states | 11 line types | 22 edges | table at 0x2bec | clock at +0x2b94 | 179 fields |
| `1280x720_5994p.vfo` | established | 1280x720 | 1650x750 | 59.94 | 74.176 | 80 | 220 | 70 | 5 | 20 | 5 | progressive | mono | 1 field | 2 pixels/clock | csync | 10 states | 9 line types | 21 edges | table at 0x2bb0 | clock at +0x2dc | 173 fields |
| `1280x720_60p.vfo` | established | 1280x720 | 1650x750 | 60 | 74.25 | 80 | 220 | 70 | 5 | 20 | 5 | progressive | mono | 1 field | 2 pixels/clock | csync | 10 states | 9 line types | 21 edges | table at 0x2bb0 | clock at +0x2dc | 173 fields |
| `1280x959_30i.vfo` | established | 1280x959 | 1630x1023 | 30 | 50.025 | 138 | 162 | 50 | 2 | 24 | 5 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 28 states | 17 line types | 26 edges | table at 0x2be4 | clock at +0x2b8c | 179 fields |
| `1500x1200_60.vfo` | established | 1500x1200 | 1876x1260 | 60 | 141.826 | 184 | 172 | 20 | 6 | 48 | 6 | progressive | mono | 1 field | 4 pixels/clock | csync | 14 states | 10 line types | 21 edges | table at 0x2bcc | clock at +0x2b8c | 176 fields |
| `1600x1024_60.vfo` | established | 1600x1024 | 2144x1060 | 60 | 136.358 | 168 | 272 | 104 | 3 | 32 | 1 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2bac | clock at +0x2b6c | 173 fields |
| `1600x1024_60p.vfo` | established | 1600x1024 | 1704x1056 | 60.019 | 108 | 40 | 48 | 16 | 3 | 26 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2bac | clock at +0x2b6c | 173 fields |
| `1600x1200_60.vfo` | established | 1600x1200 | 2084x1250 | 60 | 156.3 | 120 | 320 | 44 | 6 | 39 | 5 | progressive | mono | 1 field | 4 pixels/clock | csync | 14 states | 10 line types | 21 edges | table at 0x2ba8 | clock at +0x2b68 | 173 fields |
| `1760x1100_60.vfo` | established | 1760x1100 | 2344x1184 | 60 | 166.518 | 200 | 340 | 44 | 3 | 78 | 3 | progressive | mono | 1 field | 4 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2bc0 | clock at +0x2b80 | 173 fields |
| `1920x1035_30i.vfo` | established | 1920x1035 | 2200x1125 | 30 | 74.25 | 88 | 148 | 44 | 6 | 34 | 5 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 20 states | 12 line types | 31 edges | table at 0x2c08 | clock at +0x2bb0 | 184 fields |
| `1920x1080_2398p.vfo` | established | 1920x1080 | 2750x1125 | 23.976 | 74.176 | 44 | 192 | 594 | 5 | 35 | 5 | progressive | mono | 1 field | 2 pixels/clock | csync | 10 states | 9 line types | 21 edges | table at 0x2bb0 | clock at +0x2b70 | 173 fields |
| `1920x1080_2398psf.vfo` | established | 1920x1080 | 2750x1125 | 23.976 | 74.176 | 44 | 192 | 594 | 5 | 15 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 20 states | 13 line types | 24 edges | table at 0x2be0 | clock at +0x30c | 179 fields |
| `1920x1080_24p.vfo` | established | 1920x1080 | 2750x1125 | 24 | 74.25 | 44 | 192 | 594 | 5 | 35 | 5 | progressive | mono | 1 field | 2 pixels/clock | csync | 10 states | 9 line types | 21 edges | table at 0x2bb0 | clock at +0x2b70 | 173 fields |
| `1920x1080_24psf.vfo` | established | 1920x1080 | 2750x1125 | 24 | 74.25 | 44 | 192 | 594 | 5 | 15 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 20 states | 13 line types | 24 edges | table at 0x2be0 | clock at +0x30c | 179 fields |
| `1920x1080_25i.vfo` | established | 1920x1080 | 2640x1125 | 25 | 74.25 | 88 | 148 | 484 | 6 | 14 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 20 states | 12 line types | 25 edges | table at 0x2bdc | clock at +0x30c | 179 fields |
| `1920x1080_30i.vfo` | established | 1920x1080 | 2200x1125 | 29.97 | 74.176 | 88 | 148 | 44 | 6 | 14 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 20 states | 12 line types | 31 edges | table at 0x2c08 | clock at +0x2bb0 | 184 fields |
| `1920x1080_5994i_bilevel.vfo` | established | 1920x1080 | 2200x1125 | 29.97 | 74.176 | 88 | 148 | 44 | 5 | 15 | 2.5 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 19 states | 12 line types | 28 edges | table at 0x2bdc | clock at +0x30c | 179 fields |
| `1920x1080_60.vfo` | established | 1920x1080 | 2560x1172 | 59.994 | 180.001 | 216 | 376 | 48 | 3 | 86 | 3 | progressive | mono | 1 field | 4 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2bb8 | clock at +0x2b78 | 173 fields |
| `1920x1080_60i_bilevel.vfo` | established | 1920x1080 | 2200x1125 | 30 | 74.25 | 88 | 148 | 44 | 6 | 14 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 20 states | 12 line types | 25 edges | table at 0x2bdc | clock at +0x30c | 179 fields |
| `1920x1080_72.vfo` | established | 1920x1080 | 2560x1172 | 71.992 | 215.999 | 216 | 376 | 48 | 3 | 86 | 3 | progressive | mono | 1 field | 4 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2bb0 | clock at +0x2b70 | 173 fields |
| `1920x1200_2398r2.vfo` | established | 1920x1200 | 2396x2584 | 23.976 | 148.442 | 200 | 240 | 36 | 3 | 86 | 3 | progressive | mono | 2 fields | 4 pixels/clock | hsync serrated | 19 states | 11 line types | 22 edges | table at 0x2bf0 | clock at +0x2b98 | 179 fields |
| `1920x1200_24r2.vfo` | established | 1920x1200 | 2396x2584 | 24 | 148.59 | 200 | 240 | 36 | 3 | 86 | 3 | progressive | mono | 2 fields | 4 pixels/clock | hsync serrated | 19 states | 11 line types | 22 edges | table at 0x2bf0 | clock at +0x2b98 | 179 fields |
| `1920x1200_50.vfo` | established | 1920x1200 | 2396x1292 | 50 | 154.782 | 200 | 240 | 36 | 3 | 86 | 3 | progressive | mono | 1 field | 4 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2bc0 | clock at +0x2b80 | 173 fields |
| `1920x1200_60.vfo` | established | 1920x1200 | 2396x1292 | 60 | 185.738 | 200 | 240 | 36 | 3 | 86 | 3 | progressive | mono | 1 field | 4 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2bc0 | clock at +0x2b80 | 173 fields |
| `1920x1200_66.vfo` | established | 1920x1200 | 2560x1292 | 66 | 218.296 | 216 | 376 | 48 | 3 | 86 | 3 | progressive | mono | 1 field | 4 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2bc0 | clock at +0x2b80 | 173 fields |
| `2048x1120_72.vfo` | established | 2048x1120 | 2636x1159 | 72 | 219.969 | 184 | 268 | 136 | 3 | 33 | 3 | progressive | mono | 1 field | 4 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2bbc | clock at +0x2b7c | 173 fields |
| `640x480_120s.vfo` | established | 640x480 | 800x1014 | 60 | 48.672 | 80 | 70 | 10 | 6 | 18 | 3 | progressive | stereo | 2 fields | 2 pixels/clock | hsync serrated | 19 states | 11 line types | 22 edges | table at 0x2bd8 | clock at +0x2b80 | 179 fields |
| `640x480_180q.vfo` | established | 640x480 | 880x1560 | 60 | 82.368 | 80 | 120 | 40 | 6 | 33 | 1 | progressive | sequential colour | 3 fields | 2 pixels/clock | csync | 25 states | 12 line types | 22 edges | table at 0x2c1c | clock at +0x2bac | 185 fields |
| `640x480_60.vfo` | established | 640x480 | 800x525 | 60 | 25.2 | 96 | 48 | 16 | 2 | 33 | 10 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 9 line types | 21 edges | table at 0x2bb8 | clock at +0x2b78 | 173 fields |
| `640x486_30i.vfo` | established | 640x486 | 780x525 | 29.97 | 12.273 | 58 | 60 | 22 | 3 | 14 | 3 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 22 states | 16 line types | 30 edges | table at 0x2be0 | clock at +0x2b88 | 181 fields |
| `640x512_120s.vfo` | established | 640x512 | 800x1088 | 60 | 52.224 | 80 | 70 | 10 | 6 | 23 | 3 | progressive | stereo | 2 fields | 2 pixels/clock | hsync serrated | 19 states | 11 line types | 22 edges | table at 0x2bd8 | clock at +0x2b80 | 179 fields |
| `640x512_180q.vfo` | established | 640x512 | 880x1656 | 60 | 87.437 | 80 | 120 | 40 | 6 | 33 | 1 | progressive | sequential colour | 3 fields | 2 pixels/clock | csync | 25 states | 12 line types | 22 edges | table at 0x2c1c | clock at +0x2bac | 185 fields |
| `640x512_60.vfo` | established | 640x512 | 800x537 | 60 | 25.776 | 80 | 70 | 10 | 3 | 19 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 12 states | 11 line types | 21 edges | table at 0x2bc8 | clock at +0x2b88 | 176 fields |
| `646x486_30i.vfo` | established | 648x486 | 780x525 | 29.97 | 12.273 | 58 | 59 | 15 | 3 | 14 | 3 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 22 states | 16 line types | 30 edges | table at 0x2be8 | clock at +0x2b90 | 181 fields |
| `646x486_30if.vfo` | established | 648x486 | 780x525 | 29.97 | 12.273 | 58 | 59 | 15 | 3 | 14 | 3 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 21 states | 16 line types | 30 edges | table at 0x2bf8 | clock at +0x2ba0 | 181 fields |
| `768x576_25i.vfo` | established | 768x576 | 944x625 | 25 | 14.75 | 69 | 88 | 19 | 2.5 | 20 | 2.5 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 21 states | 16 line types | 30 edges | table at 0x2be0 | clock at +0x2b88 | 181 fields |
| `768x576_25if.vfo` | established | 768x576 | 944x625 | 25 | 14.75 | 69 | 88 | 19 | 2.5 | 20 | 2.5 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 21 states | 16 line types | 30 edges | table at 0x2bf8 | clock at +0x2ba0 | 181 fields |
| `800x600_60.vfo` | established | 800x600 | 1000x630 | 60 | 37.8 | 100 | 88 | 12 | 3 | 24 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 12 states | 11 line types | 21 edges | table at 0x2bc8 | clock at +0x2b88 | 176 fields |
| `960x620_60.vfo` | established | 960x620 | 1200x651 | 60 | 46.872 | 120 | 106 | 14 | 3 | 25 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 12 states | 11 line types | 21 edges | table at 0x2bc8 | clock at +0x2b88 | 176 fields |
| `960x680_60.vfo` | established | 960x680 | 1200x714 | 60 | 51.408 | 120 | 106 | 14 | 3 | 28 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 12 states | 11 line types | 21 edges | table at 0x2bc8 | clock at +0x2b88 | 176 fields |
| `CCIR601_525.vfo` | established | 720x486 | 858x525 | 29.97 | 13.5 | 60 | 60 | 18 | 3 | 14 | 3 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 22 states | 16 line types | 30 edges | table at 0x2be8 | clock at +0x2b90 | 181 fields |
| `CCIR601_525_DGO.vfo` | established | 720x486 | 858x525 | 29.97 | 13.5 | 60 | 60 | 18 | 3 | 14 | 2 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 31 states | 23 line types | 26 edges | table at 0x2bb4 | clock at +0x300 | 170 fields |
| `CCIR601_625.vfo` | established | 720x576 | 864x625 | 25 | 13.5 | 65 | 66 | 13 | 2.5 | 20 | 2.5 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 21 states | 16 line types | 30 edges | table at 0x2be8 | clock at +0x2b90 | 181 fields |
| `CCIR601_625_DGO.vfo` | established | 720x576 | 864x625 | 25 | 13.5 | 65 | 66 | 13 | 2.5 | 19.5 | 2.5 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 28 states | 20 line types | 27 edges | table at 0x2bec | clock at +0x314 | 181 fields |
| `HDGVO_1280x720_5994p.vfo` | established | 1280x720 | 1650x750 | 59.94 | 74.176 | 80 | 220 | 70 | 5 | 20 | 5 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 10 line types | 21 edges | table at 0x2bb0 | clock at +0x2b70 | 173 fields |
| `HDGVO_1280x720_60p.vfo` | established | 1280x720 | 1650x750 | 60 | 74.25 | 80 | 220 | 70 | 5 | 20 | 5 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 10 line types | 21 edges | table at 0x2bb0 | clock at +0x2b70 | 173 fields |
| `HDGVO_1920x1080_2398p.vfo` | established | 1920x1080 | 2750x1125 | 23.98 | 74.188 | 44 | 192 | 594 | 5 | 36 | 4 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 10 line types | 21 edges | table at 0x2bb4 | clock at +0x2b74 | 173 fields |
| `HDGVO_1920x1080_2398psf.vfo` | established | 1920x1080 | 2750x1125 | 23.976 | 74.176 | 88 | 148 | 594 | 6 | 14 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 23 states | 12 line types | 22 edges | table at 0x2bdc | clock at +0x2b84 | 179 fields |
| `HDGVO_1920x1080_24p.vfo` | established | 1920x1080 | 2750x1125 | 24 | 74.25 | 44 | 192 | 594 | 5 | 36 | 4 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 10 line types | 21 edges | table at 0x2bb0 | clock at +0x2b70 | 173 fields |
| `HDGVO_1920x1080_24psf.vfo` | established | 1920x1080 | 2750x1125 | 24 | 74.25 | 88 | 148 | 594 | 6 | 14 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 23 states | 12 line types | 22 edges | table at 0x2bdc | clock at +0x2b84 | 179 fields |
| `HDGVO_1920x1080_50i.vfo` | established | 1920x1080 | 2640x1125 | 25 | 74.25 | 88 | 148 | 484 | 6 | 14 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 26 states | 11 line types | 22 edges | table at 0x2bdc | clock at +0x2b84 | 179 fields |
| `HDGVO_1920x1080_5994i.vfo` | established | 1920x1080 | 2200x1125 | 29.97 | 74.176 | 88 | 148 | 44 | 6 | 14 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 26 states | 12 line types | 26 edges | table at 0x2bdc | clock at +0x2b84 | 179 fields |
| `HDGVO_1920x1080_60i.vfo` | established | 1920x1080 | 2200x1125 | 30 | 74.25 | 88 | 148 | 44 | 6 | 14 | 2 | interlaced | mono | 2 fields | 2 pixels/clock | csync | 26 states | 12 line types | 26 edges | table at 0x2bdc | clock at +0x2b84 | 179 fields |
| `HDGVO_720x486_5994i.vfo` | established | 720x486 | 858x525 | 29.97 | 13.5 | 60 | 60 | 18 | 3 | 14 | 3 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 24 states | 17 line types | 29 edges | table at 0x2be4 | clock at +0x2b8c | 181 fields |
| `HDGVO_720x576_50i.vfo` | established | 720x576 | 864x625 | 25 | 13.5 | 65 | 66 | 13 | 2.5 | 20 | 2.5 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 22 states | 15 line types | 29 edges | table at 0x2be4 | clock at +0x2b8c | 181 fields |

## Video formats the diagnostics load

The same container, in `usr/diags/IR/data/`. Two files carry the names of formats in the install tree (`1280x1024_60.vfo` and `CCIR601_525_DGO.vfo`) with different contents; the other two are test formats.

| File | Label | Active (x by lines) | Total (x by lines) | Frame rate (Hz) | Pixel clock (MHz) | H sync (pixels) | H back porch (pixels) | H front porch (pixels) | V sync (lines) | V back porch (lines) | V front porch (lines) | Scan | Mode | Fields | Clock ratio | Frame detection | State table | Line types | Edges | Container | Clock value | File fields |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `1280x1024_60.vfo` | established | 1280x1024 | 1680x1065 | 60 | 107.352 | 120 | 240 | 40 | 3 | 35 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 11 line types | 21 edges | table at 0x2ba0 | clock at +0x2b60 | 171 fields |
| `160x100_5000.vfo` | established | 160x100 | 172x204 | 5000 | 175.44 | 4 | 4 | 4 | 3 | 98 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 14 states | 12 line types | 21 edges | table at 0x2bcf | clock at +0x2b8f | 171 fields |
| `CCIR601_525_DGO.vfo` | established | 720x486 | 858x525 | 29.97 | 13.5 | 60 | 60 | 18 | 3 | 14 | 2 | interlaced | mono | 2 fields | 1 pixel/clock | csync | 25 states | 15 line types | 26 edges | table at 0x2bb0 | clock at +0x2b64 | 169 fields |
| `tvo.vfo` | established | 1024x768 | 1344x806 | 60.004 | 65 | 136 | 160 | 24 | 6 | 29 | 3 | progressive | mono | 1 field | 2 pixels/clock | csync | 13 states | 9 line types | 21 edges | table at 0x2ba4 | clock at +0x2b64 | 173 fields |

## Combinations of formats

One row per `.cmb` file under `dg4/cmb/`: how many channels it drives, whether the encoder channel exists, the managed and allocated frame-buffer size, the formats its channels load, how many channels are interlaced, whether the text port is on and the gamma. The channel table below gives each channel of each file.

| File | Label | Channels | Encoder channel | Managed size | Allocated size | Formats | Interlaced channels | Text port | Gamma | Container | Channel names | Fields |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `1024x768_60.cmb` | established | 1 channel | absent | 1024x768 | 1120x768 | 1024x768_60.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `1200x900_72.cmb` | established | 1 channel | absent | 1200x900 | 1280x904 | 1200x900_72.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `1280x1024+1920x1080_72.cmb` | established | 2 channels | absent | 3200x1080 | 3200x1080 | 1280x1024_72.vfo + 1920x1080_72.vfo | 0 | off | 1.7 unused | table at 0x2ec | format at +0x16c | 96 fields |
| `1280x1024+4@640x480_60.cmb` | established | 5 channels | absent | 2560x1024 | 2560x1024 | 1280x1024_60.vfo + 4 x 640x480_60.vfo | 0 | off | 1.7 unused | table at 0x5d4 | format at +0x16c | 210 fields |
| `1280x1024+NTSC_60.cmb` | established | 1 channel | present | 1280x1024 | 1280x1024 | 1280x1024_60.vfo + 640x486_30i.vfo | 1 | off | 1.7 unused | table at 0x2ec | format at +0x16c | 96 fields |
| `1280x1024_60.cmb` | established | 1 channel | absent | 1280x1024 | 1280x1024 | 1280x1024_60.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `1280x1024_72.cmb` | established | 1 channel | absent | 1280x1024 | 1280x1024 | 1280x1024_72.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `1280x492_120s.cmb` | established | 1 channel | absent | 1280x1024 | 1280x1024 | 1280x492_120s.vfo | 0 | off | 1.7 unused | table at 0x1f8 | format at +0x16c | 58 fields |
| `1280x907+5@640x453_60.cmb` | established | 6 channels | present | 1920x1360 | 1920x1360 | 1280x1024_60.vfo + 5 x 640x480_60.vfo + 640x486_30i.vfo | 1 | off | 1.7 unused | table at 0x7c4 | format at +0x16c | 286 fields |
| `1600x1024_60.cmb` | established | 1 channel | absent | 1600x1024 | 1600x1024 | 1600x1024_60.vfo | 0 | off | 1.7 unused | table at 0x1f8 | format at +0x16c | 59 fields |
| `1600x1024_60p.cmb` | established | 1 channel | absent | 1600x1024 | 1600x1024 | 1600x1024_60p.vfo | 0 | off | 1.7 unused | table at 0x1fc | format at +0x16c | 59 fields |
| `1600x1200_60.cmb` | established | 1 channel | absent | 1600x1200 | 1600x1200 | 1600x1200_60.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `1920x1035_30i.cmb` | established | 1 channel | absent | 1920x1036 | 1920x1040 | 1920x1035_30i.vfo | 1 | off | 1.7 unused | table at 0x1f8 | format at +0x16c | 58 fields |
| `1920x1080_72.cmb` | established | 1 channel | absent | 1920x1080 | 1920x1080 | 1920x1080_72.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `1920x1200_66.cmb` | established | 1 channel | absent | 1920x1200 | 1920x1200 | 1920x1200_66.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `2048x1120_72.cmb` | established | 1 channel | absent | 2048x1120 | 2080x1120 | 2048x1120_72.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `2@1280x1024_60.cmb` | established | 2 channels | absent | 2560x1024 | 2560x1024 | 2 x 1280x1024_60.vfo | 0 | off | 1.7 unused | table at 0x2ec | format at +0x16c | 96 fields |
| `2@1280x1024_72.cmb` | established | 2 channels | absent | 2560x1024 | 2560x1024 | 2 x 1280x1024_72.vfo | 0 | off | 1.7 unused | table at 0x2ec | format at +0x16c | 96 fields |
| `3@1024x768_60+1280x959_30i.cmb` | established | 4 channels | absent | 2400x1728 | 2400x1728 | 3 x 1024x768_60.vfo + 1280x959_30i.vfo | 1 | off | 1.7 unused | table at 0x4dc | format at +0x16c | 172 fields |
| `3@1280x1024_60.cmb` | established | 3 channels | absent | 3840x1024 | 3840x1024 | 3 x 1280x1024_60.vfo | 0 | on | 1.7 unused | table at 0x3e4 | format at +0x16c | 134 fields |
| `640x480_120s.cmb` | established | 1 channel | absent | 640x480 | 640x480 | 640x480_120s.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `640x512_120s.cmb` | established | 1 channel | absent | 640x512 | 640x512 | 640x512_120s.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |
| `7@800x600_60+NTSC.cmb` | established | 7 channels | present | 3200x1200 | 3200x1200 | 7 x 800x600_60.vfo + 640x486_30i.vfo | 1 | off | 1.7 unused | table at 0x8bc | format at +0x16c | 324 fields |
| `8@640x480_60.cmb` | established | 8 channels | absent | 2560x960 | 2560x960 | 8 x 640x480_60.vfo | 0 | off | 1.7 unused | table at 0x8bc | format at +0x16c | 324 fields |
| `8@800x600_60.cmb` | established | 8 channels | absent | 3200x1200 | 3200x1200 | 8 x 800x600_60.vfo | 0 | off | 1.7 unused | table at 0x8bc | format at +0x16c | 324 fields |
| `960x680_60.cmb` | established | 1 channel | absent | 960x680 | 960x680 | 960x680_60.vfo | 0 | off | 1.7 unused | table at 0x1f4 | format at +0x16c | 58 fields |

### Channels of each combination

| File | Label | Channel | Source channel | Input origin | Input size | Output size | Format | Frame rate (Hz) | Field layout | H/C sync output | Sync source | Sync on | Format name at |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `1024x768_60.cmb` | established | channel 0 | 0 | 0+0 | 1024x768 | 1024x768 | 1024x768_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `1200x900_72.cmb` | established | channel 0 | 0 | 0+0 | 1200x900 | 1200x900 | 1200x900_72.vfo | 72 | progressive | composite | 0 | green | +0x16c |
| `1280x1024+1920x1080_72.cmb` | established | channel 0 | 0 | 0+0 | 1280x1024 | 1280x1024 | 1280x1024_72.vfo | 72 | progressive | composite | 0 | green | +0x16c |
| `1280x1024+1920x1080_72.cmb` | established | channel 1 | 1 | 1280+0 | 1920x1080 | 1920x1080 | 1920x1080_72.vfo | 71.992 | progressive | composite | 1 | green | +0x264 |
| `1280x1024+4@640x480_60.cmb` | established | channel 0 | 0 | 0+0 | 1280x1024 | 1280x1024 | 1280x1024_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `1280x1024+4@640x480_60.cmb` | established | channel 1 | 1 | 1280+0 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 1 | green | +0x264 |
| `1280x1024+4@640x480_60.cmb` | established | channel 2 | 2 | 1920+0 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 2 | green | +0x35c |
| `1280x1024+4@640x480_60.cmb` | established | channel 3 | 3 | 1280+480 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 3 | green | +0x454 |
| `1280x1024+4@640x480_60.cmb` | established | channel 4 | 4 | 1920+480 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 4 | green | +0x54c |
| `1280x1024+NTSC_60.cmb` | established | channel 0 | 0 | 0+0 | 1280x1024 | 1280x1024 | 1280x1024_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `1280x1024+NTSC_60.cmb` | established | encoder 8 | 0 | 0+0 | 1280x1024 | 640x486 | 640x486_30i.vfo | 29.97 | interlaced | composite | 8 | green | +0x264 |
| `1280x1024_60.cmb` | established | channel 0 | 0 | 0+0 | 1280x1024 | 1280x1024 | 1280x1024_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `1280x1024_72.cmb` | established | channel 0 | 0 | 0+0 | 1280x1024 | 1280x1024 | 1280x1024_72.vfo | 72 | progressive | composite | 0 | green | +0x16c |
| `1280x492_120s.cmb` | established | channel 0 | 0 | 0+0 | 1280x984 | 1280x984 | 1280x492_120s.vfo | 60 | progressive | horizontal | 0 | green | +0x16c |
| `1280x907+5@640x453_60.cmb` | established | channel 0 | 0 | 0+0 | 1280x907 | 1280x1024 | 1280x1024_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `1280x907+5@640x453_60.cmb` | established | channel 2 | 2 | 1280+1 | 640x453 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 2 | green | +0x264 |
| `1280x907+5@640x453_60.cmb` | established | channel 3 | 3 | 1280+454 | 640x453 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 3 | green | +0x35c |
| `1280x907+5@640x453_60.cmb` | established | channel 4 | 4 | 0+907 | 640x453 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 4 | green | +0x454 |
| `1280x907+5@640x453_60.cmb` | established | channel 5 | 5 | 640+907 | 640x453 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 5 | green | +0x54c |
| `1280x907+5@640x453_60.cmb` | established | channel 6 | 6 | 1280+907 | 640x453 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 6 | green | +0x644 |
| `1280x907+5@640x453_60.cmb` | established | encoder 8 | 0 | 0+0 | 1280x907 | 640x486 | 640x486_30i.vfo | 29.97 | interlaced | composite | 8 | green | +0x73c |
| `1600x1024_60.cmb` | established | channel 0 | 0 | 0+0 | 1600x1024 | 1600x1024 | 1600x1024_60.vfo | 60 | progressive | horizontal | 0 | none | +0x16c |
| `1600x1024_60p.cmb` | established | channel 0 | 0 | 0+0 | 1600x1024 | 1600x1024 | 1600x1024_60p.vfo | 60.019 | progressive | horizontal | 0 | none | +0x16c |
| `1600x1200_60.cmb` | established | channel 0 | 0 | 0+0 | 1600x1200 | 1600x1200 | 1600x1200_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `1920x1035_30i.cmb` | established | channel 0 | 0 | 0+0 | 1920x1035 | 1920x1035 | 1920x1035_30i.vfo | 30 | interlaced | composite | 0 | green | +0x16c |
| `1920x1080_72.cmb` | established | channel 0 | 0 | 0+0 | 1920x1080 | 1920x1080 | 1920x1080_72.vfo | 71.992 | progressive | composite | 0 | green | +0x16c |
| `1920x1200_66.cmb` | established | channel 0 | 0 | 0+0 | 1920x1200 | 1920x1200 | 1920x1200_66.vfo | 66 | progressive | composite | 0 | green | +0x16c |
| `2048x1120_72.cmb` | established | channel 0 | 0 | 0+0 | 2048x1120 | 2048x1120 | 2048x1120_72.vfo | 72 | progressive | composite | 0 | green | +0x16c |
| `2@1280x1024_60.cmb` | established | channel 0 | 0 | 0+0 | 1280x1024 | 1280x1024 | 1280x1024_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `2@1280x1024_60.cmb` | established | channel 1 | 1 | 1280+0 | 1280x1024 | 1280x1024 | 1280x1024_60.vfo | 60 | progressive | composite | 1 | green | +0x264 |
| `2@1280x1024_72.cmb` | established | channel 0 | 0 | 0+0 | 1280x1024 | 1280x1024 | 1280x1024_72.vfo | 72 | progressive | composite | 0 | green | +0x16c |
| `2@1280x1024_72.cmb` | established | channel 1 | 1 | 1280+0 | 1280x1024 | 1280x1024 | 1280x1024_72.vfo | 72 | progressive | composite | 1 | green | +0x264 |
| `3@1024x768_60+1280x959_30i.cmb` | established | channel 0 | 0 | 0+0 | 1024x768 | 1024x768 | 1024x768_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `3@1024x768_60+1280x959_30i.cmb` | established | channel 1 | 1 | 1120+0 | 1024x768 | 1024x768 | 1024x768_60.vfo | 60 | progressive | composite | 1 | green | +0x264 |
| `3@1024x768_60+1280x959_30i.cmb` | established | channel 2 | 2 | 0+768 | 1024x768 | 1024x768 | 1024x768_60.vfo | 60 | progressive | composite | 2 | green | +0x35c |
| `3@1024x768_60+1280x959_30i.cmb` | established | channel 3 | 3 | 1120+768 | 1280x959 | 1280x959 | 1280x959_30i.vfo | 30 | interlaced | composite | 3 | green | +0x454 |
| `3@1280x1024_60.cmb` | established | channel 0 | 0 | 0+0 | 1280x1024 | 1280x1024 | 1280x1024_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `3@1280x1024_60.cmb` | established | channel 1 | 1 | 1280+0 | 1280x1024 | 1280x1024 | 1280x1024_60.vfo | 60 | progressive | composite | 1 | green | +0x264 |
| `3@1280x1024_60.cmb` | established | channel 2 | 2 | 2560+0 | 1280x1024 | 1280x1024 | 1280x1024_60.vfo | 60 | progressive | composite | 2 | green | +0x35c |
| `640x480_120s.cmb` | established | channel 0 | 0 | 0+0 | 640x480 | 640x480 | 640x480_120s.vfo | 60 | progressive | horizontal | 0 | green | +0x16c |
| `640x512_120s.cmb` | established | channel 0 | 0 | 0+0 | 640x512 | 640x512 | 640x512_120s.vfo | 60 | progressive | horizontal | 0 | green | +0x16c |
| `7@800x600_60+NTSC.cmb` | established | channel 0 | 0 | 0+0 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `7@800x600_60+NTSC.cmb` | established | channel 2 | 2 | 800+0 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 2 | green | +0x264 |
| `7@800x600_60+NTSC.cmb` | established | channel 3 | 3 | 1600+0 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 3 | green | +0x35c |
| `7@800x600_60+NTSC.cmb` | established | channel 4 | 4 | 2400+0 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 4 | green | +0x454 |
| `7@800x600_60+NTSC.cmb` | established | channel 5 | 5 | 0+600 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 5 | green | +0x54c |
| `7@800x600_60+NTSC.cmb` | established | channel 6 | 6 | 800+600 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 6 | green | +0x644 |
| `7@800x600_60+NTSC.cmb` | established | channel 7 | 7 | 1600+600 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 7 | green | +0x73c |
| `7@800x600_60+NTSC.cmb` | established | encoder 8 | 0 | 0+0 | 800x600 | 640x486 | 640x486_30i.vfo | 29.97 | interlaced | composite | 8 | green | +0x834 |
| `8@640x480_60.cmb` | established | channel 0 | 0 | 0+0 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `8@640x480_60.cmb` | established | channel 1 | 1 | 640+0 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 1 | green | +0x264 |
| `8@640x480_60.cmb` | established | channel 2 | 2 | 1280+0 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 2 | green | +0x35c |
| `8@640x480_60.cmb` | established | channel 3 | 3 | 1920+0 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 3 | green | +0x454 |
| `8@640x480_60.cmb` | established | channel 4 | 4 | 0+480 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 4 | green | +0x54c |
| `8@640x480_60.cmb` | established | channel 5 | 5 | 640+480 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 5 | green | +0x644 |
| `8@640x480_60.cmb` | established | channel 6 | 6 | 1280+480 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 6 | green | +0x73c |
| `8@640x480_60.cmb` | established | channel 7 | 7 | 1920+480 | 640x480 | 640x480 | 640x480_60.vfo | 60 | progressive | composite | 7 | green | +0x834 |
| `8@800x600_60.cmb` | established | channel 0 | 0 | 0+0 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |
| `8@800x600_60.cmb` | established | channel 1 | 1 | 800+0 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 1 | green | +0x264 |
| `8@800x600_60.cmb` | established | channel 2 | 2 | 1600+0 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 2 | green | +0x35c |
| `8@800x600_60.cmb` | established | channel 3 | 3 | 2400+0 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 3 | green | +0x454 |
| `8@800x600_60.cmb` | established | channel 4 | 4 | 0+600 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 4 | green | +0x54c |
| `8@800x600_60.cmb` | established | channel 5 | 5 | 800+600 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 5 | green | +0x644 |
| `8@800x600_60.cmb` | established | channel 6 | 6 | 1600+600 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 6 | green | +0x73c |
| `8@800x600_60.cmb` | established | channel 7 | 7 | 2400+600 | 800x600 | 800x600 | 800x600_60.vfo | 60 | progressive | composite | 7 | green | +0x834 |
| `960x680_60.cmb` | established | channel 0 | 0 | 0+0 | 960x680 | 960x680 | 960x680_60.vfo | 60 | progressive | composite | 0 | green | +0x16c |

## Older text sources

The `.monitor` files of `vof/` give the porches and field layout of a display in text; the `.vof` files give the output sequencer directly as initial signal levels, edges, line lengths and vertical areas, with the line positions in pixels. The table of the `.vof` sources gives the width of the horizontal sync pulse from the first two edges of that signal and the active window from the edges of the active signal.

### Monitor sources

| File | Label | Pixels per line | Lines per field | Fields | Field step | H front porch | H back porch | H sync maximum | V front porch | V back porch | V sync maximum | Parameters | Source |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `1280x1024.monitor` | established | 1680 | 1065 | 1 | 0+1 | 40 | 240 | 125 | 3 | 35 | 5165 | progressive | 3 lines 125 pixels | 9 settings | first at 0x3d |
| `default.monitor` | established | 800 | 23 | 1 | 0+1 | 15 | 50 | 100 | 1 | 1 | 800 | progressive | 1 lines 0 pixels | 9 settings | first at 0x30 |
| `ntsc.monitor` | established | 800 | 525 | 2 | 0+2 1+2 | 15 | 50 | 95 | 10 | 33 | 800 | interlaced | 1 lines 0 pixels | 9 settings | first at 0x36 |
| `vga.monitor` | established | 800 | 525 | 1 | 0+1 | 15 | 50 | 98 | 10 | 33 | 800 | progressive | 1 lines 0 pixels | 9 settings | first at 0x2a |

### Output-format sources

| File | Label | Line types | Line length (pixels) | Vertical areas | Frame lines | Edges | Signals | H sync width | Active start | Active end | Registers set | Sequencer | Source |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `640x480_60.vof` | established | 4 types | 800 | 5 areas | 525 | 21 edges | 16 signals | 95 | 145 | 785 | 96 registers | state areas | first at 0x0 |
| `default.vof` | established | 4 types | 800 | 4 areas | 23 | 21 edges | 14 signals | 95 | 145 | 785 | 108 registers | state areas | first at 0x0 |
| `vga.vof` | established | 4 types | 800 | 4 areas | 23 | 21 edges | 14 signals | 95 | 145 | 785 | 96 registers | state areas | first at 0x0 |

## Relation checks

The relations above hold in 77 of 78 video-format files; the exceptions are CCIR601_525_DGO.vfo (horizontal sum).
