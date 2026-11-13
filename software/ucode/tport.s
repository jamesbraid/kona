# tport.bin read-only image, base 0x0c000000, 96480 bytes; read-write data base 0x040178e0, 31260 bytes (IRIX 6.5.30m)
# No symbols ship with this image. 135 of 227 call targets carry the name of the
# arm1.u function whose masked words they equal; the rest are fn_<address>.
# Display-request table at 0x040188d8 ({name, words, handler} x 93); handlers
# are named DoDGRqst<name>. request	words	handler	name:
#   0	1	0x0c00e320	Test
#   1	2	0x0c00e34c	VCWrite
#   2	1	0x0c00e3ec	VCRead
#   3	10	0x0c0171ac	DiagXmapColor
#   4	1	0x0c0173dc	DisableDiagXmapColor
#   5	4	0x0c017428	VCBusTrace
#   6	4107	0x0c01742c	DiagCursorFromImage
#   7	1	0x0c00d548	DebugMask
#   8	3	0x0c00d57c	SetupFrameBuffer
#   9	1	0x0c00db24	InputSync
#   10	1	0x0c00dc38	GetInputSync
#   11	2	0x0c00dd78	HPhase
#   12	1	0x0c00ddd0	GetHPhase
#   13	1	0x0c00df04	VPhase
#   14	1	0x0c00df64	GetVPhase
#   15	2	0x0c00e098	ChannelGammaMap
#   16	1	0x0c00e0bc	GetChannelGammaMap
#   17	1	0x0c006a5c	Fetal
#   18	1	0x0c00a02c	GetBoardConfig
#   19	1	0x0c00a058	GetChannelConfig
#   20	8	0x0c00c708	Resize
#   21	1	0x0c00c750	GetResize
#   22	383	0x0c008698	LoadFormat
#   23	3	0x0c0097ec	EnableChannel
#   24	1	0x0c009c4c	DisableChannel
#   25	16	0x0c00345c	LoadGenlockParams
#   26	1	0x0c0039ac	EnableGenlock
#   27	2	0x0c004f68	CursorPosition
#   28	1	0x0c004e98	CursorChannel
#   29	1	0x0c004f00	CursorType
#   30	2	0x0c005090	CursorPriority
#   31	2	0x0c005808	ChannelBlanking
#   32	1	0x0c0058a0	GetChannelBlanking
#   33	2	0x0c005a00	OutputGain
#   34	1	0x0c005ac0	GetOutputGain
#   35	4	0x0c005be4	SyncSelects
#   36	1	0x0c005d5c	GetSyncSelects
#   37	2	0x0c005e10	OutputPedestal
#   38	1	0x0c005e68	GetOutputPedestal
#   39	1	0x0c016ed8	InitTextport
#   40	1	0x0c016f70	LoadTextportGlyph
#   41	4	0x0c0170ec	LoadTextportColorIndex
#   42	1	0x0c002b68	EnableVocReadback
#   43	1	0x0c002c34	MasterClockSelect
#   44	1	0x0c002cf8	GetMasterClockSelect
#   45	1	0x0c002434	AutoInit
#   46	1	0x0c006640	LoadEncoder
#   47	1	0x0c00650c	EncoderOutputGain
#   48	1	0x0c006574	GetEncoderOutputGain
#   49	1	0x0c0065a0	SCHPhase
#   50	1	0x0c0065fc	GetSCHPhase
#   51	1	0x0c006964	EncoderTestPattern
#   52	2	0x0c00c94c	BindChannelToXWid
#   53	1328	0x0c00e488	LoadPabXilinx
#   54	4	0x0c00e794	LoadPabSizeRegs
#   55	2	0x0c00e8e8	LoadPabCtrlRegs
#   56	263	0x0c005ebc	LoadDacCursor
#   57	7	0x0c00cf08	VampireAndFieldDominance
#   58	1	0x0c00cf58	GetVampire
#   59	1	0x0c00e294	FastlistChunksize
#   60	1	0x0c005938	TempBlankAllChannels
#   61	1	0x0c003e88	GetDGInterruptState
#   62	1	0x0c002d28	XMapClockSelect
#   63	1	0x0c002e70	GetXMapClockSelect
#   64	3	0x0c003ef8	ChannelResetRatios
#   65	1	0x0c003f80	ResetRMBoards
#   66	1	0x0c009be8	GetChannelEnables
#   67	9	0x0c00c884	PlacementRes
#   68	1	0x0c00416c	GenlockSwitching
#   69	1	0x0c004190	GetGenlockSwitching
#   70	2	0x0c00cffc	ChannelFieldDominance
#   71	1	0x0c00d030	GetChannelFieldDominance
#   72	1	0x0c00dc6c	BoardResetRatio
#   73	1	0x0c00dd44	GetBoardResetRatio
#   74	1	0x0c009ddc	GetChannelFormatInfo
#   75	5	0x0c00e0f8	ChannelGammaMapState
#   76	1	0x0c00e1cc	GetChannelGammaMapState
#   77	1	0x0c0069a8	EnableEncoder
#   78	2	0x0c00d074	ResizeSyncType
#   79	7	0x0c00cce0	Vampire
#   80	1	0x0c00e454	QueryMonitorName
#   81	34	0x0c00e458	MonitorCommand
#   82	6	0x0c00e45c	LoadXilinx
#   83	1	0x0c00e460	XServerVideoInit
#   84	1	0x0c00e464	InternalGenlock
#   85	1	0x0c00e468	GetInternalGenlock
#   86	3	0x0c00e46c	BufferParams
#   87	1	0x0c00e470	GetBufferParams
#   88	3	0x0c00e474	DataFormat
#   89	1	0x0c00e478	GetDataFormat
#   90	1	0x0c00e47c	DVPMult2Freq
#   91	42	0x0c00e480	VBOBCommand
#   92	1	0x0c00e484	GetVBOBReply
0c000000: e3a0d303  mov sp, #0xc000000
0c000004: e59da000  ldr r10, [sp, #0x0]
0c000008: e3a08502  mov r8, #0x800000
0c00000c: e3a0da01  mov sp, #0x1000
0c000010: e3a0e60a  mov lr, #0xa00000
0c000014: e24dd020  sub sp, sp, #0x20
0c000018: e78e800d  str r8, [lr, sp]
0c00001c: e35d0000  cmp sp, #0x0
0c000020: 1afffffb  bne 0x0c000014
0c000024: e3a0c000  mov r12, #0x0
0c000028: e3a99807  mov r9, #0x70000
0c00002c: e2899cff  add r9, r9, #0xff00
0c000030: e089900c  add r9, r9, r12
0c000034: e599d000  ldr sp, [r9, #0x0]
0c000038: e599b004  ldr r11, [r9, #0x4]
0c00003c: e59ca000  ldr r10, [r12, #0x0]
0c000040: e58da000  str r10, [sp, #0x0]
0c000044: e28cc004  add r12, r12, #0x4
0c000048: e28dd004  add sp, sp, #0x4
0c00004c: e24bb004  sub r11, r11, #0x4
0c000050: e35b0000  cmp r11, #0x0
0c000054: 1afffff8  bne 0x0c00003c
0c000058: e599d008  ldr sp, [r9, #0x8]
0c00005c: e599b00c  ldr r11, [r9, #0xc]
0c000060: e59ca000  ldr r10, [r12, #0x0]
0c000064: e58da000  str r10, [sp, #0x0]
0c000068: e28cc004  add r12, r12, #0x4
0c00006c: e28dd004  add sp, sp, #0x4
0c000070: e24bb004  sub r11, r11, #0x4
0c000074: e35b0000  cmp r11, #0x0
0c000078: 1afffff8  bne 0x0c000060
0c00007c: e599b010  ldr r11, [r9, #0x10]
0c000080: e58d8000  str r8, [sp, #0x0]
0c000084: e28dd004  add sp, sp, #0x4
0c000088: e24bb004  sub r11, r11, #0x4
0c00008c: e35b0000  cmp r11, #0x0
0c000090: 1afffffa  bne 0x0c000080
0c000094: e28fd004  add sp, pc, #0x4
0c000098: e588d000  str sp, [r8, #0x0]
0c00009c: e59df000  ldr pc, [sp, #0x0]
0c0000a0: 0c0000a4  copeq 0x0c0000a4
0c0000a4: e3acc602  mov r12, #0x200000
0c0000a8: e28ccf2f  add r12, r12, #0xbc
0c0000ac: e58c8000  str r8, [r12, #0x0]
0c0000b0: e3a0d010  mov sp, #0x10
0c0000b4: e169f00d  msr spsr_9, sp
0c0000b8: e3aeeb03  mov lr, #0xc00
0c0000bc: e28eefff  add lr, lr, #0x3fc
0c0000c0: e28fdf02  add sp, pc, #0x8
0c0000c4: e28ddf00  add sp, sp, #0x0
0c0000c8: e58ed000  str sp, [lr, #0x0]
0c0000cc: e85e8000  ldmda lr, {pc}^
0c0000d0: e3a08000  mov r8, #0x0
0c0000d4: e3a99602  mov r9, #0x200000
0c0000d8: e2899c02  add r9, r9, #0x200
0c0000dc: e3addb03  mov sp, #0xc00
0c0000e0: e28ddfff  add sp, sp, #0x3fc
0c0000e4: e28f4f01  add r4, pc, #0x4
0c0000e8: e2844f00  add r4, r4, #0x0
0c0000ec: eb004abc  bl 0x0c012be4 <fn_0c012be4>
0c0000f0: e1a0e004  mov lr, r4
0c0000f4: e599f200  ldr pc, [r9, #0x200]
0c0000f8: e3a0d000  mov sp, #0x0
0c0000fc: e24fd67f  sub sp, pc, #0x7f00000
0c000100: e24ddae6  sub sp, sp, #0xe6000
0c000104: e51dd7f0  ldr sp, [sp, #-0x7f0]
0c000108: e8cd7fff  stmia sp, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,sp,lr}^
0c00010c: e28dd03c  add sp, sp, #0x3c
0c000110: e24e0008  sub r0, lr, #0x8
0c000114: e14f1000  mrs r1, spsr
0c000118: e88d0003  stmia sp, {r0,r1}
0c00011c: e3a08000  mov r8, #0x0
0c000120: e3a99602  mov r9, #0x200000
0c000124: e2899c02  add r9, r9, #0x200
0c000128: e3addb03  mov sp, #0xc00
0c00012c: e28ddfff  add sp, sp, #0x3fc
0c000130: e24fe67f  sub lr, pc, #0x7f00000
0c000134: e24eeae6  sub lr, lr, #0xe6000
0c000138: e51ee828  ldr lr, [lr, #-0x828]
0c00013c: e24fd67f  sub sp, pc, #0x7f00000
0c000140: e24ddae6  sub sp, sp, #0xe6000
0c000144: e51dd830  ldr sp, [sp, #-0x830]
0c000148: e59dd034  ldr sp, [sp, #0x34]
0c00014c: e20dcefe  and r12, sp, #0xfe0
0c000150: e08ee00c  add lr, lr, r12
0c000154: e8bc00ff  ldmia r12!, {r0,r1,r2,r3,r4,r5,r6,r7}
0c000158: e8ae00ff  stmia lr!, {r0,r1,r2,r3,r4,r5,r6,r7}
0c00015c: e35c0a01  cmp r12, #0x1000
0c000160: bafffffb  blt 0x0c000154
0c000164: e3a0d010  mov sp, #0x10
0c000168: e169f00d  msr spsr_9, sp
0c00016c: e3aeeb03  mov lr, #0xc00
0c000170: e28eefff  add lr, lr, #0x3fc
0c000174: e28fdf02  add sp, pc, #0x8
0c000178: e28ddf00  add sp, sp, #0x0
0c00017c: e58ed000  str sp, [lr, #0x0]
0c000180: e85e8000  ldmda lr, {pc}^
0c000184: e3a04001  mov r4, #0x1
0c000188: e24f067f  sub r0, pc, #0x7f00000
0c00018c: e2400ae6  sub r0, r0, #0xe6000
0c000190: e50048d8  str r4, [r0, #-0x8d8]
0c000194: e3addb03  mov sp, #0xc00
0c000198: e28ddfff  add sp, sp, #0x3fc
0c00019c: e24f4d02  sub r4, pc, #0x80
0c0001a0: e2444f0d  sub r4, r4, #0x34
0c0001a4: eaffffd1  b 0x0c0000f0
0c0001a8: ef000008  swi 0x8
0c0001ac: e24fd67f  sub sp, pc, #0x7f00000
0c0001b0: e24ddae6  sub sp, sp, #0xe6000
0c0001b4: e51dd8a0  ldr sp, [sp, #-0x8a0]
0c0001b8: e59dd034  ldr sp, [sp, #0x34]
0c0001bc: e20dcefe  and r12, sp, #0xfe0
0c0001c0: e24fe67f  sub lr, pc, #0x7f00000
0c0001c4: e24eeae6  sub lr, lr, #0xe6000
0c0001c8: e51ee8b8  ldr lr, [lr, #-0x8b8]
0c0001cc: e08ee00c  add lr, lr, r12
0c0001d0: e8be00ff  ldmia lr!, {r0,r1,r2,r3,r4,r5,r6,r7}
0c0001d4: e8ac00ff  stmia r12!, {r0,r1,r2,r3,r4,r5,r6,r7}
0c0001d8: e35c0a01  cmp r12, #0x1000
0c0001dc: bafffffb  blt 0x0c0001d0
0c0001e0: e24fe67f  sub lr, pc, #0x7f00000
0c0001e4: e24eeae6  sub lr, lr, #0xe6000
0c0001e8: e51ee8d4  ldr lr, [lr, #-0x8d4]
0c0001ec: e59e0040  ldr r0, [lr, #0x40]
0c0001f0: e169f000  msr spsr_9, r0
0c0001f4: e8de7fff  ldmia lr, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,sp,lr}^
0c0001f8: e1a00000  mov r0, r0
0c0001fc: e28ee03c  add lr, lr, #0x3c
0c000200: e8de8000  ldmia lr, {pc}^
0c000204: e3a0d000  mov sp, #0x0
0c000208: e24fd67f  sub sp, pc, #0x7f00000
0c00020c: e24ddae6  sub sp, sp, #0xe6000
0c000210: e51dd8fc  ldr sp, [sp, #-0x8fc]
0c000214: e8cd7fff  stmia sp, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,sp,lr}^
0c000218: e28dd03c  add sp, sp, #0x3c
0c00021c: e24e0008  sub r0, lr, #0x8
0c000220: e14f1000  mrs r1, spsr
0c000224: e88d0003  stmia sp, {r0,r1}
0c000228: e3a08000  mov r8, #0x0
0c00022c: e3a99602  mov r9, #0x200000
0c000230: e2899c02  add r9, r9, #0x200
0c000234: e3addb03  mov sp, #0xc00
0c000238: e28ddfff  add sp, sp, #0x3fc
0c00023c: eb0046ab  bl 0x0c011cf0 <reset>
0c000240: e3a0d000  mov sp, #0x0
0c000244: e24fd67f  sub sp, pc, #0x7f00000
0c000248: e24ddae6  sub sp, sp, #0xe6000
0c00024c: e51dd938  ldr sp, [sp, #-0x938]
0c000250: e8cd7fff  stmia sp, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,sp,lr}^
0c000254: e28dd03c  add sp, sp, #0x3c
0c000258: e24e0008  sub r0, lr, #0x8
0c00025c: e14f1000  mrs r1, spsr
0c000260: e88d0003  stmia sp, {r0,r1}
0c000264: e3a08000  mov r8, #0x0
0c000268: e3a99602  mov r9, #0x200000
0c00026c: e2899c02  add r9, r9, #0x200
0c000270: e3addb03  mov sp, #0xc00
0c000274: e28ddfff  add sp, sp, #0x3fc
0c000278: eb0046a0  bl 0x0c011d00 <badinstr>
0c00027c: e3a0d000  mov sp, #0x0
0c000280: e24fd67f  sub sp, pc, #0x7f00000
0c000284: e24ddae6  sub sp, sp, #0xe6000
0c000288: e51dd974  ldr sp, [sp, #-0x974]
0c00028c: e8cd7fff  stmia sp, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,sp,lr}^
0c000290: e28dd03c  add sp, sp, #0x3c
0c000294: e24e0008  sub r0, lr, #0x8
0c000298: e14f1000  mrs r1, spsr
0c00029c: e88d0003  stmia sp, {r0,r1}
0c0002a0: e3a08000  mov r8, #0x0
0c0002a4: e3a99602  mov r9, #0x200000
0c0002a8: e2899c02  add r9, r9, #0x200
0c0002ac: e3addb03  mov sp, #0xc00
0c0002b0: e28ddfff  add sp, sp, #0x3fc
0c0002b4: eb004698  bl 0x0c011d1c <pabort>
0c0002b8: e3a0d000  mov sp, #0x0
0c0002bc: e24fd67f  sub sp, pc, #0x7f00000
0c0002c0: e24ddae6  sub sp, sp, #0xe6000
0c0002c4: e51dd9b0  ldr sp, [sp, #-0x9b0]
0c0002c8: e8cd7fff  stmia sp, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,sp,lr}^
0c0002cc: e28dd03c  add sp, sp, #0x3c
0c0002d0: e24e0008  sub r0, lr, #0x8
0c0002d4: e14f1000  mrs r1, spsr
0c0002d8: e88d0003  stmia sp, {r0,r1}
0c0002dc: e3a08000  mov r8, #0x0
0c0002e0: e3a99602  mov r9, #0x200000
0c0002e4: e2899c02  add r9, r9, #0x200
0c0002e8: e3addb03  mov sp, #0xc00
0c0002ec: e28ddfff  add sp, sp, #0x3fc
0c0002f0: eb00468f  bl 0x0c011d34 <badaddr>
0c0002f4: e3a0d000  mov sp, #0x0
0c0002f8: e24fd67f  sub sp, pc, #0x7f00000
0c0002fc: e24ddae6  sub sp, sp, #0xe6000
0c000300: e51dd9ec  ldr sp, [sp, #-0x9ec]
0c000304: e8cd7fff  stmia sp, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,sp,lr}^
0c000308: e28dd03c  add sp, sp, #0x3c
0c00030c: e24e0008  sub r0, lr, #0x8
0c000310: e14f1000  mrs r1, spsr
0c000314: e88d0003  stmia sp, {r0,r1}
0c000318: e3a08000  mov r8, #0x0
0c00031c: e3a99602  mov r9, #0x200000
0c000320: e2899c02  add r9, r9, #0x200
0c000324: e3addb03  mov sp, #0xc00
0c000328: e28ddfff  add sp, sp, #0x3fc
0c00032c: eb004686  bl 0x0c011d4c <irq>
0c000330: e3a0d000  mov sp, #0x0
0c000334: e24fd67f  sub sp, pc, #0x7f00000
0c000338: e24ddae6  sub sp, sp, #0xe6000
0c00033c: e51dda28  ldr sp, [sp, #-0xa28]
0c000340: e8cd7fff  stmia sp, {r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,sp,lr}^
0c000344: e28dd03c  add sp, sp, #0x3c
0c000348: e24e0008  sub r0, lr, #0x8
0c00034c: e14f1000  mrs r1, spsr
0c000350: e88d0003  stmia sp, {r0,r1}
0c000354: e3a08000  mov r8, #0x0
0c000358: e3a99602  mov r9, #0x200000
0c00035c: e2899c02  add r9, r9, #0x200
0c000360: e3addb03  mov sp, #0xc00
0c000364: e28ddfff  add sp, sp, #0x3fc
0c000368: eb00467e  bl 0x0c011d68 <fiq>
0c00036c: e59ff018  ldr pc, [pc, #0x18] =0x0c000204
0c000370: e59ff018  ldr pc, [pc, #0x18] =0x0c000240
0c000374: e59ff018  ldr pc, [pc, #0x18] =0x0c0001ac
0c000378: e59ff018  ldr pc, [pc, #0x18] =0x0c00027c
0c00037c: e59ff018  ldr pc, [pc, #0x18] =0x0c0000f8
0c000380: e59ff018  ldr pc, [pc, #0x18] =0x0c0002b8
0c000384: e59ff018  ldr pc, [pc, #0x18] =0x0c0002f4
0c000388: e59ff018  ldr pc, [pc, #0x18] =0x0c000330
0c00038c: 0c000204  .word 0x0c000204
0c000390: 0c000240  .word 0x0c000240
0c000394: 0c0001ac  .word 0x0c0001ac
0c000398: 0c00027c  .word 0x0c00027c
0c00039c: 0c0000f8  .word 0x0c0000f8
0c0003a0: 0c0002b8  .word 0x0c0002b8
0c0003a4: 0c0002f4  .word 0x0c0002f4
0c0003a8: 0c000330  .word 0x0c000330
0c0003ac: 00000000  andeq r0, r0, r0
0c0003b0: 0c012d04  copeq 0x0c012d04
0c0003b4: 00000000  andeq r0, r0, r0
0c0003b8: 0c00ed40  copeq 0x0c00ed40
0c0003bc: 00000000  andeq r0, r0, r0
0c0003c0: 0c011f10  copeq 0x0c011f10
0c0003c4: 00000000  andeq r0, r0, r0
0c0003c8: 0c011f10  copeq 0x0c011f10
0c0003cc: 00000000  andeq r0, r0, r0
0c0003d0: 0c011f10  copeq 0x0c011f10
0c0003d4: 00000000  andeq r0, r0, r0
0c0003d8: 0c011f10  copeq 0x0c011f10
0c0003dc: 00000000  andeq r0, r0, r0
0c0003e0: 0c011f10  copeq 0x0c011f10
0c0003e4: 00000000  andeq r0, r0, r0
0c0003e8: 0c011f10  copeq 0x0c011f10
0c0003ec: 00000000  andeq r0, r0, r0
0c0003f0: 0c011f10  copeq 0x0c011f10
0c0003f4: 00000000  andeq r0, r0, r0
0c0003f8: 0c011f10  copeq 0x0c011f10
0c0003fc: 00000000  andeq r0, r0, r0
0c000400: 0c011f10  copeq 0x0c011f10
0c000404: 00000000  andeq r0, r0, r0
0c000408: 0c011f10  copeq 0x0c011f10
0c00040c: 00000000  andeq r0, r0, r0
0c000410: 0c011f10  copeq 0x0c011f10
0c000414: 00000000  andeq r0, r0, r0
0c000418: 0c011f10  copeq 0x0c011f10
0c00041c: 00000000  andeq r0, r0, r0
0c000420: 0c011f10  copeq 0x0c011f10
0c000424: 00000000  andeq r0, r0, r0
0c000428: 0c011f10  copeq 0x0c011f10
0c00042c: 00000000  andeq r0, r0, r0
0c000430: 0c011f10  copeq 0x0c011f10
0c000434: 00000000  andeq r0, r0, r0
0c000438: 0c011f10  copeq 0x0c011f10
0c00043c: 00000000  andeq r0, r0, r0
0c000440: 0c011f10  copeq 0x0c011f10
0c000444: 00000000  andeq r0, r0, r0
0c000448: 0c011f10  copeq 0x0c011f10
0c00044c: 00000000  andeq r0, r0, r0
0c000450: 0c011f10  copeq 0x0c011f10
0c000454: 00000000  andeq r0, r0, r0
0c000458: 0c011f10  copeq 0x0c011f10
0c00045c: 00000000  andeq r0, r0, r0
0c000460: 0c011f10  copeq 0x0c011f10
0c000464: 00000000  andeq r0, r0, r0
0c000468: 0c011f10  copeq 0x0c011f10
0c00046c: 00000000  andeq r0, r0, r0
0c000470: 0c011f10  copeq 0x0c011f10
0c000474: 00000000  andeq r0, r0, r0
0c000478: 0c011f10  copeq 0x0c011f10
0c00047c: 00000000  andeq r0, r0, r0
0c000480: 0c011f10  copeq 0x0c011f10
0c000484: 00000000  andeq r0, r0, r0
0c000488: 0c011f10  copeq 0x0c011f10
0c00048c: 00000000  andeq r0, r0, r0
0c000490: 0c011f10  copeq 0x0c011f10
0c000494: 00000000  andeq r0, r0, r0
0c000498: 0c011f10  copeq 0x0c011f10
0c00049c: 00000000  andeq r0, r0, r0
0c0004a0: 0c011f10  copeq 0x0c011f10
0c0004a4: 00000000  andeq r0, r0, r0
0c0004a8: 0c011f10  copeq 0x0c011f10
0c0004ac: 00000000  andeq r0, r0, r0
0c0004b0: 0c011f10  copeq 0x0c011f10
0c0004b4: 00000000  andeq r0, r0, r0
0c0004b8: 0c011f10  copeq 0x0c011f10
0c0004bc: 00000000  andeq r0, r0, r0
0c0004c0: 0c011f10  copeq 0x0c011f10
0c0004c4: 00000000  andeq r0, r0, r0
0c0004c8: 0c011f10  copeq 0x0c011f10
0c0004cc: 00000000  andeq r0, r0, r0
0c0004d0: 0c011f10  copeq 0x0c011f10
0c0004d4: 00000000  andeq r0, r0, r0
0c0004d8: 0c011f10  copeq 0x0c011f10
0c0004dc: 00000000  andeq r0, r0, r0
0c0004e0: 0c011f10  copeq 0x0c011f10
0c0004e4: 00000000  andeq r0, r0, r0
0c0004e8: 0c011f10  copeq 0x0c011f10
0c0004ec: 00000000  andeq r0, r0, r0
0c0004f0: 0c011f10  copeq 0x0c011f10
0c0004f4: 00000000  andeq r0, r0, r0
0c0004f8: 0c011f10  copeq 0x0c011f10
0c0004fc: 00000000  andeq r0, r0, r0
0c000500: 0c011f10  copeq 0x0c011f10
0c000504: 00000000  andeq r0, r0, r0
0c000508: 0c011f10  copeq 0x0c011f10
0c00050c: 00000000  andeq r0, r0, r0
0c000510: 0c011f10  copeq 0x0c011f10
0c000514: 00000000  andeq r0, r0, r0
0c000518: 0c011f10  copeq 0x0c011f10
0c00051c: 00000000  andeq r0, r0, r0
0c000520: 0c011f10  copeq 0x0c011f10
0c000524: 00000000  andeq r0, r0, r0
0c000528: 0c011f10  copeq 0x0c011f10
0c00052c: 00000000  andeq r0, r0, r0
0c000530: 0c011f10  copeq 0x0c011f10
0c000534: 00000000  andeq r0, r0, r0
0c000538: 0c011f10  copeq 0x0c011f10
0c00053c: 00000000  andeq r0, r0, r0
0c000540: 0c011f10  copeq 0x0c011f10
0c000544: 00000000  andeq r0, r0, r0
0c000548: 0c011f10  copeq 0x0c011f10
0c00054c: 00000000  andeq r0, r0, r0
0c000550: 0c011f10  copeq 0x0c011f10
0c000554: 00000000  andeq r0, r0, r0
0c000558: 0c011f10  copeq 0x0c011f10
0c00055c: 00000000  andeq r0, r0, r0
0c000560: 0c011f10  copeq 0x0c011f10
0c000564: 00000000  andeq r0, r0, r0
0c000568: 0c011f10  copeq 0x0c011f10
0c00056c: 00000000  andeq r0, r0, r0
0c000570: 0c011f10  copeq 0x0c011f10
0c000574: 00000000  andeq r0, r0, r0
0c000578: 0c011f10  copeq 0x0c011f10
0c00057c: 00000000  andeq r0, r0, r0
0c000580: 0c011f10  copeq 0x0c011f10
0c000584: 00000000  andeq r0, r0, r0
0c000588: 0c011f10  copeq 0x0c011f10
0c00058c: 00000000  andeq r0, r0, r0
0c000590: 0c011f10  copeq 0x0c011f10
0c000594: 00000000  andeq r0, r0, r0
0c000598: 0c011f10  copeq 0x0c011f10
0c00059c: 00000000  andeq r0, r0, r0
0c0005a0: 0c011f10  copeq 0x0c011f10
0c0005a4: 00000000  andeq r0, r0, r0
0c0005a8: 0c011f10  copeq 0x0c011f10
0c0005ac: 00000000  andeq r0, r0, r0
0c0005b0: 0c011f10  copeq 0x0c011f10
0c0005b4: 00000000  andeq r0, r0, r0
0c0005b8: 0c011f10  copeq 0x0c011f10
0c0005bc: 00000000  andeq r0, r0, r0
0c0005c0: 0c011f10  copeq 0x0c011f10
0c0005c4: 00000000  andeq r0, r0, r0
0c0005c8: 0c011f10  copeq 0x0c011f10
0c0005cc: 00000000  andeq r0, r0, r0
0c0005d0: 0c011f10  copeq 0x0c011f10
0c0005d4: 00000000  andeq r0, r0, r0
0c0005d8: 0c011f10  copeq 0x0c011f10
0c0005dc: 00000000  andeq r0, r0, r0
0c0005e0: 0c011f10  copeq 0x0c011f10
0c0005e4: 00000000  andeq r0, r0, r0
0c0005e8: 0c011f10  copeq 0x0c011f10
0c0005ec: 00000000  andeq r0, r0, r0
0c0005f0: 0c011f10  copeq 0x0c011f10
0c0005f4: 00000000  andeq r0, r0, r0
0c0005f8: 0c011f10  copeq 0x0c011f10
0c0005fc: 00000000  andeq r0, r0, r0
0c000600: 0c011f10  copeq 0x0c011f10
0c000604: 00000000  andeq r0, r0, r0
0c000608: 0c011f10  copeq 0x0c011f10
0c00060c: 00000000  andeq r0, r0, r0
0c000610: 0c011f10  copeq 0x0c011f10
0c000614: 00000000  andeq r0, r0, r0
0c000618: 0c011f10  copeq 0x0c011f10
0c00061c: 00000000  andeq r0, r0, r0
0c000620: 0c011f10  copeq 0x0c011f10
0c000624: 00000000  andeq r0, r0, r0
0c000628: 0c011f10  copeq 0x0c011f10
0c00062c: 00000000  andeq r0, r0, r0
0c000630: 0c011f10  copeq 0x0c011f10
0c000634: 00000000  andeq r0, r0, r0
0c000638: 0c011f10  copeq 0x0c011f10
0c00063c: 00000000  andeq r0, r0, r0
0c000640: 0c011f10  copeq 0x0c011f10
0c000644: 00000000  andeq r0, r0, r0
0c000648: 0c011f10  copeq 0x0c011f10
0c00064c: 00000000  andeq r0, r0, r0
0c000650: 0c011f10  copeq 0x0c011f10
0c000654: 00000000  andeq r0, r0, r0
0c000658: 0c011f10  copeq 0x0c011f10
0c00065c: 00000000  andeq r0, r0, r0
0c000660: 0c011f10  copeq 0x0c011f10
0c000664: 00000000  andeq r0, r0, r0
0c000668: 0c011f10  copeq 0x0c011f10
0c00066c: 00000000  andeq r0, r0, r0
0c000670: 0c011f10  copeq 0x0c011f10
0c000674: 00000000  andeq r0, r0, r0
0c000678: 0c011f10  copeq 0x0c011f10
0c00067c: 00000000  andeq r0, r0, r0
0c000680: 0c011f10  copeq 0x0c011f10
0c000684: 00000000  andeq r0, r0, r0
0c000688: 0c011f10  copeq 0x0c011f10
0c00068c: 00000000  andeq r0, r0, r0
0c000690: 0c011f10  copeq 0x0c011f10
0c000694: 00000000  andeq r0, r0, r0
0c000698: 0c011f10  copeq 0x0c011f10
0c00069c: 00000000  andeq r0, r0, r0
0c0006a0: 0c011f10  copeq 0x0c011f10
0c0006a4: 00000000  andeq r0, r0, r0
0c0006a8: 0c011f10  copeq 0x0c011f10
0c0006ac: 00000000  andeq r0, r0, r0
0c0006b0: 0c011f10  copeq 0x0c011f10
0c0006b4: 00000000  andeq r0, r0, r0
0c0006b8: 0c011f10  copeq 0x0c011f10
0c0006bc: 00000000  andeq r0, r0, r0
0c0006c0: 0c011f10  copeq 0x0c011f10
0c0006c4: 00000000  andeq r0, r0, r0
0c0006c8: 0c011f10  copeq 0x0c011f10
0c0006cc: 00000000  andeq r0, r0, r0
0c0006d0: 0c011f10  copeq 0x0c011f10
0c0006d4: 00000000  andeq r0, r0, r0
0c0006d8: 0c011f10  copeq 0x0c011f10
0c0006dc: 00000000  andeq r0, r0, r0
0c0006e0: 0c011f10  copeq 0x0c011f10
0c0006e4: 00000000  andeq r0, r0, r0
0c0006e8: 0c011f10  copeq 0x0c011f10
0c0006ec: 00000000  andeq r0, r0, r0
0c0006f0: 0c011f10  copeq 0x0c011f10
0c0006f4: 00000000  andeq r0, r0, r0
0c0006f8: 0c011f10  copeq 0x0c011f10
0c0006fc: 00000000  andeq r0, r0, r0
0c000700: 0c011f10  copeq 0x0c011f10
0c000704: 00000000  andeq r0, r0, r0
0c000708: 0c011f10  copeq 0x0c011f10
0c00070c: 00000000  andeq r0, r0, r0
0c000710: 0c011f10  copeq 0x0c011f10
0c000714: 00000000  andeq r0, r0, r0
0c000718: 0c011f10  copeq 0x0c011f10
0c00071c: 00000000  andeq r0, r0, r0
0c000720: 0c011f10  copeq 0x0c011f10
0c000724: 00000000  andeq r0, r0, r0
0c000728: 0c011f10  copeq 0x0c011f10
0c00072c: 00000000  andeq r0, r0, r0
0c000730: 0c011f10  copeq 0x0c011f10
0c000734: 00000000  andeq r0, r0, r0
0c000738: 0c011f10  copeq 0x0c011f10
0c00073c: 00000000  andeq r0, r0, r0
0c000740: 0c011f10  copeq 0x0c011f10
0c000744: 00000000  andeq r0, r0, r0
0c000748: 0c011f10  copeq 0x0c011f10
0c00074c: 00000000  andeq r0, r0, r0
0c000750: 0c011f10  copeq 0x0c011f10
0c000754: 00000000  andeq r0, r0, r0
0c000758: 0c011f10  copeq 0x0c011f10
0c00075c: 00000000  andeq r0, r0, r0
0c000760: 0c011f10  copeq 0x0c011f10
0c000764: 00000000  andeq r0, r0, r0
0c000768: 0c011f10  copeq 0x0c011f10
0c00076c: 00000000  andeq r0, r0, r0
0c000770: 0c011f10  copeq 0x0c011f10
0c000774: 00000000  andeq r0, r0, r0
0c000778: 0c011f10  copeq 0x0c011f10
0c00077c: 00000000  andeq r0, r0, r0
0c000780: 0c011f10  copeq 0x0c011f10
0c000784: 00000000  andeq r0, r0, r0
0c000788: 0c011f10  copeq 0x0c011f10
0c00078c: 00000000  andeq r0, r0, r0
0c000790: 0c011f10  copeq 0x0c011f10
0c000794: 00000000  andeq r0, r0, r0
0c000798: 0c011f10  copeq 0x0c011f10
0c00079c: 00000000  andeq r0, r0, r0
0c0007a0: 0c011f10  copeq 0x0c011f10
0c0007a4: 00000000  andeq r0, r0, r0
0c0007a8: 0c011f10  copeq 0x0c011f10
0c0007ac: 00000000  andeq r0, r0, r0
0c0007b0: 0c011f10  copeq 0x0c011f10
0c0007b4: 00000000  andeq r0, r0, r0
0c0007b8: 0c011f10  copeq 0x0c011f10
0c0007bc: 00000000  andeq r0, r0, r0
0c0007c0: 0c011f10  copeq 0x0c011f10
0c0007c4: 00000000  andeq r0, r0, r0
0c0007c8: 0c011f10  copeq 0x0c011f10
0c0007cc: 00000000  andeq r0, r0, r0
0c0007d0: 0c011f10  copeq 0x0c011f10
0c0007d4: 00000000  andeq r0, r0, r0
0c0007d8: 0c011f10  copeq 0x0c011f10
0c0007dc: 00000000  andeq r0, r0, r0
0c0007e0: 0c011f10  copeq 0x0c011f10
0c0007e4: 00000000  andeq r0, r0, r0
0c0007e8: 0c011f10  copeq 0x0c011f10
0c0007ec: 00000000  andeq r0, r0, r0
0c0007f0: 0c011f10  copeq 0x0c011f10
0c0007f4: 00000000  andeq r0, r0, r0
0c0007f8: 0c011f10  copeq 0x0c011f10
0c0007fc: 00000000  andeq r0, r0, r0
0c000800: 0c011f10  copeq 0x0c011f10
0c000804: 00000000  andeq r0, r0, r0
0c000808: 0c011f10  copeq 0x0c011f10
0c00080c: 00000000  andeq r0, r0, r0
0c000810: 0c011f10  copeq 0x0c011f10
0c000814: 00000000  andeq r0, r0, r0
0c000818: 0c011f10  copeq 0x0c011f10
0c00081c: 00000000  andeq r0, r0, r0
0c000820: 0c011f10  copeq 0x0c011f10
0c000824: 00000000  andeq r0, r0, r0
0c000828: 0c011f10  copeq 0x0c011f10
0c00082c: 00000000  andeq r0, r0, r0
0c000830: 0c011f10  copeq 0x0c011f10
0c000834: 00000000  andeq r0, r0, r0
0c000838: 0c011f10  copeq 0x0c011f10
0c00083c: 00000000  andeq r0, r0, r0
0c000840: 0c011f10  copeq 0x0c011f10
0c000844: 00000000  andeq r0, r0, r0
0c000848: 0c011f10  copeq 0x0c011f10
0c00084c: 00000000  andeq r0, r0, r0
0c000850: 0c011f10  copeq 0x0c011f10
0c000854: 00000000  andeq r0, r0, r0
0c000858: 0c011f10  copeq 0x0c011f10
0c00085c: 00000000  andeq r0, r0, r0
0c000860: 0c011f10  copeq 0x0c011f10
0c000864: 00000000  andeq r0, r0, r0
0c000868: 0c011f10  copeq 0x0c011f10
0c00086c: 00000000  andeq r0, r0, r0
0c000870: 0c011f10  copeq 0x0c011f10
0c000874: 00000000  andeq r0, r0, r0
0c000878: 0c011f10  copeq 0x0c011f10
0c00087c: 00000000  andeq r0, r0, r0
0c000880: 0c011f10  copeq 0x0c011f10
0c000884: 00000000  andeq r0, r0, r0
0c000888: 0c011f10  copeq 0x0c011f10
0c00088c: 00000000  andeq r0, r0, r0
0c000890: 0c011f10  copeq 0x0c011f10
0c000894: 00000000  andeq r0, r0, r0
0c000898: 0c011f10  copeq 0x0c011f10
0c00089c: 00000000  andeq r0, r0, r0
0c0008a0: 0c011f10  copeq 0x0c011f10
0c0008a4: 00000000  andeq r0, r0, r0
0c0008a8: 0c011f10  copeq 0x0c011f10
0c0008ac: 00000000  andeq r0, r0, r0
0c0008b0: 0c011f10  copeq 0x0c011f10
0c0008b4: 00000000  andeq r0, r0, r0
0c0008b8: 0c011f10  copeq 0x0c011f10
0c0008bc: 00000000  andeq r0, r0, r0
0c0008c0: 0c011f10  copeq 0x0c011f10
0c0008c4: 00000000  andeq r0, r0, r0
0c0008c8: 0c011f10  copeq 0x0c011f10
0c0008cc: 00000000  andeq r0, r0, r0
0c0008d0: 0c011f10  copeq 0x0c011f10
0c0008d4: 00000000  andeq r0, r0, r0
0c0008d8: 0c011f10  copeq 0x0c011f10
0c0008dc: 00000000  andeq r0, r0, r0
0c0008e0: 0c011f10  copeq 0x0c011f10
0c0008e4: 00000000  andeq r0, r0, r0
0c0008e8: 0c011f10  copeq 0x0c011f10
0c0008ec: 00000000  andeq r0, r0, r0
0c0008f0: 0c011f10  copeq 0x0c011f10
0c0008f4: 00000000  andeq r0, r0, r0
0c0008f8: 0c011f10  copeq 0x0c011f10
0c0008fc: 00000000  andeq r0, r0, r0
0c000900: 0c011f10  copeq 0x0c011f10
0c000904: 00000000  andeq r0, r0, r0
0c000908: 0c011f10  copeq 0x0c011f10
0c00090c: 00000000  andeq r0, r0, r0
0c000910: 0c011f10  copeq 0x0c011f10
0c000914: 00000000  andeq r0, r0, r0
0c000918: 0c011f10  copeq 0x0c011f10
0c00091c: 00000000  andeq r0, r0, r0
0c000920: 0c011f10  copeq 0x0c011f10
0c000924: 00000000  andeq r0, r0, r0
0c000928: 0c011f10  copeq 0x0c011f10
0c00092c: 00000000  andeq r0, r0, r0
0c000930: 0c011f10  copeq 0x0c011f10
0c000934: 00000000  andeq r0, r0, r0
0c000938: 0c011f10  copeq 0x0c011f10
0c00093c: 00000000  andeq r0, r0, r0
0c000940: 0c011f10  copeq 0x0c011f10
0c000944: 00000000  andeq r0, r0, r0
0c000948: 0c011f10  copeq 0x0c011f10
0c00094c: 00000000  andeq r0, r0, r0
0c000950: 0c011f10  copeq 0x0c011f10
0c000954: 00000000  andeq r0, r0, r0
0c000958: 0c011f10  copeq 0x0c011f10
0c00095c: 00000000  andeq r0, r0, r0
0c000960: 0c011f10  copeq 0x0c011f10
0c000964: 00000000  andeq r0, r0, r0
0c000968: 0c011f10  copeq 0x0c011f10
0c00096c: 00000000  andeq r0, r0, r0
0c000970: 0c011f10  copeq 0x0c011f10
0c000974: 00000000  andeq r0, r0, r0
0c000978: 0c011f10  copeq 0x0c011f10
0c00097c: 00000000  andeq r0, r0, r0
0c000980: 0c011f10  copeq 0x0c011f10
0c000984: 00000000  andeq r0, r0, r0
0c000988: 0c011f10  copeq 0x0c011f10
0c00098c: 00000000  andeq r0, r0, r0
0c000990: 0c011f10  copeq 0x0c011f10
0c000994: 00000000  andeq r0, r0, r0
0c000998: 0c011f10  copeq 0x0c011f10
0c00099c: 00000000  andeq r0, r0, r0
0c0009a0: 0c011f10  copeq 0x0c011f10
0c0009a4: 00000000  andeq r0, r0, r0
0c0009a8: 0c011f10  copeq 0x0c011f10
0c0009ac: 00000000  andeq r0, r0, r0
0c0009b0: 0c011f10  copeq 0x0c011f10
0c0009b4: 00000000  andeq r0, r0, r0
0c0009b8: 0c011f10  copeq 0x0c011f10
0c0009bc: 00000000  andeq r0, r0, r0
0c0009c0: 0c011f10  copeq 0x0c011f10
0c0009c4: 00000000  andeq r0, r0, r0
0c0009c8: 0c011f10  copeq 0x0c011f10
0c0009cc: 00000000  andeq r0, r0, r0
0c0009d0: 0c011f10  copeq 0x0c011f10
0c0009d4: 00000000  andeq r0, r0, r0
0c0009d8: 0c011f10  copeq 0x0c011f10
0c0009dc: 00000000  andeq r0, r0, r0
0c0009e0: 0c011f10  copeq 0x0c011f10
0c0009e4: 00000000  andeq r0, r0, r0
0c0009e8: 0c011f10  copeq 0x0c011f10
0c0009ec: 00000000  andeq r0, r0, r0
0c0009f0: 0c011f10  copeq 0x0c011f10
0c0009f4: 00000000  andeq r0, r0, r0
0c0009f8: 0c011f10  copeq 0x0c011f10
0c0009fc: 00000000  andeq r0, r0, r0
0c000a00: 0c011f10  copeq 0x0c011f10
0c000a04: 00000000  andeq r0, r0, r0
0c000a08: 0c011f10  copeq 0x0c011f10
0c000a0c: 00000000  andeq r0, r0, r0
0c000a10: 0c011f10  copeq 0x0c011f10
0c000a14: 00000000  andeq r0, r0, r0
0c000a18: 0c011f10  copeq 0x0c011f10
0c000a1c: 00000000  andeq r0, r0, r0
0c000a20: 0c011f10  copeq 0x0c011f10
0c000a24: 00000000  andeq r0, r0, r0
0c000a28: 0c011f10  copeq 0x0c011f10
0c000a2c: 00000000  andeq r0, r0, r0
0c000a30: 0c011f10  copeq 0x0c011f10
0c000a34: 00000000  andeq r0, r0, r0
0c000a38: 0c011f10  copeq 0x0c011f10
0c000a3c: 00000000  andeq r0, r0, r0
0c000a40: 0c011f10  copeq 0x0c011f10
0c000a44: 00000000  andeq r0, r0, r0
0c000a48: 0c011f10  copeq 0x0c011f10
0c000a4c: 00000000  andeq r0, r0, r0
0c000a50: 0c011f10  copeq 0x0c011f10
0c000a54: 00000000  andeq r0, r0, r0
0c000a58: 0c011f10  copeq 0x0c011f10
0c000a5c: 00000000  andeq r0, r0, r0
0c000a60: 0c011f10  copeq 0x0c011f10
0c000a64: 00000000  andeq r0, r0, r0
0c000a68: 0c011f10  copeq 0x0c011f10
0c000a6c: 00000000  andeq r0, r0, r0
0c000a70: 0c011f10  copeq 0x0c011f10
0c000a74: 00000000  andeq r0, r0, r0
0c000a78: 0c011f10  copeq 0x0c011f10
0c000a7c: 00000000  andeq r0, r0, r0
0c000a80: 0c011f10  copeq 0x0c011f10
0c000a84: 00000000  andeq r0, r0, r0
0c000a88: 0c011f10  copeq 0x0c011f10
0c000a8c: 00000000  andeq r0, r0, r0
0c000a90: 0c011f10  copeq 0x0c011f10
0c000a94: 00000000  andeq r0, r0, r0
0c000a98: 0c011f10  copeq 0x0c011f10
0c000a9c: 00000000  andeq r0, r0, r0
0c000aa0: 0c011f10  copeq 0x0c011f10
0c000aa4: 00000000  andeq r0, r0, r0
0c000aa8: 0c011f10  copeq 0x0c011f10
0c000aac: 00000000  andeq r0, r0, r0
0c000ab0: 0c011f10  copeq 0x0c011f10
0c000ab4: 00000000  andeq r0, r0, r0
0c000ab8: 0c011f10  copeq 0x0c011f10
0c000abc: 00000000  andeq r0, r0, r0
0c000ac0: 0c011f10  copeq 0x0c011f10
0c000ac4: 00000000  andeq r0, r0, r0
0c000ac8: 0c011f10  copeq 0x0c011f10
0c000acc: 00000000  andeq r0, r0, r0
0c000ad0: 0c011f10  copeq 0x0c011f10
0c000ad4: 00000000  andeq r0, r0, r0
0c000ad8: 0c011f10  copeq 0x0c011f10
0c000adc: 00000000  andeq r0, r0, r0
0c000ae0: 0c011f10  copeq 0x0c011f10
0c000ae4: 00000000  andeq r0, r0, r0
0c000ae8: 0c011f10  copeq 0x0c011f10
0c000aec: 00000000  andeq r0, r0, r0
0c000af0: 0c011f10  copeq 0x0c011f10
0c000af4: 00000000  andeq r0, r0, r0
0c000af8: 0c011f10  copeq 0x0c011f10
0c000afc: 00000000  andeq r0, r0, r0
0c000b00: 0c011f10  copeq 0x0c011f10
0c000b04: 00000000  andeq r0, r0, r0
0c000b08: 0c011f10  copeq 0x0c011f10
0c000b0c: 00000000  andeq r0, r0, r0
0c000b10: 0c011f10  copeq 0x0c011f10
0c000b14: 00000000  andeq r0, r0, r0
0c000b18: 0c011f10  copeq 0x0c011f10
0c000b1c: 00000000  andeq r0, r0, r0
0c000b20: 0c011f10  copeq 0x0c011f10
0c000b24: 00000000  andeq r0, r0, r0
0c000b28: 0c011f10  copeq 0x0c011f10
0c000b2c: 00000000  andeq r0, r0, r0
0c000b30: 0c011f10  copeq 0x0c011f10
0c000b34: 00000000  andeq r0, r0, r0
0c000b38: 0c011f10  copeq 0x0c011f10
0c000b3c: 00000000  andeq r0, r0, r0
0c000b40: 0c011f10  copeq 0x0c011f10
0c000b44: 00000000  andeq r0, r0, r0
0c000b48: 0c011f10  copeq 0x0c011f10
0c000b4c: 00000000  andeq r0, r0, r0
0c000b50: 0c011f10  copeq 0x0c011f10
0c000b54: 00000000  andeq r0, r0, r0
0c000b58: 0c011f10  copeq 0x0c011f10
0c000b5c: 00000000  andeq r0, r0, r0
0c000b60: 0c011f10  copeq 0x0c011f10
0c000b64: 00000000  andeq r0, r0, r0
0c000b68: 0c011f10  copeq 0x0c011f10
0c000b6c: 00000000  andeq r0, r0, r0
0c000b70: 0c011f10  copeq 0x0c011f10
0c000b74: 00000000  andeq r0, r0, r0
0c000b78: 0c011f10  copeq 0x0c011f10
0c000b7c: 00000000  andeq r0, r0, r0
0c000b80: 0c011f10  copeq 0x0c011f10
0c000b84: 00000000  andeq r0, r0, r0
0c000b88: 0c011f10  copeq 0x0c011f10
0c000b8c: 00000000  andeq r0, r0, r0
0c000b90: 0c011f10  copeq 0x0c011f10
0c000b94: 00000000  andeq r0, r0, r0
0c000b98: 0c011f10  copeq 0x0c011f10
0c000b9c: 00000000  andeq r0, r0, r0
0c000ba0: 0c011f10  copeq 0x0c011f10
0c000ba4: 00000000  andeq r0, r0, r0
0c000ba8: 0c012d08  copeq 0x0c012d08
0c000bac: 00000000  andeq r0, r0, r0
0c000bb0: 0c012d00  copeq 0x0c012d00
0c000bb4: 00000000  andeq r0, r0, r0
0c000bb8: 0c011f10  copeq 0x0c011f10
0c000bbc: 00000000  andeq r0, r0, r0
0c000bc0: 0c011f10  copeq 0x0c011f10
0c000bc4: 00000000  andeq r0, r0, r0
0c000bc8: 0c011f10  copeq 0x0c011f10
0c000bcc: 00000000  andeq r0, r0, r0
0c000bd0: 0c011f10  copeq 0x0c011f10
0c000bd4: 00000000  andeq r0, r0, r0
0c000bd8: 0c011f10  copeq 0x0c011f10
0c000bdc: 00000000  andeq r0, r0, r0
0c000be0: 0c011f10  copeq 0x0c011f10
0c000be4: 00000000  andeq r0, r0, r0
0c000be8: 0c011f10  copeq 0x0c011f10
0c000bec: 00000000  andeq r0, r0, r0
0c000bf0: 0c011f10  copeq 0x0c011f10
0c000bf4: 00000000  andeq r0, r0, r0
0c000bf8: 0c011f10  copeq 0x0c011f10
0c000bfc: 00000000  andeq r0, r0, r0
0c000c00: 0c011f10  copeq 0x0c011f10
0c000c04: 00000000  andeq r0, r0, r0
0c000c08: 0c011f10  copeq 0x0c011f10
0c000c0c: 00000000  andeq r0, r0, r0
0c000c10: 0c011f10  copeq 0x0c011f10
0c000c14: 00000000  andeq r0, r0, r0
0c000c18: 0c011f10  copeq 0x0c011f10
0c000c1c: 00000000  andeq r0, r0, r0
0c000c20: 0c011f10  copeq 0x0c011f10
0c000c24: 00000000  andeq r0, r0, r0
0c000c28: 0c011f10  copeq 0x0c011f10
0c000c2c: 00000000  andeq r0, r0, r0
0c000c30: 0c011f10  copeq 0x0c011f10
0c000c34: 00000000  andeq r0, r0, r0
0c000c38: 0c011f10  copeq 0x0c011f10
0c000c3c: 00000000  andeq r0, r0, r0
0c000c40: 0c011f10  copeq 0x0c011f10
0c000c44: 00000000  andeq r0, r0, r0
0c000c48: 0c011f10  copeq 0x0c011f10
0c000c4c: 00000000  andeq r0, r0, r0
0c000c50: 0c011f10  copeq 0x0c011f10
0c000c54: 00000000  andeq r0, r0, r0
0c000c58: 0c011f10  copeq 0x0c011f10
0c000c5c: 00000000  andeq r0, r0, r0
0c000c60: 0c011f10  copeq 0x0c011f10
0c000c64: 00000000  andeq r0, r0, r0
0c000c68: 0c011f10  copeq 0x0c011f10
0c000c6c: 00000000  andeq r0, r0, r0
0c000c70: 0c011f10  copeq 0x0c011f10
0c000c74: 00000000  andeq r0, r0, r0
0c000c78: 0c011f10  copeq 0x0c011f10
0c000c7c: 00000000  andeq r0, r0, r0
0c000c80: 0c011f10  copeq 0x0c011f10
0c000c84: 00000000  andeq r0, r0, r0
0c000c88: 0c011f10  copeq 0x0c011f10
0c000c8c: 00000000  andeq r0, r0, r0
0c000c90: 0c011f10  copeq 0x0c011f10
0c000c94: 00000000  andeq r0, r0, r0
0c000c98: 0c011f10  copeq 0x0c011f10
0c000c9c: 00000000  andeq r0, r0, r0
0c000ca0: 0c011f10  copeq 0x0c011f10
0c000ca4: 00000000  andeq r0, r0, r0
0c000ca8: 0c011f10  copeq 0x0c011f10
0c000cac: 00000000  andeq r0, r0, r0
0c000cb0: 0c011f10  copeq 0x0c011f10
0c000cb4: 00000000  andeq r0, r0, r0
0c000cb8: 0c011f10  copeq 0x0c011f10
0c000cbc: 00000000  andeq r0, r0, r0
0c000cc0: 0c011f10  copeq 0x0c011f10
0c000cc4: 00000000  andeq r0, r0, r0
0c000cc8: 0c011f10  copeq 0x0c011f10
0c000ccc: 00000000  andeq r0, r0, r0
0c000cd0: 0c011f10  copeq 0x0c011f10
0c000cd4: 00000000  andeq r0, r0, r0
0c000cd8: 0c011f10  copeq 0x0c011f10
0c000cdc: 00000000  andeq r0, r0, r0
0c000ce0: 0c011f10  copeq 0x0c011f10
0c000ce4: 00000000  andeq r0, r0, r0
0c000ce8: 0c011f10  copeq 0x0c011f10
0c000cec: 00000000  andeq r0, r0, r0
0c000cf0: 0c011f10  copeq 0x0c011f10
0c000cf4: 00000000  andeq r0, r0, r0
0c000cf8: 0c011f10  copeq 0x0c011f10
0c000cfc: 00000000  andeq r0, r0, r0
0c000d00: 0c011f10  copeq 0x0c011f10
0c000d04: 00000000  andeq r0, r0, r0
0c000d08: 0c011f10  copeq 0x0c011f10
0c000d0c: 00000000  andeq r0, r0, r0
0c000d10: 0c011f10  copeq 0x0c011f10
0c000d14: 00000000  andeq r0, r0, r0
0c000d18: 0c011f10  copeq 0x0c011f10
0c000d1c: 00000000  andeq r0, r0, r0
0c000d20: 0c011f10  copeq 0x0c011f10
0c000d24: 00000000  andeq r0, r0, r0
0c000d28: 0c011f10  copeq 0x0c011f10
0c000d2c: 00000000  andeq r0, r0, r0
0c000d30: 0c011f10  copeq 0x0c011f10
0c000d34: 00000000  andeq r0, r0, r0
0c000d38: 0c011f10  copeq 0x0c011f10
0c000d3c: 00000000  andeq r0, r0, r0
0c000d40: 0c011f10  copeq 0x0c011f10
0c000d44: 00000000  andeq r0, r0, r0
0c000d48: 0c011f10  copeq 0x0c011f10
0c000d4c: 00000000  andeq r0, r0, r0
0c000d50: 0c011f10  copeq 0x0c011f10
0c000d54: 00000000  andeq r0, r0, r0
0c000d58: 0c011f10  copeq 0x0c011f10
0c000d5c: 00000000  andeq r0, r0, r0
0c000d60: 0c011f10  copeq 0x0c011f10
0c000d64: 00000000  andeq r0, r0, r0
0c000d68: 0c011f10  copeq 0x0c011f10
0c000d6c: 00000000  andeq r0, r0, r0
0c000d70: 0c011f10  copeq 0x0c011f10
0c000d74: 00000000  andeq r0, r0, r0
0c000d78: 0c011f10  copeq 0x0c011f10
0c000d7c: 00000000  andeq r0, r0, r0
0c000d80: 0c011f10  copeq 0x0c011f10
0c000d84: 00000000  andeq r0, r0, r0
0c000d88: 0c011f10  copeq 0x0c011f10
0c000d8c: 00000000  andeq r0, r0, r0
0c000d90: 0c011f10  copeq 0x0c011f10
0c000d94: 00000000  andeq r0, r0, r0
0c000d98: 0c011f10  copeq 0x0c011f10
0c000d9c: 00000000  andeq r0, r0, r0
0c000da0: 0c011f10  copeq 0x0c011f10
0c000da4: 00000000  andeq r0, r0, r0
0c000da8: 0c011f10  copeq 0x0c011f10
0c000dac: 00000000  andeq r0, r0, r0
0c000db0: 0c011f10  copeq 0x0c011f10
0c000db4: 00000000  andeq r0, r0, r0
0c000db8: 0c011f10  copeq 0x0c011f10
0c000dbc: 00000000  andeq r0, r0, r0
0c000dc0: 0c011f10  copeq 0x0c011f10
0c000dc4: 00000000  andeq r0, r0, r0
0c000dc8: 0c011f10  copeq 0x0c011f10
0c000dcc: 00000000  andeq r0, r0, r0
0c000dd0: 0c011f10  copeq 0x0c011f10
0c000dd4: 00000000  andeq r0, r0, r0
0c000dd8: 0c011f10  copeq 0x0c011f10
0c000ddc: 00000000  andeq r0, r0, r0
0c000de0: 0c011f10  copeq 0x0c011f10
0c000de4: 00000000  andeq r0, r0, r0
0c000de8: 0c011f10  copeq 0x0c011f10
0c000dec: 00000000  andeq r0, r0, r0
0c000df0: 0c011f10  copeq 0x0c011f10
0c000df4: 00000000  andeq r0, r0, r0
0c000df8: 0c011f10  copeq 0x0c011f10
0c000dfc: 00000000  andeq r0, r0, r0
0c000e00: 0c011f10  copeq 0x0c011f10
0c000e04: 00000000  andeq r0, r0, r0
0c000e08: 0c011f10  copeq 0x0c011f10
0c000e0c: 00000000  andeq r0, r0, r0
0c000e10: 0c011f10  copeq 0x0c011f10
0c000e14: 00000000  andeq r0, r0, r0
0c000e18: 0c011f10  copeq 0x0c011f10
0c000e1c: 00000000  andeq r0, r0, r0
0c000e20: 0c011f10  copeq 0x0c011f10
0c000e24: 00000000  andeq r0, r0, r0
0c000e28: 0c011f10  copeq 0x0c011f10
0c000e2c: 00000000  andeq r0, r0, r0
0c000e30: 0c011f10  copeq 0x0c011f10
0c000e34: 00000000  andeq r0, r0, r0
0c000e38: 0c011f10  copeq 0x0c011f10
0c000e3c: 00000000  andeq r0, r0, r0
0c000e40: 0c011f10  copeq 0x0c011f10
0c000e44: 00000000  andeq r0, r0, r0
0c000e48: 0c011f10  copeq 0x0c011f10
0c000e4c: 00000000  andeq r0, r0, r0
0c000e50: 0c011f10  copeq 0x0c011f10
0c000e54: 00000000  andeq r0, r0, r0
0c000e58: 0c011f10  copeq 0x0c011f10
0c000e5c: 00000000  andeq r0, r0, r0
0c000e60: 0c011f10  copeq 0x0c011f10
0c000e64: 00000000  andeq r0, r0, r0
0c000e68: 0c011f10  copeq 0x0c011f10
0c000e6c: 00000000  andeq r0, r0, r0
0c000e70: 0c011f10  copeq 0x0c011f10
0c000e74: 00000000  andeq r0, r0, r0
0c000e78: 0c011f10  copeq 0x0c011f10
0c000e7c: 00000000  andeq r0, r0, r0
0c000e80: 0c011f10  copeq 0x0c011f10
0c000e84: 00000000  andeq r0, r0, r0
0c000e88: 0c011f10  copeq 0x0c011f10
0c000e8c: 00000000  andeq r0, r0, r0
0c000e90: 0c011f10  copeq 0x0c011f10
0c000e94: 00000000  andeq r0, r0, r0
0c000e98: 0c011f10  copeq 0x0c011f10
0c000e9c: 00000000  andeq r0, r0, r0
0c000ea0: 0c011f10  copeq 0x0c011f10
0c000ea4: 00000000  andeq r0, r0, r0
0c000ea8: 0c011f10  copeq 0x0c011f10
0c000eac: 00000000  andeq r0, r0, r0
0c000eb0: 0c011f10  copeq 0x0c011f10
0c000eb4: 00000000  andeq r0, r0, r0
0c000eb8: 0c011f10  copeq 0x0c011f10
0c000ebc: 00000000  andeq r0, r0, r0
0c000ec0: 0c011f10  copeq 0x0c011f10
0c000ec4: 00000000  andeq r0, r0, r0
0c000ec8: 0c011f10  copeq 0x0c011f10
0c000ecc: 00000000  andeq r0, r0, r0
0c000ed0: 0c011f10  copeq 0x0c011f10
0c000ed4: 00000000  andeq r0, r0, r0
0c000ed8: 0c011f10  copeq 0x0c011f10
0c000edc: 00000000  andeq r0, r0, r0
0c000ee0: 0c011f10  copeq 0x0c011f10
0c000ee4: 00000000  andeq r0, r0, r0
0c000ee8: 0c011f10  copeq 0x0c011f10
0c000eec: 00000000  andeq r0, r0, r0
0c000ef0: 0c011f10  copeq 0x0c011f10
0c000ef4: 00000000  andeq r0, r0, r0
0c000ef8: 0c011f10  copeq 0x0c011f10
0c000efc: 00000000  andeq r0, r0, r0
0c000f00: 0c011f10  copeq 0x0c011f10
0c000f04: 00000000  andeq r0, r0, r0
0c000f08: 0c011f10  copeq 0x0c011f10
0c000f0c: 00000000  andeq r0, r0, r0
0c000f10: 0c011f10  copeq 0x0c011f10
0c000f14: 00000000  andeq r0, r0, r0
0c000f18: 0c011f10  copeq 0x0c011f10
0c000f1c: 00000000  andeq r0, r0, r0
0c000f20: 0c011f10  copeq 0x0c011f10
0c000f24: 00000000  andeq r0, r0, r0
0c000f28: 0c011f10  copeq 0x0c011f10
0c000f2c: 00000000  andeq r0, r0, r0
0c000f30: 0c011f10  copeq 0x0c011f10
0c000f34: 00000000  andeq r0, r0, r0
0c000f38: 0c011f10  copeq 0x0c011f10
0c000f3c: 00000000  andeq r0, r0, r0
0c000f40: 0c011f10  copeq 0x0c011f10
0c000f44: 00000000  andeq r0, r0, r0
0c000f48: 0c011f10  copeq 0x0c011f10
0c000f4c: 00000000  andeq r0, r0, r0
0c000f50: 0c011f10  copeq 0x0c011f10
0c000f54: 00000000  andeq r0, r0, r0
0c000f58: 0c011f10  copeq 0x0c011f10
0c000f5c: 00000000  andeq r0, r0, r0
0c000f60: 0c011f10  copeq 0x0c011f10
0c000f64: 00000000  andeq r0, r0, r0
0c000f68: 0c011f10  copeq 0x0c011f10
0c000f6c: 00000000  andeq r0, r0, r0
0c000f70: 0c011f10  copeq 0x0c011f10
0c000f74: 00000000  andeq r0, r0, r0
0c000f78: 0c011f10  copeq 0x0c011f10
0c000f7c: 00000000  andeq r0, r0, r0
0c000f80: 0c011f10  copeq 0x0c011f10
0c000f84: 00000000  andeq r0, r0, r0
0c000f88: 0c011f10  copeq 0x0c011f10
0c000f8c: 00000000  andeq r0, r0, r0
0c000f90: 0c011f10  copeq 0x0c011f10
0c000f94: 00000000  andeq r0, r0, r0
0c000f98: 0c011f10  copeq 0x0c011f10
0c000f9c: 00000000  andeq r0, r0, r0
0c000fa0: 0c011f10  copeq 0x0c011f10
0c000fa4: 00000000  andeq r0, r0, r0
0c000fa8: 0c011f10  copeq 0x0c011f10
0c000fac: 00000000  andeq r0, r0, r0
0c000fb0: 0c011f10  copeq 0x0c011f10
0c000fb4: 00000000  andeq r0, r0, r0
0c000fb8: 0c011f10  copeq 0x0c011f10
0c000fbc: 00000000  andeq r0, r0, r0
0c000fc0: 0c011f10  copeq 0x0c011f10
0c000fc4: 00000000  andeq r0, r0, r0
0c000fc8: 0c011f10  copeq 0x0c011f10
0c000fcc: 00000000  andeq r0, r0, r0
0c000fd0: 0c011f10  copeq 0x0c011f10
0c000fd4: 00000000  andeq r0, r0, r0
0c000fd8: 0c011f10  copeq 0x0c011f10
0c000fdc: 00000000  andeq r0, r0, r0
0c000fe0: 0c011f10  copeq 0x0c011f10
0c000fe4: 00000000  andeq r0, r0, r0
0c000fe8: 0c011f10  copeq 0x0c011f10
0c000fec: 00000000  andeq r0, r0, r0
0c000ff0: 0c011f10  copeq 0x0c011f10
0c000ff4: 00000000  andeq r0, r0, r0
0c000ff8: 0c011f10  copeq 0x0c011f10
0c000ffc: 00000000  andeq r0, r0, r0
0c001000: 0c011f10  copeq 0x0c011f10
0c001004: 00000000  andeq r0, r0, r0
0c001008: 0c011f10  copeq 0x0c011f10
0c00100c: 00000000  andeq r0, r0, r0
0c001010: 0c011f10  copeq 0x0c011f10
0c001014: 00000000  andeq r0, r0, r0
0c001018: 0c011f10  copeq 0x0c011f10
0c00101c: 00000000  andeq r0, r0, r0
0c001020: 0c011f10  copeq 0x0c011f10
0c001024: 00000000  andeq r0, r0, r0
0c001028: 0c011f10  copeq 0x0c011f10
0c00102c: 00000000  andeq r0, r0, r0
0c001030: 0c011f10  copeq 0x0c011f10
0c001034: 00000000  andeq r0, r0, r0
0c001038: 0c011f10  copeq 0x0c011f10
0c00103c: 00000000  andeq r0, r0, r0
0c001040: 0c011f10  copeq 0x0c011f10
0c001044: 00000000  andeq r0, r0, r0
0c001048: 0c011f10  copeq 0x0c011f10
0c00104c: 00000000  andeq r0, r0, r0
0c001050: 0c011f10  copeq 0x0c011f10
0c001054: 00000000  andeq r0, r0, r0
0c001058: 0c011f10  copeq 0x0c011f10
0c00105c: 00000000  andeq r0, r0, r0
0c001060: 0c011f10  copeq 0x0c011f10
0c001064: 00000000  andeq r0, r0, r0
0c001068: 0c011f10  copeq 0x0c011f10
0c00106c: 00000000  andeq r0, r0, r0
0c001070: 0c011f10  copeq 0x0c011f10
0c001074: 00000000  andeq r0, r0, r0
0c001078: 0c011f10  copeq 0x0c011f10
0c00107c: 00000000  andeq r0, r0, r0
0c001080: 0c011f10  copeq 0x0c011f10
0c001084: 00000000  andeq r0, r0, r0
0c001088: 0c011f10  copeq 0x0c011f10
0c00108c: 00000000  andeq r0, r0, r0
0c001090: 0c011f10  copeq 0x0c011f10
0c001094: 00000000  andeq r0, r0, r0
0c001098: 0c011f10  copeq 0x0c011f10
0c00109c: 00000000  andeq r0, r0, r0
0c0010a0: 0c011f10  copeq 0x0c011f10
0c0010a4: 00000000  andeq r0, r0, r0
0c0010a8: 0c011f10  copeq 0x0c011f10
0c0010ac: 00000000  andeq r0, r0, r0
0c0010b0: 0c011f10  copeq 0x0c011f10
0c0010b4: 00000000  andeq r0, r0, r0
0c0010b8: 0c011f10  copeq 0x0c011f10
0c0010bc: 00000000  andeq r0, r0, r0
0c0010c0: 0c011f10  copeq 0x0c011f10
0c0010c4: 00000000  andeq r0, r0, r0
0c0010c8: 0c011f10  copeq 0x0c011f10
0c0010cc: 00000000  andeq r0, r0, r0
0c0010d0: 0c011f10  copeq 0x0c011f10
0c0010d4: 00000000  andeq r0, r0, r0
0c0010d8: 0c011f10  copeq 0x0c011f10
0c0010dc: 00000000  andeq r0, r0, r0
0c0010e0: 0c00486c  copeq 0x0c00486c
0c0010e4: 00000000  andeq r0, r0, r0
0c0010e8: 0c011f10  copeq 0x0c011f10
0c0010ec: 00000000  andeq r0, r0, r0
0c0010f0: 0c011f10  copeq 0x0c011f10
0c0010f4: 00000000  andeq r0, r0, r0
0c0010f8: 0c011f10  copeq 0x0c011f10
0c0010fc: 00000000  andeq r0, r0, r0
0c001100: 0c011f10  copeq 0x0c011f10
0c001104: 00000000  andeq r0, r0, r0
0c001108: 0c011f10  copeq 0x0c011f10
0c00110c: 00000000  andeq r0, r0, r0
0c001110: 0c011f10  copeq 0x0c011f10
0c001114: 00000000  andeq r0, r0, r0
0c001118: 0c011f10  copeq 0x0c011f10
0c00111c: 00000000  andeq r0, r0, r0
0c001120: 0c011f10  copeq 0x0c011f10
0c001124: 00000000  andeq r0, r0, r0
0c001128: 0c011f10  copeq 0x0c011f10
0c00112c: 00000000  andeq r0, r0, r0
0c001130: 0c011f10  copeq 0x0c011f10
0c001134: 00000000  andeq r0, r0, r0
0c001138: 0c011f10  copeq 0x0c011f10
0c00113c: 00000000  andeq r0, r0, r0
0c001140: 0c011f10  copeq 0x0c011f10
0c001144: 00000000  andeq r0, r0, r0
0c001148: 0c011f10  copeq 0x0c011f10
0c00114c: 00000000  andeq r0, r0, r0
0c001150: 0c011f10  copeq 0x0c011f10
0c001154: 00000000  andeq r0, r0, r0
0c001158: 0c011f10  copeq 0x0c011f10
0c00115c: 00000000  andeq r0, r0, r0
0c001160: 0c011f10  copeq 0x0c011f10
0c001164: 00000000  andeq r0, r0, r0
0c001168: 0c011f10  copeq 0x0c011f10
0c00116c: 00000000  andeq r0, r0, r0
0c001170: 0c011f10  copeq 0x0c011f10
0c001174: 00000000  andeq r0, r0, r0
0c001178: 0c011f10  copeq 0x0c011f10
0c00117c: 00000000  andeq r0, r0, r0
0c001180: 0c011f10  copeq 0x0c011f10
0c001184: 00000000  andeq r0, r0, r0
0c001188: 0c011f10  copeq 0x0c011f10
0c00118c: 00000000  andeq r0, r0, r0
0c001190: 0c011f10  copeq 0x0c011f10
0c001194: 00000000  andeq r0, r0, r0
0c001198: 0c011f10  copeq 0x0c011f10
0c00119c: 00000000  andeq r0, r0, r0
0c0011a0: 0c011f10  copeq 0x0c011f10
0c0011a4: 00000000  andeq r0, r0, r0
0c0011a8: 0c011f10  copeq 0x0c011f10
0c0011ac: 00000000  andeq r0, r0, r0
0c0011b0: 0c011f10  copeq 0x0c011f10
0c0011b4: 00000000  andeq r0, r0, r0
0c0011b8: 0c011f10  copeq 0x0c011f10
0c0011bc: 00000000  andeq r0, r0, r0
0c0011c0: 0c011f10  copeq 0x0c011f10
0c0011c4: 00000000  andeq r0, r0, r0
0c0011c8: 0c011f10  copeq 0x0c011f10
0c0011cc: 00000000  andeq r0, r0, r0
0c0011d0: 0c011f10  copeq 0x0c011f10
0c0011d4: 00000000  andeq r0, r0, r0
0c0011d8: 0c011f10  copeq 0x0c011f10
0c0011dc: 00000000  andeq r0, r0, r0
0c0011e0: 0c011f10  copeq 0x0c011f10
0c0011e4: 00000000  andeq r0, r0, r0
0c0011e8: 0c011f10  copeq 0x0c011f10
0c0011ec: 00000000  andeq r0, r0, r0
0c0011f0: 0c011f10  copeq 0x0c011f10
0c0011f4: 00000000  andeq r0, r0, r0
0c0011f8: 0c011f10  copeq 0x0c011f10
0c0011fc: 00000000  andeq r0, r0, r0
0c001200: 0c011f10  copeq 0x0c011f10
0c001204: 00000000  andeq r0, r0, r0
0c001208: 0c011f10  copeq 0x0c011f10
0c00120c: 00000000  andeq r0, r0, r0
0c001210: 0c011f10  copeq 0x0c011f10
0c001214: 00000000  andeq r0, r0, r0
0c001218: 0c011f10  copeq 0x0c011f10
0c00121c: 00000000  andeq r0, r0, r0
0c001220: 0c011f10  copeq 0x0c011f10
0c001224: 00000000  andeq r0, r0, r0
0c001228: 0c011f10  copeq 0x0c011f10
0c00122c: 00000000  andeq r0, r0, r0
0c001230: 0c011f10  copeq 0x0c011f10
0c001234: 00000000  andeq r0, r0, r0
0c001238: 0c011f10  copeq 0x0c011f10
0c00123c: 00000000  andeq r0, r0, r0
0c001240: 0c011f10  copeq 0x0c011f10
0c001244: 00000000  andeq r0, r0, r0
0c001248: 0c011f10  copeq 0x0c011f10
0c00124c: 00000000  andeq r0, r0, r0
0c001250: 0c011f10  copeq 0x0c011f10
0c001254: 00000000  andeq r0, r0, r0
0c001258: 0c011f10  copeq 0x0c011f10
0c00125c: 00000000  andeq r0, r0, r0
0c001260: 0c011f10  copeq 0x0c011f10
0c001264: 00000000  andeq r0, r0, r0
0c001268: 0c011f10  copeq 0x0c011f10
0c00126c: 00000000  andeq r0, r0, r0
0c001270: 0c011f10  copeq 0x0c011f10
0c001274: 00000000  andeq r0, r0, r0
0c001278: 0c011f10  copeq 0x0c011f10
0c00127c: 00000000  andeq r0, r0, r0
0c001280: 0c011f10  copeq 0x0c011f10
0c001284: 00000000  andeq r0, r0, r0
0c001288: 0c011f10  copeq 0x0c011f10
0c00128c: 00000000  andeq r0, r0, r0
0c001290: 0c011f10  copeq 0x0c011f10
0c001294: 00000000  andeq r0, r0, r0
0c001298: 0c011f10  copeq 0x0c011f10
0c00129c: 00000000  andeq r0, r0, r0
0c0012a0: 0c011f10  copeq 0x0c011f10
0c0012a4: 00000000  andeq r0, r0, r0
0c0012a8: 0c011f10  copeq 0x0c011f10
0c0012ac: 00000000  andeq r0, r0, r0
0c0012b0: 0c011f10  copeq 0x0c011f10
0c0012b4: 00000000  andeq r0, r0, r0
0c0012b8: 0c011f10  copeq 0x0c011f10
0c0012bc: 00000000  andeq r0, r0, r0
0c0012c0: 0c011f10  copeq 0x0c011f10
0c0012c4: 00000000  andeq r0, r0, r0
0c0012c8: 0c011f10  copeq 0x0c011f10
0c0012cc: 00000000  andeq r0, r0, r0
0c0012d0: 0c011f10  copeq 0x0c011f10
0c0012d4: 00000000  andeq r0, r0, r0
0c0012d8: 0c011f10  copeq 0x0c011f10
0c0012dc: 00000000  andeq r0, r0, r0
0c0012e0: 0c011f10  copeq 0x0c011f10
0c0012e4: 00000000  andeq r0, r0, r0
0c0012e8: 0c011f10  copeq 0x0c011f10
0c0012ec: 00000000  andeq r0, r0, r0
0c0012f0: 0c011f10  copeq 0x0c011f10
0c0012f4: 00000000  andeq r0, r0, r0
0c0012f8: 0c011f10  copeq 0x0c011f10
0c0012fc: 00000000  andeq r0, r0, r0
0c001300: 0c011f10  copeq 0x0c011f10
0c001304: 00000000  andeq r0, r0, r0
0c001308: 0c011f10  copeq 0x0c011f10
0c00130c: 00000000  andeq r0, r0, r0
0c001310: 0c001e80  copeq 0x0c001e80
0c001314: 00000000  andeq r0, r0, r0
0c001318: 0c011f10  copeq 0x0c011f10
0c00131c: 00000000  andeq r0, r0, r0
0c001320: 0c011f10  copeq 0x0c011f10
0c001324: 00000000  andeq r0, r0, r0
0c001328: 0c011f10  copeq 0x0c011f10
0c00132c: 00000000  andeq r0, r0, r0
0c001330: 0c011f10  copeq 0x0c011f10
0c001334: 00000000  andeq r0, r0, r0
0c001338: 0c011f10  copeq 0x0c011f10
0c00133c: 00000000  andeq r0, r0, r0
0c001340: 0c011f10  copeq 0x0c011f10
0c001344: 00000000  andeq r0, r0, r0
0c001348: 0c011f10  copeq 0x0c011f10
0c00134c: 00000000  andeq r0, r0, r0
0c001350: 0c011f10  copeq 0x0c011f10
0c001354: 00000000  andeq r0, r0, r0
0c001358: 0c011f10  copeq 0x0c011f10
0c00135c: 00000000  andeq r0, r0, r0
0c001360: 0c011f10  copeq 0x0c011f10
0c001364: 00000000  andeq r0, r0, r0
0c001368: 0c011f10  copeq 0x0c011f10
0c00136c: 00000000  andeq r0, r0, r0
0c001370: 0c011f10  copeq 0x0c011f10
0c001374: 00000000  andeq r0, r0, r0
0c001378: 0c011f10  copeq 0x0c011f10
0c00137c: 00000000  andeq r0, r0, r0
0c001380: 0c011f10  copeq 0x0c011f10
0c001384: 00000000  andeq r0, r0, r0
0c001388: 0c011f10  copeq 0x0c011f10
0c00138c: 00000000  andeq r0, r0, r0
0c001390: 0c011f10  copeq 0x0c011f10
0c001394: 00000000  andeq r0, r0, r0
0c001398: 0c011f10  copeq 0x0c011f10
0c00139c: 00000000  andeq r0, r0, r0
0c0013a0: 0c011f10  copeq 0x0c011f10
0c0013a4: 00000000  andeq r0, r0, r0
0c0013a8: 0c012cfc  copeq 0x0c012cfc
0c0013ac: ffffffff  .word 0xffffffff
0c0013b0: 00000000  andeq r0, r0, r0
0c0013b4: 00000000  andeq r0, r0, r0
0c0013b8: 00000000  andeq r0, r0, r0
0c0013bc: 00000000  andeq r0, r0, r0
0c0013c0: 00000000  andeq r0, r0, r0
0c0013c4: 00000000  andeq r0, r0, r0
0c0013c8: 00000000  andeq r0, r0, r0
0c0013cc: 00000000  andeq r0, r0, r0
0c0013d0: 00000000  andeq r0, r0, r0
0c0013d4: 00000000  andeq r0, r0, r0
0c0013d8: 00000000  andeq r0, r0, r0
0c0013dc: 00000000  andeq r0, r0, r0
0c0013e0: 00000000  andeq r0, r0, r0
0c0013e4: 00000000  andeq r0, r0, r0
0c0013e8: 00000000  andeq r0, r0, r0
0c0013ec: 00000000  andeq r0, r0, r0
0c0013f0: 00000000  andeq r0, r0, r0
0c0013f4: 00000000  andeq r0, r0, r0
0c0013f8: 00000000  andeq r0, r0, r0
0c0013fc: 00000000  andeq r0, r0, r0
0c001400: 00000000  andeq r0, r0, r0
0c001404: 00000000  andeq r0, r0, r0
0c001408: 00000000  andeq r0, r0, r0
0c00140c: 00000000  andeq r0, r0, r0
0c001410: 00000000  andeq r0, r0, r0
0c001414: 00000000  andeq r0, r0, r0
0c001418: 00000000  andeq r0, r0, r0
0c00141c: 00000000  andeq r0, r0, r0
0c001420: 00000000  andeq r0, r0, r0
0c001424: 00000000  andeq r0, r0, r0
0c001428: 00000000  andeq r0, r0, r0
0c00142c: 00000000  andeq r0, r0, r0
0c001430: 00000000  andeq r0, r0, r0
0c001434: 00000000  andeq r0, r0, r0
0c001438: 00000000  andeq r0, r0, r0
0c00143c: 00000000  andeq r0, r0, r0
0c001440: 00000000  andeq r0, r0, r0
0c001444: 00000000  andeq r0, r0, r0
0c001448: 00000000  andeq r0, r0, r0
0c00144c: 00000000  andeq r0, r0, r0
0c001450: 00000000  andeq r0, r0, r0
0c001454: 00000000  andeq r0, r0, r0
0c001458: 00000000  andeq r0, r0, r0
0c00145c: 00000000  andeq r0, r0, r0
0c001460: 00000000  andeq r0, r0, r0
0c001464: 00000000  andeq r0, r0, r0
0c001468: 00000000  andeq r0, r0, r0
0c00146c: 00000000  andeq r0, r0, r0
0c001470: 00000000  andeq r0, r0, r0
0c001474: 00000000  andeq r0, r0, r0
0c001478: 00000000  andeq r0, r0, r0
0c00147c: 00000000  andeq r0, r0, r0
0c001480: 00000000  andeq r0, r0, r0
0c001484: 00000000  andeq r0, r0, r0
0c001488: 00000000  andeq r0, r0, r0
0c00148c: 00000000  andeq r0, r0, r0
0c001490: 00000000  andeq r0, r0, r0
0c001494: 00000000  andeq r0, r0, r0
0c001498: 00000000  andeq r0, r0, r0
0c00149c: 00000000  andeq r0, r0, r0
0c0014a0: 00000000  andeq r0, r0, r0
0c0014a4: 00000000  andeq r0, r0, r0
0c0014a8: 00000000  andeq r0, r0, r0
0c0014ac: 00000000  andeq r0, r0, r0
0c0014b0: 00000000  andeq r0, r0, r0
0c0014b4: 00000000  andeq r0, r0, r0
0c0014b8: 00000000  andeq r0, r0, r0
0c0014bc: 00000000  andeq r0, r0, r0
0c0014c0: 00000000  andeq r0, r0, r0
0c0014c4: 00000000  andeq r0, r0, r0
0c0014c8: 00000000  andeq r0, r0, r0
0c0014cc: 00000000  andeq r0, r0, r0
0c0014d0: 00000000  andeq r0, r0, r0
0c0014d4: 00000000  andeq r0, r0, r0
0c0014d8: 00000000  andeq r0, r0, r0
0c0014dc: 00000000  andeq r0, r0, r0
0c0014e0: 00000000  andeq r0, r0, r0
0c0014e4: 00000000  andeq r0, r0, r0
0c0014e8: 00000000  andeq r0, r0, r0
0c0014ec: 00000000  andeq r0, r0, r0
0c0014f0: 00000000  andeq r0, r0, r0
0c0014f4: 00000000  andeq r0, r0, r0
0c0014f8: 00000000  andeq r0, r0, r0
0c0014fc: 00000000  andeq r0, r0, r0
0c001500: 00000000  andeq r0, r0, r0
0c001504: 00000000  andeq r0, r0, r0
0c001508: 00000000  andeq r0, r0, r0
0c00150c: 00000000  andeq r0, r0, r0
0c001510: 00000000  andeq r0, r0, r0
0c001514: 00000000  andeq r0, r0, r0
0c001518: 00000000  andeq r0, r0, r0
0c00151c: 00000000  andeq r0, r0, r0
0c001520: 00000000  andeq r0, r0, r0
0c001524: 00000000  andeq r0, r0, r0
0c001528: 00000000  andeq r0, r0, r0
0c00152c: 00000000  andeq r0, r0, r0
0c001530: 00000000  andeq r0, r0, r0
0c001534: 00000000  andeq r0, r0, r0
0c001538: 00000000  andeq r0, r0, r0
0c00153c: 00000000  andeq r0, r0, r0
0c001540: 00000000  andeq r0, r0, r0
0c001544: 00000000  andeq r0, r0, r0
0c001548: 00000000  andeq r0, r0, r0
0c00154c: 00000000  andeq r0, r0, r0
0c001550: 00000000  andeq r0, r0, r0
0c001554: 00000000  andeq r0, r0, r0
0c001558: 00000000  andeq r0, r0, r0
0c00155c: 00000000  andeq r0, r0, r0
0c001560: 00000000  andeq r0, r0, r0
0c001564: 00000000  andeq r0, r0, r0
0c001568: 00000000  andeq r0, r0, r0
0c00156c: 00000000  andeq r0, r0, r0
0c001570: 00000000  andeq r0, r0, r0
0c001574: 00000000  andeq r0, r0, r0
0c001578: 00000000  andeq r0, r0, r0
0c00157c: 00000000  andeq r0, r0, r0
0c001580: 00000000  andeq r0, r0, r0
0c001584: 00000000  andeq r0, r0, r0
0c001588: 00000000  andeq r0, r0, r0
0c00158c: 00000000  andeq r0, r0, r0
0c001590: 00000000  andeq r0, r0, r0
0c001594: 00000000  andeq r0, r0, r0
0c001598: 00000000  andeq r0, r0, r0
0c00159c: 00000000  andeq r0, r0, r0
0c0015a0: 00000000  andeq r0, r0, r0
0c0015a4: 00000000  andeq r0, r0, r0
0c0015a8: 00000000  andeq r0, r0, r0
0c0015ac: 00000000  andeq r0, r0, r0
0c0015b0: 00000000  andeq r0, r0, r0
0c0015b4: 00000000  andeq r0, r0, r0
0c0015b8: 00000000  andeq r0, r0, r0
0c0015bc: 00000000  andeq r0, r0, r0
0c0015c0: 00000000  andeq r0, r0, r0
0c0015c4: 00000000  andeq r0, r0, r0
0c0015c8: 00000000  andeq r0, r0, r0
0c0015cc: 00000000  andeq r0, r0, r0
0c0015d0: 00000000  andeq r0, r0, r0
0c0015d4: 00000000  andeq r0, r0, r0
0c0015d8: 00000000  andeq r0, r0, r0
0c0015dc: 00000000  andeq r0, r0, r0
0c0015e0: 00000000  andeq r0, r0, r0
0c0015e4: 00000000  andeq r0, r0, r0
0c0015e8: 00000000  andeq r0, r0, r0
0c0015ec: 00000000  andeq r0, r0, r0
0c0015f0: 00000000  andeq r0, r0, r0
0c0015f4: 00000000  andeq r0, r0, r0
0c0015f8: 00000000  andeq r0, r0, r0
0c0015fc: 00000000  andeq r0, r0, r0
0c001600: 00000000  andeq r0, r0, r0
0c001604: 00000000  andeq r0, r0, r0
0c001608: 00000000  andeq r0, r0, r0
0c00160c: 00000000  andeq r0, r0, r0
0c001610: 00000000  andeq r0, r0, r0
0c001614: 00000000  andeq r0, r0, r0
0c001618: 00000000  andeq r0, r0, r0
0c00161c: 00000000  andeq r0, r0, r0
0c001620: 00000000  andeq r0, r0, r0
0c001624: 00000000  andeq r0, r0, r0
0c001628: 00000000  andeq r0, r0, r0
0c00162c: 00000000  andeq r0, r0, r0
0c001630: 00000000  andeq r0, r0, r0
0c001634: 00000000  andeq r0, r0, r0
0c001638: 00000000  andeq r0, r0, r0
0c00163c: 00000000  andeq r0, r0, r0
0c001640: 00000000  andeq r0, r0, r0
0c001644: 00000000  andeq r0, r0, r0
0c001648: 00000000  andeq r0, r0, r0
0c00164c: 00000000  andeq r0, r0, r0
0c001650: 00000000  andeq r0, r0, r0
0c001654: 00000000  andeq r0, r0, r0
0c001658: 00000000  andeq r0, r0, r0
0c00165c: 00000000  andeq r0, r0, r0
0c001660: 00000000  andeq r0, r0, r0
0c001664: 00000000  andeq r0, r0, r0
0c001668: 00000000  andeq r0, r0, r0
0c00166c: 00000000  andeq r0, r0, r0
0c001670: 00000000  andeq r0, r0, r0
0c001674: 00000000  andeq r0, r0, r0
0c001678: 00000000  andeq r0, r0, r0
0c00167c: 00000000  andeq r0, r0, r0
0c001680: 00000000  andeq r0, r0, r0
0c001684: 00000000  andeq r0, r0, r0
0c001688: 00000000  andeq r0, r0, r0
0c00168c: 00000000  andeq r0, r0, r0
0c001690: 00000000  andeq r0, r0, r0
0c001694: 00000000  andeq r0, r0, r0
0c001698: 00000000  andeq r0, r0, r0
0c00169c: 00000000  andeq r0, r0, r0
0c0016a0: 00000000  andeq r0, r0, r0
0c0016a4: 00000000  andeq r0, r0, r0
0c0016a8: 00000000  andeq r0, r0, r0
0c0016ac: 00000000  andeq r0, r0, r0
0c0016b0: 00000000  andeq r0, r0, r0
0c0016b4: 00000000  andeq r0, r0, r0
0c0016b8: 00000000  andeq r0, r0, r0
0c0016bc: 00000000  andeq r0, r0, r0
0c0016c0: 00000000  andeq r0, r0, r0
0c0016c4: 00000000  andeq r0, r0, r0
0c0016c8: 00000000  andeq r0, r0, r0
0c0016cc: 00000000  andeq r0, r0, r0
0c0016d0: 00000000  andeq r0, r0, r0
0c0016d4: 00000000  andeq r0, r0, r0
0c0016d8: 00000000  andeq r0, r0, r0
0c0016dc: 00000000  andeq r0, r0, r0
0c0016e0: 00000000  andeq r0, r0, r0
0c0016e4: 00000000  andeq r0, r0, r0
0c0016e8: 00000000  andeq r0, r0, r0
0c0016ec: 00000000  andeq r0, r0, r0
0c0016f0: 00000000  andeq r0, r0, r0
0c0016f4: 00000000  andeq r0, r0, r0
0c0016f8: 00000000  andeq r0, r0, r0
0c0016fc: 00000000  andeq r0, r0, r0
0c001700: 00000000  andeq r0, r0, r0
0c001704: 00000000  andeq r0, r0, r0
0c001708: 00000000  andeq r0, r0, r0
0c00170c: 00000000  andeq r0, r0, r0
0c001710: 00000000  andeq r0, r0, r0
0c001714: 00000000  andeq r0, r0, r0
0c001718: 00000000  andeq r0, r0, r0
0c00171c: 00000000  andeq r0, r0, r0
0c001720: 00000000  andeq r0, r0, r0
0c001724: 00000000  andeq r0, r0, r0
0c001728: 00000000  andeq r0, r0, r0
0c00172c: 00000000  andeq r0, r0, r0
0c001730: 00000000  andeq r0, r0, r0
0c001734: 00000000  andeq r0, r0, r0
0c001738: 00000000  andeq r0, r0, r0
0c00173c: 00000000  andeq r0, r0, r0
0c001740: 00000000  andeq r0, r0, r0
0c001744: 00000000  andeq r0, r0, r0
0c001748: 00000000  andeq r0, r0, r0
0c00174c: 00000000  andeq r0, r0, r0
0c001750: 00000000  andeq r0, r0, r0
0c001754: 00000000  andeq r0, r0, r0
0c001758: 00000000  andeq r0, r0, r0
0c00175c: 00000000  andeq r0, r0, r0
0c001760: 00000000  andeq r0, r0, r0
0c001764: 00000000  andeq r0, r0, r0
0c001768: 00000000  andeq r0, r0, r0
0c00176c: 00000000  andeq r0, r0, r0
0c001770: 00000000  andeq r0, r0, r0
0c001774: 00000000  andeq r0, r0, r0
0c001778: 00000000  andeq r0, r0, r0
0c00177c: 00000000  andeq r0, r0, r0
0c001780: 00000000  andeq r0, r0, r0
0c001784: 00000000  andeq r0, r0, r0
0c001788: 00000000  andeq r0, r0, r0
0c00178c: 00000000  andeq r0, r0, r0
0c001790: 00000000  andeq r0, r0, r0
0c001794: 00000000  andeq r0, r0, r0
0c001798: 00000000  andeq r0, r0, r0
0c00179c: 00000000  andeq r0, r0, r0
0c0017a0: 00000000  andeq r0, r0, r0
0c0017a4: 00000000  andeq r0, r0, r0
0c0017a8: 00000000  andeq r0, r0, r0
0c0017ac: 00000000  andeq r0, r0, r0
0c0017b0: 00000000  andeq r0, r0, r0
0c0017b4: 00000000  andeq r0, r0, r0
0c0017b8: 00000000  andeq r0, r0, r0
0c0017bc: 00000000  andeq r0, r0, r0
0c0017c0: 00000000  andeq r0, r0, r0
0c0017c4: 00000000  andeq r0, r0, r0
0c0017c8: 00000000  andeq r0, r0, r0
0c0017cc: 00000000  andeq r0, r0, r0
0c0017d0: 00000000  andeq r0, r0, r0
0c0017d4: 00000000  andeq r0, r0, r0
0c0017d8: 00000000  andeq r0, r0, r0
0c0017dc: 00000000  andeq r0, r0, r0
0c0017e0: 00000000  andeq r0, r0, r0
0c0017e4: 00000000  andeq r0, r0, r0
0c0017e8: 00000000  andeq r0, r0, r0
0c0017ec: 00000000  andeq r0, r0, r0
0c0017f0: 00000000  andeq r0, r0, r0
0c0017f4: 00000000  andeq r0, r0, r0
0c0017f8: 00000000  andeq r0, r0, r0
0c0017fc: 00000000  andeq r0, r0, r0
0c001800: 00000000  andeq r0, r0, r0
0c001804: 00000000  andeq r0, r0, r0
0c001808: 00000000  andeq r0, r0, r0
0c00180c: 00000000  andeq r0, r0, r0
0c001810: 00000000  andeq r0, r0, r0
0c001814: 00000000  andeq r0, r0, r0
0c001818: 00000000  andeq r0, r0, r0
0c00181c: 00000000  andeq r0, r0, r0
0c001820: 00000000  andeq r0, r0, r0
0c001824: 00000000  andeq r0, r0, r0
0c001828: 00000000  andeq r0, r0, r0
0c00182c: 00000000  andeq r0, r0, r0
0c001830: 00000000  andeq r0, r0, r0
0c001834: 00000000  andeq r0, r0, r0
0c001838: 00000000  andeq r0, r0, r0
0c00183c: 00000000  andeq r0, r0, r0
0c001840: 00000000  andeq r0, r0, r0
0c001844: 00000000  andeq r0, r0, r0
0c001848: 00000000  andeq r0, r0, r0
0c00184c: 00000000  andeq r0, r0, r0
0c001850: 00000000  andeq r0, r0, r0
0c001854: 00000000  andeq r0, r0, r0
0c001858: 00000000  andeq r0, r0, r0
0c00185c: 00000000  andeq r0, r0, r0
0c001860: 00000000  andeq r0, r0, r0
0c001864: 00000000  andeq r0, r0, r0
0c001868: 00000000  andeq r0, r0, r0
0c00186c: 00000000  andeq r0, r0, r0
0c001870: 00000000  andeq r0, r0, r0
0c001874: 00000000  andeq r0, r0, r0
0c001878: 00000000  andeq r0, r0, r0
0c00187c: 00000000  andeq r0, r0, r0
0c001880: 00000000  andeq r0, r0, r0
0c001884: 00000000  andeq r0, r0, r0
0c001888: 00000000  andeq r0, r0, r0
0c00188c: 00000000  andeq r0, r0, r0
0c001890: 00000000  andeq r0, r0, r0
0c001894: 00000000  andeq r0, r0, r0
0c001898: 00000000  andeq r0, r0, r0
0c00189c: 00000000  andeq r0, r0, r0
0c0018a0: 00000000  andeq r0, r0, r0
0c0018a4: 00000000  andeq r0, r0, r0
0c0018a8: 00000000  andeq r0, r0, r0
0c0018ac: 00000000  andeq r0, r0, r0
0c0018b0: 00000000  andeq r0, r0, r0
0c0018b4: 00000000  andeq r0, r0, r0
0c0018b8: 00000000  andeq r0, r0, r0
0c0018bc: 00000000  andeq r0, r0, r0
0c0018c0: 00000000  andeq r0, r0, r0
0c0018c4: 00000000  andeq r0, r0, r0
0c0018c8: 00000000  andeq r0, r0, r0
0c0018cc: 00000000  andeq r0, r0, r0
0c0018d0: 00000000  andeq r0, r0, r0
0c0018d4: 00000000  andeq r0, r0, r0
0c0018d8: 00000000  andeq r0, r0, r0
0c0018dc: 00000000  andeq r0, r0, r0
0c0018e0: 00000000  andeq r0, r0, r0
0c0018e4: 00000000  andeq r0, r0, r0
0c0018e8: 00000000  andeq r0, r0, r0
0c0018ec: 00000000  andeq r0, r0, r0
0c0018f0: 00000000  andeq r0, r0, r0
0c0018f4: 00000000  andeq r0, r0, r0
0c0018f8: 00000000  andeq r0, r0, r0
0c0018fc: 00000000  andeq r0, r0, r0
0c001900: 00000000  andeq r0, r0, r0
0c001904: 00000000  andeq r0, r0, r0
0c001908: 00000000  andeq r0, r0, r0
0c00190c: 00000000  andeq r0, r0, r0
0c001910: 00000000  andeq r0, r0, r0
0c001914: 00000000  andeq r0, r0, r0
0c001918: 00000000  andeq r0, r0, r0
0c00191c: 00000000  andeq r0, r0, r0
0c001920: 00000000  andeq r0, r0, r0
0c001924: 00000000  andeq r0, r0, r0
0c001928: 00000000  andeq r0, r0, r0
0c00192c: 00000000  andeq r0, r0, r0
0c001930: 00000000  andeq r0, r0, r0
0c001934: 00000000  andeq r0, r0, r0
0c001938: 00000000  andeq r0, r0, r0
0c00193c: 00000000  andeq r0, r0, r0
0c001940: 00000000  andeq r0, r0, r0
0c001944: 00000000  andeq r0, r0, r0
0c001948: 00000000  andeq r0, r0, r0
0c00194c: 00000000  andeq r0, r0, r0
0c001950: 00000000  andeq r0, r0, r0
0c001954: 00000000  andeq r0, r0, r0
0c001958: 00000000  andeq r0, r0, r0
0c00195c: 00000000  andeq r0, r0, r0
0c001960: 00000000  andeq r0, r0, r0
0c001964: 00000000  andeq r0, r0, r0
0c001968: 00000000  andeq r0, r0, r0
0c00196c: 00000000  andeq r0, r0, r0
0c001970: 00000000  andeq r0, r0, r0
0c001974: 00000000  andeq r0, r0, r0
0c001978: 00000000  andeq r0, r0, r0
0c00197c: 00000000  andeq r0, r0, r0
0c001980: 00000000  andeq r0, r0, r0
0c001984: 00000000  andeq r0, r0, r0
0c001988: 00000000  andeq r0, r0, r0
0c00198c: 00000000  andeq r0, r0, r0
0c001990: 00000000  andeq r0, r0, r0
0c001994: 00000000  andeq r0, r0, r0
0c001998: 00000000  andeq r0, r0, r0
0c00199c: 00000000  andeq r0, r0, r0
0c0019a0: 00000000  andeq r0, r0, r0
0c0019a4: 00000000  andeq r0, r0, r0
0c0019a8: 00000000  andeq r0, r0, r0
0c0019ac: 00000000  andeq r0, r0, r0
0c0019b0: 00000000  andeq r0, r0, r0
0c0019b4: 00000000  andeq r0, r0, r0
0c0019b8: 00000000  andeq r0, r0, r0
0c0019bc: 00000000  andeq r0, r0, r0
0c0019c0: 00000000  andeq r0, r0, r0
0c0019c4: 00000000  andeq r0, r0, r0
0c0019c8: 00000000  andeq r0, r0, r0
0c0019cc: 00000000  andeq r0, r0, r0
0c0019d0: 00000000  andeq r0, r0, r0
0c0019d4: 00000000  andeq r0, r0, r0
0c0019d8: 00000000  andeq r0, r0, r0
0c0019dc: 00000000  andeq r0, r0, r0
0c0019e0: 00000000  andeq r0, r0, r0
0c0019e4: 00000000  andeq r0, r0, r0
0c0019e8: 00000000  andeq r0, r0, r0
0c0019ec: 00000000  andeq r0, r0, r0
0c0019f0: 00000000  andeq r0, r0, r0
0c0019f4: 00000000  andeq r0, r0, r0
0c0019f8: 00000000  andeq r0, r0, r0
0c0019fc: 00000000  andeq r0, r0, r0
0c001a00: 00000000  andeq r0, r0, r0
0c001a04: 00000000  andeq r0, r0, r0
0c001a08: 00000000  andeq r0, r0, r0
0c001a0c: 00000000  andeq r0, r0, r0
0c001a10: 00000000  andeq r0, r0, r0
0c001a14: 00000000  andeq r0, r0, r0
0c001a18: 00000000  andeq r0, r0, r0
0c001a1c: 00000000  andeq r0, r0, r0
0c001a20: 00000000  andeq r0, r0, r0
0c001a24: 00000000  andeq r0, r0, r0
0c001a28: 00000000  andeq r0, r0, r0
0c001a2c: 00000000  andeq r0, r0, r0
0c001a30: 00000000  andeq r0, r0, r0
0c001a34: 00000000  andeq r0, r0, r0
0c001a38: 00000000  andeq r0, r0, r0
0c001a3c: 00000000  andeq r0, r0, r0
0c001a40: 00000000  andeq r0, r0, r0
0c001a44: 00000000  andeq r0, r0, r0
0c001a48: 00000000  andeq r0, r0, r0
0c001a4c: 00000000  andeq r0, r0, r0
0c001a50: 00000000  andeq r0, r0, r0
0c001a54: 00000000  andeq r0, r0, r0
0c001a58: 00000000  andeq r0, r0, r0
0c001a5c: 00000000  andeq r0, r0, r0
0c001a60: 00000000  andeq r0, r0, r0
0c001a64: 00000000  andeq r0, r0, r0
0c001a68: 00000000  andeq r0, r0, r0
0c001a6c: 00000000  andeq r0, r0, r0
0c001a70: 00000000  andeq r0, r0, r0
0c001a74: 00000000  andeq r0, r0, r0
0c001a78: 00000000  andeq r0, r0, r0
0c001a7c: 00000000  andeq r0, r0, r0
0c001a80: 00000000  andeq r0, r0, r0
0c001a84: 00000000  andeq r0, r0, r0
0c001a88: 00000000  andeq r0, r0, r0
0c001a8c: 00000000  andeq r0, r0, r0
0c001a90: 00000000  andeq r0, r0, r0
0c001a94: 00000000  andeq r0, r0, r0
0c001a98: 00000000  andeq r0, r0, r0
0c001a9c: 00000000  andeq r0, r0, r0
0c001aa0: 00000000  andeq r0, r0, r0
0c001aa4: 00000000  andeq r0, r0, r0
0c001aa8: 00000000  andeq r0, r0, r0
0c001aac: 00000000  andeq r0, r0, r0
0c001ab0: 00000000  andeq r0, r0, r0
0c001ab4: 00000000  andeq r0, r0, r0
0c001ab8: 00000000  andeq r0, r0, r0
0c001abc: 00000000  andeq r0, r0, r0
0c001ac0: 00000000  andeq r0, r0, r0
0c001ac4: 00000000  andeq r0, r0, r0
0c001ac8: 00000000  andeq r0, r0, r0
0c001acc: 00000000  andeq r0, r0, r0
0c001ad0: 00000000  andeq r0, r0, r0
0c001ad4: 00000000  andeq r0, r0, r0
0c001ad8: 00000000  andeq r0, r0, r0
0c001adc: 00000000  andeq r0, r0, r0
0c001ae0: 00000000  andeq r0, r0, r0
0c001ae4: 00000000  andeq r0, r0, r0
0c001ae8: 00000000  andeq r0, r0, r0
0c001aec: 00000000  andeq r0, r0, r0
0c001af0: 00000000  andeq r0, r0, r0
0c001af4: 00000000  andeq r0, r0, r0
0c001af8: 00000000  andeq r0, r0, r0
0c001afc: 00000000  andeq r0, r0, r0
0c001b00: 00000000  andeq r0, r0, r0
0c001b04: 00000000  andeq r0, r0, r0
0c001b08: 00000000  andeq r0, r0, r0
0c001b0c: 00000000  andeq r0, r0, r0
0c001b10: 00000000  andeq r0, r0, r0
0c001b14: 00000000  andeq r0, r0, r0
0c001b18: 00000000  andeq r0, r0, r0
0c001b1c: 00000000  andeq r0, r0, r0
0c001b20: 00000000  andeq r0, r0, r0
0c001b24: 00000000  andeq r0, r0, r0
0c001b28: 00000000  andeq r0, r0, r0
0c001b2c: 00000000  andeq r0, r0, r0
0c001b30: 00000000  andeq r0, r0, r0
0c001b34: 00000000  andeq r0, r0, r0
0c001b38: 00000000  andeq r0, r0, r0
0c001b3c: 00000000  andeq r0, r0, r0
0c001b40: 00000000  andeq r0, r0, r0
0c001b44: 00000000  andeq r0, r0, r0
0c001b48: 00000000  andeq r0, r0, r0
0c001b4c: 00000000  andeq r0, r0, r0
0c001b50: 00000000  andeq r0, r0, r0
0c001b54: 00000000  andeq r0, r0, r0
0c001b58: 00000000  andeq r0, r0, r0
0c001b5c: 00000000  andeq r0, r0, r0
0c001b60: 00000000  andeq r0, r0, r0
0c001b64: 00000000  andeq r0, r0, r0
0c001b68: 00000000  andeq r0, r0, r0
0c001b6c: 00000000  andeq r0, r0, r0
0c001b70: 00000000  andeq r0, r0, r0
0c001b74: 00000000  andeq r0, r0, r0
0c001b78: 00000000  andeq r0, r0, r0
0c001b7c: 00000000  andeq r0, r0, r0
0c001b80: 00000000  andeq r0, r0, r0
0c001b84: 00000000  andeq r0, r0, r0
0c001b88: 00000000  andeq r0, r0, r0
0c001b8c: 00000000  andeq r0, r0, r0
0c001b90: 00000000  andeq r0, r0, r0
0c001b94: 00000000  andeq r0, r0, r0
0c001b98: 00000000  andeq r0, r0, r0
0c001b9c: 00000000  andeq r0, r0, r0
0c001ba0: 00000000  andeq r0, r0, r0
0c001ba4: 00000000  andeq r0, r0, r0
0c001ba8: 00000000  andeq r0, r0, r0
0c001bac: 00000000  andeq r0, r0, r0
eeprom_state:
0c001bb0: e20010ff  and r1, r0, #0xff
0c001bb4: e3a00502  mov r0, #0x800000
0c001bb8: e3a030aa  mov r3, #0xaa
0c001bbc: e3a02a15  mov r2, #0x15000
0c001bc0: e2822502  add r2, r2, #0x800000
0c001bc4: e5a23554  str r3, [r2, #0x554]!
0c001bc8: e3a02000  mov r2, #0x0
0c001bcc: e2822001  add r2, r2, #0x1
0c001bd0: e3520002  cmp r2, #0x2
0c001bd4: bafffffc  blt 0x0c001bcc
0c001bd8: e3a03055  mov r3, #0x55
0c001bdc: e2802a0a  add r2, r0, #0xa000
0c001be0: e5a23aa8  str r3, [r2, #0xaa8]!
0c001be4: e3a02000  mov r2, #0x0
0c001be8: e2822001  add r2, r2, #0x1
0c001bec: e3520002  cmp r2, #0x2
0c001bf0: bafffffc  blt 0x0c001be8
0c001bf4: e2800a15  add r0, r0, #0x15000
0c001bf8: e5a01554  str r1, [r0, #0x554]!
0c001bfc: e3a02000  mov r2, #0x0
0c001c00: e2822001  add r2, r2, #0x1
0c001c04: e3520002  cmp r2, #0x2
0c001c08: bafffffc  blt 0x0c001c00
0c001c0c: e1a0f00e  mov pc, lr
fn_0c001c10:
0c001c10: e1a0c00d  mov r12, sp
0c001c14: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c001c18: e24cb004  sub r11, r12, #0x4
0c001c1c: e1a05000  mov r5, r0
0c001c20: e1a04001  mov r4, r1
0c001c24: e3a07502  mov r7, #0x800000
0c001c28: e59fa0c8  ldr r10, [pc, #0xc8] =0x0401f2fc
0c001c2c: e1a02001  mov r2, r1
0c001c30: e1a01000  mov r1, r0
0c001c34: e28f0f30  add r0, pc, #0xc0
0c001c38: eb005359  bl 0x0c0169a4 <fn_0c0169a4>
0c001c3c: e31500ff  tst r5, #0xff
0c001c40: 0a000003  beq 0x0c001c54
0c001c44: e28f1f30  add r1, pc, #0xc0
0c001c48: e28f0f32  add r0, pc, #0xc8
0c001c4c: e3a0204f  mov r2, #0x4f
0c001c50: eb004428  bl 0x0c012cf8 <fn_0c012cf8>
0c001c54: e3540802  cmp r4, #0x20000
0c001c58: 3a000003  bcc 0x0c001c6c
0c001c5c: e28f1f2a  add r1, pc, #0xa8
0c001c60: e28f0f36  add r0, pc, #0xd8
0c001c64: e3a02050  mov r2, #0x50
0c001c68: eb004422  bl 0x0c012cf8 <fn_0c012cf8>
0c001c6c: e3340000  teq r4, #0x0
0c001c70: 091bacf0  ldmeqdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c001c74: e3540c01  cmp r4, #0x100
0c001c78: d1a06004  movle r6, r4
0c001c7c: c3a06c01  movgt r6, #0x100
0c001c80: e3a000a0  mov r0, #0xa0
0c001c84: ebffffc9  bl 0x0c001bb0 <eeprom_state>
0c001c88: e3a00000  mov r0, #0x0
0c001c8c: e3560000  cmp r6, #0x0
0c001c90: da000005  ble 0x0c001cac
0c001c94: e4da2001  ldrb r2, [r10], #0x1
0c001c98: e0851000  add r1, r5, r0
0c001c9c: e7872101  str r2, [r7, r1, lsl #2]
0c001ca0: e2800001  add r0, r0, #0x1
0c001ca4: e1500006  cmp r0, r6
0c001ca8: bafffff9  blt 0x0c001c94
0c001cac: e5971000  ldr r1, [r7, #0x0]
0c001cb0: e3a00001  mov r0, #0x1
0c001cb4: e3a03f6a  mov r3, #0x1a8
0c001cb8: e2833a06  add r3, r3, #0x6000
0c001cbc: e5972000  ldr r2, [r7, #0x0]
0c001cc0: e1320001  teq r2, r1
0c001cc4: 0a000003  beq 0x0c001cd8
0c001cc8: e1a01002  mov r1, r2
0c001ccc: e2800001  add r0, r0, #0x1
0c001cd0: e1500003  cmp r0, r3
0c001cd4: bafffff8  blt 0x0c001cbc
0c001cd8: e1500003  cmp r0, r3
0c001cdc: a28f0f1e  addge r0, pc, #0x78
0c001ce0: a91b6cf0  ldmgedb r11, {r4,r5,r6,r7,r10,r11,sp,lr}
0c001ce4: aa00532e  bge 0x0c0169a4 <fn_0c0169a4>
0c001ce8: e0544006  subs r4, r4, r6
0c001cec: e0855006  add r5, r5, r6
0c001cf0: 1affffdf  bne 0x0c001c74
0c001cf4: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c001cf8: 0401f2fc  .word 0x0401f2fc
0c001cfc: 65772830  .asciz "ew(0x%x, 0x%x)\n"
0c001d0c: 65657072  .asciz "eeprom.c"
0c001d18: 21286565  .asciz "!(eeprom_addr & (EE_SECTOR_SIZE - 1))"
0c001d40: 73697a65  .asciz "size<sizeof(sdram_scratch)"
0c001d5c: 65773a20  .asciz "ew: timeout\n"
fn_0c001d6c:
0c001d6c: e1a0c00d  mov r12, sp
0c001d70: e92dd8f0  stmdb sp!, {r4,r5,r6,r7,r11,r12,lr,pc}
0c001d74: e24cb004  sub r11, r12, #0x4
0c001d78: e1a05000  mov r5, r0
0c001d7c: e1a04001  mov r4, r1
0c001d80: e3a07502  mov r7, #0x800000
0c001d84: e51f6094  ldr r6, [pc, #-0x94] =0x0401f2fc
0c001d88: e1a02001  mov r2, r1
0c001d8c: e1a01000  mov r1, r0
0c001d90: e28f0f1b  add r0, pc, #0x6c
0c001d94: eb005302  bl 0x0c0169a4 <fn_0c0169a4>
0c001d98: e3150003  tst r5, #0x3
0c001d9c: 0a000003  beq 0x0c001db0
0c001da0: e24f1f27  sub r1, pc, #0x9c
0c001da4: e28f0f1a  add r0, pc, #0x68
0c001da8: e3a02087  mov r2, #0x87
0c001dac: eb0043d1  bl 0x0c012cf8 <fn_0c012cf8>
0c001db0: e3140003  tst r4, #0x3
0c001db4: 0a000003  beq 0x0c001dc8
0c001db8: e24f1f2d  sub r1, pc, #0xb4
0c001dbc: e28f0f1a  add r0, pc, #0x68
0c001dc0: e3a02088  mov r2, #0x88
0c001dc4: eb0043cb  bl 0x0c012cf8 <fn_0c012cf8>
0c001dc8: e3540802  cmp r4, #0x20000
0c001dcc: 3a000003  bcc 0x0c001de0
0c001dd0: e24f1f33  sub r1, pc, #0xcc
0c001dd4: e24f0f27  sub r0, pc, #0x9c
0c001dd8: e3a02089  mov r2, #0x89
0c001ddc: eb0043c5  bl 0x0c012cf8 <fn_0c012cf8>
0c001de0: e1a05145  mov r5, r5, asr #2
0c001de4: e3340000  teq r4, #0x0
0c001de8: 091ba8f0  ldmeqdb r11, {r4,r5,r6,r7,r11,sp,pc}
0c001dec: e7970105  ldr r0, [r7, r5, lsl #2]
0c001df0: e2544004  subs r4, r4, #0x4
0c001df4: e2855001  add r5, r5, #0x1
0c001df8: e4860004  str r0, [r6], #0x4
0c001dfc: 1afffffa  bne 0x0c001dec
0c001e00: e91ba8f0  ldmdb r11, {r4,r5,r6,r7,r11,sp,pc}
0c001e04: 65722830  .asciz "er(0x%x, 0x%x)"
0c001e14: 21286565  .asciz "!(eeprom_addr & 0x3)"
0c001e2c: 21287369  .asciz "!(size & 0x3)"
eeprom_id:
0c001e3c: e1a0c00d  mov r12, sp
0c001e40: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c001e44: e24cb004  sub r11, r12, #0x4
0c001e48: e3a04502  mov r4, #0x800000
0c001e4c: e3a00090  mov r0, #0x90
0c001e50: ebffff56  bl 0x0c001bb0 <eeprom_state>
0c001e54: e3a00d09  mov r0, #0x240
0c001e58: e280093d  add r0, r0, #0xf4000
0c001e5c: eb0043aa  bl 0x0c012d0c <sleep>
0c001e60: e5944000  ldr r4, [r4, #0x0]
0c001e64: e3a000f0  mov r0, #0xf0
0c001e68: ebffff50  bl 0x0c001bb0 <eeprom_state>
0c001e6c: e3a00d09  mov r0, #0x240
0c001e70: e280093d  add r0, r0, #0xf4000
0c001e74: eb0043a4  bl 0x0c012d0c <sleep>
0c001e78: e1a00004  mov r0, r4
0c001e7c: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c001e80: e1a0c00d  mov r12, sp
0c001e84: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c001e88: e24cb004  sub r11, r12, #0x4
0c001e8c: e5991000  ldr r1, [r9, #0x0]
0c001e90: e1a04001  mov r4, r1
0c001e94: e28f0f4d  add r0, pc, #0x134
0c001e98: eb0052c1  bl 0x0c0169a4 <fn_0c0169a4>
0c001e9c: e2440001  sub r0, r4, #0x1
0c001ea0: e51f51b0  ldr r5, [pc, #-0x1b0] =0x0401f2fc
0c001ea4: e3500005  cmp r0, #0x5
0c001ea8: 908ff100  addls pc, pc, r0, lsl #2
0c001eac: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c001eb0: ea00000d  b 0x0c001eec
0c001eb4: ea000019  b 0x0c001f20
0c001eb8: ea000031  b 0x0c001f84
0c001ebc: ea000032  b 0x0c001f8c
0c001ec0: ea000034  b 0x0c001f98
0c001ec4: e3a01802  mov r1, #0x20000
0c001ec8: e3a00000  mov r0, #0x0
0c001ecc: e5850000  str r0, [r5, #0x0]
0c001ed0: e5850004  str r0, [r5, #0x4]
0c001ed4: e5850008  str r0, [r5, #0x8]
0c001ed8: e5a5000c  str r0, [r5, #0xc]!
0c001edc: e1a00001  mov r0, r1
0c001ee0: e3a01004  mov r1, #0x4
0c001ee4: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c001ee8: eaffff48  b 0x0c001c10 <fn_0c001c10>
0c001eec: eb00003b  bl 0x0c001fe0 <fn_0c001fe0>
0c001ef0: e1a04000  mov r4, r0
0c001ef4: eb003ff4  bl 0x0c011ecc <fn_0c011ecc>
0c001ef8: e3a01001  mov r1, #0x1
0c001efc: e3a00076  mov r0, #0x76
0c001f00: e2800b01  add r0, r0, #0x400
0c001f04: eb003402  bl 0x0c00ef14 <fn_0c00ef14>
0c001f08: e1a01004  mov r1, r4
0c001f0c: e3a00076  mov r0, #0x76
0c001f10: e2800b01  add r0, r0, #0x400
0c001f14: eb0033fe  bl 0x0c00ef14 <fn_0c00ef14>
0c001f18: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c001f1c: ea003fee  b 0x0c011edc
0c001f20: e5990000  ldr r0, [r9, #0x0]
0c001f24: e599103c  ldr r1, [r9, #0x3c]
0c001f28: e1a04001  mov r4, r1
0c001f2c: ebffff8e  bl 0x0c001d6c <fn_0c001d6c>
0c001f30: e3540000  cmp r4, #0x0
0c001f34: b2844003  addlt r4, r4, #0x3
0c001f38: e1a04144  mov r4, r4, asr #2
0c001f3c: e1a06005  mov r6, r5
0c001f40: eb003fe1  bl 0x0c011ecc <fn_0c011ecc>
0c001f44: e1a01004  mov r1, r4
0c001f48: e3a00076  mov r0, #0x76
0c001f4c: e2800b01  add r0, r0, #0x400
0c001f50: eb0033ef  bl 0x0c00ef14 <fn_0c00ef14>
0c001f54: e3a05000  mov r5, #0x0
0c001f58: e3540000  cmp r4, #0x0
0c001f5c: da000006  ble 0x0c001f7c
0c001f60: e3a00076  mov r0, #0x76
0c001f64: e2800b01  add r0, r0, #0x400
0c001f68: e4961004  ldr r1, [r6], #0x4
0c001f6c: eb0033e8  bl 0x0c00ef14 <fn_0c00ef14>
0c001f70: e2855001  add r5, r5, #0x1
0c001f74: e1550004  cmp r5, r4
0c001f78: bafffff8  blt 0x0c001f60
0c001f7c: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c001f80: ea003fd5  b 0x0c011edc
0c001f84: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c001f88: ea000067  b 0x0c00212c
0c001f8c: e599003c  ldr r0, [r9, #0x3c]
0c001f90: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c001f94: ea00006d  b 0x0c002150
0c001f98: e599003c  ldr r0, [r9, #0x3c]
0c001f9c: ebffffa6  bl 0x0c001e3c <eeprom_id>
0c001fa0: e1a04000  mov r4, r0
0c001fa4: eb003fc8  bl 0x0c011ecc <fn_0c011ecc>
0c001fa8: e3a01001  mov r1, #0x1
0c001fac: e3a00076  mov r0, #0x76
0c001fb0: e2800b01  add r0, r0, #0x400
0c001fb4: eb0033d6  bl 0x0c00ef14 <fn_0c00ef14>
0c001fb8: e1a01004  mov r1, r4
0c001fbc: e3a00076  mov r0, #0x76
0c001fc0: e2800b01  add r0, r0, #0x400
0c001fc4: eb0033d2  bl 0x0c00ef14 <fn_0c00ef14>
0c001fc8: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c001fcc: ea003fc2  b 0x0c011edc
0c001fd0: 61656f3a  .asciz "aeo: cmd = %d"
fn_0c001fe0:
0c001fe0: e1a0c00d  mov r12, sp
0c001fe4: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c001fe8: e24cb004  sub r11, r12, #0x4
0c001fec: e51f62fc  ldr r6, [pc, #-0x2fc] =0x0401f2fc
0c001ff0: e1a01006  mov r1, r6
0c001ff4: e3a00000  mov r0, #0x0
0c001ff8: e3a0e000  mov lr, #0x0
0c001ffc: e5992000  ldr r2, [r9, #0x0]
0c002000: e3320000  teq r2, #0x0
0c002004: 05990000  ldreq r0, [r9, #0x0]
0c002008: e5994000  ldr r4, [r9, #0x0]
0c00200c: e3320001  teq r2, #0x1
0c002010: 1a000002  bne 0x0c002020
0c002014: e59f3078  ldr r3, [pc, #0x78] =0xfacefeed
0c002018: e3a0e002  mov lr, #0x2
0c00201c: e8a10018  stmia r1!, {r3,r4}
0c002020: e254cc7f  subs r12, r4, #0x7f00
0c002024: 235c00fb  cmpcs r12, #0xfb
0c002028: 8a000037  bhi 0x0c00210c
0c00202c: e3a03000  mov r3, #0x0
0c002030: e244c001  sub r12, r4, #0x1
0c002034: e35c0000  cmp r12, #0x0
0c002038: da000005  ble 0x0c002054
0c00203c: e5994000  ldr r4, [r9, #0x0]
0c002040: e28ee001  add lr, lr, #0x1
0c002044: e2833001  add r3, r3, #0x1
0c002048: e15c0003  cmp r12, r3
0c00204c: e4814004  str r4, [r1], #0x4
0c002050: cafffff9  bgt 0x0c00203c
0c002054: e599303c  ldr r3, [r9, #0x3c]
0c002058: e28e4001  add r4, lr, #0x1
0c00205c: e3320000  teq r2, #0x0
0c002060: e5813000  str r3, [r1, #0x0]
0c002064: 0a000015  beq 0x0c0020c0
0c002068: e3320001  teq r2, #0x1
0c00206c: 03a05802  moveq r5, #0x20000
0c002070: 028f0f08  addeq r0, pc, #0x20
0c002074: 0a000004  beq 0x0c00208c
0c002078: e3320002  teq r2, #0x2
0c00207c: 1a000022  bne 0x0c00210c
0c002080: e3a05702  mov r5, #0x80000
0c002084: e2455c01  sub r5, r5, #0x100
0c002088: e28f0f07  add r0, pc, #0x1c
0c00208c: eb005244  bl 0x0c0169a4 <fn_0c0169a4>
0c002090: ea00000e  b 0x0c0020d0
0c002094: facefeed  .word 0xfacefeed
0c002098: 656c3a20  .asciz "el: writing combo"
0c0020ac: 656c3a20  .asciz "el: writing header"
0c0020c0: e1a05000  mov r5, r0
0c0020c4: e1a01000  mov r1, r0
0c0020c8: e28f0f09  add r0, pc, #0x24
0c0020cc: eb005234  bl 0x0c0169a4 <fn_0c0169a4>
0c0020d0: e1a01104  mov r1, r4, lsl #2
0c0020d4: e1a00005  mov r0, r5
0c0020d8: ebfffecc  bl 0x0c001c10 <fn_0c001c10>
0c0020dc: e1a01006  mov r1, r6
0c0020e0: e3a03000  mov r3, #0x0
0c0020e4: e3540000  cmp r4, #0x0
0c0020e8: da00000d  ble 0x0c002124
0c0020ec: e3a00000  mov r0, #0x0
0c0020f0: ea000007  b 0x0c002114
0c0020f4: 656c3a20  .asciz "el: writing ucode(0x%x)"
0c00210c: e3a00000  mov r0, #0x0
0c002110: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c002114: e2833001  add r3, r3, #0x1
0c002118: e1530004  cmp r3, r4
0c00211c: e4810004  str r0, [r1], #0x4
0c002120: bafffffb  blt 0x0c002114
0c002124: e3a00001  mov r0, #0x1
0c002128: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c00212c: e5990000  ldr r0, [r9, #0x0]
0c002130: e5880b24  str r0, [r8, #0xb24]
0c002134: e5990000  ldr r0, [r9, #0x0]
0c002138: e5880b28  str r0, [r8, #0xb28]
0c00213c: e599003c  ldr r0, [r9, #0x3c]
0c002140: e5880b2c  str r0, [r8, #0xb2c]
0c002144: e3a00000  mov r0, #0x0
0c002148: e5880b30  str r0, [r8, #0xb30]
0c00214c: e1a0f00e  mov pc, lr
0c002150: e1a0c00d  mov r12, sp
0c002154: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c002158: e24cb004  sub r11, r12, #0x4
0c00215c: e3a05001  mov r5, #0x1
0c002160: e5095164  str r5, [r9, #-0x164]
0c002164: e5191150  ldr r1, [r9, #-0x150]
0c002168: e1a04001  mov r4, r1
0c00216c: e3a00e43  mov r0, #0x430
0c002170: eb00336d  bl 0x0c00ef2c <fn_0c00ef2c>
0c002174: e1a01004  mov r1, r4
0c002178: e3a00034  mov r0, #0x34
0c00217c: e2800b01  add r0, r0, #0x400
0c002180: eb003363  bl 0x0c00ef14 <fn_0c00ef14>
0c002184: e3a00000  mov r0, #0x0
0c002188: e3e026ff  mvn r2, #0xff00000
0c00218c: e2822201  add r2, r2, #0x10000000
0c002190: e5191164  ldr r1, [r9, #-0x164]
0c002194: e2800001  add r0, r0, #0x1
0c002198: e3310000  teq r1, #0x0
0c00219c: 1a000001  bne 0x0c0021a8
0c0021a0: e1500002  cmp r0, r2
0c0021a4: 3afffff9  bcc 0x0c002190
0c0021a8: e5190160  ldr r0, [r9, #-0x160]
0c0021ac: e3310000  teq r1, #0x0
0c0021b0: 0a000002  beq 0x0c0021c0
0c0021b4: e1300004  teq r0, r4
0c0021b8: 03a04001  moveq r4, #0x1
0c0021bc: 0a000000  beq 0x0c0021c4
0c0021c0: e3a04000  mov r4, #0x0
0c0021c4: e5095164  str r5, [r9, #-0x164]
0c0021c8: e1a01004  mov r1, r4
0c0021cc: e28f0f0b  add r0, pc, #0x2c
0c0021d0: eb0051f3  bl 0x0c0169a4 <fn_0c0169a4>
0c0021d4: eb003f3c  bl 0x0c011ecc <fn_0c011ecc>
0c0021d8: e3a01001  mov r1, #0x1
0c0021dc: e3a00076  mov r0, #0x76
0c0021e0: e2800b01  add r0, r0, #0x400
0c0021e4: eb00334a  bl 0x0c00ef14 <fn_0c00ef14>
0c0021e8: e1a01004  mov r1, r4
0c0021ec: e3a00076  mov r0, #0x76
0c0021f0: e2800b01  add r0, r0, #0x400
0c0021f4: eb003346  bl 0x0c00ef14 <fn_0c00ef14>
0c0021f8: e91b6830  ldmdb r11, {r4,r5,r11,sp,lr}
0c0021fc: ea003f36  b 0x0c011edc
0c002200: 65633a20  .asciz "ec: status = %d"
fn_0c002210:
0c002210: e1a0c00d  mov r12, sp
0c002214: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c002218: e24cb004  sub r11, r12, #0x4
0c00221c: e1a04000  mov r4, r0
0c002220: e080a101  add r10, r0, r1, lsl #2
0c002224: e3a00000  mov r0, #0x0
0c002228: e1a06004  mov r6, r4
0c00222c: e154000a  cmp r4, r10
0c002230: e52d0004  str r0, [sp, #-0x4]!
0c002234: 2a000046  bcs 0x0c002354
0c002238: e4965004  ldr r5, [r6], #0x4
0c00223c: e1b07005  movs r7, r5
0c002240: 4a000001  bmi 0x0c00224c
0c002244: e355005d  cmp r5, #0x5d
0c002248: ba00000d  blt 0x0c002284
0c00224c: e59f0014  ldr r0, [pc, #0x14] =0x0403f2fc
0c002250: e5900000  ldr r0, [r0, #0x0]
0c002254: e3100080  tst r0, #0x80
0c002258: 11a01005  movne r1, r5
0c00225c: 128f0f02  addne r0, pc, #0x8
0c002260: 1b003e9e  blne 0x0c011ce0 <fn_0c011ce0>
0c002264: ea000070  b 0x0c00242c
0c002268: 0403f2fc  .word 0x0403f2fc
0c00226c: 636d6420  .asciz "cmd %d out of range!\n"
0c002284: e51f0024  ldr r0, [pc, #-0x24] =0x0403f2fc
0c002288: e5900000  ldr r0, [r0, #0x0]
0c00228c: e3100080  tst r0, #0x80
0c002290: 0a000005  beq 0x0c0022ac
0c002294: e0850085  add r0, r5, r5, lsl #1
0c002298: e59f106c  ldr r1, [pc, #0x6c] =0x040188d8
0c00229c: e0810100  add r0, r1, r0, lsl #2
0c0022a0: e5901000  ldr r1, [r0, #0x0]
0c0022a4: e28f0f19  add r0, pc, #0x64
0c0022a8: eb003e8c  bl 0x0c011ce0 <fn_0c011ce0>
0c0022ac: e0850085  add r0, r5, r5, lsl #1
0c0022b0: e59f1054  ldr r1, [pc, #0x54] =0x040188d8
0c0022b4: e0810100  add r0, r1, r0, lsl #2
0c0022b8: e5b01004  ldr r1, [r0, #0x4]!
0c0022bc: e2410001  sub r0, r1, #0x1
0c0022c0: e3510000  cmp r1, #0x0
0c0022c4: da000005  ble 0x0c0022e0
0c0022c8: e4961004  ldr r1, [r6], #0x4
0c0022cc: e0817007  add r7, r1, r7
0c0022d0: e1a01000  mov r1, r0
0c0022d4: e2400001  sub r0, r0, #0x1
0c0022d8: e3510000  cmp r1, #0x0
0c0022dc: cafffff9  bgt 0x0c0022c8
0c0022e0: e4960004  ldr r0, [r6], #0x4
0c0022e4: e1300007  teq r0, r7
0c0022e8: 0a000017  beq 0x0c00234c
0c0022ec: e51f008c  ldr r0, [pc, #-0x8c] =0x0403f2fc
0c0022f0: e5900000  ldr r0, [r0, #0x0]
0c0022f4: e3100080  tst r0, #0x80
0c0022f8: 11a02007  movne r2, r7
0c0022fc: 15361004  ldrne r1, [r6, #-0x4]!
0c002300: 128f0f07  addne r0, pc, #0x1c
0c002304: 1a00002c  bne 0x0c0023bc
0c002308: ea000047  b 0x0c00242c
0c00230c: 040188d8  .word 0x040188d8
0c002310: 63686563  .asciz "checking cmd %s\n"
0c002324: 63686563  .asciz "checksum mismatch (got %d, wanted %d)\n"
0c00234c: e156000a  cmp r6, r10
0c002350: 3affffb8  bcc 0x0c002238
0c002354: e154000a  cmp r4, r10
0c002358: 2a000031  bcs 0x0c002424
0c00235c: e59f5060  ldr r5, [pc, #0x60] =0x040422fc
0c002360: e4946004  ldr r6, [r4], #0x4
0c002364: e51f0104  ldr r0, [pc, #-0x104] =0x0403f2fc
0c002368: e5900000  ldr r0, [r0, #0x0]
0c00236c: e3100080  tst r0, #0x80
0c002370: 0a000005  beq 0x0c00238c
0c002374: e0860086  add r0, r6, r6, lsl #1
0c002378: e51f1074  ldr r1, [pc, #-0x74] =0x040188d8
0c00237c: e0810100  add r0, r1, r0, lsl #2
0c002380: e5901000  ldr r1, [r0, #0x0]
0c002384: e28f0f0f  add r0, pc, #0x3c
0c002388: eb003e54  bl 0x0c011ce0 <fn_0c011ce0>
0c00238c: e1a00004  mov r0, r4
0c002390: e0861086  add r1, r6, r6, lsl #1
0c002394: e51f2090  ldr r2, [pc, #-0x90] =0x040188d8
0c002398: e0827101  add r7, r2, r1, lsl #2
0c00239c: e1a0e00f  mov lr, pc
0c0023a0: e597f008  ldr pc, [r7, #0x8]
0c0023a4: e5950438  ldr r0, [r5, #0x438]
0c0023a8: e3100201  tst r0, #0x10000000
0c0023ac: 0a000017  beq 0x0c002410
0c0023b0: e2442004  sub r2, r4, #0x4
0c0023b4: e1a01006  mov r1, r6
0c0023b8: e28f0f07  add r0, pc, #0x1c
0c0023bc: eb003e47  bl 0x0c011ce0 <fn_0c011ce0>
0c0023c0: ea000019  b 0x0c00242c
0c0023c4: 040422fc  .word 0x040422fc
0c0023c8: 6175746f  .asciz "auto executing %s\n"
0c0023dc: 4572726f  .asciz "Error executing stored video command %d @0x%08x\n"
0c002410: e5b70004  ldr r0, [r7, #0x4]!
0c002414: e0840100  add r0, r4, r0, lsl #2
0c002418: e2804004  add r4, r0, #0x4
0c00241c: e154000a  cmp r4, r10
0c002420: 3affffce  bcc 0x0c002360
0c002424: e3a00001  mov r0, #0x1
0c002428: e58d0000  str r0, [sp, #0x0]
0c00242c: e49d0004  ldr r0, [sp], #0x4
0c002430: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
DoDGRqstAutoInit:
0c002434: e1a0c00d  mov r12, sp
0c002438: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00243c: e24cb004  sub r11, r12, #0x4
0c002440: e3a04001  mov r4, #0x1
0c002444: e3a00000  mov r0, #0x0
0c002448: e51f11e8  ldr r1, [pc, #-0x1e8] =0x0403f2fc
0c00244c: e5810000  str r0, [r1, #0x0]
0c002450: e59f608c  ldr r6, [pc, #0x8c] =0x0401f2fc
0c002454: e3a01008  mov r1, #0x8
0c002458: e3a00802  mov r0, #0x20000
0c00245c: ebfffe42  bl 0x0c001d6c <fn_0c001d6c>
0c002460: e8960022  ldmia r6, {r1,r5}
0c002464: e59fc07c  ldr r12, [pc, #0x7c] =0xfacefeed
0c002468: e131000c  teq r1, r12
0c00246c: 0a000006  beq 0x0c00248c
0c002470: e51f0210  ldr r0, [pc, #-0x210] =0x0403f2fc
0c002474: e5900000  ldr r0, [r0, #0x0]
0c002478: e3100080  tst r0, #0x80
0c00247c: 128f0f1a  addne r0, pc, #0x68
0c002480: 159f2060  ldrne r2, [pc, #0x60] =0xfacefeed
0c002484: 1b003e15  blne 0x0c011ce0 <fn_0c011ce0>
0c002488: e3a04000  mov r4, #0x0
0c00248c: e3550902  cmp r5, #0x8000
0c002490: 3a000006  bcc 0x0c0024b0
0c002494: e51f0234  ldr r0, [pc, #-0x234] =0x0403f2fc
0c002498: e5900000  ldr r0, [r0, #0x0]
0c00249c: e3100080  tst r0, #0x80
0c0024a0: 11a01005  movne r1, r5
0c0024a4: 128f0f20  addne r0, pc, #0x80
0c0024a8: 1b003e0c  blne 0x0c011ce0 <fn_0c011ce0>
0c0024ac: e3a04000  mov r4, #0x0
0c0024b0: e51f0250  ldr r0, [pc, #-0x250] =0x0403f2fc
0c0024b4: e280a038  add r10, r0, #0x38
0c0024b8: e28aab0d  add r10, r10, #0x3400
0c0024bc: e2807a03  add r7, r0, #0x3000
0c0024c0: e3550000  cmp r5, #0x0
0c0024c4: aa00002d  bge 0x0c002580
0c0024c8: e51f0268  ldr r0, [pc, #-0x268] =0x0403f2fc
0c0024cc: e5900000  ldr r0, [r0, #0x0]
0c0024d0: e3100080  tst r0, #0x80
0c0024d4: 11a01005  movne r1, r5
0c0024d8: 128f0f20  addne r0, pc, #0x80
0c0024dc: 1b003dff  blne 0x0c011ce0 <fn_0c011ce0>
0c0024e0: ea00005d  b 0x0c00265c
0c0024e4: 0401f2fc  .word 0x0401f2fc
0c0024e8: facefeed  .word 0xfacefeed
0c0024ec: 65657072  .asciz "eeprom magic cookie bad for video (got 0x%08x, wanted 0x%08x)\n"
0c00252c: 636f6d62  .asciz "combination too large for sdram_scratch (%d words)\n"
0c002560: 6e656761  .asciz "negative size combination (%d)\n"
0c002580: e3340000  teq r4, #0x0
0c002584: 0a000034  beq 0x0c00265c
0c002588: e51f0328  ldr r0, [pc, #-0x328] =0x0403f2fc
0c00258c: e5900000  ldr r0, [r0, #0x0]
0c002590: e3100080  tst r0, #0x80
0c002594: 128f0f15  addne r0, pc, #0x54
0c002598: 1b003dd0  blne 0x0c011ce0 <fn_0c011ce0>
0c00259c: e2850002  add r0, r5, #0x2
0c0025a0: e1a01100  mov r1, r0, lsl #2
0c0025a4: e3a00802  mov r0, #0x20000
0c0025a8: ebfffdef  bl 0x0c001d6c <fn_0c001d6c>
0c0025ac: e2862008  add r2, r6, #0x8
0c0025b0: e59a1000  ldr r1, [r10, #0x0]
0c0025b4: e3c11201  bic r1, r1, #0x10000000
0c0025b8: e58a1000  str r1, [r10, #0x0]
0c0025bc: e1a01005  mov r1, r5
0c0025c0: e1a00002  mov r0, r2
0c0025c4: ebffff11  bl 0x0c002210 <fn_0c002210>
0c0025c8: e1a04000  mov r4, r0
0c0025cc: e5970438  ldr r0, [r7, #0x438]
0c0025d0: e3100201  tst r0, #0x10000000
0c0025d4: 1a000001  bne 0x0c0025e0
0c0025d8: e3340000  teq r4, #0x0
0c0025dc: 1a00001a  bne 0x0c00264c
0c0025e0: e28f0f0b  add r0, pc, #0x2c
0c0025e4: eb003dbd  bl 0x0c011ce0 <fn_0c011ce0>
0c0025e8: eb0013cd  bl 0x0c007524 <dgFetal>
0c0025ec: ea00001a  b 0x0c00265c
0c0025f0: 6c6f6164  .asciz "loading combination from EEPROM\n"
0c002614: 666c6173  .asciz "flashprom combo image failed to load, loading EBF...\n"
0c00264c: e28f0f1d  add r0, pc, #0x74
0c002650: eb003da2  bl 0x0c011ce0 <fn_0c011ce0>
0c002654: e3340000  teq r4, #0x0
0c002658: 1a00000f  bne 0x0c00269c
0c00265c: e51f53fc  ldr r5, [pc, #-0x3fc] =0x0403f2fc
0c002660: e59a1000  ldr r1, [r10, #0x0]
0c002664: e3c11201  bic r1, r1, #0x10000000
0c002668: e58a1000  str r1, [r10, #0x0]
0c00266c: e59f0074  ldr r0, [pc, #0x74] =0x040178e0
0c002670: e3a010fe  mov r1, #0xfe
0c002674: e2811c03  add r1, r1, #0x300
0c002678: ebfffee4  bl 0x0c002210 <fn_0c002210>
0c00267c: e1a04000  mov r4, r0
0c002680: e5b70438  ldr r0, [r7, #0x438]!
0c002684: e3100201  tst r0, #0x10000000
0c002688: 13a04000  movne r4, #0x0
0c00268c: e5950000  ldr r0, [r5, #0x0]
0c002690: e3100080  tst r0, #0x80
0c002694: 128f0f14  addne r0, pc, #0x50
0c002698: 1b003d90  blne 0x0c011ce0 <fn_0c011ce0>
0c00269c: e3340000  teq r4, #0x0
0c0026a0: 028f0f1e  addeq r0, pc, #0x78
0c0026a4: 091b6cf0  ldmeqdb r11, {r4,r5,r6,r7,r10,r11,sp,lr}
0c0026a8: 0a003d8c  beq 0x0c011ce0 <fn_0c011ce0>
0c0026ac: e51f044c  ldr r0, [pc, #-0x44c] =0x0403f2fc
0c0026b0: e5900000  ldr r0, [r0, #0x0]
0c0026b4: e3100080  tst r0, #0x80
0c0026b8: 128f0f1f  addne r0, pc, #0x7c
0c0026bc: 191b6cf0  ldmnedb r11, {r4,r5,r6,r7,r10,r11,sp,lr}
0c0026c0: 1a003d86  bne 0x0c011ce0 <fn_0c011ce0>
0c0026c4: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c0026c8: 636f6d62  .asciz "combo loaded from flashprom!\n"
0c0026e8: 040178e0  .word 0x040178e0
0c0026ec: 6c6f6164  .asciz "loaded combination from Emergency Backup Format\n"
0c002720: 636f6d62  .asciz "combination load failed!!!\n"
0c00273c: 73756363  .asciz "successfully loaded combination!\n"
0c002760: e1a0c00d  mov r12, sp
0c002764: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c002768: e24cb004  sub r11, r12, #0x4
0c00276c: e3a00000  mov r0, #0x0
0c002770: e52d0004  str r0, [sp, #-0x4]!
0c002774: e1a0000d  mov r0, sp
0c002778: ebffff2d  bl 0x0c002434 <DoDGRqstAutoInit>
0c00277c: e91ba800  ldmdb r11, {r11,sp,pc}
dgWaitForVocPllInterface:
0c002780: e3a01063  mov r1, #0x63
0c002784: e3a02d27  mov r2, #0x9c0
0c002788: e2822606  add r2, r2, #0x600000
0c00278c: e7923500  ldr r3, [r2, r0, lsl #10]
0c002790: e3130001  tst r3, #0x1
0c002794: 1a000003  bne 0x0c0027a8
0c002798: e1a03001  mov r3, r1
0c00279c: e2411001  sub r1, r1, #0x1
0c0027a0: e3530000  cmp r3, #0x0
0c0027a4: cafffff8  bgt 0x0c00278c
0c0027a8: e3310000  teq r1, #0x0
0c0027ac: 11a0f00e  movne pc, lr
0c0027b0: e28f1f02  add r1, pc, #0x8
0c0027b4: e28f0f05  add r0, pc, #0x14
0c0027b8: e3a0203e  mov r2, #0x3e
0c0027bc: ea003d47  b 0x0c011ce0 <fn_0c011ce0>
0c0027c0: 76696465  .asciz "video_clocks.c"
0c0027d0: 74696d65  .asciz "timeout %s:%d\n"
dgLoadVocClockParams:
0c0027e0: e92d4030  stmdb sp!, {r4,r5,lr}
0c0027e4: e5913004  ldr r3, [r1, #0x4]
0c0027e8: e2433001  sub r3, r3, #0x1
0c0027ec: e52d301c  str r3, [sp, #-0x1c]!
0c0027f0: e3a03003  mov r3, #0x3
0c0027f4: e58d3004  str r3, [sp, #0x4]
0c0027f8: e3a03006  mov r3, #0x6
0c0027fc: e3a0c000  mov r12, #0x0
0c002800: e58d3008  str r3, [sp, #0x8]
0c002804: e5913008  ldr r3, [r1, #0x8]
0c002808: e2433001  sub r3, r3, #0x1
0c00280c: e1a0eb03  mov lr, r3, lsl #22
0c002810: e1a0eb2e  mov lr, lr, lsr #22
0c002814: e3a03b01  mov r3, #0x400
0c002818: e591400c  ldr r4, [r1, #0xc]
0c00281c: e0033504  and r3, r3, r4, lsl #10
0c002820: e18e3003  orr r3, lr, r3
0c002824: e58d300c  str r3, [sp, #0xc]
0c002828: e5913010  ldr r3, [r1, #0x10]
0c00282c: e2034007  and r4, r3, #0x7
0c002830: e3a03038  mov r3, #0x38
0c002834: e591e014  ldr lr, [r1, #0x14]
0c002838: e003318e  and r3, r3, lr, lsl #3
0c00283c: e1843003  orr r3, r4, r3
0c002840: e3c3e080  bic lr, r3, #0x80
0c002844: e5913000  ldr r3, [r1, #0x0]
0c002848: e3130080  tst r3, #0x80
0c00284c: e3a04080  mov r4, #0x80
0c002850: e38ee040  orr lr, lr, #0x40
0c002854: 12033002  andne r3, r3, #0x2
0c002858: 11a030a3  movne r3, r3, lsr #1
0c00285c: e0043383  and r3, r4, r3, lsl #7
0c002860: e18e3003  orr r3, lr, r3
0c002864: e3c33c02  bic r3, r3, #0x200
0c002868: e3833c05  orr r3, r3, #0x500
0c00286c: e58d3010  str r3, [sp, #0x10]
0c002870: e5913000  ldr r3, [r1, #0x0]
0c002874: e3130080  tst r3, #0x80
0c002878: 02033001  andeq r3, r3, #0x1
0c00287c: 1203e004  andne lr, r3, #0x4
0c002880: 13a03001  movne r3, #0x1
0c002884: 1003314e  andne r3, r3, lr, asr #2
0c002888: e3c3e03e  bic lr, r3, #0x3e
0c00288c: e3a03030  mov r3, #0x30
0c002890: e5914018  ldr r4, [r1, #0x18]
0c002894: e0033204  and r3, r3, r4, lsl #4
0c002898: e18e3003  orr r3, lr, r3
0c00289c: e3c330c0  bic r3, r3, #0xc0
0c0028a0: e5b1e01c  ldr lr, [r1, #0x1c]!
0c0028a4: e3a010c0  mov r1, #0xc0
0c0028a8: e001130e  and r1, r1, lr, lsl #6
0c0028ac: e1831001  orr r1, r3, r1
0c0028b0: e3c11c02  bic r1, r1, #0x200
0c0028b4: e3811c05  orr r1, r1, #0x500
0c0028b8: e3a0304f  mov r3, #0x4f
0c0028bc: e2833b01  add r3, r3, #0x400
0c0028c0: e33000c9  teq r0, #0xc9
0c0028c4: e58d1014  str r1, [sp, #0x14]
0c0028c8: 133000ca  teqne r0, #0xca
0c0028cc: 133000d9  teqne r0, #0xd9
0c0028d0: 03a03043  moveq r3, #0x43
0c0028d4: 02833b01  addeq r3, r3, #0x400
0c0028d8: e58d3018  str r3, [sp, #0x18]
0c0028dc: e3a03000  mov r3, #0x0
0c0028e0: e1a0100c  mov r1, r12
0c0028e4: e3a04008  mov r4, #0x8
0c0028e8: e59fe0b0  ldr lr, [pc, #0xb0] =0x006009c4
0c0028ec: e59fc0b0  ldr r12, [pc, #0xb0] =0x006009cc
0c0028f0: e3a05000  mov r5, #0x0
0c0028f4: e52d5004  str r5, [sp, #-0x4]!
0c0028f8: e58d5000  str r5, [sp, #0x0]
0c0028fc: e59d5000  ldr r5, [sp, #0x0]
0c002900: e2855001  add r5, r5, #0x1
0c002904: e58d5000  str r5, [sp, #0x0]
0c002908: e3550003  cmp r5, #0x3
0c00290c: bafffffa  blt 0x0c0028fc
0c002910: e3320000  teq r2, #0x0
0c002914: 11a05004  movne r5, r4
0c002918: 01a05001  moveq r5, r1
0c00291c: e0855003  add r5, r5, r3
0c002920: e78e5500  str r5, [lr, r0, lsl #10]
0c002924: e3a05000  mov r5, #0x0
0c002928: e58d5000  str r5, [sp, #0x0]
0c00292c: e59d5000  ldr r5, [sp, #0x0]
0c002930: e2855001  add r5, r5, #0x1
0c002934: e58d5000  str r5, [sp, #0x0]
0c002938: e3550003  cmp r5, #0x3
0c00293c: bafffffa  blt 0x0c00292c
0c002940: e3a05000  mov r5, #0x0
0c002944: e58d5000  str r5, [sp, #0x0]
0c002948: e58d5000  str r5, [sp, #0x0]
0c00294c: e59d5000  ldr r5, [sp, #0x0]
0c002950: e2855001  add r5, r5, #0x1
0c002954: e58d5000  str r5, [sp, #0x0]
0c002958: e3550003  cmp r5, #0x3
0c00295c: bafffffa  blt 0x0c00294c
0c002960: e28d5004  add r5, sp, #0x4
0c002964: e7955103  ldr r5, [r5, r3, lsl #2]
0c002968: e78c5500  str r5, [r12, r0, lsl #10]
0c00296c: e3a05000  mov r5, #0x0
0c002970: e58d5000  str r5, [sp, #0x0]
0c002974: e59d5000  ldr r5, [sp, #0x0]
0c002978: e2855001  add r5, r5, #0x1
0c00297c: e58d5000  str r5, [sp, #0x0]
0c002980: e3550003  cmp r5, #0x3
0c002984: bafffffa  blt 0x0c002974
0c002988: e28dd004  add sp, sp, #0x4
0c00298c: e2833001  add r3, r3, #0x1
0c002990: e3530007  cmp r3, #0x7
0c002994: baffffd5  blt 0x0c0028f0
0c002998: e28dd01c  add sp, sp, #0x1c
0c00299c: e8bd8030  ldmia sp!, {r4,r5,pc}
0c0029a0: 006009c4  .word 0x006009c4
0c0029a4: 006009cc  .word 0x006009cc
dgProgramClock:
0c0029a8: e1a0c00d  mov r12, sp
0c0029ac: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c0029b0: e24cb004  sub r11, r12, #0x4
0c0029b4: e1a06000  mov r6, r0
0c0029b8: e1a04001  mov r4, r1
0c0029bc: e1a05002  mov r5, r2
0c0029c0: ebffff6e  bl 0x0c002780 <dgWaitForVocPllInterface>
0c0029c4: e3a00000  mov r0, #0x0
0c0029c8: e3a01002  mov r1, #0x2
0c0029cc: e0011085  and r1, r1, r5, lsl #1
0c0029d0: e3c12014  bic r2, r1, #0x14
0c0029d4: e3a01010  mov r1, #0x10
0c0029d8: e0011204  and r1, r1, r4, lsl #4
0c0029dc: e1821001  orr r1, r2, r1
0c0029e0: e3c11008  bic r1, r1, #0x8
0c0029e4: e3340000  teq r4, #0x0
0c0029e8: 03a00001  moveq r0, #0x1
0c0029ec: e3a02008  mov r2, #0x8
0c0029f0: e0020180  and r0, r2, r0, lsl #3
0c0029f4: e1810000  orr r0, r1, r0
0c0029f8: e3a01000  mov r1, #0x0
0c0029fc: e52d1004  str r1, [sp, #-0x4]!
0c002a00: e58d1000  str r1, [sp, #0x0]
0c002a04: e59d1000  ldr r1, [sp, #0x0]
0c002a08: e2811001  add r1, r1, #0x1
0c002a0c: e58d1000  str r1, [sp, #0x0]
0c002a10: e3510003  cmp r1, #0x3
0c002a14: bafffffa  blt 0x0c002a04
0c002a18: e3a01d27  mov r1, #0x9c0
0c002a1c: e2811606  add r1, r1, #0x600000
0c002a20: e7810506  str r0, [r1, r6, lsl #10]
0c002a24: e3a00000  mov r0, #0x0
0c002a28: e58d0000  str r0, [sp, #0x0]
0c002a2c: e59d0000  ldr r0, [sp, #0x0]
0c002a30: e2800001  add r0, r0, #0x1
0c002a34: e58d0000  str r0, [sp, #0x0]
0c002a38: e3500003  cmp r0, #0x3
0c002a3c: bafffffa  blt 0x0c002a2c
0c002a40: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
fn_0c002a44:
0c002a44: e92d4070  stmdb sp!, {r4,r5,r6,lr}
0c002a48: e59f5040  ldr r5, [pc, #0x40] =0x00600a04
0c002a4c: e7953500  ldr r3, [r5, r0, lsl #10]
0c002a50: e59f403c  ldr r4, [pc, #0x3c] =0x0406f70c
0c002a54: e3a0e000  mov lr, #0x0
0c002a58: e3a0c001  mov r12, #0x1
0c002a5c: e5946000  ldr r6, [r4, #0x0]
0c002a60: e3360000  teq r6, #0x0
0c002a64: 1a000004  bne 0x0c002a7c
0c002a68: e59f6028  ldr r6, [pc, #0x28] =0x04018ef4
0c002a6c: e5944048  ldr r4, [r4, #0x48]
0c002a70: e7964104  ldr r4, [r6, r4, lsl #2]
0c002a74: e3540002  cmp r4, #0x2
0c002a78: ba000007  blt 0x0c002a9c
0c002a7c: e3c33001  bic r3, r3, #0x1
0c002a80: e3310000  teq r1, #0x0
0c002a84: 1a000007  bne 0x0c002aa8
0c002a88: e1a0c00e  mov r12, lr
0c002a8c: ea000005  b 0x0c002aa8
0c002a90: 00600a04  .word 0x00600a04
0c002a94: 0406f70c  .word 0x0406f70c
0c002a98: 04018ef4  .word 0x04018ef4
0c002a9c: e3c33001  bic r3, r3, #0x1
0c002aa0: e3310000  teq r1, #0x0
0c002aa4: 1afffff7  bne 0x0c002a88
0c002aa8: e20c1001  and r1, r12, #0x1
0c002aac: e1831001  orr r1, r3, r1
0c002ab0: e3c11002  bic r1, r1, #0x2
0c002ab4: e3a03002  mov r3, #0x2
0c002ab8: e0032082  and r2, r3, r2, lsl #1
0c002abc: e1811002  orr r1, r1, r2
0c002ac0: e3a02000  mov r2, #0x0
0c002ac4: e52d2004  str r2, [sp, #-0x4]!
0c002ac8: e58d2000  str r2, [sp, #0x0]
0c002acc: e59d2000  ldr r2, [sp, #0x0]
0c002ad0: e2822001  add r2, r2, #0x1
0c002ad4: e58d2000  str r2, [sp, #0x0]
0c002ad8: e3520003  cmp r2, #0x3
0c002adc: bafffffa  blt 0x0c002acc
0c002ae0: e7851500  str r1, [r5, r0, lsl #10]
0c002ae4: e3a00000  mov r0, #0x0
0c002ae8: e58d0000  str r0, [sp, #0x0]
0c002aec: e59d0000  ldr r0, [sp, #0x0]
0c002af0: e2800001  add r0, r0, #0x1
0c002af4: e58d0000  str r0, [sp, #0x0]
0c002af8: e3500003  cmp r0, #0x3
0c002afc: bafffffa  blt 0x0c002aec
0c002b00: e28dd004  add sp, sp, #0x4
0c002b04: e8bd8070  ldmia sp!, {r4,r5,r6,pc}
dgStartVocClock:
0c002b08: e1a0c00d  mov r12, sp
0c002b0c: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c002b10: e24cb004  sub r11, r12, #0x4
0c002b14: e1a05000  mov r5, r0
0c002b18: e1b04001  movs r4, r1
0c002b1c: e1a06002  mov r6, r2
0c002b20: 1a000004  bne 0x0c002b38
0c002b24: ebffff9f  bl 0x0c0029a8 <dgProgramClock>
0c002b28: e1a00005  mov r0, r5
0c002b2c: ebffff13  bl 0x0c002780 <dgWaitForVocPllInterface>
0c002b30: e59f002c  ldr r0, [pc, #0x2c] =0x001312d0
0c002b34: eb004074  bl 0x0c012d0c <sleep>
0c002b38: e1a02006  mov r2, r6
0c002b3c: e1a01004  mov r1, r4
0c002b40: e1a00005  mov r0, r5
0c002b44: ebffffbe  bl 0x0c002a44 <fn_0c002a44>
0c002b48: e3340000  teq r4, #0x0
0c002b4c: 091ba870  ldmeqdb r11, {r4,r5,r6,r11,sp,pc}
0c002b50: e1a02006  mov r2, r6
0c002b54: e1a01004  mov r1, r4
0c002b58: e1a00005  mov r0, r5
0c002b5c: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c002b60: eaffff90  b 0x0c0029a8 <dgProgramClock>
0c002b64: 001312d0  .word 0x001312d0
DoDGRqstEnableVocReadback:
0c002b68: e1a0c00d  mov r12, sp
0c002b6c: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c002b70: e24cb004  sub r11, r12, #0x4
0c002b74: e1a04000  mov r4, r0
0c002b78: e3a00001  mov r0, #0x1
0c002b7c: e3a01067  mov r1, #0x67
0c002b80: e2811c07  add r1, r1, #0x700
0c002b84: e24dd018  sub sp, sp, #0x18
0c002b88: e92d0003  stmdb sp!, {r0,r1}
0c002b8c: e3a010c2  mov r1, #0xc2
0c002b90: e58d1008  str r1, [sp, #0x8]
0c002b94: e3a01000  mov r1, #0x0
0c002b98: e58d100c  str r1, [sp, #0xc]
0c002b9c: e3a01004  mov r1, #0x4
0c002ba0: e58d1010  str r1, [sp, #0x10]
0c002ba4: e3a01006  mov r1, #0x6
0c002ba8: e58d0018  str r0, [sp, #0x18]
0c002bac: e3a00003  mov r0, #0x3
0c002bb0: e58d001c  str r0, [sp, #0x1c]
0c002bb4: e58d1014  str r1, [sp, #0x14]
0c002bb8: e1a0100d  mov r1, sp
0c002bbc: e3a02000  mov r2, #0x0
0c002bc0: e5940000  ldr r0, [r4, #0x0]
0c002bc4: ebffff05  bl 0x0c0027e0 <dgLoadVocClockParams>
0c002bc8: e3a02000  mov r2, #0x0
0c002bcc: e3a01000  mov r1, #0x0
0c002bd0: e5940000  ldr r0, [r4, #0x0]
0c002bd4: ebffffcb  bl 0x0c002b08 <dgStartVocClock>
0c002bd8: e3a01e91  mov r1, #0x910
0c002bdc: e2811606  add r1, r1, #0x600000
0c002be0: e5940000  ldr r0, [r4, #0x0]
0c002be4: e7910500  ldr r0, [r1, r0, lsl #10]
0c002be8: e3800002  orr r0, r0, #0x2
0c002bec: e3a02000  mov r2, #0x0
0c002bf0: e52d2004  str r2, [sp, #-0x4]!
0c002bf4: e58d2000  str r2, [sp, #0x0]
0c002bf8: e59d2000  ldr r2, [sp, #0x0]
0c002bfc: e2822001  add r2, r2, #0x1
0c002c00: e58d2000  str r2, [sp, #0x0]
0c002c04: e3520003  cmp r2, #0x3
0c002c08: bafffffa  blt 0x0c002bf8
0c002c0c: e5942000  ldr r2, [r4, #0x0]
0c002c10: e7810502  str r0, [r1, r2, lsl #10]
0c002c14: e3a00000  mov r0, #0x0
0c002c18: e58d0000  str r0, [sp, #0x0]
0c002c1c: e59d0000  ldr r0, [sp, #0x0]
0c002c20: e2800001  add r0, r0, #0x1
0c002c24: e58d0000  str r0, [sp, #0x0]
0c002c28: e3500003  cmp r0, #0x3
0c002c2c: bafffffa  blt 0x0c002c1c
0c002c30: e91ba810  ldmdb r11, {r4,r11,sp,pc}
DoDGRqstMasterClockSelect:
0c002c34: e1a0c00d  mov r12, sp
0c002c38: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c002c3c: e24cb004  sub r11, r12, #0x4
0c002c40: e1a04000  mov r4, r0
0c002c44: e3a00606  mov r0, #0x600000
0c002c48: e5901238  ldr r1, [r0, #0x238]
0c002c4c: e3c13502  bic r3, r1, #0x800000
0c002c50: e5941000  ldr r1, [r4, #0x0]
0c002c54: e3310001  teq r1, #0x1
0c002c58: 13a02000  movne r2, #0x0
0c002c5c: 03a02001  moveq r2, #0x1
0c002c60: e3a01502  mov r1, #0x800000
0c002c64: e0011b82  and r1, r1, r2, lsl #23
0c002c68: e1831001  orr r1, r3, r1
0c002c6c: e3a02000  mov r2, #0x0
0c002c70: e52d2004  str r2, [sp, #-0x4]!
0c002c74: e58d2000  str r2, [sp, #0x0]
0c002c78: e59d2000  ldr r2, [sp, #0x0]
0c002c7c: e2822001  add r2, r2, #0x1
0c002c80: e58d2000  str r2, [sp, #0x0]
0c002c84: e3520003  cmp r2, #0x3
0c002c88: bafffffa  blt 0x0c002c78
0c002c8c: e5a01238  str r1, [r0, #0x238]!
0c002c90: e3a00000  mov r0, #0x0
0c002c94: e58d0000  str r0, [sp, #0x0]
0c002c98: e59d0000  ldr r0, [sp, #0x0]
0c002c9c: e2800001  add r0, r0, #0x1
0c002ca0: e58d0000  str r0, [sp, #0x0]
0c002ca4: e3500003  cmp r0, #0x3
0c002ca8: bafffffa  blt 0x0c002c98
0c002cac: e28dd004  add sp, sp, #0x4
0c002cb0: e59f5020  ldr r5, [pc, #0x20] =0x0403f2fc
0c002cb4: e5950000  ldr r0, [r5, #0x0]
0c002cb8: e3100b01  tst r0, #0x400
0c002cbc: 15941000  ldrne r1, [r4, #0x0]
0c002cc0: 128f0f05  addne r0, pc, #0x14
0c002cc4: 1b003c05  blne 0x0c011ce0 <fn_0c011ce0>
0c002cc8: e2851a03  add r1, r5, #0x3000
0c002ccc: e5940000  ldr r0, [r4, #0x0]
0c002cd0: e5a10434  str r0, [r1, #0x434]!
0c002cd4: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c002cd8: 0403f2fc  .word 0x0403f2fc
0c002cdc: 6d617374  .asciz "master clock select = %d\n"
DoDGRqstGetMasterClockSelect:
0c002cf8: e1a0c00d  mov r12, sp
0c002cfc: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c002d00: e24cb004  sub r11, r12, #0x4
0c002d04: e59f0018  ldr r0, [pc, #0x18] =0x040422fc
0c002d08: e5900434  ldr r0, [r0, #0x434]
0c002d0c: e52d0004  str r0, [sp, #-0x4]!
0c002d10: e1a0100d  mov r1, sp
0c002d14: e3a02004  mov r2, #0x4
0c002d18: e3a0000d  mov r0, #0xd
0c002d1c: eb0007ef  bl 0x0c004ce0 <fn_0c004ce0>
0c002d20: e91ba800  ldmdb r11, {r11,sp,pc}
0c002d24: 040422fc  .word 0x040422fc
DoDGRqstXMapClockSelect:
0c002d28: e1a0c00d  mov r12, sp
0c002d2c: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c002d30: e24cb004  sub r11, r12, #0x4
0c002d34: e1a04000  mov r4, r0
0c002d38: e51f1068  ldr r1, [pc, #-0x68] =0x0403f2fc
0c002d3c: e2815a03  add r5, r1, #0x3000
0c002d40: e5952430  ldr r2, [r5, #0x430]
0c002d44: e5900000  ldr r0, [r0, #0x0]
0c002d48: e1320000  teq r2, r0
0c002d4c: 091ba830  ldmeqdb r11, {r4,r5,r11,sp,pc}
0c002d50: e3300000  teq r0, #0x0
0c002d54: 13300001  teqne r0, #0x1
0c002d58: 11a01000  movne r1, r0
0c002d5c: 128f0f1b  addne r0, pc, #0x6c
0c002d60: 191b6830  ldmnedb r11, {r4,r5,r11,sp,lr}
0c002d64: 1a003bdd  bne 0x0c011ce0 <fn_0c011ce0>
0c002d68: e51f02dc  ldr r0, [pc, #-0x2dc] =0x0406f70c
0c002d6c: e5900000  ldr r0, [r0, #0x0]
0c002d70: e3300000  teq r0, #0x0
0c002d74: e24dd004  sub sp, sp, #0x4
0c002d78: e3a00000  mov r0, #0x0
0c002d7c: 1a00001a  bne 0x0c002dec
0c002d80: e58d0000  str r0, [sp, #0x0]
0c002d84: e3a00000  mov r0, #0x0
0c002d88: e58d0000  str r0, [sp, #0x0]
0c002d8c: e59d0000  ldr r0, [sp, #0x0]
0c002d90: e2800001  add r0, r0, #0x1
0c002d94: e58d0000  str r0, [sp, #0x0]
0c002d98: e3500003  cmp r0, #0x3
0c002d9c: bafffffa  blt 0x0c002d8c
0c002da0: e3a02a06  mov r2, #0x6000
0c002da4: e2822606  add r2, r2, #0x600000
0c002da8: e5940000  ldr r0, [r4, #0x0]
0c002dac: e5a20400  str r0, [r2, #0x400]!
0c002db0: e3a00000  mov r0, #0x0
0c002db4: e58d0000  str r0, [sp, #0x0]
0c002db8: e59d0000  ldr r0, [sp, #0x0]
0c002dbc: e2800001  add r0, r0, #0x1
0c002dc0: e58d0000  str r0, [sp, #0x0]
0c002dc4: e3500003  cmp r0, #0x3
0c002dc8: bafffffa  blt 0x0c002db8
0c002dcc: ea000018  b 0x0c002e34
0c002dd0: 556e6b6e  .asciz "Unknown XMapClockSelect %d\n"
0c002dec: e58d0000  str r0, [sp, #0x0]
0c002df0: e3a00000  mov r0, #0x0
0c002df4: e58d0000  str r0, [sp, #0x0]
0c002df8: e59d0000  ldr r0, [sp, #0x0]
0c002dfc: e2800001  add r0, r0, #0x1
0c002e00: e58d0000  str r0, [sp, #0x0]
0c002e04: e3500003  cmp r0, #0x3
0c002e08: bafffffa  blt 0x0c002df8
0c002e0c: e3a00862  mov r0, #0x620000
0c002e10: e5942000  ldr r2, [r4, #0x0]
0c002e14: e5802000  str r2, [r0, #0x0]
0c002e18: e3a00000  mov r0, #0x0
0c002e1c: e58d0000  str r0, [sp, #0x0]
0c002e20: e59d0000  ldr r0, [sp, #0x0]
0c002e24: e2800001  add r0, r0, #0x1
0c002e28: e58d0000  str r0, [sp, #0x0]
0c002e2c: e3500003  cmp r0, #0x3
0c002e30: bafffffa  blt 0x0c002e20
0c002e34: e28dd004  add sp, sp, #0x4
0c002e38: e5910000  ldr r0, [r1, #0x0]
0c002e3c: e3100b01  tst r0, #0x400
0c002e40: 15941000  ldrne r1, [r4, #0x0]
0c002e44: 128f0f03  addne r0, pc, #0xc
0c002e48: 1b003ba4  blne 0x0c011ce0 <fn_0c011ce0>
0c002e4c: e5940000  ldr r0, [r4, #0x0]
0c002e50: e5a50430  str r0, [r5, #0x430]!
0c002e54: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c002e58: 786d6170  .asciz "xmap clock select = %d\n"
DoDGRqstGetXMapClockSelect:
0c002e70: e1a0c00d  mov r12, sp
0c002e74: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c002e78: e24cb004  sub r11, r12, #0x4
0c002e7c: e51f0160  ldr r0, [pc, #-0x160] =0x040422fc
0c002e80: e5900430  ldr r0, [r0, #0x430]
0c002e84: e52d0004  str r0, [sp, #-0x4]!
0c002e88: e1a0100d  mov r1, sp
0c002e8c: e3a02004  mov r2, #0x4
0c002e90: e3a00012  mov r0, #0x12
0c002e94: eb000791  bl 0x0c004ce0 <fn_0c004ce0>
0c002e98: e91ba800  ldmdb r11, {r11,sp,pc}
0c002e9c: e1a0c00d  mov r12, sp
0c002ea0: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c002ea4: e24cb004  sub r11, r12, #0x4
0c002ea8: e1a04000  mov r4, r0
0c002eac: e59f00a8  ldr r0, [pc, #0xa8] =0x00600818
0c002eb0: e7902504  ldr r2, [r0, r4, lsl #10]
0c002eb4: e3340001  teq r4, #0x1
0c002eb8: 13822006  orrne r2, r2, #0x6
0c002ebc: 03c22006  biceq r2, r2, #0x6
0c002ec0: e3c23c1e  bic r3, r2, #0x1e00
0c002ec4: e51f21f4  ldr r2, [pc, #-0x1f4] =0x0403f2fc
0c002ec8: e0822104  add r2, r2, r4, lsl #2
0c002ecc: e2822a03  add r2, r2, #0x3000
0c002ed0: e5922004  ldr r2, [r2, #0x4]
0c002ed4: e5b2c090  ldr r12, [r2, #0x90]!
0c002ed8: e3a02c1e  mov r2, #0x1e00
0c002edc: e002248c  and r2, r2, r12, lsl #9
0c002ee0: e1832002  orr r2, r3, r2
0c002ee4: e3a03000  mov r3, #0x0
0c002ee8: e52d3004  str r3, [sp, #-0x4]!
0c002eec: e58d3000  str r3, [sp, #0x0]
0c002ef0: e59d3000  ldr r3, [sp, #0x0]
0c002ef4: e2833001  add r3, r3, #0x1
0c002ef8: e58d3000  str r3, [sp, #0x0]
0c002efc: e3530003  cmp r3, #0x3
0c002f00: bafffffa  blt 0x0c002ef0
0c002f04: e7802504  str r2, [r0, r4, lsl #10]
0c002f08: e3a00000  mov r0, #0x0
0c002f0c: e58d0000  str r0, [sp, #0x0]
0c002f10: e59d0000  ldr r0, [sp, #0x0]
0c002f14: e2800001  add r0, r0, #0x1
0c002f18: e58d0000  str r0, [sp, #0x0]
0c002f1c: e3500003  cmp r0, #0x3
0c002f20: bafffffa  blt 0x0c002f10
0c002f24: e28dd004  add sp, sp, #0x4
0c002f28: e51f34a0  ldr r3, [pc, #-0x4a0] =0x00600a04
0c002f2c: e7930504  ldr r0, [r3, r4, lsl #10]
0c002f30: e51f24a4  ldr r2, [pc, #-0x4a4] =0x0406f70c
0c002f34: e592c000  ldr r12, [r2, #0x0]
0c002f38: e33c0000  teq r12, #0x0
0c002f3c: 1a000004  bne 0x0c002f54
0c002f40: e51fc4b0  ldr r12, [pc, #-0x4b0] =0x04018ef4
0c002f44: e5922048  ldr r2, [r2, #0x48]
0c002f48: e79c2102  ldr r2, [r12, r2, lsl #2]
0c002f4c: e3520002  cmp r2, #0x2
0c002f50: ba000002  blt 0x0c002f60
0c002f54: e3c02001  bic r2, r0, #0x1
0c002f58: ea000001  b 0x0c002f64
0c002f5c: 00600818  .word 0x00600818
0c002f60: e3802001  orr r2, r0, #0x1
0c002f64: e3c20002  bic r0, r2, #0x2
0c002f68: e3a02000  mov r2, #0x0
0c002f6c: e52d2004  str r2, [sp, #-0x4]!
0c002f70: e58d2000  str r2, [sp, #0x0]
0c002f74: e59d2000  ldr r2, [sp, #0x0]
0c002f78: e2822001  add r2, r2, #0x1
0c002f7c: e58d2000  str r2, [sp, #0x0]
0c002f80: e3520003  cmp r2, #0x3
0c002f84: bafffffa  blt 0x0c002f74
0c002f88: e7830504  str r0, [r3, r4, lsl #10]
0c002f8c: e3a00000  mov r0, #0x0
0c002f90: e58d0000  str r0, [sp, #0x0]
0c002f94: e59d0000  ldr r0, [sp, #0x0]
0c002f98: e2800001  add r0, r0, #0x1
0c002f9c: e58d0000  str r0, [sp, #0x0]
0c002fa0: e3500003  cmp r0, #0x3
0c002fa4: bafffffa  blt 0x0c002f94
0c002fa8: e3a00d27  mov r0, #0x9c0
0c002fac: e2800606  add r0, r0, #0x600000
0c002fb0: e7902504  ldr r2, [r0, r4, lsl #10]
0c002fb4: e3c22002  bic r2, r2, #0x2
0c002fb8: e3a03000  mov r3, #0x0
0c002fbc: e58d3000  str r3, [sp, #0x0]
0c002fc0: e58d3000  str r3, [sp, #0x0]
0c002fc4: e59d3000  ldr r3, [sp, #0x0]
0c002fc8: e2833001  add r3, r3, #0x1
0c002fcc: e58d3000  str r3, [sp, #0x0]
0c002fd0: e3530003  cmp r3, #0x3
0c002fd4: bafffffa  blt 0x0c002fc4
0c002fd8: e7802504  str r2, [r0, r4, lsl #10]
0c002fdc: e3a00000  mov r0, #0x0
0c002fe0: e58d0000  str r0, [sp, #0x0]
0c002fe4: e59d0000  ldr r0, [sp, #0x0]
0c002fe8: e2800001  add r0, r0, #0x1
0c002fec: e58d0000  str r0, [sp, #0x0]
0c002ff0: e3500003  cmp r0, #0x3
0c002ff4: bafffffa  blt 0x0c002fe4
0c002ff8: e28dd004  add sp, sp, #0x4
0c002ffc: e59f23b0  ldr r2, [pc, #0x3b0] =0x00600a08
0c003000: e7920504  ldr r0, [r2, r4, lsl #10]
0c003004: e3c00001  bic r0, r0, #0x1
0c003008: e5913000  ldr r3, [r1, #0x0]
0c00300c: e2033001  and r3, r3, #0x1
0c003010: e1800003  orr r0, r0, r3
0c003014: e3c0cc3f  bic r12, r0, #0x3f00
0c003018: e3ccc0fe  bic r12, r12, #0xfe
0c00301c: e3a00901  mov r0, #0x4000
0c003020: e2400002  sub r0, r0, #0x2
0c003024: e5913004  ldr r3, [r1, #0x4]
0c003028: e0003083  and r3, r0, r3, lsl #1
0c00302c: e18c3003  orr r3, r12, r3
0c003030: e3a0c000  mov r12, #0x0
0c003034: e52dc004  str r12, [sp, #-0x4]!
0c003038: e58dc000  str r12, [sp, #0x0]
0c00303c: e59dc000  ldr r12, [sp, #0x0]
0c003040: e28cc001  add r12, r12, #0x1
0c003044: e58dc000  str r12, [sp, #0x0]
0c003048: e35c0003  cmp r12, #0x3
0c00304c: bafffffa  blt 0x0c00303c
0c003050: e7823504  str r3, [r2, r4, lsl #10]
0c003054: e3a02000  mov r2, #0x0
0c003058: e58d2000  str r2, [sp, #0x0]
0c00305c: e59d2000  ldr r2, [sp, #0x0]
0c003060: e2822001  add r2, r2, #0x1
0c003064: e58d2000  str r2, [sp, #0x0]
0c003068: e3520003  cmp r2, #0x3
0c00306c: bafffffa  blt 0x0c00305c
0c003070: e5912008  ldr r2, [r1, #0x8]
0c003074: e1a03982  mov r3, r2, lsl #19
0c003078: e1a039a3  mov r3, r3, lsr #19
0c00307c: e3a0c301  mov r12, #0x4000000
0c003080: e24cca02  sub r12, r12, #0x2000
0c003084: e591200c  ldr r2, [r1, #0xc]
0c003088: e00c2682  and r2, r12, r2, lsl #13
0c00308c: e1832002  orr r2, r3, r2
0c003090: e3a03000  mov r3, #0x0
0c003094: e58d3000  str r3, [sp, #0x0]
0c003098: e58d3000  str r3, [sp, #0x0]
0c00309c: e59d3000  ldr r3, [sp, #0x0]
0c0030a0: e2833001  add r3, r3, #0x1
0c0030a4: e58d3000  str r3, [sp, #0x0]
0c0030a8: e3530003  cmp r3, #0x3
0c0030ac: bafffffa  blt 0x0c00309c
0c0030b0: e59f3300  ldr r3, [pc, #0x300] =0x00600a0c
0c0030b4: e7832504  str r2, [r3, r4, lsl #10]
0c0030b8: e3a02000  mov r2, #0x0
0c0030bc: e58d2000  str r2, [sp, #0x0]
0c0030c0: e59d2000  ldr r2, [sp, #0x0]
0c0030c4: e2822001  add r2, r2, #0x1
0c0030c8: e58d2000  str r2, [sp, #0x0]
0c0030cc: e3520003  cmp r2, #0x3
0c0030d0: bafffffa  blt 0x0c0030c0
0c0030d4: e28dd004  add sp, sp, #0x4
0c0030d8: e5912010  ldr r2, [r1, #0x10]
0c0030dc: e2023001  and r3, r2, #0x1
0c0030e0: e5912014  ldr r2, [r1, #0x14]
0c0030e4: e0000082  and r0, r0, r2, lsl #1
0c0030e8: e1830000  orr r0, r3, r0
0c0030ec: e3c029ff  bic r2, r0, #0x3fc000
0c0030f0: e3a039ff  mov r3, #0x3fc000
0c0030f4: e5910018  ldr r0, [r1, #0x18]
0c0030f8: e0030700  and r0, r3, r0, lsl #14
0c0030fc: e1820000  orr r0, r2, r0
0c003100: e3a02000  mov r2, #0x0
0c003104: e52d2004  str r2, [sp, #-0x4]!
0c003108: e58d2000  str r2, [sp, #0x0]
0c00310c: e59d2000  ldr r2, [sp, #0x0]
0c003110: e2822001  add r2, r2, #0x1
0c003114: e58d2000  str r2, [sp, #0x0]
0c003118: e3520003  cmp r2, #0x3
0c00311c: bafffffa  blt 0x0c00310c
0c003120: e3a02ea1  mov r2, #0xa10
0c003124: e2822606  add r2, r2, #0x600000
0c003128: e7820504  str r0, [r2, r4, lsl #10]
0c00312c: e3a00000  mov r0, #0x0
0c003130: e58d0000  str r0, [sp, #0x0]
0c003134: e59d0000  ldr r0, [sp, #0x0]
0c003138: e2800001  add r0, r0, #0x1
0c00313c: e58d0000  str r0, [sp, #0x0]
0c003140: e3500003  cmp r0, #0x3
0c003144: bafffffa  blt 0x0c003134
0c003148: e3a00000  mov r0, #0x0
0c00314c: e58d0000  str r0, [sp, #0x0]
0c003150: e58d0000  str r0, [sp, #0x0]
0c003154: e59d0000  ldr r0, [sp, #0x0]
0c003158: e2800001  add r0, r0, #0x1
0c00315c: e58d0000  str r0, [sp, #0x0]
0c003160: e3500003  cmp r0, #0x3
0c003164: bafffffa  blt 0x0c003154
0c003168: e591201c  ldr r2, [r1, #0x1c]
0c00316c: e59f0248  ldr r0, [pc, #0x248] =0x006008c4
0c003170: e7802504  str r2, [r0, r4, lsl #10]
0c003174: e3a00000  mov r0, #0x0
0c003178: e58d0000  str r0, [sp, #0x0]
0c00317c: e59d0000  ldr r0, [sp, #0x0]
0c003180: e2800001  add r0, r0, #0x1
0c003184: e58d0000  str r0, [sp, #0x0]
0c003188: e3500003  cmp r0, #0x3
0c00318c: bafffffa  blt 0x0c00317c
0c003190: e3a00000  mov r0, #0x0
0c003194: e58d0000  str r0, [sp, #0x0]
0c003198: e58d0000  str r0, [sp, #0x0]
0c00319c: e59d0000  ldr r0, [sp, #0x0]
0c0031a0: e2800001  add r0, r0, #0x1
0c0031a4: e58d0000  str r0, [sp, #0x0]
0c0031a8: e3500003  cmp r0, #0x3
0c0031ac: bafffffa  blt 0x0c00319c
0c0031b0: e5912020  ldr r2, [r1, #0x20]
0c0031b4: e59f0204  ldr r0, [pc, #0x204] =0x006008c8
0c0031b8: e7802504  str r2, [r0, r4, lsl #10]
0c0031bc: e3a00000  mov r0, #0x0
0c0031c0: e58d0000  str r0, [sp, #0x0]
0c0031c4: e59d0000  ldr r0, [sp, #0x0]
0c0031c8: e2800001  add r0, r0, #0x1
0c0031cc: e58d0000  str r0, [sp, #0x0]
0c0031d0: e3500003  cmp r0, #0x3
0c0031d4: bafffffa  blt 0x0c0031c4
0c0031d8: e28dd004  add sp, sp, #0x4
0c0031dc: e3a00002  mov r0, #0x2
0c0031e0: e5912024  ldr r2, [r1, #0x24]
0c0031e4: e0000082  and r0, r0, r2, lsl #1
0c0031e8: e3c0000c  bic r0, r0, #0xc
0c0031ec: e3802001  orr r2, r0, #0x1
0c0031f0: e3a0000c  mov r0, #0xc
0c0031f4: e5913028  ldr r3, [r1, #0x28]
0c0031f8: e0000103  and r0, r0, r3, lsl #2
0c0031fc: e1820000  orr r0, r2, r0
0c003200: e3c00a0f  bic r0, r0, #0xf000
0c003204: e3c00efe  bic r0, r0, #0xfe0
0c003208: e3802010  orr r2, r0, #0x10
0c00320c: e3a00801  mov r0, #0x10000
0c003210: e2400020  sub r0, r0, #0x20
0c003214: e591302c  ldr r3, [r1, #0x2c]
0c003218: e0000283  and r0, r0, r3, lsl #5
0c00321c: e1820000  orr r0, r2, r0
0c003220: e3c038ff  bic r3, r0, #0xff0000
0c003224: e3a008ff  mov r0, #0xff0000
0c003228: e5912030  ldr r2, [r1, #0x30]
0c00322c: e0000802  and r0, r0, r2, lsl #16
0c003230: e1830000  orr r0, r3, r0
0c003234: e3c00403  bic r0, r0, #0x3000000
0c003238: e3800401  orr r0, r0, #0x1000000
0c00323c: e3a02000  mov r2, #0x0
0c003240: e52d2004  str r2, [sp, #-0x4]!
0c003244: e58d2000  str r2, [sp, #0x0]
0c003248: e59d2000  ldr r2, [sp, #0x0]
0c00324c: e2822001  add r2, r2, #0x1
0c003250: e58d2000  str r2, [sp, #0x0]
0c003254: e3520003  cmp r2, #0x3
0c003258: bafffffa  blt 0x0c003248
0c00325c: e3a02d23  mov r2, #0x8c0
0c003260: e2822606  add r2, r2, #0x600000
0c003264: e7820504  str r0, [r2, r4, lsl #10]
0c003268: e3a00000  mov r0, #0x0
0c00326c: e58d0000  str r0, [sp, #0x0]
0c003270: e59d0000  ldr r0, [sp, #0x0]
0c003274: e2800001  add r0, r0, #0x1
0c003278: e58d0000  str r0, [sp, #0x0]
0c00327c: e3500003  cmp r0, #0x3
0c003280: bafffffa  blt 0x0c003270
0c003284: e28dd004  add sp, sp, #0x4
0c003288: e3a00a01  mov r0, #0x1000
0c00328c: e2400002  sub r0, r0, #0x2
0c003290: e5912034  ldr r2, [r1, #0x34]
0c003294: e0000082  and r0, r0, r2, lsl #1
0c003298: e3c02a07  bic r2, r0, #0x7000
0c00329c: e3a03a07  mov r3, #0x7000
0c0032a0: e5910038  ldr r0, [r1, #0x38]
0c0032a4: e0030600  and r0, r3, r0, lsl #12
0c0032a8: e1820000  orr r0, r2, r0
0c0032ac: e3c0090e  bic r0, r0, #0x38000
0c0032b0: e5b1203c  ldr r2, [r1, #0x3c]!
0c0032b4: e3a0190e  mov r1, #0x38000
0c0032b8: e0011782  and r1, r1, r2, lsl #15
0c0032bc: e1801001  orr r1, r0, r1
0c0032c0: e59f60fc  ldr r6, [pc, #0xfc] =0x0060090c
0c0032c4: e59f00fc  ldr r0, [pc, #0xfc] =0x00600804
0c0032c8: e3340001  teq r4, #0x1
0c0032cc: 1a00003e  bne 0x0c0033cc
0c0032d0: e3c15001  bic r5, r1, #0x1
0c0032d4: e3a01000  mov r1, #0x0
0c0032d8: e52d1004  str r1, [sp, #-0x4]!
0c0032dc: e58d1000  str r1, [sp, #0x0]
0c0032e0: e59d1000  ldr r1, [sp, #0x0]
0c0032e4: e2811001  add r1, r1, #0x1
0c0032e8: e58d1000  str r1, [sp, #0x0]
0c0032ec: e3510003  cmp r1, #0x3
0c0032f0: bafffffa  blt 0x0c0032e0
0c0032f4: e7865504  str r5, [r6, r4, lsl #10]
0c0032f8: e3a01000  mov r1, #0x0
0c0032fc: e58d1000  str r1, [sp, #0x0]
0c003300: e59d1000  ldr r1, [sp, #0x0]
0c003304: e2811001  add r1, r1, #0x1
0c003308: e58d1000  str r1, [sp, #0x0]
0c00330c: e3510003  cmp r1, #0x3
0c003310: bafffffa  blt 0x0c003300
0c003314: e7901504  ldr r1, [r0, r4, lsl #10]
0c003318: e3c11040  bic r1, r1, #0x40
0c00331c: e3811030  orr r1, r1, #0x30
0c003320: e3a02000  mov r2, #0x0
0c003324: e58d2000  str r2, [sp, #0x0]
0c003328: e58d2000  str r2, [sp, #0x0]
0c00332c: e59d2000  ldr r2, [sp, #0x0]
0c003330: e2822001  add r2, r2, #0x1
0c003334: e58d2000  str r2, [sp, #0x0]
0c003338: e3520003  cmp r2, #0x3
0c00333c: bafffffa  blt 0x0c00332c
0c003340: e7801504  str r1, [r0, r4, lsl #10]
0c003344: e3a00000  mov r0, #0x0
0c003348: e58d0000  str r0, [sp, #0x0]
0c00334c: e59d0000  ldr r0, [sp, #0x0]
0c003350: e2800001  add r0, r0, #0x1
0c003354: e58d0000  str r0, [sp, #0x0]
0c003358: e3500003  cmp r0, #0x3
0c00335c: bafffffa  blt 0x0c00334c
0c003360: e28dd004  add sp, sp, #0x4
0c003364: e3a00032  mov r0, #0x32
0c003368: eb003e67  bl 0x0c012d0c <sleep>
0c00336c: e3850001  orr r0, r5, #0x1
0c003370: e3a01000  mov r1, #0x0
0c003374: e52d1004  str r1, [sp, #-0x4]!
0c003378: e58d1000  str r1, [sp, #0x0]
0c00337c: e59d1000  ldr r1, [sp, #0x0]
0c003380: e2811001  add r1, r1, #0x1
0c003384: e58d1000  str r1, [sp, #0x0]
0c003388: e3510003  cmp r1, #0x3
0c00338c: bafffffa  blt 0x0c00337c
0c003390: e7860504  str r0, [r6, r4, lsl #10]
0c003394: e3a00000  mov r0, #0x0
0c003398: e58d0000  str r0, [sp, #0x0]
0c00339c: e59d0000  ldr r0, [sp, #0x0]
0c0033a0: e2800001  add r0, r0, #0x1
0c0033a4: e58d0000  str r0, [sp, #0x0]
0c0033a8: e3500003  cmp r0, #0x3
0c0033ac: bafffffa  blt 0x0c00339c
0c0033b0: ea000028  b 0x0c003458
0c0033b4: 00600a08  .word 0x00600a08
0c0033b8: 00600a0c  .word 0x00600a0c
0c0033bc: 006008c4  .word 0x006008c4
0c0033c0: 006008c8  .word 0x006008c8
0c0033c4: 0060090c  .word 0x0060090c
0c0033c8: 00600804  .word 0x00600804
0c0033cc: e3c11001  bic r1, r1, #0x1
0c0033d0: e3a02000  mov r2, #0x0
0c0033d4: e52d2004  str r2, [sp, #-0x4]!
0c0033d8: e58d2000  str r2, [sp, #0x0]
0c0033dc: e59d2000  ldr r2, [sp, #0x0]
0c0033e0: e2822001  add r2, r2, #0x1
0c0033e4: e58d2000  str r2, [sp, #0x0]
0c0033e8: e3520003  cmp r2, #0x3
0c0033ec: bafffffa  blt 0x0c0033dc
0c0033f0: e7861504  str r1, [r6, r4, lsl #10]
0c0033f4: e3a01000  mov r1, #0x0
0c0033f8: e58d1000  str r1, [sp, #0x0]
0c0033fc: e59d1000  ldr r1, [sp, #0x0]
0c003400: e2811001  add r1, r1, #0x1
0c003404: e58d1000  str r1, [sp, #0x0]
0c003408: e3510003  cmp r1, #0x3
0c00340c: bafffffa  blt 0x0c0033fc
0c003410: e7901504  ldr r1, [r0, r4, lsl #10]
0c003414: e3c11070  bic r1, r1, #0x70
0c003418: e3a02000  mov r2, #0x0
0c00341c: e58d2000  str r2, [sp, #0x0]
0c003420: e58d2000  str r2, [sp, #0x0]
0c003424: e59d2000  ldr r2, [sp, #0x0]
0c003428: e2822001  add r2, r2, #0x1
0c00342c: e58d2000  str r2, [sp, #0x0]
0c003430: e3520003  cmp r2, #0x3
0c003434: bafffffa  blt 0x0c003424
0c003438: e7801504  str r1, [r0, r4, lsl #10]
0c00343c: e3a00000  mov r0, #0x0
0c003440: e58d0000  str r0, [sp, #0x0]
0c003444: e59d0000  ldr r0, [sp, #0x0]
0c003448: e2800001  add r0, r0, #0x1
0c00344c: e58d0000  str r0, [sp, #0x0]
0c003450: e3500003  cmp r0, #0x3
0c003454: bafffffa  blt 0x0c003444
0c003458: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
DoDGRqstLoadGenlockParams:
0c00345c: e1a0c00d  mov r12, sp
0c003460: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c003464: e24cb004  sub r11, r12, #0x4
0c003468: e1a01000  mov r1, r0
0c00346c: e59f001c  ldr r0, [pc, #0x1c] =0x0c002e9c
0c003470: eb002800  bl 0x0c00d478 <fn_0c00d478>
0c003474: e51f07a4  ldr r0, [pc, #-0x7a4] =0x0403f2fc
0c003478: e5900000  ldr r0, [r0, #0x0]
0c00347c: e3100020  tst r0, #0x20
0c003480: 128f0f03  addne r0, pc, #0xc
0c003484: 191b6800  ldmnedb r11, {r11,sp,lr}
0c003488: 1a003a14  bne 0x0c011ce0 <fn_0c011ce0>
0c00348c: e91ba800  ldmdb r11, {r11,sp,pc}
0c003490: 0c002e9c  .word 0x0c002e9c
0c003494: 446f6e65  .asciz "Done setting genlock params\n"
fn_0c0034b4:
0c0034b4: e1a0c00d  mov r12, sp
0c0034b8: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c0034bc: e24cb004  sub r11, r12, #0x4
0c0034c0: e1a04000  mov r4, r0
0c0034c4: e51f27f4  ldr r2, [pc, #-0x7f4] =0x0403f2fc
0c0034c8: e0822100  add r2, r2, r0, lsl #2
0c0034cc: e2822a03  add r2, r2, #0x3000
0c0034d0: e5922004  ldr r2, [r2, #0x4]
0c0034d4: e592216c  ldr r2, [r2, #0x16c]
0c0034d8: e3120201  tst r2, #0x10000000
0c0034dc: 091ba810  ldmeqdb r11, {r4,r11,sp,pc}
0c0034e0: e51f2a58  ldr r2, [pc, #-0xa58] =0x00600a04
0c0034e4: e7922504  ldr r2, [r2, r4, lsl #10]
0c0034e8: e1a03a02  mov r3, r2, lsl #20
0c0034ec: e1a03a23  mov r3, r3, lsr #20
0c0034f0: e3c33003  bic r3, r3, #0x3
0c0034f4: e3a02000  mov r2, #0x0
0c0034f8: e1520143  cmp r2, r3, asr #2
0c0034fc: b3a02001  movlt r2, #0x1
0c003500: e3320000  teq r2, #0x0
0c003504: 091ba810  ldmeqdb r11, {r4,r11,sp,pc}
0c003508: e5911000  ldr r1, [r1, #0x0]
0c00350c: e3310000  teq r1, #0x0
0c003510: 191ba810  ldmnedb r11, {r4,r11,sp,pc}
0c003514: e3a02000  mov r2, #0x0
0c003518: e3a01000  mov r1, #0x0
0c00351c: ebfffd21  bl 0x0c0029a8 <dgProgramClock>
0c003520: e1a00004  mov r0, r4
0c003524: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c003528: eafffc94  b 0x0c002780 <dgWaitForVocPllInterface>
fn_0c00352c:
0c00352c: e1a0c00d  mov r12, sp
0c003530: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c003534: e24cb004  sub r11, r12, #0x4
0c003538: e1a04000  mov r4, r0
0c00353c: e1a05001  mov r5, r1
0c003540: e3a06000  mov r6, #0x0
0c003544: e51f0874  ldr r0, [pc, #-0x874] =0x0403f2fc
0c003548: e0800104  add r0, r0, r4, lsl #2
0c00354c: e280aa03  add r10, r0, #0x3000
0c003550: e59a0004  ldr r0, [r10, #0x4]
0c003554: e590016c  ldr r0, [r0, #0x16c]
0c003558: e3100201  tst r0, #0x10000000
0c00355c: 091bacf0  ldmeqdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c003560: e51f0ad8  ldr r0, [pc, #-0xad8] =0x00600a04
0c003564: e7900504  ldr r0, [r0, r4, lsl #10]
0c003568: e1a00a00  mov r0, r0, lsl #20
0c00356c: e1a00a20  mov r0, r0, lsr #20
0c003570: e3c00003  bic r0, r0, #0x3
0c003574: e3a01000  mov r1, #0x0
0c003578: e1510140  cmp r1, r0, asr #2
0c00357c: a3a07000  movge r7, #0x0
0c003580: b3a07001  movlt r7, #0x1
0c003584: e5950000  ldr r0, [r5, #0x0]
0c003588: e3300000  teq r0, #0x0
0c00358c: 03340001  teqeq r4, #0x1
0c003590: 1a000013  bne 0x0c0035e4
0c003594: e51f01d8  ldr r0, [pc, #-0x1d8] =0x0060090c
0c003598: e5901400  ldr r1, [r0, #0x400]
0c00359c: e3c16001  bic r6, r1, #0x1
0c0035a0: e3a01000  mov r1, #0x0
0c0035a4: e52d1004  str r1, [sp, #-0x4]!
0c0035a8: e58d1000  str r1, [sp, #0x0]
0c0035ac: e59d1000  ldr r1, [sp, #0x0]
0c0035b0: e2811001  add r1, r1, #0x1
0c0035b4: e58d1000  str r1, [sp, #0x0]
0c0035b8: e3510003  cmp r1, #0x3
0c0035bc: bafffffa  blt 0x0c0035ac
0c0035c0: e7806504  str r6, [r0, r4, lsl #10]
0c0035c4: e3a00000  mov r0, #0x0
0c0035c8: e58d0000  str r0, [sp, #0x0]
0c0035cc: e59d0000  ldr r0, [sp, #0x0]
0c0035d0: e2800001  add r0, r0, #0x1
0c0035d4: e58d0000  str r0, [sp, #0x0]
0c0035d8: e3500003  cmp r0, #0x3
0c0035dc: bafffffa  blt 0x0c0035cc
0c0035e0: e28dd004  add sp, sp, #0x4
0c0035e4: e3370000  teq r7, #0x0
0c0035e8: 15950000  ldrne r0, [r5, #0x0]
0c0035ec: 13300000  teqne r0, #0x0
0c0035f0: 03a01000  moveq r1, #0x0
0c0035f4: 13a01001  movne r1, #0x1
0c0035f8: e1a00004  mov r0, r4
0c0035fc: e3a02000  mov r2, #0x0
0c003600: ebfffd0f  bl 0x0c002a44 <fn_0c002a44>
0c003604: e3370000  teq r7, #0x0
0c003608: 15950000  ldrne r0, [r5, #0x0]
0c00360c: 13300000  teqne r0, #0x0
0c003610: 0a000003  beq 0x0c003624
0c003614: e1a00004  mov r0, r4
0c003618: e3a02000  mov r2, #0x0
0c00361c: e3a01001  mov r1, #0x1
0c003620: ebfffce0  bl 0x0c0029a8 <dgProgramClock>
0c003624: e51f06d0  ldr r0, [pc, #-0x6d0] =0x00600818
0c003628: e7901504  ldr r1, [r0, r4, lsl #10]
0c00362c: e3c11c1e  bic r1, r1, #0x1e00
0c003630: e5952000  ldr r2, [r5, #0x0]
0c003634: e3520000  cmp r2, #0x0
0c003638: e5ba2004  ldr r2, [r10, #0x4]!
0c00363c: 05922090  ldreq r2, [r2, #0x90]
0c003640: 15922094  ldrne r2, [r2, #0x94]
0c003644: e3a03c1e  mov r3, #0x1e00
0c003648: e0032482  and r2, r3, r2, lsl #9
0c00364c: e1811002  orr r1, r1, r2
0c003650: 0a000007  beq 0x0c003674
0c003654: e3c11006  bic r1, r1, #0x6
0c003658: e3370000  teq r7, #0x0
0c00365c: 03a02003  moveq r2, #0x3
0c003660: 13a02000  movne r2, #0x0
0c003664: e3a03006  mov r3, #0x6
0c003668: e0032082  and r2, r3, r2, lsl #1
0c00366c: e1811002  orr r1, r1, r2
0c003670: ea000002  b 0x0c003680
0c003674: e3340001  teq r4, #0x1
0c003678: 13811006  orrne r1, r1, #0x6
0c00367c: 03c11006  biceq r1, r1, #0x6
0c003680: e3a02000  mov r2, #0x0
0c003684: e52d2004  str r2, [sp, #-0x4]!
0c003688: e58d2000  str r2, [sp, #0x0]
0c00368c: e59d2000  ldr r2, [sp, #0x0]
0c003690: e2822001  add r2, r2, #0x1
0c003694: e58d2000  str r2, [sp, #0x0]
0c003698: e3520003  cmp r2, #0x3
0c00369c: bafffffa  blt 0x0c00368c
0c0036a0: e7801504  str r1, [r0, r4, lsl #10]
0c0036a4: e3a00000  mov r0, #0x0
0c0036a8: e58d0000  str r0, [sp, #0x0]
0c0036ac: e59d0000  ldr r0, [sp, #0x0]
0c0036b0: e2800001  add r0, r0, #0x1
0c0036b4: e58d0000  str r0, [sp, #0x0]
0c0036b8: e3500003  cmp r0, #0x3
0c0036bc: bafffffa  blt 0x0c0036ac
0c0036c0: e28dd004  add sp, sp, #0x4
0c0036c4: e3a00d23  mov r0, #0x8c0
0c0036c8: e2800606  add r0, r0, #0x600000
0c0036cc: e7901504  ldr r1, [r0, r4, lsl #10]
0c0036d0: e3c11010  bic r1, r1, #0x10
0c0036d4: e3811001  orr r1, r1, #0x1
0c0036d8: e5952000  ldr r2, [r5, #0x0]
0c0036dc: e3320000  teq r2, #0x0
0c0036e0: 03a02001  moveq r2, #0x1
0c0036e4: 13a02000  movne r2, #0x0
0c0036e8: e3a03010  mov r3, #0x10
0c0036ec: e0032202  and r2, r3, r2, lsl #4
0c0036f0: e1811002  orr r1, r1, r2
0c0036f4: e3a02000  mov r2, #0x0
0c0036f8: e52d2004  str r2, [sp, #-0x4]!
0c0036fc: e58d2000  str r2, [sp, #0x0]
0c003700: e59d2000  ldr r2, [sp, #0x0]
0c003704: e2822001  add r2, r2, #0x1
0c003708: e58d2000  str r2, [sp, #0x0]
0c00370c: e3520003  cmp r2, #0x3
0c003710: bafffffa  blt 0x0c003700
0c003714: e7801504  str r1, [r0, r4, lsl #10]
0c003718: e3a00000  mov r0, #0x0
0c00371c: e58d0000  str r0, [sp, #0x0]
0c003720: e59d0000  ldr r0, [sp, #0x0]
0c003724: e2800001  add r0, r0, #0x1
0c003728: e58d0000  str r0, [sp, #0x0]
0c00372c: e3500003  cmp r0, #0x3
0c003730: bafffffa  blt 0x0c003720
0c003734: e28dd004  add sp, sp, #0x4
0c003738: e5950000  ldr r0, [r5, #0x0]
0c00373c: e3300000  teq r0, #0x0
0c003740: 03340001  teqeq r4, #0x1
0c003744: 191bacf0  ldmnedb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c003748: e3a00032  mov r0, #0x32
0c00374c: eb003d6e  bl 0x0c012d0c <sleep>
0c003750: e3860001  orr r0, r6, #0x1
0c003754: e3a01000  mov r1, #0x0
0c003758: e52d1004  str r1, [sp, #-0x4]!
0c00375c: e58d1000  str r1, [sp, #0x0]
0c003760: e59d1000  ldr r1, [sp, #0x0]
0c003764: e2811001  add r1, r1, #0x1
0c003768: e58d1000  str r1, [sp, #0x0]
0c00376c: e3510003  cmp r1, #0x3
0c003770: bafffffa  blt 0x0c003760
0c003774: e51f13b8  ldr r1, [pc, #-0x3b8] =0x0060090c
0c003778: e7810504  str r0, [r1, r4, lsl #10]
0c00377c: e3a00000  mov r0, #0x0
0c003780: e58d0000  str r0, [sp, #0x0]
0c003784: e59d0000  ldr r0, [sp, #0x0]
0c003788: e2800001  add r0, r0, #0x1
0c00378c: e58d0000  str r0, [sp, #0x0]
0c003790: e3500003  cmp r0, #0x3
0c003794: bafffffa  blt 0x0c003784
0c003798: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00379c: e51f1acc  ldr r1, [pc, #-0xacc] =0x0403f2fc
0c0037a0: e0811100  add r1, r1, r0, lsl #2
0c0037a4: e2811a03  add r1, r1, #0x3000
0c0037a8: e5911004  ldr r1, [r1, #0x4]
0c0037ac: e591116c  ldr r1, [r1, #0x16c]
0c0037b0: e3110302  tst r1, #0x8000000
0c0037b4: 01a0f00e  moveq pc, lr
0c0037b8: e51f13f8  ldr r1, [pc, #-0x3f8] =0x00600804
0c0037bc: e7912500  ldr r2, [r1, r0, lsl #10]
0c0037c0: e3c22003  bic r2, r2, #0x3
0c0037c4: e3a03000  mov r3, #0x0
0c0037c8: e52d3004  str r3, [sp, #-0x4]!
0c0037cc: e58d3000  str r3, [sp, #0x0]
0c0037d0: e59d3000  ldr r3, [sp, #0x0]
0c0037d4: e2833001  add r3, r3, #0x1
0c0037d8: e58d3000  str r3, [sp, #0x0]
0c0037dc: e3530003  cmp r3, #0x3
0c0037e0: bafffffa  blt 0x0c0037d0
0c0037e4: e7812500  str r2, [r1, r0, lsl #10]
0c0037e8: e3a01000  mov r1, #0x0
0c0037ec: e58d1000  str r1, [sp, #0x0]
0c0037f0: e59d1000  ldr r1, [sp, #0x0]
0c0037f4: e2811001  add r1, r1, #0x1
0c0037f8: e58d1000  str r1, [sp, #0x0]
0c0037fc: e3510003  cmp r1, #0x3
0c003800: bafffffa  blt 0x0c0037f0
0c003804: e3a02e91  mov r2, #0x910
0c003808: e2822606  add r2, r2, #0x600000
0c00380c: e7921500  ldr r1, [r2, r0, lsl #10]
0c003810: e3c11001  bic r1, r1, #0x1
0c003814: e3a03000  mov r3, #0x0
0c003818: e58d3000  str r3, [sp, #0x0]
0c00381c: e58d3000  str r3, [sp, #0x0]
0c003820: e59d3000  ldr r3, [sp, #0x0]
0c003824: e2833001  add r3, r3, #0x1
0c003828: e58d3000  str r3, [sp, #0x0]
0c00382c: e3530003  cmp r3, #0x3
0c003830: bafffffa  blt 0x0c003820
0c003834: e7821500  str r1, [r2, r0, lsl #10]
0c003838: e3a00000  mov r0, #0x0
0c00383c: e58d0000  str r0, [sp, #0x0]
0c003840: e59d0000  ldr r0, [sp, #0x0]
0c003844: e2800001  add r0, r0, #0x1
0c003848: e58d0000  str r0, [sp, #0x0]
0c00384c: e3500003  cmp r0, #0x3
0c003850: bafffffa  blt 0x0c003840
0c003854: e28dd004  add sp, sp, #0x4
0c003858: e1a0f00e  mov pc, lr
0c00385c: e51f1b8c  ldr r1, [pc, #-0xb8c] =0x0403f2fc
0c003860: e0811100  add r1, r1, r0, lsl #2
0c003864: e2811a03  add r1, r1, #0x3000
0c003868: e5911004  ldr r1, [r1, #0x4]
0c00386c: e591116c  ldr r1, [r1, #0x16c]
0c003870: e3110302  tst r1, #0x8000000
0c003874: 01a0f00e  moveq pc, lr
0c003878: e3a01000  mov r1, #0x0
0c00387c: e52d1004  str r1, [sp, #-0x4]!
0c003880: e58d1000  str r1, [sp, #0x0]
0c003884: e59d1000  ldr r1, [sp, #0x0]
0c003888: e2811001  add r1, r1, #0x1
0c00388c: e58d1000  str r1, [sp, #0x0]
0c003890: e3510003  cmp r1, #0x3
0c003894: bafffffa  blt 0x0c003884
0c003898: e3a01000  mov r1, #0x0
0c00389c: e59f2104  ldr r2, [pc, #0x104] =0x00600808
0c0038a0: e7821500  str r1, [r2, r0, lsl #10]
0c0038a4: e58d1000  str r1, [sp, #0x0]
0c0038a8: e59d1000  ldr r1, [sp, #0x0]
0c0038ac: e2811001  add r1, r1, #0x1
0c0038b0: e58d1000  str r1, [sp, #0x0]
0c0038b4: e3510003  cmp r1, #0x3
0c0038b8: bafffffa  blt 0x0c0038a8
0c0038bc: e51f14fc  ldr r1, [pc, #-0x4fc] =0x00600804
0c0038c0: e7913500  ldr r3, [r1, r0, lsl #10]
0c0038c4: e3c33003  bic r3, r3, #0x3
0c0038c8: e3833001  orr r3, r3, #0x1
0c0038cc: e3a0c000  mov r12, #0x0
0c0038d0: e58dc000  str r12, [sp, #0x0]
0c0038d4: e58dc000  str r12, [sp, #0x0]
0c0038d8: e59dc000  ldr r12, [sp, #0x0]
0c0038dc: e28cc001  add r12, r12, #0x1
0c0038e0: e58dc000  str r12, [sp, #0x0]
0c0038e4: e35c0003  cmp r12, #0x3
0c0038e8: bafffffa  blt 0x0c0038d8
0c0038ec: e7813500  str r3, [r1, r0, lsl #10]
0c0038f0: e3a01000  mov r1, #0x0
0c0038f4: e58d1000  str r1, [sp, #0x0]
0c0038f8: e59d1000  ldr r1, [sp, #0x0]
0c0038fc: e2811001  add r1, r1, #0x1
0c003900: e58d1000  str r1, [sp, #0x0]
0c003904: e3510003  cmp r1, #0x3
0c003908: bafffffa  blt 0x0c0038f8
0c00390c: e3a01e91  mov r1, #0x910
0c003910: e2811606  add r1, r1, #0x600000
0c003914: e7913500  ldr r3, [r1, r0, lsl #10]
0c003918: e3833001  orr r3, r3, #0x1
0c00391c: e3a0c000  mov r12, #0x0
0c003920: e58dc000  str r12, [sp, #0x0]
0c003924: e58dc000  str r12, [sp, #0x0]
0c003928: e59dc000  ldr r12, [sp, #0x0]
0c00392c: e28cc001  add r12, r12, #0x1
0c003930: e58dc000  str r12, [sp, #0x0]
0c003934: e35c0003  cmp r12, #0x3
0c003938: bafffffa  blt 0x0c003928
0c00393c: e7813500  str r3, [r1, r0, lsl #10]
0c003940: e3a01000  mov r1, #0x0
0c003944: e58d1000  str r1, [sp, #0x0]
0c003948: e59d1000  ldr r1, [sp, #0x0]
0c00394c: e2811001  add r1, r1, #0x1
0c003950: e58d1000  str r1, [sp, #0x0]
0c003954: e3510003  cmp r1, #0x3
0c003958: bafffffa  blt 0x0c003948
0c00395c: e3a01000  mov r1, #0x0
0c003960: e58d1000  str r1, [sp, #0x0]
0c003964: e58d1000  str r1, [sp, #0x0]
0c003968: e59d1000  ldr r1, [sp, #0x0]
0c00396c: e2811001  add r1, r1, #0x1
0c003970: e58d1000  str r1, [sp, #0x0]
0c003974: e3510003  cmp r1, #0x3
0c003978: bafffffa  blt 0x0c003968
0c00397c: e3a01001  mov r1, #0x1
0c003980: e7821500  str r1, [r2, r0, lsl #10]
0c003984: e3a00000  mov r0, #0x0
0c003988: e58d0000  str r0, [sp, #0x0]
0c00398c: e59d0000  ldr r0, [sp, #0x0]
0c003990: e2800001  add r0, r0, #0x1
0c003994: e58d0000  str r0, [sp, #0x0]
0c003998: e3500003  cmp r0, #0x3
0c00399c: bafffffa  blt 0x0c00398c
0c0039a0: e28dd004  add sp, sp, #0x4
0c0039a4: e1a0f00e  mov pc, lr
0c0039a8: 00600808  .word 0x00600808
DoDGRqstEnableGenlock:
0c0039ac: e1a0c00d  mov r12, sp
0c0039b0: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c0039b4: e24cb004  sub r11, r12, #0x4
0c0039b8: e1a04000  mov r4, r0
0c0039bc: e3a00001  mov r0, #0x1
0c0039c0: e52d0004  str r0, [sp, #-0x4]!
0c0039c4: e1a0000d  mov r0, sp
0c0039c8: eb0007da  bl 0x0c005938 <DoDGRqstTempBlankAllChannels>
0c0039cc: e59f00b8  ldr r0, [pc, #0xb8] =0x0c00379c
0c0039d0: e3a01000  mov r1, #0x0
0c0039d4: eb0026a7  bl 0x0c00d478 <fn_0c00d478>
0c0039d8: e3a00d09  mov r0, #0x240
0c0039dc: e280093d  add r0, r0, #0xf4000
0c0039e0: eb003cc9  bl 0x0c012d0c <sleep>
0c0039e4: e5940000  ldr r0, [r4, #0x0]
0c0039e8: e3300000  teq r0, #0x0
0c0039ec: 1a000004  bne 0x0c003a04
0c0039f0: e1a01004  mov r1, r4
0c0039f4: e59f0094  ldr r0, [pc, #0x94] =0x0c0034b4 <fn_0c0034b4>
0c0039f8: eb00269e  bl 0x0c00d478 <fn_0c00d478>
0c0039fc: e51f0ea0  ldr r0, [pc, #-0xea0] =0x001312d0
0c003a00: eb003cc1  bl 0x0c012d0c <sleep>
0c003a04: e1a01004  mov r1, r4
0c003a08: e59f0084  ldr r0, [pc, #0x84] =0x0c00352c <fn_0c00352c>
0c003a0c: eb002699  bl 0x0c00d478 <fn_0c00d478>
0c003a10: e5941000  ldr r1, [r4, #0x0]
0c003a14: e51f5d44  ldr r5, [pc, #-0xd44] =0x0403f2fc
0c003a18: e2850038  add r0, r5, #0x38
0c003a1c: e2800b0d  add r0, r0, #0x3400
0c003a20: e5902000  ldr r2, [r0, #0x0]
0c003a24: e3c22102  bic r2, r2, #0x80000000
0c003a28: e2011001  and r1, r1, #0x1
0c003a2c: e1821f81  orr r1, r2, r1, lsl #31
0c003a30: e5801000  str r1, [r0, #0x0]
0c003a34: e59f005c  ldr r0, [pc, #0x5c] =0x017d7840
0c003a38: eb003cb3  bl 0x0c012d0c <sleep>
0c003a3c: e59f0058  ldr r0, [pc, #0x58] =0x0c00385c
0c003a40: e3a01000  mov r1, #0x0
0c003a44: eb00268b  bl 0x0c00d478 <fn_0c00d478>
0c003a48: e3a00d09  mov r0, #0x240
0c003a4c: e280093d  add r0, r0, #0xf4000
0c003a50: eb003cad  bl 0x0c012d0c <sleep>
0c003a54: e3a00000  mov r0, #0x0
0c003a58: e58d0000  str r0, [sp, #0x0]
0c003a5c: e1a0000d  mov r0, sp
0c003a60: eb0007b4  bl 0x0c005938 <DoDGRqstTempBlankAllChannels>
0c003a64: e5950000  ldr r0, [r5, #0x0]
0c003a68: e3100020  tst r0, #0x20
0c003a6c: 0a000005  beq 0x0c003a88
0c003a70: e5940000  ldr r0, [r4, #0x0]
0c003a74: e3300000  teq r0, #0x0
0c003a78: 028f1f08  addeq r1, pc, #0x20
0c003a7c: 128f1f08  addne r1, pc, #0x20
0c003a80: e28f0f08  add r0, pc, #0x20
0c003a84: eb003895  bl 0x0c011ce0 <fn_0c011ce0>
0c003a88: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c003a8c: 0c00379c  .word 0x0c00379c
0c003a90: 0c0034b4  .word 0x0c0034b4 <fn_0c0034b4>
0c003a94: 0c00352c  .word 0x0c00352c <fn_0c00352c>
0c003a98: 017d7840  .word 0x017d7840
0c003a9c: 0c00385c  .word 0x0c00385c
0c003aa0: 64697300  .asciz "dis"
0c003aa4: 656e0000  strvsb r0, [lr, #-0x0]!
0c003aa8: 446f6e65  .asciz "Done %sabling genlock\n"
fn_0c003ac0:
0c003ac0: e1a0c00d  mov r12, sp
0c003ac4: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c003ac8: e24cb004  sub r11, r12, #0x4
0c003acc: e1a04000  mov r4, r0
0c003ad0: e24dd004  sub sp, sp, #0x4
0c003ad4: e1a01000  mov r1, r0
0c003ad8: e28f0f58  add r0, pc, #0x160
0c003adc: eb00387f  bl 0x0c011ce0 <fn_0c011ce0>
0c003ae0: e3a00000  mov r0, #0x0
0c003ae4: e52d0004  str r0, [sp, #-0x4]!
0c003ae8: e58d0000  str r0, [sp, #0x0]
0c003aec: e59d0000  ldr r0, [sp, #0x0]
0c003af0: e2800001  add r0, r0, #0x1
0c003af4: e58d0000  str r0, [sp, #0x0]
0c003af8: e3500003  cmp r0, #0x3
0c003afc: bafffffa  blt 0x0c003aec
0c003b00: e3a01000  mov r1, #0x0
0c003b04: e51f0164  ldr r0, [pc, #-0x164] =0x00600808
0c003b08: e7801504  str r1, [r0, r4, lsl #10]
0c003b0c: e3a00000  mov r0, #0x0
0c003b10: e58d0000  str r0, [sp, #0x0]
0c003b14: e59d0000  ldr r0, [sp, #0x0]
0c003b18: e2800001  add r0, r0, #0x1
0c003b1c: e58d0000  str r0, [sp, #0x0]
0c003b20: e3500003  cmp r0, #0x3
0c003b24: bafffffa  blt 0x0c003b14
0c003b28: e51f1768  ldr r1, [pc, #-0x768] =0x00600804
0c003b2c: e7910504  ldr r0, [r1, r4, lsl #10]
0c003b30: e3800003  orr r0, r0, #0x3
0c003b34: e3a02000  mov r2, #0x0
0c003b38: e58d2000  str r2, [sp, #0x0]
0c003b3c: e58d2000  str r2, [sp, #0x0]
0c003b40: e59d2000  ldr r2, [sp, #0x0]
0c003b44: e2822001  add r2, r2, #0x1
0c003b48: e58d2000  str r2, [sp, #0x0]
0c003b4c: e3520003  cmp r2, #0x3
0c003b50: bafffffa  blt 0x0c003b40
0c003b54: e7810504  str r0, [r1, r4, lsl #10]
0c003b58: e3a02000  mov r2, #0x0
0c003b5c: e58d2000  str r2, [sp, #0x0]
0c003b60: e59d2000  ldr r2, [sp, #0x0]
0c003b64: e2822001  add r2, r2, #0x1
0c003b68: e58d2000  str r2, [sp, #0x0]
0c003b6c: e3520003  cmp r2, #0x3
0c003b70: bafffffa  blt 0x0c003b60
0c003b74: e28dd004  add sp, sp, #0x4
0c003b78: e7912504  ldr r2, [r1, r4, lsl #10]
0c003b7c: e1320000  teq r2, r0
0c003b80: 1a000041  bne 0x0c003c8c
0c003b84: e3c00003  bic r0, r0, #0x3
0c003b88: e3a02000  mov r2, #0x0
0c003b8c: e52d2004  str r2, [sp, #-0x4]!
0c003b90: e58d2000  str r2, [sp, #0x0]
0c003b94: e59d2000  ldr r2, [sp, #0x0]
0c003b98: e2822001  add r2, r2, #0x1
0c003b9c: e58d2000  str r2, [sp, #0x0]
0c003ba0: e3520003  cmp r2, #0x3
0c003ba4: bafffffa  blt 0x0c003b94
0c003ba8: e7810504  str r0, [r1, r4, lsl #10]
0c003bac: e3a02000  mov r2, #0x0
0c003bb0: e58d2000  str r2, [sp, #0x0]
0c003bb4: e59d2000  ldr r2, [sp, #0x0]
0c003bb8: e2822001  add r2, r2, #0x1
0c003bbc: e58d2000  str r2, [sp, #0x0]
0c003bc0: e3520003  cmp r2, #0x3
0c003bc4: bafffffa  blt 0x0c003bb4
0c003bc8: e28dd004  add sp, sp, #0x4
0c003bcc: e7911504  ldr r1, [r1, r4, lsl #10]
0c003bd0: e1310000  teq r1, r0
0c003bd4: 1a00002c  bne 0x0c003c8c
0c003bd8: e51f0c84  ldr r0, [pc, #-0xc84] =0x00600818
0c003bdc: e7900504  ldr r0, [r0, r4, lsl #10]
0c003be0: e3100001  tst r0, #0x1
0c003be4: 0a000028  beq 0x0c003c8c
0c003be8: e51f0f18  ldr r0, [pc, #-0xf18] =0x0403f2fc
0c003bec: e0800104  add r0, r0, r4, lsl #2
0c003bf0: e2800a03  add r0, r0, #0x3000
0c003bf4: e5900004  ldr r0, [r0, #0x4]
0c003bf8: e5b0116c  ldr r1, [r0, #0x16c]!
0c003bfc: e3811201  orr r1, r1, #0x10000000
0c003c00: e5801000  str r1, [r0, #0x0]
0c003c04: e59f0058  ldr r0, [pc, #0x58] =0x00600a04
0c003c08: e7900504  ldr r0, [r0, r4, lsl #10]
0c003c0c: e59f1054  ldr r1, [pc, #0x54] =0x0406f70c
0c003c10: e5912000  ldr r2, [r1, #0x0]
0c003c14: e3320000  teq r2, #0x0
0c003c18: 1a000004  bne 0x0c003c30
0c003c1c: e59f2048  ldr r2, [pc, #0x48] =0x04018ef4
0c003c20: e5911048  ldr r1, [r1, #0x48]
0c003c24: e7921101  ldr r1, [r2, r1, lsl #2]
0c003c28: e3510002  cmp r1, #0x2
0c003c2c: ba00000f  blt 0x0c003c70
0c003c30: e2000001  and r0, r0, #0x1
0c003c34: e3300001  teq r0, #0x1
0c003c38: 1a000013  bne 0x0c003c8c
0c003c3c: ea00000d  b 0x0c003c78
0c003c40: 63686563  .asciz "checking for genlock on channel %d\n"
0c003c64: 00600a04  .word 0x00600a04
0c003c68: 0406f70c  .word 0x0406f70c
0c003c6c: 04018ef4  .word 0x04018ef4
0c003c70: e3100001  tst r0, #0x1
0c003c74: 1a000004  bne 0x0c003c8c
0c003c78: e3a00d23  mov r0, #0x8c0
0c003c7c: e2800606  add r0, r0, #0x600000
0c003c80: e7900504  ldr r0, [r0, r4, lsl #10]
0c003c84: e3100001  tst r0, #0x1
0c003c88: 1a000000  bne 0x0c003c90
0c003c8c: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c003c90: e1a01004  mov r1, r4
0c003c94: e28f0f1f  add r0, pc, #0x7c
0c003c98: eb003810  bl 0x0c011ce0 <fn_0c011ce0>
0c003c9c: e3a00e91  mov r0, #0x910
0c003ca0: e2800606  add r0, r0, #0x600000
0c003ca4: e7901504  ldr r1, [r0, r4, lsl #10]
0c003ca8: e3c11001  bic r1, r1, #0x1
0c003cac: e3a02000  mov r2, #0x0
0c003cb0: e52d2004  str r2, [sp, #-0x4]!
0c003cb4: e58d2000  str r2, [sp, #0x0]
0c003cb8: e59d2000  ldr r2, [sp, #0x0]
0c003cbc: e2822001  add r2, r2, #0x1
0c003cc0: e58d2000  str r2, [sp, #0x0]
0c003cc4: e3520003  cmp r2, #0x3
0c003cc8: bafffffa  blt 0x0c003cb8
0c003ccc: e7801504  str r1, [r0, r4, lsl #10]
0c003cd0: e3a00000  mov r0, #0x0
0c003cd4: e58d0000  str r0, [sp, #0x0]
0c003cd8: e59d0000  ldr r0, [sp, #0x0]
0c003cdc: e2800001  add r0, r0, #0x1
0c003ce0: e58d0000  str r0, [sp, #0x0]
0c003ce4: e3500003  cmp r0, #0x3
0c003ce8: bafffffa  blt 0x0c003cd8
0c003cec: e3a00000  mov r0, #0x0
0c003cf0: e5ad0004  str r0, [sp, #0x4]!
0c003cf4: e1a0100d  mov r1, sp
0c003cf8: e1a00004  mov r0, r4
0c003cfc: ebfffdec  bl 0x0c0034b4 <fn_0c0034b4>
0c003d00: e59f0030  ldr r0, [pc, #0x30] =0x001312d0
0c003d04: eb003c00  bl 0x0c012d0c <sleep>
0c003d08: e1a0100d  mov r1, sp
0c003d0c: e1a00004  mov r0, r4
0c003d10: ebfffe05  bl 0x0c00352c <fn_0c00352c>
0c003d14: eaffffdc  b 0x0c003c8c
0c003d18: 64657465  .asciz "detected genlocked channel %d\n"
0c003d38: 001312d0  .word 0x001312d0
0c003d3c: e1a0c00d  mov r12, sp
0c003d40: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c003d44: e24cb004  sub r11, r12, #0x4
0c003d48: e3a04000  mov r4, #0x0
0c003d4c: e1a00004  mov r0, r4
0c003d50: ebffff5a  bl 0x0c003ac0 <fn_0c003ac0>
0c003d54: e2844001  add r4, r4, #0x1
0c003d58: e3540007  cmp r4, #0x7
0c003d5c: dafffffa  ble 0x0c003d4c
0c003d60: e3a0401e  mov r4, #0x1e
0c003d64: e1a00004  mov r0, r4
0c003d68: ebffff54  bl 0x0c003ac0 <fn_0c003ac0>
0c003d6c: e2844001  add r4, r4, #0x1
0c003d70: e35400fd  cmp r4, #0xfd
0c003d74: dafffffa  ble 0x0c003d64
0c003d78: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c003d7c: e1a0c00d  mov r12, sp
0c003d80: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c003d84: e24cb004  sub r11, r12, #0x4
0c003d88: e1a04001  mov r4, r1
0c003d8c: e3300001  teq r0, #0x1
0c003d90: 091ba830  ldmeqdb r11, {r4,r5,r11,sp,pc}
0c003d94: e3a01b02  mov r1, #0x800
0c003d98: e2811606  add r1, r1, #0x600000
0c003d9c: e7915500  ldr r5, [r1, r0, lsl #10]
0c003da0: e59f1028  ldr r1, [pc, #0x28] =0x0403f2fc
0c003da4: e5911000  ldr r1, [r1, #0x0]
0c003da8: e3110b02  tst r1, #0x800
0c003dac: 0a000003  beq 0x0c003dc0
0c003db0: e1a02005  mov r2, r5
0c003db4: e1a01000  mov r1, r0
0c003db8: e28f0f05  add r0, pc, #0x14
0c003dbc: eb0037c7  bl 0x0c011ce0 <fn_0c011ce0>
0c003dc0: e5940000  ldr r0, [r4, #0x0]
0c003dc4: e1800005  orr r0, r0, r5
0c003dc8: e5840000  str r0, [r4, #0x0]
0c003dcc: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c003dd0: 0403f2fc  .word 0x0403f2fc
0c003dd4: 564f4325  .asciz "VOC%02d STATUS=0x%08x\n"
fn_0c003dec:
0c003dec: e1a0c00d  mov r12, sp
0c003df0: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c003df4: e24cb004  sub r11, r12, #0x4
0c003df8: e1a04000  mov r4, r0
0c003dfc: e3a00606  mov r0, #0x600000
0c003e00: e5901240  ldr r1, [r0, #0x240]
0c003e04: e5841000  str r1, [r4, #0x0]
0c003e08: e5900c00  ldr r0, [r0, #0xc00]
0c003e0c: e5840004  str r0, [r4, #0x4]
0c003e10: e3a00000  mov r0, #0x0
0c003e14: e5840008  str r0, [r4, #0x8]
0c003e18: e2841008  add r1, r4, #0x8
0c003e1c: e59f0020  ldr r0, [pc, #0x20] =0x0c003d7c
0c003e20: eb002594  bl 0x0c00d478 <fn_0c00d478>
0c003e24: e51f005c  ldr r0, [pc, #-0x5c] =0x0403f2fc
0c003e28: e5900000  ldr r0, [r0, #0x0]
0c003e2c: e3100b02  tst r0, #0x800
0c003e30: 091ba810  ldmeqdb r11, {r4,r11,sp,pc}
0c003e34: e894000e  ldmia r4, {r1,r2,r3}
0c003e38: e28f0f02  add r0, pc, #0x8
0c003e3c: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c003e40: ea0037a6  b 0x0c011ce0 <fn_0c011ce0>
0c003e44: 0c003d7c  .word 0x0c003d7c
0c003e48: 696e7465  .asciz "interrupt DG4_STATUS=0x%08x STATUS=0x%08x other STATUS=0x%08x\n"
DoDGRqstGetDGInterruptState:
0c003e88: e1a0c00d  mov r12, sp
0c003e8c: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c003e90: e24cb004  sub r11, r12, #0x4
0c003e94: e24dd00c  sub sp, sp, #0xc
0c003e98: e1a0000d  mov r0, sp
0c003e9c: ebffffd2  bl 0x0c003dec <fn_0c003dec>
0c003ea0: e1a0100d  mov r1, sp
0c003ea4: e3a0200c  mov r2, #0xc
0c003ea8: e3a00011  mov r0, #0x11
0c003eac: eb00038b  bl 0x0c004ce0 <fn_0c004ce0>
0c003eb0: e3a00000  mov r0, #0x0
0c003eb4: e52d0004  str r0, [sp, #-0x4]!
0c003eb8: e58d0000  str r0, [sp, #0x0]
0c003ebc: e59d0000  ldr r0, [sp, #0x0]
0c003ec0: e2800001  add r0, r0, #0x1
0c003ec4: e58d0000  str r0, [sp, #0x0]
0c003ec8: e3500003  cmp r0, #0x3
0c003ecc: bafffffa  blt 0x0c003ebc
0c003ed0: e3a00000  mov r0, #0x0
0c003ed4: e3a01606  mov r1, #0x600000
0c003ed8: e5a1023c  str r0, [r1, #0x23c]!
0c003edc: e58d0000  str r0, [sp, #0x0]
0c003ee0: e59d0000  ldr r0, [sp, #0x0]
0c003ee4: e2800001  add r0, r0, #0x1
0c003ee8: e58d0000  str r0, [sp, #0x0]
0c003eec: e3500003  cmp r0, #0x3
0c003ef0: bafffffa  blt 0x0c003ee0
0c003ef4: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstChannelResetRatios:
0c003ef8: e5903004  ldr r3, [r0, #0x4]
0c003efc: e51f1134  ldr r1, [pc, #-0x134] =0x0403f2fc
0c003f00: e5902000  ldr r2, [r0, #0x0]
0c003f04: e0812102  add r2, r1, r2, lsl #2
0c003f08: e2822a03  add r2, r2, #0x3000
0c003f0c: e5922004  ldr r2, [r2, #0x4]
0c003f10: e5a23090  str r3, [r2, #0x90]!
0c003f14: e5902000  ldr r2, [r0, #0x0]
0c003f18: e0812102  add r2, r1, r2, lsl #2
0c003f1c: e2822a03  add r2, r2, #0x3000
0c003f20: e5903008  ldr r3, [r0, #0x8]
0c003f24: e5922004  ldr r2, [r2, #0x4]
0c003f28: e5a23094  str r3, [r2, #0x94]!
0c003f2c: e5911000  ldr r1, [r1, #0x0]
0c003f30: e3110b01  tst r1, #0x400
0c003f34: 01a0f00e  moveq pc, lr
0c003f38: e890000e  ldmia r0, {r1,r2,r3}
0c003f3c: e28f0f00  add r0, pc, #0x0
0c003f40: ea003766  b 0x0c011ce0 <fn_0c011ce0>
0c003f44: 6368616e  .asciz "channel %d reset ratios set to %d internal, %d external\n"
DoDGRqstResetRMBoards:
0c003f80: e1a0c00d  mov r12, sp
0c003f84: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c003f88: e24cb004  sub r11, r12, #0x4
0c003f8c: e24dd004  sub sp, sp, #0x4
0c003f90: e28f0f57  add r0, pc, #0x15c
0c003f94: eb003751  bl 0x0c011ce0 <fn_0c011ce0>
0c003f98: e3a00001  mov r0, #0x1
0c003f9c: e58d0000  str r0, [sp, #0x0]
0c003fa0: e1a0000d  mov r0, sp
0c003fa4: eb000663  bl 0x0c005938 <DoDGRqstTempBlankAllChannels>
0c003fa8: e51f0524  ldr r0, [pc, #-0x524] =0x0c00379c
0c003fac: e3a01000  mov r1, #0x0
0c003fb0: eb002530  bl 0x0c00d478 <fn_0c00d478>
0c003fb4: e3a01606  mov r1, #0x600000
0c003fb8: e5910c04  ldr r0, [r1, #0xc04]
0c003fbc: e3c00003  bic r0, r0, #0x3
0c003fc0: e3a02000  mov r2, #0x0
0c003fc4: e52d2004  str r2, [sp, #-0x4]!
0c003fc8: e58d2000  str r2, [sp, #0x0]
0c003fcc: e59d2000  ldr r2, [sp, #0x0]
0c003fd0: e2822001  add r2, r2, #0x1
0c003fd4: e58d2000  str r2, [sp, #0x0]
0c003fd8: e3520003  cmp r2, #0x3
0c003fdc: bafffffa  blt 0x0c003fcc
0c003fe0: e5810c04  str r0, [r1, #0xc04]
0c003fe4: e3a00000  mov r0, #0x0
0c003fe8: e58d0000  str r0, [sp, #0x0]
0c003fec: e59d0000  ldr r0, [sp, #0x0]
0c003ff0: e2800001  add r0, r0, #0x1
0c003ff4: e58d0000  str r0, [sp, #0x0]
0c003ff8: e3500003  cmp r0, #0x3
0c003ffc: bafffffa  blt 0x0c003fec
0c004000: e1a05001  mov r5, r1
0c004004: e5910c18  ldr r0, [r1, #0xc18]
0c004008: e3c04001  bic r4, r0, #0x1
0c00400c: e3a00000  mov r0, #0x0
0c004010: e58d0000  str r0, [sp, #0x0]
0c004014: e58d0000  str r0, [sp, #0x0]
0c004018: e59d0000  ldr r0, [sp, #0x0]
0c00401c: e2800001  add r0, r0, #0x1
0c004020: e58d0000  str r0, [sp, #0x0]
0c004024: e3500003  cmp r0, #0x3
0c004028: bafffffa  blt 0x0c004018
0c00402c: e5854c18  str r4, [r5, #0xc18]
0c004030: e3a00000  mov r0, #0x0
0c004034: e58d0000  str r0, [sp, #0x0]
0c004038: e59d0000  ldr r0, [sp, #0x0]
0c00403c: e2800001  add r0, r0, #0x1
0c004040: e58d0000  str r0, [sp, #0x0]
0c004044: e3500003  cmp r0, #0x3
0c004048: bafffffa  blt 0x0c004038
0c00404c: e28dd004  add sp, sp, #0x4
0c004050: e3a00d09  mov r0, #0x240
0c004054: e280093d  add r0, r0, #0xf4000
0c004058: eb003b2b  bl 0x0c012d0c <sleep>
0c00405c: e28f0f2b  add r0, pc, #0xac
0c004060: eb00371e  bl 0x0c011ce0 <fn_0c011ce0>
0c004064: eb00452e  bl 0x0c015524 <fn_0c015524>
0c004068: e28f0f31  add r0, pc, #0xc4
0c00406c: eb00371b  bl 0x0c011ce0 <fn_0c011ce0>
0c004070: e3840001  orr r0, r4, #0x1
0c004074: e3a01000  mov r1, #0x0
0c004078: e52d1004  str r1, [sp, #-0x4]!
0c00407c: e58d1000  str r1, [sp, #0x0]
0c004080: e59d1000  ldr r1, [sp, #0x0]
0c004084: e2811001  add r1, r1, #0x1
0c004088: e58d1000  str r1, [sp, #0x0]
0c00408c: e3510003  cmp r1, #0x3
0c004090: bafffffa  blt 0x0c004080
0c004094: e5a50c18  str r0, [r5, #0xc18]!
0c004098: e3a00000  mov r0, #0x0
0c00409c: e58d0000  str r0, [sp, #0x0]
0c0040a0: e59d0000  ldr r0, [sp, #0x0]
0c0040a4: e2800001  add r0, r0, #0x1
0c0040a8: e58d0000  str r0, [sp, #0x0]
0c0040ac: e3500003  cmp r0, #0x3
0c0040b0: bafffffa  blt 0x0c0040a0
0c0040b4: e28dd004  add sp, sp, #0x4
0c0040b8: e51f0628  ldr r0, [pc, #-0x628] =0x017d7840
0c0040bc: eb003b12  bl 0x0c012d0c <sleep>
0c0040c0: e51f062c  ldr r0, [pc, #-0x62c] =0x0c00385c
0c0040c4: e3a01000  mov r1, #0x0
0c0040c8: eb0024ea  bl 0x0c00d478 <fn_0c00d478>
0c0040cc: e3a00d09  mov r0, #0x240
0c0040d0: e280093d  add r0, r0, #0xf4000
0c0040d4: eb003b0c  bl 0x0c012d0c <sleep>
0c0040d8: e3a00000  mov r0, #0x0
0c0040dc: e58d0000  str r0, [sp, #0x0]
0c0040e0: e1a0000d  mov r0, sp
0c0040e4: eb000613  bl 0x0c005938 <DoDGRqstTempBlankAllChannels>
0c0040e8: e28f0f18  add r0, pc, #0x60
0c0040ec: eb0036fb  bl 0x0c011ce0 <fn_0c011ce0>
0c0040f0: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c0040f4: 52657365  .asciz "ResetRMBoards starting...\n"
0c004110: 416c6c20  .asciz "All quiet on the eastern front...\n"
0c004134: 52657374  .asciz "Restarting master voc...\n"
0c004150: 52657365  .asciz "ResetRMBoards complete!\n"
DoDGRqstGenlockSwitching:
0c00416c: e5900000  ldr r0, [r0, #0x0]
0c004170: e59f1014  ldr r1, [pc, #0x14] =0x04042734
0c004174: e5912000  ldr r2, [r1, #0x0]
0c004178: e3c22101  bic r2, r2, #0x40000000
0c00417c: e2000001  and r0, r0, #0x1
0c004180: e1820f00  orr r0, r2, r0, lsl #30
0c004184: e5810000  str r0, [r1, #0x0]
0c004188: e1a0f00e  mov pc, lr
0c00418c: 04042734  .word 0x04042734
DoDGRqstGetGenlockSwitching:
0c004190: e1a0c00d  mov r12, sp
0c004194: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c004198: e24cb004  sub r11, r12, #0x4
0c00419c: e3a04606  mov r4, #0x600000
0c0041a0: e5940d0c  ldr r0, [r4, #0xd0c]
0c0041a4: e1a05000  mov r5, r0
0c0041a8: e3c00001  bic r0, r0, #0x1
0c0041ac: e3a01000  mov r1, #0x0
0c0041b0: e52d1008  str r1, [sp, #-0x8]!
0c0041b4: e58d1000  str r1, [sp, #0x0]
0c0041b8: e59d1000  ldr r1, [sp, #0x0]
0c0041bc: e2811001  add r1, r1, #0x1
0c0041c0: e58d1000  str r1, [sp, #0x0]
0c0041c4: e3510003  cmp r1, #0x3
0c0041c8: bafffffa  blt 0x0c0041b8
0c0041cc: e5840d0c  str r0, [r4, #0xd0c]
0c0041d0: e3a00000  mov r0, #0x0
0c0041d4: e58d0000  str r0, [sp, #0x0]
0c0041d8: e59d0000  ldr r0, [sp, #0x0]
0c0041dc: e2800001  add r0, r0, #0x1
0c0041e0: e58d0000  str r0, [sp, #0x0]
0c0041e4: e3500003  cmp r0, #0x3
0c0041e8: bafffffa  blt 0x0c0041d8
0c0041ec: e28dd004  add sp, sp, #0x4
0c0041f0: e3a00032  mov r0, #0x32
0c0041f4: eb003ac4  bl 0x0c012d0c <sleep>
0c0041f8: e3a00000  mov r0, #0x0
0c0041fc: e52d0004  str r0, [sp, #-0x4]!
0c004200: e58d0000  str r0, [sp, #0x0]
0c004204: e59d0000  ldr r0, [sp, #0x0]
0c004208: e2800001  add r0, r0, #0x1
0c00420c: e58d0000  str r0, [sp, #0x0]
0c004210: e3500003  cmp r0, #0x3
0c004214: bafffffa  blt 0x0c004204
0c004218: e5a45d0c  str r5, [r4, #0xd0c]!
0c00421c: e3a00000  mov r0, #0x0
0c004220: e58d0000  str r0, [sp, #0x0]
0c004224: e59d0000  ldr r0, [sp, #0x0]
0c004228: e2800001  add r0, r0, #0x1
0c00422c: e58d0000  str r0, [sp, #0x0]
0c004230: e3500003  cmp r0, #0x3
0c004234: bafffffa  blt 0x0c004224
0c004238: e59f0020  ldr r0, [pc, #0x20] =0x040422fc
0c00423c: e5b01438  ldr r1, [r0, #0x438]!
0c004240: e3a00001  mov r0, #0x1
0c004244: e0000f41  and r0, r0, r1, asr #30
0c004248: e5ad0004  str r0, [sp, #0x4]!
0c00424c: e1a0100d  mov r1, sp
0c004250: e3a02004  mov r2, #0x4
0c004254: e3a00014  mov r0, #0x14
0c004258: eb0002a0  bl 0x0c004ce0 <fn_0c004ce0>
0c00425c: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c004260: 040422fc  .word 0x040422fc
0c004264: 54657374  strplb r7, [r5], #-0x374
0c004268: 00000000  andeq r0, r0, r0
0c00426c: 56435772  strplb r5, [r3], -r2, ror r7
0c004270: 69746500  ldmvsdb r4!, {r8,r10,sp,lr}^
0c004274: 56435265  strplb r5, [r3], -r5, ror #4
0c004278: 61640000  cmnvs r4, r0
0c00427c: 44696167  strmib r6, [r9], #-0x167
0c004280: 586d6170  stmplda sp!, {r4,r5,r6,r8,sp,lr}^
0c004284: 436f6c6f  cmnmi pc, #0x6f00
0c004288: 72000000  andvc r0, r0, #0x0
0c00428c: 44697361  strmib r7, [r9], #-0x361
0c004290: 626c6544  rsbvs r6, r12, #0x11000000
0c004294: 69616758  stmvsdb r1!, {r3,r4,r6,r8,r9,r10,sp,lr}^
0c004298: 6d617043  copvs 0x6d617043
0c00429c: 6f6c6f72  swivs 0x6c6f72
0c0042a0: 00000000  andeq r0, r0, r0
0c0042a4: 56434275  strplb r4, [r3], -r5, ror r2
0c0042a8: 73547261  cmpvc r4, #0x10000006
0c0042ac: 63650000  cmnvs r5, #0x0
0c0042b0: 44696167  strmib r6, [r9], #-0x167
0c0042b4: 43757273  cmnmi r5, #0x30000007
0c0042b8: 6f724672  swivs 0x724672
0c0042bc: 6f6d496d  swivs 0x6d496d
0c0042c0: 61676500  cmnvs r7, r0, lsl #10
0c0042c4: 44656275  strmib r6, [r5], #-0x275
0c0042c8: 674d6173  strvsb r6, [sp, -r3, ror r1]
0c0042cc: 6b000000  blvs 0x0c0042d4 <fn_0c0042d4>
0c0042d0: 53657475  cmnpl r5, #0x75000000
fn_0c0042d4:
0c0042d4: 70467261  subvc r7, r6, r1, ror #4
0c0042d8: 6d654275  copvs 0x6d654275
0c0042dc: 66666572  strvsb r6, [r6], -r2, ror r5
0c0042e0: 00000000  andeq r0, r0, r0
0c0042e4: 496e7075  stmmidb lr!, {r0,r2,r4,r5,r6,r12,sp,lr}^
0c0042e8: 7453796e  ldrvcb r7, [r3], #-0x96e
0c0042ec: 63000000  tstvs r0, #0x0
0c0042f0: 47657449  strmib r7, [r5, -r9, asr #8]!
0c0042f4: 6e707574  copvs 0x6e707574
0c0042f8: 53796e63  cmnpl r9, #0x630
0c0042fc: 00000000  andeq r0, r0, r0
0c004300: 48506861  ldmmida r0, {r0,r5,r6,r11,sp,lr}^
0c004304: 73650000  cmnvc r5, #0x0
0c004308: 47657448  strmib r7, [r5, -r8, asr #8]!
0c00430c: 50686173  rsbpl r6, r8, r3, ror r1
0c004310: 65000000  strvs r0, [r0, #-0x0]
0c004314: 56506861  ldrplb r6, [r0], -r1, ror #16
0c004318: 73650000  cmnvc r5, #0x0
0c00431c: 47657456  strmib r7, [r5, -r6, asr r4]!
0c004320: 50686173  rsbpl r6, r8, r3, ror r1
0c004324: 65000000  strvs r0, [r0, #-0x0]
0c004328: 4368616e  cmnmi r8, #0x8000001b
0c00432c: 6e656c47  copvs 0x6e656c47
0c004330: 616d6d61  cmnvs sp, r1, ror #26
0c004334: 4d617000  copmi 0x4d617000
0c004338: 47657443  strmib r7, [r5, -r3, asr #8]!
0c00433c: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004340: 656c4761  strvsb r4, [r12, #-0x761]!
0c004344: 6d6d614d  copvs 0x6d6d614d
0c004348: 61700000  cmnvs r0, r0
0c00434c: 46657461  strmib r7, [r5], -r1, ror #8
0c004350: 6c000000  copvs 0x6c000000
0c004354: 47657442  strmib r7, [r5, -r2, asr #8]!
0c004358: 6f617264  swivs 0x617264
0c00435c: 436f6e66  cmnmi pc, #0x660
0c004360: 69670000  stmvsdb r7!, {}^
0c004364: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004368: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c00436c: 656c436f  strvsb r4, [r12, #-0x36f]!
0c004370: 6e666967  copvs 0x6e666967
0c004374: 00000000  andeq r0, r0, r0
0c004378: 52657369  rsbpl r7, r5, #0xa4000001
0c00437c: 7a650000  bvc 0x0d944384
0c004380: 47657452  strmib r7, [r5, -r2, asr r4]!
0c004384: 6573697a  ldrvsb r6, [r3, #-0x97a]!
0c004388: 65000000  strvs r0, [r0, #-0x0]
0c00438c: 4c6f6164  copmi 0x4c6f6164
0c004390: 466f726d  strmib r7, [pc], -sp, ror #4
0c004394: 61740000  cmnvs r4, r0
0c004398: 456e6162  strmib r6, [lr, #-0x162]!
0c00439c: 6c654368  copvs 0x6c654368
0c0043a0: 616e6e65  cmnvs lr, r5, ror #28
0c0043a4: 6c000000  copvs 0x6c000000
0c0043a8: 44697361  strmib r7, [r9], #-0x361
0c0043ac: 626c6543  rsbvs r6, r12, #0x10c00000
0c0043b0: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c0043b4: 656c0000  strvsb r0, [r12, #-0x0]!
0c0043b8: 4c6f6164  copmi 0x4c6f6164
0c0043bc: 47656e6c  strmib r6, [r5, -r12, ror #28]!
0c0043c0: 6f636b50  swivs 0x636b50
0c0043c4: 6172616d  cmnvs r2, sp, ror #2
0c0043c8: 73000000  tstvc r0, #0x0
0c0043cc: 456e6162  strmib r6, [lr, #-0x162]!
0c0043d0: 6c654765  copvs 0x6c654765
0c0043d4: 6e6c6f63  copvs 0x6e6c6f63
0c0043d8: 6b000000  blvs 0x0c0043e0 <fn_0c0043e0>
0c0043dc: 43757273  cmnmi r5, #0x30000007
fn_0c0043e0:
0c0043e0: 6f72506f  swivs 0x72506f
0c0043e4: 73697469  cmnvc r9, #0x69000000
0c0043e8: 6f6e0000  swivs 0x6e0000
0c0043ec: 43757273  cmnmi r5, #0x30000007
0c0043f0: 6f724368  swivs 0x724368
0c0043f4: 616e6e65  cmnvs lr, r5, ror #28
0c0043f8: 6c000000  copvs 0x6c000000
0c0043fc: 43757273  cmnmi r5, #0x30000007
0c004400: 6f725479  swivs 0x725479
0c004404: 70650000  rsbvc r0, r5, r0
0c004408: 43757273  cmnmi r5, #0x30000007
0c00440c: 6f725072  swivs 0x725072
0c004410: 696f7269  stmvsdb pc!, {r0,r3,r5,r6,r9,r12,sp,lr}^
0c004414: 74790000  ldrvcb r0, [r9], #-0x0
0c004418: 4368616e  cmnmi r8, #0x8000001b
0c00441c: 6e656c42  copvs 0x6e656c42
0c004420: 6c616e6b  copvs 0x6c616e6b
0c004424: 696e6700  stmvsdb lr!, {r8,r9,r10,sp,lr}^
0c004428: 47657443  strmib r7, [r5, -r3, asr #8]!
0c00442c: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004430: 656c426c  strvsb r4, [r12, #-0x26c]!
0c004434: 616e6b69  cmnvs lr, r9, ror #22
0c004438: 6e670000  copvs 0x6e670000
0c00443c: 4f757470  swimi 0x757470
0c004440: 75744761  ldrvcb r4, [r4, #-0x761]!
0c004444: 696e0000  stmvsdb lr!, {}^
0c004448: 4765744f  strmib r7, [r5, -pc, asr #8]!
0c00444c: 75747075  ldrvcb r7, [r4, #-0x75]!
0c004450: 74476169  strvcb r6, [r7], #-0x169
0c004454: 6e000000  copvs 0x6e000000
0c004458: 53796e63  cmnpl r9, #0x630
0c00445c: 53656c65  cmnpl r5, #0x6500
0c004460: 63747300  cmnvs r4, #0x0
0c004464: 47657453  strmib r7, [r5, -r3, asr r4]!
0c004468: 796e6353  stmvcdb lr!, {r0,r1,r4,r6,r8,r9,sp,lr}^
0c00446c: 656c6563  strvsb r6, [r12, #-0x563]!
0c004470: 74730000  ldrvcb r0, [r3], #-0x0
0c004474: 4f757470  swimi 0x757470
0c004478: 75745065  ldrvcb r5, [r4, #-0x65]!
0c00447c: 64657374  strvsb r7, [r5], #-0x374
0c004480: 616c0000  cmnvs r12, r0
0c004484: 4765744f  strmib r7, [r5, -pc, asr #8]!
0c004488: 75747075  ldrvcb r7, [r4, #-0x75]!
0c00448c: 74506564  ldrvcb r6, [r0], #-0x564
0c004490: 65737461  ldrvsb r7, [r3, #-0x461]!
0c004494: 6c000000  copvs 0x6c000000
0c004498: 496e6974  stmmidb lr!, {r2,r4,r5,r6,r8,r11,sp,lr}^
0c00449c: 54657874  strplb r7, [r5], #-0x874
0c0044a0: 706f7274  rsbvc r7, pc, r4, ror r2
0c0044a4: 00000000  andeq r0, r0, r0
0c0044a8: 4c6f6164  copmi 0x4c6f6164
0c0044ac: 54657874  strplb r7, [r5], #-0x874
0c0044b0: 706f7274  rsbvc r7, pc, r4, ror r2
0c0044b4: 476c7970  strmib r7, [r12, -r0, ror r9]!
0c0044b8: 68000000  stmvsda r0, {}
0c0044bc: 4c6f6164  copmi 0x4c6f6164
0c0044c0: 54657874  strplb r7, [r5], #-0x874
0c0044c4: 706f7274  rsbvc r7, pc, r4, ror r2
0c0044c8: 436f6c6f  cmnmi pc, #0x6f00
0c0044cc: 72496e64  subvc r6, r9, #0x640
0c0044d0: 65780000  ldrvsb r0, [r8, #-0x0]!
0c0044d4: 456e6162  strmib r6, [lr, #-0x162]!
0c0044d8: 6c65566f  copvs 0x6c65566f
0c0044dc: 63526561  cmpvs r2, #0x18400000
0c0044e0: 64626163  strvsb r6, [r2], #-0x163
0c0044e4: 6b000000  blvs 0x0c0044ec <fn_0c0044ec>
0c0044e8: 4d617374  copmi 0x4d617374
fn_0c0044ec:
0c0044ec: 6572436c  ldrvsb r4, [r2, #-0x36c]!
0c0044f0: 6f636b53  swivs 0x636b53
0c0044f4: 656c6563  strvsb r6, [r12, #-0x563]!
0c0044f8: 74000000  strvc r0, [r0], #-0x0
0c0044fc: 4765744d  strmib r7, [r5, -sp, asr #8]!
0c004500: 61737465  cmnvs r3, r5, ror #8
0c004504: 72436c6f  subvc r6, r3, #0x6f00
0c004508: 636b5365  cmnvs r11, #0x94000001
0c00450c: 6c656374  copvs 0x6c656374
0c004510: 00000000  andeq r0, r0, r0
0c004514: 4175746f  cmnmi r5, pc, ror #8
0c004518: 496e6974  stmmidb lr!, {r2,r4,r5,r6,r8,r11,sp,lr}^
0c00451c: 00000000  andeq r0, r0, r0
0c004520: 4c6f6164  copmi 0x4c6f6164
0c004524: 456e636f  strmib r6, [lr, #-0x36f]!
0c004528: 64657200  strvsb r7, [r5], #-0x200
0c00452c: 456e636f  strmib r6, [lr, #-0x36f]!
0c004530: 6465724f  strvsb r7, [r5], #-0x24f
0c004534: 75747075  ldrvcb r7, [r4, #-0x75]!
0c004538: 74476169  strvcb r6, [r7], #-0x169
0c00453c: 6e000000  copvs 0x6e000000
0c004540: 47657445  strmib r7, [r5, -r5, asr #8]!
0c004544: 6e636f64  copvs 0x6e636f64
0c004548: 65724f75  ldrvsb r4, [r2, #-0xf75]!
0c00454c: 74707574  ldrvcb r7, [r0], #-0x574
0c004550: 4761696e  strmib r6, [r1, -lr, ror #18]!
0c004554: 00000000  andeq r0, r0, r0
0c004558: 53434850  cmppl r3, #0x500000
0c00455c: 68617365  stmvsda r1!, {r0,r2,r5,r6,r8,r9,r12,sp,lr}^
0c004560: 00000000  andeq r0, r0, r0
0c004564: 47657453  strmib r7, [r5, -r3, asr r4]!
0c004568: 43485068  cmpmi r8, #0x68
0c00456c: 61736500  cmnvs r3, r0, lsl #10
0c004570: 456e636f  strmib r6, [lr, #-0x36f]!
0c004574: 64657254  strvsb r7, [r5], #-0x254
0c004578: 65737450  ldrvsb r7, [r3, #-0x450]!
0c00457c: 61747465  cmnvs r4, r5, ror #8
0c004580: 726e0000  rsbvc r0, lr, #0x0
0c004584: 42696e64  rsbmi r6, r9, #0x640
0c004588: 4368616e  cmnmi r8, #0x8000001b
0c00458c: 6e656c54  copvs 0x6e656c54
0c004590: 6f585769  swivs 0x585769
0c004594: 64000000  strvs r0, [r0], #-0x0
0c004598: 4c6f6164  copmi 0x4c6f6164
0c00459c: 50616258  rsbpl r6, r1, r8, asr r2
0c0045a0: 696c696e  stmvsdb r12!, {r1,r2,r3,r5,r6,r8,r11,sp,lr}^
0c0045a4: 78000000  stmvcda r0, {}
0c0045a8: 4c6f6164  copmi 0x4c6f6164
0c0045ac: 50616253  rsbpl r6, r1, r3, asr r2
0c0045b0: 697a6552  ldmvsdb r10!, {r1,r4,r6,r8,r10,sp,lr}^
0c0045b4: 65677300  strvsb r7, [r7, #-0x300]!
0c0045b8: 4c6f6164  copmi 0x4c6f6164
0c0045bc: 50616243  rsbpl r6, r1, r3, asr #4
0c0045c0: 74726c52  ldrvcb r6, [r2], #-0xc52
0c0045c4: 65677300  strvsb r7, [r7, #-0x300]!
0c0045c8: 4c6f6164  copmi 0x4c6f6164
0c0045cc: 44616343  strmib r6, [r1], #-0x343
0c0045d0: 7572736f  ldrvcb r7, [r2, #-0x36f]!
0c0045d4: 72000000  andvc r0, r0, #0x0
0c0045d8: 56616d70  strplb r6, [r1], -r0, ror sp
0c0045dc: 69726541  ldmvsdb r2!, {r0,r6,r8,r10,sp,lr}^
0c0045e0: 6e644669  copvs 0x6e644669
0c0045e4: 656c6444  strvsb r6, [r12, #-0x444]!
0c0045e8: 6f6d696e  swivs 0x6d696e
0c0045ec: 616e6365  cmnvs lr, r5, ror #6
0c0045f0: 00000000  andeq r0, r0, r0
0c0045f4: 47657456  strmib r7, [r5, -r6, asr r4]!
0c0045f8: 616d7069  cmnvs sp, r9, rrx
0c0045fc: 72650000  rsbvc r0, r5, #0x0
0c004600: 46617374  strmib r7, [r1], -r4, ror r3
0c004604: 6c697374  copvs 0x6c697374
0c004608: 4368756e  cmnmi r8, #0x1b800000
0c00460c: 6b73697a  blvs 0x0dcdebfc
0c004610: 65000000  strvs r0, [r0, #-0x0]
0c004614: 54656d70  strplb r6, [r5], #-0xd70
0c004618: 426c616e  rsbmi r6, r12, #0x8000001b
0c00461c: 6b416c6c  blvs 0x0d05f7d4
0c004620: 4368616e  cmnmi r8, #0x8000001b
0c004624: 6e656c73  copvs 0x6e656c73
0c004628: 00000000  andeq r0, r0, r0
0c00462c: 47657444  strmib r7, [r5, -r4, asr #8]!
0c004630: 47496e74  strmib r6, [r9, -r4, ror lr]
0c004634: 65727275  ldrvsb r7, [r2, #-0x275]!
0c004638: 70745374  rsbvcs r5, r4, r4, ror r3
0c00463c: 61746500  cmnvs r4, r0, lsl #10
0c004640: 584d6170  stmplda sp, {r4,r5,r6,r8,sp,lr}^
0c004644: 436c6f63  cmnmi r12, #0x18c
0c004648: 6b53656c  blvs 0x0d4ddc00
0c00464c: 65637400  strvsb r7, [r3, #-0x400]!
0c004650: 47657458  strmib r7, [r5, -r8, asr r4]!
0c004654: 4d617043  copmi 0x4d617043
0c004658: 6c6f636b  copvs 0x6c6f636b
0c00465c: 53656c65  cmnpl r5, #0x6500
0c004660: 63740000  cmnvs r4, #0x0
0c004664: 4368616e  cmnmi r8, #0x8000001b
0c004668: 6e656c52  copvs 0x6e656c52
0c00466c: 65736574  ldrvsb r6, [r3, #-0x574]!
0c004670: 52617469  rsbpl r7, r1, #0x69000000
0c004674: 6f730000  swivs 0x730000
0c004678: 52657365  rsbpl r7, r5, #0x94000001
0c00467c: 74524d42  ldrvcb r4, [r2], #-0xd42
0c004680: 6f617264  swivs 0x617264
0c004684: 73000000  tstvc r0, #0x0
0c004688: 47657443  strmib r7, [r5, -r3, asr #8]!
0c00468c: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004690: 656c456e  strvsb r4, [r12, #-0x56e]!
0c004694: 61626c65  cmnvs r2, r5, ror #24
0c004698: 73000000  tstvc r0, #0x0
0c00469c: 506c6163  rsbpl r6, r12, r3, ror #2
0c0046a0: 656d656e  strvsb r6, [sp, #-0x56e]!
0c0046a4: 74526573  ldrvcb r6, [r2], #-0x573
0c0046a8: 00000000  andeq r0, r0, r0
0c0046ac: 47656e6c  strmib r6, [r5, -r12, ror #28]!
0c0046b0: 6f636b53  swivs 0x636b53
0c0046b4: 77697463  strvcb r7, [r9, -r3, ror #8]!
0c0046b8: 68696e67  stmvsda r9!, {r0,r1,r2,r5,r6,r9,r10,r11,sp,lr}^
0c0046bc: 00000000  andeq r0, r0, r0
0c0046c0: 47657447  strmib r7, [r5, -r7, asr #8]!
0c0046c4: 656e6c6f  strvsb r6, [lr, #-0xc6f]!
0c0046c8: 636b5377  cmnvs r11, #0xdc000001
0c0046cc: 69746368  ldmvsdb r4!, {r3,r5,r6,r8,r9,sp,lr}^
0c0046d0: 696e6700  stmvsdb lr!, {r8,r9,r10,sp,lr}^
0c0046d4: 4368616e  cmnmi r8, #0x8000001b
0c0046d8: 6e656c46  copvs 0x6e656c46
0c0046dc: 69656c64  stmvsdb r5!, {r2,r5,r6,r10,r11,sp,lr}^
0c0046e0: 446f6d69  strmib r6, [pc], #-0xd69
0c0046e4: 6e616e63  copvs 0x6e616e63
0c0046e8: 65000000  strvs r0, [r0, #-0x0]
0c0046ec: 47657443  strmib r7, [r5, -r3, asr #8]!
0c0046f0: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c0046f4: 656c4669  strvsb r4, [r12, #-0x669]!
0c0046f8: 656c6444  strvsb r6, [r12, #-0x444]!
0c0046fc: 6f6d696e  swivs 0x6d696e
0c004700: 616e6365  cmnvs lr, r5, ror #6
0c004704: 00000000  andeq r0, r0, r0
0c004708: 426f6172  rsbmi r6, pc, #0x8000001c
0c00470c: 64526573  ldrvsb r6, [r2], #-0x573
0c004710: 65745261  ldrvsb r5, [r4, #-0x261]!
0c004714: 74696f00  strvcb r6, [r9], #-0xf00
0c004718: 47657442  strmib r7, [r5, -r2, asr #8]!
0c00471c: 6f617264  swivs 0x617264
0c004720: 52657365  rsbpl r7, r5, #0x94000001
0c004724: 74526174  ldrvcb r6, [r2], #-0x174
0c004728: 696f0000  stmvsdb pc!, {}^
0c00472c: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004730: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004734: 656c466f  strvsb r4, [r12, #-0x66f]!
0c004738: 726d6174  rsbvc r6, sp, #0x1d
0c00473c: 496e666f  stmmidb lr!, {r0,r1,r2,r3,r5,r6,r9,r10,sp,lr}^
0c004740: 00000000  andeq r0, r0, r0
0c004744: 4368616e  cmnmi r8, #0x8000001b
0c004748: 6e656c47  copvs 0x6e656c47
0c00474c: 616d6d61  cmnvs sp, r1, ror #26
0c004750: 4d617053  copmi 0x4d617053
0c004754: 74617465  strvcb r7, [r1], #-0x465
0c004758: 00000000  andeq r0, r0, r0
0c00475c: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004760: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004764: 656c4761  strvsb r4, [r12, #-0x761]!
0c004768: 6d6d614d  copvs 0x6d6d614d
0c00476c: 61705374  cmnvs r0, r4, ror r3
0c004770: 61746500  cmnvs r4, r0, lsl #10
0c004774: 456e6162  strmib r6, [lr, #-0x162]!
0c004778: 6c65456e  copvs 0x6c65456e
0c00477c: 636f6465  cmnvs pc, #0x65000000
0c004780: 72000000  andvc r0, r0, #0x0
0c004784: 52657369  rsbpl r7, r5, #0xa4000001
0c004788: 7a655379  bvc 0x0d959574
0c00478c: 6e635479  copvs 0x6e635479
0c004790: 70650000  rsbvc r0, r5, r0
0c004794: 56616d70  strplb r6, [r1], -r0, ror sp
0c004798: 69726500  ldmvsdb r2!, {r8,r10,sp,lr}^
0c00479c: 51756572  cmnpl r5, r2, ror r5
0c0047a0: 794d6f6e  stmvcdb sp, {r1,r2,r3,r5,r6,r8,r9,r10,r11,sp,lr}^
0c0047a4: 69746f72  ldmvsdb r4!, {r1,r4,r5,r6,r8,r9,r10,r11,sp,lr}^
0c0047a8: 4e616d65  copmi 0x4e616d65
0c0047ac: 00000000  andeq r0, r0, r0
0c0047b0: 4d6f6e69  copmi 0x4d6f6e69
0c0047b4: 746f7243  strvcb r7, [pc], #-0x243
0c0047b8: 6f6d6d61  swivs 0x6d6d61
0c0047bc: 6e640000  copvs 0x6e640000
0c0047c0: 4c6f6164  copmi 0x4c6f6164
0c0047c4: 58696c69  stmplda r9!, {r0,r3,r5,r6,r10,r11,sp,lr}^
0c0047c8: 6e780000  copvs 0x6e780000
0c0047cc: 58536572  ldmplda r3, {r1,r4,r5,r6,r8,r10,sp,lr}^
0c0047d0: 76657256  strvcb r7, [r5], -r6, asr r2
0c0047d4: 6964656f  stmvsdb r4!, {r0,r1,r2,r3,r5,r6,r8,r10,sp,lr}^
0c0047d8: 496e6974  stmmidb lr!, {r2,r4,r5,r6,r8,r11,sp,lr}^
0c0047dc: 00000000  andeq r0, r0, r0
0c0047e0: 496e7465  stmmidb lr!, {r0,r2,r5,r6,r10,r12,sp,lr}^
0c0047e4: 726e616c  rsbvc r6, lr, #0x1b
0c0047e8: 47656e6c  strmib r6, [r5, -r12, ror #28]!
0c0047ec: 6f636b00  swivs 0x636b00
0c0047f0: 47657449  strmib r7, [r5, -r9, asr #8]!
0c0047f4: 6e746572  copvs 0x6e746572
0c0047f8: 6e616c47  copvs 0x6e616c47
0c0047fc: 656e6c6f  strvsb r6, [lr, #-0xc6f]!
0c004800: 636b0000  cmnvs r11, #0x0
0c004804: 42756666  rsbmis r6, r5, #0x6600000
0c004808: 65725061  ldrvsb r5, [r2, #-0x61]!
0c00480c: 72616d73  rsbvc r6, r1, #0x1cc0
0c004810: 00000000  andeq r0, r0, r0
0c004814: 47657442  strmib r7, [r5, -r2, asr #8]!
0c004818: 75666665  strvcb r6, [r6, #-0x665]!
0c00481c: 72506172  subvcs r6, r0, #0x8000001c
0c004820: 616d7300  cmnvs sp, r0, lsl #6
0c004824: 44617461  strmib r7, [r1], #-0x461
0c004828: 466f726d  strmib r7, [pc], -sp, ror #4
0c00482c: 61740000  cmnvs r4, r0
0c004830: 47657444  strmib r7, [r5, -r4, asr #8]!
0c004834: 61746146  cmnvs r4, r6, asr #2
0c004838: 6f726d61  swivs 0x726d61
0c00483c: 74000000  strvc r0, [r0], #-0x0
0c004840: 4456504d  ldrmib r5, [r6], #-0x4d
0c004844: 756c7432  strvcb r7, [r12, #-0x432]!
0c004848: 46726571  ldrmib r6, [r2], -r1, ror r5
0c00484c: 00000000  andeq r0, r0, r0
0c004850: 56424f42  strplb r4, [r2], -r2, asr #30
0c004854: 436f6d6d  cmnmi pc, #0x1b40
0c004858: 616e6400  cmnvs lr, r0, lsl #8
0c00485c: 47657456  strmib r7, [r5, -r6, asr r4]!
0c004860: 424f4252  submi r4, pc, #0x20000005
0c004864: 65706c79  ldrvsb r6, [r0, #-0xc79]!
0c004868: 00000000  andeq r0, r0, r0
0c00486c: e1a0c00d  mov r12, sp
0c004870: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c004874: e24cb004  sub r11, r12, #0x4
0c004878: e24dd044  sub sp, sp, #0x44
0c00487c: e5994000  ldr r4, [r9, #0x0]
0c004880: e1b06004  movs r6, r4
0c004884: e59f0024  ldr r0, [pc, #0x24] =0x04018d34
0c004888: e5901000  ldr r1, [r0, #0x0]
0c00488c: e5801004  str r1, [r0, #0x4]
0c004890: e5804000  str r4, [r0, #0x0]
0c004894: 4a000001  bmi 0x0c0048a0
0c004898: e354005d  cmp r4, #0x5d
0c00489c: ba00000c  blt 0x0c0048d4
0c0048a0: e1a01004  mov r1, r4
0c0048a4: e28f0f02  add r0, pc, #0x8
0c0048a8: eb00350c  bl 0x0c011ce0 <fn_0c011ce0>
0c0048ac: ea00003b  b 0x0c0049a0
0c0048b0: 04018d34  .word 0x04018d34
0c0048b4: 44473a20  .asciz "DG: Illegal video command %d\n"
0c0048d4: e0841084  add r1, r4, r4, lsl #1
0c0048d8: e59f0058  ldr r0, [pc, #0x58] =0x040188d8
0c0048dc: e0800101  add r0, r0, r1, lsl #2
0c0048e0: e58d0040  str r0, [sp, #0x40]
0c0048e4: e5b05004  ldr r5, [r0, #0x4]!
0c0048e8: e59f004c  ldr r0, [pc, #0x4c] =0x0403f2fc
0c0048ec: e5900000  ldr r0, [r0, #0x0]
0c0048f0: e3100003  tst r0, #0x3
0c0048f4: 0a000005  beq 0x0c004910
0c0048f8: e59d0040  ldr r0, [sp, #0x40]
0c0048fc: e1a03005  mov r3, r5
0c004900: e1a02004  mov r2, r4
0c004904: e5901000  ldr r1, [r0, #0x0]
0c004908: e28f0f0c  add r0, pc, #0x30
0c00490c: eb0034f3  bl 0x0c011ce0 <fn_0c011ce0>
0c004910: e3550010  cmp r5, #0x10
0c004914: d1a0700d  movle r7, sp
0c004918: da000002  ble 0x0c004928
0c00491c: e3550902  cmp r5, #0x8000
0c004920: 8a000014  bhi 0x0c004978
0c004924: e59f7048  ldr r7, [pc, #0x48] =0x0401f2fc
0c004928: e3a04000  mov r4, #0x0
0c00492c: e3550000  cmp r5, #0x0
0c004930: da000036  ble 0x0c004a10
0c004934: ea000026  b 0x0c0049d4
0c004938: 040188d8  .word 0x040188d8
0c00493c: 0403f2fc  .word 0x0403f2fc
0c004940: 44473a20  .asciz "DG: arm video cmd %s (%d) with %d words of data\n"
0c004974: 0401f2fc  .word 0x0401f2fc
0c004978: e1a01004  mov r1, r4
0c00497c: e28f0f08  add r0, pc, #0x20
0c004980: eb0034d6  bl 0x0c011ce0 <fn_0c011ce0>
0c004984: e3a04000  mov r4, #0x0
0c004988: e3550000  cmp r5, #0x0
0c00498c: da000003  ble 0x0c0049a0
0c004990: e5990000  ldr r0, [r9, #0x0]
0c004994: e2844001  add r4, r4, #0x1
0c004998: e1540005  cmp r4, r5
0c00499c: bafffffb  blt 0x0c004990
0c0049a0: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c0049a4: 5761726e  .asciz "Warning: fatal dg command overflow on cmd %d\n"
0c0049d4: e599a000  ldr r10, [r9, #0x0]
0c0049d8: e787a104  str r10, [r7, r4, lsl #2]
0c0049dc: e51f00a8  ldr r0, [pc, #-0xa8] =0x0403f2fc
0c0049e0: e5900000  ldr r0, [r0, #0x0]
0c0049e4: e3100001  tst r0, #0x1
0c0049e8: 0a000004  beq 0x0c004a00
0c0049ec: e1a0300a  mov r3, r10
0c0049f0: e1a0200a  mov r2, r10
0c0049f4: e1a01004  mov r1, r4
0c0049f8: e28f0f12  add r0, pc, #0x48
0c0049fc: eb0034b7  bl 0x0c011ce0 <fn_0c011ce0>
0c004a00: e086600a  add r6, r6, r10
0c004a04: e2844001  add r4, r4, #0x1
0c004a08: e1540005  cmp r4, r5
0c004a0c: bafffff0  blt 0x0c0049d4
0c004a10: e599003c  ldr r0, [r9, #0x3c]
0c004a14: e1360000  teq r6, r0
0c004a18: 1a000016  bne 0x0c004a78
0c004a1c: e51f00e8  ldr r0, [pc, #-0xe8] =0x0403f2fc
0c004a20: e5900000  ldr r0, [r0, #0x0]
0c004a24: e3100001  tst r0, #0x1
0c004a28: 11a01006  movne r1, r6
0c004a2c: 128f0f0c  addne r0, pc, #0x30
0c004a30: 1b0034aa  blne 0x0c011ce0 <fn_0c011ce0>
0c004a34: e1a00007  mov r0, r7
0c004a38: e59d1040  ldr r1, [sp, #0x40]
0c004a3c: e1a0e00f  mov lr, pc
0c004a40: e591f008  ldr pc, [r1, #0x8]
0c004a44: ea00000f  b 0x0c004a88
0c004a48: 44473a20  .asciz "DG: Data[%d] = %d (0x%x)\n"
0c004a64: 44473a20  .asciz "DG: Checksum = %d\n"
0c004a78: e1a02006  mov r2, r6
0c004a7c: e1a01000  mov r1, r0
0c004a80: e28f0f01  add r0, pc, #0x4
0c004a84: eb003495  bl 0x0c011ce0 <fn_0c011ce0>
0c004a88: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c004a8c: 44473a20  .asciz "DG: Expected checksum %d, got %d\n"
0c004ab0: 54657374  strplb r7, [r5], #-0x374
0c004ab4: 00000000  andeq r0, r0, r0
0c004ab8: 56435265  strplb r5, [r3], -r5, ror #4
0c004abc: 61640000  cmnvs r4, r0
0c004ac0: 47657449  strmib r7, [r5, -r9, asr #8]!
0c004ac4: 6e707574  copvs 0x6e707574
0c004ac8: 53796e63  cmnpl r9, #0x630
0c004acc: 00000000  andeq r0, r0, r0
0c004ad0: 47657448  strmib r7, [r5, -r8, asr #8]!
0c004ad4: 50686173  rsbpl r6, r8, r3, ror r1
0c004ad8: 65000000  strvs r0, [r0, #-0x0]
0c004adc: 47657456  strmib r7, [r5, -r6, asr r4]!
0c004ae0: 50686173  rsbpl r6, r8, r3, ror r1
0c004ae4: 65000000  strvs r0, [r0, #-0x0]
0c004ae8: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004aec: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004af0: 656c4761  strvsb r4, [r12, #-0x761]!
0c004af4: 6d6d614d  copvs 0x6d6d614d
0c004af8: 61700000  cmnvs r0, r0
0c004afc: 47657442  strmib r7, [r5, -r2, asr #8]!
0c004b00: 6f617264  swivs 0x617264
0c004b04: 436f6e66  cmnmi pc, #0x660
0c004b08: 69670000  stmvsdb r7!, {}^
0c004b0c: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004b10: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004b14: 656c436f  strvsb r4, [r12, #-0x36f]!
0c004b18: 6e666967  copvs 0x6e666967
0c004b1c: 00000000  andeq r0, r0, r0
0c004b20: 47657452  strmib r7, [r5, -r2, asr r4]!
0c004b24: 6573697a  ldrvsb r6, [r3, #-0x97a]!
0c004b28: 65000000  strvs r0, [r0, #-0x0]
0c004b2c: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004b30: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004b34: 656c426c  strvsb r4, [r12, #-0x26c]!
0c004b38: 616e6b69  cmnvs lr, r9, ror #22
0c004b3c: 6e670000  copvs 0x6e670000
0c004b40: 4765744f  strmib r7, [r5, -pc, asr #8]!
0c004b44: 75747075  ldrvcb r7, [r4, #-0x75]!
0c004b48: 74476169  strvcb r6, [r7], #-0x169
0c004b4c: 6e000000  copvs 0x6e000000
0c004b50: 47657453  strmib r7, [r5, -r3, asr r4]!
0c004b54: 796e6353  stmvcdb lr!, {r0,r1,r4,r6,r8,r9,sp,lr}^
0c004b58: 656c6563  strvsb r6, [r12, #-0x563]!
0c004b5c: 74730000  ldrvcb r0, [r3], #-0x0
0c004b60: 4765744f  strmib r7, [r5, -pc, asr #8]!
0c004b64: 75747075  ldrvcb r7, [r4, #-0x75]!
0c004b68: 74506564  ldrvcb r6, [r0], #-0x564
0c004b6c: 65737461  ldrvsb r7, [r3, #-0x461]!
0c004b70: 6c000000  copvs 0x6c000000
0c004b74: 4765744d  strmib r7, [r5, -sp, asr #8]!
0c004b78: 61737465  cmnvs r3, r5, ror #8
0c004b7c: 72436c6f  subvc r6, r3, #0x6f00
0c004b80: 636b5365  cmnvs r11, #0x94000001
0c004b84: 6c656374  copvs 0x6c656374
0c004b88: 00000000  andeq r0, r0, r0
0c004b8c: 47657445  strmib r7, [r5, -r5, asr #8]!
0c004b90: 6e636f64  copvs 0x6e636f64
0c004b94: 65724f75  ldrvsb r4, [r2, #-0xf75]!
0c004b98: 74707574  ldrvcb r7, [r0], #-0x574
0c004b9c: 4761696e  strmib r6, [r1, -lr, ror #18]!
0c004ba0: 00000000  andeq r0, r0, r0
0c004ba4: 47657453  strmib r7, [r5, -r3, asr r4]!
0c004ba8: 43485068  cmpmi r8, #0x68
0c004bac: 61736500  cmnvs r3, r0, lsl #10
0c004bb0: 47657456  strmib r7, [r5, -r6, asr r4]!
0c004bb4: 616d7069  cmnvs sp, r9, rrx
0c004bb8: 72650000  rsbvc r0, r5, #0x0
0c004bbc: 47657444  strmib r7, [r5, -r4, asr #8]!
0c004bc0: 47496e74  strmib r6, [r9, -r4, ror lr]
0c004bc4: 65727275  ldrvsb r7, [r2, #-0x275]!
0c004bc8: 70745374  rsbvcs r5, r4, r4, ror r3
0c004bcc: 61746500  cmnvs r4, r0, lsl #10
0c004bd0: 47657458  strmib r7, [r5, -r8, asr r4]!
0c004bd4: 4d617043  copmi 0x4d617043
0c004bd8: 6c6f636b  copvs 0x6c6f636b
0c004bdc: 53656c65  cmnpl r5, #0x6500
0c004be0: 63740000  cmnvs r4, #0x0
0c004be4: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004be8: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004bec: 656c456e  strvsb r4, [r12, #-0x56e]!
0c004bf0: 61626c65  cmnvs r2, r5, ror #24
0c004bf4: 73000000  tstvc r0, #0x0
0c004bf8: 47657447  strmib r7, [r5, -r7, asr #8]!
0c004bfc: 656e6c6f  strvsb r6, [lr, #-0xc6f]!
0c004c00: 636b5377  cmnvs r11, #0xdc000001
0c004c04: 69746368  ldmvsdb r4!, {r3,r5,r6,r8,r9,sp,lr}^
0c004c08: 696e6700  stmvsdb lr!, {r8,r9,r10,sp,lr}^
0c004c0c: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004c10: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004c14: 656c4669  strvsb r4, [r12, #-0x669]!
0c004c18: 656c6444  strvsb r6, [r12, #-0x444]!
0c004c1c: 6f6d696e  swivs 0x6d696e
0c004c20: 616e6365  cmnvs lr, r5, ror #6
0c004c24: 00000000  andeq r0, r0, r0
0c004c28: 47657442  strmib r7, [r5, -r2, asr #8]!
0c004c2c: 6f617264  swivs 0x617264
0c004c30: 52657365  rsbpl r7, r5, #0x94000001
0c004c34: 74526174  ldrvcb r6, [r2], #-0x174
0c004c38: 696f0000  stmvsdb pc!, {}^
0c004c3c: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004c40: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004c44: 656c466f  strvsb r4, [r12, #-0x66f]!
0c004c48: 726d6174  rsbvc r6, sp, #0x1d
0c004c4c: 496e666f  stmmidb lr!, {r0,r1,r2,r3,r5,r6,r9,r10,sp,lr}^
0c004c50: 00000000  andeq r0, r0, r0
0c004c54: 47657443  strmib r7, [r5, -r3, asr #8]!
0c004c58: 68616e6e  stmvsda r1!, {r1,r2,r3,r5,r6,r9,r10,r11,sp,lr}^
0c004c5c: 656c4761  strvsb r4, [r12, #-0x761]!
0c004c60: 6d6d614d  copvs 0x6d6d614d
0c004c64: 61705374  cmnvs r0, r4, ror r3
0c004c68: 61746500  cmnvs r4, r0, lsl #10
0c004c6c: 51756572  cmnpl r5, r2, ror r5
0c004c70: 794d6f6e  stmvcdb sp, {r1,r2,r3,r5,r6,r8,r9,r10,r11,sp,lr}^
0c004c74: 69746f72  ldmvsdb r4!, {r1,r4,r5,r6,r8,r9,r10,r11,sp,lr}^
0c004c78: 4e616d65  copmi 0x4e616d65
0c004c7c: 00000000  andeq r0, r0, r0
0c004c80: 4d6f6e69  copmi 0x4d6f6e69
0c004c84: 746f7243  strvcb r7, [pc], #-0x243
0c004c88: 6f6d6d61  swivs 0x6d6d61
0c004c8c: 6e640000  copvs 0x6e640000
0c004c90: 4c6f6164  copmi 0x4c6f6164
0c004c94: 58696c69  stmplda r9!, {r0,r3,r5,r6,r10,r11,sp,lr}^
0c004c98: 6e780000  copvs 0x6e780000
0c004c9c: 47657449  strmib r7, [r5, -r9, asr #8]!
0c004ca0: 6e746572  copvs 0x6e746572
0c004ca4: 6e616c47  copvs 0x6e616c47
0c004ca8: 656e6c6f  strvsb r6, [lr, #-0xc6f]!
0c004cac: 636b0000  cmnvs r11, #0x0
0c004cb0: 47657442  strmib r7, [r5, -r2, asr #8]!
0c004cb4: 75666665  strvcb r6, [r6, #-0x665]!
0c004cb8: 72506172  subvcs r6, r0, #0x8000001c
0c004cbc: 616d7300  cmnvs sp, r0, lsl #6
0c004cc0: 47657444  strmib r7, [r5, -r4, asr #8]!
0c004cc4: 61746146  cmnvs r4, r6, asr #2
0c004cc8: 6f726d61  swivs 0x726d61
0c004ccc: 74000000  strvc r0, [r0], #-0x0
0c004cd0: 47657456  strmib r7, [r5, -r6, asr r4]!
0c004cd4: 424f4252  submi r4, pc, #0x20000005
0c004cd8: 65706c79  ldrvsb r6, [r0, #-0xc79]!
0c004cdc: 00000000  andeq r0, r0, r0
fn_0c004ce0:
0c004ce0: e1a0c00d  mov r12, sp
0c004ce4: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c004ce8: e24cb004  sub r11, r12, #0x4
0c004cec: e1a05000  mov r5, r0
0c004cf0: e1a07001  mov r7, r1
0c004cf4: e1a04002  mov r4, r2
0c004cf8: e1b06000  movs r6, r0
0c004cfc: 4a000001  bmi 0x0c004d08
0c004d00: e3550020  cmp r5, #0x20
0c004d04: ba000003  blt 0x0c004d18
0c004d08: e1a01005  mov r1, r5
0c004d0c: e28f0f3a  add r0, pc, #0xe8
0c004d10: e91b6cf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,lr}
0c004d14: ea0033f1  b 0x0c011ce0 <fn_0c011ce0>
0c004d18: e1a04124  mov r4, r4, lsr #2
0c004d1c: e51f03e8  ldr r0, [pc, #-0x3e8] =0x0403f2fc
0c004d20: e5900000  ldr r0, [r0, #0x0]
0c004d24: e3100008  tst r0, #0x8
0c004d28: 0a000008  beq 0x0c004d50
0c004d2c: e1a03004  mov r3, r4
0c004d30: e92d0008  stmdb sp!, {r3}
0c004d34: e59f00f4  ldr r0, [pc, #0xf4] =0x04018d3c
0c004d38: e7901105  ldr r1, [r0, r5, lsl #2]
0c004d3c: e1a03007  mov r3, r7
0c004d40: e1a02005  mov r2, r5
0c004d44: e28f0f3a  add r0, pc, #0xe8
0c004d48: eb0033e4  bl 0x0c011ce0 <fn_0c011ce0>
0c004d4c: e28dd004  add sp, sp, #0x4
0c004d50: eb00345d  bl 0x0c011ecc <fn_0c011ecc>
0c004d54: e1a0a007  mov r10, r7
0c004d58: e2841001  add r1, r4, #0x1
0c004d5c: e3a00076  mov r0, #0x76
0c004d60: e2800b01  add r0, r0, #0x400
0c004d64: eb00286a  bl 0x0c00ef14 <fn_0c00ef14>
0c004d68: e1a01005  mov r1, r5
0c004d6c: e3a00076  mov r0, #0x76
0c004d70: e2800b01  add r0, r0, #0x400
0c004d74: eb002866  bl 0x0c00ef14 <fn_0c00ef14>
0c004d78: e3a05000  mov r5, #0x0
0c004d7c: e3540000  cmp r4, #0x0
0c004d80: da000011  ble 0x0c004dcc
0c004d84: e79a1105  ldr r1, [r10, r5, lsl #2]
0c004d88: e1a07001  mov r7, r1
0c004d8c: e3a00076  mov r0, #0x76
0c004d90: e2800b01  add r0, r0, #0x400
0c004d94: eb00285e  bl 0x0c00ef14 <fn_0c00ef14>
0c004d98: e0866007  add r6, r6, r7
0c004d9c: e51f0468  ldr r0, [pc, #-0x468] =0x0403f2fc
0c004da0: e5900000  ldr r0, [r0, #0x0]
0c004da4: e3100008  tst r0, #0x8
0c004da8: 0a000004  beq 0x0c004dc0
0c004dac: e1a03007  mov r3, r7
0c004db0: e1a02007  mov r2, r7
0c004db4: e1a01005  mov r1, r5
0c004db8: e28f0f28  add r0, pc, #0xa0
0c004dbc: eb0033c7  bl 0x0c011ce0 <fn_0c011ce0>
0c004dc0: e2855001  add r5, r5, #0x1
0c004dc4: e1550004  cmp r5, r4
0c004dc8: baffffed  blt 0x0c004d84
0c004dcc: e1a01006  mov r1, r6
0c004dd0: e3a00076  mov r0, #0x76
0c004dd4: e2800b01  add r0, r0, #0x400
0c004dd8: eb00284d  bl 0x0c00ef14 <fn_0c00ef14>
0c004ddc: e51f04a8  ldr r0, [pc, #-0x4a8] =0x0403f2fc
0c004de0: e5900000  ldr r0, [r0, #0x0]
0c004de4: e3100008  tst r0, #0x8
0c004de8: 11a01006  movne r1, r6
0c004dec: 128f0f22  addne r0, pc, #0x88
0c004df0: 1b0033ba  blne 0x0c011ce0 <fn_0c011ce0>
0c004df4: e91b6cf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,lr}
0c004df8: ea003437  b 0x0c011edc
0c004dfc: 44473a20  .asciz "DG: Illegal reply type being sent (%d), aborting\n"
0c004e30: 04018d3c  .word 0x04018d3c
0c004e34: 44473a20  .asciz "DG: SendDGRply %s (%d) @ 0x%08x (num=%d)\n"
0c004e60: 44473a20  .asciz "DG: Reply[%d] = %d (0x%x)\n"
0c004e7c: 44473a20  .asciz "DG: Reply checksum = %d\n"
DoDGRqstCursorChannel:
0c004e98: e59f105c  ldr r1, [pc, #0x5c] =0x0403f2fc
0c004e9c: e5900000  ldr r0, [r0, #0x0]
0c004ea0: e0810100  add r0, r1, r0, lsl #2
0c004ea4: e2800a03  add r0, r0, #0x3000
0c004ea8: e5900004  ldr r0, [r0, #0x4]
0c004eac: e5900000  ldr r0, [r0, #0x0]
0c004eb0: e3a01000  mov r1, #0x0
0c004eb4: e52d1004  str r1, [sp, #-0x4]!
0c004eb8: e58d1000  str r1, [sp, #0x0]
0c004ebc: e59d1000  ldr r1, [sp, #0x0]
0c004ec0: e2811001  add r1, r1, #0x1
0c004ec4: e58d1000  str r1, [sp, #0x0]
0c004ec8: e3510003  cmp r1, #0x3
0c004ecc: bafffffa  blt 0x0c004ebc
0c004ed0: e3a01606  mov r1, #0x600000
0c004ed4: e5a10400  str r0, [r1, #0x400]!
0c004ed8: e3a00000  mov r0, #0x0
0c004edc: e58d0000  str r0, [sp, #0x0]
0c004ee0: e59d0000  ldr r0, [sp, #0x0]
0c004ee4: e2800001  add r0, r0, #0x1
0c004ee8: e58d0000  str r0, [sp, #0x0]
0c004eec: e3500003  cmp r0, #0x3
0c004ef0: bafffffa  blt 0x0c004ee0
0c004ef4: e28dd004  add sp, sp, #0x4
0c004ef8: e1a0f00e  mov pc, lr
0c004efc: 0403f2fc  .word 0x0403f2fc
DoDGRqstCursorType:
0c004f00: e3a01000  mov r1, #0x0
0c004f04: e5900000  ldr r0, [r0, #0x0]
0c004f08: e3300000  teq r0, #0x0
0c004f0c: 03a01002  moveq r1, #0x2
0c004f10: 0a000001  beq 0x0c004f1c
0c004f14: e3300001  teq r0, #0x1
0c004f18: 03a01001  moveq r1, #0x1
0c004f1c: e3a00000  mov r0, #0x0
0c004f20: e52d0004  str r0, [sp, #-0x4]!
0c004f24: e58d0000  str r0, [sp, #0x0]
0c004f28: e59d0000  ldr r0, [sp, #0x0]
0c004f2c: e2800001  add r0, r0, #0x1
0c004f30: e58d0000  str r0, [sp, #0x0]
0c004f34: e3500003  cmp r0, #0x3
0c004f38: bafffffa  blt 0x0c004f28
0c004f3c: e3a00606  mov r0, #0x600000
0c004f40: e5a0140c  str r1, [r0, #0x40c]!
0c004f44: e3a00000  mov r0, #0x0
0c004f48: e58d0000  str r0, [sp, #0x0]
0c004f4c: e59d0000  ldr r0, [sp, #0x0]
0c004f50: e2800001  add r0, r0, #0x1
0c004f54: e58d0000  str r0, [sp, #0x0]
0c004f58: e3500003  cmp r0, #0x3
0c004f5c: bafffffa  blt 0x0c004f4c
0c004f60: e28dd004  add sp, sp, #0x4
0c004f64: e1a0f00e  mov pc, lr
DoDGRqstCursorPosition:
0c004f68: e1a0c00d  mov r12, sp
0c004f6c: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c004f70: e24cb004  sub r11, r12, #0x4
0c004f74: e1a04000  mov r4, r0
0c004f78: e5900000  ldr r0, [r0, #0x0]
0c004f7c: e3700a02  cmn r0, #0x2000
0c004f80: da000001  ble 0x0c004f8c
0c004f84: e3500a02  cmp r0, #0x2000
0c004f88: ba000003  blt 0x0c004f9c
0c004f8c: e28f1f25  add r1, pc, #0x94
0c004f90: e28f0f28  add r0, pc, #0xa0
0c004f94: e3a02031  mov r2, #0x31
0c004f98: eb003756  bl 0x0c012cf8 <fn_0c012cf8>
0c004f9c: e5940004  ldr r0, [r4, #0x4]
0c004fa0: e3700a02  cmn r0, #0x2000
0c004fa4: da000001  ble 0x0c004fb0
0c004fa8: e3500a02  cmp r0, #0x2000
0c004fac: ba000003  blt 0x0c004fc0
0c004fb0: e28f1f1c  add r1, pc, #0x70
0c004fb4: e28f0f2a  add r0, pc, #0xa8
0c004fb8: e3a02032  mov r2, #0x32
0c004fbc: eb00374d  bl 0x0c012cf8 <fn_0c012cf8>
0c004fc0: e5940000  ldr r0, [r4, #0x0]
0c004fc4: e1a00980  mov r0, r0, lsl #19
0c004fc8: e1a009a0  mov r0, r0, lsr #19
0c004fcc: e3a02301  mov r2, #0x4000000
0c004fd0: e2422a02  sub r2, r2, #0x2000
0c004fd4: e5b41004  ldr r1, [r4, #0x4]!
0c004fd8: e0021681  and r1, r2, r1, lsl #13
0c004fdc: e1800001  orr r0, r0, r1
0c004fe0: e3a01000  mov r1, #0x0
0c004fe4: e52d1004  str r1, [sp, #-0x4]!
0c004fe8: e58d1000  str r1, [sp, #0x0]
0c004fec: e59d1000  ldr r1, [sp, #0x0]
0c004ff0: e2811001  add r1, r1, #0x1
0c004ff4: e58d1000  str r1, [sp, #0x0]
0c004ff8: e3510003  cmp r1, #0x3
0c004ffc: bafffffa  blt 0x0c004fec
0c005000: e3a01606  mov r1, #0x600000
0c005004: e5a10408  str r0, [r1, #0x408]!
0c005008: e3a00000  mov r0, #0x0
0c00500c: e58d0000  str r0, [sp, #0x0]
0c005010: e59d0000  ldr r0, [sp, #0x0]
0c005014: e2800001  add r0, r0, #0x1
0c005018: e58d0000  str r0, [sp, #0x0]
0c00501c: e3500003  cmp r0, #0x3
0c005020: bafffffa  blt 0x0c005010
0c005024: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c005028: 76696465  .asciz "video_cursor.c"
0c005038: 28702d3e  .asciz "(p->X > -(1 << 13)) && (p->X < (1 << 13))"
0c005064: 28702d3e  .asciz "(p->Y > -(1 << 13)) && (p->Y < (1 << 13))"
DoDGRqstCursorPriority:
0c005090: e5902004  ldr r2, [r0, #0x4]
0c005094: e51f11a0  ldr r1, [pc, #-0x1a0] =0x0403f2fc
0c005098: e5900000  ldr r0, [r0, #0x0]
0c00509c: e0810100  add r0, r1, r0, lsl #2
0c0050a0: e2800a03  add r0, r0, #0x3000
0c0050a4: e5900004  ldr r0, [r0, #0x4]
0c0050a8: e5a02004  str r2, [r0, #0x4]!
0c0050ac: e1a0f00e  mov pc, lr
dgVDacControlWrite:
0c0050b0: e3a03000  mov r3, #0x0
0c0050b4: e52d3004  str r3, [sp, #-0x4]!
0c0050b8: e58d3000  str r3, [sp, #0x0]
0c0050bc: e59d3000  ldr r3, [sp, #0x0]
0c0050c0: e2833001  add r3, r3, #0x1
0c0050c4: e58d3000  str r3, [sp, #0x0]
0c0050c8: e3530003  cmp r3, #0x3
0c0050cc: bafffffa  blt 0x0c0050bc
0c0050d0: e201c0ff  and r12, r1, #0xff
0c0050d4: e3a03b0b  mov r3, #0x2c00
0c0050d8: e2833606  add r3, r3, #0x600000
0c0050dc: e783c500  str r12, [r3, r0, lsl #10]
0c0050e0: e3a0c000  mov r12, #0x0
0c0050e4: e58dc000  str r12, [sp, #0x0]
0c0050e8: e59dc000  ldr r12, [sp, #0x0]
0c0050ec: e28cc001  add r12, r12, #0x1
0c0050f0: e58dc000  str r12, [sp, #0x0]
0c0050f4: e35c0003  cmp r12, #0x3
0c0050f8: bafffffa  blt 0x0c0050e8
0c0050fc: e3a0c000  mov r12, #0x0
0c005100: e58dc000  str r12, [sp, #0x0]
0c005104: e58dc000  str r12, [sp, #0x0]
0c005108: e59dc000  ldr r12, [sp, #0x0]
0c00510c: e28cc001  add r12, r12, #0x1
0c005110: e58dc000  str r12, [sp, #0x0]
0c005114: e35c0003  cmp r12, #0x3
0c005118: bafffffa  blt 0x0c005108
0c00511c: e3a0c0ff  mov r12, #0xff
0c005120: e00c1441  and r1, r12, r1, asr #8
0c005124: e7831500  str r1, [r3, r0, lsl #10]
0c005128: e3a01000  mov r1, #0x0
0c00512c: e58d1000  str r1, [sp, #0x0]
0c005130: e59d1000  ldr r1, [sp, #0x0]
0c005134: e2811001  add r1, r1, #0x1
0c005138: e58d1000  str r1, [sp, #0x0]
0c00513c: e3510003  cmp r1, #0x3
0c005140: bafffffa  blt 0x0c005130
0c005144: e3a01000  mov r1, #0x0
0c005148: e58d1000  str r1, [sp, #0x0]
0c00514c: e58d1000  str r1, [sp, #0x0]
0c005150: e59d1000  ldr r1, [sp, #0x0]
0c005154: e2811001  add r1, r1, #0x1
0c005158: e58d1000  str r1, [sp, #0x0]
0c00515c: e3510003  cmp r1, #0x3
0c005160: bafffffa  blt 0x0c005150
0c005164: e59f1024  ldr r1, [pc, #0x24] =0x00602c08
0c005168: e7812500  str r2, [r1, r0, lsl #10]
0c00516c: e3a00000  mov r0, #0x0
0c005170: e58d0000  str r0, [sp, #0x0]
0c005174: e59d0000  ldr r0, [sp, #0x0]
0c005178: e2800001  add r0, r0, #0x1
0c00517c: e58d0000  str r0, [sp, #0x0]
0c005180: e3500003  cmp r0, #0x3
0c005184: bafffffa  blt 0x0c005174
0c005188: e28dd004  add sp, sp, #0x4
0c00518c: e1a0f00e  mov pc, lr
0c005190: 00602c08  .word 0x00602c08
dgVDacControlRead:
0c005194: e3a02000  mov r2, #0x0
0c005198: e52d2004  str r2, [sp, #-0x4]!
0c00519c: e58d2000  str r2, [sp, #0x0]
0c0051a0: e59d2000  ldr r2, [sp, #0x0]
0c0051a4: e2822001  add r2, r2, #0x1
0c0051a8: e58d2000  str r2, [sp, #0x0]
0c0051ac: e3520003  cmp r2, #0x3
0c0051b0: bafffffa  blt 0x0c0051a0
0c0051b4: e20130ff  and r3, r1, #0xff
0c0051b8: e3a02b0b  mov r2, #0x2c00
0c0051bc: e2822606  add r2, r2, #0x600000
0c0051c0: e7823500  str r3, [r2, r0, lsl #10]
0c0051c4: e3a03000  mov r3, #0x0
0c0051c8: e58d3000  str r3, [sp, #0x0]
0c0051cc: e59d3000  ldr r3, [sp, #0x0]
0c0051d0: e2833001  add r3, r3, #0x1
0c0051d4: e58d3000  str r3, [sp, #0x0]
0c0051d8: e3530003  cmp r3, #0x3
0c0051dc: bafffffa  blt 0x0c0051cc
0c0051e0: e3a03000  mov r3, #0x0
0c0051e4: e58d3000  str r3, [sp, #0x0]
0c0051e8: e58d3000  str r3, [sp, #0x0]
0c0051ec: e59d3000  ldr r3, [sp, #0x0]
0c0051f0: e2833001  add r3, r3, #0x1
0c0051f4: e58d3000  str r3, [sp, #0x0]
0c0051f8: e3530003  cmp r3, #0x3
0c0051fc: bafffffa  blt 0x0c0051ec
0c005200: e3a030ff  mov r3, #0xff
0c005204: e0031441  and r1, r3, r1, asr #8
0c005208: e7821500  str r1, [r2, r0, lsl #10]
0c00520c: e3a01000  mov r1, #0x0
0c005210: e58d1000  str r1, [sp, #0x0]
0c005214: e59d1000  ldr r1, [sp, #0x0]
0c005218: e2811001  add r1, r1, #0x1
0c00521c: e58d1000  str r1, [sp, #0x0]
0c005220: e3510003  cmp r1, #0x3
0c005224: bafffffa  blt 0x0c005214
0c005228: e28dd004  add sp, sp, #0x4
0c00522c: e51f10a4  ldr r1, [pc, #-0xa4] =0x00602c08
0c005230: e7910500  ldr r0, [r1, r0, lsl #10]
0c005234: e1a0f00e  mov pc, lr
0c005238: e3a03000  mov r3, #0x0
0c00523c: e52d3004  str r3, [sp, #-0x4]!
0c005240: e58d3000  str r3, [sp, #0x0]
0c005244: e59d3000  ldr r3, [sp, #0x0]
0c005248: e2833001  add r3, r3, #0x1
0c00524c: e58d3000  str r3, [sp, #0x0]
0c005250: e3530003  cmp r3, #0x3
0c005254: bafffffa  blt 0x0c005244
0c005258: e201c0ff  and r12, r1, #0xff
0c00525c: e3a03b0b  mov r3, #0x2c00
0c005260: e2833606  add r3, r3, #0x600000
0c005264: e783c500  str r12, [r3, r0, lsl #10]
0c005268: e3a0c000  mov r12, #0x0
0c00526c: e58dc000  str r12, [sp, #0x0]
0c005270: e59dc000  ldr r12, [sp, #0x0]
0c005274: e28cc001  add r12, r12, #0x1
0c005278: e58dc000  str r12, [sp, #0x0]
0c00527c: e35c0003  cmp r12, #0x3
0c005280: bafffffa  blt 0x0c005270
0c005284: e3a0c000  mov r12, #0x0
0c005288: e58dc000  str r12, [sp, #0x0]
0c00528c: e58dc000  str r12, [sp, #0x0]
0c005290: e59dc000  ldr r12, [sp, #0x0]
0c005294: e28cc001  add r12, r12, #0x1
0c005298: e58dc000  str r12, [sp, #0x0]
0c00529c: e35c0003  cmp r12, #0x3
0c0052a0: bafffffa  blt 0x0c005290
0c0052a4: e3a0c0ff  mov r12, #0xff
0c0052a8: e00c1441  and r1, r12, r1, asr #8
0c0052ac: e7831500  str r1, [r3, r0, lsl #10]
0c0052b0: e3a01000  mov r1, #0x0
0c0052b4: e58d1000  str r1, [sp, #0x0]
0c0052b8: e59d1000  ldr r1, [sp, #0x0]
0c0052bc: e2811001  add r1, r1, #0x1
0c0052c0: e58d1000  str r1, [sp, #0x0]
0c0052c4: e3510003  cmp r1, #0x3
0c0052c8: bafffffa  blt 0x0c0052b8
0c0052cc: e3a01000  mov r1, #0x0
0c0052d0: e58d1000  str r1, [sp, #0x0]
0c0052d4: e58d1000  str r1, [sp, #0x0]
0c0052d8: e59d1000  ldr r1, [sp, #0x0]
0c0052dc: e2811001  add r1, r1, #0x1
0c0052e0: e58d1000  str r1, [sp, #0x0]
0c0052e4: e3510003  cmp r1, #0x3
0c0052e8: bafffffa  blt 0x0c0052d8
0c0052ec: e59f1024  ldr r1, [pc, #0x24] =0x00602c04
0c0052f0: e7812500  str r2, [r1, r0, lsl #10]
0c0052f4: e3a00000  mov r0, #0x0
0c0052f8: e58d0000  str r0, [sp, #0x0]
0c0052fc: e59d0000  ldr r0, [sp, #0x0]
0c005300: e2800001  add r0, r0, #0x1
0c005304: e58d0000  str r0, [sp, #0x0]
0c005308: e3500003  cmp r0, #0x3
0c00530c: bafffffa  blt 0x0c0052fc
0c005310: e28dd004  add sp, sp, #0x4
0c005314: e1a0f00e  mov pc, lr
0c005318: 00602c04  .word 0x00602c04
0c00531c: e3a02000  mov r2, #0x0
0c005320: e52d2004  str r2, [sp, #-0x4]!
0c005324: e58d2000  str r2, [sp, #0x0]
0c005328: e59d2000  ldr r2, [sp, #0x0]
0c00532c: e2822001  add r2, r2, #0x1
0c005330: e58d2000  str r2, [sp, #0x0]
0c005334: e3520003  cmp r2, #0x3
0c005338: bafffffa  blt 0x0c005328
0c00533c: e20130ff  and r3, r1, #0xff
0c005340: e3a02b0b  mov r2, #0x2c00
0c005344: e2822606  add r2, r2, #0x600000
0c005348: e7823500  str r3, [r2, r0, lsl #10]
0c00534c: e3a03000  mov r3, #0x0
0c005350: e58d3000  str r3, [sp, #0x0]
0c005354: e59d3000  ldr r3, [sp, #0x0]
0c005358: e2833001  add r3, r3, #0x1
0c00535c: e58d3000  str r3, [sp, #0x0]
0c005360: e3530003  cmp r3, #0x3
0c005364: bafffffa  blt 0x0c005354
0c005368: e3a03000  mov r3, #0x0
0c00536c: e58d3000  str r3, [sp, #0x0]
0c005370: e58d3000  str r3, [sp, #0x0]
0c005374: e59d3000  ldr r3, [sp, #0x0]
0c005378: e2833001  add r3, r3, #0x1
0c00537c: e58d3000  str r3, [sp, #0x0]
0c005380: e3530003  cmp r3, #0x3
0c005384: bafffffa  blt 0x0c005374
0c005388: e3a030ff  mov r3, #0xff
0c00538c: e0031441  and r1, r3, r1, asr #8
0c005390: e7821500  str r1, [r2, r0, lsl #10]
0c005394: e3a01000  mov r1, #0x0
0c005398: e58d1000  str r1, [sp, #0x0]
0c00539c: e59d1000  ldr r1, [sp, #0x0]
0c0053a0: e2811001  add r1, r1, #0x1
0c0053a4: e58d1000  str r1, [sp, #0x0]
0c0053a8: e3510003  cmp r1, #0x3
0c0053ac: bafffffa  blt 0x0c00539c
0c0053b0: e28dd004  add sp, sp, #0x4
0c0053b4: e51f10a4  ldr r1, [pc, #-0xa4] =0x00602c04
0c0053b8: e7910500  ldr r0, [r1, r0, lsl #10]
0c0053bc: e1a0f00e  mov pc, lr
dgVDacModeWrite:
0c0053c0: e3a02000  mov r2, #0x0
0c0053c4: e52d2004  str r2, [sp, #-0x4]!
0c0053c8: e58d2000  str r2, [sp, #0x0]
0c0053cc: e59d2000  ldr r2, [sp, #0x0]
0c0053d0: e2822001  add r2, r2, #0x1
0c0053d4: e58d2000  str r2, [sp, #0x0]
0c0053d8: e3520003  cmp r2, #0x3
0c0053dc: bafffffa  blt 0x0c0053cc
0c0053e0: e59f2024  ldr r2, [pc, #0x24] =0x00602c0c
0c0053e4: e7821500  str r1, [r2, r0, lsl #10]
0c0053e8: e3a00000  mov r0, #0x0
0c0053ec: e58d0000  str r0, [sp, #0x0]
0c0053f0: e59d0000  ldr r0, [sp, #0x0]
0c0053f4: e2800001  add r0, r0, #0x1
0c0053f8: e58d0000  str r0, [sp, #0x0]
0c0053fc: e3500003  cmp r0, #0x3
0c005400: bafffffa  blt 0x0c0053f0
0c005404: e28dd004  add sp, sp, #0x4
0c005408: e1a0f00e  mov pc, lr
0c00540c: 00602c0c  .word 0x00602c0c
0c005410: e51f100c  ldr r1, [pc, #-0xc] =0x00602c0c
0c005414: e7910500  ldr r0, [r1, r0, lsl #10]
0c005418: e1a0f00e  mov pc, lr
fn_0c00541c:
0c00541c: e1a0c00d  mov r12, sp
0c005420: e92dd8f0  stmdb sp!, {r4,r5,r6,r7,r11,r12,lr,pc}
0c005424: e24cb004  sub r11, r12, #0x4
0c005428: e1b06000  movs r6, r0
0c00542c: e1a05001  mov r5, r1
0c005430: e1a04002  mov r4, r2
0c005434: e1a070c0  mov r7, r0, asr #1
0c005438: 491ba8f0  ldmmidb r11, {r4,r5,r6,r7,r11,sp,pc}
0c00543c: e3560007  cmp r6, #0x7
0c005440: c91ba8f0  ldmgtdb r11, {r4,r5,r6,r7,r11,sp,pc}
0c005444: e3350000  teq r5, #0x0
0c005448: 13350001  teqne r5, #0x1
0c00544c: 13350002  teqne r5, #0x2
0c005450: 0a000003  beq 0x0c005464
0c005454: e28f1f1c  add r1, pc, #0x70
0c005458: e28f0f1e  add r0, pc, #0x78
0c00545c: e3a02080  mov r2, #0x80
0c005460: eb003624  bl 0x0c012cf8 <fn_0c012cf8>
0c005464: e3160001  tst r6, #0x1
0c005468: 1a000056  bne 0x0c0055c8
0c00546c: e3350000  teq r5, #0x0
0c005470: 0a00002e  beq 0x0c005530
0c005474: e3350001  teq r5, #0x1
0c005478: 0a00003f  beq 0x0c00557c
0c00547c: e3350002  teq r5, #0x2
0c005480: 191ba8f0  ldmnedb r11, {r4,r5,r6,r7,r11,sp,pc}
0c005484: e3a00000  mov r0, #0x0
0c005488: e52d0004  str r0, [sp, #-0x4]!
0c00548c: e58d0000  str r0, [sp, #0x0]
0c005490: e59d0000  ldr r0, [sp, #0x0]
0c005494: e2800001  add r0, r0, #0x1
0c005498: e58d0000  str r0, [sp, #0x0]
0c00549c: e3500003  cmp r0, #0x3
0c0054a0: bafffffa  blt 0x0c005490
0c0054a4: e59f0080  ldr r0, [pc, #0x80] =0x00604c3c
0c0054a8: e7804507  str r4, [r0, r7, lsl #10]
0c0054ac: e3a00000  mov r0, #0x0
0c0054b0: e58d0000  str r0, [sp, #0x0]
0c0054b4: e59d0000  ldr r0, [sp, #0x0]
0c0054b8: e2800001  add r0, r0, #0x1
0c0054bc: e58d0000  str r0, [sp, #0x0]
0c0054c0: e3500003  cmp r0, #0x3
0c0054c4: bafffffa  blt 0x0c0054b4
0c0054c8: ea000055  b 0x0c005624
0c0054cc: 76696465  .asciz "video_dac.c"
0c0054d8: 6e547970  .asciz "nType == DG_GDAC_GAIN || nType == DG_GDAC_FINE_HPHASE || nType == DG_GDAC_HSYNC_SEL"
0c00552c: 00604c3c  .word 0x00604c3c
0c005530: e3a00000  mov r0, #0x0
0c005534: e52d0004  str r0, [sp, #-0x4]!
0c005538: e58d0000  str r0, [sp, #0x0]
0c00553c: e59d0000  ldr r0, [sp, #0x0]
0c005540: e2800001  add r0, r0, #0x1
0c005544: e58d0000  str r0, [sp, #0x0]
0c005548: e3500003  cmp r0, #0x3
0c00554c: bafffffa  blt 0x0c00553c
0c005550: e59f0020  ldr r0, [pc, #0x20] =0x00604c10
0c005554: e7804507  str r4, [r0, r7, lsl #10]
0c005558: e3a00000  mov r0, #0x0
0c00555c: e58d0000  str r0, [sp, #0x0]
0c005560: e59d0000  ldr r0, [sp, #0x0]
0c005564: e2800001  add r0, r0, #0x1
0c005568: e58d0000  str r0, [sp, #0x0]
0c00556c: e3500003  cmp r0, #0x3
0c005570: bafffffa  blt 0x0c005560
0c005574: ea00002a  b 0x0c005624
0c005578: 00604c10  .word 0x00604c10
0c00557c: e3a00000  mov r0, #0x0
0c005580: e52d0004  str r0, [sp, #-0x4]!
0c005584: e58d0000  str r0, [sp, #0x0]
0c005588: e59d0000  ldr r0, [sp, #0x0]
0c00558c: e2800001  add r0, r0, #0x1
0c005590: e58d0000  str r0, [sp, #0x0]
0c005594: e3500003  cmp r0, #0x3
0c005598: bafffffa  blt 0x0c005588
0c00559c: e59f0020  ldr r0, [pc, #0x20] =0x00604c14
0c0055a0: e7804507  str r4, [r0, r7, lsl #10]
0c0055a4: e3a00000  mov r0, #0x0
0c0055a8: e58d0000  str r0, [sp, #0x0]
0c0055ac: e59d0000  ldr r0, [sp, #0x0]
0c0055b0: e2800001  add r0, r0, #0x1
0c0055b4: e58d0000  str r0, [sp, #0x0]
0c0055b8: e3500003  cmp r0, #0x3
0c0055bc: bafffffa  blt 0x0c0055ac
0c0055c0: ea000017  b 0x0c005624
0c0055c4: 00604c14  .word 0x00604c14
0c0055c8: e3350000  teq r5, #0x0
0c0055cc: 0a000016  beq 0x0c00562c
0c0055d0: e3350001  teq r5, #0x1
0c0055d4: 0a000027  beq 0x0c005678
0c0055d8: e3350002  teq r5, #0x2
0c0055dc: 191ba8f0  ldmnedb r11, {r4,r5,r6,r7,r11,sp,pc}
0c0055e0: e3a00000  mov r0, #0x0
0c0055e4: e52d0004  str r0, [sp, #-0x4]!
0c0055e8: e58d0000  str r0, [sp, #0x0]
0c0055ec: e59d0000  ldr r0, [sp, #0x0]
0c0055f0: e2800001  add r0, r0, #0x1
0c0055f4: e58d0000  str r0, [sp, #0x0]
0c0055f8: e3500003  cmp r0, #0x3
0c0055fc: bafffffa  blt 0x0c0055ec
0c005600: e59f0020  ldr r0, [pc, #0x20] =0x00604c5c
0c005604: e7804507  str r4, [r0, r7, lsl #10]
0c005608: e3a00000  mov r0, #0x0
0c00560c: e58d0000  str r0, [sp, #0x0]
0c005610: e59d0000  ldr r0, [sp, #0x0]
0c005614: e2800001  add r0, r0, #0x1
0c005618: e58d0000  str r0, [sp, #0x0]
0c00561c: e3500003  cmp r0, #0x3
0c005620: bafffffa  blt 0x0c005610
0c005624: e91ba8f0  ldmdb r11, {r4,r5,r6,r7,r11,sp,pc}
0c005628: 00604c5c  .word 0x00604c5c
0c00562c: e3a00000  mov r0, #0x0
0c005630: e52d0004  str r0, [sp, #-0x4]!
0c005634: e58d0000  str r0, [sp, #0x0]
0c005638: e59d0000  ldr r0, [sp, #0x0]
0c00563c: e2800001  add r0, r0, #0x1
0c005640: e58d0000  str r0, [sp, #0x0]
0c005644: e3500003  cmp r0, #0x3
0c005648: bafffffa  blt 0x0c005638
0c00564c: e59f0020  ldr r0, [pc, #0x20] =0x00604c08
0c005650: e7804507  str r4, [r0, r7, lsl #10]
0c005654: e3a00000  mov r0, #0x0
0c005658: e58d0000  str r0, [sp, #0x0]
0c00565c: e59d0000  ldr r0, [sp, #0x0]
0c005660: e2800001  add r0, r0, #0x1
0c005664: e58d0000  str r0, [sp, #0x0]
0c005668: e3500003  cmp r0, #0x3
0c00566c: bafffffa  blt 0x0c00565c
0c005670: eaffffeb  b 0x0c005624
0c005674: 00604c08  .word 0x00604c08
0c005678: e3a00000  mov r0, #0x0
0c00567c: e52d0004  str r0, [sp, #-0x4]!
0c005680: e58d0000  str r0, [sp, #0x0]
0c005684: e59d0000  ldr r0, [sp, #0x0]
0c005688: e2800001  add r0, r0, #0x1
0c00568c: e58d0000  str r0, [sp, #0x0]
0c005690: e3500003  cmp r0, #0x3
0c005694: bafffffa  blt 0x0c005684
0c005698: e59f0020  ldr r0, [pc, #0x20] =0x00604c0c
0c00569c: e7804507  str r4, [r0, r7, lsl #10]
0c0056a0: e3a00000  mov r0, #0x0
0c0056a4: e58d0000  str r0, [sp, #0x0]
0c0056a8: e59d0000  ldr r0, [sp, #0x0]
0c0056ac: e2800001  add r0, r0, #0x1
0c0056b0: e58d0000  str r0, [sp, #0x0]
0c0056b4: e3500003  cmp r0, #0x3
0c0056b8: bafffffa  blt 0x0c0056a8
0c0056bc: eaffffd8  b 0x0c005624
0c0056c0: 00604c0c  .word 0x00604c0c
dgSetDacPixelMux:
0c0056c4: e3500000  cmp r0, #0x0
0c0056c8: ba000001  blt 0x0c0056d4
0c0056cc: e3500007  cmp r0, #0x7
0c0056d0: da000002  ble 0x0c0056e0
0c0056d4: e33000de  teq r0, #0xde
0c0056d8: 11a0f00e  movne pc, lr
0c0056dc: ea000001  b 0x0c0056e8
0c0056e0: e33000de  teq r0, #0xde
0c0056e4: 1a000000  bne 0x0c0056ec
0c0056e8: e3a000dc  mov r0, #0xdc
0c0056ec: e1a02001  mov r2, r1
0c0056f0: e3310001  teq r1, #0x1
0c0056f4: 03a01000  moveq r1, #0x0
0c0056f8: 0a000007  beq 0x0c00571c
0c0056fc: e3320002  teq r2, #0x2
0c005700: 03a01001  moveq r1, #0x1
0c005704: 0a000004  beq 0x0c00571c
0c005708: e3320004  teq r2, #0x4
0c00570c: 11a02000  movne r2, r0
0c005710: 128f0f05  addne r0, pc, #0x14
0c005714: 1a003171  bne 0x0c011ce0 <fn_0c011ce0>
0c005718: e3a01003  mov r1, #0x3
0c00571c: e3a020c0  mov r2, #0xc0
0c005720: e0022301  and r2, r2, r1, lsl #6
0c005724: e3a01007  mov r1, #0x7
0c005728: eafffe60  b 0x0c0050b0 <dgVDacControlWrite>
0c00572c: 696c6c65  .asciz "illegal mux ratio %d for DAC %d\n"
fn_0c005750:
0c005750: e1a0c00d  mov r12, sp
0c005754: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c005758: e24cb004  sub r11, r12, #0x4
0c00575c: e1b04000  movs r4, r0
0c005760: e5915000  ldr r5, [r1, #0x0]
0c005764: 4a000001  bmi 0x0c005770
0c005768: e3540007  cmp r4, #0x7
0c00576c: da000002  ble 0x0c00577c
0c005770: e33400de  teq r4, #0xde
0c005774: 191ba830  ldmnedb r11, {r4,r5,r11,sp,pc}
0c005778: ea000001  b 0x0c005784
0c00577c: e33400de  teq r4, #0xde
0c005780: 1a000000  bne 0x0c005788
0c005784: e3a040dc  mov r4, #0xdc
0c005788: e59f0058  ldr r0, [pc, #0x58] =0x0403f2fc
0c00578c: e3350000  teq r5, #0x0
0c005790: 1a000004  bne 0x0c0057a8
0c005794: e0801104  add r1, r0, r4, lsl #2
0c005798: e2811a03  add r1, r1, #0x3000
0c00579c: e5911004  ldr r1, [r1, #0x4]
0c0057a0: e591116c  ldr r1, [r1, #0x16c]
0c0057a4: e1a05fa1  mov r5, r1, lsr #31
0c0057a8: e5900000  ldr r0, [r0, #0x0]
0c0057ac: e3100b01  tst r0, #0x400
0c0057b0: 0a000005  beq 0x0c0057cc
0c0057b4: e3350000  teq r5, #0x0
0c0057b8: 028f1f0b  addeq r1, pc, #0x2c
0c0057bc: 124f1f1e  subne r1, pc, #0x78
0c0057c0: e1a02004  mov r2, r4
0c0057c4: e28f0f09  add r0, pc, #0x24
0c0057c8: eb003144  bl 0x0c011ce0 <fn_0c011ce0>
0c0057cc: e3350000  teq r5, #0x0
0c0057d0: 03a020ff  moveq r2, #0xff
0c0057d4: 13a02000  movne r2, #0x0
0c0057d8: e1a00004  mov r0, r4
0c0057dc: e3a01004  mov r1, #0x4
0c0057e0: e91b6830  ldmdb r11, {r4,r5,r11,sp,lr}
0c0057e4: eafffe31  b 0x0c0050b0 <dgVDacControlWrite>
0c0057e8: 0403f2fc  .word 0x0403f2fc
0c0057ec: 756e0000  strvcb r0, [lr, #-0x0]!
0c0057f0: 2573626c  .asciz "%sblanking channel %d\n"
DoDGRqstChannelBlanking:
0c005808: e1a0c00d  mov r12, sp
0c00580c: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c005810: e24cb004  sub r11, r12, #0x4
0c005814: e1a04000  mov r4, r0
0c005818: e5901004  ldr r1, [r0, #0x4]
0c00581c: e51f503c  ldr r5, [pc, #-0x3c] =0x0403f2fc
0c005820: e5900000  ldr r0, [r0, #0x0]
0c005824: e0850100  add r0, r5, r0, lsl #2
0c005828: e2800a03  add r0, r0, #0x3000
0c00582c: e5900004  ldr r0, [r0, #0x4]
0c005830: e5b0216c  ldr r2, [r0, #0x16c]!
0c005834: e3c22102  bic r2, r2, #0x80000000
0c005838: e2011001  and r1, r1, #0x1
0c00583c: e1821f81  orr r1, r2, r1, lsl #31
0c005840: e5801000  str r1, [r0, #0x0]
0c005844: e2850a03  add r0, r5, #0x3000
0c005848: e5900440  ldr r0, [r0, #0x440]
0c00584c: e3300000  teq r0, #0x0
0c005850: 02841004  addeq r1, r4, #0x4
0c005854: 05940000  ldreq r0, [r4, #0x0]
0c005858: 0bffffbc  bleq 0x0c005750 <fn_0c005750>
0c00585c: e5950000  ldr r0, [r5, #0x0]
0c005860: e3100b01  tst r0, #0x400
0c005864: 091ba830  ldmeqdb r11, {r4,r5,r11,sp,pc}
0c005868: e5940004  ldr r0, [r4, #0x4]
0c00586c: e3300000  teq r0, #0x0
0c005870: 024f2f4b  subeq r2, pc, #0x12c
0c005874: 124f2f24  subne r2, pc, #0x90
0c005878: e5941000  ldr r1, [r4, #0x0]
0c00587c: e28f0f01  add r0, pc, #0x4
0c005880: e91b6830  ldmdb r11, {r4,r5,r11,sp,lr}
0c005884: ea003115  b 0x0c011ce0 <fn_0c011ce0>
0c005888: 6368616e  .asciz "channel %d %sblanked\n"
DoDGRqstGetChannelBlanking:
0c0058a0: e1a0c00d  mov r12, sp
0c0058a4: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c0058a8: e24cb004  sub r11, r12, #0x4
0c0058ac: e1a04000  mov r4, r0
0c0058b0: e51f50d0  ldr r5, [pc, #-0xd0] =0x0403f2fc
0c0058b4: e5900000  ldr r0, [r0, #0x0]
0c0058b8: e0850100  add r0, r5, r0, lsl #2
0c0058bc: e2800a03  add r0, r0, #0x3000
0c0058c0: e5900004  ldr r0, [r0, #0x4]
0c0058c4: e590016c  ldr r0, [r0, #0x16c]
0c0058c8: e1a00fa0  mov r0, r0, lsr #31
0c0058cc: e52d0004  str r0, [sp, #-0x4]!
0c0058d0: e2850a03  add r0, r5, #0x3000
0c0058d4: e5900440  ldr r0, [r0, #0x440]
0c0058d8: e3500000  cmp r0, #0x0
0c0058dc: c3a00001  movgt r0, #0x1
0c0058e0: c58d0000  strgt r0, [sp, #0x0]
0c0058e4: e1a0100d  mov r1, sp
0c0058e8: e3a02004  mov r2, #0x4
0c0058ec: e3a00009  mov r0, #0x9
0c0058f0: ebfffcfa  bl 0x0c004ce0 <fn_0c004ce0>
0c0058f4: e5950000  ldr r0, [r5, #0x0]
0c0058f8: e3100b01  tst r0, #0x400
0c0058fc: 0a000003  beq 0x0c005910
0c005900: e59d2000  ldr r2, [sp, #0x0]
0c005904: e5941000  ldr r1, [r4, #0x0]
0c005908: e28f0f01  add r0, pc, #0x4
0c00590c: eb0030f3  bl 0x0c011ce0 <fn_0c011ce0>
0c005910: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c005914: 67657420  .asciz "get channel blanking returned %d\n"
DoDGRqstTempBlankAllChannels:
0c005938: e1a0c00d  mov r12, sp
0c00593c: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c005940: e24cb004  sub r11, r12, #0x4
0c005944: e1a04000  mov r4, r0
0c005948: e5901000  ldr r1, [r0, #0x0]
0c00594c: e51f516c  ldr r5, [pc, #-0x16c] =0x0403f2fc
0c005950: e2850dd1  add r0, r5, #0x3440
0c005954: e3310000  teq r1, #0x0
0c005958: 0a000005  beq 0x0c005974
0c00595c: e5902000  ldr r2, [r0, #0x0]
0c005960: e2821001  add r1, r2, #0x1
0c005964: e3520000  cmp r2, #0x0
0c005968: e5801000  str r1, [r0, #0x0]
0c00596c: c91ba830  ldmgtdb r11, {r4,r5,r11,sp,pc}
0c005970: ea000009  b 0x0c00599c
0c005974: e5901000  ldr r1, [r0, #0x0]
0c005978: e2411001  sub r1, r1, #0x1
0c00597c: e5801000  str r1, [r0, #0x0]
0c005980: e3510000  cmp r1, #0x0
0c005984: c91ba830  ldmgtdb r11, {r4,r5,r11,sp,pc}
0c005988: e2850a03  add r0, r5, #0x3000
0c00598c: e5901440  ldr r1, [r0, #0x440]
0c005990: e3510000  cmp r1, #0x0
0c005994: b3a01000  movlt r1, #0x0
0c005998: b5a01440  strlt r1, [r0, #0x440]!
0c00599c: e1a01004  mov r1, r4
0c0059a0: e59f001c  ldr r0, [pc, #0x1c] =0x0c005750 <fn_0c005750>
0c0059a4: eb001eb3  bl 0x0c00d478 <fn_0c00d478>
0c0059a8: e5950000  ldr r0, [r5, #0x0]
0c0059ac: e3100b01  tst r0, #0x400
0c0059b0: 15941000  ldrne r1, [r4, #0x0]
0c0059b4: 128f0f03  addne r0, pc, #0xc
0c0059b8: 191b6830  ldmnedb r11, {r4,r5,r11,sp,lr}
0c0059bc: 1a0030c7  bne 0x0c011ce0 <fn_0c011ce0>
0c0059c0: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c0059c4: 0c005750  .word 0x0c005750 <fn_0c005750>
0c0059c8: 54656d70  .asciz "TempBlankAllChannels %d\n"
0c0059e4: e1a0c00d  mov r12, sp
0c0059e8: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c0059ec: e24cb004  sub r11, r12, #0x4
0c0059f0: e52d0004  str r0, [sp, #-0x4]!
0c0059f4: e1a0000d  mov r0, sp
0c0059f8: ebffffce  bl 0x0c005938 <DoDGRqstTempBlankAllChannels>
0c0059fc: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstOutputGain:
0c005a00: e92d4000  stmdb sp!, {lr}
0c005a04: e5901000  ldr r1, [r0, #0x0]
0c005a08: e3510000  cmp r1, #0x0
0c005a0c: b8bd8000  ldmltia sp!, {pc}
0c005a10: e3510007  cmp r1, #0x7
0c005a14: c8bd8000  ldmgtia sp!, {pc}
0c005a18: e5902004  ldr r2, [r0, #0x4]
0c005a1c: e20230ff  and r3, r2, #0xff
0c005a20: e26320ff  rsb r2, r3, #0xff
0c005a24: e51fc244  ldr r12, [pc, #-0x244] =0x0403f2fc
0c005a28: e3310001  teq r1, #0x1
0c005a2c: 1a00001b  bne 0x0c005aa0
0c005a30: e28ce004  add lr, r12, #0x4
0c005a34: e28eea03  add lr, lr, #0x3000
0c005a38: e59ee004  ldr lr, [lr, #0x4]
0c005a3c: e59ee16c  ldr lr, [lr, #0x16c]
0c005a40: e31e0301  tst lr, #0x4000000
0c005a44: 0a000015  beq 0x0c005aa0
0c005a48: e28c0a03  add r0, r12, #0x3000
0c005a4c: e5a0342c  str r3, [r0, #0x42c]!
0c005a50: e3a00000  mov r0, #0x0
0c005a54: e52d0004  str r0, [sp, #-0x4]!
0c005a58: e58d0000  str r0, [sp, #0x0]
0c005a5c: e59d0000  ldr r0, [sp, #0x0]
0c005a60: e2800001  add r0, r0, #0x1
0c005a64: e58d0000  str r0, [sp, #0x0]
0c005a68: e3500003  cmp r0, #0x3
0c005a6c: bafffffa  blt 0x0c005a5c
0c005a70: e3a00a05  mov r0, #0x5000
0c005a74: e2800606  add r0, r0, #0x600000
0c005a78: e5a02c20  str r2, [r0, #0xc20]!
0c005a7c: e3a00000  mov r0, #0x0
0c005a80: e58d0000  str r0, [sp, #0x0]
0c005a84: e59d0000  ldr r0, [sp, #0x0]
0c005a88: e2800001  add r0, r0, #0x1
0c005a8c: e58d0000  str r0, [sp, #0x0]
0c005a90: e3500003  cmp r0, #0x3
0c005a94: bafffffa  blt 0x0c005a84
0c005a98: e28dd004  add sp, sp, #0x4
0c005a9c: e8bd8000  ldmia sp!, {pc}
0c005aa0: e08c1101  add r1, r12, r1, lsl #2
0c005aa4: e2811a03  add r1, r1, #0x3000
0c005aa8: e5911004  ldr r1, [r1, #0x4]
0c005aac: e5a1314c  str r3, [r1, #0x14c]!
0c005ab0: e5900000  ldr r0, [r0, #0x0]
0c005ab4: e3a01000  mov r1, #0x0
0c005ab8: e8bd4000  ldmia sp!, {lr}
0c005abc: eafffe56  b 0x0c00541c <fn_0c00541c>
DoDGRqstGetOutputGain:
0c005ac0: e1a0c00d  mov r12, sp
0c005ac4: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c005ac8: e24cb004  sub r11, r12, #0x4
0c005acc: e24dd004  sub sp, sp, #0x4
0c005ad0: e5901000  ldr r1, [r0, #0x0]
0c005ad4: e51f02f4  ldr r0, [pc, #-0x2f4] =0x0403f2fc
0c005ad8: e3310001  teq r1, #0x1
0c005adc: 1a000007  bne 0x0c005b00
0c005ae0: e2802004  add r2, r0, #0x4
0c005ae4: e2822a03  add r2, r2, #0x3000
0c005ae8: e5922004  ldr r2, [r2, #0x4]
0c005aec: e592216c  ldr r2, [r2, #0x16c]
0c005af0: e3120301  tst r2, #0x4000000
0c005af4: 12800a03  addne r0, r0, #0x3000
0c005af8: 1590042c  ldrne r0, [r0, #0x42c]
0c005afc: 1a000003  bne 0x0c005b10
0c005b00: e0800101  add r0, r0, r1, lsl #2
0c005b04: e2800a03  add r0, r0, #0x3000
0c005b08: e5900004  ldr r0, [r0, #0x4]
0c005b0c: e590014c  ldr r0, [r0, #0x14c]
0c005b10: e58d0000  str r0, [sp, #0x0]
0c005b14: e1a0100d  mov r1, sp
0c005b18: e3a02004  mov r2, #0x4
0c005b1c: e3a0000a  mov r0, #0xa
0c005b20: ebfffc6e  bl 0x0c004ce0 <fn_0c004ce0>
0c005b24: e91ba800  ldmdb r11, {r11,sp,pc}
0c005b28: e1a0c00d  mov r12, sp
0c005b2c: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c005b30: e24cb004  sub r11, r12, #0x4
0c005b34: e1b04000  movs r4, r0
0c005b38: 4a000001  bmi 0x0c005b44
0c005b3c: e3540007  cmp r4, #0x7
0c005b40: da000002  ble 0x0c005b50
0c005b44: e33400de  teq r4, #0xde
0c005b48: 191ba870  ldmnedb r11, {r4,r5,r6,r11,sp,pc}
0c005b4c: ea000001  b 0x0c005b58
0c005b50: e33400de  teq r4, #0xde
0c005b54: 1a000000  bne 0x0c005b5c
0c005b58: e3a040dc  mov r4, #0xdc
0c005b5c: e1a00004  mov r0, r4
0c005b60: e3a01006  mov r1, #0x6
0c005b64: ebfffd8a  bl 0x0c005194 <dgVDacControlRead>
0c005b68: e2001008  and r1, r0, #0x8
0c005b6c: e1a061a1  mov r6, r1, lsr #3
0c005b70: e2000004  and r0, r0, #0x4
0c005b74: e1a05120  mov r5, r0, lsr #2
0c005b78: e1a00004  mov r0, r4
0c005b7c: e3a01008  mov r1, #0x8
0c005b80: ebfffd83  bl 0x0c005194 <dgVDacControlRead>
0c005b84: e2001002  and r1, r0, #0x2
0c005b88: e1a020a1  mov r2, r1, lsr #1
0c005b8c: e2001004  and r1, r0, #0x4
0c005b90: e1a01121  mov r1, r1, lsr #2
0c005b94: e3350000  teq r5, #0x0
0c005b98: 03320000  teqeq r2, #0x0
0c005b9c: 03310000  teqeq r1, #0x0
0c005ba0: 13a01001  movne r1, #0x1
0c005ba4: 03a01000  moveq r1, #0x0
0c005ba8: e1911086  orrs r1, r1, r6, lsl #1
0c005bac: 03a01002  moveq r1, #0x2
0c005bb0: 0a000003  beq 0x0c005bc4
0c005bb4: e3310001  teq r1, #0x1
0c005bb8: 13310002  teqne r1, #0x2
0c005bbc: 03a01001  moveq r1, #0x1
0c005bc0: 13a01000  movne r1, #0x0
0c005bc4: e3c00018  bic r0, r0, #0x18
0c005bc8: e3a02018  mov r2, #0x18
0c005bcc: e0021181  and r1, r2, r1, lsl #3
0c005bd0: e1802001  orr r2, r0, r1
0c005bd4: e1a00004  mov r0, r4
0c005bd8: e3a01008  mov r1, #0x8
0c005bdc: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c005be0: eafffd32  b 0x0c0050b0 <dgVDacControlWrite>
DoDGRqstSyncSelects:
0c005be4: e1a0c00d  mov r12, sp
0c005be8: e92dd8f0  stmdb sp!, {r4,r5,r6,r7,r11,r12,lr,pc}
0c005bec: e24cb004  sub r11, r12, #0x4
0c005bf0: e1a04000  mov r4, r0
0c005bf4: e5900000  ldr r0, [r0, #0x0]
0c005bf8: e3500000  cmp r0, #0x0
0c005bfc: b91ba8f0  ldmltdb r11, {r4,r5,r6,r7,r11,sp,pc}
0c005c00: e3500007  cmp r0, #0x7
0c005c04: c91ba8f0  ldmgtdb r11, {r4,r5,r6,r7,r11,sp,pc}
0c005c08: e3a06001  mov r6, #0x1
0c005c0c: e3a05000  mov r5, #0x0
0c005c10: e5941004  ldr r1, [r4, #0x4]
0c005c14: e3310000  teq r1, #0x0
0c005c18: 0a00001b  beq 0x0c005c8c
0c005c1c: e3a07004  mov r7, #0x4
0c005c20: e3310001  teq r1, #0x1
0c005c24: 0a000021  beq 0x0c005cb0
0c005c28: e3310002  teq r1, #0x2
0c005c2c: 0a00002a  beq 0x0c005cdc
0c005c30: e3310003  teq r1, #0x3
0c005c34: 1a000034  bne 0x0c005d0c
0c005c38: e5941008  ldr r1, [r4, #0x8]
0c005c3c: e3310001  teq r1, #0x1
0c005c40: 11a01005  movne r1, r5
0c005c44: 01a01006  moveq r1, r6
0c005c48: e51f2468  ldr r2, [pc, #-0x468] =0x0403f2fc
0c005c4c: e0820100  add r0, r2, r0, lsl #2
0c005c50: e2800a03  add r0, r0, #0x3000
0c005c54: e5900004  ldr r0, [r0, #0x4]
0c005c58: e5b0216c  ldr r2, [r0, #0x16c]!
0c005c5c: e3c22202  bic r2, r2, #0x20000000
0c005c60: e2011001  and r1, r1, #0x1
0c005c64: e1821e81  orr r1, r2, r1, lsl #29
0c005c68: e5801000  str r1, [r0, #0x0]
0c005c6c: e5940008  ldr r0, [r4, #0x8]
0c005c70: e3300001  teq r0, #0x1
0c005c74: 01a02005  moveq r2, r5
0c005c78: 11a02006  movne r2, r6
0c005c7c: e3a01002  mov r1, #0x2
0c005c80: e5940000  ldr r0, [r4, #0x0]
0c005c84: ebfffde4  bl 0x0c00541c <fn_0c00541c>
0c005c88: ea000024  b 0x0c005d20
0c005c8c: e3a01008  mov r1, #0x8
0c005c90: ebfffd3f  bl 0x0c005194 <dgVDacControlRead>
0c005c94: e3c01002  bic r1, r0, #0x2
0c005c98: e5940008  ldr r0, [r4, #0x8]
0c005c9c: e3300001  teq r0, #0x1
0c005ca0: 01a05006  moveq r5, r6
0c005ca4: e3a00002  mov r0, #0x2
0c005ca8: e0000085  and r0, r0, r5, lsl #1
0c005cac: ea000011  b 0x0c005cf8
0c005cb0: e3a01006  mov r1, #0x6
0c005cb4: ebfffd36  bl 0x0c005194 <dgVDacControlRead>
0c005cb8: e3c01004  bic r1, r0, #0x4
0c005cbc: e5940008  ldr r0, [r4, #0x8]
0c005cc0: e3300001  teq r0, #0x1
0c005cc4: 01a05006  moveq r5, r6
0c005cc8: e0070105  and r0, r7, r5, lsl #2
0c005ccc: e1812000  orr r2, r1, r0
0c005cd0: e3a01006  mov r1, #0x6
0c005cd4: e5940000  ldr r0, [r4, #0x0]
0c005cd8: ea000009  b 0x0c005d04
0c005cdc: e3a01008  mov r1, #0x8
0c005ce0: ebfffd2b  bl 0x0c005194 <dgVDacControlRead>
0c005ce4: e3c01004  bic r1, r0, #0x4
0c005ce8: e5940008  ldr r0, [r4, #0x8]
0c005cec: e3300001  teq r0, #0x1
0c005cf0: 01a05006  moveq r5, r6
0c005cf4: e0070105  and r0, r7, r5, lsl #2
0c005cf8: e1812000  orr r2, r1, r0
0c005cfc: e3a01008  mov r1, #0x8
0c005d00: e5940000  ldr r0, [r4, #0x0]
0c005d04: ebfffce9  bl 0x0c0050b0 <dgVDacControlWrite>
0c005d08: ea000004  b 0x0c005d20
0c005d0c: e59f1040  ldr r1, [pc, #0x40] =0x0c0054cc
0c005d10: e28f0f10  add r0, pc, #0x40
0c005d14: e3a02083  mov r2, #0x83
0c005d18: e2822c01  add r2, r2, #0x100
0c005d1c: eb0033f5  bl 0x0c012cf8 <fn_0c012cf8>
0c005d20: e3a01008  mov r1, #0x8
0c005d24: e5940000  ldr r0, [r4, #0x0]
0c005d28: ebfffd19  bl 0x0c005194 <dgVDacControlRead>
0c005d2c: e3c00001  bic r0, r0, #0x1
0c005d30: e594100c  ldr r1, [r4, #0xc]
0c005d34: e2011001  and r1, r1, #0x1
0c005d38: e1802001  orr r2, r0, r1
0c005d3c: e3a01008  mov r1, #0x8
0c005d40: e5940000  ldr r0, [r4, #0x0]
0c005d44: ebfffcd9  bl 0x0c0050b0 <dgVDacControlWrite>
0c005d48: e5940000  ldr r0, [r4, #0x0]
0c005d4c: e91b68f0  ldmdb r11, {r4,r5,r6,r7,r11,sp,lr}
0c005d50: eaffff74  b 0x0c005b28
0c005d54: 0c0054cc  .word 0x0c0054cc
0c005d58: 30000000  andcc r0, r0, r0
DoDGRqstGetSyncSelects:
0c005d5c: e1a0c00d  mov r12, sp
0c005d60: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c005d64: e24cb004  sub r11, r12, #0x4
0c005d68: e1a04000  mov r4, r0
0c005d6c: e24dd018  sub sp, sp, #0x18
0c005d70: e5900000  ldr r0, [r0, #0x0]
0c005d74: e51f6594  ldr r6, [pc, #-0x594] =0x0403f2fc
0c005d78: e3a05001  mov r5, #0x1
0c005d7c: e3500000  cmp r0, #0x0
0c005d80: ba000011  blt 0x0c005dcc
0c005d84: e3500007  cmp r0, #0x7
0c005d88: ca00000f  bgt 0x0c005dcc
0c005d8c: e3a01006  mov r1, #0x6
0c005d90: ebfffcff  bl 0x0c005194 <dgVDacControlRead>
0c005d94: e2000004  and r0, r0, #0x4
0c005d98: e1a00120  mov r0, r0, lsr #2
0c005d9c: e58d0004  str r0, [sp, #0x4]
0c005da0: e3a01008  mov r1, #0x8
0c005da4: e5940000  ldr r0, [r4, #0x0]
0c005da8: ebfffcf9  bl 0x0c005194 <dgVDacControlRead>
0c005dac: e2001002  and r1, r0, #0x2
0c005db0: e1a010a1  mov r1, r1, lsr #1
0c005db4: e58d1000  str r1, [sp, #0x0]
0c005db8: e2001004  and r1, r0, #0x4
0c005dbc: e1a01121  mov r1, r1, lsr #2
0c005dc0: e2000001  and r0, r0, #0x1
0c005dc4: e58d1008  str r1, [sp, #0x8]
0c005dc8: ea000003  b 0x0c005ddc
0c005dcc: e3e00000  mvn r0, #0x0
0c005dd0: e58d0004  str r0, [sp, #0x4]
0c005dd4: e58d0000  str r0, [sp, #0x0]
0c005dd8: e58d0008  str r0, [sp, #0x8]
0c005ddc: e58d000c  str r0, [sp, #0xc]
0c005de0: e5940000  ldr r0, [r4, #0x0]
0c005de4: e0860100  add r0, r6, r0, lsl #2
0c005de8: e2800a03  add r0, r0, #0x3000
0c005dec: e5900004  ldr r0, [r0, #0x4]
0c005df0: e590016c  ldr r0, [r0, #0x16c]
0c005df4: e0050ec0  and r0, r5, r0, asr #29
0c005df8: e58d0010  str r0, [sp, #0x10]
0c005dfc: e1a0100d  mov r1, sp
0c005e00: e3a02018  mov r2, #0x18
0c005e04: e3a0000b  mov r0, #0xb
0c005e08: ebfffbb4  bl 0x0c004ce0 <fn_0c004ce0>
0c005e0c: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
DoDGRqstOutputPedestal:
0c005e10: e1a0c00d  mov r12, sp
0c005e14: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c005e18: e24cb004  sub r11, r12, #0x4
0c005e1c: e1a04000  mov r4, r0
0c005e20: e5900000  ldr r0, [r0, #0x0]
0c005e24: e3500000  cmp r0, #0x0
0c005e28: b91ba810  ldmltdb r11, {r4,r11,sp,pc}
0c005e2c: e3500007  cmp r0, #0x7
0c005e30: c91ba810  ldmgtdb r11, {r4,r11,sp,pc}
0c005e34: e3a01006  mov r1, #0x6
0c005e38: ebfffcd5  bl 0x0c005194 <dgVDacControlRead>
0c005e3c: e3c01008  bic r1, r0, #0x8
0c005e40: e3a02008  mov r2, #0x8
0c005e44: e5940004  ldr r0, [r4, #0x4]
0c005e48: e0020180  and r0, r2, r0, lsl #3
0c005e4c: e1812000  orr r2, r1, r0
0c005e50: e3a01006  mov r1, #0x6
0c005e54: e5940000  ldr r0, [r4, #0x0]
0c005e58: ebfffc94  bl 0x0c0050b0 <dgVDacControlWrite>
0c005e5c: e5940000  ldr r0, [r4, #0x0]
0c005e60: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c005e64: eaffff2f  b 0x0c005b28
DoDGRqstGetOutputPedestal:
0c005e68: e1a0c00d  mov r12, sp
0c005e6c: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c005e70: e24cb004  sub r11, r12, #0x4
0c005e74: e24dd004  sub sp, sp, #0x4
0c005e78: e5900000  ldr r0, [r0, #0x0]
0c005e7c: e3500000  cmp r0, #0x0
0c005e80: ba000006  blt 0x0c005ea0
0c005e84: e3500007  cmp r0, #0x7
0c005e88: ca000004  bgt 0x0c005ea0
0c005e8c: e3a01006  mov r1, #0x6
0c005e90: ebfffcbf  bl 0x0c005194 <dgVDacControlRead>
0c005e94: e2000008  and r0, r0, #0x8
0c005e98: e1a001a0  mov r0, r0, lsr #3
0c005e9c: ea000000  b 0x0c005ea4
0c005ea0: e3e00000  mvn r0, #0x0
0c005ea4: e58d0000  str r0, [sp, #0x0]
0c005ea8: e1a0100d  mov r1, sp
0c005eac: e3a02004  mov r2, #0x4
0c005eb0: e3a0000c  mov r0, #0xc
0c005eb4: ebfffb89  bl 0x0c004ce0 <fn_0c004ce0>
0c005eb8: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstLoadDacCursor:
0c005ebc: e92d4000  stmdb sp!, {lr}
0c005ec0: e5901000  ldr r1, [r0, #0x0]
0c005ec4: e3510000  cmp r1, #0x0
0c005ec8: ba000001  blt 0x0c005ed4
0c005ecc: e3510007  cmp r1, #0x7
0c005ed0: da000001  ble 0x0c005edc
0c005ed4: e33100de  teq r1, #0xde
0c005ed8: 18bd8000  ldmneia sp!, {pc}
0c005edc: e3a01000  mov r1, #0x0
0c005ee0: e52d1004  str r1, [sp, #-0x4]!
0c005ee4: e58d1000  str r1, [sp, #0x0]
0c005ee8: e59d1000  ldr r1, [sp, #0x0]
0c005eec: e2811001  add r1, r1, #0x1
0c005ef0: e58d1000  str r1, [sp, #0x0]
0c005ef4: e3510003  cmp r1, #0x3
0c005ef8: bafffffa  blt 0x0c005ee8
0c005efc: e3a02003  mov r2, #0x3
0c005f00: e3a01b0b  mov r1, #0x2c00
0c005f04: e2811606  add r1, r1, #0x600000
0c005f08: e5903000  ldr r3, [r0, #0x0]
0c005f0c: e7812503  str r2, [r1, r3, lsl #10]
0c005f10: e3a03000  mov r3, #0x0
0c005f14: e58d3000  str r3, [sp, #0x0]
0c005f18: e59d3000  ldr r3, [sp, #0x0]
0c005f1c: e2833001  add r3, r3, #0x1
0c005f20: e58d3000  str r3, [sp, #0x0]
0c005f24: e3530003  cmp r3, #0x3
0c005f28: bafffffa  blt 0x0c005f18
0c005f2c: e3a03000  mov r3, #0x0
0c005f30: e58d3000  str r3, [sp, #0x0]
0c005f34: e58d3000  str r3, [sp, #0x0]
0c005f38: e59d3000  ldr r3, [sp, #0x0]
0c005f3c: e2833001  add r3, r3, #0x1
0c005f40: e58d3000  str r3, [sp, #0x0]
0c005f44: e3530003  cmp r3, #0x3
0c005f48: bafffffa  blt 0x0c005f38
0c005f4c: e5903000  ldr r3, [r0, #0x0]
0c005f50: e7812503  str r2, [r1, r3, lsl #10]
0c005f54: e3a02000  mov r2, #0x0
0c005f58: e58d2000  str r2, [sp, #0x0]
0c005f5c: e59d2000  ldr r2, [sp, #0x0]
0c005f60: e2822001  add r2, r2, #0x1
0c005f64: e58d2000  str r2, [sp, #0x0]
0c005f68: e3520003  cmp r2, #0x3
0c005f6c: bafffffa  blt 0x0c005f5c
0c005f70: e3a02000  mov r2, #0x0
0c005f74: e58d2000  str r2, [sp, #0x0]
0c005f78: e58d2000  str r2, [sp, #0x0]
0c005f7c: e59d2000  ldr r2, [sp, #0x0]
0c005f80: e2822001  add r2, r2, #0x1
0c005f84: e58d2000  str r2, [sp, #0x0]
0c005f88: e3520003  cmp r2, #0x3
0c005f8c: bafffffa  blt 0x0c005f7c
0c005f90: e8901004  ldmia r0, {r2,r12}
0c005f94: e51f3e0c  ldr r3, [pc, #-0xe0c] =0x00602c08
0c005f98: e783c502  str r12, [r3, r2, lsl #10]
0c005f9c: e3a02000  mov r2, #0x0
0c005fa0: e58d2000  str r2, [sp, #0x0]
0c005fa4: e59d2000  ldr r2, [sp, #0x0]
0c005fa8: e2822001  add r2, r2, #0x1
0c005fac: e58d2000  str r2, [sp, #0x0]
0c005fb0: e3520003  cmp r2, #0x3
0c005fb4: bafffffa  blt 0x0c005fa4
0c005fb8: e3a02000  mov r2, #0x0
0c005fbc: e58d2000  str r2, [sp, #0x0]
0c005fc0: e58d2000  str r2, [sp, #0x0]
0c005fc4: e59d2000  ldr r2, [sp, #0x0]
0c005fc8: e2822001  add r2, r2, #0x1
0c005fcc: e58d2000  str r2, [sp, #0x0]
0c005fd0: e3520003  cmp r2, #0x3
0c005fd4: bafffffa  blt 0x0c005fc4
0c005fd8: e5902000  ldr r2, [r0, #0x0]
0c005fdc: e590c008  ldr r12, [r0, #0x8]
0c005fe0: e783c502  str r12, [r3, r2, lsl #10]
0c005fe4: e3a02000  mov r2, #0x0
0c005fe8: e58d2000  str r2, [sp, #0x0]
0c005fec: e59d2000  ldr r2, [sp, #0x0]
0c005ff0: e2822001  add r2, r2, #0x1
0c005ff4: e58d2000  str r2, [sp, #0x0]
0c005ff8: e3520003  cmp r2, #0x3
0c005ffc: bafffffa  blt 0x0c005fec
0c006000: e3a02000  mov r2, #0x0
0c006004: e58d2000  str r2, [sp, #0x0]
0c006008: e58d2000  str r2, [sp, #0x0]
0c00600c: e59d2000  ldr r2, [sp, #0x0]
0c006010: e2822001  add r2, r2, #0x1
0c006014: e58d2000  str r2, [sp, #0x0]
0c006018: e3520003  cmp r2, #0x3
0c00601c: bafffffa  blt 0x0c00600c
0c006020: e5902000  ldr r2, [r0, #0x0]
0c006024: e590c00c  ldr r12, [r0, #0xc]
0c006028: e783c502  str r12, [r3, r2, lsl #10]
0c00602c: e3a02000  mov r2, #0x0
0c006030: e58d2000  str r2, [sp, #0x0]
0c006034: e59d2000  ldr r2, [sp, #0x0]
0c006038: e2822001  add r2, r2, #0x1
0c00603c: e58d2000  str r2, [sp, #0x0]
0c006040: e3520003  cmp r2, #0x3
0c006044: bafffffa  blt 0x0c006034
0c006048: e3a02000  mov r2, #0x0
0c00604c: e58d2000  str r2, [sp, #0x0]
0c006050: e58d2000  str r2, [sp, #0x0]
0c006054: e59d2000  ldr r2, [sp, #0x0]
0c006058: e2822001  add r2, r2, #0x1
0c00605c: e58d2000  str r2, [sp, #0x0]
0c006060: e3520003  cmp r2, #0x3
0c006064: bafffffa  blt 0x0c006054
0c006068: e5902000  ldr r2, [r0, #0x0]
0c00606c: e590c010  ldr r12, [r0, #0x10]
0c006070: e783c502  str r12, [r3, r2, lsl #10]
0c006074: e3a02000  mov r2, #0x0
0c006078: e58d2000  str r2, [sp, #0x0]
0c00607c: e59d2000  ldr r2, [sp, #0x0]
0c006080: e2822001  add r2, r2, #0x1
0c006084: e58d2000  str r2, [sp, #0x0]
0c006088: e3520003  cmp r2, #0x3
0c00608c: bafffffa  blt 0x0c00607c
0c006090: e3a02000  mov r2, #0x0
0c006094: e58d2000  str r2, [sp, #0x0]
0c006098: e58d2000  str r2, [sp, #0x0]
0c00609c: e59d2000  ldr r2, [sp, #0x0]
0c0060a0: e2822001  add r2, r2, #0x1
0c0060a4: e58d2000  str r2, [sp, #0x0]
0c0060a8: e3520003  cmp r2, #0x3
0c0060ac: bafffffa  blt 0x0c00609c
0c0060b0: e5902000  ldr r2, [r0, #0x0]
0c0060b4: e590c014  ldr r12, [r0, #0x14]
0c0060b8: e783c502  str r12, [r3, r2, lsl #10]
0c0060bc: e3a02000  mov r2, #0x0
0c0060c0: e58d2000  str r2, [sp, #0x0]
0c0060c4: e59d2000  ldr r2, [sp, #0x0]
0c0060c8: e2822001  add r2, r2, #0x1
0c0060cc: e58d2000  str r2, [sp, #0x0]
0c0060d0: e3520003  cmp r2, #0x3
0c0060d4: bafffffa  blt 0x0c0060c4
0c0060d8: e3a02000  mov r2, #0x0
0c0060dc: e58d2000  str r2, [sp, #0x0]
0c0060e0: e58d2000  str r2, [sp, #0x0]
0c0060e4: e59d2000  ldr r2, [sp, #0x0]
0c0060e8: e2822001  add r2, r2, #0x1
0c0060ec: e58d2000  str r2, [sp, #0x0]
0c0060f0: e3520003  cmp r2, #0x3
0c0060f4: bafffffa  blt 0x0c0060e4
0c0060f8: e5902018  ldr r2, [r0, #0x18]
0c0060fc: e590c000  ldr r12, [r0, #0x0]
0c006100: e783250c  str r2, [r3, r12, lsl #10]
0c006104: e3a02000  mov r2, #0x0
0c006108: e58d2000  str r2, [sp, #0x0]
0c00610c: e59d2000  ldr r2, [sp, #0x0]
0c006110: e2822001  add r2, r2, #0x1
0c006114: e58d2000  str r2, [sp, #0x0]
0c006118: e3520003  cmp r2, #0x3
0c00611c: bafffffa  blt 0x0c00610c
0c006120: e3a02000  mov r2, #0x0
0c006124: e58d2000  str r2, [sp, #0x0]
0c006128: e58d2000  str r2, [sp, #0x0]
0c00612c: e59d2000  ldr r2, [sp, #0x0]
0c006130: e2822001  add r2, r2, #0x1
0c006134: e58d2000  str r2, [sp, #0x0]
0c006138: e3520003  cmp r2, #0x3
0c00613c: bafffffa  blt 0x0c00612c
0c006140: e3a0c000  mov r12, #0x0
0c006144: e5902000  ldr r2, [r0, #0x0]
0c006148: e781c502  str r12, [r1, r2, lsl #10]
0c00614c: e3a02000  mov r2, #0x0
0c006150: e58d2000  str r2, [sp, #0x0]
0c006154: e59d2000  ldr r2, [sp, #0x0]
0c006158: e2822001  add r2, r2, #0x1
0c00615c: e58d2000  str r2, [sp, #0x0]
0c006160: e3520003  cmp r2, #0x3
0c006164: bafffffa  blt 0x0c006154
0c006168: e3a02000  mov r2, #0x0
0c00616c: e58d2000  str r2, [sp, #0x0]
0c006170: e58d2000  str r2, [sp, #0x0]
0c006174: e59d2000  ldr r2, [sp, #0x0]
0c006178: e2822001  add r2, r2, #0x1
0c00617c: e58d2000  str r2, [sp, #0x0]
0c006180: e3520003  cmp r2, #0x3
0c006184: bafffffa  blt 0x0c006174
0c006188: e3a0c004  mov r12, #0x4
0c00618c: e5902000  ldr r2, [r0, #0x0]
0c006190: e781c502  str r12, [r1, r2, lsl #10]
0c006194: e3a01000  mov r1, #0x0
0c006198: e58d1000  str r1, [sp, #0x0]
0c00619c: e59d1000  ldr r1, [sp, #0x0]
0c0061a0: e2811001  add r1, r1, #0x1
0c0061a4: e58d1000  str r1, [sp, #0x0]
0c0061a8: e3510003  cmp r1, #0x3
0c0061ac: bafffffa  blt 0x0c00619c
0c0061b0: e28dd004  add sp, sp, #0x4
0c0061b4: e3a01000  mov r1, #0x0
0c0061b8: e0802101  add r2, r0, r1, lsl #2
0c0061bc: e592201c  ldr r2, [r2, #0x1c]
0c0061c0: e3a0c000  mov r12, #0x0
0c0061c4: e52dc004  str r12, [sp, #-0x4]!
0c0061c8: e58dc000  str r12, [sp, #0x0]
0c0061cc: e59dc000  ldr r12, [sp, #0x0]
0c0061d0: e28cc001  add r12, r12, #0x1
0c0061d4: e58dc000  str r12, [sp, #0x0]
0c0061d8: e35c0003  cmp r12, #0x3
0c0061dc: bafffffa  blt 0x0c0061cc
0c0061e0: e202e0ff  and lr, r2, #0xff
0c0061e4: e590c000  ldr r12, [r0, #0x0]
0c0061e8: e783e50c  str lr, [r3, r12, lsl #10]
0c0061ec: e3a0c000  mov r12, #0x0
0c0061f0: e58dc000  str r12, [sp, #0x0]
0c0061f4: e59dc000  ldr r12, [sp, #0x0]
0c0061f8: e28cc001  add r12, r12, #0x1
0c0061fc: e58dc000  str r12, [sp, #0x0]
0c006200: e35c0003  cmp r12, #0x3
0c006204: bafffffa  blt 0x0c0061f4
0c006208: e1a02442  mov r2, r2, asr #8
0c00620c: e3a0c000  mov r12, #0x0
0c006210: e58dc000  str r12, [sp, #0x0]
0c006214: e58dc000  str r12, [sp, #0x0]
0c006218: e59dc000  ldr r12, [sp, #0x0]
0c00621c: e28cc001  add r12, r12, #0x1
0c006220: e58dc000  str r12, [sp, #0x0]
0c006224: e35c0003  cmp r12, #0x3
0c006228: bafffffa  blt 0x0c006218
0c00622c: e202e0ff  and lr, r2, #0xff
0c006230: e590c000  ldr r12, [r0, #0x0]
0c006234: e783e50c  str lr, [r3, r12, lsl #10]
0c006238: e3a0c000  mov r12, #0x0
0c00623c: e58dc000  str r12, [sp, #0x0]
0c006240: e59dc000  ldr r12, [sp, #0x0]
0c006244: e28cc001  add r12, r12, #0x1
0c006248: e58dc000  str r12, [sp, #0x0]
0c00624c: e35c0003  cmp r12, #0x3
0c006250: bafffffa  blt 0x0c006240
0c006254: e1a02442  mov r2, r2, asr #8
0c006258: e3a0c000  mov r12, #0x0
0c00625c: e58dc000  str r12, [sp, #0x0]
0c006260: e58dc000  str r12, [sp, #0x0]
0c006264: e59dc000  ldr r12, [sp, #0x0]
0c006268: e28cc001  add r12, r12, #0x1
0c00626c: e58dc000  str r12, [sp, #0x0]
0c006270: e35c0003  cmp r12, #0x3
0c006274: bafffffa  blt 0x0c006264
0c006278: e202c0ff  and r12, r2, #0xff
0c00627c: e590e000  ldr lr, [r0, #0x0]
0c006280: e783c50e  str r12, [r3, lr, lsl #10]
0c006284: e3a0c000  mov r12, #0x0
0c006288: e58dc000  str r12, [sp, #0x0]
0c00628c: e59dc000  ldr r12, [sp, #0x0]
0c006290: e28cc001  add r12, r12, #0x1
0c006294: e58dc000  str r12, [sp, #0x0]
0c006298: e35c0003  cmp r12, #0x3
0c00629c: bafffffa  blt 0x0c00628c
0c0062a0: e1a02442  mov r2, r2, asr #8
0c0062a4: e3a0c000  mov r12, #0x0
0c0062a8: e58dc000  str r12, [sp, #0x0]
0c0062ac: e58dc000  str r12, [sp, #0x0]
0c0062b0: e59dc000  ldr r12, [sp, #0x0]
0c0062b4: e28cc001  add r12, r12, #0x1
0c0062b8: e58dc000  str r12, [sp, #0x0]
0c0062bc: e35c0003  cmp r12, #0x3
0c0062c0: bafffffa  blt 0x0c0062b0
0c0062c4: e20220ff  and r2, r2, #0xff
0c0062c8: e590c000  ldr r12, [r0, #0x0]
0c0062cc: e783250c  str r2, [r3, r12, lsl #10]
0c0062d0: e3a02000  mov r2, #0x0
0c0062d4: e58d2000  str r2, [sp, #0x0]
0c0062d8: e59d2000  ldr r2, [sp, #0x0]
0c0062dc: e2822001  add r2, r2, #0x1
0c0062e0: e58d2000  str r2, [sp, #0x0]
0c0062e4: e3520003  cmp r2, #0x3
0c0062e8: bafffffa  blt 0x0c0062d8
0c0062ec: e28dd004  add sp, sp, #0x4
0c0062f0: e2811001  add r1, r1, #0x1
0c0062f4: e3510c01  cmp r1, #0x100
0c0062f8: 3affffae  bcc 0x0c0061b8
0c0062fc: e51f1b1c  ldr r1, [pc, #-0xb1c] =0x0403f2fc
0c006300: e5911000  ldr r1, [r1, #0x0]
0c006304: e3110b01  tst r1, #0x400
0c006308: 15901000  ldrne r1, [r0, #0x0]
0c00630c: 128f0f02  addne r0, pc, #0x8
0c006310: 18bd4000  ldmneia sp!, {lr}
0c006314: 1a002e71  bne 0x0c011ce0 <fn_0c011ce0>
0c006318: e8bd8000  ldmia sp!, {pc}
0c00631c: 6368616e  .asciz "channel %d DAC cursor loaded\n"
dgEncoderControlWrite:
0c00633c: e3a02000  mov r2, #0x0
0c006340: e52d2004  str r2, [sp, #-0x4]!
0c006344: e58d2000  str r2, [sp, #0x0]
0c006348: e59d2000  ldr r2, [sp, #0x0]
0c00634c: e2822001  add r2, r2, #0x1
0c006350: e58d2000  str r2, [sp, #0x0]
0c006354: e3520003  cmp r2, #0x3
0c006358: bafffffa  blt 0x0c006348
0c00635c: e3a02a06  mov r2, #0x6000
0c006360: e2822606  add r2, r2, #0x600000
0c006364: e5820000  str r0, [r2, #0x0]
0c006368: e3a00000  mov r0, #0x0
0c00636c: e58d0000  str r0, [sp, #0x0]
0c006370: e59d0000  ldr r0, [sp, #0x0]
0c006374: e2800001  add r0, r0, #0x1
0c006378: e58d0000  str r0, [sp, #0x0]
0c00637c: e3500003  cmp r0, #0x3
0c006380: bafffffa  blt 0x0c006370
0c006384: e3a00000  mov r0, #0x0
0c006388: e58d0000  str r0, [sp, #0x0]
0c00638c: e58d0000  str r0, [sp, #0x0]
0c006390: e59d0000  ldr r0, [sp, #0x0]
0c006394: e2800001  add r0, r0, #0x1
0c006398: e58d0000  str r0, [sp, #0x0]
0c00639c: e3500003  cmp r0, #0x3
0c0063a0: bafffffa  blt 0x0c006390
0c0063a4: e5a21008  str r1, [r2, #0x8]!
0c0063a8: e3a00000  mov r0, #0x0
0c0063ac: e58d0000  str r0, [sp, #0x0]
0c0063b0: e59d0000  ldr r0, [sp, #0x0]
0c0063b4: e2800001  add r0, r0, #0x1
0c0063b8: e58d0000  str r0, [sp, #0x0]
0c0063bc: e3500003  cmp r0, #0x3
0c0063c0: bafffffa  blt 0x0c0063b0
0c0063c4: e28dd004  add sp, sp, #0x4
0c0063c8: e1a0f00e  mov pc, lr
dgEncoderControlRead:
0c0063cc: e3a01000  mov r1, #0x0
0c0063d0: e52d1004  str r1, [sp, #-0x4]!
0c0063d4: e58d1000  str r1, [sp, #0x0]
0c0063d8: e59d1000  ldr r1, [sp, #0x0]
0c0063dc: e2811001  add r1, r1, #0x1
0c0063e0: e58d1000  str r1, [sp, #0x0]
0c0063e4: e3510003  cmp r1, #0x3
0c0063e8: bafffffa  blt 0x0c0063d8
0c0063ec: e1a01000  mov r1, r0
0c0063f0: e3a00a06  mov r0, #0x6000
0c0063f4: e2800606  add r0, r0, #0x600000
0c0063f8: e5801000  str r1, [r0, #0x0]
0c0063fc: e3a01000  mov r1, #0x0
0c006400: e58d1000  str r1, [sp, #0x0]
0c006404: e59d1000  ldr r1, [sp, #0x0]
0c006408: e2811001  add r1, r1, #0x1
0c00640c: e58d1000  str r1, [sp, #0x0]
0c006410: e3510003  cmp r1, #0x3
0c006414: bafffffa  blt 0x0c006404
0c006418: e28dd004  add sp, sp, #0x4
0c00641c: e5900008  ldr r0, [r0, #0x8]
0c006420: e1a0f00e  mov pc, lr
0c006424: e3a02000  mov r2, #0x0
0c006428: e52d2004  str r2, [sp, #-0x4]!
0c00642c: e58d2000  str r2, [sp, #0x0]
0c006430: e59d2000  ldr r2, [sp, #0x0]
0c006434: e2822001  add r2, r2, #0x1
0c006438: e58d2000  str r2, [sp, #0x0]
0c00643c: e3520003  cmp r2, #0x3
0c006440: bafffffa  blt 0x0c006430
0c006444: e3a02a06  mov r2, #0x6000
0c006448: e2822606  add r2, r2, #0x600000
0c00644c: e5820004  str r0, [r2, #0x4]
0c006450: e3a00000  mov r0, #0x0
0c006454: e58d0000  str r0, [sp, #0x0]
0c006458: e59d0000  ldr r0, [sp, #0x0]
0c00645c: e2800001  add r0, r0, #0x1
0c006460: e58d0000  str r0, [sp, #0x0]
0c006464: e3500003  cmp r0, #0x3
0c006468: bafffffa  blt 0x0c006458
0c00646c: e3a00000  mov r0, #0x0
0c006470: e58d0000  str r0, [sp, #0x0]
0c006474: e58d0000  str r0, [sp, #0x0]
0c006478: e59d0000  ldr r0, [sp, #0x0]
0c00647c: e2800001  add r0, r0, #0x1
0c006480: e58d0000  str r0, [sp, #0x0]
0c006484: e3500003  cmp r0, #0x3
0c006488: bafffffa  blt 0x0c006478
0c00648c: e5a2100c  str r1, [r2, #0xc]!
0c006490: e3a00000  mov r0, #0x0
0c006494: e58d0000  str r0, [sp, #0x0]
0c006498: e59d0000  ldr r0, [sp, #0x0]
0c00649c: e2800001  add r0, r0, #0x1
0c0064a0: e58d0000  str r0, [sp, #0x0]
0c0064a4: e3500003  cmp r0, #0x3
0c0064a8: bafffffa  blt 0x0c006498
0c0064ac: e28dd004  add sp, sp, #0x4
0c0064b0: e1a0f00e  mov pc, lr
0c0064b4: e3a01000  mov r1, #0x0
0c0064b8: e52d1004  str r1, [sp, #-0x4]!
0c0064bc: e58d1000  str r1, [sp, #0x0]
0c0064c0: e59d1000  ldr r1, [sp, #0x0]
0c0064c4: e2811001  add r1, r1, #0x1
0c0064c8: e58d1000  str r1, [sp, #0x0]
0c0064cc: e3510003  cmp r1, #0x3
0c0064d0: bafffffa  blt 0x0c0064c0
0c0064d4: e1a01000  mov r1, r0
0c0064d8: e3a00a06  mov r0, #0x6000
0c0064dc: e2800606  add r0, r0, #0x600000
0c0064e0: e5801004  str r1, [r0, #0x4]
0c0064e4: e3a01000  mov r1, #0x0
0c0064e8: e58d1000  str r1, [sp, #0x0]
0c0064ec: e59d1000  ldr r1, [sp, #0x0]
0c0064f0: e2811001  add r1, r1, #0x1
0c0064f4: e58d1000  str r1, [sp, #0x0]
0c0064f8: e3510003  cmp r1, #0x3
0c0064fc: bafffffa  blt 0x0c0064ec
0c006500: e28dd004  add sp, sp, #0x4
0c006504: e590000c  ldr r0, [r0, #0xc]
0c006508: e1a0f00e  mov pc, lr
DoDGRqstEncoderOutputGain:
0c00650c: e5900000  ldr r0, [r0, #0x0]
0c006510: e20000ff  and r0, r0, #0xff
0c006514: e59f1054  ldr r1, [pc, #0x54] =0x040422fc
0c006518: e5a1042c  str r0, [r1, #0x42c]!
0c00651c: e26000ff  rsb r0, r0, #0xff
0c006520: e3a01000  mov r1, #0x0
0c006524: e52d1004  str r1, [sp, #-0x4]!
0c006528: e58d1000  str r1, [sp, #0x0]
0c00652c: e59d1000  ldr r1, [sp, #0x0]
0c006530: e2811001  add r1, r1, #0x1
0c006534: e58d1000  str r1, [sp, #0x0]
0c006538: e3510003  cmp r1, #0x3
0c00653c: bafffffa  blt 0x0c00652c
0c006540: e3a01a05  mov r1, #0x5000
0c006544: e2811606  add r1, r1, #0x600000
0c006548: e5a10c20  str r0, [r1, #0xc20]!
0c00654c: e3a00000  mov r0, #0x0
0c006550: e58d0000  str r0, [sp, #0x0]
0c006554: e59d0000  ldr r0, [sp, #0x0]
0c006558: e2800001  add r0, r0, #0x1
0c00655c: e58d0000  str r0, [sp, #0x0]
0c006560: e3500003  cmp r0, #0x3
0c006564: bafffffa  blt 0x0c006554
0c006568: e28dd004  add sp, sp, #0x4
0c00656c: e1a0f00e  mov pc, lr
0c006570: 040422fc  .word 0x040422fc
DoDGRqstGetEncoderOutputGain:
0c006574: e1a0c00d  mov r12, sp
0c006578: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00657c: e24cb004  sub r11, r12, #0x4
0c006580: e51f0018  ldr r0, [pc, #-0x18] =0x040422fc
0c006584: e590042c  ldr r0, [r0, #0x42c]
0c006588: e52d0004  str r0, [sp, #-0x4]!
0c00658c: e1a0100d  mov r1, sp
0c006590: e3a02004  mov r2, #0x4
0c006594: e3a0000e  mov r0, #0xe
0c006598: ebfff9d0  bl 0x0c004ce0 <fn_0c004ce0>
0c00659c: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstSCHPhase:
0c0065a0: e1a0c00d  mov r12, sp
0c0065a4: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c0065a8: e24cb004  sub r11, r12, #0x4
0c0065ac: e1a03000  mov r3, r0
0c0065b0: e5900000  ldr r0, [r0, #0x0]
0c0065b4: e20010ff  and r1, r0, #0xff
0c0065b8: e3a040ff  mov r4, #0xff
0c0065bc: e0045440  and r5, r4, r0, asr #8
0c0065c0: e3a00024  mov r0, #0x24
0c0065c4: ebffff5c  bl 0x0c00633c <dgEncoderControlWrite>
0c0065c8: e1a01005  mov r1, r5
0c0065cc: e3a00025  mov r0, #0x25
0c0065d0: ebffff59  bl 0x0c00633c <dgEncoderControlWrite>
0c0065d4: e5930000  ldr r0, [r3, #0x0]
0c0065d8: e2800a02  add r0, r0, #0x2000
0c0065dc: e20010ff  and r1, r0, #0xff
0c0065e0: e0043440  and r3, r4, r0, asr #8
0c0065e4: e3a00026  mov r0, #0x26
0c0065e8: ebffff53  bl 0x0c00633c <dgEncoderControlWrite>
0c0065ec: e1a01003  mov r1, r3
0c0065f0: e3a00027  mov r0, #0x27
0c0065f4: e91b6830  ldmdb r11, {r4,r5,r11,sp,lr}
0c0065f8: eaffff4f  b 0x0c00633c <dgEncoderControlWrite>
DoDGRqstGetSCHPhase:
0c0065fc: e1a0c00d  mov r12, sp
0c006600: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c006604: e24cb004  sub r11, r12, #0x4
0c006608: e24dd004  sub sp, sp, #0x4
0c00660c: e3a00024  mov r0, #0x24
0c006610: ebffff6d  bl 0x0c0063cc <dgEncoderControlRead>
0c006614: e20020ff  and r2, r0, #0xff
0c006618: e3a00025  mov r0, #0x25
0c00661c: ebffff6a  bl 0x0c0063cc <dgEncoderControlRead>
0c006620: e20000ff  and r0, r0, #0xff
0c006624: e1820400  orr r0, r2, r0, lsl #8
0c006628: e58d0000  str r0, [sp, #0x0]
0c00662c: e1a0100d  mov r1, sp
0c006630: e3a02004  mov r2, #0x4
0c006634: e3a0000f  mov r0, #0xf
0c006638: ebfff9a8  bl 0x0c004ce0 <fn_0c004ce0>
0c00663c: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstLoadEncoder:
0c006640: e1a0c00d  mov r12, sp
0c006644: e92dd8f0  stmdb sp!, {r4,r5,r6,r7,r11,r12,lr,pc}
0c006648: e24cb004  sub r11, r12, #0x4
0c00664c: e1a04000  mov r4, r0
0c006650: e3a01000  mov r1, #0x0
0c006654: e3a00000  mov r0, #0x0
0c006658: ebffff37  bl 0x0c00633c <dgEncoderControlWrite>
0c00665c: e3a01000  mov r1, #0x0
0c006660: e3a00000  mov r0, #0x0
0c006664: ebffff34  bl 0x0c00633c <dgEncoderControlWrite>
0c006668: e3a03000  mov r3, #0x0
0c00666c: e59f61a8  ldr r6, [pc, #0x1a8] =0x0403f2fc
0c006670: e2865a03  add r5, r6, #0x3000
0c006674: e3a07001  mov r7, #0x1
0c006678: e5950434  ldr r0, [r5, #0x434]
0c00667c: e3300000  teq r0, #0x0
0c006680: 11a00003  movne r0, r3
0c006684: 01a00007  moveq r0, r7
0c006688: e3a01008  mov r1, #0x8
0c00668c: e0010180  and r0, r1, r0, lsl #3
0c006690: e1830000  orr r0, r3, r0
0c006694: e3801011  orr r1, r0, #0x11
0c006698: e3a00000  mov r0, #0x0
0c00669c: ebffff26  bl 0x0c00633c <dgEncoderControlWrite>
0c0066a0: e5960000  ldr r0, [r6, #0x0]
0c0066a4: e3100b01  tst r0, #0x400
0c0066a8: 0a000005  beq 0x0c0066c4
0c0066ac: e5950434  ldr r0, [r5, #0x434]
0c0066b0: e3300000  teq r0, #0x0
0c0066b4: 11a01003  movne r1, r3
0c0066b8: 01a01007  moveq r1, r7
0c0066bc: e28f0f57  add r0, pc, #0x15c
0c0066c0: eb002d86  bl 0x0c011ce0 <fn_0c011ce0>
0c0066c4: e3a01008  mov r1, #0x8
0c0066c8: e3a00001  mov r0, #0x1
0c0066cc: ebffff1a  bl 0x0c00633c <dgEncoderControlWrite>
0c0066d0: e3a01004  mov r1, #0x4
0c0066d4: e5940000  ldr r0, [r4, #0x0]
0c0066d8: e0011100  and r1, r1, r0, lsl #2
0c0066dc: e3a00002  mov r0, #0x2
0c0066e0: ebffff15  bl 0x0c00633c <dgEncoderControlWrite>
0c0066e4: e3a01000  mov r1, #0x0
0c0066e8: e3a00003  mov r0, #0x3
0c0066ec: ebffff12  bl 0x0c00633c <dgEncoderControlWrite>
0c0066f0: e3a01000  mov r1, #0x0
0c0066f4: e3a00004  mov r0, #0x4
0c0066f8: ebffff0f  bl 0x0c00633c <dgEncoderControlWrite>
0c0066fc: e3a01000  mov r1, #0x0
0c006700: e3a0000e  mov r0, #0xe
0c006704: ebffff0c  bl 0x0c00633c <dgEncoderControlWrite>
0c006708: e5b50434  ldr r0, [r5, #0x434]!
0c00670c: e3300000  teq r0, #0x0
0c006710: 1a000045  bne 0x0c00682c
0c006714: e3a01045  mov r1, #0x45
0c006718: e3a00010  mov r0, #0x10
0c00671c: ebffff06  bl 0x0c00633c <dgEncoderControlWrite>
0c006720: e3a0100d  mov r1, #0xd
0c006724: e3a00011  mov r0, #0x11
0c006728: ebffff03  bl 0x0c00633c <dgEncoderControlWrite>
0c00672c: e3a01021  mov r1, #0x21
0c006730: e3a00012  mov r0, #0x12
0c006734: ebffff00  bl 0x0c00633c <dgEncoderControlWrite>
0c006738: e3a01021  mov r1, #0x21
0c00673c: e3a00013  mov r0, #0x13
0c006740: ebfffefd  bl 0x0c00633c <dgEncoderControlWrite>
0c006744: e3a0106d  mov r1, #0x6d
0c006748: e2811c01  add r1, r1, #0x100
0c00674c: e3a00014  mov r0, #0x14
0c006750: ebfffef9  bl 0x0c00633c <dgEncoderControlWrite>
0c006754: e3a01003  mov r1, #0x3
0c006758: e2811c03  add r1, r1, #0x300
0c00675c: e3a00015  mov r0, #0x15
0c006760: ebfffef5  bl 0x0c00633c <dgEncoderControlWrite>
0c006764: e3a0102b  mov r1, #0x2b
0c006768: e2811c01  add r1, r1, #0x100
0c00676c: e3a00016  mov r0, #0x16
0c006770: ebfffef1  bl 0x0c00633c <dgEncoderControlWrite>
0c006774: e3a010b7  mov r1, #0xb7
0c006778: e2811c01  add r1, r1, #0x100
0c00677c: e3a00017  mov r0, #0x17
0c006780: ebfffeed  bl 0x0c00633c <dgEncoderControlWrite>
0c006784: e3a01075  mov r1, #0x75
0c006788: e3a00018  mov r0, #0x18
0c00678c: ebfffeea  bl 0x0c00633c <dgEncoderControlWrite>
0c006790: e3a01019  mov r1, #0x19
0c006794: e3a00019  mov r0, #0x19
0c006798: ebfffee7  bl 0x0c00633c <dgEncoderControlWrite>
0c00679c: e3a01023  mov r1, #0x23
0c0067a0: e3a0001a  mov r0, #0x1a
0c0067a4: ebfffee4  bl 0x0c00633c <dgEncoderControlWrite>
0c0067a8: e3a010b5  mov r1, #0xb5
0c0067ac: e3a0001b  mov r0, #0x1b
0c0067b0: ebfffee1  bl 0x0c00633c <dgEncoderControlWrite>
0c0067b4: e3a01093  mov r1, #0x93
0c0067b8: e3a0001c  mov r0, #0x1c
0c0067bc: ebfffede  bl 0x0c00633c <dgEncoderControlWrite>
0c0067c0: e3a01045  mov r1, #0x45
0c0067c4: e3a0001d  mov r0, #0x1d
0c0067c8: ebfffedb  bl 0x0c00633c <dgEncoderControlWrite>
0c0067cc: e3a01061  mov r1, #0x61
0c0067d0: e3a0001e  mov r0, #0x1e
0c0067d4: ebfffed8  bl 0x0c00633c <dgEncoderControlWrite>
0c0067d8: e3a01019  mov r1, #0x19
0c0067dc: e3a00020  mov r0, #0x20
0c0067e0: ebfffed5  bl 0x0c00633c <dgEncoderControlWrite>
0c0067e4: e3a01018  mov r1, #0x18
0c0067e8: e3a00021  mov r0, #0x21
0c0067ec: ebfffed2  bl 0x0c00633c <dgEncoderControlWrite>
0c0067f0: e3a010f3  mov r1, #0xf3
0c0067f4: e3a00022  mov r0, #0x22
0c0067f8: ebfffecf  bl 0x0c00633c <dgEncoderControlWrite>
0c0067fc: e3a0104c  mov r1, #0x4c
0c006800: e3a00023  mov r0, #0x23
0c006804: ebfffecc  bl 0x0c00633c <dgEncoderControlWrite>
0c006808: e3a01000  mov r1, #0x0
0c00680c: e3a00026  mov r0, #0x26
0c006810: ebfffec9  bl 0x0c00633c <dgEncoderControlWrite>
0c006814: e3a01000  mov r1, #0x0
0c006818: ea000044  b 0x0c006930
0c00681c: 0403f2fc  .word 0x0403f2fc
0c006820: 70616c20  .asciz "pal = %d\n"
0c00682c: e3a0103a  mov r1, #0x3a
0c006830: e3a00010  mov r0, #0x10
0c006834: ebfffec0  bl 0x0c00633c <dgEncoderControlWrite>
0c006838: e3a01007  mov r1, #0x7
0c00683c: e3a00011  mov r0, #0x11
0c006840: ebfffebd  bl 0x0c00633c <dgEncoderControlWrite>
0c006844: e3a0101f  mov r1, #0x1f
0c006848: e3a00012  mov r0, #0x12
0c00684c: ebfffeba  bl 0x0c00633c <dgEncoderControlWrite>
0c006850: e3a0100f  mov r1, #0xf
0c006854: e3a00013  mov r0, #0x13
0c006858: ebfffeb7  bl 0x0c00633c <dgEncoderControlWrite>
0c00685c: e3a01023  mov r1, #0x23
0c006860: e2811c01  add r1, r1, #0x100
0c006864: e3a00014  mov r0, #0x14
0c006868: ebfffeb3  bl 0x0c00633c <dgEncoderControlWrite>
0c00686c: e3a0108b  mov r1, #0x8b
0c006870: e2811c02  add r1, r1, #0x200
0c006874: e3a00015  mov r0, #0x15
0c006878: ebfffeaf  bl 0x0c00633c <dgEncoderControlWrite>
0c00687c: e3a01005  mov r1, #0x5
0c006880: e2811c01  add r1, r1, #0x100
0c006884: e3a00016  mov r0, #0x16
0c006888: ebfffeab  bl 0x0c00633c <dgEncoderControlWrite>
0c00688c: e3a01077  mov r1, #0x77
0c006890: e2811c01  add r1, r1, #0x100
0c006894: e3a00017  mov r0, #0x17
0c006898: ebfffea7  bl 0x0c00633c <dgEncoderControlWrite>
0c00689c: e3a01065  mov r1, #0x65
0c0068a0: e3a00018  mov r0, #0x18
0c0068a4: ebfffea4  bl 0x0c00633c <dgEncoderControlWrite>
0c0068a8: e3a01012  mov r1, #0x12
0c0068ac: e3a00019  mov r0, #0x19
0c0068b0: ebfffea1  bl 0x0c00633c <dgEncoderControlWrite>
0c0068b4: e3a0101c  mov r1, #0x1c
0c0068b8: e3a0001a  mov r0, #0x1a
0c0068bc: ebfffe9e  bl 0x0c00633c <dgEncoderControlWrite>
0c0068c0: e3a0106a  mov r1, #0x6a
0c0068c4: e3a0001b  mov r0, #0x1b
0c0068c8: ebfffe9b  bl 0x0c00633c <dgEncoderControlWrite>
0c0068cc: e3a0104d  mov r1, #0x4d
0c0068d0: e3a0001c  mov r0, #0x1c
0c0068d4: ebfffe98  bl 0x0c00633c <dgEncoderControlWrite>
0c0068d8: e3a0103a  mov r1, #0x3a
0c0068dc: e3a0001d  mov r0, #0x1d
0c0068e0: ebfffe95  bl 0x0c00633c <dgEncoderControlWrite>
0c0068e4: e3a01052  mov r1, #0x52
0c0068e8: e3a0001e  mov r0, #0x1e
0c0068ec: ebfffe92  bl 0x0c00633c <dgEncoderControlWrite>
0c0068f0: e3a010c7  mov r1, #0xc7
0c0068f4: e3a00020  mov r0, #0x20
0c0068f8: ebfffe8f  bl 0x0c00633c <dgEncoderControlWrite>
0c0068fc: e3a010aa  mov r1, #0xaa
0c006900: e3a00021  mov r0, #0x21
0c006904: ebfffe8c  bl 0x0c00633c <dgEncoderControlWrite>
0c006908: e3a010aa  mov r1, #0xaa
0c00690c: e3a00022  mov r0, #0x22
0c006910: ebfffe89  bl 0x0c00633c <dgEncoderControlWrite>
0c006914: e3a0104a  mov r1, #0x4a
0c006918: e3a00023  mov r0, #0x23
0c00691c: ebfffe86  bl 0x0c00633c <dgEncoderControlWrite>
0c006920: e3a01000  mov r1, #0x0
0c006924: e3a00026  mov r0, #0x26
0c006928: ebfffe83  bl 0x0c00633c <dgEncoderControlWrite>
0c00692c: e3a01020  mov r1, #0x20
0c006930: e3a00027  mov r0, #0x27
0c006934: ebfffe80  bl 0x0c00633c <dgEncoderControlWrite>
0c006938: e5960000  ldr r0, [r6, #0x0]
0c00693c: e3100b01  tst r0, #0x400
0c006940: 128f0f02  addne r0, pc, #0x8
0c006944: 191b68f0  ldmnedb r11, {r4,r5,r6,r7,r11,sp,lr}
0c006948: 1a002ce4  bne 0x0c011ce0 <fn_0c011ce0>
0c00694c: e91ba8f0  ldmdb r11, {r4,r5,r6,r7,r11,sp,pc}
0c006950: 4c6f6164  .asciz "LoadEncoder done!\n"
DoDGRqstEncoderTestPattern:
0c006964: e1a0c00d  mov r12, sp
0c006968: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00696c: e24cb004  sub r11, r12, #0x4
0c006970: e1a02000  mov r2, r0
0c006974: e3a00001  mov r0, #0x1
0c006978: ebfffe93  bl 0x0c0063cc <dgEncoderControlRead>
0c00697c: e3c00020  bic r0, r0, #0x20
0c006980: e3801010  orr r1, r0, #0x10
0c006984: e5920000  ldr r0, [r2, #0x0]
0c006988: e3300001  teq r0, #0x1
0c00698c: 03c11010  biceq r1, r1, #0x10
0c006990: 0a000001  beq 0x0c00699c
0c006994: e3300002  teq r0, #0x2
0c006998: 03811020  orreq r1, r1, #0x20
0c00699c: e3a00001  mov r0, #0x1
0c0069a0: e91b6800  ldmdb r11, {r11,sp,lr}
0c0069a4: eafffe64  b 0x0c00633c <dgEncoderControlWrite>
DoDGRqstEnableEncoder:
0c0069a8: e1a0c00d  mov r12, sp
0c0069ac: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c0069b0: e24cb004  sub r11, r12, #0x4
0c0069b4: e1a03000  mov r3, r0
0c0069b8: e3a00000  mov r0, #0x0
0c0069bc: e1a01000  mov r1, r0
0c0069c0: e51f41ac  ldr r4, [pc, #-0x1ac] =0x0403f2fc
0c0069c4: e2842a03  add r2, r4, #0x3000
0c0069c8: e5922434  ldr r2, [r2, #0x434]
0c0069cc: e3320000  teq r2, #0x0
0c0069d0: 03a00001  moveq r0, #0x1
0c0069d4: e3a02008  mov r2, #0x8
0c0069d8: e0020180  and r0, r2, r0, lsl #3
0c0069dc: e1810000  orr r0, r1, r0
0c0069e0: e3c02001  bic r2, r0, #0x1
0c0069e4: e5930000  ldr r0, [r3, #0x0]
0c0069e8: e2001001  and r1, r0, #0x1
0c0069ec: e1821001  orr r1, r2, r1
0c0069f0: e3c11010  bic r1, r1, #0x10
0c0069f4: e3a02010  mov r2, #0x10
0c0069f8: e0020200  and r0, r2, r0, lsl #4
0c0069fc: e1811000  orr r1, r1, r0
0c006a00: e1a05001  mov r5, r1
0c006a04: e3a00000  mov r0, #0x0
0c006a08: ebfffe4b  bl 0x0c00633c <dgEncoderControlWrite>
0c006a0c: e1a01005  mov r1, r5
0c006a10: e3a00000  mov r0, #0x0
0c006a14: ebfffe48  bl 0x0c00633c <dgEncoderControlWrite>
0c006a18: e5940000  ldr r0, [r4, #0x0]
0c006a1c: e3100b01  tst r0, #0x400
0c006a20: 091ba830  ldmeqdb r11, {r4,r5,r11,sp,pc}
0c006a24: e5930000  ldr r0, [r3, #0x0]
0c006a28: e3300000  teq r0, #0x0
0c006a2c: 028f1f03  addeq r1, pc, #0xc
0c006a30: 128f1f03  addne r1, pc, #0xc
0c006a34: e28f0f03  add r0, pc, #0xc
0c006a38: e91b6830  ldmdb r11, {r4,r5,r11,sp,lr}
0c006a3c: ea002ca7  b 0x0c011ce0 <fn_0c011ce0>
0c006a40: 64697300  .asciz "dis"
0c006a44: 656e0000  strvsb r0, [lr, #-0x0]!
0c006a48: 456e636f  .asciz "Encoder %sabled\n"
DoDGRqstFetal:
0c006a5c: e1a0c00d  mov r12, sp
0c006a60: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c006a64: e24cb004  sub r11, r12, #0x4
0c006a68: e3a07000  mov r7, #0x0
0c006a6c: e3a05000  mov r5, #0x0
0c006a70: e3a01000  mov r1, #0x0
0c006a74: e59f62e4  ldr r6, [pc, #0x2e4] =0x0403f2fc
0c006a78: e2860a03  add r0, r6, #0x3000
0c006a7c: e3a02000  mov r2, #0x0
0c006a80: e5801440  str r1, [r0, #0x440]
0c006a84: e52d200c  str r2, [sp, #-0xc]!
0c006a88: e58d2000  str r2, [sp, #0x0]
0c006a8c: e59d2000  ldr r2, [sp, #0x0]
0c006a90: e2822001  add r2, r2, #0x1
0c006a94: e58d2000  str r2, [sp, #0x0]
0c006a98: e3520003  cmp r2, #0x3
0c006a9c: bafffffa  blt 0x0c006a8c
0c006aa0: e3a030ff  mov r3, #0xff
0c006aa4: e3a02a05  mov r2, #0x5000
0c006aa8: e2822606  add r2, r2, #0x600000
0c006aac: e5a23c44  str r3, [r2, #0xc44]!
0c006ab0: e3a02000  mov r2, #0x0
0c006ab4: e58d2000  str r2, [sp, #0x0]
0c006ab8: e59d2000  ldr r2, [sp, #0x0]
0c006abc: e2822001  add r2, r2, #0x1
0c006ac0: e58d2000  str r2, [sp, #0x0]
0c006ac4: e3520003  cmp r2, #0x3
0c006ac8: bafffffa  blt 0x0c006ab8
0c006acc: e28dd004  add sp, sp, #0x4
0c006ad0: e3a02002  mov r2, #0x2
0c006ad4: e3a01000  mov r1, #0x0
0c006ad8: e5a02430  str r2, [r0, #0x430]!
0c006adc: e580100c  str r1, [r0, #0xc]
0c006ae0: e3a00000  mov r0, #0x0
0c006ae4: eb0019af  bl 0x0c00d1a8 <fn_0c00d1a8>
0c006ae8: e2860038  add r0, r6, #0x38
0c006aec: e2800b0d  add r0, r0, #0x3400
0c006af0: e5901000  ldr r1, [r0, #0x0]
0c006af4: e3c11202  bic r1, r1, #0x20000000
0c006af8: e5801000  str r1, [r0, #0x0]
0c006afc: e3a01020  mov r1, #0x20
0c006b00: e3a04000  mov r4, #0x0
0c006b04: e3a00606  mov r0, #0x600000
0c006b08: e3a02000  mov r2, #0x0
0c006b0c: e52d2004  str r2, [sp, #-0x4]!
0c006b10: e58d2000  str r2, [sp, #0x0]
0c006b14: e59d2000  ldr r2, [sp, #0x0]
0c006b18: e2822001  add r2, r2, #0x1
0c006b1c: e58d2000  str r2, [sp, #0x0]
0c006b20: e3520003  cmp r2, #0x3
0c006b24: bafffffa  blt 0x0c006b14
0c006b28: e7801104  str r1, [r0, r4, lsl #2]
0c006b2c: e3a02000  mov r2, #0x0
0c006b30: e58d2000  str r2, [sp, #0x0]
0c006b34: e59d2000  ldr r2, [sp, #0x0]
0c006b38: e2822001  add r2, r2, #0x1
0c006b3c: e58d2000  str r2, [sp, #0x0]
0c006b40: e3520003  cmp r2, #0x3
0c006b44: bafffffa  blt 0x0c006b34
0c006b48: e28dd004  add sp, sp, #0x4
0c006b4c: e2844001  add r4, r4, #0x1
0c006b50: e3540040  cmp r4, #0x40
0c006b54: baffffeb  blt 0x0c006b08
0c006b58: e3a01000  mov r1, #0x0
0c006b5c: e3a04000  mov r4, #0x0
0c006b60: e3a02c01  mov r2, #0x100
0c006b64: e2822606  add r2, r2, #0x600000
0c006b68: e3a03000  mov r3, #0x0
0c006b6c: e52d3004  str r3, [sp, #-0x4]!
0c006b70: e58d3000  str r3, [sp, #0x0]
0c006b74: e59d3000  ldr r3, [sp, #0x0]
0c006b78: e2833001  add r3, r3, #0x1
0c006b7c: e58d3000  str r3, [sp, #0x0]
0c006b80: e3530003  cmp r3, #0x3
0c006b84: bafffffa  blt 0x0c006b74
0c006b88: e7821104  str r1, [r2, r4, lsl #2]
0c006b8c: e3a03000  mov r3, #0x0
0c006b90: e58d3000  str r3, [sp, #0x0]
0c006b94: e59d3000  ldr r3, [sp, #0x0]
0c006b98: e2833001  add r3, r3, #0x1
0c006b9c: e58d3000  str r3, [sp, #0x0]
0c006ba0: e3530003  cmp r3, #0x3
0c006ba4: bafffffa  blt 0x0c006b94
0c006ba8: e28dd004  add sp, sp, #0x4
0c006bac: e2844001  add r4, r4, #0x1
0c006bb0: e3540020  cmp r4, #0x20
0c006bb4: baffffeb  blt 0x0c006b68
0c006bb8: e3a04000  mov r4, #0x0
0c006bbc: e3a00000  mov r0, #0x0
0c006bc0: e52d0004  str r0, [sp, #-0x4]!
0c006bc4: e58d0000  str r0, [sp, #0x0]
0c006bc8: e59d0000  ldr r0, [sp, #0x0]
0c006bcc: e2800001  add r0, r0, #0x1
0c006bd0: e58d0000  str r0, [sp, #0x0]
0c006bd4: e3500003  cmp r0, #0x3
0c006bd8: bafffffa  blt 0x0c006bc8
0c006bdc: e1a00604  mov r0, r4, lsl #12
0c006be0: e3a02606  mov r2, #0x600000
0c006be4: e5820460  str r0, [r2, #0x460]
0c006be8: e3a00000  mov r0, #0x0
0c006bec: e58d0000  str r0, [sp, #0x0]
0c006bf0: e59d0000  ldr r0, [sp, #0x0]
0c006bf4: e2800001  add r0, r0, #0x1
0c006bf8: e58d0000  str r0, [sp, #0x0]
0c006bfc: e3500003  cmp r0, #0x3
0c006c00: bafffffa  blt 0x0c006bf0
0c006c04: e28dd004  add sp, sp, #0x4
0c006c08: e3a00000  mov r0, #0x0
0c006c0c: e3a01000  mov r1, #0x0
0c006c10: e52d1004  str r1, [sp, #-0x4]!
0c006c14: e58d1000  str r1, [sp, #0x0]
0c006c18: e59d1000  ldr r1, [sp, #0x0]
0c006c1c: e2811001  add r1, r1, #0x1
0c006c20: e58d1000  str r1, [sp, #0x0]
0c006c24: e3510003  cmp r1, #0x3
0c006c28: bafffffa  blt 0x0c006c18
0c006c2c: e582046c  str r0, [r2, #0x46c]
0c006c30: e3a01000  mov r1, #0x0
0c006c34: e58d1000  str r1, [sp, #0x0]
0c006c38: e59d1000  ldr r1, [sp, #0x0]
0c006c3c: e2811001  add r1, r1, #0x1
0c006c40: e58d1000  str r1, [sp, #0x0]
0c006c44: e3510003  cmp r1, #0x3
0c006c48: bafffffa  blt 0x0c006c38
0c006c4c: e28dd004  add sp, sp, #0x4
0c006c50: e2800001  add r0, r0, #0x1
0c006c54: e3500a01  cmp r0, #0x1000
0c006c58: baffffeb  blt 0x0c006c0c
0c006c5c: e2844001  add r4, r4, #0x1
0c006c60: e3540003  cmp r4, #0x3
0c006c64: baffffd4  blt 0x0c006bbc
0c006c68: e5960000  ldr r0, [r6, #0x0]
0c006c6c: e3100080  tst r0, #0x80
0c006c70: 128f0f3b  addne r0, pc, #0xec
0c006c74: 1b002c19  blne 0x0c011ce0 <fn_0c011ce0>
0c006c78: eb000231  bl 0x0c007544 <dgMakeXmapFetal>
0c006c7c: e5960000  ldr r0, [r6, #0x0]
0c006c80: e3100080  tst r0, #0x80
0c006c84: 128f0f39  addne r0, pc, #0xe4
0c006c88: 1b002c14  blne 0x0c011ce0 <fn_0c011ce0>
0c006c8c: e3a04000  mov r4, #0x0
0c006c90: e2860010  add r0, r6, #0x10
0c006c94: e1a0a006  mov r10, r6
0c006c98: e0861104  add r1, r6, r4, lsl #2
0c006c9c: e2811a03  add r1, r1, #0x3000
0c006ca0: e2844001  add r4, r4, #0x1
0c006ca4: e35400fd  cmp r4, #0xfd
0c006ca8: e5a10004  str r0, [r1, #0x4]!
0c006cac: dafffff8  ble 0x0c006c94
0c006cb0: e59f40c8  ldr r4, [pc, #0xc8] =0x0406f70c
0c006cb4: e5940014  ldr r0, [r4, #0x14]
0c006cb8: e3300002  teq r0, #0x2
0c006cbc: 03a06003  moveq r6, #0x3
0c006cc0: 0a000006  beq 0x0c006ce0
0c006cc4: e3300008  teq r0, #0x8
0c006cc8: 03a060ff  moveq r6, #0xff
0c006ccc: 0a000003  beq 0x0c006ce0
0c006cd0: e5941044  ldr r1, [r4, #0x44]
0c006cd4: e28f0f2a  add r0, pc, #0xa8
0c006cd8: eb002c00  bl 0x0c011ce0 <fn_0c011ce0>
0c006cdc: e3a06000  mov r6, #0x0
0c006ce0: e59f0098  ldr r0, [pc, #0x98] =0x0406f70c
0c006ce4: e5900000  ldr r0, [r0, #0x0]
0c006ce8: e2402001  sub r2, r0, #0x1
0c006cec: e3a01a22  mov r1, #0x22000
0c006cf0: e2811606  add r1, r1, #0x600000
0c006cf4: e3a00001  mov r0, #0x1
0c006cf8: e3520005  cmp r2, #0x5
0c006cfc: 908ff102  addls pc, pc, r2, lsl #2
0c006d00: ea00004d  b 0x0c006e3c
0c006d04: ea00003a  b 0x0c006df4
0c006d08: ea00004b  b 0x0c006e3c
0c006d0c: ea000038  b 0x0c006df4
0c006d10: ea000037  b 0x0c006df4
0c006d14: ea000025  b 0x0c006db0
0c006d18: e3a02000  mov r2, #0x0
0c006d1c: e52d2004  str r2, [sp, #-0x4]!
0c006d20: e58d2000  str r2, [sp, #0x0]
0c006d24: e59d2000  ldr r2, [sp, #0x0]
0c006d28: e2822001  add r2, r2, #0x1
0c006d2c: e58d2000  str r2, [sp, #0x0]
0c006d30: e3520003  cmp r2, #0x3
0c006d34: bafffffa  blt 0x0c006d24
0c006d38: e3a02002  mov r2, #0x2
0c006d3c: e5812000  str r2, [r1, #0x0]
0c006d40: e3a01000  mov r1, #0x0
0c006d44: e58d1000  str r1, [sp, #0x0]
0c006d48: e59d1000  ldr r1, [sp, #0x0]
0c006d4c: e2811001  add r1, r1, #0x1
0c006d50: e58d1000  str r1, [sp, #0x0]
0c006d54: e3510003  cmp r1, #0x3
0c006d58: bafffffa  blt 0x0c006d48
0c006d5c: ea000035  b 0x0c006e38
0c006d60: 0403f2fc  .word 0x0403f2fc
0c006d64: 786d6170  .asciz "xmap fetal\n"
0c006d70: 766f6320  .asciz "voc  fetals\n"
0c006d80: 0406f70c  .word 0x0406f70c
0c006d84: 5761726e  .asciz "Warning: illegal jtag channel count (%d)\n"
0c006db0: e3a02000  mov r2, #0x0
0c006db4: e52d2004  str r2, [sp, #-0x4]!
0c006db8: e58d2000  str r2, [sp, #0x0]
0c006dbc: e59d2000  ldr r2, [sp, #0x0]
0c006dc0: e2822001  add r2, r2, #0x1
0c006dc4: e58d2000  str r2, [sp, #0x0]
0c006dc8: e3520003  cmp r2, #0x3
0c006dcc: bafffffa  blt 0x0c006dbc
0c006dd0: e5810000  str r0, [r1, #0x0]
0c006dd4: e3a01000  mov r1, #0x0
0c006dd8: e58d1000  str r1, [sp, #0x0]
0c006ddc: e59d1000  ldr r1, [sp, #0x0]
0c006de0: e2811001  add r1, r1, #0x1
0c006de4: e58d1000  str r1, [sp, #0x0]
0c006de8: e3510003  cmp r1, #0x3
0c006dec: bafffffa  blt 0x0c006ddc
0c006df0: ea000010  b 0x0c006e38
0c006df4: e3a02000  mov r2, #0x0
0c006df8: e52d2004  str r2, [sp, #-0x4]!
0c006dfc: e58d2000  str r2, [sp, #0x0]
0c006e00: e59d2000  ldr r2, [sp, #0x0]
0c006e04: e2822001  add r2, r2, #0x1
0c006e08: e58d2000  str r2, [sp, #0x0]
0c006e0c: e3520003  cmp r2, #0x3
0c006e10: bafffffa  blt 0x0c006e00
0c006e14: e3a02000  mov r2, #0x0
0c006e18: e5812000  str r2, [r1, #0x0]
0c006e1c: e3a01000  mov r1, #0x0
0c006e20: e58d1000  str r1, [sp, #0x0]
0c006e24: e59d1000  ldr r1, [sp, #0x0]
0c006e28: e2811001  add r1, r1, #0x1
0c006e2c: e58d1000  str r1, [sp, #0x0]
0c006e30: e3510003  cmp r1, #0x3
0c006e34: bafffffa  blt 0x0c006e24
0c006e38: e28dd004  add sp, sp, #0x4
0c006e3c: e3a04000  mov r4, #0x0
0c006e40: e3a00001  mov r0, #0x1
0c006e44: e1a00410  mov r0, r0, lsl r4
0c006e48: e58d0004  str r0, [sp, #0x4]
0c006e4c: e000a006  and r10, r0, r6
0c006e50: e1a00004  mov r0, r4
0c006e54: eb001950  bl 0x0c00d39c <dgIsVocPresent>
0c006e58: e3300000  teq r0, #0x0
0c006e5c: 0a000040  beq 0x0c006f64
0c006e60: e33a0000  teq r10, #0x0
0c006e64: 1a000004  bne 0x0c006e7c
0c006e68: e1a01004  mov r1, r4
0c006e6c: e28f0f27  add r0, pc, #0x9c
0c006e70: eb002b9a  bl 0x0c011ce0 <fn_0c011ce0>
0c006e74: e59d0004  ldr r0, [sp, #0x4]
0c006e78: e1806006  orr r6, r0, r6
0c006e7c: e1a00005  mov r0, r5
0c006e80: e2855001  add r5, r5, #0x1
0c006e84: e0600280  rsb r0, r0, r0, lsl #5
0c006e88: e0800080  add r0, r0, r0, lsl #1
0c006e8c: e51f1134  ldr r1, [pc, #-0x134] =0x0403f2fc
0c006e90: e0810100  add r0, r1, r0, lsl #2
0c006e94: e2800f61  add r0, r0, #0x184
0c006e98: e0811104  add r1, r1, r4, lsl #2
0c006e9c: e281aa03  add r10, r1, #0x3000
0c006ea0: e1a01007  mov r1, r7
0c006ea4: e2877001  add r7, r7, #0x1
0c006ea8: e58a0004  str r0, [r10, #0x4]
0c006eac: e1a00004  mov r0, r4
0c006eb0: eb000294  bl 0x0c007908 <fn_0c007908>
0c006eb4: e5ba0004  ldr r0, [r10, #0x4]!
0c006eb8: e5b0116c  ldr r1, [r0, #0x16c]!
0c006ebc: e3c11301  bic r1, r1, #0x4000000
0c006ec0: e5801000  str r1, [r0, #0x0]
0c006ec4: e1a00004  mov r0, r4
0c006ec8: eb0002de  bl 0x0c007a48 <fn_0c007a48>
0c006ecc: e1a00004  mov r0, r4
0c006ed0: eb0003fc  bl 0x0c007ec8 <fn_0c007ec8>
0c006ed4: e1a00004  mov r0, r4
0c006ed8: eb0004c2  bl 0x0c0081e8 <dgMakeGDacFetal>
0c006edc: e2844001  add r4, r4, #0x1
0c006ee0: e3540007  cmp r4, #0x7
0c006ee4: daffffd5  ble 0x0c006e40
0c006ee8: e51fa190  ldr r10, [pc, #-0x190] =0x0403f2fc
0c006eec: e59a0000  ldr r0, [r10, #0x0]
0c006ef0: e3100080  tst r0, #0x80
0c006ef4: 11a01006  movne r1, r6
0c006ef8: 128f0f12  addne r0, pc, #0x48
0c006efc: 1b002b77  blne 0x0c011ce0 <fn_0c011ce0>
0c006f00: e58a6004  str r6, [r10, #0x4]
0c006f04: eb0004c3  bl 0x0c008218 <dgMakeEncoderFetal>
0c006f08: e3a04000  mov r4, #0x0
0c006f0c: ea000029  b 0x0c006fb8
0c006f10: 5761726e  .asciz "Warning: voc %d is present (non-standard dg config)\n"
0c006f48: 6e427264  .asciz "nBrdVocPresentMask = %x\n"
0c006f64: e33a0000  teq r10, #0x0
0c006f68: 0affffdb  beq 0x0c006edc
0c006f6c: e1a01004  mov r1, r4
0c006f70: e28f0f03  add r0, pc, #0xc
0c006f74: eb002b59  bl 0x0c011ce0 <fn_0c011ce0>
0c006f78: e59d0004  ldr r0, [sp, #0x4]
0c006f7c: e1c66000  bic r6, r6, r0
0c006f80: eaffffd5  b 0x0c006edc
0c006f84: 5761726e  .asciz "Warning: voc %d not detected (possible dg failure)\n"
0c006fb8: e24dd008  sub sp, sp, #0x8
0c006fbc: e59f007c  ldr r0, [pc, #0x7c] =0x04018dbc
0c006fc0: e080a204  add r10, r0, r4, lsl #4
0c006fc4: e59a1004  ldr r1, [r10, #0x4]
0c006fc8: e51f0250  ldr r0, [pc, #-0x250] =0x0406f70c
0c006fcc: e5900000  ldr r0, [r0, #0x0]
0c006fd0: e3a02001  mov r2, #0x1
0c006fd4: e1110012  tst r1, r2, lsl r0
0c006fd8: 0a000004  beq 0x0c006ff0
0c006fdc: e59a1008  ldr r1, [r10, #0x8]
0c006fe0: e51f0268  ldr r0, [pc, #-0x268] =0x0406f70c
0c006fe4: e5900018  ldr r0, [r0, #0x18]
0c006fe8: e1310000  teq r1, r0
0c006fec: 0a000000  beq 0x0c006ff4
0c006ff0: e3a02000  mov r2, #0x0
0c006ff4: e58d2004  str r2, [sp, #0x4]
0c006ff8: e59a0000  ldr r0, [r10, #0x0]
0c006ffc: e1a06000  mov r6, r0
0c007000: eb0018e5  bl 0x0c00d39c <dgIsVocPresent>
0c007004: e58d0000  str r0, [sp, #0x0]
0c007008: e3300000  teq r0, #0x0
0c00700c: 1a000005  bne 0x0c007028
0c007010: e59a000c  ldr r0, [r10, #0xc]
0c007014: e3100101  tst r0, #0x40000000
0c007018: e59d0004  ldr r0, [sp, #0x4]
0c00701c: 0a000015  beq 0x0c007078
0c007020: e3300000  teq r0, #0x0
0c007024: 0a000039  beq 0x0c007110
0c007028: e59d0004  ldr r0, [sp, #0x4]
0c00702c: e3300000  teq r0, #0x0
0c007030: 01a01006  moveq r1, r6
0c007034: 028f0f02  addeq r0, pc, #0x8
0c007038: 0a000017  beq 0x0c00709c
0c00703c: ea000017  b 0x0c0070a0
0c007040: 04018dbc  .word 0x04018dbc
0c007044: 4f707469  .asciz "Option voc %d is present (non-standard dg config)\n"
0c007078: e3300000  teq r0, #0x0
0c00707c: 0a000023  beq 0x0c007110
0c007080: e3360030  teq r6, #0x30
0c007084: 051f030c  ldreq r0, [pc, #-0x30c] =0x0406f70c
0c007088: 05900000  ldreq r0, [r0, #0x0]
0c00708c: 03300000  teqeq r0, #0x0
0c007090: 0a00001e  beq 0x0c007110
0c007094: e1a01006  mov r1, r6
0c007098: e28f0f3e  add r0, pc, #0xf8
0c00709c: eb002b0f  bl 0x0c011ce0 <fn_0c011ce0>
0c0070a0: e1a00005  mov r0, r5
0c0070a4: e2855001  add r5, r5, #0x1
0c0070a8: e0600280  rsb r0, r0, r0, lsl #5
0c0070ac: e0800080  add r0, r0, r0, lsl #1
0c0070b0: e51f1358  ldr r1, [pc, #-0x358] =0x0403f2fc
0c0070b4: e0810100  add r0, r1, r0, lsl #2
0c0070b8: e2800f61  add r0, r0, #0x184
0c0070bc: e0811106  add r1, r1, r6, lsl #2
0c0070c0: e2811a03  add r1, r1, #0x3000
0c0070c4: e58d1008  str r1, [sp, #0x8]
0c0070c8: e5a10004  str r0, [r1, #0x4]!
0c0070cc: e1a01007  mov r1, r7
0c0070d0: e2877001  add r7, r7, #0x1
0c0070d4: e1a00006  mov r0, r6
0c0070d8: eb00020a  bl 0x0c007908 <fn_0c007908>
0c0070dc: e5ba000c  ldr r0, [r10, #0xc]!
0c0070e0: e1a00fa0  mov r0, r0, lsr #31
0c0070e4: e59d1008  ldr r1, [sp, #0x8]
0c0070e8: e5911004  ldr r1, [r1, #0x4]
0c0070ec: e5b1216c  ldr r2, [r1, #0x16c]!
0c0070f0: e3c22301  bic r2, r2, #0x4000000
0c0070f4: e2000001  and r0, r0, #0x1
0c0070f8: e1820d00  orr r0, r2, r0, lsl #26
0c0070fc: e5810000  str r0, [r1, #0x0]
0c007100: e59d0000  ldr r0, [sp, #0x0]
0c007104: e3300000  teq r0, #0x0
0c007108: 11a00006  movne r0, r6
0c00710c: 1b00024d  blne 0x0c007a48 <fn_0c007a48>
0c007110: e28dd008  add sp, sp, #0x8
0c007114: e2844001  add r4, r4, #0x1
0c007118: e3540011  cmp r4, #0x11
0c00711c: 3affffa5  bcc 0x0c006fb8
0c007120: e3550020  cmp r5, #0x20
0c007124: c1a01005  movgt r1, r5
0c007128: c28f0f29  addgt r0, pc, #0xa4
0c00712c: cb002aeb  blgt 0x0c011ce0 <fn_0c011ce0>
0c007130: e51f53b8  ldr r5, [pc, #-0x3b8] =0x0406f70c
0c007134: e5950018  ldr r0, [r5, #0x18]
0c007138: e3300006  teq r0, #0x6
0c00713c: 0b00047e  bleq 0x0c00833c <fn_0c00833c>
0c007140: e5950018  ldr r0, [r5, #0x18]
0c007144: e3300003  teq r0, #0x3
0c007148: 0b00047c  bleq 0x0c008340 <fn_0c008340>
0c00714c: e5950018  ldr r0, [r5, #0x18]
0c007150: e3300004  teq r0, #0x4
0c007154: 1a000003  bne 0x0c007168
0c007158: e3a000de  mov r0, #0xde
0c00715c: eb000239  bl 0x0c007a48 <fn_0c007a48>
0c007160: e3a000dc  mov r0, #0xdc
0c007164: eb000357  bl 0x0c007ec8 <fn_0c007ec8>
0c007168: e5950000  ldr r0, [r5, #0x0]
0c00716c: e3300000  teq r0, #0x0
0c007170: e5951018  ldr r1, [r5, #0x18]
0c007174: 1a00002c  bne 0x0c00722c
0c007178: e3310001  teq r1, #0x1
0c00717c: 13310002  teqne r1, #0x2
0c007180: 0a00004c  beq 0x0c0072b8
0c007184: e3310007  teq r1, #0x7
0c007188: 13a04000  movne r4, #0x0
0c00718c: 128f0f1c  addne r0, pc, #0x70
0c007190: 1a00004e  bne 0x0c0072d0
0c007194: ea00002c  b 0x0c00724c
0c007198: 4f707469  .asciz "Option voc %d not detected (possible option/dg failure)\n"
0c0071d4: 5761726e  .asciz "Warning: fatal dg channel state overflow (%d)\n"
0c007204: 5761726e  .asciz "Warning: unknown jtag dg4 option (%d)\n"
0c00722c: e2410003  sub r0, r1, #0x3
0c007230: e3500004  cmp r0, #0x4
0c007234: 908ff100  addls pc, pc, r0, lsl #2
0c007238: ea000022  b 0x0c0072c8
0c00723c: ea00001f  b 0x0c0072c0
0c007240: ea00001c  b 0x0c0072b8
0c007244: ea000002  b 0x0c007254
0c007248: ea00001c  b 0x0c0072c0
0c00724c: e3a04000  mov r4, #0x0
0c007250: ea00001f  b 0x0c0072d4
0c007254: e3a04001  mov r4, #0x1
0c007258: e3a01a33  mov r1, #0x33000
0c00725c: e2811606  add r1, r1, #0x600000
0c007260: e5910400  ldr r0, [r1, #0x400]
0c007264: e3c00004  bic r0, r0, #0x4
0c007268: e3a02000  mov r2, #0x0
0c00726c: e52d2004  str r2, [sp, #-0x4]!
0c007270: e58d2000  str r2, [sp, #0x0]
0c007274: e59d2000  ldr r2, [sp, #0x0]
0c007278: e2822001  add r2, r2, #0x1
0c00727c: e58d2000  str r2, [sp, #0x0]
0c007280: e3520003  cmp r2, #0x3
0c007284: bafffffa  blt 0x0c007274
0c007288: e5a10400  str r0, [r1, #0x400]!
0c00728c: e3a00000  mov r0, #0x0
0c007290: e58d0000  str r0, [sp, #0x0]
0c007294: e59d0000  ldr r0, [sp, #0x0]
0c007298: e2800001  add r0, r0, #0x1
0c00729c: e58d0000  str r0, [sp, #0x0]
0c0072a0: e3500003  cmp r0, #0x3
0c0072a4: bafffffa  blt 0x0c007294
0c0072a8: e28dd004  add sp, sp, #0x4
0c0072ac: e354001f  cmp r4, #0x1f
0c0072b0: c3a0401f  movgt r4, #0x1f
0c0072b4: ea000006  b 0x0c0072d4
0c0072b8: e3a04001  mov r4, #0x1
0c0072bc: ea000004  b 0x0c0072d4
0c0072c0: e3a04002  mov r4, #0x2
0c0072c4: ea000002  b 0x0c0072d4
0c0072c8: e3a04000  mov r4, #0x0
0c0072cc: e28f0f40  add r0, pc, #0x100
0c0072d0: eb002a82  bl 0x0c011ce0 <fn_0c011ce0>
0c0072d4: e3a00606  mov r0, #0x600000
0c0072d8: e5901240  ldr r1, [r0, #0x240]
0c0072dc: e3c1101f  bic r1, r1, #0x1f
0c0072e0: e204201f  and r2, r4, #0x1f
0c0072e4: e1811002  orr r1, r1, r2
0c0072e8: e3a02000  mov r2, #0x0
0c0072ec: e52d2004  str r2, [sp, #-0x4]!
0c0072f0: e58d2000  str r2, [sp, #0x0]
0c0072f4: e59d2000  ldr r2, [sp, #0x0]
0c0072f8: e2822001  add r2, r2, #0x1
0c0072fc: e58d2000  str r2, [sp, #0x0]
0c007300: e3520003  cmp r2, #0x3
0c007304: bafffffa  blt 0x0c0072f4
0c007308: e5801240  str r1, [r0, #0x240]
0c00730c: e3a01000  mov r1, #0x0
0c007310: e58d1000  str r1, [sp, #0x0]
0c007314: e59d1000  ldr r1, [sp, #0x0]
0c007318: e2811001  add r1, r1, #0x1
0c00731c: e58d1000  str r1, [sp, #0x0]
0c007320: e3510003  cmp r1, #0x3
0c007324: bafffffa  blt 0x0c007314
0c007328: e5901200  ldr r1, [r0, #0x200]
0c00732c: e3c11001  bic r1, r1, #0x1
0c007330: e3811002  orr r1, r1, #0x2
0c007334: e3a02000  mov r2, #0x0
0c007338: e58d2000  str r2, [sp, #0x0]
0c00733c: e58d2000  str r2, [sp, #0x0]
0c007340: e59d2000  ldr r2, [sp, #0x0]
0c007344: e2822001  add r2, r2, #0x1
0c007348: e58d2000  str r2, [sp, #0x0]
0c00734c: e3520003  cmp r2, #0x3
0c007350: bafffffa  blt 0x0c007340
0c007354: e5801200  str r1, [r0, #0x200]
0c007358: e3a01000  mov r1, #0x0
0c00735c: e58d1000  str r1, [sp, #0x0]
0c007360: e59d1000  ldr r1, [sp, #0x0]
0c007364: e2811001  add r1, r1, #0x1
0c007368: e58d1000  str r1, [sp, #0x0]
0c00736c: e3510003  cmp r1, #0x3
0c007370: bafffffa  blt 0x0c007360
0c007374: e28dd004  add sp, sp, #0x4
0c007378: e5951000  ldr r1, [r5, #0x0]
0c00737c: e3310000  teq r1, #0x0
0c007380: 1a00001d  bne 0x0c0073fc
0c007384: e3a01000  mov r1, #0x0
0c007388: e52d1004  str r1, [sp, #-0x4]!
0c00738c: e58d1000  str r1, [sp, #0x0]
0c007390: e59d1000  ldr r1, [sp, #0x0]
0c007394: e2811001  add r1, r1, #0x1
0c007398: e58d1000  str r1, [sp, #0x0]
0c00739c: e3510003  cmp r1, #0x3
0c0073a0: bafffffa  blt 0x0c007390
0c0073a4: e3a01001  mov r1, #0x1
0c0073a8: e3a02a06  mov r2, #0x6000
0c0073ac: e2822606  add r2, r2, #0x600000
0c0073b0: e5a21480  str r1, [r2, #0x480]!
0c0073b4: e3a01000  mov r1, #0x0
0c0073b8: e58d1000  str r1, [sp, #0x0]
0c0073bc: e59d1000  ldr r1, [sp, #0x0]
0c0073c0: e2811001  add r1, r1, #0x1
0c0073c4: e58d1000  str r1, [sp, #0x0]
0c0073c8: e3510003  cmp r1, #0x3
0c0073cc: bafffffa  blt 0x0c0073bc
0c0073d0: ea000030  b 0x0c007498
0c0073d4: 5761726e  .asciz "Warning: unknown jtag dg5 option (%d)\n"
0c0073fc: e3a01b16  mov r1, #0x5800
0c007400: e3a02000  mov r2, #0x0
0c007404: e52d2004  str r2, [sp, #-0x4]!
0c007408: e58d2000  str r2, [sp, #0x0]
0c00740c: e59d2000  ldr r2, [sp, #0x0]
0c007410: e2822001  add r2, r2, #0x1
0c007414: e58d2000  str r2, [sp, #0x0]
0c007418: e3520003  cmp r2, #0x3
0c00741c: bafffffa  blt 0x0c00740c
0c007420: e3a02a21  mov r2, #0x21000
0c007424: e2822606  add r2, r2, #0x600000
0c007428: e5821000  str r1, [r2, #0x0]
0c00742c: e3a02000  mov r2, #0x0
0c007430: e58d2000  str r2, [sp, #0x0]
0c007434: e59d2000  ldr r2, [sp, #0x0]
0c007438: e2822001  add r2, r2, #0x1
0c00743c: e58d2000  str r2, [sp, #0x0]
0c007440: e3520003  cmp r2, #0x3
0c007444: bafffffa  blt 0x0c007434
0c007448: e51f26f0  ldr r2, [pc, #-0x6f0] =0x0403f2fc
0c00744c: e5a2100c  str r1, [r2, #0xc]!
0c007450: e3a01000  mov r1, #0x0
0c007454: e58d1000  str r1, [sp, #0x0]
0c007458: e58d1000  str r1, [sp, #0x0]
0c00745c: e59d1000  ldr r1, [sp, #0x0]
0c007460: e2811001  add r1, r1, #0x1
0c007464: e58d1000  str r1, [sp, #0x0]
0c007468: e3510003  cmp r1, #0x3
0c00746c: bafffffa  blt 0x0c00745c
0c007470: e3a01001  mov r1, #0x1
0c007474: e3a02862  mov r2, #0x620000
0c007478: e5a21004  str r1, [r2, #0x4]!
0c00747c: e3a01000  mov r1, #0x0
0c007480: e58d1000  str r1, [sp, #0x0]
0c007484: e59d1000  ldr r1, [sp, #0x0]
0c007488: e2811001  add r1, r1, #0x1
0c00748c: e58d1000  str r1, [sp, #0x0]
0c007490: e3510003  cmp r1, #0x3
0c007494: bafffffa  blt 0x0c007484
0c007498: e3a01000  mov r1, #0x0
0c00749c: e58d1000  str r1, [sp, #0x0]
0c0074a0: e58d1000  str r1, [sp, #0x0]
0c0074a4: e59d1000  ldr r1, [sp, #0x0]
0c0074a8: e2811001  add r1, r1, #0x1
0c0074ac: e58d1000  str r1, [sp, #0x0]
0c0074b0: e3510003  cmp r1, #0x3
0c0074b4: bafffffa  blt 0x0c0074a4
0c0074b8: e3e01000  mvn r1, #0x0
0c0074bc: e5801000  str r1, [r0, #0x0]
0c0074c0: e3a01000  mov r1, #0x0
0c0074c4: e58d1000  str r1, [sp, #0x0]
0c0074c8: e59d1000  ldr r1, [sp, #0x0]
0c0074cc: e2811001  add r1, r1, #0x1
0c0074d0: e58d1000  str r1, [sp, #0x0]
0c0074d4: e3510003  cmp r1, #0x3
0c0074d8: bafffffa  blt 0x0c0074c8
0c0074dc: e3a01000  mov r1, #0x0
0c0074e0: e58d1000  str r1, [sp, #0x0]
0c0074e4: e58d1000  str r1, [sp, #0x0]
0c0074e8: e59d1000  ldr r1, [sp, #0x0]
0c0074ec: e2811001  add r1, r1, #0x1
0c0074f0: e58d1000  str r1, [sp, #0x0]
0c0074f4: e3510003  cmp r1, #0x3
0c0074f8: bafffffa  blt 0x0c0074e8
0c0074fc: e3a01000  mov r1, #0x0
0c007500: e5801000  str r1, [r0, #0x0]
0c007504: e3a00000  mov r0, #0x0
0c007508: e58d0000  str r0, [sp, #0x0]
0c00750c: e59d0000  ldr r0, [sp, #0x0]
0c007510: e2800001  add r0, r0, #0x1
0c007514: e58d0000  str r0, [sp, #0x0]
0c007518: e3500003  cmp r0, #0x3
0c00751c: bafffffa  blt 0x0c00750c
0c007520: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
dgFetal:
0c007524: e1a0c00d  mov r12, sp
0c007528: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00752c: e24cb004  sub r11, r12, #0x4
0c007530: e3a00000  mov r0, #0x0
0c007534: e52d0004  str r0, [sp, #-0x4]!
0c007538: e1a0000d  mov r0, sp
0c00753c: ebfffd46  bl 0x0c006a5c <DoDGRqstFetal>
0c007540: e91ba800  ldmdb r11, {r11,sp,pc}
dgMakeXmapFetal:
0c007544: e3a00000  mov r0, #0x0
0c007548: e52d0004  str r0, [sp, #-0x4]!
0c00754c: e58d0000  str r0, [sp, #0x0]
0c007550: e59d0000  ldr r0, [sp, #0x0]
0c007554: e2800001  add r0, r0, #0x1
0c007558: e58d0000  str r0, [sp, #0x0]
0c00755c: e3500003  cmp r0, #0x3
0c007560: bafffffa  blt 0x0c007550
0c007564: e3a01000  mov r1, #0x0
0c007568: e3a00606  mov r0, #0x600000
0c00756c: e580140c  str r1, [r0, #0x40c]
0c007570: e3a02000  mov r2, #0x0
0c007574: e58d2000  str r2, [sp, #0x0]
0c007578: e59d2000  ldr r2, [sp, #0x0]
0c00757c: e2822001  add r2, r2, #0x1
0c007580: e58d2000  str r2, [sp, #0x0]
0c007584: e3520003  cmp r2, #0x3
0c007588: bafffffa  blt 0x0c007578
0c00758c: e3a02000  mov r2, #0x0
0c007590: e58d2000  str r2, [sp, #0x0]
0c007594: e58d2000  str r2, [sp, #0x0]
0c007598: e59d2000  ldr r2, [sp, #0x0]
0c00759c: e2822001  add r2, r2, #0x1
0c0075a0: e58d2000  str r2, [sp, #0x0]
0c0075a4: e3520003  cmp r2, #0x3
0c0075a8: bafffffa  blt 0x0c007598
0c0075ac: e5801400  str r1, [r0, #0x400]
0c0075b0: e3a02000  mov r2, #0x0
0c0075b4: e58d2000  str r2, [sp, #0x0]
0c0075b8: e59d2000  ldr r2, [sp, #0x0]
0c0075bc: e2822001  add r2, r2, #0x1
0c0075c0: e58d2000  str r2, [sp, #0x0]
0c0075c4: e3520003  cmp r2, #0x3
0c0075c8: bafffffa  blt 0x0c0075b8
0c0075cc: e3a02000  mov r2, #0x0
0c0075d0: e58d2000  str r2, [sp, #0x0]
0c0075d4: e58d2000  str r2, [sp, #0x0]
0c0075d8: e59d2000  ldr r2, [sp, #0x0]
0c0075dc: e2822001  add r2, r2, #0x1
0c0075e0: e58d2000  str r2, [sp, #0x0]
0c0075e4: e3520003  cmp r2, #0x3
0c0075e8: bafffffa  blt 0x0c0075d8
0c0075ec: e5801414  str r1, [r0, #0x414]
0c0075f0: e3a02000  mov r2, #0x0
0c0075f4: e58d2000  str r2, [sp, #0x0]
0c0075f8: e59d2000  ldr r2, [sp, #0x0]
0c0075fc: e2822001  add r2, r2, #0x1
0c007600: e58d2000  str r2, [sp, #0x0]
0c007604: e3520003  cmp r2, #0x3
0c007608: bafffffa  blt 0x0c0075f8
0c00760c: e3a02000  mov r2, #0x0
0c007610: e58d2000  str r2, [sp, #0x0]
0c007614: e58d2000  str r2, [sp, #0x0]
0c007618: e59d2000  ldr r2, [sp, #0x0]
0c00761c: e2822001  add r2, r2, #0x1
0c007620: e58d2000  str r2, [sp, #0x0]
0c007624: e3520003  cmp r2, #0x3
0c007628: bafffffa  blt 0x0c007618
0c00762c: e5801420  str r1, [r0, #0x420]
0c007630: e3a02000  mov r2, #0x0
0c007634: e58d2000  str r2, [sp, #0x0]
0c007638: e59d2000  ldr r2, [sp, #0x0]
0c00763c: e2822001  add r2, r2, #0x1
0c007640: e58d2000  str r2, [sp, #0x0]
0c007644: e3520003  cmp r2, #0x3
0c007648: bafffffa  blt 0x0c007638
0c00764c: e3a02000  mov r2, #0x0
0c007650: e58d2000  str r2, [sp, #0x0]
0c007654: e58d2000  str r2, [sp, #0x0]
0c007658: e59d2000  ldr r2, [sp, #0x0]
0c00765c: e2822001  add r2, r2, #0x1
0c007660: e58d2000  str r2, [sp, #0x0]
0c007664: e3520003  cmp r2, #0x3
0c007668: bafffffa  blt 0x0c007658
0c00766c: e5801418  str r1, [r0, #0x418]
0c007670: e3a02000  mov r2, #0x0
0c007674: e58d2000  str r2, [sp, #0x0]
0c007678: e59d2000  ldr r2, [sp, #0x0]
0c00767c: e2822001  add r2, r2, #0x1
0c007680: e58d2000  str r2, [sp, #0x0]
0c007684: e3520003  cmp r2, #0x3
0c007688: bafffffa  blt 0x0c007678
0c00768c: e3a02000  mov r2, #0x0
0c007690: e58d2000  str r2, [sp, #0x0]
0c007694: e58d2000  str r2, [sp, #0x0]
0c007698: e59d2000  ldr r2, [sp, #0x0]
0c00769c: e2822001  add r2, r2, #0x1
0c0076a0: e58d2000  str r2, [sp, #0x0]
0c0076a4: e3520003  cmp r2, #0x3
0c0076a8: bafffffa  blt 0x0c007698
0c0076ac: e580141c  str r1, [r0, #0x41c]
0c0076b0: e3a02000  mov r2, #0x0
0c0076b4: e58d2000  str r2, [sp, #0x0]
0c0076b8: e59d2000  ldr r2, [sp, #0x0]
0c0076bc: e2822001  add r2, r2, #0x1
0c0076c0: e58d2000  str r2, [sp, #0x0]
0c0076c4: e3520003  cmp r2, #0x3
0c0076c8: bafffffa  blt 0x0c0076b8
0c0076cc: e3a02000  mov r2, #0x0
0c0076d0: e58d2000  str r2, [sp, #0x0]
0c0076d4: e58d2000  str r2, [sp, #0x0]
0c0076d8: e59d2000  ldr r2, [sp, #0x0]
0c0076dc: e2822001  add r2, r2, #0x1
0c0076e0: e58d2000  str r2, [sp, #0x0]
0c0076e4: e3520003  cmp r2, #0x3
0c0076e8: bafffffa  blt 0x0c0076d8
0c0076ec: e5801424  str r1, [r0, #0x424]
0c0076f0: e3a02000  mov r2, #0x0
0c0076f4: e58d2000  str r2, [sp, #0x0]
0c0076f8: e59d2000  ldr r2, [sp, #0x0]
0c0076fc: e2822001  add r2, r2, #0x1
0c007700: e58d2000  str r2, [sp, #0x0]
0c007704: e3520003  cmp r2, #0x3
0c007708: bafffffa  blt 0x0c0076f8
0c00770c: e3a02000  mov r2, #0x0
0c007710: e58d2000  str r2, [sp, #0x0]
0c007714: e58d2000  str r2, [sp, #0x0]
0c007718: e59d2000  ldr r2, [sp, #0x0]
0c00771c: e2822001  add r2, r2, #0x1
0c007720: e58d2000  str r2, [sp, #0x0]
0c007724: e3520003  cmp r2, #0x3
0c007728: bafffffa  blt 0x0c007718
0c00772c: e3a02002  mov r2, #0x2
0c007730: e5802430  str r2, [r0, #0x430]
0c007734: e3a02000  mov r2, #0x0
0c007738: e58d2000  str r2, [sp, #0x0]
0c00773c: e59d2000  ldr r2, [sp, #0x0]
0c007740: e2822001  add r2, r2, #0x1
0c007744: e58d2000  str r2, [sp, #0x0]
0c007748: e3520003  cmp r2, #0x3
0c00774c: bafffffa  blt 0x0c00773c
0c007750: e51f29d8  ldr r2, [pc, #-0x9d8] =0x0406f70c
0c007754: e5922000  ldr r2, [r2, #0x0]
0c007758: e3320002  teq r2, #0x2
0c00775c: e3a02000  mov r2, #0x0
0c007760: 1a000022  bne 0x0c0077f0
0c007764: e58d2000  str r2, [sp, #0x0]
0c007768: e3a02000  mov r2, #0x0
0c00776c: e58d2000  str r2, [sp, #0x0]
0c007770: e59d2000  ldr r2, [sp, #0x0]
0c007774: e2822001  add r2, r2, #0x1
0c007778: e58d2000  str r2, [sp, #0x0]
0c00777c: e3520003  cmp r2, #0x3
0c007780: bafffffa  blt 0x0c007770
0c007784: e3a020a5  mov r2, #0xa5
0c007788: e5802434  str r2, [r0, #0x434]
0c00778c: e3a02000  mov r2, #0x0
0c007790: e58d2000  str r2, [sp, #0x0]
0c007794: e59d2000  ldr r2, [sp, #0x0]
0c007798: e2822001  add r2, r2, #0x1
0c00779c: e58d2000  str r2, [sp, #0x0]
0c0077a0: e3520003  cmp r2, #0x3
0c0077a4: bafffffa  blt 0x0c007794
0c0077a8: e3a02000  mov r2, #0x0
0c0077ac: e58d2000  str r2, [sp, #0x0]
0c0077b0: e58d2000  str r2, [sp, #0x0]
0c0077b4: e59d2000  ldr r2, [sp, #0x0]
0c0077b8: e2822001  add r2, r2, #0x1
0c0077bc: e58d2000  str r2, [sp, #0x0]
0c0077c0: e3520003  cmp r2, #0x3
0c0077c4: bafffffa  blt 0x0c0077b4
0c0077c8: e3a02006  mov r2, #0x6
0c0077cc: e5802438  str r2, [r0, #0x438]
0c0077d0: e3a02000  mov r2, #0x0
0c0077d4: e58d2000  str r2, [sp, #0x0]
0c0077d8: e59d2000  ldr r2, [sp, #0x0]
0c0077dc: e2822001  add r2, r2, #0x1
0c0077e0: e58d2000  str r2, [sp, #0x0]
0c0077e4: e3520003  cmp r2, #0x3
0c0077e8: bafffffa  blt 0x0c0077d8
0c0077ec: ea000021  b 0x0c007878
0c0077f0: e58d2000  str r2, [sp, #0x0]
0c0077f4: e3a02000  mov r2, #0x0
0c0077f8: e58d2000  str r2, [sp, #0x0]
0c0077fc: e59d2000  ldr r2, [sp, #0x0]
0c007800: e2822001  add r2, r2, #0x1
0c007804: e58d2000  str r2, [sp, #0x0]
0c007808: e3520003  cmp r2, #0x3
0c00780c: bafffffa  blt 0x0c0077fc
0c007810: e3a02064  mov r2, #0x64
0c007814: e5802434  str r2, [r0, #0x434]
0c007818: e3a02000  mov r2, #0x0
0c00781c: e58d2000  str r2, [sp, #0x0]
0c007820: e59d2000  ldr r2, [sp, #0x0]
0c007824: e2822001  add r2, r2, #0x1
0c007828: e58d2000  str r2, [sp, #0x0]
0c00782c: e3520003  cmp r2, #0x3
0c007830: bafffffa  blt 0x0c007820
0c007834: e3a02000  mov r2, #0x0
0c007838: e58d2000  str r2, [sp, #0x0]
0c00783c: e58d2000  str r2, [sp, #0x0]
0c007840: e59d2000  ldr r2, [sp, #0x0]
0c007844: e2822001  add r2, r2, #0x1
0c007848: e58d2000  str r2, [sp, #0x0]
0c00784c: e3520003  cmp r2, #0x3
0c007850: bafffffa  blt 0x0c007840
0c007854: e3a02003  mov r2, #0x3
0c007858: e5802438  str r2, [r0, #0x438]
0c00785c: e3a02000  mov r2, #0x0
0c007860: e58d2000  str r2, [sp, #0x0]
0c007864: e59d2000  ldr r2, [sp, #0x0]
0c007868: e2822001  add r2, r2, #0x1
0c00786c: e58d2000  str r2, [sp, #0x0]
0c007870: e3520003  cmp r2, #0x3
0c007874: bafffffa  blt 0x0c007864
0c007878: e3a02000  mov r2, #0x0
0c00787c: e58d2000  str r2, [sp, #0x0]
0c007880: e58d2000  str r2, [sp, #0x0]
0c007884: e59d2000  ldr r2, [sp, #0x0]
0c007888: e2822001  add r2, r2, #0x1
0c00788c: e58d2000  str r2, [sp, #0x0]
0c007890: e3520003  cmp r2, #0x3
0c007894: bafffffa  blt 0x0c007884
0c007898: e3a02039  mov r2, #0x39
0c00789c: e2822c03  add r2, r2, #0x300
0c0078a0: e580243c  str r2, [r0, #0x43c]
0c0078a4: e3a02000  mov r2, #0x0
0c0078a8: e58d2000  str r2, [sp, #0x0]
0c0078ac: e59d2000  ldr r2, [sp, #0x0]
0c0078b0: e2822001  add r2, r2, #0x1
0c0078b4: e58d2000  str r2, [sp, #0x0]
0c0078b8: e3520003  cmp r2, #0x3
0c0078bc: bafffffa  blt 0x0c0078ac
0c0078c0: e3a02000  mov r2, #0x0
0c0078c4: e58d2000  str r2, [sp, #0x0]
0c0078c8: e58d2000  str r2, [sp, #0x0]
0c0078cc: e59d2000  ldr r2, [sp, #0x0]
0c0078d0: e2822001  add r2, r2, #0x1
0c0078d4: e58d2000  str r2, [sp, #0x0]
0c0078d8: e3520003  cmp r2, #0x3
0c0078dc: bafffffa  blt 0x0c0078cc
0c0078e0: e5a01440  str r1, [r0, #0x440]!
0c0078e4: e3a00000  mov r0, #0x0
0c0078e8: e58d0000  str r0, [sp, #0x0]
0c0078ec: e59d0000  ldr r0, [sp, #0x0]
0c0078f0: e2800001  add r0, r0, #0x1
0c0078f4: e58d0000  str r0, [sp, #0x0]
0c0078f8: e3500003  cmp r0, #0x3
0c0078fc: bafffffa  blt 0x0c0078ec
0c007900: e28dd004  add sp, sp, #0x4
0c007904: ea0015e5  b 0x0c00d0a0
fn_0c007908:
0c007908: e1a0c00d  mov r12, sp
0c00790c: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c007910: e24cb004  sub r11, r12, #0x4
0c007914: e1a04000  mov r4, r0
0c007918: e1a05001  mov r5, r1
0c00791c: e24dd008  sub sp, sp, #0x8
0c007920: e51f6bc8  ldr r6, [pc, #-0xbc8] =0x0403f2fc
0c007924: e5960000  ldr r0, [r6, #0x0]
0c007928: e3100010  tst r0, #0x10
0c00792c: 0a000003  beq 0x0c007940
0c007930: e1a02005  mov r2, r5
0c007934: e1a01004  mov r1, r4
0c007938: e28f0f38  add r0, pc, #0xe0
0c00793c: eb0028e7  bl 0x0c011ce0 <fn_0c011ce0>
0c007940: e0860104  add r0, r6, r4, lsl #2
0c007944: e2800a03  add r0, r0, #0x3000
0c007948: e5901004  ldr r1, [r0, #0x4]
0c00794c: e5815000  str r5, [r1, #0x0]
0c007950: e3a01000  mov r1, #0x0
0c007954: e5902004  ldr r2, [r0, #0x4]
0c007958: e5a210ac  str r1, [r2, #0xac]!
0c00795c: e5902004  ldr r2, [r0, #0x4]
0c007960: e5a2404c  str r4, [r2, #0x4c]!
0c007964: e3e02000  mvn r2, #0x0
0c007968: e5903004  ldr r3, [r0, #0x4]
0c00796c: e5a32154  str r2, [r3, #0x154]!
0c007970: e5902004  ldr r2, [r0, #0x4]
0c007974: e5a21094  str r1, [r2, #0x94]!
0c007978: e5902004  ldr r2, [r0, #0x4]
0c00797c: e5a21090  str r1, [r2, #0x90]!
0c007980: e5902004  ldr r2, [r0, #0x4]
0c007984: e5a210c0  str r1, [r2, #0xc0]!
0c007988: e5902004  ldr r2, [r0, #0x4]
0c00798c: e5a21150  str r1, [r2, #0x150]!
0c007990: e5902004  ldr r2, [r0, #0x4]
0c007994: e5a21008  str r1, [r2, #0x8]!
0c007998: e5902004  ldr r2, [r0, #0x4]
0c00799c: e5a21048  str r1, [r2, #0x48]!
0c0079a0: e5902004  ldr r2, [r0, #0x4]
0c0079a4: e5a21060  str r1, [r2, #0x60]!
0c0079a8: e5902004  ldr r2, [r0, #0x4]
0c0079ac: e5a21064  str r1, [r2, #0x64]!
0c0079b0: e3a02c05  mov r2, #0x500
0c0079b4: e5903004  ldr r3, [r0, #0x4]
0c0079b8: e5a32068  str r2, [r3, #0x68]!
0c0079bc: e3a03b01  mov r3, #0x400
0c0079c0: e5902004  ldr r2, [r0, #0x4]
0c0079c4: e5a2306c  str r3, [r2, #0x6c]!
0c0079c8: e5902004  ldr r2, [r0, #0x4]
0c0079cc: e2823f5b  add r3, r2, #0x16c
0c0079d0: e5932000  ldr r2, [r3, #0x0]
0c0079d4: e3c22201  bic r2, r2, #0x10000000
0c0079d8: e5832000  str r2, [r3, #0x0]
0c0079dc: e3c22302  bic r2, r2, #0x8000000
0c0079e0: e5903004  ldr r3, [r0, #0x4]
0c0079e4: e5a3216c  str r2, [r3, #0x16c]!
0c0079e8: e5902004  ldr r2, [r0, #0x4]
0c0079ec: e5a21088  str r1, [r2, #0x88]!
0c0079f0: e3a02001  mov r2, #0x1
0c0079f4: e5903004  ldr r3, [r0, #0x4]
0c0079f8: e5a32170  str r2, [r3, #0x170]!
0c0079fc: e5900004  ldr r0, [r0, #0x4]
0c007a00: e5b0216c  ldr r2, [r0, #0x16c]!
0c007a04: e3c22402  bic r2, r2, #0x2000000
0c007a08: e5802000  str r2, [r0, #0x0]
0c007a0c: e58d1004  str r1, [sp, #0x4]
0c007a10: e58d4000  str r4, [sp, #0x0]
0c007a14: e1a0000d  mov r0, sp
0c007a18: eb00199e  bl 0x0c00e098 <DoDGRqstChannelGammaMap>
0c007a1c: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c007a20: 61737369  .asciz "assigning CHAN_ID %d to channel num %d\n"
fn_0c007a48:
0c007a48: e1a0c00d  mov r12, sp
0c007a4c: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c007a50: e24cb004  sub r11, r12, #0x4
0c007a54: e1a04000  mov r4, r0
0c007a58: e3a00000  mov r0, #0x0
0c007a5c: e52d0004  str r0, [sp, #-0x4]!
0c007a60: e58d0000  str r0, [sp, #0x0]
0c007a64: e59d0000  ldr r0, [sp, #0x0]
0c007a68: e2800001  add r0, r0, #0x1
0c007a6c: e58d0000  str r0, [sp, #0x0]
0c007a70: e3500003  cmp r0, #0x3
0c007a74: bafffffa  blt 0x0c007a64
0c007a78: e3a00000  mov r0, #0x0
0c007a7c: e59f1424  ldr r1, [pc, #0x424] =0x00600804
0c007a80: e7810504  str r0, [r1, r4, lsl #10]
0c007a84: e3a01000  mov r1, #0x0
0c007a88: e58d1000  str r1, [sp, #0x0]
0c007a8c: e59d1000  ldr r1, [sp, #0x0]
0c007a90: e2811001  add r1, r1, #0x1
0c007a94: e58d1000  str r1, [sp, #0x0]
0c007a98: e3510003  cmp r1, #0x3
0c007a9c: bafffffa  blt 0x0c007a8c
0c007aa0: e51f1d48  ldr r1, [pc, #-0xd48] =0x0403f2fc
0c007aa4: e0811104  add r1, r1, r4, lsl #2
0c007aa8: e2811a03  add r1, r1, #0x3000
0c007aac: e5911004  ldr r1, [r1, #0x4]
0c007ab0: e5911000  ldr r1, [r1, #0x0]
0c007ab4: e201101f  and r1, r1, #0x1f
0c007ab8: e3a02000  mov r2, #0x0
0c007abc: e58d2000  str r2, [sp, #0x0]
0c007ac0: e58d2000  str r2, [sp, #0x0]
0c007ac4: e59d2000  ldr r2, [sp, #0x0]
0c007ac8: e2822001  add r2, r2, #0x1
0c007acc: e58d2000  str r2, [sp, #0x0]
0c007ad0: e3520003  cmp r2, #0x3
0c007ad4: bafffffa  blt 0x0c007ac4
0c007ad8: e59f23cc  ldr r2, [pc, #0x3cc] =0x0060080c
0c007adc: e7821504  str r1, [r2, r4, lsl #10]
0c007ae0: e3a01000  mov r1, #0x0
0c007ae4: e58d1000  str r1, [sp, #0x0]
0c007ae8: e59d1000  ldr r1, [sp, #0x0]
0c007aec: e2811001  add r1, r1, #0x1
0c007af0: e58d1000  str r1, [sp, #0x0]
0c007af4: e3510003  cmp r1, #0x3
0c007af8: bafffffa  blt 0x0c007ae8
0c007afc: e3a02010  mov r2, #0x10
0c007b00: e3a01000  mov r1, #0x0
0c007b04: e58d1000  str r1, [sp, #0x0]
0c007b08: e58d1000  str r1, [sp, #0x0]
0c007b0c: e59d1000  ldr r1, [sp, #0x0]
0c007b10: e2811001  add r1, r1, #0x1
0c007b14: e58d1000  str r1, [sp, #0x0]
0c007b18: e3510003  cmp r1, #0x3
0c007b1c: bafffffa  blt 0x0c007b0c
0c007b20: e59f1388  ldr r1, [pc, #0x388] =0x00600818
0c007b24: e7812504  str r2, [r1, r4, lsl #10]
0c007b28: e3a02000  mov r2, #0x0
0c007b2c: e58d2000  str r2, [sp, #0x0]
0c007b30: e59d2000  ldr r2, [sp, #0x0]
0c007b34: e2822001  add r2, r2, #0x1
0c007b38: e58d2000  str r2, [sp, #0x0]
0c007b3c: e3520003  cmp r2, #0x3
0c007b40: bafffffa  blt 0x0c007b30
0c007b44: e3a02000  mov r2, #0x0
0c007b48: e58d2000  str r2, [sp, #0x0]
0c007b4c: e58d2000  str r2, [sp, #0x0]
0c007b50: e59d2000  ldr r2, [sp, #0x0]
0c007b54: e2822001  add r2, r2, #0x1
0c007b58: e58d2000  str r2, [sp, #0x0]
0c007b5c: e3520003  cmp r2, #0x3
0c007b60: bafffffa  blt 0x0c007b50
0c007b64: e7810504  str r0, [r1, r4, lsl #10]
0c007b68: e3a01000  mov r1, #0x0
0c007b6c: e58d1000  str r1, [sp, #0x0]
0c007b70: e59d1000  ldr r1, [sp, #0x0]
0c007b74: e2811001  add r1, r1, #0x1
0c007b78: e58d1000  str r1, [sp, #0x0]
0c007b7c: e3510003  cmp r1, #0x3
0c007b80: bafffffa  blt 0x0c007b70
0c007b84: e3a01000  mov r1, #0x0
0c007b88: e58d1000  str r1, [sp, #0x0]
0c007b8c: e58d1000  str r1, [sp, #0x0]
0c007b90: e59d1000  ldr r1, [sp, #0x0]
0c007b94: e2811001  add r1, r1, #0x1
0c007b98: e58d1000  str r1, [sp, #0x0]
0c007b9c: e3510003  cmp r1, #0x3
0c007ba0: bafffffa  blt 0x0c007b90
0c007ba4: e59f1308  ldr r1, [pc, #0x308] =0x0060081c
0c007ba8: e7810504  str r0, [r1, r4, lsl #10]
0c007bac: e3a01000  mov r1, #0x0
0c007bb0: e58d1000  str r1, [sp, #0x0]
0c007bb4: e59d1000  ldr r1, [sp, #0x0]
0c007bb8: e2811001  add r1, r1, #0x1
0c007bbc: e58d1000  str r1, [sp, #0x0]
0c007bc0: e3510003  cmp r1, #0x3
0c007bc4: bafffffa  blt 0x0c007bb4
0c007bc8: e3a01000  mov r1, #0x0
0c007bcc: e58d1000  str r1, [sp, #0x0]
0c007bd0: e58d1000  str r1, [sp, #0x0]
0c007bd4: e59d1000  ldr r1, [sp, #0x0]
0c007bd8: e2811001  add r1, r1, #0x1
0c007bdc: e58d1000  str r1, [sp, #0x0]
0c007be0: e3510003  cmp r1, #0x3
0c007be4: bafffffa  blt 0x0c007bd4
0c007be8: e3a01d23  mov r1, #0x8c0
0c007bec: e2811606  add r1, r1, #0x600000
0c007bf0: e7810504  str r0, [r1, r4, lsl #10]
0c007bf4: e3a01000  mov r1, #0x0
0c007bf8: e58d1000  str r1, [sp, #0x0]
0c007bfc: e59d1000  ldr r1, [sp, #0x0]
0c007c00: e2811001  add r1, r1, #0x1
0c007c04: e58d1000  str r1, [sp, #0x0]
0c007c08: e3510003  cmp r1, #0x3
0c007c0c: bafffffa  blt 0x0c007bfc
0c007c10: e3a01000  mov r1, #0x0
0c007c14: e58d1000  str r1, [sp, #0x0]
0c007c18: e58d1000  str r1, [sp, #0x0]
0c007c1c: e59d1000  ldr r1, [sp, #0x0]
0c007c20: e2811001  add r1, r1, #0x1
0c007c24: e58d1000  str r1, [sp, #0x0]
0c007c28: e3510003  cmp r1, #0x3
0c007c2c: bafffffa  blt 0x0c007c1c
0c007c30: e59f1280  ldr r1, [pc, #0x280] =0x0060090c
0c007c34: e7810504  str r0, [r1, r4, lsl #10]
0c007c38: e3a01000  mov r1, #0x0
0c007c3c: e58d1000  str r1, [sp, #0x0]
0c007c40: e59d1000  ldr r1, [sp, #0x0]
0c007c44: e2811001  add r1, r1, #0x1
0c007c48: e58d1000  str r1, [sp, #0x0]
0c007c4c: e3510003  cmp r1, #0x3
0c007c50: bafffffa  blt 0x0c007c40
0c007c54: e3a01000  mov r1, #0x0
0c007c58: e58d1000  str r1, [sp, #0x0]
0c007c5c: e58d1000  str r1, [sp, #0x0]
0c007c60: e59d1000  ldr r1, [sp, #0x0]
0c007c64: e2811001  add r1, r1, #0x1
0c007c68: e58d1000  str r1, [sp, #0x0]
0c007c6c: e3510003  cmp r1, #0x3
0c007c70: bafffffa  blt 0x0c007c60
0c007c74: e3a01e91  mov r1, #0x910
0c007c78: e2811606  add r1, r1, #0x600000
0c007c7c: e7810504  str r0, [r1, r4, lsl #10]
0c007c80: e3a01000  mov r1, #0x0
0c007c84: e58d1000  str r1, [sp, #0x0]
0c007c88: e59d1000  ldr r1, [sp, #0x0]
0c007c8c: e2811001  add r1, r1, #0x1
0c007c90: e58d1000  str r1, [sp, #0x0]
0c007c94: e3510003  cmp r1, #0x3
0c007c98: bafffffa  blt 0x0c007c88
0c007c9c: e3a01000  mov r1, #0x0
0c007ca0: e58d1000  str r1, [sp, #0x0]
0c007ca4: e58d1000  str r1, [sp, #0x0]
0c007ca8: e59d1000  ldr r1, [sp, #0x0]
0c007cac: e2811001  add r1, r1, #0x1
0c007cb0: e58d1000  str r1, [sp, #0x0]
0c007cb4: e3510003  cmp r1, #0x3
0c007cb8: bafffffa  blt 0x0c007ca8
0c007cbc: e3a01d27  mov r1, #0x9c0
0c007cc0: e2811606  add r1, r1, #0x600000
0c007cc4: e7810504  str r0, [r1, r4, lsl #10]
0c007cc8: e3a01000  mov r1, #0x0
0c007ccc: e58d1000  str r1, [sp, #0x0]
0c007cd0: e59d1000  ldr r1, [sp, #0x0]
0c007cd4: e2811001  add r1, r1, #0x1
0c007cd8: e58d1000  str r1, [sp, #0x0]
0c007cdc: e3510003  cmp r1, #0x3
0c007ce0: bafffffa  blt 0x0c007cd0
0c007ce4: e3a01000  mov r1, #0x0
0c007ce8: e58d1000  str r1, [sp, #0x0]
0c007cec: e58d1000  str r1, [sp, #0x0]
0c007cf0: e59d1000  ldr r1, [sp, #0x0]
0c007cf4: e2811001  add r1, r1, #0x1
0c007cf8: e58d1000  str r1, [sp, #0x0]
0c007cfc: e3510003  cmp r1, #0x3
0c007d00: bafffffa  blt 0x0c007cf0
0c007d04: e59f11b0  ldr r1, [pc, #0x1b0] =0x00600a04
0c007d08: e7810504  str r0, [r1, r4, lsl #10]
0c007d0c: e3a01000  mov r1, #0x0
0c007d10: e58d1000  str r1, [sp, #0x0]
0c007d14: e59d1000  ldr r1, [sp, #0x0]
0c007d18: e2811001  add r1, r1, #0x1
0c007d1c: e58d1000  str r1, [sp, #0x0]
0c007d20: e3510003  cmp r1, #0x3
0c007d24: bafffffa  blt 0x0c007d14
0c007d28: e3a01000  mov r1, #0x0
0c007d2c: e58d1000  str r1, [sp, #0x0]
0c007d30: e58d1000  str r1, [sp, #0x0]
0c007d34: e59d1000  ldr r1, [sp, #0x0]
0c007d38: e2811001  add r1, r1, #0x1
0c007d3c: e58d1000  str r1, [sp, #0x0]
0c007d40: e3510003  cmp r1, #0x3
0c007d44: bafffffa  blt 0x0c007d34
0c007d48: e59f1170  ldr r1, [pc, #0x170] =0x00600a34
0c007d4c: e7810504  str r0, [r1, r4, lsl #10]
0c007d50: e3a01000  mov r1, #0x0
0c007d54: e58d1000  str r1, [sp, #0x0]
0c007d58: e59d1000  ldr r1, [sp, #0x0]
0c007d5c: e2811001  add r1, r1, #0x1
0c007d60: e58d1000  str r1, [sp, #0x0]
0c007d64: e3510003  cmp r1, #0x3
0c007d68: bafffffa  blt 0x0c007d58
0c007d6c: e3a01000  mov r1, #0x0
0c007d70: e58d1000  str r1, [sp, #0x0]
0c007d74: e58d1000  str r1, [sp, #0x0]
0c007d78: e59d1000  ldr r1, [sp, #0x0]
0c007d7c: e2811001  add r1, r1, #0x1
0c007d80: e58d1000  str r1, [sp, #0x0]
0c007d84: e3510003  cmp r1, #0x3
0c007d88: bafffffa  blt 0x0c007d78
0c007d8c: e59f1130  ldr r1, [pc, #0x130] =0x00600a3c
0c007d90: e7810504  str r0, [r1, r4, lsl #10]
0c007d94: e3a01000  mov r1, #0x0
0c007d98: e58d1000  str r1, [sp, #0x0]
0c007d9c: e59d1000  ldr r1, [sp, #0x0]
0c007da0: e2811001  add r1, r1, #0x1
0c007da4: e58d1000  str r1, [sp, #0x0]
0c007da8: e3510003  cmp r1, #0x3
0c007dac: bafffffa  blt 0x0c007d9c
0c007db0: e3a01801  mov r1, #0x10000
0c007db4: e3a02000  mov r2, #0x0
0c007db8: e58d2000  str r2, [sp, #0x0]
0c007dbc: e58d2000  str r2, [sp, #0x0]
0c007dc0: e59d2000  ldr r2, [sp, #0x0]
0c007dc4: e2822001  add r2, r2, #0x1
0c007dc8: e58d2000  str r2, [sp, #0x0]
0c007dcc: e3520003  cmp r2, #0x3
0c007dd0: bafffffa  blt 0x0c007dc0
0c007dd4: e3a02e85  mov r2, #0x850
0c007dd8: e2822606  add r2, r2, #0x600000
0c007ddc: e7821504  str r1, [r2, r4, lsl #10]
0c007de0: e3a01000  mov r1, #0x0
0c007de4: e58d1000  str r1, [sp, #0x0]
0c007de8: e59d1000  ldr r1, [sp, #0x0]
0c007dec: e2811001  add r1, r1, #0x1
0c007df0: e58d1000  str r1, [sp, #0x0]
0c007df4: e3510003  cmp r1, #0x3
0c007df8: bafffffa  blt 0x0c007de8
0c007dfc: e3a01000  mov r1, #0x0
0c007e00: e58d1000  str r1, [sp, #0x0]
0c007e04: e58d1000  str r1, [sp, #0x0]
0c007e08: e59d1000  ldr r1, [sp, #0x0]
0c007e0c: e2811001  add r1, r1, #0x1
0c007e10: e58d1000  str r1, [sp, #0x0]
0c007e14: e3510003  cmp r1, #0x3
0c007e18: bafffffa  blt 0x0c007e08
0c007e1c: e3a01d25  mov r1, #0x940
0c007e20: e2811606  add r1, r1, #0x600000
0c007e24: e7810504  str r0, [r1, r4, lsl #10]
0c007e28: e3a01000  mov r1, #0x0
0c007e2c: e58d1000  str r1, [sp, #0x0]
0c007e30: e59d1000  ldr r1, [sp, #0x0]
0c007e34: e2811001  add r1, r1, #0x1
0c007e38: e58d1000  str r1, [sp, #0x0]
0c007e3c: e3510003  cmp r1, #0x3
0c007e40: bafffffa  blt 0x0c007e30
0c007e44: e3a01000  mov r1, #0x0
0c007e48: e58d1000  str r1, [sp, #0x0]
0c007e4c: e58d1000  str r1, [sp, #0x0]
0c007e50: e59d1000  ldr r1, [sp, #0x0]
0c007e54: e2811001  add r1, r1, #0x1
0c007e58: e58d1000  str r1, [sp, #0x0]
0c007e5c: e3510003  cmp r1, #0x3
0c007e60: bafffffa  blt 0x0c007e50
0c007e64: e3a01d26  mov r1, #0x980
0c007e68: e2811606  add r1, r1, #0x600000
0c007e6c: e7810504  str r0, [r1, r4, lsl #10]
0c007e70: e3a00000  mov r0, #0x0
0c007e74: e58d0000  str r0, [sp, #0x0]
0c007e78: e59d0000  ldr r0, [sp, #0x0]
0c007e7c: e2800001  add r0, r0, #0x1
0c007e80: e58d0000  str r0, [sp, #0x0]
0c007e84: e3500003  cmp r0, #0x3
0c007e88: bafffffa  blt 0x0c007e78
0c007e8c: e28dd004  add sp, sp, #0x4
0c007e90: e1a00004  mov r0, r4
0c007e94: eb001595  bl 0x0c00d4f0 <dgResetVocFifo>
0c007e98: e3a00b02  mov r0, #0x800
0c007e9c: e2800606  add r0, r0, #0x600000
0c007ea0: e7900504  ldr r0, [r0, r4, lsl #10]
0c007ea4: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c007ea8: 00600804  .word 0x00600804
0c007eac: 0060080c  .word 0x0060080c
0c007eb0: 00600818  .word 0x00600818
0c007eb4: 0060081c  .word 0x0060081c
0c007eb8: 0060090c  .word 0x0060090c
0c007ebc: 00600a04  .word 0x00600a04
0c007ec0: 00600a34  .word 0x00600a34
0c007ec4: 00600a3c  .word 0x00600a3c
fn_0c007ec8:
0c007ec8: e1a0c00d  mov r12, sp
0c007ecc: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c007ed0: e24cb004  sub r11, r12, #0x4
0c007ed4: e1a04000  mov r4, r0
0c007ed8: e24dd004  sub sp, sp, #0x4
0c007edc: e3a05006  mov r5, #0x6
0c007ee0: e3a01006  mov r1, #0x6
0c007ee4: ebfff535  bl 0x0c0053c0 <dgVDacModeWrite>
0c007ee8: e3a00ffa  mov r0, #0x3e8
0c007eec: e58d0000  str r0, [sp, #0x0]
0c007ef0: e59d0000  ldr r0, [sp, #0x0]
0c007ef4: e2400001  sub r0, r0, #0x1
0c007ef8: e58d0000  str r0, [sp, #0x0]
0c007efc: e3500000  cmp r0, #0x0
0c007f00: cafffffa  bgt 0x0c007ef0
0c007f04: e3851001  orr r1, r5, #0x1
0c007f08: e1a00004  mov r0, r4
0c007f0c: ebfff52b  bl 0x0c0053c0 <dgVDacModeWrite>
0c007f10: e3a00ffa  mov r0, #0x3e8
0c007f14: e58d0000  str r0, [sp, #0x0]
0c007f18: e59d0000  ldr r0, [sp, #0x0]
0c007f1c: e2400001  sub r0, r0, #0x1
0c007f20: e58d0000  str r0, [sp, #0x0]
0c007f24: e3500000  cmp r0, #0x0
0c007f28: cafffffa  bgt 0x0c007f18
0c007f2c: e3a06000  mov r6, #0x0
0c007f30: e3a00088  mov r0, #0x88
0c007f34: e3a01000  mov r1, #0x0
0c007f38: e52d1004  str r1, [sp, #-0x4]!
0c007f3c: e58d1000  str r1, [sp, #0x0]
0c007f40: e59d1000  ldr r1, [sp, #0x0]
0c007f44: e2811001  add r1, r1, #0x1
0c007f48: e58d1000  str r1, [sp, #0x0]
0c007f4c: e3510003  cmp r1, #0x3
0c007f50: bafffffa  blt 0x0c007f40
0c007f54: e3a01005  mov r1, #0x5
0c007f58: e3a05b0b  mov r5, #0x2c00
0c007f5c: e2855606  add r5, r5, #0x600000
0c007f60: e7851504  str r1, [r5, r4, lsl #10]
0c007f64: e3a01000  mov r1, #0x0
0c007f68: e58d1000  str r1, [sp, #0x0]
0c007f6c: e59d1000  ldr r1, [sp, #0x0]
0c007f70: e2811001  add r1, r1, #0x1
0c007f74: e58d1000  str r1, [sp, #0x0]
0c007f78: e3510003  cmp r1, #0x3
0c007f7c: bafffffa  blt 0x0c007f6c
0c007f80: e3a01000  mov r1, #0x0
0c007f84: e58d1000  str r1, [sp, #0x0]
0c007f88: e58d1000  str r1, [sp, #0x0]
0c007f8c: e59d1000  ldr r1, [sp, #0x0]
0c007f90: e2811001  add r1, r1, #0x1
0c007f94: e58d1000  str r1, [sp, #0x0]
0c007f98: e3510003  cmp r1, #0x3
0c007f9c: bafffffa  blt 0x0c007f8c
0c007fa0: e59f1218  ldr r1, [pc, #0x218] =0x00602c08
0c007fa4: e7810504  str r0, [r1, r4, lsl #10]
0c007fa8: e3a00000  mov r0, #0x0
0c007fac: e58d0000  str r0, [sp, #0x0]
0c007fb0: e59d0000  ldr r0, [sp, #0x0]
0c007fb4: e2800001  add r0, r0, #0x1
0c007fb8: e58d0000  str r0, [sp, #0x0]
0c007fbc: e3500003  cmp r0, #0x3
0c007fc0: bafffffa  blt 0x0c007fb0
0c007fc4: e28dd004  add sp, sp, #0x4
0c007fc8: e3a020e4  mov r2, #0xe4
0c007fcc: e1a00004  mov r0, r4
0c007fd0: e3a01006  mov r1, #0x6
0c007fd4: ebfff435  bl 0x0c0050b0 <dgVDacControlWrite>
0c007fd8: e3a00000  mov r0, #0x0
0c007fdc: e52d0004  str r0, [sp, #-0x4]!
0c007fe0: e58d0000  str r0, [sp, #0x0]
0c007fe4: e59d0000  ldr r0, [sp, #0x0]
0c007fe8: e2800001  add r0, r0, #0x1
0c007fec: e58d0000  str r0, [sp, #0x0]
0c007ff0: e3500003  cmp r0, #0x3
0c007ff4: bafffffa  blt 0x0c007fe4
0c007ff8: e7856504  str r6, [r5, r4, lsl #10]
0c007ffc: e3a00000  mov r0, #0x0
0c008000: e58d0000  str r0, [sp, #0x0]
0c008004: e59d0000  ldr r0, [sp, #0x0]
0c008008: e2800001  add r0, r0, #0x1
0c00800c: e58d0000  str r0, [sp, #0x0]
0c008010: e3500003  cmp r0, #0x3
0c008014: bafffffa  blt 0x0c008004
0c008018: e3a00000  mov r0, #0x0
0c00801c: e58d0000  str r0, [sp, #0x0]
0c008020: e58d0000  str r0, [sp, #0x0]
0c008024: e59d0000  ldr r0, [sp, #0x0]
0c008028: e2800001  add r0, r0, #0x1
0c00802c: e58d0000  str r0, [sp, #0x0]
0c008030: e3500003  cmp r0, #0x3
0c008034: bafffffa  blt 0x0c008024
0c008038: e7856504  str r6, [r5, r4, lsl #10]
0c00803c: e3a00000  mov r0, #0x0
0c008040: e58d0000  str r0, [sp, #0x0]
0c008044: e59d0000  ldr r0, [sp, #0x0]
0c008048: e2800001  add r0, r0, #0x1
0c00804c: e58d0000  str r0, [sp, #0x0]
0c008050: e3500003  cmp r0, #0x3
0c008054: bafffffa  blt 0x0c008044
0c008058: e3a00000  mov r0, #0x0
0c00805c: e5ad0004  str r0, [sp, #0x4]!
0c008060: e59f115c  ldr r1, [pc, #0x15c] =0x00602c04
0c008064: e41d0004  ldr r0, [sp], #-0x4
0c008068: e1a02100  mov r2, r0, lsl #2
0c00806c: e1820340  orr r0, r2, r0, asr #6
0c008070: e3a02000  mov r2, #0x0
0c008074: e58d2000  str r2, [sp, #0x0]
0c008078: e58d2000  str r2, [sp, #0x0]
0c00807c: e59d2000  ldr r2, [sp, #0x0]
0c008080: e2822001  add r2, r2, #0x1
0c008084: e58d2000  str r2, [sp, #0x0]
0c008088: e3520003  cmp r2, #0x3
0c00808c: bafffffa  blt 0x0c00807c
0c008090: e7810504  str r0, [r1, r4, lsl #10]
0c008094: e3a02000  mov r2, #0x0
0c008098: e58d2000  .word 0xe58d2000
0c00809c: e59d2000  ldr r2, [sp, #0x0]
0c0080a0: e2822001  add r2, r2, #0x1
0c0080a4: e58d2000  str r2, [sp, #0x0]
0c0080a8: e3520003  cmp r2, #0x3
0c0080ac: bafffffa  blt 0x0c00809c
0c0080b0: e3a02000  mov r2, #0x0
0c0080b4: e58d2000  str r2, [sp, #0x0]
0c0080b8: e58d2000  str r2, [sp, #0x0]
0c0080bc: e59d2000  ldr r2, [sp, #0x0]
0c0080c0: e2822001  add r2, r2, #0x1
0c0080c4: e58d2000  str r2, [sp, #0x0]
0c0080c8: e3520003  cmp r2, #0x3
0c0080cc: bafffffa  blt 0x0c0080bc
0c0080d0: e7810504  str r0, [r1, r4, lsl #10]
0c0080d4: e3a02000  mov r2, #0x0
0c0080d8: e58d2000  str r2, [sp, #0x0]
0c0080dc: e59d2000  ldr r2, [sp, #0x0]
0c0080e0: e2822001  add r2, r2, #0x1
0c0080e4: e58d2000  str r2, [sp, #0x0]
0c0080e8: e3520003  cmp r2, #0x3
0c0080ec: bafffffa  blt 0x0c0080dc
0c0080f0: e3a02000  mov r2, #0x0
0c0080f4: e58d2000  str r2, [sp, #0x0]
0c0080f8: e58d2000  str r2, [sp, #0x0]
0c0080fc: e59d2000  ldr r2, [sp, #0x0]
0c008100: e2822001  add r2, r2, #0x1
0c008104: e58d2000  str r2, [sp, #0x0]
0c008108: e3520003  cmp r2, #0x3
0c00810c: bafffffa  blt 0x0c0080fc
0c008110: e7810504  str r0, [r1, r4, lsl #10]
0c008114: e3a00000  mov r0, #0x0
0c008118: e58d0000  str r0, [sp, #0x0]
0c00811c: e59d0000  ldr r0, [sp, #0x0]
0c008120: e2800001  add r0, r0, #0x1
0c008124: e58d0000  str r0, [sp, #0x0]
0c008128: e3500003  cmp r0, #0x3
0c00812c: bafffffa  blt 0x0c00811c
0c008130: e5bd0004  ldr r0, [sp, #0x4]!
0c008134: e2800001  add r0, r0, #0x1
0c008138: e58d0000  str r0, [sp, #0x0]
0c00813c: e3500c01  cmp r0, #0x100
0c008140: baffffc7  blt 0x0c008064
0c008144: e1a00004  mov r0, r4
0c008148: e3a020ff  mov r2, #0xff
0c00814c: e3a01004  mov r1, #0x4
0c008150: ebfff3d6  bl 0x0c0050b0 <dgVDacControlWrite>
0c008154: e1a00004  mov r0, r4
0c008158: e3a02000  mov r2, #0x0
0c00815c: e3a01007  mov r1, #0x7
0c008160: ebfff3d2  bl 0x0c0050b0 <dgVDacControlWrite>
0c008164: e3a02000  mov r2, #0x0
0c008168: e1a00004  mov r0, r4
0c00816c: e3a01008  mov r1, #0x8
0c008170: ebfff3ce  bl 0x0c0050b0 <dgVDacControlWrite>
0c008174: e3a02000  mov r2, #0x0
0c008178: e1a00004  mov r0, r4
0c00817c: e3a0100d  mov r1, #0xd
0c008180: ebfff3ca  bl 0x0c0050b0 <dgVDacControlWrite>
0c008184: e1a00004  mov r0, r4
0c008188: e3a02000  mov r2, #0x0
0c00818c: e3a01009  mov r1, #0x9
0c008190: ebfff3c6  bl 0x0c0050b0 <dgVDacControlWrite>
0c008194: e1a00004  mov r0, r4
0c008198: e3a02000  mov r2, #0x0
0c00819c: e3a01f81  mov r1, #0x204
0c0081a0: ebfff3c2  bl 0x0c0050b0 <dgVDacControlWrite>
0c0081a4: e59f001c  ldr r0, [pc, #0x1c] =0x0403f2fc
0c0081a8: e5900000  ldr r0, [r0, #0x0]
0c0081ac: e3100080  tst r0, #0x80
0c0081b0: 11a01004  movne r1, r4
0c0081b4: 128f0f04  addne r0, pc, #0x10
0c0081b8: 1b0026c8  blne 0x0c011ce0 <fn_0c011ce0>
0c0081bc: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c0081c0: 00602c08  .word 0x00602c08
0c0081c4: 00602c04  .word 0x00602c04
0c0081c8: 0403f2fc  .word 0x0403f2fc
0c0081cc: 646f6e65  .asciz "done making vdac %d fetal\n"
dgMakeGDacFetal:
0c0081e8: e1a0c00d  mov r12, sp
0c0081ec: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c0081f0: e24cb004  sub r11, r12, #0x4
0c0081f4: e1a04000  mov r4, r0
0c0081f8: e3a02080  mov r2, #0x80
0c0081fc: e3a01000  mov r1, #0x0
0c008200: ebfff485  bl 0x0c00541c <fn_0c00541c>
0c008204: e1a00004  mov r0, r4
0c008208: e3a02080  mov r2, #0x80
0c00820c: e3a01001  mov r1, #0x1
0c008210: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c008214: eafff480  b 0x0c00541c <fn_0c00541c>
dgMakeEncoderFetal:
0c008218: e3a00000  mov r0, #0x0
0c00821c: e52d0004  str r0, [sp, #-0x4]!
0c008220: e58d0000  str r0, [sp, #0x0]
0c008224: e59d0000  ldr r0, [sp, #0x0]
0c008228: e2800001  add r0, r0, #0x1
0c00822c: e58d0000  str r0, [sp, #0x0]
0c008230: e3500003  cmp r0, #0x3
0c008234: bafffffa  blt 0x0c008224
0c008238: e3a00000  mov r0, #0x0
0c00823c: e3a01a06  mov r1, #0x6000
0c008240: e2811606  add r1, r1, #0x600000
0c008244: e5810004  str r0, [r1, #0x4]
0c008248: e58d0000  str r0, [sp, #0x0]
0c00824c: e59d0000  ldr r0, [sp, #0x0]
0c008250: e2800001  add r0, r0, #0x1
0c008254: e58d0000  str r0, [sp, #0x0]
0c008258: e3500003  cmp r0, #0x3
0c00825c: bafffffa  blt 0x0c00824c
0c008260: e28dd004  add sp, sp, #0x4
0c008264: e3a00000  mov r0, #0x0
0c008268: e3a02000  mov r2, #0x0
0c00826c: e52d2004  str r2, [sp, #-0x4]!
0c008270: e58d2000  str r2, [sp, #0x0]
0c008274: e59d2000  ldr r2, [sp, #0x0]
0c008278: e2822001  add r2, r2, #0x1
0c00827c: e58d2000  str r2, [sp, #0x0]
0c008280: e3520003  cmp r2, #0x3
0c008284: bafffffa  blt 0x0c008274
0c008288: e581000c  str r0, [r1, #0xc]
0c00828c: e3a02000  mov r2, #0x0
0c008290: e58d2000  str r2, [sp, #0x0]
0c008294: e59d2000  ldr r2, [sp, #0x0]
0c008298: e2822001  add r2, r2, #0x1
0c00829c: e58d2000  str r2, [sp, #0x0]
0c0082a0: e3520003  cmp r2, #0x3
0c0082a4: bafffffa  blt 0x0c008294
0c0082a8: e3a02000  mov r2, #0x0
0c0082ac: e58d2000  str r2, [sp, #0x0]
0c0082b0: e58d2000  str r2, [sp, #0x0]
0c0082b4: e59d2000  ldr r2, [sp, #0x0]
0c0082b8: e2822001  add r2, r2, #0x1
0c0082bc: e58d2000  str r2, [sp, #0x0]
0c0082c0: e3520003  cmp r2, #0x3
0c0082c4: bafffffa  blt 0x0c0082b4
0c0082c8: e581000c  str r0, [r1, #0xc]
0c0082cc: e3a02000  mov r2, #0x0
0c0082d0: e58d2000  str r2, [sp, #0x0]
0c0082d4: e59d2000  ldr r2, [sp, #0x0]
0c0082d8: e2822001  add r2, r2, #0x1
0c0082dc: e58d2000  str r2, [sp, #0x0]
0c0082e0: e3520003  cmp r2, #0x3
0c0082e4: bafffffa  blt 0x0c0082d4
0c0082e8: e3a02000  mov r2, #0x0
0c0082ec: e58d2000  str r2, [sp, #0x0]
0c0082f0: e58d2000  str r2, [sp, #0x0]
0c0082f4: e59d2000  ldr r2, [sp, #0x0]
0c0082f8: e2822001  add r2, r2, #0x1
0c0082fc: e58d2000  str r2, [sp, #0x0]
0c008300: e3520003  cmp r2, #0x3
0c008304: bafffffa  blt 0x0c0082f4
0c008308: e581000c  str r0, [r1, #0xc]
0c00830c: e3a02000  mov r2, #0x0
0c008310: e58d2000  str r2, [sp, #0x0]
0c008314: e59d2000  ldr r2, [sp, #0x0]
0c008318: e2822001  add r2, r2, #0x1
0c00831c: e58d2000  str r2, [sp, #0x0]
0c008320: e3520003  cmp r2, #0x3
0c008324: bafffffa  blt 0x0c008314
0c008328: e28dd004  add sp, sp, #0x4
0c00832c: e2800001  add r0, r0, #0x1
0c008330: e3500c01  cmp r0, #0x100
0c008334: baffffcb  blt 0x0c008268
0c008338: e1a0f00e  mov pc, lr
fn_0c00833c:
0c00833c: e1a0f00e  mov pc, lr
fn_0c008340:
0c008340: e51f0180  ldr r0, [pc, #-0x180] =0x0403f2fc
0c008344: e590100c  ldr r1, [r0, #0xc]
0c008348: e3c11b06  bic r1, r1, #0x1800
0c00834c: e3811b02  orr r1, r1, #0x800
0c008350: e5a0100c  str r1, [r0, #0xc]!
0c008354: e3a00000  mov r0, #0x0
0c008358: e52d0004  str r0, [sp, #-0x4]!
0c00835c: e58d0000  str r0, [sp, #0x0]
0c008360: e59d0000  ldr r0, [sp, #0x0]
0c008364: e2800001  add r0, r0, #0x1
0c008368: e58d0000  str r0, [sp, #0x0]
0c00836c: e3500003  cmp r0, #0x3
0c008370: bafffffa  blt 0x0c008360
0c008374: e3a00a21  mov r0, #0x21000
0c008378: e2800606  add r0, r0, #0x600000
0c00837c: e5801000  str r1, [r0, #0x0]
0c008380: e3a00000  mov r0, #0x0
0c008384: e58d0000  str r0, [sp, #0x0]
0c008388: e59d0000  ldr r0, [sp, #0x0]
0c00838c: e2800001  add r0, r0, #0x1
0c008390: e58d0000  str r0, [sp, #0x0]
0c008394: e3500003  cmp r0, #0x3
0c008398: bafffffa  blt 0x0c008388
0c00839c: e28dd004  add sp, sp, #0x4
0c0083a0: e1a0f00e  mov pc, lr
0c0083a4: 4853594e  ldmmida r3, {r1,r2,r3,r6,r8,r11,r12,lr}^
0c0083a8: 43000000  tstmi r0, #0x0
0c0083ac: 5653594e  ldrplb r5, [r3], -lr, asr #18
0c0083b0: 43000000  tstmi r0, #0x0
0c0083b4: 4353594e  cmpmi r3, #0x138000
0c0083b8: 43000000  tstmi r0, #0x0
0c0083bc: 43424c41  cmpmi r2, #0x4100
0c0083c0: 4e4b0000  copmi 0x4e4b0000
0c0083c4: 54524953  ldrplb r4, [r2], #-0x953
0c0083c8: 594e4300  stmpldb lr, {r8,r9,lr}^
0c0083cc: 4649454c  strmib r4, [r9], -r12, asr #10
0c0083d0: 445f5354  ldrmib r5, [pc], #-0x354
0c0083d4: 41525400  cmpmi r2, r0, lsl #8
0c0083d8: 4649454c  strmib r4, [r9], -r12, asr #10
0c0083dc: 44000000  strmi r0, [r0], #-0x0
0c0083e0: 4652414d  ldrmib r4, [r2], -sp, asr #2
0c0083e4: 455f5354  ldrmib r5, [pc, #-0x354] =0xe58d2000
0c0083e8: 41525400  cmpmi r2, r0, lsl #8
0c0083ec: 56494445  strplb r4, [r9], -r5, asr #8
0c0083f0: 4f5f4143  swimi 0x5f4143
0c0083f4: 54495645  strplb r5, [r9], #-0x645
0c0083f8: 00000000  andeq r0, r0, r0
0c0083fc: 4c494e45  copmi 0x4c494e45
0c008400: 5f535441  swipl 0x535441
0c008404: 52540000  subpls r0, r4, #0x0
0c008408: 53544552  cmppl r4, #0x14800000
0c00840c: 454f5f4f  strmib r5, [pc, #-0xf4f]
0c008410: 55540000  ldrplb r0, [r4, #-0x0]
0c008414: 494d5052  stmmidb sp, {r1,r4,r6,r12,lr}^
0c008418: 45475f4c  strmib r5, [r7, #-0xf4c]
0c00841c: 44000000  strmi r0, [r0], #-0x0
0c008420: 584d4150  stmplda sp, {r4,r6,r8,lr}^
0c008424: 5245475f  subpl r4, r5, #0x17c0000
0c008428: 4c440000  copmi 0x4c440000
0c00842c: 564f465f  strplb r4, [pc], -pc, asr r6
0c008430: 56445243  strplb r5, [r4], -r3, asr #4
0c008434: 5f454e00  swipl 0x454e00
fn_0c008438:
0c008438: e1a0c00d  mov r12, sp
0c00843c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c008440: e24cb004  sub r11, r12, #0x4
0c008444: e1a04000  mov r4, r0
0c008448: e3a05000  mov r5, #0x0
0c00844c: e5900050  ldr r0, [r0, #0x50]
0c008450: e3500000  cmp r0, #0x0
0c008454: d91bacf0  ldmledb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c008458: e3a0a000  mov r10, #0x0
0c00845c: e3a07000  mov r7, #0x0
0c008460: e0840105  add r0, r4, r5, lsl #2
0c008464: e590657c  ldr r6, [r0, #0x57c]
0c008468: e59005bc  ldr r0, [r0, #0x5bc]
0c00846c: e3300000  teq r0, #0x0
0c008470: 0a00000b  beq 0x0c0084a4
0c008474: e3300001  teq r0, #0x1
0c008478: 03a07001  moveq r7, #0x1
0c00847c: 01a0a007  moveq r10, r7
0c008480: 0a000007  beq 0x0c0084a4
0c008484: e3300002  teq r0, #0x2
0c008488: 03a07001  moveq r7, #0x1
0c00848c: 0a000004  beq 0x0c0084a4
0c008490: e3300003  teq r0, #0x3
0c008494: 03a0a001  moveq r10, #0x1
0c008498: 0a000001  beq 0x0c0084a4
0c00849c: e28f0f3d  add r0, pc, #0xf4
0c0084a0: eb00260e  bl 0x0c011ce0 <fn_0c011ce0>
0c0084a4: e20a0001  and r0, r10, #0x1
0c0084a8: e3a01008  mov r1, #0x8
0c0084ac: e0011187  and r1, r1, r7, lsl #3
0c0084b0: e1800001  orr r0, r0, r1
0c0084b4: e3c00040  bic r0, r0, #0x40
0c0084b8: e3a01040  mov r1, #0x40
0c0084bc: e001130a  and r1, r1, r10, lsl #6
0c0084c0: e1800001  orr r0, r0, r1
0c0084c4: e3c00c02  bic r0, r0, #0x200
0c0084c8: e3a01c02  mov r1, #0x200
0c0084cc: e0011487  and r1, r1, r7, lsl #9
0c0084d0: e1800001  orr r0, r0, r1
0c0084d4: e3c00006  bic r0, r0, #0x6
0c0084d8: e3a01006  mov r1, #0x6
0c0084dc: e0011086  and r1, r1, r6, lsl #1
0c0084e0: e1800001  orr r0, r0, r1
0c0084e4: e3c00030  bic r0, r0, #0x30
0c0084e8: e3a01030  mov r1, #0x30
0c0084ec: e0011206  and r1, r1, r6, lsl #4
0c0084f0: e1800001  orr r0, r0, r1
0c0084f4: e3c00d06  bic r0, r0, #0x180
0c0084f8: e3a01d06  mov r1, #0x180
0c0084fc: e0011386  and r1, r1, r6, lsl #7
0c008500: e1800001  orr r0, r0, r1
0c008504: e3c00b03  bic r0, r0, #0xc00
0c008508: e3a01b03  mov r1, #0xc00
0c00850c: e0011506  and r1, r1, r6, lsl #10
0c008510: e1800001  orr r0, r0, r1
0c008514: e3a01000  mov r1, #0x0
0c008518: e52d1004  str r1, [sp, #-0x4]!
0c00851c: e58d1000  str r1, [sp, #0x0]
0c008520: e59d1000  ldr r1, [sp, #0x0]
0c008524: e2811001  add r1, r1, #0x1
0c008528: e58d1000  str r1, [sp, #0x0]
0c00852c: e3510003  cmp r1, #0x3
0c008530: bafffffa  blt 0x0c008520
0c008534: e5941000  ldr r1, [r4, #0x0]
0c008538: e0851401  add r1, r5, r1, lsl #8
0c00853c: e3a02d26  mov r2, #0x980
0c008540: e2822606  add r2, r2, #0x600000
0c008544: e7820101  str r0, [r2, r1, lsl #2]
0c008548: e3a01000  mov r1, #0x0
0c00854c: e58d1000  str r1, [sp, #0x0]
0c008550: e59d1000  ldr r1, [sp, #0x0]
0c008554: e2811001  add r1, r1, #0x1
0c008558: e58d1000  str r1, [sp, #0x0]
0c00855c: e3510003  cmp r1, #0x3
0c008560: bafffffa  blt 0x0c008550
0c008564: e28dd004  add sp, sp, #0x4
0c008568: e59f2048  ldr r2, [pc, #0x48] =0x0403f2fc
0c00856c: e5941000  ldr r1, [r4, #0x0]
0c008570: e0821101  add r1, r2, r1, lsl #2
0c008574: e2811a03  add r1, r1, #0x3000
0c008578: e5911004  ldr r1, [r1, #0x4]
0c00857c: e0811205  add r1, r1, r5, lsl #4
0c008580: e2855001  add r5, r5, #0x1
0c008584: e5a100d8  str r0, [r1, #0xd8]!
0c008588: e5940050  ldr r0, [r4, #0x50]
0c00858c: e1550000  cmp r5, r0
0c008590: baffffb0  blt 0x0c008458
0c008594: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c008598: 496c6c65  .asciz "Illegal field stereo setting\n"
0c0085b8: 0403f2fc  .word 0x0403f2fc
fn_0c0085bc:
0c0085bc: e92d4010  stmdb sp!, {r4,lr}
0c0085c0: e3a03e91  mov r3, #0x910
0c0085c4: e2833606  add r3, r3, #0x600000
0c0085c8: e7932500  ldr r2, [r3, r0, lsl #10]
0c0085cc: e3c22001  bic r2, r2, #0x1
0c0085d0: e201c001  and r12, r1, #0x1
0c0085d4: e182200c  orr r2, r2, r12
0c0085d8: e3a0e000  mov lr, #0x0
0c0085dc: e52de004  str lr, [sp, #-0x4]!
0c0085e0: e58de000  str lr, [sp, #0x0]
0c0085e4: e59de000  ldr lr, [sp, #0x0]
0c0085e8: e28ee001  add lr, lr, #0x1
0c0085ec: e58de000  str lr, [sp, #0x0]
0c0085f0: e35e0003  cmp lr, #0x3
0c0085f4: bafffffa  blt 0x0c0085e4
0c0085f8: e7832500  str r2, [r3, r0, lsl #10]
0c0085fc: e3a03000  mov r3, #0x0
0c008600: e58d3000  str r3, [sp, #0x0]
0c008604: e59d3000  ldr r3, [sp, #0x0]
0c008608: e2833001  add r3, r3, #0x1
0c00860c: e58d3000  str r3, [sp, #0x0]
0c008610: e3530003  cmp r3, #0x3
0c008614: bafffffa  blt 0x0c008604
0c008618: e28dd004  add sp, sp, #0x4
0c00861c: e51fe06c  ldr lr, [pc, #-0x6c] =0x0403f2fc
0c008620: e08e3100  add r3, lr, r0, lsl #2
0c008624: e2833a03  add r3, r3, #0x3000
0c008628: e5933004  ldr r3, [r3, #0x4]
0c00862c: e5b3416c  ldr r4, [r3, #0x16c]!
0c008630: e3c44302  bic r4, r4, #0x8000000
0c008634: e184cd8c  orr r12, r4, r12, lsl #27
0c008638: e583c000  str r12, [r3, #0x0]
0c00863c: e59e3000  ldr r3, [lr, #0x0]
0c008640: e3130b01  tst r3, #0x400
0c008644: 08bd8010  ldmeqia sp!, {r4,pc}
0c008648: e3310000  teq r1, #0x0
0c00864c: 028f1f05  addeq r1, pc, #0x14
0c008650: 128f1f05  addne r1, pc, #0x14
0c008654: e1a03002  mov r3, r2
0c008658: e1a02000  mov r2, r0
0c00865c: e28f0f03  add r0, pc, #0xc
0c008660: e8bd4010  ldmia sp!, {r4,lr}
0c008664: ea00259d  b 0x0c011ce0 <fn_0c011ce0>
0c008668: 44697300  .asciz "Dis"
0c00866c: 456e0000  strmib r0, [lr, #-0x0]!
0c008670: 25736162  .asciz "%sabled channel %d VDRC (reg=0x%08x)\n"
DoDGRqstLoadFormat:
0c008698: e1a0c00d  mov r12, sp
0c00869c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c0086a0: e24cb004  sub r11, r12, #0x4
0c0086a4: e1a04000  mov r4, r0
0c0086a8: e24dd004  sub sp, sp, #0x4
0c0086ac: e3a0a000  mov r10, #0x0
0c0086b0: e3a05000  mov r5, #0x0
0c0086b4: e5900000  ldr r0, [r0, #0x0]
0c0086b8: e3500000  cmp r0, #0x0
0c0086bc: ba000001  blt 0x0c0086c8
0c0086c0: e3500007  cmp r0, #0x7
0c0086c4: da000007  ble 0x0c0086e8
0c0086c8: e350001e  cmp r0, #0x1e
0c0086cc: ba000001  blt 0x0c0086d8
0c0086d0: e35000fd  cmp r0, #0xfd
0c0086d4: da000003  ble 0x0c0086e8
0c0086d8: e28f1fec  add r1, pc, #0x3b0
0c0086dc: e28f0fef  add r0, pc, #0x3bc
0c0086e0: e3a02084  mov r2, #0x84
0c0086e4: eb002983  bl 0x0c012cf8 <fn_0c012cf8>
0c0086e8: e5940000  ldr r0, [r4, #0x0]
0c0086ec: e58d0000  str r0, [sp, #0x0]
0c0086f0: e1a0000d  mov r0, sp
0c0086f4: eb000554  bl 0x0c009c4c <DoDGRqstDisableChannel>
0c0086f8: e5941068  ldr r1, [r4, #0x68]
0c0086fc: e51f214c  ldr r2, [pc, #-0x14c] =0x0403f2fc
0c008700: e5940000  ldr r0, [r4, #0x0]
0c008704: e0820100  add r0, r2, r0, lsl #2
0c008708: e2800a03  add r0, r0, #0x3000
0c00870c: e5900004  ldr r0, [r0, #0x4]
0c008710: e5a010a0  str r1, [r0, #0xa0]!
0c008714: e5941000  ldr r1, [r4, #0x0]
0c008718: e0821101  add r1, r2, r1, lsl #2
0c00871c: e2811a03  add r1, r1, #0x3000
0c008720: e594006c  ldr r0, [r4, #0x6c]
0c008724: e5911004  ldr r1, [r1, #0x4]
0c008728: e5b1316c  ldr r3, [r1, #0x16c]!
0c00872c: e3c33101  bic r3, r3, #0x40000000
0c008730: e2000001  and r0, r0, #0x1
0c008734: e1830f00  orr r0, r3, r0, lsl #30
0c008738: e5810000  str r0, [r1, #0x0]
0c00873c: e5941000  ldr r1, [r4, #0x0]
0c008740: e0821101  add r1, r2, r1, lsl #2
0c008744: e2811a03  add r1, r1, #0x3000
0c008748: e5940048  ldr r0, [r4, #0x48]
0c00874c: e5911004  ldr r1, [r1, #0x4]
0c008750: e5a10048  str r0, [r1, #0x48]!
0c008754: e5940000  ldr r0, [r4, #0x0]
0c008758: e0820100  add r0, r2, r0, lsl #2
0c00875c: e2800a03  add r0, r0, #0x3000
0c008760: e59414b4  ldr r1, [r4, #0x4b4]
0c008764: e5900004  ldr r0, [r0, #0x4]
0c008768: e5a010a4  str r1, [r0, #0xa4]!
0c00876c: e5940000  ldr r0, [r4, #0x0]
0c008770: e0820100  add r0, r2, r0, lsl #2
0c008774: e2800a03  add r0, r0, #0x3000
0c008778: e59414b8  ldr r1, [r4, #0x4b8]
0c00877c: e5900004  ldr r0, [r0, #0x4]
0c008780: e5a010a8  str r1, [r0, #0xa8]!
0c008784: e5941000  ldr r1, [r4, #0x0]
0c008788: e0821101  add r1, r2, r1, lsl #2
0c00878c: e2811a03  add r1, r1, #0x3000
0c008790: e5940050  ldr r0, [r4, #0x50]
0c008794: e5911004  ldr r1, [r1, #0x4]
0c008798: e3a07000  mov r7, #0x0
0c00879c: e5a10098  str r0, [r1, #0x98]!
0c0087a0: e5940000  ldr r0, [r4, #0x0]
0c0087a4: e0820100  add r0, r2, r0, lsl #2
0c0087a8: e2800a03  add r0, r0, #0x3000
0c0087ac: e5900004  ldr r0, [r0, #0x4]
0c0087b0: e5a07150  str r7, [r0, #0x150]!
0c0087b4: e3a00000  mov r0, #0x0
0c0087b8: e3a06001  mov r6, #0x1
0c0087bc: e5941050  ldr r1, [r4, #0x50]
0c0087c0: e3510000  cmp r1, #0x0
0c0087c4: da000014  ble 0x0c00881c
0c0087c8: e0841100  add r1, r4, r0, lsl #2
0c0087cc: e591c53c  ldr r12, [r1, #0x53c]
0c0087d0: e5943000  ldr r3, [r4, #0x0]
0c0087d4: e0823103  add r3, r2, r3, lsl #2
0c0087d8: e2833a03  add r3, r3, #0x3000
0c0087dc: e5933004  ldr r3, [r3, #0x4]
0c0087e0: e0833200  add r3, r3, r0, lsl #4
0c0087e4: e5a3c0d4  str r12, [r3, #0xd4]!
0c0087e8: e59134fc  ldr r3, [r1, #0x4fc]
0c0087ec: e594c000  ldr r12, [r4, #0x0]
0c0087f0: e082c10c  add r12, r2, r12, lsl #2
0c0087f4: e28cca03  add r12, r12, #0x3000
0c0087f8: e59cc004  ldr r12, [r12, #0x4]
0c0087fc: e08cc200  add r12, r12, r0, lsl #4
0c008800: e5ac30d0  str r3, [r12, #0xd0]!
0c008804: e59114fc  ldr r1, [r1, #0x4fc]
0c008808: e18aa116  orr r10, r10, r6, lsl r1
0c00880c: e2800001  add r0, r0, #0x1
0c008810: e5941050  ldr r1, [r4, #0x50]
0c008814: e1500001  cmp r0, r1
0c008818: baffffea  blt 0x0c0087c8
0c00881c: e51f026c  ldr r0, [pc, #-0x26c] =0x0403f2fc
0c008820: e5900000  ldr r0, [r0, #0x0]
0c008824: e3100020  tst r0, #0x20
0c008828: 0a000003  beq 0x0c00883c
0c00882c: e1a0100a  mov r1, r10
0c008830: e5942050  ldr r2, [r4, #0x50]
0c008834: e28f0fa1  add r0, pc, #0x284
0c008838: eb002528  bl 0x0c011ce0 <fn_0c011ce0>
0c00883c: e3a00000  mov r0, #0x0
0c008840: e35a0000  cmp r10, #0x0
0c008844: da000004  ble 0x0c00885c
0c008848: e20a1001  and r1, r10, #0x1
0c00884c: e0810000  add r0, r1, r0
0c008850: e1a0a0ca  mov r10, r10, asr #1
0c008854: e35a0000  cmp r10, #0x0
0c008858: cafffffa  bgt 0x0c008848
0c00885c: e51fa2ac  ldr r10, [pc, #-0x2ac] =0x0403f2fc
0c008860: e5941000  ldr r1, [r4, #0x0]
0c008864: e08a1101  add r1, r10, r1, lsl #2
0c008868: e2811a03  add r1, r1, #0x3000
0c00886c: e5911004  ldr r1, [r1, #0x4]
0c008870: e5a1009c  str r0, [r1, #0x9c]!
0c008874: e59a1000  ldr r1, [r10, #0x0]
0c008878: e3110020  tst r1, #0x20
0c00887c: 11a01000  movne r1, r0
0c008880: 128f0f98  addne r0, pc, #0x260
0c008884: 1b002515  blne 0x0c011ce0 <fn_0c011ce0>
0c008888: e3a00000  mov r0, #0x0
0c00888c: e0841100  add r1, r4, r0, lsl #2
0c008890: e5b12008  ldr r2, [r1, #0x8]!
0c008894: e51f32e4  ldr r3, [pc, #-0x2e4] =0x0403f2fc
0c008898: e5941000  ldr r1, [r4, #0x0]
0c00889c: e0831101  add r1, r3, r1, lsl #2
0c0088a0: e2811a03  add r1, r1, #0x3000
0c0088a4: e5911004  ldr r1, [r1, #0x4]
0c0088a8: e0811100  add r1, r1, r0, lsl #2
0c0088ac: e2800001  add r0, r0, #0x1
0c0088b0: e3500010  cmp r0, #0x10
0c0088b4: e5a12008  str r2, [r1, #0x8]!
0c0088b8: 3afffff3  bcc 0x0c00888c
0c0088bc: e284105c  add r1, r4, #0x5c
0c0088c0: e2811b01  add r1, r1, #0x400
0c0088c4: e3a02000  mov r2, #0x0
0c0088c8: e5940000  ldr r0, [r4, #0x0]
0c0088cc: ebffe7c3  bl 0x0c0027e0 <dgLoadVocClockParams>
0c0088d0: e284107c  add r1, r4, #0x7c
0c0088d4: e2811b01  add r1, r1, #0x400
0c0088d8: e3a02001  mov r2, #0x1
0c0088dc: e5940000  ldr r0, [r4, #0x0]
0c0088e0: ebffe7be  bl 0x0c0027e0 <dgLoadVocClockParams>
0c0088e4: e3a02000  mov r2, #0x0
0c0088e8: e3a01000  mov r1, #0x0
0c0088ec: e5940000  ldr r0, [r4, #0x0]
0c0088f0: ebffe884  bl 0x0c002b08 <dgStartVocClock>
0c0088f4: e59f0200  ldr r0, [pc, #0x200] =0x0406f70c
0c0088f8: e5901000  ldr r1, [r0, #0x0]
0c0088fc: e3310000  teq r1, #0x0
0c008900: 1a00000f  bne 0x0c008944
0c008904: e59f11f4  ldr r1, [pc, #0x1f4] =0x04018ef4
0c008908: e5900048  ldr r0, [r0, #0x48]
0c00890c: e7910100  ldr r0, [r1, r0, lsl #2]
0c008910: e3500001  cmp r0, #0x1
0c008914: aa00000a  bge 0x0c008944
0c008918: e59f11e4  ldr r1, [pc, #0x1e4] =0x04018ecc
0c00891c: e5912000  ldr r2, [r1, #0x0]
0c008920: e3320000  teq r2, #0x0
0c008924: 1a000003  bne 0x0c008938
0c008928: e5816000  str r6, [r1, #0x0]
0c00892c: e1a01000  mov r1, r0
0c008930: e28f0f74  add r0, pc, #0x1d0
0c008934: eb0024e9  bl 0x0c011ce0 <fn_0c011ce0>
0c008938: e5940080  ldr r0, [r4, #0x80]
0c00893c: e3800806  orr r0, r0, #0x60000
0c008940: e5840080  str r0, [r4, #0x80]
0c008944: e3a00000  mov r0, #0x0
0c008948: e52d0004  str r0, [sp, #-0x4]!
0c00894c: e58d0000  str r0, [sp, #0x0]
0c008950: e59d0000  ldr r0, [sp, #0x0]
0c008954: e2800001  add r0, r0, #0x1
0c008958: e58d0000  str r0, [sp, #0x0]
0c00895c: e3500003  cmp r0, #0x3
0c008960: bafffffa  blt 0x0c008950
0c008964: e5940000  ldr r0, [r4, #0x0]
0c008968: e5941080  ldr r1, [r4, #0x80]
0c00896c: e59f21c8  ldr r2, [pc, #0x1c8] =0x0060081c
0c008970: e7821500  str r1, [r2, r0, lsl #10]
0c008974: e3a00000  mov r0, #0x0
0c008978: e58d0000  str r0, [sp, #0x0]
0c00897c: e59d0000  ldr r0, [sp, #0x0]
0c008980: e2800001  add r0, r0, #0x1
0c008984: e58d0000  str r0, [sp, #0x0]
0c008988: e3500003  cmp r0, #0x3
0c00898c: bafffffa  blt 0x0c00897c
0c008990: e5940000  ldr r0, [r4, #0x0]
0c008994: e59fa1a4  ldr r10, [pc, #0x1a4] =0x00600818
0c008998: e79a0500  ldr r0, [r10, r0, lsl #10]
0c00899c: e3800008  orr r0, r0, #0x8
0c0089a0: e3a01000  mov r1, #0x0
0c0089a4: e58d1000  str r1, [sp, #0x0]
0c0089a8: e58d1000  str r1, [sp, #0x0]
0c0089ac: e59d1000  ldr r1, [sp, #0x0]
0c0089b0: e2811001  add r1, r1, #0x1
0c0089b4: e58d1000  str r1, [sp, #0x0]
0c0089b8: e3510003  cmp r1, #0x3
0c0089bc: bafffffa  blt 0x0c0089ac
0c0089c0: e5941000  ldr r1, [r4, #0x0]
0c0089c4: e78a0501  str r0, [r10, r1, lsl #10]
0c0089c8: e3a01000  mov r1, #0x0
0c0089cc: e58d1000  str r1, [sp, #0x0]
0c0089d0: e59d1000  ldr r1, [sp, #0x0]
0c0089d4: e2811001  add r1, r1, #0x1
0c0089d8: e58d1000  str r1, [sp, #0x0]
0c0089dc: e3510003  cmp r1, #0x3
0c0089e0: bafffffa  blt 0x0c0089d0
0c0089e4: e3c00008  bic r0, r0, #0x8
0c0089e8: e3a01000  mov r1, #0x0
0c0089ec: e58d1000  str r1, [sp, #0x0]
0c0089f0: e58d1000  str r1, [sp, #0x0]
0c0089f4: e59d1000  ldr r1, [sp, #0x0]
0c0089f8: e2811001  add r1, r1, #0x1
0c0089fc: e58d1000  str r1, [sp, #0x0]
0c008a00: e3510003  cmp r1, #0x3
0c008a04: bafffffa  blt 0x0c0089f4
0c008a08: e5941000  ldr r1, [r4, #0x0]
0c008a0c: e78a0501  str r0, [r10, r1, lsl #10]
0c008a10: e3a00000  mov r0, #0x0
0c008a14: e58d0000  str r0, [sp, #0x0]
0c008a18: e59d0000  ldr r0, [sp, #0x0]
0c008a1c: e2800001  add r0, r0, #0x1
0c008a20: e58d0000  str r0, [sp, #0x0]
0c008a24: e3500003  cmp r0, #0x3
0c008a28: bafffffa  blt 0x0c008a18
0c008a2c: e28dd004  add sp, sp, #0x4
0c008a30: e594007c  ldr r0, [r4, #0x7c]
0c008a34: e3500000  cmp r0, #0x0
0c008a38: ba000001  blt 0x0c008a44
0c008a3c: e3500c01  cmp r0, #0x100
0c008a40: da000003  ble 0x0c008a54
0c008a44: e28f1f11  add r1, pc, #0x44
0c008a48: e28f0f3d  add r0, pc, #0xf4
0c008a4c: e3a020d7  mov r2, #0xd7
0c008a50: eb0028a8  bl 0x0c012cf8 <fn_0c012cf8>
0c008a54: e594007c  ldr r0, [r4, #0x7c]
0c008a58: e3100001  tst r0, #0x1
0c008a5c: e0800fa0  add r0, r0, r0, lsr #31
0c008a60: e1a000c0  mov r0, r0, asr #1
0c008a64: e0840100  add r0, r4, r0, lsl #2
0c008a68: e5900084  ldr r0, [r0, #0x84]
0c008a6c: 0a000055  beq 0x0c008bc8
0c008a70: e3c0033e  bic r0, r0, #0xf8000000
0c008a74: e3c00cff  bic r0, r0, #0xff00
0c008a78: e3d000ff  bics r0, r0, #0xff
0c008a7c: 128f1f03  addne r1, pc, #0xc
0c008a80: 128f0f3e  addne r0, pc, #0xf8
0c008a84: 13a020dc  movne r2, #0xdc
0c008a88: 1a000053  bne 0x0c008bdc
0c008a8c: ea000053  b 0x0c008be0
0c008a90: 76696465  .asciz "video_format.c"
0c008aa0: 44474973  .asciz "DGIsLegalVoc( p->nChannelNum )"
0c008ac0: 6669656c  .asciz "field bitmap is 0x%08x for %d fields\n"
0c008ae8: 25642073  .asciz "%d spatial fields\n"
0c008afc: 0406f70c  .word 0x0406f70c
0c008b00: 04018ef4  .word 0x04018ef4
0c008b04: 04018ecc  .word 0x04018ecc
0c008b08: 5761726e  .asciz "Warning: rev %d DG4 disables H & V sync outputs\n"
0c008b3c: 0060081c  .word 0x0060081c
0c008b40: 00600818  .word 0x00600818
0c008b44: 28702d3e  .asciz "(p->nStates >= 0) && (p->nStates <= VOF_STATE_TABLE_SIZE)"
0c008b80: 7663566f  .asciz "vcVocGetFld( p->nVOF_STATE[p->nStates / 2], VOF_STATE, DURATION1 ) == 0"
0c008bc8: e1b00a80  movs r0, r0, lsl #21
0c008bcc: 0a000003  beq 0x0c008be0
0c008bd0: e24f1f52  sub r1, pc, #0x148
0c008bd4: e28f0fc4  add r0, pc, #0x310
0c008bd8: e3a020e0  mov r2, #0xe0
0c008bdc: eb002845  bl 0x0c012cf8 <fn_0c012cf8>
0c008be0: e594007c  ldr r0, [r4, #0x7c]
0c008be4: e2801001  add r1, r0, #0x1
0c008be8: e0811fa1  add r1, r1, r1, lsr #31
0c008bec: e1b010c1  movs r1, r1, asr #1
0c008bf0: e3a00000  mov r0, #0x0
0c008bf4: 4a000017  bmi 0x0c008c58
0c008bf8: e59f2334  ldr r2, [pc, #0x334] =0x00600824
0c008bfc: e3a03000  mov r3, #0x0
0c008c00: e52d3004  str r3, [sp, #-0x4]!
0c008c04: e58d3000  str r3, [sp, #0x0]
0c008c08: e59d3000  ldr r3, [sp, #0x0]
0c008c0c: e2833001  add r3, r3, #0x1
0c008c10: e58d3000  str r3, [sp, #0x0]
0c008c14: e3530003  cmp r3, #0x3
0c008c18: bafffffa  blt 0x0c008c08
0c008c1c: e0843100  add r3, r4, r0, lsl #2
0c008c20: e5b3c084  ldr r12, [r3, #0x84]!
0c008c24: e5943000  ldr r3, [r4, #0x0]
0c008c28: e782c503  str r12, [r2, r3, lsl #10]
0c008c2c: e3a03000  mov r3, #0x0
0c008c30: e58d3000  str r3, [sp, #0x0]
0c008c34: e59d3000  ldr r3, [sp, #0x0]
0c008c38: e2833001  add r3, r3, #0x1
0c008c3c: e58d3000  str r3, [sp, #0x0]
0c008c40: e3530003  cmp r3, #0x3
0c008c44: bafffffa  blt 0x0c008c34
0c008c48: e28dd004  add sp, sp, #0x4
0c008c4c: e2800001  add r0, r0, #0x1
0c008c50: e1500001  cmp r0, r1
0c008c54: daffffe8  ble 0x0c008bfc
0c008c58: e5940000  ldr r0, [r4, #0x0]
0c008c5c: e79a1500  ldr r1, [r10, r0, lsl #10]
0c008c60: e3a00000  mov r0, #0x0
0c008c64: e59fc2cc  ldr r12, [pc, #0x2cc] =0x00600828
0c008c68: e59f32cc  ldr r3, [pc, #0x2cc] =0x0060082c
0c008c6c: e3c11e1f  bic r1, r1, #0x1f0
0c008c70: e3a02e1f  mov r2, #0x1f0
0c008c74: e0022200  and r2, r2, r0, lsl #4
0c008c78: e1811002  orr r1, r1, r2
0c008c7c: e3a02000  mov r2, #0x0
0c008c80: e52d2004  str r2, [sp, #-0x4]!
0c008c84: e58d2000  str r2, [sp, #0x0]
0c008c88: e59d2000  ldr r2, [sp, #0x0]
0c008c8c: e2822001  add r2, r2, #0x1
0c008c90: e58d2000  str r2, [sp, #0x0]
0c008c94: e3520003  cmp r2, #0x3
0c008c98: bafffffa  blt 0x0c008c88
0c008c9c: e5942000  ldr r2, [r4, #0x0]
0c008ca0: e51fe168  ldr lr, [pc, #-0x168] =0x00600818
0c008ca4: e78e1502  str r1, [lr, r2, lsl #10]
0c008ca8: e3a02000  mov r2, #0x0
0c008cac: e58d2000  str r2, [sp, #0x0]
0c008cb0: e59d2000  ldr r2, [sp, #0x0]
0c008cb4: e2822001  add r2, r2, #0x1
0c008cb8: e58d2000  str r2, [sp, #0x0]
0c008cbc: e3520003  cmp r2, #0x3
0c008cc0: bafffffa  blt 0x0c008cb0
0c008cc4: e3a02000  mov r2, #0x0
0c008cc8: e58d2000  str r2, [sp, #0x0]
0c008ccc: e58d2000  str r2, [sp, #0x0]
0c008cd0: e59d2000  ldr r2, [sp, #0x0]
0c008cd4: e2822001  add r2, r2, #0x1
0c008cd8: e58d2000  str r2, [sp, #0x0]
0c008cdc: e3520003  cmp r2, #0x3
0c008ce0: bafffffa  blt 0x0c008cd0
0c008ce4: e0842100  add r2, r4, r0, lsl #2
0c008ce8: e592a284  ldr r10, [r2, #0x284]
0c008cec: e594e000  ldr lr, [r4, #0x0]
0c008cf0: e78ca50e  str r10, [r12, lr, lsl #10]
0c008cf4: e3a0e000  mov lr, #0x0
0c008cf8: e58de000  str lr, [sp, #0x0]
0c008cfc: e59de000  ldr lr, [sp, #0x0]
0c008d00: e28ee001  add lr, lr, #0x1
0c008d04: e58de000  str lr, [sp, #0x0]
0c008d08: e35e0003  cmp lr, #0x3
0c008d0c: bafffffa  blt 0x0c008cfc
0c008d10: e3a0e000  mov lr, #0x0
0c008d14: e58de000  str lr, [sp, #0x0]
0c008d18: e58de000  str lr, [sp, #0x0]
0c008d1c: e59de000  ldr lr, [sp, #0x0]
0c008d20: e28ee001  add lr, lr, #0x1
0c008d24: e58de000  str lr, [sp, #0x0]
0c008d28: e35e0003  cmp lr, #0x3
0c008d2c: bafffffa  blt 0x0c008d1c
0c008d30: e5b2e304  ldr lr, [r2, #0x304]!
0c008d34: e5942000  ldr r2, [r4, #0x0]
0c008d38: e783e502  str lr, [r3, r2, lsl #10]
0c008d3c: e3a02000  mov r2, #0x0
0c008d40: e58d2000  str r2, [sp, #0x0]
0c008d44: e59d2000  ldr r2, [sp, #0x0]
0c008d48: e2822001  add r2, r2, #0x1
0c008d4c: e58d2000  str r2, [sp, #0x0]
0c008d50: e3520003  cmp r2, #0x3
0c008d54: bafffffa  blt 0x0c008d44
0c008d58: e28dd004  add sp, sp, #0x4
0c008d5c: e2800001  add r0, r0, #0x1
0c008d60: e3500020  cmp r0, #0x20
0c008d64: baffffc0  blt 0x0c008c6c
0c008d68: e3a0c000  mov r12, #0x0
0c008d6c: e5940000  ldr r0, [r4, #0x0]
0c008d70: e51fe238  ldr lr, [pc, #-0x238] =0x00600818
0c008d74: e79e0500  ldr r0, [lr, r0, lsl #10]
0c008d78: e3c01e1f  bic r1, r0, #0x1f0
0c008d7c: e3a0ae1f  mov r10, #0x1f0
0c008d80: e3a00000  mov r0, #0x0
0c008d84: e52d0004  str r0, [sp, #-0x4]!
0c008d88: e58d0000  str r0, [sp, #0x0]
0c008d8c: e59d0000  ldr r0, [sp, #0x0]
0c008d90: e2800001  add r0, r0, #0x1
0c008d94: e58d0000  str r0, [sp, #0x0]
0c008d98: e3500003  cmp r0, #0x3
0c008d9c: bafffffa  blt 0x0c008d8c
0c008da0: e5940000  ldr r0, [r4, #0x0]
0c008da4: e78e1500  str r1, [lr, r0, lsl #10]
0c008da8: e3a00000  mov r0, #0x0
0c008dac: e58d0000  str r0, [sp, #0x0]
0c008db0: e59d0000  ldr r0, [sp, #0x0]
0c008db4: e2800001  add r0, r0, #0x1
0c008db8: e58d0000  str r0, [sp, #0x0]
0c008dbc: e3500003  cmp r0, #0x3
0c008dc0: bafffffa  blt 0x0c008db0
0c008dc4: e28dd004  add sp, sp, #0x4
0c008dc8: e3a02000  mov r2, #0x0
0c008dcc: e3a00000  mov r0, #0x0
0c008dd0: e59f3168  ldr r3, [pc, #0x168] =0x0c009e74
0c008dd4: e3a0ae83  mov r10, #0x830
0c008dd8: e28aa606  add r10, r10, #0x600000
0c008ddc: e593e004  ldr lr, [r3, #0x4]
0c008de0: e150000e  cmp r0, lr
0c008de4: ba000019  blt 0x0c008e50
0c008de8: e3a00000  mov r0, #0x0
0c008dec: e28cc001  add r12, r12, #0x1
0c008df0: e2833008  add r3, r3, #0x8
0c008df4: e3c11e1f  bic r1, r1, #0x1f0
0c008df8: e3a0ee1f  mov lr, #0x1f0
0c008dfc: e00ee20c  and lr, lr, r12, lsl #4
0c008e00: e181100e  orr r1, r1, lr
0c008e04: e3a0e000  mov lr, #0x0
0c008e08: e52de004  str lr, [sp, #-0x4]!
0c008e0c: e58de000  str lr, [sp, #0x0]
0c008e10: e59de000  ldr lr, [sp, #0x0]
0c008e14: e28ee001  add lr, lr, #0x1
0c008e18: e58de000  str lr, [sp, #0x0]
0c008e1c: e35e0003  cmp lr, #0x3
0c008e20: bafffffa  blt 0x0c008e10
0c008e24: e594e000  ldr lr, [r4, #0x0]
0c008e28: e51f72f0  ldr r7, [pc, #-0x2f0] =0x00600818
0c008e2c: e787150e  str r1, [r7, lr, lsl #10]
0c008e30: e3a0e000  mov lr, #0x0
0c008e34: e58de000  str lr, [sp, #0x0]
0c008e38: e59de000  ldr lr, [sp, #0x0]
0c008e3c: e28ee001  add lr, lr, #0x1
0c008e40: e58de000  str lr, [sp, #0x0]
0c008e44: e35e0003  cmp lr, #0x3
0c008e48: bafffffa  blt 0x0c008e38
0c008e4c: e28dd004  add sp, sp, #0x4
0c008e50: e3a0e000  mov lr, #0x0
0c008e54: e52de004  str lr, [sp, #-0x4]!
0c008e58: e58de000  str lr, [sp, #0x0]
0c008e5c: e59de000  ldr lr, [sp, #0x0]
0c008e60: e28ee001  add lr, lr, #0x1
0c008e64: e58de000  str lr, [sp, #0x0]
0c008e68: e35e0003  cmp lr, #0x3
0c008e6c: bafffffa  blt 0x0c008e5c
0c008e70: e084e102  add lr, r4, r2, lsl #2
0c008e74: e5be7384  ldr r7, [lr, #0x384]!
0c008e78: e594e000  ldr lr, [r4, #0x0]
0c008e7c: e080e40e  add lr, r0, lr, lsl #8
0c008e80: e78a710e  str r7, [r10, lr, lsl #2]
0c008e84: e3a0e000  mov lr, #0x0
0c008e88: e58de000  str lr, [sp, #0x0]
0c008e8c: e59de000  ldr lr, [sp, #0x0]
0c008e90: e28ee001  add lr, lr, #0x1
0c008e94: e58de000  str lr, [sp, #0x0]
0c008e98: e35e0003  cmp lr, #0x3
0c008e9c: bafffffa  blt 0x0c008e8c
0c008ea0: e28dd004  add sp, sp, #0x4
0c008ea4: e2822001  add r2, r2, #0x1
0c008ea8: e2800001  add r0, r0, #0x1
0c008eac: e3520032  cmp r2, #0x32
0c008eb0: baffffc9  blt 0x0c008ddc
0c008eb4: e3a07a21  mov r7, #0x21000
0c008eb8: e2877606  add r7, r7, #0x600000
0c008ebc: e5940000  ldr r0, [r4, #0x0]
0c008ec0: e350005e  cmp r0, #0x5e
0c008ec4: 0a0000c1  beq 0x0c0091d0
0c008ec8: ca00001d  bgt 0x0c008f44
0c008ecc: e3a07901  mov r7, #0x4000
0c008ed0: e3300001  teq r0, #0x1
0c008ed4: 0a000069  beq 0x0c009080
0c008ed8: e330001e  teq r0, #0x1e
0c008edc: 0a0000a0  beq 0x0c009164
0c008ee0: e330001f  teq r0, #0x1f
0c008ee4: 1a000101  bne 0x0c0092f0
0c008ee8: ea0000a3  b 0x0c00917c
0c008eec: 7663566f  .asciz "vcVocGetFld( p->nVOF_STATE[p->nStates / 2], VOF_STATE, DURATION0 ) == 0"
0c008f34: 00600824  .word 0x00600824
0c008f38: 00600828  .word 0x00600828
0c008f3c: 0060082c  .word 0x0060082c
0c008f40: 0c009e74  .word 0x0c009e74
0c008f44: e330005f  teq r0, #0x5f
0c008f48: 0a0000a6  beq 0x0c0091e8
0c008f4c: e33000de  teq r0, #0xde
0c008f50: 1a0000e6  bne 0x0c0092f0
0c008f54: e3a00a01  mov r0, #0x1000
0c008f58: e3a01000  mov r1, #0x0
0c008f5c: e52d1004  str r1, [sp, #-0x4]!
0c008f60: e58d1000  str r1, [sp, #0x0]
0c008f64: e59d1000  ldr r1, [sp, #0x0]
0c008f68: e2811001  add r1, r1, #0x1
0c008f6c: e58d1000  str r1, [sp, #0x0]
0c008f70: e3510003  cmp r1, #0x3
0c008f74: bafffffa  blt 0x0c008f64
0c008f78: e5870000  str r0, [r7, #0x0]
0c008f7c: e3a00000  mov r0, #0x0
0c008f80: e58d0000  str r0, [sp, #0x0]
0c008f84: e59d0000  ldr r0, [sp, #0x0]
0c008f88: e2800001  add r0, r0, #0x1
0c008f8c: e58d0000  str r0, [sp, #0x0]
0c008f90: e3500003  cmp r0, #0x3
0c008f94: bafffffa  blt 0x0c008f84
0c008f98: e3a00000  mov r0, #0x0
0c008f9c: e58d0000  str r0, [sp, #0x0]
0c008fa0: e1a01000  mov r1, r0
0c008fa4: e3a01000  mov r1, #0x0
0c008fa8: e58d1000  str r1, [sp, #0x0]
0c008fac: e59d1000  ldr r1, [sp, #0x0]
0c008fb0: e2811001  add r1, r1, #0x1
0c008fb4: e58d1000  str r1, [sp, #0x0]
0c008fb8: e3510003  cmp r1, #0x3
0c008fbc: bafffffa  blt 0x0c008fac
0c008fc0: e3a01862  mov r1, #0x620000
0c008fc4: e5a10004  str r0, [r1, #0x4]!
0c008fc8: e3a01000  mov r1, #0x0
0c008fcc: e58d1000  str r1, [sp, #0x0]
0c008fd0: e59d1000  ldr r1, [sp, #0x0]
0c008fd4: e2811001  add r1, r1, #0x1
0c008fd8: e58d1000  str r1, [sp, #0x0]
0c008fdc: e3510003  cmp r1, #0x3
0c008fe0: bafffffa  blt 0x0c008fd0
0c008fe4: e3800001  orr r0, r0, #0x1
0c008fe8: e3a01000  mov r1, #0x0
0c008fec: e58d1000  str r1, [sp, #0x0]
0c008ff0: e58d1000  str r1, [sp, #0x0]
0c008ff4: e59d1000  ldr r1, [sp, #0x0]
0c008ff8: e2811001  add r1, r1, #0x1
0c008ffc: e58d1000  str r1, [sp, #0x0]
0c009000: e3510003  cmp r1, #0x3
0c009004: bafffffa  blt 0x0c008ff4
0c009008: e3a0198e  mov r1, #0x238000
0c00900c: e2811501  add r1, r1, #0x400000
0c009010: e5a10c00  str r0, [r1, #0xc00]!
0c009014: e3a00000  mov r0, #0x0
0c009018: e58d0000  str r0, [sp, #0x0]
0c00901c: e59d0000  ldr r0, [sp, #0x0]
0c009020: e2800001  add r0, r0, #0x1
0c009024: e58d0000  str r0, [sp, #0x0]
0c009028: e3500003  cmp r0, #0x3
0c00902c: bafffffa  blt 0x0c00901c
0c009030: e3a00001  mov r0, #0x1
0c009034: e3a01000  mov r1, #0x0
0c009038: e58d1000  str r1, [sp, #0x0]
0c00903c: e58d1000  str r1, [sp, #0x0]
0c009040: e59d1000  ldr r1, [sp, #0x0]
0c009044: e2811001  add r1, r1, #0x1
0c009048: e58d1000  str r1, [sp, #0x0]
0c00904c: e3510003  cmp r1, #0x3
0c009050: bafffffa  blt 0x0c009040
0c009054: e3a01a39  mov r1, #0x39000
0c009058: e2811606  add r1, r1, #0x600000
0c00905c: e5a10400  str r0, [r1, #0x400]!
0c009060: e3a00000  mov r0, #0x0
0c009064: e58d0000  str r0, [sp, #0x0]
0c009068: e59d0000  ldr r0, [sp, #0x0]
0c00906c: e2800001  add r0, r0, #0x1
0c009070: e58d0000  str r0, [sp, #0x0]
0c009074: e3500003  cmp r0, #0x3
0c009078: bafffffa  blt 0x0c009068
0c00907c: ea000099  b 0x0c0092e8
0c009080: e594144c  ldr r1, [r4, #0x44c]
0c009084: e59f00d4  ldr r0, [pc, #0xd4] =0x04042300
0c009088: e3310000  teq r1, #0x0
0c00908c: 051f1adc  ldreq r1, [pc, #-0xadc] =0x0403f2fc
0c009090: 0a000099  beq 0x0c0092fc
0c009094: e3a01000  mov r1, #0x0
0c009098: e51f2ae8  ldr r2, [pc, #-0xae8] =0x0403f2fc
0c00909c: e5900004  ldr r0, [r0, #0x4]
0c0090a0: e5b0316c  ldr r3, [r0, #0x16c]!
0c0090a4: e3833301  orr r3, r3, #0x4000000
0c0090a8: e5803000  str r3, [r0, #0x0]
0c0090ac: e5940080  ldr r0, [r4, #0x80]
0c0090b0: e3800806  orr r0, r0, #0x60000
0c0090b4: e5840080  str r0, [r4, #0x80]
0c0090b8: e3a00000  mov r0, #0x0
0c0090bc: e52d0004  str r0, [sp, #-0x4]!
0c0090c0: e58d0000  str r0, [sp, #0x0]
0c0090c4: e59d0000  ldr r0, [sp, #0x0]
0c0090c8: e2800001  add r0, r0, #0x1
0c0090cc: e58d0000  str r0, [sp, #0x0]
0c0090d0: e3500003  cmp r0, #0x3
0c0090d4: bafffffa  blt 0x0c0090c4
0c0090d8: e5940000  ldr r0, [r4, #0x0]
0c0090dc: e5943080  ldr r3, [r4, #0x80]
0c0090e0: e51fc5ac  ldr r12, [pc, #-0x5ac] =0x0060081c
0c0090e4: e78c3500  str r3, [r12, r0, lsl #10]
0c0090e8: e3a00000  mov r0, #0x0
0c0090ec: e58d0000  str r0, [sp, #0x0]
0c0090f0: e59d0000  ldr r0, [sp, #0x0]
0c0090f4: e2800001  add r0, r0, #0x1
0c0090f8: e58d0000  str r0, [sp, #0x0]
0c0090fc: e3500003  cmp r0, #0x3
0c009100: bafffffa  blt 0x0c0090f0
0c009104: e28dd004  add sp, sp, #0x4
0c009108: e3c10c02  bic r0, r1, #0x200
0c00910c: e3803b01  orr r3, r0, #0x400
0c009110: e3a00c02  mov r0, #0x200
0c009114: e5941450  ldr r1, [r4, #0x450]
0c009118: e0000481  and r0, r0, r1, lsl #9
0c00911c: e1830000  orr r0, r3, r0
0c009120: e3c01a03  bic r1, r0, #0x3000
0c009124: e3a03a03  mov r3, #0x3000
0c009128: e5940454  ldr r0, [r4, #0x454]
0c00912c: e0030600  and r0, r3, r0, lsl #12
0c009130: e1810000  orr r0, r1, r0
0c009134: e3c01901  bic r1, r0, #0x4000
0c009138: e5940458  ldr r0, [r4, #0x458]
0c00913c: e0073700  and r3, r7, r0, lsl #14
0c009140: e1811003  orr r1, r1, r3
0c009144: e1a05000  mov r5, r0
0c009148: e5940000  ldr r0, [r4, #0x0]
0c00914c: e0820100  add r0, r2, r0, lsl #2
0c009150: e2800a03  add r0, r0, #0x3000
0c009154: e5900004  ldr r0, [r0, #0x4]
0c009158: e5a01088  str r1, [r0, #0x88]!
0c00915c: ea000070  b 0x0c009324
0c009160: 04042300  .word 0x04042300
0c009164: e3a0001f  mov r0, #0x1f
0c009168: e5840000  str r0, [r4, #0x0]
0c00916c: e1a00004  mov r0, r4
0c009170: ebfffd48  bl 0x0c008698 <DoDGRqstLoadFormat>
0c009174: e3a0001e  mov r0, #0x1e
0c009178: e5840000  str r0, [r4, #0x0]
0c00917c: e51f0bcc  ldr r0, [pc, #-0xbcc] =0x0403f2fc
0c009180: e5941000  ldr r1, [r4, #0x0]
0c009184: e0801101  add r1, r0, r1, lsl #2
0c009188: e2811a03  add r1, r1, #0x3000
0c00918c: e5b12004  ldr r2, [r1, #0x4]!
0c009190: e5b21088  ldr r1, [r2, #0x88]!
0c009194: e5b230e4  ldr r3, [r2, #0xe4]!
0c009198: e3833301  orr r3, r3, #0x4000000
0c00919c: e2011c02  and r1, r1, #0x200
0c0091a0: e5823000  str r3, [r2, #0x0]
0c0091a4: e3812b0d  orr r2, r1, #0x3400
0c0091a8: e5941458  ldr r1, [r4, #0x458]
0c0091ac: e0073701  and r3, r7, r1, lsl #14
0c0091b0: e1822003  orr r2, r2, r3
0c0091b4: e1a05001  mov r5, r1
0c0091b8: e5941000  ldr r1, [r4, #0x0]
0c0091bc: e0800101  add r0, r0, r1, lsl #2
0c0091c0: e2800a03  add r0, r0, #0x3000
0c0091c4: e5900004  ldr r0, [r0, #0x4]
0c0091c8: e5a02088  str r2, [r0, #0x88]!
0c0091cc: ea000054  b 0x0c009324
0c0091d0: e3a0005f  mov r0, #0x5f
0c0091d4: e5840000  str r0, [r4, #0x0]
0c0091d8: e1a00004  mov r0, r4
0c0091dc: ebfffd2d  bl 0x0c008698 <DoDGRqstLoadFormat>
0c0091e0: e3a0005e  mov r0, #0x5e
0c0091e4: e5840000  str r0, [r4, #0x0]
0c0091e8: e3a00000  mov r0, #0x0
0c0091ec: e51f3c3c  ldr r3, [pc, #-0xc3c] =0x0403f2fc
0c0091f0: e5941000  ldr r1, [r4, #0x0]
0c0091f4: e0831101  add r1, r3, r1, lsl #2
0c0091f8: e2811a03  add r1, r1, #0x3000
0c0091fc: e5911004  ldr r1, [r1, #0x4]
0c009200: e5b1216c  ldr r2, [r1, #0x16c]!
0c009204: e3c22301  bic r2, r2, #0x4000000
0c009208: e5812000  str r2, [r1, #0x0]
0c00920c: e3a01000  mov r1, #0x0
0c009210: e5942000  ldr r2, [r4, #0x0]
0c009214: e0832102  add r2, r3, r2, lsl #2
0c009218: e2822a03  add r2, r2, #0x3000
0c00921c: e5922004  ldr r2, [r2, #0x4]
0c009220: e5a21088  str r1, [r2, #0x88]!
0c009224: e3a01b02  mov r1, #0x800
0c009228: e3a02000  mov r2, #0x0
0c00922c: e52d2004  str r2, [sp, #-0x4]!
0c009230: e58d2000  str r2, [sp, #0x0]
0c009234: e59d2000  ldr r2, [sp, #0x0]
0c009238: e2822001  add r2, r2, #0x1
0c00923c: e58d2000  str r2, [sp, #0x0]
0c009240: e3520003  cmp r2, #0x3
0c009244: bafffffa  blt 0x0c009234
0c009248: e5871000  str r1, [r7, #0x0]
0c00924c: e3a01000  mov r1, #0x0
0c009250: e58d1000  str r1, [sp, #0x0]
0c009254: e59d1000  ldr r1, [sp, #0x0]
0c009258: e2811001  add r1, r1, #0x1
0c00925c: e58d1000  str r1, [sp, #0x0]
0c009260: e3510003  cmp r1, #0x3
0c009264: bafffffa  blt 0x0c009254
0c009268: e28dd004  add sp, sp, #0x4
0c00926c: e5941064  ldr r1, [r4, #0x64]
0c009270: e3310001  teq r1, #0x1
0c009274: 0a000004  beq 0x0c00928c
0c009278: e3310002  teq r1, #0x2
0c00927c: 1a000005  bne 0x0c009298
0c009280: e3c0001b  bic r0, r0, #0x1b
0c009284: e380000c  orr r0, r0, #0xc
0c009288: ea000003  b 0x0c00929c
0c00928c: e3c0001f  bic r0, r0, #0x1f
0c009290: e3800020  orr r0, r0, #0x20
0c009294: ea000001  b 0x0c0092a0
0c009298: e380001f  orr r0, r0, #0x1f
0c00929c: e3c00020  bic r0, r0, #0x20
0c0092a0: e3a01000  mov r1, #0x0
0c0092a4: e52d1004  str r1, [sp, #-0x4]!
0c0092a8: e58d1000  str r1, [sp, #0x0]
0c0092ac: e59d1000  ldr r1, [sp, #0x0]
0c0092b0: e2811001  add r1, r1, #0x1
0c0092b4: e58d1000  str r1, [sp, #0x0]
0c0092b8: e3510003  cmp r1, #0x3
0c0092bc: bafffffa  blt 0x0c0092ac
0c0092c0: e3a01986  mov r1, #0x218000
0c0092c4: e2811501  add r1, r1, #0x400000
0c0092c8: e5a10c00  str r0, [r1, #0xc00]!
0c0092cc: e3a00000  mov r0, #0x0
0c0092d0: e58d0000  str r0, [sp, #0x0]
0c0092d4: e59d0000  ldr r0, [sp, #0x0]
0c0092d8: e2800001  add r0, r0, #0x1
0c0092dc: e58d0000  str r0, [sp, #0x0]
0c0092e0: e3500003  cmp r0, #0x3
0c0092e4: bafffffa  blt 0x0c0092d4
0c0092e8: e28dd004  add sp, sp, #0x4
0c0092ec: ea00000c  b 0x0c009324
0c0092f0: e51f1d40  ldr r1, [pc, #-0xd40] =0x0403f2fc
0c0092f4: e0810100  add r0, r1, r0, lsl #2
0c0092f8: e2800a03  add r0, r0, #0x3000
0c0092fc: e5900004  ldr r0, [r0, #0x4]
0c009300: e5b0216c  ldr r2, [r0, #0x16c]!
0c009304: e3c22301  bic r2, r2, #0x4000000
0c009308: e5802000  str r2, [r0, #0x0]
0c00930c: e3a00000  mov r0, #0x0
0c009310: e5942000  ldr r2, [r4, #0x0]
0c009314: e0811102  add r1, r1, r2, lsl #2
0c009318: e2811a03  add r1, r1, #0x3000
0c00931c: e5911004  ldr r1, [r1, #0x4]
0c009320: e5a10088  str r0, [r1, #0x88]!
0c009324: e5941000  ldr r1, [r4, #0x0]
0c009328: e59f03d8  ldr r0, [pc, #0x3d8] =0x00600a28
0c00932c: e7901501  ldr r1, [r0, r1, lsl #10]
0c009330: e3c12a01  bic r2, r1, #0x1000
0c009334: e3a01a01  mov r1, #0x1000
0c009338: e0011605  and r1, r1, r5, lsl #12
0c00933c: e1821001  orr r1, r2, r1
0c009340: e3c11a02  bic r1, r1, #0x2000
0c009344: e3350000  teq r5, #0x0
0c009348: 13a06000  movne r6, #0x0
0c00934c: e3a02a02  mov r2, #0x2000
0c009350: e0022686  and r2, r2, r6, lsl #13
0c009354: e1811002  orr r1, r1, r2
0c009358: e3a02000  mov r2, #0x0
0c00935c: e52d2004  str r2, [sp, #-0x4]!
0c009360: e58d2000  str r2, [sp, #0x0]
0c009364: e59d2000  ldr r2, [sp, #0x0]
0c009368: e2822001  add r2, r2, #0x1
0c00936c: e58d2000  str r2, [sp, #0x0]
0c009370: e3520003  cmp r2, #0x3
0c009374: bafffffa  blt 0x0c009364
0c009378: e5942000  ldr r2, [r4, #0x0]
0c00937c: e7801502  str r1, [r0, r2, lsl #10]
0c009380: e3a00000  mov r0, #0x0
0c009384: e58d0000  str r0, [sp, #0x0]
0c009388: e59d0000  ldr r0, [sp, #0x0]
0c00938c: e2800001  add r0, r0, #0x1
0c009390: e58d0000  str r0, [sp, #0x0]
0c009394: e3500003  cmp r0, #0x3
0c009398: bafffffa  blt 0x0c009388
0c00939c: e28dd004  add sp, sp, #0x4
0c0093a0: e3a00000  mov r0, #0x0
0c0093a4: e5941074  ldr r1, [r4, #0x74]
0c0093a8: e20130ff  and r3, r1, #0xff
0c0093ac: e3a01cff  mov r1, #0xff00
0c0093b0: e5942078  ldr r2, [r4, #0x78]
0c0093b4: e0011402  and r1, r1, r2, lsl #8
0c0093b8: e1831001  orr r1, r3, r1
0c0093bc: e3c11801  bic r1, r1, #0x10000
0c0093c0: e51f6e10  ldr r6, [pc, #-0xe10] =0x0403f2fc
0c0093c4: e5942000  ldr r2, [r4, #0x0]
0c0093c8: e0862102  add r2, r6, r2, lsl #2
0c0093cc: e2822a03  add r2, r2, #0x3000
0c0093d0: e5922004  ldr r2, [r2, #0x4]
0c0093d4: e592216c  ldr r2, [r2, #0x16c]
0c0093d8: e3120301  tst r2, #0x4000000
0c0093dc: 05940070  ldreq r0, [r4, #0x70]
0c0093e0: e3a02801  mov r2, #0x10000
0c0093e4: e0020800  and r0, r2, r0, lsl #16
0c0093e8: e1810000  orr r0, r1, r0
0c0093ec: e3a01000  mov r1, #0x0
0c0093f0: e52d1004  str r1, [sp, #-0x4]!
0c0093f4: e58d1000  str r1, [sp, #0x0]
0c0093f8: e59d1000  ldr r1, [sp, #0x0]
0c0093fc: e2811001  add r1, r1, #0x1
0c009400: e58d1000  str r1, [sp, #0x0]
0c009404: e3510003  cmp r1, #0x3
0c009408: bafffffa  blt 0x0c0093f8
0c00940c: e3a01e85  mov r1, #0x850
0c009410: e2811606  add r1, r1, #0x600000
0c009414: e5942000  ldr r2, [r4, #0x0]
0c009418: e7810502  str r0, [r1, r2, lsl #10]
0c00941c: e3a00000  mov r0, #0x0
0c009420: e58d0000  str r0, [sp, #0x0]
0c009424: e59d0000  ldr r0, [sp, #0x0]
0c009428: e2800001  add r0, r0, #0x1
0c00942c: e58d0000  str r0, [sp, #0x0]
0c009430: e3500003  cmp r0, #0x3
0c009434: bafffffa  blt 0x0c009424
0c009438: e28dd004  add sp, sp, #0x4
0c00943c: e5941064  ldr r1, [r4, #0x64]
0c009440: e3510000  cmp r1, #0x0
0c009444: ba000001  blt 0x0c009450
0c009448: e3510009  cmp r1, #0x9
0c00944c: 9a000005  bls 0x0c009468
0c009450: e5960000  ldr r0, [r6, #0x0]
0c009454: e3100020  tst r0, #0x20
0c009458: 128f0fab  addne r0, pc, #0x2ac
0c00945c: 1b00221f  blne 0x0c011ce0 <fn_0c011ce0>
0c009460: e3a00004  mov r0, #0x4
0c009464: e5840064  str r0, [r4, #0x64]
0c009468: e59f02b8  ldr r0, [pc, #0x2b8] =0x04018ed0
0c00946c: e5941064  ldr r1, [r4, #0x64]
0c009470: e7905101  ldr r5, [r0, r1, lsl #2]
0c009474: e5940000  ldr r0, [r4, #0x0]
0c009478: e0860100  add r0, r6, r0, lsl #2
0c00947c: e2800a03  add r0, r0, #0x3000
0c009480: e5900004  ldr r0, [r0, #0x4]
0c009484: e590016c  ldr r0, [r0, #0x16c]
0c009488: e3100301  tst r0, #0x4000000
0c00948c: 0a000002  beq 0x0c00949c
0c009490: e3350002  teq r5, #0x2
0c009494: 03a05001  moveq r5, #0x1
0c009498: 0a000005  beq 0x0c0094b4
0c00949c: e3550000  cmp r5, #0x0
0c0094a0: aa000003  bge 0x0c0094b4
0c0094a4: e5960000  ldr r0, [r6, #0x0]
0c0094a8: e3100020  tst r0, #0x20
0c0094ac: 128f0f96  addne r0, pc, #0x258
0c0094b0: 1b00220a  blne 0x0c011ce0 <fn_0c011ce0>
0c0094b4: e5960000  ldr r0, [r6, #0x0]
0c0094b8: e3100020  tst r0, #0x20
0c0094bc: 15941064  ldrne r1, [r4, #0x64]
0c0094c0: 128f0f99  addne r0, pc, #0x264
0c0094c4: 1b002205  blne 0x0c011ce0 <fn_0c011ce0>
0c0094c8: e5941000  ldr r1, [r4, #0x0]
0c0094cc: e59f0274  ldr r0, [pc, #0x274] =0x00600804
0c0094d0: e7901501  ldr r1, [r0, r1, lsl #10]
0c0094d4: e3c11c0e  bic r1, r1, #0xe00
0c0094d8: e3a02c0e  mov r2, #0xe00
0c0094dc: e0022485  and r2, r2, r5, lsl #9
0c0094e0: e1811002  orr r1, r1, r2
0c0094e4: e3a02000  mov r2, #0x0
0c0094e8: e52d2004  str r2, [sp, #-0x4]!
0c0094ec: e58d2000  str r2, [sp, #0x0]
0c0094f0: e59d2000  ldr r2, [sp, #0x0]
0c0094f4: e2822001  add r2, r2, #0x1
0c0094f8: e58d2000  str r2, [sp, #0x0]
0c0094fc: e3520003  cmp r2, #0x3
0c009500: bafffffa  blt 0x0c0094f0
0c009504: e5942000  ldr r2, [r4, #0x0]
0c009508: e7801502  str r1, [r0, r2, lsl #10]
0c00950c: e3a00000  mov r0, #0x0
0c009510: e58d0000  str r0, [sp, #0x0]
0c009514: e59d0000  ldr r0, [sp, #0x0]
0c009518: e2800001  add r0, r0, #0x1
0c00951c: e58d0000  str r0, [sp, #0x0]
0c009520: e3500003  cmp r0, #0x3
0c009524: bafffffa  blt 0x0c009514
0c009528: e28dd004  add sp, sp, #0x4
0c00952c: e5941064  ldr r1, [r4, #0x64]
0c009530: e3310000  teq r1, #0x0
0c009534: 03a01002  moveq r1, #0x2
0c009538: e5940000  ldr r0, [r4, #0x0]
0c00953c: ebfff060  bl 0x0c0056c4 <dgSetDacPixelMux>
0c009540: e1a00004  mov r0, r4
0c009544: ebfffbbb  bl 0x0c008438 <fn_0c008438>
0c009548: e5940000  ldr r0, [r4, #0x0]
0c00954c: eb00128f  bl 0x0c00df90 <fn_0c00df90>
0c009550: e5941000  ldr r1, [r4, #0x0]
0c009554: e59f01f0  ldr r0, [pc, #0x1f0] =0x00600a08
0c009558: e7901501  ldr r1, [r0, r1, lsl #10]
0c00955c: e3c129ff  bic r2, r1, #0x3fc000
0c009560: e3a039ff  mov r3, #0x3fc000
0c009564: e59414a0  ldr r1, [r4, #0x4a0]
0c009568: e0031701  and r1, r3, r1, lsl #14
0c00956c: e1821001  orr r1, r2, r1
0c009570: e3a02000  mov r2, #0x0
0c009574: e52d2004  str r2, [sp, #-0x4]!
0c009578: e58d2000  str r2, [sp, #0x0]
0c00957c: e59d2000  ldr r2, [sp, #0x0]
0c009580: e2822001  add r2, r2, #0x1
0c009584: e58d2000  str r2, [sp, #0x0]
0c009588: e3520003  cmp r2, #0x3
0c00958c: bafffffa  blt 0x0c00957c
0c009590: e5942000  ldr r2, [r4, #0x0]
0c009594: e7801502  str r1, [r0, r2, lsl #10]
0c009598: e3a00000  mov r0, #0x0
0c00959c: e58d0000  str r0, [sp, #0x0]
0c0095a0: e59d0000  ldr r0, [sp, #0x0]
0c0095a4: e2800001  add r0, r0, #0x1
0c0095a8: e58d0000  str r0, [sp, #0x0]
0c0095ac: e3500003  cmp r0, #0x3
0c0095b0: bafffffa  blt 0x0c0095a0
0c0095b4: e5941000  ldr r1, [r4, #0x0]
0c0095b8: e59f0190  ldr r0, [pc, #0x190] =0x00600a04
0c0095bc: e7901501  ldr r1, [r0, r1, lsl #10]
0c0095c0: e3c13b03  bic r3, r1, #0xc00
0c0095c4: e3c33fff  bic r3, r3, #0x3fc
0c0095c8: e3a01a01  mov r1, #0x1000
0c0095cc: e2411004  sub r1, r1, #0x4
0c0095d0: e594249c  ldr r2, [r4, #0x49c]
0c0095d4: e0011102  and r1, r1, r2, lsl #2
0c0095d8: e1831001  orr r1, r3, r1
0c0095dc: e3a02000  mov r2, #0x0
0c0095e0: e58d2000  str r2, [sp, #0x0]
0c0095e4: e58d2000  str r2, [sp, #0x0]
0c0095e8: e59d2000  ldr r2, [sp, #0x0]
0c0095ec: e2822001  add r2, r2, #0x1
0c0095f0: e58d2000  str r2, [sp, #0x0]
0c0095f4: e3520003  cmp r2, #0x3
0c0095f8: bafffffa  blt 0x0c0095e8
0c0095fc: e5942000  ldr r2, [r4, #0x0]
0c009600: e7801502  str r1, [r0, r2, lsl #10]
0c009604: e3a00000  mov r0, #0x0
0c009608: e58d0000  str r0, [sp, #0x0]
0c00960c: e59d0000  ldr r0, [sp, #0x0]
0c009610: e2800001  add r0, r0, #0x1
0c009614: e58d0000  str r0, [sp, #0x0]
0c009618: e3500003  cmp r0, #0x3
0c00961c: bafffffa  blt 0x0c00960c
0c009620: e28dd004  add sp, sp, #0x4
0c009624: e59404a4  ldr r0, [r4, #0x4a4]
0c009628: e1a01980  mov r1, r0, lsl #19
0c00962c: e1a019a1  mov r1, r1, lsr #19
0c009630: e3a00301  mov r0, #0x4000000
0c009634: e2400a02  sub r0, r0, #0x2000
0c009638: e59424a8  ldr r2, [r4, #0x4a8]
0c00963c: e0000682  and r0, r0, r2, lsl #13
0c009640: e1810000  orr r0, r1, r0
0c009644: e1a02006  mov r2, r6
0c009648: e5943000  ldr r3, [r4, #0x0]
0c00964c: e0863103  add r3, r6, r3, lsl #2
0c009650: e2833a03  add r3, r3, #0x3000
0c009654: e5941054  ldr r1, [r4, #0x54]
0c009658: e5933004  ldr r3, [r3, #0x4]
0c00965c: e5a3108c  str r1, [r3, #0x8c]!
0c009660: e5943000  ldr r3, [r4, #0x0]
0c009664: e0863103  add r3, r6, r3, lsl #2
0c009668: e2833a03  add r3, r3, #0x3000
0c00966c: e59414a8  ldr r1, [r4, #0x4a8]
0c009670: e5933004  ldr r3, [r3, #0x4]
0c009674: e5a31154  str r1, [r3, #0x154]!
0c009678: e3c01307  bic r1, r0, #0x1c000000
0c00967c: e3a03307  mov r3, #0x1c000000
0c009680: e59404ac  ldr r0, [r4, #0x4ac]
0c009684: e0030d00  and r0, r3, r0, lsl #26
0c009688: e1810000  orr r0, r1, r0
0c00968c: e3c01202  bic r1, r0, #0x20000000
0c009690: e3a00202  mov r0, #0x20000000
0c009694: e59434b0  ldr r3, [r4, #0x4b0]
0c009698: e0000e83  and r0, r0, r3, lsl #29
0c00969c: e1810000  orr r0, r1, r0
0c0096a0: e3a01000  mov r1, #0x0
0c0096a4: e52d1004  str r1, [sp, #-0x4]!
0c0096a8: e58d1000  str r1, [sp, #0x0]
0c0096ac: e59d1000  ldr r1, [sp, #0x0]
0c0096b0: e2811001  add r1, r1, #0x1
0c0096b4: e58d1000  str r1, [sp, #0x0]
0c0096b8: e3510003  cmp r1, #0x3
0c0096bc: bafffffa  blt 0x0c0096ac
0c0096c0: e3a01e82  mov r1, #0x820
0c0096c4: e2811606  add r1, r1, #0x600000
0c0096c8: e5943000  ldr r3, [r4, #0x0]
0c0096cc: e7810503  str r0, [r1, r3, lsl #10]
0c0096d0: e3a00000  mov r0, #0x0
0c0096d4: e58d0000  str r0, [sp, #0x0]
0c0096d8: e59d0000  ldr r0, [sp, #0x0]
0c0096dc: e2800001  add r0, r0, #0x1
0c0096e0: e58d0000  str r0, [sp, #0x0]
0c0096e4: e3500003  cmp r0, #0x3
0c0096e8: bafffffa  blt 0x0c0096d8
0c0096ec: e28dd004  add sp, sp, #0x4
0c0096f0: e5920000  ldr r0, [r2, #0x0]
0c0096f4: e3100020  tst r0, #0x20
0c0096f8: 15941000  ldrne r1, [r4, #0x0]
0c0096fc: 128f0f14  addne r0, pc, #0x50
0c009700: 1b002176  blne 0x0c011ce0 <fn_0c011ce0>
0c009704: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c009708: 00600a28  .word 0x00600a28
0c00970c: 696c6c65  .asciz "illegal nPixelsPerClock %d\n"
0c009728: 04018ed0  .word 0x04018ed0
0c00972c: 53657474  .asciz "Setting output mux to 4:%d\n"
0c009748: 00600804  .word 0x00600804
0c00974c: 00600a08  .word 0x00600a08
0c009750: 00600a04  .word 0x00600a04
0c009754: 446f6e65  .asciz "Done loading format %d\n"
dgSyncWithMasterVoc:
0c00976c: e5190150  ldr r0, [r9, #-0x150]
0c009770: e5191150  ldr r1, [r9, #-0x150]
0c009774: e0413000  sub r3, r1, r0
0c009778: e3a02d09  mov r2, #0x240
0c00977c: e282293d  add r2, r2, #0xf4000
0c009780: e3a01606  mov r1, #0x600000
0c009784: e1530002  cmp r3, r2
0c009788: 2a000006  bcs 0x0c0097a8
0c00978c: e5913c00  ldr r3, [r1, #0xc00]
0c009790: e3130080  tst r3, #0x80
0c009794: 0a000003  beq 0x0c0097a8
0c009798: e5193150  ldr r3, [r9, #-0x150]
0c00979c: e0433000  sub r3, r3, r0
0c0097a0: e1530002  cmp r3, r2
0c0097a4: 3afffff8  bcc 0x0c00978c
0c0097a8: e5190150  ldr r0, [r9, #-0x150]
0c0097ac: e5192150  ldr r2, [r9, #-0x150]
0c0097b0: e0423000  sub r3, r2, r0
0c0097b4: e3a02d09  mov r2, #0x240
0c0097b8: e282293d  add r2, r2, #0xf4000
0c0097bc: e1530002  cmp r3, r2
0c0097c0: 2a000006  bcs 0x0c0097e0
0c0097c4: e5913c00  ldr r3, [r1, #0xc00]
0c0097c8: e3130080  tst r3, #0x80
0c0097cc: 1a000003  bne 0x0c0097e0
0c0097d0: e5193150  ldr r3, [r9, #-0x150]
0c0097d4: e0433000  sub r3, r3, r0
0c0097d8: e1530002  cmp r3, r2
0c0097dc: 3afffff8  bcc 0x0c0097c4
0c0097e0: e5191150  ldr r1, [r9, #-0x150]
0c0097e4: e0410000  sub r0, r1, r0
0c0097e8: e1a0f00e  mov pc, lr
DoDGRqstEnableChannel:
0c0097ec: e1a0c00d  mov r12, sp
0c0097f0: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c0097f4: e24cb004  sub r11, r12, #0x4
0c0097f8: e1a04000  mov r4, r0
0c0097fc: e5900000  ldr r0, [r0, #0x0]
0c009800: e3500000  cmp r0, #0x0
0c009804: ba000001  blt 0x0c009810
0c009808: e3500007  cmp r0, #0x7
0c00980c: da000007  ble 0x0c009830
0c009810: e350001e  cmp r0, #0x1e
0c009814: ba000001  blt 0x0c009820
0c009818: e35000fd  cmp r0, #0xfd
0c00981c: da000003  ble 0x0c009830
0c009820: e59f136c  ldr r1, [pc, #0x36c] =0x0c008a90
0c009824: e59f036c  ldr r0, [pc, #0x36c] =0x0c008aa0
0c009828: e3a02f8e  mov r2, #0x238
0c00982c: eb002531  bl 0x0c012cf8 <fn_0c012cf8>
0c009830: e5940008  ldr r0, [r4, #0x8]
0c009834: e51f50f4  ldr r5, [pc, #-0xf4] =0x00600804
0c009838: e3300000  teq r0, #0x0
0c00983c: 0a00008a  beq 0x0c009a6c
0c009840: e5940000  ldr r0, [r4, #0x0]
0c009844: e51f1d0c  ldr r1, [pc, #-0xd0c] =0x00600818
0c009848: e7910500  ldr r0, [r1, r0, lsl #10]
0c00984c: e210a001  ands r10, r0, #0x1
0c009850: e3a00000  mov r0, #0x0
0c009854: 0a000027  beq 0x0c0098f8
0c009858: e3a01000  mov r1, #0x0
0c00985c: e52d1004  str r1, [sp, #-0x4]!
0c009860: e58d1000  str r1, [sp, #0x0]
0c009864: e59d1000  ldr r1, [sp, #0x0]
0c009868: e2811001  add r1, r1, #0x1
0c00986c: e58d1000  str r1, [sp, #0x0]
0c009870: e3510003  cmp r1, #0x3
0c009874: bafffffa  blt 0x0c009864
0c009878: e5941000  ldr r1, [r4, #0x0]
0c00987c: e59f2318  ldr r2, [pc, #0x318] =0x00600808
0c009880: e7820501  str r0, [r2, r1, lsl #10]
0c009884: e3a00000  mov r0, #0x0
0c009888: e58d0000  str r0, [sp, #0x0]
0c00988c: e59d0000  ldr r0, [sp, #0x0]
0c009890: e2800001  add r0, r0, #0x1
0c009894: e58d0000  str r0, [sp, #0x0]
0c009898: e3500003  cmp r0, #0x3
0c00989c: bafffffa  blt 0x0c00988c
0c0098a0: e5940000  ldr r0, [r4, #0x0]
0c0098a4: e7950500  ldr r0, [r5, r0, lsl #10]
0c0098a8: e3c00003  bic r0, r0, #0x3
0c0098ac: e3800001  orr r0, r0, #0x1
0c0098b0: e3a01000  mov r1, #0x0
0c0098b4: e58d1000  str r1, [sp, #0x0]
0c0098b8: e58d1000  str r1, [sp, #0x0]
0c0098bc: e59d1000  ldr r1, [sp, #0x0]
0c0098c0: e2811001  add r1, r1, #0x1
0c0098c4: e58d1000  str r1, [sp, #0x0]
0c0098c8: e3510003  cmp r1, #0x3
0c0098cc: bafffffa  blt 0x0c0098bc
0c0098d0: e5941000  ldr r1, [r4, #0x0]
0c0098d4: e7850501  str r0, [r5, r1, lsl #10]
0c0098d8: e3a00000  mov r0, #0x0
0c0098dc: e58d0000  str r0, [sp, #0x0]
0c0098e0: e59d0000  ldr r0, [sp, #0x0]
0c0098e4: e2800001  add r0, r0, #0x1
0c0098e8: e58d0000  str r0, [sp, #0x0]
0c0098ec: e3500003  cmp r0, #0x3
0c0098f0: bafffffa  blt 0x0c0098e0
0c0098f4: e28dd004  add sp, sp, #0x4
0c0098f8: e5940000  ldr r0, [r4, #0x0]
0c0098fc: e1a07000  mov r7, r0
0c009900: e7951500  ldr r1, [r5, r0, lsl #10]
0c009904: e59f1294  ldr r1, [pc, #0x294] =0x0403f2fc
0c009908: e0810100  add r0, r1, r0, lsl #2
0c00990c: e2800a03  add r0, r0, #0x3000
0c009910: e5900004  ldr r0, [r0, #0x4]
0c009914: e5900058  ldr r0, [r0, #0x58]
0c009918: e2900003  adds r0, r0, #0x3
0c00991c: 42800003  addmi r0, r0, #0x3
0c009920: e1a00140  mov r0, r0, asr #2
0c009924: e3a01c02  mov r1, #0x200
0c009928: eb0037b6  bl 0x0c017808 <__rt_sdiv>
0c00992c: e2610b01  rsb r0, r1, #0x400
0c009930: e2406001  sub r6, r0, #0x1
0c009934: e59f0264  ldr r0, [pc, #0x264] =0x0403f2fc
0c009938: e5900000  ldr r0, [r0, #0x0]
0c00993c: e3100b01  tst r0, #0x400
0c009940: 0a000003  beq 0x0c009954
0c009944: e1a02006  mov r2, r6
0c009948: e1a01007  mov r1, r7
0c00994c: e28f0f94  add r0, pc, #0x250
0c009950: eb0020e2  bl 0x0c011ce0 <fn_0c011ce0>
0c009954: e1a00a06  mov r0, r6, lsl #20
0c009958: e1a00a20  mov r0, r0, lsr #20
0c00995c: e3800a02  orr r0, r0, #0x2000
0c009960: e3a01000  mov r1, #0x0
0c009964: e52d1004  str r1, [sp, #-0x4]!
0c009968: e58d1000  str r1, [sp, #0x0]
0c00996c: e59d1000  ldr r1, [sp, #0x0]
0c009970: e2811001  add r1, r1, #0x1
0c009974: e58d1000  str r1, [sp, #0x0]
0c009978: e3510003  cmp r1, #0x3
0c00997c: bafffffa  blt 0x0c00996c
0c009980: e5942000  ldr r2, [r4, #0x0]
0c009984: e51f1284  ldr r1, [pc, #-0x284] =0x00600a28
0c009988: e7810502  str r0, [r1, r2, lsl #10]
0c00998c: e3a01000  mov r1, #0x0
0c009990: e58d1000  str r1, [sp, #0x0]
0c009994: e59d1000  ldr r1, [sp, #0x0]
0c009998: e2811001  add r1, r1, #0x1
0c00999c: e58d1000  str r1, [sp, #0x0]
0c0099a0: e3510003  cmp r1, #0x3
0c0099a4: bafffffa  blt 0x0c009994
0c0099a8: e28dd004  add sp, sp, #0x4
0c0099ac: e5941000  ldr r1, [r4, #0x0]
0c0099b0: e331001e  teq r1, #0x1e
0c0099b4: 1a000013  bne 0x0c009a08
0c0099b8: e3800901  orr r0, r0, #0x4000
0c0099bc: e3a01000  mov r1, #0x0
0c0099c0: e52d1004  str r1, [sp, #-0x4]!
0c0099c4: e58d1000  str r1, [sp, #0x0]
0c0099c8: e59d1000  ldr r1, [sp, #0x0]
0c0099cc: e2811001  add r1, r1, #0x1
0c0099d0: e58d1000  str r1, [sp, #0x0]
0c0099d4: e3510003  cmp r1, #0x3
0c0099d8: bafffffa  blt 0x0c0099c8
0c0099dc: e3a01982  mov r1, #0x208000
0c0099e0: e2811501  add r1, r1, #0x400000
0c0099e4: e5a10628  str r0, [r1, #0x628]!
0c0099e8: e3a00000  mov r0, #0x0
0c0099ec: e58d0000  str r0, [sp, #0x0]
0c0099f0: e59d0000  ldr r0, [sp, #0x0]
0c0099f4: e2800001  add r0, r0, #0x1
0c0099f8: e58d0000  str r0, [sp, #0x0]
0c0099fc: e3500003  cmp r0, #0x3
0c009a00: bafffffa  blt 0x0c0099f0
0c009a04: e28dd004  add sp, sp, #0x4
0c009a08: e3a01001  mov r1, #0x1
0c009a0c: e5940000  ldr r0, [r4, #0x0]
0c009a10: ebfffae9  bl 0x0c0085bc <fn_0c0085bc>
0c009a14: e33a0000  teq r10, #0x0
0c009a18: 0a000013  beq 0x0c009a6c
0c009a1c: e3a00000  mov r0, #0x0
0c009a20: e52d0004  str r0, [sp, #-0x4]!
0c009a24: e58d0000  str r0, [sp, #0x0]
0c009a28: e59d0000  ldr r0, [sp, #0x0]
0c009a2c: e2800001  add r0, r0, #0x1
0c009a30: e58d0000  str r0, [sp, #0x0]
0c009a34: e3500003  cmp r0, #0x3
0c009a38: bafffffa  blt 0x0c009a28
0c009a3c: e3a01001  mov r1, #0x1
0c009a40: e5940000  ldr r0, [r4, #0x0]
0c009a44: e59f2150  ldr r2, [pc, #0x150] =0x00600808
0c009a48: e7821500  str r1, [r2, r0, lsl #10]
0c009a4c: e3a00000  mov r0, #0x0
0c009a50: e58d0000  str r0, [sp, #0x0]
0c009a54: e59d0000  ldr r0, [sp, #0x0]
0c009a58: e2800001  add r0, r0, #0x1
0c009a5c: e58d0000  str r0, [sp, #0x0]
0c009a60: e3500003  cmp r0, #0x3
0c009a64: bafffffa  blt 0x0c009a54
0c009a68: e28dd004  add sp, sp, #0x4
0c009a6c: e5940004  ldr r0, [r4, #0x4]
0c009a70: e3300000  teq r0, #0x0
0c009a74: 091bacf0  ldmeqdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c009a78: e5940000  ldr r0, [r4, #0x0]
0c009a7c: e330001e  teq r0, #0x1e
0c009a80: 11a06000  movne r6, r0
0c009a84: 03a06020  moveq r6, #0x20
0c009a88: e7950500  ldr r0, [r5, r0, lsl #10]
0c009a8c: e3c00003  bic r0, r0, #0x3
0c009a90: e3a01000  mov r1, #0x0
0c009a94: e52d1004  str r1, [sp, #-0x4]!
0c009a98: e58d1000  str r1, [sp, #0x0]
0c009a9c: e59d1000  ldr r1, [sp, #0x0]
0c009aa0: e2811001  add r1, r1, #0x1
0c009aa4: e58d1000  str r1, [sp, #0x0]
0c009aa8: e3510003  cmp r1, #0x3
0c009aac: bafffffa  blt 0x0c009a9c
0c009ab0: e7850506  str r0, [r5, r6, lsl #10]
0c009ab4: e3a00000  mov r0, #0x0
0c009ab8: e58d0000  str r0, [sp, #0x0]
0c009abc: e59d0000  ldr r0, [sp, #0x0]
0c009ac0: e2800001  add r0, r0, #0x1
0c009ac4: e58d0000  str r0, [sp, #0x0]
0c009ac8: e3500003  cmp r0, #0x3
0c009acc: bafffffa  blt 0x0c009abc
0c009ad0: e28dd004  add sp, sp, #0x4
0c009ad4: e5940000  ldr r0, [r4, #0x0]
0c009ad8: e3300001  teq r0, #0x1
0c009adc: 1bffff22  blne 0x0c00976c <dgSyncWithMasterVoc>
0c009ae0: e5940000  ldr r0, [r4, #0x0]
0c009ae4: e51f1fac  ldr r1, [pc, #-0xfac] =0x00600818
0c009ae8: e7910500  ldr r0, [r1, r0, lsl #10]
0c009aec: e3800001  orr r0, r0, #0x1
0c009af0: e3a02000  mov r2, #0x0
0c009af4: e52d2004  str r2, [sp, #-0x4]!
0c009af8: e58d2000  str r2, [sp, #0x0]
0c009afc: e59d2000  ldr r2, [sp, #0x0]
0c009b00: e2822001  add r2, r2, #0x1
0c009b04: e58d2000  str r2, [sp, #0x0]
0c009b08: e3520003  cmp r2, #0x3
0c009b0c: bafffffa  blt 0x0c009afc
0c009b10: e7810506  str r0, [r1, r6, lsl #10]
0c009b14: e3a01000  mov r1, #0x0
0c009b18: e58d1000  str r1, [sp, #0x0]
0c009b1c: e59d1000  ldr r1, [sp, #0x0]
0c009b20: e2811001  add r1, r1, #0x1
0c009b24: e58d1000  str r1, [sp, #0x0]
0c009b28: e3510003  cmp r1, #0x3
0c009b2c: bafffffa  blt 0x0c009b1c
0c009b30: e28dd004  add sp, sp, #0x4
0c009b34: e59f1064  ldr r1, [pc, #0x64] =0x0403f2fc
0c009b38: e5942000  ldr r2, [r4, #0x0]
0c009b3c: e0812102  add r2, r1, r2, lsl #2
0c009b40: e2822a03  add r2, r2, #0x3000
0c009b44: e5922004  ldr r2, [r2, #0x4]
0c009b48: e5b2316c  ldr r3, [r2, #0x16c]!
0c009b4c: e3833201  orr r3, r3, #0x10000000
0c009b50: e5823000  str r3, [r2, #0x0]
0c009b54: e5942000  ldr r2, [r4, #0x0]
0c009b58: e332001e  teq r2, #0x1e
0c009b5c: 1a000004  bne 0x0c009b74
0c009b60: e2812a03  add r2, r1, #0x3000
0c009b64: e5922080  ldr r2, [r2, #0x80]
0c009b68: e5b2316c  ldr r3, [r2, #0x16c]!
0c009b6c: e3833201  orr r3, r3, #0x10000000
0c009b70: e5823000  str r3, [r2, #0x0]
0c009b74: e5911000  ldr r1, [r1, #0x0]
0c009b78: e3110b01  tst r1, #0x400
0c009b7c: 091bacf0  ldmeqdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c009b80: e1a02000  mov r2, r0
0c009b84: e1a01006  mov r1, r6
0c009b88: e28f0f0c  add r0, pc, #0x30
0c009b8c: e91b6cf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,lr}
0c009b90: ea002052  b 0x0c011ce0 <fn_0c011ce0>
0c009b94: 0c008a90  .word 0x0c008a90
0c009b98: 0c008aa0  .word 0x0c008aa0
0c009b9c: 00600808  .word 0x00600808
0c009ba0: 0403f2fc  .word 0x0403f2fc
0c009ba4: 6368616e  .asciz "channel %d HIGH_WATER = %d\n"
0c009bc0: 656e6162  .asciz "enabled channel %d VOF (reg=0x%08x)\n"
DoDGRqstGetChannelEnables:
0c009be8: e1a0c00d  mov r12, sp
0c009bec: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c009bf0: e24cb004  sub r11, r12, #0x4
0c009bf4: e24dd008  sub sp, sp, #0x8
0c009bf8: e51f2060  ldr r2, [pc, #-0x60] =0x0403f2fc
0c009bfc: e5901000  ldr r1, [r0, #0x0]
0c009c00: e0821101  add r1, r2, r1, lsl #2
0c009c04: e2811a03  add r1, r1, #0x3000
0c009c08: e5911004  ldr r1, [r1, #0x4]
0c009c0c: e5b1316c  ldr r3, [r1, #0x16c]!
0c009c10: e3a01001  mov r1, #0x1
0c009c14: e0013dc3  and r3, r1, r3, asr #27
0c009c18: e58d3004  str r3, [sp, #0x4]
0c009c1c: e5900000  ldr r0, [r0, #0x0]
0c009c20: e0820100  add r0, r2, r0, lsl #2
0c009c24: e2800a03  add r0, r0, #0x3000
0c009c28: e5900004  ldr r0, [r0, #0x4]
0c009c2c: e590016c  ldr r0, [r0, #0x16c]
0c009c30: e0010e40  and r0, r1, r0, asr #28
0c009c34: e58d0000  str r0, [sp, #0x0]
0c009c38: e1a0100d  mov r1, sp
0c009c3c: e3a02008  mov r2, #0x8
0c009c40: e3a00013  mov r0, #0x13
0c009c44: ebffec25  bl 0x0c004ce0 <fn_0c004ce0>
0c009c48: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstDisableChannel:
0c009c4c: e1a0c00d  mov r12, sp
0c009c50: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c009c54: e24cb004  sub r11, r12, #0x4
0c009c58: e1a04000  mov r4, r0
0c009c5c: e5900000  ldr r0, [r0, #0x0]
0c009c60: e3500000  cmp r0, #0x0
0c009c64: ba000001  blt 0x0c009c70
0c009c68: e3500007  cmp r0, #0x7
0c009c6c: da000008  ble 0x0c009c94
0c009c70: e350001e  cmp r0, #0x1e
0c009c74: ba000001  blt 0x0c009c80
0c009c78: e35000fd  cmp r0, #0xfd
0c009c7c: da000004  ble 0x0c009c94
0c009c80: e51f10f4  ldr r1, [pc, #-0xf4] =0x0c008a90
0c009c84: e51f00f4  ldr r0, [pc, #-0xf4] =0x0c008aa0
0c009c88: e3a020ab  mov r2, #0xab
0c009c8c: e2822c02  add r2, r2, #0x200
0c009c90: eb002418  bl 0x0c012cf8 <fn_0c012cf8>
0c009c94: e5942000  ldr r2, [r4, #0x0]
0c009c98: e332001e  teq r2, #0x1e
0c009c9c: 11a00002  movne r0, r2
0c009ca0: 03a00020  moveq r0, #0x20
0c009ca4: e51f1564  ldr r1, [pc, #-0x564] =0x00600804
0c009ca8: e7912502  ldr r2, [r1, r2, lsl #10]
0c009cac: e3c22003  bic r2, r2, #0x3
0c009cb0: e3a03000  mov r3, #0x0
0c009cb4: e52d3004  str r3, [sp, #-0x4]!
0c009cb8: e58d3000  str r3, [sp, #0x0]
0c009cbc: e59d3000  ldr r3, [sp, #0x0]
0c009cc0: e2833001  add r3, r3, #0x1
0c009cc4: e58d3000  str r3, [sp, #0x0]
0c009cc8: e3530003  cmp r3, #0x3
0c009ccc: bafffffa  blt 0x0c009cbc
0c009cd0: e7812500  str r2, [r1, r0, lsl #10]
0c009cd4: e3a01000  mov r1, #0x0
0c009cd8: e58d1000  str r1, [sp, #0x0]
0c009cdc: e59d1000  ldr r1, [sp, #0x0]
0c009ce0: e2811001  add r1, r1, #0x1
0c009ce4: e58d1000  str r1, [sp, #0x0]
0c009ce8: e3510003  cmp r1, #0x3
0c009cec: bafffffa  blt 0x0c009cdc
0c009cf0: e5941000  ldr r1, [r4, #0x0]
0c009cf4: e59f20b4  ldr r2, [pc, #0xb4] =0x00600818
0c009cf8: e7921501  ldr r1, [r2, r1, lsl #10]
0c009cfc: e3c11001  bic r1, r1, #0x1
0c009d00: e3a03000  mov r3, #0x0
0c009d04: e58d3000  str r3, [sp, #0x0]
0c009d08: e58d3000  str r3, [sp, #0x0]
0c009d0c: e59d3000  ldr r3, [sp, #0x0]
0c009d10: e2833001  add r3, r3, #0x1
0c009d14: e58d3000  str r3, [sp, #0x0]
0c009d18: e3530003  cmp r3, #0x3
0c009d1c: bafffffa  blt 0x0c009d0c
0c009d20: e7821500  str r1, [r2, r0, lsl #10]
0c009d24: e3a02000  mov r2, #0x0
0c009d28: e58d2000  str r2, [sp, #0x0]
0c009d2c: e59d2000  ldr r2, [sp, #0x0]
0c009d30: e2822001  add r2, r2, #0x1
0c009d34: e58d2000  str r2, [sp, #0x0]
0c009d38: e3520003  cmp r2, #0x3
0c009d3c: bafffffa  blt 0x0c009d2c
0c009d40: e28dd004  add sp, sp, #0x4
0c009d44: e51f21ac  ldr r2, [pc, #-0x1ac] =0x0403f2fc
0c009d48: e5943000  ldr r3, [r4, #0x0]
0c009d4c: e0823103  add r3, r2, r3, lsl #2
0c009d50: e2833a03  add r3, r3, #0x3000
0c009d54: e5933004  ldr r3, [r3, #0x4]
0c009d58: e5b3c16c  ldr r12, [r3, #0x16c]!
0c009d5c: e3ccc201  bic r12, r12, #0x10000000
0c009d60: e583c000  str r12, [r3, #0x0]
0c009d64: e5943000  ldr r3, [r4, #0x0]
0c009d68: e333001e  teq r3, #0x1e
0c009d6c: 1a000004  bne 0x0c009d84
0c009d70: e2823a03  add r3, r2, #0x3000
0c009d74: e5933080  ldr r3, [r3, #0x80]
0c009d78: e5b3c16c  ldr r12, [r3, #0x16c]!
0c009d7c: e3ccc201  bic r12, r12, #0x10000000
0c009d80: e583c000  str r12, [r3, #0x0]
0c009d84: e5922000  ldr r2, [r2, #0x0]
0c009d88: e3120b01  tst r2, #0x400
0c009d8c: 0a000003  beq 0x0c009da0
0c009d90: e1a02001  mov r2, r1
0c009d94: e1a01000  mov r1, r0
0c009d98: e28f0f05  add r0, pc, #0x14
0c009d9c: eb001fcf  bl 0x0c011ce0 <fn_0c011ce0>
0c009da0: e3a01000  mov r1, #0x0
0c009da4: e5940000  ldr r0, [r4, #0x0]
0c009da8: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c009dac: eafffa02  b 0x0c0085bc <fn_0c0085bc>
0c009db0: 00600818  .word 0x00600818
0c009db4: 64697361  .asciz "disabled channel %d VOF (reg=0x%08x)\n"
DoDGRqstGetChannelFormatInfo:
0c009ddc: e1a0c00d  mov r12, sp
0c009de0: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c009de4: e24cb004  sub r11, r12, #0x4
0c009de8: e51f1250  ldr r1, [pc, #-0x250] =0x0403f2fc
0c009dec: e5902000  ldr r2, [r0, #0x0]
0c009df0: e0812102  add r2, r1, r2, lsl #2
0c009df4: e2822a03  add r2, r2, #0x3000
0c009df8: e5922004  ldr r2, [r2, #0x4]
0c009dfc: e59220a0  ldr r2, [r2, #0xa0]
0c009e00: e52d2014  str r2, [sp, #-0x14]!
0c009e04: e5902000  ldr r2, [r0, #0x0]
0c009e08: e0812102  add r2, r1, r2, lsl #2
0c009e0c: e2822a03  add r2, r2, #0x3000
0c009e10: e5922004  ldr r2, [r2, #0x4]
0c009e14: e5b2316c  ldr r3, [r2, #0x16c]!
0c009e18: e3a02001  mov r2, #0x1
0c009e1c: e0023f43  and r3, r2, r3, asr #30
0c009e20: e58d3004  str r3, [sp, #0x4]
0c009e24: e5903000  ldr r3, [r0, #0x0]
0c009e28: e0813103  add r3, r1, r3, lsl #2
0c009e2c: e2833a03  add r3, r3, #0x3000
0c009e30: e5933004  ldr r3, [r3, #0x4]
0c009e34: e593316c  ldr r3, [r3, #0x16c]
0c009e38: e0022d43  and r2, r2, r3, asr #26
0c009e3c: e58d2008  str r2, [sp, #0x8]
0c009e40: e3e02000  mvn r2, #0x0
0c009e44: e58d200c  str r2, [sp, #0xc]
0c009e48: e5900000  ldr r0, [r0, #0x0]
0c009e4c: e0810100  add r0, r1, r0, lsl #2
0c009e50: e2800a03  add r0, r0, #0x3000
0c009e54: e5900004  ldr r0, [r0, #0x4]
0c009e58: e5900154  ldr r0, [r0, #0x154]
0c009e5c: e58d0010  str r0, [sp, #0x10]
0c009e60: e1a0100d  mov r1, sp
0c009e64: e3a02014  mov r2, #0x14
0c009e68: e3a00017  mov r0, #0x17
0c009e6c: ebffeb9b  bl 0x0c004ce0 <fn_0c004ce0>
0c009e70: e91ba800  ldmdb r11, {r11,sp,pc}
0c009e74: 0c0083a4  copeq 0x0c0083a4
0c009e78: 00000004  andeq r0, r0, r4
0c009e7c: 0c0083ac  copeq 0x0c0083ac
0c009e80: 00000004  andeq r0, r0, r4
0c009e84: 0c0083b4  copeq 0x0c0083b4
0c009e88: 00000008  andeq r0, r0, r8
0c009e8c: 0c0083bc  copeq 0x0c0083bc
0c009e90: 00000006  andeq r0, r0, r6
0c009e94: 0c0083c4  copeq 0x0c0083c4
0c009e98: 00000006  andeq r0, r0, r6
0c009e9c: 0c0083cc  copeq 0x0c0083cc
0c009ea0: 00000002  andeq r0, r0, r2
0c009ea4: 0c0083d8  copeq 0x0c0083d8
0c009ea8: 00000002  andeq r0, r0, r2
0c009eac: 0c0083e0  copeq 0x0c0083e0
0c009eb0: 00000002  andeq r0, r0, r2
0c009eb4: 0c0083ec  copeq 0x0c0083ec
0c009eb8: 00000006  andeq r0, r0, r6
0c009ebc: 0c0083fc  copeq 0x0c0083fc
0c009ec0: 00000002  andeq r0, r0, r2
0c009ec4: 0c008408  copeq 0x0c008408
0c009ec8: 00000002  andeq r0, r0, r2
0c009ecc: 0c008414  copeq 0x0c008414
0c009ed0: 00000002  andeq r0, r0, r2
0c009ed4: 0c008420  copeq 0x0c008420
0c009ed8: 00000002  andeq r0, r0, r2
0c009edc: 0c00842c  copeq 0x0c00842c
0c009ee0: 00000002  andeq r0, r0, r2
fn_0c009ee4:
0c009ee4: e1a0c00d  mov r12, sp
0c009ee8: e92dd8f0  stmdb sp!, {r4,r5,r6,r7,r11,r12,lr,pc}
0c009eec: e24cb004  sub r11, r12, #0x4
0c009ef0: e1a04000  mov r4, r0
0c009ef4: e3a07001  mov r7, #0x1
0c009ef8: e5807000  str r7, [r0, #0x0]
0c009efc: e59f0060  ldr r0, [pc, #0x60] =0x0403f2fc
0c009f00: e5901004  ldr r1, [r0, #0x4]
0c009f04: e3a06000  mov r6, #0x0
0c009f08: e9840042  stmib r4, {r1,r6}
0c009f0c: e5900000  ldr r0, [r0, #0x0]
0c009f10: e3100b01  tst r0, #0x400
0c009f14: e59f504c  ldr r5, [pc, #0x4c] =0x0406f70c
0c009f18: 0a000003  beq 0x0c009f2c
0c009f1c: e5951000  ldr r1, [r5, #0x0]
0c009f20: e5952018  ldr r2, [r5, #0x18]
0c009f24: e28f0f10  add r0, pc, #0x40
0c009f28: eb001f6c  bl 0x0c011ce0 <fn_0c011ce0>
0c009f2c: e3a00008  mov r0, #0x8
0c009f30: e5951000  ldr r1, [r5, #0x0]
0c009f34: e3310000  teq r1, #0x0
0c009f38: e5951018  ldr r1, [r5, #0x18]
0c009f3c: 1a00001a  bne 0x0c009fac
0c009f40: e3310001  teq r1, #0x1
0c009f44: 0a000027  beq 0x0c009fe8
0c009f48: e3310002  teq r1, #0x2
0c009f4c: 0584700c  streq r7, [r4, #0xc]
0c009f50: 0a000028  beq 0x0c009ff8
0c009f54: e3310007  teq r1, #0x7
0c009f58: 128f0f09  addne r0, pc, #0x24
0c009f5c: 1a000024  bne 0x0c009ff4
0c009f60: ea000019  b 0x0c009fcc
0c009f64: 0403f2fc  .word 0x0403f2fc
0c009f68: 0406f70c  .word 0x0406f70c
0c009f6c: 44472062  .asciz "DG bdset %d vidopt %d\n"
0c009f84: 5761726e  .asciz "Warning: unknown jtag dg4 option (%d)\n"
0c009fac: e2412003  sub r2, r1, #0x3
0c009fb0: e3520004  cmp r2, #0x4
0c009fb4: 908ff102  addls pc, pc, r2, lsl #2
0c009fb8: ea00000c  b 0x0c009ff0
0c009fbc: ea000008  b 0x0c009fe4
0c009fc0: ea000005  b 0x0c009fdc
0c009fc4: ea000007  b 0x0c009fe8
0c009fc8: ea000001  b 0x0c009fd4
0c009fcc: e584600c  str r6, [r4, #0xc]
0c009fd0: ea000008  b 0x0c009ff8
0c009fd4: e3a00010  mov r0, #0x10
0c009fd8: ea000002  b 0x0c009fe8
0c009fdc: e3a00020  mov r0, #0x20
0c009fe0: ea000000  b 0x0c009fe8
0c009fe4: e3a00040  mov r0, #0x40
0c009fe8: e584000c  str r0, [r4, #0xc]
0c009fec: ea000001  b 0x0c009ff8
0c009ff0: e28f0f03  add r0, pc, #0xc
0c009ff4: eb001f39  bl 0x0c011ce0 <fn_0c011ce0>
0c009ff8: e5b50020  ldr r0, [r5, #0x20]!
0c009ffc: e5a40010  str r0, [r4, #0x10]!
0c00a000: e91ba8f0  ldmdb r11, {r4,r5,r6,r7,r11,sp,pc}
0c00a004: 5761726e  .asciz "Warning: Unknown jtag dg5 option (%d)\n"
DoDGRqstGetBoardConfig:
0c00a02c: e1a0c00d  mov r12, sp
0c00a030: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00a034: e24cb004  sub r11, r12, #0x4
0c00a038: e24dd014  sub sp, sp, #0x14
0c00a03c: e1a0000d  mov r0, sp
0c00a040: ebffffa7  bl 0x0c009ee4 <fn_0c009ee4>
0c00a044: e1a0100d  mov r1, sp
0c00a048: e3a02014  mov r2, #0x14
0c00a04c: e3a00006  mov r0, #0x6
0c00a050: ebffeb22  bl 0x0c004ce0 <fn_0c004ce0>
0c00a054: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstGetChannelConfig:
0c00a058: e1a0c00d  mov r12, sp
0c00a05c: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00a060: e24cb004  sub r11, r12, #0x4
0c00a064: e24dd04c  sub sp, sp, #0x4c
0c00a068: e51f210c  ldr r2, [pc, #-0x10c] =0x0403f2fc
0c00a06c: e5901000  ldr r1, [r0, #0x0]
0c00a070: e0821101  add r1, r2, r1, lsl #2
0c00a074: e2811a03  add r1, r1, #0x3000
0c00a078: e5911004  ldr r1, [r1, #0x4]
0c00a07c: e2823010  add r3, r2, #0x10
0c00a080: e1310003  teq r1, r3
0c00a084: 03a01000  moveq r1, #0x0
0c00a088: 13a01001  movne r1, #0x1
0c00a08c: e58d1000  str r1, [sp, #0x0]
0c00a090: e5901000  ldr r1, [r0, #0x0]
0c00a094: e351005f  cmp r1, #0x5f
0c00a098: 0a00002e  beq 0x0c00a158
0c00a09c: ca000014  bgt 0x0c00a0f4
0c00a0a0: e351002e  cmp r1, #0x2e
0c00a0a4: 0a000028  beq 0x0c00a14c
0c00a0a8: ca00000a  bgt 0x0c00a0d8
0c00a0ac: e3310001  teq r1, #0x1
0c00a0b0: 059d1000  ldreq r1, [sp, #0x0]
0c00a0b4: 03811002  orreq r1, r1, #0x2
0c00a0b8: 0a000028  beq 0x0c00a160
0c00a0bc: e331001e  teq r1, #0x1e
0c00a0c0: 1331001f  teqne r1, #0x1f
0c00a0c4: 13310020  teqne r1, #0x20
0c00a0c8: 059d1000  ldreq r1, [sp, #0x0]
0c00a0cc: 03811010  orreq r1, r1, #0x10
0c00a0d0: 0a000022  beq 0x0c00a160
0c00a0d4: ea000022  b 0x0c00a164
0c00a0d8: e331002f  teq r1, #0x2f
0c00a0dc: 13310030  teqne r1, #0x30
0c00a0e0: 13310031  teqne r1, #0x31
0c00a0e4: 0a000018  beq 0x0c00a14c
0c00a0e8: e331005e  teq r1, #0x5e
0c00a0ec: 1a00001c  bne 0x0c00a164
0c00a0f0: ea000018  b 0x0c00a158
0c00a0f4: e35100ca  cmp r1, #0xca
0c00a0f8: 0a000013  beq 0x0c00a14c
0c00a0fc: ca000007  bgt 0x0c00a120
0c00a100: e3310060  teq r1, #0x60
0c00a104: 0a000013  beq 0x0c00a158
0c00a108: e33100c6  teq r1, #0xc6
0c00a10c: 133100c7  teqne r1, #0xc7
0c00a110: 0a00000a  beq 0x0c00a140
0c00a114: e33100c9  teq r1, #0xc9
0c00a118: 1a000011  bne 0x0c00a164
0c00a11c: ea00000a  b 0x0c00a14c
0c00a120: e33100d9  teq r1, #0xd9
0c00a124: 0a000008  beq 0x0c00a14c
0c00a128: e33100de  teq r1, #0xde
0c00a12c: 059d1000  ldreq r1, [sp, #0x0]
0c00a130: 03811c02  orreq r1, r1, #0x200
0c00a134: 0a000009  beq 0x0c00a160
0c00a138: e33100e6  teq r1, #0xe6
0c00a13c: 1a000008  bne 0x0c00a164
0c00a140: e59d1000  ldr r1, [sp, #0x0]
0c00a144: e3811c01  orr r1, r1, #0x100
0c00a148: ea000004  b 0x0c00a160
0c00a14c: e59d1000  ldr r1, [sp, #0x0]
0c00a150: e3811080  orr r1, r1, #0x80
0c00a154: ea000001  b 0x0c00a160
0c00a158: e59d1000  ldr r1, [sp, #0x0]
0c00a15c: e3811b01  orr r1, r1, #0x400
0c00a160: e58d1000  str r1, [sp, #0x0]
0c00a164: e59d1000  ldr r1, [sp, #0x0]
0c00a168: e3110001  tst r1, #0x1
0c00a16c: 0a000025  beq 0x0c00a208
0c00a170: e5903000  ldr r3, [r0, #0x0]
0c00a174: e59f10a0  ldr r1, [pc, #0xa0] =0x00600818
0c00a178: e7911503  ldr r1, [r1, r3, lsl #10]
0c00a17c: e3a0ce91  mov r12, #0x910
0c00a180: e28cc606  add r12, r12, #0x600000
0c00a184: e79c3503  ldr r3, [r12, r3, lsl #10]
0c00a188: e3110001  tst r1, #0x1
0c00a18c: 159d1000  ldrne r1, [sp, #0x0]
0c00a190: 13811004  orrne r1, r1, #0x4
0c00a194: 158d1000  strne r1, [sp, #0x0]
0c00a198: e3130001  tst r3, #0x1
0c00a19c: 159d1000  ldrne r1, [sp, #0x0]
0c00a1a0: 13811008  orrne r1, r1, #0x8
0c00a1a4: 158d1000  strne r1, [sp, #0x0]
0c00a1a8: e3a01000  mov r1, #0x0
0c00a1ac: e5903000  ldr r3, [r0, #0x0]
0c00a1b0: e0823103  add r3, r2, r3, lsl #2
0c00a1b4: e2833a03  add r3, r3, #0x3000
0c00a1b8: e5933004  ldr r3, [r3, #0x4]
0c00a1bc: e0833101  add r3, r3, r1, lsl #2
0c00a1c0: e5b3c008  ldr r12, [r3, #0x8]!
0c00a1c4: e08d3101  add r3, sp, r1, lsl #2
0c00a1c8: e2811001  add r1, r1, #0x1
0c00a1cc: e5a3c004  str r12, [r3, #0x4]!
0c00a1d0: e3510010  cmp r1, #0x10
0c00a1d4: 3afffff4  bcc 0x0c00a1ac
0c00a1d8: e5901000  ldr r1, [r0, #0x0]
0c00a1dc: e0821101  add r1, r2, r1, lsl #2
0c00a1e0: e2811a03  add r1, r1, #0x3000
0c00a1e4: e5911004  ldr r1, [r1, #0x4]
0c00a1e8: e5911048  ldr r1, [r1, #0x48]
0c00a1ec: e58d1044  str r1, [sp, #0x44]
0c00a1f0: e5900000  ldr r0, [r0, #0x0]
0c00a1f4: e0820100  add r0, r2, r0, lsl #2
0c00a1f8: e2800a03  add r0, r0, #0x3000
0c00a1fc: e5900004  ldr r0, [r0, #0x4]
0c00a200: e5900004  ldr r0, [r0, #0x4]
0c00a204: e58d0048  str r0, [sp, #0x48]
0c00a208: e1a0100d  mov r1, sp
0c00a20c: e3a0204c  mov r2, #0x4c
0c00a210: e3a00007  mov r0, #0x7
0c00a214: ebffeab1  bl 0x0c004ce0 <fn_0c004ce0>
0c00a218: e91ba800  ldmdb r11, {r11,sp,pc}
0c00a21c: 00600818  .word 0x00600818
0c00a220: e1a0c00d  mov r12, sp
0c00a224: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c00a228: e24cb004  sub r11, r12, #0x4
0c00a22c: e24dd014  sub sp, sp, #0x14
0c00a230: e3a04000  mov r4, #0x0
0c00a234: e1a0000d  mov r0, sp
0c00a238: ebffff29  bl 0x0c009ee4 <fn_0c009ee4>
0c00a23c: e3a00000  mov r0, #0x0
0c00a240: e3a01001  mov r1, #0x1
0c00a244: e59d2004  ldr r2, [sp, #0x4]
0c00a248: e1120011  tst r2, r1, lsl r0
0c00a24c: 12844001  addne r4, r4, #0x1
0c00a250: e2800001  add r0, r0, #0x1
0c00a254: e3500007  cmp r0, #0x7
0c00a258: dafffff9  ble 0x0c00a244
0c00a25c: e51f12fc  ldr r1, [pc, #-0x2fc] =0x0406f70c
0c00a260: e5814044  str r4, [r1, #0x44]
0c00a264: e59d000c  ldr r0, [sp, #0xc]
0c00a268: e3100001  tst r0, #0x1
0c00a26c: 13a00001  movne r0, #0x1
0c00a270: 1a000012  bne 0x0c00a2c0
0c00a274: e59d000c  ldr r0, [sp, #0xc]
0c00a278: e3100008  tst r0, #0x8
0c00a27c: 13a00004  movne r0, #0x4
0c00a280: 1a00000e  bne 0x0c00a2c0
0c00a284: e59d000c  ldr r0, [sp, #0xc]
0c00a288: e3100010  tst r0, #0x10
0c00a28c: 059d000c  ldreq r0, [sp, #0xc]
0c00a290: 02000004  andeq r0, r0, #0x4
0c00a294: 03300000  teqeq r0, #0x0
0c00a298: 13a00003  movne r0, #0x3
0c00a29c: 1a000007  bne 0x0c00a2c0
0c00a2a0: e59d000c  ldr r0, [sp, #0xc]
0c00a2a4: e3100020  tst r0, #0x20
0c00a2a8: 13a00005  movne r0, #0x5
0c00a2ac: 1a000003  bne 0x0c00a2c0
0c00a2b0: e59d000c  ldr r0, [sp, #0xc]
0c00a2b4: e3100040  tst r0, #0x40
0c00a2b8: 03a00000  moveq r0, #0x0
0c00a2bc: 13a00002  movne r0, #0x2
0c00a2c0: e581004c  str r0, [r1, #0x4c]
0c00a2c4: e3a00000  mov r0, #0x0
0c00a2c8: e5a10050  str r0, [r1, #0x50]!
0c00a2cc: e91ba810  ldmdb r11, {r4,r11,sp,pc}
fn_0c00a2d0:
0c00a2d0: e1a0c00d  mov r12, sp
0c00a2d4: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00a2d8: e24cb004  sub r11, r12, #0x4
0c00a2dc: e1a05000  mov r5, r0
0c00a2e0: e1a06001  mov r6, r1
0c00a2e4: e1a04002  mov r4, r2
0c00a2e8: e330001e  teq r0, #0x1e
0c00a2ec: 03a07020  moveq r7, #0x20
0c00a2f0: 11a07005  movne r7, r5
0c00a2f4: e3530001  cmp r3, #0x1
0c00a2f8: aa000009  bge 0x0c00a324
0c00a2fc: e5941000  ldr r1, [r4, #0x0]
0c00a300: e3510000  cmp r1, #0x0
0c00a304: b2611000  rsblt r1, r1, #0x0
0c00a308: e2011003  and r1, r1, #0x3
0c00a30c: b2611000  rsblt r1, r1, #0x0
0c00a310: e5940008  ldr r0, [r4, #0x8]
0c00a314: e0810000  add r0, r1, r0
0c00a318: e2903003  adds r3, r0, #0x3
0c00a31c: 42833003  addmi r3, r3, #0x3
0c00a320: e1a03143  mov r3, r3, asr #2
0c00a324: e3a0a000  mov r10, #0x0
0c00a328: e59f0184  ldr r0, [pc, #0x184] =0x0403f2fc
0c00a32c: e0800106  add r0, r0, r6, lsl #2
0c00a330: e2800a03  add r0, r0, #0x3000
0c00a334: e5900004  ldr r0, [r0, #0x4]
0c00a338: e5900000  ldr r0, [r0, #0x0]
0c00a33c: e200201f  and r2, r0, #0x1f
0c00a340: e2431001  sub r1, r3, #0x1
0c00a344: e3a00efe  mov r0, #0xfe0
0c00a348: e2800a07  add r0, r0, #0x7000
0c00a34c: e0000281  and r0, r0, r1, lsl #5
0c00a350: e1820000  orr r0, r2, r0
0c00a354: e3a01000  mov r1, #0x0
0c00a358: e52d1004  str r1, [sp, #-0x4]!
0c00a35c: e58d1000  str r1, [sp, #0x0]
0c00a360: e59d1000  ldr r1, [sp, #0x0]
0c00a364: e2811001  add r1, r1, #0x1
0c00a368: e58d1000  str r1, [sp, #0x0]
0c00a36c: e3510003  cmp r1, #0x3
0c00a370: bafffffa  blt 0x0c00a360
0c00a374: e59f113c  ldr r1, [pc, #0x13c] =0x0060080c
0c00a378: e7810507  str r0, [r1, r7, lsl #10]
0c00a37c: e3a00000  mov r0, #0x0
0c00a380: e58d0000  str r0, [sp, #0x0]
0c00a384: e59d0000  ldr r0, [sp, #0x0]
0c00a388: e2800001  add r0, r0, #0x1
0c00a38c: e58d0000  str r0, [sp, #0x0]
0c00a390: e3500003  cmp r0, #0x3
0c00a394: bafffffa  blt 0x0c00a384
0c00a398: e28dd004  add sp, sp, #0x4
0c00a39c: e3530004  cmp r3, #0x4
0c00a3a0: b1a01003  movlt r1, r3
0c00a3a4: b28f0f44  addlt r0, pc, #0x110
0c00a3a8: bb001e4c  bllt 0x0c011ce0 <fn_0c011ce0>
0c00a3ac: e3a00000  mov r0, #0x0
0c00a3b0: e3a01501  mov r1, #0x400000
0c00a3b4: e2411a01  sub r1, r1, #0x1000
0c00a3b8: e1350006  teq r5, r6
0c00a3bc: 0a00000b  beq 0x0c00a3f0
0c00a3c0: e5940000  ldr r0, [r4, #0x0]
0c00a3c4: e3500000  cmp r0, #0x0
0c00a3c8: b2800003  addlt r0, r0, #0x3
0c00a3cc: e1a00140  mov r0, r0, asr #2
0c00a3d0: e0010600  and r0, r1, r0, lsl #12
0c00a3d4: e18a0000  orr r0, r10, r0
0c00a3d8: e1a00620  mov r0, r0, lsr #12
0c00a3dc: e1a00600  mov r0, r0, lsl #12
0c00a3e0: e5942004  ldr r2, [r4, #0x4]
0c00a3e4: e1a02a02  mov r2, r2, lsl #20
0c00a3e8: e1a02a22  mov r2, r2, lsr #20
0c00a3ec: e1800002  orr r0, r0, r2
0c00a3f0: e3a02000  mov r2, #0x0
0c00a3f4: e52d2004  str r2, [sp, #-0x4]!
0c00a3f8: e58d2000  str r2, [sp, #0x0]
0c00a3fc: e59d2000  ldr r2, [sp, #0x0]
0c00a400: e2822001  add r2, r2, #0x1
0c00a404: e58d2000  str r2, [sp, #0x0]
0c00a408: e3520003  cmp r2, #0x3
0c00a40c: bafffffa  blt 0x0c00a3fc
0c00a410: e3a02e81  mov r2, #0x810
0c00a414: e2822606  add r2, r2, #0x600000
0c00a418: e7820507  str r0, [r2, r7, lsl #10]
0c00a41c: e3a00000  mov r0, #0x0
0c00a420: e58d0000  str r0, [sp, #0x0]
0c00a424: e59d0000  ldr r0, [sp, #0x0]
0c00a428: e2800001  add r0, r0, #0x1
0c00a42c: e58d0000  str r0, [sp, #0x0]
0c00a430: e3500003  cmp r0, #0x3
0c00a434: bafffffa  blt 0x0c00a424
0c00a438: e28dd004  add sp, sp, #0x4
0c00a43c: e5940008  ldr r0, [r4, #0x8]
0c00a440: e2900003  adds r0, r0, #0x3
0c00a444: 42800003  addmi r0, r0, #0x3
0c00a448: e1a00140  mov r0, r0, asr #2
0c00a44c: e0010600  and r0, r1, r0, lsl #12
0c00a450: e18a0000  orr r0, r10, r0
0c00a454: e1a00620  mov r0, r0, lsr #12
0c00a458: e1a00600  mov r0, r0, lsl #12
0c00a45c: e5b4100c  ldr r1, [r4, #0xc]!
0c00a460: e1a01a01  mov r1, r1, lsl #20
0c00a464: e1a01a21  mov r1, r1, lsr #20
0c00a468: e1800001  orr r0, r0, r1
0c00a46c: e3a01000  mov r1, #0x0
0c00a470: e52d1004  str r1, [sp, #-0x4]!
0c00a474: e58d1000  str r1, [sp, #0x0]
0c00a478: e59d1000  ldr r1, [sp, #0x0]
0c00a47c: e2811001  add r1, r1, #0x1
0c00a480: e58d1000  str r1, [sp, #0x0]
0c00a484: e3510003  cmp r1, #0x3
0c00a488: bafffffa  blt 0x0c00a478
0c00a48c: e59f1054  ldr r1, [pc, #0x54] =0x00600814
0c00a490: e7810507  str r0, [r1, r7, lsl #10]
0c00a494: e3a00000  mov r0, #0x0
0c00a498: e58d0000  str r0, [sp, #0x0]
0c00a49c: e59d0000  ldr r0, [sp, #0x0]
0c00a4a0: e2800001  add r0, r0, #0x1
0c00a4a4: e58d0000  str r0, [sp, #0x0]
0c00a4a8: e3500003  cmp r0, #0x3
0c00a4ac: bafffffa  blt 0x0c00a49c
0c00a4b0: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00a4b4: 0403f2fc  .word 0x0403f2fc
0c00a4b8: 0060080c  .word 0x0060080c
0c00a4bc: 5761726e  .asciz "Warning: setting screen X to %d groupxels!\n"
0c00a4e8: 00600814  .word 0x00600814
fn_0c00a4ec:
0c00a4ec: e1a0c00d  mov r12, sp
0c00a4f0: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00a4f4: e24cb004  sub r11, r12, #0x4
0c00a4f8: e1a04000  mov r4, r0
0c00a4fc: e24dd05c  sub sp, sp, #0x5c
0c00a500: e3a00000  mov r0, #0x0
0c00a504: e58d0024  str r0, [sp, #0x24]
0c00a508: e58d0020  str r0, [sp, #0x20]
0c00a50c: e3a06000  mov r6, #0x0
0c00a510: e58d001c  str r0, [sp, #0x1c]
0c00a514: e5940000  ldr r0, [r4, #0x0]
0c00a518: e51fa06c  ldr r10, [pc, #-0x6c] =0x0403f2fc
0c00a51c: e28a1004  add r1, r10, #0x4
0c00a520: e2811a03  add r1, r1, #0x3000
0c00a524: e330001e  teq r0, #0x1e
0c00a528: e58d1058  str r1, [sp, #0x58]
0c00a52c: 03a06001  moveq r6, #0x1
0c00a530: 03a00020  moveq r0, #0x20
0c00a534: 058d0004  streq r0, [sp, #0x4]
0c00a538: 0a000007  beq 0x0c00a55c
0c00a53c: e58d0004  str r0, [sp, #0x4]
0c00a540: e3300001  teq r0, #0x1
0c00a544: 1a000004  bne 0x0c00a55c
0c00a548: e59d0058  ldr r0, [sp, #0x58]
0c00a54c: e5900004  ldr r0, [r0, #0x4]
0c00a550: e590016c  ldr r0, [r0, #0x16c]
0c00a554: e3100301  tst r0, #0x4000000
0c00a558: 13a06001  movne r6, #0x1
0c00a55c: e28a0a03  add r0, r10, #0x3000
0c00a560: e58d0054  str r0, [sp, #0x54]
0c00a564: e5900424  ldr r0, [r0, #0x424]
0c00a568: e58d003c  str r0, [sp, #0x3c]
0c00a56c: e3500000  cmp r0, #0x0
0c00a570: ca000003  bgt 0x0c00a584
0c00a574: e28f1f97  add r1, pc, #0x25c
0c00a578: e28f0f9a  add r0, pc, #0x268
0c00a57c: e3a0205f  mov r2, #0x5f
0c00a580: eb0021dc  bl 0x0c012cf8 <fn_0c012cf8>
0c00a584: e3a00000  mov r0, #0x0
0c00a588: e52d0004  str r0, [sp, #-0x4]!
0c00a58c: e58d0000  str r0, [sp, #0x0]
0c00a590: e59d0000  ldr r0, [sp, #0x0]
0c00a594: e2800001  add r0, r0, #0x1
0c00a598: e58d0000  str r0, [sp, #0x0]
0c00a59c: e3500003  cmp r0, #0x3
0c00a5a0: bafffffa  blt 0x0c00a590
0c00a5a4: e59d1008  ldr r1, [sp, #0x8]
0c00a5a8: e59d2040  ldr r2, [sp, #0x40]
0c00a5ac: e59f0240  ldr r0, [pc, #0x240] =0x00600914
0c00a5b0: e7802501  str r2, [r0, r1, lsl #10]
0c00a5b4: e3a00000  mov r0, #0x0
0c00a5b8: e58d0000  str r0, [sp, #0x0]
0c00a5bc: e59d0000  ldr r0, [sp, #0x0]
0c00a5c0: e2800001  add r0, r0, #0x1
0c00a5c4: e58d0000  str r0, [sp, #0x0]
0c00a5c8: e3500003  cmp r0, #0x3
0c00a5cc: bafffffa  blt 0x0c00a5bc
0c00a5d0: e28dd004  add sp, sp, #0x4
0c00a5d4: e5941000  ldr r1, [r4, #0x0]
0c00a5d8: e08a0101  add r0, r10, r1, lsl #2
0c00a5dc: e2800a03  add r0, r0, #0x3000
0c00a5e0: e5900004  ldr r0, [r0, #0x4]
0c00a5e4: e5b0704c  ldr r7, [r0, #0x4c]!
0c00a5e8: e59a0000  ldr r0, [r10, #0x0]
0c00a5ec: e3100c01  tst r0, #0x100
0c00a5f0: 11a02007  movne r2, r7
0c00a5f4: 128f0f7f  addne r0, pc, #0x1fc
0c00a5f8: 1b001db8  blne 0x0c011ce0 <fn_0c011ce0>
0c00a5fc: e3a05000  mov r5, #0x0
0c00a600: e5940000  ldr r0, [r4, #0x0]
0c00a604: e1370000  teq r7, r0
0c00a608: 01a01005  moveq r1, r5
0c00a60c: 13a01001  movne r1, #0x1
0c00a610: e08a0100  add r0, r10, r0, lsl #2
0c00a614: e2800a03  add r0, r0, #0x3000
0c00a618: e58d1000  str r1, [sp, #0x0]
0c00a61c: e5900004  ldr r0, [r0, #0x4]
0c00a620: e59010c0  ldr r1, [r0, #0xc0]
0c00a624: e3360000  teq r6, #0x0
0c00a628: e58d1030  str r1, [sp, #0x30]
0c00a62c: 13a06002  movne r6, #0x2
0c00a630: 1a000008  bne 0x0c00a658
0c00a634: e5b06098  ldr r6, [r0, #0x98]!
0c00a638: e3560000  cmp r6, #0x0
0c00a63c: da000001  ble 0x0c00a648
0c00a640: e3560010  cmp r6, #0x10
0c00a644: da000003  ble 0x0c00a658
0c00a648: e28f1f62  add r1, pc, #0x188
0c00a64c: e28f0f6f  add r0, pc, #0x1bc
0c00a650: e3a0207a  mov r2, #0x7a
0c00a654: eb0021a7  bl 0x0c012cf8 <fn_0c012cf8>
0c00a658: e51f11ac  ldr r1, [pc, #-0x1ac] =0x0403f2fc
0c00a65c: e5940000  ldr r0, [r4, #0x0]
0c00a660: e0810100  add r0, r1, r0, lsl #2
0c00a664: e2800a03  add r0, r0, #0x3000
0c00a668: e5900004  ldr r0, [r0, #0x4]
0c00a66c: e5900150  ldr r0, [r0, #0x150]
0c00a670: e3a0a000  mov r10, #0x0
0c00a674: e58d0018  str r0, [sp, #0x18]
0c00a678: e5941004  ldr r1, [r4, #0x4]
0c00a67c: e1a05001  mov r5, r1
0c00a680: e3a000a0  mov r0, #0xa0
0c00a684: eb00345f  bl 0x0c017808 <__rt_sdiv>
0c00a688: e3510000  cmp r1, #0x0
0c00a68c: b2811003  addlt r1, r1, #0x3
0c00a690: e1a01141  mov r1, r1, asr #2
0c00a694: e201003f  and r0, r1, #0x3f
0c00a698: e18a0000  orr r0, r10, r0
0c00a69c: e1b01005  movs r1, r5
0c00a6a0: 42611000  rsbmi r1, r1, #0x0
0c00a6a4: e2011003  and r1, r1, #0x3
0c00a6a8: 42611000  rsbmi r1, r1, #0x0
0c00a6ac: e3c020c0  bic r2, r0, #0xc0
0c00a6b0: e3a000c0  mov r0, #0xc0
0c00a6b4: e0000301  and r0, r0, r1, lsl #6
0c00a6b8: e1820000  orr r0, r2, r0
0c00a6bc: e3a02000  mov r2, #0x0
0c00a6c0: e52d2004  str r2, [sp, #-0x4]!
0c00a6c4: e58d2000  str r2, [sp, #0x0]
0c00a6c8: e59d2000  ldr r2, [sp, #0x0]
0c00a6cc: e2822001  add r2, r2, #0x1
0c00a6d0: e58d2000  str r2, [sp, #0x0]
0c00a6d4: e3520003  cmp r2, #0x3
0c00a6d8: bafffffa  blt 0x0c00a6c8
0c00a6dc: e59d3008  ldr r3, [sp, #0x8]
0c00a6e0: e59f215c  ldr r2, [pc, #0x15c] =0x00600928
0c00a6e4: e7820503  str r0, [r2, r3, lsl #10]
0c00a6e8: e3a00000  mov r0, #0x0
0c00a6ec: e58d0000  str r0, [sp, #0x0]
0c00a6f0: e59d0000  ldr r0, [sp, #0x0]
0c00a6f4: e2800001  add r0, r0, #0x1
0c00a6f8: e58d0000  str r0, [sp, #0x0]
0c00a6fc: e3500003  cmp r0, #0x3
0c00a700: bafffffa  blt 0x0c00a6f0
0c00a704: e28dd004  add sp, sp, #0x4
0c00a708: e594000c  ldr r0, [r4, #0xc]
0c00a70c: e0810000  add r0, r1, r0
0c00a710: e2900003  adds r0, r0, #0x3
0c00a714: 42800003  addmi r0, r0, #0x3
0c00a718: e1a00140  mov r0, r0, asr #2
0c00a71c: e3a0a000  mov r10, #0x0
0c00a720: e3a05000  mov r5, #0x0
0c00a724: e3560000  cmp r6, #0x0
0c00a728: e58d0038  str r0, [sp, #0x38]
0c00a72c: da00000c  ble 0x0c00a764
0c00a730: e51f1284  ldr r1, [pc, #-0x284] =0x0403f2fc
0c00a734: e5940000  ldr r0, [r4, #0x0]
0c00a738: e0810100  add r0, r1, r0, lsl #2
0c00a73c: e2800a03  add r0, r0, #0x3000
0c00a740: e5b01004  ldr r1, [r0, #0x4]!
0c00a744: e0810205  add r0, r1, r5, lsl #4
0c00a748: e59000d0  ldr r0, [r0, #0xd0]
0c00a74c: e2800001  add r0, r0, #0x1
0c00a750: e150000a  cmp r0, r10
0c00a754: c1a0a000  movgt r10, r0
0c00a758: e2855001  add r5, r5, #0x1
0c00a75c: e1550006  cmp r5, r6
0c00a760: bafffff7  blt 0x0c00a744
0c00a764: e59d0000  ldr r0, [sp, #0x0]
0c00a768: e3300000  teq r0, #0x0
0c00a76c: 1a000003  bne 0x0c00a780
0c00a770: e1a0000a  mov r0, r10
0c00a774: e5941010  ldr r1, [r4, #0x10]
0c00a778: eb003422  bl 0x0c017808 <__rt_sdiv>
0c00a77c: e5840010  str r0, [r4, #0x10]
0c00a780: e59d0030  ldr r0, [sp, #0x30]
0c00a784: e3500005  cmp r0, #0x5
0c00a788: 908ff100  addls pc, pc, r0, lsl #2
0c00a78c: ea00002d  b 0x0c00a848
0c00a790: ea00002f  b 0x0c00a854
0c00a794: ea00003f  b 0x0c00a898
0c00a798: ea000042  b 0x0c00a8a8
0c00a79c: ea00002c  b 0x0c00a854
0c00a7a0: ea00002b  b 0x0c00a854
0c00a7a4: e3a0a002  mov r10, #0x2
0c00a7a8: e1a0000a  mov r0, r10
0c00a7ac: e5941010  ldr r1, [r4, #0x10]
0c00a7b0: eb003414  bl 0x0c017808 <__rt_sdiv>
0c00a7b4: e3a01000  mov r1, #0x0
0c00a7b8: e5840010  str r0, [r4, #0x10]
0c00a7bc: e58d102c  str r1, [sp, #0x2c]
0c00a7c0: e5d8c042  ldrb r12, [r8, #0x42]
0c00a7c4: e5d81043  ldrb r1, [r8, #0x43]
0c00a7c8: e1a0cc0c  mov r12, r12, lsl #24
0c00a7cc: e181184c  orr r1, r1, r12, asr #16
0c00a7d0: e0410000  sub r0, r1, r0
0c00a7d4: ea000036  b 0x0c00a8b4
0c00a7d8: 76696465  .asciz "video_request.c"
0c00a7e8: 6e4d4157  .asciz "nMAW > 0"
0c00a7f4: 00600914  .word 0x00600914
0c00a7f8: 6368616e  .asciz "chan %d source = %d\n"
0c00a810: 286e4669  .asciz "(nFields > 0) && (nFields <= VDRC_REQ_TABLE_SIZE)"
0c00a844: 00600928  .word 0x00600928
0c00a848: e59d1030  ldr r1, [sp, #0x30]
0c00a84c: e28f0f03  add r0, pc, #0xc
0c00a850: eb001d22  bl 0x0c011ce0 <fn_0c011ce0>
0c00a854: e3a00000  mov r0, #0x0
0c00a858: e58d002c  str r0, [sp, #0x2c]
0c00a85c: ea000014  b 0x0c00a8b4
0c00a860: 5741524e  .asciz "WARNING: unknown field layout %d, assuming progressive\n"
0c00a898: e24a0001  sub r0, r10, #0x1
0c00a89c: e58d002c  str r0, [sp, #0x2c]
0c00a8a0: e3a00001  mov r0, #0x1
0c00a8a4: ea000002  b 0x0c00a8b4
0c00a8a8: e3a00000  mov r0, #0x0
0c00a8ac: e58d002c  str r0, [sp, #0x2c]
0c00a8b0: e5940010  ldr r0, [r4, #0x10]
0c00a8b4: e58d0028  str r0, [sp, #0x28]
0c00a8b8: e51f040c  ldr r0, [pc, #-0x40c] =0x0403f2fc
0c00a8bc: e5900000  ldr r0, [r0, #0x0]
0c00a8c0: e3100040  tst r0, #0x40
0c00a8c4: 0a000007  beq 0x0c00a8e8
0c00a8c8: e59d3030  ldr r3, [sp, #0x30]
0c00a8cc: e92d0008  stmdb sp!, {r3}
0c00a8d0: e1a03006  mov r3, r6
0c00a8d4: e1a0200a  mov r2, r10
0c00a8d8: e5941010  ldr r1, [r4, #0x10]
0c00a8dc: e28f0f0d  add r0, pc, #0x34
0c00a8e0: eb001cfe  bl 0x0c011ce0 <fn_0c011ce0>
0c00a8e4: e28dd004  add sp, sp, #0x4
0c00a8e8: e594000c  ldr r0, [r4, #0xc]
0c00a8ec: e58d0010  str r0, [sp, #0x10]
0c00a8f0: e5940010  ldr r0, [r4, #0x10]
0c00a8f4: e58d0014  str r0, [sp, #0x14]
0c00a8f8: e59d0000  ldr r0, [sp, #0x0]
0c00a8fc: e3300000  teq r0, #0x0
0c00a900: 1a000013  bne 0x0c00a954
0c00a904: e3a00000  mov r0, #0x0
0c00a908: e58d000c  str r0, [sp, #0xc]
0c00a90c: e58d0008  str r0, [sp, #0x8]
0c00a910: e59d5038  ldr r5, [sp, #0x38]
0c00a914: ea000036  b 0x0c00a9f4
0c00a918: 72657175  .asciz "requesting %d lines (%d spatial of %d fields, layout = %d)\n"
0c00a954: e51f34a8  ldr r3, [pc, #-0x4a8] =0x0403f2fc
0c00a958: e0830107  add r0, r3, r7, lsl #2
0c00a95c: e2800a03  add r0, r0, #0x3000
0c00a960: e5b02004  ldr r2, [r0, #0x4]!
0c00a964: e2821058  add r1, r2, #0x58
0c00a968: e8910003  ldmia r1, {r0,r1}
0c00a96c: e59220d4  ldr r2, [r2, #0xd4]
0c00a970: e3520000  cmp r2, #0x0
0c00a974: d3a02000  movle r2, #0x0
0c00a978: c3a02001  movgt r2, #0x1
0c00a97c: e594c004  ldr r12, [r4, #0x4]
0c00a980: e241e001  sub lr, r1, #0x1
0c00a984: e58dc008  str r12, [sp, #0x8]
0c00a988: e594c008  ldr r12, [r4, #0x8]
0c00a98c: e04ec00c  sub r12, lr, r12
0c00a990: e2905003  adds r5, r0, #0x3
0c00a994: e58dc00c  str r12, [sp, #0xc]
0c00a998: 42855003  addmi r5, r5, #0x3
0c00a99c: e1a05145  mov r5, r5, asr #2
0c00a9a0: e3320000  teq r2, #0x0
0c00a9a4: 0a000005  beq 0x0c00a9c0
0c00a9a8: e59d200c  ldr r2, [sp, #0xc]
0c00a9ac: e1a020c2  mov r2, r2, asr #1
0c00a9b0: e58d200c  str r2, [sp, #0xc]
0c00a9b4: e59d2014  ldr r2, [sp, #0x14]
0c00a9b8: e1a020c2  mov r2, r2, asr #1
0c00a9bc: e58d2014  str r2, [sp, #0x14]
0c00a9c0: e5932000  ldr r2, [r3, #0x0]
0c00a9c4: e3120c01  tst r2, #0x100
0c00a9c8: 0a000009  beq 0x0c00a9f4
0c00a9cc: e1a03001  mov r3, r1
0c00a9d0: e1a02000  mov r2, r0
0c00a9d4: e1a01007  mov r1, r7
0c00a9d8: e59d0014  ldr r0, [sp, #0x14]
0c00a9dc: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00a9e0: e28d3018  add r3, sp, #0x18
0c00a9e4: e893000e  ldmia r3, {r1,r2,r3}
0c00a9e8: e28f0fc8  add r0, pc, #0x320
0c00a9ec: eb001cbb  bl 0x0c011ce0 <fn_0c011ce0>
0c00a9f0: e28dd010  add sp, sp, #0x10
0c00a9f4: e51f0548  ldr r0, [pc, #-0x548] =0x0403f2fc
0c00a9f8: e5900000  ldr r0, [r0, #0x0]
0c00a9fc: e3100c02  tst r0, #0x200
0c00aa00: 0a00000a  beq 0x0c00aa30
0c00aa04: e28d3008  add r3, sp, #0x8
0c00aa08: e893000f  ldmia r3, {r0,r1,r2,r3}
0c00aa0c: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00aa10: e284300c  add r3, r4, #0xc
0c00aa14: e893000c  ldmia r3, {r2,r3}
0c00aa18: e92d000c  stmdb sp!, {r2,r3}
0c00aa1c: e994000c  ldmib r4, {r2,r3}
0c00aa20: e59d1050  ldr r1, [sp, #0x50]
0c00aa24: e28f0fc6  add r0, pc, #0x318
0c00aa28: eb001cac  bl 0x0c011ce0 <fn_0c011ce0>
0c00aa2c: e28dd018  add sp, sp, #0x18
0c00aa30: e1a03005  mov r3, r5
0c00aa34: e28d2008  add r2, sp, #0x8
0c00aa38: e1a01007  mov r1, r7
0c00aa3c: e5940000  ldr r0, [r4, #0x0]
0c00aa40: ebfffe22  bl 0x0c00a2d0 <fn_0c00a2d0>
0c00aa44: e41d0004  ldr r0, [sp], #-0x4
0c00aa48: e3300000  teq r0, #0x0
0c00aa4c: 1a0001ae  bne 0x0c00b10c
0c00aa50: e594000c  ldr r0, [r4, #0xc]
0c00aa54: e5945004  ldr r5, [r4, #0x4]
0c00aa58: e0850000  add r0, r5, r0
0c00aa5c: e2401001  sub r1, r0, #0x1
0c00aa60: e3a000a0  mov r0, #0xa0
0c00aa64: eb003367  bl 0x0c017808 <__rt_sdiv>
0c00aa68: e1a07000  mov r7, r0
0c00aa6c: e1a01005  mov r1, r5
0c00aa70: e3a000a0  mov r0, #0xa0
0c00aa74: eb003363  bl 0x0c017808 <__rt_sdiv>
0c00aa78: e0470000  sub r0, r7, r0
0c00aa7c: e58d0000  str r0, [sp, #0x0]
0c00aa80: e51f15d4  ldr r1, [pc, #-0x5d4] =0x0403f2fc
0c00aa84: e5940000  ldr r0, [r4, #0x0]
0c00aa88: e0810100  add r0, r1, r0, lsl #2
0c00aa8c: e2800a03  add r0, r0, #0x3000
0c00aa90: e5900004  ldr r0, [r0, #0x4]
0c00aa94: e5b070a4  ldr r7, [r0, #0xa4]!
0c00aa98: e59f02e4  ldr r0, [pc, #0x2e4] =0x0406f70c
0c00aa9c: e5900000  ldr r0, [r0, #0x0]
0c00aaa0: e3300002  teq r0, #0x2
0c00aaa4: 1a000001  bne 0x0c00aab0
0c00aaa8: e3570004  cmp r7, #0x4
0c00aaac: c3a07004  movgt r7, #0x4
0c00aab0: e59d0000  ldr r0, [sp, #0x0]
0c00aab4: e3500007  cmp r0, #0x7
0c00aab8: da00000e  ble 0x0c00aaf8
0c00aabc: e3a05002  mov r5, #0x2
0c00aac0: e59d0000  ldr r0, [sp, #0x0]
0c00aac4: e0801005  add r1, r0, r5
0c00aac8: e1a00005  mov r0, r5
0c00aacc: eb00334d  bl 0x0c017808 <__rt_sdiv>
0c00aad0: e1a07000  mov r7, r0
0c00aad4: e2855001  add r5, r5, #0x1
0c00aad8: e3500008  cmp r0, #0x8
0c00aadc: cafffff7  bgt 0x0c00aac0
0c00aae0: e51f0634  ldr r0, [pc, #-0x634] =0x0403f2fc
0c00aae4: e5900000  ldr r0, [r0, #0x0]
0c00aae8: e3100040  tst r0, #0x40
0c00aaec: 11a01007  movne r1, r7
0c00aaf0: 128f0fa4  addne r0, pc, #0x290
0c00aaf4: 1b001c79  blne 0x0c011ce0 <fn_0c011ce0>
0c00aaf8: e3570001  cmp r7, #0x1
0c00aafc: ba000001  blt 0x0c00ab08
0c00ab00: e3570008  cmp r7, #0x8
0c00ab04: da000003  ble 0x0c00ab18
0c00ab08: e24f1fce  sub r1, pc, #0x338
0c00ab0c: e28f0fa7  add r0, pc, #0x29c
0c00ab10: e3a020f3  mov r2, #0xf3
0c00ab14: eb002077  bl 0x0c012cf8 <fn_0c012cf8>
0c00ab18: e51f066c  ldr r0, [pc, #-0x66c] =0x0403f2fc
0c00ab1c: e5900000  ldr r0, [r0, #0x0]
0c00ab20: e3100040  tst r0, #0x40
0c00ab24: 0a000004  beq 0x0c00ab3c
0c00ab28: e59d0000  ldr r0, [sp, #0x0]
0c00ab2c: e2801001  add r1, r0, #0x1
0c00ab30: e1a02007  mov r2, r7
0c00ab34: e28f0fac  add r0, pc, #0x2b0
0c00ab38: eb001c68  bl 0x0c011ce0 <fn_0c011ce0>
0c00ab3c: e41d0004  ldr r0, [sp], #-0x4
0c00ab40: e2800001  add r0, r0, #0x1
0c00ab44: e1500007  cmp r0, r7
0c00ab48: da00011e  ble 0x0c00afc8
0c00ab4c: e0405007  sub r5, r0, r7
0c00ab50: e2470001  sub r0, r7, #0x1
0c00ab54: e2000007  and r0, r0, #0x7
0c00ab58: e58d003c  str r0, [sp, #0x3c]
0c00ab5c: e0870107  add r0, r7, r7, lsl #2
0c00ab60: e1b00280  movs r0, r0, lsl #5
0c00ab64: e58d0058  str r0, [sp, #0x58]
0c00ab68: 42800003  addmi r0, r0, #0x3
0c00ab6c: e1a00140  mov r0, r0, asr #2
0c00ab70: e52d0004  str r0, [sp, #-0x4]!
0c00ab74: e3a000a0  mov r0, #0xa0
0c00ab78: e5941004  ldr r1, [r4, #0x4]
0c00ab7c: eb003321  bl 0x0c017808 <__rt_sdiv>
0c00ab80: e3510000  cmp r1, #0x0
0c00ab84: e49d0004  ldr r0, [sp], #0x4
0c00ab88: b2811003  addlt r1, r1, #0x3
0c00ab8c: e0400141  sub r0, r0, r1, asr #2
0c00ab90: e2400001  sub r0, r0, #0x1
0c00ab94: e59d103c  ldr r1, [sp, #0x3c]
0c00ab98: e3c11b0f  bic r1, r1, #0x3c00
0c00ab9c: e3c11ffe  bic r1, r1, #0x3f8
0c00aba0: e3a02901  mov r2, #0x4000
0c00aba4: e2422008  sub r2, r2, #0x8
0c00aba8: e0022180  and r2, r2, r0, lsl #3
0c00abac: e58d1054  str r1, [sp, #0x54]
0c00abb0: e1811002  orr r1, r1, r2
0c00abb4: e3811901  orr r1, r1, #0x4000
0c00abb8: e3a02000  mov r2, #0x0
0c00abbc: e52d2004  str r2, [sp, #-0x4]!
0c00abc0: e58d2000  str r2, [sp, #0x0]
0c00abc4: e59d2000  ldr r2, [sp, #0x0]
0c00abc8: e2822001  add r2, r2, #0x1
0c00abcc: e58d2000  str r2, [sp, #0x0]
0c00abd0: e3520003  cmp r2, #0x3
0c00abd4: bafffffa  blt 0x0c00abc4
0c00abd8: e5942000  ldr r2, [r4, #0x0]
0c00abdc: e59f3230  ldr r3, [pc, #0x230] =0x0060091c
0c00abe0: e7831502  str r1, [r3, r2, lsl #10]
0c00abe4: e3a01000  mov r1, #0x0
0c00abe8: e58d1000  str r1, [sp, #0x0]
0c00abec: e59d1000  ldr r1, [sp, #0x0]
0c00abf0: e2811001  add r1, r1, #0x1
0c00abf4: e58d1000  str r1, [sp, #0x0]
0c00abf8: e3510003  cmp r1, #0x3
0c00abfc: bafffffa  blt 0x0c00abec
0c00ac00: e28dd004  add sp, sp, #0x4
0c00ac04: e51f1758  ldr r1, [pc, #-0x758] =0x0403f2fc
0c00ac08: e5911000  ldr r1, [r1, #0x0]
0c00ac0c: e3110040  tst r1, #0x40
0c00ac10: 12801001  addne r1, r0, #0x1
0c00ac14: 128f0f7f  addne r0, pc, #0x1fc
0c00ac18: 1b001c30  blne 0x0c011ce0 <fn_0c011ce0>
0c00ac1c: e1550007  cmp r5, r7
0c00ac20: da00008f  ble 0x0c00ae64
0c00ac24: e1a01005  mov r1, r5
0c00ac28: e1a00007  mov r0, r7
0c00ac2c: eb0032f5  bl 0x0c017808 <__rt_sdiv>
0c00ac30: e58d0000  str r0, [sp, #0x0]
0c00ac34: e0000097  mul r0, r7, r0
0c00ac38: e1500005  cmp r0, r5
0c00ac3c: a59d0000  ldrge r0, [sp, #0x0]
0c00ac40: a2400001  subge r0, r0, #0x1
0c00ac44: a58d0000  strge r0, [sp, #0x0]
0c00ac48: e59d0058  ldr r0, [sp, #0x58]
0c00ac4c: e3500000  cmp r0, #0x0
0c00ac50: b2800003  addlt r0, r0, #0x3
0c00ac54: e1a00140  mov r0, r0, asr #2
0c00ac58: e2400001  sub r0, r0, #0x1
0c00ac5c: e3a02901  mov r2, #0x4000
0c00ac60: e2422008  sub r2, r2, #0x8
0c00ac64: e0022180  and r2, r2, r0, lsl #3
0c00ac68: e59d1054  ldr r1, [sp, #0x54]
0c00ac6c: e1811002  orr r1, r1, r2
0c00ac70: e3c11501  bic r1, r1, #0x400000
0c00ac74: e3c119fe  bic r1, r1, #0x3f8000
0c00ac78: e3812901  orr r2, r1, #0x4000
0c00ac7c: e3a019fe  mov r1, #0x3f8000
0c00ac80: e2811501  add r1, r1, #0x400000
0c00ac84: e41d3004  ldr r3, [sp], #-0x4
0c00ac88: e0011783  and r1, r1, r3, lsl #15
0c00ac8c: e1821001  orr r1, r2, r1
0c00ac90: e3a02000  mov r2, #0x0
0c00ac94: e58d2000  str r2, [sp, #0x0]
0c00ac98: e58d2000  str r2, [sp, #0x0]
0c00ac9c: e59d2000  ldr r2, [sp, #0x0]
0c00aca0: e2822001  add r2, r2, #0x1
0c00aca4: e58d2000  str r2, [sp, #0x0]
0c00aca8: e3520003  cmp r2, #0x3
0c00acac: bafffffa  blt 0x0c00ac9c
0c00acb0: e3a03e92  mov r3, #0x920
0c00acb4: e2833606  add r3, r3, #0x600000
0c00acb8: e5942000  ldr r2, [r4, #0x0]
0c00acbc: e7831502  str r1, [r3, r2, lsl #10]
0c00acc0: e3a01000  mov r1, #0x0
0c00acc4: e58d1000  str r1, [sp, #0x0]
0c00acc8: e59d1000  ldr r1, [sp, #0x0]
0c00accc: e2811001  add r1, r1, #0x1
0c00acd0: e58d1000  str r1, [sp, #0x0]
0c00acd4: e3510003  cmp r1, #0x3
0c00acd8: bafffffa  blt 0x0c00acc8
0c00acdc: e28dd004  add sp, sp, #0x4
0c00ace0: e51f1834  ldr r1, [pc, #-0x834] =0x0403f2fc
0c00ace4: e5911000  ldr r1, [r1, #0x0]
0c00ace8: e3110040  tst r1, #0x40
0c00acec: 0a000003  beq 0x0c00ad00
0c00acf0: e2801001  add r1, r0, #0x1
0c00acf4: e59d2000  ldr r2, [sp, #0x0]
0c00acf8: e28f0f4e  add r0, pc, #0x138
0c00acfc: eb001bf7  bl 0x0c011ce0 <fn_0c011ce0>
0c00ad00: e59d0000  ldr r0, [sp, #0x0]
0c00ad04: e0000097  mul r0, r7, r0
0c00ad08: e0455000  sub r5, r5, r0
0c00ad0c: ea00006d  b 0x0c00aec8
0c00ad10: 69777363  .asciz "iwsc rect = (%d,%d)-(%dx%d), src[%d] input %dx%d\n"
0c00ad44: 6d617070  .asciz "mapping %d groupxels (%d,%d)-(%dx%d) to iwsc (%d,%d)-(%dx%d)\n"
0c00ad84: 0406f70c  .word 0x0406f70c
0c00ad88: 77696465  .asciz "wide format (max request %d tiles):\n"
0c00adb0: 286e4d61  .asciz "(nMaxTilesPerRequest >= 1) && (nMaxTilesPerRequest <= 8)"
0c00adec: 72657175  .asciz "requesting %d tiles (max %d at a time)\n"
0c00ae14: 0060091c  .word 0x0060091c
0c00ae18: 72657175  .asciz "requesting %d START groupxels\n"
0c00ae38: 72657175  .asciz "requesting %d MIDDLE groupxels %d times\n"
0c00ae64: e3a00000  mov r0, #0x0
0c00ae68: e52d0004  str r0, [sp, #-0x4]!
0c00ae6c: e58d0000  str r0, [sp, #0x0]
0c00ae70: e59d0000  ldr r0, [sp, #0x0]
0c00ae74: e2800001  add r0, r0, #0x1
0c00ae78: e58d0000  str r0, [sp, #0x0]
0c00ae7c: e3500003  cmp r0, #0x3
0c00ae80: bafffffa  blt 0x0c00ae70
0c00ae84: e3a00000  mov r0, #0x0
0c00ae88: e3a02e92  mov r2, #0x920
0c00ae8c: e2822606  add r2, r2, #0x600000
0c00ae90: e5941000  ldr r1, [r4, #0x0]
0c00ae94: e7820501  str r0, [r2, r1, lsl #10]
0c00ae98: e58d0000  str r0, [sp, #0x0]
0c00ae9c: e59d0000  ldr r0, [sp, #0x0]
0c00aea0: e2800001  add r0, r0, #0x1
0c00aea4: e58d0000  str r0, [sp, #0x0]
0c00aea8: e3500003  cmp r0, #0x3
0c00aeac: bafffffa  blt 0x0c00ae9c
0c00aeb0: e28dd004  add sp, sp, #0x4
0c00aeb4: e51f0a08  ldr r0, [pc, #-0xa08] =0x0403f2fc
0c00aeb8: e5900000  ldr r0, [r0, #0x0]
0c00aebc: e3100040  tst r0, #0x40
0c00aec0: 128f0f31  addne r0, pc, #0xc4
0c00aec4: 1b001b85  blne 0x0c011ce0 <fn_0c011ce0>
0c00aec8: e2450001  sub r0, r5, #0x1
0c00aecc: e2007007  and r7, r0, #0x7
0c00aed0: e0850105  add r0, r5, r5, lsl #2
0c00aed4: e3a010a0  mov r1, #0xa0
0c00aed8: e0715280  rsbs r5, r1, r0, lsl #5
0c00aedc: 42855003  addmi r5, r5, #0x3
0c00aee0: e1a05145  mov r5, r5, asr #2
0c00aee4: e5940004  ldr r0, [r4, #0x4]
0c00aee8: e594100c  ldr r1, [r4, #0xc]
0c00aeec: e0800001  add r0, r0, r1
0c00aef0: e2401001  sub r1, r0, #0x1
0c00aef4: e3a000a0  mov r0, #0xa0
0c00aef8: eb003242  bl 0x0c017808 <__rt_sdiv>
0c00aefc: e3510000  cmp r1, #0x0
0c00af00: b2811003  addlt r1, r1, #0x3
0c00af04: e0850141  add r0, r5, r1, asr #2
0c00af08: e3c71b0f  bic r1, r7, #0x3c00
0c00af0c: e3c11ffe  bic r1, r1, #0x3f8
0c00af10: e3a02901  mov r2, #0x4000
0c00af14: e2422008  sub r2, r2, #0x8
0c00af18: e0022180  and r2, r2, r0, lsl #3
0c00af1c: e1811002  orr r1, r1, r2
0c00af20: e3a02000  mov r2, #0x0
0c00af24: e52d2004  str r2, [sp, #-0x4]!
0c00af28: e58d2000  str r2, [sp, #0x0]
0c00af2c: e59d2000  ldr r2, [sp, #0x0]
0c00af30: e2822001  add r2, r2, #0x1
0c00af34: e58d2000  str r2, [sp, #0x0]
0c00af38: e3520003  cmp r2, #0x3
0c00af3c: bafffffa  blt 0x0c00af2c
0c00af40: e5942000  ldr r2, [r4, #0x0]
0c00af44: e59f3058  ldr r3, [pc, #0x58] =0x00600924
0c00af48: e7831502  str r1, [r3, r2, lsl #10]
0c00af4c: e3a01000  mov r1, #0x0
0c00af50: e58d1000  str r1, [sp, #0x0]
0c00af54: e59d1000  ldr r1, [sp, #0x0]
0c00af58: e2811001  add r1, r1, #0x1
0c00af5c: e58d1000  str r1, [sp, #0x0]
0c00af60: e3510003  cmp r1, #0x3
0c00af64: bafffffa  blt 0x0c00af54
0c00af68: e28dd004  add sp, sp, #0x4
0c00af6c: e51f1ac0  ldr r1, [pc, #-0xac0] =0x0403f2fc
0c00af70: e5911000  ldr r1, [r1, #0x0]
0c00af74: e3110040  tst r1, #0x40
0c00af78: 12801001  addne r1, r0, #0x1
0c00af7c: 128f0f09  addne r0, pc, #0x24
0c00af80: 1b001b56  blne 0x0c011ce0 <fn_0c011ce0>
0c00af84: e28dd004  add sp, sp, #0x4
0c00af88: ea000097  b 0x0c00b1ec
0c00af8c: 6e6f7420  .asciz "not requesting MIDDLE\n"
0c00afa4: 00600924  .word 0x00600924
0c00afa8: 72657175  .asciz "requesting %d END groupxels\n"
0c00afc8: e3a00000  mov r0, #0x0
0c00afcc: e58d0000  str r0, [sp, #0x0]
0c00afd0: e58d0000  str r0, [sp, #0x0]
0c00afd4: e59d0000  ldr r0, [sp, #0x0]
0c00afd8: e2800001  add r0, r0, #0x1
0c00afdc: e58d0000  str r0, [sp, #0x0]
0c00afe0: e3500003  cmp r0, #0x3
0c00afe4: bafffffa  blt 0x0c00afd4
0c00afe8: e3a00000  mov r0, #0x0
0c00afec: e5941000  ldr r1, [r4, #0x0]
0c00aff0: e51f21e4  ldr r2, [pc, #-0x1e4] =0x0060091c
0c00aff4: e7820501  str r0, [r2, r1, lsl #10]
0c00aff8: e3a01000  mov r1, #0x0
0c00affc: e58d1000  str r1, [sp, #0x0]
0c00b000: e59d1000  ldr r1, [sp, #0x0]
0c00b004: e2811001  add r1, r1, #0x1
0c00b008: e58d1000  str r1, [sp, #0x0]
0c00b00c: e3510003  cmp r1, #0x3
0c00b010: bafffffa  blt 0x0c00b000
0c00b014: e3a01000  mov r1, #0x0
0c00b018: e58d1000  str r1, [sp, #0x0]
0c00b01c: e58d1000  str r1, [sp, #0x0]
0c00b020: e59d1000  ldr r1, [sp, #0x0]
0c00b024: e2811001  add r1, r1, #0x1
0c00b028: e58d1000  str r1, [sp, #0x0]
0c00b02c: e3510003  cmp r1, #0x3
0c00b030: bafffffa  blt 0x0c00b020
0c00b034: e3a02e92  mov r2, #0x920
0c00b038: e2822606  add r2, r2, #0x600000
0c00b03c: e5941000  ldr r1, [r4, #0x0]
0c00b040: e7820501  str r0, [r2, r1, lsl #10]
0c00b044: e3a00000  mov r0, #0x0
0c00b048: e58d0000  str r0, [sp, #0x0]
0c00b04c: e59d0000  ldr r0, [sp, #0x0]
0c00b050: e2800001  add r0, r0, #0x1
0c00b054: e58d0000  str r0, [sp, #0x0]
0c00b058: e3500003  cmp r0, #0x3
0c00b05c: bafffffa  blt 0x0c00b04c
0c00b060: e5bd0004  ldr r0, [sp, #0x4]!
0c00b064: e2001007  and r1, r0, #0x7
0c00b068: e5940004  ldr r0, [r4, #0x4]
0c00b06c: e594200c  ldr r2, [r4, #0xc]
0c00b070: e0802002  add r2, r0, r2
0c00b074: e2522001  subs r2, r2, #0x1
0c00b078: 42822003  addmi r2, r2, #0x3
0c00b07c: e1a02142  mov r2, r2, asr #2
0c00b080: e3500000  cmp r0, #0x0
0c00b084: b2800003  addlt r0, r0, #0x3
0c00b088: e0420140  sub r0, r2, r0, asr #2
0c00b08c: e3c11b0f  bic r1, r1, #0x3c00
0c00b090: e3c11ffe  bic r1, r1, #0x3f8
0c00b094: e3a02901  mov r2, #0x4000
0c00b098: e2422008  sub r2, r2, #0x8
0c00b09c: e0022180  and r2, r2, r0, lsl #3
0c00b0a0: e1811002  orr r1, r1, r2
0c00b0a4: e3a02000  mov r2, #0x0
0c00b0a8: e52d2004  str r2, [sp, #-0x4]!
0c00b0ac: e58d2000  str r2, [sp, #0x0]
0c00b0b0: e59d2000  ldr r2, [sp, #0x0]
0c00b0b4: e2822001  add r2, r2, #0x1
0c00b0b8: e58d2000  str r2, [sp, #0x0]
0c00b0bc: e3520003  cmp r2, #0x3
0c00b0c0: bafffffa  blt 0x0c00b0b0
0c00b0c4: e5942000  ldr r2, [r4, #0x0]
0c00b0c8: e51f312c  ldr r3, [pc, #-0x12c] =0x00600924
0c00b0cc: e7831502  str r1, [r3, r2, lsl #10]
0c00b0d0: e3a01000  mov r1, #0x0
0c00b0d4: e58d1000  str r1, [sp, #0x0]
0c00b0d8: e59d1000  ldr r1, [sp, #0x0]
0c00b0dc: e2811001  add r1, r1, #0x1
0c00b0e0: e58d1000  str r1, [sp, #0x0]
0c00b0e4: e3510003  cmp r1, #0x3
0c00b0e8: bafffffa  blt 0x0c00b0d8
0c00b0ec: e28dd004  add sp, sp, #0x4
0c00b0f0: e51f1c44  ldr r1, [pc, #-0xc44] =0x0403f2fc
0c00b0f4: e5911000  ldr r1, [r1, #0x0]
0c00b0f8: e3110040  tst r1, #0x40
0c00b0fc: 12801001  addne r1, r0, #0x1
0c00b100: 124f0f58  subne r0, pc, #0x160
0c00b104: 1b001af5  blne 0x0c011ce0 <fn_0c011ce0>
0c00b108: ea000037  b 0x0c00b1ec
0c00b10c: e3a00000  mov r0, #0x0
0c00b110: e58d0000  str r0, [sp, #0x0]
0c00b114: e58d0000  str r0, [sp, #0x0]
0c00b118: e59d0000  ldr r0, [sp, #0x0]
0c00b11c: e2800001  add r0, r0, #0x1
0c00b120: e58d0000  str r0, [sp, #0x0]
0c00b124: e3500003  cmp r0, #0x3
0c00b128: bafffffa  blt 0x0c00b118
0c00b12c: e3a00000  mov r0, #0x0
0c00b130: e5941000  ldr r1, [r4, #0x0]
0c00b134: e51f2328  ldr r2, [pc, #-0x328] =0x0060091c
0c00b138: e7820501  str r0, [r2, r1, lsl #10]
0c00b13c: e3a01000  mov r1, #0x0
0c00b140: e58d1000  str r1, [sp, #0x0]
0c00b144: e59d1000  ldr r1, [sp, #0x0]
0c00b148: e2811001  add r1, r1, #0x1
0c00b14c: e58d1000  str r1, [sp, #0x0]
0c00b150: e3510003  cmp r1, #0x3
0c00b154: bafffffa  blt 0x0c00b144
0c00b158: e3a01000  mov r1, #0x0
0c00b15c: e58d1000  str r1, [sp, #0x0]
0c00b160: e58d1000  str r1, [sp, #0x0]
0c00b164: e59d1000  ldr r1, [sp, #0x0]
0c00b168: e2811001  add r1, r1, #0x1
0c00b16c: e58d1000  str r1, [sp, #0x0]
0c00b170: e3510003  cmp r1, #0x3
0c00b174: bafffffa  blt 0x0c00b164
0c00b178: e3a02e92  mov r2, #0x920
0c00b17c: e2822606  add r2, r2, #0x600000
0c00b180: e5941000  ldr r1, [r4, #0x0]
0c00b184: e7820501  str r0, [r2, r1, lsl #10]
0c00b188: e3a01000  mov r1, #0x0
0c00b18c: e58d1000  str r1, [sp, #0x0]
0c00b190: e59d1000  ldr r1, [sp, #0x0]
0c00b194: e2811001  add r1, r1, #0x1
0c00b198: e58d1000  str r1, [sp, #0x0]
0c00b19c: e3510003  cmp r1, #0x3
0c00b1a0: bafffffa  blt 0x0c00b190
0c00b1a4: e3a01000  mov r1, #0x0
0c00b1a8: e58d1000  str r1, [sp, #0x0]
0c00b1ac: e58d1000  str r1, [sp, #0x0]
0c00b1b0: e59d1000  ldr r1, [sp, #0x0]
0c00b1b4: e2811001  add r1, r1, #0x1
0c00b1b8: e58d1000  str r1, [sp, #0x0]
0c00b1bc: e3510003  cmp r1, #0x3
0c00b1c0: bafffffa  blt 0x0c00b1b0
0c00b1c4: e5941000  ldr r1, [r4, #0x0]
0c00b1c8: e51f222c  ldr r2, [pc, #-0x22c] =0x00600924
0c00b1cc: e7820501  str r0, [r2, r1, lsl #10]
0c00b1d0: e3a00000  mov r0, #0x0
0c00b1d4: e58d0000  str r0, [sp, #0x0]
0c00b1d8: e59d0000  ldr r0, [sp, #0x0]
0c00b1dc: e2800001  add r0, r0, #0x1
0c00b1e0: e58d0000  str r0, [sp, #0x0]
0c00b1e4: e3500003  cmp r0, #0x3
0c00b1e8: bafffffa  blt 0x0c00b1d8
0c00b1ec: e28dd004  add sp, sp, #0x4
0c00b1f0: e3a05000  mov r5, #0x0
0c00b1f4: e3560000  cmp r6, #0x0
0c00b1f8: da00009f  ble 0x0c00b47c
0c00b1fc: e24a0001  sub r0, r10, #0x1
0c00b200: e58d0048  str r0, [sp, #0x48]
0c00b204: e3a0060f  mov r0, #0xf00000
0c00b208: e59d102c  ldr r1, [sp, #0x2c]
0c00b20c: e000aa01  and r10, r0, r1, lsl #20
0c00b210: e24dd004  sub sp, sp, #0x4
0c00b214: e5940000  ldr r0, [r4, #0x0]
0c00b218: e3300001  teq r0, #0x1
0c00b21c: 1a000006  bne 0x0c00b23c
0c00b220: e59d105c  ldr r1, [sp, #0x5c]
0c00b224: e5911004  ldr r1, [r1, #0x4]
0c00b228: e591116c  ldr r1, [r1, #0x16c]
0c00b22c: e3110301  tst r1, #0x4000000
0c00b230: 159d004c  ldrne r0, [sp, #0x4c]
0c00b234: 10400005  subne r0, r0, r5
0c00b238: 1a000009  bne 0x0c00b264
0c00b23c: e59d1034  ldr r1, [sp, #0x34]
0c00b240: e3310005  teq r1, #0x5
0c00b244: 02050001  andeq r0, r5, #0x1
0c00b248: 0a000005  beq 0x0c00b264
0c00b24c: e51f1da0  ldr r1, [pc, #-0xda0] =0x0403f2fc
0c00b250: e0810100  add r0, r1, r0, lsl #2
0c00b254: e2800a03  add r0, r0, #0x3000
0c00b258: e5900004  ldr r0, [r0, #0x4]
0c00b25c: e0800205  add r0, r0, r5, lsl #4
0c00b260: e59000d0  ldr r0, [r0, #0xd0]
0c00b264: e59d102c  ldr r1, [sp, #0x2c]
0c00b268: e0000091  mul r0, r1, r0
0c00b26c: e5941008  ldr r1, [r4, #0x8]
0c00b270: e0510000  subs r0, r1, r0
0c00b274: e1a07000  mov r7, r0
0c00b278: 42800007  addmi r0, r0, #0x7
0c00b27c: e1a001c0  mov r0, r0, asr #3
0c00b280: e59d2040  ldr r2, [sp, #0x40]
0c00b284: e0010092  mul r1, r2, r0
0c00b288: e52d1004  str r1, [sp, #-0x4]!
0c00b28c: e3a000a0  mov r0, #0xa0
0c00b290: e5941004  ldr r1, [r4, #0x4]
0c00b294: eb00315b  bl 0x0c017808 <__rt_sdiv>
0c00b298: e49d1004  ldr r1, [sp], #0x4
0c00b29c: e0810000  add r0, r1, r0
0c00b2a0: e1a01007  mov r1, r7
0c00b2a4: e58d0000  str r0, [sp, #0x0]
0c00b2a8: e3a00050  mov r0, #0x50
0c00b2ac: eb003155  bl 0x0c017808 <__rt_sdiv>
0c00b2b0: e201007f  and r0, r1, #0x7f
0c00b2b4: e3a02601  mov r2, #0x100000
0c00b2b8: e2422080  sub r2, r2, #0x80
0c00b2bc: e41d1004  ldr r1, [sp], #-0x4
0c00b2c0: e0021381  and r1, r2, r1, lsl #7
0c00b2c4: e1800001  orr r0, r0, r1
0c00b2c8: e3c0060f  bic r0, r0, #0xf00000
0c00b2cc: e180000a  orr r0, r0, r10
0c00b2d0: e3a01000  mov r1, #0x0
0c00b2d4: e58d1000  str r1, [sp, #0x0]
0c00b2d8: e58d1000  str r1, [sp, #0x0]
0c00b2dc: e59d1000  ldr r1, [sp, #0x0]
0c00b2e0: e2811001  add r1, r1, #0x1
0c00b2e4: e58d1000  str r1, [sp, #0x0]
0c00b2e8: e3510003  cmp r1, #0x3
0c00b2ec: bafffffa  blt 0x0c00b2dc
0c00b2f0: e59d100c  ldr r1, [sp, #0xc]
0c00b2f4: e0851401  add r1, r5, r1, lsl #8
0c00b2f8: e3a02d25  mov r2, #0x940
0c00b2fc: e2822606  add r2, r2, #0x600000
0c00b300: e7820101  str r0, [r2, r1, lsl #2]
0c00b304: e3a02000  mov r2, #0x0
0c00b308: e58d2000  str r2, [sp, #0x0]
0c00b30c: e59d2000  ldr r2, [sp, #0x0]
0c00b310: e2822001  add r2, r2, #0x1
0c00b314: e58d2000  str r2, [sp, #0x0]
0c00b318: e3520003  cmp r2, #0x3
0c00b31c: bafffffa  blt 0x0c00b30c
0c00b320: e3a02000  mov r2, #0x0
0c00b324: e58d2000  str r2, [sp, #0x0]
0c00b328: e58d2000  str r2, [sp, #0x0]
0c00b32c: e59d2000  ldr r2, [sp, #0x0]
0c00b330: e2822001  add r2, r2, #0x1
0c00b334: e58d2000  str r2, [sp, #0x0]
0c00b338: e3520003  cmp r2, #0x3
0c00b33c: bafffffa  blt 0x0c00b32c
0c00b340: e3a02e96  mov r2, #0x960
0c00b344: e2822606  add r2, r2, #0x600000
0c00b348: e7820101  str r0, [r2, r1, lsl #2]
0c00b34c: e3a00000  mov r0, #0x0
0c00b350: e58d0000  str r0, [sp, #0x0]
0c00b354: e59d0000  ldr r0, [sp, #0x0]
0c00b358: e2800001  add r0, r0, #0x1
0c00b35c: e58d0000  str r0, [sp, #0x0]
0c00b360: e3500003  cmp r0, #0x3
0c00b364: bafffffa  blt 0x0c00b354
0c00b368: e28dd004  add sp, sp, #0x4
0c00b36c: e51f1ec0  ldr r1, [pc, #-0xec0] =0x0403f2fc
0c00b370: e5940000  ldr r0, [r4, #0x0]
0c00b374: e0810100  add r0, r1, r0, lsl #2
0c00b378: e2800a03  add r0, r0, #0x3000
0c00b37c: e5900004  ldr r0, [r0, #0x4]
0c00b380: e58d0048  str r0, [sp, #0x48]
0c00b384: e0800205  add r0, r0, r5, lsl #4
0c00b388: e59000d8  ldr r0, [r0, #0xd8]
0c00b38c: e3c0160f  bic r1, r0, #0xf00000
0c00b390: e3c11aff  bic r1, r1, #0xff000
0c00b394: e3a02401  mov r2, #0x1000000
0c00b398: e2422a01  sub r2, r2, #0x1000
0c00b39c: e5940010  ldr r0, [r4, #0x10]
0c00b3a0: e0020600  and r0, r2, r0, lsl #12
0c00b3a4: e1810000  orr r0, r1, r0
0c00b3a8: e2851001  add r1, r5, #0x1
0c00b3ac: e58d0038  str r0, [sp, #0x38]
0c00b3b0: e1a00006  mov r0, r6
0c00b3b4: e58d1044  str r1, [sp, #0x44]
0c00b3b8: eb003112  bl 0x0c017808 <__rt_sdiv>
0c00b3bc: e59d0048  ldr r0, [sp, #0x48]
0c00b3c0: e0800201  add r0, r0, r1, lsl #4
0c00b3c4: e59000d0  ldr r0, [r0, #0xd0]
0c00b3c8: e3a0140f  mov r1, #0xf000000
0c00b3cc: e0010c00  and r0, r1, r0, lsl #24
0c00b3d0: e59d1038  ldr r1, [sp, #0x38]
0c00b3d4: e3c1140f  bic r1, r1, #0xf000000
0c00b3d8: e1800001  orr r0, r0, r1
0c00b3dc: e3a01000  mov r1, #0x0
0c00b3e0: e52d1004  str r1, [sp, #-0x4]!
0c00b3e4: e58d1000  str r1, [sp, #0x0]
0c00b3e8: e59d1000  ldr r1, [sp, #0x0]
0c00b3ec: e2811001  add r1, r1, #0x1
0c00b3f0: e58d1000  str r1, [sp, #0x0]
0c00b3f4: e3510003  cmp r1, #0x3
0c00b3f8: bafffffa  blt 0x0c00b3e8
0c00b3fc: e59d1020  ldr r1, [sp, #0x20]
0c00b400: e0851181  add r1, r5, r1, lsl #3
0c00b404: e59d200c  ldr r2, [sp, #0xc]
0c00b408: e0811402  add r1, r1, r2, lsl #8
0c00b40c: e3a02d26  mov r2, #0x980
0c00b410: e2822606  add r2, r2, #0x600000
0c00b414: e7820101  str r0, [r2, r1, lsl #2]
0c00b418: e3a00000  mov r0, #0x0
0c00b41c: e58d0000  str r0, [sp, #0x0]
0c00b420: e59d0000  ldr r0, [sp, #0x0]
0c00b424: e2800001  add r0, r0, #0x1
0c00b428: e58d0000  str r0, [sp, #0x0]
0c00b42c: e3500003  cmp r0, #0x3
0c00b430: bafffffa  blt 0x0c00b420
0c00b434: e28dd004  add sp, sp, #0x4
0c00b438: e51f0f8c  ldr r0, [pc, #-0xf8c] =0x0403f2fc
0c00b43c: e5900000  ldr r0, [r0, #0x0]
0c00b440: e3100040  tst r0, #0x40
0c00b444: 0a000008  beq 0x0c00b46c
0c00b448: e1a02007  mov r2, r7
0c00b44c: e59d3030  ldr r3, [sp, #0x30]
0c00b450: e92d000c  stmdb sp!, {r2,r3}
0c00b454: e5943010  ldr r3, [r4, #0x10]
0c00b458: e1a01005  mov r1, r5
0c00b45c: e59d2024  ldr r2, [sp, #0x24]
0c00b460: e28f0f18  add r0, pc, #0x60
0c00b464: eb001a1d  bl 0x0c011ce0 <fn_0c011ce0>
0c00b468: e28dd008  add sp, sp, #0x8
0c00b46c: e28dd004  add sp, sp, #0x4
0c00b470: e59d5040  ldr r5, [sp, #0x40]
0c00b474: e1550006  cmp r5, r6
0c00b478: baffff64  blt 0x0c00b210
0c00b47c: e51f1fd0  ldr r1, [pc, #-0xfd0] =0x0403f2fc
0c00b480: e5943000  ldr r3, [r4, #0x0]
0c00b484: e0810103  add r0, r1, r3, lsl #2
0c00b488: e2800a03  add r0, r0, #0x3000
0c00b48c: e5900004  ldr r0, [r0, #0x4]
0c00b490: e59020a0  ldr r2, [r0, #0xa0]
0c00b494: e3520005  cmp r2, #0x5
0c00b498: 908ff102  addls pc, pc, r2, lsl #2
0c00b49c: ea000023  b 0x0c00b530
0c00b4a0: ea000016  b 0x0c00b500
0c00b4a4: ea000002  b 0x0c00b4b4
0c00b4a8: ea000016  b 0x0c00b508
0c00b4ac: ea000019  b 0x0c00b518
0c00b4b0: ea000012  b 0x0c00b500
0c00b4b4: e3a02000  mov r2, #0x0
0c00b4b8: e58d201c  str r2, [sp, #0x1c]
0c00b4bc: e3a02001  mov r2, #0x1
0c00b4c0: e58d2020  str r2, [sp, #0x20]
0c00b4c4: ea000018  b 0x0c00b52c
0c00b4c8: 6669656c  .asciz "field %d bank %d has %d active lines, y=%d, yskip=%d\n"
0c00b500: e3a02000  mov r2, #0x0
0c00b504: ea000004  b 0x0c00b51c
0c00b508: e3a02000  mov r2, #0x0
0c00b50c: e58d201c  str r2, [sp, #0x1c]
0c00b510: e3a02001  mov r2, #0x1
0c00b514: ea000002  b 0x0c00b524
0c00b518: e3a02001  mov r2, #0x1
0c00b51c: e58d201c  str r2, [sp, #0x1c]
0c00b520: e3a02000  mov r2, #0x0
0c00b524: e58d2020  str r2, [sp, #0x20]
0c00b528: e3a02000  mov r2, #0x0
0c00b52c: e58d2024  str r2, [sp, #0x24]
0c00b530: e3a02e91  mov r2, #0x910
0c00b534: e2822606  add r2, r2, #0x600000
0c00b538: e7923503  ldr r3, [r2, r3, lsl #10]
0c00b53c: e3c33060  bic r3, r3, #0x60
0c00b540: e59dc054  ldr r12, [sp, #0x54]
0c00b544: e5bce428  ldr lr, [r12, #0x428]!
0c00b548: e3a0c060  mov r12, #0x60
0c00b54c: e00cc28e  and r12, r12, lr, lsl #5
0c00b550: e183300c  orr r3, r3, r12
0c00b554: e3c33080  bic r3, r3, #0x80
0c00b558: e590016c  ldr r0, [r0, #0x16c]
0c00b55c: e3a0c001  mov r12, #0x1
0c00b560: e00ccf40  and r12, r12, r0, asr #30
0c00b564: e3a00080  mov r0, #0x80
0c00b568: e000038c  and r0, r0, r12, lsl #7
0c00b56c: e1830000  orr r0, r3, r0
0c00b570: e3c00c01  bic r0, r0, #0x100
0c00b574: e3a0cc01  mov r12, #0x100
0c00b578: e59d3020  ldr r3, [sp, #0x20]
0c00b57c: e00c3403  and r3, r12, r3, lsl #8
0c00b580: e1800003  orr r0, r0, r3
0c00b584: e3c00c02  bic r0, r0, #0x200
0c00b588: e3a0cc02  mov r12, #0x200
0c00b58c: e59d3024  ldr r3, [sp, #0x24]
0c00b590: e00c3483  and r3, r12, r3, lsl #9
0c00b594: e1800003  orr r0, r0, r3
0c00b598: e3c00b01  bic r0, r0, #0x400
0c00b59c: e3a0cb01  mov r12, #0x400
0c00b5a0: e59d301c  ldr r3, [sp, #0x1c]
0c00b5a4: e00c3503  and r3, r12, r3, lsl #10
0c00b5a8: e1800003  orr r0, r0, r3
0c00b5ac: e3a03000  mov r3, #0x0
0c00b5b0: e52d3004  str r3, [sp, #-0x4]!
0c00b5b4: e58d3000  str r3, [sp, #0x0]
0c00b5b8: e59d3000  ldr r3, [sp, #0x0]
0c00b5bc: e2833001  add r3, r3, #0x1
0c00b5c0: e58d3000  str r3, [sp, #0x0]
0c00b5c4: e3530003  cmp r3, #0x3
0c00b5c8: bafffffa  blt 0x0c00b5b8
0c00b5cc: e59d3008  ldr r3, [sp, #0x8]
0c00b5d0: e7820503  str r0, [r2, r3, lsl #10]
0c00b5d4: e3a00000  mov r0, #0x0
0c00b5d8: e58d0000  str r0, [sp, #0x0]
0c00b5dc: e59d0000  ldr r0, [sp, #0x0]
0c00b5e0: e2800001  add r0, r0, #0x1
0c00b5e4: e58d0000  str r0, [sp, #0x0]
0c00b5e8: e3500003  cmp r0, #0x3
0c00b5ec: bafffffa  blt 0x0c00b5dc
0c00b5f0: e28dd004  add sp, sp, #0x4
0c00b5f4: e5942000  ldr r2, [r4, #0x0]
0c00b5f8: e59f0084  ldr r0, [pc, #0x84] =0x00600818
0c00b5fc: e7902502  ldr r2, [r0, r2, lsl #10]
0c00b600: e3c22020  bic r2, r2, #0x20
0c00b604: e3823010  orr r3, r2, #0x10
0c00b608: e3a02020  mov r2, #0x20
0c00b60c: e59dc018  ldr r12, [sp, #0x18]
0c00b610: e002228c  and r2, r2, r12, lsl #5
0c00b614: e1832002  orr r2, r3, r2
0c00b618: e3a03000  mov r3, #0x0
0c00b61c: e52d3004  str r3, [sp, #-0x4]!
0c00b620: e58d3000  str r3, [sp, #0x0]
0c00b624: e59d3000  ldr r3, [sp, #0x0]
0c00b628: e2833001  add r3, r3, #0x1
0c00b62c: e58d3000  str r3, [sp, #0x0]
0c00b630: e3530003  cmp r3, #0x3
0c00b634: bafffffa  blt 0x0c00b624
0c00b638: e59d3008  ldr r3, [sp, #0x8]
0c00b63c: e7802503  str r2, [r0, r3, lsl #10]
0c00b640: e3a00000  mov r0, #0x0
0c00b644: e58d0000  str r0, [sp, #0x0]
0c00b648: e59d0000  ldr r0, [sp, #0x0]
0c00b64c: e2800001  add r0, r0, #0x1
0c00b650: e58d0000  str r0, [sp, #0x0]
0c00b654: e3500003  cmp r0, #0x3
0c00b658: bafffffa  blt 0x0c00b648
0c00b65c: e28dd004  add sp, sp, #0x4
0c00b660: e59d0018  ldr r0, [sp, #0x18]
0c00b664: e2200001  eor r0, r0, #0x1
0c00b668: e2000001  and r0, r0, #0x1
0c00b66c: e5942000  ldr r2, [r4, #0x0]
0c00b670: e0811102  add r1, r1, r2, lsl #2
0c00b674: e2811a03  add r1, r1, #0x3000
0c00b678: e5911004  ldr r1, [r1, #0x4]
0c00b67c: e5a10150  str r0, [r1, #0x150]!
0c00b680: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00b684: 00600818  .word 0x00600818
fn_0c00b688:
0c00b688: e1a0c00d  mov r12, sp
0c00b68c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00b690: e24cb004  sub r11, r12, #0x4
0c00b694: e1a04000  mov r4, r0
0c00b698: e24dd05c  sub sp, sp, #0x5c
0c00b69c: e3a00000  mov r0, #0x0
0c00b6a0: e58d0050  str r0, [sp, #0x50]
0c00b6a4: e58d004c  str r0, [sp, #0x4c]
0c00b6a8: e58d0048  str r0, [sp, #0x48]
0c00b6ac: e58d0044  str r0, [sp, #0x44]
0c00b6b0: e58d0040  str r0, [sp, #0x40]
0c00b6b4: e58d003c  str r0, [sp, #0x3c]
0c00b6b8: e58d0038  str r0, [sp, #0x38]
0c00b6bc: e58d0034  str r0, [sp, #0x34]
0c00b6c0: e58d0030  str r0, [sp, #0x30]
0c00b6c4: e58d002c  str r0, [sp, #0x2c]
0c00b6c8: e3a00000  mov r0, #0x0
0c00b6cc: e58d0028  str r0, [sp, #0x28]
0c00b6d0: e58d0024  str r0, [sp, #0x24]
0c00b6d4: e58d0020  str r0, [sp, #0x20]
0c00b6d8: e58d001c  str r0, [sp, #0x1c]
0c00b6dc: e58d0018  str r0, [sp, #0x18]
0c00b6e0: e58d0014  str r0, [sp, #0x14]
0c00b6e4: e58d0010  str r0, [sp, #0x10]
0c00b6e8: e58d000c  str r0, [sp, #0xc]
0c00b6ec: e58d0008  str r0, [sp, #0x8]
0c00b6f0: e58d0000  str r0, [sp, #0x0]
0c00b6f4: e5941000  ldr r1, [r4, #0x0]
0c00b6f8: e331001e  teq r1, #0x1e
0c00b6fc: 03a05020  moveq r5, #0x20
0c00b700: 11a05001  movne r5, r1
0c00b704: e59f01cc  ldr r0, [pc, #0x1cc] =0x0403f2fc
0c00b708: e0801101  add r1, r0, r1, lsl #2
0c00b70c: e2811a03  add r1, r1, #0x3000
0c00b710: e5911004  ldr r1, [r1, #0x4]
0c00b714: e2812050  add r2, r1, #0x50
0c00b718: e284e004  add lr, r4, #0x4
0c00b71c: e1a0100e  mov r1, lr
0c00b720: e8be1008  ldmia lr!, {r3,r12}
0c00b724: e8a21008  stmia r2!, {r3,r12}
0c00b728: e89e1008  ldmia lr, {r3,r12}
0c00b72c: e8821008  stmia r2, {r3,r12}
0c00b730: e594201c  ldr r2, [r4, #0x1c]
0c00b734: e3320000  teq r2, #0x0
0c00b738: 1a000008  bne 0x0c00b760
0c00b73c: e5942000  ldr r2, [r4, #0x0]
0c00b740: e0802102  add r2, r0, r2, lsl #2
0c00b744: e2822a03  add r2, r2, #0x3000
0c00b748: e5922004  ldr r2, [r2, #0x4]
0c00b74c: e2822060  add r2, r2, #0x60
0c00b750: e8b11008  ldmia r1!, {r3,r12}
0c00b754: e8a21008  stmia r2!, {r3,r12}
0c00b758: e8911008  ldmia r1, {r3,r12}
0c00b75c: e8821008  stmia r2, {r3,r12}
0c00b760: e594100c  ldr r1, [r4, #0xc]
0c00b764: e2811003  add r1, r1, #0x3
0c00b768: e3c11003  bic r1, r1, #0x3
0c00b76c: e58d1054  str r1, [sp, #0x54]
0c00b770: e594a010  ldr r10, [r4, #0x10]
0c00b774: e59f115c  ldr r1, [pc, #0x15c] =0x0403f2fc
0c00b778: e5940000  ldr r0, [r4, #0x0]
0c00b77c: e0810100  add r0, r1, r0, lsl #2
0c00b780: e2800a03  add r0, r0, #0x3000
0c00b784: e5900004  ldr r0, [r0, #0x4]
0c00b788: e5901080  ldr r1, [r0, #0x80]
0c00b78c: e2811003  add r1, r1, #0x3
0c00b790: e3c16003  bic r6, r1, #0x3
0c00b794: e3560000  cmp r6, #0x0
0c00b798: e5b07084  ldr r7, [r0, #0x84]!
0c00b79c: c3570000  cmpgt r7, #0x0
0c00b7a0: ca000003  bgt 0x0c00b7b4
0c00b7a4: e28f1f4c  add r1, pc, #0x130
0c00b7a8: e28f0f4f  add r0, pc, #0x13c
0c00b7ac: e3a0205c  mov r2, #0x5c
0c00b7b0: eb001d50  bl 0x0c012cf8 <fn_0c012cf8>
0c00b7b4: e59f011c  ldr r0, [pc, #0x11c] =0x0403f2fc
0c00b7b8: e5900000  ldr r0, [r0, #0x0]
0c00b7bc: e3100c02  tst r0, #0x200
0c00b7c0: 0a00000c  beq 0x0c00b7f8
0c00b7c4: e1a03007  mov r3, r7
0c00b7c8: e1a02006  mov r2, r6
0c00b7cc: e1a0100a  mov r1, r10
0c00b7d0: e92d000e  stmdb sp!, {r1,r2,r3}
0c00b7d4: e594001c  ldr r0, [r4, #0x1c]
0c00b7d8: e3300000  teq r0, #0x0
0c00b7dc: 028f1f49  addeq r1, pc, #0x124
0c00b7e0: 128f1f49  addne r1, pc, #0x124
0c00b7e4: e59d3060  ldr r3, [sp, #0x60]
0c00b7e8: e5942000  ldr r2, [r4, #0x0]
0c00b7ec: e28f0f48  add r0, pc, #0x120
0c00b7f0: eb00193a  bl 0x0c011ce0 <fn_0c011ce0>
0c00b7f4: e28dd00c  add sp, sp, #0xc
0c00b7f8: e59f00d8  ldr r0, [pc, #0xd8] =0x0403f2fc
0c00b7fc: e5942000  ldr r2, [r4, #0x0]
0c00b800: e0800102  add r0, r0, r2, lsl #2
0c00b804: e2800a03  add r0, r0, #0x3000
0c00b808: e5900004  ldr r0, [r0, #0x4]
0c00b80c: e590104c  ldr r1, [r0, #0x4c]
0c00b810: e1310002  teq r1, r2
0c00b814: 03a02000  moveq r2, #0x0
0c00b818: 13a02001  movne r2, #0x1
0c00b81c: e58d2004  str r2, [sp, #0x4]
0c00b820: e3320000  teq r2, #0x0
0c00b824: 0a000008  beq 0x0c00b84c
0c00b828: e59f20a8  ldr r2, [pc, #0xa8] =0x0403f2fc
0c00b82c: e0821101  add r1, r2, r1, lsl #2
0c00b830: e2811a03  add r1, r1, #0x3000
0c00b834: e5911004  ldr r1, [r1, #0x4]
0c00b838: e59110d4  ldr r1, [r1, #0xd4]
0c00b83c: e3510000  cmp r1, #0x0
0c00b840: d3a01000  movle r1, #0x0
0c00b844: c3a01001  movgt r1, #0x1
0c00b848: e58d1000  str r1, [sp, #0x0]
0c00b84c: e59d1054  ldr r1, [sp, #0x54]
0c00b850: e1560001  cmp r6, r1
0c00b854: da000045  ble 0x0c00b970
0c00b858: e3560002  cmp r6, #0x2
0c00b85c: aa000003  bge 0x0c00b870
0c00b860: e1a01006  mov r1, r6
0c00b864: e28f0f36  add r0, pc, #0xd8
0c00b868: eb00191c  bl 0x0c011ce0 <fn_0c011ce0>
0c00b86c: e3a06002  mov r6, #0x2
0c00b870: e59d0054  ldr r0, [sp, #0x54]
0c00b874: e2400001  sub r0, r0, #0x1
0c00b878: e1a01a00  mov r1, r0, lsl #20
0c00b87c: e2460001  sub r0, r6, #0x1
0c00b880: eb002fe0  bl 0x0c017808 <__rt_sdiv>
0c00b884: e1a01080  mov r1, r0, lsl #1
0c00b888: e58d103c  str r1, [sp, #0x3c]
0c00b88c: e1a02601  mov r2, r1, lsl #12
0c00b890: e1a02622  mov r2, r2, lsr #12
0c00b894: e3a01601  mov r1, #0x100000
0c00b898: e0412002  sub r2, r1, r2
0c00b89c: e58d2040  str r2, [sp, #0x40]
0c00b8a0: e3500601  cmp r0, #0x100000
0c00b8a4: e58d2038  str r2, [sp, #0x38]
0c00b8a8: a3a02001  movge r2, #0x1
0c00b8ac: a58d2050  strge r2, [sp, #0x50]
0c00b8b0: e3a02601  mov r2, #0x100000
0c00b8b4: e1a00600  mov r0, r0, lsl #12
0c00b8b8: e1a00620  mov r0, r0, lsr #12
0c00b8bc: e58d0034  str r0, [sp, #0x34]
0c00b8c0: e0410000  sub r0, r1, r0
0c00b8c4: e58d0028  str r0, [sp, #0x28]
0c00b8c8: e58d202c  str r2, [sp, #0x2c]
0c00b8cc: e3a00002  mov r0, #0x2
0c00b8d0: e58d0044  str r0, [sp, #0x44]
0c00b8d4: ea00006f  b 0x0c00ba98
0c00b8d8: 0403f2fc  .word 0x0403f2fc
0c00b8dc: 76696465  .asciz "video_resize.c"
0c00b8ec: 28776964  .asciz "(width > 0) && (height > 0)"
0c00b908: 00000000  andeq r0, r0, r0
0c00b90c: 626f756e  .asciz "bound "
0c00b914: 72657369  .asciz "resize %schannel %d from (%dx%d) to (%dx%d)\n"
0c00b944: 496c6c65  .asciz "Illegal x output size %d, clipping to 2\n"
0c00b970: aa000048  bge 0x0c00ba98
0c00b974: e59000c4  ldr r0, [r0, #0xc4]
0c00b978: e52d0004  str r0, [sp, #-0x4]!
0c00b97c: e59d0058  ldr r0, [sp, #0x58]
0c00b980: e1a01080  mov r1, r0, lsl #1
0c00b984: e1a00006  mov r0, r6
0c00b988: eb002f9e  bl 0x0c017808 <__rt_sdiv>
0c00b98c: e3a01001  mov r1, #0x1
0c00b990: e0610080  rsb r0, r1, r0, lsl #1
0c00b994: e59d1000  ldr r1, [sp, #0x0]
0c00b998: e3510000  cmp r1, #0x0
0c00b99c: da000002  ble 0x0c00b9ac
0c00b9a0: e59d1000  ldr r1, [sp, #0x0]
0c00b9a4: e1510000  cmp r1, r0
0c00b9a8: b59d0000  ldrlt r0, [sp, #0x0]
0c00b9ac: e2801001  add r1, r0, #0x1
0c00b9b0: e58d105c  str r1, [sp, #0x5c]
0c00b9b4: e0000191  mul r0, r1, r1
0c00b9b8: e3a01501  mov r1, #0x400000
0c00b9bc: eb002f91  bl 0x0c017808 <__rt_sdiv>
0c00b9c0: e58d0040  str r0, [sp, #0x40]
0c00b9c4: e3a01602  mov r1, #0x200000
0c00b9c8: e59d005c  ldr r0, [sp, #0x5c]
0c00b9cc: eb002f8d  bl 0x0c017808 <__rt_sdiv>
0c00b9d0: e58d0044  str r0, [sp, #0x44]
0c00b9d4: e1a00006  mov r0, r6
0c00b9d8: e59d1058  ldr r1, [sp, #0x58]
0c00b9dc: eb002f89  bl 0x0c017808 <__rt_sdiv>
0c00b9e0: e0000096  mul r0, r6, r0
0c00b9e4: e59d1058  ldr r1, [sp, #0x58]
0c00b9e8: e1300001  teq r0, r1
0c00b9ec: e59d0040  ldr r0, [sp, #0x40]
0c00b9f0: e1a01140  mov r1, r0, asr #2
0c00b9f4: e59d0058  ldr r0, [sp, #0x58]
0c00b9f8: e0010190  mul r1, r0, r1
0c00b9fc: 1a000005  bne 0x0c00ba18
0c00ba00: e1a00006  mov r0, r6
0c00ba04: eb002f7f  bl 0x0c017808 <__rt_sdiv>
0c00ba08: e1a00180  mov r0, r0, lsl #3
0c00ba0c: e1a01006  mov r1, r6
0c00ba10: e58d003c  str r0, [sp, #0x3c]
0c00ba14: ea000004  b 0x0c00ba2c
0c00ba18: e2860001  add r0, r6, #0x1
0c00ba1c: eb002f79  bl 0x0c017808 <__rt_sdiv>
0c00ba20: e1a00180  mov r0, r0, lsl #3
0c00ba24: e3a01000  mov r1, #0x0
0c00ba28: e58d003c  str r0, [sp, #0x3c]
0c00ba2c: e59d0044  ldr r0, [sp, #0x44]
0c00ba30: e59d203c  ldr r2, [sp, #0x3c]
0c00ba34: e040e002  sub lr, r0, r2
0c00ba38: e1a0c000  mov r12, r0
0c00ba3c: e08e2000  add r2, lr, r0
0c00ba40: e0822fa2  add r2, r2, r2, lsr #31
0c00ba44: e1a020c2  mov r2, r2, asr #1
0c00ba48: e59d003c  ldr r0, [sp, #0x3c]
0c00ba4c: e0800fa0  add r0, r0, r0, lsr #31
0c00ba50: e1a000c0  mov r0, r0, asr #1
0c00ba54: e08ee001  add lr, lr, r1
0c00ba58: e08cc001  add r12, r12, r1
0c00ba5c: e0823001  add r3, r2, r1
0c00ba60: e0821001  add r1, r2, r1
0c00ba64: e58d102c  str r1, [sp, #0x2c]
0c00ba68: e58dc030  str r12, [sp, #0x30]
0c00ba6c: e58d3034  str r3, [sp, #0x34]
0c00ba70: e58de038  str lr, [sp, #0x38]
0c00ba74: e59d1044  ldr r1, [sp, #0x44]
0c00ba78: e59d2040  ldr r2, [sp, #0x40]
0c00ba7c: e0411002  sub r1, r1, r2
0c00ba80: e0400002  sub r0, r0, r2
0c00ba84: e58d003c  str r0, [sp, #0x3c]
0c00ba88: e3a00001  mov r0, #0x1
0c00ba8c: e58d1044  str r1, [sp, #0x44]
0c00ba90: e58d0048  str r0, [sp, #0x48]
0c00ba94: e28dd004  add sp, sp, #0x4
0c00ba98: e157000a  cmp r7, r10
0c00ba9c: da00003b  ble 0x0c00bb90
0c00baa0: e3570002  cmp r7, #0x2
0c00baa4: aa000003  bge 0x0c00bab8
0c00baa8: e1a01007  mov r1, r7
0c00baac: e28f0f22  add r0, pc, #0x88
0c00bab0: eb00188a  bl 0x0c011ce0 <fn_0c011ce0>
0c00bab4: e3a07002  mov r7, #0x2
0c00bab8: e24a0001  sub r0, r10, #0x1
0c00babc: e1a01a00  mov r1, r0, lsl #20
0c00bac0: e2470001  sub r0, r7, #0x1
0c00bac4: eb002f4f  bl 0x0c017808 <__rt_sdiv>
0c00bac8: e58d001c  str r0, [sp, #0x1c]
0c00bacc: e2600601  rsb r0, r0, #0x100000
0c00bad0: e58d0020  str r0, [sp, #0x20]
0c00bad4: e58d0018  str r0, [sp, #0x18]
0c00bad8: e3a00601  mov r0, #0x100000
0c00badc: e58d0010  str r0, [sp, #0x10]
0c00bae0: e58d0008  str r0, [sp, #0x8]
0c00bae4: e51f1214  ldr r1, [pc, #-0x214] =0x0403f2fc
0c00bae8: e5940000  ldr r0, [r4, #0x0]
0c00baec: e0810100  add r0, r1, r0, lsl #2
0c00baf0: e2800a03  add r0, r0, #0x3000
0c00baf4: e5900004  ldr r0, [r0, #0x4]
0c00baf8: e59000c0  ldr r0, [r0, #0xc0]
0c00bafc: e3500004  cmp r0, #0x4
0c00bb00: 908ff100  addls pc, pc, r0, lsl #2
0c00bb04: ea00001f  b 0x0c00bb88
0c00bb08: ea00001e  b 0x0c00bb88
0c00bb0c: ea00001d  b 0x0c00bb88
0c00bb10: ea00001c  b 0x0c00bb88
0c00bb14: ea000013  b 0x0c00bb68
0c00bb18: e59d001c  ldr r0, [sp, #0x1c]
0c00bb1c: e0800fa0  add r0, r0, r0, lsr #31
0c00bb20: e1a000c0  mov r0, r0, asr #1
0c00bb24: e1a01000  mov r1, r0
0c00bb28: e58d100c  str r1, [sp, #0xc]
0c00bb2c: e59d1008  ldr r1, [sp, #0x8]
0c00bb30: e0410000  sub r0, r1, r0
0c00bb34: e58d0008  str r0, [sp, #0x8]
0c00bb38: ea000012  b 0x0c00bb88
0c00bb3c: 496c6c65  .asciz "Illegal y output size %d, clipping to 2\n"
0c00bb68: e59d001c  ldr r0, [sp, #0x1c]
0c00bb6c: e0800fa0  add r0, r0, r0, lsr #31
0c00bb70: e1a000c0  mov r0, r0, asr #1
0c00bb74: e1a01000  mov r1, r0
0c00bb78: e58d1014  str r1, [sp, #0x14]
0c00bb7c: e59d1010  ldr r1, [sp, #0x10]
0c00bb80: e0410000  sub r0, r1, r0
0c00bb84: e58d0010  str r0, [sp, #0x10]
0c00bb88: e3a00002  mov r0, #0x2
0c00bb8c: ea00003b  b 0x0c00bc80
0c00bb90: ba000002  blt 0x0c00bba0
0c00bb94: e59d0044  ldr r0, [sp, #0x44]
0c00bb98: e3300001  teq r0, #0x1
0c00bb9c: 1a000033  bne 0x0c00bc70
0c00bba0: e51f12d0  ldr r1, [pc, #-0x2d0] =0x0403f2fc
0c00bba4: e5940000  ldr r0, [r4, #0x0]
0c00bba8: e0810100  add r0, r1, r0, lsl #2
0c00bbac: e2800a03  add r0, r0, #0x3000
0c00bbb0: e5900004  ldr r0, [r0, #0x4]
0c00bbb4: e5b060c8  ldr r6, [r0, #0xc8]!
0c00bbb8: e59d0000  ldr r0, [sp, #0x0]
0c00bbbc: e3300000  teq r0, #0x0
0c00bbc0: 0a000002  beq 0x0c00bbd0
0c00bbc4: e1a0a0ca  mov r10, r10, asr #1
0c00bbc8: e157000a  cmp r7, r10
0c00bbcc: c1a0a007  movgt r10, r7
0c00bbd0: e1a0108a  mov r1, r10, lsl #1
0c00bbd4: e1a00007  mov r0, r7
0c00bbd8: eb002f0a  bl 0x0c017808 <__rt_sdiv>
0c00bbdc: e3a01001  mov r1, #0x1
0c00bbe0: e0610080  rsb r0, r1, r0, lsl #1
0c00bbe4: e3560000  cmp r6, #0x0
0c00bbe8: da000001  ble 0x0c00bbf4
0c00bbec: e1560000  cmp r6, r0
0c00bbf0: b1a00006  movlt r0, r6
0c00bbf4: e2806001  add r6, r0, #0x1
0c00bbf8: e0000696  mul r0, r6, r6
0c00bbfc: e3a01501  mov r1, #0x400000
0c00bc00: eb002f00  bl 0x0c017808 <__rt_sdiv>
0c00bc04: e58d001c  str r0, [sp, #0x1c]
0c00bc08: e1a00006  mov r0, r6
0c00bc0c: e3a01602  mov r1, #0x200000
0c00bc10: eb002efc  bl 0x0c017808 <__rt_sdiv>
0c00bc14: e1a06000  mov r6, r0
0c00bc18: e59d001c  ldr r0, [sp, #0x1c]
0c00bc1c: e1a00140  mov r0, r0, asr #2
0c00bc20: e001009a  mul r1, r10, r0
0c00bc24: e1a00007  mov r0, r7
0c00bc28: eb002ef6  bl 0x0c017808 <__rt_sdiv>
0c00bc2c: e1a00180  mov r0, r0, lsl #3
0c00bc30: e0461000  sub r1, r6, r0
0c00bc34: e58d1014  str r1, [sp, #0x14]
0c00bc38: e58d6010  str r6, [sp, #0x10]
0c00bc3c: e0811006  add r1, r1, r6
0c00bc40: e0811fa1  add r1, r1, r1, lsr #31
0c00bc44: e1a010c1  mov r1, r1, asr #1
0c00bc48: e58d100c  str r1, [sp, #0xc]
0c00bc4c: e58d1008  str r1, [sp, #0x8]
0c00bc50: e59d101c  ldr r1, [sp, #0x1c]
0c00bc54: e0461001  sub r1, r6, r1
0c00bc58: e58d1020  str r1, [sp, #0x20]
0c00bc5c: e59d101c  ldr r1, [sp, #0x1c]
0c00bc60: e0400001  sub r0, r0, r1
0c00bc64: e58d0018  str r0, [sp, #0x18]
0c00bc68: e3a00001  mov r0, #0x1
0c00bc6c: ea000003  b 0x0c00bc80
0c00bc70: e59d0004  ldr r0, [sp, #0x4]
0c00bc74: e3300000  teq r0, #0x0
0c00bc78: 0a000001  beq 0x0c00bc84
0c00bc7c: e3a00003  mov r0, #0x3
0c00bc80: e58d0024  str r0, [sp, #0x24]
0c00bc84: e59d0034  ldr r0, [sp, #0x34]
0c00bc88: e59d1040  ldr r1, [sp, #0x40]
0c00bc8c: e1500001  cmp r0, r1
0c00bc90: c3a00001  movgt r0, #0x1
0c00bc94: c58d004c  strgt r0, [sp, #0x4c]
0c00bc98: e59d0030  ldr r0, [sp, #0x30]
0c00bc9c: e59d1040  ldr r1, [sp, #0x40]
0c00bca0: e1500001  cmp r0, r1
0c00bca4: c3a00001  movgt r0, #0x1
0c00bca8: c58d0048  strgt r0, [sp, #0x48]
0c00bcac: e5940000  ldr r0, [r4, #0x0]
0c00bcb0: e59f10b4  ldr r1, [pc, #0xb4] =0x00600818
0c00bcb4: e7911500  ldr r1, [r1, r0, lsl #10]
0c00bcb8: e211a001  ands r10, r1, #0x1
0c00bcbc: e59f10ac  ldr r1, [pc, #0xac] =0x00600804
0c00bcc0: e7916500  ldr r6, [r1, r0, lsl #10]
0c00bcc4: 0a00003b  beq 0x0c00bdb8
0c00bcc8: e3a00000  mov r0, #0x0
0c00bccc: e52d0004  str r0, [sp, #-0x4]!
0c00bcd0: e58d0000  str r0, [sp, #0x0]
0c00bcd4: e59d0000  ldr r0, [sp, #0x0]
0c00bcd8: e2800001  add r0, r0, #0x1
0c00bcdc: e58d0000  str r0, [sp, #0x0]
0c00bce0: e3500003  cmp r0, #0x3
0c00bce4: bafffffa  blt 0x0c00bcd4
0c00bce8: e3a00000  mov r0, #0x0
0c00bcec: e59f1080  ldr r1, [pc, #0x80] =0x00600808
0c00bcf0: e7810505  str r0, [r1, r5, lsl #10]
0c00bcf4: e58d0000  str r0, [sp, #0x0]
0c00bcf8: e59d0000  ldr r0, [sp, #0x0]
0c00bcfc: e2800001  add r0, r0, #0x1
0c00bd00: e58d0000  str r0, [sp, #0x0]
0c00bd04: e3500003  cmp r0, #0x3
0c00bd08: bafffffa  blt 0x0c00bcf8
0c00bd0c: e28dd004  add sp, sp, #0x4
0c00bd10: e594001c  ldr r0, [r4, #0x1c]
0c00bd14: e3300000  teq r0, #0x0
0c00bd18: 0a000023  beq 0x0c00bdac
0c00bd1c: e51f144c  ldr r1, [pc, #-0x44c] =0x0403f2fc
0c00bd20: e5940000  ldr r0, [r4, #0x0]
0c00bd24: e0811100  add r1, r1, r0, lsl #2
0c00bd28: e2811a03  add r1, r1, #0x3000
0c00bd2c: e5911004  ldr r1, [r1, #0x4]
0c00bd30: e5911170  ldr r1, [r1, #0x170]
0c00bd34: e3310000  teq r1, #0x0
0c00bd38: 0a00001b  beq 0x0c00bdac
0c00bd3c: e3500000  cmp r0, #0x0
0c00bd40: ba000001  blt 0x0c00bd4c
0c00bd44: e3500007  cmp r0, #0x7
0c00bd48: da000004  ble 0x0c00bd60
0c00bd4c: e59f1024  ldr r1, [pc, #0x24] =0x0c00b8dc
0c00bd50: e28f0f09  add r0, pc, #0x24
0c00bd54: e3a02056  mov r2, #0x56
0c00bd58: e2822c01  add r2, r2, #0x100
0c00bd5c: eb001be5  bl 0x0c012cf8 <fn_0c012cf8>
0c00bd60: e3c60003  bic r0, r6, #0x3
0c00bd64: e3800002  orr r0, r0, #0x2
0c00bd68: ea000013  b 0x0c00bdbc
0c00bd6c: 00600818  .word 0x00600818
0c00bd70: 00600804  .word 0x00600804
0c00bd74: 00600808  .word 0x00600808
0c00bd78: 0c00b8dc  .word 0x0c00b8dc
0c00bd7c: 28702d3e  .asciz "(p->nChannelNum >= 0) && (p->nChannelNum <= 7)"
0c00bdac: e3c60003  bic r0, r6, #0x3
0c00bdb0: e3800001  orr r0, r0, #0x1
0c00bdb4: ea000000  b 0x0c00bdbc
0c00bdb8: e3c60003  bic r0, r6, #0x3
0c00bdbc: e3a01000  mov r1, #0x0
0c00bdc0: e52d1004  str r1, [sp, #-0x4]!
0c00bdc4: e58d1000  str r1, [sp, #0x0]
0c00bdc8: e59d1000  ldr r1, [sp, #0x0]
0c00bdcc: e2811001  add r1, r1, #0x1
0c00bdd0: e58d1000  str r1, [sp, #0x0]
0c00bdd4: e3510003  cmp r1, #0x3
0c00bdd8: bafffffa  blt 0x0c00bdc8
0c00bddc: e51f1074  ldr r1, [pc, #-0x74] =0x00600804
0c00bde0: e7810505  str r0, [r1, r5, lsl #10]
0c00bde4: e3a00000  mov r0, #0x0
0c00bde8: e58d0000  str r0, [sp, #0x0]
0c00bdec: e59d0000  ldr r0, [sp, #0x0]
0c00bdf0: e2800001  add r0, r0, #0x1
0c00bdf4: e58d0000  str r0, [sp, #0x0]
0c00bdf8: e3500003  cmp r0, #0x3
0c00bdfc: bafffffa  blt 0x0c00bdec
0c00be00: e28dd004  add sp, sp, #0x4
0c00be04: e59d0024  ldr r0, [sp, #0x24]
0c00be08: e3300001  teq r0, #0x1
0c00be0c: 159d0024  ldrne r0, [sp, #0x24]
0c00be10: 13300003  teqne r0, #0x3
0c00be14: e59d0004  ldr r0, [sp, #0x4]
0c00be18: 1a000015  bne 0x0c00be74
0c00be1c: e3300000  teq r0, #0x0
0c00be20: 1a000005  bne 0x0c00be3c
0c00be24: e51f0554  ldr r0, [pc, #-0x554] =0x0403f2fc
0c00be28: e5900000  ldr r0, [r0, #0x0]
0c00be2c: e3100c01  tst r0, #0x100
0c00be30: 11a01005  movne r1, r5
0c00be34: 128f0f02  addne r0, pc, #0x8
0c00be38: 1b0017a8  blne 0x0c011ce0 <fn_0c011ce0>
0c00be3c: e3a06001  mov r6, #0x1
0c00be40: ea000014  b 0x0c00be98
0c00be44: 4552524f  .asciz "ERROR: Minifying on non-vampired channel %d\n"
0c00be74: e3300000  teq r0, #0x0
0c00be78: 151f05a8  ldrne r0, [pc, #-0x5a8] =0x0403f2fc
0c00be7c: 15900000  ldrne r0, [r0, #0x0]
0c00be80: 12000c01  andne r0, r0, #0x100
0c00be84: 13300000  teqne r0, #0x0
0c00be88: 11a01005  movne r1, r5
0c00be8c: 128f0f30  addne r0, pc, #0xc0
0c00be90: 1b001792  blne 0x0c011ce0 <fn_0c011ce0>
0c00be94: e3a06000  mov r6, #0x0
0c00be98: e1a00004  mov r0, r4
0c00be9c: ebfff992  bl 0x0c00a4ec <fn_0c00a4ec>
0c00bea0: e51f05d0  ldr r0, [pc, #-0x5d0] =0x0403f2fc
0c00bea4: e5941000  ldr r1, [r4, #0x0]
0c00bea8: e0800101  add r0, r0, r1, lsl #2
0c00beac: e2800a03  add r0, r0, #0x3000
0c00beb0: e5900004  ldr r0, [r0, #0x4]
0c00beb4: e5901088  ldr r1, [r0, #0x88]
0c00beb8: e3c11003  bic r1, r1, #0x3
0c00bebc: e59d2044  ldr r2, [sp, #0x44]
0c00bec0: e2022003  and r2, r2, #0x3
0c00bec4: e1811002  orr r1, r1, r2
0c00bec8: e3c1100c  bic r1, r1, #0xc
0c00becc: e3a0300c  mov r3, #0xc
0c00bed0: e59d2024  ldr r2, [sp, #0x24]
0c00bed4: e0032102  and r2, r3, r2, lsl #2
0c00bed8: e1811002  orr r1, r1, r2
0c00bedc: e3c11010  bic r1, r1, #0x10
0c00bee0: e3a03010  mov r3, #0x10
0c00bee4: e59d2050  ldr r2, [sp, #0x50]
0c00bee8: e0032202  and r2, r3, r2, lsl #4
0c00beec: e1811002  orr r1, r1, r2
0c00bef0: e3c11020  bic r1, r1, #0x20
0c00bef4: e3a03020  mov r3, #0x20
0c00bef8: e59d204c  ldr r2, [sp, #0x4c]
0c00befc: e0032282  and r2, r3, r2, lsl #5
0c00bf00: e1811002  orr r1, r1, r2
0c00bf04: e3c11040  bic r1, r1, #0x40
0c00bf08: e3a03040  mov r3, #0x40
0c00bf0c: e59d2048  ldr r2, [sp, #0x48]
0c00bf10: e0032302  and r2, r3, r2, lsl #6
0c00bf14: e1811002  orr r1, r1, r2
0c00bf18: e59d2004  ldr r2, [sp, #0x4]
0c00bf1c: e3320000  teq r2, #0x0
0c00bf20: 0a000016  beq 0x0c00bf80
0c00bf24: e5900098  ldr r0, [r0, #0x98]
0c00bf28: e3300002  teq r0, #0x2
0c00bf2c: 13a00000  movne r0, #0x0
0c00bf30: 03a00001  moveq r0, #0x1
0c00bf34: e2012901  and r2, r1, #0x4000
0c00bf38: e1a02722  mov r2, r2, lsr #14
0c00bf3c: e3300000  teq r0, #0x0
0c00bf40: 0a000001  beq 0x0c00bf4c
0c00bf44: e3320000  teq r2, #0x0
0c00bf48: 0a00000c  beq 0x0c00bf80
0c00bf4c: e3810c01  orr r0, r1, #0x100
0c00bf50: ea00000b  b 0x0c00bf84
0c00bf54: 4552524f  .asciz "ERROR: Vampired channel %d must minify!\n"
0c00bf80: e3c10c01  bic r0, r1, #0x100
0c00bf84: e3c00b02  bic r0, r0, #0x800
0c00bf88: e3a01b02  mov r1, #0x800
0c00bf8c: e0011586  and r1, r1, r6, lsl #11
0c00bf90: e1800001  orr r0, r0, r1
0c00bf94: e3c00080  bic r0, r0, #0x80
0c00bf98: e3a02080  mov r2, #0x80
0c00bf9c: e59d1000  ldr r1, [sp, #0x0]
0c00bfa0: e0021381  and r1, r2, r1, lsl #7
0c00bfa4: e1800001  orr r0, r0, r1
0c00bfa8: e3170002  tst r7, #0x2
0c00bfac: 0a000002  beq 0x0c00bfbc
0c00bfb0: e3c00912  bic r0, r0, #0x48000
0c00bfb4: e3800803  orr r0, r0, #0x30000
0c00bfb8: ea000001  b 0x0c00bfc4
0c00bfbc: e3c00803  bic r0, r0, #0x30000
0c00bfc0: e3800912  orr r0, r0, #0x48000
0c00bfc4: e3c00702  bic r0, r0, #0x80000
0c00bfc8: e3800601  orr r0, r0, #0x100000
0c00bfcc: e3a01000  mov r1, #0x0
0c00bfd0: e52d1004  str r1, [sp, #-0x4]!
0c00bfd4: e58d1000  str r1, [sp, #0x0]
0c00bfd8: e59d1000  ldr r1, [sp, #0x0]
0c00bfdc: e2811001  add r1, r1, #0x1
0c00bfe0: e58d1000  str r1, [sp, #0x0]
0c00bfe4: e3510003  cmp r1, #0x3
0c00bfe8: bafffffa  blt 0x0c00bfd8
0c00bfec: e59f14e4  ldr r1, [pc, #0x4e4] =0x00600a3c
0c00bff0: e7810505  str r0, [r1, r5, lsl #10]
0c00bff4: e3a00000  mov r0, #0x0
0c00bff8: e58d0000  str r0, [sp, #0x0]
0c00bffc: e59d0000  ldr r0, [sp, #0x0]
0c00c000: e2800001  add r0, r0, #0x1
0c00c004: e58d0000  str r0, [sp, #0x0]
0c00c008: e3500003  cmp r0, #0x3
0c00c00c: bafffffa  blt 0x0c00bffc
0c00c010: e3a00000  mov r0, #0x0
0c00c014: e58d0000  str r0, [sp, #0x0]
0c00c018: e58d0000  str r0, [sp, #0x0]
0c00c01c: e59d0000  ldr r0, [sp, #0x0]
0c00c020: e2800001  add r0, r0, #0x1
0c00c024: e58d0000  str r0, [sp, #0x0]
0c00c028: e3500003  cmp r0, #0x3
0c00c02c: bafffffa  blt 0x0c00c01c
0c00c030: e3e006ff  mvn r0, #0xff00000
0c00c034: e2800201  add r0, r0, #0x10000000
0c00c038: e59d1044  ldr r1, [sp, #0x44]
0c00c03c: e1510000  cmp r1, r0
0c00c040: d59d0044  ldrle r0, [sp, #0x44]
0c00c044: e3a01d29  mov r1, #0xa40
0c00c048: e2811606  add r1, r1, #0x600000
0c00c04c: e7810505  str r0, [r1, r5, lsl #10]
0c00c050: e3a00000  mov r0, #0x0
0c00c054: e58d0000  str r0, [sp, #0x0]
0c00c058: e59d0000  ldr r0, [sp, #0x0]
0c00c05c: e2800001  add r0, r0, #0x1
0c00c060: e58d0000  str r0, [sp, #0x0]
0c00c064: e3500003  cmp r0, #0x3
0c00c068: bafffffa  blt 0x0c00c058
0c00c06c: e28dd004  add sp, sp, #0x4
0c00c070: e59d0044  ldr r0, [sp, #0x44]
0c00c074: e3300001  teq r0, #0x1
0c00c078: 1a000004  bne 0x0c00c090
0c00c07c: e59d003c  ldr r0, [sp, #0x3c]
0c00c080: e3500601  cmp r0, #0x100000
0c00c084: a3e006ff  mvnge r0, #0xff00000
0c00c088: a2800201  addge r0, r0, #0x10000000
0c00c08c: a58d003c  strge r0, [sp, #0x3c]
0c00c090: e3a00000  mov r0, #0x0
0c00c094: e52d0004  str r0, [sp, #-0x4]!
0c00c098: e58d0000  str r0, [sp, #0x0]
0c00c09c: e59d0000  ldr r0, [sp, #0x0]
0c00c0a0: e2800001  add r0, r0, #0x1
0c00c0a4: e58d0000  str r0, [sp, #0x0]
0c00c0a8: e3500003  cmp r0, #0x3
0c00c0ac: bafffffa  blt 0x0c00c09c
0c00c0b0: e59d0040  ldr r0, [sp, #0x40]
0c00c0b4: e59f1420  ldr r1, [pc, #0x420] =0x00600a44
0c00c0b8: e7810505  str r0, [r1, r5, lsl #10]
0c00c0bc: e3a00000  mov r0, #0x0
0c00c0c0: e58d0000  str r0, [sp, #0x0]
0c00c0c4: e59d0000  ldr r0, [sp, #0x0]
0c00c0c8: e2800001  add r0, r0, #0x1
0c00c0cc: e58d0000  str r0, [sp, #0x0]
0c00c0d0: e3500003  cmp r0, #0x3
0c00c0d4: bafffffa  blt 0x0c00c0c4
0c00c0d8: e3a00000  mov r0, #0x0
0c00c0dc: e58d0000  str r0, [sp, #0x0]
0c00c0e0: e58d0000  str r0, [sp, #0x0]
0c00c0e4: e59d0000  ldr r0, [sp, #0x0]
0c00c0e8: e2800001  add r0, r0, #0x1
0c00c0ec: e58d0000  str r0, [sp, #0x0]
0c00c0f0: e3500003  cmp r0, #0x3
0c00c0f4: bafffffa  blt 0x0c00c0e4
0c00c0f8: e3e004ff  mvn r0, #0xff000000
0c00c0fc: e59d103c  ldr r1, [sp, #0x3c]
0c00c100: e1510000  cmp r1, r0
0c00c104: d59d003c  ldrle r0, [sp, #0x3c]
0c00c108: e59f13d0  ldr r1, [pc, #0x3d0] =0x00600a48
0c00c10c: e7810505  str r0, [r1, r5, lsl #10]
0c00c110: e3a00000  mov r0, #0x0
0c00c114: e58d0000  str r0, [sp, #0x0]
0c00c118: e59d0000  ldr r0, [sp, #0x0]
0c00c11c: e2800001  add r0, r0, #0x1
0c00c120: e58d0000  str r0, [sp, #0x0]
0c00c124: e3500003  cmp r0, #0x3
0c00c128: bafffffa  blt 0x0c00c118
0c00c12c: e3a00000  mov r0, #0x0
0c00c130: e58d0000  str r0, [sp, #0x0]
0c00c134: e58d0000  str r0, [sp, #0x0]
0c00c138: e59d0000  ldr r0, [sp, #0x0]
0c00c13c: e2800001  add r0, r0, #0x1
0c00c140: e58d0000  str r0, [sp, #0x0]
0c00c144: e3500003  cmp r0, #0x3
0c00c148: bafffffa  blt 0x0c00c138
0c00c14c: e59d0038  ldr r0, [sp, #0x38]
0c00c150: e59f138c  ldr r1, [pc, #0x38c] =0x00600a4c
0c00c154: e7810505  str r0, [r1, r5, lsl #10]
0c00c158: e3a00000  mov r0, #0x0
0c00c15c: e58d0000  str r0, [sp, #0x0]
0c00c160: e59d0000  ldr r0, [sp, #0x0]
0c00c164: e2800001  add r0, r0, #0x1
0c00c168: e58d0000  str r0, [sp, #0x0]
0c00c16c: e3500003  cmp r0, #0x3
0c00c170: bafffffa  blt 0x0c00c160
0c00c174: e3a00000  mov r0, #0x0
0c00c178: e58d0000  str r0, [sp, #0x0]
0c00c17c: e58d0000  str r0, [sp, #0x0]
0c00c180: e59d0000  ldr r0, [sp, #0x0]
0c00c184: e2800001  add r0, r0, #0x1
0c00c188: e58d0000  str r0, [sp, #0x0]
0c00c18c: e3500003  cmp r0, #0x3
0c00c190: bafffffa  blt 0x0c00c180
0c00c194: e3a01ea5  mov r1, #0xa50
0c00c198: e2811606  add r1, r1, #0x600000
0c00c19c: e59d0034  ldr r0, [sp, #0x34]
0c00c1a0: e7810505  str r0, [r1, r5, lsl #10]
0c00c1a4: e3a00000  mov r0, #0x0
0c00c1a8: e58d0000  str r0, [sp, #0x0]
0c00c1ac: e59d0000  ldr r0, [sp, #0x0]
0c00c1b0: e2800001  add r0, r0, #0x1
0c00c1b4: e58d0000  str r0, [sp, #0x0]
0c00c1b8: e3500003  cmp r0, #0x3
0c00c1bc: bafffffa  blt 0x0c00c1ac
0c00c1c0: e3a00000  mov r0, #0x0
0c00c1c4: e58d0000  str r0, [sp, #0x0]
0c00c1c8: e58d0000  str r0, [sp, #0x0]
0c00c1cc: e59d0000  ldr r0, [sp, #0x0]
0c00c1d0: e2800001  add r0, r0, #0x1
0c00c1d4: e58d0000  str r0, [sp, #0x0]
0c00c1d8: e3500003  cmp r0, #0x3
0c00c1dc: bafffffa  blt 0x0c00c1cc
0c00c1e0: e59d0030  ldr r0, [sp, #0x30]
0c00c1e4: e59f12fc  ldr r1, [pc, #0x2fc] =0x00600a54
0c00c1e8: e7810505  str r0, [r1, r5, lsl #10]
0c00c1ec: e3a00000  mov r0, #0x0
0c00c1f0: e58d0000  str r0, [sp, #0x0]
0c00c1f4: e59d0000  ldr r0, [sp, #0x0]
0c00c1f8: e2800001  add r0, r0, #0x1
0c00c1fc: e58d0000  str r0, [sp, #0x0]
0c00c200: e3500003  cmp r0, #0x3
0c00c204: bafffffa  blt 0x0c00c1f4
0c00c208: e3a00000  mov r0, #0x0
0c00c20c: e58d0000  str r0, [sp, #0x0]
0c00c210: e58d0000  str r0, [sp, #0x0]
0c00c214: e59d0000  ldr r0, [sp, #0x0]
0c00c218: e2800001  add r0, r0, #0x1
0c00c21c: e58d0000  str r0, [sp, #0x0]
0c00c220: e3500003  cmp r0, #0x3
0c00c224: bafffffa  blt 0x0c00c214
0c00c228: e59d002c  ldr r0, [sp, #0x2c]
0c00c22c: e59f12b8  ldr r1, [pc, #0x2b8] =0x00600a58
0c00c230: e7810505  str r0, [r1, r5, lsl #10]
0c00c234: e3a00000  mov r0, #0x0
0c00c238: e58d0000  str r0, [sp, #0x0]
0c00c23c: e59d0000  ldr r0, [sp, #0x0]
0c00c240: e2800001  add r0, r0, #0x1
0c00c244: e58d0000  str r0, [sp, #0x0]
0c00c248: e3500003  cmp r0, #0x3
0c00c24c: bafffffa  blt 0x0c00c23c
0c00c250: e3a00000  mov r0, #0x0
0c00c254: e58d0000  str r0, [sp, #0x0]
0c00c258: e58d0000  str r0, [sp, #0x0]
0c00c25c: e59d0000  ldr r0, [sp, #0x0]
0c00c260: e2800001  add r0, r0, #0x1
0c00c264: e58d0000  str r0, [sp, #0x0]
0c00c268: e3500003  cmp r0, #0x3
0c00c26c: bafffffa  blt 0x0c00c25c
0c00c270: e3e006ff  mvn r0, #0xff00000
0c00c274: e2800201  add r0, r0, #0x10000000
0c00c278: e59d1024  ldr r1, [sp, #0x24]
0c00c27c: e1510000  cmp r1, r0
0c00c280: d59d0024  ldrle r0, [sp, #0x24]
0c00c284: e59f1264  ldr r1, [pc, #0x264] =0x00600a5c
0c00c288: e7810505  str r0, [r1, r5, lsl #10]
0c00c28c: e3a00000  mov r0, #0x0
0c00c290: e58d0000  str r0, [sp, #0x0]
0c00c294: e59d0000  ldr r0, [sp, #0x0]
0c00c298: e2800001  add r0, r0, #0x1
0c00c29c: e58d0000  str r0, [sp, #0x0]
0c00c2a0: e3500003  cmp r0, #0x3
0c00c2a4: bafffffa  blt 0x0c00c294
0c00c2a8: e3a00000  mov r0, #0x0
0c00c2ac: e58d0000  str r0, [sp, #0x0]
0c00c2b0: e58d0000  str r0, [sp, #0x0]
0c00c2b4: e59d0000  ldr r0, [sp, #0x0]
0c00c2b8: e2800001  add r0, r0, #0x1
0c00c2bc: e58d0000  str r0, [sp, #0x0]
0c00c2c0: e3500003  cmp r0, #0x3
0c00c2c4: bafffffa  blt 0x0c00c2b4
0c00c2c8: e3e006ff  mvn r0, #0xff00000
0c00c2cc: e2800201  add r0, r0, #0x10000000
0c00c2d0: e59d1020  ldr r1, [sp, #0x20]
0c00c2d4: e1510000  cmp r1, r0
0c00c2d8: d59d0020  ldrle r0, [sp, #0x20]
0c00c2dc: e3a01ea6  mov r1, #0xa60
0c00c2e0: e2811606  add r1, r1, #0x600000
0c00c2e4: e7810505  str r0, [r1, r5, lsl #10]
0c00c2e8: e3a00000  mov r0, #0x0
0c00c2ec: e58d0000  str r0, [sp, #0x0]
0c00c2f0: e59d0000  ldr r0, [sp, #0x0]
0c00c2f4: e2800001  add r0, r0, #0x1
0c00c2f8: e58d0000  str r0, [sp, #0x0]
0c00c2fc: e3500003  cmp r0, #0x3
0c00c300: bafffffa  blt 0x0c00c2f0
0c00c304: e3a00000  mov r0, #0x0
0c00c308: e58d0000  str r0, [sp, #0x0]
0c00c30c: e58d0000  str r0, [sp, #0x0]
0c00c310: e59d0000  ldr r0, [sp, #0x0]
0c00c314: e2800001  add r0, r0, #0x1
0c00c318: e58d0000  str r0, [sp, #0x0]
0c00c31c: e3500003  cmp r0, #0x3
0c00c320: bafffffa  blt 0x0c00c310
0c00c324: e3e004ff  mvn r0, #0xff000000
0c00c328: e59d101c  ldr r1, [sp, #0x1c]
0c00c32c: e1510000  cmp r1, r0
0c00c330: d59d001c  ldrle r0, [sp, #0x1c]
0c00c334: e59f11b8  ldr r1, [pc, #0x1b8] =0x00600a64
0c00c338: e7810505  str r0, [r1, r5, lsl #10]
0c00c33c: e3a00000  mov r0, #0x0
0c00c340: e58d0000  str r0, [sp, #0x0]
0c00c344: e59d0000  ldr r0, [sp, #0x0]
0c00c348: e2800001  add r0, r0, #0x1
0c00c34c: e58d0000  str r0, [sp, #0x0]
0c00c350: e3500003  cmp r0, #0x3
0c00c354: bafffffa  blt 0x0c00c344
0c00c358: e3a00000  mov r0, #0x0
0c00c35c: e58d0000  str r0, [sp, #0x0]
0c00c360: e58d0000  str r0, [sp, #0x0]
0c00c364: e59d0000  ldr r0, [sp, #0x0]
0c00c368: e2800001  add r0, r0, #0x1
0c00c36c: e58d0000  str r0, [sp, #0x0]
0c00c370: e3500003  cmp r0, #0x3
0c00c374: bafffffa  blt 0x0c00c364
0c00c378: e59d0018  ldr r0, [sp, #0x18]
0c00c37c: e59f1174  ldr r1, [pc, #0x174] =0x00600a68
0c00c380: e7810505  str r0, [r1, r5, lsl #10]
0c00c384: e3a00000  mov r0, #0x0
0c00c388: e58d0000  str r0, [sp, #0x0]
0c00c38c: e59d0000  ldr r0, [sp, #0x0]
0c00c390: e2800001  add r0, r0, #0x1
0c00c394: e58d0000  str r0, [sp, #0x0]
0c00c398: e3500003  cmp r0, #0x3
0c00c39c: bafffffa  blt 0x0c00c38c
0c00c3a0: e3a00000  mov r0, #0x0
0c00c3a4: e58d0000  str r0, [sp, #0x0]
0c00c3a8: e58d0000  str r0, [sp, #0x0]
0c00c3ac: e59d0000  ldr r0, [sp, #0x0]
0c00c3b0: e2800001  add r0, r0, #0x1
0c00c3b4: e58d0000  str r0, [sp, #0x0]
0c00c3b8: e3500003  cmp r0, #0x3
0c00c3bc: bafffffa  blt 0x0c00c3ac
0c00c3c0: e59d0014  ldr r0, [sp, #0x14]
0c00c3c4: e59f1130  ldr r1, [pc, #0x130] =0x00600a6c
0c00c3c8: e7810505  str r0, [r1, r5, lsl #10]
0c00c3cc: e3a00000  mov r0, #0x0
0c00c3d0: e58d0000  str r0, [sp, #0x0]
0c00c3d4: e59d0000  ldr r0, [sp, #0x0]
0c00c3d8: e2800001  add r0, r0, #0x1
0c00c3dc: e58d0000  str r0, [sp, #0x0]
0c00c3e0: e3500003  cmp r0, #0x3
0c00c3e4: bafffffa  blt 0x0c00c3d4
0c00c3e8: e3a00000  mov r0, #0x0
0c00c3ec: e58d0000  str r0, [sp, #0x0]
0c00c3f0: e58d0000  str r0, [sp, #0x0]
0c00c3f4: e59d0000  ldr r0, [sp, #0x0]
0c00c3f8: e2800001  add r0, r0, #0x1
0c00c3fc: e58d0000  str r0, [sp, #0x0]
0c00c400: e3500003  cmp r0, #0x3
0c00c404: bafffffa  blt 0x0c00c3f4
0c00c408: e3a01ea7  mov r1, #0xa70
0c00c40c: e2811606  add r1, r1, #0x600000
0c00c410: e59d0010  ldr r0, [sp, #0x10]
0c00c414: e7810505  str r0, [r1, r5, lsl #10]
0c00c418: e3a00000  mov r0, #0x0
0c00c41c: e58d0000  str r0, [sp, #0x0]
0c00c420: e59d0000  ldr r0, [sp, #0x0]
0c00c424: e2800001  add r0, r0, #0x1
0c00c428: e58d0000  str r0, [sp, #0x0]
0c00c42c: e3500003  cmp r0, #0x3
0c00c430: bafffffa  blt 0x0c00c420
0c00c434: e3a00000  mov r0, #0x0
0c00c438: e58d0000  str r0, [sp, #0x0]
0c00c43c: e58d0000  str r0, [sp, #0x0]
0c00c440: e59d0000  ldr r0, [sp, #0x0]
0c00c444: e2800001  add r0, r0, #0x1
0c00c448: e58d0000  str r0, [sp, #0x0]
0c00c44c: e3500003  cmp r0, #0x3
0c00c450: bafffffa  blt 0x0c00c440
0c00c454: e59d000c  ldr r0, [sp, #0xc]
0c00c458: e59f10a0  ldr r1, [pc, #0xa0] =0x00600a74
0c00c45c: e7810505  str r0, [r1, r5, lsl #10]
0c00c460: e3a00000  mov r0, #0x0
0c00c464: e58d0000  str r0, [sp, #0x0]
0c00c468: e59d0000  ldr r0, [sp, #0x0]
0c00c46c: e2800001  add r0, r0, #0x1
0c00c470: e58d0000  str r0, [sp, #0x0]
0c00c474: e3500003  cmp r0, #0x3
0c00c478: bafffffa  blt 0x0c00c468
0c00c47c: e28dd004  add sp, sp, #0x4
0c00c480: e33a0000  teq r10, #0x0
0c00c484: 0a000012  beq 0x0c00c4d4
0c00c488: e3a00000  mov r0, #0x0
0c00c48c: e52d0004  str r0, [sp, #-0x4]!
0c00c490: e58d0000  str r0, [sp, #0x0]
0c00c494: e59d0000  ldr r0, [sp, #0x0]
0c00c498: e2800001  add r0, r0, #0x1
0c00c49c: e58d0000  str r0, [sp, #0x0]
0c00c4a0: e3500003  cmp r0, #0x3
0c00c4a4: bafffffa  blt 0x0c00c494
0c00c4a8: e3a00001  mov r0, #0x1
0c00c4ac: e51f1740  ldr r1, [pc, #-0x740] =0x00600808
0c00c4b0: e7810505  str r0, [r1, r5, lsl #10]
0c00c4b4: e3a00000  mov r0, #0x0
0c00c4b8: e58d0000  str r0, [sp, #0x0]
0c00c4bc: e59d0000  ldr r0, [sp, #0x0]
0c00c4c0: e2800001  add r0, r0, #0x1
0c00c4c4: e58d0000  str r0, [sp, #0x0]
0c00c4c8: e3500003  cmp r0, #0x3
0c00c4cc: bafffffa  blt 0x0c00c4bc
0c00c4d0: e28dd004  add sp, sp, #0x4
0c00c4d4: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00c4d8: 00600a3c  .word 0x00600a3c
0c00c4dc: 00600a44  .word 0x00600a44
0c00c4e0: 00600a48  .word 0x00600a48
0c00c4e4: 00600a4c  .word 0x00600a4c
0c00c4e8: 00600a54  .word 0x00600a54
0c00c4ec: 00600a58  .word 0x00600a58
0c00c4f0: 00600a5c  .word 0x00600a5c
0c00c4f4: 00600a64  .word 0x00600a64
0c00c4f8: 00600a68  .word 0x00600a68
0c00c4fc: 00600a6c  .word 0x00600a6c
0c00c500: 00600a74  .word 0x00600a74
0c00c504: e1a0c00d  mov r12, sp
0c00c508: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00c50c: e24cb004  sub r11, r12, #0x4
0c00c510: e1a04000  mov r4, r0
0c00c514: e24dd004  sub sp, sp, #0x4
0c00c518: e1a05001  mov r5, r1
0c00c51c: e5911000  ldr r1, [r1, #0x0]
0c00c520: e1300001  teq r0, r1
0c00c524: 1334001f  teqne r4, #0x1f
0c00c528: 0a00005c  beq 0x0c00c6a0
0c00c52c: e51f6c5c  ldr r6, [pc, #-0xc5c] =0x0403f2fc
0c00c530: e0860104  add r0, r6, r4, lsl #2
0c00c534: e2800a03  add r0, r0, #0x3000
0c00c538: e58d0000  str r0, [sp, #0x0]
0c00c53c: e5b0e004  ldr lr, [r0, #0x4]!
0c00c540: e59e004c  ldr r0, [lr, #0x4c]
0c00c544: e1300001  teq r0, r1
0c00c548: 1a000054  bne 0x0c00c6a0
0c00c54c: e2857020  add r7, r5, #0x20
0c00c550: e937100e  ldmdb r7!, {r1,r2,r3,r12}
0c00c554: e92d100e  stmdb sp!, {r1,r2,r3,r12}
0c00c558: e937100e  ldmdb r7!, {r1,r2,r3,r12}
0c00c55c: e92d100e  stmdb sp!, {r1,r2,r3,r12}
0c00c560: e58d4000  str r4, [sp, #0x0]
0c00c564: e28d1004  add r1, sp, #0x4
0c00c568: e28e2060  add r2, lr, #0x60
0c00c56c: e8b21008  ldmia r2!, {r3,r12}
0c00c570: e8a11008  stmia r1!, {r3,r12}
0c00c574: e8921008  ldmia r2, {r3,r12}
0c00c578: e8811008  stmia r1, {r3,r12}
0c00c57c: e595101c  ldr r1, [r5, #0x1c]
0c00c580: e3310000  teq r1, #0x0
0c00c584: 0a00002c  beq 0x0c00c63c
0c00c588: e51f1cb8  ldr r1, [pc, #-0xcb8] =0x0403f2fc
0c00c58c: e0810100  add r0, r1, r0, lsl #2
0c00c590: e2800a03  add r0, r0, #0x3000
0c00c594: e5900004  ldr r0, [r0, #0x4]
0c00c598: e590605c  ldr r6, [r0, #0x5c]
0c00c59c: e5907058  ldr r7, [r0, #0x58]
0c00c5a0: e590a068  ldr r10, [r0, #0x68]
0c00c5a4: e590006c  ldr r0, [r0, #0x6c]
0c00c5a8: e52d0004  str r0, [sp, #-0x4]!
0c00c5ac: e59d0010  ldr r0, [sp, #0x10]
0c00c5b0: e0010097  mul r1, r7, r0
0c00c5b4: e1a0000a  mov r0, r10
0c00c5b8: eb002c92  bl 0x0c017808 <__rt_sdiv>
0c00c5bc: e58d0010  str r0, [sp, #0x10]
0c00c5c0: e59d0014  ldr r0, [sp, #0x14]
0c00c5c4: e0010096  mul r1, r6, r0
0c00c5c8: e59d0000  ldr r0, [sp, #0x0]
0c00c5cc: eb002c8d  bl 0x0c017808 <__rt_sdiv>
0c00c5d0: e58d0014  str r0, [sp, #0x14]
0c00c5d4: e59d0008  ldr r0, [sp, #0x8]
0c00c5d8: e0010097  mul r1, r7, r0
0c00c5dc: e1a0000a  mov r0, r10
0c00c5e0: eb002c88  bl 0x0c017808 <__rt_sdiv>
0c00c5e4: e58d0008  str r0, [sp, #0x8]
0c00c5e8: e59d000c  ldr r0, [sp, #0xc]
0c00c5ec: e0010096  mul r1, r6, r0
0c00c5f0: e59d0000  ldr r0, [sp, #0x0]
0c00c5f4: eb002c83  bl 0x0c017808 <__rt_sdiv>
0c00c5f8: e58d000c  str r0, [sp, #0xc]
0c00c5fc: e51f0d2c  ldr r0, [pc, #-0xd2c] =0x0403f2fc
0c00c600: e5900000  ldr r0, [r0, #0x0]
0c00c604: e3100c01  tst r0, #0x100
0c00c608: 0a00000a  beq 0x0c00c638
0c00c60c: e28d3008  add r3, sp, #0x8
0c00c610: e893000f  ldmia r3, {r0,r1,r2,r3}
0c00c614: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00c618: e59d3010  ldr r3, [sp, #0x10]
0c00c61c: e92d0008  stmdb sp!, {r3}
0c00c620: e1a03006  mov r3, r6
0c00c624: e1a0200a  mov r2, r10
0c00c628: e1a01007  mov r1, r7
0c00c62c: e28f0f1c  add r0, pc, #0x70
0c00c630: eb0015aa  bl 0x0c011ce0 <fn_0c011ce0>
0c00c634: e28dd014  add sp, sp, #0x14
0c00c638: e28dd004  add sp, sp, #0x4
0c00c63c: e5950000  ldr r0, [r5, #0x0]
0c00c640: e3500000  cmp r0, #0x0
0c00c644: ba000012  blt 0x0c00c694
0c00c648: e3500007  cmp r0, #0x7
0c00c64c: ca000010  bgt 0x0c00c694
0c00c650: e3540000  cmp r4, #0x0
0c00c654: ba00000e  blt 0x0c00c694
0c00c658: e3540007  cmp r4, #0x7
0c00c65c: ca00000c  bgt 0x0c00c694
0c00c660: e51f1d90  ldr r1, [pc, #-0xd90] =0x0403f2fc
0c00c664: e0810100  add r0, r1, r0, lsl #2
0c00c668: e2800a03  add r0, r0, #0x3000
0c00c66c: e59003fc  ldr r0, [r0, #0x3fc]
0c00c670: e59d2020  ldr r2, [sp, #0x20]
0c00c674: e5a203fc  str r0, [r2, #0x3fc]!
0c00c678: e5910000  ldr r0, [r1, #0x0]
0c00c67c: e3100c02  tst r0, #0x200
0c00c680: 0a000003  beq 0x0c00c694
0c00c684: e1a02004  mov r2, r4
0c00c688: e5951000  ldr r1, [r5, #0x0]
0c00c68c: e28f0f11  add r0, pc, #0x44
0c00c690: eb001592  bl 0x0c011ce0 <fn_0c011ce0>
0c00c694: e1a0000d  mov r0, sp
0c00c698: ebfffbfa  bl 0x0c00b688 <fn_0c00b688>
0c00c69c: e28dd020  add sp, sp, #0x20
0c00c6a0: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00c6a4: 72657369  .asciz "resize vampire w=%d/%d h=%d/%d -> (%d,%d)-(%dx%d)\n"
0c00c6d8: 62696e64  .asciz "binding channel %ds XWid to vampire channel %d\n"
DoDGRqstResize:
0c00c708: e1a0c00d  mov r12, sp
0c00c70c: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c00c710: e24cb004  sub r11, r12, #0x4
0c00c714: e1a04000  mov r4, r0
0c00c718: ebfffbda  bl 0x0c00b688 <fn_0c00b688>
0c00c71c: e51f1e4c  ldr r1, [pc, #-0xe4c] =0x0403f2fc
0c00c720: e5940000  ldr r0, [r4, #0x0]
0c00c724: e0810100  add r0, r1, r0, lsl #2
0c00c728: e2800a03  add r0, r0, #0x3000
0c00c72c: e5900004  ldr r0, [r0, #0x4]
0c00c730: e59000ac  ldr r0, [r0, #0xac]
0c00c734: e3500000  cmp r0, #0x0
0c00c738: c1a01004  movgt r1, r4
0c00c73c: c59f0008  ldrgt r0, [pc, #0x8] =0x0c00c504
0c00c740: c91b6810  ldmgtdb r11, {r4,r11,sp,lr}
0c00c744: ca00034b  bgt 0x0c00d478 <fn_0c00d478>
0c00c748: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c00c74c: 0c00c504  .word 0x0c00c504
DoDGRqstGetResize:
0c00c750: e1a0c00d  mov r12, sp
0c00c754: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00c758: e24cb004  sub r11, r12, #0x4
0c00c75c: e24dd038  sub sp, sp, #0x38
0c00c760: e51f1e90  ldr r1, [pc, #-0xe90] =0x0403f2fc
0c00c764: e5903000  ldr r3, [r0, #0x0]
0c00c768: e0813103  add r3, r1, r3, lsl #2
0c00c76c: e2833a03  add r3, r3, #0x3000
0c00c770: e5933004  ldr r3, [r3, #0x4]
0c00c774: e283e060  add lr, r3, #0x60
0c00c778: e93e1008  ldmdb lr!, {r3,r12}
0c00c77c: e92d1008  stmdb sp!, {r3,r12}
0c00c780: e93e1008  ldmdb lr!, {r3,r12}
0c00c784: e92d1008  stmdb sp!, {r3,r12}
0c00c788: e28d2010  add r2, sp, #0x10
0c00c78c: e5903000  ldr r3, [r0, #0x0]
0c00c790: e0813103  add r3, r1, r3, lsl #2
0c00c794: e2833a03  add r3, r3, #0x3000
0c00c798: e5933004  ldr r3, [r3, #0x4]
0c00c79c: e283e060  add lr, r3, #0x60
0c00c7a0: e8be1008  ldmia lr!, {r3,r12}
0c00c7a4: e8a21008  stmia r2!, {r3,r12}
0c00c7a8: e89e1008  ldmia lr, {r3,r12}
0c00c7ac: e8821008  stmia r2, {r3,r12}
0c00c7b0: e5902000  ldr r2, [r0, #0x0]
0c00c7b4: e0812102  add r2, r1, r2, lsl #2
0c00c7b8: e2822a03  add r2, r2, #0x3000
0c00c7bc: e5922004  ldr r2, [r2, #0x4]
0c00c7c0: e59220b0  ldr r2, [r2, #0xb0]
0c00c7c4: e58d2020  str r2, [sp, #0x20]
0c00c7c8: e5902000  ldr r2, [r0, #0x0]
0c00c7cc: e0812102  add r2, r1, r2, lsl #2
0c00c7d0: e2822a03  add r2, r2, #0x3000
0c00c7d4: e5922004  ldr r2, [r2, #0x4]
0c00c7d8: e59220b4  ldr r2, [r2, #0xb4]
0c00c7dc: e58d2024  str r2, [sp, #0x24]
0c00c7e0: e5902000  ldr r2, [r0, #0x0]
0c00c7e4: e0812102  add r2, r1, r2, lsl #2
0c00c7e8: e2822a03  add r2, r2, #0x3000
0c00c7ec: e5922004  ldr r2, [r2, #0x4]
0c00c7f0: e59220b8  ldr r2, [r2, #0xb8]
0c00c7f4: e58d2028  str r2, [sp, #0x28]
0c00c7f8: e5902000  ldr r2, [r0, #0x0]
0c00c7fc: e0812102  add r2, r1, r2, lsl #2
0c00c800: e2822a03  add r2, r2, #0x3000
0c00c804: e5922004  ldr r2, [r2, #0x4]
0c00c808: e59220bc  ldr r2, [r2, #0xbc]
0c00c80c: e58d202c  str r2, [sp, #0x2c]
0c00c810: e5902000  ldr r2, [r0, #0x0]
0c00c814: e0812102  add r2, r1, r2, lsl #2
0c00c818: e2822a03  add r2, r2, #0x3000
0c00c81c: e5922004  ldr r2, [r2, #0x4]
0c00c820: e5922070  ldr r2, [r2, #0x70]
0c00c824: e58d2030  str r2, [sp, #0x30]
0c00c828: e5902000  ldr r2, [r0, #0x0]
0c00c82c: e0812102  add r2, r1, r2, lsl #2
0c00c830: e2822a03  add r2, r2, #0x3000
0c00c834: e5922004  ldr r2, [r2, #0x4]
0c00c838: e5922074  ldr r2, [r2, #0x74]
0c00c83c: e58d2034  str r2, [sp, #0x34]
0c00c840: e5902000  ldr r2, [r0, #0x0]
0c00c844: e0812102  add r2, r1, r2, lsl #2
0c00c848: e2822a03  add r2, r2, #0x3000
0c00c84c: e5922004  ldr r2, [r2, #0x4]
0c00c850: e5922078  ldr r2, [r2, #0x78]
0c00c854: e58d2038  str r2, [sp, #0x38]
0c00c858: e5900000  ldr r0, [r0, #0x0]
0c00c85c: e0810100  add r0, r1, r0, lsl #2
0c00c860: e2800a03  add r0, r0, #0x3000
0c00c864: e5900004  ldr r0, [r0, #0x4]
0c00c868: e590007c  ldr r0, [r0, #0x7c]
0c00c86c: e58d003c  str r0, [sp, #0x3c]
0c00c870: e1a0100d  mov r1, sp
0c00c874: e3a02048  mov r2, #0x48
0c00c878: e3a00008  mov r0, #0x8
0c00c87c: ebffe117  bl 0x0c004ce0 <fn_0c004ce0>
0c00c880: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstPlacementRes:
0c00c884: e5903004  ldr r3, [r0, #0x4]
0c00c888: e51f1fb8  ldr r1, [pc, #-0xfb8] =0x0403f2fc
0c00c88c: e5902000  ldr r2, [r0, #0x0]
0c00c890: e0812102  add r2, r1, r2, lsl #2
0c00c894: e2822a03  add r2, r2, #0x3000
0c00c898: e5922004  ldr r2, [r2, #0x4]
0c00c89c: e5a230b0  str r3, [r2, #0xb0]!
0c00c8a0: e5902000  ldr r2, [r0, #0x0]
0c00c8a4: e0812102  add r2, r1, r2, lsl #2
0c00c8a8: e2822a03  add r2, r2, #0x3000
0c00c8ac: e5903008  ldr r3, [r0, #0x8]
0c00c8b0: e5922004  ldr r2, [r2, #0x4]
0c00c8b4: e5a230b4  str r3, [r2, #0xb4]!
0c00c8b8: e5902000  ldr r2, [r0, #0x0]
0c00c8bc: e0812102  add r2, r1, r2, lsl #2
0c00c8c0: e2822a03  add r2, r2, #0x3000
0c00c8c4: e590300c  ldr r3, [r0, #0xc]
0c00c8c8: e5922004  ldr r2, [r2, #0x4]
0c00c8cc: e5a230b8  str r3, [r2, #0xb8]!
0c00c8d0: e5902000  ldr r2, [r0, #0x0]
0c00c8d4: e0812102  add r2, r1, r2, lsl #2
0c00c8d8: e2822a03  add r2, r2, #0x3000
0c00c8dc: e5903010  ldr r3, [r0, #0x10]
0c00c8e0: e5922004  ldr r2, [r2, #0x4]
0c00c8e4: e5a230bc  str r3, [r2, #0xbc]!
0c00c8e8: e5902000  ldr r2, [r0, #0x0]
0c00c8ec: e0812102  add r2, r1, r2, lsl #2
0c00c8f0: e2822a03  add r2, r2, #0x3000
0c00c8f4: e5903014  ldr r3, [r0, #0x14]
0c00c8f8: e5922004  ldr r2, [r2, #0x4]
0c00c8fc: e5a23070  str r3, [r2, #0x70]!
0c00c900: e5902000  ldr r2, [r0, #0x0]
0c00c904: e0812102  add r2, r1, r2, lsl #2
0c00c908: e2822a03  add r2, r2, #0x3000
0c00c90c: e5903018  ldr r3, [r0, #0x18]
0c00c910: e5922004  ldr r2, [r2, #0x4]
0c00c914: e5a23074  str r3, [r2, #0x74]!
0c00c918: e5902000  ldr r2, [r0, #0x0]
0c00c91c: e0812102  add r2, r1, r2, lsl #2
0c00c920: e2822a03  add r2, r2, #0x3000
0c00c924: e590301c  ldr r3, [r0, #0x1c]
0c00c928: e5922004  ldr r2, [r2, #0x4]
0c00c92c: e5a23078  str r3, [r2, #0x78]!
0c00c930: e5902020  ldr r2, [r0, #0x20]
0c00c934: e5900000  ldr r0, [r0, #0x0]
0c00c938: e0810100  add r0, r1, r0, lsl #2
0c00c93c: e2800a03  add r0, r0, #0x3000
0c00c940: e5900004  ldr r0, [r0, #0x4]
0c00c944: e5a0207c  str r2, [r0, #0x7c]!
0c00c948: e1a0f00e  mov pc, lr
DoDGRqstBindChannelToXWid:
0c00c94c: e1a0c00d  mov r12, sp
0c00c950: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c00c954: e24cb004  sub r11, r12, #0x4
0c00c958: e1a04000  mov r4, r0
0c00c95c: e5900000  ldr r0, [r0, #0x0]
0c00c960: e3500000  cmp r0, #0x0
0c00c964: ba000001  blt 0x0c00c970
0c00c968: e3500007  cmp r0, #0x7
0c00c96c: da000003  ble 0x0c00c980
0c00c970: e51f1c00  ldr r1, [pc, #-0xc00] =0x0c00b8dc
0c00c974: e59f008c  ldr r0, [pc, #0x8c] =0x0c00bd7c
0c00c978: e3a02f91  mov r2, #0x244
0c00c97c: eb0018dd  bl 0x0c012cf8 <fn_0c012cf8>
0c00c980: e59f5084  ldr r5, [pc, #0x84] =0x0403f2fc
0c00c984: e5950000  ldr r0, [r5, #0x0]
0c00c988: e3100c02  tst r0, #0x200
0c00c98c: 0a000003  beq 0x0c00c9a0
0c00c990: e5941004  ldr r1, [r4, #0x4]
0c00c994: e5942000  ldr r2, [r4, #0x0]
0c00c998: e28f0f1c  add r0, pc, #0x70
0c00c99c: eb0014cf  bl 0x0c011ce0 <fn_0c011ce0>
0c00c9a0: e5941000  ldr r1, [r4, #0x0]
0c00c9a4: e0851101  add r1, r5, r1, lsl #2
0c00c9a8: e2811a03  add r1, r1, #0x3000
0c00c9ac: e5940004  ldr r0, [r4, #0x4]
0c00c9b0: e5a103fc  str r0, [r1, #0x3fc]!
0c00c9b4: e5940004  ldr r0, [r4, #0x4]
0c00c9b8: e3300000  teq r0, #0x0
0c00c9bc: 191ba830  ldmnedb r11, {r4,r5,r11,sp,pc}
0c00c9c0: e5940000  ldr r0, [r4, #0x0]
0c00c9c4: e52d0020  str r0, [sp, #-0x20]!
0c00c9c8: e28d0004  add r0, sp, #0x4
0c00c9cc: e5941000  ldr r1, [r4, #0x0]
0c00c9d0: e0851101  add r1, r5, r1, lsl #2
0c00c9d4: e2811a03  add r1, r1, #0x3000
0c00c9d8: e5911004  ldr r1, [r1, #0x4]
0c00c9dc: e2811060  add r1, r1, #0x60
0c00c9e0: e891500a  ldmia r1, {r1,r3,r12,lr}
0c00c9e4: e880500a  stmia r0, {r1,r3,r12,lr}
0c00c9e8: e3a00001  mov r0, #0x1
0c00c9ec: e58d0014  str r0, [sp, #0x14]
0c00c9f0: e58d0018  str r0, [sp, #0x18]
0c00c9f4: e3a00000  mov r0, #0x0
0c00c9f8: e58d001c  str r0, [sp, #0x1c]
0c00c9fc: e1a0000d  mov r0, sp
0c00ca00: ebffff40  bl 0x0c00c708 <DoDGRqstResize>
0c00ca04: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c00ca08: 0c00bd7c  .word 0x0c00bd7c
0c00ca0c: 0403f2fc  .word 0x0403f2fc
0c00ca10: 62696e64  .asciz "binding Xwid %d to physical channel %d\n"
0c00ca38: e1a0c00d  mov r12, sp
0c00ca3c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00ca40: e24cb004  sub r11, r12, #0x4
0c00ca44: e1a05000  mov r5, r0
0c00ca48: e1a04001  mov r4, r1
0c00ca4c: e3a06000  mov r6, #0x0
0c00ca50: e51fa04c  ldr r10, [pc, #-0x4c] =0x0403f2fc
0c00ca54: e3a07f81  mov r7, #0x204
0c00ca58: e2877606  add r7, r7, #0x600000
0c00ca5c: e08a0106  add r0, r10, r6, lsl #2
0c00ca60: e2800a03  add r0, r0, #0x3000
0c00ca64: e59003fc  ldr r0, [r0, #0x3fc]
0c00ca68: e1300005  teq r0, r5
0c00ca6c: 1a000018  bne 0x0c00cad4
0c00ca70: e59a0000  ldr r0, [r10, #0x0]
0c00ca74: e3100c02  tst r0, #0x200
0c00ca78: 0a000004  beq 0x0c00ca90
0c00ca7c: e1a03004  mov r3, r4
0c00ca80: e1a02006  mov r2, r6
0c00ca84: e1a01005  mov r1, r5
0c00ca88: e28f0f15  add r0, pc, #0x54
0c00ca8c: eb001493  bl 0x0c011ce0 <fn_0c011ce0>
0c00ca90: e3a00000  mov r0, #0x0
0c00ca94: e52d0004  str r0, [sp, #-0x4]!
0c00ca98: e58d0000  str r0, [sp, #0x0]
0c00ca9c: e59d0000  ldr r0, [sp, #0x0]
0c00caa0: e2800001  add r0, r0, #0x1
0c00caa4: e58d0000  str r0, [sp, #0x0]
0c00caa8: e3500003  cmp r0, #0x3
0c00caac: bafffffa  blt 0x0c00ca9c
0c00cab0: e7874106  str r4, [r7, r6, lsl #2]
0c00cab4: e3a00000  mov r0, #0x0
0c00cab8: e58d0000  str r0, [sp, #0x0]
0c00cabc: e59d0000  ldr r0, [sp, #0x0]
0c00cac0: e2800001  add r0, r0, #0x1
0c00cac4: e58d0000  str r0, [sp, #0x0]
0c00cac8: e3500003  cmp r0, #0x3
0c00cacc: bafffffa  blt 0x0c00cabc
0c00cad0: e28dd004  add sp, sp, #0x4
0c00cad4: e2866001  add r6, r6, #0x1
0c00cad8: e356000a  cmp r6, #0xa
0c00cadc: baffffde  blt 0x0c00ca5c
0c00cae0: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00cae4: 58576964  .asciz "XWid %10d swaps %2d on did %3d\n"
fn_0c00cb04:
0c00cb04: e1a0c00d  mov r12, sp
0c00cb08: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00cb0c: e24cb004  sub r11, r12, #0x4
0c00cb10: e51f610c  ldr r6, [pc, #-0x10c] =0x0403f2fc
0c00cb14: e2861a03  add r1, r6, #0x3000
0c00cb18: e5910434  ldr r0, [r1, #0x434]
0c00cb1c: e3300000  teq r0, #0x0
0c00cb20: 1a000004  bne 0x0c00cb38
0c00cb24: e3a0008b  mov r0, #0x8b
0c00cb28: e3a03017  mov r3, #0x17
0c00cb2c: e3a02fc3  mov r2, #0x30c
0c00cb30: e3a0ee12  mov lr, #0x120
0c00cb34: ea000004  b 0x0c00cb4c
0c00cb38: e3a0006f  mov r0, #0x6f
0c00cb3c: e3a03011  mov r3, #0x11
0c00cb40: e3a02086  mov r2, #0x86
0c00cb44: e2822c02  add r2, r2, #0x200
0c00cb48: e3a0e0f3  mov lr, #0xf3
0c00cb4c: e5b1c008  ldr r12, [r1, #0x8]!
0c00cb50: e28cc080  add r12, r12, #0x80
0c00cb54: e89c1002  ldmia r12, {r1,r12}
0c00cb58: e08ccfac  add r12, r12, r12, lsr #31
0c00cb5c: e1a0c0cc  mov r12, r12, asr #1
0c00cb60: e0422001  sub r2, r2, r1
0c00cb64: e0822fa2  add r2, r2, r2, lsr #31
0c00cb68: e1a020c2  mov r2, r2, asr #1
0c00cb6c: e04ee00c  sub lr, lr, r12
0c00cb70: e08eefae  add lr, lr, lr, lsr #31
0c00cb74: e1a0e0ce  mov lr, lr, asr #1
0c00cb78: e3a04606  mov r4, #0x600000
0c00cb7c: e594522c  ldr r5, [r4, #0x22c]
0c00cb80: e1a0a525  mov r10, r5, lsr #10
0c00cb84: e1a0a50a  mov r10, r10, lsl #10
0c00cb88: e0805002  add r5, r0, r2
0c00cb8c: e26570ff  rsb r7, r5, #0xff
0c00cb90: e2877c03  add r7, r7, #0x300
0c00cb94: e1a07b07  mov r7, r7, lsl #22
0c00cb98: e1a07b27  mov r7, r7, lsr #22
0c00cb9c: e18a7007  orr r7, r10, r7
0c00cba0: e3c77703  bic r7, r7, #0xc0000
0c00cba4: e3c77bff  bic r7, r7, #0x3fc00
0c00cba8: e0855001  add r5, r5, r1
0c00cbac: e265a0ff  rsb r10, r5, #0xff
0c00cbb0: e28aac03  add r10, r10, #0x300
0c00cbb4: e3a05601  mov r5, #0x100000
0c00cbb8: e2455b01  sub r5, r5, #0x400
0c00cbbc: e005a50a  and r10, r5, r10, lsl #10
0c00cbc0: e187700a  orr r7, r7, r10
0c00cbc4: e3a0a000  mov r10, #0x0
0c00cbc8: e52da004  str r10, [sp, #-0x4]!
0c00cbcc: e58da000  str r10, [sp, #0x0]
0c00cbd0: e59da000  ldr r10, [sp, #0x0]
0c00cbd4: e28aa001  add r10, r10, #0x1
0c00cbd8: e58da000  str r10, [sp, #0x0]
0c00cbdc: e35a0003  cmp r10, #0x3
0c00cbe0: bafffffa  blt 0x0c00cbd0
0c00cbe4: e584722c  str r7, [r4, #0x22c]
0c00cbe8: e3a07000  mov r7, #0x0
0c00cbec: e58d7000  str r7, [sp, #0x0]
0c00cbf0: e59d7000  ldr r7, [sp, #0x0]
0c00cbf4: e2877001  add r7, r7, #0x1
0c00cbf8: e58d7000  str r7, [sp, #0x0]
0c00cbfc: e3570003  cmp r7, #0x3
0c00cc00: bafffffa  blt 0x0c00cbf0
0c00cc04: e28dd004  add sp, sp, #0x4
0c00cc08: e5947238  ldr r7, [r4, #0x238]
0c00cc0c: e1a07527  mov r7, r7, lsr #10
0c00cc10: e1a07507  mov r7, r7, lsl #10
0c00cc14: e083300e  add r3, r3, lr
0c00cc18: e1a0e003  mov lr, r3
0c00cc1c: e263a0ff  rsb r10, r3, #0xff
0c00cc20: e28aac03  add r10, r10, #0x300
0c00cc24: e1a0ab0a  mov r10, r10, lsl #22
0c00cc28: e1a0ab2a  mov r10, r10, lsr #22
0c00cc2c: e187700a  orr r7, r7, r10
0c00cc30: e3c77703  bic r7, r7, #0xc0000
0c00cc34: e3c77bff  bic r7, r7, #0x3fc00
0c00cc38: e083300c  add r3, r3, r12
0c00cc3c: e263c0ff  rsb r12, r3, #0xff
0c00cc40: e28ccc03  add r12, r12, #0x300
0c00cc44: e005c50c  and r12, r5, r12, lsl #10
0c00cc48: e187c00c  orr r12, r7, r12
0c00cc4c: e3ccc607  bic r12, r12, #0x700000
0c00cc50: e38cc602  orr r12, r12, #0x200000
0c00cc54: e3a05000  mov r5, #0x0
0c00cc58: e52d5004  str r5, [sp, #-0x4]!
0c00cc5c: e58d5000  str r5, [sp, #0x0]
0c00cc60: e59d5000  ldr r5, [sp, #0x0]
0c00cc64: e2855001  add r5, r5, #0x1
0c00cc68: e58d5000  str r5, [sp, #0x0]
0c00cc6c: e3550003  cmp r5, #0x3
0c00cc70: bafffffa  blt 0x0c00cc60
0c00cc74: e5a4c238  str r12, [r4, #0x238]!
0c00cc78: e3a0c000  mov r12, #0x0
0c00cc7c: e58dc000  str r12, [sp, #0x0]
0c00cc80: e59dc000  ldr r12, [sp, #0x0]
0c00cc84: e28cc001  add r12, r12, #0x1
0c00cc88: e58dc000  str r12, [sp, #0x0]
0c00cc8c: e35c0003  cmp r12, #0x3
0c00cc90: bafffffa  blt 0x0c00cc80
0c00cc94: e28dd004  add sp, sp, #0x4
0c00cc98: e596c000  ldr r12, [r6, #0x0]
0c00cc9c: e31c0c01  tst r12, #0x100
0c00cca0: 091bacf0  ldmeqdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00cca4: e92d0008  stmdb sp!, {r3}
0c00cca8: e0800002  add r0, r0, r2
0c00ccac: e0803001  add r3, r0, r1
0c00ccb0: e1a0200e  mov r2, lr
0c00ccb4: e1a01000  mov r1, r0
0c00ccb8: e28f0f01  add r0, pc, #0x4
0c00ccbc: eb001407  bl 0x0c011ce0 <fn_0c011ce0>
0c00ccc0: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00ccc4: 6c657474  .asciz "letterbox (%d,%d)-(%d,%d)\n"
DoDGRqstVampire:
0c00cce0: e1a0c00d  mov r12, sp
0c00cce4: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c00cce8: e24cb004  sub r11, r12, #0x4
0c00ccec: e1a04000  mov r4, r0
0c00ccf0: e51f52ec  ldr r5, [pc, #-0x2ec] =0x0403f2fc
0c00ccf4: e5901000  ldr r1, [r0, #0x0]
0c00ccf8: e0850101  add r0, r5, r1, lsl #2
0c00ccfc: e2800a03  add r0, r0, #0x3000
0c00cd00: e5900004  ldr r0, [r0, #0x4]
0c00cd04: e590004c  ldr r0, [r0, #0x4c]
0c00cd08: e1300001  teq r0, r1
0c00cd0c: 0a00000b  beq 0x0c00cd40
0c00cd10: e1a06000  mov r6, r0
0c00cd14: e5950000  ldr r0, [r5, #0x0]
0c00cd18: e3100c01  tst r0, #0x100
0c00cd1c: 11a02006  movne r2, r6
0c00cd20: 128f0f54  addne r0, pc, #0x150
0c00cd24: 1b0013ed  blne 0x0c011ce0 <fn_0c011ce0>
0c00cd28: e0850106  add r0, r5, r6, lsl #2
0c00cd2c: e2800a03  add r0, r0, #0x3000
0c00cd30: e5900004  ldr r0, [r0, #0x4]
0c00cd34: e5b010ac  ldr r1, [r0, #0xac]!
0c00cd38: e2411001  sub r1, r1, #0x1
0c00cd3c: e5801000  str r1, [r0, #0x0]
0c00cd40: e5940004  ldr r0, [r4, #0x4]
0c00cd44: e5941000  ldr r1, [r4, #0x0]
0c00cd48: e1300001  teq r0, r1
0c00cd4c: 0a000019  beq 0x0c00cdb8
0c00cd50: e3500000  cmp r0, #0x0
0c00cd54: ba000001  blt 0x0c00cd60
0c00cd58: e3500007  cmp r0, #0x7
0c00cd5c: da000008  ble 0x0c00cd84
0c00cd60: e350001e  cmp r0, #0x1e
0c00cd64: ba000001  blt 0x0c00cd70
0c00cd68: e35000fd  cmp r0, #0xfd
0c00cd6c: da000004  ble 0x0c00cd84
0c00cd70: e59f1134  ldr r1, [pc, #0x134] =0x0c00b8dc
0c00cd74: e28f0f4d  add r0, pc, #0x134
0c00cd78: e3a020b2  mov r2, #0xb2
0c00cd7c: e2822c02  add r2, r2, #0x200
0c00cd80: eb0017dc  bl 0x0c012cf8 <fn_0c012cf8>
0c00cd84: e5950000  ldr r0, [r5, #0x0]
0c00cd88: e3100c01  tst r0, #0x100
0c00cd8c: 0a000002  beq 0x0c00cd9c
0c00cd90: e8940006  ldmia r4, {r1,r2}
0c00cd94: e28f0f4f  add r0, pc, #0x13c
0c00cd98: eb0013d0  bl 0x0c011ce0 <fn_0c011ce0>
0c00cd9c: e5940004  ldr r0, [r4, #0x4]
0c00cda0: e0850100  add r0, r5, r0, lsl #2
0c00cda4: e2800a03  add r0, r0, #0x3000
0c00cda8: e5900004  ldr r0, [r0, #0x4]
0c00cdac: e5b010ac  ldr r1, [r0, #0xac]!
0c00cdb0: e2811001  add r1, r1, #0x1
0c00cdb4: e5801000  str r1, [r0, #0x0]
0c00cdb8: e5941000  ldr r1, [r4, #0x0]
0c00cdbc: e0851101  add r1, r5, r1, lsl #2
0c00cdc0: e2811a03  add r1, r1, #0x3000
0c00cdc4: e5940004  ldr r0, [r4, #0x4]
0c00cdc8: e5911004  ldr r1, [r1, #0x4]
0c00cdcc: e5a1004c  str r0, [r1, #0x4c]!
0c00cdd0: e5940000  ldr r0, [r4, #0x0]
0c00cdd4: e0850100  add r0, r5, r0, lsl #2
0c00cdd8: e2800a03  add r0, r0, #0x3000
0c00cddc: e5900004  ldr r0, [r0, #0x4]
0c00cde0: e2801080  add r1, r0, #0x80
0c00cde4: e2840008  add r0, r4, #0x8
0c00cde8: e8901008  ldmia r0, {r3,r12}
0c00cdec: e8811008  stmia r1, {r3,r12}
0c00cdf0: e5941000  ldr r1, [r4, #0x0]
0c00cdf4: e0851101  add r1, r5, r1, lsl #2
0c00cdf8: e2811a03  add r1, r1, #0x3000
0c00cdfc: e5940010  ldr r0, [r4, #0x10]
0c00ce00: e5911004  ldr r1, [r1, #0x4]
0c00ce04: e5a100c0  str r0, [r1, #0xc0]!
0c00ce08: e5940000  ldr r0, [r4, #0x0]
0c00ce0c: e3300001  teq r0, #0x1
0c00ce10: 1a000005  bne 0x0c00ce2c
0c00ce14: e2850004  add r0, r5, #0x4
0c00ce18: e2800a03  add r0, r0, #0x3000
0c00ce1c: e5900004  ldr r0, [r0, #0x4]
0c00ce20: e590016c  ldr r0, [r0, #0x16c]
0c00ce24: e3100301  tst r0, #0x4000000
0c00ce28: 1bffff35  blne 0x0c00cb04 <fn_0c00cb04>
0c00ce2c: e3a00000  mov r0, #0x0
0c00ce30: e5941014  ldr r1, [r4, #0x14]
0c00ce34: e3310000  teq r1, #0x0
0c00ce38: 01a01000  moveq r1, r0
0c00ce3c: 13811001  orrne r1, r1, #0x1
0c00ce40: e5942000  ldr r2, [r4, #0x0]
0c00ce44: e0852102  add r2, r5, r2, lsl #2
0c00ce48: e2822a03  add r2, r2, #0x3000
0c00ce4c: e5922004  ldr r2, [r2, #0x4]
0c00ce50: e5a210c4  str r1, [r2, #0xc4]!
0c00ce54: e5941018  ldr r1, [r4, #0x18]
0c00ce58: e3310000  teq r1, #0x0
0c00ce5c: 13810001  orrne r0, r1, #0x1
0c00ce60: e5941000  ldr r1, [r4, #0x0]
0c00ce64: e0851101  add r1, r5, r1, lsl #2
0c00ce68: e2811a03  add r1, r1, #0x3000
0c00ce6c: e5911004  ldr r1, [r1, #0x4]
0c00ce70: e5a100c8  str r0, [r1, #0xc8]!
0c00ce74: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c00ce78: 52656d6f  .asciz "Removing chan %d from chan %d's list of parasites\n"
0c00ceac: 0c00b8dc  .word 0x0c00b8dc
0c00ceb0: 44474973  .asciz "DGIsLegalVoc( p->nSourceChannelNum )"
0c00ced8: 41646469  .asciz "Adding chan %d to chan %d's list of parasites\n"
DoDGRqstVampireAndFieldDominance:
0c00cf08: e5901000  ldr r1, [r0, #0x0]
0c00cf0c: e331001e  teq r1, #0x1e
0c00cf10: 1a00000b  bne 0x0c00cf44
0c00cf14: e59f1038  ldr r1, [pc, #0x38] =0x04042374
0c00cf18: e5911004  ldr r1, [r1, #0x4]
0c00cf1c: e5912088  ldr r2, [r1, #0x88]
0c00cf20: e3c2cc02  bic r12, r2, #0x200
0c00cf24: e5902010  ldr r2, [r0, #0x10]
0c00cf28: e3120102  tst r2, #0x80000000
0c00cf2c: 03a03000  moveq r3, #0x0
0c00cf30: 13a03001  movne r3, #0x1
0c00cf34: e3a02c02  mov r2, #0x200
0c00cf38: e0022483  and r2, r2, r3, lsl #9
0c00cf3c: e18c2002  orr r2, r12, r2
0c00cf40: e5a12088  str r2, [r1, #0x88]!
0c00cf44: e5901010  ldr r1, [r0, #0x10]
0c00cf48: e3c11102  bic r1, r1, #0x80000000
0c00cf4c: e5801010  str r1, [r0, #0x10]
0c00cf50: eaffff62  b 0x0c00cce0 <DoDGRqstVampire>
0c00cf54: 04042374  .word 0x04042374
DoDGRqstGetVampire:
0c00cf58: e1a0c00d  mov r12, sp
0c00cf5c: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00cf60: e24cb004  sub r11, r12, #0x4
0c00cf64: e51f1560  ldr r1, [pc, #-0x560] =0x0403f2fc
0c00cf68: e5902000  ldr r2, [r0, #0x0]
0c00cf6c: e0812102  add r2, r1, r2, lsl #2
0c00cf70: e2822a03  add r2, r2, #0x3000
0c00cf74: e5922004  ldr r2, [r2, #0x4]
0c00cf78: e592204c  ldr r2, [r2, #0x4c]
0c00cf7c: e52d2018  str r2, [sp, #-0x18]!
0c00cf80: e28d2004  add r2, sp, #0x4
0c00cf84: e5903000  ldr r3, [r0, #0x0]
0c00cf88: e0813103  add r3, r1, r3, lsl #2
0c00cf8c: e2833a03  add r3, r3, #0x3000
0c00cf90: e5933004  ldr r3, [r3, #0x4]
0c00cf94: e283e080  add lr, r3, #0x80
0c00cf98: e89e1008  ldmia lr, {r3,r12}
0c00cf9c: e8821008  stmia r2, {r3,r12}
0c00cfa0: e5902000  ldr r2, [r0, #0x0]
0c00cfa4: e0812102  add r2, r1, r2, lsl #2
0c00cfa8: e2822a03  add r2, r2, #0x3000
0c00cfac: e5922004  ldr r2, [r2, #0x4]
0c00cfb0: e59220c0  ldr r2, [r2, #0xc0]
0c00cfb4: e58d200c  str r2, [sp, #0xc]
0c00cfb8: e5902000  ldr r2, [r0, #0x0]
0c00cfbc: e0812102  add r2, r1, r2, lsl #2
0c00cfc0: e2822a03  add r2, r2, #0x3000
0c00cfc4: e5922004  ldr r2, [r2, #0x4]
0c00cfc8: e59220c4  ldr r2, [r2, #0xc4]
0c00cfcc: e58d2010  str r2, [sp, #0x10]
0c00cfd0: e5900000  ldr r0, [r0, #0x0]
0c00cfd4: e0810100  add r0, r1, r0, lsl #2
0c00cfd8: e2800a03  add r0, r0, #0x3000
0c00cfdc: e5900004  ldr r0, [r0, #0x4]
0c00cfe0: e59000c8  ldr r0, [r0, #0xc8]
0c00cfe4: e58d0014  str r0, [sp, #0x14]
0c00cfe8: e1a0100d  mov r1, sp
0c00cfec: e3a02018  mov r2, #0x18
0c00cff0: e3a00010  mov r0, #0x10
0c00cff4: ebffdf39  bl 0x0c004ce0 <fn_0c004ce0>
0c00cff8: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstChannelFieldDominance:
0c00cffc: e51f15f8  ldr r1, [pc, #-0x5f8] =0x0403f2fc
0c00d000: e5902000  ldr r2, [r0, #0x0]
0c00d004: e0811102  add r1, r1, r2, lsl #2
0c00d008: e2811a03  add r1, r1, #0x3000
0c00d00c: e5911004  ldr r1, [r1, #0x4]
0c00d010: e5912088  ldr r2, [r1, #0x88]
0c00d014: e3c22c02  bic r2, r2, #0x200
0c00d018: e5b03004  ldr r3, [r0, #0x4]!
0c00d01c: e3a00c02  mov r0, #0x200
0c00d020: e0000483  and r0, r0, r3, lsl #9
0c00d024: e1820000  orr r0, r2, r0
0c00d028: e5a10088  str r0, [r1, #0x88]!
0c00d02c: e1a0f00e  mov pc, lr
DoDGRqstGetChannelFieldDominance:
0c00d030: e1a0c00d  mov r12, sp
0c00d034: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00d038: e24cb004  sub r11, r12, #0x4
0c00d03c: e51f1638  ldr r1, [pc, #-0x638] =0x0403f2fc
0c00d040: e5900000  ldr r0, [r0, #0x0]
0c00d044: e0810100  add r0, r1, r0, lsl #2
0c00d048: e2800a03  add r0, r0, #0x3000
0c00d04c: e5900004  ldr r0, [r0, #0x4]
0c00d050: e5900088  ldr r0, [r0, #0x88]
0c00d054: e2000c02  and r0, r0, #0x200
0c00d058: e1a004a0  mov r0, r0, lsr #9
0c00d05c: e52d0004  str r0, [sp, #-0x4]!
0c00d060: e1a0100d  mov r1, sp
0c00d064: e3a02004  mov r2, #0x4
0c00d068: e3a00015  mov r0, #0x15
0c00d06c: ebffdf1b  bl 0x0c004ce0 <fn_0c004ce0>
0c00d070: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstResizeSyncType:
0c00d074: e5901004  ldr r1, [r0, #0x4]
0c00d078: e3310001  teq r1, #0x1
0c00d07c: 13a02000  movne r2, #0x0
0c00d080: 03a02001  moveq r2, #0x1
0c00d084: e51f1680  ldr r1, [pc, #-0x680] =0x0403f2fc
0c00d088: e5900000  ldr r0, [r0, #0x0]
0c00d08c: e0810100  add r0, r1, r0, lsl #2
0c00d090: e2800a03  add r0, r0, #0x3000
0c00d094: e5900004  ldr r0, [r0, #0x4]
0c00d098: e5a02170  str r2, [r0, #0x170]!
0c00d09c: e1a0f00e  mov pc, lr
0c00d0a0: e3a00000  mov r0, #0x0
0c00d0a4: e52d0004  str r0, [sp, #-0x4]!
0c00d0a8: e58d0000  str r0, [sp, #0x0]
0c00d0ac: e59d0000  ldr r0, [sp, #0x0]
0c00d0b0: e2800001  add r0, r0, #0x1
0c00d0b4: e58d0000  str r0, [sp, #0x0]
0c00d0b8: e3500003  cmp r0, #0x3
0c00d0bc: bafffffa  blt 0x0c00d0ac
0c00d0c0: e3a00001  mov r0, #0x1
0c00d0c4: e3a01606  mov r1, #0x600000
0c00d0c8: e5a10410  str r0, [r1, #0x410]!
0c00d0cc: e3a00000  mov r0, #0x0
0c00d0d0: e58d0000  str r0, [sp, #0x0]
0c00d0d4: e59d0000  ldr r0, [sp, #0x0]
0c00d0d8: e2800001  add r0, r0, #0x1
0c00d0dc: e58d0000  str r0, [sp, #0x0]
0c00d0e0: e3500003  cmp r0, #0x3
0c00d0e4: bafffffa  blt 0x0c00d0d4
0c00d0e8: e28dd004  add sp, sp, #0x4
0c00d0ec: e1a0f00e  mov pc, lr
fn_0c00d0f0:
0c00d0f0: e1a0c00d  mov r12, sp
0c00d0f4: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c00d0f8: e24cb004  sub r11, r12, #0x4
0c00d0fc: e3a00606  mov r0, #0x600000
0c00d100: e5900240  ldr r0, [r0, #0x240]
0c00d104: e3e04000  mvn r4, #0x0
0c00d108: e2000c07  and r0, r0, #0x700
0c00d10c: e1b05420  movs r5, r0, lsr #8
0c00d110: 4a000001  bmi 0x0c00d11c
0c00d114: e3550008  cmp r5, #0x8
0c00d118: ba000003  blt 0x0c00d12c
0c00d11c: e28f1f0f  add r1, pc, #0x3c
0c00d120: e28f0f12  add r0, pc, #0x48
0c00d124: e3a02036  mov r2, #0x36
0c00d128: eb0016f2  bl 0x0c012cf8 <fn_0c012cf8>
0c00d12c: e3550007  cmp r5, #0x7
0c00d130: 908ff105  addls pc, pc, r5, lsl #2
0c00d134: ea000007  b 0x0c00d158
0c00d138: ea000014  b 0x0c00d190
0c00d13c: ea000015  b 0x0c00d198
0c00d140: ea000004  b 0x0c00d158
0c00d144: ea000015  b 0x0c00d1a0
0c00d148: ea000002  b 0x0c00d158
0c00d14c: ea000013  b 0x0c00d1a0
0c00d150: ea000000  b 0x0c00d158
0c00d154: e3a04000  mov r4, #0x0
0c00d158: e1a00004  mov r0, r4
0c00d15c: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c00d160: 76696465  .asciz "video_util.c"
0c00d170: 286e524d  .asciz "(nRMPres >= 0) && (nRMPres < 8)"
0c00d190: e3a04004  mov r4, #0x4
0c00d194: eaffffef  b 0x0c00d158
0c00d198: e3a04002  mov r4, #0x2
0c00d19c: eaffffed  b 0x0c00d158
0c00d1a0: e3a04001  mov r4, #0x1
0c00d1a4: eaffffeb  b 0x0c00d158
fn_0c00d1a8:
0c00d1a8: e1a0c00d  mov r12, sp
0c00d1ac: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c00d1b0: e24cb004  sub r11, r12, #0x4
0c00d1b4: e1a04000  mov r4, r0
0c00d1b8: ebffffcc  bl 0x0c00d0f0 <fn_0c00d0f0>
0c00d1bc: e1a05000  mov r5, r0
0c00d1c0: e3340000  teq r4, #0x0
0c00d1c4: 01a04005  moveq r4, r5
0c00d1c8: e3740001  cmn r4, #0x1
0c00d1cc: 028f0f3f  addeq r0, pc, #0xfc
0c00d1d0: 0a000002  beq 0x0c00d1e0
0c00d1d4: e3340000  teq r4, #0x0
0c00d1d8: 1a000002  bne 0x0c00d1e8
0c00d1dc: e28f0f43  add r0, pc, #0x10c
0c00d1e0: eb0012be  bl 0x0c011ce0 <fn_0c011ce0>
0c00d1e4: e3a04001  mov r4, #0x1
0c00d1e8: e3340001  teq r4, #0x1
0c00d1ec: 03a06000  moveq r6, #0x0
0c00d1f0: 03a05003  moveq r5, #0x3
0c00d1f4: 0a000009  beq 0x0c00d220
0c00d1f8: e3340002  teq r4, #0x2
0c00d1fc: 0a000060  beq 0x0c00d384
0c00d200: e3340004  teq r4, #0x4
0c00d204: 03a06002  moveq r6, #0x2
0c00d208: 0a000061  beq 0x0c00d394
0c00d20c: e3a06000  mov r6, #0x0
0c00d210: e3a05003  mov r5, #0x3
0c00d214: e1a01004  mov r1, r4
0c00d218: e28f0f43  add r0, pc, #0x10c
0c00d21c: eb0012af  bl 0x0c011ce0 <fn_0c011ce0>
0c00d220: e59f0124  ldr r0, [pc, #0x124] =0x0403f2fc
0c00d224: e5900000  ldr r0, [r0, #0x0]
0c00d228: e3100010  tst r0, #0x10
0c00d22c: 0a000003  beq 0x0c00d240
0c00d230: e1a02005  mov r2, r5
0c00d234: e1a01004  mov r1, r4
0c00d238: e28f0f44  add r0, pc, #0x110
0c00d23c: eb0012a7  bl 0x0c011ce0 <fn_0c011ce0>
0c00d240: e3a00000  mov r0, #0x0
0c00d244: e52d0004  str r0, [sp, #-0x4]!
0c00d248: e58d0000  str r0, [sp, #0x0]
0c00d24c: e59d0000  ldr r0, [sp, #0x0]
0c00d250: e2800001  add r0, r0, #0x1
0c00d254: e58d0000  str r0, [sp, #0x0]
0c00d258: e3500003  cmp r0, #0x3
0c00d25c: bafffffa  blt 0x0c00d24c
0c00d260: e3a00606  mov r0, #0x600000
0c00d264: e580642c  str r6, [r0, #0x42c]
0c00d268: e3a01000  mov r1, #0x0
0c00d26c: e58d1000  str r1, [sp, #0x0]
0c00d270: e59d1000  ldr r1, [sp, #0x0]
0c00d274: e2811001  add r1, r1, #0x1
0c00d278: e58d1000  str r1, [sp, #0x0]
0c00d27c: e3510003  cmp r1, #0x3
0c00d280: bafffffa  blt 0x0c00d270
0c00d284: e3a010e0  mov r1, #0xe0
0c00d288: e0011285  and r1, r1, r5, lsl #5
0c00d28c: e3a02000  mov r2, #0x0
0c00d290: e58d2000  str r2, [sp, #0x0]
0c00d294: e58d2000  str r2, [sp, #0x0]
0c00d298: e59d2000  ldr r2, [sp, #0x0]
0c00d29c: e2822001  add r2, r2, #0x1
0c00d2a0: e58d2000  str r2, [sp, #0x0]
0c00d2a4: e3520003  cmp r2, #0x3
0c00d2a8: bafffffa  blt 0x0c00d298
0c00d2ac: e5a01240  str r1, [r0, #0x240]!
0c00d2b0: e3a00000  mov r0, #0x0
0c00d2b4: e58d0000  str r0, [sp, #0x0]
0c00d2b8: e59d0000  ldr r0, [sp, #0x0]
0c00d2bc: e2800001  add r0, r0, #0x1
0c00d2c0: e58d0000  str r0, [sp, #0x0]
0c00d2c4: e3500003  cmp r0, #0x3
0c00d2c8: bafffffa  blt 0x0c00d2b8
0c00d2cc: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c00d2d0: 44473a20  .asciz "DG: Illegal RM board stuffing\n"
0c00d2f0: 44473a20  .asciz "DG: No RM boards found in system, pretending there is one\n"
0c00d32c: 44473a20  .asciz "DG: Illegal number of rms: %d\n"
0c00d34c: 0403f2fc  .word 0x0403f2fc
0c00d350: 44473a20  .asciz "DG: Configuring DG and IMPs for %d RMS, RMGND=%d\n"
0c00d384: e3a06001  mov r6, #0x1
0c00d388: e3350002  teq r5, #0x2
0c00d38c: 13a05001  movne r5, #0x1
0c00d390: 1affffa2  bne 0x0c00d220
0c00d394: e3a05000  mov r5, #0x0
0c00d398: eaffffa0  b 0x0c00d220
dgIsVocPresent:
0c00d39c: e3500000  cmp r0, #0x0
0c00d3a0: ba000001  blt 0x0c00d3ac
0c00d3a4: e3500007  cmp r0, #0x7
0c00d3a8: da000005  ble 0x0c00d3c4
0c00d3ac: e350001e  cmp r0, #0x1e
0c00d3b0: ba000001  blt 0x0c00d3bc
0c00d3b4: e35000fd  cmp r0, #0xfd
0c00d3b8: da000001  ble 0x0c00d3c4
0c00d3bc: e3a00000  mov r0, #0x0
0c00d3c0: e1a0f00e  mov pc, lr
0c00d3c4: e3a01000  mov r1, #0x0
0c00d3c8: e52d1004  str r1, [sp, #-0x4]!
0c00d3cc: e58d1000  str r1, [sp, #0x0]
0c00d3d0: e59d1000  ldr r1, [sp, #0x0]
0c00d3d4: e2811001  add r1, r1, #0x1
0c00d3d8: e58d1000  str r1, [sp, #0x0]
0c00d3dc: e3510003  cmp r1, #0x3
0c00d3e0: bafffffa  blt 0x0c00d3d0
0c00d3e4: e2802ffa  add r2, r0, #0x3e8
0c00d3e8: e59f1080  ldr r1, [pc, #0x80] =0x006008c4
0c00d3ec: e7812500  str r2, [r1, r0, lsl #10]
0c00d3f0: e3a02000  mov r2, #0x0
0c00d3f4: e58d2000  str r2, [sp, #0x0]
0c00d3f8: e59d2000  ldr r2, [sp, #0x0]
0c00d3fc: e2822001  add r2, r2, #0x1
0c00d400: e58d2000  str r2, [sp, #0x0]
0c00d404: e3520003  cmp r2, #0x3
0c00d408: bafffffa  blt 0x0c00d3f8
0c00d40c: e3a02000  mov r2, #0x0
0c00d410: e58d2000  str r2, [sp, #0x0]
0c00d414: e58d2000  str r2, [sp, #0x0]
0c00d418: e59d2000  ldr r2, [sp, #0x0]
0c00d41c: e2822001  add r2, r2, #0x1
0c00d420: e58d2000  str r2, [sp, #0x0]
0c00d424: e3520003  cmp r2, #0x3
0c00d428: bafffffa  blt 0x0c00d418
0c00d42c: e3a02000  mov r2, #0x0
0c00d430: e59f303c  ldr r3, [pc, #0x3c] =0x006008c8
0c00d434: e7832500  str r2, [r3, r0, lsl #10]
0c00d438: e3a03000  mov r3, #0x0
0c00d43c: e58d3000  str r3, [sp, #0x0]
0c00d440: e59d3000  ldr r3, [sp, #0x0]
0c00d444: e2833001  add r3, r3, #0x1
0c00d448: e58d3000  str r3, [sp, #0x0]
0c00d44c: e3530003  cmp r3, #0x3
0c00d450: bafffffa  blt 0x0c00d440
0c00d454: e28dd004  add sp, sp, #0x4
0c00d458: e7911500  ldr r1, [r1, r0, lsl #10]
0c00d45c: e2411ffa  sub r1, r1, #0x3e8
0c00d460: e1310000  teq r1, r0
0c00d464: 11a00002  movne r0, r2
0c00d468: 03a00001  moveq r0, #0x1
0c00d46c: e1a0f00e  mov pc, lr
0c00d470: 006008c4  .word 0x006008c4
0c00d474: 006008c8  .word 0x006008c8
fn_0c00d478:
0c00d478: e1a0c00d  mov r12, sp
0c00d47c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00d480: e24cb004  sub r11, r12, #0x4
0c00d484: e1a05000  mov r5, r0
0c00d488: e1a04001  mov r4, r1
0c00d48c: e51f0148  ldr r0, [pc, #-0x148] =0x0403f2fc
0c00d490: e3a06000  mov r6, #0x0
0c00d494: e3a07001  mov r7, #0x1
0c00d498: e5b0a004  ldr r10, [r0, #0x4]!
0c00d49c: e11a0617  tst r10, r7, lsl r6
0c00d4a0: 11a01004  movne r1, r4
0c00d4a4: 11a00006  movne r0, r6
0c00d4a8: 11a0e00f  movne lr, pc
0c00d4ac: 11a0f005  movne pc, r5
0c00d4b0: e2866001  add r6, r6, #0x1
0c00d4b4: e3560007  cmp r6, #0x7
0c00d4b8: dafffff7  ble 0x0c00d49c
0c00d4bc: e51f0178  ldr r0, [pc, #-0x178] =0x0403f2fc
0c00d4c0: e3a0601e  mov r6, #0x1e
0c00d4c4: e5b0a008  ldr r10, [r0, #0x8]!
0c00d4c8: e246001e  sub r0, r6, #0x1e
0c00d4cc: e11a0017  tst r10, r7, lsl r0
0c00d4d0: 11a01004  movne r1, r4
0c00d4d4: 11a00006  movne r0, r6
0c00d4d8: 11a0e00f  movne lr, pc
0c00d4dc: 11a0f005  movne pc, r5
0c00d4e0: e2866001  add r6, r6, #0x1
0c00d4e4: e35600fd  cmp r6, #0xfd
0c00d4e8: dafffff6  ble 0x0c00d4c8
0c00d4ec: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
dgResetVocFifo:
0c00d4f0: e3a01001  mov r1, #0x1
0c00d4f4: e2811c23  add r1, r1, #0x2300
0c00d4f8: e3a02000  mov r2, #0x0
0c00d4fc: e52d2004  str r2, [sp, #-0x4]!
0c00d500: e58d2000  str r2, [sp, #0x0]
0c00d504: e59d2000  ldr r2, [sp, #0x0]
0c00d508: e2822001  add r2, r2, #0x1
0c00d50c: e58d2000  str r2, [sp, #0x0]
0c00d510: e3520003  cmp r2, #0x3
0c00d514: bafffffa  blt 0x0c00d504
0c00d518: e59f2024  ldr r2, [pc, #0x24] =0x00600a28
0c00d51c: e7821500  str r1, [r2, r0, lsl #10]
0c00d520: e3a00000  mov r0, #0x0
0c00d524: e58d0000  str r0, [sp, #0x0]
0c00d528: e59d0000  ldr r0, [sp, #0x0]
0c00d52c: e2800001  add r0, r0, #0x1
0c00d530: e58d0000  str r0, [sp, #0x0]
0c00d534: e3500003  cmp r0, #0x3
0c00d538: bafffffa  blt 0x0c00d528
0c00d53c: e28dd004  add sp, sp, #0x4
0c00d540: e1a0f00e  mov pc, lr
0c00d544: 00600a28  .word 0x00600a28
DoDGRqstDebugMask:
0c00d548: e5900000  ldr r0, [r0, #0x0]
0c00d54c: e51f1208  ldr r1, [pc, #-0x208] =0x0403f2fc
0c00d550: e5810000  str r0, [r1, #0x0]
0c00d554: e1a01000  mov r1, r0
0c00d558: e28f0f00  add r0, pc, #0x0
0c00d55c: ea0011df  b 0x0c011ce0 <fn_0c011ce0>
0c00d560: 44473a20  .asciz "DG: debug mask = 0x%08x\n"
DoDGRqstSetupFrameBuffer:
0c00d57c: e1a0c00d  mov r12, sp
0c00d580: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00d584: e24cb004  sub r11, r12, #0x4
0c00d588: e1a04000  mov r4, r0
0c00d58c: e24dd004  sub sp, sp, #0x4
0c00d590: e3a0a000  mov r10, #0x0
0c00d594: e5900000  ldr r0, [r0, #0x0]
0c00d598: e280109f  add r1, r0, #0x9f
0c00d59c: e3a000a0  mov r0, #0xa0
0c00d5a0: eb002898  bl 0x0c017808 <__rt_sdiv>
0c00d5a4: e59f5110  ldr r5, [pc, #0x110] =0x040422fc
0c00d5a8: e5850424  str r0, [r5, #0x424]
0c00d5ac: e5941004  ldr r1, [r4, #0x4]
0c00d5b0: e0000091  mul r0, r1, r0
0c00d5b4: e0800100  add r0, r0, r0, lsl #2
0c00d5b8: e1a00280  mov r0, r0, lsl #5
0c00d5bc: e3a01606  mov r1, #0x600000
0c00d5c0: e591142c  ldr r1, [r1, #0x42c]
0c00d5c4: e3310000  teq r1, #0x0
0c00d5c8: 03a0a001  moveq r10, #0x1
0c00d5cc: 0a000004  beq 0x0c00d5e4
0c00d5d0: e3310001  teq r1, #0x1
0c00d5d4: 03a0a002  moveq r10, #0x2
0c00d5d8: 0a000001  beq 0x0c00d5e4
0c00d5dc: e3310002  teq r1, #0x2
0c00d5e0: 03a0a004  moveq r10, #0x4
0c00d5e4: e59f10d4  ldr r1, [pc, #0xd4] =0x0406f70c
0c00d5e8: e5911000  ldr r1, [r1, #0x0]
0c00d5ec: e58d1000  str r1, [sp, #0x0]
0c00d5f0: e59f70cc  ldr r7, [pc, #0xcc] =0x04042734
0c00d5f4: e3310006  teq r1, #0x6
0c00d5f8: 0a000057  beq 0x0c00d75c
0c00d5fc: e08a110a  add r1, r10, r10, lsl #2
0c00d600: e1a01b01  mov r1, r1, lsl #22
0c00d604: eb00287f  bl 0x0c017808 <__rt_sdiv>
0c00d608: e1a06000  mov r6, r0
0c00d60c: e59d0000  ldr r0, [sp, #0x0]
0c00d610: e3300002  teq r0, #0x2
0c00d614: 1a000054  bne 0x0c00d76c
0c00d618: e35a0002  cmp r10, #0x2
0c00d61c: da000005  ble 0x0c00d638
0c00d620: e1a0100a  mov r1, r10
0c00d624: e28f0f27  add r0, pc, #0x9c
0c00d628: eb0011ac  bl 0x0c011ce0 <fn_0c011ce0>
0c00d62c: e5971000  ldr r1, [r7, #0x0]
0c00d630: e3811201  orr r1, r1, #0x10000000
0c00d634: e5871000  str r1, [r7, #0x0]
0c00d638: e0866fa6  add r6, r6, r6, lsr #31
0c00d63c: e1a060c6  mov r6, r6, asr #1
0c00d640: e3560004  cmp r6, #0x4
0c00d644: aa000004  bge 0x0c00d65c
0c00d648: e28f0f28  add r0, pc, #0xa0
0c00d64c: eb0011a3  bl 0x0c011ce0 <fn_0c011ce0>
0c00d650: e5971000  ldr r1, [r7, #0x0]
0c00d654: e3811201  orr r1, r1, #0x10000000
0c00d658: e5871000  str r1, [r7, #0x0]
0c00d65c: e5940008  ldr r0, [r4, #0x8]
0c00d660: e2801002  add r1, r0, #0x2
0c00d664: e3510005  cmp r1, #0x5
0c00d668: 908ff101  addls pc, pc, r1, lsl #2
0c00d66c: ea00009f  b 0x0c00d8f0
0c00d670: ea0000a1  b 0x0c00d8fc
0c00d674: ea000097  b 0x0c00d8d8
0c00d678: ea0000b2  b 0x0c00d948
0c00d67c: ea0000cb  b 0x0c00d9b0
0c00d680: ea00009a  b 0x0c00d8f0
0c00d684: e51f2340  ldr r2, [pc, #-0x340] =0x0403f2fc
0c00d688: e5971000  ldr r1, [r7, #0x0]
0c00d68c: e3811201  orr r1, r1, #0x10000000
0c00d690: e3a00003  mov r0, #0x3
0c00d694: e5871000  str r1, [r7, #0x0]
0c00d698: e5850428  str r0, [r5, #0x428]
0c00d69c: e5920000  ldr r0, [r2, #0x0]
0c00d6a0: e3100010  tst r0, #0x10
0c00d6a4: 11a01006  movne r1, r6
0c00d6a8: 128f0f1b  addne r0, pc, #0x6c
0c00d6ac: 1b00118b  blne 0x0c011ce0 <fn_0c011ce0>
0c00d6b0: e3560004  cmp r6, #0x4
0c00d6b4: aa00004b  bge 0x0c00d7e8
0c00d6b8: ea000047  b 0x0c00d7dc
0c00d6bc: 040422fc  .word 0x040422fc
0c00d6c0: 0406f70c  .word 0x0406f70c
0c00d6c4: 04042734  .word 0x04042734
0c00d6c8: 5741524e  .asciz "WARNING: detected %d RMs in HILO_LITE!\n"
0c00d6f0: 5741524e  .asciz "WARNING: not enough RMs for XSMALL pixels!\n"
0c00d71c: 5741524e  .asciz "WARNING: ramboing XSMALL (words/pixel = %d, should be >= 4)\n"
0c00d75c: e1a01b8a  mov r1, r10, lsl #23
0c00d760: eb002828  bl 0x0c017808 <__rt_sdiv>
0c00d764: e0806100  add r6, r0, r0, lsl #2
0c00d768: e1a06206  mov r6, r6, lsl #4
0c00d76c: e3560008  cmp r6, #0x8
0c00d770: aa000004  bge 0x0c00d788
0c00d774: e28f0f30  add r0, pc, #0xc0
0c00d778: eb001158  bl 0x0c011ce0 <fn_0c011ce0>
0c00d77c: e5971000  ldr r1, [r7, #0x0]
0c00d780: e3811201  orr r1, r1, #0x10000000
0c00d784: e5871000  str r1, [r7, #0x0]
0c00d788: e5940008  ldr r0, [r4, #0x8]
0c00d78c: e2801002  add r1, r0, #0x2
0c00d790: e3a0a002  mov r10, #0x2
0c00d794: e3510005  cmp r1, #0x5
0c00d798: 908ff101  addls pc, pc, r1, lsl #2
0c00d79c: ea0000a5  b 0x0c00da38
0c00d7a0: ea0000a7  b 0x0c00da44
0c00d7a4: ea00009c  b 0x0c00da1c
0c00d7a8: ea0000ad  b 0x0c00da64
0c00d7ac: ea0000b7  b 0x0c00da90
0c00d7b0: ea0000c1  b 0x0c00dabc
0c00d7b4: e3a00003  mov r0, #0x3
0c00d7b8: e51f1474  ldr r1, [pc, #-0x474] =0x0403f2fc
0c00d7bc: e5850428  str r0, [r5, #0x428]
0c00d7c0: e5910000  ldr r0, [r1, #0x0]
0c00d7c4: e3100010  tst r0, #0x10
0c00d7c8: 11a01006  movne r1, r6
0c00d7cc: 128f0f25  addne r0, pc, #0x94
0c00d7d0: 1b001142  blne 0x0c011ce0 <fn_0c011ce0>
0c00d7d4: e3560040  cmp r6, #0x40
0c00d7d8: aa000002  bge 0x0c00d7e8
0c00d7dc: e5971000  ldr r1, [r7, #0x0]
0c00d7e0: e3811201  orr r1, r1, #0x10000000
0c00d7e4: e5871000  str r1, [r7, #0x0]
0c00d7e8: e5940000  ldr r0, [r4, #0x0]
0c00d7ec: e5c80041  strb r0, [r8, #0x41]
0c00d7f0: e1a00440  mov r0, r0, asr #8
0c00d7f4: e5c80040  strb r0, [r8, #0x40]
0c00d7f8: e5940004  ldr r0, [r4, #0x4]
0c00d7fc: e5c80043  strb r0, [r8, #0x43]
0c00d800: e1a00440  mov r0, r0, asr #8
0c00d804: e5c80042  strb r0, [r8, #0x42]
0c00d808: e51f04c4  ldr r0, [pc, #-0x4c4] =0x0403f2fc
0c00d80c: e5951428  ldr r1, [r5, #0x428]
0c00d810: e5c81045  strb r1, [r8, #0x45]
0c00d814: e1a01441  mov r1, r1, asr #8
0c00d818: e5c81044  strb r1, [r8, #0x44]
0c00d81c: e5900000  ldr r0, [r0, #0x0]
0c00d820: e3100010  tst r0, #0x10
0c00d824: 0a000003  beq 0x0c00d838
0c00d828: e5b52428  ldr r2, [r5, #0x428]!
0c00d82c: e5941000  ldr r1, [r4, #0x0]
0c00d830: e28f0f1c  add r0, pc, #0x70
0c00d834: eb001129  bl 0x0c011ce0 <fn_0c011ce0>
0c00d838: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00d83c: 5741524e  .asciz "WARNING: not enough RMs for SMALL pixels!\n"
0c00d868: 5741524e  .asciz "WARNING: ramboing XLARGE (words/pixel = %d, should be >= 64)\n"
0c00d8a8: 44473a20  .asciz "DG: SetupFrameBuffer MAW = %d, pix size = %d\n"
0c00d8d8: e3a00003  mov r0, #0x3
0c00d8dc: e3560008  cmp r6, #0x8
0c00d8e0: e5850428  str r0, [r5, #0x428]
0c00d8e4: baffffbf  blt 0x0c00d7e8
0c00d8e8: e3a00000  mov r0, #0x0
0c00d8ec: ea00004f  b 0x0c00da30
0c00d8f0: e1a01000  mov r1, r0
0c00d8f4: e28f0f07  add r0, pc, #0x1c
0c00d8f8: eb0010f8  bl 0x0c011ce0 <fn_0c011ce0>
0c00d8fc: e3560010  cmp r6, #0x10
0c00d900: a3a00001  movge r0, #0x1
0c00d904: a5850428  strge r0, [r5, #0x428]
0c00d908: e3560008  cmp r6, #0x8
0c00d90c: aafffff5  bge 0x0c00d8e8
0c00d910: e3a00003  mov r0, #0x3
0c00d914: ea000045  b 0x0c00da30
0c00d918: 5741524e  .asciz "WARNING: illegal pixel depth %d, using DEEPEST\n"
0c00d948: e3a00000  mov r0, #0x0
0c00d94c: e51f1608  ldr r1, [pc, #-0x608] =0x0403f2fc
0c00d950: e5850428  str r0, [r5, #0x428]
0c00d954: e5910000  ldr r0, [r1, #0x0]
0c00d958: e3100010  tst r0, #0x10
0c00d95c: 11a01006  movne r1, r6
0c00d960: 128f0f03  addne r0, pc, #0xc
0c00d964: 1b0010dd  blne 0x0c011ce0 <fn_0c011ce0>
0c00d968: e3560008  cmp r6, #0x8
0c00d96c: aaffff9d  bge 0x0c00d7e8
0c00d970: eaffff99  b 0x0c00d7dc
0c00d974: 5741524e  .asciz "WARNING: ramboing SMALL (words/pixel = %d, should be >= 8)\n"
0c00d9b0: e3a00001  mov r0, #0x1
0c00d9b4: e51f1670  ldr r1, [pc, #-0x670] =0x0403f2fc
0c00d9b8: e5850428  str r0, [r5, #0x428]
0c00d9bc: e5910000  ldr r0, [r1, #0x0]
0c00d9c0: e3100010  tst r0, #0x10
0c00d9c4: 11a01006  movne r1, r6
0c00d9c8: 128f0f03  addne r0, pc, #0xc
0c00d9cc: 1b0010c3  blne 0x0c011ce0 <fn_0c011ce0>
0c00d9d0: e3560010  cmp r6, #0x10
0c00d9d4: aaffff83  bge 0x0c00d7e8
0c00d9d8: eaffff7f  b 0x0c00d7dc
0c00d9dc: 5741524e  .asciz "WARNING: ramboing MEDIUM (words/pixel = %d, should be >= 16)\n"
0c00da1c: e3a00000  mov r0, #0x0
0c00da20: e3560010  cmp r6, #0x10
0c00da24: e5850428  str r0, [r5, #0x428]
0c00da28: baffff6e  blt 0x0c00d7e8
0c00da2c: e3a00001  mov r0, #0x1
0c00da30: e5850428  str r0, [r5, #0x428]
0c00da34: eaffff6b  b 0x0c00d7e8
0c00da38: e1a01000  mov r1, r0
0c00da3c: e24f0f4b  sub r0, pc, #0x12c
0c00da40: eb0010a6  bl 0x0c011ce0 <fn_0c011ce0>
0c00da44: e3560040  cmp r6, #0x40
0c00da48: aaffffb0  bge 0x0c00d910
0c00da4c: e3560020  cmp r6, #0x20
0c00da50: a585a428  strge r10, [r5, #0x428]
0c00da54: aaffff63  bge 0x0c00d7e8
0c00da58: e3560010  cmp r6, #0x10
0c00da5c: baffffa1  blt 0x0c00d8e8
0c00da60: eafffff1  b 0x0c00da2c
0c00da64: e3a00000  mov r0, #0x0
0c00da68: e51f1724  ldr r1, [pc, #-0x724] =0x0403f2fc
0c00da6c: e5850428  str r0, [r5, #0x428]
0c00da70: e5910000  ldr r0, [r1, #0x0]
0c00da74: e3100010  tst r0, #0x10
0c00da78: 11a01006  movne r1, r6
0c00da7c: 124f0f44  subne r0, pc, #0x110
0c00da80: 1b001096  blne 0x0c011ce0 <fn_0c011ce0>
0c00da84: e3560008  cmp r6, #0x8
0c00da88: aaffff56  bge 0x0c00d7e8
0c00da8c: eaffff52  b 0x0c00d7dc
0c00da90: e3a00001  mov r0, #0x1
0c00da94: e51f1750  ldr r1, [pc, #-0x750] =0x0403f2fc
0c00da98: e5850428  str r0, [r5, #0x428]
0c00da9c: e5910000  ldr r0, [r1, #0x0]
0c00daa0: e3100010  tst r0, #0x10
0c00daa4: 11a01006  movne r1, r6
0c00daa8: 124f0f35  subne r0, pc, #0xd4
0c00daac: 1b00108b  blne 0x0c011ce0 <fn_0c011ce0>
0c00dab0: e3560010  cmp r6, #0x10
0c00dab4: aaffff4b  bge 0x0c00d7e8
0c00dab8: eaffff47  b 0x0c00d7dc
0c00dabc: e51f0778  ldr r0, [pc, #-0x778] =0x0403f2fc
0c00dac0: e585a428  str r10, [r5, #0x428]
0c00dac4: e5900000  ldr r0, [r0, #0x0]
0c00dac8: e3100010  tst r0, #0x10
0c00dacc: 11a01006  movne r1, r6
0c00dad0: 128f0f03  addne r0, pc, #0xc
0c00dad4: 1b001081  blne 0x0c011ce0 <fn_0c011ce0>
0c00dad8: e3560020  cmp r6, #0x20
0c00dadc: aaffff41  bge 0x0c00d7e8
0c00dae0: eaffff3d  b 0x0c00d7dc
0c00dae4: 5741524e  .asciz "WARNING: ramboing LARGE (words/pixel = %d, should be >= 32)\n"
DoDGRqstInputSync:
0c00db24: e1a0c00d  mov r12, sp
0c00db28: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c00db2c: e24cb004  sub r11, r12, #0x4
0c00db30: e1a04000  mov r4, r0
0c00db34: e5900000  ldr r0, [r0, #0x0]
0c00db38: e3500000  cmp r0, #0x0
0c00db3c: ba000001  blt 0x0c00db48
0c00db40: e3500003  cmp r0, #0x3
0c00db44: da000004  ble 0x0c00db5c
0c00db48: e59f106c  ldr r1, [pc, #0x6c] =0x0c00d160
0c00db4c: e28f0f1b  add r0, pc, #0x6c
0c00db50: e3a02072  mov r2, #0x72
0c00db54: e2822c01  add r2, r2, #0x100
0c00db58: eb001466  bl 0x0c012cf8 <fn_0c012cf8>
0c00db5c: e3a00606  mov r0, #0x600000
0c00db60: e590122c  ldr r1, [r0, #0x22c]
0c00db64: e3c11603  bic r1, r1, #0x300000
0c00db68: e3a03603  mov r3, #0x300000
0c00db6c: e5942000  ldr r2, [r4, #0x0]
0c00db70: e0032a02  and r2, r3, r2, lsl #20
0c00db74: e1811002  orr r1, r1, r2
0c00db78: e3a02000  mov r2, #0x0
0c00db7c: e52d2004  str r2, [sp, #-0x4]!
0c00db80: e58d2000  str r2, [sp, #0x0]
0c00db84: e59d2000  ldr r2, [sp, #0x0]
0c00db88: e2822001  add r2, r2, #0x1
0c00db8c: e58d2000  str r2, [sp, #0x0]
0c00db90: e3520003  cmp r2, #0x3
0c00db94: bafffffa  blt 0x0c00db84
0c00db98: e5a0122c  str r1, [r0, #0x22c]!
0c00db9c: e3a00000  mov r0, #0x0
0c00dba0: e58d0000  str r0, [sp, #0x0]
0c00dba4: e59d0000  ldr r0, [sp, #0x0]
0c00dba8: e2800001  add r0, r0, #0x1
0c00dbac: e58d0000  str r0, [sp, #0x0]
0c00dbb0: e3500003  cmp r0, #0x3
0c00dbb4: bafffffa  blt 0x0c00dba4
0c00dbb8: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c00dbbc: 0c00d160  .word 0x0c00d160
0c00dbc0: 28702d3e  .asciz "(p->nInputSync >= FM_XWINDOW_SYNC_SEL_NTSC_OR_PAL_INPUT) && (p->nInputSync <= FM_XWINDOW_SYNC_SEL_COARSE_LEVEL_INPUT)"
DoDGRqstGetInputSync:
0c00dc38: e1a0c00d  mov r12, sp
0c00dc3c: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00dc40: e24cb004  sub r11, r12, #0x4
0c00dc44: e3a00606  mov r0, #0x600000
0c00dc48: e590022c  ldr r0, [r0, #0x22c]
0c00dc4c: e2000603  and r0, r0, #0x300000
0c00dc50: e1a00a20  mov r0, r0, lsr #20
0c00dc54: e52d0004  str r0, [sp, #-0x4]!
0c00dc58: e1a0100d  mov r1, sp
0c00dc5c: e3a02004  mov r2, #0x4
0c00dc60: e3a00002  mov r0, #0x2
0c00dc64: ebffdc1d  bl 0x0c004ce0 <fn_0c004ce0>
0c00dc68: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstBoardResetRatio:
0c00dc6c: e1a0c00d  mov r12, sp
0c00dc70: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c00dc74: e24cb004  sub r11, r12, #0x4
0c00dc78: e1a04000  mov r4, r0
0c00dc7c: e5900000  ldr r0, [r0, #0x0]
0c00dc80: e3300000  teq r0, #0x0
0c00dc84: 13300001  teqne r0, #0x1
0c00dc88: 0a000004  beq 0x0c00dca0
0c00dc8c: e51f10d8  ldr r1, [pc, #-0xd8] =0x0c00d160
0c00dc90: e28f0f1a  add r0, pc, #0x68
0c00dc94: e3a0208f  mov r2, #0x8f
0c00dc98: e2822c01  add r2, r2, #0x100
0c00dc9c: eb001415  bl 0x0c012cf8 <fn_0c012cf8>
0c00dca0: e3a00606  mov r0, #0x600000
0c00dca4: e590122c  ldr r1, [r0, #0x22c]
0c00dca8: e3c11501  bic r1, r1, #0x400000
0c00dcac: e3a03501  mov r3, #0x400000
0c00dcb0: e5942000  ldr r2, [r4, #0x0]
0c00dcb4: e0032b02  and r2, r3, r2, lsl #22
0c00dcb8: e1811002  orr r1, r1, r2
0c00dcbc: e3a02000  mov r2, #0x0
0c00dcc0: e52d2004  str r2, [sp, #-0x4]!
0c00dcc4: e58d2000  str r2, [sp, #0x0]
0c00dcc8: e59d2000  ldr r2, [sp, #0x0]
0c00dccc: e2822001  add r2, r2, #0x1
0c00dcd0: e58d2000  str r2, [sp, #0x0]
0c00dcd4: e3520003  cmp r2, #0x3
0c00dcd8: bafffffa  blt 0x0c00dcc8
0c00dcdc: e5a0122c  str r1, [r0, #0x22c]!
0c00dce0: e3a00000  mov r0, #0x0
0c00dce4: e58d0000  str r0, [sp, #0x0]
0c00dce8: e59d0000  ldr r0, [sp, #0x0]
0c00dcec: e2800001  add r0, r0, #0x1
0c00dcf0: e58d0000  str r0, [sp, #0x0]
0c00dcf4: e3500003  cmp r0, #0x3
0c00dcf8: bafffffa  blt 0x0c00dce8
0c00dcfc: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c00dd00: 28702d3e  .asciz "(p->nSkip == DG_FIELD_DOM_EVEN) || (p->nSkip == DG_FIELD_DOM_ODD)"
DoDGRqstGetBoardResetRatio:
0c00dd44: e1a0c00d  mov r12, sp
0c00dd48: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00dd4c: e24cb004  sub r11, r12, #0x4
0c00dd50: e3a00606  mov r0, #0x600000
0c00dd54: e590022c  ldr r0, [r0, #0x22c]
0c00dd58: e2000501  and r0, r0, #0x400000
0c00dd5c: e1a00b20  mov r0, r0, lsr #22
0c00dd60: e52d0004  str r0, [sp, #-0x4]!
0c00dd64: e1a0100d  mov r1, sp
0c00dd68: e3a02004  mov r2, #0x4
0c00dd6c: e3a00016  mov r0, #0x16
0c00dd70: ebffdbda  bl 0x0c004ce0 <fn_0c004ce0>
0c00dd74: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstHPhase:
0c00dd78: e5902004  ldr r2, [r0, #0x4]
0c00dd7c: e51f1a38  ldr r1, [pc, #-0xa38] =0x0403f2fc
0c00dd80: e5900000  ldr r0, [r0, #0x0]
0c00dd84: e0810100  add r0, r1, r0, lsl #2
0c00dd88: e2800a03  add r0, r0, #0x3000
0c00dd8c: e5900004  ldr r0, [r0, #0x4]
0c00dd90: e5a02158  str r2, [r0, #0x158]!
0c00dd94: e5910000  ldr r0, [r1, #0x0]
0c00dd98: e3100b01  tst r0, #0x400
0c00dd9c: 128f0f01  addne r0, pc, #0x4
0c00dda0: 1a000fce  bne 0x0c011ce0 <fn_0c011ce0>
0c00dda4: e1a0f00e  mov pc, lr
0c00dda8: 48506861  .asciz "HPhase not yet implemented correctly!\n"
DoDGRqstGetHPhase:
0c00ddd0: e1a0c00d  mov r12, sp
0c00ddd4: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c00ddd8: e24cb004  sub r11, r12, #0x4
0c00dddc: e1a04000  mov r4, r0
0c00dde0: e24dd004  sub sp, sp, #0x4
0c00dde4: e51f5aa0  ldr r5, [pc, #-0xaa0] =0x0403f2fc
0c00dde8: e5950000  ldr r0, [r5, #0x0]
0c00ddec: e3100b01  tst r0, #0x400
0c00ddf0: 128f0f0b  addne r0, pc, #0x2c
0c00ddf4: 1b000fb9  blne 0x0c011ce0 <fn_0c011ce0>
0c00ddf8: e5940000  ldr r0, [r4, #0x0]
0c00ddfc: e0850100  add r0, r5, r0, lsl #2
0c00de00: e2800a03  add r0, r0, #0x3000
0c00de04: e5900004  ldr r0, [r0, #0x4]
0c00de08: e5900158  ldr r0, [r0, #0x158]
0c00de0c: e58d0000  str r0, [sp, #0x0]
0c00de10: e1a0100d  mov r1, sp
0c00de14: e3a02004  mov r2, #0x4
0c00de18: e3a00003  mov r0, #0x3
0c00de1c: ebffdbaf  bl 0x0c004ce0 <fn_0c004ce0>
0c00de20: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c00de24: 47657448  .asciz "GetHPhase not yet implemented correctly!\n"
0c00de50: e92d4010  stmdb sp!, {r4,lr}
0c00de54: e3a03e82  mov r3, #0x820
0c00de58: e2833606  add r3, r3, #0x600000
0c00de5c: e5912000  ldr r2, [r1, #0x0]
0c00de60: e7931500  ldr r1, [r3, r0, lsl #10]
0c00de64: e3c1433f  bic r4, r1, #0xfc000000
0c00de68: e3c44c1f  bic r4, r4, #0x1f00
0c00de6c: e3c440ff  bic r4, r4, #0xff
0c00de70: e3a0e301  mov lr, #0x4000000
0c00de74: e24eea02  sub lr, lr, #0x2000
0c00de78: e134000e  teq r4, lr
0c00de7c: 08bd8010  ldmeqia sp!, {r4,pc}
0c00de80: e51fcb3c  ldr r12, [pc, #-0xb3c] =0x0403f2fc
0c00de84: e08cc100  add r12, r12, r0, lsl #2
0c00de88: e28cca03  add r12, r12, #0x3000
0c00de8c: e5bc4004  ldr r4, [r12, #0x4]!
0c00de90: e594c08c  ldr r12, [r4, #0x8c]
0c00de94: e5944154  ldr r4, [r4, #0x154]
0c00de98: e0942002  adds r2, r4, r2
0c00de9c: 4082200c  addmi r2, r2, r12
0c00dea0: 4a000001  bmi 0x0c00deac
0c00dea4: e152000c  cmp r2, r12
0c00dea8: a042200c  subge r2, r2, r12
0c00deac: e3c1163f  bic r1, r1, #0x3f00000
0c00deb0: e3c11afe  bic r1, r1, #0xfe000
0c00deb4: e00e2682  and r2, lr, r2, lsl #13
0c00deb8: e1811002  orr r1, r1, r2
0c00debc: e3a02000  mov r2, #0x0
0c00dec0: e52d2004  str r2, [sp, #-0x4]!
0c00dec4: e58d2000  str r2, [sp, #0x0]
0c00dec8: e59d2000  ldr r2, [sp, #0x0]
0c00decc: e2822001  add r2, r2, #0x1
0c00ded0: e58d2000  str r2, [sp, #0x0]
0c00ded4: e3520003  cmp r2, #0x3
0c00ded8: bafffffa  blt 0x0c00dec8
0c00dedc: e7831500  str r1, [r3, r0, lsl #10]
0c00dee0: e3a00000  mov r0, #0x0
0c00dee4: e58d0000  str r0, [sp, #0x0]
0c00dee8: e59d0000  ldr r0, [sp, #0x0]
0c00deec: e2800001  add r0, r0, #0x1
0c00def0: e58d0000  str r0, [sp, #0x0]
0c00def4: e3500003  cmp r0, #0x3
0c00def8: bafffffa  blt 0x0c00dee8
0c00defc: e28dd004  add sp, sp, #0x4
0c00df00: e8bd8010  ldmia sp!, {r4,pc}
DoDGRqstVPhase:
0c00df04: e1a0c00d  mov r12, sp
0c00df08: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c00df0c: e24cb004  sub r11, r12, #0x4
0c00df10: e1a04000  mov r4, r0
0c00df14: e5900000  ldr r0, [r0, #0x0]
0c00df18: e51f5bd4  ldr r5, [pc, #-0xbd4] =0x0403f2fc
0c00df1c: e2851a03  add r1, r5, #0x3000
0c00df20: e5a1043c  str r0, [r1, #0x43c]!
0c00df24: e1a01004  mov r1, r4
0c00df28: e59f001c  ldr r0, [pc, #0x1c] =0x0c00de50
0c00df2c: ebfffd51  bl 0x0c00d478 <fn_0c00d478>
0c00df30: e5950000  ldr r0, [r5, #0x0]
0c00df34: e3100b01  tst r0, #0x400
0c00df38: 15941000  ldrne r1, [r4, #0x0]
0c00df3c: 128f0f03  addne r0, pc, #0xc
0c00df40: 191b6830  ldmnedb r11, {r4,r5,r11,sp,lr}
0c00df44: 1a000f65  bne 0x0c011ce0 <fn_0c011ce0>
0c00df48: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c00df4c: 0c00de50  .word 0x0c00de50
0c00df50: 53657420  .asciz "Set VPhase to %d\n"
DoDGRqstGetVPhase:
0c00df64: e1a0c00d  mov r12, sp
0c00df68: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00df6c: e24cb004  sub r11, r12, #0x4
0c00df70: e51f08bc  ldr r0, [pc, #-0x8bc] =0x040422fc
0c00df74: e590043c  ldr r0, [r0, #0x43c]
0c00df78: e52d0004  str r0, [sp, #-0x4]!
0c00df7c: e1a0100d  mov r1, sp
0c00df80: e3a02004  mov r2, #0x4
0c00df84: e3a00004  mov r0, #0x4
0c00df88: ebffdb54  bl 0x0c004ce0 <fn_0c004ce0>
0c00df8c: e91ba800  ldmdb r11, {r11,sp,pc}
fn_0c00df90:
0c00df90: e92d4030  stmdb sp!, {r4,r5,lr}
0c00df94: e51f1c50  ldr r1, [pc, #-0xc50] =0x0403f2fc
0c00df98: e0810100  add r0, r1, r0, lsl #2
0c00df9c: e2800a03  add r0, r0, #0x3000
0c00dfa0: e5901004  ldr r1, [r0, #0x4]
0c00dfa4: e5911000  ldr r1, [r1, #0x0]
0c00dfa8: e3a02000  mov r2, #0x0
0c00dfac: e52d2004  str r2, [sp, #-0x4]!
0c00dfb0: e58d2000  str r2, [sp, #0x0]
0c00dfb4: e59d2000  ldr r2, [sp, #0x0]
0c00dfb8: e2822001  add r2, r2, #0x1
0c00dfbc: e58d2000  str r2, [sp, #0x0]
0c00dfc0: e3520003  cmp r2, #0x3
0c00dfc4: bafffffa  blt 0x0c00dfb4
0c00dfc8: e3a0c606  mov r12, #0x600000
0c00dfcc: e58c1460  str r1, [r12, #0x460]
0c00dfd0: e3a01000  mov r1, #0x0
0c00dfd4: e58d1000  str r1, [sp, #0x0]
0c00dfd8: e59d1000  ldr r1, [sp, #0x0]
0c00dfdc: e2811001  add r1, r1, #0x1
0c00dfe0: e58d1000  str r1, [sp, #0x0]
0c00dfe4: e3510003  cmp r1, #0x3
0c00dfe8: bafffffa  blt 0x0c00dfd8
0c00dfec: e28dd004  add sp, sp, #0x4
0c00dff0: e5b01004  ldr r1, [r0, #0x4]!
0c00dff4: e591015c  ldr r0, [r1, #0x15c]
0c00dff8: e59110a0  ldr r1, [r1, #0xa0]
0c00dffc: e3a03001  mov r3, #0x1
0c00e000: e3a02000  mov r2, #0x0
0c00e004: e3310005  teq r1, #0x5
0c00e008: 11a01002  movne r1, r2
0c00e00c: 01a01003  moveq r1, r3
0c00e010: e200400f  and r4, r0, #0xf
0c00e014: e51fe95c  ldr lr, [pc, #-0x95c] =0x0406f70c
0c00e018: e5be5020  ldr r5, [lr, #0x20]!
0c00e01c: e3a0e010  mov lr, #0x10
0c00e020: e00ee205  and lr, lr, r5, lsl #4
0c00e024: e184e00e  orr lr, r4, lr
0c00e028: e3cee020  bic lr, lr, #0x20
0c00e02c: e3500000  cmp r0, #0x0
0c00e030: b1a02003  movlt r2, r3
0c00e034: e3a00020  mov r0, #0x20
0c00e038: e0000282  and r0, r0, r2, lsl #5
0c00e03c: e18e0000  orr r0, lr, r0
0c00e040: e3c00040  bic r0, r0, #0x40
0c00e044: e3a02040  mov r2, #0x40
0c00e048: e0021301  and r1, r2, r1, lsl #6
0c00e04c: e1800001  orr r0, r0, r1
0c00e050: e3a01000  mov r1, #0x0
0c00e054: e52d1004  str r1, [sp, #-0x4]!
0c00e058: e58d1000  str r1, [sp, #0x0]
0c00e05c: e59d1000  ldr r1, [sp, #0x0]
0c00e060: e2811001  add r1, r1, #0x1
0c00e064: e58d1000  str r1, [sp, #0x0]
0c00e068: e3510003  cmp r1, #0x3
0c00e06c: bafffffa  blt 0x0c00e05c
0c00e070: e5ac0474  str r0, [r12, #0x474]!
0c00e074: e3a00000  mov r0, #0x0
0c00e078: e58d0000  str r0, [sp, #0x0]
0c00e07c: e59d0000  ldr r0, [sp, #0x0]
0c00e080: e2800001  add r0, r0, #0x1
0c00e084: e58d0000  str r0, [sp, #0x0]
0c00e088: e3500003  cmp r0, #0x3
0c00e08c: bafffffa  blt 0x0c00e07c
0c00e090: e28dd004  add sp, sp, #0x4
0c00e094: e8bd8030  ldmia sp!, {r4,r5,pc}
DoDGRqstChannelGammaMap:
0c00e098: e5902004  ldr r2, [r0, #0x4]
0c00e09c: e51f1d58  ldr r1, [pc, #-0xd58] =0x0403f2fc
0c00e0a0: e5903000  ldr r3, [r0, #0x0]
0c00e0a4: e0811103  add r1, r1, r3, lsl #2
0c00e0a8: e2811a03  add r1, r1, #0x3000
0c00e0ac: e5911004  ldr r1, [r1, #0x4]
0c00e0b0: e5a1215c  str r2, [r1, #0x15c]!
0c00e0b4: e5900000  ldr r0, [r0, #0x0]
0c00e0b8: eaffffb4  b 0x0c00df90 <fn_0c00df90>
DoDGRqstGetChannelGammaMap:
0c00e0bc: e1a0c00d  mov r12, sp
0c00e0c0: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00e0c4: e24cb004  sub r11, r12, #0x4
0c00e0c8: e51f1d84  ldr r1, [pc, #-0xd84] =0x0403f2fc
0c00e0cc: e5900000  ldr r0, [r0, #0x0]
0c00e0d0: e0810100  add r0, r1, r0, lsl #2
0c00e0d4: e2800a03  add r0, r0, #0x3000
0c00e0d8: e5900004  ldr r0, [r0, #0x4]
0c00e0dc: e590015c  ldr r0, [r0, #0x15c]
0c00e0e0: e52d0004  str r0, [sp, #-0x4]!
0c00e0e4: e1a0100d  mov r1, sp
0c00e0e8: e3a02004  mov r2, #0x4
0c00e0ec: e3a00005  mov r0, #0x5
0c00e0f0: ebffdafa  bl 0x0c004ce0 <fn_0c004ce0>
0c00e0f4: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstChannelGammaMapState:
0c00e0f8: e92d4000  stmdb sp!, {lr}
0c00e0fc: e5903000  ldr r3, [r0, #0x0]
0c00e100: e2801008  add r1, r0, #0x8
0c00e104: e51f2dc0  ldr r2, [pc, #-0xdc0] =0x0403f2fc
0c00e108: e3730001  cmn r3, #0x1
0c00e10c: 1a00000a  bne 0x0c00e13c
0c00e110: e5900004  ldr r0, [r0, #0x4]
0c00e114: e2823038  add r3, r2, #0x38
0c00e118: e2833b0d  add r3, r3, #0x3400
0c00e11c: e593c000  ldr r12, [r3, #0x0]
0c00e120: e3ccc202  bic r12, r12, #0x20000000
0c00e124: e2000001  and r0, r0, #0x1
0c00e128: e18c0e80  orr r0, r12, r0, lsl #29
0c00e12c: e5830000  str r0, [r3, #0x0]
0c00e130: e2820044  add r0, r2, #0x44
0c00e134: e2800b0d  add r0, r0, #0x3400
0c00e138: ea000015  b 0x0c00e194
0c00e13c: e3530000  cmp r3, #0x0
0c00e140: ba000001  blt 0x0c00e14c
0c00e144: e3530007  cmp r3, #0x7
0c00e148: da000003  ble 0x0c00e15c
0c00e14c: e353001e  cmp r3, #0x1e
0c00e150: ba000012  blt 0x0c00e1a0
0c00e154: e35300fd  cmp r3, #0xfd
0c00e158: ca000010  bgt 0x0c00e1a0
0c00e15c: e0823103  add r3, r2, r3, lsl #2
0c00e160: e2833a03  add r3, r3, #0x3000
0c00e164: e590c004  ldr r12, [r0, #0x4]
0c00e168: e5933004  ldr r3, [r3, #0x4]
0c00e16c: e5b3e16c  ldr lr, [r3, #0x16c]!
0c00e170: e3cee402  bic lr, lr, #0x2000000
0c00e174: e20cc001  and r12, r12, #0x1
0c00e178: e18ecc8c  orr r12, lr, r12, lsl #25
0c00e17c: e583c000  str r12, [r3, #0x0]
0c00e180: e5900000  ldr r0, [r0, #0x0]
0c00e184: e0820100  add r0, r2, r0, lsl #2
0c00e188: e2800a03  add r0, r0, #0x3000
0c00e18c: e5900004  ldr r0, [r0, #0x4]
0c00e190: e2800e16  add r0, r0, #0x160
0c00e194: e8915008  ldmia r1, {r3,r12,lr}
0c00e198: e8805008  stmia r0, {r3,r12,lr}
0c00e19c: e8bd8000  ldmia sp!, {pc}
0c00e1a0: e5920000  ldr r0, [r2, #0x0]
0c00e1a4: e3100b01  tst r0, #0x400
0c00e1a8: 11a01003  movne r1, r3
0c00e1ac: 128f0f02  addne r0, pc, #0x8
0c00e1b0: 18bd4000  ldmneia sp!, {lr}
0c00e1b4: 1a000ec9  bne 0x0c011ce0 <fn_0c011ce0>
0c00e1b8: e8bd8000  ldmia sp!, {pc}
0c00e1bc: 496c6c65  .asciz "Illegal voc %d\n"
DoDGRqstGetChannelGammaMapState:
0c00e1cc: e1a0c00d  mov r12, sp
0c00e1d0: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00e1d4: e24cb004  sub r11, r12, #0x4
0c00e1d8: e24dd010  sub sp, sp, #0x10
0c00e1dc: e3a0c001  mov r12, #0x1
0c00e1e0: e28d2004  add r2, sp, #0x4
0c00e1e4: e5901000  ldr r1, [r0, #0x0]
0c00e1e8: e51f3ea4  ldr r3, [pc, #-0xea4] =0x0403f2fc
0c00e1ec: e3710001  cmn r1, #0x1
0c00e1f0: 1a000006  bne 0x0c00e210
0c00e1f4: e2830a03  add r0, r3, #0x3000
0c00e1f8: e5900438  ldr r0, [r0, #0x438]
0c00e1fc: e00c0ec0  and r0, r12, r0, asr #29
0c00e200: e58d0000  str r0, [sp, #0x0]
0c00e204: e2830044  add r0, r3, #0x44
0c00e208: e2800b0d  add r0, r0, #0x3400
0c00e20c: ea000012  b 0x0c00e25c
0c00e210: e3510000  cmp r1, #0x0
0c00e214: ba000001  blt 0x0c00e220
0c00e218: e3510007  cmp r1, #0x7
0c00e21c: da000003  ble 0x0c00e230
0c00e220: e351001e  cmp r1, #0x1e
0c00e224: ba00000f  blt 0x0c00e268
0c00e228: e35100fd  cmp r1, #0xfd
0c00e22c: ca00000d  bgt 0x0c00e268
0c00e230: e0831101  add r1, r3, r1, lsl #2
0c00e234: e2811a03  add r1, r1, #0x3000
0c00e238: e5911004  ldr r1, [r1, #0x4]
0c00e23c: e591116c  ldr r1, [r1, #0x16c]
0c00e240: e00c1cc1  and r1, r12, r1, asr #25
0c00e244: e58d1000  str r1, [sp, #0x0]
0c00e248: e5900000  ldr r0, [r0, #0x0]
0c00e24c: e0830100  add r0, r3, r0, lsl #2
0c00e250: e2800a03  add r0, r0, #0x3000
0c00e254: e5900004  ldr r0, [r0, #0x4]
0c00e258: e2800e16  add r0, r0, #0x160
0c00e25c: e8901009  ldmia r0, {r0,r3,r12}
0c00e260: e8821009  stmia r2, {r0,r3,r12}
0c00e264: ea000005  b 0x0c00e280
0c00e268: e5930000  ldr r0, [r3, #0x0]
0c00e26c: e3100b01  tst r0, #0x400
0c00e270: 124f0f2f  subne r0, pc, #0xbc
0c00e274: 1b000e99  blne 0x0c011ce0 <fn_0c011ce0>
0c00e278: e3a00000  mov r0, #0x0
0c00e27c: e58d0000  str r0, [sp, #0x0]
0c00e280: e1a0100d  mov r1, sp
0c00e284: e3a02010  mov r2, #0x10
0c00e288: e3a00018  mov r0, #0x18
0c00e28c: ebffda93  bl 0x0c004ce0 <fn_0c004ce0>
0c00e290: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstFastlistChunksize:
0c00e294: e5900000  ldr r0, [r0, #0x0]
0c00e298: e200001f  and r0, r0, #0x1f
0c00e29c: e3800e32  orr r0, r0, #0x320
0c00e2a0: e3a01000  mov r1, #0x0
0c00e2a4: e52d1004  str r1, [sp, #-0x4]!
0c00e2a8: e58d1000  str r1, [sp, #0x0]
0c00e2ac: e59d1000  ldr r1, [sp, #0x0]
0c00e2b0: e2811001  add r1, r1, #0x1
0c00e2b4: e58d1000  str r1, [sp, #0x0]
0c00e2b8: e3510003  cmp r1, #0x3
0c00e2bc: bafffffa  blt 0x0c00e2ac
0c00e2c0: e3a01606  mov r1, #0x600000
0c00e2c4: e5a1043c  str r0, [r1, #0x43c]!
0c00e2c8: e3a00000  mov r0, #0x0
0c00e2cc: e58d0000  str r0, [sp, #0x0]
0c00e2d0: e59d0000  ldr r0, [sp, #0x0]
0c00e2d4: e2800001  add r0, r0, #0x1
0c00e2d8: e58d0000  str r0, [sp, #0x0]
0c00e2dc: e3500003  cmp r0, #0x3
0c00e2e0: bafffffa  blt 0x0c00e2d0
0c00e2e4: e28dd004  add sp, sp, #0x4
0c00e2e8: e1a0f00e  mov pc, lr
0c00e2ec: e1a01000  mov r1, r0
0c00e2f0: e330001e  teq r0, #0x1e
0c00e2f4: 03a00020  moveq r0, #0x20
0c00e2f8: 01a0f00e  moveq pc, lr
0c00e2fc: e331002e  teq r1, #0x2e
0c00e300: 03a00031  moveq r0, #0x31
0c00e304: 01a0f00e  moveq pc, lr
0c00e308: e33100c6  teq r1, #0xc6
0c00e30c: 03a000e6  moveq r0, #0xe6
0c00e310: 01a0f00e  moveq pc, lr
0c00e314: e33100c9  teq r1, #0xc9
0c00e318: 03a000d9  moveq r0, #0xd9
0c00e31c: e1a0f00e  mov pc, lr
DoDGRqstTest:
0c00e320: e1a0c00d  mov r12, sp
0c00e324: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00e328: e24cb004  sub r11, r12, #0x4
0c00e32c: e5900000  ldr r0, [r0, #0x0]
0c00e330: e2800001  add r0, r0, #0x1
0c00e334: e52d0004  str r0, [sp, #-0x4]!
0c00e338: e1a0100d  mov r1, sp
0c00e33c: e3a02004  mov r2, #0x4
0c00e340: e3a00000  mov r0, #0x0
0c00e344: ebffda65  bl 0x0c004ce0 <fn_0c004ce0>
0c00e348: e91ba800  ldmdb r11, {r11,sp,pc}
DoDGRqstVCWrite:
0c00e34c: e1a0c00d  mov r12, sp
0c00e350: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c00e354: e24cb004  sub r11, r12, #0x4
0c00e358: e1a04000  mov r4, r0
0c00e35c: e59f0064  ldr r0, [pc, #0x64] =0x0403f2fc
0c00e360: e5900000  ldr r0, [r0, #0x0]
0c00e364: e3100004  tst r0, #0x4
0c00e368: 0a000002  beq 0x0c00e378
0c00e36c: e8940006  ldmia r4, {r1,r2}
0c00e370: e28f0f15  add r0, pc, #0x54
0c00e374: eb000e59  bl 0x0c011ce0 <fn_0c011ce0>
0c00e378: e3a00000  mov r0, #0x0
0c00e37c: e52d0004  str r0, [sp, #-0x4]!
0c00e380: e58d0000  str r0, [sp, #0x0]
0c00e384: e59d0000  ldr r0, [sp, #0x0]
0c00e388: e2800001  add r0, r0, #0x1
0c00e38c: e58d0000  str r0, [sp, #0x0]
0c00e390: e3500003  cmp r0, #0x3
0c00e394: bafffffa  blt 0x0c00e384
0c00e398: e3a01606  mov r1, #0x600000
0c00e39c: e5940004  ldr r0, [r4, #0x4]
0c00e3a0: e5942000  ldr r2, [r4, #0x0]
0c00e3a4: e7810102  str r0, [r1, r2, lsl #2]
0c00e3a8: e3a00000  mov r0, #0x0
0c00e3ac: e58d0000  str r0, [sp, #0x0]
0c00e3b0: e59d0000  ldr r0, [sp, #0x0]
0c00e3b4: e2800001  add r0, r0, #0x1
0c00e3b8: e58d0000  str r0, [sp, #0x0]
0c00e3bc: e3500003  cmp r0, #0x3
0c00e3c0: bafffffa  blt 0x0c00e3b0
0c00e3c4: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c00e3c8: 0403f2fc  .word 0x0403f2fc
0c00e3cc: 76635772  .asciz "vcWrite cmd (0x%04x) = 0x%08x\n"
DoDGRqstVCRead:
0c00e3ec: e1a0c00d  mov r12, sp
0c00e3f0: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00e3f4: e24cb004  sub r11, r12, #0x4
0c00e3f8: e3a02606  mov r2, #0x600000
0c00e3fc: e5901000  ldr r1, [r0, #0x0]
0c00e400: e7922101  ldr r2, [r2, r1, lsl #2]
0c00e404: e52d2004  str r2, [sp, #-0x4]!
0c00e408: e51f1048  ldr r1, [pc, #-0x48] =0x0403f2fc
0c00e40c: e5911000  ldr r1, [r1, #0x0]
0c00e410: e3110004  tst r1, #0x4
0c00e414: 15901000  ldrne r1, [r0, #0x0]
0c00e418: 128f0f05  addne r0, pc, #0x14
0c00e41c: 1b000e2f  blne 0x0c011ce0 <fn_0c011ce0>
0c00e420: e1a0100d  mov r1, sp
0c00e424: e3a02004  mov r2, #0x4
0c00e428: e3a00001  mov r0, #0x1
0c00e42c: ebffda2b  bl 0x0c004ce0 <fn_0c004ce0>
0c00e430: e91ba800  ldmdb r11, {r11,sp,pc}
0c00e434: 76635265  .asciz "vcRead cmd (0x%04x) = 0x%08x\n"
DoDGRqstQueryMonitorName:
0c00e454: e1a0f00e  mov pc, lr
DoDGRqstMonitorCommand:
0c00e458: e1a0f00e  mov pc, lr
DoDGRqstLoadXilinx:
0c00e45c: e1a0f00e  mov pc, lr
DoDGRqstXServerVideoInit:
0c00e460: e1a0f00e  mov pc, lr
DoDGRqstInternalGenlock:
0c00e464: e1a0f00e  mov pc, lr
DoDGRqstGetInternalGenlock:
0c00e468: e1a0f00e  mov pc, lr
DoDGRqstBufferParams:
0c00e46c: e1a0f00e  mov pc, lr
DoDGRqstGetBufferParams:
0c00e470: e1a0f00e  mov pc, lr
DoDGRqstDataFormat:
0c00e474: e1a0f00e  mov pc, lr
DoDGRqstGetDataFormat:
0c00e478: e1a0f00e  mov pc, lr
DoDGRqstDVPMult2Freq:
0c00e47c: e1a0f00e  mov pc, lr
DoDGRqstVBOBCommand:
0c00e480: e1a0f00e  mov pc, lr
DoDGRqstGetVBOBReply:
0c00e484: e1a0f00e  mov pc, lr
DoDGRqstLoadPabXilinx:
0c00e488: e1a0c00d  mov r12, sp
0c00e48c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00e490: e24cb004  sub r11, r12, #0x4
0c00e494: e1a04000  mov r4, r0
0c00e498: e24dd004  sub sp, sp, #0x4
0c00e49c: e59f0164  ldr r0, [pc, #0x164] =0x0403f2fc
0c00e4a0: e5900000  ldr r0, [r0, #0x0]
0c00e4a4: e3100002  tst r0, #0x2
0c00e4a8: 128f0f57  addne r0, pc, #0x15c
0c00e4ac: 1b000e0b  blne 0x0c011ce0 <fn_0c011ce0>
0c00e4b0: eb000075  bl 0x0c00e68c <pgmclr>
0c00e4b4: eb0000aa  bl 0x0c00e764 <fn_0c00e764>
0c00e4b8: e3300000  teq r0, #0x0
0c00e4bc: 1a000050  bne 0x0c00e604
0c00e4c0: e284600c  add r6, r4, #0xc
0c00e4c4: e3a0a000  mov r10, #0x0
0c00e4c8: e5947000  ldr r7, [r4, #0x0]
0c00e4cc: e3a05001  mov r5, #0x1
0c00e4d0: e5d60000  ldrb r0, [r6, #0x0]
0c00e4d4: e1100005  tst r0, r5
0c00e4d8: 03a00000  moveq r0, #0x0
0c00e4dc: 13a00001  movne r0, #0x1
0c00e4e0: eb00008a  bl 0x0c00e710 <databit>
0c00e4e4: e1a05085  mov r5, r5, lsl #1
0c00e4e8: e3550c01  cmp r5, #0x100
0c00e4ec: bafffff7  blt 0x0c00e4d0
0c00e4f0: e28aa001  add r10, r10, #0x1
0c00e4f4: e2477001  sub r7, r7, #0x1
0c00e4f8: e2866001  add r6, r6, #0x1
0c00e4fc: e35a0006  cmp r10, #0x6
0c00e500: bafffff1  blt 0x0c00e4cc
0c00e504: e3a0a000  mov r10, #0x0
0c00e508: e3a05001  mov r5, #0x1
0c00e50c: e5940004  ldr r0, [r4, #0x4]
0c00e510: e3500000  cmp r0, #0x0
0c00e514: da00001c  ble 0x0c00e58c
0c00e518: e3a00000  mov r0, #0x0
0c00e51c: e58d0000  str r0, [sp, #0x0]
0c00e520: e5940008  ldr r0, [r4, #0x8]
0c00e524: e3500000  cmp r0, #0x0
0c00e528: da00000f  ble 0x0c00e56c
0c00e52c: e5d60000  ldrb r0, [r6, #0x0]
0c00e530: e1100005  tst r0, r5
0c00e534: 03a00000  moveq r0, #0x0
0c00e538: 13a00001  movne r0, #0x1
0c00e53c: eb000073  bl 0x0c00e710 <databit>
0c00e540: e1a05085  mov r5, r5, lsl #1
0c00e544: e3350c01  teq r5, #0x100
0c00e548: 03a05001  moveq r5, #0x1
0c00e54c: 00866005  addeq r6, r6, r5
0c00e550: 02477001  subeq r7, r7, #0x1
0c00e554: e59d0000  ldr r0, [sp, #0x0]
0c00e558: e2801001  add r1, r0, #0x1
0c00e55c: e58d1000  str r1, [sp, #0x0]
0c00e560: e5940008  ldr r0, [r4, #0x8]
0c00e564: e1510000  cmp r1, r0
0c00e568: baffffef  blt 0x0c00e52c
0c00e56c: eb00007e  bl 0x0c00e76c <fn_0c00e76c>
0c00e570: e3300000  teq r0, #0x0
0c00e574: 128f0f29  addne r0, pc, #0xa4
0c00e578: 1a000020  bne 0x0c00e600
0c00e57c: e28aa001  add r10, r10, #0x1
0c00e580: e5940004  ldr r0, [r4, #0x4]
0c00e584: e15a0000  cmp r10, r0
0c00e588: baffffe2  blt 0x0c00e518
0c00e58c: e3570000  cmp r7, #0x0
0c00e590: da00000e  ble 0x0c00e5d0
0c00e594: e3a04001  mov r4, #0x1
0c00e598: e3a0a000  mov r10, #0x0
0c00e59c: e3a05001  mov r5, #0x1
0c00e5a0: e5d60000  ldrb r0, [r6, #0x0]
0c00e5a4: e1100005  tst r0, r5
0c00e5a8: 01a0000a  moveq r0, r10
0c00e5ac: 11a00004  movne r0, r4
0c00e5b0: eb000056  bl 0x0c00e710 <databit>
0c00e5b4: e1a05085  mov r5, r5, lsl #1
0c00e5b8: e3550c01  cmp r5, #0x100
0c00e5bc: bafffff7  blt 0x0c00e5a0
0c00e5c0: e2477001  sub r7, r7, #0x1
0c00e5c4: e2866001  add r6, r6, #0x1
0c00e5c8: e3570000  cmp r7, #0x0
0c00e5cc: cafffff2  bgt 0x0c00e59c
0c00e5d0: eb000067  bl 0x0c00e774 <chkdone>
0c00e5d4: e3300000  teq r0, #0x0
0c00e5d8: 128f0f1a  addne r0, pc, #0x68
0c00e5dc: 1a000007  bne 0x0c00e600
0c00e5e0: e3a00a09  mov r0, #0x9000
0c00e5e4: e2800606  add r0, r0, #0x600000
0c00e5e8: e5900400  ldr r0, [r0, #0x400]
0c00e5ec: e59f0014  ldr r0, [pc, #0x14] =0x0403f2fc
0c00e5f0: e5900000  ldr r0, [r0, #0x0]
0c00e5f4: e3100002  tst r0, #0x2
0c00e5f8: 0a000001  beq 0x0c00e604
0c00e5fc: e28f0f1b  add r0, pc, #0x6c
0c00e600: eb000db6  bl 0x0c011ce0 <fn_0c011ce0>
0c00e604: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00e608: 0403f2fc  .word 0x0403f2fc
0c00e60c: 4c6f6164  .asciz "LoadPabXilinx()...\n"
0c00e620: 4c6f6164  .asciz "LoadPabXilinx()...chkframe() failed!\n"
0c00e648: 4c6f6164  .asciz "LoadPabXilinx()...chkdone() failed!\n"
0c00e670: 4c6f6164  .asciz "LoadPabXilinx()...Done.\n"
pgmclr:
0c00e68c: e3a00e6a  mov r0, #0x6a0
0c00e690: e2800906  add r0, r0, #0x18000
0c00e694: e52d0004  str r0, [sp, #-0x4]!
0c00e698: e3a00000  mov r0, #0x0
0c00e69c: e52d0004  str r0, [sp, #-0x4]!
0c00e6a0: e58d0000  str r0, [sp, #0x0]
0c00e6a4: e59d0000  ldr r0, [sp, #0x0]
0c00e6a8: e2800001  add r0, r0, #0x1
0c00e6ac: e58d0000  str r0, [sp, #0x0]
0c00e6b0: e3500003  cmp r0, #0x3
0c00e6b4: bafffffa  blt 0x0c00e6a4
0c00e6b8: e3a01001  mov r1, #0x1
0c00e6bc: e3a00a09  mov r0, #0x9000
0c00e6c0: e2800606  add r0, r0, #0x600000
0c00e6c4: e5801000  str r1, [r0, #0x0]
0c00e6c8: e3a01000  mov r1, #0x0
0c00e6cc: e58d1000  str r1, [sp, #0x0]
0c00e6d0: e59d1000  ldr r1, [sp, #0x0]
0c00e6d4: e2811001  add r1, r1, #0x1
0c00e6d8: e58d1000  str r1, [sp, #0x0]
0c00e6dc: e3510003  cmp r1, #0x3
0c00e6e0: bafffffa  blt 0x0c00e6d0
0c00e6e4: e5900000  ldr r0, [r0, #0x0]
0c00e6e8: e5bd0004  ldr r0, [sp, #0x4]!
0c00e6ec: e3500000  cmp r0, #0x0
0c00e6f0: da000004  ble 0x0c00e708
0c00e6f4: e59d0000  ldr r0, [sp, #0x0]
0c00e6f8: e2400001  sub r0, r0, #0x1
0c00e6fc: e58d0000  str r0, [sp, #0x0]
0c00e700: e3500000  cmp r0, #0x0
0c00e704: cafffffa  bgt 0x0c00e6f4
0c00e708: e28dd004  add sp, sp, #0x4
0c00e70c: e1a0f00e  mov pc, lr
databit:
0c00e710: e3a01000  mov r1, #0x0
0c00e714: e52d1004  str r1, [sp, #-0x4]!
0c00e718: e58d1000  str r1, [sp, #0x0]
0c00e71c: e59d1000  ldr r1, [sp, #0x0]
0c00e720: e2811001  add r1, r1, #0x1
0c00e724: e58d1000  str r1, [sp, #0x0]
0c00e728: e3510003  cmp r1, #0x3
0c00e72c: bafffffa  blt 0x0c00e71c
0c00e730: e2000001  and r0, r0, #0x1
0c00e734: e3a01a09  mov r1, #0x9000
0c00e738: e2811606  add r1, r1, #0x600000
0c00e73c: e5a10400  str r0, [r1, #0x400]!
0c00e740: e3a00000  mov r0, #0x0
0c00e744: e58d0000  str r0, [sp, #0x0]
0c00e748: e59d0000  ldr r0, [sp, #0x0]
0c00e74c: e2800001  add r0, r0, #0x1
0c00e750: e58d0000  str r0, [sp, #0x0]
0c00e754: e3500003  cmp r0, #0x3
0c00e758: bafffffa  blt 0x0c00e748
0c00e75c: e28dd004  add sp, sp, #0x4
0c00e760: e1a0f00e  mov pc, lr
fn_0c00e764:
0c00e764: e3a00000  mov r0, #0x0
0c00e768: e1a0f00e  mov pc, lr
fn_0c00e76c:
0c00e76c: e3a00000  mov r0, #0x0
0c00e770: e1a0f00e  mov pc, lr
chkdone:
0c00e774: e3a00a09  mov r0, #0x9000
0c00e778: e2800606  add r0, r0, #0x600000
0c00e77c: e5900800  ldr r0, [r0, #0x800]
0c00e780: e2000001  and r0, r0, #0x1
0c00e784: e3300001  teq r0, #0x1
0c00e788: 13a00001  movne r0, #0x1
0c00e78c: 03a00000  moveq r0, #0x0
0c00e790: e1a0f00e  mov pc, lr
DoDGRqstLoadPabSizeRegs:
0c00e794: e1a0c00d  mov r12, sp
0c00e798: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c00e79c: e24cb004  sub r11, r12, #0x4
0c00e7a0: e1a04000  mov r4, r0
0c00e7a4: e51f01a4  ldr r0, [pc, #-0x1a4] =0x0403f2fc
0c00e7a8: e5900000  ldr r0, [r0, #0x0]
0c00e7ac: e3100004  tst r0, #0x4
0c00e7b0: 128f0f47  addne r0, pc, #0x11c
0c00e7b4: 1b000d49  blne 0x0c011ce0 <fn_0c011ce0>
0c00e7b8: e3a00000  mov r0, #0x0
0c00e7bc: e52d0004  str r0, [sp, #-0x4]!
0c00e7c0: e58d0000  str r0, [sp, #0x0]
0c00e7c4: e59d0000  ldr r0, [sp, #0x0]
0c00e7c8: e2800001  add r0, r0, #0x1
0c00e7cc: e58d0000  str r0, [sp, #0x0]
0c00e7d0: e3500003  cmp r0, #0x3
0c00e7d4: bafffffa  blt 0x0c00e7c4
0c00e7d8: e3a00982  mov r0, #0x208000
0c00e7dc: e2800501  add r0, r0, #0x400000
0c00e7e0: e5941000  ldr r1, [r4, #0x0]
0c00e7e4: e5801c00  str r1, [r0, #0xc00]
0c00e7e8: e3a01000  mov r1, #0x0
0c00e7ec: e58d1000  str r1, [sp, #0x0]
0c00e7f0: e59d1000  ldr r1, [sp, #0x0]
0c00e7f4: e2811001  add r1, r1, #0x1
0c00e7f8: e58d1000  str r1, [sp, #0x0]
0c00e7fc: e3510003  cmp r1, #0x3
0c00e800: bafffffa  blt 0x0c00e7f0
0c00e804: e3a01000  mov r1, #0x0
0c00e808: e58d1000  str r1, [sp, #0x0]
0c00e80c: e58d1000  str r1, [sp, #0x0]
0c00e810: e59d1000  ldr r1, [sp, #0x0]
0c00e814: e2811001  add r1, r1, #0x1
0c00e818: e58d1000  str r1, [sp, #0x0]
0c00e81c: e3510003  cmp r1, #0x3
0c00e820: bafffffa  blt 0x0c00e810
0c00e824: e5941004  ldr r1, [r4, #0x4]
0c00e828: e5801c04  str r1, [r0, #0xc04]
0c00e82c: e3a01000  mov r1, #0x0
0c00e830: e58d1000  str r1, [sp, #0x0]
0c00e834: e59d1000  ldr r1, [sp, #0x0]
0c00e838: e2811001  add r1, r1, #0x1
0c00e83c: e58d1000  str r1, [sp, #0x0]
0c00e840: e3510003  cmp r1, #0x3
0c00e844: bafffffa  blt 0x0c00e834
0c00e848: e3a01000  mov r1, #0x0
0c00e84c: e58d1000  str r1, [sp, #0x0]
0c00e850: e58d1000  str r1, [sp, #0x0]
0c00e854: e59d1000  ldr r1, [sp, #0x0]
0c00e858: e2811001  add r1, r1, #0x1
0c00e85c: e58d1000  str r1, [sp, #0x0]
0c00e860: e3510003  cmp r1, #0x3
0c00e864: bafffffa  blt 0x0c00e854
0c00e868: e5941008  ldr r1, [r4, #0x8]
0c00e86c: e5801c08  str r1, [r0, #0xc08]
0c00e870: e3a01000  mov r1, #0x0
0c00e874: e58d1000  str r1, [sp, #0x0]
0c00e878: e59d1000  ldr r1, [sp, #0x0]
0c00e87c: e2811001  add r1, r1, #0x1
0c00e880: e58d1000  str r1, [sp, #0x0]
0c00e884: e3510003  cmp r1, #0x3
0c00e888: bafffffa  blt 0x0c00e878
0c00e88c: e3a01000  mov r1, #0x0
0c00e890: e58d1000  str r1, [sp, #0x0]
0c00e894: e58d1000  str r1, [sp, #0x0]
0c00e898: e59d1000  ldr r1, [sp, #0x0]
0c00e89c: e2811001  add r1, r1, #0x1
0c00e8a0: e58d1000  str r1, [sp, #0x0]
0c00e8a4: e3510003  cmp r1, #0x3
0c00e8a8: bafffffa  blt 0x0c00e898
0c00e8ac: e5b4100c  ldr r1, [r4, #0xc]!
0c00e8b0: e5a01c0c  str r1, [r0, #0xc0c]!
0c00e8b4: e3a00000  mov r0, #0x0
0c00e8b8: e58d0000  str r0, [sp, #0x0]
0c00e8bc: e59d0000  ldr r0, [sp, #0x0]
0c00e8c0: e2800001  add r0, r0, #0x1
0c00e8c4: e58d0000  str r0, [sp, #0x0]
0c00e8c8: e3500003  cmp r0, #0x3
0c00e8cc: bafffffa  blt 0x0c00e8bc
0c00e8d0: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c00e8d4: 4c6f6164  .asciz "LoadPabSizeRegs...\n"
DoDGRqstLoadPabCtrlRegs:
0c00e8e8: e1a0c00d  mov r12, sp
0c00e8ec: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c00e8f0: e24cb004  sub r11, r12, #0x4
0c00e8f4: e1a04000  mov r4, r0
0c00e8f8: e51f02f8  ldr r0, [pc, #-0x2f8] =0x0403f2fc
0c00e8fc: e5900000  ldr r0, [r0, #0x0]
0c00e900: e3100004  tst r0, #0x4
0c00e904: 128f0f14  addne r0, pc, #0x50
0c00e908: 1b000cf4  blne 0x0c011ce0 <fn_0c011ce0>
0c00e90c: e3a00000  mov r0, #0x0
0c00e910: e52d0004  str r0, [sp, #-0x4]!
0c00e914: e58d0000  str r0, [sp, #0x0]
0c00e918: e59d0000  ldr r0, [sp, #0x0]
0c00e91c: e2800001  add r0, r0, #0x1
0c00e920: e58d0000  str r0, [sp, #0x0]
0c00e924: e3500003  cmp r0, #0x3
0c00e928: bafffffa  blt 0x0c00e918
0c00e92c: e3a01982  mov r1, #0x208000
0c00e930: e2811501  add r1, r1, #0x400000
0c00e934: e5940000  ldr r0, [r4, #0x0]
0c00e938: e5a10c10  str r0, [r1, #0xc10]!
0c00e93c: e3a00000  mov r0, #0x0
0c00e940: e58d0000  str r0, [sp, #0x0]
0c00e944: e59d0000  ldr r0, [sp, #0x0]
0c00e948: e2800001  add r0, r0, #0x1
0c00e94c: e58d0000  str r0, [sp, #0x0]
0c00e950: e3500003  cmp r0, #0x3
0c00e954: bafffffa  blt 0x0c00e944
0c00e958: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c00e95c: 4c6f6164  .asciz "LoadPabCtrlRegs...\n"
0c00e970: e3a00000  mov r0, #0x0
0c00e974: e52d0004  str r0, [sp, #-0x4]!
0c00e978: e58d0000  str r0, [sp, #0x0]
0c00e97c: e59d0000  ldr r0, [sp, #0x0]
0c00e980: e2800001  add r0, r0, #0x1
0c00e984: e58d0000  str r0, [sp, #0x0]
0c00e988: e3500003  cmp r0, #0x3
0c00e98c: bafffffa  blt 0x0c00e97c
0c00e990: e3a00000  mov r0, #0x0
0c00e994: e3a01982  mov r1, #0x208000
0c00e998: e2811501  add r1, r1, #0x400000
0c00e99c: e5810c08  str r0, [r1, #0xc08]
0c00e9a0: e3a02000  mov r2, #0x0
0c00e9a4: e58d2000  str r2, [sp, #0x0]
0c00e9a8: e59d2000  ldr r2, [sp, #0x0]
0c00e9ac: e2822001  add r2, r2, #0x1
0c00e9b0: e58d2000  str r2, [sp, #0x0]
0c00e9b4: e3520003  cmp r2, #0x3
0c00e9b8: bafffffa  blt 0x0c00e9a8
0c00e9bc: e3a02000  mov r2, #0x0
0c00e9c0: e58d2000  str r2, [sp, #0x0]
0c00e9c4: e58d2000  str r2, [sp, #0x0]
0c00e9c8: e59d2000  ldr r2, [sp, #0x0]
0c00e9cc: e2822001  add r2, r2, #0x1
0c00e9d0: e58d2000  str r2, [sp, #0x0]
0c00e9d4: e3520003  cmp r2, #0x3
0c00e9d8: bafffffa  blt 0x0c00e9c8
0c00e9dc: e5810c0c  str r0, [r1, #0xc0c]
0c00e9e0: e3a00000  mov r0, #0x0
0c00e9e4: e58d0000  str r0, [sp, #0x0]
0c00e9e8: e59d0000  ldr r0, [sp, #0x0]
0c00e9ec: e2800001  add r0, r0, #0x1
0c00e9f0: e58d0000  str r0, [sp, #0x0]
0c00e9f4: e3500003  cmp r0, #0x3
0c00e9f8: bafffffa  blt 0x0c00e9e8
0c00e9fc: e3a00000  mov r0, #0x0
0c00ea00: e58d0000  str r0, [sp, #0x0]
0c00ea04: e58d0000  str r0, [sp, #0x0]
0c00ea08: e59d0000  ldr r0, [sp, #0x0]
0c00ea0c: e2800001  add r0, r0, #0x1
0c00ea10: e58d0000  str r0, [sp, #0x0]
0c00ea14: e3500003  cmp r0, #0x3
0c00ea18: bafffffa  blt 0x0c00ea08
0c00ea1c: e59f00d4  ldr r0, [pc, #0xd4] =0x040422fc
0c00ea20: e590207c  ldr r2, [r0, #0x7c]
0c00ea24: e5922080  ldr r2, [r2, #0x80]
0c00ea28: e2422001  sub r2, r2, #0x1
0c00ea2c: e5812c00  str r2, [r1, #0xc00]
0c00ea30: e3a02000  mov r2, #0x0
0c00ea34: e58d2000  str r2, [sp, #0x0]
0c00ea38: e59d2000  ldr r2, [sp, #0x0]
0c00ea3c: e2822001  add r2, r2, #0x1
0c00ea40: e58d2000  str r2, [sp, #0x0]
0c00ea44: e3520003  cmp r2, #0x3
0c00ea48: bafffffa  blt 0x0c00ea38
0c00ea4c: e3a02000  mov r2, #0x0
0c00ea50: e58d2000  str r2, [sp, #0x0]
0c00ea54: e58d2000  str r2, [sp, #0x0]
0c00ea58: e59d2000  ldr r2, [sp, #0x0]
0c00ea5c: e2822001  add r2, r2, #0x1
0c00ea60: e58d2000  str r2, [sp, #0x0]
0c00ea64: e3520003  cmp r2, #0x3
0c00ea68: bafffffa  blt 0x0c00ea58
0c00ea6c: e590207c  ldr r2, [r0, #0x7c]
0c00ea70: e5922084  ldr r2, [r2, #0x84]
0c00ea74: e3a03001  mov r3, #0x1
0c00ea78: e06320c2  rsb r2, r3, r2, asr #1
0c00ea7c: e5812c04  str r2, [r1, #0xc04]
0c00ea80: e3a02000  mov r2, #0x0
0c00ea84: e58d2000  str r2, [sp, #0x0]
0c00ea88: e59d2000  ldr r2, [sp, #0x0]
0c00ea8c: e2822001  add r2, r2, #0x1
0c00ea90: e58d2000  str r2, [sp, #0x0]
0c00ea94: e3520003  cmp r2, #0x3
0c00ea98: bafffffa  blt 0x0c00ea88
0c00ea9c: e590007c  ldr r0, [r0, #0x7c]
0c00eaa0: e590004c  ldr r0, [r0, #0x4c]
0c00eaa4: e330001e  teq r0, #0x1e
0c00eaa8: e3a00000  mov r0, #0x0
0c00eaac: 1a000012  bne 0x0c00eafc
0c00eab0: e58d0000  str r0, [sp, #0x0]
0c00eab4: e3a00000  mov r0, #0x0
0c00eab8: e58d0000  str r0, [sp, #0x0]
0c00eabc: e59d0000  ldr r0, [sp, #0x0]
0c00eac0: e2800001  add r0, r0, #0x1
0c00eac4: e58d0000  str r0, [sp, #0x0]
0c00eac8: e3500003  cmp r0, #0x3
0c00eacc: bafffffa  blt 0x0c00eabc
0c00ead0: e3a0000c  mov r0, #0xc
0c00ead4: e5a10c10  str r0, [r1, #0xc10]!
0c00ead8: e3a00000  mov r0, #0x0
0c00eadc: e58d0000  str r0, [sp, #0x0]
0c00eae0: e59d0000  ldr r0, [sp, #0x0]
0c00eae4: e2800001  add r0, r0, #0x1
0c00eae8: e58d0000  str r0, [sp, #0x0]
0c00eaec: e3500003  cmp r0, #0x3
0c00eaf0: bafffffa  blt 0x0c00eae0
0c00eaf4: ea000011  b 0x0c00eb40
0c00eaf8: 040422fc  .word 0x040422fc
0c00eafc: e58d0000  str r0, [sp, #0x0]
0c00eb00: e3a00000  mov r0, #0x0
0c00eb04: e58d0000  str r0, [sp, #0x0]
0c00eb08: e59d0000  ldr r0, [sp, #0x0]
0c00eb0c: e2800001  add r0, r0, #0x1
0c00eb10: e58d0000  str r0, [sp, #0x0]
0c00eb14: e3500003  cmp r0, #0x3
0c00eb18: bafffffa  blt 0x0c00eb08
0c00eb1c: e3a00004  mov r0, #0x4
0c00eb20: e5a10c10  str r0, [r1, #0xc10]!
0c00eb24: e3a00000  mov r0, #0x0
0c00eb28: e58d0000  str r0, [sp, #0x0]
0c00eb2c: e59d0000  ldr r0, [sp, #0x0]
0c00eb30: e2800001  add r0, r0, #0x1
0c00eb34: e58d0000  str r0, [sp, #0x0]
0c00eb38: e3500003  cmp r0, #0x3
0c00eb3c: bafffffa  blt 0x0c00eb2c
0c00eb40: e28dd004  add sp, sp, #0x4
0c00eb44: e1a0f00e  mov pc, lr
0c00eb48: e599003c  ldr r0, [r9, #0x3c]
0c00eb4c: ea000138  b 0x0c00f034 <fn_0c00f034>
0c00eb50: e5990000  ldr r0, [r9, #0x0]
0c00eb54: e5991000  ldr r1, [r9, #0x0]
0c00eb58: e5992000  ldr r2, [r9, #0x0]
0c00eb5c: e599303c  ldr r3, [r9, #0x3c]
0c00eb60: ea000139  b 0x0c00f04c <fn_0c00f04c>
0c00eb64: e5990000  ldr r0, [r9, #0x0]
0c00eb68: e599103c  ldr r1, [r9, #0x3c]
0c00eb6c: ea000146  b 0x0c00f08c
0c00eb70: e5990000  ldr r0, [r9, #0x0]
0c00eb74: e5992000  ldr r2, [r9, #0x0]
0c00eb78: e5991000  ldr r1, [r9, #0x0]
0c00eb7c: e599303c  ldr r3, [r9, #0x3c]
0c00eb80: e1510000  cmp r1, r0
0c00eb84: 31a0c001  movcc r12, r1
0c00eb88: 31a01000  movcc r1, r0
0c00eb8c: 31a0000c  movcc r0, r12
0c00eb90: e1530002  cmp r3, r2
0c00eb94: 31a0c003  movcc r12, r3
0c00eb98: 31a03002  movcc r3, r2
0c00eb9c: 31a0200c  movcc r2, r12
0c00eba0: ea00014d  b 0x0c00f0dc <fn_0c00f0dc>
0c00eba4: e599003c  ldr r0, [r9, #0x3c]
0c00eba8: ea001dd3  b 0x0c0162fc
0c00ebac: e5990000  ldr r0, [r9, #0x0]
0c00ebb0: e599103c  ldr r1, [r9, #0x3c]
0c00ebb4: ea001dd9  b 0x0c016320 <fn_0c016320>
0c00ebb8: e5990000  ldr r0, [r9, #0x0]
0c00ebbc: e599103c  ldr r1, [r9, #0x3c]
0c00ebc0: ea000174  b 0x0c00f198 <fn_0c00f198>
0c00ebc4: e1a0c00d  mov r12, sp
0c00ebc8: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00ebcc: e24cb004  sub r11, r12, #0x4
0c00ebd0: e24dd01c  sub sp, sp, #0x1c
0c00ebd4: e3a00000  mov r0, #0x0
0c00ebd8: e5991000  ldr r1, [r9, #0x0]
0c00ebdc: e58d1004  str r1, [sp, #0x4]
0c00ebe0: e5991000  ldr r1, [r9, #0x0]
0c00ebe4: e58d1008  str r1, [sp, #0x8]
0c00ebe8: e5991000  ldr r1, [r9, #0x0]
0c00ebec: e58d100c  str r1, [sp, #0xc]
0c00ebf0: e5991000  ldr r1, [r9, #0x0]
0c00ebf4: e58d1010  str r1, [sp, #0x10]
0c00ebf8: e5991000  ldr r1, [r9, #0x0]
0c00ebfc: e58d1014  str r1, [sp, #0x14]
0c00ec00: e5991000  ldr r1, [r9, #0x0]
0c00ec04: e58d1018  str r1, [sp, #0x18]
0c00ec08: e59d1008  ldr r1, [sp, #0x8]
0c00ec0c: e59d2004  ldr r2, [sp, #0x4]
0c00ec10: e0020291  mul r2, r1, r2
0c00ec14: e2921007  adds r1, r2, #0x7
0c00ec18: 42811007  addmi r1, r1, #0x7
0c00ec1c: e1a011c1  mov r1, r1, asr #3
0c00ec20: e2911003  adds r1, r1, #0x3
0c00ec24: 42811003  addmi r1, r1, #0x3
0c00ec28: e1a01141  mov r1, r1, asr #2
0c00ec2c: e2412001  sub r2, r1, #0x1
0c00ec30: e59f1030  ldr r1, [pc, #0x30] =0x0404e76c
0c00ec34: e3520000  cmp r2, #0x0
0c00ec38: da000004  ble 0x0c00ec50
0c00ec3c: e5993000  ldr r3, [r9, #0x0]
0c00ec40: e7813100  str r3, [r1, r0, lsl #2]
0c00ec44: e2800001  add r0, r0, #0x1
0c00ec48: e1520000  cmp r2, r0
0c00ec4c: cafffffa  bgt 0x0c00ec3c
0c00ec50: e599203c  ldr r2, [r9, #0x3c]
0c00ec54: e7812100  str r2, [r1, r0, lsl #2]
0c00ec58: e58d1000  str r1, [sp, #0x0]
0c00ec5c: e1a0000d  mov r0, sp
0c00ec60: eb000153  bl 0x0c00f1b4 <fn_0c00f1b4>
0c00ec64: e91ba800  ldmdb r11, {r11,sp,pc}
0c00ec68: 0404e76c  .word 0x0404e76c
0c00ec6c: e5992000  ldr r2, [r9, #0x0]
0c00ec70: e599003c  ldr r0, [r9, #0x3c]
0c00ec74: e59f3010  ldr r3, [pc, #0x10] =0x0404274c
0c00ec78: e59f1010  ldr r1, [pc, #0x10] =0x04018f74
0c00ec7c: e5813000  str r3, [r1, #0x0]
0c00ec80: e1a01000  mov r1, r0
0c00ec84: e1a00002  mov r0, r2
0c00ec88: ea000201  b 0x0c00f494 <fn_0c00f494>
0c00ec8c: 0404274c  .word 0x0404274c
0c00ec90: 04018f74  .word 0x04018f74
0c00ec94: e599003c  ldr r0, [r9, #0x3c]
0c00ec98: e51f1010  ldr r1, [pc, #-0x10] =0x04018f74
0c00ec9c: e5a10004  str r0, [r1, #0x4]!
0c00eca0: e3a00001  mov r0, #0x1
0c00eca4: ea000d76  b 0x0c012284 <fn_0c012284>
0c00eca8: e599003c  ldr r0, [r9, #0x3c]
0c00ecac: e51f1024  ldr r1, [pc, #-0x24] =0x04018f74
0c00ecb0: e5a10004  str r0, [r1, #0x4]!
0c00ecb4: ea000bb4  b 0x0c011b8c
0c00ecb8: e599003c  ldr r0, [r9, #0x3c]
0c00ecbc: e51f1034  ldr r1, [pc, #-0x34] =0x04018f74
0c00ecc0: e5a10004  str r0, [r1, #0x4]!
0c00ecc4: ea001e17  b 0x0c016528
0c00ecc8: e599103c  ldr r1, [r9, #0x3c]
0c00eccc: e51f0044  ldr r0, [pc, #-0x44] =0x04018f74
0c00ecd0: e5900000  ldr r0, [r0, #0x0]
0c00ecd4: e2800903  add r0, r0, #0xc000
0c00ecd8: e5a01018  str r1, [r0, #0x18]!
0c00ecdc: e3310000  teq r1, #0x0
0c00ece0: 128f0f01  addne r0, pc, #0x4
0c00ece4: 1a001f2e  bne 0x0c0169a4 <fn_0c0169a4>
0c00ece8: e1a0f00e  mov pc, lr
0c00ecec: 74643a20  .asciz "td: debug-level = %d\n"
0c00ed04: e599103c  ldr r1, [r9, #0x3c]
0c00ed08: e51f0080  ldr r0, [pc, #-0x80] =0x04018f74
0c00ed0c: e5801004  str r1, [r0, #0x4]
0c00ed10: e5900000  ldr r0, [r0, #0x0]
0c00ed14: e2800903  add r0, r0, #0xc000
0c00ed18: e5900014  ldr r0, [r0, #0x14]
0c00ed1c: ea000c72  b 0x0c011eec <send_host_intr>
0c00ed20: e5991000  ldr r1, [r9, #0x0]
0c00ed24: e51f009c  ldr r0, [pc, #-0x9c] =0x04018f74
0c00ed28: e5801004  str r1, [r0, #0x4]
0c00ed2c: e5991000  ldr r1, [r9, #0x0]
0c00ed30: e5801004  str r1, [r0, #0x4]
0c00ed34: e599103c  ldr r1, [r9, #0x3c]
0c00ed38: e5a01004  str r1, [r0, #0x4]!
0c00ed3c: e1a0f00e  mov pc, lr
0c00ed40: e1a0c00d  mov r12, sp
0c00ed44: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c00ed48: e24cb004  sub r11, r12, #0x4
0c00ed4c: e5991000  ldr r1, [r9, #0x0]
0c00ed50: e1a04001  mov r4, r1
0c00ed54: e28f0f39  add r0, pc, #0xe4
0c00ed58: eb001f11  bl 0x0c0169a4 <fn_0c0169a4>
0c00ed5c: e2440001  sub r0, r4, #0x1
0c00ed60: e3500013  cmp r0, #0x13
0c00ed64: 908ff100  addls pc, pc, r0, lsl #2
0c00ed68: ea000030  b 0x0c00ee30
0c00ed6c: ea000013  b 0x0c00edc0
0c00ed70: ea000014  b 0x0c00edc8
0c00ed74: ea000015  b 0x0c00edd0
0c00ed78: ea000016  b 0x0c00edd8
0c00ed7c: ea000019  b 0x0c00ede8
0c00ed80: ea00001a  b 0x0c00edf0
0c00ed84: ea00001b  b 0x0c00edf8
0c00ed88: ea00001c  b 0x0c00ee00
0c00ed8c: ea00001d  b 0x0c00ee08
0c00ed90: ea000012  b 0x0c00ede0
0c00ed94: ea000025  b 0x0c00ee30
0c00ed98: ea00001c  b 0x0c00ee10
0c00ed9c: ea00001d  b 0x0c00ee18
0c00eda0: ea00001e  b 0x0c00ee20
0c00eda4: ea00001f  b 0x0c00ee28
0c00eda8: ea000020  b 0x0c00ee30
0c00edac: ea00001f  b 0x0c00ee30
0c00edb0: ea00001e  b 0x0c00ee30
0c00edb4: ea00001d  b 0x0c00ee30
0c00edb8: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00edbc: eaffffd7  b 0x0c00ed20
0c00edc0: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00edc4: eaffff76  b 0x0c00eba4
0c00edc8: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00edcc: eaffff5d  b 0x0c00eb48
0c00edd0: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00edd4: eaffff5d  b 0x0c00eb50
0c00edd8: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00eddc: eaffff75  b 0x0c00ebb8
0c00ede0: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00ede4: eaffff76  b 0x0c00ebc4
0c00ede8: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00edec: eaffff5f  b 0x0c00eb70
0c00edf0: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00edf4: eaffff5a  b 0x0c00eb64
0c00edf8: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00edfc: eaffff6a  b 0x0c00ebac
0c00ee00: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00ee04: eaffff98  b 0x0c00ec6c
0c00ee08: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00ee0c: eaffffa0  b 0x0c00ec94
0c00ee10: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00ee14: eaffffa3  b 0x0c00eca8
0c00ee18: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00ee1c: eaffffa5  b 0x0c00ecb8
0c00ee20: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00ee24: eaffffa7  b 0x0c00ecc8
0c00ee28: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00ee2c: eaffffb4  b 0x0c00ed04
0c00ee30: e28f0f06  add r0, pc, #0x18
0c00ee34: eb001eda  bl 0x0c0169a4 <fn_0c0169a4>
0c00ee38: e599003c  ldr r0, [r9, #0x3c]
0c00ee3c: e91ba810  ldmdb r11, {r4,r11,sp,pc}
0c00ee40: 61746d3a  .asciz "atm: cmd = %d"
0c00ee50: 61746d3a  .asciz "atm: bad command .. bailing\n"
fn_0c00ee70:
0c00ee70: e1a0c00d  mov r12, sp
0c00ee74: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c00ee78: e24cb004  sub r11, r12, #0x4
0c00ee7c: e51f01f8  ldr r0, [pc, #-0x1f8] =0x0404274c
0c00ee80: e51f11f8  ldr r1, [pc, #-0x1f8] =0x04018f74
0c00ee84: e3a02000  mov r2, #0x0
0c00ee88: e5810000  str r0, [r1, #0x0]
0c00ee8c: e2800903  add r0, r0, #0xc000
0c00ee90: e5a02018  str r2, [r0, #0x18]!
0c00ee94: e5910000  ldr r0, [r1, #0x0]
0c00ee98: e2800903  add r0, r0, #0xc000
0c00ee9c: e5a0201c  str r2, [r0, #0x1c]!
0c00eea0: e5d8c042  ldrb r12, [r8, #0x42]
0c00eea4: e5d81043  ldrb r1, [r8, #0x43]
0c00eea8: e1a0cc0c  mov r12, r12, lsl #24
0c00eeac: e181184c  orr r1, r1, r12, asr #16
0c00eeb0: e5d8c040  ldrb r12, [r8, #0x40]
0c00eeb4: e5d80041  ldrb r0, [r8, #0x41]
0c00eeb8: e1a0cc0c  mov r12, r12, lsl #24
0c00eebc: e180084c  orr r0, r0, r12, asr #16
0c00eec0: eb000173  bl 0x0c00f494 <fn_0c00f494>
0c00eec4: e91b6800  ldmdb r11, {r11,sp,lr}
0c00eec8: ea001d96  b 0x0c016528
fn_0c00eecc:
0c00eecc: e5898430  str r8, [r9, #0x430]
0c00eed0: e1a00080  mov r0, r0, lsl #1
0c00eed4: e5890840  str r0, [r9, #0x840]
0c00eed8: e5892840  str r2, [r9, #0x840]
0c00eedc: e5891840  str r1, [r9, #0x840]
0c00eee0: e3a00035  mov r0, #0x35
0c00eee4: e2800a03  add r0, r0, #0x3000
0c00eee8: e58908c0  str r0, [r9, #0x8c0]
0c00eeec: e1a0f00e  mov pc, lr
0c00eef0: e5898430  str r8, [r9, #0x430]
0c00eef4: e1a00080  mov r0, r0, lsl #1
0c00eef8: e5890840  str r0, [r9, #0x840]
0c00eefc: e5892840  str r2, [r9, #0x840]
0c00ef00: e5891840  str r1, [r9, #0x840]
0c00ef04: e3a00035  mov r0, #0x35
0c00ef08: e2800a03  add r0, r0, #0x3000
0c00ef0c: e58908c0  str r0, [r9, #0x8c0]
0c00ef10: e1a0f00e  mov pc, lr
fn_0c00ef14:
0c00ef14: e5898430  str r8, [r9, #0x430]
0c00ef18: e5890840  str r0, [r9, #0x840]
0c00ef1c: e5891840  str r1, [r9, #0x840]
0c00ef20: e3a00a03  mov r0, #0x3000
0c00ef24: e58908c0  str r0, [r9, #0x8c0]
0c00ef28: e1a0f00e  mov pc, lr
fn_0c00ef2c:
0c00ef2c: e1a00800  mov r0, r0, lsl #16
0c00ef30: e5898430  str r8, [r9, #0x430]
0c00ef34: e3a02000  mov r2, #0x0
0c00ef38: e5892840  str r2, [r9, #0x840]
0c00ef3c: e5891840  str r1, [r9, #0x840]
0c00ef40: e5890840  str r0, [r9, #0x840]
0c00ef44: e3a00035  mov r0, #0x35
0c00ef48: e2800a03  add r0, r0, #0x3000
0c00ef4c: e58908c0  str r0, [r9, #0x8c0]
0c00ef50: e1a0f00e  mov pc, lr
fn_0c00ef54:
0c00ef54: e1a01801  mov r1, r1, lsl #16
0c00ef58: e1a01821  mov r1, r1, lsr #16
0c00ef5c: e1a00800  mov r0, r0, lsl #16
0c00ef60: e1a00820  mov r0, r0, lsr #16
0c00ef64: e1810800  orr r0, r1, r0, lsl #16
0c00ef68: e5898430  str r8, [r9, #0x430]
0c00ef6c: e3a01000  mov r1, #0x0
0c00ef70: e5891840  str r1, [r9, #0x840]
0c00ef74: e5892840  str r2, [r9, #0x840]
0c00ef78: e5890840  str r0, [r9, #0x840]
0c00ef7c: e3a00035  mov r0, #0x35
0c00ef80: e2800a03  add r0, r0, #0x3000
0c00ef84: e58908c0  str r0, [r9, #0x8c0]
0c00ef88: e1a0f00e  mov pc, lr
fn_0c00ef8c:
0c00ef8c: e92d4030  stmdb sp!, {r4,r5,lr}
0c00ef90: e1a01401  mov r1, r1, lsl #8
0c00ef94: e1a02402  mov r2, r2, lsl #8
0c00ef98: e1a03403  mov r3, r3, lsl #8
0c00ef9c: e28de00c  add lr, sp, #0xc
0c00efa0: e89e5010  ldmia lr, {r4,r12,lr}
0c00efa4: e1a04184  mov r4, r4, lsl #3
0c00efa8: e1a0c18c  mov r12, r12, lsl #3
0c00efac: e1a0e18e  mov lr, lr, lsl #3
0c00efb0: e1a00e00  mov r0, r0, lsl #28
0c00efb4: e59d5018  ldr r5, [sp, #0x18]
0c00efb8: e3350000  teq r5, #0x0
0c00efbc: 13800201  orrne r0, r0, #0x10000000
0c00efc0: e1a01601  mov r1, r1, lsl #12
0c00efc4: e1a01621  mov r1, r1, lsr #12
0c00efc8: e1a05401  mov r5, r1, lsl #8
0c00efcc: e2021aff  and r1, r2, #0xff000
0c00efd0: e1851641  orr r1, r5, r1, asr #12
0c00efd4: e1810000  orr r0, r1, r0
0c00efd8: e1a02a02  mov r2, r2, lsl #20
0c00efdc: e1a01623  mov r1, r3, lsr #12
0c00efe0: e1a01601  mov r1, r1, lsl #12
0c00efe4: e1821621  orr r1, r2, r1, lsr #12
0c00efe8: e1a02a03  mov r2, r3, lsl #20
0c00efec: e1a03984  mov r3, r4, lsl #19
0c00eff0: e1a039a3  mov r3, r3, lsr #19
0c00eff4: e1822383  orr r2, r2, r3, lsl #7
0c00eff8: e20c3d7f  and r3, r12, #0x1fc0
0c00effc: e1822343  orr r2, r2, r3, asr #6
0c00f000: e1a03d0c  mov r3, r12, lsl #26
0c00f004: e1a0c98e  mov r12, lr, lsl #19
0c00f008: e1a0c9ac  mov r12, r12, lsr #19
0c00f00c: e183368c  orr r3, r3, r12, lsl #13
0c00f010: e5898430  str r8, [r9, #0x430]
0c00f014: e5891840  str r1, [r9, #0x840]
0c00f018: e5890840  str r0, [r9, #0x840]
0c00f01c: e5893840  str r3, [r9, #0x840]
0c00f020: e5892840  str r2, [r9, #0x840]
0c00f024: e3a00028  mov r0, #0x28
0c00f028: e2800a03  add r0, r0, #0x3000
0c00f02c: e58908c0  str r0, [r9, #0x8c0]
0c00f030: e8bd8030  ldmia sp!, {r4,r5,pc}
fn_0c00f034:
0c00f034: e3500a01  cmp r0, #0x1000
0c00f038: 359f1008  ldrcc r1, [pc, #0x8] =0x04018f74
0c00f03c: 35911000  ldrcc r1, [r1, #0x0]
0c00f040: 35810000  strcc r0, [r1, #0x0]
0c00f044: e1a0f00e  mov pc, lr
0c00f048: 04018f74  .word 0x04018f74
fn_0c00f04c:
0c00f04c: e3500a01  cmp r0, #0x1000
0c00f050: 21a0f00e  movcs pc, lr
0c00f054: e0800080  add r0, r0, r0, lsl #1
0c00f058: e51fc018  ldr r12, [pc, #-0x18] =0x04018f74
0c00f05c: e59cc000  ldr r12, [r12, #0x0]
0c00f060: e08c0100  add r0, r12, r0, lsl #2
0c00f064: e1a01a01  mov r1, r1, lsl #20
0c00f068: e1a01a21  mov r1, r1, lsr #20
0c00f06c: e5a01014  str r1, [r0, #0x14]!
0c00f070: e1a01a02  mov r1, r2, lsl #20
0c00f074: e1a01a21  mov r1, r1, lsr #20
0c00f078: e5801004  str r1, [r0, #0x4]
0c00f07c: e1a01a03  mov r1, r3, lsl #20
0c00f080: e1a01a21  mov r1, r1, lsr #20
0c00f084: e5a01008  str r1, [r0, #0x8]!
0c00f088: e1a0f00e  mov pc, lr
0c00f08c: e1a0c00d  mov r12, sp
0c00f090: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c00f094: e24cb004  sub r11, r12, #0x4
0c00f098: e1a05000  mov r5, r0
0c00f09c: e1a04001  mov r4, r1
0c00f0a0: e51f0060  ldr r0, [pc, #-0x60] =0x04018f74
0c00f0a4: e5900000  ldr r0, [r0, #0x0]
0c00f0a8: e5901000  ldr r1, [r0, #0x0]
0c00f0ac: e0811081  add r1, r1, r1, lsl #1
0c00f0b0: e0800101  add r0, r0, r1, lsl #2
0c00f0b4: e2806014  add r6, r0, #0x14
0c00f0b8: eb000a35  bl 0x0c011994 <fn_0c011994>
0c00f0bc: e3a03000  mov r3, #0x0
0c00f0c0: e8960007  ldmia r6, {r0,r1,r2}
0c00f0c4: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00f0c8: e1a02004  mov r2, r4
0c00f0cc: e1a01005  mov r1, r5
0c00f0d0: e3a00002  mov r0, #0x2
0c00f0d4: ebffffac  bl 0x0c00ef8c <fn_0c00ef8c>
0c00f0d8: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
fn_0c00f0dc:
0c00f0dc: e1a0c00d  mov r12, sp
0c00f0e0: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00f0e4: e24cb004  sub r11, r12, #0x4
0c00f0e8: e1a07000  mov r7, r0
0c00f0ec: e1a06001  mov r6, r1
0c00f0f0: e1a05002  mov r5, r2
0c00f0f4: e1a04003  mov r4, r3
0c00f0f8: e51f00b8  ldr r0, [pc, #-0xb8] =0x04018f74
0c00f0fc: e5900000  ldr r0, [r0, #0x0]
0c00f100: e5901000  ldr r1, [r0, #0x0]
0c00f104: e0811081  add r1, r1, r1, lsl #1
0c00f108: e0800101  add r0, r0, r1, lsl #2
0c00f10c: e280a014  add r10, r0, #0x14
0c00f110: eb000a1f  bl 0x0c011994 <fn_0c011994>
0c00f114: e3a03000  mov r3, #0x0
0c00f118: e89a0007  ldmia r10, {r0,r1,r2}
0c00f11c: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00f120: e1a02004  mov r2, r4
0c00f124: e1a01007  mov r1, r7
0c00f128: e3a00000  mov r0, #0x0
0c00f12c: ebffff96  bl 0x0c00ef8c <fn_0c00ef8c>
0c00f130: e28dd010  add sp, sp, #0x10
0c00f134: e3a03000  mov r3, #0x0
0c00f138: e89a0007  ldmia r10, {r0,r1,r2}
0c00f13c: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00f140: e1a02004  mov r2, r4
0c00f144: e1a01006  mov r1, r6
0c00f148: e3a00000  mov r0, #0x0
0c00f14c: ebffff8e  bl 0x0c00ef8c <fn_0c00ef8c>
0c00f150: e28dd010  add sp, sp, #0x10
0c00f154: e3a03000  mov r3, #0x0
0c00f158: e89a0007  ldmia r10, {r0,r1,r2}
0c00f15c: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00f160: e1a02005  mov r2, r5
0c00f164: e1a01007  mov r1, r7
0c00f168: e3a00006  mov r0, #0x6
0c00f16c: ebffff86  bl 0x0c00ef8c <fn_0c00ef8c>
0c00f170: e28dd010  add sp, sp, #0x10
0c00f174: e3a03001  mov r3, #0x1
0c00f178: e89a0007  ldmia r10, {r0,r1,r2}
0c00f17c: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00f180: e1a02005  mov r2, r5
0c00f184: e1a01006  mov r1, r6
0c00f188: e3a03000  mov r3, #0x0
0c00f18c: e3a00006  mov r0, #0x6
0c00f190: ebffff7d  bl 0x0c00ef8c <fn_0c00ef8c>
0c00f194: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
fn_0c00f198:
0c00f198: e1a02000  mov r2, r0
0c00f19c: e51f015c  ldr r0, [pc, #-0x15c] =0x04018f74
0c00f1a0: e5903000  ldr r3, [r0, #0x0]
0c00f1a4: e5a32004  str r2, [r3, #0x4]!
0c00f1a8: e5900000  ldr r0, [r0, #0x0]
0c00f1ac: e5a01008  str r1, [r0, #0x8]!
0c00f1b0: e1a0f00e  mov pc, lr
fn_0c00f1b4:
0c00f1b4: e1a0c00d  mov r12, sp
0c00f1b8: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c00f1bc: e24cb004  sub r11, r12, #0x4
0c00f1c0: e1a04000  mov r4, r0
0c00f1c4: e5903000  ldr r3, [r0, #0x0]
0c00f1c8: e92d0008  stmdb sp!, {r3}
0c00f1cc: e51f518c  ldr r5, [pc, #-0x18c] =0x04018f74
0c00f1d0: e5950000  ldr r0, [r5, #0x0]
0c00f1d4: e5901008  ldr r1, [r0, #0x8]
0c00f1d8: e5942010  ldr r2, [r4, #0x10]
0c00f1dc: e0411002  sub r1, r1, r2
0c00f1e0: e5b02004  ldr r2, [r0, #0x4]!
0c00f1e4: e594000c  ldr r0, [r4, #0xc]
0c00f1e8: e0420000  sub r0, r2, r0
0c00f1ec: e994000c  ldmib r4, {r2,r3}
0c00f1f0: eb00000b  bl 0x0c00f224 <fn_0c00f224>
0c00f1f4: e28dd004  add sp, sp, #0x4
0c00f1f8: e5950000  ldr r0, [r5, #0x0]
0c00f1fc: e5902004  ldr r2, [r0, #0x4]
0c00f200: e5941014  ldr r1, [r4, #0x14]
0c00f204: e0821001  add r1, r2, r1
0c00f208: e5a01004  str r1, [r0, #0x4]!
0c00f20c: e5950000  ldr r0, [r5, #0x0]
0c00f210: e5901008  ldr r1, [r0, #0x8]
0c00f214: e5b42018  ldr r2, [r4, #0x18]!
0c00f218: e0811002  add r1, r1, r2
0c00f21c: e5a01008  str r1, [r0, #0x8]!
0c00f220: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
fn_0c00f224:
0c00f224: e1a0c00d  mov r12, sp
0c00f228: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00f22c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00f230: e24cb014  sub r11, r12, #0x14
0c00f234: e1a06000  mov r6, r0
0c00f238: e1a04002  mov r4, r2
0c00f23c: e1a05003  mov r5, r3
0c00f240: e24dd008  sub sp, sp, #0x8
0c00f244: e59ba014  ldr r10, [r11, #0x14]
0c00f248: e51f0208  ldr r0, [pc, #-0x208] =0x04018f74
0c00f24c: e5900000  ldr r0, [r0, #0x0]
0c00f250: e5901000  ldr r1, [r0, #0x0]
0c00f254: e0811081  add r1, r1, r1, lsl #1
0c00f258: e0800101  add r0, r0, r1, lsl #2
0c00f25c: e2807014  add r7, r0, #0x14
0c00f260: e59f3228  ldr r3, [pc, #0x228] =0x0404f70c
0c00f264: e2832a0f  add r2, r3, #0xf000
0c00f268: e5920f4c  ldr r0, [r2, #0xf4c]
0c00f26c: e3c01001  bic r1, r0, #0x1
0c00f270: e3a000d3  mov r0, #0xd3
0c00f274: e2800c3f  add r0, r0, #0x3f00
0c00f278: e5821f4c  str r1, [r2, #0xf4c]
0c00f27c: ebffff24  bl 0x0c00ef14 <fn_0c00ef14>
0c00f280: e5920f4c  ldr r0, [r2, #0xf4c]
0c00f284: e3c00002  bic r0, r0, #0x2
0c00f288: e5a20f4c  str r0, [r2, #0xf4c]!
0c00f28c: e1a01000  mov r1, r0
0c00f290: e3a000d3  mov r0, #0xd3
0c00f294: e2800c3f  add r0, r0, #0x3f00
0c00f298: ebffff1d  bl 0x0c00ef14 <fn_0c00ef14>
0c00f29c: e2830a02  add r0, r3, #0x2000
0c00f2a0: e5901018  ldr r1, [r0, #0x18]
0c00f2a4: e3c11030  bic r1, r1, #0x30
0c00f2a8: e5a01018  str r1, [r0, #0x18]!
0c00f2ac: e3a00006  mov r0, #0x6
0c00f2b0: e2800b02  add r0, r0, #0x800
0c00f2b4: ebffff16  bl 0x0c00ef14 <fn_0c00ef14>
0c00f2b8: e3a03000  mov r3, #0x0
0c00f2bc: e3a02000  mov r2, #0x0
0c00f2c0: e3a01000  mov r1, #0x0
0c00f2c4: e3a00000  mov r0, #0x0
0c00f2c8: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c00f2cc: e3a00002  mov r0, #0x2
0c00f2d0: ebffff2d  bl 0x0c00ef8c <fn_0c00ef8c>
0c00f2d4: e28dd010  add sp, sp, #0x10
0c00f2d8: e3a0100f  mov r1, #0xf
0c00f2dc: e3a000d3  mov r0, #0xd3
0c00f2e0: e2800c3f  add r0, r0, #0x3f00
0c00f2e4: ebffff0a  bl 0x0c00ef14 <fn_0c00ef14>
0c00f2e8: e3a01000  mov r1, #0x0
0c00f2ec: e3a00901  mov r0, #0x4000
0c00f2f0: e2400008  sub r0, r0, #0x8
0c00f2f4: ebffff06  bl 0x0c00ef14 <fn_0c00ef14>
0c00f2f8: e1a00a05  mov r0, r5, lsl #20
0c00f2fc: e1a00a20  mov r0, r0, lsr #20
0c00f300: e3a02401  mov r2, #0x1000000
0c00f304: e2422a01  sub r2, r2, #0x1000
0c00f308: e0021604  and r1, r2, r4, lsl #12
0c00f30c: e1801001  orr r1, r0, r1
0c00f310: e3a00ff3  mov r0, #0x3cc
0c00f314: e2800b0f  add r0, r0, #0x3c00
0c00f318: ebfffefd  bl 0x0c00ef14 <fn_0c00ef14>
0c00f31c: e1a00a04  mov r0, r4, lsl #20
0c00f320: e1a00a20  mov r0, r0, lsr #20
0c00f324: e2461001  sub r1, r6, #0x1
0c00f328: e0022601  and r2, r2, r1, lsl #12
0c00f32c: e1801002  orr r1, r0, r2
0c00f330: e3a000cd  mov r0, #0xcd
0c00f334: e2800c3f  add r0, r0, #0x3f00
0c00f338: ebfffef5  bl 0x0c00ef14 <fn_0c00ef14>
0c00f33c: e59b0008  ldr r0, [r11, #0x8]
0c00f340: e2400001  sub r0, r0, #0x1
0c00f344: e1a00a00  mov r0, r0, lsl #20
0c00f348: e1a00a20  mov r0, r0, lsr #20
0c00f34c: e1801002  orr r1, r0, r2
0c00f350: e3a000ce  mov r0, #0xce
0c00f354: e2800c3f  add r0, r0, #0x3f00
0c00f358: ebfffeed  bl 0x0c00ef14 <fn_0c00ef14>
0c00f35c: e3a00a01  mov r0, #0x1000
0c00f360: e2400001  sub r0, r0, #0x1
0c00f364: e5971000  ldr r1, [r7, #0x0]
0c00f368: e0002101  and r2, r0, r1, lsl #2
0c00f36c: e5971004  ldr r1, [r7, #0x4]
0c00f370: e0000101  and r0, r0, r1, lsl #2
0c00f374: e1821600  orr r1, r2, r0, lsl #12
0c00f378: e3a000ff  mov r0, #0xff
0c00f37c: e5972008  ldr r2, [r7, #0x8]
0c00f380: e0000102  and r0, r0, r2, lsl #2
0c00f384: e1810c00  orr r0, r1, r0, lsl #24
0c00f388: e58d0004  str r0, [sp, #0x4]
0c00f38c: e3a00c0f  mov r0, #0xf00
0c00f390: e5b71008  ldr r1, [r7, #0x8]!
0c00f394: e0000101  and r0, r0, r1, lsl #2
0c00f398: e1a00440  mov r0, r0, asr #8
0c00f39c: e58d0000  str r0, [sp, #0x0]
0c00f3a0: e1a01000  mov r1, r0
0c00f3a4: e3a00003  mov r0, #0x3
0c00f3a8: e2800b02  add r0, r0, #0x800
0c00f3ac: e59d2004  ldr r2, [sp, #0x4]
0c00f3b0: ebfffee7  bl 0x0c00ef54 <fn_0c00ef54>
0c00f3b4: e0000495  mul r0, r5, r4
0c00f3b8: e2903007  adds r3, r0, #0x7
0c00f3bc: 42833007  addmi r3, r3, #0x7
0c00f3c0: e1a031c3  mov r3, r3, asr #3
0c00f3c4: e3a01000  mov r1, #0x0
0c00f3c8: e3530000  cmp r3, #0x0
0c00f3cc: 9a00002e  bls 0x0c00f48c
0c00f3d0: e3a0400d  mov r4, #0xd
0c00f3d4: e2844a03  add r4, r4, #0x3000
0c00f3d8: e08ae001  add lr, r10, r1
0c00f3dc: e0432001  sub r2, r3, r1
0c00f3e0: e35200fa  cmp r2, #0xfa
0c00f3e4: c3a020fa  movgt r2, #0xfa
0c00f3e8: e5898430  str r8, [r9, #0x430]
0c00f3ec: e5892840  str r2, [r9, #0x840]
0c00f3f0: e3a0c000  mov r12, #0x0
0c00f3f4: e3520000  cmp r2, #0x0
0c00f3f8: da00001f  ble 0x0c00f47c
0c00f3fc: e4de0001  ldrb r0, [lr], #0x1
0c00f400: e2005080  and r5, r0, #0x80
0c00f404: e1a05c05  mov r5, r5, lsl #24
0c00f408: e2006040  and r6, r0, #0x40
0c00f40c: e1855486  orr r5, r5, r6, lsl #9
0c00f410: e58d5000  str r5, [sp, #0x0]
0c00f414: e2005020  and r5, r0, #0x20
0c00f418: e1a05d05  mov r5, r5, lsl #26
0c00f41c: e2006010  and r6, r0, #0x10
0c00f420: e1855586  orr r5, r5, r6, lsl #11
0c00f424: e58d5004  str r5, [sp, #0x4]
0c00f428: e59d5000  ldr r5, [sp, #0x0]
0c00f42c: e5895840  str r5, [r9, #0x840]
0c00f430: e59d5004  ldr r5, [sp, #0x4]
0c00f434: e5895840  str r5, [r9, #0x840]
0c00f438: e2005008  and r5, r0, #0x8
0c00f43c: e1a05e05  mov r5, r5, lsl #28
0c00f440: e2006004  and r6, r0, #0x4
0c00f444: e1855686  orr r5, r5, r6, lsl #13
0c00f448: e58d5000  str r5, [sp, #0x0]
0c00f44c: e2005002  and r5, r0, #0x2
0c00f450: e1a05f05  mov r5, r5, lsl #30
0c00f454: e2000001  and r0, r0, #0x1
0c00f458: e1850780  orr r0, r5, r0, lsl #15
0c00f45c: e58d0004  str r0, [sp, #0x4]
0c00f460: e59d0000  ldr r0, [sp, #0x0]
0c00f464: e5890840  str r0, [r9, #0x840]
0c00f468: e59d0004  ldr r0, [sp, #0x4]
0c00f46c: e5890840  str r0, [r9, #0x840]
0c00f470: e28cc001  add r12, r12, #0x1
0c00f474: e15c0002  cmp r12, r2
0c00f478: baffffdf  blt 0x0c00f3fc
0c00f47c: e58948c0  str r4, [r9, #0x8c0]
0c00f480: e28110fa  add r1, r1, #0xfa
0c00f484: e1510003  cmp r1, r3
0c00f488: 3affffd2  bcc 0x0c00f3d8
0c00f48c: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c00f490: 0404f70c  .word 0x0404f70c
fn_0c00f494:
0c00f494: e1a0c00d  mov r12, sp
0c00f498: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c00f49c: e24cb004  sub r11, r12, #0x4
0c00f4a0: e1a04000  mov r4, r0
0c00f4a4: e3500000  cmp r0, #0x0
0c00f4a8: d3a00c05  movle r0, #0x500
0c00f4ac: c1a00004  movgt r0, r4
0c00f4b0: e51f2470  ldr r2, [pc, #-0x470] =0x04018f74
0c00f4b4: e5923000  ldr r3, [r2, #0x0]
0c00f4b8: e3510000  cmp r1, #0x0
0c00f4bc: e5a3000c  str r0, [r3, #0xc]!
0c00f4c0: d3a00b01  movle r0, #0x400
0c00f4c4: c1a00001  movgt r0, r1
0c00f4c8: e51f1488  ldr r1, [pc, #-0x488] =0x04018f74
0c00f4cc: e5912000  ldr r2, [r1, #0x0]
0c00f4d0: e5a20010  str r0, [r2, #0x10]!
0c00f4d4: e3a02000  mov r2, #0x0
0c00f4d8: e5910000  ldr r0, [r1, #0x0]
0c00f4dc: e5802000  str r2, [r0, #0x0]
0c00f4e0: e5910000  ldr r0, [r1, #0x0]
0c00f4e4: e5a02008  str r2, [r0, #0x8]!
0c00f4e8: e5910000  ldr r0, [r1, #0x0]
0c00f4ec: e5a02004  str r2, [r0, #0x4]!
0c00f4f0: eb001bab  bl 0x0c0163a4 <fn_0c0163a4>
0c00f4f4: e3e0101f  mvn r1, #0x1f
0c00f4f8: e3e0001f  mvn r0, #0x1f
0c00f4fc: eb001b87  bl 0x0c016320 <fn_0c016320>
0c00f500: eb000101  bl 0x0c00f90c <fn_0c00f90c>
0c00f504: e5d8c044  ldrb r12, [r8, #0x44]
0c00f508: e5d80045  ldrb r0, [r8, #0x45]
0c00f50c: e180040c  orr r0, r0, r12, lsl #8
0c00f510: e2000003  and r0, r0, #0x3
0c00f514: e5c80045  strb r0, [r8, #0x45]
0c00f518: e1a00440  mov r0, r0, asr #8
0c00f51c: e5c80044  strb r0, [r8, #0x44]
0c00f520: e5d8c044  ldrb r12, [r8, #0x44]
0c00f524: e5d80045  ldrb r0, [r8, #0x45]
0c00f528: e1a0cc0c  mov r12, r12, lsl #24
0c00f52c: e180084c  orr r0, r0, r12, asr #16
0c00f530: e3300000  teq r0, #0x0
0c00f534: 03a06008  moveq r6, #0x8
0c00f538: 0a00000c  beq 0x0c00f570
0c00f53c: e3300001  teq r0, #0x1
0c00f540: 0a000009  beq 0x0c00f56c
0c00f544: e3300002  teq r0, #0x2
0c00f548: 03a06020  moveq r6, #0x20
0c00f54c: 0a000007  beq 0x0c00f570
0c00f550: e3300003  teq r0, #0x3
0c00f554: 03a06040  moveq r6, #0x40
0c00f558: 0a000004  beq 0x0c00f570
0c00f55c: e3a00001  mov r0, #0x1
0c00f560: e5c80045  strb r0, [r8, #0x45]
0c00f564: e3a00000  mov r0, #0x0
0c00f568: e5c80044  strb r0, [r8, #0x44]
0c00f56c: e3a06010  mov r6, #0x10
0c00f570: e51f20e8  ldr r2, [pc, #-0xe8] =0x0404f70c
0c00f574: e2825a07  add r5, r2, #0x7000
0c00f578: e5950000  ldr r0, [r5, #0x0]
0c00f57c: e3c01003  bic r1, r0, #0x3
0c00f580: e5d8c044  ldrb r12, [r8, #0x44]
0c00f584: e5d80045  ldrb r0, [r8, #0x45]
0c00f588: e180040c  orr r0, r0, r12, lsl #8
0c00f58c: e2000003  and r0, r0, #0x3
0c00f590: e1811000  orr r1, r1, r0
0c00f594: e3a00b07  mov r0, #0x1c00
0c00f598: e5851000  str r1, [r5, #0x0]
0c00f59c: ebfffe5c  bl 0x0c00ef14 <fn_0c00ef14>
0c00f5a0: e59f735c  ldr r7, [pc, #0x35c] =0x0405470c
0c00f5a4: e5970038  ldr r0, [r7, #0x38]
0c00f5a8: e3c0aa1f  bic r10, r0, #0x1f000
0c00f5ac: e284109f  add r1, r4, #0x9f
0c00f5b0: e3a000a0  mov r0, #0xa0
0c00f5b4: eb002093  bl 0x0c017808 <__rt_sdiv>
0c00f5b8: e3a01a1f  mov r1, #0x1f000
0c00f5bc: e0010600  and r0, r1, r0, lsl #12
0c00f5c0: e18a0000  orr r0, r10, r0
0c00f5c4: e5a70038  str r0, [r7, #0x38]!
0c00f5c8: e1a01000  mov r1, r0
0c00f5cc: e3a0000e  mov r0, #0xe
0c00f5d0: e2800b05  add r0, r0, #0x1400
0c00f5d4: ebfffe4e  bl 0x0c00ef14 <fn_0c00ef14>
0c00f5d8: e59f0328  ldr r0, [pc, #0x328] =0x04018f7c
0c00f5dc: e5a06924  str r6, [r0, #0x924]!
0c00f5e0: e51f2158  ldr r2, [pc, #-0x158] =0x0404f70c
0c00f5e4: e5950000  ldr r0, [r5, #0x0]
0c00f5e8: e3800040  orr r0, r0, #0x40
0c00f5ec: e5850000  str r0, [r5, #0x0]
0c00f5f0: e3800080  orr r0, r0, #0x80
0c00f5f4: e5850000  str r0, [r5, #0x0]
0c00f5f8: e3800c01  orr r0, r0, #0x100
0c00f5fc: e5850000  str r0, [r5, #0x0]
0c00f600: e3800c02  orr r0, r0, #0x200
0c00f604: e5850000  str r0, [r5, #0x0]
0c00f608: e3c0103c  bic r1, r0, #0x3c
0c00f60c: e3a00b07  mov r0, #0x1c00
0c00f610: e5851000  str r1, [r5, #0x0]
0c00f614: ebfffe3e  bl 0x0c00ef14 <fn_0c00ef14>
0c00f618: e595000c  ldr r0, [r5, #0xc]
0c00f61c: e3c01001  bic r1, r0, #0x1
0c00f620: e3a00003  mov r0, #0x3
0c00f624: e2800b07  add r0, r0, #0x1c00
0c00f628: e585100c  str r1, [r5, #0xc]
0c00f62c: ebfffe38  bl 0x0c00ef14 <fn_0c00ef14>
0c00f630: e5950018  ldr r0, [r5, #0x18]
0c00f634: e3c01001  bic r1, r0, #0x1
0c00f638: e3a00006  mov r0, #0x6
0c00f63c: e2800b07  add r0, r0, #0x1c00
0c00f640: e5851018  str r1, [r5, #0x18]
0c00f644: ebfffe32  bl 0x0c00ef14 <fn_0c00ef14>
0c00f648: e595001c  ldr r0, [r5, #0x1c]
0c00f64c: e3c01001  bic r1, r0, #0x1
0c00f650: e3a00007  mov r0, #0x7
0c00f654: e2800b07  add r0, r0, #0x1c00
0c00f658: e585101c  str r1, [r5, #0x1c]
0c00f65c: ebfffe2c  bl 0x0c00ef14 <fn_0c00ef14>
0c00f660: e5950020  ldr r0, [r5, #0x20]
0c00f664: e3c01c02  bic r1, r0, #0x200
0c00f668: e3a00008  mov r0, #0x8
0c00f66c: e2800b07  add r0, r0, #0x1c00
0c00f670: e5851020  str r1, [r5, #0x20]
0c00f674: ebfffe26  bl 0x0c00ef14 <fn_0c00ef14>
0c00f678: e5950020  ldr r0, [r5, #0x20]
0c00f67c: e3801b03  orr r1, r0, #0xc00
0c00f680: e3a00008  mov r0, #0x8
0c00f684: e2800b07  add r0, r0, #0x1c00
0c00f688: e5851020  str r1, [r5, #0x20]
0c00f68c: ebfffe20  bl 0x0c00ef14 <fn_0c00ef14>
0c00f690: e595002c  ldr r0, [r5, #0x2c]
0c00f694: e3c0003f  bic r0, r0, #0x3f
0c00f698: e3800001  orr r0, r0, #0x1
0c00f69c: e585002c  str r0, [r5, #0x2c]
0c00f6a0: e3c00d3f  bic r0, r0, #0xfc0
0c00f6a4: e3800d05  orr r0, r0, #0x140
0c00f6a8: e585002c  str r0, [r5, #0x2c]
0c00f6ac: e3c0077e  bic r0, r0, #0x1f80000
0c00f6b0: e3800716  orr r0, r0, #0x580000
0c00f6b4: e585002c  str r0, [r5, #0x2c]
0c00f6b8: e3c00a7e  bic r0, r0, #0x7e000
0c00f6bc: e3800a1e  orr r0, r0, #0x1e000
0c00f6c0: e5a5002c  str r0, [r5, #0x2c]!
0c00f6c4: e1a01000  mov r1, r0
0c00f6c8: e3a0000b  mov r0, #0xb
0c00f6cc: e2800b07  add r0, r0, #0x1c00
0c00f6d0: ebfffe0f  bl 0x0c00ef14 <fn_0c00ef14>
0c00f6d4: e2823a02  add r3, r2, #0x2000
0c00f6d8: e5930018  ldr r0, [r3, #0x18]
0c00f6dc: e3c00903  bic r0, r0, #0xc000
0c00f6e0: e3801901  orr r1, r0, #0x4000
0c00f6e4: e3a00006  mov r0, #0x6
0c00f6e8: e2800b02  add r0, r0, #0x800
0c00f6ec: e5831018  str r1, [r3, #0x18]
0c00f6f0: ebfffe07  bl 0x0c00ef14 <fn_0c00ef14>
0c00f6f4: e5930018  ldr r0, [r3, #0x18]
0c00f6f8: e3c0000c  bic r0, r0, #0xc
0c00f6fc: e3801004  orr r1, r0, #0x4
0c00f700: e3a00006  mov r0, #0x6
0c00f704: e2800b02  add r0, r0, #0x800
0c00f708: e5831018  str r1, [r3, #0x18]
0c00f70c: ebfffe00  bl 0x0c00ef14 <fn_0c00ef14>
0c00f710: e2822a0f  add r2, r2, #0xf000
0c00f714: e5920f44  ldr r0, [r2, #0xf44]
0c00f718: e1a00620  mov r0, r0, lsr #12
0c00f71c: e1a00600  mov r0, r0, lsl #12
0c00f720: e3801014  orr r1, r0, #0x14
0c00f724: e3a000d1  mov r0, #0xd1
0c00f728: e2800c3f  add r0, r0, #0x3f00
0c00f72c: e5821f44  str r1, [r2, #0xf44]
0c00f730: ebfffdf7  bl 0x0c00ef14 <fn_0c00ef14>
0c00f734: e5920f08  ldr r0, [r2, #0xf08]
0c00f738: e1a007a0  mov r0, r0, lsr #15
0c00f73c: e1a00780  mov r0, r0, lsl #15
0c00f740: e5820f08  str r0, [r2, #0xf08]
0c00f744: e3c005ff  bic r0, r0, #0x3fc00000
0c00f748: e3c009fe  bic r0, r0, #0x3f8000
0c00f74c: e380130f  orr r1, r0, #0x3c000000
0c00f750: e38117ff  orr r1, r1, #0x3fc0000
0c00f754: e3a000c2  mov r0, #0xc2
0c00f758: e2800c3f  add r0, r0, #0x3f00
0c00f75c: e5821f08  str r1, [r2, #0xf08]
0c00f760: ebfffdeb  bl 0x0c00ef14 <fn_0c00ef14>
0c00f764: e5920f0c  ldr r0, [r2, #0xf0c]
0c00f768: e1a007a0  mov r0, r0, lsr #15
0c00f76c: e1a00780  mov r0, r0, lsl #15
0c00f770: e5820f0c  str r0, [r2, #0xf0c]
0c00f774: e3c005ff  bic r0, r0, #0x3fc00000
0c00f778: e3c009fe  bic r0, r0, #0x3f8000
0c00f77c: e380130f  orr r1, r0, #0x3c000000
0c00f780: e38117ff  orr r1, r1, #0x3fc0000
0c00f784: e3a000c3  mov r0, #0xc3
0c00f788: e2800c3f  add r0, r0, #0x3f00
0c00f78c: e5821f0c  str r1, [r2, #0xf0c]
0c00f790: ebfffddf  bl 0x0c00ef14 <fn_0c00ef14>
0c00f794: e593001c  ldr r0, [r3, #0x1c]
0c00f798: e1a015a0  mov r1, r0, lsr #11
0c00f79c: e1a01581  mov r1, r1, lsl #11
0c00f7a0: e3a00007  mov r0, #0x7
0c00f7a4: e2800b02  add r0, r0, #0x800
0c00f7a8: e583101c  str r1, [r3, #0x1c]
0c00f7ac: ebfffdd8  bl 0x0c00ef14 <fn_0c00ef14>
0c00f7b0: e5930020  ldr r0, [r3, #0x20]
0c00f7b4: e1a005a0  mov r0, r0, lsr #11
0c00f7b8: e1a00580  mov r0, r0, lsl #11
0c00f7bc: e5a30020  str r0, [r3, #0x20]!
0c00f7c0: e1a01000  mov r1, r0
0c00f7c4: e3a00008  mov r0, #0x8
0c00f7c8: e2800b02  add r0, r0, #0x800
0c00f7cc: ebfffdd0  bl 0x0c00ef14 <fn_0c00ef14>
0c00f7d0: e3a00001  mov r0, #0x1
0c00f7d4: e5a20fd8  str r0, [r2, #0xfd8]!
0c00f7d8: e1a01000  mov r1, r0
0c00f7dc: e3a00901  mov r0, #0x4000
0c00f7e0: e240000a  sub r0, r0, #0xa
0c00f7e4: ebfffdca  bl 0x0c00ef14 <fn_0c00ef14>
0c00f7e8: e3a00000  mov r0, #0x0
0c00f7ec: e3a01000  mov r1, #0x0
0c00f7f0: e3a02606  mov r2, #0x600000
0c00f7f4: e3a03000  mov r3, #0x0
0c00f7f8: e52d3004  str r3, [sp, #-0x4]!
0c00f7fc: e58d3000  str r3, [sp, #0x0]
0c00f800: e59d3000  ldr r3, [sp, #0x0]
0c00f804: e2833001  add r3, r3, #0x1
0c00f808: e58d3000  str r3, [sp, #0x0]
0c00f80c: e3530003  cmp r3, #0x3
0c00f810: bafffffa  blt 0x0c00f800
0c00f814: e5820460  str r0, [r2, #0x460]
0c00f818: e3a03000  mov r3, #0x0
0c00f81c: e58d3000  str r3, [sp, #0x0]
0c00f820: e59d3000  ldr r3, [sp, #0x0]
0c00f824: e2833001  add r3, r3, #0x1
0c00f828: e58d3000  str r3, [sp, #0x0]
0c00f82c: e3530003  cmp r3, #0x3
0c00f830: bafffffa  blt 0x0c00f820
0c00f834: e3a03000  mov r3, #0x0
0c00f838: e58d3000  str r3, [sp, #0x0]
0c00f83c: e58d3000  str r3, [sp, #0x0]
0c00f840: e59d3000  ldr r3, [sp, #0x0]
0c00f844: e2833001  add r3, r3, #0x1
0c00f848: e58d3000  str r3, [sp, #0x0]
0c00f84c: e3530003  cmp r3, #0x3
0c00f850: bafffffa  blt 0x0c00f840
0c00f854: e5821470  str r1, [r2, #0x470]
0c00f858: e3a03000  mov r3, #0x0
0c00f85c: e58d3000  str r3, [sp, #0x0]
0c00f860: e59d3000  ldr r3, [sp, #0x0]
0c00f864: e2833001  add r3, r3, #0x1
0c00f868: e58d3000  str r3, [sp, #0x0]
0c00f86c: e3530003  cmp r3, #0x3
0c00f870: bafffffa  blt 0x0c00f860
0c00f874: e28dd004  add sp, sp, #0x4
0c00f878: e2800001  add r0, r0, #0x1
0c00f87c: e3500060  cmp r0, #0x60
0c00f880: baffffdb  blt 0x0c00f7f4
0c00f884: e3a01020  mov r1, #0x20
0c00f888: e3a00000  mov r0, #0x0
0c00f88c: e3a03000  mov r3, #0x0
0c00f890: e52d3004  str r3, [sp, #-0x4]!
0c00f894: e58d3000  str r3, [sp, #0x0]
0c00f898: e59d3000  ldr r3, [sp, #0x0]
0c00f89c: e2833001  add r3, r3, #0x1
0c00f8a0: e58d3000  str r3, [sp, #0x0]
0c00f8a4: e3530003  cmp r3, #0x3
0c00f8a8: bafffffa  blt 0x0c00f898
0c00f8ac: e7821100  str r1, [r2, r0, lsl #2]
0c00f8b0: e3a03000  mov r3, #0x0
0c00f8b4: e58d3000  str r3, [sp, #0x0]
0c00f8b8: e59d3000  ldr r3, [sp, #0x0]
0c00f8bc: e2833001  add r3, r3, #0x1
0c00f8c0: e58d3000  str r3, [sp, #0x0]
0c00f8c4: e3530003  cmp r3, #0x3
0c00f8c8: bafffffa  blt 0x0c00f8b8
0c00f8cc: e28dd004  add sp, sp, #0x4
0c00f8d0: e2800001  add r0, r0, #0x1
0c00f8d4: e3500040  cmp r0, #0x40
0c00f8d8: baffffeb  blt 0x0c00f88c
0c00f8dc: e51f089c  ldr r0, [pc, #-0x89c] =0x04018f74
0c00f8e0: e5900000  ldr r0, [r0, #0x0]
0c00f8e4: e5901010  ldr r1, [r0, #0x10]
0c00f8e8: e2413001  sub r3, r1, #0x1
0c00f8ec: e590000c  ldr r0, [r0, #0xc]
0c00f8f0: e2401001  sub r1, r0, #0x1
0c00f8f4: e3a02000  mov r2, #0x0
0c00f8f8: e3a00000  mov r0, #0x0
0c00f8fc: e91b6cf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,lr}
0c00f900: ea0007c4  b 0x0c011818
0c00f904: 0405470c  .word 0x0405470c
0c00f908: 04018f7c  .word 0x04018f7c
fn_0c00f90c:
0c00f90c: e1a0c00d  mov r12, sp
0c00f910: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c00f914: e24cb004  sub r11, r12, #0x4
0c00f918: e3a00001  mov r0, #0x1
0c00f91c: eb0000a9  bl 0x0c00fbc8 <fn_0c00fbc8>
0c00f920: e51f2498  ldr r2, [pc, #-0x498] =0x0404f70c
0c00f924: e2820a05  add r0, r2, #0x5000
0c00f928: e5901038  ldr r1, [r0, #0x38]
0c00f92c: e1a01621  mov r1, r1, lsr #12
0c00f930: e1a01601  mov r1, r1, lsl #12
0c00f934: e5801038  str r1, [r0, #0x38]
0c00f938: e3c11a1f  bic r1, r1, #0x1f000
0c00f93c: e3811902  orr r1, r1, #0x8000
0c00f940: e5a01038  str r1, [r0, #0x38]!
0c00f944: e3a0000e  mov r0, #0xe
0c00f948: e2800b05  add r0, r0, #0x1400
0c00f94c: ebfffd70  bl 0x0c00ef14 <fn_0c00ef14>
0c00f950: e1a03002  mov r3, r2
0c00f954: e2822a0f  add r2, r2, #0xf000
0c00f958: e5920f4c  ldr r0, [r2, #0xf4c]
0c00f95c: e3c00001  bic r0, r0, #0x1
0c00f960: e5820f4c  str r0, [r2, #0xf4c]
0c00f964: e3800004  orr r0, r0, #0x4
0c00f968: e5820f4c  str r0, [r2, #0xf4c]
0c00f96c: e3800002  orr r0, r0, #0x2
0c00f970: e5820f4c  str r0, [r2, #0xf4c]
0c00f974: e3801008  orr r1, r0, #0x8
0c00f978: e3a000d3  mov r0, #0xd3
0c00f97c: e2800c3f  add r0, r0, #0x3f00
0c00f980: e5821f4c  str r1, [r2, #0xf4c]
0c00f984: ebfffd62  bl 0x0c00ef14 <fn_0c00ef14>
0c00f988: e1a04003  mov r4, r3
0c00f98c: e2833a02  add r3, r3, #0x2000
0c00f990: e5930000  ldr r0, [r3, #0x0]
0c00f994: e3c00002  bic r0, r0, #0x2
0c00f998: e5830000  str r0, [r3, #0x0]
0c00f99c: e3801001  orr r1, r0, #0x1
0c00f9a0: e3a00b02  mov r0, #0x800
0c00f9a4: e5831000  str r1, [r3, #0x0]
0c00f9a8: ebfffd59  bl 0x0c00ef14 <fn_0c00ef14>
0c00f9ac: e5920f44  ldr r0, [r2, #0xf44]
0c00f9b0: e1a00620  mov r0, r0, lsr #12
0c00f9b4: e1a00600  mov r0, r0, lsl #12
0c00f9b8: e3801010  orr r1, r0, #0x10
0c00f9bc: e3a000d1  mov r0, #0xd1
0c00f9c0: e2800c3f  add r0, r0, #0x3f00
0c00f9c4: e5821f44  str r1, [r2, #0xf44]
0c00f9c8: ebfffd51  bl 0x0c00ef14 <fn_0c00ef14>
0c00f9cc: e5930000  ldr r0, [r3, #0x0]
0c00f9d0: e3c01002  bic r1, r0, #0x2
0c00f9d4: e3a00b02  mov r0, #0x800
0c00f9d8: e5831000  str r1, [r3, #0x0]
0c00f9dc: ebfffd4c  bl 0x0c00ef14 <fn_0c00ef14>
0c00f9e0: e5930028  ldr r0, [r3, #0x28]
0c00f9e4: e3c01003  bic r1, r0, #0x3
0c00f9e8: e3a0000a  mov r0, #0xa
0c00f9ec: e2800b02  add r0, r0, #0x800
0c00f9f0: e5831028  str r1, [r3, #0x28]
0c00f9f4: ebfffd46  bl 0x0c00ef14 <fn_0c00ef14>
0c00f9f8: e3e00000  mvn r0, #0x0
0c00f9fc: e5830024  str r0, [r3, #0x24]
0c00fa00: e1a01000  mov r1, r0
0c00fa04: e3a00009  mov r0, #0x9
0c00fa08: e2800b02  add r0, r0, #0x800
0c00fa0c: ebfffd40  bl 0x0c00ef14 <fn_0c00ef14>
0c00fa10: e5930010  ldr r0, [r3, #0x10]
0c00fa14: e3c0100f  bic r1, r0, #0xf
0c00fa18: e3a00004  mov r0, #0x4
0c00fa1c: e2800b02  add r0, r0, #0x800
0c00fa20: e5831010  str r1, [r3, #0x10]
0c00fa24: ebfffd3a  bl 0x0c00ef14 <fn_0c00ef14>
0c00fa28: e3a00000  mov r0, #0x0
0c00fa2c: e5830014  str r0, [r3, #0x14]
0c00fa30: e1a01000  mov r1, r0
0c00fa34: e3a00005  mov r0, #0x5
0c00fa38: e2800b02  add r0, r0, #0x800
0c00fa3c: ebfffd34  bl 0x0c00ef14 <fn_0c00ef14>
0c00fa40: e593001c  ldr r0, [r3, #0x1c]
0c00fa44: e1a015a0  mov r1, r0, lsr #11
0c00fa48: e1a01581  mov r1, r1, lsl #11
0c00fa4c: e3a00007  mov r0, #0x7
0c00fa50: e2800b02  add r0, r0, #0x800
0c00fa54: e583101c  str r1, [r3, #0x1c]
0c00fa58: ebfffd2d  bl 0x0c00ef14 <fn_0c00ef14>
0c00fa5c: e5930020  ldr r0, [r3, #0x20]
0c00fa60: e1a005a0  mov r0, r0, lsr #11
0c00fa64: e1a00580  mov r0, r0, lsl #11
0c00fa68: e5a30020  str r0, [r3, #0x20]!
0c00fa6c: e1a01000  mov r1, r0
0c00fa70: e3a00008  mov r0, #0x8
0c00fa74: e2800b02  add r0, r0, #0x800
0c00fa78: ebfffd25  bl 0x0c00ef14 <fn_0c00ef14>
0c00fa7c: e1a01004  mov r1, r4
0c00fa80: e5920f50  ldr r0, [r2, #0xf50]
0c00fa84: e3c00003  bic r0, r0, #0x3
0c00fa88: e5820f50  str r0, [r2, #0xf50]
0c00fa8c: e3c0001c  bic r0, r0, #0x1c
0c00fa90: e3800010  orr r0, r0, #0x10
0c00fa94: e5820f50  str r0, [r2, #0xf50]
0c00fa98: e3c000e0  bic r0, r0, #0xe0
0c00fa9c: e3800020  orr r0, r0, #0x20
0c00faa0: e5820f50  str r0, [r2, #0xf50]
0c00faa4: e3c00c01  bic r0, r0, #0x100
0c00faa8: e5820f50  str r0, [r2, #0xf50]
0c00faac: e3c00c02  bic r0, r0, #0x200
0c00fab0: e5820f50  str r0, [r2, #0xf50]
0c00fab4: e3c00b03  bic r0, r0, #0xc00
0c00fab8: e5820f50  str r0, [r2, #0xf50]
0c00fabc: e3c00a01  bic r0, r0, #0x1000
0c00fac0: e5820f50  str r0, [r2, #0xf50]
0c00fac4: e3c0060e  bic r0, r0, #0xe00000
0c00fac8: e5820f50  str r0, [r2, #0xf50]
0c00facc: e3c00403  bic r0, r0, #0x3000000
0c00fad0: e5820f50  str r0, [r2, #0xf50]
0c00fad4: e3c00303  bic r0, r0, #0xc000000
0c00fad8: e5820f50  str r0, [r2, #0xf50]
0c00fadc: e3c0097f  bic r0, r0, #0x1fc000
0c00fae0: e5820f50  str r0, [r2, #0xf50]
0c00fae4: e3c00201  bic r0, r0, #0x10000000
0c00fae8: e5a20f50  str r0, [r2, #0xf50]!
0c00faec: e2812a0e  add r2, r1, #0xe000
0c00faf0: e5920f80  ldr r0, [r2, #0xf80]
0c00faf4: e3c00007  bic r0, r0, #0x7
0c00faf8: e5820f80  str r0, [r2, #0xf80]
0c00fafc: e3c00038  bic r0, r0, #0x38
0c00fb00: e5820f80  str r0, [r2, #0xf80]
0c00fb04: e3c00d07  bic r0, r0, #0x1c0
0c00fb08: e3800080  orr r0, r0, #0x80
0c00fb0c: e5820f80  str r0, [r2, #0xf80]
0c00fb10: e3c00c0e  bic r0, r0, #0xe00
0c00fb14: e3800b03  orr r0, r0, #0xc00
0c00fb18: e5820f80  str r0, [r2, #0xf80]
0c00fb1c: e3c00a07  bic r0, r0, #0x7000
0c00fb20: e3800a06  orr r0, r0, #0x6000
0c00fb24: e5820f80  str r0, [r2, #0xf80]
0c00fb28: e3c0090e  bic r0, r0, #0x38000
0c00fb2c: e3800801  orr r0, r0, #0x10000
0c00fb30: e5820f80  str r0, [r2, #0xf80]
0c00fb34: e3c00707  bic r0, r0, #0x1c0000
0c00fb38: e3800705  orr r0, r0, #0x140000
0c00fb3c: e5820f80  str r0, [r2, #0xf80]
0c00fb40: e380160e  orr r1, r0, #0xe00000
0c00fb44: e3a00ebe  mov r0, #0xbe0
0c00fb48: e2800a03  add r0, r0, #0x3000
0c00fb4c: e5821f80  str r1, [r2, #0xf80]
0c00fb50: ebfffcef  bl 0x0c00ef14 <fn_0c00ef14>
0c00fb54: e5920f84  ldr r0, [r2, #0xf84]
0c00fb58: e3c00007  bic r0, r0, #0x7
0c00fb5c: e3800003  orr r0, r0, #0x3
0c00fb60: e5820f84  str r0, [r2, #0xf84]
0c00fb64: e3c00038  bic r0, r0, #0x38
0c00fb68: e3800008  orr r0, r0, #0x8
0c00fb6c: e5820f84  str r0, [r2, #0xf84]
0c00fb70: e3800d07  orr r0, r0, #0x1c0
0c00fb74: e5820f84  str r0, [r2, #0xf84]
0c00fb78: e3c00c0e  bic r0, r0, #0xe00
0c00fb7c: e3800c0a  orr r0, r0, #0xa00
0c00fb80: e5820f84  str r0, [r2, #0xf84]
0c00fb84: e3c00a07  bic r0, r0, #0x7000
0c00fb88: e3800a01  orr r0, r0, #0x1000
0c00fb8c: e5820f84  str r0, [r2, #0xf84]
0c00fb90: e3c0090e  bic r0, r0, #0x38000
0c00fb94: e3800906  orr r0, r0, #0x18000
0c00fb98: e5820f84  str r0, [r2, #0xf84]
0c00fb9c: e3c00707  bic r0, r0, #0x1c0000
0c00fba0: e3800601  orr r0, r0, #0x100000
0c00fba4: e5820f84  str r0, [r2, #0xf84]
0c00fba8: e3c0060e  bic r0, r0, #0xe00000
0c00fbac: e3800502  orr r0, r0, #0x800000
0c00fbb0: e5a20f84  str r0, [r2, #0xf84]!
0c00fbb4: e1a01000  mov r1, r0
0c00fbb8: e3a000e1  mov r0, #0xe1
0c00fbbc: e2800c3b  add r0, r0, #0x3b00
0c00fbc0: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c00fbc4: eafffcd2  b 0x0c00ef14 <fn_0c00ef14>
fn_0c00fbc8:
0c00fbc8: e1a0c00d  mov r12, sp
0c00fbcc: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c00fbd0: e24cb004  sub r11, r12, #0x4
0c00fbd4: e1a02000  mov r2, r0
0c00fbd8: e51fc2d8  ldr r12, [pc, #-0x2d8] =0x04018f7c
0c00fbdc: e3a05001  mov r5, #0x1
0c00fbe0: e3a03000  mov r3, #0x0
0c00fbe4: e59c0928  ldr r0, [r12, #0x928]
0c00fbe8: e3300000  teq r0, #0x0
0c00fbec: 11a00003  movne r0, r3
0c00fbf0: 01a00005  moveq r0, r5
0c00fbf4: e3900001  orrs r0, r0, #0x1
0c00fbf8: e51f1770  ldr r1, [pc, #-0x770] =0x0404f70c
0c00fbfc: 0a000005  beq 0x0c00fc18
0c00fc00: e3a00000  mov r0, #0x0
0c00fc04: e7813100  str r3, [r1, r0, lsl #2]
0c00fc08: e2800001  add r0, r0, #0x1
0c00fc0c: e3500902  cmp r0, #0x8000
0c00fc10: bafffffb  blt 0x0c00fc04
0c00fc14: e5ac5928  str r5, [r12, #0x928]!
0c00fc18: e1a06001  mov r6, r1
0c00fc1c: e2814a03  add r4, r1, #0x3000
0c00fc20: e5940004  ldr r0, [r4, #0x4]
0c00fc24: e3300000  teq r0, #0x0
0c00fc28: 1a000001  bne 0x0c00fc34
0c00fc2c: e3520000  cmp r2, #0x0
0c00fc30: aa000005  bge 0x0c00fc4c
0c00fc34: e1a01003  mov r1, r3
0c00fc38: e3320000  teq r2, #0x0
0c00fc3c: e5841004  str r1, [r4, #0x4]
0c00fc40: 03a00001  moveq r0, #0x1
0c00fc44: 02800b03  addeq r0, r0, #0xc00
0c00fc48: 0bfffcb1  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fc4c: e5940008  ldr r0, [r4, #0x8]
0c00fc50: e3300000  teq r0, #0x0
0c00fc54: 1a000001  bne 0x0c00fc60
0c00fc58: e3520000  cmp r2, #0x0
0c00fc5c: aa000005  bge 0x0c00fc78
0c00fc60: e1a01003  mov r1, r3
0c00fc64: e3320000  teq r2, #0x0
0c00fc68: e5841008  str r1, [r4, #0x8]
0c00fc6c: 03a00002  moveq r0, #0x2
0c00fc70: 02800b03  addeq r0, r0, #0xc00
0c00fc74: 0bfffca6  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fc78: e5940010  ldr r0, [r4, #0x10]
0c00fc7c: e3300000  teq r0, #0x0
0c00fc80: 1a000001  bne 0x0c00fc8c
0c00fc84: e3520000  cmp r2, #0x0
0c00fc88: aa000005  bge 0x0c00fca4
0c00fc8c: e1a01003  mov r1, r3
0c00fc90: e3320000  teq r2, #0x0
0c00fc94: e5841010  str r1, [r4, #0x10]
0c00fc98: 03a00004  moveq r0, #0x4
0c00fc9c: 02800b03  addeq r0, r0, #0xc00
0c00fca0: 0bfffc9b  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fca4: e5940014  ldr r0, [r4, #0x14]
0c00fca8: e3300000  teq r0, #0x0
0c00fcac: 1a000001  bne 0x0c00fcb8
0c00fcb0: e3520000  cmp r2, #0x0
0c00fcb4: aa000005  bge 0x0c00fcd0
0c00fcb8: e1a01003  mov r1, r3
0c00fcbc: e3320000  teq r2, #0x0
0c00fcc0: e5841014  str r1, [r4, #0x14]
0c00fcc4: 03a00005  moveq r0, #0x5
0c00fcc8: 02800b03  addeq r0, r0, #0xc00
0c00fccc: 0bfffc90  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fcd0: e5940018  ldr r0, [r4, #0x18]
0c00fcd4: e3300000  teq r0, #0x0
0c00fcd8: 1a000001  bne 0x0c00fce4
0c00fcdc: e3520000  cmp r2, #0x0
0c00fce0: aa000005  bge 0x0c00fcfc
0c00fce4: e5a43018  str r3, [r4, #0x18]!
0c00fce8: e1a01003  mov r1, r3
0c00fcec: e3320000  teq r2, #0x0
0c00fcf0: 03a00006  moveq r0, #0x6
0c00fcf4: 02800b03  addeq r0, r0, #0xc00
0c00fcf8: 0bfffc85  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fcfc: e2864901  add r4, r6, #0x4000
0c00fd00: e5940000  ldr r0, [r4, #0x0]
0c00fd04: e3300000  teq r0, #0x0
0c00fd08: 1a000001  bne 0x0c00fd14
0c00fd0c: e3520000  cmp r2, #0x0
0c00fd10: aa000004  bge 0x0c00fd28
0c00fd14: e1a01003  mov r1, r3
0c00fd18: e3320000  teq r2, #0x0
0c00fd1c: e5841000  str r1, [r4, #0x0]
0c00fd20: 03a00a01  moveq r0, #0x1000
0c00fd24: 0bfffc7a  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fd28: e5940004  ldr r0, [r4, #0x4]
0c00fd2c: e3300000  teq r0, #0x0
0c00fd30: 1a000001  bne 0x0c00fd3c
0c00fd34: e3520000  cmp r2, #0x0
0c00fd38: aa000005  bge 0x0c00fd54
0c00fd3c: e1a01003  mov r1, r3
0c00fd40: e3320000  teq r2, #0x0
0c00fd44: e5841004  str r1, [r4, #0x4]
0c00fd48: 03a00001  moveq r0, #0x1
0c00fd4c: 02800a01  addeq r0, r0, #0x1000
0c00fd50: 0bfffc6f  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fd54: e5940008  ldr r0, [r4, #0x8]
0c00fd58: e3300000  teq r0, #0x0
0c00fd5c: 1a000001  bne 0x0c00fd68
0c00fd60: e3520000  cmp r2, #0x0
0c00fd64: aa000005  bge 0x0c00fd80
0c00fd68: e1a01003  mov r1, r3
0c00fd6c: e3320000  teq r2, #0x0
0c00fd70: e5841008  str r1, [r4, #0x8]
0c00fd74: 03a00002  moveq r0, #0x2
0c00fd78: 02800a01  addeq r0, r0, #0x1000
0c00fd7c: 0bfffc64  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fd80: e594000c  ldr r0, [r4, #0xc]
0c00fd84: e3300000  teq r0, #0x0
0c00fd88: 1a000001  bne 0x0c00fd94
0c00fd8c: e3520000  cmp r2, #0x0
0c00fd90: aa000005  bge 0x0c00fdac
0c00fd94: e1a01003  mov r1, r3
0c00fd98: e3320000  teq r2, #0x0
0c00fd9c: e584100c  str r1, [r4, #0xc]
0c00fda0: 03a00003  moveq r0, #0x3
0c00fda4: 02800a01  addeq r0, r0, #0x1000
0c00fda8: 0bfffc59  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fdac: e5940010  ldr r0, [r4, #0x10]
0c00fdb0: e3300000  teq r0, #0x0
0c00fdb4: 1a000001  bne 0x0c00fdc0
0c00fdb8: e3520000  cmp r2, #0x0
0c00fdbc: aa000005  bge 0x0c00fdd8
0c00fdc0: e1a01003  mov r1, r3
0c00fdc4: e3320000  teq r2, #0x0
0c00fdc8: e5841010  str r1, [r4, #0x10]
0c00fdcc: 03a00004  moveq r0, #0x4
0c00fdd0: 02800a01  addeq r0, r0, #0x1000
0c00fdd4: 0bfffc4e  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fdd8: e5940014  ldr r0, [r4, #0x14]
0c00fddc: e3300000  teq r0, #0x0
0c00fde0: 1a000001  bne 0x0c00fdec
0c00fde4: e3520000  cmp r2, #0x0
0c00fde8: aa000005  bge 0x0c00fe04
0c00fdec: e1a01003  mov r1, r3
0c00fdf0: e3320000  teq r2, #0x0
0c00fdf4: e5841014  str r1, [r4, #0x14]
0c00fdf8: 03a00005  moveq r0, #0x5
0c00fdfc: 02800a01  addeq r0, r0, #0x1000
0c00fe00: 0bfffc43  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fe04: e5940018  ldr r0, [r4, #0x18]
0c00fe08: e3300000  teq r0, #0x0
0c00fe0c: 1a000001  bne 0x0c00fe18
0c00fe10: e3520000  cmp r2, #0x0
0c00fe14: aa000005  bge 0x0c00fe30
0c00fe18: e1a01003  mov r1, r3
0c00fe1c: e3320000  teq r2, #0x0
0c00fe20: e5841018  str r1, [r4, #0x18]
0c00fe24: 03a00006  moveq r0, #0x6
0c00fe28: 02800a01  addeq r0, r0, #0x1000
0c00fe2c: 0bfffc38  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fe30: e594001c  ldr r0, [r4, #0x1c]
0c00fe34: e3300000  teq r0, #0x0
0c00fe38: 1a000001  bne 0x0c00fe44
0c00fe3c: e3520000  cmp r2, #0x0
0c00fe40: aa000005  bge 0x0c00fe5c
0c00fe44: e1a01003  mov r1, r3
0c00fe48: e3320000  teq r2, #0x0
0c00fe4c: e584101c  str r1, [r4, #0x1c]
0c00fe50: 03a00007  moveq r0, #0x7
0c00fe54: 02800a01  addeq r0, r0, #0x1000
0c00fe58: 0bfffc2d  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fe5c: e5940020  ldr r0, [r4, #0x20]
0c00fe60: e3300000  teq r0, #0x0
0c00fe64: 1a000001  bne 0x0c00fe70
0c00fe68: e3520000  cmp r2, #0x0
0c00fe6c: aa000005  bge 0x0c00fe88
0c00fe70: e1a01003  mov r1, r3
0c00fe74: e3320000  teq r2, #0x0
0c00fe78: e5841020  str r1, [r4, #0x20]
0c00fe7c: 03a00008  moveq r0, #0x8
0c00fe80: 02800a01  addeq r0, r0, #0x1000
0c00fe84: 0bfffc22  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fe88: e5940024  ldr r0, [r4, #0x24]
0c00fe8c: e3300000  teq r0, #0x0
0c00fe90: 1a000001  bne 0x0c00fe9c
0c00fe94: e3520000  cmp r2, #0x0
0c00fe98: aa000005  bge 0x0c00feb4
0c00fe9c: e1a01003  mov r1, r3
0c00fea0: e3320000  teq r2, #0x0
0c00fea4: e5841024  str r1, [r4, #0x24]
0c00fea8: 03a00009  moveq r0, #0x9
0c00feac: 02800a01  addeq r0, r0, #0x1000
0c00feb0: 0bfffc17  bleq 0x0c00ef14 <fn_0c00ef14>
0c00feb4: e5940028  ldr r0, [r4, #0x28]
0c00feb8: e3300000  teq r0, #0x0
0c00febc: 1a000001  bne 0x0c00fec8
0c00fec0: e3520000  cmp r2, #0x0
0c00fec4: aa000005  bge 0x0c00fee0
0c00fec8: e1a01003  mov r1, r3
0c00fecc: e3320000  teq r2, #0x0
0c00fed0: e5841028  str r1, [r4, #0x28]
0c00fed4: 03a0000a  moveq r0, #0xa
0c00fed8: 02800a01  addeq r0, r0, #0x1000
0c00fedc: 0bfffc0c  bleq 0x0c00ef14 <fn_0c00ef14>
0c00fee0: e594002c  ldr r0, [r4, #0x2c]
0c00fee4: e3300000  teq r0, #0x0
0c00fee8: 1a000001  bne 0x0c00fef4
0c00feec: e3520000  cmp r2, #0x0
0c00fef0: aa000005  bge 0x0c00ff0c
0c00fef4: e1a01003  mov r1, r3
0c00fef8: e3320000  teq r2, #0x0
0c00fefc: e584102c  str r1, [r4, #0x2c]
0c00ff00: 03a0000b  moveq r0, #0xb
0c00ff04: 02800a01  addeq r0, r0, #0x1000
0c00ff08: 0bfffc01  bleq 0x0c00ef14 <fn_0c00ef14>
0c00ff0c: e5940030  ldr r0, [r4, #0x30]
0c00ff10: e3300000  teq r0, #0x0
0c00ff14: 1a000001  bne 0x0c00ff20
0c00ff18: e3520000  cmp r2, #0x0
0c00ff1c: aa000005  bge 0x0c00ff38
0c00ff20: e1a01003  mov r1, r3
0c00ff24: e3320000  teq r2, #0x0
0c00ff28: e5841030  str r1, [r4, #0x30]
0c00ff2c: 03a0000c  moveq r0, #0xc
0c00ff30: 02800a01  addeq r0, r0, #0x1000
0c00ff34: 0bfffbf6  bleq 0x0c00ef14 <fn_0c00ef14>
0c00ff38: e5940034  ldr r0, [r4, #0x34]
0c00ff3c: e3300000  teq r0, #0x0
0c00ff40: 1a000001  bne 0x0c00ff4c
0c00ff44: e3520000  cmp r2, #0x0
0c00ff48: aa000005  bge 0x0c00ff64
0c00ff4c: e1a01003  mov r1, r3
0c00ff50: e3320000  teq r2, #0x0
0c00ff54: e5841034  str r1, [r4, #0x34]
0c00ff58: 03a0000d  moveq r0, #0xd
0c00ff5c: 02800a01  addeq r0, r0, #0x1000
0c00ff60: 0bfffbeb  bleq 0x0c00ef14 <fn_0c00ef14>
0c00ff64: e5940038  ldr r0, [r4, #0x38]
0c00ff68: e3300000  teq r0, #0x0
0c00ff6c: 1a000001  bne 0x0c00ff78
0c00ff70: e3520000  cmp r2, #0x0
0c00ff74: aa000005  bge 0x0c00ff90
0c00ff78: e1a01003  mov r1, r3
0c00ff7c: e3320000  teq r2, #0x0
0c00ff80: e5841038  str r1, [r4, #0x38]
0c00ff84: 03a0000e  moveq r0, #0xe
0c00ff88: 02800a01  addeq r0, r0, #0x1000
0c00ff8c: 0bfffbe0  bleq 0x0c00ef14 <fn_0c00ef14>
0c00ff90: e594003c  ldr r0, [r4, #0x3c]
0c00ff94: e3300000  teq r0, #0x0
0c00ff98: 1a000001  bne 0x0c00ffa4
0c00ff9c: e3520000  cmp r2, #0x0
0c00ffa0: aa000005  bge 0x0c00ffbc
0c00ffa4: e1a01003  mov r1, r3
0c00ffa8: e3320000  teq r2, #0x0
0c00ffac: e584103c  str r1, [r4, #0x3c]
0c00ffb0: 03a0000f  moveq r0, #0xf
0c00ffb4: 02800a01  addeq r0, r0, #0x1000
0c00ffb8: 0bfffbd5  bleq 0x0c00ef14 <fn_0c00ef14>
0c00ffbc: e5940040  ldr r0, [r4, #0x40]
0c00ffc0: e3300000  teq r0, #0x0
0c00ffc4: 1a000001  bne 0x0c00ffd0
0c00ffc8: e3520000  cmp r2, #0x0
0c00ffcc: aa000005  bge 0x0c00ffe8
0c00ffd0: e1a01003  mov r1, r3
0c00ffd4: e3320000  teq r2, #0x0
0c00ffd8: e5841040  str r1, [r4, #0x40]
0c00ffdc: 03a00010  moveq r0, #0x10
0c00ffe0: 02800a01  addeq r0, r0, #0x1000
0c00ffe4: 0bfffbca  bleq 0x0c00ef14 <fn_0c00ef14>
0c00ffe8: e5940044  ldr r0, [r4, #0x44]
0c00ffec: e3300000  teq r0, #0x0
0c00fff0: 1a000001  bne 0x0c00fffc
0c00fff4: e3520000  cmp r2, #0x0
0c00fff8: aa000005  bge 0x0c010014
0c00fffc: e1a01003  mov r1, r3
0c010000: e3320000  teq r2, #0x0
0c010004: e5841044  str r1, [r4, #0x44]
0c010008: 03a00011  moveq r0, #0x11
0c01000c: 02800a01  addeq r0, r0, #0x1000
0c010010: 0bfffbbf  bleq 0x0c00ef14 <fn_0c00ef14>
0c010014: e5940048  ldr r0, [r4, #0x48]
0c010018: e3300000  teq r0, #0x0
0c01001c: 1a000001  bne 0x0c010028
0c010020: e3520000  cmp r2, #0x0
0c010024: aa000005  bge 0x0c010040
0c010028: e1a01003  mov r1, r3
0c01002c: e3320000  teq r2, #0x0
0c010030: e5841048  str r1, [r4, #0x48]
0c010034: 03a00012  moveq r0, #0x12
0c010038: 02800a01  addeq r0, r0, #0x1000
0c01003c: 0bfffbb4  bleq 0x0c00ef14 <fn_0c00ef14>
0c010040: e594004c  ldr r0, [r4, #0x4c]
0c010044: e3300000  teq r0, #0x0
0c010048: 1a000001  bne 0x0c010054
0c01004c: e3520000  cmp r2, #0x0
0c010050: aa000005  bge 0x0c01006c
0c010054: e1a01003  mov r1, r3
0c010058: e3320000  teq r2, #0x0
0c01005c: e584104c  str r1, [r4, #0x4c]
0c010060: 03a00013  moveq r0, #0x13
0c010064: 02800a01  addeq r0, r0, #0x1000
0c010068: 0bfffba9  bleq 0x0c00ef14 <fn_0c00ef14>
0c01006c: e5940050  ldr r0, [r4, #0x50]
0c010070: e3300000  teq r0, #0x0
0c010074: 1a000001  bne 0x0c010080
0c010078: e3520000  cmp r2, #0x0
0c01007c: aa000005  bge 0x0c010098
0c010080: e1a01003  mov r1, r3
0c010084: e3320000  teq r2, #0x0
0c010088: e5841050  str r1, [r4, #0x50]
0c01008c: 03a00014  moveq r0, #0x14
0c010090: 02800a01  addeq r0, r0, #0x1000
0c010094: 0bfffb9e  bleq 0x0c00ef14 <fn_0c00ef14>
0c010098: e5940054  ldr r0, [r4, #0x54]
0c01009c: e3300000  teq r0, #0x0
0c0100a0: 1a000001  bne 0x0c0100ac
0c0100a4: e3520000  cmp r2, #0x0
0c0100a8: aa000005  bge 0x0c0100c4
0c0100ac: e1a01003  mov r1, r3
0c0100b0: e3320000  teq r2, #0x0
0c0100b4: e5841054  str r1, [r4, #0x54]
0c0100b8: 03a00015  moveq r0, #0x15
0c0100bc: 02800a01  addeq r0, r0, #0x1000
0c0100c0: 0bfffb93  bleq 0x0c00ef14 <fn_0c00ef14>
0c0100c4: e5940058  ldr r0, [r4, #0x58]
0c0100c8: e3300000  teq r0, #0x0
0c0100cc: 1a000001  bne 0x0c0100d8
0c0100d0: e3520000  cmp r2, #0x0
0c0100d4: aa000005  bge 0x0c0100f0
0c0100d8: e1a01003  mov r1, r3
0c0100dc: e3320000  teq r2, #0x0
0c0100e0: e5841058  str r1, [r4, #0x58]
0c0100e4: 03a00016  moveq r0, #0x16
0c0100e8: 02800a01  addeq r0, r0, #0x1000
0c0100ec: 0bfffb88  bleq 0x0c00ef14 <fn_0c00ef14>
0c0100f0: e594005c  ldr r0, [r4, #0x5c]
0c0100f4: e3300000  teq r0, #0x0
0c0100f8: 1a000001  bne 0x0c010104
0c0100fc: e3520000  cmp r2, #0x0
0c010100: aa000005  bge 0x0c01011c
0c010104: e1a01003  mov r1, r3
0c010108: e3320000  teq r2, #0x0
0c01010c: e584105c  str r1, [r4, #0x5c]
0c010110: 03a00017  moveq r0, #0x17
0c010114: 02800a01  addeq r0, r0, #0x1000
0c010118: 0bfffb7d  bleq 0x0c00ef14 <fn_0c00ef14>
0c01011c: e5940060  ldr r0, [r4, #0x60]
0c010120: e3300000  teq r0, #0x0
0c010124: 1a000001  bne 0x0c010130
0c010128: e3520000  cmp r2, #0x0
0c01012c: aa000005  bge 0x0c010148
0c010130: e1a01003  mov r1, r3
0c010134: e3320000  teq r2, #0x0
0c010138: e5841060  str r1, [r4, #0x60]
0c01013c: 03a00018  moveq r0, #0x18
0c010140: 02800a01  addeq r0, r0, #0x1000
0c010144: 0bfffb72  bleq 0x0c00ef14 <fn_0c00ef14>
0c010148: e5940064  ldr r0, [r4, #0x64]
0c01014c: e3300000  teq r0, #0x0
0c010150: 1a000001  bne 0x0c01015c
0c010154: e3520000  cmp r2, #0x0
0c010158: aa000005  bge 0x0c010174
0c01015c: e1a01003  mov r1, r3
0c010160: e3320000  teq r2, #0x0
0c010164: e5841064  str r1, [r4, #0x64]
0c010168: 03a00019  moveq r0, #0x19
0c01016c: 02800a01  addeq r0, r0, #0x1000
0c010170: 0bfffb67  bleq 0x0c00ef14 <fn_0c00ef14>
0c010174: e5940068  ldr r0, [r4, #0x68]
0c010178: e3300000  teq r0, #0x0
0c01017c: 1a000001  bne 0x0c010188
0c010180: e3520000  cmp r2, #0x0
0c010184: aa000005  bge 0x0c0101a0
0c010188: e1a01003  mov r1, r3
0c01018c: e3320000  teq r2, #0x0
0c010190: e5841068  str r1, [r4, #0x68]
0c010194: 03a0001a  moveq r0, #0x1a
0c010198: 02800a01  addeq r0, r0, #0x1000
0c01019c: 0bfffb5c  bleq 0x0c00ef14 <fn_0c00ef14>
0c0101a0: e5940078  ldr r0, [r4, #0x78]
0c0101a4: e3300000  teq r0, #0x0
0c0101a8: 1a000001  bne 0x0c0101b4
0c0101ac: e3520000  cmp r2, #0x0
0c0101b0: aa000005  bge 0x0c0101cc
0c0101b4: e1a01003  mov r1, r3
0c0101b8: e3320000  teq r2, #0x0
0c0101bc: e5841078  str r1, [r4, #0x78]
0c0101c0: 03a0001e  moveq r0, #0x1e
0c0101c4: 02800a01  addeq r0, r0, #0x1000
0c0101c8: 0bfffb51  bleq 0x0c00ef14 <fn_0c00ef14>
0c0101cc: e594007c  ldr r0, [r4, #0x7c]
0c0101d0: e3300000  teq r0, #0x0
0c0101d4: 1a000001  bne 0x0c0101e0
0c0101d8: e3520000  cmp r2, #0x0
0c0101dc: aa000005  bge 0x0c0101f8
0c0101e0: e1a01003  mov r1, r3
0c0101e4: e3320000  teq r2, #0x0
0c0101e8: e584107c  str r1, [r4, #0x7c]
0c0101ec: 03a0001f  moveq r0, #0x1f
0c0101f0: 02800a01  addeq r0, r0, #0x1000
0c0101f4: 0bfffb46  bleq 0x0c00ef14 <fn_0c00ef14>
0c0101f8: e5940080  ldr r0, [r4, #0x80]
0c0101fc: e3300000  teq r0, #0x0
0c010200: 1a000001  bne 0x0c01020c
0c010204: e3520000  cmp r2, #0x0
0c010208: aa000005  bge 0x0c010224
0c01020c: e1a01003  mov r1, r3
0c010210: e3320000  teq r2, #0x0
0c010214: e5841080  str r1, [r4, #0x80]
0c010218: 03a00020  moveq r0, #0x20
0c01021c: 02800a01  addeq r0, r0, #0x1000
0c010220: 0bfffb3b  bleq 0x0c00ef14 <fn_0c00ef14>
0c010224: e5940084  ldr r0, [r4, #0x84]
0c010228: e3300000  teq r0, #0x0
0c01022c: 1a000001  bne 0x0c010238
0c010230: e3520000  cmp r2, #0x0
0c010234: aa000005  bge 0x0c010250
0c010238: e1a01003  mov r1, r3
0c01023c: e3320000  teq r2, #0x0
0c010240: e5841084  str r1, [r4, #0x84]
0c010244: 03a00021  moveq r0, #0x21
0c010248: 02800a01  addeq r0, r0, #0x1000
0c01024c: 0bfffb30  bleq 0x0c00ef14 <fn_0c00ef14>
0c010250: e5940f54  ldr r0, [r4, #0xf54]
0c010254: e3300000  teq r0, #0x0
0c010258: 1a000001  bne 0x0c010264
0c01025c: e3520000  cmp r2, #0x0
0c010260: aa000005  bge 0x0c01027c
0c010264: e5a43f54  str r3, [r4, #0xf54]!
0c010268: e1a01003  mov r1, r3
0c01026c: e3320000  teq r2, #0x0
0c010270: 03a000d5  moveq r0, #0xd5
0c010274: 02800c13  addeq r0, r0, #0x1300
0c010278: 0bfffb25  bleq 0x0c00ef14 <fn_0c00ef14>
0c01027c: e2864905  add r4, r6, #0x14000
0c010280: e5940000  ldr r0, [r4, #0x0]
0c010284: e3300000  teq r0, #0x0
0c010288: 1a000001  bne 0x0c010294
0c01028c: e3520000  cmp r2, #0x0
0c010290: aa000004  bge 0x0c0102a8
0c010294: e1a01003  mov r1, r3
0c010298: e3320000  teq r2, #0x0
0c01029c: e5841000  str r1, [r4, #0x0]
0c0102a0: 03a00a05  moveq r0, #0x5000
0c0102a4: 0bfffb1a  bleq 0x0c00ef14 <fn_0c00ef14>
0c0102a8: e5940004  ldr r0, [r4, #0x4]
0c0102ac: e3300000  teq r0, #0x0
0c0102b0: 1a000001  bne 0x0c0102bc
0c0102b4: e3520000  cmp r2, #0x0
0c0102b8: aa000005  bge 0x0c0102d4
0c0102bc: e1a01003  mov r1, r3
0c0102c0: e3320000  teq r2, #0x0
0c0102c4: e5841004  str r1, [r4, #0x4]
0c0102c8: 03a00001  moveq r0, #0x1
0c0102cc: 02800a05  addeq r0, r0, #0x5000
0c0102d0: 0bfffb0f  bleq 0x0c00ef14 <fn_0c00ef14>
0c0102d4: e5940008  ldr r0, [r4, #0x8]
0c0102d8: e3300000  teq r0, #0x0
0c0102dc: 1a000001  bne 0x0c0102e8
0c0102e0: e3520000  cmp r2, #0x0
0c0102e4: aa000005  bge 0x0c010300
0c0102e8: e1a01003  mov r1, r3
0c0102ec: e3320000  teq r2, #0x0
0c0102f0: e5841008  str r1, [r4, #0x8]
0c0102f4: 03a00002  moveq r0, #0x2
0c0102f8: 02800a05  addeq r0, r0, #0x5000
0c0102fc: 0bfffb04  bleq 0x0c00ef14 <fn_0c00ef14>
0c010300: e594000c  ldr r0, [r4, #0xc]
0c010304: e3300000  teq r0, #0x0
0c010308: 1a000001  bne 0x0c010314
0c01030c: e3520000  cmp r2, #0x0
0c010310: aa000005  bge 0x0c01032c
0c010314: e5a4300c  str r3, [r4, #0xc]!
0c010318: e1a01003  mov r1, r3
0c01031c: e3320000  teq r2, #0x0
0c010320: 03a00003  moveq r0, #0x3
0c010324: 02800a05  addeq r0, r0, #0x5000
0c010328: 0bfffaf9  bleq 0x0c00ef14 <fn_0c00ef14>
0c01032c: e5960000  ldr r0, [r6, #0x0]
0c010330: e3300000  teq r0, #0x0
0c010334: 1a000001  bne 0x0c010340
0c010338: e3520000  cmp r2, #0x0
0c01033c: aa000009  bge 0x0c010368
0c010340: e1a01003  mov r1, r3
0c010344: e1a04006  mov r4, r6
0c010348: e3320000  teq r2, #0x0
0c01034c: e5861000  str r1, [r6, #0x0]
0c010350: 1a000004  bne 0x0c010368
0c010354: e3a00000  mov r0, #0x0
0c010358: ebfffaed  bl 0x0c00ef14 <fn_0c00ef14>
0c01035c: e5940000  ldr r0, [r4, #0x0]
0c010360: e3300000  teq r0, #0x0
0c010364: 1a000001  bne 0x0c010370
0c010368: e3520000  cmp r2, #0x0
0c01036c: aa000009  bge 0x0c010398
0c010370: e1a01003  mov r1, r3
0c010374: e1a04006  mov r4, r6
0c010378: e3320000  teq r2, #0x0
0c01037c: e5861000  str r1, [r6, #0x0]
0c010380: 1a000004  bne 0x0c010398
0c010384: e3a00000  mov r0, #0x0
0c010388: ebfffae1  bl 0x0c00ef14 <fn_0c00ef14>
0c01038c: e5940000  ldr r0, [r4, #0x0]
0c010390: e3300000  teq r0, #0x0
0c010394: 1a000001  bne 0x0c0103a0
0c010398: e3520000  cmp r2, #0x0
0c01039c: aa000009  bge 0x0c0103c8
0c0103a0: e1a01003  mov r1, r3
0c0103a4: e1a04006  mov r4, r6
0c0103a8: e3320000  teq r2, #0x0
0c0103ac: e5861000  str r1, [r6, #0x0]
0c0103b0: 1a000004  bne 0x0c0103c8
0c0103b4: e3a00000  mov r0, #0x0
0c0103b8: ebfffad5  bl 0x0c00ef14 <fn_0c00ef14>
0c0103bc: e5940000  ldr r0, [r4, #0x0]
0c0103c0: e3300000  teq r0, #0x0
0c0103c4: 1a000001  bne 0x0c0103d0
0c0103c8: e3520000  cmp r2, #0x0
0c0103cc: aa000009  bge 0x0c0103f8
0c0103d0: e1a01003  mov r1, r3
0c0103d4: e1a04006  mov r4, r6
0c0103d8: e3320000  teq r2, #0x0
0c0103dc: e5861000  str r1, [r6, #0x0]
0c0103e0: 1a000004  bne 0x0c0103f8
0c0103e4: e3a00000  mov r0, #0x0
0c0103e8: ebfffac9  bl 0x0c00ef14 <fn_0c00ef14>
0c0103ec: e5940000  ldr r0, [r4, #0x0]
0c0103f0: e3300000  teq r0, #0x0
0c0103f4: 1a000001  bne 0x0c010400
0c0103f8: e3520000  cmp r2, #0x0
0c0103fc: aa000009  bge 0x0c010428
0c010400: e1a01003  mov r1, r3
0c010404: e1a04006  mov r4, r6
0c010408: e3320000  teq r2, #0x0
0c01040c: e5861000  str r1, [r6, #0x0]
0c010410: 1a000004  bne 0x0c010428
0c010414: e3a00000  mov r0, #0x0
0c010418: ebfffabd  bl 0x0c00ef14 <fn_0c00ef14>
0c01041c: e5940000  ldr r0, [r4, #0x0]
0c010420: e3300000  teq r0, #0x0
0c010424: 1a000001  bne 0x0c010430
0c010428: e3520000  cmp r2, #0x0
0c01042c: aa000009  bge 0x0c010458
0c010430: e1a01003  mov r1, r3
0c010434: e1a04006  mov r4, r6
0c010438: e3320000  teq r2, #0x0
0c01043c: e5861000  str r1, [r6, #0x0]
0c010440: 1a000004  bne 0x0c010458
0c010444: e3a00000  mov r0, #0x0
0c010448: ebfffab1  bl 0x0c00ef14 <fn_0c00ef14>
0c01044c: e5940000  ldr r0, [r4, #0x0]
0c010450: e3300000  teq r0, #0x0
0c010454: 1a000001  bne 0x0c010460
0c010458: e3520000  cmp r2, #0x0
0c01045c: aa000009  bge 0x0c010488
0c010460: e1a01003  mov r1, r3
0c010464: e1a04006  mov r4, r6
0c010468: e3320000  teq r2, #0x0
0c01046c: e5861000  str r1, [r6, #0x0]
0c010470: 1a000004  bne 0x0c010488
0c010474: e3a00000  mov r0, #0x0
0c010478: ebfffaa5  bl 0x0c00ef14 <fn_0c00ef14>
0c01047c: e5940000  ldr r0, [r4, #0x0]
0c010480: e3300000  teq r0, #0x0
0c010484: 1a000001  bne 0x0c010490
0c010488: e3520000  cmp r2, #0x0
0c01048c: aa000009  bge 0x0c0104b8
0c010490: e1a01003  mov r1, r3
0c010494: e1a04006  mov r4, r6
0c010498: e3320000  teq r2, #0x0
0c01049c: e5861000  str r1, [r6, #0x0]
0c0104a0: 1a000004  bne 0x0c0104b8
0c0104a4: e3a00000  mov r0, #0x0
0c0104a8: ebfffa99  bl 0x0c00ef14 <fn_0c00ef14>
0c0104ac: e5940000  ldr r0, [r4, #0x0]
0c0104b0: e3300000  teq r0, #0x0
0c0104b4: 1a000001  bne 0x0c0104c0
0c0104b8: e3520000  cmp r2, #0x0
0c0104bc: aa000004  bge 0x0c0104d4
0c0104c0: e5863000  str r3, [r6, #0x0]
0c0104c4: e1a01003  mov r1, r3
0c0104c8: e3320000  teq r2, #0x0
0c0104cc: 03a00000  moveq r0, #0x0
0c0104d0: 0bfffa8f  bleq 0x0c00ef14 <fn_0c00ef14>
0c0104d4: e2864a05  add r4, r6, #0x5000
0c0104d8: e5940400  ldr r0, [r4, #0x400]
0c0104dc: e3300000  teq r0, #0x0
0c0104e0: 1a000001  bne 0x0c0104ec
0c0104e4: e3520000  cmp r2, #0x0
0c0104e8: aa000004  bge 0x0c010500
0c0104ec: e1a01003  mov r1, r3
0c0104f0: e3320000  teq r2, #0x0
0c0104f4: e5841400  str r1, [r4, #0x400]
0c0104f8: 03a00c15  moveq r0, #0x1500
0c0104fc: 0bfffa84  bleq 0x0c00ef14 <fn_0c00ef14>
0c010500: e59404f8  ldr r0, [r4, #0x4f8]
0c010504: e3300000  teq r0, #0x0
0c010508: 1a000001  bne 0x0c010514
0c01050c: e3520000  cmp r2, #0x0
0c010510: aa000005  bge 0x0c01052c
0c010514: e1a01003  mov r1, r3
0c010518: e3320000  teq r2, #0x0
0c01051c: e58414f8  str r1, [r4, #0x4f8]
0c010520: 03a0003e  moveq r0, #0x3e
0c010524: 02800c15  addeq r0, r0, #0x1500
0c010528: 0bfffa79  bleq 0x0c00ef14 <fn_0c00ef14>
0c01052c: e5940004  ldr r0, [r4, #0x4]
0c010530: e3300022  teq r0, #0x22
0c010534: 1a000001  bne 0x0c010540
0c010538: e3520000  cmp r2, #0x0
0c01053c: aa000005  bge 0x0c010558
0c010540: e3a01022  mov r1, #0x22
0c010544: e3320000  teq r2, #0x0
0c010548: e5841004  str r1, [r4, #0x4]
0c01054c: 03a00001  moveq r0, #0x1
0c010550: 02800b05  addeq r0, r0, #0x1400
0c010554: 0bfffa6e  bleq 0x0c00ef14 <fn_0c00ef14>
0c010558: e5940008  ldr r0, [r4, #0x8]
0c01055c: e3300000  teq r0, #0x0
0c010560: 1a000001  bne 0x0c01056c
0c010564: e3520000  cmp r2, #0x0
0c010568: aa000005  bge 0x0c010584
0c01056c: e1a01003  mov r1, r3
0c010570: e3320000  teq r2, #0x0
0c010574: e5841008  str r1, [r4, #0x8]
0c010578: 03a00002  moveq r0, #0x2
0c01057c: 02800b05  addeq r0, r0, #0x1400
0c010580: 0bfffa63  bleq 0x0c00ef14 <fn_0c00ef14>
0c010584: e594004c  ldr r0, [r4, #0x4c]
0c010588: e3300000  teq r0, #0x0
0c01058c: 1a000001  bne 0x0c010598
0c010590: e3520000  cmp r2, #0x0
0c010594: aa000005  bge 0x0c0105b0
0c010598: e1a01003  mov r1, r3
0c01059c: e3320000  teq r2, #0x0
0c0105a0: e584104c  str r1, [r4, #0x4c]
0c0105a4: 03a00013  moveq r0, #0x13
0c0105a8: 02800b05  addeq r0, r0, #0x1400
0c0105ac: 0bfffa58  bleq 0x0c00ef14 <fn_0c00ef14>
0c0105b0: e594000c  ldr r0, [r4, #0xc]
0c0105b4: e3300702  teq r0, #0x80000
0c0105b8: 1a000001  bne 0x0c0105c4
0c0105bc: e3520000  cmp r2, #0x0
0c0105c0: aa000005  bge 0x0c0105dc
0c0105c4: e3a01702  mov r1, #0x80000
0c0105c8: e3320000  teq r2, #0x0
0c0105cc: e584100c  str r1, [r4, #0xc]
0c0105d0: 03a00003  moveq r0, #0x3
0c0105d4: 02800b05  addeq r0, r0, #0x1400
0c0105d8: 0bfffa4d  bleq 0x0c00ef14 <fn_0c00ef14>
0c0105dc: e5940010  ldr r0, [r4, #0x10]
0c0105e0: e3300000  teq r0, #0x0
0c0105e4: 1a000001  bne 0x0c0105f0
0c0105e8: e3520000  cmp r2, #0x0
0c0105ec: aa000005  bge 0x0c010608
0c0105f0: e1a01003  mov r1, r3
0c0105f4: e3320000  teq r2, #0x0
0c0105f8: e5841010  str r1, [r4, #0x10]
0c0105fc: 03a00004  moveq r0, #0x4
0c010600: 02800b05  addeq r0, r0, #0x1400
0c010604: 0bfffa42  bleq 0x0c00ef14 <fn_0c00ef14>
0c010608: e5940050  ldr r0, [r4, #0x50]
0c01060c: e3300000  teq r0, #0x0
0c010610: 1a000001  bne 0x0c01061c
0c010614: e3520000  cmp r2, #0x0
0c010618: aa000005  bge 0x0c010634
0c01061c: e1a01003  mov r1, r3
0c010620: e3320000  teq r2, #0x0
0c010624: e5841050  str r1, [r4, #0x50]
0c010628: 03a00014  moveq r0, #0x14
0c01062c: 02800b05  addeq r0, r0, #0x1400
0c010630: 0bfffa37  bleq 0x0c00ef14 <fn_0c00ef14>
0c010634: e5940014  ldr r0, [r4, #0x14]
0c010638: e3300000  teq r0, #0x0
0c01063c: 1a000001  bne 0x0c010648
0c010640: e3520000  cmp r2, #0x0
0c010644: aa000005  bge 0x0c010660
0c010648: e1a01003  mov r1, r3
0c01064c: e3320000  teq r2, #0x0
0c010650: e5841014  str r1, [r4, #0x14]
0c010654: 03a00005  moveq r0, #0x5
0c010658: 02800b05  addeq r0, r0, #0x1400
0c01065c: 0bfffa2c  bleq 0x0c00ef14 <fn_0c00ef14>
0c010660: e5940018  ldr r0, [r4, #0x18]
0c010664: e3300000  teq r0, #0x0
0c010668: 1a000001  bne 0x0c010674
0c01066c: e3520000  cmp r2, #0x0
0c010670: aa000005  bge 0x0c01068c
0c010674: e1a01003  mov r1, r3
0c010678: e3320000  teq r2, #0x0
0c01067c: e5841018  str r1, [r4, #0x18]
0c010680: 03a00006  moveq r0, #0x6
0c010684: 02800b05  addeq r0, r0, #0x1400
0c010688: 0bfffa21  bleq 0x0c00ef14 <fn_0c00ef14>
0c01068c: e594001c  ldr r0, [r4, #0x1c]
0c010690: e3300a07  teq r0, #0x7000
0c010694: 1a000001  bne 0x0c0106a0
0c010698: e3520000  cmp r2, #0x0
0c01069c: aa000005  bge 0x0c0106b8
0c0106a0: e3a01a07  mov r1, #0x7000
0c0106a4: e3320000  teq r2, #0x0
0c0106a8: e584101c  str r1, [r4, #0x1c]
0c0106ac: 03a00007  moveq r0, #0x7
0c0106b0: 02800b05  addeq r0, r0, #0x1400
0c0106b4: 0bfffa16  bleq 0x0c00ef14 <fn_0c00ef14>
0c0106b8: e5940020  ldr r0, [r4, #0x20]
0c0106bc: e3300000  teq r0, #0x0
0c0106c0: 1a000001  bne 0x0c0106cc
0c0106c4: e3520000  cmp r2, #0x0
0c0106c8: aa000005  bge 0x0c0106e4
0c0106cc: e1a01003  mov r1, r3
0c0106d0: e3320000  teq r2, #0x0
0c0106d4: e5841020  str r1, [r4, #0x20]
0c0106d8: 03a00008  moveq r0, #0x8
0c0106dc: 02800b05  addeq r0, r0, #0x1400
0c0106e0: 0bfffa0b  bleq 0x0c00ef14 <fn_0c00ef14>
0c0106e4: e5940024  ldr r0, [r4, #0x24]
0c0106e8: e3300000  teq r0, #0x0
0c0106ec: 1a000001  bne 0x0c0106f8
0c0106f0: e3520000  cmp r2, #0x0
0c0106f4: aa000005  bge 0x0c010710
0c0106f8: e1a01003  mov r1, r3
0c0106fc: e3320000  teq r2, #0x0
0c010700: e5841024  str r1, [r4, #0x24]
0c010704: 03a00009  moveq r0, #0x9
0c010708: 02800b05  addeq r0, r0, #0x1400
0c01070c: 0bfffa00  bleq 0x0c00ef14 <fn_0c00ef14>
0c010710: e5940028  ldr r0, [r4, #0x28]
0c010714: e3300000  teq r0, #0x0
0c010718: 1a000001  bne 0x0c010724
0c01071c: e3520000  cmp r2, #0x0
0c010720: aa000005  bge 0x0c01073c
0c010724: e1a01003  mov r1, r3
0c010728: e3320000  teq r2, #0x0
0c01072c: e5841028  str r1, [r4, #0x28]
0c010730: 03a0000a  moveq r0, #0xa
0c010734: 02800b05  addeq r0, r0, #0x1400
0c010738: 0bfff9f5  bleq 0x0c00ef14 <fn_0c00ef14>
0c01073c: e594002c  ldr r0, [r4, #0x2c]
0c010740: e3300000  teq r0, #0x0
0c010744: 1a000001  bne 0x0c010750
0c010748: e3520000  cmp r2, #0x0
0c01074c: aa000005  bge 0x0c010768
0c010750: e1a01003  mov r1, r3
0c010754: e3320000  teq r2, #0x0
0c010758: e584102c  str r1, [r4, #0x2c]
0c01075c: 03a0000b  moveq r0, #0xb
0c010760: 02800b05  addeq r0, r0, #0x1400
0c010764: 0bfff9ea  bleq 0x0c00ef14 <fn_0c00ef14>
0c010768: e5940034  ldr r0, [r4, #0x34]
0c01076c: e3300000  teq r0, #0x0
0c010770: 1a000001  bne 0x0c01077c
0c010774: e3520000  cmp r2, #0x0
0c010778: aa000005  bge 0x0c010794
0c01077c: e1a01003  mov r1, r3
0c010780: e3320000  teq r2, #0x0
0c010784: e5841034  str r1, [r4, #0x34]
0c010788: 03a0000d  moveq r0, #0xd
0c01078c: 02800b05  addeq r0, r0, #0x1400
0c010790: 0bfff9df  bleq 0x0c00ef14 <fn_0c00ef14>
0c010794: e5940038  ldr r0, [r4, #0x38]
0c010798: e3300902  teq r0, #0x8000
0c01079c: 1a000001  bne 0x0c0107a8
0c0107a0: e3520000  cmp r2, #0x0
0c0107a4: aa000005  bge 0x0c0107c0
0c0107a8: e3a01902  mov r1, #0x8000
0c0107ac: e3320000  teq r2, #0x0
0c0107b0: e5841038  str r1, [r4, #0x38]
0c0107b4: 03a0000e  moveq r0, #0xe
0c0107b8: 02800b05  addeq r0, r0, #0x1400
0c0107bc: 0bfff9d4  bleq 0x0c00ef14 <fn_0c00ef14>
0c0107c0: e594003c  ldr r0, [r4, #0x3c]
0c0107c4: e3300000  teq r0, #0x0
0c0107c8: 1a000001  bne 0x0c0107d4
0c0107cc: e3520000  cmp r2, #0x0
0c0107d0: aa000005  bge 0x0c0107ec
0c0107d4: e1a01003  mov r1, r3
0c0107d8: e3320000  teq r2, #0x0
0c0107dc: e584103c  str r1, [r4, #0x3c]
0c0107e0: 03a0000f  moveq r0, #0xf
0c0107e4: 02800b05  addeq r0, r0, #0x1400
0c0107e8: 0bfff9c9  bleq 0x0c00ef14 <fn_0c00ef14>
0c0107ec: e5940040  ldr r0, [r4, #0x40]
0c0107f0: e3300000  teq r0, #0x0
0c0107f4: 1a000001  bne 0x0c010800
0c0107f8: e3520000  cmp r2, #0x0
0c0107fc: aa000005  bge 0x0c010818
0c010800: e1a01003  mov r1, r3
0c010804: e3320000  teq r2, #0x0
0c010808: e5841040  str r1, [r4, #0x40]
0c01080c: 03a00e41  moveq r0, #0x410
0c010810: 02800a01  addeq r0, r0, #0x1000
0c010814: 0bfff9be  bleq 0x0c00ef14 <fn_0c00ef14>
0c010818: e5940048  ldr r0, [r4, #0x48]
0c01081c: e3300000  teq r0, #0x0
0c010820: 1a000001  bne 0x0c01082c
0c010824: e3520000  cmp r2, #0x0
0c010828: aa000005  bge 0x0c010844
0c01082c: e5a43048  str r3, [r4, #0x48]!
0c010830: e1a01003  mov r1, r3
0c010834: e3320000  teq r2, #0x0
0c010838: 03a00012  moveq r0, #0x12
0c01083c: 02800b05  addeq r0, r0, #0x1400
0c010840: 0bfff9b3  bleq 0x0c00ef14 <fn_0c00ef14>
0c010844: e5960000  ldr r0, [r6, #0x0]
0c010848: e3300000  teq r0, #0x0
0c01084c: 1a000001  bne 0x0c010858
0c010850: e3520000  cmp r2, #0x0
0c010854: aa000009  bge 0x0c010880
0c010858: e1a01003  mov r1, r3
0c01085c: e1a04006  mov r4, r6
0c010860: e3320000  teq r2, #0x0
0c010864: e5861000  str r1, [r6, #0x0]
0c010868: 1a000004  bne 0x0c010880
0c01086c: e3a00000  mov r0, #0x0
0c010870: ebfff9a7  bl 0x0c00ef14 <fn_0c00ef14>
0c010874: e5940000  ldr r0, [r4, #0x0]
0c010878: e3300000  teq r0, #0x0
0c01087c: 1a000001  bne 0x0c010888
0c010880: e3520000  cmp r2, #0x0
0c010884: aa000009  bge 0x0c0108b0
0c010888: e1a01003  mov r1, r3
0c01088c: e1a04006  mov r4, r6
0c010890: e3320000  teq r2, #0x0
0c010894: e5861000  str r1, [r6, #0x0]
0c010898: 1a000004  bne 0x0c0108b0
0c01089c: e3a00000  mov r0, #0x0
0c0108a0: ebfff99b  bl 0x0c00ef14 <fn_0c00ef14>
0c0108a4: e5940000  ldr r0, [r4, #0x0]
0c0108a8: e3300000  teq r0, #0x0
0c0108ac: 1a000001  bne 0x0c0108b8
0c0108b0: e3520000  cmp r2, #0x0
0c0108b4: aa000009  bge 0x0c0108e0
0c0108b8: e1a01003  mov r1, r3
0c0108bc: e1a04006  mov r4, r6
0c0108c0: e3320000  teq r2, #0x0
0c0108c4: e5861000  str r1, [r6, #0x0]
0c0108c8: 1a000004  bne 0x0c0108e0
0c0108cc: e3a00000  mov r0, #0x0
0c0108d0: ebfff98f  bl 0x0c00ef14 <fn_0c00ef14>
0c0108d4: e5940000  ldr r0, [r4, #0x0]
0c0108d8: e3300000  teq r0, #0x0
0c0108dc: 1a000001  bne 0x0c0108e8
0c0108e0: e3520000  cmp r2, #0x0
0c0108e4: aa000004  bge 0x0c0108fc
0c0108e8: e5863000  str r3, [r6, #0x0]
0c0108ec: e1a01003  mov r1, r3
0c0108f0: e3320000  teq r2, #0x0
0c0108f4: 03a00000  moveq r0, #0x0
0c0108f8: 0bfff985  bleq 0x0c00ef14 <fn_0c00ef14>
0c0108fc: e2864a06  add r4, r6, #0x6000
0c010900: e5940000  ldr r0, [r4, #0x0]
0c010904: e3300000  teq r0, #0x0
0c010908: 1a000001  bne 0x0c010914
0c01090c: e3520000  cmp r2, #0x0
0c010910: aa000004  bge 0x0c010928
0c010914: e1a01003  mov r1, r3
0c010918: e3320000  teq r2, #0x0
0c01091c: e5841000  str r1, [r4, #0x0]
0c010920: 03a00b06  moveq r0, #0x1800
0c010924: 0bfff97a  bleq 0x0c00ef14 <fn_0c00ef14>
0c010928: e5940040  ldr r0, [r4, #0x40]
0c01092c: e3300000  teq r0, #0x0
0c010930: 1a000001  bne 0x0c01093c
0c010934: e3520000  cmp r2, #0x0
0c010938: aa000005  bge 0x0c010954
0c01093c: e1a01003  mov r1, r3
0c010940: e3320000  teq r2, #0x0
0c010944: e5841040  str r1, [r4, #0x40]
0c010948: 03a00e81  moveq r0, #0x810
0c01094c: 02800a01  addeq r0, r0, #0x1000
0c010950: 0bfff96f  bleq 0x0c00ef14 <fn_0c00ef14>
0c010954: e5940080  ldr r0, [r4, #0x80]
0c010958: e3300000  teq r0, #0x0
0c01095c: 1a000001  bne 0x0c010968
0c010960: e3520000  cmp r2, #0x0
0c010964: aa000005  bge 0x0c010980
0c010968: e1a01003  mov r1, r3
0c01096c: e3320000  teq r2, #0x0
0c010970: e5841080  str r1, [r4, #0x80]
0c010974: 03a00e82  moveq r0, #0x820
0c010978: 02800a01  addeq r0, r0, #0x1000
0c01097c: 0bfff964  bleq 0x0c00ef14 <fn_0c00ef14>
0c010980: e5940140  ldr r0, [r4, #0x140]
0c010984: e3300000  teq r0, #0x0
0c010988: 1a000001  bne 0x0c010994
0c01098c: e3520000  cmp r2, #0x0
0c010990: aa000005  bge 0x0c0109ac
0c010994: e1a01003  mov r1, r3
0c010998: e3320000  teq r2, #0x0
0c01099c: e5841140  str r1, [r4, #0x140]
0c0109a0: 03a00e85  moveq r0, #0x850
0c0109a4: 02800a01  addeq r0, r0, #0x1000
0c0109a8: 0bfff959  bleq 0x0c00ef14 <fn_0c00ef14>
0c0109ac: e5940144  ldr r0, [r4, #0x144]
0c0109b0: e3300000  teq r0, #0x0
0c0109b4: 1a000001  bne 0x0c0109c0
0c0109b8: e3520000  cmp r2, #0x0
0c0109bc: aa000005  bge 0x0c0109d8
0c0109c0: e1a01003  mov r1, r3
0c0109c4: e3320000  teq r2, #0x0
0c0109c8: e5841144  str r1, [r4, #0x144]
0c0109cc: 03a00051  moveq r0, #0x51
0c0109d0: 02800b06  addeq r0, r0, #0x1800
0c0109d4: 0bfff94e  bleq 0x0c00ef14 <fn_0c00ef14>
0c0109d8: e5940148  ldr r0, [r4, #0x148]
0c0109dc: e3300000  teq r0, #0x0
0c0109e0: 1a000001  bne 0x0c0109ec
0c0109e4: e3520000  cmp r2, #0x0
0c0109e8: aa000005  bge 0x0c010a04
0c0109ec: e1a01003  mov r1, r3
0c0109f0: e3320000  teq r2, #0x0
0c0109f4: e5841148  str r1, [r4, #0x148]
0c0109f8: 03a00052  moveq r0, #0x52
0c0109fc: 02800b06  addeq r0, r0, #0x1800
0c010a00: 0bfff943  bleq 0x0c00ef14 <fn_0c00ef14>
0c010a04: e594014c  ldr r0, [r4, #0x14c]
0c010a08: e3300000  teq r0, #0x0
0c010a0c: 1a000001  bne 0x0c010a18
0c010a10: e3520000  cmp r2, #0x0
0c010a14: aa000005  bge 0x0c010a30
0c010a18: e1a01003  mov r1, r3
0c010a1c: e3320000  teq r2, #0x0
0c010a20: e584114c  str r1, [r4, #0x14c]
0c010a24: 03a00053  moveq r0, #0x53
0c010a28: 02800b06  addeq r0, r0, #0x1800
0c010a2c: 0bfff938  bleq 0x0c00ef14 <fn_0c00ef14>
0c010a30: e5940150  ldr r0, [r4, #0x150]
0c010a34: e3300000  teq r0, #0x0
0c010a38: 1a000001  bne 0x0c010a44
0c010a3c: e3520000  cmp r2, #0x0
0c010a40: aa000005  bge 0x0c010a5c
0c010a44: e1a01003  mov r1, r3
0c010a48: e3320000  teq r2, #0x0
0c010a4c: e5841150  str r1, [r4, #0x150]
0c010a50: 03a00054  moveq r0, #0x54
0c010a54: 02800b06  addeq r0, r0, #0x1800
0c010a58: 0bfff92d  bleq 0x0c00ef14 <fn_0c00ef14>
0c010a5c: e594015c  ldr r0, [r4, #0x15c]
0c010a60: e3300000  teq r0, #0x0
0c010a64: 1a000001  bne 0x0c010a70
0c010a68: e3520000  cmp r2, #0x0
0c010a6c: aa000005  bge 0x0c010a88
0c010a70: e5a4315c  str r3, [r4, #0x15c]!
0c010a74: e1a01003  mov r1, r3
0c010a78: e3320000  teq r2, #0x0
0c010a7c: 03a00057  moveq r0, #0x57
0c010a80: 02800b06  addeq r0, r0, #0x1800
0c010a84: 0bfff922  bleq 0x0c00ef14 <fn_0c00ef14>
0c010a88: e2864a07  add r4, r6, #0x7000
0c010a8c: e3a000c2  mov r0, #0xc2
0c010a90: e2800c03  add r0, r0, #0x300
0c010a94: e5941000  ldr r1, [r4, #0x0]
0c010a98: e1310000  teq r1, r0
0c010a9c: 1a000001  bne 0x0c010aa8
0c010aa0: e3520000  cmp r2, #0x0
0c010aa4: aa000004  bge 0x0c010abc
0c010aa8: e3320000  teq r2, #0x0
0c010aac: e5840000  str r0, [r4, #0x0]
0c010ab0: 01a01000  moveq r1, r0
0c010ab4: 03a00b07  moveq r0, #0x1c00
0c010ab8: 0bfff915  bleq 0x0c00ef14 <fn_0c00ef14>
0c010abc: e5940008  ldr r0, [r4, #0x8]
0c010ac0: e3300001  teq r0, #0x1
0c010ac4: 1a000001  bne 0x0c010ad0
0c010ac8: e3520000  cmp r2, #0x0
0c010acc: aa000005  bge 0x0c010ae8
0c010ad0: e5845008  str r5, [r4, #0x8]
0c010ad4: e1a01005  mov r1, r5
0c010ad8: e3320000  teq r2, #0x0
0c010adc: 03a00002  moveq r0, #0x2
0c010ae0: 02800b07  addeq r0, r0, #0x1c00
0c010ae4: 0bfff90a  bleq 0x0c00ef14 <fn_0c00ef14>
0c010ae8: e3a00ffe  mov r0, #0x3f8
0c010aec: e2800b05  add r0, r0, #0x1400
0c010af0: e594100c  ldr r1, [r4, #0xc]
0c010af4: e1310000  teq r1, r0
0c010af8: 1a000001  bne 0x0c010b04
0c010afc: e3520000  cmp r2, #0x0
0c010b00: aa000005  bge 0x0c010b1c
0c010b04: e3320000  teq r2, #0x0
0c010b08: e584000c  str r0, [r4, #0xc]
0c010b0c: 01a01000  moveq r1, r0
0c010b10: 03a00003  moveq r0, #0x3
0c010b14: 02800b07  addeq r0, r0, #0x1c00
0c010b18: 0bfff8fd  bleq 0x0c00ef14 <fn_0c00ef14>
0c010b1c: e1a05006  mov r5, r6
0c010b20: e5940018  ldr r0, [r4, #0x18]
0c010b24: e3300000  teq r0, #0x0
0c010b28: 1a000001  bne 0x0c010b34
0c010b2c: e3520000  cmp r2, #0x0
0c010b30: aa000005  bge 0x0c010b4c
0c010b34: e1a01003  mov r1, r3
0c010b38: e3320000  teq r2, #0x0
0c010b3c: e5841018  str r1, [r4, #0x18]
0c010b40: 03a00006  moveq r0, #0x6
0c010b44: 02800b07  addeq r0, r0, #0x1c00
0c010b48: 0bfff8f1  bleq 0x0c00ef14 <fn_0c00ef14>
0c010b4c: e594001c  ldr r0, [r4, #0x1c]
0c010b50: e3300000  teq r0, #0x0
0c010b54: 1a000001  bne 0x0c010b60
0c010b58: e3520000  cmp r2, #0x0
0c010b5c: aa000005  bge 0x0c010b78
0c010b60: e1a01003  mov r1, r3
0c010b64: e3320000  teq r2, #0x0
0c010b68: e584101c  str r1, [r4, #0x1c]
0c010b6c: 03a00007  moveq r0, #0x7
0c010b70: 02800b07  addeq r0, r0, #0x1c00
0c010b74: 0bfff8e6  bleq 0x0c00ef14 <fn_0c00ef14>
0c010b78: e5940020  ldr r0, [r4, #0x20]
0c010b7c: e3300000  teq r0, #0x0
0c010b80: 1a000001  bne 0x0c010b8c
0c010b84: e3520000  cmp r2, #0x0
0c010b88: aa000005  bge 0x0c010ba4
0c010b8c: e1a01003  mov r1, r3
0c010b90: e3320000  teq r2, #0x0
0c010b94: e5841020  str r1, [r4, #0x20]
0c010b98: 03a00008  moveq r0, #0x8
0c010b9c: 02800b07  addeq r0, r0, #0x1c00
0c010ba0: 0bfff8db  bleq 0x0c00ef14 <fn_0c00ef14>
0c010ba4: e5940024  ldr r0, [r4, #0x24]
0c010ba8: e3300000  teq r0, #0x0
0c010bac: 1a000001  bne 0x0c010bb8
0c010bb0: e3520000  cmp r2, #0x0
0c010bb4: aa000005  bge 0x0c010bd0
0c010bb8: e1a01003  mov r1, r3
0c010bbc: e3320000  teq r2, #0x0
0c010bc0: e5841024  str r1, [r4, #0x24]
0c010bc4: 03a00009  moveq r0, #0x9
0c010bc8: 02800b07  addeq r0, r0, #0x1c00
0c010bcc: 0bfff8d0  bleq 0x0c00ef14 <fn_0c00ef14>
0c010bd0: e5940028  ldr r0, [r4, #0x28]
0c010bd4: e3300000  teq r0, #0x0
0c010bd8: 1a000001  bne 0x0c010be4
0c010bdc: e3520000  cmp r2, #0x0
0c010be0: aa000005  bge 0x0c010bfc
0c010be4: e1a01003  mov r1, r3
0c010be8: e3320000  teq r2, #0x0
0c010bec: e5841028  str r1, [r4, #0x28]
0c010bf0: 03a0000a  moveq r0, #0xa
0c010bf4: 02800b07  addeq r0, r0, #0x1c00
0c010bf8: 0bfff8c5  bleq 0x0c00ef14 <fn_0c00ef14>
0c010bfc: e594102c  ldr r1, [r4, #0x2c]
0c010c00: e59f0c00  ldr r0, [pc, #0xc00] =0x32212301
0c010c04: e1310000  teq r1, r0
0c010c08: 1a000001  bne 0x0c010c14
0c010c0c: e3520000  cmp r2, #0x0
0c010c10: aa000005  bge 0x0c010c2c
0c010c14: e3320000  teq r2, #0x0
0c010c18: e584002c  str r0, [r4, #0x2c]
0c010c1c: 01a01000  moveq r1, r0
0c010c20: 03a0000b  moveq r0, #0xb
0c010c24: 02800b07  addeq r0, r0, #0x1c00
0c010c28: 0bfff8b9  bleq 0x0c00ef14 <fn_0c00ef14>
0c010c2c: e3a00012  mov r0, #0x12
0c010c30: e2800a11  add r0, r0, #0x11000
0c010c34: e5941034  ldr r1, [r4, #0x34]
0c010c38: e1310000  teq r1, r0
0c010c3c: 1a000001  bne 0x0c010c48
0c010c40: e3520000  cmp r2, #0x0
0c010c44: aa000005  bge 0x0c010c60
0c010c48: e3320000  teq r2, #0x0
0c010c4c: e5840034  str r0, [r4, #0x34]
0c010c50: 01a01000  moveq r1, r0
0c010c54: 03a0000d  moveq r0, #0xd
0c010c58: 02800b07  addeq r0, r0, #0x1c00
0c010c5c: 0bfff8ac  bleq 0x0c00ef14 <fn_0c00ef14>
0c010c60: e5940038  ldr r0, [r4, #0x38]
0c010c64: e3300000  teq r0, #0x0
0c010c68: 1a000001  bne 0x0c010c74
0c010c6c: e3520000  cmp r2, #0x0
0c010c70: aa000005  bge 0x0c010c8c
0c010c74: e1a01003  mov r1, r3
0c010c78: e3320000  teq r2, #0x0
0c010c7c: e5841038  str r1, [r4, #0x38]
0c010c80: 03a0000e  moveq r0, #0xe
0c010c84: 02800b07  addeq r0, r0, #0x1c00
0c010c88: 0bfff8a1  bleq 0x0c00ef14 <fn_0c00ef14>
0c010c8c: e5940040  ldr r0, [r4, #0x40]
0c010c90: e3300000  teq r0, #0x0
0c010c94: 1a000001  bne 0x0c010ca0
0c010c98: e3520000  cmp r2, #0x0
0c010c9c: aa000005  bge 0x0c010cb8
0c010ca0: e1a01003  mov r1, r3
0c010ca4: e3320000  teq r2, #0x0
0c010ca8: e5841040  str r1, [r4, #0x40]
0c010cac: 03a00ec1  moveq r0, #0xc10
0c010cb0: 02800a01  addeq r0, r0, #0x1000
0c010cb4: 0bfff896  bleq 0x0c00ef14 <fn_0c00ef14>
0c010cb8: e5940044  ldr r0, [r4, #0x44]
0c010cbc: e3300000  teq r0, #0x0
0c010cc0: 1a000001  bne 0x0c010ccc
0c010cc4: e3520000  cmp r2, #0x0
0c010cc8: aa000005  bge 0x0c010ce4
0c010ccc: e1a01003  mov r1, r3
0c010cd0: e3320000  teq r2, #0x0
0c010cd4: e5841044  str r1, [r4, #0x44]
0c010cd8: 03a00011  moveq r0, #0x11
0c010cdc: 02800b07  addeq r0, r0, #0x1c00
0c010ce0: 0bfff88b  bleq 0x0c00ef14 <fn_0c00ef14>
0c010ce4: e5940048  ldr r0, [r4, #0x48]
0c010ce8: e3300000  teq r0, #0x0
0c010cec: 1a000001  bne 0x0c010cf8
0c010cf0: e3520000  cmp r2, #0x0
0c010cf4: aa000005  bge 0x0c010d10
0c010cf8: e1a01003  mov r1, r3
0c010cfc: e3320000  teq r2, #0x0
0c010d00: e5841048  str r1, [r4, #0x48]
0c010d04: 03a00012  moveq r0, #0x12
0c010d08: 02800b07  addeq r0, r0, #0x1c00
0c010d0c: 0bfff880  bleq 0x0c00ef14 <fn_0c00ef14>
0c010d10: e594004c  ldr r0, [r4, #0x4c]
0c010d14: e3300000  teq r0, #0x0
0c010d18: 1a000001  bne 0x0c010d24
0c010d1c: e3520000  cmp r2, #0x0
0c010d20: aa000005  bge 0x0c010d3c
0c010d24: e1a01003  mov r1, r3
0c010d28: e3320000  teq r2, #0x0
0c010d2c: e584104c  str r1, [r4, #0x4c]
0c010d30: 03a00013  moveq r0, #0x13
0c010d34: 02800b07  addeq r0, r0, #0x1c00
0c010d38: 0bfff875  bleq 0x0c00ef14 <fn_0c00ef14>
0c010d3c: e5940050  ldr r0, [r4, #0x50]
0c010d40: e3300000  teq r0, #0x0
0c010d44: 1a000001  bne 0x0c010d50
0c010d48: e3520000  cmp r2, #0x0
0c010d4c: aa000005  bge 0x0c010d68
0c010d50: e1a01003  mov r1, r3
0c010d54: e3320000  teq r2, #0x0
0c010d58: e5841050  str r1, [r4, #0x50]
0c010d5c: 03a00014  moveq r0, #0x14
0c010d60: 02800b07  addeq r0, r0, #0x1c00
0c010d64: 0bfff86a  bleq 0x0c00ef14 <fn_0c00ef14>
0c010d68: e5940054  ldr r0, [r4, #0x54]
0c010d6c: e3300000  teq r0, #0x0
0c010d70: 1a000001  bne 0x0c010d7c
0c010d74: e3520000  cmp r2, #0x0
0c010d78: aa000005  bge 0x0c010d94
0c010d7c: e1a01003  mov r1, r3
0c010d80: e3320000  teq r2, #0x0
0c010d84: e5841054  str r1, [r4, #0x54]
0c010d88: 03a00015  moveq r0, #0x15
0c010d8c: 02800b07  addeq r0, r0, #0x1c00
0c010d90: 0bfff85f  bleq 0x0c00ef14 <fn_0c00ef14>
0c010d94: e59400f8  ldr r0, [r4, #0xf8]
0c010d98: e3300000  teq r0, #0x0
0c010d9c: 1a000001  bne 0x0c010da8
0c010da0: e3520000  cmp r2, #0x0
0c010da4: aa000005  bge 0x0c010dc0
0c010da8: e1a01003  mov r1, r3
0c010dac: e3320000  teq r2, #0x0
0c010db0: e58410f8  str r1, [r4, #0xf8]
0c010db4: 03a0003e  moveq r0, #0x3e
0c010db8: 02800b07  addeq r0, r0, #0x1c00
0c010dbc: 0bfff854  bleq 0x0c00ef14 <fn_0c00ef14>
0c010dc0: e59400f4  ldr r0, [r4, #0xf4]
0c010dc4: e3300000  teq r0, #0x0
0c010dc8: 1a000001  bne 0x0c010dd4
0c010dcc: e3520000  cmp r2, #0x0
0c010dd0: aa000005  bge 0x0c010dec
0c010dd4: e1a01003  mov r1, r3
0c010dd8: e3320000  teq r2, #0x0
0c010ddc: e58410f4  str r1, [r4, #0xf4]
0c010de0: 03a0003d  moveq r0, #0x3d
0c010de4: 02800b07  addeq r0, r0, #0x1c00
0c010de8: 0bfff849  bleq 0x0c00ef14 <fn_0c00ef14>
0c010dec: e59400f0  ldr r0, [r4, #0xf0]
0c010df0: e3300000  teq r0, #0x0
0c010df4: 1a000001  bne 0x0c010e00
0c010df8: e3520000  cmp r2, #0x0
0c010dfc: aa000005  bge 0x0c010e18
0c010e00: e1a01003  mov r1, r3
0c010e04: e3320000  teq r2, #0x0
0c010e08: e58410f0  str r1, [r4, #0xf0]
0c010e0c: 03a0003c  moveq r0, #0x3c
0c010e10: 02800b07  addeq r0, r0, #0x1c00
0c010e14: 0bfff83e  bleq 0x0c00ef14 <fn_0c00ef14>
0c010e18: e3a0050a  mov r0, #0x2800000
0c010e1c: e2800e1e  add r0, r0, #0x1e0
0c010e20: e59410ec  ldr r1, [r4, #0xec]
0c010e24: e1310000  teq r1, r0
0c010e28: 1a000001  bne 0x0c010e34
0c010e2c: e3520000  cmp r2, #0x0
0c010e30: aa000005  bge 0x0c010e4c
0c010e34: e3320000  teq r2, #0x0
0c010e38: e5a400ec  str r0, [r4, #0xec]!
0c010e3c: 01a01000  moveq r1, r0
0c010e40: 03a0003b  moveq r0, #0x3b
0c010e44: 02800b07  addeq r0, r0, #0x1c00
0c010e48: 0bfff831  bleq 0x0c00ef14 <fn_0c00ef14>
0c010e4c: e2854a0e  add r4, r5, #0xe000
0c010e50: e5941f80  ldr r1, [r4, #0xf80]
0c010e54: e59f09b0  ldr r0, [pc, #0x9b0] =0x00c8b640
0c010e58: e1310000  teq r1, r0
0c010e5c: 1a000001  bne 0x0c010e68
0c010e60: e3520000  cmp r2, #0x0
0c010e64: aa000005  bge 0x0c010e80
0c010e68: e5840f80  str r0, [r4, #0xf80]
0c010e6c: e1a01000  mov r1, r0
0c010e70: e3320000  teq r2, #0x0
0c010e74: 03a00ebe  moveq r0, #0xbe0
0c010e78: 02800a03  addeq r0, r0, #0x3000
0c010e7c: 0bfff824  bleq 0x0c00ef14 <fn_0c00ef14>
0c010e80: e5941f84  ldr r1, [r4, #0xf84]
0c010e84: e59f0984  ldr r0, [pc, #0x984] =0x00916f6f
0c010e88: e1310000  teq r1, r0
0c010e8c: 1a000001  bne 0x0c010e98
0c010e90: e3520000  cmp r2, #0x0
0c010e94: aa000005  bge 0x0c010eb0
0c010e98: e3320000  teq r2, #0x0
0c010e9c: e5a40f84  str r0, [r4, #0xf84]!
0c010ea0: 01a01000  moveq r1, r0
0c010ea4: 03a000e1  moveq r0, #0xe1
0c010ea8: 02800c3b  addeq r0, r0, #0x3b00
0c010eac: 0bfff818  bleq 0x0c00ef14 <fn_0c00ef14>
0c010eb0: e2854a0f  add r4, r5, #0xf000
0c010eb4: e3a00101  mov r0, #0x40000000
0c010eb8: e2400902  sub r0, r0, #0x8000
0c010ebc: e5941f08  ldr r1, [r4, #0xf08]
0c010ec0: e1310000  teq r1, r0
0c010ec4: 1a000001  bne 0x0c010ed0
0c010ec8: e3520000  cmp r2, #0x0
0c010ecc: aa000005  bge 0x0c010ee8
0c010ed0: e5840f08  str r0, [r4, #0xf08]
0c010ed4: e1a01000  mov r1, r0
0c010ed8: e3320000  teq r2, #0x0
0c010edc: 03a000c2  moveq r0, #0xc2
0c010ee0: 02800c3f  addeq r0, r0, #0x3f00
0c010ee4: 0bfff80a  bleq 0x0c00ef14 <fn_0c00ef14>
0c010ee8: e3a00101  mov r0, #0x40000000
0c010eec: e2400902  sub r0, r0, #0x8000
0c010ef0: e5941f0c  ldr r1, [r4, #0xf0c]
0c010ef4: e1310000  teq r1, r0
0c010ef8: 1a000001  bne 0x0c010f04
0c010efc: e3520000  cmp r2, #0x0
0c010f00: aa000005  bge 0x0c010f1c
0c010f04: e5840f0c  str r0, [r4, #0xf0c]
0c010f08: e1a01000  mov r1, r0
0c010f0c: e3320000  teq r2, #0x0
0c010f10: 03a000c3  moveq r0, #0xc3
0c010f14: 02800c3f  addeq r0, r0, #0x3f00
0c010f18: 0bfff7fd  bleq 0x0c00ef14 <fn_0c00ef14>
0c010f1c: e5940f10  ldr r0, [r4, #0xf10]
0c010f20: e3300000  teq r0, #0x0
0c010f24: 1a000001  bne 0x0c010f30
0c010f28: e3520000  cmp r2, #0x0
0c010f2c: aa000005  bge 0x0c010f48
0c010f30: e1a01003  mov r1, r3
0c010f34: e3320000  teq r2, #0x0
0c010f38: e5841f10  str r1, [r4, #0xf10]
0c010f3c: 03a00ff1  moveq r0, #0x3c4
0c010f40: 02800b0f  addeq r0, r0, #0x3c00
0c010f44: 0bfff7f2  bleq 0x0c00ef14 <fn_0c00ef14>
0c010f48: e5940f14  ldr r0, [r4, #0xf14]
0c010f4c: e3300000  teq r0, #0x0
0c010f50: 1a000001  bne 0x0c010f5c
0c010f54: e3520000  cmp r2, #0x0
0c010f58: aa000005  bge 0x0c010f74
0c010f5c: e1a01003  mov r1, r3
0c010f60: e3320000  teq r2, #0x0
0c010f64: e5841f14  str r1, [r4, #0xf14]
0c010f68: 03a000c5  moveq r0, #0xc5
0c010f6c: 02800c3f  addeq r0, r0, #0x3f00
0c010f70: 0bfff7e7  bleq 0x0c00ef14 <fn_0c00ef14>
0c010f74: e5940f18  ldr r0, [r4, #0xf18]
0c010f78: e3300000  teq r0, #0x0
0c010f7c: 1a000001  bne 0x0c010f88
0c010f80: e3520000  cmp r2, #0x0
0c010f84: aa000005  bge 0x0c010fa0
0c010f88: e1a01003  mov r1, r3
0c010f8c: e3320000  teq r2, #0x0
0c010f90: e5841f18  str r1, [r4, #0xf18]
0c010f94: 03a000c6  moveq r0, #0xc6
0c010f98: 02800c3f  addeq r0, r0, #0x3f00
0c010f9c: 0bfff7dc  bleq 0x0c00ef14 <fn_0c00ef14>
0c010fa0: e5940f1c  ldr r0, [r4, #0xf1c]
0c010fa4: e3300000  teq r0, #0x0
0c010fa8: 1a000001  bne 0x0c010fb4
0c010fac: e3520000  cmp r2, #0x0
0c010fb0: aa000005  bge 0x0c010fcc
0c010fb4: e1a01003  mov r1, r3
0c010fb8: e3320000  teq r2, #0x0
0c010fbc: e5841f1c  str r1, [r4, #0xf1c]
0c010fc0: 03a000c7  moveq r0, #0xc7
0c010fc4: 02800c3f  addeq r0, r0, #0x3f00
0c010fc8: 0bfff7d1  bleq 0x0c00ef14 <fn_0c00ef14>
0c010fcc: e5940f20  ldr r0, [r4, #0xf20]
0c010fd0: e3300000  teq r0, #0x0
0c010fd4: 1a000001  bne 0x0c010fe0
0c010fd8: e3520000  cmp r2, #0x0
0c010fdc: aa000005  bge 0x0c010ff8
0c010fe0: e1a01003  mov r1, r3
0c010fe4: e3320000  teq r2, #0x0
0c010fe8: e5841f20  str r1, [r4, #0xf20]
0c010fec: 03a00ff2  moveq r0, #0x3c8
0c010ff0: 02800b0f  addeq r0, r0, #0x3c00
0c010ff4: 0bfff7c6  bleq 0x0c00ef14 <fn_0c00ef14>
0c010ff8: e5940f24  ldr r0, [r4, #0xf24]
0c010ffc: e3300000  teq r0, #0x0
0c011000: 1a000001  bne 0x0c01100c
0c011004: e3520000  cmp r2, #0x0
0c011008: aa000005  bge 0x0c011024
0c01100c: e1a01003  mov r1, r3
0c011010: e3320000  teq r2, #0x0
0c011014: e5841f24  str r1, [r4, #0xf24]
0c011018: 03a000c9  moveq r0, #0xc9
0c01101c: 02800c3f  addeq r0, r0, #0x3f00
0c011020: 0bfff7bb  bleq 0x0c00ef14 <fn_0c00ef14>
0c011024: e3a06601  mov r6, #0x100000
0c011028: e5940f28  ldr r0, [r4, #0xf28]
0c01102c: e3300601  teq r0, #0x100000
0c011030: 1a000001  bne 0x0c01103c
0c011034: e3520000  cmp r2, #0x0
0c011038: aa000005  bge 0x0c011054
0c01103c: e1a01006  mov r1, r6
0c011040: e3320000  teq r2, #0x0
0c011044: e5841f28  str r1, [r4, #0xf28]
0c011048: 03a000ca  moveq r0, #0xca
0c01104c: 02800c3f  addeq r0, r0, #0x3f00
0c011050: 0bfff7af  bleq 0x0c00ef14 <fn_0c00ef14>
0c011054: e5940f2c  ldr r0, [r4, #0xf2c]
0c011058: e3300601  teq r0, #0x100000
0c01105c: 1a000001  bne 0x0c011068
0c011060: e3520000  cmp r2, #0x0
0c011064: aa000005  bge 0x0c011080
0c011068: e5846f2c  str r6, [r4, #0xf2c]
0c01106c: e1a01006  mov r1, r6
0c011070: e3320000  teq r2, #0x0
0c011074: 03a000cb  moveq r0, #0xcb
0c011078: 02800c3f  addeq r0, r0, #0x3f00
0c01107c: 0bfff7a4  bleq 0x0c00ef14 <fn_0c00ef14>
0c011080: e5941f30  ldr r1, [r4, #0xf30]
0c011084: e59f0788  ldr r0, [pc, #0x788] =0x0c010010
0c011088: e1310000  teq r1, r0
0c01108c: 1a000001  bne 0x0c011098
0c011090: e3520000  cmp r2, #0x0
0c011094: aa000005  bge 0x0c0110b0
0c011098: e5840f30  str r0, [r4, #0xf30]
0c01109c: e1a01000  mov r1, r0
0c0110a0: e3320000  teq r2, #0x0
0c0110a4: 03a00ff3  moveq r0, #0x3cc
0c0110a8: 02800b0f  addeq r0, r0, #0x3c00
0c0110ac: 0bfff798  bleq 0x0c00ef14 <fn_0c00ef14>
0c0110b0: e3a06010  mov r6, #0x10
0c0110b4: e5940f34  ldr r0, [r4, #0xf34]
0c0110b8: e3300010  teq r0, #0x10
0c0110bc: 1a000001  bne 0x0c0110c8
0c0110c0: e3520000  cmp r2, #0x0
0c0110c4: aa000005  bge 0x0c0110e0
0c0110c8: e1a01006  mov r1, r6
0c0110cc: e3320000  teq r2, #0x0
0c0110d0: e5841f34  str r1, [r4, #0xf34]
0c0110d4: 03a000cd  moveq r0, #0xcd
0c0110d8: 02800c3f  addeq r0, r0, #0x3f00
0c0110dc: 0bfff78c  bleq 0x0c00ef14 <fn_0c00ef14>
0c0110e0: e5940f38  ldr r0, [r4, #0xf38]
0c0110e4: e3300000  teq r0, #0x0
0c0110e8: 1a000001  bne 0x0c0110f4
0c0110ec: e3520000  cmp r2, #0x0
0c0110f0: aa000005  bge 0x0c01110c
0c0110f4: e1a01003  mov r1, r3
0c0110f8: e3320000  teq r2, #0x0
0c0110fc: e5841f38  str r1, [r4, #0xf38]
0c011100: 03a000ce  moveq r0, #0xce
0c011104: 02800c3f  addeq r0, r0, #0x3f00
0c011108: 0bfff781  bleq 0x0c00ef14 <fn_0c00ef14>
0c01110c: e5940f3c  ldr r0, [r4, #0xf3c]
0c011110: e3300010  teq r0, #0x10
0c011114: 1a000001  bne 0x0c011120
0c011118: e3520000  cmp r2, #0x0
0c01111c: aa000005  bge 0x0c011138
0c011120: e1a01006  mov r1, r6
0c011124: e3320000  teq r2, #0x0
0c011128: e5841f3c  str r1, [r4, #0xf3c]
0c01112c: 03a000cf  moveq r0, #0xcf
0c011130: 02800c3f  addeq r0, r0, #0x3f00
0c011134: 0bfff776  bleq 0x0c00ef14 <fn_0c00ef14>
0c011138: e5940f40  ldr r0, [r4, #0xf40]
0c01113c: e3300010  teq r0, #0x10
0c011140: 1a000001  bne 0x0c01114c
0c011144: e3520000  cmp r2, #0x0
0c011148: aa000005  bge 0x0c011164
0c01114c: e5846f40  str r6, [r4, #0xf40]
0c011150: e1a01006  mov r1, r6
0c011154: e3320000  teq r2, #0x0
0c011158: 03a00efd  moveq r0, #0xfd0
0c01115c: 02800a03  addeq r0, r0, #0x3000
0c011160: 0bfff76b  bleq 0x0c00ef14 <fn_0c00ef14>
0c011164: e3a0600f  mov r6, #0xf
0c011168: e5940f44  ldr r0, [r4, #0xf44]
0c01116c: e330000f  teq r0, #0xf
0c011170: 1a000001  bne 0x0c01117c
0c011174: e3520000  cmp r2, #0x0
0c011178: aa000005  bge 0x0c011194
0c01117c: e1a01006  mov r1, r6
0c011180: e3320000  teq r2, #0x0
0c011184: e5841f44  str r1, [r4, #0xf44]
0c011188: 03a000d1  moveq r0, #0xd1
0c01118c: 02800c3f  addeq r0, r0, #0x3f00
0c011190: 0bfff75f  bleq 0x0c00ef14 <fn_0c00ef14>
0c011194: e3a0000f  mov r0, #0xf
0c011198: e2800a0f  add r0, r0, #0xf000
0c01119c: e5941f48  ldr r1, [r4, #0xf48]
0c0111a0: e1310000  teq r1, r0
0c0111a4: 1a000001  bne 0x0c0111b0
0c0111a8: e3520000  cmp r2, #0x0
0c0111ac: aa000005  bge 0x0c0111c8
0c0111b0: e3320000  teq r2, #0x0
0c0111b4: e5840f48  str r0, [r4, #0xf48]
0c0111b8: 01a01000  moveq r1, r0
0c0111bc: 03a000d2  moveq r0, #0xd2
0c0111c0: 02800c3f  addeq r0, r0, #0x3f00
0c0111c4: 0bfff752  bleq 0x0c00ef14 <fn_0c00ef14>
0c0111c8: e5940f4c  ldr r0, [r4, #0xf4c]
0c0111cc: e330000f  teq r0, #0xf
0c0111d0: 1a000001  bne 0x0c0111dc
0c0111d4: e3520000  cmp r2, #0x0
0c0111d8: aa000005  bge 0x0c0111f4
0c0111dc: e5846f4c  str r6, [r4, #0xf4c]
0c0111e0: e1a01006  mov r1, r6
0c0111e4: e3320000  teq r2, #0x0
0c0111e8: 03a000d3  moveq r0, #0xd3
0c0111ec: 02800c3f  addeq r0, r0, #0x3f00
0c0111f0: 0bfff747  bleq 0x0c00ef14 <fn_0c00ef14>
0c0111f4: e5940f50  ldr r0, [r4, #0xf50]
0c0111f8: e3300030  teq r0, #0x30
0c0111fc: 1a000001  bne 0x0c011208
0c011200: e3520000  cmp r2, #0x0
0c011204: aa000005  bge 0x0c011220
0c011208: e3a01030  mov r1, #0x30
0c01120c: e3320000  teq r2, #0x0
0c011210: e5841f50  str r1, [r4, #0xf50]
0c011214: 03a00ff5  moveq r0, #0x3d4
0c011218: 02800b0f  addeq r0, r0, #0x3c00
0c01121c: 0bfff73c  bleq 0x0c00ef14 <fn_0c00ef14>
0c011220: e5940f54  ldr r0, [r4, #0xf54]
0c011224: e3300000  teq r0, #0x0
0c011228: 1a000001  bne 0x0c011234
0c01122c: e3520000  cmp r2, #0x0
0c011230: aa000005  bge 0x0c01124c
0c011234: e1a01003  mov r1, r3
0c011238: e3320000  teq r2, #0x0
0c01123c: e5841f54  str r1, [r4, #0xf54]
0c011240: 03a000d5  moveq r0, #0xd5
0c011244: 02800c3f  addeq r0, r0, #0x3f00
0c011248: 0bfff731  bleq 0x0c00ef14 <fn_0c00ef14>
0c01124c: e5940f58  ldr r0, [r4, #0xf58]
0c011250: e3300000  teq r0, #0x0
0c011254: 1a000001  bne 0x0c011260
0c011258: e3520000  cmp r2, #0x0
0c01125c: aa000005  bge 0x0c011278
0c011260: e1a01003  mov r1, r3
0c011264: e3320000  teq r2, #0x0
0c011268: e5841f58  str r1, [r4, #0xf58]
0c01126c: 03a000d6  moveq r0, #0xd6
0c011270: 02800c3f  addeq r0, r0, #0x3f00
0c011274: 0bfff726  bleq 0x0c00ef14 <fn_0c00ef14>
0c011278: e5940f5c  ldr r0, [r4, #0xf5c]
0c01127c: e3300000  teq r0, #0x0
0c011280: 1a000001  bne 0x0c01128c
0c011284: e3520000  cmp r2, #0x0
0c011288: aa000005  bge 0x0c0112a4
0c01128c: e1a01003  mov r1, r3
0c011290: e3320000  teq r2, #0x0
0c011294: e5841f5c  str r1, [r4, #0xf5c]
0c011298: 03a000d7  moveq r0, #0xd7
0c01129c: 02800c3f  addeq r0, r0, #0x3f00
0c0112a0: 0bfff71b  bleq 0x0c00ef14 <fn_0c00ef14>
0c0112a4: e5940f60  ldr r0, [r4, #0xf60]
0c0112a8: e3300000  teq r0, #0x0
0c0112ac: 1a000001  bne 0x0c0112b8
0c0112b0: e3520000  cmp r2, #0x0
0c0112b4: aa000005  bge 0x0c0112d0
0c0112b8: e1a01003  mov r1, r3
0c0112bc: e3320000  teq r2, #0x0
0c0112c0: e5841f60  str r1, [r4, #0xf60]
0c0112c4: 03a00ff6  moveq r0, #0x3d8
0c0112c8: 02800b0f  addeq r0, r0, #0x3c00
0c0112cc: 0bfff710  bleq 0x0c00ef14 <fn_0c00ef14>
0c0112d0: e5940fc0  ldr r0, [r4, #0xfc0]
0c0112d4: e3300000  teq r0, #0x0
0c0112d8: 1a000001  bne 0x0c0112e4
0c0112dc: e3520000  cmp r2, #0x0
0c0112e0: aa000005  bge 0x0c0112fc
0c0112e4: e1a01003  mov r1, r3
0c0112e8: e3320000  teq r2, #0x0
0c0112ec: e5841fc0  str r1, [r4, #0xfc0]
0c0112f0: 03a00901  moveq r0, #0x4000
0c0112f4: 02400010  subeq r0, r0, #0x10
0c0112f8: 0bfff705  bleq 0x0c00ef14 <fn_0c00ef14>
0c0112fc: e5940fc4  ldr r0, [r4, #0xfc4]
0c011300: e3300000  teq r0, #0x0
0c011304: 1a000001  bne 0x0c011310
0c011308: e3520000  cmp r2, #0x0
0c01130c: aa000005  bge 0x0c011328
0c011310: e1a01003  mov r1, r3
0c011314: e3320000  teq r2, #0x0
0c011318: e5841fc4  str r1, [r4, #0xfc4]
0c01131c: 03a00901  moveq r0, #0x4000
0c011320: 0240000f  subeq r0, r0, #0xf
0c011324: 0bfff6fa  bleq 0x0c00ef14 <fn_0c00ef14>
0c011328: e5940fcc  ldr r0, [r4, #0xfcc]
0c01132c: e3300000  teq r0, #0x0
0c011330: 1a000001  bne 0x0c01133c
0c011334: e3520000  cmp r2, #0x0
0c011338: aa000005  bge 0x0c011354
0c01133c: e1a01003  mov r1, r3
0c011340: e3320000  teq r2, #0x0
0c011344: e5841fcc  str r1, [r4, #0xfcc]
0c011348: 03a00901  moveq r0, #0x4000
0c01134c: 0240000d  subeq r0, r0, #0xd
0c011350: 0bfff6ef  bleq 0x0c00ef14 <fn_0c00ef14>
0c011354: e5940fd0  ldr r0, [r4, #0xfd0]
0c011358: e3300000  teq r0, #0x0
0c01135c: 1a000001  bne 0x0c011368
0c011360: e3520000  cmp r2, #0x0
0c011364: aa000005  bge 0x0c011380
0c011368: e1a01003  mov r1, r3
0c01136c: e3320000  teq r2, #0x0
0c011370: e5841fd0  str r1, [r4, #0xfd0]
0c011374: 03a00901  moveq r0, #0x4000
0c011378: 0240000c  subeq r0, r0, #0xc
0c01137c: 0bfff6e4  bleq 0x0c00ef14 <fn_0c00ef14>
0c011380: e5940fd4  ldr r0, [r4, #0xfd4]
0c011384: e3300000  teq r0, #0x0
0c011388: 1a000001  bne 0x0c011394
0c01138c: e3520000  cmp r2, #0x0
0c011390: aa000005  bge 0x0c0113ac
0c011394: e1a01003  mov r1, r3
0c011398: e3320000  teq r2, #0x0
0c01139c: e5841fd4  str r1, [r4, #0xfd4]
0c0113a0: 03a00901  moveq r0, #0x4000
0c0113a4: 0240000b  subeq r0, r0, #0xb
0c0113a8: 0bfff6d9  bleq 0x0c00ef14 <fn_0c00ef14>
0c0113ac: e5940fd8  ldr r0, [r4, #0xfd8]
0c0113b0: e3300000  teq r0, #0x0
0c0113b4: 1a000001  bne 0x0c0113c0
0c0113b8: e3520000  cmp r2, #0x0
0c0113bc: aa000005  bge 0x0c0113d8
0c0113c0: e1a01003  mov r1, r3
0c0113c4: e3320000  teq r2, #0x0
0c0113c8: e5841fd8  str r1, [r4, #0xfd8]
0c0113cc: 03a00901  moveq r0, #0x4000
0c0113d0: 0240000a  subeq r0, r0, #0xa
0c0113d4: 0bfff6ce  bleq 0x0c00ef14 <fn_0c00ef14>
0c0113d8: e5940fdc  ldr r0, [r4, #0xfdc]
0c0113dc: e3300000  teq r0, #0x0
0c0113e0: 1a000001  bne 0x0c0113ec
0c0113e4: e3520000  cmp r2, #0x0
0c0113e8: aa000005  bge 0x0c011404
0c0113ec: e1a01003  mov r1, r3
0c0113f0: e3320000  teq r2, #0x0
0c0113f4: e5841fdc  str r1, [r4, #0xfdc]
0c0113f8: 03a00901  moveq r0, #0x4000
0c0113fc: 02400009  subeq r0, r0, #0x9
0c011400: 0bfff6c3  bleq 0x0c00ef14 <fn_0c00ef14>
0c011404: e5940fe0  ldr r0, [r4, #0xfe0]
0c011408: e3300000  teq r0, #0x0
0c01140c: 1a000001  bne 0x0c011418
0c011410: e3520000  cmp r2, #0x0
0c011414: aa000005  bge 0x0c011430
0c011418: e5a43fe0  str r3, [r4, #0xfe0]!
0c01141c: e1a01003  mov r1, r3
0c011420: e3320000  teq r2, #0x0
0c011424: 03a00901  moveq r0, #0x4000
0c011428: 02400008  subeq r0, r0, #0x8
0c01142c: 0bfff6b8  bleq 0x0c00ef14 <fn_0c00ef14>
0c011430: e2854a1f  add r4, r5, #0x1f000
0c011434: e5940f04  ldr r0, [r4, #0xf04]
0c011438: e3300000  teq r0, #0x0
0c01143c: 1a000001  bne 0x0c011448
0c011440: e3520000  cmp r2, #0x0
0c011444: aa000005  bge 0x0c011460
0c011448: e1a01003  mov r1, r3
0c01144c: e3320000  teq r2, #0x0
0c011450: e5841f04  str r1, [r4, #0xf04]
0c011454: 03a000c1  moveq r0, #0xc1
0c011458: 02800c7f  addeq r0, r0, #0x7f00
0c01145c: 0bfff6ac  bleq 0x0c00ef14 <fn_0c00ef14>
0c011460: e5940f08  ldr r0, [r4, #0xf08]
0c011464: e3300000  teq r0, #0x0
0c011468: 1a000001  bne 0x0c011474
0c01146c: e3520000  cmp r2, #0x0
0c011470: aa000005  bge 0x0c01148c
0c011474: e1a01003  mov r1, r3
0c011478: e3320000  teq r2, #0x0
0c01147c: e5841f08  str r1, [r4, #0xf08]
0c011480: 03a000c2  moveq r0, #0xc2
0c011484: 02800c7f  addeq r0, r0, #0x7f00
0c011488: 0bfff6a1  bleq 0x0c00ef14 <fn_0c00ef14>
0c01148c: e5940f0c  ldr r0, [r4, #0xf0c]
0c011490: e3300000  teq r0, #0x0
0c011494: 1a000001  bne 0x0c0114a0
0c011498: e3520000  cmp r2, #0x0
0c01149c: aa000005  bge 0x0c0114b8
0c0114a0: e1a01003  mov r1, r3
0c0114a4: e3320000  teq r2, #0x0
0c0114a8: e5841f0c  str r1, [r4, #0xf0c]
0c0114ac: 03a000c3  moveq r0, #0xc3
0c0114b0: 02800c7f  addeq r0, r0, #0x7f00
0c0114b4: 0bfff696  bleq 0x0c00ef14 <fn_0c00ef14>
0c0114b8: e5940f10  ldr r0, [r4, #0xf10]
0c0114bc: e3300000  teq r0, #0x0
0c0114c0: 1a000001  bne 0x0c0114cc
0c0114c4: e3520000  cmp r2, #0x0
0c0114c8: aa000005  bge 0x0c0114e4
0c0114cc: e1a01003  mov r1, r3
0c0114d0: e3320000  teq r2, #0x0
0c0114d4: e5841f10  str r1, [r4, #0xf10]
0c0114d8: 03a00ff1  moveq r0, #0x3c4
0c0114dc: 02800b1f  addeq r0, r0, #0x7c00
0c0114e0: 0bfff68b  bleq 0x0c00ef14 <fn_0c00ef14>
0c0114e4: e5940f14  ldr r0, [r4, #0xf14]
0c0114e8: e3300000  teq r0, #0x0
0c0114ec: 1a000001  bne 0x0c0114f8
0c0114f0: e3520000  cmp r2, #0x0
0c0114f4: aa000005  bge 0x0c011510
0c0114f8: e5a43f14  str r3, [r4, #0xf14]!
0c0114fc: e1a01003  mov r1, r3
0c011500: e3320000  teq r2, #0x0
0c011504: 03a000c5  moveq r0, #0xc5
0c011508: 02800c7f  addeq r0, r0, #0x7f00
0c01150c: 0bfff680  bleq 0x0c00ef14 <fn_0c00ef14>
0c011510: e2854a02  add r4, r5, #0x2000
0c011514: e5940000  ldr r0, [r4, #0x0]
0c011518: e3300000  teq r0, #0x0
0c01151c: 1a000001  bne 0x0c011528
0c011520: e3520000  cmp r2, #0x0
0c011524: aa000004  bge 0x0c01153c
0c011528: e1a01003  mov r1, r3
0c01152c: e3320000  teq r2, #0x0
0c011530: e5841000  str r1, [r4, #0x0]
0c011534: 03a00b02  moveq r0, #0x800
0c011538: 0bfff675  bleq 0x0c00ef14 <fn_0c00ef14>
0c01153c: e5940004  ldr r0, [r4, #0x4]
0c011540: e3300000  teq r0, #0x0
0c011544: 1a000001  bne 0x0c011550
0c011548: e3520000  cmp r2, #0x0
0c01154c: aa000005  bge 0x0c011568
0c011550: e1a01003  mov r1, r3
0c011554: e3320000  teq r2, #0x0
0c011558: e5841004  str r1, [r4, #0x4]
0c01155c: 03a00001  moveq r0, #0x1
0c011560: 02800b02  addeq r0, r0, #0x800
0c011564: 0bfff66a  bleq 0x0c00ef14 <fn_0c00ef14>
0c011568: e5940008  ldr r0, [r4, #0x8]
0c01156c: e3300000  teq r0, #0x0
0c011570: 1a000001  bne 0x0c01157c
0c011574: e3520000  cmp r2, #0x0
0c011578: aa000005  bge 0x0c011594
0c01157c: e1a01003  mov r1, r3
0c011580: e3320000  teq r2, #0x0
0c011584: e5841008  str r1, [r4, #0x8]
0c011588: 03a00002  moveq r0, #0x2
0c01158c: 02800b02  addeq r0, r0, #0x800
0c011590: 0bfff65f  bleq 0x0c00ef14 <fn_0c00ef14>
0c011594: e594000c  ldr r0, [r4, #0xc]
0c011598: e3300000  teq r0, #0x0
0c01159c: 1a000001  bne 0x0c0115a8
0c0115a0: e3520000  cmp r2, #0x0
0c0115a4: aa000005  bge 0x0c0115c0
0c0115a8: e1a01003  mov r1, r3
0c0115ac: e3320000  teq r2, #0x0
0c0115b0: e584100c  str r1, [r4, #0xc]
0c0115b4: 03a00003  moveq r0, #0x3
0c0115b8: 02800b02  addeq r0, r0, #0x800
0c0115bc: 0bfff654  bleq 0x0c00ef14 <fn_0c00ef14>
0c0115c0: e3a00c01  mov r0, #0x100
0c0115c4: e2800601  add r0, r0, #0x100000
0c0115c8: e594103c  ldr r1, [r4, #0x3c]
0c0115cc: e1310000  teq r1, r0
0c0115d0: 1a000001  bne 0x0c0115dc
0c0115d4: e3520000  cmp r2, #0x0
0c0115d8: aa000005  bge 0x0c0115f4
0c0115dc: e3320000  teq r2, #0x0
0c0115e0: e584003c  str r0, [r4, #0x3c]
0c0115e4: 01a01000  moveq r1, r0
0c0115e8: 03a0000f  moveq r0, #0xf
0c0115ec: 02800b02  addeq r0, r0, #0x800
0c0115f0: 0bfff647  bleq 0x0c00ef14 <fn_0c00ef14>
0c0115f4: e5940010  ldr r0, [r4, #0x10]
0c0115f8: e3300000  teq r0, #0x0
0c0115fc: 1a000001  bne 0x0c011608
0c011600: e3520000  cmp r2, #0x0
0c011604: aa000005  bge 0x0c011620
0c011608: e1a01003  mov r1, r3
0c01160c: e3320000  teq r2, #0x0
0c011610: e5841010  str r1, [r4, #0x10]
0c011614: 03a00004  moveq r0, #0x4
0c011618: 02800b02  addeq r0, r0, #0x800
0c01161c: 0bfff63c  bleq 0x0c00ef14 <fn_0c00ef14>
0c011620: e5940014  ldr r0, [r4, #0x14]
0c011624: e3300000  teq r0, #0x0
0c011628: 1a000001  bne 0x0c011634
0c01162c: e3520000  cmp r2, #0x0
0c011630: aa000005  bge 0x0c01164c
0c011634: e1a01003  mov r1, r3
0c011638: e3320000  teq r2, #0x0
0c01163c: e5841014  str r1, [r4, #0x14]
0c011640: 03a00005  moveq r0, #0x5
0c011644: 02800b02  addeq r0, r0, #0x800
0c011648: 0bfff631  bleq 0x0c00ef14 <fn_0c00ef14>
0c01164c: e3a05055  mov r5, #0x55
0c011650: e5940018  ldr r0, [r4, #0x18]
0c011654: e3300055  teq r0, #0x55
0c011658: 1a000001  bne 0x0c011664
0c01165c: e3520000  cmp r2, #0x0
0c011660: aa000005  bge 0x0c01167c
0c011664: e1a01005  mov r1, r5
0c011668: e3320000  teq r2, #0x0
0c01166c: e5841018  str r1, [r4, #0x18]
0c011670: 03a00006  moveq r0, #0x6
0c011674: 02800b02  addeq r0, r0, #0x800
0c011678: 0bfff625  bleq 0x0c00ef14 <fn_0c00ef14>
0c01167c: e594001c  ldr r0, [r4, #0x1c]
0c011680: e3300000  teq r0, #0x0
0c011684: 1a000001  bne 0x0c011690
0c011688: e3520000  cmp r2, #0x0
0c01168c: aa000005  bge 0x0c0116a8
0c011690: e1a01003  mov r1, r3
0c011694: e3320000  teq r2, #0x0
0c011698: e584101c  str r1, [r4, #0x1c]
0c01169c: 03a00007  moveq r0, #0x7
0c0116a0: 02800b02  addeq r0, r0, #0x800
0c0116a4: 0bfff61a  bleq 0x0c00ef14 <fn_0c00ef14>
0c0116a8: e5940020  ldr r0, [r4, #0x20]
0c0116ac: e3300000  teq r0, #0x0
0c0116b0: 1a000001  bne 0x0c0116bc
0c0116b4: e3520000  cmp r2, #0x0
0c0116b8: aa000005  bge 0x0c0116d4
0c0116bc: e1a01003  mov r1, r3
0c0116c0: e3320000  teq r2, #0x0
0c0116c4: e5841020  str r1, [r4, #0x20]
0c0116c8: 03a00008  moveq r0, #0x8
0c0116cc: 02800b02  addeq r0, r0, #0x800
0c0116d0: 0bfff60f  bleq 0x0c00ef14 <fn_0c00ef14>
0c0116d4: e5940024  ldr r0, [r4, #0x24]
0c0116d8: e3700001  cmn r0, #0x1
0c0116dc: 1a000001  bne 0x0c0116e8
0c0116e0: e3520000  cmp r2, #0x0
0c0116e4: aa000005  bge 0x0c011700
0c0116e8: e3e01000  mvn r1, #0x0
0c0116ec: e3320000  teq r2, #0x0
0c0116f0: e5841024  str r1, [r4, #0x24]
0c0116f4: 03a00009  moveq r0, #0x9
0c0116f8: 02800b02  addeq r0, r0, #0x800
0c0116fc: 0bfff604  bleq 0x0c00ef14 <fn_0c00ef14>
0c011700: e5940028  ldr r0, [r4, #0x28]
0c011704: e3300000  teq r0, #0x0
0c011708: 1a000001  bne 0x0c011714
0c01170c: e3520000  cmp r2, #0x0
0c011710: aa000005  bge 0x0c01172c
0c011714: e1a01003  mov r1, r3
0c011718: e3320000  teq r2, #0x0
0c01171c: e5841028  str r1, [r4, #0x28]
0c011720: 03a0000a  moveq r0, #0xa
0c011724: 02800b02  addeq r0, r0, #0x800
0c011728: 0bfff5f9  bleq 0x0c00ef14 <fn_0c00ef14>
0c01172c: e594002c  ldr r0, [r4, #0x2c]
0c011730: e3300055  teq r0, #0x55
0c011734: 1a000001  bne 0x0c011740
0c011738: e3520000  cmp r2, #0x0
0c01173c: aa000005  bge 0x0c011758
0c011740: e1a01005  mov r1, r5
0c011744: e3320000  teq r2, #0x0
0c011748: e584102c  str r1, [r4, #0x2c]
0c01174c: 03a0000b  moveq r0, #0xb
0c011750: 02800b02  addeq r0, r0, #0x800
0c011754: 0bfff5ee  bleq 0x0c00ef14 <fn_0c00ef14>
0c011758: e5940030  ldr r0, [r4, #0x30]
0c01175c: e3300055  teq r0, #0x55
0c011760: 1a000001  bne 0x0c01176c
0c011764: e3520000  cmp r2, #0x0
0c011768: aa000005  bge 0x0c011784
0c01176c: e5845030  str r5, [r4, #0x30]
0c011770: e1a01005  mov r1, r5
0c011774: e3320000  teq r2, #0x0
0c011778: 03a0000c  moveq r0, #0xc
0c01177c: 02800b02  addeq r0, r0, #0x800
0c011780: 0bfff5e3  bleq 0x0c00ef14 <fn_0c00ef14>
0c011784: e5940034  ldr r0, [r4, #0x34]
0c011788: e33000ff  teq r0, #0xff
0c01178c: 1a000001  bne 0x0c011798
0c011790: e3520000  cmp r2, #0x0
0c011794: aa000005  bge 0x0c0117b0
0c011798: e3a010ff  mov r1, #0xff
0c01179c: e3320000  teq r2, #0x0
0c0117a0: e5841034  str r1, [r4, #0x34]
0c0117a4: 03a0000d  moveq r0, #0xd
0c0117a8: 02800b02  addeq r0, r0, #0x800
0c0117ac: 0bfff5d8  bleq 0x0c00ef14 <fn_0c00ef14>
0c0117b0: e5940040  ldr r0, [r4, #0x40]
0c0117b4: e3300000  teq r0, #0x0
0c0117b8: 1a000001  bne 0x0c0117c4
0c0117bc: e3520000  cmp r2, #0x0
0c0117c0: aa000004  bge 0x0c0117d8
0c0117c4: e1a01003  mov r1, r3
0c0117c8: e3320000  teq r2, #0x0
0c0117cc: e5841040  str r1, [r4, #0x40]
0c0117d0: 03a00e81  moveq r0, #0x810
0c0117d4: 0bfff5ce  bleq 0x0c00ef14 <fn_0c00ef14>
0c0117d8: e5940200  ldr r0, [r4, #0x200]
0c0117dc: e3300000  teq r0, #0x0
0c0117e0: 1a000001  bne 0x0c0117ec
0c0117e4: e3520000  cmp r2, #0x0
0c0117e8: a91ba870  ldmgedb r11, {r4,r5,r6,r11,sp,pc}
0c0117ec: e5a43200  str r3, [r4, #0x200]!
0c0117f0: e1a01003  mov r1, r3
0c0117f4: e3320000  teq r2, #0x0
0c0117f8: 03a00d22  moveq r0, #0x880
0c0117fc: 091b6870  ldmeqdb r11, {r4,r5,r6,r11,sp,lr}
0c011800: 0afff5c3  beq 0x0c00ef14 <fn_0c00ef14>
0c011804: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c011808: 32212301  .word 0x32212301
0c01180c: 00c8b640  .word 0x00c8b640
0c011810: 00916f6f  .word 0x00916f6f
0c011814: 0c010010  .word 0x0c010010
0c011818: e1a0c00d  mov r12, sp
0c01181c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c011820: e24cb004  sub r11, r12, #0x4
0c011824: e1a05000  mov r5, r0
0c011828: e1a04001  mov r4, r1
0c01182c: e24dd008  sub sp, sp, #0x8
0c011830: e59fa154  ldr r10, [pc, #0x154] =0x0404f70c
0c011834: e28a6a07  add r6, r10, #0x7000
0c011838: e5960008  ldr r0, [r6, #0x8]
0c01183c: e380000f  orr r0, r0, #0xf
0c011840: e5860008  str r0, [r6, #0x8]
0c011844: e3c00030  bic r0, r0, #0x30
0c011848: e5860008  str r0, [r6, #0x8]
0c01184c: e3c00d07  bic r0, r0, #0x1c0
0c011850: e5860008  str r0, [r6, #0x8]
0c011854: e3c00b01  bic r0, r0, #0x400
0c011858: e5860008  str r0, [r6, #0x8]
0c01185c: e3c00c02  bic r0, r0, #0x200
0c011860: e5860008  str r0, [r6, #0x8]
0c011864: e3800b02  orr r0, r0, #0x800
0c011868: e5860008  str r0, [r6, #0x8]
0c01186c: e3c00a01  bic r0, r0, #0x1000
0c011870: e5860008  str r0, [r6, #0x8]
0c011874: e3c01a02  bic r1, r0, #0x2000
0c011878: e3a00002  mov r0, #0x2
0c01187c: e2800b07  add r0, r0, #0x1c00
0c011880: e5861008  str r1, [r6, #0x8]
0c011884: ebfff5a2  bl 0x0c00ef14 <fn_0c00ef14>
0c011888: e3a07000  mov r7, #0x0
0c01188c: e59f00fc  ldr r0, [pc, #0xfc] =0x04018f7c
0c011890: e5901924  ldr r1, [r0, #0x924]
0c011894: e3510000  cmp r1, #0x0
0c011898: da000032  ble 0x0c011968
0c01189c: e1a01a03  mov r1, r3, lsl #20
0c0118a0: e1a01a21  mov r1, r1, lsr #20
0c0118a4: e1a03a04  mov r3, r4, lsl #20
0c0118a8: e1a03a23  mov r3, r3, lsr #20
0c0118ac: e1813603  orr r3, r1, r3, lsl #12
0c0118b0: e1a01002  mov r1, r2
0c0118b4: e20220ff  and r2, r2, #0xff
0c0118b8: e1833c02  orr r3, r3, r2, lsl #24
0c0118bc: e3a0200f  mov r2, #0xf
0c0118c0: e0021441  and r1, r2, r1, asr #8
0c0118c4: e1a02a05  mov r2, r5, lsl #20
0c0118c8: e1a02a22  mov r2, r2, lsr #20
0c0118cc: e1814202  orr r4, r1, r2, lsl #4
0c0118d0: e1a0100a  mov r1, r10
0c0118d4: e1a0a000  mov r10, r0
0c0118d8: e2815a05  add r5, r1, #0x5000
0c0118dc: e3a01000  mov r1, #0x0
0c0118e0: e3a00009  mov r0, #0x9
0c0118e4: e2800b07  add r0, r0, #0x1c00
0c0118e8: e5861024  str r1, [r6, #0x24]
0c0118ec: ebfff588  bl 0x0c00ef14 <fn_0c00ef14>
0c0118f0: e596002c  ldr r0, [r6, #0x2c]
0c0118f4: e3c0077e  bic r0, r0, #0x1f80000
0c0118f8: e3a0177e  mov r1, #0x1f80000
0c0118fc: e0011987  and r1, r1, r7, lsl #19
0c011900: e1801001  orr r1, r0, r1
0c011904: e3a0000b  mov r0, #0xb
0c011908: e2800b07  add r0, r0, #0x1c00
0c01190c: e586102c  str r1, [r6, #0x2c]
0c011910: ebfff57f  bl 0x0c00ef14 <fn_0c00ef14>
0c011914: e58d3004  str r3, [sp, #0x4]
0c011918: e1a02003  mov r2, r3
0c01191c: e58d4000  str r4, [sp, #0x0]
0c011920: e1a01004  mov r1, r4
0c011924: e3a0000d  mov r0, #0xd
0c011928: e2800b05  add r0, r0, #0x1400
0c01192c: ebfff588  bl 0x0c00ef54 <fn_0c00ef54>
0c011930: e5950430  ldr r0, [r5, #0x430]
0c011934: e3c00002  bic r0, r0, #0x2
0c011938: e5850430  str r0, [r5, #0x430]
0c01193c: e3c00001  bic r0, r0, #0x1
0c011940: e5850430  str r0, [r5, #0x430]
0c011944: e3c0100c  bic r1, r0, #0xc
0c011948: e3a00f43  mov r0, #0x10c
0c01194c: e2800b05  add r0, r0, #0x1400
0c011950: e5851430  str r1, [r5, #0x430]
0c011954: ebfff56e  bl 0x0c00ef14 <fn_0c00ef14>
0c011958: e2877001  add r7, r7, #0x1
0c01195c: e59a0924  ldr r0, [r10, #0x924]
0c011960: e1570000  cmp r7, r0
0c011964: baffffdc  blt 0x0c0118dc
0c011968: e596002c  ldr r0, [r6, #0x2c]
0c01196c: e3c0077e  bic r0, r0, #0x1f80000
0c011970: e3800716  orr r0, r0, #0x580000
0c011974: e5a6002c  str r0, [r6, #0x2c]!
0c011978: e1a01000  mov r1, r0
0c01197c: e3a0000b  mov r0, #0xb
0c011980: e2800b07  add r0, r0, #0x1c00
0c011984: ebfff562  bl 0x0c00ef14 <fn_0c00ef14>
0c011988: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c01198c: 0404f70c  .word 0x0404f70c
0c011990: 04018f7c  .word 0x04018f7c
fn_0c011994:
0c011994: e1a0c00d  mov r12, sp
0c011998: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c01199c: e24cb004  sub r11, r12, #0x4
0c0119a0: e3a01009  mov r1, #0x9
0c0119a4: e3a00901  mov r0, #0x4000
0c0119a8: e2400008  sub r0, r0, #0x8
0c0119ac: ebfff558  bl 0x0c00ef14 <fn_0c00ef14>
0c0119b0: e3a01055  mov r1, #0x55
0c0119b4: e3a00006  mov r0, #0x6
0c0119b8: e2800b02  add r0, r0, #0x800
0c0119bc: ebfff554  bl 0x0c00ef14 <fn_0c00ef14>
0c0119c0: e51f303c  ldr r3, [pc, #-0x3c] =0x0404f70c
0c0119c4: e2832a02  add r2, r3, #0x2000
0c0119c8: e5920018  ldr r0, [r2, #0x18]
0c0119cc: e3c00903  bic r0, r0, #0xc000
0c0119d0: e3801901  orr r1, r0, #0x4000
0c0119d4: e3a00006  mov r0, #0x6
0c0119d8: e2800b02  add r0, r0, #0x800
0c0119dc: e5821018  str r1, [r2, #0x18]
0c0119e0: ebfff54b  bl 0x0c00ef14 <fn_0c00ef14>
0c0119e4: e5920018  ldr r0, [r2, #0x18]
0c0119e8: e3c0000c  bic r0, r0, #0xc
0c0119ec: e3801004  orr r1, r0, #0x4
0c0119f0: e3a00006  mov r0, #0x6
0c0119f4: e2800b02  add r0, r0, #0x800
0c0119f8: e5821018  str r1, [r2, #0x18]
0c0119fc: ebfff544  bl 0x0c00ef14 <fn_0c00ef14>
0c011a00: e5920018  ldr r0, [r2, #0x18]
0c011a04: e3c007ff  bic r0, r0, #0x3fc0000
0c011a08: e3801769  orr r1, r0, #0x1a40000
0c011a0c: e3a00006  mov r0, #0x6
0c011a10: e2800b02  add r0, r0, #0x800
0c011a14: e5821018  str r1, [r2, #0x18]
0c011a18: ebfff53d  bl 0x0c00ef14 <fn_0c00ef14>
0c011a1c: e5920018  ldr r0, [r2, #0x18]
0c011a20: e3c00003  bic r0, r0, #0x3
0c011a24: e3801002  orr r1, r0, #0x2
0c011a28: e3a00006  mov r0, #0x6
0c011a2c: e2800b02  add r0, r0, #0x800
0c011a30: e5821018  str r1, [r2, #0x18]
0c011a34: ebfff536  bl 0x0c00ef14 <fn_0c00ef14>
0c011a38: e5920018  ldr r0, [r2, #0x18]
0c011a3c: e3c00c03  bic r0, r0, #0x300
0c011a40: e3801c01  orr r1, r0, #0x100
0c011a44: e3a00006  mov r0, #0x6
0c011a48: e2800b02  add r0, r0, #0x800
0c011a4c: e5821018  str r1, [r2, #0x18]
0c011a50: ebfff52f  bl 0x0c00ef14 <fn_0c00ef14>
0c011a54: e5920018  ldr r0, [r2, #0x18]
0c011a58: e3c01a03  bic r1, r0, #0x3000
0c011a5c: e3a00006  mov r0, #0x6
0c011a60: e2800b02  add r0, r0, #0x800
0c011a64: e5821018  str r1, [r2, #0x18]
0c011a68: ebfff529  bl 0x0c00ef14 <fn_0c00ef14>
0c011a6c: e5920040  ldr r0, [r2, #0x40]
0c011a70: e3c01001  bic r1, r0, #0x1
0c011a74: e3a00e81  mov r0, #0x810
0c011a78: e5821040  str r1, [r2, #0x40]
0c011a7c: ebfff524  bl 0x0c00ef14 <fn_0c00ef14>
0c011a80: e2833a0f  add r3, r3, #0xf000
0c011a84: e5930f40  ldr r0, [r3, #0xf40]
0c011a88: e1a00620  mov r0, r0, lsr #12
0c011a8c: e1a00600  mov r0, r0, lsl #12
0c011a90: e380100d  orr r1, r0, #0xd
0c011a94: e3a00efd  mov r0, #0xfd0
0c011a98: e2800a03  add r0, r0, #0x3000
0c011a9c: e5831f40  str r1, [r3, #0xf40]
0c011aa0: ebfff51b  bl 0x0c00ef14 <fn_0c00ef14>
0c011aa4: e51f1298  ldr r1, [pc, #-0x298] =0x0c010010
0c011aa8: e3a00ff3  mov r0, #0x3cc
0c011aac: e2800b0f  add r0, r0, #0x3c00
0c011ab0: ebfff517  bl 0x0c00ef14 <fn_0c00ef14>
0c011ab4: e3a01010  mov r1, #0x10
0c011ab8: e3a000cd  mov r0, #0xcd
0c011abc: e2800c3f  add r0, r0, #0x3f00
0c011ac0: ebfff513  bl 0x0c00ef14 <fn_0c00ef14>
0c011ac4: e3a01000  mov r1, #0x0
0c011ac8: e3a000ce  mov r0, #0xce
0c011acc: e2800c3f  add r0, r0, #0x3f00
0c011ad0: ebfff50f  bl 0x0c00ef14 <fn_0c00ef14>
0c011ad4: e5930f4c  ldr r0, [r3, #0xf4c]
0c011ad8: e3c00001  bic r0, r0, #0x1
0c011adc: e5830f4c  str r0, [r3, #0xf4c]
0c011ae0: e3800004  orr r0, r0, #0x4
0c011ae4: e5830f4c  str r0, [r3, #0xf4c]
0c011ae8: e3800002  orr r0, r0, #0x2
0c011aec: e5830f4c  str r0, [r3, #0xf4c]
0c011af0: e3801008  orr r1, r0, #0x8
0c011af4: e3a000d3  mov r0, #0xd3
0c011af8: e2800c3f  add r0, r0, #0x3f00
0c011afc: e5831f4c  str r1, [r3, #0xf4c]
0c011b00: ebfff503  bl 0x0c00ef14 <fn_0c00ef14>
0c011b04: e5920000  ldr r0, [r2, #0x0]
0c011b08: e3c00002  bic r0, r0, #0x2
0c011b0c: e5820000  str r0, [r2, #0x0]
0c011b10: e3801001  orr r1, r0, #0x1
0c011b14: e3a00b02  mov r0, #0x800
0c011b18: e5821000  str r1, [r2, #0x0]
0c011b1c: ebfff4fc  bl 0x0c00ef14 <fn_0c00ef14>
0c011b20: e5930f44  ldr r0, [r3, #0xf44]
0c011b24: e1a00620  mov r0, r0, lsr #12
0c011b28: e1a00600  mov r0, r0, lsl #12
0c011b2c: e3800010  orr r0, r0, #0x10
0c011b30: e5a30f44  str r0, [r3, #0xf44]!
0c011b34: e1a01000  mov r1, r0
0c011b38: e3a000d1  mov r0, #0xd1
0c011b3c: e2800c3f  add r0, r0, #0x3f00
0c011b40: ebfff4f3  bl 0x0c00ef14 <fn_0c00ef14>
0c011b44: e5920000  ldr r0, [r2, #0x0]
0c011b48: e3c01002  bic r1, r0, #0x2
0c011b4c: e3a00b02  mov r0, #0x800
0c011b50: e5821000  str r1, [r2, #0x0]
0c011b54: ebfff4ee  bl 0x0c00ef14 <fn_0c00ef14>
0c011b58: e5920028  ldr r0, [r2, #0x28]
0c011b5c: e3c01003  bic r1, r0, #0x3
0c011b60: e3a0000a  mov r0, #0xa
0c011b64: e2800b02  add r0, r0, #0x800
0c011b68: e5821028  str r1, [r2, #0x28]
0c011b6c: ebfff4e8  bl 0x0c00ef14 <fn_0c00ef14>
0c011b70: e3e00000  mvn r0, #0x0
0c011b74: e5a20024  str r0, [r2, #0x24]!
0c011b78: e1a01000  mov r1, r0
0c011b7c: e3a00009  mov r0, #0x9
0c011b80: e2800b02  add r0, r0, #0x800
0c011b84: e91b6800  ldmdb r11, {r11,sp,lr}
0c011b88: eafff4e1  b 0x0c00ef14 <fn_0c00ef14>
0c011b8c: e1a0c00d  mov r12, sp
0c011b90: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c011b94: e24cb004  sub r11, r12, #0x4
0c011b98: e59f4098  ldr r4, [pc, #0x98] =0x0406f70c
0c011b9c: e594002c  ldr r0, [r4, #0x2c]
0c011ba0: e5941024  ldr r1, [r4, #0x24]
0c011ba4: e0810000  add r0, r1, r0
0c011ba8: e5941034  ldr r1, [r4, #0x34]
0c011bac: e0801001  add r1, r0, r1
0c011bb0: e594003c  ldr r0, [r4, #0x3c]
0c011bb4: e0815000  add r5, r1, r0
0c011bb8: e5940004  ldr r0, [r4, #0x4]
0c011bbc: eb0000ca  bl 0x0c011eec <send_host_intr>
0c011bc0: e28f0f1d  add r0, pc, #0x74
0c011bc4: e3a01001  mov r1, #0x1
0c011bc8: eb001375  bl 0x0c0169a4 <fn_0c0169a4>
0c011bcc: e1a00005  mov r0, r5
0c011bd0: eb0000c5  bl 0x0c011eec <send_host_intr>
0c011bd4: e28f0f18  add r0, pc, #0x60
0c011bd8: e3a01002  mov r1, #0x2
0c011bdc: eb001370  bl 0x0c0169a4 <fn_0c0169a4>
0c011be0: e5b40014  ldr r0, [r4, #0x14]!
0c011be4: eb0000c0  bl 0x0c011eec <send_host_intr>
0c011be8: e28f0f13  add r0, pc, #0x4c
0c011bec: e3a01003  mov r1, #0x3
0c011bf0: eb00136b  bl 0x0c0169a4 <fn_0c0169a4>
0c011bf4: e5d8c040  ldrb r12, [r8, #0x40]
0c011bf8: e5d80041  ldrb r0, [r8, #0x41]
0c011bfc: e1a0cc0c  mov r12, r12, lsl #24
0c011c00: e180084c  orr r0, r0, r12, asr #16
0c011c04: eb0000b8  bl 0x0c011eec <send_host_intr>
0c011c08: e28f0f0b  add r0, pc, #0x2c
0c011c0c: e3a01004  mov r1, #0x4
0c011c10: eb001363  bl 0x0c0169a4 <fn_0c0169a4>
0c011c14: e5d8c042  ldrb r12, [r8, #0x42]
0c011c18: e5d80043  ldrb r0, [r8, #0x43]
0c011c1c: e1a0cc0c  mov r12, r12, lsl #24
0c011c20: e180084c  orr r0, r0, r12, asr #16
0c011c24: eb0000b0  bl 0x0c011eec <send_host_intr>
0c011c28: e28f0f03  add r0, pc, #0xc
0c011c2c: e3a01005  mov r1, #0x5
0c011c30: e91b6830  ldmdb r11, {r4,r5,r11,sp,lr}
0c011c34: ea00135a  b 0x0c0169a4 <fn_0c0169a4>
0c011c38: 0406f70c  .word 0x0406f70c
0c011c3c: 6b673a20  .asciz "kg: sent interrupt #%d .. waiting"
0c011c60: 000000c3  andeq r0, r0, r3, asr #1
fn_0c011c64:
0c011c64: e59f0014  ldr r0, [pc, #0x14] =0x040198a8
0c011c68: e5900000  ldr r0, [r0, #0x0]
0c011c6c: e3300000  teq r0, #0x0
0c011c70: 13a01001  movne r1, #0x1
0c011c74: 13a00a01  movne r0, #0x1000
0c011c78: 15801000  strne r1, [r0, #0x0]
0c011c7c: e1a0f00e  mov pc, lr
0c011c80: 040198a8  .word 0x040198a8
simfast_end:
0c011c84: e51f000c  ldr r0, [pc, #-0xc] =0x040198a8
0c011c88: e5900000  ldr r0, [r0, #0x0]
0c011c8c: e3300000  teq r0, #0x0
0c011c90: 13e01000  mvnne r1, #0x0
0c011c94: 13a00a01  movne r0, #0x1000
0c011c98: 15801000  strne r1, [r0, #0x0]
0c011c9c: e1a0f00e  mov pc, lr
0c011ca0: e51f0028  ldr r0, [pc, #-0x28] =0x040198a8
0c011ca4: e5900000  ldr r0, [r0, #0x0]
0c011ca8: e3300000  teq r0, #0x0
0c011cac: 01a0f00e  moveq pc, lr
0c011cb0: e3a01000  mov r1, #0x0
0c011cb4: e3a00a01  mov r0, #0x1000
0c011cb8: e5a01040  str r1, [r0, #0x40]!
0c011cbc: e1a0f00e  mov pc, lr
0c011cc0: e51f0048  ldr r0, [pc, #-0x48] =0x040198a8
0c011cc4: e5900000  ldr r0, [r0, #0x0]
0c011cc8: e3300000  teq r0, #0x0
0c011ccc: 01a0f00e  moveq pc, lr
0c011cd0: e3a01000  mov r1, #0x0
0c011cd4: e3a00a01  mov r0, #0x1000
0c011cd8: e5a01044  str r1, [r0, #0x44]!
0c011cdc: e1a0f00e  mov pc, lr
fn_0c011ce0:
0c011ce0: e3a00000  mov r0, #0x0
0c011ce4: e1a0f00e  mov pc, lr
0c011ce8: eaffffff  b 0x0c011cec
0c011cec: eafffffe  b 0x0c011cec
reset:
0c011cf0: e28f0f00  add r0, pc, #0x0
0c011cf4: eafffffb  b 0x0c011ce8
0c011cf8: 52455345  .asciz "RESET"
badinstr:
0c011d00: e28f0f00  add r0, pc, #0x0
0c011d04: eafffff7  b 0x0c011ce8
0c011d08: 494c4c45  .asciz "ILLEGAL INSTRUCTION"
pabort:
0c011d1c: e28f0f00  add r0, pc, #0x0
0c011d20: eafffff0  b 0x0c011ce8
0c011d24: 50524546  .asciz "PREFETCH ABORT"
badaddr:
0c011d34: e28f0f00  add r0, pc, #0x0
0c011d38: eaffffea  b 0x0c011ce8
0c011d3c: 494c4c45  .asciz "ILLEGAL ADDRESS"
irq:
0c011d4c: e28f0f00  add r0, pc, #0x0
0c011d50: eaffffe4  b 0x0c011ce8
0c011d54: 494e5445  .asciz "INTERRUPT REQUEST"
fiq:
0c011d68: e28f0f00  add r0, pc, #0x0
0c011d6c: eaffffdd  b 0x0c011ce8
0c011d70: 46415354  .asciz "FAST INTERRUPT REQUEST"
0c011d88: e1a0c00d  mov r12, sp
0c011d8c: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c011d90: e24cb004  sub r11, r12, #0x4
0c011d94: e1a06000  mov r6, r0
0c011d98: e1a05001  mov r5, r1
0c011d9c: e1a04002  mov r4, r2
0c011da0: e3a01000  mov r1, #0x0
0c011da4: e3a00077  mov r0, #0x77
0c011da8: e2800b01  add r0, r0, #0x400
0c011dac: ebfff458  bl 0x0c00ef14 <fn_0c00ef14>
0c011db0: e3a01001  mov r1, #0x1
0c011db4: e3a00d11  mov r0, #0x440
0c011db8: ebfff455  bl 0x0c00ef14 <fn_0c00ef14>
0c011dbc: e3a01b01  mov r1, #0x400
0c011dc0: e3a00064  mov r0, #0x64
0c011dc4: e2800b01  add r0, r0, #0x400
0c011dc8: ebfff451  bl 0x0c00ef14 <fn_0c00ef14>
0c011dcc: e1a01006  mov r1, r6
0c011dd0: e3a00e46  mov r0, #0x460
0c011dd4: ebfff44e  bl 0x0c00ef14 <fn_0c00ef14>
0c011dd8: e1a01005  mov r1, r5
0c011ddc: e3a00061  mov r0, #0x61
0c011de0: e2800b01  add r0, r0, #0x400
0c011de4: ebfff44a  bl 0x0c00ef14 <fn_0c00ef14>
0c011de8: e1a01004  mov r1, r4
0c011dec: e3a00062  mov r0, #0x62
0c011df0: e2800b01  add r0, r0, #0x400
0c011df4: ebfff446  bl 0x0c00ef14 <fn_0c00ef14>
0c011df8: e1a01004  mov r1, r4
0c011dfc: e3a00063  mov r0, #0x63
0c011e00: e2800b01  add r0, r0, #0x400
0c011e04: ebfff442  bl 0x0c00ef14 <fn_0c00ef14>
0c011e08: e3a01000  mov r1, #0x0
0c011e0c: e3a00076  mov r0, #0x76
0c011e10: e2800b01  add r0, r0, #0x400
0c011e14: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c011e18: eafff43d  b 0x0c00ef14 <fn_0c00ef14>
0c011e1c: e1a0c00d  mov r12, sp
0c011e20: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c011e24: e24cb004  sub r11, r12, #0x4
0c011e28: e1a05000  mov r5, r0
0c011e2c: e1a04001  mov r4, r1
0c011e30: e3a01000  mov r1, #0x0
0c011e34: e3a00077  mov r0, #0x77
0c011e38: e2800b01  add r0, r0, #0x400
0c011e3c: ebfff434  bl 0x0c00ef14 <fn_0c00ef14>
0c011e40: e1a01005  mov r1, r5
0c011e44: e3a00e46  mov r0, #0x460
0c011e48: ebfff431  bl 0x0c00ef14 <fn_0c00ef14>
0c011e4c: e1a01004  mov r1, r4
0c011e50: e3a00061  mov r0, #0x61
0c011e54: e2800b01  add r0, r0, #0x400
0c011e58: ebfff42d  bl 0x0c00ef14 <fn_0c00ef14>
0c011e5c: e3a01004  mov r1, #0x4
0c011e60: e3a00062  mov r0, #0x62
0c011e64: e2800b01  add r0, r0, #0x400
0c011e68: ebfff429  bl 0x0c00ef14 <fn_0c00ef14>
0c011e6c: e3a01004  mov r1, #0x4
0c011e70: e3a00063  mov r0, #0x63
0c011e74: e2800b01  add r0, r0, #0x400
0c011e78: ebfff425  bl 0x0c00ef14 <fn_0c00ef14>
0c011e7c: e3a01001  mov r1, #0x1
0c011e80: e3a00076  mov r0, #0x76
0c011e84: e2800b01  add r0, r0, #0x400
0c011e88: ebfff421  bl 0x0c00ef14 <fn_0c00ef14>
0c011e8c: e3a01000  mov r1, #0x0
0c011e90: e3a00077  mov r0, #0x77
0c011e94: e2800b01  add r0, r0, #0x400
0c011e98: ebfff41d  bl 0x0c00ef14 <fn_0c00ef14>
0c011e9c: e3a01000  mov r1, #0x0
0c011ea0: e3a00062  mov r0, #0x62
0c011ea4: e2800b01  add r0, r0, #0x400
0c011ea8: ebfff419  bl 0x0c00ef14 <fn_0c00ef14>
0c011eac: e3a01000  mov r1, #0x0
0c011eb0: e3a00063  mov r0, #0x63
0c011eb4: e2800b01  add r0, r0, #0x400
0c011eb8: ebfff415  bl 0x0c00ef14 <fn_0c00ef14>
0c011ebc: e3a01000  mov r1, #0x0
0c011ec0: e3a00d11  mov r0, #0x440
0c011ec4: e91b6830  ldmdb r11, {r4,r5,r11,sp,lr}
0c011ec8: eafff411  b 0x0c00ef14 <fn_0c00ef14>
fn_0c011ecc:
0c011ecc: e2882fc9  add r2, r8, #0x324
0c011ed0: e2822b02  add r2, r2, #0x800
0c011ed4: e8920007  ldmia r2, {r0,r1,r2}
0c011ed8: eaffffaa  b 0x0c011d88
0c011edc: e2881fc9  add r1, r8, #0x324
0c011ee0: e2811b02  add r1, r1, #0x800
0c011ee4: e8910003  ldmia r1, {r0,r1}
0c011ee8: eaffffcb  b 0x0c011e1c
send_host_intr:
0c011eec: e519116c  ldr r1, [r9, #-0x16c]
0c011ef0: e519116c  ldr r1, [r9, #-0x16c]
0c011ef4: e3110001  tst r1, #0x1
0c011ef8: 1afffffc  bne 0x0c011ef0
0c011efc: e5090170  str r0, [r9, #-0x170]
0c011f00: e3a00001  mov r0, #0x1
0c011f04: e509016c  str r0, [r9, #-0x16c]
0c011f08: e1a0f00e  mov pc, lr
0c011f0c: e1a0f00e  mov pc, lr
0c011f10: e1a0c00d  mov r12, sp
0c011f14: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c011f18: e24cb004  sub r11, r12, #0x4
0c011f1c: e5190188  ldr r0, [r9, #-0x188]
0c011f20: e59f5094  ldr r5, [pc, #0x94] =0x040198a8
0c011f24: e240ce1f  sub r12, r0, #0x1f0
0c011f28: e33c0001  teq r12, #0x1
0c011f2c: 1a000008  bne 0x0c011f54
0c011f30: e5990000  ldr r0, [r9, #0x0]
0c011f34: e585007c  str r0, [r5, #0x7c]
0c011f38: e5990000  ldr r0, [r9, #0x0]
0c011f3c: e585007c  str r0, [r5, #0x7c]
0c011f40: e599003c  ldr r0, [r9, #0x3c]
0c011f44: e5a5007c  str r0, [r5, #0x7c]!
0c011f48: e28f0f1c  add r0, pc, #0x70
0c011f4c: e91b6830  ldmdb r11, {r4,r5,r11,sp,lr}
0c011f50: eaffff62  b 0x0c011ce0 <fn_0c011ce0>
0c011f54: e5191188  ldr r1, [r9, #-0x188]
0c011f58: e28f0f1e  add r0, pc, #0x78
0c011f5c: eb001290  bl 0x0c0169a4 <fn_0c0169a4>
0c011f60: e5191184  ldr r1, [r9, #-0x184]
0c011f64: e28f0f21  add r0, pc, #0x84
0c011f68: eb00128d  bl 0x0c0169a4 <fn_0c0169a4>
0c011f6c: e3a04000  mov r4, #0x0
0c011f70: e5992000  ldr r2, [r9, #0x0]
0c011f74: e1a01004  mov r1, r4
0c011f78: e28f0f22  add r0, pc, #0x88
0c011f7c: eb001288  bl 0x0c0169a4 <fn_0c0169a4>
0c011f80: e2844001  add r4, r4, #0x1
0c011f84: e354000a  cmp r4, #0xa
0c011f88: bafffff8  blt 0x0c011f70
0c011f8c: e28f0f25  add r0, pc, #0x94
0c011f90: eb001283  bl 0x0c0169a4 <fn_0c0169a4>
0c011f94: e3a04000  mov r4, #0x0
0c011f98: e1a00005  mov r0, r5
0c011f9c: e5991000  ldr r1, [r9, #0x0]
0c011fa0: e580107c  str r1, [r0, #0x7c]
0c011fa4: e2844001  add r4, r4, #0x1
0c011fa8: e3540064  cmp r4, #0x64
0c011fac: bafffffa  blt 0x0c011f9c
0c011fb0: e5991000  ldr r1, [r9, #0x0]
0c011fb4: e580107c  str r1, [r0, #0x7c]
0c011fb8: eafffffc  b 0x0c011fb0
0c011fbc: 040198a8  .word 0x040198a8
0c011fc0: 49676e6f  .asciz "Ignored hp-pipe-setup\n"
0c011fd8: 6162633a  .asciz "abc: curr-cmd = 0x%08x"
0c011ff0: 6162633a  .asciz "abc: prev-cmd = 0x%08x"
0c012008: 6162633a  .asciz "abc: future-data[%d] = 0x%08x"
0c012028: 6162633a  .asciz "abc: bye bye!!"
fn_0c012038:
0c012038: e24dd004  sub sp, sp, #0x4
0c01203c: e24d0004  sub r0, sp, #0x4
0c012040: e3a01fd7  mov r1, #0x35c
0c012044: e2811b02  add r1, r1, #0x800
0c012048: e58d0000  str r0, [sp, #0x0]
0c01204c: e1500001  cmp r0, r1
0c012050: 9a000007  bls 0x0c012074
0c012054: e59f0074  ldr r0, [pc, #0x74] =0xdeadbeef
0c012058: e59d2000  ldr r2, [sp, #0x0]
0c01205c: e5820000  str r0, [r2, #0x0]
0c012060: e59d2000  ldr r2, [sp, #0x0]
0c012064: e2422004  sub r2, r2, #0x4
0c012068: e58d2000  str r2, [sp, #0x0]
0c01206c: e1520001  cmp r2, r1
0c012070: 8afffff8  bhi 0x0c012058
0c012074: e59f0058  ldr r0, [pc, #0x58] =0x0c00036c
0c012078: e1a01000  mov r1, r0
0c01207c: e59f2054  ldr r2, [pc, #0x54] =0x0c0003ac
0c012080: e0420000  sub r0, r2, r0
0c012084: e3a02000  mov r2, #0x0
0c012088: e3500000  cmp r0, #0x0
0c01208c: e58d2000  str r2, [sp, #0x0]
0c012090: da000005  ble 0x0c0120ac
0c012094: e4913004  ldr r3, [r1], #0x4
0c012098: e59d2000  ldr r2, [sp, #0x0]
0c01209c: e4823004  str r3, [r2], #0x4
0c0120a0: e58d2000  str r2, [sp, #0x0]
0c0120a4: e1520000  cmp r2, r0
0c0120a8: bafffff9  blt 0x0c012094
0c0120ac: e59f0028  ldr r0, [pc, #0x28] =0x04070688
0c0120b0: e3c01007  bic r1, r0, #0x7
0c0120b4: e51f0100  ldr r0, [pc, #-0x100] =0x040198a8
0c0120b8: e5801068  str r1, [r0, #0x68]
0c0120bc: e59f101c  ldr r1, [pc, #0x1c] =0x040198c4
0c0120c0: e3c11007  bic r1, r1, #0x7
0c0120c4: e28dd004  add sp, sp, #0x4
0c0120c8: e5a0106c  str r1, [r0, #0x6c]!
0c0120cc: e1a0f00e  mov pc, lr
0c0120d0: deadbeef  .word 0xdeadbeef
0c0120d4: 0c00036c  .word 0x0c00036c
0c0120d8: 0c0003ac  .word 0x0c0003ac
0c0120dc: 04070688  .word 0x04070688
0c0120e0: 040198c4  .word 0x040198c4
fn_0c0120e4:
0c0120e4: e92d4010  stmdb sp!, {r4,lr}
0c0120e8: e3a00003  mov r0, #0x3
0c0120ec: e509010c  str r0, [r9, #-0x10c]
0c0120f0: e3a00001  mov r0, #0x1
0c0120f4: e5090164  str r0, [r9, #-0x164]
0c0120f8: e50901b0  str r0, [r9, #-0x1b0]
0c0120fc: e3a00000  mov r0, #0x0
0c012100: e1a01000  mov r1, r0
0c012104: e59fe044  ldr lr, [pc, #0x44] =0x0c0003ac
0c012108: e59fc044  ldr r12, [pc, #0x44] =0x0406fe84
0c01210c: e3a03501  mov r3, #0x400000
0c012110: e1a02001  mov r2, r1
0c012114: e2811001  add r1, r1, #0x1
0c012118: e79e2102  ldr r2, [lr, r2, lsl #2]
0c01211c: e3720001  cmn r2, #0x1
0c012120: 0a00000c  beq 0x0c012158
0c012124: e3120001  tst r2, #0x1
0c012128: 1a000003  bne 0x0c01213c
0c01212c: e1a04001  mov r4, r1
0c012130: e2811001  add r1, r1, #0x1
0c012134: e79e4104  ldr r4, [lr, r4, lsl #2]
0c012138: e1822204  orr r2, r2, r4, lsl #4
0c01213c: e78c2100  str r2, [r12, r0, lsl #2]
0c012140: e1a04000  mov r4, r0
0c012144: e2800001  add r0, r0, #0x1
0c012148: e7832104  str r2, [r3, r4, lsl #2]
0c01214c: eaffffef  b 0x0c012110
0c012150: 0c0003ac  .word 0x0c0003ac
0c012154: 0406fe84  .word 0x0406fe84
0c012158: e59f1048  ldr r1, [pc, #0x48] =0x0c011f10
0c01215c: e1a02201  mov r2, r1, lsl #4
0c012160: e3500c02  cmp r0, #0x200
0c012164: aa000003  bge 0x0c012178
0c012168: e7832100  str r2, [r3, r0, lsl #2]
0c01216c: e2800001  add r0, r0, #0x1
0c012170: e3500c02  cmp r0, #0x200
0c012174: bafffffb  blt 0x0c012168
0c012178: e59f002c  ldr r0, [pc, #0x2c] =0x0c011f0c
0c01217c: e5090194  str r0, [r9, #-0x194]
0c012180: e50911ac  str r1, [r9, #-0x1ac]
0c012184: e3a00000  mov r0, #0x0
0c012188: e5c80b4c  strb r0, [r8, #0xb4c]
0c01218c: e50901b0  str r0, [r9, #-0x1b0]
0c012190: e3a01a01  mov r1, #0x1000
0c012194: e51f01e0  ldr r0, [pc, #-0x1e0] =0x040198a8
0c012198: e5801070  str r1, [r0, #0x70]
0c01219c: e3a01401  mov r1, #0x1000000
0c0121a0: e5a01074  str r1, [r0, #0x74]!
0c0121a4: e8bd8010  ldmia sp!, {r4,pc}
0c0121a8: 0c011f10  .word 0x0c011f10
0c0121ac: 0c011f0c  .word 0x0c011f0c
0c0121b0: e1a0c00d  mov r12, sp
0c0121b4: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c0121b8: e24cb004  sub r11, r12, #0x4
0c0121bc: e3a01000  mov r1, #0x0
0c0121c0: e3a00041  mov r0, #0x41
0c0121c4: e2800b01  add r0, r0, #0x400
0c0121c8: ebfff351  bl 0x0c00ef14 <fn_0c00ef14>
0c0121cc: e3a01000  mov r1, #0x0
0c0121d0: e3a00053  mov r0, #0x53
0c0121d4: e2800b01  add r0, r0, #0x400
0c0121d8: ebfff34d  bl 0x0c00ef14 <fn_0c00ef14>
0c0121dc: e3a01000  mov r1, #0x0
0c0121e0: e3a00063  mov r0, #0x63
0c0121e4: e2800b01  add r0, r0, #0x400
0c0121e8: e91b6800  ldmdb r11, {r11,sp,lr}
0c0121ec: eafff348  b 0x0c00ef14 <fn_0c00ef14>
fn_0c0121f0:
0c0121f0: e3a00001  mov r0, #0x1
0c0121f4: e5c80b4d  strb r0, [r8, #0xb4d]
0c0121f8: e3a00311  mov r0, #0x44000000
0c0121fc: e2800020  add r0, r0, #0x20
0c012200: e5890400  str r0, [r9, #0x400]
0c012204: e3a00000  mov r0, #0x0
0c012208: e58908c0  str r0, [r9, #0x8c0]
0c01220c: e3a01642  mov r1, #0x4200000
0c012210: e2811181  add r1, r1, #0x40000020
0c012214: e5891400  str r1, [r9, #0x400]
0c012218: e58908c0  str r0, [r9, #0x8c0]
0c01221c: e3a01511  mov r1, #0x4400000
0c012220: e2811181  add r1, r1, #0x40000020
0c012224: e5891400  str r1, [r9, #0x400]
0c012228: e59f0048  ldr r0, [pc, #0x48] =0x0406f70c
0c01222c: e590205c  ldr r2, [r0, #0x5c]
0c012230: e58928c0  str r2, [r9, #0x8c0]
0c012234: e5891400  str r1, [r9, #0x400]
0c012238: e590205c  ldr r2, [r0, #0x5c]
0c01223c: e58928c0  str r2, [r9, #0x8c0]
0c012240: e5891400  str r1, [r9, #0x400]
0c012244: e590205c  ldr r2, [r0, #0x5c]
0c012248: e58928c0  str r2, [r9, #0x8c0]
0c01224c: e5891400  str r1, [r9, #0x400]
0c012250: e590205c  ldr r2, [r0, #0x5c]
0c012254: e58928c0  str r2, [r9, #0x8c0]
0c012258: e5891400  str r1, [r9, #0x400]
0c01225c: e590005c  ldr r0, [r0, #0x5c]
0c012260: e58908c0  str r0, [r9, #0x8c0]
0c012264: e59f0010  ldr r0, [pc, #0x10] =0x58400800
0c012268: e5890400  str r0, [r9, #0x400]
0c01226c: e59f000c  ldr r0, [pc, #0xc] =0x2bad2dad
0c012270: e5890880  str r0, [r9, #0x880]
0c012274: e1a0f00e  mov pc, lr
0c012278: 0406f70c  .word 0x0406f70c
0c01227c: 58400800  .word 0x58400800
0c012280: 2bad2dad  .word 0x2bad2dad
fn_0c012284:
0c012284: e1a0c00d  mov r12, sp
0c012288: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c01228c: e24cb004  sub r11, r12, #0x4
0c012290: e1a04000  mov r4, r0
0c012294: e3a00001  mov r0, #0x1
0c012298: e5090164  str r0, [r9, #-0x164]
0c01229c: e5191150  ldr r1, [r9, #-0x150]
0c0122a0: e1a05001  mov r5, r1
0c0122a4: e3a00e43  mov r0, #0x430
0c0122a8: ebfff31f  bl 0x0c00ef2c <fn_0c00ef2c>
0c0122ac: e1a01005  mov r1, r5
0c0122b0: e3a00034  mov r0, #0x34
0c0122b4: e2800b01  add r0, r0, #0x400
0c0122b8: ebfff315  bl 0x0c00ef14 <fn_0c00ef14>
0c0122bc: e3a00000  mov r0, #0x0
0c0122c0: e3e016ff  mvn r1, #0xff00000
0c0122c4: e2811201  add r1, r1, #0x10000000
0c0122c8: e5197164  ldr r7, [r9, #-0x164]
0c0122cc: e2800001  add r0, r0, #0x1
0c0122d0: e3370000  teq r7, #0x0
0c0122d4: 1a000001  bne 0x0c0122e0
0c0122d8: e1500001  cmp r0, r1
0c0122dc: 3afffff9  bcc 0x0c0122c8
0c0122e0: e519a160  ldr r10, [r9, #-0x160]
0c0122e4: e3370000  teq r7, #0x0
0c0122e8: 0a000007  beq 0x0c01230c
0c0122ec: e13a0005  teq r10, r5
0c0122f0: 1a000005  bne 0x0c01230c
0c0122f4: e3a06001  mov r6, #0x1
0c0122f8: e3340000  teq r4, #0x0
0c0122fc: 159f0004  ldrne r0, [pc, #0x4] =0x1234abcd
0c012300: 1a000005  bne 0x0c01231c
0c012304: ea000005  b 0x0c012320
0c012308: 1234abcd  .word 0x1234abcd
0c01230c: e3a06000  mov r6, #0x0
0c012310: e3340000  teq r4, #0x0
0c012314: 0a000001  beq 0x0c012320
0c012318: e59f0020  ldr r0, [pc, #0x20] =0xdeadbabe
0c01231c: ebfffef2  bl 0x0c011eec <send_host_intr>
0c012320: e3370000  teq r7, #0x0
0c012324: 0a000001  beq 0x0c012330
0c012328: e13a0005  teq r10, r5
0c01232c: 03a06001  moveq r6, #0x1
0c012330: e3a00001  mov r0, #0x1
0c012334: e5090164  str r0, [r9, #-0x164]
0c012338: e1a00006  mov r0, r6
0c01233c: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c012340: deadbabe  .word 0xdeadbabe
fn_0c012344:
0c012344: e92d4000  stmdb sp!, {lr}
0c012348: e3a00000  mov r0, #0x0
0c01234c: e51f30dc  ldr r3, [pc, #-0xdc] =0x0406f70c
0c012350: e1a02000  mov r2, r0
0c012354: e0831100  add r1, r3, r0, lsl #2
0c012358: e2800001  add r0, r0, #0x1
0c01235c: e3500008  cmp r0, #0x8
0c012360: e5a12064  str r2, [r1, #0x64]!
0c012364: bafffff9  blt 0x0c012350
0c012368: e3a00000  mov r0, #0x0
0c01236c: e3a02000  mov r2, #0x0
0c012370: e5830060  str r0, [r3, #0x60]
0c012374: e3a0c001  mov r12, #0x1
0c012378: e5931004  ldr r1, [r3, #0x4]
0c01237c: e3510000  cmp r1, #0x0
0c012380: da000003  ble 0x0c012394
0c012384: e182201c  orr r2, r2, r12, lsl r0
0c012388: e2800001  add r0, r0, #0x1
0c01238c: e1500001  cmp r0, r1
0c012390: bafffffb  blt 0x0c012384
0c012394: e51f03e0  ldr r0, [pc, #-0x3e0] =0x040198a8
0c012398: e5900014  ldr r0, [r0, #0x14]
0c01239c: e5900004  ldr r0, [r0, #0x4]
0c0123a0: e0120000  ands r0, r2, r0
0c0123a4: 0a000009  beq 0x0c0123d0
0c0123a8: e1a02000  mov r2, r0
0c0123ac: e3a01000  mov r1, #0x0
0c0123b0: e3a00000  mov r0, #0x0
0c0123b4: e112001c  tst r2, r12, lsl r0
0c0123b8: 1083e101  addne lr, r3, r1, lsl #2
0c0123bc: 12811001  addne r1, r1, #0x1
0c0123c0: 15ae0064  strne r0, [lr, #0x64]!
0c0123c4: e2800001  add r0, r0, #0x1
0c0123c8: e3500008  cmp r0, #0x8
0c0123cc: bafffff8  blt 0x0c0123b4
0c0123d0: e3a00000  mov r0, #0x0
0c0123d4: e5a31054  str r1, [r3, #0x54]!
0c0123d8: e5a32008  str r2, [r3, #0x8]!
0c0123dc: e3510000  cmp r1, #0x0
0c0123e0: d8bd8000  ldmleia sp!, {pc}
0c0123e4: e2800001  add r0, r0, #0x1
0c0123e8: e1500001  cmp r0, r1
0c0123ec: bafffffc  blt 0x0c0123e4
0c0123f0: e8bd8000  ldmia sp!, {pc}
fn_0c0123f4:
0c0123f4: e59f1004  ldr r1, [pc, #0x4] =0x04019928
0c0123f8: e7910100  ldr r0, [r1, r0, lsl #2]
0c0123fc: e1a0f00e  mov pc, lr
0c012400: 04019928  .word 0x04019928
fn_0c012404:
0c012404: e1a0c00d  mov r12, sp
0c012408: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c01240c: e24cb004  sub r11, r12, #0x4
0c012410: e51f51a0  ldr r5, [pc, #-0x1a0] =0x0406f70c
0c012414: e3a00000  mov r0, #0x0
0c012418: e595105c  ldr r1, [r5, #0x5c]
0c01241c: e31100f0  tst r1, #0xf0
0c012420: e5956054  ldr r6, [r5, #0x54]
0c012424: 13a00002  movne r0, #0x2
0c012428: e50901fc  str r0, [r9, #-0x1fc]
0c01242c: e51901fc  ldr r0, [r9, #-0x1fc]
0c012430: e3a00642  mov r0, #0x4200000
0c012434: e2800181  add r0, r0, #0x40000020
0c012438: e5890400  str r0, [r9, #0x400]
0c01243c: e3a0a000  mov r10, #0x0
0c012440: e589a8c0  str r10, [r9, #0x8c0]
0c012444: e3a07511  mov r7, #0x4400000
0c012448: e2877181  add r7, r7, #0x40000020
0c01244c: e5897400  str r7, [r9, #0x400]
0c012450: e595005c  ldr r0, [r5, #0x5c]
0c012454: e58908c0  str r0, [r9, #0x8c0]
0c012458: e5897400  str r7, [r9, #0x400]
0c01245c: e595005c  ldr r0, [r5, #0x5c]
0c012460: e58908c0  str r0, [r9, #0x8c0]
0c012464: e5897400  str r7, [r9, #0x400]
0c012468: e595005c  ldr r0, [r5, #0x5c]
0c01246c: e58908c0  str r0, [r9, #0x8c0]
0c012470: e5897400  str r7, [r9, #0x400]
0c012474: e595005c  ldr r0, [r5, #0x5c]
0c012478: e58908c0  str r0, [r9, #0x8c0]
0c01247c: e5897400  str r7, [r9, #0x400]
0c012480: e595005c  ldr r0, [r5, #0x5c]
0c012484: e58908c0  str r0, [r9, #0x8c0]
0c012488: e51f0214  ldr r0, [pc, #-0x214] =0x58400800
0c01248c: e5890400  str r0, [r9, #0x400]
0c012490: e51f0218  ldr r0, [pc, #-0x218] =0x2bad2dad
0c012494: e5890880  str r0, [r9, #0x880]
0c012498: e3a00311  mov r0, #0x44000000
0c01249c: e2800020  add r0, r0, #0x20
0c0124a0: e5890400  str r0, [r9, #0x400]
0c0124a4: e5d80b4d  ldrb r0, [r8, #0xb4d]
0c0124a8: e58908c0  str r0, [r9, #0x8c0]
0c0124ac: e3a0466a  mov r4, #0x6a00000
0c0124b0: e2844181  add r4, r4, #0x40000020
0c0124b4: e5894400  str r4, [r9, #0x400]
0c0124b8: e3a00038  mov r0, #0x38
0c0124bc: e2800701  add r0, r0, #0x40000
0c0124c0: e58908c0  str r0, [r9, #0x8c0]
0c0124c4: e595005c  ldr r0, [r5, #0x5c]
0c0124c8: e31000f0  tst r0, #0xf0
0c0124cc: 05950060  ldreq r0, [r5, #0x60]
0c0124d0: 03300000  teqeq r0, #0x0
0c0124d4: 0a000006  beq 0x0c0124f4
0c0124d8: e3a00001  mov r0, #0x1
0c0124dc: e5850060  str r0, [r5, #0x60]
0c0124e0: e3a00666  mov r0, #0x6600000
0c0124e4: e2800181  add r0, r0, #0x40000020
0c0124e8: e5890400  str r0, [r9, #0x400]
0c0124ec: e3a00ece  mov r0, #0xce0
0c0124f0: ea000003  b 0x0c012504
0c0124f4: e3a00666  mov r0, #0x6600000
0c0124f8: e2800181  add r0, r0, #0x40000020
0c0124fc: e5890400  str r0, [r9, #0x400]
0c012500: e3a00e8e  mov r0, #0x8e0
0c012504: e58908c0  str r0, [r9, #0x8c0]
0c012508: eb000468  bl 0x0c0136b0 <fn_0c0136b0>
0c01250c: e200001e  and r0, r0, #0x1e
0c012510: e1a000a0  mov r0, r0, lsr #1
0c012514: ebffffb6  bl 0x0c0123f4 <fn_0c0123f4>
0c012518: e1a02004  mov r2, r4
0c01251c: e5892400  str r2, [r9, #0x400]
0c012520: e3a01018  mov r1, #0x18
0c012524: e2811701  add r1, r1, #0x40000
0c012528: e58918c0  str r1, [r9, #0x8c0]
0c01252c: e3500008  cmp r0, #0x8
0c012530: e3a00666  mov r0, #0x6600000
0c012534: e2800181  add r0, r0, #0x40000020
0c012538: e5890400  str r0, [r9, #0x400]
0c01253c: a3a00e93  movge r0, #0x930
0c012540: a2800901  addge r0, r0, #0x4000
0c012544: b3a00eb6  movlt r0, #0xb60
0c012548: b2800a09  addlt r0, r0, #0x9000
0c01254c: e58908c0  str r0, [r9, #0x8c0]
0c012550: e3a0e000  mov lr, #0x0
0c012554: e59f0210  ldr r0, [pc, #0x210] =0x0c011c60
0c012558: e5903000  ldr r3, [r0, #0x0]
0c01255c: e5892400  str r2, [r9, #0x400]
0c012560: e3a00602  mov r0, #0x200000
0c012564: e58908c0  str r0, [r9, #0x8c0]
0c012568: e3a04000  mov r4, #0x0
0c01256c: e3530000  cmp r3, #0x0
0c012570: 9a00001d  bls 0x0c0125ec
0c012574: e0840084  add r0, r4, r4, lsl #1
0c012578: e59f11f0  ldr r1, [pc, #0x1f0] =0x04018f7c
0c01257c: e0811100  add r1, r1, r0, lsl #2
0c012580: e5d1c000  ldrb r12, [r1, #0x0]
0c012584: e5d10001  ldrb r0, [r1, #0x1]
0c012588: e180040c  orr r0, r0, r12, lsl #8
0c01258c: e28ec001  add r12, lr, #0x1
0c012590: e13c0000  teq r12, r0
0c012594: 0a000003  beq 0x0c0125a8
0c012598: e5892400  str r2, [r9, #0x400]
0c01259c: e3a0c602  mov r12, #0x200000
0c0125a0: e08cc100  add r12, r12, r0, lsl #2
0c0125a4: e589c8c0  str r12, [r9, #0x8c0]
0c0125a8: e3a0e666  mov lr, #0x6600000
0c0125ac: e28ee181  add lr, lr, #0x40000020
0c0125b0: e589e400  str lr, [r9, #0x400]
0c0125b4: e591c008  ldr r12, [r1, #0x8]
0c0125b8: e589c8c0  str r12, [r9, #0x8c0]
0c0125bc: e589e400  str lr, [r9, #0x400]
0c0125c0: e591c004  ldr r12, [r1, #0x4]
0c0125c4: e589c8c0  str r12, [r9, #0x8c0]
0c0125c8: e589e400  str lr, [r9, #0x400]
0c0125cc: e5d1c002  ldrb r12, [r1, #0x2]
0c0125d0: e5d11003  ldrb r1, [r1, #0x3]
0c0125d4: e181140c  orr r1, r1, r12, lsl #8
0c0125d8: e58918c0  str r1, [r9, #0x8c0]
0c0125dc: e1a0e000  mov lr, r0
0c0125e0: e2844001  add r4, r4, #0x1
0c0125e4: e1540003  cmp r4, r3
0c0125e8: 3affffe1  bcc 0x0c012574
0c0125ec: e5892400  str r2, [r9, #0x400]
0c0125f0: e59f0178  ldr r0, [pc, #0x178] =0x04018f7c
0c0125f4: e5901000  ldr r1, [r0, #0x0]
0c0125f8: e1a01821  mov r1, r1, lsr #16
0c0125fc: e2811602  add r1, r1, #0x200000
0c012600: e58918c0  str r1, [r9, #0x8c0]
0c012604: e3a01666  mov r1, #0x6600000
0c012608: e2811181  add r1, r1, #0x40000020
0c01260c: e5891400  str r1, [r9, #0x400]
0c012610: e5903008  ldr r3, [r0, #0x8]
0c012614: e58938c0  str r3, [r9, #0x8c0]
0c012618: e5891400  str r1, [r9, #0x400]
0c01261c: e5903004  ldr r3, [r0, #0x4]
0c012620: e58938c0  str r3, [r9, #0x8c0]
0c012624: e5891400  str r1, [r9, #0x400]
0c012628: e5d0c002  ldrb r12, [r0, #0x2]
0c01262c: e5d00003  ldrb r0, [r0, #0x3]
0c012630: e180040c  orr r0, r0, r12, lsl #8
0c012634: e58908c0  str r0, [r9, #0x8c0]
0c012638: e5892400  str r2, [r9, #0x400]
0c01263c: e3a00010  mov r0, #0x10
0c012640: e2800701  add r0, r0, #0x40000
0c012644: e58908c0  str r0, [r9, #0x8c0]
0c012648: e5891400  str r1, [r9, #0x400]
0c01264c: e3a00c01  mov r0, #0x100
0c012650: e58908c0  str r0, [r9, #0x8c0]
0c012654: e5892400  str r2, [r9, #0x400]
0c012658: e3a00701  mov r0, #0x40000
0c01265c: e58908c0  str r0, [r9, #0x8c0]
0c012660: e5891400  str r1, [r9, #0x400]
0c012664: e3a00001  mov r0, #0x1
0c012668: e58908c0  str r0, [r9, #0x8c0]
0c01266c: e3a04000  mov r4, #0x0
0c012670: e5898438  str r8, [r9, #0x438]
0c012674: e2841001  add r1, r4, #0x1
0c012678: e58918c0  str r1, [r9, #0x8c0]
0c01267c: e1a04001  mov r4, r1
0c012680: e3510009  cmp r1, #0x9
0c012684: 3afffff9  bcc 0x0c012670
0c012688: e5898438  str r8, [r9, #0x438]
0c01268c: e3a01055  mov r1, #0x55
0c012690: e2811a03  add r1, r1, #0x3000
0c012694: e58918c0  str r1, [r9, #0x8c0]
0c012698: e3a01311  mov r1, #0x44000000
0c01269c: e2811020  add r1, r1, #0x20
0c0126a0: e5891400  str r1, [r9, #0x400]
0c0126a4: e589a8c0  str r10, [r9, #0x8c0]
0c0126a8: e5897400  str r7, [r9, #0x400]
0c0126ac: e5951064  ldr r1, [r5, #0x64]
0c0126b0: e1a01110  mov r1, r0, lsl r1
0c0126b4: e58918c0  str r1, [r9, #0x8c0]
0c0126b8: e5897400  str r7, [r9, #0x400]
0c0126bc: e5951064  ldr r1, [r5, #0x64]
0c0126c0: e1a01110  mov r1, r0, lsl r1
0c0126c4: e58918c0  str r1, [r9, #0x8c0]
0c0126c8: e5897400  str r7, [r9, #0x400]
0c0126cc: e5951064  ldr r1, [r5, #0x64]
0c0126d0: e1a01110  mov r1, r0, lsl r1
0c0126d4: e58918c0  str r1, [r9, #0x8c0]
0c0126d8: e5897400  str r7, [r9, #0x400]
0c0126dc: e5951064  ldr r1, [r5, #0x64]
0c0126e0: e1a01110  mov r1, r0, lsl r1
0c0126e4: e58918c0  str r1, [r9, #0x8c0]
0c0126e8: e5897400  str r7, [r9, #0x400]
0c0126ec: e5951064  ldr r1, [r5, #0x64]
0c0126f0: e1a00110  mov r0, r0, lsl r1
0c0126f4: e58908c0  str r0, [r9, #0x8c0]
0c0126f8: e51f0484  ldr r0, [pc, #-0x484] =0x58400800
0c0126fc: e5890400  str r0, [r9, #0x400]
0c012700: e51f0488  ldr r0, [pc, #-0x488] =0x2bad2dad
0c012704: e5890880  str r0, [r9, #0x880]
0c012708: e5897400  str r7, [r9, #0x400]
0c01270c: e595005c  ldr r0, [r5, #0x5c]
0c012710: e58908c0  str r0, [r9, #0x8c0]
0c012714: e5897400  str r7, [r9, #0x400]
0c012718: e595005c  ldr r0, [r5, #0x5c]
0c01271c: e58908c0  str r0, [r9, #0x8c0]
0c012720: e5897400  str r7, [r9, #0x400]
0c012724: e595005c  ldr r0, [r5, #0x5c]
0c012728: e58908c0  str r0, [r9, #0x8c0]
0c01272c: e5897400  str r7, [r9, #0x400]
0c012730: e595005c  ldr r0, [r5, #0x5c]
0c012734: e58908c0  str r0, [r9, #0x8c0]
0c012738: e5897400  str r7, [r9, #0x400]
0c01273c: e5b5005c  ldr r0, [r5, #0x5c]!
0c012740: e58908c0  str r0, [r9, #0x8c0]
0c012744: e3a04000  mov r4, #0x0
0c012748: e3560000  cmp r6, #0x0
0c01274c: 9a000004  bls 0x0c012764
0c012750: e3a00000  mov r0, #0x0
0c012754: ebfffeca  bl 0x0c012284 <fn_0c012284>
0c012758: e2844001  add r4, r4, #0x1
0c01275c: e1540006  cmp r4, r6
0c012760: 3afffffa  bcc 0x0c012750
0c012764: e91b6cf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,lr}
0c012768: eafffe90  b 0x0c0121b0
0c01276c: 0c011c60  .word 0x0c011c60
0c012770: 04018f7c  .word 0x04018f7c
0c012774: e1a0f00e  mov pc, lr
0c012778: e1a0f00e  mov pc, lr
0c01277c: e1a0f00e  mov pc, lr
fn_0c012780:
0c012780: e1a0c00d  mov r12, sp
0c012784: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c012788: e24cb004  sub r11, r12, #0x4
0c01278c: e3e02000  mvn r2, #0x0
0c012790: e3a01807  mov r1, #0x70000
0c012794: e3a00000  mov r0, #0x0
0c012798: ebfff1cb  bl 0x0c00eecc <fn_0c00eecc>
0c01279c: e3a02001  mov r2, #0x1
0c0127a0: e3a01bc2  mov r1, #0x30800
0c0127a4: e2811749  add r1, r1, #0x1240000
0c0127a8: e3a00000  mov r0, #0x0
0c0127ac: ebfff1c6  bl 0x0c00eecc <fn_0c00eecc>
0c0127b0: e3e02000  mvn r2, #0x0
0c0127b4: e3a01807  mov r1, #0x70000
0c0127b8: e3a00000  mov r0, #0x0
0c0127bc: ebfff1c2  bl 0x0c00eecc <fn_0c00eecc>
0c0127c0: e3a02008  mov r2, #0x8
0c0127c4: e2822902  add r2, r2, #0x8000
0c0127c8: e59f1078  ldr r1, [pc, #0x78] =0x0128080f
0c0127cc: e3a00000  mov r0, #0x0
0c0127d0: ebfff1bd  bl 0x0c00eecc <fn_0c00eecc>
0c0127d4: e3e02000  mvn r2, #0x0
0c0127d8: e3a01807  mov r1, #0x70000
0c0127dc: e3a00000  mov r0, #0x0
0c0127e0: ebfff1b9  bl 0x0c00eecc <fn_0c00eecc>
0c0127e4: e59f2060  ldr r2, [pc, #0x60] =0x01380156
0c0127e8: e59f1060  ldr r1, [pc, #0x60] =0x012b0806
0c0127ec: e3a00000  mov r0, #0x0
0c0127f0: ebfff1b5  bl 0x0c00eecc <fn_0c00eecc>
0c0127f4: e3e02000  mvn r2, #0x0
0c0127f8: e3a01807  mov r1, #0x70000
0c0127fc: e3a00000  mov r0, #0x0
0c012800: ebfff1b1  bl 0x0c00eecc <fn_0c00eecc>
0c012804: e59f2048  ldr r2, [pc, #0x48] =0x007f6280
0c012808: e59f1048  ldr r1, [pc, #0x48] =0x01253be0
0c01280c: e3a00000  mov r0, #0x0
0c012810: ebfff1ad  bl 0x0c00eecc <fn_0c00eecc>
0c012814: e3e02000  mvn r2, #0x0
0c012818: e3a01807  mov r1, #0x70000
0c01281c: e3a00000  mov r0, #0x0
0c012820: ebfff1a9  bl 0x0c00eecc <fn_0c00eecc>
0c012824: e59f2030  ldr r2, [pc, #0x30] =0x008fc569
0c012828: e59f1030  ldr r1, [pc, #0x30] =0x01263be1
0c01282c: e3a00000  mov r0, #0x0
0c012830: ebfff1a5  bl 0x0c00eecc <fn_0c00eecc>
0c012834: e3a01001  mov r1, #0x1
0c012838: e3a00901  mov r0, #0x4000
0c01283c: e240000a  sub r0, r0, #0xa
0c012840: e91b6800  ldmdb r11, {r11,sp,lr}
0c012844: eafff1b2  b 0x0c00ef14 <fn_0c00ef14>
0c012848: 0128080f  .word 0x0128080f
0c01284c: 01380156  .word 0x01380156
0c012850: 012b0806  .word 0x012b0806
0c012854: 007f6280  .word 0x007f6280
0c012858: 01253be0  .word 0x01253be0
0c01285c: 008fc569  .word 0x008fc569
0c012860: 01263be1  .word 0x01263be1
fn_0c012864:
0c012864: e1a0c00d  mov r12, sp
0c012868: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c01286c: e24cb004  sub r11, r12, #0x4
0c012870: e3e02000  mvn r2, #0x0
0c012874: e3a01807  mov r1, #0x70000
0c012878: e3a00000  mov r0, #0x0
0c01287c: ebfff192  bl 0x0c00eecc <fn_0c00eecc>
0c012880: e3a02000  mov r2, #0x0
0c012884: e59f1048  ldr r1, [pc, #0x48] =0x01661410
0c012888: e3a00000  mov r0, #0x0
0c01288c: ebfff18e  bl 0x0c00eecc <fn_0c00eecc>
0c012890: e3e02000  mvn r2, #0x0
0c012894: e3a01807  mov r1, #0x70000
0c012898: e3a00000  mov r0, #0x0
0c01289c: ebfff18a  bl 0x0c00eecc <fn_0c00eecc>
0c0128a0: e3a02901  mov r2, #0x4000
0c0128a4: e59f102c  ldr r1, [pc, #0x2c] =0x0160140e
0c0128a8: e3a00000  mov r0, #0x0
0c0128ac: ebfff186  bl 0x0c00eecc <fn_0c00eecc>
0c0128b0: e59f1024  ldr r1, [pc, #0x24] =0x13110100
0c0128b4: e3a00009  mov r0, #0x9
0c0128b8: e2800b05  add r0, r0, #0x1400
0c0128bc: ebfff194  bl 0x0c00ef14 <fn_0c00ef14>
0c0128c0: e59f2018  ldr r2, [pc, #0x18] =0x7f773733
0c0128c4: e59f1018  ldr r1, [pc, #0x18] =0x140a00ff
0c0128c8: e3a00000  mov r0, #0x0
0c0128cc: e91b6800  ldmdb r11, {r11,sp,lr}
0c0128d0: eafff17d  b 0x0c00eecc <fn_0c00eecc>
0c0128d4: 01661410  .word 0x01661410
0c0128d8: 0160140e  .word 0x0160140e
0c0128dc: 13110100  .word 0x13110100
0c0128e0: 7f773733  .word 0x7f773733
0c0128e4: 140a00ff  .word 0x140a00ff
fn_0c0128e8:
0c0128e8: e1a0c00d  mov r12, sp
0c0128ec: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c0128f0: e24cb004  sub r11, r12, #0x4
0c0128f4: e3e02000  mvn r2, #0x0
0c0128f8: e3a01807  mov r1, #0x70000
0c0128fc: e3a00000  mov r0, #0x0
0c012900: ebfff171  bl 0x0c00eecc <fn_0c00eecc>
0c012904: e3a0200e  mov r2, #0xe
0c012908: e59f108c  ldr r1, [pc, #0x8c] =0x01243fd3
0c01290c: e3a00000  mov r0, #0x0
0c012910: ebfff16d  bl 0x0c00eecc <fn_0c00eecc>
0c012914: e3e02000  mvn r2, #0x0
0c012918: e3a01807  mov r1, #0x70000
0c01291c: e3a00000  mov r0, #0x0
0c012920: ebfff169  bl 0x0c00eecc <fn_0c00eecc>
0c012924: e3a02010  mov r2, #0x10
0c012928: e59f1070  ldr r1, [pc, #0x70] =0x01203fcf
0c01292c: e3a00000  mov r0, #0x0
0c012930: ebfff165  bl 0x0c00eecc <fn_0c00eecc>
0c012934: e3e02000  mvn r2, #0x0
0c012938: e3a01807  mov r1, #0x70000
0c01293c: e3a00000  mov r0, #0x0
0c012940: ebfff161  bl 0x0c00eecc <fn_0c00eecc>
0c012944: e3a02010  mov r2, #0x10
0c012948: e59f1054  ldr r1, [pc, #0x54] =0x01213fd0
0c01294c: e3a00000  mov r0, #0x0
0c012950: ebfff15d  bl 0x0c00eecc <fn_0c00eecc>
0c012954: e3e02000  mvn r2, #0x0
0c012958: e3a01807  mov r1, #0x70000
0c01295c: e3a00000  mov r0, #0x0
0c012960: ebfff159  bl 0x0c00eecc <fn_0c00eecc>
0c012964: e3a0200f  mov r2, #0xf
0c012968: e59f1038  ldr r1, [pc, #0x38] =0x01223fd1
0c01296c: e3a00000  mov r0, #0x0
0c012970: ebfff155  bl 0x0c00eecc <fn_0c00eecc>
0c012974: e3e02000  mvn r2, #0x0
0c012978: e3a01807  mov r1, #0x70000
0c01297c: e3a00000  mov r0, #0x0
0c012980: ebfff151  bl 0x0c00eecc <fn_0c00eecc>
0c012984: e3a0200f  mov r2, #0xf
0c012988: e2822a0f  add r2, r2, #0xf000
0c01298c: e59f1018  ldr r1, [pc, #0x18] =0x01233fd2
0c012990: e3a00000  mov r0, #0x0
0c012994: e91b6800  ldmdb r11, {r11,sp,lr}
0c012998: eafff14b  b 0x0c00eecc <fn_0c00eecc>
0c01299c: 01243fd3  .word 0x01243fd3
0c0129a0: 01203fcf  .word 0x01203fcf
0c0129a4: 01213fd0  .word 0x01213fd0
0c0129a8: 01223fd1  .word 0x01223fd1
0c0129ac: 01233fd2  .word 0x01233fd2
fn_0c0129b0:
0c0129b0: e1a0f00e  mov pc, lr
fn_0c0129b4:
0c0129b4: e1a0c00d  mov r12, sp
0c0129b8: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c0129bc: e24cb004  sub r11, r12, #0x4
0c0129c0: e3e02000  mvn r2, #0x0
0c0129c4: e3a01807  mov r1, #0x70000
0c0129c8: e3a00000  mov r0, #0x0
0c0129cc: ebfff13e  bl 0x0c00eecc <fn_0c00eecc>
0c0129d0: e3a020c6  mov r2, #0xc6
0c0129d4: e2822c03  add r2, r2, #0x300
0c0129d8: e3a01b07  mov r1, #0x1c00
0c0129dc: e281174d  add r1, r1, #0x1340000
0c0129e0: e3a00000  mov r0, #0x0
0c0129e4: ebfff138  bl 0x0c00eecc <fn_0c00eecc>
0c0129e8: e3e02000  mvn r2, #0x0
0c0129ec: e3a01807  mov r1, #0x70000
0c0129f0: e3a00000  mov r0, #0x0
0c0129f4: ebfff134  bl 0x0c00eecc <fn_0c00eecc>
0c0129f8: e3a02001  mov r2, #0x1
0c0129fc: e59f1130  ldr r1, [pc, #0x130] =0x01351c02
0c012a00: e3a00000  mov r0, #0x0
0c012a04: ebfff130  bl 0x0c00eecc <fn_0c00eecc>
0c012a08: e3e02000  mvn r2, #0x0
0c012a0c: e3a01807  mov r1, #0x70000
0c012a10: e3a00000  mov r0, #0x0
0c012a14: ebfff12c  bl 0x0c00eecc <fn_0c00eecc>
0c012a18: e3a02ffe  mov r2, #0x3f8
0c012a1c: e2822b01  add r2, r2, #0x400
0c012a20: e59f1110  ldr r1, [pc, #0x110] =0x01361c03
0c012a24: e3a00000  mov r0, #0x0
0c012a28: ebfff127  bl 0x0c00eecc <fn_0c00eecc>
0c012a2c: e3e02000  mvn r2, #0x0
0c012a30: e3a01807  mov r1, #0x70000
0c012a34: e3a00000  mov r0, #0x0
0c012a38: ebfff123  bl 0x0c00eecc <fn_0c00eecc>
0c012a3c: e3a02000  mov r2, #0x0
0c012a40: e59f10f4  ldr r1, [pc, #0xf4] =0x01371c06
0c012a44: e3a00000  mov r0, #0x0
0c012a48: ebfff11f  bl 0x0c00eecc <fn_0c00eecc>
0c012a4c: e3e02000  mvn r2, #0x0
0c012a50: e3a01807  mov r1, #0x70000
0c012a54: e3a00000  mov r0, #0x0
0c012a58: ebfff11b  bl 0x0c00eecc <fn_0c00eecc>
0c012a5c: e3a02006  mov r2, #0x6
0c012a60: e59f10d8  ldr r1, [pc, #0xd8] =0x01381c07
0c012a64: e3a00000  mov r0, #0x0
0c012a68: ebfff117  bl 0x0c00eecc <fn_0c00eecc>
0c012a6c: e3e02000  mvn r2, #0x0
0c012a70: e3a01807  mov r1, #0x70000
0c012a74: e3a00000  mov r0, #0x0
0c012a78: ebfff113  bl 0x0c00eecc <fn_0c00eecc>
0c012a7c: e3a02b4b  mov r2, #0x12c00
0c012a80: e59f10bc  ldr r1, [pc, #0xbc] =0x01391c08
0c012a84: e3a00000  mov r0, #0x0
0c012a88: ebfff10f  bl 0x0c00eecc <fn_0c00eecc>
0c012a8c: e3e02000  mvn r2, #0x0
0c012a90: e3a01807  mov r1, #0x70000
0c012a94: e3a00000  mov r0, #0x0
0c012a98: ebfff10b  bl 0x0c00eecc <fn_0c00eecc>
0c012a9c: e3a02000  mov r2, #0x0
0c012aa0: e59f10a0  ldr r1, [pc, #0xa0] =0x013a1c09
0c012aa4: e3a00000  mov r0, #0x0
0c012aa8: ebfff107  bl 0x0c00eecc <fn_0c00eecc>
0c012aac: e3e02000  mvn r2, #0x0
0c012ab0: e3a01807  mov r1, #0x70000
0c012ab4: e3a00000  mov r0, #0x0
0c012ab8: ebfff103  bl 0x0c00eecc <fn_0c00eecc>
0c012abc: e59f2088  ldr r2, [pc, #0x88] =0x0c20a281
0c012ac0: e59f1088  ldr r1, [pc, #0x88] =0x013b1c0b
0c012ac4: e3a00000  mov r0, #0x0
0c012ac8: ebfff0ff  bl 0x0c00eecc <fn_0c00eecc>
0c012acc: e3e02000  mvn r2, #0x0
0c012ad0: e3a01807  mov r1, #0x70000
0c012ad4: e3a00000  mov r0, #0x0
0c012ad8: ebfff0fb  bl 0x0c00eecc <fn_0c00eecc>
0c012adc: e3a02012  mov r2, #0x12
0c012ae0: e2822a11  add r2, r2, #0x11000
0c012ae4: e59f1068  ldr r1, [pc, #0x68] =0x013c1c0d
0c012ae8: e3a00000  mov r0, #0x0
0c012aec: ebfff0f6  bl 0x0c00eecc <fn_0c00eecc>
0c012af0: e3e02000  mvn r2, #0x0
0c012af4: e3a01807  mov r1, #0x70000
0c012af8: e3a00000  mov r0, #0x0
0c012afc: ebfff0f2  bl 0x0c00eecc <fn_0c00eecc>
0c012b00: e3e02000  mvn r2, #0x0
0c012b04: e59f104c  ldr r1, [pc, #0x4c] =0x013d1c14
0c012b08: e3a00000  mov r0, #0x0
0c012b0c: ebfff0ee  bl 0x0c00eecc <fn_0c00eecc>
0c012b10: e3e02000  mvn r2, #0x0
0c012b14: e3a01807  mov r1, #0x70000
0c012b18: e3a00000  mov r0, #0x0
0c012b1c: ebfff0ea  bl 0x0c00eecc <fn_0c00eecc>
0c012b20: e3e02000  mvn r2, #0x0
0c012b24: e59f1030  ldr r1, [pc, #0x30] =0x013e1c15
0c012b28: e3a00000  mov r0, #0x0
0c012b2c: e91b6800  ldmdb r11, {r11,sp,lr}
0c012b30: eafff0e5  b 0x0c00eecc <fn_0c00eecc>
0c012b34: 01351c02  .word 0x01351c02
0c012b38: 01361c03  .word 0x01361c03
0c012b3c: 01371c06  .word 0x01371c06
0c012b40: 01381c07  .word 0x01381c07
0c012b44: 01391c08  .word 0x01391c08
0c012b48: 013a1c09  .word 0x013a1c09
0c012b4c: 0c20a281  .word 0x0c20a281
0c012b50: 013b1c0b  .word 0x013b1c0b
0c012b54: 013c1c0d  .word 0x013c1c0d
0c012b58: 013d1c14  .word 0x013d1c14
0c012b5c: 013e1c15  .word 0x013e1c15
fn_0c012b60:
0c012b60: e1a0c00d  mov r12, sp
0c012b64: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c012b68: e24cb004  sub r11, r12, #0x4
0c012b6c: ebfffdf4  bl 0x0c012344 <fn_0c012344>
0c012b70: eb000abb  bl 0x0c015664 <fn_0c015664>
0c012b74: ebfffd2f  bl 0x0c012038 <fn_0c012038>
0c012b78: ebfffd59  bl 0x0c0120e4 <fn_0c0120e4>
0c012b7c: ebfffd9b  bl 0x0c0121f0 <fn_0c0121f0>
0c012b80: ebfffe1f  bl 0x0c012404 <fn_0c012404>
0c012b84: e3a00000  mov r0, #0x0
0c012b88: e91b6800  ldmdb r11, {r11,sp,lr}
0c012b8c: eafffdbc  b 0x0c012284 <fn_0c012284>
fn_0c012b90:
0c012b90: e1a0c00d  mov r12, sp
0c012b94: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c012b98: e24cb004  sub r11, r12, #0x4
0c012b9c: eb000382  bl 0x0c0139ac <fn_0c0139ac>
0c012ba0: e3a00000  mov r0, #0x0
0c012ba4: ebffbe22  bl 0x0c002434 <DoDGRqstAutoInit>
0c012ba8: e3a00000  mov r0, #0x0
0c012bac: e91b6800  ldmdb r11, {r11,sp,lr}
0c012bb0: eafffdb3  b 0x0c012284 <fn_0c012284>
fn_0c012bb4:
0c012bb4: e1a0c00d  mov r12, sp
0c012bb8: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c012bbc: e24cb004  sub r11, r12, #0x4
0c012bc0: eb0006c5  bl 0x0c0146dc <fn_0c0146dc>
0c012bc4: ebfffeed  bl 0x0c012780 <fn_0c012780>
0c012bc8: ebffff25  bl 0x0c012864 <fn_0c012864>
0c012bcc: ebffff45  bl 0x0c0128e8 <fn_0c0128e8>
0c012bd0: ebffff76  bl 0x0c0129b0 <fn_0c0129b0>
0c012bd4: ebffff76  bl 0x0c0129b4 <fn_0c0129b4>
0c012bd8: e3a00000  mov r0, #0x0
0c012bdc: e91b6800  ldmdb r11, {r11,sp,lr}
0c012be0: eafffda7  b 0x0c012284 <fn_0c012284>
fn_0c012be4:
0c012be4: e1a0c00d  mov r12, sp
0c012be8: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c012bec: e24cb004  sub r11, r12, #0x4
0c012bf0: e24dd004  sub sp, sp, #0x4
0c012bf4: e5190200  ldr r0, [r9, #-0x200]
0c012bf8: e2000102  and r0, r0, #0x80000000
0c012bfc: e3a05001  mov r5, #0x1
0c012c00: e3a04000  mov r4, #0x0
0c012c04: e3300102  teq r0, #0x80000000
0c012c08: 11a00004  movne r0, r4
0c012c0c: 01a00005  moveq r0, r5
0c012c10: e51f6c5c  ldr r6, [pc, #-0xc5c] =0x040198a8
0c012c14: e5860000  str r0, [r6, #0x0]
0c012c18: ebfffc11  bl 0x0c011c64 <fn_0c011c64>
0c012c1c: e5864004  str r4, [r6, #0x4]
0c012c20: e5864008  str r4, [r6, #0x8]
0c012c24: e586400c  str r4, [r6, #0xc]
0c012c28: e59f00c4  ldr r0, [pc, #0xc4] =0x04071a90
0c012c2c: e3a01082  mov r1, #0x82
0c012c30: e5860014  str r0, [r6, #0x14]
0c012c34: e5a0100c  str r1, [r0, #0xc]!
0c012c38: e5b60014  ldr r0, [r6, #0x14]!
0c012c3c: e5a05004  str r5, [r0, #0x4]!
0c012c40: eb00032f  bl 0x0c013904 <fn_0c013904>
0c012c44: ebffffc5  bl 0x0c012b60 <fn_0c012b60>
0c012c48: e3a00000  mov r0, #0x0
0c012c4c: ebffcf82  bl 0x0c006a5c <DoDGRqstFetal>
0c012c50: e3a00000  mov r0, #0x0
0c012c54: e58d0000  str r0, [sp, #0x0]
0c012c58: e59d0000  ldr r0, [sp, #0x0]
0c012c5c: e2800001  add r0, r0, #0x1
0c012c60: e58d0000  str r0, [sp, #0x0]
0c012c64: e3e046ff  mvn r4, #0xff00000
0c012c68: e2844201  add r4, r4, #0x10000000
0c012c6c: e1500004  cmp r0, r4
0c012c70: bafffff8  blt 0x0c012c58
0c012c74: ebffffce  bl 0x0c012bb4 <fn_0c012bb4>
0c012c78: e3a00000  mov r0, #0x0
0c012c7c: e58d0000  str r0, [sp, #0x0]
0c012c80: e59d0000  ldr r0, [sp, #0x0]
0c012c84: e2800001  add r0, r0, #0x1
0c012c88: e58d0000  str r0, [sp, #0x0]
0c012c8c: e1500004  cmp r0, r4
0c012c90: bafffffa  blt 0x0c012c80
0c012c94: ebffffbd  bl 0x0c012b90 <fn_0c012b90>
0c012c98: e5d8c040  ldrb r12, [r8, #0x40]
0c012c9c: e5d81041  ldrb r1, [r8, #0x41]
0c012ca0: e1a0cc0c  mov r12, r12, lsl #24
0c012ca4: e181184c  orr r1, r1, r12, asr #16
0c012ca8: e51f0a38  ldr r0, [pc, #-0xa38] =0x0406f70c
0c012cac: e5801084  str r1, [r0, #0x84]
0c012cb0: e5d8c042  ldrb r12, [r8, #0x42]
0c012cb4: e5d81043  ldrb r1, [r8, #0x43]
0c012cb8: e1a0cc0c  mov r12, r12, lsl #24
0c012cbc: e181184c  orr r1, r1, r12, asr #16
0c012cc0: e5801088  str r1, [r0, #0x88]
0c012cc4: e5d8c044  ldrb r12, [r8, #0x44]
0c012cc8: e5d81045  ldrb r1, [r8, #0x45]
0c012ccc: e1a0cc0c  mov r12, r12, lsl #24
0c012cd0: e181184c  orr r1, r1, r12, asr #16
0c012cd4: e5a0108c  str r1, [r0, #0x8c]!
0c012cd8: e3a00000  mov r0, #0x0
0c012cdc: ebfffd68  bl 0x0c012284 <fn_0c012284>
0c012ce0: ebfff062  bl 0x0c00ee70 <fn_0c00ee70>
0c012ce4: ebfffbe6  bl 0x0c011c84 <simfast_end>
0c012ce8: e3a00000  mov r0, #0x0
0c012cec: ebfffd64  bl 0x0c012284 <fn_0c012284>
0c012cf0: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c012cf4: 04071a90  .word 0x04071a90
fn_0c012cf8:
0c012cf8: e1a0f00e  mov pc, lr
0c012cfc: e1a0f00e  mov pc, lr
0c012d00: e1a0f00e  mov pc, lr
0c012d04: e1a0f00e  mov pc, lr
0c012d08: e1a0f00e  mov pc, lr
sleep:
0c012d0c: e3a03001  mov r3, #0x1
0c012d10: e5192150  ldr r2, [r9, #-0x150]
0c012d14: e0821000  add r1, r2, r0
0c012d18: e5190150  ldr r0, [r9, #-0x150]
0c012d1c: e1510002  cmp r1, r2
0c012d20: 9a000004  bls 0x0c012d38
0c012d24: e1500001  cmp r0, r1
0c012d28: 81a0f00e  movhi pc, lr
0c012d2c: e1500002  cmp r0, r2
0c012d30: 31a0f00e  movcc pc, lr
0c012d34: ea000003  b 0x0c012d48
0c012d38: e1500001  cmp r0, r1
0c012d3c: 9a000001  bls 0x0c012d48
0c012d40: e1500002  cmp r0, r2
0c012d44: 31a0f00e  movcc pc, lr
0c012d48: e3330000  teq r3, #0x0
0c012d4c: 1afffff1  bne 0x0c012d18
0c012d50: e1a0f00e  mov pc, lr
fn_0c012d54:
0c012d54: e59f1004  ldr r1, [pc, #0x4] =0x0401d828
0c012d58: e7910100  ldr r0, [r1, r0, lsl #2]
0c012d5c: e1a0f00e  mov pc, lr
0c012d60: 0401d828  .word 0x0401d828
fn_0c012d64:
0c012d64: e59f101c  ldr r1, [pc, #0x1c] =0x0401d740
0c012d68: e0811180  add r1, r1, r0, lsl #3
0c012d6c: e5911000  ldr r1, [r1, #0x0]
0c012d70: e1a01281  mov r1, r1, lsl #5
0c012d74: e5091138  str r1, [r9, #-0x138]
0c012d78: e59f100c  ldr r1, [pc, #0xc] =0x0401d960
0c012d7c: e521013c  str r0, [r1, #-0x13c]!
0c012d80: e3a00000  mov r0, #0x0
0c012d84: e1a0f00e  mov pc, lr
0c012d88: 0401d740  .word 0x0401d740
0c012d8c: 0401d960  .word 0x0401d960
jt_soft_reset:
0c012d90: e1a0c00d  mov r12, sp
0c012d94: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c012d98: e24cb004  sub r11, r12, #0x4
0c012d9c: e51f001c  ldr r0, [pc, #-0x1c] =0x0401d740
0c012da0: e51f101c  ldr r1, [pc, #-0x1c] =0x0401d960
0c012da4: e511113c  ldr r1, [r1, #-0x13c]
0c012da8: e0800181  add r0, r0, r1, lsl #3
0c012dac: e5901000  ldr r1, [r0, #0x0]
0c012db0: e3a00001  mov r0, #0x1
0c012db4: e1800281  orr r0, r0, r1, lsl #5
0c012db8: e5090138  str r0, [r9, #-0x138]
0c012dbc: e3a0001f  mov r0, #0x1f
0c012dc0: e509013c  str r0, [r9, #-0x13c]
0c012dc4: e3a00000  mov r0, #0x0
0c012dc8: e5090140  str r0, [r9, #-0x140]
0c012dcc: e5191134  ldr r1, [r9, #-0x134]
0c012dd0: e3110001  tst r1, #0x1
0c012dd4: 0a000015  beq 0x0c012e30
0c012dd8: e2800001  add r0, r0, #0x1
0c012ddc: e3500ffa  cmp r0, #0x3e8
0c012de0: da00000f  ble 0x0c012e24
0c012de4: e28f0f02  add r0, pc, #0x8
0c012de8: ebfffbbc  bl 0x0c011ce0 <fn_0c011ce0>
0c012dec: e3a00001  mov r0, #0x1
0c012df0: e91ba800  ldmdb r11, {r11,sp,pc}
0c012df4: 4a544147  .asciz "JTAG stall timeout, exceeded 1000 iterations!"
0c012e24: e5191134  ldr r1, [r9, #-0x134]
0c012e28: e3110001  tst r1, #0x1
0c012e2c: 1affffe9  bne 0x0c012dd8
0c012e30: e3a00000  mov r0, #0x0
0c012e34: e91ba800  ldmdb r11, {r11,sp,pc}
fn_0c012e38:
0c012e38: e1a0c00d  mov r12, sp
0c012e3c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c012e40: e24cb004  sub r11, r12, #0x4
0c012e44: e1a04000  mov r4, r0
0c012e48: e1a07001  mov r7, r1
0c012e4c: e1a05002  mov r5, r2
0c012e50: e1a06003  mov r6, r3
0c012e54: e24dd004  sub sp, sp, #0x4
0c012e58: e3a0a001  mov r10, #0x1
0c012e5c: e3500000  cmp r0, #0x0
0c012e60: ca000001  bgt 0x0c012e6c
0c012e64: e3a00000  mov r0, #0x0
0c012e68: ea000098  b 0x0c0130d0
0c012e6c: e3360000  teq r6, #0x0
0c012e70: 13360001  teqne r6, #0x1
0c012e74: 0a000003  beq 0x0c012e88
0c012e78: e28f1f49  add r1, pc, #0x124
0c012e7c: e28f0f4a  add r0, pc, #0x128
0c012e80: e3a02c01  mov r2, #0x100
0c012e84: ebffff9b  bl 0x0c012cf8 <fn_0c012cf8>
0c012e88: e2860012  add r0, r6, #0x12
0c012e8c: e3370000  teq r7, #0x0
0c012e90: e58d0000  str r0, [sp, #0x0]
0c012e94: 0a00004b  beq 0x0c012fc8
0c012e98: e51f0118  ldr r0, [pc, #-0x118] =0x0401d740
0c012e9c: e51f1118  ldr r1, [pc, #-0x118] =0x0401d960
0c012ea0: e511213c  ldr r2, [r1, #-0x13c]
0c012ea4: e0802182  add r2, r0, r2, lsl #3
0c012ea8: e5922000  ldr r2, [r2, #0x0]
0c012eac: e1a02282  mov r2, r2, lsl #5
0c012eb0: e5092138  str r2, [r9, #-0x138]
0c012eb4: e3540020  cmp r4, #0x20
0c012eb8: c59d2000  ldrgt r2, [sp, #0x0]
0c012ebc: c509213c  strgt r2, [r9, #-0x13c]
0c012ec0: d2862032  addle r2, r6, #0x32
0c012ec4: da00001a  ble 0x0c012f34
0c012ec8: e3a03014  mov r3, #0x14
0c012ecc: e4972004  ldr r2, [r7], #0x4
0c012ed0: e5092140  str r2, [r9, #-0x140]
0c012ed4: e3a02000  mov r2, #0x0
0c012ed8: e519c134  ldr r12, [r9, #-0x134]
0c012edc: e31c0001  tst r12, #0x1
0c012ee0: 0a000006  beq 0x0c012f00
0c012ee4: e2822001  add r2, r2, #0x1
0c012ee8: e3520ffa  cmp r2, #0x3e8
0c012eec: c24f0f40  subgt r0, pc, #0x100
0c012ef0: ca000074  bgt 0x0c0130c8
0c012ef4: e519c134  ldr r12, [r9, #-0x134]
0c012ef8: e31c0001  tst r12, #0x1
0c012efc: 1afffff8  bne 0x0c012ee4
0c012f00: e3350000  teq r5, #0x0
0c012f04: 0a000001  beq 0x0c012f10
0c012f08: e5192140  ldr r2, [r9, #-0x140]
0c012f0c: e4852004  str r2, [r5], #0x4
0c012f10: e2444020  sub r4, r4, #0x20
0c012f14: e33a0000  teq r10, #0x0
0c012f18: 0a000002  beq 0x0c012f28
0c012f1c: e3540020  cmp r4, #0x20
0c012f20: c509313c  strgt r3, [r9, #-0x13c]
0c012f24: e3a0a000  mov r10, #0x0
0c012f28: e3540020  cmp r4, #0x20
0c012f2c: caffffe6  bgt 0x0c012ecc
0c012f30: e3a02034  mov r2, #0x34
0c012f34: e509213c  str r2, [r9, #-0x13c]
0c012f38: e3340020  teq r4, #0x20
0c012f3c: 0a000004  beq 0x0c012f54
0c012f40: e511113c  ldr r1, [r1, #-0x13c]
0c012f44: e0800181  add r0, r0, r1, lsl #3
0c012f48: e5900000  ldr r0, [r0, #0x0]
0c012f4c: e1840280  orr r0, r4, r0, lsl #5
0c012f50: e5090138  str r0, [r9, #-0x138]
0c012f54: e5972000  ldr r2, [r7, #0x0]
0c012f58: e5092140  str r2, [r9, #-0x140]
0c012f5c: e3a00000  mov r0, #0x0
0c012f60: e5191134  ldr r1, [r9, #-0x134]
0c012f64: e3110001  tst r1, #0x1
0c012f68: 0a000006  beq 0x0c012f88
0c012f6c: e2800001  add r0, r0, #0x1
0c012f70: e3500ffa  cmp r0, #0x3e8
0c012f74: c24f0f62  subgt r0, pc, #0x188
0c012f78: ca000052  bgt 0x0c0130c8
0c012f7c: e5191134  ldr r1, [r9, #-0x134]
0c012f80: e3110001  tst r1, #0x1
0c012f84: 1afffff8  bne 0x0c012f6c
0c012f88: e3350000  teq r5, #0x0
0c012f8c: 0affffb4  beq 0x0c012e64
0c012f90: e5190140  ldr r0, [r9, #-0x140]
0c012f94: e2641020  rsb r1, r4, #0x20
0c012f98: e1a00130  mov r0, r0, lsr r1
0c012f9c: e5850000  str r0, [r5, #0x0]
0c012fa0: eaffffaf  b 0x0c012e64
0c012fa4: 6a746167  .asciz "jtag.c"
0c012fac: 28696e73  .asciz "(inst == 0) || (inst == 1)"
0c012fc8: e3350000  teq r5, #0x0
0c012fcc: 1a000004  bne 0x0c012fe4
0c012fd0: e24f1f0d  sub r1, pc, #0x34
0c012fd4: e28f0f26  add r0, pc, #0x98
0c012fd8: e3a0205f  mov r2, #0x5f
0c012fdc: e2822c01  add r2, r2, #0x100
0c012fe0: ebffff44  bl 0x0c012cf8 <fn_0c012cf8>
0c012fe4: e51f0264  ldr r0, [pc, #-0x264] =0x0401d740
0c012fe8: e51f1264  ldr r1, [pc, #-0x264] =0x0401d960
0c012fec: e511213c  ldr r2, [r1, #-0x13c]
0c012ff0: e0802182  add r2, r0, r2, lsl #3
0c012ff4: e5922000  ldr r2, [r2, #0x0]
0c012ff8: e1a02282  mov r2, r2, lsl #5
0c012ffc: e5092138  str r2, [r9, #-0x138]
0c013000: e2844020  add r4, r4, #0x20
0c013004: e3a02000  mov r2, #0x0
0c013008: e59d3000  ldr r3, [sp, #0x0]
0c01300c: e509313c  str r3, [r9, #-0x13c]
0c013010: e3540020  cmp r4, #0x20
0c013014: da000019  ble 0x0c013080
0c013018: e3a03014  mov r3, #0x14
0c01301c: e5092140  str r2, [r9, #-0x140]
0c013020: e3a02000  mov r2, #0x0
0c013024: e519c134  ldr r12, [r9, #-0x134]
0c013028: e31c0001  tst r12, #0x1
0c01302c: 0a000006  beq 0x0c01304c
0c013030: e2822001  add r2, r2, #0x1
0c013034: e3520ffa  cmp r2, #0x3e8
0c013038: c24f0f93  subgt r0, pc, #0x24c
0c01303c: ca000021  bgt 0x0c0130c8
0c013040: e519c134  ldr r12, [r9, #-0x134]
0c013044: e31c0001  tst r12, #0x1
0c013048: 1afffff8  bne 0x0c013030
0c01304c: e5192140  ldr r2, [r9, #-0x140]
0c013050: e2444020  sub r4, r4, #0x20
0c013054: e3540020  cmp r4, #0x20
0c013058: e5852000  str r2, [r5, #0x0]
0c01305c: da000005  ble 0x0c013078
0c013060: e2855004  add r5, r5, #0x4
0c013064: e33a0000  teq r10, #0x0
0c013068: 1509313c  strne r3, [r9, #-0x13c]
0c01306c: 13a0a000  movne r10, #0x0
0c013070: ea000000  b 0x0c013078
0c013074: 64000000  strvs r0, [r0], #-0x0
0c013078: e3540020  cmp r4, #0x20
0c01307c: caffffe6  bgt 0x0c01301c
0c013080: e3a03034  mov r3, #0x34
0c013084: e509313c  str r3, [r9, #-0x13c]
0c013088: e3340020  teq r4, #0x20
0c01308c: 0a000004  beq 0x0c0130a4
0c013090: e511113c  ldr r1, [r1, #-0x13c]
0c013094: e0800181  add r0, r0, r1, lsl #3
0c013098: e5900000  ldr r0, [r0, #0x0]
0c01309c: e1840280  orr r0, r4, r0, lsl #5
0c0130a0: e5090138  str r0, [r9, #-0x138]
0c0130a4: e5092140  str r2, [r9, #-0x140]
0c0130a8: e3a00000  mov r0, #0x0
0c0130ac: e5191134  ldr r1, [r9, #-0x134]
0c0130b0: e3110001  tst r1, #0x1
0c0130b4: 0affff6a  beq 0x0c012e64
0c0130b8: e2800001  add r0, r0, #0x1
0c0130bc: e3500ffa  cmp r0, #0x3e8
0c0130c0: da000003  ble 0x0c0130d4
0c0130c4: e24f0fb6  sub r0, pc, #0x2d8
0c0130c8: ebfffb04  bl 0x0c011ce0 <fn_0c011ce0>
0c0130cc: e3a00001  mov r0, #0x1
0c0130d0: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c0130d4: e5191134  ldr r1, [r9, #-0x134]
0c0130d8: e3110001  tst r1, #0x1
0c0130dc: 1afffff5  bne 0x0c0130b8
0c0130e0: eaffff5f  b 0x0c012e64
insert_bits:
0c0130e4: e92d44f0  stmdb sp!, {r4,r5,r6,r7,r10,lr}
0c0130e8: e3a0c000  mov r12, #0x0
0c0130ec: e3530000  cmp r3, #0x0
0c0130f0: d8bd84f0  ldmleia sp!, {r4,r5,r6,r7,r10,pc}
0c0130f4: e3a06001  mov r6, #0x1
0c0130f8: e1a0e2cc  mov lr, r12, asr #5
0c0130fc: e791e10e  ldr lr, [r1, lr, lsl #2]
0c013100: e20c401f  and r4, r12, #0x1f
0c013104: e1a0e43e  mov lr, lr, lsr r4
0c013108: e20e4001  and r4, lr, #0x1
0c01310c: e1a052c2  mov r5, r2, asr #5
0c013110: e7907105  ldr r7, [r0, r5, lsl #2]
0c013114: e202e01f  and lr, r2, #0x1f
0c013118: e1c77e16  bic r7, r7, r6, lsl lr
0c01311c: e187ee14  orr lr, r7, r4, lsl lr
0c013120: e780e105  str lr, [r0, r5, lsl #2]
0c013124: e28cc001  add r12, r12, #0x1
0c013128: e2822001  add r2, r2, #0x1
0c01312c: e15c0003  cmp r12, r3
0c013130: bafffff0  blt 0x0c0130f8
0c013134: e8bd84f0  ldmia sp!, {r4,r5,r6,r7,r10,pc}
extract_bits:
0c013138: e92d44f0  stmdb sp!, {r4,r5,r6,r7,r10,lr}
0c01313c: e3a0c000  mov r12, #0x0
0c013140: e3530000  cmp r3, #0x0
0c013144: d8bd84f0  ldmleia sp!, {r4,r5,r6,r7,r10,pc}
0c013148: e3a06001  mov r6, #0x1
0c01314c: e1a0e2c2  mov lr, r2, asr #5
0c013150: e791e10e  ldr lr, [r1, lr, lsl #2]
0c013154: e202401f  and r4, r2, #0x1f
0c013158: e1a0e43e  mov lr, lr, lsr r4
0c01315c: e20e4001  and r4, lr, #0x1
0c013160: e1a052cc  mov r5, r12, asr #5
0c013164: e7907105  ldr r7, [r0, r5, lsl #2]
0c013168: e20ce01f  and lr, r12, #0x1f
0c01316c: e1c77e16  bic r7, r7, r6, lsl lr
0c013170: e187ee14  orr lr, r7, r4, lsl lr
0c013174: e780e105  str lr, [r0, r5, lsl #2]
0c013178: e28cc001  add r12, r12, #0x1
0c01317c: e2822001  add r2, r2, #0x1
0c013180: e15c0003  cmp r12, r3
0c013184: bafffff0  blt 0x0c01314c
0c013188: e8bd84f0  ldmia sp!, {r4,r5,r6,r7,r10,pc}
0c01318c: e1a0c00d  mov r12, sp
0c013190: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c013194: e24cb004  sub r11, r12, #0x4
0c013198: e1a05000  mov r5, r0
0c01319c: e1a04001  mov r4, r1
0c0131a0: e59f0094  ldr r0, [pc, #0x94] =0x040198a8
0c0131a4: e5900000  ldr r0, [r0, #0x0]
0c0131a8: e3300000  teq r0, #0x0
0c0131ac: 191bacf0  ldmnedb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c0131b0: e51f0430  ldr r0, [pc, #-0x430] =0x0401d740
0c0131b4: e51f1430  ldr r1, [pc, #-0x430] =0x0401d960
0c0131b8: e511113c  ldr r1, [r1, #-0x13c]
0c0131bc: e0800181  add r0, r0, r1, lsl #3
0c0131c0: e5900004  ldr r0, [r0, #0x4]
0c0131c4: e280100c  add r1, r0, #0xc
0c0131c8: e8910003  ldmia r1, {r0,r1}
0c0131cc: e0810200  add r0, r1, r0, lsl #4
0c0131d0: e3a06000  mov r6, #0x0
0c0131d4: e5b0700c  ldr r7, [r0, #0xc]!
0c0131d8: e59fa060  ldr r10, [pc, #0x60] =0x04071690
0c0131dc: e0860086  add r0, r6, r6, lsl #1
0c0131e0: e59f105c  ldr r1, [pc, #0x5c] =0x0401af68
0c0131e4: e0810180  add r0, r1, r0, lsl #3
0c0131e8: e5901008  ldr r1, [r0, #0x8]
0c0131ec: e1310004  teq r1, r4
0c0131f0: 05901004  ldreq r1, [r0, #0x4]
0c0131f4: 01310005  teqeq r1, r5
0c0131f8: 1a00000a  bne 0x0c013228
0c0131fc: e3a01000  mov r1, #0x0
0c013200: e52d1004  str r1, [sp, #-0x4]!
0c013204: e280100c  add r1, r0, #0xc
0c013208: e8910003  ldmia r1, {r0,r1}
0c01320c: e0411000  sub r1, r1, r0
0c013210: e2813001  add r3, r1, #0x1
0c013214: e0802007  add r2, r0, r7
0c013218: e1a0100a  mov r1, r10
0c01321c: e1a0000d  mov r0, sp
0c013220: ebffffc4  bl 0x0c013138 <extract_bits>
0c013224: e28dd004  add sp, sp, #0x4
0c013228: e2866001  add r6, r6, #0x1
0c01322c: e256cf6a  subs r12, r6, #0x1a8
0c013230: 235c0001  cmpcs r12, #0x1
0c013234: 3affffe8  bcc 0x0c0131dc
0c013238: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c01323c: 040198a8  .word 0x040198a8
0c013240: 04071690  .word 0x04071690
0c013244: 0401af68  .word 0x0401af68
fn_0c013248:
0c013248: e1a0c00d  mov r12, sp
0c01324c: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c013250: e24cb004  sub r11, r12, #0x4
0c013254: e3a0c000  mov r12, #0x0
0c013258: e52dc004  str r12, [sp, #-0x4]!
0c01325c: e51fc028  ldr r12, [pc, #-0x28] =0x040198a8
0c013260: e59cc000  ldr r12, [r12, #0x0]
0c013264: e33c0000  teq r12, #0x0
0c013268: 0a000007  beq 0x0c01328c
0c01326c: e3a0ca01  mov r12, #0x1000
0c013270: e28cc008  add r12, r12, #0x8
0c013274: e88c000f  stmia r12, {r0,r1,r2,r3}
0c013278: e24cc008  sub r12, r12, #0x8
0c01327c: e3a00002  mov r0, #0x2
0c013280: e58c0028  str r0, [r12, #0x28]
0c013284: e5bc002c  ldr r0, [r12, #0x2c]!
0c013288: ea000024  b 0x0c013320
0c01328c: e51f250c  ldr r2, [pc, #-0x50c] =0x0401d740
0c013290: e51f150c  ldr r1, [pc, #-0x50c] =0x0401d960
0c013294: e511113c  ldr r1, [r1, #-0x13c]
0c013298: e0821181  add r1, r2, r1, lsl #3
0c01329c: e5911004  ldr r1, [r1, #0x4]
0c0132a0: e281200c  add r2, r1, #0xc
0c0132a4: e8920006  ldmia r2, {r1,r2}
0c0132a8: e0821201  add r1, r2, r1, lsl #4
0c0132ac: e5b1e00c  ldr lr, [r1, #0xc]!
0c0132b0: e3a01000  mov r1, #0x0
0c0132b4: e51f4078  ldr r4, [pc, #-0x78] =0x0401af68
0c0132b8: e3a050a9  mov r5, #0xa9
0c0132bc: e2855c01  add r5, r5, #0x100
0c0132c0: e0812081  add r2, r1, r1, lsl #1
0c0132c4: e0842182  add r2, r4, r2, lsl #3
0c0132c8: e592c000  ldr r12, [r2, #0x0]
0c0132cc: e13c0003  teq r12, r3
0c0132d0: 0592c004  ldreq r12, [r2, #0x4]
0c0132d4: 013c0000  teqeq r12, r0
0c0132d8: 0a000004  beq 0x0c0132f0
0c0132dc: e2811001  add r1, r1, #0x1
0c0132e0: e1510005  cmp r1, r5
0c0132e4: 3afffff5  bcc 0x0c0132c0
0c0132e8: e3a00000  mov r0, #0x0
0c0132ec: ea00000b  b 0x0c013320
0c0132f0: e0810081  add r0, r1, r1, lsl #1
0c0132f4: e0840180  add r0, r4, r0, lsl #3
0c0132f8: e5b0100c  ldr r1, [r0, #0xc]!
0c0132fc: e081000e  add r0, r1, lr
0c013300: e5922010  ldr r2, [r2, #0x10]
0c013304: e0421001  sub r1, r2, r1
0c013308: e2813001  add r3, r1, #0x1
0c01330c: e1a02000  mov r2, r0
0c013310: e51f10d8  ldr r1, [pc, #-0xd8] =0x04071690
0c013314: e1a0000d  mov r0, sp
0c013318: ebffff86  bl 0x0c013138 <extract_bits>
0c01331c: e59d0000  ldr r0, [sp, #0x0]
0c013320: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
jt_reg_write:
0c013324: e1a0c00d  mov r12, sp
0c013328: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c01332c: e24cb004  sub r11, r12, #0x4
0c013330: e59bc004  ldr r12, [r11, #0x4]
0c013334: e52dc004  str r12, [sp, #-0x4]!
0c013338: e1a0e00c  mov lr, r12
0c01333c: e51f4108  ldr r4, [pc, #-0x108] =0x040198a8
0c013340: e5944000  ldr r4, [r4, #0x0]
0c013344: e3340000  teq r4, #0x0
0c013348: 0a000007  beq 0x0c01336c
0c01334c: e3a0ea01  mov lr, #0x1000
0c013350: e28ee008  add lr, lr, #0x8
0c013354: e88e100f  stmia lr, {r0,r1,r2,r3,r12}
0c013358: e24ee008  sub lr, lr, #0x8
0c01335c: e3a00003  mov r0, #0x3
0c013360: e58e0028  str r0, [lr, #0x28]
0c013364: e5be002c  ldr r0, [lr, #0x2c]!
0c013368: ea000017  b 0x0c0133cc
0c01336c: e51f15ec  ldr r1, [pc, #-0x5ec] =0x0401d740
0c013370: e51f25ec  ldr r2, [pc, #-0x5ec] =0x0401d960
0c013374: e512213c  ldr r2, [r2, #-0x13c]
0c013378: e0811182  add r1, r1, r2, lsl #3
0c01337c: e5911004  ldr r1, [r1, #0x4]
0c013380: e281200c  add r2, r1, #0xc
0c013384: e8920006  ldmia r2, {r1,r2}
0c013388: e0821201  add r1, r2, r1, lsl #4
0c01338c: e5b1400c  ldr r4, [r1, #0xc]!
0c013390: e3a01000  mov r1, #0x0
0c013394: e51f5158  ldr r5, [pc, #-0x158] =0x0401af68
0c013398: e3a060a9  mov r6, #0xa9
0c01339c: e2866c01  add r6, r6, #0x100
0c0133a0: e0812081  add r2, r1, r1, lsl #1
0c0133a4: e0852182  add r2, r5, r2, lsl #3
0c0133a8: e592c000  ldr r12, [r2, #0x0]
0c0133ac: e13c0003  teq r12, r3
0c0133b0: 0592c004  ldreq r12, [r2, #0x4]
0c0133b4: 013c0000  teqeq r12, r0
0c0133b8: 0a000004  beq 0x0c0133d0
0c0133bc: e2811001  add r1, r1, #0x1
0c0133c0: e1510006  cmp r1, r6
0c0133c4: 3afffff5  bcc 0x0c0133a0
0c0133c8: e3a00000  mov r0, #0x0
0c0133cc: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
0c0133d0: e0810081  add r0, r1, r1, lsl #1
0c0133d4: e0850180  add r0, r5, r0, lsl #3
0c0133d8: e5a0e014  str lr, [r0, #0x14]!
0c0133dc: e592000c  ldr r0, [r2, #0xc]
0c0133e0: e0801004  add r1, r0, r4
0c0133e4: e5922010  ldr r2, [r2, #0x10]
0c0133e8: e0420000  sub r0, r2, r0
0c0133ec: e2803001  add r3, r0, #0x1
0c0133f0: e1a02001  mov r2, r1
0c0133f4: e1a0100d  mov r1, sp
0c0133f8: e51f01c0  ldr r0, [pc, #-0x1c0] =0x04071690
0c0133fc: ebffff38  bl 0x0c0130e4 <insert_bits>
0c013400: eafffff0  b 0x0c0133c8
jt_reg_init:
0c013404: e1a0c00d  mov r12, sp
0c013408: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c01340c: e24cb004  sub r11, r12, #0x4
0c013410: e1a04000  mov r4, r0
0c013414: e1a05001  mov r5, r1
0c013418: e51f01e4  ldr r0, [pc, #-0x1e4] =0x040198a8
0c01341c: e5900000  ldr r0, [r0, #0x0]
0c013420: e3300000  teq r0, #0x0
0c013424: 191bacf0  ldmnedb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c013428: e3a06000  mov r6, #0x0
0c01342c: e51f71f0  ldr r7, [pc, #-0x1f0] =0x0401af68
0c013430: e3a0a0a9  mov r10, #0xa9
0c013434: e28aac01  add r10, r10, #0x100
0c013438: e0860086  add r0, r6, r6, lsl #1
0c01343c: e0870180  add r0, r7, r0, lsl #3
0c013440: e5901008  ldr r1, [r0, #0x8]
0c013444: e1310005  teq r1, r5
0c013448: 05901004  ldreq r1, [r0, #0x4]
0c01344c: 01310004  teqeq r1, r4
0c013450: 1a000007  bne 0x0c013474
0c013454: e5903014  ldr r3, [r0, #0x14]
0c013458: e92d0008  stmdb sp!, {r3}
0c01345c: e5903000  ldr r3, [r0, #0x0]
0c013460: e1a00004  mov r0, r4
0c013464: e3a02000  mov r2, #0x0
0c013468: e3a01000  mov r1, #0x0
0c01346c: ebffffac  bl 0x0c013324 <jt_reg_write>
0c013470: e28dd004  add sp, sp, #0x4
0c013474: e2866001  add r6, r6, #0x1
0c013478: e156000a  cmp r6, r10
0c01347c: 3affffed  bcc 0x0c013438
0c013480: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
fn_0c013484:
0c013484: e1a0c00d  mov r12, sp
0c013488: e92ddcff  stmdb sp!, {r0,r1,r2,r3,r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c01348c: e24cb004  sub r11, r12, #0x4
0c013490: e1a04003  mov r4, r3
0c013494: e24dd00c  sub sp, sp, #0xc
0c013498: e51f1718  ldr r1, [pc, #-0x718] =0x0401d740
0c01349c: e0811180  add r1, r1, r0, lsl #3
0c0134a0: e3a07000  mov r7, #0x0
0c0134a4: e3a0a000  mov r10, #0x0
0c0134a8: e5b16004  ldr r6, [r1, #0x4]!
0c0134ac: e3e01000  mvn r1, #0x0
0c0134b0: e58d1004  str r1, [sp, #0x4]
0c0134b4: e51f1280  ldr r1, [pc, #-0x280] =0x040198a8
0c0134b8: e5911000  ldr r1, [r1, #0x0]
0c0134bc: e3310000  teq r1, #0x0
0c0134c0: 0a000001  beq 0x0c0134cc
0c0134c4: e3a00000  mov r0, #0x0
0c0134c8: ea000049  b 0x0c0135f4
0c0134cc: ebfffe24  bl 0x0c012d64 <fn_0c012d64>
0c0134d0: e5960000  ldr r0, [r6, #0x0]
0c0134d4: e2505001  subs r5, r0, #0x1
0c0134d8: 4a000040  bmi 0x0c0135e0
0c0134dc: e5960010  ldr r0, [r6, #0x10]
0c0134e0: e0800205  add r0, r0, r5, lsl #4
0c0134e4: e5a0700c  str r7, [r0, #0xc]!
0c0134e8: e5960010  ldr r0, [r6, #0x10]
0c0134ec: e0801205  add r1, r0, r5, lsl #4
0c0134f0: e5910004  ldr r0, [r1, #0x4]
0c0134f4: e5902000  ldr r2, [r0, #0x0]
0c0134f8: e51b302c  ldr r3, [r11, #-0x2c]
0c0134fc: e1320003  teq r2, r3
0c013500: 05911000  ldreq r1, [r1, #0x0]
0c013504: 051b2028  ldreq r2, [r11, #-0x28]
0c013508: 01310002  teqeq r1, r2
0c01350c: 1a00001f  bne 0x0c013590
0c013510: e590000c  ldr r0, [r0, #0xc]
0c013514: e3300000  teq r0, #0x0
0c013518: 1a000003  bne 0x0c01352c
0c01351c: e28f1f10  add r1, pc, #0x40
0c013520: e28f0f11  add r0, pc, #0x44
0c013524: e3a02f8f  mov r2, #0x23c
0c013528: ebfffdf2  bl 0x0c012cf8 <fn_0c012cf8>
0c01352c: e5960010  ldr r0, [r6, #0x10]
0c013530: e0800205  add r0, r0, r5, lsl #4
0c013534: e5900004  ldr r0, [r0, #0x4]
0c013538: e590000c  ldr r0, [r0, #0xc]
0c01353c: e7900104  ldr r0, [r0, r4, lsl #2]
0c013540: e88d0021  stmia sp, {r0,r5}
0c013544: e5960010  ldr r0, [r6, #0x10]
0c013548: e0800205  add r0, r0, r5, lsl #4
0c01354c: e5901004  ldr r1, [r0, #0x4]
0c013550: e0811104  add r1, r1, r4, lsl #2
0c013554: e5911010  ldr r1, [r1, #0x10]
0c013558: e0817007  add r7, r1, r7
0c01355c: e5a04008  str r4, [r0, #0x8]!
0c013560: ea000011  b 0x0c0135ac
0c013564: 6a746167  .asciz "jtag.c"
0c01356c: 73632d3e  .asciz "sc->element[i].chip->i_value_list"
0c013590: e3a000ff  mov r0, #0xff
0c013594: e2877001  add r7, r7, #0x1
0c013598: e3a0100f  mov r1, #0xf
0c01359c: e58d0000  str r0, [sp, #0x0]
0c0135a0: e5960010  ldr r0, [r6, #0x10]
0c0135a4: e0800205  add r0, r0, r5, lsl #4
0c0135a8: e5a01008  str r1, [r0, #0x8]!
0c0135ac: e5960010  ldr r0, [r6, #0x10]
0c0135b0: e0800205  add r0, r0, r5, lsl #4
0c0135b4: e5900004  ldr r0, [r0, #0x4]
0c0135b8: e5b03008  ldr r3, [r0, #0x8]!
0c0135bc: e1a0200a  mov r2, r10
0c0135c0: e58d3008  str r3, [sp, #0x8]
0c0135c4: e1a0100d  mov r1, sp
0c0135c8: e51f0390  ldr r0, [pc, #-0x390] =0x04071690
0c0135cc: ebfffec4  bl 0x0c0130e4 <insert_bits>
0c0135d0: e59d0008  ldr r0, [sp, #0x8]
0c0135d4: e08aa000  add r10, r10, r0
0c0135d8: e2555001  subs r5, r5, #0x1
0c0135dc: 5affffbe  bpl 0x0c0134dc
0c0135e0: e5867008  str r7, [r6, #0x8]
0c0135e4: e59d0004  ldr r0, [sp, #0x4]
0c0135e8: e3700001  cmn r0, #0x1
0c0135ec: 1a000001  bne 0x0c0135f8
0c0135f0: e3e00000  mvn r0, #0x0
0c0135f4: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c0135f8: e59d0004  ldr r0, [sp, #0x4]
0c0135fc: e5a6000c  str r0, [r6, #0xc]!
0c013600: e51f13c8  ldr r1, [pc, #-0x3c8] =0x04071690
0c013604: e1a0000a  mov r0, r10
0c013608: e3a03001  mov r3, #0x1
0c01360c: e3a02000  mov r2, #0x0
0c013610: ebfffe08  bl 0x0c012e38 <fn_0c012e38>
0c013614: eaffffaa  b 0x0c0134c4
jt_flush:
0c013618: e51f03e4  ldr r0, [pc, #-0x3e4] =0x040198a8
0c01361c: e5900000  ldr r0, [r0, #0x0]
0c013620: e3300000  teq r0, #0x0
0c013624: 11a0f00e  movne pc, lr
0c013628: e51f08a8  ldr r0, [pc, #-0x8a8] =0x0401d740
0c01362c: e51f18a8  ldr r1, [pc, #-0x8a8] =0x0401d960
0c013630: e511113c  ldr r1, [r1, #-0x13c]
0c013634: e0800181  add r0, r0, r1, lsl #3
0c013638: e5900004  ldr r0, [r0, #0x4]
0c01363c: e5900008  ldr r0, [r0, #0x8]
0c013640: e51f1408  ldr r1, [pc, #-0x408] =0x04071690
0c013644: e1a02001  mov r2, r1
0c013648: e3a03000  mov r3, #0x0
0c01364c: eafffdf9  b 0x0c012e38 <fn_0c012e38>
0c013650: e1a0c00d  mov r12, sp
0c013654: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c013658: e24cb004  sub r11, r12, #0x4
0c01365c: e24dd004  sub sp, sp, #0x4
0c013660: e3a01000  mov r1, #0x0
0c013664: e59f3040  ldr r3, [pc, #0x40] =0xa8a8a8a8
0c013668: e51f2430  ldr r2, [pc, #-0x430] =0x04071690
0c01366c: e7823101  str r3, [r2, r1, lsl #2]
0c013670: e2811001  add r1, r1, #0x1
0c013674: e3510c01  cmp r1, #0x100
0c013678: 3afffffb  bcc 0x0c01366c
0c01367c: ebfffdb8  bl 0x0c012d64 <fn_0c012d64>
0c013680: e1a01002  mov r1, r2
0c013684: e3a03001  mov r3, #0x1
0c013688: e3a00d05  mov r0, #0x140
0c01368c: ebfffde9  bl 0x0c012e38 <fn_0c012e38>
0c013690: e1a0200d  mov r2, sp
0c013694: e1a0100d  mov r1, sp
0c013698: e3a03000  mov r3, #0x0
0c01369c: e3a00020  mov r0, #0x20
0c0136a0: ebfffde4  bl 0x0c012e38 <fn_0c012e38>
0c0136a4: e49d0004  ldr r0, [sp], #0x4
0c0136a8: e91ba800  ldmdb r11, {r11,sp,pc}
0c0136ac: a8a8a8a8  .word 0xa8a8a8a8
fn_0c0136b0:
0c0136b0: e3a00005  mov r0, #0x5
0c0136b4: eaffffe5  b 0x0c013650
fn_0c0136b8:
0c0136b8: e2800001  add r0, r0, #0x1
0c0136bc: eaffffe3  b 0x0c013650
chip_id:
0c0136c0: e1a0c00d  mov r12, sp
0c0136c4: e92dd8f0  stmdb sp!, {r4,r5,r6,r7,r11,r12,lr,pc}
0c0136c8: e24cb004  sub r11, r12, #0x4
0c0136cc: e1a06001  mov r6, r1
0c0136d0: e1a05002  mov r5, r2
0c0136d4: e1a04003  mov r4, r3
0c0136d8: e0800001  add r0, r0, r1
0c0136dc: e1a02003  mov r2, r3
0c0136e0: e1a01005  mov r1, r5
0c0136e4: e3a03005  mov r3, #0x5
0c0136e8: e59b7004  ldr r7, [r11, #0x4]
0c0136ec: ebffff64  bl 0x0c013484 <fn_0c013484>
0c0136f0: e51f0970  ldr r0, [pc, #-0x970] =0x0401d740
0c0136f4: e51f1970  ldr r1, [pc, #-0x970] =0x0401d960
0c0136f8: e511113c  ldr r1, [r1, #-0x13c]
0c0136fc: e0800181  add r0, r0, r1, lsl #3
0c013700: e5900004  ldr r0, [r0, #0x4]
0c013704: e5900008  ldr r0, [r0, #0x8]
0c013708: e51f24d0  ldr r2, [pc, #-0x4d0] =0x04071690
0c01370c: e3a03000  mov r3, #0x0
0c013710: e3a01000  mov r1, #0x0
0c013714: ebfffdc7  bl 0x0c012e38 <fn_0c012e38>
0c013718: e1a03007  mov r3, r7
0c01371c: e1a02004  mov r2, r4
0c013720: e1a01006  mov r1, r6
0c013724: e1a00005  mov r0, r5
0c013728: e91b68f0  ldmdb r11, {r4,r5,r6,r7,r11,sp,lr}
0c01372c: eafffec5  b 0x0c013248 <fn_0c013248>
0c013730: e891000c  ldmia r1, {r2,r3}
0c013734: e1823403  orr r3, r2, r3, lsl #8
0c013738: e5912008  ldr r2, [r1, #0x8]
0c01373c: e1832802  orr r2, r3, r2, lsl #16
0c013740: e591100c  ldr r1, [r1, #0xc]
0c013744: e1821c01  orr r1, r2, r1, lsl #24
0c013748: e5801000  str r1, [r0, #0x0]
0c01374c: e1a00001  mov r0, r1
0c013750: e1a0f00e  mov pc, lr
fn_0c013754:
0c013754: e1a0c00d  mov r12, sp
0c013758: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c01375c: e24cb004  sub r11, r12, #0x4
0c013760: e24dd004  sub sp, sp, #0x4
0c013764: e3a0a004  mov r10, #0x4
0c013768: e3a06000  mov r6, #0x0
0c01376c: e3a04001  mov r4, #0x1
0c013770: e3a05001  mov r5, #0x1
0c013774: ebffffcd  bl 0x0c0136b0 <fn_0c0136b0>
0c013778: e3a07000  mov r7, #0x0
0c01377c: e3700001  cmn r0, #0x1
0c013780: 0a000042  beq 0x0c013890
0c013784: e2000cfe  and r0, r0, #0xfe00
0c013788: e1b004a0  movs r0, r0, lsr #9
0c01378c: e58d0000  str r0, [sp, #0x0]
0c013790: 1a000003  bne 0x0c0137a4
0c013794: e59f0004  ldr r0, [pc, #0x4] =0x0406f70c
0c013798: e5807000  str r7, [r0, #0x0]
0c01379c: ea000029  b 0x0c013848
0c0137a0: 0406f70c  .word 0x0406f70c
0c0137a4: e3a07000  mov r7, #0x0
0c0137a8: e1a00007  mov r0, r7
0c0137ac: ebffffc1  bl 0x0c0136b8 <fn_0c0136b8>
0c0137b0: e3700001  cmn r0, #0x1
0c0137b4: 0a00000e  beq 0x0c0137f4
0c0137b8: e2000cfe  and r0, r0, #0xfe00
0c0137bc: e1a004a0  mov r0, r0, lsr #9
0c0137c0: e3300006  teq r0, #0x6
0c0137c4: 0a000008  beq 0x0c0137ec
0c0137c8: e3300009  teq r0, #0x9
0c0137cc: 0a000005  beq 0x0c0137e8
0c0137d0: e330000b  teq r0, #0xb
0c0137d4: 0a000005  beq 0x0c0137f0
0c0137d8: e330000e  teq r0, #0xe
0c0137dc: 03a05000  moveq r5, #0x0
0c0137e0: 03a06000  moveq r6, #0x0
0c0137e4: ea000002  b 0x0c0137f4
0c0137e8: e3a06001  mov r6, #0x1
0c0137ec: e3a05000  mov r5, #0x0
0c0137f0: e3a04000  mov r4, #0x0
0c0137f4: e2877001  add r7, r7, #0x1
0c0137f8: e157000a  cmp r7, r10
0c0137fc: 3affffe9  bcc 0x0c0137a8
0c013800: e3350001  teq r5, #0x1
0c013804: 03a00005  moveq r0, #0x5
0c013808: 0a00000c  beq 0x0c013840
0c01380c: e3360001  teq r6, #0x1
0c013810: 03a00002  moveq r0, #0x2
0c013814: 0a000009  beq 0x0c013840
0c013818: e3340001  teq r4, #0x1
0c01381c: 03a00006  moveq r0, #0x6
0c013820: 0a000006  beq 0x0c013840
0c013824: e59d0000  ldr r0, [sp, #0x0]
0c013828: e3300005  teq r0, #0x5
0c01382c: 03a00001  moveq r0, #0x1
0c013830: 0a000002  beq 0x0c013840
0c013834: e330000c  teq r0, #0xc
0c013838: 1a000002  bne 0x0c013848
0c01383c: e3a00004  mov r0, #0x4
0c013840: e51f10a8  ldr r1, [pc, #-0xa8] =0x0406f70c
0c013844: e5810000  str r0, [r1, #0x0]
0c013848: e51f00b0  ldr r0, [pc, #-0xb0] =0x0406f70c
0c01384c: e5901000  ldr r1, [r0, #0x0]
0c013850: e51f4ad0  ldr r4, [pc, #-0xad0] =0x0401d740
0c013854: e59fe02c  ldr lr, [pc, #0x2c] =0x0401a9c4
0c013858: e51f0ad4  ldr r0, [pc, #-0xad4] =0x0401d960
0c01385c: e3510006  cmp r1, #0x6
0c013860: 908ff101  addls pc, pc, r1, lsl #2
0c013864: ea000024  b 0x0c0138fc
0c013868: ea000023  b 0x0c0138fc
0c01386c: ea000015  b 0x0c0138c8
0c013870: ea000017  b 0x0c0138d4
0c013874: ea000013  b 0x0c0138c8
0c013878: ea000012  b 0x0c0138c8
0c01387c: ea000011  b 0x0c0138c8
0c013880: e59f5004  ldr r5, [pc, #0x4] =0x0401d7e8
0c013884: ea000013  b 0x0c0138d8
0c013888: 0401a9c4  .word 0x0401a9c4
0c01388c: 0401d7e8  .word 0x0401d7e8
0c013890: e28f0f01  add r0, pc, #0x4
0c013894: ebfff911  bl 0x0c011ce0 <fn_0c011ce0>
0c013898: eaffffbd  b 0x0c013794
0c01389c: 47452062  .asciz "GE board id broken - assuming BDSET_KONA\n"
0c0138c8: e59f5000  ldr r5, [pc, #0x0] =0x0401d778
0c0138cc: ea000001  b 0x0c0138d8
0c0138d0: 0401d778  .word 0x0401d778
0c0138d4: e59f5024  ldr r5, [pc, #0x24] =0x0401d7b0
0c0138d8: e8b5100e  ldmia r5!, {r1,r2,r3,r12}
0c0138dc: e8a4100e  stmia r4!, {r1,r2,r3,r12}
0c0138e0: e8b5100e  ldmia r5!, {r1,r2,r3,r12}
0c0138e4: e8a4100e  stmia r4!, {r1,r2,r3,r12}
0c0138e8: e8b5100e  ldmia r5!, {r1,r2,r3,r12}
0c0138ec: e8a4100e  stmia r4!, {r1,r2,r3,r12}
0c0138f0: e8951008  ldmia r5, {r3,r12}
0c0138f4: e8841008  stmia r4, {r3,r12}
0c0138f8: e520e140  str lr, [r0, #-0x140]!
0c0138fc: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c013900: 0401d7b0  .word 0x0401d7b0
fn_0c013904:
0c013904: e1a0c00d  mov r12, sp
0c013908: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c01390c: e24cb004  sub r11, r12, #0x4
0c013910: e3a00005  mov r0, #0x5
0c013914: ebfffd12  bl 0x0c012d64 <fn_0c012d64>
0c013918: ebfffd1c  bl 0x0c012d90 <jt_soft_reset>
0c01391c: e3a00001  mov r0, #0x1
0c013920: ebfffd0f  bl 0x0c012d64 <fn_0c012d64>
0c013924: ebfffd19  bl 0x0c012d90 <jt_soft_reset>
0c013928: ebffff89  bl 0x0c013754 <fn_0c013754>
0c01392c: e3a00000  mov r0, #0x0
0c013930: ebfffd0b  bl 0x0c012d64 <fn_0c012d64>
0c013934: ebfffd15  bl 0x0c012d90 <jt_soft_reset>
0c013938: e3a00001  mov r0, #0x1
0c01393c: ebfffd08  bl 0x0c012d64 <fn_0c012d64>
0c013940: ebfffd12  bl 0x0c012d90 <jt_soft_reset>
0c013944: e3a00002  mov r0, #0x2
0c013948: ebfffd05  bl 0x0c012d64 <fn_0c012d64>
0c01394c: ebfffd0f  bl 0x0c012d90 <jt_soft_reset>
0c013950: e3a00003  mov r0, #0x3
0c013954: ebfffd02  bl 0x0c012d64 <fn_0c012d64>
0c013958: ebfffd0c  bl 0x0c012d90 <jt_soft_reset>
0c01395c: e3a00004  mov r0, #0x4
0c013960: ebfffcff  bl 0x0c012d64 <fn_0c012d64>
0c013964: ebfffd09  bl 0x0c012d90 <jt_soft_reset>
0c013968: e3a00005  mov r0, #0x5
0c01396c: ebfffcfc  bl 0x0c012d64 <fn_0c012d64>
0c013970: ebfffd06  bl 0x0c012d90 <jt_soft_reset>
0c013974: e3a00006  mov r0, #0x6
0c013978: ebfffcf9  bl 0x0c012d64 <fn_0c012d64>
0c01397c: ebfffd03  bl 0x0c012d90 <jt_soft_reset>
0c013980: e51f074c  ldr r0, [pc, #-0x74c] =0x040198a8
0c013984: e5900000  ldr r0, [r0, #0x0]
0c013988: e3300000  teq r0, #0x0
0c01398c: 191ba800  ldmnedb r11, {r11,sp,pc}
0c013990: eb0008c6  bl 0x0c015cb0 <fn_0c015cb0>
0c013994: e51f01fc  ldr r0, [pc, #-0x1fc] =0x0406f70c
0c013998: e5901004  ldr r1, [r0, #0x4]
0c01399c: e5801054  str r1, [r0, #0x54]
0c0139a0: e5901008  ldr r1, [r0, #0x8]
0c0139a4: e5a01058  str r1, [r0, #0x58]!
0c0139a8: e91ba800  ldmdb r11, {r11,sp,pc}
fn_0c0139ac:
0c0139ac: e51f0778  ldr r0, [pc, #-0x778] =0x040198a8
0c0139b0: e5900000  ldr r0, [r0, #0x0]
0c0139b4: e1a0f00e  mov pc, lr
0c0139b8: e1a0c00d  mov r12, sp
0c0139bc: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c0139c0: e24cb004  sub r11, r12, #0x4
0c0139c4: e1a06000  mov r6, r0
0c0139c8: e1a04001  mov r4, r1
0c0139cc: e1a05002  mov r5, r2
0c0139d0: e2810001  add r0, r1, #0x1
0c0139d4: e3a03002  mov r3, #0x2
0c0139d8: e3a01034  mov r1, #0x34
0c0139dc: ebfffea8  bl 0x0c013484 <fn_0c013484>
0c0139e0: e3a03000  mov r3, #0x0
0c0139e4: e92d0008  stmdb sp!, {r3}
0c0139e8: e1a02005  mov r2, r5
0c0139ec: e1a01004  mov r1, r4
0c0139f0: e3a03f4a  mov r3, #0x128
0c0139f4: e2833b01  add r3, r3, #0x400
0c0139f8: e3a00034  mov r0, #0x34
0c0139fc: ebfffe48  bl 0x0c013324 <jt_reg_write>
0c013a00: e28dd004  add sp, sp, #0x4
0c013a04: e3a03000  mov r3, #0x0
0c013a08: e92d0008  stmdb sp!, {r3}
0c013a0c: e1a02005  mov r2, r5
0c013a10: e1a01004  mov r1, r4
0c013a14: e3a03029  mov r3, #0x29
0c013a18: e2833c05  add r3, r3, #0x500
0c013a1c: e3a00034  mov r0, #0x34
0c013a20: ebfffe3f  bl 0x0c013324 <jt_reg_write>
0c013a24: e28dd004  add sp, sp, #0x4
0c013a28: e3a03001  mov r3, #0x1
0c013a2c: e92d0008  stmdb sp!, {r3}
0c013a30: e1a02005  mov r2, r5
0c013a34: e1a01004  mov r1, r4
0c013a38: e3a0302a  mov r3, #0x2a
0c013a3c: e2833c05  add r3, r3, #0x500
0c013a40: e3a00034  mov r0, #0x34
0c013a44: ebfffe36  bl 0x0c013324 <jt_reg_write>
0c013a48: e28dd004  add sp, sp, #0x4
0c013a4c: e3a03000  mov r3, #0x0
0c013a50: e92d0008  stmdb sp!, {r3}
0c013a54: e1a02005  mov r2, r5
0c013a58: e1a01004  mov r1, r4
0c013a5c: e3a0302b  mov r3, #0x2b
0c013a60: e2833c05  add r3, r3, #0x500
0c013a64: e3a00034  mov r0, #0x34
0c013a68: ebfffe2d  bl 0x0c013324 <jt_reg_write>
0c013a6c: e28dd004  add sp, sp, #0x4
0c013a70: e3a03000  mov r3, #0x0
0c013a74: e92d0008  stmdb sp!, {r3}
0c013a78: e1a02005  mov r2, r5
0c013a7c: e1a01004  mov r1, r4
0c013a80: e3a03f4b  mov r3, #0x12c
0c013a84: e2833b01  add r3, r3, #0x400
0c013a88: e3a00034  mov r0, #0x34
0c013a8c: ebfffe24  bl 0x0c013324 <jt_reg_write>
0c013a90: e28dd004  add sp, sp, #0x4
0c013a94: e3a03000  mov r3, #0x0
0c013a98: e92d0008  stmdb sp!, {r3}
0c013a9c: e1a02005  mov r2, r5
0c013aa0: e1a01004  mov r1, r4
0c013aa4: e3a0302d  mov r3, #0x2d
0c013aa8: e2833c05  add r3, r3, #0x500
0c013aac: e3a00034  mov r0, #0x34
0c013ab0: ebfffe1b  bl 0x0c013324 <jt_reg_write>
0c013ab4: e28dd004  add sp, sp, #0x4
0c013ab8: e3a03c03  mov r3, #0x300
0c013abc: e92d0008  stmdb sp!, {r3}
0c013ac0: e1a02005  mov r2, r5
0c013ac4: e1a01004  mov r1, r4
0c013ac8: e3a0302e  mov r3, #0x2e
0c013acc: e2833c05  add r3, r3, #0x500
0c013ad0: e3a00034  mov r0, #0x34
0c013ad4: ebfffe12  bl 0x0c013324 <jt_reg_write>
0c013ad8: e28dd004  add sp, sp, #0x4
0c013adc: e3a03001  mov r3, #0x1
0c013ae0: e92d0008  stmdb sp!, {r3}
0c013ae4: e1a02005  mov r2, r5
0c013ae8: e1a01004  mov r1, r4
0c013aec: e3a0302f  mov r3, #0x2f
0c013af0: e2833c05  add r3, r3, #0x500
0c013af4: e3a00034  mov r0, #0x34
0c013af8: ebfffe09  bl 0x0c013324 <jt_reg_write>
0c013afc: e28dd004  add sp, sp, #0x4
0c013b00: e3a03005  mov r3, #0x5
0c013b04: e92d0008  stmdb sp!, {r3}
0c013b08: e1a02005  mov r2, r5
0c013b0c: e1a01004  mov r1, r4
0c013b10: e3a03e53  mov r3, #0x530
0c013b14: e3a00034  mov r0, #0x34
0c013b18: ebfffe01  bl 0x0c013324 <jt_reg_write>
0c013b1c: e28dd004  add sp, sp, #0x4
0c013b20: e3a03008  mov r3, #0x8
0c013b24: e92d0008  stmdb sp!, {r3}
0c013b28: e1a02005  mov r2, r5
0c013b2c: e1a01004  mov r1, r4
0c013b30: e3a03031  mov r3, #0x31
0c013b34: e2833c05  add r3, r3, #0x500
0c013b38: e3a00034  mov r0, #0x34
0c013b3c: ebfffdf8  bl 0x0c013324 <jt_reg_write>
0c013b40: e28dd004  add sp, sp, #0x4
0c013b44: e3a03002  mov r3, #0x2
0c013b48: e92d0008  stmdb sp!, {r3}
0c013b4c: e1a02005  mov r2, r5
0c013b50: e1a01004  mov r1, r4
0c013b54: e3a03032  mov r3, #0x32
0c013b58: e2833c05  add r3, r3, #0x500
0c013b5c: e3a00034  mov r0, #0x34
0c013b60: ebfffdef  bl 0x0c013324 <jt_reg_write>
0c013b64: e28dd004  add sp, sp, #0x4
0c013b68: e3a03001  mov r3, #0x1
0c013b6c: e92d0008  stmdb sp!, {r3}
0c013b70: e1a02005  mov r2, r5
0c013b74: e1a01004  mov r1, r4
0c013b78: e3a03033  mov r3, #0x33
0c013b7c: e2833c05  add r3, r3, #0x500
0c013b80: e3a00034  mov r0, #0x34
0c013b84: ebfffde6  bl 0x0c013324 <jt_reg_write>
0c013b88: e28dd004  add sp, sp, #0x4
0c013b8c: e3a03002  mov r3, #0x2
0c013b90: e92d0008  stmdb sp!, {r3}
0c013b94: e1a02005  mov r2, r5
0c013b98: e1a01004  mov r1, r4
0c013b9c: e3a03f4d  mov r3, #0x134
0c013ba0: e2833b01  add r3, r3, #0x400
0c013ba4: e3a00034  mov r0, #0x34
0c013ba8: ebfffddd  bl 0x0c013324 <jt_reg_write>
0c013bac: e28dd004  add sp, sp, #0x4
0c013bb0: e3a03001  mov r3, #0x1
0c013bb4: e92d0008  stmdb sp!, {r3}
0c013bb8: e1a02005  mov r2, r5
0c013bbc: e1a01004  mov r1, r4
0c013bc0: e3a03035  mov r3, #0x35
0c013bc4: e2833c05  add r3, r3, #0x500
0c013bc8: e3a00034  mov r0, #0x34
0c013bcc: ebfffdd4  bl 0x0c013324 <jt_reg_write>
0c013bd0: e28dd004  add sp, sp, #0x4
0c013bd4: e3a03000  mov r3, #0x0
0c013bd8: e92d0008  stmdb sp!, {r3}
0c013bdc: e1a02005  mov r2, r5
0c013be0: e1a01004  mov r1, r4
0c013be4: e3a03036  mov r3, #0x36
0c013be8: e2833c05  add r3, r3, #0x500
0c013bec: e3a00034  mov r0, #0x34
0c013bf0: ebfffdcb  bl 0x0c013324 <jt_reg_write>
0c013bf4: e28dd004  add sp, sp, #0x4
0c013bf8: e3a03001  mov r3, #0x1
0c013bfc: e92d0008  stmdb sp!, {r3}
0c013c00: e1a02005  mov r2, r5
0c013c04: e1a01004  mov r1, r4
0c013c08: e3a03037  mov r3, #0x37
0c013c0c: e2833c05  add r3, r3, #0x500
0c013c10: e3a00034  mov r0, #0x34
0c013c14: ebfffdc2  bl 0x0c013324 <jt_reg_write>
0c013c18: e28dd004  add sp, sp, #0x4
0c013c1c: e3a03000  mov r3, #0x0
0c013c20: e92d0008  stmdb sp!, {r3}
0c013c24: e1a02005  mov r2, r5
0c013c28: e1a01004  mov r1, r4
0c013c2c: e3a03f4e  mov r3, #0x138
0c013c30: e2833b01  add r3, r3, #0x400
0c013c34: e3a00034  mov r0, #0x34
0c013c38: ebfffdb9  bl 0x0c013324 <jt_reg_write>
0c013c3c: e28dd004  add sp, sp, #0x4
0c013c40: e3a03000  mov r3, #0x0
0c013c44: e92d0008  stmdb sp!, {r3}
0c013c48: e1a02005  mov r2, r5
0c013c4c: e1a01004  mov r1, r4
0c013c50: e3a03039  mov r3, #0x39
0c013c54: e2833c05  add r3, r3, #0x500
0c013c58: e3a00034  mov r0, #0x34
0c013c5c: ebfffdb0  bl 0x0c013324 <jt_reg_write>
0c013c60: e28dd004  add sp, sp, #0x4
0c013c64: e3a03000  mov r3, #0x0
0c013c68: e92d0008  stmdb sp!, {r3}
0c013c6c: e1a02005  mov r2, r5
0c013c70: e1a01004  mov r1, r4
0c013c74: e3a0303a  mov r3, #0x3a
0c013c78: e2833c05  add r3, r3, #0x500
0c013c7c: e3a00034  mov r0, #0x34
0c013c80: ebfffda7  bl 0x0c013324 <jt_reg_write>
0c013c84: e28dd004  add sp, sp, #0x4
0c013c88: e3a03c03  mov r3, #0x300
0c013c8c: e92d0008  stmdb sp!, {r3}
0c013c90: e1a02005  mov r2, r5
0c013c94: e1a01004  mov r1, r4
0c013c98: e3a0303b  mov r3, #0x3b
0c013c9c: e2833c05  add r3, r3, #0x500
0c013ca0: e3a00034  mov r0, #0x34
0c013ca4: ebfffd9e  bl 0x0c013324 <jt_reg_write>
0c013ca8: e28dd004  add sp, sp, #0x4
0c013cac: e3a03001  mov r3, #0x1
0c013cb0: e92d0008  stmdb sp!, {r3}
0c013cb4: e1a02005  mov r2, r5
0c013cb8: e1a01004  mov r1, r4
0c013cbc: e3a03f4f  mov r3, #0x13c
0c013cc0: e2833b01  add r3, r3, #0x400
0c013cc4: e3a00034  mov r0, #0x34
0c013cc8: ebfffd95  bl 0x0c013324 <jt_reg_write>
0c013ccc: e28dd004  add sp, sp, #0x4
0c013cd0: e3a03005  mov r3, #0x5
0c013cd4: e92d0008  stmdb sp!, {r3}
0c013cd8: e1a02005  mov r2, r5
0c013cdc: e1a01004  mov r1, r4
0c013ce0: e3a0303d  mov r3, #0x3d
0c013ce4: e2833c05  add r3, r3, #0x500
0c013ce8: e3a00034  mov r0, #0x34
0c013cec: ebfffd8c  bl 0x0c013324 <jt_reg_write>
0c013cf0: e28dd004  add sp, sp, #0x4
0c013cf4: e3a03008  mov r3, #0x8
0c013cf8: e92d0008  stmdb sp!, {r3}
0c013cfc: e1a02005  mov r2, r5
0c013d00: e1a01004  mov r1, r4
0c013d04: e3a0303e  mov r3, #0x3e
0c013d08: e2833c05  add r3, r3, #0x500
0c013d0c: e3a00034  mov r0, #0x34
0c013d10: ebfffd83  bl 0x0c013324 <jt_reg_write>
0c013d14: e28dd004  add sp, sp, #0x4
0c013d18: e3a03002  mov r3, #0x2
0c013d1c: e92d0008  stmdb sp!, {r3}
0c013d20: e1a02005  mov r2, r5
0c013d24: e1a01004  mov r1, r4
0c013d28: e3a0303f  mov r3, #0x3f
0c013d2c: e2833c05  add r3, r3, #0x500
0c013d30: e3a00034  mov r0, #0x34
0c013d34: ebfffd7a  bl 0x0c013324 <jt_reg_write>
0c013d38: e28dd004  add sp, sp, #0x4
0c013d3c: e3a03001  mov r3, #0x1
0c013d40: e92d0008  stmdb sp!, {r3}
0c013d44: e1a02005  mov r2, r5
0c013d48: e1a01004  mov r1, r4
0c013d4c: e3a03d15  mov r3, #0x540
0c013d50: e3a00034  mov r0, #0x34
0c013d54: ebfffd72  bl 0x0c013324 <jt_reg_write>
0c013d58: e28dd004  add sp, sp, #0x4
0c013d5c: e3a03002  mov r3, #0x2
0c013d60: e92d0008  stmdb sp!, {r3}
0c013d64: e1a02005  mov r2, r5
0c013d68: e1a01004  mov r1, r4
0c013d6c: e3a03041  mov r3, #0x41
0c013d70: e2833c05  add r3, r3, #0x500
0c013d74: e3a00034  mov r0, #0x34
0c013d78: ebfffd69  bl 0x0c013324 <jt_reg_write>
0c013d7c: e28dd004  add sp, sp, #0x4
0c013d80: e3a03001  mov r3, #0x1
0c013d84: e92d0008  stmdb sp!, {r3}
0c013d88: e1a02005  mov r2, r5
0c013d8c: e1a01004  mov r1, r4
0c013d90: e3a03042  mov r3, #0x42
0c013d94: e2833c05  add r3, r3, #0x500
0c013d98: e3a00034  mov r0, #0x34
0c013d9c: ebfffd60  bl 0x0c013324 <jt_reg_write>
0c013da0: e28dd004  add sp, sp, #0x4
0c013da4: e3a03000  mov r3, #0x0
0c013da8: e92d0008  stmdb sp!, {r3}
0c013dac: e1a02005  mov r2, r5
0c013db0: e1a01004  mov r1, r4
0c013db4: e3a03043  mov r3, #0x43
0c013db8: e2833c05  add r3, r3, #0x500
0c013dbc: e3a00034  mov r0, #0x34
0c013dc0: ebfffd57  bl 0x0c013324 <jt_reg_write>
0c013dc4: e28dd004  add sp, sp, #0x4
0c013dc8: e3a03001  mov r3, #0x1
0c013dcc: e92d0008  stmdb sp!, {r3}
0c013dd0: e1a02005  mov r2, r5
0c013dd4: e1a01004  mov r1, r4
0c013dd8: e3a03f51  mov r3, #0x144
0c013ddc: e2833b01  add r3, r3, #0x400
0c013de0: e3a00034  mov r0, #0x34
0c013de4: ebfffd4e  bl 0x0c013324 <jt_reg_write>
0c013de8: e28dd004  add sp, sp, #0x4
0c013dec: e3a03000  mov r3, #0x0
0c013df0: e92d0008  stmdb sp!, {r3}
0c013df4: e1a02005  mov r2, r5
0c013df8: e1a01004  mov r1, r4
0c013dfc: e3a03045  mov r3, #0x45
0c013e00: e2833c05  add r3, r3, #0x500
0c013e04: e3a00034  mov r0, #0x34
0c013e08: ebfffd45  bl 0x0c013324 <jt_reg_write>
0c013e0c: e28dd004  add sp, sp, #0x4
0c013e10: e3a03000  mov r3, #0x0
0c013e14: e92d0008  stmdb sp!, {r3}
0c013e18: e1a02005  mov r2, r5
0c013e1c: e1a01004  mov r1, r4
0c013e20: e3a03046  mov r3, #0x46
0c013e24: e2833c05  add r3, r3, #0x500
0c013e28: e3a00034  mov r0, #0x34
0c013e2c: ebfffd3c  bl 0x0c013324 <jt_reg_write>
0c013e30: e28dd004  add sp, sp, #0x4
0c013e34: e3a03000  mov r3, #0x0
0c013e38: e92d0008  stmdb sp!, {r3}
0c013e3c: e1a02005  mov r2, r5
0c013e40: e1a01004  mov r1, r4
0c013e44: e3a03047  mov r3, #0x47
0c013e48: e2833c05  add r3, r3, #0x500
0c013e4c: e3a00034  mov r0, #0x34
0c013e50: ebfffd33  bl 0x0c013324 <jt_reg_write>
0c013e54: e28dd004  add sp, sp, #0x4
0c013e58: e3a03c03  mov r3, #0x300
0c013e5c: e92d0008  stmdb sp!, {r3}
0c013e60: e1a02005  mov r2, r5
0c013e64: e1a01004  mov r1, r4
0c013e68: e3a03f52  mov r3, #0x148
0c013e6c: e2833b01  add r3, r3, #0x400
0c013e70: e3a00034  mov r0, #0x34
0c013e74: ebfffd2a  bl 0x0c013324 <jt_reg_write>
0c013e78: e28dd004  add sp, sp, #0x4
0c013e7c: e3a03001  mov r3, #0x1
0c013e80: e92d0008  stmdb sp!, {r3}
0c013e84: e1a02005  mov r2, r5
0c013e88: e1a01004  mov r1, r4
0c013e8c: e3a03049  mov r3, #0x49
0c013e90: e2833c05  add r3, r3, #0x500
0c013e94: e3a00034  mov r0, #0x34
0c013e98: ebfffd21  bl 0x0c013324 <jt_reg_write>
0c013e9c: e28dd004  add sp, sp, #0x4
0c013ea0: e3a03005  mov r3, #0x5
0c013ea4: e92d0008  stmdb sp!, {r3}
0c013ea8: e1a02005  mov r2, r5
0c013eac: e1a01004  mov r1, r4
0c013eb0: e3a0304a  mov r3, #0x4a
0c013eb4: e2833c05  add r3, r3, #0x500
0c013eb8: e3a00034  mov r0, #0x34
0c013ebc: ebfffd18  bl 0x0c013324 <jt_reg_write>
0c013ec0: e28dd004  add sp, sp, #0x4
0c013ec4: e3a03008  mov r3, #0x8
0c013ec8: e92d0008  stmdb sp!, {r3}
0c013ecc: e1a02005  mov r2, r5
0c013ed0: e1a01004  mov r1, r4
0c013ed4: e3a0304b  mov r3, #0x4b
0c013ed8: e2833c05  add r3, r3, #0x500
0c013edc: e3a00034  mov r0, #0x34
0c013ee0: ebfffd0f  bl 0x0c013324 <jt_reg_write>
0c013ee4: e28dd004  add sp, sp, #0x4
0c013ee8: e3a03002  mov r3, #0x2
0c013eec: e92d0008  stmdb sp!, {r3}
0c013ef0: e1a02005  mov r2, r5
0c013ef4: e1a01004  mov r1, r4
0c013ef8: e3a03f53  mov r3, #0x14c
0c013efc: e2833b01  add r3, r3, #0x400
0c013f00: e3a00034  mov r0, #0x34
0c013f04: ebfffd06  bl 0x0c013324 <jt_reg_write>
0c013f08: e28dd004  add sp, sp, #0x4
0c013f0c: e3a03001  mov r3, #0x1
0c013f10: e92d0008  stmdb sp!, {r3}
0c013f14: e1a02005  mov r2, r5
0c013f18: e1a01004  mov r1, r4
0c013f1c: e3a0304d  mov r3, #0x4d
0c013f20: e2833c05  add r3, r3, #0x500
0c013f24: e3a00034  mov r0, #0x34
0c013f28: ebfffcfd  bl 0x0c013324 <jt_reg_write>
0c013f2c: e28dd004  add sp, sp, #0x4
0c013f30: e3a03002  mov r3, #0x2
0c013f34: e92d0008  stmdb sp!, {r3}
0c013f38: e1a02005  mov r2, r5
0c013f3c: e1a01004  mov r1, r4
0c013f40: e3a0304e  mov r3, #0x4e
0c013f44: e2833c05  add r3, r3, #0x500
0c013f48: e3a00034  mov r0, #0x34
0c013f4c: ebfffcf4  bl 0x0c013324 <jt_reg_write>
0c013f50: e28dd004  add sp, sp, #0x4
0c013f54: e3a03001  mov r3, #0x1
0c013f58: e92d0008  stmdb sp!, {r3}
0c013f5c: e1a02005  mov r2, r5
0c013f60: e1a01004  mov r1, r4
0c013f64: e3a0304f  mov r3, #0x4f
0c013f68: e2833c05  add r3, r3, #0x500
0c013f6c: e3a00034  mov r0, #0x34
0c013f70: ebfffceb  bl 0x0c013324 <jt_reg_write>
0c013f74: e28dd004  add sp, sp, #0x4
0c013f78: e3a03000  mov r3, #0x0
0c013f7c: e92d0008  stmdb sp!, {r3}
0c013f80: e1a02005  mov r2, r5
0c013f84: e1a01004  mov r1, r4
0c013f88: e3a03e55  mov r3, #0x550
0c013f8c: e3a00034  mov r0, #0x34
0c013f90: ebfffce3  bl 0x0c013324 <jt_reg_write>
0c013f94: e28dd004  add sp, sp, #0x4
0c013f98: e3a03001  mov r3, #0x1
0c013f9c: e92d0008  stmdb sp!, {r3}
0c013fa0: e1a02005  mov r2, r5
0c013fa4: e1a01004  mov r1, r4
0c013fa8: e3a03051  mov r3, #0x51
0c013fac: e2833c05  add r3, r3, #0x500
0c013fb0: e3a00034  mov r0, #0x34
0c013fb4: ebfffcda  bl 0x0c013324 <jt_reg_write>
0c013fb8: e28dd004  add sp, sp, #0x4
0c013fbc: e3a03000  mov r3, #0x0
0c013fc0: e92d0008  stmdb sp!, {r3}
0c013fc4: e1a02005  mov r2, r5
0c013fc8: e1a01004  mov r1, r4
0c013fcc: e3a03052  mov r3, #0x52
0c013fd0: e2833c05  add r3, r3, #0x500
0c013fd4: e3a00034  mov r0, #0x34
0c013fd8: ebfffcd1  bl 0x0c013324 <jt_reg_write>
0c013fdc: e28dd004  add sp, sp, #0x4
0c013fe0: e3a03000  mov r3, #0x0
0c013fe4: e92d0008  stmdb sp!, {r3}
0c013fe8: e1a02005  mov r2, r5
0c013fec: e1a01004  mov r1, r4
0c013ff0: e3a03053  mov r3, #0x53
0c013ff4: e2833c05  add r3, r3, #0x500
0c013ff8: e3a00034  mov r0, #0x34
0c013ffc: ebfffcc8  bl 0x0c013324 <jt_reg_write>
0c014000: e28dd004  add sp, sp, #0x4
0c014004: e3a03000  mov r3, #0x0
0c014008: e92d0008  stmdb sp!, {r3}
0c01400c: e1a02005  mov r2, r5
0c014010: e1a01004  mov r1, r4
0c014014: e3a03f55  mov r3, #0x154
0c014018: e2833b01  add r3, r3, #0x400
0c01401c: e3a00034  mov r0, #0x34
0c014020: ebfffcbf  bl 0x0c013324 <jt_reg_write>
0c014024: e28dd004  add sp, sp, #0x4
0c014028: e3a03c03  mov r3, #0x300
0c01402c: e92d0008  stmdb sp!, {r3}
0c014030: e1a02005  mov r2, r5
0c014034: e1a01004  mov r1, r4
0c014038: e3a03055  mov r3, #0x55
0c01403c: e2833c05  add r3, r3, #0x500
0c014040: e3a00034  mov r0, #0x34
0c014044: ebfffcb6  bl 0x0c013324 <jt_reg_write>
0c014048: e28dd004  add sp, sp, #0x4
0c01404c: e3a03001  mov r3, #0x1
0c014050: e92d0008  stmdb sp!, {r3}
0c014054: e1a02005  mov r2, r5
0c014058: e1a01004  mov r1, r4
0c01405c: e3a03056  mov r3, #0x56
0c014060: e2833c05  add r3, r3, #0x500
0c014064: e3a00034  mov r0, #0x34
0c014068: ebfffcad  bl 0x0c013324 <jt_reg_write>
0c01406c: e28dd004  add sp, sp, #0x4
0c014070: e3a03005  mov r3, #0x5
0c014074: e92d0008  stmdb sp!, {r3}
0c014078: e1a02005  mov r2, r5
0c01407c: e1a01004  mov r1, r4
0c014080: e3a03057  mov r3, #0x57
0c014084: e2833c05  add r3, r3, #0x500
0c014088: e3a00034  mov r0, #0x34
0c01408c: ebfffca4  bl 0x0c013324 <jt_reg_write>
0c014090: e28dd004  add sp, sp, #0x4
0c014094: e3a03008  mov r3, #0x8
0c014098: e92d0008  stmdb sp!, {r3}
0c01409c: e1a02005  mov r2, r5
0c0140a0: e1a01004  mov r1, r4
0c0140a4: e3a03f56  mov r3, #0x158
0c0140a8: e2833b01  add r3, r3, #0x400
0c0140ac: e3a00034  mov r0, #0x34
0c0140b0: ebfffc9b  bl 0x0c013324 <jt_reg_write>
0c0140b4: e28dd004  add sp, sp, #0x4
0c0140b8: e3a03002  mov r3, #0x2
0c0140bc: e92d0008  stmdb sp!, {r3}
0c0140c0: e1a02005  mov r2, r5
0c0140c4: e1a01004  mov r1, r4
0c0140c8: e3a03059  mov r3, #0x59
0c0140cc: e2833c05  add r3, r3, #0x500
0c0140d0: e3a00034  mov r0, #0x34
0c0140d4: ebfffc92  bl 0x0c013324 <jt_reg_write>
0c0140d8: e28dd004  add sp, sp, #0x4
0c0140dc: e3a03001  mov r3, #0x1
0c0140e0: e92d0008  stmdb sp!, {r3}
0c0140e4: e1a02005  mov r2, r5
0c0140e8: e1a01004  mov r1, r4
0c0140ec: e3a0305a  mov r3, #0x5a
0c0140f0: e2833c05  add r3, r3, #0x500
0c0140f4: e3a00034  mov r0, #0x34
0c0140f8: ebfffc89  bl 0x0c013324 <jt_reg_write>
0c0140fc: e28dd004  add sp, sp, #0x4
0c014100: e3a03002  mov r3, #0x2
0c014104: e92d0008  stmdb sp!, {r3}
0c014108: e1a02005  mov r2, r5
0c01410c: e1a01004  mov r1, r4
0c014110: e3a0305b  mov r3, #0x5b
0c014114: e2833c05  add r3, r3, #0x500
0c014118: e3a00034  mov r0, #0x34
0c01411c: ebfffc80  bl 0x0c013324 <jt_reg_write>
0c014120: e28dd004  add sp, sp, #0x4
0c014124: e3a03001  mov r3, #0x1
0c014128: e92d0008  stmdb sp!, {r3}
0c01412c: e1a02005  mov r2, r5
0c014130: e1a01004  mov r1, r4
0c014134: e3a03f57  mov r3, #0x15c
0c014138: e2833b01  add r3, r3, #0x400
0c01413c: e3a00034  mov r0, #0x34
0c014140: ebfffc77  bl 0x0c013324 <jt_reg_write>
0c014144: e28dd004  add sp, sp, #0x4
0c014148: e3a03000  mov r3, #0x0
0c01414c: e92d0008  stmdb sp!, {r3}
0c014150: e1a02005  mov r2, r5
0c014154: e1a01004  mov r1, r4
0c014158: e3a0305d  mov r3, #0x5d
0c01415c: e2833c05  add r3, r3, #0x500
0c014160: e3a00034  mov r0, #0x34
0c014164: ebfffc6e  bl 0x0c013324 <jt_reg_write>
0c014168: e28dd004  add sp, sp, #0x4
0c01416c: e59f008c  ldr r0, [pc, #0x8c] =0x0401d868
0c014170: e7903106  ldr r3, [r0, r6, lsl #2]
0c014174: e92d0008  stmdb sp!, {r3}
0c014178: e1a02005  mov r2, r5
0c01417c: e1a01004  mov r1, r4
0c014180: e3a0305e  mov r3, #0x5e
0c014184: e2833c05  add r3, r3, #0x500
0c014188: e3a00034  mov r0, #0x34
0c01418c: ebfffc64  bl 0x0c013324 <jt_reg_write>
0c014190: e28dd004  add sp, sp, #0x4
0c014194: e3a0300c  mov r3, #0xc
0c014198: e92d0008  stmdb sp!, {r3}
0c01419c: e1a02005  mov r2, r5
0c0141a0: e1a01004  mov r1, r4
0c0141a4: e3a0305f  mov r3, #0x5f
0c0141a8: e2833c05  add r3, r3, #0x500
0c0141ac: e3a00034  mov r0, #0x34
0c0141b0: ebfffc5b  bl 0x0c013324 <jt_reg_write>
0c0141b4: e28dd004  add sp, sp, #0x4
0c0141b8: e3a03009  mov r3, #0x9
0c0141bc: e92d0008  stmdb sp!, {r3}
0c0141c0: e1a02005  mov r2, r5
0c0141c4: e1a01004  mov r1, r4
0c0141c8: e3a03e56  mov r3, #0x560
0c0141cc: e3a00034  mov r0, #0x34
0c0141d0: ebfffc53  bl 0x0c013324 <jt_reg_write>
0c0141d4: e28dd004  add sp, sp, #0x4
0c0141d8: e3a03001  mov r3, #0x1
0c0141dc: e92d0008  stmdb sp!, {r3}
0c0141e0: e1a02005  mov r2, r5
0c0141e4: e1a01004  mov r1, r4
0c0141e8: e3a03061  mov r3, #0x61
0c0141ec: e2833c05  add r3, r3, #0x500
0c0141f0: e3a00034  mov r0, #0x34
0c0141f4: ebfffc4a  bl 0x0c013324 <jt_reg_write>
0c0141f8: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c0141fc: eafffd05  b 0x0c013618 <jt_flush>
0c014200: 0401d868  .word 0x0401d868
0c014204: e1a0c00d  mov r12, sp
0c014208: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c01420c: e24cb004  sub r11, r12, #0x4
0c014210: e1a06000  mov r6, r0
0c014214: e1a04001  mov r4, r1
0c014218: e1a05002  mov r5, r2
0c01421c: e2810001  add r0, r1, #0x1
0c014220: e3a03002  mov r3, #0x2
0c014224: e3a01034  mov r1, #0x34
0c014228: ebfffc95  bl 0x0c013484 <fn_0c013484>
0c01422c: e51f0034  ldr r0, [pc, #-0x34] =0x0401d868
0c014230: e7903106  ldr r3, [r0, r6, lsl #2]
0c014234: e92d0008  stmdb sp!, {r3}
0c014238: e1a02005  mov r2, r5
0c01423c: e1a01004  mov r1, r4
0c014240: e3a030fb  mov r3, #0xfb
0c014244: e2833c05  add r3, r3, #0x500
0c014248: e3a00034  mov r0, #0x34
0c01424c: ebfffc34  bl 0x0c013324 <jt_reg_write>
0c014250: e28dd004  add sp, sp, #0x4
0c014254: e3a03003  mov r3, #0x3
0c014258: e92d0008  stmdb sp!, {r3}
0c01425c: e1a02005  mov r2, r5
0c014260: e1a01004  mov r1, r4
0c014264: e3a03f7f  mov r3, #0x1fc
0c014268: e2833b01  add r3, r3, #0x400
0c01426c: e3a00034  mov r0, #0x34
0c014270: ebfffc2b  bl 0x0c013324 <jt_reg_write>
0c014274: e28dd004  add sp, sp, #0x4
0c014278: e3a03009  mov r3, #0x9
0c01427c: e92d0008  stmdb sp!, {r3}
0c014280: e1a02005  mov r2, r5
0c014284: e1a01004  mov r1, r4
0c014288: e3a030fd  mov r3, #0xfd
0c01428c: e2833c05  add r3, r3, #0x500
0c014290: e3a00034  mov r0, #0x34
0c014294: ebfffc22  bl 0x0c013324 <jt_reg_write>
0c014298: e28dd004  add sp, sp, #0x4
0c01429c: e3a03001  mov r3, #0x1
0c0142a0: e92d0008  stmdb sp!, {r3}
0c0142a4: e1a02005  mov r2, r5
0c0142a8: e1a01004  mov r1, r4
0c0142ac: e3a030fe  mov r3, #0xfe
0c0142b0: e2833c05  add r3, r3, #0x500
0c0142b4: e3a00034  mov r0, #0x34
0c0142b8: ebfffc19  bl 0x0c013324 <jt_reg_write>
0c0142bc: e28dd004  add sp, sp, #0x4
0c0142c0: e3a03000  mov r3, #0x0
0c0142c4: e92d0008  stmdb sp!, {r3}
0c0142c8: e1a02005  mov r2, r5
0c0142cc: e1a01004  mov r1, r4
0c0142d0: e3a030ff  mov r3, #0xff
0c0142d4: e2833c05  add r3, r3, #0x500
0c0142d8: e3a00034  mov r0, #0x34
0c0142dc: ebfffc10  bl 0x0c013324 <jt_reg_write>
0c0142e0: e28dd004  add sp, sp, #0x4
0c0142e4: e3a03f86  mov r3, #0x218
0c0142e8: e2833b01  add r3, r3, #0x400
0c0142ec: e92d0008  stmdb sp!, {r3}
0c0142f0: e1a02005  mov r2, r5
0c0142f4: e1a01004  mov r1, r4
0c0142f8: e3a03c06  mov r3, #0x600
0c0142fc: e3a00034  mov r0, #0x34
0c014300: ebfffc07  bl 0x0c013324 <jt_reg_write>
0c014304: e28dd004  add sp, sp, #0x4
0c014308: e3a03000  mov r3, #0x0
0c01430c: e92d0008  stmdb sp!, {r3}
0c014310: e1a02005  mov r2, r5
0c014314: e1a01004  mov r1, r4
0c014318: e3a03001  mov r3, #0x1
0c01431c: e2833c06  add r3, r3, #0x600
0c014320: e3a00034  mov r0, #0x34
0c014324: ebfffbfe  bl 0x0c013324 <jt_reg_write>
0c014328: e28dd004  add sp, sp, #0x4
0c01432c: e3a03001  mov r3, #0x1
0c014330: e92d0008  stmdb sp!, {r3}
0c014334: e1a02005  mov r2, r5
0c014338: e1a01004  mov r1, r4
0c01433c: e3a03002  mov r3, #0x2
0c014340: e2833c06  add r3, r3, #0x600
0c014344: e3a00034  mov r0, #0x34
0c014348: ebfffbf5  bl 0x0c013324 <jt_reg_write>
0c01434c: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c014350: eafffcb0  b 0x0c013618 <jt_flush>
0c014354: e1a0c00d  mov r12, sp
0c014358: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c01435c: e24cb004  sub r11, r12, #0x4
0c014360: e1a06000  mov r6, r0
0c014364: e1a04001  mov r4, r1
0c014368: e1a05002  mov r5, r2
0c01436c: e2810001  add r0, r1, #0x1
0c014370: e3a03002  mov r3, #0x2
0c014374: e3a01039  mov r1, #0x39
0c014378: ebfffc41  bl 0x0c013484 <fn_0c013484>
0c01437c: e51f0184  ldr r0, [pc, #-0x184] =0x0401d868
0c014380: e7903106  ldr r3, [r0, r6, lsl #2]
0c014384: e92d0008  stmdb sp!, {r3}
0c014388: e1a02005  mov r2, r5
0c01438c: e1a01004  mov r1, r4
0c014390: e3a030af  mov r3, #0xaf
0c014394: e2833c06  add r3, r3, #0x600
0c014398: e3a00039  mov r0, #0x39
0c01439c: ebfffbe0  bl 0x0c013324 <jt_reg_write>
0c0143a0: e28dd004  add sp, sp, #0x4
0c0143a4: e3a0300c  mov r3, #0xc
0c0143a8: e92d0008  stmdb sp!, {r3}
0c0143ac: e1a02005  mov r2, r5
0c0143b0: e1a01004  mov r1, r4
0c0143b4: e3a03e6b  mov r3, #0x6b0
0c0143b8: e3a00039  mov r0, #0x39
0c0143bc: ebfffbd8  bl 0x0c013324 <jt_reg_write>
0c0143c0: e28dd004  add sp, sp, #0x4
0c0143c4: e3a03009  mov r3, #0x9
0c0143c8: e92d0008  stmdb sp!, {r3}
0c0143cc: e1a02005  mov r2, r5
0c0143d0: e1a01004  mov r1, r4
0c0143d4: e3a030b1  mov r3, #0xb1
0c0143d8: e2833c06  add r3, r3, #0x600
0c0143dc: e3a00039  mov r0, #0x39
0c0143e0: ebfffbcf  bl 0x0c013324 <jt_reg_write>
0c0143e4: e28dd004  add sp, sp, #0x4
0c0143e8: e3a03001  mov r3, #0x1
0c0143ec: e92d0008  stmdb sp!, {r3}
0c0143f0: e1a02005  mov r2, r5
0c0143f4: e1a01004  mov r1, r4
0c0143f8: e3a030b2  mov r3, #0xb2
0c0143fc: e2833c06  add r3, r3, #0x600
0c014400: e3a00039  mov r0, #0x39
0c014404: ebfffbc6  bl 0x0c013324 <jt_reg_write>
0c014408: e28dd004  add sp, sp, #0x4
0c01440c: e3a03001  mov r3, #0x1
0c014410: e92d0008  stmdb sp!, {r3}
0c014414: e1a02005  mov r2, r5
0c014418: e1a01004  mov r1, r4
0c01441c: e3a030b3  mov r3, #0xb3
0c014420: e2833c06  add r3, r3, #0x600
0c014424: e3a00039  mov r0, #0x39
0c014428: ebfffbbd  bl 0x0c013324 <jt_reg_write>
0c01442c: e28dd004  add sp, sp, #0x4
0c014430: e3a03006  mov r3, #0x6
0c014434: e92d0008  stmdb sp!, {r3}
0c014438: e1a02005  mov r2, r5
0c01443c: e1a01004  mov r1, r4
0c014440: e3a03fad  mov r3, #0x2b4
0c014444: e2833b01  add r3, r3, #0x400
0c014448: e3a00039  mov r0, #0x39
0c01444c: ebfffbb4  bl 0x0c013324 <jt_reg_write>
0c014450: e28dd004  add sp, sp, #0x4
0c014454: e3a03000  mov r3, #0x0
0c014458: e92d0008  stmdb sp!, {r3}
0c01445c: e1a02005  mov r2, r5
0c014460: e1a01004  mov r1, r4
0c014464: e3a030b5  mov r3, #0xb5
0c014468: e2833c06  add r3, r3, #0x600
0c01446c: e3a00039  mov r0, #0x39
0c014470: ebfffbab  bl 0x0c013324 <jt_reg_write>
0c014474: e28dd004  add sp, sp, #0x4
0c014478: e3a03b01  mov r3, #0x400
0c01447c: e92d0008  stmdb sp!, {r3}
0c014480: e1a02005  mov r2, r5
0c014484: e1a01004  mov r1, r4
0c014488: e3a030b6  mov r3, #0xb6
0c01448c: e2833c06  add r3, r3, #0x600
0c014490: e3a00039  mov r0, #0x39
0c014494: ebfffba2  bl 0x0c013324 <jt_reg_write>
0c014498: e28dd004  add sp, sp, #0x4
0c01449c: e3a03001  mov r3, #0x1
0c0144a0: e92d0008  stmdb sp!, {r3}
0c0144a4: e1a02005  mov r2, r5
0c0144a8: e1a01004  mov r1, r4
0c0144ac: e3a030b7  mov r3, #0xb7
0c0144b0: e2833c06  add r3, r3, #0x600
0c0144b4: e3a00039  mov r0, #0x39
0c0144b8: ebfffb99  bl 0x0c013324 <jt_reg_write>
0c0144bc: e28dd004  add sp, sp, #0x4
0c0144c0: e3a03006  mov r3, #0x6
0c0144c4: e92d0008  stmdb sp!, {r3}
0c0144c8: e1a02005  mov r2, r5
0c0144cc: e1a01004  mov r1, r4
0c0144d0: e3a03fae  mov r3, #0x2b8
0c0144d4: e2833b01  add r3, r3, #0x400
0c0144d8: e3a00039  mov r0, #0x39
0c0144dc: ebfffb90  bl 0x0c013324 <jt_reg_write>
0c0144e0: e28dd004  add sp, sp, #0x4
0c0144e4: e3a0300a  mov r3, #0xa
0c0144e8: e92d0008  stmdb sp!, {r3}
0c0144ec: e1a02005  mov r2, r5
0c0144f0: e1a01004  mov r1, r4
0c0144f4: e3a030b9  mov r3, #0xb9
0c0144f8: e2833c06  add r3, r3, #0x600
0c0144fc: e3a00039  mov r0, #0x39
0c014500: ebfffb87  bl 0x0c013324 <jt_reg_write>
0c014504: e28dd004  add sp, sp, #0x4
0c014508: e3a03003  mov r3, #0x3
0c01450c: e92d0008  stmdb sp!, {r3}
0c014510: e1a02005  mov r2, r5
0c014514: e1a01004  mov r1, r4
0c014518: e3a030ba  mov r3, #0xba
0c01451c: e2833c06  add r3, r3, #0x600
0c014520: e3a00039  mov r0, #0x39
0c014524: ebfffb7e  bl 0x0c013324 <jt_reg_write>
0c014528: e28dd004  add sp, sp, #0x4
0c01452c: e3a03003  mov r3, #0x3
0c014530: e92d0008  stmdb sp!, {r3}
0c014534: e1a02005  mov r2, r5
0c014538: e1a01004  mov r1, r4
0c01453c: e3a030bb  mov r3, #0xbb
0c014540: e2833c06  add r3, r3, #0x600
0c014544: e3a00039  mov r0, #0x39
0c014548: ebfffb75  bl 0x0c013324 <jt_reg_write>
0c01454c: e28dd004  add sp, sp, #0x4
0c014550: e3a03002  mov r3, #0x2
0c014554: e92d0008  stmdb sp!, {r3}
0c014558: e1a02005  mov r2, r5
0c01455c: e1a01004  mov r1, r4
0c014560: e3a03faf  mov r3, #0x2bc
0c014564: e2833b01  add r3, r3, #0x400
0c014568: e3a00039  mov r0, #0x39
0c01456c: ebfffb6c  bl 0x0c013324 <jt_reg_write>
0c014570: e28dd004  add sp, sp, #0x4
0c014574: e3a03002  mov r3, #0x2
0c014578: e92d0008  stmdb sp!, {r3}
0c01457c: e1a02005  mov r2, r5
0c014580: e1a01004  mov r1, r4
0c014584: e3a030bd  mov r3, #0xbd
0c014588: e2833c06  add r3, r3, #0x600
0c01458c: e3a00039  mov r0, #0x39
0c014590: ebfffb63  bl 0x0c013324 <jt_reg_write>
0c014594: e28dd004  add sp, sp, #0x4
0c014598: e3a03001  mov r3, #0x1
0c01459c: e92d0008  stmdb sp!, {r3}
0c0145a0: e1a02005  mov r2, r5
0c0145a4: e1a01004  mov r1, r4
0c0145a8: e3a03d1b  mov r3, #0x6c0
0c0145ac: e3a00039  mov r0, #0x39
0c0145b0: ebfffb5b  bl 0x0c013324 <jt_reg_write>
0c0145b4: e28dd004  add sp, sp, #0x4
0c0145b8: e3a03000  mov r3, #0x0
0c0145bc: e92d0008  stmdb sp!, {r3}
0c0145c0: e1a02005  mov r2, r5
0c0145c4: e1a01004  mov r1, r4
0c0145c8: e3a030bf  mov r3, #0xbf
0c0145cc: e2833c06  add r3, r3, #0x600
0c0145d0: e3a00039  mov r0, #0x39
0c0145d4: ebfffb52  bl 0x0c013324 <jt_reg_write>
0c0145d8: e28dd004  add sp, sp, #0x4
0c0145dc: e3a03000  mov r3, #0x0
0c0145e0: e92d0008  stmdb sp!, {r3}
0c0145e4: e1a02005  mov r2, r5
0c0145e8: e1a01004  mov r1, r4
0c0145ec: e3a030be  mov r3, #0xbe
0c0145f0: e2833c06  add r3, r3, #0x600
0c0145f4: e3a00039  mov r0, #0x39
0c0145f8: ebfffb49  bl 0x0c013324 <jt_reg_write>
0c0145fc: e28dd004  add sp, sp, #0x4
0c014600: e3a03001  mov r3, #0x1
0c014604: e92d0008  stmdb sp!, {r3}
0c014608: e1a02005  mov r2, r5
0c01460c: e1a01004  mov r1, r4
0c014610: e3a030c3  mov r3, #0xc3
0c014614: e2833c06  add r3, r3, #0x600
0c014618: e3a00039  mov r0, #0x39
0c01461c: ebfffb40  bl 0x0c013324 <jt_reg_write>
0c014620: e28dd004  add sp, sp, #0x4
0c014624: e3a03001  mov r3, #0x1
0c014628: e92d0008  stmdb sp!, {r3}
0c01462c: e1a02005  mov r2, r5
0c014630: e1a01004  mov r1, r4
0c014634: e3a030c2  mov r3, #0xc2
0c014638: e2833c06  add r3, r3, #0x600
0c01463c: e3a00039  mov r0, #0x39
0c014640: ebfffb37  bl 0x0c013324 <jt_reg_write>
0c014644: e28dd004  add sp, sp, #0x4
0c014648: e3a03000  mov r3, #0x0
0c01464c: e92d0008  stmdb sp!, {r3}
0c014650: e1a02005  mov r2, r5
0c014654: e1a01004  mov r1, r4
0c014658: e3a030c1  mov r3, #0xc1
0c01465c: e2833c06  add r3, r3, #0x600
0c014660: e3a00039  mov r0, #0x39
0c014664: ebfffb2e  bl 0x0c013324 <jt_reg_write>
0c014668: e28dd004  add sp, sp, #0x4
0c01466c: e3a03000  mov r3, #0x0
0c014670: e92d0008  stmdb sp!, {r3}
0c014674: e1a02005  mov r2, r5
0c014678: e1a01004  mov r1, r4
0c01467c: e3a030c6  mov r3, #0xc6
0c014680: e2833c06  add r3, r3, #0x600
0c014684: e3a00039  mov r0, #0x39
0c014688: ebfffb25  bl 0x0c013324 <jt_reg_write>
0c01468c: e28dd004  add sp, sp, #0x4
0c014690: e3a03000  mov r3, #0x0
0c014694: e92d0008  stmdb sp!, {r3}
0c014698: e1a02005  mov r2, r5
0c01469c: e1a01004  mov r1, r4
0c0146a0: e3a030c5  mov r3, #0xc5
0c0146a4: e2833c06  add r3, r3, #0x600
0c0146a8: e3a00039  mov r0, #0x39
0c0146ac: ebfffb1c  bl 0x0c013324 <jt_reg_write>
0c0146b0: e28dd004  add sp, sp, #0x4
0c0146b4: e3a03000  mov r3, #0x0
0c0146b8: e92d0008  stmdb sp!, {r3}
0c0146bc: e1a02005  mov r2, r5
0c0146c0: e1a01004  mov r1, r4
0c0146c4: e3a03fb1  mov r3, #0x2c4
0c0146c8: e2833b01  add r3, r3, #0x400
0c0146cc: e3a00039  mov r0, #0x39
0c0146d0: ebfffb13  bl 0x0c013324 <jt_reg_write>
0c0146d4: e91b6870  ldmdb r11, {r4,r5,r6,r11,sp,lr}
0c0146d8: eafffbce  b 0x0c013618 <jt_flush>
fn_0c0146dc:
0c0146dc: e1a0c00d  mov r12, sp
0c0146e0: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c0146e4: e24cb004  sub r11, r12, #0x4
0c0146e8: e24dd018  sub sp, sp, #0x18
0c0146ec: e3a00001  mov r0, #0x1
0c0146f0: e58d000c  str r0, [sp, #0xc]
0c0146f4: e3a00004  mov r0, #0x4
0c0146f8: e58d0008  str r0, [sp, #0x8]
0c0146fc: e3a00008  mov r0, #0x8
0c014700: e58d0004  str r0, [sp, #0x4]
0c014704: e51f1f6c  ldr r1, [pc, #-0xf6c] =0x0406f70c
0c014708: e3a07000  mov r7, #0x0
0c01470c: e5912000  ldr r2, [r1, #0x0]
0c014710: e5916058  ldr r6, [r1, #0x58]
0c014714: e59f0030  ldr r0, [pc, #0x30] =0x0401d960
0c014718: e3320002  teq r2, #0x2
0c01471c: 059f202c  ldreq r2, [pc, #0x2c] =0x0c014204
0c014720: 050020e4  streq r2, [r0, #-0xe4]
0c014724: 03a0200a  moveq r2, #0xa
0c014728: 0a00000d  beq 0x0c014764
0c01472c: e3320006  teq r2, #0x6
0c014730: 1a000008  bne 0x0c014758
0c014734: e59f2018  ldr r2, [pc, #0x18] =0x0c014354
0c014738: e50020e4  str r2, [r0, #-0xe4]
0c01473c: e3a0200a  mov r2, #0xa
0c014740: e3a07001  mov r7, #0x1
0c014744: e58d2000  str r2, [sp, #0x0]
0c014748: ea000006  b 0x0c014768
0c01474c: 0401d960  .word 0x0401d960
0c014750: 0c014204  .word 0x0c014204
0c014754: 0c014354  .word 0x0c014354
0c014758: e59f2078  ldr r2, [pc, #0x78] =0x0c0139b8
0c01475c: e50020e4  str r2, [r0, #-0xe4]
0c014760: e3a02014  mov r2, #0x14
0c014764: e58d2000  str r2, [sp, #0x0]
0c014768: e3a04000  mov r4, #0x0
0c01476c: e3560000  cmp r6, #0x0
0c014770: da00036a  ble 0x0c015520
0c014774: e3370000  teq r7, #0x0
0c014778: e2840001  add r0, r4, #0x1
0c01477c: e3a03002  mov r3, #0x2
0c014780: e3a02000  mov r2, #0x0
0c014784: 1a000015  bne 0x0c0147e0
0c014788: e3a01030  mov r1, #0x30
0c01478c: ebfffb3c  bl 0x0c013484 <fn_0c013484>
0c014790: e59f0044  ldr r0, [pc, #0x44] =0x0401d880
0c014794: e7900106  ldr r0, [r0, r6, lsl #2]
0c014798: e1843100  orr r3, r4, r0, lsl #2
0c01479c: e92d0008  stmdb sp!, {r3}
0c0147a0: e1a01004  mov r1, r4
0c0147a4: e3a0300b  mov r3, #0xb
0c0147a8: e2833c03  add r3, r3, #0x300
0c0147ac: e3a02000  mov r2, #0x0
0c0147b0: e3a00030  mov r0, #0x30
0c0147b4: ebfffada  bl 0x0c013324 <jt_reg_write>
0c0147b8: e28dd004  add sp, sp, #0x4
0c0147bc: e3a0300d  mov r3, #0xd
0c0147c0: e92d0008  stmdb sp!, {r3}
0c0147c4: e1a01004  mov r1, r4
0c0147c8: e3a03fc3  mov r3, #0x30c
0c0147cc: e3a02000  mov r2, #0x0
0c0147d0: e3a00030  mov r0, #0x30
0c0147d4: ea00004a  b 0x0c014904
0c0147d8: 0c0139b8  .word 0x0c0139b8
0c0147dc: 0401d880  .word 0x0401d880
0c0147e0: e3a01035  mov r1, #0x35
0c0147e4: ebfffb26  bl 0x0c013484 <fn_0c013484>
0c0147e8: e51f0014  ldr r0, [pc, #-0x14] =0x0401d880
0c0147ec: e7900106  ldr r0, [r0, r6, lsl #2]
0c0147f0: e1843100  orr r3, r4, r0, lsl #2
0c0147f4: e92d0008  stmdb sp!, {r3}
0c0147f8: e1a01004  mov r1, r4
0c0147fc: e3a0301a  mov r3, #0x1a
0c014800: e2833c09  add r3, r3, #0x900
0c014804: e3a02000  mov r2, #0x0
0c014808: e3a00035  mov r0, #0x35
0c01480c: ebfffac4  bl 0x0c013324 <jt_reg_write>
0c014810: e28dd004  add sp, sp, #0x4
0c014814: e3a0300d  mov r3, #0xd
0c014818: e92d0008  stmdb sp!, {r3}
0c01481c: e1a01004  mov r1, r4
0c014820: e3a0301b  mov r3, #0x1b
0c014824: e2833c09  add r3, r3, #0x900
0c014828: e3a02000  mov r2, #0x0
0c01482c: e3a00035  mov r0, #0x35
0c014830: ebfffabb  bl 0x0c013324 <jt_reg_write>
0c014834: e28dd004  add sp, sp, #0x4
0c014838: e3a03001  mov r3, #0x1
0c01483c: e92d0008  stmdb sp!, {r3}
0c014840: e1a01004  mov r1, r4
0c014844: e3a0301e  mov r3, #0x1e
0c014848: e2833c09  add r3, r3, #0x900
0c01484c: e3a02000  mov r2, #0x0
0c014850: e3a00035  mov r0, #0x35
0c014854: ebfffab2  bl 0x0c013324 <jt_reg_write>
0c014858: e28dd004  add sp, sp, #0x4
0c01485c: e3a03000  mov r3, #0x0
0c014860: e92d0008  stmdb sp!, {r3}
0c014864: e1a01004  mov r1, r4
0c014868: e3a03021  mov r3, #0x21
0c01486c: e2833c09  add r3, r3, #0x900
0c014870: e3a02000  mov r2, #0x0
0c014874: e3a00035  mov r0, #0x35
0c014878: ebfffaa9  bl 0x0c013324 <jt_reg_write>
0c01487c: e28dd004  add sp, sp, #0x4
0c014880: e3a03000  mov r3, #0x0
0c014884: e92d0008  stmdb sp!, {r3}
0c014888: e1a01004  mov r1, r4
0c01488c: e3a0301d  mov r3, #0x1d
0c014890: e2833c09  add r3, r3, #0x900
0c014894: e3a02000  mov r2, #0x0
0c014898: e3a00035  mov r0, #0x35
0c01489c: ebfffaa0  bl 0x0c013324 <jt_reg_write>
0c0148a0: e28dd004  add sp, sp, #0x4
0c0148a4: e3a03000  mov r3, #0x0
0c0148a8: e92d0008  stmdb sp!, {r3}
0c0148ac: e1a01004  mov r1, r4
0c0148b0: e3a03f47  mov r3, #0x11c
0c0148b4: e2833b02  add r3, r3, #0x800
0c0148b8: e3a02000  mov r2, #0x0
0c0148bc: e3a00035  mov r0, #0x35
0c0148c0: ebfffa97  bl 0x0c013324 <jt_reg_write>
0c0148c4: e28dd004  add sp, sp, #0x4
0c0148c8: e3a03000  mov r3, #0x0
0c0148cc: e92d0008  stmdb sp!, {r3}
0c0148d0: e1a01004  mov r1, r4
0c0148d4: e3a03e92  mov r3, #0x920
0c0148d8: e3a02000  mov r2, #0x0
0c0148dc: e3a00035  mov r0, #0x35
0c0148e0: ebfffa8f  bl 0x0c013324 <jt_reg_write>
0c0148e4: e28dd004  add sp, sp, #0x4
0c0148e8: e3a03000  mov r3, #0x0
0c0148ec: e92d0008  stmdb sp!, {r3}
0c0148f0: e1a01004  mov r1, r4
0c0148f4: e3a0301f  mov r3, #0x1f
0c0148f8: e2833c09  add r3, r3, #0x900
0c0148fc: e3a02000  mov r2, #0x0
0c014900: e3a00035  mov r0, #0x35
0c014904: ebfffa86  bl 0x0c013324 <jt_reg_write>
0c014908: e28dd004  add sp, sp, #0x4
0c01490c: ebfffb41  bl 0x0c013618 <jt_flush>
0c014910: e59d000c  ldr r0, [sp, #0xc]
0c014914: e3500000  cmp r0, #0x0
0c014918: da000063  ble 0x0c014aac
0c01491c: e3370000  teq r7, #0x0
0c014920: e2840001  add r0, r4, #0x1
0c014924: e3a03002  mov r3, #0x2
0c014928: e3a02000  mov r2, #0x0
0c01492c: 1a000012  bne 0x0c01497c
0c014930: e3a01031  mov r1, #0x31
0c014934: ebfffad2  bl 0x0c013484 <fn_0c013484>
0c014938: e51f0740  ldr r0, [pc, #-0x740] =0x0401d868
0c01493c: e7903106  ldr r3, [r0, r6, lsl #2]
0c014940: e92d0008  stmdb sp!, {r3}
0c014944: e1a01004  mov r1, r4
0c014948: e3a03067  mov r3, #0x67
0c01494c: e2833c03  add r3, r3, #0x300
0c014950: e3a02000  mov r2, #0x0
0c014954: e3a00031  mov r0, #0x31
0c014958: ebfffa71  bl 0x0c013324 <jt_reg_write>
0c01495c: e28dd004  add sp, sp, #0x4
0c014960: e1a03004  mov r3, r4
0c014964: e92d0008  stmdb sp!, {r3}
0c014968: e1a01004  mov r1, r4
0c01496c: e3a03fda  mov r3, #0x368
0c014970: e3a02000  mov r2, #0x0
0c014974: e3a00031  mov r0, #0x31
0c014978: ea000048  b 0x0c014aa0
0c01497c: e3a01036  mov r1, #0x36
0c014980: ebfffabf  bl 0x0c013484 <fn_0c013484>
0c014984: e51f078c  ldr r0, [pc, #-0x78c] =0x0401d868
0c014988: e7903106  ldr r3, [r0, r6, lsl #2]
0c01498c: e92d0008  stmdb sp!, {r3}
0c014990: e1a01004  mov r1, r4
0c014994: e3a03012  mov r3, #0x12
0c014998: e2833c0a  add r3, r3, #0xa00
0c01499c: e3a02000  mov r2, #0x0
0c0149a0: e3a00036  mov r0, #0x36
0c0149a4: ebfffa5e  bl 0x0c013324 <jt_reg_write>
0c0149a8: e28dd004  add sp, sp, #0x4
0c0149ac: e1a03004  mov r3, r4
0c0149b0: e92d0008  stmdb sp!, {r3}
0c0149b4: e1a01004  mov r1, r4
0c0149b8: e3a03013  mov r3, #0x13
0c0149bc: e2833c0a  add r3, r3, #0xa00
0c0149c0: e3a02000  mov r2, #0x0
0c0149c4: e3a00036  mov r0, #0x36
0c0149c8: ebfffa55  bl 0x0c013324 <jt_reg_write>
0c0149cc: e28dd004  add sp, sp, #0x4
0c0149d0: e3a03001  mov r3, #0x1
0c0149d4: e92d0008  stmdb sp!, {r3}
0c0149d8: e1a01004  mov r1, r4
0c0149dc: e3a03016  mov r3, #0x16
0c0149e0: e2833c0a  add r3, r3, #0xa00
0c0149e4: e3a02000  mov r2, #0x0
0c0149e8: e3a00036  mov r0, #0x36
0c0149ec: ebfffa4c  bl 0x0c013324 <jt_reg_write>
0c0149f0: e28dd004  add sp, sp, #0x4
0c0149f4: e3a03000  mov r3, #0x0
0c0149f8: e92d0008  stmdb sp!, {r3}
0c0149fc: e1a01004  mov r1, r4
0c014a00: e3a03019  mov r3, #0x19
0c014a04: e2833c0a  add r3, r3, #0xa00
0c014a08: e3a02000  mov r2, #0x0
0c014a0c: e3a00036  mov r0, #0x36
0c014a10: ebfffa43  bl 0x0c013324 <jt_reg_write>
0c014a14: e28dd004  add sp, sp, #0x4
0c014a18: e3a03000  mov r3, #0x0
0c014a1c: e92d0008  stmdb sp!, {r3}
0c014a20: e1a01004  mov r1, r4
0c014a24: e3a03015  mov r3, #0x15
0c014a28: e2833c0a  add r3, r3, #0xa00
0c014a2c: e3a02000  mov r2, #0x0
0c014a30: e3a00036  mov r0, #0x36
0c014a34: ebfffa3a  bl 0x0c013324 <jt_reg_write>
0c014a38: e28dd004  add sp, sp, #0x4
0c014a3c: e3a03000  mov r3, #0x0
0c014a40: e92d0008  stmdb sp!, {r3}
0c014a44: e1a01004  mov r1, r4
0c014a48: e3a03f85  mov r3, #0x214
0c014a4c: e2833b02  add r3, r3, #0x800
0c014a50: e3a02000  mov r2, #0x0
0c014a54: e3a00036  mov r0, #0x36
0c014a58: ebfffa31  bl 0x0c013324 <jt_reg_write>
0c014a5c: e28dd004  add sp, sp, #0x4
0c014a60: e3a03000  mov r3, #0x0
0c014a64: e92d0008  stmdb sp!, {r3}
0c014a68: e1a01004  mov r1, r4
0c014a6c: e3a03f86  mov r3, #0x218
0c014a70: e2833b02  add r3, r3, #0x800
0c014a74: e3a02000  mov r2, #0x0
0c014a78: e3a00036  mov r0, #0x36
0c014a7c: ebfffa28  bl 0x0c013324 <jt_reg_write>
0c014a80: e28dd004  add sp, sp, #0x4
0c014a84: e3a03000  mov r3, #0x0
0c014a88: e92d0008  stmdb sp!, {r3}
0c014a8c: e1a01004  mov r1, r4
0c014a90: e3a03017  mov r3, #0x17
0c014a94: e2833c0a  add r3, r3, #0xa00
0c014a98: e3a02000  mov r2, #0x0
0c014a9c: e3a00036  mov r0, #0x36
0c014aa0: ebfffa1f  bl 0x0c013324 <jt_reg_write>
0c014aa4: e28dd004  add sp, sp, #0x4
0c014aa8: ebfffada  bl 0x0c013618 <jt_flush>
0c014aac: e3a05000  mov r5, #0x0
0c014ab0: e59d0008  ldr r0, [sp, #0x8]
0c014ab4: e3500000  cmp r0, #0x0
0c014ab8: da0000eb  ble 0x0c014e6c
0c014abc: e0861004  add r1, r6, r4
0c014ac0: e59f2168  ldr r2, [pc, #0x168] =0x0401d894
0c014ac4: e082a201  add r10, r2, r1, lsl #4
0c014ac8: e2840001  add r0, r4, #0x1
0c014acc: e58d0014  str r0, [sp, #0x14]
0c014ad0: e3370000  teq r7, #0x0
0c014ad4: e1a02005  mov r2, r5
0c014ad8: e3a03002  mov r3, #0x2
0c014adc: e59d0014  ldr r0, [sp, #0x14]
0c014ae0: 1a000053  bne 0x0c014c34
0c014ae4: e3a01033  mov r1, #0x33
0c014ae8: ebfffa65  bl 0x0c013484 <fn_0c013484>
0c014aec: e3a03078  mov r3, #0x78
0c014af0: e92d0008  stmdb sp!, {r3}
0c014af4: e1a02005  mov r2, r5
0c014af8: e1a01004  mov r1, r4
0c014afc: e3a030a1  mov r3, #0xa1
0c014b00: e2833b01  add r3, r3, #0x400
0c014b04: e3a00033  mov r0, #0x33
0c014b08: ebfffa05  bl 0x0c013324 <jt_reg_write>
0c014b0c: e28dd004  add sp, sp, #0x4
0c014b10: e3a03026  mov r3, #0x26
0c014b14: e92d0008  stmdb sp!, {r3}
0c014b18: e1a02005  mov r2, r5
0c014b1c: e1a01004  mov r1, r4
0c014b20: e3a030a2  mov r3, #0xa2
0c014b24: e2833b01  add r3, r3, #0x400
0c014b28: e3a00033  mov r0, #0x33
0c014b2c: ebfff9fc  bl 0x0c013324 <jt_reg_write>
0c014b30: e28dd004  add sp, sp, #0x4
0c014b34: e3a03018  mov r3, #0x18
0c014b38: e92d0008  stmdb sp!, {r3}
0c014b3c: e1a02005  mov r2, r5
0c014b40: e1a01004  mov r1, r4
0c014b44: e3a030a3  mov r3, #0xa3
0c014b48: e2833b01  add r3, r3, #0x400
0c014b4c: e3a00033  mov r0, #0x33
0c014b50: ebfff9f3  bl 0x0c013324 <jt_reg_write>
0c014b54: e28dd004  add sp, sp, #0x4
0c014b58: e3a03038  mov r3, #0x38
0c014b5c: e92d0008  stmdb sp!, {r3}
0c014b60: e1a02005  mov r2, r5
0c014b64: e1a01004  mov r1, r4
0c014b68: e3a030a4  mov r3, #0xa4
0c014b6c: e2833b01  add r3, r3, #0x400
0c014b70: e3a00033  mov r0, #0x33
0c014b74: ebfff9ea  bl 0x0c013324 <jt_reg_write>
0c014b78: e28dd004  add sp, sp, #0x4
0c014b7c: e3a03024  mov r3, #0x24
0c014b80: e92d0008  stmdb sp!, {r3}
0c014b84: e1a02005  mov r2, r5
0c014b88: e1a01004  mov r1, r4
0c014b8c: e3a030a5  mov r3, #0xa5
0c014b90: e2833b01  add r3, r3, #0x400
0c014b94: e3a00033  mov r0, #0x33
0c014b98: ebfff9e1  bl 0x0c013324 <jt_reg_write>
0c014b9c: e28dd004  add sp, sp, #0x4
0c014ba0: e3a03014  mov r3, #0x14
0c014ba4: e92d0008  stmdb sp!, {r3}
0c014ba8: e1a02005  mov r2, r5
0c014bac: e1a01004  mov r1, r4
0c014bb0: e3a030a6  mov r3, #0xa6
0c014bb4: e2833b01  add r3, r3, #0x400
0c014bb8: e3a00033  mov r0, #0x33
0c014bbc: ebfff9d8  bl 0x0c013324 <jt_reg_write>
0c014bc0: e28dd004  add sp, sp, #0x4
0c014bc4: e79a3105  ldr r3, [r10, r5, lsl #2]
0c014bc8: e92d0008  stmdb sp!, {r3}
0c014bcc: e1a02005  mov r2, r5
0c014bd0: e1a01004  mov r1, r4
0c014bd4: e3a030a7  mov r3, #0xa7
0c014bd8: e2833b01  add r3, r3, #0x400
0c014bdc: e3a00033  mov r0, #0x33
0c014be0: ebfff9cf  bl 0x0c013324 <jt_reg_write>
0c014be4: e28dd004  add sp, sp, #0x4
0c014be8: e1a03004  mov r3, r4
0c014bec: e92d0008  stmdb sp!, {r3}
0c014bf0: e1a02005  mov r2, r5
0c014bf4: e1a01004  mov r1, r4
0c014bf8: e3a030a8  mov r3, #0xa8
0c014bfc: e2833b01  add r3, r3, #0x400
0c014c00: e3a00033  mov r0, #0x33
0c014c04: ebfff9c6  bl 0x0c013324 <jt_reg_write>
0c014c08: e28dd004  add sp, sp, #0x4
0c014c0c: e51f0a14  ldr r0, [pc, #-0xa14] =0x0401d868
0c014c10: e7903106  ldr r3, [r0, r6, lsl #2]
0c014c14: e92d0008  stmdb sp!, {r3}
0c014c18: e1a02005  mov r2, r5
0c014c1c: e1a01004  mov r1, r4
0c014c20: e3a030a9  mov r3, #0xa9
0c014c24: e2833b01  add r3, r3, #0x400
0c014c28: e3a00033  mov r0, #0x33
0c014c2c: ea000087  b 0x0c014e50
0c014c30: 0401d894  .word 0x0401d894
0c014c34: e3a01038  mov r1, #0x38
0c014c38: ebfffa11  bl 0x0c013484 <fn_0c013484>
0c014c3c: e3a03078  mov r3, #0x78
0c014c40: e92d0008  stmdb sp!, {r3}
0c014c44: e1a02005  mov r2, r5
0c014c48: e1a01004  mov r1, r4
0c014c4c: e3a0308a  mov r3, #0x8a
0c014c50: e2833c09  add r3, r3, #0x900
0c014c54: e3a00038  mov r0, #0x38
0c014c58: ebfff9b1  bl 0x0c013324 <jt_reg_write>
0c014c5c: e28dd004  add sp, sp, #0x4
0c014c60: e3a03026  mov r3, #0x26
0c014c64: e92d0008  stmdb sp!, {r3}
0c014c68: e1a02005  mov r2, r5
0c014c6c: e1a01004  mov r1, r4
0c014c70: e3a0308b  mov r3, #0x8b
0c014c74: e2833c09  add r3, r3, #0x900
0c014c78: e3a00038  mov r0, #0x38
0c014c7c: ebfff9a8  bl 0x0c013324 <jt_reg_write>
0c014c80: e28dd004  add sp, sp, #0x4
0c014c84: e3a03018  mov r3, #0x18
0c014c88: e92d0008  stmdb sp!, {r3}
0c014c8c: e1a02005  mov r2, r5
0c014c90: e1a01004  mov r1, r4
0c014c94: e3a03f63  mov r3, #0x18c
0c014c98: e2833b02  add r3, r3, #0x800
0c014c9c: e3a00038  mov r0, #0x38
0c014ca0: ebfff99f  bl 0x0c013324 <jt_reg_write>
0c014ca4: e28dd004  add sp, sp, #0x4
0c014ca8: e3a03038  mov r3, #0x38
0c014cac: e92d0008  stmdb sp!, {r3}
0c014cb0: e1a02005  mov r2, r5
0c014cb4: e1a01004  mov r1, r4
0c014cb8: e3a0308d  mov r3, #0x8d
0c014cbc: e2833c09  add r3, r3, #0x900
0c014cc0: e3a00038  mov r0, #0x38
0c014cc4: ebfff996  bl 0x0c013324 <jt_reg_write>
0c014cc8: e28dd004  add sp, sp, #0x4
0c014ccc: e3a03024  mov r3, #0x24
0c014cd0: e92d0008  stmdb sp!, {r3}
0c014cd4: e1a02005  mov r2, r5
0c014cd8: e1a01004  mov r1, r4
0c014cdc: e3a0308e  mov r3, #0x8e
0c014ce0: e2833c09  add r3, r3, #0x900
0c014ce4: e3a00038  mov r0, #0x38
0c014ce8: ebfff98d  bl 0x0c013324 <jt_reg_write>
0c014cec: e28dd004  add sp, sp, #0x4
0c014cf0: e3a03014  mov r3, #0x14
0c014cf4: e92d0008  stmdb sp!, {r3}
0c014cf8: e1a02005  mov r2, r5
0c014cfc: e1a01004  mov r1, r4
0c014d00: e3a0308f  mov r3, #0x8f
0c014d04: e2833c09  add r3, r3, #0x900
0c014d08: e3a00038  mov r0, #0x38
0c014d0c: ebfff984  bl 0x0c013324 <jt_reg_write>
0c014d10: e28dd004  add sp, sp, #0x4
0c014d14: e79a3105  ldr r3, [r10, r5, lsl #2]
0c014d18: e92d0008  stmdb sp!, {r3}
0c014d1c: e1a02005  mov r2, r5
0c014d20: e1a01004  mov r1, r4
0c014d24: e3a03e99  mov r3, #0x990
0c014d28: e3a00038  mov r0, #0x38
0c014d2c: ebfff97c  bl 0x0c013324 <jt_reg_write>
0c014d30: e28dd004  add sp, sp, #0x4
0c014d34: e1a03004  mov r3, r4
0c014d38: e92d0008  stmdb sp!, {r3}
0c014d3c: e1a02005  mov r2, r5
0c014d40: e1a01004  mov r1, r4
0c014d44: e3a03091  mov r3, #0x91
0c014d48: e2833c09  add r3, r3, #0x900
0c014d4c: e3a00038  mov r0, #0x38
0c014d50: ebfff973  bl 0x0c013324 <jt_reg_write>
0c014d54: e28dd004  add sp, sp, #0x4
0c014d58: e51f0b60  ldr r0, [pc, #-0xb60] =0x0401d868
0c014d5c: e7903106  ldr r3, [r0, r6, lsl #2]
0c014d60: e92d0008  stmdb sp!, {r3}
0c014d64: e1a02005  mov r2, r5
0c014d68: e1a01004  mov r1, r4
0c014d6c: e3a03092  mov r3, #0x92
0c014d70: e2833c09  add r3, r3, #0x900
0c014d74: e3a00038  mov r0, #0x38
0c014d78: ebfff969  bl 0x0c013324 <jt_reg_write>
0c014d7c: e28dd004  add sp, sp, #0x4
0c014d80: e3a03001  mov r3, #0x1
0c014d84: e92d0008  stmdb sp!, {r3}
0c014d88: e1a02005  mov r2, r5
0c014d8c: e1a01004  mov r1, r4
0c014d90: e3a03095  mov r3, #0x95
0c014d94: e2833c09  add r3, r3, #0x900
0c014d98: e3a00038  mov r0, #0x38
0c014d9c: ebfff960  bl 0x0c013324 <jt_reg_write>
0c014da0: e28dd004  add sp, sp, #0x4
0c014da4: e3a03000  mov r3, #0x0
0c014da8: e92d0008  stmdb sp!, {r3}
0c014dac: e1a02005  mov r2, r5
0c014db0: e1a01004  mov r1, r4
0c014db4: e3a03f66  mov r3, #0x198
0c014db8: e2833b02  add r3, r3, #0x800
0c014dbc: e3a00038  mov r0, #0x38
0c014dc0: ebfff957  bl 0x0c013324 <jt_reg_write>
0c014dc4: e28dd004  add sp, sp, #0x4
0c014dc8: e3a03000  mov r3, #0x0
0c014dcc: e92d0008  stmdb sp!, {r3}
0c014dd0: e1a02005  mov r2, r5
0c014dd4: e1a01004  mov r1, r4
0c014dd8: e3a03f65  mov r3, #0x194
0c014ddc: e2833b02  add r3, r3, #0x800
0c014de0: e3a00038  mov r0, #0x38
0c014de4: ebfff94e  bl 0x0c013324 <jt_reg_write>
0c014de8: e28dd004  add sp, sp, #0x4
0c014dec: e3a03000  mov r3, #0x0
0c014df0: e92d0008  stmdb sp!, {r3}
0c014df4: e1a02005  mov r2, r5
0c014df8: e1a01004  mov r1, r4
0c014dfc: e3a03093  mov r3, #0x93
0c014e00: e2833c09  add r3, r3, #0x900
0c014e04: e3a00038  mov r0, #0x38
0c014e08: ebfff945  bl 0x0c013324 <jt_reg_write>
0c014e0c: e28dd004  add sp, sp, #0x4
0c014e10: e3a03000  mov r3, #0x0
0c014e14: e92d0008  stmdb sp!, {r3}
0c014e18: e1a02005  mov r2, r5
0c014e1c: e1a01004  mov r1, r4
0c014e20: e3a03097  mov r3, #0x97
0c014e24: e2833c09  add r3, r3, #0x900
0c014e28: e3a00038  mov r0, #0x38
0c014e2c: ebfff93c  bl 0x0c013324 <jt_reg_write>
0c014e30: e28dd004  add sp, sp, #0x4
0c014e34: e3a03000  mov r3, #0x0
0c014e38: e92d0008  stmdb sp!, {r3}
0c014e3c: e1a02005  mov r2, r5
0c014e40: e1a01004  mov r1, r4
0c014e44: e3a03096  mov r3, #0x96
0c014e48: e2833c09  add r3, r3, #0x900
0c014e4c: e3a00038  mov r0, #0x38
0c014e50: ebfff933  bl 0x0c013324 <jt_reg_write>
0c014e54: e28dd004  add sp, sp, #0x4
0c014e58: ebfff9ee  bl 0x0c013618 <jt_flush>
0c014e5c: e2855001  add r5, r5, #0x1
0c014e60: e59d0008  ldr r0, [sp, #0x8]
0c014e64: e1550000  cmp r5, r0
0c014e68: baffff18  blt 0x0c014ad0
0c014e6c: e3a05000  mov r5, #0x0
0c014e70: e59d0004  ldr r0, [sp, #0x4]
0c014e74: e3500000  cmp r0, #0x0
0c014e78: da000197  ble 0x0c0154dc
0c014e7c: e59f12fc  ldr r1, [pc, #0x2fc] =0x0406f70c
0c014e80: e0811184  add r1, r1, r4, lsl #3
0c014e84: e284a001  add r10, r4, #0x1
0c014e88: e58d1010  str r1, [sp, #0x10]
0c014e8c: e3370000  teq r7, #0x0
0c014e90: e1a0000a  mov r0, r10
0c014e94: e1a02005  mov r2, r5
0c014e98: e3a03002  mov r3, #0x2
0c014e9c: 1a0000b9  bne 0x0c015188
0c014ea0: e3a01032  mov r1, #0x32
0c014ea4: ebfff976  bl 0x0c013484 <fn_0c013484>
0c014ea8: e59d0010  ldr r0, [sp, #0x10]
0c014eac: e5900028  ldr r0, [r0, #0x28]
0c014eb0: e3300001  teq r0, #0x1
0c014eb4: 03a03000  moveq r3, #0x0
0c014eb8: 0a000002  beq 0x0c014ec8
0c014ebc: e3300002  teq r0, #0x2
0c014ec0: 13a03003  movne r3, #0x3
0c014ec4: 03a03002  moveq r3, #0x2
0c014ec8: e92d0008  stmdb sp!, {r3}
0c014ecc: e1a02005  mov r2, r5
0c014ed0: e1a01004  mov r1, r4
0c014ed4: e3a03ff9  mov r3, #0x3e4
0c014ed8: e3a00032  mov r0, #0x32
0c014edc: ebfff910  bl 0x0c013324 <jt_reg_write>
0c014ee0: e28dd004  add sp, sp, #0x4
0c014ee4: e3a03000  mov r3, #0x0
0c014ee8: e92d0008  stmdb sp!, {r3}
0c014eec: e1a02005  mov r2, r5
0c014ef0: e1a01004  mov r1, r4
0c014ef4: e3a030e5  mov r3, #0xe5
0c014ef8: e2833c03  add r3, r3, #0x300
0c014efc: e3a00032  mov r0, #0x32
0c014f00: ebfff907  bl 0x0c013324 <jt_reg_write>
0c014f04: e28dd004  add sp, sp, #0x4
0c014f08: e3a03fe9  mov r3, #0x3a4
0c014f0c: e92d0008  stmdb sp!, {r3}
0c014f10: e1a02005  mov r2, r5
0c014f14: e1a01004  mov r1, r4
0c014f18: e3a030e6  mov r3, #0xe6
0c014f1c: e2833c03  add r3, r3, #0x300
0c014f20: e3a00032  mov r0, #0x32
0c014f24: ebfff8fe  bl 0x0c013324 <jt_reg_write>
0c014f28: e28dd004  add sp, sp, #0x4
0c014f2c: e3a03001  mov r3, #0x1
0c014f30: e92d0008  stmdb sp!, {r3}
0c014f34: e1a02005  mov r2, r5
0c014f38: e1a01004  mov r1, r4
0c014f3c: e3a030e7  mov r3, #0xe7
0c014f40: e2833c03  add r3, r3, #0x300
0c014f44: e3a00032  mov r0, #0x32
0c014f48: ebfff8f5  bl 0x0c013324 <jt_reg_write>
0c014f4c: e28dd004  add sp, sp, #0x4
0c014f50: e3a03005  mov r3, #0x5
0c014f54: e92d0008  stmdb sp!, {r3}
0c014f58: e1a02005  mov r2, r5
0c014f5c: e1a01004  mov r1, r4
0c014f60: e3a03ffa  mov r3, #0x3e8
0c014f64: e3a00032  mov r0, #0x32
0c014f68: ebfff8ed  bl 0x0c013324 <jt_reg_write>
0c014f6c: e28dd004  add sp, sp, #0x4
0c014f70: e3a03009  mov r3, #0x9
0c014f74: e92d0008  stmdb sp!, {r3}
0c014f78: e1a02005  mov r2, r5
0c014f7c: e1a01004  mov r1, r4
0c014f80: e3a030e9  mov r3, #0xe9
0c014f84: e2833c03  add r3, r3, #0x300
0c014f88: e3a00032  mov r0, #0x32
0c014f8c: ebfff8e4  bl 0x0c013324 <jt_reg_write>
0c014f90: e28dd004  add sp, sp, #0x4
0c014f94: e3a03002  mov r3, #0x2
0c014f98: e92d0008  stmdb sp!, {r3}
0c014f9c: e1a02005  mov r2, r5
0c014fa0: e1a01004  mov r1, r4
0c014fa4: e3a030ea  mov r3, #0xea
0c014fa8: e2833c03  add r3, r3, #0x300
0c014fac: e3a00032  mov r0, #0x32
0c014fb0: ebfff8db  bl 0x0c013324 <jt_reg_write>
0c014fb4: e28dd004  add sp, sp, #0x4
0c014fb8: e3a03002  mov r3, #0x2
0c014fbc: e92d0008  stmdb sp!, {r3}
0c014fc0: e1a02005  mov r2, r5
0c014fc4: e1a01004  mov r1, r4
0c014fc8: e3a030eb  mov r3, #0xeb
0c014fcc: e2833c03  add r3, r3, #0x300
0c014fd0: e3a00032  mov r0, #0x32
0c014fd4: ebfff8d2  bl 0x0c013324 <jt_reg_write>
0c014fd8: e28dd004  add sp, sp, #0x4
0c014fdc: e3a03002  mov r3, #0x2
0c014fe0: e92d0008  stmdb sp!, {r3}
0c014fe4: e1a02005  mov r2, r5
0c014fe8: e1a01004  mov r1, r4
0c014fec: e3a03ffb  mov r3, #0x3ec
0c014ff0: e3a00032  mov r0, #0x32
0c014ff4: ebfff8ca  bl 0x0c013324 <jt_reg_write>
0c014ff8: e28dd004  add sp, sp, #0x4
0c014ffc: e3a03002  mov r3, #0x2
0c015000: e92d0008  stmdb sp!, {r3}
0c015004: e1a02005  mov r2, r5
0c015008: e1a01004  mov r1, r4
0c01500c: e3a030ed  mov r3, #0xed
0c015010: e2833c03  add r3, r3, #0x300
0c015014: e3a00032  mov r0, #0x32
0c015018: ebfff8c1  bl 0x0c013324 <jt_reg_write>
0c01501c: e28dd004  add sp, sp, #0x4
0c015020: e3a03001  mov r3, #0x1
0c015024: e92d0008  stmdb sp!, {r3}
0c015028: e1a02005  mov r2, r5
0c01502c: e1a01004  mov r1, r4
0c015030: e3a030ee  mov r3, #0xee
0c015034: e2833c03  add r3, r3, #0x300
0c015038: e3a00032  mov r0, #0x32
0c01503c: ebfff8b8  bl 0x0c013324 <jt_reg_write>
0c015040: e28dd004  add sp, sp, #0x4
0c015044: e59f0138  ldr r0, [pc, #0x138] =0x0401d914
0c015048: e7903105  ldr r3, [r0, r5, lsl #2]
0c01504c: e92d0008  stmdb sp!, {r3}
0c015050: e1a02005  mov r2, r5
0c015054: e1a01004  mov r1, r4
0c015058: e3a030ef  mov r3, #0xef
0c01505c: e2833c03  add r3, r3, #0x300
0c015060: e3a00032  mov r0, #0x32
0c015064: ebfff8ae  bl 0x0c013324 <jt_reg_write>
0c015068: e28dd004  add sp, sp, #0x4
0c01506c: e3a03008  mov r3, #0x8
0c015070: e92d0008  stmdb sp!, {r3}
0c015074: e1a02005  mov r2, r5
0c015078: e1a01004  mov r1, r4
0c01507c: e3a03e3f  mov r3, #0x3f0
0c015080: e3a00032  mov r0, #0x32
0c015084: ebfff8a6  bl 0x0c013324 <jt_reg_write>
0c015088: e28dd004  add sp, sp, #0x4
0c01508c: e3a0300a  mov r3, #0xa
0c015090: e92d0008  stmdb sp!, {r3}
0c015094: e1a02005  mov r2, r5
0c015098: e1a01004  mov r1, r4
0c01509c: e3a030f1  mov r3, #0xf1
0c0150a0: e2833c03  add r3, r3, #0x300
0c0150a4: e3a00032  mov r0, #0x32
0c0150a8: ebfff89d  bl 0x0c013324 <jt_reg_write>
0c0150ac: e28dd004  add sp, sp, #0x4
0c0150b0: e3a03006  mov r3, #0x6
0c0150b4: e92d0008  stmdb sp!, {r3}
0c0150b8: e1a02005  mov r2, r5
0c0150bc: e1a01004  mov r1, r4
0c0150c0: e3a030f2  mov r3, #0xf2
0c0150c4: e2833c03  add r3, r3, #0x300
0c0150c8: e3a00032  mov r0, #0x32
0c0150cc: ebfff894  bl 0x0c013324 <jt_reg_write>
0c0150d0: e28dd004  add sp, sp, #0x4
0c0150d4: e3a03005  mov r3, #0x5
0c0150d8: e92d0008  stmdb sp!, {r3}
0c0150dc: e1a02005  mov r2, r5
0c0150e0: e1a01004  mov r1, r4
0c0150e4: e3a030f3  mov r3, #0xf3
0c0150e8: e2833c03  add r3, r3, #0x300
0c0150ec: e3a00032  mov r0, #0x32
0c0150f0: ebfff88b  bl 0x0c013324 <jt_reg_write>
0c0150f4: e28dd004  add sp, sp, #0x4
0c0150f8: e3a03014  mov r3, #0x14
0c0150fc: e92d0008  stmdb sp!, {r3}
0c015100: e1a02005  mov r2, r5
0c015104: e1a01004  mov r1, r4
0c015108: e3a03ffd  mov r3, #0x3f4
0c01510c: e3a00032  mov r0, #0x32
0c015110: ebfff883  bl 0x0c013324 <jt_reg_write>
0c015114: e28dd004  add sp, sp, #0x4
0c015118: e3a03016  mov r3, #0x16
0c01511c: e92d0008  stmdb sp!, {r3}
0c015120: e1a02005  mov r2, r5
0c015124: e1a01004  mov r1, r4
0c015128: e3a030f5  mov r3, #0xf5
0c01512c: e2833c03  add r3, r3, #0x300
0c015130: e3a00032  mov r0, #0x32
0c015134: ebfff87a  bl 0x0c013324 <jt_reg_write>
0c015138: e28dd004  add sp, sp, #0x4
0c01513c: e3a03008  mov r3, #0x8
0c015140: e92d0008  stmdb sp!, {r3}
0c015144: e1a02005  mov r2, r5
0c015148: e1a01004  mov r1, r4
0c01514c: e3a030f6  mov r3, #0xf6
0c015150: e2833c03  add r3, r3, #0x300
0c015154: e3a00032  mov r0, #0x32
0c015158: ebfff871  bl 0x0c013324 <jt_reg_write>
0c01515c: e28dd004  add sp, sp, #0x4
0c015160: e3a0300a  mov r3, #0xa
0c015164: e92d0008  stmdb sp!, {r3}
0c015168: e1a02005  mov r2, r5
0c01516c: e1a01004  mov r1, r4
0c015170: e3a030f7  mov r3, #0xf7
0c015174: e2833c03  add r3, r3, #0x300
0c015178: e3a00032  mov r0, #0x32
0c01517c: ea0000cf  b 0x0c0154c0
0c015180: 0406f70c  .word 0x0406f70c
0c015184: 0401d914  .word 0x0401d914
0c015188: e3a01037  mov r1, #0x37
0c01518c: ebfff8bc  bl 0x0c013484 <fn_0c013484>
0c015190: e3a03006  mov r3, #0x6
0c015194: e92d0008  stmdb sp!, {r3}
0c015198: e1a02005  mov r2, r5
0c01519c: e1a01004  mov r1, r4
0c0151a0: e3a0309d  mov r3, #0x9d
0c0151a4: e2833c0a  add r3, r3, #0xa00
0c0151a8: e3a00037  mov r0, #0x37
0c0151ac: ebfff85c  bl 0x0c013324 <jt_reg_write>
0c0151b0: e28dd004  add sp, sp, #0x4
0c0151b4: e3a03000  mov r3, #0x0
0c0151b8: e92d0008  stmdb sp!, {r3}
0c0151bc: e1a02005  mov r2, r5
0c0151c0: e1a01004  mov r1, r4
0c0151c4: e3a0309e  mov r3, #0x9e
0c0151c8: e2833c0a  add r3, r3, #0xa00
0c0151cc: e3a00037  mov r0, #0x37
0c0151d0: ebfff853  bl 0x0c013324 <jt_reg_write>
0c0151d4: e28dd004  add sp, sp, #0x4
0c0151d8: e3a03f82  mov r3, #0x208
0c0151dc: e92d0008  stmdb sp!, {r3}
0c0151e0: e1a02005  mov r2, r5
0c0151e4: e1a01004  mov r1, r4
0c0151e8: e3a0309f  mov r3, #0x9f
0c0151ec: e2833c0a  add r3, r3, #0xa00
0c0151f0: e3a00037  mov r0, #0x37
0c0151f4: ebfff84a  bl 0x0c013324 <jt_reg_write>
0c0151f8: e28dd004  add sp, sp, #0x4
0c0151fc: e3a03001  mov r3, #0x1
0c015200: e92d0008  stmdb sp!, {r3}
0c015204: e1a02005  mov r2, r5
0c015208: e1a01004  mov r1, r4
0c01520c: e3a03eaa  mov r3, #0xaa0
0c015210: e3a00037  mov r0, #0x37
0c015214: ebfff842  bl 0x0c013324 <jt_reg_write>
0c015218: e28dd004  add sp, sp, #0x4
0c01521c: e3a03005  mov r3, #0x5
0c015220: e92d0008  stmdb sp!, {r3}
0c015224: e1a02005  mov r2, r5
0c015228: e1a01004  mov r1, r4
0c01522c: e3a030a1  mov r3, #0xa1
0c015230: e2833c0a  add r3, r3, #0xa00
0c015234: e3a00037  mov r0, #0x37
0c015238: ebfff839  bl 0x0c013324 <jt_reg_write>
0c01523c: e28dd004  add sp, sp, #0x4
0c015240: e3a03009  mov r3, #0x9
0c015244: e92d0008  stmdb sp!, {r3}
0c015248: e1a02005  mov r2, r5
0c01524c: e1a01004  mov r1, r4
0c015250: e3a030a2  mov r3, #0xa2
0c015254: e2833c0a  add r3, r3, #0xa00
0c015258: e3a00037  mov r0, #0x37
0c01525c: ebfff830  bl 0x0c013324 <jt_reg_write>
0c015260: e28dd004  add sp, sp, #0x4
0c015264: e3a03003  mov r3, #0x3
0c015268: e92d0008  stmdb sp!, {r3}
0c01526c: e1a02005  mov r2, r5
0c015270: e1a01004  mov r1, r4
0c015274: e3a030a3  mov r3, #0xa3
0c015278: e2833c0a  add r3, r3, #0xa00
0c01527c: e3a00037  mov r0, #0x37
0c015280: ebfff827  bl 0x0c013324 <jt_reg_write>
0c015284: e28dd004  add sp, sp, #0x4
0c015288: e3a03003  mov r3, #0x3
0c01528c: e92d0008  stmdb sp!, {r3}
0c015290: e1a02005  mov r2, r5
0c015294: e1a01004  mov r1, r4
0c015298: e3a03fa9  mov r3, #0x2a4
0c01529c: e2833b02  add r3, r3, #0x800
0c0152a0: e3a00037  mov r0, #0x37
0c0152a4: ebfff81e  bl 0x0c013324 <jt_reg_write>
0c0152a8: e28dd004  add sp, sp, #0x4
0c0152ac: e3a03002  mov r3, #0x2
0c0152b0: e92d0008  stmdb sp!, {r3}
0c0152b4: e1a02005  mov r2, r5
0c0152b8: e1a01004  mov r1, r4
0c0152bc: e3a030a5  mov r3, #0xa5
0c0152c0: e2833c0a  add r3, r3, #0xa00
0c0152c4: e3a00037  mov r0, #0x37
0c0152c8: ebfff815  bl 0x0c013324 <jt_reg_write>
0c0152cc: e28dd004  add sp, sp, #0x4
0c0152d0: e3a03002  mov r3, #0x2
0c0152d4: e92d0008  stmdb sp!, {r3}
0c0152d8: e1a02005  mov r2, r5
0c0152dc: e1a01004  mov r1, r4
0c0152e0: e3a030a6  mov r3, #0xa6
0c0152e4: e2833c0a  add r3, r3, #0xa00
0c0152e8: e3a00037  mov r0, #0x37
0c0152ec: ebfff80c  bl 0x0c013324 <jt_reg_write>
0c0152f0: e28dd004  add sp, sp, #0x4
0c0152f4: e3a03001  mov r3, #0x1
0c0152f8: e92d0008  stmdb sp!, {r3}
0c0152fc: e1a02005  mov r2, r5
0c015300: e1a01004  mov r1, r4
0c015304: e3a030a7  mov r3, #0xa7
0c015308: e2833c0a  add r3, r3, #0xa00
0c01530c: e3a00037  mov r0, #0x37
0c015310: ebfff803  bl 0x0c013324 <jt_reg_write>
0c015314: e28dd004  add sp, sp, #0x4
0c015318: e51f019c  ldr r0, [pc, #-0x19c] =0x0401d914
0c01531c: e7903105  ldr r3, [r0, r5, lsl #2]
0c015320: e92d0008  stmdb sp!, {r3}
0c015324: e1a02005  mov r2, r5
0c015328: e1a01004  mov r1, r4
0c01532c: e3a03faa  mov r3, #0x2a8
0c015330: e2833b02  add r3, r3, #0x800
0c015334: e3a00037  mov r0, #0x37
0c015338: ebfff7f9  bl 0x0c013324 <jt_reg_write>
0c01533c: e28dd004  add sp, sp, #0x4
0c015340: e3a03008  mov r3, #0x8
0c015344: e92d0008  stmdb sp!, {r3}
0c015348: e1a02005  mov r2, r5
0c01534c: e1a01004  mov r1, r4
0c015350: e3a030a9  mov r3, #0xa9
0c015354: e2833c0a  add r3, r3, #0xa00
0c015358: e3a00037  mov r0, #0x37
0c01535c: ebfff7f0  bl 0x0c013324 <jt_reg_write>
0c015360: e28dd004  add sp, sp, #0x4
0c015364: e3a0300a  mov r3, #0xa
0c015368: e92d0008  stmdb sp!, {r3}
0c01536c: e1a02005  mov r2, r5
0c015370: e1a01004  mov r1, r4
0c015374: e3a030aa  mov r3, #0xaa
0c015378: e2833c0a  add r3, r3, #0xa00
0c01537c: e3a00037  mov r0, #0x37
0c015380: ebfff7e7  bl 0x0c013324 <jt_reg_write>
0c015384: e28dd004  add sp, sp, #0x4
0c015388: e3a03006  mov r3, #0x6
0c01538c: e92d0008  stmdb sp!, {r3}
0c015390: e1a02005  mov r2, r5
0c015394: e1a01004  mov r1, r4
0c015398: e3a030ab  mov r3, #0xab
0c01539c: e2833c0a  add r3, r3, #0xa00
0c0153a0: e3a00037  mov r0, #0x37
0c0153a4: ebfff7de  bl 0x0c013324 <jt_reg_write>
0c0153a8: e28dd004  add sp, sp, #0x4
0c0153ac: e3a03005  mov r3, #0x5
0c0153b0: e92d0008  stmdb sp!, {r3}
0c0153b4: e1a02005  mov r2, r5
0c0153b8: e1a01004  mov r1, r4
0c0153bc: e3a03fab  mov r3, #0x2ac
0c0153c0: e2833b02  add r3, r3, #0x800
0c0153c4: e3a00037  mov r0, #0x37
0c0153c8: ebfff7d5  bl 0x0c013324 <jt_reg_write>
0c0153cc: e28dd004  add sp, sp, #0x4
0c0153d0: e3a03014  mov r3, #0x14
0c0153d4: e92d0008  stmdb sp!, {r3}
0c0153d8: e1a02005  mov r2, r5
0c0153dc: e1a01004  mov r1, r4
0c0153e0: e3a030ad  mov r3, #0xad
0c0153e4: e2833c0a  add r3, r3, #0xa00
0c0153e8: e3a00037  mov r0, #0x37
0c0153ec: ebfff7cc  bl 0x0c013324 <jt_reg_write>
0c0153f0: e28dd004  add sp, sp, #0x4
0c0153f4: e3a03016  mov r3, #0x16
0c0153f8: e92d0008  stmdb sp!, {r3}
0c0153fc: e1a02005  mov r2, r5
0c015400: e1a01004  mov r1, r4
0c015404: e3a030ae  mov r3, #0xae
0c015408: e2833c0a  add r3, r3, #0xa00
0c01540c: e3a00037  mov r0, #0x37
0c015410: ebfff7c3  bl 0x0c013324 <jt_reg_write>
0c015414: e28dd004  add sp, sp, #0x4
0c015418: e3a03008  mov r3, #0x8
0c01541c: e92d0008  stmdb sp!, {r3}
0c015420: e1a02005  mov r2, r5
0c015424: e1a01004  mov r1, r4
0c015428: e3a030af  mov r3, #0xaf
0c01542c: e2833c0a  add r3, r3, #0xa00
0c015430: e3a00037  mov r0, #0x37
0c015434: ebfff7ba  bl 0x0c013324 <jt_reg_write>
0c015438: e28dd004  add sp, sp, #0x4
0c01543c: e3a0300a  mov r3, #0xa
0c015440: e92d0008  stmdb sp!, {r3}
0c015444: e1a02005  mov r2, r5
0c015448: e1a01004  mov r1, r4
0c01544c: e3a03eab  mov r3, #0xab0
0c015450: e3a00037  mov r0, #0x37
0c015454: ebfff7b2  bl 0x0c013324 <jt_reg_write>
0c015458: e28dd004  add sp, sp, #0x4
0c01545c: e3a03001  mov r3, #0x1
0c015460: e92d0008  stmdb sp!, {r3}
0c015464: e1a02005  mov r2, r5
0c015468: e1a01004  mov r1, r4
0c01546c: e3a030b3  mov r3, #0xb3
0c015470: e2833c0a  add r3, r3, #0xa00
0c015474: e3a00037  mov r0, #0x37
0c015478: ebfff7a9  bl 0x0c013324 <jt_reg_write>
0c01547c: e28dd004  add sp, sp, #0x4
0c015480: e3a03000  mov r3, #0x0
0c015484: e92d0008  stmdb sp!, {r3}
0c015488: e1a02005  mov r2, r5
0c01548c: e1a01004  mov r1, r4
0c015490: e3a030b2  mov r3, #0xb2
0c015494: e2833c0a  add r3, r3, #0xa00
0c015498: e3a00037  mov r0, #0x37
0c01549c: ebfff7a0  bl 0x0c013324 <jt_reg_write>
0c0154a0: e28dd004  add sp, sp, #0x4
0c0154a4: e3a03000  mov r3, #0x0
0c0154a8: e92d0008  stmdb sp!, {r3}
0c0154ac: e1a02005  mov r2, r5
0c0154b0: e1a01004  mov r1, r4
0c0154b4: e3a030b1  mov r3, #0xb1
0c0154b8: e2833c0a  add r3, r3, #0xa00
0c0154bc: e3a00037  mov r0, #0x37
0c0154c0: ebfff797  bl 0x0c013324 <jt_reg_write>
0c0154c4: e28dd004  add sp, sp, #0x4
0c0154c8: ebfff852  bl 0x0c013618 <jt_flush>
0c0154cc: e2855001  add r5, r5, #0x1
0c0154d0: e59d0004  ldr r0, [sp, #0x4]
0c0154d4: e1550000  cmp r5, r0
0c0154d8: bafffe6b  blt 0x0c014e8c
0c0154dc: e3a05000  mov r5, #0x0
0c0154e0: e59d0000  ldr r0, [sp, #0x0]
0c0154e4: e3500000  cmp r0, #0x0
0c0154e8: da000009  ble 0x0c015514
0c0154ec: e51fada8  ldr r10, [pc, #-0xda8] =0x0401d960
0c0154f0: e1a02005  mov r2, r5
0c0154f4: e1a01004  mov r1, r4
0c0154f8: e1a00006  mov r0, r6
0c0154fc: e1a0e00f  mov lr, pc
0c015500: e51af0e4  ldr pc, [r10, #-0xe4]
0c015504: e2855001  add r5, r5, #0x1
0c015508: e59d0000  ldr r0, [sp, #0x0]
0c01550c: e1550000  cmp r5, r0
0c015510: bafffff6  blt 0x0c0154f0
0c015514: e2844001  add r4, r4, #0x1
0c015518: e1540006  cmp r4, r6
0c01551c: bafffc94  blt 0x0c014774
0c015520: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
fn_0c015524:
0c015524: e1a0c00d  mov r12, sp
0c015528: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c01552c: e24cb004  sub r11, r12, #0x4
0c015530: e3a06014  mov r6, #0x14
0c015534: e51f03bc  ldr r0, [pc, #-0x3bc] =0x0406f70c
0c015538: e5907058  ldr r7, [r0, #0x58]
0c01553c: e5900000  ldr r0, [r0, #0x0]
0c015540: e3300002  teq r0, #0x2
0c015544: 13300006  teqne r0, #0x6
0c015548: 03a0600a  moveq r6, #0xa
0c01554c: e3a04001  mov r4, #0x1
0c015550: e5094164  str r4, [r9, #-0x164]
0c015554: e3a01001  mov r1, #0x1
0c015558: e3a00034  mov r0, #0x34
0c01555c: e2800b01  add r0, r0, #0x400
0c015560: ebffe671  bl 0x0c00ef2c <fn_0c00ef2c>
0c015564: e3a00000  mov r0, #0x0
0c015568: e3e016ff  mvn r1, #0xff00000
0c01556c: e2811201  add r1, r1, #0x10000000
0c015570: e5192164  ldr r2, [r9, #-0x164]
0c015574: e2800001  add r0, r0, #0x1
0c015578: e3320000  teq r2, #0x0
0c01557c: 1a000001  bne 0x0c015588
0c015580: e1500001  cmp r0, r1
0c015584: 3afffff9  bcc 0x0c015570
0c015588: e5094164  str r4, [r9, #-0x164]
0c01558c: e3a05000  mov r5, #0x0
0c015590: e3570000  cmp r7, #0x0
0c015594: da000019  ble 0x0c015600
0c015598: e2850001  add r0, r5, #0x1
0c01559c: e1a05000  mov r5, r0
0c0155a0: ebfff5ef  bl 0x0c012d64 <fn_0c012d64>
0c0155a4: ebfff5f9  bl 0x0c012d90 <jt_soft_reset>
0c0155a8: e3a04000  mov r4, #0x0
0c0155ac: e3560000  cmp r6, #0x0
0c0155b0: da000010  ble 0x0c0155f8
0c0155b4: e1a00005  mov r0, r5
0c0155b8: e1a02004  mov r2, r4
0c0155bc: e3a03007  mov r3, #0x7
0c0155c0: e3a01034  mov r1, #0x34
0c0155c4: ebfff7ae  bl 0x0c013484 <fn_0c013484>
0c0155c8: ebfff812  bl 0x0c013618 <jt_flush>
0c0155cc: e1a00005  mov r0, r5
0c0155d0: e1a02004  mov r2, r4
0c0155d4: e3a0300f  mov r3, #0xf
0c0155d8: e3a01034  mov r1, #0x34
0c0155dc: ebfff7a8  bl 0x0c013484 <fn_0c013484>
0c0155e0: ebfff80c  bl 0x0c013618 <jt_flush>
0c0155e4: e3a00e7d  mov r0, #0x7d0
0c0155e8: ebfff5c7  bl 0x0c012d0c <sleep>
0c0155ec: e2844001  add r4, r4, #0x1
0c0155f0: e1540006  cmp r4, r6
0c0155f4: baffffee  blt 0x0c0155b4
0c0155f8: e1550007  cmp r5, r7
0c0155fc: baffffe5  blt 0x0c015598
0c015600: e3a00d09  mov r0, #0x240
0c015604: e280093d  add r0, r0, #0xf4000
0c015608: ebfff5bf  bl 0x0c012d0c <sleep>
0c01560c: e3a05000  mov r5, #0x0
0c015610: e3570000  cmp r7, #0x0
0c015614: da00000e  ble 0x0c015654
0c015618: e51faed4  ldr r10, [pc, #-0xed4] =0x0401d960
0c01561c: e3a04000  mov r4, #0x0
0c015620: e3560000  cmp r6, #0x0
0c015624: da000007  ble 0x0c015648
0c015628: e1a02004  mov r2, r4
0c01562c: e1a01005  mov r1, r5
0c015630: e1a00007  mov r0, r7
0c015634: e1a0e00f  mov lr, pc
0c015638: e51af0e4  ldr pc, [r10, #-0xe4]
0c01563c: e2844001  add r4, r4, #0x1
0c015640: e1540006  cmp r4, r6
0c015644: bafffff7  blt 0x0c015628
0c015648: e2855001  add r5, r5, #0x1
0c01564c: e1550007  cmp r5, r7
0c015650: bafffff1  blt 0x0c01561c
0c015654: e3a00d09  mov r0, #0x240
0c015658: e280093d  add r0, r0, #0xf4000
0c01565c: e91b6cf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,lr}
0c015660: eafff5a9  b 0x0c012d0c <sleep>
fn_0c015664:
0c015664: e1a0c00d  mov r12, sp
0c015668: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c01566c: e24cb004  sub r11, r12, #0x4
0c015670: e59f033c  ldr r0, [pc, #0x33c] =0x040198a8
0c015674: e5900000  ldr r0, [r0, #0x0]
0c015678: e3300000  teq r0, #0x0
0c01567c: 191ba830  ldmnedb r11, {r4,r5,r11,sp,pc}
0c015680: ebfff80a  bl 0x0c0136b0 <fn_0c0136b0>
0c015684: e200001e  and r0, r0, #0x1e
0c015688: e1a000a0  mov r0, r0, lsr #1
0c01568c: ebfff5b0  bl 0x0c012d54 <fn_0c012d54>
0c015690: e1a04000  mov r4, r0
0c015694: e3a03002  mov r3, #0x2
0c015698: e3a02000  mov r2, #0x0
0c01569c: e3a01013  mov r1, #0x13
0c0156a0: e3a00005  mov r0, #0x5
0c0156a4: ebfff776  bl 0x0c013484 <fn_0c013484>
0c0156a8: e3a03000  mov r3, #0x0
0c0156ac: e92d0008  stmdb sp!, {r3}
0c0156b0: e3a0301e  mov r3, #0x1e
0c0156b4: e2833c02  add r3, r3, #0x200
0c0156b8: e3a02000  mov r2, #0x0
0c0156bc: e3a01000  mov r1, #0x0
0c0156c0: e3a00013  mov r0, #0x13
0c0156c4: ebfff716  bl 0x0c013324 <jt_reg_write>
0c0156c8: e28dd004  add sp, sp, #0x4
0c0156cc: e3a03000  mov r3, #0x0
0c0156d0: e92d0008  stmdb sp!, {r3}
0c0156d4: e3a0301f  mov r3, #0x1f
0c0156d8: e2833c02  add r3, r3, #0x200
0c0156dc: e3a02000  mov r2, #0x0
0c0156e0: e3a01000  mov r1, #0x0
0c0156e4: e3a00013  mov r0, #0x13
0c0156e8: ebfff70d  bl 0x0c013324 <jt_reg_write>
0c0156ec: e28dd004  add sp, sp, #0x4
0c0156f0: e3340004  teq r4, #0x4
0c0156f4: 13a03b01  movne r3, #0x400
0c0156f8: 03a03d06  moveq r3, #0x180
0c0156fc: e92d0008  stmdb sp!, {r3}
0c015700: e3a03e22  mov r3, #0x220
0c015704: e3a02000  mov r2, #0x0
0c015708: e3a01000  mov r1, #0x0
0c01570c: e3a00013  mov r0, #0x13
0c015710: ebfff703  bl 0x0c013324 <jt_reg_write>
0c015714: e28dd004  add sp, sp, #0x4
0c015718: e3a03001  mov r3, #0x1
0c01571c: e92d0008  stmdb sp!, {r3}
0c015720: e3a03021  mov r3, #0x21
0c015724: e2833c02  add r3, r3, #0x200
0c015728: e3a02000  mov r2, #0x0
0c01572c: e3a01000  mov r1, #0x0
0c015730: e3a00013  mov r0, #0x13
0c015734: ebfff6fa  bl 0x0c013324 <jt_reg_write>
0c015738: e28dd004  add sp, sp, #0x4
0c01573c: e3a03006  mov r3, #0x6
0c015740: e92d0008  stmdb sp!, {r3}
0c015744: e3a03022  mov r3, #0x22
0c015748: e2833c02  add r3, r3, #0x200
0c01574c: e3a02000  mov r2, #0x0
0c015750: e3a01000  mov r1, #0x0
0c015754: e3a00013  mov r0, #0x13
0c015758: ebfff6f1  bl 0x0c013324 <jt_reg_write>
0c01575c: e28dd004  add sp, sp, #0x4
0c015760: e3a0300a  mov r3, #0xa
0c015764: e92d0008  stmdb sp!, {r3}
0c015768: e3a03023  mov r3, #0x23
0c01576c: e2833c02  add r3, r3, #0x200
0c015770: e3a02000  mov r2, #0x0
0c015774: e3a01000  mov r1, #0x0
0c015778: e3a00013  mov r0, #0x13
0c01577c: ebfff6e8  bl 0x0c013324 <jt_reg_write>
0c015780: e28dd004  add sp, sp, #0x4
0c015784: e3a03002  mov r3, #0x2
0c015788: e92d0008  stmdb sp!, {r3}
0c01578c: e3a03f89  mov r3, #0x224
0c015790: e3a02000  mov r2, #0x0
0c015794: e3a01000  mov r1, #0x0
0c015798: e3a00013  mov r0, #0x13
0c01579c: ebfff6e0  bl 0x0c013324 <jt_reg_write>
0c0157a0: e28dd004  add sp, sp, #0x4
0c0157a4: e3a03002  mov r3, #0x2
0c0157a8: e92d0008  stmdb sp!, {r3}
0c0157ac: e3a03025  mov r3, #0x25
0c0157b0: e2833c02  add r3, r3, #0x200
0c0157b4: e3a02000  mov r2, #0x0
0c0157b8: e3a01000  mov r1, #0x0
0c0157bc: e3a00013  mov r0, #0x13
0c0157c0: ebfff6d7  bl 0x0c013324 <jt_reg_write>
0c0157c4: e28dd004  add sp, sp, #0x4
0c0157c8: e3a03002  mov r3, #0x2
0c0157cc: e92d0008  stmdb sp!, {r3}
0c0157d0: e3a03026  mov r3, #0x26
0c0157d4: e2833c02  add r3, r3, #0x200
0c0157d8: e3a02000  mov r2, #0x0
0c0157dc: e3a01000  mov r1, #0x0
0c0157e0: e3a00013  mov r0, #0x13
0c0157e4: ebfff6ce  bl 0x0c013324 <jt_reg_write>
0c0157e8: e28dd004  add sp, sp, #0x4
0c0157ec: e3a03002  mov r3, #0x2
0c0157f0: e92d0008  stmdb sp!, {r3}
0c0157f4: e3a03027  mov r3, #0x27
0c0157f8: e2833c02  add r3, r3, #0x200
0c0157fc: e3a02000  mov r2, #0x0
0c015800: e3a01000  mov r1, #0x0
0c015804: e3a00013  mov r0, #0x13
0c015808: ebfff6c5  bl 0x0c013324 <jt_reg_write>
0c01580c: e28dd004  add sp, sp, #0x4
0c015810: e3a03001  mov r3, #0x1
0c015814: e92d0008  stmdb sp!, {r3}
0c015818: e3a03f8a  mov r3, #0x228
0c01581c: e3a02000  mov r2, #0x0
0c015820: e3a01000  mov r1, #0x0
0c015824: e3a00013  mov r0, #0x13
0c015828: ebfff6bd  bl 0x0c013324 <jt_reg_write>
0c01582c: e28dd004  add sp, sp, #0x4
0c015830: e3a03000  mov r3, #0x0
0c015834: e92d0008  stmdb sp!, {r3}
0c015838: e3a03029  mov r3, #0x29
0c01583c: e2833c02  add r3, r3, #0x200
0c015840: e3a02000  mov r2, #0x0
0c015844: e3a01000  mov r1, #0x0
0c015848: e3a00013  mov r0, #0x13
0c01584c: ebfff6b4  bl 0x0c013324 <jt_reg_write>
0c015850: e28dd004  add sp, sp, #0x4
0c015854: e59f515c  ldr r5, [pc, #0x15c] =0x040198bc
0c015858: e5950000  ldr r0, [r5, #0x0]
0c01585c: e590000c  ldr r0, [r0, #0xc]
0c015860: e3100004  tst r0, #0x4
0c015864: 03a03000  moveq r3, #0x0
0c015868: 13a03001  movne r3, #0x1
0c01586c: e92d0008  stmdb sp!, {r3}
0c015870: e3a0302a  mov r3, #0x2a
0c015874: e2833c02  add r3, r3, #0x200
0c015878: e3a02000  mov r2, #0x0
0c01587c: e3a01000  mov r1, #0x0
0c015880: e3a00013  mov r0, #0x13
0c015884: ebfff6a6  bl 0x0c013324 <jt_reg_write>
0c015888: e28dd004  add sp, sp, #0x4
0c01588c: e5950000  ldr r0, [r5, #0x0]
0c015890: e590000c  ldr r0, [r0, #0xc]
0c015894: e3100008  tst r0, #0x8
0c015898: 03a03000  moveq r3, #0x0
0c01589c: 13a03001  movne r3, #0x1
0c0158a0: e92d0008  stmdb sp!, {r3}
0c0158a4: e3a0302b  mov r3, #0x2b
0c0158a8: e2833c02  add r3, r3, #0x200
0c0158ac: e3a02000  mov r2, #0x0
0c0158b0: e3a01000  mov r1, #0x0
0c0158b4: e3a00013  mov r0, #0x13
0c0158b8: ebfff699  bl 0x0c013324 <jt_reg_write>
0c0158bc: e28dd004  add sp, sp, #0x4
0c0158c0: e51f4748  ldr r4, [pc, #-0x748] =0x0406f70c
0c0158c4: e5940060  ldr r0, [r4, #0x60]
0c0158c8: e3300000  teq r0, #0x0
0c0158cc: 0594005c  ldreq r0, [r4, #0x5c]
0c0158d0: 020000f0  andeq r0, r0, #0xf0
0c0158d4: 03300000  teqeq r0, #0x0
0c0158d8: 13a03001  movne r3, #0x1
0c0158dc: 03a03000  moveq r3, #0x0
0c0158e0: e92d0008  stmdb sp!, {r3}
0c0158e4: e3a03f8b  mov r3, #0x22c
0c0158e8: e3a02000  mov r2, #0x0
0c0158ec: e3a01000  mov r1, #0x0
0c0158f0: e3a00013  mov r0, #0x13
0c0158f4: ebfff68a  bl 0x0c013324 <jt_reg_write>
0c0158f8: e28dd004  add sp, sp, #0x4
0c0158fc: e5950000  ldr r0, [r5, #0x0]
0c015900: e590000c  ldr r0, [r0, #0xc]
0c015904: e3100010  tst r0, #0x10
0c015908: 03a03001  moveq r3, #0x1
0c01590c: 13a03000  movne r3, #0x0
0c015910: e92d0008  stmdb sp!, {r3}
0c015914: e3a0302d  mov r3, #0x2d
0c015918: e2833c02  add r3, r3, #0x200
0c01591c: e3a02000  mov r2, #0x0
0c015920: e3a01000  mov r1, #0x0
0c015924: e3a00013  mov r0, #0x13
0c015928: ebfff67d  bl 0x0c013324 <jt_reg_write>
0c01592c: e28dd004  add sp, sp, #0x4
0c015930: e3a03001  mov r3, #0x1
0c015934: e92d0008  stmdb sp!, {r3}
0c015938: e3a0302e  mov r3, #0x2e
0c01593c: e2833c02  add r3, r3, #0x200
0c015940: e3a02000  mov r2, #0x0
0c015944: e3a01000  mov r1, #0x0
0c015948: e3a00013  mov r0, #0x13
0c01594c: ebfff674  bl 0x0c013324 <jt_reg_write>
0c015950: e28dd004  add sp, sp, #0x4
0c015954: e3a03001  mov r3, #0x1
0c015958: e92d0008  stmdb sp!, {r3}
0c01595c: e3a0302f  mov r3, #0x2f
0c015960: e2833c02  add r3, r3, #0x200
0c015964: e3a02000  mov r2, #0x0
0c015968: e3a01000  mov r1, #0x0
0c01596c: e3a00013  mov r0, #0x13
0c015970: ebfff66b  bl 0x0c013324 <jt_reg_write>
0c015974: e28dd004  add sp, sp, #0x4
0c015978: e5b43064  ldr r3, [r4, #0x64]!
0c01597c: e92d0008  stmdb sp!, {r3}
0c015980: e3a03e23  mov r3, #0x230
0c015984: e3a02000  mov r2, #0x0
0c015988: e3a01000  mov r1, #0x0
0c01598c: e3a00013  mov r0, #0x13
0c015990: ebfff663  bl 0x0c013324 <jt_reg_write>
0c015994: e28dd004  add sp, sp, #0x4
0c015998: ebfff71e  bl 0x0c013618 <jt_flush>
0c01599c: e3a0300f  mov r3, #0xf
0c0159a0: e3a02000  mov r2, #0x0
0c0159a4: e3a01013  mov r1, #0x13
0c0159a8: e3a00005  mov r0, #0x5
0c0159ac: e91b6830  ldmdb r11, {r4,r5,r11,sp,lr}
0c0159b0: eafff6b3  b 0x0c013484 <fn_0c013484>
0c0159b4: 040198a8  .word 0x040198a8
0c0159b8: 040198bc  .word 0x040198bc
0c0159bc: e1a0c00d  mov r12, sp
0c0159c0: e92dd830  stmdb sp!, {r4,r5,r11,r12,lr,pc}
0c0159c4: e24cb004  sub r11, r12, #0x4
0c0159c8: e1a04000  mov r4, r0
0c0159cc: e3a03002  mov r3, #0x2
0c0159d0: e3a02000  mov r2, #0x0
0c0159d4: e3a01013  mov r1, #0x13
0c0159d8: e3a00005  mov r0, #0x5
0c0159dc: ebfff6a8  bl 0x0c013484 <fn_0c013484>
0c0159e0: e3a01060  mov r1, #0x60
0c0159e4: e3a00013  mov r0, #0x13
0c0159e8: ebfff685  bl 0x0c013404 <jt_reg_init>
0c0159ec: e1a03004  mov r3, r4
0c0159f0: e92d0008  stmdb sp!, {r3}
0c0159f4: e3a03029  mov r3, #0x29
0c0159f8: e2833c02  add r3, r3, #0x200
0c0159fc: e3a02000  mov r2, #0x0
0c015a00: e3a01000  mov r1, #0x0
0c015a04: e3a00013  mov r0, #0x13
0c015a08: ebfff645  bl 0x0c013324 <jt_reg_write>
0c015a0c: e28dd004  add sp, sp, #0x4
0c015a10: ebfff700  bl 0x0c013618 <jt_flush>
0c015a14: e3a03e23  mov r3, #0x230
0c015a18: e3a02000  mov r2, #0x0
0c015a1c: e3a01000  mov r1, #0x0
0c015a20: e3a00013  mov r0, #0x13
0c015a24: ebfff607  bl 0x0c013248 <fn_0c013248>
0c015a28: e1a05000  mov r5, r0
0c015a2c: e3a01060  mov r1, #0x60
0c015a30: e3a00013  mov r0, #0x13
0c015a34: ebfff672  bl 0x0c013404 <jt_reg_init>
0c015a38: e1a03005  mov r3, r5
0c015a3c: e92d0008  stmdb sp!, {r3}
0c015a40: e3a03e23  mov r3, #0x230
0c015a44: e3a02000  mov r2, #0x0
0c015a48: e3a01000  mov r1, #0x0
0c015a4c: e3a00013  mov r0, #0x13
0c015a50: ebfff633  bl 0x0c013324 <jt_reg_write>
0c015a54: e28dd004  add sp, sp, #0x4
0c015a58: ebfff6ee  bl 0x0c013618 <jt_flush>
0c015a5c: e59f0004  ldr r0, [pc, #0x4] =0x0401d960
0c015a60: e520402c  str r4, [r0, #-0x2c]!
0c015a64: e91ba830  ldmdb r11, {r4,r5,r11,sp,pc}
0c015a68: 0401d960  .word 0x0401d960
0c015a6c: e1a0c00d  mov r12, sp
0c015a70: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c015a74: e24cb004  sub r11, r12, #0x4
0c015a78: e1a04000  mov r4, r0
0c015a7c: e3a03002  mov r3, #0x2
0c015a80: e3a02000  mov r2, #0x0
0c015a84: e3a01013  mov r1, #0x13
0c015a88: e3a00005  mov r0, #0x5
0c015a8c: ebfff67c  bl 0x0c013484 <fn_0c013484>
0c015a90: e3a01060  mov r1, #0x60
0c015a94: e3a00013  mov r0, #0x13
0c015a98: ebfff659  bl 0x0c013404 <jt_reg_init>
0c015a9c: e1a03004  mov r3, r4
0c015aa0: e92d0008  stmdb sp!, {r3}
0c015aa4: e3a03e23  mov r3, #0x230
0c015aa8: e3a02000  mov r2, #0x0
0c015aac: e3a01000  mov r1, #0x0
0c015ab0: e3a00013  mov r0, #0x13
0c015ab4: ebfff61a  bl 0x0c013324 <jt_reg_write>
0c015ab8: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c015abc: eafff6d5  b 0x0c013618 <jt_flush>
0c015ac0: e1a0c00d  mov r12, sp
0c015ac4: e92dd810  stmdb sp!, {r4,r11,r12,lr,pc}
0c015ac8: e24cb004  sub r11, r12, #0x4
0c015acc: e3100e1f  tst r0, #0x1f0
0c015ad0: 03a04000  moveq r4, #0x0
0c015ad4: 13a04001  movne r4, #0x1
0c015ad8: e3a03002  mov r3, #0x2
0c015adc: e3a02000  mov r2, #0x0
0c015ae0: e3a01013  mov r1, #0x13
0c015ae4: e3a00005  mov r0, #0x5
0c015ae8: ebfff665  bl 0x0c013484 <fn_0c013484>
0c015aec: e3a01060  mov r1, #0x60
0c015af0: e3a00013  mov r0, #0x13
0c015af4: ebfff642  bl 0x0c013404 <jt_reg_init>
0c015af8: e1a03004  mov r3, r4
0c015afc: e92d0008  stmdb sp!, {r3}
0c015b00: e3a03f8b  mov r3, #0x22c
0c015b04: e3a02000  mov r2, #0x0
0c015b08: e3a01000  mov r1, #0x0
0c015b0c: e3a00013  mov r0, #0x13
0c015b10: ebfff603  bl 0x0c013324 <jt_reg_write>
0c015b14: e91b6810  ldmdb r11, {r4,r11,sp,lr}
0c015b18: eafff6be  b 0x0c013618 <jt_flush>
fn_0c015b1c:
0c015b1c: e1a0c00d  mov r12, sp
0c015b20: e92dd870  stmdb sp!, {r4,r5,r6,r11,r12,lr,pc}
0c015b24: e24cb004  sub r11, r12, #0x4
0c015b28: e24dd004  sub sp, sp, #0x4
0c015b2c: e3a00000  mov r0, #0x0
0c015b30: ebfff48b  bl 0x0c012d64 <fn_0c012d64>
0c015b34: e3a00000  mov r0, #0x0
0c015b38: e3e04000  mvn r4, #0x0
0c015b3c: e59f50bc  ldr r5, [pc, #0xbc] =0x04071690
0c015b40: e7854100  str r4, [r5, r0, lsl #2]
0c015b44: e2800001  add r0, r0, #0x1
0c015b48: e3500c01  cmp r0, #0x100
0c015b4c: 3afffffb  bcc 0x0c015b40
0c015b50: e1a01005  mov r1, r5
0c015b54: e1a02005  mov r2, r5
0c015b58: e3a03001  mov r3, #0x1
0c015b5c: e3a000c8  mov r0, #0xc8
0c015b60: ebfff4b4  bl 0x0c012e38 <fn_0c012e38>
0c015b64: e3a00000  mov r0, #0x0
0c015b68: e1a06004  mov r6, r4
0c015b6c: e1a04005  mov r4, r5
0c015b70: e7846100  str r6, [r4, r0, lsl #2]
0c015b74: e2800001  add r0, r0, #0x1
0c015b78: e3500c01  cmp r0, #0x100
0c015b7c: 3afffffb  bcc 0x0c015b70
0c015b80: e1a01004  mov r1, r4
0c015b84: e1a02004  mov r2, r4
0c015b88: e3a03000  mov r3, #0x0
0c015b8c: e3a00016  mov r0, #0x16
0c015b90: ebfff4a8  bl 0x0c012e38 <fn_0c012e38>
0c015b94: e3a00000  mov r0, #0x0
0c015b98: e1a05006  mov r5, r6
0c015b9c: e7845100  str r5, [r4, r0, lsl #2]
0c015ba0: e2800001  add r0, r0, #0x1
0c015ba4: e3500c01  cmp r0, #0x100
0c015ba8: 3afffffb  bcc 0x0c015b9c
0c015bac: e3a060a8  mov r6, #0xa8
0c015bb0: e2466b16  sub r6, r6, #0x5800
0c015bb4: e1a01004  mov r1, r4
0c015bb8: e5846000  str r6, [r4, #0x0]
0c015bbc: e1a02004  mov r2, r4
0c015bc0: e3a03001  mov r3, #0x1
0c015bc4: e3a00082  mov r0, #0x82
0c015bc8: ebfff49a  bl 0x0c012e38 <fn_0c012e38>
0c015bcc: e1a0200d  mov r2, sp
0c015bd0: e1a0100d  mov r1, sp
0c015bd4: e3a03000  mov r3, #0x0
0c015bd8: e3a00020  mov r0, #0x20
0c015bdc: ebfff495  bl 0x0c012e38 <fn_0c012e38>
0c015be0: e59d0000  ldr r0, [sp, #0x0]
0c015be4: e3100001  tst r0, #0x1
0c015be8: 1a000006  bne 0x0c015c08
0c015bec: e51f018c  ldr r0, [pc, #-0x18c] =0x0401d960
0c015bf0: e5301140  ldr r1, [r0, #-0x140]!
0c015bf4: e59f0008  ldr r0, [pc, #0x8] =0x0401d740
0c015bf8: e5a01004  str r1, [r0, #0x4]!
0c015bfc: ea000029  b 0x0c015ca8
0c015c00: 04071690  .word 0x04071690
0c015c04: 0401d740  .word 0x0401d740
0c015c08: e3a00000  mov r0, #0x0
0c015c0c: e7845100  str r5, [r4, r0, lsl #2]
0c015c10: e2800001  add r0, r0, #0x1
0c015c14: e3500c01  cmp r0, #0x100
0c015c18: 3afffffb  bcc 0x0c015c0c
0c015c1c: e1a01004  mov r1, r4
0c015c20: e1a02004  mov r2, r4
0c015c24: e3a03001  mov r3, #0x1
0c015c28: e3a000c8  mov r0, #0xc8
0c015c2c: ebfff481  bl 0x0c012e38 <fn_0c012e38>
0c015c30: e3a00000  mov r0, #0x0
0c015c34: e7845100  str r5, [r4, r0, lsl #2]
0c015c38: e2800001  add r0, r0, #0x1
0c015c3c: e3500c01  cmp r0, #0x100
0c015c40: 3afffffb  bcc 0x0c015c34
0c015c44: e1a01004  mov r1, r4
0c015c48: e1a02004  mov r2, r4
0c015c4c: e3a03000  mov r3, #0x0
0c015c50: e3a00016  mov r0, #0x16
0c015c54: ebfff477  bl 0x0c012e38 <fn_0c012e38>
0c015c58: e3a00000  mov r0, #0x0
0c015c5c: e7845100  str r5, [r4, r0, lsl #2]
0c015c60: e2800001  add r0, r0, #0x1
0c015c64: e3500c01  cmp r0, #0x100
0c015c68: 3afffffb  bcc 0x0c015c5c
0c015c6c: e1a01004  mov r1, r4
0c015c70: e5846000  str r6, [r4, #0x0]
0c015c74: e1a02004  mov r2, r4
0c015c78: e3a03001  mov r3, #0x1
0c015c7c: e3a00040  mov r0, #0x40
0c015c80: ebfff46c  bl 0x0c012e38 <fn_0c012e38>
0c015c84: e1a0200d  mov r2, sp
0c015c88: e1a0100d  mov r1, sp
0c015c8c: e3a03000  mov r3, #0x0
0c015c90: e3a00020  mov r0, #0x20
0c015c94: ebfff467  bl 0x0c012e38 <fn_0c012e38>
0c015c98: e59d0000  ldr r0, [sp, #0x0]
0c015c9c: e3100001  tst r0, #0x1
0c015ca0: 13e00000  mvnne r0, #0x0
0c015ca4: 1a000000  bne 0x0c015cac
0c015ca8: e59d0000  ldr r0, [sp, #0x0]
0c015cac: e91ba870  ldmdb r11, {r4,r5,r6,r11,sp,pc}
fn_0c015cb0:
0c015cb0: e1a0c00d  mov r12, sp
0c015cb4: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c015cb8: e24cb004  sub r11, r12, #0x4
0c015cbc: e3a05000  mov r5, #0x0
0c015cc0: e1a06005  mov r6, r5
0c015cc4: e1a07005  mov r7, r5
0c015cc8: ebfff678  bl 0x0c0136b0 <fn_0c0136b0>
0c015ccc: e1a04000  mov r4, r0
0c015cd0: e51fab58  ldr r10, [pc, #-0xb58] =0x0406f70c
0c015cd4: e58a0100  str r0, [r10, #0x100]
0c015cd8: e3700001  cmn r0, #0x1
0c015cdc: 0a000037  beq 0x0c015dc0
0c015ce0: e2040cfe  and r0, r4, #0xfe00
0c015ce4: e1b074a0  movs r7, r0, lsr #9
0c015ce8: e59f0034  ldr r0, [pc, #0x34] =0x0c0162dc
0c015cec: e2041d07  and r1, r4, #0x1c0
0c015cf0: e1a06321  mov r6, r1, lsr #6
0c015cf4: e204101e  and r1, r4, #0x1e
0c015cf8: e1a050a1  mov r5, r1, lsr #1
0c015cfc: e2041803  and r1, r4, #0x30000
0c015d00: e7d00821  ldrb r0, [r0, r1, lsr #16]
0c015d04: 0a000007  beq 0x0c015d28
0c015d08: e58a0004  str r0, [r10, #0x4]
0c015d0c: e2040703  and r0, r4, #0xc0000
0c015d10: e1a00920  mov r0, r0, lsr #18
0c015d14: e58a000c  str r0, [r10, #0xc]
0c015d18: e3a00000  mov r0, #0x0
0c015d1c: e58a0010  str r0, [r10, #0x10]
0c015d20: ea000009  b 0x0c015d4c
0c015d24: 0c0162dc  .word 0x0c0162dc
0c015d28: e1a0100a  mov r1, r10
0c015d2c: e58a0004  str r0, [r10, #0x4]
0c015d30: e2040703  and r0, r4, #0xc0000
0c015d34: e1a00920  mov r0, r0, lsr #18
0c015d38: e3140601  tst r4, #0x100000
0c015d3c: e58a000c  str r0, [r10, #0xc]
0c015d40: e3a00000  mov r0, #0x0
0c015d44: 03a00001  moveq r0, #0x1
0c015d48: e5a10010  str r0, [r1, #0x10]!
0c015d4c: e3a03002  mov r3, #0x2
0c015d50: e92d0008  stmdb sp!, {r3}
0c015d54: e3a03000  mov r3, #0x0
0c015d58: e3a02010  mov r2, #0x10
0c015d5c: e3a01000  mov r1, #0x0
0c015d60: e3a00005  mov r0, #0x5
0c015d64: ebfff655  bl 0x0c0136c0 <chip_id>
0c015d68: e28dd004  add sp, sp, #0x4
0c015d6c: e3a030f3  mov r3, #0xf3
0c015d70: e58a0108  str r0, [r10, #0x108]
0c015d74: e92d0008  stmdb sp!, {r3}
0c015d78: e3a03000  mov r3, #0x0
0c015d7c: e3a02011  mov r2, #0x11
0c015d80: e3a01000  mov r1, #0x0
0c015d84: e3a00005  mov r0, #0x5
0c015d88: ebfff64c  bl 0x0c0136c0 <chip_id>
0c015d8c: e28dd004  add sp, sp, #0x4
0c015d90: e3a030bf  mov r3, #0xbf
0c015d94: e2833c01  add r3, r3, #0x100
0c015d98: e58a010c  str r0, [r10, #0x10c]
0c015d9c: e92d0008  stmdb sp!, {r3}
0c015da0: e3a03000  mov r3, #0x0
0c015da4: e3a02013  mov r2, #0x13
0c015da8: e3a01000  mov r1, #0x0
0c015dac: e3a00005  mov r0, #0x5
0c015db0: ebfff642  bl 0x0c0136c0 <chip_id>
0c015db4: e28dd004  add sp, sp, #0x4
0c015db8: e58a0110  str r0, [r10, #0x110]
0c015dbc: ea000001  b 0x0c015dc8
0c015dc0: e3a00000  mov r0, #0x0
0c015dc4: e58a0004  str r0, [r10, #0x4]
0c015dc8: e51f0c50  ldr r0, [pc, #-0xc50] =0x0406f70c
0c015dcc: e5903010  ldr r3, [r0, #0x10]
0c015dd0: e59f11d4  ldr r1, [pc, #0x1d4] =0x0c0162e0
0c015dd4: e590200c  ldr r2, [r0, #0xc]
0c015dd8: e7d12002  ldrb r2, [r1, r2]
0c015ddc: e5b01004  ldr r1, [r0, #0x4]!
0c015de0: e1a00005  mov r0, r5
0c015de4: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c015de8: e1a03006  mov r3, r6
0c015dec: e1a02007  mov r2, r7
0c015df0: e1a01004  mov r1, r4
0c015df4: e28f0f6d  add r0, pc, #0x1b4
0c015df8: ebffefb8  bl 0x0c011ce0 <fn_0c011ce0>
0c015dfc: e28dd010  add sp, sp, #0x10
0c015e00: e51f0450  ldr r0, [pc, #-0x450] =0x040198bc
0c015e04: e5900000  ldr r0, [r0, #0x0]
0c015e08: e590000c  ldr r0, [r0, #0xc]
0c015e0c: e3100080  tst r0, #0x80
0c015e10: 13a07004  movne r7, #0x4
0c015e14: 1a000002  bne 0x0c015e24
0c015e18: e3100001  tst r0, #0x1
0c015e1c: 03a07001  moveq r7, #0x1
0c015e20: 13a07002  movne r7, #0x2
0c015e24: e3a05000  mov r5, #0x0
0c015e28: e3570000  cmp r7, #0x0
0c015e2c: da0000b7  ble 0x0c016110
0c015e30: e1a00005  mov r0, r5
0c015e34: ebfff61f  bl 0x0c0136b8 <fn_0c0136b8>
0c015e38: e0651185  rsb r1, r5, r5, lsl #3
0c015e3c: e0811101  add r1, r1, r1, lsl #2
0c015e40: e51facc8  ldr r10, [pc, #-0xcc8] =0x0406f70c
0c015e44: e08a6101  add r6, r10, r1, lsl #2
0c015e48: e3a03000  mov r3, #0x0
0c015e4c: e08a1185  add r1, r10, r5, lsl #3
0c015e50: e5860114  str r0, [r6, #0x114]
0c015e54: e5813024  str r3, [r1, #0x24]
0c015e58: e3700001  cmn r0, #0x1
0c015e5c: e5813028  str r3, [r1, #0x28]
0c015e60: 13300000  teqne r0, #0x0
0c015e64: 0a0000a6  beq 0x0c016104
0c015e68: e3a02001  mov r2, #0x1
0c015e6c: e2000807  and r0, r0, #0x70000
0c015e70: e1a00820  mov r0, r0, lsr #16
0c015e74: e5a12024  str r2, [r1, #0x24]!
0c015e78: e5810004  str r0, [r1, #0x4]
0c015e7c: e59a0000  ldr r0, [r10, #0x0]
0c015e80: e3300006  teq r0, #0x6
0c015e84: 0a00005d  beq 0x0c016000
0c015e88: e3a030f2  mov r3, #0xf2
0c015e8c: e2833c02  add r3, r3, #0x200
0c015e90: e92d0008  stmdb sp!, {r3}
0c015e94: e1a01005  mov r1, r5
0c015e98: e3a03000  mov r3, #0x0
0c015e9c: e3a02030  mov r2, #0x30
0c015ea0: e3a00001  mov r0, #0x1
0c015ea4: ebfff605  bl 0x0c0136c0 <chip_id>
0c015ea8: e28dd004  add sp, sp, #0x4
0c015eac: e3a0303a  mov r3, #0x3a
0c015eb0: e2833c03  add r3, r3, #0x300
0c015eb4: e5860118  str r0, [r6, #0x118]
0c015eb8: e92d0008  stmdb sp!, {r3}
0c015ebc: e1a01005  mov r1, r5
0c015ec0: e3a03000  mov r3, #0x0
0c015ec4: e3a02031  mov r2, #0x31
0c015ec8: e3a00001  mov r0, #0x1
0c015ecc: ebfff5fb  bl 0x0c0136c0 <chip_id>
0c015ed0: e28dd004  add sp, sp, #0x4
0c015ed4: e3a04000  mov r4, #0x0
0c015ed8: e586011c  str r0, [r6, #0x11c]
0c015edc: e3a03068  mov r3, #0x68
0c015ee0: e2833b01  add r3, r3, #0x400
0c015ee4: e92d0008  stmdb sp!, {r3}
0c015ee8: e1a03004  mov r3, r4
0c015eec: e1a01005  mov r1, r5
0c015ef0: e3a02033  mov r2, #0x33
0c015ef4: e3a00001  mov r0, #0x1
0c015ef8: ebfff5f0  bl 0x0c0136c0 <chip_id>
0c015efc: e28dd004  add sp, sp, #0x4
0c015f00: e0861104  add r1, r6, r4, lsl #2
0c015f04: e2844001  add r4, r4, #0x1
0c015f08: e3540004  cmp r4, #0x4
0c015f0c: e5a10120  str r0, [r1, #0x120]!
0c015f10: bafffff1  blt 0x0c015edc
0c015f14: e3a04000  mov r4, #0x0
0c015f18: e3a030ad  mov r3, #0xad
0c015f1c: e2833c03  add r3, r3, #0x300
0c015f20: e92d0008  stmdb sp!, {r3}
0c015f24: e1a03004  mov r3, r4
0c015f28: e1a01005  mov r1, r5
0c015f2c: e3a02032  mov r2, #0x32
0c015f30: e3a00001  mov r0, #0x1
0c015f34: ebfff5e1  bl 0x0c0136c0 <chip_id>
0c015f38: e28dd004  add sp, sp, #0x4
0c015f3c: e0861104  add r1, r6, r4, lsl #2
0c015f40: e2844001  add r4, r4, #0x1
0c015f44: e3540008  cmp r4, #0x8
0c015f48: e5a10130  str r0, [r1, #0x130]!
0c015f4c: bafffff1  blt 0x0c015f18
0c015f50: e3a0a014  mov r10, #0x14
0c015f54: e51f0ddc  ldr r0, [pc, #-0xddc] =0x0406f70c
0c015f58: e5900000  ldr r0, [r0, #0x0]
0c015f5c: e3300002  teq r0, #0x2
0c015f60: 03a0a00a  moveq r10, #0xa
0c015f64: e3a04000  mov r4, #0x0
0c015f68: e35a0000  cmp r10, #0x0
0c015f6c: da000064  ble 0x0c016104
0c015f70: e3a030f4  mov r3, #0xf4
0c015f74: e2833b01  add r3, r3, #0x400
0c015f78: e92d0008  stmdb sp!, {r3}
0c015f7c: e1a03004  mov r3, r4
0c015f80: e1a01005  mov r1, r5
0c015f84: e3a02034  mov r2, #0x34
0c015f88: e3a00001  mov r0, #0x1
0c015f8c: ebfff5cb  bl 0x0c0136c0 <chip_id>
0c015f90: e28dd004  add sp, sp, #0x4
0c015f94: e0861104  add r1, r6, r4, lsl #2
0c015f98: e2844001  add r4, r4, #0x1
0c015f9c: e154000a  cmp r4, r10
0c015fa0: e5a10150  str r0, [r1, #0x150]!
0c015fa4: bafffff1  blt 0x0c015f70
0c015fa8: ea000055  b 0x0c016104
0c015fac: 0c0162e0  .word 0x0c0162e0
0c015fb0: 6765636f  .asciz "geconfig id 0x%08x type 0x%x group 0x%x rev 0x%x gecnt %d bef fifo %dM gpi %d\n"
0c016000: e3a030ff  mov r3, #0xff
0c016004: e2833b02  add r3, r3, #0x800
0c016008: e92d0008  stmdb sp!, {r3}
0c01600c: e1a01005  mov r1, r5
0c016010: e3a03000  mov r3, #0x0
0c016014: e3a02035  mov r2, #0x35
0c016018: e3a00001  mov r0, #0x1
0c01601c: ebfff5a7  bl 0x0c0136c0 <chip_id>
0c016020: e28dd004  add sp, sp, #0x4
0c016024: e3a030e3  mov r3, #0xe3
0c016028: e2833c09  add r3, r3, #0x900
0c01602c: e5860118  str r0, [r6, #0x118]
0c016030: e92d0008  stmdb sp!, {r3}
0c016034: e1a01005  mov r1, r5
0c016038: e3a03000  mov r3, #0x0
0c01603c: e3a02036  mov r2, #0x36
0c016040: e3a00001  mov r0, #0x1
0c016044: ebfff59d  bl 0x0c0136c0 <chip_id>
0c016048: e28dd004  add sp, sp, #0x4
0c01604c: e3a04000  mov r4, #0x0
0c016050: e586011c  str r0, [r6, #0x11c]
0c016054: e3a03051  mov r3, #0x51
0c016058: e2833c09  add r3, r3, #0x900
0c01605c: e92d0008  stmdb sp!, {r3}
0c016060: e1a03004  mov r3, r4
0c016064: e1a01005  mov r1, r5
0c016068: e3a02038  mov r2, #0x38
0c01606c: e3a00001  mov r0, #0x1
0c016070: ebfff592  bl 0x0c0136c0 <chip_id>
0c016074: e28dd004  add sp, sp, #0x4
0c016078: e0861104  add r1, r6, r4, lsl #2
0c01607c: e2844001  add r4, r4, #0x1
0c016080: e3540004  cmp r4, #0x4
0c016084: e5a10120  str r0, [r1, #0x120]!
0c016088: bafffff1  blt 0x0c016054
0c01608c: e3a04000  mov r4, #0x0
0c016090: e3a03ea6  mov r3, #0xa60
0c016094: e92d0008  stmdb sp!, {r3}
0c016098: e1a03004  mov r3, r4
0c01609c: e1a01005  mov r1, r5
0c0160a0: e3a02037  mov r2, #0x37
0c0160a4: e3a00001  mov r0, #0x1
0c0160a8: ebfff584  bl 0x0c0136c0 <chip_id>
0c0160ac: e28dd004  add sp, sp, #0x4
0c0160b0: e0861104  add r1, r6, r4, lsl #2
0c0160b4: e2844001  add r4, r4, #0x1
0c0160b8: e3540008  cmp r4, #0x8
0c0160bc: e5a10130  str r0, [r1, #0x130]!
0c0160c0: bafffff2  blt 0x0c016090
0c0160c4: e3a0a00a  mov r10, #0xa
0c0160c8: e3a04000  mov r4, #0x0
0c0160cc: e3a03f8e  mov r3, #0x238
0c0160d0: e2833b01  add r3, r3, #0x400
0c0160d4: e92d0008  stmdb sp!, {r3}
0c0160d8: e1a03004  mov r3, r4
0c0160dc: e1a01005  mov r1, r5
0c0160e0: e3a02039  mov r2, #0x39
0c0160e4: e3a00001  mov r0, #0x1
0c0160e8: ebfff574  bl 0x0c0136c0 <chip_id>
0c0160ec: e28dd004  add sp, sp, #0x4
0c0160f0: e0861104  add r1, r6, r4, lsl #2
0c0160f4: e2844001  add r4, r4, #0x1
0c0160f8: e154000a  cmp r4, r10
0c0160fc: e5a10150  str r0, [r1, #0x150]!
0c016100: bafffff1  blt 0x0c0160cc
0c016104: e2855001  add r5, r5, #0x1
0c016108: e1550007  cmp r5, r7
0c01610c: baffff47  blt 0x0c015e30
0c016110: e51f4f98  ldr r4, [pc, #-0xf98] =0x0406f70c
0c016114: e594002c  ldr r0, [r4, #0x2c]
0c016118: e5941024  ldr r1, [r4, #0x24]
0c01611c: e0810000  add r0, r1, r0
0c016120: e5941034  ldr r1, [r4, #0x34]
0c016124: e0801001  add r1, r0, r1
0c016128: e594003c  ldr r0, [r4, #0x3c]
0c01612c: e0810000  add r0, r1, r0
0c016130: e5840008  str r0, [r4, #0x8]
0c016134: e3500004  cmp r0, #0x4
0c016138: 908ff100  addls pc, pc, r0, lsl #2
0c01613c: ea00000e  b 0x0c01617c
0c016140: ea00000d  b 0x0c01617c
0c016144: ea000001  b 0x0c016150
0c016148: ea000000  b 0x0c016150
0c01614c: eaffffff  b 0x0c016150
0c016150: e5940028  ldr r0, [r4, #0x28]
0c016154: e3300000  teq r0, #0x0
0c016158: e5941040  ldr r1, [r4, #0x40]
0c01615c: e5942038  ldr r2, [r4, #0x38]
0c016160: e5943030  ldr r3, [r4, #0x30]
0c016164: 01a00003  moveq r0, r3
0c016168: e3300000  teq r0, #0x0
0c01616c: 01a00002  moveq r0, r2
0c016170: e3300000  teq r0, #0x0
0c016174: 01a00001  moveq r0, r1
0c016178: eb000591  bl 0x0c0177c4 <ucode>
0c01617c: ebfffe66  bl 0x0c015b1c <fn_0c015b1c>
0c016180: e5840344  str r0, [r4, #0x344]
0c016184: e3700001  cmn r0, #0x1
0c016188: 091bacf0  ldmeqdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c01618c: e2001807  and r1, r0, #0x70000
0c016190: e3a02001  mov r2, #0x1
0c016194: e0821821  add r1, r2, r1, lsr #16
0c016198: e1a05004  mov r5, r4
0c01619c: e5841014  str r1, [r4, #0x14]
0c0161a0: e200170e  and r1, r0, #0x380000
0c0161a4: e1a019a1  mov r1, r1, lsr #19
0c0161a8: e5841018  str r1, [r4, #0x18]
0c0161ac: e2001501  and r1, r0, #0x400000
0c0161b0: e1a01b21  mov r1, r1, lsr #22
0c0161b4: e584101c  str r1, [r4, #0x1c]
0c0161b8: e2001502  and r1, r0, #0x800000
0c0161bc: e1a01ba1  mov r1, r1, lsr #23
0c0161c0: e200001e  and r0, r0, #0x1e
0c0161c4: e1a000a0  mov r0, r0, lsr #1
0c0161c8: e5841020  str r1, [r4, #0x20]
0c0161cc: e3a03078  mov r3, #0x78
0c0161d0: e2833b02  add r3, r3, #0x800
0c0161d4: e5850048  str r0, [r5, #0x48]
0c0161d8: e92d0008  stmdb sp!, {r3}
0c0161dc: e3a03000  mov r3, #0x0
0c0161e0: e3a02022  mov r2, #0x22
0c0161e4: e3a01000  mov r1, #0x0
0c0161e8: e3a00000  mov r0, #0x0
0c0161ec: ebfff533  bl 0x0c0136c0 <chip_id>
0c0161f0: e28dd004  add sp, sp, #0x4
0c0161f4: e3a04000  mov r4, #0x0
0c0161f8: e5850348  str r0, [r5, #0x348]
0c0161fc: e3a03078  mov r3, #0x78
0c016200: e2833b02  add r3, r3, #0x800
0c016204: e92d0008  stmdb sp!, {r3}
0c016208: e1a03004  mov r3, r4
0c01620c: e3a02020  mov r2, #0x20
0c016210: e3a01000  mov r1, #0x0
0c016214: e3a00000  mov r0, #0x0
0c016218: ebfff528  bl 0x0c0136c0 <chip_id>
0c01621c: e28dd004  add sp, sp, #0x4
0c016220: e0851104  add r1, r5, r4, lsl #2
0c016224: e2844001  add r4, r4, #0x1
0c016228: e3540004  cmp r4, #0x4
0c01622c: e5a1034c  str r0, [r1, #0x34c]!
0c016230: bafffff1  blt 0x0c0161fc
0c016234: e3a04000  mov r4, #0x0
0c016238: e5950014  ldr r0, [r5, #0x14]
0c01623c: e3500000  cmp r0, #0x0
0c016240: d91bacf0  ldmledb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c016244: e3a03fee  mov r3, #0x3b8
0c016248: e2833b01  add r3, r3, #0x400
0c01624c: e92d0008  stmdb sp!, {r3}
0c016250: e1a03004  mov r3, r4
0c016254: e3a02021  mov r2, #0x21
0c016258: e3a01000  mov r1, #0x0
0c01625c: e3a00000  mov r0, #0x0
0c016260: ebfff516  bl 0x0c0136c0 <chip_id>
0c016264: e28dd004  add sp, sp, #0x4
0c016268: e0851104  add r1, r5, r4, lsl #2
0c01626c: e2844001  add r4, r4, #0x1
0c016270: e5a1035c  str r0, [r1, #0x35c]!
0c016274: e5950014  ldr r0, [r5, #0x14]
0c016278: e1540000  cmp r4, r0
0c01627c: bafffff0  blt 0x0c016244
0c016280: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c016284: e1a0c00d  mov r12, sp
0c016288: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c01628c: e24cb004  sub r11, r12, #0x4
0c016290: e3a03002  mov r3, #0x2
0c016294: e3a02000  mov r2, #0x0
0c016298: e3a01013  mov r1, #0x13
0c01629c: e3a00005  mov r0, #0x5
0c0162a0: ebfff477  bl 0x0c013484 <fn_0c013484>
0c0162a4: e51f06a8  ldr r0, [pc, #-0x6a8] =0x0401d740
0c0162a8: e51f1848  ldr r1, [pc, #-0x848] =0x0401d960
0c0162ac: e511113c  ldr r1, [r1, #-0x13c]
0c0162b0: e0800181  add r0, r0, r1, lsl #3
0c0162b4: e5900004  ldr r0, [r0, #0x4]
0c0162b8: e5900008  ldr r0, [r0, #0x8]
0c0162bc: e51f26c4  ldr r2, [pc, #-0x6c4] =0x04071690
0c0162c0: e3a03000  mov r3, #0x0
0c0162c4: e3a01000  mov r1, #0x0
0c0162c8: ebfff2da  bl 0x0c012e38 <fn_0c012e38>
0c0162cc: e3a01060  mov r1, #0x60
0c0162d0: e3a00013  mov r0, #0x13
0c0162d4: e91b6800  ldmdb r11, {r11,sp,lr}
0c0162d8: eafff3ab  b 0x0c01318c
0c0162dc: 01020408  tsteq r2, r8, lsl #8
0c0162e0: 00041021  andeq r1, r4, r1, lsr #32
0c0162e4: 00000010  andeq r0, r0, r0, lsl r0
0c0162e8: 00400080  subeq r0, r0, r0, lsl #1
0c0162ec: 01000200  tsteq r0, r0, lsl #4
0c0162f0: 0400014d  streq r0, [r0], #-0x14d
0c0162f4: 20800000  addcs r0, r0, r0
0c0162f8: 00400000  subeq r0, r0, r0
0c0162fc: e1a0c00d  mov r12, sp
0c016300: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c016304: e24cb004  sub r11, r12, #0x4
0c016308: e3a01000  mov r1, #0x0
0c01630c: e52d0004  str r0, [sp, #-0x4]!
0c016310: e52d1004  str r1, [sp, #-0x4]!
0c016314: e1a0000d  mov r0, sp
0c016318: ebffbd3a  bl 0x0c005808 <DoDGRqstChannelBlanking>
0c01631c: e91ba800  ldmdb r11, {r11,sp,pc}
fn_0c016320:
0c016320: e2802020  add r2, r0, #0x20
0c016324: e59f0074  ldr r0, [pc, #0x74] =0x0c016520
0c016328: e5903000  ldr r3, [r0, #0x0]
0c01632c: e0422003  sub r2, r2, r3
0c016330: e1a02982  mov r2, r2, lsl #19
0c016334: e1a029a2  mov r2, r2, lsr #19
0c016338: e2811020  add r1, r1, #0x20
0c01633c: e5900004  ldr r0, [r0, #0x4]
0c016340: e0411000  sub r1, r1, r0
0c016344: e3a00301  mov r0, #0x4000000
0c016348: e2400a02  sub r0, r0, #0x2000
0c01634c: e0000681  and r0, r0, r1, lsl #13
0c016350: e1820000  orr r0, r2, r0
0c016354: e3a01000  mov r1, #0x0
0c016358: e52d1004  str r1, [sp, #-0x4]!
0c01635c: e58d1000  str r1, [sp, #0x0]
0c016360: e59d1000  ldr r1, [sp, #0x0]
0c016364: e2811001  add r1, r1, #0x1
0c016368: e58d1000  str r1, [sp, #0x0]
0c01636c: e3510003  cmp r1, #0x3
0c016370: bafffffa  blt 0x0c016360
0c016374: e3a01606  mov r1, #0x600000
0c016378: e5a10408  str r0, [r1, #0x408]!
0c01637c: e3a00000  mov r0, #0x0
0c016380: e58d0000  str r0, [sp, #0x0]
0c016384: e59d0000  ldr r0, [sp, #0x0]
0c016388: e2800001  add r0, r0, #0x1
0c01638c: e58d0000  str r0, [sp, #0x0]
0c016390: e3500003  cmp r0, #0x3
0c016394: bafffffa  blt 0x0c016384
0c016398: e28dd004  add sp, sp, #0x4
0c01639c: e1a0f00e  mov pc, lr
0c0163a0: 0c016520  .word 0x0c016520
fn_0c0163a4:
0c0163a4: e3a00000  mov r0, #0x0
0c0163a8: e52d0004  str r0, [sp, #-0x4]!
0c0163ac: e58d0000  str r0, [sp, #0x0]
0c0163b0: e59d0000  ldr r0, [sp, #0x0]
0c0163b4: e2800001  add r0, r0, #0x1
0c0163b8: e58d0000  str r0, [sp, #0x0]
0c0163bc: e3500003  cmp r0, #0x3
0c0163c0: bafffffa  blt 0x0c0163b0
0c0163c4: e3a01000  mov r1, #0x0
0c0163c8: e3a00606  mov r0, #0x600000
0c0163cc: e5801404  str r1, [r0, #0x404]
0c0163d0: e3a02000  mov r2, #0x0
0c0163d4: e58d2000  str r2, [sp, #0x0]
0c0163d8: e59d2000  ldr r2, [sp, #0x0]
0c0163dc: e2822001  add r2, r2, #0x1
0c0163e0: e58d2000  str r2, [sp, #0x0]
0c0163e4: e3520003  cmp r2, #0x3
0c0163e8: bafffffa  blt 0x0c0163d8
0c0163ec: e3a02000  mov r2, #0x0
0c0163f0: e58d2000  str r2, [sp, #0x0]
0c0163f4: e58d2000  str r2, [sp, #0x0]
0c0163f8: e59d2000  ldr r2, [sp, #0x0]
0c0163fc: e2822001  add r2, r2, #0x1
0c016400: e58d2000  str r2, [sp, #0x0]
0c016404: e3520003  cmp r2, #0x3
0c016408: bafffffa  blt 0x0c0163f8
0c01640c: e3a02002  mov r2, #0x2
0c016410: e580240c  str r2, [r0, #0x40c]
0c016414: e3a02000  mov r2, #0x0
0c016418: e58d2000  str r2, [sp, #0x0]
0c01641c: e59d2000  ldr r2, [sp, #0x0]
0c016420: e2822001  add r2, r2, #0x1
0c016424: e58d2000  str r2, [sp, #0x0]
0c016428: e3520003  cmp r2, #0x3
0c01642c: bafffffa  blt 0x0c01641c
0c016430: e3a02000  mov r2, #0x0
0c016434: e58d2000  str r2, [sp, #0x0]
0c016438: e58d2000  str r2, [sp, #0x0]
0c01643c: e59d2000  ldr r2, [sp, #0x0]
0c016440: e2822001  add r2, r2, #0x1
0c016444: e58d2000  str r2, [sp, #0x0]
0c016448: e3520003  cmp r2, #0x3
0c01644c: bafffffa  blt 0x0c01643c
0c016450: e5801400  str r1, [r0, #0x400]
0c016454: e3a02000  mov r2, #0x0
0c016458: e58d2000  str r2, [sp, #0x0]
0c01645c: e59d2000  ldr r2, [sp, #0x0]
0c016460: e2822001  add r2, r2, #0x1
0c016464: e58d2000  str r2, [sp, #0x0]
0c016468: e3520003  cmp r2, #0x3
0c01646c: bafffffa  blt 0x0c01645c
0c016470: e3a02000  mov r2, #0x0
0c016474: e58d2000  str r2, [sp, #0x0]
0c016478: e58d2000  str r2, [sp, #0x0]
0c01647c: e59d2000  ldr r2, [sp, #0x0]
0c016480: e2822001  add r2, r2, #0x1
0c016484: e58d2000  str r2, [sp, #0x0]
0c016488: e3520003  cmp r2, #0x3
0c01648c: bafffffa  blt 0x0c01647c
0c016490: e1a02001  mov r2, r1
0c016494: e1a01000  mov r1, r0
0c016498: e5802460  str r2, [r0, #0x460]
0c01649c: e3a00000  mov r0, #0x0
0c0164a0: e58d0000  str r0, [sp, #0x0]
0c0164a4: e59d0000  ldr r0, [sp, #0x0]
0c0164a8: e2800001  add r0, r0, #0x1
0c0164ac: e58d0000  str r0, [sp, #0x0]
0c0164b0: e3500003  cmp r0, #0x3
0c0164b4: bafffffa  blt 0x0c0164a4
0c0164b8: e28dd004  add sp, sp, #0x4
0c0164bc: e3a00000  mov r0, #0x0
0c0164c0: e59f2054  ldr r2, [pc, #0x54] =0x0401d938
0c0164c4: e3a03000  mov r3, #0x0
0c0164c8: e52d3004  str r3, [sp, #-0x4]!
0c0164cc: e58d3000  str r3, [sp, #0x0]
0c0164d0: e59d3000  ldr r3, [sp, #0x0]
0c0164d4: e2833001  add r3, r3, #0x1
0c0164d8: e58d3000  str r3, [sp, #0x0]
0c0164dc: e3530003  cmp r3, #0x3
0c0164e0: bafffffa  blt 0x0c0164d0
0c0164e4: e7923100  ldr r3, [r2, r0, lsl #2]
0c0164e8: e5813464  str r3, [r1, #0x464]
0c0164ec: e3a03000  mov r3, #0x0
0c0164f0: e58d3000  str r3, [sp, #0x0]
0c0164f4: e59d3000  ldr r3, [sp, #0x0]
0c0164f8: e2833001  add r3, r3, #0x1
0c0164fc: e58d3000  str r3, [sp, #0x0]
0c016500: e3530003  cmp r3, #0x3
0c016504: bafffffa  blt 0x0c0164f4
0c016508: e28dd004  add sp, sp, #0x4
0c01650c: e2800001  add r0, r0, #0x1
0c016510: e3500f41  cmp r0, #0x104
0c016514: baffffea  blt 0x0c0164c4
0c016518: e1a0f00e  mov pc, lr
0c01651c: 0401d938  .word 0x0401d938
0c016520: 00000000  andeq r0, r0, r0
0c016524: 00000000  andeq r0, r0, r0
0c016528: e1a0c00d  mov r12, sp
0c01652c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c016530: e24cb004  sub r11, r12, #0x4
0c016534: e24dd00c  sub sp, sp, #0xc
0c016538: e3a03b01  mov r3, #0x400
0c01653c: e2433001  sub r3, r3, #0x1
0c016540: e3a02b01  mov r2, #0x400
0c016544: e2422001  sub r2, r2, #0x1
0c016548: e3a01b01  mov r1, #0x400
0c01654c: e2411001  sub r1, r1, #0x1
0c016550: e3a00000  mov r0, #0x0
0c016554: ebffe2bc  bl 0x0c00f04c <fn_0c00f04c>
0c016558: e3a03064  mov r3, #0x64
0c01655c: e3a02064  mov r2, #0x64
0c016560: e3a01064  mov r1, #0x64
0c016564: e3a00001  mov r0, #0x1
0c016568: ebffe2b7  bl 0x0c00f04c <fn_0c00f04c>
0c01656c: e3a07f5f  mov r7, #0x17c
0c016570: e3a06f5f  mov r6, #0x17c
0c016574: e3a05f8f  mov r5, #0x23c
0c016578: e59f01d4  ldr r0, [pc, #0x1d4] =0x04018f74
0c01657c: e5900000  ldr r0, [r0, #0x0]
0c016580: e5b01010  ldr r1, [r0, #0x10]!
0c016584: e1a04001  mov r4, r1
0c016588: e3a00f51  mov r0, #0x144
0c01658c: eb00049d  bl 0x0c017808 <__rt_sdiv>
0c016590: e290a001  adds r10, r0, #0x1
0c016594: 03a0a00a  moveq r10, #0xa
0c016598: e1a01004  mov r1, r4
0c01659c: e3a00f73  mov r0, #0x1cc
0c0165a0: eb000498  bl 0x0c017808 <__rt_sdiv>
0c0165a4: e2900001  adds r0, r0, #0x1
0c0165a8: e58d0004  str r0, [sp, #0x4]
0c0165ac: 03a0000a  moveq r0, #0xa
0c0165b0: 058d0004  streq r0, [sp, #0x4]
0c0165b4: e1a01004  mov r1, r4
0c0165b8: e3a00d07  mov r0, #0x1c0
0c0165bc: eb000491  bl 0x0c017808 <__rt_sdiv>
0c0165c0: e2900001  adds r0, r0, #0x1
0c0165c4: e58d0000  str r0, [sp, #0x0]
0c0165c8: 03a0000a  moveq r0, #0xa
0c0165cc: 058d0000  streq r0, [sp, #0x0]
0c0165d0: e1a03005  mov r3, r5
0c0165d4: e1a02006  mov r2, r6
0c0165d8: e1a01007  mov r1, r7
0c0165dc: e3a00002  mov r0, #0x2
0c0165e0: ebffe299  bl 0x0c00f04c <fn_0c00f04c>
0c0165e4: e3a00002  mov r0, #0x2
0c0165e8: ebffe291  bl 0x0c00f034 <fn_0c00f034>
0c0165ec: e3a04000  mov r4, #0x0
0c0165f0: e59f015c  ldr r0, [pc, #0x15c] =0x04018f74
0c0165f4: e5900000  ldr r0, [r0, #0x0]
0c0165f8: e5900010  ldr r0, [r0, #0x10]
0c0165fc: e3500000  cmp r0, #0x0
0c016600: da000021  ble 0x0c01668c
0c016604: e2843001  add r3, r4, #0x1
0c016608: e1a02004  mov r2, r4
0c01660c: e58d3008  str r3, [sp, #0x8]
0c016610: e59f013c  ldr r0, [pc, #0x13c] =0x04018f74
0c016614: e5900000  ldr r0, [r0, #0x0]
0c016618: e5b0100c  ldr r1, [r0, #0xc]!
0c01661c: e3a00000  mov r0, #0x0
0c016620: ebffe2ad  bl 0x0c00f0dc <fn_0c00f0dc>
0c016624: e1a01004  mov r1, r4
0c016628: e1a0000a  mov r0, r10
0c01662c: eb000489  bl 0x0c017858 <__rt_udiv>
0c016630: e3310000  teq r1, #0x0
0c016634: 02877001  addeq r7, r7, #0x1
0c016638: e1a01004  mov r1, r4
0c01663c: e59d0004  ldr r0, [sp, #0x4]
0c016640: eb000484  bl 0x0c017858 <__rt_udiv>
0c016644: e3310000  teq r1, #0x0
0c016648: 02866001  addeq r6, r6, #0x1
0c01664c: e1a01004  mov r1, r4
0c016650: e59d0000  ldr r0, [sp, #0x0]
0c016654: eb00047f  bl 0x0c017858 <__rt_udiv>
0c016658: e3310000  teq r1, #0x0
0c01665c: 02855001  addeq r5, r5, #0x1
0c016660: e1a03005  mov r3, r5
0c016664: e1a02006  mov r2, r6
0c016668: e1a01007  mov r1, r7
0c01666c: e3a00002  mov r0, #0x2
0c016670: ebffe275  bl 0x0c00f04c <fn_0c00f04c>
0c016674: e59d4008  ldr r4, [sp, #0x8]
0c016678: e59f00d4  ldr r0, [pc, #0xd4] =0x04018f74
0c01667c: e5900000  ldr r0, [r0, #0x0]
0c016680: e5900010  ldr r0, [r0, #0x10]
0c016684: e1540000  cmp r4, r0
0c016688: baffffdd  blt 0x0c016604
0c01668c: e3a00000  mov r0, #0x0
0c016690: ebffe267  bl 0x0c00f034 <fn_0c00f034>
0c016694: e3a05000  mov r5, #0x0
0c016698: e59f60b8  ldr r6, [pc, #0xb8] =0x0406f70c
0c01669c: e59f00b8  ldr r0, [pc, #0xb8] =0x0403f2fc
0c0166a0: e0800105  add r0, r0, r5, lsl #2
0c0166a4: e280aa03  add r10, r0, #0x3000
0c0166a8: e59a0004  ldr r0, [r10, #0x4]
0c0166ac: e590116c  ldr r1, [r0, #0x16c]
0c0166b0: e3110302  tst r1, #0x8000000
0c0166b4: 0a000094  beq 0x0c01690c
0c0166b8: e5901050  ldr r1, [r0, #0x50]
0c0166bc: e291400a  adds r4, r1, #0xa
0c0166c0: e5901054  ldr r1, [r0, #0x54]
0c0166c4: e2811001  add r1, r1, #0x1
0c0166c8: e590005c  ldr r0, [r0, #0x5c]
0c0166cc: e0410000  sub r0, r1, r0
0c0166d0: e28070c8  add r7, r0, #0xc8
0c0166d4: 4a000006  bmi 0x0c0166f4
0c0166d8: e2840075  add r0, r4, #0x75
0c0166dc: e2800c02  add r0, r0, #0x200
0c0166e0: e59f106c  ldr r1, [pc, #0x6c] =0x04018f74
0c0166e4: e5911000  ldr r1, [r1, #0x0]
0c0166e8: e591100c  ldr r1, [r1, #0xc]
0c0166ec: e1500001  cmp r0, r1
0c0166f0: ba000000  blt 0x0c0166f8
0c0166f4: e3a0400a  mov r4, #0xa
0c0166f8: e3570000  cmp r7, #0x0
0c0166fc: ba000005  blt 0x0c016718
0c016700: e28700ba  add r0, r7, #0xba
0c016704: e59f1048  ldr r1, [pc, #0x48] =0x04018f74
0c016708: e5911000  ldr r1, [r1, #0x0]
0c01670c: e5911010  ldr r1, [r1, #0x10]
0c016710: e1500001  cmp r0, r1
0c016714: ba000000  blt 0x0c01671c
0c016718: e3a070c8  mov r7, #0xc8
0c01671c: e5960000  ldr r0, [r6, #0x0]
0c016720: e3500006  cmp r0, #0x6
0c016724: 908ff100  addls pc, pc, r0, lsl #2
0c016728: ea00003d  b 0x0c016824
0c01672c: ea00003c  b 0x0c016824
0c016730: ea000011  b 0x0c01677c
0c016734: ea00001b  b 0x0c0167a8
0c016738: ea00000f  b 0x0c01677c
0c01673c: ea000022  b 0x0c0167cc
0c016740: ea00002c  b 0x0c0167f8
0c016744: e1a01007  mov r1, r7
0c016748: e1a00004  mov r0, r4
0c01674c: e28f2f03  add r2, pc, #0xc
0c016750: ea000036  b 0x0c016830
0c016754: 04018f74  .word 0x04018f74
0c016758: 0406f70c  .word 0x0406f70c
0c01675c: 0403f2fc  .word 0x0403f2fc
0c016760: 496e6669  .asciz "InfiniteReality4 Graphics"
0c01677c: e1a01007  mov r1, r7
0c016780: e1a00004  mov r0, r4
0c016784: e28f2f00  add r2, pc, #0x0
0c016788: ea000028  b 0x0c016830
0c01678c: 496e6669  .asciz "InfiniteReality2 Graphics"
0c0167a8: e1a01007  mov r1, r7
0c0167ac: e1a00004  mov r0, r4
0c0167b0: e28f2f00  add r2, pc, #0x0
0c0167b4: ea00001d  b 0x0c016830
0c0167b8: 5265616c  .asciz "Reality Graphics"
0c0167cc: e1a01007  mov r1, r7
0c0167d0: e1a00004  mov r0, r4
0c0167d4: e28f2f00  add r2, pc, #0x0
0c0167d8: ea000014  b 0x0c016830
0c0167dc: 496e6669  .asciz "InfiniteReality2E Graphics"
0c0167f8: e1a01007  mov r1, r7
0c0167fc: e1a00004  mov r0, r4
0c016800: e28f2f00  add r2, pc, #0x0
0c016804: ea000009  b 0x0c016830
0c016808: 496e6669  .asciz "InfiniteReality3 Graphics"
0c016824: e1a01007  mov r1, r7
0c016828: e1a00004  mov r0, r4
0c01682c: e28f2f3a  add r2, pc, #0xe8
0c016830: eb000190  bl 0x0c016e78 <fn_0c016e78>
0c016834: e2477011  sub r7, r7, #0x11
0c016838: e3a01030  mov r1, #0x30
0c01683c: e3a00702  mov r0, #0x80000
0c016840: e2400c01  sub r0, r0, #0x100
0c016844: ebffad48  bl 0x0c001d6c <fn_0c001d6c>
0c016848: e59f00e8  ldr r0, [pc, #0xe8] =0x0401f2fc
0c01684c: e5b03024  ldr r3, [r0, #0x24]!
0c016850: e51f0104  ldr r0, [pc, #-0x104] =0x04018f74
0c016854: e5900000  ldr r0, [r0, #0x0]
0c016858: e2800903  add r0, r0, #0xc000
0c01685c: e1a01007  mov r1, r7
0c016860: e5a03014  str r3, [r0, #0x14]!
0c016864: e1a00004  mov r0, r4
0c016868: e28f2f33  add r2, pc, #0xcc
0c01686c: eb000181  bl 0x0c016e78 <fn_0c016e78>
0c016870: e2477011  sub r7, r7, #0x11
0c016874: e596002c  ldr r0, [r6, #0x2c]
0c016878: e5961024  ldr r1, [r6, #0x24]
0c01687c: e0811000  add r1, r1, r0
0c016880: e5960034  ldr r0, [r6, #0x34]
0c016884: e0811000  add r1, r1, r0
0c016888: e596003c  ldr r0, [r6, #0x3c]
0c01688c: e0813000  add r3, r1, r0
0c016890: e92d0008  stmdb sp!, {r3}
0c016894: e1a01007  mov r1, r7
0c016898: e1a00004  mov r0, r4
0c01689c: e5963004  ldr r3, [r6, #0x4]
0c0168a0: e28f2f2a  add r2, pc, #0xa8
0c0168a4: eb000173  bl 0x0c016e78 <fn_0c016e78>
0c0168a8: e28dd004  add sp, sp, #0x4
0c0168ac: e5bae004  ldr lr, [r10, #0x4]!
0c0168b0: e59ea000  ldr r10, [lr, #0x0]
0c0168b4: e08a020a  add r0, r10, r10, lsl #4
0c0168b8: e2800011  add r0, r0, #0x11
0c0168bc: e047c000  sub r12, r7, r0
0c0168c0: e28e1058  add r1, lr, #0x58
0c0168c4: e8910003  ldmia r1, {r0,r1}
0c0168c8: e28e3080  add r3, lr, #0x80
0c0168cc: e893000c  ldmia r3, {r2,r3}
0c0168d0: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c0168d4: e59e0054  ldr r0, [lr, #0x54]
0c0168d8: e51f118c  ldr r1, [pc, #-0x18c] =0x04018f74
0c0168dc: e5911000  ldr r1, [r1, #0x0]
0c0168e0: e5911010  ldr r1, [r1, #0x10]
0c0168e4: e0410000  sub r0, r1, r0
0c0168e8: e2403001  sub r3, r0, #0x1
0c0168ec: e5be2050  ldr r2, [lr, #0x50]!
0c0168f0: e92d000c  stmdb sp!, {r2,r3}
0c0168f4: e1a0300a  mov r3, r10
0c0168f8: e1a0100c  mov r1, r12
0c0168fc: e1a00004  mov r0, r4
0c016900: e28f2f16  add r2, pc, #0x58
0c016904: eb00015b  bl 0x0c016e78 <fn_0c016e78>
0c016908: e28dd018  add sp, sp, #0x18
0c01690c: e2855001  add r5, r5, #0x1
0c016910: e35500fd  cmp r5, #0xfd
0c016914: baffff60  blt 0x0c01669c
0c016918: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c01691c: 496e6669  .asciz "InfiniteReality Graphics"
0c016938: 0401f2fc  .word 0x0401f2fc
0c01693c: 50726f6d  .asciz "Prom Revision %d"
0c016950: 25642047  .asciz "%d GEs, %d RMs"
0c016960: 56696465  .asciz "Video Channel %d source at (%d,%d) size %dx%d, format size %dx%d"
fn_0c0169a4:
0c0169a4: e1a0c00d  mov r12, sp
0c0169a8: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c0169ac: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c0169b0: e24cb014  sub r11, r12, #0x14
0c0169b4: e24dd00c  sub sp, sp, #0xc
0c0169b8: e3a0400a  mov r4, #0xa
0c0169bc: e59b601c  ldr r6, [r11, #0x1c]
0c0169c0: e59b7018  ldr r7, [r11, #0x18]
0c0169c4: e59ba014  ldr r10, [r11, #0x14]
0c0169c8: e51f127c  ldr r1, [pc, #-0x27c] =0x04018f74
0c0169cc: e5910000  ldr r0, [r1, #0x0]
0c0169d0: e2800903  add r0, r0, #0xc000
0c0169d4: e5902018  ldr r2, [r0, #0x18]
0c0169d8: e3320000  teq r2, #0x0
0c0169dc: 1a000001  bne 0x0c0169e8
0c0169e0: e3a00000  mov r0, #0x0
0c0169e4: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c0169e8: e590001c  ldr r0, [r0, #0x1c]
0c0169ec: e3300000  teq r0, #0x0
0c0169f0: 1a000021  bne 0x0c016a7c
0c0169f4: e3a000f6  mov r0, #0xf6
0c0169f8: e2800c0f  add r0, r0, #0xf00
0c0169fc: e59f117c  ldr r1, [pc, #0x17c] =0x0401fd44
0c016a00: e3a050f7  mov r5, #0xf7
0c016a04: e2855c0f  add r5, r5, #0xf00
0c016a08: e3a03014  mov r3, #0x14
0c016a0c: e3a02014  mov r2, #0x14
0c016a10: e5210e70  str r0, [r1, #-0xe70]!
0c016a14: e3a01014  mov r1, #0x14
0c016a18: ebffe18b  bl 0x0c00f04c <fn_0c00f04c>
0c016a1c: e1a00005  mov r0, r5
0c016a20: e3a05ffe  mov r5, #0x3f8
0c016a24: e2855b03  add r5, r5, #0xc00
0c016a28: e3a03b01  mov r3, #0x400
0c016a2c: e2433001  sub r3, r3, #0x1
0c016a30: e3a02b01  mov r2, #0x400
0c016a34: e2422001  sub r2, r2, #0x1
0c016a38: e3a01b01  mov r1, #0x400
0c016a3c: e2411001  sub r1, r1, #0x1
0c016a40: ebffe181  bl 0x0c00f04c <fn_0c00f04c>
0c016a44: e1a00005  mov r0, r5
0c016a48: e3a03000  mov r3, #0x0
0c016a4c: e3a02000  mov r2, #0x0
0c016a50: e3a01b01  mov r1, #0x400
0c016a54: e2411001  sub r1, r1, #0x1
0c016a58: ebffe17b  bl 0x0c00f04c <fn_0c00f04c>
0c016a5c: e3a00014  mov r0, #0x14
0c016a60: e59f1118  ldr r1, [pc, #0x118] =0x0401fd44
0c016a64: e5210e74  str r0, [r1, #-0xe74]!
0c016a68: e3a00001  mov r0, #0x1
0c016a6c: e51f1320  ldr r1, [pc, #-0x320] =0x04018f74
0c016a70: e5911000  ldr r1, [r1, #0x0]
0c016a74: e2811903  add r1, r1, #0xc000
0c016a78: e5a1001c  str r0, [r1, #0x1c]!
0c016a7c: e51f0330  ldr r0, [pc, #-0x330] =0x04018f74
0c016a80: e5900000  ldr r0, [r0, #0x0]
0c016a84: e5901004  ldr r1, [r0, #0x4]
0c016a88: e58d1008  str r1, [sp, #0x8]
0c016a8c: e5901008  ldr r1, [r0, #0x8]
0c016a90: e58d1004  str r1, [sp, #0x4]
0c016a94: e5900000  ldr r0, [r0, #0x0]
0c016a98: e58d0000  str r0, [sp, #0x0]
0c016a9c: e59f00dc  ldr r0, [pc, #0xdc] =0x0401fd44
0c016aa0: e5100e74  ldr r0, [r0, #-0xe74]
0c016aa4: e0805200  add r5, r0, r0, lsl #4
0c016aa8: e59f00d0  ldr r0, [pc, #0xd0] =0x0401fd44
0c016aac: e5100e70  ldr r0, [r0, #-0xe70]
0c016ab0: ebffe15f  bl 0x0c00f034 <fn_0c00f034>
0c016ab4: e2853011  add r3, r5, #0x11
0c016ab8: e3a01013  mov r1, #0x13
0c016abc: e1a02005  mov r2, r5
0c016ac0: e1a00004  mov r0, r4
0c016ac4: ebffe184  bl 0x0c00f0dc <fn_0c00f0dc>
0c016ac8: e59f00b0  ldr r0, [pc, #0xb0] =0x0401fd44
0c016acc: e5100e74  ldr r0, [r0, #-0xe74]
0c016ad0: e2500001  subs r0, r0, #0x1
0c016ad4: e59f10a4  ldr r1, [pc, #0xa4] =0x0401fd44
0c016ad8: e5210e74  str r0, [r1, #-0xe74]!
0c016adc: 03a00014  moveq r0, #0x14
0c016ae0: 059f1098  ldreq r1, [pc, #0x98] =0x0401fd44
0c016ae4: 05210e74  streq r0, [r1, #-0xe74]!
0c016ae8: e59f0090  ldr r0, [pc, #0x90] =0x0401fd44
0c016aec: e5100e74  ldr r0, [r0, #-0xe74]
0c016af0: e0805200  add r5, r0, r0, lsl #4
0c016af4: e2853011  add r3, r5, #0x11
0c016af8: e1a02005  mov r2, r5
0c016afc: e1a00004  mov r0, r4
0c016b00: e3a01e19  mov r1, #0x190
0c016b04: ebffe174  bl 0x0c00f0dc <fn_0c00f0dc>
0c016b08: e59f0070  ldr r0, [pc, #0x70] =0x0401fd44
0c016b0c: e5100e70  ldr r0, [r0, #-0xe70]
0c016b10: e2800002  add r0, r0, #0x2
0c016b14: ebffe146  bl 0x0c00f034 <fn_0c00f034>
0c016b18: e2851005  add r1, r5, #0x5
0c016b1c: e1a00004  mov r0, r4
0c016b20: e28f2f17  add r2, pc, #0x5c
0c016b24: eb0000d3  bl 0x0c016e78 <fn_0c016e78>
0c016b28: e59f0050  ldr r0, [pc, #0x50] =0x0401fd44
0c016b2c: e5100e70  ldr r0, [r0, #-0xe70]
0c016b30: e2800001  add r0, r0, #0x1
0c016b34: ebffe13e  bl 0x0c00f034 <fn_0c00f034>
0c016b38: e1a03006  mov r3, r6
0c016b3c: e1a02007  mov r2, r7
0c016b40: e1a0100a  mov r1, r10
0c016b44: e92d000e  stmdb sp!, {r1,r2,r3}
0c016b48: e99b000f  ldmib r11, {r0,r1,r2,r3}
0c016b4c: eb000054  bl 0x0c016ca4 <fn_0c016ca4>
0c016b50: e28dd00c  add sp, sp, #0xc
0c016b54: e59d0008  ldr r0, [sp, #0x8]
0c016b58: e51f140c  ldr r1, [pc, #-0x40c] =0x04018f74
0c016b5c: e5912000  ldr r2, [r1, #0x0]
0c016b60: e5a20004  str r0, [r2, #0x4]!
0c016b64: e59d0004  ldr r0, [sp, #0x4]
0c016b68: e5912000  ldr r2, [r1, #0x0]
0c016b6c: e5a20008  str r0, [r2, #0x8]!
0c016b70: e59d0000  ldr r0, [sp, #0x0]
0c016b74: e5911000  ldr r1, [r1, #0x0]
0c016b78: e5810000  str r0, [r1, #0x0]
0c016b7c: eaffff97  b 0x0c0169e0
0c016b80: 0401fd44  .word 0x0401fd44
0c016b84: 2a200000  bcs 0x0c816b8c
fn_0c016b88:
0c016b88: e1a0c00d  mov r12, sp
0c016b8c: e92dd800  stmdb sp!, {r11,r12,lr,pc}
0c016b90: e24cb004  sub r11, r12, #0x4
0c016b94: e20000ff  and r0, r0, #0xff
0c016b98: e59f1070  ldr r1, [pc, #0x70] =0x0401e6d0
0c016b9c: e0810180  add r0, r1, r0, lsl #3
0c016ba0: e59f106c  ldr r1, [pc, #0x6c] =0x0401dd48
0c016ba4: e5d0c000  ldrb r12, [r0, #0x0]
0c016ba8: e5d02001  ldrb r2, [r0, #0x1]
0c016bac: e182240c  orr r2, r2, r12, lsl #8
0c016bb0: e0811102  add r1, r1, r2, lsl #2
0c016bb4: e52d101c  str r1, [sp, #-0x1c]!
0c016bb8: e5d01002  ldrb r1, [r0, #0x2]
0c016bbc: e58d1004  str r1, [sp, #0x4]
0c016bc0: e5d01003  ldrb r1, [r0, #0x3]
0c016bc4: e58d1008  str r1, [sp, #0x8]
0c016bc8: e5d01004  ldrb r1, [r0, #0x4]
0c016bcc: e1a01c01  mov r1, r1, lsl #24
0c016bd0: e1a01c41  mov r1, r1, asr #24
0c016bd4: e58d100c  str r1, [sp, #0xc]
0c016bd8: e5d01005  ldrb r1, [r0, #0x5]
0c016bdc: e1a01c01  mov r1, r1, lsl #24
0c016be0: e1a01c41  mov r1, r1, asr #24
0c016be4: e58d1010  str r1, [sp, #0x10]
0c016be8: e5d0c006  ldrb r12, [r0, #0x6]
0c016bec: e5d00007  ldrb r0, [r0, #0x7]
0c016bf0: e1a0cc0c  mov r12, r12, lsl #24
0c016bf4: e180084c  orr r0, r0, r12, asr #16
0c016bf8: e58d0014  str r0, [sp, #0x14]
0c016bfc: e3a00000  mov r0, #0x0
0c016c00: e58d0018  str r0, [sp, #0x18]
0c016c04: e1a0000d  mov r0, sp
0c016c08: ebffe169  bl 0x0c00f1b4 <fn_0c00f1b4>
0c016c0c: e91ba800  ldmdb r11, {r11,sp,pc}
0c016c10: 0401e6d0  .word 0x0401e6d0
0c016c14: 0401dd48  .word 0x0401dd48
fn_0c016c18:
0c016c18: e1a0c00d  mov r12, sp
0c016c1c: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c016c20: e24cb004  sub r11, r12, #0x4
0c016c24: e1a06001  mov r6, r1
0c016c28: e1a05002  mov r5, r2
0c016c2c: e1a04003  mov r4, r3
0c016c30: e24dd004  sub sp, sp, #0x4
0c016c34: e1a01000  mov r1, r0
0c016c38: e1a00006  mov r0, r6
0c016c3c: e59ba004  ldr r10, [r11, #0x4]
0c016c40: eb000304  bl 0x0c017858 <__rt_udiv>
0c016c44: e1b07000  movs r7, r0
0c016c48: e58d1000  str r1, [sp, #0x0]
0c016c4c: 1a000001  bne 0x0c016c58
0c016c50: e3540001  cmp r4, #0x1
0c016c54: da000007  ble 0x0c016c78
0c016c58: e3a03000  mov r3, #0x0
0c016c5c: e92d0008  stmdb sp!, {r3}
0c016c60: e2443001  sub r3, r4, #0x1
0c016c64: e1a02005  mov r2, r5
0c016c68: e1a01006  mov r1, r6
0c016c6c: e1a00007  mov r0, r7
0c016c70: ebffffe8  bl 0x0c016c18 <fn_0c016c18>
0c016c74: e28dd004  add sp, sp, #0x4
0c016c78: e59d1000  ldr r1, [sp, #0x0]
0c016c7c: e3310000  teq r1, #0x0
0c016c80: 03350000  teqeq r5, #0x0
0c016c84: 03370000  teqeq r7, #0x0
0c016c88: 033a0000  teqeq r10, #0x0
0c016c8c: 159f000c  ldrne r0, [pc, #0xc] =0x0401eed8
0c016c90: 17d00001  ldrneb r0, [r0, r1]
0c016c94: 03a00020  moveq r0, #0x20
0c016c98: ebffffba  bl 0x0c016b88 <fn_0c016b88>
0c016c9c: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c016ca0: 0401eed8  .word 0x0401eed8
fn_0c016ca4:
0c016ca4: e1a0c00d  mov r12, sp
0c016ca8: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c016cac: e24cb004  sub r11, r12, #0x4
0c016cb0: e1a04000  mov r4, r0
0c016cb4: e59b0018  ldr r0, [r11, #0x18]
0c016cb8: e28be00c  add lr, r11, #0xc
0c016cbc: e89e4020  ldmia lr, {r5,lr}
0c016cc0: e59b6008  ldr r6, [r11, #0x8]
0c016cc4: e59b7004  ldr r7, [r11, #0x4]
0c016cc8: e59bc014  ldr r12, [r11, #0x14]
0c016ccc: e52d0004  str r0, [sp, #-0x4]!
0c016cd0: e52dc004  str r12, [sp, #-0x4]!
0c016cd4: e92d4020  stmdb sp!, {r5,lr}
0c016cd8: e52d6004  str r6, [sp, #-0x4]!
0c016cdc: e92d008e  stmdb sp!, {r1,r2,r3,r7}
0c016ce0: e1a0500d  mov r5, sp
0c016ce4: e4d40001  ldrb r0, [r4], #0x1
0c016ce8: e3300000  teq r0, #0x0
0c016cec: 0a00004d  beq 0x0c016e28
0c016cf0: e3300025  teq r0, #0x25
0c016cf4: 1a000047  bne 0x0c016e18
0c016cf8: e5d40000  ldrb r0, [r4, #0x0]
0c016cfc: e3300030  teq r0, #0x30
0c016d00: 13a07000  movne r7, #0x0
0c016d04: 03a07001  moveq r7, #0x1
0c016d08: e2844001  add r4, r4, #0x1
0c016d0c: e3a06000  mov r6, #0x0
0c016d10: ea000003  b 0x0c016d24
0c016d14: e0861106  add r1, r6, r6, lsl #2
0c016d18: e0800081  add r0, r0, r1, lsl #1
0c016d1c: e2406030  sub r6, r0, #0x30
0c016d20: e4d40001  ldrb r0, [r4], #0x1
0c016d24: e3500030  cmp r0, #0x30
0c016d28: ba000001  blt 0x0c016d34
0c016d2c: e3500039  cmp r0, #0x39
0c016d30: dafffff7  ble 0x0c016d14
0c016d34: e3500062  cmp r0, #0x62
0c016d38: 0a00002e  beq 0x0c016df8
0c016d3c: ca00000e  bgt 0x0c016d7c
0c016d40: e350004f  cmp r0, #0x4f
0c016d44: 0a000039  beq 0x0c016e30
0c016d48: ca000006  bgt 0x0c016d68
0c016d4c: e3300042  teq r0, #0x42
0c016d50: 0a000028  beq 0x0c016df8
0c016d54: e3300043  teq r0, #0x43
0c016d58: 0a00002d  beq 0x0c016e14
0c016d5c: e3300044  teq r0, #0x44
0c016d60: 1a00002d  bne 0x0c016e1c
0c016d64: ea00000b  b 0x0c016d98
0c016d68: e3300053  teq r0, #0x53
0c016d6c: 0a000038  beq 0x0c016e54
0c016d70: e3300058  teq r0, #0x58
0c016d74: 1a000028  bne 0x0c016e1c
0c016d78: ea000017  b 0x0c016ddc
0c016d7c: e350006f  cmp r0, #0x6f
0c016d80: 0a00002a  beq 0x0c016e30
0c016d84: ca000010  bgt 0x0c016dcc
0c016d88: e3300063  teq r0, #0x63
0c016d8c: 0a000020  beq 0x0c016e14
0c016d90: e3300064  teq r0, #0x64
0c016d94: 1a000020  bne 0x0c016e1c
0c016d98: e495a004  ldr r10, [r5], #0x4
0c016d9c: e35a0000  cmp r10, #0x0
0c016da0: aa000002  bge 0x0c016db0
0c016da4: e3a0002d  mov r0, #0x2d
0c016da8: ebffff76  bl 0x0c016b88 <fn_0c016b88>
0c016dac: e26aa000  rsb r10, r10, #0x0
0c016db0: e3a03001  mov r3, #0x1
0c016db4: e92d0008  stmdb sp!, {r3}
0c016db8: e1a03006  mov r3, r6
0c016dbc: e1a02007  mov r2, r7
0c016dc0: e1a0000a  mov r0, r10
0c016dc4: e3a0100a  mov r1, #0xa
0c016dc8: ea00001e  b 0x0c016e48
0c016dcc: e3300073  teq r0, #0x73
0c016dd0: 0a00001f  beq 0x0c016e54
0c016dd4: e3300078  teq r0, #0x78
0c016dd8: 1a00000f  bne 0x0c016e1c
0c016ddc: e3a03001  mov r3, #0x1
0c016de0: e92d0008  stmdb sp!, {r3}
0c016de4: e1a03006  mov r3, r6
0c016de8: e1a02007  mov r2, r7
0c016dec: e3a01010  mov r1, #0x10
0c016df0: e4950004  ldr r0, [r5], #0x4
0c016df4: ea000013  b 0x0c016e48
0c016df8: e3a03001  mov r3, #0x1
0c016dfc: e92d0008  stmdb sp!, {r3}
0c016e00: e1a03006  mov r3, r6
0c016e04: e1a02007  mov r2, r7
0c016e08: e3a01002  mov r1, #0x2
0c016e0c: e4950004  ldr r0, [r5], #0x4
0c016e10: ea00000c  b 0x0c016e48
0c016e14: e4950004  ldr r0, [r5], #0x4
0c016e18: ebffff5a  bl 0x0c016b88 <fn_0c016b88>
0c016e1c: e4d40001  ldrb r0, [r4], #0x1
0c016e20: e3300000  teq r0, #0x0
0c016e24: 1affffb1  bne 0x0c016cf0
0c016e28: e3a00000  mov r0, #0x0
0c016e2c: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
0c016e30: e3a03001  mov r3, #0x1
0c016e34: e92d0008  stmdb sp!, {r3}
0c016e38: e1a03006  mov r3, r6
0c016e3c: e1a02007  mov r2, r7
0c016e40: e3a01008  mov r1, #0x8
0c016e44: e4950004  ldr r0, [r5], #0x4
0c016e48: ebffff72  bl 0x0c016c18 <fn_0c016c18>
0c016e4c: e28dd004  add sp, sp, #0x4
0c016e50: eafffff1  b 0x0c016e1c
0c016e54: e4956004  ldr r6, [r5], #0x4
0c016e58: e4d60001  ldrb r0, [r6], #0x1
0c016e5c: e3300000  teq r0, #0x0
0c016e60: 0affffed  beq 0x0c016e1c
0c016e64: ebffff47  bl 0x0c016b88 <fn_0c016b88>
0c016e68: e4d60001  ldrb r0, [r6], #0x1
0c016e6c: e3300000  teq r0, #0x0
0c016e70: 1afffffb  bne 0x0c016e64
0c016e74: eaffffe8  b 0x0c016e1c
fn_0c016e78:
0c016e78: e1a0c00d  mov r12, sp
0c016e7c: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c016e80: e92ddcf0  stmdb sp!, {r4,r5,r6,r7,r10,r11,r12,lr,pc}
0c016e84: e24cb014  sub r11, r12, #0x14
0c016e88: e59b4024  ldr r4, [r11, #0x24]
0c016e8c: e59b5020  ldr r5, [r11, #0x20]
0c016e90: e59b601c  ldr r6, [r11, #0x1c]
0c016e94: e59b7018  ldr r7, [r11, #0x18]
0c016e98: e59ba014  ldr r10, [r11, #0x14]
0c016e9c: ebffe0bd  bl 0x0c00f198 <fn_0c00f198>
0c016ea0: e1a00004  mov r0, r4
0c016ea4: e28b3028  add r3, r11, #0x28
0c016ea8: e893000e  ldmia r3, {r1,r2,r3}
0c016eac: e92d000f  stmdb sp!, {r0,r1,r2,r3}
0c016eb0: e1a03005  mov r3, r5
0c016eb4: e1a02006  mov r2, r6
0c016eb8: e92d000c  stmdb sp!, {r2,r3}
0c016ebc: e1a03007  mov r3, r7
0c016ec0: e1a0200a  mov r2, r10
0c016ec4: e28b100c  add r1, r11, #0xc
0c016ec8: e8910003  ldmia r1, {r0,r1}
0c016ecc: ebffff74  bl 0x0c016ca4 <fn_0c016ca4>
0c016ed0: e3a00000  mov r0, #0x0
0c016ed4: e91bacf0  ldmdb r11, {r4,r5,r6,r7,r10,r11,sp,pc}
DoDGRqstInitTextport:
0c016ed8: e3a02000  mov r2, #0x0
0c016edc: e3a00050  mov r0, #0x50
0c016ee0: e2800702  add r0, r0, #0x80000
0c016ee4: e3a01000  mov r1, #0x0
0c016ee8: e52d1004  str r1, [sp, #-0x4]!
0c016eec: e58d1000  str r1, [sp, #0x0]
0c016ef0: e59d1000  ldr r1, [sp, #0x0]
0c016ef4: e2811001  add r1, r1, #0x1
0c016ef8: e58d1000  str r1, [sp, #0x0]
0c016efc: e3510003  cmp r1, #0x3
0c016f00: bafffffa  blt 0x0c016ef0
0c016f04: e3a01606  mov r1, #0x600000
0c016f08: e5812460  str r2, [r1, #0x460]
0c016f0c: e3a02000  mov r2, #0x0
0c016f10: e58d2000  str r2, [sp, #0x0]
0c016f14: e59d2000  ldr r2, [sp, #0x0]
0c016f18: e2822001  add r2, r2, #0x1
0c016f1c: e58d2000  str r2, [sp, #0x0]
0c016f20: e3520003  cmp r2, #0x3
0c016f24: bafffffa  blt 0x0c016f14
0c016f28: e3a02000  mov r2, #0x0
0c016f2c: e58d2000  str r2, [sp, #0x0]
0c016f30: e58d2000  str r2, [sp, #0x0]
0c016f34: e59d2000  ldr r2, [sp, #0x0]
0c016f38: e2822001  add r2, r2, #0x1
0c016f3c: e58d2000  str r2, [sp, #0x0]
0c016f40: e3520003  cmp r2, #0x3
0c016f44: bafffffa  blt 0x0c016f34
0c016f48: e5a10470  str r0, [r1, #0x470]!
0c016f4c: e3a00000  mov r0, #0x0
0c016f50: e58d0000  str r0, [sp, #0x0]
0c016f54: e59d0000  ldr r0, [sp, #0x0]
0c016f58: e2800001  add r0, r0, #0x1
0c016f5c: e58d0000  str r0, [sp, #0x0]
0c016f60: e3500003  cmp r0, #0x3
0c016f64: bafffffa  blt 0x0c016f54
0c016f68: e28dd004  add sp, sp, #0x4
0c016f6c: e1a0f00e  mov pc, lr
DoDGRqstLoadTextportGlyph:
0c016f70: e3a00000  mov r0, #0x0
0c016f74: e52d0004  str r0, [sp, #-0x4]!
0c016f78: e58d0000  str r0, [sp, #0x0]
0c016f7c: e59d0000  ldr r0, [sp, #0x0]
0c016f80: e2800001  add r0, r0, #0x1
0c016f84: e58d0000  str r0, [sp, #0x0]
0c016f88: e3500003  cmp r0, #0x3
0c016f8c: bafffffa  blt 0x0c016f7c
0c016f90: e3a01000  mov r1, #0x0
0c016f94: e3a00606  mov r0, #0x600000
0c016f98: e5801404  str r1, [r0, #0x404]
0c016f9c: e3a02000  mov r2, #0x0
0c016fa0: e58d2000  str r2, [sp, #0x0]
0c016fa4: e59d2000  ldr r2, [sp, #0x0]
0c016fa8: e2822001  add r2, r2, #0x1
0c016fac: e58d2000  str r2, [sp, #0x0]
0c016fb0: e3520003  cmp r2, #0x3
0c016fb4: bafffffa  blt 0x0c016fa4
0c016fb8: e3a02000  mov r2, #0x0
0c016fbc: e58d2000  str r2, [sp, #0x0]
0c016fc0: e58d2000  str r2, [sp, #0x0]
0c016fc4: e59d2000  ldr r2, [sp, #0x0]
0c016fc8: e2822001  add r2, r2, #0x1
0c016fcc: e58d2000  str r2, [sp, #0x0]
0c016fd0: e3520003  cmp r2, #0x3
0c016fd4: bafffffa  blt 0x0c016fc4
0c016fd8: e3a02002  mov r2, #0x2
0c016fdc: e580240c  str r2, [r0, #0x40c]
0c016fe0: e3a02000  mov r2, #0x0
0c016fe4: e58d2000  str r2, [sp, #0x0]
0c016fe8: e59d2000  ldr r2, [sp, #0x0]
0c016fec: e2822001  add r2, r2, #0x1
0c016ff0: e58d2000  str r2, [sp, #0x0]
0c016ff4: e3520003  cmp r2, #0x3
0c016ff8: bafffffa  blt 0x0c016fe8
0c016ffc: e3a02000  mov r2, #0x0
0c017000: e58d2000  str r2, [sp, #0x0]
0c017004: e58d2000  str r2, [sp, #0x0]
0c017008: e59d2000  ldr r2, [sp, #0x0]
0c01700c: e2822001  add r2, r2, #0x1
0c017010: e58d2000  str r2, [sp, #0x0]
0c017014: e3520003  cmp r2, #0x3
0c017018: bafffffa  blt 0x0c017008
0c01701c: e5801400  str r1, [r0, #0x400]
0c017020: e3a02000  mov r2, #0x0
0c017024: e58d2000  str r2, [sp, #0x0]
0c017028: e59d2000  ldr r2, [sp, #0x0]
0c01702c: e2822001  add r2, r2, #0x1
0c017030: e58d2000  str r2, [sp, #0x0]
0c017034: e3520003  cmp r2, #0x3
0c017038: bafffffa  blt 0x0c017028
0c01703c: e3a02000  mov r2, #0x0
0c017040: e58d2000  str r2, [sp, #0x0]
0c017044: e58d2000  str r2, [sp, #0x0]
0c017048: e59d2000  ldr r2, [sp, #0x0]
0c01704c: e2822001  add r2, r2, #0x1
0c017050: e58d2000  str r2, [sp, #0x0]
0c017054: e3520003  cmp r2, #0x3
0c017058: bafffffa  blt 0x0c017048
0c01705c: e1a02001  mov r2, r1
0c017060: e1a01000  mov r1, r0
0c017064: e5802460  str r2, [r0, #0x460]
0c017068: e3a00000  mov r0, #0x0
0c01706c: e58d0000  str r0, [sp, #0x0]
0c017070: e59d0000  ldr r0, [sp, #0x0]
0c017074: e2800001  add r0, r0, #0x1
0c017078: e58d0000  str r0, [sp, #0x0]
0c01707c: e3500003  cmp r0, #0x3
0c017080: bafffffa  blt 0x0c017070
0c017084: e28dd004  add sp, sp, #0x4
0c017088: e3a00000  mov r0, #0x0
0c01708c: e59f2054  ldr r2, [pc, #0x54] =0x0401eeec
0c017090: e3a03000  mov r3, #0x0
0c017094: e52d3004  str r3, [sp, #-0x4]!
0c017098: e58d3000  str r3, [sp, #0x0]
0c01709c: e59d3000  ldr r3, [sp, #0x0]
0c0170a0: e2833001  add r3, r3, #0x1
0c0170a4: e58d3000  str r3, [sp, #0x0]
0c0170a8: e3530003  cmp r3, #0x3
0c0170ac: bafffffa  blt 0x0c01709c
0c0170b0: e7923100  ldr r3, [r2, r0, lsl #2]
0c0170b4: e5813464  str r3, [r1, #0x464]
0c0170b8: e3a03000  mov r3, #0x0
0c0170bc: e58d3000  str r3, [sp, #0x0]
0c0170c0: e59d3000  ldr r3, [sp, #0x0]
0c0170c4: e2833001  add r3, r3, #0x1
0c0170c8: e58d3000  str r3, [sp, #0x0]
0c0170cc: e3530003  cmp r3, #0x3
0c0170d0: bafffffa  blt 0x0c0170c0
0c0170d4: e28dd004  add sp, sp, #0x4
0c0170d8: e2800001  add r0, r0, #0x1
0c0170dc: e3500f41  cmp r0, #0x104
0c0170e0: baffffea  blt 0x0c017090
0c0170e4: e1a0f00e  mov pc, lr
0c0170e8: 0401eeec  .word 0x0401eeec
DoDGRqstLoadTextportColorIndex:
0c0170ec: e590100c  ldr r1, [r0, #0xc]
0c0170f0: e1a02b01  mov r2, r1, lsl #22
0c0170f4: e1a02b22  mov r2, r2, lsr #22
0c0170f8: e5901008  ldr r1, [r0, #0x8]
0c0170fc: e1a01b01  mov r1, r1, lsl #22
0c017100: e1a01b21  mov r1, r1, lsr #22
0c017104: e1821501  orr r1, r2, r1, lsl #10
0c017108: e5902004  ldr r2, [r0, #0x4]
0c01710c: e1a02b02  mov r2, r2, lsl #22
0c017110: e1a02b22  mov r2, r2, lsr #22
0c017114: e1811a02  orr r1, r1, r2, lsl #20
0c017118: e3a02000  mov r2, #0x0
0c01711c: e52d2004  str r2, [sp, #-0x4]!
0c017120: e58d2000  str r2, [sp, #0x0]
0c017124: e59d2000  ldr r2, [sp, #0x0]
0c017128: e2822001  add r2, r2, #0x1
0c01712c: e58d2000  str r2, [sp, #0x0]
0c017130: e3520003  cmp r2, #0x3
0c017134: bafffffa  blt 0x0c017124
0c017138: e5900000  ldr r0, [r0, #0x0]
0c01713c: e2802a01  add r2, r0, #0x1000
0c017140: e3a00606  mov r0, #0x600000
0c017144: e5802460  str r2, [r0, #0x460]
0c017148: e3a02000  mov r2, #0x0
0c01714c: e58d2000  str r2, [sp, #0x0]
0c017150: e59d2000  ldr r2, [sp, #0x0]
0c017154: e2822001  add r2, r2, #0x1
0c017158: e58d2000  str r2, [sp, #0x0]
0c01715c: e3520003  cmp r2, #0x3
0c017160: bafffffa  blt 0x0c017150
0c017164: e3a02000  mov r2, #0x0
0c017168: e58d2000  str r2, [sp, #0x0]
0c01716c: e58d2000  str r2, [sp, #0x0]
0c017170: e59d2000  ldr r2, [sp, #0x0]
0c017174: e2822001  add r2, r2, #0x1
0c017178: e58d2000  str r2, [sp, #0x0]
0c01717c: e3520003  cmp r2, #0x3
0c017180: bafffffa  blt 0x0c017170
0c017184: e5a01464  str r1, [r0, #0x464]!
0c017188: e3a00000  mov r0, #0x0
0c01718c: e58d0000  str r0, [sp, #0x0]
0c017190: e59d0000  ldr r0, [sp, #0x0]
0c017194: e2800001  add r0, r0, #0x1
0c017198: e58d0000  str r0, [sp, #0x0]
0c01719c: e3500003  cmp r0, #0x3
0c0171a0: bafffffa  blt 0x0c017190
0c0171a4: e28dd004  add sp, sp, #0x4
0c0171a8: e1a0f00e  mov pc, lr
DoDGRqstDiagXmapColor:
0c0171ac: e92d4000  stmdb sp!, {lr}
0c0171b0: e3a02000  mov r2, #0x0
0c0171b4: e5903020  ldr r3, [r0, #0x20]
0c0171b8: e2031003  and r1, r3, #0x3
0c0171bc: e3330001  teq r3, #0x1
0c0171c0: 1a000007  bne 0x0c0171e4
0c0171c4: e5902014  ldr r2, [r0, #0x14]
0c0171c8: e1a02802  mov r2, r2, lsl #16
0c0171cc: e1a02822  mov r2, r2, lsr #16
0c0171d0: e1811102  orr r1, r1, r2, lsl #2
0c0171d4: e5902018  ldr r2, [r0, #0x18]
0c0171d8: e202207f  and r2, r2, #0x7f
0c0171dc: e1811c82  orr r1, r1, r2, lsl #25
0c0171e0: ea000031  b 0x0c0172ac
0c0171e4: e590301c  ldr r3, [r0, #0x1c]
0c0171e8: e3530006  cmp r3, #0x6
0c0171ec: 908ff103  addls pc, pc, r3, lsl #2
0c0171f0: ea000009  b 0x0c01721c
0c0171f4: ea000020  b 0x0c01727c
0c0171f8: ea00002f  b 0x0c0172bc
0c0171fc: ea00002e  b 0x0c0172bc
0c017200: ea00002d  b 0x0c0172bc
0c017204: ea00001c  b 0x0c01727c
0c017208: ea00002b  b 0x0c0172bc
0c01720c: e5902010  ldr r2, [r0, #0x10]
0c017210: e3c23103  bic r3, r2, #0xc0000000
0c017214: e1811103  orr r1, r1, r3, lsl #2
0c017218: e1a02f22  mov r2, r2, lsr #30
0c01721c: e590301c  ldr r3, [r0, #0x1c]
0c017220: e2033003  and r3, r3, #0x3
0c017224: e182c503  orr r12, r2, r3, lsl #10
0c017228: e3a02000  mov r2, #0x0
0c01722c: e52d2004  str r2, [sp, #-0x4]!
0c017230: e58d2000  str r2, [sp, #0x0]
0c017234: e59d2000  ldr r2, [sp, #0x0]
0c017238: e2822001  add r2, r2, #0x1
0c01723c: e58d2000  str r2, [sp, #0x0]
0c017240: e3520003  cmp r2, #0x3
0c017244: bafffffa  blt 0x0c017234
0c017248: e3a02001  mov r2, #0x1
0c01724c: e3a03606  mov r3, #0x600000
0c017250: e5832414  str r2, [r3, #0x414]
0c017254: e3a02000  mov r2, #0x0
0c017258: e58d2000  str r2, [sp, #0x0]
0c01725c: e59d2000  ldr r2, [sp, #0x0]
0c017260: e2822001  add r2, r2, #0x1
0c017264: e58d2000  str r2, [sp, #0x0]
0c017268: e3520003  cmp r2, #0x3
0c01726c: bafffffa  blt 0x0c01725c
0c017270: e28dd004  add sp, sp, #0x4
0c017274: e3a02000  mov r2, #0x0
0c017278: ea00001d  b 0x0c0172f4
0c01727c: e5902000  ldr r2, [r0, #0x0]
0c017280: e1a02b02  mov r2, r2, lsl #22
0c017284: e1a02b22  mov r2, r2, lsr #22
0c017288: e1811102  orr r1, r1, r2, lsl #2
0c01728c: e5902004  ldr r2, [r0, #0x4]
0c017290: e1a02b02  mov r2, r2, lsl #22
0c017294: e1a02b22  mov r2, r2, lsr #22
0c017298: e1811602  orr r1, r1, r2, lsl #12
0c01729c: e5902008  ldr r2, [r0, #0x8]
0c0172a0: e1a02b02  mov r2, r2, lsl #22
0c0172a4: e1a02b22  mov r2, r2, lsr #22
0c0172a8: e1811b02  orr r1, r1, r2, lsl #22
0c0172ac: e590200c  ldr r2, [r0, #0xc]
0c0172b0: e1a02b02  mov r2, r2, lsl #22
0c0172b4: e1a02b22  mov r2, r2, lsr #22
0c0172b8: eaffffd7  b 0x0c01721c
0c0172bc: e5903000  ldr r3, [r0, #0x0]
0c0172c0: e1a03a03  mov r3, r3, lsl #20
0c0172c4: e1a03a23  mov r3, r3, lsr #20
0c0172c8: e1811103  orr r1, r1, r3, lsl #2
0c0172cc: e5903004  ldr r3, [r0, #0x4]
0c0172d0: e1a03a03  mov r3, r3, lsl #20
0c0172d4: e1a03a23  mov r3, r3, lsr #20
0c0172d8: e1811703  orr r1, r1, r3, lsl #14
0c0172dc: e5903008  ldr r3, [r0, #0x8]
0c0172e0: e203c03f  and r12, r3, #0x3f
0c0172e4: e1811d0c  orr r1, r1, r12, lsl #26
0c0172e8: e2033d3f  and r3, r3, #0xfc0
0c0172ec: e1822343  orr r2, r2, r3, asr #6
0c0172f0: eaffffc9  b 0x0c01721c
0c0172f4: e590e024  ldr lr, [r0, #0x24]
0c0172f8: e1a0e25e  mov lr, lr, asr r2
0c0172fc: e31e0001  tst lr, #0x1
0c017300: 0a000030  beq 0x0c0173c8
0c017304: e3a0e000  mov lr, #0x0
0c017308: e52de004  str lr, [sp, #-0x4]!
0c01730c: e58de000  str lr, [sp, #0x0]
0c017310: e59de000  ldr lr, [sp, #0x0]
0c017314: e28ee001  add lr, lr, #0x1
0c017318: e58de000  str lr, [sp, #0x0]
0c01731c: e35e0003  cmp lr, #0x3
0c017320: bafffffa  blt 0x0c017310
0c017324: e5832420  str r2, [r3, #0x420]
0c017328: e3a0e000  mov lr, #0x0
0c01732c: e58de000  str lr, [sp, #0x0]
0c017330: e59de000  ldr lr, [sp, #0x0]
0c017334: e28ee001  add lr, lr, #0x1
0c017338: e58de000  str lr, [sp, #0x0]
0c01733c: e35e0003  cmp lr, #0x3
0c017340: bafffffa  blt 0x0c017330
0c017344: e3a0e000  mov lr, #0x0
0c017348: e58de000  str lr, [sp, #0x0]
0c01734c: e58de000  str lr, [sp, #0x0]
0c017350: e59de000  ldr lr, [sp, #0x0]
0c017354: e28ee001  add lr, lr, #0x1
0c017358: e58de000  str lr, [sp, #0x0]
0c01735c: e35e0003  cmp lr, #0x3
0c017360: bafffffa  blt 0x0c017350
0c017364: e5831418  str r1, [r3, #0x418]
0c017368: e3a0e000  mov lr, #0x0
0c01736c: e58de000  str lr, [sp, #0x0]
0c017370: e59de000  ldr lr, [sp, #0x0]
0c017374: e28ee001  add lr, lr, #0x1
0c017378: e58de000  str lr, [sp, #0x0]
0c01737c: e35e0003  cmp lr, #0x3
0c017380: bafffffa  blt 0x0c017370
0c017384: e3a0e000  mov lr, #0x0
0c017388: e58de000  str lr, [sp, #0x0]
0c01738c: e58de000  str lr, [sp, #0x0]
0c017390: e59de000  ldr lr, [sp, #0x0]
0c017394: e28ee001  add lr, lr, #0x1
0c017398: e58de000  str lr, [sp, #0x0]
0c01739c: e35e0003  cmp lr, #0x3
0c0173a0: bafffffa  blt 0x0c017390
0c0173a4: e583c41c  str r12, [r3, #0x41c]
0c0173a8: e3a0e000  mov lr, #0x0
0c0173ac: e58de000  str lr, [sp, #0x0]
0c0173b0: e59de000  ldr lr, [sp, #0x0]
0c0173b4: e28ee001  add lr, lr, #0x1
0c0173b8: e58de000  str lr, [sp, #0x0]
0c0173bc: e35e0003  cmp lr, #0x3
0c0173c0: bafffffa  blt 0x0c0173b0
0c0173c4: e28dd004  add sp, sp, #0x4
0c0173c8: e2822001  add r2, r2, #0x1
0c0173cc: e3520004  cmp r2, #0x4
0c0173d0: baffffc7  blt 0x0c0172f4
0c0173d4: e8bd4000  ldmia sp!, {lr}
0c0173d8: eaffd730  b 0x0c00d0a0
DoDGRqstDisableDiagXmapColor:
0c0173dc: e3a00000  mov r0, #0x0
0c0173e0: e52d0004  str r0, [sp, #-0x4]!
0c0173e4: e58d0000  str r0, [sp, #0x0]
0c0173e8: e59d0000  ldr r0, [sp, #0x0]
0c0173ec: e2800001  add r0, r0, #0x1
0c0173f0: e58d0000  str r0, [sp, #0x0]
0c0173f4: e3500003  cmp r0, #0x3
0c0173f8: bafffffa  blt 0x0c0173e8
0c0173fc: e3a00000  mov r0, #0x0
0c017400: e3a01606  mov r1, #0x600000
0c017404: e5a10414  str r0, [r1, #0x414]!
0c017408: e58d0000  str r0, [sp, #0x0]
0c01740c: e59d0000  ldr r0, [sp, #0x0]
0c017410: e2800001  add r0, r0, #0x1
0c017414: e58d0000  str r0, [sp, #0x0]
0c017418: e3500003  cmp r0, #0x3
0c01741c: bafffffa  blt 0x0c01740c
0c017420: e28dd004  add sp, sp, #0x4
0c017424: eaffd71d  b 0x0c00d0a0
DoDGRqstVCBusTrace:
0c017428: e1a0f00e  mov pc, lr
DoDGRqstDiagCursorFromImage:
0c01742c: e92d44f0  stmdb sp!, {r4,r5,r6,r7,r10,lr}
0c017430: e3a01000  mov r1, #0x0
0c017434: e52d1024  str r1, [sp, #-0x24]!
0c017438: e58d1000  str r1, [sp, #0x0]
0c01743c: e59d1000  ldr r1, [sp, #0x0]
0c017440: e2811001  add r1, r1, #0x1
0c017444: e58d1000  str r1, [sp, #0x0]
0c017448: e3510003  cmp r1, #0x3
0c01744c: bafffffa  blt 0x0c01743c
0c017450: e3a01606  mov r1, #0x600000
0c017454: e5902000  ldr r2, [r0, #0x0]
0c017458: e5812460  str r2, [r1, #0x460]
0c01745c: e3a02000  mov r2, #0x0
0c017460: e58d2000  str r2, [sp, #0x0]
0c017464: e59d2000  ldr r2, [sp, #0x0]
0c017468: e2822001  add r2, r2, #0x1
0c01746c: e58d2000  str r2, [sp, #0x0]
0c017470: e3520003  cmp r2, #0x3
0c017474: bafffffa  blt 0x0c017464
0c017478: e28dd004  add sp, sp, #0x4
0c01747c: e3a0e000  mov lr, #0x0
0c017480: e3a0a001  mov r10, #0x1
0c017484: e3a01000  mov r1, #0x0
0c017488: e26e203f  rsb r2, lr, #0x3f
0c01748c: e0805402  add r5, r0, r2, lsl #8
0c017490: e3a0c000  mov r12, #0x0
0c017494: e3a03000  mov r3, #0x0
0c017498: e3a02000  mov r2, #0x0
0c01749c: e0824281  add r4, r2, r1, lsl #5
0c0174a0: e0854104  add r4, r5, r4, lsl #2
0c0174a4: e5944004  ldr r4, [r4, #0x4]
0c0174a8: e00a70c4  and r7, r10, r4, asr #1
0c0174ac: e262601f  rsb r6, r2, #0x1f
0c0174b0: e18cc617  orr r12, r12, r7, lsl r6
0c0174b4: e2044001  and r4, r4, #0x1
0c0174b8: e1833614  orr r3, r3, r4, lsl r6
0c0174bc: e2822001  add r2, r2, #0x1
0c0174c0: e3520020  cmp r2, #0x20
0c0174c4: bafffff4  blt 0x0c01749c
0c0174c8: e28d2010  add r2, sp, #0x10
0c0174cc: e782c101  str r12, [r2, r1, lsl #2]
0c0174d0: e28d2010  add r2, sp, #0x10
0c0174d4: e0822101  add r2, r2, r1, lsl #2
0c0174d8: e2811001  add r1, r1, #0x1
0c0174dc: e3510002  cmp r1, #0x2
0c0174e0: e5a23008  str r3, [r2, #0x8]!
0c0174e4: baffffe9  blt 0x0c017490
0c0174e8: e3a01000  mov r1, #0x0
0c0174ec: e52d1004  str r1, [sp, #-0x4]!
0c0174f0: e58d1000  str r1, [sp, #0x0]
0c0174f4: e59d1000  ldr r1, [sp, #0x0]
0c0174f8: e2811001  add r1, r1, #0x1
0c0174fc: e58d1000  str r1, [sp, #0x0]
0c017500: e3510003  cmp r1, #0x3
0c017504: bafffffa  blt 0x0c0174f4
0c017508: e3a01606  mov r1, #0x600000
0c01750c: e59d2014  ldr r2, [sp, #0x14]
0c017510: e5812464  str r2, [r1, #0x464]
0c017514: e3a02000  mov r2, #0x0
0c017518: e58d2000  str r2, [sp, #0x0]
0c01751c: e59d2000  ldr r2, [sp, #0x0]
0c017520: e2822001  add r2, r2, #0x1
0c017524: e58d2000  str r2, [sp, #0x0]
0c017528: e3520003  cmp r2, #0x3
0c01752c: bafffffa  blt 0x0c01751c
0c017530: e3a02000  mov r2, #0x0
0c017534: e58d2000  str r2, [sp, #0x0]
0c017538: e58d2000  str r2, [sp, #0x0]
0c01753c: e59d2000  ldr r2, [sp, #0x0]
0c017540: e2822001  add r2, r2, #0x1
0c017544: e58d2000  str r2, [sp, #0x0]
0c017548: e3520003  cmp r2, #0x3
0c01754c: bafffffa  blt 0x0c01753c
0c017550: e59d2018  ldr r2, [sp, #0x18]
0c017554: e5812464  str r2, [r1, #0x464]
0c017558: e3a02000  mov r2, #0x0
0c01755c: e58d2000  str r2, [sp, #0x0]
0c017560: e59d2000  ldr r2, [sp, #0x0]
0c017564: e2822001  add r2, r2, #0x1
0c017568: e58d2000  str r2, [sp, #0x0]
0c01756c: e3520003  cmp r2, #0x3
0c017570: bafffffa  blt 0x0c017560
0c017574: e3a02000  mov r2, #0x0
0c017578: e58d2000  str r2, [sp, #0x0]
0c01757c: e58d2000  str r2, [sp, #0x0]
0c017580: e59d2000  ldr r2, [sp, #0x0]
0c017584: e2822001  add r2, r2, #0x1
0c017588: e58d2000  str r2, [sp, #0x0]
0c01758c: e3520003  cmp r2, #0x3
0c017590: bafffffa  blt 0x0c017580
0c017594: e59d201c  ldr r2, [sp, #0x1c]
0c017598: e5812464  str r2, [r1, #0x464]
0c01759c: e3a02000  mov r2, #0x0
0c0175a0: e58d2000  str r2, [sp, #0x0]
0c0175a4: e59d2000  ldr r2, [sp, #0x0]
0c0175a8: e2822001  add r2, r2, #0x1
0c0175ac: e58d2000  str r2, [sp, #0x0]
0c0175b0: e3520003  cmp r2, #0x3
0c0175b4: bafffffa  blt 0x0c0175a4
0c0175b8: e3a02000  mov r2, #0x0
0c0175bc: e58d2000  str r2, [sp, #0x0]
0c0175c0: e58d2000  str r2, [sp, #0x0]
0c0175c4: e59d2000  ldr r2, [sp, #0x0]
0c0175c8: e2822001  add r2, r2, #0x1
0c0175cc: e58d2000  str r2, [sp, #0x0]
0c0175d0: e3520003  cmp r2, #0x3
0c0175d4: bafffffa  blt 0x0c0175c4
0c0175d8: e59d2020  ldr r2, [sp, #0x20]
0c0175dc: e5812464  str r2, [r1, #0x464]
0c0175e0: e3a02000  mov r2, #0x0
0c0175e4: e58d2000  str r2, [sp, #0x0]
0c0175e8: e59d2000  ldr r2, [sp, #0x0]
0c0175ec: e2822001  add r2, r2, #0x1
0c0175f0: e58d2000  str r2, [sp, #0x0]
0c0175f4: e3520003  cmp r2, #0x3
0c0175f8: bafffffa  blt 0x0c0175e8
0c0175fc: e28dd004  add sp, sp, #0x4
0c017600: e28ee001  add lr, lr, #0x1
0c017604: e35e0040  cmp lr, #0x40
0c017608: baffff9d  blt 0x0c017484
0c01760c: e3a02001  mov r2, #0x1
0c017610: e3a03003  mov r3, #0x3
0c017614: e082c082  add r12, r2, r2, lsl #1
0c017618: e080c10c  add r12, r0, r12, lsl #2
0c01761c: e28cc901  add r12, r12, #0x4000
0c017620: e59ce004  ldr lr, [r12, #0x4]
0c017624: e1a0ea0e  mov lr, lr, lsl #20
0c017628: e59c4008  ldr r4, [r12, #0x8]
0c01762c: e18ee504  orr lr, lr, r4, lsl #10
0c017630: e59cc00c  ldr r12, [r12, #0xc]
0c017634: e18e400c  orr r4, lr, r12
0c017638: e043e002  sub lr, r3, r2
0c01763c: e78d410e  str r4, [sp, lr, lsl #2]
0c017640: e2822001  add r2, r2, #0x1
0c017644: e3520004  cmp r2, #0x4
0c017648: bafffff1  blt 0x0c017614
0c01764c: e3a02000  mov r2, #0x0
0c017650: e3a00000  mov r0, #0x0
0c017654: e52d0004  str r0, [sp, #-0x4]!
0c017658: e58d0000  str r0, [sp, #0x0]
0c01765c: e59d0000  ldr r0, [sp, #0x0]
0c017660: e2800001  add r0, r0, #0x1
0c017664: e58d0000  str r0, [sp, #0x0]
0c017668: e3500003  cmp r0, #0x3
0c01766c: bafffffa  blt 0x0c01765c
0c017670: e28d0004  add r0, sp, #0x4
0c017674: e7900102  ldr r0, [r0, r2, lsl #2]
0c017678: e5810464  str r0, [r1, #0x464]
0c01767c: e3a00000  mov r0, #0x0
0c017680: e58d0000  str r0, [sp, #0x0]
0c017684: e59d0000  ldr r0, [sp, #0x0]
0c017688: e2800001  add r0, r0, #0x1
0c01768c: e58d0000  str r0, [sp, #0x0]
0c017690: e3500003  cmp r0, #0x3
0c017694: bafffffa  blt 0x0c017684
0c017698: e28dd004  add sp, sp, #0x4
0c01769c: e2822001  add r2, r2, #0x1
0c0176a0: e3520004  cmp r2, #0x4
0c0176a4: baffffe9  blt 0x0c017650
0c0176a8: e3a00000  mov r0, #0x0
0c0176ac: e52d0004  str r0, [sp, #-0x4]!
0c0176b0: e58d0000  str r0, [sp, #0x0]
0c0176b4: e59d0000  ldr r0, [sp, #0x0]
0c0176b8: e2800001  add r0, r0, #0x1
0c0176bc: e58d0000  str r0, [sp, #0x0]
0c0176c0: e3500003  cmp r0, #0x3
0c0176c4: bafffffa  blt 0x0c0176b4
0c0176c8: e3a00000  mov r0, #0x0
0c0176cc: e581047c  str r0, [r1, #0x47c]
0c0176d0: e58d0000  str r0, [sp, #0x0]
0c0176d4: e59d0000  ldr r0, [sp, #0x0]
0c0176d8: e2800001  add r0, r0, #0x1
0c0176dc: e58d0000  str r0, [sp, #0x0]
0c0176e0: e3500003  cmp r0, #0x3
0c0176e4: bafffffa  blt 0x0c0176d4
0c0176e8: e3a00000  mov r0, #0x0
0c0176ec: e58d0000  str r0, [sp, #0x0]
0c0176f0: e58d0000  str r0, [sp, #0x0]
0c0176f4: e59d0000  ldr r0, [sp, #0x0]
0c0176f8: e2800001  add r0, r0, #0x1
0c0176fc: e58d0000  str r0, [sp, #0x0]
0c017700: e3500003  cmp r0, #0x3
0c017704: bafffffa  blt 0x0c0176f4
0c017708: e1a0000a  mov r0, r10
0c01770c: e581047c  str r0, [r1, #0x47c]
0c017710: e3a00000  mov r0, #0x0
0c017714: e58d0000  str r0, [sp, #0x0]
0c017718: e59d0000  ldr r0, [sp, #0x0]
0c01771c: e2800001  add r0, r0, #0x1
0c017720: e58d0000  str r0, [sp, #0x0]
0c017724: e3500003  cmp r0, #0x3
0c017728: bafffffa  blt 0x0c017718
0c01772c: e3a00000  mov r0, #0x0
0c017730: e58d0000  str r0, [sp, #0x0]
0c017734: e58d0000  str r0, [sp, #0x0]
0c017738: e59d0000  ldr r0, [sp, #0x0]
0c01773c: e2800001  add r0, r0, #0x1
0c017740: e58d0000  str r0, [sp, #0x0]
0c017744: e3500003  cmp r0, #0x3
0c017748: bafffffa  blt 0x0c017738
0c01774c: e3a00002  mov r0, #0x2
0c017750: e581047c  str r0, [r1, #0x47c]
0c017754: e3a00000  mov r0, #0x0
0c017758: e58d0000  str r0, [sp, #0x0]
0c01775c: e59d0000  ldr r0, [sp, #0x0]
0c017760: e2800001  add r0, r0, #0x1
0c017764: e58d0000  str r0, [sp, #0x0]
0c017768: e3500003  cmp r0, #0x3
0c01776c: bafffffa  blt 0x0c01775c
0c017770: e3a00000  mov r0, #0x0
0c017774: e58d0000  str r0, [sp, #0x0]
0c017778: e58d0000  str r0, [sp, #0x0]
0c01777c: e59d0000  ldr r0, [sp, #0x0]
0c017780: e2800001  add r0, r0, #0x1
0c017784: e58d0000  str r0, [sp, #0x0]
0c017788: e3500003  cmp r0, #0x3
0c01778c: bafffffa  blt 0x0c01777c
0c017790: e5a13478  str r3, [r1, #0x478]!
0c017794: e3a00000  mov r0, #0x0
0c017798: e58d0000  str r0, [sp, #0x0]
0c01779c: e59d0000  ldr r0, [sp, #0x0]
0c0177a0: e2800001  add r0, r0, #0x1
0c0177a4: e58d0000  str r0, [sp, #0x0]
0c0177a8: e3500003  cmp r0, #0x3
0c0177ac: bafffffa  blt 0x0c01779c
0c0177b0: e28dd024  add sp, sp, #0x24
0c0177b4: e8bd84f0  ldmia sp!, {r4,r5,r6,r7,r10,pc}
0c0177b8: 5f5f7274  swipl 0x5f7274
0c0177bc: 5f646900  swipl 0x646900
0c0177c0: ff000008  .word 0xff000008
ucode:
0c0177c4: e3500000  cmp r0, #0x0
0c0177c8: 11a0f00e  movne pc, lr
0c0177cc: eafffffe  b 0x0c0177cc
fn_0c0177d0:
0c0177d0: e1520003  cmp r2, r3
0c0177d4: 81a03083  movhi r3, r3, lsl #1
0c0177d8: 8afffffc  bhi 0x0c0177d0 <fn_0c0177d0>
0c0177dc: e1510003  cmp r1, r3
0c0177e0: e0acc00c  adc r12, r12, r12
0c0177e4: 20411003  subcs r1, r1, r3
0c0177e8: e1500003  cmp r0, r3
0c0177ec: 31a030a3  movcc r3, r3, lsr #1
0c0177f0: 3afffff9  bcc 0x0c0177dc
0c0177f4: e1a0000c  mov r0, r12
0c0177f8: e1a0f00e  mov pc, lr
0c0177fc: 5f5f7274  swipl 0x5f7274
0c017800: 5f736400  swipl 0x736400
0c017804: ff000008  .word 0xff000008
__rt_sdiv:
0c017808: e1b02000  movs r2, r0
0c01780c: 0affffee  beq 0x0c0177cc
0c017810: 42600000  rsbmi r0, r0, #0x0
0c017814: e0222001  eor r2, r2, r1
0c017818: e211c102  ands r12, r1, #0x80000000
0c01781c: e18c20a2  orr r2, r12, r2, lsr #1
0c017820: e92d4004  stmdb sp!, {r2,lr}
0c017824: 12611000  rsbne r1, r1, #0x0
0c017828: e1a02001  mov r2, r1
0c01782c: e1a03000  mov r3, r0
0c017830: e3a0c000  mov r12, #0x0
0c017834: ebffffe5  bl 0x0c0177d0 <fn_0c0177d0>
0c017838: e8bd0004  ldmia sp!, {r2}
0c01783c: e1b02082  movs r2, r2, lsl #1
0c017840: 42600000  rsbmi r0, r0, #0x0
0c017844: 22611000  rsbcs r1, r1, #0x0
0c017848: e8bd8000  ldmia sp!, {pc}
0c01784c: 5f5f7274  swipl 0x5f7274
0c017850: 5f756400  swipl 0x756400
0c017854: ff000008  .word 0xff000008
__rt_udiv:
0c017858: e1b03000  movs r3, r0
0c01785c: 0affffda  beq 0x0c0177cc
0c017860: e3a0c000  mov r12, #0x0
0c017864: e3a02102  mov r2, #0x80000000
0c017868: e1510002  cmp r1, r2
0c01786c: 31a02001  movcc r2, r1
0c017870: eaffffd6  b 0x0c0177d0 <fn_0c0177d0>
0c017874: 5f5f7274  swipl 0x5f7274
0c017878: 5f756400  swipl 0x756400
0c01787c: ff000008  .word 0xff000008
__rt_udiv10:
0c017880: e1a01000  mov r1, r0
0c017884: e1a000a0  mov r0, r0, lsr #1
0c017888: e08000a0  add r0, r0, r0, lsr #1
0c01788c: e0800220  add r0, r0, r0, lsr #4
0c017890: e0800420  add r0, r0, r0, lsr #8
0c017894: e0800820  add r0, r0, r0, lsr #16
0c017898: e1a001a0  mov r0, r0, lsr #3
0c01789c: e0802100  add r2, r0, r0, lsl #2
0c0178a0: e0411082  sub r1, r1, r2, lsl #1
0c0178a4: e351000a  cmp r1, #0xa
0c0178a8: a2800001  addge r0, r0, #0x1
0c0178ac: a241100a  subge r1, r1, #0xa
0c0178b0: e1a0f00e  mov pc, lr
0c0178b4: 5f5f7274  swipl 0x5f7274
0c0178b8: 5f736400  swipl 0x736400
0c0178bc: ff000008  .word 0xff000008
0c0178c0: e1a0c00e  mov r12, lr
0c0178c4: e1b03000  movs r3, r0
0c0178c8: 42600000  rsbmi r0, r0, #0x0
0c0178cc: ebffffeb  bl 0x0c017880 <__rt_udiv10>
0c0178d0: e3530000  cmp r3, #0x0
0c0178d4: 42600000  rsbmi r0, r0, #0x0
0c0178d8: 42611000  rsbmi r1, r1, #0x0
0c0178dc: e1a0f00c  mov pc, r12
