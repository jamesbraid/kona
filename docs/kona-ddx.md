# The Kona X server module (`kona.so`): function reference

Sources: `usr/lib/X11/dyDDX/kona.so` (6.5.30m; `konad.so`, `konal.so` and `konas.so` carry the same function names with different bytes for most of them, which relocation alone would explain; they also frame commands differently, writing each token word and then its payload at FIFO offset 0 ([arm1_firmware.md](../ucode/arm1_firmware.md)). The entries in this file describe `kona.so` only; which build a given server loads is a separate question, recorded in [open-questions.md](open-questions.md)) and the per-module assembly in [ddx/asm/kona/](../ddx/asm/kona/). The X server loads the module as the device-dependent part of the Kona screen: it layers a Kona-specific drawing and window layer (`kon*`) over SGI's new frame-buffer layer (`nfb*`), the generic colour and mono frame-buffer code (`cfb*`, `mfb*`) and the machine-independent code (`mi*`). Roles are **inferred** from the function names and from the neighbouring documents ([opengl.md](opengl.md), [dg.md](dg.md)); the functions those documents already read in detail are not repeated. Where a function is the standard routine of the same name in the X11 sample server (the `mi`, `mfb` and `cfb` layers), the table says so and nothing more.

One entry per function for the stereo wrappers, context hooks, caches, cursor and resource-manager hooks is in [kona-so-functions.md](kona-so-functions.md).

## Kona-specific layer (`kon*`, `kon_*`)

| Group | Role | Functions |
|---|---|---|
| Stereo drawing | the stereo wrappers: each draws into both eye buffers (`konStereo*` mirrors the ordinary operation: lines, arcs, polygons, text, images, copy and push-pixels), registered over the ordinary operations when a stereo visual is in use | `konStereoPolySegment`, `konStereoPolyText8`, `konStereoPolyline`, `konStereoImageText8`, `konStereoPolyRectangle`, `konStereoPolyArc`, `konStereoPolyText16`, `konStereoPolyGlyphBlt`, `konStereoPutImage`, `konStereoCopyPlane`, `konStereoImageText16`, `konStereoPolyPoint`, `konStereoPushPixels`, `konStereoPolyFillArc`, `konStereoPolyFillRect`, `konStereoCopyArea`, `konStereoSetSpans`, `konStereoFillSpans`, `konStereoFillPolygon`, `konStereoImageGlyphBlt` |
| Hyperpipe and swap barrier | the multi-pipe configuration requests of the X server extension: query the network and configuration, configure, destroy, and query the maximum swap-barrier count ([opengl.md](opengl.md)) | `konQueryHyperpipeNetwork`, `konQueryMaxSwapBarrier`, `konQueryHyperpipeConfig`, `konDestroyHyperpipeConfig`, `konHyperpipeConfig` |
| Glyph and text drawing | accelerated glyph blits: image-text and solid poly-text for terminal-emulator fonts of width 3, 6, 8, 10, 16 and 32 pixels (`TE3` to `TE32`) and the general forms | `konImageGlyphBltTE3`, `konImageGlyphBltTE6`, `konImageGlyphBltTE8`, `konPolyGlyphBltSolidTE10`, `konPolyGlyphBltSolidTE16`, `konPolyGlyphBltSolidTE32`, `konPolyGlyphBltSolid`, `konImageGlyphBltTE32`, `konImageGlyphBltTE10`, `konImageGlyphBltTE16`, `konImageGlyphBlt`, `konPolyGlyphBltSolidTE3`, `konPolyGlyphBltSolidTE6`, `konPolyGlyphBltSolidTE8` |
| Tiles and stipples | tile and stipple preparation and the cache of stipples held in pipe memory (`kon_allocCachedStipple`, `kon_hitCachedStipple`, `kon_freeCachedStipple`, `kon_unloadStipple`, `konExpandTile`, `konExpandStipple`, `konRotateStipple`, `konTilePatterns`) and the tiled and stippled fill, span and rectangle operations built on them | `konStippledCFillRects`, `konFillSpansStippledC`, `konExpandTile`, `konStippledCFS`, `konRotateStipple`, `konTiledCAccelFS`, `konTiledCFillRects`, `konPolyFillRectTiledCAccel`, `konFillSpansTiledCAccel`, `konExpandStipple`, `konTiledCAccelFillRects`, `kon_hitCachedStipple`, `kon_freeCachedStipple`, `konPolyFillRectStippledC`, `kon_unloadStipple`, `kon_allocCachedStipple`, `konTilePatterns`, `konTileRects`, `konTiledFillRects`, `konTiledFS` |
| Graphics-context handling | creating, changing, copying, validating and destroying a graphics context and the per-context caches of operations (`kon_loadXxxGC` choose which operation set a GC uses: clear, geometry, bitmap, pixmap, image rectangle, copy window, the generic frame-buffer path), `kon_parseGC` and the operation cache reset | `kon_loadAccelGC`, `kon_loadImpWordGC`, `konDestroyGC`, `kon_loadNfbGCoff`, `kon_loadCopyWindowGC`, `konChangeGC`, `kon_loadImgRectGC`, `kon_initGCCaches`, `kon_GCOpsCacheInit`, `kon_loadNfbGC`, `kon_loadBitmapGC`, `konCreateGC`, `konCopyGC`, `kon_loadPixmapGC`, `kon_loadOpaqueBitmapGC`, `kon_loadClearGC`, `kon_loadImgBitmapGC`, `kon_loadGeomGC`, `kon_parseGC`, `kon_GCOpsCacheReset`, `konValidateGC`, `konValidateWindowGC`, `konValidateReducedGC` |
| Lines and spans | the slow (host-drawn) line and segment paths and the span setter, used when the pipe path does not apply | `konSetSpans`, `konSlowSegmentSD`, `konSlowSegmentSS`, `konSlowLineSD` |
| Colormaps, display IDs and gamma | colormap and display-ID (DID) management: install and uninstall (including the fake colormap used while the real one cannot load), clear, store and set colours, per-window-type DID state and drawing, gamma reload for every channel, and screen blanking; the internals are an open question ([open-questions.md](open-questions.md)) | `konChangeDIDCmap`, `konInitDIDState`, `konStoreFakeColors`, `konReloadAllGammas`, `konTempBlankAllChannels`, `kon_drawDid`, `konClearHWColormap`, `konInstallFakeColormap`, `konBlankScreen`, `konSetColor`, `konUninstallColormap`, `konInitializeColormap` |
| Cursor | realise and unrealise a cursor and free its caches ([opengl.md](opengl.md#cursor-kona_select_cursor-x_loadcursor-x_loadcursorcolor)) | `konRealizeCursor`, `konUnrealizeCursor`, `kon_freeCursorCaches` |
| Windows, clips and visuals | window private data, clip regions (change, copy, destroy), copy-window, window type and root-window initialisation, unbinding a destroyed window, visual validation, and the frame-buffer block free | `konCopyClip`, `konValidateWindowPriv`, `konDestroyClip`, `konInitWindowType`, `konChangeClip`, `konInitRootWindow`, `konFreeFBBlock`, `konCopyWindow`, `konValidateVisual`, `konUnbindDestroyedWindow` |
| Screen set-up and queries | probe and initialise the screen, attach and detach the video-control extension (`konAttachXvc`, `konDetachXvc`), best-size queries, the locator filter and the monochrome image draw | `konProbe`, `konQueryBestSize`, `konLocatorFilter`, `konAttachXvc`, `konDrawMonoImage`, `konDetachXvc`, `konInit` |

## Rendering resource manager client (`rrm*`)

**Inferred** from the names and [kernel.md](kernel.md#generic-and-manager-ioctls-who-sends-them): these functions are the X server's side of the kernel's rendering resource manager. They create and destroy the window's clip and buffer resources and send the manager ioctls (`RRM_BINDRNTOCLIP`, `RRM_UNBINDRNFROMCLIP`, `RRM_INVALIDATERN` and their OpenGL variants) when a window is mapped, unmapped, moved, double-buffered or destroyed.

| Group | Role | Functions |
|---|---|---|
| window and clip life cycle | map, unmap, create, destroy, copy and validate windows and the clip identifiers (CID) they hold; queue and process requests; delay and cancel a validation | `rrmMapWindow`, `rrmDestroyDrawable`, `rrmNeedCID`, `rrmUnmapWindow`, `rrmUnbindRNFromClip`, `rrmUnqueueRequest`, `rrmCreateWindow`, `rrmValidateCID`, `rrmProcessRequestQueue`, `rrmInitializeGLStaticColormap`, `rrmDoubleBufferWindow`, `rrmUndoubleBufferWindow`, `rrmInvalidateCID`, `rrmBindMultipleClips`, `rrmDestroyWindow`, `rrmCreateDefColormap`, `rrmDelayValidateClipCancel`, `rrmCopyWindow`, `rrmWorkProc`, `rrmValidateTree`, `rrmOGLBindRNToClip`, `rrmOGLUnbindRNFromClip`, `rrmBindRNToClip` |

## Video format and combination files (`vfmt*`)

**Inferred** from the names and [dg.md](dg.md#the-loadformat-request-383-words): the code that finds, reads, writes and checks the video format and combination files the display setup tools produce: file lookup per board family, the validity of a combination for a target or for the installed hardware, frame-rate and swap-rate compatibility, and pixel-depth resolution.

| Group | Role | Functions |
|---|---|---|
| format files | find format and combination files and read and write a combination; the lookups cover the Kona, compound, Odyssey and SG2 format sets | `vfmtResolvePixelDepth`, `vfmtMinimalKonaTarget`, `vfmtActualHWToKonaTarget`, `vfmtIsKonaCombinationValidForTarget`, `vfmtIsKonaCombinationValidForActualHW`, `vfmtSwapRateCloseEnough`, `vfmtSyncFormatFrameRatesCompatible`, `vfmtUpdateFormatInfoInCombination`, `vfmtFindFormatFile`, `vfmtFindKonaFormatFile`, `vfmtFindCmpFormatFile`, `vfmtFindOdyFormatFile`, `vfmtFindSG2FormatFile`, `vfmtFindKonaCombinationFile`, `vfmtFindCmpCombinationFile`, `vfmtGetLastKonaFileStat`, `vfmtReadKonaCombination`, `vfmtWriteKonaCombination` |

## Identifier allocation and support

| Group | Role | Functions |
|---|---|---|
| window-ID and colour-ID allocation | allocate, share, steal, reserve and free the hardware window IDs and colour-map IDs the display generator assigns to windows (`FindFreeID`, `FindBestID`, `ShareSwappingID`, `StealID`, `SetReservedID`, `SetNoStealID`, `UnsetReservedID`, `SetDIDMode`, `FreeID`, `FindFreeCID`, `FreeCID`) (the rules are in [opengl.md](opengl.md#the-display-id-allocator)) | `StealID`, `UnsetReservedID`, `FindBestID`, `FindFreeCID`, `ShareSwappingID`, `FreeID`, `FreeCID`, `SetDIDMode`, `SetNoStealID`, `SetReservedID`, `FindFreeID` |
| sequence data | the per-depth tables of pixel sequences the blit routines use, one per bit depth (4, 5, 7, 8, 9, 10, 12, 16, 23, 24 and 32 bits; the `_ip19` suffix names a platform the tables were generated for (why a Kona module carries it is open, below)) | `KonSeqData32_ip19`, `KonSeqData24_ip19`, `KonSeqData23_ip19`, `KonSeqData16_ip19`, `KonSeqData12_ip19`, `KonSeqData10_ip19`, `KonSeqData9_ip19`, `KonSeqData8_ip19`, `KonSeqData7_ip19`, `KonSeqData5_ip19`, `KonSeqData4_ip19` |
| symbol database writer | the writer of the microcode symbol database that its reader in the diagnostics decodes (`SDB*` creates, fills and closes a database) | `SDBaddNewArraySymbol`, `SDBaddNewScalarSymbol`, `SDBcloseNewDatabase`, `SDBopenNewDatabase`, `SDBsetHeader` |
| reference counting and span helpers | the rendering-manager flag and private counters (`incrRRMpriv`, `incrRRMFlags`, `decrRRMFlags`), colour-map DID lookup, unsupported-capability stubs and the span-engine helpers shared with the `mi` layer | `decrRRMFlags`, `incrRRMpriv`, `incrRRMFlags`, `cmapDID`, `sgiReleaseCapabilityUnsupported`, `realAllocSpan`, `micomputeWAET`, `compareModes`, `miloadAET`, `sgiEnableCapabilityUnsupported` |

## SGI frame-buffer layer (`nfb*`)

**Inferred** from the names: SGI's wrapper layer between the server and the frame-buffer code. It owns screen and window creation, the hardware colormap arrays (`nfbCreateHWColormap`, `nfbInstallHWColormap`, `nfbHWStoreColors`), window validation and move, backing-store and save-under hooks, cursor realisation, visual and display-ID set-up (`nfbInitVisDIDs`, `nfbSetDidFlags`), read-back of the display (`nfbReadDisplay`) and the stereo variants of every drawing operation (`nfbStereo*`), and it falls back to the generic fill, copy and glyph routines.

| Group | Role | Functions |
|---|---|---|
| all `nfb*` functions | as above | `nfbStereoImageText16`, `nfbGetImage`, `nfbTiledFillRects`, `nfbRealizeWindow`, `nfbGetBestVisualForPEX`, `nfbPolyFillRect`, `nfbInstallHWColormap`, `nfbHWStoreColors`, `nfbStereoPolyFillArc`, `nfbStereoPolyText16`, `nfbValidateWindowVisual`, `nfbStereoRegisterWrapperOps`, `nfbAbort`, `nfbTellGainedMap`, `nfbChangeWindowAttributes`, `nfbGetLayerWindow`, `nfbMoveWindow`, `nfbStereoPutImage`, `nfbShmCreatePixmap`, `nfbCloseScreen`, `nfbStereoPolyText8`, `nfbSlideAndSizeWindow`, `nfbLayerValidateTreeSL`, `nfbNoopDDATranslateBackingStore`, `nfbUninstallColormap`, `nfbChangeSaveUnder`, `nfbStoreColors`, `nfbStereoFillPolygon`, `nfbSetSpans`, `nfbFillSpans`, `nfbStippledFS`, `nfbPostChangeSaveUnder`, `nfbListInstalledColormaps`, `nfbPaintWindowBorder`, `nfbImageGlyphBlt`, `nfbUnmapTree`, `nfbGetSpans`, `nfbRecolorCursor`, `nfbFreeHWCmapArrays`, `nfbMarkOverlappedWindows`, `nfbDestroyColormap`, `nfbHoriz`, `nfbSolidFillRects`, `nfbInstallColormap`, `nfbCopyPlane`, `nfbSolidZeroSeg`, `nfbSetStereoBuffer`, `nfbStereoPolyGlyphBlt`, `nfbStereoImageText8`, `nfbStereoPolySegment`, `nfbStereoCopyArea`, `nfbOpStippledFillRects`, `nfbSaveScreen`, `nfbCreateWindow`, `nfbOpStippledFS`, `nfbPaintWindowBackground`, `nfbTreeObscured`, `nfbCreateHWColormap`, `nfbStereoImageGlyphBlt`, `nfbPolyPoint`, `nfbShmPutImage`, `nfbRealizeCursor`, `nfbStereoSetSpans`, `nfbReplicateArea`, `nfbHWColormapScreenClose`, `nfbHWColormapScreenInit`, `nfbSetDidFlags`, `nfbSolidPolyGlyphBlt`, `nfbPostValidateTree`, `nfbStereoFillSpans`, `nfbSaveAreas`, `nfbUnrealizeCursor`, `nfbReadDisplay`, `nfbStereoCopyPlane`, `nfbReadDisplayRegisterInfo`, `nfbCopyArea`, `nfbTiledFS`, `nfbMarkUnrealizedWindow`, `nfbStereoPolyPoint`, `nfbStereoPolyRectangle`, `nfbPositionWindow`, `nfbListInstalledHWColormaps`, `nfbReduceGC`, `nfbDestroyWindow`, `nfbCursorLimits`, `nfbStereoPolyArc`, `nfbStereoPolyFillRect`, `nfbRestoreAreas`, `nfbStippledFillRects`, `nfbInitVisDIDs`, `nfbStereoPushPixels`, `nfbInitRootWindow`, `nfbSolidFS`, `nfbGenericScreenInit`, `nfbFixupDepths`, `nfbVert`, `nfbStereoPolyline`, `nfbNoopDDACreateScreenResources`, `nfbCreateStereoGC`, `nfbUnrealizeWindow`, `nfbDoBitBltPS`, `nfbDoBitBltSP`, `nfbDoBitBltSS`, `nfbQueryBestSize`, `nfbInitHWCmapArrays`, `nfbUninstallHWColormap`, `nfbMarkWindow`, `nfbDestroyHWColormap`, `nfbPutImage`, `nfbNoopDDAClearBackingStore`, `nfbCreatePixmap` |

## X11 sample-server layers (`mi*`, `mfb*`, `cfb*`)

**Established** (the names are the standard routines). `mi*` is the machine-independent drawing and region code (regions, arcs, wide and dashed lines, polygons, spans, backing store, exposures), `mfb*` the monochrome frame-buffer code and `cfb*` the colour frame-buffer code, with `cfb8`, `cfb16` and `cfb32` the per-depth copies. The module carries them unmodified as the fallback for operations the pipe does not draw.

| Group | Role | Functions |
|---|---|---|
| `mi*` | machine-independent drawing, regions and exposures | `miZeroClipLine`, `miCreateGCOps`, `miIntersect`, `miRegisterGCPrivateIndex`, `miInitializeBackingStore`, `miScreenInit`, `miSetupSpanData`, `miStepDash`, `miShapedWindowIn`, `miRegionReset`, `miCleanupSpanData`, `miClearDrawable`, `miPostChangeSaveUnder`, `miSetExtents`, `miFillArcDSetup`, `miTranslateRegion`, `miFillPolyHelper`, `miPolyFillArc`, `miFreeStorage`, `miSendExposures`, `miUnion`, `miFillSppPoly`, `miRoundJoinFace`, `miRegionCreate`, `miSendGraphicsExpose`, `miFillUniqueSpanGroup`, `miZeroLine`, `miRoundCapClip`, `miHandleExposures`, `miRegionExtents`, `miFillArcSetup`, `miCopyArea`, `miImageText16`, `miChangeGC`, `miClipSpans`, `miRegionValidate`, `miLineProjectingCap`, `miPushPixels`, `miFindMaxBand`, `miSetZeroLineBias`, `miFillGeneralPoly`, `miFreeArcCache`, `miFillPolygon`, `miPolyArc`, `miClearToBackground`, `miRoundJoinClip`, `miPolyBuildEdge`, `miDestroyGCOps`, `miSubtract`, `miPolyText8`, `miPolyGlyphBlt`, `miDisposeSpanGroup`, `miRegionDestroy`, `miSubtractSpans`, `miRectIn`, `miScreenDevPrivateInit`, `miRegionAppend`, `miRegionUninit`, `miMarkOverlappedWindows`, `miImageText8`, `miInitSpanGroup`, `miCloseScreen`, `miZeroArcPts`, `miRectAlloc`, `miImageGlyphBlt`, `miPolyBuildPoly`, `miZeroDashLine`, `miCreateScreenResources`, `miChangeClip`, `miPolyRectangle`, `miZeroArcSetup`, `miPointInRegion`, `miRegionEmpty`, `miPolyText16`, `miMarkWindow`, `miComputeCompositeClip`, `miMoveWindow`, `miFillWideEllipse`, `miDestroyGC`, `miGetImage`, `miInverse`, `miPolyFillRect`, `miWindowExposures`, `miCopyGC`, `miSlideAndSizeWindow`, `miFreeSpanGroup`, `miAppendSpans`, `miPolySegment`, `miRectsToRegion`, `miGetLayerWindow`, `miModifyPixmapHeader`, `miEllipseAngleToSlope`, `miFillConvexPoly`, `miValidateTree`, `miOpqStipDrawable`, `miWideLine`, `miInsertEdgeInET`, `miWideDash`, `miSetShape`, `miInsertionSort`, `miDestroyClip`, `miCopyClip`, `miMarkUnrealizedWindow`, `miRegionNotEmpty`, `miChangeSaveUnder`, `miRegionInit`, `miFillArcSliceSetup`, `miChangeBorderWidth`, `miCreateETandAET`, `miCopyPlane`, `miHandleValidateExposures`, `miRegionCopy`, `miZeroPolyArc` |
| `mfb*` | monochrome frame-buffer drawing | `mfbTEGlyphBltWhite`, `mfbCopyRotatePixmap`, `mfbBlackSolidFS`, `mfbFillPolyInvert`, `mfbPutImage`, `mfbPolyFillArcSolid`, `mfbGetImage`, `mfbLineSD`, `mfbFillPolyWhite`, `mfbVertS`, `mfbLineSS`, `mfbUnrealizeFont`, `mfbDoBitbltGeneral`, `mfbSolidWhiteArea`, `mfbDoBitbltXor`, `mfbRegisterCopyPlaneProc`, `mfbDoBitbltOr`, `mfbSolidInvertArea`, `mfbDoBitbltCopy`, `mfbCopyPlane`, `mfbSetSpans`, `mfbGetSpans`, `mfbSolidPP`, `mfbInvertSolidFS`, `mfbValidateGC`, `mfbRealizeFont`, `mfbTileFS`, `mfbPolyPoint`, `mfbTileAreaPPWCopy`, `mfbUnnaturalTileFS`, `mfbBresD`, `mfbTileAreaPPWGeneral`, `mfbHorzS`, `mfbDoBitbltCopyInverted`, `mfbBresS`, `mfbSegmentSS`, `mfbCreateGC`, `mfbSegmentSD`, `mfbPolyGlyphBltWhite`, `mfbUnnaturalStippleFS`, `mfbSolidBlackArea`, `mfbFillPolyBlack`, `mfbAllocatePrivates`, `mfbPolyGlyphBltBlack`, `mfbReduceRop`, `mfbPixmapToRegion`, `mfbZeroPolyArcSS`, `mfbWhiteSolidFS`, `mfbXRotatePixmap`, `mfbWhiteStippleFS`, `mfbCopyArea`, `mfbStippleWhiteArea`, `mfbCopyPixmap`, `mfbImageGlyphBltBlack`, `mfbPadPixmap`, `mfbTEGlyphBltBlack`, `mfbImageGlyphBltWhite`, `mfbDoBitblt`, `mfbStippleBlackArea`, `mfbSetScanline`, `mfbPolyFillRect`, `mfbBlackStippleFS`, `mfbYRotatePixmap`, `mfbPolyGlyphBltInvert`, `mfbPushPixels`, `mfbStippleInvertArea`, `mfbDestroyPixmap`, `mfbInvertStippleFS` |
| `cfb*` | colour frame-buffer drawing, by depth | `cfbBitBlt`, `cfb16FillSpanTile32sGeneral`, `cfb16BresD`, `cfbAllocatePrivates`, `cfb16PolyGlyphBlt8`, `cfb16DoBitbltXor`, `cfbFillSpanTile32sCopy`, `cfb32CopyArea`, `cfb32PolyFillArcSolidGeneral`, `cfb32FillPoly1RectGeneral`, `cfb8ClippedLineCopy`, `cfbDoBitbltCopy`, `cfb8FillRectOpaqueStippled32`, `cfb16FillRectSolidCopy`, `cfb32MatchCommon`, `cfbFillRectSolidCopy`, `cfb32DoBitblt`, `cfb32SegmentSS1RectGeneral`, `cfb32ZeroPolyArcSSCopy`, `cfb8FillRectTransparentStippled32`, `cfb16AllocatePrivates`, `cfb16SegmentSS1Rect`, `cfbYRotatePixmap`, `cfb32VertS`, `cfb16SegmentSS1RectGeneral`, `cfb32SegmentSD`, `cfb32Tile32FSCopy`, `cfb8ClippedLineGeneral`, `cfb16CreatePixmap`, `cfbFillBoxTile32sGeneral`, `cfb16SegmentSD`, `cfb32SegmentSS`, `cfbCopyPixmap`, `cfb32ClippedLineGeneral`, `cfb32FillBoxTileOddCopy`, `cfb32Tile32FSGeneral`, `cfb16FillPoly1RectCopy`, `cfb16Tile32FSCopy`, `cfbFillBoxTileOdd`, `cfb16SegmentSS`, `cfb32CreatePixmap`, `cfbCopyPlane8to1`, `cfbPutImage`, `cfb16FillPoly1RectGeneral`, `cfb16SetScanline`, `cfb16LineSS1RectPreviousCopy`, `cfb16ClippedLineGeneral`, `cfb16Tile32FSGeneral`, `cfb16HorzS`, `cfb16DoBitbltOr`, `cfb32LineSS`, `cfbPolyFillArcSolidGeneral`, `cfb16PolyFillArcSolidCopy`, `cfb16PolyFillArcSolidGeneral`, `cfb16YRotatePixmap`, `cfbGetImage`, `cfb8Stipple32FS`, `cfbFillSpanTileOddGeneral`, `cfb32LineSD`, `cfb16FillBoxTileOddGeneral`, `cfb16SegmentSS1RectXor`, `cfb16FillBoxTileOddCopy`, `cfbSolidSpansGeneral`, `cfb32YRotatePixmap`, `cfb32FillBoxTileOddGeneral`, `cfb8LineSS1RectXor`, `cfb32ClippedLineCopy`, `cfb16SegmentSS1RectCopy`, `cfbPolyFillArcSolidCopy`, `cfb16ZeroPolyArcSSXor`, `cfb32ValidateGC`, `cfb16ClippedLineCopy`, `cfbResolveColor`, `cfb16LineSS`, `cfb32ZeroPolyArcSSXor`, `cfb32ImageGlyphBlt8`, `cfb32FillRectTileOdd`, `cfb16LineSD`, `cfb16FillRectSolidXor`, `cfb32CopyPixmap`, `cfbZeroPolyArcSS8Xor`, `cfb16SolidSpansCopy`, `cfb32GetImage`, `cfb16FillRectTileOdd`, `cfb8SegmentSS1RectGeneral`, `cfb16PadPixmap`, `cfb32BitBlt`, `cfb16LineSS1Rect`, `cfb32SegmentSS1RectCopy`, `cfb32PadPixmap`, `cfbUnnaturalTileFS`, `cfb32FillSpanTile32sGeneral`, `cfb32PutImage`, `cfb32SolidSpansGeneral`, `cfb16ReduceRasterOp`, `cfbCreatePixmap`, `cfb32FillRectTile32Copy`, `cfbPolyGlyphRop8`, `cfb16LineSS1RectCopy`, `cfbLineSD`, `cfbSetScanline`, `cfb32CopyPlane`, `cfb16FillSpanTileOddGeneral`, `cfb32CopyRotatePixmap`, `cfbSolidSpansCopy`, `cfb16VertS`, `cfb32LineSS1RectCopy`, `cfbFillPoly1RectGeneral`, `cfbLineSS`, `cfb16CopyPlane`, `cfbZeroPolyArcSS8General`, `cfbTile32FSGeneral`, `cfb16UnnaturalTileFS`, `cfb32SegmentSS1Rect`, `cfbTile32FSCopy`, `cfbCopyPlane`, `cfb16BitBlt`, `cfb16GetImage`, `cfb16SolidSpansXor`, `cfb32DoBitbltXor`, `cfb32UnnaturalTileFS`, `cfbDoBitbltGeneral`, `cfbVertS`, `cfb16FillRectSolidGeneral`, `cfb16FillRectTile32Copy`, `cfb32PolyFillRect`, `cfbCopyRotatePixmap`, `cfb32LineSS1RectPreviousCopy`, `cfb16PutImage`, `cfb32FillPoly1RectCopy`, `cfb8ComputeClipMasks32`, `cfb32FillBoxTile32sCopy`, `cfbFillBoxTileOddGeneral`, `cfb16PolyFillRect`, `cfbImageGlyphBlt8`, `cfb8SetOpaqueStipple`, `cfbInitializeColormap`, `cfb32SolidSpansXor`, `cfbMatchCommon`, `cfb32SegmentSS1RectXor`, `cfb32FillBoxTileOdd`, `cfbSegmentSS`, `cfbSegmentSD`, `cfbPolyGlyphBlt8`, `cfb8OpaqueStipple32FS`, `cfb32DoBitbltOr`, `cfb8SegmentSS1RectCopy`, `cfb8ClippedLineXor`, `cfb32PolyPoint`, `cfbBresS`, `cfb32BresS`, `cfbBresD`, `cfb32FillRectSolidCopy`, `cfb16MatchCommon`, `cfbPushPixels8`, `cfb16PolyPoint`, `cfb16FillBoxTile32sCopy`, `cfb16FillSpanTile32sCopy`, `cfb32BresD`, `cfb16FillSpanTileOddCopy`, `cfbPolyPoint`, `cfbFillSpanTileOddCopy`, `cfbPolyFillRect`, `cfb16CopyPixmap`, `cfb32ZeroPolyArcSSGeneral`, `cfbCopyPlane1to8`, `cfbDoBitblt`, `cfb8LineSS1RectCopy`, `cfbDoBitbltXor`, `cfb32AllocatePrivates`, `cfb32GetSpans`, `cfbFillPoly1RectCopy`, `cfb32ClippedLineXor`, `cfb32SetSpans`, `cfb32SolidSpansCopy`, `cfb32SetScanline`, `cfb32FillSpanTile32sCopy`, `cfb32FillSpanTileOddCopy`, `cfb16SolidSpansGeneral`, `cfb32DoBitbltGeneral`, `cfb32DestroyPixmap`, `cfb16ZeroPolyArcSSCopy`, `cfb8LineSS1Rect`, `cfb16DoBitbltGeneral`, `cfb16LineSS1RectXor`, `cfb32ReduceRasterOp`, `cfb32FillBoxTile32sGeneral`, `cfb8SegmentSS1RectXor`, `cfbCopyImagePlane`, `cfbDestroyPixmap`, `cfbHorzS`, `cfbCopyArea`, `cfbValidateGC`, `cfb8SegmentSS1Rect`, `cfb16ZeroPolyArcSSGeneral`, `cfbDoBitbltOr`, `cfb32FillRectTile32General`, `cfb16LineSS1RectGeneral`, `cfbFillBoxTileOddCopy`, `cfb16GetSpans`, `cfbUnnaturalStippleFS`, `cfb8LineSS1RectPreviousCopy`, `cfb32PolyFillArcSolidCopy`, `cfb16ClippedLineXor`, `cfb32FillSpanTileOddGeneral`, `cfb16SetSpans`, `cfb8LineSS1RectGeneral`, `cfbZeroPolyArcSS8Copy`, `cfb16FillRectTile32General`, `cfb32LineSS1RectGeneral`, `cfb16UnnaturalStippleFS`, `cfb32HorzS`, `cfb32PolyGlyphBlt8`, `cfbXRotatePixmap`, `cfb32FillRectSolidXor`, `cfbFillSpanTile32sGeneral`, `cfb32FillRectSolidGeneral`, `cfbTEGlyphBlt8`, `cfb16FillBoxTile32sGeneral`, `cfb16ValidateGC`, `cfbFillRectSolidGeneral`, `cfb16CopyRotatePixmap`, `cfbFillBoxTile32sCopy`, `cfb32LineSS1RectXor`, `cfb16CopyArea`, `cfbFillRectTile32Copy`, `cfbFillRectSolidXor`, `cfbPadPixmap`, `cfb16DestroyPixmap`, `cfb32LineSS1Rect`, `cfbSetSpans`, `cfb16XRotatePixmap`, `cfb8SetStipple`, `cfbFillRectTile32General`, `cfb16DoBitbltCopy`, `cfb16DoBitblt`, `cfb16ImageGlyphBlt8`, `cfb16FillBoxTileOdd`, `cfb32UnnaturalStippleFS`, `cfb8FillRectStippledUnnatural`, `cfb16BresS`, `cfbGetSpans`, `cfb32XRotatePixmap`, `cfbReduceRasterOp`, `cfb32DoBitbltCopy`, `cfbFillRectTileOdd`, `cfbSolidSpansXor` |

**Unknown: no shipped software or published source depends on it:** why the module carries per-depth sequence tables with an `_ip19` suffix. Routes tried: the names and the callers in the `kon` and `rrm` groups. The rules by which window and colour identifiers are allocated, shared, stolen and reserved are read from the code in [opengl.md](opengl.md#the-display-id-allocator).

## kona.so functions from 0x4cdd80

One entry per function, read from the 6.5.30m `usr/lib/X11/dyDDX/kona.so` through [ddx/asm/kona/](../ddx/asm/kona/), with callees resolved through the module's global offset table. Offsets after "+" are byte offsets into the record named. Whether the same functions in `konal.so` differ is covered in a separate section.

### Kona drawing, glyph, copy and image routines (`kon*`)

These send commands to the pipe. A command is the token's first payload word stored at the FIFO pointer (screen private +0x8) plus 32 times the token, and later words at offset 0 ([opengl.md](../opengl.md#how-the-module-writes-commands)); token names are those of `GE.h`. The bulk-word copy helpers `KonSeqData3_ip19` to `KonSeqData32_ip19` carry runs of more than three words.

- `konPolyFillRectSolid` (`kona.so` 0x4d0540, 3160 bytes): **Established.**
  Solid PolyFillRect through the pipe. It writes `HP_X_LOADPOS`, `HP_X_LOADGC` and `HP_X_LOADCLIP` (and `HP_X_BDATA4` for further clip rectangles), then streams rectangles as `HP_X_RECT6` in groups of six with `HP_X_RECT` for the last one. A leftover of two to six rectangles is sent as `HP_X_DATA2` to `HP_X_DATA10` words ahead of the final `HP_X_RECT`; a clipped box goes out as `HP_X_BOX`. Bulk words go through `KonSeqData3_ip19` to `KonSeqData11_ip19`, and errors through `ErrorF`.
- `konPolyFillRectStippledC` (`kona.so` 0x50e830, 4996 bytes): **Established.**
  PolyFillRect with a cached stipple. It first finds or loads the stipple with `kon_hitCachedStipple`, `kon_allocCachedStipple` and `kon_loadCachedStipple`, selects it with `HP_X_LOADSTIPPLE` and `HP_X_ROTATESTIPPLE`, writes `HP_X_LOADPOS`, `HP_X_LOADGC` and `HP_X_LOADCLIP`, and then sends the rectangles as `HP_X_RECT6` and `HP_X_RECT` with `HP_X_DATA2` to `HP_X_DATA10` remainders, as the solid version does. It reports 13 failure cases with `ErrorF`.
- `konSegmentSS` (`kona.so` 0x4d7750, 548 bytes): **Established.**
  PolySegment through the pipe: it loads the GC and clip with `kon_loadGC` and `kon_loadClipRects`, then sends one `HP_X_SEGMENT` command per segment. When the clip makes that unsafe it calls `konSlowSegmentSS`; failures go to `ErrorF`.
- `konSlowLineSS` (`kona.so` 0x56dd30, 4124 bytes): **Established.**
  Host-side solid polyline used when the pipe line command cannot be used. It loads state with `kon_loadGC`, splits the line with `miZeroClipLine`, and sends the pixels as `HP_X_POINT` through `konBresS` (two sites); it also emits `HP_X_LOADPOS`, `HP_X_LOADCLIP` and `HP_X_BOX` for the clip.
- `konSlowLineSD` (`kona.so` 0x573130, 3236 bytes): **Established.**
  The dashed version of the host-side line: `kon_loadGC` for state, `miStepDash` (three sites) to cut dashes, `konBresD` (two sites) to emit the dash pixels as point commands, and `miZeroClipLine` for clipping. It sends `HP_X_LOADPOS` and `HP_X_LOADCLIP` before drawing.
- `konBresS` (`kona.so` 0x542ee0, 2288 bytes): **Established.**
  Emits the pixels of a solid Bresenham line as points: `HP_X_POINT24` in blocks of 24, `HP_X_POINT6` in blocks of six, and `HP_X_DATA1` to `HP_X_DATA5` plus `HP_X_POINT` for the last pixels. Bulk words go through `KonSeqData23_ip19`, `KonSeqData5_ip19`, `KonSeqData4_ip19` and `KonSeqData3_ip19`.
- `konBresD` (`kona.so` 0x53d2e0, 5320 bytes): **Established.**
  Emits a dashed Bresenham line as points. Foreground dashes go out as `HP_X_POINT24`, `HP_X_POINT6` and `HP_X_POINT`, and for double-dashed lines the background dashes go as `HP_X_BGPOINT24`, `HP_X_BGPOINT6` and `HP_X_BGPOINT`, with `HP_X_DATA1` to `HP_X_DATA6` for remainders. It copies bulk words with `KonSeqData23_ip19` and its shorter siblings, and keeps the pixel buffer in `konBresPts`.
- `konDrawPoints` (`kona.so` 0x551950, 1200 bytes): **Established.**
  Draws a list of points: it loads the position and clip through `kon_loadNfbGCoff` and `HP_X_LOADCLIP`, then sends the points as `HP_X_POINT24`, `HP_X_POINT6`, `HP_X_DATA1` to `HP_X_DATA6` and `HP_X_POINT`. Errors go through `ErrorF`.
- `konCopyRect` (`kona.so` 0x542a20, 712 bytes): **Established.**
  Copies one rectangle inside the frame buffer: it loads the GC with `kon_loadPixmapGC`, writes `HP_X_LOADPOS` and `HP_X_LOADCLIP`, and then sends `HP_X_PIX_COPY` with the source and destination x and y. It reports failures with `ErrorF` at two sites.
- `konCopyWindow` (`kona.so` 0x4d3df0, 2112 bytes): **Inferred.**
  The copy-window hook. It works on the destination's clip rectangles and the window's marked list through the screen's region hooks (at +0x154, +0x174 and +0x178 of the screen record, among others), and moves the covered pixels by calling the local routine at 0x4817f0 at two sites, shifted by the difference between the old and new window origin. It sends no token itself.
- `konDrawImage` (`kona.so` 0x552f40, 2276 bytes): **Established.**
  Writes an image rectangle to the frame buffer. It loads state with `kon_loadPixmapGC`, writes `HP_X_LOADPOS` and `HP_X_LOADCLIP`, then streams the pixels as `HP_X_PIX_WRITE` followed by `HP_X_PIX_FINISH`; for large images it sends the `KONA_DMAWRITE` ioctl (10001) instead, and reports failure with `ErrorF` and `perror`. Bulk words use `KonSeqData32_ip19` and its shorter siblings.
- `konDrawMonoImage` (`kona.so` 0x5566f0, 1724 bytes): **Established.**
  Draws a one-bit image by the pixel-write command: it loads a bitmap GC with `kon_loadNfbBitmapGC`, writes `HP_X_LOADPOS` and `HP_X_LOADCLIP`, sends the bitmap words as `HP_X_PIX_WRITE`, ends with `HP_X_PIX_FINISH`, and copies the rows with `bcopy` and `KonSeqData32_ip19`.
- `konWriteFBSubBlock` (`kona.so` 0x4f9af0, 2216 bytes): **Established.**
  Writes one band of an image to the frame buffer: it sets `HP_X_PIX_SETUP`, `HP_X_LOADPOS`, then `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`, or for blocks over 4096 bytes issues `KONA_DMAWRITE` (10001) with the block, reporting failure with `ErrorF` and `perror`. Its words go through `kon_loadImpWordGC` (three sites) and `KonSeqData32_ip19` to `KonSeqData3_ip19`.
- `konReadFBBlock` (`kona.so` 0x52e460, 1900 bytes): **Established.**
  Reads a block of the frame buffer back to the host. It allocates the result with `Xalloc`, sets `HP_X_PIX_SETUP` and `HP_X_LOADPOS`, sends `HP_X_PIX_READ` with the block's x and y, and follows it with `HP_WG_FLUSH_1` carrying 0xdeadbeef. It waits with `sginap` for the pipe to answer, checks it with ioctl 10017 (`KONA_CHECK_PIPE`) after waiting 3000 rounds, uses `KONA_DMAREAD` (10000) for blocks over 8192 bytes and copies small ones from the read-back area with `bcopy`.
- `konFreeFBBlock` (`kona.so` 0x4d2630, 76 bytes): **Established.**
  Frees a block returned by `konReadFBBlock`: it calls `Xfree` on the pointer at +0x8 of the block record and clears that field.
- `konImageGlyphBlt` (`kona.so` 0x508720, 2804 bytes): **Established.**
  General ImageGlyphBlt. It measures the string with `QueryGlyphExtents`, loads GC state with `kon_loadImgRectGC` and `kon_loadImgBitmapGC`, writes `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR` and `HP_X_BOX` for the background, then `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH` for the glyph bitmaps. Its fallback is `nfbImageGlyphBlt`.
- `konImageGlyphBltTE10` (`kona.so` 0x4ddbb0, 3832 bytes): **Established.**
  ImageGlyphBlt for fixed-width fonts 10 pixels wide: it packs rows of glyphs into words, then uses the same token sequence as the general version (`HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`, `HP_X_BOX`, `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE`, `HP_X_PIX_FINISH`). Cases it cannot handle go to `nfbImageGlyphBlt`; it prints its arguments through `ErrorF` on error.
- `konImageGlyphBltTE16` (`kona.so` 0x4deab0, 3044 bytes): **Established.**
  The same operation for fonts 16 pixels wide; a glyph row fits half a word, so two glyphs are packed per word before `HP_X_PIX_WRITE`. It uses `kon_loadImgRectGC` and `kon_loadImgBitmapGC` and falls back to `nfbImageGlyphBlt`.
- `konImageGlyphBltTE32` (`kona.so` 0x4dafd0, 2540 bytes): **Established.**
  The same operation for fonts 32 pixels wide, where each glyph row is exactly one word; same tokens and fallbacks as the other widths. It calls `nfbImageGlyphBlt` for the cases it declines and `kon_loadImgBitmapGC`.
- `konPolyGlyphBltSolidTE3` (`kona.so` 0x50a7c0, 5660 bytes): **Established.**
  Solid PolyGlyphBlt for fixed-width fonts 3 pixels wide: it packs the rows of several glyphs into each word, then sends `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`, `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`. Its GC state comes from `kon_loadBitmapGC`, and the general routine `nfbSolidPolyGlyphBlt` handles anything it declines.
- `konPolyGlyphBltSolidTE6` (`kona.so` 0x50bde0, 5856 bytes): **Established.**
  Solid PolyGlyphBlt for fonts 6 pixels wide, with the same token sequence as the 3-pixel routine; it loads the GC with `kon_loadBitmapGC` and declines to `nfbSolidPolyGlyphBlt`.
- `konPolyGlyphBltSolidTE8` (`kona.so` 0x50d5d0, 4700 bytes): **Established.**
  Solid PolyGlyphBlt for fonts 8 pixels wide, packing four glyph rows to a word before the same sequence of `HP_X_PIX_*` tokens; falls back to `nfbSolidPolyGlyphBlt`.
- `konCreateWindow` (`kona.so` 0x4f4030, 560 bytes): **Inferred.**
  Creates a window's private data: it finds the window's optional record with `FindWindowWithOptional`, fills the private slots, and, when the window needs a hardware window id, sends `HP_X_LOADXMAP_CONFIG` with 1 followed by `HP_WG_FLUSH_1` carrying 0xdeadbeef. It reloads the gamma tables with `konReloadAllGammas` and chains to the saved `konCreateWindow` hook of the layer below.

### Kona graphics-context loading and caches (`kon_load*`, `kon_*Stipple`, `konValidate*`)

- `kon_loadGeomGC` (`kona.so` 0x52f810, 3452 bytes): **Established.**
  Sends the geometry state of a graphics context to the pipe as `HP_X_LOADGC`, thirteen words taken from the GC private record, with its debug message printed by `ErrorF` at four sites. Its arguments carry the raster op and plane mask the caller wants loaded; the routine itself only formats and sends the words.
- `kon_loadNfbGC` (`kona.so` 0x4ef700, 180 bytes): **Established.**
  Thin wrapper over `kon_loadGeomGC` for the generic frame-buffer path: it first writes the position words of `HP_X_LOADPOS` (zero, zero, then the drawable's width and height from the screen record +0x8 and +0xa of its screen) and then calls `kon_loadGeomGC` with the format code from the GC.
- `kon_loadClearGC` (`kona.so` 0x522470, 224 bytes): **Established.**
  Loads the state for clearing a drawable: sends `HP_X_LOADCLIP` as a single whole-drawable rectangle and `HP_X_LOADPOS` with the drawable's origin and size, then calls `kon_loadGeomGC` with the raster op code 3 (copy) and a plane mask of all ones.
- `kon_loadBitmapGC` (`kona.so` 0x4f3a80, 288 bytes): **Established.**
  Loads a bitmap-drawing GC: sends the 13 words of `HP_X_LOADGC` copied from the GC private record (foreground at +0x24 and +0x28, then the mask, op, address and format words), clearing the low five bits of the config word. It makes no calls.
- `kon_loadOpaqueBitmapGC` (`kona.so` 0x515c80, 272 bytes): **Established.**
  The opaque-stipple version of the bitmap loader: sends `HP_X_LOADGC` with the background colour in the foreground slot (private +0x2c, +0x30) so that bitmap zeros draw the background. No calls.
- `kon_loadImgBitmapGC` (`kona.so` 0x52ebd0, 332 bytes): **Established.**
  Loads the GC for glyph images: sends the 13 words of `HP_X_LOADGC` with the config word's low five bits cleared and the plane-mask word masked to 24 bits, taking colours from private +0x24 and +0x28. No calls.
- `kon_loadPixmapGC` (`kona.so` 0x501690, 3384 bytes): **Established.**
  Loads the GC for a pixmap read or write: sends `HP_X_LOADGC` and `HP_X_PIX_SETUP`, selecting packing shifts from the tables `kon_pack32src`, `kon_pack32dest`, `kon_pack16src`, `kon_pack16dest`, `kon_pack8src`, `kon_pack8dest` and the `kon_main*` and `kon_over*` shift tables by pixel format. It reports unrecognised formats with `ErrorF`. Called from `konCopyRect`, `konDrawImage`, `konReadImage`.
- `kon_parseGC` (`kona.so` 0x537a80, 7692 bytes): **Established.**
  Converts the X graphics-context fields into the module's private record. It clears the record with `bzero`, then derives the raster op, plane mask, fill and pixel format words (the destination packing tables `kon_pack32dest`, `kon_pack16dest`, `kon_pack8dest` and the shift tables `kon_mainL8shift`, `kon_mainL12shift`, `kon_mainL16shift`). It sends nothing.
- `kon_loadTilePlane` (`kona.so` 0x4d3460, 1388 bytes): **Established.**
  Loads a tile or stipple plane into the pipe's stipple cache: it gets a slot with `kon_allocCachedStipple`, fills it with `kon_loadCachedStipple` and selects the slot with `HP_X_LOADSTIPPLE` and the origin with `HP_X_ROTATESTIPPLE`. Three failure cases are reported with `ErrorF`.
- `kon_loadCachedStipple` (`kona.so` 0x4f5990, 612 bytes): **Established.**
  Sends the pattern of a stipple to its cache slot with `HP_X_STORESTIPPLE`, writing the size and then the words through `KonSeqData32_ip19`, `KonSeqData16_ip19`, `KonSeqData8_ip19`, `KonSeqData4_ip19` and `KonSeqData3_ip19`, choosing the helper by the size of the pattern.
- `kon_allocCachedStipple` (`kona.so` 0x51b8e0, 204 bytes): **Established.**
  Takes the next slot of the stipple cache from the screen record (+0x68 slot pointer, +0x6c list head), calling `kon_freeCachedStipple` for the slot's old owner when it has one, and records the new owner GC in the slot.
- `kon_freeCachedStipple` (`kona.so` 0x507f00, 572 bytes): **Established.**
  Releases a stipple slot: clears the owner's slot index (private +0x60 set to -1) and unlinks the slot from the screen's list; it reports a corrupt list with `ErrorF`.
- `kon_unloadStipple` (`kona.so` 0x51af00, 52 bytes): **Established.**
  Invalidates the stipple loaded in the pipe: it writes -1 to the `HP_X_LOADSTIPPLE` address (0x2780 above the FIFO pointer, token 0x13c) and sets the GC's slot index at +0x60 to -1.
- `kon_GCOpsCacheReset` (`kona.so` 0x539900, 184 bytes): **Established.**
  Frees every cached operation vector: it loops over the 2048 entries of the table, calls `Xfree` on each non-null entry and zeroes it.
- `konCopyGC` (`kona.so` 0x4fe860, 168 bytes): **Established.**
  Copy-GC wrapper: it puts back the original function table saved at +0xa4 of the GC private record over the context's own (gc +0x44), calls the original entry at +0x8, then saves the table and reinstalls the module's table from its read-only data. No token.
- `konValidateGC` (`kona.so` 0x53eb40, 168 bytes): **Established.**
  Validate-GC wrapper with the same save and restore as `konCopyGC`, calling the original entry at +0x0 with the original table installed.
- `konValidateReducedGC` (`kona.so` 0x55f3e0, 204 bytes): **Established.**
  Masks the colour words of the generic-layer GC record with the depth mask for the drawable's depth (`kon_depthmask`, indexed by the byte at +0x2 of the drawable): the foreground at private +0x34 and the plane mask at +0x4c. It prints a debug message with `ErrorF` first. Called from `konValidateWindowGC`.
- `konValidateWindowGC` (`kona.so` 0x553d40, 2320 bytes): **Established.**
  Re-validates a window GC when its state changed: it decides from the fill style whether the context uses the solid, tiled, stippled or opaque-stippled operation vector (`konSolidPrivOps`, `konTiledCAccelPrivOps`, `nfbTiledPrivOps`, `konStippledCPrivOps`, `nfbStippledPrivOps`, `nfbOpStippledPrivOps`), expands the tile or stipple with `konExpandTile`, `konExpandStipple` and `konTilePatterns`, reloads the cache with `kon_freeCachedStipple`, re-parses the context with `kon_parseGC`, and ends in `FatalError` on an illegal fill style.
- `konTiledFillRects` (`kona.so` 0x555530, 92 bytes): **Established.**
  Stub for tiled FillRects on the pipe path: it only prints a debug message with `ErrorF` and returns.
- `konTilePatterns` (`kona.so` 0x522ee0, 3596 bytes): **Established.**
  Builds the replicated pattern words for a tile: allocates the buffer with `Xalloc`, replicates rows to fill 32 words when the tile height is 1, 2, 4, 8 or 16 by repeated `bcopy`, and reports an unsupported size with `ErrorF`.
- `konTileRects` (`kona.so` 0x52ada0, 2636 bytes): **Inferred.**
  Tiles a list of rectangles by copying one prepared tile: it reads the box lists through the screen's region hooks and calls `nfbReplicateArea` to grow the tile across each rectangle by doubling.
- `konQueryBestSize` (`kona.so` 0x4d5000, 308 bytes): **Established.**
  Best-size query for the module: for tile and stipple (classes 1 and 2) it rounds the requested width down to a power of two, and for the cursor class it caps both sides at 64. Nothing calls it by name: its address is stored at 0x58663c in the module's data and at 0x58c308 in the global offset table.
- `konStoreColors` (`kona.so` 0x523cf0, 2468 bytes): **Established.**
  Stores colormap entries by sending `HP_X_LOADCMAP`: the map address, a count of 1, and the colour word built from the 10-bit red, green and blue values (masks 0x3ff00000 and 0xffc00); bulk words go through `KonSeqData32_ip19` and `KonSeqData4_ip19`, and errors through `ErrorF`.
- `konInstallColormap` (`kona.so` 0x564710, 1768 bytes): **Established.**
  Installs a colormap into the display: sends `HP_X_LOADCMAP` with the map address, the entry count and one packed word per entry (10-bit channels), through `KonSeqData32_ip19` and `KonSeqData4_ip19`; it reports errors with `ErrorF`.
- `konValidateVisual` (`kona.so` 0x52cc30, 4252 bytes): **Inferred.**
  Re-validates a window's visual state after a change in clip or buffer: it works through the screen's three region slots, calling the screen hooks at +0x154, +0x164, +0x168, +0x16c, +0x178, +0x188, +0x190 and +0x194 on them, and calls the local routines at 0x53e7b0 (ten sites) and 0x4b1cf0 (five sites). Roles are read from the call structure; neither routine was read.

### Screen set-up, hyperpipe, video control and rendering-manager client (`konInit`, `konAttachXvc`, `rrm*`)

- `konInit` (`kona.so` 0x56ed50, 9132 bytes): **Established.**
  Screen initialisation for the Kona module, the largest function of the range. It reserves the screen, window and GC private indexes (`AllocateScreenPrivateIndex`, `AllocateWindowPrivateIndex`, `AllocateGCPrivateIndex`), allocates the per-screen records with `Xalloc`, and loads the visual tables from `konavis.so` with `ddxMakeDynamicModulePath`, `dlopen` and `dlsym` (the symbols `konVisualInfo_imp8`, `konVisualInfo_imp8c` and `konVisualInfo_imp9` among them), reporting `dlerror` on failure. It then calls `nfbGenericScreenInit`, `kon_initGCCaches`, `kon_initCursorCaches`, `konAttachXvc`, `konBlankScreen`, `nfbHWColormapScreenInit`, `rrmInit` and `glxScreenInit`, registers the stereo wrappers with `nfbStereoRegisterWrapperOps`, reads display information with `nfbReadDisplayRegisterInfo`, and compares names against `HIRES_QUADBUFFER` and `HIRES_DOUBLEBUFFER` with `strcmp` (the visual-selection logic around those was not read). Each step has its own `ErrorF` message when it fails, among them "probably no DG installed" for the video-control attach and a conflict message for the overlay flags.
- `konAttachXvc` (`kona.so` 0x54a720, 228 bytes): **Established.**
  Connects the screen to the video-control extension. It reads the environment variable `XVC_DEBUG` with `getenv`, hands the extension four module callbacks plus a memory interface through `SDBsetupMemoryInterface`, and registers the screen with `XSGIvcScreenInit`; it returns whether that succeeded.
- `konDetachXvc` (`kona.so` 0x564660, 168 bytes): **Established.**
  Disconnects the video-control extension: when `vcScreenPrivateIndex` is valid and `XSGIvcScreens` has an entry for the screen it calls the routine at 0x44b710 to release it, then zeroes the screen's private slot and the `XSGIvcScreens` entry.
- `konUnbindDestroyedWindow` (`kona.so` 0x556130, 696 bytes): **Inferred.**
  Cleans up a window that is destroyed while still bound to a display-generator window id. It complains through the routine at 0x4d39d0 when the window pointer is null ("null pWin handed to konUnbindDestroyedWindow") or when the binding disagrees ("DFR binding mismatch on xwid"), looks the id up through `vcScreenPrivateIndex` and `konWindowPrivateIndex`, and clears the binding with the routines at 0x5341a0 and 0x4fed90. Which display-generator register those two touch was not read.
- `konHyperpipeConfig` (`kona.so` 0x56c2d0, 788 bytes): **Established.**
  Applies a hyperpipe configuration. It checks the request with the routine at 0x4f0760 against the screen's record, copies three words of each 92-byte pipe record of the screen record (at +0x50, +0x54 and +0x58) into a 16-byte request entry, sends one generic graphics ioctl 102 (`GFX_GETBOARDINFO`) of 40 bytes per pipe to look up that board, and then sends `KONA_NCLOPS_CONFIGURE` (10020). A failed ioctl is reported with `perror` and the call returns -1 through its status argument.
- `konDestroyHyperpipeConfig` (`kona.so` 0x535310, 164 bytes): **Established.**
  Tears down a hyperpipe configuration: it finds the screen in `screenInfo` from the screen number and sends `KONA_NCLOPS_DESTROY_CONFIG` (10024) with the configuration id through the driver connection at +0x64 of the screen's private record, returning 1 if the ioctl failed and 0 if it succeeded.
- `rrmCreateDefColormap` (`kona.so` 0x4d4630, 976 bytes): **Inferred.**
  Creates the default colormap for a screen from the visual list (36 bytes per visual record, scanned for the visual whose id matches), by calling `CreateColormap`. It takes the addresses of `AllocColor` and `sgiOverrideColorCompare` and refers to the tables `init4sight`, `initGL`, `initPseudo` and `initEnvm` for the initial entries; `ErrorF` reports failure. The meaning of each table was not read.
- `rrmBindRNToClip` (`kona.so` 0x579380, 572 bytes): **Inferred.**
  Binds a rendering node to a window's clip for an ordinary window, from its reads of `rrmWindowPrivateIndex`, `nfbWindowPrivateIndex` and `rrmScreenPrivateIndex`. It allocates the window's record with `allocRRMpriv`, takes a reference with `incrRRMpriv`, picks a display id with `FindBestID` (two sites), sets the window's flag bits with `incrRRMFlags` and `nfbSetDidFlags`, and releases a replaced record with `Xfree`. It sends no ioctl itself.
- `rrmOGLBindRNToClip` (`kona.so` 0x54aa90, 684 bytes): **Inferred.**
  The same binding for an OpenGL window, whose extra state is found through `glxWindowPrivateIndex`. It calls `allocRRMpriv`, `incrRRMpriv`, `FindBestID`, `FindFreeID`, `incrRRMFlags` (two sites) and `nfbSetDidFlags`, reports a failed allocation with `ErrorF`, and frees the replaced record with `Xfree`.
- `rrmCopyWindow` (`kona.so` 0x50a740, 120 bytes): **Inferred.**
  Copy-window wrapper: it calls the saved copy-window hook at +0x78 of the rrm screen record with the window and the old origin passed through, saving and restoring the word at screen +0xe0 around the call, and returns its result.
- `rrmValidateTree` (`kona.so` 0x540b90, 180 bytes): **Inferred.**
  Hook for ValidateTree: if the window has no rrm private record yet it calls the saved ValidateTree hook (offset +0x7c of the rrm screen record) with the window and the tree, then reinstalls itself at screen +0xcc. When the window already has a record it calls a local routine through the global offset table instead.
- `rrmWorkProc` (`kona.so` 0x53f520, 124 bytes): **Inferred.**
  Work procedure that spaces out a deferred task: it reads the time with `GetTimeInMillis`, returns 0 if less than 50 milliseconds have passed since the last run, and otherwise runs the routine at 0x448210 and records the time and its result; it returns 1 when that routine reports no work left.

### Small support routines (`sgi*`, `realAllocSpan`)

- `sgiReleaseCapabilityUnsupported` (`kona.so` 0x4f5920, 28 bytes): **Established.**
  Stub for the release-capability request of the capability extension: it returns the extension's error base plus 1 (`nmbxErrorBase`), the extension's "unsupported" error code, and does nothing else.
- `sgiEnableCapabilityUnsupported` (`kona.so` 0x55e1d0, 28 bytes): **Established.**
  Stub for the enable-capability request: it returns `nmbxErrorBase` plus 1, the same unsupported error as the release stub, without doing any work.
- `realAllocSpan` (`kona.so` 0x4f9610, 352 bytes): **Established.**
  Allocates a 1540-byte block of span records with `Xalloc`, chains the block onto the list head, and links the 12-byte span records in the block into a free list (six at a time unrolled); it returns without allocating when `Xalloc` fails.

### SGI frame-buffer layer (`nfb*`)

The layer between the server and the colour frame-buffer code. Its window private record is found through the window's private array at +0x84 and `nfbWindowPrivateIndex`; its graphics-context record through the context's private array at +0x4c and `nfbGCPrivateIndex`.

#### Stereo wrappers

Every `nfbStereo*` function below draws a request once for each eye. The wrapper installs the saved stereo-free operation vector (private +0x5c) as the context's operations, sets a busy word (private +0x68), and, when the screen's stereo word at +0xdc of the root pixmap's screen data is 1, selects each eye's draw-buffer word (private +0x60 and +0x64, stored at private +0x8), shifts the drawable's y at +0xa and the private y at +0x5a by the eye offset, and calls the saved routine. Afterwards it restores the vector and clears the busy word. They send no token themselves.

- `nfbStereoPolyPoint` (`kona.so` 0x51f980, 452 bytes): **Established.**
  Stereo PolyPoint: the saved routine is entry +0x14 of the operations vector, called once per eye with the point list moved by the eye offset and moved back.
- `nfbStereoPolyline` (`kona.so` 0x554650, 452 bytes): **Established.**
  Stereo PolyLine, saved entry +0x18; the points are passed unchanged because the y shift is applied to the drawable instead.
- `nfbStereoPolySegment` (`kona.so` 0x4d56c0, 716 bytes): **Established.**
  Stereo PolySegment, saved entry +0x1c. It first copies the segment array into a block from `Xalloc` so that the second eye can use the original and the first the shifted copy, and releases the copy with `Xfree`.
- `nfbStereoPolyRectangle` (`kona.so` 0x51fb50, 716 bytes): **Established.**
  Stereo PolyRectangle, saved entry +0x20, with the same copied rectangle array (`Xalloc`, `Xfree`) as the segment wrapper.
- `nfbStereoPolyArc` (`kona.so` 0x528be0, 584 bytes): **Established.**
  Stereo PolyArc, saved entry +0x24; copies the arc array with `Xalloc` and frees it with `Xfree` after both eyes.
- `nfbStereoPolyFillRect` (`kona.so` 0x52a070, 716 bytes): **Established.**
  Stereo PolyFillRect, saved entry +0x2c, using a temporary rectangle copy from `Xalloc`.
- `nfbStereoImageText8` (`kona.so` 0x4d2d70, 472 bytes): **Established.**
  Stereo ImageText8, saved entry +0x3c, called twice with the drawable's y moved between eyes.
- `nfbStereoImageGlyphBlt` (`kona.so` 0x4e9b90, 492 bytes): **Established.**
  Stereo ImageGlyphBlt, saved entry +0x44, called once per eye with the shifted drawable.
- `nfbStereoPolyGlyphBlt` (`kona.so` 0x4cfa50, 492 bytes): **Established.**
  Stereo PolyGlyphBlt, saved entry +0x48, called for each eye.
- `nfbStereoPushPixels` (`kona.so` 0x531330, 500 bytes): **Established.**
  Stereo PushPixels, saved entry +0x4c, called once per eye with the drawable's y moved by the eye offset.
- `nfbStereoSetSpans` (`kona.so` 0x4eff30, 2096 bytes): **Established.**
  Stereo SetSpans (saved entry +0x4). It rewrites the y of every point in the span array in place, in a loop unrolled four at a time, calls the saved routine and then undoes the shift for the second eye.
- `nfbStereoFillSpans` (`kona.so` 0x4f8df0, 2076 bytes): **Established.**
  Stereo FillSpans (saved entry +0x0), shifting the y of each point in the array in place for each eye in a loop unrolled four at a time.
- `nfbStereoCopyArea` (`kona.so` 0x4d6cf0, 844 bytes): **Established.**
  Stereo CopyArea (saved entry +0xc): the eye offset is applied to the source drawable as well when it is a window, and the call is made once per eye.
- `nfbStereoCopyPlane` (`kona.so` 0x5076b0, 884 bytes): **Established.**
  Stereo CopyPlane (saved entry +0x10) with the same source-and-destination shifting as the CopyArea wrapper.

#### Drawing, validation and window hooks

- `nfbCreateStereoGC` (`kona.so` 0x5564d0, 532 bytes): **Established.**
  Replaces a new context's operations with the stereo vector: it records the stereo-free vector `nfbSolidOps` in the private record, builds the stereo copy of the table (a 28-byte header) and reports allocation trouble with `ErrorF`.
- `nfbReduceGC` (`kona.so` 0x525ea0, 116 bytes): **Established.**
  Copies the context's foreground (+0x18), background (+0x1c), plane mask (+0x14), raster op byte (+0x5) and fill-style bits (+0x10) twice into the private record, at +0x28 to +0x4c and again at +0x40 to +0x54 for the second path; a leaf that calls nothing.
- `nfbSolidFS` (`kona.so` 0x5343b0, 288 bytes): **Inferred.**
  FillSpans with a solid colour: it loops over the spans and for each calls an indirect routine with the private record's solid-fill word at +0x40 and rop byte at +0x48.
- `nfbTiledFS` (`kona.so` 0x519ab0, 332 bytes): **Inferred.**
  FillSpans with a tile: loops over the spans, calling the tiled fill routine named in the window's private record for each. Its address is stored at 0x5882d4 in the module's data, and it reads the window record through the window's private array at +0x84.
- `nfbStippledFillRects` (`kona.so` 0x52a520, 936 bytes): **Inferred.**
  FillRects with a stipple: four indirect calls into the stippled-area routine of the window record, one per fill path. Nothing calls it by name: its address is stored at 0x5882e8 in the module's data, in the operation tables.
- `nfbOpStippledFillRects` (`kona.so` 0x4d7bc0, 952 bytes): **Inferred.**
  FillRects with an opaque stipple, structured like the transparent one with four indirect calls into the opaque routine. Nothing calls it by name: its address is stored at 0x588300 in the module's data, in the operation tables.
- `nfbOpStippledFS` (`kona.so` 0x4d9d40, 676 bytes): **Inferred.**
  FillSpans with an opaque stipple: three indirect calls into the opaque stipple routine of the private records. Nothing calls it by name: its address is stored at 0x588304 in the module's data, next to the opaque-stippled FillRects pointer.
- `nfbVert` (`kona.so` 0x544170, 132 bytes): **Established.**
  Wrapper for a vertical one-pixel run: when the two y coordinates in the box argument differ it widens the box by one row and calls the fill routine passed in a register with a count of 1. Called from `nfbSolidZeroSeg`.
- `nfbPolyPoint` (`kona.so` 0x4eaea0, 728 bytes): **Inferred.**
  PolyPoint for the layer: for each point inside the window's clip it calls through the window record's point-fill routine (two sites); it reads the colour and rop from the private record at +0x28 and +0x30.
- `nfbSolidPolyGlyphBlt` (`kona.so` 0x4f4390, 2360 bytes): **Established.**
  Solid PolyGlyphBlt in the generic layer: calls `QueryGlyphExtents` for the text box and walks glyph rows to produce rectangles it fills with the solid colour.
- `nfbCopyArea` (`kona.so` 0x512810, 2692 bytes): **Established.**
  CopyArea in the generic layer. It decides between a host copy and the window-to-window path: calls `nfbDoBitBltSS` (three sites) for screen-to-screen, `nfbDoBitBltSP` for screen-to-pixmap, `cfb16CopyArea`, `cfb32CopyArea` or `cfbCopyArea` for pixmaps, `miCopyArea` as a fallback, `NotClippedByChildren` for the clip and `miHandleExposures` for the exposures.
- `nfbDoBitBltSS` (`kona.so` 0x562660, 744 bytes): **Inferred.**
  Screen-to-screen box copy: for each box in the region it makes an indirect call (four sites) into the copy routine named in the window's private record. Called from `nfbCopyArea`.
- `nfbDoBitBltSP` (`kona.so` 0x561ac0, 2968 bytes): **Established.**
  Screen-to-pixmap box copy. It allocates a buffer with `Xalloc`, reads the screen into it through the raster-op tables `nfbRopFcn` and `nfbMaskRopFcn`, selected by `rop_needs_src` and `rop_needs_dst`, and frees it with `Xfree`.
- `nfbDoBitBltPS` (`kona.so` 0x55f110, 340 bytes): **Inferred.**
  Pixmap-to-screen box copy: walks the box list of the region argument (+0x8) and for each box calls through the window record to write the pixmap rows to the screen.
- `nfbSaveAreas` (`kona.so` 0x4fda80, 80 bytes): **Inferred.**
  Save-under hook: forwards to `nfbDoBitBltSP` with the saved-area record to copy the covered screen area into a pixmap (the arguments 3 and -1 select the copy and all planes).
- `nfbRestoreAreas` (`kona.so` 0x52a3f0, 292 bytes): **Inferred.**
  Save-under restore hook: it calls `nfbDoBitBltPS` at two sites to copy the saved pixmap back to the screen, one per box.
- `nfbReplicateArea` (`kona.so` 0x4f0990, 632 bytes): **Inferred.**
  Tiles a source box across a destination box by doubling: four indirect calls into the copy routine, starting from one tile and copying the grown block back into itself. Called from `konTileRects`.
- `nfbPutImage` (`kona.so` 0x576e70, 1384 bytes): **Inferred.**
  PutImage in the generic layer: it routes through the GC's operations by indirect calls, calls the local routine at 0x4acef0 at two sites, and uses `PixmapWidthPaddingInfo` for row sizes.
- `nfbShmPutImage` (`kona.so` 0x4ef2f0, 576 bytes): **Established.**
  PutImage from shared memory: it checks the image format and depth, reports an unsupported one with `ErrorF`, and uses `PixmapWidthPaddingInfo` and `globalSerialNumber` to build a pixmap header over the shared data.
- `nfbCreatePixmap` (`kona.so` 0x57a170, 468 bytes): **Established.**
  Creates a pixmap: allocates the record and its data with `Xalloc` (two sites), sizes rows with `PixmapWidthPaddingInfo`, stamps `globalSerialNumber`, and reports an unsupported depth with `ErrorF`; in a multi-screen setup it consults `panoramiXMode` and `panoramiXSharePixmap`.
- `nfbCreateWindow` (`kona.so` 0x4d95b0, 1104 bytes): **Established.**
  Creates the window's frame-buffer record: allocates it with `Xalloc` (two sites), looks up the window's visual with `LookupIDByType`, uses `FindWindowWithOptional` (six sites) to find the optional fields, and sets its private index to `nfbWindowPrivateIndex`.
- `nfbDestroyWindow` (`kona.so` 0x526280, 212 bytes): **Inferred.**
  Releases the window's record: it calls the screen hook at +0x160 for each of the stored colour ids in a loop, then frees two blocks with `Xfree`.
- `nfbPositionWindow` (`kona.so` 0x522300, 8 bytes): **Established.**
  Hook that does nothing and returns 1 (TRUE); the layer needs no work when a window moves. Its address is stored at 0x58665c in the module's data.
- `nfbUnrealizeWindow` (`kona.so` 0x55ceb0, 8 bytes): **Inferred.**
  Hook that returns 1 immediately; unmapping a window needs no frame-buffer work. Its address is stored at 0x586668 in the module's data, eight bytes before the post-validate hook of the same table.
- `nfbMarkWindow` (`kona.so` 0x56a730, 180 bytes): **Inferred.**
  Marks a window as needing revalidation: sets the flag word for its colour-map group (found through the window record at +0x18 and the screen's table at +0x3c), and allocates a 24-byte block with `Xalloc` if the window has none, with `Must_have_memory` set during the call.
- `nfbMarkUnrealizedWindow` (`kona.so` 0x51d5d0, 292 bytes): **Inferred.**
  Marks a window when it is unrealised: it makes three indirect calls into the screen's mark hooks to flag the window and its parents. Its address is stored at 0x58679c in the module's data, and it calls through the screen's hook three times.
- `nfbPostValidateTree` (`kona.so` 0x4f4f80, 200 bytes): **Inferred.**
  After a tree validation it calls the window record's hook with the argument 3, once per window passed, to finish the revalidation. Its address is stored at 0x586670 in the module's data, and it reads the window record through the window's private array at +0x84.
- `nfbTreeObscured` (`kona.so` 0x4dc4b0, 352 bytes): **Established.**
  Walks the window tree and sends visibility events with `SendVisibilityNotify` for windows that became fully obscured (visibility state 2) or visible, using the saved flag bits to avoid repeats.
- `nfbPaintWindowBackground` (`kona.so` 0x4da9c0, 580 bytes): **Established.**
  Paints a window's background: it reports an unrecognised background state with `ErrorF` and otherwise calls the fill routine selected by the window record's background type (1 solid, 2 tile, 3 parent-relative). It calls `ErrorF` for background states it does not recognise; its address is stored at 0x586678 in the module's data.
- `nfbSaveScreen` (`kona.so` 0x4d7f80, 64 bytes): **Inferred.**
  Screen saver hook: calls the function at +0xc0 of the object at +0x74 of the screen record, passing the blank flag (1 when the argument is 0) and the screen.
- `nfbCursorLimits` (`kona.so` 0x527c50, 108 bytes): **Established.**
  Clamps the cursor's confinement box: it limits the new box (argument 4) to the screen extents at +0x8 and +0xa, writing the result halfwords to the output box; a leaf.
- `nfbUnrealizeCursor` (`kona.so` 0x4feac0, 204 bytes): **Established.**
  Releases a cursor's realised copy: frees up to three blocks with `Xfree` and reports a bad cursor with `ErrorF`.
- `nfbQueryBestSize` (`kona.so` 0x5632e0, 192 bytes): **Established.**
  Best-size query: for tiles and stipples (class 1 and 2) it rounds the width down to a power of two and caps height at 32; for cursors it caps both at 32. A leaf. It reads and writes the halfword at +0x0 of each of the two size pointers it is passed, and its address is stored in the global offset table rather than in a data table.
- `nfbFixupDepths` (`kona.so` 0x53bc60, 532 bytes): **Established.**
  Counts the visuals of each depth in a visual list into a 16-entry table of words on its stack, and rewrites the depth records to match; a leaf. It steps through 36-byte visual records reading the halfword at +0xa of each, and counts them into a 16-word table on its own stack; nothing in the module's code or data points at it.
- `nfbInitHWCmapArrays` (`kona.so` 0x566760, 2276 bytes): **Established.**
  Allocates the arrays that track the hardware colormaps and their groups with `Xalloc` (two sites), fills them with `memcpy` and frees the temporary list with `Xfree`.
- `nfbReadDisplayRegisterInfo` (`kona.so` 0x50a140, 168 bytes): **Established.**
  Reserves a screen private slot with `AllocateScreenPrivateIndex` and calls `ReadDisplayRegisterInfo` to fill the register description for the read-display extension.
- `nfbReadDisplay` (`kona.so` 0x504ca0, 5260 bytes): **Established.**
  Reads pixels from the screen for the read-display extension. It walks `WindowTable` and the window records, locates the cursor with `GetSpritePosition` and `GetSpriteCursor`, assembles the reply in an `Xalloc` buffer, sends it with `WriteToClient` and frees it with `Xfree`; it reports bad requests with `ErrorF`.
- `nfbInitRootWindow` (`kona.so` 0x5325d0, 2000 bytes): **Established.**
  Sets up the root window: it looks up background and border colours with `OsLookupColor` and `AllocColor`, makes a scratch GC with `GetScratchGC`, creates the default colormap with `CreateColormap`, sets the window properties with `ChangeWindowProperty` (five sites), interns atoms with `MakeAtom`, checks capabilities with `nmbxLookupCapability`, and ends the server with `FatalError` or `exit` on failure.
- `nfbGenericScreenInit` (`kona.so` 0x5346b0, 3104 bytes): **Established.**
  Screen initialisation for the generic frame-buffer layer. It allocates the monochrome and colour layers' private slots with `mfbAllocatePrivates`, `cfbAllocatePrivates`, `cfb16AllocatePrivates` and `cfb32AllocatePrivates`, allocates window and GC privates, reads a configuration value with `atof`, calls `nmbxScreenInit`, creates atoms with `MakeAtom`, initialises backing store with `miInitializeBackingStore` and registers shared-memory functions with `ShmRegisterFuncs`.
- `nfbNoopDDACreateScreenResources` (`kona.so` 0x555520, 8 bytes): **Established.**
  Stub that returns 1 without creating anything. Its address is stored at 0x586758 in the module's data.
- `nfbNoopDDAClearBackingStore` (`kona.so` 0x5779a0, 8 bytes): **Established.**
  Stub that returns 0, meaning no backing-store area was cleared. Its address is stored at 0x5866a4 in the module's data.

### Machine-independent layer (`mi*`)

The sample server's device-independent drawing, region and window-tree code, compiled into the module. The names are the standard routines; each entry states what this build's code does.

- `miRegionInit` (`kona.so` 0x568fb0, 232 bytes): **Established.**
  Initialises a region record: copies the four halfword extents from the box argument (or from `miEmptyBox` when none is given), and either points the data field at +0x8 at `miEmptyData` or allocates a rectangle array with `Xalloc` for a count above one.
- `miRegionUninit` (`kona.so` 0x4d3da0, 72 bytes): **Established.**
  Releases a region's rectangle storage: when the data pointer at +0x8 is not the shared empty one and has a nonzero size, it calls `Xfree` on it.
- `miRegionEmpty` (`kona.so` 0x4fcec0, 104 bytes): **Established.**
  Resets a region to empty: frees the rectangle data with `Xfree` unless it is the shared block, then stores `miEmptyData` back at +0x8.
- `miRegionCopy` (`kona.so` 0x577820, 384 bytes): **Established.**
  Copies one region into another: the four extents, then the rectangle array, resizing the destination with `Xalloc` or `Xfree` and moving the boxes with `memmove`; the global `Must_have_memory` is set around the allocation.
- `miRegionNotEmpty` (`kona.so` 0x567a90, 40 bytes): **Established.**
  Leaf test that reports whether a region has any area, by comparing its extents halfwords at +0x0 to +0x6.
- `miPointInRegion` (`kona.so` 0x4f84d0, 356 bytes): **Established.**
  Leaf that tests whether a point lies in a region: it rejects on the extents first and then walks the box list at the data pointer (+0x8), a binary-style scan over the boxes.
- `miRectAlloc` (`kona.so` 0x4ef1b0, 316 bytes): **Established.**
  Grows a region's rectangle array to hold more boxes: grows by 250 boxes once there are over 500, otherwise doubles, using `Xrealloc` or `Xalloc`, with `Must_have_memory` set during the call.
- `miRectsToRegion` (`kona.so` 0x5399c0, 848 bytes): **Established.**
  Builds a region from a rectangle list: creates the region with `miRegionCreate`, allocates its box array with `Xalloc`, normalises it with `miRegionValidate`, and sets extents with `miSetExtents` at two sites.
- `miInverse` (`kona.so` 0x51f810, 356 bytes): **Established.**
  Computes the inverse of a region inside a bounding box: it subtracts the region from the box, frees the temporary with `Xfree` and recomputes the extents using `miSetExtents`.
- `miInitSpanGroup` (`kona.so` 0x4d9a00, 32 bytes): **Established.**
  Starts a span group for the wide-line code, storing the empty bounding extents (-32767 low, 32767 high); no calls. Called from `miSetupSpanData`.
- `miFreeSpanGroup` (`kona.so` 0x5352d0, 60 bytes): **Established.**
  Frees a span group's span array with `Xfree`. Called from `miCleanupSpanData`. Called from `miCleanupSpanData`.
- `miAppendSpans` (`kona.so` 0x5353c0, 368 bytes): **Established.**
  Appends one span group to another, calling `miSubtractSpans` to drop overlap and `Xrealloc` to grow the array.
- `miWideLine` (`kona.so` 0x55d7a0, 2180 bytes): **Established.**
  PolyLine for lines wider than one pixel. It builds spans with `miSetupSpanData`, calls the local routines at 0x4a7050 (two sites), 0x544200 (two sites) and 0x4866b0 (four sites) to generate and fill them, and releases them with `miCleanupSpanData`.
- `miWideDash` (`kona.so` 0x561160, 2392 bytes): **Established.**
  The dashed form of the wide-line routine: dash steps via `miStepDash`, span building with `miSetupSpanData` and the local routines at 0x544200 (two sites) and 0x4866b0 (four sites), projecting caps with `miLineProjectingCap`, a one-pixel fallback in `miZeroDashLine` and clean-up with `miCleanupSpanData`.
- `miZeroDashLine` (`kona.so` 0x4f1840, 72 bytes): **Established.**
  Thin wrapper for dashed zero-width lines: forwards its arguments with a mode of 1 to `miWideDash`.
- `miPolyBuildPoly` (`kona.so` 0x4f0c10, 2216 bytes): **Established.**
  Builds the outline of a wide-line segment join into an edge list, calling `miPolyBuildEdge` at two sites.
- `miZeroArcPts` (`kona.so` 0x4e7fa0, 1760 bytes): **Established.**
  Generates the integer points of a zero-width arc by calling `miZeroArcSetup` once, then stepping its error terms into a point list.
- `miZeroArcSetup` (`kona.so` 0x4f6040, 5308 bytes): **Established.**
  Computes the starting state of the zero-width arc stepper from the arc's angles and axes. Its code calls `sin` four times and `cos` twice, and compares angles with 5760, 11520, 17280 and 23040 (the quarter-circle boundaries in 64ths of a degree).
- `miZeroPolyArc` (`kona.so` 0x578bc0, 1820 bytes): **Established.**
  PolyArc for zero-width arcs when the fast point stepper does not apply. It saves and changes the GC with `DoChangeGC` (two sites) and `ValidateGC` (two sites), steps the dash with `miStepDash` and calls the local routine at 0x492140; the address of `miPolyArc` is held for the case where it re-dispatches.
- `miFillArcSliceSetup` (`kona.so` 0x56a800, 2368 bytes): **Established.**
  Computes the edge data for a pie slice or chord fill: calls `ceil` at two sites and the local routine at 0x4f2160 at two sites, uses `__dcis` at two sites for double-precision compares, and compares angles with 5760 and 11520.
- `miEllipseAngleToSlope` (`kona.so` 0x54a810, 636 bytes): **Established.**
  Converts an arc angle in 64ths of a degree to the slope of the corresponding ellipse point: it uses `floor` and `__dcis` for the compare, and handles the quarter-turn angles 5760, 11520 and 17280 as special cases.
- `miFillWideEllipse` (`kona.so` 0x51d160, 1124 bytes): **Established.**
  Fills a wide-line ellipse by looping over rows and emitting spans, and frees its temporary span array with `Xfree`.
- `miFillConvexPoly` (`kona.so` 0x5511a0, 1964 bytes): **Established.**
  Fills a convex polygon directly: finds the top and bottom vertices, walks both edges with integer stepping, and emits spans by calling the local routine at 0x56a650 and a pointer. Called from `miFillPolygon`.
- `miInsertEdgeInET` (`kona.so` 0x55e3d0, 452 bytes): **Established.**
  Inserts a polygon edge into the edge table bucket for its starting scanline, allocating a bucket record of 304 bytes with `Xalloc` when it needs one.
- `miCreateETandAET` (`kona.so` 0x573de0, 660 bytes): **Established.**
  Builds the edge table and the empty active-edge list for a polygon fill, calling `miInsertEdgeInET` for every edge and freeing the storage with `miFreeStorage` on failure.
- `miPolyFillRect` (`kona.so` 0x525570, 2344 bytes): **Inferred.**
  PolyFillRect on top of the GC's FillSpans: clips each rectangle to the composite clip and emits one span row per scanline by an indirect call. Called from `cfb16PolyFillRect`, `cfb16ValidateGC`, `cfb32PolyFillRect`.
- `miPolyRectangle` (`kona.so` 0x4f5540, 992 bytes): **Inferred.**
  PolyRectangle built from line segments: compares coordinates against 32767 and -32768 and issues the four edges of each rectangle through the GC's line routine (three sites). Its address is stored at 0x586860 in the module's data and in twenty-five operation vectors in all, and it calls through the vector three times.
- `miPolySegment` (`kona.so` 0x5379e0, 152 bytes): **Established.**
  PolySegment built on the GC's PolyLine routine: it calls it once per segment with two points. Called from `cfb16ValidateGC`, `cfb32ValidateGC`, `cfbValidateGC`.
- `miOpqStipDrawable` (`kona.so` 0x554fc0, 1368 bytes): **Established.**
  Draws an opaque stipple into a drawable by the two-pass method: `GetScratchGC` for a work context, `dixChangeGC` (four sites) and `ValidateGC` (five sites) to switch between background and foreground fills, `miClearDrawable` for the background and `FreeScratchGC` when done.
- `miImageText8` (`kona.so` 0x4d8b60, 136 bytes): **Established.**
  ImageText for 8-bit fonts: calls `GetGlyphs` to look up the glyphs, then calls the GC's ImageGlyphBlt through the operation table.
- `miPolyText16` (`kona.so` 0x4ffaa0, 556 bytes): **Established.**
  PolyText for 16-bit fonts: calls `GetGlyphs` twice and dispatches on the item type (font change versus text) to the GC's PolyGlyphBlt.
- `miImageGlyphBlt` (`kona.so` 0x4ef530, 456 bytes): **Established.**
  Default ImageGlyphBlt on top of other operations: calls `QueryGlyphExtents`, then `DoChangeGC` (three sites) and `ValidateGC` (two sites) to switch fill style, filling the background box and drawing the glyphs.
- `miMarkWindow` (`kona.so` 0x501330, 108 bytes): **Established.**
  Allocates a 24-byte per-window validation record with `XNFalloc` when the window has none.
- `miMarkOverlappedWindows` (`kona.so` 0x4d7980, 564 bytes): **Inferred.**
  Walks the sibling list marking each window that the target overlaps, calling through the screen's mark-window hook (five sites). Called from `miScreenInit`.
- `miMarkUnrealizedWindow` (`kona.so` 0x567330, 124 bytes): **Inferred.**
  Marks a window for revalidation when it becomes unrealised, calling the screen's mark hook three times. Called from `miScreenInit`.
- `miValidateTree` (`kona.so` 0x552880, 1292 bytes): **Inferred.**
  Recomputes the clip lists of a window subtree after a configure or map. It makes calls through the screen's clip-computation hooks (thirty indirect calls in all) and one call to the local routine at 0x48f100, and bumps `globalSerialNumber` for each window it touches.
- `miHandleValidateExposures` (`kona.so` 0x576d00, 364 bytes): **Inferred.**
  After validation, generates exposures for newly uncovered regions through the screen's hooks (six indirect calls) and frees the temporary regions with `Xfree`.
- `miWindowExposures` (`kona.so` 0x526360, 880 bytes): **Established.**
  Computes the exposed region of a window and sends it as Expose events with `miSendExposures`, choosing among several output paths.
- `miMoveWindow` (`kona.so` 0x506440, 696 bytes): **Established.**
  Implements MoveWindow: updates the window size and border with `SetWinSize` and `SetBorderSize`, restacks with `MoveWindowInStack`, moves the children with `ResizeChildrenWinSize` and tells the server with `WindowsRestructured`.
- `miSlideAndSizeWindow` (`kona.so` 0x5335b0, 3044 bytes): **Established.**
  The combined move and resize used by ConfigureWindow. It unmaps affected windows with `UnmapWindow` (six sites), applies gravity with `GravityTranslate` (two sites), restacks with `MoveWindowInStack` and resizes children by `TraverseTree`, ending with `WindowsRestructured`.
- `miChangeBorderWidth` (`kona.so` 0x56b300, 504 bytes): **Established.**
  Sets a window's border width: calls `SetBorderSize` to propagate it and then revalidates through `WindowsRestructured`.
- `miSetShape` (`kona.so` 0x5639f0, 816 bytes): **Established.**
  Applies a changed window shape: updates sizes with `SetWinSize` and `SetBorderSize`, resizes children with `ResizeChildrenWinSize`, checks the pointer with `CheckCursorConfinement` and reports with `WindowsRestructured`.
- `miChangeSaveUnder` (`kona.so` 0x567e00, 208 bytes): **Inferred.**
  Maintains the count of viewable save-under windows: it adjusts `numSaveUndersViewable` and `deltaSaveUndersViewable` and calls the screen's hook.
- `miComputeCompositeClip` (`kona.so` 0x5013a0, 748 bytes): **Established.**
  Recomputes a GC's composite clip from the drawable's clip and the client clip, using `NotClippedByChildren` when the GC subwindow mode is clip-by-children, and storing the result in the GC's private record found through `miGCPrivateIndex`.
- `miChangeClip` (`kona.so` 0x4f4260, 296 bytes): **Established.**
  Replaces a GC's client clip: it frees the old clip with `Xfree` and installs the new rectangle list or region.
- `miCopyClip` (`kona.so` 0x565bd0, 244 bytes): **Inferred.**
  Copies a GC's client clip into another by calling the screen's region copy hook (four sites). Its address is stored at 0x589dd8 in the module's data, the copy-clip slot of the context function table at 0x589dc0.
- `miDestroyClip` (`kona.so` 0x565b30, 152 bytes): **Inferred.**
  Releases a GC's client clip, calling the screen's region destroy hook for a region clip. Its address is stored at 0x589dd4 in the module's data, the destroy-clip slot of the context function table at 0x589dc0.
- `miDestroyGC` (`kona.so` 0x51d700, 160 bytes): **Inferred.**
  Destroys a GC: frees its client clip and composite clip through the screen hooks, and calls `miDestroyGCOps` twice.
- `miCopyGC` (`kona.so` 0x52f210, 8 bytes): **Inferred.**
  Empty hook: returns at once without touching either context. Its address is stored at 0x589dc8 in the module's data, the copy slot of the context function table that begins at 0x589dc0.
- `miGetImage` (`kona.so` 0x51e860, 768 bytes): **Established.**
  Default GetImage built on CopyArea: it gets a scratch GC with `GetScratchGC`, adjusts it with `DoChangeGC`, validates with `ValidateGC`, copies into a temporary pixmap and frees the scratch GC with `FreeScratchGC`. It also calls `ffs` and the local routine at 0x4a95d0.
- `miCopyPlane` (`kona.so` 0x5750b0, 916 bytes): **Established.**
  Default CopyPlane: clips source and destination, draws with `miOpqStipDrawable`, handles exposures with `miHandleExposures`, and calls `ffs` to find the plane bit and the local routine at 0x4a95d0 before reading the source.
- `miCreateScreenResources` (`kona.so` 0x4f2f70, 280 bytes): **Inferred.**
  Creates the root pixmap through the screen hook, stores it in the screen record, and releases a temporary block with `Xfree` on two paths.
- `miCloseScreen` (`kona.so` 0x4e0f30, 52 bytes): **Inferred.**
  Closes a screen: it calls the hook at +0xf0 of the screen record with the root pixmap pointer from screen +0x74, which releases the root pixmap, and returns its result.
- `miGetLayerWindow` (`kona.so` 0x547240, 8 bytes): **Established.**
  Leaf that returns the word stored at +0x24 of the window record; the module has no layered windows, so the lookup is a field read with no calls.
- `miModifyPixmapHeader` (`kona.so` 0x547f10, 124 bytes): **Established.**
  Updates a pixmap's width, height, depth, bits per pixel and data pointer fields in place and bumps `globalSerialNumber`; no calls.
- `miInsertionSort` (`kona.so` 0x563e20, 164 bytes): **Established.**
  Leaf insertion sort used by the polygon edge code: it re-links the active-edge list (links at +0x1c and +0x20 of each edge record) so the records are ordered by the key at +0x4, and returns 1 if it moved any.

### Monochrome frame-buffer layer (`mfb*`)

One-bit-deep drawing for bitmaps and monochrome windows, used when a drawable is one bit deep. Edge words come from the shared tables `starttab`, `endtab` and `partmasks`. None of these functions sends a pipe token or an ioctl.

- `mfbCreateGC` (`kona.so` 0x4cf990, 184 bytes): **Established.**
  Fills in a new one-bit graphics context: clears gc +0x38, forces the fill-related bits of the flags word at +0x10, installs the module's one-bit operation vector at gc +0x44 and the matching ops at +0x48, then calls `mfbReduceRop` with the context's raster op and foreground to fill its private record, whose area-fill pointer is set to `mfbSolidWhiteArea`.
- `mfbReduceRop` (`kona.so` 0x4fdad0, 404 bytes): **Established.**
  Collapses a raster op and a one-bit source pixel into one of the four simple results (clear, set, invert or leave alone, returned as 0, 15, 10 and 5): a jump table over the sixteen raster ops, with one table for source bit set and one for clear. A leaf. Called from `cfbCopyPlane`, `mfbCopyPlane`, `mfbCreateGC`.
- `mfbSegmentSD` (`kona.so` 0x4d1c60, 2500 bytes): **Established.**
  Dashed PolySegment for one-bit drawables. It reduces the raster op with `mfbReduceRop`, advances the dash with `miStepDash`, draws each dash through `mfbBresD` (two sites), and clips with `miZeroClipLine`.
- `mfbPolyGlyphBltWhite` (`kona.so` 0x4d8cd0, 2264 bytes): **Established.**
  PolyGlyphBlt on a one-bit drawable that sets pixels where the glyph is set. It calls `QueryGlyphExtents` to size the string and writes glyph rows using `starttab` and `partmasks` for the ragged sides.
- `mfbPolyGlyphBltBlack` (`kona.so` 0x4f7880, 3144 bytes): **Established.**
  PolyGlyphBlt on a one-bit drawable that clears pixels where the glyph is set; a `QueryGlyphExtents` call, and the same table use as the white variant.
- `mfbPolyGlyphBltInvert` (`kona.so` 0x562a00, 2264 bytes): **Established.**
  PolyGlyphBlt on a one-bit drawable that inverts pixels under the glyph; two `QueryGlyphExtents` calls, size equal to the white variant.
- `mfbImageGlyphBltBlack` (`kona.so` 0x5246a0, 3248 bytes): **Established.**
  ImageGlyphBlt with black foreground on one-bit drawables: it measures with `QueryGlyphExtents`, paints the background box with `mfbPolyFillRect` and then writes glyphs through `mfbSolidBlackArea` or `mfbSolidWhiteArea`.
- `mfbImageGlyphBltWhite` (`kona.so` 0x531530, 2408 bytes): **Established.**
  ImageGlyphBlt with white foreground on one-bit drawables: `QueryGlyphExtents`, a background fill with `mfbPolyFillRect`, and glyph rows via `mfbSolidWhiteArea`.
- `mfbTEGlyphBltBlack` (`kona.so` 0x5267b0, 2256 bytes): **Inferred.**
  Terminal-emulator-font text on a one-bit drawable in black: glyphs have a fixed width, so each row is assembled with shifts and masks from `starttab` and `partmasks` and stored word by word. It makes one indirect call.
- `mfbUnnaturalStippleFS` (`kona.so` 0x4d9ff0, 2500 bytes): **Established.**
  FillSpans for a one-bit stipple whose width is not 32: clips with `miClipSpans` after `miFindMaxBand` and builds each row from the rotated stipple using `starttab` and `partmasks`.
- `mfbWhiteSolidFS` (`kona.so` 0x512460, 932 bytes): **Established.**
  FillSpans with solid white on a one-bit drawable: `miFindMaxBand` and `miClipSpans`, then sets bits using `starttab`, `endtab` and `partmasks`.
- `mfbWhiteStippleFS` (`kona.so` 0x519120, 1252 bytes): **Established.**
  FillSpans with a white stipple on one-bit drawables; clipped by `miClipSpans` and merged into the destination word by word.
- `mfbBlackStippleFS` (`kona.so` 0x553830, 1284 bytes): **Established.**
  FillSpans with a black stipple on one-bit drawables; same flow as the white one, clearing instead of setting. Called from `mfbValidateGC`.
- `mfbInvertStippleFS` (`kona.so` 0x578270, 1252 bytes): **Established.**
  FillSpans with an inverting stipple on one-bit drawables; the same flow as the white stipple, toggling destination bits. Called from `mfbValidateGC`.
- `mfbSolidBlackArea` (`kona.so` 0x4e9280, 2320 bytes): **Established.**
  Clears a list of boxes in a one-bit frame buffer, a leaf: whole words in the interior and masks from `starttab` and `endtab` for the edges.
- `mfbStippleWhiteArea` (`kona.so` 0x520330, 3524 bytes): **Established.**
  Sets bits through a stipple over a list of boxes; a leaf that rotates the stipple row for each scanline and merges it with the edge masks. Called from `mfbValidateGC`.
- `mfbStippleBlackArea` (`kona.so` 0x53c450, 3548 bytes): **Established.**
  Clears bits through a stipple over a list of boxes; a leaf with the same loop as the white one. Called from `mfbValidateGC`.
- `mfbStippleInvertArea` (`kona.so` 0x56b500, 3524 bytes): **Established.**
  Inverts bits through a stipple over a list of boxes; a leaf with the same loop, toggling destination bits. Called from `mfbValidateGC`.
- `mfbFillPolyBlack` (`kona.so` 0x4ee440, 1964 bytes): **Established.**
  FillPolygon with black on one-bit drawables: it scans a convex outline directly when the shape allows and otherwise passes it to `miFillPolygon` (two sites).
- `mfbAllocatePrivates` (`kona.so` 0x4f4e60, 280 bytes): **Established.**
  Reserves the one-bit layer's per-window and per-GC private slots once per server generation, calling `AllocateWindowPrivateIndex`, `AllocateGCPrivateIndex`, `AllocateWindowPrivate`, `AllocateGCPrivate` and `miRegisterGCPrivateIndex`.
- `mfbPixmapToRegion` (`kona.so` 0x509220, 2944 bytes): **Established.**
  Converts a one-bit pixmap into a region of rectangles, one per run of set bits, reallocating the box list with `miRectAlloc` (six sites) and reporting an oversized transition list with `ErrorF`.
- `mfbZeroPolyArcSS` (`kona.so` 0x50a1f0, 476 bytes): **Inferred.**
  Zero-width arc entry for one-bit drawables: skipped when the GC's plane word at +0x14 is zero, otherwise the same walk as the colour versions, sending arcs over 800 pixels to `miZeroPolyArc`, clipped or out-of-range ones to `miPolyArc` and wholly visible ones to the one-bit routine.
- `mfbXRotatePixmap` (`kona.so` 0x513bd0, 348 bytes): **Established.**
  Rotates a one-bit pixmap horizontally; it reports an unexpected width with `ErrorF` and uses the table `endtab` for the row mask.
- `mfbYRotatePixmap` (`kona.so` 0x55e270, 236 bytes): **Established.**
  Rotates a one-bit pixmap vertically by moving rows with `memmove`, three sites.
- `mfbCopyPixmap` (`kona.so` 0x522550, 148 bytes): **Inferred.**
  Duplicates a one-bit pixmap: it calls the screen's pixmap creation hook, then copies the data with `memmove`.
- `mfbPadPixmap` (`kona.so` 0x525f20, 536 bytes): **Established.**
  Replicates a one-bit tile across the 32 bits of a row when the width divides 32, using `endtab` for the row masks; a leaf.
- `mfbDestroyPixmap` (`kona.so` 0x577760, 88 bytes): **Established.**
  Drops a reference on a one-bit pixmap and, when none remain, releases it with `Xfree`.
- `mfbCopyArea` (`kona.so` 0x51a6a0, 2136 bytes): **Inferred.**
  CopyArea for one-bit drawables. It selects `mfbDoBitbltCopy`, `mfbDoBitbltXor`, `mfbDoBitbltOr`, `mfbDoBitbltCopyInverted` or `mfbDoBitbltGeneral` by raster op, makes its calls through the chosen routine (fifteen indirect calls in all), calls `NotClippedByChildren`, and ends with `miHandleExposures`.
- `mfbDoBitblt` (`kona.so` 0x531ea0, 164 bytes): **Established.**
  Chooser used by the one-bit copy: it compares the raster op with 3, 6, 7 and 12 and calls `mfbDoBitbltCopy` or `mfbDoBitbltGeneral` accordingly.
- `mfbSetScanline` (`kona.so` 0x54fd20, 1664 bytes): **Established.**
  Writes one row of source bits into a one-bit destination scanline, shifting to align and masking the ends with `starttab` and `endtab`; a leaf.
- `mfbPolyFillRect` (`kona.so` 0x551e00, 2676 bytes): **Inferred.**
  PolyFillRect on one-bit drawables: it clips each rectangle to the composite clip and calls through the GC's area-fill pointer (two sites) with the box list. Called from `mfbImageGlyphBltBlack`, `mfbImageGlyphBltWhite`, `mfbValidateGC`.
- `mfbPushPixels` (`kona.so` 0x565cd0, 1412 bytes): **Inferred.**
  PushPixels on a one-bit drawable: it makes seven indirect calls, walking the mask in 128-bit-wide groups and calling the stippled area fill with `endtab` masks for the edges.
- `micomputeWAET` (`kona.so` 0x4ffcd0, 124 bytes): **Inferred.**
  Leaf of the polygon scan converter; the name and the walk over an edge list identify it as the pass that sets the winding count of each active edge for the even-odd or non-zero fill rule. It calls nothing, and works only on the edge records its argument points at. Called from `miFillGeneralPoly`.
- `miloadAET` (`kona.so` 0x549620, 172 bytes): **Established.**
  Leaf of the polygon scan converter; the name and the list splice mark it as the step that merges the edges starting on the current scanline into the active-edge list, ordered by x. No calls. Called from `miFillGeneralPoly`.

### Colour frame-buffer lines, segments, points and arcs (`cfb*`, `cfb16*`, `cfb32*`)

The 8-bit, 16-bit and 32-bit host drawing paths the module falls back to when a request is not sent to the pipe. Offsets below are those the code uses: the drawable's screen pointer is at +0x10, a screen's private-data array at +0x1b4 (the root pixmap's data pointer at +0x74), and a graphics context's private-data array at +0x4c. None of these functions sends a pipe token or an ioctl; they write pixels in host memory.

- `cfbLineSS` (`kona.so` 0x4cea70, 3496 bytes): **Inferred.**
  Solid single-width polyline for 8-bit drawables. Read from the call pattern: horizontal runs go to `cfbHorzS`,
  vertical runs to `cfbVertS`, other slopes to `cfbBresS`, and a line that leaves the clip box is trimmed by `miZeroClipLine`.
- `cfbSegmentSS` (`kona.so` 0x4fdc70, 3036 bytes): **Inferred.**
  The PolySegment sibling of the polyline above, for 8-bit solid segments. It tests each endpoint pair
  and hands horizontals to `cfbHorzS`, verticals to `cfbVertS`, diagonals to `cfbBresS`, and clipped segments to `miZeroClipLine`.
- `cfbSegmentSD` (`kona.so` 0x500070, 2560 bytes): **Inferred.**
  Dashed PolySegment for 8-bit drawables. It reduces the raster op with `cfbReduceRasterOp` (three times, once per case),
  steps the pattern with `miStepDash`, draws each dash by calling `cfbBresD`, and trims with `miZeroClipLine`.
- `cfbVertS` (`kona.so` 0x4e0f70, 700 bytes): **Established.**
  Leaf that draws a vertical run in an 8-bit frame buffer. Its first argument is the raster-op code and the code branches on 3 and 6;
  the body ands each destination byte with one mask and xors in a second before storing it back, advancing by the row stride. Called from `cfbLineSS`, `cfbSegmentSS`.
- `cfbHorzS` (`kona.so` 0x53f5a0, 1776 bytes): **Established.**
  Leaf that draws a horizontal run of 8-bit pixels as whole words plus partial ends. The end masks come from
  the table `cfbstarttab` (offset by the low two bits of the start) and `cfbendpartial`; raster-op codes 3 and 6 branch to separate loops.
- `cfbBresS` (`kona.so` 0x509da0, 816 bytes): **Inferred.**
  Bresenham stepper for solid 8-bit lines. Leaf, no callees; it branches on the raster-op code (3 or 6), advances an error term and moves the byte pointer a row or a pixel per step. Called from `cfbLineSS`, `cfbSegmentSS`.
- `cfbBresD` (`kona.so` 0x510f20, 1412 bytes): **Established.**
  Bresenham stepper for dashed 8-bit lines. It reads the dash state through two pointer arguments (a byte offset through the
  second, a remaining length through the first, at +0x0), runs the line only up to the dash edge and returns so the caller can flip between foreground and background.
- `cfb16BresS` (`kona.so` 0x5773e0, 884 bytes): **Inferred.**
  Solid Bresenham stepper for 16-bit pixels: a leaf of 884 bytes with the same raster-op branching as the 8-bit stepper, moving halfword pointers. Called from `cfb16LineSS`, `cfb16SegmentSS`.
- `cfb32BresS` (`kona.so` 0x50a3d0, 868 bytes): **Inferred.**
  Solid Bresenham stepper for 32-bit pixels; leaf code that advances the destination in whole words. Called from `cfb32LineSS`, `cfb32SegmentSS`.
- `cfb32BresD` (`kona.so` 0x5189a0, 1428 bytes): **Inferred.**
  Dashed Bresenham stepper for 32-bit pixels. It is built like the 8-bit dashed stepper, keeping the dash position and length in its pointer arguments, and has no callees. Called from `cfb32LineSD`, `cfb32SegmentSD`.
- `cfb32HorzS` (`kona.so` 0x5503a0, 1308 bytes): **Inferred.**
  Horizontal run for 32-bit pixels, a leaf. A pixel is a whole word, so there are no start and end mask tables and the loop stores whole words. Called from `cfb32LineSS`, `cfb32SegmentSS`.
- `cfb8LineSS1Rect` (`kona.so` 0x535e60, 728 bytes): **Inferred.**
  Chooser for 8-bit polylines inside one clip rectangle. It tests the raster op and calls the copy, previous-point copy,
  exclusive-or or general routine through a pointer; the clipped variants `cfb8ClippedLineCopy` and `cfb8ClippedLineXor` stand behind it.
- `cfb8LineSS1RectCopy` (`kona.so` 0x51efe0, 2088 bytes): **Established.**
  Copy-mode 8-bit polyline in one clip rectangle. It reads the zero-line screen index, takes the root pixmap pointer from screen +0x74 for a window and
  the clip rectangle from the composite clip in the GC private data, and steps every segment inline with no callees.
- `cfb8LineSS1RectPreviousCopy` (`kona.so` 0x5483f0, 1660 bytes): **Inferred.**
  The copy-mode 8-bit polyline for the case where each point is relative to the one before; no callees, it adds each offset to the running point before stepping. Called from `cfb8LineSS1Rect`.
- `cfb8LineSS1RectGeneral` (`kona.so` 0x54c660, 2376 bytes): **Inferred.**
  The 8-bit polyline for any raster op: leaf code applying the and/xor pair from the validated GC to every byte it touches. Called from `cfb8LineSS1Rect`.
- `cfb8SegmentSS1Rect` (`kona.so` 0x540980, 320 bytes): **Established.**
  Chooser for 8-bit PolySegment in one clip rectangle. It tests the GC's raster op and calls the copy, xor or general routine via a pointer,
  with `cfb8ClippedLineGeneral` as the fallback for clipped segments.
- `cfb8SegmentSS1RectCopy` (`kona.so` 0x5042b0, 2236 bytes): **Inferred.**
  Copy-mode 8-bit PolySegment in one clip rectangle. It uses the tables `cfbstarttab` and `cfbendtab` for edge words, steps inline and calls nothing.
- `cfb8SegmentSS1RectXor` (`kona.so` 0x53adf0, 2192 bytes): **Inferred.**
  Exclusive-or 8-bit PolySegment in one clip rectangle; same layout as the copy routine but each store merges with an xor value. No callees. Called from `cfb8SegmentSS1Rect`.
- `cfb8ClippedLineXor` (`kona.so` 0x506700, 2712 bytes): **Established.**
  Exclusive-or line drawer for 8-bit segments that may leave the clip box. It calls `miZeroClipLine` at two sites, once for the segment and once for its end point.
- `cfb16LineSS1RectXor` (`kona.so` 0x539d10, 2372 bytes): **Inferred.**
  Exclusive-or polyline for 16-bit pixels in one clip rectangle. It finds the 16-bit private data through screen +0x1b4 and steps inline; there are no callees.
- `cfb16LineSS1RectGeneral` (`kona.so` 0x5437d0, 2460 bytes): **Inferred.**
  Polyline for 16-bit pixels with any raster op in one clip rectangle; leaf, with the GC's and/xor pair applied per pixel. Called from `cfb16LineSS1Rect`.
- `cfb16ClippedLineXor` (`kona.so` 0x549780, 2788 bytes): **Established.**
  Exclusive-or line for 16-bit pixels that may cross the clip box; it calls `miZeroClipLine` at two sites to clip the segment and its closing point.
- `cfb32LineSS1Rect` (`kona.so` 0x567050, 728 bytes): **Inferred.**
  Chooser for 32-bit polylines in one clip rectangle; it calls the copy, previous-point copy, xor or general version through a pointer and falls back to `cfb32ClippedLineGeneral`.
- `cfb32LineSS1RectPreviousCopy` (`kona.so` 0x4e87c0, 1728 bytes): **Inferred.**
  Relative-coordinate copy-mode polyline for 32-bit pixels inside one clip rectangle. A leaf that keeps the running point in registers. Called from `cfb32LineSS1Rect`.
- `cfb32LineSS1RectXor` (`kona.so` 0x560810, 2372 bytes): **Inferred.**
  Exclusive-or 32-bit polyline in one clip rectangle. Its size matches the 16-bit routine; the stores are word-wide. Called from `cfb32LineSS1Rect`.
- `cfb32LineSS1RectGeneral` (`kona.so` 0x54e210, 2460 bytes): **Inferred.**
  General-raster-op 32-bit polyline in one clip rectangle, taking the and/xor pair the GC validation left in its private record. Called from `cfb32LineSS1Rect`.
- `cfb32SegmentSS1Rect` (`kona.so` 0x4d4a00, 320 bytes): **Inferred.**
  Chooser for 32-bit PolySegment in one clip rectangle. It calls the copy, xor or general routine through a pointer and falls back to `cfb32ClippedLineGeneral`.
- `cfb32SegmentSS1RectXor` (`kona.so` 0x4f8700, 1764 bytes): **Inferred.**
  Exclusive-or PolySegment on 32-bit pixels in one clip rectangle. It reads the screen private array at +0x1b4, stores inline and has no callees.
- `cfb32ClippedLineXor` (`kona.so` 0x527cc0, 2788 bytes): **Established.**
  Exclusive-or 32-bit line for segments that may leave the clip box. It calls `miZeroClipLine` at two sites, then steps the clipped line.
- `cfbPolyPoint` (`kona.so` 0x51b380, 1244 bytes): **Established.**
  PolyPoint for 8-bit drawables: for each point inside the composite clip it stores the pixel under the raster op, and it calls `ffs` to locate set bits in a mask word while it merges.
- `cfb16PolyPoint` (`kona.so` 0x514db0, 1312 bytes): **Established.**
  PolyPoint for 16-bit drawables; the same loop as the 8-bit one, plotting halfword pixels, with `ffs` on a mask word.
- `cfb32PolyPoint` (`kona.so` 0x508140, 1312 bytes): **Established.**
  PolyPoint for 32-bit drawables, structured like the 16-bit routine with word stores; it calls `ffs` on a mask word as well.
- `cfbZeroPolyArcSS8General` (`kona.so` 0x4cfc90, 468 bytes): **Inferred.**
  Zero-width arc entry for 8-bit pixels and general raster ops. It walks the arc list in 12-byte records: an arc wider or taller than 800 pixels goes alone to `miZeroPolyArc`; for the others it builds the bounding box and, if the box passes 32767 or the screen's rectangle-test hook at +0x17c does not report it wholly inside the clip, hands the arc to `miPolyArc`; a box wholly inside goes to the module's own fast arc routine (reached through a pointer in a saved register).
- `cfbZeroPolyArcSS8Copy` (`kona.so` 0x54cfb0, 468 bytes): **Inferred.**
  The same arc walk as `cfbZeroPolyArcSS8General`, specialised for 8-bit copy mode: arcs over 800 pixels go to `miZeroPolyArc`, a box past 32767 or not wholly inside the clip goes to `miPolyArc`, and a box wholly inside takes the copy-mode fast routine.
- `cfb16ZeroPolyArcSSCopy` (`kona.so` 0x5333d0, 468 bytes): **Inferred.**
  Zero-width arc entry for 16-bit copy mode with the same walk of 12-byte arc records: over 800 pixels to `miZeroPolyArc`, an out-of-range or partly clipped box to `miPolyArc`, a wholly visible box to the 16-bit copy fast routine.
- `cfb16ZeroPolyArcSSGeneral` (`kona.so` 0x540c50, 468 bytes): **Inferred.**
  Zero-width arc entry for 16-bit pixels under any raster op: the same 800-pixel size test, the 32767 bound and the clip test at screen +0x17c, with `miZeroPolyArc` for big arcs and `miPolyArc` for arcs that cross the clip.
- `cfb32ZeroPolyArcSSGeneral` (`kona.so` 0x51d890, 468 bytes): **Inferred.**
  Zero-width arc entry for 32-bit pixels under any raster op: the arc walk of the 16-bit entry, sending big arcs to `miZeroPolyArc`, clipped or out-of-range ones to `miPolyArc` and wholly visible ones to the 32-bit routine.
- `cfb32PolyFillArcSolidCopy` (`kona.so` 0x549350, 544 bytes): **Inferred.**
  Solid-fill arc entry for 32-bit copy mode. It walks 12-byte arc records: empty arcs, arcs over 800 pixels and boxes past 32767 or not wholly inside the clip (tested with the screen hook at +0x17c) go one at a time to `miPolyFillArc`; the rest are filled by the module's own routines, split on whether the end angle lies within +-23040 (a half turn in 64ths of a degree).
- `cfbFillPoly1RectGeneral` (`kona.so` 0x4cdd80, 3304 bytes): **Established.**
  Polygon fill for 8-bit pixels in one clip rectangle under any raster op. It indexes the GC private array at gc +0x4c, tests the coordinate range
  against 32767, and calls `miFillPolygon` at two sites for shapes it does not scan inline.
- `cfbFillPoly1RectCopy` (`kona.so` 0x527230, 2580 bytes): **Established.**
  Polygon fill for 8-bit pixels in one clip rectangle in copy mode. It uses `miFillPolygon` at two call sites for shapes that need the general scan converter.
- `cfb32FillPoly1RectCopy` (`kona.so` 0x4ea0b0, 2392 bytes): **Established.**
  Copy-mode polygon fill for 32-bit pixels in one clip rectangle; it consults the screen private array at +0x1b4 and falls back to `miFillPolygon` at two sites.

### Colour frame-buffer rectangle, span, tile and stipple fills (`cfb*`, `cfb16*`, `cfb32*`)

- `cfbPolyFillRect` (`kona.so` 0x51c800, 2400 bytes): **Inferred.**
  PolyFillRect for 8-bit drawables. It looks at the GC's fill style and rop and calls one of the 8-bit routines named in its table
  (`cfbFillRectSolidGeneral`, `cfbFillRectSolidCopy`, `cfbFillRectTileOdd`, the transparent and unnatural stipple fills) through a pointer, calling `miPolyFillRect` for the cases it does not handle.
- `cfb16PolyFillRect` (`kona.so` 0x4f3190, 2280 bytes): **Established.**
  PolyFillRect for 16-bit drawables, choosing among `cfb16FillRectSolidGeneral`, `cfb16FillRectSolidCopy`, `cfb16FillRectSolidXor`, and the tile forms
  by fill style, with `miPolyFillRect` as the fallback.
- `cfb32PolyFillRect` (`kona.so` 0x4e76b0, 2276 bytes): **Established.**
  PolyFillRect for 32-bit drawables. Dispatch is by fill style to `cfb32FillRectSolidGeneral`, `cfb32FillRectSolidCopy`, `cfb32FillRectSolidXor`,
  `cfb32FillRectTile32General` or `cfb32FillRectTileOdd`; `miPolyFillRect` handles anything else.
- `cfbFillRectSolidGeneral` (`kona.so` 0x55f4b0, 2080 bytes): **Inferred.**
  Solid rectangle fill for 8-bit pixels under any raster op. A leaf reading the GC private array at +0x4c; edge words use the tables
  `cfbstartpartial` and `cfbendtab`, and every store merges with an and/xor pair.
- `cfbFillRectSolidXor` (`kona.so` 0x564e00, 2984 bytes): **Inferred.**
  Solid rectangle fill for 8-bit pixels that xors the foreground into the frame buffer; a leaf using the partial-word tables for ragged edges and unrolled whole-word stores in between. Called from `cfbPolyFillRect`.
- `cfb16FillRectSolidGeneral` (`kona.so` 0x4e6660, 1900 bytes): **Inferred.**
  Solid rectangle fill for 16-bit pixels, any raster op. Leaf; reads the screen private data at +0x1b4 and edge masks from `cfb16startpartial` and `cfb16endpartial`.
- `cfb32FillRectSolidCopy` (`kona.so` 0x5132a0, 764 bytes): **Established.**
  Solid copy-mode rectangle fill for 32-bit pixels. The screen private record supplies the frame buffer base and stride (at +0x1c and +0x20) and
  the loop stores one word per pixel, with no edge masks needed.
- `cfb32FillRectSolidXor` (`kona.so` 0x554bb0, 1032 bytes): **Inferred.**
  Exclusive-or solid rectangle fill for 32-bit pixels; a leaf that xors each destination word with the foreground. Called from `cfb32PolyFillRect`.
- `cfb32FillRectSolidGeneral` (`kona.so` 0x556db0, 744 bytes): **Inferred.**
  General-raster-op solid fill for 32-bit pixels, a leaf using the and/xor pair from the GC private record to combine each word. Called from `cfb32PolyFillRect`.
- `cfbFillRectTile32Copy` (`kona.so` 0x563ed0, 1932 bytes): **Inferred.**
  Tiled rectangle fill for 8-bit pixels with a tile exactly 32 pixels wide, copy mode: the tile row is loaded as a word and written across each row with partial-word end handling. Called from `cfbPolyFillRect`.
- `cfb16FillRectTile32Copy` (`kona.so` 0x4e6e40, 1948 bytes): **Inferred.**
  The 16-bit copy-mode version of the 32-pixel-wide tile fill, using the 16-bit start and end tables and the screen private data at +0x1b4.
- `cfbFillRectTile32General` (`kona.so` 0x56c7b0, 4220 bytes): **Inferred.**
  Tiled rectangle fill for 8-bit pixels, 32-pixel tile, any raster op. It merges using the table `mergeRopBits` and handles the ragged edges with the partial-word tables.
- `cfb16FillRectTile32General` (`kona.so` 0x54d190, 4220 bytes): **Inferred.**
  Tiled fill for 16-bit pixels with a 32-pixel tile and any raster op; it also uses `mergeRopBits` and the 16-bit partial tables.
- `cfb32FillRectTile32General` (`kona.so` 0x542030, 1376 bytes): **Inferred.**
  Tiled fill for 32-bit pixels with a tile of 32 pixels in width and any raster op; a leaf using `mergeRopBits`, shorter than its 8- and 16-bit siblings because it needs no edge masks.
- `cfbFillRectTileOdd` (`kona.so` 0x57a350, 224 bytes): **Established.**
  Tile fill for 8-bit pixels with an odd-sized tile: a thin wrapper that tests the raster op against 3 and calls `cfbFillBoxTileOddGeneral` for each box.
- `cfbFillBoxTileOddGeneral` (`kona.so` 0x4f2320, 2896 bytes): **Inferred.**
  Fills a box of 8-bit pixels with a tile whose width is not a divisor of 32, any raster op; it merges through `mergeRopBits` and steps through the tile one row at a time with ragged-edge masks.
- `cfbFillBoxTileOddCopy` (`kona.so` 0x5447f0, 2792 bytes): **Inferred.**
  Odd-width tile fill of a box in 8-bit pixels, copy mode: no raster-op merging, tile rows copied with partial first and last words from `cfbendpartial` and `cfbendtab`.
- `cfbFillBoxTile32sCopy` (`kona.so` 0x55fe10, 2460 bytes): **Inferred.**
  Box fill for 8-bit pixels with a tile of width 32, copy mode: leaf, replicates the tile word across the row between masked ends. Called from `cfbFillBoxTileOdd`, `cfbFillRectTileOdd`.
- `cfb16FillBoxTile32sCopy` (`kona.so` 0x5152d0, 2476 bytes): **Inferred.**
  The same box fill for 16-bit pixels: the tile row is held as one word of two pixels and replicated across the box. Called from `cfb16FillBoxTileOdd`, `cfb16FillRectTileOdd`.
- `cfb16FillBoxTile32sGeneral` (`kona.so` 0x55cec0, 2268 bytes): **Inferred.**
  Box fill with a 32-bit-wide tile for 16-bit pixels under any raster op; merges source and destination words with the GC's and/xor masks. Called from `cfb16FillRectTileOdd`.
- `cfb32FillBoxTile32sCopy` (`kona.so` 0x4f1c30, 1328 bytes): **Inferred.**
  Box fill for 32-bit pixels using a tile of one word per row, copy mode. It reads the screen private at +0x1b4 and no edge masks are needed.
- `cfb32FillBoxTile32sGeneral` (`kona.so` 0x53a960, 1160 bytes): **Inferred.**
  Box fill for 32-bit pixels with a one-word tile row, any raster op; the pixel is merged with `mergeRopBits`.
- `cfb32FillBoxTileOdd` (`kona.so` 0x4fda40, 56 bytes): **Established.**
  Tiny wrapper: for the copy and xor-compatible cases it calls `cfb32FillBoxTile32sCopy` for the box, testing the raster op against 3 first.
- `cfb16FillBoxTileOdd` (`kona.so` 0x574280, 92 bytes): **Established.**
  Wrapper that sends a 16-bit box with an odd tile to `cfb16FillBoxTileOddCopy`, or to `cfb16FillBoxTile32sCopy` when the tile width is 32, after testing the raster op against 3.
- `cfb16FillSpanTile32sCopy` (`kona.so` 0x515d90, 2028 bytes): **Inferred.**
  Span fill with a 32-bit-wide tile for 16-bit pixels, copy mode. A leaf taking the tile row for each span's y and writing it with the tables `cfb16starttab` and `cfb16endtab` at the ends.
- `cfb16FillSpanTileOddCopy` (`kona.so` 0x519c50, 2628 bytes): **Inferred.**
  Span fill with an odd-width tile for 16-bit pixels, copy mode; a leaf that tracks the tile column across the span with partial first and last words. Called from `cfb16UnnaturalTileFS`.
- `cfbFillSpanTileOddCopy` (`kona.so` 0x51bdc0, 2612 bytes): **Inferred.**
  Span fill with an odd-width tile for 8-bit pixels, copy mode; the 8-bit counterpart of the 16-bit routine, using `cfbstartpartial` and `cfbendtab` at its edges.
- `cfb32FillSpanTile32sCopy` (`kona.so` 0x529bd0, 1068 bytes): **Inferred.**
  Span fill with a one-word tile row for 32-bit pixels, copy mode; leaf, reading the screen private data at +0x1b4.
- `cfb32FillSpanTileOddCopy` (`kona.so` 0x52a8d0, 1224 bytes): **Inferred.**
  Span fill with an odd-width tile for 32-bit pixels, copy mode, using the end mask table `cfb32endpartial`.
- `cfb32FillSpanTileOddGeneral` (`kona.so` 0x54a270, 1192 bytes): **Inferred.**
  Odd-width tiled span fill for 32-bit pixels under any raster op; merges with `mergeRopBits`.
- `cfbFillSpanTile32sGeneral` (`kona.so` 0x555590, 1864 bytes): **Inferred.**
  Span fill with a 32-pixel tile for 8-bit pixels under any raster op, a leaf merging by `mergeRopBits` and masking ends with the 8-bit tables.
- `cfbTile32FSGeneral` (`kona.so` 0x4cfe80, 1720 bytes): **Established.**
  FillSpans for an 8-bit tiled GC with a 32-pixel tile and any raster op: clips the span list with `miClipSpans` after `miFindMaxBand`, then merges tile words into the span using `mergeRopBits` and the partial-word tables.
- `cfbTile32FSCopy` (`kona.so` 0x4d5140, 1396 bytes): **Established.**
  FillSpans for an 8-bit tiled GC, 32-pixel tile, copy mode. It calls `miFindMaxBand` and `miClipSpans` to clip the spans and copies tile words with `cfbstarttab` and `cfbendtab` edge handling.
- `cfb16UnnaturalTileFS` (`kona.so` 0x4d3280, 480 bytes): **Established.**
  FillSpans for a 16-bit tile that is not 32 pixels wide: after `miFindMaxBand` and `miClipSpans`, it picks `cfb16FillSpanTileOddCopy` or `cfb16FillSpanTile32sCopy` by the rop and tile shape, and the general variants otherwise.
- `cfb32UnnaturalTileFS` (`kona.so` 0x4d89c0, 404 bytes): **Established.**
  FillSpans for a 32-bit tile of odd shape: clips with `miClipSpans`, then routes to `cfb32FillSpanTile32sCopy` or `cfb32FillSpanTile32sGeneral` depending on the raster op.
- `cfb16SolidSpansXor` (`kona.so` 0x4d7340, 1036 bytes): **Established.**
  Solid-fill FillSpans for 16-bit pixels with xor: finds the widest band with `miFindMaxBand`, clips the list with `miClipSpans`, then xors the foreground across each span using the 16-bit start and end tables.
- `cfb16SolidSpansGeneral` (`kona.so` 0x52de00, 1304 bytes): **Established.**
  Solid FillSpans for 16-bit pixels under any raster op; clipped with `miClipSpans` after `miFindMaxBand`, each span merged through the and/xor pair from the GC's private data.
- `cfb32SolidSpansXor` (`kona.so` 0x4f5d10, 808 bytes): **Established.**
  Solid FillSpans for 32-bit pixels using xor; calls `miFindMaxBand` and `miClipSpans`, then xors one word per pixel.
- `cfb32SolidSpansCopy` (`kona.so` 0x5290a0, 596 bytes): **Established.**
  Solid FillSpans for 32-bit pixels in copy mode: after `miClipSpans` each span is stored as a run of words.
- `cfbSolidSpansXor` (`kona.so` 0x57a430, 1064 bytes): **Established.**
  Solid FillSpans for 8-bit pixels using xor: `miFindMaxBand` and `miClipSpans`, then masked word xors using the tables `cfbstarttab` and `cfbendtab`.
- `cfbUnnaturalStippleFS` (`kona.so` 0x545b00, 5252 bytes): **Established.**
  FillSpans for an 8-bit stipple whose width is not a divisor of 32. It first sets up the stipple state with `cfb8SetOpaqueStipple` or `cfb8SetStipple` (the choice depends on opaque or transparent fill), clips with `miClipSpans`, and reports an impossible fill style with `FatalError`.
- `cfb16UnnaturalStippleFS` (`kona.so` 0x54ebb0, 4452 bytes): **Established.**
  FillSpans for a 16-bit odd-width stipple; clips with `miClipSpans`, then expands stipple bits to pixels using the table `cfb16QuartetBitsTable`.
- `cfb32UnnaturalStippleFS` (`kona.so` 0x574790, 2332 bytes): **Established.**
  FillSpans for a 32-bit odd-width stipple; clips with `miClipSpans`, expands stipple bits with `cfb32QuartetBitsTable` and `cfb32QuartetPixelMaskTable`.
- `cfb8OpaqueStipple32FS` (`kona.so` 0x5023d0, 4260 bytes): **Established.**
  FillSpans for an 8-bit opaque stipple of width 32. It loads the stipple state by calling `cfb8SetOpaqueStipple`, clips with `miClipSpans`, and writes four pixels per stipple nibble with the foreground and background.
- `cfb8FillRectStippledUnnatural` (`kona.so` 0x576130, 3012 bytes): **Established.**
  PolyFillRect path for 8-bit stipples of odd width: depending on fill style it calls `cfb8SetOpaqueStipple` or `cfb8SetStipple` once per request, then paints each rectangle through the stipple tables with the partial-word masks.
- `cfb8SetOpaqueStipple` (`kona.so` 0x4f5050, 524 bytes): **Established.**
  Loads the shared 8-bit stipple state for an opaque fill: calls `cfbReduceRasterOp` for the foreground and for the background, and stores the raster op, foreground, background, plane mask, and/xor values and mode flag in `cfb8StippleAlu`, `cfb8StippleFg`, `cfb8StippleBg` and the related globals.
- `cfb8SetStipple` (`kona.so` 0x56b140, 436 bytes): **Established.**
  Loads the shared 8-bit stipple state for a transparent fill: one `cfbReduceRasterOp` call, then stores the foreground, rop, and/xor, plane mask and mode in `cfb8StippleFg`, `cfb8StippleAlu` and the neighbouring globals; no background is set.
- `cfbReduceRasterOp` (`kona.so` 0x578910, 684 bytes): **Established.**
  Turns a raster op, foreground and plane mask into the and/xor pair the 8-bit routines use. A leaf with a jump table over the sixteen raster ops (copy, xor, and so on, tested against 3, 6, 7 and 15). Called from `cfb8SetOpaqueStipple`, `cfb8SetStipple`, `cfbLineSD`.
- `cfb32ReduceRasterOp` (`kona.so` 0x53a660, 368 bytes): **Established.**
  The same raster-op reduction for 32-bit pixels, a leaf of 368 bytes with the same switch over 3, 6, 7 and 15. Called from `cfb32LineSD`, `cfb32SegmentSD`, `cfb32ValidateGC`.
- `cfb8ComputeClipMasks32` (`kona.so` 0x4eebf0, 1468 bytes): **Inferred.**
  Computes the per-row clip masks for an 8-bit stipple of 32-bit width from a clip box, using the table `cfb8BitLenMasks`; a leaf that returns packed masks for the first and last word.
- `cfbMatchCommon` (`kona.so` 0x4f7790, 240 bytes): **Established.**
  Picks, from the GC's font and fill state, one of the four 8-bit text and rectangle operation tables `cfbTEOps`, `cfbTEOps1Rect`, `cfbNonTEOps` and `cfbNonTEOps1Rect`, returning null when no table fits.
- `cfb16MatchCommon` (`kona.so` 0x513af0, 216 bytes): **Established.**
  The 16-bit version of the table chooser: selects among `cfb16TEOps`, `cfb16TEOps1Rect`, `cfb16NonTEOps` and `cfb16NonTEOps1Rect`.

### Colour frame-buffer copies, images, glyphs and pixmap helpers (`cfb*`, `cfb16*`, `cfb32*`)

- `cfbCopyArea` (`kona.so` 0x53fc90, 164 bytes): **Established.**
  CopyArea for 8-bit drawables, a thin selector. It reads the raster op from the GC byte at +0x5 and the plane mask from the word at +0x14: if the mask is not
  all ones, or the op is not copy, xor or or, it passes `cfbDoBitbltGeneral` as the inner routine; otherwise `cfbDoBitbltCopy`, `cfbDoBitbltXor` or `cfbDoBitbltOr`. It then calls `cfbBitBlt` with that routine.
- `cfb16CopyArea` (`kona.so` 0x562950, 164 bytes): **Established.**
  CopyArea for 16-bit drawables with the same shape as the 8-bit selector, comparing the plane mask with 0xffff and passing one of
  `cfb16DoBitbltGeneral`, `cfb16DoBitbltCopy`, `cfb16DoBitbltXor` or `cfb16DoBitbltOr` to `cfb16BitBlt`.
- `cfb16BitBlt` (`kona.so` 0x4d6300, 2092 bytes): **Inferred.**
  The 16-bit blit driver: it computes the source and destination clip boxes, makes `NotClippedByChildren` (for a window source), calls the inner blit routine passed in through a pointer (fifteen indirect calls in all, one per box band and direction), and finishes with `miHandleExposures` for the exposure rectangles of a window source.
- `cfbDoBitblt` (`kona.so` 0x51eb60, 136 bytes): **Established.**
  Chooser that picks the raster op's blit routine for an 8-bit blit: it tests the op against 3, 6 and 7 and the plane mask against 255, and sends everything else to `cfbDoBitbltGeneral`.
- `cfb16DoBitblt` (`kona.so` 0x574080, 136 bytes): **Established.**
  The 16-bit chooser; it tests the plane mask against 0xffff and the op against 3, 6 and 7, falling back to `cfb16DoBitbltGeneral`.
- `cfbDoBitbltGeneral` (`kona.so` 0x4df6a0, 6288 bytes): **Inferred.**
  The 8-bit rectangle copy that works for every raster op and plane mask. A leaf: it picks the copy direction (left to right or the reverse, top to bottom or the reverse) from the source and destination boxes
  and shifts words through the tables `cfbstarttab` and `cfbendpartial`.
- `cfbDoBitbltXor` (`kona.so` 0x521100, 4596 bytes): **Inferred.**
  The 8-bit rectangle copy for the xor raster op, a leaf that merges source into destination with xor; its word shifting uses `cfbstartpartial` and `cfbendtab`.
- `cfbDoBitbltOr` (`kona.so` 0x540e30, 4596 bytes): **Inferred.**
  The 8-bit rectangle copy for the or raster op, the same code shape and size as the xor copy with the merge step replaced. Called from `cfbCopyArea`, `cfbDoBitblt`.
- `cfb16DoBitbltGeneral` (`kona.so` 0x536140, 6304 bytes): **Inferred.**
  The 16-bit rectangle copy for any raster op and plane mask. A leaf with direction selection and word shifting through the 16-bit end table. Called from `cfb16CopyArea`, `cfb16DoBitblt`.
- `cfb16DoBitbltCopy` (`kona.so` 0x571ca0, 4716 bytes): **Inferred.**
  The 16-bit rectangle copy in plain copy mode, reading the screen private data at +0x1b4 for the frame-buffer stride.
- `cfb32DoBitbltGeneral` (`kona.so` 0x530590, 3480 bytes): **Inferred.**
  The 32-bit rectangle copy for any raster op, using `mergeRopBits` for the per-word merge; shorter than the 8- and 16-bit versions because a pixel is a whole word.
- `cfb32DoBitbltCopy` (`kona.so` 0x5795c0, 2836 bytes): **Inferred.**
  The 32-bit copy-mode rectangle copy, a leaf that moves whole words in the direction the overlap requires. Called from `cfb32CopyArea`, `cfb32DoBitblt`.
- `cfb32DoBitbltXor` (`kona.so` 0x4d7fc0, 2556 bytes): **Inferred.**
  The 32-bit rectangle copy that xors source into destination; leaf code with no edge masks. Called from `cfb32CopyArea`, `cfb32DoBitblt`.
- `cfb32DoBitbltOr` (`kona.so` 0x503590, 2556 bytes): **Inferred.**
  The 32-bit rectangle copy that ors source into destination, the same size as the xor version. Called from `cfb32CopyArea`, `cfb32DoBitblt`.
- `cfbCopyPlane` (`kona.so` 0x4d5a30, 1240 bytes): **Established.**
  CopyPlane for 8-bit drawables. When the source is one bit deep it takes the stipple route: `cfb8SetOpaqueStipple` (two sites), then `cfbBitBlt` through `cfbCopyPlane1to8`; otherwise it punts to `cfbPuntCopyPlane`, which builds a scratch GC with `GetScratchGC` and `ValidateGC`. Exposures come from `miHandleExposures`.
- `cfb16CopyPlane` (`kona.so` 0x4cfc40, 72 bytes): **Inferred.**
  CopyPlane for 16-bit drawables: no 16-bit plane routine exists, so it forwards all its arguments through a pointer to `cfbPuntCopyPlane`.
- `cfbCopyPlane1to8` (`kona.so` 0x51da70, 3568 bytes): **Inferred.**
  Expands a one-bit-deep source rectangle into 8-bit pixels: each source bit selects the foreground or background value kept in `cfb8StippleXor` and `cfb8StippleAnd`, merged by the rop in `cfb8StippleRRop`.
- `cfbCopyImagePlane` (`kona.so` 0x53b680, 56 bytes): **Established.**
  Wrapper for CopyArea of image planes: when the plane argument is -1 it calls `cfbCopyPlane8to1` to pack 8-bit pixels down to one-bit.
- `cfb16GetImage` (`kona.so` 0x4d6b30, 440 bytes): **Established.**
  GetImage for 16-bit drawables: for ZPixmap requests it builds a scratch pixmap header with `GetScratchPixmapHeader`, zeroes it with `bzero`, copies through `cfb16DoBitblt`, and frees it with `FreeScratchPixmapHeader`; other formats go to `miGetImage` or `mfbGetImage`.
- `cfb16PutImage` (`kona.so` 0x4e8e80, 796 bytes): **Established.**
  PutImage for 16-bit drawables. It wraps the image in a scratch pixmap from `GetScratchPixmapHeader`, saves and restores the GC state with `DoChangeGC` and `ValidateGC`, and copies it to the window with the GC's own CopyArea.
- `cfbImageGlyphBlt8` (`kona.so` 0x4f4cd0, 392 bytes): **Inferred.**
  ImageGlyphBlt for 8-bit drawables: asks `QueryGlyphExtents` for the string's box (one call), fills the background box with the GC's fill routine and then draws the glyphs through the GC's text routine.
- `cfb16ImageGlyphBlt8` (`kona.so` 0x574110, 360 bytes): **Established.**
  The 16-bit ImageGlyphBlt: a `QueryGlyphExtents` call to size the string, a background fill, then the glyph draw.
- `cfbPolyGlyphBlt8` (`kona.so` 0x500a80, 1780 bytes): **Inferred.**
  PolyGlyphBlt for 8-bit drawables: for each glyph it calls through the GC's stippled fill after intersecting the glyph box with the clip box, using the `endtab` table to mask the right edge.
- `cfb32PolyGlyphBlt8` (`kona.so` 0x5508c0, 1816 bytes): **Inferred.**
  PolyGlyphBlt for 32-bit drawables; same structure with three indirect calls into the fill routine, reading the screen private data at +0x1b4.
- `cfbTEGlyphBlt8` (`kona.so` 0x5573e0, 23240 bytes): **Established.**
  The large terminal-emulator-font text routine for 8-bit drawables. A table of unrolled cases, one per glyph width, writes whole words of expanded pixels; it uses `cfb8SetOpaqueStipple` to prepare the fill colours and falls back to `cfbImageGlyphBlt8` for fonts it cannot handle.
- `cfbPushPixels8` (`kona.so` 0x513e30, 3956 bytes): **Inferred.**
  PushPixels for 8-bit drawables: expands a one-bit mask into pixels using `cfb8BitLenMasks`, or passes the request to `mfbPushPixels` when the GC does not fit; there is one indirect call.
- `cfbSetSpans` (`kona.so` 0x568b80, 1044 bytes): **Established.**
  SetSpans for 8-bit drawables. It walks the spans and calls `cfbSetScanline` for each one that is inside the clip rectangles, indexing rows using the padding information in `PixmapWidthPaddingInfo`.
- `cfb16SetSpans` (`kona.so` 0x54b0c0, 1060 bytes): **Established.**
  SetSpans for 16-bit drawables; calls `cfb16SetScanline` at two sites and uses `PixmapWidthPaddingInfo` for the row stride.
- `cfb32SetSpans` (`kona.so` 0x5287b0, 1060 bytes): **Established.**
  SetSpans for 32-bit drawables, with the scanline copy done inline rather than by a callee, using `PixmapWidthPaddingInfo` for the stride.
- `cfb32SetScanline` (`kona.so` 0x5299f0, 476 bytes): **Established.**
  Copies one row of source pixels into a 32-bit destination scanline and merges them with the GC raster op through `mergeRopBits`; a leaf.
- `cfbGetSpans` (`kona.so` 0x577a10, 1668 bytes): **Established.**
  GetSpans for 8-bit drawables: reads each requested span into packed output. It reports a request it cannot serve with `FatalError` and sends one-bit drawables to `mfbGetSpans`.
- `cfb16GetSpans` (`kona.so` 0x5452e0, 1684 bytes): **Established.**
  GetSpans for 16-bit drawables; `FatalError` on an impossible depth, `mfbGetSpans` for one-bit drawables, and the 16-bit start and end tables for ragged ends.
- `cfb32GetSpans` (`kona.so` 0x522c10, 708 bytes): **Established.**
  GetSpans for 32-bit drawables: `FatalError` for an unexpected depth, `mfbGetSpans` for one-bit drawables, and a word-by-word copy for the rest.
- `cfbCopyRotatePixmap` (`kona.so` 0x4e8680, 312 bytes): **Established.**
  Makes a rotated copy of an 8-bit tile or stipple pixmap: it copies with `cfbCopyPixmap`, pads it with `cfbPadPixmap`, then calls `cfbXRotatePixmap` and `cfbYRotatePixmap`, and stamps the pixmap with the global serial number. It also uses `memmove`.
- `cfb16CopyRotatePixmap` (`kona.so` 0x55fcd0, 312 bytes): **Established.**
  The 16-bit version of the rotated copy: `cfb16CopyPixmap`, `cfb16PadPixmap`, `cfb16XRotatePixmap` and `cfb16YRotatePixmap`, with `memmove` calls and the global serial number stamp.
- `cfb16CopyPixmap` (`kona.so` 0x51d7f0, 148 bytes): **Established.**
  Duplicates a 16-bit pixmap: allocates through a function pointer, then copies the pixel data with `memmove`.
- `cfbXRotatePixmap` (`kona.so` 0x550fe0, 448 bytes): **Established.**
  Rotates an 8-bit pixmap horizontally by a given number of pixels. It reports a bad depth through `ErrorF` and otherwise shifts each row using the table `cfbendtab`.
- `cfb16XRotatePixmap` (`kona.so` 0x56a490, 448 bytes): **Established.**
  Horizontal rotation of a 16-bit pixmap with three `ErrorF` reports for unsupported widths and `cfb16endtab` for the masks.
- `cfb32XRotatePixmap` (`kona.so` 0x578760, 432 bytes): **Established.**
  Horizontal rotation of a 32-bit pixmap; `ErrorF` reports for unsupported widths and the table `cfb32endtab`.
- `cfbPadPixmap` (`kona.so` 0x566260, 556 bytes): **Established.**
  Replicates an 8-bit tile horizontally until its row fills 32 bits, when the tile width divides 32; the code tests the width times depth against 32 and uses `endtab` for the row masks. A leaf.
- `cfbDestroyPixmap` (`kona.so` 0x53bbc0, 88 bytes): **Established.**
  Frees an 8-bit pixmap: decrements the reference count at +0x4 of the pixmap and, when it reaches zero, calls `Xfree` on the data and the pixmap record.
- `cfb16DestroyPixmap` (`kona.so` 0x566490, 88 bytes): **Established.**
  The 16-bit pixmap release: a reference count test followed by `Xfree` of the pixmap's data and record.
- `cfb32DestroyPixmap` (`kona.so` 0x533370, 88 bytes): **Established.**
  The 32-bit pixmap release: reference count test, then `Xfree` of the data and the record.
- `cfb32AllocatePrivates` (`kona.so` 0x522310, 352 bytes): **Established.**
  Reserves the per-window and per-GC private slots for the 32-bit frame-buffer layer: `AllocateScreenPrivateIndex`, `AllocateGCPrivate` and `AllocateWindowPrivate` for the 32-bit indexes, and `mfbAllocatePrivates` for the monochrome layer; it also records `miCopyPlane` as the CopyPlane punt routine `cfbPuntCopyPlane`.
- `cfbValidateGC` (`kona.so` 0x53fd40, 3128 bytes): **Established.**
  ValidateGC for the 8-bit layer. It rebuilds the composite clip with `miComputeCompositeClip`, reduces the raster op with `cfbReduceRasterOp`, picks an operation table with `cfbMatchCommon`, rotates or pads tile and stipple pixmaps with `cfbCopyRotatePixmap`, `mfbCopyRotatePixmap` and `cfbPadPixmap`, and replaces the GC's operation vector via `miDestroyGCOps` and `miCreateGCOps`. An unsupported state ends in `FatalError`.
- `cfb16ValidateGC` (`kona.so` 0x55e5a0, 2928 bytes): **Established.**
  ValidateGC for the 16-bit layer: the same sequence with the 16-bit calls `cfb16ReduceRasterOp`, `cfb16MatchCommon`, `cfb16CopyRotatePixmap` and `cfb16PadPixmap`, after `miComputeCompositeClip`.


## konal.so functions below the split

The IP27 kernel names the pipe KONAL and the X server loads `usr/lib/X11/dyDDX/konal.so` (6.5.30m; inferred, see the refused-tokens section of [arm1_firmware.md](../ucode/arm1_firmware.md)). Each entry below is the `konal.so` build of a function that kona.so has below 0x4cdd80, read from konal.so's own disassembly (extracted with `scripts/extract_kona_ddx.py`) and compared word by word with the kona.so build. konal.so is linked at a different base, so its addresses start at 0x13a6e30 and the global-pointer constants, table slots and addresses of static data differ throughout. Of the 379 functions below the split whose bytes differ from kona.so, 338 have the same opcode, register and branch fields in every word: only 16-bit immediates change, and each entry says how many words and of what kind. Of the other 41, 40 are `kon*` pipe writers and loaders, where konal.so frames commands differently, and one is `rrmProcessRequestQueue`, whose only change is a call made through a register. It stores the token number as a word at the FIFO pointer (screen private +8) at offset 0, followed by the payload words, also at offset 0, where kona.so stores the first payload word 32 times the token above the pointer. konal.so has no `KonSeqData*_ip19` calls, so bulk payloads are stored word by word inline, and where kona.so stores `HP_WG_FLUSH_1` konal.so reads a word through the pointer at screen private +16. A further 26 functions below the split have identical bytes in both builds and are covered by the kona.so entries. Entries describe the function as read in konal.so, using the kona.so entry for the unchanged parts.

### Video format files

- `vfmtResolvePixelDepth` (konal.so, address 0x13a7040): **established.** Turns the combination's
  `pixelDepth` request into a depth the target can hold. It takes (record, target) and counts the allocated
  pixels: the width rounded up to a multiple of 160, times the height. It divides raster boards x 5 x 2^22 by
  that count (halved for class 2; class 3 uses 2^27). It maps the requested depth (a jump on values 0-7) and
  that quotient through thresholds at 64, 32 and 16, then 8 and 4, to a depth code, or 0 when nothing fits.
  Only the layout-dependent immediates differ from kona.so, namely 1 load offset, 2 low address halves and 1
  high address half (earliest at +0x8), and the other 259 of 263 words are bit-identical, and its prologue
  builds the global pointer from 0x178c00 where kona.so uses 0x16c318.
- `vfmtActualHWToKonaTarget` (konal.so, address 0x13a77f0): **established.** Fills a target description
  from the installed pipe. It takes (pipe, target), starts from `vfmtMinimalKonaTarget` and opens the
  graphics device. It asks the board count (ioctl 101, "GFX_GETNUM_BOARDS") and the board information (ioctl
  102, 1952 bytes), and refuses a board whose name is not `KONA`. It reads the configuration record at +40 of
  that information, the `kona_config` of the 6.5.5 sys/kona_if.h header. Its `bdset` becomes the class: 0
  stays 0, 2 stays 2, 6 becomes 3, others 1. It copies `numrms`, which must be 1, 2 or 4 (any other value
  prints a message and becomes 1). It copies `pixeldepth` (0-3) and the display generator's channel count,
  revision, option type and option revision. It returns 1, or 0 after printing why the pipe could not be
  read. Same code as kona.so with 59 words re-addressed for this module (26 load offsets, 27 low address
  halves, 1 high address half and 5 store offsets, beginning at +0xc), nothing else in the 328 words changing
  (gp offset 0x178450, kona.so 0x16bb68).
- `vfmtIsKonaCombinationValidForTarget` (konal.so, address 0x13a7d10): **established.** Checks a
  combination against a target, reporting through the message catalogue `IR_VIDEO`. It takes (record, target,
  ...). Each channel's `PixelFormat` must be 0-4 ("Illegal Pixel Format"). Formats 0 and 4 count 32 data
  bits, formats 1-3 count 42, and format 4 also marks the channel. `MaxTilesPerRequest` must be at least 1; a
  class-2 target forces it to 4. Then the tile requests per line, the data bits and the fill cost per channel
  go against the video bandwidth ("Video bandwidth exceeded"), and it prints each channel's frame rate, swap
  rate and fields per swap. The instruction stream is word for word that of kona.so except for 30 load
  offsets, 30 low address halves and 3 store offsets, 63 words in all (earliest at +0x10), with the gp offset
  in the prologue at 0x177f30 here against 0x16b648 there.
- `vfmtIsKonaCombinationValidForActualHW` (konal.so, address 0x13a8770): **established.** Builds the target
  from the pipe with `vfmtActualHWToKonaTarget` and calls `vfmtIsKonaCombinationValidForTarget`. It caches
  one target: it rebuilds it only when the pipe number differs from the last call's (the cached pipe starts
  at -1). Same code as kona.so with 9 words re-addressed for this module (5 load offsets, 3 low address
  halves and 1 store offset, starting at +0x10), nothing else in the 37 words changing, with the gp offset in
  the prologue at 0x1774d0 here against 0x16abe8 there.
- `vfmtSwapRateCloseEnough` (konal.so, address 0x13a8810): **established.** Compares two swap rates: it is
  true when |a - b| / a is below 0.01. The Combiner user guide calls swap rates within about 2 percent equal;
  the code's bound is 1 percent. Relocation is the entire difference from kona.so, since 1 load offset and 1
  low address half change (the first at +0xc) and every other bit of the 36-word routine stays the same (gp
  offset 0x177430, kona.so 0x16ab48).
- `vfmtSyncFormatFrameRatesCompatible` (konal.so, address 0x13a88a0): **established.** Decides whether a
  channel can lock to a sync format's frame rate. It is false when either rate is 0 or the larger is more
  than 16 times the smaller. Otherwise it is true when the ratio is within 0.01 of a whole number (its
  fractional part's distance from one half exceeds 0.49). The instruction stream is word for word that of
  kona.so except for 4 load offsets and 1 low address half, 5 words in all (first seen at +0x10) (gp offset
  0x1773a0, kona.so 0x16aab8).
- `vfmtUpdateFormatInfoInCombination` (konal.so, address 0x13a8aa0): **established.** Refreshes the format
  copies inside a combination from the `.vfo` files. It takes (record); for each existing channel (+712 set)
  it finds the format named at channel +340 with `vfmtFindKonaFormatFile` and loads it through 0x13b1140. It
  stores word +260 of the loaded format at channel +256 (**inferred** its date stamp) and copies the
  2020-byte format record into the channel at +716. A missing file sets error code 953 and prints "failed to
  load format %s!", returning 0; otherwise it returns 1. Beyond 3 load offsets, 3 low address halves and 1
  store offset (starting at +0x10), which make up 7 of its 98 words, nothing separates this build from
  kona.so, with the gp offset in the prologue at 0x1771a0 here against 0x16a8b8 there.
- `vfmtFindFormatFile` (konal.so, address 0x13aaf50): **established.** Finds a video format (`.vfo`) file
  by name and returns 0 when it exists. It takes (out, name, directory) and appends `.vfo` when missing; the
  root is `GL_GRROOT` or empty. A bare name becomes root + directory + "/" + name; a name with a directory
  part is used as given when that part equals root + directory, and otherwise returns 3 without looking. It
  stats the result into a static buffer and returns 0 when found; else it tries `$VFOPATH/name` and returns 0
  when that exists, or puts the name back in out and returns 1. Beyond 16 load offsets and 11 low address
  halves (earliest at +0x10), which make up 27 of its 148 words, nothing separates this build from kona.so
  (gp offset 0x174cf0, kona.so 0x168408).
- `vfmtFindKonaFormatFile` (konal.so, address 0x13ab1a0): **established.** Looks for an InfiniteReality
  format through `vfmtFindFormatFile`. The directory it passes is `/usr/gfx/ucode/KONA/dg4/vfo`. Checked
  against kona.so word by word, 16 of 19 words are bit-identical and the 3 others differ only in their 16-bit
  immediate (2 load offsets and 1 low address half, starting at +0x10), the prologue's gp constant reading
  0x174aa0 instead of 0x1681b8.
- `vfmtFindCmpFormatFile` (konal.so, address 0x13ab1f0): **established.** Searches the two compositor
  format directories, both through `vfmtFindFormatFile`. It tries `/usr/gfx/ucode/VOYAGER/vfo` first. Then,
  when the first search fails, `/usr/gfx/ucode/STINGRAY/vfo`. Relocation is the entire difference from
  kona.so, since 4 load offsets and 1 low address half change (beginning at +0x10) and every other bit of the
  39-word routine stays the same, the prologue's gp constant reading 0x174a50 instead of 0x168168.
- `vfmtFindOdyFormatFile` (konal.so, address 0x13ab290): **established.** Serves the Odyssey board's
  formats through `vfmtFindFormatFile`. It passes the directory `/usr/gfx/ucode/ODSY/vof`, spelled so. All 19
  words of the body match kona.so apart from 3 whose 16-bit immediate differs (2 load offsets and 1 low
  address half, first seen at +0x10), so opcodes, registers and branch offsets are identical, and its
  prologue builds the global pointer from 0x1749b0 where kona.so uses 0x1680c8.
- `vfmtFindSG2FormatFile` (konal.so, address 0x13ab2e0): **established.** Covers the SG2 video option
  through `vfmtFindFormatFile`. It seeks those formats in `/var/X11/Xvc/SG2_formats`. The instruction stream
  is word for word that of kona.so except for 2 load offsets and 1 low address half, 3 words in all (the
  first at +0x10), with the gp offset in the prologue at 0x174960 here against 0x168078 there.
- `vfmtFindKonaCombinationFile` (konal.so, address 0x13ab330): **established.** Finds a combination file
  for this board. It takes (out, name) and returns 1 with the name as given when that file exists. Else it
  returns 1 with root + `/usr/gfx/ucode/KONA/dg4/cmb/` + name when that exists. Else it returns 0 with the
  name copied back to out. Only the layout-dependent immediates differ from kona.so, namely 11 load offsets
  and 6 low address halves (beginning at +0x10), and the other 60 of 77 words are bit-identical, the
  prologue's gp constant reading 0x174910 instead of 0x168028.
- `vfmtFindCmpCombinationFile` (konal.so, address 0x13ab470): **established.** Finds a compositor
  combination file and returns 0 when one exists. It takes (out, name) and tries the name first. Then the
  `VOYAGER/cmb` directory. Then the `STINGRAY/cmb` directory. Then `/usr/diags/compositor/data`. Then the
  whole list again with `.cmb` appended when the name lacks it. When nothing is found it returns 1 with the
  `STINGRAY/cmb` path, or the name itself when it has a directory part. The three directory attempts pass a
  length of 4 to `snprintf`, so they build a three-character path and cannot match (**established** from the
  argument; **inferred** to be a defect). All 154 words of the body match kona.so apart from 38 whose 16-bit
  immediate differs (24 load offsets, 13 low address halves and 1 high address half, earliest at +0xc), so
  opcodes, registers and branch offsets are identical, and its prologue builds the global pointer from
  0x1747d0 where kona.so uses 0x167ee8.
- `vfmtGetLastKonaFileStat` (konal.so, address 0x13ab6e0): **established.** Hands back the last file status
  the find functions took: it copies 19 doublewords (152 bytes, a `stat` result) from their static buffer to
  the caller's and returns 1. Compared with kona.so only immediates move, 4 of the 33 words (1 load offset, 2
  low address halves and 1 high address half, first seen at +0x8) since this module's data and table layout
  differ (gp offset 0x174560, kona.so 0x167c78).
- `vfmtReadKonaCombination` (konal.so, address 0x13acd70): **established.** Loads a combination file into
  the 41636-byte record the display set-up uses. It takes (name, record), clears the record, finds the file
  with `vfmtFindKonaCombinationFile` and opens it as a symbol database. It reads `MajorVersion` and
  `MinorVersion`; the comparison it computes from them is never used, so any version loads. The 18 global
  fields come next, through a static helper. Examples: `textport` at +256, `managedSize` at +260,
  `pixelDepth` at +268. More: `syncSource` at +272, `usingEncoderOutput` at +552,
  `allocatedSize` at +588. Then up to 15 channel records of 2736 bytes at +596, through a static helper
  (fields `ch%1d` + name, offsets in dg.md). `FieldLayout` and `VbobSyncSource` may be absent. It returns 0,
  1 when the file cannot be opened, 2 on a missing field. The instruction stream is word for word that of
  kona.so except for 8 load offsets, 5 low address halves and 1 high address half, 14 words in all (earliest
  at +0xc), and its prologue builds the global pointer from 0x172ed0 where kona.so uses 0x1665e8.
- `vfmtWriteKonaCombination` (konal.so, address 0x13adfc0): **established.** The inverse of the reader: it
  writes a combination record out as a symbol database. It takes (name, record), resolves the path with
  `vfmtFindKonaCombinationFile` and opens a new database described as "Kona video format combination file".
  It writes the two version fields, the same 18 globals and each existing channel through a static helper,
  and closes it. Only the layout-dependent immediates differ from kona.so, namely 82 load offsets, 42 low
  address halves and 1 high address half (earliest at +0xc), and the other 451 of 576 words are
  bit-identical, with the gp offset in the prologue at 0x171c80 here against 0x165398 there.
- `vfmtReadKonaVideoFormat` (konal.so, address 0x13b1140): **established.** Loads a Kona video format file
  into a caller's record: finds the file with `vfmtFindKonaFormatFile`, opens it with `SDBreadOpenDatabase`,
  copies the 64-byte format name, takes its modification time via `vfmtGetLastKonaFileStat`, then runs seven
  section decoders in turn. Error text "failed to stat" or "failed to open" is recorded with source line
  numbers 646, 649 and 662. The instruction stream is word for word that of kona.so except for 9 load
  offsets, 14 low address halves, 1 high address half and 3 store offsets, 27 words in all (first seen at
  +0xc), and its prologue builds the global pointer from 0x16eb00 where kona.so uses 0x162218.

### Symbol database reader and writer

- `SDBaddNewArraySymbol` (konal.so, address 0x13b1704): **established.** Adds an array-valued symbol to a
  database being written. It forwards its arguments unchanged to the shared adder, so the caller's element
  count reaches the table entry at +4. The adder doubles the table when full (starting at 512 entries),
  copies the 32-byte name to +12, records the stream position at +8 and writes the values with
  `xdr_typedData`. All 14 words of the body match kona.so apart from 3 whose 16-bit immediate differs (2 low
  address halves and 1 high address half, beginning at +0x8), so opcodes, registers and branch offsets are
  identical, with the gp offset in the prologue at 0x16e53c here against 0x161c54 there.
- `SDBaddNewScalarSymbol` (konal.so, address 0x13b173c): **established.** Adds a single-valued symbol to a
  database being written. It shifts its trailing arguments up one place and passes an element count of zero
  to the shared adder, which `SDBaddNewArraySymbol` also calls; a scalar entry is therefore recorded with
  count 0 in the same 44-byte table record. The instruction stream is word for word that of kona.so except
  for 2 low address halves and 1 high address half, 3 words in all (the first at +0x8) (gp offset 0x16e504,
  kona.so 0x161c1c).
- `SDBcloseNewDatabase` (konal.so, address 0x13b177c): **established.** Finishes writing a symbol database:
  sorts the 44-byte table entries with `qsort` and `compareSTEName`, writes the table with
  `xdr_array`, patches the offsets into the header, writes the header with `xdr_SDBfileHeader`, then frees
  the table, closes the stream and the file. Only the layout-dependent immediates differ from kona.so, namely
  12 load offsets, 1 low address half and 1 high address half (first seen at +0x8), and the other 87 of 101
  words are bit-identical, and its prologue builds the global pointer from 0x16e4c4 where kona.so uses
  0x161bdc.
- `SDBopenNewDatabase` (konal.so, address 0x13b1910): **established.** Opens a symbol database for writing.
  A file name of "-" compared with `strcmp` selects standard output (the second `__iob` entry); any other
  name goes through `fopen` with mode "w". It then allocates a 20-byte stream record and a 24-byte handle,
  sets up an XDR encode stream with `xdrstdio_create`, and stores errno 2 or 12 on a bad name or failed
  allocation, closing the handle through `SDBcloseNewDatabase` if setup fails. Compared with kona.so only
  immediates move, 19 of the 89 words (14 load offsets, 4 low address halves and 1 high address half, the
  first at +0x4) since this module's data and table layout differ, with the gp offset in the prologue at
  0x16e330 here against 0x161a48 there.
- `SDBsetHeader` (konal.so, address 0x13b1a74): **established.** Stores the version pair (two 16-bit halves
  at +8 and +10 of the header, zero if none is supplied) and a description string of at most 100 bytes at
  +12, copied with `strncpy`. The static header-allocation routine calls it when a new database is created.
  All 30 words of the body match kona.so apart from 4 whose 16-bit immediate differs (1 load offset, 2 low
  address halves and 1 high address half, earliest at +0x8), so opcodes, registers and branch offsets are
  identical, and its prologue builds the global pointer from 0x16e1cc where kona.so uses 0x1618e4.
- `SDBgetSymbolDataAddress` (konal.so, address 0x13b1ca4): **established.** Looks up a symbol with the
  helper, which bsearches the 44-byte entries and seeks the XDR stream to the entry's data offset (errno 6
  when absent), then returns the stream position through the position entry (+16) of the stream's operations
  table. Same code as kona.so with 3 words re-addressed for this module (2 low address halves and 1 high
  address half, first seen at +0x8), nothing else in the 26 words changing, with the gp offset in the
  prologue at 0x16df9c here against 0x1616b4 there.
- `SDBgetSymbolDatatype` (konal.so, address 0x13b1d0c): **established.** Returns the data type word of a
  symbol's table entry: the name is looked up with the helper and the first word of the entry is read; it
  returns 0 when the name is absent. Compared with kona.so only immediates move, 3 of the 22 words (2 low
  address halves and 1 high address half, earliest at +0x8) since this module's data and table layout differ,
  and its prologue builds the global pointer from 0x16df34 where kona.so uses 0x16164c.
- `SDBgetSymbolElementCount` (konal.so, address 0x13b1d64): **established.** Reads the element count (the
  word at +4) of a symbol's table entry, found with the lookup helper; returns 0 when the name is absent.
  Compared with kona.so only immediates move, 3 of the 23 words (2 low address halves and 1 high address
  half, starting at +0x8) since this module's data and table layout differ, and its prologue builds the
  global pointer from 0x16dedc where kona.so uses 0x1615f4.
- `SDBgetSymbolValueArray` (konal.so, address 0x13b1dc0): **established.** Fetches an array symbol's
  values: a thin wrapper that calls the value reader, which finds the entry with the helper and decodes its
  data with `xdr_typedData`. Beyond 2 low address halves and 1 high address half (the first at +0x8), which
  make up 3 of its 14 words, nothing separates this build from kona.so (gp offset 0x16de80, kona.so
  0x161598).
- `SDBgetSymbolValueScalar` (konal.so, address 0x13b1df8): **established.** Fetches a scalar symbol's value
  through the same reader as `SDBgetSymbolValueArray`; the reader looks up the entry and decodes it with
  `xdr_typedData`, so the two wrappers differ only in their own return conventions. Compared with kona.so
  only immediates move, 3 of the 14 words (2 low address halves and 1 high address half, starting at +0x8)
  since this module's data and table layout differ, with the gp offset in the prologue at 0x16de48 here
  against 0x161560 there.
- `SDBcloseReadDatabase` (konal.so, address 0x13b1e30): **established.** Closes a database opened for
  reading: frees the symbol table pointer at +172, runs the memory interface's destroy entries (+28 then
  free), and closes the `FILE` with `fclose` when this handle opened it. Checked against kona.so word by
  word, 39 of 46 words are bit-identical and the 7 others differ only in their 16-bit immediate (5 load
  offsets, 1 low address half and 1 high address half, first seen at +0xc), with the gp offset in the
  prologue at 0x16de10 here against 0x161528 there.
- `SDBreadOpenDatabase` (konal.so, address 0x13b1ee8): **established.** Opens a symbol database for
  reading. A name of "-" selects standard input, otherwise `fopen` with mode "r" is used. It allocates a
  176-byte handle and a 24-byte stream record, builds a decode stream with `xdrstdio_create`, reads the
  header with `xdr_SDBfileHeader`, validates it with `strncmp` and loads the table. Errors set errno 12 (no
  memory) or 20 (bad file) and close the handle through `SDBcloseReadDatabase`. The instruction stream is
  word for word that of kona.so except for 19 load offsets, 4 low address halves and 1 high address half, 24
  words in all (beginning at +0x0) (gp offset 0x16dd58, kona.so 0x161470).
- `SDBprocessOneUserMethod` (konal.so, address 0x13b20e8): **established.** Runs one registered user method
  over a symbol's values: finds the symbol with the helper, checks that the symbol's type matches the
  method's, maps it with `mapTypeToXDRPROC`, and calls the method's function pointer (+24) once per element.
  Sets errno 22 for a size mismatch. Checked against kona.so word by word, 98 of 105 words are bit-identical
  and the 7 others differ only in their 16-bit immediate (3 load offsets, 3 low address halves and 1 high
  address half, first seen at +0x8), the prologue's gp constant reading 0x16db58 instead of 0x161270.
- `compareSTEName` (konal.so, address 0x13b228c): **established.** `qsort` and
  `bsearch` comparison for symbol table entries: runs `strcmp` on the 32-byte name field that starts at +12
  of each 44-byte entry. Same code as kona.so with 3 words re-addressed for this module (1 load offset, 1 low
  address half and 1 high address half, first seen at +0x0), nothing else in the 14 words changing, with the
  gp offset in the prologue at 0x16d9b4 here against 0x1610cc there.
- `mapTypeToXDRPROC` (konal.so, address 0x13b22c4): **established.** Translates a symbol data type number
  (0 to 20) into the matching XDR routine and element size: `xdr_int`, `xdr_u_short`, `xdr_float`,
  `xdr_double`, `xdr_wrapstring`, `xdr_enum` and others. Asserts through
  `__assert` with messages from sdbcommon.c when the type is not defined or the routine would be null.
  Relocation is the entire difference from kona.so, since 32 load offsets, 10 low address halves and 1 high
  address half change (earliest at +0x8) and every other bit of the 131-word routine stays the same, with the
  gp offset in the prologue at 0x16d97c here against 0x161094 there.
- `xdr_SDBelementIndex` (konal.so, address 0x13b2504): **established.** XDR routine for an element index
  field: calls `xdr_u_long` on the 32-bit value. One of five small codecs that `xdr_SDBfileHeader` and
  `xdr_SDBsymbolTableEntry` compose. Only the layout-dependent immediates differ from kona.so, namely 1 load
  offset, 1 low address half and 1 high address half (starting at +0x0), and the other 10 of 13 words are
  bit-identical (gp offset 0x16d73c, kona.so 0x160e54).
- `xdr_SDBfileOffset` (konal.so, address 0x13b2538): **established.** XDR routine for a file offset field
  in the symbol database, forwarding to `xdr_u_long`. Used for the table and data offsets in the header and
  the data offset in each table entry. All 13 words of the body match kona.so apart from 3 whose 16-bit
  immediate differs (1 load offset, 1 low address half and 1 high address half, first seen at +0x0), so
  opcodes, registers and branch offsets are identical, and its prologue builds the global pointer from
  0x16d708 where kona.so uses 0x160e20.
- `xdr_typedData` (konal.so, address 0x13b256c): **established.** XDR routine for a symbol's value whose
  type is given as an argument: picks the codec with `mapTypeToXDRPROC`, then encodes or decodes the scalar
  directly, or a counted array with `xdr_array`. For string types it uses `xdr_wrapstring` and `strlen`,
  `strcpy` to size and copy the buffer. Beyond 8 load offsets, 1 low address half and 1 high address half
  (the first at +0x2c), which make up 10 of its 85 words, nothing separates this build from kona.so.
- `xdr_SDBfileHeader` (konal.so, address 0x13b26c0): **established.** XDR routine for the 124-byte database
  header: a 100-byte magic string through `xdr_bytes`, two version numbers via `xdr_SDBversionNumber`, a
  second 100-byte string, the element index and two file offsets, then a ten-entry `xdr_array` of 4-byte
  counters. Relocation is the entire difference from kona.so, since 10 load offsets, 1 low address half and 1
  high address half change (the first at +0x4) and every other bit of the 80-word routine stays the same (gp
  offset 0x16d580, kona.so 0x160c98).
- `xdr_SDBdataType` (konal.so, address 0x13b2800): **established.** XDR codec for the data type field of a
  symbol entry, an enumeration, so it is `xdr_enum` on the 32-bit word. Called by `xdr_SDBsymbolTableEntry`.
  Checked against kona.so word by word, 10 of 13 words are bit-identical and the 3 others differ only in
  their 16-bit immediate (1 load offset, 1 low address half and 1 high address half, beginning at +0x0) (gp
  offset 0x16d440, kona.so 0x160b58).
- `xdr_SDBsymbolName` (konal.so, address 0x13b2834): **established.** XDR codec for a symbol name:
  `xdr_string` with a maximum of 31 characters, then forces the byte at index 31 to NUL. A null or empty
  destination fails with return 0. Relocation is the entire difference from kona.so, since 1 load offset, 1
  low address half and 1 high address half change (beginning at +0x0) and every other bit of the 28-word
  routine stays the same, with the gp offset in the prologue at 0x16d40c here against 0x160b24 there.
- `xdr_SDBsymbolTableEntry` (konal.so, address 0x13b28a4): **established.** XDR codec for one 44-byte table
  entry: the 32-byte name at +12 via `xdr_SDBsymbolName`, the type, the element index at +4 and the file
  offset at +8; stops with failure at the first field that fails. Relocation is the entire difference from
  kona.so, since 4 load offsets, 1 low address half and 1 high address half change (starting at +0x4) and
  every other bit of the 50-word routine stays the same, with the gp offset in the prologue at 0x16d39c here
  against 0x160ab4 there.
- `xdr_SDBversionNumber` (konal.so, address 0x13b296c): **established.** XDR codec for a version number:
  two `xdr_u_short` calls, major then minor (the second at +2). Used twice by `xdr_SDBfileHeader`. Compared
  with kona.so only immediates move, 4 of the 26 words (2 load offsets, 1 low address half and 1 high address
  half, the first at +0x0) since this module's data and table layout differ, with the gp offset in the
  prologue at 0x16d2d4 here against 0x1609ec there.
- `SDBsetupMemoryInterface` (konal.so, address 0x13b29d4): **established.** Installs four function pointers
  (16 bytes) into the memory-interface table the symbol database code calls instead of the C library: a hook
  first, then allocate (called with a count and a size), reallocate and free, one word each in that order.
  All 9 words of the body match kona.so apart from 3 whose 16-bit immediate differs (1 load offset, 1 low
  address half and 1 high address half, the first at +0x0), so opcodes, registers and branch offsets are
  identical, with the gp offset in the prologue at 0x16d26c here against 0x160984 there.

### Kona layer

- `konStippledCFillRects` (konal.so, address 0x13b84b0): **established.** Stippled rectangle fill: loads
  the colour state with `kon_loadGC`, puts the stipple in pipe memory through `kon_loadStipple`, sends
  `HP_X_LOADPOS`, `HP_X_LOADCLIP` and the box batches, and drops the stipple with `kon_unloadStipple`. It
  prints "konSolidFillRects" in its trace, a copy of the solid routine's string. Every command
  (`HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_BOX6` and 6 others) begins here with a word holding the token
  number, stored at offset 0 of the saved FIFO pointer from +0xa4, in place of kona.so's store at the pointer
  plus 32 times the token, and its payload words follow at offset 0, while the burst-copy calls of kona.so
  (`KonSeqData11_ip19`, `KonSeqData9_ip19`, `KonSeqData7_ip19` and 2 others) become unrolled word stores,
  which accounts for most of the growth from 964 to 1576 bytes, and 30% of its instructions line up with
  kona.so after address normalisation, 50% once register numbers are ignored in a routine of 1576 bytes
  against 964.
- `konCopyClip` (konal.so, address 0x13b8c40): **established.** Wrapper for the CopyClip entry (+24) of the
  context function table, built exactly like `konChangeGC`: swap in the saved original table from private
  +164, call the original, restore the module's table. The private record comes from the context's private
  array at +76 indexed by `konScreenPrivateIndex`. All 40 words of the body match kona.so apart from 4 whose
  16-bit immediate differs (2 load offsets and 2 low address halves, beginning at +0x10), so opcodes,
  registers and branch offsets are identical, and its prologue builds the global pointer from 0x167000 where
  kona.so uses 0x15a978.
- `kon_loadNfbBitmapGC` (konal.so, address 0x13b90c0): **established.** Loads the state for a bitmap draw:
  after an `ErrorF` trace it emits `HP_X_LOADGC` and `HP_X_PIX_SETUP`. The routine builds its words with the
  constants 0xfff000 and 0xffffff; it is the one the solid poly-text and stipple image paths use before
  sending pixel data. Every command (`HP_X_LOADGC` and `HP_X_PIX_SETUP`) begins here with a word holding the
  token number, stored at offset 0 of the saved FIFO pointer from +0xa74, in place of kona.so's store at the
  pointer plus 32 times the token, and its payload words follow at offset 0, with 91% of the instructions
  unchanged from kona.so once addresses are normalised, 99% once register numbers are ignored and the size
  2944 bytes against 2928.
- `konImageGlyphBltTE3` (konal.so, address 0x13bc7d0): **established.** Image-text blit for
  terminal-emulator fonts three pixels wide: loads state with `kon_loadImgRectGC` and `kon_loadImgBitmapGC`,
  sends `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`, a background
  `HP_X_BOX`, then glyph bitmaps by `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and
  `HP_X_PIX_FINISH`; falls back to `nfbImageGlyphBlt`. konal.so writes its 8 token stores (`HP_X_LOADPOS`,
  `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR` and 4 others) as the token number in a word at offset 0 of the FIFO
  pointer saved in the frame (first at +0x448), followed by the payload words at that offset, where kona.so
  addresses the command at the pointer plus 32 times the token, with 30% of the instructions unchanged from
  kona.so once addresses are normalised, 95% once register numbers are ignored and the size 5864 bytes
  against 5800.
- `konImageGlyphBltTE6` (konal.so, address 0x13be5d0): **established.** Six-pixel-wide terminal-emulator
  image-text blit. It prepares the pipe with `kon_loadImgRectGC` and `kon_loadImgBitmapGC`, sends the clip
  and scissor, the cell background with `HP_X_BOX` and the glyph bits with `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE`
  and `HP_X_PIX_FINISH`; unsupported cases go to `nfbImageGlyphBlt`. Every command (`HP_X_LOADPOS`,
  `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR` and 4 others) begins here with a word holding the token number, stored
  at offset 0 of the saved FIFO pointer from +0x448, in place of kona.so's store at the pointer plus 32 times
  the token, and its payload words follow at offset 0, and 37% of its instructions line up with kona.so after
  address normalisation, 95% once register numbers are ignored in a routine of 6060 bytes against 5996.
- `konImageGlyphBltTE8` (konal.so, address 0x13bfd80): **established.** Eight-pixel version of the
  terminal-emulator image-text blit, one byte of bitmap per glyph row: `kon_loadImgRectGC` and
  `kon_loadImgBitmapGC` for state, `HP_X_LOADSCISSOR` and `HP_X_BOX` for the cell,
  `HP_X_PIX_WRITE` for the rows, and `nfbImageGlyphBlt` as the fallback. Token framing is where this build
  departs from kona.so, since the token words (`HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR` and 4
  others) are written to offset 0 of the saved FIFO pointer, the first at +0x448, with the payload words
  trailing them at offset 0, and 38% of its instructions line up with kona.so after address normalisation,
  95% once register numbers are ignored in a routine of 4904 bytes against 4840.
- `konStereoPolySegment` (konal.so, address 0x13c10b0): **established.** Stereo wrapper for the
  segment-drawing slot (+28) of the context operations table. It makes a private copy of the segment list
  with `Xalloc`, runs the saved plain operation once per eye on a draw buffer taken from private +96 and then
  +100, and releases the copy at the end. Before each call it moves the drawable's y position and the private
  y offset by the eye offset at screen +226 and revalidates the context through `konValidateWindowGC` with
  mask 8192. No pipe register is written here. Checked against kona.so word by word, 213 of 222 words are
  bit-identical and the 9 others differ only in their 16-bit immediate (7 load offsets, 1 low address half
  and 1 high address half, beginning at +0xc) (gp offset 0x15eb90, kona.so 0x1525d8).
- `konDisplayCursor` (konal.so, address 0x13c1430): **established.** Selects the cursor image: for the
  crosshair it sets the current slot (screen +112) to -1 and sends `KONA_SELECT_CURSOR` (10005) with mode 1,
  address 9884 and hot spot 32, 32; for a glyph cursor it loads the image into a cache slot if needed
  (`X_LOADCURSOR`, `X_LOADCURSORCOLOR`) and sends mode 2 with address slot x 260. A failed ioctl is reported
  with `ErrorF` and `perror`. Checked against kona.so word by word, 174 of 195 words are bit-identical and
  the 21 others differ only in their 16-bit immediate (10 load offsets, 10 low address halves and 1 high
  address half, first seen at +0xc), with the gp offset in the prologue at 0x15e810 here against 0x152258
  there. Its `perror` prefix string is "konal" where kona.so prints "kona".
- `konValidateWindowPriv` (konal.so, address 0x13c7bd0): **established.** Refreshes a window's private
  data: it takes the window's visual (from the optional record at +120, or through `FindWindowWithOptional`
  when there is none), indexes the screen's visual array (entries of 20 bytes) and copies that entry's field
  at +8 into the window private at +20, then stores the address of a module table in the private's first
  word. Relocation is the entire difference from kona.so, since 3 load offsets, 1 low address half and 1 high
  address half change (beginning at +0xc) and every other bit of the 57-word routine stays the same, with the
  gp offset in the prologue at 0x158070 here against 0x14bab8 there.
- `kon_loadAccelGC` (konal.so, address 0x13c9500): **established.** Sends `HP_X_LOADPOS` and then the
  context state through `HP_X_LOADGC` for the accelerated tiled and span paths. The position words come from
  the four halfword fields at +8 to +14 of the screen record and the GC words from the context's private
  record (fields at +4 to +80). It makes no call. The command set matches kona.so token for token
  (`HP_X_LOADPOS` and `HP_X_LOADGC`), but every token travels as data at offset 0 of the pointer kept in a
  stack slot (first at +0x44, 2 token stores in all) rather than as part of a store address, and 76% of its
  instructions line up with kona.so after address normalisation, 95% once register numbers are ignored in a
  routine of 376 bytes against 360.
- `konFillSpansStippledC` (konal.so, address 0x13c9700): **established.** Stippled version of the span
  fill: `kon_loadGC` and `kon_loadStipple` set the colour and stipple, `miFindMaxBand` and
  `miClipSpans` clip the spans, and `HP_X_SPANS6`, `HP_X_SPANS2` and
  `HP_X_SPANS` carry them; the stipple is released by `kon_unloadStipple`. Every command (`HP_X_LOADPOS`,
  `HP_X_LOADCLIP`, `HP_X_SPANS6` and 2 others) begins here with a word holding the token number, stored at
  offset 0 of the saved FIFO pointer from +0x184, in place of kona.so's store at the pointer plus 32 times
  the token, and its payload words follow at offset 0, and no `KonSeqData` helper is called, the copies
  kona.so makes through `KonSeqData6_ip19` being written out as individual stores at offset 0, and 54% of its
  instructions line up with kona.so after address normalisation, 83% once register numbers are ignored in a
  routine of 1432 bytes against 1216.
- `konQueryHyperpipeNetwork` (konal.so, address 0x13cb3a0): **established.** Answers the hyperpipe network
  query: sends ioctl 10019 (`KONA_GET_NCLOPS_TOPOLOGY`), then for each entry of the returned list sends the
  generic ioctl 102 (`GFX_GETBOARDINFO`) with a 40-byte block and copies the returned name with `strcpy` into
  a per-pipe table in the module's data. Failures are reported with `perror` and the count is set to zero.
  Checked against kona.so word by word, 124 of 143 words are bit-identical and the 19 others differ only in
  their 16-bit immediate (11 load offsets, 7 low address halves and 1 store offset, beginning at +0x10) (gp
  offset 0x1548a0, kona.so 0x1483e8).
- `konStereoPolyText8` (konal.so, address 0x13cc290): **established.** Eight-bit text goes through this
  stereo wrapper for slot +52. It does not copy its arguments. When the stereo word at screen +220 is 1 it
  swaps in the plain table from private +92 and calls the saved operation twice, using the buffer words at
  private +96 and +100 and moving y by the eye offset (screen +226), with `konValidateWindowGC` and mask 8192
  run before each call. Afterwards it puts the position, buffer word and table back. Checked against kona.so
  word by word, 185 of 192 words are bit-identical and the 7 others differ only in their 16-bit immediate (5
  load offsets, 1 low address half and 1 high address half, first seen at +0xc) (gp offset 0x1539b0, kona.so
  0x1474f8).
- `kon_loadNfbOpaqueBitmapGC` (konal.so, address 0x13cc6c0): **established.** Opaque-bitmap variant of the
  loader: after an `ErrorF` trace it sends `HP_X_LOADGC` and `HP_X_PIX_SETUP`, setting mode words
  0x100030, 0xff0005 and 0xff0028 so both foreground and background colours are drawn. Used by
  `konDrawOpaqueMonoImage`. The command set matches kona.so token for token (`HP_X_LOADGC` and
  `HP_X_PIX_SETUP`), but every token travels as data at offset 0 of the pointer kept in a stack slot (first
  at +0x980, 2 token stores in all) rather than as part of a store address, and 93% of its instructions line
  up with kona.so after address normalisation, 99% once register numbers are ignored in a routine of 2700
  bytes against 2684.
- `konStereoPolyline` (konal.so, address 0x13cdd70): **established.** Polyline wrapper for stereo screens,
  installed in operations slot +24. With the screen's stereo word (+220) equal to 1 it puts back the saved
  plain table from private +92 and calls the original once per eye, first with the buffer word at private +96
  and then with +100. Each pass shifts the y position by the halfword at screen +226 and revalidates with
  `konValidateWindowGC` (mask 8192), and the drawable and table are restored afterwards. The instruction
  stream is word for word that of kona.so except for 5 load offsets, 1 low address half and 1 high address
  half, 7 words in all (the first at +0xc), the prologue's gp constant reading 0x151ed0 instead of 0x145a28.
- `konChangeDIDCmap` (konal.so, address 0x13ced90): **established.** Reloads one display id's colour-map
  field in the XMAP when a window's colormap changes. It takes (window, colormap) and acts only for a window
  with a display id (rrm private +20 not negative) and a colormap. It re-sends `X_LOADXMAP_DID` exactly as
  `konValidateMode` does (display modes). The words are the display id, then the colormap's table entry << 7,
  the plane count - 1 (capped at 12 when screen private +32 is set) << 3, and the luminance and grey flags.
  It takes those two flags only for colour-index visuals (visual flag bit 0 set, 0x2000 clear), and first
  caches {entry, size, grey, lum} in the 16-byte-per-id table that screen private +48 points to. Its debug
  print reads "did = %d cmap base = 0x%x, size = %d". Every command (`HP_X_LOADXMAP_DID`) begins here with a
  word holding the token number, stored at offset 0 of the saved FIFO pointer from +0x240, in place of
  kona.so's store at the pointer plus 32 times the token, and its payload words follow at offset 0, with 98%
  of the instructions unchanged from kona.so once addresses are normalised and the size 696 bytes against
  688.
- `konCursorOn` (konal.so, address 0x13cfbc0): **established.** Turns the hardware cursor on or off with
  the `KONA_SELECT_CURSOR` ioctl (10005): it sends the four cursor words kept in the screen record (mode,
  address, hot spot x and y), or mode 0 when switching off, through the driver connection (screen record
  +100), and reports `ioctl` failure with `ErrorF` and `perror`. Compared with kona.so only immediates move,
  9 of the 61 words (5 load offsets, 3 low address halves and 1 high address half, first seen at +0xc) since
  this module's data and table layout differ, with the gp offset in the prologue at 0x150080 here against
  0x143be8 there. Its `perror` prefix string is "konal" where kona.so prints "kona".
- `konSolidFS` (konal.so, address 0x13d0d30): **established.** Fills a list of spans with the solid colour:
  after `kon_loadGC` it sends `HP_X_LOADCLIP`, `HP_X_LOADPOS` and spans six at a time as
  `HP_X_SPANS6` with the remainder as `HP_X_SPANS2` or `HP_X_SPANS`. Traces its name with
  `ErrorF`. konal.so writes its 5 token stores (`HP_X_LOADCLIP`, `HP_X_LOADPOS`,
  `HP_X_SPANS6` and 2 others) as the token number in a word at offset 0 of the FIFO pointer saved in the
  frame (first at +0xc4), followed by the payload words at that offset, where kona.so addresses the command
  at the pointer plus 32 times the token, while the burst-copy calls of kona.so (`KonSeqData6_ip19`) become
  unrolled word stores, which accounts for most of the growth from 704 to 920 bytes, and 48% of its
  instructions line up with kona.so after address normalisation, 76% once register numbers are ignored in a
  routine of 920 bytes against 704.
- `konQueryHyperpipeConfig` (konal.so, address 0x13d2070): **established.** Answers the hyperpipe
  configuration query: sends ioctl 10021 (`KONA_NCLOPS_QUERY_CONFIG`) with a 524-byte block, then asks for
  board information with ioctl 102 (`GFX_GETBOARDINFO`), copies names with `strcpy` into the module's table,
  and reports a failed ioctl with `perror`. Checked against kona.so word by word, 140 of 152 words are
  bit-identical and the 12 others differ only in their 16-bit immediate (7 load offsets, 4 low address halves
  and 1 high address half, first seen at +0xc), and its prologue builds the global pointer from 0x14dbd0
  where kona.so uses 0x141818.
- `konExpandTile` (konal.so, address 0x13d22d0): **established.** Builds an expanded copy of a tile pixmap:
  allocates a new pixmap with `nfbCreatePixmap` and copies the tile rows into it in repeated passes with
  `bcopy`, so the pipe sees a tile of a size it can load. Traces with `ErrorF`. Only the layout-dependent
  immediates differ from kona.so, namely 5 load offsets, 2 low address halves and 1 high address half
  (starting at +0xc), and the other 215 of 223 words are bit-identical, with the gp offset in the prologue at
  0x14d970 here against 0x1415b8 there.
- `konInitDIDState` (konal.so, address 0x13d7290): **established.** Sets the kind of every display id in
  the rrm screen private's table. The server's `rrmInit` calls it through descriptor word +84, after clearing
  the table (descriptor). It takes (screen) and works on the 36-byte entries from rrm screen private +152.
  Ids 0-62 are main-plane ids (halfword +18 = 0, +8 = 0, +12 = 8); id 63 is one of kind 3 (+8 = 0x3c00, +12 =
  5); ids 64-95 are overlay ids (kind 1); no id gets kind 2. Main ids at or above the limit in
  `KON_X_LIMIT_MAIN_DID` (accepted 14-63, default 63) get kind 0xffff (unusable). The overlay limit
  `KON_X_LIMIT_OVERLAY_DID` (accepted 5-32, default 32) is added to running totals in a way that leaves ids
  63-95 usable for every accepted value, so as coded it removes no overlay id. A rejected value prints
  "punting, bogus DID limit" and keeps the default. It checks that the total, 96, equals the count at rrm
  private +0 ("numids mismatch"); the module's descriptor sets that count to 96. **Inferred:** kind 0 main, 1
  overlay, 3 a reserved id, from the counts and the variable names. Words +8 and +12 are the
  hardware-independent and hardware-dependent mode words of the windows that hold the id, **established**
  from the setter that records them, below. Checked against kona.so word by word, 316 of 354 words are
  bit-identical and the 38 others differ only in their 16-bit immediate (25 load offsets, 12 low address
  halves and 1 high address half, first seen at +0xc), and its prologue builds the global pointer from
  0x1489b0 where kona.so uses 0x13c5d8.
- `konStippledCFS` (konal.so, address 0x13d7bc0): **established.** Stippled fill-spans entry: it reports
  the call through `ErrorF` when its flag argument is set, and in every case passes the spans to
  `konFillSpansStippledC` with a zero final argument. Checked against kona.so word by word, 32 of 38 words
  are bit-identical and the 6 others differ only in their 16-bit immediate (3 load offsets, 2 low address
  halves and 1 high address half, beginning at +0xc), the prologue's gp constant reading 0x148080 instead of
  0x13bca8.
- `konStereoImageText8` (konal.so, address 0x13db240): **established.** Image text for stereo screens,
  hooked at slot +60. The routine draws once per eye by calling the original operation held in the saved
  table (private +92), taking the draw buffer from private +96 for the first call and +100 for the second and
  moving y by the eye offset kept at screen +226, after revalidating the context with `konValidateWindowGC`
  and mask 8192. It leaves the pipe alone and restores the table when it finishes. Checked against kona.so
  word by word, 186 of 192 words are bit-identical and the 6 others differ only in their 16-bit immediate (5
  load offsets and 1 low address half, beginning at +0x10), with the gp offset in the prologue at 0x144a00
  here against 0x138628 there.
- `konStereoPolyRectangle` (konal.so, address 0x13db750): **established.** Rectangle outlines on a stereo
  screen go through this wrapper (slot +32). It first duplicates the rectangle list with `Xalloc`, then lets
  the original operation from the saved table at private +92 draw it for the left eye and the right eye in
  turn, switching the buffer word between private +96 and +100 and offsetting y by the eye distance stored at
  screen +226. The context is revalidated with `konValidateWindowGC` before each pass and the list copy is
  freed on exit. Only the layout-dependent immediates differ from kona.so, namely 7 load offsets and 1 low
  address half (beginning at +0x10), and the other 214 of 222 words are bit-identical, the prologue's gp
  constant reading 0x1444f0 instead of 0x138118.
- `konDestroyClip` (konal.so, address 0x13dbe50): **established.** Wrapper for the DestroyClip entry (+20)
  of the context function table: restores the saved original table from private +164, calls the original
  destroy, and reinstalls the module's table. No pipe store. The routine is 38 instructions long. Beyond 2
  load offsets, 2 low address halves and 1 high address half (starting at +0xc), which make up 5 of its 38
  words, nothing separates this build from kona.so, with the gp offset in the prologue at 0x143df0 here
  against 0x137a18 there.
- `konValidateMode` (konal.so, address 0x13dfe70): **established.** Descriptor hook +40, which loads a
  display id's mode: it builds the hwd word, sends `X_LOADXMAP_DID` and ends by calling `konLoadDisplayMode`.
  Token framing is where this build departs from kona.so, since the token words (`HP_X_LOADXMAP_DID`) are
  written to offset 0 of the saved FIFO pointer, the first at +0x75c, with the payload words trailing them at
  offset 0, and 99% of its instructions line up with kona.so after address normalisation in a routine of 2048
  bytes against 2040.
- `kon_loadImpWordGC` (konal.so, address 0x13e26a0): **established.** Loads graphics state for the
  word-sized image path through `HP_X_LOADGC`, after printing its own name with `ErrorF`. The context words
  are combined with the constant masks 0xff03ffff and 0xfffc3fff and the colour mask 0xffffff, and the
  constants 0x13000a and 0x28000 are or'ed in. konal.so writes its single token store (`HP_X_LOADGC`) as the
  token number in a word at offset 0 of the FIFO pointer saved in the frame (first at +0x140), followed by
  the payload words at that offset, where kona.so addresses the command at the pointer plus 32 times the
  token, with 61% of the instructions unchanged from kona.so once addresses are normalised, 98% once register
  numbers are ignored and the size 500 bytes against 492.
- `konReloadAllGammas` (konal.so, address 0x13e3d00): **established.** Reloads the gamma tables of every
  video channel from their shadows, by calling the module's gamma loader with the screen's video-control
  record (`vcScreenPrivateIndex`). The loader sends the `X_LOADGAMMA` command for red, green and blue.
  Relocation is the entire difference from kona.so, since 1 load offset, 2 low address halves and 1 high
  address half change (beginning at +0xc) and every other bit of the 24-word routine stays the same, the
  prologue's gp constant reading 0x13bf40 instead of 0x12fb78.
- `konStereoPolyArc` (konal.so, address 0x13e3d60): **established.** Arc drawing for stereo (operations
  slot +36). The request list is copied with `Xalloc` and freed when both passes are done. Each pass swaps in
  the plain operations table kept at private +92, selects one eye's buffer word (private +96, then +100),
  adds the eye offset from screen +226 to the y position and calls the original after `konValidateWindowGC`
  with mask 8192. The pipe is only reached through that original. All 228 words of the body match kona.so
  apart from 9 whose 16-bit immediate differs (7 load offsets, 1 low address half and 1 high address half,
  the first at +0xc), so opcodes, registers and branch offsets are identical, the prologue's gp constant
  reading 0x13bee0 instead of 0x12fb18.
- `konSetSpans` (konal.so, address 0x13e5250): **established.** Placeholder for the set-spans operation: it
  reports through `ErrorF` that it was called and draws nothing. All 26 words of the body match kona.so apart
  from 5 whose 16-bit immediate differs (2 load offsets, 2 low address halves and 1 high address half, the
  first at +0xc), so opcodes, registers and branch offsets are identical, with the gp offset in the prologue
  at 0x13a9f0 here against 0x12e618 there.
- `konDestroyGC` (konal.so, address 0x13e52c0): **established.** Context destroy wrapper: it frees the four
  cached-stipple slots at private record +148 and a fifth at +104 (`kon_freeCachedStipple`) and the private
  buffer at +144 (`Xfree`), then restores the saved original function table and calls its destroy entry
  (+12). No register is touched. Relocation is the entire difference from kona.so, since 6 load offsets, 2
  low address halves and 1 high address half change (first seen at +0xc) and every other bit of the 92-word
  routine stays the same, with the gp offset in the prologue at 0x13a980 here against 0x12e5a8 there.
- `konTempBlankAllChannels` (konal.so, address 0x13e5430): **established.** Blanks or unblanks every
  display channel: it builds a one-word display request (command 60, value from the caller) and sends it
  through the module's display-request sender. The hardware effect is the display command it issues; the
  function itself touches no register. Only the layout-dependent immediates differ from kona.so, namely 1
  load offset, 2 low address halves and 1 high address half (beginning at +0xc), and the other 22 of 26 words
  are bit-identical, the prologue's gp constant reading 0x13a810 instead of 0x12e438.
- `konLineSS` (konal.so, address 0x13e54a0): **established.** Single-width solid polyline: `kon_loadGC` and
  `kon_loadClipRects` set up, then points go out as `HP_X_LINE`, `HP_X_LINE6`, or the relative forms
  `HP_X_LINE_R` and `HP_X_LINE6_R`, with tails through `HP_X_DATA6` to
  `HP_X_DATA1`. Falls back to `konSlowLineSS` for cases the pipe cannot take, with messages like "konLine
  relative". konal.so writes its 16 token stores (`HP_X_LINE6_R`, `HP_X_DATA6`, `HP_X_DATA5` and 7 others) as
  the token number in a word at offset 0 of the FIFO pointer saved in the frame (first at +0x200), followed
  by the payload words at that offset, where kona.so addresses the command at the pointer plus 32 times the
  token, and where kona.so calls `KonSeqData6_ip19`, `KonSeqData5_ip19`, `KonSeqData4_ip19` and
  `KonSeqData3_ip19` to copy fixed-length payloads konal.so stores the words inline, one `lw` and `sw` pair
  per word, with no `KonSeqData` call at all, and 42% of its instructions line up with kona.so after address
  normalisation, 64% once register numbers are ignored in a routine of 2764 bytes against 2172.
- `konDestroyWindow` (konal.so, address 0x13e7320): **established.** Tears down a window's Kona state. It
  reads the window private and screen private, tests the 0x8000 flag at +20, decrements the count at +28 and,
  when it reaches zero, sends `HP_X_LOADXMAP_CONFIG` with a zero word, flushes the pipe and calls
  `konReloadAllGammas`. It then frees private blocks with `Xfree`, calls `konUnbindDestroyedWindow` and
  chains to the saved destroy entry (+184). Every command (`HP_X_LOADXMAP_CONFIG`) begins here with a word
  holding the token number, stored at offset 0 of the saved FIFO pointer from +0xcc, in place of kona.so's
  store at the pointer plus 32 times the token, and its payload words follow at offset 0, and the flush that
  kona.so performs by storing 0xdeadbeef at pointer offset 16352 (`HP_WG_FLUSH_1`) is replaced by a load of
  the word at +16 of the screen private record and a dereference of it whose value is discarded, with 87% of
  the instructions unchanged from kona.so once addresses are normalised, 91% once register numbers are
  ignored and the size 728 bytes against 724.
- `konInitWindowType` (konal.so, address 0x13ed1d0): **established.** Descriptor hook +80: it sets the new
  window private's kind halfword (+2) to 1 when the visual's flags (visual table word +8) have bit 0x2, the
  overlay and underlay visuals, and to 0 otherwise. That kind is what the allocator matches against the id
  kinds `konInitDIDState` sets (0 main, 1 overlay). Checked against kona.so word by word, 60 of 64 words are
  bit-identical and the 4 others differ only in their 16-bit immediate (2 load offsets, 1 low address half
  and 1 high address half, starting at +0xc), the prologue's gp constant reading 0x132a70 instead of
  0x1268e8.
- `konValidateClip` (konal.so, address 0x13ed2d0): **established.** Descriptor hook +28: it sends the
  window's clip to the kernel as `RRM_VALIDATECLIP` (1011) and then marks the clip resource valid with
  `rrmSetResourceMask` and bit 0x2. The command set matches kona.so token for token (`HP_X_LOADCLIP`,
  `HP_X_BOX6`, `HP_X_DATA10` and 5 others), but every token travels as data at offset 0 of the pointer kept
  in a stack slot (first at +0x220, 8 token stores in all) rather than as part of a store address, and no
  `KonSeqData` helper is called, the copies kona.so makes through `KonSeqData11_ip19`, `KonSeqData9_ip19`,
  `KonSeqData7_ip19` and 2 others being written out as individual stores at offset 0, with 34% of the
  instructions unchanged from kona.so once addresses are normalised, 76% once register numbers are ignored
  and the size 3380 bytes against 2776.
- `konPolyGlyphBltSolidTE10` (konal.so, address 0x13ee0e0): **established.** Solid poly-text for ten-pixel
  terminal-emulator fonts: `kon_loadBitmapGC` sets state, then `HP_X_LOADPOS`, `HP_X_LOADCLIP`,
  `HP_X_LOADSCISSOR`, `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and
  `HP_X_PIX_FINISH` deliver the glyph rows; `nfbSolidPolyGlyphBlt` handles what the pipe path rejects. The
  command set matches kona.so token for token (`HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR` and 3
  others), but every token travels as data at offset 0 of the pointer kept in a stack slot (first at +0x400,
  7 token stores in all) rather than as part of a store address, with 41% of the instructions unchanged from
  kona.so once addresses are normalised, 94% once register numbers are ignored and the size 3748 bytes
  against 3692.
- `konPolyGlyphBltSolidTE16` (konal.so, address 0x13ef2d0): **established.** Solid poly-text for
  sixteen-pixel-wide fonts (two bytes per glyph row). Same sequence as the ten-pixel routine,
  `kon_loadBitmapGC` then the clip, scissor and `HP_X_PIX_WRITE` data, and also `HP_X_SPANS` for part of the
  output. Falls back to `nfbSolidPolyGlyphBlt`. The command set matches kona.so token for token
  (`HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR` and 3 others), but every token travels as data at
  offset 0 of the pointer kept in a stack slot (first at +0x400, 7 token stores in all) rather than as part
  of a store address, and 48% of its instructions line up with kona.so after address normalisation, 93% once
  register numbers are ignored in a routine of 2960 bytes against 2904.
- `kon_drawDid` (konal.so, address 0x13f1770): **established.** Loads the clip, position and
  graphics-context state for painting display-id planes, and draws nothing itself. It takes (id, plane mask,
  screen, command pointer). It sends `X_LOADCLIP` with a full-screen clip (enable word 1, a zero origin, the
  screen width and height). Then `X_LOADPOS` (0x12a) with a zero origin and the screen size, and `X_LOADGC`
  with 13 words in the order of the drawing grammar. Those words are: foreground = the id placed in the
  display-id bit field, write mask from the plane mask, then fixed words (cfg low bits 0x8, op low nibble 1,
  addr low six bits 0, bl bits 1-4 = 3, ifmt 0, colfmt 1, pixfmt 1). Two placements exist, chosen by bit 2 of
  screen private +148. In one the id's low four bits go to bit 3 and its next twelve to bit 8 of `fg_h`, with
  mask `wmask0`. In the other they go to bit 9 and to bit 14 of `fg_l`, with mask `wmask1`. **Inferred:** the
  two layouts are the display-id field's position in two pixel depths; the callers then send the boxes. The
  command set matches kona.so token for token (`HP_X_LOADCLIP`, `HP_X_LOADPOS` and `HP_X_LOADGC`), but every
  token travels as data at offset 0 of the pointer kept in a stack slot (first at +0x178, 3 token stores in
  all) rather than as part of a store address, with 81% of the instructions unchanged from kona.so once
  addresses are normalised, 96% once register numbers are ignored and the size 684 bytes against 660.
- `kon_loadNfbGCoff` (konal.so, address 0x13f1a20): **established.** Sends `HP_X_LOADPOS` with an origin
  given by its fifth and sixth arguments and the distances from that origin to the extent held in the screen
  record's halfwords at +8 and +10, then calls the loader at 0x14b9960 through the global offset table with
  the drawable's byte at +2 as the last argument. konal.so writes its single token store (`HP_X_LOADPOS`) as
  the token number in a word at offset 0 of the FIFO pointer saved in the frame (first at +0x68), followed by
  the payload words at that offset, where kona.so addresses the command at the pointer plus 32 times the
  token, with 75% of the instructions unchanged from kona.so once addresses are normalised, 96% once register
  numbers are ignored and the size 232 bytes against 224.
- `konPolyGlyphBltSolidTE32` (konal.so, address 0x13f1b10): **established.** Thirty-two-pixel-wide solid
  poly-text, four bytes per glyph row: `kon_loadBitmapGC`, `HP_X_LOADSCISSOR`, `HP_X_PIX_SETUP`,
  `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`, with `nfbSolidPolyGlyphBlt` as the host fallback. Traces its
  arguments with `ErrorF`. Every command (`HP_X_LOADPOS`, `HP_X_LOADCLIP`,
  `HP_X_LOADSCISSOR` and 3 others) begins here with a word holding the token number, stored at offset 0 of
  the saved FIFO pointer from +0x400, in place of kona.so's store at the pointer plus 32 times the token, and
  its payload words follow at offset 0, with 57% of the instructions unchanged from kona.so once addresses
  are normalised, 93% once register numbers are ignored and the size 2456 bytes against 2400.
- `konInstall24DCColormap` (konal.so, address 0x13f6e50): **established.** Loads a 24-bit direct-colour map
  into the pipe: after an `ErrorF` trace it sends `HP_X_LOADGAMMA` and `HP_DATA_1` words and copies the
  1536-word table into the pipe. konal.so writes its 3 token stores (`HP_X_LOADGAMMA`) as the token number in
  a word at offset 0 of the FIFO pointer saved in the frame (first at +0x2a8), followed by the payload words
  at that offset, where kona.so addresses the command at the pointer plus 32 times the token, and where
  kona.so calls `KonSeqData32_ip19` to copy fixed-length payloads konal.so stores the words inline, one `lw`
  and `sw` pair per word, with no `KonSeqData` call at all, with 5% of the instructions unchanged from
  kona.so once addresses are normalised, 11% once register numbers are ignored and the size 31908 bytes
  against 2700.
- `konDrawOpaqueMonoImage` (konal.so, address 0x1400460): **established.** Draws a one-bit image with both
  colours: finds the window private through `dbcWindowPrivateIndex`, calls `kon_loadNfbOpaqueBitmapGC`, sends
  `HP_X_LOADCLIP` and `HP_X_LOADPOS`, then the rows through `HP_X_PIX_WRITE` in
  32-word bursts with shorter copies for tails, ending with `HP_X_PIX_FINISH`. The command set matches
  kona.so token for token (`HP_X_LOADCLIP`, `HP_X_LOADPOS`, `HP_X_PIX_WRITE` and
  `HP_X_PIX_FINISH`), but every token travels as data at offset 0 of the pointer kept in a stack slot (first
  at +0x328, 4 token stores in all) rather than as part of a store address, and where kona.so calls
  `KonSeqData32_ip19`, `KonSeqData8_ip19`, `KonSeqData4_ip19` and
  `KonSeqData3_ip19` to copy fixed-length payloads konal.so stores the words inline, one `lw` and `sw` pair
  per word, with no `KonSeqData` call at all, and 49% of its instructions line up with kona.so after address
  normalisation, 62% once register numbers are ignored in a routine of 2576 bytes against 1732.
- `konRotateStipple` (konal.so, address 0x14021e0): **established.** Rotates a stipple bitmap by the tile
  origin before it is loaded: shifts the rows in place with three `memmove` calls (by row and by bit offset)
  and prints the size and offsets with `ErrorF`. Same code as kona.so with 9 words re-addressed for this
  module (7 load offsets and 2 low address halves, starting at +0x1c), nothing else in the 168 words
  changing, with the gp offset in the prologue at 0x11da60 here against 0x119178 there.
- `konTiledCAccelFS` (konal.so, address 0x1403e70): **established.** Tiled accelerated fill-spans entry: it
  reports the call through `ErrorF` when its flag argument is set and passes the spans to
  `konFillSpansTiledCAccel`. Only the layout-dependent immediates differ from kona.so, namely 3 load offsets,
  2 low address halves and 1 high address half (beginning at +0xc), and the other 32 of 38 words are
  bit-identical, with the gp offset in the prologue at 0x11bdd0 here against 0x1174e8 there.
- `kon_loadStipple` (konal.so, address 0x1403f20): **established.** Gets a stipple into pipe memory: looks
  it up with `kon_hitCachedStipple`, allocates a slot with `kon_allocCachedStipple` and fills it with
  `kon_loadCachedStipple` on a miss, then sends `HP_X_LOADSTIPPLE` (store or load) and `HP_X_ROTATESTIPPLE`
  to set the rotation. Three `ErrorF` traces describe store, load and rotation. The command set matches
  kona.so token for token (`HP_X_ROTATESTIPPLE` and `HP_X_LOADSTIPPLE`), but every token travels as data at
  offset 0 of the pointer kept in a stack slot (first at +0x184, 5 token stores in all) rather than as part
  of a store address, and 58% of its instructions line up with kona.so after address normalisation, 91% once
  register numbers are ignored in a routine of 1012 bytes against 972.
- `konChangeClip` (konal.so, address 0x1406770): **established.** Wrapper for the ChangeClip entry (+16) of
  the context function table. Same swap as `konChangeGC` with four arguments passed through: original table
  back, call entry +16, module table reinstalled. Only the layout-dependent immediates differ from kona.so,
  namely 2 load offsets, 2 low address halves and 1 high address half (beginning at +0xc), and the other 39
  of 44 words are bit-identical, and its prologue builds the global pointer from 0x1194d0 where kona.so uses
  0x114c28.
- `kon_loadCopyWindowGC` (konal.so, address 0x1406f90): **established.** Loads the context for a window
  copy through `HP_X_LOADGC`, tracing with `ErrorF`. The mode word is picked among several constants
  (0x110001, 0x40001, 0x40005 and others) and combined with masks such as
  0xff03ffff, 0xfffc3fff and 0xf00fff. Every command
  (`HP_X_LOADGC`) begins here with a word holding the token number, stored at offset 0 of the saved FIFO
  pointer from +0x3b8, in place of kona.so's store at the pointer plus 32 times the token, and its payload
  words follow at offset 0, and 95% of its instructions line up with kona.so after address normalisation, 99%
  once register numbers are ignored in a routine of 1124 bytes against 1116.
- `konStereoPolyText16` (konal.so, address 0x1408360): **established.** The sixteen-bit counterpart of the
  stereo text wrapper, filling slot +56. Its two draws, one for each eye, use the saved plain table at
  private +92, a buffer word from private +96 or +100 and a y position moved by the halfword at screen +226.
  `konValidateWindowGC` (mask 8192) refreshes the context first, and everything it changed is restored on
  return. It stores nothing to the pipe itself. Compared with kona.so only immediates move, 6 of the 192
  words (5 load offsets and 1 low address half, starting at +0x10) since this module's data and table layout
  differ, and its prologue builds the global pointer from 0x1178e0 where kona.so uses 0x113048.
- `konInitRootWindow` (konal.so, address 0x1408f70): **established.** Initialises the root window's device
  state by calling a shared routine with its one argument (a branch-and-link through the module's local
  entry); it performs no other work and issues no pipe command. Compared with kona.so only immediates move, 3
  of the 17 words (1 load offset and 2 low address halves, the first at +0x10) since this module's data and
  table layout differ, and its prologue builds the global pointer from 0x116cd0 where kona.so uses 0x112438.
- `konSolidZeroSeg` (konal.so, address 0x14109f0): **established.** Draws a one-segment zero-width line:
  calls `kon_loadGC`, sends `HP_X_LOADCLIP` (one box) and `HP_X_LOADPOS`, offsets the endpoints by half the
  extent according to the line's direction flag, and sends the segment through `HP_X_SEGMENT`. It returns
  without drawing when bit 0x400 is set in the second argument's word at +124. Every command
  (`HP_X_LOADCLIP`, `HP_X_LOADPOS` and `HP_X_SEGMENT`) begins here with a word holding the token number,
  stored at offset 0 of the saved FIFO pointer from +0xa4, in place of kona.so's store at the pointer plus 32
  times the token, and its payload words follow at offset 0, with 63% of the instructions unchanged from
  kona.so once addresses are normalised, 92% once register numbers are ignored and the size 576 bytes against
  552.
- `kon_loadClipRects` (konal.so, address 0x141d330): **established.** Sends the clip rectangle list:
  `HP_X_LOADCLIP` with the count, and either the one box as four 16-bit values or, for many boxes, the first
  through `HP_X_LOADCLIP` and the rest in pairs through `HP_X_BDATA4`. Uses a loop that steps eight bytes per
  box. Token framing is where this build departs from kona.so, since the token words (`HP_X_LOADCLIP` and
  `HP_X_BDATA4`) are written to offset 0 of the saved FIFO pointer, the first at +0x68, with the payload
  words trailing them at offset 0, with 47% of the instructions unchanged from kona.so once addresses are
  normalised, 90% once register numbers are ignored and the size 564 bytes against 532.
- `konChangeGC` (konal.so, address 0x141d910): **established.** Wrapper for the ChangeGC entry (offset +4)
  of the graphics-context function table. It puts back the table the module saved in the context's private
  record at +164, calls the saved entry, saves the table again and reinstalls the module's own. It touches no
  pipe register. The routine is 40 instructions long. Same code as kona.so with 4 words re-addressed for this
  module (2 load offsets and 2 low address halves, the first at +0x10), nothing else in the 40 words
  changing, the prologue's gp constant reading 0x102330 instead of 0xfdad8.
- `konDrawSolidRects` (konal.so, address 0x141f8b0): **established.** Draws solid rectangles for a window
  whose private data is found through `dbcWindowPrivateIndex`: calls `kon_loadNfbGC`, sends `HP_X_LOADCLIP`
  and then `HP_X_BOX6` batches with the same `HP_X_DATA10` to `HP_X_DATA2` tails as the plain solid fill.
  konal.so writes its 8 token stores (`HP_X_LOADCLIP`, `HP_X_BOX6`, `HP_X_DATA10` and 5 others) as the token
  number in a word at offset 0 of the FIFO pointer saved in the frame (first at +0x144), followed by the
  payload words at that offset, where kona.so addresses the command at the pointer plus 32 times the token,
  while the burst-copy calls of kona.so (`KonSeqData11_ip19`, `KonSeqData9_ip19`, `KonSeqData7_ip19` and 2
  others) become unrolled word stores, which accounts for most of the growth from 1144 to 1748 bytes, with
  42% of the instructions unchanged from kona.so once addresses are normalised, 56% once register numbers are
  ignored and the size 1748 bytes against 1144.
- `konPolyPoint` (konal.so, address 0x1421680): **established.** PolyPoint:
  `kon_loadGC`, then points sent as `HP_X_POINT`, `HP_X_POINT6` or
  `HP_X_POINT24`, and the relative forms `HP_X_POINT_R` and `HP_X_POINT6_R`, grouped into
  23-word and shorter payloads, with tails through `HP_X_DATA6` to `HP_X_DATA1` and the clip through
  `HP_X_LOADCLIP`. konal.so writes its 19 token stores (`HP_X_POINT24`, `HP_X_POINT6`,
  `HP_X_DATA6` and 9 others) as the token number in a word at offset 0 of the FIFO pointer saved in the frame
  (first at +0x190), followed by the payload words at that offset, where kona.so addresses the command at the
  pointer plus 32 times the token, and where kona.so calls `KonSeqData23_ip19`, `KonSeqData5_ip19`,
  `KonSeqData4_ip19` and `KonSeqData3_ip19` to copy fixed-length payloads konal.so stores the words inline,
  one `lw` and `sw` pair per word, with no `KonSeqData` call at all, with 23% of the instructions unchanged
  from kona.so once addresses are normalised, 62% once register numbers are ignored and the size 3612 bytes
  against 2608.
- `konProbe` (konal.so, address 0x1422c10): **established.** Screen probe: it asks `ddxGetBoardName` for
  the name of the board that serves the screen (a 255-byte buffer), compares it with a name using `strcmp`,
  looks for the first board of the matching type with `ddxFindFirstTypedBoard`, and reports problems with
  `ErrorF`. **Inferred:** it decides whether this module drives the screen. It writes no register. Compared
  with kona.so only immediates move, 15 of the 82 words (9 load offsets and 6 low address halves, earliest at
  +0x10) since this module's data and table layout differ, the prologue's gp constant reading 0xfd030 instead
  of 0xf8e28. The name string it passes to `strcmp` and to `ddxFindFirstTypedBoard` is "konal" in this build,
  where kona.so uses "kona".
- `konPolyFillRectTiledCAccel` (konal.so, address 0x1426d80): **established.** PolyFillRect with a tiled
  fill for the accelerated path. It caches the tile as a stipple with `kon_allocCachedStipple`,
  `kon_loadCachedStipple` and `kon_hitCachedStipple`, rotates it with `HP_X_ROTATESTIPPLE`, loads it with
  `HP_X_LOADSTIPPLE`, sends `HP_X_LOADGC`, `HP_X_LOADCLIP` and
  `HP_X_RECT6` or `HP_X_RECT` boxes plus the data tails. The command set matches kona.so token for token
  (`HP_X_LOADPOS`, `HP_X_LOADGC`, `HP_X_ROTATESTIPPLE` and 11 others), but every token travels as data at
  offset 0 of the pointer kept in a stack slot (first at +0x148, 27 token stores in all) rather than as part
  of a store address, and where kona.so calls `KonSeqData11_ip19`, `KonSeqData9_ip19`, `KonSeqData7_ip19` and
  2 others to copy fixed-length payloads konal.so stores the words inline, one `lw` and `sw` pair per word,
  with no `KonSeqData` call at all, with 39% of the instructions unchanged from kona.so once addresses are
  normalised, 80% once register numbers are ignored and the size 5680 bytes against 4924.
- `konaSetStereoMode` (konal.so, address 0x142aeb0): **established.** Tells the kernel's cursor-channel
  table about a stereo switch and then switches the frame-buffer layer. It takes (screen, a, b, mode). When
  `mode` is 1 and a small-data flag of the module is set, it writes 531 to the halfword at +6 (`y1`) of an
  18-byte block in `.bss` and passes the block to 10009. On failure it stores -7905 in a module error word
  and logs "Failed : update kernel with channel cursorinfo"; it then calls `nfbSetStereoMode`. The block is
  not left zero: the static function fills all of it and sends 10009 itself, from thirteen call sites. That
  function writes the bytes at +0, +1 and +2 (**inferred** channel, valid and priority, the field order of
  `kona_set_channel_rect_args`) and the halfwords from +4 on from its arguments and the channel's
  video-control record. So this call re-sends the rectangle last set up, with only `y1` replaced
  (**established** from the stores). **Inferred:** the stereo switch moves the top edge of the cursor
  rectangle to line 531 for that channel; the module gives no reason for the value. Kernel side:
  `kona_set_channel_rect` (dg.md). Beyond 7 load offsets, 4 low address halves and 2 store offsets (starting
  at +0x10), which make up 13 of its 57 words, nothing separates this build from kona.so, the prologue's gp
  constant reading 0xf4d90 instead of 0xf0fc8.
- `konStore24DCColors` (konal.so, address 0x142c860): **established.** Stores a run of 24-bit direct-colour
  entries into the hardware map: it traces the red, green and blue source and destination addresses through
  `ErrorF` and writes the changed entries with `HP_X_LOADGAMMA` and `HP_DATA_1`. Every command
  (`HP_X_LOADGAMMA`) begins here with a word holding the token number, stored at offset 0 of the saved FIFO
  pointer from +0x2a8, in place of kona.so's store at the pointer plus 32 times the token, and its payload
  words follow at offset 0, and 69% of its instructions line up with kona.so after address normalisation, 96%
  once register numbers are ignored in a routine of 1556 bytes against 1532.
- `kon_loadGC` (konal.so, address 0x142e510): **established.** The general loader: sends `HP_X_LOADPOS`
  (four words from the screen record's halfword fields at +8 to +14) and `HP_X_LOADGC` with the foreground
  and background colours, write masks, configuration, operation and format words taken from the context's
  private record at +4 to +64. Prints the word values with `ErrorF` under the trace flag. konal.so writes its
  2 token stores (`HP_X_LOADPOS` and `HP_X_LOADGC`) as the token number in a word at offset 0 of the FIFO
  pointer saved in the frame (first at +0x6c), followed by the payload words at that offset, where kona.so
  addresses the command at the pointer plus 32 times the token, with 95% of the instructions unchanged from
  kona.so once addresses are normalised and the size 656 bytes against 640.
- `kon_loadImgRectGC` (konal.so, address 0x1431750): **established.** Builds and sends a `HP_X_LOADGC` for
  image rectangles: it forces the mode field (clears bits 1 to 4, sets the value 6) and masks the colour word
  with 0xffffff before storing the context words, so a rectangle fill ignores the high byte. No callee. The
  command set matches kona.so token for token (`HP_X_LOADGC`), but every token travels as data at offset 0 of
  the pointer kept in a stack slot (first at +0x74, single token store in all) rather than as part of a store
  address, with 72% of the instructions unchanged from kona.so once addresses are normalised, 97% once
  register numbers are ignored and the size 340 bytes against 332.
- `konSolidFillRects` (konal.so, address 0x1432c90): **established.** Fills a rectangle list with the
  context's foreground colour: calls `kon_loadGC`, sends `HP_X_LOADPOS` and `HP_X_LOADCLIP`, then batches
  boxes six at a time as `HP_X_BOX6` (11 payload words). A tail of five, four, three, two or one box goes out
  as `HP_X_DATA10`, `HP_X_DATA8`, `HP_X_DATA6`,
  `HP_X_DATA4` or `HP_X_DATA2`. The command set matches kona.so token for token (`HP_X_LOADPOS`,
  `HP_X_LOADCLIP`, `HP_X_BOX6` and 6 others), but every token travels as data at offset 0 of the pointer kept
  in a stack slot (first at +0xa4, 9 token stores in all) rather than as part of a store address, and where
  kona.so calls `KonSeqData11_ip19`, `KonSeqData9_ip19`, `KonSeqData7_ip19` and 2 others to copy fixed-length
  payloads konal.so stores the words inline, one `lw` and `sw` pair per word, with no `KonSeqData` call at
  all, and 29% of its instructions line up with kona.so after address normalisation, 48% once register
  numbers are ignored in a routine of 1528 bytes against 916.
- `konFillSpansSolid` (konal.so, address 0x1435d20): **established.** The span fill with clipping by hand:
  it uses `miFindMaxBand` and `miClipSpans` to cut spans against the clip rectangles when more than one is
  present (the message "clipping by hand" names this path), loads the rectangles with `kon_loadClipRects` and
  sends the spans as `HP_X_SPANS6`, `HP_X_SPANS2` or `HP_X_SPANS`. The command set matches kona.so token for
  token (`HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_SPANS6` and 2 others), but every token travels as data at
  offset 0 of the pointer kept in a stack slot (first at +0x184, 5 token stores in all) rather than as part
  of a store address, and where kona.so calls `KonSeqData6_ip19` to copy fixed-length payloads konal.so
  stores the words inline, one `lw` and `sw` pair per word, with no `KonSeqData` call at all, and 58% of its
  instructions line up with kona.so after address normalisation, 83% once register numbers are ignored in a
  routine of 1436 bytes against 1220.
- `konStereoPolyGlyphBlt` (konal.so, address 0x1437330): **established.** Wrapper for glyph blits on a
  stereo screen (slot +72). If screen +220 holds 1 it replaces the operations table with the saved one from
  private +92 and invokes the original two times, one per eye, selecting buffer words private +96 and +100
  and shifting y by the screen's eye offset at +226. Every call is preceded by `konValidateWindowGC` with
  mask 8192. The pipe writes come from the operation it calls. Checked against kona.so word by word, 190 of
  197 words are bit-identical and the 7 others differ only in their 16-bit immediate (5 load offsets, 1 low
  address half and 1 high address half, earliest at +0xc) (gp offset 0xe8910, kona.so 0xe4eb8).
- `konInitiateBufferSwap` (konal.so, address 0x1438610): **established.** Starts a buffer swap for a list
  of windows: it flips each window's mode words, finds it a display id and sends the manager swap. It takes
  (window list, count). For each window that holds a validated swap buffer (rrm private byte +4 bit 0x8) it
  first invalidates that resource through hook +32 with (window, 8, 1). For a main-plane window (visual flag
  bit 0) it sets hwi bit 0x4 and hwd bit 0x1 when the double-buffer private's byte +2 is not 1, and clears
  both when it is: the displayed buffer flips. For an overlay or underlay window (visual flags 0x6) it puts
  code 2, plus 1 when it sets hwi bit 0x4, into hwd bits 1-3; any other window prints "TRYing to swap bogus
  did". An unrealized window (word +124 bit 11 clear) has its swap reported done at once through
  `dbcDelayedSwapBufferDone`. Otherwise it tries `ShareSwappingID`; a window that joins a swapping id is also
  reported done at once and sends nothing. Else it takes an id from `FindFreeID`, or from `StealID` when none
  is free. It records the new hwd word in the id's 8-byte entry of the table that the module's screen private
  +52 points to, sets bit 0x10 (swap pending) on the id's entry and adds the window to a list. Last, walking
  that list backwards, it calls `rrmMGRSwapBuf` for each window; on a failure it reports the swap done and
  clears bit 0x10 again. It returns 0. Checked against kona.so word by word, 343 of 377 words are
  bit-identical and the 34 others differ only in their 16-bit immediate (26 load offsets and 8 low address
  halves, starting at +0x1c) (gp offset 0xe7630, kona.so 0xe3bd8).
- `konReadImage` (konal.so, address 0x143a950): **established.** Reads pixels back from the pipe: loads
  state with `kon_loadPixmapGC`, sends `HP_X_LOADPOS` and `HP_X_PIX_READ` and flushes the pipe. Above a
  byte-count threshold it uses DMA, sending ioctl 10000 (`KONA_DMAREAD`) and checking with 10017
  (`KONA_CHECK_PIPE`) while waiting in `sginap`; below it, copies words from the return area with `bcopy`. A
  timeout prints "return area did not go valid". The command set matches kona.so token for token
  (`HP_X_LOADPOS` and `HP_X_PIX_READ`), but every token travels as data at offset 0 of the pointer kept in a
  stack slot (first at +0x1fc, 2 token stores in all) rather than as part of a store address, and the flush
  that kona.so performs by storing 0xdeadbeef at pointer offset 16352 (`HP_WG_FLUSH_1`) is replaced by a load
  of the word at +16 of the screen private record and a dereference of it whose value is discarded, and 84%
  of its instructions line up with kona.so after address normalisation, 91% once register numbers are ignored
  in a routine of 2140 bytes against 2128.
- `konFillSpansTiledCAccel` (konal.so, address 0x143b630): **established.** Tiled span fill for the
  accelerated path, shaped like the stippled one: `kon_loadAccelGC`, `kon_loadTilePlane` and
  `kon_loadClipRects` prepare the pipe, then `HP_X_SPANS6`, `HP_X_SPANS2` and
  `HP_X_SPANS` send the clipped spans and `kon_unloadStipple` releases the tile. The command set matches
  kona.so token for token (`HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_SPANS6` and 2 others), but every token
  travels as data at offset 0 of the pointer kept in a stack slot (first at +0x184, 5 token stores in all)
  rather than as part of a store address, and where kona.so calls `KonSeqData6_ip19` to copy fixed-length
  payloads konal.so stores the words inline, one `lw` and `sw` pair per word, with no `KonSeqData` call at
  all, with 54% of the instructions unchanged from kona.so once addresses are normalised, 84% once register
  numbers are ignored and the size 1436 bytes against 1220.
- `konExpandStipple` (konal.so, address 0x143be30): **established.** Expands a stipple bitmap to a wider
  one: allocates the pixmap with `nfbCreatePixmap` and replicates the source rows into it by two `bcopy`
  loops, to reach a width the pipe's stipple memory takes. Same code as kona.so with 8 words re-addressed for
  this module (6 load offsets and 2 low address halves, beginning at +0x10), nothing else in the 187 words
  changing, with the gp offset in the prologue at 0xe3e10 here against 0xe06f8 there.
- `konValidateSwapbuf` (konal.so, address 0x143f300): **established.** Window hook +36 that validates a
  window's swap buffer with the kernel: it sends the rendering-node id (rrm private +12), the window's XID
  and the display id (+20) as `RRM_VALIDATESWAPBUF` (1012), sets word +20 of the module's window private to 1
  and bumps its byte +24, for the window and its descendants that share the same buffer. It then marks the
  resource valid through `rrmSetResourceMask` with bit 0x8. Beyond 20 load offsets and 8 low address halves
  (beginning at +0x10), which make up 28 of its 206 words, nothing separates this build from kona.so, and its
  prologue builds the global pointer from 0xe0940 where kona.so uses 0xdd228.
- `konSlowSegmentSD` (konal.so, address 0x1441600): **established.** Host-drawn dashed segments:
  `kon_loadGC` loads the state, `miZeroClipLine` clips each segment, `miStepDash` steps the dash pattern and
  `konBresD` draws the pieces through the pipe after `HP_X_LOADPOS` and `HP_X_LOADCLIP`. The command set
  matches kona.so token for token (`HP_X_LOADPOS` and `HP_X_LOADCLIP`), but every token travels as data at
  offset 0 of the pointer kept in a stack slot (first at +0x17c, 2 token stores in all) rather than as part
  of a store address, and 61% of its instructions line up with kona.so after address normalisation, 92% once
  register numbers are ignored in a routine of 2820 bytes against 2804.
- `konPolyGlyphBltSolid` (konal.so, address 0x1442ff0): **established.** General solid poly-text for any
  font width: `QueryGlyphExtents` first measures the string, then `kon_loadBitmapGC` and the same clip,
  scissor and `HP_X_PIX_WRITE` pixel path as the fixed-width routines; `nfbSolidPolyGlyphBlt` does the rest.
  Token framing is where this build departs from kona.so, since the token words (`HP_X_LOADPOS`,
  `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR` and 3 others) are written to offset 0 of the saved FIFO pointer, the
  first at +0x4d0, with the payload words trailing them at offset 0, and 59% of its instructions line up with
  kona.so after address normalisation, 93% once register numbers are ignored in a routine of 2704 bytes
  against 2656.
- `kon_initGCCaches` (konal.so, address 0x1446630): **established.** Allocates the 512-byte cache of 32
  sixteen-byte cache nodes (`Xalloc`), numbers them 0-31 and chains them into a doubly linked list in the
  screen record (+100, +104, +108), returning 1 on success and 0 when the allocation fails. No register is
  touched. All 86 words of the body match kona.so apart from 4 whose 16-bit immediate differs (2 load
  offsets, 1 low address half and 1 high address half, beginning at +0xc), so opcodes, registers and branch
  offsets are identical, the prologue's gp constant reading 0xd9610 instead of 0xd5f38.
- `kon_initCursorCaches` (konal.so, address 0x144abb0): **established.** Allocates the 624-byte cache of 39
  sixteen-byte nodes (`Xalloc`) used for cursor images, numbers them 0-38 and links them into a list in the
  screen record (+116, +120, +124). Returns 1 on success and 0 when the allocation fails. No register is
  touched. Same code as kona.so with 2 words re-addressed for this module (1 load offset and 1 low address
  half, the first at +0x10), nothing else in the 77 words changing, and its prologue builds the global
  pointer from 0xd5090 where kona.so uses 0xd19a8.
- `konSlowSegmentSS` (konal.so, address 0x144c440): **established.** Host-drawn solid segments:
  `kon_loadGC`, then `miZeroClipLine` clips each segment and `konBresS` steps the pixels, sending
  `HP_X_LOADPOS`, `HP_X_LOADCLIP` and `HP_X_BOX` per run. Traces with
  "konSlowSegmentSS" and `ErrorF`. Every command (`HP_X_LOADPOS`,
  `HP_X_LOADCLIP` and `HP_X_BOX`) begins here with a word holding the token number, stored at offset 0 of the
  saved FIFO pointer from +0x17c, in place of kona.so's store at the pointer plus 32 times the token, and its
  payload words follow at offset 0, with 58% of the instructions unchanged from kona.so once addresses are
  normalised, 89% once register numbers are ignored and the size 3924 bytes against 3892.
- `konStereoPutImage` (konal.so, address 0x144d8a0): **established.** PutImage under stereo (slot +8). Per
  eye it installs the plain table saved at private +92, picks the buffer word at private +96 for the first
  eye and +100 for the second, offsets the y position by the halfword at screen +226, refreshes the context
  through `konValidateWindowGC` (mask 8192) and calls the original operation. After the second call it puts
  the position, buffer word and operations table back. No register is written directly. Compared with kona.so
  only immediates move, 6 of the 218 words (5 load offsets and 1 low address half, the first at +0x10) since
  this module's data and table layout differ, and its prologue builds the global pointer from 0xd23a0 where
  kona.so uses 0xcecd8.
- `konTiledCAccelFillRects` (konal.so, address 0x14515b0): **established.** Tiled rectangle fill for the
  accelerated path: `kon_loadGC` for colours, `kon_loadTilePlane` for the tile, then `HP_X_LOADPOS`,
  `HP_X_LOADCLIP` and the `HP_X_BOX6` and `HP_X_DATA10` to
  `HP_X_DATA2` box batches, with `kon_unloadStipple` at the end. Its trace string says "konSolidFillRects",
  copied from the solid fill. konal.so writes its 9 token stores (`HP_X_LOADPOS`, `HP_X_LOADCLIP`,
  `HP_X_BOX6` and 6 others) as the token number in a word at offset 0 of the FIFO pointer saved in the frame
  (first at +0xa4), followed by the payload words at that offset, where kona.so addresses the command at the
  pointer plus 32 times the token, while the burst-copy calls of kona.so (`KonSeqData11_ip19`,
  `KonSeqData9_ip19`, `KonSeqData7_ip19` and 2 others) become unrolled word stores, which accounts for most
  of the growth from 968 to 1580 bytes, with 31% of the instructions unchanged from kona.so once addresses
  are normalised, 50% once register numbers are ignored and the size 1580 bytes against 968.
- `kon_GCOpsCacheInit` (konal.so, address 0x1452180): **established.** Clears the module's cache of
  drawing-operation sets: a loop that stores zero into each of 2048 word entries of a table in the module's
  data. Run when the screen is set up so no stale operation set is used. Beyond 2 low address halves
  (earliest at +0xc), which make up 2 of its 27 words, nothing separates this build from kona.so, and its
  prologue builds the global pointer from 0xcdac0 where kona.so uses 0xca658.
- `kon_hitCachedStipple` (konal.so, address 0x1454720): **established.** Marks a cached stipple as most
  recently used. The argument is a cache node with previous and next links at +4 and +8; the list head and
  tail sit at +104 and +108 of the screen private record. A node already at the head is left alone, otherwise
  it is unlinked (from the tail or the middle) and relinked at the head, and the function returns non-zero.
  The routine is 78 instructions long. Same code as kona.so with 2 words re-addressed for this module (1 load
  offset and 1 low address half, earliest at +0xc), nothing else in the 78 words changing, with the gp offset
  in the prologue at 0xcb520 here against 0xc80b8 there.
- `konStereoCopyPlane` (konal.so, address 0x1454f10): **established.** Stereo version of the plane-copy
  slot (+16). It temporarily restores the plain operations table from private +92 and calls the saved
  operation for each eye in turn, using private +96 and +100 as the draw-buffer words and moving the y
  position by the offset at screen +226, with the context revalidated through `konValidateWindowGC` and mask
  8192 beforehand. The original table, position and buffer word are put back at the end and the routine
  writes no pipe register. Checked against kona.so word by word, 307 of 314 words are bit-identical and the 7
  others differ only in their 16-bit immediate (5 load offsets, 1 low address half and 1 high address half,
  starting at +0xc) (gp offset 0xcad30, kona.so 0xc78c8).
- `konBlankScreen` (konal.so, address 0x1455f70): **established.** The screen-saver blank entry: it calls
  `konTempBlankAllChannels` with the blank value and returns 1. Checked against kona.so word by word, 18 of
  21 words are bit-identical and the 3 others differ only in their 16-bit immediate (1 load offset, 1 low
  address half and 1 high address half, the first at +0xc) (gp offset 0xc9cd0, kona.so 0xc6868).

### Frame-buffer layer (`nfb*`)

- `nfbStereoImageText16` (konal.so, address 0x13b9c40): **established.** Stereo ImageText16: calls the
  ImageText16 entry (+64) of the context operations table four times, so the text lands in both eye buffers;
  it calls no named routine. The routine is 118 instructions long. Relocation is the entire difference from
  kona.so, since 1 load offset and 1 low address half change (starting at +0x20) and every other bit of the
  118-word routine stays the same.
- `nfbGetImage` (konal.so, address 0x13bc060): **established.** GetImage entry for the frame-buffer layer:
  selects by the drawable's depth, calls `cfbGetImage` or `cfb32GetImage` for the supported depths, clears
  the output area with `bzero` when needed, finds the lowest set plane with `ffs`, and calls `FatalError`
  with "invalid depth" for any other. Compared with kona.so only immediates move, 18 of the 377 words (10
  load offsets, 7 low address halves and 1 high address half, the first at +0x48) since this module's data
  and table layout differ.
- `nfbTiledFillRects` (konal.so, address 0x13c7b30): **inferred.** Tiled rectangle fill hook on the
  frame-buffer path, the twin of `nfbSolidFillRects`: it loads the tile width and height from halfwords at
  +12 and +14 of the tile pixmap and calls the tiled-fill entry (+28) of the ops table found through the
  screen private. Beyond 2 load offsets, 1 low address half and 1 high address half (earliest at +0x10),
  which make up 4 of its 39 words, nothing separates this build from kona.so, and its prologue builds the
  global pointer from 0x158110 where kona.so uses 0x14bb58.
- `nfbRealizeWindow` (konal.so, address 0x13c9ca0): **established.** The frame-buffer layer's
  realize-window procedure; it settles the window's display-id bits and its layer counts. For a viewable
  window (word +124 bit 10) it first adds one to the per-layer count of the pipe record (table at +64,
  indexed by frame-buffer private +24, the layer). A window with a parent then goes through `nfbSetDidFlags`.
  When its layer differs from the parent's it adds one to frame-buffer private +28 of every ancestor
  (**inferred** a count of descendants in another layer). For the root window it sets bit (1 << layer) in
  private +36, passes a box of the whole screen to the screen procedure at +372 with that layer's region, and
  calls the root set-up at 0x14bc730 (`nfbInitRootWindow`). It returns 1. Beyond 3 load offsets and 1 low
  address half (beginning at +0xc), which make up 4 of its 100 words, nothing separates this build from
  kona.so, the prologue's gp constant reading 0x155fa0 instead of 0x149ae8.
- `nfbPolyFillRect` (konal.so, address 0x13cf060): **established.** PolyFillRect entry. It fetches the
  composite clip region through the entry at +396 of the context's operation table and intersects every
  rectangle with the region's boxes by hand (a loop over 8-byte boxes), using a stack buffer for up to 1024
  results and a larger block otherwise, then hands the clipped list to the solid or tiled fill. The
  instruction stream is word for word that of kona.so except for 1 load offset, 1 low address half and 1 high
  address half, 3 words in all (beginning at +0x2c).
- `nfbInstallHWColormap` (konal.so, address 0x13d0930): **established.** Gives a colormap a hardware slot
  of its visual's group and runs the group's install hook; it loads no colours itself. It takes (colormap).
  Its address is the table word, between destroy and uninstall (**inferred** install-colormap slot).
  Relocation is the entire difference from kona.so, since 8 load offsets, 1 low address half and 1 high
  address half change (the first at +0x5c) and every other bit of the 230-word routine stays the same.
- `nfbSetStereoMode` (konal.so, address 0x13d2650): **established.** Switches a screen into or out of
  stereo by swapping screen procedures and rrm hooks for stereo versions. It takes (screen, a, b, mode); the
  current mode is word +220 of the pipe record. The same mode again returns 0; a change between two non-zero
  modes returns 8, the X match error. Entering stereo, it saves screen procedures +216, +220 and +224 and rrm
  hooks +28, +36 and +76 in the pipe record (+228 to +248). It installs this module's stereo procedures at
  those three screen slots and stereo versions of the clip validation (+28), the swap-buffer validation (+36)
  and the hook at +76. It stores b at pipe record halfword +226, the eye offset the stereo wrappers add
  (wrappers), and a, clamped so that a + b fits the screen height, at +224. It then repaints through the
  screen procedure at +340 and, by the calls it makes, creates a server-owned colormap and window, maps it
  and confines the pointer (`ConfineCursorToWindow`), resizing the root window's extents. The leave path
  frees those resources. Compared with kona.so only immediates move, 43 of the 488 words (32 load offsets, 10
  low address halves and 1 high address half, starting at +0x14) since this module's data and table layout
  differ.
- `nfbHWStoreColors` (konal.so, address 0x13d6ba0): **established.** Sends colours to the hardware colormap
  by an indirect call to the saved hardware function; it is the 52-byte pass-through used by
  `nfbStoreColors`. Beyond 2 low address halves and 1 high address half (earliest at +0x64), which make up 3
  of its 52 words, nothing separates this build from kona.so.
- `nfbStereoPolyFillArc` (konal.so, address 0x13daea0): **established.** Stereo PolyFillArc: allocates a
  scratch arc array with `Xalloc`, calls the PolyFillArc entry (+48) four times across both eyes, and frees
  the array with `Xfree`. The instruction stream is word for word that of kona.so except for 3 load offsets
  and 1 low address half, 4 words in all (beginning at +0x34).
- `nfbStereoPolyText16` (konal.so, address 0x13dcc70): **established.** Stereo PolyText16 wrapper: invokes
  the PolyText16 entry (+56) of the context operations table four times, once for each eye buffer and again
  after the buffer swap that follows, with no other callee. The routine is 118 instructions long. Checked
  against kona.so word by word, 115 of 118 words are bit-identical and the 3 others differ only in their
  16-bit immediate (1 load offset, 1 low address half and 1 high address half, beginning at +0x18).
- `nfbValidateWindowVisual` (konal.so, address 0x13e0910): **inferred.** Re-validates a window against the
  screen's visual list. It calls the screen function entries at +344 (twice), +360 and +364 and reads the
  screen record's visual array at +108; the result decides whether the window keeps its visual. The routine
  is 105 instructions long. The instruction stream is word for word that of kona.so except for 1 load offset,
  1 low address half and 1 high address half, 3 words in all (earliest at +0x1c).
- `nfbStereoRegisterWrapperOps` (konal.so, address 0x13eef90): **established.** Six instructions that store
  its one argument (the stereo wrapper table to use) into a module global; nothing else happens, no pipe
  command is sent and nothing is called. The routine is 6 instructions long. Only the layout-dependent
  immediates differ from kona.so, namely 1 load offset, 1 low address half and 1 high address half (beginning
  at +0x0), and the other 3 of 6 words are bit-identical, and its prologue builds the global pointer from
  0x130cb0 where kona.so uses 0x124dc8.
- `nfbAbort` (konal.so, address 0x13ff5d0): **established.** Calls the C library `abort` and does nothing
  else; it is the fatal-error exit of the frame-buffer layer. Checked against kona.so word by word, 11 of 13
  words are bit-identical and the 2 others differ only in their 16-bit immediate (1 load offset and 1 low
  address half, first seen at +0x8), with the gp offset in the prologue at 0x120670 here against 0x11ba38
  there.
- `nfbTellGainedMap` (konal.so, address 0x13fff40): **inferred.** Tells a window that its colormap was
  installed: it finds the window with `FindWindowWithOptional`, reads the colormap records at +72 and +200 of
  the screen and sends the notify event through `DeliverEvents`. The instruction stream is word for word that
  of kona.so except for 5 load offsets and 1 low address half, 6 words in all (the first at +0x24).
- `nfbChangeWindowAttributes` (konal.so, address 0x1402540): **established.** Follows a colormap change
  through to the display-id bits. When the change mask has the colormap bit (0x2000) it compares the window's
  new colormap with its parent's. It records the result in frame-buffer private +32 bit 0x10 (set when they
  differ) and re-runs `nfbSetDidFlags` on the window. All 167 words of the body match kona.so apart from 9
  whose 16-bit immediate differs (8 load offsets and 1 low address half, earliest at +0x24), so opcodes,
  registers and branch offsets are identical.
- `nfbGetLayerWindow` (konal.so, address 0x14027e0): **inferred.** Finds the window to use for a layer. It
  follows the parent and sibling links of the window (+24, +28), builds a bit mask by shifting one by each
  window's layer number, skips windows whose +124 flag bit 0x400 is set, and writes the result into +72 of
  the screen private; 257 instructions with no calls. Checked against kona.so word by word, 257 of 262 words
  are bit-identical and the 5 others differ only in their 16-bit immediate (4 load offsets and 1 low address
  half, earliest at +0x8) (gp offset 0x11d460, kona.so 0x118b78).
- `nfbMoveWindow` (konal.so, address 0x1404320): **established.** Window move: mirrors the sample server's
  MoveWindow. It allocates a region with `Xalloc` ("Couldn't allocate storage in MoveWindow"), calls
  `SetWinSize` and `SetBorderSize`, restacks with `MoveWindowInStack`, resizes children with
  `ResizeChildrenWinSize` and runs the screen hooks around them (entries +336 to +492), noting the change in
  `WindowsRestructured`. All 284 words of the body match kona.so apart from 13 whose 16-bit immediate differs
  (10 load offsets, 2 low address halves and 1 high address half, earliest at +0x24), so opcodes, registers
  and branch offsets are identical.
- `nfbStereoPutImage` (konal.so, address 0x1408bd0): **established.** Stereo PutImage wrapper: calls the
  PutImage entry (+8) of the operations table four times so the image is written to both eye buffers. The
  routine is 149 instructions long. Compared with kona.so only immediates move, 2 of the 149 words (1 load
  offset and 1 low address half, the first at +0x28) since this module's data and table layout differ.
- `nfbShmCreatePixmap` (konal.so, address 0x140d100): **inferred.** Shared-memory pixmap creation:
  allocates the header with `Xalloc`, rejects depths it cannot hold with the `ErrorF` message "unsupported
  depth", fills in the padding from `PixmapWidthPaddingInfo` and numbers the pixmap from
  `globalSerialNumber`. Only the layout-dependent immediates differ from kona.so, namely 6 load offsets and 3
  low address halves (first seen at +0x8), and the other 103 of 112 words are bit-identical, and its prologue
  builds the global pointer from 0x112b40 where kona.so uses 0x10e2c8.
- `nfbCloseScreen` (konal.so, address 0x140dda0): **established.** CloseScreen entry: calls nine screen
  entries at +352 to release resources, then frees memory with `Xfree`, 62 instructions in all. Beyond 1 load
  offset and 1 low address half (the first at +0x30), which make up 2 of its 62 words, nothing separates this
  build from kona.so.
- `nfbStereoPolyText8` (konal.so, address 0x1411460): **established.** Stereo PolyText8 wrapper: the
  context operations table's PolyText8 entry (+52) is called four times, covering both eye buffers; it is the
  8-bit twin of `nfbStereoPolyText16`. Checked against kona.so word by word, 116 of 118 words are
  bit-identical and the 2 others differ only in their 16-bit immediate (1 load offset and 1 low address half,
  earliest at +0x20).
- `nfbSlideAndSizeWindow` (konal.so, address 0x1411c20): **established.** Combined move and resize. It
  follows the sample server's SlideAndSizeWindow: `UnmapWindow` when needed, `GravityTranslate` for bit
  gravity, `TraverseTree` over the children, `SetWinSize`, `SetBorderSize`,
  `MoveWindowInStack` and `ResizeChildrenWinSize`, calling many screen entries (+336 to +492) and
  `WindowsRestructured` at the end. All 1414 words of the body match kona.so apart from 39 whose 16-bit
  immediate differs (33 load offsets and 6 low address halves, the first at +0x4c), so opcodes, registers and
  branch offsets are identical.
- `nfbLayerValidateTreeSL` (konal.so, address 0x1417bf0): **inferred.** Validates the window tree for the
  layered visual scheme: iterates windows through screen entries (+340 to +464), calls `nfbUnmapTree` for
  windows that must be unmapped and `konInitiateBufferSwap` when a swap is due, stamping the pass with
  `globalSerialNumber`. Compared with kona.so only immediates move, 11 of the 768 words (7 load offsets, 3
  low address halves and 1 high address half, earliest at +0x34) since this module's data and table layout
  differ.
- `nfbUninstallColormap` (konal.so, address 0x141dd90): **established.** Puts the screen's default colormap
  back when the colormap being uninstalled is the one recorded as installed. It takes (colormap) and compares
  it with the word at pipe record +128. When they match and the colormap is not the screen's default (screen
  record +28), it looks the default up as a resource of type 6 and passes it to the screen's install function
  (screen record +316). Otherwise it returns; it does not touch hardware slots itself. The instruction stream
  is word for word that of kona.so except for 1 load offset and 1 low address half, 2 words in all (beginning
  at +0x1c), with the gp offset in the prologue at 0x101eb0 here against 0xfd658 there.
- `nfbChangeSaveUnder` (konal.so, address 0x141f690): **inferred.** ChangeSaveUnder entry: walks the
  affected windows using screen entries +340 and +352, adjusts `numSaveUndersViewable` and
  `deltaSaveUndersViewable`, and calls two indirect hooks for each changed window. Compared with kona.so only
  immediates move, 8 of the 134 words (5 load offsets and 3 low address halves, earliest at +0x28) since this
  module's data and table layout differ.
- `nfbStoreColors` (konal.so, address 0x1422b60): **inferred.** StoreColors entry: when the colormap is the
  installed one and the count is positive it calls the hardware store hook at +136 once per 12-byte colour
  cell. Beyond 1 low address half (starting at +0x30), which make up 1 of its 42 words, nothing separates
  this build from kona.so.
- `nfbStereoFillPolygon` (konal.so, address 0x1423a00): **established.** Stereo FillPolygon: copies the
  point list into memory from `Xalloc`, calls the FillPolygon entry (+40) of the operations table four times
  for both eyes, and releases the copy with `Xfree`. Relocation is the entire difference from kona.so, since
  3 load offsets and 1 low address half change (starting at +0x44) and every other bit of the 203-word
  routine stays the same.
- `nfbSetSpans` (konal.so, address 0x1423d40): **inferred.** SetSpans entry: looks up the padding for the
  drawable's depth in `PixmapWidthPaddingInfo` and calls the per-depth entry at +0 for each span, in two call
  sites (clipped and unclipped). Only the layout-dependent immediates differ from kona.so, namely 4 load
  offsets, 1 low address half and 1 high address half (earliest at +0x30), and the other 287 of 293 words are
  bit-identical.
- `nfbFillSpans` (konal.so, address 0x1424d90): **established.** FillSpans entry: when the clip is complex
  it finds the widest band with `miFindMaxBand` and trims the spans with `miClipSpans` (called at two places)
  before they reach the pipe path. Beyond 3 load offsets, 1 low address half and 1 high address half
  (starting at +0x24), which make up 5 of its 72 words, nothing separates this build from kona.so.
- `nfbStippledFS` (konal.so, address 0x1425420): **inferred.** Stippled span fill: reads the span list and
  calls the depth table's entry at +0 from three places, one per stipple style. The routine is 161
  instructions long. Checked against kona.so word by word, 159 of 163 words are bit-identical and the 4
  others differ only in their 16-bit immediate (2 load offsets, 1 low address half and 1 high address half,
  first seen at +0x20).
- `nfbPostChangeSaveUnder` (konal.so, address 0x1428f70): **inferred.** PostChangeSaveUnder entry: after
  the change it calls an indirect hook at two points; it keeps no counters of its own, 76 instructions. All
  76 words of the body match kona.so apart from 1 whose 16-bit immediate differs (1 low address half, the
  first at +0x28), so opcodes, registers and branch offsets are identical.
- `nfbPaintWindowBorder` (konal.so, address 0x142b980): **established.** PaintWindowBorder entry: if the
  request is not for the border it prints "what != PW_BORDER" with `ErrorF`; otherwise it asks
  `nmbxCanSupportBuffers` whether the window has multibuffers and paints with entry +28 or +4 using the
  window private from `dbcWindowPrivateIndex`. The instruction stream is word for word that of kona.so except
  for 5 load offsets and 2 low address halves, 7 words in all (earliest at +0x14), the prologue's gp constant
  reading 0xf42c0 instead of 0xf04f8.
- `nfbImageGlyphBlt` (konal.so, address 0x142bb80): **inferred.** ImageGlyphBlt on the frame-buffer path:
  measures the string with `QueryGlyphExtents`, calls the clip entry at +380 and draws the cell background
  and the glyph bits through the entries at +4 and +12 of the screen's operation table; 814 instructions.
  Only the layout-dependent immediates differ from kona.so, namely 3 load offsets and 1 low address half
  (starting at +0x64), and the other 818 of 822 words are bit-identical.
- `nfbUnmapTree` (konal.so, address 0x142f670): **inferred.** Unmaps a window subtree: for each window it
  calls `nfbSetDidFlags` to drop the display-ID state kept for it; short, 101 instructions. The instruction
  stream is word for word that of kona.so except for 3 load offsets and 1 low address half, 4 words in all
  (starting at +0xc) (gp offset 0xf05d0, kona.so 0xec838).
- `nfbGetSpans` (konal.so, address 0x1431000): **established.** GetSpans entry: dispatches on the
  drawable's depth to one of seven copy loops and calls `FatalError` with "nfbGetSpans: invalid depth" if
  none fits. The pixmap width padding is read from `PixmapWidthPaddingInfo`. Beyond 8 load offsets, 2 low
  address halves and 1 pc-relative call distance (starting at +0x4c), which make up 11 of its 190 words,
  nothing separates this build from kona.so.
- `nfbRecolorCursor` (konal.so, address 0x1431380): **established.** RecolorCursor entry: when the cursor
  argument is non-null it calls the screen's recolour hook at +284, passing the arguments through. The
  routine is 14 instructions long. Compared with kona.so only immediates move, 1 of the 14 words (1 low
  address half, the first at +0xc) since this module's data and table layout differ (gp offset 0xee8c0,
  kona.so 0xeab28).
- `nfbFreeHWCmapArrays` (konal.so, address 0x14315a0): **established.** Frees the arrays that hold a
  hardware colormap: loops over two arrays of 24-byte and 28-byte records, freeing each non-null block with
  `Xfree` unless it is shared with an entry already freed. Compared with kona.so only immediates move, 3 of
  the 108 words (2 load offsets and 1 low address half, first seen at +0x50) since this module's data and
  table layout differ.
- `nfbMarkOverlappedWindows` (konal.so, address 0x14338f0): **inferred.** Walks the sibling windows with
  the screen entry at +396 and calls `nfbMarkWindow` at six places to flag each window whose region the
  changed window overlaps; 671 instructions, mostly region comparisons. Only the layout-dependent immediates
  differ from kona.so, namely 13 load offsets and 1 low address half (first seen at +0x48), and the other 666
  of 680 words are bit-identical.
- `nfbHoriz` (konal.so, address 0x143c120): **established.** Draws one horizontal run for a zero-width
  segment: compares the two x coordinates, swaps them if reversed, stores the clamped pair back and calls the
  span entry through a function pointer with a count of one. The routine is 34 instructions long. The
  instruction stream is word for word that of kona.so except for 1 low address half, 1 words in all (earliest
  at +0x24).
- `nfbSolidFillRects` (konal.so, address 0x143fce0): **inferred.** Solid rectangle fill hook on the
  frame-buffer path. It reads the window and screen privates through two private-index globals, then calls
  the solid-fill entry (+4) of the ops table found there with the colour word at +64 and the depth byte at
  +72. The routine is 31 instructions long. Relocation is the entire difference from kona.so, since 2 load
  offsets and 1 low address half change (beginning at +0xc) and every other bit of the 31-word routine stays
  the same, and its prologue builds the global pointer from 0xdff60 where kona.so uses 0xdc848.
- `nfbInstallColormap` (konal.so, address 0x14474d0): **inferred.** InstallColormap entry: three
  `WalkTree` passes call `TellLostMap` for windows of the old map and `TellGainedMap` for those of the new
  map, and the hardware install hook at +136 is called once. Same code as kona.so with 6 words re-addressed
  for this module (4 load offsets, 1 low address half and 1 high address half, earliest at +0x20), nothing
  else in the 82 words changing.
- `nfbCopyPlane` (konal.so, address 0x14481b0): **inferred.** CopyPlane entry for the frame-buffer layer.
  Depending on the drawable's depth it calls `cfb16CopyPlane`, `cfbCopyPlane` or the generic `miCopyPlane`,
  bracketing the copy with the screen's clip and region entries at +340, +352 and +356. Beyond 6 load offsets
  and 1 low address half (the first at +0x20), which make up 7 of its 330 words, nothing separates this build
  from kona.so.
- `nfbSolidZeroSeg` (konal.so, address 0x144a1d0): **established.** Zero-width segment drawing: handles the
  horizontal and vertical cases itself with `nfbHoriz` and `nfbVert` (the latter called seven times) and
  calls an indirect entry for the diagonal case. Relocation is the entire difference from kona.so, since 14
  load offsets and 1 low address half change (starting at +0x2c) and every other bit of the 497-word routine
  stays the same.
- `nfbSetStereoBuffer` (konal.so, address 0x1452ee0): **established.** Selects which eye buffer a window
  draws to. It tests the screen record's stereo word (+220) and the window's flags, updates the window
  private's buffer fields at +52 and +56, and when the state changes allocates a clip id with `FindFreeCID`,
  invalidates the old one with `rrmInvalidateCID` and revalidates with `rrmValidateCID`. Relocation is the
  entire difference from kona.so, since 8 load offsets and 1 low address half change (earliest at +0x8) and
  every other bit of the 104-word routine stays the same (gp offset 0xccd60, kona.so 0xc98f8).

### Resource manager client and identifier allocation

- `StealID` (konal.so, address 0x13b32a0): **established.** Takes (window) and frees a display id for it in
  three passes over the ids of the window's kind. The first moves the holder of an unshared id onto another
  id whose recorded mode equals the holder's (`compareModes`), calling hook +32 on the holders when their
  byte +6 has bit 0x8. The second walks from the cursor at screen private +132 and asks a helper to vacate
  the first holder of each unshared id. The third, from the same cursor, takes any id of the kind without bit
  0x1, hands the old holders and that id to a second helper together with the `cmapDID` id of the first
  holder, and gives the id to the window. Relocation is the entire difference from kona.so, since 13 load
  offsets, 8 low address halves and 1 high address half change (earliest at +0x28) and every other bit of the
  282-word routine stays the same.
- `UnsetReservedID` (konal.so, address 0x13b81c0): **established.** Clears the occupied bit 0x2 of an id's
  entry flags (+16); it takes (screen, id). `nfbUninstallHWColormap` calls it to release a colour map's
  reservation, a path this module never takes because its descriptor leaves reservations off. Same code as
  kona.so with 2 words re-addressed for this module (1 load offset and 1 low address half, starting at +0x4),
  nothing else in the 18 words changing (gp offset 0x167a80, kona.so 0x15b198).
- `rrmMapWindow` (konal.so, address 0x13ba810): **inferred.** Called when a window is mapped: bumps the
  private counters with `incrRRMpriv` and `incrRRMFlags`, takes identifiers from `FindFreeID` or
  `FindBestID` and `FindFreeCID`, then validates the clip id through `rrmValidateCID`. All 107 words of the
  body match kona.so apart from 14 whose 16-bit immediate differs (11 load offsets, 2 low address halves and
  1 pc-relative call distance, the first at +0x1c), so opcodes, registers and branch offsets are identical,
  with the gp offset in the prologue at 0x165430 here against 0x158db8 there.
- `FindBestID` (konal.so, address 0x13c9e30): **established.** Takes (window) and picks a display id for
  it. It scans the ids and remembers the best one whose recorded modes match the window's (`compareModes`); a
  shared id (flag 0x4) of the window's own kind is joined at once. A remembered match is otherwise announced
  to its holders through hook +32 before the window is given the id. With no match, or an empty table, it
  asks `cmapDID` and gives the window that id unless it already holds it. Compared with kona.so only
  immediates move, 13 of the 106 words (8 load offsets and 5 low address halves, earliest at +0x28) since
  this module's data and table layout differ.
- `rrmDestroyDrawable` (konal.so, address 0x13cb150): **established.** Frees a drawable's rendering-manager
  state: cancels any delayed validation with `rrmDelayValidateClipCancel`, calls the screen entries +60, +96
  and +68, and frees the private block with `Xfree`. Same code as kona.so with 5 words re-addressed for this
  module (4 load offsets and 1 low address half, earliest at +0x14), nothing else in the 66 words changing
  (gp offset 0x154af0, kona.so 0x148638).
- `decrRRMFlags` (konal.so, address 0x13cb260): **established.** The inverse walk: it subtracts one from
  word +16 of the window and each ancestor. Relocation is the entire difference from kona.so, since 2 load
  offsets and 1 low address half change (beginning at +0x8) and every other bit of the 21-word routine stays
  the same (gp offset 0x1549e0, kona.so 0x148528).
- `rrmNeedCID` (konal.so, address 0x13cd150): **established.** Hook +92: it returns 1 unless the window's
  clip list is empty or fits within the rectangle count at rrm private +8. With this module's 0 at +8 that is
  every window with a non-empty clip. All 24 words of the body match kona.so apart from 3 whose 16-bit
  immediate differs (1 load offset, 1 low address half and 1 high address half, the first at +0x0), so
  opcodes, registers and branch offsets are identical, and its prologue builds the global pointer from
  0x152af0 where kona.so uses 0x146648.
- `rrmUnmapWindow` (konal.so, address 0x13cd2e0): **established.** Called when a window is unmapped: frees
  the window's display id and its swap id with two `FreeID` calls and invokes the screen entries at +32 and
  +108. Beyond 8 load offsets, 1 low address half, 1 high address half and 1 pc-relative call distance (the
  first at +0x14), which make up 11 of its 71 words, nothing separates this build from kona.so, the
  prologue's gp constant reading 0x152960 instead of 0x1464b8.
- `rrmUnbindRNFromClip` (konal.so, address 0x13cea20): **established.** Descriptor hook +68: it detaches a
  rendering node from a window and returns the window to plain X drawing. It takes (window, node); a window
  with no rrm private returns at once. It first invalidates every resource the window holds through hook +32
  (`rrmInvalidate` with a zero mask), and drops a queued request when the private flag halfword has bit 0x20.
  For a realized window (word +124 bit 11) it releases the display id with `FreeID`, or just sets it to -1
  when it holds the no-id value (the id count, rrm screen private +0). It releases the clip id too
  (`FreeCID`), and lowers the parent's counters with `decrRRMFlags`. It sets the frame-buffer id (private +4)
  to the colour map's id from `cmapDID`, clears the bound-window list at rrm private +40, unbinding each
  listed window the same way, and frees it. It then sets frame-buffer private +32 bit 0x1 and runs
  `nfbSetDidFlags`; for a realized window it calls hook +72 (`nfbValidateWindowVisual`) with the old id.
  Finally it clears bit 0x1 of the rrm private flag halfword and returns 1. Relocation is the entire
  difference from kona.so, since 24 load offsets, 1 low address half, 1 high address half and 2 pc-relative
  call distances change (earliest at +0x8) and every other bit of the 211-word routine stays the same, with
  the gp offset in the prologue at 0x151220 here against 0x144d78 there.
- `rrmUnqueueRequest` (konal.so, address 0x13cff40): **established.** Removes a window from the doubly
  linked request queue (links at +52 and +56 of the window private), fixing the queue head and tail at +140
  and +144 of the screen private and clearing the flag bit 0x20 at +0. Only the layout-dependent immediates
  differ from kona.so, namely 2 load offsets, 1 low address half and 1 high address half (first seen at
  +0x0), and the other 44 of 48 words are bit-identical, and its prologue builds the global pointer from
  0x14fd00 where kona.so uses 0x143868.
- `FindFreeCID` (konal.so, address 0x13e0670): **established.** Gives a window a clip id, the hardware tag
  that lets a window with a complex clip be drawn without per-rectangle clipping (**inferred** from
  `rrmNeedCID`). It works on the clip-id table: 28-byte entries from screen-private +148, count at +4; entry
  +0 first holder, +8 flags, +10 kind, +12 holder count; cursor at +136. It first calls hook +92
  (`rrmNeedCID`) with the window; on 0 it sets the window's clip id to the table count (**inferred** "none").
  A window whose current clip id is not shared (bit 0x4 of entry +8 clear) keeps it. Otherwise it scans for
  an entry of the window's kind without bit 0x1 (a kind-1 window also accepts other kinds when screen word
  +12 has bit 0x2). An entry with no holder is given to the window at once; of the others it remembers the
  last whose first holder's private bytes +4 and +6 differ. When none is remembered it takes the entry after
  the cursor (wrapping to 1, never 0) and advances the cursor. For the chosen entry it sends hook +32
  (`rrmInvalidate`) to the first holder with (2, 0), invalidating its clip, moves that holder to clip id 0
  and gives the window the entry. Both moves go through a static helper (window, id), which frees the
  window's current clip id with `FreeCID` and joins the new one through a static helper, which stores the id
  at private +24 and adds the window as a holder. With `kona.so` the clip-id count is 0, so no clip-id table
  exists and the guarded callers never reach this function (descriptor). Relocation is the entire difference
  from kona.so, since 6 load offsets, 4 low address halves and 1 high address half change (earliest at +0x8)
  and every other bit of the 157-word routine stays the same (gp offset 0x13f5d0, kona.so 0x1331f8).
- `rrmCreateWindow` (konal.so, address 0x13e51d0): **established.** CreateWindow wrapper: clears the
  window's private slot, saves the screen's CreateWindow entry (+112) in the private (+180), calls the
  original and reinstalls the module's function. The routine is 30 instructions long. Beyond 3 load offsets,
  1 low address half and 1 high address half (the first at +0x0), which make up 5 of its 30 words, nothing
  separates this build from kona.so, and its prologue builds the global pointer from 0x13aa70 where kona.so
  uses 0x12e698.
- `incrRRMpriv` (konal.so, address 0x13f4ea0): **established.** Makes sure a window and all its ancestors
  have an rrm private, creating each missing one with `allocRRMpriv`; it returns 0, or 1 when an allocation
  fails. Relocation is the entire difference from kona.so, since 4 load offsets, 1 low address half and 1
  high address half change (first seen at +0x8) and every other bit of the 47-word routine stays the same,
  and its prologue builds the global pointer from 0x12ada0 where kona.so uses 0x11ef48.
- `rrmValidateCID` (konal.so, address 0x13f6550): **inferred.** Revalidates the clip id of a window: reads
  the window private (+76, +92) and screen entries (+32, +344) and calls the manager through an indirect
  pointer twice, six indirect calls in all, to set up the rendering-node binding of the clip. The routine is
  129 instructions long. Only the layout-dependent immediates differ from kona.so, namely 6 load offsets, 2
  low address halves and 1 high address half (earliest at +0x18), and the other 122 of 131 words are
  bit-identical.
- `rrmProcessRequestQueue` (konal.so, address 0x1402c00): **inferred.** Processes queued window requests:
  pops entries with `rrmUnqueueRequest`, gives each window an identifier with `FindFreeID` and a clip id with
  `FindFreeCID`, and calls screen entries +28 and +36; loops until the queue is empty. The command set
  matches kona.so token for token (none), but every token travels as data at offset 0 of the pointer kept in
  a stack slot (first at +0x0, 0 token stores in all) rather than as part of a store address, with 99% of the
  instructions unchanged from kona.so once addresses are normalised and the size 440 bytes against 440. The
  call to `rrmValidateCID` at +0x188 is made with `jalr $25` here, where kona.so uses a pc-relative
  `bal`.
- `ShareSwappingID` (konal.so, address 0x1413e30): **established.** Lets a window that starts a buffer swap
  join a display id already mid-swap in the same mode; it returns 1 when the window was given an id, else 0.
  Pass 1 walks the ids from the highest down to 1 and considers entries with bit 0x10 (swap pending) other
  than the window's own, whose first holder has the same hardware-dependent mode (+36) as the window. For
  each it walks the holder list of id 0 (entry +0 of the table, whatever entry it is considering) and notes
  whether any holder has bit 0x8 in its private byte +4. When none does, it gives the window the entry's id
  through a static helper and returns 1; the scan stops at an entry with bit 0x1. When some holder of id 0
  does, pass 2 walks the same entries again. For each swap-pending entry other than the window's own it calls
  a static routine on the entry once per holder of id 0 with that bit, and gives the window the entry's id if
  `compareModes` accepts the window's modes against it. Bit 0x8 of private byte +4 is the swap-buffer
  resource: `konValidateSwapbuf` sets it after a successful validation (1012) and `rrmInvalidate` clears it
  (hooks). Id 0 is the first of the colour-index ids the server reserves at start-up. **Inferred:** a window
  that starts a swap may join an id that is mid-swap when the modes agree. All 181 words of the body match
  kona.so apart from 11 whose 16-bit immediate differs (6 load offsets, 4 low address halves and 1 high
  address half, earliest at +0x18), so opcodes, registers and branch offsets are identical.
- `rrmInitializeGLStaticColormap` (konal.so, address 0x14187f0): **established.** Loads the fixed colours
  of a 256-entry static-colour colormap from a table in the module. For any other class or size it calls
  `cfbInitializeColormap` instead. The table holds 256 red bytes, then 256 green and 256 blue; each byte is
  shifted into the high half of a 16-bit component. The loop runs 257 times, so it also writes one entry past
  the 256th from the next table's first bytes (**established** from the loop bound, **inferred** a defect
  that the colormap's allocation absorbs). Only the layout-dependent immediates differ from kona.so, namely 3
  load offsets and 2 low address halves (earliest at +0x10), and the other 48 of 53 words are bit-identical,
  the prologue's gp constant reading 0x107450 instead of 0x102bc8.
- `rrmDoubleBufferWindow` (konal.so, address 0x141de00): **established.** Makes the X server's
  double-buffer extension window double-buffered in the pipe. It allocates the rrm private with
  `allocRRMpriv` when there is none (status 11 on failure, the X allocation error). For a window not yet
  bound it sets holder count +8 to 1, flag halfword 5, clears +28 and +30, takes the rendering-node id (+12)
  from pipe record +104 and raises the parent's counters with `incrRRMpriv`. It builds the
  hardware-independent mode (+32) from the mode recorded for the window's current frame-buffer id, with bit
  0x2 (double-buffered) set and bit 0x4 (back buffer shown) clear. The hardware-dependent mode (+36) is that
  id's recorded word +12, or its pending word +28 when reservations are on and the id is marked at +32. It
  clears frame-buffer private +32 bit 0x1, runs `nfbSetDidFlags` and sets the display id to -1. A realized
  window then gets a new id from `FindFreeID`, or from `StealID` when none is free. It loads the new mode
  through hook +40 (`konValidateMode`) and finally calls the screen procedure at +192 with (window, 0); it
  returns 0. Only the layout-dependent immediates differ from kona.so, namely 13 load offsets, 2 low address
  halves and 2 pc-relative call distances (earliest at +0x20), and the other 146 of 163 words are
  bit-identical.
- `FreeID` (konal.so, address 0x1422ac0): **established.** Takes a window off its display id. It takes
  (window), unlinks the window from its display-id entry through the static helper and sets the window's id
  (rrm window private +20) to -1. The helper runs only when the window's private flag halfword has bit 0x8.
  It drops the entry's window count (+20), removes the window from the doubly linked list of holders (window
  privates +44 and +48) and recomputes the entry's flag bits from the list's head and tail. The flag bits are
  settled in the allocator. The instruction stream is word for word that of kona.so except for 2 load offsets
  and 2 low address halves, 4 words in all (beginning at +0x10), with the gp offset in the prologue at
  0xfd180 here against 0xf8f78 there.
- `incrRRMFlags` (konal.so, address 0x1422d60): **established.** Adds one to rrm private word +16 of a
  window and of every ancestor; **inferred** a count of bound descendants. Same code as kona.so with 3 words
  re-addressed for this module (2 load offsets and 1 low address half, the first at +0x8), nothing else in
  the 21 words changing (gp offset 0xfcee0, kona.so 0xf8cd8).
- `allocRRMpriv` (konal.so, address 0x1422dc0): **established.** Creates a window's rrm private: it
  allocates 76 bytes, clears them and stores the record in the window's private slot
  (`rrmWindowPrivateIndex`). It then calls the descriptor's hook +80, `konInitWindowType`, with the window,
  and returns the record, or 0 when the allocation fails. `rrmDoubleBufferWindow` and the two bind functions
  call it. Compared with kona.so only immediates move, 5 of the 52 words (4 load offsets and 1 low address
  half, the first at +0x8) since this module's data and table layout differ, the prologue's gp constant
  reading 0xfce80 instead of 0xf8c78.
- `cmapDID` (konal.so, address 0x1438c00): **established.** Returns the display id that goes with a
  window's colour map. It takes (window) and looks up the window's colormap (the optional record's colormap,
  or none for an input-only window) as a resource of type 6 (colormap). With a colormap whose block word 0 is
  not negative, it returns that slot's +16 field; otherwise it returns word +0 of the visual-table entry for
  the window's visual. **Inferred:** the second form is the id a window gets when its colormap has no slot.
  Callers: the best-id search and the steal function of the allocator. The two unbind functions call it too
  (`rrmUnbindRNFromClip`, `rrmOGLUnbindRNFromClip`). Same code as kona.so with 5 words re-addressed for this
  module (4 load offsets and 1 low address half, starting at +0x24), nothing else in the 90 words changing.
- `rrmInvalidateCID` (konal.so, address 0x143fd60): **established.** Drops a window's clip id when its clip
  changes. A window whose clip id is 0 or the no-id value (the clip-id count) just gets 0. Otherwise it calls
  hook +76 with the id's entry, then the screen procedure at +392; the descriptor leaves +76 empty, and the
  stereo switch installs a stereo routine there. Beyond 2 load offsets and 1 low address half (earliest at
  +0xc), which make up 3 of its 47 words, nothing separates this build from kona.so, and its prologue builds
  the global pointer from 0xdfee0 where kona.so uses 0xdc7c8.
- `rrmBindMultipleClips` (konal.so, address 0x1441290): **inferred.** Binds several clips in one pass:
  allocates an argument array with `Xalloc` and calls the screen entry at +68 for the windows that need a
  bind, 100 instructions. The instruction stream is word for word that of kona.so except for 3 load offsets
  and 1 low address half, 4 words in all (beginning at +0x14), the prologue's gp constant reading 0xde9b0
  instead of 0xdb298.
- `rrmDestroyWindow` (konal.so, address 0x144d4a0): **established.** DestroyWindow wrapper: calls the saved
  screen entries +100 and +116 and then puts the module's function back at +184 of the screen. The routine is
  33 instructions long. Only the layout-dependent immediates differ from kona.so, namely 2 load offsets and 1
  low address half (starting at +0x14), and the other 30 of 33 words are bit-identical, with the gp offset in
  the prologue at 0xd27a0 here against 0xcf0d8 there.
- `FreeCID` (konal.so, address 0x14520f0): **established.** Takes a window off its clip id. It calls the
  leave helper with the window and its entry (28-byte entries at screen private +148, index rrm window
  private +24), then sets the window's clip id to 0, an entry the allocator never hands out. The helper runs
  only when the window's private flag halfword has bit 0x40. It unlinks the window from the holders (window
  privates +60 and +64), drops the entry's count (+12) and recomputes the entry's flags (+8) from bit 0x1 and
  the holders that remain. All 35 words of the body match kona.so apart from 5 whose 16-bit immediate differs
  (3 load offsets and 2 low address halves, earliest at +0x14), so opcodes, registers and branch offsets are
  identical, with the gp offset in the prologue at 0xcdb50 here against 0xca6e8 there.
- `rrmDisposeClip` (konal.so, address 0x1456900): **established.** Releases a window's clip in the kernel:
  sends ioctl 1004 (`RRM_UNBINDRNFROMCLIP`) and, on failure (return -1), prints "Failed to unbind rn from
  clip" with the node id and errno using `ErrorF`. Checked against kona.so word by word, 22 of 29 words are
  bit-identical and the 7 others differ only in their 16-bit immediate (4 load offsets, 2 low address halves
  and 1 high address half, first seen at +0x8), and its prologue builds the global pointer from 0xc9340 where
  kona.so uses 0xc5ed8.

### Monochrome frame-buffer routines (`mfb*`)

- `mfbTEGlyphBltWhite` (konal.so, address 0x13b2a00): **inferred.** Draws fixed-width glyph bitmaps into a
  one-bit drawable in white. It reads the glyph rows with halfword loads, shifts them into place with 34
  variable shifts, merges them into the destination words and falls back to `mfbImageGlyphBltWhite` through
  the clip entry (+380) when a case is not handled. Compared with kona.so only immediates move, 12 of the 551
  words (10 load offsets, 1 low address half and 1 high address half, the first at +0x38) since this module's
  data and table layout differ.
- `mfbCopyRotatePixmap` (konal.so, address 0x13b3710): **inferred.** Copies a one-bit pixmap and rotates it
  to the tile origin: shallow copy with `mfbCopyPixmap` or `memmove`, pads with `mfbPadPixmap` and rotates in
  x with `mfbXRotatePixmap` and in y with `mfbYRotatePixmap`; it reads the private copy through entry +240.
  Checked against kona.so word by word, 65 of 73 words are bit-identical and the 8 others differ only in
  their 16-bit immediate (6 load offsets, 1 low address half and 1 high address half, beginning at +0x20).
- `mfbBlackSolidFS` (konal.so, address 0x13ba280): **inferred.** Fills a span list with black pixels:
  `miFindMaxBand` and `miClipSpans` trim spans against the clip, then each span is cleared word by word with
  partial-word masks at both ends. The instruction stream is word for word that of kona.so except for 6 load
  offsets and 1 low address half, 7 words in all (the first at +0x2c).
- `mfbFillPolyInvert` (konal.so, address 0x13c7180): **inferred.** Polygon fill that inverts pixels. Like
  the white version it handles the single-box clip itself and calls `miFillPolygon` at two places for the
  other cases; 567 instructions with 28 loop edges. Relocation is the entire difference from kona.so, since 4
  load offsets, 1 low address half and 1 high address half change (first seen at +0x20) and every other bit
  of the 575-word routine stays the same.
- `mfbPutImage` (konal.so, address 0x13c8fc0): **inferred.** PutImage for one-bit drawables: builds a
  scratch pixmap header around the caller's data with `GetScratchPixmapHeader`, copies through the entry at
  +12 of the operations table and releases the header with `FreeScratchPixmapHeader`. Checked against kona.so
  word by word, 95 of 101 words are bit-identical and the 6 others differ only in their 16-bit immediate (5
  load offsets and 1 low address half, first seen at +0x44).
- `mfbPolyFillArcSolid` (konal.so, address 0x13cb9b0): **inferred.** PolyFillArc for solid fills of one-bit
  drawables: fetches the clip through entry +380, makes two calls to a shared span-fill routine and loops
  over the arcs (13 loop edges); 0x7fff bounds the y range. Checked against kona.so word by word, 136 of 144
  words are bit-identical and the 8 others differ only in their 16-bit immediate (4 load offsets, 3 low
  address halves and 1 high address half, the first at +0x10), with the gp offset in the prologue at 0x154290
  here against 0x147dd8 there.
- `mfbGetImage` (konal.so, address 0x13d5fb0): **inferred.** GetImage for one-bit drawables: allocates a
  scratch header with `GetScratchPixmapHeader`, zeroes the output with `bzero`, copies with `mfbDoBitblt`
  between the clip entries +340 and +352, and frees the header with `FreeScratchPixmapHeader`. Relocation is
  the entire difference from kona.so, since 4 load offsets, 1 low address half and 1 high address half change
  (beginning at +0x28) and every other bit of the 78-word routine stays the same.
- `mfbLineSD` (konal.so, address 0x13d8090): **inferred.** Dashed polyline for one-bit drawables: clips
  with `miZeroClipLine`, advances the dash state with `miStepDash` (called at five places) and draws with
  `mfbBresD`. Beyond 13 load offsets and 1 low address half (the first at +0x24), which make up 14 of its 774
  words, nothing separates this build from kona.so.
- `mfbFillPolyWhite` (konal.so, address 0x13d8d70): **inferred.** Fills a polygon in white when the clip is
  a single box and falls back to `miFillPolygon` (two call sites) otherwise; the constants 0x7fff and
  0xfffeffff bound coordinates and span lengths. Compared with kona.so only immediates move, 5 of the 491
  words (4 load offsets and 1 low address half, starting at +0x28) since this module's data and table layout
  differ.
- `mfbVertS` (konal.so, address 0x13de0f0): **inferred.** Draws a vertical solid run in a one-bit drawable:
  steps one scan line per pixel by the row stride and applies the mask; 21 word stores in a short loop.
  Relocation is the entire difference from kona.so, since 3 load offsets, 1 low address half and 1 high
  address half change (first seen at +0x4) and every other bit of the 235-word routine stays the same, with
  the gp offset in the prologue at 0x141b50 here against 0x135778 there.
- `mfbLineSS` (konal.so, address 0x13df050): **inferred.** Solid single-width polyline for one-bit
  drawables: clips each segment with `miZeroClipLine`, draws horizontals with `mfbHorzS`, verticals with
  `mfbVertS` and the rest with `mfbBresS`. Checked against kona.so word by word, 890 of 901 words are
  bit-identical and the 11 others differ only in their 16-bit immediate (9 load offsets, 1 low address half
  and 1 high address half, earliest at +0x20).
- `mfbDoBitbltGeneral` (konal.so, address 0x13e7f80): **inferred.** The general one-bit copy: it moves
  rectangles between bit-aligned positions of two one-bit drawables for any raster operation, with 70
  variable shifts, left-to-right and right-to-left loops and per-edge masks. Same code as kona.so with 16
  words re-addressed for this module (11 load offsets and 5 low address halves, earliest at +0x4), nothing
  else in the 1543 words changing (gp offset 0x137cc0, kona.so 0x12bb38).
- `mfbSolidWhiteArea` (konal.so, address 0x13ff620): **inferred.** Fills a list of rectangles with white in
  a one-bit drawable: for each box it sets partial words at the left and right edge and whole words between
  them, with 137 word stores in the unrolled loops. Compared with kona.so only immediates move, 5 of the 582
  words (4 load offsets and 1 low address half, earliest at +0x24) since this module's data and table layout
  differ.
- `mfbDoBitbltXor` (konal.so, address 0x1400e80): **inferred.** One-bit rectangle copy that exclusive-ors
  the source into the destination, built on the same loops as the copy case; 1129 instructions with 70
  variable shifts. Relocation is the entire difference from kona.so, since 10 load offsets and 5 low address
  halves change (first seen at +0x10) and every other bit of the 1140-word routine stays the same, with the
  gp offset in the prologue at 0x11edc0 here against 0x11a4d8 there.
- `mfbRegisterCopyPlaneProc` (konal.so, address 0x1408b30): **established.** Records the copy-plane routine
  to use for a source depth: on first use it takes a screen private index with `AllocateScreenPrivateIndex`
  and stores the routine in a table keyed by depth. Checked against kona.so word by word, 30 of 38 words are
  bit-identical and the 8 others differ only in their 16-bit immediate (5 load offsets, 1 low address half
  and 2 store offsets, earliest at +0x8), with the gp offset in the prologue at 0x117110 here against
  0x112878 there.
- `mfbDoBitbltOr` (konal.so, address 0x1409af0): **inferred.** One-bit rectangle copy that ors the source
  into the destination: identical shape and size to the exclusive-or version, differing in the combine
  instruction. The routine is 1129 instructions long. Checked against kona.so word by word, 1125 of 1140
  words are bit-identical and the 15 others differ only in their 16-bit immediate (10 load offsets and 5 low
  address halves, earliest at +0x10), with the gp offset in the prologue at 0x116150 here against 0x1118d8
  there.
- `mfbSolidInvertArea` (konal.so, address 0x1413240): **inferred.** Inverts the bits inside each rectangle
  of a list in a one-bit drawable: edge words get masks and the body words are complemented in unrolled
  loops. The routine is 758 instructions long. Compared with kona.so only immediates move, 6 of the 763 words
  (5 load offsets and 1 low address half, beginning at +0x30) since this module's data and table layout
  differ.
- `mfbDoBitbltCopy` (konal.so, address 0x14156a0): **inferred.** One-bit rectangle copy for the plain
  source-copy raster operation: the same shift-and-merge structure as `mfbDoBitbltGeneral` but with the
  combination rule fixed at copy (116 word stores). Beyond 8 load offsets, 5 low address halves and 1 high
  address half (earliest at +0xc), which make up 14 of its 1165 words, nothing separates this build from
  kona.so (gp offset 0x10a5a0, kona.so 0x105d18).
- `mfbCopyPlane` (konal.so, address 0x14196f0): **established.** CopyPlane for one-bit destinations: it
  reduces the raster operation with `mfbReduceRop`, calls the registered per-depth copy routine through the
  table built by `mfbRegisterCopyPlaneProc`, and reports "No copyPlane proc registered for depth" through
  `FatalError` when none is set. Checked against kona.so word by word, 134 of 141 words are bit-identical and
  the 7 others differ only in their 16-bit immediate (5 load offsets and 2 low address halves, starting at
  +0x38).
- `mfbSetSpans` (konal.so, address 0x141ff90): **inferred.** SetSpans for one-bit drawables: for each span
  it takes the clip into account (halfword compares) and writes the source bits into the destination words
  via `mfbSetScanline`, called at two places. Checked against kona.so word by word, 230 of 239 words are
  bit-identical and the 9 others differ only in their 16-bit immediate (8 load offsets and 1 low address
  half, earliest at +0x40).
- `mfbGetSpans` (konal.so, address 0x142aa40): **inferred.** GetSpans for one-bit drawables: for each
  requested span it reads the packed bits from the drawable and shifts them (10 variable shifts) into the
  caller's word buffer. Checked against kona.so word by word, 278 of 283 words are bit-identical and the 5
  others differ only in their 16-bit immediate (4 load offsets and 1 low address half, the first at +0x2c).
- `mfbSolidPP` (konal.so, address 0x142b310): **inferred.** PushPixels with a solid fill for one-bit
  drawables: brackets a call to `mfbDoBitblt` with the clip entries +340, +352 and +356. Checked against
  kona.so word by word, 127 of 130 words are bit-identical and the 3 others differ only in their 16-bit
  immediate (2 load offsets and 1 low address half, the first at +0x1c) (gp offset 0xf4930, kona.so 0xf0b68).
- `mfbInvertSolidFS` (konal.so, address 0x142b520): **inferred.** Span fill that inverts the destination
  bits instead of setting them: the same band and clip handling with `miFindMaxBand` and `miClipSpans`, and
  an exclusive-or of the ends and body words. Compared with kona.so only immediates move, 8 of the 279 words
  (7 load offsets and 1 low address half, earliest at +0x2c) since this module's data and table layout
  differ.
- `mfbValidateGC` (konal.so, address 0x142ce80): **inferred.** ValidateGC for the monochrome layer: when
  the context changed it recomputes the composite clip with `miComputeCompositeClip`, reduces the raster
  operation with `mfbReduceRop`, selects the right operation set (and replaces it via `miDestroyGCOps` when
  the font or fill style changed) and rotates the tile with `mfbCopyRotatePixmap`. Relocation is the entire
  difference from kona.so, since 70 load offsets, 2 low address halves and 1 pc-relative call distance change
  (first seen at +0x40) and every other bit of the 801-word routine stays the same.
- `mfbTileFS` (konal.so, address 0x1431d00): **inferred.** Tiled span fill for a one-bit drawable whose
  tile width divides a word: clips with `miFindMaxBand` and `miClipSpans`, then combines a rotated tile word
  with the destination under the raster-operation masks for each span. Compared with kona.so only immediates
  move, 14 of the 569 words (13 load offsets and 1 low address half, first seen at +0x2c) since this module's
  data and table layout differ.
- `mfbPolyPoint` (konal.so, address 0x1439c00): **inferred.** PolyPoint for one-bit drawables: for each
  point it tests the clip box (35 loop edges), computes the word and bit and sets, clears or toggles the bit
  according to the raster operation. The instruction stream is word for word that of kona.so except for 3
  load offsets and 1 low address half, 4 words in all (earliest at +0x40).
- `mfbTileAreaPPWCopy` (konal.so, address 0x143cf90): **inferred.** Copies a one-word-wide pixmap tile over
  rectangles with a plain copy raster operation (the mask-free case), unrolled with 107 word stores and no
  calls. The instruction stream is word for word that of kona.so except for 4 load offsets and 1 low address
  half, 5 words in all (earliest at +0x34).
- `mfbUnnaturalTileFS` (konal.so, address 0x143d800): **inferred.** Tiled span fill for tile widths that do
  not divide a word. The tile row is fetched bit by bit (34 variable shifts, 142 loop edges) and merged into
  the span, the slow companion of `mfbTileFS`; clipping uses `miFindMaxBand` and `miClipSpans`. Only the
  layout-dependent immediates differ from kona.so, namely 17 load offsets and 9 low address halves (beginning
  at +0x58), and the other 978 of 1004 words are bit-identical.
- `mfbBresD` (konal.so, address 0x1442300): **inferred.** Bresenham stepper for dashed one-bit lines:
  advances the error term per pixel, switches between dash and gap with a counter and writes each pixel with
  the raster-operation masks (87 loop edges). Compared with kona.so only immediates move, 3 of the 669 words
  (2 load offsets and 1 low address half, first seen at +0x34) since this module's data and table layout
  differ.
- `mfbTileAreaPPWGeneral` (konal.so, address 0x1443a80): **inferred.** Tiles rectangles from a
  one-word-wide pixmap for any raster operation: the source word is combined with the destination through the
  context's and/xor mask pair, 105 word stores across the unrolled variants. Compared with kona.so only
  immediates move, 6 of the 1001 words (5 load offsets and 1 low address half, first seen at +0x38) since
  this module's data and table layout differ.
- `mfbHorzS` (konal.so, address 0x1446960): **inferred.** Draws a horizontal solid run in a one-bit
  drawable: partial words at both ends and full words in the middle, using 95 word stores across several
  unrolled cases. Same code as kona.so with 5 words re-addressed for this module (3 load offsets, 1 low
  address half and 1 high address half, beginning at +0x4), nothing else in the 446 words changing, the
  prologue's gp constant reading 0xd92e0 instead of 0xd5c08.
- `mfbDoBitbltCopyInverted` (konal.so, address 0x144acf0): **inferred.** One-bit rectangle copy that
  complements the source: the shift-and-merge loops of the copy case with the source word inverted before the
  store. The routine is 1074 instructions long. The instruction stream is word for word that of kona.so
  except for 10 load offsets and 5 low address halves, 15 words in all (the first at +0x10), with the gp
  offset in the prologue at 0xd4f50 here against 0xd1868 there.
- `mfbBresS` (konal.so, address 0x144ffd0): **inferred.** Bresenham stepper for solid one-bit lines: the
  same error stepping as `mfbBresD` without dash handling, writing each pixel with the current mask word. All
  671 words of the body match kona.so apart from 2 whose 16-bit immediate differs (1 load offset and 1 low
  address half, first seen at +0x1c), so opcodes, registers and branch offsets are identical, with the gp
  offset in the prologue at 0xcfc70 here against 0xcc5a8 there.
- `mfbSegmentSS` (konal.so, address 0x1455400): **inferred.** Solid PolySegment for one-bit drawables:
  handles each segment with `miZeroClipLine` for clipping, then `mfbHorzS`, `mfbVertS` or
  `mfbBresS` by slope. Relocation is the entire difference from kona.so, since 7 load offsets, 1 low address
  half, 1 high address half and 2 pc-relative call distances change (earliest at +0x28) and every other bit
  of the 730-word routine stays the same.

### Machine-independent routines (`mi*`)

- `miCreateGCOps` (konal.so, address 0x13b7480): **established.** Allocates an 84-byte graphics-context
  operations table with `Xalloc` and fills it with the machine-independent routines for each operation slot.
  The instruction stream is word for word that of kona.so except for 3 load offsets, 1 low address half and 1
  high address half, 5 words in all (beginning at +0x8) (gp offset 0x1687c0, kona.so 0x15bed8).
- `miIntersect` (konal.so, address 0x13b8ce0): **inferred.** Region intersection: computes the intersection
  into the target, handling empty and one-box shortcuts with `miRegionCopy`, calling a banded overlap
  routine, `miSetExtents` for the result bounds and `Xfree` for the old boxes. Compared with kona.so only
  immediates move, 12 of the 168 words (9 load offsets and 3 low address halves, beginning at +0x10) since
  this module's data and table layout differ (gp offset 0x166f60, kona.so 0x15a8d8).
- `miRegisterGCPrivateIndex` (konal.so, address 0x13bc7b0): **established.** Stores its argument in a
  module global: the index the layer uses for its graphics-context private records. The routine is 6
  instructions long. Checked against kona.so word by word, 3 of 6 words are bit-identical and the 3 others
  differ only in their 16-bit immediate (1 load offset, 1 low address half and 1 high address half, starting
  at +0x0), and its prologue builds the global pointer from 0x163490 where kona.so uses 0x156e18.
- `miInitializeBackingStore` (konal.so, address 0x13c36f0): **established.** Sets up backing store for a
  screen: takes a GC private index with `AllocateGCPrivateIndex`, a screen private index with
  `AllocateScreenPrivateIndex`, allocates the record with `Xalloc` and a GC private with `AllocateGCPrivate`.
  Only the layout-dependent immediates differ from kona.so, namely 14 load offsets, 13 low address halves, 1
  high address half and 3 store offsets (the first at +0x0), and the other 69 of 100 words are bit-identical,
  with the gp offset in the prologue at 0x15c550 here against 0x14ffa8 there.
- `miScreenInit` (konal.so, address 0x13c38f0): **established.** Initialises a screen for the
  machine-independent layer: calls `ShmRegisterFbFuncs`, `miInitializeBackingStore`, `miSetZeroLineBias` and
  `miScreenDevPrivateInit`. Relocation is the entire difference from kona.so, since 42 load offsets, 1 low
  address half and 1 high address half change (the first at +0xa8) and every other bit of the 160-word
  routine stays the same.
- `miSetupSpanData` (konal.so, address 0x13c7a80): **established.** Prepares the span groups for wide
  drawing: it tests the fill style and calls `miInitSpanGroup` for each of the two groups that style needs;
  42 instructions. Relocation is the entire difference from kona.so, since 3 load offsets, 1 low address half
  and 1 high address half change (earliest at +0xc) and every other bit of the 42-word routine stays the same
  (gp offset 0x1581c0, kona.so 0x14bc08).
- `miShapedWindowIn` (konal.so, address 0x13cbbf0): **inferred.** Tests whether a rectangle lies in a
  shaped window by walking the window's shape region through entry +380, 141 instructions. All 141 words of
  the body match kona.so apart from 2 whose 16-bit immediate differs (1 low address half and 1 high address
  half, beginning at +0x24), so opcodes, registers and branch offsets are identical.
- `miRegionReset` (konal.so, address 0x13cbe30): **established.** Resets a region to a single box: frees
  the old box array with `Xfree` if it is not the static one and sets the extents and count. Relocation is
  the entire difference from kona.so, since 1 load offset, 1 low address half and 1 high address half change
  (beginning at +0x28) and every other bit of the 29-word routine stays the same.
- `miCleanupSpanData` (konal.so, address 0x13cc590): **inferred.** Flushes and frees the span groups after
  wide drawing: runs `miFillUniqueSpanGroup` and `miFreeSpanGroup` for each group and restores the context's
  foreground with `DoChangeGC` and `ValidateGC` (both called twice). Only the layout-dependent immediates
  differ from kona.so, namely 11 load offsets, 1 low address half and 1 high address half (earliest at
  +0x20), and the other 60 of 73 words are bit-identical.
- `miClearDrawable` (konal.so, address 0x13cdc90): **inferred.** Clears a drawable to its background by
  changing the scratch context with `DoChangeGC` and `ValidateGC` and filling through entry +44. Relocation
  is the entire difference from kona.so, since 4 load offsets, 1 low address half and 1 high address half
  change (earliest at +0x28) and every other bit of the 53-word routine stays the same.
- `miPostChangeSaveUnder` (konal.so, address 0x13cf8c0): **inferred.** PostChangeSaveUnder hook: calls an
  indirect routine twice after save-under changes. The routine is 70 instructions long. Checked against
  kona.so word by word, 71 of 73 words are bit-identical and the 2 others differ only in their 16-bit
  immediate (1 low address half and 1 high address half, the first at +0x14) (gp offset 0x150380, kona.so
  0x143ee8).
- `miFillArcDSetup` (konal.so, address 0x13d1c40): **inferred.** Computes the same parameters as
  `miFillArcSetup` for a full ellipse with the dash-style integer error terms; 68 instructions, no calls. All
  68 words of the body match kona.so apart from 5 whose 16-bit immediate differs (3 load offsets, 1 low
  address half and 1 high address half, starting at +0x88), so opcodes, registers and branch offsets are
  identical.
- `miTranslateRegion` (konal.so, address 0x13d5970): **inferred.** Translates a region by an offset: adds
  the offsets to every box coordinate (397 instructions, unrolled by four), checks the 0x7fff range limits
  and recomputes extents with `miSetExtents` when clamping happened. Only the layout-dependent immediates
  differ from kona.so, namely 4 load offsets, 1 low address half, 1 high address half and 1 pc-relative call
  distance (earliest at +0x74), and the other 390 of 397 words are bit-identical.
- `miFillPolyHelper` (konal.so, address 0x13d9f50): **inferred.** Fills a polygon built from two edge
  lists: `miAppendSpans` adds spans to a group, `Xalloc` (twice) gets work arrays, the context is changed and
  validated twice with `DoChangeGC` and `ValidateGC`, and the memory is freed with `Xfree`. All 340 words of
  the body match kona.so apart from 10 whose 16-bit immediate differs (9 load offsets and 1 low address half,
  earliest at +0x30), so opcodes, registers and branch offsets are identical.
- `miPolyFillArc` (konal.so, address 0x13dbef0): **inferred.** PolyFillArc entry: calls the arc fill entry
  four times through function pointers according to whether the arc is a full ellipse or a slice. The routine
  is 107 instructions long. Checked against kona.so word by word, 97 of 107 words are bit-identical and the
  10 others differ only in their 16-bit immediate (4 load offsets, 5 low address halves and 1 high address
  half, beginning at +0xc), and its prologue builds the global pointer from 0x143d50 where kona.so uses
  0x137978.
- `miFreeStorage` (konal.so, address 0x13de0a0): **established.** Frees a storage block handed to it by
  calling `Xfree` when the pointer is non-null; the polygon code uses it to release its edge tables. 18
  instructions. Relocation is the entire difference from kona.so, since 1 load offset, 1 low address half and
  1 high address half change (earliest at +0x0) and every other bit of the 18-word routine stays the same,
  and its prologue builds the global pointer from 0x141ba0 where kona.so uses 0x1357c8.
- `miSendExposures` (konal.so, address 0x13e2b50): **inferred.** Sends Expose events for a region: finds
  the window with `LookupIDByType`, delivers events with `DeliverEvents` (three places) and with Xinerama
  builds uses `PanoramiXFindIDByScrnum` and `XineramaCollectExpose`. Only the layout-dependent immediates
  differ from kona.so, namely 16 load offsets, 1 low address half and 1 high address half (first seen at
  +0x18), and the other 281 of 299 words are bit-identical.
- `miUnion` (konal.so, address 0x13e3000): **inferred.** Region union: copies when either side is empty,
  otherwise merges bands through the routine; `miRegionCopy` is called at five places for the shortcut cases.
  Only the layout-dependent immediates differ from kona.so, namely 6 load offsets, 3 low address halves and 1
  high address half (starting at +0x18), and the other 177 of 187 words are bit-identical.
- `miFillSppPoly` (konal.so, address 0x13e36b0): **inferred.** Fills a single-pixel-per-scanline polygon
  through the span entry at +0 and the routine that computes span extents; 399 instructions. All 401 words of
  the body match kona.so apart from 7 whose 16-bit immediate differs (2 load offsets, 2 low address halves, 1
  high address half and 2 store offsets, the first at +0x48), so opcodes, registers and branch offsets are
  identical.
- `miRoundJoinFace` (konal.so, address 0x13e7600): **inferred.** Builds one face of a round line join:
  `miPolyBuildEdge` produces the edge, and 0x7fff bounds the search. Same code as kona.so with 4 words
  re-addressed for this module (1 load offset, 1 low address half, 1 high address half and 1 store offset,
  beginning at +0x2c), nothing else in the 88 words changing.
- `miRegionCreate` (konal.so, address 0x13e7760): **established.** Creates a region: two `Xalloc` calls
  take the region header and a first box array and initialise the extents to the given box or to empty. The
  instruction stream is word for word that of kona.so except for 6 load offsets, 1 low address half and 1
  high address half, 8 words in all (beginning at +0xc), with the gp offset in the prologue at 0x1384e0 here
  against 0x12c358 there.
- `miSendGraphicsExpose` (konal.so, address 0x13e7e20): **established.** Sends the graphics-expose events
  for a copy: calls `TryClientEvents` twice, once for each of the exposure and no-exposure cases. Relocation
  is the entire difference from kona.so, since 2 load offsets and 1 low address half change (first seen at
  +0x28) and every other bit of the 87-word routine stays the same.
- `miFillUniqueSpanGroup` (konal.so, address 0x13ec9b0): **inferred.** Fills the spans in a group after
  removing duplicates: sorts with a shell-sort style loop, reallocates the work arrays with `Xrealloc` (six
  places) and `Xalloc`, copies with `memcpy` and calls the fill entry (+0) of the operations table with
  `miDisposeSpanGroup` afterwards. Checked against kona.so word by word, 500 of 519 words are bit-identical
  and the 19 others differ only in their 16-bit immediate (15 load offsets, 3 low address halves and 1 high
  address half, beginning at +0x34).
- `miZeroLine` (konal.so, address 0x13f3290): **inferred.** Zero-width polyline: for each segment it clips
  with `miZeroClipLine` (two call sites) and steps pixels through an indirect entry of the operations table;
  784 instructions covering the octant cases. Beyond 3 load offsets, 1 low address half and 1 high address
  half (earliest at +0x10), which make up 5 of its 796 words, nothing separates this build from kona.so (gp
  offset 0x12c9b0, kona.so 0x120b58).
- `miRoundCapClip` (konal.so, address 0x13f4520): **inferred.** Computes the clip for a round line cap:
  uses `miPolyBuildEdge` to build the two half-edges and the 0x7fff limit for the y range. Checked against
  kona.so word by word, 88 of 92 words are bit-identical and the 4 others differ only in their 16-bit
  immediate (1 load offset, 1 low address half, 1 high address half and 1 store offset, first seen at +0x28).
- `miHandleExposures` (konal.so, address 0x13f5220): **inferred.** Generates the graphics-expose events
  after a copy: computes the exposed region with region entries +336 to +396 and `NotClippedByChildren`, then
  passes it to `miSendGraphicsExpose`. Relocation is the entire difference from kona.so, since 2 load
  offsets, 1 low address half and 1 high address half change (earliest at +0x3c) and every other bit of the
  447-word routine stays the same.
- `miCopyArea` (konal.so, address 0x1407400): **inferred.** CopyArea for the machine-independent layer:
  allocates a source region with `Xalloc`, reads with entry +168, writes with +4 through the clip entries,
  uses `NotClippedByChildren` and finishes with `miHandleExposures`. Beyond 5 load offsets, 1 low address
  half and 1 high address half (starting at +0x50), which make up 7 of its 984 words, nothing separates this
  build from kona.so.
- `miImageText16` (konal.so, address 0x140e280): **established.** ImageText16: collects glyphs with
  `GetGlyphs` and draws with the ImageGlyphBlt entry (+68) of the operations table. The instruction stream is
  word for word that of kona.so except for 1 load offset and 1 low address half, 2 words in all (beginning at
  +0x20).
- `miClipSpans` (konal.so, address 0x140faa0): **inferred.** Clips a span list against a region's boxes and
  passes the surviving pieces to the span-fill routine whose address is; 279 instructions. Beyond 2 low
  address halves (starting at +0x48), which make up 2 of its 285 words, nothing separates this build from
  kona.so.
- `miRegionValidate` (konal.so, address 0x1410c30): **inferred.** Sorts and merges the boxes of an appended
  region into canonical y-x banded form: reallocates with `Xrealloc`, allocates work arrays with `Xalloc`,
  calls `miRectAlloc` eight times while building bands and frees temporary storage with `Xfree`. All 476
  words of the body match kona.so apart from 27 whose 16-bit immediate differs (19 load offsets and 8 low
  address halves, beginning at +0x20), so opcodes, registers and branch offsets are identical.
- `miLineProjectingCap` (konal.so, address 0x1411640): **inferred.** Builds the projecting cap of a wide
  line: it computes the corner points with `miPolyBuildEdge` (eight calls) and fills the polygons with
  `miFillPolyHelper` three times. Only the layout-dependent immediates differ from kona.so, namely 11 load
  offsets, 1 low address half and 1 store offset (earliest at +0x38), and the other 361 of 374 words are
  bit-identical.
- `miPushPixels` (konal.so, address 0x1414540): **inferred.** PushPixels for the machine-independent layer:
  allocates a scratch buffer with `Xalloc`, reads the stencil through +168, paints with entry +0x7 per run
  and frees with `Xfree`. Only the layout-dependent immediates differ from kona.so, namely 6 load offsets, 1
  low address half and 1 high address half (first seen at +0x14), and the other 375 of 383 words are
  bit-identical, the prologue's gp constant reading 0x10b700 instead of 0x106e78.
- `miSetZeroLineBias` (konal.so, address 0x141e090): **established.** Takes a screen private index with
  `AllocateScreenPrivateIndex` and stores the bias bits that decide which edge pixels belong to a zero-width
  line on this screen. Compared with kona.so only immediates move, 8 of the 39 words (7 load offsets and 1
  low address half, beginning at +0x8) since this module's data and table layout differ (gp offset 0x101bb0,
  kona.so 0xfd358).
- `miFillGeneralPoly` (konal.so, address 0x1420350): **inferred.** Scan-line fill for general polygons:
  builds the edge table with `miCreateETandAET` (twice), inserts edges with `miInsertionSort`, advances them
  with `micomputeWAET` (twice), calls the fill entry at +0 for each scan line and frees the tables with
  `miFreeStorage`. Relocation is the entire difference from kona.so, since 8 load offsets and 1 low address
  half change (beginning at +0x24) and every other bit of the 452-word routine stays the same.
- `miFreeArcCache` (konal.so, address 0x14210a0): **established.** Frees the arc cache: calls an indirect
  free hook once if the cache exists and zeroes the pointer. The routine is 35 instructions long. Compared
  with kona.so only immediates move, 6 of the 38 words (2 load offsets, 2 low address halves and 2 store
  offsets, beginning at +0x18) since this module's data and table layout differ, and its prologue builds the
  global pointer from 0xfeba0 where kona.so uses 0xfa5a8.
- `miFillPolygon` (konal.so, address 0x1421290): **established.** FillPolygon entry: hands convex shapes to
  `miFillConvexPoly` and all others to `miFillGeneralPoly`. Only the layout-dependent immediates differ from
  kona.so, namely 2 load offsets and 1 low address half (beginning at +0x30), and the other 243 of 246 words
  are bit-identical.
- `miPolyArc` (konal.so, address 0x14256f0): **inferred.** PolyArc: for thin arcs it calls the zero-width
  arc routine through its function pointers and draws wide arcs with a scratch context: `GetScratchGC`,
  `ValidateGC` (five times) and `DoChangeGC`, `miClearDrawable` to restore, then
  `FreeScratchGC`; 745 instructions. The instruction stream is word for word that of kona.so except for 20
  load offsets, 14 low address halves, 1 high address half and 1 store offset, 36 words in all (the first at
  +0x40).
- `miClearToBackground` (konal.so, address 0x1426ad0): **inferred.** ClearToBackground request: clips with
  the screen entries +340 to +356, paints the background with the entry at +212 and +216 and handles
  exposures. The routine is 129 instructions long. Relocation is the entire difference from kona.so, since 1
  low address half and 1 high address half change (first seen at +0x38) and every other bit of the 129-word
  routine stays the same.
- `miRoundJoinClip` (konal.so, address 0x142afc0): **established.** Round join clip: calls
  `miRoundJoinFace` twice for the two faces of the join, 66 instructions. Same code as kona.so with 3 words
  re-addressed for this module (2 load offsets and 1 low address half, earliest at +0x70), nothing else in
  the 66 words changing.
- `miPolyBuildEdge` (konal.so, address 0x1431b70): **inferred.** Builds the left or right edge list of a
  wide line from its endpoints and slope, with no callee; 97 instructions of integer arithmetic. Same code as
  kona.so with 2 words re-addressed for this module (1 low address half and 1 store offset, earliest at
  +0x8), nothing else in the 99 words changing, and its prologue builds the global pointer from 0xee0d0 where
  kona.so uses 0xea348.
- `miDestroyGCOps` (konal.so, address 0x1434540): **established.** Destroys an operations table: one
  `Xfree` call. Only the layout-dependent immediates differ from kona.so, namely 1 load offset, 1 low address
  half and 1 high address half (the first at +0x8), and the other 12 of 15 words are bit-identical, and its
  prologue builds the global pointer from 0xeb700 where kona.so uses 0xe7bd8.
- `miSubtract` (konal.so, address 0x14362c0): **inferred.** Region subtraction: `miRegionCopy` for trivial
  cases, a banded subtract through the common overlap routine, `miSetExtents` for the extents and `Xfree` for
  freed storage. Beyond 12 load offsets, 3 low address halves and 1 high address half (the first at +0x8),
  which make up 16 of its 87 words, nothing separates this build from kona.so, and its prologue builds the
  global pointer from 0xe9980 where kona.so uses 0xe5f28.
- `miPolyText8` (konal.so, address 0x14380f0): **established.** PolyText8: collects glyphs with
  `GetGlyphs` and calls the PolyGlyphBlt entry (+72) once. Relocation is the entire difference from kona.so,
  since 1 load offset and 1 low address half change (starting at +0x14) and every other bit of the 125-word
  routine stays the same, and its prologue builds the global pointer from 0xe7b50 where kona.so uses 0xe40f8.
- `miPolyGlyphBlt` (konal.so, address 0x143b1b0): **inferred.** PolyGlyphBlt on a scratch context: gets the
  scratch with `GetScratchGC`, sets the colour with `DoChangeGC`, validates with `ValidateGC` and
  `FreeScratchGC`, and pushes pixels through entry +8. Compared with kona.so only immediates move, 6 of the
  288 words (5 load offsets and 1 low address half, earliest at +0x38) since this module's data and table
  layout differ.
- `miDisposeSpanGroup` (konal.so, address 0x143bd80): **inferred.** Disposes a span group: calls the
  supplied free hook for the group's spans and again for the group record, 39 instructions. Compared with
  kona.so only immediates move, 2 of the 42 words (1 load offset and 1 low address half, starting at +0x1c)
  since this module's data and table layout differ, the prologue's gp constant reading 0xe3ec0 instead of
  0xe07a8.
- `miRegionDestroy` (konal.so, address 0x143f0c0): **established.** Destroys a region: calls `Xfree` for
  the box array (unless it is the shared empty one) and for the header. Only the layout-dependent immediates
  differ from kona.so, namely 2 load offsets and 1 low address half (beginning at +0x14), and the other 18 of
  21 words are bit-identical, with the gp offset in the prologue at 0xe0b80 here against 0xdd468 there.
- `miSubtractSpans` (konal.so, address 0x1440e40): **inferred.** Removes one span group from another so
  wide-line pieces are not painted twice: edits the lists with `memmove` (four places) and `Xrealloc` when a
  list must grow. Beyond 6 load offsets and 1 low address half (beginning at +0x24), which make up 7 of its
  276 words, nothing separates this build from kona.so.
- `miScreenDevPrivateInit` (konal.so, address 0x14486e0): **established.** Allocates the screen's
  device-private block with `Xalloc` and stores the pointer. The instruction stream is word for word that of
  kona.so except for 1 load offset and 1 low address half, 2 words in all (earliest at +0xc), and its
  prologue builds the global pointer from 0xd7560 where kona.so uses 0xd3e88.
- `miRegionAppend` (konal.so, address 0x144dc10): **inferred.** Appends the boxes of one region to another:
  grows the destination with `miRectAlloc`, shifts existing boxes with `memmove` (two places) and merges
  extents. The instruction stream is word for word that of kona.so except for 6 load offsets and 1 low
  address half, 7 words in all (beginning at +0x24).

### Colour frame-buffer routines (`cfb*`)

- `cfbBitBlt` (konal.so, address 0x13b3840): **inferred.** The CopyArea worker: clips the source and
  destination boxes through the clip entries (+340 to +376), copies with the entry at +12 or the routine at
  +176 and calls `NotClippedByChildren` and `miHandleExposures` for the exposures. It is byte-for-byte the
  same size as `cfb32BitBlt`. Relocation is the entire difference from kona.so, since 10 load offsets, 1 low
  address half and 1 high address half change (first seen at +0x34) and every other bit of the 523-word
  routine stays the same.
- `cfb16FillSpanTile32sGeneral` (konal.so, address 0x13b6710): **inferred.** Fills spans from a 32-bit-wide
  tile for any raster operation at 16 bits per pixel: shifts the tile word to the span's start (15 variable
  shifts) and merges with the and/xor masks. The instruction stream is word for word that of kona.so except
  for 6 load offsets, 1 low address half and 1 high address half, 8 words in all (earliest at +0x40).
- `cfbAllocatePrivates` (konal.so, address 0x13b8f80): **established.** Reserves the private slots the
  8-bit colour layer needs: `AllocateWindowPrivate` and `AllocateGCPrivate` for the window and context
  records, then `mfbAllocatePrivates` so the monochrome layer shares the same indexes. The instruction stream
  is word for word that of kona.so except for 13 load offsets and 1 low address half, 14 words in all (the
  first at +0x28).
- `cfb16PolyGlyphBlt8` (konal.so, address 0x13bdec0): **inferred.** PolyGlyphBlt for
  16-bit pixels with 8-pixel glyph rows: clips through entry +380, calls the shared glyph painter twice and
  writes pixels with halfword stores (41 of them). Only the layout-dependent immediates differ from kona.so,
  namely 6 load offsets, 6 low address halves, 1 high address half and 2 pc-relative call distances (the
  first at +0x4c), and the other 434 of 449 words are bit-identical.
- `cfb16DoBitbltXor` (konal.so, address 0x13c1740): **inferred.** Rectangle copy for the exclusive-or
  raster operation at 16 bits per pixel: the same shift-and-merge loops as the copy version with the combine
  step an exclusive-or. Only the layout-dependent immediates differ from kona.so, namely 13 load offsets, 5
  low address halves and 1 high address half (first seen at +0x10), and the other 1142 of 1161 words are
  bit-identical, and its prologue builds the global pointer from 0x15e500 where kona.so uses 0x151f48.
- `cfbFillSpanTile32sCopy` (konal.so, address 0x13c2c40): **inferred.** Fills spans from a tile exactly 32
  pixels wide, copy operation, 8 bits per pixel: rotates the tile word to the span's phase with 35 variable
  shifts and stores whole words. Compared with kona.so only immediates move, 11 of the 503 words (7 load
  offsets, 3 low address halves and 1 high address half, first seen at +0x48) since this module's data and
  table layout differ.
- `cfb32CopyArea` (konal.so, address 0x13c3420): **established.** CopyArea entry for
  32-bit drawables: a 40-instruction wrapper that passes its eight arguments on to `cfb32BitBlt`. Checked
  against kona.so word by word, 32 of 40 words are bit-identical and the 8 others differ only in their 16-bit
  immediate (6 load offsets, 1 low address half and 1 high address half, first seen at +0xc), with the gp
  offset in the prologue at 0x15c820 here against 0x150278 there.
- `cfb32PolyFillArcSolidGeneral` (konal.so, address 0x13c34c0): **inferred.** PolyFillArc for
  32-bit pixels, solid fill, any raster operation; the structure matches the 16-bit general version. All 137
  words of the body match kona.so apart from 7 whose 16-bit immediate differs (3 load offsets, 3 low address
  halves and 1 high address half, first seen at +0x1c), so opcodes, registers and branch offsets are
  identical.
- `cfb32FillPoly1RectGeneral` (konal.so, address 0x13c5d20): **inferred.** Polygon fill for 32-bit pixels
  and a single clip rectangle, with `miFillPolygon` as the fallback at two call sites; the 0x7fff and
  0xfffeffff constants test coordinate range. Checked against kona.so word by word, 575 of 581 words are
  bit-identical and the 6 others differ only in their 16-bit immediate (4 load offsets, 1 low address half
  and 1 high address half, the first at +0x30).
- `cfb8ClippedLineCopy` (konal.so, address 0x13c6640): **inferred.** Clipped zero-width line for 8-bit
  pixels with copy: clips with `miZeroClipLine` (two call sites) and steps pixels with byte stores (56 of
  them). Same code as kona.so with 6 words re-addressed for this module (4 load offsets, 1 low address half
  and 1 high address half, earliest at +0xc), nothing else in the 720 words changing, the prologue's gp
  constant reading 0x159600 instead of 0x14d048.
- `cfbDoBitbltCopy` (konal.so, address 0x13c7d70): **inferred.** Rectangle copy for the plain copy raster
  operation in the 8-bit layer: forward and backward loops with word-aligned moves and eight-way unrolled
  edge cases (116 word stores, 70 variable shifts). Compared with kona.so only immediates move, 14 of the
  1167 words (9 load offsets and 5 low address halves, the first at +0x14) since this module's data and table
  layout differ, and its prologue builds the global pointer from 0x157ed0 where kona.so uses 0x14b918.
- `cfb8FillRectOpaqueStippled32` (konal.so, address 0x13c9fe0): **inferred.** Fills rectangles from a
  32-pixel-wide stipple painting both foreground and background: `cfb8SetOpaqueStipple` prepares the tables,
  then word stores (98) write the pixels in unrolled loops. The instruction stream is word for word that of
  kona.so except for 15 load offsets and 1 low address half, 16 words in all (earliest at +0x20).
- `cfb16FillRectSolidCopy` (konal.so, address 0x13cd4c0): **inferred.** Solid rectangle fill for 16-bit
  pixels with the copy raster operation: two pixels per word store, with a halfword store for an odd edge
  pixel; 403 instructions. Same code as kona.so with 9 words re-addressed for this module (7 load offsets, 1
  low address half and 1 high address half, the first at +0x30), nothing else in the 421 words changing.
- `cfb32MatchCommon` (konal.so, address 0x13cdbb0): **inferred.** Decides whether the context qualifies for
  one of the module's common fast cases at 32 bits per pixel: 54 instructions, no calls and no stores beyond
  the return value. All 54 words of the body match kona.so apart from 6 whose 16-bit immediate differs (4
  load offsets, 1 low address half and 1 high address half, first seen at +0x4), so opcodes, registers and
  branch offsets are identical, the prologue's gp constant reading 0x152090 instead of 0x145be8.
- `cfbFillRectSolidCopy` (konal.so, address 0x13ce060): **inferred.** Fills rectangles with a single colour
  using the copy raster operation, 8 bits per pixel: head and tail pixels by byte stores and the body by word
  stores in unrolled loops (109 word stores). Checked against kona.so word by word, 486 of 493 words are
  bit-identical and the 7 others differ only in their 16-bit immediate (5 load offsets, 1 low address half
  and 1 high address half, beginning at +0x1c).
- `cfb32DoBitblt` (konal.so, address 0x13cf5f0): **inferred.** Rectangle copy dispatcher for 32-bit
  drawables: a 33-instruction wrapper that forwards to `cfb32DoBitbltGeneral`. Checked against kona.so word
  by word, 26 of 33 words are bit-identical and the 7 others differ only in their 16-bit immediate (5 load
  offsets, 1 low address half and 1 high address half, earliest at +0x4), and its prologue builds the global
  pointer from 0x150650 where kona.so uses 0x1441b8.
- `cfb32SegmentSS1RectGeneral` (konal.so, address 0x13d01f0): **inferred.** Single-clip solid segments for
  32-bit pixels and any raster operation; 459 instructions using the and/xor pair per pixel. Checked against
  kona.so word by word, 456 of 461 words are bit-identical and the 5 others differ only in their 16-bit
  immediate (3 load offsets, 1 low address half and 1 high address half, earliest at +0x4), with the gp
  offset in the prologue at 0x14fa50 here against 0x1435b8 there.
- `cfb32ZeroPolyArcSSCopy` (konal.so, address 0x13d1e90): **inferred.** Zero-width single-segment arc draw
  for 32-bit pixels with copy: calls the clip entry +380 three times and an indirect routine, bounded by
  0x7fff. Checked against kona.so word by word, 111 of 117 words are bit-identical and the 6 others differ
  only in their 16-bit immediate (3 load offsets, 2 low address halves and 1 high address half, first seen at
  +0x1c).
- `cfb8FillRectTransparentStippled32` (konal.so, address 0x13d2e90): **inferred.** Fills rectangles from a
  32-pixel-wide stipple painting only the foreground: `cfb8SetStipple` builds the mask tables, then 536 byte
  stores and 218 halfword stores place the set pixels; 2304 instructions. Same code as kona.so with 27 words
  re-addressed for this module (22 load offsets, 4 low address halves and 1 high address half, first seen at
  +0x4), nothing else in the 2356 words changing, and its prologue builds the global pointer from 0x14cdb0
  where kona.so uses 0x1409d8.
- `cfb16AllocatePrivates` (konal.so, address 0x13d5360): **established.** The 16-bit twin of
  `cfbAllocatePrivates`: allocates window and context privates with `AllocateWindowPrivate` and
  `AllocateGCPrivate`, takes a screen private index with `AllocateScreenPrivateIndex` and calls
  `mfbAllocatePrivates`. Beyond 15 load offsets, 1 low address half and 1 high address half (earliest at
  +0x18), which make up 17 of its 88 words, nothing separates this build from kona.so.
- `cfb16SegmentSS1Rect` (konal.so, address 0x13d60f0): **inferred.** Entry for solid PolySegment with a
  one-rectangle clip at 16 bits per pixel: 78 instructions choosing the copy, xor or general routine through
  two indirect calls. Checked against kona.so word by word, 71 of 80 words are bit-identical and the 9 others
  differ only in their 16-bit immediate (7 load offsets, 1 low address half and 1 high address half, starting
  at +0x14), and its prologue builds the global pointer from 0x149b50 where kona.so uses 0x13d778.
- `cfbYRotatePixmap` (konal.so, address 0x13d6230): **inferred.** Rotates a pixmap vertically by moving
  rows with three `memmove` calls; for a bits-per-pixel it does not know it prints "cfbYRotatePixmap:
  unsupported bitsPerPixel" with `ErrorF` and hands over to `mfbYRotatePixmap`. Checked against kona.so word
  by word, 70 of 79 words are bit-identical and the 9 others differ only in their 16-bit immediate (6 load
  offsets, 2 low address halves and 1 high address half, first seen at +0x14).
- `cfb16SegmentSS1RectGeneral` (konal.so, address 0x13d9520): **inferred.** Single-clip solid segments at
  16 bits per pixel for any raster operation; 644 instructions with the same overflow and range checks
  (0x80008000, 0xfffeffff). Relocation is the entire difference from kona.so, since 7 load offsets and 1 low
  address half change (first seen at +0x4) and every other bit of the 650-word routine stays the same, and
  its prologue builds the global pointer from 0x146720 where kona.so uses 0x13a348.
- `cfb32SegmentSD` (konal.so, address 0x13da4a0): **inferred.** Dashed PolySegment for
  32-bit pixels: `cfb32ReduceRasterOp`, `miZeroClipLine`,
  `miStepDash` and `cfb32BresD`, reading the screen entries +32 and +108 for the context. Checked against
  kona.so word by word, 629 of 640 words are bit-identical and the 11 others differ only in their 16-bit
  immediate (10 load offsets and 1 low address half, first seen at +0x24).
- `cfb32Tile32FSCopy` (konal.so, address 0x13dc890): **inferred.** FillSpans from a one-word tile, copy
  operation, 32 bits per pixel: clips with `miFindMaxBand` and `miClipSpans`, then stores the tile word for
  each pixel. Checked against kona.so word by word, 240 of 248 words are bit-identical and the 8 others
  differ only in their 16-bit immediate (6 load offsets, 1 low address half and 1 high address half, earliest
  at +0x20).
- `cfb8ClippedLineGeneral` (konal.so, address 0x13dce50): **inferred.** Clipped line for 8-bit pixels with
  any raster operation, clipping with `miZeroClipLine` at two places and combining with the and/xor pair. The
  instruction stream is word for word that of kona.so except for 4 load offsets, 1 low address half and 1
  high address half, 6 words in all (beginning at +0x10) (gp offset 0x142df0, kona.so 0x136a18).
- `cfb16CreatePixmap` (konal.so, address 0x13de5d0): **established.** CreatePixmap for
  16-bit drawables: allocates the pixmap with `AllocatePixmap`, sets the 16-bit bits-per-pixel and the row
  stride rounded to a word. Only the layout-dependent immediates differ from kona.so, namely 6 load offsets,
  1 low address half and 1 high address half (first seen at +0xc), and the other 94 of 102 words are
  bit-identical (gp offset 0x141670, kona.so 0x135298).
- `cfbFillBoxTile32sGeneral` (konal.so, address 0x13de770): **inferred.** Fills boxes from a 32-pixel-wide
  tile, any raster operation, 8-bit pixels: realigns the tile word with 15 variable shifts and combines with
  the and/xor pair. Compared with kona.so only immediates move, 7 of the 567 words (5 load offsets, 1 low
  address half and 1 high address half, earliest at +0x38) since this module's data and table layout differ.
- `cfb16SegmentSD` (konal.so, address 0x13e0bb0): **inferred.** Dashed PolySegment for
  16-bit pixels: `cfb16ReduceRasterOp` then `miZeroClipLine`,
  `miStepDash` and `cfb16BresD`, with the screen entries +32 and +108. Compared with kona.so only immediates
  move, 12 of the 644 words (10 load offsets, 1 low address half and 1 high address half, starting at +0x1c)
  since this module's data and table layout differ.
- `cfb32SegmentSS` (konal.so, address 0x13e15c0): **inferred.** Solid PolySegment for
  32-bit pixels: `miZeroClipLine` clips each segment, then `cfb32VertS`,
  `cfb32HorzS` or `cfb32BresS` draws it. All 763 words of the body match kona.so apart from 10 whose 16-bit
  immediate differs (8 load offsets, 1 low address half and 1 high address half, starting at +0x24), so
  opcodes, registers and branch offsets are identical.
- `cfbCopyPixmap` (konal.so, address 0x13e2ab0): **inferred.** Duplicates a pixmap for the 8-bit layer:
  asks the screen to create a pixmap with the entry at +236 and copies the pixel store with `memmove`; 37
  instructions. Beyond 1 load offset, 1 low address half and 1 high address half (first seen at +0x18), which
  make up 3 of its 37 words, nothing separates this build from kona.so.
- `cfb32ClippedLineGeneral` (konal.so, address 0x13e40f0): **inferred.** Clipped line for 32-bit pixels
  with any raster operation, built like the 16-bit one around two `miZeroClipLine` calls. Compared with
  kona.so only immediates move, 7 of the 719 words (5 load offsets, 1 low address half and 1 high address
  half, the first at +0x8) since this module's data and table layout differ, the prologue's gp constant
  reading 0x13bb50 instead of 0x12f788.
- `cfb32FillBoxTileOddCopy` (konal.so, address 0x13e4c30): **inferred.** Odd-width tile box fill, copy
  operation, 32 bits per pixel: 351 instructions, with few shifts because a 32-bit pixel is a whole word. All
  358 words of the body match kona.so apart from 4 whose 16-bit immediate differs (2 load offsets, 1 low
  address half and 1 high address half, first seen at +0x48), so opcodes, registers and branch offsets are
  identical.
- `cfb32Tile32FSGeneral` (konal.so, address 0x13e5f70): **inferred.** FillSpans from a one-word tile for
  32-bit pixels and any raster operation, clipping with `miFindMaxBand` and `miClipSpans` and combining by
  the and/xor pair. Relocation is the entire difference from kona.so, since 7 load offsets, 1 low address
  half and 1 high address half change (first seen at +0x24) and every other bit of the 321-word routine stays
  the same.
- `cfb16FillPoly1RectCopy` (konal.so, address 0x13e6480): **inferred.** Convex polygon fill for 16-bit
  pixels with copy when the clip is a single rectangle; falls back to `miFillPolygon` (two places) for other
  clips. 645 instructions. Compared with kona.so only immediates move, 6 of the 657 words (4 load offsets, 1
  low address half and 1 high address half, first seen at +0x30) since this module's data and table layout
  differ.
- `cfb16Tile32FSCopy` (konal.so, address 0x13e7890): **inferred.** FillSpans from a
  32-bit tile with copy at 16 bits per pixel: clipped by `miFindMaxBand` and `miClipSpans`, then stores tile
  words aligned to the span start. Only the layout-dependent immediates differ from kona.so, namely 14 load
  offsets, 1 low address half and 1 high address half (earliest at +0x24), and the other 337 of 353 words are
  bit-identical.
- `cfbFillBoxTileOdd` (konal.so, address 0x13e97a0): **inferred.** Chooses between the copy and general box
  fills for odd-width tiles: calls `cfbFillBoxTileOddCopy` or `cfbFillBoxTile32sCopy` depending on the tile
  width; 23 instructions. Only the layout-dependent immediates differ from kona.so, namely 2 load offsets and
  1 low address half (the first at +0x14), and the other 20 of 23 words are bit-identical, and its prologue
  builds the global pointer from 0x1364a0 where kona.so uses 0x12a318.
- `cfb16SegmentSS` (konal.so, address 0x13e9d30): **inferred.** Solid PolySegment for
  16-bit pixels: clips with `miZeroClipLine` and draws with `cfb16VertS`,
  `cfb16HorzS` or `cfb16BresS`; same size as the 32-bit version. Checked against kona.so word by word, 754 of
  763 words are bit-identical and the 9 others differ only in their 16-bit immediate (8 load offsets and 1
  low address half, beginning at +0x2c).
- `cfb32CreatePixmap` (konal.so, address 0x13ea920): **established.** CreatePixmap for
  32-bit drawables: identical in structure and size to the 16-bit routine, calling `AllocatePixmap` twice and
  setting 32 bits per pixel and the matching stride. Only the layout-dependent immediates differ from
  kona.so, namely 6 load offsets and 1 low address half (starting at +0x14), and the other 95 of 102 words
  are bit-identical, and its prologue builds the global pointer from 0x135320 where kona.so uses 0x129198.
- `cfbCopyPlane8to1` (konal.so, address 0x13eabd0): **inferred.** CopyPlane from an
  8-bit source to a one-bit destination: finds the selected plane with `ffs`, extracts that bit from every
  pixel with 308 variable shifts and packs eight pixels per byte; 1762 instructions, the largest routine of
  this group. Beyond 5 load offsets and 1 low address half (earliest at +0x40), which make up 6 of its 1778
  words, nothing separates this build from kona.so.
- `cfbPutImage` (konal.so, address 0x13eefb0): **inferred.** PutImage for
  8-bit drawables: for formats it cannot copy directly it builds a scratch header with
  `GetScratchPixmapHeader` and a temporary context with `DoChangeGC` and `ValidateGC`, copies through the
  entries at +8, +12 and +16 and releases with `FreeScratchPixmapHeader`. The instruction stream is word for
  word that of kona.so except for 9 load offsets, 1 low address half and 1 high address half, 11 words in all
  (beginning at +0x40).
- `cfb16FillPoly1RectGeneral` (konal.so, address 0x13f2580): **inferred.** Polygon fill for 16-bit pixels
  with any raster operation and a single-rectangle clip, handing other clips to `miFillPolygon` (two call
  sites); 829 instructions. Checked against kona.so word by word, 830 of 836 words are bit-identical and the
  6 others differ only in their 16-bit immediate (4 load offsets, 1 low address half and 1 high address half,
  earliest at +0x34).
- `cfb16SetScanline` (konal.so, address 0x13f3f00): **inferred.** Writes a scan line of 16-bit pixels into
  the drawable: the source is shifted into alignment (11 variable shifts) and stored a word at a time with
  edge masks. Checked against kona.so word by word, 295 of 314 words are bit-identical and the 19 others
  differ only in their 16-bit immediate (17 load offsets, 1 low address half and 1 high address half,
  earliest at +0x2c).
- `cfb16LineSS1RectPreviousCopy` (konal.so, address 0x13f47d0): **inferred.** Variant of the single-clip
  copy polyline at 16 bits per pixel whose name ends in Previous; 432 instructions with 16 halfword stores
  and 15 loop edges, drawing a connected line from packed coordinates tested with the 0xfffeffff mask.
  Relocation is the entire difference from kona.so, since 3 load offsets, 1 low address half and 1 high
  address half change (earliest at +0x8) and every other bit of the 434-word routine stays the same, with the
  gp offset in the prologue at 0x12b470 here against 0x11f618 there.
- `cfb16ClippedLineGeneral` (konal.so, address 0x13f5920): **inferred.** Clipped line for 16-bit pixels
  with any raster operation: two `miZeroClipLine` calls and masked halfword stores. Compared with kona.so
  only immediates move, 7 of the 719 words (5 load offsets, 1 low address half and 1 high address half,
  beginning at +0x8) since this module's data and table layout differ, and its prologue builds the global
  pointer from 0x12a320 where kona.so uses 0x11e4c8.
- `cfb16Tile32FSGeneral` (konal.so, address 0x13f6780): **inferred.** FillSpans from a word-wide tile at 16
  bits per pixel for any raster operation: `miFindMaxBand` and `miClipSpans` clip, then each span is merged
  under masks. Checked against kona.so word by word, 418 of 434 words are bit-identical and the 16 others
  differ only in their 16-bit immediate (14 load offsets, 1 low address half and 1 high address half,
  earliest at +0x24).
- `cfb16HorzS` (konal.so, address 0x13feb00): **inferred.** Horizontal run at 16 bits per pixel: head and
  tail pixels by halfword, middle as words (76 word stores in unrolled cases). Compared with kona.so only
  immediates move, 5 of the 444 words (4 load offsets and 1 low address half, earliest at +0x30) since this
  module's data and table layout differ.
- `cfb16DoBitbltOr` (konal.so, address 0x1404790): **inferred.** Rectangle copy for the or raster operation
  at 16 bits per pixel; shares its 1146-instruction size and loop layout with the exclusive-or version,
  differing in the merge instruction. Relocation is the entire difference from kona.so, since 13 load
  offsets, 5 low address halves and 1 high address half change (starting at +0x10) and every other bit of the
  1161-word routine stays the same, with the gp offset in the prologue at 0x11b4b0 here against 0x116c08
  there.
- `cfb32LineSS` (konal.so, address 0x14059c0): **inferred.** Single-width solid polyline for 32-bit pixels:
  clips with `miZeroClipLine`, uses `cfb32VertS` and `cfb32HorzS` for axis-aligned segments and
  `cfb32BresS` (two call sites) otherwise. Beyond 9 load offsets, 1 low address half and 1 high address half
  (starting at +0x24), which make up 11 of its 874 words, nothing separates this build from kona.so.
- `cfbPolyFillArcSolidGeneral` (konal.so, address 0x1406820): **inferred.** PolyFillArc with a solid colour
  and arbitrary raster operation at 8 bits per pixel: 137 instructions fetching the clip via entry +380 and
  calling an indirect fill three times. The instruction stream is word for word that of kona.so except for 3
  load offsets, 3 low address halves and 1 high address half, 7 words in all (the first at +0x1c).
- `cfb16PolyFillArcSolidCopy` (konal.so, address 0x1406c60): **inferred.** Solid copy PolyFillArc for
  16-bit pixels: loops over arcs (13 loop edges), takes the clip from entry +380 and fills spans through an
  indirect call. Relocation is the entire difference from kona.so, since 4 load offsets, 3 low address halves
  and 1 high address half change (first seen at +0x1c) and every other bit of the 136-word routine stays the
  same.
- `cfb16PolyFillArcSolidGeneral` (konal.so, address 0x1408890): **inferred.** PolyFillArc for
  16-bit pixels with any raster operation and solid fill; calls the clip entry +380 three times and an
  indirect span filler. Compared with kona.so only immediates move, 6 of the 137 words (3 load offsets and 3
  low address halves, the first at +0x24) since this module's data and table layout differ.
- `cfb16YRotatePixmap` (konal.so, address 0x1408e30): **inferred.** Vertical rotation for 16-bit tiles:
  three `memmove` calls reposition the rows, and an unsupported depth is reported with `ErrorF` before
  `mfbYRotatePixmap` takes over. Its text is the same as the 8-bit version's. Beyond 6 load offsets and 2 low
  address halves (beginning at +0x20), which make up 8 of its 79 words, nothing separates this build from
  kona.so.
- `cfbGetImage` (konal.so, address 0x1409890): **inferred.** GetImage for the
  8-bit layer: builds two scratch headers (`GetScratchPixmapHeader` at two places), copies with `cfbDoBitblt`
  or `mfbGetImage` between the clip entries +340 and +352, extracts a single plane with `cfbCopyImagePlane`
  and cleans up with `bzero` and `FreeScratchPixmapHeader`. Checked against kona.so word by word, 140 of 150
  words are bit-identical and the 10 others differ only in their 16-bit immediate (9 load offsets and 1 low
  address half, beginning at +0x34).
- `cfb8Stipple32FS` (konal.so, address 0x140acc0): **inferred.** FillSpans with a
  32-pixel stipple at 8 bits per pixel: `cfb8SetStipple` prepares the tables, `miFindMaxBand` and
  `miClipSpans` clip, and byte and halfword stores write the stippled pixels. All 2320 words of the body
  match kona.so apart from 43 whose 16-bit immediate differs (39 load offsets and 4 low address halves,
  beginning at +0x18), so opcodes, registers and branch offsets are identical, and its prologue builds the
  global pointer from 0x114f80 where kona.so uses 0x110708.
- `cfbFillSpanTileOddGeneral` (konal.so, address 0x140d2c0): **inferred.** Span fill from a tile whose
  width is not a word multiple, 8-bit pixels, any raster operation: the tile row is read with 39 variable
  shifts to line up with the destination word. Only the layout-dependent immediates differ from kona.so,
  namely 7 load offsets and 1 low address half (earliest at +0x60), and the other 686 of 694 words are
  bit-identical.
- `cfb32LineSD` (konal.so, address 0x140e340): **inferred.** Dashed polyline for 32-bit pixels: reduces the
  raster operation with `cfb32ReduceRasterOp`, clips with `miZeroClipLine`, steps dashes with `miStepDash`
  and draws with `cfb32BresD`. All 765 words of the body match kona.so apart from 14 whose 16-bit immediate
  differs (13 load offsets and 1 low address half, earliest at +0x1c), so opcodes, registers and branch
  offsets are identical, and its prologue builds the global pointer from 0x111900 where kona.so uses
  0x10d088.
- `cfb16FillBoxTileOddGeneral` (konal.so, address 0x140ef50): **inferred.** Odd-width tile box fill at 16
  bits per pixel for any raster operation: 36 variable shifts line the tile up and the and/xor masks combine
  it. Relocation is the entire difference from kona.so, since 8 load offsets and 1 low address half change
  (starting at +0x24) and every other bit of the 724-word routine stays the same.
- `cfb16SegmentSS1RectXor` (konal.so, address 0x14100b0): **inferred.** Single-clip solid segments at 16
  bits per pixel with exclusive-or: the same packed-coordinate loop as the copy version, but each pixel is
  exclusive-ored; 552 instructions. Relocation is the entire difference from kona.so, since 7 load offsets
  and 1 low address half change (beginning at +0x4) and every other bit of the 554-word routine stays the
  same, the prologue's gp constant reading 0x10fb90 instead of 0x10b318.
- `cfb16FillBoxTileOddCopy` (konal.so, address 0x1414b40): **inferred.** Fills boxes from an odd-width tile
  with copy at 16 bits per pixel: 42 variable shifts assemble each destination word from two tile words. All
  702 words of the body match kona.so apart from 9 whose 16-bit immediate differs (7 load offsets, 1 low
  address half and 1 high address half, earliest at +0x44), so opcodes, registers and branch offsets are
  identical.
- `cfbSolidSpansGeneral` (konal.so, address 0x1416a30): **inferred.** Solid span fill with any raster
  operation at 8 bits per pixel: applies the and/xor pair per word with byte-wise edges and clips with
  `miFindMaxBand` and `miClipSpans`. Only the layout-dependent immediates differ from kona.so, namely 6 load
  offsets, 1 low address half, 1 high address half and 2 pc-relative call distances (first seen at +0x2c),
  and the other 332 of 342 words are bit-identical.
- `cfb32YRotatePixmap` (konal.so, address 0x14170a0): **inferred.** Vertical tile rotation for 32-bit
  pixmaps, three `memmove` calls and the `mfbYRotatePixmap` fallback for depths it cannot rotate. Compared
  with kona.so only immediates move, 9 of the 79 words (6 load offsets, 2 low address halves and 1 high
  address half, earliest at +0x14) since this module's data and table layout differ.
- `cfb32FillBoxTileOddGeneral` (konal.so, address 0x14171e0): **inferred.** Odd-width tile box fill for
  32-bit pixels and any raster operation; 345 instructions applying the mask pair to each tile word. All 350
  words of the body match kona.so apart from 5 whose 16-bit immediate differs (3 load offsets, 1 low address
  half and 1 high address half, first seen at +0x30), so opcodes, registers and branch offsets are identical.
- `cfb8LineSS1RectXor` (konal.so, address 0x14188e0): **inferred.** Single-clip solid polyline for 8-bit
  pixels with exclusive-or: 16 byte stores and the packed coordinate clip checks. Checked against kona.so
  word by word, 568 of 571 words are bit-identical and the 3 others differ only in their 16-bit immediate (2
  load offsets and 1 low address half, beginning at +0x4), the prologue's gp constant reading 0x107360
  instead of 0x102ae8.
- `cfb32ClippedLineCopy` (konal.so, address 0x141e130): **inferred.** Clipped line for 32-bit pixels with
  copy: `miZeroClipLine` at two places and 77 word stores. Checked against kona.so word by word, 739 of 745
  words are bit-identical and the 6 others differ only in their 16-bit immediate (5 load offsets and 1 low
  address half, earliest at +0xc) (gp offset 0x101b10, kona.so 0xfd2b8).
- `cfb16SegmentSS1RectCopy` (konal.so, address 0x141ece0): **inferred.** Single-clip-rectangle solid
  segments at 16 bits per pixel with copy: unpacks packed coordinate pairs, tests them against the clip with
  the 0x80008000 and 0xfffeffff checks and draws with halfword stores. Only the layout-dependent immediates
  differ from kona.so, namely 8 load offsets and 2 low address halves (beginning at +0xc), and the other 607
  of 617 words are bit-identical, the prologue's gp constant reading 0x100f60 instead of 0xfc708.
- `cfbPolyFillArcSolidCopy` (konal.so, address 0x1420e80): **inferred.** PolyFillArc with a solid colour
  and copy operation, 8 bits per pixel: fetches the clip through entry +380 and calls a shared helper; 136
  instructions. Relocation is the entire difference from kona.so, since 4 load offsets, 3 low address halves
  and 1 pc-relative call distance change (beginning at +0x24) and every other bit of the 136-word routine
  stays the same.
- `cfb16ZeroPolyArcSSXor` (konal.so, address 0x1422530): **inferred.** Zero-width arc drawing for 16-bit
  pixels with exclusive-or: falls back to `miPolyArc` when the arc is not simple, clipping through entry
  +380. Beyond 3 load offsets, 2 low address halves and 1 pc-relative call distance (first seen at +0x24),
  which make up 6 of its 117 words, nothing separates this build from kona.so.
- `cfb32ValidateGC` (konal.so, address 0x1422e90): **inferred.** ValidateGC for
  32-bit-per-pixel drawables: recomputes the composite clip with `miComputeCompositeClip`, reduces the raster
  operation with `cfb32ReduceRasterOp`, selects line, fill and text routines for the fill style (reporting
  "illegal fillStyle" through `FatalError`), pads and rotates tiles with `cfb32PadPixmap` and
  `cfb32CopyRotatePixmap`, and rebuilds the operation table with `miCreateGCOps`. All 730 words of the body
  match kona.so apart from 53 whose 16-bit immediate differs (51 load offsets and 2 low address halves, the
  first at +0x2c), so opcodes, registers and branch offsets are identical.
- `cfb16ClippedLineCopy` (konal.so, address 0x14241e0): **inferred.** Clipped line for 16-bit pixels with
  copy: `miZeroClipLine` twice, then halfword stores (55) along the line. Same code as kona.so with 7 words
  re-addressed for this module (5 load offsets, 1 low address half and 1 high address half, starting at
  +0x4), nothing else in the 745 words changing, the prologue's gp constant reading 0xfba60 instead of
  0xf7868.
- `cfb16LineSS` (konal.so, address 0x14290a0): **inferred.** Single-width solid polyline for 16-bit pixels:
  `miZeroClipLine` clips, then `cfb16VertS`, `cfb16HorzS` or
  `cfb16BresS` draw by slope; the same shape as the 32-bit routine. Only the layout-dependent immediates
  differ from kona.so, namely 9 load offsets and 1 low address half (the first at +0x2c), and the other 868
  of 878 words are bit-identical.
- `cfb32ZeroPolyArcSSXor` (konal.so, address 0x142a860): **inferred.** Zero-width arc for 32-bit pixels
  with exclusive-or: calls entry +380 twice and `miPolyArc` as the general path. Relocation is the entire
  difference from kona.so, since 3 load offsets, 2 low address halves and 1 pc-relative call distance change
  (first seen at +0x24) and every other bit of the 117-word routine stays the same.
- `cfb32ImageGlyphBlt8` (konal.so, address 0x142f480): **inferred.** ImageGlyphBlt for
  32-bit pixels: measures with `QueryGlyphExtents`, then fills the cell background and paints the glyph bits
  through the entries at +44 and +72; 84 instructions. Beyond 2 load offsets and 1 low address half (earliest
  at +0x20), which make up 3 of its 84 words, nothing separates this build from kona.so.
- `cfb32FillRectTileOdd` (konal.so, address 0x142f5d0): **inferred.** Rectangle fill from an odd-width tile
  at 32 bits per pixel: forwards to `cfb32FillBoxTile32sGeneral` for each rectangle. Compared with kona.so
  only immediates move, 4 of the 37 words (3 load offsets and 1 low address half, beginning at +0x24) since
  this module's data and table layout differ.
- `cfb16LineSD` (konal.so, address 0x142f820): **inferred.** Dashed polyline for 16-bit pixels:
  `cfb16ReduceRasterOp`, `miZeroClipLine`, `miStepDash` and
  `cfb16BresD` in the same order as the 32-bit routine. Checked against kona.so word by word, 755 of 769
  words are bit-identical and the 14 others differ only in their 16-bit immediate (13 load offsets and 1 low
  address half, earliest at +0x1c), the prologue's gp constant reading 0xf0420 instead of 0xec688.
- `cfb16FillRectSolidXor` (konal.so, address 0x1430430): **inferred.** Solid rectangle fill for 16-bit
  pixels with the exclusive-or raster operation: loads each destination word and stores its exclusive-or with
  the colour, in unrolled loops. Only the layout-dependent immediates differ from kona.so, namely 7 load
  offsets and 1 low address half (the first at +0x34), and the other 702 of 710 words are bit-identical.
- `cfb32CopyPixmap` (konal.so, address 0x1430f60): **inferred.** Duplicates a 32-bit pixmap by the same two
  steps as the 8-bit routine, create through the screen entry +236 and copy with `memmove`. Relocation is the
  entire difference from kona.so, since 1 load offset and 1 low address half change (first seen at +0x28) and
  every other bit of the 37-word routine stays the same.
- `cfbZeroPolyArcSS8Xor` (konal.so, address 0x14313c0): **inferred.** Zero-width arc for 8-bit pixels with
  exclusive-or: `miPolyArc` handles the cases the fast loop does not, after three calls of the clip entry
  +380. Relocation is the entire difference from kona.so, since 3 load offsets and 2 low address halves
  change (earliest at +0x24) and every other bit of the 117-word routine stays the same.
- `cfb16SolidSpansCopy` (konal.so, address 0x14326f0): **inferred.** Fills spans in a solid 16-bit colour
  with copy: clips with `miFindMaxBand` and `miClipSpans`, then writes whole words for the middle of each
  span. All 208 words of the body match kona.so apart from 9 whose 16-bit immediate differs (8 load offsets
  and 1 low address half, starting at +0x30), so opcodes, registers and branch offsets are identical.
- `cfb32GetImage` (konal.so, address 0x1432ad0): **inferred.** GetImage for
  32-bit drawables: scratch header via `GetScratchPixmapHeader`, `bzero` of the output, copy with
  `cfb32DoBitblt` or the generic `miGetImage`, `mfbGetImage` for one-bit results, and
  `FreeScratchPixmapHeader`. Only the layout-dependent immediates differ from kona.so, namely 7 load offsets
  and 1 low address half (earliest at +0x28), and the other 101 of 109 words are bit-identical.
- `cfb16FillRectTileOdd` (konal.so, address 0x1433810): **inferred.** Rectangle fill from an odd-width tile
  at 16 bits per pixel: forwards to `cfb16FillBoxTileOddGeneral` with the rectangle list; 55 instructions.
  The instruction stream is word for word that of kona.so except for 6 load offsets and 1 low address half, 7
  words in all (first seen at +0x30).
- `cfb8SegmentSS1RectGeneral` (konal.so, address 0x1434610): **inferred.** Single-clip solid segments for
  8-bit pixels and any raster operation, with 16 byte stores and the packed coordinate checks 0x80008000 and
  0xfffeffff. The instruction stream is word for word that of kona.so except for 6 load offsets, 1 low
  address half and 1 high address half, 8 words in all (beginning at +0x0) (gp offset 0xeb630, kona.so
  0xe7b08).
- `cfb16PadPixmap` (konal.so, address 0x1437100): **inferred.** Widens a small tile pixmap to a whole
  number of words by replicating its rows: 26 variable shifts compose each padded row from repeated 16-bit
  pixels. All 139 words of the body match kona.so apart from 3 whose 16-bit immediate differs (1 load offset,
  1 low address half and 1 high address half, starting at +0x10), so opcodes, registers and branch offsets
  are identical.
- `cfb32BitBlt` (konal.so, address 0x14378c0): **inferred.** CopyArea worker for
  32-bit drawables, 521 instructions long like `cfbBitBlt`: clip entries +340 to +376, the copy entry at +12,
  then `NotClippedByChildren` and `miHandleExposures` for the exposed regions. Only the layout-dependent
  immediates differ from kona.so, namely 10 load offsets, 1 low address half and 1 high address half
  (starting at +0x34), and the other 511 of 523 words are bit-identical.
- `cfb16LineSS1Rect` (konal.so, address 0x1439020): **inferred.** Entry for solid polylines with a
  one-rectangle clip at 16 bits per pixel: four indirect calls choose copy, xor or general line routines; 180
  instructions. Only the layout-dependent immediates differ from kona.so, namely 9 load offsets and 1 low
  address half (the first at +0x14), and the other 172 of 182 words are bit-identical, and its prologue
  builds the global pointer from 0xe6c20 where kona.so uses 0xe31d8.
- `cfb32SegmentSS1RectCopy` (konal.so, address 0x1439300): **inferred.** Single-clip solid segments at 32
  bits per pixel with copy: packed coordinates tested against the clip, a word store for each pixel. All 574
  words of the body match kona.so apart from 6 whose 16-bit immediate differs (4 load offsets and 2 low
  address halves, the first at +0x4), so opcodes, registers and branch offsets are identical, and its
  prologue builds the global pointer from 0xe6940 where kona.so uses 0xe2ef8.
- `cfb32PadPixmap` (konal.so, address 0x143ee90): **inferred.** Pads a 32-bit tile pixmap to the word
  multiple the fill code needs, by repeating each row; 137 instructions, the same loop structure as the
  16-bit padder. Relocation is the entire difference from kona.so, since 1 load offset and 1 low address half
  change (beginning at +0x2c) and every other bit of the 139-word routine stays the same.
- `cfbUnnaturalTileFS` (konal.so, address 0x143f120): **inferred.** Dispatches span fills for tile widths
  that do not divide a word: clips spans with `miFindMaxBand` and `miClipSpans` (called at two places) and
  hands them to the odd-width span routines; 120 instructions. Relocation is the entire difference from
  kona.so, since 9 load offsets and 1 low address half change (beginning at +0x20) and every other bit of the
  120-word routine stays the same.
- `cfb32FillSpanTile32sGeneral` (konal.so, address 0x143f640): **inferred.** Span fill from a tile of one
  word for 32-bit pixels and any raster operation; 219 instructions, a word per pixel with the mask pair
  applied. Relocation is the entire difference from kona.so, since 2 load offsets and 1 low address half
  change (the first at +0x38) and every other bit of the 223-word routine stays the same.
- `cfb32PutImage` (konal.so, address 0x143f9c0): **inferred.** PutImage for
  32-bit drawables, same structure as the 8-bit routine: scratch header from `GetScratchPixmapHeader`,
  context changes through `DoChangeGC` (three places), `ValidateGC` and the copy entries, header freed with
  `FreeScratchPixmapHeader`. Compared with kona.so only immediates move, 10 of the 199 words (9 load offsets
  and 1 low address half, starting at +0x4c) since this module's data and table layout differ.
- `cfb32SolidSpansGeneral` (konal.so, address 0x1440a10): **inferred.** Solid span fill with an arbitrary
  raster operation at 32 bits per pixel, clipped by `miFindMaxBand` and `miClipSpans`, one word store per
  pixel pair of masks. Same code as kona.so with 5 words re-addressed for this module (4 load offsets and 1
  low address half, beginning at +0x34), nothing else in the 266 words changing.
- `cfb16ReduceRasterOp` (konal.so, address 0x1441420): **inferred.** Turns a raster operation, plane mask
  and foreground pixel into the and/xor pair the span and line routines apply to destination words; 119
  instructions built around a switch on the operation. All 119 words of the body match kona.so apart from 3
  whose 16-bit immediate differs (1 load offset and 2 low address halves, earliest at +0x4), so opcodes,
  registers and branch offsets are identical, the prologue's gp constant reading 0xde820 instead of 0xdb108.
- `cfbCreatePixmap` (konal.so, address 0x1442160): **established.** CreatePixmap for
  8-bit drawables: `AllocatePixmap` makes the header and pixel store (called at two places), then the width
  padding and byte count are filled in. Relocation is the entire difference from kona.so, since 6 load
  offsets and 1 low address half change (beginning at +0x14) and every other bit of the 102-word routine
  stays the same (gp offset 0xddae0, kona.so 0xda3d8).
- `cfb32FillRectTile32Copy` (konal.so, address 0x1447060): **inferred.** Rectangle fill from a one-word
  tile with copy at 32 bits per pixel: stores the tile word across each row (26 word stores) without any
  shift. Compared with kona.so only immediates move, 4 of the 172 words (2 load offsets, 1 low address half
  and 1 high address half, first seen at +0xc) since this module's data and table layout differ, and its
  prologue builds the global pointer from 0xd8be0 where kona.so uses 0xd5508.
- `cfbPolyGlyphRop8` (konal.so, address 0x144e0e0): **inferred.** PolyGlyphBlt with a general raster
  operation at 8 bits per pixel: `cfb8SetStipple` is called twice to build the stipple tables and the glyph
  rows are applied through entry +0. The instruction stream is word for word that of kona.so except for 12
  load offsets and 3 low address halves, 15 words in all (first seen at +0x5c).
- `cfb16LineSS1RectCopy` (konal.so, address 0x144ea90): **inferred.** Single-clip solid polyline at 16 bits
  per pixel with copy: packed coordinates, clip tests and halfword stores (32 of them) along the major axis.
  Compared with kona.so only immediates move, 6 of the 586 words (4 load offsets and 2 low address halves,
  starting at +0x4) since this module's data and table layout differ, with the gp offset in the prologue at
  0xd11b0 here against 0xcdae8 there.
- `cfbLineSD` (konal.so, address 0x144f3c0): **inferred.** Dashed polyline for 8-bit pixels:
  `cfbReduceRasterOp`, `miZeroClipLine`, `miStepDash` and
  `cfbBresD` (two call sites each for the last three). The instruction stream is word for word that of
  kona.so except for 12 load offsets and 1 low address half, 13 words in all (beginning at +0x1c), and its
  prologue builds the global pointer from 0xd0880 where kona.so uses 0xcd1b8.
- `cfbSetScanline` (konal.so, address 0x1451be0): **inferred.** Writes one scan line of 8-bit pixels from a
  packed source into the destination words, shifting with 11 variable shifts to align the source and masking
  the first and last word. Same code as kona.so with 18 words re-addressed for this module (17 load offsets
  and 1 low address half, first seen at +0x48), nothing else in the 321 words changing.
- `cfb32CopyPlane` (konal.so, address 0x14521f0): **inferred.** CopyPlane for
  32-bit drawables: a short routine that calls the generic copy-plane entry at +0 of the depth table with its
  arguments. All 18 words of the body match kona.so apart from 2 whose 16-bit immediate differs (1 load
  offset and 1 low address half, first seen at +0x18), so opcodes, registers and branch offsets are
  identical, the prologue's gp constant reading 0xcda50 instead of 0xca5e8.
- `cfb16FillSpanTileOddGeneral` (konal.so, address 0x1452240): **inferred.** Odd-width tile span fill for
  16-bit pixels: tile row bits are realigned with 39 variable shifts and merged under the raster-operation
  masks. Compared with kona.so only immediates move, 9 of the 697 words (8 load offsets and 1 low address
  half, first seen at +0x38) since this module's data and table layout differ.
- `cfb32CopyRotatePixmap` (konal.so, address 0x1452da0): **inferred.** Copies a 32-bit pixmap and rotates
  it to a new origin: `cfb32CopyPixmap` duplicates it (or `memmove` when the sizes match), `cfb32PadPixmap`
  widens it, `cfb32XRotatePixmap` and `cfb32YRotatePixmap` shift it; reads the screen entry +240. All 78
  words of the body match kona.so apart from 7 whose 16-bit immediate differs (6 load offsets and 1 low
  address half, beginning at +0x2c), so opcodes, registers and branch offsets are identical.
- `cfbSolidSpansCopy` (konal.so, address 0x1454860): **inferred.** Fills spans in a solid 8-bit colour with
  the copy raster operation: byte stores for the unaligned ends and word stores in between; clips with
  `miFindMaxBand` and `miClipSpans`. Relocation is the entire difference from kona.so, since 5 load offsets,
  1 low address half and 1 high address half change (beginning at +0x28) and every other bit of the 247-word
  routine stays the same.
- `cfb32LineSS1RectCopy` (konal.so, address 0x1455fd0): **inferred.** Single-clip solid polyline for 32-bit
  pixels with copy: 585 instructions, word stores along the line with the packed-coordinate clip tests. Only
  the layout-dependent immediates differ from kona.so, namely 4 load offsets, 2 low address halves and 1 high
  address half (starting at +0x0), and the other 580 of 587 words are bit-identical, the prologue's gp
  constant reading 0xc9c70 instead of 0xc6808.

## Functions below 0x4cdd80

Read from the 6.5.30m `usr/lib/X11/dyDDX/kona.so` disassembly (callee names resolved through the module's global offset table; command tokens named as in [GE.h](../GE.h), found from the offsets the code stores to in the pipe window, token number times 32). One entry per function, grouped by subsystem. A function marked **established** was read for its callees, tokens and ioctls; **inferred** marks an entry whose role comes from the name and the observed structure (callees, store widths, constants) but whose finer behaviour was not traced. Where the module has the standard X server routine of the same name the entry says which callees confirm it. Entries cite the function's own address.

### Pipe payload copy routines

- `KonSeqData32_ip19` (kona.so, address 0x427010): **established.** Copies 32 consecutive 32-bit words to the
  pipe, using the first argument as source and the second and third as the two store destinations. An
  8-byte-aligned source goes out as 16 doubleword stores to the third; a word-aligned source sends words 0 and
  31 as single stores to the second and 15 doublewords to the third. Called by `konDrawOpaqueMonoImage` for
  full-width image bursts and by `konInstall24DCColormap`, 48 times.
- `KonSeqData24_ip19` (kona.so, address 0x427128): **established.** Burst copy of 24 words. Aligned source: 12
  doubleword stores to the third argument. Word-aligned source: the first and last words go to the second
  argument and 11 doublewords to the third. A leaf with no state; no direct call to it appears in the kon
  routines read in this range.
- `KonSeqData23_ip19` (kona.so, address 0x427200): **established.** Odd-length burst copy of 23 words,
  matching the 24-word payload of the `HP_X_POINT24` command after its first word. Aligned input writes 11
  doublewords then the last word; misaligned input writes word 0 first. Only `konPolyPoint` calls it.
- `KonSeqData16_ip19` (kona.so, address 0x4272d0): **established.** Sixteen-word copy: eight doubleword stores
  for an aligned source, seven doublewords plus a head and a tail word for a word-aligned one. Leaf routine;
  none of the kon routines in this range calls it. The routine is 38 instructions long.
- `KonSeqData12_ip19` (kona.so, address 0x427368): **established.** Twelve-word copy: six doublewords when the
  source is 8-byte aligned, otherwise one head word, five doublewords and a tail word. A leaf routine that no
  kon routine in this range calls directly.
- `KonSeqData11_ip19` (kona.so, address 0x4273e0): **established.** Copies the 11 words that follow the first
  word of a six-rectangle batch: the caller stores word 0 at the `HP_X_BOX6` slot, then calls this routine.
  Five doublewords go out with the odd word separate. Called by `konSolidFillRects` and four other rectangle
  fills (stippled, tiled and the accelerated tile paths).
- `KonSeqData10_ip19` (kona.so, address 0x427450): **established.** Ten-word copy: five doublewords when the
  source is 8-byte aligned, otherwise a head word, four doublewords and a tail word. Straight-line leaf code.
  None of the kon routines in this range calls it.
- `KonSeqData9_ip19` (kona.so, address 0x4274b8): **established.** Copies nine words: the payload after the
  first word of the `HP_X_DATA10` command, which carries five rectangles. Four doublewords plus one single
  word. Called by `konSolidFillRects`, `konDrawSolidRects` and the three other rectangle fills in the tail of
  a batch.
- `KonSeqData8_ip19` (kona.so, address 0x427518): **established.** Copies eight words in four doublewords
  (aligned) or three doublewords with two single words (word-aligned). Its only caller in this range is
  `konDrawOpaqueMonoImage`, which uses it for mid-sized runs of image words.
- `KonSeqData7_ip19` (kona.so, address 0x427570): **established.** Seven-word payload copy for the
  `HP_X_DATA8` command, which carries four rectangles: the caller stores the first word itself and this
  routine sends the other seven, three doublewords and one word. Called by the rectangle-fill routines such as
  `konSolidFillRects`.
- `KonSeqData6_ip19` (kona.so, address 0x4275c0): **established.** Copies six words, three doublewords when
  aligned and two doublewords plus two single words otherwise. The span fills `konSolidFS` and
  `konFillSpansSolid` call it, as do `konLineSS` and the tiled and stippled span fills.
- `KonSeqData5_ip19` (kona.so, address 0x427608): **established.** Five-word copy, two doublewords plus one
  word. It finishes a three-rectangle `HP_X_DATA6` command in the rectangle fills and is also called by
  `konLineSS` and `konPolyPoint` for their short groups.
- `KonSeqData4_ip19` (kona.so, address 0x427648): **established.** Four-word copy: two doublewords for an
  aligned source, or a head word, one doubleword and a tail word otherwise. Called by `konLineSS`,
  `konPolyPoint` and `konDrawOpaqueMonoImage` for their short tails.
- `KonSeqData3_ip19` (kona.so, address 0x427680): **established.** Three-word copy, the tail of a
  two-rectangle `HP_X_DATA4` payload: aligned input sends one doubleword and word 2; misaligned input sends
  word 0 and a doubleword. The shortest of the family at 12 instructions, called from every rectangle fill and
  the line and point routines.

### Symbol database reader and writer

- `SDBaddNewArraySymbol` (kona.so, address 0x431f84): **established.** Adds an array-valued symbol to a
  database being written. It forwards its arguments unchanged to the shared adder at 0x431cc4, so the caller's
  element count reaches the table entry at +4. The adder doubles the table when full (starting at 512
  entries), copies the 32-byte name to +12, records the stream position at +8 and writes the values with
  `xdr_typedData`.
- `SDBaddNewScalarSymbol` (kona.so, address 0x431fbc): **established.** Adds a single-valued symbol to a
  database being written. It shifts its trailing arguments up one place and passes an element count of zero to
  the shared adder at 0x431cc4, which `SDBaddNewArraySymbol` also calls; a scalar entry is therefore recorded
  with count 0 in the same 44-byte table record.
- `SDBcloseNewDatabase` (kona.so, address 0x431ffc): **established.** Finishes writing a symbol database:
  sorts the 44-byte table entries with `qsort` and `compareSTEName`, writes the table with `xdr_array`,
  patches the offsets into the header, writes the header with `xdr_SDBfileHeader`, then frees the table,
  closes the stream and the file.
- `SDBopenNewDatabase` (kona.so, address 0x432190): **established.** Opens a symbol database for writing. A
  file name of "-" compared with `strcmp` selects standard output (the second `__iob` entry); any other name
  goes through `fopen` with mode "w". It then allocates a 20-byte stream record and a 24-byte handle, sets up
  an XDR encode stream with `xdrstdio_create`, and stores errno 2 or 12 on a bad name or failed allocation,
  closing the handle through `SDBcloseNewDatabase` if setup fails.
- `SDBsetHeader` (kona.so, address 0x4322f4): **established.** Stores the version pair (two 16-bit halves at
  +8 and +10 of the header, zero if none is supplied) and a description string of at most 100 bytes at +12,
  copied with `strncpy`. The static header-allocation routine at 0x431d84 calls it when a new database is
  created.
- `SDBgetSymbolDataAddress` (kona.so, address 0x432524): **established.** Looks up a symbol with the helper at
  0x432424, which bsearches the 44-byte entries and seeks the XDR stream to the entry's data offset (errno 6
  when absent), then returns the stream position through the position entry (+16) of the stream's operations
  table.
- `SDBgetSymbolDatatype` (kona.so, address 0x43258c): **established.** Returns the data type word of a
  symbol's table entry: the name is looked up with the helper at 0x432424 and the first word of the entry is
  read; it returns 0 when the name is absent.
- `SDBgetSymbolElementCount` (kona.so, address 0x4325e4): **established.** Reads the element count (the word
  at +4) of a symbol's table entry, found with the lookup helper at 0x432424; returns 0 when the name is
  absent.
- `SDBgetSymbolValueArray` (kona.so, address 0x432640): **established.** Fetches an array symbol's values: a
  thin wrapper that calls the value reader at 0x4324c4, which finds the entry with the helper at 0x432424 and
  decodes its data with `xdr_typedData`.
- `SDBgetSymbolValueScalar` (kona.so, address 0x432678): **established.** Fetches a scalar symbol's value
  through the same reader at 0x4324c4 as `SDBgetSymbolValueArray`; the reader looks up the entry and decodes
  it with `xdr_typedData`, so the two wrappers differ only in their own return conventions.
- `SDBcloseReadDatabase` (kona.so, address 0x4326b0): **established.** Closes a database opened for reading:
  frees the symbol table pointer at +172, runs the memory interface's destroy entries (+28 then free), and
  closes the `FILE` with `fclose` when this handle opened it.
- `SDBreadOpenDatabase` (kona.so, address 0x432768): **established.** Opens a symbol database for reading. A
  name of "-" selects standard input, otherwise `fopen` with mode "r" is used. It allocates a 176-byte handle
  and a 24-byte stream record, builds a decode stream with `xdrstdio_create`, reads the header with
  `xdr_SDBfileHeader`, validates it with `strncmp` and loads the table. Errors set errno 12 (no memory) or 20
  (bad file) and close the handle through `SDBcloseReadDatabase`.
- `SDBprocessOneUserMethod` (kona.so, address 0x432968): **established.** Runs one registered user method over
  a symbol's values: finds the symbol with the helper at 0x432424, checks that the symbol's type matches the
  method's, maps it with `mapTypeToXDRPROC`, and calls the method's function pointer (+24) once per element.
  Sets errno 22 for a size mismatch.
- `SDBinitializeSymbolTableEntries` (kona.so, address 0x432d50): **established.** Zeroes a run of 44-byte
  symbol table entries: for each entry it clears the type, element count, file offset and the first name byte.
  Called when a database table is allocated.
- `SDBsetupMemoryInterface` (kona.so, address 0x433254): **established.** Installs four function pointers (16
  bytes) into the memory-interface table the symbol database code calls instead of the C library: a hook
  first, then allocate (called with a count and a size), reallocate and free, one word each in that order.
- `compareSTEName` (kona.so, address 0x432b0c): **established.** `qsort` and `bsearch` comparison for symbol
  table entries: runs `strcmp` on the 32-byte name field that starts at +12 of each 44-byte entry.
- `mapTypeToXDRPROC` (kona.so, address 0x432b44): **established.** Translates a symbol data type number (0 to
  20) into the matching XDR routine and element size: `xdr_int`, `xdr_u_short`, `xdr_float`,
  `xdr_double`, `xdr_wrapstring`, `xdr_enum` and others. Asserts through
  `__assert` with messages from sdbcommon.c when the type is not defined or the routine would be null.
- `xdr_SDBelementIndex` (kona.so, address 0x432d84): **established.** XDR routine for an element index field:
  calls `xdr_u_long` on the 32-bit value. One of five small codecs that `xdr_SDBfileHeader` and
  `xdr_SDBsymbolTableEntry` compose.
- `xdr_SDBfileOffset` (kona.so, address 0x432db8): **established.** XDR routine for a file offset field in the
  symbol database, forwarding to `xdr_u_long`. Used for the table and data offsets in the header and the data
  offset in each table entry.
- `xdr_typedData` (kona.so, address 0x432dec): **established.** XDR routine for a symbol's value whose type is
  given as an argument: picks the codec with `mapTypeToXDRPROC`, then encodes or decodes the scalar directly,
  or a counted array with `xdr_array`. For string types it uses `xdr_wrapstring` and `strlen`,
  `strcpy` to size and copy the buffer.
- `xdr_SDBfileHeader` (kona.so, address 0x432f40): **established.** XDR routine for the 124-byte database
  header: a 100-byte magic string through `xdr_bytes`, two version numbers via `xdr_SDBversionNumber`, a
  second 100-byte string, the element index and two file offsets, then a ten-entry `xdr_array` of 4-byte
  counters.
- `xdr_SDBdataType` (kona.so, address 0x433080): **established.** XDR codec for the data type field of a
  symbol entry, an enumeration, so it is `xdr_enum` on the 32-bit word. Called by `xdr_SDBsymbolTableEntry`.
- `xdr_SDBsymbolName` (kona.so, address 0x4330b4): **established.** XDR codec for a symbol name: `xdr_string`
  with a maximum of 31 characters, then forces the byte at index 31 to NUL. A null or empty destination fails
  with return 0.
- `xdr_SDBsymbolTableEntry` (kona.so, address 0x433124): **established.** XDR codec for one 44-byte table
  entry: the 32-byte name at +12 via `xdr_SDBsymbolName`, the type, the element index at +4 and the file
  offset at +8; stops with failure at the first field that fails.
- `xdr_SDBversionNumber` (kona.so, address 0x4331ec): **established.** XDR codec for a version number: two
  `xdr_u_short` calls, major then minor (the second at +2). Used twice by `xdr_SDBfileHeader`.

### Video format files

- `vfmtReadKonaVideoFormat` (kona.so, address 0x4319c0): **established.** Loads a Kona video format file into
  a caller's record: finds the file with `vfmtFindKonaFormatFile`, opens it with `SDBreadOpenDatabase`, copies
  the 64-byte format name, takes its modification time via `vfmtGetLastKonaFileStat`, then runs seven section
  decoders in turn. Error text "failed to stat" or "failed to open" is recorded with source line numbers 646,
  649 and 662.

### Graphics-context hooks

- `konChangeGC` (kona.so, address 0x496100): **established.** Wrapper for the ChangeGC entry (offset +4) of
  the graphics-context function table. It puts back the table the module saved in the context's private record
  at +164, calls the saved entry, saves the table again and reinstalls the module's own. It touches no pipe
  register. The routine is 40 instructions long.
- `konCopyClip` (kona.so, address 0x439260): **established.** Wrapper for the CopyClip entry (+24) of the
  context function table, built exactly like `konChangeGC`: swap in the saved original table from private
  +164, call the original, restore the module's table. The private record comes from the context's private
  array at +76 indexed by `konScreenPrivateIndex`.
- `konDestroyClip` (kona.so, address 0x45c1c0): **established.** Wrapper for the DestroyClip entry (+20) of
  the context function table: restores the saved original table from private +164, calls the original destroy,
  and reinstalls the module's table. No pipe store. The routine is 38 instructions long.
- `konChangeClip` (kona.so, address 0x47efb0): **established.** Wrapper for the ChangeClip entry (+16) of the
  context function table. Same swap as `konChangeGC` with four arguments passed through: original table back,
  call entry +16, module table reinstalled.
- `kon_GCOpsCacheInit` (kona.so, address 0x4c9580): **established.** Clears the module's cache of
  drawing-operation sets: a loop that stores zero into each of 2048 word entries of a table in the module's
  data. Run when the screen is set up so no stale operation set is used.
- `kon_loadAccelGC` (kona.so, address 0x449a40): **established.** Sends `HP_X_LOADPOS` and then the context
  state through `HP_X_LOADGC` for the accelerated tiled and span paths. The position words come from the four
  halfword fields at +8 to +14 of the screen record and the GC words from the context's private record (fields
  at +4 to +80). It makes no call.
- `kon_loadImgRectGC` (kona.so, address 0x4a9480): **established.** Builds and sends a `HP_X_LOADGC` for image
  rectangles: it forces the mode field (clears bits 1 to 4, sets the value 6) and masks the colour word with
  0xffffff before storing the context words, so a rectangle fill ignores the high byte. No callee.
- `kon_loadImpWordGC` (kona.so, address 0x462a10): **established.** Loads graphics state for the word-sized
  image path through `HP_X_LOADGC`, after printing its own name with `ErrorF`. The context words are combined
  with the constant masks 0xff03ffff and 0xfffc3fff and the colour mask 0xffffff, and the constants 0x13000a
  and 0x28000 are or'ed in; what each field means to the pipe is not read from this routine.
- `kon_loadNfbBitmapGC` (kona.so, address 0x4396e0): **established.** Loads the state for a bitmap draw: after
  an `ErrorF` trace it emits `HP_X_LOADGC` and `HP_X_PIX_SETUP`. The routine builds its words with the
  constants 0xfff000 and 0xffffff; it is the one the solid poly-text and stipple image paths use before
  sending pixel data.
- `kon_loadNfbOpaqueBitmapGC` (kona.so, address 0x44cb10): **established.** Opaque-bitmap variant of the
  loader: after an `ErrorF` trace it sends `HP_X_LOADGC` and `HP_X_PIX_SETUP`, setting mode words 0x100030,
  0xff0005 and 0xff0028 so both foreground and background colours are drawn. Used by `konDrawOpaqueMonoImage`.
- `kon_loadNfbGCoff` (kona.so, address 0x471860): **established.** Sends `HP_X_LOADPOS` with an origin given
  by its fifth and sixth arguments and the distances from that origin to the extent held in the screen
  record's halfwords at +8 and +10, then calls the loader at 0x52f810 through the global offset table with the
  drawable's byte at +2 as the last argument.
- `kon_loadCopyWindowGC` (kona.so, address 0x47f7d0): **established.** Loads the context for a window copy
  through `HP_X_LOADGC`, tracing with `ErrorF`. The mode word is picked among several constants (0x110001,
  0x40001, 0x40005 and others) and combined with masks such as 0xff03ffff,
  0xfffc3fff and 0xf00fff; the selection follows branches on context fields that this entry does not decode.
- `kon_loadGC` (kona.so, address 0x4a6270): **established.** The general loader: sends `HP_X_LOADPOS` (four
  words from the screen record's halfword fields at +8 to +14) and `HP_X_LOADGC` with the foreground and
  background colours, write masks, configuration, operation and format words taken from the context's private
  record at +4 to +64. Prints the word values with `ErrorF` under the trace flag.
- `kon_loadClipRects` (kona.so, address 0x495b40): **established.** Sends the clip rectangle list:
  `HP_X_LOADCLIP` with the count, and either the one box as four 16-bit values or, for many boxes, the first
  through `HP_X_LOADCLIP` and the rest in pairs through `HP_X_BDATA4`. Uses a loop that steps eight bytes per
  box.

### Fills, spans and tiles

- `konSolidFillRects` (kona.so, address 0x4aa9b0): **established.** Fills a rectangle list with the context's
  foreground colour: calls `kon_loadGC`, sends `HP_X_LOADPOS` and `HP_X_LOADCLIP`, then batches boxes six at a
  time as `HP_X_BOX6` (11 payload words through `KonSeqData11_ip19`). A tail of five, four, three, two or one
  box goes out as `HP_X_DATA10`, `HP_X_DATA8`, `HP_X_DATA6`,
  `HP_X_DATA4` or `HP_X_DATA2`.
- `konDrawSolidRects` (kona.so, address 0x4980a0): **established.** Draws solid rectangles for a window whose
  private data is found through `dbcWindowPrivateIndex`: calls `kon_loadNfbGC`, sends `HP_X_LOADCLIP` and then
  `HP_X_BOX6` batches with the same `HP_X_DATA10` to `HP_X_DATA2` tails as the plain solid fill.
- `konStippledCFillRects` (kona.so, address 0x438d30): **established.** Stippled rectangle fill: loads the
  colour state with `kon_loadGC`, puts the stipple in pipe memory through `kon_loadStipple`, sends
  `HP_X_LOADPOS`, `HP_X_LOADCLIP` and the box batches, and drops the stipple with `kon_unloadStipple`. It
  prints "konSolidFillRects" in its trace, a copy of the solid routine's string.
- `konTiledCFillRects` (kona.so, address 0x48cca0): **established.** Empty stub with the four-argument
  rectangle-fill signature: it saves its arguments and returns at once, issuing no pipe command and calling
  nothing. The accelerated tiled version is `konTiledCAccelFillRects`.
- `konTiledCAccelFillRects` (kona.so, address 0x4c8c10): **established.** Tiled rectangle fill for the
  accelerated path: `kon_loadGC` for colours, `kon_loadTilePlane` for the tile, then `HP_X_LOADPOS`,
  `HP_X_LOADCLIP` and the `HP_X_BOX6` and `HP_X_DATA10` to
  `HP_X_DATA2` box batches, with `kon_unloadStipple` at the end. Its trace string says "konSolidFillRects",
  copied from the solid fill.
- `konPolyFillRectTiledCAccel` (kona.so, address 0x49edd0): **established.** PolyFillRect with a tiled fill
  for the accelerated path. It caches the tile as a stipple with `kon_allocCachedStipple`,
  `kon_loadCachedStipple` and `kon_hitCachedStipple`, rotates it with `HP_X_ROTATESTIPPLE`, loads it with
  `HP_X_LOADSTIPPLE`, sends `HP_X_LOADGC`, `HP_X_LOADCLIP` and
  `HP_X_RECT6` or `HP_X_RECT` boxes plus the data tails.
- `konSolidFS` (kona.so, address 0x451160): **established.** Fills a list of spans with the solid colour:
  after `kon_loadGC` it sends `HP_X_LOADCLIP`, `HP_X_LOADPOS` and spans six at a time as
  `HP_X_SPANS6` with the remainder as `HP_X_SPANS2` or `HP_X_SPANS`, data copied with
  `KonSeqData6_ip19`. Traces its name with `ErrorF`.
- `konFillSpansSolid` (kona.so, address 0x4ad7e0): **established.** The span fill with clipping by hand: it
  uses `miFindMaxBand` and `miClipSpans` to cut spans against the clip rectangles when more than one is
  present (the message "clipping by hand" names this path), loads the rectangles with `kon_loadClipRects` and
  sends the spans as `HP_X_SPANS6`, `HP_X_SPANS2` or `HP_X_SPANS`.
- `konFillSpansStippledC` (kona.so, address 0x449c30): **established.** Stippled version of the span fill:
  `kon_loadGC` and `kon_loadStipple` set the colour and stipple, `miFindMaxBand` and
  `miClipSpans` clip the spans, and `HP_X_SPANS6`, `HP_X_SPANS2` and
  `HP_X_SPANS` carry them; the stipple is released by `kon_unloadStipple`.
- `konFillSpansTiledCAccel` (kona.so, address 0x4b2db0): **established.** Tiled span fill for the accelerated
  path, shaped like the stippled one: `kon_loadAccelGC`, `kon_loadTilePlane` and `kon_loadClipRects` prepare
  the pipe, then `HP_X_SPANS6`, `HP_X_SPANS2` and `HP_X_SPANS` send the clipped spans and
  `kon_unloadStipple` releases the tile.
- `konExpandTile` (kona.so, address 0x452620): **established.** Builds an expanded copy of a tile pixmap:
  allocates a new pixmap with `nfbCreatePixmap` and copies the tile rows into it in repeated passes with
  `bcopy`, so the pipe sees a tile of a size it can load. Traces with `ErrorF`.
- `konExpandStipple` (kona.so, address 0x4b34e0): **established.** Expands a stipple bitmap to a wider one:
  allocates the pixmap with `nfbCreatePixmap` and replicates the source rows into it by two `bcopy` loops, to
  reach a width the pipe's stipple memory takes.
- `konRotateStipple` (kona.so, address 0x47aa60): **established.** Rotates a stipple bitmap by the tile origin
  before it is loaded: shifts the rows in place with three `memmove` calls (by row and by bit offset) and
  prints the size and offsets with `ErrorF`.
- `kon_loadStipple` (kona.so, address 0x47c790): **established.** Gets a stipple into pipe memory: looks it up
  with `kon_hitCachedStipple`, allocates a slot with `kon_allocCachedStipple` and fills it with
  `kon_loadCachedStipple` on a miss, then sends `HP_X_LOADSTIPPLE` (store or load) and `HP_X_ROTATESTIPPLE` to
  set the rotation. Three `ErrorF` traces describe store, load and rotation.
- `kon_hitCachedStipple` (kona.so, address 0x4cbb20): **established.** Marks a cached stipple as most recently
  used. The argument is a cache node with previous and next links at +4 and +8; the list head and tail sit at
  +104 and +108 of the screen private record. A node already at the head is left alone, otherwise it is
  unlinked (from the tail or the middle) and relinked at the head, and the function returns non-zero. The
  routine is 78 instructions long.

### Lines and points

- `konSolidZeroSeg` (kona.so, address 0x489200): **established.** Draws a one-segment zero-width line: calls
  `kon_loadGC`, sends `HP_X_LOADCLIP` (one box) and `HP_X_LOADPOS`, offsets the endpoints by half the extent
  according to the line's direction flag, and sends the segment through `HP_X_SEGMENT`. It returns without
  drawing when bit 0x400 is set in the second argument's word at +124.
- `konLineSS` (kona.so, address 0x465810): **established.** Single-width solid polyline: `kon_loadGC` and
  `kon_loadClipRects` set up, then points go out as `HP_X_LINE`, `HP_X_LINE6`, or the relative forms
  `HP_X_LINE_R` and `HP_X_LINE6_R`, with tails through `HP_X_DATA6` to
  `HP_X_DATA1`. Falls back to `konSlowLineSS` for cases the pipe cannot take, with messages like "konLine
  relative".
- `konSlowSegmentSD` (kona.so, address 0x4b8cb0): **established.** Host-drawn dashed segments: `kon_loadGC`
  loads the state, `miZeroClipLine` clips each segment, `miStepDash` steps the dash pattern and `konBresD`
  draws the pieces through the pipe after `HP_X_LOADPOS` and `HP_X_LOADCLIP`.
- `konSlowSegmentSS` (kona.so, address 0x4c3ac0): **established.** Host-drawn solid segments: `kon_loadGC`,
  then `miZeroClipLine` clips each segment and `konBresS` steps the pixels, sending `HP_X_LOADPOS`,
  `HP_X_LOADCLIP` and `HP_X_BOX` per run. Traces with "konSlowSegmentSS" and
  `ErrorF`.
- `konPolyPoint` (kona.so, address 0x499c10): **established.** PolyPoint: `kon_loadGC`, then points sent as
  `HP_X_POINT`, `HP_X_POINT6` or `HP_X_POINT24`, and the relative forms
  `HP_X_POINT_R` and `HP_X_POINT6_R`, grouped with `KonSeqData23_ip19` and shorter copies, with tails through
  `HP_X_DATA6` to `HP_X_DATA1` and the clip through `HP_X_LOADCLIP`.

### Text and images

- `konImageGlyphBltTE3` (kona.so, address 0x43cde0): **established.** Image-text blit for terminal-emulator
  fonts three pixels wide: loads state with `kon_loadImgRectGC` and `kon_loadImgBitmapGC`, sends
  `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`, a background
  `HP_X_BOX`, then glyph bitmaps by `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and
  `HP_X_PIX_FINISH`; falls back to `nfbImageGlyphBlt`.
- `konImageGlyphBltTE6` (kona.so, address 0x43eba0): **established.** Six-pixel-wide terminal-emulator
  image-text blit. It prepares the pipe with `kon_loadImgRectGC` and `kon_loadImgBitmapGC`, sends the clip and
  scissor, the cell background with `HP_X_BOX` and the glyph bits with `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and
  `HP_X_PIX_FINISH`; unsupported cases go to `nfbImageGlyphBlt`.
- `konImageGlyphBltTE8` (kona.so, address 0x440310): **established.** Eight-pixel version of the
  terminal-emulator image-text blit, one byte of bitmap per glyph row: `kon_loadImgRectGC` and
  `kon_loadImgBitmapGC` for state, `HP_X_LOADSCISSOR` and `HP_X_BOX` for the cell,
  `HP_X_PIX_WRITE` for the rows, and `nfbImageGlyphBlt` as the fallback.
- `konPolyGlyphBltSolidTE10` (kona.so, address 0x46dfa0): **established.** Solid poly-text for ten-pixel
  terminal-emulator fonts: `kon_loadBitmapGC` sets state, then `HP_X_LOADPOS`, `HP_X_LOADCLIP`,
  `HP_X_LOADSCISSOR`, `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and
  `HP_X_PIX_FINISH` deliver the glyph rows; `nfbSolidPolyGlyphBlt` handles what the pipe path rejects.
- `konPolyGlyphBltSolidTE16` (kona.so, address 0x46f150): **established.** Solid poly-text for
  sixteen-pixel-wide fonts (two bytes per glyph row). Same sequence as the ten-pixel routine,
  `kon_loadBitmapGC` then the clip, scissor and `HP_X_PIX_WRITE` data, and also `HP_X_SPANS` for part of the
  output. Falls back to `nfbSolidPolyGlyphBlt`.
- `konPolyGlyphBltSolidTE32` (kona.so, address 0x471940): **established.** Thirty-two-pixel-wide solid
  poly-text, four bytes per glyph row: `kon_loadBitmapGC`, `HP_X_LOADSCISSOR`, `HP_X_PIX_SETUP`,
  `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`, with `nfbSolidPolyGlyphBlt` as the host fallback. Traces its
  arguments with `ErrorF`.
- `konPolyGlyphBltSolid` (kona.so, address 0x4ba690): **established.** General solid poly-text for any font
  width: `QueryGlyphExtents` first measures the string, then `kon_loadBitmapGC` and the same clip, scissor and
  `HP_X_PIX_WRITE` pixel path as the fixed-width routines; `nfbSolidPolyGlyphBlt` does the rest.
- `konDrawOpaqueMonoImage` (kona.so, address 0x479030): **established.** Draws a one-bit image with both
  colours: finds the window private through `dbcWindowPrivateIndex`, calls `kon_loadNfbOpaqueBitmapGC`, sends
  `HP_X_LOADCLIP` and `HP_X_LOADPOS`, then the rows through `HP_X_PIX_WRITE` using
  `KonSeqData32_ip19` for full 32-word bursts and shorter copies for tails, ending with `HP_X_PIX_FINISH`.
- `konReadImage` (kona.so, address 0x4b20e0): **established.** Reads pixels back from the pipe: loads state
  with `kon_loadPixmapGC`, sends `HP_X_LOADPOS` and `HP_X_PIX_READ` and flushes with
  `HP_WG_FLUSH_1`. Above a byte-count threshold it uses DMA, sending ioctl 10000 (`KONA_DMAREAD`) and checking
  with 10017 (`KONA_CHECK_PIPE`) while waiting in `sginap`; below it, copies words from the return area with
  `bcopy`. A timeout prints "return area did not go valid".

### Windows, colormaps and hyperpipe

- `konValidateWindowPriv` (kona.so, address 0x448120): **established.** Refreshes a window's private data: it
  takes the window's visual (from the optional record at +120, or through `FindWindowWithOptional` when there
  is none), indexes the screen's visual array (entries of 20 bytes) and copies that entry's field at +8 into
  the window private at +20, then stores the address of a module table (0x586818) in the private's first word.
- `konInitRootWindow` (kona.so, address 0x4817a0): **established.** Initialises the root window's device state
  by calling a shared routine at 0x480e90 with its one argument (a branch-and-link through the module's local
  entry); it performs no other work and issues no pipe command.
- `konDestroyWindow` (kona.so, address 0x467440): **established.** Tears down a window's Kona state. It reads
  the window private and screen private, tests the 0x8000 flag at +20, decrements the count at +28 and, when
  it reaches zero, stores 0 into the `HP_X_LOADXMAP_CONFIG` slot and 0xdeadbeef into the `HP_WG_FLUSH_1` slot
  and calls `konReloadAllGammas`. It then frees private blocks with `Xfree`, calls `konUnbindDestroyedWindow`
  and chains to the saved destroy entry (+184).
- `konInstall24DCColormap` (kona.so, address 0x476c40): **established.** Loads a 24-bit direct-colour map into
  the pipe: after an `ErrorF` trace it sends `HP_X_LOADGAMMA` and `HP_DATA_1` words and copies the table with
  48 unrolled calls of `KonSeqData32_ip19` (1536 words in all).
- `konStore24DCColors` (kona.so, address 0x4a45e0): **established.** Stores a run of 24-bit direct-colour
  entries into the hardware map: it traces the red, green and blue source and destination addresses through
  `ErrorF` and writes the changed entries with `HP_X_LOADGAMMA` and `HP_DATA_1`.
- `konQueryHyperpipeNetwork` (kona.so, address 0x44b7f0): **established.** Answers the hyperpipe network
  query: sends ioctl 10019 (`KONA_GET_NCLOPS_TOPOLOGY`), then for each entry of the returned list sends the
  generic ioctl 102 (`GFX_GETBOARDINFO`) with a 40-byte block and copies the returned name with `strcpy` into
  a per-pipe table in the module's data. Failures are reported with `perror` and the count is set to zero.
- `konQueryHyperpipeConfig` (kona.so, address 0x4523c0): **established.** Answers the hyperpipe configuration
  query: sends ioctl 10021 (`KONA_NCLOPS_QUERY_CONFIG`) with a 524-byte block, then asks for board information
  with ioctl 102 (`GFX_GETBOARDINFO`), copies names with `strcpy` into the module's table, and reports a
  failed ioctl with `perror`.

### Frame-buffer layer: stereo wrappers

- `nfbStereoRegisterWrapperOps` (kona.so, address 0x46ee10): **established.** Six instructions that store its
  one argument (the stereo wrapper table to use) into a module global; nothing else happens, no pipe command
  is sent and nothing is called. The routine is 6 instructions long.
- `nfbStereoImageText16` (kona.so, address 0x43a250): **established.** Stereo ImageText16: calls the
  ImageText16 entry (+64) of the context operations table four times, so the text lands in both eye buffers;
  it calls no named routine. The routine is 118 instructions long.
- `nfbStereoPolyText16` (kona.so, address 0x45cfe0): **established.** Stereo PolyText16 wrapper: invokes the
  PolyText16 entry (+56) of the context operations table four times, once for each eye buffer and again after
  the buffer swap that follows, with no other callee. The routine is 118 instructions long.
- `nfbStereoPolyText8` (kona.so, address 0x489c60): **established.** Stereo PolyText8 wrapper: the context
  operations table's PolyText8 entry (+52) is called four times, covering both eye buffers; it is the 8-bit
  twin of `nfbStereoPolyText16`.
- `nfbStereoPutImage` (kona.so, address 0x481400): **established.** Stereo PutImage wrapper: calls the
  PutImage entry (+8) of the operations table four times so the image is written to both eye buffers. The
  routine is 149 instructions long.
- `nfbStereoPolyFillArc` (kona.so, address 0x45b210): **established.** Stereo PolyFillArc: allocates a scratch
  arc array with `Xalloc`, calls the PolyFillArc entry (+48) four times across both eyes, and frees the array
  with `Xfree`.
- `nfbStereoFillPolygon` (kona.so, address 0x49bba0): **established.** Stereo FillPolygon: copies the point
  list into memory from `Xalloc`, calls the FillPolygon entry (+40) of the operations table four times for
  both eyes, and releases the copy with `Xfree`.
- `nfbSetStereoBuffer` (kona.so, address 0x4ca2e0): **established.** Selects which eye buffer a window draws
  to. It tests the screen record's stereo word (+220) and the window's flags, updates the window private's
  buffer fields at +52 and +56, and when the state changes allocates a clip id with `FindFreeCID`, invalidates
  the old one with `rrmInvalidateCID` and revalidates with `rrmValidateCID`.

### Frame-buffer layer: drawing entry points

- `nfbGetImage` (kona.so, address 0x43c670): **established.** GetImage entry for the frame-buffer layer:
  selects by the drawable's depth, calls `cfbGetImage` or `cfb32GetImage` for the supported depths, clears the
  output area with `bzero` when needed, finds the lowest set plane with `ffs`, and calls `FatalError` with
  "invalid depth" for any other.
- `nfbGetSpans` (kona.so, address 0x4a8d30): **established.** GetSpans entry: dispatches on the drawable's
  depth to one of seven copy loops and calls `FatalError` with "nfbGetSpans: invalid depth" if none fits. The
  pixmap width padding is read from `PixmapWidthPaddingInfo`.
- `nfbSetSpans` (kona.so, address 0x49bed0): **inferred.** SetSpans entry: looks up the padding for the
  drawable's depth in `PixmapWidthPaddingInfo` and calls the per-depth entry at +0 for each span, in two call
  sites (clipped and unclipped).
- `nfbFillSpans` (kona.so, address 0x49cf20): **established.** FillSpans entry: when the clip is complex it
  finds the widest band with `miFindMaxBand` and trims the spans with `miClipSpans` (called at two places)
  before they reach the pipe path.
- `nfbStippledFS` (kona.so, address 0x49d470): **inferred.** Stippled span fill: reads the span list and calls
  the depth table's entry at +0 from three places, one per stipple style. The routine is 161 instructions
  long.
- `nfbPolyFillRect` (kona.so, address 0x44f490): **established.** PolyFillRect entry. It fetches the composite
  clip region through the entry at +396 of the context's operation table and intersects every rectangle with
  the region's boxes by hand (a loop over 8-byte boxes), using a stack buffer for up to 1024 results and a
  larger block otherwise, then hands the clipped list to the solid or tiled fill.
- `nfbSolidFillRects` (kona.so, address 0x4b7390): **inferred.** Solid rectangle fill hook on the frame-buffer
  path. It reads the window and screen privates through two private-index globals, then calls the solid-fill
  entry (+4) of the ops table found there with the colour word at +64 and the depth byte at +72. The routine
  is 31 instructions long.
- `nfbTiledFillRects` (kona.so, address 0x448080): **inferred.** Tiled rectangle fill hook on the frame-buffer
  path, the twin of `nfbSolidFillRects`: it loads the tile width and height from halfwords at +12 and +14 of
  the tile pixmap and calls the tiled-fill entry (+28) of the ops table found through the screen private.
- `nfbCopyPlane` (kona.so, address 0x4bf820): **inferred.** CopyPlane entry for the frame-buffer layer.
  Depending on the drawable's depth it calls `cfb16CopyPlane`, `cfbCopyPlane` or the generic `miCopyPlane`,
  bracketing the copy with the screen's clip and region entries at +340, +352 and +356.
- `nfbImageGlyphBlt` (kona.so, address 0x4a3900): **inferred.** ImageGlyphBlt on the frame-buffer path:
  measures the string with `QueryGlyphExtents`, calls the clip entry at +380 and draws the cell background and
  the glyph bits through the entries at +4 and +12 of the screen's operation table; 814 instructions.
- `nfbSolidZeroSeg` (kona.so, address 0x4c1850): **established.** Zero-width segment drawing: handles the
  horizontal and vertical cases itself with `nfbHoriz` and `nfbVert` (the latter called seven times) and calls
  an indirect entry for the diagonal case.
- `nfbHoriz` (kona.so, address 0x4b37d0): **established.** Draws one horizontal run for a zero-width segment:
  compares the two x coordinates, swaps them if reversed, stores the clamped pair back and calls the span
  entry through a function pointer with a count of one. The routine is 34 instructions long.
- `nfbShmCreatePixmap` (kona.so, address 0x485910): **inferred.** Shared-memory pixmap creation: allocates the
  header with `Xalloc`, rejects depths it cannot hold with the `ErrorF` message "unsupported depth", fills in
  the padding from `PixmapWidthPaddingInfo` and numbers the pixmap from `globalSerialNumber`.

### Frame-buffer layer: windows and colormaps

- `nfbMoveWindow` (kona.so, address 0x47cb60): **established.** Window move: mirrors the sample server's
  MoveWindow. It allocates a region with `Xalloc` ("Couldn't allocate storage in MoveWindow"), calls
  `SetWinSize` and `SetBorderSize`, restacks with `MoveWindowInStack`, resizes children with
  `ResizeChildrenWinSize` and runs the screen hooks around them (entries +336 to +492), noting the change in
  `WindowsRestructured`.
- `nfbSlideAndSizeWindow` (kona.so, address 0x48a420): **established.** Combined move and resize. It follows
  the sample server's SlideAndSizeWindow: `UnmapWindow` when needed, `GravityTranslate` for bit gravity,
  `TraverseTree` over the children, `SetWinSize`, `SetBorderSize`,
  `MoveWindowInStack` and `ResizeChildrenWinSize`, calling many screen entries (+336 to +492) and
  `WindowsRestructured` at the end.
- `nfbLayerValidateTreeSL` (kona.so, address 0x490410): **inferred.** Validates the window tree for the
  layered visual scheme: iterates windows through screen entries (+340 to +464), calls `nfbUnmapTree` for
  windows that must be unmapped and `konInitiateBufferSwap` when a swap is due, stamping the pass with
  `globalSerialNumber`.
- `nfbMarkOverlappedWindows` (kona.so, address 0x4ab3b0): **inferred.** Walks the sibling windows with the
  screen entry at +396 and calls `nfbMarkWindow` at six places to flag each window whose region the changed
  window overlaps; 671 instructions, mostly region comparisons.
- `nfbUnmapTree` (kona.so, address 0x4a73a0): **inferred.** Unmaps a window subtree: for each window it calls
  `nfbSetDidFlags` to drop the display-ID state kept for it; short, 101 instructions.
- `nfbGetLayerWindow` (kona.so, address 0x47b060): **inferred.** Finds the window to use for a layer. It
  follows the parent and sibling links of the window (+24, +28), builds a bit mask by shifting one by each
  window's layer number, skips windows whose +124 flag bit 0x400 is set, and writes the result into +72 of the
  screen private; 257 instructions with no calls.
- `nfbChangeSaveUnder` (kona.so, address 0x497e80): **inferred.** ChangeSaveUnder entry: walks the affected
  windows using screen entries +340 and +352, adjusts `numSaveUndersViewable` and `deltaSaveUndersViewable`,
  and calls two indirect hooks for each changed window.
- `nfbPostChangeSaveUnder` (kona.so, address 0x4a0cd0): **inferred.** PostChangeSaveUnder entry: after the
  change it calls an indirect hook at two points; it keeps no counters of its own, 76 instructions.
- `nfbNoopDDATranslateBackingStore` (kona.so, address 0x493180): **established.** Empty routine that returns
  at once, standing in for the backing-store coordinate-translation hook which this module does not need. The
  whole routine is 2 instructions (8 bytes), a return and its delay slot.
- `nfbValidateWindowVisual` (kona.so, address 0x460c80): **inferred.** Re-validates a window against the
  screen's visual list. It calls the screen function entries at +344 (twice), +360 and +364 and reads the
  screen record's visual array at +108; the result decides whether the window keeps its visual. The routine is
  105 instructions long.
- `nfbPaintWindowBorder` (kona.so, address 0x4a36e0): **established.** PaintWindowBorder entry: if the request
  is not for the border it prints "what != PW_BORDER" with `ErrorF`; otherwise it asks `nmbxCanSupportBuffers`
  whether the window has multibuffers and paints with entry +28 or +4 using the window private from
  `dbcWindowPrivateIndex`.
- `nfbTellGainedMap` (kona.so, address 0x478b10): **inferred.** Tells a window that its colormap was
  installed: it finds the window with `FindWindowWithOptional`, reads the colormap records at +72 and +200 of
  the screen and sends the notify event through `DeliverEvents`.
- `nfbInstallColormap` (kona.so, address 0x4beb40): **inferred.** InstallColormap entry: three `WalkTree`
  passes call `TellLostMap` for windows of the old map and `TellGainedMap` for those of the new map, and the
  hardware install hook at +136 is called once.
- `nfbStoreColors` (kona.so, address 0x49ad00): **inferred.** StoreColors entry: when the colormap is the
  installed one and the count is positive it calls the hardware store hook at +136 once per 12-byte colour
  cell.
- `nfbHWStoreColors` (kona.so, address 0x456f10): **established.** Sends colours to the hardware colormap by
  an indirect call to the saved hardware function; it is the 52-byte pass-through used by `nfbStoreColors`.
- `nfbFreeHWCmapArrays` (kona.so, address 0x4a92d0): **established.** Frees the arrays that hold a hardware
  colormap: loops over two arrays of 24-byte and 28-byte records, freeing each non-null block with `Xfree`
  unless it is shared with an entry already freed.
- `nfbListInstalledColormaps` (kona.so, address 0x4a2d00): **established.** ListInstalledColormaps entry:
  stores the screen's installed colormap id (from the record at +128 of the screen private) into the caller's
  array and returns 1. The routine is 6 instructions long.
- `nfbDestroyColormap` (kona.so, address 0x4b20d0): **established.** Empty routine that returns at once:
  destroying a colormap needs no work in the frame-buffer layer. The whole routine is 2 instructions (8
  bytes), a return and its delay slot.
- `nfbRecolorCursor` (kona.so, address 0x4a90b0): **established.** RecolorCursor entry: when the cursor
  argument is non-null it calls the screen's recolour hook at +284, passing the arguments through. The routine
  is 14 instructions long.
- `nfbGetBestVisualForPEX` (kona.so, address 0x44d700): **established.** Reports the best visual for the PEX
  extension: copies two words at +204 and +208 of the screen's private record into the caller's two output
  arguments. The routine is 6 instructions long.
- `nfbCloseScreen` (kona.so, address 0x4865b0): **established.** CloseScreen entry: calls nine screen entries
  at +352 to release resources, then frees memory with `Xfree`, 62 instructions in all.
- `nfbAbort` (kona.so, address 0x4781a0): **established.** Calls the C library `abort` and does nothing else;
  it is the fatal-error exit of the frame-buffer layer.

### Rendering resource manager client

- `rrmMapWindow` (kona.so, address 0x43ae20): **inferred.** Called when a window is mapped: bumps the private
  counters with `incrRRMpriv` and `incrRRMFlags`, takes identifiers from `FindFreeID` or
  `FindBestID` and `FindFreeCID`, then validates the clip id through `rrmValidateCID`.
- `rrmUnmapWindow` (kona.so, address 0x44d720): **established.** Called when a window is unmapped: frees the
  window's display id and its swap id with two `FreeID` calls and invokes the screen entries at +32 and +108.
- `rrmCreateWindow` (kona.so, address 0x465540): **established.** CreateWindow wrapper: clears the window's
  private slot, saves the screen's CreateWindow entry (+112) in the private (+180), calls the original and
  reinstalls the module's function. The routine is 30 instructions long.
- `rrmDestroyWindow` (kona.so, address 0x4c4b00): **established.** DestroyWindow wrapper: calls the saved
  screen entries +100 and +116 and then puts the module's function back at +184 of the screen. The routine is
  33 instructions long.
- `rrmDestroyDrawable` (kona.so, address 0x44b5a0): **established.** Frees a drawable's rendering-manager
  state: cancels any delayed validation with `rrmDelayValidateClipCancel`, calls the screen entries +60, +96
  and +68, and frees the private block with `Xfree`.
- `rrmValidateCID` (kona.so, address 0x476340): **inferred.** Revalidates the clip id of a window: reads the
  window private (+76, +92) and screen entries (+32, +344) and calls the manager through an indirect pointer
  twice, six indirect calls in all, to set up the rendering-node binding of the clip. The routine is 129
  instructions long.
- `rrmProcessRequestQueue` (kona.so, address 0x47b480): **inferred.** Processes queued window requests: pops
  entries with `rrmUnqueueRequest`, gives each window an identifier with `FindFreeID` and a clip id with
  `FindFreeCID`, and calls screen entries +28 and +36; loops until the queue is empty.
- `rrmUnqueueRequest` (kona.so, address 0x450370): **established.** Removes a window from the doubly linked
  request queue (links at +52 and +56 of the window private), fixing the queue head and tail at +140 and +144
  of the screen private and clearing the flag bit 0x20 at +0.
- `rrmBindMultipleClips` (kona.so, address 0x4b8940): **inferred.** Binds several clips in one pass: allocates
  an argument array with `Xalloc` and calls the screen entry at +68 for the windows that need a bind, 100
  instructions.
- `rrmUndoubleBufferWindow` (kona.so, address 0x49d700): **established.** Empty routine that returns at once:
  the rendering-manager hook for taking a window out of double-buffer mode does nothing here. The whole
  routine is 2 instructions (8 bytes), a return and its delay slot.
- `rrmDisposeClip` (kona.so, address 0x4cdd00): **established.** Releases a window's clip in the kernel: sends
  ioctl 1004 (`RRM_UNBINDRNFROMCLIP`) and, on failure (return -1), prints "Failed to unbind rn from clip" with
  the node id and errno using `ErrorF`.

### Monochrome frame-buffer routines

- `mfbTEGlyphBltWhite` (kona.so, address 0x433280): **inferred.** Draws fixed-width glyph bitmaps into a
  one-bit drawable in white. It reads the glyph rows with halfword loads, shifts them into place with 34
  variable shifts, merges them into the destination words and falls back to `mfbImageGlyphBltWhite` through
  the clip entry (+380) when a case is not handled.
- `mfbCopyRotatePixmap` (kona.so, address 0x433f90): **inferred.** Copies a one-bit pixmap and rotates it to
  the tile origin: shallow copy with `mfbCopyPixmap` or `memmove`, pads with `mfbPadPixmap` and rotates in x
  with `mfbXRotatePixmap` and in y with `mfbYRotatePixmap`; it reads the private copy through entry +240.
- `mfbBlackSolidFS` (kona.so, address 0x43a890): **inferred.** Fills a span list with black pixels:
  `miFindMaxBand` and `miClipSpans` trim spans against the clip, then each span is cleared word by word with
  partial-word masks at both ends.
- `mfbInvertSolidFS` (kona.so, address 0x4a3280): **inferred.** Span fill that inverts the destination bits
  instead of setting them: the same band and clip handling with `miFindMaxBand` and `miClipSpans`, and an
  exclusive-or of the ends and body words.
- `mfbTileFS` (kona.so, address 0x4a9a20): **inferred.** Tiled span fill for a one-bit drawable whose tile
  width divides a word: clips with `miFindMaxBand` and `miClipSpans`, then combines a rotated tile word with
  the destination under the raster-operation masks for each span.
- `mfbUnnaturalTileFS` (kona.so, address 0x4b4eb0): **inferred.** Tiled span fill for tile widths that do not
  divide a word. The tile row is fetched bit by bit (34 variable shifts, 142 loop edges) and merged into the
  span, the slow companion of `mfbTileFS`; clipping uses `miFindMaxBand` and `miClipSpans`.
- `mfbSolidWhiteArea` (kona.so, address 0x4781f0): **inferred.** Fills a list of rectangles with white in a
  one-bit drawable: for each box it sets partial words at the left and right edge and whole words between
  them, with 137 word stores in the unrolled loops.
- `mfbSolidInvertArea` (kona.so, address 0x48ba60): **inferred.** Inverts the bits inside each rectangle of a
  list in a one-bit drawable: edge words get masks and the body words are complemented in unrolled loops. The
  routine is 758 instructions long.
- `mfbTileAreaPPWCopy` (kona.so, address 0x4b4640): **inferred.** Copies a one-word-wide pixmap tile over
  rectangles with a plain copy raster operation (the mask-free case), unrolled with 107 word stores and no
  calls.
- `mfbTileAreaPPWGeneral` (kona.so, address 0x4bb0f0): **inferred.** Tiles rectangles from a one-word-wide
  pixmap for any raster operation: the source word is combined with the destination through the context's
  and/xor mask pair, 105 word stores across the unrolled variants.
- `mfbFillPolyWhite` (kona.so, address 0x4590e0): **inferred.** Fills a polygon in white when the clip is a
  single box and falls back to `miFillPolygon` (two call sites) otherwise; the constants 0x7fff and 0xfffeffff
  bound coordinates and span lengths.
- `mfbFillPolyInvert` (kona.so, address 0x4476d0): **inferred.** Polygon fill that inverts pixels. Like the
  white version it handles the single-box clip itself and calls `miFillPolygon` at two places for the other
  cases; 567 instructions with 28 loop edges.
- `mfbPolyFillArcSolid` (kona.so, address 0x44be00): **inferred.** PolyFillArc for solid fills of one-bit
  drawables: fetches the clip through entry +380, makes two calls to a shared span-fill routine at 0x516580
  and loops over the arcs (13 loop edges); 0x7fff bounds the y range.
- `mfbPolyPoint` (kona.so, address 0x4b15e0): **inferred.** PolyPoint for one-bit drawables: for each point it
  tests the clip box (35 loop edges), computes the word and bit and sets, clears or toggles the bit according
  to the raster operation.
- `mfbPutImage` (kona.so, address 0x449500): **inferred.** PutImage for one-bit drawables: builds a scratch
  pixmap header around the caller's data with `GetScratchPixmapHeader`, copies through the entry at +12 of the
  operations table and releases the header with `FreeScratchPixmapHeader`.
- `mfbGetImage` (kona.so, address 0x456320): **inferred.** GetImage for one-bit drawables: allocates a scratch
  header with `GetScratchPixmapHeader`, zeroes the output with `bzero`, copies with `mfbDoBitblt` between the
  clip entries +340 and +352, and frees the header with `FreeScratchPixmapHeader`.
- `mfbGetSpans` (kona.so, address 0x4a27a0): **inferred.** GetSpans for one-bit drawables: for each requested
  span it reads the packed bits from the drawable and shifts them (10 variable shifts) into the caller's word
  buffer.
- `mfbSetSpans` (kona.so, address 0x498520): **inferred.** SetSpans for one-bit drawables: for each span it
  takes the clip into account (halfword compares) and writes the source bits into the destination words via
  `mfbSetScanline`, called at two places.
- `mfbCopyPlane` (kona.so, address 0x491f00): **established.** CopyPlane for one-bit destinations: it reduces
  the raster operation with `mfbReduceRop`, calls the registered per-depth copy routine through the table
  built by `mfbRegisterCopyPlaneProc`, and reports "No copyPlane proc registered for depth" through
  `FatalError` when none is set.
- `mfbRegisterCopyPlaneProc` (kona.so, address 0x481360): **established.** Records the copy-plane routine to
  use for a source depth: on first use it takes a screen private index with `AllocateScreenPrivateIndex` and
  stores the routine in a table keyed by depth.
- `mfbSolidPP` (kona.so, address 0x4a3070): **inferred.** PushPixels with a solid fill for one-bit drawables:
  brackets a call to `mfbDoBitblt` with the clip entries +340, +352 and +356.
- `mfbValidateGC` (kona.so, address 0x4a4be0): **inferred.** ValidateGC for the monochrome layer: when the
  context changed it recomputes the composite clip with `miComputeCompositeClip`, reduces the raster operation
  with `mfbReduceRop`, selects the right operation set (and replaces it via `miDestroyGCOps` when the font or
  fill style changed) and rotates the tile with `mfbCopyRotatePixmap`.
- `mfbRealizeFont` (kona.so, address 0x4a8c80): **established.** Returns the constant 1 and nothing else: the
  monochrome layer keeps no device-dependent font state, so realising a font succeeds at once. The whole
  routine is 2 instructions (8 bytes).
- `mfbUnrealizeFont` (kona.so, address 0x462a00): **established.** Returns the constant 1 and nothing else:
  the monochrome layer holds no per-font state to release. The whole routine is 2 instructions (8 bytes), like
  `mfbRealizeFont`.
- `mfbDoBitbltGeneral` (kona.so, address 0x4680a0): **inferred.** The general one-bit copy: it moves
  rectangles between bit-aligned positions of two one-bit drawables for any raster operation, with 70 variable
  shifts, left-to-right and right-to-left loops and per-edge masks.
- `mfbDoBitbltCopy` (kona.so, address 0x48dec0): **inferred.** One-bit rectangle copy for the plain
  source-copy raster operation: the same shift-and-merge structure as `mfbDoBitbltGeneral` but with the
  combination rule fixed at copy (116 word stores).
- `mfbDoBitbltCopyInverted` (kona.so, address 0x4c2370): **inferred.** One-bit rectangle copy that complements
  the source: the shift-and-merge loops of the copy case with the source word inverted before the store. The
  routine is 1074 instructions long.
- `mfbDoBitbltXor` (kona.so, address 0x479700): **inferred.** One-bit rectangle copy that exclusive-ors the
  source into the destination, built on the same loops as the copy case; 1129 instructions with 70 variable
  shifts.
- `mfbDoBitbltOr` (kona.so, address 0x482300): **inferred.** One-bit rectangle copy that ors the source into
  the destination: identical shape and size to the exclusive-or version, differing in the combine instruction.
  The routine is 1129 instructions long.
- `mfbBresD` (kona.so, address 0x4b99a0): **inferred.** Bresenham stepper for dashed one-bit lines: advances
  the error term per pixel, switches between dash and gap with a counter and writes each pixel with the
  raster-operation masks (87 loop edges).
- `mfbBresS` (kona.so, address 0x4c7630): **inferred.** Bresenham stepper for solid one-bit lines: the same
  error stepping as `mfbBresD` without dash handling, writing each pixel with the current mask word.
- `mfbHorzS` (kona.so, address 0x4bdfd0): **inferred.** Draws a horizontal solid run in a one-bit drawable:
  partial words at both ends and full words in the middle, using 95 word stores across several unrolled cases.
- `mfbVertS` (kona.so, address 0x45e460): **inferred.** Draws a vertical solid run in a one-bit drawable:
  steps one scan line per pixel by the row stride and applies the mask; 21 word stores in a short loop.
- `mfbLineSS` (kona.so, address 0x45f3c0): **inferred.** Solid single-width polyline for one-bit drawables:
  clips each segment with `miZeroClipLine`, draws horizontals with `mfbHorzS`, verticals with `mfbVertS` and
  the rest with `mfbBresS`.
- `mfbLineSD` (kona.so, address 0x458400): **inferred.** Dashed polyline for one-bit drawables: clips with
  `miZeroClipLine`, advances the dash state with `miStepDash` (called at five places) and draws with
  `mfbBresD`.
- `mfbSegmentSS` (kona.so, address 0x4cc800): **inferred.** Solid PolySegment for one-bit drawables: handles
  each segment with `miZeroClipLine` for clipping, then `mfbHorzS`, `mfbVertS` or
  `mfbBresS` by slope.

### Machine-independent routines: regions

- `miRegionCreate` (kona.so, address 0x467880): **established.** Creates a region: two `Xalloc` calls take the
  region header and a first box array and initialise the extents to the given box or to empty.
- `miRegionDestroy` (kona.so, address 0x4b6770): **established.** Destroys a region: calls `Xfree` for the box
  array (unless it is the shared empty one) and for the header.
- `miRegionReset` (kona.so, address 0x44c280): **established.** Resets a region to a single box: frees the old
  box array with `Xfree` if it is not the static one and sets the extents and count.
- `miRegionExtents` (kona.so, address 0x4781e0): **established.** Returns the address of a region's extents
  box: its argument is moved to the return register unchanged, since the extents are the first field of the
  region record. The whole routine is 2 instructions (8 bytes), with no calls.
- `miRegionAppend` (kona.so, address 0x4c5270): **inferred.** Appends the boxes of one region to another:
  grows the destination with `miRectAlloc`, shifts existing boxes with `memmove` (two places) and merges
  extents.
- `miRegionValidate` (kona.so, address 0x489430): **inferred.** Sorts and merges the boxes of an appended
  region into canonical y-x banded form: reallocates with `Xrealloc`, allocates work arrays with `Xalloc`,
  calls `miRectAlloc` eight times while building bands and frees temporary storage with `Xfree`.
- `miIntersect` (kona.so, address 0x439300): **inferred.** Region intersection: computes the intersection into
  the target, handling empty and one-box shortcuts with `miRegionCopy`, calling a banded overlap routine at
  0x4d11a0, `miSetExtents` for the result bounds and `Xfree` for the old boxes.
- `miUnion` (kona.so, address 0x463360): **inferred.** Region union: copies when either side is empty,
  otherwise merges bands through the routine at 0x4d11a0; `miRegionCopy` is called at five places for the
  shortcut cases.
- `miSubtract` (kona.so, address 0x4adcb0): **inferred.** Region subtraction: `miRegionCopy` for trivial
  cases, a banded subtract through the common overlap routine, `miSetExtents` for the extents and `Xfree` for
  freed storage.
- `miTranslateRegion` (kona.so, address 0x455ce0): **inferred.** Translates a region by an offset: adds the
  offsets to every box coordinate (397 instructions, unrolled by four), checks the 0x7fff range limits and
  recomputes extents with `miSetExtents` when clamping happened.
- `miSetExtents` (kona.so, address 0x450430): **inferred.** Recomputes a region's extents box from its first
  and last band: reads the first and last boxes for top and bottom and scans all boxes for the minimum left
  and maximum right. The routine is 78 instructions long.
- `miRectIn` (kona.so, address 0x4ba420): **inferred.** Tests a rectangle against a region and returns whether
  it is fully inside, partly inside or outside, walking the banded boxes with halfword compares. The routine
  is 153 instructions long.
- `miFindMaxBand` (kona.so, address 0x491cf0): **inferred.** Returns the number of boxes in the first band of
  a clip: advances while the y coordinate of successive boxes is unchanged; 35 instructions.
- `miFreeStorage` (kona.so, address 0x45e410): **established.** Frees a storage block handed to it by calling
  `Xfree` when the pointer is non-null; the polygon code uses it to release its edge tables. 18 instructions.

### Machine-independent routines: spans and lines

- `miSetupSpanData` (kona.so, address 0x447fd0): **established.** Prepares the span groups for wide drawing:
  it tests the fill style and calls `miInitSpanGroup` for each of the two groups that style needs; 42
  instructions.
- `miCleanupSpanData` (kona.so, address 0x44c9e0): **inferred.** Flushes and frees the span groups after wide
  drawing: runs `miFillUniqueSpanGroup` and `miFreeSpanGroup` for each group and restores the context's
  foreground with `DoChangeGC` and `ValidateGC` (both called twice).
- `miDisposeSpanGroup` (kona.so, address 0x4b3430): **inferred.** Disposes a span group: calls the supplied
  free hook for the group's spans and again for the group record, 39 instructions.
- `miFillUniqueSpanGroup` (kona.so, address 0x46cad0): **inferred.** Fills the spans in a group after removing
  duplicates: sorts with a shell-sort style loop, reallocates the work arrays with `Xrealloc` (six places) and
  `Xalloc`, copies with `memcpy` and calls the fill entry (+0) of the operations table with
  `miDisposeSpanGroup` afterwards.
- `miSubtractSpans` (kona.so, address 0x4b84f0): **inferred.** Removes one span group from another so
  wide-line pieces are not painted twice: edits the lists with `memmove` (four places) and `Xrealloc` when a
  list must grow.
- `miClipSpans` (kona.so, address 0x4882b0): **inferred.** Clips a span list against a region's boxes and
  passes the surviving pieces to the span-fill routine whose address is at 0x466ff0; 279 instructions.
- `miZeroClipLine` (kona.so, address 0x4376f0): **inferred.** Clips a one-pixel line segment to a box and
  returns the clipped endpoints and error terms, using the 0x7fff coordinate limit; used before every
  Bresenham stepper in the module.
- `miZeroLine` (kona.so, address 0x473080): **inferred.** Zero-width polyline: for each segment it clips with
  `miZeroClipLine` (two call sites) and steps pixels through an indirect entry of the operations table; 784
  instructions covering the octant cases.
- `miStepDash` (kona.so, address 0x44ba30): **inferred.** Advances a dash pattern by a given distance: walks
  the dash array until the distance is consumed and updates the current index and offset; 241 instructions, no
  calls.
- `miSetZeroLineBias` (kona.so, address 0x496880): **established.** Takes a screen private index with
  `AllocateScreenPrivateIndex` and stores the bias bits that decide which edge pixels belong to a zero-width
  line on this screen.
- `miLineProjectingCap` (kona.so, address 0x489e40): **inferred.** Builds the projecting cap of a wide line:
  it computes the corner points with `miPolyBuildEdge` (eight calls) and fills the polygons with
  `miFillPolyHelper` three times.
- `miRoundCapClip` (kona.so, address 0x474310): **inferred.** Computes the clip for a round line cap: uses
  `miPolyBuildEdge` to build the two half-edges and the 0x7fff limit for the y range.
- `miRoundJoinFace` (kona.so, address 0x467720): **inferred.** Builds one face of a round line join:
  `miPolyBuildEdge` produces the edge, and 0x7fff bounds the search.
- `miRoundJoinClip` (kona.so, address 0x4a2d20): **established.** Round join clip: calls `miRoundJoinFace`
  twice for the two faces of the join, 66 instructions.
- `miPolyBuildEdge` (kona.so, address 0x4a9890): **inferred.** Builds the left or right edge list of a wide
  line from its endpoints and slope, with no callee; 97 instructions of integer arithmetic.

### Machine-independent routines: polygons and arcs

- `miFillPolygon` (kona.so, address 0x499820): **established.** FillPolygon entry: hands convex shapes to
  `miFillConvexPoly` and all others to `miFillGeneralPoly`.
- `miFillGeneralPoly` (kona.so, address 0x4988e0): **inferred.** Scan-line fill for general polygons: builds
  the edge table with `miCreateETandAET` (twice), inserts edges with `miInsertionSort`, advances them with
  `micomputeWAET` (twice), calls the fill entry at +0 for each scan line and frees the tables with
  `miFreeStorage`.
- `miFillSppPoly` (kona.so, address 0x463a10): **inferred.** Fills a single-pixel-per-scanline polygon through
  the span entry at +0 and the routine at 0x491ad0 that computes span extents; 399 instructions.
- `miFillPolyHelper` (kona.so, address 0x45a2c0): **inferred.** Fills a polygon built from two edge lists:
  `miAppendSpans` adds spans to a group, `Xalloc` (twice) gets work arrays, the context is changed and
  validated twice with `DoChangeGC` and `ValidateGC`, and the memory is freed with `Xfree`.
- `miFillArcSetup` (kona.so, address 0x47b640): **inferred.** Computes the integer parameters for filling an
  ellipse arc (x radius, y radius, and the starting error terms) in a record the caller supplies; no calls.
  The routine is 77 instructions long.
- `miFillArcDSetup` (kona.so, address 0x451f90): **inferred.** Computes the same parameters as
  `miFillArcSetup` for a full ellipse with the dash-style integer error terms; 68 instructions, no calls.
- `miPolyFillArc` (kona.so, address 0x45c260): **inferred.** PolyFillArc entry: calls the arc fill entry four
  times through function pointers according to whether the arc is a full ellipse or a slice. The routine is
  107 instructions long.
- `miPolyArc` (kona.so, address 0x49d740): **inferred.** PolyArc: for thin arcs it calls the zero-width arc
  routine through its function pointers and draws wide arcs with a scratch context: `GetScratchGC`,
  `ValidateGC` (five times) and `DoChangeGC`, `miClearDrawable` to restore, then
  `FreeScratchGC`; 745 instructions.
- `miFreeArcCache` (kona.so, address 0x499630): **established.** Frees the arc cache: calls an indirect free
  hook once if the cache exists and zeroes the pointer. The routine is 35 instructions long.

### Machine-independent routines: contexts, text, copies and exposures

- `miCreateGCOps` (kona.so, address 0x437d00): **established.** Allocates an 84-byte graphics-context
  operations table with `Xalloc` and fills it with the machine-independent routines for each operation slot.
- `miDestroyGCOps` (kona.so, address 0x4ac000): **established.** Destroys an operations table: one `Xfree`
  call.
- `miRegisterGCPrivateIndex` (kona.so, address 0x43cdc0): **established.** Stores its argument in a module
  global: the index the layer uses for its graphics-context private records. The routine is 6 instructions
  long.
- `miChangeGC` (kona.so, address 0x487750): **established.** Empty hook that returns at once: the
  machine-independent ChangeGC step has nothing to do. The whole routine is 2 instructions (8 bytes), a return
  and its delay slot.
- `miScreenInit` (kona.so, address 0x443e30): **established.** Initialises a screen for the
  machine-independent layer: calls `ShmRegisterFbFuncs`, `miInitializeBackingStore`, `miSetZeroLineBias` and
  `miScreenDevPrivateInit`.
- `miScreenDevPrivateInit` (kona.so, address 0x4bfd50): **established.** Allocates the screen's device-private
  block with `Xalloc` and stores the pointer.
- `miInitializeBackingStore` (kona.so, address 0x443c30): **established.** Sets up backing store for a screen:
  takes a GC private index with `AllocateGCPrivateIndex`, a screen private index with
  `AllocateScreenPrivateIndex`, allocates the record with `Xalloc` and a GC private with `AllocateGCPrivate`.
- `miPostChangeSaveUnder` (kona.so, address 0x44fcf0): **inferred.** PostChangeSaveUnder hook: calls an
  indirect routine twice after save-under changes. The routine is 70 instructions long.
- `miClearDrawable` (kona.so, address 0x44e0d0): **inferred.** Clears a drawable to its background by changing
  the scratch context with `DoChangeGC` and `ValidateGC` and filling through entry +44.
- `miClearToBackground` (kona.so, address 0x49eb20): **inferred.** ClearToBackground request: clips with the
  screen entries +340 to +356, paints the background with the entry at +212 and +216 and handles exposures.
  The routine is 129 instructions long.
- `miCopyArea` (kona.so, address 0x47fc30): **inferred.** CopyArea for the machine-independent layer:
  allocates a source region with `Xalloc`, reads with entry +168, writes with +4 through the clip entries,
  uses `NotClippedByChildren` and finishes with `miHandleExposures`.
- `miHandleExposures` (kona.so, address 0x475010): **inferred.** Generates the graphics-expose events after a
  copy: computes the exposed region with region entries +336 to +396 and `NotClippedByChildren`, then passes
  it to `miSendGraphicsExpose`.
- `miSendExposures` (kona.so, address 0x462eb0): **inferred.** Sends Expose events for a region: finds the
  window with `LookupIDByType`, delivers events with `DeliverEvents` (three places) and with Xinerama builds
  uses `PanoramiXFindIDByScrnum` and `XineramaCollectExpose`.
- `miSendGraphicsExpose` (kona.so, address 0x467f40): **established.** Sends the graphics-expose events for a
  copy: calls `TryClientEvents` twice, once for each of the exposure and no-exposure cases.
- `miShapedWindowIn` (kona.so, address 0x44c040): **inferred.** Tests whether a rectangle lies in a shaped
  window by walking the window's shape region through entry +380, 141 instructions.
- `miPushPixels` (kona.so, address 0x48cd60): **inferred.** PushPixels for the machine-independent layer:
  allocates a scratch buffer with `Xalloc`, reads the stencil through +168, paints with entry +0x7 per run and
  frees with `Xfree`.
- `miImageText16` (kona.so, address 0x486a90): **established.** ImageText16: collects glyphs with `GetGlyphs`
  and draws with the ImageGlyphBlt entry (+68) of the operations table.
- `miPolyText8` (kona.so, address 0x4afae0): **established.** PolyText8: collects glyphs with `GetGlyphs` and
  calls the PolyGlyphBlt entry (+72) once.
- `miPolyGlyphBlt` (kona.so, address 0x4b2930): **inferred.** PolyGlyphBlt on a scratch context: gets the
  scratch with `GetScratchGC`, sets the colour with `DoChangeGC`, validates with `ValidateGC` and
  `FreeScratchGC`, and pushes pixels through entry +8.

### Colour frame-buffer: set-up, graphics context and pixmaps

- `cfbAllocatePrivates` (kona.so, address 0x4395a0): **established.** Reserves the private slots the 8-bit
  colour layer needs: `AllocateWindowPrivate` and `AllocateGCPrivate` for the window and context records, then
  `mfbAllocatePrivates` so the monochrome layer shares the same indexes.
- `cfb16AllocatePrivates` (kona.so, address 0x4556d0): **established.** The 16-bit twin of
  `cfbAllocatePrivates`: allocates window and context privates with `AllocateWindowPrivate` and
  `AllocateGCPrivate`, takes a screen private index with `AllocateScreenPrivateIndex` and calls
  `mfbAllocatePrivates`.
- `cfb32ValidateGC` (kona.so, address 0x49b030): **inferred.** ValidateGC for 32-bit-per-pixel drawables:
  recomputes the composite clip with `miComputeCompositeClip`, reduces the raster operation with
  `cfb32ReduceRasterOp`, selects line, fill and text routines for the fill style (reporting "illegal
  fillStyle" through `FatalError`), pads and rotates tiles with `cfb32PadPixmap` and
  `cfb32CopyRotatePixmap`, and rebuilds the operation table with `miCreateGCOps`.
- `cfbResolveColor` (kona.so, address 0x4a0720): **inferred.** Reduces a 16-bit-per-channel colour to the
  visual's precision using the visual's masks and shifts (12 variable shifts, no calls) so the pixel stored
  matches what the display can show.
- `cfb16ReduceRasterOp` (kona.so, address 0x4b8ad0): **inferred.** Turns a raster operation, plane mask and
  foreground pixel into the and/xor pair the span and line routines apply to destination words; 119
  instructions built around a switch on the operation.
- `cfb32MatchCommon` (kona.so, address 0x44dff0): **inferred.** Decides whether the context qualifies for one
  of the module's common fast cases at 32 bits per pixel: 54 instructions, no calls and no stores beyond the
  return value.
- `cfbCreatePixmap` (kona.so, address 0x4b9800): **established.** CreatePixmap for 8-bit drawables:
  `AllocatePixmap` makes the header and pixel store (called at two places), then the width padding and byte
  count are filled in.
- `cfb16CreatePixmap` (kona.so, address 0x45e940): **established.** CreatePixmap for 16-bit drawables:
  allocates the pixmap with `AllocatePixmap`, sets the 16-bit bits-per-pixel and the row stride rounded to a
  word.
- `cfb32CreatePixmap` (kona.so, address 0x46aa40): **established.** CreatePixmap for 32-bit drawables:
  identical in structure and size to the 16-bit routine, calling `AllocatePixmap` twice and setting 32 bits
  per pixel and the matching stride.
- `cfbCopyPixmap` (kona.so, address 0x462e10): **inferred.** Duplicates a pixmap for the 8-bit layer: asks the
  screen to create a pixmap with the entry at +236 and copies the pixel store with `memmove`; 37 instructions.
- `cfb32CopyPixmap` (kona.so, address 0x4a8c90): **inferred.** Duplicates a 32-bit pixmap by the same two
  steps as the 8-bit routine, create through the screen entry +236 and copy with `memmove`.
- `cfb16PadPixmap` (kona.so, address 0x4aeaf0): **inferred.** Widens a small tile pixmap to a whole number of
  words by replicating its rows: 26 variable shifts compose each padded row from repeated 16-bit pixels.
- `cfb32PadPixmap` (kona.so, address 0x4b6540): **inferred.** Pads a 32-bit tile pixmap to the word multiple
  the fill code needs, by repeating each row; 137 instructions, the same loop structure as the 16-bit padder.
- `cfbYRotatePixmap` (kona.so, address 0x4565a0): **inferred.** Rotates a pixmap vertically by moving rows
  with three `memmove` calls; for a bits-per-pixel it does not know it prints "cfbYRotatePixmap: unsupported
  bitsPerPixel" with `ErrorF` and hands over to `mfbYRotatePixmap`.
- `cfb16YRotatePixmap` (kona.so, address 0x481660): **inferred.** Vertical rotation for 16-bit tiles: three
  `memmove` calls reposition the rows, and an unsupported depth is reported with `ErrorF` before
  `mfbYRotatePixmap` takes over. Its text is the same as the 8-bit version's.
- `cfb32YRotatePixmap` (kona.so, address 0x48f8c0): **inferred.** Vertical tile rotation for 32-bit pixmaps,
  three `memmove` calls and the `mfbYRotatePixmap` fallback for depths it cannot rotate.
- `cfb32CopyRotatePixmap` (kona.so, address 0x4ca1a0): **inferred.** Copies a 32-bit pixmap and rotates it to
  a new origin: `cfb32CopyPixmap` duplicates it (or `memmove` when the sizes match), `cfb32PadPixmap` widens
  it, `cfb32XRotatePixmap` and `cfb32YRotatePixmap` shift it; reads the screen entry +240.
- `cfb32CopyPlane` (kona.so, address 0x4c95f0): **inferred.** CopyPlane for 32-bit drawables: a short routine
  that calls the generic copy-plane entry at +0 of the depth table with its arguments.
- `cfbCopyPlane8to1` (kona.so, address 0x46acf0): **inferred.** CopyPlane from an 8-bit source to a one-bit
  destination: finds the selected plane with `ffs`, extracts that bit from every pixel with 308 variable
  shifts and packs eight pixels per byte; 1762 instructions, the largest routine of this group.
- `cfbPutImage` (kona.so, address 0x46ee30): **inferred.** PutImage for 8-bit drawables: for formats it cannot
  copy directly it builds a scratch header with `GetScratchPixmapHeader` and a temporary context with
  `DoChangeGC` and `ValidateGC`, copies through the entries at +8, +12 and +16 and releases with
  `FreeScratchPixmapHeader`.
- `cfb32PutImage` (kona.so, address 0x4b7070): **inferred.** PutImage for 32-bit drawables, same structure as
  the 8-bit routine: scratch header from `GetScratchPixmapHeader`, context changes through `DoChangeGC` (three
  places), `ValidateGC` and the copy entries, header freed with `FreeScratchPixmapHeader`.
- `cfbGetImage` (kona.so, address 0x4820a0): **inferred.** GetImage for the 8-bit layer: builds two scratch
  headers (`GetScratchPixmapHeader` at two places), copies with `cfbDoBitblt` or `mfbGetImage` between the
  clip entries +340 and +352, extracts a single plane with `cfbCopyImagePlane` and cleans up with `bzero` and
  `FreeScratchPixmapHeader`.
- `cfb32GetImage` (kona.so, address 0x4aa7f0): **inferred.** GetImage for 32-bit drawables: scratch header via
  `GetScratchPixmapHeader`, `bzero` of the output, copy with `cfb32DoBitblt` or the generic
  `miGetImage`, `mfbGetImage` for one-bit results, and `FreeScratchPixmapHeader`.
- `cfbSetScanline` (kona.so, address 0x4c8fe0): **inferred.** Writes one scan line of 8-bit pixels from a
  packed source into the destination words, shifting with 11 variable shifts to align the source and masking
  the first and last word.
- `cfb16SetScanline` (kona.so, address 0x473cf0): **inferred.** Writes a scan line of 16-bit pixels into the
  drawable: the source is shifted into alignment (11 variable shifts) and stored a word at a time with edge
  masks.

### Colour frame-buffer: copies

- `cfbBitBlt` (kona.so, address 0x4340c0): **inferred.** The CopyArea worker: clips the source and destination
  boxes through the clip entries (+340 to +376), copies with the entry at +12 or the routine at +176 and calls
  `NotClippedByChildren` and `miHandleExposures` for the exposures. It is byte-for-byte the same size as
  `cfb32BitBlt`.
- `cfb32BitBlt` (kona.so, address 0x4af2b0): **inferred.** CopyArea worker for 32-bit drawables, 521
  instructions long like `cfbBitBlt`: clip entries +340 to +376, the copy entry at +12, then
  `NotClippedByChildren` and `miHandleExposures` for the exposed regions.
- `cfb32CopyArea` (kona.so, address 0x443960): **established.** CopyArea entry for 32-bit drawables: a
  40-instruction wrapper that passes its eight arguments on to `cfb32BitBlt`.
- `cfb32DoBitblt` (kona.so, address 0x44fa20): **inferred.** Rectangle copy dispatcher for 32-bit drawables: a
  33-instruction wrapper that forwards to `cfb32DoBitbltGeneral`.
- `cfbDoBitbltCopy` (kona.so, address 0x4482c0): **inferred.** Rectangle copy for the plain copy raster
  operation in the 8-bit layer: forward and backward loops with word-aligned moves and eight-way unrolled edge
  cases (116 word stores, 70 variable shifts).
- `cfb16DoBitbltXor` (kona.so, address 0x441c90): **inferred.** Rectangle copy for the exclusive-or raster
  operation at 16 bits per pixel: the same shift-and-merge loops as the copy version with the combine step an
  exclusive-or.
- `cfb16DoBitbltOr` (kona.so, address 0x47cfd0): **inferred.** Rectangle copy for the or raster operation at
  16 bits per pixel; shares its 1146-instruction size and loop layout with the exclusive-or version, differing
  in the merge instruction.

### Colour frame-buffer: solid rectangles and spans

- `cfbFillRectSolidCopy` (kona.so, address 0x44e4a0): **inferred.** Fills rectangles with a single colour
  using the copy raster operation, 8 bits per pixel: head and tail pixels by byte stores and the body by word
  stores in unrolled loops (109 word stores).
- `cfb16FillRectSolidCopy` (kona.so, address 0x44d900): **inferred.** Solid rectangle fill for 16-bit pixels
  with the copy raster operation: two pixels per word store, with a halfword store for an odd edge pixel; 403
  instructions.
- `cfb16FillRectSolidXor` (kona.so, address 0x4a8160): **inferred.** Solid rectangle fill for 16-bit pixels
  with the exclusive-or raster operation: loads each destination word and stores its exclusive-or with the
  colour, in unrolled loops.
- `cfbSolidSpansCopy` (kona.so, address 0x4cbc60): **inferred.** Fills spans in a solid 8-bit colour with the
  copy raster operation: byte stores for the unaligned ends and word stores in between; clips with
  `miFindMaxBand` and `miClipSpans`.
- `cfb16SolidSpansCopy` (kona.so, address 0x4aa410): **inferred.** Fills spans in a solid 16-bit colour with
  copy: clips with `miFindMaxBand` and `miClipSpans`, then writes whole words for the middle of each span.
- `cfbSolidSpansGeneral` (kona.so, address 0x48f250): **inferred.** Solid span fill with any raster operation
  at 8 bits per pixel: applies the and/xor pair per word with byte-wise edges and clips with `miFindMaxBand`
  and `miClipSpans`.
- `cfb32SolidSpansGeneral` (kona.so, address 0x4b80c0): **inferred.** Solid span fill with an arbitrary raster
  operation at 32 bits per pixel, clipped by `miFindMaxBand` and `miClipSpans`, one word store per pixel pair
  of masks.

### Colour frame-buffer: tiles and stipples

- `cfbFillSpanTile32sCopy` (kona.so, address 0x443180): **inferred.** Fills spans from a tile exactly 32
  pixels wide, copy operation, 8 bits per pixel: rotates the tile word to the span's phase with 35 variable
  shifts and stores whole words.
- `cfb16FillSpanTile32sGeneral` (kona.so, address 0x436f90): **inferred.** Fills spans from a 32-bit-wide tile
  for any raster operation at 16 bits per pixel: shifts the tile word to the span's start (15 variable shifts)
  and merges with the and/xor masks.
- `cfb32FillSpanTile32sGeneral` (kona.so, address 0x4b6cf0): **inferred.** Span fill from a tile of one word
  for 32-bit pixels and any raster operation; 219 instructions, a word per pixel with the mask pair applied.
- `cfbFillSpanTileOddGeneral` (kona.so, address 0x485ad0): **inferred.** Span fill from a tile whose width is
  not a word multiple, 8-bit pixels, any raster operation: the tile row is read with 39 variable shifts to
  line up with the destination word.
- `cfb16FillSpanTileOddGeneral` (kona.so, address 0x4c9640): **inferred.** Odd-width tile span fill for 16-bit
  pixels: tile row bits are realigned with 39 variable shifts and merged under the raster-operation masks.
- `cfb32Tile32FSCopy` (kona.so, address 0x45cc00): **inferred.** FillSpans from a one-word tile, copy
  operation, 32 bits per pixel: clips with `miFindMaxBand` and `miClipSpans`, then stores the tile word for
  each pixel.
- `cfb16Tile32FSCopy` (kona.so, address 0x4679b0): **inferred.** FillSpans from a 32-bit tile with copy at 16
  bits per pixel: clipped by `miFindMaxBand` and `miClipSpans`, then stores tile words aligned to the span
  start.
- `cfb32Tile32FSGeneral` (kona.so, address 0x466090): **inferred.** FillSpans from a one-word tile for 32-bit
  pixels and any raster operation, clipping with `miFindMaxBand` and `miClipSpans` and combining by the
  and/xor pair.
- `cfb16Tile32FSGeneral` (kona.so, address 0x476570): **inferred.** FillSpans from a word-wide tile at 16 bits
  per pixel for any raster operation: `miFindMaxBand` and `miClipSpans` clip, then each span is merged under
  masks.
- `cfbUnnaturalTileFS` (kona.so, address 0x4b67d0): **inferred.** Dispatches span fills for tile widths that
  do not divide a word: clips spans with `miFindMaxBand` and `miClipSpans` (called at two places) and hands
  them to the odd-width span routines; 120 instructions.
- `cfbFillBoxTile32sGeneral` (kona.so, address 0x45eae0): **inferred.** Fills boxes from a 32-pixel-wide tile,
  any raster operation, 8-bit pixels: realigns the tile word with 15 variable shifts and combines with the
  and/xor pair.
- `cfbFillBoxTileOdd` (kona.so, address 0x4698c0): **inferred.** Chooses between the copy and general box
  fills for odd-width tiles: calls `cfbFillBoxTileOddCopy` or `cfbFillBoxTile32sCopy` depending on the tile
  width; 23 instructions.
- `cfb16FillBoxTileOddCopy` (kona.so, address 0x48d360): **inferred.** Fills boxes from an odd-width tile with
  copy at 16 bits per pixel: 42 variable shifts assemble each destination word from two tile words.
- `cfb16FillBoxTileOddGeneral` (kona.so, address 0x487760): **inferred.** Odd-width tile box fill at 16 bits
  per pixel for any raster operation: 36 variable shifts line the tile up and the and/xor masks combine it.
- `cfb32FillBoxTileOddCopy` (kona.so, address 0x464fa0): **inferred.** Odd-width tile box fill, copy
  operation, 32 bits per pixel: 351 instructions, with few shifts because a 32-bit pixel is a whole word.
- `cfb32FillBoxTileOddGeneral` (kona.so, address 0x48fa00): **inferred.** Odd-width tile box fill for 32-bit
  pixels and any raster operation; 345 instructions applying the mask pair to each tile word.
- `cfb16FillRectTileOdd` (kona.so, address 0x4ab2d0): **inferred.** Rectangle fill from an odd-width tile at
  16 bits per pixel: forwards to `cfb16FillBoxTileOddGeneral` with the rectangle list; 55 instructions.
- `cfb32FillRectTileOdd` (kona.so, address 0x4a7300): **inferred.** Rectangle fill from an odd-width tile at
  32 bits per pixel: forwards to `cfb32FillBoxTile32sGeneral` for each rectangle.
- `cfb32FillRectTile32Copy` (kona.so, address 0x4be6d0): **inferred.** Rectangle fill from a one-word tile
  with copy at 32 bits per pixel: stores the tile word across each row (26 word stores) without any shift.
- `cfb8FillRectOpaqueStippled32` (kona.so, address 0x44a430): **inferred.** Fills rectangles from a
  32-pixel-wide stipple painting both foreground and background: `cfb8SetOpaqueStipple` prepares the tables,
  then word stores (98) write the pixels in unrolled loops.
- `cfb8FillRectTransparentStippled32` (kona.so, address 0x453200): **inferred.** Fills rectangles from a
  32-pixel-wide stipple painting only the foreground: `cfb8SetStipple` builds the mask tables, then 536 byte
  stores and 218 halfword stores place the set pixels; 2304 instructions.
- `cfb8Stipple32FS` (kona.so, address 0x4834d0): **inferred.** FillSpans with a 32-pixel stipple at 8 bits per
  pixel: `cfb8SetStipple` prepares the tables, `miFindMaxBand` and `miClipSpans` clip, and byte and halfword
  stores write the stippled pixels.

### Colour frame-buffer: polygons, arcs and glyphs

- `cfb16FillPoly1RectCopy` (kona.so, address 0x4665a0): **inferred.** Convex polygon fill for 16-bit pixels
  with copy when the clip is a single rectangle; falls back to `miFillPolygon` (two places) for other clips.
  645 instructions.
- `cfb16FillPoly1RectGeneral` (kona.so, address 0x472370): **inferred.** Polygon fill for 16-bit pixels with
  any raster operation and a single-rectangle clip, handing other clips to `miFillPolygon` (two call sites);
  829 instructions.
- `cfb32FillPoly1RectGeneral` (kona.so, address 0x446260): **inferred.** Polygon fill for 32-bit pixels and a
  single clip rectangle, with `miFillPolygon` as the fallback at two call sites; the 0x7fff and 0xfffeffff
  constants test coordinate range.
- `cfbPolyFillArcSolidCopy` (kona.so, address 0x499410): **inferred.** PolyFillArc with a solid colour and
  copy operation, 8 bits per pixel: fetches the clip through entry +380 and calls a shared helper at 0x493370;
  136 instructions.
- `cfbPolyFillArcSolidGeneral` (kona.so, address 0x47f060): **inferred.** PolyFillArc with a solid colour and
  arbitrary raster operation at 8 bits per pixel: 137 instructions fetching the clip via entry +380 and
  calling an indirect fill three times.
- `cfb16PolyFillArcSolidCopy` (kona.so, address 0x47f4a0): **inferred.** Solid copy PolyFillArc for 16-bit
  pixels: loops over arcs (13 loop edges), takes the clip from entry +380 and fills spans through an indirect
  call.
- `cfb16PolyFillArcSolidGeneral` (kona.so, address 0x4810c0): **inferred.** PolyFillArc for 16-bit pixels with
  any raster operation and solid fill; calls the clip entry +380 three times and an indirect span filler.
- `cfb32PolyFillArcSolidGeneral` (kona.so, address 0x443a00): **inferred.** PolyFillArc for 32-bit pixels,
  solid fill, any raster operation; the structure matches the 16-bit general version.
- `cfb32ZeroPolyArcSSCopy` (kona.so, address 0x4521e0): **inferred.** Zero-width single-segment arc draw for
  32-bit pixels with copy: calls the clip entry +380 three times and an indirect routine, bounded by 0x7fff.
- `cfb16ZeroPolyArcSSXor` (kona.so, address 0x49a6d0): **inferred.** Zero-width arc drawing for 16-bit pixels
  with exclusive-or: falls back to `miPolyArc` when the arc is not simple, clipping through entry +380.
- `cfb32ZeroPolyArcSSXor` (kona.so, address 0x4a25c0): **inferred.** Zero-width arc for 32-bit pixels with
  exclusive-or: calls entry +380 twice and `miPolyArc` as the general path.
- `cfbZeroPolyArcSS8Xor` (kona.so, address 0x4a90f0): **inferred.** Zero-width arc for 8-bit pixels with
  exclusive-or: `miPolyArc` handles the cases the fast loop does not, after three calls of the clip entry
  +380.
- `cfb16PolyGlyphBlt8` (kona.so, address 0x43e490): **inferred.** PolyGlyphBlt for 16-bit pixels with 8-pixel
  glyph rows: clips through entry +380, calls the shared glyph painter at 0x444fb0 twice and writes pixels
  with halfword stores (41 of them).
- `cfbPolyGlyphRop8` (kona.so, address 0x4c5740): **inferred.** PolyGlyphBlt with a general raster operation
  at 8 bits per pixel: `cfb8SetStipple` is called twice to build the stipple tables and the glyph rows are
  applied through entry +0.
- `cfb32ImageGlyphBlt8` (kona.so, address 0x4a71b0): **inferred.** ImageGlyphBlt for 32-bit pixels: measures
  with `QueryGlyphExtents`, then fills the cell background and paints the glyph bits through the entries at
  +44 and +72; 84 instructions.

### Colour frame-buffer: lines

- `cfb16BresD` (kona.so, address 0x437ec0): **inferred.** Bresenham stepper for dashed 16-bit lines: advances
  the error term per pixel, toggles dash and gap with a counter and stores pixels with halfword stores (12 of
  them).
- `cfb32VertS` (kona.so, address 0x457b90): **inferred.** Draws a vertical run of 32-bit pixels, one word
  store per scan line stepped by the row stride; 174 instructions.
- `cfb16VertS` (kona.so, address 0x4cc040): **inferred.** Vertical run at 16 bits per pixel: steps by the row
  stride and stores each pixel with a halfword store, 35 stores in the unrolled loop.
- `cfb16HorzS` (kona.so, address 0x4776d0): **inferred.** Horizontal run at 16 bits per pixel: head and tail
  pixels by halfword, middle as words (76 word stores in unrolled cases).
- `cfb32LineSS` (kona.so, address 0x47e200): **inferred.** Single-width solid polyline for 32-bit pixels:
  clips with `miZeroClipLine`, uses `cfb32VertS` and `cfb32HorzS` for axis-aligned segments and
  `cfb32BresS` (two call sites) otherwise.
- `cfb16LineSS` (kona.so, address 0x4a0e00): **inferred.** Single-width solid polyline for 16-bit pixels:
  `miZeroClipLine` clips, then `cfb16VertS`, `cfb16HorzS` or
  `cfb16BresS` draw by slope; the same shape as the 32-bit routine.
- `cfb32LineSD` (kona.so, address 0x486b50): **inferred.** Dashed polyline for 32-bit pixels: reduces the
  raster operation with `cfb32ReduceRasterOp`, clips with `miZeroClipLine`, steps dashes with `miStepDash` and
  draws with `cfb32BresD`.
- `cfb16LineSD` (kona.so, address 0x4a7550): **inferred.** Dashed polyline for 16-bit pixels:
  `cfb16ReduceRasterOp`, `miZeroClipLine`, `miStepDash` and
  `cfb16BresD` in the same order as the 32-bit routine.
- `cfbLineSD` (kona.so, address 0x4c6a20): **inferred.** Dashed polyline for 8-bit pixels:
  `cfbReduceRasterOp`, `miZeroClipLine`, `miStepDash` and
  `cfbBresD` (two call sites each for the last three).
- `cfb32SegmentSS` (kona.so, address 0x461930): **inferred.** Solid PolySegment for 32-bit pixels:
  `miZeroClipLine` clips each segment, then `cfb32VertS`, `cfb32HorzS` or
  `cfb32BresS` draws it.
- `cfb16SegmentSS` (kona.so, address 0x469e50): **inferred.** Solid PolySegment for 16-bit pixels: clips with
  `miZeroClipLine` and draws with `cfb16VertS`, `cfb16HorzS` or
  `cfb16BresS`; same size as the 32-bit version.
- `cfb32SegmentSD` (kona.so, address 0x45a810): **inferred.** Dashed PolySegment for 32-bit pixels:
  `cfb32ReduceRasterOp`, `miZeroClipLine`, `miStepDash` and
  `cfb32BresD`, reading the screen entries +32 and +108 for the context.
- `cfb16SegmentSD` (kona.so, address 0x460f20): **inferred.** Dashed PolySegment for 16-bit pixels:
  `cfb16ReduceRasterOp` then `miZeroClipLine`, `miStepDash` and
  `cfb16BresD`, with the screen entries +32 and +108.
- `cfb16SegmentSS1Rect` (kona.so, address 0x456460): **inferred.** Entry for solid PolySegment with a
  one-rectangle clip at 16 bits per pixel: 78 instructions choosing the copy, xor or general routine through
  two indirect calls.
- `cfb16SegmentSS1RectCopy` (kona.so, address 0x4974d0): **inferred.** Single-clip-rectangle solid segments at
  16 bits per pixel with copy: unpacks packed coordinate pairs, tests them against the clip with the
  0x80008000 and 0xfffeffff checks and draws with halfword stores.
- `cfb16SegmentSS1RectXor` (kona.so, address 0x4888c0): **inferred.** Single-clip solid segments at 16 bits
  per pixel with exclusive-or: the same packed-coordinate loop as the copy version, but each pixel is
  exclusive-ored; 552 instructions.
- `cfb16SegmentSS1RectGeneral` (kona.so, address 0x459890): **inferred.** Single-clip solid segments at 16
  bits per pixel for any raster operation; 644 instructions with the same overflow and range checks
  (0x80008000, 0xfffeffff).
- `cfb32SegmentSS1RectCopy` (kona.so, address 0x4b0ce0): **inferred.** Single-clip solid segments at 32 bits
  per pixel with copy: packed coordinates tested against the clip, a word store for each pixel.
- `cfb32SegmentSS1RectGeneral` (kona.so, address 0x450620): **inferred.** Single-clip solid segments for
  32-bit pixels and any raster operation; 459 instructions using the and/xor pair per pixel.
- `cfb8SegmentSS1RectGeneral` (kona.so, address 0x4ac0d0): **inferred.** Single-clip solid segments for 8-bit
  pixels and any raster operation, with 16 byte stores and the packed coordinate checks 0x80008000 and
  0xfffeffff.
- `cfb16LineSS1Rect` (kona.so, address 0x4b0a00): **inferred.** Entry for solid polylines with a one-rectangle
  clip at 16 bits per pixel: four indirect calls choose copy, xor or general line routines; 180 instructions.
- `cfb16LineSS1RectCopy` (kona.so, address 0x4c60f0): **inferred.** Single-clip solid polyline at 16 bits per
  pixel with copy: packed coordinates, clip tests and halfword stores (32 of them) along the major axis.
- `cfb16LineSS1RectPreviousCopy` (kona.so, address 0x4745c0): **inferred.** Variant of the single-clip copy
  polyline at 16 bits per pixel whose name ends in Previous; 432 instructions with 16 halfword stores and 15
  loop edges, drawing a connected line from packed coordinates tested with the 0xfffeffff mask.
- `cfb32LineSS1RectCopy` (kona.so, address 0x4cd3d0): **inferred.** Single-clip solid polyline for 32-bit
  pixels with copy: 585 instructions, word stores along the line with the packed-coordinate clip tests.
- `cfb8LineSS1RectXor` (kona.so, address 0x4910f0): **inferred.** Single-clip solid polyline for 8-bit pixels
  with exclusive-or: 16 byte stores and the packed coordinate clip checks.
- `cfb8ClippedLineCopy` (kona.so, address 0x446b90): **inferred.** Clipped zero-width line for 8-bit pixels
  with copy: clips with `miZeroClipLine` (two call sites) and steps pixels with byte stores (56 of them).
- `cfb8ClippedLineGeneral` (kona.so, address 0x45d1c0): **inferred.** Clipped line for 8-bit pixels with any
  raster operation, clipping with `miZeroClipLine` at two places and combining with the and/xor pair.
- `cfb16ClippedLineCopy` (kona.so, address 0x49c370): **inferred.** Clipped line for 16-bit pixels with copy:
  `miZeroClipLine` twice, then halfword stores (55) along the line.
- `cfb16ClippedLineGeneral` (kona.so, address 0x475710): **inferred.** Clipped line for 16-bit pixels with any
  raster operation: two `miZeroClipLine` calls and masked halfword stores.
- `cfb32ClippedLineCopy` (kona.so, address 0x496920): **inferred.** Clipped line for 32-bit pixels with copy:
  `miZeroClipLine` at two places and 77 word stores.
- `cfb32ClippedLineGeneral` (kona.so, address 0x464450): **inferred.** Clipped line for 32-bit pixels with any
  raster operation, built like the 16-bit one around two `miZeroClipLine` calls.

## konal.so functions matching the kona.so range from 0x4cdd80

The IP27 kernel names the pipe KONAL and the server loads `konal.so` (6.5.30m, `ddx/konal.so`; inferred). Each entry below is the `konal.so` build of a function that kona.so has at 0x4cdd80 or above, read from its own disassembly (extracted with `scripts/extract_kona_ddx.py`, sections by prefix as for kona.so). konal.so is linked at a different base, so its addresses start at 0x1400000 and every function has a different byte hash from its kona.so twin. Comparing the two instruction by instruction with relocated addresses ignored shows that 293 of the 347 functions are the same code. The 54 that differ are all `kon*` pipe writers and loaders. In konal.so a command is the token number stored as a word at the FIFO pointer (screen private +0x8) at offset 0, followed by the payload words, also at offset 0; kona.so stores the first payload word at the pipe address 32 times the token above the pointer. konal.so also has no `KonSeqData*_ip19` helpers: it stores bulk words inline one by one. Where kona.so sends `HP_WG_FLUSH_1`, konal.so reads a word through the pointer at +0x10 of the screen private.

- `cfbFillPoly1RectGeneral` (`konal.so` 0x1456980, 3304 bytes): **Established.** Polygon fill for
  8-bit pixels in one clip rectangle under any raster op. It indexes the GC private array at gc
  +0x4c, tests the coordinate range against 32767, and calls `miFillPolygon` at two sites for shapes
  it does not scan inline; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `cfbLineSS` (`konal.so` 0x1457670, 3496 bytes): **Inferred.** Solid single-width polyline for
  8-bit drawables. Read from the call pattern: horizontal runs go to `cfbHorzS`, vertical runs to
  `cfbVertS`, other slopes to `cfbBresS`, and a line that leaves the clip box is trimmed by
  `miZeroClipLine`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `mfbCreateGC` (`konal.so` 0x1458590, 184 bytes): **Established.** Fills in a new one-bit graphics
  context: clears gc +0x38, forces the fill-related bits of the flags word at +0x10, installs the
  module's one-bit operation vector at gc +0x44 and the matching ops at +0x48, then calls
  `mfbReduceRop` with the context's raster op and foreground to fill its private record, whose
  area-fill pointer is set to `mfbSolidWhiteArea`; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `nfbStereoPolyGlyphBlt` (`konal.so` 0x1458650, 492 bytes): **Established.** Stereo
  PolyGlyphBlt, saved entry +0x48, called for each eye; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `cfb16CopyPlane` (`konal.so` 0x1458840, 72 bytes): **Inferred.**
  CopyPlane for 16-bit drawables: no 16-bit plane routine exists, so it forwards all its arguments
  through a pointer to `cfbPuntCopyPlane`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfbZeroPolyArcSS8General` (`konal.so` 0x1458890, 468 bytes): **Inferred.** Zero-width arc entry
  for 8-bit pixels and general raster ops. It walks the arc list in 12-byte records: an arc wider or
  taller than 800 pixels goes alone to `miZeroPolyArc`; for the others it builds the bounding box
  and, if the box passes 32767 or the screen's rectangle-test hook at +0x17c does not report it
  wholly inside the clip, hands the arc to `miPolyArc`; a box wholly inside goes to the module's own
  fast arc routine (reached through a pointer in a saved register); the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbTile32FSGeneral` (`konal.so` 0x1458a70, 1720 bytes): **Established.**
  FillSpans for an 8-bit tiled GC with a 32-pixel tile and any raster op: clips the span list with
  `miClipSpans` after `miFindMaxBand`, then merges tile words into the span using `mergeRopBits` and
  the partial-word tables; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `konPolyFillRectSolid` (`konal.so` 0x1459130, 3828 bytes): **Established.** Solid
  PolyFillRect in the konal.so build. It sends `HP_X_LOADPOS`, `HP_X_LOADGC`,
  `HP_X_LOADCLIP` (with `HP_X_BDATA4` for later clip rectangles) and then `HP_X_RECT6`,
  `HP_X_DATA2` to `HP_X_DATA10`, `HP_X_RECT` and
  `HP_X_BOX` as the kona.so routine does, but each token is first stored as its own number at offset
  0 of the FIFO pointer, and the rectangle words are stored one by one at offset 0 instead of
  through `KonSeqData3_ip19` to `KonSeqData11_ip19`, which this module does not contain. The code is
  668 bytes longer (3828 against 3160) for that reason; failures still go to `ErrorF`, at seven
  sites.

- `mfbSegmentSD` (`konal.so` 0x145aaf0, 2500 bytes): **Established.** Dashed
  PolySegment for one-bit drawables. It reduces the raster op with `mfbReduceRop`, advances the dash
  with `miStepDash`, draws each dash through `mfbBresD` (two sites), and clips with
  `miZeroClipLine`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `konFreeFBBlock` (`konal.so` 0x145b4c0, 76 bytes): **Established.** Frees a block returned by
  `konReadFBBlock`: it calls `Xfree` on the pointer at +0x8 of the block record and clears that
  field; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `nfbStereoImageText8` (`konal.so` 0x145bc00, 472 bytes): **Established.** Stereo
  ImageText8, saved entry +0x3c, called twice with the drawable's y moved between eyes; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16UnnaturalTileFS` (`konal.so` 0x145c100, 480 bytes): **Established.**
  FillSpans for a 16-bit tile that is not 32 pixels wide: after `miFindMaxBand` and `miClipSpans`,
  it picks `cfb16FillSpanTileOddCopy` or `cfb16FillSpanTile32sCopy` by the rop and tile shape, and
  the general variants otherwise; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `kon_loadTilePlane` (`konal.so` 0x145c2e0, 1428 bytes): **Established.** Tile-plane loader in the
  konal.so build. It calls `kon_allocCachedStipple` and `kon_loadCachedStipple` as in kona.so and
  sends `HP_X_LOADSTIPPLE` and `HP_X_ROTATESTIPPLE` as a token word at offset 0 followed by the slot
  and origin words; `ErrorF` at three sites. 1428 bytes against 1388.

- `miRegionUninit` (`konal.so` 0x145cc50, 72 bytes): **Established.** Releases a region's rectangle
  storage: when the data pointer at +0x8 is not the shared empty one and has a nonzero size, it
  calls `Xfree` on it; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `konCopyWindow` (`konal.so` 0x145cca0, 2112 bytes): **Inferred.** The copy-window hook. It works
  on the destination's clip rectangles and the window's marked list through the screen's region
  hooks (at +0x154, +0x174 and +0x178 of the screen record, among others), and moves the covered
  pixels by calling the local routine at 0x1408fc0 at two sites, shifted by the difference between
  the old and new window origin. It sends no token itself; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `rrmCreateDefColormap` (`konal.so` 0x145d4e0, 976 bytes): **Inferred.** Creates the default
  colormap for a screen from the visual list (36 bytes per visual record, scanned for the visual
  whose id matches), by calling `CreateColormap`. It takes the addresses of `AllocColor` and
  `sgiOverrideColorCompare` and refers to the tables `init4sight`, `initGL`,
  `initPseudo` and `initEnvm` for the initial entries; `ErrorF` reports failure. The meaning of each
  table was not read; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb32SegmentSS1Rect` (`konal.so` 0x145d8b0, 320 bytes): **Inferred.** Chooser for 32-bit
  PolySegment in one clip rectangle. It calls the copy, xor or general routine through a pointer and
  falls back to `cfb32ClippedLineGeneral`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `konQueryBestSize` (`konal.so` 0x145deb0, 308 bytes): **Established.** Best-size query for the
  module: for tile and stipple (classes 1 and 2) it rounds the requested width down to a power of
  two, and for the cursor class it caps both sides at 64; in konal.so its address is stored at
  0x15126a4, and the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfbTile32FSCopy` (`konal.so` 0x145dff0, 1396 bytes): **Established.**
  FillSpans for an 8-bit tiled GC, 32-pixel tile, copy mode. It calls `miFindMaxBand` and
  `miClipSpans` to clip the spans and copies tile words with `cfbstarttab` and `cfbendtab` edge
  handling; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `nfbStereoPolySegment` (`konal.so` 0x145e570, 716 bytes): **Established.** Segment-drawing wrapper
  for stereo windows that calls the saved entry at +0x1c once per eye. Because the first eye draws
  shifted segments, it first duplicates the segment array into a block from `Xalloc`, and it
  releases that block with `Xfree` at the end; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `cfbCopyPlane` (`konal.so` 0x145e8e0, 1240 bytes): **Established.**
  CopyPlane for 8-bit drawables. When the source is one bit deep it takes the stipple route:
  `cfb8SetOpaqueStipple` (two sites), then `cfbBitBlt` through `cfbCopyPlane1to8`; otherwise it
  punts to `cfbPuntCopyPlane`, which builds a scratch GC with `GetScratchGC` and `ValidateGC`.
  Exposures come from `miHandleExposures`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfb16BitBlt` (`konal.so` 0x145f1b0, 2092 bytes): **Inferred.** The 16-bit blit driver: it
  computes the source and destination clip boxes, makes `NotClippedByChildren` (for a window
  source), calls the inner blit routine passed in through a pointer (fifteen indirect calls in all,
  one per box band and direction), and finishes with `miHandleExposures` for the exposure rectangles
  of a window source; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb16GetImage` (`konal.so` 0x145f9e0, 440 bytes): **Established.**
  GetImage for 16-bit drawables: for ZPixmap requests it builds a scratch pixmap header with
  `GetScratchPixmapHeader`, zeroes it with `bzero`, copies through `cfb16DoBitblt`, and frees it
  with `FreeScratchPixmapHeader`; other formats go to `miGetImage` or `mfbGetImage`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbStereoCopyArea` (`konal.so` 0x145fba0, 844 bytes): **Established.** Stereo
  CopyArea (saved entry +0xc): the eye offset is applied to the source drawable as well when it is a
  window, and the call is made once per eye; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfb16SolidSpansXor` (`konal.so` 0x14601f0, 1036 bytes): **Established.** Solid-fill
  FillSpans for 16-bit pixels with xor: finds the widest band with `miFindMaxBand`, clips the list
  with `miClipSpans`, then xors the foreground across each span using the 16-bit start and end
  tables; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `konSegmentSS` (`konal.so` 0x1460600, 556 bytes): **Established.**
  PolySegment through the pipe, konal.so build. It still loads state with `kon_loadGC` and
  `kon_loadClipRects`, falls back to `konSlowSegmentSS`, and sends one segment per command, but the
  command is two stores at the FIFO pointer's offset 0: the number 345 (`HP_X_SEGMENT`) and then the
  two point words, whereas kona.so stores the first point at the token address 0x2b20 above the
  pointer. 8 bytes longer than kona.so.

- `miMarkOverlappedWindows` (`konal.so` 0x1460830, 564 bytes): **Inferred.** Walks the sibling list
  marking each window that the target overlaps, calling through the screen's mark-window hook (five
  sites), and it is called from `miScreenInit`; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `nfbOpStippledFillRects` (`konal.so` 0x1460a70, 952 bytes): **Inferred.**
  FillRects with an opaque stipple, structured like the transparent one with four indirect calls
  into the opaque routine; in konal.so its address is stored at 0x1514368, and the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbSaveScreen` (`konal.so` 0x1460e30, 64 bytes): **Inferred.** Screen saver hook: calls the
  function at +0xc0 of the object at +0x74 of the screen record, passing the blank flag (1 when the
  argument is 0) and the screen; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `cfb32DoBitbltXor` (`konal.so` 0x1460e70, 2556 bytes): **Inferred.** The 32-bit rectangle copy
  that xors source into destination; leaf code with no edge masks, and it is called from
  `cfb32CopyArea`, `cfb32DoBitblt`; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `cfb32UnnaturalTileFS` (`konal.so` 0x1461870, 404 bytes): **Established.**
  FillSpans for a 32-bit tile of odd shape: clips with `miClipSpans`, then routes to
  `cfb32FillSpanTile32sCopy` or `cfb32FillSpanTile32sGeneral` depending on the raster op; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miImageText8` (`konal.so` 0x1461a10, 136 bytes): **Established.**
  ImageText for 8-bit fonts: calls `GetGlyphs` to look up the glyphs, then calls the GC's
  ImageGlyphBlt through the operation table; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `mfbPolyGlyphBltWhite` (`konal.so` 0x1461b80, 2264 bytes): **Established.**
  PolyGlyphBlt on a one-bit drawable that sets pixels where the glyph is set. It calls
  `QueryGlyphExtents` to size the string and writes glyph rows using `starttab` and `partmasks` for
  the ragged sides; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `nfbCreateWindow` (`konal.so` 0x1462460, 1104 bytes): **Established.** Creates the window's
  frame-buffer record: allocates it with `Xalloc` (two sites), looks up the window's visual with
  `LookupIDByType`, uses `FindWindowWithOptional` (six sites) to find the optional fields, and sets
  its private index to `nfbWindowPrivateIndex`; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `miInitSpanGroup` (`konal.so` 0x14628b0, 32 bytes): **Established.** Starts a span group for the
  wide-line code, storing the empty bounding extents (-32767 low, 32767 high); no calls, and it is
  called from `miSetupSpanData`; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `nfbOpStippledFS` (`konal.so` 0x1462bf0, 676 bytes): **Inferred.**
  FillSpans with an opaque stipple: three indirect calls into the opaque stipple routine of the
  private records; in konal.so its address is stored at 0x151436c, and the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `mfbUnnaturalStippleFS` (`konal.so` 0x1462ea0, 2500 bytes): **Established.**
  FillSpans for a one-bit stipple whose width is not 32: clips with `miClipSpans` after
  `miFindMaxBand` and builds each row from the rotated stipple using `starttab` and `partmasks`; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `nfbPaintWindowBackground` (`konal.so` 0x1463870, 580 bytes): **Established.** Paints a window's
  background: it reports an unrecognised background state with `ErrorF` and otherwise calls the fill
  routine selected by the window record's background type (1 solid, 2 tile, 3 parent-relative). It
  calls `ErrorF` for background states it does not recognise;; in konal.so its address is stored at
  0x15126e0, and the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `konImageGlyphBltTE32` (`konal.so` 0x1463e80, 2604 bytes): **Established.** Image-text glyph blit
  for 32-pixel terminal-emulator fonts, konal.so build. It sends `HP_X_LOADPOS`, `HP_X_LOADCLIP`,
  `HP_X_LOADSCISSOR`, `HP_X_BOX`, `HP_X_PIX_SETUP`,
  `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH` with each token stored as its number at offset 0 before the
  payload, calls `kon_loadImgRectGC` and `kon_loadImgBitmapGC`, falls back to `nfbImageGlyphBlt`,
  and reports through `ErrorF`.

- `nfbTreeObscured` (`konal.so` 0x14653a0, 352 bytes): **Established.** Walks the window tree and
  sends visibility events with `SendVisibilityNotify` for windows that became fully obscured
  (visibility state 2) or visible, using the saved flag bits to avoid repeats; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `konImageGlyphBltTE10` (`konal.so` 0x1466aa0, 3896 bytes): **Established.** Image-text glyph blit
  for 10-pixel terminal-emulator fonts, konal.so build. It sends `HP_X_LOADPOS`, `HP_X_LOADCLIP`,
  `HP_X_LOADSCISSOR`, `HP_X_BOX`, `HP_X_PIX_SETUP`,
  `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH` with each token stored as its number at offset 0 before the
  payload, calls `kon_loadImgRectGC` and `kon_loadImgBitmapGC`, falls back to `nfbImageGlyphBlt`,
  and reports through `ErrorF`.

- `konImageGlyphBltTE16` (`konal.so` 0x14679f0, 3108 bytes): **Established.** Image-text glyph blit
  for 16-pixel terminal-emulator fonts, konal.so build. It sends `HP_X_LOADPOS`, `HP_X_LOADCLIP`,
  `HP_X_LOADSCISSOR`, `HP_X_BOX`, `HP_X_PIX_SETUP`,
  `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH` with each token stored as its number at offset 0 before the
  payload, calls `kon_loadImgRectGC` and `kon_loadImgBitmapGC`, falls back to `nfbImageGlyphBlt`,
  and reports through `ErrorF`.

- `cfbDoBitbltGeneral` (`konal.so` 0x1468620, 6288 bytes): **Inferred.** The 8-bit rectangle copy
  that works for every raster op and plane mask. A leaf: it picks the copy direction (left to right
  or the reverse, top to bottom or the reverse) from the source and destination boxes and shifts
  words through the tables `cfbstarttab` and `cfbendpartial`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `miCloseScreen` (`konal.so` 0x1469eb0, 52 bytes): **Inferred.** Closes a screen: it calls the hook
  at +0xf0 of the screen record with the root pixmap pointer from screen +0x74, which releases the
  root pixmap, and returns its result; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfbVertS` (`konal.so` 0x1469ef0, 700 bytes): **Established.** Leaf that draws a vertical run in
  an 8-bit frame buffer. Its first argument is the raster-op code and the code branches on 3 and 6;
  the body ands each destination byte with one mask and xors in a second before storing it back,
  advancing by the row stride, and it is called from `cfbLineSS`, `cfbSegmentSS`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16FillRectSolidGeneral` (`konal.so` 0x146f5d0, 1900 bytes): **Inferred.** Solid rectangle fill
  for 16-bit pixels, any raster op. Leaf; reads the screen private data at +0x1b4 and edge masks
  from `cfb16startpartial` and `cfb16endpartial`; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `cfb16FillRectTile32Copy` (`konal.so` 0x146fdb0, 1948 bytes): **Inferred.** The 16-bit copy-mode
  version of the 32-pixel-wide tile fill, using the 16-bit start and end tables and the screen
  private data at +0x1b4; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb32PolyFillRect` (`konal.so` 0x1470620, 2276 bytes): **Established.**
  PolyFillRect for 32-bit drawables. Dispatch is by fill style to `cfb32FillRectSolidGeneral`,
  `cfb32FillRectSolidCopy`, `cfb32FillRectSolidXor`, `cfb32FillRectTile32General` or
  `cfb32FillRectTileOdd`; `miPolyFillRect` handles anything else; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `miZeroArcPts` (`konal.so` 0x1470f10, 1760 bytes): **Established.** Generates the integer points
  of a zero-width arc by calling `miZeroArcSetup` once, then stepping its error terms into a point
  list; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfbCopyRotatePixmap` (`konal.so` 0x14715f0, 312 bytes): **Established.** Makes a rotated copy of
  an 8-bit tile or stipple pixmap: it copies with `cfbCopyPixmap`, pads it with `cfbPadPixmap`, then
  calls `cfbXRotatePixmap` and `cfbYRotatePixmap`, and stamps the pixmap with the global serial
  number. It also uses `memmove`; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `cfb32LineSS1RectPreviousCopy` (`konal.so` 0x1471730, 1728 bytes): **Inferred.**
  Relative-coordinate copy-mode polyline for 32-bit pixels inside one clip rectangle. A leaf that
  keeps the running point in registers, and it is called from `cfb32LineSS1Rect`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16PutImage` (`konal.so` 0x1471e00, 796 bytes): **Established.** Writes an image into a 16-bit
  window or pixmap by putting it in a scratch pixmap header from `GetScratchPixmapHeader`, then
  changes and revalidates a temporary GC state with `DoChangeGC` and `ValidateGC`, and finally calls
  the GC's CopyArea to move the pixels; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `mfbSolidBlackArea` (`konal.so` 0x1472200, 2320 bytes): **Established.** Clears a list of boxes in
  a one-bit frame buffer, a leaf: whole words in the interior and masks from `starttab` and `endtab`
  for the edges; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `nfbStereoImageGlyphBlt` (`konal.so` 0x1472b10, 492 bytes): **Established.** Stereo
  ImageGlyphBlt, saved entry +0x44, called once per eye with the shifted drawable; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32FillPoly1RectCopy` (`konal.so` 0x1473030, 2392 bytes): **Established.** Copy-mode polygon
  fill for 32-bit pixels in one clip rectangle; it consults the screen private array at +0x1b4 and
  falls back to `miFillPolygon` at two sites; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `nfbPolyPoint` (`konal.so` 0x1473e20, 728 bytes): **Inferred.**
  PolyPoint for the layer: for each point inside the window's clip it calls through the window
  record's point-fill routine (two sites); it reads the colour and rop from the private record at
  +0x28 and +0x30; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `mfbFillPolyBlack` (`konal.so` 0x14773c0, 1964 bytes): **Established.**
  FillPolygon with black on one-bit drawables: it scans a convex outline directly when the shape
  allows and otherwise passes it to `miFillPolygon` (two sites); the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb8ComputeClipMasks32` (`konal.so` 0x1477b70, 1468 bytes): **Inferred.** Computes the per-row
  clip masks for an 8-bit stipple of 32-bit width from a clip box, using the table
  `cfb8BitLenMasks`; a leaf that returns packed masks for the first and last word; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miRectAlloc` (`konal.so` 0x1478130, 316 bytes): **Established.** Grows a region's rectangle array
  to hold more boxes: grows by 250 boxes once there are over 500, otherwise doubles, using
  `Xrealloc` or `Xalloc`, with `Must_have_memory` set during the call; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbShmPutImage` (`konal.so` 0x1478270, 576 bytes): **Established.**
  PutImage from shared memory: it checks the image format and depth, reports an unsupported one with
  `ErrorF`, and uses `PixmapWidthPaddingInfo` and `globalSerialNumber` to build a pixmap header over
  the shared data; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `miImageGlyphBlt` (`konal.so` 0x14784b0, 456 bytes): **Established.** Default
  ImageGlyphBlt on top of other operations: calls `QueryGlyphExtents`, then `DoChangeGC` (three
  sites) and `ValidateGC` (two sites) to switch fill style, filling the background box and drawing
  the glyphs; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `kon_loadNfbGC` (`konal.so` 0x1478680, 188 bytes): **Established.** Generic-path GC loader in the
  konal.so build: sends `HP_X_LOADPOS` with zero origin and the screen's width and height (halfwords
  at +0x8 and +0xa of the drawable's screen) framed as a token word at offset 0 and the payload,
  then calls `kon_loadGeomGC`. 188 bytes against 180.

- `nfbStereoSetSpans` (`konal.so` 0x1478eb0, 2096 bytes): **Established.**
  SetSpans wrapper for stereo windows (saved entry +0x4). A loop unrolled four points at a time adds
  the eye offset to the y of each point of the span array, the saved routine then runs, and the
  shift is undone before the second eye's pass; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `nfbReplicateArea` (`konal.so` 0x1479910, 632 bytes): **Inferred.** Tiles a source box across a
  destination box by doubling: four indirect calls into the copy routine, starting from one tile and
  copying the grown block back into itself, and it is called from `konTileRects`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miPolyBuildPoly` (`konal.so` 0x1479b90, 2216 bytes): **Established.** Builds the outline of a
  wide-line segment join into an edge list, calling `miPolyBuildEdge` at two sites; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miZeroDashLine` (`konal.so` 0x147a7c0, 72 bytes): **Established.** Thin wrapper for dashed
  zero-width lines: forwards its arguments with a mode of 1 to `miWideDash`; the code is instruction
  for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32FillBoxTile32sCopy` (`konal.so` 0x147abb0, 1328 bytes): **Inferred.** Box fill for 32-bit
  pixels using a tile of one word per row, copy mode. It reads the screen private at +0x1b4 and no
  edge masks are needed; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfbFillBoxTileOddGeneral` (`konal.so` 0x147b2a0, 2896 bytes): **Inferred.** Fills a box of 8-bit
  pixels with a tile whose width is not a divisor of 32, any raster op; it merges through
  `mergeRopBits` and steps through the tile one row at a time with ragged-edge masks; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miCreateScreenResources` (`konal.so` 0x147bef0, 280 bytes): **Inferred.** Creates the root pixmap
  through the screen hook, stores it in the screen record, and releases a temporary block with
  `Xfree` on two paths; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb16PolyFillRect` (`konal.so` 0x147c110, 2280 bytes): **Established.**
  PolyFillRect for 16-bit drawables, choosing among `cfb16FillRectSolidGeneral`,
  `cfb16FillRectSolidCopy`, `cfb16FillRectSolidXor`, and the tile forms by fill style, with
  `miPolyFillRect` as the fallback; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `kon_loadBitmapGC` (`konal.so` 0x147ca00, 296 bytes): **Established.** Bitmap GC loader in the
  konal.so build: sends the thirteen `HP_X_LOADGC` words from the GC private record (foreground at
  +0x24 and +0x28, then the mask, op, address and format words) after the token number 297 stored at
  offset 0, instead of storing the first word at the token address. It makes no calls; 296 bytes
  against 288.

- `konCreateWindow` (`konal.so` 0x147cfc0, 564 bytes): **Established.** Window creation in the
  konal.so build. It sets up the window private as kona.so does (`FindWindowWithOptional`, then
  `konReloadAllGammas`), and for a window needing a hardware id it sends `HP_X_LOADXMAP_CONFIG` as
  the number 307 then the flag 1 at offset 0. It sends no `HP_WG_FLUSH_1`: afterwards it performs a
  load through the pointer at +0x10 of the screen private, the read that stands in for the flush.
  564 bytes against 560.

- `miChangeClip` (`konal.so` 0x147d200, 296 bytes): **Established.** Replaces a GC's client clip: it
  frees the old clip with `Xfree` and installs the new rectangle list or region; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbSolidPolyGlyphBlt` (`konal.so` 0x147d330, 2360 bytes): **Established.** Solid
  PolyGlyphBlt in the generic layer: calls `QueryGlyphExtents` for the text box and walks glyph rows
  to produce rectangles it fills with the solid colour; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `cfbImageGlyphBlt8` (`konal.so` 0x147dc70, 392 bytes): **Inferred.**
  ImageGlyphBlt for 8-bit drawables: asks `QueryGlyphExtents` for the string's box (one call), fills
  the background box with the GC's fill routine and then draws the glyphs through the GC's text
  routine; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `mfbAllocatePrivates` (`konal.so` 0x147de00, 280 bytes): **Established.** Reserves the one-bit
  layer's per-window and per-GC private slots once per server generation, calling
  `AllocateWindowPrivateIndex`, `AllocateGCPrivateIndex`, `AllocateWindowPrivate`,
  `AllocateGCPrivate` and `miRegisterGCPrivateIndex`; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `nfbPostValidateTree` (`konal.so` 0x147df20, 200 bytes): **Inferred.** After a tree validation it
  calls the window record's hook with the argument 3, once per window passed, to finish the
  revalidation; in konal.so its address is stored at 0x15126d8, and the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb8SetOpaqueStipple` (`konal.so` 0x147dff0, 524 bytes): **Established.** Loads the shared 8-bit
  stipple state for an opaque fill: calls `cfbReduceRasterOp` for the foreground and for the
  background, and stores the raster op, foreground, background, plane mask, and/xor values and mode
  flag in `cfb8StippleAlu`, `cfb8StippleFg`, `cfb8StippleBg` and the related globals; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miPolyRectangle` (`konal.so` 0x147e4e0, 992 bytes): **Inferred.**
  PolyRectangle built from line segments: compares coordinates against 32767 and -32768 and issues
  the four edges of each rectangle through the GC's line routine (three sites); in konal.so its
  address is stored at 0x15128c8, and the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `sgiReleaseCapabilityUnsupported` (`konal.so` 0x147e8c0, 28 bytes): **Established.** Stub for the
  release-capability request of the capability extension: it returns the extension's error base plus
  1 (`nmbxErrorBase`), the extension's "unsupported" error code, and does nothing else; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `kon_loadCachedStipple` (`konal.so` 0x147e930, 1712 bytes): **Established.** Stipple-pattern
  download in the konal.so build. It sends `HP_X_STORESTIPPLE` as the number 317 at offset 0, then
  the slot, the size and the pattern words, each stored inline one word at a time (the code branches
  on a size of 32 to write 32 words in a straight run). kona.so calls `KonSeqData32_ip19` to
  `KonSeqData3_ip19` here; konal.so has no such helpers, so it is 1712 bytes against 612 and makes
  no calls.

- `cfb32SolidSpansXor` (`konal.so` 0x147f0f0, 808 bytes): **Established.** Solid
  FillSpans for 32-bit pixels using xor; calls `miFindMaxBand` and `miClipSpans`, then xors one word
  per pixel; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `miZeroArcSetup` (`konal.so` 0x147f420, 5308 bytes): **Established.** Computes the starting state
  of the zero-width arc stepper from the arc's angles and axes. Its code calls `sin` four times and
  `cos` twice, and compares angles with 5760, 11520,
  17280 and 23040 (the quarter-circle boundaries in 64ths of a degree); the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbMatchCommon` (`konal.so` 0x1480b70, 240 bytes): **Established.** Picks, from the GC's font and
  fill state, one of the four 8-bit text and rectangle operation tables `cfbTEOps`, `cfbTEOps1Rect`,
  `cfbNonTEOps` and `cfbNonTEOps1Rect`, returning null when no table fits; the code is instruction
  for instruction the same as the kona.so build once relocated addresses are ignored.

- `mfbPolyGlyphBltBlack` (`konal.so` 0x1480c60, 3144 bytes): **Established.**
  PolyGlyphBlt on a one-bit drawable that clears pixels where the glyph is set; a
  `QueryGlyphExtents` call, and the same table use as the white variant; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `miPointInRegion` (`konal.so` 0x14818b0, 356 bytes): **Established.** Leaf that tests whether a
  point lies in a region: it rejects on the extents first and then walks the box list at the data
  pointer (+0x8), a binary-style scan over the boxes; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `cfb32SegmentSS1RectXor` (`konal.so` 0x1481ae0, 1764 bytes): **Inferred.** Exclusive-or
  PolySegment on 32-bit pixels in one clip rectangle. It reads the screen private array at +0x1b4,
  stores inline and has no callees; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `nfbStereoFillSpans` (`konal.so` 0x14821d0, 2076 bytes): **Established.** Stereo
  FillSpans (saved entry +0x0), shifting the y of each point in the array in place for each eye in a
  loop unrolled four at a time; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `realAllocSpan` (`konal.so` 0x14829f0, 352 bytes): **Established.** Allocates a 1540-byte block of
  span records with `Xalloc`, chains the block onto the list head, and links the 12-byte span
  records in the block into a free list (six at a time unrolled); it returns without allocating when
  `Xalloc` fails; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `konWriteFBSubBlock` (`konal.so` 0x1482ed0, 3888 bytes): **Established.** Frame-buffer band write
  in the konal.so build: `HP_X_LOADPOS`, `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and
  `HP_X_PIX_FINISH`, with `KONA_DMAWRITE` (10001) for blocks over 4096 bytes and `perror` on
  failure, as in kona.so, but with the token words at offset 0 and the data words stored inline
  rather than through `KonSeqData32_ip19` to `KonSeqData3_ip19`: 3888 bytes against 2216.
  `kon_loadImpWordGC` is called at three sites.

- `miRegionEmpty` (`konal.so` 0x1486920, 104 bytes): **Established.** Resets a region to empty:
  frees the rectangle data with `Xfree` unless it is the shared block, then stores `miEmptyData`
  back at +0x8; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfb32FillBoxTileOdd` (`konal.so` 0x14874a0, 56 bytes): **Established.** Tiny wrapper: for the
  copy and xor-compatible cases it calls `cfb32FillBoxTile32sCopy` for the box, testing the raster
  op against 3 first; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `nfbSaveAreas` (`konal.so` 0x14874e0, 80 bytes): **Inferred.** Save-under hook: forwards to
  `nfbDoBitBltSP` with the saved-area record to copy the covered screen area into a pixmap (the
  arguments 3 and -1 select the copy and all planes); the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `mfbReduceRop` (`konal.so` 0x1487530, 404 bytes): **Established.** Collapses a raster op and a
  one-bit source pixel into one of the four simple results (clear, set, invert or leave alone,
  returned as 0, 15, 10 and
  5): a jump table over the sixteen raster ops, with one table for source bit set and one for clear.
  A leaf, and it is called from `cfbCopyPlane`, `mfbCopyPlane`, `mfbCreateGC`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbSegmentSS` (`konal.so` 0x14876d0, 3036 bytes): **Inferred.** The
  PolySegment sibling of the polyline above, for 8-bit solid segments. It tests each endpoint pair
  and hands horizontals to `cfbHorzS`, verticals to `cfbVertS`, diagonals to `cfbBresS`, and clipped
  segments to `miZeroClipLine`; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `konCopyGC` (`konal.so` 0x14882c0, 168 bytes): **Established.** Copy-GC wrapper: it puts back the
  original function table saved at +0xa4 of the GC private record over the context's own (gc +0x44),
  calls the original entry at +0x8, then saves the table and reinstalls the module's table from its
  read-only data. No token; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `nfbUnrealizeCursor` (`konal.so` 0x1488520, 204 bytes): **Established.** Releases a cursor's
  realised copy: frees up to three blocks with `Xfree` and reports a bad cursor with `ErrorF`; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `miPolyText16` (`konal.so` 0x1489500, 556 bytes): **Established.**
  PolyText for 16-bit fonts: calls `GetGlyphs` twice and dispatches on the item type (font change
  versus text) to the GC's PolyGlyphBlt; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `micomputeWAET` (`konal.so` 0x1489730, 124 bytes): **Inferred.** Leaf of the polygon scan
  converter; the name and the walk over an edge list identify it as the pass that sets the winding
  count of each active edge for the even-odd or non-zero fill rule. It calls nothing, and works only
  on the edge records its argument points at, and it is called from `miFillGeneralPoly`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbSegmentSD` (`konal.so` 0x1489ad0, 2560 bytes): **Inferred.** Dashed
  PolySegment for 8-bit drawables. It reduces the raster op with `cfbReduceRasterOp` (three times,
  once per case), steps the pattern with `miStepDash`, draws each dash by calling `cfbBresD`, and
  trims with `miZeroClipLine`; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `cfbPolyGlyphBlt8` (`konal.so` 0x148a4d0, 1780 bytes): **Inferred.**
  PolyGlyphBlt for 8-bit drawables: for each glyph it calls through the GC's stippled fill after
  intersecting the glyph box with the clip box, using the `endtab` table to mask the right edge; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `miMarkWindow` (`konal.so` 0x148ad80, 108 bytes): **Established.** Allocates a 24-byte per-window
  validation record with `XNFalloc` when the window has none; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `miComputeCompositeClip` (`konal.so` 0x148adf0, 748 bytes): **Established.** Recomputes a GC's
  composite clip from the drawable's clip and the client clip, using `NotClippedByChildren` when the
  GC subwindow mode is clip-by-children, and storing the result in the GC's private record found
  through `miGCPrivateIndex`; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `kon_loadPixmapGC` (`konal.so` 0x148b0e0, 3400 bytes): **Established.** Pixmap GC loader in the
  konal.so build: sends `HP_X_LOADGC` and `HP_X_PIX_SETUP` with the token numbers stored at offset 0
  before their payloads, uses the same `kon_pack*` and `kon_main*` shift tables, and prints format
  errors with `ErrorF`. 3400 bytes against 3384.

- `cfb8OpaqueStipple32FS` (`konal.so` 0x148be30, 4260 bytes): **Established.**
  FillSpans for an 8-bit opaque stipple of width 32. It loads the stipple state by calling
  `cfb8SetOpaqueStipple`, clips with `miClipSpans`, and writes four pixels per stipple nibble with
  the foreground and background; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `cfb32DoBitbltOr` (`konal.so` 0x148cff0, 2556 bytes): **Inferred.** The 32-bit rectangle copy that
  ors source into destination, the same size as the xor version, and it is called from
  `cfb32CopyArea`, `cfb32DoBitblt`; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `cfb8SegmentSS1RectCopy` (`konal.so` 0x148dd10, 2236 bytes): **Inferred.** Copy-mode 8-bit
  PolySegment in one clip rectangle. It uses the tables `cfbstarttab` and `cfbendtab` for edge
  words, steps inline and calls nothing; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `nfbReadDisplay` (`konal.so` 0x148e700, 5260 bytes): **Established.** Reads pixels from the screen
  for the read-display extension. It walks `WindowTable` and the window records, locates the cursor
  with `GetSpritePosition` and `GetSpriteCursor`, assembles the reply in an `Xalloc` buffer, sends
  it with `WriteToClient` and frees it with `Xfree`; it reports bad requests with `ErrorF`; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miMoveWindow` (`konal.so` 0x148fea0, 696 bytes): **Established.** Implements
  MoveWindow: updates the window size and border with `SetWinSize` and `SetBorderSize`, restacks
  with `MoveWindowInStack`, moves the children with `ResizeChildrenWinSize` and tells the server
  with `WindowsRestructured`; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `cfb8ClippedLineXor` (`konal.so` 0x1490160, 2712 bytes): **Established.** Exclusive-or line drawer
  for 8-bit segments that may leave the clip box. It calls `miZeroClipLine` at two sites, once for
  the segment and once for its end point; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `nfbStereoCopyPlane` (`konal.so` 0x1491110, 884 bytes): **Established.** Stereo
  CopyPlane (saved entry +0x10) with the same source-and-destination shifting as the CopyArea
  wrapper; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `kon_freeCachedStipple` (`konal.so` 0x1491960, 572 bytes): **Established.** Releases a stipple
  slot: clears the owner's slot index (private +0x60 set to -1) and unlinks the slot from the
  screen's list; it reports a corrupt list with `ErrorF`; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `cfb32PolyPoint` (`konal.so` 0x1491ba0, 1312 bytes): **Established.**
  PolyPoint for 32-bit drawables, structured like the 16-bit routine with word stores; it calls
  `ffs` on a mask word as well; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `konImageGlyphBlt` (`konal.so` 0x1492170, 2860 bytes): **Established.** General image-text glyph
  blit, konal.so build: the same token sequence as the kona.so routine (`HP_X_LOADPOS`,
  `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`, `HP_X_BOX`,
  `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE`, `HP_X_PIX_FINISH`), each framed by a token word at offset 0.
  It measures with `QueryGlyphExtents` and falls back to `nfbImageGlyphBlt`. 2860 bytes against
  2804.

- `mfbPixmapToRegion` (`konal.so` 0x1492cb0, 2944 bytes): **Established.** Converts a one-bit pixmap
  into a region of rectangles, one per run of set bits, reallocating the box list with `miRectAlloc`
  (six sites) and reporting an oversized transition list with `ErrorF`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbBresS` (`konal.so` 0x1493830, 816 bytes): **Inferred.** Bresenham stepper for solid 8-bit
  lines. Leaf, no callees; it branches on the raster-op code (3 or 6), advances an error term and
  moves the byte pointer a row or a pixel per step, and it is called from `cfbLineSS`,
  `cfbSegmentSS`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `nfbReadDisplayRegisterInfo` (`konal.so` 0x1493bd0, 168 bytes): **Established.** Reserves a screen
  private slot with `AllocateScreenPrivateIndex` and calls `ReadDisplayRegisterInfo` to fill the
  register description for the read-display extension; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `mfbZeroPolyArcSS` (`konal.so` 0x1493c80, 476 bytes): **Inferred.** Zero-width arc entry for
  one-bit drawables: skipped when the GC's plane word at +0x14 is zero, otherwise the same walk as
  the colour versions, sending arcs over 800 pixels to `miZeroPolyArc`, clipped or out-of-range ones
  to `miPolyArc` and wholly visible ones to the one-bit routine; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32BresS` (`konal.so` 0x1493e60, 868 bytes): **Inferred.** Solid Bresenham stepper for 32-bit
  pixels; leaf code that advances the destination in whole words, and it is called from
  `cfb32LineSS`, `cfb32SegmentSS`; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `rrmCopyWindow` (`konal.so` 0x14941d0, 120 bytes): **Inferred.** Copy-window wrapper: it calls the
  saved copy-window hook at +0x78 of the rrm screen record with the window and the old origin passed
  through, saving and restoring the word at screen +0xe0 around the call, and returns its result;
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `konPolyGlyphBltSolidTE3` (`konal.so` 0x1494250, 5716 bytes): **Established.** Solid poly-text
  glyph blit for -pixel fonts, konal.so build: `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`,
  `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`, each token stored as a word at offset 0
  ahead of its payload (kona.so addresses the first payload word through the token). It loads the GC
  with `kon_loadBitmapGC`, declines to `nfbSolidPolyGlyphBlt`, and prints through `ErrorF`.

- `konPolyGlyphBltSolidTE6` (`konal.so` 0x14958b0, 5912 bytes): **Established.** Solid poly-text
  glyph blit for -pixel fonts, konal.so build: `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`,
  `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`, each token stored as a word at offset 0
  ahead of its payload (kona.so addresses the first payload word through the token). It loads the GC
  with `kon_loadBitmapGC`, declines to `nfbSolidPolyGlyphBlt`, and prints through `ErrorF`.

- `konPolyGlyphBltSolidTE8` (`konal.so` 0x14970e0, 4756 bytes): **Established.** Solid poly-text
  glyph blit for -pixel fonts, konal.so build: `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`,
  `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`, each token stored as a word at offset 0
  ahead of its payload (kona.so addresses the first payload word through the token). It loads the GC
  with `kon_loadBitmapGC`, declines to `nfbSolidPolyGlyphBlt`, and prints through `ErrorF`.

- `konPolyFillRectStippledC` (`konal.so` 0x1498380, 5752 bytes): **Established.** Stippled-C
  PolyFillRect in the konal.so build: the same cache steps as kona.so (`kon_hitCachedStipple`,
  `kon_allocCachedStipple` and `kon_loadCachedStipple`, the last two at two sites each), then
  `HP_X_LOADSTIPPLE`, `HP_X_ROTATESTIPPLE`, `HP_X_LOADPOS`,
  `HP_X_LOADGC`, `HP_X_LOADCLIP` and the `HP_X_RECT6`,
  `HP_X_DATA2` to `HP_X_DATA10`, `HP_X_RECT`,
  `HP_X_BOX` run. Each token is written as a word at the FIFO pointer's offset 0 before its payload,
  and the rectangle words are stored inline, so it grows from 4996 to 5752 bytes.

- `cfbBresD` (`konal.so` 0x149ad60, 1412 bytes): **Established.** Bresenham stepper for dashed 8-bit
  lines. It reads the dash state through two pointer arguments (a byte offset through the second, a
  remaining length through the first, at +0x0), runs the line only up to the dash edge and returns
  so the caller can flip between foreground and background; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `mfbWhiteSolidFS` (`konal.so` 0x149c2a0, 932 bytes): **Established.**
  FillSpans with solid white on a one-bit drawable: `miFindMaxBand` and `miClipSpans`, then sets
  bits using `starttab`, `endtab` and `partmasks`; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `nfbCopyArea` (`konal.so` 0x149c650, 2692 bytes): **Established.**
  CopyArea in the generic layer. It decides between a host copy and the window-to-window path: calls
  `nfbDoBitBltSS` (three sites) for screen-to-screen, `nfbDoBitBltSP` for screen-to-pixmap,
  `cfb16CopyArea`, `cfb32CopyArea` or `cfbCopyArea` for pixmaps,
  `miCopyArea` as a fallback, `NotClippedByChildren` for the clip and `miHandleExposures` for the
  exposures; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfb32FillRectSolidCopy` (`konal.so` 0x149d0e0, 764 bytes): **Established.** Solid copy-mode
  rectangle fill for 32-bit pixels. The screen private record supplies the frame buffer base and
  stride (at +0x1c and +0x20) and the loop stores one word per pixel, with no edge masks needed; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `cfb16MatchCommon` (`konal.so` 0x149d930, 216 bytes): **Established.** The 16-bit version of the
  table chooser: selects among `cfb16TEOps`, `cfb16TEOps1Rect`, `cfb16NonTEOps` and
  `cfb16NonTEOps1Rect`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `mfbXRotatePixmap` (`konal.so` 0x149da10, 348 bytes): **Established.** Rotates a one-bit pixmap
  horizontally; it reports an unexpected width with `ErrorF` and uses the table `endtab` for the row
  mask; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfbPushPixels8` (`konal.so` 0x149dc70, 3956 bytes): **Inferred.**
  PushPixels for 8-bit drawables: expands a one-bit mask into pixels using `cfb8BitLenMasks`, or
  passes the request to `mfbPushPixels` when the GC does not fit; there is one indirect call; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `cfb16PolyPoint` (`konal.so` 0x149ebf0, 1312 bytes): **Established.**
  PolyPoint on 16-bit drawables: plots each point inside the clip as a halfword store under the
  raster op, calling `ffs` on a mask word, in the same loop shape the 8-bit routine uses; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16FillBoxTile32sCopy` (`konal.so` 0x149f110, 2476 bytes): **Inferred.** The same box fill for
  16-bit pixels: the tile row is held as one word of two pixels and replicated across the box, and
  it is called from `cfb16FillBoxTileOdd`, `cfb16FillRectTileOdd`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `kon_loadOpaqueBitmapGC` (`konal.so` 0x149fac0, 280 bytes): **Established.** Opaque-bitmap GC
  loader in the konal.so build: the same thirteen `HP_X_LOADGC` words with the background colour in
  the foreground slot (+0x2c and +0x30), preceded by the token word at offset 0 rather than
  addressed through the token. No calls; 280 bytes against 272.

- `cfb16FillSpanTile32sCopy` (`konal.so` 0x149fbe0, 2028 bytes): **Inferred.** Span fill with a
  32-bit-wide tile for 16-bit pixels, copy mode. A leaf taking the tile row for each span's y and
  writing it with the tables `cfb16starttab` and `cfb16endtab` at the ends; the code is instruction
  for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32BresD` (`konal.so` 0x14a27f0, 1428 bytes): **Inferred.** Dashed Bresenham stepper for 32-bit
  pixels. It is built like the 8-bit dashed stepper, keeping the dash position and length in its
  pointer arguments, and has no callees, and it is called from `cfb32LineSD`, `cfb32SegmentSD`; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `mfbWhiteStippleFS` (`konal.so` 0x14a2f70, 1252 bytes): **Established.**
  FillSpans with a white stipple on one-bit drawables; clipped by `miClipSpans` and merged into the
  destination word by word; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `nfbTiledFS` (`konal.so` 0x14a3900, 332 bytes): **Inferred.**
  FillSpans with a tile: loops over the spans, calling the tiled fill routine named in the window's
  private record for each; in konal.so its address is stored at 0x151433c, and the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16FillSpanTileOddCopy` (`konal.so` 0x14a3aa0, 2628 bytes): **Inferred.** Span fill with an
  odd-width tile for 16-bit pixels, copy mode; a leaf that tracks the tile column across the span
  with partial first and last words, and it is called from `cfb16UnnaturalTileFS`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `mfbCopyArea` (`konal.so` 0x14a44f0, 2136 bytes): **Inferred.**
  CopyArea for one-bit drawables. It selects `mfbDoBitbltCopy`, `mfbDoBitbltXor`,
  `mfbDoBitbltOr`, `mfbDoBitbltCopyInverted` or `mfbDoBitbltGeneral` by raster op, makes its calls
  through the chosen routine (fifteen indirect calls in all), calls `NotClippedByChildren`, and ends
  with `miHandleExposures`; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `kon_unloadStipple` (`konal.so` 0x14a4d50, 60 bytes): **Established.** Invalidates the loaded
  stipple in the konal.so build: stores the number 316 (`HP_X_LOADSTIPPLE`) and then -1 at offset 0
  of the FIFO pointer taken from the screen private, and sets the GC's slot index at +0x60 to -1.
  kona.so does it with one store to the token address. 60 bytes against 52.

- `cfbPolyPoint` (`konal.so` 0x14a51d0, 1244 bytes): **Established.**
  PolyPoint for 8-bit drawables: for each point inside the composite clip it stores the pixel under
  the raster op, and it calls `ffs` to locate set bits in a mask word while it merges; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `kon_allocCachedStipple` (`konal.so` 0x14a5730, 204 bytes): **Established.** Takes the next slot
  of the stipple cache from the screen record (+0x68 slot pointer, +0x6c list head), calling
  `kon_freeCachedStipple` for the slot's old owner when it has one, and records the new owner GC in
  the slot; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfbFillSpanTileOddCopy` (`konal.so` 0x14a5c10, 2612 bytes): **Inferred.** Span fill with an
  odd-width tile for 8-bit pixels, copy mode; the 8-bit counterpart of the 16-bit routine, using
  `cfbstartpartial` and `cfbendtab` at its edges; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `cfbPolyFillRect` (`konal.so` 0x14a6650, 2400 bytes): **Inferred.**
  PolyFillRect for 8-bit drawables. It looks at the GC's fill style and rop and calls one of the
  8-bit routines named in its table (`cfbFillRectSolidGeneral`, `cfbFillRectSolidCopy`,
  `cfbFillRectTileOdd`, the transparent and unnatural stipple fills) through a pointer, calling
  `miPolyFillRect` for the cases it does not handle; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `miFillWideEllipse` (`konal.so` 0x14a6fb0, 1124 bytes): **Established.** Fills a wide-line ellipse
  by looping over rows and emitting spans, and frees its temporary span array with `Xfree`; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbMarkUnrealizedWindow` (`konal.so` 0x14a7420, 292 bytes): **Inferred.** Marks a window when it
  is unrealised: it makes three indirect calls into the screen's mark hooks to flag the window and
  its parents; in konal.so its address is stored at 0x1512804, and the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `miDestroyGC` (`konal.so` 0x14a7550, 160 bytes): **Inferred.** Destroys a GC: frees its client
  clip and composite clip through the screen hooks, and calls `miDestroyGCOps` twice; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16CopyPixmap` (`konal.so` 0x14a7640, 148 bytes): **Established.** Duplicates a 16-bit pixmap:
  allocates through a function pointer, then copies the pixel data with `memmove`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32ZeroPolyArcSSGeneral` (`konal.so` 0x14a76e0, 468 bytes): **Inferred.** Zero-width arc entry
  for 32-bit pixels under any raster op: the arc walk of the 16-bit entry, sending big arcs to
  `miZeroPolyArc`, clipped or out-of-range ones to `miPolyArc` and wholly visible ones to the 32-bit
  routine; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfbCopyPlane1to8` (`konal.so` 0x14a78c0, 3568 bytes): **Inferred.** Expands a one-bit-deep source
  rectangle into 8-bit pixels: each source bit selects the foreground or background value kept in
  `cfb8StippleXor` and `cfb8StippleAnd`, merged by the rop in `cfb8StippleRRop`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miGetImage` (`konal.so` 0x14a86b0, 768 bytes): **Established.** Default
  GetImage built on CopyArea: it gets a scratch GC with `GetScratchGC`, adjusts it with
  `DoChangeGC`, validates with `ValidateGC`, copies into a temporary pixmap and frees the scratch GC
  with `FreeScratchGC`. It also calls `ffs` and the local routine at 0x14318b0; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbDoBitblt` (`konal.so` 0x14a89b0, 136 bytes): **Established.** Chooser that picks the raster
  op's blit routine for an 8-bit blit: it tests the op against 3, 6 and 7 and the plane mask against
  255, and sends everything else to `cfbDoBitbltGeneral`; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `cfb8LineSS1RectCopy` (`konal.so` 0x14a8e30, 2088 bytes): **Established.** Copy-mode 8-bit
  polyline in one clip rectangle. It reads the zero-line screen index, takes the root pixmap pointer
  from screen +0x74 for a window and the clip rectangle from the composite clip in the GC private
  data, and steps every segment inline with no callees; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `miInverse` (`konal.so` 0x14a9660, 356 bytes): **Established.** Computes the inverse of a region
  inside a bounding box: it subtracts the region from the box, frees the temporary with `Xfree` and
  recomputes the extents using `miSetExtents`; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `nfbStereoPolyPoint` (`konal.so` 0x14a97d0, 452 bytes): **Established.** Stereo
  PolyPoint: the saved routine is entry +0x14 of the operations vector, called once per eye with the
  point list moved by the eye offset and moved back; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `nfbStereoPolyRectangle` (`konal.so` 0x14a99a0, 716 bytes): **Established.** Stereo
  PolyRectangle, saved entry +0x20, with the same copied rectangle array (`Xalloc`, `Xfree`) as the
  segment wrapper; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `mfbStippleWhiteArea` (`konal.so` 0x14aa180, 3524 bytes): **Established.** Sets bits through a
  stipple over a list of boxes; a leaf that rotates the stipple row for each scanline and merges it
  with the edge masks, and it is called from `mfbValidateGC`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbDoBitbltXor` (`konal.so` 0x14aaf70, 4596 bytes): **Inferred.** The 8-bit rectangle copy for
  the xor raster op, a leaf that merges source into destination with xor; its word shifting uses
  `cfbstartpartial` and `cfbendtab`; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `nfbPositionWindow` (`konal.so` 0x14ac170, 8 bytes): **Established.** Hook that does nothing and
  returns 1 (TRUE); the layer needs no work when a window moves; in konal.so its address is stored
  at 0x15126c4, and the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb32AllocatePrivates` (`konal.so` 0x14ac180, 352 bytes): **Established.** Reserves the
  per-window and per-GC private slots for the 32-bit frame-buffer layer:
  `AllocateScreenPrivateIndex`, `AllocateGCPrivate` and `AllocateWindowPrivate` for the 32-bit
  indexes, and `mfbAllocatePrivates` for the monochrome layer; it also records `miCopyPlane` as the
  CopyPlane punt routine `cfbPuntCopyPlane`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `kon_loadClearGC` (`konal.so` 0x14ac2e0, 240 bytes): **Established.** Clear-state loader in the
  konal.so build: sends `HP_X_LOADCLIP` as one whole-drawable rectangle and `HP_X_LOADPOS` with the
  drawable's origin and size, each token as a word at offset 0 and then the payload, and calls
  `kon_loadGeomGC` with the copy raster op. 240 bytes against 224.

- `mfbCopyPixmap` (`konal.so` 0x14ac3d0, 148 bytes): **Inferred.** Duplicates a one-bit pixmap: it
  calls the screen's pixmap creation hook, then copies the data with `memmove`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32GetSpans` (`konal.so` 0x14aca90, 708 bytes): **Established.**
  GetSpans for 32-bit drawables: `FatalError` for an unexpected depth, `mfbGetSpans` for one-bit
  drawables, and a word-by-word copy for the rest; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `konTilePatterns` (`konal.so` 0x14acd60, 3596 bytes): **Established.** Builds the replicated
  pattern words for a tile: allocates the buffer with `Xalloc`, replicates rows to fill 32 words
  when the tile height is 1, 2, 4,
  8 or 16 by repeated `bcopy`, and reports an unsupported size with
  `ErrorF`; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `konStoreColors` (`konal.so` 0x14adb70, 3156 bytes): **Established.** Colour-map store in the
  konal.so build. It sends `HP_X_LOADCMAP` as a token word at offset 0 followed by the map address,
  the count and the colour words, with every word stored inline; kona.so bulk-copies through
  `KonSeqData32_ip19` and `KonSeqData4_ip19`, which konal.so lacks, so this is 3156 bytes against
  2468. `ErrorF` reports failures.

- `mfbImageGlyphBltBlack` (`konal.so` 0x14ae7d0, 3248 bytes): **Established.**
  ImageGlyphBlt with black foreground on one-bit drawables: it measures with `QueryGlyphExtents`,
  paints the background box with `mfbPolyFillRect` and then writes glyphs through
  `mfbSolidBlackArea` or `mfbSolidWhiteArea`; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `miPolyFillRect` (`konal.so` 0x14af6a0, 2344 bytes): **Inferred.**
  PolyFillRect on top of the GC's FillSpans: clips each rectangle to the composite clip and emits
  one span row per scanline by an indirect call, and it is called from `cfb16PolyFillRect`,
  `cfb16ValidateGC`, `cfb32PolyFillRect`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `nfbReduceGC` (`konal.so` 0x14affd0, 116 bytes): **Established.** Copies the context's foreground
  (+0x18), background (+0x1c), plane mask (+0x14), raster op byte (+0x5) and fill-style bits (+0x10)
  twice into the private record, at +0x28 to +0x4c and again at +0x40 to +0x54 for the second path;
  a leaf that calls nothing; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `mfbPadPixmap` (`konal.so` 0x14b0050, 536 bytes): **Established.** Replicates a one-bit tile
  across the 32 bits of a row when the width divides 32, using `endtab` for the row masks; a leaf;
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `nfbDestroyWindow` (`konal.so` 0x14b03b0, 212 bytes): **Inferred.** Releases the window's record:
  it calls the screen hook at +0x160 for each of the stored colour ids in a loop, then frees two
  blocks with `Xfree`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `miWindowExposures` (`konal.so` 0x14b0490, 880 bytes): **Established.** Computes the exposed
  region of a window and sends it as Expose events with `miSendExposures`, choosing among several
  output paths; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `mfbTEGlyphBltBlack` (`konal.so` 0x14b08e0, 2256 bytes): **Inferred.** Terminal-emulator-font text
  on a one-bit drawable in black: glyphs have a fixed width, so each row is assembled with shifts
  and masks from `starttab` and `partmasks` and stored word by word. It makes one indirect call; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `cfbFillPoly1RectCopy` (`konal.so` 0x14b1360, 2580 bytes): **Established.** Polygon fill for 8-bit
  pixels in one clip rectangle in copy mode. It uses `miFillPolygon` at two call sites for shapes
  that need the general scan converter; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `nfbCursorLimits` (`konal.so` 0x14b1d80, 108 bytes): **Established.** Clamps the cursor's
  confinement box: it limits the new box (argument 4) to the screen extents at +0x8 and +0xa,
  writing the result halfwords to the output box; a leaf; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `cfb32ClippedLineXor` (`konal.so` 0x14b1df0, 2788 bytes): **Established.** Exclusive-or 32-bit
  line for segments that may leave the clip box. It calls `miZeroClipLine` at two sites, then steps
  the clipped line; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb32SetSpans` (`konal.so` 0x14b28e0, 1060 bytes): **Established.**
  SetSpans for 32-bit drawables, with the scanline copy done inline rather than by a callee, using
  `PixmapWidthPaddingInfo` for the stride; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `nfbStereoPolyArc` (`konal.so` 0x14b2d10, 584 bytes): **Established.** Arc-drawing wrapper for
  stereo windows, saved entry +0x24: it copies the arc array into an `Xalloc` block and frees that
  block with `Xfree` once both eyes are drawn; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `cfb32SolidSpansCopy` (`konal.so` 0x14b31d0, 596 bytes): **Established.** Solid
  FillSpans for 32-bit pixels in copy mode: after `miClipSpans` each span is stored as a run of
  words; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfb32SetScanline` (`konal.so` 0x14b3b20, 476 bytes): **Established.** Copies one row of source
  pixels into a 32-bit destination scanline and merges them with the GC raster op through
  `mergeRopBits`; a leaf; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb32FillSpanTile32sCopy` (`konal.so` 0x14b3d00, 1068 bytes): **Inferred.** Span fill with a
  one-word tile row for 32-bit pixels, copy mode; leaf, reading the screen private data at +0x1b4;
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `nfbStereoPolyFillRect` (`konal.so` 0x14b41a0, 716 bytes): **Established.** Stereo
  PolyFillRect, saved entry +0x2c, using a temporary rectangle copy from `Xalloc`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbRestoreAreas` (`konal.so` 0x14b4520, 292 bytes): **Inferred.** Save-under restore hook: it
  calls `nfbDoBitBltPS` at two sites to copy the saved pixmap back to the screen, one per box; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `nfbStippledFillRects` (`konal.so` 0x14b4650, 936 bytes): **Inferred.**
  FillRects with a stipple: four indirect calls into the stippled-area routine of the window record,
  one per fill path; in konal.so its address is stored at 0x1514350, and the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32FillSpanTileOddCopy` (`konal.so` 0x14b4a00, 1224 bytes): **Inferred.** Span fill with an
  odd-width tile for 32-bit pixels, copy mode, using the end mask table `cfb32endpartial`; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `konTileRects` (`konal.so` 0x14b4ed0, 2636 bytes): **Inferred.** Tiles a list of rectangles by
  copying one prepared tile: it reads the box lists through the screen's region hooks and calls
  `nfbReplicateArea` to grow the tile across each rectangle by doubling; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `konValidateVisual` (`konal.so` 0x14b6d50, 4252 bytes): **Inferred.** Re-validates a window's
  visual state after a change in clip or buffer: it works through the screen's three region slots,
  calling the screen hooks at +0x154, +0x164, +0x168, +0x16c, +0x178, +0x188, +0x190 and +0x194 on
  them, and calls the local routines at 0x14c9410 (ten sites) and 0x143a310 (five sites). Roles are
  read from the call structure; neither routine was read; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `cfb16SolidSpansGeneral` (`konal.so` 0x14b7f20, 1304 bytes): **Established.** Solid
  FillSpans for 16-bit pixels under any raster op; clipped with `miClipSpans` after `miFindMaxBand`,
  each span merged through the and/xor pair from the GC's private data; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `konReadFBBlock` (`konal.so` 0x14b8580, 1924 bytes): **Established.** Frame-buffer read-back in
  the konal.so build, and the largest behavioural difference. It sends `HP_X_LOADPOS`,
  `HP_X_PIX_SETUP` and `HP_X_PIX_READ` as token numbers (298,
  310 and the read token) stored at offset 0 followed by the payload, and it does not send
  `HP_WG_FLUSH_1`: where kona.so stores 0xdeadbeef at the flush token's address after the read
  request, this build loads a word through the pointer at +0x10 of the screen private to drain the
  write path. Its wait loop is laid out differently from kona.so's (both call `sginap` at two sites
  and `_sysconf` once), it still checks the pipe with `KONA_CHECK_PIPE` (10017), and it takes the
  read-back area from +0xc of the private record where kona.so uses +0x10. It uses `KONA_DMAREAD`
  (10000) for large blocks. 1924 bytes against 1900.

- `kon_loadImgBitmapGC` (`konal.so` 0x14b8d10, 340 bytes): **Established.** Image-bitmap GC loader
  in the konal.so build: sends the `HP_X_LOADGC` words with the config word's low five bits cleared
  and the plane mask masked to 24 bits, now preceded by the token word at offset 0. No calls; 340
  bytes against 332.

- `miCopyGC` (`konal.so` 0x14b9360, 8 bytes): **Inferred.** Empty hook: returns at once without
  touching either context; in konal.so its address is stored at 0x1515e30, and the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `kon_loadGeomGC` (`konal.so` 0x14b9960, 3460 bytes): **Established.** Geometry loader in the
  konal.so build; the one function whose code is nearly identical to its kona.so counterpart (two
  instructions longer: 3460 bytes against 3452). It sends `HP_X_LOADGC` with the token number stored
  at offset 0 first, and prints its debug text with `ErrorF` at four sites.

- `cfb32DoBitbltGeneral` (`konal.so` 0x14ba6f0, 3480 bytes): **Inferred.** The 32-bit rectangle copy
  for any raster op, using `mergeRopBits` for the per-word merge; shorter than the 8- and 16-bit
  versions because a pixel is a whole word; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `nfbStereoPushPixels` (`konal.so` 0x14bb490, 500 bytes): **Established.** Stereo
  PushPixels, saved entry +0x4c, called once per eye with the drawable's y moved by the eye offset;
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `mfbImageGlyphBltWhite` (`konal.so` 0x14bb690, 2408 bytes): **Established.**
  ImageGlyphBlt with white foreground on one-bit drawables: `QueryGlyphExtents`, a background fill
  with `mfbPolyFillRect`, and glyph rows via `mfbSolidWhiteArea`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `mfbDoBitblt` (`konal.so` 0x14bc000, 164 bytes): **Established.** Chooser used by the one-bit
  copy: it compares the raster op with 3, 6, 7 and
  12 and calls `mfbDoBitbltCopy` or `mfbDoBitbltGeneral` accordingly; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbInitRootWindow` (`konal.so` 0x14bc730, 2000 bytes): **Established.** Sets up the root window:
  it looks up background and border colours with `OsLookupColor` and `AllocColor`, makes a scratch
  GC with `GetScratchGC`, creates the default colormap with `CreateColormap`, sets the window
  properties with `ChangeWindowProperty` (five sites), interns atoms with `MakeAtom`, checks
  capabilities with `nmbxLookupCapability`, and ends the server with `FatalError` or `exit` on
  failure; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfb32DestroyPixmap` (`konal.so` 0x14bd4e0, 88 bytes): **Established.** The 32-bit pixmap release:
  reference count test, then `Xfree` of the data and the record; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16ZeroPolyArcSSCopy` (`konal.so` 0x14bd540, 468 bytes): **Inferred.** Zero-width arc entry for
  16-bit copy mode with the same walk of 12-byte arc records: over 800 pixels to `miZeroPolyArc`, an
  out-of-range or partly clipped box to `miPolyArc`, a wholly visible box to the 16-bit copy fast
  routine; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `miSlideAndSizeWindow` (`konal.so` 0x14bd720, 3044 bytes): **Established.** The combined move and
  resize used by ConfigureWindow. It unmaps affected windows with `UnmapWindow` (six sites), applies
  gravity with `GravityTranslate` (two sites), restacks with `MoveWindowInStack` and resizes
  children by `TraverseTree`, ending with `WindowsRestructured`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbSolidFS` (`konal.so` 0x14be520, 288 bytes): **Inferred.**
  FillSpans with a solid colour: it loops over the spans and for each calls an indirect routine with
  the private record's solid-fill word at +0x40 and rop byte at +0x48; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbGenericScreenInit` (`konal.so` 0x14be820, 3104 bytes): **Established.** Screen initialisation
  for the generic frame-buffer layer. It allocates the monochrome and colour layers' private slots
  with `mfbAllocatePrivates`, `cfbAllocatePrivates`, `cfb16AllocatePrivates` and
  `cfb32AllocatePrivates`, allocates window and GC privates, reads a configuration value with
  `atof`, calls `nmbxScreenInit`, creates atoms with `MakeAtom`, initialises backing store with
  `miInitializeBackingStore` and registers shared-memory functions with `ShmRegisterFuncs`; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miFreeSpanGroup` (`konal.so` 0x14bf440, 60 bytes): **Established.** Frees a span group's span
  array with `Xfree`. Called from `miCleanupSpanData`, and it is called from `miCleanupSpanData`;
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `konDestroyHyperpipeConfig` (`konal.so` 0x14bf480, 164 bytes): **Established.** Tears down a
  hyperpipe configuration: it finds the screen in `screenInfo` from the screen number and sends
  `KONA_NCLOPS_DESTROY_CONFIG` (10024) with the configuration id through the driver connection at
  +0x64 of the screen's private record, returning 1 if the ioctl failed and 0 if it succeeded; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `miAppendSpans` (`konal.so` 0x14bf530, 368 bytes): **Established.** Appends one span group to
  another, calling `miSubtractSpans` to drop overlap and `Xrealloc` to grow the array; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb8LineSS1Rect` (`konal.so` 0x14bffd0, 728 bytes): **Inferred.** Chooser for 8-bit polylines
  inside one clip rectangle. It tests the raster op and calls the copy, previous-point copy,
  exclusive-or or general routine through a pointer; the clipped variants `cfb8ClippedLineCopy` and
  `cfb8ClippedLineXor` stand behind it; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfb16DoBitbltGeneral` (`konal.so` 0x14c02b0, 6304 bytes): **Inferred.** The 16-bit rectangle copy
  for any raster op and plane mask. A leaf with direction selection and word shifting through the
  16-bit end table, and it is called from `cfb16CopyArea`, `cfb16DoBitblt`; the code is instruction
  for instruction the same as the kona.so build once relocated addresses are ignored.

- `miPolySegment` (`konal.so` 0x14c1b50, 152 bytes): **Established.**
  PolySegment built on the GC's PolyLine routine: it calls it once per segment with two points, and
  it is called from `cfb16ValidateGC`, `cfb32ValidateGC`, `cfbValidateGC`; the code is instruction
  for instruction the same as the kona.so build once relocated addresses are ignored.

- `kon_parseGC` (`konal.so` 0x14c1bf0, 7692 bytes): **Established.** Converts the X graphics-context
  fields into the module's private record. It clears the record with `bzero`, then derives the
  raster op, plane mask, fill and pixel format words (the destination packing tables
  `kon_pack32dest`, `kon_pack16dest`, `kon_pack8dest` and the shift tables
  `kon_mainL8shift`, `kon_mainL12shift`, `kon_mainL16shift`). It sends nothing; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `kon_GCOpsCacheReset` (`konal.so` 0x14c3a70, 184 bytes): **Established.** Frees every cached
  operation vector: it loops over the 2048 entries of the table, calls `Xfree` on each non-null
  entry and zeroes it; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `miRectsToRegion` (`konal.so` 0x14c3b30, 848 bytes): **Established.** Builds a region from a
  rectangle list: creates the region with `miRegionCreate`, allocates its box array with `Xalloc`,
  normalises it with `miRegionValidate`, and sets extents with `miSetExtents` at two sites; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16LineSS1RectXor` (`konal.so` 0x14c3e80, 2372 bytes): **Inferred.** Exclusive-or polyline for
  16-bit pixels in one clip rectangle. It finds the 16-bit private data through screen +0x1b4 and
  steps inline; there are no callees; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfb32ReduceRasterOp` (`konal.so` 0x14c47d0, 368 bytes): **Established.** The same raster-op
  reduction for 32-bit pixels, a leaf of 368 bytes with the same switch over 3, 6, 7 and
  15, and it is called from `cfb32LineSD`, `cfb32SegmentSD`, `cfb32ValidateGC`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32FillBoxTile32sGeneral` (`konal.so` 0x14c4ad0, 1160 bytes): **Inferred.** Box fill for 32-bit
  pixels with a one-word tile row, any raster op; the pixel is merged with `mergeRopBits`; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb8SegmentSS1RectXor` (`konal.so` 0x14c4f60, 2192 bytes): **Inferred.** Exclusive-or 8-bit
  PolySegment in one clip rectangle; same layout as the copy routine but each store merges with an
  xor value. No callees, and it is called from `cfb8SegmentSS1Rect`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbCopyImagePlane` (`konal.so` 0x14c57f0, 56 bytes): **Established.** Wrapper for
  CopyArea of image planes: when the plane argument is -1 it calls `cfbCopyPlane8to1` to pack 8-bit
  pixels down to one-bit; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfbDestroyPixmap` (`konal.so` 0x14c5d30, 88 bytes): **Established.** Frees an 8-bit pixmap:
  decrements the reference count at +0x4 of the pixmap and, when it reaches zero, calls `Xfree` on
  the data and the pixmap record; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `nfbFixupDepths` (`konal.so` 0x14c5dd0, 532 bytes): **Established.** Counts the visuals of each
  depth in a visual list into a 16-entry table of words on its stack, and rewrites the depth records
  to match; a leaf. It steps through 36-byte visual records reading the halfword at +0xa of each,
  and counts them into a 16-word table on its own stack; nothing in the module's code or data points
  at it; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `mfbStippleBlackArea` (`konal.so` 0x14c65d0, 3548 bytes): **Established.** Clears bits through a
  stipple over a list of boxes; a leaf with the same loop as the white one, and it is called from
  `mfbValidateGC`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `konBresD` (`konal.so` 0x14c7430, 8160 bytes): **Established.** Point emitter for dashed Bresenham
  lines in the konal.so build: the foreground tokens `HP_X_POINT24`, `HP_X_POINT6`, `HP_X_POINT` and
  the background tokens `HP_X_BGPOINT24`, `HP_X_BGPOINT6`, `HP_X_BGPOINT` with the
  `HP_X_DATA1` to `HP_X_DATA6` remainders, framed as a token word then inline points at offset 0.
  With no `KonSeqData*_ip19` helper to call, it is 8160 bytes against 5320 and has no callees at
  all.

- `konValidateGC` (`konal.so` 0x14c9a00, 168 bytes): **Established.** Validate-GC wrapper with the
  same save and restore as `konCopyGC`, calling the original entry at +0x0 with the original table
  installed; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `rrmWorkProc` (`konal.so` 0x14ca3f0, 124 bytes): **Inferred.** Work procedure that spaces out a
  deferred task: it reads the time with `GetTimeInMillis`, returns 0 if less than 50 milliseconds
  have passed since the last run, and otherwise runs the routine at 0x13c7cc0 and records the time
  and its result; it returns 1 when that routine reports no work left; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbHorzS` (`konal.so` 0x14ca470, 1776 bytes): **Established.** Leaf that draws a horizontal run
  of 8-bit pixels as whole words plus partial ends. The end masks come from the table `cfbstarttab`
  (offset by the low two bits of the start) and `cfbendpartial`; raster-op codes 3 and 6 branch to
  separate loops; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfbCopyArea` (`konal.so` 0x14cab60, 164 bytes): **Established.**
  CopyArea for 8-bit drawables, a thin selector. It reads the raster op from the GC byte at +0x5 and
  the plane mask from the word at +0x14: if the mask is not all ones, or the op is not copy, xor or
  or, it passes `cfbDoBitbltGeneral` as the inner routine; otherwise `cfbDoBitbltCopy`,
  `cfbDoBitbltXor` or `cfbDoBitbltOr`. It then calls `cfbBitBlt` with that routine; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbValidateGC` (`konal.so` 0x14cac10, 3128 bytes): **Established.**
  ValidateGC for the 8-bit layer. It rebuilds the composite clip with `miComputeCompositeClip`,
  reduces the raster op with `cfbReduceRasterOp`, picks an operation table with `cfbMatchCommon`,
  rotates or pads tile and stipple pixmaps with `cfbCopyRotatePixmap`, `mfbCopyRotatePixmap` and
  `cfbPadPixmap`, and replaces the GC's operation vector via `miDestroyGCOps` and `miCreateGCOps`.
  An unsupported state ends in `FatalError`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfb8SegmentSS1Rect` (`konal.so` 0x14cb850, 320 bytes): **Established.** Chooser for 8-bit
  PolySegment in one clip rectangle. It tests the GC's raster op and calls the copy, xor or general
  routine via a pointer, with `cfb8ClippedLineGeneral` as the fallback for clipped segments; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `rrmValidateTree` (`konal.so` 0x14cba60, 180 bytes): **Inferred.** Hook for
  ValidateTree: if the window has no rrm private record yet it calls the saved ValidateTree hook
  (offset +0x7c of the rrm screen record) with the window and the tree, then reinstalls itself at
  screen +0xcc. When the window already has a record it calls a local routine through the global
  offset table instead; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb16ZeroPolyArcSSGeneral` (`konal.so` 0x14cbb20, 468 bytes): **Inferred.** Zero-width arc entry
  for 16-bit pixels under any raster op: the same 800-pixel size test, the 32767 bound and the clip
  test at screen +0x17c, with `miZeroPolyArc` for big arcs and `miPolyArc` for arcs that cross the
  clip; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfbDoBitbltOr` (`konal.so` 0x14cbd00, 4596 bytes): **Inferred.** The 8-bit rectangle copy for the
  or raster op, the same code shape and size as the xor copy with the merge step replaced, and it is
  called from `cfbCopyArea`, `cfbDoBitblt`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfb32FillRectTile32General` (`konal.so` 0x14ccf10, 1376 bytes): **Inferred.** Tiled fill for
  32-bit pixels with a tile of 32 pixels in width and any raster op; a leaf using `mergeRopBits`,
  shorter than its 8- and 16-bit siblings because it needs no edge masks; the code is instruction
  for instruction the same as the kona.so build once relocated addresses are ignored.

- `konCopyRect` (`konal.so` 0x14cd900, 736 bytes): **Established.** Rectangle copy in the konal.so
  build: `kon_loadPixmapGC`, then `HP_X_LOADPOS`, `HP_X_LOADCLIP` and
  `HP_X_PIX_COPY`, each sent as its token number at offset 0 followed by the payload (source and
  destination x and y for the copy); `ErrorF` at two sites. 736 bytes against 712.

- `konBresS` (`konal.so` 0x14cddd0, 3704 bytes): **Established.** Point emitter for solid Bresenham
  lines in the konal.so build. It sends `HP_X_POINT24`, `HP_X_POINT6`, `HP_X_DATA1` to
  `HP_X_DATA6` and `HP_X_POINT`, each as a token word at the FIFO pointer's offset 0 and then the
  points, all stored inline: there is no call to `KonSeqData23_ip19` or its siblings, so the
  function is 3704 bytes against 2288.

- `cfb16LineSS1RectGeneral` (`konal.so` 0x14cec50, 2460 bytes): **Inferred.** Polyline for 16-bit
  pixels with any raster op in one clip rectangle; leaf, with the GC's and/xor pair applied per
  pixel, and it is called from `cfb16LineSS1Rect`; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `nfbVert` (`konal.so` 0x14cf5f0, 132 bytes): **Established.** Wrapper for a vertical one-pixel
  run: when the two y coordinates in the box argument differ it widens the box by one row and calls
  the fill routine passed in a register with a count of 1, and it is called from `nfbSolidZeroSeg`;
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `cfbFillBoxTileOddCopy` (`konal.so` 0x14cfc80, 2792 bytes): **Inferred.** Odd-width tile fill of a
  box in 8-bit pixels, copy mode: no raster-op merging, tile rows copied with partial first and last
  words from `cfbendpartial` and `cfbendtab`; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `cfb16GetSpans` (`konal.so` 0x14d0770, 1684 bytes): **Established.** Reads spans from a 16-bit
  drawable. It ends in `FatalError` for a depth it cannot serve, hands one-bit drawables to
  `mfbGetSpans`, and uses the 16-bit start and end tables to mask the ragged ends of each span; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `cfbUnnaturalStippleFS` (`konal.so` 0x14d0fa0, 5252 bytes): **Established.**
  FillSpans for an 8-bit stipple whose width is not a divisor of 32. It first sets up the stipple
  state with `cfb8SetOpaqueStipple` or `cfb8SetStipple` (the choice depends on opaque or transparent
  fill), clips with `miClipSpans`, and reports an impossible fill style with `FatalError`; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miGetLayerWindow` (`konal.so` 0x14d26e0, 8 bytes): **Established.** Leaf that returns the word
  stored at +0x24 of the window record; the module has no layered windows, so the lookup is a field
  read with no calls; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `miModifyPixmapHeader` (`konal.so` 0x14d33b0, 124 bytes): **Established.** Updates a pixmap's
  width, height, depth, bits per pixel and data pointer fields in place and bumps
  `globalSerialNumber`; no calls; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `cfb8LineSS1RectPreviousCopy` (`konal.so` 0x14d3880, 1660 bytes): **Inferred.** The copy-mode
  8-bit polyline for the case where each point is relative to the one before; no callees, it adds
  each offset to the running point before stepping, and it is called from `cfb8LineSS1Rect`; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `cfb32PolyFillArcSolidCopy` (`konal.so` 0x14d47e0, 544 bytes): **Inferred.** Solid-fill arc entry
  for 32-bit copy mode. It walks 12-byte arc records: empty arcs, arcs over 800 pixels and boxes
  past 32767 or not wholly inside the clip (tested with the screen hook at +0x17c) go one at a time
  to `miPolyFillArc`; the rest are filled by the module's own routines, split on whether the end
  angle lies within +-23040 (a half turn in 64ths of a degree); the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `miloadAET` (`konal.so` 0x14d4ab0, 172 bytes): **Established.** Leaf of the polygon scan
  converter; the name and the list splice mark it as the step that merges the edges starting on the
  current scanline into the active-edge list, ordered by x. No calls, and it is called from
  `miFillGeneralPoly`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb16ClippedLineXor` (`konal.so` 0x14d4c10, 2788 bytes): **Established.** Exclusive-or line for
  16-bit pixels that may cross the clip box; it calls `miZeroClipLine` at two sites to clip the
  segment and its closing point; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `cfb32FillSpanTileOddGeneral` (`konal.so` 0x14d5700, 1192 bytes): **Inferred.** Odd-width tiled
  span fill for 32-bit pixels under any raster op; merges with `mergeRopBits`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `konAttachXvc` (`konal.so` 0x14d5bb0, 228 bytes): **Established.** Connects the screen to the
  video-control extension. It reads the environment variable `XVC_DEBUG` with `getenv`, hands the
  extension four module callbacks plus a memory interface through `SDBsetupMemoryInterface`, and
  registers the screen with `XSGIvcScreenInit`; it returns whether that succeeded; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miEllipseAngleToSlope` (`konal.so` 0x14d5ca0, 636 bytes): **Established.** Converts an arc angle
  in 64ths of a degree to the slope of the corresponding ellipse point: it uses `floor` and `__dcis`
  for the compare, and handles the quarter-turn angles 5760, 11520 and 17280 as special cases; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `rrmOGLBindRNToClip` (`konal.so` 0x14d5f20, 684 bytes): **Inferred.** The same binding for an
  OpenGL window, whose extra state is found through `glxWindowPrivateIndex`. It calls
  `allocRRMpriv`, `incrRRMpriv`, `FindBestID`,
  `FindFreeID`, `incrRRMFlags` (two sites) and `nfbSetDidFlags`, reports a failed allocation with
  `ErrorF`, and frees the replaced record with `Xfree`; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `cfb16SetSpans` (`konal.so` 0x14d6550, 1060 bytes): **Established.** Writes spans into a 16-bit
  drawable, calling `cfb16SetScanline` at two sites for each span and taking row strides from
  `PixmapWidthPaddingInfo`; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `cfb8LineSS1RectGeneral` (`konal.so` 0x14d7af0, 2376 bytes): **Inferred.** The 8-bit polyline for
  any raster op: leaf code applying the and/xor pair from the validated GC to every byte it touches,
  and it is called from `cfb8LineSS1Rect`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfbZeroPolyArcSS8Copy` (`konal.so` 0x14d8440, 468 bytes): **Inferred.** The same arc walk as
  `cfbZeroPolyArcSS8General`, specialised for 8-bit copy mode: arcs over 800 pixels go to
  `miZeroPolyArc`, a box past 32767 or not wholly inside the clip goes to `miPolyArc`, and a box
  wholly inside takes the copy-mode fast routine; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `cfb16FillRectTile32General` (`konal.so` 0x14d8620, 4220 bytes): **Inferred.** Tiled fill for
  16-bit pixels with a 32-pixel tile and any raster op; it also uses `mergeRopBits` and the 16-bit
  partial tables; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb32LineSS1RectGeneral` (`konal.so` 0x14d96a0, 2460 bytes): **Inferred.** General-raster-op
  32-bit polyline in one clip rectangle, taking the and/xor pair the GC validation left in its
  private record, and it is called from `cfb32LineSS1Rect`; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `cfb16UnnaturalStippleFS` (`konal.so` 0x14da040, 4452 bytes): **Established.**
  FillSpans for a 16-bit odd-width stipple; clips with `miClipSpans`, then expands stipple bits to
  pixels using the table `cfb16QuartetBitsTable`; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `mfbSetScanline` (`konal.so` 0x14db1b0, 1664 bytes): **Established.** Writes one row of source
  bits into a one-bit destination scanline, shifting to align and masking the ends with `starttab`
  and `endtab`; a leaf; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb32HorzS` (`konal.so` 0x14db830, 1308 bytes): **Inferred.** Horizontal run for 32-bit pixels, a
  leaf. A pixel is a whole word, so there are no start and end mask tables and the loop stores whole
  words, and it is called from `cfb32LineSS`, `cfb32SegmentSS`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32PolyGlyphBlt8` (`konal.so` 0x14dbd50, 1816 bytes): **Inferred.**
  PolyGlyphBlt for 32-bit drawables; same structure with three indirect calls into the fill routine,
  reading the screen private data at +0x1b4; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfbXRotatePixmap` (`konal.so` 0x14dc470, 448 bytes): **Established.** Rotates an 8-bit pixmap
  horizontally by a given number of pixels. It reports a bad depth through `ErrorF` and otherwise
  shifts each row using the table `cfbendtab`; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `miFillConvexPoly` (`konal.so` 0x14dc630, 1964 bytes): **Established.** Fills a convex polygon
  directly: finds the top and bottom vertices, walks both edges with integer stepping, and emits
  spans by calling the local routine at 0x14f6a10 and a pointer, and it is called from
  `miFillPolygon`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `konDrawPoints` (`konal.so` 0x14dcde0, 1920 bytes): **Established.**
  PolyPoint emitter in the konal.so build. It loads state with `kon_loadNfbGCoff`, reports problems
  with `ErrorF` (two sites) and sends `HP_X_LOADCLIP`, `HP_X_POINT24`,
  `HP_X_POINT6`, `HP_X_DATA1` to `HP_X_DATA6` and
  `HP_X_POINT`, each as a token word then payload at offset 0, with the points stored inline; 1920
  bytes against 1200.

- `mfbPolyFillRect` (`konal.so` 0x14dd560, 2676 bytes): **Inferred.**
  PolyFillRect on one-bit drawables: it clips each rectangle to the composite clip and calls through
  the GC's area-fill pointer (two sites) with the box list, and it is called from
  `mfbImageGlyphBltBlack`, `mfbImageGlyphBltWhite`, `mfbValidateGC`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `miValidateTree` (`konal.so` 0x14ddfe0, 1292 bytes): **Inferred.** Recomputes the clip lists of a
  window subtree after a configure or map. It makes calls through the screen's clip-computation
  hooks (thirty indirect calls in all) and one call to the local routine at 0x14168e0, and bumps
  `globalSerialNumber` for each window it touches; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `konDrawImage` (`konal.so` 0x14de6c0, 3932 bytes): **Established.** Image write in the konal.so
  build. It loads state with `kon_loadPixmapGC`, sends `HP_X_LOADCLIP`, `HP_X_LOADPOS`,
  `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH` with token numbers stored at offset 0, and sends
  `KONA_DMAWRITE` (ioctl 10001) for large images with `perror` on failure, at six `ErrorF` sites.
  Pixel words are stored inline, so it is 3932 bytes against 2276.

- `mfbBlackStippleFS` (`konal.so` 0x14df620, 1284 bytes): **Established.**
  FillSpans with a black stipple on one-bit drawables; same flow as the white one, clearing instead
  of setting, and it is called from `mfbValidateGC`; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `konValidateWindowGC` (`konal.so` 0x14dfb30, 2320 bytes): **Established.** Re-validates a window
  GC when its state changed: it decides from the fill style whether the context uses the solid,
  tiled, stippled or opaque-stippled operation vector (`konSolidPrivOps`, `konTiledCAccelPrivOps`,
  `nfbTiledPrivOps`, `konStippledCPrivOps`, `nfbStippledPrivOps`,
  `nfbOpStippledPrivOps`), expands the tile or stipple with `konExpandTile`, `konExpandStipple` and
  `konTilePatterns`, reloads the cache with `kon_freeCachedStipple`, re-parses the context with
  `kon_parseGC`, and ends in `FatalError` on an illegal fill style; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbStereoPolyline` (`konal.so` 0x14e0440, 452 bytes): **Established.** Line-drawing wrapper for
  stereo windows that calls the saved entry at +0x18 once per eye; the point list itself is not
  shifted because the eye offset is applied to the drawable's y; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32FillRectSolidXor` (`konal.so` 0x14e09a0, 1032 bytes): **Inferred.** Exclusive-or solid
  rectangle fill for 32-bit pixels; a leaf that xors each destination word with the foreground, and
  it is called from `cfb32PolyFillRect`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `miOpqStipDrawable` (`konal.so` 0x14e0db0, 1368 bytes): **Established.** Draws an opaque stipple
  into a drawable by the two-pass method: `GetScratchGC` for a work context, `dixChangeGC` (four
  sites) and `ValidateGC` (five sites) to switch between background and foreground fills,
  `miClearDrawable` for the background and `FreeScratchGC` when done; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbNoopDDACreateScreenResources` (`konal.so` 0x14e1310, 8 bytes): **Established.** Stub that
  returns 1 without creating anything; in konal.so its address is stored at 0x15127c0, and the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `konTiledFillRects` (`konal.so` 0x14e1320, 92 bytes): **Established.** Stub for tiled
  FillRects on the pipe path: it only prints a debug message with `ErrorF` and returns; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbFillSpanTile32sGeneral` (`konal.so` 0x14e1380, 1864 bytes): **Inferred.** Span fill with a
  32-pixel tile for 8-bit pixels under any raster op, a leaf merging by `mergeRopBits` and masking
  ends with the 8-bit tables; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `konUnbindDestroyedWindow` (`konal.so` 0x14e1f10, 696 bytes): **Inferred.** Cleans up a window
  that is destroyed while still bound to a display-generator window id. It complains through the
  routine at 0x145c880 when the window pointer is null ("null pWin handed to
  konUnbindDestroyedWindow") or when the binding disagrees ("DFR binding mismatch on xwid"), looks
  the id up through `vcScreenPrivateIndex` and `konWindowPrivateIndex`, and clears the binding with
  the routines at 0x14be310 and 0x14887f0. Which display-generator register those two touch was not
  read; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `nfbCreateStereoGC` (`konal.so` 0x14e22b0, 532 bytes): **Established.** Replaces a new context's
  operations with the stereo vector: it records the stereo-free vector `nfbSolidOps` in the private
  record, builds the stereo copy of the table (a 28-byte header) and reports allocation trouble with
  `ErrorF`; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `konDrawMonoImage` (`konal.so` 0x14e24d0, 2568 bytes): **Established.** One-bit image draw in the
  konal.so build: `kon_loadNfbBitmapGC`, then `HP_X_LOADCLIP`, `HP_X_LOADPOS`,
  `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH` framed as token word then payload at offset 0, rows copied
  with `bcopy`, and bitmap words stored inline instead of through `KonSeqData32_ip19`; 2568 bytes
  against 1724.

- `cfb32FillRectSolidGeneral` (`konal.so` 0x14e2ee0, 744 bytes): **Inferred.** General-raster-op
  solid fill for 32-bit pixels, a leaf using the and/xor pair from the GC private record to combine
  each word, and it is called from `cfb32PolyFillRect`; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `cfbTEGlyphBlt8` (`konal.so` 0x14e3510, 23240 bytes): **Established.** The large
  terminal-emulator-font text routine for 8-bit drawables. A table of unrolled cases, one per glyph
  width, writes whole words of expanded pixels; it uses `cfb8SetOpaqueStipple` to prepare the fill
  colours and falls back to `cfbImageGlyphBlt8` for fonts it cannot handle; the code is instruction
  for instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbUnrealizeWindow` (`konal.so` 0x14e8fe0, 8 bytes): **Inferred.** Hook that returns 1
  immediately; unmapping a window needs no frame-buffer work; in konal.so its address is stored at
  0x15126d0, and the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb16FillBoxTile32sGeneral` (`konal.so` 0x14e8ff0, 2268 bytes): **Inferred.** Box fill with a
  32-bit-wide tile for 16-bit pixels under any raster op; merges source and destination words with
  the GC's and/xor masks, and it is called from `cfb16FillRectTileOdd`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `miWideLine` (`konal.so` 0x14e98d0, 2180 bytes): **Established.**
  PolyLine for lines wider than one pixel. It builds spans with `miSetupSpanData`, calls the local
  routines at 0x142f320 (two sites), 0x14cf680 (two sites) and 0x140dea0 (four sites) to generate
  and fill them, and releases them with `miCleanupSpanData`; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `sgiEnableCapabilityUnsupported` (`konal.so` 0x14ea300, 28 bytes): **Established.** Stub for the
  enable-capability request: it returns `nmbxErrorBase` plus 1, the same unsupported error as the
  release stub, without doing any work; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `mfbYRotatePixmap` (`konal.so` 0x14ea3a0, 236 bytes): **Established.** Rotates a one-bit pixmap
  vertically by moving rows with `memmove`, three sites; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `miInsertEdgeInET` (`konal.so` 0x14ea500, 452 bytes): **Established.** Inserts a polygon edge into
  the edge table bucket for its starting scanline, allocating a bucket record of 304 bytes with
  `Xalloc` when it needs one; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `cfb16ValidateGC` (`konal.so` 0x14ea6e0, 2928 bytes): **Established.**
  ValidateGC for the 16-bit layer: the same sequence with the 16-bit calls `cfb16ReduceRasterOp`,
  `cfb16MatchCommon`, `cfb16CopyRotatePixmap` and `cfb16PadPixmap`, after
  `miComputeCompositeClip`; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `nfbDoBitBltPS` (`konal.so` 0x14eb250, 340 bytes): **Inferred.** Pixmap-to-screen box copy: walks
  the box list of the region argument (+0x8) and for each box calls through the window record to
  write the pixmap rows to the screen; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `konValidateReducedGC` (`konal.so` 0x14eb520, 204 bytes): **Established.** Masks the colour words
  of the generic-layer GC record with the depth mask for the drawable's depth (`kon_depthmask`,
  indexed by the byte at +0x2 of the drawable): the foreground at private +0x34 and the plane mask
  at +0x4c. It prints a debug message with `ErrorF` first, and it is called from
  `konValidateWindowGC`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfbFillRectSolidGeneral` (`konal.so` 0x14eb5f0, 2080 bytes): **Inferred.** Solid rectangle fill
  for 8-bit pixels under any raster op. A leaf reading the GC private array at +0x4c; edge words use
  the tables `cfbstartpartial` and `cfbendtab`, and every store merges with an and/xor pair; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `cfb16CopyRotatePixmap` (`konal.so` 0x14ebe10, 312 bytes): **Established.** The 16-bit version of
  the rotated copy: `cfb16CopyPixmap`, `cfb16PadPixmap`, `cfb16XRotatePixmap` and
  `cfb16YRotatePixmap`, with `memmove` calls and the global serial number stamp; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbFillBoxTile32sCopy` (`konal.so` 0x14ebf50, 2460 bytes): **Inferred.** Box fill for 8-bit
  pixels with a tile of width 32, copy mode: leaf, replicates the tile word across the row between
  masked ends, and it is called from `cfbFillBoxTileOdd`, `cfbFillRectTileOdd`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32LineSS1RectXor` (`konal.so` 0x14ec950, 2372 bytes): **Inferred.** Exclusive-or 32-bit
  polyline in one clip rectangle. Its size matches the 16-bit routine; the stores are word-wide, and
  it is called from `cfb32LineSS1Rect`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `miWideDash` (`konal.so` 0x14ed2a0, 2392 bytes): **Established.** The dashed form of the wide-line
  routine: dash steps via `miStepDash`, span building with `miSetupSpanData` and the local routines
  at 0x14cf680 (two sites) and 0x140dea0 (four sites), projecting caps with `miLineProjectingCap`, a
  one-pixel fallback in `miZeroDashLine` and clean-up with `miCleanupSpanData`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbDoBitBltSP` (`konal.so` 0x14edc00, 2968 bytes): **Established.** Screen-to-pixmap box copy. It
  allocates a buffer with `Xalloc`, reads the screen into it through the raster-op tables
  `nfbRopFcn` and `nfbMaskRopFcn`, selected by `rop_needs_src` and
  `rop_needs_dst`, and frees it with `Xfree`; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `nfbDoBitBltSS` (`konal.so` 0x14ee7a0, 744 bytes): **Inferred.** Screen-to-screen box copy: for
  each box in the region it makes an indirect call (four sites) into the copy routine named in the
  window's private record, and it is called from `nfbCopyArea`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16CopyArea` (`konal.so` 0x14eea90, 164 bytes): **Established.**
  CopyArea for 16-bit drawables with the same shape as the 8-bit selector, comparing the plane mask
  with 0xffff and passing one of `cfb16DoBitbltGeneral`, `cfb16DoBitbltCopy`, `cfb16DoBitbltXor` or
  `cfb16DoBitbltOr` to `cfb16BitBlt`; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `mfbPolyGlyphBltInvert` (`konal.so` 0x14eeb40, 2264 bytes): **Established.**
  PolyGlyphBlt on a one-bit drawable that inverts pixels under the glyph; two `QueryGlyphExtents`
  calls, size equal to the white variant; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `nfbQueryBestSize` (`konal.so` 0x14ef420, 192 bytes): **Established.** Best-size query: for tiles
  and stipples (class 1 and 2) it rounds the width down to a power of two and caps height at 32; for
  cursors it caps both at 32. A leaf. It reads and writes the halfword at +0x0 of each of the two
  size pointers it is passed, ; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `miSetShape` (`konal.so` 0x14efb30, 816 bytes): **Established.** Applies a changed window shape:
  updates sizes with `SetWinSize` and `SetBorderSize`, resizes children with
  `ResizeChildrenWinSize`, checks the pointer with `CheckCursorConfinement` and reports with
  `WindowsRestructured`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `miInsertionSort` (`konal.so` 0x14eff60, 164 bytes): **Established.** Leaf insertion sort used by
  the polygon edge code: it re-links the active-edge list (links at +0x1c and +0x20 of each edge
  record) so the records are ordered by the key at +0x4, and returns 1 if it moved any; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbFillRectTile32Copy` (`konal.so` 0x14f0010, 1932 bytes): **Inferred.** Tiled rectangle fill for
  8-bit pixels with a tile exactly 32 pixels wide, copy mode: the tile row is loaded as a word and
  written across each row with partial-word end handling, and it is called from `cfbPolyFillRect`;
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `konDetachXvc` (`konal.so` 0x14f07a0, 168 bytes): **Established.** Disconnects the video-control
  extension: when `vcScreenPrivateIndex` is valid and `XSGIvcScreens` has an entry for the screen it
  calls the routine at 0x13cb2c0 to release it, then zeroes the screen's private slot and the
  `XSGIvcScreens` entry; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `konInstallColormap` (`konal.so` 0x14f0850, 2432 bytes): **Established.** Colormap install in the
  konal.so build: `HP_X_LOADCMAP` with the map address, entry count and one packed word per entry,
  the token written as a word at offset 0 and the colour words stored inline rather than via
  `KonSeqData32_ip19`; `ErrorF` reports failures. 2432 bytes against 1768.

- `cfbFillRectSolidXor` (`konal.so` 0x14f11d0, 2984 bytes): **Inferred.** Solid rectangle fill for
  8-bit pixels that xors the foreground into the frame buffer; a leaf using the partial-word tables
  for ragged edges and unrolled whole-word stores in between, and it is called from
  `cfbPolyFillRect`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `miDestroyClip` (`konal.so` 0x14f1f00, 152 bytes): **Inferred.** Releases a GC's client clip,
  calling the screen's region destroy hook for a region clip; in konal.so its address is stored at
  0x1515e3c, and the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `miCopyClip` (`konal.so` 0x14f1fa0, 244 bytes): **Inferred.** Copies a GC's client clip into
  another by calling the screen's region copy hook (four sites); in konal.so its address is stored
  at 0x1515e40, and the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `mfbPushPixels` (`konal.so` 0x14f20a0, 1412 bytes): **Inferred.**
  PushPixels on a one-bit drawable: it makes seven indirect calls, walking the mask in 128-bit-wide
  groups and calling the stippled area fill with `endtab` masks for the edges; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbPadPixmap` (`konal.so` 0x14f2630, 556 bytes): **Established.** Replicates an 8-bit tile
  horizontally until its row fills 32 bits, when the tile width divides 32; the code tests the width
  times depth against 32 and uses `endtab` for the row masks. A leaf; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16DestroyPixmap` (`konal.so` 0x14f2860, 88 bytes): **Established.** The 16-bit pixmap release:
  a reference count test followed by `Xfree` of the pixmap's data and record; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `nfbInitHWCmapArrays` (`konal.so` 0x14f2b30, 2276 bytes): **Established.** Allocates the arrays
  that track the hardware colormaps and their groups with `Xalloc` (two sites), fills them with
  `memcpy` and frees the temporary list with `Xfree`; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `cfb32LineSS1Rect` (`konal.so` 0x14f3420, 728 bytes): **Inferred.** Chooser for 32-bit polylines
  in one clip rectangle; it calls the copy, previous-point copy, xor or general version through a
  pointer and falls back to `cfb32ClippedLineGeneral`; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `miMarkUnrealizedWindow` (`konal.so` 0x14f3700, 124 bytes): **Inferred.** Marks a window for
  revalidation when it becomes unrealised, calling the screen's mark hook three times, and it is
  called from `miScreenInit`; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `miRegionNotEmpty` (`konal.so` 0x14f3e60, 40 bytes): **Established.** Leaf test that reports
  whether a region has any area, by comparing its extents halfwords at +0x0 to +0x6; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miChangeSaveUnder` (`konal.so` 0x14f41d0, 208 bytes): **Inferred.** Maintains the count of
  viewable save-under windows: it adjusts `numSaveUndersViewable` and `deltaSaveUndersViewable` and
  calls the screen's hook; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `cfbSetSpans` (`konal.so` 0x14f4f50, 1044 bytes): **Established.** Writes spans into an 8-bit
  drawable: for each span inside the clip rectangles it calls `cfbSetScanline`, with row sizes from
  `PixmapWidthPaddingInfo`; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `miRegionInit` (`konal.so` 0x14f5370, 232 bytes): **Established.** Initialises a region record:
  copies the four halfword extents from the box argument (or from `miEmptyBox` when none is given),
  and either points the data field at +0x8 at `miEmptyData` or allocates a rectangle array with
  `Xalloc` for a count above one; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `cfb16XRotatePixmap` (`konal.so` 0x14f6850, 448 bytes): **Established.** Horizontal rotation of a
  16-bit pixmap with three `ErrorF` reports for unsupported widths and `cfb16endtab` for the masks;
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `nfbMarkWindow` (`konal.so` 0x14f6af0, 180 bytes): **Inferred.** Marks a window as needing
  revalidation: sets the flag word for its colour-map group (found through the window record at
  +0x18 and the screen's table at +0x3c), and allocates a 24-byte block with `Xalloc` if the window
  has none, with `Must_have_memory` set during the call; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `miFillArcSliceSetup` (`konal.so` 0x14f6bb0, 2368 bytes): **Established.** Computes the edge data
  for a pie slice or chord fill: calls `ceil` at two sites and the local routine at 0x147b0e0 at two
  sites, uses `__dcis` at two sites for double-precision compares, and compares angles with 5760 and
  11520; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfb8SetStipple` (`konal.so` 0x14f74f0, 436 bytes): **Established.** Loads the shared 8-bit
  stipple state for a transparent fill: one `cfbReduceRasterOp` call, then stores the foreground,
  rop, and/xor, plane mask and mode in `cfb8StippleFg`, `cfb8StippleAlu` and the neighbouring
  globals; no background is set; the code is instruction for instruction the same as the kona.so
  build once relocated addresses are ignored.

- `miChangeBorderWidth` (`konal.so` 0x14f76b0, 504 bytes): **Established.** Sets a window's border
  width: calls `SetBorderSize` to propagate it and then revalidates through `WindowsRestructured`;
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `mfbStippleInvertArea` (`konal.so` 0x14f78b0, 3524 bytes): **Established.** Inverts bits through a
  stipple over a list of boxes; a leaf with the same loop, toggling destination bits, and it is
  called from `mfbValidateGC`; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `konHyperpipeConfig` (`konal.so` 0x14f8680, 788 bytes): **Established.** Applies a hyperpipe
  configuration. It checks the request with the routine at 0x14796e0 against the screen's record,
  copies three words of each 92-byte pipe record of the screen record (at +0x50, +0x54 and +0x58)
  into a 16-byte request entry, sends one generic graphics ioctl 102 (`GFX_GETBOARDINFO`) of 40
  bytes per pipe to look up that board, and then sends `KONA_NCLOPS_CONFIGURE` (10020). A failed
  ioctl is reported with `perror` and the call returns -1 through its status argument; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbFillRectTile32General` (`konal.so` 0x14f8b60, 4220 bytes): **Inferred.** Tiled rectangle fill
  for 8-bit pixels, 32-pixel tile, any raster op. It merges using the table `mergeRopBits` and
  handles the ragged edges with the partial-word tables; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `konSlowLineSS` (`konal.so` 0x14fa0e0, 4164 bytes): **Established.** Host-side solid polyline in
  the konal.so build, logic as in kona.so: `kon_loadGC`, clipping with `miZeroClipLine`, and pixels
  emitted through `konBresS` (two sites). Its own stores of `HP_X_LOADPOS`, `HP_X_LOADCLIP`,
  `HP_X_BOX` and `HP_X_POINT` use the konal.so framing, the token number as a word at offset 0
  followed by the payload. 4164 bytes against 4124.

- `konInit` (`konal.so` 0x14fb130, 9132 bytes): **Established.** Screen initialisation for the Kona
  module, the largest function of the range. It reserves the screen, window and GC private indexes
  (`AllocateScreenPrivateIndex`, `AllocateWindowPrivateIndex`, `AllocateGCPrivateIndex`), allocates
  the per-screen records with `Xalloc`, and loads the visual tables from `konavis.so` with
  `ddxMakeDynamicModulePath`, `dlopen` and `dlsym` (the symbols
  `konVisualInfo_imp8`, `konVisualInfo_imp8c` and `konVisualInfo_imp9` among them), reporting
  `dlerror` on failure. It then calls `nfbGenericScreenInit`, `kon_initGCCaches`,
  `kon_initCursorCaches`, `konAttachXvc`, `konBlankScreen`,
  `nfbHWColormapScreenInit`, `rrmInit` and `glxScreenInit`, registers the stereo wrappers with
  `nfbStereoRegisterWrapperOps`, reads display information with `nfbReadDisplayRegisterInfo`, and
  compares names against `HIRES_QUADBUFFER` and `HIRES_DOUBLEBUFFER` with `strcmp` (the
  visual-selection logic around those was not read). Each step has its own `ErrorF` message when it
  fails, among them "probably no DG installed" for the video-control attach and a conflict message
  for the overlay flags; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb16DoBitbltCopy` (`konal.so` 0x14fe080, 4716 bytes): **Inferred.** The 16-bit rectangle copy in
  plain copy mode, reading the screen private data at +0x1b4 for the frame-buffer stride; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `konSlowLineSD` (`konal.so` 0x14ff520, 3252 bytes): **Established.** Host-side dashed line in the
  konal.so build: `kon_loadGC`, `miStepDash` (three sites), `konBresD` (two sites) and
  `miZeroClipLine` as in kona.so, with `HP_X_LOADPOS` and `HP_X_LOADCLIP` sent as a token word at
  offset 0 then payload. 3252 bytes against 3236.

- `miCreateETandAET` (`konal.so` 0x15001e0, 660 bytes): **Established.** Builds the edge table and
  the empty active-edge list for a polygon fill, calling `miInsertEdgeInET` for every edge and
  freeing the storage with `miFreeStorage` on failure; the code is instruction for instruction the
  same as the kona.so build once relocated addresses are ignored.

- `cfb16DoBitblt` (`konal.so` 0x1500480, 136 bytes): **Established.** The 16-bit chooser; it tests
  the plane mask against 0xffff and the op against 3, 6 and 7, falling back to
  `cfb16DoBitbltGeneral`; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `cfb16ImageGlyphBlt8` (`konal.so` 0x1500510, 360 bytes): **Established.** The 16-bit
  ImageGlyphBlt: a `QueryGlyphExtents` call to size the string, a background fill, then the glyph
  draw; the code is instruction for instruction the same as the kona.so build once relocated
  addresses are ignored.

- `cfb16FillBoxTileOdd` (`konal.so` 0x1500680, 92 bytes): **Established.** Wrapper that sends a
  16-bit box with an odd tile to `cfb16FillBoxTileOddCopy`, or to `cfb16FillBoxTile32sCopy` when the
  tile width is 32, after testing the raster op against 3; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `cfb32UnnaturalStippleFS` (`konal.so` 0x1500b90, 2332 bytes): **Established.**
  FillSpans for a 32-bit odd-width stipple; clips with `miClipSpans`, expands stipple bits with
  `cfb32QuartetBitsTable` and `cfb32QuartetPixelMaskTable`; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `miCopyPlane` (`konal.so` 0x15014b0, 916 bytes): **Established.** Default
  CopyPlane: clips source and destination, draws with `miOpqStipDrawable`, handles exposures with
  `miHandleExposures`, and calls `ffs` to find the plane bit and the local routine at 0x14318b0
  before reading the source; the code is instruction for instruction the same as the kona.so build
  once relocated addresses are ignored.

- `cfb8FillRectStippledUnnatural` (`konal.so` 0x1502530, 3012 bytes): **Established.**
  PolyFillRect path for 8-bit stipples of odd width: depending on fill style it calls
  `cfb8SetOpaqueStipple` or `cfb8SetStipple` once per request, then paints each rectangle through
  the stipple tables with the partial-word masks; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

- `miHandleValidateExposures` (`konal.so` 0x1503100, 364 bytes): **Inferred.** After validation,
  generates exposures for newly uncovered regions through the screen's hooks (six indirect calls)
  and frees the temporary regions with `Xfree`; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `nfbPutImage` (`konal.so` 0x1503270, 1384 bytes): **Inferred.**
  PutImage in the generic layer: it routes through the GC's operations by indirect calls, calls the
  local routine at 0x1435430 at two sites, and uses `PixmapWidthPaddingInfo` for row sizes; the code
  is instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb16BresS` (`konal.so` 0x15037e0, 884 bytes): **Inferred.** Solid Bresenham stepper for 16-bit
  pixels: a leaf of 884 bytes with the same raster-op branching as the 8-bit stepper, moving
  halfword pointers, and it is called from `cfb16LineSS`, `cfb16SegmentSS`; the code is instruction
  for instruction the same as the kona.so build once relocated addresses are ignored.

- `mfbDestroyPixmap` (`konal.so` 0x1503b60, 88 bytes): **Established.** Drops a reference on a
  one-bit pixmap and, when none remain, releases it with `Xfree`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `miRegionCopy` (`konal.so` 0x1503c20, 384 bytes): **Established.** Copies one region into another:
  the four extents, then the rectangle array, resizing the destination with `Xalloc` or `Xfree` and
  moving the boxes with `memmove`; the global `Must_have_memory` is set around the allocation; the
  code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `nfbNoopDDAClearBackingStore` (`konal.so` 0x1503da0, 8 bytes): **Established.** Stub that returns
  0, meaning no backing-store area was cleared; in konal.so its address is stored at 0x151270c, and
  the code is instruction for instruction the same as the kona.so build once relocated addresses are
  ignored.

- `cfbGetSpans` (`konal.so` 0x1503e10, 1668 bytes): **Established.**
  GetSpans for 8-bit drawables: reads each requested span into packed output. It reports a request
  it cannot serve with `FatalError` and sends one-bit drawables to `mfbGetSpans`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `mfbInvertStippleFS` (`konal.so` 0x1504670, 1252 bytes): **Established.**
  FillSpans with an inverting stipple on one-bit drawables; the same flow as the white stipple,
  toggling destination bits, and it is called from `mfbValidateGC`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfb32XRotatePixmap` (`konal.so` 0x1504b60, 432 bytes): **Established.** Horizontal rotation of a
  32-bit pixmap; `ErrorF` reports for unsupported widths and the table `cfb32endtab`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbReduceRasterOp` (`konal.so` 0x1504d10, 684 bytes): **Established.** Turns a raster op,
  foreground and plane mask into the and/xor pair the 8-bit routines use. A leaf with a jump table
  over the sixteen raster ops (copy, xor, and so on, tested against 3, 6, 7 and
  15), and it is called from `cfb8SetOpaqueStipple`, `cfb8SetStipple`, `cfbLineSD`; the code is
  instruction for instruction the same as the kona.so build once relocated addresses are ignored.

- `miZeroPolyArc` (`konal.so` 0x1504fc0, 1820 bytes): **Established.**
  PolyArc for zero-width arcs when the fast point stepper does not apply. It saves and changes the
  GC with `DoChangeGC` (two sites) and `ValidateGC` (two sites), steps the dash with `miStepDash`
  and calls the local routine at 0x1419930; the address of `miPolyArc` is held for the case where it
  re-dispatches; the code is instruction for instruction the same as the kona.so build once
  relocated addresses are ignored.

- `rrmBindRNToClip` (`konal.so` 0x1505780, 572 bytes): **Inferred.** Binds a rendering node to a
  window's clip for an ordinary window, from its reads of `rrmWindowPrivateIndex`,
  `nfbWindowPrivateIndex` and `rrmScreenPrivateIndex`. It allocates the window's record with
  `allocRRMpriv`, takes a reference with `incrRRMpriv`, picks a display id with `FindBestID` (two
  sites), sets the window's flag bits with `incrRRMFlags` and `nfbSetDidFlags`, and releases a
  replaced record with `Xfree`. It sends no ioctl itself; the code is instruction for instruction
  the same as the kona.so build once relocated addresses are ignored.

- `cfb32DoBitbltCopy` (`konal.so` 0x15059c0, 2836 bytes): **Inferred.** The 32-bit copy-mode
  rectangle copy, a leaf that moves whole words in the direction the overlap requires, and it is
  called from `cfb32CopyArea`, `cfb32DoBitblt`; the code is instruction for instruction the same as
  the kona.so build once relocated addresses are ignored.

- `nfbCreatePixmap` (`konal.so` 0x1506570, 468 bytes): **Established.** Creates a pixmap: allocates
  the record and its data with `Xalloc` (two sites), sizes rows with `PixmapWidthPaddingInfo`,
  stamps `globalSerialNumber`, and reports an unsupported depth with `ErrorF`; in a multi-screen
  setup it consults `panoramiXMode` and `panoramiXSharePixmap`; the code is instruction for
  instruction the same as the kona.so build once relocated addresses are ignored.

- `cfbFillRectTileOdd` (`konal.so` 0x1506750, 224 bytes): **Established.** Tile fill for 8-bit
  pixels with an odd-sized tile: a thin wrapper that tests the raster op against 3 and calls
  `cfbFillBoxTileOddGeneral` for each box; the code is instruction for instruction the same as the
  kona.so build once relocated addresses are ignored.

- `cfbSolidSpansXor` (`konal.so` 0x1506830, 1064 bytes): **Established.** Solid
  FillSpans for 8-bit pixels using xor: `miFindMaxBand` and `miClipSpans`, then masked word xors
  using the tables `cfbstarttab` and `cfbendtab`; the code is instruction for instruction the same
  as the kona.so build once relocated addresses are ignored.

## konal.so builds of the hooks that have no konal.so entry above

Twenty-two `konal.so` functions had only a `kona.so` entry. They are instruction for instruction the `kona.so` code, with the offsets of the global-pointer table moved (compared by script, then read from the `konal.so` disassembly one by one), so each entry below states what the `konal.so` function does from its own listing. In the stereo wrappers the screen record is reached through the drawable's screen pointer (+16) and its private word (+116); that record holds a stereo flag at +220 and the eye offset, a halfword, at +226.

- `konSetColor` (konal.so, address 0x1463ac0, 100 bytes): **established.** An empty set-colour hook. It narrows the three colour
  arguments to 16 bits into locals, keeps the fifth argument, and calls `ErrorF` once with the text "konSetColor *** should NOT be
  called". No colour is loaded, so colour stores must reach the board through the store-colours entry points instead.
- `konLocatorFilter` (konal.so, address 0x1493b60, 100 bytes): **established.** The pointer-locator filter hook. After saving its
  four arguments it branches straight to the epilogue at +0x50, so the `ErrorF` call that follows (format "x = %d, y = %d" with
  the first two arguments) is never reached; the function returns without effect.
- `konTiledFS` (konal.so, address 0x1503db0, 96 bytes): **established.** Placeholder for the tiled fill-spans operation: it stores
  its five arguments and returns. The `ErrorF` call with the one-line text "konTiledFS" at 0x1503dec is in code no path reaches: the unconditional branch at 0x1503ddc skips it. It draws nothing and sends no pipe
  command.
- `konCreateGC` (konal.so, address 0x1482b50, 528 bytes): **established.** Create-context wrapper. It reads the depth byte of the
  drawable (+4 of the context argument) and indexes a 31-entry jump table in read-only data: depth 1 calls `mfbCreateGC` and
  returns its result; depths 2, 4, 8,
  12, 15, 16,
  24 and 30 take the common path; the other 22 values print "unsupported depth: %d" through `ErrorF` and return 0. The common path
  copies the hook at +128 of the screen private into screen word +304, calls that word, puts `konCreateGC` back in it, clears the
  172-byte context private with `bzero`, saves the context's function table pointer at private +164 and installs this module's
  table, then zeroes the halfwords at +92 and +108 and the words at +104, +144 and +148 to +160. A debug print of the function
  name sits behind an unconditional branch and never runs.
- `rrmSetResourceMask` (konal.so, address 0x1463e20, 88 bytes): **established.** Marks kernel resources valid for a window. The
  window's rrm private comes from the window record's private array (+132) at `rrmWindowPrivateIndex`. When any bit of the mask
  argument is already set in the byte at +4 the function returns that overlap, nonzero, at once; otherwise it sets the mask in +4,
  clears the same bits in the byte at +5 and returns 0.
- `rrmDelayValidateClipCancel` (konal.so, address 0x1487410, 136 bytes): **established.** Drops a queued clip validation. Only
  when the window has an rrm private whose word at +68 is nonzero does it act: `Xfree` of the block at +72, `TimerFree` of the
  timer at +68, then zero in both words. The other paths return without sending an ioctl.
- `rrmInvalidate` (konal.so, address 0x1489190, 560 bytes): **established.** The hook that tells the kernel to drop a window's
  resources. With a zero mask it uses every valid bit of the byte at +4 of the rrm private. If none is set it returns. Otherwise
  it clears the bits and calls `ioctl` with request 1010 on the descriptor at +116 of the screen, passing a block with the
  rendering-node id (+12 of the private), the window id (+4), the bits and two result words. For the swap-buffer bit (0x8) it
  copies bit 0x4 of the returned mode into the window's word at +32, calls `UpdateDIDMode` with the result's bit 0, runs
  `SetDIDMode` only when that bit is set and the flag argument is nonzero, and when bit 0x4 changed it stores the new value at +2
  of the window's double-buffer private, advances `globalSerialNumber` (wrapping to 1 above 0x1000000) and calls
  `FlushClientCaches`. For the clip bit (0x2) it calls `rrmInvalidateCID` when word +4 of the screen's rrm private is nonzero.
- `SetNoStealID` (konal.so, address 0x14a75f0, 68 bytes): **established.** Protects a display id from stealing. It takes the
  screen's rrm private through the screen's private array (+436) at `rrmScreenPrivateIndex`, steps to the id's 36-byte entry (the
  table starts at +152) and ors 0x20 into the entry's flag halfword at +168 from the private.
- `SetReservedID` (konal.so, address 0x14ff2f0, 536 bytes): **established.** Gives an id its reserved mode. It empties the id's
  holder list one window at a time (first holder at +152 of the entry, count at +172), saving each window on the stack; for each
  whose rrm private byte +6 has bit 0x8 it calls the screen private's hook at +32 with (window, 0, 0), and it then calls `FreeID`.
  It copies entry words +176 and +180 over +160 and +164, calls the hook at +44, and sets flag bit 0x2. Each saved window is then
  given a new id by `FindFreeID`, or by `StealID` when none is free, and when the id's flag had bit 0x10 the window's new id gets
  that bit and the hook at +32 is called with (window, 8, 1).
- `FindFreeID` (konal.so, address 0x15044a0, 464 bytes): **established.** Finds a free display id for a window and returns 1 or
  0. A window of kind 1 on a screen whose private word +12 has bit 0 set gets the id one past the table, the table size read from
  the screen private. A window that already holds an unshared id keeps it. Pass 1 takes the first entry of the window's kind with
  flag bit 0x1 clear and no holder; pass 2, only when screen private word +48 is nonzero, takes an entry with bit 0x1 set and bits
  0x2 and 0x20 clear and no holder. The winner goes to the window through the local routine at 0x1503bc0; with neither pass
  successful the return is 0.
- `rrmOGLUnbindRNFromClip` (konal.so, address 0x14f28c0, 624 bytes): **established.** The
  OpenGL form of the unbind hook. It invalidates the window's resources through the hook at +32, calls `rrmUnqueueRequest` when
  the flag halfword has bit 0x20, and frees the buffer in the window's GLX private with `Xfree`. A non-empty bound-window list
  prints "prrmBoundWins non zero" through `ErrorF`. It asks `cmapDID` for the frame-buffer id, sets bit 0x1 in private word +32
  with `nfbSetDidFlags`, and for a realized window releases the display id (`FreeID`) and clip id (`FreeCID`), lowers the
  ancestors' counters with `decrRRMFlags` and clears the bound bit.
- `konCloseScreen` (konal.so, address 0x14a2d90, 468 bytes): **established.** The screen close hook. It reads the screen private
  at `konScreenPrivateIndex`, calls `konCursorOn` with 0, then `konBlankScreen` (printing "konBlankScreen() failed" through
  `ErrorF` when it fails), then calls the screen hook at +352 with a pointer to each of the three 12-byte records of the block
  whose pointer is at private +64. It detaches the video-control extension with `konDetachXvc`, frees the blocks at private +64,
  +40, +44, +48 and +52 with `Xfree`, runs `kon_freeCursorCaches` and `kon_GCOpsCacheReset`, calls a local routine at 0x148e5d0
  with the screen private, then closes the lower layers in the order `rrmCloseScreen`, `nfbHWColormapScreenClose` and
  `nfbCloseScreen`, whose result it returns.
- `konStereoImageText16` (konal.so, address 0x145dbb0, 768 bytes): **established.** Stereo form of the 16-bit image-text
  operation, taking (drawable, context, x, y, count, string) and calling operation slot +64 of the saved table twice. The
  context's private record comes from the context's private array (+76) at `nfbGCPrivateIndex`; the function saves the draw-buffer
  word at private +8 and the context's operations pointer (+72), installs the table kept at private +92 and sets private +104 to
  1. When the stereo flag is 1 the first pass uses the buffer word at +96 with the drawable's y position (+10) and the private y
  (+90) lowered by the eye offset, the second the word at +100 with both restored; otherwise the first pass uses +100 raised by
  the offset and the second +96 restored. Each pass revalidates with `konValidateWindowGC` (mask 8192). It restores the saved
  buffer word and table, and clears +104.
- `konStereoPolyPoint` (konal.so, address 0x1463b30, 748 bytes): **established.** Stereo form of the point-plotting operation
  (five arguments: drawable, context, mode, count, points), calling slot +20 twice. It makes the same two-pass switch as the other
  wrappers, with no copy of the points: the first pass at the lowered position in buffer word +96, the second in +100 at the
  original position when the screen's stereo flag is 1, and the mirrored order, +100 raised then +96, when it is not. Each pass is
  preceded by `konValidateWindowGC` with mask 8192, and the saved buffer word, operations table and flag at private +104 are put
  back afterwards.
- `konStereoPushPixels` (konal.so, address 0x1472d00, 804 bytes): **established.** Stereo form of the push-pixels operation, whose
  context is its first argument and whose drawable is the third (seven arguments in all), so the screen record is reached through
  the third argument and the private record through the first. It calls slot +76 of the saved table twice, in the stereo order
  (+96 at the lowered position, then +100 restored) or in the other order (+100 raised, then +96 restored) as the flag at +220
  decides, validating with mask 8192 before each call and putting back the buffer word, table and private flag after the second.
- `konStereoImageGlyphBlt` (konal.so, address 0x14f9dc0, 788 bytes): **established.** Stereo form of the glyph-blit image
  operation with seven arguments (drawable, context, x, y, glyph count, character-info list, glyph bitmaps), which it forwards
  unchanged to slot +68 of the saved table in two passes. The first pass draws into buffer word +96 at the position lowered by the
  eye offset and the second into +100 at the original position when the stereo flag is 1; with the flag clear the passes are +100
  at the raised position and +96 at the original. `konValidateWindowGC` with mask 8192 runs before each pass.
- `konStereoPolyFillRect` (konal.so, address 0x147a440, 888 bytes): **established.** Stereo form of the rectangle fill (drawable,
  context, count, rectangles). It first allocates count x 8 bytes with `Xalloc` and copies each rectangle (four halfwords) into
  the block, then calls slot +44 twice. In the stereo order the first pass hands the operation the copy, the second the caller's
  list; the drawable and private y positions are lowered by the eye offset for the first pass and restored for the second, with
  buffer words +96 then +100. The other order mirrors it. The block is released with `Xfree` before the buffer word, operations
  table and private flag are restored.
- `konStereoPolyFillArc` (konal.so, address 0x1474100, 912 bytes): **established.** Stereo form of the arc fill (drawable,
  context, count, arcs): it allocates count x 12 bytes through `Xalloc` (the multiply is shifts and a subtract) and copies each
  12-byte arc with unaligned doubleword and word moves, then calls slot +48 twice with the buffer words and y positions of the
  other wrappers, once with the copy and once with the caller's list. `Xfree` returns the block before the original table and
  buffer word come back.
- `konStereoFillPolygon` (konal.so, address 0x14e0610, 912 bytes): **established.** Stereo form of the polygon fill (drawable,
  context, shape, mode, count, points). It allocates count x 4 bytes with `Xalloc`, copies the x and y halfwords of each point
  into it, and calls slot +40 twice: the copy goes to the first pass and the caller's points to the second. Positions and buffer
  words follow the common two-pass rule (+96 lowered then +100 restored, or +100 raised then +96 restored), each pass after
  `konValidateWindowGC` with mask 8192, and the block is freed at the end.
- `konStereoCopyArea` (konal.so, address 0x1491490, 1220 bytes): **established.** Stereo form of the area copy with nine arguments
  (source, destination, context, source x and y, width, height, destination x and y), calling slot +12 of the saved table. When
  the destination is a pixmap (type byte +0 equal to 1) it calls the slot once and returns its region. Otherwise it makes the two
  passes, shifting the destination y by the eye offset: in the argument itself (the ninth, on the stack) when source and
  destination are the same drawable, and in the destination's y position (+10) when they differ, together with the private y
  (+90). After the first pass the returned region, if any, is destroyed through the screen hook at +348, and the region of the
  second pass is returned.
- `konStereoSetSpans` (konal.so, address 0x149d470, 1204 bytes): **established.** Stereo form of the span write with seven
  arguments: the points are the fourth, the widths the fifth and the count the sixth. Instead of copying, it adjusts the y
  halfword (+2) of each of the count points of the caller's array in place before each pass: lowered by the eye offset for the
  first pass, raised by it for the second in the stereo order, and the reverse for the other order, so the array is back to its
  input values when the function returns. Slot +4 is called twice, after `konValidateWindowGC` with mask 8192.
- `konStereoFillSpans` (konal.so, address 0x14ac470, 1184 bytes): **established.** Stereo form of the span fill with six arguments
  (drawable, context, count, points, widths, sorted flag). Like the span write it moves the y halfword (+2) of every point of the
  caller's array in place by the eye offset between the two calls of slot +0, then undoes it, along with the drawable and private
  y positions and the buffer words +96 and +100. The pass order depends on the stereo flag at +220 in the same way as the other
  wrappers.

## konad.so functions whose bytes differ from konal.so

The 137 functions below have different bytes in `konad.so` and `konal.so`. Comparing them word by word, 135 have the same opcode and register fields in every word and differ only in 16-bit immediates, which are relocated offsets and addresses; the two that also differ in length, `konWriteFBSubBlock` and `konDrawImage`, were read in full against the `konal.so` listing. Each entry gives the role, which holds for this build because the instruction stream matches, and then the word comparison in short fields: how many words differ and of how many, how they split into changed load offsets (loads), store offsets (stores), the two halves of relocated addresses (high and low halves) and pc-relative call distances (calls), where the first changed word sits, and the global-pointer constants of the two prologues (gp), when the function sets one. Addresses inside a role that name local routines are the `konad.so` addresses.

- `rrmMapWindow` (konad.so, address 0x43a810, 428 bytes): **inferred.** Called when a window is mapped: bumps the private counters
  with `incrRRMpriv` and `incrRRMFlags`, takes identifiers from `FindFreeID` or
  `FindBestID` and `FindFreeCID`, then validates the clip id through `rrmValidateCID`. Against `konal.so`: 1 of 107; immediates
  only; low halves: 1; first at +0x180.
- `miInitializeBackingStore` (konad.so, address 0x4436f0, 400 bytes): **established.** Sets up backing store for a screen: takes a
  GC private index with `AllocateGCPrivateIndex`, a screen private index with `AllocateScreenPrivateIndex`, allocates the record
  with `Xalloc` and a GC private with `AllocateGCPrivate`. Against `konal.so`: 2 of 100; immediates only; low halves: 2; first at
  +0xd0; gp 0x15c550 and 0x15c550.
- `FindBestID` (konad.so, address 0x449e30, 424 bytes): **established.** Takes (window) and picks a display id for it. It scans
  the ids and remembers the best one whose recorded modes match the window's (`compareModes`); a shared id (flag 0x4) of the
  window's own kind is joined at once. A remembered match is otherwise announced to its holders through hook +32 before the window
  is given the id. With no match, or an empty table, it asks `cmapDID` and gives the window that id unless it already holds it.
  Against `konal.so`: 1 of 106; immediates only; low halves: 1; first at +0x124.
- `mfbPolyFillArcSolid` (konad.so, address 0x44b9b0, 576 bytes): **inferred.**
  PolyFillArc for solid fills of one-bit drawables: fetches the clip through entry +380, makes two calls to a shared span-fill
  routine and loops over the arcs (13 loop edges); 0x7fff bounds the y range. Against `konal.so`: 2 of 144; immediates only; low
  halves: 2; first at +0x98.
- `FindFreeCID` (konad.so, address 0x460670, 628 bytes): **established.** Gives a window a clip id, the hardware tag that lets a
  window with a complex clip be drawn without per-rectangle clipping (**inferred** from `rrmNeedCID`). It works on the clip-id
  table: 28-byte entries from screen-private +148, count at +4; entry +0 first holder, +8 flags, +10 kind, +12 holder count;
  cursor at +136. It first calls hook +92 (`rrmNeedCID`) with the window; on 0 it sets the window's clip id to the table count
  (**inferred** "none"). A window whose current clip id is not shared (bit 0x4 of entry +8 clear) keeps it. Otherwise it scans for
  an entry of the window's kind without bit 0x1 (a kind-1 window also accepts other kinds when screen word +12 has bit 0x2). An
  entry with no holder is given to the window at once; of the others it remembers the last whose first holder's private bytes +4
  and +6 differ. When none is remembered it takes the entry after the cursor (wrapping to 1, never 0) and advances the cursor. For
  the chosen entry it sends hook +32 (`rrmInvalidate`) to the first holder with (2, 0), invalidating its clip, moves that holder
  to clip id 0 and gives the window the entry. Both moves go through a static helper (window, id), which frees the window's
  current clip id with `FreeCID` and joins the new one through a static helper, which stores the id at private +24 and adds the
  window as a holder. With `kona.so` the clip-id count is 0, so no clip-id table exists and the guarded callers never reach this
  function (descriptor) Against `konal.so`: 3 of 157; immediates only; low halves: 3; first at +0x178; gp 0x13f5d0 and 0x13f5d0.
- `miUnion` (konad.so, address 0x463000, 748 bytes): **inferred.** Region union: copies when either side is empty, otherwise
  merges bands through the routine; `miRegionCopy` is called at five places for the shortcut cases. Against `konal.so`: 1 of 187;
  immediates only; low halves: 1; first at +0xfc.
- `rrmValidateCID` (konad.so, address 0x476550, 524 bytes): **inferred.** Revalidates the clip id of a window: reads the window
  private (+76, +92) and screen entries (+32, +344) and calls the manager through an indirect pointer twice, six indirect calls in
  all, to set up the rendering-node binding of the clip. The routine is 129 instructions long. Against `konal.so`: 1 of 131;
  immediates only; low halves: 1; first at +0x154.
- `cfb16PolyFillArcSolidCopy` (konad.so, address 0x486c60, 544 bytes): **inferred.** Solid copy
  PolyFillArc for 16-bit pixels: loops over arcs (13 loop edges), takes the clip from entry +380 and fills spans through an
  indirect call. Against `konal.so`: 1 of 136; immediates only; low halves: 1; first at +0x78.
- `miRegionValidate` (konad.so, address 0x490c30, 1904 bytes): **inferred.** Sorts and merges the boxes of an appended region into
  canonical y-x banded form: reallocates with `Xrealloc`, allocates work arrays with `Xalloc`, calls `miRectAlloc` eight times
  while building bands and frees temporary storage with `Xfree`. Against `konal.so`: 4 of 476; immediates only; low halves: 4;
  first at +0x3d8.
- `nfbSlideAndSizeWindow` (konad.so, address 0x491c20, 5656 bytes): **established.** Combined move and resize. It follows the
  sample server's SlideAndSizeWindow: `UnmapWindow` when needed, `GravityTranslate` for bit gravity,
  `TraverseTree` over the children, `SetWinSize`, `SetBorderSize`,
  `MoveWindowInStack` and `ResizeChildrenWinSize`, calling many screen entries (+336 to +492) and `WindowsRestructured` at the
  end. Against `konal.so`: 1 of 1414; immediates only; low halves: 1; first at +0x120c.
- `ShareSwappingID` (konad.so, address 0x493e30, 724 bytes): **established.** Lets a window that starts a buffer swap join a
  display id already mid-swap in the same mode; it returns 1 when the window was given an id, else 0. Pass 1 walks the ids from
  the highest down to 1 and considers entries with bit 0x10 (swap pending) other than the window's own, whose first holder has the
  same hardware-dependent mode (+36) as the window. For each it walks the holder list of id 0 (entry +0 of the table, whatever
  entry it is considering) and notes whether any holder has bit 0x8 in its private byte +4. When none does, it gives the window
  the entry's id through a static helper and returns 1; the scan stops at an entry with bit 0x1. When some holder of id 0 does,
  pass 2 walks the same entries again. For each swap-pending entry other than the window's own it calls a static routine on the
  entry once per holder of id 0 with that bit, and gives the window the entry's id if `compareModes` accepts the window's modes
  against it. Bit 0x8 of private byte +4 is the swap-buffer resource: `konValidateSwapbuf` sets it after a successful validation
  (1012) and `rrmInvalidate` clears it (hooks). Id 0 is the first of the colour-index ids the server reserves at start-up.
  **Inferred:** a window that starts a swap may join an id that is mid-swap when the modes agree. Against `konal.so`: 1 of 181;
  immediates only; low halves: 1; first at +0x64.
- `cfbPolyFillArcSolidCopy` (konad.so, address 0x4a0e80, 544 bytes): **inferred.**
  PolyFillArc with a solid colour and copy operation, 8 bits per pixel: fetches the clip through entry +380 and calls a shared
  helper; 136 instructions. Against `konal.so`: 1 of 136; immediates only; low halves: 1; first at +0x78.
- `mfbValidateGC` (konad.so, address 0x4ace80, 3204 bytes): **inferred.**
  ValidateGC for the monochrome layer: when the context changed it recomputes the composite clip with `miComputeCompositeClip`,
  reduces the raster operation with `mfbReduceRop`, selects the right operation set (and replaces it via `miDestroyGCOps` when the
  font or fill style changed) and rotates the tile with `mfbCopyRotatePixmap`. Against `konal.so`: 1 of 801; immediates only; low
  halves: 1; first at +0x338.
- `konWriteFBSubBlock` (konad.so, address 0x502ed0, 3892 bytes): **established.** Frame-buffer band write. It reaches the screen
  from the drawable (+16), the Kona screen private through `konScreenPrivateIndex` and the command window pointer at private +8,
  and sizes the source image as width x height x 4 bytes. It sends the position token 298 (`HP_X_LOADPOS`), the setup token 310
  (`HP_X_PIX_SETUP`) with a flags word, and token 313 (`HP_X_PIX_WRITE`) once per pass of its loop, each token stored at offset 0
  of the window with its payload words stored inline after it, and calls `kon_loadImpWordGC` at three sites. Bit 0x10 of the flags
  word is set when the whole image is larger than 0x12000 bytes (73728) and the screen's configuration word (+304 of the record at
  +20 of the private) selects the 0x1000 class or any bit of its top nibble; the band is then sent by `ioctl` request 10001
  (`KONA_DMAWRITE`), a failure printing "KONA_DMAWRITE failed" through `ErrorF` and `perror`. Against `konal.so` the instruction
  stream is the same except for that size threshold, a two-instruction constant here and `li 0x9000` (36864 bytes) there, which
  makes this build 4 bytes longer (3892 against 3888) and shifts some register choices.
- `miRegionEmpty` (konad.so, address 0x506940, 104 bytes): **established.** Resets a region (argument a0) to empty. When the data
  pointer at +8 is non-null and the first word of the block it points to is non-zero, it calls `Xfree` on that block (a block whose
  first word is zero, the shared empty block, is not freed). It then stores the address of the static empty block (`miEmptyData`) at
  +8 and sets the extents' second corner to the first: the halfword at +4 takes the one at +0 and the one at +6 the one at +2.
  Against `konal.so`: 1 of 26; immediates only; low halves: 1; first at +0x14.
- `rrmDelayValidateClipCancel` (konad.so, address 0x507430, 136 bytes): **established.** Drops a queued clip validation. It
  fetches the window's rrm private record (window +132 at `rrmWindowPrivateIndex`) and returns when there is none or when its word
  +68 (the timer) is zero. Otherwise it calls `Xfree` on the word at +72, `TimerFree` on the word at +68, and zeroes both words.
  Against `konal.so`: 1 of 34; immediates only; low halves: 1; first at +0x8; gp 0x98810 and 0x98830.
- `cfb32FillBoxTileOdd` (konad.so, address 0x5074c0, 56 bytes): **established.** Wrapper with no test of its own: it calls
  `cfb32FillBoxTile32sCopy` with its first six arguments unchanged and the seventh and eighth set to 3 and -1 (n32 registers a6 and
  a7), then returns that call's result. The raster-op test the earlier text described is not in this body. Against `konal.so`: 1 of
  14; immediates only; low halves: 1; first at +0x8; gp 0x98780 and 0x987a0.
- `nfbSaveAreas` (konad.so, address 0x507500, 80 bytes): **inferred.** Save-under hook that calls `nfbDoBitBltSP` with its five
  arguments rotated: the arguments (a0, a1, a2, a3, a4) go out as (a0, a4, a1, a2, a3), followed by 3 and -1 as the sixth and
  seventh (a5, a6), and it returns that call's result. That 3 is the copy raster op is inferred from `cfbDoBitblt`, which treats 3
  as its copy case; that -1 is an all-planes mask is inferred. Against `konal.so`: 1 of 20; immediates only; low halves: 1; first at
  +0x8; gp 0x98740 and 0x98760.
- `mfbReduceRop` (konad.so, address 0x507550, 404 bytes): **established.** Collapses a raster op and a one-bit source pixel into
  one of the four simple results (clear, set, invert or leave alone, returned as 0, 15, 10 and
  5): a jump table over the sixteen raster ops, with one table for source bit set and one for clear. A leaf, and it is called from
  `cfbCopyPlane`, `mfbCopyPlane`, `mfbCreateGC`. Against `konal.so`: 1 of 101; immediates only; low halves: 1; first at +0xc.
- `cfbSegmentSS` (konad.so, address 0x5076f0, 3036 bytes): **inferred.** The
  PolySegment sibling of the polyline above, for 8-bit solid segments. It tests each endpoint pair and hands horizontals to
  `cfbHorzS`, verticals to `cfbVertS`, diagonals to `cfbBresS`, and clipped segments to
  `miZeroClipLine`. Against `konal.so`: 1 of 759; immediates only; low halves: 1; first at +0x2c.
- `konCopyGC` (konad.so, address 0x5082e0, 168 bytes): **established.** Copy-GC wrapper: it puts back the original function table
  saved at +0xa4 of the GC private record over the context's own (gc +0x44), calls the original entry at +0x8, then saves the table
  at +0xa4 again and reinstalls the module's own table, which lives at 0x593e58 in the writable data section. No token. Against
  `konal.so`: 1 of 42; immediates only; low halves: 1; first at +0x10; gp 0x97960 and 0x97980.
- `nfbUnrealizeCursor` (konad.so, address 0x508540, 204 bytes): **established.** Releases a cursor's realised copy: frees up to
  three blocks with `Xfree` and reports a bad cursor with `ErrorF`. Against `konal.so`: 1 of 51; immediates only; low halves: 1;
  first at +0x20.
- `rrmInvalidate` (konad.so, address 0x5091b0, 560 bytes): **established.** The hook that tells the kernel to drop a window's
  resources. With a zero mask it uses every valid bit of the byte at +4 of the rrm private. If none is set it returns. Otherwise
  it clears the bits and calls `ioctl` with request 1010 on the descriptor at +116 of the screen, passing a block with the
  rendering-node id (+12 of the private), the window id (+4), the bits and two result words. For the swap-buffer bit (0x8) it
  copies bit 0x4 of the returned mode into the window's word at +32, calls `UpdateDIDMode` with the result's bit 0, runs
  `SetDIDMode` only when that bit is set and the flag argument is nonzero, and when bit 0x4 changed it stores the new value at +2
  of the window's double-buffer private, advances `globalSerialNumber` (wrapping to 1 above 0x1000000) and calls
  `FlushClientCaches`. For the clip bit (0x2) it calls `rrmInvalidateCID` when word +4 of the screen's rrm private is nonzero.
  Against `konal.so`: 1 of 140; immediates only; low halves: 1; first at +0x14; gp 0x96a90 and 0x96ab0.
- `miPolyText16` (konad.so, address 0x509520, 556 bytes): **established.**
  PolyText for 16-bit fonts: calls `GetGlyphs` twice and dispatches on the item type (font change versus text) to the GC's
  PolyGlyphBlt. Against `konal.so`: 1 of 139; immediates only; low halves: 1; first at +0x30.
- `cfbSegmentSD` (konad.so, address 0x509af0, 2560 bytes): **inferred.** Dashed
  PolySegment for 8-bit drawables. It reduces the raster op once, at entry, with `cfbReduceRasterOp` (a single call site), steps
  the dash pattern with `miStepDash` (two call sites), draws each dash by calling `cfbBresD` (two call sites) and trims clipped
  segments with `miZeroClipLine` (one call site). Against `konal.so`: 1 of 640; immediates only; low halves: 1; first at +0x24.
- `cfbPolyGlyphBlt8` (konad.so, address 0x50a4f0, 1780 bytes): **inferred.**
  PolyGlyphBlt for 8-bit drawables. It sums the glyph advances into one bounding box and compares it with the clip: a
  single-rectangle clip is tested directly, a complex one through the screen hook at +380 (0 outside, 2 partial, 1 wholly
  inside). Outside, it returns; a partial overlap goes to a local routine at 0x444260 that takes the same arguments; a box
  wholly inside is drawn here, one glyph at a time, dispatching on four glyph bits at a time through a 16-entry jump table, with
  the `endtab` mask on the right edge. It makes no call through a stippled-fill pointer. Against `konal.so`: 1 of 445;
  immediates only; low halves: 1; first at +0x5c.
- `miMarkWindow` (konad.so, address 0x50ada0, 108 bytes): **established.** Returns at once when the window already has a record at
  +68. Otherwise it allocates a 24-byte record with `XNFalloc`, fills halfword +0 from window halfword +8 and halfword +2 from
  window halfword +10, zeroes words +4 and +8 and stores the record at window +68. Against `konal.so`: 1 of 27; immediates only; low
  halves: 1; first at +0x10; gp 0x94ea0 and 0x94ec0.
- `miComputeCompositeClip` (konad.so, address 0x50ae10, 748 bytes): **established.** Recomputes a GC's composite clip from the
  drawable's clip and the client clip, using `NotClippedByChildren` when the GC subwindow mode is clip-by-children, and storing
  the result in the GC's private record found through `miGCPrivateIndex`. Against `konal.so`: 1 of 187; immediates only; low
  halves: 1; first at +0x14; gp 0x94e30 and 0x94e50.
- `kon_loadPixmapGC` (konad.so, address 0x50b100, 3400 bytes): **established.** Pixmap GC loader in the konad.so build: sends
  `HP_X_LOADGC` and `HP_X_PIX_SETUP` with the token numbers stored at offset 0 before their payloads, uses the same `kon_pack*`
  and `kon_main*` shift tables, and prints format errors with `ErrorF`. 3400 bytes against 3384. Against `konal.so`: 1 of 850;
  immediates only; low halves: 1; first at +0x10; gp 0x94b40 and 0x94b60.
- `cfb8OpaqueStipple32FS` (konad.so, address 0x50be50, 4260 bytes): **established.**
  FillSpans for an 8-bit opaque stipple of width 32. It loads the stipple state by calling `cfb8SetOpaqueStipple`, clips with
  `miClipSpans`, and writes four pixels per stipple nibble with the foreground and background. Against `konal.so`: 1 of 1065;
  immediates only; low halves: 1; first at +0x34.
- `cfb32DoBitbltOr` (konad.so, address 0x50d010, 2556 bytes): **inferred.** The 32-bit rectangle copy that ors source into
  destination, the same size as the xor version, and it is called from `cfb32CopyArea`, `cfb32DoBitblt`. Against `konal.so`: 1 of
  639; immediates only; low halves: 1; first at +0x1c.
- `cfb8SegmentSS1RectCopy` (konad.so, address 0x50dd30, 2236 bytes): **inferred.** Copy-mode 8-bit
  PolySegment in one clip rectangle. It uses the tables `cfbstarttab` and `cfbendtab` for edge words, steps inline and calls
  nothing. Against `konal.so`: 1 of 559; immediates only; low halves: 1; first at +0x4.
- `nfbReadDisplay` (konad.so, address 0x50e720, 5260 bytes): **established.** Reads pixels from the screen for the read-display
  extension. It walks `WindowTable` and the window records, locates the cursor with `GetSpritePosition` and `GetSpriteCursor`,
  assembles the reply in an `Xalloc` buffer, sends it with `WriteToClient` and frees it with `Xfree`; it reports bad requests with
  `ErrorF`. Against `konal.so`: 1 of 1315; immediates only; low halves: 1; first at +0x34.
- `miMoveWindow` (konad.so, address 0x50fec0, 696 bytes): **established.** Implements
  MoveWindow: updates the window size and border with `SetWinSize` and `SetBorderSize`, restacks with
  `MoveWindowInStack`, moves the children with `ResizeChildrenWinSize` and tells the server with `WindowsRestructured`. Against
  `konal.so`: 1 of 174; immediates only; low halves: 1; first at +0x2c.
- `cfb8ClippedLineXor` (konad.so, address 0x510180, 2712 bytes): **established.** Exclusive-or line drawer for 8-bit segments that
  may leave the clip box. It calls `miZeroClipLine` at two sites, once for the segment and once for its end point. Against
  `konal.so`: 1 of 678; immediates only; low halves: 1; first at +0x18.
- `nfbStereoCopyPlane` (konad.so, address 0x511130, 884 bytes): **inferred.** Stereo
  CopyPlane wrapper over the saved entry at +0x10 of the GC's original ops table (reached through GC +72). A pixmap destination
  (type byte 1) calls it once, unchanged. Otherwise it calls it twice, once per eye, shifting the destination drawable's y
  (halfword +10; the GC private's +90 and the source y argument when source and destination are the same drawable) by the
  halfword at +226 of the screen record, down for one call and up for the other, with the order set by whether the word at +220
  equals 1. A non-zero result of the first call goes to screen hook +348; the second call's result is returned. Against
  `konal.so`: 1 of 221; immediates only; low halves: 1; first at +0x24.
- `konStereoCopyArea` (konad.so, address 0x5114b0, 1220 bytes): **established.** Stereo form of the area copy with nine arguments
  (source, destination, context, source x and y, width, height, destination x and y), calling slot +12 of the saved table. When
  the destination is a pixmap (type byte +0 equal to 1) it calls the slot once and returns its region. Otherwise it makes the two
  passes, shifting the destination y by the eye offset: in the argument itself (the ninth, on the stack) when source and
  destination are the same drawable, and in the destination's y position (+10) when they differ, together with the private y
  (+90). After the first pass the returned region, if any, is destroyed through the screen hook at +348, and the region of the
  second pass is returned. Against `konal.so`: 1 of 305; immediates only; low halves: 1; first at +0x10; gp 0x8e790 and 0x8e7b0.
- `kon_freeCachedStipple` (konad.so, address 0x511980, 572 bytes): **established.** Releases a stipple slot: clears the owner's
  slot index (private +0x60 set to -1) and unlinks the slot from the screen's list; it reports a corrupt list with `ErrorF`.
  Against `konal.so`: 1 of 143; immediates only; low halves: 1; first at +0x10; gp 0x8e2c0 and 0x8e2e0.
- `cfb32PolyPoint` (konad.so, address 0x511bc0, 1312 bytes): **inferred.**
  PolyPoint for 32-bit drawables. The clip region and the colour words come from the GC private (+8; +12 and +16), and a
  separate loop handles the mode argument equal to 1. Each point is tested against the clip boxes with a combined sign check on
  both coordinates, and the destination word becomes `(dest & mask) ^ colour`; one path calls `ffs` on a mask word. Only part of
  the body was read. Against `konal.so`: 1 of 328; immediates only; low halves: 1; first at +0xc; gp 0x8e080 and 0x8e0a0.
- `konImageGlyphBlt` (konad.so, address 0x512190, 2860 bytes): **established.** General image-text glyph blit, konad.so build: the
  same token sequence as the `kona.so` routine (`HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`,
  `HP_X_BOX`, `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE`,
  `HP_X_PIX_FINISH`), each framed by a token word at offset 0. It measures with `QueryGlyphExtents` and falls back to
  `nfbImageGlyphBlt`. 2860 bytes against 2804. Against `konal.so`: 1 of 715; immediates only; low halves: 1; first at +0x10; gp
  0x8dab0 and 0x8dad0.
- `mfbPixmapToRegion` (konad.so, address 0x512cc0, 2944 bytes): **established.** Converts a one-bit pixmap into a region of
  rectangles, one per run of set bits, reallocating the box list with `miRectAlloc` (six sites) and reporting an oversized
  transition list with `ErrorF`. Against `konal.so`: 1 of 736; immediates only; low halves: 1; first at +0x20.
- `konLocatorFilter` (konad.so, address 0x513b70, 100 bytes): **established.** The pointer-locator filter hook. After saving its
  four arguments it branches straight to the epilogue at +0x50, so the `ErrorF` call that follows (format "konLocatorFilter:  x =
  %d, y = %d\n", with the first two arguments) is never reached; the function returns without effect. Against `konal.so`: 1 of 25;
  immediates only; low halves: 1; first at +0x10; gp 0x8c0d0 and 0x8c0e0.
- `nfbReadDisplayRegisterInfo` (konad.so, address 0x513be0, 168 bytes): **established.** Takes (screen, info). It copies the word
  at info +8, ored with 4, to +8 of a static record at 0x594410, calls `ReadDisplayRegisterInfo` with the screen and that record,
  and then, once per server generation, calls `AllocateScreenPrivateIndex` (the index and the generation are kept in statics). When
  the index is not negative it stores `info` in the screen's private slot (screen +436). The return value is the new index (or the
  allocator's error) on the allocating call, and the `ReadDisplayRegisterInfo` result on later calls. Against `konal.so`: 1 of 42;
  immediates only; low halves: 1; first at +0x10; gp 0x8c060 and 0x8c070.
- `mfbZeroPolyArcSS` (konad.so, address 0x513c90, 476 bytes): **inferred.** Zero-width arc entry for one-bit drawables: skipped
  when the GC's plane word at +0x14 is zero, otherwise the same walk as the colour versions. For each arc, a non-square arc with
  a side over 800 pixels goes to `miPolyArc` (a square one is never diverted for size); an arc whose box passes 0x7fff, or is
  not wholly inside the clip (the screen hook at +380 must answer 1), goes to `miZeroPolyArc`; a wholly visible one goes to the
  one-bit routine at a local address. Against `konal.so`: 1 of 119; immediates only; low halves: 1; first at +0x44.
- `rrmCopyWindow` (konad.so, address 0x5141e0, 120 bytes): **inferred.** Copy-window wrapper. It finds the rrm screen record
  through the screen's private array (screen +436 at `rrmScreenPrivateIndex`) and calls the hook at +120 of that record with the
  window and the region unchanged and the second argument rebuilt (its upper 32 bits kept, the lower 32 cleared with `dsra32` then
  `dsll32`). While the hook runs the word at screen +224 holds the hook's own address (stored in the call's delay slot); afterwards
  the word it held before is put back. The function leaves that old word in `v0` and does not return the hook's result. Against
  `konal.so`: 1 of 30; immediates only; low halves: 1; first at +0x10; gp 0x8ba60 and 0x8ba70.
- `konPolyGlyphBltSolidTE3` (konad.so, address 0x514260, 5716 bytes): **established.** Solid poly-text glyph blit for -pixel
  fonts, konad.so build: `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`,
  `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`, each token stored as a word at offset 0 ahead of its payload
  (`kona.so` addresses the first payload word through the token). It loads the GC with `kon_loadBitmapGC`, declines to
  `nfbSolidPolyGlyphBlt`, and prints through `ErrorF`. Against `konal.so`: 1 of 1429; immediates only; low halves: 1; first at
  +0x10; gp 0x8b9e0 and 0x8b9f0.
- `konPolyGlyphBltSolidTE6` (konad.so, address 0x5158c0, 5912 bytes): **established.** Solid poly-text glyph blit for -pixel
  fonts, konad.so build: `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`,
  `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`, each token stored as a word at offset 0 ahead of its payload
  (`kona.so` addresses the first payload word through the token). It loads the GC with `kon_loadBitmapGC`, declines to
  `nfbSolidPolyGlyphBlt`, and prints through `ErrorF`. Against `konal.so`: 1 of 1478; immediates only; low halves: 1; first at
  +0x10; gp 0x8a380 and 0x8a390.
- `konPolyGlyphBltSolidTE8` (konad.so, address 0x5170f0, 4756 bytes): **established.** Solid poly-text glyph blit for -pixel
  fonts, konad.so build: `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`,
  `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`, each token stored as a word at offset 0 ahead of its payload
  (`kona.so` addresses the first payload word through the token). It loads the GC with `kon_loadBitmapGC`, declines to
  `nfbSolidPolyGlyphBlt`, and prints through `ErrorF`. Against `konal.so`: 1 of 1189; immediates only; low halves: 1; first at
  +0x10; gp 0x88b50 and 0x88b60.
- `konPolyFillRectStippledC` (konad.so, address 0x518390, 5752 bytes): **established.** Stippled-C
  PolyFillRect in the konad.so build: the same cache steps as `kona.so` (`kon_hitCachedStipple`, `kon_allocCachedStipple` and
  `kon_loadCachedStipple`, the last two at two sites each), then `HP_X_LOADSTIPPLE`, `HP_X_ROTATESTIPPLE`,
  `HP_X_LOADPOS`, `HP_X_LOADGC`, `HP_X_LOADCLIP` and the
  `HP_X_RECT6`, `HP_X_DATA2` to `HP_X_DATA10`,
  `HP_X_RECT`, `HP_X_BOX` run. Each token is written as a word at the FIFO pointer's offset 0 before its payload, and the
  rectangle words are stored inline, so it grows from 4996 to 5752 bytes. Against `konal.so`: 1 of 1438; immediates only; low
  halves: 1; first at +0x10; gp 0x878b0 and 0x878c0.
- `mfbWhiteSolidFS` (konad.so, address 0x51c2b0, 932 bytes): **established.**
  FillSpans with solid white on a one-bit drawable: `miFindMaxBand` and `miClipSpans`, then sets bits using
  `starttab`, `endtab` and `partmasks`. Against `konal.so`: 1 of 233; immediates only; low halves: 1; first at +0x2c.
- `nfbCopyArea` (konad.so, address 0x51c660, 2692 bytes): **established.**
  CopyArea in the generic layer. It decides between a host copy and the window-to-window path: calls `nfbDoBitBltSS` (three sites)
  for screen-to-screen, `nfbDoBitBltSP` for screen-to-pixmap, `cfb16CopyArea`, `cfb32CopyArea` or
  `cfbCopyArea` for pixmaps, `miCopyArea` as a fallback, `NotClippedByChildren` for the clip and
  `miHandleExposures` for the exposures. Against `konal.so`: 1 of 673; immediates only; low halves: 1; first at +0x48.
- `cfb32FillRectSolidCopy` (konad.so, address 0x51d0f0, 764 bytes): **established.** Solid copy-mode rectangle fill for 32-bit
  pixels. The screen private record supplies the frame buffer base and stride (at +0x1c and +0x20) and the loop stores one word
  per pixel, with no edge masks needed. Against `konal.so`: 1 of 191; immediates only; low halves: 1; first at +0x24.
- `konStereoSetSpans` (konad.so, address 0x51d480, 1204 bytes): **established.** Stereo form of the span write with seven
  arguments: the points are the fourth, the widths the fifth and the count the sixth. Instead of copying, it adjusts the y
  halfword (+2) of each of the count points of the caller's array in place before each pass: lowered by the eye offset for the
  first pass, raised by it for the second in the stereo order, and the reverse for the other order, so the array is back to its
  input values when the function returns. Slot +4 is called twice, after `konValidateWindowGC` with mask 8192. Against `konal.so`:
  1 of 301; immediates only; low halves: 1; first at +0x10; gp 0x827c0 and 0x827d0.
- `cfb16MatchCommon` (konad.so, address 0x51d940, 216 bytes): **established.** The 16-bit version of the table chooser: selects
  among `cfb16TEOps`, `cfb16TEOps1Rect`, `cfb16NonTEOps` and
  `cfb16NonTEOps1Rect`. Against `konal.so`: 1 of 54; immediates only; low halves: 1; first at +0x8.
- `mfbXRotatePixmap` (konad.so, address 0x51da20, 348 bytes): **established.** Rotates a one-bit pixmap horizontally; it reports
  an unexpected width with `ErrorF` and uses the table `endtab` for the row mask. Against `konal.so`: 1 of 87; immediates only;
  low halves: 1; first at +0xc; gp 0x82220 and 0x82230.
- `cfbPushPixels8` (konad.so, address 0x51dc80, 3956 bytes): **inferred.**
  PushPixels for 8-bit drawables: expands a one-bit mask into pixels using `cfb8BitLenMasks`, or passes the request to
  `mfbPushPixels` when the GC does not fit; there is one indirect call. Against `konal.so`: 1 of 989; immediates only; low halves:
  1; first at +0x3c.
- `cfb16PolyPoint` (konad.so, address 0x51ec10, 1312 bytes): **established.**
  PolyPoint on 16-bit drawables: plots each point inside the clip as a halfword store under the raster op, calling `ffs` on a mask
  word, in the same loop shape the 8-bit routine uses. Against `konal.so`: 1 of 328; immediates only; low halves: 1; first at
  +0xc; gp 0x81030 and 0x81050.
- `cfb16FillBoxTile32sCopy` (konad.so, address 0x51f130, 2476 bytes): **inferred.** The same box fill for 16-bit pixels: the tile
  row is held as one word of two pixels and replicated across the box, and it is called from `cfb16FillBoxTileOdd`,
  `cfb16FillRectTileOdd`. Against `konal.so`: 1 of 619; immediates only; low halves: 1; first at +0x50.
- `kon_loadOpaqueBitmapGC` (konad.so, address 0x51fae0, 280 bytes): **established.** Opaque-bitmap GC loader in the konad.so
  build: the same thirteen `HP_X_LOADGC` words with the background colour in the foreground slot (+0x2c and +0x30), preceded by
  the token word at offset 0 rather than addressed through the token. No calls; 280 bytes against 272. Against `konal.so`: 1 of
  70; immediates only; low halves: 1; first at +0x8.
- `cfb16FillSpanTile32sCopy` (konad.so, address 0x51fc00, 2028 bytes): **inferred.** Span fill with a 32-bit-wide tile for 16-bit
  pixels, copy mode. A leaf taking the tile row for each span's y and writing it with the tables `cfb16starttab` and `cfb16endtab`
  at the ends. Against `konal.so`: 1 of 507; immediates only; low halves: 1; first at +0x50.
- `konCloseScreen` (konad.so, address 0x522db0, 468 bytes): **established.** The screen close hook. It reads the screen private at
  `konScreenPrivateIndex`, calls `konCursorOn` with 0, then `konBlankScreen` (printing "konBlankScreen() failed" through
  `ErrorF` when it fails), then calls the screen hook at +352 with a pointer to each of the three 12-byte records of the block
  whose pointer is at private +64. It detaches the video-control extension with `konDetachXvc`, frees the blocks at private +64,
  +40, +44, +48 and +52 with `Xfree`, runs `kon_freeCursorCaches` and `kon_GCOpsCacheReset`, calls a local routine at 0x50e5f0
  with the screen private, then closes the lower layers in the order `rrmCloseScreen`, `nfbHWColormapScreenClose` and
  `nfbCloseScreen`, whose result it returns. Against `konal.so`: 2 of 117; immediates only; low halves: 2; first at +0x10; gp
  0x7ce90 and 0x7ceb0.
- `mfbWhiteStippleFS` (konad.so, address 0x522f90, 1252 bytes): **established.**
  FillSpans with a white stipple on one-bit drawables; clipped by `miClipSpans` and merged into the destination word by word.
  Against `konal.so`: 1 of 313; immediates only; low halves: 1; first at +0x2c.
- `nfbTiledFS` (konad.so, address 0x523920, 332 bytes): **inferred.**
  FillSpans with a tile: loops over the spans, calling the tiled fill routine named in the window's private record for each; in
  `konad.so` its address is stored at 0x59433c. Against `konal.so`: 1 of 83; immediates only; low halves: 1; first at +0x28.
- `cfb16FillSpanTileOddCopy` (konad.so, address 0x523ac0, 2628 bytes): **inferred.** Span fill with an odd-width tile for 16-bit
  pixels, copy mode; a leaf that tracks the tile column across the span with partial first and last words, and it is called from
  `cfb16UnnaturalTileFS`. Against `konal.so`: 1 of 657; immediates only; low halves: 1; first at +0x5c.
- `mfbCopyArea` (konad.so, address 0x524510, 2136 bytes): **inferred.**
  CopyArea for one-bit drawables. It selects `mfbDoBitbltCopy`, `mfbDoBitbltXor`,
  `mfbDoBitbltOr`, `mfbDoBitbltCopyInverted` or `mfbDoBitbltGeneral` by raster op, makes its calls through the chosen routine
  (fifteen indirect calls in all), calls `NotClippedByChildren`, and ends with `miHandleExposures`. Against `konal.so`: 1 of 534;
  immediates only; low halves: 1; first at +0x3c.
- `cfbPolyPoint` (konad.so, address 0x5251f0, 1244 bytes): **established.**
  PolyPoint for 8-bit drawables: for each point inside the composite clip it stores the pixel under the raster op, and it calls
  `ffs` to locate set bits in a mask word while it merges. Against `konal.so`: 1 of 311; immediates only; low halves: 1; first at
  +0xc; gp 0x7aa50 and 0x7aa70.
- `kon_allocCachedStipple` (konad.so, address 0x525750, 204 bytes): **established.** Takes the next slot of the stipple cache from
  the screen record (+0x68 slot pointer, +0x6c list head), calling `kon_freeCachedStipple` for the slot's old owner when it has
  one, and records the new owner GC in the slot. Against `konal.so`: 1 of 51; immediates only; low halves: 1; first at +0x10; gp
  0x7a4f0 and 0x7a510.
- `cfbFillSpanTileOddCopy` (konad.so, address 0x525c30, 2612 bytes): **inferred.** Leaf routine (no calls) that fills spans with a
  tile for 8-bit pixels in copy mode; its edges use `cfbstarttab`, `cfbendtab`, `cfbstartpartial` and `cfbendpartial`. That the
  tile is odd-width and that it parallels the 16-bit routine rest on the name; the body was not read for either. Against
  `konal.so`: 1 of 653; immediates only; low halves: 1; first at +0x5c. Unverified.
- `cfbPolyFillRect` (konad.so, address 0x526670, 2400 bytes): **inferred.**
  PolyFillRect for 8-bit drawables. It selects the fill routine from the GC's fill style (bits 24-25 of GC +0x10) and, for solid
  fills, the raster op (copy or xor, else the general routine), choosing among `cfbFillRectSolidGeneral`,
  `cfbFillRectSolidCopy`, `cfbFillRectSolidXor`, `cfbFillRectTileOdd`, `cfbFillRectTile32Copy`, `cfbFillRectTile32General`,
  `cfb8FillRectTransparentStippled32`, `cfb8FillRectOpaqueStippled32` and `cfb8FillRectStippledUnnatural`. It moves the
  rectangles by the drawable origin, clips them against the GC's clip region and calls the chosen routine through a pointer on
  the clipped box list. It does not call `miPolyFillRect`: its only call sites are a hook at +396 and the chosen routine.
  Against `konal.so`: 1 of 600; immediates only; low halves: 1; first at +0x28.
- `miFillWideEllipse` (konad.so, address 0x526fd0, 1124 bytes): **established.** Fills a wide-line ellipse by looping over rows
  and emitting spans, and frees its temporary span array with `Xfree`. Against `konal.so`: 1 of 281; immediates only; low halves:
  1; first at +0x48.
- `nfbMarkUnrealizedWindow` (konad.so, address 0x527440, 292 bytes): **inferred.** Marks a window when it is unrealised: it makes
  three indirect calls into the screen's mark hooks to flag the window and its parents; in `konad.so` its address is stored at
  0x592804. Against `konal.so`: 1 of 73; immediates only; low halves: 1; first at +0x8; gp 0x78800 and 0x78820.
- `miDestroyGC` (konad.so, address 0x527570, 160 bytes): **inferred.** Destroys a GC. The record at GC +76 (at the static
  `miGCPrivateIndex`) holds two clip pointers: when the word at +4 is non-null it is released through the screen hook at +240; when
  bit 6 (0x40) of the word at +0 is set the word at +8 is released through the screen hook at +348. It then calls `miDestroyGCOps`
  once, with the word at GC +72, and returns that call's result. Against `konal.so`: 1 of 40; immediates only; low halves: 1; first
  at +0x8; gp 0x786d0 and 0x786f0.
- `SetNoStealID` (konad.so, address 0x527610, 68 bytes): **established.** Protects a display id from stealing. It takes the
  screen's rrm private through the screen's private array (+436) at `rrmScreenPrivateIndex`, steps to the id's 36-byte entry (the
  table starts at +152) and ors 0x20 into the entry's flag halfword at +168 from the private. Against `konal.so`: 1 of 17;
  immediates only; low halves: 1; first at +0x4.
- `cfb16CopyPixmap` (konad.so, address 0x527660, 148 bytes): **established.** Duplicates a pixmap: it calls the hook at screen
  +236 (the screen is the word at pixmap +16) with the screen, the halfwords at +12 and +14, the byte at +2 and the word at +28,
  then copies word-pitch times height bytes (word +28 times the halfword at +14) with `memmove` from the data pointer at +32 of the
  source to +32 of the new pixmap. It returns the new pixmap, or 0 when the hook returns 0. Against `konal.so`: 1 of 37; immediates
  only; low halves: 1; first at +0x28.
- `cfb32ZeroPolyArcSSGeneral` (konad.so, address 0x527700, 468 bytes): **inferred.** Zero-width arc entry for 32-bit pixels under
  any raster op: the arc walk of the 16-bit entry, sending big arcs to `miZeroPolyArc`, clipped or out-of-range ones to
  `miPolyArc` and wholly visible ones to the 32-bit routine. Against `konal.so`: 1 of 117; immediates only; low halves: 1; first
  at +0x24.
- `cfbCopyPlane1to8` (konad.so, address 0x5278e0, 3568 bytes): **inferred.** Expands a one-bit-deep source rectangle into 8-bit
  pixels: each source bit selects the foreground or background value kept in `cfb8StippleXor` and `cfb8StippleAnd`, merged by the
  rop in `cfb8StippleRRop`. Against `konal.so`: 1 of 892; immediates only; low halves: 1; first at +0x34.
- `miGetImage` (konad.so, address 0x5286d0, 768 bytes): **established.** Default
  GetImage built on CopyArea: it gets a scratch GC with `GetScratchGC`, adjusts it with
  `DoChangeGC`, validates with `ValidateGC`, copies into a temporary pixmap and frees the scratch GC with `FreeScratchGC`. It also
  calls `ffs` and the local routine at 0x4b18b0. Against `konal.so`: 1 of 192; immediates only; low halves: 1; first at +0x4c.
- `cfbDoBitblt` (konad.so, address 0x5289d0, 136 bytes): **established.** Chooser for an 8-bit blit: when the low byte of the
  plane mask (a5) is not 255 it calls `cfbDoBitbltGeneral`; otherwise it picks by raster op (a2): 3 calls `cfbDoBitbltCopy`, 6 calls
  `cfbDoBitbltXor`, 7 calls `cfbDoBitbltOr`, and any other op calls `cfbDoBitbltGeneral`. The arguments pass through unchanged and
  the chosen routine's result is not used. Against `konal.so`: 1 of 34; immediates only; low halves: 1; first at +0x10; gp 0x77270
  and 0x77290.
- `cfb8LineSS1RectCopy` (konad.so, address 0x528e50, 2088 bytes): **established.** Copy-mode 8-bit polyline in one clip rectangle.
  It reads the zero-line screen index, takes the root pixmap pointer from screen +0x74 for a window and the clip rectangle from
  the composite clip in the GC private data, and steps every segment inline with no callees. Against `konal.so`: 1 of 522;
  immediates only; low halves: 1; first at +0x4.
- `miInverse` (konad.so, address 0x529680, 356 bytes): **established.** Computes the inverse of a region inside a bounding box: it
  subtracts the region from the box, frees the temporary with `Xfree` and recomputes the extents using `miSetExtents`. Against
  `konal.so`: 1 of 89; immediates only; low halves: 1; first at +0x20.
- `nfbStereoPolyPoint` (konad.so, address 0x5297f0, 452 bytes): **established.** Stereo
  PolyPoint: the saved routine is entry +0x14 of the operations vector, called once per eye with the point list moved by the eye
  offset and moved back. Against `konal.so`: 1 of 113; immediates only; low halves: 1; first at +0x1c.
- `nfbStereoPolyRectangle` (konad.so, address 0x5299c0, 716 bytes): **established.** Stereo
  PolyRectangle, saved entry +0x20, with the same copied rectangle array (`Xalloc`, `Xfree`) as the segment wrapper. Against
  `konal.so`: 1 of 179; immediates only; low halves: 1; first at +0x38.
- `mfbStippleWhiteArea` (konad.so, address 0x52a1a0, 3524 bytes): **established.** Sets bits through a stipple over a list of
  boxes; a leaf that rotates the stipple row for each scanline and merges it with the edge masks, and it is called from
  `mfbValidateGC`. Against `konal.so`: 1 of 881; immediates only; low halves: 1; first at +0x28.
- `rrmValidateTree` (konad.so, address 0x54ba60, 180 bytes): **inferred.** Hook for
  ValidateTree: if the window has no rrm private record yet it calls the saved ValidateTree hook (offset +0x7c of the rrm screen
  record) with the window and the tree, then reinstalls itself at screen +0xcc. When the window already has a record it calls a
  local routine through the global offset table instead. Against `konal.so`: 1 of 45; immediates only; low halves: 1; first at
  +0xa0; gp 0x541e0 and 0x541e0.
- `cfb32PolyFillArcSolidCopy` (konad.so, address 0x5547e0, 544 bytes): **inferred.** Solid-fill arc entry for 32-bit copy mode. It
  walks 12-byte arc records: empty arcs, arcs over 800 pixels and boxes past 32767 or not wholly inside the clip (tested with the
  screen hook at +0x17c) go one at a time to `miPolyFillArc`; the rest are filled by the module's own routines, split on whether
  the end angle lies within +-23040 (a half turn in 64ths of a degree) Against `konal.so`: 1 of 136; immediates only; low halves:
  1; first at +0x78.
- `konAttachXvc` (konad.so, address 0x555bb0, 228 bytes): **established.** Connects the screen to the video-control extension. It
  reads the environment variable `XVC_DEBUG` with `getenv` and stores a flag, passes four callback addresses to
  `SDBsetupMemoryInterface` (the extension's memory interface), calls a local routine at 0x4f4490 with the screen and, when that
  returns non-zero, hands the screen and the result to `XSGIvcScreenInit`. It returns 1 in that case and 0 otherwise. Against
  `konal.so`: 1 of 57; immediates only; low halves: 1; first at +0x68; gp 0x4a090 and 0x4a090.
- `miFillConvexPoly` (konad.so, address 0x55c630, 1964 bytes): **inferred.** Fills a convex polygon directly. It first calls a
  local routine at 0x576a00 with the point list and count, which returns the index of the top vertex and gives two extreme
  values through two pointers; it then walks both edges with integer stepping and hands the spans to the GC's FillSpans entry
  (GC +72, entry 0, called with the sorted flag set). It is called from `miFillPolygon`. Against `konal.so`: 1 of 491;
  immediates only; low halves: 1; first at +0x4c.
- `konDrawImage` (konad.so, address 0x55e6a0, 3944 bytes): **established.** Image write to the frame buffer. It loads state with
  `kon_loadPixmapGC`, reaches the Kona screen private through `konScreenPrivateIndex` and the window's private through
  `nfbWindowPrivateIndex` and `dbcWindowPrivateIndex`, and sends `HP_X_LOADCLIP`,
  `HP_X_LOADPOS`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH` with the token numbers stored at offset 0 and the pixel words inline. The
  flags word gets bit 0x10 at three sites when the whole image is larger than 0x12000 bytes (73728) and the screen's configuration
  word (+304) selects the 0x1000 class or any top-nibble bit; those writes go through `ioctl` request 10001 (`KONA_DMAWRITE`),
  with `perror` after a failed call and six `ErrorF` sites. Against `konal.so` only the threshold differs: three two-instruction
  constants here against `li 0x9000` (36864 bytes) there, 12 bytes more code (3944 against 3932), and the global-pointer offset of
  the prologue.
- `mfbBlackStippleFS` (konad.so, address 0x55f610, 1284 bytes): **established.**
  FillSpans with a black stipple on one-bit drawables; same flow as the white one, clearing instead of setting, and it is called
  from `mfbValidateGC`. Against `konal.so`: 1 of 321; immediates only; low halves: 1; first at +0x2c.
- `konValidateWindowGC` (konad.so, address 0x55fb20, 2320 bytes): **established.** Re-validates a window GC when its state
  changed: it decides from the fill style whether the context uses the solid, tiled, stippled or opaque-stippled operation vector
  (`konSolidPrivOps`, `konTiledCAccelPrivOps`, `nfbTiledPrivOps`,
  `konStippledCPrivOps`, `nfbStippledPrivOps`, `nfbOpStippledPrivOps`), expands the tile or stipple with
  `konExpandTile`, `konExpandStipple` and `konTilePatterns`, reloads the cache with
  `kon_freeCachedStipple`, re-parses the context with `kon_parseGC`, and ends in `FatalError` on an illegal fill style. Against
  `konal.so`: 1 of 580; immediates only; low halves: 1; first at +0x10; gp 0x40120 and 0x40110.
- `nfbStereoPolyline` (konad.so, address 0x560430, 452 bytes): **established.** Line-drawing wrapper for stereo windows that calls
  the saved entry at +0x18 once per eye; the point list itself is not shifted because the eye offset is applied to the drawable's
  y. Against `konal.so`: 1 of 113; immediates only; low halves: 1; first at +0x1c.
- `konStereoFillPolygon` (konad.so, address 0x560600, 912 bytes): **established.** Stereo form of the polygon fill (drawable,
  context, shape, mode, count, points). It allocates count x 4 bytes with `Xalloc`, copies the x and y halfwords of each point
  into it, and calls slot +40 twice: the copy goes to the first pass and the caller's points to the second. Positions and buffer
  words follow the common two-pass rule (+96 lowered then +100 restored, or +100 raised then +96 restored), each pass after
  `konValidateWindowGC` with mask 8192, and the block is freed at the end. Against `konal.so`: 1 of 228; immediates only; low
  halves: 1; first at +0x10; gp 0x3f640 and 0x3f630.
- `cfb32FillRectSolidXor` (konad.so, address 0x560990, 1032 bytes): **inferred.** Exclusive-or solid rectangle fill for 32-bit
  pixels; a leaf that xors each destination word with the foreground, and it is called from `cfb32PolyFillRect`. Against
  `konal.so`: 1 of 258; immediates only; low halves: 1; first at +0x30.
- `miOpqStipDrawable` (konad.so, address 0x560da0, 1368 bytes): **established.** Draws an opaque stipple into a drawable by the
  two-pass method: `GetScratchGC` for a work context, `dixChangeGC` (four sites) and `ValidateGC` (five sites) to switch between
  background and foreground fills, `miClearDrawable` for the background and `FreeScratchGC` when done. Against `konal.so`: 1 of
  342; immediates only; low halves: 1; first at +0x40.
- `konTiledFillRects` (konad.so, address 0x561310, 92 bytes): **established.** Stub for tiled FillRects on the pipe path: it saves
  its four arguments and branches over its only call, an `ErrorF` with a message string, to the epilogue. The call is unreachable,
  so the function prints nothing and returns without setting a result. Against `konal.so`: 1 of 23; immediates only; low halves: 1;
  first at +0x10; gp 0x3e930 and 0x3e920.
- `cfbFillSpanTile32sGeneral` (konad.so, address 0x561370, 1864 bytes): **inferred.** Span fill with a 32-pixel tile for 8-bit
  pixels under any raster op, a leaf merging by `mergeRopBits` and masking ends with the 8-bit tables. Against `konal.so`: 1 of
  466; immediates only; low halves: 1; first at +0x40.
- `konUnbindDestroyedWindow` (konad.so, address 0x561f00, 696 bytes): **inferred.** Cleans up a window that is destroyed while
  still bound to a display-generator window id. It complains through the routine at 0x4dc880 when the window pointer is null
  ("null pWin handed to konUnbindDestroyedWindow") or when the binding disagrees ("DFR binding mismatch on xwid"), looks the id up
  through `vcScreenPrivateIndex` and `konWindowPrivateIndex`, and clears the binding with the routines at 0x53e310 and
  0x508810. Which display-generator register those two touch was not read. Against `konal.so`: 2 of 174; immediates only; low
  halves: 2; first at +0x10; gp 0x3dd40 and 0x3dd30.
- `nfbCreateStereoGC` (konad.so, address 0x5622a0, 532 bytes): **established.** Replaces a new context's operations with the
  stereo vector: it records the stereo-free vector `nfbSolidOps` in the private record, builds the stereo copy of the table (a
  28-byte header) and reports allocation trouble with `ErrorF`. Against `konal.so`: 1 of 133; immediates only; low halves: 1;
  first at +0xc; gp 0x3d9a0 and 0x3d990.
- `konDrawMonoImage` (konad.so, address 0x5624c0, 2568 bytes): **established.** One-bit image draw in the konad.so build:
  `kon_loadNfbBitmapGC`, then `HP_X_LOADCLIP`, `HP_X_LOADPOS`,
  `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH` framed as token word then payload at offset 0, rows copied with `bcopy`, and bitmap words
  stored inline instead of through `KonSeqData32_ip19`; 2568 bytes against 1724. Against `konal.so`: 1 of 642; immediates only;
  low halves: 1; first at +0x1c.
- `cfb32FillRectSolidGeneral` (konad.so, address 0x562ed0, 744 bytes): **inferred.** General-raster-op solid fill for 32-bit
  pixels, a leaf using the and/xor pair from the GC private record to combine each word, and it is called from
  `cfb32PolyFillRect`. Against `konal.so`: 1 of 186; immediates only; low halves: 1; first at +0x20.
- `cfbTEGlyphBlt8` (konad.so, address 0x563500, 23240 bytes): **established.** The large terminal-emulator-font text routine for
  8-bit drawables. A table of unrolled cases, one per glyph width, writes whole words of expanded pixels; it uses
  `cfb8SetOpaqueStipple` to prepare the fill colours and falls back to `cfbImageGlyphBlt8` for fonts it cannot handle. Against
  `konal.so`: 1 of 5810; immediates only; low halves: 1; first at +0x60.
- `cfb16FillBoxTile32sGeneral` (konad.so, address 0x568fe0, 2268 bytes): **inferred.** Box fill with a 32-bit-wide tile for 16-bit
  pixels under any raster op; merges source and destination words with the GC's and/xor masks, and it is called from
  `cfb16FillRectTileOdd`. Against `konal.so`: 1 of 567; immediates only; low halves: 1; first at +0x3c.
- `miWideLine` (konad.so, address 0x5698c0, 2180 bytes): **established.**
  PolyLine for lines wider than one pixel. It builds spans with `miSetupSpanData`, calls the local routines at 0x4af320 (two
  sites), 0x54f680 (two sites) and 0x48dea0 (four sites) to generate and fill them, and releases them with `miCleanupSpanData`.
  Against `konal.so`: 5 of 545; immediates only; low halves: 3; calls: 2; first at +0x20.
- `sgiEnableCapabilityUnsupported` (konad.so, address 0x56a2f0, 28 bytes): **established.** Stub for the enable-capability
  request: it returns `nmbxErrorBase` plus 1, the same unsupported error as the release stub, without doing any work. Against
  `konal.so`: 1 of 7; immediates only; low halves: 1; first at +0x4.
- `mfbYRotatePixmap` (konad.so, address 0x56a390, 236 bytes): **established.** Rotates a one-bit pixmap vertically by moving rows
  with `memmove`, three sites. Against `konal.so`: 1 of 59; immediates only; low halves: 1; first at +0x1c.
- `miInsertEdgeInET` (konad.so, address 0x56a4f0, 452 bytes): **established.** Inserts a polygon edge into the edge table bucket
  for its starting scanline, allocating a bucket record of 304 bytes with `Xalloc` when it needs one. Against `konal.so`: 1 of
  113; immediates only; low halves: 1; first at +0x34.
- `cfb16ValidateGC` (konad.so, address 0x56a6c0, 2928 bytes): **established.**
  ValidateGC for the 16-bit layer: the same sequence with the 16-bit calls `cfb16ReduceRasterOp`, `cfb16MatchCommon`,
  `cfb16CopyRotatePixmap` and `cfb16PadPixmap`, after `miComputeCompositeClip`. Against `konal.so`: 1 of 732; immediates only; low
  halves: 1; first at +0x2c.
- `nfbDoBitBltPS` (konad.so, address 0x56b230, 340 bytes): **inferred.** Pixmap-to-screen box copy: walks the box list of the
  region argument (+0x8) and for each box calls through the window record to write the pixmap rows to the screen. Against
  `konal.so`: 1 of 85; immediates only; low halves: 1; first at +0x14; gp 0x34a10 and 0x349f0.
- `konValidateReducedGC` (konad.so, address 0x56b500, 204 bytes): **established.** Masks the colour words of the generic-layer GC
  record with the depth mask for the drawable's depth (`kon_depthmask`, indexed by the byte at +0x2 of the drawable): the
  foreground at private +0x34 and the plane mask at +0x4c. It prints a debug message with `ErrorF` first, and it is called from
  `konValidateWindowGC`. Against `konal.so`: 1 of 51; immediates only; low halves: 1; first at +0x10; gp 0x34740 and 0x34720.
- `cfbFillRectSolidGeneral` (konad.so, address 0x56b5d0, 2080 bytes): **inferred.** Solid rectangle fill for 8-bit pixels under
  any raster op. A leaf reading the GC private array at +0x4c; edge words use the tables `cfbstartpartial` and `cfbendtab`, and
  every store merges with an and/xor pair. Against `konal.so`: 1 of 520; immediates only; low halves: 1; first at +0x24.
- `cfb16CopyRotatePixmap` (konad.so, address 0x56bdf0, 312 bytes): **established.** The 16-bit version of the rotated copy:
  `cfb16CopyPixmap`, `cfb16PadPixmap`, `cfb16XRotatePixmap` and
  `cfb16YRotatePixmap`, with `memmove` calls and the global serial number stamp. Against `konal.so`: 1 of 78; immediates only; low
  halves: 1; first at +0x2c.
- `cfbFillBoxTile32sCopy` (konad.so, address 0x56bf30, 2460 bytes): **inferred.** Box fill for 8-bit pixels with a tile of width
  32, copy mode: leaf, replicates the tile word across the row between masked ends, and it is called from `cfbFillBoxTileOdd`,
  `cfbFillRectTileOdd`. Against `konal.so`: 1 of 615; immediates only; low halves: 1; first at +0x50.
- `cfb32LineSS1RectXor` (konad.so, address 0x56c930, 2372 bytes): **inferred.** Exclusive-or 32-bit polyline in one clip
  rectangle. Its size matches the 16-bit routine; the stores are word-wide, and it is called from `cfb32LineSS1Rect`. Against
  `konal.so`: 1 of 593; immediates only; low halves: 1; first at +0x4.
- `miWideDash` (konad.so, address 0x56d280, 2392 bytes): **established.** The dashed form of the wide-line routine: dash steps via
  `miStepDash`, span building with `miSetupSpanData` and the local routines at 0x54f680 (two sites) and 0x48dea0 (four sites),
  projecting caps with `miLineProjectingCap`, a one-pixel fallback in `miZeroDashLine` and clean-up with `miCleanupSpanData`.
  Against `konal.so`: 2 of 598; immediates only; low halves: 1; calls: 1; first at +0x40.
- `nfbDoBitBltSP` (konad.so, address 0x56dbe0, 2968 bytes): **established.** Screen-to-pixmap box copy. It allocates a buffer with
  `Xalloc`, reads the screen into it through the raster-op tables `nfbRopFcn` and `nfbMaskRopFcn`, selected by
  `rop_needs_src` and `rop_needs_dst`, and frees it with `Xfree`. Against `konal.so`: 1 of 742; immediates only; low halves: 1;
  first at +0x28.
- `nfbDoBitBltSS` (konad.so, address 0x56e780, 744 bytes): **inferred.** Screen-to-screen box copy: for each box in the region it
  makes an indirect call (four sites) into the copy routine named in the window's private record, and it is called from
  `nfbCopyArea`. Against `konal.so`: 1 of 186; immediates only; low halves: 1; first at +0x44.
- `cfb16CopyArea` (konad.so, address 0x56ea70, 164 bytes): **established.**
  CopyArea for 16-bit drawables with the same shape as the 8-bit selector, comparing the plane mask with 0xffff and passing one of
  `cfb16DoBitbltGeneral`, `cfb16DoBitbltCopy`, `cfb16DoBitbltXor` or
  `cfb16DoBitbltOr` to `cfb16BitBlt`. Against `konal.so`: 1 of 41; immediates only; low halves: 1; first at +0x14.
- `mfbPolyGlyphBltInvert` (konad.so, address 0x56eb20, 2264 bytes): **established.**
  PolyGlyphBlt on a one-bit drawable that inverts pixels under the glyph; two `QueryGlyphExtents` calls, size equal to the white
  variant. Against `konal.so`: 1 of 566; immediates only; low halves: 1; first at +0x3c.
- `miSetShape` (konad.so, address 0x56fb10, 816 bytes): **established.** Applies a changed window shape: updates sizes with
  `SetWinSize` and `SetBorderSize`, resizes children with `ResizeChildrenWinSize`, checks the pointer with
  `CheckCursorConfinement` and reports with `WindowsRestructured`. Against `konal.so`: 1 of 204; immediates only; low halves: 1;
  first at +0x30.
- `cfbFillRectTile32Copy` (konad.so, address 0x56fff0, 1932 bytes): **inferred.** Tiled rectangle fill for 8-bit pixels with a
  tile one 32-bit word wide (four pixels), copy mode: the tile is a column of single words, the row is the y position modulo the
  tile height (a divide that traps on zero), and the partial words at the ends use `cfbstarttab`, `cfbendtab`, `cfbstartpartial`
  and `cfbendpartial`. It is called from `cfbPolyFillRect`. Against `konal.so`: 1 of 483; immediates only; low halves: 1; first
  at +0x20.
- `konDetachXvc` (konad.so, address 0x570780, 168 bytes): **established.** Disconnects the video-control extension. It calls the
  routine at 0x44b2c0 with the screen when `vcScreenPrivateIndex` is not negative, or, when it is negative, when `XSGIvcScreens` has
  a non-null entry for the screen's index (the word at screen +0). It then zeroes the screen's private slot (screen +436 at
  `vcScreenPrivateIndex`) and that `XSGIvcScreens` entry; with the index negative and an entry present the slot written is the one
  at the negative index. Otherwise it does nothing. Against `konal.so`: 1 of 42; immediates only; low halves: 1; first at +0x10; gp
  0x2f4c0 and 0x2f4a0.
- `cfbFillRectSolidXor` (konad.so, address 0x5711b0, 2984 bytes): **inferred.** Solid rectangle fill for 8-bit pixels that xors
  the foreground into the frame buffer; a leaf using the partial-word tables for ragged edges and unrolled whole-word stores in
  between, and it is called from `cfbPolyFillRect`. Against `konal.so`: 1 of 746; immediates only; low halves: 1; first at +0x34.
- `miDestroyClip` (konad.so, address 0x571ee0, 152 bytes): **inferred.** Releases a GC's client clip. The clip type is bits 18-19
  of the word at GC +16: type 0 returns at once, type 1 calls the screen hook at +240 and any other type the hook at +348, each with
  the clip pointer at GC +56. Afterwards it zeroes GC +56 and clears the two type bits. Its address is stored at 0x595e3c in
  `konad.so`. Against `konal.so`: 1 of 38; immediates only; low halves: 1; first at +0x20.
- `miCopyClip` (konad.so, address 0x571f80, 244 bytes): **inferred.** Copies a GC's client clip into another by calling the
  screen's region copy hook (four sites); in `konad.so` its address is stored at 0x595e40. Against `konal.so`: 1 of 61; immediates
  only; low halves: 1; first at +0x24.
- `mfbPushPixels` (konad.so, address 0x572080, 1412 bytes): **inferred.**
  PushPixels on a one-bit drawable: it turns the stencil mask into runs of set bits and flushes them in batches of up to 128
  spans through the GC's FillSpans entry (GC +72, entry 0, with the span points and widths in two stack arrays and the sorted
  flag set) at seven call sites; `endtab` masks the ragged right edge. Against `konal.so`: 1 of 353; immediates only; low
  halves: 1; first at +0x44.
- `cfbPadPixmap` (konad.so, address 0x572610, 556 bytes): **established.** Replicates an 8-bit tile horizontally until its row
  fills 32 bits, when the tile width divides 32; the code tests the width times depth against 32 and uses `endtab` for the row
  masks. A leaf. Against `konal.so`: 1 of 139; immediates only; low halves: 1; first at +0x2c.
- `cfb16DestroyPixmap` (konad.so, address 0x572840, 88 bytes): **established.** Decrements the reference count (word +24) and
  stores it; when it reaches zero it calls `Xfree` once, with the pixmap record itself (the argument unchanged), and does not free a
  separate data block. Returns 1 on both paths. Against `konal.so`: 1 of 22; immediates only; low halves: 1; first at +0x18.
- `rrmOGLUnbindRNFromClip` (konad.so, address 0x5728a0, 624 bytes): **established.** The
  OpenGL form of the unbind hook. It invalidates the window's resources through the hook at +32, calls `rrmUnqueueRequest` when
  the flag halfword has bit 0x20, and frees the buffer in the window's GLX private with `Xfree`. A non-empty bound-window list
  prints "prrmBoundWins non zero" through `ErrorF`. It asks `cmapDID` for the frame-buffer id, sets bit 0x1 in private word +32
  with `nfbSetDidFlags`, and for a realized window releases the display id (`FreeID`) and clip id (`FreeCID`), lowers the
  ancestors' counters with `decrRRMFlags` and clears the bound bit. Against `konal.so`: 1 of 156; immediates only; low halves: 1;
  first at +0xc; gp 0x2d3a0 and 0x2d380.
- `nfbInitHWCmapArrays` (konad.so, address 0x572b20, 2276 bytes): **established.** Allocates the arrays that track the hardware
  colormaps and their groups with `Xalloc` (two sites), fills them with `memcpy` and frees the temporary list with `Xfree`.
  Against `konal.so`: 1 of 569; immediates only; low halves: 1; first at +0x28.
- `cfb32LineSS1Rect` (konad.so, address 0x573410, 728 bytes): **inferred.** Chooser for 32-bit polylines in one clip rectangle; it
  calls the copy, previous-point copy, xor or general version through a pointer and falls back to `cfb32ClippedLineGeneral`.
  Against `konal.so`: 1 of 182; immediates only; low halves: 1; first at +0x14; gp 0x2c830 and 0x2c820.
- `miMarkUnrealizedWindow` (konad.so, address 0x5736f0, 124 bytes): **inferred.** Empties the clip regions of a window that is
  being unrealised. It returns at once when the child is the window it started from and the third argument is zero; otherwise it
  calls the screen hook at +392 on the clip list at window +44, the screen hook at +232 with (window, 0, 0) when that hook is
  set, and hook +392 again on the border clip at window +56 (by their shape the sample server's region-empty and clip-notify
  slots). It is called from `miScreenInit`. Against `konal.so`: 1 of 31; immediates only; low halves: 1; first at +0x14.
- `miChangeSaveUnder` (konad.so, address 0x5741c0, 208 bytes): **inferred.** Maintains the count of viewable save-under windows.
  It returns 0 at once when `numSaveUndersViewable` and `deltaSaveUndersViewable` are both zero; otherwise it adds the delta to
  the count and clears the delta, builds a temporary region on the stack with the screen hook at +340, calls a local routine at
  0x4556b0 with the window's field at +24 and that region, and releases the region with the screen hook at +352. It returns the
  local routine's result. Against `konal.so`: 1 of 52; immediates only; low halves: 1; first at +0xc; gp 0x2ba80 and 0x2ba70.
- `cfbSetSpans` (konad.so, address 0x574f40, 1044 bytes): **established.** Writes spans into an 8-bit drawable: for each span
  inside the clip rectangles it calls `cfbSetScanline`, with row sizes from `PixmapWidthPaddingInfo`. Against `konal.so`: 1 of
  261; immediates only; low halves: 1; first at +0x30.
- `miRegionInit` (konad.so, address 0x575360, 232 bytes): **established.** Initialises a region record: copies the four halfword
  extents from the box argument (or from `miEmptyBox` when none is given), and either points the data field at +0x8 at
  `miEmptyData` or allocates a rectangle array with `Xalloc` for a count above one. Against `konal.so`: 1 of 58; immediates only;
  low halves: 1; first at +0x1c.
- `cfb16XRotatePixmap` (konad.so, address 0x576840, 448 bytes): **established.** Horizontal rotation of a 16-bit pixmap with three
  `ErrorF` reports for unsupported widths and `cfb16endtab` for the masks. Against `konal.so`: 1 of 112; immediates only; low
  halves: 1; first at +0x18.
- `nfbMarkWindow` (konad.so, address 0x576ae0, 180 bytes): **inferred.** Marks a window as needing revalidation: sets the flag
  word for its colour-map group (found through the window record at +0x18 and the screen's table at +0x3c), and allocates a
  24-byte block with `Xalloc` if the window has none, with `Must_have_memory` set during the call. Against `konal.so`: 1 of 45;
  immediates only; low halves: 1; first at +0x8; gp 0x29160 and 0x29150.
- `konInit` (konad.so, address 0x57b130, 9132 bytes): **inferred.** Screen initialisation for the Kona module, the largest
  function of the range. It reserves the screen, window and GC private indexes (`AllocateScreenPrivateIndex`,
  `AllocateWindowPrivateIndex`, `AllocateGCPrivateIndex`), allocates the per-screen records with `Xalloc`, and loads the visual
  tables from `konavis.so` with `ddxMakeDynamicModulePath`, `dlopen` and `dlsym` (the symbols
  `konVisualInfo_imp8`, `konVisualInfo_imp8c` and `konVisualInfo_imp9` among them), reporting
  `dlerror` on failure. It then calls `nfbGenericScreenInit`, `kon_initGCCaches`,
  `kon_initCursorCaches`, `konAttachXvc`, `konBlankScreen`,
  `nfbHWColormapScreenInit`, `rrmInit` and `glxScreenInit`, registers the stereo wrappers with
  `nfbStereoRegisterWrapperOps`, reads display information with `nfbReadDisplayRegisterInfo`, and compares names against
  `HIRES_QUADBUFFER` and `HIRES_DOUBLEBUFFER` with `strcmp` (the visual-selection logic around those was not read). Each step has
  its own `ErrorF` message when it fails, among them "probably no DG installed" for the video-control attach and a conflict
  message for the overlay flags. Against `konal.so`: 22 of 2283; immediates only; low halves: 22; first at +0x788; gp 0x24b10 and
  0x24b10.

## The X module files

- `konal.so` (usr/lib/X11/dyDDX/konal.so, 1759116 bytes): **established.** The X server module of the 6.5.30m install that this
  reading treats as the one an IP27 system loads: an N32 MIPS shared object with 795 named functions and a text section of 1443044
  bytes at address 0x13a6e30. Against `kona.so` 742 of the 795 shared names have different bytes, 74 of them with different
  lengths because the pipe writers store each token word and then its payload at offset 0 of the command window instead of calling
  the 14 `KonSeqData*_ip19` helpers that only `kona.so` has; one routine, `rrmProcessRequestQueue`, also calls a routine through a
  pointer where `kona.so` calls it directly. Its function entries are in this file and in
  [kona-so-functions.md](kona-so-functions.md).
- `konas.so` (usr/lib/X11/dyDDX/konas.so, 1759116 bytes): **established.** The same code as `konal.so`: all 795 named functions
  have identical bytes, so every `konal.so` entry applies to it. The 19769 bytes of the file that differ from `konal.so` are in
  the dynamic symbol table (2146), the relocation table (6540), the data section (2088), the global offset table (2090), the debug
  frame table (2412) and the dynamic header, that is, the link-time addresses and not the code.
- `konad.so` (usr/lib/X11/dyDDX/konad.so, 1759116 bytes): **established.** The same functions as `konal.so`, linked at other
  addresses: the text section is 1443044 bytes in both and 220410 of its bytes differ, which is 144 function bodies. 142 of them
  differ only in relocated 16-bit immediates (offsets from the global pointer and halves of addresses); `konWriteFBSubBlock` and
  `konDrawImage` also differ in length, because they switch to the DMA write path above 0x12000 bytes of image data where
  `konal.so` switches above 0x9000. The entries for these 144 are in the section on functions whose bytes differ from `konal.so`.
- `kona.so` (usr/lib/X11/dyDDX/kona.so, 1710244 bytes): **established.** The `kona.so` build whose functions the main entries of
  this file describe: 809 named functions, 795 shared with `konal.so` and 14 only here (`KonSeqData3_ip19` to `KonSeqData32_ip19`,
  the helpers that burst-copy payload words into the command window for the pipe writers). It is 48872 bytes smaller than the other
  three, **inferred** from the 74 pipe writers that are longer there.
- `konavis.so` (usr/lib/X11/dyDDX/konavis.so, 330796 bytes): **established.** A data module with no functions: the visual tables
  the server module loads through `ddxMakeDynamicModulePath`, `dlopen` and `dlsym` when it initialises the screen (the symbols are
  listed in [data-files.md](data-files.md)). It holds the small, medium and large visual sets of each image-processor revision.
