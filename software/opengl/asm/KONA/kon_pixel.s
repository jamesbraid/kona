# Source: ../KONA/kon_pixel.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_pixel.c
# Total Functions: 56

.text

# Function: GetLineModeDist
# Declared: Line 311 (Source lines: 312-341)
# Address: 0x0d94fb70 - 0x0d94fbec (Size: 124 bytes, Frame: 32)
.ent GetLineModeDist
GetLineModeDist:
    # Line 312
    addiu	$sp,$sp,-32
    # Line 329
    # lw $t9, -32120($gp) # &__glkon_get_special
    # Line 312
    sd	$a1,16($sp)
    # Line 329
    move	$a1,$zero
    # Line 312
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 329
    jal	__glkon_get_special
    li	$a0,238
    ld	$a5,16($sp)
    move	$a3,$v0
    move	$a4,$s8
    ld	$ra,0($sp)
    move	$a2,$a5
    addiu	$a5,$a5,64
    nop
.L0d94fbb0:
    # Line 331
    lw	$t1,0($a3)
    sw	$t1,0($a2)
    # Line 332
    lw	$t0,4($a3)
    sw	$t0,4($a2)
    # Line 333
    lw	$a7,8($a3)
    # Line 330
    addiu	$a2,$a2,8
    # Line 333
    sw	$a7,0($a4)
    # Line 330
    addiu	$a4,$a4,8
    # Line 334
    lw	$a6,12($a3)
    addiu	$a3,$a3,16
    # Line 330
    bne	$a2,$a5,.L0d94fbb0
    # Line 334
    sw	$a6,-4($a4)
    ld	$s8,8($sp)
    # Line 341
    jr	$ra
    addiu	$sp,$sp,32
.end GetLineModeDist

# Function: __glKonInitPixelState
# Declared: Line 344 (Source lines: 344-395)
# Address: 0x0d94fbf0 - 0x0d94fdec (Size: 508 bytes, Frame: 32)
.globl __glKonInitPixelState
.ent __glKonInitPixelState
__glKonInitPixelState:
    # Line 344
    lui	$v1,0x14
    addiu	$sp,$sp,-32
    addiu	$v1,$v1,5096
    sd	$gp,0($sp)
    addu	$gp,$t9,$v1
    la	$a3,.rodata
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 352
    lui	$v0,0x1
    addu	$v0,$a0,$v0
    # Line 344
    addiu	$a3,$a3,10416
    # Line 352
    addiu	$a5,$v0,-29632
    addiu	$a4,$a3,440
    lw	$v1,440($a3)
    sw	$v1,-29632($v0)
    lw	$at,444($a3)
    sw	$at,-29628($v0)
    lw	$t9,448($a3)
    sw	$t9,-29624($v0)
    lw	$t8,452($a3)
    sw	$t8,-29620($v0)
    lw	$t3,456($a3)
    sw	$t3,-29616($v0)
    lw	$t2,460($a3)
    sw	$t2,-29612($v0)
    lw	$t1,464($a3)
    sw	$t1,-29608($v0)
    lw	$t0,468($a3)
    sw	$t0,-29604($v0)
    lw	$a2,472($a3)
    sw	$a2,-29600($v0)
    lw	$a1,476($a3)
    sw	$a1,-29596($v0)
    lw	$a0,480($a3)
    sw	$a0,-29592($v0)
    # Line 353
    addiu	$a0,$v0,-29676
    addiu	$a4,$a3,392
    sd	$ra,16($sp)
    lw	$v1,392($a3)
    sw	$v1,-29676($v0)
    lw	$at,396($a3)
    sw	$at,-29672($v0)
    lw	$t9,400($a3)
    sw	$t9,-29668($v0)
    lw	$t8,404($a3)
    sw	$t8,-29664($v0)
    lw	$t3,408($a3)
    sw	$t3,-29660($v0)
    lw	$t2,412($a3)
    sw	$t2,-29656($v0)
    lw	$t1,416($a3)
    sw	$t1,-29652($v0)
    lw	$t0,420($a3)
    sw	$t0,-29648($v0)
    lw	$a7,424($a3)
    sw	$a7,-29644($v0)
    lw	$a2,428($a3)
    sw	$a2,-29640($v0)
    lw	$a1,432($a3)
    sw	$a1,-29636($v0)
    # Line 358
    addiu	$a3,$s0,1144
    sw	$a3,-29588($v0)
    # Line 363
    # lw $t9, -31324($gp) # &__glKonInitColortableState
    # Line 357
    addiu	$a2,$s0,1188
    sw	$a2,-29584($v0)
    # Line 355
    li	$a1,1
    # Line 356
    sw	$a1,-29616($v0)
    # Line 363
    move	$a0,$s0
    jal	__glKonInitColortableState
    # Line 355
    sw	$a1,-29660($v0)
    # Line 368
    # lw $t9, -32192($gp) # &__glKonInitConvolutionState
    bal __glKonInitConvolutionState
    move	$a0,$s0
    # Line 373
    # lw $t9, -32744($gp) # &sub_0d950000
    li	$a1,0x8bd0
    addiu	$t9,$t9,-1168
    li	$a0,0x8b90
    addu	$a1,$s0,$a1
    bal __glkonlc_PointSize
    addu	$a0,$s0,$a0
    # Line 376
    # lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,0
    bnez	$v0,.L0d94fdc4
.L0d94fd44:
    # Line 382
    nop	# was lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,32
    bnez	$v0,.L0d94fdd8
.L0d94fd58:
    # Line 386
    nop	# was lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,64
    beqz	$v0,.L0d94fda0
    ld	$ra,16($sp)
    # Line 387
    li	$a2,462
    sw	$a2,16384($zero)
    sw	$zero,16384($zero)
    # Line 395
    ld	$gp,0($sp)
    # Line 391
    lw	$a1,1796($s0)
    # Line 394
    li	$a3,0x81c5
    sw	$a3,1380($s0)
    # Line 391
    ori	$a1,$a1,0x100
    sw	$a1,1796($s0)
    # Line 395
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94fda0:
    ld	$gp,0($sp)
    # Line 391
    lw	$a4,1796($s0)
    # Line 394
    li	$a5,0x81c5
    sw	$a5,1380($s0)
    # Line 391
    ori	$a4,$a4,0x100
    sw	$a4,1796($s0)
    # Line 395
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94fdc4:
    # Line 378
    # lw $t9, -18548($gp) # &atoi
    jal	atoi
    move	$a0,$v0
    b	.L0d94fd44
    sw	$v0,-16516($gp)
.L0d94fdd8:
    # Line 384
    # lw $t9, -18548($gp) # &atoi
    jal	atoi
    move	$a0,$v0
    b	.L0d94fd58
    sw	$v0,-16512($gp)
.end __glKonInitPixelState

# Function: __glKonSetNoModeState
# Declared: Line 437 (Source lines: 438-508)
# Address: 0x0d94fdf0 - 0x0d94ff48 (Size: 344 bytes, Frame: 0)
.globl __glKonSetNoModeState
.ent __glKonSetNoModeState
__glKonSetNoModeState:
    # Line 439
    lw	$a5,4112($zero)
    # Line 438
    lui	$v0,0x14
    # Line 439
    li	$a4,0x8ad0
    # Line 438
    addiu	$v0,$v0,4584
    # Line 440
    addiu	$a6,$a5,640
    # Line 439
    addu	$a4,$a5,$a4
    # Line 440
    beqz	$a1,.L0d94feb0
    # Line 438
    addu	$at,$t9,$v0
    # Line 440
    dsll32	$a7,$a1,0x1
    # Line 470
    lui	$t9,0x1fc
    # Line 440
    bgez	$a7,.L0d94fe98
    # Line 470
    ori	$t9,$t9,0xffff
    # Line 468
    lw	$v1,1792($a5)
    sw	$v1,420($a4)
    # Line 469
    lw	$v0,4112($zero)
    lw	$v0,1796($v0)
    sw	$v0,424($a4)
    # Line 470
    lw	$t8,4112($zero)
    lw	$t3,1792($t8)
    and	$t3,$t3,$t9
    sw	$t3,1792($t8)
    # Line 471
    lw	$t1,4112($zero)
    lw	$t0,1796($t1)
    li	$t2,-264
    and	$t0,$t0,$t2
    sw	$t0,1796($t1)
.L0d94fe58:
    # Line 482
    li	$a3,2
    # Line 478
    dsll32	$a2,$a1,0x2
    # Line 482
    li	$a5,4
    # Line 507
    li	$t0,273
    # Line 478
    bgez	$a2,.L0d94feec
    # Line 482
    li	$a7,32
    beq	$a0,$a3,.L0d94ff10
    # Line 507
    li	$t2,273
    # Line 482
    beq	$a0,$a5,.L0d94ff30
    # Line 488
    la	$t3,.rodata
    # Line 482
    beq	$a0,$a7,.L0d94fec8
    # Line 507
    li	$a2,273
.L0d94fe88:
    sw	$t0,16384($zero)
    sw	$a0,16384($zero)
    # Line 508
    jr	$ra
    # Line 507
    sw	$a1,16384($zero)
.L0d94fe98:
    # Line 473
    lw	$t3,420($a4)
    sw	$t3,1792($a5)
    # Line 474
    lw	$t2,4112($zero)
    lw	$t1,424($a4)
    b	.L0d94fe58
    sw	$t1,1796($t2)
.L0d94feb0:
    # Line 477
    lw	$v0,420($a4)
    sw	$v0,1792($a5)
    # Line 478
    lw	$t9,4112($zero)
    lw	$t8,424($a4)
    b	.L0d94fe58
    sw	$t8,1796($t9)
.L0d94fec8:
    # Line 507
    sw	$a2,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    # Line 492
    la	$v1,.rodata
    # Line 494
    addiu	$a0,$a6,504
    sw	$a0,412($a4)
    # Line 492
    addiu	$v1,$v1,10904
    # Line 508
    jr	$ra
    # Line 492
    sw	$v1,416($a4)
.L0d94feec:
    # Line 507
    li	$a7,273
    sw	$a7,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    # Line 503
    addiu	$a5,$a6,504
    sw	$a5,412($a4)
    # Line 502
    addiu	$a3,$a6,548
    # Line 508
    jr	$ra
    # Line 502
    sw	$a3,416($a4)
.L0d94ff10:
    # Line 507
    sw	$t2,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    # Line 485
    addiu	$t1,$a4,324
    sw	$t1,412($a4)
    # Line 484
    addiu	$t0,$a4,368
    # Line 508
    jr	$ra
    # Line 484
    sw	$t0,416($a4)
.L0d94ff30:
    # Line 488
    addiu	$t3,$t3,10416
    # Line 489
    addiu	$t8,$t3,392
    sw	$t8,412($a4)
    # Line 488
    addiu	$t3,$t3,440
    # Line 490
    b	.L0d94fe88
    # Line 488
    sw	$t3,416($a4)
.end __glKonSetNoModeState

# Function: __glKonParseErrorDraw
# Declared: Line 522 (Source lines: 523-597)
# Address: 0x0d94ff50 - 0x0d950124 (Size: 468 bytes, Frame: 16)
.globl __glKonParseErrorDraw
.ent __glKonParseErrorDraw
__glKonParseErrorDraw:
    # Line 532
    lw	$a3,0($a0)
    # Line 524
    lw	$a4,4112($zero)
    # Line 523
    addiu	$sp,$sp,-16
    lui	$at,0x14
    sd	$ra,8($sp)
    addiu	$at,$at,4232
    sd	$gp,0($sp)
    # Line 532
    blez	$a3,.L0d94ffb0
    # Line 523
    addu	$gp,$t9,$at
    # Line 532
    lw	$v0,4($a0)
    blez	$v0,.L0d94ffbc
    nop
    lw	$v1,148($a0)
    la	$v0,.rodata
    sltiu	$a1,$v1,13
    sll	$v1,$v1,0x2
    addiu	$v0,$v0,88
    beqz	$a1,.L0d94ffb0
    addu	$v0,$v0,$v1
    lw	$v1,0($v0)
    jr	$v1
    nop
.L0d94ffa8:
    # Line 540
    lw	$a1,20($a0)
    lh	$a1,0($a1)
.L0d94ffb0:
    # Line 561
    bltz	$a3,.L0d950110
    # Line 562
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 561
    lw	$v0,4($a0)
.L0d94ffbc:
    bltz	$v0,.L0d95010c
    # Line 569
    la	$a6,.rodata
    lw	$a3,156($a0)
    andi	$a2,$a3,0x1f00
    lw	$a5,144($a0)
    lw	$a7,148($a0)
    beqz	$a2,.L0d94fffc
    sll	$a5,$a5,0x2
    sll	$a7,$a7,0x2
    addiu	$a6,$a6,10416
    addu	$a5,$a6,$a5
    addu	$a6,$a6,$a7
    lw	$a6,200($a6)
    lw	$a5,48($a5)
    bne	$a5,$a6,.L0d9500b4
    # Line 572
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d94fffc:
    # Line 576
    lw	$a6,24($a0)
    andi	$a6,$a6,0x40
    beqz	$a6,.L0d950024
    lw	$v0,152($a0)
    andi	$a7,$v0,0x7ff
    beqz	$a7,.L0d950028
    li	$a0,4096
    lbu	$t0,3220($a4)
    beqz	$t0,.L0d950074
    # Line 581
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d950024:
    # Line 576
    li	$a0,4096
.L0d950028:
    beq	$v0,$a0,.L0d950064
    # Line 585
    li	$t1,128
.L0d950030:
    beq	$a3,$t1,.L0d950088
    li	$t9,2048
.L0d950038:
    # Line 589
    li	$t3,1
.L0d95003c:
    lw	$t2,4120($zero)
    beq	$t2,$t3,.L0d9500f4
    # Line 597
    move	$v0,$zero
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d950058:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d950064:
    # Line 576
    lbu	$t8,3226($a4)
    bnez	$t8,.L0d950030
    # Line 585
    li	$t1,128
    # Line 581
    # lw $t9, -28616($gp) # &__glSetError
.L0d950074:
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 582
    b	.L0d950058
    li	$v0,1
.L0d950088:
    # Line 585
    beq	$v0,$t9,.L0d95003c
    # Line 589
    li	$t3,1
    # Line 585
    beq	$v0,$a0,.L0d950038
    # Line 588
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 589
    li	$v0,1
    # Line 597
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9500b4:
    # Line 572
    jalr	$t9
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 573
    li	$v0,1
    # Line 597
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9500d0:
    # Line 556
    lw	$ra,20($a0)
    # Line 557
    b	.L0d94ffb0
    # Line 556
    lw	$ra,0($ra)
.L0d9500dc:
    # Line 552
    lw	$at,20($a0)
    # Line 553
    b	.L0d94ffb0
    # Line 552
    lh	$at,0($at)
.L0d9500e8:
    # Line 545
    lw	$v0,20($a0)
    # Line 546
    b	.L0d94ffb0
    # Line 545
    lw	$v0,0($v0)
.L0d9500f4:
    # Line 593
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 594
    b	.L0d950058
    li	$v0,1
.L0d95010c:
    # Line 562
    # lw $t9, -28616($gp) # &__glSetError
.L0d950110:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,8($sp)
    # Line 563
    b	.L0d950058
    li	$v0,1
.end __glKonParseErrorDraw

# Function: ParseErrorCopy
# Declared: Line 601 (Source lines: 602-641)
# Address: 0x0d950130 - 0x0d950254 (Size: 292 bytes, Frame: 16)
.ent ParseErrorCopy
ParseErrorCopy:
    # Line 603
    lw	$at,4120($zero)
    li	$v1,1
    # Line 615
    li	$a5,6146
    # Line 603
    lw	$v0,4112($zero)
    # Line 602
    addiu	$sp,$sp,-16
    # Line 615
    li	$a4,6145
    # Line 603
    beq	$at,$v1,.L0d95021c
    sd	$ra,0($sp)
    # Line 610
    bltz	$a0,.L0d950204
    # Line 611
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 610
    bltz	$a1,.L0d950200
    # Line 615
    li	$a3,6144
    beq	$a2,$a3,.L0d9501a8
    nop
    beq	$a2,$a4,.L0d9501d8
    nop
    beq	$a2,$a5,.L0d950190
    # Line 633
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 634
    li	$v0,1
    # Line 641
    jr	$ra
    addiu	$sp,$sp,16
.L0d950190:
    # Line 626
    lbu	$a6,3226($v0)
    beqz	$a6,.L0d95023c
    # Line 628
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 626
    lbu	$a7,3386($v0)
    beqz	$a7,.L0d95023c
    # Line 628
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9501a8:
    # Line 637
    beqz	$a0,.L0d9501cc
    ld	$ra,0($sp)
    beqz	$a1,.L0d9501cc
    ld	$ra,0($sp)
    # Line 641
    move	$v0,$zero
.L0d9501bc:
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    ld	$ra,0($sp)
.L0d9501cc:
    # Line 638
    li	$v0,1
    # Line 641
    jr	$ra
    addiu	$sp,$sp,16
.L0d9501d8:
    # Line 619
    lbu	$t0,3225($v0)
    beqz	$t0,.L0d9501f0
    # Line 621
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 619
    lbu	$t1,3385($v0)
    bnez	$t1,.L0d9501a8
    # Line 621
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9501f0:
    jal	__glSetError
    li	$a0,1282
    # Line 622
    b	.L0d9501bc
    li	$v0,1
.L0d950200:
    # Line 611
    # lw $t9, -28616($gp) # &__glSetError
.L0d950204:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 612
    li	$v0,1
    # Line 641
    jr	$ra
    addiu	$sp,$sp,16
.L0d95021c:
    # Line 606
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,0($sp)
    # Line 607
    li	$v0,1
    # Line 641
    jr	$ra
    addiu	$sp,$sp,16
    # Line 628
    # lw $t9, -28616($gp) # &__glSetError
.L0d95023c:
    jal	__glSetError
    li	$a0,1282
    ld	$ra,0($sp)
    # Line 629
    li	$v0,1
    # Line 641
    jr	$ra
    addiu	$sp,$sp,16
.end ParseErrorCopy

# Function: __glKonParseErrorRead
# Declared: Line 652 (Source lines: 653-690)
# Address: 0x0d950260 - 0x0d9503c4 (Size: 356 bytes, Frame: 16)
.globl __glKonParseErrorRead
.ent __glKonParseErrorRead
__glKonParseErrorRead:
    # Line 656
    lw	$a3,0($a0)
    # Line 654
    lw	$a5,4112($zero)
    # Line 653
    addiu	$sp,$sp,-16
    lui	$at,0x14
    sd	$ra,8($sp)
    addiu	$at,$at,3448
    sd	$gp,0($sp)
    # Line 656
    bltz	$a3,.L0d950394
    # Line 653
    addu	$gp,$t9,$at
    # Line 656
    lw	$a4,4($a0)
    # Line 664
    la	$a1,.rodata
    # Line 656
    bltz	$a4,.L0d950394
    # Line 664
    addiu	$a1,$a1,10416
    lw	$v0,156($a0)
    lw	$v1,144($a0)
    andi	$v0,$v0,0x1f00
    sll	$v1,$v1,0x2
    lw	$a2,148($a0)
    beqz	$v0,.L0d9502c8
    addu	$v1,$a1,$v1
    sll	$a2,$a2,0x2
    lw	$v1,48($v1)
    addu	$a1,$a1,$a2
    lw	$a1,200($a1)
    bne	$v1,$a1,.L0d950378
    # Line 667
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9502c8:
    # Line 671
    lw	$v0,152($a0)
    li	$a1,2048
    beq	$v0,$a1,.L0d950330
    li	$a2,8192
.L0d9502d8:
    beq	$v0,$a2,.L0d950350
    li	$a6,4096
.L0d9502e0:
    beq	$v0,$a6,.L0d950364
    # Line 678
    li	$t0,1
.L0d9502e8:
    lw	$a7,4120($zero)
    beq	$a7,$t0,.L0d9503ac
    # Line 690
    move	$v0,$zero
    # Line 686
    beqz	$a3,.L0d950320
    ld	$ra,8($sp)
    beqz	$a4,.L0d95031c
    ld	$ra,8($sp)
    # Line 690
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d950310:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95031c:
    ld	$ra,8($sp)
.L0d950320:
    # Line 687
    li	$v0,1
    # Line 690
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d950330:
    # Line 671
    lbu	$t1,3220($a5)
    beqz	$t1,.L0d9502d8
    # Line 677
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d95033c:
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 678
    b	.L0d950310
    li	$v0,1
.L0d950350:
    # Line 671
    lbu	$t2,3225($a5)
    bnez	$t2,.L0d9502e0
    li	$a6,4096
    b	.L0d95033c
    # Line 677
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d950364:
    # Line 671
    lbu	$t3,3226($a5)
    bnez	$t3,.L0d9502e8
    # Line 678
    li	$t0,1
    b	.L0d95033c
    # Line 677
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d950378:
    # Line 667
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 668
    li	$v0,1
    # Line 690
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d950394:
    # Line 657
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,8($sp)
    # Line 658
    b	.L0d950310
    li	$v0,1
.L0d9503ac:
    # Line 682
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 683
    b	.L0d950310
    li	$v0,1
.end __glKonParseErrorRead

# Function: __glKonGetFormatIndex
# Declared: Line 694 (Source lines: 695-718)
# Address: 0x0d9503d0 - 0x0d950478 (Size: 168 bytes, Frame: 16)
.globl __glKonGetFormatIndex
.ent __glKonGetFormatIndex
__glKonGetFormatIndex:
    # Line 701
    sltiu	$v0,$a0,6400
    # Line 695
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,3080
    sd	$gp,0($sp)
    # Line 701
    bnez	$v0,.L0d950404
    # Line 695
    addu	$gp,$t9,$at
    # Line 703
    addiu	$a3,$a0,-6400
    # Line 701
    sltiu	$v0,$a0,6411
    beqz	$v0,.L0d950408
    # Line 703
    li	$v1,0x8000
    b	.L0d950428
    # Line 718
    la	$v0,.rodata
.L0d950404:
    # Line 703
    li	$v1,0x8000
.L0d950408:
    beq	$a0,$v1,.L0d950468
    li	$a3,12
    li	$a1,0x800c
    beq	$a0,$a1,.L0d950470
    li	$a2,0x800d
    bne	$a0,$a2,.L0d950444
    # Line 710
    li	$a3,13
.L0d950424:
    # Line 718
    la	$v0,.rodata
.L0d950428:
    sll	$v1,$a3,0x2
    addiu	$v0,$v0,10744
    # Line 713
    ld	$gp,0($sp)
    # Line 718
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    # Line 713
    jr	$ra
    addiu	$sp,$sp,16
.L0d950444:
    # Line 712
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 713
    li	$v0,-1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d950468:
    # Line 703
    b	.L0d950424
    li	$a3,11
.L0d950470:
    b	.L0d950428
    # Line 718
    la	$v0,.rodata
.end __glKonGetFormatIndex

# Function: __glKonGetTypeIndex
# Declared: Line 722 (Source lines: 723-748)
# Address: 0x0d950480 - 0x0d950554 (Size: 212 bytes, Frame: 16)
.globl __glKonGetTypeIndex
.ent __glKonGetTypeIndex
__glKonGetTypeIndex:
    # Line 727
    sltiu	$v0,$a0,5120
    # Line 723
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,2904
    sd	$gp,0($sp)
    # Line 727
    bnez	$v0,.L0d9504a4
    # Line 723
    addu	$gp,$t9,$at
    # Line 727
    sltiu	$v0,$a0,5127
    bnez	$v0,.L0d95052c
.L0d9504a4:
    # Line 728
    li	$v1,6656
    beq	$a0,$v1,.L0d95054c
    # Line 732
    li	$v0,7
    # Line 735
    li	$a1,0x8032
    sltu	$a1,$a0,$a1
    # Line 744
    lui	$v0,0xffff
    ori	$v0,$v0,0x7e51
    # Line 735
    bnez	$a1,.L0d9504d4
    # Line 744
    addu	$v0,$a0,$v0
    # Line 735
    li	$a2,0x8036
    sltu	$a2,$a2,$a0
    beqz	$a2,.L0d95053c
.L0d9504d4:
    # Line 741
    li	$a3,0x81bd
    sltu	$a3,$a0,$a3
    bnez	$a3,.L0d950508
    li	$a4,0x81c3
    sltu	$a4,$a4,$a0
    bnez	$a4,.L0d95050c
    # Line 747
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 748
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9504fc:
    ld	$gp,0($sp)
.L0d950500:
    jr	$ra
    addiu	$sp,$sp,16
.L0d950508:
    # Line 747
    # lw $t9, -28616($gp) # &__glSetError
.L0d95050c:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 748
    li	$v0,-1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95052c:
    # Line 728
    addiu	$v0,$a0,-5120
    # Line 748
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95053c:
    # Line 737
    lui	$v0,0xffff
    ori	$v0,$v0,0x7fd6
    b	.L0d9504fc
    addu	$v0,$a0,$v0
.L0d95054c:
    # Line 732
    b	.L0d950500
    # Line 748
    ld	$gp,0($sp)
.end __glKonGetTypeIndex

# Function: __glKonParseInput
# Declared: Line 762 (Source lines: 763-807)
# Address: 0x0d950560 - 0x0d9506f4 (Size: 404 bytes, Frame: 16)
.globl __glKonParseInput
.ent __glKonParseInput
__glKonParseInput:
    # Line 792
    li	$t0,0x8032
    # Line 789
    li	$a7,6656
    # Line 767
    lw	$a2,12($a0)
    # Line 792
    li	$t1,0x8036
    # Line 763
    addiu	$sp,$sp,-16
    lui	$at,0x14
    # Line 767
    sltiu	$v0,$a2,6400
    # Line 763
    addiu	$at,$at,2680
    # Line 770
    addiu	$a3,$a2,-6400
    sd	$gp,0($sp)
    # Line 767
    bnez	$v0,.L0d9505a4
    # Line 763
    addu	$gp,$t9,$at
    # Line 767
    sltiu	$v0,$a2,6411
    beqz	$v0,.L0d9505a8
    # Line 777
    li	$a4,13
    # Line 770
    b	.L0d9505d0
    sw	$a3,144($a0)
.L0d9505a4:
    # Line 777
    li	$a4,13
.L0d9505a8:
    # Line 770
    li	$v1,0x8000
    beq	$a2,$v1,.L0d9506a4
    # Line 775
    li	$a3,0x800d
    # Line 773
    li	$a1,0x800c
    beq	$a2,$a1,.L0d9506b4
    # Line 775
    li	$a6,12
    bne	$a2,$a3,.L0d950684
    # Line 779
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 777
    sw	$a4,144($a0)
    move	$a3,$a4
.L0d9505d0:
    # Line 785
    la	$a5,.rodata
    sll	$a6,$a3,0x2
    addiu	$a5,$a5,10744
    # Line 788
    lw	$a2,16($a0)
    # Line 785
    addu	$a5,$a5,$a6
    lw	$a5,0($a5)
    # Line 786
    li	$a4,1
    # Line 788
    sltiu	$a6,$a2,5120
    # Line 807
    move	$v0,$zero
    # Line 785
    sw	$a5,144($a0)
    # Line 786
    sllv	$a5,$a4,$a5
    # Line 792
    sltu	$t0,$a2,$t0
    # Line 788
    bnez	$a6,.L0d95061c
    # Line 786
    sw	$a5,152($a0)
    # Line 788
    sltiu	$a6,$a2,5127
    beqz	$a6,.L0d95061c
    # Line 789
    addiu	$a3,$a2,-5120
    b	.L0d950670
    sw	$a3,148($a0)
.L0d95061c:
    # Line 792
    sltu	$t1,$t1,$a2
    # Line 795
    lui	$a3,0xffff
    # Line 789
    beq	$a2,$a7,.L0d9506e4
    # Line 795
    ori	$a3,$a3,0x7fd6
    # Line 792
    bnez	$t0,.L0d950644
    # Line 795
    addu	$a3,$a2,$a3
    # Line 792
    bnez	$t1,.L0d950648
    # Line 797
    li	$a5,0x81bd
    # Line 795
    b	.L0d950670
    sw	$a3,148($a0)
.L0d950644:
    # Line 797
    li	$a5,0x81bd
.L0d950648:
    sltu	$a5,$a2,$a5
    # Line 800
    lui	$a3,0xffff
    ori	$a3,$a3,0x7e51
    # Line 797
    bnez	$a5,.L0d9506c0
    # Line 800
    addu	$a3,$a2,$a3
    # Line 797
    li	$a6,0x81c3
    sltu	$a6,$a6,$a2
    bnez	$a6,.L0d9506c4
    # Line 803
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 800
    sw	$a3,148($a0)
.L0d950670:
    # Line 806
    sllv	$a4,$a4,$a3
    sw	$a4,156($a0)
    # Line 780
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d950684:
    sd	$ra,8($sp)
    # Line 779
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 780
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9506a4:
    # Line 773
    li	$a5,11
    sw	$a5,144($a0)
    b	.L0d9505d0
    li	$a3,11
.L0d9506b4:
    # Line 775
    sw	$a6,144($a0)
    b	.L0d9505d0
    li	$a3,12
.L0d9506c0:
    # Line 803
    # lw $t9, -28616($gp) # &__glSetError
.L0d9506c4:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 804
    li	$v0,1
    # Line 780
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9506e4:
    # Line 791
    li	$a7,7
    sw	$a7,148($a0)
    b	.L0d950670
    li	$a3,7
.end __glKonParseInput

# Function: __glKonParseHostImage
# Declared: Line 834 (Source lines: 835-925)
# Address: 0x0d950700 - 0x0d950918 (Size: 536 bytes, Frame: 16)
.globl __glKonParseHostImage
.ent __glKonParseHostImage
__glKonParseHostImage:
    # Line 835
    addiu	$sp,$sp,-16
    # Line 836
    lw	$a3,24($a0)
    li	$t0,0x8ad0
    lw	$a6,4112($zero)
    # Line 835
    lui	$v0,0x14
    addiu	$v0,$v0,2264
    # Line 836
    andi	$a7,$a3,0x1
    addu	$a6,$a6,$t0
    # Line 850
    andi	$t2,$a3,0x20
    # Line 852
    lw	$a3,0($sp)
    # Line 836
    beqz	$a7,.L0d9508bc
    # Line 835
    addu	$at,$t9,$v0
    # Line 850
    lw	$a3,416($a6)
.L0d950734:
    # Line 852
    lw	$a4,156($a0)
.L0d950738:
    andi	$t1,$a4,0x80
    beqz	$t1,.L0d950878
    # Line 860
    la	$t1,.rodata
    # Line 856
    sw	$zero,172($a0)
    lw	$a4,4($a3)
    move	$t9,$zero
    beqz	$a4,.L0d9508cc
    # Line 858
    move	$a5,$a4
.L0d950758:
    # Line 860
    addiu	$t3,$a5,7
    la	$t1,.rodata
    addiu	$a4,$a5,14
    slt	$t2,$t3,$zero
    # Line 858
    move	$t8,$a5
    # Line 860
    movz	$a4,$t3,$t2
    addiu	$t1,$t1,10416
    sra	$a4,$a4,0x3
    sw	$a4,164($a0)
.L0d95077c:
    # Line 873
    lw	$t2,16($a3)
    sll	$t0,$t2,0x2
    addu	$t0,$t1,$t0
    lw	$t0,288($t0)
    and	$t0,$t0,$a4
    beqz	$t0,.L0d950834
    lw	$a5,4($a0)
    # Line 875
    subu	$t3,$t2,$t0
    # Line 877
    addu	$v0,$a4,$t3
    # Line 880
    mult	$v0,$a5
    # Line 875
    sw	$t3,176($a0)
    # Line 877
    sw	$v0,168($a0)
    # Line 893
    slti	$v1,$t3,4
    # Line 880
    mflo	$t1
    subu	$t1,$t1,$t3
    beqz	$a7,.L0d95084c
    sw	$t1,160($a0)
    # Line 893
    beqz	$v1,.L0d9507e0
    nop
.L0d9507c8:
    lw	$a1,0($a0)
    bne	$a1,$t8,.L0d9507e0
    nop
    lw	$a2,12($a3)
    beqz	$a2,.L0d9508d4
    # Line 898
    move	$a3,$zero
.L0d9507e0:
    # Line 896
    li	$a3,1
    sw	$a3,184($a0)
.L0d9507e8:
    # Line 901
    lw	$a4,-16516($at)
    slt	$a4,$a4,$t1
    beqz	$a4,.L0d95081c
    lw	$a5,-16512($at)
    li	$a4,1
    bne	$a3,$a4,.L0d950828
    nop
    lw	$a7,0($a0)
    mult	$a7,$t9
    mflo	$a6
    slt	$a5,$a5,$a6
    bnez	$a5,.L0d950828
    nop
.L0d95081c:
    # Line 904
    sw	$zero,180($a0)
    # Line 925
    jr	$ra
    addiu	$sp,$sp,16
.L0d950828:
    # Line 906
    sw	$a4,180($a0)
    # Line 925
    jr	$ra
    addiu	$sp,$sp,16
.L0d950834:
    # Line 880
    mult	$a5,$a4
    # Line 877
    sw	$a4,168($a0)
    # Line 875
    sw	$zero,176($a0)
    # Line 880
    mflo	$t1
    bnez	$a7,.L0d9507c8
    sw	$t1,160($a0)
.L0d95084c:
    # Line 918
    mult	$a5,$a4
    mflo	$t0
    sltiu	$t0,$t0,16369
    bnez	$t0,.L0d95086c
    # Line 920
    li	$t2,1
    # Line 918
    lw	$t1,320($a6)
    beqz	$t1,.L0d95090c
    nop
.L0d95086c:
    # Line 920
    sw	$t2,96($a0)
    # Line 925
    jr	$ra
    addiu	$sp,$sp,16
.L0d950878:
    # Line 863
    lw	$a5,148($a0)
    andi	$t0,$a4,0x1f00
    sll	$a5,$a5,0x2
    # Line 860
    addiu	$t1,$t1,10416
    # Line 863
    addu	$a5,$t1,$a5
    beqz	$t0,.L0d9508dc
    lw	$a5,112($a5)
    # Line 865
    move	$t9,$a5
    sw	$a5,172($a0)
.L0d95089c:
    # Line 867
    lw	$a4,4($a3)
    beqz	$a4,.L0d9508fc
    # Line 869
    move	$a5,$a4
.L0d9508a8:
    # Line 870
    mult	$t9,$a5
    # Line 869
    move	$t8,$a5
    # Line 870
    mflo	$a4
    b	.L0d95077c
    sw	$a4,164($a0)
.L0d9508bc:
    # Line 850
    beqz	$t2,.L0d950904
    nop
    # Line 852
    b	.L0d950734
    lw	$a3,412($a6)
.L0d9508cc:
    b	.L0d950758
    # Line 858
    lw	$a5,0($a0)
.L0d9508d4:
    b	.L0d9507e8
    # Line 898
    sw	$zero,184($a0)
.L0d9508dc:
    # Line 867
    lw	$t3,144($a0)
    sll	$t3,$t3,0x2
    addu	$t3,$t1,$t3
    lw	$t3,48($t3)
    mult	$t3,$a5
    mflo	$t9
    b	.L0d95089c
    sw	$t9,172($a0)
.L0d9508fc:
    b	.L0d9508a8
    # Line 869
    lw	$a5,0($a0)
.L0d950904:
    b	.L0d950738
    # Line 852
    lw	$a4,156($a0)
.L0d95090c:
    # Line 922
    sw	$zero,96($a0)
    # Line 925
    jr	$ra
    addiu	$sp,$sp,16
.end __glKonParseHostImage

# Function: GetConvolutionFilter
# Declared: Line 928 (Source lines: 930-944)
# Address: 0x0d950920 - 0x0d950964 (Size: 68 bytes, Frame: 0)
.globl GetConvolutionFilter
.ent GetConvolutionFilter
GetConvolutionFilter:
    # Line 934
    li	$v1,3552
    # Line 933
    beqz	$a0,.L0d950948
    # Line 930
    lw	$a3,4112($zero)
    # Line 933
    li	$at,3553
    beq	$a0,$at,.L0d950948
    # Line 944
    addiu	$v0,$a3,852
    xor	$v1,$a0,$v1
    # Line 940
    addiu	$a0,$a3,768
    # Line 937
    jr	$ra
    movz	$v0,$a0,$v1
.L0d950948:
    # Line 933
    lw	$a0,1792($a3)
    lui	$a1,0x400
    # Line 935
    addiu	$v0,$a3,852
    # Line 933
    and	$a0,$a0,$a1
    # Line 937
    addiu	$a1,$a3,936
    jr	$ra
    movz	$v0,$a1,$a0
.end GetConvolutionFilter

# Function: __glKonSendData
# Declared: Line 959 (Source lines: 960-1111)
# Address: 0x0d950970 - 0x0d950d8c (Size: 1052 bytes, Frame: 224)
.globl __glKonSendData
.ent __glKonSendData
__glKonSendData:
    # Line 961
    lw	$t0,4112($zero)
    # Line 960
    addiu	$sp,$sp,-224
    # Line 961
    li	$t1,0x8ad0
    sd	$s5,216($sp)
    addu	$t0,$t0,$t1
    lw	$a5,416($t0)
    lw	$t2,168($a0)
    lw	$t3,8($a5)
    sd	$s4,208($sp)
    sd	$s2,200($sp)
    multu	$t2,$t3
    # Line 960
    sd	$s1,160($sp)
    sd	$s3,176($sp)
    sd	$s0,168($sp)
    move	$s0,$a3
    move	$s3,$a2
    # Line 961
    lw	$a7,156($a0)
    # Line 960
    move	$s1,$a0
    sd	$ra,192($sp)
    lui	$t1,0x14
    # Line 961
    lw	$a6,20($a0)
    andi	$a7,$a7,0x80
    # Line 960
    addiu	$t1,$t1,1640
    sd	$gp,184($sp)
    addu	$gp,$t9,$t1
    # Line 961
    mflo	$t1
    lw	$a5,12($a5)
    beqz	$a7,.L0d950bf8
    addu	$a6,$a6,$t1
    # Line 969
    srl	$a2,$a5,0x3
    addu	$a2,$a6,$a2
