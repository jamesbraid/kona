# Source: ../soft/so_subdiv.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_subdiv.c
# Total Functions: 29

.text

# Function: __glim_SubdivPatchParameterfSGIX
# Declared: Line 296 (Source lines: 297-326)
# Address: 0x0da06d80 - 0x0da06eb4 (Size: 308 bytes, Frame: 32)
.globl __glim_SubdivPatchParameterfSGIX
.ent __glim_SubdivPatchParameterfSGIX
__glim_SubdivPatchParameterfSGIX:
    # Line 297
    addiu	$sp,$sp,-32
    # Line 299
    lw	$a2,4112($zero)
    # Line 301
    li	$v0,24592
    # Line 297
    lui	$at,0x9
    # Line 301
    li	$a3,24593
    # Line 297
    sdc1	$f20,0($sp)
    addiu	$at,$at,-23976
    mov.s	$f20,$f13
    sd	$gp,16($sp)
    # Line 301
    beq	$a0,$v0,.L0da06e34
    # Line 297
    addu	$gp,$t9,$at
    # Line 301
    beq	$a3,$a0,.L0da06dd4
    # Line 308
    lwc1	$f0,_lit_46288400
    # Line 303
    # lw $t9, -28616($gp) # &__glSetError
    ldc1	$f20,0($sp)
    sd	$ra,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da06e28
    ld	$ra,24($sp)
.L0da06dd0:
    # Line 308
    lwc1	$f0,_lit_46288400
.L0da06dd4:
    c.eq.s	$f20,$f0
    lwc1	$f2,_lit_46289c00
    lwc1	$f1,_lit_46288c00
    bc1t	.L0da06e0c
    lwc1	$f3,_lit_4628a400
    c.eq.s $f20,$f1
    bc1t .L0da06e0c
    nop
    c.eq.s $f20,$f2
    bc1t .L0da06e0c
    nop
    c.eq.s $f20,$f3
    bc1f .L0da06e64
    # Line 312
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0da06e0c:
    # Line 315
    trunc.l.s	$f4,$f20
    # Line 326
    ld	$gp,16($sp)
    ldc1	$f20,0($sp)
    # Line 315
    dmfc1	$v0,$f4
    # Line 326
    addiu	$sp,$sp,32
    jr	$ra
    # Line 315
    sw	$v0,6080($a2)
.L0da06e28:
    # Line 326
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da06e34:
    # Line 304
    beq	$a3,$a0,.L0da06dd0
    # Line 313
    lwc1	$f5,_lit_40800000
    c.lt.s $f5,$f13
    sd	$a2,8($sp)
    bc1f .L0da06e7c
    sd	$ra,24($sp)
    # Line 319
    # lw $t9, -28616($gp) # &__glSetError
    ldc1	$f20,0($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0da06e28
    ld	$ra,24($sp)
.L0da06e64:
    ldc1	$f20,0($sp)
    sd	$ra,24($sp)
    # Line 312
    jalr	$t9
    li	$a0,1280
    b	.L0da06e28
    ld	$ra,24($sp)
.L0da06e7c:
    # Line 322
    # lw $t9, -18448($gp) # &ceil
    jal	ceil
    cvt.d.s	$f12,$f13
    trunc.w.d	$f7,$f0
    # Line 326
    ld	$gp,16($sp)
    # Line 323
    cvt.s.w	$f6,$f7
    # Line 322
    ld	$v1,8($sp)
    ld	$ra,24($sp)
    swc1	$f7,6072($v1)
    # Line 323
    sub.s	$f6,$f6,$f20
    # Line 326
    ldc1	$f20,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 323
    swc1	$f6,6076($v1)
.end __glim_SubdivPatchParameterfSGIX

# Function: __glim_SubdivPatchParameteriSGIX
# Declared: Line 329 (Source lines: 330-334)
# Address: 0x0da06ec0 - 0x0da06ef8 (Size: 56 bytes, Frame: 16)
.globl __glim_SubdivPatchParameteriSGIX
.ent __glim_SubdivPatchParameteriSGIX
__glim_SubdivPatchParameteriSGIX:
    # Line 330
    lui	$at,0x9
    addiu	$sp,$sp,-16
    addiu	$at,$at,-24296
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 332
    mtc1	$a1,$f13
    # lw $t9, -26776($gp) # &__glim_SubdivPatchParameterfSGIX
    # Line 330
    sd	$ra,0($sp)
    # Line 332
    bal __glim_SubdivPatchParameterfSGIX
    cvt.s.w	$f13,$f13
    ld	$ra,0($sp)
    # Line 334
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_SubdivPatchParameteriSGIX

# Function: __glim_SubdivPatchSGIX
# Declared: Line 338 (Source lines: 341-742)
# Address: 0x0da06f00 - 0x0da0ab18 (Size: 15384 bytes, Frame: 128)
.globl __glim_SubdivPatchSGIX
.ent __glim_SubdivPatchSGIX
__glim_SubdivPatchSGIX:
    # Line 341
    addiu	$sp,$sp,-2048
    sd	$ra,1920($sp)
    sd	$s2,1888($sp)
    sd	$s3,1880($sp)
    lui	$at,0x9
    # Line 343
    lw	$s3,4112($zero)
    sd	$gp,1896($sp)
    # Line 341
    addiu	$at,$at,-24360
    addu	$gp,$t9,$at
    # Line 361
    beqz	$a0,.L0da07368
    lw	$s2,6072($s3)
    # Line 369
    bnez	$a1,.L0da06f74
    sd	$s4,1928($sp)
    move	$t1,$zero
    move	$t0,$zero
    move	$a7,$zero
    # Line 379
    bnez	$a2,.L0da06f88
    # Line 369
    move	$s4,$zero
.L0da06f48:
    sd	$s7,1936($sp)
    sd	$s8,1944($sp)
    sd	$s0,1952($sp)
    # Line 379
    move	$t8,$zero
    sd	$s5,1960($sp)
    move	$t2,$zero
    move	$t9,$zero
    sd	$s6,1968($sp)
    move	$t3,$zero
    b	.L0da06fb0
    sd	$s1,1976($sp)
.L0da06f74:
    lw	$t1,12($a1)
    # Line 378
    lw	$t0,8($a1)
    # Line 377
    lw	$a7,4($a1)
    # Line 379
    beqz	$a2,.L0da06f48
    # Line 376
    lw	$s4,0($a1)
.L0da06f88:
    # Line 387
    lw	$t8,12($a2)
    # Line 386
    lw	$t2,8($a2)
    # Line 385
    lw	$t9,4($a2)
    # Line 384
    lw	$t3,0($a2)
    sd	$s7,1936($sp)
    sd	$s8,1944($sp)
    sd	$s0,1952($sp)
    sd	$s5,1960($sp)
    sd	$s6,1968($sp)
    sd	$s1,1976($sp)
.L0da06fb0:
    # Line 393
    lw	$a4,12($a0)
    # Line 391
    lw	$s8,4($a0)
    # Line 392
    lw	$s6,8($a0)
    # Line 391
    lw	$a1,0($s8)
    # Line 390
    lw	$s7,0($a0)
    # Line 392
    lw	$a2,0($s6)
    addiu	$s6,$s6,4
    # Line 391
    addiu	$s8,$s8,4
    # Line 390
    lw	$v1,0($s7)
    addiu	$s7,$s7,4
    # Line 393
    addiu	$s5,$a4,4
    lw	$a4,0($a4)
    # Line 391
    addiu	$a3,$a1,-1
    sd	$a3,1912($sp)
    # Line 401
    slti	$v0,$v1,9
    # Line 392
    addiu	$s1,$a2,-1
    # Line 390
    addiu	$v1,$v1,-1
    sd	$v1,1904($sp)
    # Line 393
    addiu	$s0,$a4,-1
    # Line 401
    beqz	$v0,.L0da07020
    # Line 393
    sd	$s0,1872($sp)
    # Line 401
    slti	$ra,$a1,10
    beqz	$ra,.L0da07020
    slti	$at,$a2,10
    beqz	$at,.L0da07020
    slti	$v0,$a4,9
    bnez	$v0,.L0da07064
    nop
.L0da07020:
    sd	$t8,1992($sp)
    sd	$t3,2000($sp)
    sd	$t2,2008($sp)
    sd	$t9,1984($sp)
    # Line 405
    # lw $t9, -28616($gp) # &__glSetError
    sd	$t1,2016($sp)
    sd	$t0,2032($sp)
    sd	$a7,2040($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$a7,2040($sp)
    ld	$t0,2032($sp)
    ld	$t1,2016($sp)
    ld	$t2,2008($sp)
    ld	$t3,2000($sp)
    ld	$t8,1992($sp)
    ld	$t9,1984($sp)
.L0da07064:
    sd	$s1,1864($sp)
    # Line 409
    beqz	$s4,.L0da074fc
    sd	$s0,2024($sp)
    ld	$ra,2024($sp)
    sd	$zero,1856($sp)
.L0da07078:
    # Line 414
    ld	$v1,1872($sp)
    bltz	$v1,.L0da0750c
    sb	$zero,6116($s3)
.L0da07084:
    # Line 429
    beqz	$s4,.L0da070c4
    addiu	$a2,$sp,152
    beqz	$a7,.L0da070c4
    addiu	$a2,$sp,152
    beqz	$t0,.L0da070c4
    addiu	$a2,$sp,152
    beqz	$t1,.L0da070c4
    addiu	$a2,$sp,152
    beqz	$t3,.L0da070c4
    addiu	$a2,$sp,152
    beqz	$t9,.L0da070c4
    addiu	$a2,$sp,152
    beqz	$t2,.L0da070c4
    addiu	$a2,$sp,152
    bnez	$t8,.L0da07158
    addiu	$a2,$sp,152
.L0da070c4:
    addiu	$a0,$sp,32
    addiu	$a5,$sp,24
    addiu	$a4,$sp,29
    addiu	$a6,$sp,32
    b	.L0da070f0
    addiu	$a1,$sp,0
    nop
.L0da070e0:
    # Line 431
    addiu	$a1,$a1,1
    addiu	$a0,$a0,8
    beq	$a1,$a6,.L0da07138
    addiu	$a2,$a2,8
.L0da070f0:
    # Line 432
    slt	$a3,$a1,$a5
    beqz	$a3,.L0da07100
    sb	$zero,0($a1)
    # Line 433
    sw	$zero,0($a2)
.L0da07100:
    slt	$at,$a1,$a4
    beqz	$at,.L0da07110
    nop
    # Line 434
    sw	$zero,0($a0)
.L0da07110:
    # Line 431
    addiu	$a1,$a1,1
    # Line 432
    slt	$v0,$a1,$a5
    beqz	$v0,.L0da07124
    sb	$zero,0($a1)
    # Line 433
    sw	$zero,4($a2)
.L0da07124:
    slt	$v1,$a1,$a4
    beqz	$v1,.L0da070e0
    nop
    # Line 434
    b	.L0da070e0
    sw	$zero,4($a0)
.L0da07138:
    movz	$t8,$sp,$t8
    movz	$t2,$sp,$t2
    movz	$t9,$sp,$t9
    movz	$t3,$sp,$t3
    movz	$t1,$sp,$t1
    movz	$t0,$sp,$t0
    movz	$a7,$sp,$a7
    movz	$s4,$sp,$s4
.L0da07158:
    # Line 457
    lw	$a0,6080($s3)
    li	$a1,10785
    beq	$a0,$a1,.L0da07528
    # Line 459
    li	$at,3
    # Line 457
    li	$a2,10787
    beq	$a0,$a2,.L0da0845c
    # Line 481
    li	$a6,4
    # Line 457
    li	$a3,10791
    beq	$a0,$a3,.L0da08f64
    # Line 503
    li	$a3,5
    # Line 457
    li	$a4,10793
    beq	$a0,$a4,.L0da09a98
    # Line 529
    li	$a3,6
    # Line 457
    lui	$s1,0xff
    lui	$s0,0x1fff
    lbu	$a6,248($sp)
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
.L0da071a0:
    # Line 570
    beqz	$a6,.L0da073c4
    # Line 569
    sb	$zero,6117($s3)
.L0da071a8:
    # Line 582
    ld	$ra,1856($sp)
.L0da071ac:
    lui	$at,0x8000
    sw	$s0,6112($s3)
    and	$at,$ra,$at
    # Line 581
    sw	$s1,6108($s3)
    # Line 582
    beqz	$at,.L0da07610
    # Line 580
    sw	$ra,6104($s3)
.L0da071c4:
    # Line 673
    # lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,-2096
    bnez	$v0,.L0da07394
    ld	$s3,1880($sp)
    # Line 675
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-16816
    addiu	$a2,$sp,32
    addiu	$a1,$sp,152
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,256
    li	$s0,2
    addiu	$a1,$sp,1416
    # Line 677
    sw	$s0,16($a1)
    sw	$s0,12($a1)
    sw	$s0,8($a1)
    sw	$s0,4($a1)
    sw	$s0,1416($sp)
    # Line 680
    la	$s1,sub_0da10000
    addiu	$s1,$s1,-6016
    move	$t9,$s1
    bal __glim_SubdivPatchSGIX
    move	$a0,$zero
    # Line 681
    beqz	$s2,.L0da0aa4c
    # Line 683
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    # Line 681
    li	$t8,1
    beq	$s2,$t8,.L0da0aa68
    # Line 686
    move	$t9,$s1
    # Line 681
    beq	$s2,$s0,.L0da0a77c
    # Line 692
    addiu	$s0,$sp,1416
    # Line 681
    li	$t9,3
    beq	$s2,$t9,.L0da0a810
    # Line 703
    addiu	$s0,$sp,1416
    # Line 681
    li	$ra,4
    bne	$s2,$ra,.L0da07390
    # Line 718
    sll	$t8,$s2,0x2
    addiu	$s0,$sp,1416
    addu	$s0,$s0,$t8
    lw	$at,-12($s0)
    addiu	$v0,$at,2
    slt	$at,$at,$v0
    beqz	$at,.L0da07390
    sd	$v0,1792($sp)
    la	$s3,sub_0da10000
    addiu	$s8,$s2,-2
    addiu	$s6,$s2,-3
    sd	$s6,1784($sp)
    addiu	$s6,$s2,-1
    addiu	$s3,$s3,7840
    # Line 720
    move	$t9,$s1
.L0da07290:
    ld	$a0,1784($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 721
    lw	$t8,-8($s0)
    addiu	$s7,$t8,2
    slt	$t8,$t8,$s7
    beqz	$t8,.L0da07350
    # Line 730
    ld	$a6,1792($sp)
    # Line 723
    move	$t9,$s1
.L0da072b4:
    move	$a0,$s8
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 724
    lw	$t9,-4($s0)
    addiu	$s5,$t9,2
    slt	$t9,$t9,$s5
    beqz	$t9,.L0da0733c
    nop
    # Line 726
    move	$t9,$s1
.L0da072d8:
    move	$a0,$s6
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 727
    lw	$ra,0($s0)
    addiu	$s4,$ra,2
    slt	$ra,$ra,$s4
    beqz	$ra,.L0da0732c
    nop
    # Line 729
    move	$t9,$s1
.L0da072fc:
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 730
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    jal	sub_0da10000
    addiu	$a1,$a1,-1
    lw	$a2,0($s0)
    slt	$a2,$a2,$s4
    bnez	$a2,.L0da072fc
    # Line 729
    move	$t9,$s1
.L0da0732c:
    # Line 730
    lw	$a3,-4($s0)
    slt	$a3,$a3,$s5
    bnez	$a3,.L0da072d8
    # Line 726
    move	$t9,$s1
.L0da0733c:
    # Line 730
    lw	$a4,-8($s0)
    slt	$a4,$a4,$s7
    bnez	$a4,.L0da072b4
    # Line 723
    move	$t9,$s1
    # Line 730
    ld	$a6,1792($sp)
.L0da07350:
    lw	$a5,-12($s0)
    slt	$a5,$a5,$a6
    bnez	$a5,.L0da07290
    # Line 720
    move	$t9,$s1
    b	.L0da07394
    ld	$s3,1880($sp)
.L0da07368:
    sd	$s4,1928($sp)
    sd	$s7,1936($sp)
    sd	$s8,1944($sp)
    sd	$s0,1952($sp)
    # Line 364
    # lw $t9, -28616($gp) # &__glSetError
    sd	$s5,1960($sp)
    sd	$s6,1968($sp)
    li	$a0,1281
    jal	__glSetError
    sd	$s1,1976($sp)
.L0da07390:
    ld	$s3,1880($sp)
.L0da07394:
    ld	$s4,1928($sp)
    ld	$s7,1936($sp)
    ld	$s8,1944($sp)
    ld	$s2,1888($sp)
    ld	$s0,1952($sp)
    ld	$s5,1960($sp)
    ld	$ra,1920($sp)
    ld	$s6,1968($sp)
    ld	$s1,1976($sp)
    # Line 742
    ld	$gp,1896($sp)
    jr	$ra
    addiu	$sp,$sp,2048
.L0da073c4:
    # Line 570
    lbu	$ra,1412($sp)
    bnez	$ra,.L0da071ac
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lw	$at,6088($s3)
    li	$v0,1
    bne	$at,$v0,.L0da071ac
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lbu	$v1,1413($sp)
    bnez	$v1,.L0da071ac
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lbu	$a0,1414($sp)
    bnez	$a0,.L0da071ac
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lw	$a1,6100($s3)
    move	$a2,$v0
    bne	$a1,$a2,.L0da071ac
    # Line 582
    ld	$ra,1856($sp)
    # Line 570
    lbu	$a3,6116($s3)
    bnez	$a3,.L0da071ac
    # Line 582
    ld	$ra,1856($sp)
    sd	$t8,1992($sp)
    sd	$t3,2000($sp)
    # Line 572
    lw	$s6,1408($sp)
    la	$s5,sub_0da10000
    sd	$t2,2008($sp)
    addiu	$a2,$sp,256
    move	$a0,$s6
    sd	$t1,2016($sp)
    sll	$a3,$s6,0x4
    addiu	$s5,$s5,-21728
    sd	$t9,1984($sp)
    sll	$s7,$s6,0x5
    move	$t9,$s5
    sd	$t0,2032($sp)
    addu	$s7,$a2,$s7
    addu	$a2,$a2,$a3
    sd	$a7,2040($sp)
    bal __glim_SubdivPatchSGIX
    move	$a1,$s7
    # Line 573
    move	$a0,$s6
    move	$a1,$s7
    sll	$a3,$s6,0x2
    move	$t9,$s5
    addu	$a3,$a3,$s6
    addiu	$a2,$sp,256
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$a3
    # Line 574
    move	$a0,$s6
    move	$t9,$s5
    sll	$s7,$s6,0x6
    addiu	$a2,$sp,256
    sll	$a3,$s6,0x2
    addu	$s7,$a2,$s7
    subu	$a3,$a3,$s6
    move	$a1,$s7
    sll	$a3,$a3,0x3
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$a3
    # Line 575
    move	$a0,$s6
    move	$a1,$s7
    sll	$a3,$s6,0x3
    move	$t9,$s5
    subu	$a3,$a3,$s6
    addiu	$a2,$sp,256
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$a3
    ld	$a7,2040($sp)
    ld	$t0,2032($sp)
    ld	$t1,2016($sp)
    ld	$t2,2008($sp)
    ld	$t3,2000($sp)
    ld	$t8,1992($sp)
    ld	$t9,1984($sp)
    li	$a4,1
    b	.L0da071a8
    # Line 576
    sb	$a4,6117($s3)
.L0da074fc:
    # Line 409
    beqz	$a7,.L0da0a8dc
    ld	$ra,2024($sp)
    b	.L0da07078
    sd	$zero,1856($sp)
.L0da0750c:
    # Line 416
    move	$s5,$s6
    # Line 417
    ld	$ra,1864($sp)
    # Line 418
    move	$t1,$t0
    # Line 419
    move	$t8,$t2
    # Line 420
    li	$a5,1
    b	.L0da07084
    sb	$a5,6116($s3)
.L0da07528:
    # Line 459
    sw	$at,6084($s3)
    # Line 461
    lwc1	$f11,0($s7)
    swc1	$f11,256($sp)
    lwc1	$f10,4($s7)
    swc1	$f10,260($sp)
    # Line 462
    lwc1	$f9,8($s7)
    swc1	$f9,264($sp)
    # Line 463
    lwc1	$f8,0($s8)
    swc1	$f8,268($sp)
    lwc1	$f7,4($s8)
    swc1	$f7,272($sp)
    # Line 464
    lwc1	$f6,8($s8)
    swc1	$f6,276($sp)
    # Line 465
    lwc1	$f5,0($s6)
    swc1	$f5,280($sp)
    lwc1	$f4,4($s6)
    swc1	$f4,284($sp)
    # Line 466
    lwc1	$f3,8($s6)
    swc1	$f3,288($sp)
    # Line 467
    lwc1	$f2,0($s5)
    swc1	$f2,292($sp)
    lwc1	$f1,4($s5)
    # Line 470
    ld	$a6,1904($sp)
    # Line 467
    swc1	$f1,296($sp)
    # Line 470
    slti	$a6,$a6,3
    # Line 468
    lwc1	$f0,8($s5)
    # Line 459
    sw	$at,1408($sp)
    # Line 470
    bnez	$a6,.L0da07b00
    # Line 468
    swc1	$f0,300($sp)
    # Line 470
    ld	$a1,1912($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v0,36($s7)
    addu	$a0,$s8,$a0
    lw	$at,12($a0)
    bne	$at,$v0,.L0da07b04
    mtc1	$zero,$f15
    lw	$a2,16($a0)
    lw	$a3,40($s7)
    bne	$a2,$a3,.L0da07b04
    mtc1	$zero,$f15
    lw	$a4,20($a0)
    lw	$a5,44($s7)
    bne	$a4,$a5,.L0da07b04
    mtc1	$zero,$f15
    lwc1	$f14,36($s7)
    swc1	$f14,304($sp)
    lwc1	$f13,40($s7)
    swc1	$f13,308($sp)
    li	$a6,1
    lui	$s1,0xff
    lwc1	$f12,44($s7)
    lui	$s0,0x1fff
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
    b	.L0da07b24
    swc1	$f12,312($sp)
.L0da07610:
    # Line 588
    lb	$a0,0($t0)
    lb	$v0,0($a7)
    sll	$a0,$a0,0x8
    lb	$v1,0($s4)
    sll	$v0,$v0,0x10
    lb	$ra,0($t1)
    andi	$at,$s1,0x10
    sll	$v1,$v1,0x18
    or	$ra,$ra,$a0
    or	$v0,$v0,$v1
    or	$ra,$ra,$v0
    beqz	$at,.L0da0a8ec
    sw	$ra,152($sp)
    # Line 591
    lb	$a0,3($s4)
.L0da07648:
    andi	$a2,$s1,0x20
    sll	$a1,$a0,0x18
    beqz	$a2,.L0da0a8f4
    sw	$a1,156($sp)
    # Line 592
    lb	$a0,4($t0)
.L0da0765c:
    andi	$a3,$s1,0x40
    sll	$a2,$a0,0x10
    or	$a2,$a1,$a2
    beqz	$a3,.L0da0a8fc
    sw	$a2,156($sp)
    # Line 593
    lb	$a0,3($t1)
.L0da07674:
    andi	$a3,$s1,0x80
    sll	$a1,$a0,0x8
    or	$a1,$a2,$a1
    beqz	$a3,.L0da0a904
    sw	$a1,156($sp)
    # Line 594
    lb	$a0,4($a7)
.L0da0768c:
    # Line 596
    addiu	$t1,$t1,4
    addiu	$t0,$t0,5
    andi	$a3,$s1,0x100
    addiu	$a7,$a7,5
    addiu	$s4,$s4,4
    # Line 594
    or	$a2,$a0,$a1
    # Line 596
    beqz	$a3,.L0da0a90c
    # Line 594
    sw	$a2,156($sp)
    # Line 597
    lb	$a0,0($s4)
    addiu	$s4,$s4,1
.L0da076b4:
    andi	$a4,$s1,0x200
    sll	$a2,$a0,0x18
    beqz	$a4,.L0da0a914
    sw	$a2,160($sp)
    # Line 598
    lb	$a0,0($s4)
    addiu	$s4,$s4,1
.L0da076cc:
    andi	$a5,$s1,0x400
    sll	$a1,$a0,0x10
    or	$a1,$a2,$a1
    beqz	$a5,.L0da0a91c
    sw	$a1,160($sp)
    # Line 599
    lb	$a0,0($s4)
    addiu	$s4,$s4,1
.L0da076e8:
    andi	$a3,$s1,0x800
    sll	$a2,$a0,0x8
    or	$a2,$a1,$a2
    beqz	$a3,.L0da0a924
    sw	$a2,160($sp)
    # Line 600
    lb	$a0,0($s4)
.L0da07700:
    dsll32	$a4,$s1,0xf
    lui	$ra,0x1
    or	$a3,$a0,$a2
    bgez	$a4,.L0da0a92c
    sw	$a3,160($sp)
    # Line 602
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0da0771c:
    dsll32	$a5,$s1,0xe
    sll	$a1,$a0,0x18
    lui	$a6,0x2
    bgez	$a5,.L0da0a934
    sw	$a1,164($sp)
    # Line 603
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0da07738:
    dsll32	$at,$s1,0xd
    lui	$s6,0x4
    sll	$a2,$a0,0x10
    or	$a2,$a1,$a2
    bgez	$at,.L0da0a93c
    sw	$a2,164($sp)
    # Line 604
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0da07758:
    dsll32	$a3,$s1,0xc
    lui	$a5,0x8
    sll	$a1,$a0,0x8
    or	$a1,$a2,$a1
    bgez	$a3,.L0da0a944
    sw	$a1,164($sp)
    # Line 605
    lb	$a0,0($t0)
.L0da07774:
    dsll32	$a3,$s1,0xb
    lui	$s4,0x10
    or	$a2,$a0,$a1
    bgez	$a3,.L0da0a94c
    sw	$a2,164($sp)
    # Line 607
    lb	$a0,0($t1)
    addiu	$t1,$t1,1
.L0da07790:
    dsll32	$a4,$s1,0xa
    sll	$a2,$a0,0x18
    lui	$s5,0x20
    bgez	$a4,.L0da0a954
    sw	$a2,168($sp)
    # Line 608
    lb	$a0,0($t1)
    addiu	$t1,$t1,1
.L0da077ac:
    dsll32	$t0,$s1,0x9
    lui	$s3,0x40
    sll	$a1,$a0,0x10
    or	$a1,$a2,$a1
    bgez	$t0,.L0da0a95c
    sw	$a1,168($sp)
    # Line 609
    lb	$a0,0($t1)
    addiu	$t1,$t1,1
.L0da077cc:
    dsll32	$a3,$s1,0x8
    lui	$t0,0x80
    sll	$a2,$a0,0x8
    or	$a2,$a1,$a2
    bgez	$a3,.L0da0a964
    sw	$a2,168($sp)
    # Line 610
    lb	$a0,0($t1)
.L0da077e8:
    andi	$a4,$s1,0x1000
    or	$a3,$a0,$a2
    beqz	$a4,.L0da0a96c
    sw	$a3,168($sp)
    # Line 612
    lb	$a0,0($a7)
    addiu	$a7,$a7,1
.L0da07800:
    andi	$t1,$s1,0x2000
    sll	$a2,$a0,0x18
    beqz	$t1,.L0da0a974
    sw	$a2,172($sp)
    # Line 613
    lb	$a0,0($a7)
    addiu	$a7,$a7,1
.L0da07818:
    andi	$at,$s1,0x4000
    sll	$a1,$a0,0x10
    or	$a1,$a2,$a1
    beqz	$at,.L0da0a97c
    sw	$a1,172($sp)
    # Line 614
    lb	$a0,0($a7)
    addiu	$a7,$a7,1
.L0da07834:
    andi	$a3,$s1,0x8000
    sll	$a2,$a0,0x8
    or	$a2,$a1,$a2
    beqz	$a3,.L0da0a984
    sw	$a2,172($sp)
    # Line 615
    lb	$a0,0($a7)
.L0da0784c:
    or	$v0,$a0,$a2
    sw	$v0,172($sp)
    # Line 621
    lb	$at,0($t8)
    lb	$a7,0($t9)
    sll	$at,$at,0x8
    lb	$t1,0($t3)
    sll	$a7,$a7,0x18
    lb	$a4,0($t2)
    # Line 622
    andi	$a3,$s0,0x10
    # Line 621
    sll	$t1,$t1,0x10
    or	$a4,$a4,$at
    or	$a7,$a7,$t1
    or	$a4,$a4,$a7
    sw	$a4,32($sp)
    # Line 622
    beqz	$a3,.L0da0a98c
    lb	$a1,1($t2)
    # Line 624
    ld	$a0,1912($sp)
    addu	$a0,$a0,$t9
    lb	$a0,0($a0)
.L0da07898:
    andi	$a3,$s0,0x20
    sll	$a2,$a0,0x18
    beqz	$a3,.L0da0a994
    sw	$a2,36($sp)
    # Line 625
    lb	$a0,2($t3)
.L0da078ac:
    andi	$a7,$s0,0x40
    sll	$a4,$a0,0x10
    or	$a4,$a2,$a4
    beqz	$a7,.L0da0a99c
    sw	$a4,36($sp)
    # Line 626
    ld	$a0,1904($sp)
    addu	$a0,$a0,$t3
    lb	$a0,0($a0)
.L0da078cc:
    andi	$a3,$s0,0x80
    sll	$a2,$a0,0x8
    or	$a2,$a4,$a2
    beqz	$a3,.L0da0a9a4
    sw	$a2,36($sp)
    # Line 627
    lb	$a0,3($t2)
.L0da078e4:
    andi	$a4,$s0,0xa0
    or	$a3,$a0,$a2
    beqz	$a4,.L0da0a9ac
    sw	$a3,36($sp)
    # Line 629
    ld	$a0,1864($sp)
    addu	$a0,$a0,$t2
    lb	$a0,0($a0)
.L0da07900:
    andi	$a3,$s0,0x140
    sll	$a2,$a0,0x18
    beqz	$a3,.L0da0a9b4
    sw	$a2,40($sp)
    # Line 630
    lb	$a0,2($t8)
.L0da07914:
    andi	$a7,$s0,0x280
    sll	$a4,$a0,0x10
    or	$a4,$a2,$a4
    beqz	$a7,.L0da0a9bc
    sw	$a4,40($sp)
    # Line 631
    ld	$a0,1872($sp)
    addu	$a0,$a0,$t8
    lb	$a0,0($a0)
.L0da07934:
    andi	$a3,$s0,0x500
    sll	$a2,$a0,0x8
    or	$a2,$a4,$a2
    beqz	$a3,.L0da0a9c4
    sw	$a2,40($sp)
    # Line 632
    lb	$a0,3($t9)
.L0da0794c:
    # Line 634
    addiu	$t8,$t8,3
    addiu	$t2,$t2,4
    andi	$a4,$s0,0x1000
    addiu	$t9,$t9,4
    addiu	$t3,$t3,3
    # Line 632
    or	$a3,$a0,$a2
    # Line 634
    beqz	$a4,.L0da0a9cc
    # Line 632
    sw	$a3,40($sp)
    # Line 635
    lb	$a0,0($t3)
    addiu	$t3,$t3,1
.L0da07974:
    andi	$a7,$s0,0x2000
    sll	$a4,$a0,0x18
    beqz	$a7,.L0da0a9d4
    sw	$a4,44($sp)
    # Line 636
    lb	$a0,0($t3)
    addiu	$t3,$t3,1
.L0da0798c:
    andi	$t1,$s0,0x4000
    sll	$a2,$a0,0x10
    or	$a2,$a4,$a2
    beqz	$t1,.L0da0a9dc
    sw	$a2,44($sp)
    # Line 637
    lb	$a0,0($t3)
    addiu	$t3,$t3,1
.L0da079a8:
    andi	$a3,$s0,0x8000
    sll	$a4,$a0,0x8
    or	$a4,$a2,$a4
    beqz	$a3,.L0da0a9e4
    sw	$a4,44($sp)
    # Line 638
    lb	$a0,0($t3)
.L0da079c0:
    and	$t1,$s0,$s4
    or	$a7,$a0,$a4
    beqz	$t1,.L0da0a9ec
    sw	$a7,44($sp)
    # Line 640
    lb	$a2,0($t2)
    addiu	$t2,$t2,1
.L0da079d8:
    and	$t3,$s0,$s5
    sll	$a0,$a2,0x18
    beqz	$t3,.L0da0a9f4
    sw	$a0,48($sp)
    # Line 641
    lb	$a2,0($t2)
    addiu	$t2,$t2,1
.L0da079f0:
    and	$at,$s0,$s3
    sll	$a4,$a2,0x10
    or	$a4,$a0,$a4
    beqz	$at,.L0da0a9fc
    sw	$a4,48($sp)
    # Line 642
    lb	$a0,0($t2)
    addiu	$t2,$t2,1
.L0da07a0c:
    and	$a7,$s0,$t0
    sll	$a2,$a0,0x8
    or	$a2,$a4,$a2
    beqz	$a7,.L0da0aa04
    sw	$a2,48($sp)
    # Line 643
    lb	$a0,0($t2)
.L0da07a24:
    dsll32	$a4,$s0,0x7
    or	$a3,$a0,$a2
    bgez	$a4,.L0da0aa0c
    sw	$a3,48($sp)
    # Line 645
    lb	$a2,0($t8)
    addiu	$t8,$t8,1
.L0da07a3c:
    dsll32	$a7,$s0,0x6
    sll	$a0,$a2,0x18
    bgez	$a7,.L0da0aa14
    sw	$a0,52($sp)
    # Line 646
    lb	$a2,0($t8)
    addiu	$t8,$t8,1
.L0da07a54:
    dsll32	$t0,$s0,0x5
    sll	$a4,$a2,0x10
    or	$a4,$a0,$a4
    bgez	$t0,.L0da0aa1c
    sw	$a4,52($sp)
    # Line 647
    lb	$a2,0($t8)
    addiu	$t8,$t8,1
.L0da07a70:
    dsll32	$a7,$s0,0x4
    sll	$a0,$a2,0x8
    or	$a0,$a4,$a0
    bgez	$a7,.L0da0aa24
    sw	$a0,52($sp)
    # Line 648
    lb	$a2,0($t8)
.L0da07a88:
    and	$a4,$s0,$ra
    or	$a3,$a2,$a0
    beqz	$a4,.L0da0aa2c
    sw	$a3,52($sp)
    # Line 650
    lb	$a0,0($t9)
    addiu	$t9,$t9,1
.L0da07aa0:
    and	$a7,$s0,$a6
    sll	$a2,$a0,0x18
    beqz	$a7,.L0da0aa34
    sw	$a2,56($sp)
    # Line 651
    lb	$a4,0($t9)
    addiu	$t9,$t9,1
.L0da07ab8:
    and	$t0,$s0,$s6
    sll	$a0,$a4,0x10
    or	$a0,$a2,$a0
    beqz	$t0,.L0da0aa3c
    sw	$a0,56($sp)
    # Line 652
    lb	$a4,0($t9)
    addiu	$t9,$t9,1
.L0da07ad4:
    and	$a3,$s0,$a5
    sll	$a2,$a4,0x8
    or	$a2,$a0,$a2
    beqz	$a3,.L0da0aa44
    sw	$a2,56($sp)
    # Line 653
    lb	$a0,0($t9)
.L0da07aec:
    # Line 655
    sll	$a4,$a1,0x18
    sw	$a4,60($sp)
    # Line 653
    or	$a3,$a0,$a2
    b	.L0da071c4
    sw	$a3,56($sp)
.L0da07b00:
    # Line 470
    mtc1	$zero,$f15
.L0da07b04:
    move	$a6,$zero
    swc1	$f15,312($sp)
    lui	$s0,0x1fff
    lui	$s1,0xff
    swc1	$f15,308($sp)
    ori	$s1,$s1,0xffef
    ori	$s0,$s0,0xffcf
    swc1	$f15,304($sp)
.L0da07b24:
    # Line 471
    ld	$at,1864($sp)
    slti	$at,$at,4
    bnez	$at,.L0da07ba0
    mtc1	$zero,$f19
    ld	$a1,1904($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v1,48($s6)
    addu	$a0,$s7,$a0
    lw	$v0,12($a0)
    bne	$v0,$v1,.L0da07ba0
    mtc1	$zero,$f19
    lw	$a2,16($a0)
    lw	$a3,52($s6)
    bne	$a2,$a3,.L0da07ba0
    mtc1	$zero,$f19
    lw	$a4,20($a0)
    lw	$a5,56($s6)
    bne	$a4,$a5,.L0da07ba0
    mtc1	$zero,$f19
    lwc1	$f18,48($s6)
    swc1	$f18,316($sp)
    lwc1	$f17,52($s6)
    swc1	$f17,320($sp)
    lwc1	$f16,56($s6)
    li	$a2,1
    sb	$a2,1412($sp)
    b	.L0da07bc4
    swc1	$f16,324($sp)
    mtc1	$zero,$f19
.L0da07ba0:
    sb	$zero,1412($sp)
    move	$a2,$zero
    swc1	$f19,324($sp)
    li	$a4,-193
    li	$a3,-33
    swc1	$f19,320($sp)
    and	$s0,$s0,$a4
    and	$s1,$s1,$a3
    swc1	$f19,316($sp)
.L0da07bc4:
    # Line 472
    slti	$a5,$ra,3
    bnez	$a5,.L0da07c38
    ld	$a1,1864($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v0,36($s5)
    addu	$a0,$s6,$a0
    lw	$at,12($a0)
    bne	$at,$v0,.L0da07c38
    nop
    lw	$a3,16($a0)
    lw	$a4,40($s5)
    bne	$a3,$a4,.L0da07c38
    nop
    lw	$a5,20($a0)
    lw	$at,44($s5)
    bne	$a5,$at,.L0da07c38
    nop
    lwc1	$f25,36($s5)
    swc1	$f25,328($sp)
    lwc1	$f23,40($s5)
    li	$v0,1
    sd	$v0,1824($sp)
    swc1	$f23,332($sp)
    lwc1	$f21,44($s5)
    sb	$v0,1413($sp)
    b	.L0da07c60
    swc1	$f21,336($sp)
.L0da07c38:
    sb	$zero,1413($sp)
    mtc1	$zero,$f27
    sd	$zero,1824($sp)
    swc1	$f27,336($sp)
    li	$v1,-65
    li	$a0,-769
    swc1	$f27,332($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f27,328($sp)
.L0da07c60:
    # Line 473
    ld	$a1,1912($sp)
    slti	$a1,$a1,4
    bnez	$a1,.L0da07ce4
    sll	$a0,$ra,0x2
    subu	$a0,$a0,$ra
    sll	$a0,$a0,0x2
    addu	$a0,$s5,$a0
    lw	$a3,12($a0)
    lw	$a4,48($s8)
    bne	$a3,$a4,.L0da07ce4
    nop
    lw	$a1,16($a0)
    lw	$a3,52($s8)
    bne	$a1,$a3,.L0da07ce4
    nop
    lw	$a4,20($a0)
    lw	$a5,56($s8)
    bne	$a4,$a5,.L0da07ce4
    nop
    lwc1	$f0,48($s8)
    li	$at,1
    sd	$at,1832($sp)
    addiu	$a0,$sp,256
    swc1	$f0,84($a0)
    lwc1	$f31,52($s8)
    sb	$at,1414($sp)
    swc1	$f31,88($a0)
    lwc1	$f29,56($s8)
    li	$a4,24
    sd	$a2,1816($sp)
    addiu	$a1,$a0,96
    b	.L0da07d1c
    swc1	$f29,92($a0)
.L0da07ce4:
    sb	$zero,1414($sp)
    sd	$zero,1832($sp)
    mtc1	$zero,$f1
    sd	$a2,1816($sp)
    addiu	$a0,$sp,256
    li	$a4,24
    li	$v1,-3073
    swc1	$f1,92($a0)
    li	$v0,-129
    and	$s0,$s0,$v1
    swc1	$f1,88($a0)
    addiu	$a1,$a0,96
    and	$s1,$s1,$v0
    swc1	$f1,84($a0)
.L0da07d1c:
    # Line 475
    sltu	$a3,$zero,$a6
    sll	$a2,$a3,0x2
    ld	$v0,1816($sp)
    li	$a5,1
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    ld	$at,1904($sp)
    sltu	$v0,$zero,$v0
    addu	$s7,$a2,$s7
    sd	$v0,1848($sp)
    addu	$v0,$a3,$v0
    addiu	$s7,$s7,36
    subu	$at,$at,$v0
    li	$v1,4
    addiu	$at,$at,-1
    li	$v0,4
    slt	$v1,$v1,$at
    sd	$a3,1840($sp)
    li	$a3,16
    movn	$at,$v0,$v1
    sd	$a2,1712($sp)
    addiu	$a2,$at,-1
    sllv	$a5,$a5,$at
    subu	$v0,$v0,$at
    subu	$a3,$a3,$a5
    sd	$v0,1704($sp)
    li	$a5,-1
    sll	$v0,$a3,0xc
    sll	$a3,$a3,0x8
    nor	$v0,$v0,$zero
    sd	$at,1680($sp)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sw	$at,6088($s3)
    beq	$a2,$a5,.L0da07e88
    and	$s1,$s1,$a3
    ld	$v1,1680($sp)
    sd	$v1,1664($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0da07df8
    sd	$v1,1800($sp)
.L0da07dc0:
    lwc1	$f4,0($s7)
    swc1	$f4,0($a1)
    lwc1	$f3,4($s7)
    ld	$at,1800($sp)
    swc1	$f3,4($a1)
    addiu	$a2,$a2,-1
    addiu	$at,$at,-1
    lwc1	$f2,8($s7)
    addiu	$s7,$s7,12
    addiu	$a1,$a1,12
    sd	$at,1800($sp)
    addiu	$a4,$a4,3
    bnez	$at,.L0da07dc0
    swc1	$f2,-4($a1)
.L0da07df8:
    ld	$v0,1664($sp)
    sra	$v0,$v0,0x2
    beqz	$v0,.L0da07e88
    nop
    move	$a0,$s7
    nop
.L0da07e10:
    lwc1	$f16,0($a0)
    swc1	$f16,0($a1)
    lwc1	$f15,4($a0)
    swc1	$f15,4($a1)
    lwc1	$f14,8($a0)
    swc1	$f14,8($a1)
    lwc1	$f13,12($a0)
    swc1	$f13,12($a1)
    lwc1	$f12,16($a0)
    swc1	$f12,16($a1)
    lwc1	$f11,20($a0)
    swc1	$f11,20($a1)
    lwc1	$f10,24($a0)
    swc1	$f10,24($a1)
    lwc1	$f9,28($a0)
    swc1	$f9,28($a1)
    lwc1	$f8,32($a0)
    swc1	$f8,32($a1)
    lwc1	$f7,36($a0)
    swc1	$f7,36($a1)
    lwc1	$f6,40($a0)
    swc1	$f6,40($a1)
    addiu	$a2,$a2,-4
    lwc1	$f5,44($a0)
    addiu	$a0,$a0,48
    addiu	$a1,$a1,48
    addiu	$a4,$a4,12
    bne	$a2,$a5,.L0da07e10
    swc1	$f5,-4($a1)
    addiu	$a0,$sp,256
.L0da07e88:
    ld	$s7,1704($sp)
    addiu	$a2,$s7,-1
    beq	$a2,$a5,.L0da07f0c
    # Line 476
    ld	$a1,1848($sp)
    # Line 475
    mtc1	$zero,$f4
    andi	$a3,$s7,0x1
    sll	$a1,$a4,0x2
    sd	$s7,1656($sp)
    beqz	$a3,.L0da07ecc
    addu	$a1,$a0,$a1
    swc1	$f4,0($a1)
    ld	$a2,1704($sp)
    swc1	$f4,4($a1)
    addiu	$a1,$a1,12
    swc1	$f4,-4($a1)
    addiu	$a4,$a4,3
    addiu	$a2,$a2,-2
.L0da07ecc:
    ld	$a3,1656($sp)
    sra	$a3,$a3,0x1
    beqz	$a3,.L0da07f08
    nop
    nop
.L0da07ee0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-2
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da07ee0
    addiu	$a4,$a4,6
.L0da07f08:
    # Line 476
    ld	$a1,1848($sp)
.L0da07f0c:
    ld	$s7,1824($sp)
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    ld	$v0,1864($sp)
    sll	$v1,$v1,0x2
    sltu	$s7,$zero,$s7
    addu	$s6,$s6,$v1
    addu	$a1,$a1,$s7
    addiu	$s6,$s6,48
    subu	$v0,$v0,$a1
    li	$at,4
    addiu	$v0,$v0,-2
    li	$a1,4
    slt	$at,$at,$v0
    li	$v1,1
    movn	$v0,$a1,$at
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a1,$a1,$v0
    subu	$at,$at,$v1
    addiu	$a2,$v0,-1
    sll	$v1,$at,0x14
    sd	$v0,1688($sp)
    sll	$at,$at,0x10
    nor	$v1,$v1,$zero
    sw	$v0,6096($s3)
    nor	$at,$at,$zero
    and	$s0,$s0,$v1
    sd	$a1,1776($sp)
    beq	$a2,$a5,.L0da08068
    and	$s1,$s1,$at
    ld	$at,1688($sp)
    andi	$a3,$at,0x3
    sll	$a1,$a4,0x2
    sd	$at,1672($sp)
    addu	$a1,$a0,$a1
    beqz	$a3,.L0da07fdc
    sd	$a3,1808($sp)
.L0da07fa4:
    lwc1	$f19,0($s6)
    swc1	$f19,0($a1)
    lwc1	$f18,4($s6)
    ld	$v0,1808($sp)
    swc1	$f18,4($a1)
    addiu	$a2,$a2,-1
    addiu	$v0,$v0,-1
    lwc1	$f17,8($s6)
    addiu	$s6,$s6,12
    addiu	$a1,$a1,12
    sd	$v0,1808($sp)
    addiu	$a4,$a4,3
    bnez	$v0,.L0da07fa4
    swc1	$f17,-4($a1)
.L0da07fdc:
    ld	$v1,1672($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0da08068
    nop
    move	$a0,$s6
.L0da07ff0:
    lwc1	$f5,0($a0)
    swc1	$f5,0($a1)
    lwc1	$f4,4($a0)
    swc1	$f4,4($a1)
    lwc1	$f3,8($a0)
    swc1	$f3,8($a1)
    lwc1	$f2,12($a0)
    swc1	$f2,12($a1)
    lwc1	$f1,16($a0)
    swc1	$f1,16($a1)
    lwc1	$f0,20($a0)
    swc1	$f0,20($a1)
    lwc1	$f31,24($a0)
    swc1	$f31,24($a1)
    lwc1	$f29,28($a0)
    swc1	$f29,28($a1)
    lwc1	$f27,32($a0)
    swc1	$f27,32($a1)
    lwc1	$f25,36($a0)
    swc1	$f25,36($a1)
    lwc1	$f23,40($a0)
    swc1	$f23,40($a1)
    addiu	$a2,$a2,-4
    lwc1	$f21,44($a0)
    addiu	$a0,$a0,48
    addiu	$a1,$a1,48
    addiu	$a4,$a4,12
    bne	$a2,$a5,.L0da07ff0
    swc1	$f21,-4($a1)
    addiu	$a0,$sp,256
.L0da08068:
    ld	$a2,1776($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da080ec
    # Line 477
    sll	$at,$s7,0x2
    ld	$s6,1776($sp)
    # Line 476
    mtc1	$zero,$f4
    andi	$a3,$s6,0x1
    sll	$a1,$a4,0x2
    beqz	$a3,.L0da080ac
    addu	$a1,$a0,$a1
    swc1	$f4,0($a1)
    ld	$a2,1776($sp)
    swc1	$f4,4($a1)
    addiu	$a1,$a1,12
    swc1	$f4,-4($a1)
    addiu	$a4,$a4,3
    addiu	$a2,$a2,-2
.L0da080ac:
    sra	$a3,$s6,0x1
    beqz	$a3,.L0da080e8
    nop
    nop
    nop
.L0da080c0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-2
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da080c0
    addiu	$a4,$a4,6
.L0da080e8:
    # Line 477
    sll	$at,$s7,0x2
.L0da080ec:
    ld	$s6,1832($sp)
    subu	$at,$at,$s7
    sll	$at,$at,0x2
    sltu	$s6,$zero,$s6
    addu	$s5,$s5,$at
    addu	$v0,$s7,$s6
    addiu	$s5,$s5,36
    subu	$v0,$ra,$v0
    li	$ra,4
    addiu	$v0,$v0,-1
    li	$a1,4
    slt	$ra,$ra,$v0
    li	$v1,1
    movn	$v0,$a1,$ra
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a1,$a1,$v0
    subu	$at,$at,$v1
    addiu	$ra,$v0,-1
    sll	$v1,$at,0x18
    sd	$v0,1696($sp)
    sll	$at,$at,0x14
    nor	$v1,$v1,$zero
    sw	$v0,6100($s3)
    nor	$at,$at,$zero
    and	$s0,$s0,$v1
    sd	$a1,1768($sp)
    beq	$ra,$a5,.L0da08238
    and	$s1,$s1,$at
    ld	$s7,1696($sp)
    andi	$a2,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$a2,.L0da081a4
    addu	$a1,$a0,$a1
.L0da08174:
    lwc1	$f8,0($s5)
    swc1	$f8,0($a1)
    lwc1	$f7,4($s5)
    swc1	$f7,4($a1)
    addiu	$ra,$ra,-1
    addiu	$a2,$a2,-1
    lwc1	$f6,8($s5)
    addiu	$s5,$s5,12
    addiu	$a1,$a1,12
    addiu	$a4,$a4,3
    bnez	$a2,.L0da08174
    swc1	$f6,-4($a1)
.L0da081a4:
    sra	$a2,$s7,0x2
    beqz	$a2,.L0da08238
    nop
    move	$a0,$ra
    move	$a2,$s5
    nop
    nop
.L0da081c0:
    lwc1	$f21,0($a2)
    swc1	$f21,0($a1)
    lwc1	$f19,4($a2)
    swc1	$f19,4($a1)
    lwc1	$f18,8($a2)
    swc1	$f18,8($a1)
    lwc1	$f17,12($a2)
    swc1	$f17,12($a1)
    lwc1	$f16,16($a2)
    swc1	$f16,16($a1)
    lwc1	$f15,20($a2)
    swc1	$f15,20($a1)
    lwc1	$f14,24($a2)
    swc1	$f14,24($a1)
    lwc1	$f13,28($a2)
    swc1	$f13,28($a1)
    lwc1	$f12,32($a2)
    swc1	$f12,32($a1)
    lwc1	$f11,36($a2)
    swc1	$f11,36($a1)
    lwc1	$f10,40($a2)
    swc1	$f10,40($a1)
    addiu	$a0,$a0,-4
    lwc1	$f9,44($a2)
    addiu	$a2,$a2,48
    addiu	$a1,$a1,48
    addiu	$a4,$a4,12
    bne	$a0,$a5,.L0da081c0
    swc1	$f9,-4($a1)
    addiu	$a0,$sp,256
.L0da08238:
    ld	$a2,1768($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da082bc
    # Line 478
    ld	$at,1712($sp)
    ld	$ra,1768($sp)
    # Line 477
    mtc1	$zero,$f4
    andi	$a3,$ra,0x1
    sll	$a1,$a4,0x2
    beqz	$a3,.L0da0827c
    addu	$a1,$a0,$a1
    swc1	$f4,0($a1)
    ld	$a2,1768($sp)
    swc1	$f4,4($a1)
    addiu	$a1,$a1,12
    swc1	$f4,-4($a1)
    addiu	$a4,$a4,3
    addiu	$a2,$a2,-2
.L0da0827c:
    sra	$a3,$ra,0x1
    beqz	$a3,.L0da082b8
    nop
    nop
    nop
.L0da08290:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-2
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da08290
    addiu	$a4,$a4,6
.L0da082b8:
    # Line 478
    ld	$at,1712($sp)
.L0da082bc:
    ld	$ra,1840($sp)
    ld	$s7,1912($sp)
    addu	$s8,$at,$s8
    addu	$ra,$ra,$s6
    addiu	$s8,$s8,48
    subu	$s7,$s7,$ra
    li	$ra,4
    addiu	$s7,$s7,-2
    li	$s5,4
    slt	$ra,$ra,$s7
    li	$at,1
    movn	$s7,$s5,$ra
    li	$ra,16
    sllv	$at,$at,$s7
    subu	$s5,$s5,$s7
    subu	$ra,$ra,$at
    addiu	$a2,$s7,-1
    sll	$at,$ra,0x10
    sll	$ra,$ra,0xc
    nor	$at,$at,$zero
    nor	$ra,$ra,$zero
    and	$s0,$s0,$at
    sw	$s7,6092($s3)
    beq	$a2,$a5,.L0da083e8
    and	$s1,$s1,$ra
    andi	$ra,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$ra,.L0da08360
    addu	$a1,$a0,$a1
.L0da08330:
    lwc1	$f27,0($s8)
    swc1	$f27,0($a1)
    lwc1	$f25,4($s8)
    swc1	$f25,4($a1)
    addiu	$a2,$a2,-1
    addiu	$ra,$ra,-1
    lwc1	$f23,8($s8)
    addiu	$s8,$s8,12
    addiu	$a1,$a1,12
    addiu	$a4,$a4,3
    bnez	$ra,.L0da08330
    swc1	$f23,-4($a1)
.L0da08360:
    sra	$a3,$s7,0x2
    beqz	$a3,.L0da083e8
    nop
    move	$a0,$s8
.L0da08370:
    lwc1	$f9,0($a0)
    swc1	$f9,0($a1)
    lwc1	$f8,4($a0)
    swc1	$f8,4($a1)
    lwc1	$f7,8($a0)
    swc1	$f7,8($a1)
    lwc1	$f6,12($a0)
    swc1	$f6,12($a1)
    lwc1	$f5,16($a0)
    swc1	$f5,16($a1)
    lwc1	$f4,20($a0)
    swc1	$f4,20($a1)
    lwc1	$f3,24($a0)
    swc1	$f3,24($a1)
    lwc1	$f2,28($a0)
    swc1	$f2,28($a1)
    lwc1	$f1,32($a0)
    swc1	$f1,32($a1)
    lwc1	$f0,36($a0)
    swc1	$f0,36($a1)
    lwc1	$f31,40($a0)
    swc1	$f31,40($a1)
    addiu	$a2,$a2,-4
    lwc1	$f29,44($a0)
    addiu	$a0,$a0,48
    addiu	$a1,$a1,48
    addiu	$a4,$a4,12
    bne	$a2,$a5,.L0da08370
    swc1	$f29,-4($a1)
    addiu	$a0,$sp,256
.L0da083e8:
    addiu	$a2,$s5,-1
    beq	$a2,$a5,.L0da071a0
    mtc1	$zero,$f4
    andi	$a3,$s5,0x1
    sll	$a1,$a4,0x2
    beqz	$a3,.L0da08418
    addu	$a1,$a0,$a1
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$s5,-2
    swc1	$f4,8($a1)
    addiu	$a1,$a1,12
.L0da08418:
    sra	$a4,$s5,0x1
    beqz	$a4,.L0da071a0
    nop
    nop
    nop
    nop
.L0da08430:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-2
    swc1	$f4,16($a1)
    swc1	$f4,20($a1)
    bne	$a2,$a5,.L0da08430
    addiu	$a1,$a1,24
    b	.L0da071a0
    nop
.L0da0845c:
    # Line 481
    sw	$a6,6084($s3)
    # Line 483
    lwc1	$f31,4($s7)
    swc1	$f31,256($sp)
    lwc1	$f29,8($s7)
    swc1	$f29,260($sp)
    # Line 484
    lwc1	$f27,12($s7)
    swc1	$f27,264($sp)
    lw	$a0,0($s7)
    mtc1	$a0,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,268($sp)
    # Line 485
    lwc1	$f23,4($s8)
    swc1	$f23,272($sp)
    lwc1	$f21,8($s8)
    swc1	$f21,276($sp)
    # Line 486
    lwc1	$f19,12($s8)
    swc1	$f19,280($sp)
    lw	$v1,0($s8)
    mtc1	$v1,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,284($sp)
    # Line 487
    lwc1	$f17,4($s6)
    swc1	$f17,288($sp)
    lwc1	$f16,8($s6)
    swc1	$f16,292($sp)
    # Line 488
    lwc1	$f15,12($s6)
    swc1	$f15,296($sp)
    lw	$v0,0($s6)
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,300($sp)
    # Line 489
    lwc1	$f13,4($s5)
    swc1	$f13,304($sp)
    lwc1	$f12,8($s5)
    swc1	$f12,308($sp)
    # Line 490
    lwc1	$f11,12($s5)
    swc1	$f11,312($sp)
    lw	$at,0($s5)
    mtc1	$at,$f10
    # Line 492
    ld	$a5,1904($sp)
    # Line 490
    cvt.s.w	$f10,$f10
    # Line 492
    slti	$a5,$a5,3
    # Line 481
    sw	$a6,1408($sp)
    # Line 492
    bnez	$a5,.L0da0858c
    # Line 490
    swc1	$f10,316($sp)
    # Line 492
    ld	$a0,1912($sp)
    sll	$a0,$a0,0x4
    lw	$a2,52($s7)
    addu	$a0,$s8,$a0
    lw	$a1,20($a0)
    bne	$a1,$a2,.L0da08590
    mtc1	$zero,$f4
    lw	$a1,24($a0)
    lw	$a2,56($s7)
    bne	$a1,$a2,.L0da08590
    mtc1	$zero,$f4
    lw	$a3,28($a0)
    lw	$a4,60($s7)
    bne	$a3,$a4,.L0da08590
    mtc1	$zero,$f4
    lwc1	$f3,52($s7)
    swc1	$f3,320($sp)
    lwc1	$f2,56($s7)
    swc1	$f2,324($sp)
    lwc1	$f1,60($s7)
    swc1	$f1,328($sp)
    lw	$at,48($s7)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    li	$a6,1
    lui	$s1,0xff
    lui	$s0,0x1fff
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
    b	.L0da085b4
    swc1	$f0,332($sp)
.L0da0858c:
    mtc1	$zero,$f4
.L0da08590:
    swc1	$f4,332($sp)
    move	$a6,$zero
    swc1	$f4,328($sp)
    lui	$s0,0x1fff
    lui	$s1,0xff
    swc1	$f4,324($sp)
    ori	$s1,$s1,0xffef
    ori	$s0,$s0,0xffcf
    swc1	$f4,320($sp)
.L0da085b4:
    # Line 493
    ld	$at,1864($sp)
    slti	$at,$at,4
    bnez	$at,.L0da08638
    mtc1	$zero,$f9
    ld	$a0,1904($sp)
    sll	$a0,$a0,0x4
    lw	$v1,68($s6)
    addu	$a0,$s7,$a0
    lw	$v0,20($a0)
    bne	$v0,$v1,.L0da08638
    mtc1	$zero,$f9
    lw	$a1,24($a0)
    lw	$a2,72($s6)
    bne	$a1,$a2,.L0da08638
    mtc1	$zero,$f9
    lw	$a3,28($a0)
    lw	$a4,76($s6)
    bne	$a3,$a4,.L0da08638
    mtc1	$zero,$f9
    lwc1	$f8,68($s6)
    swc1	$f8,336($sp)
    lwc1	$f7,72($s6)
    swc1	$f7,340($sp)
    lwc1	$f6,76($s6)
    swc1	$f6,344($sp)
    lw	$a3,64($s6)
    mtc1	$a3,$f5
    cvt.s.w	$f5,$f5
    li	$a2,1
    sb	$a2,1412($sp)
    b	.L0da08660
    swc1	$f5,348($sp)
    mtc1	$zero,$f9
.L0da08638:
    sb	$zero,1412($sp)
    swc1	$f9,348($sp)
    move	$a2,$zero
    swc1	$f9,344($sp)
    li	$a5,-193
    li	$a4,-33
    swc1	$f9,340($sp)
    and	$s0,$s0,$a5
    and	$s1,$s1,$a4
    swc1	$f9,336($sp)
.L0da08660:
    # Line 494
    slti	$at,$ra,3
    bnez	$at,.L0da086dc
    ld	$a0,1864($sp)
    sll	$a0,$a0,0x4
    lw	$v1,52($s5)
    addu	$a0,$s6,$a0
    lw	$v0,20($a0)
    bne	$v0,$v1,.L0da086dc
    nop
    lw	$a1,24($a0)
    lw	$a3,56($s5)
    bne	$a1,$a3,.L0da086dc
    nop
    lw	$a4,28($a0)
    lw	$a5,60($s5)
    bne	$a4,$a5,.L0da086dc
    nop
    lwc1	$f13,52($s5)
    swc1	$f13,352($sp)
    lwc1	$f12,56($s5)
    swc1	$f12,356($sp)
    lwc1	$f11,60($s5)
    swc1	$f11,360($sp)
    lw	$v0,48($s5)
    mtc1	$v0,$f10
    cvt.s.w	$f10,$f10
    li	$at,1
    sd	$at,1824($sp)
    sb	$at,1413($sp)
    b	.L0da08708
    swc1	$f10,364($sp)
.L0da086dc:
    sb	$zero,1413($sp)
    mtc1	$zero,$f14
    sd	$zero,1824($sp)
    swc1	$f14,364($sp)
    swc1	$f14,360($sp)
    li	$v1,-65
    li	$a0,-769
    swc1	$f14,356($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f14,352($sp)
.L0da08708:
    # Line 495
    ld	$a1,1912($sp)
    slti	$a1,$a1,4
    bnez	$a1,.L0da08794
    sll	$a0,$ra,0x4
    addu	$a0,$s5,$a0
    lw	$a3,20($a0)
    lw	$a4,68($s8)
    bne	$a3,$a4,.L0da08794
    nop
    lw	$a1,24($a0)
    lw	$a3,72($s8)
    bne	$a1,$a3,.L0da08794
    nop
    lw	$a4,28($a0)
    lw	$a5,76($s8)
    bne	$a4,$a5,.L0da08794
    nop
    lwc1	$f18,68($s8)
    addiu	$a0,$sp,256
    swc1	$f18,112($a0)
    lwc1	$f17,72($s8)
    swc1	$f17,116($a0)
    lwc1	$f16,76($s8)
    swc1	$f16,120($a0)
    lw	$v0,64($s8)
    mtc1	$v0,$f15
    li	$at,1
    sd	$at,1832($sp)
    cvt.s.w	$f15,$f15
    sb	$at,1414($sp)
    li	$a4,32
    sd	$a2,1816($sp)
    addiu	$a1,$a0,128
    b	.L0da087d0
    swc1	$f15,124($a0)
.L0da08794:
    sb	$zero,1414($sp)
    sd	$zero,1832($sp)
    mtc1	$zero,$f19
    sd	$a2,1816($sp)
    addiu	$a0,$sp,256
    swc1	$f19,124($a0)
    li	$a4,32
    li	$a1,-3073
    swc1	$f19,120($a0)
    li	$v1,-129
    and	$s0,$s0,$a1
    swc1	$f19,116($a0)
    addiu	$a1,$a0,128
    and	$s1,$s1,$v1
    swc1	$f19,112($a0)
.L0da087d0:
    # Line 497
    ld	$v0,1816($sp)
    sltu	$a2,$zero,$a6
    sd	$a2,1840($sp)
    li	$a3,16
    li	$a5,1
    ld	$at,1904($sp)
    sltu	$v0,$zero,$v0
    sd	$v0,1848($sp)
    addu	$v0,$a2,$v0
    sll	$a2,$a2,0x4
    addu	$s7,$a2,$s7
    subu	$at,$at,$v0
    li	$v1,4
    addiu	$at,$at,-1
    li	$v0,4
    slt	$v1,$v1,$at
    addiu	$s7,$s7,48
    movn	$at,$v0,$v1
    sd	$a2,1632($sp)
    addiu	$a2,$at,-1
    sllv	$a5,$a5,$at
    subu	$v0,$v0,$at
    subu	$a3,$a3,$a5
    sd	$v0,1640($sp)
    li	$a5,-1
    sll	$v0,$a3,0xc
    sll	$a3,$a3,0x8
    nor	$v0,$v0,$zero
    sd	$at,1608($sp)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sw	$at,6088($s3)
    beq	$a2,$a5,.L0da08988
    and	$s1,$s1,$a3
    ld	$v1,1608($sp)
    sd	$v1,1584($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0da088b4
    sd	$v1,1752($sp)
.L0da0886c:
    lwc1	$f27,4($s7)
    swc1	$f27,0($a1)
    lwc1	$f25,8($s7)
    swc1	$f25,4($a1)
    lwc1	$f23,12($s7)
    swc1	$f23,8($a1)
    lw	$v0,0($s7)
    mtc1	$v0,$f21
    ld	$at,1752($sp)
    cvt.s.w	$f21,$f21
    addiu	$a2,$a2,-1
    addiu	$at,$at,-1
    addiu	$s7,$s7,16
    addiu	$a1,$a1,16
    sd	$at,1752($sp)
    addiu	$a4,$a4,4
    bnez	$at,.L0da0886c
    swc1	$f21,-4($a1)
.L0da088b4:
    ld	$v1,1584($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0da08988
    nop
    move	$a0,$s7
    nop
    nop
.L0da088d0:
    lwc1	$f13,4($a0)
    swc1	$f13,0($a1)
    lwc1	$f12,8($a0)
    swc1	$f12,4($a1)
    lwc1	$f11,12($a0)
    swc1	$f11,8($a1)
    lw	$v1,0($a0)
    mtc1	$v1,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,12($a1)
    lwc1	$f9,20($a0)
    swc1	$f9,16($a1)
    lwc1	$f8,24($a0)
    swc1	$f8,20($a1)
    lwc1	$f7,28($a0)
    swc1	$f7,24($a1)
    lw	$v0,16($a0)
    mtc1	$v0,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,28($a1)
    lwc1	$f5,36($a0)
    swc1	$f5,32($a1)
    lwc1	$f4,40($a0)
    swc1	$f4,36($a1)
    lwc1	$f3,44($a0)
    swc1	$f3,40($a1)
    lw	$at,32($a0)
    mtc1	$at,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,44($a1)
    lwc1	$f1,52($a0)
    swc1	$f1,48($a1)
    lwc1	$f0,56($a0)
    swc1	$f0,52($a1)
    lwc1	$f31,60($a0)
    swc1	$f31,56($a1)
    lw	$a3,48($a0)
    mtc1	$a3,$f29
    cvt.s.w	$f29,$f29
    addiu	$a2,$a2,-4
    addiu	$a0,$a0,64
    addiu	$a1,$a1,64
    addiu	$a4,$a4,16
    bne	$a2,$a5,.L0da088d0
    swc1	$f29,-4($a1)
    addiu	$a0,$sp,256
.L0da08988:
    ld	$a2,1640($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da089d4
    # Line 498
    ld	$s7,1824($sp)
    # Line 497
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
    nop
.L0da089b0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,8($a1)
    addiu	$a1,$a1,16
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da089b0
    addiu	$a4,$a4,4
    # Line 498
    ld	$s7,1824($sp)
.L0da089d4:
    ld	$v1,1848($sp)
    li	$a3,16
    ld	$at,1864($sp)
    sltu	$s7,$zero,$s7
    addu	$v0,$v1,$s7
    sll	$v1,$v1,0x4
    addu	$s6,$s6,$v1
    subu	$at,$at,$v0
    li	$v0,4
    addiu	$at,$at,-2
    li	$v1,4
    slt	$v0,$v0,$at
    movn	$at,$v1,$v0
    li	$v0,1
    addiu	$s6,$s6,64
    sllv	$v0,$v0,$at
    subu	$v1,$v1,$at
    subu	$a3,$a3,$v0
    addiu	$a2,$at,-1
    sll	$v0,$a3,0x14
    sd	$at,1600($sp)
    sll	$a3,$a3,0x10
    nor	$v0,$v0,$zero
    sw	$at,6096($s3)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sd	$v1,1624($sp)
    beq	$a2,$a5,.L0da08b78
    and	$s1,$s1,$a3
    ld	$at,1600($sp)
    andi	$a3,$at,0x3
    sll	$a1,$a4,0x2
    sd	$at,1592($sp)
    addu	$a1,$a0,$a1
    beqz	$a3,.L0da08aac
    sd	$a3,1760($sp)
.L0da08a64:
    lwc1	$f17,4($s6)
    swc1	$f17,0($a1)
    lwc1	$f16,8($s6)
    swc1	$f16,4($a1)
    lwc1	$f15,12($s6)
    swc1	$f15,8($a1)
    lw	$v1,0($s6)
    mtc1	$v1,$f14
    ld	$v0,1760($sp)
    cvt.s.w	$f14,$f14
    addiu	$a2,$a2,-1
    addiu	$v0,$v0,-1
    addiu	$s6,$s6,16
    addiu	$a1,$a1,16
    sd	$v0,1760($sp)
    addiu	$a4,$a4,4
    bnez	$v0,.L0da08a64
    swc1	$f14,-4($a1)
.L0da08aac:
    ld	$a3,1592($sp)
    sra	$a3,$a3,0x2
    beqz	$a3,.L0da08b78
    nop
    move	$a0,$s6
.L0da08ac0:
    lwc1	$f7,4($a0)
    swc1	$f7,0($a1)
    lwc1	$f6,8($a0)
    swc1	$f6,4($a1)
    lwc1	$f5,12($a0)
    swc1	$f5,8($a1)
    lw	$a3,0($a0)
    mtc1	$a3,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,12($a1)
    lwc1	$f3,20($a0)
    swc1	$f3,16($a1)
    lwc1	$f2,24($a0)
    swc1	$f2,20($a1)
    lwc1	$f1,28($a0)
    swc1	$f1,24($a1)
    lw	$v1,16($a0)
    mtc1	$v1,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,28($a1)
    lwc1	$f31,36($a0)
    swc1	$f31,32($a1)
    lwc1	$f29,40($a0)
    swc1	$f29,36($a1)
    lwc1	$f27,44($a0)
    swc1	$f27,40($a1)
    lw	$v0,32($a0)
    mtc1	$v0,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,44($a1)
    lwc1	$f23,52($a0)
    swc1	$f23,48($a1)
    lwc1	$f21,56($a0)
    swc1	$f21,52($a1)
    lwc1	$f19,60($a0)
    swc1	$f19,56($a1)
    lw	$at,48($a0)
    mtc1	$at,$f18
    cvt.s.w	$f18,$f18
    addiu	$a2,$a2,-4
    addiu	$a0,$a0,64
    addiu	$a1,$a1,64
    addiu	$a4,$a4,16
    bne	$a2,$a5,.L0da08ac0
    swc1	$f18,-4($a1)
    addiu	$a0,$sp,256
.L0da08b78:
    ld	$a2,1624($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da08bc4
    # Line 499
    ld	$s6,1832($sp)
    # Line 498
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
    nop
.L0da08ba0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,8($a1)
    addiu	$a1,$a1,16
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da08ba0
    addiu	$a4,$a4,4
    # Line 499
    ld	$s6,1832($sp)
.L0da08bc4:
    sll	$at,$s7,0x4
    sltu	$s6,$zero,$s6
    addu	$s5,$s5,$at
    addu	$a3,$s7,$s6
    addiu	$s5,$s5,48
    subu	$a3,$ra,$a3
    li	$ra,4
    addiu	$a3,$a3,-1
    li	$at,4
    slt	$ra,$ra,$a3
    movn	$a3,$at,$ra
    li	$ra,1
    li	$a2,16
    sllv	$ra,$ra,$a3
    subu	$at,$at,$a3
    subu	$a2,$a2,$ra
    sd	$at,1648($sp)
    addiu	$ra,$a3,-1
    sll	$at,$a2,0x18
    sll	$a2,$a2,0x14
    nor	$at,$at,$zero
    sd	$a3,1616($sp)
    nor	$a2,$a2,$zero
    and	$s0,$s0,$at
    sw	$a3,6100($s3)
    beq	$ra,$a5,.L0da08d58
    and	$s1,$s1,$a2
    ld	$s7,1616($sp)
    andi	$a2,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$a2,.L0da08c84
    addu	$a1,$a0,$a1
.L0da08c44:
    lwc1	$f11,4($s5)
    swc1	$f11,0($a1)
    lwc1	$f10,8($s5)
    swc1	$f10,4($a1)
    lwc1	$f9,12($s5)
    swc1	$f9,8($a1)
    lw	$a3,0($s5)
    mtc1	$a3,$f8
    cvt.s.w	$f8,$f8
    addiu	$ra,$ra,-1
    addiu	$a2,$a2,-1
    addiu	$s5,$s5,16
    addiu	$a1,$a1,16
    addiu	$a4,$a4,4
    bnez	$a2,.L0da08c44
    swc1	$f8,-4($a1)
.L0da08c84:
    sra	$at,$s7,0x2
    beqz	$at,.L0da08d58
    nop
    move	$a0,$ra
    move	$a2,$s5
    nop
    nop
.L0da08ca0:
    lwc1	$f1,4($a2)
    swc1	$f1,0($a1)
    lwc1	$f0,8($a2)
    swc1	$f0,4($a1)
    lwc1	$f31,12($a2)
    swc1	$f31,8($a1)
    lw	$ra,0($a2)
    mtc1	$ra,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,12($a1)
    lwc1	$f27,20($a2)
    swc1	$f27,16($a1)
    lwc1	$f25,24($a2)
    swc1	$f25,20($a1)
    lwc1	$f23,28($a2)
    swc1	$f23,24($a1)
    lw	$a3,16($a2)
    mtc1	$a3,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,28($a1)
    lwc1	$f19,36($a2)
    swc1	$f19,32($a1)
    lwc1	$f18,40($a2)
    swc1	$f18,36($a1)
    lwc1	$f17,44($a2)
    swc1	$f17,40($a1)
    lw	$v1,32($a2)
    mtc1	$v1,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,44($a1)
    lwc1	$f15,52($a2)
    swc1	$f15,48($a1)
    lwc1	$f14,56($a2)
    swc1	$f14,52($a1)
    lwc1	$f13,60($a2)
    swc1	$f13,56($a1)
    lw	$v0,48($a2)
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    addiu	$a0,$a0,-4
    addiu	$a2,$a2,64
    addiu	$a1,$a1,64
    addiu	$a4,$a4,16
    bne	$a0,$a5,.L0da08ca0
    swc1	$f12,-4($a1)
    addiu	$a0,$sp,256
.L0da08d58:
    ld	$a2,1648($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da08da4
    # Line 500
    ld	$at,1632($sp)
    # Line 499
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
    nop
.L0da08d80:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,8($a1)
    addiu	$a1,$a1,16
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da08d80
    addiu	$a4,$a4,4
    # Line 500
    ld	$at,1632($sp)
.L0da08da4:
    ld	$ra,1840($sp)
    ld	$s7,1912($sp)
    addu	$s8,$at,$s8
    addu	$ra,$ra,$s6
    addiu	$s8,$s8,64
    subu	$s7,$s7,$ra
    li	$ra,4
    addiu	$s7,$s7,-2
    li	$s5,4
    slt	$ra,$ra,$s7
    movn	$s7,$s5,$ra
    li	$ra,1
    li	$a3,16
    sllv	$ra,$ra,$s7
    subu	$s5,$s5,$s7
    subu	$a3,$a3,$ra
    addiu	$a2,$s7,-1
    sll	$ra,$a3,0x10
    sll	$a3,$a3,0xc
    nor	$ra,$ra,$zero
    nor	$a3,$a3,$zero
    and	$s0,$s0,$ra
    sw	$s7,6092($s3)
    beq	$a2,$a5,.L0da08f28
    and	$s1,$s1,$a3
    andi	$ra,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$ra,.L0da08e58
    addu	$a1,$a0,$a1
.L0da08e18:
    lwc1	$f5,4($s8)
    swc1	$f5,0($a1)
    lwc1	$f4,8($s8)
    swc1	$f4,4($a1)
    lwc1	$f3,12($s8)
    swc1	$f3,8($a1)
    lw	$a3,0($s8)
    mtc1	$a3,$f2
    cvt.s.w	$f2,$f2
    addiu	$a2,$a2,-1
    addiu	$ra,$ra,-1
    addiu	$s8,$s8,16
    addiu	$a1,$a1,16
    addiu	$a4,$a4,4
    bnez	$ra,.L0da08e18
    swc1	$f2,-4($a1)
.L0da08e58:
    sra	$ra,$s7,0x2
    beqz	$ra,.L0da08f28
    nop
    move	$a0,$s8
    nop
    nop
.L0da08e70:
    lwc1	$f23,4($a0)
    swc1	$f23,0($a1)
    lwc1	$f21,8($a0)
    swc1	$f21,4($a1)
    lwc1	$f19,12($a0)
    swc1	$f19,8($a1)
    lw	$a3,0($a0)
    mtc1	$a3,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,12($a1)
    lwc1	$f17,20($a0)
    swc1	$f17,16($a1)
    lwc1	$f16,24($a0)
    swc1	$f16,20($a1)
    lwc1	$f15,28($a0)
    swc1	$f15,24($a1)
    lw	$v1,16($a0)
    mtc1	$v1,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,28($a1)
    lwc1	$f13,36($a0)
    swc1	$f13,32($a1)
    lwc1	$f12,40($a0)
    swc1	$f12,36($a1)
    lwc1	$f11,44($a0)
    swc1	$f11,40($a1)
    lw	$v0,32($a0)
    mtc1	$v0,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,44($a1)
    lwc1	$f9,52($a0)
    swc1	$f9,48($a1)
    lwc1	$f8,56($a0)
    swc1	$f8,52($a1)
    lwc1	$f7,60($a0)
    swc1	$f7,56($a1)
    lw	$at,48($a0)
    mtc1	$at,$f6
    cvt.s.w	$f6,$f6
    addiu	$a2,$a2,-4
    addiu	$a0,$a0,64
    addiu	$a1,$a1,64
    addiu	$a4,$a4,16
    bne	$a2,$a5,.L0da08e70
    swc1	$f6,-4($a1)
    addiu	$a0,$sp,256
.L0da08f28:
    addiu	$a2,$s5,-1
    beq	$a2,$a5,.L0da071a0
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
.L0da08f40:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    bne	$a2,$a5,.L0da08f40
    addiu	$a1,$a1,16
    b	.L0da071a0
    nop
.L0da08f64:
    # Line 503
    sw	$a3,6084($s3)
    # Line 505
    lwc1	$f15,8($s7)
    swc1	$f15,256($sp)
    lwc1	$f14,12($s7)
    swc1	$f14,260($sp)
    # Line 506
    lwc1	$f13,16($s7)
    swc1	$f13,264($sp)
    lwc1	$f12,0($s7)
    swc1	$f12,268($sp)
    # Line 507
    lwc1	$f11,4($s7)
    swc1	$f11,272($sp)
    # Line 508
    lwc1	$f10,8($s8)
    swc1	$f10,276($sp)
    lwc1	$f9,12($s8)
    swc1	$f9,280($sp)
    # Line 509
    lwc1	$f8,16($s8)
    swc1	$f8,284($sp)
    lwc1	$f7,0($s8)
    swc1	$f7,288($sp)
    # Line 510
    lwc1	$f6,4($s8)
    swc1	$f6,292($sp)
    # Line 511
    lwc1	$f5,8($s6)
    swc1	$f5,296($sp)
    lwc1	$f4,12($s6)
    swc1	$f4,300($sp)
    # Line 512
    lwc1	$f3,16($s6)
    swc1	$f3,304($sp)
    lwc1	$f2,0($s6)
    swc1	$f2,308($sp)
    # Line 513
    lwc1	$f1,4($s6)
    swc1	$f1,312($sp)
    # Line 514
    lwc1	$f0,8($s5)
    swc1	$f0,316($sp)
    lwc1	$f31,12($s5)
    swc1	$f31,320($sp)
    # Line 515
    lwc1	$f29,16($s5)
    swc1	$f29,324($sp)
    lwc1	$f27,0($s5)
    # Line 518
    ld	$a2,1904($sp)
    # Line 515
    swc1	$f27,328($sp)
    # Line 518
    slti	$a2,$a2,3
    # Line 516
    lwc1	$f25,4($s5)
    # Line 503
    sw	$a3,1408($sp)
    # Line 518
    bnez	$a2,.L0da0909c
    # Line 516
    swc1	$f25,332($sp)
    # Line 518
    ld	$a1,1912($sp)
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$a4,68($s7)
    addu	$a0,$s8,$a0
    lw	$a3,28($a0)
    bne	$a3,$a4,.L0da090a0
    mtc1	$zero,$f23
    lw	$a2,32($a0)
    lw	$a3,72($s7)
    bne	$a2,$a3,.L0da090a0
    mtc1	$zero,$f23
    lw	$a4,36($a0)
    lw	$a5,76($s7)
    bne	$a4,$a5,.L0da090a0
    mtc1	$zero,$f23
    lwc1	$f21,68($s7)
    swc1	$f21,336($sp)
    lwc1	$f19,72($s7)
    swc1	$f19,340($sp)
    lwc1	$f18,76($s7)
    swc1	$f18,344($sp)
    lwc1	$f17,60($s7)
    swc1	$f17,348($sp)
    li	$a6,1
    lui	$s1,0xff
    lwc1	$f16,64($s7)
    lui	$s0,0x1fff
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
    b	.L0da090c8
    swc1	$f16,352($sp)
.L0da0909c:
    mtc1	$zero,$f23
.L0da090a0:
    swc1	$f23,352($sp)
    swc1	$f23,348($sp)
    move	$a6,$zero
    swc1	$f23,344($sp)
    lui	$s0,0x1fff
    lui	$s1,0xff
    swc1	$f23,340($sp)
    ori	$s1,$s1,0xffef
    ori	$s0,$s0,0xffcf
    swc1	$f23,336($sp)
.L0da090c8:
    # Line 519
    ld	$at,1864($sp)
    slti	$at,$at,4
    bnez	$at,.L0da09154
    mtc1	$zero,$f1
    ld	$a1,1904($sp)
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v1,88($s6)
    addu	$a0,$s7,$a0
    lw	$v0,28($a0)
    bne	$v0,$v1,.L0da09154
    mtc1	$zero,$f1
    lw	$a2,32($a0)
    lw	$a3,92($s6)
    bne	$a2,$a3,.L0da09154
    mtc1	$zero,$f1
    lw	$a4,36($a0)
    lw	$a5,96($s6)
    bne	$a4,$a5,.L0da09154
    mtc1	$zero,$f1
    lwc1	$f0,88($s6)
    swc1	$f0,356($sp)
    lwc1	$f31,92($s6)
    swc1	$f31,360($sp)
    lwc1	$f29,96($s6)
    swc1	$f29,364($sp)
    lwc1	$f27,80($s6)
    swc1	$f27,368($sp)
    lwc1	$f25,84($s6)
    li	$a2,1
    sb	$a2,1412($sp)
    b	.L0da09180
    swc1	$f25,372($sp)
    mtc1	$zero,$f1
.L0da09154:
    sb	$zero,1412($sp)
    swc1	$f1,372($sp)
    swc1	$f1,368($sp)
    move	$a2,$zero
    swc1	$f1,364($sp)
    li	$a4,-193
    li	$a3,-33
    swc1	$f1,360($sp)
    and	$s0,$s0,$a4
    and	$s1,$s1,$a3
    swc1	$f1,356($sp)
.L0da09180:
    # Line 520
    slti	$a5,$ra,3
    bnez	$a5,.L0da09204
    ld	$a1,1864($sp)
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v0,68($s5)
    addu	$a0,$s6,$a0
    lw	$at,28($a0)
    bne	$at,$v0,.L0da09204
    nop
    lw	$a3,32($a0)
    lw	$a4,72($s5)
    bne	$a3,$a4,.L0da09204
    nop
    lw	$a5,36($a0)
    lw	$at,76($s5)
    bne	$a5,$at,.L0da09204
    nop
    lwc1	$f6,68($s5)
    swc1	$f6,376($sp)
    lwc1	$f5,72($s5)
    swc1	$f5,380($sp)
    lwc1	$f4,76($s5)
    swc1	$f4,384($sp)
    lwc1	$f3,60($s5)
    li	$v0,1
    sd	$v0,1824($sp)
    swc1	$f3,388($sp)
    lwc1	$f2,64($s5)
    sb	$v0,1413($sp)
    b	.L0da09234
    swc1	$f2,392($sp)
.L0da09204:
    sb	$zero,1413($sp)
    mtc1	$zero,$f7
    sd	$zero,1824($sp)
    swc1	$f7,392($sp)
    swc1	$f7,388($sp)
    swc1	$f7,384($sp)
    li	$v1,-65
    li	$a0,-769
    swc1	$f7,380($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f7,376($sp)
.L0da09234:
    # Line 521
    ld	$a1,1912($sp)
    slti	$a1,$a1,4
    bnez	$a1,.L0da092c8
    sll	$a0,$ra,0x2
    addu	$a0,$a0,$ra
    sll	$a0,$a0,0x2
    addu	$a0,$s5,$a0
    lw	$a3,28($a0)
    lw	$a4,88($s8)
    bne	$a3,$a4,.L0da092c8
    nop
    lw	$a1,32($a0)
    lw	$a3,92($s8)
    bne	$a1,$a3,.L0da092c8
    nop
    lw	$a4,36($a0)
    lw	$a5,96($s8)
    bne	$a4,$a5,.L0da092c8
    nop
    lwc1	$f12,88($s8)
    addiu	$a0,$sp,256
    swc1	$f12,140($a0)
    lwc1	$f11,92($s8)
    swc1	$f11,144($a0)
    lwc1	$f10,96($s8)
    li	$at,1
    sd	$at,1832($sp)
    swc1	$f10,148($a0)
    lwc1	$f9,80($s8)
    sb	$at,1414($sp)
    swc1	$f9,152($a0)
    lwc1	$f8,84($s8)
    li	$a4,40
    sd	$a2,1816($sp)
    addiu	$a1,$a0,160
    b	.L0da09308
    swc1	$f8,156($a0)
.L0da092c8:
    sb	$zero,1414($sp)
    sd	$zero,1832($sp)
    mtc1	$zero,$f13
    sd	$a2,1816($sp)
    addiu	$a0,$sp,256
    swc1	$f13,156($a0)
    swc1	$f13,152($a0)
    li	$a4,40
    li	$v1,-3073
    swc1	$f13,148($a0)
    li	$v0,-129
    and	$s0,$s0,$v1
    swc1	$f13,144($a0)
    addiu	$a1,$a0,160
    and	$s1,$s1,$v0
    swc1	$f13,140($a0)
.L0da09308:
    # Line 523
    sltu	$a3,$zero,$a6
    sll	$a2,$a3,0x2
    ld	$v0,1816($sp)
    li	$a5,1
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    ld	$at,1904($sp)
    sltu	$v0,$zero,$v0
    addu	$s7,$a2,$s7
    sd	$v0,1848($sp)
    addu	$v0,$a3,$v0
    addiu	$s7,$s7,60
    subu	$at,$at,$v0
    li	$v1,4
    addiu	$at,$at,-1
    li	$v0,4
    slt	$v1,$v1,$at
    sd	$a3,1840($sp)
    li	$a3,16
    movn	$at,$v0,$v1
    sd	$a2,1568($sp)
    addiu	$a2,$at,-1
    sllv	$a5,$a5,$at
    subu	$v0,$v0,$at
    subu	$a3,$a3,$a5
    sd	$v0,1552($sp)
    li	$a5,-1
    sll	$v0,$a3,0xc
    sll	$a3,$a3,0x8
    nor	$v0,$v0,$zero
    sd	$at,1528($sp)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sw	$at,6088($s3)
    beq	$a2,$a5,.L0da094c4
    and	$s1,$s1,$a3
    ld	$v1,1528($sp)
    sd	$v1,1520($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0da093f4
    sd	$v1,1744($sp)
.L0da093ac:
    lwc1	$f18,8($s7)
    swc1	$f18,0($a1)
    lwc1	$f17,12($s7)
    swc1	$f17,4($a1)
    lwc1	$f16,16($s7)
    swc1	$f16,8($a1)
    lwc1	$f15,0($s7)
    ld	$at,1744($sp)
    swc1	$f15,12($a1)
    addiu	$a2,$a2,-1
    addiu	$at,$at,-1
    lwc1	$f14,4($s7)
    addiu	$s7,$s7,20
    addiu	$a1,$a1,20
    sd	$at,1744($sp)
    addiu	$a4,$a4,5
    bnez	$at,.L0da093ac
    swc1	$f14,-4($a1)
.L0da093f4:
    ld	$v0,1520($sp)
    sra	$v0,$v0,0x2
    beqz	$v0,.L0da094c4
    nop
    nop
    nop
    nop
.L0da09410:
    lwc1	$f12,8($s7)
    swc1	$f12,0($a1)
    lwc1	$f11,12($s7)
    swc1	$f11,4($a1)
    lwc1	$f10,16($s7)
    swc1	$f10,8($a1)
    lwc1	$f9,0($s7)
    swc1	$f9,12($a1)
    lwc1	$f8,4($s7)
    swc1	$f8,16($a1)
    lwc1	$f7,28($s7)
    swc1	$f7,20($a1)
    lwc1	$f6,32($s7)
    swc1	$f6,24($a1)
    lwc1	$f5,36($s7)
    swc1	$f5,28($a1)
    lwc1	$f4,20($s7)
    swc1	$f4,32($a1)
    lwc1	$f3,24($s7)
    swc1	$f3,36($a1)
    lwc1	$f2,48($s7)
    swc1	$f2,40($a1)
    lwc1	$f1,52($s7)
    swc1	$f1,44($a1)
    lwc1	$f0,56($s7)
    swc1	$f0,48($a1)
    lwc1	$f31,40($s7)
    swc1	$f31,52($a1)
    lwc1	$f29,44($s7)
    swc1	$f29,56($a1)
    lwc1	$f27,68($s7)
    swc1	$f27,60($a1)
    lwc1	$f25,72($s7)
    swc1	$f25,64($a1)
    lwc1	$f23,76($s7)
    swc1	$f23,68($a1)
    lwc1	$f21,60($s7)
    swc1	$f21,72($a1)
    addiu	$a2,$a2,-4
    lwc1	$f19,64($s7)
    addiu	$s7,$s7,80
    addiu	$a1,$a1,80
    addiu	$a4,$a4,20
    bne	$a2,$a5,.L0da09410
    swc1	$f19,-4($a1)
.L0da094c4:
    ld	$s7,1552($sp)
    addiu	$a2,$s7,-1
    beq	$a2,$a5,.L0da09508
    # Line 524
    ld	$v0,1848($sp)
    # Line 523
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da094e0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,12($a1)
    addiu	$a1,$a1,20
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da094e0
    addiu	$a4,$a4,5
    # Line 524
    ld	$v0,1848($sp)
.L0da09508:
    ld	$s7,1824($sp)
    ld	$at,1864($sp)
    sltu	$s7,$zero,$s7
    sll	$v1,$v0,0x2
    addu	$v1,$v1,$v0
    addu	$v0,$v0,$s7
    li	$a3,16
    subu	$at,$at,$v0
    li	$v0,4
    sll	$v1,$v1,0x2
    addu	$s6,$s6,$v1
    addiu	$at,$at,-2
    li	$v1,4
    slt	$v0,$v0,$at
    movn	$at,$v1,$v0
    li	$v0,1
    addiu	$s6,$s6,80
    sllv	$v0,$v0,$at
    subu	$v1,$v1,$at
    subu	$a3,$a3,$v0
    addiu	$a2,$at,-1
    sll	$v0,$a3,0x14
    sd	$at,1536($sp)
    sll	$a3,$a3,0x10
    nor	$v0,$v0,$zero
    sw	$at,6096($s3)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sd	$v1,1560($sp)
    beq	$a2,$a5,.L0da096b4
    and	$s1,$s1,$a3
    ld	$at,1536($sp)
    andi	$a3,$at,0x3
    sll	$a1,$a4,0x2
    sd	$at,1512($sp)
    addu	$a1,$a0,$a1
    beqz	$a3,.L0da095e8
    sd	$a3,1736($sp)
.L0da095a0:
    lwc1	$f17,8($s6)
    swc1	$f17,0($a1)
    lwc1	$f16,12($s6)
    swc1	$f16,4($a1)
    lwc1	$f15,16($s6)
    swc1	$f15,8($a1)
    lwc1	$f14,0($s6)
    ld	$v0,1736($sp)
    swc1	$f14,12($a1)
    addiu	$a2,$a2,-1
    addiu	$v0,$v0,-1
    lwc1	$f13,4($s6)
    addiu	$s6,$s6,20
    addiu	$a1,$a1,20
    sd	$v0,1736($sp)
    addiu	$a4,$a4,5
    bnez	$v0,.L0da095a0
    swc1	$f13,-4($a1)
.L0da095e8:
    ld	$v1,1512($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0da096b4
    nop
    nop
    nop
.L0da09600:
    lwc1	$f11,8($s6)
    swc1	$f11,0($a1)
    lwc1	$f10,12($s6)
    swc1	$f10,4($a1)
    lwc1	$f9,16($s6)
    swc1	$f9,8($a1)
    lwc1	$f8,0($s6)
    swc1	$f8,12($a1)
    lwc1	$f7,4($s6)
    swc1	$f7,16($a1)
    lwc1	$f6,28($s6)
    swc1	$f6,20($a1)
    lwc1	$f5,32($s6)
    swc1	$f5,24($a1)
    lwc1	$f4,36($s6)
    swc1	$f4,28($a1)
    lwc1	$f3,20($s6)
    swc1	$f3,32($a1)
    lwc1	$f2,24($s6)
    swc1	$f2,36($a1)
    lwc1	$f1,48($s6)
    swc1	$f1,40($a1)
    lwc1	$f0,52($s6)
    swc1	$f0,44($a1)
    lwc1	$f31,56($s6)
    swc1	$f31,48($a1)
    lwc1	$f29,40($s6)
    swc1	$f29,52($a1)
    lwc1	$f27,44($s6)
    swc1	$f27,56($a1)
    lwc1	$f25,68($s6)
    swc1	$f25,60($a1)
    lwc1	$f23,72($s6)
    swc1	$f23,64($a1)
    lwc1	$f21,76($s6)
    swc1	$f21,68($a1)
    lwc1	$f19,60($s6)
    swc1	$f19,72($a1)
    addiu	$a2,$a2,-4
    lwc1	$f18,64($s6)
    addiu	$s6,$s6,80
    addiu	$a1,$a1,80
    addiu	$a4,$a4,20
    bne	$a2,$a5,.L0da09600
    swc1	$f18,-4($a1)
.L0da096b4:
    ld	$a2,1560($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da096f8
    # Line 525
    ld	$s6,1832($sp)
    # Line 524
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da096d0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,12($a1)
    addiu	$a1,$a1,20
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da096d0
    addiu	$a4,$a4,5
    # Line 525
    ld	$s6,1832($sp)
.L0da096f8:
    li	$a2,16
    sll	$at,$s7,0x2
    addu	$at,$at,$s7
    sltu	$s6,$zero,$s6
    sll	$at,$at,0x2
    addu	$a3,$s7,$s6
    addu	$s5,$s5,$at
    subu	$a3,$ra,$a3
    li	$ra,4
    addiu	$a3,$a3,-1
    li	$at,4
    slt	$ra,$ra,$a3
    movn	$a3,$at,$ra
    li	$ra,1
    addiu	$s5,$s5,60
    sllv	$ra,$ra,$a3
    subu	$at,$at,$a3
    subu	$a2,$a2,$ra
    sd	$at,1576($sp)
    addiu	$ra,$a3,-1
    sll	$at,$a2,0x18
    sll	$a2,$a2,0x14
    nor	$at,$at,$zero
    sd	$a3,1544($sp)
    nor	$a2,$a2,$zero
    and	$s0,$s0,$at
    sw	$a3,6100($s3)
    beq	$ra,$a5,.L0da09888
    and	$s1,$s1,$a2
    ld	$s7,1544($sp)
    andi	$a2,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$a2,.L0da097c0
    addu	$a1,$a0,$a1
.L0da09780:
    lwc1	$f16,8($s5)
    swc1	$f16,0($a1)
    lwc1	$f15,12($s5)
    swc1	$f15,4($a1)
    lwc1	$f14,16($s5)
    swc1	$f14,8($a1)
    lwc1	$f13,0($s5)
    swc1	$f13,12($a1)
    addiu	$ra,$ra,-1
    addiu	$a2,$a2,-1
    lwc1	$f12,4($s5)
    addiu	$s5,$s5,20
    addiu	$a1,$a1,20
    addiu	$a4,$a4,5
    bnez	$a2,.L0da09780
    swc1	$f12,-4($a1)
.L0da097c0:
    sra	$a2,$s7,0x2
    beqz	$a2,.L0da09888
    nop
    move	$a0,$ra
.L0da097d0:
    lwc1	$f10,8($s5)
    swc1	$f10,0($a1)
    lwc1	$f9,12($s5)
    swc1	$f9,4($a1)
    lwc1	$f8,16($s5)
    swc1	$f8,8($a1)
    lwc1	$f7,0($s5)
    swc1	$f7,12($a1)
    lwc1	$f6,4($s5)
    swc1	$f6,16($a1)
    lwc1	$f5,28($s5)
    swc1	$f5,20($a1)
    lwc1	$f4,32($s5)
    swc1	$f4,24($a1)
    lwc1	$f3,36($s5)
    swc1	$f3,28($a1)
    lwc1	$f2,20($s5)
    swc1	$f2,32($a1)
    lwc1	$f1,24($s5)
    swc1	$f1,36($a1)
    lwc1	$f0,48($s5)
    swc1	$f0,40($a1)
    lwc1	$f31,52($s5)
    swc1	$f31,44($a1)
    lwc1	$f29,56($s5)
    swc1	$f29,48($a1)
    lwc1	$f27,40($s5)
    swc1	$f27,52($a1)
    lwc1	$f25,44($s5)
    swc1	$f25,56($a1)
    lwc1	$f23,68($s5)
    swc1	$f23,60($a1)
    lwc1	$f21,72($s5)
    swc1	$f21,64($a1)
    lwc1	$f19,76($s5)
    swc1	$f19,68($a1)
    lwc1	$f18,60($s5)
    swc1	$f18,72($a1)
    addiu	$a0,$a0,-4
    lwc1	$f17,64($s5)
    addiu	$s5,$s5,80
    addiu	$a1,$a1,80
    addiu	$a4,$a4,20
    bne	$a0,$a5,.L0da097d0
    swc1	$f17,-4($a1)
    addiu	$a0,$sp,256
.L0da09888:
    ld	$a2,1576($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da098d8
    # Line 526
    ld	$at,1568($sp)
    # Line 525
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
    nop
.L0da098b0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,12($a1)
    addiu	$a1,$a1,20
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da098b0
    addiu	$a4,$a4,5
    # Line 526
    ld	$at,1568($sp)
.L0da098d8:
    ld	$ra,1840($sp)
    ld	$s7,1912($sp)
    addu	$s8,$at,$s8
    addu	$ra,$ra,$s6
    addiu	$s8,$s8,80
    subu	$s7,$s7,$ra
    li	$ra,4
    addiu	$s7,$s7,-2
    li	$s5,4
    slt	$ra,$ra,$s7
    movn	$s7,$s5,$ra
    li	$ra,1
    li	$a3,16
    sllv	$ra,$ra,$s7
    subu	$s5,$s5,$s7
    subu	$a3,$a3,$ra
    addiu	$a2,$s7,-1
    sll	$ra,$a3,0x10
    sll	$a3,$a3,0xc
    nor	$ra,$ra,$zero
    nor	$a3,$a3,$zero
    and	$s0,$s0,$ra
    sw	$s7,6092($s3)
    beq	$a2,$a5,.L0da09a54
    and	$s1,$s1,$a3
    andi	$ra,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$ra,.L0da0998c
    addu	$a1,$a0,$a1
.L0da0994c:
    lwc1	$f15,8($s8)
    swc1	$f15,0($a1)
    lwc1	$f14,12($s8)
    swc1	$f14,4($a1)
    lwc1	$f13,16($s8)
    swc1	$f13,8($a1)
    lwc1	$f12,0($s8)
    swc1	$f12,12($a1)
    addiu	$a2,$a2,-1
    addiu	$ra,$ra,-1
    lwc1	$f11,4($s8)
    addiu	$s8,$s8,20
    addiu	$a1,$a1,20
    addiu	$a4,$a4,5
    bnez	$ra,.L0da0994c
    swc1	$f11,-4($a1)
.L0da0998c:
    sra	$a3,$s7,0x2
    beqz	$a3,.L0da09a54
    nop
    nop
    nop
.L0da099a0:
    lwc1	$f9,8($s8)
    swc1	$f9,0($a1)
    lwc1	$f8,12($s8)
    swc1	$f8,4($a1)
    lwc1	$f7,16($s8)
    swc1	$f7,8($a1)
    lwc1	$f6,0($s8)
    swc1	$f6,12($a1)
    lwc1	$f5,4($s8)
    swc1	$f5,16($a1)
    lwc1	$f4,28($s8)
    swc1	$f4,20($a1)
    lwc1	$f3,32($s8)
    swc1	$f3,24($a1)
    lwc1	$f2,36($s8)
    swc1	$f2,28($a1)
    lwc1	$f1,20($s8)
    swc1	$f1,32($a1)
    lwc1	$f0,24($s8)
    swc1	$f0,36($a1)
    lwc1	$f31,48($s8)
    swc1	$f31,40($a1)
    lwc1	$f29,52($s8)
    swc1	$f29,44($a1)
    lwc1	$f27,56($s8)
    swc1	$f27,48($a1)
    lwc1	$f25,40($s8)
    swc1	$f25,52($a1)
    lwc1	$f23,44($s8)
    swc1	$f23,56($a1)
    lwc1	$f21,68($s8)
    swc1	$f21,60($a1)
    lwc1	$f19,72($s8)
    swc1	$f19,64($a1)
    lwc1	$f18,76($s8)
    swc1	$f18,68($a1)
    lwc1	$f17,60($s8)
    swc1	$f17,72($a1)
    addiu	$a2,$a2,-4
    lwc1	$f16,64($s8)
    addiu	$s8,$s8,80
    addiu	$a1,$a1,80
    addiu	$a4,$a4,20
    bne	$a2,$a5,.L0da099a0
    swc1	$f16,-4($a1)
.L0da09a54:
    addiu	$a2,$s5,-1
    beq	$a2,$a5,.L0da071a0
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
.L0da09a70:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,12($a1)
    swc1	$f4,16($a1)
    bne	$a2,$a5,.L0da09a70
    addiu	$a1,$a1,20
    b	.L0da071a0
    nop
.L0da09a98:
    # Line 529
    sw	$a3,6084($s3)
    # Line 531
    lwc1	$f7,12($s7)
    swc1	$f7,256($sp)
    lwc1	$f6,16($s7)
    swc1	$f6,260($sp)
    # Line 532
    lwc1	$f5,20($s7)
    swc1	$f5,264($sp)
    lw	$at,8($s7)
    mtc1	$at,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,268($sp)
    # Line 533
    lwc1	$f3,0($s7)
    swc1	$f3,272($sp)
    lwc1	$f2,4($s7)
    swc1	$f2,276($sp)
    # Line 535
    lwc1	$f1,12($s8)
    swc1	$f1,280($sp)
    lwc1	$f0,16($s8)
    swc1	$f0,284($sp)
    # Line 536
    lwc1	$f31,20($s8)
    swc1	$f31,288($sp)
    lw	$a6,8($s8)
    mtc1	$a6,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,292($sp)
    # Line 537
    lwc1	$f27,0($s8)
    swc1	$f27,296($sp)
    lwc1	$f25,4($s8)
    swc1	$f25,300($sp)
    # Line 539
    lwc1	$f23,12($s6)
    swc1	$f23,304($sp)
    lwc1	$f21,16($s6)
    swc1	$f21,308($sp)
    # Line 540
    lwc1	$f19,20($s6)
    swc1	$f19,312($sp)
    lw	$a5,8($s6)
    mtc1	$a5,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,316($sp)
    # Line 541
    lwc1	$f17,0($s6)
    swc1	$f17,320($sp)
    lwc1	$f16,4($s6)
    swc1	$f16,324($sp)
    # Line 543
    lwc1	$f15,12($s5)
    swc1	$f15,328($sp)
    lwc1	$f14,16($s5)
    swc1	$f14,332($sp)
    # Line 544
    lwc1	$f13,20($s5)
    swc1	$f13,336($sp)
    lw	$a4,8($s5)
    mtc1	$a4,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,340($sp)
    # Line 545
    lwc1	$f11,0($s5)
    # Line 548
    ld	$a2,1904($sp)
    # Line 545
    swc1	$f11,344($sp)
    # Line 548
    slti	$a2,$a2,3
    # Line 545
    lwc1	$f10,4($s5)
    # Line 529
    sw	$a3,1408($sp)
    # Line 548
    bnez	$a2,.L0da09c20
    # Line 545
    swc1	$f10,348($sp)
    # Line 548
    ld	$a1,1912($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$v1,84($s7)
    addu	$a0,$s8,$a0
    lw	$v0,36($a0)
    bne	$v0,$v1,.L0da09c24
    mtc1	$zero,$f14
    lw	$a2,40($a0)
    lw	$a3,88($s7)
    bne	$a2,$a3,.L0da09c24
    mtc1	$zero,$f14
    lw	$a4,44($a0)
    lw	$a5,92($s7)
    bne	$a4,$a5,.L0da09c24
    mtc1	$zero,$f14
    lwc1	$f13,84($s7)
    swc1	$f13,352($sp)
    lwc1	$f12,88($s7)
    swc1	$f12,356($sp)
    lwc1	$f11,92($s7)
    swc1	$f11,360($sp)
    lw	$at,80($s7)
    mtc1	$at,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,364($sp)
    lwc1	$f9,72($s7)
    swc1	$f9,368($sp)
    li	$a6,1
    lui	$s1,0xff
    lwc1	$f8,76($s7)
    lui	$s0,0x1fff
    ori	$s1,$s1,0xffff
    ori	$s0,$s0,0xffff
    b	.L0da09c50
    swc1	$f8,372($sp)
.L0da09c20:
    mtc1	$zero,$f14
.L0da09c24:
    swc1	$f14,372($sp)
    swc1	$f14,368($sp)
    swc1	$f14,364($sp)
    move	$a6,$zero
    swc1	$f14,360($sp)
    lui	$s0,0x1fff
    lui	$s1,0xff
    swc1	$f14,356($sp)
    ori	$s1,$s1,0xffef
    ori	$s0,$s0,0xffcf
    swc1	$f14,352($sp)
.L0da09c50:
    # Line 549
    ld	$at,1864($sp)
    slti	$at,$at,4
    bnez	$at,.L0da09ce8
    ld	$a1,1904($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$v1,108($s6)
    addu	$a0,$s7,$a0
    lw	$v0,36($a0)
    bne	$v0,$v1,.L0da09ce8
    nop
    lw	$a2,40($a0)
    lw	$a3,112($s6)
    bne	$a2,$a3,.L0da09ce8
    nop
    lw	$a4,44($a0)
    lw	$a5,116($s6)
    bne	$a4,$a5,.L0da09ce8
    nop
    lwc1	$f21,108($s6)
    swc1	$f21,376($sp)
    lwc1	$f19,112($s6)
    swc1	$f19,380($sp)
    lwc1	$f18,116($s6)
    swc1	$f18,384($sp)
    lw	$v0,104($s6)
    mtc1	$v0,$f17
    cvt.s.w	$f17,$f17
    swc1	$f17,388($sp)
    lwc1	$f16,96($s6)
    li	$at,1
    sd	$at,1816($sp)
    swc1	$f16,392($sp)
    lwc1	$f15,100($s6)
    sb	$at,1412($sp)
    b	.L0da09d1c
    swc1	$f15,396($sp)
.L0da09ce8:
    sb	$zero,1412($sp)
    mtc1	$zero,$f23
    sd	$zero,1816($sp)
    swc1	$f23,396($sp)
    swc1	$f23,392($sp)
    swc1	$f23,388($sp)
    swc1	$f23,384($sp)
    li	$v1,-33
    li	$a0,-193
    swc1	$f23,380($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f23,376($sp)
.L0da09d1c:
    # Line 550
    slti	$a1,$ra,3
    bnez	$a1,.L0da09db0
    ld	$a1,1864($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$a3,84($s5)
    addu	$a0,$s6,$a0
    lw	$a2,36($a0)
    bne	$a2,$a3,.L0da09db0
    nop
    lw	$a2,40($a0)
    lw	$a3,88($s5)
    bne	$a2,$a3,.L0da09db0
    nop
    lw	$a4,44($a0)
    lw	$a5,92($s5)
    bne	$a4,$a5,.L0da09db0
    nop
    lwc1	$f1,84($s5)
    swc1	$f1,400($sp)
    lwc1	$f0,88($s5)
    swc1	$f0,404($sp)
    lwc1	$f31,92($s5)
    swc1	$f31,408($sp)
    lw	$v0,80($s5)
    mtc1	$v0,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,412($sp)
    lwc1	$f27,72($s5)
    li	$at,1
    sd	$at,1824($sp)
    swc1	$f27,416($sp)
    lwc1	$f25,76($s5)
    sb	$at,1413($sp)
    b	.L0da09de4
    swc1	$f25,420($sp)
.L0da09db0:
    sb	$zero,1413($sp)
    mtc1	$zero,$f2
    sd	$zero,1824($sp)
    swc1	$f2,420($sp)
    swc1	$f2,416($sp)
    swc1	$f2,412($sp)
    swc1	$f2,408($sp)
    li	$v1,-65
    li	$a0,-769
    swc1	$f2,404($sp)
    and	$s0,$s0,$a0
    and	$s1,$s1,$v1
    swc1	$f2,400($sp)
.L0da09de4:
    # Line 551
    ld	$a1,1912($sp)
    slti	$a1,$a1,4
    bnez	$a1,.L0da09e84
    sll	$a0,$ra,0x2
    subu	$a0,$a0,$ra
    sll	$a0,$a0,0x3
    addu	$a0,$s5,$a0
    lw	$a2,36($a0)
    lw	$a3,108($s8)
    bne	$a2,$a3,.L0da09e84
    nop
    lw	$a1,40($a0)
    lw	$a2,112($s8)
    bne	$a1,$a2,.L0da09e84
    nop
    lw	$a3,44($a0)
    lw	$a4,116($s8)
    bne	$a3,$a4,.L0da09e84
    nop
    lwc1	$f8,108($s8)
    addiu	$a0,$sp,256
    swc1	$f8,168($a0)
    lwc1	$f7,112($s8)
    swc1	$f7,172($a0)
    lwc1	$f6,116($s8)
    swc1	$f6,176($a0)
    lw	$at,104($s8)
    mtc1	$at,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,180($a0)
    lwc1	$f4,96($s8)
    li	$a5,1
    sd	$a5,1832($sp)
    swc1	$f4,184($a0)
    lwc1	$f3,100($s8)
    li	$a4,48
    sb	$a5,1414($sp)
    addiu	$a1,$a0,192
    b	.L0da09ec4
    swc1	$f3,188($a0)
.L0da09e84:
    sb	$zero,1414($sp)
    mtc1	$zero,$f9
    sd	$zero,1832($sp)
    addiu	$a0,$sp,256
    swc1	$f9,188($a0)
    swc1	$f9,184($a0)
    swc1	$f9,180($a0)
    li	$a4,48
    li	$v1,-3073
    swc1	$f9,176($a0)
    li	$v0,-129
    and	$s0,$s0,$v1
    swc1	$f9,172($a0)
    addiu	$a1,$a0,192
    and	$s1,$s1,$v0
    swc1	$f9,168($a0)
.L0da09ec4:
    # Line 553
    sltu	$a3,$zero,$a6
    sll	$a2,$a3,0x2
    ld	$v0,1816($sp)
    li	$a5,1
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x3
    ld	$at,1904($sp)
    sltu	$v0,$zero,$v0
    addu	$s7,$a2,$s7
    sd	$v0,1848($sp)
    addu	$v0,$a3,$v0
    addiu	$s7,$s7,72
    subu	$at,$at,$v0
    li	$v1,4
    addiu	$at,$at,-1
    li	$v0,4
    slt	$v1,$v1,$at
    sd	$a3,1840($sp)
    li	$a3,16
    movn	$at,$v0,$v1
    sd	$a2,1480($sp)
    addiu	$a2,$at,-1
    sllv	$a5,$a5,$at
    subu	$v0,$v0,$at
    subu	$a3,$a3,$a5
    sd	$v0,1488($sp)
    li	$a5,-1
    sll	$v0,$a3,0xc
    sll	$a3,$a3,0x8
    nor	$v0,$v0,$zero
    sd	$at,1456($sp)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sw	$at,6088($s3)
    beq	$a2,$a5,.L0da0a0c4
    and	$s1,$s1,$a3
    ld	$v1,1456($sp)
    sd	$v1,1440($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0da09fc0
    sd	$v1,1720($sp)
.L0da09f68:
    lwc1	$f15,12($s7)
    swc1	$f15,0($a1)
    lwc1	$f14,16($s7)
    swc1	$f14,4($a1)
    lwc1	$f13,20($s7)
    swc1	$f13,8($a1)
    lw	$v0,8($s7)
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,12($a1)
    lwc1	$f11,0($s7)
    ld	$at,1720($sp)
    swc1	$f11,16($a1)
    addiu	$a2,$a2,-1
    addiu	$at,$at,-1
    lwc1	$f10,4($s7)
    addiu	$s7,$s7,24
    addiu	$a1,$a1,24
    sd	$at,1720($sp)
    addiu	$a4,$a4,6
    bnez	$at,.L0da09f68
    swc1	$f10,-4($a1)
.L0da09fc0:
    ld	$v1,1440($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0da0a0c4
    nop
.L0da09fd0:
    lwc1	$f13,12($s7)
    swc1	$f13,0($a1)
    lwc1	$f12,16($s7)
    swc1	$f12,4($a1)
    lwc1	$f11,20($s7)
    swc1	$f11,8($a1)
    lw	$v1,8($s7)
    mtc1	$v1,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,12($a1)
    lwc1	$f9,0($s7)
    swc1	$f9,16($a1)
    lwc1	$f8,4($s7)
    swc1	$f8,20($a1)
    lwc1	$f7,36($s7)
    swc1	$f7,24($a1)
    lwc1	$f6,40($s7)
    swc1	$f6,28($a1)
    lwc1	$f5,44($s7)
    swc1	$f5,32($a1)
    lw	$v0,32($s7)
    mtc1	$v0,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,36($a1)
    lwc1	$f3,24($s7)
    swc1	$f3,40($a1)
    lwc1	$f2,28($s7)
    swc1	$f2,44($a1)
    lwc1	$f1,60($s7)
    swc1	$f1,48($a1)
    lwc1	$f0,64($s7)
    swc1	$f0,52($a1)
    lwc1	$f31,68($s7)
    swc1	$f31,56($a1)
    lw	$at,56($s7)
    mtc1	$at,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,60($a1)
    lwc1	$f27,48($s7)
    swc1	$f27,64($a1)
    lwc1	$f25,52($s7)
    swc1	$f25,68($a1)
    lwc1	$f23,84($s7)
    swc1	$f23,72($a1)
    lwc1	$f21,88($s7)
    swc1	$f21,76($a1)
    lwc1	$f19,92($s7)
    swc1	$f19,80($a1)
    lw	$a3,80($s7)
    mtc1	$a3,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,84($a1)
    lwc1	$f17,72($s7)
    swc1	$f17,88($a1)
    addiu	$a2,$a2,-4
    lwc1	$f16,76($s7)
    addiu	$s7,$s7,96
    addiu	$a1,$a1,96
    addiu	$a4,$a4,24
    bne	$a2,$a5,.L0da09fd0
    swc1	$f16,-4($a1)
.L0da0a0c4:
    ld	$a2,1488($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da0a10c
    # Line 554
    ld	$v0,1848($sp)
    # Line 553
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da0a0e0:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da0a0e0
    addiu	$a4,$a4,6
    # Line 554
    ld	$v0,1848($sp)
.L0da0a10c:
    ld	$s7,1824($sp)
    ld	$at,1864($sp)
    sltu	$s7,$zero,$s7
    sll	$v1,$v0,0x2
    subu	$v1,$v1,$v0
    addu	$v0,$v0,$s7
    li	$a3,16
    subu	$at,$at,$v0
    li	$v0,4
    sll	$v1,$v1,0x3
    addu	$s6,$s6,$v1
    addiu	$at,$at,-2
    li	$v1,4
    slt	$v0,$v0,$at
    movn	$at,$v1,$v0
    li	$v0,1
    addiu	$s6,$s6,96
    sllv	$v0,$v0,$at
    subu	$v1,$v1,$at
    subu	$a3,$a3,$v0
    addiu	$a2,$at,-1
    sll	$v0,$a3,0x14
    sd	$at,1464($sp)
    sll	$a3,$a3,0x10
    nor	$v0,$v0,$zero
    sw	$at,6096($s3)
    nor	$a3,$a3,$zero
    and	$s0,$s0,$v0
    sd	$v1,1504($sp)
    beq	$a2,$a5,.L0da0a304
    and	$s1,$s1,$a3
    ld	$at,1464($sp)
    andi	$a3,$at,0x3
    sll	$a1,$a4,0x2
    sd	$at,1448($sp)
    addu	$a1,$a0,$a1
    beqz	$a3,.L0da0a1fc
    sd	$a3,1728($sp)
.L0da0a1a4:
    lwc1	$f19,12($s6)
    swc1	$f19,0($a1)
    lwc1	$f18,16($s6)
    swc1	$f18,4($a1)
    lwc1	$f17,20($s6)
    swc1	$f17,8($a1)
    lw	$v1,8($s6)
    mtc1	$v1,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,12($a1)
    lwc1	$f15,0($s6)
    ld	$v0,1728($sp)
    swc1	$f15,16($a1)
    addiu	$a2,$a2,-1
    addiu	$v0,$v0,-1
    lwc1	$f14,4($s6)
    addiu	$s6,$s6,24
    addiu	$a1,$a1,24
    sd	$v0,1728($sp)
    addiu	$a4,$a4,6
    bnez	$v0,.L0da0a1a4
    swc1	$f14,-4($a1)
.L0da0a1fc:
    ld	$a3,1448($sp)
    sra	$a3,$a3,0x2
    beqz	$a3,.L0da0a304
    nop
    nop
.L0da0a210:
    lwc1	$f17,12($s6)
    swc1	$f17,0($a1)
    lwc1	$f16,16($s6)
    swc1	$f16,4($a1)
    lwc1	$f15,20($s6)
    swc1	$f15,8($a1)
    lw	$a3,8($s6)
    mtc1	$a3,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,12($a1)
    lwc1	$f13,0($s6)
    swc1	$f13,16($a1)
    lwc1	$f12,4($s6)
    swc1	$f12,20($a1)
    lwc1	$f11,36($s6)
    swc1	$f11,24($a1)
    lwc1	$f10,40($s6)
    swc1	$f10,28($a1)
    lwc1	$f9,44($s6)
    swc1	$f9,32($a1)
    lw	$v1,32($s6)
    mtc1	$v1,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,36($a1)
    lwc1	$f7,24($s6)
    swc1	$f7,40($a1)
    lwc1	$f6,28($s6)
    swc1	$f6,44($a1)
    lwc1	$f5,60($s6)
    swc1	$f5,48($a1)
    lwc1	$f4,64($s6)
    swc1	$f4,52($a1)
    lwc1	$f3,68($s6)
    swc1	$f3,56($a1)
    lw	$v0,56($s6)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,60($a1)
    lwc1	$f1,48($s6)
    swc1	$f1,64($a1)
    lwc1	$f0,52($s6)
    swc1	$f0,68($a1)
    lwc1	$f31,84($s6)
    swc1	$f31,72($a1)
    lwc1	$f29,88($s6)
    swc1	$f29,76($a1)
    lwc1	$f27,92($s6)
    swc1	$f27,80($a1)
    lw	$at,80($s6)
    mtc1	$at,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,84($a1)
    lwc1	$f23,72($s6)
    swc1	$f23,88($a1)
    addiu	$a2,$a2,-4
    lwc1	$f21,76($s6)
    addiu	$s6,$s6,96
    addiu	$a1,$a1,96
    addiu	$a4,$a4,24
    bne	$a2,$a5,.L0da0a210
    swc1	$f21,-4($a1)
.L0da0a304:
    ld	$a2,1504($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da0a34c
    # Line 555
    ld	$s6,1832($sp)
    # Line 554
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da0a320:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da0a320
    addiu	$a4,$a4,6
    # Line 555
    ld	$s6,1832($sp)
.L0da0a34c:
    li	$a2,16
    sll	$at,$s7,0x2
    subu	$at,$at,$s7
    sltu	$s6,$zero,$s6
    sll	$at,$at,0x3
    addu	$a3,$s7,$s6
    addu	$s5,$s5,$at
    subu	$a3,$ra,$a3
    li	$ra,4
    addiu	$a3,$a3,-1
    li	$at,4
    slt	$ra,$ra,$a3
    movn	$a3,$at,$ra
    li	$ra,1
    addiu	$s5,$s5,72
    sllv	$ra,$ra,$a3
    subu	$at,$at,$a3
    subu	$a2,$a2,$ra
    sd	$at,1496($sp)
    addiu	$ra,$a3,-1
    sll	$at,$a2,0x18
    sll	$a2,$a2,0x14
    nor	$at,$at,$zero
    sd	$a3,1472($sp)
    nor	$a2,$a2,$zero
    and	$s0,$s0,$at
    sw	$a3,6100($s3)
    beq	$ra,$a5,.L0da0a524
    and	$s1,$s1,$a2
    ld	$s7,1472($sp)
    andi	$a2,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$a2,.L0da0a424
    addu	$a1,$a0,$a1
.L0da0a3d4:
    lwc1	$f27,12($s5)
    swc1	$f27,0($a1)
    lwc1	$f25,16($s5)
    swc1	$f25,4($a1)
    lwc1	$f23,20($s5)
    swc1	$f23,8($a1)
    lw	$a3,8($s5)
    mtc1	$a3,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,12($a1)
    lwc1	$f19,0($s5)
    swc1	$f19,16($a1)
    addiu	$ra,$ra,-1
    addiu	$a2,$a2,-1
    lwc1	$f18,4($s5)
    addiu	$s5,$s5,24
    addiu	$a1,$a1,24
    addiu	$a4,$a4,6
    bnez	$a2,.L0da0a3d4
    swc1	$f18,-4($a1)
.L0da0a424:
    sra	$at,$s7,0x2
    beqz	$at,.L0da0a524
    nop
.L0da0a430:
    lwc1	$f23,12($s5)
    swc1	$f23,0($a1)
    lwc1	$f21,16($s5)
    swc1	$f21,4($a1)
    lwc1	$f19,20($s5)
    swc1	$f19,8($a1)
    lw	$a3,8($s5)
    mtc1	$a3,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,12($a1)
    lwc1	$f17,0($s5)
    swc1	$f17,16($a1)
    lwc1	$f16,4($s5)
    swc1	$f16,20($a1)
    lwc1	$f15,36($s5)
    swc1	$f15,24($a1)
    lwc1	$f14,40($s5)
    swc1	$f14,28($a1)
    lwc1	$f13,44($s5)
    swc1	$f13,32($a1)
    lw	$a2,32($s5)
    mtc1	$a2,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,36($a1)
    lwc1	$f11,24($s5)
    swc1	$f11,40($a1)
    lwc1	$f10,28($s5)
    swc1	$f10,44($a1)
    lwc1	$f9,60($s5)
    swc1	$f9,48($a1)
    lwc1	$f8,64($s5)
    swc1	$f8,52($a1)
    lwc1	$f7,68($s5)
    swc1	$f7,56($a1)
    lw	$v1,56($s5)
    mtc1	$v1,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,60($a1)
    lwc1	$f5,48($s5)
    swc1	$f5,64($a1)
    lwc1	$f4,52($s5)
    swc1	$f4,68($a1)
    lwc1	$f3,84($s5)
    swc1	$f3,72($a1)
    lwc1	$f2,88($s5)
    swc1	$f2,76($a1)
    lwc1	$f1,92($s5)
    swc1	$f1,80($a1)
    lw	$v0,80($s5)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,84($a1)
    lwc1	$f31,72($s5)
    swc1	$f31,88($a1)
    addiu	$ra,$ra,-4
    lwc1	$f29,76($s5)
    addiu	$s5,$s5,96
    addiu	$a1,$a1,96
    addiu	$a4,$a4,24
    bne	$ra,$a5,.L0da0a430
    swc1	$f29,-4($a1)
.L0da0a524:
    ld	$a2,1496($sp)
    addiu	$a2,$a2,-1
    beq	$a2,$a5,.L0da0a56c
    # Line 556
    ld	$at,1480($sp)
    # Line 555
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
.L0da0a540:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,16($a1)
    addiu	$a1,$a1,24
    swc1	$f4,-4($a1)
    bne	$a2,$a5,.L0da0a540
    addiu	$a4,$a4,6
    # Line 556
    ld	$at,1480($sp)
.L0da0a56c:
    ld	$ra,1840($sp)
    ld	$s7,1912($sp)
    addu	$s8,$at,$s8
    addu	$ra,$ra,$s6
    addiu	$s8,$s8,96
    subu	$s7,$s7,$ra
    li	$ra,4
    addiu	$s7,$s7,-2
    li	$s5,4
    slt	$ra,$ra,$s7
    movn	$s7,$s5,$ra
    li	$ra,1
    li	$a3,16
    sllv	$ra,$ra,$s7
    subu	$s5,$s5,$s7
    subu	$a3,$a3,$ra
    addiu	$a2,$s7,-1
    sll	$ra,$a3,0x10
    sll	$a3,$a3,0xc
    nor	$ra,$ra,$zero
    nor	$a3,$a3,$zero
    and	$s0,$s0,$ra
    sw	$s7,6092($s3)
    beq	$a2,$a5,.L0da0a734
    and	$s1,$s1,$a3
    andi	$ra,$s7,0x3
    sll	$a1,$a4,0x2
    beqz	$ra,.L0da0a630
    addu	$a1,$a0,$a1
.L0da0a5e0:
    lwc1	$f1,12($s8)
    swc1	$f1,0($a1)
    lwc1	$f0,16($s8)
    swc1	$f0,4($a1)
    lwc1	$f31,20($s8)
    swc1	$f31,8($a1)
    lw	$a3,8($s8)
    mtc1	$a3,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,12($a1)
    lwc1	$f27,0($s8)
    swc1	$f27,16($a1)
    addiu	$a2,$a2,-1
    addiu	$ra,$ra,-1
    lwc1	$f25,4($s8)
    addiu	$s8,$s8,24
    addiu	$a1,$a1,24
    addiu	$a4,$a4,6
    bnez	$ra,.L0da0a5e0
    swc1	$f25,-4($a1)
.L0da0a630:
    sra	$ra,$s7,0x2
    beqz	$ra,.L0da0a734
    nop
    nop
.L0da0a640:
    lwc1	$f31,12($s8)
    swc1	$f31,0($a1)
    lwc1	$f29,16($s8)
    swc1	$f29,4($a1)
    lwc1	$f27,20($s8)
    swc1	$f27,8($a1)
    lw	$a3,8($s8)
    mtc1	$a3,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,12($a1)
    lwc1	$f23,0($s8)
    swc1	$f23,16($a1)
    lwc1	$f21,4($s8)
    swc1	$f21,20($a1)
    lwc1	$f19,36($s8)
    swc1	$f19,24($a1)
    lwc1	$f18,40($s8)
    swc1	$f18,28($a1)
    lwc1	$f17,44($s8)
    swc1	$f17,32($a1)
    lw	$v1,32($s8)
    mtc1	$v1,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,36($a1)
    lwc1	$f15,24($s8)
    swc1	$f15,40($a1)
    lwc1	$f14,28($s8)
    swc1	$f14,44($a1)
    lwc1	$f13,60($s8)
    swc1	$f13,48($a1)
    lwc1	$f12,64($s8)
    swc1	$f12,52($a1)
    lwc1	$f11,68($s8)
    swc1	$f11,56($a1)
    lw	$v0,56($s8)
    mtc1	$v0,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,60($a1)
    lwc1	$f9,48($s8)
    swc1	$f9,64($a1)
    lwc1	$f8,52($s8)
    swc1	$f8,68($a1)
    lwc1	$f7,84($s8)
    swc1	$f7,72($a1)
    lwc1	$f6,88($s8)
    swc1	$f6,76($a1)
    lwc1	$f5,92($s8)
    swc1	$f5,80($a1)
    lw	$at,80($s8)
    mtc1	$at,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,84($a1)
    lwc1	$f3,72($s8)
    swc1	$f3,88($a1)
    addiu	$a2,$a2,-4
    lwc1	$f2,76($s8)
    addiu	$s8,$s8,96
    addiu	$a1,$a1,96
    addiu	$a4,$a4,24
    bne	$a2,$a5,.L0da0a640
    swc1	$f2,-4($a1)
.L0da0a734:
    addiu	$a2,$s5,-1
    beq	$a2,$a5,.L0da071a0
    sll	$a1,$a4,0x2
    mtc1	$zero,$f4
    addu	$a1,$a0,$a1
    nop
    nop
.L0da0a750:
    swc1	$f4,0($a1)
    swc1	$f4,4($a1)
    swc1	$f4,8($a1)
    swc1	$f4,12($a1)
    addiu	$a2,$a2,-1
    swc1	$f4,16($a1)
    swc1	$f4,20($a1)
    bne	$a2,$a5,.L0da0a750
    addiu	$a1,$a1,24
    b	.L0da071a0
    nop
.L0da0a77c:
    # Line 692
    sll	$s5,$s2,0x2
    addu	$s0,$s0,$s5
    lw	$a2,-4($s0)
    addiu	$s5,$a2,2
    slt	$a2,$a2,$s5
    beqz	$a2,.L0da07390
    la	$s3,sub_0da10000
    addiu	$s6,$s2,-1
    addiu	$s3,$s3,7840
    # Line 694
    move	$t9,$s1
.L0da0a7a4:
    move	$a0,$s6
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 695
    lw	$t8,0($s0)
    addiu	$s4,$t8,2
    slt	$t8,$t8,$s4
    beqz	$t8,.L0da0a7f8
    nop
    # Line 697
    move	$t9,$s1
.L0da0a7c8:
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 698
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    lw	$a2,0($s0)
    slt	$a2,$a2,$s4
    bnez	$a2,.L0da0a7c8
    # Line 697
    move	$t9,$s1
.L0da0a7f8:
    # Line 698
    lw	$a3,-4($s0)
    slt	$a3,$a3,$s5
    bnez	$a3,.L0da0a7a4
    # Line 694
    move	$t9,$s1
    b	.L0da07394
    ld	$s3,1880($sp)
.L0da0a810:
    # Line 703
    sll	$s7,$s2,0x2
    addu	$s0,$s0,$s7
    lw	$a4,-8($s0)
    addiu	$s7,$a4,2
    slt	$a4,$a4,$s7
    beqz	$a4,.L0da07390
    la	$s3,sub_0da10000
    addiu	$s8,$s2,-2
    addiu	$s6,$s2,-1
    addiu	$s3,$s3,7840
    # Line 705
    move	$t9,$s1
.L0da0a83c:
    move	$a0,$s8
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 706
    lw	$t8,-4($s0)
    addiu	$s5,$t8,2
    slt	$t8,$t8,$s5
    beqz	$t8,.L0da0a8c4
    nop
    # Line 708
    move	$t9,$s1
.L0da0a860:
    move	$a0,$s6
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 709
    lw	$t9,0($s0)
    addiu	$s4,$t9,2
    slt	$t9,$t9,$s4
    beqz	$t9,.L0da0a8b4
    nop
    # Line 711
    move	$t9,$s1
.L0da0a884:
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 712
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    lw	$a2,0($s0)
    slt	$a2,$a2,$s4
    bnez	$a2,.L0da0a884
    # Line 711
    move	$t9,$s1
.L0da0a8b4:
    # Line 712
    lw	$a3,-4($s0)
    slt	$a3,$a3,$s5
    bnez	$a3,.L0da0a860
    # Line 708
    move	$t9,$s1
.L0da0a8c4:
    # Line 712
    lw	$a4,-8($s0)
    slt	$a4,$a4,$s7
    bnez	$a4,.L0da0a83c
    # Line 705
    move	$t9,$s1
    b	.L0da07394
    ld	$s3,1880($sp)
.L0da0a8dc:
    # Line 409
    beqz	$t0,.L0da0aac8
    nop
    b	.L0da07078
    sd	$zero,1856($sp)
.L0da0a8ec:
    b	.L0da07648
    # Line 591
    move	$a0,$zero
.L0da0a8f4:
    b	.L0da0765c
    # Line 592
    move	$a0,$zero
.L0da0a8fc:
    b	.L0da07674
    # Line 593
    move	$a0,$zero
.L0da0a904:
    b	.L0da0768c
    # Line 594
    move	$a0,$zero
.L0da0a90c:
    b	.L0da076b4
    # Line 597
    move	$a0,$zero
.L0da0a914:
    b	.L0da076cc
    # Line 598
    move	$a0,$zero
.L0da0a91c:
    b	.L0da076e8
    # Line 599
    move	$a0,$zero
.L0da0a924:
    b	.L0da07700
    # Line 600
    move	$a0,$zero
.L0da0a92c:
    b	.L0da0771c
    # Line 602
    move	$a0,$zero
.L0da0a934:
    b	.L0da07738
    # Line 603
    move	$a0,$zero
.L0da0a93c:
    b	.L0da07758
    # Line 604
    move	$a0,$zero
.L0da0a944:
    b	.L0da07774
    # Line 605
    move	$a0,$zero
.L0da0a94c:
    b	.L0da07790
    # Line 607
    move	$a0,$zero
.L0da0a954:
    b	.L0da077ac
    # Line 608
    move	$a0,$zero
.L0da0a95c:
    b	.L0da077cc
    # Line 609
    move	$a0,$zero
.L0da0a964:
    b	.L0da077e8
    # Line 610
    move	$a0,$zero
.L0da0a96c:
    b	.L0da07800
    # Line 612
    move	$a0,$zero
.L0da0a974:
    b	.L0da07818
    # Line 613
    move	$a0,$zero
.L0da0a97c:
    b	.L0da07834
    # Line 614
    move	$a0,$zero
.L0da0a984:
    b	.L0da0784c
    # Line 615
    move	$a0,$zero
.L0da0a98c:
    b	.L0da07898
    # Line 624
    move	$a0,$zero
.L0da0a994:
    b	.L0da078ac
    # Line 625
    move	$a0,$zero
.L0da0a99c:
    b	.L0da078cc
    # Line 626
    move	$a0,$zero
.L0da0a9a4:
    b	.L0da078e4
    # Line 627
    move	$a0,$zero
.L0da0a9ac:
    b	.L0da07900
    # Line 629
    move	$a0,$zero
.L0da0a9b4:
    b	.L0da07914
    # Line 630
    move	$a0,$zero
.L0da0a9bc:
    b	.L0da07934
    # Line 631
    move	$a0,$zero
.L0da0a9c4:
    b	.L0da0794c
    # Line 632
    move	$a0,$zero
.L0da0a9cc:
    b	.L0da07974
    # Line 635
    move	$a0,$zero
.L0da0a9d4:
    b	.L0da0798c
    # Line 636
    move	$a0,$zero
.L0da0a9dc:
    b	.L0da079a8
    # Line 637
    move	$a0,$zero
.L0da0a9e4:
    b	.L0da079c0
    # Line 638
    move	$a0,$zero
.L0da0a9ec:
    b	.L0da079d8
    # Line 640
    move	$a2,$zero
.L0da0a9f4:
    b	.L0da079f0
    # Line 641
    move	$a2,$zero
.L0da0a9fc:
    b	.L0da07a0c
    # Line 642
    move	$a0,$zero
.L0da0aa04:
    b	.L0da07a24
    # Line 643
    move	$a0,$zero
.L0da0aa0c:
    b	.L0da07a3c
    # Line 645
    move	$a2,$zero
.L0da0aa14:
    b	.L0da07a54
    # Line 646
    move	$a2,$zero
.L0da0aa1c:
    b	.L0da07a70
    # Line 647
    move	$a2,$zero
.L0da0aa24:
    b	.L0da07a88
    # Line 648
    move	$a2,$zero
.L0da0aa2c:
    b	.L0da07aa0
    # Line 650
    move	$a0,$zero
.L0da0aa34:
    b	.L0da07ab8
    # Line 651
    move	$a4,$zero
.L0da0aa3c:
    b	.L0da07ad4
    # Line 652
    move	$a4,$zero
.L0da0aa44:
    b	.L0da07aec
    # Line 653
    move	$a0,$zero
.L0da0aa4c:
    # Line 683
    lw	$a1,1416($sp)
    addiu	$t9,$t9,7840
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    b	.L0da07394
    ld	$s3,1880($sp)
.L0da0aa68:
    # Line 686
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 687
    la	$s3,sub_0da10000
    sll	$t8,$s2,0x2
    addiu	$s0,$sp,1416
    addu	$s0,$s0,$t8
    addiu	$s3,$s3,7840
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    # Line 688
    move	$t9,$s1
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$sp,1416
    # Line 689
    lw	$a1,0($s0)
    move	$t9,$s3
    move	$a0,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$a1,-1
    b	.L0da07394
    ld	$s3,1880($sp)
.L0da0aac8:
    # Line 409
    beqz	$t1,.L0da0aad8
    nop
    b	.L0da07078
    sd	$zero,1856($sp)
.L0da0aad8:
    beqz	$t3,.L0da0aae8
    nop
    b	.L0da07078
    sd	$zero,1856($sp)
.L0da0aae8:
    beqz	$t9,.L0da0aaf8
    nop
    b	.L0da07078
    sd	$zero,1856($sp)
.L0da0aaf8:
    beqz	$t2,.L0da0ab08
    lui	$a3,0x8000
    b	.L0da07078
    sd	$zero,1856($sp)
.L0da0ab08:
    move	$a2,$zero
    movz	$a2,$a3,$t8
    b	.L0da07078
    sd	$a2,1856($sp)
.end __glim_SubdivPatchSGIX

# Function: CopyVertex
# Declared: Line 747 (Source lines: 748-755)
# Address: 0x0da0ab20 - 0x0da0ab84 (Size: 100 bytes, Frame: 0)
.ent CopyVertex
CopyVertex:
    # Line 748
    move	$a6,$a0
    andi	$a7,$a0,0x1
    blez	$a0,.L0da0ab7c
    move	$a5,$a1
    sll	$a4,$a6,0x2
    move	$a1,$a2
    move	$a0,$a5
    beqz	$a7,.L0da0ab54
    addu	$a4,$a4,$a5
    # Line 752
    lwc1	$f0,0($a5)
    # Line 751
    addiu	$a0,$a5,4
    addiu	$a1,$a2,4
    # Line 752
    swc1	$f0,0($a2)
.L0da0ab54:
    sra	$t0,$a6,0x1
    beqz	$t0,.L0da0ab7c
    nop
.L0da0ab60:
    lwc1	$f2,0($a0)
    # Line 751
    addiu	$a0,$a0,8
    # Line 752
    swc1	$f2,0($a1)
    lwc1	$f1,-4($a0)
    # Line 751
    addiu	$a1,$a1,8
    bne	$a0,$a4,.L0da0ab60
    # Line 752
    swc1	$f1,-4($a1)
.L0da0ab7c:
    # Line 755
    jr	$ra
    nop
.end CopyVertex

# Function: CopyRVertex
# Declared: Line 759 (Source lines: 760-767)
# Address: 0x0da0ab90 - 0x0da0ac04 (Size: 116 bytes, Frame: 0)
.ent CopyRVertex
CopyRVertex:
    # Line 763
    addiu	$a6,$a0,-1
    # Line 760
    move	$a5,$a0
    # Line 763
    bltz	$a6,.L0da0abfc
    # Line 760
    move	$a7,$a1
    # Line 763
    addiu	$a4,$a1,-4
    sll	$a0,$a6,0x2
    andi	$a3,$a5,0x1
    addu	$a1,$a0,$a2
    beqz	$a3,.L0da0abc8
    addu	$a0,$a0,$a7
    # Line 764
    lwc1	$f0,0($a0)
    # Line 763
    addiu	$a1,$a1,-4
    addiu	$a0,$a0,-4
    # Line 764
    swc1	$f0,4($a1)
.L0da0abc8:
    sra	$a6,$a5,0x1
    beqz	$a6,.L0da0abfc
    nop
    nop
    nop
    nop
.L0da0abe0:
    lwc1	$f2,0($a0)
    # Line 763
    addiu	$a0,$a0,-8
    # Line 764
    swc1	$f2,0($a1)
    lwc1	$f1,4($a0)
    # Line 763
    addiu	$a1,$a1,-8
    bne	$a0,$a4,.L0da0abe0
    # Line 764
    swc1	$f1,4($a1)
.L0da0abfc:
    # Line 767
    jr	$ra
    nop
.end CopyRVertex

# Function: NormalizedCrossProduct
# Declared: Line 771 (Source lines: 775-783)
# Address: 0x0da0ac10 - 0x0da0ac9c (Size: 140 bytes, Frame: 0)
.ent NormalizedCrossProduct
NormalizedCrossProduct:
    # Line 775
    lwc1	$f2,8($a1)
    lwc1	$f3,8($a0)
    lwc1	$f0,4($a1)
    lwc1	$f1,4($a0)
    mul.s	$f0,$f0,$f3
    msub.s	$f0,$f0,$f1,$f2
    swc1	$f0,0($a2)
    # Line 776
    lwc1	$f4,8($a0)
    lwc1	$f5,8($a1)
    lwc1	$f2,0($a0)
    lwc1	$f3,0($a1)
    mul.s	$f2,$f2,$f5
    msub.s	$f2,$f2,$f3,$f4
    swc1	$f2,4($a2)
    # Line 777
    lwc1	$f5,4($a1)
    lwc1	$f6,4($a0)
    lwc1	$f3,0($a1)
    lwc1	$f4,0($a0)
    mul.s	$f3,$f3,$f6
    msub.s	$f3,$f3,$f4,$f5
    # Line 779
    mul.s	$f4,$f2,$f2
    madd.s	$f4,$f4,$f0,$f0
    madd.s	$f4,$f4,$f3,$f3
    sqrt.s	$f4,$f4
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f4,$f4
    div.d	$f1,$f1,$f4
    cvt.s.d	$f1,$f1
    # Line 781
    mul.s	$f3,$f3,$f1
    mul.s	$f2,$f2,$f1
    swc1	$f3,8($a2)
    mul.s	$f0,$f0,$f1
    swc1	$f2,4($a2)
    # Line 783
    jr	$ra
    # Line 781
    swc1	$f0,0($a2)
.end NormalizedCrossProduct

# Function: SubdivSmoothEdge
# Declared: Line 787 (Source lines: 788-796)
# Address: 0x0da0aca0 - 0x0da0ae30 (Size: 400 bytes, Frame: 0)
.ent SubdivSmoothEdge
SubdivSmoothEdge:
    # Line 788
    blez	$a0,.L0da0ae28
    andi	$t0,$a0,0x3
    ldc1	$f4,_lit8_4008000000000000
    sll	$a7,$a0,0x2
    ldc1	$f5,_lit8_3fc0000000000000
    beqz	$t0,.L0da0ad14
    addu	$a7,$a7,$a4
.L0da0acbc:
    # Line 793
    lwc1	$f2,0($a2)
    lwc1	$f3,0($a1)
    cvt.d.s	$f2,$f2
    cvt.d.s	$f3,$f3
    mul.d	$f2,$f2,$f4
    madd.d	$f2,$f2,$f3,$f4
    lwc1	$f1,0($a3)
    lwc1	$f0,0($a4)
    cvt.d.s	$f1,$f1
    cvt.d.s	$f0,$f0
    add.d	$f1,$f1,$f2
    add.d	$f0,$f0,$f1
    # Line 792
    addiu	$a4,$a4,4
    # Line 793
    mul.d	$f0,$f5,$f0
    # Line 792
    addiu	$a3,$a3,4
    addiu	$t0,$t0,-1
    addiu	$a1,$a1,4
    addiu	$a5,$a5,4
    # Line 793
    cvt.s.d	$f0,$f0
    # Line 792
    addiu	$a2,$a2,4
    bnez	$t0,.L0da0acbc
    # Line 793
    swc1	$f0,-4($a5)
.L0da0ad14:
    sra	$t0,$a0,0x2
    beqz	$t0,.L0da0ae28
    nop
.L0da0ad20:
    lwc1	$f16,0($a2)
    lwc1	$f17,0($a1)
    cvt.d.s	$f16,$f16
    cvt.d.s	$f17,$f17
    mul.d	$f16,$f16,$f4
    madd.d	$f16,$f16,$f17,$f4
    lwc1	$f15,0($a3)
    lwc1	$f14,0($a4)
    cvt.d.s	$f15,$f15
    cvt.d.s	$f14,$f14
    add.d	$f15,$f15,$f16
    add.d	$f14,$f14,$f15
    mul.d	$f14,$f5,$f14
    cvt.s.d	$f14,$f14
    swc1	$f14,0($a5)
    lwc1	$f13,4($a2)
    lwc1	$f14,4($a1)
    cvt.d.s	$f13,$f13
    cvt.d.s	$f14,$f14
    mul.d	$f13,$f13,$f4
    madd.d	$f13,$f13,$f14,$f4
    lwc1	$f12,4($a3)
    lwc1	$f11,4($a4)
    cvt.d.s	$f12,$f12
    cvt.d.s	$f11,$f11
    add.d	$f12,$f12,$f13
    add.d	$f11,$f11,$f12
    mul.d	$f11,$f5,$f11
    cvt.s.d	$f11,$f11
    swc1	$f11,4($a5)
    lwc1	$f10,8($a2)
    lwc1	$f11,8($a1)
    cvt.d.s	$f10,$f10
    cvt.d.s	$f11,$f11
    mul.d	$f10,$f10,$f4
    madd.d	$f10,$f10,$f11,$f4
    lwc1	$f9,8($a3)
    lwc1	$f8,8($a4)
    cvt.d.s	$f9,$f9
    cvt.d.s	$f8,$f8
    add.d	$f9,$f9,$f10
    add.d	$f8,$f8,$f9
    mul.d	$f8,$f5,$f8
    cvt.s.d	$f8,$f8
    swc1	$f8,8($a5)
    lwc1	$f7,12($a2)
    lwc1	$f8,12($a1)
    cvt.d.s	$f7,$f7
    cvt.d.s	$f8,$f8
    mul.d	$f7,$f7,$f4
    madd.d	$f7,$f7,$f8,$f4
    lwc1	$f6,12($a3)
    lwc1	$f3,12($a4)
    cvt.d.s	$f6,$f6
    cvt.d.s	$f3,$f3
    add.d	$f6,$f6,$f7
    add.d	$f3,$f3,$f6
    mul.d	$f3,$f5,$f3
    # Line 792
    addiu	$a3,$a3,16
    addiu	$a4,$a4,16
    addiu	$a1,$a1,16
    addiu	$a5,$a5,16
    # Line 793
    cvt.s.d	$f3,$f3
    # Line 792
    addiu	$a2,$a2,16
    bne	$a4,$a7,.L0da0ad20
    # Line 793
    swc1	$f3,-4($a5)
.L0da0ae28:
    # Line 796
    jr	$ra
    nop
.end SubdivSmoothEdge

# Function: SubdivRegCreaseEdge
# Declared: Line 800 (Source lines: 801-809)
# Address: 0x0da0ae30 - 0x0da0af18 (Size: 232 bytes, Frame: 0)
.ent SubdivRegCreaseEdge
SubdivRegCreaseEdge:
    # Line 801
    blez	$a0,.L0da0af10
    andi	$a6,$a0,0x3
    sll	$a5,$a0,0x2
    ldc1	$f4,_lit8_3fe0000000000000
    beqz	$a6,.L0da0ae78
    addu	$a5,$a5,$a1
.L0da0ae48:
    # Line 806
    lwc1	$f0,0($a1)
    lwc1	$f1,0($a2)
    add.s	$f0,$f0,$f1
    cvt.d.s	$f0,$f0
    mul.d	$f0,$f0,$f4
    addiu	$a6,$a6,-1
    # Line 805
    addiu	$a1,$a1,4
    addiu	$a3,$a3,4
    # Line 806
    cvt.s.d	$f0,$f0
    # Line 805
    addiu	$a2,$a2,4
    bnez	$a6,.L0da0ae48
    # Line 806
    swc1	$f0,-4($a3)
.L0da0ae78:
    sra	$a6,$a0,0x2
    beqz	$a6,.L0da0af10
    nop
    nop
    nop
    nop
.L0da0ae90:
    lwc1	$f9,0($a1)
    lwc1	$f10,0($a2)
    add.s	$f9,$f9,$f10
    cvt.d.s	$f9,$f9
    mul.d	$f9,$f9,$f4
    cvt.s.d	$f9,$f9
    swc1	$f9,0($a3)
    lwc1	$f7,4($a1)
    lwc1	$f8,4($a2)
    add.s	$f7,$f7,$f8
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f4
    cvt.s.d	$f7,$f7
    swc1	$f7,4($a3)
    lwc1	$f5,8($a1)
    lwc1	$f6,8($a2)
    add.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
    mul.d	$f5,$f5,$f4
    cvt.s.d	$f5,$f5
    swc1	$f5,8($a3)
    lwc1	$f2,12($a1)
    lwc1	$f3,12($a2)
    add.s	$f2,$f2,$f3
    cvt.d.s	$f2,$f2
    mul.d	$f2,$f2,$f4
    # Line 805
    addiu	$a1,$a1,16
    addiu	$a3,$a3,16
    # Line 806
    cvt.s.d	$f2,$f2
    # Line 805
    addiu	$a2,$a2,16
    bne	$a1,$a5,.L0da0ae90
    # Line 806
    swc1	$f2,-4($a3)
.L0da0af10:
    # Line 809
    jr	$ra
    nop
.end SubdivRegCreaseEdge

# Function: SubdivIRRegCreaseEdge
# Declared: Line 813 (Source lines: 814-822)
# Address: 0x0da0af20 - 0x0da0b038 (Size: 280 bytes, Frame: 0)
.ent SubdivIRRegCreaseEdge
SubdivIRRegCreaseEdge:
    # Line 814
    blez	$a0,.L0da0b030
    ldc1	$f4,_lit8_4014000000000000
    andi	$a6,$a0,0x3
    ldc1	$f5,_lit8_4008000000000000
    sll	$a5,$a0,0x2
    ldc1	$f6,_lit8_3fc0000000000000
    beqz	$a6,.L0da0af78
    addu	$a5,$a5,$a1
.L0da0af40:
    # Line 819
    lwc1	$f0,0($a2)
    lwc1	$f1,0($a1)
    cvt.d.s	$f0,$f0
    cvt.d.s	$f1,$f1
    mul.d	$f0,$f0,$f5
    madd.d	$f0,$f0,$f1,$f4
    mul.d	$f0,$f6,$f0
    addiu	$a6,$a6,-1
    # Line 818
    addiu	$a1,$a1,4
    addiu	$a3,$a3,4
    # Line 819
    cvt.s.d	$f0,$f0
    # Line 818
    addiu	$a2,$a2,4
    bnez	$a6,.L0da0af40
    # Line 819
    swc1	$f0,-4($a3)
.L0da0af78:
    sra	$a6,$a0,0x2
    beqz	$a6,.L0da0b030
    nop
    nop
    nop
    nop
.L0da0af90:
    lwc1	$f7,0($a2)
    lwc1	$f8,0($a1)
    cvt.d.s	$f7,$f7
    cvt.d.s	$f8,$f8
    mul.d	$f7,$f7,$f5
    madd.d	$f7,$f7,$f8,$f4
    mul.d	$f7,$f6,$f7
    cvt.s.d	$f7,$f7
    swc1	$f7,0($a3)
    lwc1	$f3,4($a2)
    lwc1	$f7,4($a1)
    cvt.d.s	$f3,$f3
    cvt.d.s	$f7,$f7
    mul.d	$f3,$f3,$f5
    madd.d	$f3,$f3,$f7,$f4
    mul.d	$f3,$f6,$f3
    cvt.s.d	$f3,$f3
    swc1	$f3,4($a3)
    lwc1	$f2,8($a2)
    lwc1	$f3,8($a1)
    cvt.d.s	$f2,$f2
    cvt.d.s	$f3,$f3
    mul.d	$f2,$f2,$f5
    madd.d	$f2,$f2,$f3,$f4
    mul.d	$f2,$f6,$f2
    cvt.s.d	$f2,$f2
    swc1	$f2,8($a3)
    lwc1	$f1,12($a2)
    lwc1	$f2,12($a1)
    cvt.d.s	$f1,$f1
    cvt.d.s	$f2,$f2
    mul.d	$f1,$f1,$f5
    madd.d	$f1,$f1,$f2,$f4
    mul.d	$f1,$f6,$f1
    # Line 818
    addiu	$a1,$a1,16
    addiu	$a3,$a3,16
    # Line 819
    cvt.s.d	$f1,$f1
    # Line 818
    addiu	$a2,$a2,16
    bne	$a1,$a5,.L0da0af90
    # Line 819
    swc1	$f1,-4($a3)
.L0da0b030:
    # Line 822
    jr	$ra
    nop
.end SubdivIRRegCreaseEdge

# Function: SubdivEdge
# Declared: Line 826 (Source lines: 828-848)
# Address: 0x0da0b040 - 0x0da0b110 (Size: 208 bytes, Frame: 208)
.ent SubdivEdge
SubdivEdge:
    # Line 828
    addiu	$sp,$sp,-80
    # Line 830
    lb	$t1,87($sp)
    # Line 834
    andi	$v1,$a7,0x8
    # Line 830
    andi	$v0,$a7,0x4
    andi	$at,$a6,0x4
    beqz	$t1,.L0da0b06c
    sd	$ra,0($sp)
    bnez	$at,.L0da0b06c
    # Line 834
    andi	$ra,$t1,0x2
    # Line 830
    beqz	$v0,.L0da0b088
    # Line 834
    andi	$at,$a6,0x1
.L0da0b06c:
    # Line 833
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-21344
    bal __glim_SubdivPatchSGIX
    nop
    ld	$ra,0($sp)
.L0da0b080:
    # Line 848
    jr	$ra
    addiu	$sp,$sp,80
.L0da0b088:
    # Line 839
    andi	$a3,$a7,0x1
    # Line 834
    andi	$v0,$a7,0x2
    beqz	$ra,.L0da0b0f8
    # Line 839
    andi	$a4,$a6,0x2
    # Line 834
    beqz	$at,.L0da0b0b0
    nop
    bnez	$v0,.L0da0b0e4
    # Line 838
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    # Line 834
    bnez	$v1,.L0da0b0e4
    # Line 838
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
.L0da0b0b0:
    # Line 839
    beqz	$a3,.L0da0b0f8
    andi	$a7,$a6,0x8
    bnez	$a4,.L0da0b0cc
    # Line 843
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    # Line 839
    beqz	$a7,.L0da0b0fc
    # Line 845
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    # Line 843
    # lw $t9, -32696($gp) # &sub_0da10000
.L0da0b0cc:
    addiu	$t9,$t9,-20704
    bal __glim_SubdivPatchSGIX
    move	$a3,$a5
    b	.L0da0b080
    ld	$ra,0($sp)
    # Line 838
    # lw $t9, -32696($gp) # &sub_0da10000
.L0da0b0e4:
    addiu	$t9,$t9,-20704
    bal __glim_SubdivPatchSGIX
    move	$a3,$a5
    b	.L0da0b080
    ld	$ra,0($sp)
.L0da0b0f8:
    # Line 845
    # lw $t9, -32696($gp) # &sub_0da10000
.L0da0b0fc:
    addiu	$t9,$t9,-20944
    bal __glim_SubdivPatchSGIX
    move	$a3,$a5
    b	.L0da0b080
    ld	$ra,0($sp)
.end SubdivEdge

# Function: PrepSmoothVertex
# Declared: Line 852 (Source lines: 857-865)
# Address: 0x0da0b110 - 0x0da0b168 (Size: 88 bytes, Frame: 0)
.ent PrepSmoothVertex
PrepSmoothVertex:
    # Line 857
    mult	$a0,$a1
    mflo	$at
    sll	$v1,$at,0x2
    # Line 863
    addu	$a6,$v1,$a4
    sw	$a6,24($a5)
    # Line 860
    addu	$a1,$v1,$a2
    sw	$a1,12($a5)
    # Line 861
    subu	$v0,$at,$a0
    # Line 857
    addu	$v1,$v1,$a3
    sw	$v1,0($a5)
    # Line 861
    sll	$v0,$v0,0x2
    # Line 858
    addu	$at,$at,$a0
    # Line 862
    addu	$v1,$v0,$a4
    sw	$v1,20($a5)
    # Line 858
    sll	$at,$at,0x2
    # Line 861
    addu	$v0,$v0,$a3
    sw	$v0,16($a5)
    # Line 859
    addu	$v0,$at,$a2
    sw	$v0,8($a5)
    # Line 858
    addu	$at,$at,$a3
    # Line 865
    jr	$ra
    # Line 858
    sw	$at,4($a5)
.end PrepSmoothVertex

# Function: UpdateSmoothVertex
# Declared: Line 869 (Source lines: 870-884)
# Address: 0x0da0b170 - 0x0da0b2a8 (Size: 312 bytes, Frame: 0)
.ent UpdateSmoothVertex
UpdateSmoothVertex:
    # Line 870
    blez	$a0,.L0da0b290
    addiu	$t2,$a2,4
    move	$a5,$zero
    sll	$t0,$a0,0x2
    la	$v0,.rodata
    slti	$t1,$a1,1
    addu	$t0,$t0,$a3
    sll	$at,$a1,0x3
    addiu	$v0,$v0,24040
    addiu	$a6,$a1,1
    addu	$at,$at,$v0
    xori	$t1,$t1,0x1
    sll	$a6,$a6,0x2
    lwc1	$f5,-4($at)
    addu	$a6,$a6,$a2
    b	.L0da0b298
    lwc1	$f6,-8($at)
    nop
    nop
    nop
.L0da0b1c0:
    # Line 879
    lw	$t3,0($a0)
    addu	$t3,$t3,$a5
    lwc1	$f0,0($t3)
    addiu	$a7,$a7,-1
    add.s	$f4,$f4,$f0
    # Line 878
    addiu	$a0,$a0,4
    bnez	$a7,.L0da0b1c0
    # Line 879
    swc1	$f4,0($a3)
.L0da0b1e0:
    beqz	$t8,.L0da0b248
    nop
    nop
    nop
.L0da0b1f0:
    lw	$v1,0($a0)
    addu	$v1,$v1,$a5
    lwc1	$f8,0($v1)
    add.s	$f4,$f4,$f8
    swc1	$f4,0($a3)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a5
    lwc1	$f7,0($v0)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$at,8($a0)
    addu	$at,$at,$a5
    lwc1	$f7,0($at)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$t9,12($a0)
    addu	$t9,$t9,$a5
    lwc1	$f7,0($t9)
    # Line 878
    addiu	$a0,$a0,16
    # Line 879
    add.s	$f4,$f4,$f7
    # Line 878
    bne	$a0,$a6,.L0da0b1f0
    # Line 879
    swc1	$f4,0($a3)
.L0da0b248:
    # Line 876
    addiu	$a3,$a3,4
    sra	$t8,$a1,0x2
    addiu	$a5,$a5,4
    # Line 881
    mul.s	$f9,$f5,$f4
    andi	$a7,$a1,0x3
    # Line 876
    beq	$a3,$t0,.L0da0b290
    # Line 881
    swc1	$f9,-4($a3)
    # Line 877
    lw	$a0,0($a2)
.L0da0b268:
    addu	$a0,$a0,$a5
    lwc1	$f4,0($a0)
    mul.s	$f4,$f6,$f4
    move	$a0,$t2
    beqz	$t1,.L0da0b248
    swc1	$f4,0($a3)
    bnez	$a7,.L0da0b1c0
    nop
    b	.L0da0b1e0
    nop
.L0da0b290:
    # Line 884
    jr	$ra
    nop
.L0da0b298:
    sra	$t8,$a1,0x2
    andi	$a7,$a1,0x3
    b	.L0da0b268
    # Line 877
    lw	$a0,0($a2)
.end UpdateSmoothVertex

# Function: UpdateConicalVertex
# Declared: Line 888 (Source lines: 889-903)
# Address: 0x0da0b2b0 - 0x0da0b3e8 (Size: 312 bytes, Frame: 0)
.ent UpdateConicalVertex
UpdateConicalVertex:
    # Line 889
    blez	$a0,.L0da0b3d0
    addiu	$t2,$a2,4
    move	$a5,$zero
    sll	$t0,$a0,0x2
    la	$v0,.rodata
    slti	$t1,$a1,1
    addu	$t0,$t0,$a3
    sll	$at,$a1,0x3
    addiu	$v0,$v0,24112
    addiu	$a6,$a1,1
    addu	$at,$at,$v0
    xori	$t1,$t1,0x1
    sll	$a6,$a6,0x2
    lwc1	$f5,4($at)
    addu	$a6,$a6,$a2
    b	.L0da0b3d8
    lwc1	$f6,0($at)
    nop
    nop
    nop
.L0da0b300:
    # Line 898
    lw	$t3,0($a0)
    addu	$t3,$t3,$a5
    lwc1	$f0,0($t3)
    addiu	$a7,$a7,-1
    add.s	$f4,$f4,$f0
    # Line 897
    addiu	$a0,$a0,4
    bnez	$a7,.L0da0b300
    # Line 898
    swc1	$f4,0($a3)
.L0da0b320:
    beqz	$t8,.L0da0b388
    nop
    nop
    nop
.L0da0b330:
    lw	$v1,0($a0)
    addu	$v1,$v1,$a5
    lwc1	$f8,0($v1)
    add.s	$f4,$f4,$f8
    swc1	$f4,0($a3)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a5
    lwc1	$f7,0($v0)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$at,8($a0)
    addu	$at,$at,$a5
    lwc1	$f7,0($at)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$t9,12($a0)
    addu	$t9,$t9,$a5
    lwc1	$f7,0($t9)
    # Line 897
    addiu	$a0,$a0,16
    # Line 898
    add.s	$f4,$f4,$f7
    # Line 897
    bne	$a0,$a6,.L0da0b330
    # Line 898
    swc1	$f4,0($a3)
.L0da0b388:
    # Line 895
    addiu	$a3,$a3,4
    sra	$t8,$a1,0x2
    addiu	$a5,$a5,4
    # Line 900
    mul.s	$f9,$f5,$f4
    andi	$a7,$a1,0x3
    # Line 895
    beq	$a3,$t0,.L0da0b3d0
    # Line 900
    swc1	$f9,-4($a3)
    # Line 896
    lw	$a0,0($a2)
.L0da0b3a8:
    addu	$a0,$a0,$a5
    lwc1	$f4,0($a0)
    mul.s	$f4,$f6,$f4
    move	$a0,$t2
    beqz	$t1,.L0da0b388
    swc1	$f4,0($a3)
    bnez	$a7,.L0da0b300
    nop
    b	.L0da0b320
    nop
.L0da0b3d0:
    # Line 903
    jr	$ra
    nop
.L0da0b3d8:
    sra	$t8,$a1,0x2
    andi	$a7,$a1,0x3
    b	.L0da0b3a8
    # Line 896
    lw	$a0,0($a2)
.end UpdateConicalVertex

# Function: PrepCreaseVertex
# Declared: Line 907 (Source lines: 910-914)
# Address: 0x0da0b3f0 - 0x0da0b400 (Size: 16 bytes, Frame: 0)
.ent PrepCreaseVertex
PrepCreaseVertex:
    # Line 912
    sw	$a2,8($a3)
    # Line 911
    sw	$a1,4($a3)
    # Line 914
    jr	$ra
    # Line 910
    sw	$a0,0($a3)
.end PrepCreaseVertex

# Function: UpdateCreaseVertex
# Declared: Line 918 (Source lines: 919-931)
# Address: 0x0da0b400 - 0x0da0b488 (Size: 136 bytes, Frame: 0)
.ent UpdateCreaseVertex
UpdateCreaseVertex:
    # Line 919
    blez	$a0,.L0da0b480
    ldc1	$f6,_lit8_4018000000000000
    addiu	$a5,$a1,4
    sll	$a6,$a0,0x2
    ldc1	$f7,_lit8_3fc0000000000000
    move	$a4,$zero
    addu	$a6,$a6,$a2
    nop
.L0da0b420:
    # Line 924
    lw	$a7,0($a1)
    addu	$a7,$a7,$a4
    lwc1	$f4,0($a7)
    cvt.d.s	$f4,$f4
    mul.d	$f4,$f4,$f6
    cvt.s.d	$f4,$f4
    swc1	$f4,0($a2)
    # Line 926
    lw	$t1,0($a5)
    addu	$t1,$t1,$a4
    lwc1	$f5,0($t1)
    add.s	$f5,$f4,$f5
    swc1	$f5,0($a2)
    lw	$t0,4($a5)
    addu	$t0,$t0,$a4
    lwc1	$f8,0($t0)
    add.s	$f5,$f5,$f8
    # Line 923
    addiu	$a2,$a2,4
    # Line 926
    swc1	$f5,-4($a2)
    # Line 928
    cvt.d.s	$f8,$f5
    # Line 923
    addiu	$a4,$a4,4
    # Line 928
    mul.d	$f8,$f8,$f7
    cvt.s.d	$f8,$f8
    # Line 923
    bne	$a2,$a6,.L0da0b420
    # Line 928
    swc1	$f8,-4($a2)
.L0da0b480:
    # Line 931
    jr	$ra
    nop
.end UpdateCreaseVertex

# Function: UpdateVertex
# Declared: Line 935 (Source lines: 936-952)
# Address: 0x0da0b490 - 0x0da0b5a8 (Size: 280 bytes, Frame: 16)
.ent UpdateVertex
UpdateVertex:
    # Line 936
    move	$a7,$a2
    move	$a6,$a3
    move	$t0,$a1
    addiu	$sp,$sp,-16
    andi	$t1,$a1,0x1
    # Line 940
    beqz	$a0,.L0da0b4b8
    sd	$ra,0($sp)
    andi	$at,$a0,0x4
    beqz	$at,.L0da0b4e0
    # Line 942
    andi	$ra,$a0,0x10
.L0da0b4b8:
    # lw $t9, -32696($gp) # &sub_0da10000
    move	$a0,$t0
    addiu	$t9,$t9,-20112
    move	$a1,$a7
    move	$a2,$a6
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    ld	$ra,0($sp)
.L0da0b4d8:
    # Line 952
    jr	$ra
    addiu	$sp,$sp,16
.L0da0b4e0:
    # Line 942
    beqz	$ra,.L0da0b50c
    sra	$t3,$t0,0x1
    # Line 944
    # lw $t9, -32696($gp) # &sub_0da10000
    move	$a0,$a1
    addiu	$t9,$t9,-19792
    move	$a1,$a2
    move	$a2,$a3
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    b	.L0da0b4d8
    ld	$ra,0($sp)
.L0da0b50c:
    andi	$ra,$a0,0x3
    # Line 946
    move	$a0,$a4
    # Line 944
    beqz	$ra,.L0da0b53c
    # Line 946
    move	$a2,$zero
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-19456
    move	$a0,$a1
    move	$a1,$a3
    bal __glim_SubdivPatchSGIX
    move	$a2,$a4
    b	.L0da0b4d8
    ld	$ra,0($sp)
.L0da0b53c:
    blez	$a1,.L0da0b4d8
    ld	$ra,0($sp)
    sll	$a7,$a1,0x2
    beqz	$t1,.L0da0b564
    addu	$a7,$a7,$a4
    # Line 949
    lw	$t2,0($a3)
    lwc1	$f0,0($t2)
    # Line 948
    addiu	$a0,$a4,4
    li	$a2,4
    # Line 949
    swc1	$f0,0($a4)
.L0da0b564:
    beqz	$t3,.L0da0b5a0
    move	$a4,$a2
    nop
.L0da0b570:
    lw	$ra,0($a6)
    addu	$ra,$ra,$a4
    lwc1	$f2,0($ra)
    swc1	$f2,0($a0)
    lw	$t8,0($a6)
    # Line 948
    addiu	$t9,$a4,4
    # Line 949
    addu	$t8,$t8,$t9
    # Line 948
    addiu	$a0,$a0,8
    # Line 949
    lwc1	$f1,0($t8)
    # Line 948
    addiu	$a4,$a4,8
    bne	$a0,$a7,.L0da0b570
    # Line 949
    swc1	$f1,-4($a0)
.L0da0b5a0:
    b	.L0da0b4d8
    ld	$ra,0($sp)
.end UpdateVertex

# Function: SmoothPosition
# Declared: Line 956 (Source lines: 957-971)
# Address: 0x0da0b5b0 - 0x0da0b6e8 (Size: 312 bytes, Frame: 0)
.ent SmoothPosition
SmoothPosition:
    # Line 957
    blez	$a0,.L0da0b6d0
    addiu	$t2,$a2,4
    move	$a5,$zero
    sll	$t0,$a0,0x2
    la	$v0,.rodata
    slti	$t1,$a1,1
    addu	$t0,$t0,$a3
    sll	$at,$a1,0x3
    addiu	$v0,$v0,24184
    addiu	$a6,$a1,1
    addu	$at,$at,$v0
    xori	$t1,$t1,0x1
    sll	$a6,$a6,0x2
    lwc1	$f5,-4($at)
    addu	$a6,$a6,$a2
    b	.L0da0b6d8
    lwc1	$f6,-8($at)
    nop
    nop
    nop
.L0da0b600:
    # Line 966
    lw	$t3,0($a0)
    addu	$t3,$t3,$a5
    lwc1	$f0,0($t3)
    addiu	$a7,$a7,-1
    add.s	$f4,$f4,$f0
    # Line 965
    addiu	$a0,$a0,4
    bnez	$a7,.L0da0b600
    # Line 966
    swc1	$f4,0($a3)
.L0da0b620:
    beqz	$t8,.L0da0b688
    nop
    nop
    nop
.L0da0b630:
    lw	$v1,0($a0)
    addu	$v1,$v1,$a5
    lwc1	$f8,0($v1)
    add.s	$f4,$f4,$f8
    swc1	$f4,0($a3)
    lw	$v0,4($a0)
    addu	$v0,$v0,$a5
    lwc1	$f7,0($v0)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$at,8($a0)
    addu	$at,$at,$a5
    lwc1	$f7,0($at)
    add.s	$f4,$f4,$f7
    swc1	$f4,0($a3)
    lw	$t9,12($a0)
    addu	$t9,$t9,$a5
    lwc1	$f7,0($t9)
    # Line 965
    addiu	$a0,$a0,16
    # Line 966
    add.s	$f4,$f4,$f7
    # Line 965
    bne	$a0,$a6,.L0da0b630
    # Line 966
    swc1	$f4,0($a3)
.L0da0b688:
    # Line 963
    addiu	$a3,$a3,4
    sra	$t8,$a1,0x2
    addiu	$a5,$a5,4
    # Line 968
    mul.s	$f9,$f5,$f4
    andi	$a7,$a1,0x3
    # Line 963
    beq	$a3,$t0,.L0da0b6d0
    # Line 968
    swc1	$f9,-4($a3)
    # Line 964
    lw	$a0,0($a2)
.L0da0b6a8:
    addu	$a0,$a0,$a5
    lwc1	$f4,0($a0)
    mul.s	$f4,$f6,$f4
    move	$a0,$t2
    beqz	$t1,.L0da0b688
    swc1	$f4,0($a3)
    bnez	$a7,.L0da0b600
    nop
    b	.L0da0b620
    nop
.L0da0b6d0:
    # Line 971
    jr	$ra
    nop
.L0da0b6d8:
    sra	$t8,$a1,0x2
    andi	$a7,$a1,0x3
    b	.L0da0b6a8
    # Line 964
    lw	$a0,0($a2)
.end SmoothPosition

# Function: CreasePosition
# Declared: Line 975 (Source lines: 976-994)
# Address: 0x0da0b6f0 - 0x0da0b798 (Size: 168 bytes, Frame: 0)
.ent CreasePosition
CreasePosition:
    # Line 976
    blez	$a1,.L0da0b790
    lwc1	$f9,_lit_3f800000
    lwc1	$f0,_lit_40400000
    lwc1	$f5,_lit_40800000
    addiu	$a6,$a2,4
    lwc1	$f10,_lit_bf800000
    andi	$at,$a0,0x1
    sll	$a7,$a1,0x2
    ldc1	$f8,_lit8_3ff0000000000000
    move	$a5,$zero
    addu	$a7,$a7,$a3
    movz.s	$f5,$f0,$at
.L0da0b720:
    # Line 985
    lw	$t0,0($a2)
    addu	$t0,$t0,$a5
    lwc1	$f4,0($t0)
    mul.s	$f4,$f5,$f4
    swc1	$f4,0($a3)
    # Line 988
    lw	$t2,0($a6)
    add.s	$f7,$f5,$f9
    addu	$t2,$t2,$a5
    lwc1	$f11,0($t2)
    add.s	$f6,$f7,$f10
    madd.s	$f6,$f4,$f6,$f11
    swc1	$f6,0($a3)
    lw	$t1,4($a6)
    add.s	$f7,$f7,$f9
    addu	$t1,$t1,$a5
    lwc1	$f12,0($t1)
    add.s	$f11,$f7,$f10
    madd.s	$f6,$f6,$f11,$f12
    # Line 991
    cvt.d.s	$f13,$f7
    # Line 984
    addiu	$a3,$a3,4
    # Line 991
    div.d	$f13,$f8,$f13
    # Line 988
    swc1	$f6,-4($a3)
    # Line 991
    cvt.d.s	$f12,$f6
    # Line 984
    addiu	$a5,$a5,4
    # Line 991
    mul.d	$f12,$f12,$f13
    cvt.s.d	$f12,$f12
    # Line 984
    bne	$a3,$a7,.L0da0b720
    # Line 991
    swc1	$f12,-4($a3)
.L0da0b790:
    # Line 994
    jr	$ra
    nop
.end CreasePosition

# Function: FinalPosition
# Declared: Line 998 (Source lines: 999-1014)
# Address: 0x0da0b7a0 - 0x0da0b88c (Size: 236 bytes, Frame: 16)
.ent FinalPosition
FinalPosition:
    # Line 999
    move	$t0,$a2
    move	$a7,$a1
    addiu	$sp,$sp,-16
    # Line 1008
    sll	$a2,$a7,0x2
    # Line 999
    move	$a6,$a3
    # Line 1004
    beqz	$a0,.L0da0b7c8
    sd	$ra,0($sp)
    andi	$at,$a0,0x4
    beqz	$at,.L0da0b7ec
    # Line 1006
    andi	$ra,$a0,0x3
.L0da0b7c8:
    # lw $t9, -32696($gp) # &sub_0da10000
    move	$a0,$a7
    addiu	$t9,$t9,-19024
    move	$a1,$t0
    move	$a2,$a6
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    b	.L0da0b884
    ld	$ra,0($sp)
.L0da0b7ec:
    beqz	$ra,.L0da0b80c
    # Line 1008
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-18704
    move	$a2,$a3
    bal __glim_SubdivPatchSGIX
    move	$a3,$a4
    b	.L0da0b884
    ld	$ra,0($sp)
.L0da0b80c:
    blez	$a1,.L0da0b884
    ld	$ra,0($sp)
    move	$a0,$zero
    andi	$a3,$a1,0x1
    addu	$a2,$a2,$a4
    beqz	$a3,.L0da0b83c
    move	$a1,$a4
    # Line 1011
    lw	$a5,0($a6)
    lwc1	$f0,0($a5)
    # Line 1010
    addiu	$a1,$a4,4
    li	$a0,4
    # Line 1011
    swc1	$f0,0($a4)
.L0da0b83c:
    sra	$t0,$a7,0x1
    beqz	$t0,.L0da0b880
    nop
    nop
    nop
.L0da0b850:
    lw	$t3,0($a6)
    addu	$t3,$t3,$a0
    lwc1	$f2,0($t3)
    swc1	$f2,0($a1)
    lw	$t1,0($a6)
    # Line 1010
    addiu	$t2,$a0,4
    # Line 1011
    addu	$t1,$t1,$t2
    # Line 1010
    addiu	$a1,$a1,8
    # Line 1011
    lwc1	$f1,0($t1)
    # Line 1010
    addiu	$a0,$a0,8
    bne	$a1,$a2,.L0da0b850
    # Line 1011
    swc1	$f1,-4($a1)
.L0da0b880:
    ld	$ra,0($sp)
.L0da0b884:
    # Line 1014
    jr	$ra
    addiu	$sp,$sp,16
.end FinalPosition

# Function: SmoothNormal
# Declared: Line 1018 (Source lines: 1019-1036)
# Address: 0x0da0b890 - 0x0da0b9d0 (Size: 320 bytes, Frame: 48)
.ent SmoothNormal
SmoothNormal:
    # Line 1019
    addiu	$sp,$sp,-48
    # Line 1021
    mtc1	$zero,$f0
    sd	$ra,32($sp)
    # Line 1022
    swc1	$f0,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    # Line 1021
    swc1	$f0,8($sp)
    # Line 1022
    move	$a6,$zero
    # Line 1021
    swc1	$f0,4($sp)
    # Line 1022
    li	$a7,1
    blez	$a0,.L0da0b9b0
    # Line 1021
    swc1	$f0,0($sp)
    # Line 1022
    addiu	$t2,$a0,1
    sll	$t0,$a0,0x3
    la	$a4,.rodata
    addu	$t0,$t0,$a0
    addiu	$t3,$a0,-1
    addiu	$t0,$t0,1
    addiu	$a4,$a4,24256
    sll	$t0,$t0,0x2
    addiu	$a5,$a1,4
    addu	$a4,$a4,$t0
    # Line 1027
    move	$t0,$a6
    nop
.L0da0b8f0:
    addiu	$t1,$sp,16
    movz	$t0,$t3,$a7
    addiu	$a0,$sp,0
    sll	$t0,$t0,0x2
    # Line 1026
    addiu	$a7,$a7,1
    # Line 1027
    lwc1	$f4,-40($a4)
    addu	$t0,$t0,$a1
    # Line 1026
    addiu	$a4,$a4,4
    # Line 1030
    lw	$ra,0($a5)
    lwc1	$f13,0($ra)
    lwc1	$f12,0($sp)
    madd.s	$f12,$f12,$f4,$f13
    swc1	$f12,0($sp)
    # Line 1031
    lw	$t9,0($t0)
    lwc1	$f11,0($t9)
    lwc1	$f10,16($sp)
    madd.s	$f10,$f10,$f4,$f11
    swc1	$f10,16($sp)
    # Line 1030
    lw	$a3,0($a5)
    # Line 1029
    li	$v1,4
    # Line 1030
    addu	$a3,$a3,$v1
    lwc1	$f9,0($a3)
    lwc1	$f8,4($sp)
    madd.s	$f8,$f8,$f4,$f9
    swc1	$f8,4($sp)
    # Line 1031
    lw	$v0,0($t0)
    addu	$v0,$v0,$v1
    lwc1	$f7,0($v0)
    lwc1	$f6,4($t1)
    madd.s	$f6,$f6,$f4,$f7
    swc1	$f6,4($t1)
    # Line 1030
    lw	$at,0($a5)
    # Line 1029
    li	$ra,0x8
    # Line 1030
    addu	$at,$at,$ra
    lwc1	$f5,0($at)
    lwc1	$f3,8($sp)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,8($sp)
    # Line 1031
    lw	$t9,0($t0)
    addu	$t9,$t9,$ra
    lwc1	$f2,0($t9)
    lwc1	$f1,8($t1)
    madd.s	$f1,$f1,$f4,$f2
    # Line 1026
    addiu	$a6,$a6,1
    addiu	$a5,$a5,4
    # Line 1027
    move	$t0,$a6
    # Line 1031
    swc1	$f1,8($t1)
    # Line 1026
    bne	$t2,$a7,.L0da0b8f0
.L0da0b9b0:
    # Line 1035
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-21488
    addiu	$a1,$sp,16
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    # Line 1036
    jr	$ra
    addiu	$sp,$sp,48
.end SmoothNormal

# Function: CreaseNormal
# Declared: Line 1040 (Source lines: 1041-1084)
# Address: 0x0da0b9d0 - 0x0da0bc8c (Size: 700 bytes, Frame: 48)
.ent CreaseNormal
CreaseNormal:
    # Line 1043
    mtc1	$zero,$f0
    # Line 1041
    addiu	$sp,$sp,-48
    # Line 1044
    swc1	$f0,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    slti	$at,$a1,1
    # Line 1043
    swc1	$f0,8($sp)
    # Line 1044
    sll	$t0,$a1,0x3
    # Line 1043
    swc1	$f0,4($sp)
    # Line 1044
    xori	$t3,$at,0x1
    bne	$zero,$at,.L0da0ba94
    # Line 1043
    swc1	$f0,0($sp)
    # Line 1044
    addiu	$t2,$a1,1
    la	$a6,.rodata
    addu	$t0,$t0,$a1
    addiu	$t0,$t0,1
    sll	$t0,$t0,0x2
    addiu	$a6,$a6,24040
    li	$a7,1
    addu	$a6,$a6,$t0
    addiu	$a5,$a2,4
    addiu	$a6,$a6,544
    nop
    nop
.L0da0ba30:
    addiu	$t0,$sp,0
    lwc1	$f4,-40($a6)
    # Line 1051
    li	$t9,0x8
    # Line 1049
    addiu	$a6,$a6,4
    # Line 1052
    lw	$v1,0($a5)
    lwc1	$f7,0($v1)
    lwc1	$f6,0($sp)
    madd.s	$f6,$f6,$f4,$f7
    swc1	$f6,0($sp)
    lw	$at,0($a5)
    # Line 1051
    li	$v0,4
    # Line 1052
    addu	$at,$at,$v0
    lwc1	$f5,0($at)
    lwc1	$f3,4($sp)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,4($sp)
    lw	$t8,0($a5)
    addu	$t8,$t8,$t9
    lwc1	$f2,0($t8)
    lwc1	$f1,8($sp)
    madd.s	$f1,$f1,$f4,$f2
    # Line 1049
    addiu	$a7,$a7,1
    addiu	$a5,$a5,4
    # Line 1052
    swc1	$f1,8($sp)
    # Line 1049
    bne	$t2,$a7,.L0da0ba30
.L0da0ba94:
    la	$t0,.rodata
    andi	$a4,$a0,0x1
    move	$a5,$a2
    sd	$ra,32($sp)
    beqz	$a4,.L0da0bb48
    addiu	$t0,$t0,24040
    li	$a6,5
    move	$a7,$zero
    addiu	$a1,$t0,872
    nop
    nop
.L0da0bac0:
    addiu	$a0,$sp,16
    lwc1	$f4,0($a1)
    # Line 1060
    li	$t3,0x8
    # Line 1058
    addiu	$a1,$a1,4
    # Line 1061
    lw	$ra,0($a5)
    lwc1	$f13,0($ra)
    lwc1	$f12,16($sp)
    madd.s	$f12,$f12,$f4,$f13
    swc1	$f12,16($sp)
    lw	$t8,0($a5)
    # Line 1060
    li	$t9,4
    # Line 1061
    addu	$t8,$t8,$t9
    lwc1	$f11,0($t8)
    lwc1	$f10,4($a0)
    madd.s	$f10,$f10,$f4,$f11
    swc1	$f10,4($a0)
    lw	$t2,0($a5)
    addu	$t2,$t2,$t3
    lwc1	$f9,0($t2)
    lwc1	$f8,8($a0)
    madd.s	$f8,$f8,$f4,$f9
    # Line 1058
    addiu	$a7,$a7,1
    addiu	$a5,$a5,4
    # Line 1061
    swc1	$f8,8($a0)
    # Line 1058
    bne	$a7,$a6,.L0da0bac0
.L0da0bb24:
    # Line 1082
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
.L0da0bb28:
    addiu	$t9,$t9,-21488
    move	$a2,$a3
    addiu	$a1,$sp,16
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    # Line 1084
    jr	$ra
    addiu	$sp,$sp,48
.L0da0bb48:
    # Line 1058
    slti	$ra,$a1,4
    # Line 1066
    sll	$a6,$a1,0x3
    li	$a7,1
    addu	$a6,$a6,$a1
    # Line 1058
    beqz	$ra,.L0da0bbfc
    # Line 1066
    addiu	$a6,$a6,1
    # Line 1058
    bltz	$a1,.L0da0bb24
    move	$a7,$zero
    sll	$a6,$a1,0x3
    addu	$a6,$a6,$a1
    sll	$a6,$a6,0x2
    addiu	$t2,$a1,1
    addu	$a6,$t0,$a6
    move	$a5,$a2
    addiu	$a6,$a6,896
    nop
    nop
    addiu	$a0,$sp,16
.L0da0bb90:
    lwc1	$f4,-36($a6)
    # Line 1068
    li	$t3,0x8
    # Line 1066
    addiu	$a6,$a6,4
    # Line 1069
    lw	$ra,0($a5)
    lwc1	$f19,0($ra)
    lwc1	$f18,16($sp)
    madd.s	$f18,$f18,$f4,$f19
    swc1	$f18,16($sp)
    lw	$t8,0($a5)
    # Line 1068
    li	$t9,4
    # Line 1069
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    lwc1	$f16,4($a0)
    madd.s	$f16,$f16,$f4,$f17
    swc1	$f16,4($a0)
    lw	$t0,0($a5)
    addu	$t0,$t0,$t3
    lwc1	$f15,0($t0)
    lwc1	$f14,8($a0)
    madd.s	$f14,$f14,$f4,$f15
    # Line 1066
    addiu	$a7,$a7,1
    addiu	$a5,$a5,4
    # Line 1069
    swc1	$f14,8($a0)
    # Line 1066
    bne	$t2,$a7,.L0da0bb90
    # Line 1058
    addiu	$a0,$sp,16
    b	.L0da0bb28
    # Line 1082
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
.L0da0bbfc:
    # Line 1066
    beqz	$t3,.L0da0bb24
    sll	$a6,$a6,0x2
    addiu	$t2,$a1,1
    addu	$a6,$t0,$a6
    addiu	$a5,$a2,4
    addiu	$a6,$a6,896
    nop
    nop
    addiu	$a0,$sp,16
.L0da0bc20:
    lwc1	$f4,-40($a6)
    # Line 1075
    li	$t3,0x8
    # Line 1073
    addiu	$a6,$a6,4
    # Line 1076
    lw	$ra,0($a5)
    lwc1	$f31,0($ra)
    lwc1	$f29,16($sp)
    madd.s	$f29,$f29,$f4,$f31
    swc1	$f29,16($sp)
    lw	$t8,0($a5)
    # Line 1075
    li	$t9,4
    # Line 1076
    addu	$t8,$t8,$t9
    lwc1	$f27,0($t8)
    lwc1	$f25,4($a0)
    madd.s	$f25,$f25,$f4,$f27
    swc1	$f25,4($a0)
    lw	$t0,0($a5)
    addu	$t0,$t0,$t3
    lwc1	$f23,0($t0)
    lwc1	$f21,8($a0)
    madd.s	$f21,$f21,$f4,$f23
    # Line 1073
    addiu	$a7,$a7,1
    addiu	$a5,$a5,4
    # Line 1076
    swc1	$f21,8($a0)
    # Line 1073
    bne	$t2,$a7,.L0da0bc20
    # Line 1066
    addiu	$a0,$sp,16
    b	.L0da0bb28
    # Line 1082
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
.end CreaseNormal

# Function: CornerNormal
# Declared: Line 1088 (Source lines: 1089-1107)
# Address: 0x0da0bc90 - 0x0da0bdd0 (Size: 320 bytes, Frame: 48)
.ent CornerNormal
CornerNormal:
    # Line 1089
    addiu	$sp,$sp,-48
    # Line 1092
    mtc1	$zero,$f0
    sd	$ra,32($sp)
    # Line 1093
    swc1	$f0,24($sp)
    swc1	$f0,20($sp)
    swc1	$f0,16($sp)
    # Line 1092
    swc1	$f0,8($sp)
    # Line 1093
    move	$a6,$zero
    # Line 1092
    swc1	$f0,4($sp)
    # Line 1093
    li	$a7,1
    blez	$a0,.L0da0bdb0
    # Line 1092
    swc1	$f0,0($sp)
    # Line 1093
    addiu	$t2,$a0,1
    sll	$t0,$a0,0x3
    la	$a4,.rodata
    addu	$t0,$t0,$a0
    addiu	$t3,$a0,-1
    addiu	$t0,$t0,1
    addiu	$a4,$a4,24584
    sll	$t0,$t0,0x2
    addiu	$a5,$a1,4
    addu	$a4,$a4,$t0
    # Line 1097
    move	$t0,$a6
    nop
.L0da0bcf0:
    addiu	$t1,$sp,16
    movz	$t0,$t3,$a7
    addiu	$a0,$sp,0
    sll	$t0,$t0,0x2
    # Line 1096
    addiu	$a7,$a7,1
    # Line 1097
    lwc1	$f4,-40($a4)
    addu	$t0,$t0,$a1
    # Line 1096
    addiu	$a4,$a4,4
    # Line 1100
    lw	$ra,0($a5)
    lwc1	$f13,0($ra)
    lwc1	$f12,0($sp)
    madd.s	$f12,$f12,$f4,$f13
    swc1	$f12,0($sp)
    # Line 1101
    lw	$t9,0($t0)
    lwc1	$f11,0($t9)
    lwc1	$f10,16($sp)
    madd.s	$f10,$f10,$f4,$f11
    swc1	$f10,16($sp)
    # Line 1100
    lw	$a3,0($a5)
    # Line 1099
    li	$v1,4
    # Line 1100
    addu	$a3,$a3,$v1
    lwc1	$f9,0($a3)
    lwc1	$f8,4($sp)
    madd.s	$f8,$f8,$f4,$f9
    swc1	$f8,4($sp)
    # Line 1101
    lw	$v0,0($t0)
    addu	$v0,$v0,$v1
    lwc1	$f7,0($v0)
    lwc1	$f6,4($t1)
    madd.s	$f6,$f6,$f4,$f7
    swc1	$f6,4($t1)
    # Line 1100
    lw	$at,0($a5)
    # Line 1099
    li	$ra,0x8
    # Line 1100
    addu	$at,$at,$ra
    lwc1	$f5,0($at)
    lwc1	$f3,8($sp)
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,8($sp)
    # Line 1101
    lw	$t9,0($t0)
    addu	$t9,$t9,$ra
    lwc1	$f2,0($t9)
    lwc1	$f1,8($t1)
    madd.s	$f1,$f1,$f4,$f2
    # Line 1096
    addiu	$a6,$a6,1
    addiu	$a5,$a5,4
    # Line 1097
    move	$t0,$a6
    # Line 1101
    swc1	$f1,8($t1)
    # Line 1096
    bne	$t2,$a7,.L0da0bcf0
.L0da0bdb0:
    # Line 1105
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-21488
    addiu	$a1,$sp,16
    bal __glim_SubdivPatchSGIX
    addiu	$a0,$sp,0
    ld	$ra,32($sp)
    # Line 1107
    jr	$ra
    addiu	$sp,$sp,48
.end CornerNormal

# Function: ComputeNormal
# Declared: Line 1111 (Source lines: 1112-1122)
# Address: 0x0da0bdd0 - 0x0da0be4c (Size: 124 bytes, Frame: 16)
.ent ComputeNormal
ComputeNormal:
    # Line 1112
    andi	$at,$a0,0x3
    move	$a6,$a1
    addiu	$sp,$sp,-16
    move	$a5,$a2
    beqz	$at,.L0da0be00
    sd	$ra,0($sp)
    # Line 1115
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-17968
    bal __glim_SubdivPatchSGIX
    nop
    b	.L0da0be24
    ld	$ra,0($sp)
.L0da0be00:
    andi	$ra,$a0,0x8
    beqz	$ra,.L0da0be2c
    # Line 1117
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-17264
    move	$a0,$a1
    move	$a1,$a2
    bal __glim_SubdivPatchSGIX
    move	$a2,$a3
    ld	$ra,0($sp)
.L0da0be24:
    # Line 1122
    jr	$ra
    addiu	$sp,$sp,16
.L0da0be2c:
    # Line 1119
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-18288
    move	$a0,$a1
    move	$a1,$a2
    bal __glim_SubdivPatchSGIX
    move	$a2,$a3
    b	.L0da0be24
    ld	$ra,0($sp)
.end ComputeNormal

# Function: InitSubdivision
# Declared: Line 1131 (Source lines: 1132-1715)
# Address: 0x0da0be50 - 0x0da0e87c (Size: 10796 bytes, Frame: 192)
.ent InitSubdivision
InitSubdivision:
    # Line 1132
    addiu	$sp,$sp,-960
    sdc1	$f22,840($sp)
    sd	$ra,888($sp)
    sd	$s6,896($sp)
    sd	$s3,904($sp)
    sdc1	$f24,56($sp)
    sd	$s1,192($sp)
    sd	$a2,248($sp)
    sd	$a1,240($sp)
    # Line 1134
    lw	$t8,4112($zero)
    # Line 1132
    sd	$s8,208($sp)
    # Line 1137
    lw	$s1,6084($t8)
    # Line 1138
    lwc1	$f24,6076($t8)
    # Line 1136
    lw	$t9,6080($t8)
    # Line 1132
    move	$s8,$a0
    # Line 1140
    lw	$a0,6092($t8)
    # Line 1141
    lw	$a1,6096($t8)
    # Line 1142
    lw	$a2,6100($t8)
    # Line 1143
    lw	$a3,6112($t8)
    # Line 1144
    lw	$a4,6072($t8)
    # Line 1145
    lbu	$a5,6117($t8)
    sd	$a5,496($sp)
    # Line 1144
    sd	$a4,464($sp)
    # Line 1143
    sd	$a3,184($sp)
    # Line 1142
    sd	$a2,400($sp)
    # Line 1141
    sd	$a1,200($sp)
    # Line 1140
    sd	$a0,768($sp)
    # Line 1139
    lw	$at,6088($t8)
    # Line 1146
    lw	$v0,1792($t8)
    lui	$v1,0x80
    # Line 1139
    sd	$at,776($sp)
    # Line 1146
    and	$v0,$v0,$v1
    # Line 1155
    beqz	$at,.L0da0e42c
    # Line 1146
    sd	$v0,216($sp)
.L0da0bed8:
    # Line 1155
    move	$a3,$zero
.L0da0bedc:
    # Line 1156
    ld	$a6,768($sp)
    beqz	$a6,.L0da0e488
    # Line 1155
    sw	$a3,-15864($gp)
.L0da0bee8:
    sdc1	$f20,848($sp)
    sd	$s5,856($sp)
    sd	$s7,864($sp)
    sd	$s0,872($sp)
    sd	$s4,880($sp)
    # Line 1156
    move	$a3,$zero
    sd	$s2,912($sp)
.L0da0bf04:
    li	$s7,4
    li	$s4,3
    la	$t1,.rodata
    li	$s5,2
    mtc1	$zero,$f20
    la	$s2,sub_0daa0000
    move	$s0,$zero
    addiu	$t1,$t1,24040
    addiu	$s2,$s2,-3784
    addiu	$t3,$t1,1244
    sw	$a3,-15860($gp)
    b	.L0da0bf6c
    addiu	$t1,$t1,1224
.L0da0bf38:
    # Line 1167
    swc1	$f20,144($a4)
    # Line 1166
    swc1	$f20,0($a4)
.L0da0bf40:
    # Line 1163
    addiu	$a3,$a3,4
    ld	$ra,80($sp)
    addiu	$a7,$a7,4
    addiu	$a5,$a5,4
    addiu	$a4,$a4,4
    addiu	$ra,$ra,1
    sd	$ra,80($sp)
.L0da0bf5c:
    bnez	$at,.L0da0c020
    # Line 1164
    ld	$t2,80($sp)
.L0da0bf64:
    # Line 1162
    beq	$t1,$t3,.L0da0c0e4
    addiu	$s0,$s0,1
.L0da0bf6c:
    # Line 1156
    li	$t2,1
    lw	$v0,0($t1)
    mult	$v0,$s1
    # Line 1164
    li	$a1,1
    # Line 1156
    mflo	$t0
    addiu	$a3,$s2,1880
    # Line 1162
    addiu	$t1,$t1,4
    # Line 1156
    blez	$t0,.L0da0bf64
    slt	$a0,$t0,$t2
    move	$a4,$s2
    movz	$t2,$t0,$a0
    andi	$v1,$t2,0x1
    addiu	$a5,$s2,576
    addiu	$a7,$s2,1120
    sd	$zero,80($sp)
    beqz	$v1,.L0da0bf5c
    sra	$at,$t2,0x1
    # Line 1164
    beqz	$s0,.L0da0bf38
    nop
    beq	$s0,$a1,.L0da0e408
    nop
    beq	$s0,$s5,.L0da0e414
    nop
    beq	$s0,$s4,.L0da0e420
    nop
    bne	$s0,$s7,.L0da0bf40
    nop
    # Line 1183
    swc1	$f20,2276($s2)
    # Line 1184
    b	.L0da0bf40
    # Line 1182
    swc1	$f20,1880($s2)
    nop
    nop
    nop
.L0da0bff0:
    # Line 1167
    swc1	$f20,148($a4)
    # Line 1166
    swc1	$f20,4($a4)
.L0da0bff8:
    # Line 1163
    ld	$a2,80($sp)
.L0da0bffc:
    addiu	$a2,$a2,1
    addiu	$a4,$a4,8
    sd	$a2,80($sp)
    slt	$a2,$a2,$t0
    addiu	$a5,$a5,8
    addiu	$a7,$a7,8
    beqz	$a2,.L0da0bf64
    addiu	$a3,$a3,8
    # Line 1164
    ld	$t2,80($sp)
.L0da0c020:
    beqz	$s0,.L0da0c084
    li	$ra,1
    li	$a6,1
    beq	$s0,$a6,.L0da0c090
    nop
    beq	$s0,$s5,.L0da0c0a8
    nop
    beq	$s0,$s4,.L0da0c0c0
    nop
    beq	$s0,$s7,.L0da0c0d8
    nop
.L0da0c04c:
    # Line 1163
    addiu	$t2,$t2,1
    # Line 1164
    beqz	$s0,.L0da0bff0
    sd	$t2,80($sp)
    beq	$s0,$ra,.L0da0c09c
    nop
    beq	$s0,$s5,.L0da0c0b4
    nop
    beq	$s0,$s4,.L0da0c0cc
    nop
    bne	$s0,$s7,.L0da0bffc
    # Line 1163
    ld	$a2,80($sp)
    # Line 1183
    swc1	$f20,400($a3)
    # Line 1184
    b	.L0da0bff8
    # Line 1182
    swc1	$f20,4($a3)
.L0da0c084:
    # Line 1167
    swc1	$f20,144($a4)
    b	.L0da0c04c
    # Line 1166
    swc1	$f20,0($a4)
.L0da0c090:
    # Line 1171
    swc1	$f20,180($a5)
    # Line 1172
    b	.L0da0c04c
    # Line 1170
    swc1	$f20,0($a5)
.L0da0c09c:
    # Line 1171
    swc1	$f20,184($a5)
    # Line 1172
    b	.L0da0bff8
    # Line 1170
    swc1	$f20,4($a5)
.L0da0c0a8:
    # Line 1175
    swc1	$f20,252($a7)
    # Line 1176
    b	.L0da0c04c
    # Line 1174
    swc1	$f20,0($a7)
.L0da0c0b4:
    # Line 1175
    swc1	$f20,256($a7)
    # Line 1176
    b	.L0da0bff8
    # Line 1174
    swc1	$f20,4($a7)
.L0da0c0c0:
    # Line 1179
    swc1	$f20,396($a3)
    # Line 1180
    b	.L0da0c04c
    # Line 1178
    swc1	$f20,0($a3)
.L0da0c0cc:
    # Line 1179
    swc1	$f20,400($a3)
    # Line 1180
    b	.L0da0bff8
    # Line 1178
    swc1	$f20,4($a3)
.L0da0c0d8:
    # Line 1183
    swc1	$f20,396($a3)
    # Line 1184
    b	.L0da0c04c
    # Line 1182
    swc1	$f20,0($a3)
.L0da0c0e4:
    # Line 1162
    li	$at,10787
    beq	$t9,$at,.L0da0e568
    # Line 1194
    sll	$ra,$s1,0x2
    # Line 1195
    li	$v0,10793
    beq	$t9,$v0,.L0da0e700
.L0da0c0f8:
    # Line 1202
    la	$s0,sub_0da10000
    addiu	$s0,$s0,-21728
.L0da0c100:
    # Line 1213
    move	$a1,$s8
    move	$t9,$s0
    sll	$s6,$s1,0x2
    move	$a0,$s1
    addu	$a2,$s6,$s2
    sd	$a2,176($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a2,$a2,144
    # Line 1214
    addu	$a1,$s6,$s8
    addu	$s3,$s1,$s1
    move	$t9,$s0
    sll	$s3,$s3,0x2
    move	$a0,$s1
    sd	$s3,680($sp)
    addu	$s3,$s3,$s2
    bal __glim_SubdivPatchSGIX
    addiu	$a2,$s3,144
    # Line 1215
    ld	$a1,680($sp)
    move	$t9,$s0
    ld	$a2,176($sp)
    move	$a0,$s1
    addu	$a1,$a1,$s8
    addiu	$a2,$a2,288
    bal __glim_SubdivPatchSGIX
    sd	$a2,296($sp)
    # Line 1216
    addiu	$a2,$s3,288
    sll	$a1,$s1,0x2
    move	$t9,$s0
    subu	$a1,$a1,$s1
    move	$a0,$s1
    sll	$a1,$a1,0x2
    sd	$a1,488($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a1,$a1,$s8
    # Line 1217
    move	$a0,$s1
    move	$t9,$s0
    move	$a2,$s3
    sll	$a1,$s6,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a1,$s8,$a1
    # Line 1218
    addiu	$a2,$s2,288
    sll	$a1,$s1,0x2
    ld	$s3,176($sp)
    move	$t9,$s0
    addu	$a1,$a1,$s1
    sd	$a2,392($sp)
    move	$a0,$s1
    sll	$a1,$a1,0x2
    addu	$a1,$s8,$a1
    bal __glim_SubdivPatchSGIX
    sd	$a1,128($sp)
    # Line 1219
    addiu	$a2,$s3,432
    sll	$a1,$s1,0x2
    move	$t9,$s0
    subu	$a1,$a1,$s1
    sd	$a2,152($sp)
    move	$a0,$s1
    sll	$a1,$a1,0x3
    addu	$a1,$a1,$s8
    bal __glim_SubdivPatchSGIX
    sd	$a1,224($sp)
    # Line 1220
    move	$a0,$s1
    ld	$a2,488($sp)
    sll	$s3,$s1,0x3
    move	$t9,$s0
    subu	$s3,$s3,$s1
    addu	$a2,$a2,$s2
    sll	$s3,$s3,0x2
    sd	$a2,360($sp)
    addiu	$a2,$a2,144
    addu	$s3,$s8,$s3
    bal __glim_SubdivPatchSGIX
    move	$a1,$s3
    # Line 1233
    ld	$t8,240($sp)
    sd	$s3,120($sp)
    lbu	$a1,7($t8)
    # Line 1230
    lbu	$a0,6($t8)
    # Line 1229
    lbu	$v1,5($t8)
    # Line 1227
    lbu	$v0,4($t8)
    # Line 1226
    lbu	$at,3($t8)
    # Line 1225
    lbu	$ra,2($t8)
    # Line 1224
    lbu	$t9,1($t8)
    # Line 1223
    lbu	$t8,0($t8)
    # Line 1234
    sb	$a1,5179($s2)
    # Line 1233
    sb	$a1,5178($s2)
    # Line 1232
    sb	$a0,5177($s2)
    # Line 1231
    sb	$a0,5176($s2)
    # Line 1230
    sb	$a0,5175($s2)
    # Line 1229
    sb	$v1,5174($s2)
    # Line 1228
    sb	$v0,5173($s2)
    # Line 1227
    sb	$v0,5172($s2)
    # Line 1226
    sb	$at,5171($s2)
    # Line 1225
    sb	$ra,5170($s2)
    # Line 1224
    sb	$t9,5169($s2)
    # Line 1223
    sb	$t8,5168($s2)
    # Line 1237
    lbu	$at,5179($s2)
    sb	$at,5211($s2)
    lbu	$ra,5178($s2)
    sb	$ra,5210($s2)
    lbu	$t9,5177($s2)
    sb	$t9,5209($s2)
    lbu	$t8,5176($s2)
    sb	$t8,5208($s2)
    lbu	$t3,5175($s2)
    sb	$t3,5207($s2)
    lbu	$t2,5174($s2)
    sb	$t2,5206($s2)
    lbu	$t1,5173($s2)
    sb	$t1,5205($s2)
    lbu	$t0,5172($s2)
    sb	$t0,5204($s2)
    lbu	$a7,5171($s2)
    sb	$a7,5203($s2)
    lbu	$a6,5170($s2)
    sb	$a6,5202($s2)
    lbu	$a5,5169($s2)
    sb	$a5,5201($s2)
    lbu	$a2,5168($s2)
    sb	$a2,5200($s2)
    # Line 1236
    li	$s3,32
    ld	$a7,248($sp)
    addiu	$a4,$s2,5213
    addiu	$t0,$s2,5197
    ld	$a5,240($sp)
    addiu	$a3,$s2,5181
    addiu	$a7,$a7,52
    b	.L0da0e84c
    addiu	$a5,$a5,52
.L0da0c300:
    # Line 1244
    sb	$zero,1($a4)
.L0da0c304:
    # Line 1239
    addiu	$a5,$a5,8
    addiu	$a3,$a3,2
    # Line 1242
    li	$ra,1
    li	$t9,1
    # Line 1239
    beq	$a3,$t0,.L0da0c354
    addiu	$a4,$a4,2
    # Line 1240
    lw	$t8,4($a7)
.L0da0c320:
    lw	$t2,0($a7)
    lbu	$t3,-24($a5)
    lbu	$t1,-28($a5)
    # Line 1239
    addiu	$a7,$a7,8
    # Line 1240
    beq	$t2,$s3,.L0da0c34c
    sb	$t1,0($a3)
    # Line 1244
    sb	$zero,0($a4)
.L0da0c33c:
    # Line 1240
    bne	$t8,$s3,.L0da0c300
    sb	$t3,1($a3)
    # Line 1242
    b	.L0da0c304
    sb	$t9,1($a4)
.L0da0c34c:
    b	.L0da0c33c
    sb	$ra,0($a4)
.L0da0c354:
    # Line 1253
    ld	$v0,248($sp)
    lbu	$a1,2($v0)
    # Line 1250
    lbu	$at,1($v0)
    # Line 1253
    xor	$a1,$s3,$a1
    # Line 1248
    sw	$v0,-15884($gp)
    # Line 1250
    xor	$at,$s3,$at
    # Line 1253
    sltiu	$a1,$a1,1
    # Line 1250
    sltiu	$at,$at,1
    # Line 1253
    blez	$s6,.L0da0c3d0
    sd	$at,424($sp)
    sll	$a4,$s1,0x5
    addiu	$a3,$s2,5232
    sll	$a5,$s1,0x2
    addu	$a5,$a5,$s1
    sll	$a7,$s1,0x3
    sll	$a5,$a5,0x4
    addu	$a7,$a7,$s6
    addu	$a4,$a4,$s8
    sll	$a7,$a7,0x2
    addu	$a5,$a5,$s8
    addu	$a7,$a7,$s8
    nop
    nop
.L0da0c3b0:
    # Line 1259
    lwc1	$f1,0($a4)
    swc1	$f1,0($a3)
    # Line 1258
    addiu	$a4,$a4,4
    # Line 1260
    lwc1	$f0,0($a5)
    # Line 1258
    addiu	$a3,$a3,4
    addiu	$a5,$a5,4
    bne	$a4,$a7,.L0da0c3b0
    # Line 1260
    swc1	$f0,140($a3)
.L0da0c3d0:
    # Line 1258
    ld	$a6,464($sp)
    bltz	$a6,.L0da0d8ac
    addiu	$t3,$s2,3756
    sd	$t3,256($sp)
    addiu	$a6,$s2,936
    sd	$a6,376($sp)
    addiu	$a4,$s2,756
    sd	$a4,368($sp)
    addiu	$at,$s2,144
    sd	$at,384($sp)
    addiu	$ra,$s2,5376
    sd	$ra,616($sp)
    addiu	$ra,$s2,8152
    sd	$ra,456($sp)
    sd	$a1,136($sp)
    addiu	$s4,$s2,4440
    sd	$s4,264($sp)
    addiu	$s7,$s2,5232
    sd	$s7,624($sp)
    la	$s7,sub_0da10000
    ld	$t8,400($sp)
    ld	$v0,184($sp)
    addiu	$t2,$s2,2672
    sd	$t2,336($sp)
    addiu	$t8,$t8,15
    andi	$a3,$v0,0x10
    sd	$a3,480($sp)
    mult	$t8,$s1
    andi	$a2,$v0,0x800
    sd	$a2,472($sp)
    andi	$a0,$v0,0x40
    sd	$a0,536($sp)
    ld	$a5,768($sp)
    sd	$s8,144($sp)
    la	$s5,.rodata
    addiu	$t1,$s2,2276
    addiu	$a5,$a5,-1
    sd	$t1,328($sp)
    mflo	$t1
    nop
    nop
    mult	$a5,$s1
    addiu	$t9,$s2,4656
    sd	$t9,568($sp)
    addiu	$t9,$s2,4800
    sd	$t9,600($sp)
    ld	$t9,776($sp)
    andi	$v1,$v0,0x20
    sd	$v1,528($sp)
    addiu	$s5,$s5,24040
    ld	$t2,144($sp)
    addiu	$t0,$s2,1624
    addiu	$t9,$t9,-1
    sd	$t0,352($sp)
    mflo	$t0
    nop
    nop
    mult	$t9,$s1
    move	$s8,$zero
    addiu	$s5,$s5,1224
    sd	$s5,648($sp)
    li	$s4,-1
    addiu	$s7,$s7,-21344
    la	$s5,sub_0da10000
    andi	$v0,$v0,0x200
    addiu	$a7,$s2,1372
    ld	$t8,464($sp)
    sd	$v0,312($sp)
    addiu	$s5,$s5,-20416
    sll	$t1,$t1,0x2
    sd	$a7,344($sp)
    addiu	$t8,$t8,1
    addu	$t1,$t1,$t2
    sd	$t8,448($sp)
    sll	$t0,$t0,0x2
    mflo	$a7
    sd	$t1,160($sp)
    addu	$t0,$t0,$s2
    sll	$a7,$a7,0x2
    addiu	$t0,$t0,4800
    sd	$t0,592($sp)
    addu	$a7,$a7,$s2
    addiu	$a7,$a7,4656
    b	.L0da0c598
    sd	$a7,560($sp)
    nop
    nop
    nop
.L0da0c530:
    ld	$s4,944($sp)
    # Line 1264
    ld	$v0,624($sp)
.L0da0c538:
    ld	$v1,568($sp)
    ld	$a0,600($sp)
    ld	$a1,560($sp)
    ld	$a2,592($sp)
    ld	$a4,648($sp)
    ld	$a3,616($sp)
    addiu	$a4,$a4,4
    sd	$a4,648($sp)
    addiu	$a3,$a3,576
    sd	$a3,616($sp)
    addiu	$a2,$a2,576
    sd	$a2,592($sp)
    addiu	$a1,$a1,576
    sd	$a1,560($sp)
    ld	$at,448($sp)
    addiu	$s8,$s8,1
    addiu	$a0,$a0,576
    sd	$a0,600($sp)
    addiu	$s4,$s4,1
    addiu	$v1,$v1,576
    sd	$v1,568($sp)
    addiu	$v0,$v0,576
    beq	$at,$s8,.L0da0d8b8
    sd	$v0,624($sp)
.L0da0c598:
    # Line 1266
    li	$t1,4
    li	$t0,3
    ld	$a5,624($sp)
    li	$a7,2
    beqz	$s8,.L0da0d4e8
    sd	$a5,544($sp)
    li	$a6,1
    beq	$s8,$a6,.L0da0d720
    nop
    beq	$s8,$a7,.L0da0d7dc
    nop
    beq	$s8,$t0,.L0da0d840
    # Line 1297
    addiu	$at,$s2,1120
    # Line 1266
    beq	$s8,$t1,.L0da0d874
    lw	$s0,24($sp)
.L0da0c5d4:
    # Line 1308
    ld	$t2,648($sp)
    lw	$t2,-4($t2)
    sd	$t2,640($sp)
.L0da0c5e0:
    # Line 1317
    addu	$v0,$s6,$s0
    sd	$v0,672($sp)
    # Line 1316
    sw	$zero,8192($s2)
    # Line 1315
    lw	$at,20($sp)
    # Line 1317
    sw	$v0,8116($s2)
    # Line 1319
    ld	$ra,680($sp)
    # Line 1315
    addu	$v1,$s6,$at
    sd	$v1,696($sp)
    # Line 1319
    addu	$ra,$ra,$at
    sd	$ra,704($sp)
    # Line 1320
    ld	$t8,528($sp)
    # Line 1310
    ld	$a0,648($sp)
    # Line 1318
    lw	$a1,-15884($gp)
    # Line 1315
    sw	$v1,8112($s2)
    # Line 1318
    lbu	$t3,1($a1)
    # Line 1319
    sw	$ra,8120($s2)
    # Line 1320
    lbu	$t9,0($a1)
    # Line 1310
    lw	$a0,0($a0)
    sd	$a0,632($sp)
    # Line 1320
    sw	$t9,8200($s2)
    # Line 1323
    li	$a3,3
    # Line 1320
    beqz	$t8,.L0da0c658
    # Line 1318
    sw	$t3,8196($s2)
    # Line 1322
    ld	$a4,680($sp)
    lw	$a3,16($sp)
    addu	$a3,$a3,$a4
    sw	$a3,8124($s2)
    # Line 1323
    lbu	$a2,5($a1)
    li	$a3,4
    sw	$a2,8204($s2)
.L0da0c658:
    ld	$a5,776($sp)
    blez	$a5,.L0da0c7d0
    # Line 1367
    lw	$s3,32($sp)
    # Line 1323
    move	$t1,$zero
    sll	$t2,$a3,0x2
    ld	$ra,776($sp)
    move	$t0,$a1
    addu	$t2,$t2,$s2
    move	$t8,$ra
    andi	$t3,$ra,0x3
    addu	$ra,$ra,$a1
    addiu	$a7,$t2,8192
    beqz	$t3,.L0da0c6d8
    addiu	$t2,$t2,8112
.L0da0c690:
    move	$v0,$zero
    movn	$v0,$s4,$s8
    # Line 1326
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    sll	$at,$at,0x4
    addu	$at,$t1,$at
    sll	$at,$at,0x2
    # Line 1325
    addiu	$t0,$t0,1
    # Line 1326
    addu	$at,$s2,$at
    addiu	$t3,$t3,-1
    addiu	$at,$at,5232
    sw	$at,0($t2)
    # Line 1325
    addiu	$t2,$t2,4
    addiu	$a7,$a7,4
    # Line 1327
    lbu	$t9,11($t0)
    # Line 1325
    addu	$t1,$t1,$s1
    bnez	$t3,.L0da0c690
    # Line 1327
    sw	$t9,-4($a7)
.L0da0c6d8:
    sra	$v1,$t8,0x2
    beqz	$v1,.L0da0c7d0
    li	$a4,5232
    li	$a0,5232
    li	$t9,5232
    li	$a2,5232
    addu	$a2,$s2,$a2
    addu	$t9,$s2,$t9
    addu	$a0,$s2,$a0
    addu	$a4,$s2,$a4
.L0da0c700:
    move	$a5,$zero
    movn	$a5,$s4,$s8
    move	$a6,$zero
    movn	$a6,$s4,$s8
    move	$v1,$zero
    movn	$v1,$s4,$s8
    move	$v0,$zero
    movn	$v0,$s4,$s8
    # Line 1326
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    sll	$v0,$v1,0x3
    addu	$v0,$v0,$v1
    sll	$v1,$a6,0x3
    sll	$t3,$a5,0x3
    addu	$v1,$v1,$a6
    addu	$t3,$t3,$a5
    sll	$v1,$v1,0x4
    sll	$t3,$t3,0x4
    addu	$v1,$t1,$v1
    # Line 1325
    addu	$t8,$t1,$s1
    # Line 1326
    sll	$v1,$v1,0x2
    addu	$t3,$t8,$t3
    addu	$v1,$v1,$a2
    sw	$v1,0($t2)
    sll	$t3,$t3,0x2
    # Line 1327
    lbu	$v1,12($t0)
    # Line 1326
    addu	$t3,$t3,$t9
    sw	$t3,4($t2)
    sll	$v0,$v0,0x4
    # Line 1327
    lbu	$a5,13($t0)
    # Line 1325
    addu	$t1,$t8,$s1
    # Line 1326
    sll	$at,$at,0x4
    # Line 1327
    sw	$v1,0($a7)
    # Line 1326
    addu	$v0,$t1,$v0
    # Line 1327
    sw	$a5,4($a7)
    # Line 1326
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    sw	$v0,8($t2)
    # Line 1325
    addu	$t1,$t1,$s1
    # Line 1327
    lbu	$t3,14($t0)
    # Line 1326
    addu	$at,$t1,$at
    # Line 1327
    sw	$t3,8($a7)
    # Line 1326
    sll	$at,$at,0x2
    # Line 1325
    addiu	$t0,$t0,4
    # Line 1326
    addu	$at,$at,$a4
    sw	$at,12($t2)
    # Line 1325
    addiu	$a7,$a7,16
    addiu	$t2,$t2,16
    # Line 1327
    lbu	$t8,11($t0)
    # Line 1325
    addu	$t1,$t1,$s1
    bne	$t0,$ra,.L0da0c700
    # Line 1327
    sw	$t8,-4($a7)
.L0da0c7d0:
    # Line 1331
    ld	$a0,536($sp)
    ld	$v1,776($sp)
    # Line 1347
    ld	$at,640($sp)
    # Line 1329
    sw	$a3,-15872($gp)
    # Line 1331
    beqz	$a0,.L0da0c7f0
    # Line 1330
    addu	$a3,$v1,$a3
    # Line 1331
    lw	$a2,-15864($gp)
    beqz	$a2,.L0da0d754
.L0da0c7f0:
    # Line 1338
    ld	$t2,640($sp)
    addiu	$t3,$t2,-2
    mult	$t3,$s1
    # Line 1345
    ld	$a5,472($sp)
    # Line 1335
    addiu	$t1,$a3,-1
    sw	$t1,-15880($gp)
    # Line 1340
    addiu	$t2,$t2,-3
    # Line 1339
    sw	$zero,8232($s2)
    # Line 1338
    mflo	$t0
    nop
    nop
    # Line 1340
    mult	$t2,$s1
    # Line 1338
    sd	$t3,760($sp)
    # Line 1340
    sd	$t2,784($sp)
    # Line 1338
    lw	$t2,20($sp)
    sll	$t0,$t0,0x2
    sd	$t0,552($sp)
    addu	$t3,$t0,$t2
    sd	$t3,688($sp)
    # Line 1344
    addu	$t0,$t0,$s0
    sd	$t0,664($sp)
    # Line 1340
    mflo	$t1
    # Line 1338
    sw	$t3,8152($s2)
    # Line 1340
    sll	$t1,$t1,0x2
    addu	$t2,$t1,$t2
    sd	$t2,608($sp)
    # Line 1342
    addu	$t1,$t1,$s0
    sd	$t1,584($sp)
    # Line 1340
    sw	$t2,8156($s2)
    # Line 1341
    lbu	$a4,0($a1)
    # Line 1342
    sw	$t1,8160($s2)
    # Line 1343
    lbu	$a6,28($a1)
    # Line 1344
    sw	$t0,8164($s2)
    # Line 1345
    lbu	$a7,2($a1)
    sw	$a7,8244($s2)
    # Line 1343
    sw	$a6,8240($s2)
    # Line 1348
    li	$a3,4
    # Line 1345
    beqz	$a5,.L0da0c8b4
    # Line 1341
    sw	$a4,8236($s2)
    # Line 1347
    addiu	$at,$at,-1
    mult	$s1,$at
    lw	$t9,20($sp)
    mflo	$ra
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    sw	$t9,8168($s2)
    # Line 1348
    lbu	$t8,11($a1)
    li	$a3,5
    sw	$t8,8248($s2)
.L0da0c8b4:
    ld	$v0,768($sp)
    blez	$v0,.L0da0ca30
    move	$t1,$zero
    sll	$t2,$a3,0x2
    ld	$ra,768($sp)
    move	$t0,$a1
    addu	$t2,$t2,$s2
    move	$t8,$ra
    andi	$t3,$ra,0x3
    addu	$ra,$ra,$a1
    addiu	$a7,$t2,8192
    beqz	$t3,.L0da0c930
    addiu	$t2,$t2,8112
.L0da0c8e8:
    move	$v0,$zero
    movn	$v0,$s4,$s8
    # Line 1351
    sll	$at,$v0,0x3
    addu	$at,$at,$v0
    sll	$at,$at,0x4
    addu	$at,$t1,$at
    sll	$at,$at,0x2
    # Line 1350
    addiu	$t0,$t0,1
    # Line 1351
    addu	$at,$s2,$at
    addiu	$t3,$t3,-1
    addiu	$at,$at,5376
    sw	$at,40($t2)
    # Line 1350
    addiu	$t2,$t2,4
    addiu	$a7,$a7,4
    # Line 1352
    lbu	$t9,23($t0)
    # Line 1350
    addu	$t1,$t1,$s1
    bnez	$t3,.L0da0c8e8
    # Line 1352
    sw	$t9,36($a7)
.L0da0c930:
    sra	$v1,$t8,0x2
    beqz	$v1,.L0da0ca30
    li	$a2,5376
    li	$a0,5376
    li	$a4,5376
    li	$t9,5376
    addu	$t9,$s2,$t9
    addu	$a4,$s2,$a4
    addu	$a0,$s2,$a0
    addu	$a2,$s2,$a2
    nop
    nop
.L0da0c960:
    move	$at,$zero
    movn	$at,$s4,$s8
    move	$a6,$zero
    movn	$a6,$s4,$s8
    move	$a5,$zero
    movn	$a5,$s4,$s8
    move	$v1,$zero
    movn	$v1,$s4,$s8
    # Line 1350
    addu	$t8,$t1,$s1
    # Line 1351
    sll	$v0,$v1,0x3
    addu	$v0,$v0,$v1
    sll	$v1,$a5,0x3
    addu	$v1,$v1,$a5
    sll	$a5,$a6,0x3
    sll	$t3,$at,0x3
    addu	$a5,$a5,$a6
    addu	$t3,$t3,$at
    sll	$a5,$a5,0x4
    sll	$t3,$t3,0x4
    addu	$a5,$t1,$a5
    addu	$t3,$t8,$t3
    sll	$a5,$a5,0x2
    sll	$t3,$t3,0x2
    addu	$a5,$a5,$t9
    sw	$a5,40($t2)
    addu	$t3,$t3,$a4
    # Line 1352
    lbu	$at,24($t0)
    # Line 1351
    sll	$v1,$v1,0x4
    sw	$t3,44($t2)
    # Line 1350
    addu	$t1,$t8,$s1
    # Line 1352
    sw	$at,40($a7)
    # Line 1351
    addu	$v1,$t1,$v1
    sll	$v1,$v1,0x2
    # Line 1352
    lbu	$at,25($t0)
    # Line 1351
    addu	$v1,$v1,$a0
    sw	$v1,48($t2)
    sll	$v0,$v0,0x4
    # Line 1352
    lbu	$t3,26($t0)
    # Line 1350
    addu	$t1,$t1,$s1
    # Line 1352
    sw	$t3,48($a7)
    # Line 1351
    addu	$v0,$t1,$v0
    # Line 1352
    sw	$at,44($a7)
    # Line 1351
    sll	$v0,$v0,0x2
    # Line 1350
    addiu	$t0,$t0,4
    # Line 1351
    addu	$v0,$v0,$a2
    sw	$v0,52($t2)
    # Line 1350
    addiu	$a7,$a7,16
    addiu	$t2,$t2,16
    # Line 1352
    lbu	$t8,23($t0)
    # Line 1350
    addu	$t1,$t1,$s1
    bne	$t0,$ra,.L0da0c960
    # Line 1352
    sw	$t8,36($a7)
.L0da0ca30:
    # Line 1356
    ld	$a2,480($sp)
    ld	$a0,768($sp)
    # Line 1389
    ld	$t9,776($sp)
    # Line 1354
    sw	$a3,-15868($gp)
    # Line 1356
    beqz	$a2,.L0da0ca50
    # Line 1355
    addu	$a3,$a0,$a3
    # Line 1356
    lw	$a4,-15860($gp)
    beqz	$a4,.L0da0d770
.L0da0ca50:
    # Line 1363
    ld	$a5,464($sp)
    # Line 1360
    addiu	$a6,$a3,-1
    # Line 1363
    beqz	$a5,.L0da0d8b8
    # Line 1360
    sw	$a6,-15876($gp)
    # Line 1364
    beqz	$s8,.L0da0c538
    # Line 1264
    ld	$v0,624($sp)
    # Line 1364
    ld	$t0,760($sp)
    li	$a7,2
    slt	$a7,$a7,$t0
    beqz	$a7,.L0da0cb90
    sd	$a7,576($sp)
    lw	$t8,20($sp)
    ld	$s3,704($sp)
    sd	$s8,80($sp)
    ld	$s8,696($sp)
    li	$t1,1
    sd	$t1,808($sp)
    sd	$s0,104($sp)
    lw	$t3,16($sp)
    sd	$s4,944($sp)
    ld	$s4,488($sp)
    ld	$t2,680($sp)
    li	$s0,2
    addu	$t9,$s4,$t3
    sd	$t9,824($sp)
    addu	$s4,$s4,$t8
    addu	$t2,$t2,$t3
    sd	$t2,792($sp)
.L0da0cac0:
    # Line 1369
    addu	$a7,$s0,$s0
    sd	$a7,816($sp)
    addiu	$a7,$a7,-1
    mult	$s1,$a7
    move	$a3,$s8
    move	$a2,$s3
    lw	$a5,32($sp)
    move	$t9,$s7
    mflo	$a6
    ld	$a4,824($sp)
    move	$a0,$s1
    sll	$a6,$a6,0x2
    ld	$a1,792($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1376
    ld	$a7,816($sp)
    mult	$a7,$s1
    move	$a0,$s1
    move	$a2,$s3
    lw	$a5,32($sp)
    move	$t9,$s7
    mflo	$a6
    ld	$a1,824($sp)
    move	$a4,$s4
    sll	$a6,$a6,0x2
    ld	$a3,792($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1367
    ld	$t2,824($sp)
    ld	$t3,792($sp)
    ld	$t0,808($sp)
    addu	$s3,$s3,$s6
    addu	$s8,$s8,$s6
    ld	$t1,784($sp)
    addu	$t3,$t3,$s6
    sd	$t3,792($sp)
    addiu	$t0,$t0,1
    addu	$s4,$s4,$s6
    addiu	$s0,$s0,1
    sd	$t0,808($sp)
    addu	$t2,$t2,$s6
    bne	$t0,$t1,.L0da0cac0
    sd	$t2,824($sp)
    ld	$s8,80($sp)
    # Line 1389
    ld	$t8,776($sp)
    lw	$s3,32($sp)
    ld	$s4,944($sp)
    ld	$s0,104($sp)
    bnez	$t8,.L0da0cb98
    ld	$ra,496($sp)
    b	.L0da0cba4
    # Line 1390
    ld	$at,536($sp)
.L0da0cb90:
    # Line 1389
    beqz	$t9,.L0da0cba0
    ld	$ra,496($sp)
.L0da0cb98:
    beqz	$ra,.L0da0d7cc
    ld	$a3,568($sp)
.L0da0cba0:
    # Line 1390
    ld	$at,536($sp)
.L0da0cba4:
    beqz	$at,.L0da0cbc0
    # Line 1392
    ld	$a3,672($sp)
    # Line 1390
    ld	$v0,776($sp)
    # Line 1391
    move	$a3,$s0
    # Line 1390
    beqz	$v0,.L0da0d814
    lw	$t9,-15864($gp)
.L0da0cbbc:
    # Line 1392
    ld	$a3,672($sp)
.L0da0cbc0:
    # Line 1393
    ld	$a4,704($sp)
.L0da0cbc4:
    ld	$a2,696($sp)
    lb	$a7,5168($s2)
    lb	$a6,5173($s2)
    lw	$t0,16($sp)
    ld	$a1,680($sp)
    move	$t9,$s5
    lw	$v1,-15884($gp)
    addu	$a5,$a1,$s3
    addu	$a1,$a1,$t0
    sd	$a1,112($sp)
    lb	$v1,5($v1)
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    sw	$v1,4($sp)
    # Line 1402
    ld	$a0,776($sp)
    beqz	$a0,.L0da0cc10
    ld	$a1,496($sp)
    beqz	$a1,.L0da0d7d4
    ld	$a3,560($sp)
.L0da0cc10:
    # Line 1403
    ld	$a2,528($sp)
    beqz	$a2,.L0da0cc24
    ld	$a3,776($sp)
    beqz	$a3,.L0da0d830
    lw	$ra,-15864($gp)
.L0da0cc24:
    # Line 1405
    ld	$a3,704($sp)
    sd	$s0,104($sp)
.L0da0cc2c:
    # Line 1406
    ld	$a4,672($sp)
    ld	$a2,696($sp)
    ld	$a1,104($sp)
    lb	$a7,5168($s2)
    lb	$a6,5174($s2)
    lw	$t0,-15884($gp)
    move	$t9,$s5
    lw	$s0,40($sp)
    move	$a0,$s1
    lb	$t0,6($t0)
    move	$a5,$s0
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    ld	$t1,768($sp)
    beqz	$t1,.L0da0d64c
    # Line 1420
    lw	$t3,16($sp)
    ld	$t2,552($sp)
    ld	$a3,600($sp)
    addu	$t2,$t2,$t3
    sd	$t2,520($sp)
.L0da0cc7c:
    # Line 1424
    ld	$a4,632($sp)
    addiu	$a4,$a4,-1
    mult	$a4,$s1
    ld	$a2,640($sp)
    lb	$a7,5169($s2)
    addiu	$a2,$a2,-1
    lw	$t1,-15884($gp)
    mflo	$a5
    nop
    nop
    mult	$a2,$s1
    lb	$a6,5179($s2)
    lb	$t1,11($t1)
    ld	$a4,664($sp)
    lw	$t0,20($sp)
    ld	$a2,688($sp)
    sll	$a5,$a5,0x2
    sd	$a5,504($sp)
    mflo	$a1
    sll	$a1,$a1,0x2
    sd	$a1,512($sp)
    move	$t9,$s5
    addu	$a1,$a1,$t0
    lw	$t0,36($sp)
    move	$a0,$s1
    sd	$a1,432($sp)
    sw	$t1,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$t0
    ld	$a5,768($sp)
    beqz	$a5,.L0da0d678
    # Line 1434
    ld	$a0,472($sp)
    # Line 1433
    ld	$a3,592($sp)
.L0da0cd00:
    # Line 1437
    ld	$t1,632($sp)
.L0da0cd04:
    addiu	$t1,$t1,-2
    ld	$a4,608($sp)
    mult	$s1,$t1
    ld	$a2,688($sp)
    ld	$a1,520($sp)
    lb	$a7,5169($s2)
    lw	$t0,-15884($gp)
    lb	$a6,5172($s2)
    move	$t9,$s5
    lb	$t0,4($t0)
    mflo	$a5
    move	$a0,$s1
    sw	$t0,4($sp)
    sll	$a5,$a5,0x2
    sd	$a5,440($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$s3
    lw	$a7,-15884($gp)
    lw	$a6,36($sp)
    lbu	$a7,0($a7)
    ld	$a5,680($sp)
    li	$s3,32
    ld	$t1,112($sp)
    bne	$s3,$a7,.L0da0cf20
    addu	$a5,$a5,$a6
    # Line 1451
    ld	$a4,672($sp)
    lbu	$t2,5169($s2)
    move	$a3,$t1
    li	$t1,1
    ld	$a2,704($sp)
    li	$a7,1
    xor	$t1,$s8,$t1
    ld	$a1,696($sp)
    move	$t9,$s5
    movz	$a7,$t2,$t1
    lb	$a6,5168($s2)
    move	$t0,$s3
    dsll32	$a7,$a7,0x18
    sw	$t0,4($sp)
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    ld	$t2,576($sp)
    lw	$t9,16($sp)
    lw	$t8,20($sp)
    beqz	$t2,.L0da0cf0c
    ld	$ra,104($sp)
    sd	$s8,80($sp)
    ld	$s8,696($sp)
    ld	$s3,704($sp)
    ld	$t3,640($sp)
    sd	$s4,944($sp)
    ld	$s4,488($sp)
    addiu	$t3,$t3,-4
    sd	$t3,720($sp)
    addu	$t9,$s4,$t9
    sd	$t9,824($sp)
    ld	$t9,680($sp)
    addu	$s4,$s4,$t8
    li	$t8,1
    sd	$t8,808($sp)
    li	$s0,2
    addu	$t9,$t9,$ra
    sd	$t9,832($sp)
    nop
    nop
    nop
.L0da0ce10:
    # Line 1461
    # lw $t9, -32696($gp) # &sub_0da10000
    move	$a0,$s3
    addiu	$t9,$t9,-19472
    move	$a1,$s4
    move	$a2,$s8
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$s2,5128
    # Line 1465
    addu	$a4,$s0,$s0
    sd	$a4,816($sp)
    addiu	$a4,$a4,-1
    mult	$s1,$a4
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$a1,$s2,5128
    lw	$a2,36($sp)
    addiu	$t9,$t9,-19456
    mflo	$a3
    move	$a0,$s1
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$a2,$a3
    # Line 1468
    ld	$t8,816($sp)
    ld	$t3,720($sp)
    mult	$t8,$s1
    li	$a6,1
    ld	$t0,808($sp)
    move	$a2,$s4
    move	$a1,$s3
    lbu	$t2,5169($s2)
    li	$a7,1
    xor	$t0,$t0,$t3
    move	$a0,$s1
    movz	$a7,$t2,$t0
    ld	$a4,832($sp)
    move	$t9,$s5
    dsll32	$a7,$a7,0x18
    lw	$a5,36($sp)
    dsra32	$a7,$a7,0x18
    mflo	$t0
    ld	$a3,824($sp)
    li	$t1,32
    sll	$t0,$t0,0x2
    sw	$t1,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$t0
    # Line 1460
    ld	$at,824($sp)
    ld	$v0,832($sp)
    ld	$t9,808($sp)
    addu	$s3,$s3,$s6
    addu	$s8,$s8,$s6
    ld	$ra,784($sp)
    addu	$v0,$v0,$s6
    sd	$v0,832($sp)
    addiu	$t9,$t9,1
    addu	$s4,$s4,$s6
    addiu	$s0,$s0,1
    sd	$t9,808($sp)
    addu	$at,$at,$s6
    bne	$t9,$ra,.L0da0ce10
    sd	$at,824($sp)
    ld	$s8,80($sp)
    lw	$s0,40($sp)
    ld	$s4,944($sp)
    li	$s3,32
.L0da0cf0c:
    li	$v1,1
    bne	$s8,$v1,.L0da0d054
    # Line 1506
    ld	$t1,424($sp)
.L0da0cf18:
    b	.L0da0d054
    lb	$t1,5170($s2)
.L0da0cf20:
    # Line 1480
    ld	$a1,696($sp)
    move	$t9,$s7
    move	$a0,$s1
    ld	$a2,704($sp)
    move	$a3,$t1
    bal __glim_SubdivPatchSGIX
    ld	$a4,672($sp)
    ld	$a0,576($sp)
    ld	$a1,680($sp)
    lw	$t8,20($sp)
    beqz	$a0,.L0da0d048
    ld	$a2,104($sp)
    lw	$t9,16($sp)
    ld	$s3,704($sp)
    sd	$s4,944($sp)
    ld	$s4,488($sp)
    li	$s0,2
    addu	$a1,$a1,$a2
    sd	$a1,832($sp)
    addu	$t9,$s4,$t9
    sd	$t9,824($sp)
    addu	$s4,$s4,$t8
    nop
    nop
.L0da0cf80:
    # Line 1487
    # lw $t9, -32696($gp) # &sub_0da10000
    lw	$a2,16($sp)
    addiu	$t9,$t9,-20208
    move	$a0,$s1
    move	$a1,$s0
    lw	$a3,20($sp)
    ld	$a4,104($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s2,5128
    # Line 1492
    addu	$a5,$s0,$s0
    sd	$a5,816($sp)
    addiu	$a5,$a5,-1
    mult	$s1,$a5
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$a2,$s2,5128
    li	$a1,6
    lw	$a3,36($sp)
    addiu	$t9,$t9,-20112
    mflo	$a4
    move	$a0,$s1
    sll	$a4,$a4,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$a3,$a4
    # Line 1496
    ld	$a7,816($sp)
    mult	$a7,$s1
    move	$a0,$s1
    move	$a1,$s3
    lw	$a5,36($sp)
    move	$t9,$s7
    mflo	$a6
    move	$a2,$s4
    ld	$a3,824($sp)
    sll	$a6,$a6,0x2
    ld	$a4,832($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1486
    ld	$t2,832($sp)
    ld	$t0,760($sp)
    addu	$s3,$s3,$s6
    addiu	$s0,$s0,1
    ld	$t1,824($sp)
    addu	$s4,$s4,$s6
    addu	$t2,$t2,$s6
    sd	$t2,832($sp)
    addu	$t1,$t1,$s6
    bne	$t0,$s0,.L0da0cf80
    sd	$t1,824($sp)
    lw	$s0,40($sp)
    ld	$s4,944($sp)
    li	$s3,32
.L0da0d048:
    li	$t3,1
    beq	$s8,$t3,.L0da0cf18
    # Line 1506
    ld	$t1,424($sp)
.L0da0d054:
    ld	$a1,696($sp)
    ld	$a2,672($sp)
    ld	$a3,104($sp)
    ld	$a4,704($sp)
    lw	$t8,-15884($gp)
    lb	$a6,5168($s2)
    dsll32	$a7,$t1,0x18
    move	$t9,$s5
    move	$a0,$s1
    dsra32	$a7,$a7,0x18
    lb	$t8,1($t8)
    addu	$a5,$s6,$s0
    bal __glim_SubdivPatchSGIX
    sw	$t8,4($sp)
    # Line 1514
    ld	$a4,432($sp)
    ld	$a3,584($sp)
    ld	$a2,664($sp)
    ld	$a1,688($sp)
    lb	$a6,5169($s2)
    lbu	$t2,5171($s2)
    ld	$a7,136($sp)
    li	$t1,1
    lw	$t0,-15884($gp)
    xor	$t1,$s8,$t1
    move	$t9,$s5
    ld	$a5,440($sp)
    movz	$a7,$t2,$t1
    move	$a0,$s1
    lb	$t0,2($t0)
    dsll32	$a7,$a7,0x18
    addu	$a5,$a5,$s0
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    ld	$a6,576($sp)
    beqz	$a6,.L0da0d1f4
    # Line 1540
    ld	$t1,632($sp)
    sd	$s8,80($sp)
    # Line 1514
    ld	$s8,696($sp)
    ld	$s3,704($sp)
    li	$a7,1
    sd	$a7,808($sp)
    ld	$t2,672($sp)
    ld	$t1,104($sp)
    ld	$t0,680($sp)
    lw	$t8,20($sp)
    sd	$s4,944($sp)
    ld	$s4,488($sp)
    li	$s0,2
    sd	$t2,800($sp)
    addu	$s4,$s4,$t8
    addu	$t0,$t0,$t1
    sd	$t0,832($sp)
    nop
    nop
.L0da0d130:
    # Line 1525
    addu	$a7,$s0,$s0
    sd	$a7,816($sp)
    addiu	$a7,$a7,-2
    mult	$s1,$a7
    move	$a3,$s8
    move	$a2,$s3
    lw	$a5,40($sp)
    move	$t9,$s7
    mflo	$a6
    ld	$a4,832($sp)
    move	$a0,$s1
    sll	$a6,$a6,0x2
    ld	$a1,800($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1532
    ld	$a7,816($sp)
    addiu	$a7,$a7,-1
    mult	$s1,$a7
    move	$a0,$s1
    move	$a2,$s3
    lw	$a5,40($sp)
    move	$t9,$s7
    mflo	$a6
    ld	$a1,832($sp)
    move	$a3,$s4
    sll	$a6,$a6,0x2
    ld	$a4,800($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$a5,$a6
    # Line 1523
    ld	$t2,800($sp)
    ld	$t3,832($sp)
    ld	$t0,808($sp)
    addu	$s3,$s3,$s6
    addu	$s8,$s8,$s6
    ld	$t1,784($sp)
    addu	$t3,$t3,$s6
    sd	$t3,832($sp)
    addiu	$t0,$t0,1
    addu	$s4,$s4,$s6
    addu	$t2,$t2,$s6
    sd	$t2,800($sp)
    addiu	$s0,$s0,1
    bne	$t0,$t1,.L0da0d130
    sd	$t0,808($sp)
    ld	$s8,80($sp)
    lw	$s0,40($sp)
    ld	$s4,944($sp)
    li	$s3,32
    # Line 1540
    ld	$t1,632($sp)
.L0da0d1f4:
    # Line 1523
    lw	$a6,-15884($gp)
    # Line 1540
    addiu	$t1,$t1,-3
    li	$a7,1
    # Line 1523
    lbu	$a6,28($a6)
    # Line 1540
    mult	$s1,$t1
    xor	$a7,$s8,$a7
    lbu	$t1,5170($s2)
    dsll32	$t0,$a6,0x18
    xor	$a6,$s3,$a6
    ld	$a4,664($sp)
    dsra32	$t0,$t0,0x18
    sltiu	$a6,$a6,1
    ld	$a3,608($sp)
    movz	$a6,$t1,$a7
    ld	$a2,688($sp)
    move	$t9,$s5
    dsll32	$a6,$a6,0x18
    ld	$a1,584($sp)
    dsra32	$a6,$a6,0x18
    mflo	$a5
    move	$a0,$s1
    lb	$a7,5169($s2)
    sll	$a5,$a5,0x2
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s0,$a5
    ld	$a5,104($sp)
    ld	$a4,512($sp)
    li	$a6,1
    addu	$a4,$a4,$a5
    ld	$a5,504($sp)
    ld	$t1,432($sp)
    beq	$s8,$a6,.L0da0d798
    addu	$a5,$a5,$s0
    # Line 1562
    ld	$a1,664($sp)
    ld	$a3,688($sp)
    move	$t9,$s7
    move	$a0,$s1
    sd	$s4,944($sp)
    move	$a2,$t1
    bal __glim_SubdivPatchSGIX
    sd	$s8,80($sp)
    ld	$s8,80($sp)
    ld	$s4,944($sp)
    li	$s3,32
.L0da0d2a8:
    lbu	$t2,5168($s2)
    li	$a6,3
    lw	$s0,36($sp)
    beq	$a6,$t2,.L0da0d5a4
    lw	$t3,-15880($gp)
    # Line 1579
    # lw $t9, -32696($gp) # &sub_0da10000
.L0da0d2c0:
    move	$a0,$t2
    move	$a1,$s1
    addiu	$t9,$t9,-19312
    move	$a2,$t3
    addu	$a4,$s6,$s0
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$s2,8112
    lbu	$a0,5169($s2)
    li	$a3,3
    ld	$t2,440($sp)
    beq	$a3,$a0,.L0da0d5f8
    lw	$t3,-15876($gp)
    # Line 1591
    # lw $t9, -32696($gp) # &sub_0da10000
.L0da0d2f4:
    addiu	$t9,$t9,-19312
    move	$a1,$s1
    move	$a2,$t3
    ld	$a3,456($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a4,$t2,$s0
    ld	$ra,776($sp)
    blez	$ra,.L0da0d400
    # Line 1598
    ld	$a6,768($sp)
    sd	$s4,944($sp)
    # Line 1591
    addiu	$s4,$s2,5168
    addiu	$s3,$s2,5200
    ld	$a0,544($sp)
    b	.L0da0d3e0
    move	$s0,$zero
.L0da0d330:
    # Line 1599
    lbu	$t1,12($s3)
    sd	$a0,96($sp)
.L0da0d338:
    lw	$v0,-15880($gp)
    lw	$a3,-15872($gp)
    addiu	$v0,$v0,1
    addu	$a3,$a3,$s0
    mtc1	$v0,$f3
    addiu	$a4,$a3,1
    mtc1	$a4,$f2
    cvt.d.w	$f3,$f3
    cvt.d.w	$f2,$f2
    div.d	$f2,$f2,$f3
    trunc.w.d	$f2,$f2
    mfc1	$a5,$f2
    mult	$a5,$v0
    lw	$at,-15884($gp)
    lb	$a6,5168($s2)
    dsll32	$a7,$t1,0x18
    lw	$a1,8112($s2)
    addu	$at,$s0,$at
    sll	$a3,$a3,0x2
    lb	$at,12($at)
    addu	$a3,$s2,$a3
    mflo	$a5
    dsra32	$a7,$a7,0x18
    lw	$a2,8112($a3)
    subu	$a4,$a4,$a5
    lw	$a3,8108($a3)
    sll	$a4,$a4,0x2
    move	$t9,$s5
    ld	$a5,96($sp)
    addu	$a4,$s2,$a4
    teq	$v0,$zero,0x7
    lw	$a4,8112($a4)
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    sw	$at,4($sp)
    # Line 1598
    ld	$a4,776($sp)
    ld	$a0,96($sp)
    addiu	$s0,$s0,1
    addiu	$s3,$s3,1
    addiu	$s4,$s4,1
    beq	$a4,$s0,.L0da0d3f8
    addu	$a0,$a0,$s6
.L0da0d3e0:
    # Line 1591
    li	$a5,1
    bne	$s8,$a5,.L0da0d330
    nop
    # Line 1599
    lbu	$t1,12($s4)
    b	.L0da0d338
    sd	$a0,96($sp)
.L0da0d3f8:
    ld	$s4,944($sp)
    # Line 1598
    ld	$a6,768($sp)
.L0da0d400:
    blez	$a6,.L0da0c538
    # Line 1264
    ld	$v0,624($sp)
    sd	$s4,944($sp)
    # Line 1598
    addiu	$s4,$s2,5168
    addiu	$s3,$s2,5200
    ld	$a0,616($sp)
    b	.L0da0d4d0
    move	$s0,$zero
.L0da0d420:
    # Line 1610
    lbu	$t1,24($s3)
    sd	$a0,88($sp)
.L0da0d428:
    lw	$t2,-15876($gp)
    lw	$a3,-15868($gp)
    addiu	$t2,$t2,1
    addu	$a3,$a3,$s0
    mtc1	$t2,$f4
    addiu	$a4,$a3,1
    mtc1	$a4,$f3
    cvt.d.w	$f4,$f4
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    mfc1	$a5,$f3
    mult	$a5,$t2
    lw	$t0,-15884($gp)
    lb	$a6,5169($s2)
    dsll32	$a7,$t1,0x18
    lw	$a1,8152($s2)
    addu	$t0,$s0,$t0
    sll	$a3,$a3,0x2
    lb	$t0,24($t0)
    addu	$a3,$s2,$a3
    mflo	$a5
    dsra32	$a7,$a7,0x18
    lw	$a2,8152($a3)
    subu	$a4,$a4,$a5
    lw	$a3,8148($a3)
    sll	$a4,$a4,0x2
    move	$t9,$s5
    ld	$a5,88($sp)
    addu	$a4,$s2,$a4
    teq	$t2,$zero,0x7
    lw	$a4,8152($a4)
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    # Line 1609
    ld	$a4,768($sp)
    ld	$a0,88($sp)
    addiu	$s0,$s0,1
    addiu	$s3,$s3,1
    addiu	$s4,$s4,1
    beq	$a4,$s0,.L0da0c530
    addu	$a0,$a0,$s6
.L0da0d4d0:
    # Line 1598
    li	$a5,1
    bne	$s8,$a5,.L0da0d420
    nop
    # Line 1610
    lbu	$t1,24($s4)
    b	.L0da0d428
    sd	$a0,88($sp)
.L0da0d4e8:
    # Line 1268
    sw	$s2,16($sp)
    # Line 1269
    sw	$s2,32($sp)
    ld	$a7,384($sp)
    ld	$s0,392($sp)
    # Line 1268
    sw	$s0,24($sp)
    # Line 1269
    sw	$s0,40($sp)
    # Line 1273
    ld	$a6,400($sp)
    la	$ra,.rodata
    andi	$t3,$s1,0x1
    # Line 1269
    sw	$a7,36($sp)
    # Line 1268
    sw	$a7,20($sp)
    # Line 1273
    beqz	$a6,.L0da0d52c
    addiu	$ra,$ra,24040
    # Line 1274
    ld	$t1,160($sp)
    # Line 1273
    ld	$t0,496($sp)
    beqz	$t0,.L0da0d544
    nop
.L0da0d52c:
    # Line 1275
    ld	$t1,312($sp)
    beqz	$t1,.L0da0d540
    ld	$t2,400($sp)
    beqz	$t2,.L0da0d544
    # Line 1276
    ld	$t1,152($sp)
.L0da0d540:
    # Line 1278
    ld	$t1,296($sp)
.L0da0d544:
    # Line 1275
    blez	$s1,.L0da0d59c
    # Line 1309
    lw	$ra,1224($ra)
    # Line 1275
    addu	$t0,$s6,$t1
    sra	$t9,$s1,0x1
    move	$a7,$t1
    beqz	$t3,.L0da0d574
    ld	$a4,360($sp)
    # Line 1280
    ld	$t8,360($sp)
    # Line 1281
    lwc1	$f4,0($t1)
    # Line 1280
    addiu	$a7,$t1,4
    addiu	$a4,$t8,4
    # Line 1281
    swc1	$f4,288($t8)
.L0da0d574:
    beqz	$t9,.L0da0d59c
    nop
    nop
.L0da0d580:
    lwc1	$f6,0($a7)
    # Line 1280
    addiu	$a7,$a7,8
    # Line 1281
    swc1	$f6,288($a4)
    lwc1	$f5,-4($a7)
    # Line 1280
    addiu	$a4,$a4,8
    bne	$a7,$t0,.L0da0d580
    # Line 1281
    swc1	$f5,284($a4)
.L0da0d59c:
    b	.L0da0c5e0
    sd	$ra,640($sp)
.L0da0d5a4:
    # Line 1562
    blez	$t3,.L0da0d2c0
    # Line 1579
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    # Line 1562
    addiu	$a4,$s2,8192
    addiu	$a7,$s2,8112
    move	$ra,$t3
    move	$t0,$a7
    andi	$t8,$t3,0x1
    sll	$t1,$t3,0x2
    sra	$t9,$ra,0x1
    addu	$t1,$t1,$s2
    beqz	$t8,.L0da0d5e8
    addiu	$t1,$t1,8192
    lw	$t8,8192($s2)
    # Line 1574
    addiu	$a7,$a7,4
    # Line 1562
    beq	$t8,$s3,.L0da0e3e8
    # Line 1574
    addiu	$a4,$a4,4
.L0da0d5e4:
    lw	$s0,36($sp)
.L0da0d5e8:
    bnezl	$t9,.L0da0d6ac
    # Line 1562
    lw	$a2,0($a4)
.L0da0d5f0:
    b	.L0da0d2c0
    # Line 1579
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
.L0da0d5f8:
    blez	$t3,.L0da0d2f4
    # Line 1591
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    # Line 1579
    sll	$t1,$t3,0x2
    addiu	$a4,$s2,8192
    addu	$t1,$t1,$s2
    addiu	$a7,$s2,8112
    move	$ra,$t3
    andi	$t8,$t3,0x1
    sra	$t9,$ra,0x1
    move	$t0,$a7
    beqz	$t8,.L0da0d63c
    addiu	$t1,$t1,8192
    lw	$t8,8232($s2)
    # Line 1586
    addiu	$a7,$a7,4
    # Line 1579
    beq	$t8,$s3,.L0da0e3f8
    # Line 1586
    addiu	$a4,$a4,4
.L0da0d638:
    lw	$s0,36($sp)
.L0da0d63c:
    bnezl	$t9,.L0da0d6f4
    # Line 1579
    lw	$t9,40($a4)
.L0da0d644:
    b	.L0da0d2f4
    # Line 1591
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
.L0da0d64c:
    # Line 1421
    ld	$ra,480($sp)
    # Line 1423
    lw	$v1,16($sp)
    ld	$v0,552($sp)
    # Line 1421
    beqz	$ra,.L0da0d668
    lw	$at,-15860($gp)
    beqz	$at,.L0da0d9b4
    # Line 1422
    lw	$a4,16($sp)
.L0da0d668:
    # Line 1423
    addu	$v0,$v0,$v1
    ld	$a3,608($sp)
    b	.L0da0cc7c
    sd	$v0,520($sp)
.L0da0d678:
    # Line 1435
    ld	$a3,432($sp)
    # Line 1434
    beqz	$a0,.L0da0d68c
    lw	$a1,-15860($gp)
    beqz	$a1,.L0da0d9c4
    nop
.L0da0d68c:
    b	.L0da0cd00
    # Line 1436
    ld	$a3,664($sp)
    nop
    nop
    nop
.L0da0d6a0:
    # Line 1574
    beq	$a4,$t1,.L0da0d5f0
    addiu	$a7,$a7,8
    # Line 1562
    lw	$a2,0($a4)
.L0da0d6ac:
    # Line 1574
    addiu	$a4,$a4,8
    # Line 1562
    beq	$a2,$s3,.L0da0d6d0
    lw	$a3,-4($a4)
.L0da0d6b8:
    bne	$a3,$s3,.L0da0d6a0
    nop
    # Line 1576
    addiu	$t0,$t0,4
    lw	$a5,4($a7)
    b	.L0da0d6a0
    sw	$a5,-4($t0)
.L0da0d6d0:
    addiu	$t0,$t0,4
    lw	$a6,0($a7)
    b	.L0da0d6b8
    sw	$a6,-4($t0)
.L0da0d6e0:
    # Line 1579
    beq	$t8,$s3,.L0da0d710
    nop
.L0da0d6e8:
    # Line 1586
    beq	$a4,$t1,.L0da0d644
    addiu	$a7,$a7,8
    # Line 1579
    lw	$t9,40($a4)
.L0da0d6f4:
    # Line 1586
    addiu	$a4,$a4,8
    # Line 1579
    bne	$t9,$s3,.L0da0d6e0
    lw	$t8,36($a4)
    # Line 1588
    addiu	$t0,$t0,4
    lw	$ra,40($a7)
    b	.L0da0d6e0
    sw	$ra,36($t0)
.L0da0d710:
    addiu	$t0,$t0,4
    lw	$at,44($a7)
    b	.L0da0d6e8
    sw	$at,36($t0)
.L0da0d720:
    # Line 1287
    sw	$s2,16($sp)
    # Line 1288
    addiu	$v1,$s2,576
    sw	$v1,32($sp)
    # Line 1289
    ld	$v0,384($sp)
    # Line 1288
    ld	$a1,376($sp)
    ld	$a0,368($sp)
    # Line 1287
    ld	$s0,392($sp)
    sw	$s0,24($sp)
    # Line 1288
    sw	$a0,36($sp)
    sw	$a1,40($sp)
    # Line 1289
    sw	$v0,48($sp)
    b	.L0da0c5d4
    # Line 1287
    sw	$v0,20($sp)
.L0da0d754:
    # Line 1332
    sll	$a4,$a3,0x2
    addu	$a4,$a4,$s2
    sw	$s0,8112($a4)
    # Line 1333
    lbu	$a2,6($a1)
    addiu	$a3,$a3,1
    b	.L0da0c7f0
    sw	$a2,8192($a4)
.L0da0d770:
    # Line 1357
    ld	$t0,552($sp)
    lw	$a7,16($sp)
    sll	$a6,$a3,0x2
    addu	$a6,$a6,$s2
    addu	$a7,$a7,$t0
    sw	$a7,8152($a6)
    # Line 1358
    lbu	$a5,4($a1)
    addiu	$a3,$a3,1
    b	.L0da0ca50
    sw	$a5,8232($a6)
.L0da0d798:
    # Line 1554
    ld	$a1,664($sp)
    ld	$a3,688($sp)
    lb	$a7,5178($s2)
    lw	$t0,-15884($gp)
    lb	$a6,5171($s2)
    move	$t9,$s5
    move	$a0,$s1
    lb	$t0,10($t0)
    move	$a2,$t1
    bal __glim_SubdivPatchSGIX
    sw	$t0,4($sp)
    b	.L0da0d2a8
    nop
.L0da0d7cc:
    # Line 1389
    b	.L0da0cbc4
    # Line 1393
    ld	$a4,704($sp)
.L0da0d7d4:
    # Line 1402
    b	.L0da0cc2c
    sd	$s0,104($sp)
.L0da0d7dc:
    # Line 1292
    addiu	$t1,$s2,576
    sw	$t1,16($sp)
    # Line 1293
    addiu	$t3,$s2,1120
    sw	$t3,32($sp)
    # Line 1294
    ld	$t2,368($sp)
    # Line 1293
    ld	$t8,352($sp)
    sw	$t8,40($sp)
    # Line 1294
    sw	$t2,48($sp)
    # Line 1293
    ld	$s0,344($sp)
    sw	$s0,36($sp)
    # Line 1292
    sw	$t2,20($sp)
    ld	$s0,376($sp)
    # Line 1295
    b	.L0da0c5d4
    # Line 1292
    sw	$s0,24($sp)
.L0da0d814:
    # Line 1390
    bnez	$t9,.L0da0cbbc
    nop
    # Line 1391
    b	.L0da0cbc4
    # Line 1393
    ld	$a4,704($sp)
    nop
    nop
    nop
.L0da0d830:
    # Line 1403
    bnez	$ra,.L0da0cc24
    # Line 1404
    ld	$a3,112($sp)
    b	.L0da0cc2c
    sd	$s0,104($sp)
.L0da0d840:
    # Line 1297
    sw	$at,16($sp)
    # Line 1298
    addiu	$v1,$s2,1880
    sw	$v1,32($sp)
    # Line 1299
    ld	$v0,344($sp)
    # Line 1298
    ld	$a1,336($sp)
    ld	$a0,328($sp)
    # Line 1297
    ld	$s0,352($sp)
    sw	$s0,24($sp)
    # Line 1298
    sw	$a0,36($sp)
    sw	$a1,40($sp)
    # Line 1299
    sw	$v0,48($sp)
    # Line 1300
    b	.L0da0c5d4
    # Line 1297
    sw	$v0,20($sp)
.L0da0d874:
    # Line 1302
    addiu	$a2,$s2,1880
    sw	$a2,16($sp)
    # Line 1303
    addiu	$a4,$s2,3072
    sw	$a4,32($sp)
    # Line 1304
    ld	$a3,328($sp)
    # Line 1303
    ld	$a6,264($sp)
    ld	$a5,256($sp)
    # Line 1302
    ld	$s0,336($sp)
    sw	$s0,24($sp)
    # Line 1303
    sw	$a5,36($sp)
    sw	$a6,40($sp)
    # Line 1304
    sw	$a3,48($sp)
    # Line 1305
    b	.L0da0c5d4
    # Line 1302
    sw	$a3,20($sp)
.L0da0d8ac:
    sd	$s8,144($sp)
    # Line 1264
    lw	$a7,52($sp)
    sd	$a7,632($sp)
.L0da0d8b8:
    # Line 1623
    ld	$s5,632($sp)
    addiu	$s5,$s5,-1
    mult	$s1,$s5
    la	$s7,sub_0da10000
    la	$s4,sub_0da10000
    mflo	$a5
    slt	$t0,$s1,$a5
    addiu	$s4,$s4,-20208
    addiu	$s7,$s7,-19472
    sw	$zero,-15856($gp)
    beqz	$t0,.L0da0d95c
    li	$s5,32
    la	$s4,sub_0da10000
    addiu	$a2,$s2,8272
    la	$s7,sub_0da10000
    addiu	$s4,$s4,-20208
    subu	$a4,$a5,$s1
    lw	$a3,36($sp)
    addiu	$s7,$s7,-19472
    move	$a7,$a4
    andi	$a6,$a4,0x1
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$s6
    addu	$a4,$s2,$a4
    beqz	$a6,.L0da0d930
    addiu	$a4,$a4,8272
    # Line 1626
    lwc1	$f7,0($a3)
    # Line 1625
    addiu	$a3,$a3,4
    addiu	$a2,$s2,8276
    # Line 1626
    swc1	$f7,8272($s2)
.L0da0d930:
    sra	$t8,$a7,0x1
    beqz	$t8,.L0da0d95c
    nop
    nop
.L0da0d940:
    lwc1	$f9,0($a3)
    swc1	$f9,0($a2)
    # Line 1625
    addiu	$a2,$a2,8
    # Line 1626
    lwc1	$f8,4($a3)
    # Line 1625
    addiu	$a3,$a3,8
    bne	$a2,$a4,.L0da0d940
    # Line 1626
    swc1	$f8,-4($a2)
.L0da0d95c:
    # Line 1625
    c.eq.s	$f24,$f20
    li	$s8,1
    movt	$s8,$zero,$fcc0
    beqz	$s8,.L0da0e500
    # Line 1638
    ld	$t0,216($sp)
    # Line 1625
    ld	$s3,464($sp)
    la	$t0,.rodata
    addiu	$t0,$t0,24040
    sll	$s3,$s3,0x2
    addu	$t0,$s3,$t0
    lw	$t0,1224($t0)
    addiu	$t0,$t0,-2
    blez	$t0,.L0da0dab0
    # Line 1634
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    # Line 1625
    move	$t1,$zero
    move	$s0,$zero
    ldc1	$f5,_lit8_3fe0000000000000
    addiu	$a7,$s2,9640
    addu	$a5,$s6,$s2
    lw	$t2,48($sp)
    b	.L0da0e860
    addiu	$a5,$a5,9640
.L0da0d9b4:
    # Line 1422
    ld	$a3,552($sp)
    addu	$a3,$a3,$a4
    b	.L0da0cc7c
    sd	$a3,520($sp)
.L0da0d9c4:
    # Line 1435
    b	.L0da0cd04
    # Line 1437
    ld	$t1,632($sp)
    nop
.L0da0d9d0:
    # Line 1632
    lwc1	$f10,4($a2)
    add.s	$f10,$f10,$f4
    cvt.d.s	$f10,$f10
    mul.d	$f10,$f10,$f5
    cvt.s.d	$f10,$f10
    swc1	$f10,0($a3)
.L0da0d9e8:
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
.L0da0d9f0:
    sra	$a6,$s1,0x1
    bnez	$a6,.L0da0da94
    nop
.L0da0d9fc:
    # Line 1631
    addiu	$s0,$s0,1
    slt	$t3,$s0,$t0
    addu	$a5,$a5,$s6
    addu	$t1,$t1,$s1
    beqz	$t3,.L0da0daac
    addu	$a7,$a7,$s6
.L0da0da14:
    # Line 1625
    blez	$s1,.L0da0d9fc
    andi	$a6,$s1,0x1
    sra	$a3,$s0,0x1
    addiu	$a3,$a3,1
    mult	$s1,$a3
    andi	$a4,$s0,0x1
    mflo	$a2
    move	$a3,$a7
    sll	$a2,$a2,0x2
    beqz	$a6,.L0da0d9f0
    addu	$a2,$t2,$a2
    bnez	$a4,.L0da0d9d0
    lwc1	$f4,0($a2)
    b	.L0da0d9e8
    # Line 1632
    swc1	$f4,0($a7)
.L0da0da50:
    lwc1	$f11,4($a2)
    add.s	$f11,$f11,$f4
    cvt.d.s	$f11,$f11
    mul.d	$f11,$f11,$f5
    cvt.s.d	$f11,$f11
    swc1	$f11,0($a3)
.L0da0da68:
    # Line 1625
    beqz	$a4,.L0da0daa4
    lwc1	$f4,4($a2)
    # Line 1632
    lwc1	$f12,8($a2)
    add.s	$f12,$f12,$f4
    cvt.d.s	$f12,$f12
    mul.d	$f12,$f12,$f5
    cvt.s.d	$f12,$f12
    swc1	$f12,4($a3)
.L0da0da88:
    addiu	$a3,$a3,8
    beq	$a3,$a5,.L0da0d9fc
    addiu	$a2,$a2,8
.L0da0da94:
    # Line 1625
    bnez	$a4,.L0da0da50
    lwc1	$f4,0($a2)
    b	.L0da0da68
    # Line 1632
    swc1	$f4,0($a3)
.L0da0daa4:
    b	.L0da0da88
    swc1	$f4,4($a3)
.L0da0daac:
    # Line 1634
    # lw $t9, -32696($gp) # &sub_0da10000
.L0da0dab0:
    addiu	$t9,$t9,6832
    ld	$a0,464($sp)
    bal __glim_SubdivPatchSGIX
    move	$a1,$zero
    ld	$ra,216($sp)
    beqz	$ra,.L0da0e29c
    nop
    sd	$s3,920($sp)
    # Line 1638
    li	$a4,2
    ld	$a5,920($sp)
.L0da0dad8:
    sd	$zero,656($sp)
    la	$v0,.rodata
    addiu	$a0,$s2,8152
    addu	$v1,$s6,$s2
    ld	$at,464($sp)
    sd	$a0,456($sp)
    addiu	$v1,$v1,10784
    addiu	$v0,$v0,24040
    sd	$v1,304($sp)
    addu	$v1,$a5,$v0
    move	$s3,$at
    sd	$s8,64($sp)
    addiu	$s0,$at,-1
    subu	$at,$at,$a4
    addiu	$v1,$v1,1224
    sd	$v1,408($sp)
    sll	$at,$at,0x2
    sd	$v1,168($sp)
    addu	$at,$at,$v0
    addiu	$at,$at,1224
    b	.L0da0df80
    sd	$at,320($sp)
.L0da0db30:
    ld	$s0,936($sp)
    ld	$s3,928($sp)
.L0da0db38:
    # Line 1641
    ld	$a1,776($sp)
    li	$s8,5232
    blez	$a1,.L0da0dc88
    addu	$s8,$s2,$s8
    lw	$t3,-15872($gp)
    ld	$t2,776($sp)
    move	$t1,$zero
    sll	$a4,$t3,0x2
    move	$t8,$t2
    andi	$a5,$t2,0x3
    addu	$t2,$t2,$t3
    li	$t3,5232
    addu	$a4,$a4,$s2
    sll	$t2,$t2,0x2
    addiu	$a4,$a4,8112
    addu	$t2,$t2,$s2
    beqz	$a5,.L0da0dbb8
    addiu	$t2,$t2,8112
.L0da0db80:
    move	$ra,$zero
    movn	$ra,$s0,$s3
    # Line 1672
    sll	$t9,$ra,0x3
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x4
    # Line 1671
    addiu	$a4,$a4,4
    # Line 1672
    addu	$t9,$t1,$t9
    addiu	$a5,$a5,-1
    sll	$t9,$t9,0x2
    # Line 1671
    addu	$t1,$t1,$s1
    # Line 1672
    addu	$t9,$s2,$t9
    addiu	$t9,$t9,5232
    bnez	$a5,.L0da0db80
    sw	$t9,-4($a4)
.L0da0dbb8:
    sra	$at,$t8,0x2
    beqz	$at,.L0da0dc88
    li	$ra,5232
    addu	$t3,$s2,$t3
    li	$t8,5232
    addu	$ra,$s2,$ra
    addu	$t8,$s2,$t8
    nop
    nop
    nop
.L0da0dbe0:
    move	$a3,$zero
    movn	$a3,$s0,$s3
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    move	$a5,$zero
    sll	$a2,$a2,0x4
    movn	$a5,$s0,$s3
    addu	$a2,$t1,$a2
    sll	$a2,$a2,0x2
    move	$a3,$zero
    # Line 1671
    addiu	$a4,$a4,16
    movn	$a3,$s0,$s3
    addu	$at,$t1,$s1
    # Line 1672
    sll	$a1,$a3,0x3
    # Line 1671
    addu	$v0,$at,$s1
    # Line 1672
    addu	$a1,$a1,$a3
    # Line 1671
    addu	$a0,$v0,$s1
    # Line 1672
    sll	$a1,$a1,0x4
    # Line 1671
    addu	$t1,$a0,$s1
    # Line 1672
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    move	$a3,$zero
    addu	$a2,$a2,$s8
    movn	$a3,$s0,$s3
    addu	$a0,$a0,$t3
    sll	$a1,$a5,0x3
    sll	$v1,$a3,0x3
    addu	$a1,$a1,$a5
    addu	$v1,$v1,$a3
    sll	$a1,$a1,0x4
    sw	$a2,-16($a4)
    sll	$v1,$v1,0x4
    addu	$v0,$v0,$a1
    sw	$a0,-4($a4)
    addu	$at,$at,$v1
    sll	$v0,$v0,0x2
    sll	$at,$at,0x2
    addu	$v0,$v0,$t8
    sw	$v0,-8($a4)
    addu	$at,$at,$ra
    # Line 1671
    bne	$a4,$t2,.L0da0dbe0
    # Line 1672
    sw	$at,-12($a4)
.L0da0dc88:
    # Line 1671
    ld	$a4,768($sp)
    ld	$t2,768($sp)
    move	$t1,$zero
    li	$s8,5376
    lw	$t3,-15868($gp)
    blez	$a4,.L0da0ddd8
    addu	$s8,$s2,$s8
    sll	$a4,$t3,0x2
    move	$t8,$t2
    andi	$a5,$t2,0x3
    addu	$t2,$t2,$t3
    addu	$a4,$a4,$s2
    sll	$t2,$t2,0x2
    addiu	$a4,$a4,8112
    addu	$t2,$t2,$s2
    beqz	$a5,.L0da0dd04
    addiu	$t2,$t2,8112
.L0da0dccc:
    move	$ra,$zero
    movn	$ra,$s0,$s3
    # Line 1675
    sll	$t9,$ra,0x3
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x4
    # Line 1674
    addiu	$a4,$a4,4
    # Line 1675
    addu	$t9,$t1,$t9
    addiu	$a5,$a5,-1
    sll	$t9,$t9,0x2
    # Line 1674
    addu	$t1,$t1,$s1
    # Line 1675
    addu	$t9,$s2,$t9
    addiu	$t9,$t9,5376
    bnez	$a5,.L0da0dccc
    sw	$t9,36($a4)
.L0da0dd04:
    li	$t3,5376
    sra	$at,$t8,0x2
    beqz	$at,.L0da0ddd8
    li	$ra,5376
    addu	$t3,$s2,$t3
    li	$t8,5376
    addu	$ra,$s2,$ra
    addu	$t8,$s2,$t8
    nop
    nop
    nop
.L0da0dd30:
    move	$a3,$zero
    movn	$a3,$s0,$s3
    sll	$a2,$a3,0x3
    addu	$a2,$a2,$a3
    move	$a5,$zero
    sll	$a2,$a2,0x4
    movn	$a5,$s0,$s3
    addu	$a2,$t1,$a2
    sll	$a2,$a2,0x2
    move	$a3,$zero
    # Line 1674
    addiu	$a4,$a4,16
    movn	$a3,$s0,$s3
    addu	$at,$t1,$s1
    # Line 1675
    sll	$a1,$a3,0x3
    # Line 1674
    addu	$v0,$at,$s1
    # Line 1675
    addu	$a1,$a1,$a3
    # Line 1674
    addu	$a0,$v0,$s1
    # Line 1675
    sll	$a1,$a1,0x4
    # Line 1674
    addu	$t1,$a0,$s1
    # Line 1675
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    move	$a3,$zero
    addu	$a2,$a2,$s8
    movn	$a3,$s0,$s3
    addu	$a0,$a0,$t3
    sll	$a1,$a5,0x3
    sll	$v1,$a3,0x3
    addu	$a1,$a1,$a5
    addu	$v1,$v1,$a3
    sll	$a1,$a1,0x4
    sw	$a2,24($a4)
    sll	$v1,$v1,0x4
    addu	$v0,$v0,$a1
    sw	$a0,36($a4)
    addu	$at,$at,$v1
    sll	$v0,$v0,0x2
    sll	$at,$at,0x2
    addu	$v0,$v0,$t8
    sw	$v0,32($a4)
    addu	$at,$at,$ra
    # Line 1674
    bne	$a4,$t2,.L0da0dd30
    # Line 1675
    sw	$at,28($a4)
.L0da0ddd8:
    # Line 1674
    lbu	$t2,5168($s2)
    li	$a4,3
    beq	$a4,$t2,.L0da0e15c
    lw	$t3,-15880($gp)
    # Line 1679
    lw	$a5,-15888($gp)
.L0da0ddec:
    beqz	$a5,.L0da0de2c
    # Line 1685
    lw	$a5,-15856($gp)
    li	$a6,684
    multu	$a5,$a6
    move	$a0,$t2
    # lw $t9, -32696($gp) # &sub_0da10000
    move	$a1,$s1
    move	$a2,$t3
    addiu	$t9,$t9,-18528
    mflo	$a4
    addiu	$a3,$s2,8112
    addu	$a4,$s2,$a4
    bal __glim_SubdivPatchSGIX
    addiu	$a4,$a4,8272
    lbu	$t2,5168($s2)
    lw	$t3,-15880($gp)
.L0da0de2c:
    # Line 1686
    lw	$v0,-15856($gp)
    sll	$at,$v0,0x3
    subu	$at,$at,$v0
    addiu	$a2,$s2,8112
    la	$s8,sub_0da10000
    sll	$at,$at,0x3
    addiu	$a3,$s2,10784
    ld	$ra,168($sp)
    addu	$at,$at,$v0
    addiu	$s8,$s8,-16944
    ld	$v0,408($sp)
    sll	$at,$at,0x2
    move	$t9,$s8
    addu	$at,$s2,$at
    xor	$ra,$ra,$v0
    addiu	$at,$at,10328
    move	$a1,$t3
    movz	$a3,$at,$ra
    bal __glim_SubdivPatchSGIX
    andi	$a0,$t2,0xff
    lbu	$a0,5169($s2)
    li	$v0,3
    beq	$v0,$a0,.L0da0e1ac
    lw	$t3,-15876($gp)
    # Line 1690
    lw	$v1,-15888($gp)
.L0da0de90:
    beqz	$v1,.L0da0df00
    ld	$ra,408($sp)
    # Line 1696
    ld	$a7,416($sp)
    lw	$a6,-15856($gp)
    sll	$a5,$a6,0x2
    addiu	$a7,$a7,-3
    mult	$s1,$a7
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    # lw $t9, -32696($gp) # &sub_0da10000
    subu	$a5,$a5,$a6
    mflo	$a4
    move	$a1,$s1
    addu	$a4,$a4,$a5
    addiu	$t9,$t9,-18528
    sll	$a4,$a4,0x2
    move	$a2,$t3
    addu	$a4,$s2,$a4
    ld	$a3,456($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a4,$a4,8272
    lbu	$a0,5169($s2)
    lw	$t3,-15876($gp)
    ld	$ra,408($sp)
.L0da0df00:
    # Line 1698
    lw	$v0,-15856($gp)
    # Line 1696
    ld	$a4,416($sp)
    ld	$s8,168($sp)
    # Line 1698
    sll	$at,$v0,0x3
    # Line 1696
    sll	$a3,$a4,0x2
    # Line 1698
    subu	$at,$at,$v0
    xor	$ra,$s8,$ra
    sll	$at,$at,0x3
    # lw $t9, -32696($gp) # &sub_0da10000
    # Line 1696
    subu	$a3,$a3,$a4
    # Line 1698
    addu	$at,$at,$v0
    addu	$at,$a3,$at
    sll	$a3,$a3,0x2
    addiu	$t9,$t9,-16944
    sll	$at,$at,0x2
    addu	$a3,$s2,$a3
    addu	$at,$s2,$at
    addiu	$a3,$a3,10748
    addiu	$at,$at,10292
    movz	$a3,$at,$ra
    move	$a1,$t3
    bal __glim_SubdivPatchSGIX
    ld	$a2,456($sp)
    # Line 1638
    ld	$v0,320($sp)
    ld	$v1,656($sp)
    addiu	$s8,$s8,-4
    sd	$s8,168($sp)
    addiu	$s0,$s0,-1
    addiu	$s3,$s3,-1
    addiu	$v1,$v1,1
    beq	$s8,$v0,.L0da0e280
    sd	$v1,656($sp)
.L0da0df80:
    # Line 1639
    ld	$a1,168($sp)
    lw	$a1,0($a1)
    ld	$a2,304($sp)
    slti	$a0,$a1,5
    sd	$a1,416($sp)
    addiu	$a1,$a1,-2
    bnez	$a0,.L0da0db38
    sd	$a1,712($sp)
    ld	$a5,680($sp)
    sd	$s6,736($sp)
    sd	$s3,928($sp)
    lw	$s3,36($sp)
    sd	$a2,752($sp)
    sd	$a5,728($sp)
    sd	$s0,936($sp)
    move	$s8,$s1
    ld	$a3,488($sp)
    li	$s0,2
    b	.L0da0e870
    sd	$a3,744($sp)
.L0da0dfd0:
    # Line 1653
    move	$a0,$s1
    move	$t9,$s4
    move	$a1,$s0
    lw	$a4,40($sp)
    addiu	$a5,$s2,5128
    move	$a3,$s3
    bal __glim_SubdivPatchSGIX
    lw	$a2,32($sp)
    lw	$a6,-15888($gp)
    beqz	$a6,.L0da0e044
    # Line 1659
    lw	$a4,-15856($gp)
    sll	$a3,$a4,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    move	$a0,$s1
    # lw $t9, -32696($gp) # &sub_0da10000
    subu	$a3,$a3,$a4
    addiu	$a2,$s2,5128
    addu	$a3,$s8,$a3
    addiu	$t9,$t9,-19024
    sll	$a3,$a3,0x2
    li	$a1,6
    addu	$a3,$s2,$a3
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$a3,8272
.L0da0e044:
    # Line 1663
    lw	$v0,-15856($gp)
    sll	$at,$v0,0x3
    subu	$at,$at,$v0
    sll	$at,$at,0x3
    addu	$at,$at,$v0
    ld	$a2,752($sp)
    addu	$at,$s8,$at
    # lw $t9, -32696($gp) # &sub_0da10000
    sll	$at,$at,0x2
    ld	$ra,656($sp)
    addu	$at,$s2,$at
    addiu	$t9,$t9,-18288
    addiu	$at,$at,10328
    addiu	$a1,$s2,5128
    movz	$a2,$at,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
    # Line 1639
    lw	$a1,-15884($gp)
.L0da0e08c:
    # Line 1641
    ld	$v0,712($sp)
    ld	$a0,728($sp)
    ld	$v1,752($sp)
    addu	$a0,$a0,$s6
    sd	$a0,728($sp)
    ld	$a0,736($sp)
    addiu	$s0,$s0,1
    addu	$v1,$v1,$s6
    sd	$v1,752($sp)
    slt	$v0,$s0,$v0
    ld	$v1,744($sp)
    addu	$s8,$s8,$s1
    addu	$a0,$a0,$s6
    sd	$a0,736($sp)
    addu	$v1,$v1,$s6
    beqz	$v0,.L0da0db30
    sd	$v1,744($sp)
    # Line 1639
    lbu	$a1,0($a1)
.L0da0e0d4:
    bne	$s5,$a1,.L0da0dfd0
    # Line 1643
    ld	$a1,736($sp)
    ld	$a2,744($sp)
    addiu	$a3,$s2,5128
    ld	$a0,728($sp)
    move	$t9,$s7
    addu	$a2,$a2,$s3
    addu	$a1,$a1,$s3
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s3
    lw	$a3,-15888($gp)
    beqz	$a3,.L0da0e08c
    # Line 1639
    lw	$a1,-15884($gp)
    # Line 1648
    lw	$a4,-15856($gp)
    sll	$a3,$a4,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addiu	$a2,$s2,5128
    # lw $t9, -32696($gp) # &sub_0da10000
    subu	$a3,$a3,$a4
    move	$a1,$s1
    addu	$a3,$s8,$a3
    addiu	$t9,$t9,-18704
    sll	$a3,$a3,0x2
    li	$a0,1
    addu	$a3,$s2,$a3
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$a3,8272
    b	.L0da0e08c
    # Line 1639
    lw	$a1,-15884($gp)
.L0da0e15c:
    # Line 1674
    blez	$t3,.L0da0ddec
    # Line 1679
    lw	$a5,-15888($gp)
    # Line 1674
    addiu	$a4,$s2,8192
    addiu	$a7,$s2,8112
    move	$a5,$t3
    move	$t0,$a7
    andi	$t8,$t3,0x1
    sll	$t1,$t3,0x2
    sra	$t9,$a5,0x1
    addu	$t1,$t1,$s2
    beqz	$t8,.L0da0e19c
    addiu	$t1,$t1,8192
    lw	$t8,8192($s2)
    # Line 1679
    addiu	$a7,$a7,4
    # Line 1674
    beq	$t8,$s5,.L0da0e82c
    # Line 1679
    addiu	$a4,$a4,4
.L0da0e19c:
    bnezl	$t9,.L0da0e214
    # Line 1674
    lw	$ra,0($a4)
.L0da0e1a4:
    b	.L0da0ddec
    # Line 1679
    lw	$a5,-15888($gp)
.L0da0e1ac:
    # Line 1686
    blez	$t3,.L0da0de90
    # Line 1690
    lw	$v1,-15888($gp)
    # Line 1686
    sll	$t1,$t3,0x2
    addiu	$a4,$s2,8192
    addu	$t1,$t1,$s2
    addiu	$a7,$s2,8112
    move	$a5,$t3
    andi	$t2,$t3,0x1
    sra	$t8,$a5,0x1
    move	$t0,$a7
    beqz	$t2,.L0da0e1ec
    addiu	$t1,$t1,8192
    lw	$t2,8232($s2)
    # Line 1690
    addiu	$a7,$a7,4
    # Line 1686
    beq	$t2,$s5,.L0da0e83c
    # Line 1690
    addiu	$a4,$a4,4
.L0da0e1ec:
    bnezl	$t8,.L0da0e24c
    # Line 1686
    lw	$v1,40($a4)
.L0da0e1f4:
    b	.L0da0de90
    # Line 1690
    lw	$v1,-15888($gp)
    nop
.L0da0e200:
    # Line 1674
    beq	$t9,$s5,.L0da0e230
    nop
.L0da0e208:
    # Line 1679
    beq	$a4,$t1,.L0da0e1a4
    addiu	$a7,$a7,8
    # Line 1674
    lw	$ra,0($a4)
.L0da0e214:
    # Line 1679
    addiu	$a4,$a4,8
    # Line 1674
    bne	$ra,$s5,.L0da0e200
    lw	$t9,-4($a4)
    # Line 1681
    addiu	$t0,$t0,4
    lw	$at,0($a7)
    b	.L0da0e200
    sw	$at,-4($t0)
.L0da0e230:
    addiu	$t0,$t0,4
    lw	$v0,4($a7)
    b	.L0da0e208
    sw	$v0,-4($t0)
.L0da0e240:
    # Line 1690
    beq	$a4,$t1,.L0da0e1f4
    addiu	$a7,$a7,8
    # Line 1686
    lw	$v1,40($a4)
.L0da0e24c:
    # Line 1690
    addiu	$a4,$a4,8
    # Line 1686
    beq	$v1,$s5,.L0da0e270
    lw	$a1,36($a4)
.L0da0e258:
    bne	$a1,$s5,.L0da0e240
    nop
    # Line 1692
    addiu	$t0,$t0,4
    lw	$a2,44($a7)
    b	.L0da0e240
    sw	$a2,36($t0)
.L0da0e270:
    addiu	$t0,$t0,4
    lw	$a3,40($a7)
    b	.L0da0e258
    sw	$a3,36($t0)
.L0da0e280:
    # Line 1638
    ld	$a4,64($sp)
    beqz	$a4,.L0da0e29c
    # Line 1702
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,7216
    ld	$a0,464($sp)
    bal __glim_SubdivPatchSGIX
    lw	$a1,-15856($gp)
.L0da0e29c:
    blez	$s6,.L0da0e304
    # Line 1712
    ld	$a5,200($sp)
    # Line 1702
    sll	$a4,$s1,0x2
    sll	$a2,$s1,0x6
    subu	$a4,$a4,$s1
    addiu	$a3,$s2,5232
    ld	$a6,144($sp)
    sll	$a5,$a4,0x2
    sll	$a4,$a4,0x4
    addu	$a5,$a5,$s6
    addu	$a2,$a2,$a6
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a6
    addu	$a5,$a5,$a6
    nop
    nop
    nop
.L0da0e2e0:
    # Line 1708
    lwc1	$f14,0($a4)
    swc1	$f14,0($a3)
    # Line 1707
    addiu	$a4,$a4,4
    # Line 1709
    lwc1	$f13,0($a2)
    # Line 1707
    addiu	$a3,$a3,4
    addiu	$a2,$a2,4
    bne	$a4,$a5,.L0da0e2e0
    # Line 1709
    swc1	$f13,140($a3)
    # Line 1712
    ld	$a5,200($sp)
.L0da0e304:
    beqz	$a5,.L0da0e514
    ld	$a6,224($sp)
.L0da0e30c:
    move	$a0,$zero
.L0da0e310:
    # Line 1713
    ld	$a6,400($sp)
    bnez	$a6,.L0da0e3a8
    # Line 1712
    sw	$a0,-15864($gp)
    # Line 1713
    ld	$a7,120($sp)
    ld	$t0,224($sp)
    lwc1	$f16,0($a7)
    lwc1	$f15,0($t0)
    c.eq.s $f15,$f16
    bc1f .L0da0e3a8
    ld	$t1,120($sp)
    ld	$t2,224($sp)
    lwc1	$f18,4($t1)
    lwc1	$f17,4($t2)
    c.eq.s $f17,$f18
    bc1f .L0da0e3a8
    ld	$t3,120($sp)
    ld	$t8,224($sp)
    lwc1	$f21,8($t3)
    lwc1	$f19,8($t8)
    c.eq.s $f19,$f21
    bc1f .L0da0e3a8
    li	$t9,1
    sw	$t9,-15860($gp)
    ld	$s2,912($sp)
    ld	$s3,904($sp)
    ld	$s6,896($sp)
    ld	$s4,880($sp)
    ld	$s0,872($sp)
    ld	$s7,864($sp)
    ld	$s5,856($sp)
    ldc1	$f20,848($sp)
    ldc1	$f22,840($sp)
    ld	$ra,888($sp)
    # Line 1715
    ld	$s1,192($sp)
    ld	$s8,208($sp)
    ldc1	$f24,56($sp)
    jr	$ra
    addiu	$sp,$sp,960
.L0da0e3a8:
    # Line 1713
    sw	$zero,-15860($gp)
    ld	$s5,856($sp)
    ld	$s7,864($sp)
    ld	$s0,872($sp)
    ld	$s4,880($sp)
    ld	$s6,896($sp)
    ld	$s3,904($sp)
    ld	$s2,912($sp)
    ldc1	$f22,840($sp)
    ldc1	$f20,848($sp)
    ld	$ra,888($sp)
    # Line 1715
    ld	$s1,192($sp)
    ld	$s8,208($sp)
    ldc1	$f24,56($sp)
    jr	$ra
    addiu	$sp,$sp,960
.L0da0e3e8:
    # Line 1576
    lw	$at,8112($s2)
    addiu	$t0,$s2,8116
    b	.L0da0d5e4
    sw	$at,8112($s2)
.L0da0e3f8:
    # Line 1588
    lw	$v0,8152($s2)
    addiu	$t0,$s2,8116
    b	.L0da0d638
    sw	$v0,8152($s2)
.L0da0e408:
    # Line 1171
    swc1	$f20,756($s2)
    # Line 1172
    b	.L0da0bf40
    # Line 1170
    swc1	$f20,576($s2)
.L0da0e414:
    # Line 1175
    swc1	$f20,1372($s2)
    # Line 1176
    b	.L0da0bf40
    # Line 1174
    swc1	$f20,1120($s2)
.L0da0e420:
    # Line 1179
    swc1	$f20,2276($s2)
    # Line 1180
    b	.L0da0bf40
    # Line 1178
    swc1	$f20,1880($s2)
.L0da0e42c:
    # Line 1155
    sll	$a3,$s1,0x2
    addu	$a3,$a3,$s1
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$s8
    sll	$a4,$s1,0x4
    lwc1	$f23,0($a3)
    addu	$a4,$a4,$s8
    lwc1	$f25,0($a4)
    c.eq.s $f23,$f25
    bc1f .L0da0bed8
    nop
    lwc1	$f27,4($a3)
    lwc1	$f29,4($a4)
    c.eq.s $f27,$f29
    bc1f .L0da0bed8
    nop
    lwc1	$f31,8($a3)
    lwc1	$f0,8($a4)
    c.eq.s $f31,$f0
    bc1f .L0da0bedc
    move	$a3,$zero
    b	.L0da0bedc
    li	$a3,1
.L0da0e488:
    # Line 1156
    sll	$a5,$s1,0x3
    sll	$a4,$s1,0x4
    subu	$a5,$a5,$s1
    addu	$a4,$a4,$s8
    sll	$a5,$a5,0x2
    lwc1	$f2,0($a4)
    addu	$a5,$a5,$s8
    lwc1	$f1,0($a5)
    c.eq.s $f1,$f2
    bc1f .L0da0bee8
    sd	$a5,120($sp)
    ld	$a6,120($sp)
    lwc1	$f4,4($a4)
    lwc1	$f3,4($a6)
    c.eq.s	$f3,$f4
    bc1f	.L0da0bee8
    ld	$a7,120($sp)
    lwc1	$f6,8($a4)
    lwc1	$f5,8($a7)
    c.eq.s $f5,$f6
    bc1f .L0da0bee8
    nop
    sdc1	$f20,848($sp)
    sd	$s5,856($sp)
    sd	$s7,864($sp)
    sd	$s0,872($sp)
    sd	$s4,880($sp)
    li	$a3,1
    b	.L0da0bf04
    sd	$s2,912($sp)
.L0da0e500:
    # Line 1638
    beqz	$t0,.L0da0e29c
    ld	$a5,464($sp)
    li	$a4,1
    b	.L0da0dad8
    sll	$a5,$a5,0x2
.L0da0e514:
    # Line 1712
    ld	$a7,128($sp)
    lwc1	$f8,0($a6)
    lwc1	$f7,0($a7)
    c.eq.s $f7,$f8
    bc1f .L0da0e30c
    ld	$t0,224($sp)
    ld	$t1,128($sp)
    lwc1	$f10,4($t0)
    lwc1	$f9,4($t1)
    c.eq.s $f9,$f10
    bc1f .L0da0e310
    move	$a0,$zero
    ld	$t2,224($sp)
    ld	$t3,128($sp)
    lwc1	$f12,8($t2)
    lwc1	$f11,8($t3)
    c.eq.s $f11,$f12
    bc1f .L0da0e310
    move	$a0,$zero
    b	.L0da0e310
    li	$a0,1
.L0da0e568:
    # Line 1194
    ldc1	$f22,_lit8_3f70101010101010
    subu	$s3,$ra,$s1
    addiu	$s6,$s8,-28
    sd	$s6,72($sp)
    sll	$s3,$s3,0x3
    addiu	$s0,$s8,644
    la	$s6,sub_0da10000
    subu	$s3,$s3,$s1
    sd	$ra,288($sp)
    li	$t9,7
    sll	$s3,$s3,0x2
    sw	$t9,6084($t8)
    addiu	$s6,$s6,-21616
    addu	$s3,$s3,$s8
.L0da0e5a0:
    # Line 1196
    move	$t9,$s6
    move	$a0,$s1
    move	$a1,$s3
    bal __glim_SubdivPatchSGIX
    move	$a2,$s0
    # Line 1197
    lwc1	$f17,12($s0)
    trunc.w.s	$f17,$f17
    mfc1	$t9,$f17
    andi	$at,$t9,0xff
    dmtc1	$at,$f15
    srl	$v0,$t9,0x18
    dmtc1	$v0,$f16
    srl	$ra,$t9,0x10
    srl	$t9,$t9,0x8
    andi	$ra,$ra,0xff
    andi	$t9,$t9,0xff
    dmtc1	$ra,$f14
    cvt.s.l	$f16,$f16
    dmtc1	$t9,$f13
    cvt.s.l	$f15,$f15
    cvt.s.l	$f14,$f14
    cvt.s.l	$f13,$f13
    cvt.d.s	$f16,$f16
    cvt.d.s	$f15,$f15
    mul.d	$f16,$f16,$f22
    cvt.d.s	$f14,$f14
    mul.d	$f15,$f15,$f22
    cvt.d.s	$f13,$f13
    # Line 1195
    addiu	$s0,$s0,-28
    ld	$t8,288($sp)
    # Line 1197
    cvt.s.d	$f16,$f16
    mul.d	$f14,$f14,$f22
    cvt.s.d	$f15,$f15
    swc1	$f16,40($s0)
    mul.d	$f13,$f13,$f22
    # Line 1196
    move	$a0,$s1
    move	$t9,$s6
    # Line 1197
    swc1	$f15,52($s0)
    cvt.s.d	$f14,$f14
    # Line 1196
    move	$a2,$s0
    # Line 1195
    subu	$s3,$s3,$t8
    # Line 1197
    cvt.s.d	$f13,$f13
    swc1	$f14,44($s0)
    # Line 1196
    move	$a1,$s3
    bal __glim_SubdivPatchSGIX
    # Line 1197
    swc1	$f13,48($s0)
    lwc1	$f25,12($s0)
    trunc.w.s	$f25,$f25
    mfc1	$a1,$f25
    andi	$a3,$a1,0xff
    dmtc1	$a3,$f21
    srl	$a4,$a1,0x18
    dmtc1	$a4,$f23
    srl	$a2,$a1,0x10
    srl	$a1,$a1,0x8
    andi	$a2,$a2,0xff
    andi	$a1,$a1,0xff
    dmtc1	$a2,$f19
    cvt.s.l	$f23,$f23
    dmtc1	$a1,$f18
    cvt.s.l	$f21,$f21
    cvt.s.l	$f19,$f19
    cvt.s.l	$f18,$f18
    cvt.d.s	$f23,$f23
    cvt.d.s	$f21,$f21
    mul.d	$f23,$f23,$f22
    cvt.d.s	$f19,$f19
    # Line 1195
    ld	$a0,288($sp)
    # Line 1197
    mul.d	$f21,$f21,$f22
    cvt.d.s	$f18,$f18
    # Line 1195
    addiu	$s0,$s0,-28
    ld	$v1,72($sp)
    # Line 1197
    cvt.s.d	$f23,$f23
    mul.d	$f19,$f19,$f22
    cvt.s.d	$f21,$f21
    swc1	$f23,40($s0)
    mul.d	$f18,$f18,$f22
    swc1	$f21,52($s0)
    cvt.s.d	$f19,$f19
    cvt.s.d	$f18,$f18
    swc1	$f19,44($s0)
    # Line 1195
    subu	$s3,$s3,$a0
    bne	$s0,$v1,.L0da0e5a0
    # Line 1197
    swc1	$f18,48($s0)
    # Line 1195
    la	$s0,sub_0da10000
    li	$s1,7
    b	.L0da0c100
    addiu	$s0,$s0,-21728
.L0da0e700:
    # Line 1201
    ldc1	$f22,_lit8_3f70101010101010
    addiu	$ra,$s8,856
    sd	$ra,280($sp)
    sll	$ra,$s1,0x2
    addiu	$s6,$s8,844
    sd	$s6,272($sp)
    subu	$s3,$ra,$s1
    addiu	$s6,$s8,828
    sd	$ra,288($sp)
    sll	$s3,$s3,0x3
    addiu	$t9,$s8,-20
    la	$s0,sub_0da10000
    subu	$s3,$s3,$s1
    sd	$t9,232($sp)
    li	$t9,9
    sll	$s3,$s3,0x2
    sw	$t9,6084($t8)
    addiu	$s0,$s0,-21728
    addu	$s3,$s3,$s8
    nop
.L0da0e750:
    # Line 1203
    move	$t9,$s0
    move	$a0,$s1
    move	$a1,$s3
    bal __glim_SubdivPatchSGIX
    move	$a2,$s6
    ld	$at,272($sp)
    ld	$v1,280($sp)
    lbu	$a6,0($at)
    sb	$a6,0($v1)
    lbu	$a5,1($at)
    sb	$a5,1($v1)
    # Line 1205
    lwc1	$f1,12($s6)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f1
    andi	$a3,$a1,0xff
    dmtc1	$a3,$f31
    srl	$a4,$a1,0x18
    dmtc1	$a4,$f0
    srl	$a2,$a1,0x10
    srl	$a1,$a1,0x8
    andi	$a2,$a2,0xff
    andi	$a1,$a1,0xff
    dmtc1	$a2,$f29
    cvt.s.l	$f0,$f0
    dmtc1	$a1,$f27
    cvt.s.l	$f31,$f31
    cvt.s.l	$f29,$f29
    cvt.s.l	$f27,$f27
    cvt.d.s	$f0,$f0
    # Line 1202
    ld	$a0,288($sp)
    # Line 1205
    cvt.d.s	$f31,$f31
    # Line 1202
    addiu	$s6,$s6,-36
    ld	$v0,232($sp)
    # Line 1205
    mul.d	$f0,$f0,$f22
    cvt.d.s	$f29,$f29
    # Line 1202
    addiu	$at,$at,-36
    sd	$at,272($sp)
    # Line 1205
    mul.d	$f31,$f31,$f22
    cvt.d.s	$f27,$f27
    # Line 1202
    addiu	$v1,$v1,-36
    sd	$v1,280($sp)
    # Line 1205
    cvt.s.d	$f0,$f0
    mul.d	$f29,$f29,$f22
    cvt.s.d	$f31,$f31
    swc1	$f0,48($s6)
    mul.d	$f27,$f27,$f22
    swc1	$f31,60($s6)
    cvt.s.d	$f29,$f29
    cvt.s.d	$f27,$f27
    swc1	$f29,52($s6)
    # Line 1202
    subu	$s3,$s3,$a0
    bne	$at,$v0,.L0da0e750
    # Line 1205
    swc1	$f27,56($s6)
    b	.L0da0c0f8
    # Line 1202
    li	$s1,9
.L0da0e82c:
    # Line 1681
    lw	$t8,8112($s2)
    addiu	$t0,$s2,8116
    b	.L0da0e19c
    sw	$t8,8112($s2)
.L0da0e83c:
    # Line 1692
    lw	$t9,8152($s2)
    addiu	$t0,$s2,8116
    b	.L0da0e1ec
    sw	$t9,8152($s2)
.L0da0e84c:
    # Line 1239
    addiu	$a5,$a5,8
    # Line 1242
    li	$ra,1
    li	$t9,1
    b	.L0da0c320
    # Line 1240
    lw	$t8,4($a7)
.L0da0e860:
    # Line 1631
    addu	$t1,$t1,$s1
    b	.L0da0da14
    nop
    nop
.L0da0e870:
    # Line 1639
    lw	$a1,-15884($gp)
    b	.L0da0e0d4
    lbu	$a1,0($a1)
.end InitSubdivision

# Function: DoRow
# Declared: Line 1719 (Source lines: 1720-2254)
# Address: 0x0da0e880 - 0x0da109ec (Size: 8556 bytes, Frame: 240)
.ent DoRow
DoRow:
    # Line 1720
    addiu	$sp,$sp,-496
    sd	$s5,440($sp)
    sd	$s7,480($sp)
    sd	$s4,472($sp)
    sd	$s8,464($sp)
    sd	$s6,448($sp)
    sd	$s1,256($sp)
    sd	$s2,280($sp)
    sd	$s3,264($sp)
    # Line 1722
    lw	$a5,4112($zero)
    # Line 1738
    lw	$t8,-15884($gp)
    # Line 1724
    lw	$s3,6084($a5)
    # Line 1725
    lw	$s2,6112($a5)
    # Line 1726
    lw	$a7,6096($a5)
    # Line 1727
    lw	$a6,6100($a5)
    # Line 1736
    sll	$a2,$a0,0x2
    # Line 1720
    sd	$s0,272($sp)
    # Line 1736
    addu	$a4,$a2,$a1
    lw	$s0,0($a4)
    # Line 1728
    lbu	$a5,6117($a5)
    # Line 1736
    addiu	$s0,$s0,1
    sw	$s0,0($a4)
    # Line 1741
    lbu	$t2,2($t8)
    # Line 1745
    li	$t1,3
    # Line 1738
    li	$t3,32
    lbu	$t0,1($t8)
    # Line 1720
    move	$s1,$a0
    sd	$ra,456($sp)
    # Line 1741
    xor	$t2,$t3,$t2
    # Line 1726
    sd	$a7,368($sp)
    # Line 1738
    xor	$t3,$t3,$t0
    # Line 1741
    sltiu	$t2,$t2,1
    # Line 1727
    sd	$a6,360($sp)
    # Line 1745
    beqz	$a0,.L0da0f854
    # Line 1738
    sltiu	$t3,$t3,1
    # Line 1745
    li	$t9,1
    beq	$a0,$t9,.L0da0fb64
    li	$ra,2
    beq	$a0,$ra,.L0da0fccc
    nop
    beq	$a0,$t1,.L0da0fe60
    li	$at,4
    beq	$a0,$at,.L0da0ffd4
    lw	$s4,28($sp)
    la	$s5,sub_0daa0000
    lw	$s7,32($sp)
    lw	$s8,16($sp)
    addiu	$s5,$s5,-3784
.L0da0e940:
    # Line 1834
    # lw $t9, -32620($gp) # &.rodata
    addiu	$t9,$t9,25264
    addu	$t9,$a2,$t9
    # Line 1835
    lw	$a3,0($t9)
    addiu	$a6,$a3,-1
    bne	$a6,$s0,.L0da0ec0c
    # Line 1834
    lw	$a0,-4($t9)
    # Line 1835
    ld	$ra,368($sp)
    beqz	$ra,.L0da10168
    sd	$a0,224($sp)
    # Line 1843
    ld	$t3,368($sp)
    addiu	$t3,$t3,-1
    mult	$s3,$t3
    sll	$t2,$s1,0x3
    addu	$t2,$t2,$s1
    sll	$t2,$t2,0x4
    mflo	$t1
    addu	$t1,$t1,$t2
    sll	$t1,$t1,0x2
    sd	$a5,216($sp)
    addu	$t1,$s5,$t1
    sll	$s6,$s3,0x2
    sd	$a3,136($sp)
    addiu	$t1,$t1,4656
.L0da0e9a0:
    # Line 1849
    addu	$a2,$s6,$s7
    sd	$a2,208($sp)
    addu	$a1,$s6,$s4
    sd	$a1,144($sp)
    addu	$a4,$s3,$s3
    sll	$a4,$a4,0x2
    sd	$a4,200($sp)
    move	$a3,$t1
    lbu	$t1,5176($s5)
    la	$s0,sub_0da10000
    addu	$a4,$a4,$s4
    lbu	$a7,5208($s5)
    li	$t0,1
    lb	$a6,5170($s5)
    xor	$t0,$s1,$t0
    addiu	$s0,$s0,-20416
    sd	$a4,240($sp)
    movz	$a7,$t1,$t0
    move	$t9,$s0
    addu	$a5,$s6,$s8
    lb	$t0,8($t8)
    dsll32	$a7,$a7,0x18
    move	$a0,$s3
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    # Line 1862
    ld	$a5,360($sp)
    beqz	$a5,.L0da0ea1c
    ld	$a6,216($sp)
    beqz	$a6,.L0da10190
    # Line 1863
    ld	$a4,224($sp)
.L0da0ea1c:
    # Line 1864
    andi	$a7,$s2,0x400
    beqz	$a7,.L0da0ea34
    # Line 1867
    ld	$t2,224($sp)
    # Line 1864
    ld	$t0,360($sp)
    beqz	$t0,.L0da101f4
    # Line 1867
    ld	$t2,224($sp)
.L0da0ea34:
    addiu	$t2,$t2,-2
    mult	$s3,$t2
    lw	$a3,24($sp)
    mflo	$t1
    sll	$t1,$t1,0x2
    addu	$a3,$a3,$t1
.L0da0ea4c:
    # Line 1869
    ld	$s2,224($sp)
    addiu	$s2,$s2,-3
    mult	$s2,$s3
    ld	$t3,136($sp)
    lbu	$t2,5177($s5)
    li	$t0,1
    addiu	$t3,$t3,-3
    lbu	$a7,5209($s5)
    mflo	$a2
    nop
    nop
    mult	$s3,$t3
    xor	$t0,$s1,$t0
    movz	$a7,$t2,$t0
    addu	$a1,$t1,$s4
    dsll32	$a7,$a7,0x18
    move	$a0,$s3
    dsra32	$a7,$a7,0x18
    move	$t9,$s0
    lw	$t0,-15884($gp)
    sll	$a2,$a2,0x2
    lb	$a6,5171($s5)
    addu	$a4,$a2,$s4
    mflo	$a5
    lb	$t0,9($t0)
    addu	$a2,$a2,$s7
    sll	$a5,$a5,0x2
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    ld	$a0,240($sp)
    ld	$a2,144($sp)
    ld	$a5,200($sp)
    ld	$a6,208($sp)
    sd	$s2,80($sp)
    slti	$t8,$s2,2
    sw	$s4,28($sp)
    bnez	$t8,.L0da0ebdc
    sd	$s7,304($sp)
    la	$s7,sub_0da10000
    ld	$ra,80($sp)
    li	$s0,1
    move	$s1,$a0
    ld	$s5,304($sp)
    move	$s2,$a6
    addiu	$ra,$ra,2
    sd	$ra,376($sp)
    sll	$t9,$s3,0x2
    li	$ra,3
    sd	$ra,384($sp)
    move	$s4,$a2
    subu	$t9,$t9,$s3
    lw	$ra,28($sp)
    addu	$s5,$a5,$s5
    sll	$t9,$t9,0x2
    addiu	$s7,$s7,-21344
    addu	$t9,$t9,$ra
    sd	$t9,408($sp)
    nop
    nop
    nop
.L0da0eb40:
    # Line 1882
    addu	$a6,$s0,$s0
    mult	$a6,$s3
    move	$a4,$s5
    move	$a3,$s4
    move	$a2,$s1
    move	$a1,$s2
    move	$t9,$s7
    mflo	$a5
    move	$a0,$s3
    sll	$a5,$a5,0x2
    sd	$a6,392($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 1889
    ld	$a6,392($sp)
    addiu	$a6,$a6,1
    mult	$s3,$a6
    move	$a0,$s3
    move	$a1,$s5
    move	$a2,$s1
    move	$t9,$s7
    mflo	$a5
    move	$a4,$s2
    sll	$a5,$a5,0x2
    ld	$a3,408($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 1880
    ld	$a7,384($sp)
    addu	$s4,$s4,$s6
    addu	$s2,$s2,$s6
    ld	$t0,376($sp)
    addu	$s1,$s1,$s6
    ld	$t1,408($sp)
    addiu	$a7,$a7,1
    addu	$s5,$s5,$s6
    addiu	$s0,$s0,1
    sd	$a7,384($sp)
    addu	$t1,$t1,$s6
    bne	$a7,$t0,.L0da0eb40
    sd	$t1,408($sp)
.L0da0ebdc:
    ld	$s5,440($sp)
.L0da0ebe0:
    ld	$s7,480($sp)
    ld	$s4,472($sp)
    ld	$s8,464($sp)
    ld	$s6,448($sp)
    # Line 1804
    ld	$s0,272($sp)
    ld	$ra,456($sp)
    ld	$s1,256($sp)
    ld	$s2,280($sp)
    ld	$s3,264($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L0da0ec0c:
    # Line 1896
    addiu	$at,$a3,-2
    mult	$at,$s3
    sd	$a0,224($sp)
    sll	$s6,$s3,0x2
    mflo	$a2
    addiu	$a5,$a0,-2
    sd	$a5,336($sp)
    sll	$a2,$a2,0x2
    sd	$a6,72($sp)
    bne	$at,$s0,.L0da0ee90
    addu	$a2,$s8,$a2
    ld	$a6,368($sp)
    andi	$a7,$s2,0x100
    sd	$a7,184($sp)
    beqz	$a6,.L0da102a0
    sd	$a2,56($sp)
    sw	$s4,28($sp)
    # Line 1905
    sll	$a4,$s1,0x3
    sd	$a3,136($sp)
    addu	$a5,$s6,$s7
    addu	$a4,$a4,$s1
    sd	$a5,208($sp)
    addu	$a5,$s3,$s3
    sll	$a4,$a4,0x6
    sll	$a5,$a5,0x2
    sd	$a5,200($sp)
    addu	$a4,$s5,$a4
    addu	$a5,$a5,$s4
    sd	$a5,240($sp)
    addiu	$a4,$a4,4656
.L0da0ec84:
    # Line 1910
    lb	$a7,5170($s5)
    lb	$a6,5175($s5)
    # Line 1909
    la	$s4,sub_0da10000
    # Line 1910
    move	$a5,$s8
    lw	$a3,24($sp)
    move	$a0,$s3
    lw	$s0,28($sp)
    # Line 1909
    addiu	$s4,$s4,-20416
    # Line 1910
    lb	$t8,7($t8)
    addu	$a3,$s6,$a3
    move	$t9,$s4
    sw	$t8,4($sp)
    move	$a1,$s0
    addu	$s0,$s6,$s0
    sd	$a3,160($sp)
    bal __glim_SubdivPatchSGIX
    move	$a2,$s0
    lw	$v1,24($sp)
    lw	$t9,-15884($gp)
    ld	$v0,200($sp)
    lbu	$t9,3($t9)
    li	$ra,2
    li	$t8,32
    ld	$at,336($sp)
    addu	$a5,$v0,$s8
    addu	$v0,$v0,$v1
    sd	$v0,192($sp)
    slt	$ra,$ra,$at
    bne	$t8,$t9,.L0da0f07c
    sd	$ra,152($sp)
    sd	$s0,144($sp)
    # Line 1922
    ld	$a4,208($sp)
    move	$a1,$s0
    lbu	$t2,5171($s5)
    li	$t1,1
    ld	$a3,192($sp)
    li	$a7,1
    xor	$t1,$s1,$t1
    ld	$a2,240($sp)
    move	$t9,$s4
    movz	$a7,$t2,$t1
    lb	$a6,5170($s5)
    move	$t0,$t8
    dsll32	$a7,$a7,0x18
    sw	$t0,4($sp)
    move	$a0,$s3
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    ld	$t2,152($sp)
    beqz	$t2,.L0da0f1ac
    sd	$s7,304($sp)
    ld	$s4,144($sp)
    sd	$s4,344($sp)
    lw	$t9,24($sp)
    sd	$s2,488($sp)
    ld	$s2,200($sp)
    ld	$t8,136($sp)
    sd	$s1,104($sp)
    sll	$s1,$s3,0x2
    addiu	$t8,$t8,-3
    sd	$t8,296($sp)
    li	$s0,2
    subu	$s1,$s1,$s3
    lw	$t8,28($sp)
    ld	$s4,240($sp)
    addu	$s2,$s2,$s7
    sll	$s1,$s1,0x2
    addu	$t9,$s1,$t9
    sd	$t9,400($sp)
    addu	$s1,$s1,$t8
    nop
.L0da0eda0:
    # Line 1932
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-19472
    move	$a0,$s4
    move	$a1,$s1
    ld	$a2,344($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$s5,5128
    # Line 1936
    addu	$a3,$s0,$s0
    sd	$a3,392($sp)
    addiu	$a3,$a3,-1
    mult	$s3,$a3
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$a1,$s5,5128
    addiu	$t9,$t9,-19456
    mflo	$a2
    move	$a0,$s3
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$s8,$a2
    # Line 1939
    ld	$t2,392($sp)
    mult	$t2,$s3
    li	$a6,1
    move	$a4,$s2
    ld	$t1,296($sp)
    move	$a2,$s1
    move	$a1,$s4
    lbu	$t2,5171($s5)
    li	$a7,1
    # lw $t9, -32696($gp) # &sub_0da10000
    xor	$t1,$t1,$s0
    move	$a0,$s3
    movz	$a7,$t2,$t1
    addiu	$t9,$t9,-20416
    dsll32	$a7,$a7,0x18
    dsra32	$a7,$a7,0x18
    mflo	$a5
    ld	$a3,400($sp)
    li	$t0,32
    sll	$a5,$a5,0x2
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 1931
    ld	$t9,344($sp)
    addu	$s4,$s4,$s6
    ld	$t3,336($sp)
    addu	$s2,$s2,$s6
    addiu	$s0,$s0,1
    ld	$t8,400($sp)
    addu	$s1,$s1,$s6
    addu	$t9,$t9,$s6
    sd	$t9,344($sp)
    addu	$t8,$t8,$s6
    bne	$t3,$s0,.L0da0eda0
    sd	$t8,400($sp)
    sd	$s7,304($sp)
    la	$s4,sub_0da10000
    ld	$s1,104($sp)
    ld	$s2,488($sp)
    b	.L0da0f1ac
    addiu	$s4,$s4,-20416
.L0da0ee90:
    # Line 2100
    sra	$at,$s0,0x1f
    xor	$t8,$s0,$at
    sd	$a2,56($sp)
    subu	$t8,$t8,$at
    sd	$t9,432($sp)
    andi	$t8,$t8,0x1
    sd	$t3,96($sp)
    xor	$t8,$t8,$at
    sd	$t2,88($sp)
    subu	$t8,$t8,$at
    sd	$a4,424($sp)
    addu	$at,$s6,$s8
    beqz	$t8,.L0da1052c
    sd	$at,176($sp)
    ld	$t9,224($sp)
    addiu	$t9,$t9,-1
    blez	$t9,.L0da0ef7c
    sd	$t9,376($sp)
    sw	$s4,28($sp)
    sd	$s0,48($sp)
    sd	$s7,304($sp)
    la	$s7,sub_0da10000
    move	$s1,$s4
    lw	$t8,24($sp)
    move	$s0,$zero
    addu	$s1,$s6,$s1
    ld	$s2,304($sp)
    addu	$t8,$s6,$t8
    sd	$t8,400($sp)
    addiu	$s7,$s7,-21344
    nop
    nop
.L0da0ef10:
    # Line 2109
    addu	$a6,$s0,$s0
    mult	$s3,$a6
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s1
    move	$t9,$s7
    mflo	$a5
    move	$a4,$s2
    sll	$a5,$a5,0x2
    ld	$a3,400($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 2108
    ld	$a7,376($sp)
    addiu	$s0,$s0,1
    addu	$s4,$s4,$s6
    ld	$t0,400($sp)
    slt	$a7,$s0,$a7
    addu	$s2,$s2,$s6
    addu	$s1,$s1,$s6
    addu	$t0,$t0,$s6
    bnez	$a7,.L0da0ef10
    sd	$t0,400($sp)
    ld	$s7,304($sp)
    lw	$s4,28($sp)
    lw	$t0,-15884($gp)
    ld	$s0,48($sp)
    lbu	$t0,1($t0)
.L0da0ef7c:
    li	$t1,32
    beq	$t1,$t0,.L0da1038c
    # Line 2119
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    # Line 2123
    la	$s1,sub_0da10000
    # Line 2127
    addiu	$a5,$s5,5128
    # Line 2123
    addiu	$s1,$s1,-20208
    # Line 2127
    move	$a4,$s7
    move	$t9,$s1
    move	$a3,$s4
    li	$a1,1
    lw	$a2,24($sp)
    bal __glim_SubdivPatchSGIX
    move	$a0,$s3
    # Line 2132
    la	$s2,sub_0da10000
    addiu	$s2,$s2,-20112
    move	$t9,$s2
    addiu	$a2,$s5,5128
    li	$a1,6
    ld	$a3,176($sp)
    move	$a0,$s3
    bal __glim_SubdivPatchSGIX
    sd	$s0,48($sp)
    la	$s0,sub_0da10000
    addiu	$s0,$s0,-19456
.L0da0efdc:
    lw	$t9,-15884($gp)
    lbu	$t9,2($t9)
    li	$t8,32
    beq	$t8,$t9,.L0da103dc
    # Line 2147
    move	$a0,$s3
    move	$t9,$s1
    ld	$a1,336($sp)
    move	$a3,$s4
    move	$a4,$s7
    lw	$a2,24($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s5,5128
    # Line 2152
    move	$t9,$s2
    move	$a0,$s3
    addiu	$a2,$s5,5128
    li	$a1,6
    bal __glim_SubdivPatchSGIX
    ld	$a3,56($sp)
    ld	$ra,336($sp)
.L0da0f028:
    slti	$ra,$ra,3
    bnez	$ra,.L0da0ebdc
    ld	$a0,48($sp)
    addu	$a1,$s3,$s3
    sll	$a1,$a1,0x2
    addiu	$a0,$a0,1
    li	$s0,2
    sd	$s6,312($sp)
    srl	$v0,$a0,0x1f
    sll	$v1,$s3,0x2
    ld	$at,224($sp)
    addu	$v0,$v0,$a0
    sd	$a1,320($sp)
    subu	$v1,$v1,$s3
    sra	$v0,$v0,0x1
    sll	$v1,$v1,0x2
    sd	$v1,328($sp)
    subu	$at,$at,$v0
    addiu	$at,$at,-1
    b	.L0da109d0
    sd	$at,352($sp)
.L0da0f07c:
    sd	$s7,304($sp)
    # Line 1931
    la	$s7,sub_0da10000
    addiu	$s7,$s7,-21344
    # Line 1951
    ld	$a2,240($sp)
    move	$t9,$s7
    move	$a0,$s3
    ld	$a3,192($sp)
    move	$a1,$s0
    bal __glim_SubdivPatchSGIX
    ld	$a4,208($sp)
    ld	$t8,152($sp)
    beqz	$t8,.L0da0f1ac
    sd	$s0,144($sp)
    lw	$t8,28($sp)
    ld	$s4,304($sp)
    sd	$s2,488($sp)
    ld	$s2,200($sp)
    sd	$s1,104($sp)
    sll	$s1,$s3,0x2
    li	$s0,2
    lw	$t9,24($sp)
    subu	$s1,$s1,$s3
    addu	$s2,$s2,$s4
    ld	$s4,240($sp)
    sll	$s1,$s1,0x2
    addu	$t9,$s1,$t9
    sd	$t9,400($sp)
    addu	$s1,$s1,$t8
    nop
.L0da0f0f0:
    # Line 1958
    # lw $t9, -32696($gp) # &sub_0da10000
    lw	$a2,24($sp)
    addiu	$t9,$t9,-20208
    move	$a0,$s3
    move	$a1,$s0
    lw	$a3,28($sp)
    ld	$a4,304($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s5,5128
    # Line 1963
    addu	$a4,$s0,$s0
    sd	$a4,392($sp)
    addiu	$a4,$a4,-1
    mult	$s3,$a4
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$a2,$s5,5128
    li	$a1,6
    addiu	$t9,$t9,-20112
    mflo	$a3
    move	$a0,$s3
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$s8,$a3
    # Line 1967
    ld	$a6,392($sp)
    mult	$a6,$s3
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s1
    move	$t9,$s7
    mflo	$a5
    move	$a4,$s2
    sll	$a5,$a5,0x2
    ld	$a3,400($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    # Line 1957
    ld	$a7,336($sp)
    addu	$s4,$s4,$s6
    addiu	$s0,$s0,1
    ld	$t0,400($sp)
    addu	$s2,$s2,$s6
    addu	$s1,$s1,$s6
    addu	$t0,$t0,$s6
    bne	$a7,$s0,.L0da0f0f0
    sd	$t0,400($sp)
    la	$s4,sub_0da10000
    ld	$s1,104($sp)
    ld	$s2,488($sp)
    addiu	$s4,$s4,-20416
.L0da0f1ac:
    ld	$s7,304($sp)
    # Line 1980
    sw	$zero,8192($s5)
    # Line 1985
    ld	$v1,160($sp)
    # Line 1983
    ld	$a0,192($sp)
    # Line 1979
    ld	$a2,144($sp)
    # Line 1981
    ld	$a1,240($sp)
    sw	$a1,8116($s5)
    # Line 1982
    lw	$t8,-15884($gp)
    # Line 1979
    sw	$a2,8112($s5)
    # Line 1982
    lbu	$t9,3($t8)
    # Line 1983
    sw	$a0,8120($s5)
    # Line 1984
    lbu	$at,28($t8)
    # Line 1985
    sw	$v1,8124($s5)
    # Line 1986
    lbu	$v0,1($t8)
    andi	$ra,$s2,0x80
    sw	$v0,8204($s5)
    # Line 1984
    sw	$at,8200($s5)
    # Line 1986
    beqz	$ra,.L0da101b8
    # Line 1982
    sw	$t9,8196($s5)
    # Line 1988
    lw	$a5,28($sp)
    # Line 1989
    ld	$a4,368($sp)
    # Line 1988
    sw	$a5,8128($s5)
    li	$s0,3
    # Line 1989
    lbu	$a3,7($t8)
    li	$t9,5
    blez	$a4,.L0da101c8
    sw	$a3,8208($s5)
.L0da0f218:
    move	$ra,$t9
    sll	$a5,$t9,0x2
    move	$a6,$t8
    addu	$a5,$a5,$s5
    addiu	$t1,$a5,8192
    sll	$t0,$s1,0x3
    ld	$a0,368($sp)
    addiu	$t2,$a5,8112
    addu	$t0,$t0,$s1
    sll	$t0,$t0,0x6
    move	$a1,$a0
    andi	$at,$a0,0x1
    addu	$a0,$t9,$a0
    addu	$t0,$s5,$t0
    sll	$t3,$a0,0x2
    addiu	$t0,$t0,4656
    addu	$t3,$t3,$s5
    beqz	$at,.L0da0f280
    addiu	$t3,$t3,8112
    # Line 1992
    sw	$t0,8112($a5)
    # Line 1991
    addu	$t0,$t0,$s6
    addiu	$t2,$a5,8116
    # Line 1993
    lbu	$a7,16($t8)
    # Line 1991
    addiu	$t1,$a5,8196
    addiu	$a6,$t8,1
    # Line 1993
    sw	$a7,8192($a5)
.L0da0f280:
    sra	$t9,$a1,0x1
    beqz	$t9,.L0da0f2c0
    nop
    nop
.L0da0f290:
    # Line 1992
    sw	$t0,0($t2)
    # Line 1993
    lbu	$at,16($a6)
    # Line 1991
    addu	$t0,$t0,$s6
    # Line 1992
    sw	$t0,4($t2)
    # Line 1991
    addiu	$t1,$t1,8
    # Line 1993
    lbu	$t9,17($a6)
    # Line 1991
    addiu	$t2,$t2,8
    addiu	$a6,$a6,2
    # Line 1993
    sw	$t9,-4($t1)
    # Line 1991
    addu	$t0,$t0,$s6
    bne	$t2,$t3,.L0da0f290
    # Line 1993
    sw	$at,-8($t1)
.L0da0f2c0:
    # Line 1997
    ld	$at,184($sp)
    # Line 1995
    sw	$ra,-15872($gp)
    # Line 1997
    beqz	$at,.L0da0f2dc
    # Line 1996
    move	$t9,$a0
    # Line 1997
    lw	$v0,-15864($gp)
    beqz	$v0,.L0da104c4
    # Line 1998
    sll	$a5,$a0,0x2
.L0da0f2dc:
    # Line 2005
    ld	$t0,336($sp)
    mult	$t0,$s3
    # Line 2009
    ld	$a7,224($sp)
    # Line 2001
    addiu	$a2,$t9,-1
    sw	$a2,-15880($gp)
    # Line 2006
    sw	$zero,8232($s5)
    # Line 2009
    addiu	$a7,$a7,-3
    # Line 2005
    lw	$a1,28($sp)
    mflo	$a6
    nop
    nop
    # Line 2009
    mult	$s3,$a7
    # Line 2010
    andi	$a0,$s2,0x200
    sd	$a0,120($sp)
    # Line 2005
    sll	$a6,$a6,0x2
    addu	$t0,$a6,$a1
    sw	$t0,8152($s5)
    # Line 2007
    lw	$a7,24($sp)
    # Line 2005
    sd	$t0,128($sp)
    # Line 2007
    addu	$a6,$a6,$a7
    sw	$a6,8156($s5)
    # Line 2008
    lbu	$a5,2($t8)
    # Line 2009
    mflo	$a4
    # Line 2008
    sw	$a5,8236($s5)
    # Line 2009
    sll	$a4,$a4,0x2
    addu	$a1,$a4,$a1
    sd	$a1,112($sp)
    sw	$a1,8160($s5)
    # Line 2010
    lbu	$v1,3($t8)
    beqz	$a0,.L0da101d8
    sw	$v1,8240($s5)
    # Line 2013
    ld	$t2,360($sp)
    # Line 2012
    addu	$t3,$a4,$s7
    sw	$t3,8164($s5)
    # Line 2013
    lbu	$t1,9($t8)
    li	$t9,4
    blez	$t2,.L0da101e4
    sw	$t1,8244($s5)
.L0da0f374:
    move	$ra,$t9
    sll	$a1,$t9,0x2
    move	$a6,$t8
    addu	$a1,$a1,$s5
    addiu	$t1,$a1,8192
    sll	$t0,$s1,0x3
    ld	$a0,360($sp)
    addiu	$t2,$a1,8112
    addu	$t0,$t0,$s1
    sll	$t0,$t0,0x6
    move	$a5,$a0
    andi	$at,$a0,0x1
    addu	$a0,$t9,$a0
    addu	$t0,$s5,$t0
    sll	$t3,$a0,0x2
    addiu	$t0,$t0,4800
    addu	$t3,$t3,$s5
    beqz	$at,.L0da0f3dc
    addiu	$t3,$t3,8112
    # Line 2016
    sw	$t0,8152($a1)
    # Line 2015
    addu	$t0,$t0,$s6
    addiu	$t2,$a1,8116
    # Line 2017
    lbu	$a3,20($t8)
    # Line 2015
    addiu	$t1,$a1,8196
    addiu	$a6,$t8,1
    # Line 2017
    sw	$a3,8232($a1)
.L0da0f3dc:
    sra	$a7,$a5,0x1
    beqz	$a7,.L0da0f420
    nop
    nop
    nop
.L0da0f3f0:
    # Line 2016
    sw	$t0,40($t2)
    # Line 2017
    lbu	$t9,20($a6)
    # Line 2015
    addu	$t0,$t0,$s6
    # Line 2016
    sw	$t0,44($t2)
    # Line 2015
    addiu	$t1,$t1,8
    # Line 2017
    lbu	$at,21($a6)
    # Line 2015
    addiu	$t2,$t2,8
    addiu	$a6,$a6,2
    # Line 2017
    sw	$at,36($t1)
    # Line 2015
    addu	$t0,$t0,$s6
    bne	$t2,$t3,.L0da0f3f0
    # Line 2017
    sw	$t9,32($t1)
.L0da0f420:
    # Line 2021
    andi	$v0,$s2,0x400
    sd	$v0,168($sp)
    # Line 2020
    move	$t9,$a0
    # Line 2021
    beqz	$v0,.L0da0f440
    # Line 2019
    sw	$ra,-15868($gp)
    # Line 2021
    lw	$v1,-15860($gp)
    beqz	$v1,.L0da104e0
    # Line 2022
    ld	$t2,224($sp)
.L0da0f440:
    # Line 2025
    lbu	$a0,5170($s5)
    addiu	$a1,$t9,-1
    beq	$s0,$a0,.L0da102dc
    sw	$a1,-15876($gp)
.L0da0f450:
    # Line 2031
    la	$s2,sub_0da10000
    addiu	$s2,$s2,-19312
    # Line 2036
    move	$t9,$s2
    sd	$a4,64($sp)
    addu	$a4,$s6,$s8
    addiu	$a3,$s5,8112
    bal __glim_SubdivPatchSGIX
    move	$a1,$s3
    lbu	$a0,5171($s5)
    ld	$a4,56($sp)
    beq	$s0,$a0,.L0da10334
    lw	$a2,-15876($gp)
.L0da0f480:
    # Line 2048
    move	$t9,$s2
.L0da0f484:
    move	$a1,$s3
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$s5,8152
    ld	$t8,368($sp)
    blez	$t8,.L0da0f598
    # Line 2055
    ld	$a6,360($sp)
    sd	$s1,104($sp)
    # Line 2048
    ld	$t8,104($sp)
    sd	$s7,304($sp)
    sll	$s7,$t8,0x3
    addiu	$s2,$s5,5168
    addu	$s7,$s7,$t8
    addiu	$s1,$s5,5200
    sll	$s7,$s7,0x6
    move	$s0,$zero
    addu	$s7,$s5,$s7
    b	.L0da109b8
    addiu	$s7,$s7,5232
    nop
.L0da0f4d0:
    # Line 2056
    lbu	$t1,16($s1)
.L0da0f4d4:
    lw	$ra,-15880($gp)
    lw	$a3,-15872($gp)
    addiu	$ra,$ra,1
    addu	$a3,$a3,$s0
    mtc1	$ra,$f1
    addiu	$a4,$a3,1
    mtc1	$a4,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    mfc1	$a5,$f0
    mult	$a5,$ra
    lw	$t9,-15884($gp)
    lb	$a6,5170($s5)
    addu	$t9,$s0,$t9
    lw	$a1,8112($s5)
    sll	$a3,$a3,0x2
    mflo	$a5
    lb	$t9,12($t9)
    addu	$a3,$s5,$a3
    subu	$a4,$a4,$a5
    lw	$a2,8112($a3)
    sll	$a4,$a4,0x2
    lw	$a3,8108($a3)
    addu	$a4,$s5,$a4
    dsll32	$a7,$t1,0x18
    lw	$a4,8112($a4)
    dsra32	$a7,$a7,0x18
    sw	$t9,4($sp)
    move	$t9,$s4
    move	$a0,$s3
    teq	$ra,$zero,0x7
    bal __glim_SubdivPatchSGIX
    move	$a5,$s7
    # Line 2055
    ld	$a4,368($sp)
    addu	$s7,$s7,$s6
    addiu	$s0,$s0,1
    addiu	$s1,$s1,1
    # Line 2048
    li	$a5,1
    # Line 2055
    beq	$a4,$s0,.L0da0f58c
    addiu	$s2,$s2,1
.L0da0f57c:
    # Line 2048
    bne	$s0,$a5,.L0da0f4d0
    nop
    # Line 2056
    b	.L0da0f4d4
    lbu	$t1,16($s2)
.L0da0f58c:
    ld	$s7,304($sp)
    ld	$s1,104($sp)
    # Line 2055
    ld	$a6,360($sp)
.L0da0f598:
    blez	$a6,.L0da0f698
    # Line 2079
    ld	$a6,168($sp)
    sd	$s1,104($sp)
    # Line 2055
    ld	$t8,104($sp)
    sd	$s7,304($sp)
    sll	$s7,$t8,0x3
    addiu	$s2,$s5,5168
    addu	$s7,$s7,$t8
    addiu	$s1,$s5,5200
    sll	$s7,$s7,0x6
    move	$s0,$zero
    addu	$s7,$s5,$s7
    b	.L0da109c4
    addiu	$s7,$s7,5376
.L0da0f5d0:
    # Line 2067
    lbu	$t1,20($s1)
.L0da0f5d4:
    lw	$ra,-15876($gp)
    lw	$a3,-15868($gp)
    addiu	$ra,$ra,1
    addu	$a3,$a3,$s0
    mtc1	$ra,$f2
    addiu	$a4,$a3,1
    mtc1	$a4,$f1
    cvt.d.w	$f2,$f2
    cvt.d.w	$f1,$f1
    div.d	$f1,$f1,$f2
    trunc.w.d	$f1,$f1
    mfc1	$a5,$f1
    mult	$a5,$ra
    lw	$t9,-15884($gp)
    lb	$a6,5171($s5)
    addu	$t9,$s0,$t9
    lw	$a1,8152($s5)
    sll	$a3,$a3,0x2
    mflo	$a5
    lb	$t9,20($t9)
    addu	$a3,$s5,$a3
    subu	$a4,$a4,$a5
    lw	$a2,8152($a3)
    sll	$a4,$a4,0x2
    lw	$a3,8148($a3)
    addu	$a4,$s5,$a4
    dsll32	$a7,$t1,0x18
    lw	$a4,8152($a4)
    dsra32	$a7,$a7,0x18
    sw	$t9,4($sp)
    move	$t9,$s4
    move	$a0,$s3
    teq	$ra,$zero,0x7
    bal __glim_SubdivPatchSGIX
    move	$a5,$s7
    # Line 2066
    ld	$a4,360($sp)
    addu	$s7,$s7,$s6
    addiu	$s0,$s0,1
    addiu	$s1,$s1,1
    # Line 2055
    li	$a5,1
    # Line 2066
    beq	$a4,$s0,.L0da0f68c
    addiu	$s2,$s2,1
.L0da0f67c:
    # Line 2055
    bne	$s0,$a5,.L0da0f5d0
    nop
    # Line 2067
    b	.L0da0f5d4
    lbu	$t1,20($s2)
.L0da0f68c:
    ld	$s7,304($sp)
    ld	$s1,104($sp)
    # Line 2079
    ld	$a6,168($sp)
.L0da0f698:
    beqz	$a6,.L0da0ebdc
    lw	$t8,-15884($gp)
    lbu	$a7,10($t8)
    bnez	$a7,.L0da0ebdc
    ld	$t0,360($sp)
    beqz	$t0,.L0da1063c
    # Line 2082
    ld	$t9,360($sp)
    addiu	$t9,$t9,-1
    mult	$s3,$t9
    sll	$t8,$s1,0x3
    addu	$t8,$t8,$s1
    sll	$t8,$t8,0x4
    mflo	$s0
    addu	$s0,$s0,$t8
    sll	$s0,$s0,0x2
    addu	$s0,$s5,$s0
    addiu	$s0,$s0,5376
.L0da0f6dc:
    # Line 2093
    blez	$s3,.L0da0ebdc
    ld	$a2,72($sp)
    mult	$a2,$s3
    move	$a0,$s0
    andi	$a3,$s3,0x1
    mflo	$a1
    addu	$a2,$s6,$s0
    sll	$a1,$a1,0x2
    beqz	$a3,.L0da0f714
    addu	$a1,$s8,$a1
    # Line 2096
    lwc1	$f2,0($s0)
    # Line 2095
    addiu	$a1,$a1,4
    addiu	$a0,$s0,4
    # Line 2096
    swc1	$f2,-4($a1)
.L0da0f714:
    sra	$a3,$s3,0x1
    beqz	$a3,.L0da0f73c
    nop
.L0da0f720:
    lwc1	$f4,0($a0)
    # Line 2095
    addiu	$a0,$a0,8
    # Line 2096
    swc1	$f4,0($a1)
    lwc1	$f3,-4($a0)
    # Line 2095
    addiu	$a1,$a1,8
    bne	$a0,$a2,.L0da0f720
    # Line 2096
    swc1	$f3,-4($a1)
.L0da0f73c:
    b	.L0da0ebe0
    ld	$s5,440($sp)
    nop
    nop
    # Line 2170
    move	$a0,$s3
.L0da0f750:
    move	$a1,$s0
    move	$t9,$s1
    move	$a3,$s4
    move	$a4,$s7
    lw	$a2,24($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s5,5128
    # Line 2175
    addu	$a4,$s0,$s0
    addiu	$a4,$a4,-1
    mult	$s3,$a4
    move	$a0,$s3
    addiu	$a2,$s5,5128
    move	$t9,$s2
    mflo	$a3
    li	$a1,6
    sll	$a3,$a3,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a3,$s8,$a3
    # Line 2158
    ld	$a6,328($sp)
.L0da0f79c:
    ld	$a7,312($sp)
    ld	$t0,320($sp)
    ld	$a5,336($sp)
    addiu	$s0,$s0,1
    addu	$t0,$t0,$s6
    sd	$t0,320($sp)
    # Line 2160
    li	$t2,32
    # Line 2158
    addu	$a7,$a7,$s6
    sd	$a7,312($sp)
    addu	$a6,$a6,$s6
    beq	$a5,$s0,.L0da0f84c
    sd	$a6,328($sp)
    nop
    # Line 2160
    ld	$t1,352($sp)
.L0da0f7d4:
    lw	$t3,-15884($gp)
    bne	$t1,$s0,.L0da0f750
    # Line 2170
    move	$a0,$s3
    # Line 2160
    lbu	$t3,28($t3)
    bne	$t2,$t3,.L0da0f750
    # Line 2170
    move	$a0,$s3
    # Line 2162
    lw	$a4,24($sp)
    ld	$a1,328($sp)
    # lw $t9, -32696($gp) # &sub_0da10000
    ld	$a2,312($sp)
    addiu	$a3,$s5,5128
    ld	$a0,320($sp)
    addiu	$t9,$t9,-19472
    addu	$a2,$a2,$s7
    addu	$a1,$a1,$a4
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s4
    # Line 2166
    addu	$a3,$s0,$s0
    addiu	$a3,$a3,-1
    mult	$s3,$a3
    # lw $t9, -32696($gp) # &sub_0da10000
    move	$a0,$s3
    addiu	$t9,$t9,-19456
    mflo	$a2
    addiu	$a1,$s5,5128
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$s8,$a2
    b	.L0da0f79c
    # Line 2158
    ld	$a6,328($sp)
.L0da0f84c:
    b	.L0da0ebe0
    ld	$s5,440($sp)
.L0da0f854:
    # Line 1748
    la	$a2,.rodata
    lw	$a2,25264($a2)
    mult	$s3,$a2
    move	$ra,$ra
    mflo	$a3
    move	$s8,$s8
    move	$s4,$s4
    blez	$a3,.L0da0f8c8
    move	$s7,$s7
    la	$a4,sub_0daa0000
    sll	$a1,$a3,0x2
    andi	$a5,$a3,0x1
    addiu	$a6,$a4,-3784
    addu	$a1,$a1,$a6
    beqz	$a5,.L0da0f8a0
    move	$a0,$a6
    # Line 1749
    lwc1	$f5,432($a6)
    # Line 1748
    addiu	$a0,$a6,4
    # Line 1749
    swc1	$f5,-3784($a4)
.L0da0f8a0:
    sra	$a4,$a3,0x1
    beqz	$a4,.L0da0f8c8
    nop
    nop
.L0da0f8b0:
    lwc1	$f7,436($a0)
    lwc1	$f6,432($a0)
    # Line 1748
    addiu	$a0,$a0,8
    # Line 1749
    swc1	$f7,-4($a0)
    # Line 1748
    bne	$a0,$a1,.L0da0f8b0
    # Line 1749
    swc1	$f6,-8($a0)
.L0da0f8c8:
    # Line 1748
    la	$s5,sub_0daa0000
    # Line 1757
    sll	$s6,$s3,0x2
    # Line 1759
    addu	$t2,$s3,$s3
    # Line 1748
    addiu	$s5,$s5,-3784
    # Line 1758
    sw	$zero,8192($s5)
    # Line 1757
    addu	$s0,$s6,$s5
    # Line 1759
    sll	$t2,$t2,0x2
    # Line 1757
    addiu	$t3,$s0,288
    sw	$t3,8112($s5)
    # Line 1759
    addu	$t2,$s5,$t2
    addiu	$t3,$t2,288
    sw	$t3,8116($s5)
    # Line 1760
    lbu	$a5,3($t8)
    # Line 1761
    addiu	$t2,$t2,144
    sw	$t2,8120($s5)
    # Line 1762
    lbu	$a7,28($t8)
    # Line 1763
    addiu	$t1,$s0,144
    sw	$t1,8124($s5)
    # Line 1764
    lbu	$t0,1($t8)
    andi	$a6,$s2,0x80
    sw	$t0,8204($s5)
    # Line 1762
    sw	$a7,8200($s5)
    # Line 1764
    beqz	$a6,.L0da10268
    # Line 1760
    sw	$a5,8196($s5)
    # Line 1767
    ld	$v0,368($sp)
    # Line 1766
    addiu	$v1,$s5,288
    sw	$v1,8128($s5)
    # Line 1767
    lbu	$at,7($t8)
    li	$t9,5
    blez	$v0,.L0da10274
    sw	$at,8208($s5)
.L0da0f944:
    move	$a4,$t9
    addiu	$a0,$s5,5232
    ld	$a3,368($sp)
    move	$a6,$t8
    sll	$t3,$t9,0x2
    addu	$t3,$t3,$s5
    move	$t0,$a3
    andi	$a5,$a3,0x1
    addu	$a3,$t9,$a3
    addiu	$t1,$t3,8192
    sll	$a1,$a3,0x2
    addiu	$t2,$t3,8112
    addu	$a1,$a1,$s5
    beqz	$a5,.L0da0f99c
    addiu	$a1,$a1,8112
    # Line 1770
    sw	$a0,8112($t3)
    # Line 1769
    addu	$a0,$a0,$s6
    addiu	$t2,$t3,8116
    # Line 1771
    lbu	$t9,16($t8)
    # Line 1769
    addiu	$t1,$t3,8196
    addiu	$a6,$t8,1
    # Line 1771
    sw	$t9,8192($t3)
.L0da0f99c:
    sra	$at,$t0,0x1
    beqz	$at,.L0da0f9e0
    nop
    nop
    nop
.L0da0f9b0:
    # Line 1770
    sw	$a0,0($t2)
    # Line 1771
    lbu	$v0,16($a6)
    # Line 1769
    addu	$a0,$a0,$s6
    # Line 1770
    sw	$a0,4($t2)
    # Line 1769
    addiu	$t1,$t1,8
    # Line 1771
    lbu	$a5,17($a6)
    # Line 1769
    addiu	$t2,$t2,8
    addiu	$a6,$a6,2
    # Line 1771
    sw	$a5,-4($t1)
    # Line 1769
    addu	$a0,$a0,$s6
    bne	$t2,$a1,.L0da0f9b0
    # Line 1771
    sw	$v0,-8($t1)
.L0da0f9e0:
    # Line 1775
    andi	$a6,$s2,0x100
    # Line 1774
    move	$t9,$a3
    # Line 1775
    beqz	$a6,.L0da0f9fc
    # Line 1773
    sw	$a4,-15872($gp)
    # Line 1775
    lw	$a7,-15864($gp)
    beqz	$a7,.L0da10514
    # Line 1776
    sll	$at,$a3,0x2
.L0da0f9fc:
    # Line 1783
    addiu	$a4,$a2,-2
    mult	$s3,$a4
    # Line 1787
    addiu	$a3,$a2,-3
    # Line 1783
    mflo	$a1
    nop
    nop
    # Line 1787
    mult	$s3,$a3
    # Line 1784
    sw	$zero,8232($s5)
    # Line 1783
    sll	$a1,$a1,0x2
    # Line 1779
    addiu	$a3,$t9,-1
    sw	$a3,-15880($gp)
    # Line 1783
    addu	$a1,$s5,$a1
    addiu	$a3,$a1,288
    sw	$a3,8152($s5)
    # Line 1787
    mflo	$a0
    # Line 1785
    addiu	$a1,$a1,144
    sw	$a1,8156($s5)
    # Line 1787
    sll	$a0,$a0,0x2
    # Line 1786
    lbu	$a1,2($t8)
    sw	$a1,8236($s5)
    # Line 1787
    addu	$a0,$s5,$a0
    # Line 1788
    andi	$t1,$s2,0x200
    # Line 1787
    addiu	$t2,$a0,288
    sw	$t2,8160($s5)
    # Line 1788
    lbu	$t0,3($t8)
    beqz	$t1,.L0da10284
    sw	$t0,8240($s5)
    # Line 1791
    ld	$a6,360($sp)
    # Line 1790
    sw	$a0,8164($s5)
    # Line 1791
    lbu	$a5,9($t8)
    li	$t9,4
    blez	$a6,.L0da10290
    sw	$a5,8244($s5)
.L0da0fa80:
    move	$a4,$t9
    addiu	$a0,$s5,5376
    ld	$a3,360($sp)
    move	$a6,$t8
    sll	$t0,$t9,0x2
    addu	$t0,$t0,$s5
    move	$a5,$a3
    andi	$a7,$a3,0x1
    addu	$a3,$t9,$a3
    addiu	$t1,$t0,8192
    sll	$a1,$a3,0x2
    addiu	$t2,$t0,8112
    addu	$a1,$a1,$s5
    beqz	$a7,.L0da0fad8
    addiu	$a1,$a1,8112
    # Line 1794
    sw	$a0,8152($t0)
    # Line 1793
    addu	$a0,$a0,$s6
    addiu	$t2,$t0,8116
    # Line 1795
    lbu	$t3,20($t8)
    # Line 1793
    addiu	$t1,$t0,8196
    addiu	$a6,$t8,1
    # Line 1795
    sw	$t3,8232($t0)
.L0da0fad8:
    sra	$t9,$a5,0x1
    beqz	$t9,.L0da0fb20
    nop
    nop
    nop
    nop
.L0da0faf0:
    # Line 1794
    sw	$a0,40($t2)
    # Line 1795
    lbu	$at,20($a6)
    # Line 1793
    addu	$a0,$a0,$s6
    # Line 1794
    sw	$a0,44($t2)
    # Line 1793
    addiu	$t1,$t1,8
    # Line 1795
    lbu	$a5,21($a6)
    # Line 1793
    addiu	$t2,$t2,8
    addiu	$a6,$a6,2
    # Line 1795
    sw	$a5,36($t1)
    # Line 1793
    addu	$a0,$a0,$s6
    bne	$t2,$a1,.L0da0faf0
    # Line 1795
    sw	$at,32($t1)
.L0da0fb20:
    # Line 1799
    andi	$a6,$s2,0x400
    ld	$s6,448($sp)
    # Line 1798
    move	$t9,$a3
    # Line 1799
    beqz	$a6,.L0da0fb40
    # Line 1797
    sw	$a4,-15868($gp)
    # Line 1799
    lw	$a7,-15860($gp)
    beqz	$a7,.L0da10238
    # Line 1800
    addiu	$t2,$a2,-1
.L0da0fb40:
    # Line 1803
    addiu	$t0,$t9,-1
    sw	$t0,-15876($gp)
    ld	$s5,440($sp)
    # Line 1804
    ld	$s0,272($sp)
    ld	$s1,256($sp)
    ld	$s2,280($sp)
    ld	$s3,264($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L0da0fb64:
    # Line 1806
    lw	$t9,-4($a4)
    addiu	$at,$t9,-2
    srl	$s7,$at,0x1f
    li	$v0,0xaaaa
    negu	$ra,$at
    dsll	$v0,$v0,0x10
    movz	$ra,$at,$s7
    ori	$v0,$v0,0xaaab
    multu	$ra,$v0
    mfhi	$s8
    sra	$s8,$s8,0x1
    negu	$s5,$s8
    movz	$s5,$s8,$s7
    mult	$s5,$t1
    # Line 1807
    addiu	$s7,$t9,-1
    srl	$a3,$s7,0x1f
    li	$s4,0xaaaa
    negu	$a7,$s7
    dsll	$s4,$s4,0x10
    movz	$a7,$s7,$a3
    ori	$s4,$s4,0xaaab
    # Line 1806
    mflo	$v1
    nop
    nop
    # Line 1807
    multu	$a7,$s4
    mfhi	$a6
    sra	$a6,$a6,0x1
    negu	$a1,$a6
    movz	$a1,$a6,$a3
    mult	$a1,$t1
    # Line 1808
    srl	$s5,$t9,0x1f
    li	$a0,0xaaaa
    negu	$v0,$t9
    dsll	$a0,$a0,0x10
    movz	$v0,$t9,$s5
    ori	$a0,$a0,0xaaab
    # Line 1807
    mflo	$s8
    nop
    nop
    # Line 1808
    multu	$v0,$a0
    mfhi	$ra
    sra	$ra,$ra,0x1
    negu	$s4,$ra
    movz	$s4,$ra,$s5
    mult	$s4,$t1
    # Line 1809
    srl	$a1,$s0,0x1f
    li	$a7,0xaaaa
    negu	$a6,$s0
    dsll	$a7,$a7,0x10
    movz	$a6,$s0,$a1
    ori	$a7,$a7,0xaaab
    # Line 1808
    mflo	$v0
    nop
    nop
    # Line 1809
    multu	$a6,$a7
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$a0,$a3
    movz	$a0,$a3,$a1
    mult	$a0,$t1
    # Line 1806
    subu	$at,$at,$v1
    sll	$ra,$at,0x3
    la	$s5,sub_0daa0000
    addu	$ra,$ra,$at
    sll	$ra,$ra,0x4
    addiu	$s5,$s5,-3784
    addu	$ra,$s5,$ra
    # Line 1807
    subu	$s7,$s7,$s8
    # Line 1809
    mflo	$at
    # Line 1807
    sll	$s4,$s7,0x3
    # Line 1809
    subu	$at,$s0,$at
    # Line 1807
    addu	$s4,$s4,$s7
    # Line 1809
    sll	$s8,$at,0x2
    # Line 1807
    sll	$s4,$s4,0x4
    # Line 1809
    subu	$s8,$s8,$at
    # Line 1808
    subu	$t9,$t9,$v0
    # Line 1809
    sll	$s8,$s8,0x2
    # Line 1808
    sll	$s7,$t9,0x3
    # Line 1809
    subu	$s8,$s8,$at
    # Line 1808
    addu	$s7,$s7,$t9
    # Line 1809
    sll	$s8,$s8,0x2
    # Line 1808
    sll	$s7,$s7,0x4
    # Line 1809
    addu	$s8,$s8,$at
    # Line 1807
    addu	$s4,$s5,$s4
    # Line 1809
    sll	$s8,$s8,0x2
    # Line 1808
    addu	$s7,$s5,$s7
    # Line 1809
    addu	$s8,$s5,$s8
    # Line 1806
    sw	$ra,24($sp)
    b	.L0da0e940
    # Line 1809
    addiu	$s8,$s8,576
.L0da0fccc:
    # Line 1812
    lw	$t9,-4($a4)
    addiu	$at,$t9,-2
    srl	$a1,$at,0x1f
    li	$a7,0xaaaa
    negu	$a6,$at
    dsll	$a7,$a7,0x10
    movz	$a6,$at,$a1
    ori	$a7,$a7,0xaaab
    multu	$a6,$a7
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$a0,$a3
    movz	$a0,$a3,$a1
    mult	$a0,$t1
    # Line 1813
    addiu	$s7,$t9,-1
    srl	$s5,$s7,0x1f
    li	$v1,0xaaaa
    negu	$ra,$s7
    dsll	$v1,$v1,0x10
    movz	$ra,$s7,$s5
    ori	$v1,$v1,0xaaab
    # Line 1812
    mflo	$v0
    nop
    nop
    # Line 1813
    multu	$ra,$v1
    mfhi	$s8
    sra	$s8,$s8,0x1
    negu	$s4,$s8
    movz	$s4,$s8,$s5
    mult	$s4,$t1
    # Line 1814
    srl	$a1,$t9,0x1f
    li	$a7,0xaaaa
    negu	$a6,$t9
    dsll	$a7,$a7,0x10
    movz	$a6,$t9,$a1
    ori	$a7,$a7,0xaaab
    # Line 1813
    mflo	$v1
    nop
    nop
    # Line 1814
    multu	$a6,$a7
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$a0,$a3
    movz	$a0,$a3,$a1
    mult	$a0,$t1
    # Line 1812
    subu	$at,$at,$v0
    sll	$ra,$at,0x2
    # Line 1815
    srl	$v0,$s0,0x1f
    li	$a1,0xaaaa
    negu	$a0,$s0
    dsll	$a1,$a1,0x10
    movz	$a0,$s0,$v0
    ori	$a1,$a1,0xaaab
    # Line 1814
    mflo	$s8
    nop
    nop
    # Line 1815
    multu	$a0,$a1
    # Line 1812
    subu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    subu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    # Line 1813
    subu	$s7,$s7,$v1
    # Line 1812
    addu	$ra,$ra,$at
    # Line 1813
    sll	$s4,$s7,0x2
    # Line 1812
    sll	$ra,$ra,0x2
    # Line 1813
    subu	$s4,$s4,$s7
    sll	$s4,$s4,0x2
    # Line 1815
    mfhi	$v1
    # Line 1813
    subu	$s4,$s4,$s7
    # Line 1815
    sra	$v1,$v1,0x1
    # Line 1813
    sll	$s4,$s4,0x2
    # Line 1812
    la	$s5,sub_0daa0000
    # Line 1815
    negu	$at,$v1
    movz	$at,$v1,$v0
    # Line 1812
    addiu	$s5,$s5,-3784
    # Line 1815
    mult	$at,$t1
    # Line 1812
    addu	$ra,$s5,$ra
    # Line 1813
    addu	$s4,$s4,$s7
    sll	$s4,$s4,0x2
    # Line 1814
    subu	$t9,$t9,$s8
    # Line 1812
    addiu	$ra,$ra,576
    # Line 1814
    sll	$s7,$t9,0x2
    # Line 1813
    addu	$s4,$s5,$s4
    # Line 1814
    subu	$s7,$s7,$t9
    # Line 1813
    addiu	$s4,$s4,576
    # Line 1814
    sll	$s7,$s7,0x2
    subu	$s7,$s7,$t9
    # Line 1815
    mflo	$at
    # Line 1814
    sll	$s7,$s7,0x2
    # Line 1815
    subu	$at,$s0,$at
    # Line 1814
    addu	$s7,$s7,$t9
    # Line 1815
    sll	$s8,$at,0x6
    # Line 1814
    sll	$s7,$s7,0x2
    # Line 1815
    subu	$s8,$s8,$at
    # Line 1814
    addu	$s7,$s5,$s7
    # Line 1815
    sll	$s8,$s8,0x2
    # Line 1814
    addiu	$s7,$s7,576
    # Line 1815
    addu	$s8,$s5,$s8
    # Line 1812
    sw	$ra,24($sp)
    # Line 1816
    b	.L0da0e940
    # Line 1815
    addiu	$s8,$s8,1120
.L0da0fe60:
    # Line 1818
    lw	$t9,-4($a4)
    addiu	$at,$t9,-2
    srl	$s7,$at,0x1f
    li	$v0,0xaaaa
    negu	$ra,$at
    dsll	$v0,$v0,0x10
    movz	$ra,$at,$s7
    ori	$v0,$v0,0xaaab
    multu	$ra,$v0
    mfhi	$s8
    sra	$s8,$s8,0x1
    negu	$s5,$s8
    movz	$s5,$s8,$s7
    mult	$s5,$t1
    # Line 1819
    addiu	$s7,$t9,-1
    srl	$a3,$s7,0x1f
    li	$s4,0xaaaa
    negu	$a7,$s7
    dsll	$s4,$s4,0x10
    movz	$a7,$s7,$a3
    ori	$s4,$s4,0xaaab
    # Line 1818
    mflo	$a0
    nop
    nop
    # Line 1819
    multu	$a7,$s4
    mfhi	$a6
    sra	$a6,$a6,0x1
    negu	$a1,$a6
    movz	$a1,$a6,$a3
    mult	$a1,$t1
    # Line 1820
    srl	$s5,$t9,0x1f
    li	$v1,0xaaaa
    negu	$v0,$t9
    dsll	$v1,$v1,0x10
    movz	$v0,$t9,$s5
    ori	$v1,$v1,0xaaab
    # Line 1819
    mflo	$s8
    nop
    nop
    # Line 1820
    multu	$v0,$v1
    mfhi	$ra
    sra	$ra,$ra,0x1
    negu	$s4,$ra
    movz	$s4,$ra,$s5
    mult	$s4,$t1
    # Line 1821
    srl	$a1,$s0,0x1f
    li	$a7,0xaaaa
    negu	$a6,$s0
    dsll	$a7,$a7,0x10
    movz	$a6,$s0,$a1
    ori	$a7,$a7,0xaaab
    # Line 1820
    mflo	$v0
    nop
    nop
    # Line 1821
    multu	$a6,$a7
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$v1,$a3
    movz	$v1,$a3,$a1
    # Line 1818
    subu	$at,$at,$a0
    # Line 1821
    mult	$v1,$t1
    # Line 1818
    sll	$ra,$at,0x6
    la	$s5,sub_0daa0000
    subu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    addiu	$s5,$s5,-3784
    addu	$ra,$s5,$ra
    # Line 1819
    subu	$s7,$s7,$s8
    # Line 1818
    addiu	$ra,$ra,1120
    # Line 1819
    sll	$s4,$s7,0x6
    subu	$s4,$s4,$s7
    # Line 1821
    mflo	$at
    # Line 1819
    sll	$s4,$s4,0x2
    # Line 1821
    subu	$at,$s0,$at
    # Line 1819
    addu	$s4,$s5,$s4
    # Line 1821
    sll	$s8,$at,0x2
    # Line 1819
    addiu	$s4,$s4,1120
    # Line 1821
    subu	$s8,$s8,$at
    # Line 1820
    subu	$t9,$t9,$v0
    # Line 1821
    sll	$s8,$s8,0x3
    # Line 1820
    sll	$s7,$t9,0x6
    # Line 1821
    addu	$s8,$s8,$at
    # Line 1820
    subu	$s7,$s7,$t9
    # Line 1821
    sll	$s8,$s8,0x2
    # Line 1820
    sll	$s7,$s7,0x2
    # Line 1821
    subu	$s8,$s8,$at
    # Line 1820
    addu	$s7,$s5,$s7
    # Line 1821
    sll	$s8,$s8,0x2
    # Line 1820
    addiu	$s7,$s7,1120
    # Line 1821
    addu	$s8,$s5,$s8
    # Line 1818
    sw	$ra,24($sp)
    # Line 1822
    b	.L0da0e940
    # Line 1821
    addiu	$s8,$s8,1880
.L0da0ffd4:
    # Line 1824
    lw	$t9,-4($a4)
    addiu	$v0,$t9,-2
    srl	$s4,$v0,0x1f
    li	$s8,0xaaaa
    negu	$s7,$v0
    dsll	$s8,$s8,0x10
    movz	$s7,$v0,$s4
    ori	$s8,$s8,0xaaab
    multu	$s7,$s8
    mfhi	$s5
    sra	$s5,$s5,0x1
    negu	$a7,$s5
    movz	$a7,$s5,$s4
    mult	$a7,$t1
    # Line 1825
    addiu	$s8,$t9,-1
    srl	$v1,$s8,0x1f
    li	$a6,0xaaaa
    negu	$a3,$s8
    dsll	$a6,$a6,0x10
    movz	$a3,$s8,$v1
    ori	$a6,$a6,0xaaab
    # Line 1824
    mflo	$a0
    nop
    nop
    # Line 1825
    multu	$a3,$a6
    mfhi	$a1
    sra	$a1,$a1,0x1
    negu	$at,$a1
    movz	$at,$a1,$v1
    mult	$at,$t1
    # Line 1826
    srl	$s4,$t9,0x1f
    li	$ra,0xaaaa
    negu	$s7,$t9
    dsll	$ra,$ra,0x10
    movz	$s7,$t9,$s4
    ori	$ra,$ra,0xaaab
    # Line 1825
    mflo	$v1
    nop
    nop
    # Line 1826
    multu	$s7,$ra
    mfhi	$s5
    sra	$s5,$s5,0x1
    negu	$a7,$s5
    movz	$a7,$s5,$s4
    mult	$a7,$t1
    # Line 1827
    srl	$a1,$s0,0x1f
    li	$a6,0xaaaa
    negu	$a3,$s0
    dsll	$a6,$a6,0x10
    movz	$a3,$s0,$a1
    ori	$a6,$a6,0xaaab
    # Line 1826
    mflo	$at
    nop
    nop
    # Line 1827
    multu	$a3,$a6
    # Line 1824
    subu	$v0,$v0,$a0
    sll	$ra,$v0,0x2
    # Line 1827
    mfhi	$a3
    # Line 1824
    subu	$ra,$ra,$v0
    # Line 1827
    sra	$a3,$a3,0x1
    # Line 1824
    sll	$ra,$ra,0x3
    # Line 1827
    negu	$a0,$a3
    movz	$a0,$a3,$a1
    # Line 1824
    addu	$ra,$ra,$v0
    # Line 1827
    mult	$a0,$t1
    # Line 1824
    sll	$ra,$ra,0x2
    # Line 1825
    subu	$s8,$s8,$v1
    # Line 1824
    subu	$ra,$ra,$v0
    # Line 1825
    sll	$s4,$s8,0x2
    # Line 1824
    la	$s5,sub_0daa0000
    sll	$ra,$ra,0x2
    # Line 1825
    subu	$s4,$s4,$s8
    sll	$s4,$s4,0x3
    # Line 1824
    addiu	$s5,$s5,-3784
    addu	$ra,$s5,$ra
    # Line 1825
    addu	$s4,$s4,$s8
    # Line 1826
    subu	$t9,$t9,$at
    # Line 1827
    mflo	$at
    subu	$at,$s0,$at
    li	$v0,684
    # Line 1826
    sll	$s7,$t9,0x2
    # Line 1827
    multu	$at,$v0
    # Line 1825
    sll	$s4,$s4,0x2
    # Line 1826
    subu	$s7,$s7,$t9
    # Line 1825
    subu	$s4,$s4,$s8
    # Line 1826
    sll	$s7,$s7,0x3
    # Line 1825
    sll	$s4,$s4,0x2
    # Line 1826
    addu	$s7,$s7,$t9
    # Line 1824
    addiu	$ra,$ra,1880
    # Line 1826
    sll	$s7,$s7,0x2
    # Line 1825
    addu	$s4,$s5,$s4
    # Line 1826
    subu	$s7,$s7,$t9
    # Line 1825
    addiu	$s4,$s4,1880
    # Line 1826
    sll	$s7,$s7,0x2
    addu	$s7,$s5,$s7
    # Line 1827
    mflo	$s8
    # Line 1826
    addiu	$s7,$s7,1880
    # Line 1827
    addu	$s8,$s5,$s8
    # Line 1824
    sw	$ra,24($sp)
    # Line 1828
    b	.L0da0e940
    # Line 1827
    addiu	$s8,$s8,3072
.L0da10168:
    # Line 1844
    andi	$ra,$s2,0x80
    beqz	$ra,.L0da1017c
    sd	$a5,216($sp)
    lw	$at,-15864($gp)
    beqz	$at,.L0da1066c
.L0da1017c:
    # Line 1847
    lw	$t1,24($sp)
    sll	$s6,$s3,0x2
    sd	$a3,136($sp)
    b	.L0da0e9a0
    addu	$t1,$t1,$s6
.L0da10190:
    # Line 1863
    addiu	$a4,$a4,-2
    mult	$s3,$a4
    sll	$a3,$s1,0x3
    addu	$a3,$a3,$s1
    sll	$a3,$a3,0x6
    addu	$a3,$s5,$a3
    addiu	$a3,$a3,4800
    mflo	$t1
    b	.L0da0ea4c
    sll	$t1,$t1,0x2
.L0da101b8:
    # Line 1989
    ld	$a5,368($sp)
    li	$s0,3
    bgtz	$a5,.L0da0f218
    li	$t9,4
.L0da101c8:
    ld	$a0,368($sp)
    # Line 1991
    move	$ra,$t9
    b	.L0da0f2c0
    addu	$a0,$t9,$a0
.L0da101d8:
    # Line 2013
    ld	$a1,360($sp)
    bgtz	$a1,.L0da0f374
    li	$t9,3
.L0da101e4:
    ld	$a0,360($sp)
    # Line 2015
    move	$ra,$t9
    b	.L0da0f420
    addu	$a0,$t9,$a0
.L0da101f4:
    # Line 1864
    lw	$a1,-15860($gp)
    bnez	$a1,.L0da0ea34
    # Line 1867
    ld	$t2,224($sp)
    # Line 1865
    ld	$a5,224($sp)
    addiu	$a6,$a5,-1
    mult	$s3,$a6
    addiu	$a5,$a5,-2
    mflo	$a4
    nop
    nop
    mult	$s3,$a5
    lw	$a3,24($sp)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    mflo	$t1
    b	.L0da0ea4c
    sll	$t1,$t1,0x2
.L0da10238:
    # Line 1800
    mult	$s3,$t2
    mflo	$t1
    sll	$t1,$t1,0x2
    sll	$t0,$a3,0x2
    addu	$t1,$s5,$t1
    addu	$t0,$t0,$s5
    addiu	$t1,$t1,144
    sw	$t1,8152($t0)
    # Line 1801
    lbu	$a7,10($t8)
    addiu	$t9,$a3,1
    b	.L0da0fb40
    sw	$a7,8232($t0)
.L0da10268:
    # Line 1767
    ld	$t3,368($sp)
    bgtz	$t3,.L0da0f944
    li	$t9,4
.L0da10274:
    ld	$a3,368($sp)
    # Line 1769
    move	$a4,$t9
    b	.L0da0f9e0
    addu	$a3,$t9,$a3
.L0da10284:
    # Line 1791
    ld	$a4,360($sp)
    bgtz	$a4,.L0da0fa80
    li	$t9,3
.L0da10290:
    ld	$a3,360($sp)
    # Line 1793
    move	$a4,$t9
    b	.L0da0fb20
    addu	$a3,$t9,$a3
.L0da102a0:
    # Line 1906
    ld	$a4,184($sp)
    beqz	$a4,.L0da102b4
    lw	$a5,-15864($gp)
    beqz	$a5,.L0da1090c
    nop
.L0da102b4:
    sw	$s4,28($sp)
    # Line 1909
    addu	$a5,$s6,$s7
    sd	$a5,208($sp)
    sd	$a3,136($sp)
    addu	$a4,$s3,$s3
    sll	$a4,$a4,0x2
    sd	$a4,200($sp)
    addu	$a4,$a4,$s4
    b	.L0da0ec84
    sd	$a4,240($sp)
.L0da102dc:
    # Line 2025
    slti	$a5,$a2,2
    bnez	$a5,.L0da0f450
    addiu	$t1,$s5,8112
    addiu	$t0,$s5,8116
    addiu	$t3,$a2,-1
    sll	$t2,$a2,0x2
    andi	$t8,$t3,0x1
    addiu	$a6,$s5,8196
    addu	$t2,$t2,$s5
    beqz	$t8,.L0da10320
    addiu	$t2,$t2,8192
    lw	$t8,8196($s5)
    li	$t9,32
    beq	$t8,$t9,.L0da10934
    # Line 2033
    lw	$t8,8116($s5)
.L0da10318:
    # Line 2031
    addiu	$a6,$a6,4
    addiu	$t0,$t0,4
.L0da10320:
    sra	$ra,$t3,0x1
    bnez	$ra,.L0da10444
    # Line 2025
    li	$a5,32
.L0da1032c:
    b	.L0da0f450
    sd	$a4,64($sp)
.L0da10334:
    # Line 2036
    slti	$at,$a2,2
    bnez	$at,.L0da0f480
    addiu	$t1,$s5,8112
    addiu	$t0,$s5,8116
    addiu	$t3,$a2,-1
    sll	$t2,$a2,0x2
    andi	$t8,$t3,0x1
    addiu	$a6,$s5,8196
    addu	$t2,$t2,$s5
    beqz	$t8,.L0da10378
    addiu	$t2,$t2,8192
    lw	$t8,8236($s5)
    li	$t9,32
    beq	$t8,$t9,.L0da10940
    # Line 2045
    lw	$t9,8156($s5)
.L0da10370:
    # Line 2043
    addiu	$a6,$a6,4
    addiu	$t0,$t0,4
.L0da10378:
    sra	$ra,$t3,0x1
    bnez	$ra,.L0da1048c
    # Line 2036
    li	$v1,32
.L0da10384:
    b	.L0da0f484
    # Line 2048
    move	$t9,$s2
.L0da1038c:
    # Line 2119
    addiu	$a3,$s5,5128
    lw	$a1,24($sp)
    addiu	$t9,$t9,-19472
    addu	$a2,$s6,$s7
    addu	$a0,$s6,$s4
    sd	$s0,48($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a1,$s6,$a1
    # Line 2123
    la	$s0,sub_0da10000
    addiu	$s0,$s0,-19456
    move	$t9,$s0
    addiu	$a1,$s5,5128
    move	$a0,$s3
    bal __glim_SubdivPatchSGIX
    ld	$a2,176($sp)
    la	$s1,sub_0da10000
    la	$s2,sub_0da10000
    addiu	$s1,$s1,-20208
    b	.L0da0efdc
    addiu	$s2,$s2,-20112
.L0da103dc:
    # Line 2139
    ld	$a1,336($sp)
    mult	$a1,$s3
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$a3,$s5,5128
    lw	$a1,24($sp)
    mflo	$a0
    addiu	$t9,$t9,-19472
    sll	$a0,$a0,0x2
    addu	$a2,$a0,$s7
    addu	$a1,$a0,$a1
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s4
    # Line 2143
    move	$t9,$s0
    move	$a0,$s3
    addiu	$a1,$s5,5128
    bal __glim_SubdivPatchSGIX
    ld	$a2,56($sp)
    b	.L0da0f028
    # Line 2152
    ld	$ra,336($sp)
    nop
    nop
.L0da10430:
    # Line 2025
    beq	$a3,$a5,.L0da10464
    # Line 2031
    addiu	$a6,$a6,8
.L0da10438:
    beq	$a6,$t2,.L0da1032c
    addiu	$t0,$t0,8
    # Line 2025
    li	$a5,32
.L0da10444:
    lw	$a7,0($a6)
    li	$t3,32
    bne	$a7,$t3,.L0da10430
    lw	$a3,4($a6)
    # Line 2033
    addiu	$t1,$t1,4
    lw	$t8,0($t0)
    b	.L0da10430
    sw	$t8,-4($t1)
.L0da10464:
    addiu	$t1,$t1,4
    lw	$t9,4($t0)
    b	.L0da10438
    sw	$t9,-4($t1)
    nop
    nop
    nop
.L0da10480:
    # Line 2043
    beq	$a6,$t2,.L0da10384
    addiu	$t0,$t0,8
    # Line 2036
    li	$v1,32
.L0da1048c:
    lw	$ra,40($a6)
    li	$at,32
    beq	$ra,$at,.L0da104b4
    lw	$v0,44($a6)
.L0da1049c:
    bne	$v0,$v1,.L0da10480
    # Line 2043
    addiu	$a6,$a6,8
    # Line 2045
    addiu	$t1,$t1,4
    lw	$a1,44($t0)
    b	.L0da10480
    sw	$a1,36($t1)
.L0da104b4:
    addiu	$t1,$t1,4
    lw	$a3,40($t0)
    b	.L0da1049c
    sw	$a3,36($t1)
.L0da104c4:
    # Line 1998
    ld	$a6,208($sp)
    addu	$a5,$a5,$s5
    sw	$a6,8112($a5)
    # Line 1999
    lbu	$a4,8($t8)
    addiu	$t9,$a0,1
    b	.L0da0f2dc
    sw	$a4,8192($a5)
.L0da104e0:
    # Line 2022
    addiu	$t2,$t2,-1
    mult	$s3,$t2
    lw	$t0,24($sp)
    sll	$a7,$a0,0x2
    mflo	$t1
    addu	$a7,$a7,$s5
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    sw	$t0,8152($a7)
    # Line 2023
    lbu	$a6,10($t8)
    addiu	$t9,$a0,1
    b	.L0da0f440
    sw	$a6,8232($a7)
.L0da10514:
    # Line 1776
    addu	$at,$at,$s5
    sw	$s0,8112($at)
    # Line 1777
    lbu	$t3,8($t8)
    addiu	$t9,$a3,1
    b	.L0da0f9fc
    sw	$t3,8192($at)
.L0da1052c:
    sd	$s7,304($sp)
    # Line 2158
    la	$s7,sub_0da10000
    ld	$s2,432($sp)
    # Line 2184
    addu	$a2,$s6,$s4
    sd	$a2,144($sp)
    # Line 2158
    addiu	$s7,$s7,-21344
    # Line 2184
    move	$a0,$s3
    ld	$a1,304($sp)
    move	$t9,$s7
    move	$a3,$s4
    move	$a5,$s8
    sd	$s0,48($sp)
    addu	$a4,$s6,$a1
    bal __glim_SubdivPatchSGIX
    sd	$a4,208($sp)
    # Line 2191
    ld	$a5,176($sp)
    ld	$a3,304($sp)
    ld	$a2,208($sp)
    ld	$a1,144($sp)
    addu	$a4,$s3,$s3
    sll	$a4,$a4,0x2
    sd	$a4,200($sp)
    ld	$a7,96($sp)
    la	$s1,sub_0da10000
    # Line 2184
    ld	$s0,424($sp)
    lw	$t3,0($s2)
    # Line 2191
    addu	$a4,$a4,$s4
    # Line 2184
    lw	$t1,0($s0)
    # Line 2191
    lbu	$t2,5170($s5)
    move	$a6,$a7
    # Line 2184
    addiu	$t3,$t3,-3
    # Line 2191
    lw	$t0,-15884($gp)
    addiu	$s1,$s1,-20416
    xor	$t1,$t1,$t3
    sd	$a4,240($sp)
    move	$t9,$s1
    movz	$a7,$t2,$t1
    lb	$t0,1($t0)
    dsll32	$a7,$a7,0x18
    move	$a0,$s3
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    dsra32	$a7,$a7,0x18
    ld	$a6,224($sp)
    slti	$a5,$a6,4
    addiu	$t1,$a6,-3
    addiu	$a6,$a6,-1
    bnez	$a5,.L0da107e0
    sd	$a6,376($sp)
    sd	$t1,80($sp)
    ld	$t9,208($sp)
    ld	$ra,144($sp)
    sd	$ra,344($sp)
    sd	$t9,288($sp)
    sw	$s4,28($sp)
    ld	$s4,304($sp)
    ld	$t8,48($sp)
    ld	$s2,200($sp)
    sll	$a7,$s3,0x2
    subu	$a7,$a7,$s3
    addiu	$t8,$t8,2
    sd	$t8,248($sp)
    addu	$s2,$s2,$s4
    ld	$s4,240($sp)
    sll	$a7,$a7,0x2
    li	$s0,2
    b	.L0da109dc
    sd	$a7,328($sp)
.L0da1063c:
    # Line 2083
    ld	$at,120($sp)
    beqz	$at,.L0da10650
    lw	$v0,-15860($gp)
    beqz	$v0,.L0da1094c
    # Line 2084
    ld	$a3,72($sp)
.L0da10650:
    # Line 2093
    ld	$t8,136($sp)
    addiu	$t8,$t8,-3
    mult	$s3,$t8
    mflo	$s0
    sll	$s0,$s0,0x2
    b	.L0da0f6dc
    addu	$s0,$s8,$s0
.L0da1066c:
    # Line 1845
    sll	$s6,$s3,0x2
    move	$t1,$s4
    b	.L0da0e9a0
    sd	$a3,136($sp)
.L0da1067c:
    # Line 2215
    addu	$a6,$s0,$s0
.L0da10680:
    sd	$a6,232($sp)
    addiu	$a6,$a6,-2
    mult	$s3,$a6
    move	$a4,$s2
    move	$a2,$s4
    move	$t9,$s7
    mflo	$a5
    ld	$a3,344($sp)
    move	$a0,$s3
    sll	$a5,$a5,0x2
    ld	$a1,288($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
.L0da106b4:
    ld	$a7,336($sp)
    slt	$a7,$s0,$a7
    bnez	$a7,.L0da1078c
    # Line 2203
    lw	$ra,-15884($gp)
.L0da106c4:
    # Line 2201
    ld	$t1,248($sp)
    ld	$t2,328($sp)
    ld	$t8,288($sp)
    ld	$t3,344($sp)
    addu	$t8,$t8,$s6
    sd	$t8,288($sp)
    addu	$s4,$s4,$s6
    addu	$s2,$s2,$s6
    ld	$t0,376($sp)
    addiu	$s0,$s0,1
    addu	$t3,$t3,$s6
    sd	$t3,344($sp)
    # Line 2203
    li	$t9,32
    # Line 2201
    addu	$t2,$t2,$s6
    sd	$t2,328($sp)
    addiu	$t1,$t1,2
    beq	$t0,$s0,.L0da107d0
    sd	$t1,248($sp)
    # Line 2203
    lbu	$ra,28($ra)
.L0da10710:
    ld	$at,248($sp)
    bne	$t9,$ra,.L0da1067c
    ld	$v0,72($sp)
    bne	$at,$v0,.L0da10680
    # Line 2215
    addu	$a6,$s0,$s0
    # Line 2205
    addu	$t2,$s0,$s0
    sd	$t2,232($sp)
    addiu	$t2,$t2,-2
    mult	$s3,$t2
    li	$a7,1
    move	$a4,$s2
    move	$a2,$s4
    li	$t1,2
    lbu	$t2,5170($s5)
    li	$a6,1
    xor	$t1,$s0,$t1
    move	$t0,$t9
    movz	$a6,$t2,$t1
    move	$t9,$s1
    dsll32	$a6,$a6,0x18
    ld	$a3,344($sp)
    dsra32	$a6,$a6,0x18
    mflo	$a5
    ld	$a1,288($sp)
    move	$a0,$s3
    sll	$a5,$a5,0x2
    sw	$t0,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    b	.L0da106b4
    nop
.L0da1078c:
    # Line 2224
    ld	$a6,232($sp)
    addiu	$a6,$a6,-1
    mult	$s3,$a6
    move	$a0,$s3
    ld	$a3,328($sp)
    move	$a1,$s2
    move	$a2,$s4
    lw	$a6,28($sp)
    move	$t9,$s7
    mflo	$a5
    addu	$a3,$a3,$a6
    sll	$a5,$a5,0x2
    ld	$a4,288($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a5,$s8,$a5
    b	.L0da106c4
    # Line 2203
    lw	$ra,-15884($gp)
.L0da107d0:
    lw	$s4,28($sp)
    ld	$t1,80($sp)
    ld	$s2,432($sp)
    ld	$s0,424($sp)
.L0da107e0:
    # Line 2232
    ld	$t8,376($sp)
    mult	$t8,$s3
    ld	$s6,336($sp)
    mflo	$a4
    nop
    nop
    mult	$s6,$s3
    # Line 2201
    lw	$t0,0($s0)
    lw	$t3,0($s2)
    # Line 2232
    ld	$a6,88($sp)
    # Line 2201
    addiu	$t3,$t3,-3
    # Line 2232
    lbu	$t2,5171($s5)
    move	$a7,$a6
    xor	$t0,$t0,$t3
    mflo	$a1
    nop
    nop
    mult	$t1,$s3
    ld	$a5,56($sp)
    movz	$a7,$t2,$t0
    move	$a0,$s3
    ld	$a3,304($sp)
    dsll32	$a7,$a7,0x18
    move	$t9,$s1
    sll	$a4,$a4,0x2
    sd	$a4,40($sp)
    addu	$a4,$a4,$s4
    sd	$a4,416($sp)
    sll	$a1,$a1,0x2
    dsra32	$a7,$a7,0x18
    lw	$t1,-15884($gp)
    addu	$s6,$a1,$a3
    addu	$a1,$a1,$s4
    sd	$a1,128($sp)
    mflo	$t0
    lb	$t1,2($t1)
    move	$a2,$s6
    sll	$t0,$t0,0x2
    sw	$t1,4($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a3,$a3,$t0
    ld	$t0,72($sp)
    mult	$t0,$s3
    ld	$a4,40($sp)
    lw	$a6,0($s0)
    lw	$a7,0($s2)
    ld	$t0,304($sp)
    addiu	$a7,$a7,-3
    mflo	$a5
    addu	$a4,$a4,$t0
    sll	$a5,$a5,0x2
    ld	$t1,416($sp)
    bne	$a6,$a7,.L0da108ec
    addu	$a5,$a5,$s8
    # Line 2244
    ld	$a3,128($sp)
    lb	$a7,5171($s5)
    move	$a1,$t1
    lw	$t1,-15884($gp)
    lb	$a6,5210($s5)
    move	$t9,$s1
    move	$a0,$s3
    lb	$t1,10($t1)
    move	$a2,$s6
    bal __glim_SubdivPatchSGIX
    sw	$t1,4($sp)
    b	.L0da0ebe0
    ld	$s5,440($sp)
.L0da108ec:
    # Line 2254
    move	$t9,$s7
    move	$a0,$s3
    move	$a1,$t1
    move	$a2,$s6
    bal __glim_SubdivPatchSGIX
    ld	$a3,128($sp)
    b	.L0da0ebe0
    ld	$s5,440($sp)
.L0da1090c:
    sw	$s4,28($sp)
    # Line 1907
    addu	$a4,$s6,$s7
    sd	$a4,208($sp)
    sd	$a3,136($sp)
    addu	$t2,$s3,$s3
    sll	$t2,$t2,0x2
    sd	$t2,200($sp)
    addu	$t2,$t2,$s4
    b	.L0da0ec84
    sd	$t2,240($sp)
.L0da10934:
    move	$t1,$t0
    # Line 2033
    b	.L0da10318
    sw	$t8,8112($s5)
.L0da10940:
    move	$t1,$t0
    # Line 2045
    b	.L0da10370
    sw	$t9,8152($s5)
.L0da1094c:
    # Line 2084
    mult	$a3,$s3
    # Line 2085
    ld	$a2,224($sp)
    addiu	$a2,$a2,-1
    # Line 2084
    mflo	$s0
    nop
    nop
    # Line 2085
    mult	$s3,$a2
    lb	$a7,5171($s5)
    lb	$a6,5177($s5)
    ld	$a1,64($sp)
    move	$a0,$s3
    lb	$t1,9($t8)
    move	$t9,$s4
    lw	$a4,24($sp)
    addu	$a1,$a1,$s7
    # Line 2084
    sll	$s0,$s0,0x2
    # Line 2085
    sw	$t1,4($sp)
    # Line 2084
    addu	$s0,$s8,$s0
    # Line 2085
    mflo	$t0
    ld	$a3,112($sp)
    move	$a5,$s0
    sll	$t0,$t0,0x2
    ld	$a2,128($sp)
    bal __glim_SubdivPatchSGIX
    addu	$a4,$a4,$t0
    b	.L0da0f6dc
    nop
.L0da109b8:
    # Line 2048
    li	$a5,1
    b	.L0da0f57c
    nop
.L0da109c4:
    # Line 2055
    li	$a5,1
    b	.L0da0f67c
    nop
.L0da109d0:
    # Line 2160
    li	$t2,32
    b	.L0da0f7d4
    ld	$t1,352($sp)
.L0da109dc:
    # Line 2203
    lw	$ra,-15884($gp)
    li	$t9,32
    b	.L0da10710
    lbu	$ra,28($ra)
.end DoRow

# Function: DoNormal
# Declared: Line 2267 (Source lines: 2268-2458)
# Address: 0x0da109f0 - 0x0da11aac (Size: 4284 bytes, Frame: 208)
.ent DoNormal
DoNormal:
    # Line 2268
    addiu	$sp,$sp,-336
    # Line 2279
    sd	$zero,248($sp)
    sd	$s2,280($sp)
    sd	$s3,288($sp)
    sd	$ra,296($sp)
    sd	$s4,304($sp)
    sd	$s7,312($sp)
    sd	$s1,320($sp)
    sd	$s8,328($sp)
    addiu	$t8,$a1,-2
    sd	$t8,176($sp)
    lw	$a2,-15856($gp)
    addiu	$t9,$a1,-1
    sd	$t9,184($sp)
    sltiu	$a2,$a2,1
    sd	$a2,48($sp)
    # Line 2268
    la	$v1,.rodata
    sd	$s6,56($sp)
    # Line 2279
    la	$s6,sub_0da10000
    # Line 2268
    addiu	$v1,$v1,24040
    # Line 2279
    addiu	$t9,$v1,1236
    sd	$t9,88($sp)
    # Line 2268
    sd	$a1,232($sp)
    # Line 2279
    sll	$a1,$a0,0x3
    # Line 2268
    sd	$s0,64($sp)
    # Line 2279
    addu	$a1,$a1,$a0
    # Line 2268
    la	$s0,sub_0daa0000
    # Line 2279
    sll	$a1,$a1,0x4
    sd	$a1,224($sp)
    addiu	$t8,$v1,1232
    # Line 2268
    addiu	$s0,$s0,-3784
    sd	$s5,72($sp)
    # Line 2279
    addiu	$a6,$s0,8152
    sll	$a5,$a0,0x2
    # Line 2270
    lw	$v0,4112($zero)
    # Line 2279
    addu	$a5,$a5,$v1
    addiu	$s5,$v1,1228
    sd	$s5,128($sp)
    addiu	$a5,$a5,1224
    sll	$a1,$a2,0x2
    # Line 2273
    lw	$s5,6084($v0)
    # Line 2279
    sd	$a5,216($sp)
    mtc1	$zero,$f0
    subu	$a1,$a1,$a2
    sd	$a5,240($sp)
    sll	$a1,$a1,0x2
    addu	$a3,$s5,$s5
    addiu	$at,$v1,1240
    # Line 2268
    sdc1	$f24,16($sp)
    # Line 2279
    sll	$a3,$a3,0x2
    li	$a5,1
    sd	$a3,112($sp)
    sll	$a3,$a2,0x3
    # Line 2274
    lwc1	$f24,6076($v0)
    # Line 2279
    sll	$a4,$s5,0x2
    subu	$a3,$a3,$a2
    subu	$a1,$a1,$a2
    sd	$a4,264($sp)
    sll	$a3,$a3,0x3
    subu	$a4,$a4,$s5
    sd	$a4,104($sp)
    addu	$a3,$a3,$a2
    sll	$a1,$a1,0x2
    c.eq.s	$f24,$f0
    addu	$a4,$s5,$a3
    sd	$a4,144($sp)
    li	$a4,1
    sd	$a3,160($sp)
    sll	$a3,$a3,0x2
    sd	$t8,96($sp)
    movt	$a4,$zero,$fcc0
    addu	$a3,$a3,$s0
    addiu	$a3,$a3,10328
    sd	$a3,152($sp)
    li	$a3,684
    # Line 2268
    sd	$a0,40($sp)
    # Line 2279
    multu	$a2,$a3
    li	$a3,2
    sd	$a6,168($sp)
    subu	$a1,$a1,$a2
    movz	$a3,$a5,$a4
    sd	$at,80($sp)
    sll	$a1,$a1,0x2
    subu	$a0,$a0,$a3
    subu	$a1,$a1,$a2
    sd	$a1,208($sp)
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    # Line 2276
    lw	$a0,6100($v0)
    # Line 2275
    lw	$v0,6096($v0)
    # Line 2276
    sd	$a0,200($sp)
    # Line 2279
    addiu	$v1,$v1,1224
    sd	$v1,120($sp)
    mflo	$at
    addiu	$s6,$s6,-20208
    # Line 2275
    sd	$v0,192($sp)
    # Line 2279
    addu	$at,$at,$s0
    addiu	$at,$at,8272
    b	.L0da11a94
    sd	$at,136($sp)
.L0da10b80:
    # Line 2393
    ld	$v1,192($sp)
    blez	$v1,.L0da10c3c
    # Line 2426
    lbu	$at,5168($s0)
    # Line 2393
    lw	$t2,-15872($gp)
    ld	$a7,224($sp)
    sll	$a6,$t2,0x2
    ld	$t0,192($sp)
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$s0
    addu	$a7,$s0,$a7
    move	$t3,$t0
    andi	$t1,$t0,0x7
    addu	$t0,$t0,$t2
    addiu	$a7,$a7,5232
    sll	$t0,$t0,0x2
    addiu	$a6,$a6,8112
    addu	$t0,$t0,$s0
    beqz	$t1,.L0da10be4
    addiu	$t0,$t0,8112
.L0da10bcc:
    # Line 2423
    ld	$t2,264($sp)
    addiu	$t1,$t1,-1
    addiu	$a6,$a6,4
    # Line 2424
    sw	$a7,-4($a6)
    bnez	$t1,.L0da10bcc
    # Line 2423
    addu	$a7,$a7,$t2
.L0da10be4:
    sra	$t8,$t3,0x3
    beqz	$t8,.L0da10c3c
    nop
.L0da10bf0:
    ld	$ra,264($sp)
    addiu	$a6,$a6,32
    addu	$t9,$a7,$ra
    # Line 2424
    sw	$t9,-28($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-24($a6)
    sw	$a7,-32($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-20($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-16($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-12($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-8($a6)
    # Line 2423
    addu	$t9,$t9,$ra
    # Line 2424
    sw	$t9,-4($a6)
    # Line 2423
    bne	$a6,$t0,.L0da10bf0
    addu	$a7,$t9,$ra
.L0da10c3c:
    ld	$ra,200($sp)
    ld	$t0,200($sp)
    ld	$a7,224($sp)
    lw	$t3,-15868($gp)
    blez	$ra,.L0da10cfc
    move	$t2,$t0
    andi	$t1,$t0,0x7
    sll	$a6,$t3,0x2
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$s0
    addu	$a7,$s0,$a7
    addu	$t0,$t0,$t3
    addiu	$a7,$a7,5376
    sll	$t0,$t0,0x2
    addiu	$a6,$a6,8112
    addu	$t0,$t0,$s0
    beqz	$t1,.L0da10c9c
    addiu	$t0,$t0,8112
.L0da10c84:
    # Line 2426
    ld	$t3,264($sp)
    addiu	$t1,$t1,-1
    addiu	$a6,$a6,4
    # Line 2427
    sw	$a7,36($a6)
    bnez	$t1,.L0da10c84
    # Line 2426
    addu	$a7,$a7,$t3
.L0da10c9c:
    sra	$t8,$t2,0x3
    beqz	$t8,.L0da10cfc
    nop
    nop
    nop
.L0da10cb0:
    ld	$ra,264($sp)
    addiu	$a6,$a6,32
    addu	$t9,$a7,$ra
    # Line 2427
    sw	$t9,12($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,16($a6)
    sw	$a7,8($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,20($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,24($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,28($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,32($a6)
    # Line 2426
    addu	$t9,$t9,$ra
    # Line 2427
    sw	$t9,36($a6)
    # Line 2426
    bne	$a6,$t0,.L0da10cb0
    addu	$a7,$t9,$ra
.L0da10cfc:
    li	$ra,3
    addiu	$a6,$s0,8192
    beq	$ra,$at,.L0da117b8
    lw	$t2,-15880($gp)
    # Line 2431
    lw	$v0,-15888($gp)
.L0da10d10:
    beqz	$v0,.L0da10d38
    # Line 2437
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-18528
    addiu	$a3,$s0,8112
    move	$a2,$t2
    lbu	$a0,5170($s0)
    move	$a1,$s5
    bal __glim_SubdivPatchSGIX
    ld	$a4,136($sp)
    lw	$t2,-15880($gp)
.L0da10d38:
    ld	$at,216($sp)
    ld	$ra,240($sp)
    # Line 2438
    # lw $t9, -32696($gp) # &sub_0da10000
    xor	$ra,$ra,$at
    ld	$at,152($sp)
    addiu	$a3,$s0,10784
    addiu	$t9,$t9,-16944
    addiu	$a2,$s0,8112
    movz	$a3,$at,$ra
    move	$a1,$t2
    bal __glim_SubdivPatchSGIX
    lbu	$a0,5170($s0)
    lbu	$v1,5169($s0)
    li	$v0,3
    # Line 2442
    lw	$a0,-15888($gp)
    # Line 2438
    addiu	$t0,$s0,8112
    beq	$v0,$v1,.L0da11808
    lw	$t1,-15876($gp)
.L0da10d80:
    # Line 2442
    beqz	$a0,.L0da10dd0
    ld	$v0,216($sp)
    # Line 2448
    ld	$a6,24($sp)
    addiu	$a6,$a6,-3
    mult	$s5,$a6
    ld	$a4,208($sp)
    # lw $t9, -32696($gp) # &sub_0da10000
    mflo	$a5
    move	$a2,$t1
    addu	$a4,$a4,$a5
    addiu	$t9,$t9,-18528
    sll	$a4,$a4,0x2
    ld	$a3,168($sp)
    move	$a1,$s5
    addu	$a4,$s0,$a4
    lbu	$a0,5171($s0)
    bal __glim_SubdivPatchSGIX
    addiu	$a4,$a4,8272
    lw	$t1,-15876($gp)
    ld	$v0,216($sp)
.L0da10dd0:
    ld	$a4,24($sp)
    ld	$ra,240($sp)
    # Line 2450
    ld	$at,160($sp)
    # Line 2448
    sll	$a3,$a4,0x2
    xor	$ra,$ra,$v0
    # Line 2450
    # lw $t9, -32696($gp) # &sub_0da10000
    # Line 2448
    subu	$a3,$a3,$a4
    # Line 2450
    addu	$at,$a3,$at
    sll	$a3,$a3,0x2
    addiu	$t9,$t9,-16944
    sll	$at,$at,0x2
    addu	$a3,$s0,$a3
    addu	$at,$s0,$at
    addiu	$a3,$a3,10748
    addiu	$at,$at,10292
    lbu	$a0,5171($s0)
    movz	$a3,$at,$ra
    move	$a1,$t1
    bal __glim_SubdivPatchSGIX
    ld	$a2,168($sp)
    # Line 2285
    ld	$a7,248($sp)
.L0da10e24:
    ld	$t0,224($sp)
    ld	$a6,120($sp)
    ld	$a5,240($sp)
    addiu	$t0,$t0,-144
    # Line 2286
    la	$a0,.rodata
    # Line 2285
    sd	$t0,224($sp)
    # Line 2288
    li	$t0,3
    # Line 2285
    addiu	$a5,$a5,-4
    sd	$a5,240($sp)
    addiu	$a7,$a7,1
    # Line 2286
    addiu	$a0,$a0,24040
    sd	$a7,248($sp)
    # Line 2285
    beq	$a5,$a6,.L0da11a00
    # Line 2286
    addiu	$t2,$a0,1224
    ld	$t1,240($sp)
.L0da10e60:
    # Line 2386
    ld	$s4,264($sp)
    # Line 2288
    ld	$a5,176($sp)
    # Line 2386
    ld	$s3,144($sp)
    move	$s7,$s4
    # Line 2286
    beq	$t1,$t2,.L0da11020
    # Line 2288
    srl	$a1,$a5,0x1f
    # Line 2298
    ld	$a6,176($sp)
    # Line 2300
    li	$t9,0xaaaa
    # Line 2305
    li	$a7,0xaaaa
    # Line 2286
    ld	$a2,128($sp)
    # Line 2293
    li	$a4,3
    li	$v1,0xaaaa
    # Line 2286
    ld	$a1,240($sp)
    # Line 2294
    li	$t8,0xaaaa
    # Line 2293
    dsll	$v1,$v1,0x10
    # Line 2286
    ld	$a3,240($sp)
    # Line 2294
    dsll	$t8,$t8,0x10
    # Line 2293
    ori	$v1,$v1,0xaaab
    # Line 2294
    ld	$a0,184($sp)
    # Line 2286
    beq	$a1,$a2,.L0da114a8
    # Line 2294
    ori	$t8,$t8,0xaaab
    # Line 2286
    ld	$a4,96($sp)
    # Line 2298
    li	$a5,0xaaaa
    # Line 2300
    dsll	$t9,$t9,0x10
    # Line 2286
    beq	$a3,$a4,.L0da115cc
    # Line 2300
    ori	$t9,$t9,0xaaab
    # Line 2286
    ld	$t0,80($sp)
    # Line 2305
    dsll	$a7,$a7,0x10
    # Line 2286
    ld	$a6,88($sp)
    # Line 2303
    li	$a4,3
    li	$v1,0xaaaa
    # Line 2286
    ld	$a5,240($sp)
    # Line 2304
    li	$t8,0xaaaa
    # Line 2303
    dsll	$v1,$v1,0x10
    # Line 2304
    ld	$a0,184($sp)
    dsll	$t8,$t8,0x10
    # Line 2303
    ori	$v1,$v1,0xaaab
    # Line 2309
    ld	$a3,184($sp)
    # Line 2286
    beq	$a5,$a6,.L0da11850
    # Line 2304
    ori	$t8,$t8,0xaaab
    # Line 2308
    ld	$t2,176($sp)
    # Line 2286
    ld	$a7,240($sp)
    # Line 2308
    li	$v0,0xaaaa
    # Line 2309
    li	$t1,0xaaaa
    # Line 2310
    li	$a2,0xaaaa
    # Line 2309
    dsll	$t1,$t1,0x10
    # Line 2286
    bne	$a7,$t0,.L0da11118
    # Line 2309
    ori	$t1,$t1,0xaaab
    # Line 2310
    dsll	$a2,$a2,0x10
    # Line 2308
    srl	$t9,$t2,0x1f
    negu	$at,$t2
    dsll	$v0,$v0,0x10
    ori	$v0,$v0,0xaaab
    movz	$at,$t2,$t9
    multu	$at,$v0
    mfhi	$ra
    sra	$ra,$ra,0x1
    negu	$t8,$ra
    li	$v0,3
    movz	$t8,$ra,$t9
    mult	$t8,$v0
    mflo	$t3
    li	$t8,684
    subu	$t2,$t2,$t3
    multu	$t8,$t2
    # Line 2309
    negu	$t0,$a3
    srl	$a6,$a3,0x1f
    movz	$t0,$a3,$a6
    # Line 2308
    mflo	$t3
    nop
    nop
    # Line 2309
    multu	$t0,$t1
    mfhi	$a7
    sra	$a7,$a7,0x1
    negu	$a5,$a7
    movz	$a5,$a7,$a6
    mult	$a5,$v0
    mflo	$a4
    nop
    subu	$a3,$a3,$a4
    multu	$t8,$a3
    # Line 2310
    ld	$t9,232($sp)
    negu	$a1,$t9
    srl	$v1,$t9,0x1f
    ori	$a2,$a2,0xaaab
    movz	$a1,$t9,$v1
    # Line 2309
    mflo	$t2
    nop
    nop
    # Line 2310
    multu	$a1,$a2
    mfhi	$a0
    sra	$a0,$a0,0x1
    negu	$at,$a0
    movz	$at,$a0,$v1
    mult	$at,$v0
    mflo	$ra
    nop
    subu	$t9,$t9,$ra
    multu	$t8,$t9
    # Line 2308
    addu	$t3,$s0,$t3
    addiu	$t3,$t3,3072
    sw	$t3,0($sp)
    # Line 2309
    addu	$t2,$s0,$t2
    # Line 2310
    mflo	$t1
    # Line 2309
    addiu	$t2,$t2,3072
    sw	$t2,4($sp)
    # Line 2310
    addu	$t1,$s0,$t1
    addiu	$t1,$t1,3072
    # Line 2311
    b	.L0da11118
    # Line 2310
    sw	$t1,8($sp)
    nop
    nop
.L0da11020:
    # Line 2288
    li	$a4,0xaaaa
    negu	$a3,$a5
    dsll	$a4,$a4,0x10
    movz	$a3,$a5,$a1
    ori	$a4,$a4,0xaaab
    multu	$a3,$a4
    mfhi	$a2
    sra	$a2,$a2,0x1
    negu	$a0,$a2
    movz	$a0,$a2,$a1
    mult	$a0,$t0
    # Line 2289
    li	$v1,0xaaaa
    ld	$a3,184($sp)
    dsll	$v1,$v1,0x10
    negu	$v0,$a3
    srl	$ra,$a3,0x1f
    ori	$v1,$v1,0xaaab
    movz	$v0,$a3,$ra
    # Line 2288
    mflo	$a6
    nop
    nop
    # Line 2289
    multu	$v0,$v1
    mfhi	$at
    sra	$at,$at,0x1
    negu	$t9,$at
    movz	$t9,$at,$ra
    mult	$t9,$t0
    # Line 2290
    li	$t8,0xaaaa
    ld	$a1,232($sp)
    dsll	$t8,$t8,0x10
    negu	$t3,$a1
    srl	$t1,$a1,0x1f
    ori	$t8,$t8,0xaaab
    movz	$t3,$a1,$t1
    # Line 2289
    mflo	$a4
    nop
    nop
    # Line 2290
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0x1
    negu	$a7,$t2
    movz	$a7,$t2,$t1
    mult	$a7,$t0
    # Line 2288
    subu	$a5,$a5,$a6
    sll	$a2,$a5,0x3
    addu	$a2,$a2,$a5
    sll	$a2,$a2,0x4
    addu	$a2,$s0,$a2
    # Line 2289
    subu	$a3,$a3,$a4
    # Line 2290
    mflo	$a4
    # Line 2289
    sll	$a0,$a3,0x3
    # Line 2290
    subu	$a1,$a1,$a4
    # Line 2289
    addu	$a0,$a0,$a3
    # Line 2290
    sll	$v1,$a1,0x3
    # Line 2288
    sw	$a2,0($sp)
    # Line 2289
    sll	$a0,$a0,0x4
    # Line 2290
    addu	$v1,$v1,$a1
    # Line 2289
    addu	$a0,$s0,$a0
    sw	$a0,4($sp)
    # Line 2290
    sll	$v1,$v1,0x4
    addu	$v1,$s0,$v1
    sw	$v1,8($sp)
.L0da11118:
    # Line 2314
    ld	$a0,240($sp)
    lw	$a0,0($a0)
    li	$a6,2
    ld	$t0,232($sp)
    # Line 2386
    addu	$s4,$s4,$s0
    # Line 2314
    addiu	$a2,$a0,-1
    # Line 2386
    ld	$t8,104($sp)
    addiu	$s4,$s4,10784
    # Line 2314
    addiu	$a7,$a0,-2
    sd	$a7,256($sp)
    beq	$a2,$t0,.L0da11228
    slt	$a6,$a6,$a7
    sd	$a2,32($sp)
    li	$s1,2
    beqz	$a6,.L0da11264
    sd	$a0,24($sp)
    lw	$s8,4($sp)
    la	$s7,sub_0da10000
    ld	$s4,264($sp)
    ld	$s3,144($sp)
    ld	$s2,208($sp)
    addiu	$s7,$s7,-19024
    addu	$s4,$s4,$s0
    sll	$s3,$s3,0x2
    addu	$s2,$s5,$s2
    addiu	$s4,$s4,10784
    sll	$s2,$s2,0x2
    addu	$s3,$s3,$s0
    addu	$s2,$s2,$s0
    addiu	$s3,$s3,10328
    addiu	$s2,$s2,8272
    nop
    nop
    nop
.L0da111a0:
    # Line 2320
    move	$a0,$s5
    move	$t9,$s6
    move	$a1,$s1
    lw	$a2,0($sp)
    move	$a3,$s8
    lw	$a4,8($sp)
    bal __glim_SubdivPatchSGIX
    addiu	$a5,$s0,5128
    lw	$t8,-15888($gp)
    beqz	$t8,.L0da111e0
    # Line 2326
    move	$a0,$s5
    move	$t9,$s7
    addiu	$a2,$s0,5128
    li	$a1,6
    bal __glim_SubdivPatchSGIX
    move	$a3,$s2
.L0da111e0:
    # Line 2330
    # lw $t9, -32696($gp) # &sub_0da10000
    ld	$ra,248($sp)
    move	$a2,$s4
    addiu	$t9,$t9,-18288
    addiu	$a1,$s0,5128
    movz	$a2,$s3,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
    # Line 2319
    ld	$v0,256($sp)
    ld	$at,264($sp)
    addiu	$s1,$s1,1
    slt	$v0,$s1,$v0
    addu	$s4,$s4,$at
    addu	$s3,$s3,$at
    bnez	$v0,.L0da111a0
    addu	$s2,$s2,$at
    b	.L0da1126c
    lw	$t9,-15884($gp)
.L0da11228:
    # Line 2386
    li	$s1,2
    beqz	$a6,.L0da10b80
    sd	$a0,24($sp)
    ld	$s2,208($sp)
    sll	$t8,$t8,0x2
    sll	$s3,$s3,0x2
    addu	$s2,$s5,$s2
    addu	$s3,$s3,$s0
    sll	$s2,$s2,0x2
    ld	$s8,112($sp)
    addiu	$s3,$s3,10328
    addu	$s2,$s2,$s0
    sd	$t8,272($sp)
    b	.L0da11a80
    addiu	$s2,$s2,8272
.L0da11264:
    # Line 2319
    lw	$s8,4($sp)
    lw	$t9,-15884($gp)
.L0da1126c:
    lbu	$t9,1($t9)
    li	$t8,32
    beq	$t8,$t9,.L0da116cc
    # Line 2338
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    # Line 2348
    move	$a0,$s5
    move	$t9,$s6
    addiu	$a5,$s0,5128
    lw	$a4,8($sp)
    move	$a3,$s8
    lw	$a2,0($sp)
    bal __glim_SubdivPatchSGIX
    li	$a1,1
    lw	$ra,-15888($gp)
    beqz	$ra,.L0da112c0
    # Line 2354
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-19024
    move	$a0,$s5
    addiu	$a2,$s0,5128
    li	$a1,6
    bal __glim_SubdivPatchSGIX
    ld	$a3,136($sp)
.L0da112c0:
    ld	$at,216($sp)
    ld	$ra,240($sp)
    # Line 2358
    # lw $t9, -32696($gp) # &sub_0da10000
    xor	$ra,$ra,$at
    ld	$at,152($sp)
    addiu	$a2,$s0,10784
    addiu	$t9,$t9,-18288
    addiu	$a1,$s0,5128
    movz	$a2,$at,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
    lw	$s8,4($sp)
.L0da112f0:
    ld	$a0,24($sp)
    addiu	$a0,$a0,-3
    mult	$s5,$a0
    lw	$v1,-15884($gp)
    lbu	$v1,2($v1)
    li	$v0,32
    mflo	$s1
    beq	$v0,$v1,.L0da11718
    # Line 2376
    ld	$a1,256($sp)
    move	$t9,$s6
    move	$a0,$s5
    lw	$a4,8($sp)
    addiu	$a5,$s0,5128
    move	$a3,$s8
    bal __glim_SubdivPatchSGIX
    lw	$a2,0($sp)
    lw	$a1,-15888($gp)
    beqz	$a1,.L0da11364
    # Line 2382
    ld	$a3,208($sp)
    move	$a0,$s5
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$a2,$s0,5128
    addu	$a3,$s1,$a3
    addiu	$t9,$t9,-19024
    sll	$a3,$a3,0x2
    li	$a1,6
    addu	$a3,$s0,$a3
    bal __glim_SubdivPatchSGIX
    addiu	$a3,$a3,8272
.L0da11364:
    # Line 2386
    ld	$at,160($sp)
    ld	$v0,216($sp)
    sll	$a2,$s1,0x2
    ld	$ra,240($sp)
    addu	$a2,$s0,$a2
    addu	$at,$s1,$at
    addiu	$a2,$a2,10784
    # lw $t9, -32696($gp) # &sub_0da10000
    sll	$at,$at,0x2
    xor	$ra,$ra,$v0
    addu	$at,$s0,$at
    addiu	$t9,$t9,-18288
    addiu	$at,$at,10328
    addiu	$a1,$s0,5128
    movz	$a2,$at,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
    b	.L0da10e24
    # Line 2285
    ld	$a7,248($sp)
.L0da113b0:
    # Line 2405
    lw	$a4,8($sp)
    move	$t9,$s6
    move	$a0,$s5
    move	$a1,$s1
    lw	$a3,4($sp)
    addiu	$a5,$s0,5128
    bal __glim_SubdivPatchSGIX
    lw	$a2,0($sp)
    lw	$v0,-15888($gp)
    beqz	$v0,.L0da113f4
    # Line 2411
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    move	$a0,$s5
    addiu	$t9,$t9,-19024
    addiu	$a2,$s0,5128
    li	$a1,6
    bal __glim_SubdivPatchSGIX
    move	$a3,$s2
.L0da113f4:
    # Line 2415
    # lw $t9, -32696($gp) # &sub_0da10000
    ld	$ra,248($sp)
    move	$a2,$s4
    addiu	$t9,$t9,-18288
    addiu	$a1,$s0,5128
    movz	$a2,$s3,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,6
.L0da11414:
    # Line 2393
    ld	$v1,264($sp)
.L0da11418:
    addu	$s8,$s8,$v1
    addu	$s4,$s4,$v1
    ld	$at,256($sp)
    ld	$v0,272($sp)
    addu	$s7,$s7,$v1
    addiu	$s1,$s1,1
    addu	$s3,$s3,$v1
    slt	$at,$s1,$at
    addu	$s2,$s2,$v1
    addu	$v0,$v0,$v1
    # Line 2386
    lw	$v1,-15884($gp)
    # Line 2393
    beqz	$at,.L0da10b80
    sd	$v0,272($sp)
    # Line 2386
    lbu	$v1,3($v1)
.L0da11450:
    li	$v0,32
    bne	$v0,$v1,.L0da113b0
    # Line 2395
    lw	$a0,4($sp)
    # lw $t9, -32696($gp) # &sub_0da10000
    ld	$a2,272($sp)
    addiu	$a3,$s0,5128
    addiu	$t9,$t9,-19472
    addu	$a2,$a2,$a0
    addu	$a1,$s7,$a0
    bal __glim_SubdivPatchSGIX
    addu	$a0,$s8,$a0
    lw	$a3,-15888($gp)
    beqz	$a3,.L0da11414
    # Line 2400
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    addiu	$a2,$s0,5128
    addiu	$t9,$t9,-18704
    move	$a1,$s5
    li	$a0,1
    bal __glim_SubdivPatchSGIX
    move	$a3,$s2
    b	.L0da11418
    # Line 2393
    ld	$v1,264($sp)
.L0da114a8:
    # Line 2293
    ld	$a2,176($sp)
    negu	$v0,$a2
    srl	$ra,$a2,0x1f
    movz	$v0,$a2,$ra
    multu	$v0,$v1
    mfhi	$at
    sra	$at,$at,0x1
    negu	$t9,$at
    movz	$t9,$at,$ra
    mult	$t9,$a4
    # Line 2294
    negu	$t3,$a0
    srl	$t1,$a0,0x1f
    movz	$t3,$a0,$t1
    # Line 2293
    mflo	$a3
    nop
    nop
    # Line 2294
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0x1
    negu	$t0,$t2
    movz	$t0,$t2,$t1
    mult	$t0,$a4
    # Line 2295
    li	$a7,0xaaaa
    ld	$v1,232($sp)
    dsll	$a7,$a7,0x10
    negu	$a6,$v1
    srl	$a5,$v1,0x1f
    ori	$a7,$a7,0xaaab
    movz	$a6,$v1,$a5
    # Line 2294
    mflo	$a1
    nop
    nop
    # Line 2295
    multu	$a6,$a7
    # Line 2293
    subu	$a2,$a2,$a3
    sll	$v0,$a2,0x2
    # Line 2295
    mfhi	$a6
    # Line 2293
    subu	$v0,$v0,$a2
    # Line 2295
    sra	$a6,$a6,0x1
    # Line 2293
    sll	$v0,$v0,0x2
    # Line 2295
    negu	$a3,$a6
    movz	$a3,$a6,$a5
    # Line 2293
    subu	$v0,$v0,$a2
    # Line 2295
    mult	$a3,$a4
    # Line 2293
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a2
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    addiu	$v0,$v0,576
    # Line 2294
    subu	$a0,$a0,$a1
    # Line 2295
    mflo	$a1
    # Line 2294
    sll	$at,$a0,0x2
    # Line 2295
    subu	$v1,$v1,$a1
    # Line 2294
    subu	$at,$at,$a0
    # Line 2295
    sll	$ra,$v1,0x2
    # Line 2294
    sll	$at,$at,0x2
    # Line 2295
    subu	$ra,$ra,$v1
    # Line 2294
    subu	$at,$at,$a0
    # Line 2295
    sll	$ra,$ra,0x2
    # Line 2294
    sll	$at,$at,0x2
    # Line 2295
    subu	$ra,$ra,$v1
    # Line 2294
    addu	$at,$at,$a0
    # Line 2295
    sll	$ra,$ra,0x2
    # Line 2294
    sll	$at,$at,0x2
    # Line 2295
    addu	$ra,$ra,$v1
    # Line 2293
    sw	$v0,0($sp)
    # Line 2294
    addu	$at,$s0,$at
    # Line 2295
    sll	$ra,$ra,0x2
    # Line 2294
    addiu	$at,$at,576
    sw	$at,4($sp)
    # Line 2295
    addu	$ra,$s0,$ra
    addiu	$ra,$ra,576
    # Line 2296
    b	.L0da11118
    # Line 2295
    sw	$ra,8($sp)
.L0da115cc:
    # Line 2298
    srl	$a2,$a6,0x1f
    negu	$a4,$a6
    dsll	$a5,$a5,0x10
    ori	$a5,$a5,0xaaab
    movz	$a4,$a6,$a2
    multu	$a4,$a5
    mfhi	$a3
    sra	$a3,$a3,0x1
    negu	$a1,$a3
    li	$t0,3
    movz	$a1,$a3,$a2
    mult	$a1,$t0
    # Line 2299
    li	$a0,0xaaaa
    ld	$a4,184($sp)
    dsll	$a0,$a0,0x10
    negu	$v1,$a4
    srl	$at,$a4,0x1f
    ori	$a0,$a0,0xaaab
    movz	$v1,$a4,$at
    # Line 2298
    mflo	$t1
    nop
    nop
    # Line 2299
    multu	$v1,$a0
    mfhi	$v0
    sra	$v0,$v0,0x1
    negu	$ra,$v0
    movz	$ra,$v0,$at
    mult	$ra,$t0
    # Line 2300
    ld	$a3,232($sp)
    negu	$t8,$a3
    srl	$t2,$a3,0x1f
    movz	$t8,$a3,$t2
    # Line 2299
    mflo	$a5
    nop
    nop
    # Line 2300
    multu	$t8,$t9
    mfhi	$t3
    sra	$t3,$t3,0x1
    negu	$a7,$t3
    movz	$a7,$t3,$t2
    # Line 2298
    subu	$a6,$a6,$t1
    # Line 2300
    mult	$a7,$t0
    # Line 2298
    sll	$a2,$a6,0x6
    subu	$a2,$a2,$a6
    sll	$a2,$a2,0x2
    addu	$a2,$s0,$a2
    addiu	$a2,$a2,1120
    # Line 2299
    subu	$a4,$a4,$a5
    # Line 2300
    mflo	$a5
    # Line 2299
    sll	$a1,$a4,0x6
    # Line 2300
    subu	$a3,$a3,$a5
    # Line 2299
    subu	$a1,$a1,$a4
    # Line 2300
    sll	$a0,$a3,0x6
    # Line 2299
    sll	$a1,$a1,0x2
    # Line 2300
    subu	$a0,$a0,$a3
    # Line 2298
    sw	$a2,0($sp)
    # Line 2299
    addu	$a1,$s0,$a1
    # Line 2300
    sll	$a0,$a0,0x2
    # Line 2299
    addiu	$a1,$a1,1120
    sw	$a1,4($sp)
    # Line 2300
    addu	$a0,$s0,$a0
    addiu	$a0,$a0,1120
    # Line 2301
    b	.L0da11118
    # Line 2300
    sw	$a0,8($sp)
.L0da116cc:
    # Line 2338
    ld	$a2,112($sp)
    addiu	$a3,$s0,5128
    ld	$a0,264($sp)
    addiu	$t9,$t9,-19472
    move	$a1,$s8
    addu	$a2,$a2,$s8
    bal __glim_SubdivPatchSGIX
    addu	$a0,$a0,$s8
    lw	$a3,-15888($gp)
    beqz	$a3,.L0da112f0
    # Line 2343
    nop	# was lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,-18704
    addiu	$a2,$s0,5128
    move	$a1,$s5
    li	$a0,1
    bal __glim_SubdivPatchSGIX
    ld	$a3,136($sp)
    b	.L0da112f0
    lw	$s8,4($sp)
.L0da11718:
    # Line 2365
    ld	$a2,256($sp)
    mult	$a2,$s5
    ld	$a1,32($sp)
    mflo	$a0
    nop
    nop
    mult	$a1,$s5
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$a3,$s0,5128
    sll	$s2,$s1,0x2
    addiu	$t9,$t9,-19472
    addu	$a1,$s2,$s8
    sll	$a0,$a0,0x2
    mflo	$a2
    addu	$a0,$s8,$a0
    sll	$a2,$a2,0x2
    bal __glim_SubdivPatchSGIX
    addu	$a2,$s8,$a2
    lw	$a3,-15888($gp)
    beqz	$a3,.L0da10e24
    # Line 2285
    ld	$a7,248($sp)
    # Line 2370
    ld	$at,208($sp)
    addiu	$a2,$s0,5128
    ld	$v0,216($sp)
    addu	$a3,$s2,$s0
    ld	$ra,240($sp)
    addu	$at,$s1,$at
    addiu	$a3,$a3,10784
    # lw $t9, -32696($gp) # &sub_0da10000
    sll	$at,$at,0x2
    xor	$ra,$ra,$v0
    addu	$at,$s0,$at
    addiu	$t9,$t9,-18704
    addiu	$at,$at,8272
    move	$a1,$s5
    movz	$a3,$at,$ra
    bal __glim_SubdivPatchSGIX
    li	$a0,1
    b	.L0da10e24
    # Line 2285
    ld	$a7,248($sp)
.L0da117b8:
    # Line 2426
    blez	$t2,.L0da10d10
    # Line 2431
    lw	$v0,-15888($gp)
    # Line 2426
    sll	$t1,$t2,0x2
    addu	$t1,$t1,$s0
    addiu	$a7,$s0,8112
    move	$t8,$t2
    andi	$t3,$t2,0x1
    sra	$ra,$t8,0x1
    move	$t0,$a7
    beqz	$t3,.L0da117f8
    addiu	$t1,$t1,8192
    li	$t9,32
    lw	$t3,8192($s0)
    # Line 2431
    addiu	$a7,$a7,4
    # Line 2426
    beq	$t3,$t9,.L0da11a40
    # Line 2431
    addiu	$a6,$a6,4
.L0da117f8:
    bnez	$ra,.L0da1197c
    # Line 2426
    li	$a3,32
.L0da11800:
    b	.L0da10d10
    # Line 2431
    lw	$v0,-15888($gp)
.L0da11808:
    # Line 2438
    blez	$t1,.L0da10d80
    sll	$a7,$t1,0x2
    addiu	$a6,$s0,8192
    move	$t8,$t1
    andi	$t2,$t1,0x1
    addu	$a7,$a7,$s0
    sra	$t9,$t8,0x1
    beqz	$t2,.L0da1183c
    addiu	$a7,$a7,8192
    lw	$t2,8232($s0)
    li	$t3,32
    beq	$t2,$t3,.L0da11a50
    # Line 2442
    addiu	$a6,$a6,4
.L0da1183c:
    bnez	$t9,.L0da11a8c
    # Line 2438
    li	$t3,32
    b	.L0da10d80
    nop
    nop
.L0da11850:
    # Line 2305
    ori	$a7,$a7,0xaaab
    # Line 2303
    ld	$a2,176($sp)
    negu	$v0,$a2
    srl	$ra,$a2,0x1f
    movz	$v0,$a2,$ra
    multu	$v0,$v1
    mfhi	$at
    sra	$at,$at,0x1
    negu	$t9,$at
    movz	$t9,$at,$ra
    mult	$t9,$a4
    # Line 2304
    negu	$t3,$a0
    srl	$t1,$a0,0x1f
    movz	$t3,$a0,$t1
    # Line 2303
    mflo	$a3
    nop
    nop
    # Line 2304
    multu	$t3,$t8
    mfhi	$t2
    sra	$t2,$t2,0x1
    negu	$t0,$t2
    movz	$t0,$t2,$t1
    mult	$t0,$a4
    # Line 2305
    ld	$v1,232($sp)
    negu	$a6,$v1
    srl	$a5,$v1,0x1f
    movz	$a6,$v1,$a5
    # Line 2304
    mflo	$a1
    nop
    nop
    # Line 2305
    multu	$a6,$a7
    # Line 2303
    subu	$a2,$a2,$a3
    sll	$v0,$a2,0x2
    # Line 2305
    mfhi	$a6
    # Line 2303
    subu	$v0,$v0,$a2
    # Line 2305
    sra	$a6,$a6,0x1
    # Line 2303
    sll	$v0,$v0,0x3
    # Line 2305
    negu	$a3,$a6
    movz	$a3,$a6,$a5
    # Line 2303
    addu	$v0,$v0,$a2
    # Line 2305
    mult	$a3,$a4
    # Line 2303
    sll	$v0,$v0,0x2
    subu	$v0,$v0,$a2
    sll	$v0,$v0,0x2
    addu	$v0,$s0,$v0
    addiu	$v0,$v0,1880
    # Line 2304
    subu	$a0,$a0,$a1
    # Line 2305
    mflo	$a1
    # Line 2304
    sll	$at,$a0,0x2
    # Line 2305
    subu	$v1,$v1,$a1
    # Line 2304
    subu	$at,$at,$a0
    # Line 2305
    sll	$ra,$v1,0x2
    # Line 2304
    sll	$at,$at,0x3
    # Line 2305
    subu	$ra,$ra,$v1
    # Line 2304
    addu	$at,$at,$a0
    # Line 2305
    sll	$ra,$ra,0x3
    # Line 2304
    sll	$at,$at,0x2
    # Line 2305
    addu	$ra,$ra,$v1
    # Line 2304
    subu	$at,$at,$a0
    # Line 2305
    sll	$ra,$ra,0x2
    # Line 2304
    sll	$at,$at,0x2
    # Line 2305
    subu	$ra,$ra,$v1
    # Line 2303
    sw	$v0,0($sp)
    # Line 2304
    addu	$at,$s0,$at
    # Line 2305
    sll	$ra,$ra,0x2
    # Line 2304
    addiu	$at,$at,1880
    sw	$at,4($sp)
    # Line 2305
    addu	$ra,$s0,$ra
    addiu	$ra,$ra,1880
    # Line 2306
    b	.L0da11118
    # Line 2305
    sw	$ra,8($sp)
    nop
.L0da11970:
    # Line 2431
    beq	$a6,$t1,.L0da11800
    addiu	$a7,$a7,8
    # Line 2426
    li	$a3,32
.L0da1197c:
    lw	$a0,0($a6)
    li	$a1,32
    beq	$a0,$a1,.L0da119a4
    lw	$a2,4($a6)
.L0da1198c:
    bne	$a2,$a3,.L0da11970
    # Line 2431
    addiu	$a6,$a6,8
    # Line 2433
    addiu	$t0,$t0,4
    lw	$a4,4($a7)
    b	.L0da11970
    sw	$a4,-4($t0)
.L0da119a4:
    addiu	$t0,$t0,4
    lw	$a5,0($a7)
    b	.L0da1198c
    sw	$a5,-4($t0)
    nop
    nop
    nop
.L0da119c0:
    # Line 2442
    beq	$a6,$a7,.L0da10d80
    # Line 2438
    li	$t3,32
    li	$t9,32
.L0da119cc:
    lw	$t2,40($a6)
    beq	$t2,$t3,.L0da119f0
    lw	$t8,44($a6)
.L0da119d8:
    bne	$t8,$t9,.L0da119c0
    # Line 2442
    addiu	$a6,$a6,8
    # Line 2444
    addiu	$t0,$t0,4
    lw	$ra,40($t0)
    b	.L0da119c0
    sw	$ra,36($t0)
.L0da119f0:
    addiu	$t0,$t0,4
    lw	$at,40($t0)
    b	.L0da119d8
    sw	$at,36($t0)
.L0da11a00:
    # Line 2285
    mtc1	$zero,$f1
    c.eq.s $f24,$f1
    bc1f .L0da11a60
    ld	$s2,280($sp)
.L0da11a10:
    ld	$s3,288($sp)
    ld	$s6,56($sp)
    ld	$s4,304($sp)
    ld	$s0,64($sp)
    ld	$s5,72($sp)
    ld	$s7,312($sp)
    ld	$ra,296($sp)
    ld	$s1,320($sp)
    ld	$s8,328($sp)
    ldc1	$f24,16($sp)
    # Line 2458
    jr	$ra
    addiu	$sp,$sp,336
.L0da11a40:
    # Line 2433
    lw	$v0,8112($s0)
    addiu	$t0,$s0,8116
    b	.L0da117f8
    sw	$v0,8112($s0)
.L0da11a50:
    # Line 2444
    lw	$v1,8156($s0)
    addiu	$t0,$s0,8116
    b	.L0da1183c
    sw	$v1,8152($s0)
.L0da11a60:
    # Line 2456
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,7216
    ld	$a0,40($sp)
    bal __glim_SubdivPatchSGIX
    ld	$a1,48($sp)
    b	.L0da11a10
    ld	$s2,280($sp)
    nop
.L0da11a80:
    # Line 2386
    lw	$v1,-15884($gp)
    b	.L0da11450
    lbu	$v1,3($v1)
.L0da11a8c:
    b	.L0da119cc
    # Line 2438
    li	$t9,32
.L0da11a94:
    # Line 2286
    la	$a0,.rodata
    addiu	$a0,$a0,24040
    # Line 2288
    li	$t0,3
    # Line 2286
    addiu	$t2,$a0,1224
    b	.L0da10e60
    ld	$t1,240($sp)
.end DoNormal

# Function: DoInterpolate
# Declared: Line 2462 (Source lines: 2463-2479)
# Address: 0x0da11ab0 - 0x0da11c28 (Size: 376 bytes, Frame: 0)
.ent DoInterpolate
DoInterpolate:
    # Line 2469
    la	$v1,.rodata
    sll	$a0,$a0,0x2
    addiu	$v1,$v1,25264
    # Line 2465
    lw	$at,4112($zero)
    # Line 2469
    addu	$v1,$v1,$a0
    lw	$v1,0($v1)
    # Line 2468
    lw	$v0,6084($at)
    # Line 2469
    addiu	$v1,$v1,-2
    mult	$v0,$v1
    mflo	$a6
    # Line 2463
    move	$a5,$a1
    # Line 2469
    blez	$a6,.L0da11c20
    lwc1	$f6,6076($at)
    sll	$a3,$a6,0x2
    sll	$a1,$a1,0x2
    li	$a4,1
    subu	$a1,$a1,$a5
    la	$t0,sub_0daa0000
    slt	$a2,$a6,$a4
    sll	$a1,$a1,0x2
    movz	$a4,$a6,$a2
    subu	$a1,$a1,$a5
    addiu	$t0,$t0,-3784
    sll	$a1,$a1,0x2
    addiu	$a2,$t0,9640
    subu	$a1,$a1,$a5
    addu	$a3,$t0,$a3
    sll	$a1,$a1,0x2
    ldc1	$f7,_lit8_3ff0000000000000
    move	$a7,$a4
    subu	$a1,$a1,$a5
    cvt.d.s	$f8,$f6
    andi	$a4,$a4,0x3
    sll	$a1,$a1,0x2
    addiu	$a3,$a3,9640
    addu	$a1,$a1,$t0
    sub.d	$f7,$f7,$f8
    beqz	$a4,.L0da11b7c
    addiu	$a1,$a1,8272
.L0da11b4c:
    # Line 2476
    lwc1	$f10,0($a2)
    lwc1	$f9,0($a1)
    mul.s	$f9,$f9,$f6
    cvt.d.s	$f10,$f10
    cvt.d.s	$f9,$f9
    madd.d	$f9,$f9,$f10,$f7
    addiu	$a4,$a4,-1
    # Line 2475
    addiu	$a1,$a1,4
    # Line 2476
    cvt.s.d	$f9,$f9
    # Line 2475
    addiu	$a2,$a2,4
    bnez	$a4,.L0da11b4c
    # Line 2476
    swc1	$f9,-4($a1)
.L0da11b7c:
    sra	$a4,$a7,0x2
    beqz	$a4,.L0da11c20
    nop
    nop
    nop
.L0da11b90:
    lwc1	$f16,12($a2)
    lwc1	$f13,12($a1)
    lwc1	$f14,8($a2)
    lwc1	$f12,8($a1)
    mul.s	$f13,$f13,$f6
    cvt.d.s	$f16,$f16
    mul.s	$f12,$f12,$f6
    cvt.d.s	$f14,$f14
    lwc1	$f15,4($a2)
    cvt.d.s	$f13,$f13
    madd.d	$f13,$f13,$f16,$f7
    lwc1	$f11,4($a1)
    cvt.d.s	$f12,$f12
    madd.d	$f12,$f12,$f14,$f7
    lwc1	$f14,0($a2)
    lwc1	$f10,0($a1)
    mul.s	$f11,$f11,$f6
    cvt.d.s	$f15,$f15
    mul.s	$f10,$f10,$f6
    cvt.d.s	$f14,$f14
    cvt.d.s	$f11,$f11
    madd.d	$f11,$f11,$f15,$f7
    cvt.d.s	$f10,$f10
    madd.d	$f10,$f10,$f14,$f7
    # Line 2475
    addiu	$a1,$a1,16
    # Line 2476
    cvt.s.d	$f13,$f13
    # Line 2475
    addiu	$a2,$a2,16
    # Line 2476
    swc1	$f13,-4($a1)
    cvt.s.d	$f12,$f12
    # Line 2475
    sltu	$a5,$a2,$a3
    # Line 2476
    swc1	$f12,-8($a1)
    cvt.s.d	$f11,$f11
    swc1	$f11,-12($a1)
    cvt.s.d	$f10,$f10
    # Line 2475
    bnez	$a5,.L0da11b90
    # Line 2476
    swc1	$f10,-16($a1)
.L0da11c20:
    # Line 2479
    jr	$ra
    nop
.end DoInterpolate

# Function: DoInterpolateNormal
# Declared: Line 2483 (Source lines: 2484-2518)
# Address: 0x0da11c30 - 0x0da11e98 (Size: 616 bytes, Frame: 0)
.ent DoInterpolateNormal
DoInterpolateNormal:
    # Line 2497
    la	$a7,.rodata
    sll	$t0,$a0,0x2
    addiu	$a7,$a7,25264
    addu	$a7,$a7,$t0
    lw	$a4,-4($a7)
    la	$a6,sub_0daa0000
    # Line 2490
    lw	$a5,4112($zero)
    # Line 2497
    addiu	$a4,$a4,-3
    ldc1	$f5,_lit8_3fe0000000000000
    # Line 2484
    move	$t1,$a1
    # Line 2497
    bltz	$a4,.L0da11ccc
    # Line 2490
    lwc1	$f6,6076($a5)
    # Line 2497
    addiu	$a6,$a6,-3784
    sll	$a5,$a4,0x2
    subu	$a5,$a5,$a4
    sll	$a2,$a5,0x2
    addu	$a2,$a2,$a6
    sll	$a3,$a5,0x3
    addiu	$a5,$a5,3
    addu	$a3,$a3,$a6
    sll	$a5,$a5,0x2
    addiu	$a3,$a3,10784
    addu	$a5,$a5,$a6
    addiu	$a2,$a2,10784
    addiu	$a5,$a5,10784
    nop
    nop
    # Line 2500
    lwc1	$f2,0($a2)
.L0da11ca0:
    swc1	$f2,0($a3)
    lwc1	$f1,4($a2)
    swc1	$f1,4($a3)
    lwc1	$f0,8($a2)
    # Line 2497
    addiu	$a4,$a4,-1
    addiu	$a3,$a3,-24
    addiu	$a5,$a5,-12
    addiu	$a2,$a2,-12
    # Line 2500
    swc1	$f0,32($a3)
    # Line 2497
    bgezl	$a4,.L0da11ca0
    # Line 2500
    lwc1	$f2,0($a2)
.L0da11ccc:
    # Line 2497
    lw	$t0,0($a7)
    li	$a4,1
    la	$a6,sub_0daa0000
    addiu	$a3,$t0,-3
    slti	$t2,$t0,5
    addiu	$a6,$a6,-3784
    # Line 2506
    sll	$a7,$t0,0x2
    # Line 2497
    bnez	$t2,.L0da11d68
    # Line 2506
    subu	$a7,$a7,$t0
    # Line 2497
    addiu	$a5,$a6,10808
    addiu	$a2,$a6,10796
    nop
    # Line 2509
    lwc1	$f9,16($a2)
.L0da11d00:
    lwc1	$f8,20($a2)
    lwc1	$f7,-4($a2)
    lwc1	$f4,-8($a2)
    lwc1	$f3,-12($a2)
    add.s	$f7,$f7,$f8
    lwc1	$f8,12($a2)
    add.s	$f4,$f4,$f9
    cvt.d.s	$f7,$f7
    add.s	$f3,$f3,$f8
    cvt.d.s	$f4,$f4
    mul.d	$f7,$f7,$f5
    cvt.d.s	$f3,$f3
    mul.d	$f4,$f4,$f5
    # Line 2506
    addiu	$a2,$a2,24
    # Line 2509
    cvt.s.d	$f7,$f7
    mul.d	$f3,$f3,$f5
    cvt.s.d	$f4,$f4
    swc1	$f7,-16($a2)
    # Line 2506
    addiu	$a4,$a4,2
    # Line 2509
    swc1	$f4,-20($a2)
    cvt.s.d	$f3,$f3
    # Line 2506
    addiu	$a5,$a5,24
    slt	$t3,$a4,$a3
    # Line 2509
    swc1	$f3,-24($a2)
    # Line 2506
    bnezl	$t3,.L0da11d00
    # Line 2509
    lwc1	$f9,16($a2)
.L0da11d68:
    # Line 2506
    addiu	$a5,$a7,-6
    li	$a4,1
    addiu	$a1,$a6,10784
    blez	$a5,.L0da11e90
    sll	$a3,$a5,0x2
    ldc1	$f7,_lit8_3ff0000000000000
    addu	$a3,$a6,$a3
    slti	$t0,$a7,7
    sll	$a2,$t1,0x3
    movz	$a4,$a5,$t0
    subu	$a2,$a2,$t1
    addiu	$a3,$a3,10784
    sll	$a2,$a2,0x3
    move	$t0,$a4
    addu	$a2,$a2,$t1
    cvt.d.s	$f8,$f6
    andi	$a4,$a4,0x3
    sll	$a2,$a2,0x2
    sra	$t1,$t0,0x2
    addu	$a2,$a2,$a6
    sub.d	$f7,$f7,$f8
    beqz	$a4,.L0da11df4
    addiu	$a2,$a2,10328
.L0da11dc4:
    # Line 2515
    lwc1	$f10,0($a1)
    lwc1	$f9,0($a2)
    mul.s	$f9,$f9,$f6
    cvt.d.s	$f10,$f10
    cvt.d.s	$f9,$f9
    madd.d	$f9,$f9,$f10,$f7
    addiu	$a4,$a4,-1
    # Line 2514
    addiu	$a2,$a2,4
    # Line 2515
    cvt.s.d	$f9,$f9
    # Line 2514
    addiu	$a1,$a1,4
    bnez	$a4,.L0da11dc4
    # Line 2515
    swc1	$f9,-4($a2)
.L0da11df4:
    beqz	$t1,.L0da11e90
    nop
    nop
.L0da11e00:
    lwc1	$f16,12($a1)
    lwc1	$f13,12($a2)
    lwc1	$f14,8($a1)
    lwc1	$f12,8($a2)
    mul.s	$f13,$f13,$f6
    cvt.d.s	$f16,$f16
    mul.s	$f12,$f12,$f6
    cvt.d.s	$f14,$f14
    lwc1	$f15,4($a1)
    cvt.d.s	$f13,$f13
    madd.d	$f13,$f13,$f16,$f7
    lwc1	$f11,4($a2)
    cvt.d.s	$f12,$f12
    madd.d	$f12,$f12,$f14,$f7
    lwc1	$f14,0($a1)
    lwc1	$f10,0($a2)
    mul.s	$f11,$f11,$f6
    cvt.d.s	$f15,$f15
    mul.s	$f10,$f10,$f6
    cvt.d.s	$f14,$f14
    cvt.d.s	$f11,$f11
    madd.d	$f11,$f11,$f15,$f7
    cvt.d.s	$f10,$f10
    madd.d	$f10,$f10,$f14,$f7
    # Line 2514
    addiu	$a2,$a2,16
    # Line 2515
    cvt.s.d	$f13,$f13
    # Line 2514
    addiu	$a1,$a1,16
    # Line 2515
    swc1	$f13,-4($a2)
    cvt.s.d	$f12,$f12
    # Line 2514
    sltu	$t2,$a1,$a3
    # Line 2515
    swc1	$f12,-8($a2)
    cvt.s.d	$f11,$f11
    swc1	$f11,-12($a2)
    cvt.s.d	$f10,$f10
    # Line 2514
    bnez	$t2,.L0da11e00
    # Line 2515
    swc1	$f10,-16($a2)
.L0da11e90:
    # Line 2518
    jr	$ra
    nop
.end DoInterpolateNormal

# Function: DoRender
# Declared: Line 2523 (Source lines: 2524-2851)
# Address: 0x0da11ea0 - 0x0da134ac (Size: 5644 bytes, Frame: 144)
.ent DoRender
DoRender:
    # Line 2524
    addiu	$sp,$sp,-144
    sd	$s4,128($sp)
    sd	$ra,120($sp)
    sd	$s6,112($sp)
    sd	$s2,104($sp)
    sd	$s5,48($sp)
    sd	$s1,40($sp)
    sd	$s0,56($sp)
    sd	$s7,64($sp)
    # Line 2535
    lw	$s7,-15856($gp)
    # Line 2524
    sd	$s3,72($sp)
    # Line 2526
    lw	$s3,4112($zero)
    # Line 2524
    sd	$s8,32($sp)
    # Line 2531
    lwc1	$f0,6076($s3)
    # Line 2529
    lw	$s0,6084($s3)
    # Line 2538
    li	$a3,3
    # Line 2530
    lbu	$t8,6116($s3)
    # Line 2532
    lui	$at,0x80
    # Line 2524
    move	$s1,$a0
    # Line 2532
    lw	$s8,1792($s3)
    # Line 2531
    trunc.w.s	$f0,$f0
    # Line 2524
    move	$s5,$a1
    # Line 2535
    sltiu	$s7,$s7,1
    # Line 2528
    lw	$s3,6080($s3)
    # Line 2530
    sd	$t8,8($sp)
    # Line 2532
    and	$s8,$s8,$at
    # Line 2538
    beqz	$a0,.L0da1250c
    # Line 2531
    mfc1	$a6,$f0
    # Line 2538
    li	$t9,1
    beq	$a0,$t9,.L0da1270c
    li	$ra,2
    beq	$a0,$ra,.L0da129c0
    # Line 2547
    srl	$t0,$a1,0x1f
    # Line 2538
    beq	$a0,$a3,.L0da12bb8
    # Line 2551
    srl	$t0,$a1,0x1f
    # Line 2538
    li	$at,4
    beq	$a0,$at,.L0da12c38
    la	$s2,sub_0daa0000
    addiu	$s2,$s2,-3784
.L0da11f3c:
    # Line 2558
    la	$s6,.rodata
    addiu	$s6,$s6,25264
    sll	$t8,$s1,0x2
    addu	$s6,$s6,$t8
    lw	$a1,0($s6)
    addiu	$t9,$a1,-1
    mult	$s0,$t9
    mflo	$a7
    slt	$t8,$s0,$a7
    beqz	$t8,.L0da12010
    sll	$a3,$s0,0x2
    sll	$a4,$s7,0x2
    sll	$a5,$a7,0x2
    lw	$t0,0($sp)
    subu	$a4,$a4,$s7
    subu	$t2,$a7,$s0
    sll	$a4,$a4,0x2
    addu	$a5,$t0,$a5
    subu	$a4,$a4,$s7
    addu	$a3,$a3,$t0
    sll	$a4,$a4,0x2
    li	$t0,1
    subu	$a4,$a4,$s7
    slt	$t1,$t2,$t0
    sll	$a4,$a4,0x2
    movz	$t0,$t2,$t1
    subu	$a4,$a4,$s7
    andi	$a0,$t0,0x3
    sll	$a4,$a4,0x2
    addu	$a4,$s2,$a4
    beqz	$a0,.L0da11fd4
    addiu	$a4,$a4,8272
.L0da11fbc:
    addiu	$a0,$a0,-1
    # Line 2565
    lwc1	$f1,0($a3)
    # Line 2564
    addiu	$a4,$a4,4
    addiu	$a3,$a3,4
    bnez	$a0,.L0da11fbc
    # Line 2565
    swc1	$f1,-4($a4)
.L0da11fd4:
    sra	$a7,$t0,0x2
    beqz	$a7,.L0da12010
    nop
.L0da11fe0:
    lwc1	$f5,0($a3)
    swc1	$f5,0($a4)
    lwc1	$f4,4($a3)
    swc1	$f4,4($a4)
    lwc1	$f3,8($a3)
    # Line 2564
    addiu	$a3,$a3,16
    # Line 2565
    swc1	$f3,8($a4)
    # Line 2564
    sltu	$t0,$a3,$a5
    # Line 2565
    lwc1	$f2,-4($a3)
    # Line 2564
    addiu	$a4,$a4,16
    bnez	$t0,.L0da11fe0
    # Line 2565
    swc1	$f2,-4($a4)
.L0da12010:
    # Line 2564
    beqz	$a6,.L0da12130
    addiu	$t2,$a1,-2
    blez	$t2,.L0da1211c
    move	$t1,$zero
    move	$t0,$zero
    sll	$s4,$s0,0x2
    ldc1	$f5,_lit8_3fe0000000000000
    addiu	$a7,$s2,9640
    addu	$a6,$s4,$s2
    lw	$t3,4($sp)
    b	.L0da13470
    addiu	$a6,$a6,9640
.L0da12040:
    # Line 2569
    lwc1	$f6,4($a3)
    add.s	$f6,$f6,$f4
    cvt.d.s	$f6,$f6
    mul.d	$f6,$f6,$f5
    cvt.s.d	$f6,$f6
    swc1	$f6,0($a4)
.L0da12058:
    addiu	$a4,$a4,4
    addiu	$a3,$a3,4
.L0da12060:
    sra	$t8,$s0,0x1
    bnez	$t8,.L0da12104
    nop
.L0da1206c:
    # Line 2568
    addiu	$t0,$t0,1
    slt	$t9,$t0,$t2
    addu	$a6,$a6,$s4
    addu	$t1,$t1,$s0
    beqz	$t9,.L0da1211c
    addu	$a7,$a7,$s4
.L0da12084:
    # Line 2564
    blez	$s0,.L0da1206c
    andi	$t8,$s0,0x1
    sra	$a4,$t0,0x1
    addiu	$a4,$a4,1
    mult	$s0,$a4
    andi	$a5,$t0,0x1
    mflo	$a3
    move	$a4,$a7
    sll	$a3,$a3,0x2
    beqz	$t8,.L0da12060
    addu	$a3,$t3,$a3
    bnez	$a5,.L0da12040
    lwc1	$f4,0($a3)
    b	.L0da12058
    # Line 2569
    swc1	$f4,0($a7)
.L0da120c0:
    lwc1	$f7,4($a3)
    add.s	$f7,$f7,$f4
    cvt.d.s	$f7,$f7
    mul.d	$f7,$f7,$f5
    cvt.s.d	$f7,$f7
    swc1	$f7,0($a4)
.L0da120d8:
    # Line 2564
    beqz	$a5,.L0da12114
    lwc1	$f4,4($a3)
    # Line 2569
    lwc1	$f8,8($a3)
    add.s	$f8,$f8,$f4
    cvt.d.s	$f8,$f8
    mul.d	$f8,$f8,$f5
    cvt.s.d	$f8,$f8
    swc1	$f8,4($a4)
.L0da120f8:
    addiu	$a4,$a4,8
    beq	$a4,$a6,.L0da1206c
    addiu	$a3,$a3,8
.L0da12104:
    # Line 2564
    bnez	$a5,.L0da120c0
    lwc1	$f4,0($a3)
    b	.L0da120d8
    # Line 2569
    swc1	$f4,0($a4)
.L0da12114:
    b	.L0da120f8
    swc1	$f4,4($a4)
.L0da1211c:
    # Line 2571
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,6832
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    move	$a1,$s7
.L0da12130:
    beqz	$s8,.L0da12150
    # Line 2580
    nop	# was lw $t9, -18404($gp) # &glBegin
    # Line 2574
    # lw $t9, -32696($gp) # &sub_0da10000
    addiu	$t9,$t9,2544
    move	$a0,$s1
    bal __glim_SubdivPatchSGIX
    addiu	$a1,$s5,1
    # Line 2580
    # lw $t9, -18404($gp) # &glBegin
.L0da12150:
    jal	glBegin
    li	$a0,5
    # Line 2581
    li	$ra,10785
    beq	$s3,$ra,.L0da12494
    # Line 2583
    ld	$a2,8($sp)
    # Line 2581
    li	$at,10787
    beq	$s3,$at,.L0da12564
    # Line 2633
    ld	$a1,8($sp)
    # Line 2581
    li	$v0,10791
    beq	$s3,$v0,.L0da1278c
    li	$v1,10793
    beq	$s3,$v1,.L0da121dc
    # Line 2764
    ld	$a2,8($sp)
    # Line 2845
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,-2072
    jal	fprintf
    addiu	$a0,$a0,32
.L0da1219c:
    # Line 2847
    # lw $t9, -18260($gp) # &glEnd
.L0da121a0:
    jal	glEnd
    nop
    ld	$s4,128($sp)
    ld	$s6,112($sp)
    ld	$s2,104($sp)
    # Line 2851
    ld	$s0,56($sp)
    ld	$s1,40($sp)
    ld	$s3,72($sp)
    ld	$s5,48($sp)
    ld	$ra,120($sp)
    # Line 2849
    sw	$s7,-15856($gp)
    # Line 2851
    ld	$s7,64($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da121dc:
    # Line 2764
    beqz	$a2,.L0da12cbc
    lw	$a0,0($s6)
    # Line 2817
    subu	$a3,$a0,$s5
    blez	$a3,.L0da1219c
    sd	$a3,96($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    sll	$s4,$s0,0x2
    move	$s1,$zero
    ld	$t9,96($sp)
    sll	$s7,$t8,0x2
    move	$s3,$zero
    subu	$s7,$s7,$t8
    addiu	$t9,$t9,-1
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$s2
    sll	$s7,$s7,0x2
    addiu	$s6,$s6,10328
    addu	$s7,$s7,$s2
    sd	$t9,88($sp)
    addiu	$s5,$s7,8272
    addiu	$t8,$s7,8300
    sd	$t8,80($sp)
    b	.L0da1347c
    addiu	$s7,$s7,8284
    nop
    nop
.L0da12270:
    # Line 2832
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2833
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -18312($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2834
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    bne	$a1,$s3,.L0da12464
    # Line 2836
    nop	# was lw $t9, -18012($gp) # &glTexCoord2fv
    nop
    nop
    nop
    # Line 2818
    ld	$a2,96($sp)
.L0da12310:
    addu	$s7,$s7,$s4
    addiu	$s3,$s3,1
    addu	$s5,$s5,$s4
    ld	$a3,80($sp)
    slt	$a2,$s3,$a2
    # Line 2817
    lw	$a1,-15856($gp)
    # Line 2818
    addu	$s6,$s6,$s4
    addu	$s1,$s1,$s0
    addu	$a3,$a3,$s4
    beqz	$a2,.L0da1248c
    sd	$a3,80($sp)
    # Line 2817
    sll	$a0,$a1,0x2
.L0da12340:
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    beqz	$s8,.L0da12270
    addiu	$a0,$a0,8300
    # Line 2820
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2821
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    # lw $t9, -18204($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2822
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -18312($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2823
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    beq	$a1,$s3,.L0da12310
    # Line 2818
    ld	$a2,96($sp)
    # Line 2825
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    ld	$a0,80($sp)
    # Line 2826
    # lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2827
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2828
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da12310
    # Line 2818
    ld	$a2,96($sp)
.L0da12464:
    # Line 2836
    jalr	$t9
    ld	$a0,80($sp)
    # Line 2837
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2838
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da12310
    # Line 2818
    ld	$a2,96($sp)
.L0da1248c:
    b	.L0da1219c
    ld	$s7,16($sp)
.L0da12494:
    # Line 2583
    beqz	$a2,.L0da12f38
    lw	$a0,0($s6)
    # Line 2614
    subu	$a3,$a0,$s5
    blez	$a3,.L0da1219c
    sd	$a3,96($sp)
    sll	$s4,$s0,0x2
    move	$s1,$zero
    ld	$t8,96($sp)
    sll	$s5,$s7,0x2
    move	$s3,$zero
    subu	$s5,$s5,$s7
    addiu	$t8,$t8,-1
    sll	$s5,$s5,0x2
    sll	$s6,$s7,0x3
    subu	$s5,$s5,$s7
    subu	$s6,$s6,$s7
    sll	$s5,$s5,0x2
    sll	$s6,$s6,0x3
    subu	$s5,$s5,$s7
    addu	$s6,$s6,$s7
    sll	$s5,$s5,0x2
    sll	$s6,$s6,0x2
    subu	$s5,$s5,$s7
    addu	$s6,$s6,$s2
    sll	$s5,$s5,0x2
    addiu	$s6,$s6,10328
    addu	$s5,$s5,$s2
    sd	$t8,88($sp)
    b	.L0da13488
    addiu	$s5,$s5,8272
.L0da1250c:
    # Line 2540
    srl	$at,$a1,0x1f
    li	$a0,0xaaaa
    negu	$v1,$a1
    dsll	$a0,$a0,0x10
    movz	$v1,$a1,$at
    ori	$a0,$a0,0xaaab
    multu	$v1,$a0
    mfhi	$v0
    sra	$v0,$v0,0x1
    negu	$ra,$v0
    movz	$ra,$v0,$at
    mult	$ra,$a3
    mflo	$t9
    subu	$t9,$a1,$t9
    la	$s2,sub_0daa0000
    sll	$t8,$t9,0x3
    addu	$t8,$t8,$t9
    addiu	$s2,$s2,-3784
    sll	$t8,$t8,0x4
    addu	$t8,$s2,$t8
    b	.L0da11f3c
    sw	$t8,0($sp)
.L0da12564:
    # Line 2633
    beqz	$a1,.L0da13098
    lw	$a0,0($s6)
    # Line 2677
    subu	$a2,$a0,$s5
    blez	$a2,.L0da1219c
    sd	$a2,96($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    move	$s1,$zero
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$s2
    ld	$t8,96($sp)
    sll	$s7,$s7,0x2
    addiu	$s6,$s6,10328
    addu	$s7,$s7,$s2
    addiu	$t8,$t8,-1
    addiu	$s5,$s7,8272
    sd	$t8,88($sp)
    b	.L0da128c0
    addiu	$s7,$s7,8284
    nop
    nop
.L0da125f0:
    # Line 2624
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    bne	$a1,$s3,.L0da126f0
    nop
    nop
    nop
    # Line 2615
    ld	$a2,96($sp)
.L0da12640:
    addiu	$s3,$s3,1
    slt	$a2,$s3,$a2
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    # Line 2614
    lw	$a3,-15856($gp)
    # Line 2615
    beqz	$a2,.L0da12704
    addu	$s1,$s1,$s0
.L0da1265c:
    # Line 2614
    beqz	$s8,.L0da125f0
    # Line 2617
    sll	$a0,$a3,0x3
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a3
    # lw $t9, -18204($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2618
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    beq	$a1,$s3,.L0da12640
    # Line 2615
    ld	$a2,96($sp)
    # Line 2620
    # lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2621
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da12640
    # Line 2615
    ld	$a2,96($sp)
.L0da126f0:
    # Line 2626
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da12640
    # Line 2615
    ld	$a2,96($sp)
.L0da12704:
    b	.L0da121a0
    # Line 2847
    nop	# was lw $t9, -18260($gp) # &glEnd
.L0da1270c:
    # Line 2543
    srl	$t0,$a1,0x1f
    li	$t3,0xaaaa
    negu	$t2,$a1
    dsll	$t3,$t3,0x10
    movz	$t2,$a1,$t0
    ori	$t3,$t3,0xaaab
    multu	$t2,$t3
    mfhi	$t1
    sra	$t1,$t1,0x1
    negu	$a7,$t1
    movz	$a7,$t1,$t0
    mult	$a7,$a3
    mflo	$a5
    subu	$a5,$a1,$a5
    sll	$a2,$a5,0x2
    subu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    # Line 2544
    sll	$a4,$a5,0x3
    # Line 2543
    subu	$a2,$a2,$a5
    # Line 2544
    addu	$a4,$a4,$a5
    # Line 2543
    la	$s2,sub_0daa0000
    sll	$a2,$a2,0x2
    # Line 2544
    sll	$a4,$a4,0x4
    # Line 2543
    addu	$a2,$a2,$a5
    addiu	$s2,$s2,-3784
    sll	$a2,$a2,0x2
    # Line 2544
    addu	$a4,$s2,$a4
    sw	$a4,4($sp)
    # Line 2543
    addu	$a2,$s2,$a2
    addiu	$a2,$a2,576
    # Line 2545
    b	.L0da11f3c
    # Line 2543
    sw	$a2,0($sp)
.L0da1278c:
    # Line 2700
    ld	$t8,8($sp)
    beqz	$t8,.L0da13298
    lw	$a0,0($s6)
    # Line 2740
    subu	$t9,$a0,$s5
    blez	$t9,.L0da1219c
    sd	$t9,96($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    move	$s1,$zero
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$s2
    ld	$t8,96($sp)
    sll	$s7,$s7,0x2
    addiu	$s6,$s6,10328
    addu	$s7,$s7,$s2
    addiu	$t8,$t8,-1
    addiu	$s5,$s7,8272
    sd	$t8,88($sp)
    b	.L0da12ab4
    addiu	$s7,$s7,8284
    nop
    nop
    nop
.L0da12820:
    # Line 2689
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    # lw $t9, -18312($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2690
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    bne	$a1,$s3,.L0da1299c
    # Line 2692
    nop	# was lw $t9, -18312($gp) # &glColor4fv
.L0da128a0:
    # Line 2678
    ld	$a2,96($sp)
.L0da128a4:
    addiu	$s3,$s3,1
    addu	$s7,$s7,$s4
    slt	$a2,$s3,$a2
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    beqz	$a2,.L0da129b8
    addu	$s1,$s1,$s0
.L0da128c0:
    # Line 2677
    lw	$a3,-15856($gp)
    beqz	$s8,.L0da12820
    # Line 2680
    sll	$a0,$a3,0x3
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a3
    # lw $t9, -18204($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2681
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -18312($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2682
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    beq	$a1,$s3,.L0da128a0
    # Line 2684
    nop	# was lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2685
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2686
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da128a4
    # Line 2678
    ld	$a2,96($sp)
.L0da1299c:
    # Line 2692
    jalr	$t9
    move	$a0,$s7
    # Line 2693
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da128a4
    # Line 2678
    ld	$a2,96($sp)
.L0da129b8:
    b	.L0da1219c
    ld	$s7,16($sp)
.L0da129c0:
    # Line 2547
    li	$t3,0xaaaa
    negu	$t2,$a1
    dsll	$t3,$t3,0x10
    movz	$t2,$a1,$t0
    ori	$t3,$t3,0xaaab
    multu	$t2,$t3
    mfhi	$t1
    sra	$t1,$t1,0x1
    negu	$a7,$t1
    movz	$a7,$t1,$t0
    mult	$a7,$a3
    mflo	$a5
    subu	$a5,$a1,$a5
    # Line 2548
    sll	$a2,$a5,0x2
    # Line 2547
    sll	$a4,$a5,0x6
    # Line 2548
    subu	$a2,$a2,$a5
    # Line 2547
    subu	$a4,$a4,$a5
    # Line 2548
    sll	$a2,$a2,0x2
    # Line 2547
    sll	$a4,$a4,0x2
    la	$s2,sub_0daa0000
    # Line 2548
    subu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    # Line 2547
    addiu	$s2,$s2,-3784
    # Line 2548
    addu	$a2,$a2,$a5
    # Line 2547
    addu	$a4,$s2,$a4
    # Line 2548
    sll	$a2,$a2,0x2
    # Line 2547
    addiu	$a4,$a4,1120
    sw	$a4,0($sp)
    # Line 2548
    addu	$a2,$s2,$a2
    addiu	$a2,$a2,576
    # Line 2549
    b	.L0da11f3c
    # Line 2548
    sw	$a2,4($sp)
.L0da12a40:
    # Line 2753
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2754
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    bne	$a1,$s3,.L0da12b94
    # Line 2756
    nop	# was lw $t9, -18012($gp) # &glTexCoord2fv
.L0da12a94:
    # Line 2741
    ld	$a2,96($sp)
.L0da12a98:
    addiu	$s3,$s3,1
    addu	$s7,$s7,$s4
    slt	$a2,$s3,$a2
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    beqz	$a2,.L0da12bb0
    addu	$s1,$s1,$s0
.L0da12ab4:
    # Line 2740
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    beqz	$s8,.L0da12a40
    addiu	$a0,$a0,8284
    # Line 2743
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2744
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    # lw $t9, -18204($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2745
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    ld	$a1,88($sp)
    beq	$a1,$s3,.L0da12a94
    # Line 2747
    nop	# was lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    move	$a0,$s7
    # Line 2748
    # lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2749
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da12a98
    # Line 2741
    ld	$a2,96($sp)
.L0da12b94:
    # Line 2756
    jalr	$t9
    move	$a0,$s7
    # Line 2757
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da12a98
    # Line 2741
    ld	$a2,96($sp)
.L0da12bb0:
    b	.L0da1219c
    ld	$s7,16($sp)
.L0da12bb8:
    # Line 2551
    li	$t3,0xaaaa
    negu	$t2,$a1
    dsll	$t3,$t3,0x10
    movz	$t2,$a1,$t0
    ori	$t3,$t3,0xaaab
    multu	$t2,$t3
    mfhi	$t1
    sra	$t1,$t1,0x1
    negu	$a7,$t1
    movz	$a7,$t1,$t0
    mult	$a7,$a3
    mflo	$a5
    subu	$a5,$a1,$a5
    sll	$a2,$a5,0x2
    # Line 2552
    sll	$a4,$a5,0x6
    # Line 2551
    subu	$a2,$a2,$a5
    # Line 2552
    subu	$a4,$a4,$a5
    # Line 2551
    sll	$a2,$a2,0x3
    # Line 2552
    sll	$a4,$a4,0x2
    # Line 2551
    la	$s2,sub_0daa0000
    addu	$a2,$a2,$a5
    sll	$a2,$a2,0x2
    addiu	$s2,$s2,-3784
    subu	$a2,$a2,$a5
    # Line 2552
    addu	$a4,$s2,$a4
    # Line 2551
    sll	$a2,$a2,0x2
    # Line 2552
    addiu	$a4,$a4,1120
    sw	$a4,4($sp)
    # Line 2551
    addu	$a2,$s2,$a2
    addiu	$a2,$a2,1880
    # Line 2553
    b	.L0da11f3c
    # Line 2551
    sw	$a2,0($sp)
.L0da12c38:
    # Line 2555
    srl	$v0,$a1,0x1f
    li	$a1,0xaaaa
    negu	$a0,$s5
    dsll	$a1,$a1,0x10
    movz	$a0,$s5,$v0
    ori	$a1,$a1,0xaaab
    multu	$a0,$a1
    mfhi	$v1
    sra	$v1,$v1,0x1
    negu	$at,$v1
    movz	$at,$v1,$v0
    mult	$at,$a3
    mflo	$ra
    subu	$ra,$s5,$ra
    li	$at,684
    # Line 2556
    sll	$t9,$ra,0x2
    # Line 2555
    multu	$ra,$at
    # Line 2556
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x3
    addu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    # Line 2555
    la	$s2,sub_0daa0000
    # Line 2556
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    # Line 2555
    addiu	$s2,$s2,-3784
    # Line 2556
    addu	$t9,$s2,$t9
    # Line 2555
    mflo	$t8
    # Line 2556
    addiu	$t9,$t9,1880
    sw	$t9,4($sp)
    # Line 2555
    addu	$t8,$s2,$t8
    addiu	$t8,$t8,3072
    # Line 2557
    b	.L0da11f3c
    # Line 2555
    sw	$t8,0($sp)
.L0da12cbc:
    # Line 2764
    addiu	$a2,$a0,-2
    blez	$a2,.L0da1219c
    sd	$s6,24($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    move	$s1,$zero
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$s2
    sll	$s7,$s7,0x2
    addiu	$s6,$s6,10328
    addu	$s7,$s7,$s2
    addiu	$s5,$s7,8272
    addiu	$t8,$s7,8300
    sd	$t8,80($sp)
    b	.L0da12e48
    addiu	$s7,$s7,8284
.L0da12d34:
    # Line 2767
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2768
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    # lw $t9, -18204($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2769
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -18312($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2770
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2771
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    ld	$a0,80($sp)
    # Line 2772
    # lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2773
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2774
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
.L0da12e14:
    # Line 2765
    ld	$a1,24($sp)
    lw	$a1,0($a1)
    addu	$s7,$s7,$s4
    addiu	$s3,$s3,1
    addiu	$a1,$a1,-2
    addu	$s5,$s5,$s4
    ld	$a2,80($sp)
    slt	$a1,$s3,$a1
    addu	$s6,$s6,$s4
    addu	$s1,$s1,$s0
    addu	$a2,$a2,$s4
    beqz	$a1,.L0da12f30
    sd	$a2,80($sp)
.L0da12e48:
    # Line 2764
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    bnez	$s8,.L0da12d34
    addiu	$a0,$a0,8300
    # Line 2776
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2777
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -18312($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2778
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2779
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    ld	$a0,80($sp)
    # Line 2780
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2781
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da12e14
    nop
.L0da12f30:
    b	.L0da1219c
    ld	$s7,16($sp)
.L0da12f38:
    # Line 2583
    addiu	$a1,$a0,-2
    blez	$a1,.L0da1219c
    sd	$s6,24($sp)
    move	$s1,$zero
    sll	$s5,$s7,0x2
    sll	$s4,$s0,0x2
    subu	$s5,$s5,$s7
    move	$s3,$zero
    sll	$s5,$s5,0x2
    sll	$s6,$s7,0x3
    subu	$s5,$s5,$s7
    subu	$s6,$s6,$s7
    sll	$s5,$s5,0x2
    sll	$s6,$s6,0x3
    subu	$s5,$s5,$s7
    addu	$s6,$s6,$s7
    sll	$s5,$s5,0x2
    sll	$s6,$s6,0x2
    subu	$s5,$s5,$s7
    addu	$s6,$s6,$s2
    sll	$s5,$s5,0x2
    addiu	$s6,$s6,10328
    addu	$s5,$s5,$s2
    b	.L0da13494
    addiu	$s5,$s5,8272
.L0da12f9c:
    # Line 2586
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a3
    # lw $t9, -18204($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2587
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2588
    # lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2589
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    # Line 2584
    ld	$a1,24($sp)
.L0da13018:
    lw	$a1,0($a1)
    addiu	$s3,$s3,1
    addiu	$a1,$a1,-2
    slt	$a1,$s3,$a1
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    # Line 2583
    lw	$a3,-15856($gp)
    # Line 2584
    beqz	$a1,.L0da13090
    addu	$s1,$s1,$s0
.L0da1303c:
    # Line 2583
    bnez	$s8,.L0da12f9c
    # Line 2586
    sll	$a0,$a3,0x3
    # Line 2591
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2592
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da13018
    # Line 2584
    ld	$a1,24($sp)
.L0da13090:
    b	.L0da121a0
    # Line 2847
    nop	# was lw $t9, -18260($gp) # &glEnd
.L0da13098:
    # Line 2633
    addiu	$a1,$a0,-2
    blez	$a1,.L0da1219c
    sd	$s6,24($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s1,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    addu	$s6,$s6,$s2
    addu	$s7,$s7,$s2
    addiu	$s6,$s6,10328
    addiu	$s5,$s7,8272
    b	.L0da134a0
    addiu	$s7,$s7,8284
.L0da13108:
    # Line 2636
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a3
    # lw $t9, -18204($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2637
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -18312($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2638
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2639
    # lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2640
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2641
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    # Line 2634
    ld	$a1,24($sp)
.L0da131cc:
    lw	$a1,0($a1)
    addiu	$s3,$s3,1
    addiu	$a1,$a1,-2
    addu	$s7,$s7,$s4
    slt	$a1,$s3,$a1
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    # Line 2633
    lw	$a3,-15856($gp)
    # Line 2634
    beqz	$a1,.L0da13290
    addu	$s1,$s1,$s0
.L0da131f4:
    # Line 2633
    bnez	$s8,.L0da13108
    # Line 2636
    sll	$a0,$a3,0x3
    # Line 2643
    sll	$a0,$a3,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a3
    # lw $t9, -18312($gp) # &glColor4fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glColor4fv
    addiu	$a0,$a0,8284
    # Line 2644
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2645
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s7
    # Line 2646
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da131cc
    # Line 2634
    ld	$a1,24($sp)
.L0da13290:
    b	.L0da1219c
    ld	$s7,16($sp)
.L0da13298:
    # Line 2700
    addiu	$a1,$a0,-2
    blez	$a1,.L0da1219c
    sd	$s6,24($sp)
    sd	$s7,16($sp)
    ld	$t8,16($sp)
    sll	$s7,$t8,0x2
    sll	$s4,$s0,0x2
    subu	$s7,$s7,$t8
    move	$s1,$zero
    sll	$s7,$s7,0x2
    sll	$s6,$t8,0x3
    subu	$s7,$s7,$t8
    subu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x3
    subu	$s7,$s7,$t8
    addu	$s6,$s6,$t8
    sll	$s7,$s7,0x2
    sll	$s6,$s6,0x2
    subu	$s7,$s7,$t8
    move	$s3,$zero
    sll	$s7,$s7,0x2
    addu	$s6,$s6,$s2
    addu	$s7,$s7,$s2
    addiu	$s6,$s6,10328
    addiu	$s5,$s7,8272
    b	.L0da133c8
    addiu	$s7,$s7,8284
.L0da13308:
    # Line 2703
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2704
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x3
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a1
    # lw $t9, -18204($gp) # &glNormal3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glNormal3fv
    addiu	$a0,$a0,10328
    # Line 2705
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2706
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    move	$a0,$s7
    # Line 2707
    # lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    move	$a0,$s6
    # Line 2708
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    # Line 2701
    ld	$a1,24($sp)
.L0da133a4:
    lw	$a1,0($a1)
    addiu	$s3,$s3,1
    addiu	$a1,$a1,-2
    addu	$s7,$s7,$s4
    slt	$a1,$s3,$a1
    addu	$s5,$s5,$s4
    addu	$s6,$s6,$s4
    beqz	$a1,.L0da13468
    addu	$s1,$s1,$s0
.L0da133c8:
    # Line 2700
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    bnez	$s8,.L0da13308
    addiu	$a0,$a0,8284
    # Line 2710
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    nop
    # Line 2711
    lw	$a1,-15856($gp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    # lw $t9, -17884($gp) # &glVertex3fv
    addu	$a0,$s1,$a0
    sll	$a0,$a0,0x2
    addu	$a0,$s2,$a0
    jal	glVertex3fv
    addiu	$a0,$a0,8272
    # Line 2712
    # lw $t9, -18012($gp) # &glTexCoord2fv
    jal	glTexCoord2fv
    move	$a0,$s7
    # Line 2713
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    move	$a0,$s5
    b	.L0da133a4
    # Line 2701
    ld	$a1,24($sp)
.L0da13468:
    b	.L0da1219c
    ld	$s7,16($sp)
.L0da13470:
    # Line 2568
    addu	$t1,$t1,$s0
    b	.L0da12084
    nop
.L0da1347c:
    # Line 2817
    lw	$a1,-15856($gp)
    b	.L0da12340
    sll	$a0,$a1,0x2
.L0da13488:
    # Line 2614
    lw	$a3,-15856($gp)
    b	.L0da1265c
    nop
.L0da13494:
    # Line 2583
    lw	$a3,-15856($gp)
    b	.L0da1303c
    nop
.L0da134a0:
    # Line 2633
    lw	$a3,-15856($gp)
    b	.L0da131f4
    nop
.end DoRender

.rdata
_lit8_3f70101010101010:
    .word 0x3f701010, 0x10101010
_lit8_3fc0000000000000:
    .word 0x3fc00000, 0x00000000
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_4014000000000000:
    .word 0x40140000, 0x00000000
_lit8_4018000000000000:
    .word 0x40180000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_40400000:
    .word 0x40400000
_lit_40800000:
    .word 0x40800000
_lit_46288400:
    .word 0x46288400
_lit_46288c00:
    .word 0x46288c00
_lit_46289c00:
    .word 0x46289c00
_lit_4628a400:
    .word 0x4628a400
_lit_bf800000:
    .word 0xbf800000

