# Source: ../KONA/kon_subdiv.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_subdiv.c
# Total Functions: 4

.text

# Function: __glkonim_SubdivPatchParameterfSGIX
# Declared: Line 226 (Source lines: 227-260)
# Address: 0x0d988e80 - 0x0d988fa4 (Size: 292 bytes, Frame: 16)
.globl __glkonim_SubdivPatchParameterfSGIX
.ent __glkonim_SubdivPatchParameterfSGIX
__glkonim_SubdivPatchParameterfSGIX:
    # Line 232
    li	$a3,24593
    # Line 246
    li	$a1,467
    # Line 232
    li	$v0,24592
    # Line 227
    lui	$at,0x11
    # Line 229
    lw	$a2,4112($zero)
    # Line 227
    addiu	$sp,$sp,-16
    addiu	$at,$at,-32424
    sd	$gp,0($sp)
    # Line 232
    beq	$a0,$v0,.L0d988f40
    # Line 227
    addu	$gp,$t9,$at
    # Line 232
    beq	$a3,$a0,.L0d988ecc
    # Line 239
    lwc1	$f0,_lit_46288400
    # Line 234
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d988f34
    ld	$ra,8($sp)
.L0d988ec8:
    # Line 239
    lwc1	$f0,_lit_46288400
.L0d988ecc:
    c.eq.s	$f13,$f0
    lwc1	$f2,_lit_46289c00
    lwc1	$f1,_lit_46288c00
    bc1t	.L0d988f04
    lwc1	$f3,_lit_4628a400
    c.eq.s $f13,$f1
    bc1t .L0d988f04
    nop
    c.eq.s $f13,$f2
    bc1t .L0d988f04
    nop
    c.eq.s $f13,$f3
    bc1f .L0d988f78
    # Line 243
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d988f04:
    # Line 260
    ld	$gp,0($sp)
    # Line 246
    sw	$a1,16384($zero)
    # Line 248
    trunc.l.s	$f5,$f13
    # Line 246
    sw	$a0,16384($zero)
    # Line 247
    trunc.w.s	$f4,$f13
    # Line 248
    li	$v1,0xa0fc
    # Line 247
    swc1	$f4,16384($zero)
    # Line 248
    addu	$v1,$v1,$a2
    dmfc1	$v0,$f5
    # Line 260
    addiu	$sp,$sp,16
    jr	$ra
    # Line 248
    sw	$v0,0($v1)
.L0d988f34:
    # Line 260
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d988f40:
    # Line 235
    beq	$a3,$a0,.L0d988ec8
    # Line 244
    lwc1	$f6,_lit_40800000
    c.lt.s $f6,$f13
    # Line 257
    li	$a3,0xa0f8
    # Line 244
    bc1t .L0d988f8c
    # Line 257
    addu	$a2,$a3,$a2
    # Line 255
    li	$a4,467
    sw	$a4,16384($zero)
    sw	$a0,16384($zero)
    # Line 256
    swc1	$f13,16384($zero)
    # Line 260
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 257
    swc1	$f13,0($a2)
.L0d988f78:
    sd	$ra,8($sp)
    # Line 243
    jal	__glSetError
    li	$a0,1280
    b	.L0d988f34
    ld	$ra,8($sp)
.L0d988f8c:
    # Line 252
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d988f34
    ld	$ra,8($sp)
.end __glkonim_SubdivPatchParameterfSGIX

# Function: __glkonim_SubdivPatchParameteriSGIX
# Declared: Line 263 (Source lines: 264-268)
# Address: 0x0d988fb0 - 0x0d988fe8 (Size: 56 bytes, Frame: 16)
.globl __glkonim_SubdivPatchParameteriSGIX
.ent __glkonim_SubdivPatchParameteriSGIX
__glkonim_SubdivPatchParameteriSGIX:
    # Line 264
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,-32728
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 266
    mtc1	$a1,$f13
    # lw $t9, -31060($gp) # &__glkonim_SubdivPatchParameterfSGIX
    # Line 264
    sd	$ra,0($sp)
    # Line 266
    bal __glkonim_SubdivPatchParameterfSGIX
    cvt.s.w	$f13,$f13
    ld	$ra,0($sp)
    # Line 268
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_SubdivPatchParameteriSGIX

# Function: CopyVertex
# Declared: Line 272 (Source lines: 273-280)
# Address: 0x0d988ff0 - 0x0d989054 (Size: 100 bytes, Frame: 0)
.ent CopyVertex
CopyVertex:
    # Line 273
    move	$a6,$a0
    andi	$a7,$a0,0x1
    blez	$a0,.L0d98904c
    move	$a5,$a1
    sll	$a4,$a6,0x2
    move	$a1,$a2
    move	$a0,$a5
    beqz	$a7,.L0d989024
    addu	$a4,$a4,$a5
    # Line 277
    lwc1	$f0,0($a5)
    # Line 276
    addiu	$a0,$a5,4
    addiu	$a1,$a2,4
    # Line 277
    swc1	$f0,0($a2)
.L0d989024:
    sra	$t0,$a6,0x1
    beqz	$t0,.L0d98904c
    nop
.L0d989030:
    lwc1	$f2,0($a0)
    # Line 276
    addiu	$a0,$a0,8
    # Line 277
    swc1	$f2,0($a1)
    lwc1	$f1,-4($a0)
    # Line 276
    addiu	$a1,$a1,8
    bne	$a0,$a4,.L0d989030
    # Line 277
    swc1	$f1,-4($a1)
.L0d98904c:
    # Line 280
    jr	$ra
    nop
.end CopyVertex

# Function: __glkonim_SubdivPatchSGIX
# Declared: Line 283 (Source lines: 286-668)
# Address: 0x0d989060 - 0x0d98cdac (Size: 15692 bytes, Frame: 128)
.globl __glkonim_SubdivPatchSGIX
.ent __glkonim_SubdivPatchSGIX
__glkonim_SubdivPatchSGIX:
    # Line 288
    lw	$a4,4112($zero)
    # Line 286
    addiu	$sp,$sp,-1408
    sd	$ra,1304($sp)
    lui	$at,0x10
    sd	$s4,1312($sp)
    addiu	$at,$at,32632
    sd	$gp,1216($sp)
    # Line 288
    beqz	$a0,.L0d98cbb0
    # Line 286
    addu	$gp,$t9,$at
    # Line 315
    bnez	$a1,.L0d9890c8
    sd	$a4,1176($sp)
    move	$t1,$zero
    move	$t0,$zero
    move	$a7,$zero
    # Line 325
    bnez	$a2,.L0d9890dc
    # Line 315
    move	$a6,$zero
.L0d9890a0:
    sd	$s6,1296($sp)
    sd	$s5,1280($sp)
    # Line 325
    move	$t8,$zero
    sd	$s0,1272($sp)
    move	$t2,$zero
    move	$t9,$zero
    sd	$s7,1264($sp)
    move	$t3,$zero
    b	.L0d989100
    sd	$s1,1256($sp)
.L0d9890c8:
    lw	$t1,12($a1)
    # Line 324
    lw	$t0,8($a1)
    # Line 323
    lw	$a7,4($a1)
    # Line 325
    beqz	$a2,.L0d9890a0
    # Line 322
    lw	$a6,0($a1)
.L0d9890dc:
    # Line 333
    lw	$t8,12($a2)
    # Line 332
    lw	$t2,8($a2)
    # Line 331
    lw	$t9,4($a2)
    # Line 330
    lw	$t3,0($a2)
    sd	$s6,1296($sp)
    sd	$s5,1280($sp)
    sd	$s0,1272($sp)
    sd	$s7,1264($sp)
    sd	$s1,1256($sp)
.L0d989100:
    # Line 339
    lw	$a4,12($a0)
    # Line 337
    lw	$s0,4($a0)
    # Line 338
    lw	$s7,8($a0)
    # Line 337
    lw	$a1,0($s0)
    # Line 336
    lw	$s6,0($a0)
    # Line 338
    lw	$a2,0($s7)
    addiu	$s7,$s7,4
    # Line 337
    addiu	$s0,$s0,4
    # Line 336
    lw	$v1,0($s6)
    addiu	$s6,$s6,4
    # Line 339
    addiu	$s5,$a4,4
    lw	$a4,0($a4)
    # Line 337
    addiu	$a3,$a1,-1
    sd	$a3,1200($sp)
    # Line 347
    slti	$v0,$v1,9
    # Line 338
    addiu	$s4,$a2,-1
    # Line 336
    addiu	$v1,$v1,-1
    sd	$v1,1192($sp)
    # Line 339
    addiu	$s1,$a4,-1
    # Line 347
    beqz	$v0,.L0d989170
    # Line 339
    sd	$s1,1184($sp)
    # Line 347
    slti	$ra,$a1,10
    beqz	$ra,.L0d989170
    slti	$at,$a2,10
    beqz	$at,.L0d989170
    slti	$v0,$a4,9
    bnez	$v0,.L0d9891bc
    nop