.L0d9509ec:
    # Line 973
    lw	$a3,180($s1)
    beqz	$a3,.L0d950ba8
    # Line 983
    li	$s2,1
    sw	$s2,4($sp)
    # Line 982
    addiu	$a5,$sp,144
    sw	$a5,0($sp)
    # Line 983
    lw	$a4,156($s1)
    andi	$a4,$a4,0x80
    beqz	$a4,.L0d950c0c
    lw	$a0,184($s1)
    beqz	$a0,.L0d950b2c
    nop
    # Line 995
    bne	$a0,$s2,.L0d950a6c
    nop
    # Line 1000
    lw	$a0,416($t0)
    lw	$a0,12($a0)
    andi	$a0,$a0,0x7
    addu	$a0,$a1,$a0
    addiu	$a0,$a0,7
    srl	$a0,$a0,0x3
    # Line 1005
    multu	$s3,$a0
    # Line 1003
    sw	$a2,144($sp)
    # Line 1004
    sw	$a0,152($sp)
    # Line 1005
    mflo	$a3
    sw	$a3,148($sp)
    # Line 1006
    lw	$a6,168($s1)
    subu	$a0,$a6,$a0
    addu	$a6,$a6,$a0
    bltz	$a6,.L0d950d24
    # Line 1011
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1014
    b	.L0d950a84
    sw	$a0,156($sp)
.L0d950a6c:
    # Line 1016
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,144
    jal	fprintf
    addiu	$a0,$a0,32
.L0d950a84:
    # Line 1039
    beqz	$s0,.L0d950b64
    nop
.L0d950a8c:
    # Line 1044
    lw	$a4,0($s0)
    sw	$a4,8($sp)
    # Line 1045
    lw	$a3,4($s0)
    sw	$a3,12($sp)
    lw	$a2,4($s0)
    slti	$a2,$a2,1
    bnez	$a2,.L0d950b24
    li	$a0,2
    addiu	$a2,$sp,8
    addiu	$a1,$s0,8
    nop
    nop
    nop
.L0d950ac0:
    # Line 1047
    lw	$a6,0($a1)
    sw	$a6,8($a2)
    # Line 1046
    lw	$a5,4($s0)
    addiu	$a0,$a0,1
    addiu	$a5,$a5,2
    slt	$a5,$a0,$a5
    beqz	$a5,.L0d950b24
    nop
    # Line 1047
    lw	$t0,4($a1)
    sw	$t0,12($a2)
    # Line 1046
    lw	$a7,4($s0)
    addiu	$a0,$a0,1
    addiu	$a7,$a7,2
    slt	$a7,$a0,$a7
    beqz	$a7,.L0d950b24
    nop
    # Line 1047
    lw	$t2,8($a1)
    sw	$t2,16($a2)
    # Line 1046
    lw	$t1,4($s0)
    addiu	$a0,$a0,1
    addiu	$t1,$t1,2
    slt	$t1,$a0,$t1
    addiu	$a1,$a1,12
    bnez	$t1,.L0d950ac0
    addiu	$a2,$a2,12
.L0d950b24:
    # Line 1048
    b	.L0d950b68
    sw	$s2,136($sp)
.L0d950b2c:
    # Line 988
    lw	$ra,160($s1)
    li	$t8,-4
    addu	$ra,$ra,$a2
    # Line 990
    and	$t3,$t8,$ra
    # Line 995
    sw	$zero,156($sp)
    # Line 988
    andi	$t9,$ra,0x3
    # Line 990
    addiu	$t3,$t3,4
    # Line 993
    and	$t8,$t8,$a2
    sw	$t8,144($sp)
    movz	$t3,$ra,$t9
    # Line 994
    subu	$t3,$t3,$t8
    sw	$t3,152($sp)
    # Line 1039
    bnez	$s0,.L0d950a8c
    # Line 994
    sw	$t3,148($sp)
.L0d950b64:
    # Line 1050
    sw	$zero,136($sp)
.L0d950b68:
    # Line 1053
    # lw $t9, -31952($gp) # &__glKon_ioctl
    addiu	$a2,$sp,0
    li	$a1,10001
    jal	__glKon_ioctl
    lw	$a0,4112($zero)
    bltz	$v0,.L0d950c80
.L0d950b80:
    ld	$s5,216($sp)
