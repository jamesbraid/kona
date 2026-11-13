# Source: ../soft/so_pick.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pick.c
# Total Functions: 15

.text

# Function: __glGenericPickSpanProcs
# Declared: Line 194 (Source lines: 195-521)
# Address: 0x0d9f4390 - 0x0d9f4b2c (Size: 1948 bytes, Frame: 208)
.globl __glGenericPickSpanProcs
.ent __glGenericPickSpanProcs
__glGenericPickSpanProcs:
    # Line 195
    addiu	$sp,$sp,-80
    sd	$s4,40($sp)
    # Line 197
    lw	$s4,11816($a0)
    # Line 195
    sd	$s2,32($sp)
    # Line 196
    lw	$s2,30492($a0)
    # Line 195
    sd	$s0,48($sp)
    sd	$s1,24($sp)
    # Line 205
    addiu	$s1,$a0,12220
    lbu	$at,29892($a0)
    # Line 204
    addiu	$s0,$a0,12160
    # Line 195
    sd	$s3,16($sp)
    lui	$v0,0xa
    move	$s3,$a0
    sd	$s5,64($sp)
    addiu	$v0,$v0,-13240
    sd	$gp,8($sp)
    # Line 205
    beqz	$at,.L0d9f4784
    # Line 195
    addu	$gp,$t9,$v0
.L0d9f43d8:
    # Line 210
    andi	$v1,$s2,0x10
    beqz	$v1,.L0d9f4400
    # Line 215
    andi	$a0,$s2,0x200
    la	$a0,__glStippleStippledSpan
    # Line 214
    la	$a1,__glStippleSpan
    # Line 215
    addiu	$s1,$s1,4
    # Line 214
    sw	$a1,0($s0)
    addiu	$s0,$s0,4
    # Line 215
    sw	$a0,-4($s1)
    andi	$a0,$s2,0x200
.L0d9f4400:
    beqz	$a0,.L0d9f4684
.L0d9f4404:
    # Line 271
    la	$t3,__glDepthPassStippledSpan
.L0d9f4408:
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$t2,__glDepthTestStencilStippledSpan_asm
    la	$a4,__glStencilTestSpan_asm
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a3,__glStencilTestStippledSpan
    la	$t8,__glDepthPassSpan
    la	$a7,__glDepthTestOffsetSpan
    andi	$s5,$s2,0x1
    la	$t1,__glDepthTestStencilSpan_asm
    andi	$v0,$s2,0x2
    beqz	$s5,.L0d9f46cc
    la	$t0,__glDepthTestStippledOffsetSpan
    beqz	$v0,.L0d9f479c
    # Line 290
    nop	# was lw $t9, -27200($gp) # &__glFlatRGBASpan
    # Line 289
    la	$a2,__glShadeRGBASpan
    sw	$a2,0($s0)
    # Line 290
    sw	$a2,0($s1)
.L0d9f444c:
    # Line 305
    andi	$t9,$s2,0x8
    addiu	$s1,$s1,4
    beqz	$t9,.L0d9f448c
    # Line 304
    addiu	$s0,$s0,4
    # Line 308
    la	$v0,__glTextureStippledSpan
    # Line 307
    la	$v1,__glTextureSpan
    sw	$v1,0($s0)
    # Line 308
    sw	$v0,0($s1)
    # Line 310
    lw	$v0,1792($s3)
    dsll32	$at,$v0,0xe
    bgez	$at,.L0d9f4484
    dsll32	$a1,$v0,0x1
    bgez	$a1,.L0d9f485c
    # Line 314
    nop	# was lw $t9, -26652($gp) # &__glLookUpTextureParams
.L0d9f4484:
    # Line 351
    addiu	$s1,$s1,4
    # Line 350
    addiu	$s0,$s0,4
.L0d9f448c:
    # Line 351
    andi	$a2,$s2,0x1000
    beqz	$a2,.L0d9f44bc
    nop
    lw	$t9,1912($s3)
    li	$at,4354
    beq	$t9,$at,.L0d9f47a8
    # Line 359
    la	$v0,__glFogStippledSpan
    # Line 358
    la	$v1,__glFogSpan
    sw	$v1,0($s0)
    # Line 359
    sw	$v0,0($s1)
.L0d9f44b4:
    # Line 362
    addiu	$s1,$s1,4
    # Line 361
    addiu	$s0,$s0,4
.L0d9f44bc:
    # Line 362
    beqz	$a0,.L0d9f450c
    # Line 367
    la	$a0,__glAlphaTestStippledSpan
    # Line 366
    la	$a2,__glAlphaTestSpan
    # Line 367
    andi	$a1,$s2,0x20
    andi	$v0,$s2,0x4
    addiu	$s1,$s1,4
    # Line 366
    sw	$a2,0($s0)
    addiu	$s0,$s0,4
    # Line 367
    beqz	$a1,.L0d9f474c
    sw	$a0,-4($s1)
    # Line 372
    sw	$a4,0($s0)
    # Line 376
    beqz	$v0,.L0d9f4850
    sw	$a3,0($s1)
    dsll32	$a3,$s2,0xd
    bgez	$a3,.L0d9f4844
    nop
    # Line 381
    sw	$a6,4($s0)
    # Line 382
    sw	$a5,4($s1)
.L0d9f4504:
    # Line 401
    addiu	$s1,$s1,8
    # Line 400
    addiu	$s0,$s0,8
.L0d9f450c:
    # Line 415
    lbu	$a4,30708($s3)
    beqz	$a4,.L0d9f467c
    # Line 432
    subu	$a5,$s0,$s3
    addiu	$a5,$a5,-12160
    li	$a0,1
    sra	$a5,$a5,0x2
    sw	$a5,12280($s3)
.L0d9f4528:
    andi	$a6,$s2,0x880
    beqz	$a6,.L0d9f4550
    # Line 439
    andi	$t1,$s2,0x100
    # Line 438
    lw	$t0,200($s4)
    sw	$t0,0($s0)
    # Line 439
    addiu	$s1,$s1,4
    lw	$a7,204($s4)
    # Line 438
    addiu	$s0,$s0,4
    # Line 439
    sw	$a7,-4($s1)
    andi	$t1,$s2,0x100
.L0d9f4550:
    beqz	$t1,.L0d9f45bc
    # Line 472
    andi	$v1,$s2,0x40
    # Line 446
    nor	$t2,$s2,$zero
    # Line 444
    lw	$a4,1836($s3)
    # Line 446
    andi	$t2,$t2,0x800
    # Line 443
    lw	$a3,1832($s3)
    # Line 446
    beqz	$t2,.L0d9f4590
    # Line 442
    lw	$v0,1828($s3)
    # Line 446
    beqz	$a3,.L0d9f4804
    li	$a7,774
.L0d9f4578:
    # Line 452
    lw	$t8,200($s4)
.L0d9f457c:
    sw	$t8,0($s0)
    # Line 453
    addiu	$s1,$s1,4
    lw	$t3,204($s4)
    # Line 452
    addiu	$s0,$s0,4
    # Line 453
    sw	$t3,-4($s1)
.L0d9f4590:
    # Line 455
    li	$a5,770
.L0d9f4594:
    beq	$a5,$v0,.L0d9f47bc
.L0d9f4598:
    # Line 465
    li	$t9,771
    beq	$v0,$t9,.L0d9f4730
.L0d9f45a0:
    # Line 469
    la	$at,__glBlendSpan
.L0d9f45a4:
    sw	$at,0($s0)
.L0d9f45a8:
    # Line 472
    addiu	$s1,$s1,4
    la	$v0,__glBlendStippledSpan
    # Line 471
    addiu	$s0,$s0,4
    # Line 472
    sw	$v0,-4($s1)
    andi	$v1,$s2,0x40
.L0d9f45bc:
    beqz	$v1,.L0d9f46e4
    nop
    beqz	$s5,.L0d9f47e8
    # Line 480
    la	$a4,__glDitherCIStippledSpan
    # Line 477
    la	$a1,__glDitherRGBAStippledSpan
    # Line 476
    la	$a2,__glDitherRGBASpan
    sw	$a2,0($s0)
    # Line 477
    sw	$a1,0($s1)
.L0d9f45dc:
    # Line 492
    andi	$a3,$s2,0x80
    addiu	$s1,$s1,4
    beqz	$a3,.L0d9f4604
    # Line 491
    addiu	$s0,$s0,4
    # Line 495
    la	$a4,__glLogicOpStippledSpan
    # Line 494
    la	$a5,__glLogicOpSpan
    # Line 495
    addiu	$s1,$s1,4
    # Line 494
    sw	$a5,0($s0)
    addiu	$s0,$s0,4
    # Line 495
    sw	$a4,-4($s1)
.L0d9f4604:
    andi	$a6,$s2,0x800
    beqz	$a6,.L0d9f462c
    nop
    beqz	$s5,.L0d9f47f8
    # Line 500
    la	$a6,__glMaskCISpan
    # Line 499
    la	$a7,__glMaskRGBASpan
    sw	$a7,0($s0)
    # Line 500
    sw	$a7,0($s1)
.L0d9f4624:
    # Line 506
    addiu	$s1,$s1,4
    # Line 505
    addiu	$s0,$s0,4
