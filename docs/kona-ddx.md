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
- `konCopyWindow` (`kona.so` 0x4d3df0, 2112 bytes): **Established.**
  The copy-window hook. It builds the exposed region with the screen's region hooks (hooks at +0x154, +0x174 and +0x178 of the screen record, which it calls six times in all) for each clip rectangle of the destination and the window's marked list, and moves the covered pixels with the routine at 0x4817f0 (eight call sites), shifted by the difference between the old and new window origin. It sends no token itself.
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
  General ImageGlyphBlt. It measures the string with `QueryGlyphExtents` (eight sites), loads GC state with `kon_loadImgRectGC` and `kon_loadImgBitmapGC`, writes `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR` and `HP_X_BOX` for the background, then `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH` for the glyph bitmaps. Its fallback is `nfbImageGlyphBlt`.
- `konImageGlyphBltTE10` (`kona.so` 0x4ddbb0, 3832 bytes): **Established.**
  ImageGlyphBlt for fixed-width fonts 10 pixels wide: it packs rows of glyphs into words, then uses the same token sequence as the general version (`HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`, `HP_X_BOX`, `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE`, `HP_X_PIX_FINISH`). Cases it cannot handle go to `nfbImageGlyphBlt`; it prints its arguments through `ErrorF` on error.
- `konImageGlyphBltTE16` (`kona.so` 0x4deab0, 3044 bytes): **Established.**
  The same operation for fonts 16 pixels wide; a glyph row fits half a word, so two glyphs are packed per word before `HP_X_PIX_WRITE`. It uses `kon_loadImgRectGC` and `kon_loadImgBitmapGC` and falls back to `nfbImageGlyphBlt`.
- `konImageGlyphBltTE32` (`kona.so` 0x4dafd0, 2540 bytes): **Established.**
  The same operation for fonts 32 pixels wide, where each glyph row is exactly one word; same tokens and fallbacks as the other widths. It calls `nfbImageGlyphBlt` for the cases it declines and `kon_loadImgBitmapGC` at two sites.
- `konPolyGlyphBltSolidTE3` (`kona.so` 0x50a7c0, 5660 bytes): **Established.**
  Solid PolyGlyphBlt for fixed-width fonts 3 pixels wide: it packs the rows of several glyphs into each word, then sends `HP_X_LOADPOS`, `HP_X_LOADCLIP`, `HP_X_LOADSCISSOR`, `HP_X_PIX_SETUP`, `HP_X_PIX_WRITE` and `HP_X_PIX_FINISH`. Its GC state comes from `kon_loadBitmapGC` (two sites), and the general routine `nfbSolidPolyGlyphBlt` handles anything it declines.
- `konPolyGlyphBltSolidTE6` (`kona.so` 0x50bde0, 5856 bytes): **Established.**
  Solid PolyGlyphBlt for fonts 6 pixels wide, with the same token sequence as the 3-pixel routine; it loads the GC with `kon_loadBitmapGC` and declines to `nfbSolidPolyGlyphBlt`.
- `konPolyGlyphBltSolidTE8` (`kona.so` 0x50d5d0, 4700 bytes): **Established.**
  Solid PolyGlyphBlt for fonts 8 pixels wide, packing four glyph rows to a word before the same sequence of `HP_X_PIX_*` tokens; falls back to `nfbSolidPolyGlyphBlt`.
- `konCreateWindow` (`kona.so` 0x4f4030, 560 bytes): **Established.**
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
- `konTileRects` (`kona.so` 0x52ada0, 2636 bytes): **Established.**
  Tiles a list of rectangles by copying one prepared tile: seven calls through the screen hooks to fetch the box lists and five calls to `nfbReplicateArea` to grow the tile across each rectangle by doubling.
- `konQueryBestSize` (`kona.so` 0x4d5000, 308 bytes): **Established.**
  Best-size query for the module: for tile and stipple (classes 1 and 2) it rounds the requested width down to a power of two, and for the cursor class it caps both sides at 64. Nothing calls it by name: its address is stored at 0x58663c in the module's data and at 0x58c308 in the global offset table.
- `konStoreColors` (`kona.so` 0x523cf0, 2468 bytes): **Established.**
  Stores colormap entries by sending `HP_X_LOADCMAP`: the map address, a count of 1, and the colour word built from the 10-bit red, green and blue values (masks 0x3ff00000 and 0xffc00); bulk words go through `KonSeqData32_ip19` and `KonSeqData4_ip19`, and errors through `ErrorF`.
- `konInstallColormap` (`kona.so` 0x564710, 1768 bytes): **Established.**
  Installs a colormap into the display: sends `HP_X_LOADCMAP` with the map address, the entry count and one packed word per entry (10-bit channels), through `KonSeqData32_ip19` and `KonSeqData4_ip19`; it reports errors with `ErrorF`.
- `konValidateVisual` (`kona.so` 0x52cc30, 4252 bytes): **Inferred.**
  Re-validates a window's visual state after a change in clip or buffer: it works through the screen's three region slots, calls `konInitiateBufferSwap` at 11 sites, and calls a local routine at 0x53e7b0 at 28 sites. Roles are read from the call structure; the routine at 0x53e7b0 was not read.

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
  Creates the default colormap for a screen from the visual list (36 bytes per visual record, scanned for the visual whose id matches), by calling `CreateColormap`. It then allocates colours with `AllocColor` (two call sites, with the comparison `sgiOverrideColorCompare`) and refers to the tables `init4sight`, `initGL`, `initPseudo` and `initEnvm` for the initial entries; `ErrorF` reports failure. The meaning of each table was not read.