.L0d950b84:
    ld	$s4,208($sp)
    ld	$s2,200($sp)
    # Line 1111
    ld	$gp,184($sp)
    ld	$ra,192($sp)
    ld	$s0,168($sp)
    ld	$s1,160($sp)
    ld	$s3,176($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d950ba8:
    # Line 1054
    beqz	$a7,.L0d950c98
    # Line 1059
    srl	$a2,$a5,0x3
    addu	$a2,$a6,$a2
.L0d950bb4:
    # Line 1067
    lw	$a0,184($s1)
    beqz	$a0,.L0d950d48
    li	$a3,1
    beq	$a0,$a3,.L0d950cac
    # Line 1079
    move	$s0,$a2
    # Line 1067
    li	$a4,2
    bne	$a0,$a4,.L0d950b84
    ld	$s5,216($sp)
    # Line 1100
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,192
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 1101
    # lw $t9, -18604($gp) # &exit
    jal	exit
    li	$a0,1
.L0d950bf8:
    # Line 973
    lw	$a3,172($a0)
    multu	$a3,$a5
    mflo	$a2
    b	.L0d9509ec
    addu	$a2,$a6,$a2
.L0d950c0c:
    # Line 1016
    beqz	$a0,.L0d950d0c
    nop
    # Line 1022
    bne	$a0,$s2,.L0d950c60
    nop
    # Line 1026
    sw	$a2,144($sp)
    # Line 1027
    lw	$a4,172($s1)
    mult	$a4,$a1
    mflo	$a0
    nop
    nop
    # Line 1028
    multu	$s3,$a0
    # Line 1027
    sw	$a0,152($sp)
    # Line 1028
    mflo	$a3
    sw	$a3,148($sp)
    # Line 1029
    lw	$a4,168($s1)
    subu	$a0,$a4,$a0
    addu	$a4,$a4,$a0
    bltz	$a4,.L0d950d7c
    # Line 1034
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1037
    b	.L0d950a84
    sw	$a0,156($sp)
.L0d950c60:
    # Line 1039
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,144
    jal	fprintf
    addiu	$a0,$a0,32
    b	.L0d950a84
    nop
.L0d950c80:
    # Line 1054
    # lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    jal	perror
    addiu	$a0,$a0,176
    b	.L0d950b84
    ld	$s5,216($sp)
.L0d950c98:
    # Line 1063
    lw	$a3,172($s1)
    multu	$a3,$a5
    mflo	$a2
    b	.L0d950bb4
    addu	$a2,$a6,$a2
.L0d950cac:
    # Line 1079
    beqz	$a7,.L0d950d34
    # Line 1081
    andi	$s4,$a5,0x7
    addu	$s4,$a1,$s4
    addiu	$s4,$s4,7
    srl	$s4,$s4,0x3
.L0d950cc0:
    # Line 1085
    blez	$s3,.L0d950b80
    li	$s5,-4
    move	$s2,$zero
    nop
.L0d950cd0:
    # Line 1094
    # lw $t9, -19580($gp) # &__glkon_datavn
    addu	$a1,$s4,$s0
    and	$a2,$s5,$s0
    addiu	$a1,$a1,3
    move	$a0,$a2
    and	$a1,$s5,$a1
    subu	$a1,$a1,$a2
    jal	__glkon_datavn
    srl	$a1,$a1,0x2
    # Line 1096
    lw	$a2,168($s1)
    # Line 1088
    addiu	$s2,$s2,1
    bne	$s3,$s2,.L0d950cd0
    # Line 1096
    addu	$s0,$a2,$s0
    b	.L0d950b84
    ld	$s5,216($sp)
.L0d950d0c:
    # Line 1020
    sw	$a2,144($sp)
    # Line 1021
    lw	$a3,160($s1)
    # Line 1022
    sw	$zero,156($sp)
    # Line 1021
    sw	$a3,152($sp)
    # Line 1022
    b	.L0d950a84
    # Line 1021
    sw	$a3,148($sp)
.L0d950d24:
    # Line 1011
    jalr	$t9
    li	$a0,1282
    b	.L0d950b84
    ld	$s5,216($sp)
.L0d950d34:
    # Line 1085
    lw	$a4,172($s1)
    mult	$a4,$a1
    mflo	$s4
    b	.L0d950cc0
    nop
.L0d950d48:
    # Line 1075
    lw	$a3,160($s1)
    # lw $t9, -19580($gp) # &__glkon_datavn
    addu	$a3,$a3,$a2
    li	$a1,-4
    addiu	$a3,$a3,3
    and	$a2,$a1,$a2
    move	$a0,$a2
    and	$a1,$a1,$a3
    subu	$a1,$a1,$a2
    jal	__glkon_datavn
    srl	$a1,$a1,0x2
    b	.L0d950b84
    ld	$s5,216($sp)
.L0d950d7c:
    # Line 1034
    jalr	$t9
    li	$a0,1282
    b	.L0d950b84
    ld	$s5,216($sp)
.end __glKonSendData

# Function: __glKonPushState
# Declared: Line 1117 (Source lines: 1119-1154)
# Address: 0x0d950d90 - 0x0d950e70 (Size: 224 bytes, Frame: 0)
.globl __glKonPushState
.ent __glKonPushState
__glKonPushState:
    # Line 1119
    lw	$a4,4112($zero)
    andi	$at,$a0,0x1
    beqz	$at,.L0d950db8
    addiu	$a3,$a4,640
    # Line 1122
    lbu	$a2,1144($a4)
    sb	$a2,0($a1)
    # Line 1123
    lbu	$v1,1145($a4)
    sb	$v1,1($a1)
    # Line 1124
    lw	$v0,1160($a4)
    sw	$v0,16($a1)
.L0d950db8:
    andi	$a4,$a0,0x4
    beqz	$a4,.L0d950ddc
    # Line 1138
    andi	$v1,$a0,0x8
    # Line 1127
    lbu	$a7,548($a3)
    sb	$a7,44($a1)
    # Line 1128
    lbu	$a6,549($a3)
    sb	$a6,45($a1)
    # Line 1129
    lw	$a5,564($a3)
    sw	$a5,60($a1)
.L0d950ddc:
    andi	$t0,$a0,0x2
    beqz	$t0,.L0d950e20
    nop
    # Line 1132
    lw	$v0,508($a3)
    sw	$v0,4($a1)
    # Line 1133
    lw	$at,512($a3)
    sw	$at,8($a1)
    # Line 1134
    lw	$t9,516($a3)
    sw	$t9,12($a1)
    # Line 1135
    lw	$t8,524($a3)
    sw	$t8,20($a1)
    # Line 1136
    lw	$t3,528($a3)
    sw	$t3,24($a1)
    # Line 1137
    lw	$t2,532($a3)
    sw	$t2,28($a1)
    # Line 1138
    lw	$t1,536($a3)
    sw	$t1,32($a1)
.L0d950e20:
    beqz	$v1,.L0d950e68
    nop
    # Line 1141
    lw	$t1,552($a3)
    sw	$t1,48($a1)
    # Line 1142
    lw	$t0,556($a3)
    sw	$t0,52($a1)
    # Line 1143
    lw	$a7,560($a3)
    sw	$a7,56($a1)
    # Line 1144
    lw	$a6,568($a3)
    sw	$a6,64($a1)
    # Line 1145
    lw	$a5,572($a3)
    sw	$a5,68($a1)
    # Line 1146
    lw	$a4,576($a3)
    sw	$a4,72($a1)
    # Line 1147
    lw	$a2,580($a3)
    # Line 1153
    sw	$a0,88($a1)
    # Line 1154
    jr	$ra
    # Line 1147
    sw	$a2,76($a1)
.L0d950e68:
    # Line 1154
    jr	$ra
    # Line 1153
    sw	$a0,88($a1)
.end __glKonPushState

# Function: __glKonDefaultState
# Declared: Line 1157 (Source lines: 1158-1193)
# Address: 0x0d950e70 - 0x0d951010 (Size: 416 bytes, Frame: 32)
.globl __glKonDefaultState
.ent __glKonDefaultState
__glKonDefaultState:
    # Line 1158
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    andi	$at,$a0,0x1
    lui	$v0,0x14
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,360
    sd	$gp,8($sp)
    beqz	$at,.L0d950ec8
    addu	$gp,$t9,$v0
    # Line 1162
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3328
    # Line 1163
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3329
    # Line 1164
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    li	$a1,4
    bal __glkonim_PixelStorei
    li	$a0,3333
.L0d950ec8:
    andi	$v1,$s0,0x4
    beqz	$v1,.L0d950f08
    # Line 1169
    andi	$a0,$s0,0x2
    # Line 1167
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3312
    # Line 1168
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3313
    # Line 1169
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    li	$a1,4
    bal __glkonim_PixelStorei
    li	$a0,3317
    andi	$a0,$s0,0x2
.L0d950f08:
    beqz	$a0,.L0d950f84
    # Line 1178
    andi	$a1,$s0,0x8
    # Line 1172
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3330
    # Line 1173
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3332
    # Line 1174
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3331
    # Line 1175
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,0x806b
    # Line 1176
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,0x806c
    # Line 1177
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,0x8130
    # Line 1178
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,0x8131
    andi	$a1,$s0,0x8
.L0d950f84:
    beqz	$a1,.L0d951000
    ld	$ra,16($sp)
    # Line 1181
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3314
    # Line 1182
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3316
    # Line 1183
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,3315
    # Line 1184
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,0x806d
    # Line 1185
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,0x806e
    # Line 1186
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,0x8132
    # Line 1187
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$zero
    bal __glkonim_PixelStorei
    li	$a0,0x8133
    ld	$ra,16($sp)
.L0d951000:
    ld	$s0,0($sp)
    # Line 1193
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glKonDefaultState

# Function: __glKonPopState
# Declared: Line 1196 (Source lines: 1197-1247)
# Address: 0x0d951010 - 0x0d9511bc (Size: 428 bytes, Frame: 32)
.globl __glKonPopState
.ent __glKonPopState
__glKonPopState:
    # Line 1197
    lw	$a2,88($a0)
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    lui	$v0,0x14
    andi	$at,$a2,0x1
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-56
    sd	$gp,8($sp)
    beqz	$at,.L0d951070
    addu	$gp,$t9,$v0
    # Line 1199
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lbu	$a1,0($a0)
    bal __glkonim_PixelStorei
    li	$a0,3328
    # Line 1201
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lbu	$a1,1($s0)
    bal __glkonim_PixelStorei
    li	$a0,3329
    # Line 1202
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,16($s0)
    bal __glkonim_PixelStorei
    li	$a0,3333
    lw	$a2,88($s0)
.L0d951070:
    andi	$v1,$a2,0x4
    beqz	$v1,.L0d9510b4
    # Line 1209
    andi	$a0,$a2,0x2
    # Line 1205
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lbu	$a1,44($s0)
    bal __glkonim_PixelStorei
    li	$a0,3312
    # Line 1207
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lbu	$a1,45($s0)
    bal __glkonim_PixelStorei
    li	$a0,3313
    # Line 1209
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,60($s0)
    bal __glkonim_PixelStorei
    li	$a0,3317
    lw	$a2,88($s0)
    andi	$a0,$a2,0x2
.L0d9510b4:
    beqz	$a0,.L0d951134
    # Line 1224
    andi	$a1,$a2,0x8
    # Line 1213
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,4($s0)
    bal __glkonim_PixelStorei
    li	$a0,3330
    # Line 1215
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,8($s0)
    bal __glkonim_PixelStorei
    li	$a0,3331
    # Line 1216
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,12($s0)
    bal __glkonim_PixelStorei
    li	$a0,3332
    # Line 1218
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,20($s0)
    bal __glkonim_PixelStorei
    li	$a0,0x806b
    # Line 1220
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,24($s0)
    bal __glkonim_PixelStorei
    li	$a0,0x806c
    # Line 1222
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,28($s0)
    bal __glkonim_PixelStorei
    li	$a0,0x8130
    # Line 1224
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,32($s0)
    bal __glkonim_PixelStorei
    li	$a0,0x8131
    lw	$a2,88($s0)
    andi	$a1,$a2,0x8
.L0d951134:
    beqz	$a1,.L0d9511a8
    # Line 1228
    nop	# was lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,48($s0)
    bal __glkonim_PixelStorei
    li	$a0,3314
    # Line 1230
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,52($s0)
    bal __glkonim_PixelStorei
    li	$a0,3315
    # Line 1232
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,56($s0)
    bal __glkonim_PixelStorei
    li	$a0,3316
    # Line 1234
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,64($s0)
    bal __glkonim_PixelStorei
    li	$a0,0x806d
    # Line 1236
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,68($s0)
    bal __glkonim_PixelStorei
    li	$a0,0x806e
    # Line 1238
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,72($s0)
    bal __glkonim_PixelStorei
    li	$a0,0x8132
    # Line 1240
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,76($s0)
    bal __glkonim_PixelStorei
    li	$a0,0x8133
.L0d9511a8:
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 1247
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glKonPopState

# Function: __glKonSetPixelLEModes
# Declared: Line 1250 (Source lines: 1251-1255)
# Address: 0x0d9511c0 - 0x0d951214 (Size: 84 bytes, Frame: 16)
.globl __glKonSetPixelLEModes
.ent __glKonSetPixelLEModes
__glKonSetPixelLEModes:
    # Line 1251
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-488
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 1252
    # lw $t9, -32296($gp) # &__glKonPushState
    # Line 1251
    move	$a1,$a0
    sd	$ra,0($sp)
    # Line 1252
    bal __glKonPushState
    li	$a0,12
    # Line 1253
    # lw $t9, -32292($gp) # &__glKonDefaultState
    bal __glKonDefaultState
    li	$a0,12
    # Line 1254
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    li	$a1,1
    bal __glkonim_PixelStorei
    li	$a0,3317
    ld	$ra,0($sp)
    # Line 1255
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glKonSetPixelLEModes

# Function: __glKonUnsetLEModes
# Declared: Line 1258 (Source lines: 1259-1261)
# Address: 0x0d951220 - 0x0d951254 (Size: 52 bytes, Frame: 16)
.globl __glKonUnsetLEModes
.ent __glKonUnsetLEModes
__glKonUnsetLEModes:
    # Line 1259
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-584
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 1260
    # lw $t9, -32288($gp) # &__glKonPopState
    # Line 1259
    sd	$ra,0($sp)
    # Line 1260
    bal __glKonPopState
    nop
    ld	$ra,0($sp)
    # Line 1261
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glKonUnsetLEModes

# Function: SetSubrectState
# Declared: Line 1285 (Source lines: 1287-1351)
# Address: 0x0d951260 - 0x0d9512f8 (Size: 152 bytes, Frame: 48)
.ent SetSubrectState
SetSubrectState:
    # Line 1287
    addiu	$sp,$sp,-48
    sd	$a2,0($sp)
    sd	$s0,8($sp)
    # Line 1343
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    # Line 1287
    sd	$s1,16($sp)
    # Line 1343
    sll	$t8,$a4,0x2
    la	$s1,.rodata
    # Line 1287
    sd	$s2,24($sp)
    move	$s2,$a1
    # Line 1343
    subu	$t8,$t8,$a4
    lw	$a1,12($a3)
    sll	$t8,$t8,0x2
    addiu	$s1,$s1,10952
    # Line 1287
    move	$s0,$a3
    sd	$ra,32($sp)
    # Line 1343
    addu	$s1,$s1,$t8
    addu	$a1,$a0,$a1
    bal __glkonim_PixelStorei
    lw	$a0,4($s1)
    # Line 1345
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,8($s0)
    lw	$a0,8($s1)
    bal __glkonim_PixelStorei
    addu	$a1,$s2,$a1
    lw	$a2,4($s0)
    beqz	$a2,.L0d9512e0
    ld	$s2,24($sp)
    ld	$ra,32($sp)
.L0d9512d0:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 1351
    jr	$ra
    addiu	$sp,$sp,48
.L0d9512e0:
    # Line 1348
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    ld	$a1,0($sp)
    bal __glkonim_PixelStorei
    lw	$a0,0($s1)
    b	.L0d9512d0
    ld	$ra,32($sp)
.end SetSubrectState

# Function: ResetSubrectState
# Declared: Line 1355 (Source lines: 1379-1379)
# Address: 0x0d951300 - 0x0d951308 (Size: 8 bytes, Frame: 0)
.ent ResetSubrectState
ResetSubrectState:
    # Line 1379
    jr	$ra
    nop
.end ResetSubrectState

# Function: GetSingleCompFromPipe
# Declared: Line 1385 (Source lines: 1386-1391)
# Address: 0x0d951310 - 0x0d95136c (Size: 92 bytes, Frame: 32)
.globl GetSingleCompFromPipe
.ent GetSingleCompFromPipe
GetSingleCompFromPipe:
    # Line 1389
    li	$v0,278
    sw	$v0,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    sw	$a2,16384($zero)
    # Line 1386
    lui	$at,0x14
    # Line 1389
    sw	$a3,16384($zero)
    # Line 1386
    addiu	$sp,$sp,-32
    addiu	$at,$at,-824
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1390
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 1386
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 1390
    bal __glkona_wait_rdata
    # Line 1387
    lw	$s8,4112($zero)
    # Line 1391
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    lw	$v0,31588($s8)
    ld	$s8,8($sp)
    lw	$v0,8($v0)
    jr	$ra
    addiu	$sp,$sp,32
.end GetSingleCompFromPipe

# Function: __glkonim_DrawPixels
# Declared: Line 1406 (Source lines: 1408-1428)
# Address: 0x0d951370 - 0x0d951444 (Size: 212 bytes, Frame: 224)
.globl __glkonim_DrawPixels
.ent __glkonim_DrawPixels
__glkonim_DrawPixels:
    # Line 1408
    addiu	$sp,$sp,-224
    sd	$a1,192($sp)
    lw	$at,4120($zero)
    sd	$a0,200($sp)
    li	$v0,1
    lui	$v1,0x14
    sd	$ra,216($sp)
    addiu	$v1,$v1,-920
    sd	$gp,208($sp)
    beq	$at,$v0,.L0d951430
    addu	$gp,$t9,$v1
    # Line 1419
    sw	$zero,32($sp)
    # Line 1418
    li	$a5,65
    sw	$a5,24($sp)
    # Line 1417
    sw	$a4,20($sp)
    # Line 1416
    sw	$a3,16($sp)
    # Line 1421
    ld	$a1,200($sp)
    # Line 1415
    sw	$a2,12($sp)
    # Line 1421
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 1414
    ld	$a2,192($sp)
    sw	$a2,4($sp)
    # Line 1421
    addiu	$a0,$sp,0
    bal __glKonParseInput
    # Line 1413
    sw	$a1,0($sp)
    # Line 1421
    beqz	$v0,.L0d9513e4
.L0d9513d4:
    ld	$ra,216($sp)
.L0d9513d8:
    # Line 1428
    ld	$gp,208($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9513e4:
    # Line 1422
    # lw $t9, -32320($gp) # &__glKonParseErrorDraw
    bal __glKonParseErrorDraw
    addiu	$a0,$sp,0
    bnez	$v0,.L0d9513d4
    # Line 1423
    ld	$a7,192($sp)
    ld	$a6,200($sp)
    beqz	$a6,.L0d9513d8
    ld	$ra,216($sp)
    beqz	$a7,.L0d9513d8
    ld	$ra,216($sp)
    # Line 1425
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    bal __glKonParseHostImage
    addiu	$a0,$sp,0
    # Line 1427
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,5328
    bal __glkonle_DrawPixels
    addiu	$a0,$sp,0
    b	.L0d9513d8
    ld	$ra,216($sp)
.L0d951430:
    # Line 1410
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9513d8
    ld	$ra,216($sp)
.end __glkonim_DrawPixels

# Function: __glkonle_DrawPixels
# Declared: Line 1432 (Source lines: 1434-1439)
# Address: 0x0d951450 - 0x0d9514c8 (Size: 120 bytes, Frame: 160)
.globl __glkonle_DrawPixels
.ent __glkonle_DrawPixels
__glkonle_DrawPixels:
    # Line 1434
    addiu	$sp,$sp,-160
    sd	$a5,120($sp)
    sd	$a4,128($sp)
    lui	$at,0x14
    sd	$a3,136($sp)
    addiu	$at,$at,-1144
    sd	$gp,112($sp)
    addu	$gp,$t9,$at
    # Line 1436
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    # Line 1434
    sd	$a2,144($sp)
    # Line 1436
    addiu	$a0,$sp,0
    # Line 1434
    sd	$s8,104($sp)
    sd	$ra,96($sp)
    # Line 1436
    bal __glKonSetPixelLEModes
    # Line 1434
    move	$s8,$a1
    # Line 1437
    ld	$a1,144($sp)
    # lw $t9, -32272($gp) # &__glkonim_DrawPixels
    ld	$a2,136($sp)
    ld	$a3,128($sp)
    move	$a0,$s8
    bal __glkonim_DrawPixels
    ld	$a4,120($sp)
    # Line 1438
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    ld	$s8,104($sp)
    bal __glKonUnsetLEModes
    addiu	$a0,$sp,0
    ld	$ra,96($sp)
    # Line 1439
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end __glkonle_DrawPixels

# Function: DrawPixels
# Declared: Line 1458 (Source lines: 1459-1687)
# Address: 0x0d9514d0 - 0x0d951aa0 (Size: 1488 bytes, Frame: 144)
.ent DrawPixels
DrawPixels:
    # Line 1459
    addiu	$sp,$sp,-272
    # Line 1476
    lw	$a5,152($a0)
    # Line 1459
    sd	$s1,216($sp)
    # Line 1460
    lw	$a3,4112($zero)
    # Line 1476
    andi	$v0,$a5,0x3000
    # Line 1459
    move	$s1,$a0
    sd	$s4,224($sp)
    # Line 1461
    li	$s4,0x8ad0
    sd	$ra,240($sp)
    # Line 1476
    beqz	$v0,.L0d951538
    # Line 1461
    addu	$s4,$a3,$s4
.L0d9514fc:
    # Line 1680
    lw	$a6,0($s1)
    sd	$s2,256($sp)
.L0d951504:
    # Line 1685
    # lw $t9, -32744($gp) # &sub_0d950000
.L0d951508:
    addiu	$t9,$t9,6816
    ld	$s2,256($sp)
    move	$a0,$s1
    move	$a1,$a6
    move	$a3,$zero
    bal __glkonle_DrawPixels
    lw	$a2,4($s1)
.L0d951524:
    ld	$ra,240($sp)
.L0d951528:
    # Line 1687
    ld	$s1,216($sp)
    ld	$s4,224($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d951538:
    # Line 1476
    lw	$a6,1796($a3)
    andi	$a0,$a6,0x100
    beqz	$a0,.L0d951708
    nop
    lw	$ra,1380($a3)
    li	$at,0x81c6
    beq	$ra,$at,.L0d951718
    nop
.L0d951558:
    # Line 1510
    beqz	$a0,.L0d9517e4
    nop
    lw	$v1,1792($a3)
    lui	$a0,0xc00
    and	$v1,$v1,$a0
    beqz	$v1,.L0d951584
    nop
    lw	$a1,1380($a3)
    li	$a2,0x81c5
    beq	$a1,$a2,.L0d95181c
    # Line 1518
    nop	# was lw $t9, -32304($gp) # &GetConvolutionFilter
.L0d951584:
    # Line 1640
    bnez	$v0,.L0d9514fc
    nop
.L0d95158c:
    lw	$a4,1792($a3)
    lui	$a5,0x3000
    and	$a4,$a4,$a5
    beqz	$a4,.L0d951a40
    nop
    lw	$a6,31580($a3)
    andi	$a6,$a6,0x4
    beqz	$a6,.L0d951a58
    # Line 1645
    li	$a7,1
    sw	$a7,180($s1)
    sd	$s2,256($sp)
.L0d9515b8:
    # Line 1650
    lw	$s2,260($s4)
    lw	$a6,0($s1)
    slt	$t0,$s2,$a6
    beqz	$t0,.L0d951508
    # Line 1685
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 1653
    lw	$t3,416($s4)
    lw	$t8,12($t3)
    # Line 1654
    lw	$t3,4($t3)
    # Line 1657
    li	$t2,1
    sw	$t2,184($s1)
    lw	$t1,416($s4)
    lw	$t1,4($t1)
    # Line 1653
    sd	$t8,192($sp)
    # Line 1657
    beqz	$t1,.L0d951a64
    # Line 1654
    sd	$t3,184($sp)
.L0d9515f4:
    # Line 1663
    mtc1	$s2,$f1
    mtc1	$a6,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$t9,$f0
    mult	$t9,$s2
    teq	$s2,$zero,0x7
    sd	$s3,264($sp)
    mflo	$a1
    sd	$t9,208($sp)
    blez	$t9,.L0d951a4c
    subu	$a1,$a6,$a1
    move	$s3,$zero
    sd	$s0,248($sp)
    move	$s0,$zero
    nop
    nop
.L0d951640:
    # Line 1666
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,6816
    move	$a0,$s1
    move	$a1,$s2
    lw	$a2,4($s1)
    bal __glkonle_DrawPixels
    move	$a3,$s3
    # Line 1667
    lw	$a1,416($s4)
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    lw	$a1,12($a1)
    li	$a0,3316
    bal __glkonim_PixelStorei
    addu	$a1,$s2,$a1
    # Line 1665
    ld	$a2,208($sp)
    addiu	$s0,$s0,1
    bne	$a2,$s0,.L0d951640
    # Line 1669
    addu	$s3,$s2,$s3
    # Line 1665
    lw	$a1,0($s1)
    mtc1	$s2,$f2
    mtc1	$a1,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a3,$f1
    mult	$a3,$s2
    ld	$s0,248($sp)
    mflo	$a2
    teq	$s2,$zero,0x7
    ld	$s2,256($sp)
    subu	$a1,$a1,$a2
.L0d9516bc:
    beqz	$a1,.L0d9516e0
    # Line 1677
    nop	# was lw $t9, -32204($gp) # &__glkonim_PixelStorei
    # Line 1672
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,6816
    move	$a0,$s1
    lw	$a2,4($s1)
    bal __glkonle_DrawPixels
    move	$a3,$s3
    # Line 1677
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
.L0d9516e0:
    ld	$s3,264($sp)
    ld	$a1,184($sp)
    bal __glkonim_PixelStorei
    li	$a0,3314
    # Line 1678
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    ld	$a1,192($sp)
    bal __glkonim_PixelStorei
    li	$a0,3316
    b	.L0d951528
    ld	$ra,240($sp)
.L0d951708:
    # Line 1510
    bnez	$v0,.L0d9514fc
    nop
    b	.L0d951558
    nop
.L0d951718:
    # Line 1478
    lw	$a1,0($s1)
    slti	$ra,$a1,2
    sd	$s0,248($sp)
    bnez	$ra,.L0d9517f8
    move	$s0,$a1
    move	$v0,$zero
.L0d951730:
    sra	$s0,$s0,0x1
    slti	$at,$s0,2
    addiu	$v0,$v0,1
    bnez	$at,.L0d951758
    # Line 1481
    slti	$a0,$v0,9
    # Line 1478
    sra	$s0,$s0,0x1
    slti	$v1,$s0,2
    beqz	$v1,.L0d951730
    addiu	$v0,$v0,1
    # Line 1481
    slti	$a0,$v0,9
.L0d951758:
    beqz	$a0,.L0d951808
    ld	$s0,248($sp)
    la	$a2,.rodata
    sll	$a4,$v0,0x2
    addiu	$a2,$a2,10416
    addu	$a2,$a2,$a4
    lw	$a2,0($a2)
    bne	$a2,$a1,.L0d951808
    move	$s0,$s0
.L0d95177c:
    # Line 1493
    lw	$a4,156($s1)
    dsll32	$a4,$a4,0xb
    bgez	$a4,.L0d951524
    andi	$a7,$a5,0x4f
    beqz	$a7,.L0d951528
    ld	$ra,240($sp)
    lw	$t0,1792($a3)
    lui	$t1,0x3000
    and	$t0,$t0,$t1
    bnez	$t0,.L0d951524
    andi	$t2,$a6,0x7
    bnez	$t2,.L0d951524
    sd	$a3,232($sp)
    # Line 1504
    ld	$t3,232($sp)
    # Line 1506
    # lw $t9, -32744($gp) # &sub_0d950000
    # Line 1504
    lw	$t3,31580($t3)
    # Line 1506
    move	$a3,$zero
    addiu	$t9,$t9,6816
    lw	$a2,4($s1)
    move	$a0,$s1
    # Line 1504
    andi	$t3,$t3,0x4
    sltu	$t3,$zero,$t3
    # Line 1506
    bal __glkonle_DrawPixels
    # Line 1504
    sw	$t3,180($s1)
    b	.L0d951528
    ld	$ra,240($sp)
.L0d9517e4:
    # Line 1640
    beqz	$v0,.L0d95158c
    nop
    # Line 1680
    lw	$a6,0($s1)
    b	.L0d951504
    sd	$s2,256($sp)
.L0d9517f8:
    # Line 1481
    la	$t8,.rodata
    lw	$t8,10416($t8)
    beq	$t8,$a1,.L0d95177c
    ld	$s0,248($sp)
.L0d951808:
    # Line 1484
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d951528
    ld	$ra,240($sp)
.L0d95181c:
    sd	$a3,232($sp)
    # Line 1518
    move	$a0,$zero
    bal GetConvolutionFilter
    ld	$s4,232($sp)
    lw	$a0,64($v0)
    beqz	$a0,.L0d951a7c
    lw	$a6,0($s1)
    # Line 1520
    addiu	$v0,$a0,-1
    # Line 1510
    slt	$t9,$v0,$a6
    beqz	$t9,.L0d951528
    ld	$ra,240($sp)
.L0d951848:
    # Line 1532
    lw	$ra,31580($s4)
    andi	$ra,$ra,0x4
    beqz	$ra,.L0d951a90
    # Line 1540
    li	$at,1
    sw	$at,180($s1)
.L0d95185c:
    # Line 1552
    sll	$v1,$a0,0x3
    lui	$a1,0x1
    addu	$v1,$s4,$v1
    addu	$v1,$v1,$a1
    sd	$v1,128($sp)
    lw	$v1,-29740($v1)
    sd	$v1,136($sp)
    slt	$v1,$v1,$a6
    sd	$v0,144($sp)
    beqz	$v1,.L0d951504
    sd	$s2,256($sp)
    # Line 1554
    lw	$a3,100($s1)
    # lw $t9, -32276($gp) # &GetSingleCompFromPipe
    lw	$a2,148($s1)
    lw	$a1,144($s1)
    bal GetSingleCompFromPipe
    lw	$a0,24($s1)
    # Line 1558
    beqz	$v0,.L0d951a98
    lw	$a6,0($s1)
    ld	$a3,128($sp)
    lw	$a3,-29744($a3)
    slt	$a0,$a3,$a6
    beqz	$a0,.L0d951504
    sd	$s2,256($sp)
.L0d9518bc:
    # Line 1574
    ld	$t0,144($sp)
    # Line 1575
    ld	$s4,136($sp)
    # Line 1574
    subu	$a4,$a6,$t0
    # Line 1575
    movn	$s4,$a3,$v0
    mtc1	$a4,$f2
    subu	$t0,$s4,$t0
    mtc1	$t0,$f3
    cvt.d.w	$f2,$f2
    cvt.d.w	$f3,$f3
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$a7,$f2
    mult	$a7,$t0
    # Line 1567
    li	$a5,1
    sw	$a5,184($s1)
    # Line 1582
    # lw $t9, -32296($gp) # &__glKonPushState
    addiu	$a1,$sp,8
    li	$a0,8
    # Line 1575
    sd	$t0,176($sp)
    teq	$t0,$zero,0x7
    sd	$a7,208($sp)
    mflo	$a6
    subu	$a4,$a4,$a6
    # Line 1582
    bal __glKonPushState
    sd	$a4,152($sp)
    # Line 1583
    ld	$t1,208($sp)
    li	$t2,1
    sw	$t2,104($sp)
    blez	$t1,.L0d9519b0
    sd	$s4,168($sp)
    sd	$s0,248($sp)
    la	$s4,sub_0d950000
    move	$s0,$zero
    sd	$zero,200($sp)
    addiu	$t8,$sp,8
    addiu	$t8,$t8,44
    sd	$t8,160($sp)
    addiu	$s4,$s4,6816
.L0d951954:
    # Line 1617
    # lw $t9, -32744($gp) # &sub_0d950000
    ld	$a0,200($sp)
    addiu	$t9,$t9,4704
    move	$a1,$zero
    addiu	$a5,$sp,104
    ld	$a3,160($sp)
    move	$a4,$zero
    bal __glKonUnsetLEModes
    lw	$a2,0($s1)
    # Line 1620
    ld	$a1,168($sp)
    move	$t9,$s4
    lw	$a2,4($s1)
    move	$a0,$s1
    bal __glkonle_DrawPixels
    ld	$a3,200($sp)
    # Line 1616
    ld	$at,200($sp)
    ld	$ra,208($sp)
    addiu	$s0,$s0,1
    ld	$v0,176($sp)
    addu	$at,$v0,$at
    bne	$ra,$s0,.L0d951954
    sd	$at,200($sp)
    ld	$s0,248($sp)
.L0d9519b0:
    ld	$v1,152($sp)
    la	$v0,sub_0d950000
    addiu	$t0,$sp,8
    beqz	$v1,.L0d951a18
    addiu	$v0,$v0,4704
    # Line 1626
    ld	$a1,208($sp)
    ld	$a0,176($sp)
    mult	$a0,$a1
    addiu	$a5,$sp,104
    ld	$s4,144($sp)
    move	$a4,$zero
    move	$t9,$v0
    addiu	$a3,$t0,44
    lw	$a2,0($s1)
    move	$a1,$zero
    mflo	$a0
    bal __glKonUnsetLEModes
    sd	$a0,120($sp)
    # Line 1629
    # lw $t9, -32744($gp) # &sub_0d950000
    ld	$a1,152($sp)
    addiu	$t9,$t9,6816
    move	$a0,$s1
    lw	$a2,4($s1)
    ld	$a3,120($sp)
    bal __glkonle_DrawPixels
    addu	$a1,$a1,$s4
.L0d951a18:
    # Line 1634
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,4864
    move	$a0,$zero
    bal __glKonUnsetLEModes
    addiu	$a1,$sp,104
    # Line 1635
    # lw $t9, -32288($gp) # &__glKonPopState
    bal __glKonPopState
    addiu	$a0,$sp,8
    b	.L0d951528
    ld	$ra,240($sp)
.L0d951a40:
    # Line 1680
    lw	$a6,0($s1)
    b	.L0d951504
    sd	$s2,256($sp)
.L0d951a4c:
    ld	$s2,256($sp)
    b	.L0d9516bc
    # Line 1665
    move	$s3,$zero
.L0d951a58:
    # Line 1647
    sw	$zero,180($s1)
    b	.L0d9515b8
    sd	$s2,256($sp)
.L0d951a64:
    # Line 1660
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    move	$a1,$a6
    bal __glkonim_PixelStorei
    li	$a0,3314
    b	.L0d9515f4
    lw	$a6,0($s1)
.L0d951a7c:
    # Line 1532
    blez	$a6,.L0d951528
    ld	$ra,240($sp)
    li	$a0,1
    b	.L0d951848
    move	$v0,$zero
.L0d951a90:
    b	.L0d95185c
    # Line 1542
    sw	$zero,180($s1)
.L0d951a98:
    b	.L0d9518bc
    # Line 1558
    lw	$a3,0($sp)
.end DrawPixels

# Function: DoDrawPixelsOrTexels
# Declared: Line 1691 (Source lines: 1692-1765)
# Address: 0x0d951aa0 - 0x0d951db0 (Size: 784 bytes, Frame: 224)
.ent DoDrawPixelsOrTexels
DoDrawPixelsOrTexels:
    # Line 1697
    lw	$a7,180($a0)
    # Line 1693
    lw	$a6,4112($zero)
    # Line 1692
    addiu	$sp,$sp,-96
    move	$a5,$a3
    # Line 1697
    beqz	$a7,.L0d951bfc
    sd	$ra,88($sp)
.L0d951ab8:
    lw	$a3,24($a0)
    andi	$a3,$a3,0x80
    beqz	$a3,.L0d951bac
    # Line 1716
    li	$ra,372
    # Line 1704
    lw	$a7,132($a0)
    ori	$a7,$a7,0x4
    # Line 1712
    beqz	$a3,.L0d951bac
    # Line 1704
    sw	$a7,132($a0)
    # Line 1712
    lw	$t0,1796($a6)
    andi	$t0,$t0,0x20
    beqz	$t0,.L0d951aec
    ori	$t1,$a7,0x8000
    sw	$t1,132($a0)
.L0d951aec:
    # Line 1716
    sw	$ra,0($sp)
    # Line 1717
    lw	$t9,32($a0)
    # Line 1718
    sw	$a2,16($sp)
    sw	$a1,12($sp)
    # Line 1717
    sw	$t9,8($sp)
    # Line 1719
    lw	$t8,144($a0)
    sw	$t8,20($sp)
    lw	$t3,148($a0)
    sw	$t3,24($sp)
    # Line 1720
    lw	$t2,20($a0)
    andi	$t2,$t2,0x3
    sw	$t2,28($sp)
    lw	$t1,180($a0)
    sw	$t1,32($sp)
    # Line 1721
    lw	$t0,184($a0)
    sw	$a5,40($sp)
    sw	$t0,36($sp)
    # Line 1722
    lw	$a7,100($a0)
    sw	$a7,44($sp)
    lw	$a6,104($a0)
    sw	$a6,48($sp)
    # Line 1723
    lw	$a4,108($a0)
    sw	$a4,52($sp)
    lw	$a3,112($a0)
    sw	$a3,56($sp)
    # Line 1724
    lw	$v1,116($a0)
    sw	$v1,60($sp)
    lw	$v0,120($a0)
    sw	$v0,64($sp)
    # Line 1725
    lw	$at,124($a0)
    sw	$at,68($sp)
    lw	$ra,128($a0)
    sw	$ra,72($sp)
    # Line 1726
    lw	$t9,132($a0)
    sw	$t9,76($sp)
    lw	$t8,136($a0)
    sw	$t8,80($sp)
    # Line 1727
    lw	$t2,140($a0)
    # Line 1728
    li	$t3,20
    sw	$t3,4($sp)
    # Line 1712
    addiu	$a3,$sp,0
    # Line 1727
    sw	$t2,84($sp)
.L0d951b94:
    # Line 1764
    # lw $t9, -32300($gp) # &__glKonSendData
    bal __glKonSendData
    nop
    ld	$ra,88($sp)
    # Line 1765
    jr	$ra
    addiu	$sp,$sp,96
.L0d951bac:
    # Line 1748
    sw	$a2,12($sp)
    sw	$a1,8($sp)
    # Line 1747
    li	$a7,58
    sw	$a7,0($sp)
    # Line 1749
    lw	$a6,144($a0)
    sw	$a6,16($sp)
    lw	$a4,148($a0)
    sw	$a4,20($sp)
    # Line 1750
    lw	$a3,20($a0)
    andi	$a3,$a3,0x3
    sw	$a3,24($sp)
    # Line 1751
    lw	$v1,180($a0)
    sw	$v1,28($sp)
    lw	$at,184($a0)
    # Line 1753
    li	$v0,8
    sw	$v0,4($sp)
    # Line 1752
    sw	$a5,36($sp)
    # Line 1731
    addiu	$a3,$sp,0
    b	.L0d951b94
    # Line 1751
    sw	$at,32($sp)
.L0d951bfc:
    # Line 1697
    lw	$t0,152($a0)
    andi	$t0,$t0,0x3000
    beqz	$t0,.L0d951cd8
    nop
.L0d951c0c:
    # Line 1703
    lw	$t1,24($a0)
.L0d951c10:
    andi	$t1,$t1,0x80
    beqz	$t1,.L0d951d20
    # Line 1756
    li	$t0,58
    # Line 1703
    lw	$t2,1796($a6)
    lw	$a3,132($a0)
    andi	$t2,$t2,0x20
    # Line 1731
    li	$t1,372
    # Line 1703
    beqz	$t2,.L0d951c3c
    move	$t0,$a3
    # Line 1712
    ori	$t0,$a3,0x8000
    sw	$t0,132($a0)
.L0d951c3c:
    # Line 1731
    lw	$t3,140($a0)
    lw	$t8,136($a0)
    lw	$t9,128($a0)
    lw	$ra,124($a0)
    lw	$at,120($a0)
    lw	$v0,116($a0)
    lw	$v1,112($a0)
    sw	$t1,16384($zero)
    lw	$t1,148($a0)
    lw	$t2,144($a0)
    lw	$a4,32($a0)
    sw	$a4,16384($zero)
    lw	$a4,108($a0)
    sw	$a1,16384($zero)
    sw	$a2,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    lw	$t1,100($a0)
    lw	$a6,20($a0)
    lw	$t2,184($a0)
    andi	$a6,$a6,0x3
    sw	$a6,16384($zero)
    sw	$a7,16384($zero)
    sw	$t2,16384($zero)
    sw	$a5,16384($zero)
    sw	$t1,16384($zero)
    lw	$a6,104($a0)
    sw	$a6,16384($zero)
    sw	$a4,16384($zero)
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    sw	$ra,16384($zero)
    sw	$t9,16384($zero)
    sw	$t0,16384($zero)
    sw	$t8,16384($zero)
    # Line 1712
    move	$a3,$zero
    b	.L0d951b94
    # Line 1731
    sw	$t3,16384($zero)
.L0d951cd8:
    # Line 1697
    lw	$t2,1796($a6)
    andi	$t2,$t2,0x100
    lui	$ra,0x3000
    beqz	$t2,.L0d951cf8
    li	$t8,0x81c5
    lw	$t3,1380($a6)
    beq	$t3,$t8,.L0d951d60
    nop
.L0d951cf8:
    lw	$t9,1792($a6)
.L0d951cfc:
    and	$t9,$t9,$ra
    beqz	$t9,.L0d951c0c
    nop
.L0d951d08:
    lw	$at,31580($a6)
    andi	$at,$at,0x4
    bnez	$at,.L0d951ab8
    nop
    b	.L0d951c10
    # Line 1703
    lw	$t1,24($a0)
.L0d951d20:
    # Line 1756
    sw	$t0,16384($zero)
    sw	$a1,16384($zero)
    sw	$a2,16384($zero)
    lw	$v0,184($a0)
    lw	$a4,148($a0)
    lw	$a6,144($a0)
    sw	$a6,16384($zero)
    lw	$v1,20($a0)
    sw	$a4,16384($zero)
    andi	$v1,$v1,0x3
    sw	$v1,16384($zero)
    sw	$a7,16384($zero)
    sw	$v0,16384($zero)
    # Line 1712
    move	$a3,$zero
    b	.L0d951b94
    # Line 1756
    sw	$a5,16384($zero)
.L0d951d60:
    # Line 1697
    lw	$a3,32($a0)
    beqz	$a3,.L0d951d94
    li	$t1,3553
    beq	$a3,$t1,.L0d951d94
    li	$t2,3552
.L0d951d74:
    bne	$a3,$t2,.L0d951cf8
    nop
    lw	$t3,1792($a6)
    dsll32	$t3,$t3,0x6
    bltz	$t3,.L0d951d08
    nop
    b	.L0d951cfc
    lw	$t9,1792($a6)
.L0d951d94:
    lw	$t8,1792($a6)
    lui	$t9,0xc00
    and	$t8,$t8,$t9
    bnez	$t8,.L0d951d08
    nop
    b	.L0d951d74
    li	$t2,3552
.end DoDrawPixelsOrTexels

# Function: __glkon_OverlappedCopy
# Declared: Line 1792 (Source lines: 1794-1856)
# Address: 0x0d951db0 - 0x0d951f0c (Size: 348 bytes, Frame: 176)
.globl __glkon_OverlappedCopy
.ent __glkon_OverlappedCopy
__glkon_OverlappedCopy:
    # Line 1794
    addiu	$sp,$sp,-176
    sd	$a4,128($sp)
    sd	$a3,136($sp)
    lui	$at,0x14
    sd	$ra,104($sp)
    addiu	$at,$at,-3544
    sd	$gp,120($sp)
    addu	$gp,$t9,$at
    # Line 1805
    # lw $t9, -32296($gp) # &__glKonPushState
    # Line 1794
    sd	$a1,152($sp)
    # Line 1805
    addiu	$a1,$sp,0
    # Line 1794
    sd	$s5,96($sp)
    move	$s5,$a0
    # Line 1805
    li	$a0,15
    bal __glKonPushState
    sd	$a2,144($sp)
    # Line 1808
    # lw $t9, -32292($gp) # &__glKonDefaultState
    li	$a0,15
    bal __glKonDefaultState
    sd	$s0,160($sp)
    # Line 1824
    ld	$a4,128($sp)
    ld	$a3,136($sp)
    ld	$a2,144($sp)
    ld	$a1,152($sp)
    # Line 1810
    li	$at,273
    sw	$at,16384($zero)
    # Line 1812
    lw	$v1,4112($zero)
    # Line 1824
    # lw $t9, -32744($gp) # &sub_0d950000
    move	$a0,$s5
    # Line 1810
    li	$ra,4
    sw	$ra,16384($zero)
    # Line 1815
    lui	$v0,0x3c00
    # Line 1824
    addiu	$t9,$t9,10912
    # Line 1812
    lw	$s0,1792($v1)
    # Line 1810
    lui	$a5,0x6000
    sw	$a5,16384($zero)
    # Line 1815
    nor	$v0,$v0,$zero
    and	$v0,$s0,$v0
    # Line 1824
    bal __glkonim_CopyPixels
    # Line 1815
    sw	$v0,1792($v1)
    # Line 1830
    li	$a2,273
    sw	$a2,16384($zero)
    # Line 1824
    sd	$v0,112($sp)
    # Line 1830
    dsll32	$v0,$s0,0x5
    li	$a1,4
    sw	$a1,16384($zero)
    lui	$a3,0x2000
    bgez	$v0,.L0d951e80
    sw	$a3,16384($zero)
    # Line 1832
    # lw $t9, -32392($gp) # &__glkonim_Enable
    bal __glkonim_Enable
    li	$a0,0x8011
.L0d951e80:
    dsll32	$v1,$s0,0x4
    bgez	$v1,.L0d951e98
    ld	$s5,96($sp)
    # Line 1835
    # lw $t9, -32392($gp) # &__glkonim_Enable
    bal __glkonim_Enable
    li	$a0,0x8012
.L0d951e98:
    dsll32	$a0,$s0,0x3
    bgez	$a0,.L0d951eac
    # Line 1838
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    bal __glkonim_Enable
    li	$a0,0x8024
.L0d951eac:
    lui	$a1,0x2000
    and	$a1,$a1,$s0
    beqz	$a1,.L0d951ecc
    # Line 1847
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 1841
    # lw $t9, -32392($gp) # &__glkonim_Enable
    bal __glkonim_Enable
    li	$a0,0x802e
    # Line 1847
    # lw $t9, -32744($gp) # &sub_0d950000
.L0d951ecc:
    addiu	$t9,$t9,11456
    ld	$s0,160($sp)
    bal __glkonim_CopyPixels
    ld	$a0,112($sp)
    # Line 1850
    # lw $t9, -32288($gp) # &__glKonPopState
    bal __glKonPopState
    addiu	$a0,$sp,0
    # Line 1851
    li	$v0,273
    sw	$v0,16384($zero)
    ld	$ra,104($sp)
    li	$at,4
    sw	$at,16384($zero)
    sw	$zero,16384($zero)
    # Line 1856
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,176
.end __glkon_OverlappedCopy

# Function: __glkonim_CopyPixels
# Declared: Line 1860 (Source lines: 1862-2181)
# Address: 0x0d951f10 - 0x0d9529fc (Size: 2796 bytes, Frame: 160)
.globl __glkonim_CopyPixels
.ent __glkonim_CopyPixels
__glkonim_CopyPixels:
    # Line 1862
    addiu	$sp,$sp,-416
    sd	$s6,208($sp)
    sd	$s7,200($sp)
    sd	$s2,368($sp)
    sd	$ra,376($sp)
    sd	$a0,288($sp)
    sd	$gp,352($sp)
    sd	$s3,320($sp)
    sd	$s0,328($sp)
    sd	$s1,344($sp)
    move	$s1,$a4
    move	$s0,$a3
    # Line 1864
    lw	$at,4120($zero)
    li	$v0,1
    # Line 1862
    lui	$v1,0x14
    sd	$s5,336($sp)
    addiu	$v1,$v1,-3896
    move	$s5,$a2
    # Line 1863
    lw	$a2,4112($zero)
    # Line 1862
    move	$s3,$a1
    # Line 1863
    sd	$a2,304($sp)
    # Line 1862
    addu	$gp,$t9,$v1
    # Line 1864
    addiu	$a0,$a2,640
    beq	$at,$v0,.L0d9521f0
    sd	$a0,296($sp)
    # Line 1889
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,304
    move	$a0,$s5
    move	$a1,$a3
    bal __glKonParseErrorDraw
    move	$a2,$a4
    bnez	$v0,.L0d9520c0
    ld	$s6,208($sp)
    # Line 1891
    lw	$a1,4112($zero)
    li	$v1,6144
    lw	$v0,1796($a1)
    beq	$s1,$v1,.L0d952210
    andi	$v0,$v0,0x100
    # Line 1905
    beqz	$v0,.L0d951fc0
    nop
    lw	$v0,1380($a1)
    li	$a0,0x81c5
.L0d951fb8:
    beq	$v0,$a0,.L0d952310
    nop
.L0d951fc0:
    # Line 1912
    ld	$a1,304($sp)
.L0d951fc4:
    lw	$a1,3460($a1)
    li	$a2,-3
    beq	$a1,$a2,.L0d9522d8
    # Line 1905
    move	$s2,$zero
.L0d951fd4:
    # Line 1918
    ld	$a2,296($sp)
    lwc1	$f0,104($a2)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    bc1f	.L0d9521a8
    # Line 1927
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 1918
    ld	$a3,296($sp)
    lwc1	$f1,108($a3)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f4
    bc1f .L0d9521a8
    # Line 1927
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 1934
    beqz	$s2,.L0d9520f0
    # Line 1918
    lui	$s6,0x8000
    # Line 1938
    # lw $t9, -32304($gp) # &GetConvolutionFilter
.L0d952014:
    bal GetConvolutionFilter
    move	$a0,$zero
    lw	$s2,64($v0)
    beqz	$s2,.L0d9526c8
    move	$a1,$v0
    # Line 1940
    addiu	$s7,$s2,-1
    # Line 1975
    slt	$a4,$s7,$s5
    beqz	$a4,.L0d9520bc
    nop
    # Line 1952
    sw	$v0,0($sp)
.L0d95203c:
    ld	$a1,304($sp)
    lw	$a3,3256($a1)
    lw	$a4,3260($a1)
    sll	$a2,$s2,0x3
    addu	$a1,$a1,$a2
    lui	$a2,0x1
    beq	$a3,$a4,.L0d952204
    addu	$a1,$a1,$a2
    # Line 1967
    lw	$s2,-29804($a1)
    b	.L0d952120
    # Line 1966
    lw	$v0,-29808($a1)
.L0d952068:
    ld	$s7,200($sp)
.L0d95206c:
    ld	$s2,368($sp)
    # Line 2004
    ld	$gp,352($sp)
    # Line 2003
    li	$a4,56
    sw	$a4,16384($zero)
    ld	$a3,288($sp)
    sw	$a3,16384($zero)
    sw	$s3,16384($zero)
    sw	$s5,16384($zero)
    sw	$s0,16384($zero)
    # Line 2004
    ld	$s0,328($sp)
    # Line 2003
    sw	$zero,16384($zero)
    sw	$s1,16384($zero)
    # Line 2004
    ld	$s1,344($sp)
    ld	$s3,320($sp)
    ld	$ra,376($sp)
    ld	$s5,336($sp)
    # Line 2003
    sw	$s6,16384($zero)
    # Line 2004
    ld	$s6,208($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0d9520bc:
    ld	$s6,208($sp)
.L0d9520c0:
    ld	$s7,200($sp)
    ld	$s3,320($sp)
    ld	$s2,368($sp)
    ld	$s0,328($sp)
    ld	$ra,376($sp)
    ld	$s5,336($sp)
    ld	$s1,344($sp)
    ld	$gp,352($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0d9520e8:
    # Line 1934
    bnez	$s2,.L0d952014
    # Line 1938
    nop	# was lw $t9, -32304($gp) # &GetConvolutionFilter
.L0d9520f0:
    # Line 1934
    ld	$a5,304($sp)
    lw	$a5,1792($a5)
    lui	$a6,0x3000
    and	$a5,$a5,$a6
    beqz	$a5,.L0d95206c
    ld	$s7,200($sp)
    # Line 1974
    ld	$v0,304($sp)
    lui	$v1,0x1
    addu	$v0,$v0,$v1
    # Line 1975
    lw	$s2,-29740($v0)
    move	$s7,$zero
    # Line 1974
    lw	$v0,-29744($v0)
.L0d952120:
    # Line 1970
    slt	$a0,$s2,$s5
    beqz	$a0,.L0d952068
    sd	$v0,384($sp)
    # Line 1980
    # lw $t9, -32276($gp) # &GetSingleCompFromPipe
    move	$a3,$zero
    move	$a2,$zero
    move	$a1,$zero
    bal GetSingleCompFromPipe
    li	$a0,66
    # Line 1982
    beqz	$v0,.L0d952154
    ld	$a4,384($sp)
    slt	$a1,$a4,$s5
    beqz	$a1,.L0d952068
.L0d952154:
    # Line 1985
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,10832
    move	$a3,$s0
    move	$a2,$s5
    move	$a1,$s3
    ld	$a0,288($sp)
    bal __glkonim_CopyPixels
    # Line 1983
    movn	$s2,$a4,$v0
    # Line 1986
    lw	$s6,0($v0)
    andi	$ra,$s6,0x4
    beqz	$ra,.L0d952340
    # Line 1988
    nop	# was lw $t9, -32264($gp) # &__glkon_OverlappedCopy
    move	$a1,$s3
    move	$a2,$s5
    move	$a3,$s0
    ld	$a0,288($sp)
    bal __glkon_OverlappedCopy
    move	$a4,$s1
    b	.L0d9520c0
    ld	$s6,208($sp)
    # Line 1927
    # lw $t9, -32744($gp) # &sub_0d950000
.L0d9521a8:
    addiu	$t9,$t9,10752
    move	$a1,$s3
    move	$a2,$s5
    ld	$a0,288($sp)
    bal __glkonim_CopyPixels
    move	$a3,$s0
    andi	$ra,$v0,0x4
    beqz	$ra,.L0d9520e8
    move	$s6,$v0
    # Line 1929
    # lw $t9, -32264($gp) # &__glkon_OverlappedCopy
    move	$a1,$s3
    move	$a2,$s5
    move	$a3,$s0
    ld	$a0,288($sp)
    bal __glkon_OverlappedCopy
    move	$a4,$s1
    b	.L0d9520c0
    ld	$s6,208($sp)
.L0d9521f0:
    # Line 1888
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9520c0
    ld	$s6,208($sp)
.L0d952204:
    # Line 1970
    lw	$s2,-29740($a1)
    b	.L0d952120
    # Line 1969
    lw	$v0,-29744($a1)
.L0d952210:
    # Line 1891
    beqz	$v0,.L0d951fc0
    nop
    lw	$v0,1380($a1)
    li	$at,0x81c6
    bne	$v0,$at,.L0d951fb8
    # Line 1905
    li	$a0,0x81c5
    # Line 1893
    slti	$v0,$s5,2
    sd	$s4,392($sp)
    bnez	$v0,.L0d95286c
    move	$s4,$s5
    move	$v0,$zero
.L0d95223c:
    sra	$s4,$s4,0x1
    slti	$v1,$s4,2
    addiu	$v0,$v0,1
    bnez	$v1,.L0d95225c
    sra	$s4,$s4,0x1
    slti	$a0,$s4,2
    beqz	$a0,.L0d95223c
    addiu	$v0,$v0,1
.L0d95225c:
    # Line 1896
    slti	$a1,$v0,9
    beqz	$a1,.L0d95287c
    ld	$s4,392($sp)
    la	$a2,.rodata
    sll	$a3,$v0,0x2
    addiu	$a2,$a2,10416
    addu	$a2,$a2,$a3
    lw	$a2,0($a2)
    bne	$a2,$s5,.L0d95287c
    move	$s4,$s4
.L0d952284:
    ld	$s7,200($sp)
    ld	$s2,368($sp)
    # Line 2004
    ld	$gp,352($sp)
    ld	$s6,208($sp)
    # Line 1901
    li	$a4,56
    sw	$a4,16384($zero)
    ld	$a3,288($sp)
    sw	$a3,16384($zero)
    sw	$s3,16384($zero)
    sw	$s5,16384($zero)
    sw	$s0,16384($zero)
    sw	$zero,16384($zero)
    sw	$s1,16384($zero)
    sw	$zero,16384($zero)
    # Line 2004
    ld	$s0,328($sp)
    ld	$ra,376($sp)
    ld	$s1,344($sp)
    ld	$s3,320($sp)
    ld	$s5,336($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0d9522d8:
    # Line 1912
    ld	$a5,304($sp)
    lw	$a5,1792($a5)
    lui	$a6,0x3000
    and	$a5,$a5,$a6
    beqz	$a5,.L0d951fd4
    # Line 1914
    nop	# was lw $t9, -32264($gp) # &__glkon_OverlappedCopy
.L0d9522f0:
    move	$a1,$s3
    move	$a2,$s5
    move	$a3,$s0
    ld	$a0,288($sp)
    bal __glkon_OverlappedCopy
    move	$a4,$s1
    b	.L0d9520c0
    ld	$s6,208($sp)
.L0d952310:
    # Line 1905
    lw	$a6,1792($a1)
    lui	$a7,0xc00
    and	$a6,$a6,$a7
    beqz	$a6,.L0d951fc4
    # Line 1912
    ld	$a1,304($sp)
    ld	$t0,304($sp)
    lw	$t0,3460($t0)
    li	$t1,-3
    bne	$t0,$t1,.L0d951fd4
    # Line 1905
    li	$s2,1
    b	.L0d9522f0
    # Line 1914
    nop	# was lw $t9, -32264($gp) # &__glkon_OverlappedCopy
.L0d952340:
    # Line 1991
    ld	$t1,288($sp)
    mtc1	$t1,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f4,40($v0)
    # Line 1992
    mtc1	$zero,$f2
    # Line 1991
    sub.s	$f4,$f4,$f5
    # Line 1992
    c.lt.s $f2,$f4
    bc1f .L0d9526dc
    mtc1	$s7,$f6
    cvt.s.w	$f6,$f6
    c.lt.s $f4,$f6
    bc1f .L0d9526e0
    # Line 1993
    subu	$a4,$s2,$s7
    # Line 2095
    mtc1	$s2,$f8
    mtc1	$s5,$f7
    cvt.d.w	$f8,$f8
    cvt.d.w	$f7,$f7
    div.d	$f7,$f7,$f8
    trunc.w.d	$f7,$f7
    mfc1	$t2,$f7
    lw	$s7,0($sp)
    mult	$t2,$s2
    lw	$s7,64($s7)
    addiu	$s7,$s7,-1
    sd	$s7,264($sp)
    # Line 2106
    sll	$s7,$s7,0x1
    addiu	$t8,$s7,4
    # Line 2095
    mflo	$t3
    nop
    nop
    # Line 2106
    mult	$s0,$t8
    # Line 2095
    addiu	$t9,$t2,-1
    # Line 2106
    mflo	$t8
    # Line 2095
    subu	$t3,$s5,$t3
    # Line 2106
    sll	$t8,$t8,0x2
    # Line 2095
    sd	$t2,224($sp)
    movz	$t2,$t9,$t3
    # Line 2106
    addu	$t8,$t8,$t8
    ld	$a0,304($sp)
    mult	$t2,$t8
    # Line 2095
    sd	$t9,232($sp)
    sd	$t3,256($sp)
    # Line 2106
    lw	$t9,0($a0)
    sd	$t2,240($sp)
    # Line 2095
    teq	$s2,$zero,0x7
    sd	$t2,248($sp)
    # Line 2106
    mflo	$a1
    jal	__glkon_OverlappedCopy
    sd	$t8,280($sp)
    # Line 2108
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    # Line 2106
    move	$s5,$v0
    # Line 2108
    lui	$a1,0x6000
    li	$a0,4
    bal __glKonSetNoModeState
    sd	$s7,272($sp)
    # Line 2115
    ld	$t8,256($sp)
    beqz	$t8,.L0d952438
    sd	$s5,216($sp)
    ld	$ra,264($sp)
    ld	$t9,256($sp)
    slt	$t9,$t9,$ra
    bnez	$t9,.L0d952890
.L0d952438:
    # Line 2120
    ld	$at,248($sp)
    beqz	$at,.L0d9524d4
    # Line 2139
    nop	# was lw $t9, -32324($gp) # &__glKonSetNoModeState
    sd	$s8,400($sp)
    # Line 2120
    ld	$s8,248($sp)
    mult	$s8,$s2
    ld	$at,280($sp)
    addiu	$s8,$s8,-1
    mflo	$t9
    nop
    nop
    mult	$s8,$at
    ld	$ra,288($sp)
    ld	$s5,216($sp)
    addu	$t9,$t9,$ra
    ld	$ra,264($sp)
    li	$s7,-1
    mflo	$t8
    subu	$t9,$t9,$ra
    sd	$t9,312($sp)
    addu	$s5,$s5,$t8
.L0d95248c:
    # Line 2128
    # lw $t9, -32256($gp) # &__glkonim_ReadPixels
    move	$a1,$s3
    move	$a3,$s0
    ld	$a0,312($sp)
    move	$a6,$s5
    li	$a5,5123
    ld	$a2,272($sp)
    bal __glkonim_ReadPixels
    li	$a4,6408
    # Line 2127
    ld	$at,312($sp)
    ld	$ra,280($sp)
    addiu	$s8,$s8,-1
    subu	$at,$at,$s2
    sd	$at,312($sp)
    bne	$s8,$s7,.L0d95248c
    subu	$s5,$s5,$ra
    ld	$s8,400($sp)
.L0d9524d0:
    # Line 2139
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
.L0d9524d4:
    lui	$a1,0x2000
    bal __glKonSetNoModeState
    li	$a0,4
    ld	$v1,256($sp)
    ld	$v0,264($sp)
    slt	$v0,$v0,$v1
    beqz	$v0,.L0d952530
    # Line 2143
    ld	$a4,224($sp)
    mult	$a4,$s2
    sd	$s4,392($sp)
    li	$a3,56
    sw	$a3,16384($zero)
    ld	$a2,288($sp)
    ld	$a1,256($sp)
    mflo	$a0
    addu	$a2,$a0,$a2
    sw	$a2,16384($zero)
    sw	$s3,16384($zero)
    sw	$a1,16384($zero)
    sw	$s0,16384($zero)
    sw	$a0,16384($zero)
    sw	$s1,16384($zero)
    sw	$s6,16384($zero)
.L0d952530:
    # Line 2147
    ld	$a5,224($sp)
    sd	$s4,392($sp)
    beqz	$a5,.L0d95258c
    ld	$s4,232($sp)
    ld	$a7,232($sp)
    mult	$a7,$s2
    ld	$a6,288($sp)
    li	$s7,-1
    mflo	$a4
    li	$a3,56
    addu	$a6,$a4,$a6
.L0d95255c:
    # Line 2148
    sw	$a3,16384($zero)
    sw	$a6,16384($zero)
    sw	$s3,16384($zero)
    sw	$s2,16384($zero)
    sw	$s0,16384($zero)
    sw	$a4,16384($zero)
    # Line 2147
    addiu	$s4,$s4,-1
    subu	$a6,$a6,$s2
    # Line 2148
    sw	$s1,16384($zero)
    # Line 2147
    subu	$a4,$a4,$s2
    bne	$s4,$s7,.L0d95255c
    # Line 2148
    sw	$s6,16384($zero)
.L0d95258c:
    ld	$s1,280($sp)
    # Line 2161
    li	$ra,8
    sw	$ra,164($sp)
    # Line 2160
    li	$t9,3
    sw	$t9,156($sp)
    # Line 2157
    li	$t8,65
    sw	$t8,32($sp)
    # Line 2158
    la	$t1,.rodata
    # Line 2156
    li	$t3,5123
    sw	$t3,24($sp)
    # Line 2158
    lw	$t1,10776($t1)
    # Line 2159
    li	$t0,1
    # Line 2158
    sw	$t1,152($sp)
    # Line 2159
    sllv	$t0,$t0,$t1
    # Line 2162
    ld	$t1,256($sp)
    # Line 2155
    li	$t2,6408
    sw	$t2,20($sp)
    # Line 2154
    sw	$s0,12($sp)
    # Line 2162
    beqz	$t1,.L0d9525f0
    # Line 2159
    sw	$t0,160($sp)
    # Line 2162
    ld	$v0,264($sp)
    ld	$at,256($sp)
    slt	$at,$at,$v0
    bnez	$at,.L0d95298c
    # Line 2163
    ld	$s0,248($sp)
.L0d9525f0:
    # Line 2171
    mult	$s4,$s1
    # Line 2172
    ld	$t8,272($sp)
    # Line 2169
    la	$s3,sub_0d950000
    # Line 2173
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    addiu	$a0,$sp,8
    # Line 2171
    ld	$v1,216($sp)
    # Line 2172
    sw	$t8,8($sp)
    # Line 2169
    addiu	$s3,$s3,6816
    # Line 2171
    mflo	$a1
    addu	$v1,$v1,$a1
    # Line 2173
    bal __glKonParseHostImage
    # Line 2171
    sw	$v1,28($sp)
    # Line 2175
    ld	$t9,240($sp)
    ld	$s4,392($sp)
    # Line 2174
    li	$ra,1
    # Line 2175
    beqz	$t9,.L0d95269c
    # Line 2174
    sw	$ra,188($sp)
    sd	$s8,400($sp)
    # Line 2175
    ld	$s8,240($sp)
    mult	$s8,$s2
    addiu	$s8,$s8,-1
    mflo	$s0
    nop
    nop
    mult	$s8,$s1
    ld	$s5,264($sp)
    subu	$s0,$s0,$s5
    ld	$s5,216($sp)
    mflo	$t8
    li	$s7,-1
    addu	$s5,$s5,$t8
.L0d95266c:
    # Line 2177
    lw	$a2,12($sp)
    move	$t9,$s3
    lw	$a1,8($sp)
    addiu	$a0,$sp,8
    # Line 2176
    sw	$s5,28($sp)
    # Line 2177
    bal __glkonle_DrawPixels
    move	$a3,$s0
    # Line 2175
    addiu	$s8,$s8,-1
    subu	$s0,$s0,$s2
    bne	$s8,$s7,.L0d95266c
    subu	$s5,$s5,$s1
    ld	$s8,400($sp)
.L0d95269c:
    # Line 2180
    # lw $t9, -32324($gp) # &__glKonSetNoModeState
    move	$a1,$zero
    bal __glKonSetNoModeState
    li	$a0,4
    # Line 2181
    ld	$t9,304($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jal	__glKonSetNoModeState
    ld	$a1,216($sp)
    b	.L0d9520c0
    ld	$s6,208($sp)
.L0d9526c8:
    # Line 1952
    blez	$s5,.L0d9520bc
    li	$s2,1
    sw	$v0,0($sp)
    b	.L0d95203c
    move	$s7,$zero
.L0d9526dc:
    # Line 1993
    subu	$a4,$s2,$s7
.L0d9526e0:
    subu	$v0,$s5,$s7
    mtc1	$a4,$f9
    mtc1	$v0,$f8
    cvt.d.w	$f9,$f9
    cvt.d.w	$f8,$f8
    div.d	$f8,$f8,$f9
    trunc.w.d	$f8,$f8
    mfc1	$a6,$f8
    mult	$a6,$a4
    andi	$ra,$s6,0x1
    teq	$a4,$zero,0x7
    mflo	$v1
    beqz	$ra,.L0d9527b8
    subu	$v0,$v0,$v1
    beqz	$v0,.L0d952758
    nop
    # Line 2043
    mult	$a4,$a6
    ld	$a2,288($sp)
    li	$a3,56
    sw	$a3,16384($zero)
    mflo	$a0
    addu	$a2,$a0,$a2
    sw	$a2,16384($zero)
    sw	$s3,16384($zero)
    addu	$a1,$v0,$s7
    sw	$a1,16384($zero)
    sw	$s0,16384($zero)
    sw	$a0,16384($zero)
    sw	$s1,16384($zero)
    sw	$s6,16384($zero)
.L0d952758:
    # Line 2047
    beqz	$a6,.L0d9520bc
    addiu	$v0,$a6,-1
    mult	$a4,$v0
    ld	$a2,288($sp)
    li	$s7,-1
    mflo	$a1
    li	$a3,56
    addu	$a2,$a1,$a2
    nop
    nop
.L0d952780:
    # Line 2048
    sw	$a3,16384($zero)
    sw	$a2,16384($zero)
    sw	$s3,16384($zero)
    sw	$s2,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    # Line 2047
    addiu	$v0,$v0,-1
    subu	$a2,$a2,$a4
    # Line 2048
    sw	$s1,16384($zero)
    # Line 2047
    subu	$a1,$a1,$a4
    bne	$v0,$s7,.L0d952780
    # Line 2048
    sw	$s6,16384($zero)
    b	.L0d9520c0
    ld	$s6,208($sp)
.L0d9527b8:
    # Line 2047
    blez	$a6,.L0d952804
    move	$a1,$zero
    ld	$a2,288($sp)
    sd	$s4,392($sp)
    move	$s4,$zero
    li	$a3,56
.L0d9527d0:
    # Line 2078
    sw	$a3,16384($zero)
    sw	$a2,16384($zero)
    sw	$s3,16384($zero)
    sw	$s2,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    # Line 2077
    addiu	$s4,$s4,1
    addu	$a2,$a4,$a2
    # Line 2078
    sw	$s1,16384($zero)
    # Line 2077
    addu	$a1,$a4,$a1
    bne	$a6,$s4,.L0d9527d0
    # Line 2078
    sw	$s6,16384($zero)
    ld	$s4,392($sp)
.L0d952804:
    # Line 2077
    beqz	$v0,.L0d9520bc
    ld	$s2,368($sp)
    # Line 2083
    mult	$a4,$a6
    # Line 2004
    ld	$gp,352($sp)
    ld	$s5,336($sp)
    # Line 2083
    addu	$a4,$v0,$s7
    # Line 2004
    ld	$s7,200($sp)
    # Line 2083
    li	$a6,56
    sw	$a6,16384($zero)
    ld	$a5,288($sp)
    ld	$ra,376($sp)
    mflo	$a3
    addu	$a5,$a3,$a5
    sw	$a5,16384($zero)
    sw	$s3,16384($zero)
    sw	$a4,16384($zero)
    sw	$s0,16384($zero)
    # Line 2004
    ld	$s0,328($sp)
    # Line 2083
    sw	$a3,16384($zero)
    sw	$s1,16384($zero)
    # Line 2004
    ld	$s1,344($sp)
    ld	$s3,320($sp)
    # Line 2083
    sw	$s6,16384($zero)
    # Line 2004
    ld	$s6,208($sp)
    jr	$ra
    addiu	$sp,$sp,416
.L0d95286c:
    # Line 1896
    la	$a7,.rodata
    lw	$a7,10416($a7)
    beq	$a7,$s5,.L0d952284
    ld	$s4,392($sp)
.L0d95287c:
    # Line 1897
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9520c0
    ld	$s6,208($sp)
.L0d952890:
    # Line 2116
    ld	$s5,248($sp)
    mult	$s5,$s2
    ld	$a3,280($sp)
    addiu	$s5,$s5,-1
    mflo	$a7
    nop
    nop
    mult	$s5,$a3
    ld	$a6,264($sp)
    ld	$a0,288($sp)
    li	$a5,5123
    li	$a4,6408
    ld	$a2,256($sp)
    move	$a1,$s3
    # lw $t9, -32256($gp) # &__glkonim_ReadPixels
    addu	$a0,$a0,$a7
    addu	$a2,$a2,$a6
    subu	$a0,$a0,$a6
    ld	$a6,216($sp)
    move	$a3,$s0
    mflo	$a7
    bal __glkonim_ReadPixels
    addu	$a6,$a6,$a7
    ld	$t8,248($sp)
    li	$t9,1
    beq	$t8,$t9,.L0d9524d0
    sd	$s5,360($sp)
    sd	$s8,400($sp)
    ld	$s8,360($sp)
    mult	$s8,$s2
    ld	$at,280($sp)
    addiu	$s8,$s8,-1
    mflo	$t9
    nop
    nop
    mult	$s8,$at
    ld	$ra,288($sp)
    ld	$s5,216($sp)
    addu	$t9,$t9,$ra
    ld	$ra,264($sp)
    li	$s7,-1
    mflo	$t8
    subu	$t9,$t9,$ra
    sd	$t9,312($sp)
    addu	$s5,$s5,$t8
.L0d952944:
    # Line 2121
    # lw $t9, -32256($gp) # &__glkonim_ReadPixels
    move	$a1,$s3
    move	$a3,$s0
    ld	$a0,312($sp)
    move	$a6,$s5
    li	$a5,5123
    ld	$a2,272($sp)
    bal __glkonim_ReadPixels
    li	$a4,6408
    # Line 2120
    ld	$at,312($sp)
    ld	$ra,280($sp)
    addiu	$s8,$s8,-1
    subu	$at,$at,$s2
    sd	$at,312($sp)
    bne	$s8,$s7,.L0d952944
    subu	$s5,$s5,$ra
    b	.L0d9524d0
    ld	$s8,400($sp)
.L0d95298c:
    # Line 2163
    addiu	$s0,$s0,-1
    mult	$s0,$s1
    # Line 2164
    ld	$a2,264($sp)
    ld	$a1,256($sp)
    # Line 2165
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    addiu	$a0,$sp,8
    # Line 2163
    ld	$v0,216($sp)
    # Line 2164
    addu	$a1,$a1,$a2
    sw	$a1,8($sp)
    # Line 2163
    mflo	$v1
    addu	$v0,$v0,$v1
    # Line 2165
    bal __glKonParseHostImage
    # Line 2163
    sw	$v0,28($sp)
    # Line 2167
    ld	$at,248($sp)
    mult	$at,$s2
    # Line 2166
    # lw $t9, -32744($gp) # &sub_0d950000
    # Line 2167
    lw	$a2,12($sp)
    addiu	$a0,$sp,8
    ld	$a4,264($sp)
    # Line 2166
    addiu	$t9,$t9,6816
    # Line 2167
    lw	$a1,8($sp)
    # Line 2166
    li	$ra,1
    # Line 2167
    mflo	$a3
    # Line 2166
    sw	$ra,188($sp)
    # Line 2167
    bal __glkonle_DrawPixels
    subu	$a3,$a3,$a4
    b	.L0d9525f0
    # Line 2169
    sd	$s0,240($sp)
.end __glkonim_CopyPixels

# Function: CopyIsOverlapped
# Declared: Line 2187 (Source lines: 2188-2197)
# Address: 0x0d952a00 - 0x0d952a48 (Size: 72 bytes, Frame: 16)
.ent CopyIsOverlapped
CopyIsOverlapped:
    # Line 2195
    li	$at,272
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    sw	$a2,16384($zero)
    sw	$a3,16384($zero)
    # Line 2188
    addiu	$sp,$sp,-16
    # Line 2196
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 2188
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 2196
    bal __glkona_wait_rdata
    # Line 2189
    lw	$s8,4112($zero)
    ld	$ra,0($sp)
    # Line 2197
    lw	$v0,31588($s8)
    ld	$s8,8($sp)
    lw	$v0,8($v0)
    jr	$ra
    addiu	$sp,$sp,16
.end CopyIsOverlapped

# Function: CopyConvIsOverlapped
# Declared: Line 2201 (Source lines: 2202-2211)
# Address: 0x0d952a50 - 0x0d952a98 (Size: 72 bytes, Frame: 16)
.ent CopyConvIsOverlapped
CopyConvIsOverlapped:
    # Line 2209
    li	$at,277
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    sw	$a2,16384($zero)
    sw	$a3,16384($zero)
    # Line 2202
    addiu	$sp,$sp,-16
    # Line 2210
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 2202
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 2210
    bal __glkona_wait_rdata
    # Line 2203
    lw	$s8,4112($zero)
    ld	$ra,0($sp)
    # Line 2211
    lw	$v0,31588($s8)
    ld	$s8,8($sp)
    addiu	$sp,$sp,16
    jr	$ra
    addiu	$v0,$v0,8
.end CopyConvIsOverlapped

# Function: CopyReadRectangle
# Declared: Line 2215 (Source lines: 2216-2335)
# Address: 0x0d952aa0 - 0x0d952cb4 (Size: 532 bytes, Frame: 128)
.ent CopyReadRectangle
CopyReadRectangle:
    # Line 2222
    lw	$a5,4112($zero)
    # Line 2216
    addiu	$sp,$sp,-128
    sd	$s3,48($sp)
    sd	$a0,40($sp)
    sd	$s1,24($sp)
    # Line 2225
    move	$t0,$a2
    # Line 2216
    sd	$s5,32($sp)
    move	$s5,$a1
    sd	$s2,8($sp)
    # Line 2226
    li	$at,6144
    # Line 2216
    move	$s2,$a2
    move	$s1,$a3
    sd	$s0,16($sp)
    move	$s0,$a4
    # Line 2226
    beq	$a4,$at,.L0d952bd0
    sd	$s8,64($sp)
    li	$v0,6145
    beq	$a4,$v0,.L0d952c64
    # Line 2277
    li	$s8,6401
    # Line 2226
    li	$v1,6146
    beq	$a4,$v1,.L0d952c84
    lw	$a1,4($sp)
    lw	$s8,0($sp)
.L0d952afc:
    # Line 2286
    addiu	$v0,$a1,7
    li	$a0,1
    sra	$v0,$v0,0x3
    li	$v1,2
    beq	$v0,$a0,.L0d952c54
    li	$a1,4
    beq	$v0,$v1,.L0d952c74
    li	$a0,3
    beq	$v0,$a0,.L0d952bc0
    nop
    beq	$v0,$a1,.L0d952bc0
    # Line 2302
    move	$v0,$zero
    sd	$ra,56($sp)
.L0d952b30:
    # Line 2315
    mult	$t0,$v0
    mflo	$a2
    li	$a3,-4
    addiu	$a2,$a2,3
    and	$a2,$a2,$a3
    mult	$s1,$a2
    lw	$t9,0($a5)
    move	$a0,$a5
    mflo	$a1
    jalr	$t9
    addiu	$a1,$a1,20
    # Line 2321
    addiu	$a6,$v0,20
    sw	$a6,16($v0)
    # Line 2320
    sw	$s8,12($v0)
    # Line 2319
    sw	$s0,8($v0)
    # Line 2315
    move	$s3,$v0
    # Line 2328
    # lw $t9, -32256($gp) # &__glkonim_ReadPixels
    move	$a5,$s0
    move	$a4,$s8
    ld	$a0,40($sp)
    move	$a3,$s1
    move	$a2,$s2
    # Line 2318
    sw	$s1,4($v0)
    # Line 2328
    move	$a1,$s5
    bal __glkonim_ReadPixels
    # Line 2317
    sw	$s2,0($v0)
    ld	$s2,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$ra,56($sp)
    ld	$s5,32($sp)
    ld	$s8,64($sp)
    # Line 2335
    move	$v0,$s3
    ld	$s3,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d952bc0:
    # Line 2299
    li	$s0,5125
    li	$v0,4
    b	.L0d952b30
    sd	$ra,56($sp)
.L0d952bd0:
    # Line 2228
    lw	$a3,3460($a5)
    li	$a4,-3
    beq	$a3,$a4,.L0d952c20
    # Line 2266
    li	$s8,6400
    # Line 2234
    lbu	$a6,3220($a5)
    beqz	$a6,.L0d952c8c
    nop
    # Line 2259
    lw	$a1,3264($a5)
    # Line 2234
    lw	$t1,3256($a5)
    lw	$a3,3260($a5)
    # Line 2259
    lw	$t3,3268($a5)
    # Line 2262
    sll	$t0,$s2,0x2
    # Line 2234
    slt	$a2,$a3,$t1
    # Line 2259
    slt	$t2,$t3,$a1
    movz	$t1,$a3,$a2
    # Line 2263
    li	$s8,6408
    movz	$a1,$t3,$t2
    # Line 2261
    slt	$a7,$a1,$t1
    # Line 2263
    b	.L0d952afc
    # Line 2261
    movn	$a1,$t1,$a7
.L0d952c20:
    # Line 2232
    li	$s3,0x8c7c
    addu	$s3,$s3,$a5
    lw	$s3,0($s3)
    beqz	$s3,.L0d952c94
    li	$v0,1
    beq	$s3,$v0,.L0d952ca0
    # Line 2239
    li	$s8,6407
    # Line 2232
    li	$t8,2
    beq	$s3,$t8,.L0d952c70
    sll	$t0,$a2,0x2
    li	$t9,3
    beq	$s3,$t9,.L0d952cac
    # Line 2254
    li	$s8,6408
.L0d952c54:
    # Line 2289
    li	$s0,5121
    li	$v0,1
    b	.L0d952b30
    sd	$ra,56($sp)
.L0d952c64:
    # Line 2272
    li	$s8,6402
    # Line 2273
    b	.L0d952afc
    # Line 2271
    lw	$a1,3244($a5)
.L0d952c70:
    # Line 2244
    li	$s8,6408
.L0d952c74:
    # Line 2294
    li	$s0,5123
    li	$v0,2
    b	.L0d952b30
    sd	$ra,56($sp)
.L0d952c84:
    # Line 2278
    b	.L0d952afc
    # Line 2276
    lw	$a1,3248($a5)
.L0d952c8c:
    b	.L0d952afc
    # Line 2265
    lw	$a1,3252($a5)
.L0d952c94:
    # Line 2235
    sll	$t0,$a2,0x2
    # Line 2234
    b	.L0d952c54
    li	$s8,6408
.L0d952ca0:
    # Line 2240
    sll	$t0,$a2,0x2
    # Line 2239
    b	.L0d952c54
    # Line 2240
    subu	$t0,$t0,$a2
.L0d952cac:
    # Line 2249
    b	.L0d952c74
    li	$s8,6408
.end CopyReadRectangle

# Function: CopyDrawFreeRectangle
# Declared: Line 2339 (Source lines: 2340-2349)
# Address: 0x0d952cc0 - 0x0d952d14 (Size: 84 bytes, Frame: 32)
.ent CopyDrawFreeRectangle
CopyDrawFreeRectangle:
    # Line 2344
    lw	$a4,16($a0)
    lw	$a3,8($a0)
    lw	$a2,12($a0)
    lw	$a1,4($a0)
    # Line 2341
    lw	$at,4112($zero)
    # Line 2340
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    # Line 2344
    # lw $t9, -32272($gp) # &__glkonim_DrawPixels
    # Line 2340
    move	$s8,$a0
    # Line 2344
    lw	$a0,0($a0)
    sd	$ra,0($sp)
    bal __glkonim_DrawPixels
    sd	$at,16($sp)
    # Line 2348
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$ra,0($sp)
    move	$a1,$s8
    # Line 2349
    ld	$s8,8($sp)
    jr	$t9
    addiu	$sp,$sp,32
.end CopyDrawFreeRectangle

# Function: __glkonReadPixelsOrTexels
# Declared: Line 2359 (Source lines: 2362-2504)
# Address: 0x0d952d20 - 0x0d9531d0 (Size: 1200 bytes, Frame: 224)
.ent __glkonReadPixelsOrTexels
__glkonReadPixelsOrTexels:
    # Line 2362
    addiu	$sp,$sp,-224
    sd	$s1,128($sp)
    # Line 2363
    lw	$s1,4112($zero)
    sd	$s4,184($sp)
    sd	$ra,176($sp)
    # Line 2371
    lw	$at,152($a0)
    sd	$s8,168($sp)
    # Line 2362
    sd	$s0,136($sp)
    # Line 2371
    andi	$at,$at,0x3000
    # Line 2362
    move	$s0,$a0
    sd	$s7,120($sp)
    move	$s7,$a1
    # Line 2371
    bnez	$at,.L0d952e8c
    sd	$s3,160($sp)
    lw	$a2,1796($s1)
    andi	$a2,$a2,0x100
    beqz	$a2,.L0d952d78
    nop
    lw	$a1,1380($s1)
    li	$a4,0x81c5
    beq	$a4,$a1,.L0d9530d0
    nop
.L0d952d78:
    lw	$a5,1792($s1)
.L0d952d7c:
    lui	$a3,0x3000
    and	$a3,$a5,$a3
    beqz	$a3,.L0d952e90
    # Line 2502
    nop	# was lw $t9, -32308($gp) # &__glKonParseHostImage
    # Line 2376
    beqz	$a2,.L0d952da4
    # Line 2402
    move	$s4,$zero
    # Line 2376
    li	$a4,0x81c5
    lw	$a1,1380($s1)
.L0d952d9c:
    beq	$a4,$a1,.L0d953108
.L0d952da0:
    # Line 2402
    move	$s4,$zero
.L0d952da4:
    sd	$s5,192($sp)
    move	$s5,$zero
    lw	$a2,0($s0)
    move	$s3,$zero
    move	$s8,$zero
.L0d952db8:
    lw	$a0,24($s0)
    sll	$a1,$s5,0x3
    andi	$a4,$a0,0x4
    lui	$a3,0x1
    addu	$a1,$s1,$a1
    beqz	$a4,.L0d9530b4
    addu	$a1,$a1,$a3
    # Line 2415
    lw	$s5,-29804($a1)
    # Line 2414
    lw	$s1,-29808($a1)
.L0d952ddc:
    # Line 2423
    slt	$a3,$s5,$a2
    beqz	$a3,.L0d953060
    # Line 2429
    nop	# was lw $t9, -32276($gp) # &GetSingleCompFromPipe
    lw	$a3,44($s0)
    lw	$a2,148($s0)
    bal GetSingleCompFromPipe
    lw	$a1,144($s0)
    # Line 2433
    lw	$a2,0($s0)
    movn	$s5,$s1,$v0
    slt	$a4,$s5,$a2
    beqz	$a4,.L0d953060
    # Line 2446
    nop	# was lw $t9, -32296($gp) # &__glKonPushState
    addiu	$a1,$sp,0
    li	$a0,2
    sd	$s2,208($sp)
    bal __glKonPushState
    # Line 2439
    subu	$s2,$a2,$s3
    # Line 2447
    mtc1	$s2,$f0
    subu	$s1,$s5,$s3
    mtc1	$s1,$f1
    cvt.d.w	$f0,$f0
    cvt.d.w	$f1,$f1
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a5,$f0
    mult	$a5,$s1
    sd	$s2,144($sp)
    li	$a7,1
    sw	$a7,96($sp)
    sd	$s6,200($sp)
    teq	$s1,$zero,0x7
    sd	$a5,152($sp)
    mflo	$a6
    subu	$a6,$s2,$a6
    blez	$a5,.L0d952f84
    sd	$a6,112($sp)
    la	$s6,sub_0d950000
    move	$s2,$zero
    lw	$a0,24($s0)
    sd	$s3,216($sp)
    move	$s3,$zero
    addiu	$s6,$s6,4704
    b	.L0d952ee4
    andi	$a0,$a0,0x4
.L0d952e8c:
    # Line 2502
    # lw $t9, -32308($gp) # &__glKonParseHostImage
.L0d952e90:
    bal __glKonParseHostImage
    move	$a0,$s0
    # Line 2503
    move	$t9,$s7
    move	$a0,$s0
    jal	__glKonParseHostImage
    move	$a1,$zero
.L0d952ea8:
    ld	$s4,184($sp)
.L0d952eac:
    ld	$s8,168($sp)
    ld	$s3,160($sp)
    ld	$ra,176($sp)
    # Line 2504
    ld	$s0,136($sp)
    ld	$s1,128($sp)
    ld	$s7,120($sp)
    jr	$ra
    addiu	$sp,$sp,224
    nop
.L0d952ed0:
    # Line 2464
    lw	$t8,52($s0)
    addu	$t8,$s1,$t8
    sw	$t8,52($s0)
.L0d952edc:
    # Line 2466
    beq	$t9,$s2,.L0d952f80
    nop
.L0d952ee4:
    # Line 2447
    beqz	$a0,.L0d952f00
    # Line 2452
    move	$a0,$s3
    # Line 2450
    lw	$ra,52($s0)
    addu	$ra,$s5,$ra
    addiu	$ra,$ra,-1
    sw	$ra,60($s0)
    # Line 2452
    move	$a0,$s3
.L0d952f00:
    move	$a1,$zero
    move	$t9,$s6
    addiu	$a5,$sp,96
    li	$a4,1
    ld	$a2,144($sp)
    bal __glKonUnsetLEModes
    addiu	$a3,$sp,0
    # Line 2458
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    # Line 2457
    lw	$at,4($s0)
    # Line 2458
    move	$a0,$s0
    # Line 2456
    sw	$s1,0($s0)
    # Line 2457
    subu	$at,$at,$s4
    # Line 2458
    bal __glKonParseHostImage
    # Line 2457
    sw	$at,4($s0)
    # Line 2461
    move	$t9,$s7
    # Line 2459
    lw	$v0,4($s0)
    # Line 2460
    sw	$s5,0($s0)
    # Line 2461
    move	$a0,$s0
    move	$a1,$s8
    # Line 2459
    addu	$v0,$v0,$s4
    # Line 2461
    jal	__glKonParseHostImage
    # Line 2459
    sw	$v0,4($s0)
    # Line 2462
    lw	$a0,24($s0)
    andi	$a0,$a0,0x4
    addu	$s3,$s1,$s3
    # Line 2466
    ld	$t9,152($sp)
    # Line 2462
    bnez	$a0,.L0d952ed0
    addiu	$s2,$s2,1
    # Line 2466
    lw	$a1,36($s0)
    addu	$a1,$a1,$s1
    b	.L0d952edc
    sw	$a1,36($s0)
.L0d952f80:
    ld	$s3,216($sp)
.L0d952f84:
    ld	$s2,208($sp)
    # Line 2471
    ld	$t8,112($sp)
    # Line 2466
    la	$s6,sub_0d950000
    ld	$s5,192($sp)
    # Line 2471
    sw	$t8,0($s0)
    beqz	$t8,.L0d953034
    # Line 2466
    addiu	$s6,$s6,4704
    # Line 2471
    lw	$t9,24($s0)
    andi	$t9,$t9,0x4
    beqz	$t9,.L0d952fcc
    # Line 2476
    ld	$v0,152($sp)
    # Line 2473
    lw	$at,52($s0)
    ld	$ra,112($sp)
    addu	$ra,$ra,$at
    addu	$ra,$s3,$ra
    addiu	$ra,$ra,-1
    sw	$ra,60($s0)
    # Line 2476
    ld	$v0,152($sp)
.L0d952fcc:
    mult	$s1,$v0
    addiu	$a5,$sp,96
    li	$a4,1
    move	$t9,$s6
    addiu	$a3,$sp,0
    mflo	$a0
    ld	$a2,144($sp)
    bal __glKonUnsetLEModes
    move	$a1,$zero
    # Line 2481
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    # Line 2479
    lw	$v1,4($s0)
    ld	$s6,200($sp)
    # Line 2481
    move	$a0,$s0
    # Line 2479
    subu	$v1,$v1,$s4
    # Line 2481
    bal __glKonParseHostImage
    # Line 2479
    sw	$v1,4($s0)
    # Line 2482
    lw	$a0,4($s0)
    # Line 2483
    lw	$a1,0($s0)
    # Line 2484
    move	$t9,$s7
    # Line 2482
    addu	$a0,$a0,$s4
    sw	$a0,4($s0)
    # Line 2484
    move	$a0,$s0
    # Line 2483
    addu	$a1,$a1,$s3
    sw	$a1,0($s0)
    # Line 2484
    jal	__glKonParseHostImage
    move	$a1,$s8
.L0d953034:
    # Line 2487
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,4864
    addiu	$a1,$sp,96
    ld	$s6,200($sp)
    bal __glKonUnsetLEModes
    li	$a0,1
    # Line 2488
    # lw $t9, -32288($gp) # &__glKonPopState
    bal __glKonPopState
    addiu	$a0,$sp,0
    b	.L0d952eac
    ld	$s4,184($sp)
.L0d953060:
    ld	$s5,192($sp)
    # Line 2495
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    # Line 2494
    lw	$at,4($s0)
    # Line 2495
    move	$a0,$s0
    # Line 2493
    subu	$v0,$a2,$s3
    sw	$v0,0($s0)
    # Line 2494
    subu	$at,$at,$s4
    # Line 2495
    bal __glKonParseHostImage
    # Line 2494
    sw	$at,4($s0)
    # Line 2497
    lw	$a0,0($s0)
    # Line 2496
    lw	$v1,4($s0)
    # Line 2498
    move	$a1,$s8
    move	$t9,$s7
    # Line 2496
    addu	$v1,$v1,$s4
    sw	$v1,4($s0)
    # Line 2497
    addu	$a0,$a0,$s3
    sw	$a0,0($s0)
    # Line 2498
    jal	__glKonParseHostImage
    move	$a0,$s0
    b	.L0d952eac
    ld	$s4,184($sp)
.L0d9530b4:
    # Line 2415
    lw	$a4,3260($s1)
    lw	$a3,3256($s1)
    beq	$a3,$a4,.L0d953174
    nop
    # Line 2420
    lw	$s5,-29804($a1)
    b	.L0d952ddc
    # Line 2419
    lw	$s1,-29808($a1)
.L0d9530d0:
    # Line 2371
    lw	$a0,32($a0)
    li	$a5,3553
    beqz	$a0,.L0d953180
    li	$a6,3552
    beq	$a0,$a5,.L0d953180
    nop
.L0d9530e8:
    bne	$a0,$a6,.L0d952d78
    nop
    lw	$a5,1792($s1)
    dsll32	$a7,$a5,0x6
    bltz	$a7,.L0d952d9c
    nop
    b	.L0d952d7c
    lw	$a5,1792($s1)
.L0d953108:
    # Line 2376
    lw	$a0,32($s0)
    li	$t0,3553
    beqz	$a0,.L0d95319c
    li	$t1,3552
    beq	$a0,$t0,.L0d9531a0
    lui	$t9,0xc00
.L0d953120:
    bne	$a0,$t1,.L0d952da4
    # Line 2402
    move	$s4,$zero
    # Line 2376
    dsll32	$t2,$a5,0x6
    bgez	$t2,.L0d952da0
    # Line 2377
    nop	# was lw $t9, -32304($gp) # &GetConvolutionFilter
.L0d953134:
    bal GetConvolutionFilter
    nop
    lw	$a1,64($v0)
    lw	$a2,0($s0)
    move	$s8,$v0
    beqz	$a1,.L0d9531b4
    lw	$a0,68($v0)
    # Line 2379
    addiu	$s3,$a1,-1
    # Line 2388
    slt	$t3,$s3,$a2
    sd	$s5,192($sp)
    # Line 2380
    move	$s5,$a1
    # Line 2386
    addiu	$s4,$a0,-1
    # Line 2388
    bnez	$t3,.L0d952db8
    movz	$s4,$zero,$a0
    b	.L0d952ea8
    ld	$s5,192($sp)
.L0d953174:
    # Line 2423
    lw	$s5,-29740($a1)
    b	.L0d952ddc
    # Line 2422
    lw	$s1,-29744($a1)
.L0d953180:
    # Line 2371
    lw	$a5,1792($s1)
    lui	$t8,0xc00
    and	$t8,$a5,$t8
    bnez	$t8,.L0d952d9c
    nop
    b	.L0d9530e8
    nop
.L0d95319c:
    # Line 2376
    lui	$t9,0xc00
.L0d9531a0:
    and	$t9,$a5,$t9
    bnez	$t9,.L0d953134
    # Line 2377
    nop	# was lw $t9, -32304($gp) # &GetConvolutionFilter
    b	.L0d953120
    nop
.L0d9531b4:
    # Line 2386
    addiu	$s4,$a0,-1
    # Line 2388
    blez	$a2,.L0d952ea8
    movz	$s4,$zero,$a0
    sd	$s5,192($sp)
    li	$s5,1
    b	.L0d952db8
    move	$s3,$zero
.end __glkonReadPixelsOrTexels

# Function: __glkonim_ReadPixels
# Declared: Line 2507 (Source lines: 2509-2542)
# Address: 0x0d9531d0 - 0x0d953288 (Size: 184 bytes, Frame: 208)
.globl __glkonim_ReadPixels
.ent __glkonim_ReadPixels
__glkonim_ReadPixels:
    # Line 2509
    addiu	$sp,$sp,-208
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x14
    move	$t0,$a0
    sd	$ra,200($sp)
    addiu	$v1,$v1,-8696
    sd	$gp,192($sp)
    beq	$at,$v0,.L0d953274
    addu	$gp,$t9,$v1
    # Line 2531
    sw	$zero,32($sp)
    # Line 2529
    sw	$a6,20($sp)
    # Line 2528
    sw	$a5,16($sp)
    # Line 2527
    sw	$a4,12($sp)
    # Line 2526
    sw	$a3,4($sp)
    # Line 2525
    sw	$a2,0($sp)
    # Line 2533
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 2524
    sw	$a1,40($sp)
    # Line 2530
    li	$a0,34
    sw	$a0,24($sp)
    # Line 2533
    addiu	$a0,$sp,0
    bal __glKonParseInput
    # Line 2523
    sw	$t0,36($sp)
    # Line 2533
    beqz	$v0,.L0d953244
    # Line 2535
    nop	# was lw $t9, -32316($gp) # &__glKonParseErrorRead
    ld	$ra,200($sp)
.L0d953238:
    # Line 2542
    ld	$gp,192($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d953244:
    # Line 2535
    bal __glKonParseErrorRead
    addiu	$a0,$sp,0
    bnez	$v0,.L0d953238
    ld	$ra,200($sp)
    # Line 2538
    # lw $t9, -32744($gp) # &sub_0d950000
    la	$a1,sub_0d950000
    addiu	$t9,$t9,11552
    addiu	$a0,$sp,0
    bal __glkonim_CopyPixels
    addiu	$a1,$a1,13856
    b	.L0d953238
    ld	$ra,200($sp)
.L0d953274:
    # Line 2521
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d953238
    ld	$ra,200($sp)
.end __glkonim_ReadPixels

# Function: BitmapReadModifyWrite
# Declared: Line 2545 (Source lines: 2546-2613)
# Address: 0x0d953290 - 0x0d95354c (Size: 700 bytes, Frame: 208)
.ent BitmapReadModifyWrite
BitmapReadModifyWrite:
    # Line 2547
    lw	$a5,4112($zero)
    li	$a6,0x8ad0
    addu	$a5,$a5,$a6
    # Line 2558
    lw	$a5,412($a5)
    lw	$a6,168($a0)
    lw	$a7,8($a5)
    # Line 2546
    addiu	$sp,$sp,-80
    # Line 2558
    multu	$a6,$a7
    # Line 2546
    sd	$s0,0($sp)
    sd	$s4,8($sp)
    # Line 2558
    lw	$a5,12($a5)
    # Line 2546
    move	$s4,$a0
    # Line 2557
    lw	$a7,0($a0)
    # Line 2546
    move	$s0,$a1
    sd	$s5,40($sp)
    # Line 2558
    andi	$t0,$a5,0x7
    sd	$s8,16($sp)
    # Line 2557
    move	$a4,$a7
    # Line 2558
    addu	$a6,$a7,$a5
    sd	$s7,48($sp)
    srl	$a5,$a5,0x3
    mflo	$t1
    sd	$s1,32($sp)
    andi	$a6,$a6,0x7
    addu	$a5,$a5,$t1
    sd	$ra,24($sp)
    beqz	$t0,.L0d953410
    addu	$a5,$a2,$a5
    # Line 2569
    li	$t9,8
    # Line 2562
    addu	$t8,$a7,$t0
    # Line 2561
    li	$s5,255
    # Line 2569
    subu	$t9,$t9,$a6
    # Line 2561
    srav	$s7,$s5,$t0
    # Line 2569
    sllv	$s5,$s5,$t9
    # Line 2562
    addiu	$t8,$t8,-8
    # Line 2570
    subu	$a4,$t8,$a6
    # Line 2561
    andi	$s7,$s7,0xff
    # Line 2578
    move	$s1,$a5
    movz	$a4,$t8,$a6
    # Line 2569
    andi	$s5,$s5,0xff
    # Line 2581
    beqz	$s7,.L0d953430
    movz	$s5,$zero,$a6
    beqz	$s5,.L0d9534c4
    nop
    lw	$t9,4($a0)
    blez	$t9,.L0d9533ec
    nor	$s8,$s7,$zero
    sd	$s6,72($sp)
    nor	$s6,$s5,$zero
    sd	$s3,64($sp)
    sra	$s3,$a4,0x3
    sd	$s2,56($sp)
    move	$s2,$zero
    nop
    nop
    nop
.L0d953370:
    # Line 2584
    lbu	$at,0($s1)
    # Line 2586
    # lw $t9, -18528($gp) # &bcopy
    # Line 2584
    and	$at,$s8,$at
    sb	$at,0($s1)
    # Line 2585
    lbu	$v0,0($s0)
    # Line 2586
    move	$a2,$s3
    addiu	$a1,$s1,1
    addiu	$a0,$s0,1
    # Line 2585
    and	$v0,$v0,$s7
    or	$at,$at,$v0
    # Line 2586
    jal	bcopy
    # Line 2585
    sb	$at,0($s1)
    # Line 2587
    addu	$a1,$s3,$s1
    lbu	$a0,1($a1)
    # Line 2588
    addu	$s0,$s3,$s0
    # Line 2587
    and	$a0,$s6,$a0
    sb	$a0,1($a1)
    # Line 2588
    lbu	$a2,1($s0)
    and	$a2,$a2,$s5
    or	$a0,$a0,$a2
    sb	$a0,1($a1)
    # Line 2583
    lw	$v1,4($s4)
    addiu	$s2,$s2,1
    # Line 2590
    lw	$v0,168($s4)
    # Line 2583
    slt	$v1,$s2,$v1
    # Line 2589
    addiu	$s0,$s0,2
    # Line 2583
    bnez	$v1,.L0d953370
    # Line 2590
    addu	$s1,$v0,$s1
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
.L0d9533ec:
    ld	$s7,48($sp)
.L0d9533f0:
    ld	$s5,40($sp)
    ld	$s1,32($sp)
    ld	$ra,24($sp)
    ld	$s8,16($sp)
    # Line 2613
    ld	$s0,0($sp)
    ld	$s4,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d953410:
    # Line 2570
    subu	$t9,$a7,$a6
    movn	$a4,$t9,$a6
    # Line 2569
    li	$t8,8
    li	$s5,255
    subu	$t8,$t8,$a6
    sllv	$s5,$s5,$t8
    # Line 2578
    move	$s1,$a5
    movz	$s5,$zero,$a6
.L0d953430:
    # Line 2583
    lw	$ra,4($s4)
    blez	$ra,.L0d9533f0
    ld	$s7,48($sp)
    sd	$s6,72($sp)
    nor	$s6,$s5,$zero
    sd	$s3,64($sp)
    sra	$s3,$a4,0x3
    sd	$s2,56($sp)
    move	$s2,$zero
    nop
    nop
    nop
.L0d953460:
    # Line 2605
    # lw $t9, -18528($gp) # &bcopy
    move	$a0,$s0
    move	$a1,$s1
    jal	bcopy
    move	$a2,$s3
    # Line 2606
    addu	$a0,$s3,$s1
    lbu	$v1,0($a0)
    # Line 2607
    addu	$s0,$s3,$s0
    # Line 2606
    and	$v1,$s6,$v1
    sb	$v1,0($a0)
    # Line 2607
    lbu	$a1,0($s0)
    and	$a1,$a1,$s5
    or	$v1,$v1,$a1
    sb	$v1,0($a0)
    # Line 2604
    lw	$v0,4($s4)
    addiu	$s2,$s2,1
    # Line 2609
    lw	$at,168($s4)
    # Line 2604
    slt	$v0,$s2,$v0
    # Line 2608
    addiu	$s0,$s0,1
    # Line 2604
    bnez	$v0,.L0d953460
    # Line 2609
    addu	$s1,$at,$s1
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    b	.L0d9533ec
    ld	$s6,72($sp)
.L0d9534c4:
    # Line 2583
    beqz	$s7,.L0d953430
    nop
    lw	$a0,4($a0)
    blez	$a0,.L0d9533ec
    nor	$s8,$s7,$zero
    sd	$s6,72($sp)
    sd	$s3,64($sp)
    sra	$s3,$a4,0x3
    sd	$s2,56($sp)
    move	$s2,$zero
.L0d9534ec:
    # Line 2595
    lbu	$a3,0($s1)
    # Line 2597
    # lw $t9, -18528($gp) # &bcopy
    # Line 2595
    and	$a3,$s8,$a3
    sb	$a3,0($s1)
    # Line 2596
    lbu	$a4,0($s0)
    # Line 2597
    move	$a2,$s3
    addiu	$a1,$s1,1
    addiu	$a0,$s0,1
    # Line 2596
    and	$a4,$a4,$s7
    or	$a3,$a3,$a4
    # Line 2597
    jal	bcopy
    # Line 2596
    sb	$a3,0($s1)
    # Line 2594
    lw	$a5,4($s4)
    addiu	$s2,$s2,1
    # Line 2598
    addu	$s0,$s3,$s0
    # Line 2599
    lw	$a4,168($s4)
    # Line 2594
    slt	$a5,$s2,$a5
    # Line 2598
    addiu	$s0,$s0,1
    # Line 2594
    bnez	$a5,.L0d9534ec
    # Line 2599
    addu	$s1,$a4,$s1
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    b	.L0d9533ec
    ld	$s6,72($sp)
.end BitmapReadModifyWrite

# Function: __glkonHostCopy
# Declared: Line 2616 (Source lines: 2618-2636)
# Address: 0x0d953550 - 0x0d95361c (Size: 204 bytes, Frame: 192)
.globl __glkonHostCopy
.ent __glkonHostCopy
__glkonHostCopy:
    # Line 2618
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$s1,48($sp)
    sd	$s5,56($sp)
    sd	$s2,0($sp)
    move	$a7,$a1
    move	$s2,$a3
    sd	$s4,8($sp)
    move	$s4,$a0
    # Line 2625
    li	$s5,-1
    # Line 2618
    lw	$at,168($a0)
    # Line 2623
    move	$s1,$a1
    # Line 2618
    sd	$s0,16($sp)
    lui	$v0,0x14
    move	$s0,$a2
    sd	$s3,32($sp)
    addiu	$v0,$v0,-9592
    sd	$gp,24($sp)
    beq	$at,$a3,.L0d953600
    addu	$gp,$t9,$v0
    # Line 2624
    addu	$s0,$a4,$a2
    # Line 2625
    beqz	$a5,.L0d9535d8
    addiu	$s3,$a5,-1
    nop
.L0d9535b0:
    # Line 2628
    # lw $t9, -18528($gp) # &bcopy
    move	$a0,$s1
    move	$a1,$s0
    jal	bcopy
    move	$a2,$s2
    # Line 2626
    lw	$v1,168($s4)
    # Line 2625
    addiu	$s3,$s3,-1
    # Line 2626
    addu	$s1,$s2,$s1
    # Line 2625
    bne	$s3,$s5,.L0d9535b0
    # Line 2626
    addu	$s0,$v1,$s0
.L0d9535d8:
    ld	$s2,0($sp)
.L0d9535dc:
    ld	$s3,32($sp)
    ld	$s4,8($sp)
    ld	$s0,16($sp)
    ld	$ra,40($sp)
    ld	$s1,48($sp)
    ld	$s5,56($sp)
    # Line 2636
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d953600:
    # Line 2634
    # lw $t9, -18528($gp) # &bcopy
    move	$a0,$a1
    move	$a1,$a2
    jal	bcopy
    lw	$a2,160($s4)
    b	.L0d9535dc
    ld	$s2,0($sp)
.end __glkonHostCopy

# Function: ReadPixels
# Declared: Line 2639 (Source lines: 2640-2776)
# Address: 0x0d953620 - 0x0d953a0c (Size: 1004 bytes, Frame: 0)
.ent ReadPixels
ReadPixels:
    # Line 2640
    addiu	$sp,$sp,-304
    move	$t8,$s8
    addiu	$s8,$sp,304
    sd	$s3,-248($s8)
    # Line 2641
    lw	$a4,4112($zero)
    # Line 2640
    sd	$s4,-256($s8)
    # Line 2642
    li	$s4,0x8ad0
    # Line 2654
    lw	$s3,168($a0)
    # Line 2642
    addu	$s4,$a4,$s4
    # Line 2654
    lw	$a3,412($s4)
    # Line 2640
    sd	$t8,-280($s8)
    # Line 2654
    lw	$t8,8($a3)
    # Line 2657
    lw	$a2,40($a0)
    # Line 2654
    lw	$t1,20($a0)
    multu	$s3,$t8
    sd	$s1,-288($s8)
    sd	$ra,-296($s8)
    # Line 2640
    sd	$s0,-264($s8)
    # Line 2659
    lw	$a7,0($a0)
    li	$t2,1
    # Line 2640
    sd	$s2,-240($s8)
    lui	$s2,0x14
    move	$s0,$a0
    sd	$gp,-272($s8)
    addiu	$s2,$s2,-9800
    addu	$gp,$t9,$s2
    # Line 2656
    lw	$s2,36($a0)
    # Line 2654
    mflo	$t3
    # Line 2659
    lw	$s3,4($a0)
    beq	$a7,$t2,.L0d9537e4
    # Line 2654
    addu	$t1,$t1,$t3
.L0d95369c:
    # Line 2662
    move	$s1,$a7
    # Line 2664
    lw	$t9,156($s0)
.L0d9536a4:
    andi	$t9,$t9,0x80
    move	$a5,$s3
    beqz	$t9,.L0d9537f4
    lw	$t0,12($a3)
    # Line 2672
    andi	$a1,$t0,0x7
    beqz	$a1,.L0d953860
    andi	$t8,$a7,0x7
.L0d9536c0:
    # Line 2675
    addu	$t8,$a7,$t0
    andi	$t8,$t8,0x7
    addu	$t9,$s1,$a1
    # Line 2677
    subu	$s1,$t9,$t8
    # Line 2684
    srl	$a3,$t0,0x3
    # Line 2677
    addiu	$s1,$s1,8
    # Line 2684
    lw	$a6,96($s0)
    movz	$s1,$t9,$t8
    # Line 2683
    slt	$t3,$s1,$zero
    addiu	$a0,$s1,7
    movz	$a0,$s1,$t3
    # Line 2674
    subu	$s2,$s2,$a1
    # Line 2684
    beqz	$a6,.L0d9538a0
    # Line 2683
    sra	$a0,$a0,0x3
    # Line 2684
    li	$t9,1
    sd	$t9,-232($s8)
    sd	$a3,-192($s8)
    sd	$t1,-224($s8)
    sd	$a5,-216($s8)
    sd	$a0,-208($s8)
    sd	$a4,-184($s8)
    sd	$a2,-200($s8)
.L0d953718:
    # Line 2698
    # lw $t9, -31972($gp) # &__glkon_SuspendSelectfeed
    jal	__glkon_SuspendSelectfeed
    nop
    # Line 2699
    li	$a1,57
    sw	$a1,16384($zero)
    sw	$s2,16384($zero)
    lw	$v0,148($s0)
    lw	$v1,144($s0)
    ld	$a0,-200($s8)
    sw	$a0,16384($zero)
    sw	$s1,16384($zero)
    sw	$s3,16384($zero)
    sw	$v1,16384($zero)
    # Line 2704
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 2699
    lw	$at,20($s0)
    sw	$v0,16384($zero)
    andi	$at,$at,0x3
    # Line 2704
    bal __glkona_wait_rdata
    # Line 2699
    sw	$at,16384($zero)
    # Line 2705
    # lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
    jal	__glkon_ResumeSelectfeed
    nop
    lw	$a2,320($s4)
    beqz	$a2,.L0d9537a8
    # Line 2694
    ld	$t0,-232($s8)
.L0d95377c:
    ld	$s2,-240($s8)
.L0d953780:
    ld	$s3,-248($s8)
    ld	$s4,-256($s8)
    ld	$s0,-264($s8)
    ld	$s1,-288($s8)
    ld	$ra,-296($s8)
    # Line 2776
    ld	$a3,-280($s8)
    ld	$gp,-272($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a3
.L0d9537a8:
    # Line 2694
    ld	$a7,-184($s8)
    beqz	$t0,.L0d9539a4
    lw	$a7,31588($a7)
    # Line 2716
    lw	$a1,412($s4)
    # lw $t9, -32744($gp) # &sub_0d950000
    lw	$a1,12($a1)
    addiu	$t9,$t9,12944
    srl	$a1,$a1,0x3
    move	$a0,$s0
    addu	$a1,$a7,$a1
    lw	$a2,20($s0)
    bal __glkonim_ReadPixels
    addiu	$a1,$a1,8
    b	.L0d953780
    ld	$s2,-240($s8)
.L0d9537e4:
    # Line 2659
    bne	$s3,$t2,.L0d95369c
    # Line 2660
    li	$s1,8
    b	.L0d9536a4
    # Line 2664
    lw	$t9,156($s0)
.L0d9537f4:
    # Line 2727
    beqz	$a1,.L0d953820
    lw	$a3,172($s0)
    # Line 2689
    lw	$a6,64($a1)
    subu	$a6,$a7,$a6
    addiu	$a6,$a6,1
    mult	$a3,$a6
    # Line 2690
    lw	$a5,68($a1)
    subu	$a5,$s3,$a5
    # Line 2689
    mflo	$a0
    # Line 2690
    b	.L0d953830
    addiu	$a5,$a5,1
.L0d953820:
    # Line 2692
    mult	$a7,$a3
    mflo	$a0
    nop
    nop
.L0d953830:
    # Line 2694
    multu	$a3,$t0
    lw	$a7,96($s0)
    mflo	$t3
    beqz	$a7,.L0d9539cc
    sd	$t3,-192($s8)
    sd	$zero,-232($s8)
    sd	$t1,-224($s8)
    sd	$a5,-216($s8)
    sd	$a0,-208($s8)
    sd	$a4,-184($s8)
    b	.L0d953718
    sd	$a2,-200($s8)
.L0d953860:
    # Line 2672
    bnez	$t8,.L0d9536c0
    # Line 2684
    srl	$a6,$t0,0x3
    lw	$a1,96($s0)
    # Line 2683
    addiu	$a0,$s1,7
    slt	$a3,$s1,$zero
    movz	$a0,$s1,$a3
    # Line 2684
    sd	$a6,-192($s8)
    beqz	$a1,.L0d953a04
    # Line 2683
    sra	$a0,$a0,0x3
    # Line 2684
    sd	$zero,-232($s8)
    sd	$t1,-224($s8)
    sd	$s3,-216($s8)
    sd	$a0,-208($s8)
    sd	$a4,-184($s8)
    b	.L0d953718
    sd	$a2,-200($s8)
.L0d9538a0:
    # Line 2727
    lw	$a7,160($s0)
    li	$t0,-16
    addiu	$a7,$a7,15
    and	$a7,$a7,$t0
    subu	$sp,$sp,$a7
    # Line 2709
    li	$t0,1
    sd	$t0,-232($s8)
    # Line 2727
    move	$s4,$sp
.L0d9538c0:
    # Line 2732
    sw	$s4,-176($s8)
    lw	$t0,168($s0)
    beq	$t0,$a0,.L0d9538fc
    nop
    # Line 2736
    mult	$a5,$a0
    # Line 2737
    sw	$a0,-168($s8)
    # Line 2736
    mflo	$t3
    sw	$t3,-172($s8)
    # Line 2737
    lw	$a1,168($s0)
    slt	$t1,$a1,$a0
    bnez	$t1,.L0d9539dc
    # Line 2745
    subu	$t8,$a1,$a0
    sw	$t8,-164($s8)
    b	.L0d953910
    sd	$a4,-184($s8)
.L0d9538fc:
    # Line 2749
    lw	$t9,160($s0)
    # Line 2751
    sw	$zero,-164($s8)
    sd	$a4,-184($s8)
    # Line 2749
    sw	$t9,-172($s8)
    sw	$t9,-168($s8)
.L0d953910:
    # Line 2760
    sw	$s3,-140($s8)
    # Line 2759
    sw	$s1,-144($s8)
    # Line 2758
    sw	$a2,-148($s8)
    # Line 2757
    sw	$s2,-152($s8)
    # Line 2756
    li	$a0,7
    sw	$a0,-156($s8)
    # Line 2755
    li	$a1,57
    sw	$a1,-160($s8)
    # Line 2761
    lw	$v1,144($s0)
    sw	$v1,-136($s8)
    # Line 2762
    lw	$at,148($s0)
    # Line 2767
    # lw $t9, -31972($gp) # &__glkon_SuspendSelectfeed
    # Line 2765
    sw	$t2,-32($s8)
    # Line 2763
    andi	$v0,$s4,0x3
    sw	$v0,-128($s8)
    # Line 2767
    jal	__glkon_SuspendSelectfeed
    # Line 2762
    sw	$at,-132($s8)
    # Line 2768
    # lw $t9, -31952($gp) # &__glKon_ioctl
    addiu	$a2,$s8,-176
    ld	$a0,-184($s8)
    jal	__glKon_ioctl
    li	$a1,10000
    bltz	$v0,.L0d9539f0
    # Line 2769
    nop	# was lw $t9, -18584($gp) # &perror
    # Line 2770
    # lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
.L0d953974:
    jal	__glkon_ResumeSelectfeed
    nop
    ld	$a2,-232($s8)
    beqz	$a2,.L0d95377c
    # Line 2773
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,12944
    move	$a0,$s0
    move	$a1,$s4
    bal __glkonim_ReadPixels
    lw	$a2,20($s0)
    b	.L0d953780
    ld	$s2,-240($s8)
.L0d9539a4:
    # Line 2718
    ld	$a5,-216($s8)
    # lw $t9, -32252($gp) # &__glkonHostCopy
    ld	$a4,-192($s8)
    move	$a0,$s0
    ld	$a3,-208($s8)
    ld	$a2,-224($s8)
    bal __glkonHostCopy
    addiu	$a1,$a7,8
    b	.L0d953780
    ld	$s2,-240($s8)
.L0d9539cc:
    sd	$zero,-232($s8)
.L0d9539d0:
    ld	$s4,-192($s8)
    b	.L0d9538c0
    # Line 2729
    addu	$s4,$s4,$t1
.L0d9539dc:
    # Line 2742
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d953780
    ld	$s2,-240($s8)
.L0d9539f0:
    # Line 2769
    la	$a0,.rodata
    jalr	$t9
    addiu	$a0,$a0,240
    b	.L0d953974
    # Line 2770
    nop	# was lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
.L0d953a04:
    # Line 2684
    b	.L0d9539d0
    sd	$zero,-232($s8)
.end ReadPixels

# Function: __glkonReadTexels3D
# Declared: Line 2781 (Source lines: 2782-2857)
# Address: 0x0d953a10 - 0x0d953b88 (Size: 376 bytes, Frame: 48)
.globl __glkonReadTexels3D
.ent __glkonReadTexels3D
__glkonReadTexels3D:
    # Line 2782
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    # Line 2786
    li	$v1,36
    # Line 2783
    lw	$a3,4112($zero)
    li	$a4,0x8ad0
    # Line 2782
    move	$s0,$a0
    # Line 2788
    lw	$a1,12($a0)
    # Line 2786
    sw	$v1,24($a0)
    # Line 2788
    li	$at,6402
    # Line 2782
    lui	$v0,0x14
    sd	$ra,40($sp)
    addiu	$v0,$v0,-10808
    # Line 2783
    addu	$a3,$a3,$a4
    sd	$gp,32($sp)
    # Line 2788
    beq	$a1,$at,.L0d953b50
    # Line 2782
    addu	$gp,$t9,$v0
    # Line 2788
    li	$a5,6401
    beq	$a1,$a5,.L0d953b50
    sd	$a3,16($sp)
    # Line 2792
    # lw $t9, -32312($gp) # &__glKonParseInput
    bal __glKonParseInput
    nop
    beqz	$v0,.L0d953a84
    # Line 2794
    nop	# was lw $t9, -32316($gp) # &__glKonParseErrorRead
.L0d953a70:
    ld	$ra,40($sp)
.L0d953a74:
    ld	$s0,24($sp)
    # Line 2857
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d953a84:
    # Line 2794
    bal __glKonParseErrorRead
    move	$a0,$s0
    bnez	$v0,.L0d953a74
    ld	$ra,40($sp)
    # Line 2797
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    bal __glKonParseHostImage
    move	$a0,$s0
    lw	$a0,8($s0)
    slti	$a6,$a0,2
    bnez	$a6,.L0d953b6c
    # Line 2855
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 2797
    ld	$a3,16($sp)
    lw	$a3,412($a3)
    lw	$a1,24($a3)
    beqz	$a1,.L0d953b64
    nop
.L0d953ac4:
    # Line 2836
    lw	$t0,168($s0)
    mult	$t0,$a1
    # Line 2837
    lw	$a7,20($a3)
    # Line 2836
    mflo	$a6
    nop
    nop
    # Line 2837
    multu	$a6,$a7
    lw	$a4,20($s0)
    # Line 2836
    sd	$a6,0($sp)
    # Line 2837
    mflo	$a5
    addu	$a4,$a4,$a5
    blez	$a0,.L0d953a70
    sw	$a4,20($s0)
    sd	$zero,8($sp)
.L0d953afc:
    # Line 2849
    # lw $t9, -32744($gp) # &sub_0d950000
    la	$a1,sub_0d950000
    addiu	$t9,$t9,11552
    move	$a0,$s0
    bal __glkonim_CopyPixels
    addiu	$a1,$a1,15248
    # Line 2850
    lw	$a4,20($s0)
    ld	$a2,0($sp)
    # Line 2844
    ld	$a3,8($sp)
    lw	$a6,8($s0)
    # Line 2851
    lw	$a5,68($s0)
    # Line 2844
    addiu	$a3,$a3,1
    sd	$a3,8($sp)
    slt	$a3,$a3,$a6
    # Line 2851
    addiu	$a5,$a5,1
    sw	$a5,68($s0)
    # Line 2850
    addu	$a2,$a2,$a4
    # Line 2844
    bnez	$a3,.L0d953afc
    # Line 2850
    sw	$a2,20($s0)
    b	.L0d953a74
    ld	$ra,40($sp)
.L0d953b50:
    # Line 2789
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d953a74
    ld	$ra,40($sp)
.L0d953b64:
    b	.L0d953ac4
    # Line 2834
    lw	$a1,4($s0)
.L0d953b6c:
    # Line 2855
    la	$a1,sub_0d950000
    addiu	$t9,$t9,11552
    move	$a0,$s0
    bal __glkonim_CopyPixels
    addiu	$a1,$a1,15248
    b	.L0d953a74
    ld	$ra,40($sp)
.end __glkonReadTexels3D

# Function: ReadTexels
# Declared: Line 2860 (Source lines: 2861-3019)
# Address: 0x0d953b90 - 0x0d953ea8 (Size: 792 bytes, Frame: 224)
.ent ReadTexels
ReadTexels:
    # Line 2862
    lw	$a2,4112($zero)
    # Line 2863
    li	$a3,0x8ad0
    # Line 2861
    addiu	$sp,$sp,-224
    # Line 2862
    sd	$a2,192($sp)
    # Line 2863
    addu	$a2,$a2,$a3
    # Line 2873
    lw	$t1,412($a2)
    lw	$a7,168($a0)
    lw	$t0,8($t1)
    multu	$a7,$t0
    lw	$a4,4($a0)
    sd	$ra,216($sp)
    sd	$gp,208($sp)
    # Line 2861
    sd	$s0,200($sp)
    lui	$a6,0x14
    # Line 2873
    lw	$a3,20($a0)
    # Line 2861
    move	$s0,$a0
    addiu	$a6,$a6,-11192
    # Line 2883
    lw	$t2,12($t1)
    # Line 2861
    addu	$gp,$t9,$a6
    # Line 2873
    lw	$a7,172($a0)
    mflo	$a5
    lw	$t0,0($a0)
    beqz	$a1,.L0d953c14
    addu	$a3,$a3,$a5
    # Line 2877
    lw	$a6,64($a1)
    subu	$a6,$t0,$a6
    addiu	$a6,$a6,1
    mult	$a7,$a6
    # Line 2878
    lw	$a5,68($a1)
    subu	$a5,$a4,$a5
    # Line 2877
    mflo	$a0
    # Line 2878
    b	.L0d953c28
    addiu	$a5,$a5,1
.L0d953c14:
    # Line 2880
    mult	$t0,$a7
    # Line 2881
    move	$a5,$a4
    # Line 2880
    mflo	$a0
    nop
    nop
.L0d953c28:
    # Line 2883
    multu	$a7,$t2
    lw	$t0,96($s0)
    mflo	$a1
    beqz	$t0,.L0d953d24
    sd	$a2,160($sp)
    sd	$a5,184($sp)
    # Line 2885
    # lw $t9, -31972($gp) # &__glkon_SuspendSelectfeed
    sd	$a1,176($sp)
    sd	$a3,168($sp)
    jal	__glkon_SuspendSelectfeed
    sd	$a0,152($sp)
    # Line 2886
    lw	$ra,92($s0)
    lw	$at,88($s0)
    li	$v0,82
    sw	$v0,16384($zero)
    lw	$v0,84($s0)
    lw	$v1,80($s0)
    lw	$a0,76($s0)
    lw	$a1,72($s0)
    lw	$a2,64($s0)
    lw	$a3,60($s0)
    lw	$a4,68($s0)
    lw	$a5,56($s0)
    lw	$a6,52($s0)
    lw	$a7,48($s0)
    lw	$t0,44($s0)
    lw	$t1,148($s0)
    lw	$t2,144($s0)
    lw	$t3,4($s0)
    lw	$t8,0($s0)
    lw	$t9,32($s0)
    sw	$t9,16384($zero)
    sw	$t8,16384($zero)
    sw	$t3,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a4,16384($zero)
    sw	$a3,16384($zero)
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    sw	$v1,16384($zero)
    # Line 2903
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 2886
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    sw	$ra,16384($zero)
    # Line 2903
    bal __glkona_wait_rdata
    nop
    # Line 2904
    # lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
    jal	__glkon_ResumeSelectfeed
    nop
    ld	$v1,160($sp)
    lw	$v1,320($v1)
    beqz	$v1,.L0d953e4c
    ld	$ra,216($sp)
.L0d953d14:
    ld	$s0,200($sp)
    # Line 3019
    ld	$gp,208($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d953d24:
    # Line 2960
    addu	$a4,$a1,$a3
    sw	$a4,0($sp)
    lw	$a2,168($s0)
    beq	$a2,$a0,.L0d953d60
    # Line 2976
    lw	$t2,160($s0)
    # Line 2963
    mult	$a0,$a5
    # Line 2964
    sw	$a0,8($sp)
    # Line 2963
    mflo	$a7
    sw	$a7,4($sp)
    # Line 2964
    lw	$a1,168($s0)
    slt	$a6,$a1,$a0
    bnez	$a6,.L0d953e7c
    # Line 2972
    subu	$t0,$a1,$a0
    b	.L0d953d70
    sw	$t0,12($sp)
.L0d953d60:
    # Line 2976
    sw	$t2,4($sp)
    # Line 2977
    lw	$t1,160($s0)
    # Line 2978
    sw	$zero,12($sp)
    # Line 2977
    sw	$t1,8($sp)
.L0d953d70:
    # Line 3013
    # lw $t9, -31972($gp) # &__glkon_SuspendSelectfeed
    # Line 2982
    li	$ra,18
    sw	$ra,20($sp)
    # Line 2981
    li	$at,82
    sw	$at,16($sp)
    # Line 2983
    lw	$t8,32($s0)
    sw	$t8,24($sp)
    # Line 2984
    lw	$t3,0($s0)
    sw	$t3,28($sp)
    # Line 2985
    lw	$t2,4($s0)
    sw	$t2,32($sp)
    # Line 2986
    lw	$t1,144($s0)
    sw	$t1,36($sp)
    # Line 2987
    lw	$t0,148($s0)
    sw	$t0,40($sp)
    # Line 2988
    lw	$a7,44($s0)
    sw	$a7,44($sp)
    # Line 2989
    lw	$a6,48($s0)
    sw	$a6,48($sp)
    # Line 2990
    lw	$a5,52($s0)
    sw	$a5,52($sp)
    # Line 2991
    lw	$a4,56($s0)
    sw	$a4,56($sp)
    # Line 2992
    lw	$a3,68($s0)
    sw	$a3,60($sp)
    # Line 2993
    lw	$a2,60($s0)
    sw	$a2,64($sp)
    # Line 2994
    lw	$a1,64($s0)
    sw	$a1,68($sp)
    # Line 2995
    lw	$a0,72($s0)
    sw	$a0,72($sp)
    # Line 2996
    lw	$v1,76($s0)
    sw	$v1,76($sp)
    # Line 2997
    lw	$v0,80($s0)
    sw	$v0,80($sp)
    # Line 2998
    lw	$at,84($s0)
    sw	$at,84($sp)
    # Line 2999
    lw	$ra,88($s0)
    sw	$ra,88($sp)
    # Line 3000
    lw	$t3,92($s0)
    # Line 3002
    li	$t8,1
    sw	$t8,144($sp)
    # Line 3013
    jal	__glkon_SuspendSelectfeed
    # Line 3000
    sw	$t3,92($sp)
    # Line 3014
    # lw $t9, -31952($gp) # &__glKon_ioctl
    addiu	$a2,$sp,0
    ld	$a0,192($sp)
    jal	__glKon_ioctl
    li	$a1,10000
    bltz	$v0,.L0d953e90
    # Line 3016
    nop	# was lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
.L0d953e3c:
    jal	__glkon_ResumeSelectfeed
    nop
    b	.L0d953d14
    ld	$ra,216($sp)
.L0d953e4c:
    # Line 2911
    ld	$a5,184($sp)
    ld	$a4,176($sp)
    ld	$a1,192($sp)
    # lw $t9, -32252($gp) # &__glkonHostCopy
    lw	$a1,31588($a1)
    move	$a0,$s0
    ld	$a3,152($sp)
    ld	$a2,168($sp)
    bal __glkonHostCopy
    addiu	$a1,$a1,8
    b	.L0d953d14
    ld	$ra,216($sp)
.L0d953e7c:
    # Line 2969
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d953d14
    ld	$ra,216($sp)
.L0d953e90:
    # Line 3015
    # lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    jal	perror
    addiu	$a0,$a0,240
    b	.L0d953e3c
    # Line 3016
    nop	# was lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
.end ReadTexels

# Function: __glkonim_Bitmap
# Declared: Line 3026 (Source lines: 3028-3088)
# Address: 0x0d953eb0 - 0x0d954164 (Size: 692 bytes, Frame: 0)
.globl __glkonim_Bitmap
.ent __glkonim_Bitmap
__glkonim_Bitmap:
    # Line 3028
    addiu	$sp,$sp,-368
    move	$a2,$s8
    addiu	$s8,$sp,368
    sd	$a2,-360($s8)
    sd	$s1,-336($s8)
    move	$a5,$a6
    mov.s	$f4,$f17
    lui	$v1,0x14
    lw	$at,4120($zero)
    mov.s	$f5,$f16
    li	$v0,1
    addiu	$v1,$v1,-11992
    sd	$s0,-352($s8)
    mov.s	$f6,$f15
    move	$s0,$a1
    move	$s1,$a0
    sd	$gp,-344($s8)
    mov.s	$f7,$f14
    addu	$gp,$t9,$v1
    beq	$at,$v0,.L0d954150
    sd	$ra,-368($s8)
    # Line 3034
    bltz	$a0,.L0d9540cc
    # Line 3035
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3034
    bltz	$a1,.L0d9540cc
    # Line 3035
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3046
    beqz	$a0,.L0d954080
    # Line 3048
    li	$a7,6
    # Line 3046
    beqz	$a1,.L0d954080
    # Line 3048
    li	$a7,6
    mult	$a0,$a1
    sdc1	$f14,-296($s8)
    mflo	$a3
    sdc1	$f15,-288($s8)
    slti	$a3,$a3,3137
    sdc1	$f16,-280($s8)
    bnez	$a3,.L0d953fa8
    sdc1	$f17,-272($s8)
    # Line 3068
    sw	$s1,-264($s8)
    # Line 3064
    addiu	$a4,$s8,-264
    # Line 3073
    li	$t0,65
    sw	$t0,24($a4)
    sd	$a6,-328($s8)
    # Line 3071
    li	$a6,6656
    sw	$a6,16($a4)
    # Line 3070
    li	$a5,6400
    sw	$a5,12($a4)
    # Line 3075
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 3069
    sw	$a1,4($a4)
    # Line 3072
    ld	$a7,-328($s8)
    # Line 3075
    move	$a0,$a4
    bal __glKonParseInput
    # Line 3072
    sw	$a7,20($a4)
    # Line 3075
    beqz	$v0,.L0d9540dc
    # Line 3080
    nop	# was lw $t9, -32308($gp) # &__glKonParseHostImage
    # Line 3088
    ld	$gp,-344($s8)
.L0d953f8c:
    ld	$s0,-352($s8)
    ld	$ra,-368($s8)
    ld	$t1,-360($s8)
    ld	$s1,-336($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t1
.L0d953fa8:
    # Line 3055
    li	$ra,-8
    addiu	$t9,$a0,7
    and	$t9,$t9,$ra
    addiu	$t3,$t9,7
    slt	$t8,$t9,$zero
    movz	$t3,$t9,$t8
    sra	$t3,$t3,0x3
    mult	$a1,$t3
    # Line 3056
    li	$a4,6656
    # Line 3055
    sd	$t9,-304($s8)
    # Line 3056
    li	$a3,6400
    # lw $t9, -28012($gp) # &__glFillImage
    # Line 3055
    mflo	$t2
    li	$t3,-16
    sd	$t2,-312($s8)
    addiu	$t2,$t2,15
    # Line 3056
    move	$a2,$a1
    # Line 3055
    and	$t2,$t2,$t3
    # Line 3056
    move	$a1,$a0
    subu	$sp,$sp,$t2
    # Line 3055
    sd	$sp,-320($s8)
    # Line 3056
    lw	$a0,4112($zero)
    jal	__glFillImage
    # Line 3055
    move	$a6,$sp
    # Line 3064
    ld	$a0,-320($s8)
    # Line 3059
    ldc1	$f0,-288($s8)
    li	$a5,5
    sw	$a5,16384($zero)
    ld	$a4,-304($s8)
    sw	$a4,16384($zero)
    sw	$s0,16384($zero)
    ldc1	$f2,-280($s8)
    ldc1	$f1,-296($s8)
    ld	$at,-312($s8)
    swc1	$f1,16384($zero)
    add.s	$f1,$f1,$f2
    ldc1	$f2,-272($s8)
    # Line 3064
    # lw $t9, -19580($gp) # &__glkon_datavn
    # Line 3059
    addiu	$a3,$at,3
    swc1	$f0,16384($zero)
    addiu	$a1,$at,6
    slt	$a2,$a3,$zero
    swc1	$f1,16384($zero)
    movz	$a1,$a3,$a2
    add.s	$f0,$f0,$f2
    sra	$a1,$a1,0x2
    swc1	$f0,16384($zero)
    addiu	$v0,$a1,1
    sw	$v0,16384($zero)
    # Line 3064
    jal	__glkon_datavn
    # Line 3059
    sw	$at,16384($zero)
    b	.L0d953f8c
    # Line 3088
    ld	$gp,-344($s8)
    # Line 3048
    li	$a7,6
.L0d954080:
    sw	$a7,16384($zero)
    sw	$zero,16384($zero)
    sw	$zero,16384($zero)
    sw	$zero,16384($zero)
    sw	$zero,16384($zero)
    sw	$zero,16384($zero)
    swc1	$f7,16384($zero)
    swc1	$f6,16384($zero)
    # Line 3088
    ld	$gp,-344($s8)
    ld	$s0,-352($s8)
    ld	$s1,-336($s8)
    ld	$ra,-368($s8)
    ld	$a6,-360($s8)
    move	$sp,$s8
    # Line 3048
    swc1	$f5,16384($zero)
    swc1	$f4,16384($zero)
    # Line 3088
    jr	$ra
    move	$s8,$a6
    # Line 3035
    # lw $t9, -28616($gp) # &__glSetError
.L0d9540cc:
    jal	__glSetError
    li	$a0,1281
    b	.L0d953f8c
    # Line 3088
    ld	$gp,-344($s8)
.L0d9540dc:
    # Line 3080
    bal __glKonParseHostImage
    addiu	$a0,$s8,-264
    # Line 3081
    li	$t3,6
    sw	$t3,16384($zero)
    sw	$s1,16384($zero)
    sw	$s0,16384($zero)
    # Line 3086
    ldc1	$f3,-272($s8)
    # Line 3081
    ldc1	$f4,-280($s8)
    ldc1	$f5,-288($s8)
    ldc1	$f6,-296($s8)
    ld	$t2,-328($s8)
    addiu	$a0,$s8,-264
    lw	$t0,184($a0)
    lw	$t1,180($a0)
    andi	$t2,$t2,0x3
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    swc1	$f6,16384($zero)
    # Line 3086
    # lw $t9, -32300($gp) # &__glKonSendData
    # Line 3081
    swc1	$f5,16384($zero)
    # Line 3086
    move	$a3,$zero
    move	$a2,$s0
    # Line 3081
    swc1	$f4,16384($zero)
    # Line 3086
    move	$a1,$s1
    bal __glKonSendData
    # Line 3081
    swc1	$f3,16384($zero)
    b	.L0d953f8c
    # Line 3088
    ld	$gp,-344($s8)
.L0d954150:
    # Line 3032
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d953f8c
    # Line 3088
    ld	$gp,-344($s8)
.end __glkonim_Bitmap

# Function: __glkonlc_Bitmap
# Declared: Line 3091 (Source lines: 3095-3135)
# Address: 0x0d954170 - 0x0d9543b0 (Size: 576 bytes, Frame: 128)
.globl __glkonlc_Bitmap
.ent __glkonlc_Bitmap
__glkonlc_Bitmap:
    # Line 3099
    lw	$a2,4112($zero)
    # Line 3095
    addiu	$sp,$sp,-128
    move	$a4,$a6
    mov.s	$f4,$f17
    sd	$s0,56($sp)
    mov.s	$f5,$f16
    move	$s0,$a1
    sd	$s1,48($sp)
    lui	$at,0x14
    mov.s	$f6,$f15
    move	$s1,$a0
    sd	$ra,112($sp)
    addiu	$at,$at,-12696
    mov.s	$f7,$f14
    sd	$gp,64($sp)
    # Line 3101
    bltz	$a0,.L0d954398
    # Line 3095
    addu	$gp,$t9,$at
    # Line 3101
    bltz	$a1,.L0d95439c
    # Line 3102
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 3106
    lw	$v0,-16516($gp)
    li	$t0,-8
    addiu	$a7,$a0,7
    and	$a7,$a7,$t0
    addiu	$v1,$a7,7
    slt	$a0,$a7,$zero
    movz	$v1,$a7,$a0
    sra	$v1,$v1,0x3
    mult	$a1,$v1
    mflo	$a1
    slt	$v0,$v0,$a1
    bnez	$v0,.L0d954364
    # Line 3115
    addiu	$t2,$a1,6
    # Line 3106
    beqz	$s1,.L0d954364
    nop
    beqz	$s0,.L0d954364
    nop
    mult	$s1,$s0
    mflo	$t1
    slti	$t1,$t1,3137
    beqz	$t1,.L0d954364
    nop
    sd	$s2,40($sp)
    # Line 3115
    addiu	$s2,$a1,3
    slt	$t3,$s2,$zero
    movz	$t2,$s2,$t3
    lw	$s2,4136($zero)
    sra	$t2,$t2,0x2
    sd	$t2,32($sp)
    addiu	$t2,$t2,9
    slt	$t2,$s2,$t2
    sd	$a6,16($sp)
    beqz	$t2,.L0d954284
    sd	$a2,24($sp)
    sdc1	$f14,72($sp)
    sdc1	$f15,80($sp)
    sdc1	$f16,88($sp)
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f17,96($sp)
    sd	$a7,104($sp)
    sd	$a1,120($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a1,120($sp)
    ld	$a7,104($sp)
    ldc1	$f4,96($sp)
    ldc1	$f5,88($sp)
    ldc1	$f6,80($sp)
    ldc1	$f7,72($sp)
    move	$s2,$v0
.L0d954284:
    lw	$ra,4144($zero)
    sd	$ra,8($sp)
    # Line 3126
    addiu	$a0,$ra,36
    sd	$a0,0($sp)
    # Line 3122
    add.s	$f1,$f6,$f4
    # Line 3124
    sw	$a1,32($ra)
    # Line 3121
    add.s	$f0,$f7,$f5
    # Line 3122
    swc1	$f1,24($ra)
    # Line 3121
    swc1	$f0,20($ra)
    # Line 3120
    swc1	$f6,16($ra)
    # Line 3123
    ld	$t8,32($sp)
    # Line 3119
    swc1	$f7,12($ra)
    # Line 3123
    addiu	$t9,$t8,1
    sw	$t9,28($ra)
    # Line 3126
    # lw $t9, -18524($gp) # &bzero
    # Line 3118
    sw	$s0,8($ra)
    # Line 3117
    sw	$a7,4($ra)
    # Line 3115
    subu	$s2,$s2,$t8
    # Line 3116
    li	$t8,5
    sw	$t8,0($ra)
    # Line 3126
    jal	bzero
    # Line 3115
    addiu	$s2,$s2,-9
    # Line 3127
    # lw $t9, -28012($gp) # &__glFillImage
    ld	$a0,24($sp)
    move	$a1,$s1
    move	$a2,$s0
    ld	$a6,0($sp)
    li	$a4,6656
    ld	$a5,16($sp)
    jal	__glFillImage
    li	$a3,6400
    # Line 3135
    ld	$gp,64($sp)
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    # Line 3129
    sw	$s2,4136($zero)
    ld	$v1,32($sp)
    lw	$v0,4148($zero)
    ld	$ra,112($sp)
    ld	$a0,8($sp)
    addu	$v0,$v0,$v1
    sll	$a1,$v1,0x2
    addiu	$v0,$v0,9
    sw	$v0,4148($zero)
    addu	$a0,$a0,$a1
    # Line 3133
    ld	$v0,24($sp)
    # Line 3129
    addiu	$a0,$a0,36
    sw	$a0,4144($zero)
    # Line 3133
    lw	$at,5076($v0)
    # Line 3135
    ld	$s2,40($sp)
    addiu	$sp,$sp,128
    # Line 3133
    ori	$at,$at,0x1
    # Line 3135
    jr	$ra
    # Line 3133
    sw	$at,5076($v0)
.L0d954358:
    # Line 3135
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d954364:
    # Line 3109
    mov.s	$f14,$f7
    # lw $t9, -30728($gp) # &__glsplc_Bitmap
    mov.s	$f15,$f6
    move	$a0,$s1
    move	$a1,$s0
    mov.s	$f16,$f5
    mov.s	$f17,$f4
    jal	__glsplc_Bitmap
    move	$a6,$a4
    ld	$s1,48($sp)
    ld	$ra,112($sp)
    b	.L0d954358
    ld	$s0,56($sp)
.L0d954398:
    # Line 3102
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d95439c:
    ld	$s1,48($sp)
    jal	__glsplc_InvalidValue
    ld	$s0,56($sp)
    b	.L0d954358
    ld	$ra,112($sp)
.end __glkonlc_Bitmap

# Function: __glkonle_Bitmap
# Declared: Line 3139 (Source lines: 3141-3149)
# Address: 0x0d9543b0 - 0x0d954424 (Size: 116 bytes, Frame: 128)
.globl __glkonle_Bitmap
.ent __glkonle_Bitmap
__glkonle_Bitmap:
    # Line 3141
    lui	$at,0x14
    addiu	$sp,$sp,-128
    addiu	$at,$at,-13272
    sd	$gp,112($sp)
    addu	$gp,$t9,$at
    # Line 3144
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    # Line 3141
    sd	$a2,120($sp)
    # Line 3144
    addiu	$a0,$sp,0
    # Line 3141
    sd	$s8,104($sp)
    sd	$ra,96($sp)
    # Line 3144
    bal __glKonSetPixelLEModes
    # Line 3141
    move	$s8,$a1
    # Line 3145
    lwc1	$f17,20($s8)
    lwc1	$f16,16($s8)
    lwc1	$f15,12($s8)
    lwc1	$f14,8($s8)
    # lw $t9, -32244($gp) # &__glkonim_Bitmap
    lw	$a1,4($s8)
    ld	$a6,120($sp)
    bal __glkonim_Bitmap
    lw	$a0,0($s8)
    # Line 3148
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    ld	$s8,104($sp)
    bal __glKonUnsetLEModes
    addiu	$a0,$sp,0
    ld	$ra,96($sp)
    # Line 3149
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glkonle_Bitmap

# Function: __glkonim_PolygonStipple
# Declared: Line 3152 (Source lines: 3153-3174)
# Address: 0x0d954430 - 0x0d954518 (Size: 232 bytes, Frame: 224)
.globl __glkonim_PolygonStipple
.ent __glkonim_PolygonStipple
__glkonim_PolygonStipple:
    # Line 3153
    addiu	$sp,$sp,-224
    lw	$at,4120($zero)
    sd	$a0,192($sp)
    li	$a2,1
    lui	$v0,0x14
    sd	$ra,208($sp)
    addiu	$v0,$v0,-13400
    sd	$gp,200($sp)
    beq	$at,$a2,.L0d954504
    addu	$gp,$t9,$v0
    # Line 3162
    li	$a1,6656
    sw	$a1,16($sp)
    # Line 3158
    li	$v1,32
    # Line 3159
    sw	$v1,4($sp)
    # Line 3158
    sw	$v1,0($sp)
    # Line 3161
    li	$a0,6400
    sw	$a0,12($sp)
    # Line 3166
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 3164
    sw	$a2,24($sp)
    # Line 3163
    ld	$a2,192($sp)
    # Line 3166
    addiu	$a0,$sp,0
    bal __glKonParseInput
    # Line 3163
    sw	$a2,20($sp)
    # Line 3166
    beqz	$v0,.L0d9544a4
    # Line 3167
    nop	# was lw $t9, -32320($gp) # &__glKonParseErrorDraw
    ld	$ra,208($sp)
.L0d954498:
    # Line 3174
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9544a4:
    # Line 3167
    bal __glKonParseErrorDraw
    addiu	$a0,$sp,0
    bnez	$v0,.L0d954498
    ld	$ra,208($sp)
    # Line 3168
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    bal __glKonParseHostImage
    addiu	$a0,$sp,0
    # Line 3173
    lw	$a2,4($sp)
    lw	$a1,0($sp)
    # Line 3170
    li	$a7,11
    sw	$a7,16384($zero)
    lw	$a4,184($sp)
    lw	$a5,180($sp)
    ld	$a6,192($sp)
    # Line 3173
    # lw $t9, -32300($gp) # &__glKonSendData
    # Line 3170
    andi	$a6,$a6,0x3
    sw	$a6,16384($zero)
    # Line 3173
    move	$a3,$zero
    # Line 3170
    sw	$a5,16384($zero)
    # Line 3173
    addiu	$a0,$sp,0
    bal __glKonSendData
    # Line 3170
    sw	$a4,16384($zero)
    b	.L0d954498
    ld	$ra,208($sp)
.L0d954504:
    # Line 3155
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d954498
    ld	$ra,208($sp)
.end __glkonim_PolygonStipple

# Function: __glkonConvertPolygonStipple
# Declared: Line 3177 (Source lines: 3178-3183)
# Address: 0x0d954520 - 0x0d954578 (Size: 88 bytes, Frame: 128)
.globl __glkonConvertPolygonStipple
.ent __glkonConvertPolygonStipple
__glkonConvertPolygonStipple:
    # Line 3178
    lui	$at,0x14
    addiu	$sp,$sp,-128
    addiu	$at,$at,-13640
    sd	$gp,112($sp)
    addu	$gp,$t9,$at
    # Line 3180
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    # Line 3178
    sd	$s8,104($sp)
    move	$s8,$a0
    sd	$ra,96($sp)
    # Line 3180
    bal __glKonSetPixelLEModes
    addiu	$a0,$sp,0
    # Line 3181
    # lw $t9, -32232($gp) # &__glkonim_PolygonStipple
    bal __glkonim_PolygonStipple
    addiu	$a0,$s8,512
    # Line 3182
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    ld	$s8,104($sp)
    bal __glKonUnsetLEModes
    addiu	$a0,$sp,0
    ld	$ra,96($sp)
    # Line 3183
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glkonConvertPolygonStipple

# Function: __glkonim_GetPolygonStipple
# Declared: Line 3186 (Source lines: 3187-3204)
# Address: 0x0d954580 - 0x0d954658 (Size: 216 bytes, Frame: 160)
.globl __glkonim_GetPolygonStipple
.ent __glkonim_GetPolygonStipple
__glkonim_GetPolygonStipple:
    # Line 3187
    addiu	$sp,$sp,-544
    sd	$a0,504($sp)
    sd	$s0,512($sp)
    # Line 3189
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 3187
    lui	$v1,0x14
    sd	$ra,528($sp)
    addiu	$v1,$v1,-13736
    sd	$gp,520($sp)
    # Line 3189
    beq	$at,$v0,.L0d954644
    # Line 3187
    addu	$gp,$t9,$v1
    # Line 3192
    # lw $t9, -32120($gp) # &__glkon_get_special
    move	$a1,$zero
    bal __glkon_get_special
    li	$a0,75
    # Line 3199
    ld	$a6,504($sp)
    # Line 3195
    lw	$a7,31588($s0)
    # Line 3198
    sw	$zero,432($sp)
    # Line 3199
    li	$a3,32
    li	$a2,32
    # lw $t9, -28188($gp) # &__glInitImagePack
    addiu	$a1,$sp,0
    # Line 3197
    li	$a4,6400
    sw	$a4,0($sp)
    # Line 3199
    move	$a0,$s0
    # Line 3196
    li	$a5,6656
    sw	$a5,4($sp)
    # Line 3195
    addiu	$a7,$a7,8
    # Line 3199
    jal	__glInitImagePack
    # Line 3195
    sw	$a7,8($sp)
    # Line 3201
    # lw $t9, -30488($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 3202
    # lw $t9, -29940($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,0
    # Line 3203
    lw	$t9,12628($s0)
    move	$a0,$s0
    li	$a2,1
    jalr	$t9
    addiu	$a1,$sp,0
    ld	$ra,528($sp)
.L0d954634:
    ld	$s0,512($sp)
    # Line 3204
    ld	$gp,520($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0d954644:
    # Line 3190
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d954634
    ld	$ra,528($sp)
.end __glkonim_GetPolygonStipple

# Function: DrawSubTexels
# Declared: Line 3212 (Source lines: 3213-3436)
# Address: 0x0d954660 - 0x0d9551a4 (Size: 2884 bytes, Frame: 160)
.ent DrawSubTexels
DrawSubTexels:
    # Line 3213
    addiu	$sp,$sp,-160
    sd	$s5,136($sp)
    sd	$s1,64($sp)
    # Line 3215
    lw	$s1,4112($zero)
    sd	$s4,128($sp)
    # Line 3235
    lw	$at,1796($s1)
    sd	$s2,120($sp)
    # Line 3213
    sd	$s0,56($sp)
    # Line 3235
    andi	$at,$at,0x100
    # Line 3216
    li	$v0,0x8ad0
    # Line 3213
    move	$s0,$a0
    sd	$ra,112($sp)
    sd	$s3,104($sp)
    # Line 3235
    beqz	$at,.L0d9546ac
    # Line 3216
    addu	$v0,$s1,$v0
    # Line 3235
    lw	$v1,1380($s1)
    li	$a0,0x81c5
    beq	$v1,$a0,.L0d954b5c
    nop
.L0d9546ac:
    # Line 3369
    lw	$a1,1792($s1)
    lui	$a2,0x3000
    and	$a1,$a1,$a2
    beqz	$a1,.L0d954958
    nop
    lw	$a3,31580($s1)
    andi	$a3,$a3,0x4
    beqz	$a3,.L0d954ddc
    # Line 3373
    li	$a4,1
    sw	$a4,180($s0)
.L0d9546d4:
    # Line 3379
    lw	$s5,260($v0)
    li	$t8,-8
    lw	$a1,0($s0)
    and	$s5,$s5,$t8
    slt	$a5,$s5,$a1
    beqz	$a5,.L0d95495c
    # Line 3381
    mtc1	$s5,$f1
    mtc1	$a1,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    sd	$s6,144($sp)
    mfc1	$s6,$f0
    mult	$s6,$s5
    # Line 3383
    li	$ra,1
    sw	$ra,184($s0)
    # Line 3386
    lw	$t9,416($v0)
    # Line 3385
    lw	$s4,20($s0)
    # Line 3386
    lw	$t9,4($t9)
    # Line 3384
    lw	$s3,108($s0)
    # Line 3381
    teq	$s5,$zero,0x7
    # Line 3386
    sd	$t9,48($sp)
    # Line 3381
    mflo	$ra
    subu	$ra,$a1,$ra
    # Line 3386
    beqz	$t9,.L0d954e48
    sd	$ra,40($sp)
.L0d954740:
    # Line 3388
    blez	$s6,.L0d9547b4
    # Line 3390
    la	$v0,.rodata
    # Line 3388
    la	$s2,sub_0d950000
    move	$s1,$zero
    lw	$v0,108($s0)
    addiu	$s2,$s2,6816
    nop
    nop
.L0d954760:
    # Line 3392
    lw	$ra,172($s0)
    subu	$at,$v0,$s3
    multu	$ra,$at
    # Line 3394
    move	$a1,$s5
    move	$a0,$s0
    # Line 3391
    addu	$t9,$s5,$v0
    addiu	$t9,$t9,-1
    sw	$t9,116($s0)
    # Line 3394
    move	$t9,$s2
    lw	$a2,4($s0)
    move	$a3,$zero
    # Line 3392
    mflo	$t8
    addu	$t8,$s4,$t8
    # Line 3394
    bal __glkonle_DrawPixels
    # Line 3392
    sw	$t8,20($s0)
    # Line 3390
    addiu	$s1,$s1,1
    # Line 3395
    lw	$v0,116($s0)
    addiu	$v0,$v0,1
    # Line 3390
    bne	$s6,$s1,.L0d954760
    # Line 3395
    sw	$v0,108($s0)
    # Line 3390
    la	$v0,.rodata
.L0d9547b4:
    la	$s2,sub_0d950000
    addiu	$v0,$v0,10416
    ld	$s6,144($sp)
    addiu	$s2,$s2,6816
    addiu	$s1,$v0,560
    ld	$a2,40($sp)
    lw	$a1,560($v0)
    and	$a1,$a1,$a2
    beqz	$a1,.L0d954828
    ld	$a2,40($sp)
    # Line 3399
    lw	$a4,108($s0)
    # Line 3400
    lw	$a5,172($s0)
    subu	$a6,$a4,$s3
    multu	$a5,$a6
    # Line 3402
    move	$a0,$s0
    move	$t9,$s2
    lw	$a2,4($s0)
    # Line 3399
    addu	$a4,$a1,$a4
    # Line 3400
    mflo	$a3
    # Line 3399
    addiu	$a4,$a4,-1
    sw	$a4,116($s0)
    # Line 3400
    addu	$a3,$s4,$a3
    sw	$a3,20($s0)
    # Line 3402
    bal __glkonle_DrawPixels
    move	$a3,$zero
    # Line 3403
    lw	$a7,116($s0)
    addiu	$a7,$a7,1
    sw	$a7,108($s0)
    # Line 3390
    ld	$a2,40($sp)
.L0d954828:
    lw	$a1,4($s1)
    and	$a1,$a1,$a2
    beqz	$a1,.L0d954884
    ld	$a2,40($sp)
    # Line 3399
    lw	$a4,108($s0)
    # Line 3400
    lw	$a5,172($s0)
    subu	$a6,$a4,$s3
    multu	$a5,$a6
    # Line 3402
    move	$a0,$s0
    move	$t9,$s2
    lw	$a2,4($s0)
    # Line 3399
    addu	$a4,$a1,$a4
    # Line 3400
    mflo	$a3
    # Line 3399
    addiu	$a4,$a4,-1
    sw	$a4,116($s0)
    # Line 3400
    addu	$a3,$s4,$a3
    sw	$a3,20($s0)
    # Line 3402
    bal __glkonle_DrawPixels
    move	$a3,$zero
    # Line 3403
    lw	$a7,116($s0)
    addiu	$a7,$a7,1
    sw	$a7,108($s0)
    # Line 3390
    ld	$a2,40($sp)
.L0d954884:
    lw	$a1,8($s1)
    and	$a1,$a1,$a2
    beqz	$a1,.L0d9548e0
    ld	$a2,40($sp)
    # Line 3399
    lw	$a4,108($s0)
    # Line 3400
    lw	$a5,172($s0)
    subu	$a6,$a4,$s3
    multu	$a5,$a6
    # Line 3402
    move	$a0,$s0
    move	$t9,$s2
    lw	$a2,4($s0)
    # Line 3399
    addu	$a4,$a1,$a4
    # Line 3400
    mflo	$a3
    # Line 3399
    addiu	$a4,$a4,-1
    sw	$a4,116($s0)
    # Line 3400
    addu	$a3,$s4,$a3
    sw	$a3,20($s0)
    # Line 3402
    bal __glkonle_DrawPixels
    move	$a3,$zero
    # Line 3403
    lw	$a7,116($s0)
    addiu	$a7,$a7,1
    sw	$a7,108($s0)
    # Line 3390
    ld	$a2,40($sp)
.L0d9548e0:
    lw	$a1,12($s1)
    and	$a1,$a1,$a2
    beqz	$a1,.L0d95493c
    # Line 3397
    ld	$t0,48($sp)
    # Line 3399
    lw	$a4,108($s0)
    # Line 3400
    lw	$a5,172($s0)
    subu	$a6,$a4,$s3
    multu	$a5,$a6
    # Line 3402
    move	$a0,$s0
    move	$t9,$s2
    lw	$a2,4($s0)
    # Line 3399
    addu	$a4,$a1,$a4
    # Line 3400
    mflo	$a3
    # Line 3399
    addiu	$a4,$a4,-1
    sw	$a4,116($s0)
    # Line 3400
    addu	$a3,$s4,$a3
    sw	$a3,20($s0)
    # Line 3402
    bal __glkonle_DrawPixels
    move	$a3,$zero
    # Line 3403
    lw	$a7,116($s0)
    addiu	$a7,$a7,1
    sw	$a7,108($s0)
    # Line 3397
    ld	$t0,48($sp)
.L0d95493c:
    bnez	$t0,.L0d954b38
    # Line 3407
    nop	# was lw $t9, -32204($gp) # &__glkonim_PixelStorei
    ld	$a1,48($sp)
    bal __glkonim_PixelStorei
    li	$a0,3314
    b	.L0d954b3c
    ld	$s5,136($sp)
.L0d954958:
    # Line 3409
    lw	$a1,0($s0)
.L0d95495c:
    # Line 3413
    andi	$t1,$a1,0x7
    beqz	$t1,.L0d954e2c
    # Line 3414
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 3413
    addiu	$t2,$a1,-1
    and	$t2,$a1,$t2
    beqz	$t2,.L0d954e2c
    # Line 3414
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 3418
    li	$s3,1
    sw	$s3,184($s0)
    # Line 3419
    lw	$t3,416($v0)
    lw	$t3,4($t3)
    # Line 3417
    lw	$s4,20($s0)
    # Line 3416
    lw	$s3,108($s0)
    # Line 3419
    beqz	$t3,.L0d954e00
    sd	$t3,48($sp)
    # Line 3421
    la	$a0,.rodata
.L0d95499c:
    la	$s2,sub_0d950000
    addiu	$a0,$a0,10416
    addiu	$s2,$s2,6816
    addiu	$s1,$a0,560
    # Line 3424
    lw	$v0,560($a0)
    lw	$v1,0($s0)
    and	$v0,$v0,$v1
    beqz	$v0,.L0d954a0c
    nop
    # Line 3425
    lw	$a4,108($s0)
    # Line 3426
    lw	$a5,172($s0)
    subu	$a6,$a4,$s3
    multu	$a5,$a6
    # Line 3428
    move	$a1,$v0
    move	$a0,$s0
    move	$t9,$s2
    lw	$a2,4($s0)
    # Line 3425
    addu	$a4,$v0,$a4
    # Line 3426
    mflo	$a3
    # Line 3425
    addiu	$a4,$a4,-1
    sw	$a4,116($s0)
    # Line 3426
    addu	$a3,$s4,$a3
    sw	$a3,20($s0)
    # Line 3428
    bal __glkonle_DrawPixels
    move	$a3,$zero
    # Line 3429
    lw	$a7,116($s0)
    addiu	$a7,$a7,1
    sw	$a7,108($s0)
.L0d954a0c:
    # Line 3424
    lw	$s5,4($s1)
    lw	$t8,0($s0)
    and	$s5,$s5,$t8
    beqz	$s5,.L0d954a6c
    nop
    # Line 3425
    lw	$ra,108($s0)
    # Line 3426
    lw	$at,172($s0)
    subu	$v0,$ra,$s3
    multu	$at,$v0
    # Line 3428
    move	$a1,$s5
    # Line 3425
    addu	$ra,$s5,$ra
    # Line 3426
    mflo	$t9
    addu	$t9,$s4,$t9
    sw	$t9,20($s0)
    # Line 3428
    move	$t9,$s2
    lw	$a2,4($s0)
    move	$a0,$s0
    # Line 3425
    addiu	$ra,$ra,-1
    sw	$ra,116($s0)
    # Line 3428
    bal __glkonle_DrawPixels
    move	$a3,$zero
    # Line 3429
    lw	$v1,116($s0)
    addiu	$v1,$v1,1
    sw	$v1,108($s0)
.L0d954a6c:
    # Line 3424
    lw	$s5,8($s1)
    lw	$t8,0($s0)
    and	$s5,$s5,$t8
    beqz	$s5,.L0d954acc
    nop
    # Line 3425
    lw	$ra,108($s0)
    # Line 3426
    lw	$at,172($s0)
    subu	$v0,$ra,$s3
    multu	$at,$v0
    # Line 3428
    move	$a1,$s5
    # Line 3425
    addu	$ra,$s5,$ra
    # Line 3426
    mflo	$t9
    addu	$t9,$s4,$t9
    sw	$t9,20($s0)
    # Line 3428
    move	$t9,$s2
    lw	$a2,4($s0)
    move	$a0,$s0
    # Line 3425
    addiu	$ra,$ra,-1
    sw	$ra,116($s0)
    # Line 3428
    bal __glkonle_DrawPixels
    move	$a3,$zero
    # Line 3429
    lw	$v1,116($s0)
    addiu	$v1,$v1,1
    sw	$v1,108($s0)
.L0d954acc:
    # Line 3424
    lw	$s5,12($s1)
    lw	$t8,0($s0)
    and	$s5,$s5,$t8
    beqz	$s5,.L0d954b30
    # Line 3423
    ld	$a0,48($sp)
    # Line 3425
    lw	$ra,108($s0)
    # Line 3426
    lw	$at,172($s0)
    subu	$v0,$ra,$s3
    multu	$at,$v0
    # Line 3428
    move	$a1,$s5
    # Line 3425
    addu	$ra,$s5,$ra
    # Line 3426
    mflo	$t9
    addu	$t9,$s4,$t9
    sw	$t9,20($s0)
    # Line 3428
    move	$t9,$s2
    lw	$a2,4($s0)
    move	$a0,$s0
    # Line 3425
    addiu	$ra,$ra,-1
    sw	$ra,116($s0)
    # Line 3428
    bal __glkonle_DrawPixels
    move	$a3,$zero
    # Line 3429
    lw	$v1,116($s0)
    addiu	$v1,$v1,1
    sw	$v1,108($s0)
    # Line 3423
    ld	$a0,48($sp)
.L0d954b30:
    beqz	$a0,.L0d954e14
    # Line 3433
    nop	# was lw $t9, -32204($gp) # &__glkonim_PixelStorei
.L0d954b38:
    ld	$s5,136($sp)
.L0d954b3c:
    ld	$s4,128($sp)
    ld	$s2,120($sp)
    ld	$ra,112($sp)
    ld	$s3,104($sp)
    # Line 3436
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d954b5c:
    # Line 3235
    lw	$a0,32($s0)
    beqz	$a0,.L0d954de4
    li	$a1,3553
    beq	$a0,$a1,.L0d954de4
    li	$a2,3552
.L0d954b70:
    bne	$a0,$a2,.L0d9546ac
    nop
    lw	$a3,1792($s1)
    dsll32	$a3,$a3,0x6
    bgez	$a3,.L0d9546ac
    # Line 3239
    nop	# was lw $t9, -32304($gp) # &GetConvolutionFilter
.L0d954b88:
    bal GetConvolutionFilter
    nop
    lw	$a0,64($v0)
    beqz	$a0,.L0d955134
    lw	$a1,0($s0)
    # Line 3241
    addiu	$s5,$a0,-1
    # Line 3242
    slt	$a4,$s5,$a1
    beqz	$a4,.L0d954b38
    nop
.L0d954bac:
    # Line 3253
    lw	$a5,31580($s1)
    andi	$a5,$a5,0x4
    beqz	$a5,.L0d955148
    # Line 3261
    li	$a6,1
    sw	$a6,180($s0)
.L0d954bc0:
    # Line 3273
    sll	$s3,$a0,0x3
    lui	$s2,0x1
    addu	$s3,$s1,$s3
    addu	$s3,$s2,$s3
    lw	$v0,-29740($s3)
    # Line 3278
    li	$s4,-8
    subu	$v0,$v0,$s5
    and	$v0,$v0,$s4
    addu	$v0,$s5,$v0
    slt	$a7,$v0,$a1
    bnez	$a7,.L0d954e5c
    sd	$s5,16($sp)
.L0d954bf0:
    # Line 3342
    ld	$s5,16($sp)
    subu	$v0,$a1,$s5
    andi	$t8,$v0,0x7
    beqz	$t8,.L0d955168
    # Line 3344
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 3342
    addiu	$t9,$v0,-1
    and	$t9,$v0,$t9
    beqz	$t9,.L0d955164
    # Line 3348
    li	$at,1
    sw	$at,184($s0)
    # Line 3350
    addu	$ra,$s2,$s1
    lw	$ra,-29584($ra)
    # Line 3347
    lw	$s4,20($s0)
    # Line 3350
    lw	$ra,4($ra)
    # Line 3346
    lw	$s3,108($s0)
    sd	$v0,24($sp)
    # Line 3350
    beqz	$ra,.L0d955150
    sd	$ra,48($sp)
    # Line 3352
    la	$a0,.rodata
.L0d954c3c:
    la	$s2,sub_0d950000
    addiu	$a0,$a0,10416
    addiu	$s2,$s2,6816
    addiu	$s1,$a0,560
    ld	$v1,24($sp)
    lw	$v0,560($a0)
    and	$v0,$v0,$v1
    beqz	$v0,.L0d954cac
    ld	$v1,24($sp)
    # Line 3356
    lw	$a5,108($s0)
    # Line 3357
    lw	$a6,172($s0)
    subu	$a3,$a5,$s3
    multu	$a6,$a3
    # Line 3359
    addu	$a1,$v0,$s5
    move	$a0,$s0
    lw	$a2,4($s0)
    move	$t9,$s2
    # Line 3356
    addu	$a5,$v0,$a5
    addiu	$a5,$a5,-1
    sw	$a5,116($s0)
    # Line 3357
    mflo	$a4
    addu	$a4,$s4,$a4
    # Line 3359
    bal __glkonle_DrawPixels
    # Line 3357
    sw	$a4,20($s0)
    # Line 3362
    lw	$a7,116($s0)
    addiu	$a7,$a7,1
    sw	$a7,108($s0)
    # Line 3352
    ld	$v1,24($sp)
.L0d954cac:
    lw	$v0,4($s1)
    and	$v0,$v0,$v1
    beqz	$v0,.L0d954d08
    ld	$v1,24($sp)
    # Line 3356
    lw	$a5,108($s0)
    # Line 3357
    lw	$a6,172($s0)
    subu	$a3,$a5,$s3
    multu	$a6,$a3
    # Line 3359
    addu	$a1,$v0,$s5
    move	$a0,$s0
    lw	$a2,4($s0)
    move	$t9,$s2
    # Line 3356
    addu	$a5,$v0,$a5
    addiu	$a5,$a5,-1
    sw	$a5,116($s0)
    # Line 3357
    mflo	$a4
    addu	$a4,$s4,$a4
    # Line 3359
    bal __glkonle_DrawPixels
    # Line 3357
    sw	$a4,20($s0)
    # Line 3362
    lw	$a7,116($s0)
    addiu	$a7,$a7,1
    sw	$a7,108($s0)
    # Line 3352
    ld	$v1,24($sp)
.L0d954d08:
    lw	$v0,8($s1)
    and	$v0,$v0,$v1
    beqz	$v0,.L0d954d64
    ld	$v1,24($sp)
    # Line 3356
    lw	$a5,108($s0)
    # Line 3357
    lw	$a6,172($s0)
    subu	$a3,$a5,$s3
    multu	$a6,$a3
    # Line 3359
    addu	$a1,$v0,$s5
    move	$a0,$s0
    lw	$a2,4($s0)
    move	$t9,$s2
    # Line 3356
    addu	$a5,$v0,$a5
    addiu	$a5,$a5,-1
    sw	$a5,116($s0)
    # Line 3357
    mflo	$a4
    addu	$a4,$s4,$a4
    # Line 3359
    bal __glkonle_DrawPixels
    # Line 3357
    sw	$a4,20($s0)
    # Line 3362
    lw	$a7,116($s0)
    addiu	$a7,$a7,1
    sw	$a7,108($s0)
    # Line 3352
    ld	$v1,24($sp)
.L0d954d64:
    lw	$v0,12($s1)
    and	$v0,$v0,$v1
    beqz	$v0,.L0d954dc0
    # Line 3354
    ld	$t0,48($sp)
    # Line 3356
    lw	$a5,108($s0)
    # Line 3357
    lw	$a6,172($s0)
    subu	$a3,$a5,$s3
    multu	$a6,$a3
    # Line 3359
    addu	$a1,$v0,$s5
    move	$a0,$s0
    lw	$a2,4($s0)
    move	$t9,$s2
    # Line 3356
    addu	$a5,$v0,$a5
    addiu	$a5,$a5,-1
    sw	$a5,116($s0)
    # Line 3357
    mflo	$a4
    addu	$a4,$s4,$a4
    # Line 3359
    bal __glkonle_DrawPixels
    # Line 3357
    sw	$a4,20($s0)
    # Line 3362
    lw	$a7,116($s0)
    addiu	$a7,$a7,1
    sw	$a7,108($s0)
    # Line 3354
    ld	$t0,48($sp)
.L0d954dc0:
    bnez	$t0,.L0d954b38
    # Line 3366
    nop	# was lw $t9, -32204($gp) # &__glkonim_PixelStorei
    ld	$a1,48($sp)
    bal __glkonim_PixelStorei
    li	$a0,3314
    b	.L0d954b3c
    ld	$s5,136($sp)
.L0d954ddc:
    b	.L0d9546d4
    # Line 3375
    sw	$zero,180($s0)
.L0d954de4:
    # Line 3235
    lw	$t1,1792($s1)
    lui	$t2,0xc00
    and	$t1,$t1,$t2
    bnez	$t1,.L0d954b88
    # Line 3239
    nop	# was lw $t9, -32304($gp) # &GetConvolutionFilter
    b	.L0d954b70
    # Line 3235
    li	$a2,3552
.L0d954e00:
    # Line 3421
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    bal __glkonim_PixelStorei
    li	$a0,3314
    b	.L0d95499c
    la	$a0,.rodata
.L0d954e14:
    # Line 3433
    ld	$a1,48($sp)
    bal __glkonim_PixelStorei
    li	$a0,3314
    b	.L0d954b3c
    ld	$s5,136($sp)
    # Line 3414
    # lw $t9, -32744($gp) # &sub_0d950000
.L0d954e2c:
    addiu	$t9,$t9,6816
    move	$a0,$s0
    move	$a3,$zero
    bal __glkonle_DrawPixels
    lw	$a2,4($s0)
    b	.L0d954b3c
    ld	$s5,136($sp)
.L0d954e48:
    # Line 3388
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    bal __glkonim_PixelStorei
    li	$a0,3314
    b	.L0d954740
    nop
.L0d954e5c:
    # Line 3280
    lw	$a3,100($s0)
    lw	$a2,148($s0)
    lw	$a1,144($s0)
    # lw $t9, -32276($gp) # &GetSingleCompFromPipe
    lw	$a0,24($s0)
    sd	$v0,8($sp)
    bal GetSingleCompFromPipe
    sd	$s5,16($sp)
    # Line 3284
    ld	$a4,16($sp)
    lw	$a5,-29744($s3)
    subu	$a5,$a5,$a4
    # Line 3280
    move	$s5,$v0
    # Line 3284
    and	$a5,$s4,$a5
    # Line 3286
    lw	$a1,0($s0)
    beqz	$v0,.L0d954ea4
    # Line 3284
    addu	$a4,$a4,$a5
    # Line 3286
    slt	$a6,$a4,$a1
    beqz	$a6,.L0d954bf0
.L0d954ea4:
    # Line 3300
    li	$t0,1
    sw	$t0,184($s0)
    # Line 3304
    addu	$a7,$s2,$s1
    lw	$a7,-29584($a7)
    # Line 3299
    lw	$s4,20($s0)
    # Line 3304
    lw	$a7,4($a7)
    # Line 3301
    ld	$a6,16($sp)
    # Line 3298
    lw	$s3,108($s0)
    # Line 3301
    subu	$a6,$a1,$a6
    # Line 3304
    beqz	$a7,.L0d955184
    sd	$a7,48($sp)
.L0d954ed0:
    # Line 3334
    ld	$a0,8($sp)
    ld	$a7,16($sp)
    movn	$a0,$a4,$s5
    mtc1	$a6,$f1
    subu	$a7,$a0,$a7
    mtc1	$a7,$f2
    cvt.d.w	$f1,$f1
    cvt.d.w	$f2,$f2
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$t1,$f1
    mult	$t1,$a7
    sd	$a7,96($sp)
    teq	$a7,$zero,0x7
    mflo	$a5
    sd	$t1,32($sp)
    blez	$t1,.L0d954f88
    subu	$a5,$a6,$a5
    sd	$a5,80($sp)
    ld	$s5,96($sp)
    la	$s2,sub_0d950000
    lw	$v0,108($s0)
    move	$s1,$zero
    sd	$a0,0($sp)
    addiu	$s2,$s2,6816
.L0d954f34:
    # Line 3311
    lw	$ra,172($s0)
    subu	$a3,$v0,$s3
    multu	$ra,$a3
    # Line 3314
    lw	$a2,4($s0)
    # Line 3309
    addu	$t9,$s5,$v0
    addiu	$t9,$t9,-1
    sw	$t9,116($s0)
    # Line 3314
    move	$t9,$s2
    ld	$a1,0($sp)
    move	$a0,$s0
    # Line 3311
    mflo	$t8
    addu	$t8,$s4,$t8
    # Line 3314
    bal __glkonle_DrawPixels
    # Line 3311
    sw	$t8,20($s0)
    # Line 3308
    ld	$at,32($sp)
    addiu	$s1,$s1,1
    # Line 3317
    lw	$v0,116($s0)
    addiu	$v0,$v0,1
    # Line 3308
    bne	$at,$s1,.L0d954f34
    # Line 3317
    sw	$v0,108($s0)
    ld	$a5,80($sp)
.L0d954f88:
    # Line 3308
    la	$a0,.rodata
    la	$s2,sub_0d950000
    move	$s5,$a5
    addiu	$a0,$a0,10416
    addiu	$s2,$s2,6816
    addiu	$s1,$a0,560
    lw	$v0,560($a0)
    and	$v0,$v0,$a5
    beqz	$v0,.L0d954ffc
    nop
    # Line 3321
    lw	$a0,108($s0)
    # Line 3322
    lw	$a2,172($s0)
    subu	$a3,$a0,$s3
    multu	$a2,$a3
    # Line 3325
    ld	$a1,16($sp)
    move	$t9,$s2
    # Line 3321
    addu	$a0,$v0,$a0
    # Line 3325
    addu	$a1,$v0,$a1
    lw	$a2,4($s0)
    # Line 3321
    addiu	$a0,$a0,-1
    sw	$a0,116($s0)
    # Line 3325
    move	$a0,$s0
    # Line 3322
    mflo	$v1
    addu	$v1,$s4,$v1
    # Line 3325
    bal __glkonle_DrawPixels
    # Line 3322
    sw	$v1,20($s0)
    # Line 3328
    lw	$a3,116($s0)
    addiu	$a3,$a3,1
    sw	$a3,108($s0)
.L0d954ffc:
    # Line 3308
    lw	$v0,4($s1)
    and	$v0,$v0,$s5
    beqz	$v0,.L0d955058
    nop
    # Line 3321
    lw	$a0,108($s0)
    # Line 3322
    lw	$a2,172($s0)
    subu	$a3,$a0,$s3
    multu	$a2,$a3
    # Line 3325
    ld	$a1,16($sp)
    move	$t9,$s2
    # Line 3321
    addu	$a0,$v0,$a0
    # Line 3325
    addu	$a1,$v0,$a1
    lw	$a2,4($s0)
    # Line 3321
    addiu	$a0,$a0,-1
    sw	$a0,116($s0)
    # Line 3325
    move	$a0,$s0
    # Line 3322
    mflo	$v1
    addu	$v1,$s4,$v1
    # Line 3325
    bal __glkonle_DrawPixels
    # Line 3322
    sw	$v1,20($s0)
    # Line 3328
    lw	$a3,116($s0)
    addiu	$a3,$a3,1
    sw	$a3,108($s0)
.L0d955058:
    # Line 3308
    lw	$v0,8($s1)
    and	$v0,$v0,$s5
    beqz	$v0,.L0d9550b4
    nop
    # Line 3321
    lw	$a0,108($s0)
    # Line 3322
    lw	$a2,172($s0)
    subu	$a3,$a0,$s3
    multu	$a2,$a3
    # Line 3325
    ld	$a1,16($sp)
    move	$t9,$s2
    # Line 3321
    addu	$a0,$v0,$a0
    # Line 3325
    addu	$a1,$v0,$a1
    lw	$a2,4($s0)
    # Line 3321
    addiu	$a0,$a0,-1
    sw	$a0,116($s0)
    # Line 3325
    move	$a0,$s0
    # Line 3322
    mflo	$v1
    addu	$v1,$s4,$v1
    # Line 3325
    bal __glkonle_DrawPixels
    # Line 3322
    sw	$v1,20($s0)
    # Line 3328
    lw	$a3,116($s0)
    addiu	$a3,$a3,1
    sw	$a3,108($s0)
.L0d9550b4:
    # Line 3308
    lw	$v0,12($s1)
    and	$v0,$v0,$s5
    beqz	$v0,.L0d955114
    # Line 3319
    ld	$a4,48($sp)
    # Line 3321
    lw	$a0,108($s0)
    # Line 3322
    lw	$a2,172($s0)
    subu	$a3,$a0,$s3
    multu	$a2,$a3
    # Line 3325
    ld	$a1,16($sp)
    move	$t9,$s2
    # Line 3321
    addu	$a0,$v0,$a0
    # Line 3325
    addu	$a1,$v0,$a1
    lw	$a2,4($s0)
    # Line 3321
    addiu	$a0,$a0,-1
    sw	$a0,116($s0)
    # Line 3325
    move	$a0,$s0
    # Line 3322
    mflo	$v1
    addu	$v1,$s4,$v1
    # Line 3325
    bal __glkonle_DrawPixels
    # Line 3322
    sw	$v1,20($s0)
    # Line 3328
    lw	$a3,116($s0)
    addiu	$a3,$a3,1
    sw	$a3,108($s0)
    # Line 3319
    ld	$a4,48($sp)
.L0d955114:
    bnez	$a4,.L0d954b3c
    ld	$s5,136($sp)
    # Line 3332
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    ld	$a1,48($sp)
    bal __glkonim_PixelStorei
    li	$a0,3314
    b	.L0d954b3c
    ld	$s5,136($sp)
.L0d955134:
    # Line 3253
    blez	$a1,.L0d954b3c
    ld	$s5,136($sp)
    li	$a0,1
    b	.L0d954bac
    move	$s5,$zero
.L0d955148:
    b	.L0d954bc0
    # Line 3263
    sw	$zero,180($s0)
.L0d955150:
    # Line 3352
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    bal __glkonim_PixelStorei
    li	$a0,3314
    b	.L0d954c3c
    la	$a0,.rodata
.L0d955164:
    # Line 3344
    # lw $t9, -32744($gp) # &sub_0d950000
.L0d955168:
    addiu	$t9,$t9,6816
    move	$a0,$s0
    move	$a3,$zero
    bal __glkonle_DrawPixels
    lw	$a2,4($s0)
    b	.L0d954b3c
    ld	$s5,136($sp)
.L0d955184:
    # Line 3306
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    sd	$a6,72($sp)
    sd	$a4,88($sp)
    bal __glkonim_PixelStorei
    li	$a0,3314
    ld	$a4,88($sp)
    b	.L0d954ed0
    ld	$a6,72($sp)
.end DrawSubTexels

# Function: __glKonDrawTexels3D
# Declared: Line 3439 (Source lines: 3440-3491)
# Address: 0x0d9551b0 - 0x0d955344 (Size: 404 bytes, Frame: 208)
.globl __glKonDrawTexels3D
.ent __glKonDrawTexels3D
__glKonDrawTexels3D:
    # Line 3445
    li	$a1,129
    # Line 3443
    lw	$at,4112($zero)
    # Line 3440
    lui	$a2,0x14
    # Line 3445
    sw	$a1,24($a0)
    # Line 3440
    addiu	$sp,$sp,-80
    addiu	$a2,$a2,-16856
    sd	$gp,64($sp)
    addu	$gp,$t9,$a2
    # Line 3447
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 3440
    sd	$a0,48($sp)
    # Line 3443
    li	$v0,0x8ad0
    # Line 3440
    sd	$ra,56($sp)
    # Line 3443
    addu	$at,$at,$v0
    # Line 3447
    bal __glKonParseInput
    sd	$at,40($sp)
    beqz	$v0,.L0d955204
    # Line 3448
    nop	# was lw $t9, -32320($gp) # &__glKonParseErrorDraw
.L0d9551f4:
    ld	$ra,56($sp)
.L0d9551f8:
    # Line 3491
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d955204:
    # Line 3448
    bal __glKonParseErrorDraw
    ld	$a0,48($sp)
    bnez	$v0,.L0d9551f4
    # Line 3449
    ld	$a3,48($sp)
    lw	$a3,0($a3)
    beqz	$a3,.L0d9551f4
    ld	$a4,48($sp)
    lw	$a4,4($a4)
    beqz	$a4,.L0d9551f4
    # Line 3453
    nop	# was lw $t9, -32308($gp) # &__glKonParseHostImage
    bal __glKonParseHostImage
    ld	$a0,48($sp)
    ld	$a2,48($sp)
    lw	$a2,8($a2)
    slti	$a5,$a2,2
    # Line 3471
    ld	$a6,48($sp)
    # Line 3453
    bnez	$a5,.L0d95532c
    # Line 3467
    ld	$a3,40($sp)
    lw	$a3,412($a3)
    ld	$a5,48($sp)
    lw	$a4,24($a3)
    # Line 3471
    lw	$t8,168($a6)
    # Line 3467
    lw	$a5,20($a5)
    beqz	$a4,.L0d955320
    sd	$a5,0($sp)
.L0d955268:
    # Line 3476
    lw	$t1,116($a6)
    # Line 3471
    mult	$t8,$a4
    # Line 3472
    lw	$t3,20($a3)
    # Line 3471
    mflo	$t2
    nop
    nop
    # Line 3472
    multu	$t2,$t3
    # Line 3476
    sd	$t1,16($sp)
    # Line 3475
    lw	$t0,108($a6)
    sd	$t0,8($sp)
    # Line 3472
    ld	$a5,0($sp)
    # Line 3471
    sd	$t2,24($sp)
    # Line 3472
    mflo	$a7
    addu	$a5,$a5,$a7
    # Line 3476
    blez	$a2,.L0d955304
    # Line 3472
    sw	$a5,20($a6)
    # Line 3476
    sd	$zero,32($sp)
.L0d9552ac:
    # Line 3478
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,18016
    bal __glkonim_GetPolygonStipple
    ld	$a0,48($sp)
    # Line 3481
    ld	$a2,8($sp)
    # Line 3482
    ld	$a3,16($sp)
    ld	$at,48($sp)
    # Line 3479
    ld	$ra,24($sp)
    # Line 3482
    sw	$a3,116($at)
    # Line 3481
    sw	$a2,108($at)
    # Line 3479
    lw	$v1,20($at)
    # Line 3477
    ld	$v0,32($sp)
    lw	$a1,8($at)
    # Line 3480
    lw	$a0,124($at)
    # Line 3477
    addiu	$v0,$v0,1
    sd	$v0,32($sp)
    slt	$v0,$v0,$a1
    # Line 3480
    addiu	$a0,$a0,1
    sw	$a0,124($at)
    # Line 3479
    addu	$ra,$ra,$v1
    # Line 3477
    bnez	$v0,.L0d9552ac
    # Line 3479
    sw	$ra,20($at)
.L0d955304:
    # Line 3491
    ld	$gp,64($sp)
    ld	$ra,56($sp)
    # Line 3486
    ld	$a5,48($sp)
    ld	$a4,0($sp)
    # Line 3491
    addiu	$sp,$sp,80
    jr	$ra
    # Line 3486
    sw	$a4,20($a5)
.L0d955320:
    ld	$a4,48($sp)
    b	.L0d955268
    # Line 3469
    lw	$a4,4($a4)
.L0d95532c:
    # Line 3489
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,18016
    bal __glkonim_GetPolygonStipple
    ld	$a0,48($sp)
    b	.L0d9551f8
    ld	$ra,56($sp)
.end __glKonDrawTexels3D

# Function: __glKonCopyTexImage
# Declared: Line 3494 (Source lines: 3495-3753)
# Address: 0x0d955350 - 0x0d955d6c (Size: 2588 bytes, Frame: 128)
.globl __glKonCopyTexImage
.ent __glKonCopyTexImage
__glKonCopyTexImage:
    # Line 3495
    addiu	$sp,$sp,-128
    sd	$s1,56($sp)
    # Line 3496
    lw	$s1,4112($zero)
    sd	$ra,88($sp)
    # Line 3495
    lui	$v1,0x14
    # Line 3496
    lbu	$at,3220($s1)
    # Line 3495
    sd	$s0,64($sp)
    addiu	$v1,$v1,-17272
    move	$s0,$a0
    sd	$gp,72($sp)
    addu	$gp,$t9,$v1
    sd	$s4,96($sp)
    # Line 3496
    beqz	$at,.L0d9557c8
    move	$v0,$s1
    # Line 3511
    lw	$a0,1796($s1)
    andi	$a0,$a0,0x20
    beqz	$a0,.L0d9553a8
    nop
    # Line 3515
    lw	$a1,132($s0)
    ori	$a1,$a1,0x8000
    sw	$a1,132($s0)
    lw	$v0,4112($zero)
.L0d9553a8:
    # Line 3518
    lw	$a2,1796($v0)
    andi	$a2,$a2,0x100
    beqz	$a2,.L0d9553c8
    nop
    lw	$a3,1380($v0)
    li	$a4,0x81c5
    beq	$a3,$a4,.L0d9557e4
    nop
.L0d9553c8:
    # Line 3667
    lw	$a5,1792($s1)
    lui	$a6,0x3000
    and	$a5,$a5,$a6
    beqz	$a5,.L0d9556ec
    lw	$a3,0($s0)
    # Line 3669
    lw	$a0,132($s0)
    ori	$a0,$a0,0x4
    sw	$a0,132($s0)
    lw	$a7,3460($s1)
    li	$t0,-3
    beq	$a7,$t0,.L0d95588c
    # Line 3672
    li	$a4,0x8b94
    # Line 3673
    lw	$a1,24($s0)
    andi	$a1,$a1,0x2
    beqz	$a1,.L0d95542c
    # Line 3678
    li	$a4,0x8bd4
    # Line 3673
    lw	$a2,3256($s1)
    lw	$a4,3260($s1)
    beq	$a2,$a4,.L0d95542c
    # Line 3678
    li	$a4,0x8bd4
    # Line 3676
    li	$a4,0x8b94
    addu	$a4,$a4,$s1
    b	.L0d955434
    lw	$a4,0($a4)
    # Line 3678
    li	$a4,0x8bd4
.L0d95542c:
    addu	$a4,$a4,$s1
    lw	$a4,0($a4)
.L0d955434:
    li	$a5,-8
    and	$a5,$a4,$a5
    slt	$a6,$a5,$a3
    beqz	$a6,.L0d9556f0
    # Line 3721
    andi	$a6,$a3,0x7
    # Line 3682
    mtc1	$a5,$f1
    mtc1	$a3,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a6,$f0
    mult	$a6,$a5
    teq	$a5,$zero,0x7
    # Line 3684
    li	$s4,253
    # Line 3682
    mflo	$v0
    # Line 3683
    blez	$a6,.L0d955958
    # Line 3682
    subu	$v0,$a3,$v0
    sd	$s3,112($sp)
    # Line 3683
    lw	$s3,16($s0)
    sd	$s2,104($sp)
    lw	$s2,140($s0)
    lw	$t3,136($s0)
    lw	$t2,128($s0)
    lw	$t1,124($s0)
    lw	$t0,120($s0)
    lw	$a7,112($s0)
    lw	$t9,104($s0)
    lw	$s1,100($s0)
    lw	$ra,4($s0)
    lw	$t8,40($s0)
    lw	$a3,36($s0)
    lw	$a1,108($s0)
    move	$v1,$a6
    sd	$v1,40($sp)
    andi	$v1,$v1,0x1
    li	$s4,253
    sd	$a1,32($sp)
    move	$a4,$zero
    beqz	$v1,.L0d955544
    sd	$a1,48($sp)
    # Line 3686
    sw	$s4,16384($zero)
    sw	$a3,16384($zero)
    # Line 3698
    addu	$a3,$a3,$a5
    sw	$a3,36($s0)
    # Line 3686
    sw	$t8,16384($zero)
    sw	$a5,16384($zero)
    sw	$ra,16384($zero)
    sw	$zero,16384($zero)
    sw	$s1,16384($zero)
    sw	$t9,16384($zero)
    # Line 3685
    ld	$a2,32($sp)
    # Line 3686
    sw	$a2,16384($zero)
    sw	$a7,16384($zero)
    # Line 3685
    addu	$a1,$a5,$a2
    sd	$a1,48($sp)
    # Line 3697
    sw	$a1,108($s0)
    # Line 3685
    addiu	$a1,$a1,-1
    # Line 3686
    sw	$a1,16384($zero)
    sw	$t0,16384($zero)
    sw	$t1,16384($zero)
    sw	$t2,16384($zero)
    sw	$a0,16384($zero)
    sw	$t3,16384($zero)
    sw	$s2,16384($zero)
    sw	$s3,16384($zero)
    # Line 3684
    li	$a4,1
    # Line 3685
    sw	$a1,116($s0)
.L0d955544:
    ld	$at,40($sp)
    sd	$v0,16($sp)
    sra	$at,$at,0x1
    ld	$v1,48($sp)
    beqz	$at,.L0d95561c
    sd	$v1,24($sp)
    ld	$v0,48($sp)
.L0d955560:
    # Line 3686
    sw	$s4,16384($zero)
    # Line 3698
    addu	$at,$a3,$a5
    # Line 3686
    sw	$a3,16384($zero)
    # Line 3698
    addu	$a3,$at,$a5
    sw	$a3,36($s0)
    # Line 3686
    sw	$t8,16384($zero)
    sw	$a5,16384($zero)
    sw	$ra,16384($zero)
    sw	$zero,16384($zero)
    sw	$s1,16384($zero)
    sw	$t9,16384($zero)
    sw	$v0,16384($zero)
    # Line 3685
    addu	$a2,$a5,$v0
    addu	$v0,$a5,$a2
    # Line 3697
    sw	$v0,108($s0)
    # Line 3686
    sw	$a7,16384($zero)
    # Line 3685
    addiu	$v1,$a2,-1
    # Line 3686
    sw	$v1,16384($zero)
    sw	$t0,16384($zero)
    sw	$t1,16384($zero)
    sw	$t2,16384($zero)
    sw	$a0,16384($zero)
    sw	$t3,16384($zero)
    sw	$s2,16384($zero)
    sw	$s3,16384($zero)
    sw	$s4,16384($zero)
    sw	$at,16384($zero)
    sw	$t8,16384($zero)
    sw	$a5,16384($zero)
    sw	$ra,16384($zero)
    sw	$zero,16384($zero)
    sw	$s1,16384($zero)
    sw	$t9,16384($zero)
    sw	$a2,16384($zero)
    sw	$a7,16384($zero)
    # Line 3685
    addiu	$a1,$v0,-1
    # Line 3686
    sw	$a1,16384($zero)
    sw	$t0,16384($zero)
    sw	$t1,16384($zero)
    sw	$t2,16384($zero)
    sw	$a0,16384($zero)
    sw	$t3,16384($zero)
    # Line 3684
    addiu	$a4,$a4,2
    # Line 3686
    sw	$s2,16384($zero)
    sw	$s3,16384($zero)
    # Line 3684
    bne	$a6,$a4,.L0d955560
    # Line 3685
    sw	$a1,116($s0)
.L0d95561c:
    ld	$s3,112($sp)
    ld	$s2,104($sp)
.L0d955624:
    # Line 3684
    la	$v0,.rodata
    addiu	$v0,$v0,10416
    ld	$s1,16($sp)
    addiu	$a4,$v0,576
    addiu	$v0,$v0,560
.L0d955638:
    lw	$a3,0($v0)
    and	$a3,$a3,$s1
    beqz	$a3,.L0d9556dc
    # Line 3700
    addiu	$v0,$v0,4
    # Line 3703
    sw	$s4,16384($zero)
    lw	$a6,16($s0)
    lw	$a7,140($s0)
    lw	$t0,136($s0)
    lw	$t1,128($s0)
    lw	$t2,124($s0)
    lw	$t3,120($s0)
    lw	$t8,112($s0)
    lw	$ra,104($s0)
    lw	$at,100($s0)
    lw	$v1,4($s0)
    lw	$a1,40($s0)
    lw	$a2,36($s0)
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$a3,16384($zero)
    sw	$v1,16384($zero)
    sw	$zero,16384($zero)
    sw	$at,16384($zero)
    sw	$ra,16384($zero)
    # Line 3702
    lw	$t9,108($s0)
    # Line 3703
    sw	$t9,16384($zero)
    sw	$t8,16384($zero)
    # Line 3715
    addu	$a5,$a2,$a3
    sw	$a5,36($s0)
    # Line 3702
    addu	$a5,$a3,$t9
    # Line 3714
    sw	$a5,108($s0)
    # Line 3702
    addiu	$a5,$a5,-1
    # Line 3703
    sw	$a5,16384($zero)
    sw	$t3,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    sw	$a0,16384($zero)
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
    # Line 3702
    sw	$a5,116($s0)
.L0d9556dc:
    # Line 3700
    bne	$v0,$a4,.L0d955638
    nop
    b	.L0d9557cc
    ld	$s4,96($sp)
.L0d9556ec:
    # Line 3721
    andi	$a6,$a3,0x7
.L0d9556f0:
    beqz	$a6,.L0d95589c
    ld	$s4,96($sp)
    addiu	$a7,$a3,-1
    and	$a7,$a3,$a7
    beqz	$a7,.L0d955898
    # Line 3722
    la	$v0,.rodata
    li	$s4,253
    addiu	$v0,$v0,10416
    addiu	$a4,$v0,576
    addiu	$v0,$v0,560
.L0d955718:
    # Line 3735
    lw	$a0,0($v0)
    and	$a0,$a0,$a3
    beqz	$a0,.L0d9557c0
    # Line 3734
    addiu	$v0,$v0,4
    # Line 3737
    sw	$s4,16384($zero)
    lw	$a2,16($s0)
    lw	$a5,140($s0)
    lw	$a6,136($s0)
    lw	$a7,132($s0)
    lw	$t0,128($s0)
    lw	$t1,124($s0)
    lw	$t2,120($s0)
    lw	$t3,112($s0)
    lw	$t8,104($s0)
    lw	$t9,100($s0)
    lw	$ra,4($s0)
    lw	$at,40($s0)
    lw	$v1,36($s0)
    sw	$v1,16384($zero)
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    sw	$ra,16384($zero)
    sw	$zero,16384($zero)
    sw	$t9,16384($zero)
    sw	$t8,16384($zero)
    # Line 3736
    lw	$s1,108($s0)
    # Line 3737
    sw	$s1,16384($zero)
    sw	$t3,16384($zero)
    # Line 3749
    addu	$a1,$v1,$a0
    sw	$a1,36($s0)
    # Line 3736
    addu	$a1,$a0,$s1
    # Line 3748
    sw	$a1,108($s0)
    # Line 3736
    addiu	$a1,$a1,-1
    # Line 3737
    sw	$a1,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a2,16384($zero)
    # Line 3736
    sw	$a1,116($s0)
.L0d9557c0:
    # Line 3734
    bne	$v0,$a4,.L0d955718
    nop
.L0d9557c8:
    ld	$s4,96($sp)
.L0d9557cc:
    ld	$ra,88($sp)
    # Line 3753
    ld	$gp,72($sp)
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9557e4:
    # Line 3518
    lw	$a0,32($s0)
    beqz	$a0,.L0d95593c
    li	$a2,3553
    beq	$a0,$a2,.L0d95593c
    li	$a3,3552
.L0d9557f8:
    bne	$a0,$a3,.L0d9553c8
    nop
    lw	$a4,1792($v0)
    dsll32	$a4,$a4,0x6
    bgez	$a4,.L0d9553c8
    # Line 3524
    nop	# was lw $t9, -32304($gp) # &GetConvolutionFilter
.L0d955810:
    # Line 3523
    lw	$a5,132($s0)
    ori	$a5,$a5,0x4
    # Line 3524
    bal GetConvolutionFilter
    # Line 3523
    sw	$a5,132($s0)
    # Line 3524
    lw	$a6,64($v0)
    # Line 3530
    lw	$a3,0($s0)
    addiu	$a0,$a6,-1
    slt	$t0,$a0,$a3
    # Line 3538
    li	$t2,-3
    # Line 3530
    li	$a7,1
    # Line 3527
    move	$a4,$a6
    # Line 3530
    beqz	$t0,.L0d9557c8
    movz	$a4,$a7,$a6
    # Line 3538
    lw	$t1,3460($s1)
    beq	$t1,$t2,.L0d955ca8
    # Line 3550
    sll	$s4,$a4,0x3
    # Line 3552
    lw	$t3,24($s0)
    andi	$t3,$t3,0x2
    beqz	$t3,.L0d955964
    # Line 3558
    sll	$s4,$a4,0x3
    # Line 3552
    lw	$t8,3256($s1)
    lw	$t9,3260($s1)
    beq	$t8,$t9,.L0d955964
    # Line 3558
    sll	$s4,$a4,0x3
    # Line 3555
    sll	$s4,$a4,0x3
    addu	$s4,$s1,$s4
    lui	$t8,0x1
    addu	$s4,$s4,$t8
    # Line 3556
    lw	$a4,-29804($s4)
    b	.L0d955978
    # Line 3555
    lw	$s4,-29808($s4)
.L0d95588c:
    # Line 3672
    addu	$a4,$a4,$s1
    b	.L0d955434
    lw	$a4,0($a4)
.L0d955898:
    ld	$s4,96($sp)
.L0d95589c:
    # Line 3753
    ld	$gp,72($sp)
    # Line 3722
    lw	$a5,16($s0)
    lw	$a6,140($s0)
    lw	$a7,136($s0)
    lw	$t0,132($s0)
    lw	$t1,128($s0)
    lw	$t2,124($s0)
    lw	$t3,120($s0)
    lw	$s1,116($s0)
    lw	$t8,112($s0)
    lw	$t9,108($s0)
    lw	$at,104($s0)
    lw	$v0,100($s0)
    lw	$v1,4($s0)
    lw	$a0,40($s0)
    lw	$a1,36($s0)
    # Line 3753
    ld	$s0,64($sp)
    # Line 3722
    li	$a2,253
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    sw	$a3,16384($zero)
    sw	$v1,16384($zero)
    sw	$zero,16384($zero)
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    sw	$t9,16384($zero)
    sw	$t8,16384($zero)
    sw	$s1,16384($zero)
    sw	$t3,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    ld	$ra,88($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    # Line 3753
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d95593c:
    # Line 3518
    lw	$a3,1792($v0)
    lui	$a4,0xc00
    and	$a3,$a3,$a4
    bnez	$a3,.L0d955810
    # Line 3524
    nop	# was lw $t9, -32304($gp) # &GetConvolutionFilter
    b	.L0d9557f8
    # Line 3518
    li	$a3,3552
.L0d955958:
    b	.L0d955624
    sd	$v0,16($sp)
    # Line 3558
    sll	$s4,$a4,0x3
.L0d955964:
    addu	$s4,$s1,$s4
    lui	$t8,0x1
    addu	$s4,$s4,$t8
    # Line 3559
    lw	$a4,-29740($s4)
    # Line 3558
    lw	$s4,-29744($s4)
.L0d955978:
    # Line 3559
    li	$t8,-8
    subu	$s1,$a4,$a0
    and	$s1,$s1,$t8
    addu	$s1,$a0,$s1
    slt	$t8,$s1,$a3
    bnez	$t8,.L0d955a80
    # Line 3569
    nop	# was lw $t9, -32276($gp) # &GetSingleCompFromPipe
.L0d955994:
    # Line 3633
    subu	$a5,$a3,$a0
    andi	$t9,$a5,0x7
    beqz	$t9,.L0d955cc4
    ld	$s4,96($sp)
    addiu	$ra,$a5,-1
    and	$ra,$a5,$ra
    beqz	$ra,.L0d955cc0
    # Line 3635
    la	$v0,.rodata
    li	$s4,253
    addiu	$v0,$v0,10416
    addiu	$a4,$v0,576
    addiu	$v0,$v0,560
.L0d9559c4:
    lw	$a3,0($v0)
    and	$a3,$a3,$a5
    # Line 3648
    addiu	$v0,$v0,4
    # Line 3635
    beqz	$a3,.L0d955a70
    # Line 3651
    addu	$a2,$a3,$a0
    lw	$a6,16($s0)
    lw	$a7,140($s0)
    lw	$t0,136($s0)
    lw	$t1,132($s0)
    lw	$t2,128($s0)
    lw	$t3,124($s0)
    lw	$s1,120($s0)
    lw	$at,104($s0)
    sw	$s4,16384($zero)
    lw	$v1,40($s0)
    lw	$a1,36($s0)
    sw	$a1,16384($zero)
    sw	$v1,16384($zero)
    sw	$a2,16384($zero)
    # Line 3650
    lw	$ra,108($s0)
    # Line 3651
    lw	$v1,100($s0)
    # Line 3650
    addu	$t8,$a3,$ra
    # Line 3662
    sw	$t8,108($s0)
    # Line 3663
    addu	$t9,$a1,$a3
    sw	$t9,36($s0)
    # Line 3651
    lw	$t9,112($s0)
    lw	$a1,4($s0)
    # Line 3650
    addiu	$t8,$t8,-1
    sw	$t8,116($s0)
    # Line 3651
    sw	$a1,16384($zero)
    sw	$zero,16384($zero)
    sw	$v1,16384($zero)
    sw	$at,16384($zero)
    sw	$ra,16384($zero)
    sw	$t9,16384($zero)
    sw	$t8,16384($zero)
    sw	$s1,16384($zero)
    sw	$t3,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
.L0d955a70:
    # Line 3648
    bne	$v0,$a4,.L0d9559c4
    nop
    b	.L0d9557cc
    ld	$s4,96($sp)
.L0d955a80:
    # Line 3569
    move	$a2,$zero
    move	$a1,$zero
    lw	$a3,100($s0)
    sd	$a0,80($sp)
    bal GetSingleCompFromPipe
    li	$a0,130
    # Line 3573
    ld	$a0,80($sp)
    li	$a4,-8
    subu	$a5,$s4,$a0
    and	$a4,$a4,$a5
    lw	$a3,0($s0)
    beqz	$v0,.L0d955abc
    addu	$a4,$a0,$a4
    slt	$a6,$a4,$a3
    beqz	$a6,.L0d955994
.L0d955abc:
    # Line 3583
    move	$a5,$s1
    # Line 3586
    subu	$a7,$a3,$a0
    # Line 3583
    movn	$a5,$a4,$v0
    # Line 3586
    mtc1	$a7,$f1
    # Line 3583
    subu	$t1,$a5,$a0
    # Line 3586
    mtc1	$t1,$f2
    cvt.d.w	$f1,$f1
    cvt.d.w	$f2,$f2
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a6,$f1
    mult	$a6,$t1
    sd	$s2,104($sp)
    sd	$s3,112($sp)
    # Line 3588
    sw	$a5,0($s0)
    # Line 3583
    sd	$t1,8($sp)
    # Line 3586
    teq	$t1,$zero,0x7
    mflo	$t0
    subu	$a7,$a7,$t0
    # Line 3588
    blez	$a6,.L0d955d64
    sd	$a7,16($sp)
    lw	$s3,16($s0)
    lw	$s2,140($s0)
    lw	$t3,136($s0)
    lw	$t1,124($s0)
    lw	$t0,120($s0)
    lw	$a7,112($s0)
    lw	$v0,108($s0)
    lw	$t9,104($s0)
    lw	$s1,100($s0)
    lw	$ra,4($s0)
    lw	$t8,40($s0)
    lw	$a3,36($s0)
    lw	$t2,132($s0)
    sd	$t2,0($sp)
    li	$s4,253
    move	$a4,$zero
    lw	$t2,128($s0)
.L0d955b54:
    # Line 3592
    sw	$s4,16384($zero)
    sw	$a3,16384($zero)
    sw	$t8,16384($zero)
    sw	$a5,16384($zero)
    sw	$ra,16384($zero)
    sw	$zero,16384($zero)
    sw	$s1,16384($zero)
    sw	$t9,16384($zero)
    move	$a2,$v0
    sw	$a2,16384($zero)
    sw	$a7,16384($zero)
    # Line 3604
    ld	$at,8($sp)
    # Line 3592
    ld	$a1,0($sp)
    # Line 3604
    addu	$a3,$a3,$at
    sw	$a3,36($s0)
    # Line 3590
    addu	$v0,$at,$v0
    # Line 3603
    sw	$v0,108($s0)
    # Line 3590
    addiu	$at,$v0,-1
    # Line 3592
    sw	$at,16384($zero)
    sw	$t0,16384($zero)
    sw	$t1,16384($zero)
    sw	$t2,16384($zero)
    sw	$a1,16384($zero)
    # Line 3589
    addiu	$a4,$a4,1
    # Line 3592
    sw	$t3,16384($zero)
    # Line 3589
    slt	$v1,$a4,$a6
    # Line 3592
    sw	$s2,16384($zero)
    sw	$s3,16384($zero)
    # Line 3589
    bnez	$v1,.L0d955b54
    # Line 3590
    sw	$at,116($s0)
.L0d955bcc:
    # Line 3589
    la	$v0,.rodata
    ld	$s3,112($sp)
    addiu	$v0,$v0,10416
    ld	$s2,104($sp)
    addiu	$a4,$v0,576
    addiu	$v0,$v0,560
    ld	$a5,16($sp)
.L0d955be8:
    lw	$a3,0($v0)
    and	$a3,$a3,$a5
    beqz	$a3,.L0d955c94
    nop
    # Line 3610
    lw	$a2,36($s0)
    # Line 3609
    lw	$ra,108($s0)
    # Line 3622
    addu	$a5,$a2,$a3
    sw	$a5,36($s0)
    # Line 3609
    addu	$a6,$a3,$ra
    # Line 3621
    sw	$a6,108($s0)
    # Line 3610
    lw	$a7,16($s0)
    lw	$t0,140($s0)
    lw	$t1,136($s0)
    lw	$t2,132($s0)
    lw	$t3,128($s0)
    lw	$s1,124($s0)
    lw	$t8,120($s0)
    lw	$t9,112($s0)
    lw	$at,104($s0)
    lw	$v1,100($s0)
    lw	$a1,4($s0)
    lw	$a5,40($s0)
    sw	$s4,16384($zero)
    sw	$a2,16384($zero)
    sw	$a5,16384($zero)
    addu	$a2,$a3,$a0
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$zero,16384($zero)
    sw	$v1,16384($zero)
    sw	$at,16384($zero)
    sw	$ra,16384($zero)
    sw	$t9,16384($zero)
    # Line 3609
    addiu	$a6,$a6,-1
    # Line 3610
    sw	$a6,16384($zero)
    sw	$t8,16384($zero)
    sw	$s1,16384($zero)
    sw	$t3,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    # Line 3609
    sw	$a6,116($s0)
.L0d955c94:
    # Line 3607
    addiu	$v0,$v0,4
    bne	$v0,$a4,.L0d955be8
    # Line 3589
    ld	$a5,16($sp)
    b	.L0d9557cc
    ld	$s4,96($sp)
.L0d955ca8:
    # Line 3550
    addu	$s4,$s1,$s4
    lui	$t8,0x1
    addu	$s4,$s4,$t8
    # Line 3551
    lw	$a4,-29804($s4)
    b	.L0d955978
    # Line 3550
    lw	$s4,-29808($s4)
.L0d955cc0:
    ld	$s4,96($sp)
.L0d955cc4:
    # Line 3753
    ld	$gp,72($sp)
    # Line 3635
    lw	$t8,16($s0)
    lw	$t9,140($s0)
    lw	$at,136($s0)
    lw	$v0,132($s0)
    lw	$v1,128($s0)
    lw	$a0,124($s0)
    lw	$a1,120($s0)
    lw	$a2,116($s0)
    lw	$a4,112($s0)
    lw	$a5,108($s0)
    lw	$a6,104($s0)
    lw	$a7,100($s0)
    lw	$t0,4($s0)
    lw	$t1,40($s0)
    lw	$t2,36($s0)
    # Line 3753
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    # Line 3635
    li	$t3,253
    sw	$t3,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    sw	$a3,16384($zero)
    sw	$t0,16384($zero)
    sw	$zero,16384($zero)
    sw	$a7,16384($zero)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a4,16384($zero)
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    ld	$ra,88($sp)
    sw	$at,16384($zero)
    sw	$t9,16384($zero)
    # Line 3753
    addiu	$sp,$sp,128
    jr	$ra
    # Line 3635
    sw	$t8,16384($zero)
.L0d955d64:
    b	.L0d955bcc
    # Line 3589
    li	$s4,253
.end __glKonCopyTexImage

# Function: __glkonInvalidBytes
# Declared: Line 3761 (Source lines: 3762-3777)
# Address: 0x0d955d70 - 0x0d955e34 (Size: 196 bytes, Frame: 0)
.globl __glkonInvalidBytes
.ent __glkonInvalidBytes
__glkonInvalidBytes:
    # Line 3767
    lw	$a7,4112($zero)
    # Line 3762
    lui	$t0,0x14
    # Line 3767
    lw	$a3,148($a0)
    # Line 3762
    addiu	$t0,$t0,-19864
    # Line 3767
    lw	$a5,156($a0)
    # Line 3762
    addu	$at,$t9,$t0
    # Line 3767
    li	$a4,0x8c6c
    # Line 3762
    la	$a6,.rodata
    # Line 3767
    addu	$a4,$a4,$a7
    andi	$a5,$a5,0x1f00
    sll	$a3,$a3,0x2
    # Line 3762
    addiu	$a6,$a6,10416
    # Line 3767
    lw	$a4,0($a4)
    addu	$a3,$a6,$a3
    beqz	$a5,.L0d955de8
    lw	$a3,112($a3)
    # Line 3769
    move	$a5,$a3
.L0d955db4:
    # Line 3771
    lw	$a7,4($a4)
    beqz	$a7,.L0d955e08
    nop
    # Line 3776
    mult	$a5,$a7
    lw	$v0,16($a4)
    sll	$t1,$v0,0x2
    addu	$t1,$a6,$t1
    lw	$t1,288($t1)
    mflo	$t2
    and	$t1,$t1,$t2
    # Line 3777
    subu	$v0,$v0,$t1
    jr	$ra
    movz	$v0,$zero,$t1
.L0d955de8:
    # Line 3771
    lw	$t2,144($a0)
    sll	$t2,$t2,0x2
    addu	$t2,$a6,$t2
    lw	$t2,48($t2)
    mult	$t2,$a3
    mflo	$a5
    b	.L0d955db4
    nop
.L0d955e08:
    # Line 3774
    lw	$t8,0($a0)
    # Line 3776
    mult	$a5,$t8
    lw	$v0,16($a4)
    sll	$t3,$v0,0x2
    addu	$t3,$a6,$t3
    lw	$t3,288($t3)
    mflo	$t8
    and	$t3,$t3,$t8
    # Line 3777
    subu	$v0,$v0,$t3
    jr	$ra
    movz	$v0,$zero,$t3
.end __glkonInvalidBytes

# Function: __glkonNumCompInPix
# Declared: Line 3781 (Source lines: 3782-3783)
# Address: 0x0d955e40 - 0x0d955e64 (Size: 36 bytes, Frame: 0)
.globl __glkonNumCompInPix
.ent __glkonNumCompInPix
__glkonNumCompInPix:
    # Line 3782
    lui	$v1,0x14
    addiu	$v1,$v1,-20072
    addu	$at,$t9,$v1
    # Line 3783
    la	$v0,.rodata
    sll	$v1,$a0,0x2
    addiu	$v0,$v0,10464
    addu	$v0,$v0,$v1
    jr	$ra
    lw	$v0,0($v0)
.end __glkonNumCompInPix

# Function: __glkonNumByteInType
# Declared: Line 3787 (Source lines: 3788-3789)
# Address: 0x0d955e70 - 0x0d955e94 (Size: 36 bytes, Frame: 0)
.globl __glkonNumByteInType
.ent __glkonNumByteInType
__glkonNumByteInType:
    # Line 3788
    lui	$v1,0x14
    addiu	$v1,$v1,-20120
    addu	$at,$t9,$v1
    # Line 3789
    la	$v0,.rodata
    sll	$v1,$a0,0x2
    addiu	$v0,$v0,10528
    addu	$v0,$v0,$v1
    jr	$ra
    lw	$v0,0($v0)
.end __glkonNumByteInType

# Function: __glkonPixSize
# Declared: Line 3793 (Source lines: 3794-3813)
# Address: 0x0d955ea0 - 0x0d955f90 (Size: 240 bytes, Frame: 48)
.globl __glkonPixSize
.ent __glkonPixSize
__glkonPixSize:
    # Line 3794
    addiu	$sp,$sp,-48
    sd	$a2,32($sp)
    sd	$a1,40($sp)
    lui	$v0,0x14
    sd	$s8,16($sp)
    addiu	$v0,$v0,-20168
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3799
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 3796
    lw	$s8,4112($zero)
    li	$at,0x8ad0
    # Line 3794
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$ra,8($sp)
    # Line 3799
    bal __glKonParseInput
    # Line 3796
    addu	$s8,$s8,$at
    ld	$ra,8($sp)
    # Line 3801
    la	$a6,.rodata
    lw	$a5,156($s0)
    lw	$a4,148($s0)
    ld	$a1,40($sp)
    andi	$a5,$a5,0x1f00
    ld	$a2,32($sp)
    sll	$a4,$a4,0x2
    addiu	$a6,$a6,10416
    lw	$a3,416($s8)
    addu	$a4,$a6,$a4
    beqz	$a5,.L0d955f64
    lw	$a4,112($a4)
    ld	$s8,16($sp)
    # Line 3803
    move	$a5,$a4
    sw	$a4,0($a1)
.L0d955f20:
    # Line 3805
    lw	$a1,4($a3)
    beqz	$a1,.L0d955f88
    # Line 3810
    lw	$a7,16($a3)
.L0d955f2c:
    mult	$a5,$a1
    sll	$t0,$a7,0x2
    addu	$t0,$a6,$t0
    lw	$t0,288($t0)
    mflo	$a6
    and	$t0,$t0,$a6
    # Line 3813
    ld	$gp,24($sp)
    # Line 3811
    subu	$a7,$a7,$t0
    ld	$s0,0($sp)
    # Line 3813
    addiu	$sp,$sp,48
    movz	$a7,$zero,$t0
    # Line 3812
    addu	$a6,$a6,$a7
    # Line 3813
    jr	$ra
    # Line 3812
    sw	$a6,0($a2)
.L0d955f64:
    # Line 3805
    lw	$t1,144($s0)
    sll	$t1,$t1,0x2
    addu	$t1,$a6,$t1
    lw	$t1,48($t1)
    mult	$t1,$a4
    ld	$s8,16($sp)
    mflo	$a5
    b	.L0d955f20
    sw	$a5,0($a1)
.L0d955f88:
    b	.L0d955f2c
    # Line 3808
    lw	$a1,0($s0)
.end __glkonPixSize

# Function: __glkonim_PixelZoom
# Declared: Line 3820 (Source lines: 3821-3837)
# Address: 0x0d955f90 - 0x0d95606c (Size: 220 bytes, Frame: 48)
.globl __glkonim_PixelZoom
.ent __glkonim_PixelZoom
__glkonim_PixelZoom:
    # Line 3822
    lw	$a1,4112($zero)
    # Line 3821
    addiu	$sp,$sp,-48
    # Line 3822
    lw	$at,4120($zero)
    li	$v0,1
    # Line 3821
    lui	$v1,0x14
    mov.s	$f4,$f13
    sd	$ra,16($sp)
    addiu	$v1,$v1,-20408
    # Line 3822
    addiu	$a1,$a1,640
    # Line 3821
    mov.s	$f5,$f12
    sd	$gp,8($sp)
    # Line 3822
    beq	$at,$v0,.L0d956058
    # Line 3821
    addu	$gp,$t9,$v1
    # Line 3823
    ldc1	$f6,_lit8_405fc00004000000
    cvt.d.s	$f0,$f12
    c.lt.d	$f6,$f0
    bc1t	.L0d956038
    sd	$a1,0($sp)
.L0d955fd8:
    # Line 3827
    cvt.d.s	$f1,$f4
    c.lt.d $f6,$f1
    bc1f .L0d956004
    # Line 3836
    li	$a3,47
    # Line 3831
    # lw $t9, -28616($gp) # &__glSetError
    swc1	$f5,32($sp)
    jal	__glSetError
    li	$a0,1281
    lwc1	$f5,32($sp)
    lwc1	$f4,_lit_42fe0000
    # Line 3836
    li	$a3,47
.L0d956004:
    sw	$a3,16384($zero)
    swc1	$f5,16384($zero)
    swc1	$f4,16384($zero)
    # Line 3835
    ld	$a2,0($sp)
    ld	$ra,16($sp)
    # Line 3837
    ld	$gp,8($sp)
    # Line 3835
    swc1	$f4,108($a2)
    # Line 3837
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3834
    swc1	$f5,104($a2)
.L0d95602c:
    # Line 3837
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d956038:
    # Line 3827
    # lw $t9, -28616($gp) # &__glSetError
    swc1	$f13,40($sp)
    jal	__glSetError
    li	$a0,1281
    lwc1	$f4,40($sp)
    ldc1	$f6,_lit8_405fc00004000000
    b	.L0d955fd8
    lwc1	$f5,_lit_42fe0000
.L0d956058:
    # Line 3823
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95602c
    ld	$ra,16($sp)
.end __glkonim_PixelZoom

# Function: __glkonim_PixelStoref
# Declared: Line 3841 (Source lines: 3842-3859)
# Address: 0x0d956070 - 0x0d95613c (Size: 204 bytes, Frame: 16)
.globl __glkonim_PixelStoref
.ent __glkonim_PixelStoref
__glkonim_PixelStoref:
    # Line 3842
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x14
    sd	$ra,8($sp)
    addiu	$v1,$v1,-20632
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d956128
    addu	$gp,$t9,$v1
    # Line 3844
    li	$a1,3312
    # Line 3852
    lwc1	$f1,_lit_bf000000
    # Line 3844
    beq	$a0,$a1,.L0d956104
    # Line 3852
    lwc1	$f2,_lit_3f000000
    # Line 3844
    li	$a2,3313
    beq	$a0,$a2,.L0d956104
    li	$a3,3328
    beq	$a0,$a3,.L0d956104
    li	$a4,3329
    beq	$a0,$a4,.L0d956104
    mtc1	$zero,$f0
    c.lt.s	$f13,$f0
    bc1f	.L0d9560dc
    nop
    # Line 3852
    add.s	$f1,$f13,$f1
    trunc.w.s	$f1,$f1
    b	.L0d9560e8
    mfc1	$a1,$f1
.L0d9560dc:
    add.s	$f2,$f13,$f2
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
.L0d9560e8:
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    bal __glkonim_PixelStorei
    nop
    ld	$ra,8($sp)
.L0d9560f8:
    # Line 3859
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956104:
    # Line 3849
    dmtc1	$zero,$f4
    # lw $t9, -32204($gp) # &__glkonim_PixelStorei
    cvt.d.s	$f3,$f13
    c.eq.d $f3,$f4
    li	$a1,1
    bal __glkonim_PixelStorei
    movt	$a1,$zero,$fcc1
    b	.L0d9560f8
    ld	$ra,8($sp)
.L0d956128:
    # Line 3843
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9560f8
    ld	$ra,8($sp)
.end __glkonim_PixelStoref

# Function: __glkonim_TextureStorei
# Declared: Line 3863 (Source lines: 3864-4036)
# Address: 0x0d956140 - 0x0d956644 (Size: 1284 bytes, Frame: 48)
.globl __glkonim_TextureStorei
.ent __glkonim_TextureStorei
__glkonim_TextureStorei:
    # Line 3864
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$s1,0($sp)
    # Line 3865
    li	$a5,0x8ad0
    lw	$a3,4112($zero)
    # Line 3864
    move	$s1,$a1
    move	$s0,$a0
    # Line 3865
    lw	$at,4120($zero)
    li	$a4,1
    # Line 3864
    lui	$v0,0x14
    sd	$ra,32($sp)
    addiu	$v0,$v0,-20840
    # Line 3865
    addu	$a3,$a3,$a5
    sd	$gp,16($sp)
    beq	$at,$a4,.L0d9565c8
    # Line 3864
    addu	$gp,$t9,$v0
    # Line 3868
    sltiu	$a6,$a0,3332
    bnez	$a6,.L0d9561e0
    sltiu	$a7,$a0,3333
    beqz	$a7,.L0d956258
    nop
    bltz	$a1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3936
    li	$t0,443
    sw	$t0,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    # Line 3935
    sw	$a1,336($a3)
    # Line 4031
    ld	$gp,16($sp)
    move	$ra,$ra
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9561c8:
    ld	$ra,32($sp)
.L0d9561cc:
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9561e0:
    # Line 3868
    sltiu	$a0,$a0,3317
    bnez	$a0,.L0d9562a4
    sltiu	$t1,$s0,3318
    beqz	$t1,.L0d956324
    sltiu	$a0,$s0,3330
.L0d9561f4:
    # Line 3904
    beq	$s1,$a4,.L0d95649c
    li	$t2,2
    beq	$s1,$t2,.L0d95649c
    li	$t3,4
    beq	$s1,$t3,.L0d95649c
    li	$t8,8
    beq	$s1,$t8,.L0d9564a0
    # Line 3910
    li	$t0,443
    # Line 3913
    # lw $t9, -28616($gp) # &__glSetError
    sd	$a3,24($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$a3,24($sp)
.L0d956228:
    # Line 3917
    bltz	$s1,.L0d9564b4
    ld	$ra,32($sp)
    # Line 4031
    ld	$gp,16($sp)
    # Line 3920
    li	$t9,443
    sw	$t9,16384($zero)
    sw	$s0,16384($zero)
    # Line 4031
    ld	$s0,8($sp)
    # Line 3920
    sw	$s1,16384($zero)
    # Line 3919
    sw	$s1,328($a3)
    # Line 4031
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d956258:
    # Line 3868
    li	$a0,0x806e
    sltu	$ra,$s0,$a0
    bnez	$ra,.L0d9562ec
    sltu	$at,$a0,$s0
    bnez	$at,.L0d956398
    li	$a0,0x8132
    bltz	$a1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4000
    li	$v0,443
    sw	$v0,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    # Line 3999
    sw	$a1,392($a3)
    ld	$ra,32($sp)
    # Line 4031
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9562a4:
    # Line 3868
    sltiu	$a1,$s0,3314
    bnez	$a1,.L0d956358
    sltiu	$v1,$s0,3315
    beqz	$v1,.L0d956434
    sltiu	$a2,$s0,3316
    bltz	$s1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4031
    ld	$gp,16($sp)
    # Line 3976
    li	$a0,443
    sw	$a0,16384($zero)
    sw	$s0,16384($zero)
    # Line 4031
    ld	$s0,8($sp)
    # Line 3976
    sw	$s1,16384($zero)
    move	$ra,$ra
    # Line 3975
    sw	$s1,372($a3)
    # Line 4031
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9562ec:
    # Line 3868
    li	$a0,0x806c
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0d9563cc
    sltu	$a2,$a0,$s0
    bnez	$a2,.L0d956500
    li	$t8,0x806d
    bltz	$s1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3944
    li	$a4,443
    sw	$a4,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9561c8
    # Line 3943
    sw	$s1,348($a3)
.L0d956324:
    # Line 3868
    bnez	$a0,.L0d956404
    sltiu	$a5,$s0,3331
    bnez	$a5,.L0d956228
    li	$a6,3331
    bne	$s0,$a6,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3868
    bltz	$a1,.L0d9564b4
    # Line 3928
    li	$a7,443
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9561c8
    # Line 3927
    sw	$a1,332($a3)
.L0d956358:
    # Line 3868
    sltiu	$t0,$s0,3313
    bnez	$t0,.L0d956464
    li	$a5,3312
    beqz	$a1,.L0d956488
    # Line 3886
    li	$t2,443
    sw	$t2,16384($zero)
    sw	$s0,16384($zero)
    # Line 3885
    sltu	$t1,$zero,$s1
    # Line 3886
    sw	$t1,16384($zero)
    # Line 3885
    sb	$t1,369($a3)
    # Line 4031
    ld	$gp,16($sp)
    move	$ra,$ra
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d956398:
    # Line 3868
    sltu	$t3,$s0,$a0
    bnez	$t3,.L0d9564c8
    sltu	$t8,$a0,$s0
    bnez	$t8,.L0d9565dc
    li	$a6,0x8133
    bltz	$a1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4024
    li	$t9,443
    sw	$t9,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9561c8
    # Line 4023
    sw	$a1,396($a3)
.L0d9563cc:
    # Line 3868
    li	$a0,0x806b
    sltu	$ra,$s0,$a0
    bnez	$ra,.L0d956528
    sltu	$at,$a0,$s0
    bnez	$at,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3868
    bltz	$s1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3952
    li	$v0,443
    sw	$v0,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9561c8
    # Line 3951
    sw	$s1,344($a3)
.L0d956404:
    # Line 3868
    sltiu	$v1,$s0,3329
    bnez	$v1,.L0d956578
    nop
    beqz	$a0,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3876
    li	$a1,443
    sw	$a1,16384($zero)
    sw	$s0,16384($zero)
    # Line 3875
    sltu	$a0,$zero,$s1
    # Line 3876
    sw	$a0,16384($zero)
    b	.L0d9561c8
    # Line 3875
    sb	$a0,325($a3)
.L0d956434:
    # Line 3868
    bnez	$a2,.L0d9565a0
    li	$a4,3315
    beqz	$a0,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3868
    bltz	$s1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3992
    li	$a4,443
    sw	$a4,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9561c8
    # Line 3991
    sw	$s1,380($a3)
.L0d956464:
    # Line 3868
    bne	$s0,$a5,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3881
    li	$a7,443
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    # Line 3880
    sltu	$a6,$zero,$s1
    # Line 3881
    sw	$a6,16384($zero)
    b	.L0d9561c8
    # Line 3880
    sb	$a6,368($a3)
.L0d956488:
    # Line 4030
    # lw $t9, -28616($gp) # &__glSetError
.L0d95648c:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9561cc
    ld	$ra,32($sp)
.L0d95649c:
    # Line 3910
    li	$t0,443
.L0d9564a0:
    sw	$t0,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9561c8
    # Line 3909
    sw	$s1,384($a3)
.L0d9564b4:
    # Line 4036
    # lw $t9, -28616($gp) # &__glSetError
.L0d9564b8:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9561cc
    ld	$ra,32($sp)
.L0d9564c8:
    # Line 3868
    li	$a0,0x8131
    sltu	$t1,$s0,$a0
    bnez	$t1,.L0d956604
    li	$t0,0x8130
    sltu	$t2,$a0,$s0
    bnez	$t2,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3868
    bltz	$a1,.L0d9564b4
    # Line 3960
    li	$t3,443
    sw	$t3,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9561c8
    # Line 3959
    sw	$a1,356($a3)
.L0d956500:
    # Line 3868
    bne	$s0,$t8,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3868
    bltz	$s1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4008
    li	$t9,443
    sw	$t9,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9561c8
    # Line 4007
    sw	$s1,388($a3)
.L0d956528:
    # Line 3868
    li	$ra,3333
    bne	$s0,$ra,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3890
    beq	$s1,$a4,.L0d956630
    # Line 3896
    li	$t2,443
    # Line 3890
    li	$at,2
    beq	$s1,$at,.L0d956630
    # Line 3896
    li	$t2,443
    # Line 3890
    li	$v0,4
    beq	$s1,$v0,.L0d95662c
    li	$v1,8
    beq	$s1,$v1,.L0d956630
    # Line 3896
    li	$t2,443
    # Line 3899
    # lw $t9, -28616($gp) # &__glSetError
    sd	$a3,24($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$a3,24($sp)
    b	.L0d9561f4
    li	$a4,1
.L0d956578:
    # Line 3868
    li	$a0,3328
    bne	$s0,$a0,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3871
    li	$a2,443
    sw	$a2,16384($zero)
    sw	$s0,16384($zero)
    # Line 3870
    sltu	$a1,$zero,$a1
    # Line 3871
    sw	$a1,16384($zero)
    b	.L0d9561c8
    # Line 3870
    sb	$a1,324($a3)
.L0d9565a0:
    # Line 3868
    bne	$s0,$a4,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3868
    bltz	$s1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3984
    li	$a5,443
    sw	$a5,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9561c8
    # Line 3983
    sw	$s1,376($a3)
.L0d9565c8:
    # Line 3867
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9561cc
    ld	$ra,32($sp)
.L0d9565dc:
    # Line 3868
    bne	$s0,$a6,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3868
    bltz	$a1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4016
    li	$a7,443
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9561c8
    # Line 4015
    sw	$a1,400($a3)
.L0d956604:
    # Line 3868
    bne	$s0,$t0,.L0d95648c
    # Line 4030
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3868
    bltz	$a1,.L0d9564b8
    # Line 4036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 3968
    li	$t1,443
    sw	$t1,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9561c8
    # Line 3967
    sw	$a1,352($a3)
.L0d95662c:
    # Line 3896
    li	$t2,443
.L0d956630:
    sw	$t2,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9561c8
    # Line 3895
    sw	$s1,340($a3)
.end __glkonim_TextureStorei

# Function: __glkonim_PixelStorei
# Declared: Line 4040 (Source lines: 4041-4213)
# Address: 0x0d956650 - 0x0d956b44 (Size: 1268 bytes, Frame: 48)
.globl __glkonim_PixelStorei
.ent __glkonim_PixelStorei
__glkonim_PixelStorei:
    # Line 4041
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$s1,0($sp)
    # Line 4042
    lw	$a3,4112($zero)
    # Line 4041
    move	$s1,$a1
    move	$s0,$a0
    # Line 4042
    lw	$at,4120($zero)
    li	$a5,1
    # Line 4041
    lui	$v0,0x14
    sd	$ra,32($sp)
    addiu	$v0,$v0,-22136
    # Line 4042
    addiu	$a4,$a3,640
    sd	$gp,16($sp)
    beq	$at,$a5,.L0d956ac4
    # Line 4041
    addu	$gp,$t9,$v0
    # Line 4045
    sltiu	$v1,$a0,3332
    bnez	$v1,.L0d9566f0
    nop
    sltiu	$a0,$a0,3333
    beqz	$a0,.L0d956764
    li	$a0,0x806e
    bltz	$a1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4208
    ld	$gp,16($sp)
    # Line 4113
    li	$a1,51
    sw	$a1,16384($zero)
    sw	$s0,16384($zero)
    # Line 4208
    ld	$s0,8($sp)
    # Line 4113
    sw	$s1,16384($zero)
    move	$ra,$ra
    # Line 4112
    sw	$s1,1156($a3)
    # Line 4208
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9566d8:
    ld	$ra,32($sp)
.L0d9566dc:
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9566f0:
    # Line 4045
    sltiu	$a0,$a0,3317
    bnez	$a0,.L0d9567ac
    sltiu	$a2,$s0,3318
    beqz	$a2,.L0d95682c
    sltiu	$a0,$s0,3330
.L0d956704:
    # Line 4081
    beq	$s1,$a5,.L0d9569a4
    li	$a3,2
    beq	$s1,$a3,.L0d9569a4
    li	$a5,4
    beq	$s1,$a5,.L0d9569a4
    li	$a6,8
    beq	$s1,$a6,.L0d9569a4
    # Line 4090
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$a4,24($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$a4,24($sp)
.L0d956734:
    # Line 4094
    bltz	$s1,.L0d9569bc
    ld	$ra,32($sp)
    # Line 4208
    ld	$gp,16($sp)
    # Line 4097
    li	$a7,51
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    # Line 4208
    ld	$s0,8($sp)
    # Line 4097
    sw	$s1,16384($zero)
    # Line 4096
    sw	$s1,508($a4)
    # Line 4208
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d956764:
    # Line 4045
    sltu	$t0,$s0,$a0
    bnez	$t0,.L0d9567f4
    sltu	$t1,$a0,$s0
    bnez	$t1,.L0d9568a4
    li	$a0,0x8132
    bltz	$a1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4177
    li	$t2,51
    sw	$t2,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    # Line 4176
    sw	$a1,1212($a3)
    # Line 4208
    ld	$gp,16($sp)
    move	$ra,$ra
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9567ac:
    # Line 4045
    sltiu	$a1,$s0,3314
    bnez	$a1,.L0d956864
    sltiu	$t3,$s0,3315
    beqz	$t3,.L0d956940
    sltiu	$at,$s0,3316
    bltz	$s1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4208
    ld	$gp,16($sp)
    # Line 4153
    li	$t8,51
    sw	$t8,16384($zero)
    sw	$s0,16384($zero)
    # Line 4208
    ld	$s0,8($sp)
    # Line 4153
    sw	$s1,16384($zero)
    move	$ra,$ra
    # Line 4152
    sw	$s1,1192($a3)
    # Line 4208
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9567f4:
    # Line 4045
    li	$a0,0x806c
    sltu	$t9,$s0,$a0
    bnez	$t9,.L0d9568d8
    sltu	$ra,$a0,$s0
    bnez	$ra,.L0d956a08
    li	$t0,0x806d
    bltz	$a1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4121
    li	$at,51
    sw	$at,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9566d8
    # Line 4120
    sw	$a1,1168($a3)
.L0d95682c:
    # Line 4045
    bnez	$a0,.L0d956910
    sltiu	$v0,$s0,3331
    bnez	$v0,.L0d956734
    li	$v1,3331
    bne	$s0,$v1,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4045
    bltz	$a1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4105
    li	$a0,51
    sw	$a0,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9566d8
    # Line 4104
    sw	$a1,1152($a3)
.L0d956864:
    # Line 4045
    sltiu	$a2,$s0,3313
    bnez	$a2,.L0d956970
    li	$v1,3312
    beqz	$a1,.L0d956990
    # Line 4063
    li	$a5,51
    sw	$a5,16384($zero)
    sw	$s0,16384($zero)
    # Line 4062
    sltu	$a4,$zero,$s1
    # Line 4063
    sw	$a4,16384($zero)
    # Line 4062
    sb	$a4,1189($a3)
    # Line 4208
    ld	$gp,16($sp)
    move	$ra,$ra
    ld	$s0,8($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9568a4:
    # Line 4045
    sltu	$a6,$s0,$a0
    bnez	$a6,.L0d9569d0
    sltu	$a7,$a0,$s0
    bnez	$a7,.L0d956ad8
    nop
    bltz	$a1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4201
    li	$t0,51
    sw	$t0,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9566d8
    # Line 4200
    sw	$a1,1216($a3)
.L0d9568d8:
    # Line 4045
    li	$a0,0x806b
    sltu	$t1,$s0,$a0
    bnez	$t1,.L0d956a30
    sltu	$t2,$a0,$s0
    bnez	$t2,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4045
    bltz	$a1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4129
    li	$t3,51
    sw	$t3,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9566d8
    # Line 4128
    sw	$a1,1164($a3)
.L0d956910:
    # Line 4045
    sltiu	$t8,$s0,3329
    bnez	$t8,.L0d956a7c
    li	$ra,3328
    beqz	$a0,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4053
    li	$ra,51
    sw	$ra,16384($zero)
    sw	$s0,16384($zero)
    # Line 4052
    sltu	$t9,$zero,$a1
    # Line 4053
    sw	$t9,16384($zero)
    b	.L0d9566d8
    # Line 4052
    sb	$t9,1145($a3)
.L0d956940:
    # Line 4045
    bnez	$at,.L0d956a9c
    li	$v1,3315
    beqz	$a0,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4045
    bltz	$s1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4169
    li	$v0,51
    sw	$v0,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9566d8
    # Line 4168
    sw	$s1,1200($a3)
.L0d956970:
    # Line 4045
    bne	$s0,$v1,.L0d956990
    # Line 4058
    li	$a1,51
    sw	$a1,16384($zero)
    sw	$s0,16384($zero)
    # Line 4057
    sltu	$a0,$zero,$s1
    # Line 4058
    sw	$a0,16384($zero)
    b	.L0d9566d8
    # Line 4057
    sb	$a0,1188($a3)
.L0d956990:
    # Line 4207
    # lw $t9, -28616($gp) # &__glSetError
.L0d956994:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9566dc
    ld	$ra,32($sp)
.L0d9569a4:
    # Line 4087
    li	$a2,51
    sw	$a2,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9566d8
    # Line 4086
    sw	$s1,564($a4)
.L0d9569bc:
    # Line 4213
    # lw $t9, -28616($gp) # &__glSetError
.L0d9569c0:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9566dc
    ld	$ra,32($sp)
.L0d9569d0:
    # Line 4045
    li	$a0,0x8131
    sltu	$a5,$s0,$a0
    bnez	$a5,.L0d956b04
    sltu	$a6,$a0,$s0
    bnez	$a6,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4045
    bltz	$a1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4137
    li	$a7,51
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9566d8
    # Line 4136
    sw	$a1,1176($a3)
.L0d956a08:
    # Line 4045
    bne	$s0,$t0,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4045
    bltz	$a1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4185
    li	$t1,51
    sw	$t1,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9566d8
    # Line 4184
    sw	$a1,1208($a3)
.L0d956a30:
    # Line 4045
    li	$t2,3333
    bne	$s0,$t2,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4067
    beq	$a1,$a5,.L0d956b2c
    li	$t3,2
    beq	$a1,$t3,.L0d956b2c
    li	$t8,4
    beq	$a1,$t8,.L0d956b30
    # Line 4073
    li	$a7,51
    # Line 4067
    li	$t9,8
    beq	$a1,$t9,.L0d956b30
    # Line 4073
    li	$a7,51
    # Line 4076
    # lw $t9, -28616($gp) # &__glSetError
    sd	$a4,24($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$a4,24($sp)
    b	.L0d956704
    li	$a5,1
.L0d956a7c:
    # Line 4045
    bne	$s0,$ra,.L0d956990
    # Line 4048
    li	$v0,51
    sw	$v0,16384($zero)
    sw	$s0,16384($zero)
    # Line 4047
    sltu	$at,$zero,$a1
    # Line 4048
    sw	$at,16384($zero)
    b	.L0d9566d8
    # Line 4047
    sb	$at,1144($a3)
.L0d956a9c:
    # Line 4045
    bne	$s0,$v1,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4045
    bltz	$s1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4161
    li	$a0,51
    sw	$a0,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9566d8
    # Line 4160
    sw	$s1,1196($a3)
.L0d956ac4:
    # Line 4044
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9566dc
    ld	$ra,32($sp)
.L0d956ad8:
    # Line 4045
    li	$a1,0x8133
    bne	$s0,$a1,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4045
    bltz	$s1,.L0d9569c0
    # Line 4213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4193
    li	$a2,51
    sw	$a2,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9566d8
    # Line 4192
    sw	$s1,1220($a3)
.L0d956b04:
    # Line 4045
    li	$a5,0x8130
    bne	$s0,$a5,.L0d956994
    # Line 4207
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4045
    bltz	$a1,.L0d9569bc
    # Line 4145
    li	$a6,51
    sw	$a6,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    b	.L0d9566d8
    # Line 4144
    sw	$a1,1172($a3)
.L0d956b2c:
    # Line 4073
    li	$a7,51
.L0d956b30:
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    sw	$s1,16384($zero)
    b	.L0d9566d8
    # Line 4072
    sw	$s1,520($a4)
.end __glkonim_PixelStorei

# Function: __glkonim_PixelTransferf
# Declared: Line 4219 (Source lines: 4220-4353)
# Address: 0x0d956b50 - 0x0d95718c (Size: 1596 bytes, Frame: 16)
.globl __glkonim_PixelTransferf
.ent __glkonim_PixelTransferf
__glkonim_PixelTransferf:
    # Line 4221
    lw	$a2,4112($zero)
    # Line 4220
    addiu	$sp,$sp,-16
    # Line 4221
    lw	$at,4120($zero)
    li	$v0,1
    # Line 4220
    lui	$v1,0x14
    sd	$ra,8($sp)
    addiu	$v1,$v1,-23416
    # Line 4221
    addiu	$a3,$a2,640
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d957090
    # Line 4220
    addu	$gp,$t9,$v1
    # Line 4226
    li	$a4,0x801d
    sltu	$a1,$a0,$a4
    bnez	$a1,.L0d956bfc
    sltu	$a5,$a4,$a0
    beqz	$a5,.L0d956d18
    # Line 4325
    li	$v1,48
    # Line 4226
    li	$a4,0x80b5
    sltu	$a6,$a0,$a4
    bnez	$a6,.L0d956c8c
    sltu	$a7,$a4,$a0
    beqz	$a7,.L0d956f3c
    li	$a4,0x80b9
    sltu	$t0,$a0,$a4
    bnez	$t0,.L0d956dc4
    sltu	$t1,$a4,$a0
    beqz	$t1,.L0d9570a4
    # Line 4301
    li	$v0,48
    # Line 4226
    li	$a4,0x80bb
    sltu	$t2,$a0,$a4
    bnez	$t2,.L0d95702c
    sltu	$t3,$a4,$a0
    bnez	$t3,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4317
    li	$t8,48
    sw	$t8,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    move	$ra,$ra
    # Line 4316
    swc1	$f13,740($a2)
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956bfc:
    # Line 4226
    sltiu	$t9,$a0,3353
    bnez	$t9,.L0d956c54
    sltiu	$ra,$a0,3354
    bnez	$ra,.L0d956ebc
    sltiu	$at,$a0,3357
    bnez	$at,.L0d956d8c
    sltiu	$v0,$a0,3358
    bnez	$v0,.L0d957070
    # Line 4277
    li	$at,48
    # Line 4226
    sltiu	$v1,$a0,3359
    bnez	$v1,.L0d956fa8
    sltiu	$a1,$a0,3360
    bnez	$a1,.L0d95715c
    li	$a4,0x801c
    bne	$a0,$a4,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4321
    li	$a5,48
    sw	$a5,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4322
    b	.L0d956d44
    # Line 4320
    swc1	$f13,680($a2)
.L0d956c54:
    # Line 4226
    sltiu	$a6,$a0,3347
    bnez	$a6,.L0d956cd4
    sltiu	$a7,$a0,3348
    beqz	$a7,.L0d956e3c
    sltiu	$v1,$a0,3349
    mtc1	$zero,$f0
    c.lt.s	$f0,$f13
    bc1f	.L0d956dfc
    cvt.d.s	$f4,$f13
    # Line 4243
    ldc1	$f1,_lit8_3fe0000000000000
    add.d	$f1,$f4,$f1
    trunc.w.d	$f1,$f1
    b	.L0d956e0c
    mfc1	$a2,$f1
.L0d956c8c:
    # Line 4226
    li	$a4,0x8021
    sltu	$t0,$a0,$a4
    bnez	$t0,.L0d956d54
    sltu	$t1,$a4,$a0
    beqz	$t1,.L0d95704c
    li	$a4,0x8023
    sltu	$t2,$a0,$a4
    bnez	$t2,.L0d956f84
    sltu	$t3,$a4,$a0
    beqz	$t3,.L0d957144
    li	$t8,0x80b4
    bne	$a0,$t8,.L0d956d38
    # Line 4289
    li	$t9,48
    sw	$t9,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4290
    b	.L0d956d44
    # Line 4288
    swc1	$f13,712($a2)
.L0d956cd4:
    # Line 4226
    sltiu	$ra,$a0,3345
    bnez	$ra,.L0d956e70
    li	$a6,3344
    sltiu	$at,$a0,3346
    bnez	$at,.L0d9570c4
    li	$v0,3346
    bne	$a0,$v0,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4226
    mtc1	$zero,$f2
    c.lt.s $f2,$f13
    bc1f .L0d956fec
    cvt.d.s	$f4,$f13
    # Line 4238
    ldc1	$f3,_lit8_3fe0000000000000
    add.d	$f3,$f4,$f3
    trunc.w.d	$f3,$f3
    b	.L0d956ffc
    mfc1	$a2,$f3
.L0d956d18:
    # Line 4325
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    move	$ra,$ra
    # Line 4324
    swc1	$f13,684($a2)
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956d38:
    # Line 4352
    # lw $t9, -28616($gp) # &__glSetError
.L0d956d3c:
    jal	__glSetError
    li	$a0,1280
.L0d956d44:
    ld	$ra,8($sp)
.L0d956d48:
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956d54:
    # Line 4226
    li	$a4,0x801f
    sltu	$a1,$a0,$a4
    bnez	$a1,.L0d956ee0
    sltu	$a5,$a4,$a0
    beqz	$a5,.L0d9570fc
    li	$a6,0x8020
    bne	$a0,$a6,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4337
    li	$a7,48
    sw	$a7,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4338
    b	.L0d956d44
    # Line 4336
    swc1	$f13,696($a2)
.L0d956d8c:
    # Line 4226
    sltiu	$t0,$a0,3355
    bnez	$t0,.L0d956f10
    li	$t9,3354
    sltiu	$t1,$a0,3356
    bnez	$t1,.L0d957114
    li	$t2,3356
    bne	$a0,$t2,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4273
    li	$t3,48
    sw	$t3,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4274
    b	.L0d956d44
    # Line 4272
    swc1	$f13,652($a2)
.L0d956dc4:
    # Line 4226
    li	$a4,0x80b7
    sltu	$t8,$a0,$a4
    bnez	$t8,.L0d956f60
    sltu	$t9,$a4,$a0
    beqz	$t9,.L0d95712c
    li	$ra,0x80b8
    bne	$a0,$ra,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4293
    li	$at,48
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4294
    b	.L0d956d44
    # Line 4292
    swc1	$f13,728($a2)
.L0d956dfc:
    # Line 4243
    ldc1	$f5,_lit8_bfe0000000000000
    add.d	$f5,$f4,$f5
    trunc.w.d	$f5,$f5
    mfc1	$a2,$f5
.L0d956e0c:
    # Line 4244
    mtc1	$a2,$f6
    cvt.s.w	$f6,$f6
    # Line 4353
    ld	$gp,0($sp)
    ld	$ra,8($sp)
    # Line 4244
    trunc.w.s	$f6,$f6
    swc1	$f6,116($a3)
    # Line 4245
    li	$v0,48
    sw	$v0,16384($zero)
    sw	$a0,16384($zero)
    # Line 4353
    addiu	$sp,$sp,16
    jr	$ra
    # Line 4245
    swc1	$f6,16384($zero)
.L0d956e3c:
    # Line 4226
    bnez	$v1,.L0d956fcc
    li	$t0,3348
    sltiu	$a1,$a0,3350
    bnez	$a1,.L0d957174
    li	$a4,3352
    bne	$a0,$a4,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4257
    li	$a5,48
    sw	$a5,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4258
    b	.L0d956d44
    # Line 4256
    swc1	$f13,644($a2)
.L0d956e70:
    # Line 4226
    bne	$a0,$a6,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4229
    mtc1	$zero,$f8
    c.eq.s $f13,$f8
    li	$t1,1
    movt	$t1,$zero,$fcc2
    mtc1	$t1,$f7
    cvt.s.w	$f7,$f7
    # Line 4230
    li	$a7,48
    sw	$a7,16384($zero)
    sw	$a0,16384($zero)
    # Line 4229
    trunc.w.s	$f7,$f7
    ld	$ra,8($sp)
    # Line 4353
    ld	$gp,0($sp)
    # Line 4229
    mfc1	$t0,$f7
    sb	$t0,760($a2)
    # Line 4353
    addiu	$sp,$sp,16
    jr	$ra
    # Line 4230
    swc1	$f7,16384($zero)
.L0d956ebc:
    # Line 4261
    li	$t2,48
    sw	$t2,16384($zero)
    sw	$a0,16384($zero)
    ld	$ra,8($sp)
    swc1	$f13,16384($zero)
    # Line 4260
    swc1	$f13,664($a2)
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956ee0:
    # Line 4226
    li	$t3,0x801e
    bne	$a0,$t3,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4329
    li	$t8,48
    sw	$t8,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    move	$ra,$ra
    # Line 4328
    swc1	$f13,688($a2)
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956f10:
    # Line 4226
    bne	$a0,$t9,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4265
    li	$at,48
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    ld	$ra,8($sp)
    swc1	$f13,16384($zero)
    # Line 4264
    swc1	$f13,648($a2)
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956f3c:
    # Line 4297
    li	$v0,48
    sw	$v0,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    move	$ra,$ra
    # Line 4296
    swc1	$f13,716($a2)
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d956f60:
    # Line 4226
    li	$v1,0x80b6
    bne	$a0,$v1,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4305
    li	$a1,48
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4306
    b	.L0d956d44
    # Line 4304
    swc1	$f13,720($a2)
.L0d956f84:
    # Line 4226
    li	$a4,0x8022
    bne	$a0,$a4,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4345
    li	$a5,48
    sw	$a5,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4346
    b	.L0d956d44
    # Line 4344
    swc1	$f13,704($a2)
.L0d956fa8:
    # Line 4226
    li	$a6,3358
    bne	$a0,$a6,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4281
    li	$a7,48
    sw	$a7,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4282
    b	.L0d956d44
    # Line 4280
    swc1	$f13,656($a2)
.L0d956fcc:
    # Line 4226
    bne	$a0,$t0,.L0d956d3c
    # Line 4352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 4249
    li	$t1,48
    sw	$t1,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4250
    b	.L0d956d44
    # Line 4248
    swc1	$f13,640($a2)
.L0d956fec:
    # Line 4238
    ldc1	$f9,_lit8_bfe0000000000000
    add.d	$f9,$f4,$f9
    trunc.w.d	$f9,$f9
    mfc1	$a2,$f9
.L0d956ffc:
    # Line 4239
    mtc1	$a2,$f10
    cvt.s.w	$f10,$f10
    # Line 4353
    ld	$gp,0($sp)
    ld	$ra,8($sp)
    # Line 4239
    trunc.w.s	$f10,$f10
    swc1	$f10,112($a3)
    # Line 4240
    li	$t2,48
    sw	$t2,16384($zero)
    sw	$a0,16384($zero)
    # Line 4353
    addiu	$sp,$sp,16
    jr	$ra
    # Line 4240
    swc1	$f10,16384($zero)
.L0d95702c:
    # Line 4226
    li	$t3,0x80ba
    bne	$a0,$t3,.L0d956d38
    # Line 4309
    li	$t8,48
    sw	$t8,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4310
    b	.L0d956d44
    # Line 4308
    swc1	$f13,736($a2)
.L0d95704c:
    # Line 4341
    li	$t9,48
    sw	$t9,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    move	$ra,$ra
    # Line 4340
    swc1	$f13,700($a2)
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d957070:
    # Line 4277
    sw	$at,16384($zero)
    sw	$a0,16384($zero)
    ld	$ra,8($sp)
    swc1	$f13,16384($zero)
    # Line 4276
    swc1	$f13,672($a2)
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d957090:
    # Line 4222
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d956d48
    ld	$ra,8($sp)
.L0d9570a4:
    # Line 4301
    sw	$v0,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    move	$ra,$ra
    # Line 4300
    swc1	$f13,732($a2)
    # Line 4353
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9570c4:
    # Line 4234
    mtc1	$zero,$f12
    c.eq.s $f13,$f12
    li	$a4,1
    movt	$a4,$zero,$fcc3
    mtc1	$a4,$f11
    cvt.s.w	$f11,$f11
    trunc.w.s	$f11,$f11
    # Line 4235
    li	$v1,48
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 4234
    mfc1	$a1,$f11
    sb	$a1,761($a2)
    # Line 4236
    b	.L0d956d44
    # Line 4235
    swc1	$f11,16384($zero)
.L0d9570fc:
    # Line 4333
    li	$a5,48
    sw	$a5,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4334
    b	.L0d956d44
    # Line 4332
    swc1	$f13,692($a2)
.L0d957114:
    # Line 4269
    li	$a6,48
    sw	$a6,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4270
    b	.L0d956d44
    # Line 4268
    swc1	$f13,668($a2)
.L0d95712c:
    # Line 4313
    li	$a7,48
    sw	$a7,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4314
    b	.L0d956d44
    # Line 4312
    swc1	$f13,724($a2)
.L0d957144:
    # Line 4349
    li	$t0,48
    sw	$t0,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4350
    b	.L0d956d44
    # Line 4348
    swc1	$f13,708($a2)
.L0d95715c:
    # Line 4285
    li	$t1,48
    sw	$t1,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4286
    b	.L0d956d44
    # Line 4284
    swc1	$f13,676($a2)
.L0d957174:
    # Line 4253
    li	$t2,48
    sw	$t2,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 4254
    b	.L0d956d44
    # Line 4252
    swc1	$f13,660($a2)
.end __glkonim_PixelTransferf

# Function: __glkonim_PixelTransferi
# Declared: Line 4358 (Source lines: 4359-4361)
# Address: 0x0d957190 - 0x0d9571c8 (Size: 56 bytes, Frame: 16)
.globl __glkonim_PixelTransferi
.ent __glkonim_PixelTransferi
__glkonim_PixelTransferi:
    # Line 4359
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-25016
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 4360
    mtc1	$a1,$f13
    # lw $t9, -32200($gp) # &__glkonim_PixelTransferf
    # Line 4359
    sd	$ra,0($sp)
    # Line 4360
    bal __glkonim_PixelTransferf
    cvt.s.w	$f13,$f13
    ld	$ra,0($sp)
    # Line 4361
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_PixelTransferi

.late_rodata
jtbl_0da80058:
    .word .L0d94ffb0
    .word .L0d94ffb0
    .word .L0d94ffa8
    .word .L0d94ffa8
    .word .L0d9500e8
    .word .L0d9500e8
    .word .L0d9500e8
    .word .L0d94ffb0
    .word .L0d94ffb0
    .word .L0d9500dc
    .word .L0d9500dc
    .word .L0d9500d0
    .word .L0d9500d0

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_405fc00004000000:
    .word 0x405fc000, 0x04000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit_3f000000:
    .word 0x3f000000
_lit_42fe0000:
    .word 0x42fe0000
_lit_bf000000:
    .word 0xbf000000