.L0d989170:
    sd	$t8,1328($sp)
    sd	$t3,1336($sp)
    sd	$t2,1344($sp)
    sd	$t1,1352($sp)
    sd	$t9,1320($sp)
    # Line 351
    # lw $t9, -28616($gp) # &__glSetError
    sd	$t0,1360($sp)
    sd	$a7,1368($sp)
    sd	$a6,1392($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$a6,1392($sp)
    ld	$a7,1368($sp)
    ld	$t0,1360($sp)
    ld	$t1,1352($sp)
    ld	$t2,1344($sp)
    ld	$t3,1336($sp)
    ld	$t8,1328($sp)
    ld	$t9,1320($sp)
.L0d9891bc:
    sd	$s4,1168($sp)
    sd	$s1,1120($sp)
    # Line 355
    beqz	$a6,.L0d9896c4
    sd	$s0,1040($sp)
    sd	$zero,1152($sp)
    sd	$s8,1288($sp)
.L0d9891d4:
    # Line 360
    ld	$v1,1184($sp)
    ld	$ra,1176($sp)
    lui	$s8,0x1
    addu	$s8,$s8,$ra
    bltz	$v1,.L0d9896d8
    sb	$zero,-24288($s8)
.L0d9891ec:
    # Line 375
    beqz	$a6,.L0d98922c
    addiu	$a1,$sp,32
    beqz	$a7,.L0d98922c
    addiu	$a1,$sp,32
    beqz	$t0,.L0d98922c
    addiu	$a1,$sp,32
    beqz	$t1,.L0d98922c
    addiu	$a1,$sp,32
    beqz	$t3,.L0d98922c
    addiu	$a1,$sp,32
    beqz	$t9,.L0d98922c
    addiu	$a1,$sp,32
    beqz	$t2,.L0d98922c
    addiu	$a1,$sp,32
    bnez	$t8,.L0d989268
    addiu	$a1,$sp,32
.L0d98922c:
    addiu	$a0,$sp,0
.L0d989230:
    # Line 378
    sb	$zero,3($a0)
    sb	$zero,2($a0)
    # Line 377
    addiu	$a0,$a0,4
    # Line 378
    sb	$zero,-3($a0)
    # Line 377
    bne	$a0,$a1,.L0d989230
    # Line 378
    sb	$zero,-4($a0)
    movz	$t8,$sp,$t8
    movz	$t2,$sp,$t2
    movz	$t9,$sp,$t9
    movz	$t3,$sp,$t3
    movz	$t1,$sp,$t1
    movz	$t0,$sp,$t0
    movz	$a7,$sp,$a7
    movz	$a6,$sp,$a6
.L0d989268:
    # Line 393
    lw	$a0,-24324($s8)
    # Line 406
    li	$s0,10785
    # Line 393
    li	$at,465
    sw	$at,16384($zero)
    # Line 406
    li	$s1,10787
    beq	$s0,$a0,.L0d9896f8
    # Line 393
    sw	$a0,16384($zero)
    sd	$s2,1240($sp)
    # Line 406
    beq	$s1,$a0,.L0d98a6f4
    li	$s2,10791
    sd	$s3,1248($sp)
    beq	$s2,$a0,.L0d98b284
    li	$s3,10793
    beq	$s3,$a0,.L0d98be4c
    # Line 481
    li	$a5,6
    # Line 406
    lw	$s4,36($sp)
    li	$s7,24
    lbu	$a0,33($sp)
    lui	$s5,0x1fff
    lui	$s6,0xff
    lbu	$ra,32($sp)
    sd	$ra,1208($sp)
    ori	$s6,$s6,0xffff
    ori	$s5,$s5,0xffff
.L0d9892c8:
    # Line 519
    beqz	$a0,.L0d989550
.L0d9892cc:
    # Line 524
    ld	$a1,1208($sp)
.L0d9892d0:
    beqz	$a1,.L0d989608
    lbu	$a5,621($sp)
.L0d9892d8:
    # Line 532
    sw	$s5,-24292($s8)
    # Line 531
    sw	$s6,-24296($s8)
    # Line 535
    li	$a4,464
    sw	$a4,16384($zero)
    ld	$a2,1152($sp)
    sw	$a2,16384($zero)
    # Line 537
    lui	$a3,0x8000
    # Line 536
    sw	$s6,16384($zero)
    # Line 537
    and	$a3,$a2,$a3
    sw	$s5,16384($zero)
    beqz	$a3,.L0d989800
    # Line 530
    sw	$a2,-24300($s8)
.L0d989308:
    ld	$s6,1296($sp)
    ld	$s5,1280($sp)
    # Line 634
    lw	$a1,-24324($s8)
    addiu	$a0,$sp,40
    li	$a5,468
    sw	$a5,16384($zero)
    sw	$zero,16384($zero)
    b	.L0d98937c
    move	$a2,$zero
.L0d98932c:
    # Line 640
    sw	$s4,16384($zero)
    lwc1	$f0,8($a0)
    lwc1	$f2,0($a0)
    lwc1	$f1,4($a0)
    swc1	$f2,16384($zero)
    swc1	$f1,16384($zero)
    addiu	$a0,$a0,12
    swc1	$f0,16384($zero)
    nop
.L0d989350:
    # Line 638
    beq	$s0,$a1,.L0d9893dc
    nop
    beq	$s1,$a1,.L0d989430
    nop
    beq	$s2,$a1,.L0d989494
    nop
    beq	$s3,$a1,.L0d9894c8
    nop
.L0d989370:
    # Line 636
    addiu	$a2,$a2,2
    beq	$a2,$s7,.L0d989508
    # Line 663
    nop	# was lw $t9, -18260($gp) # &glEnd
.L0d98937c:
    # Line 638
    beq	$s0,$a1,.L0d98932c
    nop
    beq	$s1,$a1,.L0d989400
    nop
    beq	$s2,$a1,.L0d989460
    nop
    bne	$s3,$a1,.L0d989350
    nop
    # Line 656
    sw	$s4,16384($zero)
    lwc1	$f6,8($a0)
    lwc1	$f7,4($a0)
    lwc1	$f8,0($a0)
    lwc1	$f5,12($a0)
    swc1	$f8,16384($zero)
    swc1	$f7,16384($zero)
    swc1	$f6,16384($zero)
    trunc.w.s	$f5,$f5
    swc1	$f5,16384($zero)
    lwc1	$f4,16($a0)
    lwc1	$f3,20($a0)
    swc1	$f4,16384($zero)
    addiu	$a0,$a0,24
    # Line 660
    b	.L0d989350
    # Line 656
    swc1	$f3,16384($zero)
.L0d9893dc:
    # Line 640
    sw	$s4,16384($zero)
    lwc1	$f9,8($a0)
    lwc1	$f11,0($a0)
    lwc1	$f10,4($a0)
    swc1	$f11,16384($zero)
    swc1	$f10,16384($zero)
    addiu	$a0,$a0,12
    b	.L0d989370
    swc1	$f9,16384($zero)
.L0d989400:
    # Line 645
    sw	$s4,16384($zero)
    lwc1	$f13,8($a0)
    lwc1	$f14,4($a0)
    lwc1	$f15,0($a0)
    lwc1	$f12,12($a0)
    swc1	$f15,16384($zero)
    swc1	$f14,16384($zero)
    swc1	$f13,16384($zero)
    trunc.w.s	$f12,$f12
    addiu	$a0,$a0,16
    # Line 648
    b	.L0d989350
    # Line 645
    swc1	$f12,16384($zero)
.L0d989430:
    sw	$s4,16384($zero)
    lwc1	$f17,8($a0)
    lwc1	$f18,4($a0)
    lwc1	$f19,0($a0)
    lwc1	$f16,12($a0)
    swc1	$f19,16384($zero)
    swc1	$f18,16384($zero)
    swc1	$f17,16384($zero)
    trunc.w.s	$f16,$f16
    addiu	$a0,$a0,16
    # Line 648
    b	.L0d989370
    # Line 645
    swc1	$f16,16384($zero)
.L0d989460:
    # Line 650
    sw	$s4,16384($zero)
    lwc1	$f21,16($a0)
    lwc1	$f23,12($a0)
    lwc1	$f25,8($a0)
    lwc1	$f29,0($a0)
    lwc1	$f27,4($a0)
    swc1	$f29,16384($zero)
    swc1	$f27,16384($zero)
    swc1	$f25,16384($zero)
    swc1	$f23,16384($zero)
    addiu	$a0,$a0,20
    # Line 654
    b	.L0d989350
    # Line 650
    swc1	$f21,16384($zero)
.L0d989494:
    sw	$s4,16384($zero)
    lwc1	$f31,16($a0)
    lwc1	$f0,12($a0)
    lwc1	$f1,8($a0)
    lwc1	$f3,0($a0)
    lwc1	$f2,4($a0)
    swc1	$f3,16384($zero)
    swc1	$f2,16384($zero)
    swc1	$f1,16384($zero)
    swc1	$f0,16384($zero)
    addiu	$a0,$a0,20
    # Line 654
    b	.L0d989370
    # Line 650
    swc1	$f31,16384($zero)
.L0d9894c8:
    # Line 656
    sw	$s4,16384($zero)
    lwc1	$f7,8($a0)
    lwc1	$f8,4($a0)
    lwc1	$f9,0($a0)
    lwc1	$f6,12($a0)
    swc1	$f9,16384($zero)
    swc1	$f8,16384($zero)
    swc1	$f7,16384($zero)
    trunc.w.s	$f6,$f6
    swc1	$f6,16384($zero)
    lwc1	$f5,16($a0)
    lwc1	$f4,20($a0)
    swc1	$f5,16384($zero)
    addiu	$a0,$a0,24
    # Line 660
    b	.L0d989370
    # Line 656
    swc1	$f4,16384($zero)
.L0d989508:
    # Line 663
    jal	glEnd
    ld	$s8,1288($sp)
    # Line 666
    li	$a6,466
    sw	$a6,16384($zero)
    sw	$zero,16384($zero)
    ld	$s4,1312($sp)
    ld	$s0,1272($sp)
    ld	$s7,1264($sp)
    ld	$s1,1256($sp)
    ld	$ra,1304($sp)
    ld	$s3,1248($sp)
    ld	$s2,1240($sp)
    # Line 668
    ld	$gp,1216($sp)
    jr	$ra
    addiu	$sp,$sp,1408
.L0d989544:
    ld	$gp,1216($sp)
    jr	$ra
    addiu	$sp,$sp,1408
.L0d989550:
    # Line 519
    lbu	$ra,620($sp)
    bnez	$ra,.L0d9892d0
    # Line 524
    ld	$a1,1208($sp)
    # Line 519
    lw	$at,-24316($s8)
    li	$v0,1
    bne	$at,$v0,.L0d9892d0
    # Line 524
    ld	$a1,1208($sp)
    sd	$t8,1328($sp)
    sd	$t3,1336($sp)
    sd	$t2,1344($sp)
    sd	$t1,1352($sp)
    # Line 520
    lw	$a3,616($sp)
    sd	$t9,1320($sp)
    # lw $t9, -32728($gp) # &sub_0d990000
    sd	$t0,1360($sp)
    addiu	$a2,$sp,40
    move	$a0,$a3
    sd	$a7,1368($sp)
    sll	$a1,$a3,0x5
    addiu	$t9,$t9,-28688
    sd	$a6,1392($sp)
    sll	$a3,$a3,0x4
    addu	$a1,$a2,$a1
    sd	$a1,624($sp)
    bal __glkonim_SubdivPatchParameteriSGIX
    addu	$a2,$a2,$a3
    # Line 521
    lw	$a4,616($sp)
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$a2,$sp,40
    sll	$a3,$a4,0x2
    addiu	$t9,$t9,-28688
    addu	$a3,$a3,$a4
    move	$a0,$a4
    sll	$a3,$a3,0x2
    ld	$a1,624($sp)
    bal __glkonim_SubdivPatchParameteriSGIX
    addu	$a2,$a2,$a3
    ld	$a6,1392($sp)
    ld	$a7,1368($sp)
    ld	$t0,1360($sp)
    ld	$t1,1352($sp)
    ld	$t2,1344($sp)
    ld	$t3,1336($sp)
    ld	$t8,1328($sp)
    b	.L0d9892cc
    ld	$t9,1320($sp)
.L0d989608:
    # Line 524
    bnez	$a5,.L0d9892d8
    nop
    lw	$ra,-24304($s8)
    li	$at,1
    bne	$ra,$at,.L0d9892d8
    nop
    sd	$t8,1328($sp)
    sd	$t3,1336($sp)
    sd	$t2,1344($sp)
    sd	$t1,1352($sp)
    # Line 525
    lw	$a4,616($sp)
    sd	$t9,1320($sp)
    addiu	$a2,$sp,40
    sll	$a1,$a4,0x6
    # lw $t9, -32728($gp) # &sub_0d990000
    sd	$t0,1360($sp)
    move	$a0,$a4
    sll	$a3,$a4,0x2
    sd	$a7,1368($sp)
    addiu	$t9,$t9,-28688
    subu	$a3,$a3,$a4
    sd	$a6,1392($sp)
    addu	$a1,$a2,$a1
    sll	$a3,$a3,0x3
    sd	$a1,632($sp)
    bal __glkonim_SubdivPatchParameteriSGIX
    addu	$a2,$a2,$a3
    # Line 526
    lw	$a4,616($sp)
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$a2,$sp,40
    sll	$a3,$a4,0x3
    addiu	$t9,$t9,-28688
    subu	$a3,$a3,$a4
    move	$a0,$a4
    sll	$a3,$a3,0x2
    ld	$a1,632($sp)
    bal __glkonim_SubdivPatchParameteriSGIX
    addu	$a2,$a2,$a3
    ld	$a6,1392($sp)
    ld	$a7,1368($sp)
    ld	$t0,1360($sp)
    ld	$t1,1352($sp)
    ld	$t2,1344($sp)
    ld	$t3,1336($sp)
    ld	$t8,1328($sp)
    b	.L0d9892d8
    ld	$t9,1320($sp)
.L0d9896c4:
    # Line 355
    beqz	$a7,.L0d98cbc8
    nop
    sd	$zero,1152($sp)
    b	.L0d9891d4
    sd	$s8,1288($sp)
.L0d9896d8:
    # Line 366
    li	$a5,1
    sb	$a5,-24288($s8)
    # Line 362
    move	$s5,$s7
    # Line 365
    move	$t8,$t2
    # Line 363
    ld	$t1,1168($sp)
    sd	$t1,1120($sp)
    # Line 366
    b	.L0d9891ec
    # Line 364
    move	$t1,$t0
.L0d9896f8:
    # Line 408
    li	$at,3
    sw	$at,-24320($s8)
    # Line 411
    lwc1	$f23,0($s6)
    swc1	$f23,40($sp)
    lwc1	$f21,4($s6)
    swc1	$f21,44($sp)
    # Line 412
    lwc1	$f19,8($s6)
    # Line 413
    ld	$v0,1040($sp)
    # Line 412
    swc1	$f19,48($sp)
    # Line 413
    lwc1	$f18,0($v0)
    swc1	$f18,52($sp)
    lwc1	$f17,4($v0)
    swc1	$f17,56($sp)
    # Line 414
    lwc1	$f16,8($v0)
    swc1	$f16,60($sp)
    # Line 415
    lwc1	$f15,0($s7)
    swc1	$f15,64($sp)
    lwc1	$f14,4($s7)
    swc1	$f14,68($sp)
    # Line 416
    lwc1	$f13,8($s7)
    swc1	$f13,72($sp)
    # Line 417
    lwc1	$f12,0($s5)
    swc1	$f12,76($sp)
    lwc1	$f11,4($s5)
    # Line 420
    ld	$ra,1192($sp)
    # Line 417
    swc1	$f11,80($sp)
    # Line 420
    slti	$ra,$ra,3
    # Line 418
    lwc1	$f10,8($s5)
    # Line 408
    sw	$at,616($sp)
    # Line 409
    li	$s4,427
    # Line 420
    bnez	$ra,.L0d989ce8
    # Line 418
    swc1	$f10,84($sp)
    # Line 420
    ld	$a2,1200($sp)
    sll	$a1,$a2,0x2
    ld	$a0,1040($sp)
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lw	$a1,36($s6)
    lw	$v1,12($a0)
    bne	$v1,$a1,.L0d989ce8
    nop
    lw	$a3,16($a0)
    lw	$a4,40($s6)
    bne	$a3,$a4,.L0d989ce8
    nop
    lw	$ra,44($s6)
    lw	$a5,20($a0)
    sd	$s6,1376($sp)
    bne	$a5,$ra,.L0d989ce8
    sd	$s5,1384($sp)
    ld	$a5,1376($sp)
    lwc1	$f29,36($a5)
    swc1	$f29,88($sp)
    lwc1	$f27,40($a5)
    ld	$ra,1384($sp)
    swc1	$f27,92($sp)
    li	$at,1
    lui	$s6,0xff
    lwc1	$f25,44($a5)
    sd	$at,1160($sp)
    lui	$s5,0x1fff
    ori	$s6,$s6,0xffff
    ori	$s5,$s5,0xffff
    b	.L0d989d1c
    swc1	$f25,96($sp)
.L0d989800:
    # Line 543
    lb	$a0,0($t0)
    lb	$v0,0($a7)
    sll	$a0,$a0,0x8
    lb	$v1,0($a6)
    lb	$ra,0($t1)
    sll	$v0,$v0,0x10
    andi	$at,$s6,0x10
    sll	$v1,$v1,0x18
    or	$ra,$ra,$a0
    or	$v0,$v0,$v1
    or	$ra,$ra,$v0
    beqz	$at,.L0d98cbdc
    sw	$ra,16384($zero)
    # Line 545
    lb	$a4,3($a6)
.L0d989838:
    andi	$a1,$s6,0x20
    beqz	$a1,.L0d98cbe4
    nop
    lb	$a2,3($t0)
.L0d989848:
    andi	$a3,$s6,0x40
    beqz	$a3,.L0d98cbec
    nop
    lb	$a1,4($t1)
.L0d989858:
    andi	$a5,$s6,0x80
    beqz	$a5,.L0d98cbf4
    nop
    lb	$a0,4($a7)
.L0d989868:
    # Line 551
    addiu	$t1,$t1,5
    addiu	$t0,$t0,4
    addiu	$a7,$a7,5
    # Line 550
    sll	$ra,$a1,0x8
    # Line 551
    addiu	$a6,$a6,4
    # Line 550
    sll	$v0,$a4,0x18
    # Line 551
    andi	$at,$s6,0x100
    # Line 550
    sll	$v1,$a2,0x10
    or	$ra,$a0,$ra
    or	$v0,$v0,$v1
    or	$ra,$ra,$v0
    # Line 551
    beqz	$at,.L0d98cbfc
    # Line 550
    sw	$ra,16384($zero)
    # Line 552
    lb	$a4,0($a6)
    addiu	$a6,$a6,1
.L0d9898a4:
    andi	$at,$s6,0x200
    beqz	$at,.L0d98cc04
    nop
    lb	$a2,0($a6)
    addiu	$a6,$a6,1
.L0d9898b8:
    andi	$v0,$s6,0x400
    beqz	$v0,.L0d98cc0c
    nop
    lb	$a1,0($a6)
    addiu	$a6,$a6,1
.L0d9898cc:
    andi	$v1,$s6,0x800
    beqz	$v1,.L0d98cc14
    nop
    lb	$a0,0($a6)
.L0d9898dc:
    # Line 557
    sll	$a3,$a1,0x8
    sll	$a6,$a4,0x18
    andi	$a5,$s6,0x1000
    sll	$ra,$a2,0x10
    or	$a3,$a0,$a3
    or	$a6,$a6,$ra
    or	$a3,$a3,$a6
    beqz	$a5,.L0d98cc1c
    sw	$a3,16384($zero)
    # Line 558
    lb	$a4,0($a7)
    addiu	$a7,$a7,1
.L0d989908:
    andi	$a5,$s6,0x2000
    beqz	$a5,.L0d98cc24
    nop
    lb	$a2,0($a7)
    addiu	$a7,$a7,1
.L0d98991c:
    andi	$a6,$s6,0x4000
    beqz	$a6,.L0d98cc2c
    nop
    lb	$a1,0($a7)
    addiu	$a7,$a7,1
.L0d989930:
    andi	$ra,$s6,0x8000
    beqz	$ra,.L0d98cc34
    nop
    lb	$a0,0($a7)
.L0d989940:
    # Line 563
    sll	$at,$a1,0x8
    sll	$a3,$a2,0x10
    lui	$v0,0x1
    sll	$v1,$a4,0x18
    and	$v0,$s6,$v0
    or	$v1,$v1,$a3
    or	$at,$a0,$at
    or	$at,$at,$v1
    beqz	$v0,.L0d98cc3c
    sw	$at,16384($zero)
    # Line 564
    lb	$a2,0($t0)
    addiu	$t0,$t0,1
.L0d989970:
    dsll32	$v1,$s6,0xe
    bgez	$v1,.L0d98cc44
    nop
    lb	$a4,0($t0)
    addiu	$t0,$t0,1
.L0d989984:
    dsll32	$a0,$s6,0xd
    bgez	$a0,.L0d98cc4c
    nop
    lb	$a0,0($t0)
    addiu	$t0,$t0,1
.L0d989998:
    dsll32	$a1,$s6,0xc
    bgez	$a1,.L0d98cc54
    lui	$a7,0x8
    lb	$a1,0($t0)
.L0d9899a8:
    # Line 569
    dsll32	$a5,$s6,0xb
    sll	$a3,$a0,0x8
    sll	$t0,$a2,0x18
    lui	$a6,0x10
    sll	$at,$a4,0x10
    or	$a3,$a1,$a3
    or	$t0,$t0,$at
    or	$a3,$a3,$t0
    bgez	$a5,.L0d98cc5c
    sw	$a3,16384($zero)
    # Line 570
    lb	$a5,0($t1)
    addiu	$t1,$t1,1
.L0d9899d8:
    dsll32	$a4,$s6,0xa
    bgez	$a4,.L0d98cc64
    nop
    lb	$a4,0($t1)
    addiu	$t1,$t1,1
.L0d9899ec:
    dsll32	$t0,$s6,0x9
    bgez	$t0,.L0d98cc6c
    nop
    lb	$a2,0($t1)
    addiu	$t1,$t1,1
.L0d989a00:
    dsll32	$at,$s6,0x8
    bgez	$at,.L0d98cc74
    lui	$s6,0x80
    lui	$s6,0x80
    lb	$a0,0($t1)
.L0d989a14:
    # Line 579
    lb	$a1,0($t8)
    lb	$a3,0($t9)
    sll	$a1,$a1,0x8
    lb	$ra,0($t3)
    sll	$a3,$a3,0x18
    sll	$ra,$ra,0x10
    lb	$v0,0($t2)
    # Line 575
    sll	$t0,$a2,0x8
    # Line 580
    andi	$v1,$s5,0x10
    # Line 575
    sll	$t1,$a5,0x18
    # Line 579
    or	$v0,$v0,$a1
    # Line 575
    sll	$at,$a4,0x10
    # Line 580
    lb	$a1,1($t2)
    # Line 575
    or	$t0,$a0,$t0
    or	$t1,$t1,$at
    # Line 579
    or	$a3,$a3,$ra
    # Line 575
    or	$t0,$t0,$t1
    sw	$t0,16384($zero)
    # Line 579
    or	$v0,$v0,$a3
    # Line 580
    beqz	$v1,.L0d98cc7c
    # Line 579
    sw	$v0,16384($zero)
    # Line 581
    ld	$a5,1200($sp)
    lui	$t0,0x40
    addu	$a5,$a5,$t9
    lui	$t1,0x4
    lui	$ra,0x2
    lb	$a5,0($a5)
.L0d989a80:
    andi	$at,$s5,0x20
    beqz	$at,.L0d98cc90
    nop
    lb	$a0,2($t3)
.L0d989a90:
    andi	$v0,$s5,0x40
    beqz	$v0,.L0d98cc98
    ld	$a4,1192($sp)
    addu	$a4,$a4,$t3
    lb	$a4,0($a4)
.L0d989aa4:
    andi	$at,$s5,0x80
    beqz	$at,.L0d98cca0
    nop
    lb	$a2,3($t2)
.L0d989ab4:
    # Line 586
    sll	$v0,$a4,0x8
    sll	$a3,$a5,0x18
    andi	$v1,$s5,0x100
    sll	$at,$a0,0x10
    or	$v0,$a2,$v0
    or	$a3,$a3,$at
    or	$v0,$v0,$a3
    beqz	$v1,.L0d98cca8
    sw	$v0,16384($zero)
    # Line 587
    ld	$a4,1168($sp)
    addu	$a4,$a4,$t2
    lb	$a4,0($a4)
.L0d989ae4:
    andi	$a5,$s5,0x200
    beqz	$a5,.L0d98ccb0
    nop
    lb	$a5,2($t8)
.L0d989af4:
    andi	$at,$s5,0x400
    beqz	$at,.L0d98ccb8
    ld	$a0,1184($sp)
    addu	$a0,$a0,$t8
    lb	$a0,0($a0)
.L0d989b08:
    andi	$a2,$s5,0x800
    beqz	$a2,.L0d98ccc0
    nop
    lb	$a2,3($t9)
.L0d989b18:
    # Line 593
    addiu	$t8,$t8,3
    addiu	$t2,$t2,2
    addiu	$t9,$t9,3
    # Line 592
    sll	$a3,$a0,0x8
    # Line 593
    addiu	$t3,$t3,2
    # Line 592
    sll	$v0,$a4,0x18
    # Line 593
    andi	$at,$s5,0x1000
    # Line 592
    sll	$v1,$a5,0x10
    or	$a3,$a2,$a3
    or	$v0,$v0,$v1
    or	$a3,$a3,$v0
    # Line 593
    beqz	$at,.L0d98ccc8
    # Line 592
    sw	$a3,16384($zero)
    # Line 594
    lb	$a4,0($t3)
    addiu	$t3,$t3,1
.L0d989b54:
    andi	$a5,$s5,0x2000
    beqz	$a5,.L0d98ccd0
    nop
    lb	$a5,0($t3)
    addiu	$t3,$t3,1
.L0d989b68:
    andi	$at,$s5,0x4000
    beqz	$at,.L0d98ccd8
    nop
    lb	$a0,0($t3)
    addiu	$t3,$t3,1
.L0d989b7c:
    andi	$v0,$s5,0x8000
    beqz	$v0,.L0d98cce0
    nop
    lb	$a2,0($t3)
.L0d989b8c:
    # Line 599
    sll	$v1,$a0,0x8
    sll	$at,$a5,0x10
    lui	$a3,0x1
    sll	$t3,$a4,0x18
    and	$a3,$s5,$a3
    or	$t3,$t3,$at
    or	$v1,$a2,$v1
    or	$v1,$v1,$t3
    beqz	$a3,.L0d98cce8
    sw	$v1,16384($zero)
    # Line 600
    lb	$a4,0($t9)
    addiu	$t9,$t9,1
.L0d989bbc:
    and	$a5,$s5,$ra
    beqz	$a5,.L0d98ccf0
    nop
    lb	$a2,0($t9)
    addiu	$t9,$t9,1
.L0d989bd0:
    and	$t3,$s5,$t1
    beqz	$t3,.L0d98ccf8
    nop
    lb	$a0,0($t9)
    addiu	$t9,$t9,1
.L0d989be4:
    and	$ra,$s5,$a7
    beqz	$ra,.L0d98cd00
    nop
    lb	$a5,0($t9)
.L0d989bf4:
    # Line 605
    sll	$at,$a0,0x8
    sll	$v1,$a4,0x18
    and	$v0,$s5,$a6
    sll	$a3,$a2,0x10
    or	$at,$a5,$at
    or	$v1,$v1,$a3
    or	$at,$at,$v1
    beqz	$v0,.L0d98cd08
    sw	$at,16384($zero)
    # Line 606
    lb	$a2,0($t2)
    addiu	$t2,$t2,1
.L0d989c20:
    lui	$v0,0x20
    and	$v0,$s5,$v0
    beqz	$v0,.L0d98cd10
    nop
    lb	$a0,0($t2)
    addiu	$t2,$t2,1
.L0d989c38:
    and	$v1,$s5,$t0
    beqz	$v1,.L0d98cd18
    nop
    lb	$a4,0($t2)
    addiu	$t2,$t2,1
.L0d989c4c:
    and	$a3,$s5,$s6
    beqz	$a3,.L0d98cd20
    nop
    lb	$a5,0($t2)
.L0d989c5c:
    # Line 611
    dsll32	$a7,$s5,0x7
    sll	$a6,$a4,0x8
    sll	$t0,$a2,0x18
    sll	$t1,$a0,0x10
    or	$a6,$a5,$a6
    or	$t0,$t0,$t1
    or	$a6,$a6,$t0
    bgez	$a7,.L0d98cd28
    sw	$a6,16384($zero)
    # Line 612
    lb	$a4,0($t8)
    addiu	$t8,$t8,1
.L0d989c88:
    dsll32	$a7,$s5,0x6
    bgez	$a7,.L0d98cd30
    nop
    lb	$a2,0($t8)
    addiu	$t8,$t8,1
.L0d989c9c:
    dsll32	$t0,$s5,0x5
    bgez	$t0,.L0d98cd38
    nop
    lb	$a0,0($t8)
    addiu	$t8,$t8,1
.L0d989cb0:
    dsll32	$t1,$s5,0x4
    bgez	$t1,.L0d98cd40
    nop
    lb	$a5,0($t8)
.L0d989cc0:
    # Line 617
    sll	$t3,$a0,0x8
    sll	$t8,$a4,0x18
    sll	$t9,$a2,0x10
    or	$t3,$a5,$t3
    or	$t8,$t8,$t9
    # Line 619
    sll	$t2,$a1,0x18
    # Line 617
    or	$t3,$t3,$t8
    sw	$t3,16384($zero)
    b	.L0d989308
    # Line 619
    sw	$t2,16384($zero)
.L0d989ce8:
    # Line 420
    sd	$zero,1160($sp)
    sd	$s5,1384($sp)
    sd	$s6,1376($sp)
    mtc1	$zero,$f31
    ld	$ra,1384($sp)
    ld	$a5,1376($sp)
    swc1	$f31,96($sp)
    lui	$s5,0x1fff
    lui	$s6,0xff
    swc1	$f31,92($sp)
    ori	$s6,$s6,0xffef
    ori	$s5,$s5,0xffcf
    swc1	$f31,88($sp)
.L0d989d1c:
    # Line 421
    ld	$at,1168($sp)
    slti	$at,$at,4
    bnez	$at,.L0d989d98
    mtc1	$zero,$f3
    ld	$a1,1192($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v1,48($s7)
    addu	$a0,$a5,$a0
    lw	$v0,12($a0)
    bne	$v0,$v1,.L0d989d98
    mtc1	$zero,$f3
    lw	$a2,16($a0)
    lw	$a3,52($s7)
    bne	$a2,$a3,.L0d989d98
    mtc1	$zero,$f3
    lw	$a4,20($a0)
    lw	$at,56($s7)
    bne	$a4,$at,.L0d989d98
    mtc1	$zero,$f3
    lwc1	$f2,48($s7)
    swc1	$f2,100($sp)
    lwc1	$f1,52($s7)
    swc1	$f1,104($sp)
    lwc1	$f0,56($s7)
    li	$a4,1
    sb	$a4,620($sp)
    b	.L0d989dbc
    swc1	$f0,108($sp)
    mtc1	$zero,$f3
.L0d989d98:
    sb	$zero,620($sp)
    move	$a4,$zero
    swc1	$f3,108($sp)
    li	$v0,-193
    li	$at,-33
    swc1	$f3,104($sp)
    and	$s5,$s5,$v0
    and	$s6,$s6,$at
    swc1	$f3,100($sp)
.L0d989dbc:
    # Line 422
    ld	$v1,1120($sp)
    slti	$v1,$v1,3
    bnez	$v1,.L0d989e38
    mtc1	$zero,$f7
    ld	$a1,1168($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$a2,36($ra)
    addu	$a0,$s7,$a0
    lw	$a1,12($a0)
    bne	$a1,$a2,.L0d989e38
    mtc1	$zero,$f7
    lw	$a2,16($a0)
    lw	$a3,40($ra)
    bne	$a2,$a3,.L0d989e38
    mtc1	$zero,$f7
    lw	$at,20($a0)
    lw	$v0,44($ra)
    bne	$at,$v0,.L0d989e38
    mtc1	$zero,$f7
    lwc1	$f6,36($ra)
    swc1	$f6,112($sp)
    lwc1	$f5,40($ra)
    swc1	$f5,116($sp)
    lwc1	$f4,44($ra)
    li	$v1,1
    sd	$v1,1208($sp)
    b	.L0d989e58
    swc1	$f4,120($sp)
    mtc1	$zero,$f7
.L0d989e38:
    sd	$zero,1208($sp)
    swc1	$f7,120($sp)
    li	$a0,-65
    li	$a1,-769
    swc1	$f7,116($sp)
    and	$s5,$s5,$a1
    and	$s6,$s6,$a0
    swc1	$f7,112($sp)
.L0d989e58:
    # Line 423
    ld	$a2,1200($sp)
    slti	$a2,$a2,4
    bnez	$a2,.L0d989eec
    ld	$a1,1120($sp)
    sll	$a0,$a1,0x2
    ld	$at,1040($sp)
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$at,48($at)
    addu	$a0,$ra,$a0
    lw	$a3,12($a0)
    bne	$a3,$at,.L0d989eec
    ld	$a3,1040($sp)
    lw	$a2,16($a0)
    lw	$a3,52($a3)
    bne	$a2,$a3,.L0d989eec
    ld	$v0,1040($sp)
    lw	$at,20($a0)
    lw	$v0,56($v0)
    bne	$at,$v0,.L0d989eec
    sd	$s7,1104($sp)
    ld	$a1,1040($sp)
    lwc1	$f10,48($a1)
    sd	$a4,1048($sp)
    addiu	$v1,$sp,40
    swc1	$f10,84($v1)
    lwc1	$f9,52($a1)
    li	$a0,1
    sd	$a0,1112($sp)
    swc1	$f9,88($v1)
    lwc1	$f8,56($a1)
    sb	$a0,621($sp)
    li	$s7,24
    addiu	$a0,$v1,96
    move	$a2,$s7
    b	.L0d989f2c
    swc1	$f8,92($v1)
.L0d989eec:
    sd	$zero,1112($sp)
    sb	$zero,621($sp)
    sd	$a4,1048($sp)
    mtc1	$zero,$f11
    sd	$s7,1104($sp)
    li	$s7,24
    addiu	$a2,$sp,40
    li	$a3,-129
    li	$at,-3073
    swc1	$f11,92($a2)
    and	$s5,$s5,$at
    and	$s6,$s6,$a3
    swc1	$f11,88($a2)
    addiu	$a0,$a2,96
    swc1	$f11,84($a2)
    move	$a2,$s7
.L0d989f2c:
    # Line 425
    ld	$v1,1160($sp)
    ld	$a1,1048($sp)
    li	$a3,1
    sltu	$v1,$zero,$v1
    sd	$v1,1128($sp)
    sltu	$a1,$zero,$a1
    sd	$a1,1144($sp)
    sll	$v0,$v1,0x2
    addu	$a1,$v1,$a1
    subu	$v0,$v0,$v1
    ld	$v1,1192($sp)
    li	$a4,4
    li	$at,4
    sll	$v0,$v0,0x2
    subu	$v1,$v1,$a1
    addu	$a5,$v0,$a5
    addiu	$v1,$v1,-1
    addiu	$a5,$a5,36
    slt	$at,$at,$v1
    sd	$v0,1000($sp)
    li	$v0,16
    movn	$v1,$a4,$at
    subu	$a4,$a4,$v1
    sllv	$a3,$a3,$v1
    sd	$a4,1032($sp)
    li	$a4,-1
    subu	$v0,$v0,$a3
    addiu	$a1,$v1,-1
    sll	$a3,$v0,0xc
    sll	$v0,$v0,0x8
    nor	$a3,$a3,$zero
    sd	$v1,960($sp)
    nor	$v0,$v0,$zero
    and	$s5,$s5,$a3
    sw	$v1,-24316($s8)
    beq	$a1,$a4,.L0d98a094
    and	$s6,$s6,$v0
    ld	$a3,960($sp)
    sd	$a3,928($sp)
    andi	$a3,$a3,0x3
    beqz	$a3,.L0d98a00c
    sd	$a3,1088($sp)
.L0d989fd4:
    lwc1	$f14,0($a5)
    swc1	$f14,0($a0)
    lwc1	$f13,4($a5)
    ld	$v0,1088($sp)
    swc1	$f13,4($a0)
    addiu	$a1,$a1,-1
    addiu	$v0,$v0,-1
    lwc1	$f12,8($a5)
    addiu	$a5,$a5,12
    addiu	$a0,$a0,12
    sd	$v0,1088($sp)
    addiu	$a2,$a2,3
    bnez	$v0,.L0d989fd4
    swc1	$f12,-4($a0)
.L0d98a00c:
    ld	$v1,928($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0d98a094
    nop
    nop
.L0d98a020:
    lwc1	$f0,0($a5)
    swc1	$f0,0($a0)
    lwc1	$f31,4($a5)
    swc1	$f31,4($a0)
    lwc1	$f29,8($a5)
    swc1	$f29,8($a0)
    lwc1	$f27,12($a5)
    swc1	$f27,12($a0)
    lwc1	$f25,16($a5)
    swc1	$f25,16($a0)
    lwc1	$f23,20($a5)
    swc1	$f23,20($a0)
    lwc1	$f21,24($a5)
    swc1	$f21,24($a0)
    lwc1	$f19,28($a5)
    swc1	$f19,28($a0)
    lwc1	$f18,32($a5)
    swc1	$f18,32($a0)
    lwc1	$f17,36($a5)
    swc1	$f17,36($a0)
    lwc1	$f16,40($a5)
    swc1	$f16,40($a0)
    addiu	$a1,$a1,-4
    lwc1	$f15,44($a5)
    addiu	$a5,$a5,48
    addiu	$a0,$a0,48
    addiu	$a2,$a2,12
    bne	$a1,$a4,.L0d98a020
    swc1	$f15,-4($a0)
.L0d98a094:
    ld	$a5,1032($sp)
    addiu	$a1,$a5,-1
    beq	$a1,$a4,.L0d98a11c
    # Line 426
    ld	$v1,1144($sp)
    # Line 425
    mtc1	$zero,$f4
    andi	$at,$a5,0x1
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$a5,952($sp)
    beqz	$at,.L0d98a0dc
    addu	$a0,$a0,$a3
    swc1	$f4,0($a0)
    ld	$a1,1032($sp)
    swc1	$f4,4($a0)
    addiu	$a0,$a0,12
    swc1	$f4,-4($a0)
    addiu	$a2,$a2,3
    addiu	$a1,$a1,-2
.L0d98a0dc:
    ld	$a3,952($sp)
    sra	$a3,$a3,0x1
    beqz	$a3,.L0d98a118
    nop
    nop
.L0d98a0f0:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    swc1	$f4,12($a0)
    addiu	$a1,$a1,-2
    swc1	$f4,16($a0)
    addiu	$a0,$a0,24
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98a0f0
    addiu	$a2,$a2,6
.L0d98a118:
    # Line 426
    ld	$v1,1144($sp)
.L0d98a11c:
    ld	$a5,1208($sp)
    li	$a0,4
    li	$at,4
    ld	$v0,1168($sp)
    sltu	$a5,$zero,$a5
    sll	$a3,$v1,0x2
    ld	$a1,1104($sp)
    subu	$a3,$a3,$v1
    addu	$v1,$v1,$a5
    sll	$a3,$a3,0x2
    subu	$v0,$v0,$v1
    addu	$a3,$a1,$a3
    addiu	$v0,$v0,-2
    addiu	$a1,$a3,48
    slt	$at,$at,$v0
    li	$v1,1
    movn	$v0,$a0,$at
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a0,$a0,$v0
    subu	$at,$at,$v1
    sd	$a1,1104($sp)
    addiu	$a1,$v0,-1
    sll	$v1,$at,0x14
    sd	$v0,968($sp)
    sll	$at,$at,0x10
    nor	$v1,$v1,$zero
    sw	$v0,-24308($s8)
    nor	$at,$at,$zero
    and	$s5,$s5,$v1
    sd	$a0,1072($sp)
    beq	$a1,$a4,.L0d98a298
    and	$s6,$s6,$at
    ld	$v0,968($sp)
    andi	$at,$v0,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$v0,920($sp)
    addu	$a0,$a0,$a3
    beqz	$at,.L0d98a200
    sd	$at,1096($sp)
.L0d98a1c0:
    ld	$a3,1104($sp)
    lwc1	$f3,0($a3)
    ld	$v1,1096($sp)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a3)
    addiu	$v1,$v1,-1
    sd	$v1,1096($sp)
    swc1	$f2,4($a0)
    addiu	$a1,$a1,-1
    lwc1	$f1,8($a3)
    addiu	$a0,$a0,12
    addiu	$a3,$a3,12
    sd	$a3,1104($sp)
    addiu	$a2,$a2,3
    bnez	$v1,.L0d98a1c0
    swc1	$f1,-4($a0)
.L0d98a200:
    ld	$at,920($sp)
    sra	$at,$at,0x2
    ld	$v0,1104($sp)
    beqz	$at,.L0d98a298
    sd	$v0,664($sp)
    sd	$a5,1024($sp)
    ld	$a5,1104($sp)
    nop
.L0d98a220:
    lwc1	$f15,0($a5)
    swc1	$f15,0($a0)
    lwc1	$f14,4($a5)
    swc1	$f14,4($a0)
    lwc1	$f13,8($a5)
    swc1	$f13,8($a0)
    lwc1	$f12,12($a5)
    swc1	$f12,12($a0)
    lwc1	$f11,16($a5)
    swc1	$f11,16($a0)
    lwc1	$f10,20($a5)
    swc1	$f10,20($a0)
    lwc1	$f9,24($a5)
    swc1	$f9,24($a0)
    lwc1	$f8,28($a5)
    swc1	$f8,28($a0)
    lwc1	$f7,32($a5)
    swc1	$f7,32($a0)
    lwc1	$f6,36($a5)
    swc1	$f6,36($a0)
    lwc1	$f5,40($a5)
    swc1	$f5,40($a0)
    addiu	$a1,$a1,-4
    lwc1	$f4,44($a5)
    addiu	$a5,$a5,48
    addiu	$a0,$a0,48
    addiu	$a2,$a2,12
    bne	$a1,$a4,.L0d98a220
    swc1	$f4,-4($a0)
    ld	$a5,1024($sp)
.L0d98a298:
    ld	$a1,1072($sp)
    addiu	$a1,$a1,-1
    beq	$a1,$a4,.L0d98a32c
    # Line 427
    sll	$v1,$a5,0x2
    ld	$v0,1072($sp)
    # Line 426
    mtc1	$zero,$f4
    andi	$at,$v0,0x1
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$v0,912($sp)
    beqz	$at,.L0d98a2e4
    addu	$a0,$a0,$a3
    swc1	$f4,0($a0)
    ld	$a1,1072($sp)
    swc1	$f4,4($a0)
    addiu	$a0,$a0,12
    swc1	$f4,-4($a0)
    addiu	$a2,$a2,3
    addiu	$a1,$a1,-2
.L0d98a2e4:
    ld	$a3,912($sp)
    sra	$a3,$a3,0x1
    beqz	$a3,.L0d98a328
    nop
    nop
    nop
    nop
.L0d98a300:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    swc1	$f4,12($a0)
    addiu	$a1,$a1,-2
    swc1	$f4,16($a0)
    addiu	$a0,$a0,24
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98a300
    addiu	$a2,$a2,6
.L0d98a328:
    # Line 427
    sll	$v1,$a5,0x2
.L0d98a32c:
    ld	$v0,1112($sp)
    subu	$v1,$v1,$a5
    sll	$v1,$v1,0x2
    ld	$a1,1120($sp)
    sltu	$v0,$zero,$v0
    addu	$ra,$ra,$v1
    sd	$v0,1136($sp)
    addu	$v0,$a5,$v0
    addiu	$ra,$ra,36
    subu	$v0,$a1,$v0
    li	$at,4
    addiu	$v0,$v0,-1
    li	$a0,4
    slt	$at,$at,$v0
    li	$v1,1
    movn	$v0,$a0,$at
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a0,$a0,$v0
    subu	$at,$at,$v1
    addiu	$a1,$v0,-1
    sll	$v1,$at,0x18
    sd	$v0,992($sp)
    sll	$at,$at,0x14
    nor	$v1,$v1,$zero
    sw	$v0,-24304($s8)
    nor	$at,$at,$zero
    and	$s5,$s5,$v1
    sd	$a0,1080($sp)
    beq	$a1,$a4,.L0d98a484
    and	$s6,$s6,$at
    ld	$at,992($sp)
    andi	$a5,$at,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$at,936($sp)
    beqz	$a5,.L0d98a3f4
    addu	$a0,$a0,$a3
.L0d98a3c4:
    lwc1	$f18,0($ra)
    swc1	$f18,0($a0)
    lwc1	$f17,4($ra)
    swc1	$f17,4($a0)
    addiu	$a1,$a1,-1
    addiu	$a5,$a5,-1
    lwc1	$f16,8($ra)
    addiu	$ra,$ra,12
    addiu	$a0,$a0,12
    addiu	$a2,$a2,3
    bnez	$a5,.L0d98a3c4
    swc1	$f16,-4($a0)
.L0d98a3f4:
    ld	$v0,936($sp)
    sra	$v0,$v0,0x2
    sd	$a1,1120($sp)
    beqz	$v0,.L0d98a484
    sd	$a1,672($sp)
    ld	$a1,1120($sp)
    move	$a5,$ra
.L0d98a410:
    lwc1	$f4,0($a5)
    swc1	$f4,0($a0)
    lwc1	$f3,4($a5)
    swc1	$f3,4($a0)
    lwc1	$f2,8($a5)
    swc1	$f2,8($a0)
    lwc1	$f1,12($a5)
    swc1	$f1,12($a0)
    lwc1	$f0,16($a5)
    swc1	$f0,16($a0)
    lwc1	$f31,20($a5)
    swc1	$f31,20($a0)
    lwc1	$f29,24($a5)
    swc1	$f29,24($a0)
    lwc1	$f27,28($a5)
    swc1	$f27,28($a0)
    lwc1	$f25,32($a5)
    swc1	$f25,32($a0)
    lwc1	$f23,36($a5)
    swc1	$f23,36($a0)
    lwc1	$f21,40($a5)
    swc1	$f21,40($a0)
    addiu	$a1,$a1,-4
    lwc1	$f19,44($a5)
    addiu	$a5,$a5,48
    addiu	$a0,$a0,48
    addiu	$a2,$a2,12
    bne	$a1,$a4,.L0d98a410
    swc1	$f19,-4($a0)
.L0d98a484:
    ld	$a1,1080($sp)
    addiu	$a1,$a1,-1
    beq	$a1,$a4,.L0d98a50c
    # Line 428
    ld	$a0,1136($sp)
    ld	$ra,1080($sp)
    # Line 427
    mtc1	$zero,$f4
    andi	$a5,$ra,0x1
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    beqz	$a5,.L0d98a4cc
    addu	$a0,$a0,$a3
    swc1	$f4,0($a0)
    ld	$a1,1080($sp)
    swc1	$f4,4($a0)
    addiu	$a0,$a0,12
    swc1	$f4,-4($a0)
    addiu	$a2,$a2,3
    addiu	$a1,$a1,-2
.L0d98a4cc:
    sra	$a3,$ra,0x1
    beqz	$a3,.L0d98a508
    nop
    nop
    nop
.L0d98a4e0:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    swc1	$f4,12($a0)
    addiu	$a1,$a1,-2
    swc1	$f4,16($a0)
    addiu	$a0,$a0,24
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98a4e0
    addiu	$a2,$a2,6
.L0d98a508:
    # Line 428
    ld	$a0,1136($sp)
.L0d98a50c:
    ld	$v1,1128($sp)
    ld	$a5,1040($sp)
    addu	$v1,$v1,$a0
    ld	$a0,1000($sp)
    ld	$v0,1200($sp)
    li	$at,16
    addu	$a0,$a0,$a5
    subu	$v0,$v0,$v1
    li	$a1,4
    addiu	$v0,$v0,-2
    li	$ra,4
    slt	$a1,$a1,$v0
    li	$v1,1
    movn	$v0,$ra,$a1
    addiu	$a5,$a0,48
    sllv	$v1,$v1,$v0
    subu	$ra,$ra,$v0
    subu	$at,$at,$v1
    addiu	$a1,$v0,-1
    sll	$v1,$at,0x10
    sll	$at,$at,0xc
    nor	$v1,$v1,$zero
    sd	$v0,984($sp)
    nor	$at,$at,$zero
    and	$s5,$s5,$v1
    sw	$v0,-24312($s8)
    beq	$a1,$a4,.L0d98a658
    and	$s6,$s6,$at
    ld	$at,984($sp)
    sd	$ra,976($sp)
    andi	$ra,$at,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$at,944($sp)
    beqz	$ra,.L0d98a5cc
    addu	$a0,$a0,$a3
.L0d98a59c:
    lwc1	$f7,0($a5)
    swc1	$f7,0($a0)
    lwc1	$f6,4($a5)
    swc1	$f6,4($a0)
    addiu	$a1,$a1,-1
    addiu	$ra,$ra,-1
    lwc1	$f5,8($a5)
    addiu	$a5,$a5,12
    addiu	$a0,$a0,12
    addiu	$a2,$a2,3
    bnez	$ra,.L0d98a59c
    swc1	$f5,-4($a0)
.L0d98a5cc:
    ld	$v0,944($sp)
    sra	$v0,$v0,0x2
    beqz	$v0,.L0d98a654
    sd	$a5,1040($sp)
    ld	$a5,1040($sp)
.L0d98a5e0:
    lwc1	$f19,0($a5)
    swc1	$f19,0($a0)
    lwc1	$f18,4($a5)
    swc1	$f18,4($a0)
    lwc1	$f17,8($a5)
    swc1	$f17,8($a0)
    lwc1	$f16,12($a5)
    swc1	$f16,12($a0)
    lwc1	$f15,16($a5)
    swc1	$f15,16($a0)
    lwc1	$f14,20($a5)
    swc1	$f14,20($a0)
    lwc1	$f13,24($a5)
    swc1	$f13,24($a0)
    lwc1	$f12,28($a5)
    swc1	$f12,28($a0)
    lwc1	$f11,32($a5)
    swc1	$f11,32($a0)
    lwc1	$f10,36($a5)
    swc1	$f10,36($a0)
    lwc1	$f9,40($a5)
    swc1	$f9,40($a0)
    addiu	$a1,$a1,-4
    lwc1	$f8,44($a5)
    addiu	$a5,$a5,48
    addiu	$a0,$a0,48
    addiu	$a2,$a2,12
    bne	$a1,$a4,.L0d98a5e0
    swc1	$f8,-4($a0)
.L0d98a654:
    ld	$ra,976($sp)
.L0d98a658:
    addiu	$a1,$ra,-1
    beq	$a1,$a4,.L0d98a6dc
    mtc1	$zero,$f4
    move	$a5,$ra
    andi	$at,$ra,0x1
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$ra,976($sp)
    beqz	$at,.L0d98a698
    addu	$a0,$a0,$a3
    swc1	$f4,0($a0)
    ld	$a1,976($sp)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    addiu	$a0,$a0,12
    addiu	$a1,$a1,-2
.L0d98a698:
    sra	$a2,$a5,0x1
    beqz	$a2,.L0d98a6d4
    nop
    nop
    nop
    nop
.L0d98a6b0:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    swc1	$f4,12($a0)
    addiu	$a1,$a1,-2
    swc1	$f4,16($a0)
    swc1	$f4,20($a0)
    bne	$a1,$a4,.L0d98a6b0
    addiu	$a0,$a0,24
.L0d98a6d4:
    sd	$s3,1248($sp)
    sd	$s2,1240($sp)
.L0d98a6dc:
    sd	$s3,1248($sp)
    li	$s3,10793
    sd	$s2,1240($sp)
    li	$s2,10791
    b	.L0d9892c8
    ld	$a0,1160($sp)
.L0d98a6f4:
    # Line 431
    li	$a4,4
    sw	$a4,-24320($s8)
    # Line 434
    lwc1	$f9,4($s6)
    swc1	$f9,40($sp)
    lwc1	$f8,8($s6)
    swc1	$f8,44($sp)
    # Line 435
    lwc1	$f7,12($s6)
    swc1	$f7,48($sp)
    lw	$at,0($s6)
    mtc1	$at,$f6
    cvt.s.w	$f6,$f6
    # Line 436
    ld	$ra,1040($sp)
    # Line 435
    swc1	$f6,52($sp)
    # Line 436
    lwc1	$f5,4($ra)
    swc1	$f5,56($sp)
    lwc1	$f4,8($ra)
    swc1	$f4,60($sp)
    # Line 437
    lwc1	$f3,12($ra)
    swc1	$f3,64($sp)
    lw	$ra,0($ra)
    mtc1	$ra,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,68($sp)
    # Line 438
    lwc1	$f1,4($s7)
    swc1	$f1,72($sp)
    lwc1	$f0,8($s7)
    swc1	$f0,76($sp)
    # Line 439
    lwc1	$f31,12($s7)
    swc1	$f31,80($sp)
    lw	$s4,0($s7)
    mtc1	$s4,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,84($sp)
    # Line 440
    lwc1	$f27,4($s5)
    swc1	$f27,88($sp)
    lwc1	$f25,8($s5)
    swc1	$f25,92($sp)
    # Line 441
    lwc1	$f23,12($s5)
    swc1	$f23,96($sp)
    lw	$a5,0($s5)
    mtc1	$a5,$f21
    # Line 443
    ld	$a3,1192($sp)
    # Line 441
    cvt.s.w	$f21,$f21
    # Line 443
    slti	$a3,$a3,3
    # Line 431
    sw	$a4,616($sp)
    # Line 432
    li	$s4,428
    # Line 443
    bnez	$a3,.L0d98a844
    # Line 441
    swc1	$f21,100($sp)
    # Line 443
    ld	$a1,1200($sp)
    ld	$a0,1040($sp)
    sll	$a1,$a1,0x4
    lw	$v1,52($s6)
    addu	$a0,$a0,$a1
    lw	$v0,20($a0)
    bne	$v0,$v1,.L0d98a844
    nop
    lw	$a2,24($a0)
    lw	$a3,56($s6)
    bne	$a2,$a3,.L0d98a844
    nop
    lw	$a5,60($s6)
    lw	$a4,28($a0)
    sd	$s6,1376($sp)
    bne	$a4,$a5,.L0d98a844
    sd	$s5,1384($sp)
    ld	$a5,1376($sp)
    lwc1	$f13,52($a5)
    swc1	$f13,104($sp)
    lwc1	$f12,56($a5)
    swc1	$f12,108($sp)
    lwc1	$f11,60($a5)
    swc1	$f11,112($sp)
    lw	$at,48($a5)
    mtc1	$at,$f10
    cvt.s.w	$f10,$f10
    ld	$ra,1384($sp)
    lui	$s5,0x1fff
    lui	$s6,0xff
    ori	$s6,$s6,0xffff
    li	$at,1
    sd	$at,1160($sp)
    ori	$s5,$s5,0xffff
    b	.L0d98a87c
    swc1	$f10,116($sp)
.L0d98a844:
    sd	$zero,1160($sp)
    sd	$s5,1384($sp)
    sd	$s6,1376($sp)
    mtc1	$zero,$f14
    ld	$ra,1384($sp)
    ld	$a5,1376($sp)
    swc1	$f14,116($sp)
    swc1	$f14,112($sp)
    lui	$s5,0x1fff
    lui	$s6,0xff
    swc1	$f14,108($sp)
    ori	$s6,$s6,0xffef
    ori	$s5,$s5,0xffcf
    swc1	$f14,104($sp)
.L0d98a87c:
    # Line 444
    ld	$at,1168($sp)
    slti	$at,$at,4
    bnez	$at,.L0d98a900
    mtc1	$zero,$f19
    ld	$a0,1192($sp)
    sll	$a0,$a0,0x4
    lw	$v1,68($s7)
    addu	$a0,$a5,$a0
    lw	$v0,20($a0)
    bne	$v0,$v1,.L0d98a900
    mtc1	$zero,$f19
    lw	$a1,24($a0)
    lw	$a2,72($s7)
    bne	$a1,$a2,.L0d98a900
    mtc1	$zero,$f19
    lw	$a3,28($a0)
    lw	$a4,76($s7)
    bne	$a3,$a4,.L0d98a900
    mtc1	$zero,$f19
    lwc1	$f18,68($s7)
    swc1	$f18,120($sp)
    lwc1	$f17,72($s7)
    swc1	$f17,124($sp)
    lwc1	$f16,76($s7)
    swc1	$f16,128($sp)
    lw	$at,64($s7)
    mtc1	$at,$f15
    cvt.s.w	$f15,$f15
    li	$a4,1
    sb	$a4,620($sp)
    b	.L0d98a928
    swc1	$f15,132($sp)
    mtc1	$zero,$f19
.L0d98a900:
    sb	$zero,620($sp)
    swc1	$f19,132($sp)
    move	$a4,$zero
    swc1	$f19,128($sp)
    li	$v1,-193
    li	$v0,-33
    swc1	$f19,124($sp)
    and	$s5,$s5,$v1
    and	$s6,$s6,$v0
    swc1	$f19,120($sp)
.L0d98a928:
    # Line 445
    ld	$a0,1120($sp)
    slti	$a0,$a0,3
    bnez	$a0,.L0d98a9ac
    mtc1	$zero,$f29
    ld	$a0,1168($sp)
    sll	$a0,$a0,0x4
    lw	$a2,52($ra)
    addu	$a0,$s7,$a0
    lw	$a1,20($a0)
    bne	$a1,$a2,.L0d98a9ac
    mtc1	$zero,$f29
    lw	$a1,24($a0)
    lw	$a2,56($ra)
    bne	$a1,$a2,.L0d98a9ac
    mtc1	$zero,$f29
    lw	$a3,28($a0)
    lw	$at,60($ra)
    bne	$a3,$at,.L0d98a9ac
    mtc1	$zero,$f29
    lwc1	$f27,52($ra)
    swc1	$f27,136($sp)
    lwc1	$f25,56($ra)
    swc1	$f25,140($sp)
    lwc1	$f23,60($ra)
    swc1	$f23,144($sp)
    lw	$v1,48($ra)
    mtc1	$v1,$f21
    cvt.s.w	$f21,$f21
    li	$v0,1
    sd	$v0,1208($sp)
    b	.L0d98a9d0
    swc1	$f21,148($sp)
    mtc1	$zero,$f29
.L0d98a9ac:
    sd	$zero,1208($sp)
    swc1	$f29,148($sp)
    swc1	$f29,144($sp)
    li	$a0,-65
    li	$a1,-769
    swc1	$f29,140($sp)
    and	$s5,$s5,$a1
    and	$s6,$s6,$a0
    swc1	$f29,136($sp)
.L0d98a9d0:
    # Line 446
    ld	$a2,1200($sp)
    slti	$a2,$a2,4
    bnez	$a2,.L0d98aa64
    ld	$a0,1120($sp)
    ld	$at,1040($sp)
    sll	$a0,$a0,0x4
    lw	$at,68($at)
    addu	$a0,$ra,$a0
    lw	$a3,20($a0)
    bne	$a3,$at,.L0d98aa64
    ld	$a2,1040($sp)
    lw	$a1,24($a0)
    lw	$a2,72($a2)
    bne	$a1,$a2,.L0d98aa64
    ld	$at,1040($sp)
    lw	$a3,28($a0)
    lw	$at,76($at)
    bne	$a3,$at,.L0d98aa64
    ld	$a0,1040($sp)
    lwc1	$f2,68($a0)
    addiu	$v0,$sp,40
    swc1	$f2,112($v0)
    lwc1	$f1,72($a0)
    swc1	$f1,116($v0)
    lwc1	$f0,76($a0)
    swc1	$f0,120($v0)
    lw	$a0,64($a0)
    mtc1	$a0,$f31
    li	$v1,1
    sd	$v1,1112($sp)
    cvt.s.w	$f31,$f31
    sb	$v1,621($sp)
    li	$a2,32
    sd	$a4,1048($sp)
    addiu	$a0,$v0,128
    b	.L0d98aaa0
    swc1	$f31,124($v0)
.L0d98aa64:
    sb	$zero,621($sp)
    sd	$zero,1112($sp)
    mtc1	$zero,$f3
    sd	$a4,1048($sp)
    addiu	$a1,$sp,40
    swc1	$f3,124($a1)
    li	$a2,32
    li	$at,-3073
    swc1	$f3,120($a1)
    li	$a3,-129
    and	$s5,$s5,$at
    swc1	$f3,116($a1)
    addiu	$a0,$a1,128
    and	$s6,$s6,$a3
    swc1	$f3,112($a1)
.L0d98aaa0:
    # Line 448
    ld	$v0,1160($sp)
    ld	$a1,1048($sp)
    sltu	$v0,$zero,$v0
    sd	$v0,1128($sp)
    sltu	$a1,$zero,$a1
    sd	$a1,1144($sp)
    addu	$a1,$v0,$a1
    sll	$v0,$v0,0x4
    ld	$v1,1192($sp)
    li	$a3,1
    addu	$a5,$v0,$a5
    addiu	$a5,$a5,48
    subu	$v1,$v1,$a1
    li	$at,4
    addiu	$v1,$v1,-1
    li	$a4,4
    slt	$at,$at,$v1
    sd	$v0,896($sp)
    li	$v0,16
    movn	$v1,$a4,$at
    subu	$a4,$a4,$v1
    sllv	$a3,$a3,$v1
    sd	$a4,880($sp)
    li	$a4,-1
    subu	$v0,$v0,$a3
    addiu	$a1,$v1,-1
    sll	$a3,$v0,0xc
    sll	$v0,$v0,0x8
    nor	$a3,$a3,$zero
    sd	$v1,848($sp)
    nor	$v0,$v0,$zero
    and	$s5,$s5,$a3
    sw	$v1,-24316($s8)
    beq	$a1,$a4,.L0d98ac54
    and	$s6,$s6,$v0
    ld	$v1,848($sp)
    sd	$v1,840($sp)
    andi	$v1,$v1,0x3
    beqz	$v1,.L0d98ab88
    sd	$v1,1064($sp)
.L0d98ab40:
    lwc1	$f7,4($a5)
    swc1	$f7,0($a0)
    lwc1	$f6,8($a5)
    swc1	$f6,4($a0)
    lwc1	$f5,12($a5)
    swc1	$f5,8($a0)
    lw	$v0,0($a5)
    mtc1	$v0,$f4
    ld	$at,1064($sp)
    cvt.s.w	$f4,$f4
    addiu	$a1,$a1,-1
    addiu	$at,$at,-1
    addiu	$a5,$a5,16
    addiu	$a0,$a0,16
    sd	$at,1064($sp)
    addiu	$a2,$a2,4
    bnez	$at,.L0d98ab40
    swc1	$f4,-4($a0)
.L0d98ab88:
    ld	$v1,840($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0d98ac54
    nop
    nop
    nop
.L0d98aba0:
    lwc1	$f27,4($a5)
    swc1	$f27,0($a0)
    lwc1	$f25,8($a5)
    swc1	$f25,4($a0)
    lwc1	$f23,12($a5)
    swc1	$f23,8($a0)
    lw	$v1,0($a5)
    mtc1	$v1,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,12($a0)
    lwc1	$f19,20($a5)
    swc1	$f19,16($a0)
    lwc1	$f18,24($a5)
    swc1	$f18,20($a0)
    lwc1	$f17,28($a5)
    swc1	$f17,24($a0)
    lw	$v0,16($a5)
    mtc1	$v0,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,28($a0)
    lwc1	$f15,36($a5)
    swc1	$f15,32($a0)
    lwc1	$f14,40($a5)
    swc1	$f14,36($a0)
    lwc1	$f13,44($a5)
    swc1	$f13,40($a0)
    lw	$at,32($a5)
    mtc1	$at,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,44($a0)
    lwc1	$f11,52($a5)
    swc1	$f11,48($a0)
    lwc1	$f10,56($a5)
    swc1	$f10,52($a0)
    lwc1	$f9,60($a5)
    swc1	$f9,56($a0)
    lw	$a3,48($a5)
    mtc1	$a3,$f8
    cvt.s.w	$f8,$f8
    addiu	$a1,$a1,-4
    addiu	$a5,$a5,64
    addiu	$a0,$a0,64
    addiu	$a2,$a2,16
    bne	$a1,$a4,.L0d98aba0
    swc1	$f8,-4($a0)
.L0d98ac54:
    ld	$a1,880($sp)
    addiu	$a1,$a1,-1
    beq	$a1,$a4,.L0d98aca4
    # Line 449
    ld	$a5,1208($sp)
    # Line 448
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
    nop
    nop
    nop
.L0d98ac80:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,8($a0)
    addiu	$a0,$a0,16
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98ac80
    addiu	$a2,$a2,4
    # Line 449
    ld	$a5,1208($sp)
.L0d98aca4:
    ld	$v1,1144($sp)
    sltu	$a5,$zero,$a5
    addu	$a0,$v1,$a5
    sll	$v1,$v1,0x4
    ld	$v0,1168($sp)
    addu	$s7,$s7,$v1
    addiu	$s7,$s7,64
    subu	$v0,$v0,$a0
    li	$at,4
    addiu	$v0,$v0,-2
    li	$a0,4
    slt	$at,$at,$v0
    li	$v1,1
    movn	$v0,$a0,$at
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a0,$a0,$v0
    subu	$at,$at,$v1
    addiu	$a1,$v0,-1
    sll	$v1,$at,0x14
    sd	$v0,856($sp)
    sll	$at,$at,0x10
    nor	$v1,$v1,$zero
    sw	$v0,-24308($s8)
    nor	$at,$at,$zero
    and	$s5,$s5,$v1
    sd	$a0,888($sp)
    beq	$a1,$a4,.L0d98ae58
    and	$s6,$s6,$at
    ld	$v0,856($sp)
    andi	$at,$v0,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$v0,824($sp)
    addu	$a0,$a0,$a3
    beqz	$at,.L0d98ad80
    sd	$at,1056($sp)
.L0d98ad38:
    lwc1	$f1,4($s7)
    swc1	$f1,0($a0)
    lwc1	$f0,8($s7)
    swc1	$f0,4($a0)
    lwc1	$f31,12($s7)
    swc1	$f31,8($a0)
    lw	$a3,0($s7)
    mtc1	$a3,$f29
    ld	$v1,1056($sp)
    cvt.s.w	$f29,$f29
    addiu	$a1,$a1,-1
    addiu	$v1,$v1,-1
    addiu	$s7,$s7,16
    addiu	$a0,$a0,16
    sd	$v1,1056($sp)
    addiu	$a2,$a2,4
    bnez	$v1,.L0d98ad38
    swc1	$f29,-4($a0)
.L0d98ad80:
    ld	$at,824($sp)
    sra	$at,$at,0x2
    beqz	$at,.L0d98ae58
    sd	$s7,656($sp)
    sd	$a5,1024($sp)
    move	$a5,$s7
    nop
    nop
.L0d98ada0:
    lwc1	$f17,4($a5)
    swc1	$f17,0($a0)
    lwc1	$f16,8($a5)
    swc1	$f16,4($a0)
    lwc1	$f15,12($a5)
    swc1	$f15,8($a0)
    lw	$v0,0($a5)
    mtc1	$v0,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,12($a0)
    lwc1	$f13,20($a5)
    swc1	$f13,16($a0)
    lwc1	$f12,24($a5)
    swc1	$f12,20($a0)
    lwc1	$f11,28($a5)
    swc1	$f11,24($a0)
    lw	$at,16($a5)
    mtc1	$at,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,28($a0)
    lwc1	$f9,36($a5)
    swc1	$f9,32($a0)
    lwc1	$f8,40($a5)
    swc1	$f8,36($a0)
    lwc1	$f7,44($a5)
    swc1	$f7,40($a0)
    lw	$a3,32($a5)
    mtc1	$a3,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,44($a0)
    lwc1	$f5,52($a5)
    swc1	$f5,48($a0)
    lwc1	$f4,56($a5)
    swc1	$f4,52($a0)
    lwc1	$f3,60($a5)
    swc1	$f3,56($a0)
    lw	$v1,48($a5)
    mtc1	$v1,$f2
    cvt.s.w	$f2,$f2
    addiu	$a1,$a1,-4
    addiu	$a5,$a5,64
    addiu	$a0,$a0,64
    addiu	$a2,$a2,16
    bne	$a1,$a4,.L0d98ada0
    swc1	$f2,-4($a0)
    ld	$a5,1024($sp)
.L0d98ae58:
    ld	$a1,888($sp)
    addiu	$a1,$a1,-1
    beq	$a1,$a4,.L0d98aea4
    # Line 450
    ld	$v0,1112($sp)
    # Line 449
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
    nop
    nop
.L0d98ae80:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,8($a0)
    addiu	$a0,$a0,16
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98ae80
    addiu	$a2,$a2,4
    # Line 450
    ld	$v0,1112($sp)
.L0d98aea4:
    sll	$v1,$a5,0x4
    ld	$a1,1120($sp)
    sltu	$v0,$zero,$v0
    addu	$ra,$ra,$v1
    sd	$v0,1136($sp)
    addu	$v0,$a5,$v0
    addiu	$ra,$ra,48
    subu	$v0,$a1,$v0
    li	$at,4
    addiu	$v0,$v0,-1
    li	$a0,4
    slt	$at,$at,$v0
    li	$v1,1
    movn	$v0,$a0,$at
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a0,$a0,$v0
    subu	$at,$at,$v1
    addiu	$a1,$v0,-1
    sll	$v1,$at,0x18
    sd	$v0,864($sp)
    sll	$at,$at,0x14
    nor	$v1,$v1,$zero
    sw	$v0,-24304($s8)
    nor	$at,$at,$zero
    and	$s5,$s5,$v1
    sd	$a0,904($sp)
    beq	$a1,$a4,.L0d98b044
    and	$s6,$s6,$at
    ld	$a5,864($sp)
    andi	$s7,$a5,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    beqz	$s7,.L0d98af70
    addu	$a0,$a0,$a3
.L0d98af30:
    lwc1	$f23,4($ra)
    swc1	$f23,0($a0)
    lwc1	$f21,8($ra)
    swc1	$f21,4($a0)
    lwc1	$f19,12($ra)
    swc1	$f19,8($a0)
    lw	$at,0($ra)
    mtc1	$at,$f18
    cvt.s.w	$f18,$f18
    addiu	$a1,$a1,-1
    addiu	$s7,$s7,-1
    addiu	$ra,$ra,16
    addiu	$a0,$a0,16
    addiu	$a2,$a2,4
    bnez	$s7,.L0d98af30
    swc1	$f18,-4($a0)
.L0d98af70:
    sra	$v0,$a5,0x2
    beqz	$v0,.L0d98b044
    sd	$a1,1120($sp)
    ld	$a1,1120($sp)
    move	$a5,$ra
    nop
    nop
    nop
.L0d98af90:
    lwc1	$f11,4($a5)
    swc1	$f11,0($a0)
    lwc1	$f10,8($a5)
    swc1	$f10,4($a0)
    lwc1	$f9,12($a5)
    swc1	$f9,8($a0)
    lw	$at,0($a5)
    mtc1	$at,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,12($a0)
    lwc1	$f7,20($a5)
    swc1	$f7,16($a0)
    lwc1	$f6,24($a5)
    swc1	$f6,20($a0)
    lwc1	$f5,28($a5)
    swc1	$f5,24($a0)
    lw	$ra,16($a5)
    mtc1	$ra,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,28($a0)
    lwc1	$f3,36($a5)
    swc1	$f3,32($a0)
    lwc1	$f2,40($a5)
    swc1	$f2,36($a0)
    lwc1	$f1,44($a5)
    swc1	$f1,40($a0)
    lw	$a3,32($a5)
    mtc1	$a3,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,44($a0)
    lwc1	$f31,52($a5)
    swc1	$f31,48($a0)
    lwc1	$f29,56($a5)
    swc1	$f29,52($a0)
    lwc1	$f27,60($a5)
    swc1	$f27,56($a0)
    lw	$v1,48($a5)
    mtc1	$v1,$f25
    cvt.s.w	$f25,$f25
    addiu	$a1,$a1,-4
    addiu	$a5,$a5,64
    addiu	$a0,$a0,64
    addiu	$a2,$a2,16
    bne	$a1,$a4,.L0d98af90
    swc1	$f25,-4($a0)
.L0d98b044:
    ld	$a1,904($sp)
    addiu	$a1,$a1,-1
    beq	$a1,$a4,.L0d98b094
    # Line 451
    ld	$v1,1136($sp)
    # Line 450
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
    nop
    nop
    nop
.L0d98b070:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,8($a0)
    addiu	$a0,$a0,16
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98b070
    addiu	$a2,$a2,4
    # Line 451
    ld	$v1,1136($sp)
.L0d98b094:
    ld	$v0,1128($sp)
    ld	$a5,1040($sp)
    addu	$v0,$v0,$v1
    ld	$v1,896($sp)
    ld	$at,1200($sp)
    li	$ra,16
    addu	$v1,$v1,$a5
    subu	$at,$at,$v0
    li	$a0,4
    addiu	$at,$at,-2
    li	$s7,4
    slt	$a0,$a0,$at
    li	$v0,1
    movn	$at,$s7,$a0
    addiu	$a5,$v1,64
    sllv	$v0,$v0,$at
    subu	$s7,$s7,$at
    subu	$ra,$ra,$v0
    addiu	$a1,$at,-1
    sll	$v0,$ra,0x10
    sll	$ra,$ra,0xc
    nor	$v0,$v0,$zero
    sd	$at,872($sp)
    nor	$ra,$ra,$zero
    and	$s5,$s5,$v0
    sw	$at,-24312($s8)
    beq	$a1,$a4,.L0d98b234
    and	$s6,$s6,$ra
    ld	$at,872($sp)
    andi	$ra,$at,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$at,832($sp)
    beqz	$ra,.L0d98b160
    addu	$a0,$a0,$a3
.L0d98b120:
    lwc1	$f15,4($a5)
    swc1	$f15,0($a0)
    lwc1	$f14,8($a5)
    swc1	$f14,4($a0)
    lwc1	$f13,12($a5)
    swc1	$f13,8($a0)
    lw	$v0,0($a5)
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    addiu	$a1,$a1,-1
    addiu	$ra,$ra,-1
    addiu	$a5,$a5,16
    addiu	$a0,$a0,16
    addiu	$a2,$a2,4
    bnez	$ra,.L0d98b120
    swc1	$f12,-4($a0)
.L0d98b160:
    ld	$v1,832($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0d98b234
    sd	$a5,1040($sp)
    ld	$a5,1040($sp)
    nop
    nop
    nop
.L0d98b180:
    lwc1	$f5,4($a5)
    swc1	$f5,0($a0)
    lwc1	$f4,8($a5)
    swc1	$f4,4($a0)
    lwc1	$f3,12($a5)
    swc1	$f3,8($a0)
    lw	$v0,0($a5)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,12($a0)
    lwc1	$f1,20($a5)
    swc1	$f1,16($a0)
    lwc1	$f0,24($a5)
    swc1	$f0,20($a0)
    lwc1	$f31,28($a5)
    swc1	$f31,24($a0)
    lw	$at,16($a5)
    mtc1	$at,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,28($a0)
    lwc1	$f27,36($a5)
    swc1	$f27,32($a0)
    lwc1	$f25,40($a5)
    swc1	$f25,36($a0)
    lwc1	$f23,44($a5)
    swc1	$f23,40($a0)
    lw	$ra,32($a5)
    mtc1	$ra,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,44($a0)
    lwc1	$f19,52($a5)
    swc1	$f19,48($a0)
    lwc1	$f18,56($a5)
    swc1	$f18,52($a0)
    lwc1	$f17,60($a5)
    swc1	$f17,56($a0)
    lw	$a3,48($a5)
    mtc1	$a3,$f16
    cvt.s.w	$f16,$f16
    addiu	$a1,$a1,-4
    addiu	$a5,$a5,64
    addiu	$a0,$a0,64
    addiu	$a2,$a2,16
    bne	$a1,$a4,.L0d98b180
    swc1	$f16,-4($a0)
.L0d98b234:
    addiu	$a1,$s7,-1
    beq	$a1,$a4,.L0d98b270
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
    nop
.L0d98b250:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,8($a0)
    swc1	$f4,12($a0)
    bne	$a1,$a4,.L0d98b250
    addiu	$a0,$a0,16
    sd	$s3,1248($sp)
.L0d98b270:
    sd	$s3,1248($sp)
    # Line 452
    li	$s3,10793
    li	$s7,24
    b	.L0d9892c8
    ld	$a0,1160($sp)
.L0d98b284:
    # Line 454
    li	$a5,5
    sw	$a5,-24320($s8)
    # Line 457
    lwc1	$f31,8($s6)
    swc1	$f31,40($sp)
    lwc1	$f29,12($s6)
    swc1	$f29,44($sp)
    # Line 458
    lwc1	$f27,16($s6)
    swc1	$f27,48($sp)
    lwc1	$f25,0($s6)
    swc1	$f25,52($sp)
    # Line 459
    lwc1	$f23,4($s6)
    # Line 460
    ld	$s4,1040($sp)
    # Line 459
    swc1	$f23,56($sp)
    # Line 460
    lwc1	$f21,8($s4)
    swc1	$f21,60($sp)
    lwc1	$f19,12($s4)
    swc1	$f19,64($sp)
    # Line 461
    lwc1	$f18,16($s4)
    swc1	$f18,68($sp)
    lwc1	$f17,0($s4)
    swc1	$f17,72($sp)
    # Line 462
    lwc1	$f16,4($s4)
    swc1	$f16,76($sp)
    # Line 463
    lwc1	$f15,8($s7)
    swc1	$f15,80($sp)
    lwc1	$f14,12($s7)
    swc1	$f14,84($sp)
    # Line 464
    lwc1	$f13,16($s7)
    swc1	$f13,88($sp)
    lwc1	$f12,0($s7)
    swc1	$f12,92($sp)
    # Line 465
    lwc1	$f11,4($s7)
    swc1	$f11,96($sp)
    # Line 466
    lwc1	$f10,8($s5)
    swc1	$f10,100($sp)
    lwc1	$f9,12($s5)
    swc1	$f9,104($sp)
    # Line 467
    lwc1	$f8,16($s5)
    swc1	$f8,108($sp)
    lwc1	$f7,0($s5)
    # Line 470
    ld	$a4,1192($sp)
    # Line 467
    swc1	$f7,112($sp)
    # Line 470
    slti	$a4,$a4,3
    # Line 468
    lwc1	$f6,4($s5)
    # Line 454
    sw	$a5,616($sp)
    # Line 455
    li	$s4,431
    # Line 470
    bnez	$a4,.L0d98b3dc
    # Line 468
    swc1	$f6,116($sp)
    # Line 470
    ld	$a2,1200($sp)
    sll	$a1,$a2,0x2
    ld	$a0,1040($sp)
    addu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    lw	$at,68($s6)
    addu	$a0,$a0,$a1
    lw	$ra,28($a0)
    bne	$ra,$at,.L0d98b3dc
    nop
    lw	$a3,32($a0)
    lw	$a4,72($s6)
    bne	$a3,$a4,.L0d98b3dc
    nop
    lw	$ra,76($s6)
    lw	$a5,36($a0)
    sd	$s6,1376($sp)
    bne	$a5,$ra,.L0d98b3dc
    sd	$s5,1384($sp)
    ld	$a5,1376($sp)
    lwc1	$f4,68($a5)
    swc1	$f4,120($sp)
    lwc1	$f3,72($a5)
    swc1	$f3,124($sp)
    lwc1	$f2,76($a5)
    swc1	$f2,128($sp)
    lwc1	$f1,60($a5)
    ld	$ra,1384($sp)
    swc1	$f1,132($sp)
    li	$at,1
    lui	$s6,0xff
    lwc1	$f0,64($a5)
    sd	$at,1160($sp)
    lui	$s5,0x1fff
    ori	$s6,$s6,0xffff
    ori	$s5,$s5,0xffff
    b	.L0d98b418
    swc1	$f0,136($sp)
.L0d98b3dc:
    sd	$zero,1160($sp)
    sd	$s5,1384($sp)
    sd	$s6,1376($sp)
    mtc1	$zero,$f5
    ld	$ra,1384($sp)
    ld	$a5,1376($sp)
    swc1	$f5,136($sp)
    swc1	$f5,132($sp)
    swc1	$f5,128($sp)
    lui	$s5,0x1fff
    lui	$s6,0xff
    swc1	$f5,124($sp)
    ori	$s6,$s6,0xffef
    ori	$s5,$s5,0xffcf
    swc1	$f5,120($sp)
.L0d98b418:
    # Line 471
    ld	$at,1168($sp)
    slti	$at,$at,4
    bnez	$at,.L0d98b4a4
    mtc1	$zero,$f11
    ld	$a1,1192($sp)
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$v1,88($s7)
    addu	$a0,$a5,$a0
    lw	$v0,28($a0)
    bne	$v0,$v1,.L0d98b4a4
    mtc1	$zero,$f11
    lw	$a2,32($a0)
    lw	$a3,92($s7)
    bne	$a2,$a3,.L0d98b4a4
    mtc1	$zero,$f11
    lw	$a4,36($a0)
    lw	$at,96($s7)
    bne	$a4,$at,.L0d98b4a4
    mtc1	$zero,$f11
    lwc1	$f10,88($s7)
    swc1	$f10,140($sp)
    lwc1	$f9,92($s7)
    swc1	$f9,144($sp)
    lwc1	$f8,96($s7)
    swc1	$f8,148($sp)
    lwc1	$f7,80($s7)
    swc1	$f7,152($sp)
    lwc1	$f6,84($s7)
    li	$a4,1
    sb	$a4,620($sp)
    b	.L0d98b4d0
    swc1	$f6,156($sp)
    mtc1	$zero,$f11
.L0d98b4a4:
    sb	$zero,620($sp)
    swc1	$f11,156($sp)
    swc1	$f11,152($sp)
    move	$a4,$zero
    swc1	$f11,148($sp)
    li	$v0,-193
    li	$at,-33
    swc1	$f11,144($sp)
    and	$s5,$s5,$v0
    and	$s6,$s6,$at
    swc1	$f11,140($sp)
.L0d98b4d0:
    # Line 472
    ld	$v1,1120($sp)
    slti	$v1,$v1,3
    bnez	$v1,.L0d98b55c
    mtc1	$zero,$f17
    ld	$a1,1168($sp)
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$a2,68($ra)
    addu	$a0,$s7,$a0
    lw	$a1,28($a0)
    bne	$a1,$a2,.L0d98b55c
    mtc1	$zero,$f17
    lw	$a2,32($a0)
    lw	$a3,72($ra)
    bne	$a2,$a3,.L0d98b55c
    mtc1	$zero,$f17
    lw	$at,36($a0)
    lw	$v0,76($ra)
    bne	$at,$v0,.L0d98b55c
    mtc1	$zero,$f17
    lwc1	$f16,68($ra)
    swc1	$f16,160($sp)
    lwc1	$f15,72($ra)
    swc1	$f15,164($sp)
    lwc1	$f14,76($ra)
    swc1	$f14,168($sp)
    lwc1	$f13,60($ra)
    swc1	$f13,172($sp)
    lwc1	$f12,64($ra)
    li	$v1,1
    sd	$v1,1208($sp)
    b	.L0d98b584
    swc1	$f12,176($sp)
    mtc1	$zero,$f17
.L0d98b55c:
    sd	$zero,1208($sp)
    swc1	$f17,176($sp)
    swc1	$f17,172($sp)
    swc1	$f17,168($sp)
    li	$a0,-65
    li	$a1,-769
    swc1	$f17,164($sp)
    and	$s5,$s5,$a1
    and	$s6,$s6,$a0
    swc1	$f17,160($sp)
.L0d98b584:
    # Line 473
    ld	$a2,1200($sp)
    slti	$a2,$a2,4
    bnez	$a2,.L0d98b620
    ld	$a1,1120($sp)
    sll	$a0,$a1,0x2
    ld	$at,1040($sp)
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x2
    lw	$at,88($at)
    addu	$a0,$ra,$a0
    lw	$a3,28($a0)
    bne	$a3,$at,.L0d98b620
    ld	$a3,1040($sp)
    lw	$a2,32($a0)
    lw	$a3,92($a3)
    bne	$a2,$a3,.L0d98b620
    ld	$v0,1040($sp)
    lw	$at,36($a0)
    lw	$v0,96($v0)
    bne	$at,$v0,.L0d98b620
    ld	$a1,1040($sp)
    lwc1	$f25,88($a1)
    addiu	$v1,$sp,40
    swc1	$f25,140($v1)
    lwc1	$f23,92($a1)
    swc1	$f23,144($v1)
    lwc1	$f21,96($a1)
    sd	$a4,1048($sp)
    swc1	$f21,148($v1)
    lwc1	$f19,80($a1)
    li	$a0,1
    sd	$a0,1112($sp)
    swc1	$f19,152($v1)
    lwc1	$f18,84($a1)
    li	$a2,40
    sb	$a0,621($sp)
    addiu	$a0,$v1,160
    b	.L0d98b660
    swc1	$f18,156($v1)
.L0d98b620:
    sb	$zero,621($sp)
    sd	$zero,1112($sp)
    mtc1	$zero,$f27
    sd	$a4,1048($sp)
    addiu	$a3,$sp,40
    swc1	$f27,156($a3)
    swc1	$f27,152($a3)
    li	$a2,40
    li	$v0,-3073
    swc1	$f27,148($a3)
    li	$at,-129
    and	$s5,$s5,$v0
    swc1	$f27,144($a3)
    addiu	$a0,$a3,160
    and	$s6,$s6,$at
    swc1	$f27,140($a3)
.L0d98b660:
    # Line 475
    ld	$a1,1160($sp)
    li	$at,4
    ld	$a4,1048($sp)
    sltu	$a1,$zero,$a1
    li	$v0,4
    sll	$v1,$a1,0x2
    ld	$a3,1192($sp)
    addu	$v1,$v1,$a1
    sltu	$a4,$zero,$a4
    sll	$v1,$v1,0x2
    sd	$a4,1144($sp)
    addu	$a4,$a1,$a4
    addu	$a5,$v1,$a5
    subu	$a3,$a3,$a4
    addiu	$a5,$a5,60
    addiu	$a3,$a3,-1
    li	$a4,1
    slt	$v0,$v0,$a3
    sd	$v1,816($sp)
    li	$v1,16
    movn	$a3,$at,$v0
    sd	$a1,1128($sp)
    addiu	$a1,$a3,-1
    sllv	$a4,$a4,$a3
    subu	$at,$at,$a3
    subu	$v1,$v1,$a4
    sd	$at,808($sp)
    li	$a4,-1
    sll	$at,$v1,0xc
    sll	$v1,$v1,0x8
    nor	$at,$at,$zero
    sd	$a3,776($sp)
    nor	$v1,$v1,$zero
    and	$s5,$s5,$at
    sw	$a3,-24316($s8)
    beq	$a1,$a4,.L0d98b814
    and	$s6,$s6,$v1
    ld	$a3,776($sp)
    sd	$a3,744($sp)
    andi	$a3,$a3,0x3
    beqz	$a3,.L0d98b750
    sd	$a3,1016($sp)
.L0d98b708:
    lwc1	$f2,8($a5)
    swc1	$f2,0($a0)
    lwc1	$f1,12($a5)
    swc1	$f1,4($a0)
    lwc1	$f0,16($a5)
    swc1	$f0,8($a0)
    lwc1	$f31,0($a5)
    ld	$v0,1016($sp)
    swc1	$f31,12($a0)
    addiu	$a1,$a1,-1
    addiu	$v0,$v0,-1
    lwc1	$f29,4($a5)
    addiu	$a5,$a5,20
    addiu	$a0,$a0,20
    sd	$v0,1016($sp)
    addiu	$a2,$a2,5
    bnez	$v0,.L0d98b708
    swc1	$f29,-4($a0)
.L0d98b750:
    ld	$v1,744($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0d98b814
    nop
.L0d98b760:
    lwc1	$f25,8($a5)
    swc1	$f25,0($a0)
    lwc1	$f23,12($a5)
    swc1	$f23,4($a0)
    lwc1	$f21,16($a5)
    swc1	$f21,8($a0)
    lwc1	$f19,0($a5)
    swc1	$f19,12($a0)
    lwc1	$f18,4($a5)
    swc1	$f18,16($a0)
    lwc1	$f17,28($a5)
    swc1	$f17,20($a0)
    lwc1	$f16,32($a5)
    swc1	$f16,24($a0)
    lwc1	$f15,36($a5)
    swc1	$f15,28($a0)
    lwc1	$f14,20($a5)
    swc1	$f14,32($a0)
    lwc1	$f13,24($a5)
    swc1	$f13,36($a0)
    lwc1	$f12,48($a5)
    swc1	$f12,40($a0)
    lwc1	$f11,52($a5)
    swc1	$f11,44($a0)
    lwc1	$f10,56($a5)
    swc1	$f10,48($a0)
    lwc1	$f9,40($a5)
    swc1	$f9,52($a0)
    lwc1	$f8,44($a5)
    swc1	$f8,56($a0)
    lwc1	$f7,68($a5)
    swc1	$f7,60($a0)
    lwc1	$f6,72($a5)
    swc1	$f6,64($a0)
    lwc1	$f5,76($a5)
    swc1	$f5,68($a0)
    lwc1	$f4,60($a5)
    swc1	$f4,72($a0)
    addiu	$a1,$a1,-4
    lwc1	$f3,64($a5)
    addiu	$a5,$a5,80
    addiu	$a0,$a0,80
    addiu	$a2,$a2,20
    bne	$a1,$a4,.L0d98b760
    swc1	$f3,-4($a0)
.L0d98b814:
    ld	$a5,808($sp)
    addiu	$a1,$a5,-1
    beq	$a1,$a4,.L0d98b868
    # Line 476
    ld	$a0,1144($sp)
    # Line 475
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
    nop
    nop
    nop
.L0d98b840:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,12($a0)
    addiu	$a0,$a0,20
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98b840
    addiu	$a2,$a2,5
    # Line 476
    ld	$a0,1144($sp)
.L0d98b868:
    ld	$a1,1208($sp)
    li	$a5,4
    li	$at,4
    ld	$v0,1168($sp)
    sltu	$a1,$zero,$a1
    sll	$v1,$a0,0x2
    addu	$v1,$v1,$a0
    addu	$a0,$a0,$a1
    sll	$v1,$v1,0x2
    subu	$v0,$v0,$a0
    addu	$s7,$s7,$v1
    addiu	$v0,$v0,-2
    addiu	$s7,$s7,80
    slt	$at,$at,$v0
    li	$v1,1
    movn	$v0,$a5,$at
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a5,$a5,$v0
    subu	$at,$at,$v1
    sd	$a1,1024($sp)
    addiu	$a1,$v0,-1
    sll	$v1,$at,0x14
    sll	$at,$at,0x10
    nor	$v1,$v1,$zero
    sd	$v0,784($sp)
    nor	$at,$at,$zero
    and	$s5,$s5,$v1
    sw	$v0,-24308($s8)
    beq	$a1,$a4,.L0d98ba18
    and	$s6,$s6,$at
    ld	$at,784($sp)
    sd	$a5,1232($sp)
    andi	$a5,$at,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$at,752($sp)
    beqz	$a5,.L0d98b944
    addu	$a0,$a0,$a3
.L0d98b904:
    lwc1	$f1,8($s7)
    swc1	$f1,0($a0)
    lwc1	$f0,12($s7)
    swc1	$f0,4($a0)
    lwc1	$f31,16($s7)
    swc1	$f31,8($a0)
    lwc1	$f29,0($s7)
    swc1	$f29,12($a0)
    addiu	$a1,$a1,-1
    addiu	$a5,$a5,-1
    lwc1	$f27,4($s7)
    addiu	$s7,$s7,20
    addiu	$a0,$a0,20
    addiu	$a2,$a2,5
    bnez	$a5,.L0d98b904
    swc1	$f27,-4($a0)
.L0d98b944:
    ld	$v0,752($sp)
    sra	$v0,$v0,0x2
    beqz	$v0,.L0d98ba14
    sd	$s7,648($sp)
    move	$a5,$s7
    nop
    nop
.L0d98b960:
    lwc1	$f23,8($a5)
    swc1	$f23,0($a0)
    lwc1	$f21,12($a5)
    swc1	$f21,4($a0)
    lwc1	$f19,16($a5)
    swc1	$f19,8($a0)
    lwc1	$f18,0($a5)
    swc1	$f18,12($a0)
    lwc1	$f17,4($a5)
    swc1	$f17,16($a0)
    lwc1	$f16,28($a5)
    swc1	$f16,20($a0)
    lwc1	$f15,32($a5)
    swc1	$f15,24($a0)
    lwc1	$f14,36($a5)
    swc1	$f14,28($a0)
    lwc1	$f13,20($a5)
    swc1	$f13,32($a0)
    lwc1	$f12,24($a5)
    swc1	$f12,36($a0)
    lwc1	$f11,48($a5)
    swc1	$f11,40($a0)
    lwc1	$f10,52($a5)
    swc1	$f10,44($a0)
    lwc1	$f9,56($a5)
    swc1	$f9,48($a0)
    lwc1	$f8,40($a5)
    swc1	$f8,52($a0)
    lwc1	$f7,44($a5)
    swc1	$f7,56($a0)
    lwc1	$f6,68($a5)
    swc1	$f6,60($a0)
    lwc1	$f5,72($a5)
    swc1	$f5,64($a0)
    lwc1	$f4,76($a5)
    swc1	$f4,68($a0)
    lwc1	$f3,60($a5)
    swc1	$f3,72($a0)
    addiu	$a1,$a1,-4
    lwc1	$f2,64($a5)
    addiu	$a5,$a5,80
    addiu	$a0,$a0,80
    addiu	$a2,$a2,20
    bne	$a1,$a4,.L0d98b960
    swc1	$f2,-4($a0)
.L0d98ba14:
    ld	$a5,1232($sp)
.L0d98ba18:
    addiu	$a1,$a5,-1
    beq	$a1,$a4,.L0d98ba68
    # Line 477
    ld	$v0,1024($sp)
    # Line 476
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
    nop
    nop
    nop
.L0d98ba40:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,12($a0)
    addiu	$a0,$a0,20
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98ba40
    addiu	$a2,$a2,5
    # Line 477
    ld	$v0,1024($sp)
.L0d98ba68:
    ld	$a0,1112($sp)
    li	$a5,4
    li	$at,4
    ld	$a1,1120($sp)
    sltu	$a0,$zero,$a0
    sll	$v1,$v0,0x2
    addu	$v1,$v1,$v0
    addu	$v0,$v0,$a0
    sll	$v1,$v1,0x2
    subu	$v0,$a1,$v0
    addu	$ra,$ra,$v1
    addiu	$v0,$v0,-1
    addiu	$ra,$ra,60
    slt	$at,$at,$v0
    li	$v1,1
    movn	$v0,$a5,$at
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a5,$a5,$v0
    subu	$at,$at,$v1
    addiu	$a1,$v0,-1
    sll	$v1,$at,0x18
    sd	$a0,1136($sp)
    sll	$at,$at,0x14
    nor	$v1,$v1,$zero
    sd	$v0,792($sp)
    nor	$at,$at,$zero
    and	$s5,$s5,$v1
    sw	$v0,-24304($s8)
    beq	$a1,$a4,.L0d98bc18
    and	$s6,$s6,$at
    ld	$at,792($sp)
    andi	$s7,$at,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$at,760($sp)
    beqz	$s7,.L0d98bb40
    addu	$a0,$a0,$a3
.L0d98bb00:
    lwc1	$f0,8($ra)
    swc1	$f0,0($a0)
    lwc1	$f31,12($ra)
    swc1	$f31,4($a0)
    lwc1	$f29,16($ra)
    swc1	$f29,8($a0)
    lwc1	$f27,0($ra)
    swc1	$f27,12($a0)
    addiu	$a1,$a1,-1
    addiu	$s7,$s7,-1
    lwc1	$f25,4($ra)
    addiu	$ra,$ra,20
    addiu	$a0,$a0,20
    addiu	$a2,$a2,5
    bnez	$s7,.L0d98bb00
    swc1	$f25,-4($a0)
.L0d98bb40:
    ld	$v0,760($sp)
    sra	$v0,$v0,0x2
    beqz	$v0,.L0d98bc18
    sd	$a1,1120($sp)
    ld	$a1,1120($sp)
    sd	$a5,1400($sp)
    move	$a5,$ra
    nop
.L0d98bb60:
    lwc1	$f21,8($a5)
    swc1	$f21,0($a0)
    lwc1	$f19,12($a5)
    swc1	$f19,4($a0)
    lwc1	$f18,16($a5)
    swc1	$f18,8($a0)
    lwc1	$f17,0($a5)
    swc1	$f17,12($a0)
    lwc1	$f16,4($a5)
    swc1	$f16,16($a0)
    lwc1	$f15,28($a5)
    swc1	$f15,20($a0)
    lwc1	$f14,32($a5)
    swc1	$f14,24($a0)
    lwc1	$f13,36($a5)
    swc1	$f13,28($a0)
    lwc1	$f12,20($a5)
    swc1	$f12,32($a0)
    lwc1	$f11,24($a5)
    swc1	$f11,36($a0)
    lwc1	$f10,48($a5)
    swc1	$f10,40($a0)
    lwc1	$f9,52($a5)
    swc1	$f9,44($a0)
    lwc1	$f8,56($a5)
    swc1	$f8,48($a0)
    lwc1	$f7,40($a5)
    swc1	$f7,52($a0)
    lwc1	$f6,44($a5)
    swc1	$f6,56($a0)
    lwc1	$f5,68($a5)
    swc1	$f5,60($a0)
    lwc1	$f4,72($a5)
    swc1	$f4,64($a0)
    lwc1	$f3,76($a5)
    swc1	$f3,68($a0)
    lwc1	$f2,60($a5)
    swc1	$f2,72($a0)
    addiu	$a1,$a1,-4
    lwc1	$f1,64($a5)
    addiu	$a5,$a5,80
    addiu	$a0,$a0,80
    addiu	$a2,$a2,20
    bne	$a1,$a4,.L0d98bb60
    swc1	$f1,-4($a0)
    ld	$a5,1400($sp)
.L0d98bc18:
    addiu	$a1,$a5,-1
    beq	$a1,$a4,.L0d98bc68
    # Line 478
    ld	$v1,1136($sp)
    # Line 477
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
    nop
    nop
    nop
.L0d98bc40:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,12($a0)
    addiu	$a0,$a0,20
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98bc40
    addiu	$a2,$a2,5
    # Line 478
    ld	$v1,1136($sp)
.L0d98bc68:
    ld	$v0,1128($sp)
    ld	$a5,1040($sp)
    addu	$v0,$v0,$v1
    ld	$v1,816($sp)
    ld	$at,1200($sp)
    li	$ra,16
    addu	$v1,$v1,$a5
    subu	$at,$at,$v0
    li	$a0,4
    addiu	$at,$at,-2
    li	$s7,4
    slt	$a0,$a0,$at
    li	$v0,1
    movn	$at,$s7,$a0
    addiu	$a5,$v1,80
    sllv	$v0,$v0,$at
    subu	$s7,$s7,$at
    subu	$ra,$ra,$v0
    addiu	$a1,$at,-1
    sll	$v0,$ra,0x10
    sll	$ra,$ra,0xc
    nor	$v0,$v0,$zero
    sd	$at,800($sp)
    nor	$ra,$ra,$zero
    and	$s5,$s5,$v0
    sw	$at,-24312($s8)
    beq	$a1,$a4,.L0d98be04
    and	$s6,$s6,$ra
    ld	$at,800($sp)
    andi	$ra,$at,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$at,768($sp)
    beqz	$ra,.L0d98bd34
    addu	$a0,$a0,$a3
.L0d98bcf4:
    lwc1	$f31,8($a5)
    swc1	$f31,0($a0)
    lwc1	$f29,12($a5)
    swc1	$f29,4($a0)
    lwc1	$f27,16($a5)
    swc1	$f27,8($a0)
    lwc1	$f25,0($a5)
    swc1	$f25,12($a0)
    addiu	$a1,$a1,-1
    addiu	$ra,$ra,-1
    lwc1	$f23,4($a5)
    addiu	$a5,$a5,20
    addiu	$a0,$a0,20
    addiu	$a2,$a2,5
    bnez	$ra,.L0d98bcf4
    swc1	$f23,-4($a0)
.L0d98bd34:
    ld	$v0,768($sp)
    sra	$v0,$v0,0x2
    beqz	$v0,.L0d98be04
    sd	$a5,1040($sp)
    ld	$a5,1040($sp)
    nop
    nop
.L0d98bd50:
    lwc1	$f19,8($a5)
    swc1	$f19,0($a0)
    lwc1	$f18,12($a5)
    swc1	$f18,4($a0)
    lwc1	$f17,16($a5)
    swc1	$f17,8($a0)
    lwc1	$f16,0($a5)
    swc1	$f16,12($a0)
    lwc1	$f15,4($a5)
    swc1	$f15,16($a0)
    lwc1	$f14,28($a5)
    swc1	$f14,20($a0)
    lwc1	$f13,32($a5)
    swc1	$f13,24($a0)
    lwc1	$f12,36($a5)
    swc1	$f12,28($a0)
    lwc1	$f11,20($a5)
    swc1	$f11,32($a0)
    lwc1	$f10,24($a5)
    swc1	$f10,36($a0)
    lwc1	$f9,48($a5)
    swc1	$f9,40($a0)
    lwc1	$f8,52($a5)
    swc1	$f8,44($a0)
    lwc1	$f7,56($a5)
    swc1	$f7,48($a0)
    lwc1	$f6,40($a5)
    swc1	$f6,52($a0)
    lwc1	$f5,44($a5)
    swc1	$f5,56($a0)
    lwc1	$f4,68($a5)
    swc1	$f4,60($a0)
    lwc1	$f3,72($a5)
    swc1	$f3,64($a0)
    lwc1	$f2,76($a5)
    swc1	$f2,68($a0)
    lwc1	$f1,60($a5)
    swc1	$f1,72($a0)
    addiu	$a1,$a1,-4
    lwc1	$f0,64($a5)
    addiu	$a5,$a5,80
    addiu	$a0,$a0,80
    addiu	$a2,$a2,20
    bne	$a1,$a4,.L0d98bd50
    swc1	$f0,-4($a0)
.L0d98be04:
    addiu	$a1,$s7,-1
    beq	$a1,$a4,.L0d98be44
    # Line 479
    li	$s7,24
    # Line 478
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
.L0d98be20:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,12($a0)
    swc1	$f4,16($a0)
    bne	$a1,$a4,.L0d98be20
    addiu	$a0,$a0,20
    # Line 479
    li	$s7,24
.L0d98be44:
    b	.L0d9892c8
    ld	$a0,1160($sp)
.L0d98be4c:
    # Line 481
    sw	$a5,-24320($s8)
    # Line 484
    lwc1	$f17,12($s6)
    swc1	$f17,40($sp)
    lwc1	$f16,16($s6)
    swc1	$f16,44($sp)
    # Line 485
    lwc1	$f15,20($s6)
    swc1	$f15,48($sp)
    lw	$v1,8($s6)
    mtc1	$v1,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,52($sp)
    # Line 486
    lwc1	$f13,0($s6)
    swc1	$f13,56($sp)
    lwc1	$f12,4($s6)
    # Line 488
    ld	$at,1040($sp)
    # Line 486
    swc1	$f12,60($sp)
    # Line 488
    lwc1	$f11,12($at)
    swc1	$f11,64($sp)
    lwc1	$f10,16($at)
    swc1	$f10,68($sp)
    # Line 489
    lwc1	$f9,20($at)
    swc1	$f9,72($sp)
    lw	$v0,8($at)
    mtc1	$v0,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,76($sp)
    # Line 490
    lwc1	$f7,0($at)
    swc1	$f7,80($sp)
    lwc1	$f6,4($at)
    swc1	$f6,84($sp)
    # Line 492
    lwc1	$f5,12($s7)
    swc1	$f5,88($sp)
    lwc1	$f4,16($s7)
    swc1	$f4,92($sp)
    # Line 493
    lwc1	$f3,20($s7)
    swc1	$f3,96($sp)
    lw	$ra,8($s7)
    mtc1	$ra,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,100($sp)
    # Line 494
    lwc1	$f1,0($s7)
    swc1	$f1,104($sp)
    lwc1	$f0,4($s7)
    swc1	$f0,108($sp)
    # Line 496
    lwc1	$f31,12($s5)
    swc1	$f31,112($sp)
    lwc1	$f29,16($s5)
    swc1	$f29,116($sp)
    # Line 497
    lwc1	$f27,20($s5)
    swc1	$f27,120($sp)
    lw	$s4,8($s5)
    mtc1	$s4,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,124($sp)
    # Line 498
    lwc1	$f23,0($s5)
    # Line 501
    ld	$a4,1192($sp)
    # Line 498
    swc1	$f23,128($sp)
    # Line 501
    slti	$a4,$a4,3
    # Line 498
    lwc1	$f21,4($s5)
    # Line 481
    sw	$a5,616($sp)
    # Line 482
    li	$s4,432
    # Line 501
    bnez	$a4,.L0d98bff0
    # Line 498
    swc1	$f21,132($sp)
    # Line 501
    ld	$a2,1200($sp)
    sll	$a1,$a2,0x2
    ld	$a0,1040($sp)
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x3
    lw	$a2,84($s6)
    addu	$a0,$a0,$a1
    lw	$a1,36($a0)
    bne	$a1,$a2,.L0d98bff0
    nop
    lw	$a3,40($a0)
    lw	$a4,88($s6)
    bne	$a3,$a4,.L0d98bff0
    nop
    lw	$ra,92($s6)
    lw	$a5,44($a0)
    sd	$s6,1376($sp)
    bne	$a5,$ra,.L0d98bff0
    sd	$s5,1384($sp)
    ld	$a5,1376($sp)
    lwc1	$f27,84($a5)
    swc1	$f27,136($sp)
    lwc1	$f25,88($a5)
    swc1	$f25,140($sp)
    lwc1	$f23,92($a5)
    swc1	$f23,144($sp)
    lw	$at,80($a5)
    mtc1	$at,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,148($sp)
    lwc1	$f19,72($a5)
    ld	$ra,1384($sp)
    swc1	$f19,152($sp)
    lui	$s5,0x1fff
    lui	$s6,0xff
    lwc1	$f18,76($a5)
    ori	$s6,$s6,0xffff
    li	$at,1
    sd	$at,1160($sp)
    ori	$s5,$s5,0xffff
    b	.L0d98c030
    swc1	$f18,156($sp)
.L0d98bff0:
    sd	$zero,1160($sp)
    sd	$s5,1384($sp)
    sd	$s6,1376($sp)
    mtc1	$zero,$f29
    ld	$ra,1384($sp)
    ld	$a5,1376($sp)
    swc1	$f29,156($sp)
    swc1	$f29,152($sp)
    swc1	$f29,148($sp)
    swc1	$f29,144($sp)
    lui	$s5,0x1fff
    lui	$s6,0xff
    swc1	$f29,140($sp)
    ori	$s6,$s6,0xffef
    ori	$s5,$s5,0xffcf
    swc1	$f29,136($sp)
.L0d98c030:
    # Line 502
    ld	$at,1168($sp)
    slti	$at,$at,4
    bnez	$at,.L0d98c0c8
    ld	$a1,1192($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$v1,108($s7)
    addu	$a0,$a5,$a0
    lw	$v0,36($a0)
    bne	$v0,$v1,.L0d98c0c8
    nop
    lw	$a2,40($a0)
    lw	$a3,112($s7)
    bne	$a2,$a3,.L0d98c0c8
    nop
    lw	$a4,44($a0)
    lw	$at,116($s7)
    bne	$a4,$at,.L0d98c0c8
    nop
    lwc1	$f4,108($s7)
    swc1	$f4,160($sp)
    lwc1	$f3,112($s7)
    swc1	$f3,164($sp)
    lwc1	$f2,116($s7)
    swc1	$f2,168($sp)
    lw	$v1,104($s7)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,172($sp)
    lwc1	$f0,96($s7)
    li	$v0,1
    sd	$v0,1048($sp)
    swc1	$f0,176($sp)
    lwc1	$f31,100($s7)
    sb	$v0,620($sp)
    b	.L0d98c0fc
    swc1	$f31,180($sp)
.L0d98c0c8:
    sb	$zero,620($sp)
    mtc1	$zero,$f5
    sd	$zero,1048($sp)
    swc1	$f5,180($sp)
    swc1	$f5,176($sp)
    swc1	$f5,172($sp)
    swc1	$f5,168($sp)
    li	$a0,-33
    li	$a1,-193
    swc1	$f5,164($sp)
    and	$s5,$s5,$a1
    and	$s6,$s6,$a0
    swc1	$f5,160($sp)
.L0d98c0fc:
    # Line 503
    ld	$a2,1120($sp)
    slti	$a2,$a2,3
    bnez	$a2,.L0d98c198
    mtc1	$zero,$f12
    ld	$a1,1168($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$a4,84($ra)
    addu	$a0,$s7,$a0
    lw	$a3,36($a0)
    bne	$a3,$a4,.L0d98c198
    mtc1	$zero,$f12
    lw	$a2,40($a0)
    lw	$a3,88($ra)
    bne	$a2,$a3,.L0d98c198
    mtc1	$zero,$f12
    lw	$a4,44($a0)
    lw	$at,92($ra)
    bne	$a4,$at,.L0d98c198
    mtc1	$zero,$f12
    lwc1	$f11,84($ra)
    swc1	$f11,184($sp)
    lwc1	$f10,88($ra)
    swc1	$f10,188($sp)
    lwc1	$f9,92($ra)
    swc1	$f9,192($sp)
    lw	$v1,80($ra)
    mtc1	$v1,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,196($sp)
    lwc1	$f7,72($ra)
    swc1	$f7,200($sp)
    lwc1	$f6,76($ra)
    li	$v0,1
    sd	$v0,1208($sp)
    b	.L0d98c1c4
    swc1	$f6,204($sp)
    mtc1	$zero,$f12
.L0d98c198:
    sd	$zero,1208($sp)
    swc1	$f12,204($sp)
    swc1	$f12,200($sp)
    swc1	$f12,196($sp)
    swc1	$f12,192($sp)
    li	$a0,-65
    li	$a1,-769
    swc1	$f12,188($sp)
    and	$s5,$s5,$a1
    and	$s6,$s6,$a0
    swc1	$f12,184($sp)
.L0d98c1c4:
    # Line 504
    ld	$a2,1200($sp)
    slti	$a2,$a2,4
    bnez	$a2,.L0d98c26c
    ld	$a1,1120($sp)
    sll	$a0,$a1,0x2
    ld	$a4,1040($sp)
    subu	$a0,$a0,$a1
    sll	$a0,$a0,0x3
    lw	$a4,108($a4)
    addu	$a0,$ra,$a0
    lw	$a3,36($a0)
    bne	$a3,$a4,.L0d98c26c
    ld	$a3,1040($sp)
    lw	$a2,40($a0)
    lw	$a3,112($a3)
    bne	$a2,$a3,.L0d98c26c
    ld	$at,1040($sp)
    lw	$a4,44($a0)
    lw	$at,116($at)
    bne	$a4,$at,.L0d98c26c
    ld	$a0,1040($sp)
    lwc1	$f18,108($a0)
    addiu	$v0,$sp,40
    swc1	$f18,168($v0)
    lwc1	$f17,112($a0)
    swc1	$f17,172($v0)
    lwc1	$f16,116($a0)
    swc1	$f16,176($v0)
    lw	$a1,104($a0)
    mtc1	$a1,$f15
    cvt.s.w	$f15,$f15
    swc1	$f15,180($v0)
    lwc1	$f14,96($a0)
    li	$v1,1
    sd	$v1,1112($sp)
    swc1	$f14,184($v0)
    lwc1	$f13,100($a0)
    li	$a2,48
    sb	$v1,621($sp)
    addiu	$a0,$v0,192
    b	.L0d98c2ac
    swc1	$f13,188($v0)
.L0d98c26c:
    sb	$zero,621($sp)
    mtc1	$zero,$f19
    sd	$zero,1112($sp)
    addiu	$a3,$sp,40
    swc1	$f19,188($a3)
    swc1	$f19,184($a3)
    swc1	$f19,180($a3)
    li	$a2,48
    li	$at,-3073
    swc1	$f19,176($a3)
    li	$a4,-129
    and	$s5,$s5,$at
    swc1	$f19,172($a3)
    addiu	$a0,$a3,192
    and	$s6,$s6,$a4
    swc1	$f19,168($a3)
.L0d98c2ac:
    # Line 506
    ld	$v1,1160($sp)
    ld	$a1,1048($sp)
    li	$a3,1
    sltu	$v1,$zero,$v1
    sd	$v1,1128($sp)
    sltu	$a1,$zero,$a1
    sd	$a1,1144($sp)
    sll	$v0,$v1,0x2
    addu	$a1,$v1,$a1
    subu	$v0,$v0,$v1
    ld	$v1,1192($sp)
    li	$a4,4
    li	$at,4
    sll	$v0,$v0,0x3
    subu	$v1,$v1,$a1
    addu	$a5,$v0,$a5
    addiu	$v1,$v1,-1
    addiu	$a5,$a5,72
    slt	$at,$at,$v1
    sd	$v0,728($sp)
    li	$v0,16
    movn	$v1,$a4,$at
    subu	$a4,$a4,$v1
    sllv	$a3,$a3,$v1
    sd	$a4,736($sp)
    li	$a4,-1
    subu	$v0,$v0,$a3
    addiu	$a1,$v1,-1
    sll	$a3,$v0,0xc
    sll	$v0,$v0,0x8
    nor	$a3,$a3,$zero
    sd	$v1,704($sp)
    nor	$v0,$v0,$zero
    and	$s5,$s5,$a3
    sw	$v1,-24316($s8)
    beq	$a1,$a4,.L0d98c4b4
    and	$s6,$s6,$v0
    ld	$a3,704($sp)
    sd	$a3,696($sp)
    andi	$a3,$a3,0x3
    beqz	$a3,.L0d98c3ac
    sd	$a3,1008($sp)
.L0d98c354:
    lwc1	$f31,12($a5)
    swc1	$f31,0($a0)
    lwc1	$f29,16($a5)
    swc1	$f29,4($a0)
    lwc1	$f27,20($a5)
    swc1	$f27,8($a0)
    lw	$v1,8($a5)
    mtc1	$v1,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,12($a0)
    lwc1	$f23,0($a5)
    ld	$v0,1008($sp)
    swc1	$f23,16($a0)
    addiu	$a1,$a1,-1
    addiu	$v0,$v0,-1
    lwc1	$f21,4($a5)
    addiu	$a5,$a5,24
    addiu	$a0,$a0,24
    sd	$v0,1008($sp)
    addiu	$a2,$a2,6
    bnez	$v0,.L0d98c354
    swc1	$f21,-4($a0)
.L0d98c3ac:
    ld	$a3,696($sp)
    sra	$a3,$a3,0x2
    beqz	$a3,.L0d98c4b4
    nop
    nop
.L0d98c3c0:
    lwc1	$f27,12($a5)
    swc1	$f27,0($a0)
    lwc1	$f25,16($a5)
    swc1	$f25,4($a0)
    lwc1	$f23,20($a5)
    swc1	$f23,8($a0)
    lw	$a3,8($a5)
    mtc1	$a3,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,12($a0)
    lwc1	$f19,0($a5)
    swc1	$f19,16($a0)
    lwc1	$f18,4($a5)
    swc1	$f18,20($a0)
    lwc1	$f17,36($a5)
    swc1	$f17,24($a0)
    lwc1	$f16,40($a5)
    swc1	$f16,28($a0)
    lwc1	$f15,44($a5)
    swc1	$f15,32($a0)
    lw	$v1,32($a5)
    mtc1	$v1,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,36($a0)
    lwc1	$f13,24($a5)
    swc1	$f13,40($a0)
    lwc1	$f12,28($a5)
    swc1	$f12,44($a0)
    lwc1	$f11,60($a5)
    swc1	$f11,48($a0)
    lwc1	$f10,64($a5)
    swc1	$f10,52($a0)
    lwc1	$f9,68($a5)
    swc1	$f9,56($a0)
    lw	$v0,56($a5)
    mtc1	$v0,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,60($a0)
    lwc1	$f7,48($a5)
    swc1	$f7,64($a0)
    lwc1	$f6,52($a5)
    swc1	$f6,68($a0)
    lwc1	$f5,84($a5)
    swc1	$f5,72($a0)
    lwc1	$f4,88($a5)
    swc1	$f4,76($a0)
    lwc1	$f3,92($a5)
    swc1	$f3,80($a0)
    lw	$at,80($a5)
    mtc1	$at,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,84($a0)
    lwc1	$f1,72($a5)
    swc1	$f1,88($a0)
    addiu	$a1,$a1,-4
    lwc1	$f0,76($a5)
    addiu	$a5,$a5,96
    addiu	$a0,$a0,96
    addiu	$a2,$a2,24
    bne	$a1,$a4,.L0d98c3c0
    swc1	$f0,-4($a0)
.L0d98c4b4:
    ld	$a1,736($sp)
    addiu	$a1,$a1,-1
    beq	$a1,$a4,.L0d98c50c
    # Line 507
    ld	$a0,1144($sp)
    # Line 506
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
    nop
    nop
    nop
.L0d98c4e0:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    swc1	$f4,12($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,16($a0)
    addiu	$a0,$a0,24
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98c4e0
    addiu	$a2,$a2,6
    # Line 507
    ld	$a0,1144($sp)
.L0d98c50c:
    ld	$a1,1208($sp)
    li	$a5,4
    li	$at,4
    ld	$v0,1168($sp)
    sltu	$a1,$zero,$a1
    sll	$v1,$a0,0x2
    subu	$v1,$v1,$a0
    addu	$a0,$a0,$a1
    sll	$v1,$v1,0x3
    subu	$v0,$v0,$a0
    addu	$s7,$s7,$v1
    addiu	$v0,$v0,-2
    addiu	$s7,$s7,96
    slt	$at,$at,$v0
    li	$v1,1
    movn	$v0,$a5,$at
    li	$at,16
    sllv	$v1,$v1,$v0
    subu	$a5,$a5,$v0
    subu	$at,$at,$v1
    sd	$a1,1024($sp)
    addiu	$a1,$v0,-1
    sll	$v1,$at,0x14
    sll	$at,$at,0x10
    nor	$v1,$v1,$zero
    sd	$v0,720($sp)
    nor	$at,$at,$zero
    and	$s5,$s5,$v1
    sw	$v0,-24308($s8)
    beq	$a1,$a4,.L0d98c708
    and	$s6,$s6,$at
    ld	$at,720($sp)
    sd	$a5,1224($sp)
    andi	$a5,$at,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$at,680($sp)
    beqz	$a5,.L0d98c5f8
    addu	$a0,$a0,$a3
.L0d98c5a8:
    lwc1	$f3,12($s7)
    swc1	$f3,0($a0)
    lwc1	$f2,16($s7)
    swc1	$f2,4($a0)
    lwc1	$f1,20($s7)
    swc1	$f1,8($a0)
    lw	$v0,8($s7)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a0)
    lwc1	$f31,0($s7)
    swc1	$f31,16($a0)
    addiu	$a1,$a1,-1
    addiu	$a5,$a5,-1
    lwc1	$f29,4($s7)
    addiu	$s7,$s7,24
    addiu	$a0,$a0,24
    addiu	$a2,$a2,6
    bnez	$a5,.L0d98c5a8
    swc1	$f29,-4($a0)
.L0d98c5f8:
    ld	$v1,680($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0d98c704
    sd	$s7,640($sp)
    move	$a5,$s7
    nop
.L0d98c610:
    lwc1	$f1,12($a5)
    swc1	$f1,0($a0)
    lwc1	$f0,16($a5)
    swc1	$f0,4($a0)
    lwc1	$f31,20($a5)
    swc1	$f31,8($a0)
    lw	$a3,8($a5)
    mtc1	$a3,$f29
    cvt.s.w	$f29,$f29
    swc1	$f29,12($a0)
    lwc1	$f27,0($a5)
    swc1	$f27,16($a0)
    lwc1	$f25,4($a5)
    swc1	$f25,20($a0)
    lwc1	$f23,36($a5)
    swc1	$f23,24($a0)
    lwc1	$f21,40($a5)
    swc1	$f21,28($a0)
    lwc1	$f19,44($a5)
    swc1	$f19,32($a0)
    lw	$v1,32($a5)
    mtc1	$v1,$f18
    cvt.s.w	$f18,$f18
    swc1	$f18,36($a0)
    lwc1	$f17,24($a5)
    swc1	$f17,40($a0)
    lwc1	$f16,28($a5)
    swc1	$f16,44($a0)
    lwc1	$f15,60($a5)
    swc1	$f15,48($a0)
    lwc1	$f14,64($a5)
    swc1	$f14,52($a0)
    lwc1	$f13,68($a5)
    swc1	$f13,56($a0)
    lw	$v0,56($a5)
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    swc1	$f12,60($a0)
    lwc1	$f11,48($a5)
    swc1	$f11,64($a0)
    lwc1	$f10,52($a5)
    swc1	$f10,68($a0)
    lwc1	$f9,84($a5)
    swc1	$f9,72($a0)
    lwc1	$f8,88($a5)
    swc1	$f8,76($a0)
    lwc1	$f7,92($a5)
    swc1	$f7,80($a0)
    lw	$at,80($a5)
    mtc1	$at,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,84($a0)
    lwc1	$f5,72($a5)
    swc1	$f5,88($a0)
    addiu	$a1,$a1,-4
    lwc1	$f4,76($a5)
    addiu	$a5,$a5,96
    addiu	$a0,$a0,96
    addiu	$a2,$a2,24
    bne	$a1,$a4,.L0d98c610
    swc1	$f4,-4($a0)
.L0d98c704:
    ld	$a5,1224($sp)
.L0d98c708:
    addiu	$a1,$a5,-1
    beq	$a1,$a4,.L0d98c748
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
.L0d98c720:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    swc1	$f4,12($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,16($a0)
    addiu	$a0,$a0,24
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98c720
    addiu	$a2,$a2,6
.L0d98c748:
    # Line 508
    ld	$a1,1024($sp)
    ld	$a3,1112($sp)
    li	$a5,4
    li	$at,4
    ld	$v0,1120($sp)
    sltu	$a3,$zero,$a3
    sll	$v1,$a1,0x2
    subu	$v1,$v1,$a1
    addu	$a1,$a1,$a3
    sll	$v1,$v1,0x3
    subu	$a1,$v0,$a1
    addu	$ra,$ra,$v1
    addiu	$a1,$a1,-1
    addiu	$ra,$ra,72
    slt	$at,$at,$a1
    li	$v1,1
    movn	$a1,$a5,$at
    li	$at,16
    sllv	$v1,$v1,$a1
    subu	$a5,$a5,$a1
    subu	$at,$at,$v1
    addiu	$v0,$a1,-1
    sll	$v1,$at,0x18
    sd	$a3,1136($sp)
    sll	$at,$at,0x14
    nor	$v1,$v1,$zero
    sw	$a1,-24304($s8)
    nor	$at,$at,$zero
    and	$s5,$s5,$v1
    sd	$v0,1120($sp)
    beq	$v0,$a4,.L0d98c934
    and	$s6,$s6,$at
    andi	$s7,$a1,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    beqz	$s7,.L0d98c834
    addu	$a0,$a0,$a3
.L0d98c7dc:
    lwc1	$f7,12($ra)
    swc1	$f7,0($a0)
    lwc1	$f6,16($ra)
    swc1	$f6,4($a0)
    lwc1	$f5,20($ra)
    swc1	$f5,8($a0)
    lw	$v0,8($ra)
    mtc1	$v0,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,12($a0)
    lwc1	$f3,0($ra)
    ld	$at,1120($sp)
    addiu	$ra,$ra,24
    swc1	$f3,16($a0)
    addiu	$s7,$s7,-1
    lwc1	$f2,-20($ra)
    addiu	$a0,$a0,24
    addiu	$at,$at,-1
    sd	$at,1120($sp)
    addiu	$a2,$a2,6
    bnez	$s7,.L0d98c7dc
    swc1	$f2,-4($a0)
.L0d98c834:
    sra	$v1,$a1,0x2
    beqz	$v1,.L0d98c934
    ld	$a1,1120($sp)
.L0d98c840:
    lwc1	$f5,12($ra)
    swc1	$f5,0($a0)
    lwc1	$f4,16($ra)
    swc1	$f4,4($a0)
    lwc1	$f3,20($ra)
    swc1	$f3,8($a0)
    lw	$v1,8($ra)
    mtc1	$v1,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,12($a0)
    lwc1	$f1,0($ra)
    swc1	$f1,16($a0)
    lwc1	$f0,4($ra)
    swc1	$f0,20($a0)
    lwc1	$f31,36($ra)
    swc1	$f31,24($a0)
    lwc1	$f29,40($ra)
    swc1	$f29,28($a0)
    lwc1	$f27,44($ra)
    swc1	$f27,32($a0)
    lw	$v0,32($ra)
    mtc1	$v0,$f25
    cvt.s.w	$f25,$f25
    swc1	$f25,36($a0)
    lwc1	$f23,24($ra)
    swc1	$f23,40($a0)
    lwc1	$f21,28($ra)
    swc1	$f21,44($a0)
    lwc1	$f19,60($ra)
    swc1	$f19,48($a0)
    lwc1	$f18,64($ra)
    swc1	$f18,52($a0)
    lwc1	$f17,68($ra)
    swc1	$f17,56($a0)
    lw	$at,56($ra)
    mtc1	$at,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,60($a0)
    lwc1	$f15,48($ra)
    swc1	$f15,64($a0)
    lwc1	$f14,52($ra)
    swc1	$f14,68($a0)
    lwc1	$f13,84($ra)
    swc1	$f13,72($a0)
    lwc1	$f12,88($ra)
    swc1	$f12,76($a0)
    lwc1	$f11,92($ra)
    swc1	$f11,80($a0)
    lw	$a3,80($ra)
    mtc1	$a3,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,84($a0)
    lwc1	$f9,72($ra)
    swc1	$f9,88($a0)
    addiu	$a1,$a1,-4
    lwc1	$f8,76($ra)
    addiu	$ra,$ra,96
    addiu	$a0,$a0,96
    addiu	$a2,$a2,24
    bne	$a1,$a4,.L0d98c840
    swc1	$f8,-4($a0)
.L0d98c934:
    addiu	$a1,$a5,-1
    beq	$a1,$a4,.L0d98c97c
    # Line 509
    ld	$v1,1136($sp)
    # Line 508
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
.L0d98c950:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    swc1	$f4,12($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,16($a0)
    addiu	$a0,$a0,24
    swc1	$f4,-4($a0)
    bne	$a1,$a4,.L0d98c950
    addiu	$a2,$a2,6
    # Line 509
    ld	$v1,1136($sp)
.L0d98c97c:
    ld	$v0,1128($sp)
    ld	$a5,1040($sp)
    addu	$v0,$v0,$v1
    ld	$v1,728($sp)
    ld	$at,1200($sp)
    li	$ra,16
    addu	$v1,$v1,$a5
    subu	$at,$at,$v0
    li	$a0,4
    addiu	$at,$at,-2
    li	$s7,4
    slt	$a0,$a0,$at
    li	$v0,1
    movn	$at,$s7,$a0
    addiu	$a5,$v1,96
    sllv	$v0,$v0,$at
    subu	$s7,$s7,$at
    subu	$ra,$ra,$v0
    addiu	$a1,$at,-1
    sll	$v0,$ra,0x10
    sll	$ra,$ra,0xc
    nor	$v0,$v0,$zero
    sd	$at,712($sp)
    nor	$ra,$ra,$zero
    and	$s5,$s5,$v0
    sw	$at,-24312($s8)
    beq	$a1,$a4,.L0d98cb64
    and	$s6,$s6,$ra
    ld	$at,712($sp)
    andi	$ra,$at,0x3
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    sd	$at,688($sp)
    beqz	$ra,.L0d98ca58
    addu	$a0,$a0,$a3
.L0d98ca08:
    lwc1	$f11,12($a5)
    swc1	$f11,0($a0)
    lwc1	$f10,16($a5)
    swc1	$f10,4($a0)
    lwc1	$f9,20($a5)
    swc1	$f9,8($a0)
    lw	$v0,8($a5)
    mtc1	$v0,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,12($a0)
    lwc1	$f7,0($a5)
    swc1	$f7,16($a0)
    addiu	$a1,$a1,-1
    addiu	$ra,$ra,-1
    lwc1	$f6,4($a5)
    addiu	$a5,$a5,24
    addiu	$a0,$a0,24
    addiu	$a2,$a2,6
    bnez	$ra,.L0d98ca08
    swc1	$f6,-4($a0)
.L0d98ca58:
    ld	$v1,688($sp)
    sra	$v1,$v1,0x2
    beqz	$v1,.L0d98cb64
    sd	$a5,1040($sp)
    ld	$a5,1040($sp)
    nop
.L0d98ca70:
    lwc1	$f9,12($a5)
    swc1	$f9,0($a0)
    lwc1	$f8,16($a5)
    swc1	$f8,4($a0)
    lwc1	$f7,20($a5)
    swc1	$f7,8($a0)
    lw	$v0,8($a5)
    mtc1	$v0,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,12($a0)
    lwc1	$f5,0($a5)
    swc1	$f5,16($a0)
    lwc1	$f4,4($a5)
    swc1	$f4,20($a0)
    lwc1	$f3,36($a5)
    swc1	$f3,24($a0)
    lwc1	$f2,40($a5)
    swc1	$f2,28($a0)
    lwc1	$f1,44($a5)
    swc1	$f1,32($a0)
    lw	$at,32($a5)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,36($a0)
    lwc1	$f31,24($a5)
    swc1	$f31,40($a0)
    lwc1	$f29,28($a5)
    swc1	$f29,44($a0)
    lwc1	$f27,60($a5)
    swc1	$f27,48($a0)
    lwc1	$f25,64($a5)
    swc1	$f25,52($a0)
    lwc1	$f23,68($a5)
    swc1	$f23,56($a0)
    lw	$ra,56($a5)
    mtc1	$ra,$f21
    cvt.s.w	$f21,$f21
    swc1	$f21,60($a0)
    lwc1	$f19,48($a5)
    swc1	$f19,64($a0)
    lwc1	$f18,52($a5)
    swc1	$f18,68($a0)
    lwc1	$f17,84($a5)
    swc1	$f17,72($a0)
    lwc1	$f16,88($a5)
    swc1	$f16,76($a0)
    lwc1	$f15,92($a5)
    swc1	$f15,80($a0)
    lw	$a3,80($a5)
    mtc1	$a3,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,84($a0)
    lwc1	$f13,72($a5)
    swc1	$f13,88($a0)
    addiu	$a1,$a1,-4
    lwc1	$f12,76($a5)
    addiu	$a5,$a5,96
    addiu	$a0,$a0,96
    addiu	$a2,$a2,24
    bne	$a1,$a4,.L0d98ca70
    swc1	$f12,-4($a0)
.L0d98cb64:
    addiu	$a1,$s7,-1
    beq	$a1,$a4,.L0d98cba8
    # Line 510
    li	$s7,24
    # Line 509
    sll	$a3,$a2,0x2
    addiu	$a0,$sp,40
    mtc1	$zero,$f4
    addu	$a0,$a0,$a3
.L0d98cb80:
    swc1	$f4,0($a0)
    swc1	$f4,4($a0)
    swc1	$f4,8($a0)
    swc1	$f4,12($a0)
    addiu	$a1,$a1,-1
    swc1	$f4,16($a0)
    swc1	$f4,20($a0)
    bne	$a1,$a4,.L0d98cb80
    addiu	$a0,$a0,24
    # Line 510
    li	$s7,24
.L0d98cba8:
    b	.L0d9892c8
    ld	$a0,1160($sp)
.L0d98cbb0:
    # Line 310
    # lw $t9, -28616($gp) # &__glSetError
    move	$s4,$s4
    jal	__glSetError
    li	$a0,1281
    b	.L0d989544
    ld	$ra,1304($sp)
.L0d98cbc8:
    # Line 355
    beqz	$t0,.L0d98cd48
    nop
    sd	$zero,1152($sp)
    b	.L0d9891d4
    sd	$s8,1288($sp)
.L0d98cbdc:
    b	.L0d989838
    # Line 545
    move	$a4,$zero
.L0d98cbe4:
    b	.L0d989848
    move	$a2,$zero
.L0d98cbec:
    b	.L0d989858
    move	$a1,$zero
.L0d98cbf4:
    b	.L0d989868
    move	$a0,$zero
.L0d98cbfc:
    b	.L0d9898a4
    # Line 552
    move	$a4,$zero
.L0d98cc04:
    b	.L0d9898b8
    move	$a2,$zero
.L0d98cc0c:
    b	.L0d9898cc
    move	$a1,$zero
.L0d98cc14:
    b	.L0d9898dc
    move	$a0,$zero
.L0d98cc1c:
    b	.L0d989908
    # Line 558
    move	$a4,$zero
.L0d98cc24:
    b	.L0d98991c
    move	$a2,$zero
.L0d98cc2c:
    b	.L0d989930
    move	$a1,$zero
.L0d98cc34:
    b	.L0d989940
    move	$a0,$zero
.L0d98cc3c:
    b	.L0d989970
    # Line 564
    move	$a2,$zero
.L0d98cc44:
    b	.L0d989984
    move	$a4,$zero
.L0d98cc4c:
    b	.L0d989998
    move	$a0,$zero
.L0d98cc54:
    b	.L0d9899a8
    move	$a1,$zero
.L0d98cc5c:
    b	.L0d9899d8
    # Line 570
    move	$a5,$zero
.L0d98cc64:
    b	.L0d9899ec
    move	$a4,$zero
.L0d98cc6c:
    b	.L0d989a00
    move	$a2,$zero
.L0d98cc74:
    b	.L0d989a14
    move	$a0,$zero
.L0d98cc7c:
    lui	$t0,0x40
    lui	$t1,0x4
    lui	$ra,0x2
    b	.L0d989a80
    # Line 581
    move	$a5,$zero
.L0d98cc90:
    b	.L0d989a90
    move	$a0,$zero
.L0d98cc98:
    b	.L0d989aa4
    move	$a4,$zero
.L0d98cca0:
    b	.L0d989ab4
    move	$a2,$zero
.L0d98cca8:
    b	.L0d989ae4
    # Line 587
    move	$a4,$zero
.L0d98ccb0:
    b	.L0d989af4
    move	$a5,$zero
.L0d98ccb8:
    b	.L0d989b08
    move	$a0,$zero
.L0d98ccc0:
    b	.L0d989b18
    move	$a2,$zero
.L0d98ccc8:
    b	.L0d989b54
    # Line 594
    move	$a4,$zero
.L0d98ccd0:
    b	.L0d989b68
    move	$a5,$zero
.L0d98ccd8:
    b	.L0d989b7c
    move	$a0,$zero
.L0d98cce0:
    b	.L0d989b8c
    move	$a2,$zero
.L0d98cce8:
    b	.L0d989bbc
    # Line 600
    move	$a4,$zero
.L0d98ccf0:
    b	.L0d989bd0
    move	$a2,$zero
.L0d98ccf8:
    b	.L0d989be4
    move	$a0,$zero
.L0d98cd00:
    b	.L0d989bf4
    move	$a5,$zero
.L0d98cd08:
    b	.L0d989c20
    # Line 606
    move	$a2,$zero
.L0d98cd10:
    b	.L0d989c38
    move	$a0,$zero
.L0d98cd18:
    b	.L0d989c4c
    move	$a4,$zero
.L0d98cd20:
    b	.L0d989c5c
    move	$a5,$zero
.L0d98cd28:
    b	.L0d989c88
    # Line 612
    move	$a4,$zero
.L0d98cd30:
    b	.L0d989c9c
    move	$a2,$zero
.L0d98cd38:
    b	.L0d989cb0
    move	$a0,$zero
.L0d98cd40:
    b	.L0d989cc0
    move	$a5,$zero
.L0d98cd48:
    # Line 355
    beqz	$t1,.L0d98cd5c
    nop
    sd	$zero,1152($sp)
    b	.L0d9891d4
    sd	$s8,1288($sp)
.L0d98cd5c:
    beqz	$t3,.L0d98cd70
    nop
    sd	$zero,1152($sp)
    b	.L0d9891d4
    sd	$s8,1288($sp)
.L0d98cd70:
    beqz	$t9,.L0d98cd84
    nop
    sd	$zero,1152($sp)
    b	.L0d9891d4
    sd	$s8,1288($sp)
.L0d98cd84:
    beqz	$t2,.L0d98cd98
    lui	$a5,0x8000
    sd	$zero,1152($sp)
    b	.L0d9891d4
    sd	$s8,1288($sp)
.L0d98cd98:
    move	$a4,$zero
    sd	$s8,1288($sp)
    movz	$a4,$a5,$t8
    b	.L0d9891d4
    sd	$a4,1152($sp)
.end __glkonim_SubdivPatchSGIX

.rdata
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