- `rrmBindRNToClip` (`kona.so` 0x579380, 572 bytes): **Inferred.**
  Binds a rendering node to a window's clip for an ordinary window, from its reads of `rrmWindowPrivateIndex`, `nfbWindowPrivateIndex` and `rrmScreenPrivateIndex`. It allocates the window's record with `allocRRMpriv`, takes a reference with `incrRRMpriv`, picks a display id with `FindBestID` (two sites) or `FindFreeID`, sets the window's flag bits with `incrRRMFlags` and `nfbSetDidFlags`, and releases a replaced record with `Xfree`. It sends no ioctl itself.
- `rrmOGLBindRNToClip` (`kona.so` 0x54aa90, 684 bytes): **Inferred.**
  The same binding for an OpenGL window, whose extra state is found through `glxWindowPrivateIndex`. It calls `allocRRMpriv`, `incrRRMpriv`, `FindBestID`, `FindFreeID`, `incrRRMFlags` (two sites) and `nfbSetDidFlags`, reports a failed allocation with `ErrorF`, and frees the replaced record with `Xfree`.
- `rrmCopyWindow` (`kona.so` 0x50a740, 120 bytes): **Established.**
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
- `nfbSolidFS` (`kona.so` 0x5343b0, 288 bytes): **Established.**
  FillSpans with a solid colour: it loops over the spans and for each calls an indirect routine with the private record's solid-fill word at +0x40 and rop byte at +0x48.
- `nfbTiledFS` (`kona.so` 0x519ab0, 332 bytes): **Established.**
  FillSpans with a tile: loops over the spans, calling the tiled fill routine named in the window's private record for each. Its address is stored at 0x5882d4 in the module's data, and it reads the window record through the window's private array at +0x84.
- `nfbStippledFillRects` (`kona.so` 0x52a520, 936 bytes): **Established.**
  FillRects with a stipple: four indirect calls into the stippled-area routine of the window record, one per fill path. Nothing calls it by name: its address is stored at 0x5882e8 in the module's data, in the operation tables.
- `nfbOpStippledFillRects` (`kona.so` 0x4d7bc0, 952 bytes): **Established.**
  FillRects with an opaque stipple, structured like the transparent one with four indirect calls into the opaque routine. Nothing calls it by name: its address is stored at 0x588300 in the module's data, in the operation tables.
- `nfbOpStippledFS` (`kona.so` 0x4d9d40, 676 bytes): **Established.**
  FillSpans with an opaque stipple: three indirect calls into the opaque stipple routine of the private records. Nothing calls it by name: its address is stored at 0x588304 in the module's data, next to the opaque-stippled FillRects pointer.
- `nfbVert` (`kona.so` 0x544170, 132 bytes): **Established.**
  Wrapper for a vertical one-pixel run: when the two y coordinates in the box argument differ it widens the box by one row and calls the fill routine passed in a register with a count of 1. Called from `nfbSolidZeroSeg`.
- `nfbPolyPoint` (`kona.so` 0x4eaea0, 728 bytes): **Established.**
  PolyPoint for the layer: for each point inside the window's clip it calls through the window record's point-fill routine (two sites); it reads the colour and rop from the private record at +0x28 and +0x30.
- `nfbSolidPolyGlyphBlt` (`kona.so` 0x4f4390, 2360 bytes): **Established.**
  Solid PolyGlyphBlt in the generic layer: calls `QueryGlyphExtents` four times for the text box and walks glyph rows to produce rectangles it fills with the solid colour.
- `nfbCopyArea` (`kona.so` 0x512810, 2692 bytes): **Established.**
  CopyArea in the generic layer. It decides between a host copy and the window-to-window path: calls `nfbDoBitBltSS` (five sites) for screen-to-screen, `nfbDoBitBltSP` for screen-to-pixmap, `cfb16CopyArea`, `cfb32CopyArea` or `cfbCopyArea` for pixmaps, `miCopyArea` as a fallback, `NotClippedByChildren` for the clip and `miHandleExposures` for the exposures.
- `nfbDoBitBltSS` (`kona.so` 0x562660, 744 bytes): **Established.**
  Screen-to-screen box copy: for each box in the region it makes an indirect call (four sites) into the copy routine named in the window's private record. Called from `nfbCopyArea`.
- `nfbDoBitBltSP` (`kona.so` 0x561ac0, 2968 bytes): **Established.**
  Screen-to-pixmap box copy. It allocates a buffer with `Xalloc` (four sites), reads the screen into it through the raster-op tables `nfbRopFcn` and `nfbMaskRopFcn`, selected by `rop_needs_src` and `rop_needs_dst`, and frees it with `Xfree`.
- `nfbDoBitBltPS` (`kona.so` 0x55f110, 340 bytes): **Established.**
  Pixmap-to-screen box copy: walks the box list of the region argument (+0x8) and for each box calls through the window record to write the pixmap rows to the screen.