.L0d9f462c:
    # Line 510
    lw	$v1,184($s4)
    # Line 514
    subu	$v0,$s0,$s3
    # Line 510
    sw	$v1,0($s0)
    # Line 514
    addiu	$v0,$v0,-12156
    # Line 511
    lw	$t0,188($s4)
    # Line 514
    sra	$v0,$v0,0x2
    # Line 511
    sw	$t0,0($s1)
    # Line 514
    beqz	$a0,.L0d9f4700
    sw	$v0,12284($s3)
    ld	$s5,64($sp)
    # Line 516
    la	$a0,__glProcessReplicateSpan
    # Line 521
    ld	$gp,8($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s4,40($sp)
    # Line 516
    sw	$a0,12288($s3)
    # Line 521
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f467c:
    b	.L0d9f4528
    # Line 432
    move	$a0,$zero
.L0d9f4684:
    # Line 215
    andi	$a1,$s2,0x20
    beqz	$a1,.L0d9f4928
    andi	$v0,$s2,0x4
    # Line 228
    la	$a2,__glStencilTestStippledSpan
    la	$a3,__glStencilTestSpan_asm
    sw	$a3,0($s0)
    # Line 232
    beqz	$v0,.L0d9f49b0
    sw	$a2,0($s1)
    dsll32	$a4,$s2,0xd
    bgez	$a4,.L0d9f49a0
    # Line 238
    la	$a2,__glDepthTestStencilStippledSpan_asm
    # Line 237
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    sw	$a6,4($s0)
    # Line 238
    sw	$a5,4($s1)
.L0d9f46c0:
    # Line 257
    addiu	$s1,$s1,8
    b	.L0d9f4404
    # Line 256
    addiu	$s0,$s0,8
.L0d9f46cc:
    # Line 293
    beqz	$v0,.L0d9f4968
    # Line 298
    nop	# was lw $t9, -27204($gp) # &__glFlatCISpan
    # Line 297
    # lw $t9, -27212($gp) # &__glShadeCISpan
    sw	$t9,0($s0)
    # Line 298
    b	.L0d9f444c
    sw	$t9,0($s1)
.L0d9f46e4:
    # Line 480
    beqz	$s5,.L0d9f4974
    # Line 488
    la	$at,__glRoundCIStippledSpan
    # Line 485
    la	$at,__glRoundRGBAStippledSpan
    # Line 484
    la	$v0,__glRoundRGBASpan
    sw	$v0,0($s0)
    # Line 485
    b	.L0d9f45dc
    sw	$at,0($s1)
.L0d9f4700:
    ld	$s5,64($sp)
    # Line 518
    la	$v1,__glProcessSpan
    # Line 521
    ld	$gp,8($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s4,40($sp)
    # Line 519
    sw	$v0,12280($s3)
    # Line 518
    sw	$v1,12288($s3)
    # Line 521
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f4730:
    # Line 465
    bne	$a5,$a3,.L0d9f45a4
    # Line 469
    la	$at,__glBlendSpan
    # Line 465
    li	$a1,0x8006
    bne	$a4,$a1,.L0d9f45a0
    # Line 467
    la	$a2,__glBlendSpan_MSA_SA
    b	.L0d9f45a8
    sw	$a2,0($s0)
.L0d9f474c:
    # Line 401
    beqz	$v0,.L0d9f450c
    nop
    lw	$a3,1632($s3)
    li	$a4,512
    beq	$a3,$a4,.L0d9f49c4
    # Line 406
    dsll32	$a5,$s2,0xd
    bgez	$a5,.L0d9f4984
    # Line 415
    la	$v1,__glDepthTestStippledSpan_asm
    # Line 411
    addiu	$s0,$s0,4
    # Line 412
    addiu	$a6,$s1,4
    # Line 411
    sw	$a7,-4($s0)
    # Line 412
    move	$s1,$a6
    b	.L0d9f450c
    sw	$t0,-4($a6)
.L0d9f4784:
    # Line 209
    la	$a7,__glClipSpan
    # Line 210
    addiu	$s1,$a0,12224
    # Line 209
    sw	$a7,12160($a0)
    addiu	$s0,$a0,12164
    # Line 210
    b	.L0d9f43d8
    sw	$zero,12220($a0)
.L0d9f479c:
    # Line 292
    sw	$t9,0($s0)
    b	.L0d9f444c
    # Line 293
    sw	$t9,0($s1)
.L0d9f47a8:
    # Line 356
    la	$at,__glFogStippledSpanSlow
    # Line 355
    la	$v0,__glFogSpanSlow
    sw	$v0,0($s0)
    # Line 356
    b	.L0d9f44b4
    sw	$at,0($s1)
.L0d9f47bc:
    # Line 455
    li	$v1,0x8006
    bne	$a4,$v1,.L0d9f4598
    li	$a1,771
    beq	$a3,$a1,.L0d9f4a0c
    # Line 457
    li	$a2,1
    beq	$a3,$a2,.L0d9f4a24
    # Line 459
    la	$t8,__glBlendSpan_SA_ONE
    beqz	$a3,.L0d9f4a18
    # Line 463
    la	$a3,__glBlendSpan
    b	.L0d9f45a8
    sw	$a3,0($s0)
.L0d9f47e8:
    # Line 479
    la	$a5,__glDitherCISpan
    sw	$a5,0($s0)
    b	.L0d9f45dc
    # Line 480
    sw	$a4,0($s1)
.L0d9f47f8:
    # Line 502
    sw	$a6,0($s0)
    b	.L0d9f4624
    # Line 503
    sw	$a6,0($s1)
.L0d9f4804:
    # Line 446
    beq	$v0,$a7,.L0d9f4578
    li	$t0,775
    beq	$v0,$t0,.L0d9f4578
    li	$t1,772
    beq	$v0,$t1,.L0d9f4578
    li	$t2,773
    beq	$v0,$t2,.L0d9f4578
    li	$t3,776
    beq	$v0,$t3,.L0d9f4578
    li	$t8,0x8007
    beq	$a4,$t8,.L0d9f4578
    li	$t9,0x8008
    bne	$a4,$t9,.L0d9f4594
    # Line 455
    li	$a5,770
    b	.L0d9f457c
    # Line 452
    lw	$t8,200($s4)
.L0d9f4844:
    # Line 384
    sw	$t1,4($s0)
    b	.L0d9f4504
    # Line 385
    sw	$t2,4($s1)
.L0d9f4850:
    # Line 397
    sw	$t8,4($s0)
    b	.L0d9f4504
    # Line 398
    sw	$t3,4($s1)
.L0d9f485c:
    sd	$a0,56($sp)
    # Line 314
    move	$a0,$s3
    sd	$ra,72($sp)
    jal	__glShadeCISpan
    li	$a1,3553
    # Line 315
    # lw $t9, -26644($gp) # &__glLookUpTexture
    move	$a0,$s3
    # Line 314
    sd	$v0,0($sp)
    # Line 315
    jal	__glLookUpTexture
    li	$a1,3553
    ld	$ra,72($sp)
    ld	$a0,56($sp)
    la	$a3,__glStencilTestStippledSpan
    la	$a4,__glStencilTestSpan_asm
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a7,__glDepthTestOffsetSpan
    la	$t0,__glDepthTestStippledOffsetSpan
    # Line 316
    lw	$t9,228($v0)
    la	$t1,__glDepthTestStencilSpan_asm
    lw	$at,64($t9)
    la	$t2,__glDepthTestStencilStippledSpan_asm
    li	$v0,6407
    la	$t3,__glDepthPassStippledSpan
    bne	$at,$v0,.L0d9f4484
    la	$t8,__glDepthPassSpan
    lw	$v1,56($t9)
    bnez	$v1,.L0d9f4484
    # Line 318
    ld	$t9,0($sp)
    lw	$t9,12($t9)
    li	$a1,9986
    beq	$t9,$a1,.L0d9f4a58
.L0d9f48dc:
    # Line 323
    li	$v0,9987
    beq	$v0,$t9,.L0d9f4a84
.L0d9f48e4:
    # Line 328
    li	$at,9728
    beq	$at,$t9,.L0d9f4ab0
.L0d9f48ec:
    # Line 333
    li	$v1,9984
    beq	$t9,$v1,.L0d9f4adc
.L0d9f48f4:
    # Line 338
    li	$a1,0x8146
    beq	$a1,$t9,.L0d9f4b08
    ld	$a2,0($sp)
.L0d9f4900:
    # Line 343
    bne	$v0,$t9,.L0d9f4484
    ld	$t9,0($sp)
    lw	$t9,16($t9)
    li	$a2,0x8146
    bne	$a2,$t9,.L0d9f4484
    # Line 346
    la	$at,__glTextureRGB_F_LML_StippledSpan
    # Line 345
    la	$v0,__glTextureRGB_F_LML_Span
    sw	$v0,0($s0)
    # Line 346
    b	.L0d9f4484
    sw	$at,0($s1)
.L0d9f4928:
    # Line 257
    beqz	$v0,.L0d9f4960
    nop
    lw	$v1,1632($s3)
    li	$a1,512
    beq	$v1,$a1,.L0d9f4a2c
    # Line 262
    dsll32	$a2,$s2,0xd
    bgez	$a2,.L0d9f49f0
    # Line 268
    la	$a7,__glDepthTestStippledSpan_asm
    # Line 267
    la	$a3,__glDepthTestStippledOffsetSpan
    addiu	$s0,$s0,4
    la	$a4,__glDepthTestOffsetSpan
    # Line 268
    addiu	$s1,$s1,4
    # Line 267
    sw	$a4,-4($s0)
    # Line 268
    sw	$a3,-4($s1)
.L0d9f4960:
    b	.L0d9f4408
    # Line 271
    la	$t3,__glDepthPassStippledSpan
.L0d9f4968:
    # Line 300
    sw	$t9,0($s0)
    b	.L0d9f444c
    # Line 301
    sw	$t9,0($s1)
.L0d9f4974:
    # Line 487
    la	$v0,__glRoundCISpan
    sw	$v0,0($s0)
    b	.L0d9f45dc
    # Line 488
    sw	$at,0($s1)
.L0d9f4984:
    # Line 414
    addiu	$s0,$s0,4
    la	$a1,__glDepthTestSpan_asm
    # Line 415
    addiu	$a0,$s1,4
    # Line 414
    sw	$a1,-4($s0)
    # Line 415
    move	$s1,$a0
    b	.L0d9f450c
    sw	$v1,-4($a0)
.L0d9f49a0:
    # Line 238
    la	$a3,__glDepthTestStencilSpan_asm
    # Line 240
    sw	$a3,4($s0)
    b	.L0d9f46c0
    # Line 241
    sw	$a2,4($s1)
.L0d9f49b0:
    la	$a4,__glDepthPassStippledSpan
    la	$a5,__glDepthPassSpan
    # Line 253
    sw	$a5,4($s0)
    b	.L0d9f46c0
    # Line 254
    sw	$a4,4($s1)
.L0d9f49c4:
    ld	$s5,64($sp)
    # Line 405
    la	$a6,__glNop
    # Line 521
    ld	$gp,8($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s4,40($sp)
    # Line 405
    sw	$a6,12288($s3)
    # Line 521
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f49f0:
    # Line 270
    addiu	$s0,$s0,4
    # Line 268
    la	$t1,__glDepthTestSpan_asm
    # Line 271
    addiu	$t0,$s1,4
    # Line 270
    sw	$t1,-4($s0)
    # Line 271
    move	$s1,$t0
    b	.L0d9f4960
    sw	$a7,-4($t0)
.L0d9f4a0c:
    # Line 457
    la	$t2,__glBlendSpan_SA_MSA
    b	.L0d9f45a8
    sw	$t2,0($s0)
.L0d9f4a18:
    # Line 461
    la	$t3,__glBlendSpan_SA_ZERO
    b	.L0d9f45a8
    sw	$t3,0($s0)
.L0d9f4a24:
    # Line 459
    b	.L0d9f45a8
    sw	$t8,0($s0)
.L0d9f4a2c:
    ld	$s5,64($sp)
    # Line 261
    # lw $t9, -27132($gp) # &__glNop
    # Line 521
    ld	$gp,8($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s4,40($sp)
    # Line 261
    sw	$t9,12288($s3)
    # Line 521
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f4a58:
    # Line 318
    ld	$at,0($sp)
    lw	$at,16($at)
    li	$v0,9729
    bne	$at,$v0,.L0d9f48dc
    # Line 321
    la	$at,__glTextureRGB_L_NML_StippledSpan
    # Line 320
    la	$v0,__glTextureRGB_L_NML_Span
    sw	$v0,0($s0)
    # Line 321
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f48dc
    lw	$t9,12($t9)
.L0d9f4a84:
    # Line 323
    ld	$v1,0($sp)
    lw	$v1,16($v1)
    li	$a1,9729
    bne	$v1,$a1,.L0d9f48e4
    # Line 326
    la	$at,__glTextureRGB_L_LML_StippledSpan
    # Line 325
    la	$v1,__glTextureRGB_L_LML_Span
    sw	$v1,0($s0)
    # Line 326
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f48e4
    lw	$t9,12($t9)
.L0d9f4ab0:
    # Line 328
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    move	$a1,$at
    bne	$a1,$a2,.L0d9f48ec
    # Line 331
    la	$at,__glTextureRGB_N_N_StippledSpan
    # Line 330
    la	$v1,__glTextureRGB_N_N_Span
    sw	$v1,0($s0)
    # Line 331
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f48ec
    lw	$t9,12($t9)
.L0d9f4adc:
    # Line 333
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    li	$a1,9728
    bne	$a1,$a2,.L0d9f48f4
    # Line 336
    la	$at,__glTextureRGB_N_NMN_StippledSpan
    # Line 335
    la	$v1,__glTextureRGB_N_NMN_Span
    sw	$v1,0($s0)
    # Line 336
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f48f4
    lw	$t9,12($t9)
.L0d9f4b08:
    # Line 338
    lw	$a2,16($a2)
    bne	$a1,$a2,.L0d9f4900
    # Line 341
    la	$at,__glTextureRGB_F_F_StippledSpan
    # Line 340
    la	$v1,__glTextureRGB_F_F_Span
    sw	$v1,0($s0)
    # Line 341
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f4900
    lw	$t9,12($t9)
.end __glGenericPickSpanProcs

# Function: __glGenericPickPointProcs
# Declared: Line 525 (Source lines: 526-571)
# Address: 0x0d9f4b30 - 0x0d9f4c40 (Size: 272 bytes, Frame: 0)
.globl __glGenericPickPointProcs
.ent __glGenericPickPointProcs
__glGenericPickPointProcs:
    # Line 527
    lw	$v1,28136($a0)
    # Line 532
    li	$a1,7169
    # Line 526
    lui	$v0,0xa
    # Line 537
    li	$a2,7170
    # Line 526
    addiu	$v0,$v0,-15192
    # Line 527
    lw	$a3,30492($a0)
    beqz	$v1,.L0d9f4bd8
    # Line 526
    addu	$at,$t9,$v0
    # Line 532
    la	$v1,__glPoint
    sw	$v1,12008($a0)
.L0d9f4b58:
    # Line 557
    dsll32	$a7,$a3,0xe
    # Line 532
    lw	$a4,3204($a0)
    # Line 557
    andi	$t0,$a3,0x1000
    # Line 532
    beq	$a4,$a1,.L0d9f4bec
    # Line 566
    la	$t2,__glPolygonOffsetPoint
    # Line 537
    beq	$a4,$a2,.L0d9f4c10
    # Line 540
    la	$a4,__glSelectPoint
    # Line 557
    andi	$a6,$a3,0x2000
    # Line 541
    lw	$a4,1792($a0)
    andi	$a4,$a4,0x400
    beqz	$a4,.L0d9f4bf8
    nop
    lbu	$a5,3221($a0)
    beqz	$a5,.L0d9f4c18
    # Line 547
    la	$a4,__glRenderAntiAliasedRGBPoint
    # Line 545
    la	$a4,__glRenderAntiAliasedCIPoint
    sw	$a4,12552($a0)
.L0d9f4b9c:
    # Line 557
    beqz	$a6,.L0d9f4bac
    nop
    bgez	$a7,.L0d9f4bb4
    nop
.L0d9f4bac:
    beqz	$t0,.L0d9f4bc0
    nop
.L0d9f4bb4:
    # Line 560
    sw	$a4,12556($a0)
    # Line 561
    la	$a4,__glRenderFlatFogPoint
    sw	$a4,12552($a0)
.L0d9f4bc0:
    # Line 564
    lw	$t1,1796($a0)
    andi	$t1,$t1,0x200
    beqz	$t1,.L0d9f4be4
    nop
    # Line 571
    jr	$ra
    # Line 566
    sw	$t2,12560($a0)
.L0d9f4bd8:
    # Line 530
    la	$t3,__glPointFast
    b	.L0d9f4b58
    sw	$t3,12008($a0)
.L0d9f4be4:
    # Line 571
    jr	$ra
    # Line 569
    sw	$a4,12560($a0)
.L0d9f4bec:
    # Line 536
    la	$a4,__glFeedbackPoint
    # Line 537
    b	.L0d9f4bc0
    # Line 536
    sw	$a4,12552($a0)
.L0d9f4bf8:
    # Line 547
    lw	$t8,464($a0)
    li	$t9,1
    beq	$t8,$t9,.L0d9f4c20
    # Line 550
    la	$a4,__glRenderAliasedPointN
    b	.L0d9f4b9c
    sw	$a4,12552($a0)
.L0d9f4c10:
    # Line 541
    b	.L0d9f4bc0
    # Line 540
    sw	$a4,12552($a0)
.L0d9f4c18:
    b	.L0d9f4b9c
    # Line 547
    sw	$a4,12552($a0)
.L0d9f4c20:
    # Line 550
    lbu	$v0,28272($a0)
    beqz	$v0,.L0d9f4c34
    # Line 552
    la	$a4,__glRenderAliasedPoint1
    b	.L0d9f4b9c
    sw	$a4,12552($a0)
.L0d9f4c34:
    # Line 554
    la	$a4,__glRenderAliasedPoint1_NoTex
    b	.L0d9f4b9c
    sw	$a4,12552($a0)
.end __glGenericPickPointProcs

# Function: __glGenericPickLineProcs
# Declared: Line 573 (Source lines: 574-797)
# Address: 0x0d9f4c40 - 0x0d9f5130 (Size: 1264 bytes, Frame: 16)
.globl __glGenericPickLineProcs
.ent __glGenericPickLineProcs
__glGenericPickLineProcs:
    # Line 575
    lw	$v1,28136($a0)
    # Line 574
    lui	$v0,0xa
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,-15464
    # Line 575
    lw	$a5,30492($a0)
    beqz	$v1,.L0d9f4eb4
    # Line 574
    addu	$at,$t9,$v0
    # Line 586
    la	$v1,__glOtherLStripVertex
    sw	$v1,12012($a0)
.L0d9f4c64:
    # Line 591
    lw	$a3,3204($a0)
    sw	$zero,12460($a0)
    li	$a2,7169
    # Line 588
    la	$a1,__glSecondLinesVertex
    # Line 591
    beq	$a3,$a2,.L0d9f4f44
    # Line 588
    sw	$a1,12020($a0)
    # Line 594
    li	$a4,7170
    beq	$a3,$a4,.L0d9f4f6c
    # Line 596
    la	$v1,__glSelectLine
    # Line 600
    lw	$a6,1792($a0)
    andi	$a6,$a6,0x200
    beqz	$a6,.L0d9f4f50
    # Line 604
    nop	# was lw $t9, -27908($gp) # &__glRenderAliasLine
    # Line 602
    la	$a7,__glRenderAntiAliasLine
    sw	$a7,12528($a0)
.L0d9f4ca0:
    # Line 608
    addiu	$a4,$a0,12360
    # Line 610
    beqz	$a6,.L0d9f4ed0
    # Line 607
    addiu	$a3,$a0,12296
.L0d9f4cac:
    # Line 622
    la	$t0,__glScissorStippledLine
    # Line 619
    subu	$t2,$a3,$a0
    # Line 621
    la	$t1,__glScissorLine
    # Line 619
    addiu	$t2,$t2,-12296
    sra	$t2,$t2,0x2
    sw	$t2,12424($a0)
    # Line 622
    addiu	$a4,$a4,4
    # Line 621
    sw	$t1,0($a3)
    addiu	$a3,$a3,4
    # Line 622
    move	$a7,$zero
    sw	$t0,-4($a4)
.L0d9f4cd8:
    # Line 616
    la	$t8,__glDepthTestStencilLine
    la	$t3,__glStencilTestLine
    la	$t2,__glStencilTestStippledLine
    # lw $t9, -27804($gp) # &__glDepthTestStencilStippledLine
.L0d9f4ce8:
    # Line 656
    andi	$v0,$a5,0x1
    beqz	$v0,.L0d9f4f58
    andi	$t0,$a5,0x2
    beqz	$t0,.L0d9f4fa8
    # Line 665
    la	$t0,__glFlatRGBASpan
    # Line 664
    la	$v1,__glShadeRGBASpan
    sw	$v1,0($a3)
    # Line 665
    sw	$v1,0($a4)
.L0d9f4d08:
    # Line 680
    andi	$a1,$a5,0x8
    addiu	$a4,$a4,4
    beqz	$a1,.L0d9f4d30
    # Line 679
    addiu	$a3,$a3,4
    # Line 683
    la	$a2,__glTextureStippledSpan
    # Line 682
    la	$t0,__glTextureSpan
    # Line 683
    addiu	$a4,$a4,4
    # Line 682
    sw	$t0,0($a3)
    addiu	$a3,$a3,4
    # Line 683
    sw	$a2,-4($a4)
.L0d9f4d30:
    andi	$t1,$a5,0x1000
    beqz	$t1,.L0d9f4d60
    nop
    lw	$v0,1912($a0)
    li	$v1,4354
    beq	$v0,$v1,.L0d9f4fb4
    # Line 691
    la	$a1,__glFogStippledSpan
    # Line 690
    la	$a2,__glFogSpan
    sw	$a2,0($a3)
    # Line 691
    sw	$a1,0($a4)
.L0d9f4d58:
    # Line 694
    addiu	$a4,$a4,4
    # Line 693
    addiu	$a3,$a3,4
.L0d9f4d60:
    # Line 694
    beqz	$a6,.L0d9f4dac
    # Line 699
    la	$v0,__glAntiAliasStippledLine
    addiu	$t0,$a4,4
    # Line 698
    la	$v1,__glAntiAliasLine
    addiu	$a6,$a3,4
    # Line 699
    andi	$a3,$a5,0x20
    andi	$t1,$a5,0x4
    # Line 698
    sw	$v1,-4($a6)
    # Line 699
    move	$a4,$t0
    sw	$v0,-4($t0)
    beqz	$a3,.L0d9f4f74
    # Line 698
    move	$a3,$a6
    # Line 704
    sw	$t3,0($a6)
    # Line 705
    beqz	$t1,.L0d9f4ffc
    sw	$t2,0($t0)
    # Line 707
    sw	$t8,4($a6)
    # Line 708
    sw	$t9,4($t0)
.L0d9f4da4:
    # Line 714
    addiu	$a4,$t0,8
    # Line 713
    addiu	$a3,$a6,8
.L0d9f4dac:
    # Line 734
    andi	$a1,$a5,0x200
.L0d9f4db0:
    beqz	$a1,.L0d9f4dcc
    # Line 741
    la	$a2,__glAlphaTestStippledSpan
    # Line 740
    la	$a6,__glAlphaTestSpan
    # Line 741
    addiu	$a4,$a4,4
    # Line 740
    sw	$a6,0($a3)
    addiu	$a3,$a3,4
    # Line 741
    sw	$a2,-4($a4)
.L0d9f4dcc:
    # Line 751
    la	$t1,__glStoreStippledLine
    # Line 748
    subu	$t0,$a3,$a0
    # Line 750
    la	$t2,__glStoreLine
    # Line 748
    addiu	$t3,$t0,-12296
    sra	$t3,$t3,0x2
    sw	$t3,12428($a0)
    # Line 744
    lbu	$a6,30708($a0)
    # Line 750
    sw	$t2,0($a3)
    # Line 751
    sw	$t1,0($a4)
    # Line 757
    addiu	$a4,$a0,12444
    # Line 753
    addiu	$t0,$t0,-12292
    # Line 756
    addiu	$a3,$a0,12440
    # Line 753
    sra	$t0,$t0,0x2
    # Line 754
    sw	$t0,12432($a0)
    # Line 757
    beqz	$a7,.L0d9f4e74
    # Line 744
    sltu	$a6,$zero,$a6
    # Line 760
    # lw $t9, -27844($gp) # &__glWideStippleLineRep
    sw	$t9,12444($a0)
    # Line 762
    addiu	$a4,$a0,12452
    # Line 759
    la	$t8,__glWideLineRep
    # Line 761
    addiu	$a3,$a0,12448
    # Line 762
    beqz	$a6,.L0d9f4e7c
    # Line 759
    sw	$t8,12440($a0)
    # Line 766
    la	$v0,__glDrawBothStippledLine
.L0d9f4e2c:
    # Line 765
    la	$v1,__glDrawBothLine
    sw	$v1,0($a3)
    # Line 770
    beqz	$a7,.L0d9f4e94
    # Line 766
    sw	$v0,0($a4)
.L0d9f4e3c:
    # Line 779
    la	$a1,__glProcessLine
    sw	$a1,12436($a0)
.L0d9f4e44:
    # Line 781
    andi	$a2,$a5,0x2000
    beqz	$a2,.L0d9f4e58
    dsll32	$a3,$a5,0xe
    bgez	$a3,.L0d9f4fe8
    nop
.L0d9f4e58:
    # Line 789
    lw	$a4,1796($a0)
    andi	$a4,$a4,0x400
    beqz	$a4,.L0d9f4ec0
    # Line 792
    la	$a5,__glPolygonOffsetLine
    # Line 797
    addiu	$sp,$sp,16
    jr	$ra
    # Line 792
    sw	$a5,12536($a0)
.L0d9f4e74:
    # Line 762
    bnez	$a6,.L0d9f4e2c
    # Line 766
    la	$v0,__glDrawBothStippledLine
.L0d9f4e7c:
    la	$t2,__glNop
    # Line 768
    sw	$t2,0($a3)
    # Line 769
    sw	$t2,0($a4)
    # Line 770
    lw	$t1,12432($a0)
    bnez	$a7,.L0d9f4e3c
    sw	$t1,12428($a0)
.L0d9f4e94:
    # Line 773
    lw	$t3,12428($a0)
    # Line 776
    li	$t8,3
    bnez	$a6,.L0d9f4e3c
    # Line 773
    sw	$t3,12424($a0)
    # Line 776
    bne	$t0,$t8,.L0d9f4e3c
    # Line 777
    nop	# was lw $t9, -27852($gp) # &__glProcessLine3NW
    b	.L0d9f4e44
    sw	$t9,12436($a0)
.L0d9f4eb4:
    # Line 584
    la	$v0,__glOtherLStripVertexFast
    b	.L0d9f4c64
    sw	$v0,12012($a0)
.L0d9f4ec0:
    # Line 795
    lw	$v1,12528($a0)
    # Line 797
    addiu	$sp,$sp,16
    jr	$ra
    # Line 795
    sw	$v1,12536($a0)
.L0d9f4ed0:
    # Line 610
    andi	$a1,$a5,0x8000
    beqz	$a1,.L0d9f4ef4
    nop
    # Line 612
    sw	$zero,12360($a0)
    addiu	$a4,$a0,12364
    # Line 611
    la	$a2,__glStippleLine
    addiu	$a3,$a0,12300
    # Line 615
    bnez	$a6,.L0d9f4cac
    # Line 611
    sw	$a2,12296($a0)
.L0d9f4ef4:
    # Line 615
    lw	$a7,476($a0)
    # Line 622
    addiu	$t8,$a4,4
    # Line 615
    slti	$a7,$a7,2
    # Line 621
    la	$t2,__glScissorLine
    # Line 622
    andi	$t9,$a5,0x20
    # Line 619
    subu	$t3,$a3,$a0
    # Line 622
    la	$t1,__glScissorStippledLine
    # Line 619
    addiu	$t3,$t3,-12296
    # Line 615
    bnez	$a7,.L0d9f5010
    # Line 619
    sra	$t3,$t3,0x2
    # Line 621
    addiu	$t0,$a3,4
    # Line 619
    sw	$t3,12424($a0)
    # Line 615
    li	$a7,1
    # Line 622
    move	$a4,$t8
    # Line 621
    sw	$t2,0($a3)
    # Line 622
    sw	$t1,-4($t8)
    bnez	$a6,.L0d9f4cd8
    # Line 621
    move	$a3,$t0
    b	.L0d9f5048
    # Line 626
    la	$t2,__glStencilTestStippledLine
.L0d9f4f44:
    # Line 594
    la	$t8,__glFeedbackLine
    b	.L0d9f4e58
    sw	$t8,12528($a0)
.L0d9f4f50:
    b	.L0d9f4ca0
    # Line 604
    sw	$t9,12528($a0)
.L0d9f4f58:
    # Line 668
    beqz	$t0,.L0d9f5084
    # Line 672
    la	$v0,__glShadeCISpan
    sw	$v0,0($a3)
    # Line 673
    b	.L0d9f4d08
    sw	$v0,0($a4)
.L0d9f4f6c:
    # Line 596
    b	.L0d9f4e58
    sw	$v1,12528($a0)
.L0d9f4f74:
    # Line 714
    beqz	$t1,.L0d9f4db0
    # Line 734
    andi	$a1,$a5,0x200
    # Line 714
    lw	$a3,1632($a0)
    li	$a1,512
    beq	$a3,$a1,.L0d9f5094
    # Line 720
    la	$a2,__glDTLine
    sll	$a4,$a3,0x2
    addu	$a2,$a2,$a4
    lw	$a2,-2048($a2)
    beqz	$a2,.L0d9f4fc8
    nop
    # Line 724
    b	.L0d9f4fcc
    sw	$a6,12460($a0)
.L0d9f4fa8:
    # Line 667
    sw	$t0,0($a3)
    b	.L0d9f4d08
    # Line 668
    sw	$t0,0($a4)
.L0d9f4fb4:
    # Line 688
    la	$t1,__glFogStippledSpanSlow
    # Line 687
    la	$v0,__glFogSpanSlow
    sw	$v0,0($a3)
    # Line 688
    b	.L0d9f4d58
    sw	$t1,0($a4)
.L0d9f4fc8:
    # Line 726
    sw	$zero,12460($a0)
.L0d9f4fcc:
    # Line 734
    la	$v1,__glDepthTestStippledLine
    # Line 729
    la	$a1,__glDepthTestLine_asm
    # Line 734
    addiu	$a4,$t0,4
    # Line 729
    sw	$a1,0($a6)
    addiu	$a3,$a6,4
    b	.L0d9f4dac
    # Line 734
    sw	$v1,0($t0)
.L0d9f4fe8:
    # Line 783
    lw	$a2,12528($a0)
    # Line 784
    la	$a3,__glRenderFlatFogLine
    sw	$a3,12528($a0)
    b	.L0d9f4e58
    # Line 783
    sw	$a2,12532($a0)
.L0d9f4ffc:
    la	$a4,__glDepthPassStippledLine
    # Line 710
    la	$t1,__glDepthPassLine
    sw	$t1,4($a6)
    b	.L0d9f4da4
    # Line 711
    sw	$a4,4($t0)
.L0d9f5010:
    # Line 621
    addiu	$t0,$a3,4
    # Line 622
    la	$t2,__glScissorStippledLine
    # Line 619
    subu	$t8,$a3,$a0
    # Line 621
    la	$t3,__glScissorLine
    # Line 619
    addiu	$t8,$t8,-12296
    sra	$t8,$t8,0x2
    sw	$t8,12424($a0)
    # Line 616
    move	$a7,$zero
    # Line 621
    sw	$t3,0($a3)
    # Line 622
    addiu	$t8,$a4,4
    # Line 621
    move	$a3,$t0
    # Line 622
    move	$a4,$t8
    sw	$t2,-4($t8)
    # Line 626
    la	$t2,__glStencilTestStippledLine
.L0d9f5048:
    la	$t3,__glStencilTestLine
    # Line 622
    beqz	$t9,.L0d9f50a0
    andi	$t1,$a5,0x4
    sd	$t8,0($sp)
    # Line 626
    sw	$t3,0($t0)
    # Line 635
    addiu	$a3,$t0,8
    # Line 627
    beqz	$t1,.L0d9f5108
    sw	$t2,0($t8)
    # Line 629
    # lw $t9, -27804($gp) # &__glDepthTestStencilStippledLine
    la	$t8,__glDepthTestStencilLine
    # Line 630
    ld	$t1,0($sp)
    # Line 629
    sw	$t8,4($t0)
    # Line 630
    sw	$t9,4($t1)
.L0d9f507c:
    # Line 636
    b	.L0d9f4ce8
    addiu	$a4,$t1,8
.L0d9f5084:
    # Line 673
    la	$v0,__glFlatCISpan
    # Line 675
    sw	$v0,0($a3)
    b	.L0d9f4d08
    # Line 676
    sw	$v0,0($a4)
.L0d9f5094:
    # Line 719
    la	$v1,__glNop
    # Line 720
    b	.L0d9f4e58
    # Line 719
    sw	$v1,12436($a0)
.L0d9f50a0:
    # Line 636
    beqz	$t1,.L0d9f50f4
    nop
    lw	$a3,1632($a0)
    li	$a1,512
    beq	$a3,$a1,.L0d9f5128
    # Line 641
    la	$a1,__glNop
    # Line 642
    la	$a2,__glDTLine
    sll	$a4,$a3,0x2
    addu	$a2,$a2,$a4
    lw	$a2,-2048($a2)
    beqz	$a2,.L0d9f50d8
    nop
    # Line 646
    b	.L0d9f50dc
    sw	$t0,12460($a0)
.L0d9f50d8:
    # Line 648
    sw	$zero,12460($a0)
.L0d9f50dc:
    la	$t1,__glDepthTestStippledLine
    la	$t2,__glDepthTestLine_asm
    # Line 651
    sw	$t2,0($t0)
    # Line 656
    addiu	$a4,$t8,4
    # Line 651
    addiu	$a3,$t0,4
    # Line 656
    sw	$t1,0($t8)
.L0d9f50f4:
    la	$t8,__glDepthTestStencilLine
    la	$t3,__glStencilTestLine
    la	$t2,__glStencilTestStippledLine
    b	.L0d9f4ce8
    nop	# was lw $t9, -27804($gp) # &__glDepthTestStencilStippledLine
.L0d9f5108:
    # Line 633
    la	$t8,__glDepthTestStencilLine
    # lw $t9, -27804($gp) # &__glDepthTestStencilStippledLine
    # Line 616
    la	$v0,__glDepthPassStippledLine
    la	$v1,__glDepthPassLine
    ld	$t1,0($sp)
    # Line 632
    sw	$v1,4($t0)
    b	.L0d9f507c
    # Line 633
    sw	$v0,4($t1)
.L0d9f5128:
    # Line 642
    b	.L0d9f4e58
    # Line 641
    sw	$a1,12436($a0)
.end __glGenericPickLineProcs

# Function: __glGenericPickTriangleProcs
# Declared: Line 805 (Source lines: 806-907)
# Address: 0x0d9f5130 - 0x0d9f5324 (Size: 500 bytes, Frame: 0)
.globl __glGenericPickTriangleProcs
.ent __glGenericPickTriangleProcs
__glGenericPickTriangleProcs:
    # Line 807
    lw	$a4,30492($a0)
    # Line 827
    li	$a3,2
    # Line 806
    lui	$v0,0xa
    # Line 807
    dsll32	$v1,$a4,0xf
    # Line 872
    li	$t3,6914
    # Line 806
    addiu	$v0,$v0,-16728
    # Line 807
    bgez	$v1,.L0d9f5260
    # Line 806
    addu	$at,$t9,$v0
    # Line 813
    lw	$a3,492($a0)
    li	$v1,1028
    beq	$a3,$v1,.L0d9f5280
    li	$a1,1029
    beq	$a3,$a1,.L0d9f5298
    # Line 818
    li	$a7,1
    # Line 813
    li	$a2,1032
    beq	$a3,$a2,.L0d9f52c8
    nop
.L0d9f5174:
    # Line 831
    lw	$a3,496($a0)
    li	$a5,2304
    beq	$a3,$a5,.L0d9f5240
    # Line 892
    la	$t8,__glRenderSmoothOneFaceTmesh
    # Line 831
    li	$a6,2305
    beq	$a3,$a6,.L0d9f5268
    nop
.L0d9f5190:
    # Line 855
    lw	$a6,488($a0)
    lw	$a5,3204($a0)
    li	$t0,7169
    # Line 853
    lw	$a3,484($a0)
    # Line 855
    andi	$t1,$a6,0xf
    sb	$t1,30575($a0)
    # Line 853
    andi	$a7,$a3,0xf
    # Line 855
    beq	$a5,$t0,.L0d9f52a0
    # Line 853
    sb	$a7,30574($a0)
    # Line 863
    li	$t2,7170
    beq	$a5,$t2,.L0d9f52b4
    nop
    # Line 872
    bne	$a3,$a6,.L0d9f51d4
    # Line 888
    la	$a5,__glRenderSmoothOneFaceTriangle
    # Line 872
    beq	$a3,$t3,.L0d9f51ec
    dsll32	$t9,$a4,0xe
    # Line 888
    la	$a5,__glRenderSmoothOneFaceTriangle
.L0d9f51d4:
    la	$a3,__glRenderTriangle
    sw	$a3,12128($a0)
.L0d9f51dc:
    bne	$a3,$a5,.L0d9f5208
    nop
.L0d9f51e4:
    # Line 892
    b	.L0d9f520c
    sw	$t8,12132($a0)
.L0d9f51ec:
    # Line 876
    la	$a5,__glRenderSmoothOneFaceTriangle
    # Line 872
    bgez	$t9,.L0d9f52f4
    andi	$a3,$a4,0x400
    beqz	$a3,.L0d9f5308
    # Line 876
    la	$a3,__glRenderSmoothTriangle
    # Line 888
    beq	$a3,$a5,.L0d9f51e4
    # Line 876
    sw	$a3,12128($a0)
.L0d9f5208:
    # Line 894
    sw	$a3,12132($a0)
.L0d9f520c:
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x800
    beqz	$v0,.L0d9f5258
    # Line 900
    la	$a3,__glFillTriangle
    # Line 898
    la	$a3,__glFillAntiAliasedTriangle
    sw	$a3,12136($a0)
.L0d9f5224:
    # Line 902
    andi	$v1,$a4,0x2000
    beqz	$v1,.L0d9f5238
    dsll32	$a1,$a4,0xe
    bgez	$a1,.L0d9f5288
    nop
.L0d9f5238:
    # Line 907
    jr	$ra
    nop
.L0d9f5240:
    # Line 833
    lbu	$a2,4848($a0)
    beqz	$a2,.L0d9f52dc
    li	$a3,1
    # Line 835
    sb	$zero,30573($a0)
    b	.L0d9f5190
    # Line 834
    sb	$a3,30572($a0)
.L0d9f5258:
    b	.L0d9f5224
    # Line 900
    sw	$a3,12136($a0)
.L0d9f5260:
    b	.L0d9f5174
    # Line 827
    sb	$a3,30577($a0)
.L0d9f5268:
    # Line 842
    lbu	$a5,4848($a0)
    beqz	$a5,.L0d9f52e8
    li	$a3,1
    # Line 844
    sb	$a3,30573($a0)
    b	.L0d9f5190
    # Line 843
    sb	$zero,30572($a0)
.L0d9f5280:
    b	.L0d9f5174
    # Line 815
    sb	$zero,30577($a0)
.L0d9f5288:
    # Line 904
    sw	$a3,12140($a0)
    # Line 905
    la	$a6,__glFillFlatFogTriangle
    # Line 907
    jr	$ra
    # Line 905
    sw	$a6,12136($a0)
.L0d9f5298:
    # Line 819
    b	.L0d9f5174
    # Line 818
    sb	$a7,30577($a0)
.L0d9f52a0:
    # Line 862
    sw	$zero,12136($a0)
    # Line 860
    la	$t0,__glFeedbackTriangle
    # Line 861
    sw	$t0,12132($a0)
    # Line 907
    jr	$ra
    # Line 860
    sw	$t0,12128($a0)
.L0d9f52b4:
    # Line 868
    sw	$zero,12136($a0)
    # Line 866
    la	$t1,__glSelectTriangle
    # Line 867
    sw	$t1,12132($a0)
    # Line 907
    jr	$ra
    # Line 866
    sw	$t1,12128($a0)
.L0d9f52c8:
    # Line 823
    sw	$zero,12136($a0)
    # Line 821
    la	$t2,__glDontRenderTriangle
    # Line 822
    sw	$t2,12132($a0)
    # Line 907
    jr	$ra
    # Line 821
    sw	$t2,12128($a0)
.L0d9f52dc:
    # Line 838
    sb	$a3,30573($a0)
    b	.L0d9f5190
    # Line 837
    sb	$zero,30572($a0)
.L0d9f52e8:
    # Line 847
    sb	$zero,30573($a0)
    b	.L0d9f5190
    # Line 846
    sb	$a3,30572($a0)
.L0d9f52f4:
    # Line 878
    beqz	$a3,.L0d9f5318
    # Line 882
    la	$a3,__glRenderFlatTriangle
    sw	$a3,12128($a0)
.L0d9f5300:
    b	.L0d9f51dc
    # Line 884
    la	$a5,__glRenderSmoothOneFaceTriangle
.L0d9f5308:
    # Line 876
    la	$a5,__glRenderSmoothOneFaceTriangle
    # Line 878
    sw	$a5,12128($a0)
    b	.L0d9f51dc
    move	$a3,$a5
.L0d9f5318:
    # Line 884
    la	$a3,__glRenderFlatOneFaceTriangle
    b	.L0d9f5300
    sw	$a3,12128($a0)
.end __glGenericPickTriangleProcs

# Function: __glGenericPickRenderBitmapProcs
# Declared: Line 909 (Source lines: 910-920)
# Address: 0x0d9f5330 - 0x0d9f5384 (Size: 84 bytes, Frame: 0)
.globl __glGenericPickRenderBitmapProcs
.ent __glGenericPickRenderBitmapProcs
__glGenericPickRenderBitmapProcs:
    # Line 913
    lbu	$a4,1189($a0)
    # Line 910
    lui	$a1,0xa
    # Line 913
    lw	$v1,1192($a0)
    # Line 910
    addiu	$a1,$a1,-17240
    # Line 913
    lw	$a2,1196($a0)
    # Line 910
    addu	$at,$t9,$a1
    # Line 911
    la	$v0,__glRenderBitmap
    # Line 913
    bnez	$v1,.L0d9f536c
    # Line 911
    sw	$v0,12568($a0)
    # Line 913
    lw	$a3,1200($a0)
    bnez	$a2,.L0d9f5370
    # Line 919
    la	$a5,__glDrawBitmap
    # Line 913
    bnez	$a3,.L0d9f5370
    # Line 919
    la	$a5,__glDrawBitmap
    # Line 913
    beqz	$a4,.L0d9f5378
.L0d9f536c:
    # Line 919
    la	$a5,__glDrawBitmap
.L0d9f5370:
    # Line 920
    jr	$ra
    # Line 919
    sw	$a5,12564($a0)
.L0d9f5378:
    # Line 917
    la	$a6,__glFastDrawBitmap
    # Line 920
    jr	$ra
    # Line 917
    sw	$a6,12564($a0)
.end __glGenericPickRenderBitmapProcs

# Function: __glGenericPickClipProcs
# Declared: Line 922 (Source lines: 923-930)
# Address: 0x0d9f5390 - 0x0d9f53d0 (Size: 64 bytes, Frame: 0)
.globl __glGenericPickClipProcs
.ent __glGenericPickClipProcs
__glGenericPickClipProcs:
    # Line 923
    lw	$v1,1392($a0)
    li	$a1,7424
    lui	$v0,0xa
    addiu	$v0,$v0,-17336
    beq	$v1,$a1,.L0d9f53bc
    addu	$at,$t9,$v0
    # Line 927
    la	$v1,__glFastClipSmoothLine
    # Line 929
    la	$a1,__glClipTriangle
    sw	$a1,12144($a0)
    # Line 930
    jr	$ra
    # Line 927
    sw	$v1,12540($a0)
.L0d9f53bc:
    # Line 925
    la	$a2,__glFastClipFlatLine
    # Line 929
    la	$a3,__glClipTriangle
    sw	$a3,12144($a0)
    # Line 930
    jr	$ra
    # Line 925
    sw	$a2,12540($a0)
.end __glGenericPickClipProcs

# Function: __glGenericPickTextureProcs
# Declared: Line 932 (Source lines: 933-1350)
# Address: 0x0d9f53d0 - 0x0d9f5ed0 (Size: 2816 bytes, Frame: 224)
.globl __glGenericPickTextureProcs
.ent __glGenericPickTextureProcs
__glGenericPickTextureProcs:
    # Line 933
    addiu	$sp,$sp,-96
    sd	$s1,40($sp)
    sd	$s7,24($sp)
    sd	$s5,48($sp)
    sd	$s4,56($sp)
    sd	$ra,64($sp)
    sd	$s2,72($sp)
    # Line 938
    lw	$a2,1792($a0)
    sd	$s3,80($sp)
    lui	$at,0xc
    # Line 933
    sd	$s0,8($sp)
    lui	$v1,0xa
    # Line 938
    and	$v0,$at,$a2
    # Line 933
    move	$s0,$a0
    sd	$s6,32($sp)
    addiu	$v1,$v1,-17400
    sd	$gp,16($sp)
    # Line 938
    beq	$at,$v0,.L0d9f58c8
    # Line 933
    addu	$gp,$t9,$v1
.L0d9f541c:
    # Line 956
    dsll32	$a0,$a2,0xd
    bgez	$a0,.L0d9f584c
    dsll32	$at,$a2,0xc
.L0d9f5428:
    # Line 963
    la	$a1,__glCalcMixedTexture
    sw	$a1,12052($s0)
.L0d9f5430:
    # Line 967
    dsll32	$a3,$a2,0x1
.L0d9f5434:
    bgez	$a3,.L0d9f5754
    sw	$zero,28264($s0)
    # Line 969
    # lw $t9, -26432($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    jal	__glIsTextureConsistent
    li	$a1,0x806f
    beqz	$v0,.L0d9f5818
    # Line 970
    nop	# was lw $t9, -26652($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,0x806f
    # Line 971
    # lw $t9, -26644($gp) # &__glLookUpTexture
    # Line 970
    move	$s7,$v0
    # Line 971
    move	$a0,$s0
    jal	__glLookUpTexture
    li	$a1,0x806f
    move	$a6,$v0
    sw	$v0,28264($s0)
.L0d9f547c:
    # Line 985
    beqz	$a6,.L0d9f581c
    ld	$s3,80($sp)
    # Line 1002
    lw	$a4,1792($s0)
    lui	$a5,0x8000
    and	$a4,$a4,$a5
    beqz	$a4,.L0d9f57f4
    nop
    lw	$a7,5924($s0)
    beqz	$a7,.L0d9f57f4
    # Line 1004
    li	$t0,1
    sd	$t0,0($sp)
.L0d9f54a8:
    # Line 1009
    move	$a0,$s7
    li	$a5,6
    li	$a4,54
    move	$a3,$zero
    addiu	$a2,$a6,4
    nop
.L0d9f54c0:
    addiu	$a5,$a5,-1
    addu	$t1,$a3,$a0
    addiu	$a4,$a4,-1
    addu	$t2,$a3,$a2
    lw	$t1,0($t1)
    addiu	$a3,$a3,4
    bnez	$a5,.L0d9f54c0
    sw	$t1,0($t2)
    addiu	$t1,$a0,28
    addiu	$a7,$a2,28
    li	$t3,0x20
    addiu	$s6,$a0,4
    addiu	$t0,$a2,4
    addiu	$ra,$a2,8
    addiu	$s3,$a0,8
    addiu	$a5,$a0,12
    addiu	$s5,$a2,12
    addiu	$s4,$a0,20
    addiu	$t2,$a2,20
    addiu	$t8,$a2,24
    addiu	$t9,$a0,24
    addiu	$s2,$a2,16
    addiu	$s1,$a0,16
    nop
.L0d9f5520:
    addu	$a1,$a3,$a0
    addu	$at,$a3,$a2
    lw	$a1,0($a1)
    addu	$v1,$a3,$s6
    sw	$a1,0($at)
    addu	$a1,$a3,$t0
    lw	$v1,0($v1)
    addu	$v0,$a3,$s3
    sw	$v1,0($a1)
    addu	$v1,$a3,$ra
    lw	$v0,0($v0)
    addu	$at,$a3,$a5
    sw	$v0,0($v1)
    addu	$v0,$a3,$s5
    lw	$at,0($at)
    addu	$a1,$a3,$s1
    sw	$at,0($v0)
    addu	$at,$a3,$s2
    lw	$a1,0($a1)
    addu	$v1,$a3,$s4
    sw	$a1,0($at)
    addu	$a1,$a3,$t2
    lw	$v1,0($v1)
    addu	$v0,$a3,$t9
    sw	$v1,0($a1)
    addu	$v1,$a3,$t8
    lw	$v0,0($v0)
    addiu	$a4,$a4,-8
    addu	$at,$a3,$t1
    sw	$v0,0($v1)
    addu	$v0,$a3,$a7
    lw	$at,0($at)
    addu	$a3,$a3,$t3
    bgtz	$a4,.L0d9f5520
    sw	$at,0($v0)
    # Line 1011
    lwc1	$f0,184($s7)
    mtc1	$zero,$f4
    c.eq.s	$f0,$f4
    bc1f	.L0d9f5630
    nop
    lwc1	$f1,188($s7)
    c.eq.s $f1,$f4
    bc1f .L0d9f5630
    nop
    lwc1	$f2,192($s7)
    c.eq.s $f2,$f4
    bc1f .L0d9f5630
    nop
    lwc1	$f3,196($s7)
    c.eq.s $f3,$f4
    bc1f .L0d9f5630
    nop
    lwc1	$f5,168($s7)
    lwc1	$f4,3544($s0)
    c.eq.s $f5,$f4
    bc1f .L0d9f5630
    nop
    lwc1	$f6,172($s7)
    c.eq.s $f6,$f4
    bc1f .L0d9f5630
    nop
    lwc1	$f7,176($s7)
    c.eq.s $f7,$f4
    bc1f .L0d9f5630
    nop
    lwc1	$f8,180($s7)
    c.eq.s $f8,$f4
    bc1t .L0d9f5ccc
.L0d9f5630:
    ld	$s7,24($sp)
    # Line 1019
    li	$t0,1
.L0d9f5638:
    # Line 1028
    la	$a3,__glComputeLineRho
    sw	$a3,12572($s0)
    # Line 1029
    la	$a2,__glComputePolygonRho
    sw	$a2,12576($s0)
    # Line 1030
    lw	$a2,16($a6)
    li	$a7,9729
    beq	$a7,$a2,.L0d9f57c0
    li	$a4,9728
    beq	$a2,$a4,.L0d9f57c0
    nop
    # Line 1062
    lw	$t1,20($a6)
    # Line 1055
    la	$a5,__glMipMapFragment
    sw	$a5,256($a6)
    # Line 1062
    beq	$a7,$t1,.L0d9f5a4c
    move	$a3,$t1
.L0d9f5674:
    # Line 1067
    lwc1	$f9,3544($s0)
    swc1	$f9,240($a6)
.L0d9f567c:
    # Line 1073
    lw	$a0,2484($s0)
    lw	$a0,0($a0)
    # Line 1072
    lw	$a4,228($a6)
    # Line 1073
    li	$t1,8448
    beq	$a0,$t1,.L0d9f5958
    # Line 1072
    lw	$a4,64($a4)
    # Line 1073
    li	$a1,8449
    beq	$a0,$a1,.L0d9f5a00
    li	$t1,3042
    beq	$a0,$t1,.L0d9f5a88
    li	$t2,7681
    beq	$a0,$t2,.L0d9f5918
    # Line 1230
    li	$t3,6409
    # Line 1073
    li	$t3,0x8062
    beq	$a0,$t3,.L0d9f5918
    # Line 1230
    li	$t3,6409
.L0d9f56bc:
    # Line 1290
    lw	$a0,232($a6)
    li	$t8,1
    beq	$a0,$t8,.L0d9f59e0
    # Line 1294
    la	$t1,__glFilter4Func1
    # Line 1290
    li	$t9,2
    beq	$a0,$t9,.L0d9f5a68
    # Line 1299
    la	$t1,__glFilter4Func2
    # Line 1290
    li	$ra,3
    beq	$a0,$ra,.L0d9f5ad4
.L0d9f56e0:
    # Line 1309
    li	$a4,0x8146
    beq	$a4,$a3,.L0d9f59f8
    # Line 1311
    la	$t2,__glFilter4Func
    # Line 1309
    beq	$a7,$a3,.L0d9f5a80
    # Line 1314
    la	$t2,__glLinearFilter
    # Line 1309
    li	$at,9728
    beq	$a3,$at,.L0d9f5aec
.L0d9f56fc:
    # Line 1319
    la	$a7,__glNearestFilter
    # Line 1322
    sltiu	$v0,$a2,9985
    # Line 1319
    la	$t0,__glFilter4Func
    # Line 1322
    bnez	$v0,.L0d9f57a0
    # Line 1319
    la	$a3,__glLinearFilter
    # Line 1322
    sltiu	$v1,$a2,9986
    beqz	$v1,.L0d9f57fc
    sltiu	$t8,$a2,9987
    # Line 1336
    la	$a0,__glLMNFilter
    sw	$a0,268($a6)
.L0d9f5724:
    ld	$s1,40($sp)
.L0d9f5728:
    ld	$s5,48($sp)
    ld	$s4,56($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    ld	$s6,32($sp)
    ld	$ra,64($sp)
    # Line 1350
    ld	$gp,16($sp)
    # Line 1346
    sw	$a5,12580($s0)
    # Line 1350
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9f5754:
    # Line 970
    dsll32	$a1,$a2,0xe
    bgez	$a1,.L0d9f587c
    # Line 976
    nop	# was lw $t9, -26432($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    jal	__glIsTextureConsistent
    li	$a1,3553
    beqz	$v0,.L0d9f5818
    # Line 977
    nop	# was lw $t9, -26652($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 978
    # lw $t9, -26644($gp) # &__glLookUpTexture
    # Line 977
    move	$s7,$v0
    # Line 978
    move	$a0,$s0
    jal	__glLookUpTexture
    li	$a1,3553
    move	$a6,$v0
    # Line 977
    b	.L0d9f547c
    # Line 978
    sw	$v0,28264($s0)
.L0d9f57a0:
    # Line 1322
    sltiu	$a4,$a2,9729
    bnez	$a4,.L0d9f586c
    li	$a1,9728
    sltiu	$a7,$a2,9730
    beqz	$a7,.L0d9f59d0
    li	$a1,9984
    # Line 1328
    b	.L0d9f5724
    # Line 1327
    sw	$a3,268($a6)
.L0d9f57c0:
    # Line 1030
    lw	$a3,20($a6)
    bne	$a2,$a3,.L0d9f59ac
    # Line 1039
    la	$a5,__glTextureFragment
    # Line 1036
    la	$t2,__glNopLineRho
    # Line 1035
    la	$t3,__glFastTextureFragment
    sw	$t3,256($a6)
    # Line 1036
    sw	$t2,12572($s0)
    # Line 1037
    la	$t1,__glNopPolygonRho
    sw	$t1,12576($s0)
    lw	$a5,256($a6)
    lw	$a3,20($a6)
    b	.L0d9f567c
    lw	$a2,16($a6)
.L0d9f57f4:
    b	.L0d9f54a8
    # Line 1006
    sd	$zero,0($sp)
.L0d9f57fc:
    # Line 1322
    bnez	$t8,.L0d9f59c0
    li	$v0,9986
    sltiu	$t9,$a2,9988
    beqz	$t9,.L0d9f5af8
    # Line 1342
    la	$ra,__glLMLFilter
    # Line 1343
    b	.L0d9f5724
    # Line 1342
    sw	$ra,268($a6)
.L0d9f5818:
    ld	$s3,80($sp)
.L0d9f581c:
    ld	$s2,72($sp)
    ld	$s4,56($sp)
    ld	$s5,48($sp)
    ld	$s1,40($sp)
    ld	$s6,32($sp)
    ld	$s7,24($sp)
    ld	$ra,64($sp)
    # Line 1350
    ld	$gp,16($sp)
    # Line 1348
    sw	$zero,12580($s0)
    # Line 1350
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9f584c:
    # Line 956
    bltz	$at,.L0d9f5428
    dsll32	$v0,$a2,0xb
    bltz	$v0,.L0d9f5428
    dsll32	$v1,$a2,0xa
    bltz	$v1,.L0d9f5428
    # Line 961
    la	$a0,__glCalcTexture
    b	.L0d9f5430
    sw	$a0,12052($s0)
.L0d9f586c:
    # Line 1322
    bne	$a2,$a1,.L0d9f5728
    ld	$s1,40($sp)
    # Line 1330
    b	.L0d9f5724
    sw	$a7,268($a6)
.L0d9f587c:
    # Line 977
    dsll32	$a3,$a2,0xf
    bgez	$a3,.L0d9f5818
    # Line 983
    nop	# was lw $t9, -26432($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    jal	__glIsTextureConsistent
    li	$a1,3552
    beqz	$v0,.L0d9f5818
    # Line 984
    nop	# was lw $t9, -26652($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,3552
    # Line 985
    # lw $t9, -26644($gp) # &__glLookUpTexture
    # Line 984
    move	$s7,$v0
    # Line 985
    move	$a0,$s0
    jal	__glLookUpTexture
    li	$a1,3552
    move	$a6,$v0
    b	.L0d9f547c
    sw	$v0,28264($s0)
.L0d9f58c8:
    # Line 938
    dsll32	$a4,$a2,0xb
    bltz	$a4,.L0d9f541c
    dsll32	$a5,$a2,0xa
    bltz	$a5,.L0d9f541c
    nop
    lw	$a6,2108($a0)
    lw	$a0,1984($a0)
    bne	$a6,$a0,.L0d9f541c
    # Line 944
    li	$a7,9216
    beq	$a0,$a7,.L0d9f5e90
    li	$t0,9217
    beq	$a0,$t0,.L0d9f5eb8
    # Line 949
    la	$t1,__glCalcObjectLinear
    # Line 944
    li	$t1,9218
    bne	$a0,$t1,.L0d9f5434
    # Line 967
    dsll32	$a3,$a2,0x1
    # Line 952
    la	$t2,__glCalcSphereMap
    # Line 953
    b	.L0d9f5430
    # Line 952
    sw	$t2,12052($s0)
    # Line 1230
    li	$t3,6409
.L0d9f5918:
    beq	$a4,$t3,.L0d9f5b28
    li	$t8,6410
    beq	$a4,$t8,.L0d9f5b4c
    li	$t9,6407
    beq	$a4,$t9,.L0d9f5b70
    li	$ra,6408
    beq	$a4,$ra,.L0d9f5bb0
    li	$at,6406
    beq	$a4,$at,.L0d9f5c08
    li	$v0,0x8049
    bne	$a4,$v0,.L0d9f56bc
    # Line 1277
    ld	$v1,0($sp)
    beqz	$v1,.L0d9f5dac
    # Line 1278
    la	$a0,__glTextureCTReplaceI
    b	.L0d9f56bc
    sw	$a0,260($a6)
.L0d9f5958:
    # Line 1075
    li	$a1,6409
    beq	$a4,$a1,.L0d9f5b3c
    # Line 1077
    ld	$t9,0($sp)
    # Line 1075
    li	$t1,6410
    beq	$a4,$t1,.L0d9f5b60
    # Line 1086
    ld	$v1,0($sp)
    # Line 1075
    li	$t2,6407
    beq	$a4,$t2,.L0d9f5ba0
    # Line 1095
    ld	$t3,0($sp)
    # Line 1075
    li	$t3,6408
    beq	$a4,$t3,.L0d9f5bf0
    li	$t8,6406
    beq	$a4,$t8,.L0d9f5c40
    # Line 1113
    ld	$at,0($sp)
    # Line 1075
    li	$t9,0x8049
    bne	$a4,$t9,.L0d9f56bc
    # Line 1122
    ld	$ra,0($sp)
    beqz	$ra,.L0d9f5dd0
    # Line 1123
    la	$at,__glTextureCTModulateI
    b	.L0d9f56bc
    sw	$at,260($a6)
.L0d9f59ac:
    # Line 1046
    beq	$a7,$a3,.L0d9f5b08
    # Line 1039
    sw	$a5,256($a6)
.L0d9f59b4:
    # Line 1051
    lwc1	$f10,3544($s0)
    b	.L0d9f567c
    swc1	$f10,240($a6)
.L0d9f59c0:
    # Line 1322
    bne	$a2,$v0,.L0d9f5724
    # Line 1339
    la	$v1,__glNMLFilter
    # Line 1340
    b	.L0d9f5724
    # Line 1339
    sw	$v1,268($a6)
.L0d9f59d0:
    # Line 1322
    bne	$a2,$a1,.L0d9f5724
    # Line 1333
    la	$a2,__glNMNFilter
    # Line 1334
    b	.L0d9f5724
    # Line 1333
    sw	$a2,268($a6)
.L0d9f59e0:
    # Line 1294
    sw	$t1,272($a6)
    # Line 1293
    la	$t0,__glLinearFilter1
    sw	$t0,276($a6)
    # Line 1292
    la	$a4,__glNearestFilter1
    b	.L0d9f56e0
    sw	$a4,280($a6)
.L0d9f59f8:
    b	.L0d9f56fc
    # Line 1311
    sw	$t2,264($a6)
.L0d9f5a00:
    # Line 1133
    li	$t3,6409
    beq	$a4,$t3,.L0d9f5b84
    li	$t8,6410
    beq	$a4,$t8,.L0d9f5bd4
    # Line 1139
    la	$v1,__glNop
    # Line 1133
    li	$t9,6407
    beq	$a4,$t9,.L0d9f5bc4
    # Line 1143
    ld	$at,0($sp)
    # Line 1133
    li	$ra,6408
    beq	$a4,$ra,.L0d9f5c1c
    # Line 1152
    ld	$t3,0($sp)
    # Line 1133
    li	$at,6406
    beq	$a4,$at,.L0d9f5c60
    # Line 1161
    la	$a1,__glNop
    # Line 1133
    li	$v0,0x8049
    bne	$a4,$v0,.L0d9f56bc
    # Line 1165
    la	$v1,__glNop
    # Line 1167
    b	.L0d9f56bc
    # Line 1165
    sw	$v1,260($a6)
.L0d9f5a4c:
    # Line 1062
    li	$a0,9984
    beq	$a2,$a0,.L0d9f5a5c
    li	$a1,9985
    bne	$a2,$a1,.L0d9f5674
.L0d9f5a5c:
    # Line 1065
    lwc1	$f11,_lit_40000000
    b	.L0d9f567c
    swc1	$f11,240($a6)
.L0d9f5a68:
    # Line 1299
    sw	$t1,272($a6)
    # Line 1298
    la	$t0,__glLinearFilter2
    sw	$t0,276($a6)
    # Line 1297
    la	$a4,__glNearestFilter2
    # Line 1300
    b	.L0d9f56e0
    # Line 1297
    sw	$a4,280($a6)
.L0d9f5a80:
    # Line 1315
    b	.L0d9f56fc
    # Line 1314
    sw	$t2,264($a6)
.L0d9f5a88:
    # Line 1171
    li	$t3,6409
    beq	$a4,$t3,.L0d9f5b90
    # Line 1173
    ld	$t1,0($sp)
    # Line 1171
    li	$t8,6410
    beq	$a4,$t8,.L0d9f5bdc
    li	$t9,6407
    beq	$a4,$t9,.L0d9f5c2c
    li	$ra,6408
    beq	$a4,$ra,.L0d9f5c50
    # Line 1200
    ld	$v1,0($sp)
    # Line 1171
    li	$at,6406
    beq	$a4,$at,.L0d9f5c68
    li	$v0,0x8049
    bne	$a4,$v0,.L0d9f56bc
    # Line 1218
    ld	$v1,0($sp)
    beqz	$v1,.L0d9f5df8
    # Line 1219
    la	$a0,__glTextureCTBlendI
    b	.L0d9f56bc
    sw	$a0,260($a6)
.L0d9f5ad4:
    # Line 1304
    sw	$zero,272($a6)
    # Line 1303
    la	$a4,__glLinearFilter3
    sw	$a4,276($a6)
    # Line 1302
    la	$a1,__glNearestFilter3
    # Line 1305
    b	.L0d9f56e0
    # Line 1302
    sw	$a1,280($a6)
.L0d9f5aec:
    # Line 1317
    la	$a7,__glNearestFilter
    # Line 1318
    b	.L0d9f56fc
    # Line 1317
    sw	$a7,264($a6)
.L0d9f5af8:
    # Line 1322
    bne	$a4,$a2,.L0d9f5728
    ld	$s1,40($sp)
    # Line 1325
    b	.L0d9f5724
    # Line 1324
    sw	$t0,268($a6)
.L0d9f5b08:
    # Line 1046
    li	$t1,9984
    beq	$a2,$t1,.L0d9f5b20
    # Line 1049
    lwc1	$f12,_lit_40000000
    # Line 1046
    li	$t2,9985
    bne	$a2,$t2,.L0d9f59b4
    # Line 1049
    lwc1	$f12,_lit_40000000
.L0d9f5b20:
    b	.L0d9f567c
    swc1	$f12,240($a6)
.L0d9f5b28:
    # Line 1232
    ld	$t3,0($sp)
    beqz	$t3,.L0d9f5c80
    # Line 1233
    la	$t8,__glTextureCTReplaceL
    b	.L0d9f56bc
    sw	$t8,260($a6)
.L0d9f5b3c:
    # Line 1077
    beqz	$t9,.L0d9f5c94
    # Line 1078
    la	$ra,__glTextureCTModulateL
    b	.L0d9f56bc
    sw	$ra,260($a6)
.L0d9f5b4c:
    # Line 1241
    ld	$at,0($sp)
    beqz	$at,.L0d9f5ca8
    # Line 1242
    la	$v0,__glTextureCTReplaceLA
    b	.L0d9f56bc
    sw	$v0,260($a6)
.L0d9f5b60:
    # Line 1086
    beqz	$v1,.L0d9f5cb8
    # Line 1087
    la	$a0,__glTextureCTModulateLA
    b	.L0d9f56bc
    sw	$a0,260($a6)
.L0d9f5b70:
    # Line 1250
    ld	$a1,0($sp)
    beqz	$a1,.L0d9f5cd8
    # Line 1251
    la	$a4,__glTextureCTReplaceRGB
    b	.L0d9f56bc
    sw	$a4,260($a6)
.L0d9f5b84:
    # Line 1135
    la	$t0,__glNop
    b	.L0d9f56bc
    sw	$t0,260($a6)
.L0d9f5b90:
    # Line 1173
    beqz	$t1,.L0d9f5ce8
    # Line 1174
    la	$t2,__glTextureCTBlendL
    b	.L0d9f56bc
    sw	$t2,260($a6)
.L0d9f5ba0:
    # Line 1095
    beqz	$t3,.L0d9f5cfc
    # Line 1096
    la	$t8,__glTextureCTModulateRGB
    b	.L0d9f56bc
    sw	$t8,260($a6)
.L0d9f5bb0:
    # Line 1259
    ld	$t9,0($sp)
    beqz	$t9,.L0d9f5d10
    # Line 1260
    la	$ra,__glTextureCTReplaceRGBA
    b	.L0d9f56bc
    sw	$ra,260($a6)
.L0d9f5bc4:
    # Line 1143
    beqz	$at,.L0d9f5d24
    # Line 1144
    la	$v0,__glTextureCTDecalRGB
    b	.L0d9f56bc
    sw	$v0,260($a6)
.L0d9f5bd4:
    # Line 1141
    b	.L0d9f56bc
    # Line 1139
    sw	$v1,260($a6)
.L0d9f5bdc:
    # Line 1182
    ld	$a0,0($sp)
    beqz	$a0,.L0d9f5d38
    # Line 1183
    la	$a1,__glTextureCTBlendLA
    b	.L0d9f56bc
    sw	$a1,260($a6)
.L0d9f5bf0:
    # Line 1104
    ld	$a4,0($sp)
    beqz	$a4,.L0d9f5d4c
    nop
    # Line 1105
    la	$t0,__glTextureCTModulateRGBA
    b	.L0d9f56bc
    sw	$t0,260($a6)
.L0d9f5c08:
    # Line 1268
    ld	$t1,0($sp)
    beqz	$t1,.L0d9f5d60
    # Line 1269
    la	$t2,__glTextureCTReplaceA
    b	.L0d9f56bc
    sw	$t2,260($a6)
.L0d9f5c1c:
    # Line 1152
    beqz	$t3,.L0d9f5d70
    # Line 1153
    la	$t8,__glTextureCTDecalRGBA
    b	.L0d9f56bc
    sw	$t8,260($a6)
.L0d9f5c2c:
    # Line 1191
    ld	$t9,0($sp)
    beqz	$t9,.L0d9f5d84
    # Line 1192
    la	$ra,__glTextureCTBlendRGB
    b	.L0d9f56bc
    sw	$ra,260($a6)
.L0d9f5c40:
    # Line 1113
    beqz	$at,.L0d9f5d98
    # Line 1114
    la	$v0,__glTextureCTModulateA
    b	.L0d9f56bc
    sw	$v0,260($a6)
.L0d9f5c50:
    # Line 1200
    beqz	$v1,.L0d9f5dbc
    # Line 1201
    la	$a0,__glTextureCTBlendRGBA
    b	.L0d9f56bc
    sw	$a0,260($a6)
.L0d9f5c60:
    # Line 1163
    b	.L0d9f56bc
    # Line 1161
    sw	$a1,260($a6)
.L0d9f5c68:
    # Line 1209
    ld	$a4,0($sp)
    beqz	$a4,.L0d9f5de4
    nop
    # Line 1210
    la	$t0,__glTextureCTBlendA
    b	.L0d9f56bc
    sw	$t0,260($a6)
.L0d9f5c80:
    # Line 1233
    beqz	$t0,.L0d9f5e0c
    # Line 1238
    la	$v0,__glTextureReplaceL
    # Line 1236
    la	$t1,__glTextureSBReplaceL
    b	.L0d9f56bc
    sw	$t1,260($a6)
.L0d9f5c94:
    # Line 1078
    beqz	$t0,.L0d9f5e14
    # Line 1083
    la	$v1,__glTextureModulateL
    # Line 1081
    la	$t2,__glTextureSBModulateL
    b	.L0d9f56bc
    sw	$t2,260($a6)
.L0d9f5ca8:
    # Line 1242
    beqz	$t0,.L0d9f5e1c
    # Line 1245
    la	$t3,__glTextureSBReplaceLA
    b	.L0d9f56bc
    sw	$t3,260($a6)
.L0d9f5cb8:
    # Line 1087
    beqz	$t0,.L0d9f5e28
    # Line 1092
    la	$a1,__glTextureModulateLA
    # Line 1090
    la	$t8,__glTextureSBModulateLA
    b	.L0d9f56bc
    sw	$t8,260($a6)
.L0d9f5ccc:
    ld	$s7,24($sp)
    b	.L0d9f5638
    # Line 1021
    move	$t0,$zero
.L0d9f5cd8:
    # Line 1251
    beqz	$t0,.L0d9f5e30
    # Line 1254
    nop	# was lw $t9, -26156($gp) # &__glTextureSBReplaceRGB
    b	.L0d9f56bc
    sw	$t9,260($a6)
.L0d9f5ce8:
    # Line 1174
    beqz	$t0,.L0d9f5e3c
    # Line 1179
    la	$t0,__glTextureBlendL
    # Line 1177
    la	$ra,__glTextureSBBlendL
    b	.L0d9f56bc
    sw	$ra,260($a6)
.L0d9f5cfc:
    # Line 1096
    beqz	$t0,.L0d9f5e44
    # Line 1101
    la	$t1,__glTextureModulateRGB
    # Line 1099
    la	$at,__glTextureSBModulateRGB
    b	.L0d9f56bc
    sw	$at,260($a6)
.L0d9f5d10:
    # Line 1260
    beqz	$t0,.L0d9f5e4c
    # Line 1265
    la	$t2,__glTextureReplaceRGBA
    # Line 1263
    la	$v0,__glTextureSBReplaceRGBA
    b	.L0d9f56bc
    sw	$v0,260($a6)
.L0d9f5d24:
    # Line 1144
    beqz	$t0,.L0d9f5e54
    # Line 1149
    la	$t3,__glTextureDecalRGB
    # Line 1147
    la	$v1,__glTextureSBDecalRGB
    b	.L0d9f56bc
    sw	$v1,260($a6)
.L0d9f5d38:
    # Line 1183
    beqz	$t0,.L0d9f5e5c
    # Line 1188
    la	$t8,__glTextureBlendLA
    # Line 1186
    la	$a0,__glTextureSBBlendLA
    b	.L0d9f56bc
    sw	$a0,260($a6)
.L0d9f5d4c:
    # Line 1105
    beqz	$t0,.L0d9f5e64
    # Line 1110
    nop	# was lw $t9, -26292($gp) # &__glTextureModulateRGBA
    # Line 1108
    la	$a1,__glTextureSBModulateRGBA
    b	.L0d9f56bc
    sw	$a1,260($a6)
.L0d9f5d60:
    # Line 1269
    beqz	$t0,.L0d9f5e6c
    # Line 1272
    la	$a4,__glTextureSBReplaceA
    b	.L0d9f56bc
    sw	$a4,260($a6)
.L0d9f5d70:
    # Line 1153
    beqz	$t0,.L0d9f5e78
    # Line 1158
    la	$at,__glTextureDecalRGBA
    # Line 1156
    la	$t0,__glTextureSBDecalRGBA
    b	.L0d9f56bc
    sw	$t0,260($a6)
.L0d9f5d84:
    # Line 1192
    beqz	$t0,.L0d9f5e80
    # Line 1197
    la	$v0,__glTextureBlendRGB
    # Line 1195
    la	$t1,__glTextureSBBlendRGB
    b	.L0d9f56bc
    sw	$t1,260($a6)
.L0d9f5d98:
    # Line 1114
    beqz	$t0,.L0d9f5e88
    # Line 1119
    la	$v1,__glTextureModulateA
    # Line 1117
    la	$t2,__glTextureSBModulateA
    b	.L0d9f56bc
    sw	$t2,260($a6)
.L0d9f5dac:
    # Line 1278
    beqz	$t0,.L0d9f5e9c
    # Line 1281
    la	$t3,__glTextureSBReplaceI
    b	.L0d9f56bc
    sw	$t3,260($a6)
.L0d9f5dbc:
    # Line 1201
    beqz	$t0,.L0d9f5ea8
    # Line 1206
    la	$a4,__glTextureBlendRGBA
    # Line 1204
    la	$t8,__glTextureSBBlendRGBA
    b	.L0d9f56bc
    sw	$t8,260($a6)
.L0d9f5dd0:
    # Line 1123
    beqz	$t0,.L0d9f5eb0
    # Line 1128
    la	$t0,__glTextureModulateI
    # Line 1126
    # lw $t9, -26200($gp) # &__glTextureSBModulateI
    b	.L0d9f56bc
    sw	$t9,260($a6)
.L0d9f5de4:
    # Line 1210
    beqz	$t0,.L0d9f5ec0
    # Line 1215
    la	$t2,__glTextureBlendA
    # Line 1213
    la	$ra,__glTextureSBBlendA
    b	.L0d9f56bc
    sw	$ra,260($a6)
.L0d9f5df8:
    # Line 1219
    beqz	$t0,.L0d9f5ec8
    # Line 1224
    la	$t3,__glTextureBlendI
    # Line 1222
    la	$at,__glTextureSBBlendI
    b	.L0d9f56bc
    sw	$at,260($a6)
.L0d9f5e0c:
    b	.L0d9f56bc
    # Line 1238
    sw	$v0,260($a6)
.L0d9f5e14:
    b	.L0d9f56bc
    # Line 1083
    sw	$v1,260($a6)
.L0d9f5e1c:
    # Line 1247
    la	$a0,__glTextureReplaceLA
    b	.L0d9f56bc
    sw	$a0,260($a6)
.L0d9f5e28:
    b	.L0d9f56bc
    # Line 1092
    sw	$a1,260($a6)
.L0d9f5e30:
    # Line 1256
    la	$a4,__glTextureReplaceRGB
    b	.L0d9f56bc
    sw	$a4,260($a6)
.L0d9f5e3c:
    b	.L0d9f56bc
    # Line 1179
    sw	$t0,260($a6)
.L0d9f5e44:
    b	.L0d9f56bc
    # Line 1101
    sw	$t1,260($a6)
.L0d9f5e4c:
    b	.L0d9f56bc
    # Line 1265
    sw	$t2,260($a6)
.L0d9f5e54:
    b	.L0d9f56bc
    # Line 1149
    sw	$t3,260($a6)
.L0d9f5e5c:
    b	.L0d9f56bc
    # Line 1188
    sw	$t8,260($a6)
.L0d9f5e64:
    b	.L0d9f56bc
    # Line 1110
    sw	$t9,260($a6)
.L0d9f5e6c:
    # Line 1274
    la	$ra,__glTextureReplaceA
    b	.L0d9f56bc
    sw	$ra,260($a6)
.L0d9f5e78:
    b	.L0d9f56bc
    # Line 1158
    sw	$at,260($a6)
.L0d9f5e80:
    b	.L0d9f56bc
    # Line 1197
    sw	$v0,260($a6)
.L0d9f5e88:
    b	.L0d9f56bc
    # Line 1119
    sw	$v1,260($a6)
.L0d9f5e90:
    # Line 946
    la	$a0,__glCalcEyeLinear
    b	.L0d9f5430
    sw	$a0,12052($s0)
.L0d9f5e9c:
    # Line 1283
    la	$a1,__glTextureReplaceI
    b	.L0d9f56bc
    sw	$a1,260($a6)
.L0d9f5ea8:
    b	.L0d9f56bc
    # Line 1206
    sw	$a4,260($a6)
.L0d9f5eb0:
    b	.L0d9f56bc
    # Line 1128
    sw	$t0,260($a6)
.L0d9f5eb8:
    # Line 950
    b	.L0d9f5430
    # Line 949
    sw	$t1,12052($s0)
.L0d9f5ec0:
    b	.L0d9f56bc
    # Line 1215
    sw	$t2,260($a6)
.L0d9f5ec8:
    b	.L0d9f56bc
    # Line 1224
    sw	$t3,260($a6)
.end __glGenericPickTextureProcs

# Function: __glGenericPickFogProcs
# Declared: Line 1353 (Source lines: 1354-1371)
# Address: 0x0d9f5ed0 - 0x0d9f5f44 (Size: 116 bytes, Frame: 0)
.globl __glGenericPickFogProcs
.ent __glGenericPickFogProcs
__glGenericPickFogProcs:
    # Line 1354
    lw	$v1,1792($a0)
    # Line 1357
    li	$a4,9729
    # Line 1354
    lui	$v0,0xa
    andi	$v1,$v1,0x20
    li	$a2,4354
    addiu	$v0,$v0,-20216
    beqz	$v1,.L0d9f5f34
    addu	$at,$t9,$v0
    lw	$a1,1912($a0)
    # Line 1360
    la	$t0,__glFogVertexLinear
    # Line 1364
    la	$a6,__glFogFragmentSlow
    # Line 1354
    beq	$a1,$a2,.L0d9f5f2c
    # Line 1362
    la	$a5,__glFogVertex
    # Line 1357
    lw	$a3,1588($a0)
    beq	$a3,$a4,.L0d9f5f24
    nop
    # Line 1362
    sw	$a5,12592($a0)
.L0d9f5f14:
    # Line 1364
    sw	$a6,12584($a0)
    # Line 1365
    la	$a7,__glFogColorSlow
    # Line 1371
    jr	$ra
    # Line 1365
    sw	$a7,12588($a0)
.L0d9f5f24:
    # Line 1360
    b	.L0d9f5f14
    sw	$t0,12592($a0)
.L0d9f5f2c:
    # Line 1357
    b	.L0d9f5f14
    sw	$zero,12592($a0)
.L0d9f5f34:
    # Line 1369
    sw	$zero,12588($a0)
    # Line 1368
    sw	$zero,12584($a0)
    # Line 1371
    jr	$ra
    # Line 1367
    sw	$zero,12592($a0)
.end __glGenericPickFogProcs

# Function: __glGenericPickBufferProcs
# Declared: Line 1373 (Source lines: 1374-1408)
# Address: 0x0d9f5f50 - 0x0d9f5fd8 (Size: 136 bytes, Frame: 0)
.globl __glGenericPickBufferProcs
.ent __glGenericPickBufferProcs
__glGenericPickBufferProcs:
    # Line 1374
    lui	$a5,0xa
    # Line 1378
    lw	$a4,1888($a0)
    # Line 1374
    addiu	$a5,$a5,-20344
    addu	$at,$t9,$a5
    # Line 1378
    addiu	$a4,$a4,-1028
    la	$a3,.rodata
    sltiu	$a5,$a4,9
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,4176
    sb	$zero,30708($a0)
    beqz	$a5,.L0d9f5f9c
    addu	$a3,$a3,$a4
    # Line 1388
    li	$t3,1
    # Line 1378
    lw	$a6,0($a3)
    jr	$a6
    nop
.L0d9f5f90:
    # Line 1394
    lw	$a7,30716($a0)
    # Line 1408
    jr	$ra
    # Line 1394
    sw	$a7,11816($a0)
.L0d9f5f9c:
    # Line 1408
    jr	$ra
    nop
.L0d9f5fa4:
    # Line 1383
    lw	$t0,30712($a0)
    # Line 1408
    jr	$ra
    # Line 1383
    sw	$t0,11816($a0)
.L0d9f5fb0:
    # Line 1386
    lbu	$t1,3222($a0)
    beqz	$t1,.L0d9f5fcc
    nop
    # Line 1388
    sb	$t3,30708($a0)
    # Line 1387
    lw	$t2,30716($a0)
    # Line 1408
    jr	$ra
    # Line 1387
    sw	$t2,11816($a0)
.L0d9f5fcc:
    # Line 1390
    lw	$t8,30712($a0)
    # Line 1408
    jr	$ra
    # Line 1390
    sw	$t8,11816($a0)
.end __glGenericPickBufferProcs

# Function: __glGenericPickPixelProcs
# Declared: Line 1410 (Source lines: 1411-1624)
# Address: 0x0d9f5fe0 - 0x0d9f662c (Size: 1612 bytes, Frame: 0)
.globl __glGenericPickPixelProcs
.ent __glGenericPickPixelProcs
__glGenericPickPixelProcs:
    # Line 1411
    lui	$v0,0xa
    # Line 1427
    lwc1	$f0,712($a0)
    # Line 1411
    addiu	$v0,$v0,-20488
    addu	$at,$t9,$v0
    # Line 1427
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    bc1f	.L0d9f6090
    # Line 1417
    lw	$a4,1792($a0)
    # Line 1427
    lwc1	$f1,716($a0)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f4
    bc1f .L0d9f6094
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f2,720($a0)
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f4
    bc1f .L0d9f6094
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f3,724($a0)
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f4
    bc1f .L0d9f6094
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f5,728($a0)
    dmtc1	$zero,$f4
    cvt.d.s	$f5,$f5
    c.eq.d $f5,$f4
    bc1f .L0d9f6094
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f6,732($a0)
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f4
    bc1f .L0d9f6090
    lwc1	$f7,736($a0)
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f4
    bc1f .L0d9f6094
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f8,740($a0)
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f4
    bc1t .L0d9f65d4
    # Line 1437
    move	$a5,$zero
.L0d9f6090:
    # Line 1435
    li	$v1,1
.L0d9f6094:
    sb	$v1,30701($a0)
    move	$a5,$v1
.L0d9f609c:
    # Line 1441
    lui	$a3,0xe00
    and	$a3,$a4,$a3
    beqz	$a3,.L0d9f6568
    lui	$a6,0x200
    beq	$a3,$a6,.L0d9f60d0
    lui	$a7,0x800
    beq	$a3,$a7,.L0d9f6360
    lui	$t0,0xa00
    beq	$a3,$t0,.L0d9f6364
    # Line 1452
    addiu	$a3,$a0,936
    # Line 1455
    addiu	$a3,$a0,852
    b	.L0d9f60d8
    sw	$a3,764($a0)
.L0d9f60d0:
    # Line 1448
    addiu	$a3,$a0,768
    sw	$a3,764($a0)
.L0d9f60d8:
    # Line 1462
    lw	$t1,64($a3)
    beqz	$t1,.L0d9f6374
    # Line 1457
    la	$a6,__glDummyFilter
    # Line 1462
    lw	$t2,68($a3)
    beqz	$t2,.L0d9f6374
    nop
.L0d9f60f0:
    # Line 1468
    lw	$t3,0($a3)
    beqz	$t3,.L0d9f6470
    dsll32	$a3,$a4,0x3
.L0d9f60fc:
    li	$a7,1
.L0d9f6100:
    # Line 1487
    lw	$a3,1236($a0)
    li	$t8,1028
    beq	$a3,$t8,.L0d9f658c
    li	$t9,1029
    beq	$a3,$t9,.L0d9f6598
    nop
.L0d9f6118:
    # Line 1507
    lbu	$a6,28272($a0)
    beqz	$a6,.L0d9f6380
    # Line 1509
    la	$v0,__glSlowDrawPixelsStore
.L0d9f6124:
    sw	$v0,12636($a0)
.L0d9f6128:
    # Line 1516
    lbu	$a3,760($a0)
    # Line 1517
    beqz	$a3,.L0d9f6398
    # Line 1520
    li	$v1,1
.L0d9f6134:
    sb	$v1,30581($a0)
    # Line 1519
    sb	$zero,30672($a0)
    # Line 1518
    sb	$zero,30664($a0)
.L0d9f6140:
    # Line 1524
    lbu	$a1,761($a0)
    beqz	$a1,.L0d9f63c4
    # Line 1525
    li	$a2,1
.L0d9f614c:
    sb	$a2,30583($a0)
.L0d9f6150:
    # Line 1529
    lwc1	$f9,656($a0)
    lwc1	$f8,3544($a0)
    c.eq.s	$f9,$f8
    bc1f	.L0d9f6178
    # Line 1530
    li	$a5,1
    # Line 1529
    lwc1	$f10,676($a0)
    mtc1	$zero,$f11
    c.eq.s $f10,$f11
    bc1t .L0d9f636c
    # Line 1530
    li	$a5,1
.L0d9f6178:
    sb	$a5,30582($a0)
.L0d9f617c:
    # Line 1534
    beqz	$a3,.L0d9f63e4
    nop
.L0d9f6184:
    # Line 1538
    sb	$zero,30644($a0)
    # Line 1537
    li	$t0,1
    sb	$t0,30580($a0)
    move	$a5,$t0
.L0d9f6194:
    # Line 1540
    beqz	$a5,.L0d9f6574
    lwc1	$f9,30848($a0)
    # Line 1548
    lwc1	$f4,652($a0)
    lwc1	$f10,672($a0)
    # Line 1547
    lwc1	$f5,668($a0)
    # Line 1546
    lwc1	$f7,664($a0)
    # Line 1545
    lwc1	$f6,660($a0)
    # Line 1548
    beqz	$a3,.L0d9f6500
    add.s	$f4,$f4,$f10
    # Line 1553
    lw	$a5,1096($a0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f8,3540($a0)
    madd.s	$f11,$f8,$f11,$f6
    trunc.w.s	$f11,$f11
    mfc1	$a3,$f11
    bltz	$a3,.L0d9f65a4
    slt	$t0,$a5,$a3
    movn	$a3,$a5,$t0
.L0d9f61e4:
    # Line 1560
    lw	$a5,1108($a0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f12
    cvt.s.w	$f12,$f12
    madd.s	$f12,$f8,$f12,$f7
    trunc.w.s	$f12,$f12
    # Line 1556
    lw	$t1,1104($a0)
    sll	$t2,$a3,0x2
    # Line 1560
    mfc1	$a3,$f12
    # Line 1556
    addu	$t1,$t1,$t2
    # Line 1560
    bltz	$a3,.L0d9f65ac
    # Line 1556
    lwc1	$f6,0($t1)
    # Line 1560
    slt	$t0,$a5,$a3
    movn	$a3,$a5,$t0
.L0d9f621c:
    # Line 1567
    lw	$a5,1120($a0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f13
    cvt.s.w	$f13,$f13
    madd.s	$f13,$f8,$f13,$f5
    trunc.w.s	$f13,$f13
    # Line 1563
    lw	$t1,1116($a0)
    sll	$t2,$a3,0x2
    # Line 1567
    mfc1	$a3,$f13
    # Line 1563
    addu	$t1,$t1,$t2
    # Line 1567
    bltz	$a3,.L0d9f65b4
    # Line 1563
    lwc1	$f7,0($t1)
    # Line 1567
    slt	$t0,$a5,$a3
    movn	$a3,$a5,$t0
.L0d9f6254:
    # Line 1574
    lw	$a5,1132($a0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f14
    cvt.s.w	$f14,$f14
    madd.s	$f14,$f8,$f14,$f4
    trunc.w.s	$f14,$f14
    # Line 1570
    lw	$t1,1128($a0)
    sll	$t2,$a3,0x2
    # Line 1574
    mfc1	$a3,$f14
    # Line 1570
    addu	$t1,$t1,$t2
    # Line 1574
    bltz	$a3,.L0d9f65bc
    # Line 1570
    lwc1	$f5,0($t1)
    # Line 1574
    slt	$t0,$a5,$a3
    movn	$a3,$a5,$t0
.L0d9f628c:
    # Line 1577
    lw	$t1,1140($a0)
    sll	$t2,$a3,0x2
    addu	$t1,$t1,$t2
    lwc1	$f4,0($t1)
.L0d9f629c:
    # Line 1590
    lwc1	$f17,30816($a0)
    # Line 1589
    lwc1	$f16,30812($a0)
    # Line 1591
    mul.s	$f18,$f9,$f4
    # Line 1588
    lwc1	$f15,30808($a0)
    # Line 1591
    swc1	$f18,30600($a0)
    # Line 1590
    mul.s	$f17,$f17,$f5
    swc1	$f17,30596($a0)
    # Line 1589
    mul.s	$f16,$f16,$f7
    swc1	$f16,30592($a0)
    # Line 1588
    mul.s	$f15,$f15,$f6
    swc1	$f15,30588($a0)
.L0d9f62c8:
    # Line 1599
    andi	$t3,$a4,0x8011
    bnez	$t3,.L0d9f6310
    nop
    lw	$a3,1888($a0)
    beqz	$a3,.L0d9f6310
    li	$t8,1032
    beq	$a3,$t8,.L0d9f6310
    andi	$t9,$a4,0x8
    beqz	$t9,.L0d9f6310
    andi	$v0,$a4,0x2
    bnez	$v0,.L0d9f6310
    nop
    bnez	$a6,.L0d9f6310
    andi	$v1,$a4,0x20
    bnez	$v1,.L0d9f6310
    andi	$a1,$a7,0xff
    beqz	$a1,.L0d9f65dc
    # Line 1611
    li	$v1,1
.L0d9f6310:
    # Line 1609
    sb	$zero,30584($a0)
    # Line 1614
    la	$a2,__glSlowPickDrawPixels
    # Line 1615
    la	$a3,__glSlowPickReadPixels
    # Line 1616
    la	$a4,__glSlowPickCopyPixels
    # Line 1618
    la	$a5,__glSlowPickConvolutionFilter
    # Line 1619
    la	$a6,__glSlowPickSeparableFilter
    # Line 1620
    la	$a7,__glSlowPickGetConvolutionFilter
    # Line 1621
    la	$t0,__glSlowPickGetSeparableFilter
    # Line 1622
    la	$t1,__glSlowPickCopyConvolutionFilter1D
    # Line 1623
    la	$t2,__glSlowPickCopyConvolutionFilter2D
    sw	$t2,12660($a0)
    # Line 1622
    sw	$t1,12656($a0)
    # Line 1621
    sw	$t0,12652($a0)
    # Line 1620
    sw	$a7,12648($a0)
    # Line 1619
    sw	$a6,12644($a0)
    # Line 1618
    sw	$a5,12640($a0)
    # Line 1616
    sw	$a4,12620($a0)
    # Line 1615
    sw	$a3,12624($a0)
    # Line 1624
    jr	$ra
    # Line 1614
    sw	$a2,12616($a0)
.L0d9f6360:
    # Line 1452
    addiu	$a3,$a0,936
.L0d9f6364:
    # Line 1453
    b	.L0d9f60d8
    # Line 1452
    sw	$a3,764($a0)
.L0d9f636c:
    b	.L0d9f617c
    # Line 1532
    sb	$zero,30582($a0)
.L0d9f6374:
    # Line 1464
    move	$a3,$a6
    b	.L0d9f60f0
    sw	$a6,764($a0)
.L0d9f6380:
    # Line 1507
    andi	$t3,$a4,0x20
    bnez	$t3,.L0d9f6124
    # Line 1509
    la	$v0,__glSlowDrawPixelsStore
    # Line 1511
    lw	$t8,12664($a0)
    b	.L0d9f6128
    sw	$t8,12636($a0)
.L0d9f6398:
    # Line 1517
    lbu	$t9,3220($a0)
    bnez	$t9,.L0d9f6134
    # Line 1520
    li	$v1,1
    # Line 1517
    lw	$v0,752($a0)
    bnez	$v0,.L0d9f6134
    # Line 1520
    li	$v1,1
    # Line 1517
    lw	$v1,756($a0)
    bnez	$v1,.L0d9f6134
    # Line 1520
    li	$v1,1
    b	.L0d9f6140
    # Line 1522
    sb	$zero,30581($a0)
.L0d9f63c4:
    # Line 1524
    lw	$a1,752($a0)
    bnez	$a1,.L0d9f614c
    # Line 1525
    li	$a2,1
    # Line 1524
    lw	$a2,756($a0)
    bnez	$a2,.L0d9f614c
    # Line 1525
    li	$a2,1
    b	.L0d9f6150
    # Line 1527
    sb	$zero,30583($a0)
.L0d9f63e4:
    # Line 1534
    lwc1	$f19,660($a0)
    mtc1	$zero,$f4
    c.eq.s $f19,$f4
    bc1f .L0d9f6184
    nop
    lwc1	$f21,664($a0)
    c.eq.s $f21,$f4
    bc1f .L0d9f6184
    nop
    lwc1	$f23,668($a0)
    c.eq.s $f23,$f4
    bc1f .L0d9f6184
    nop
    lwc1	$f25,672($a0)
    c.eq.s $f25,$f4
    bc1f .L0d9f6184
    nop
    lwc1	$f27,640($a0)
    c.eq.s $f27,$f8
    bc1f .L0d9f6184
    nop
    lwc1	$f29,644($a0)
    c.eq.s $f29,$f8
    bc1f .L0d9f6184
    nop
    lwc1	$f31,648($a0)
    c.eq.s	$f31,$f8
    bc1f	.L0d9f6184
    nop
    lwc1	$f0,652($a0)
    c.eq.s $f0,$f8
    bc1f .L0d9f6184
    # Line 1540
    move	$a5,$zero
    b	.L0d9f6194
    sb	$zero,30580($a0)
.L0d9f6470:
    # Line 1468
    bgez	$a3,.L0d9f6490
    dsll32	$t0,$a4,0x2
    lw	$a6,1248($a0)
    bnez	$a6,.L0d9f6100
    li	$a7,1
    lbu	$a7,1280($a0)
    bnez	$a7,.L0d9f60fc
    dsll32	$t0,$a4,0x2
.L0d9f6490:
    bltz	$t0,.L0d9f6100
    li	$a7,1
    lw	$t1,30692($a0)
    li	$t2,0x8421
    bne	$t1,$t2,.L0d9f60fc
    li	$t3,1
    beq	$a5,$t3,.L0d9f6100
    li	$a7,1
    lw	$a3,1796($a0)
    andi	$t8,$a3,0x1
    beqz	$t8,.L0d9f64cc
    andi	$v0,$a3,0x2
    lw	$t9,5444($a0)
    bnez	$t9,.L0d9f60fc
    andi	$v0,$a3,0x2
.L0d9f64cc:
    beqz	$v0,.L0d9f64e4
    andi	$a1,$a3,0x4
    lw	$v1,5604($a0)
    bnez	$v1,.L0d9f6100
    li	$a7,1
    andi	$a1,$a3,0x4
.L0d9f64e4:
    beqz	$a1,.L0d9f64f8
    nop
    lw	$a2,5764($a0)
    bnez	$a2,.L0d9f6100
    li	$a7,1
.L0d9f64f8:
    b	.L0d9f6100
    move	$a7,$zero
.L0d9f6500:
    # Line 1577
    c.lt.s $f8,$f6
    bc1f .L0d9f6514
    # Line 1580
    mtc1	$zero,$f1
    # Line 1579
    b	.L0d9f651c
    mov.s	$f6,$f8
.L0d9f6514:
    # Line 1580
    c.lt.s $f6,$f1
    movt.s	$f6,$f1,$fcc3
.L0d9f651c:
    c.lt.s $f8,$f7
    bc1f .L0d9f6530
    # Line 1582
    mtc1	$zero,$f2
    # Line 1581
    b	.L0d9f6538
    mov.s	$f7,$f8
.L0d9f6530:
    # Line 1582
    c.lt.s $f7,$f2
    movt.s	$f7,$f2,$fcc5
.L0d9f6538:
    c.lt.s $f8,$f5
    bc1f .L0d9f654c
    # Line 1584
    mtc1	$zero,$f3
    # Line 1583
    b	.L0d9f6554
    mov.s	$f5,$f8
.L0d9f654c:
    # Line 1584
    c.lt.s $f5,$f3
    movt.s	$f5,$f3,$fcc7
.L0d9f6554:
    c.lt.s	$f8,$f4
    bc1f	.L0d9f65c4
    nop
    # Line 1585
    b	.L0d9f629c
    mov.s	$f4,$f8
.L0d9f6568:
    # Line 1445
    la	$a3,__glDummyFilter
    b	.L0d9f60d8
    sw	$a3,764($a0)
.L0d9f6574:
    # Line 1593
    mtc1	$zero,$f4
    # Line 1596
    swc1	$f9,30600($a0)
    # Line 1595
    swc1	$f4,30596($a0)
    # Line 1594
    swc1	$f4,30592($a0)
    b	.L0d9f62c8
    # Line 1593
    swc1	$f4,30588($a0)
.L0d9f658c:
    # Line 1489
    lw	$a3,30712($a0)
    b	.L0d9f6118
    sw	$a3,11820($a0)
.L0d9f6598:
    # Line 1492
    lw	$a5,30716($a0)
    # Line 1493
    b	.L0d9f6118
    # Line 1492
    sw	$a5,11820($a0)
.L0d9f65a4:
    # Line 1553
    b	.L0d9f61e4
    move	$a3,$zero
.L0d9f65ac:
    # Line 1560
    b	.L0d9f621c
    move	$a3,$zero
.L0d9f65b4:
    # Line 1567
    b	.L0d9f6254
    move	$a3,$zero
.L0d9f65bc:
    # Line 1574
    b	.L0d9f628c
    move	$a3,$zero
.L0d9f65c4:
    # Line 1586
    mtc1	$zero,$f8
    c.lt.s $f4,$f8
    b	.L0d9f629c
    movt.s	$f4,$f8,$fcc1
.L0d9f65d4:
    b	.L0d9f609c
    # Line 1437
    sb	$zero,30701($a0)
.L0d9f65dc:
    # Line 1611
    sb	$v1,30584($a0)
    # Line 1614
    la	$a6,__glSlowPickDrawPixels
    # Line 1615
    la	$a7,__glSlowPickReadPixels
    # Line 1616
    la	$t0,__glSlowPickCopyPixels
    # Line 1618
    la	$t1,__glSlowPickConvolutionFilter
    # Line 1619
    la	$t2,__glSlowPickSeparableFilter
    # Line 1620
    la	$t3,__glSlowPickGetConvolutionFilter
    # Line 1621
    la	$t8,__glSlowPickGetSeparableFilter
    # Line 1622
    # lw $t9, -29516($gp) # &__glSlowPickCopyConvolutionFilter1D
    # Line 1623
    la	$v0,__glSlowPickCopyConvolutionFilter2D
    sw	$v0,12660($a0)
    # Line 1622
    sw	$t9,12656($a0)
    # Line 1621
    sw	$t8,12652($a0)
    # Line 1620
    sw	$t3,12648($a0)
    # Line 1619
    sw	$t2,12644($a0)
    # Line 1618
    sw	$t1,12640($a0)
    # Line 1616
    sw	$t0,12620($a0)
    # Line 1615
    sw	$a7,12624($a0)
    # Line 1624
    jr	$ra
    # Line 1614
    sw	$a6,12616($a0)
.end __glGenericPickPixelProcs

# Function: __glGenericPickTransformProcs
# Declared: Line 1626 (Source lines: 1627-1650)
# Address: 0x0d9f6630 - 0x0d9f66d8 (Size: 168 bytes, Frame: 0)
.globl __glGenericPickTransformProcs
.ent __glGenericPickTransformProcs
__glGenericPickTransformProcs:
    # Line 1628
    li	$a2,6144
    lw	$a3,1744($a0)
    li	$v1,5888
    # Line 1627
    lui	$v0,0xa
    # Line 1628
    li	$a1,5890
    # Line 1627
    addiu	$v0,$v0,-22104
    # Line 1628
    beq	$a3,$v1,.L0d9f668c
    # Line 1627
    addu	$at,$t9,$v0
    # Line 1628
    li	$v1,5889
    beq	$a3,$v1,.L0d9f66a8
    # Line 1635
    la	$t1,__glPushProjectionMatrix
    # Line 1628
    beq	$a3,$a1,.L0d9f66c0
    # Line 1640
    la	$t8,__glPushTextureMatrix
    # Line 1628
    beq	$a3,$a2,.L0d9f6674
    # Line 1645
    la	$a3,__glPushColorMatrix
    # Line 1650
    jr	$ra
    nop
.L0d9f6674:
    # Line 1646
    la	$a4,__glPopColorMatrix
    # Line 1647
    la	$a5,__glLoadIdentityColorMatrix
    sw	$a5,11952($a0)
    # Line 1646
    sw	$a4,11948($a0)
    # Line 1650
    jr	$ra
    # Line 1645
    sw	$a3,11944($a0)
.L0d9f668c:
    # Line 1630
    la	$a6,__glPushModelViewMatrix
    # Line 1631
    la	$a7,__glPopModelViewMatrix
    # Line 1632
    la	$t0,__glLoadIdentityModelViewMatrix
    sw	$t0,11952($a0)
    # Line 1631
    sw	$a7,11948($a0)
    # Line 1650
    jr	$ra
    # Line 1630
    sw	$a6,11944($a0)
.L0d9f66a8:
    # Line 1636
    la	$t2,__glPopProjectionMatrix
    # Line 1637
    la	$t3,__glLoadIdentityProjectionMatrix
    sw	$t3,11952($a0)
    # Line 1636
    sw	$t2,11948($a0)
    # Line 1650
    jr	$ra
    # Line 1635
    sw	$t1,11944($a0)
.L0d9f66c0:
    # Line 1641
    # lw $t9, -25524($gp) # &__glPopTextureMatrix
    # Line 1642
    la	$v0,__glLoadIdentityTextureMatrix
    sw	$v0,11952($a0)
    # Line 1641
    sw	$t9,11948($a0)
    # Line 1650
    jr	$ra
    # Line 1640
    sw	$t8,11944($a0)
.end __glGenericPickTransformProcs

# Function: __glGenericPickDepthProcs
# Declared: Line 1655 (Source lines: 1656-1722)
# Address: 0x0d9f66e0 - 0x0d9f6820 (Size: 320 bytes, Frame: 32)
.globl __glGenericPickDepthProcs
.ent __glGenericPickDepthProcs
__glGenericPickDepthProcs:
    # Line 1674
    sb	$zero,31388($a0)
    # Line 1656
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    # Line 1657
    lw	$a1,31364($a0)
    # Line 1656
    move	$s1,$a0
    lui	$t8,0xa
    sd	$s0,16($sp)
    addiu	$t8,$t8,-22280
    # Line 1674
    lui	$a2,0x8000
    # Line 1664
    lw	$s0,1632($a0)
    sd	$gp,8($sp)
    # Line 1656
    addu	$gp,$t9,$t8
    # Line 1674
    sltu	$a1,$a1,$a2
    # Line 1664
    lbu	$at,1636($a0)
    # Line 1674
    lui	$t9,0x100
    # Line 1667
    addiu	$v1,$s0,-504
    # Line 1658
    lw	$v0,31384($a0)
    # Line 1664
    addiu	$s0,$s0,-512
    # Line 1674
    beqz	$a1,.L0d9f6744
    movz	$s0,$v1,$at
    bne	$v0,$t9,.L0d9f6758
    # Line 1678
    li	$at,1
    sb	$at,31388($a0)
    b	.L0d9f6758
    # Line 1677
    addiu	$s0,$s0,16
.L0d9f6744:
    # Line 1678
    lui	$v1,0xff00
    bne	$v0,$v1,.L0d9f6758
    # Line 1683
    li	$a0,1
    sb	$a0,31388($s1)
    # Line 1682
    addiu	$s0,$s0,16
.L0d9f6758:
    # Line 1683
    lbu	$a1,3225($s1)
    beqz	$a1,.L0d9f6780
    nop
    # Line 1689
    lw	$t9,31396($s1)
    move	$a0,$s1
    move	$a2,$s0
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a1,$s1,31284
    ld	$ra,24($sp)
.L0d9f6780:
    # Line 1695
    lw	$a2,12460($s1)
    # Line 1692
    la	$a5,__glCDTPixel
    # Line 1695
    la	$a3,__glPDepthTestPixel
    # Line 1692
    sll	$v0,$s0,0x2
    # Line 1694
    la	$a4,__glSDepthTestPixel
    # Line 1692
    addu	$a5,$v0,$a5
    lw	$a5,0($a5)
    # Line 1694
    addu	$a4,$v0,$a4
    # Line 1692
    sw	$a5,12080($s1)
    # Line 1694
    lw	$a4,0($a4)
    # Line 1695
    addu	$a3,$v0,$a3
    # Line 1694
    sw	$a4,12292($s1)
    # Line 1695
    lw	$a3,0($a3)
    beqz	$a2,.L0d9f67e8
    sw	$a3,12456($s1)
    la	$a0,__glDTLine
    addu	$a0,$v0,$a0
    lw	$a0,0($a0)
    # Line 1722
    ld	$s1,0($sp)
    # Line 1695
    beqz	$a0,.L0d9f6800
    # Line 1722
    move	$v0,$s0
    # Line 1699
    sw	$a0,0($a2)
    # Line 1722
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f67e8:
    ld	$s1,0($sp)
    ld	$gp,8($sp)
    move	$v0,$s0
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f6800:
    # Line 1717
    la	$a1,__glDepthTestLine_asm
    # Line 1722
    ld	$gp,8($sp)
    move	$v0,$s0
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1717
    sw	$a1,0($a2)
.end __glGenericPickDepthProcs

# Function: __glGenericValidate
# Declared: Line 1726 (Source lines: 1727-1729)
# Address: 0x0d9f6820 - 0x0d9f6854 (Size: 52 bytes, Frame: 16)
.globl __glGenericValidate
.ent __glGenericValidate
__glGenericValidate:
    # Line 1727
    addiu	$sp,$sp,-16
    lui	$at,0xa
    sd	$gp,8($sp)
    addiu	$at,$at,-22600
    addu	$gp,$t9,$at
    # Line 1728
    lw	$t9,11924($a0)
    # Line 1727
    sd	$ra,0($sp)
    # Line 1728
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 1729
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glGenericValidate

# Function: __glGenericModeFlags
# Declared: Line 1731 (Source lines: 1733-1830)
# Address: 0x0d9f6860 - 0x0d9f6a90 (Size: 560 bytes, Frame: 0)
.globl __glGenericModeFlags
.ent __glGenericModeFlags
__glGenericModeFlags:
    # Line 1733
    lbu	$at,3220($a0)
    lw	$v0,1792($a0)
    beqz	$at,.L0d9f6a58
    andi	$a4,$v0,0x2
    lbu	$a5,28272($a0)
    li	$a6,1
    li	$a3,9
    # Line 1748
    lbu	$a2,1884($a0)
    movz	$a3,$a6,$a5
    lbu	$t1,1887($a0)
    # Line 1743
    ori	$a1,$a3,0x100
    # Line 1748
    lbu	$t0,1886($a0)
    # Line 1743
    andi	$v1,$v0,0x1
    movz	$a1,$a3,$a4
    # Line 1748
    lbu	$a7,1885($a0)
    # Line 1746
    ori	$a3,$a1,0x200
    # Line 1748
    beqz	$a2,.L0d9f68c0
    movz	$a3,$a1,$v1
    beqz	$a7,.L0d9f68c0
    nop
    beqz	$t0,.L0d9f68c0
    nop
    bnez	$t1,.L0d9f68c8
    # Line 1772
    lui	$a1,0x4
.L0d9f68c0:
    # Line 1752
    ori	$a3,$a3,0x800
.L0d9f68c4:
    # Line 1772
    lui	$a1,0x4
.L0d9f68c8:
    # Line 1764
    lui	$t3,0x2
    # Line 1766
    andi	$t8,$v0,0x10
    # Line 1759
    lw	$t2,1392($a0)
    # Line 1764
    ori	$t3,$t3,0x2
    # Line 1759
    li	$t9,7425
    # Line 1764
    or	$t3,$a3,$t3
    xor	$t2,$t2,$t9
    # Line 1766
    beqz	$t8,.L0d9f6934
    movz	$a3,$t3,$t2
    lbu	$at,3225($a0)
    beqz	$at,.L0d9f6938
    # Line 1776
    lui	$t2,0x1
    # Line 1769
    dsll32	$v1,$v0,0x7
    bgez	$v1,.L0d9f6934
    # Line 1768
    ori	$a3,$a3,0x4004
    # Line 1769
    dmtc1	$zero,$f4
    lwc1	$f0,500($a0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    bc1f	.L0d9f6930
    nop
    lwc1	$f1,504($a0)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f4
    bc1t .L0d9f6938
    # Line 1776
    lui	$t2,0x1
.L0d9f6930:
    # Line 1772
    or	$a3,$a3,$a1
.L0d9f6934:
    # Line 1776
    lui	$t2,0x1
.L0d9f6938:
    # Line 1769
    andi	$t3,$v0,0x1000
    # Line 1776
    or	$t2,$a3,$t2
    movz	$t2,$a3,$t3
    andi	$t1,$v0,0x8
    # Line 1779
    ori	$t0,$t2,0x40
    # Line 1787
    andi	$a6,$v0,0x8000
    movz	$t0,$t2,$t1
    # Line 1779
    andi	$a7,$v0,0x2000
    # Line 1782
    ori	$a5,$t0,0x10
    andi	$a2,$v0,0x100
    movz	$a5,$t0,$a7
    # Line 1785
    ori	$a3,$a5,0x8000
    # Line 1787
    beqz	$a6,.L0d9f697c
    movz	$a3,$a5,$a2
    lbu	$t3,3226($a0)
    # Line 1789
    ori	$t8,$a3,0x20
    movn	$a3,$t8,$t3
.L0d9f697c:
    # Line 1791
    andi	$t9,$v0,0x40
    beqz	$t9,.L0d9f6998
    # Line 1793
    andi	$a1,$v0,0x20
    # Line 1791
    lbu	$at,1413($a0)
    # Line 1793
    ori	$v1,$a3,0x400
    movn	$a3,$v1,$at
    andi	$a1,$v0,0x20
.L0d9f6998:
    beqz	$a1,.L0d9f69ac
    # Line 1798
    andi	$a2,$a3,0x8
    beqz	$a2,.L0d9f6a7c
    li	$a6,4354
.L0d9f69a8:
    # Line 1810
    ori	$a3,$a3,0x1000
.L0d9f69ac:
    # Line 1816
    lw	$a6,1836($a0)
    # Line 1815
    lw	$a5,1832($a0)
    # Line 1817
    beqz	$a4,.L0d9f6a50
    # Line 1814
    lw	$v0,1828($a0)
    # Line 1817
    lw	$a4,1796($a0)
    andi	$a4,$a4,0x800
    bnez	$a4,.L0d9f6a50
    li	$t1,0x800b
    li	$a0,0x8001
    li	$t0,0x8004
    li	$a7,0x8003
    beq	$a0,$v0,.L0d9f6a44
    li	$t2,3057
    li	$a4,0x8002
    beq	$a4,$v0,.L0d9f6a44
    nop
    beq	$a7,$v0,.L0d9f6a44
    nop
    beq	$t0,$v0,.L0d9f6a48
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a0,$a5,.L0d9f6a48
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a4,$a5,.L0d9f6a48
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a7,$a5,.L0d9f6a48
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$t0,$a5,.L0d9f6a44
    li	$a5,0x8007
    beq	$a6,$a5,.L0d9f6a44
    li	$t0,0x800a
    li	$a7,0x8008
    beq	$a6,$a7,.L0d9f6a48
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a6,$t0,.L0d9f6a48
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a6,$t1,.L0d9f6a48
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    bne	$a6,$t2,.L0d9f6a50
.L0d9f6a44:
    # Line 1827
    lui	$v0,0x8
.L0d9f6a48:
    # Line 1830
    jr	$ra
    # Line 1827
    or	$v0,$a3,$v0
.L0d9f6a50:
    # Line 1830
    jr	$ra
    move	$v0,$a3
.L0d9f6a58:
    # Line 1752
    lw	$a3,30792($a0)
    lw	$v1,1880($a0)
    li	$a1,128
    andi	$a2,$v0,0x4
    movz	$a1,$zero,$a2
    xor	$v1,$v1,$a3
    # Line 1759
    ori	$a3,$a1,0x800
    b	.L0d9f68c4
    movz	$a3,$a1,$v1
.L0d9f6a7c:
    # Line 1798
    lw	$a5,1912($a0)
    beq	$a5,$a6,.L0d9f69a8
    nop
    # Line 1807
    b	.L0d9f69ac
    ori	$a3,$a3,0x2002
.end __glGenericModeFlags

# Function: __glGenericPickAllProcs
# Declared: Line 1833 (Source lines: 1834-2066)
# Address: 0x0d9f6a90 - 0x0d9f6edc (Size: 1100 bytes, Frame: 32)
.globl __glGenericPickAllProcs
.ent __glGenericPickAllProcs
__glGenericPickAllProcs:
    # Line 1834
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 1835
    lw	$at,11812($a0)
    lw	$s1,1792($a0)
    # Line 1834
    sd	$s0,16($sp)
    lui	$v0,0xa
    # Line 1835
    andi	$at,$at,0x21
    # Line 1834
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,-23224
    sd	$gp,0($sp)
    # Line 1835
    beqz	$at,.L0d9f6af8
    # Line 1834
    addu	$gp,$t9,$v0
    # Line 1844
    lw	$t9,11852($s0)
    jalr	$t9
    nop
    # Line 1845
    lbu	$v0,3220($s0)
    beqz	$v0,.L0d9f6af4
    move	$v0,$zero
    lw	$v1,28264($s0)
    beqz	$v1,.L0d9f6af0
    li	$v0,1
    b	.L0d9f6af8
    sb	$v0,28272($s0)
.L0d9f6af0:
    move	$v0,$zero
.L0d9f6af4:
    sb	$v0,28272($s0)
.L0d9f6af8:
    # Line 1851
    # lw $t9, -27420($gp) # &__glGenericModeFlags
    bal __glGenericModeFlags
    move	$a0,$s0
    lw	$a0,11812($s0)
    andi	$a1,$a0,0x21
    beqz	$a1,.L0d9f6d3c
    sw	$v0,30492($s0)
    lbu	$a2,28272($s0)
    beqz	$a2,.L0d9f6e34
    dsll32	$a3,$s1,0xd
    bgez	$a3,.L0d9f6b48
    # Line 1869
    move	$a4,$zero
    # Line 1862
    lw	$a0,1984($s0)
    li	$a4,9216
    beq	$a0,$a4,.L0d9f6eb4
    li	$a5,9218
    xor	$a5,$a0,$a5
    # Line 1868
    li	$a6,28
    # Line 1862
    li	$a4,4
    movz	$a4,$a6,$a5
.L0d9f6b48:
    # Line 1869
    dsll32	$a6,$s1,0xc
    bgez	$a6,.L0d9f6b78
    # Line 1880
    dsll32	$t1,$s1,0xb
    # Line 1873
    lw	$a0,2108($s0)
    li	$a7,9216
    beq	$a0,$a7,.L0d9f6ebc
    # Line 1872
    ori	$a4,$a4,0x4
    # Line 1873
    li	$t0,9218
    xor	$t0,$a0,$t0
    # Line 1878
    ori	$t1,$a4,0x18
    movz	$a4,$t1,$t0
.L0d9f6b74:
    # Line 1880
    dsll32	$t1,$s1,0xb
.L0d9f6b78:
    bgez	$t1,.L0d9f6ba4
    # Line 1891
    dsll32	$t8,$s1,0xa
    # Line 1884
    lw	$a0,2232($s0)
    li	$t2,9216
    beq	$a0,$t2,.L0d9f6ec4
    # Line 1883
    ori	$a4,$a4,0x4
    # Line 1884
    li	$t3,9218
    xor	$t3,$a0,$t3
    # Line 1889
    ori	$t8,$a4,0x18
    movz	$a4,$t8,$t3
.L0d9f6ba0:
    # Line 1891
    dsll32	$t8,$s1,0xa
.L0d9f6ba4:
    bgez	$t8,.L0d9f6bd0
    # Line 1902
    andi	$t0,$s1,0x40
    # Line 1895
    lw	$a0,2356($s0)
    li	$t9,9216
    beq	$a0,$t9,.L0d9f6ecc
    # Line 1894
    ori	$a4,$a4,0x4
    # Line 1895
    li	$ra,9218
    xor	$ra,$a0,$ra
    # Line 1900
    ori	$at,$a4,0x18
    movz	$a4,$at,$ra
.L0d9f6bcc:
    # Line 1902
    andi	$t0,$s1,0x40
.L0d9f6bd0:
    beqz	$t0,.L0d9f6e3c
    # Line 1922
    move	$a6,$zero
    # Line 1902
    lbu	$at,1412($s0)
    beqz	$at,.L0d9f6e54
    li	$a6,24
.L0d9f6be4:
    # Line 1922
    andi	$v1,$s1,0x20
.L0d9f6be8:
    beqz	$v1,.L0d9f6bfc
    # Line 1926
    ori	$a1,$a4,0x10
    andi	$a0,$v0,0x2000
    # Line 1930
    ori	$a4,$a1,0x40
    movz	$a4,$a1,$a0
.L0d9f6bfc:
    lw	$a1,1804($s0)
    # Line 1934
    ori	$a0,$a4,0x10
    movz	$a0,$a4,$a1
    # Line 1938
    sw	$a0,28132($s0)
    # Line 1939
    or	$a0,$a6,$a0
    # Line 1940
    sw	$a0,28140($s0)
    move	$a5,$a0
    # Line 1939
    sw	$a0,28136($s0)
    # Line 1941
    beqz	$t0,.L0d9f6e18
    # Line 1939
    move	$a3,$a0
.L0d9f6c24:
    # Line 1944
    lbu	$a2,1413($s0)
    ori	$a3,$a0,0x1
    sw	$a3,28136($s0)
    beqz	$a2,.L0d9f6e4c
    # Line 1948
    move	$a5,$a3
    # Line 1946
    ori	$a5,$a0,0x2
    sw	$a5,28140($s0)
.L0d9f6c40:
    # Line 1945
    lw	$a4,1392($s0)
.L0d9f6c44:
    li	$a6,7425
    beq	$a4,$a6,.L0d9f6e44
    # Line 1953
    or	$a0,$a3,$a5
    # Line 1958
    sw	$zero,28144($s0)
.L0d9f6c54:
    # Line 1961
    lw	$a1,30712($s0)
    lw	$t9,160($a1)
    jal	__glGenericModeFlags
    move	$a0,$s0
    lbu	$a7,3222($s0)
    beqz	$a7,.L0d9f6c80
    nop
    # Line 1963
    lw	$a1,30716($s0)
    lw	$t9,160($a1)
    jalr	$t9
    move	$a0,$s0
.L0d9f6c80:
    lbu	$t0,3226($s0)
    beqz	$t0,.L0d9f6c9c
    nop
    # Line 1976
    lw	$t9,31252($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,31164
.L0d9f6c9c:
    # Line 1979
    lw	$t9,11892($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1987
    lw	$t9,11896($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1989
    lw	$t9,11860($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1991
    # lw $t9, -27932($gp) # &__glValidateLighting
    jal	__glValidateLighting
    move	$a0,$s0
    # Line 1997
    lw	$t9,11848($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1999
    lw	$t9,11844($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2000
    lw	$t9,11856($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2002
    lw	$t9,11888($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2003
    lw	$t9,11884($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2008
    lw	$t9,11876($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$t1,11808($s0)
    andi	$t1,$t1,0x1
    beqz	$t1,.L0d9f6d2c
    # Line 2011
    nop	# was lw $t9, -29352($gp) # &__glValidateAlphaTest
    jal	__glValidateAlphaTest
    move	$a0,$s0
.L0d9f6d2c:
    # Line 2014
    lw	$t9,11972($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11812($s0)
.L0d9f6d3c:
    andi	$t2,$a0,0x40
    beqz	$t2,.L0d9f6d5c
    # Line 2025
    andi	$t3,$a0,0x25
    lw	$t9,12712($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11812($s0)
    andi	$t3,$a0,0x25
.L0d9f6d5c:
    beqz	$t3,.L0d9f6d90
    # Line 2039
    andi	$t8,$a0,0x29
    # Line 2036
    lw	$t9,11904($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2038
    lw	$t9,11900($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2039
    lw	$t9,11872($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11812($s0)
    andi	$t8,$a0,0x29
.L0d9f6d90:
    beqz	$t8,.L0d9f6dac
    # Line 2044
    andi	$t9,$a0,0x23
    lw	$t9,11864($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11812($s0)
    andi	$t9,$a0,0x23
.L0d9f6dac:
    beqz	$t9,.L0d9f6dc8
    # Line 2049
    andi	$ra,$a0,0x31
    lw	$t9,11868($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11812($s0)
    andi	$ra,$a0,0x31
.L0d9f6dc8:
    beqz	$ra,.L0d9f6de4
    # Line 2054
    andi	$at,$a0,0x80
    lw	$t9,11880($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11812($s0)
    andi	$at,$a0,0x80
.L0d9f6de4:
    beqz	$at,.L0d9f6df8
    nop
    # Line 2061
    lw	$t9,11920($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9f6df8:
    # Line 2066
    ld	$gp,0($sp)
    # Line 2065
    sw	$zero,11812($s0)
    ld	$ra,24($sp)
    # Line 2064
    sw	$zero,11808($s0)
    # Line 2066
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f6e18:
    # Line 1941
    lui	$v1,0x2
    ori	$v1,$v1,0x2000
    and	$v1,$v0,$v1
    bnez	$v1,.L0d9f6c24
    nop
    b	.L0d9f6c44
    # Line 1945
    lw	$a4,1392($s0)
.L0d9f6e34:
    b	.L0d9f6bcc
    # Line 1902
    move	$a4,$zero
.L0d9f6e3c:
    b	.L0d9f6be8
    # Line 1922
    andi	$v1,$s1,0x20
.L0d9f6e44:
    # Line 1953
    b	.L0d9f6c54
    sw	$a0,28144($s0)
.L0d9f6e4c:
    b	.L0d9f6c40
    # Line 1948
    sw	$a3,28140($s0)
.L0d9f6e54:
    # Line 1912
    lw	$a6,3588($s0)
    mtc1	$zero,$f4
    li	$a7,1
    move	$a0,$zero
    beqz	$a6,.L0d9f6ed4
    lw	$a3,1584($s0)
    b	.L0d9f6e88
    lw	$a5,1800($s0)
    nop
    nop
    nop
.L0d9f6e80:
    # Line 1914
    beqz	$a1,.L0d9f6ed4
    addiu	$a3,$a3,116
.L0d9f6e88:
    # Line 1915
    sllv	$a2,$a7,$a0
    and	$a2,$a5,$a2
    # Line 1914
    addiu	$a0,$a0,1
    # Line 1915
    beqz	$a2,.L0d9f6e80
    # Line 1914
    sltu	$a1,$a0,$a6
    # Line 1915
    lwc1	$f0,76($a3)
    c.eq.s	$f0,$f4
    bc1t	.L0d9f6e80
    nop
    # Line 1920
    b	.L0d9f6be4
    li	$a6,24
.L0d9f6eb4:
    b	.L0d9f6b48
    # Line 1864
    li	$a4,20
.L0d9f6ebc:
    b	.L0d9f6b74
    # Line 1875
    ori	$a4,$a4,0x10
.L0d9f6ec4:
    b	.L0d9f6ba0
    # Line 1886
    ori	$a4,$a4,0x10
.L0d9f6ecc:
    b	.L0d9f6bcc
    # Line 1897
    ori	$a4,$a4,0x10
.L0d9f6ed4:
    b	.L0d9f6be4
    # Line 1914
    li	$a6,8
.end __glGenericPickAllProcs

.late_rodata
jtbl_0da81050:
    .word .L0d9f5fa4
    .word .L0d9f5f90
    .word .L0d9f5f9c
    .word .L0d9f5f9c
    .word .L0d9f5fb0
    .word .L0d9f5f9c
    .word .L0d9f5f9c
    .word .L0d9f5f9c
    .word .L0d9f5f9c

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_40000000:
    .word 0x40000000

