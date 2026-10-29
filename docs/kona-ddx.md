# The Kona X server module (`kona.so`): function reference

Sources: `usr/lib/X11/dyDDX/kona.so` (6.5.30m; the same functions appear in `konad.so`, `konal.so` and `konas.so`, the other builds of the module the server loads for other configurations) and the per-module assembly in [ddx/asm/kona/](../ddx/asm/kona/). The X server loads the module as the device-dependent part of the Kona screen: it layers a Kona-specific drawing and window layer (`kon*`) over SGI's new frame-buffer layer (`nfb*`), the generic colour and mono frame-buffer code (`cfb*`, `mfb*`) and the machine-independent code (`mi*`). Roles are **inferred** from the function names and from the neighbouring documents ([opengl.md](opengl.md), [dg.md](dg.md)); the functions those documents already read in detail are not repeated. Where a function is the standard routine of the same name in the X11 sample server (the `mi`, `mfb` and `cfb` layers), the table says so and nothing more.

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