- `nfbSaveAreas` (`kona.so` 0x4fda80, 80 bytes): **Established.**
  Save-under hook: forwards to `nfbDoBitBltSP` with the saved-area record to copy the covered screen area into a pixmap (the arguments 3 and -1 select the copy and all planes).
- `nfbRestoreAreas` (`kona.so` 0x52a3f0, 292 bytes): **Established.**
  Save-under restore hook: it calls `nfbDoBitBltPS` at six sites to copy the saved pixmap back to the screen, one per box.
- `nfbReplicateArea` (`kona.so` 0x4f0990, 632 bytes): **Established.**
  Tiles a source box across a destination box by doubling: four indirect calls into the copy routine, starting from one tile and copying the grown block back into itself. Called from `konTileRects`.
- `nfbPutImage` (`kona.so` 0x576e70, 1384 bytes): **Established.**
  PutImage in the generic layer: it routes through the GC's operations (three indirect calls), calls `konInitiateBufferSwap` at two sites when the drawable is double-buffered, and uses `PixmapWidthPaddingInfo` for row sizes.
- `nfbShmPutImage` (`kona.so` 0x4ef2f0, 576 bytes): **Established.**
  PutImage from shared memory: it checks the image format and depth, reports an unsupported one with `ErrorF` at four sites, and uses `PixmapWidthPaddingInfo` and `globalSerialNumber` to build a pixmap header over the shared data.
- `nfbCreatePixmap` (`kona.so` 0x57a170, 468 bytes): **Established.**
  Creates a pixmap: allocates the record and its data with `Xalloc` (two sites), sizes rows with `PixmapWidthPaddingInfo`, stamps `globalSerialNumber`, and reports an unsupported depth with `ErrorF`; in a multi-screen setup it consults `panoramiXMode` and `panoramiXSharePixmap`.
- `nfbCreateWindow` (`kona.so` 0x4d95b0, 1104 bytes): **Established.**
  Creates the window's frame-buffer record: allocates it with `Xalloc` (five sites), looks up the window's visual with `LookupIDByType`, uses `FindWindowWithOptional` (six sites) to find the optional fields, and sets its private index to `nfbWindowPrivateIndex`.
- `nfbDestroyWindow` (`kona.so` 0x526280, 212 bytes): **Established.**
  Releases the window's record: it calls the screen hook at +0x160 for each of the stored colour ids in a loop, then frees two blocks with `Xfree`.
- `nfbPositionWindow` (`kona.so` 0x522300, 8 bytes): **Established.**
  Hook that does nothing and returns 1 (TRUE); the layer needs no work when a window moves. Its address is stored at 0x58665c in the module's data.
- `nfbUnrealizeWindow` (`kona.so` 0x55ceb0, 8 bytes): **Established.**
  Hook that returns 1 immediately; unmapping a window needs no frame-buffer work. Its address is stored at 0x586668 in the module's data, eight bytes before the post-validate hook of the same table.
- `nfbMarkWindow` (`kona.so` 0x56a730, 180 bytes): **Established.**
  Marks a window as needing revalidation: sets the flag word for its colour-map group (found through the window record at +0x18 and the screen's table at +0x3c), and allocates a 24-byte block with `Xalloc` if the window has none, with `Must_have_memory` set during the call.
- `nfbMarkUnrealizedWindow` (`kona.so` 0x51d5d0, 292 bytes): **Established.**
  Marks a window when it is unrealised: it makes three indirect calls into the screen's mark hooks to flag the window and its parents. Its address is stored at 0x58679c in the module's data, and it calls through the screen's hook three times.
- `nfbPostValidateTree` (`kona.so` 0x4f4f80, 200 bytes): **Established.**
  After a tree validation it calls the window record's hook with the argument 3, once per window passed, to finish the revalidation. Its address is stored at 0x586670 in the module's data, and it reads the window record through the window's private array at +0x84.
- `nfbTreeObscured` (`kona.so` 0x4dc4b0, 352 bytes): **Established.**
  Walks the window tree and sends visibility events with `SendVisibilityNotify` for windows that became fully obscured (visibility state 2) or visible, using the saved flag bits to avoid repeats.
- `nfbPaintWindowBackground` (`kona.so` 0x4da9c0, 580 bytes): **Established.**
  Paints a window's background: it reports an unrecognised background state with `ErrorF` (three sites) and otherwise calls the fill routine selected by the window record's background type (1 solid, 2 tile, 3 parent-relative). It calls `ErrorF` at three sites for background states it does not recognise; its address is stored at 0x586678 in the module's data.
- `nfbSaveScreen` (`kona.so` 0x4d7f80, 64 bytes): **Established.**
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
  Allocates the arrays that track the hardware colormaps and their groups with `Xalloc` (two sites), fills them with `memcpy` (five sites) and frees the temporary list with `Xfree`.
- `nfbReadDisplayRegisterInfo` (`kona.so` 0x50a140, 168 bytes): **Established.**
  Reserves a screen private slot with `AllocateScreenPrivateIndex` and calls `ReadDisplayRegisterInfo` to fill the register description for the read-display extension.
- `nfbReadDisplay` (`kona.so` 0x504ca0, 5260 bytes): **Established.**
  Reads pixels from the screen for the read-display extension. It walks `WindowTable` and the window records, locates the cursor with `GetSpritePosition` and `GetSpriteCursor` (three sites), assembles the reply in an `Xalloc` buffer, sends it with `WriteToClient` and frees it with `Xfree`; it reports bad requests with `ErrorF`.
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
  Appends one span group to another, calling `miSubtractSpans` at three sites to drop overlap and `Xrealloc` to grow the array.
- `miWideLine` (`kona.so` 0x55d7a0, 2180 bytes): **Established.**
  PolyLine for lines wider than one pixel. It builds spans with `miSetupSpanData`, fills them through calls into the GC's span routine (two sites, plus four indirect calls) and releases them with `miCleanupSpanData`.
- `miWideDash` (`kona.so` 0x561160, 2392 bytes): **Established.**
  The dashed form of the wide-line routine: dash steps via `miStepDash` (two calls), span building with `miSetupSpanData`, projecting caps with `miLineProjectingCap`, a one-pixel fallback in `miZeroDashLine` and clean-up with `miCleanupSpanData`.
- `miZeroDashLine` (`kona.so` 0x4f1840, 72 bytes): **Established.**
  Thin wrapper for dashed zero-width lines: forwards its arguments with a mode of 1 to `miWideDash`.
- `miPolyBuildPoly` (`kona.so` 0x4f0c10, 2216 bytes): **Established.**
  Builds the outline of a wide-line segment join into an edge list, calling `miPolyBuildEdge` at two sites.
- `miZeroArcPts` (`kona.so` 0x4e7fa0, 1760 bytes): **Established.**
  Generates the integer points of a zero-width arc by calling `miZeroArcSetup` once, then stepping its error terms into a point list.
- `miZeroArcSetup` (`kona.so` 0x4f6040, 5308 bytes): **Established.**
  Computes the starting state of the zero-width arc stepper from the arc's angles and axes. Its code calls `sin` four times and `cos` twice, and compares angles with 5760, 11520, 17280 and 23040 (the quarter-circle boundaries in 64ths of a degree).
- `miZeroPolyArc` (`kona.so` 0x578bc0, 1820 bytes): **Established.**
  PolyArc for zero-width arcs when the fast point stepper does not apply. It saves and changes the GC with `DoChangeGC` (three sites) and `ValidateGC` (four sites), steps the dash with `miStepDash` and calls `miPolyArc` for the general ellipse case.
- `miFillArcSliceSetup` (`kona.so` 0x56a800, 2368 bytes): **Established.**
  Computes the edge data for a pie slice or chord fill: calls `ceil` five times and `floor` through the table, uses `__dcis` four times for double-precision compares, and compares angles with 5760 and 11520.
- `miEllipseAngleToSlope` (`kona.so` 0x54a810, 636 bytes): **Established.**
  Converts an arc angle in 64ths of a degree to the slope of the corresponding ellipse point: it uses `floor` twice and `__dcis` for the compare, and handles the quarter-turn angles 5760, 11520 and 17280 as special cases.
- `miFillWideEllipse` (`kona.so` 0x51d160, 1124 bytes): **Established.**
  Fills a wide-line ellipse by looping over rows and emitting spans, and frees its temporary span array with `Xfree` (two sites).
- `miFillConvexPoly` (`kona.so` 0x5511a0, 1964 bytes): **Established.**
  Fills a convex polygon directly: finds the top and bottom vertices, walks both edges with integer stepping, and emits spans by calling through the GC (two sites). Called from `miFillPolygon`.
- `miInsertEdgeInET` (`kona.so` 0x55e3d0, 452 bytes): **Established.**
  Inserts a polygon edge into the edge table bucket for its starting scanline, allocating a bucket record of 304 bytes with `Xalloc` when it needs one.
- `miCreateETandAET` (`kona.so` 0x573de0, 660 bytes): **Established.**
  Builds the edge table and the empty active-edge list for a polygon fill, calling `miInsertEdgeInET` for every edge and freeing the storage with `miFreeStorage` on failure.
- `miPolyFillRect` (`kona.so` 0x525570, 2344 bytes): **Established.**
  PolyFillRect on top of the GC's FillSpans: clips each rectangle to the composite clip and emits one span row per scanline by an indirect call. Called from `cfb16PolyFillRect`, `cfb16ValidateGC`, `cfb32PolyFillRect`.
- `miPolyRectangle` (`kona.so` 0x4f5540, 992 bytes): **Established.**
  PolyRectangle built from line segments: compares coordinates against 32767 and -32768 and issues the four edges of each rectangle through the GC's line routine (three sites). Its address is stored at 0x586860 in the module's data and in twenty-five operation vectors in all, and it calls through the vector three times.
- `miPolySegment` (`kona.so` 0x5379e0, 152 bytes): **Established.**
  PolySegment built on the GC's PolyLine routine: it calls it once per segment with two points. Called from `cfb16ValidateGC`, `cfb32ValidateGC`, `cfbValidateGC`.
- `miOpqStipDrawable` (`kona.so` 0x554fc0, 1368 bytes): **Established.**
  Draws an opaque stipple into a drawable by the two-pass method: `GetScratchGC` for a work context, `dixChangeGC` (four sites) and `ValidateGC` (twelve sites) to switch between background and foreground fills, `miClearDrawable` for the background and `FreeScratchGC` when done.
- `miImageText8` (`kona.so` 0x4d8b60, 136 bytes): **Established.**
  ImageText for 8-bit fonts: calls `GetGlyphs` at two sites to look up the glyphs, then calls the GC's ImageGlyphBlt through the operation table.
- `miPolyText16` (`kona.so` 0x4ffaa0, 556 bytes): **Established.**
  PolyText for 16-bit fonts: calls `GetGlyphs` twice and dispatches on the item type (font change versus text) to the GC's PolyGlyphBlt.
- `miImageGlyphBlt` (`kona.so` 0x4ef530, 456 bytes): **Established.**
  Default ImageGlyphBlt on top of other operations: calls `QueryGlyphExtents`, then `DoChangeGC` (three sites) and `ValidateGC` (four sites) to switch fill style, filling the background box and drawing the glyphs.
- `miMarkWindow` (`kona.so` 0x501330, 108 bytes): **Established.**
  Allocates a 24-byte per-window validation record with `XNFalloc` when the window has none.
- `miMarkOverlappedWindows` (`kona.so` 0x4d7980, 564 bytes): **Established.**
  Walks the sibling list marking each window that the target overlaps, calling through the screen's mark-window hook (five sites). Called from `miScreenInit`.
- `miMarkUnrealizedWindow` (`kona.so` 0x567330, 124 bytes): **Established.**
  Marks a window for revalidation when it becomes unrealised, calling the screen's mark hook three times. Called from `miScreenInit`.
- `miValidateTree` (`kona.so` 0x552880, 1292 bytes): **Established.**
  Recomputes the clip lists of a window subtree after a configure or map. It makes 21 indirect calls into the screen's clip-computation hooks and ten calls to local helpers, and bumps `globalSerialNumber` for each window it touches.
- `miHandleValidateExposures` (`kona.so` 0x576d00, 364 bytes): **Established.**
  After validation, generates exposures for newly uncovered regions through the screen's hooks (six indirect calls) and frees the temporary regions with `Xfree`.
- `miWindowExposures` (`kona.so` 0x526360, 880 bytes): **Established.**
  Computes the exposed region of a window and sends it as Expose events with `miSendExposures` at fourteen sites, one per output path.
- `miMoveWindow` (`kona.so` 0x506440, 696 bytes): **Established.**
  Implements MoveWindow: updates the window size and border with `SetWinSize` and `SetBorderSize`, restacks with `MoveWindowInStack`, moves the children with `ResizeChildrenWinSize` (nine sites) and tells the server with `WindowsRestructured`.
- `miSlideAndSizeWindow` (`kona.so` 0x5335b0, 3044 bytes): **Established.**
  The combined move and resize used by ConfigureWindow. It unmaps affected windows with `UnmapWindow` (six sites), applies gravity with `GravityTranslate` (19 sites), restacks with `MoveWindowInStack` and resizes children by `TraverseTree`, ending with `WindowsRestructured`.
- `miChangeBorderWidth` (`kona.so` 0x56b300, 504 bytes): **Established.**
  Sets a window's border width: calls `SetBorderSize` at five sites to propagate it and `WindowsRestructured` at six sites for the revalidation.
- `miSetShape` (`kona.so` 0x5639f0, 816 bytes): **Established.**
  Applies a changed window shape: updates sizes with `SetWinSize` and `SetBorderSize`, resizes children with `ResizeChildrenWinSize` (11 sites), checks the pointer with `CheckCursorConfinement` and reports with `WindowsRestructured`.
- `miChangeSaveUnder` (`kona.so` 0x567e00, 208 bytes): **Established.**
  Maintains the count of viewable save-under windows: it adjusts `numSaveUndersViewable` and `deltaSaveUndersViewable` and calls the screen's hook.
- `miComputeCompositeClip` (`kona.so` 0x5013a0, 748 bytes): **Established.**
  Recomputes a GC's composite clip from the drawable's clip and the client clip, using `NotClippedByChildren` at three sites when the GC subwindow mode is clip-by-children, and storing the result in the GC's private record found through `miGCPrivateIndex`.
- `miChangeClip` (`kona.so` 0x4f4260, 296 bytes): **Established.**
  Replaces a GC's client clip: it frees the old clip with `Xfree` (three sites) and installs the new rectangle list or region.
- `miCopyClip` (`kona.so` 0x565bd0, 244 bytes): **Established.**
  Copies a GC's client clip into another by calling the screen's region copy hook (four sites). Its address is stored at 0x589dd8 in the module's data, the copy-clip slot of the context function table at 0x589dc0.
- `miDestroyClip` (`kona.so` 0x565b30, 152 bytes): **Established.**
  Releases a GC's client clip, calling the screen's region destroy hook for a region clip. Its address is stored at 0x589dd4 in the module's data, the destroy-clip slot of the context function table at 0x589dc0.
- `miDestroyGC` (`kona.so` 0x51d700, 160 bytes): **Established.**
  Destroys a GC: frees its client clip and composite clip through the screen hooks, and calls `miDestroyGCOps` twice.
- `miCopyGC` (`kona.so` 0x52f210, 8 bytes): **Established.**
  Empty hook: returns at once without touching either context. Its address is stored at 0x589dc8 in the module's data, the copy slot of the context function table that begins at 0x589dc0.
- `miGetImage` (`kona.so` 0x51e860, 768 bytes): **Established.**
  Default GetImage built on CopyArea: it gets a scratch GC with `GetScratchGC` (four sites), adjusts it with `DoChangeGC`, validates with `ValidateGC`, copies into a temporary pixmap and frees the scratch GC with `FreeScratchGC`. It also calls `konInitiateBufferSwap` and `ffs`.
- `miCopyPlane` (`kona.so` 0x5750b0, 916 bytes): **Established.**
  Default CopyPlane: clips source and destination, draws with `miOpqStipDrawable`, handles exposures with `miHandleExposures` (five sites), and calls `ffs` to find the plane bit and `konInitiateBufferSwap` before reading the source.
- `miCreateScreenResources` (`kona.so` 0x4f2f70, 280 bytes): **Established.**
  Creates the root pixmap through the screen hook, stores it in the screen record, and releases a temporary block with `Xfree` on two paths.
- `miCloseScreen` (`kona.so` 0x4e0f30, 52 bytes): **Established.**
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
  Dashed PolySegment for one-bit drawables. It reduces the raster op with `mfbReduceRop`, advances the dash with `miStepDash`, draws each dash through `mfbBresD` (two sites), and clips with `miZeroClipLine` (two sites).
- `mfbPolyGlyphBltWhite` (`kona.so` 0x4d8cd0, 2264 bytes): **Established.**
  PolyGlyphBlt on a one-bit drawable that sets pixels where the glyph is set. It calls `QueryGlyphExtents` twice to size the string and writes glyph rows using `starttab` and `partmasks` for the ragged sides.
- `mfbPolyGlyphBltBlack` (`kona.so` 0x4f7880, 3144 bytes): **Established.**
  PolyGlyphBlt on a one-bit drawable that clears pixels where the glyph is set; two `QueryGlyphExtents` calls, and the same table use as the white variant.
- `mfbPolyGlyphBltInvert` (`kona.so` 0x562a00, 2264 bytes): **Established.**
  PolyGlyphBlt on a one-bit drawable that inverts pixels under the glyph; two `QueryGlyphExtents` calls, size equal to the white variant.
- `mfbImageGlyphBltBlack` (`kona.so` 0x5246a0, 3248 bytes): **Established.**
  ImageGlyphBlt with black foreground on one-bit drawables: it measures with `QueryGlyphExtents`, paints the background box with `mfbPolyFillRect` (two sites) and then writes glyphs through `mfbSolidBlackArea` or `mfbSolidWhiteArea`.
- `mfbImageGlyphBltWhite` (`kona.so` 0x531530, 2408 bytes): **Established.**
  ImageGlyphBlt with white foreground on one-bit drawables: `QueryGlyphExtents`, a background fill with `mfbPolyFillRect` at two sites, and glyph rows via `mfbSolidWhiteArea`.
- `mfbTEGlyphBltBlack` (`kona.so` 0x5267b0, 2256 bytes): **Established.**
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
  Zero-width arc entry for one-bit drawables: checks the 32767 limit, then calls the GC's arc routine or falls back to `miZeroPolyArc` and `miPolyArc`.
- `mfbXRotatePixmap` (`kona.so` 0x513bd0, 348 bytes): **Established.**
  Rotates a one-bit pixmap horizontally; it reports an unexpected width with `ErrorF` and uses the table `endtab` for the row mask.
- `mfbYRotatePixmap` (`kona.so` 0x55e270, 236 bytes): **Established.**
  Rotates a one-bit pixmap vertically by moving rows with `memmove`, three sites.
- `mfbCopyPixmap` (`kona.so` 0x522550, 148 bytes): **Established.**
  Duplicates a one-bit pixmap: it calls the screen's pixmap creation hook, then copies the data with `memmove`.
- `mfbPadPixmap` (`kona.so` 0x525f20, 536 bytes): **Established.**
  Replicates a one-bit tile across the 32 bits of a row when the width divides 32, using `endtab` for the row masks; a leaf.
- `mfbDestroyPixmap` (`kona.so` 0x577760, 88 bytes): **Established.**
  Drops a reference on a one-bit pixmap and, when none remain, releases it with `Xfree`.
- `mfbCopyArea` (`kona.so` 0x51a6a0, 2136 bytes): **Established.**
  CopyArea for one-bit drawables. It selects `mfbDoBitbltCopy`, `mfbDoBitbltXor`, `mfbDoBitbltOr`, `mfbDoBitbltCopyInverted` or `mfbDoBitbltGeneral` by raster op, makes ten calls through the chosen routine, calls `NotClippedByChildren` at six sites, and ends with `miHandleExposures`.
- `mfbDoBitblt` (`kona.so` 0x531ea0, 164 bytes): **Established.**
  Chooser used by the one-bit copy: it compares the raster op with 3, 6, 7 and 12 and calls `mfbDoBitbltCopy` or `mfbDoBitbltGeneral` accordingly.
- `mfbSetScanline` (`kona.so` 0x54fd20, 1664 bytes): **Established.**
  Writes one row of source bits into a one-bit destination scanline, shifting to align and masking the ends with `starttab` and `endtab`; a leaf.
- `mfbPolyFillRect` (`kona.so` 0x551e00, 2676 bytes): **Established.**
  PolyFillRect on one-bit drawables: it clips each rectangle to the composite clip and calls through the GC's area-fill pointer (two sites) with the box list. Called from `mfbImageGlyphBltBlack`, `mfbImageGlyphBltWhite`, `mfbValidateGC`.
- `mfbPushPixels` (`kona.so` 0x565cd0, 1412 bytes): **Established.**
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
- `cfb8LineSS1Rect` (`kona.so` 0x535e60, 728 bytes): **Established.**
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
- `cfb32LineSS1Rect` (`kona.so` 0x567050, 728 bytes): **Established.**
  Chooser for 32-bit polylines in one clip rectangle; it calls the copy, previous-point copy, xor or general version through a pointer and falls back to `cfb32ClippedLineGeneral`.
- `cfb32LineSS1RectPreviousCopy` (`kona.so` 0x4e87c0, 1728 bytes): **Inferred.**
  Relative-coordinate copy-mode polyline for 32-bit pixels inside one clip rectangle. A leaf that keeps the running point in registers. Called from `cfb32LineSS1Rect`.
- `cfb32LineSS1RectXor` (`kona.so` 0x560810, 2372 bytes): **Inferred.**
  Exclusive-or 32-bit polyline in one clip rectangle. Its size matches the 16-bit routine; the stores are word-wide. Called from `cfb32LineSS1Rect`.
- `cfb32LineSS1RectGeneral` (`kona.so` 0x54e210, 2460 bytes): **Inferred.**
  General-raster-op 32-bit polyline in one clip rectangle, taking the and/xor pair the GC validation left in its private record. Called from `cfb32LineSS1Rect`.
- `cfb32SegmentSS1Rect` (`kona.so` 0x4d4a00, 320 bytes): **Established.**
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
  Zero-width arc entry for 8-bit pixels and general raster ops. It compares coordinates with 32767 and either draws by calling through the GC's function table or
  falls back to `miZeroPolyArc` and `miPolyArc`.
- `cfbZeroPolyArcSS8Copy` (`kona.so` 0x54cfb0, 468 bytes): **Inferred.**
  The same arc entry for 8-bit copy mode: coordinate-range test against 32767, then a call through the table, or `miPolyArc` as the fallback.
- `cfb16ZeroPolyArcSSCopy` (`kona.so` 0x5333d0, 468 bytes): **Inferred.**
  Zero-width arc entry for 16-bit copy mode, with the 32767 coordinate test and `miZeroPolyArc` as the fallback.
- `cfb16ZeroPolyArcSSGeneral` (`kona.so` 0x540c50, 468 bytes): **Inferred.**
  Zero-width arc entry for 16-bit pixels under any raster op; coordinate test, then the GC table or `miPolyArc`.
- `cfb32ZeroPolyArcSSGeneral` (`kona.so` 0x51d890, 468 bytes): **Inferred.**
  Zero-width arc entry for 32-bit pixels under any raster op; the same coordinate test and fallbacks as the 16-bit entry, using `miZeroPolyArc`.
- `cfb32PolyFillArcSolidCopy` (`kona.so` 0x549350, 544 bytes): **Inferred.**
  Solid-fill arc entry for 32-bit copy mode: arcs inside the 32767 limit are filled through the GC's table, anything larger is passed to `miPolyFillArc`.
- `cfbFillPoly1RectGeneral` (`kona.so` 0x4cdd80, 3304 bytes): **Established.**
  Polygon fill for 8-bit pixels in one clip rectangle under any raster op. It indexes the GC private array at gc +0x4c, tests the coordinate range
  against 32767, and calls `miFillPolygon` at two sites for shapes it does not scan inline.
- `cfbFillPoly1RectCopy` (`kona.so` 0x527230, 2580 bytes): **Established.**
  Polygon fill for 8-bit pixels in one clip rectangle in copy mode. It uses `miFillPolygon` at two call sites for shapes that need the general scan converter.
- `cfb32FillPoly1RectCopy` (`kona.so` 0x4ea0b0, 2392 bytes): **Established.**
  Copy-mode polygon fill for 32-bit pixels in one clip rectangle; it consults the screen private array at +0x1b4 and falls back to `miFillPolygon` at two sites.

### Colour frame-buffer rectangle, span, tile and stipple fills (`cfb*`, `cfb16*`, `cfb32*`)

- `cfbPolyFillRect` (`kona.so` 0x51c800, 2400 bytes): **Established.**
  PolyFillRect for 8-bit drawables. It looks at the GC's fill style and rop and calls one of the 8-bit routines named in its table
  (`cfbFillRectSolidGeneral`, `cfbFillRectSolidCopy`, `cfbFillRectTileOdd`, the transparent and unnatural stipple fills) through a pointer, calling `miPolyFillRect` twice for the cases it does not handle.
- `cfb16PolyFillRect` (`kona.so` 0x4f3190, 2280 bytes): **Established.**
  PolyFillRect for 16-bit drawables, choosing among `cfb16FillRectSolidGeneral`, `cfb16FillRectSolidCopy`, `cfb16FillRectSolidXor`, and the tile forms
  by fill style, with `miPolyFillRect` as the fallback at two sites.
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
- `cfb16BitBlt` (`kona.so` 0x4d6300, 2092 bytes): **Established.**
  The 16-bit blit driver: it computes the source and destination clip boxes, makes six calls to `NotClippedByChildren` (for a window source), calls the inner blit routine passed in through a pointer ten times (one per box band and direction), and finishes with `miHandleExposures` for the exposure rectangles of a window source.
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
- `cfb16CopyPlane` (`kona.so` 0x4cfc40, 72 bytes): **Established.**
  CopyPlane for 16-bit drawables: no 16-bit plane routine exists, so it forwards all its arguments through a pointer to `cfbPuntCopyPlane`.
- `cfbCopyPlane1to8` (`kona.so` 0x51da70, 3568 bytes): **Inferred.**
  Expands a one-bit-deep source rectangle into 8-bit pixels: each source bit selects the foreground or background value kept in `cfb8StippleXor` and `cfb8StippleAnd`, merged by the rop in `cfb8StippleRRop`.
- `cfbCopyImagePlane` (`kona.so` 0x53b680, 56 bytes): **Established.**
  Wrapper for CopyArea of image planes: when the plane argument is -1 it calls `cfbCopyPlane8to1` to pack 8-bit pixels down to one-bit.
- `cfb16GetImage` (`kona.so` 0x4d6b30, 440 bytes): **Established.**
  GetImage for 16-bit drawables: for ZPixmap requests it builds a scratch pixmap header with `GetScratchPixmapHeader`, zeroes it with `bzero`, copies through `cfb16DoBitblt`, and frees it with `FreeScratchPixmapHeader`; other formats go to `miGetImage` or `mfbGetImage`.
- `cfb16PutImage` (`kona.so` 0x4e8e80, 796 bytes): **Established.**
  PutImage for 16-bit drawables. It wraps the image in a scratch pixmap from `GetScratchPixmapHeader`, saves and restores the GC state with `DoChangeGC` and `ValidateGC`, and copies it to the window with the GC's own CopyArea.
- `cfbImageGlyphBlt8` (`kona.so` 0x4f4cd0, 392 bytes): **Established.**
  ImageGlyphBlt for 8-bit drawables: asks `QueryGlyphExtents` for the string's box (calls it three times, covering the one-rect and clipped cases), fills the background box with the GC's fill routine and then draws the glyphs through the GC's text routine.
- `cfb16ImageGlyphBlt8` (`kona.so` 0x574110, 360 bytes): **Established.**
  The 16-bit ImageGlyphBlt: three `QueryGlyphExtents` sites, a background fill, then the glyph draw.
- `cfbPolyGlyphBlt8` (`kona.so` 0x500a80, 1780 bytes): **Established.**
  PolyGlyphBlt for 8-bit drawables: for each glyph it calls through the GC's stippled fill (three sites) after intersecting the glyph box with the clip box, using the `endtab` table to mask the right edge.
- `cfb32PolyGlyphBlt8` (`kona.so` 0x5508c0, 1816 bytes): **Established.**
  PolyGlyphBlt for 32-bit drawables; same structure with three indirect calls into the fill routine, reading the screen private data at +0x1b4.
- `cfbTEGlyphBlt8` (`kona.so` 0x5573e0, 23240 bytes): **Established.**
  The large terminal-emulator-font text routine for 8-bit drawables. A table of unrolled cases, one per glyph width, writes whole words of expanded pixels; it uses `cfb8SetOpaqueStipple` to prepare the fill colours and falls back to `cfbImageGlyphBlt8` for fonts it cannot handle.
- `cfbPushPixels8` (`kona.so` 0x513e30, 3956 bytes): **Established.**
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
  Makes a rotated copy of an 8-bit tile or stipple pixmap: it copies with `cfbCopyPixmap`, pads it with `cfbPadPixmap`, then calls `cfbXRotatePixmap` and `cfbYRotatePixmap`, and stamps the pixmap with the global serial number. It also uses `memmove` at two sites.
- `cfb16CopyRotatePixmap` (`kona.so` 0x55fcd0, 312 bytes): **Established.**
  The 16-bit version of the rotated copy: `cfb16CopyPixmap`, `cfb16PadPixmap`, `cfb16XRotatePixmap` and `cfb16YRotatePixmap`, with `memmove` calls and the global serial number stamp.
- `cfb16CopyPixmap` (`kona.so` 0x51d7f0, 148 bytes): **Established.**
  Duplicates a 16-bit pixmap: allocates through a function pointer, then copies the pixel data with `memmove`.
- `cfbXRotatePixmap` (`kona.so` 0x550fe0, 448 bytes): **Established.**
  Rotates an 8-bit pixmap horizontally by a given number of pixels. It reports a bad depth through `ErrorF` (three sites) and otherwise shifts each row using the table `cfbendtab`.
- `cfb16XRotatePixmap` (`kona.so` 0x56a490, 448 bytes): **Established.**
  Horizontal rotation of a 16-bit pixmap with three `ErrorF` reports for unsupported widths and `cfb16endtab` for the masks.
- `cfb32XRotatePixmap` (`kona.so` 0x578760, 432 bytes): **Established.**
  Horizontal rotation of a 32-bit pixmap; three `ErrorF` sites and the table `cfb32endtab`.
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
