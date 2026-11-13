# Source: ../pixel/px_colormatrix.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_colormatrix.c
# Total Functions: 5

.text

# Function: __glGenMatrixSignature
# Declared: Line 45 (Source lines: 46-90)
# Address: 0x0d9b95d0 - 0x0d9b96f0 (Size: 288 bytes, Frame: 16)
.globl __glGenMatrixSignature
.ent __glGenMatrixSignature
__glGenMatrixSignature:
    # Line 46
    move	$t3,$a1
    # Line 54
    sb	$zero,30700($a0)
    # Line 56
    lui	$t0,0x3f80
    li	$t9,1
    # Line 53
    sw	$zero,30692($a0)
    # Line 56
    li	$t8,-1
    li	$v0,2
    sw	$v0,4120($zero)
    move	$t2,$zero
    # Line 46
    addiu	$sp,$sp,-16
    # Line 56
    lw	$at,11812($a0)
    move	$a6,$a0
    sd	$ra,8($sp)
    li	$ra,4
    addiu	$a7,$sp,0
    ori	$at,$at,0x10
    sw	$at,11812($a0)
    # Line 60
    move	$a4,$zero
.L0d9b9618:
    move	$a2,$t3
    sb	$t9,0($a7)
    move	$t1,$zero
    move	$a3,$t2
    # Line 59
    sb	$t8,30696($a6)
.L0d9b962c:
    # Line 60
    lw	$a5,0($a2)
    beqz	$a5,.L0d9b9660
    # Line 62
    addiu	$a2,$a2,16
    # Line 60
    bne	$t0,$a5,.L0d9b96bc
    nop
    beqz	$t1,.L0d9b96d0
    nop
    # Line 77
    sb	$t8,30696($a6)
    # Line 76
    sb	$zero,0($a7)
.L0d9b9650:
    # Line 79
    sllv	$a1,$t9,$a3
    lw	$v1,30692($a0)
    or	$v1,$v1,$a1
    sw	$v1,30692($a0)
.L0d9b9660:
    # Line 62
    addiu	$a4,$a4,1
    bne	$a4,$ra,.L0d9b962c
    addiu	$a3,$a3,4
    # Line 58
    addiu	$a6,$a6,1
    addiu	$t2,$t2,1
    addiu	$t3,$t3,4
    # Line 60
    move	$a4,$zero
    # Line 58
    bne	$t2,$ra,.L0d9b9618
    addiu	$a7,$a7,1
    # Line 88
    lbu	$a2,0($sp)
    beqz	$a2,.L0d9b96e0
    move	$a2,$zero
    lbu	$a3,1($sp)
    beqz	$a3,.L0d9b96e0
    move	$a2,$zero
    lbu	$a4,2($sp)
    beqz	$a4,.L0d9b96e0
    move	$a2,$zero
    lbu	$a5,3($sp)
    beqz	$a5,.L0d9b96e0
    move	$a2,$zero
    b	.L0d9b96e0
    li	$a2,1
.L0d9b96bc:
    # Line 90
    ld	$ra,8($sp)
    # Line 82
    sw	$t8,30692($a0)
    # Line 81
    sb	$zero,30700($a0)
    # Line 90
    jr	$ra
    addiu	$sp,$sp,16
.L0d9b96d0:
    # Line 68
    li	$t1,1
    b	.L0d9b9650
    sb	$a4,30696($a6)
    # Line 88
    move	$a2,$zero
.L0d9b96e0:
    # Line 90
    ld	$ra,8($sp)
    # Line 88
    sb	$a2,30700($a0)
    # Line 90
    jr	$ra
    addiu	$sp,$sp,16
.end __glGenMatrixSignature

# Function: __glSpanColorMatrixSwizzleRGBA
# Declared: Line 93 (Source lines: 95-117)
# Address: 0x0d9b96f0 - 0x0d9b9834 (Size: 324 bytes, Frame: 0)
.globl __glSpanColorMatrixSwizzleRGBA
.ent __glSpanColorMatrixSwizzleRGBA
__glSpanColorMatrixSwizzleRGBA:
    # Line 108
    lb	$t2,30699($a0)
    # Line 110
    lw	$a6,184($a1)
    # Line 106
    lb	$t1,30697($a0)
    # Line 107
    lb	$t3,30698($a0)
    # Line 95
    move	$a7,$a3
    move	$t0,$a2
    # Line 110
    blez	$a6,.L0d9b982c
    # Line 105
    lb	$t8,30696($a0)
    # Line 110
    sll	$a3,$t1,0x2
    addu	$a3,$a3,$t0
    li	$t9,1
    sll	$a4,$t2,0x2
    slt	$a5,$a6,$t9
    addu	$a4,$a4,$a2
    movz	$t9,$a6,$a5
    sll	$a2,$t3,0x2
    andi	$a1,$t9,0x3
    addu	$a2,$a2,$t0
    sll	$a5,$t8,0x2
    beqz	$a1,.L0d9b9784
    addu	$a5,$a5,$t0
.L0d9b9744:
    # Line 111
    lwc1	$f3,0($a5)
    swc1	$f3,0($a7)
    # Line 112
    lwc1	$f2,0($a3)
    swc1	$f2,4($a7)
    # Line 113
    lwc1	$f1,0($a2)
    # Line 110
    addiu	$a6,$a6,-1
    # Line 115
    addiu	$a5,$a5,16
    # Line 113
    swc1	$f1,8($a7)
    # Line 115
    addiu	$a3,$a3,16
    addiu	$a1,$a1,-1
    # Line 114
    lwc1	$f0,0($a4)
    # Line 115
    addiu	$a2,$a2,16
    # Line 114
    addiu	$a7,$a7,16
    # Line 115
    addiu	$a4,$a4,16
    bnez	$a1,.L0d9b9744
    # Line 114
    swc1	$f0,-4($a7)
.L0d9b9784:
    sra	$t0,$t9,0x2
    beqz	$t0,.L0d9b982c
    move	$a1,$a7
.L0d9b9790:
    # Line 111
    lwc1	$f19,0($a5)
    swc1	$f19,0($a1)
    # Line 112
    lwc1	$f18,0($a3)
    swc1	$f18,4($a1)
    # Line 113
    lwc1	$f17,0($a2)
    swc1	$f17,8($a1)
    # Line 114
    lwc1	$f16,0($a4)
    swc1	$f16,12($a1)
    # Line 111
    lwc1	$f15,16($a5)
    swc1	$f15,16($a1)
    # Line 112
    lwc1	$f14,16($a3)
    swc1	$f14,20($a1)
    # Line 113
    lwc1	$f13,16($a2)
    swc1	$f13,24($a1)
    # Line 114
    lwc1	$f12,16($a4)
    swc1	$f12,28($a1)
    # Line 111
    lwc1	$f11,32($a5)
    swc1	$f11,32($a1)
    # Line 112
    lwc1	$f10,32($a3)
    swc1	$f10,36($a1)
    # Line 113
    lwc1	$f9,32($a2)
    swc1	$f9,40($a1)
    # Line 114
    lwc1	$f8,32($a4)
    swc1	$f8,44($a1)
    # Line 111
    lwc1	$f7,48($a5)
    swc1	$f7,48($a1)
    # Line 112
    lwc1	$f6,48($a3)
    swc1	$f6,52($a1)
    # Line 113
    lwc1	$f5,48($a2)
    # Line 115
    addiu	$a5,$a5,64
    # Line 113
    swc1	$f5,56($a1)
    # Line 115
    addiu	$a3,$a3,64
    # Line 110
    addiu	$a6,$a6,-4
    # Line 114
    lwc1	$f4,48($a4)
    # Line 115
    addiu	$a2,$a2,64
    # Line 114
    addiu	$a1,$a1,64
    # Line 115
    addiu	$a4,$a4,64
    # Line 110
    bgtz	$a6,.L0d9b9790
    # Line 114
    swc1	$f4,-4($a1)
.L0d9b982c:
    # Line 117
    jr	$ra
    nop
.end __glSpanColorMatrixSwizzleRGBA

# Function: __glSpanColorMatrixSwizzWithDropRGBA
# Declared: Line 119 (Source lines: 122-148)
# Address: 0x0d9b9840 - 0x0d9b9a38 (Size: 504 bytes, Frame: 0)
.globl __glSpanColorMatrixSwizzWithDropRGBA
.ent __glSpanColorMatrixSwizzWithDropRGBA
__glSpanColorMatrixSwizzWithDropRGBA:
    # Line 132
    lb	$t3,30696($a0)
    # Line 137
    lw	$t8,184($a1)
    # Line 133
    lb	$t0,30697($a0)
    # Line 134
    lb	$t2,30698($a0)
    # Line 122
    move	$a5,$a3
    # Line 135
    lb	$t1,30699($a0)
    # Line 137
    blez	$t8,.L0d9b98f4
    # Line 138
    addiu	$a1,$a5,4
    # Line 137
    li	$t9,1
    mtc1	$zero,$f4
    sll	$a3,$t2,0x2
    sll	$a6,$t0,0x2
    sll	$a7,$t3,0x2
    slt	$a4,$t8,$t9
    addu	$a7,$a7,$a2
    movz	$t9,$t8,$a4
    addu	$a6,$a6,$a2
    andi	$at,$t9,0x1
    addu	$a3,$a3,$a2
    sll	$a4,$t1,0x2
    beqz	$at,.L0d9b98e8
    addu	$a4,$a4,$a2
    bltz	$t3,.L0d9b9a08
    addiu	$t8,$t8,-1
    # Line 138
    lwc1	$f0,0($a7)
    # Line 139
    bltz	$t0,.L0d9b9a14
    # Line 138
    swc1	$f0,0($a5)
.L0d9b98ac:
    # Line 140
    lwc1	$f1,0($a6)
    addiu	$a2,$a1,4
    # Line 141
    bltz	$t2,.L0d9b9a20
    # Line 140
    swc1	$f1,0($a1)
.L0d9b98bc:
    # Line 142
    lwc1	$f2,0($a3)
    addiu	$a1,$a2,4
    # Line 143
    bltz	$t1,.L0d9b9a2c
    # Line 142
    swc1	$f2,0($a2)
.L0d9b98cc:
    # Line 144
    lwc1	$f3,0($a4)
    addiu	$a5,$a1,4
    swc1	$f3,0($a1)
.L0d9b98d8:
    # Line 146
    addiu	$a4,$a4,16
    addiu	$a3,$a3,16
    addiu	$a6,$a6,16
    addiu	$a7,$a7,16
.L0d9b98e8:
    sra	$at,$t9,0x1
    bnez	$at,.L0d9b9988
    # Line 138
    addiu	$a1,$a5,4
.L0d9b98f4:
    # Line 148
    jr	$ra
    nop
    nop
.L0d9b9900:
    # Line 139
    addiu	$a1,$a5,4
    bgez	$t0,.L0d9b999c
    swc1	$f4,0($a5)
.L0d9b990c:
    # Line 141
    swc1	$f4,0($a1)
    bgez	$t2,.L0d9b99ac
    addiu	$a2,$a1,4
.L0d9b9918:
    # Line 143
    swc1	$f4,0($a2)
    bgez	$t1,.L0d9b99bc
    addiu	$a1,$a2,4
.L0d9b9924:
    # Line 145
    addiu	$a5,$a1,4
    # Line 137
    bgez	$t3,.L0d9b99cc
    # Line 145
    swc1	$f4,0($a1)
.L0d9b9930:
    # Line 139
    swc1	$f4,0($a5)
    bgez	$t0,.L0d9b99dc
    addiu	$a1,$a5,4
.L0d9b993c:
    # Line 141
    swc1	$f4,0($a1)
    bgez	$t2,.L0d9b99ec
    addiu	$a2,$a1,4
.L0d9b9948:
    # Line 143
    swc1	$f4,0($a2)
    bltz	$t1,.L0d9b99fc
    addiu	$a1,$a2,4
    nop
    nop
    nop
.L0d9b9960:
    # Line 144
    lwc1	$f5,16($a4)
    addiu	$a5,$a1,4
    swc1	$f5,0($a1)
.L0d9b996c:
    # Line 146
    addiu	$a4,$a4,32
    # Line 137
    addiu	$t8,$t8,-2
    # Line 146
    addiu	$a3,$a3,32
    addiu	$a6,$a6,32
    # Line 137
    blez	$t8,.L0d9b98f4
    # Line 146
    addiu	$a7,$a7,32
    # Line 138
    addiu	$a1,$a5,4
.L0d9b9988:
    # Line 137
    bltz	$t3,.L0d9b9900
    nop
    # Line 138
    lwc1	$f6,0($a7)
    # Line 139
    bltz	$t0,.L0d9b990c
    # Line 138
    swc1	$f6,0($a5)
.L0d9b999c:
    # Line 140
    lwc1	$f7,0($a6)
    addiu	$a2,$a1,4
    # Line 141
    bltz	$t2,.L0d9b9918
    # Line 140
    swc1	$f7,0($a1)
.L0d9b99ac:
    # Line 142
    lwc1	$f8,0($a3)
    addiu	$a1,$a2,4
    # Line 143
    bltz	$t1,.L0d9b9924
    # Line 142
    swc1	$f8,0($a2)
.L0d9b99bc:
    # Line 144
    lwc1	$f9,0($a4)
    addiu	$a5,$a1,4
    # Line 137
    bltz	$t3,.L0d9b9930
    # Line 144
    swc1	$f9,0($a1)
.L0d9b99cc:
    # Line 138
    lwc1	$f10,16($a7)
    addiu	$a1,$a5,4
    # Line 139
    bltz	$t0,.L0d9b993c
    # Line 138
    swc1	$f10,0($a5)
.L0d9b99dc:
    # Line 140
    lwc1	$f11,16($a6)
    addiu	$a2,$a1,4
    # Line 141
    bltz	$t2,.L0d9b9948
    # Line 140
    swc1	$f11,0($a1)
.L0d9b99ec:
    # Line 142
    lwc1	$f12,16($a3)
    addiu	$a1,$a2,4
    # Line 143
    bgez	$t1,.L0d9b9960
    # Line 142
    swc1	$f12,0($a2)
.L0d9b99fc:
    # Line 145
    addiu	$a5,$a1,4
    b	.L0d9b996c
    swc1	$f4,0($a1)
.L0d9b9a08:
    # Line 139
    addiu	$a1,$a5,4
    bgez	$t0,.L0d9b98ac
    swc1	$f4,0($a5)
.L0d9b9a14:
    # Line 141
    swc1	$f4,0($a1)
    bgez	$t2,.L0d9b98bc
    addiu	$a2,$a1,4
.L0d9b9a20:
    # Line 143
    swc1	$f4,0($a2)
    bgez	$t1,.L0d9b98cc
    addiu	$a1,$a2,4
.L0d9b9a2c:
    # Line 145
    addiu	$a5,$a1,4
    b	.L0d9b98d8
    swc1	$f4,0($a1)
.end __glSpanColorMatrixSwizzWithDropRGBA

# Function: __glSpanColorMatrixGeneralRGBA
# Declared: Line 151 (Source lines: 153-192)
# Address: 0x0d9b9a40 - 0x0d9b9c08 (Size: 456 bytes, Frame: 0)
.globl __glSpanColorMatrixGeneralRGBA
.ent __glSpanColorMatrixGeneralRGBA
__glSpanColorMatrixGeneralRGBA:
    # Line 165
    lw	$at,29744($a0)
    # Line 182
    lwc1	$f19,60($at)
    # Line 181
    lwc1	$f7,56($at)
    # Line 180
    lwc1	$f16,52($at)
    # Line 179
    lwc1	$f15,48($at)
    # Line 178
    lwc1	$f13,44($at)
    # Line 177
    lwc1	$f25,40($at)
    # Line 176
    lwc1	$f9,36($at)
    # Line 175
    lwc1	$f12,32($at)
    # Line 174
    lwc1	$f18,28($at)
    # Line 173
    lwc1	$f17,24($at)
    # Line 172
    lwc1	$f14,20($at)
    # Line 171
    lwc1	$f11,16($at)
    # Line 170
    lwc1	$f21,12($at)
    # Line 184
    lw	$t0,184($a1)
    # Line 153
    move	$a5,$a2
    # Line 184
    li	$a4,1
    # Line 169
    lwc1	$f8,8($at)
    # Line 153
    move	$a6,$a3
    # Line 184
    slt	$v1,$t0,$a4
    # Line 168
    lwc1	$f23,4($at)
    # Line 167
    lwc1	$f10,0($at)
    # Line 184
    blez	$t0,.L0d9b9c00
    move	$a7,$t0
    movz	$a4,$t0,$v1
    andi	$v0,$a4,0x1
    beqz	$v0,.L0d9b9b1c
    sra	$a0,$a4,0x1
    # Line 185
    lwc1	$f1,4($a2)
    lwc1	$f6,0($a2)
    # Line 188
    mul.s	$f2,$f14,$f1
    madd.s	$f2,$f2,$f23,$f6
    # Line 187
    mul.s	$f3,$f11,$f1
    madd.s	$f3,$f3,$f10,$f6
    # Line 190
    mul.s	$f0,$f18,$f1
    # Line 185
    lwc1	$f5,8($a2)
    # Line 190
    madd.s	$f0,$f0,$f21,$f6
    # Line 189
    mul.s	$f1,$f17,$f1
    madd.s	$f1,$f1,$f8,$f6
    # Line 190
    madd.s	$f0,$f0,$f13,$f5
    # Line 185
    lwc1	$f4,12($a2)
    # Line 189
    madd.s	$f1,$f1,$f25,$f5
    # Line 187
    madd.s	$f3,$f3,$f12,$f5
    # Line 188
    madd.s	$f2,$f2,$f9,$f5
    # Line 187
    madd.s	$f3,$f3,$f15,$f4
    # Line 188
    madd.s	$f2,$f2,$f16,$f4
    # Line 189
    madd.s	$f1,$f1,$f7,$f4
    # Line 190
    madd.s	$f0,$f0,$f19,$f4
    # Line 187
    swc1	$f3,0($a3)
    # Line 188
    swc1	$f2,4($a3)
    # Line 190
    addiu	$a6,$a3,16
    # Line 189
    swc1	$f1,8($a3)
    # Line 184
    addiu	$a7,$t0,-1
    # Line 185
    addiu	$a5,$a2,16
    # Line 190
    swc1	$f0,12($a3)
.L0d9b9b1c:
    move	$a3,$a6
    move	$a1,$a5
    beqz	$a0,.L0d9b9c00
    move	$a2,$a7
    nop
.L0d9b9b30:
    # Line 185
    lwc1	$f29,4($a1)
    lwc1	$f4,0($a1)
    # Line 187
    mul.s	$f1,$f11,$f29
    madd.s	$f1,$f1,$f10,$f4
    # Line 185
    lwc1	$f3,8($a1)
    # Line 188
    mul.s	$f0,$f14,$f29
    madd.s	$f0,$f0,$f23,$f4
    # Line 185
    lwc1	$f2,12($a1)
    # Line 187
    madd.s	$f1,$f1,$f12,$f3
    # Line 188
    madd.s	$f0,$f0,$f9,$f3
    # Line 187
    madd.s	$f1,$f1,$f15,$f2
    # Line 188
    madd.s	$f0,$f0,$f16,$f2
    # Line 189
    mul.s	$f31,$f17,$f29
    madd.s	$f31,$f31,$f8,$f4
    # Line 190
    mul.s	$f29,$f18,$f29
    madd.s	$f29,$f29,$f21,$f4
    # Line 189
    madd.s	$f31,$f31,$f25,$f3
    # Line 190
    madd.s	$f29,$f29,$f13,$f3
    # Line 189
    madd.s	$f31,$f31,$f7,$f2
    # Line 190
    madd.s	$f29,$f29,$f19,$f2
    # Line 187
    swc1	$f1,0($a3)
    # Line 188
    swc1	$f0,4($a3)
    # Line 189
    swc1	$f31,8($a3)
    # Line 190
    swc1	$f29,12($a3)
    # Line 185
    lwc1	$f5,20($a1)
    lwc1	$f0,16($a1)
    # Line 190
    mul.s	$f4,$f18,$f5
    # Line 187
    mul.s	$f27,$f11,$f5
    # Line 185
    lwc1	$f31,24($a1)
    # Line 187
    madd.s	$f27,$f27,$f10,$f0
    # Line 190
    madd.s	$f4,$f4,$f21,$f0
    # Line 185
    lwc1	$f29,28($a1)
    # Line 187
    madd.s	$f27,$f27,$f12,$f31
    # Line 190
    madd.s	$f4,$f4,$f13,$f31
    # Line 187
    madd.s	$f27,$f27,$f15,$f29
    # Line 188
    mul.s	$f6,$f14,$f5
    madd.s	$f6,$f6,$f23,$f0
    # Line 189
    mul.s	$f5,$f17,$f5
    madd.s	$f5,$f5,$f8,$f0
    # Line 188
    madd.s	$f6,$f6,$f9,$f31
    # Line 189
    madd.s	$f5,$f5,$f25,$f31
    # Line 188
    madd.s	$f6,$f6,$f16,$f29
    # Line 189
    madd.s	$f5,$f5,$f7,$f29
    # Line 190
    madd.s	$f4,$f4,$f19,$f29
    addiu	$a3,$a3,32
    # Line 187
    swc1	$f27,-16($a3)
    # Line 184
    addiu	$a2,$a2,-2
    # Line 188
    swc1	$f6,-12($a3)
    # Line 189
    swc1	$f5,-8($a3)
    # Line 185
    addiu	$a1,$a1,32
    # Line 184
    bgtz	$a2,.L0d9b9b30
    # Line 190
    swc1	$f4,-4($a3)
.L0d9b9c00:
    # Line 192
    jr	$ra
    nop
.end __glSpanColorMatrixGeneralRGBA

# Function: __glSpanPostColorMatrixScaleBiasRGBA
# Declared: Line 194 (Source lines: 196-230)
# Address: 0x0d9b9c10 - 0x0d9b9d98 (Size: 392 bytes, Frame: 0)
.globl __glSpanPostColorMatrixScaleBiasRGBA
.ent __glSpanPostColorMatrixScaleBiasRGBA
__glSpanPostColorMatrixScaleBiasRGBA:
    # Line 211
    lwc1	$f5,724($a0)
    # Line 215
    lwc1	$f12,30808($a0)
    lwc1	$f9,728($a0)
    # Line 219
    lwc1	$f6,30816($a0)
    # Line 221
    lwc1	$f10,30848($a0)
    # Line 217
    lwc1	$f13,30812($a0)
    lwc1	$f8,732($a0)
    # Line 221
    lwc1	$f7,740($a0)
    # Line 219
    lwc1	$f4,736($a0)
    # Line 203
    lw	$a5,184($a1)
    # Line 217
    mul.s	$f8,$f8,$f13
    # Line 210
    lwc1	$f11,720($a0)
    # Line 221
    mul.s	$f7,$f7,$f10
    # Line 196
    move	$a7,$a3
    # Line 209
    lwc1	$f10,716($a0)
    # Line 219
    mul.s	$f4,$f4,$f6
    # Line 196
    move	$a6,$a2
    # Line 208
    lwc1	$f6,712($a0)
    # Line 221
    blez	$a5,.L0d9b9d90
    # Line 215
    mul.s	$f9,$f9,$f12
    andi	$a2,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a2,.L0d9b9cb4
    # Line 221
    move	$a1,$zero
.L0d9b9c70:
    # Line 225
    lwc1	$f15,0($a6)
    madd.s	$f15,$f9,$f15,$f6
    swc1	$f15,0($a7)
    # Line 226
    lwc1	$f14,4($a6)
    madd.s	$f14,$f8,$f14,$f10
    swc1	$f14,4($a7)
    # Line 227
    lwc1	$f13,8($a6)
    madd.s	$f13,$f4,$f13,$f11
    swc1	$f13,8($a7)
    # Line 228
    lwc1	$f12,12($a6)
    madd.s	$f12,$f7,$f12,$f5
    addiu	$a2,$a2,-1
    # Line 224
    addiu	$a1,$a1,1
    # Line 228
    addiu	$a7,$a7,16
    addiu	$a6,$a6,16
    bnez	$a2,.L0d9b9c70
    swc1	$f12,-4($a7)
.L0d9b9cb4:
    move	$a2,$a6
    beqz	$at,.L0d9b9d90
    move	$a3,$a7
.L0d9b9cc0:
    # Line 225
    lwc1	$f13,0($a2)
    madd.s	$f13,$f9,$f13,$f6
    swc1	$f13,0($a3)
    # Line 226
    lwc1	$f12,4($a2)
    madd.s	$f12,$f8,$f12,$f10
    swc1	$f12,4($a3)
    # Line 227
    lwc1	$f3,8($a2)
    madd.s	$f3,$f4,$f3,$f11
    swc1	$f3,8($a3)
    # Line 228
    lwc1	$f2,12($a2)
    madd.s	$f2,$f7,$f2,$f5
    swc1	$f2,12($a3)
    # Line 225
    lwc1	$f1,16($a2)
    madd.s	$f1,$f9,$f1,$f6
    swc1	$f1,16($a3)
    # Line 226
    lwc1	$f0,20($a2)
    madd.s	$f0,$f8,$f0,$f10
    swc1	$f0,20($a3)
    # Line 227
    lwc1	$f31,24($a2)
    madd.s	$f31,$f4,$f31,$f11
    swc1	$f31,24($a3)
    # Line 228
    lwc1	$f29,28($a2)
    madd.s	$f29,$f7,$f29,$f5
    swc1	$f29,28($a3)
    # Line 225
    lwc1	$f27,32($a2)
    madd.s	$f27,$f9,$f27,$f6
    swc1	$f27,32($a3)
    # Line 226
    lwc1	$f25,36($a2)
    madd.s	$f25,$f8,$f25,$f10
    swc1	$f25,36($a3)
    # Line 227
    lwc1	$f23,40($a2)
    madd.s	$f23,$f4,$f23,$f11
    swc1	$f23,40($a3)
    # Line 228
    lwc1	$f21,44($a2)
    madd.s	$f21,$f7,$f21,$f5
    swc1	$f21,44($a3)
    # Line 225
    lwc1	$f19,48($a2)
    madd.s	$f19,$f9,$f19,$f6
    swc1	$f19,48($a3)
    # Line 226
    lwc1	$f18,52($a2)
    madd.s	$f18,$f8,$f18,$f10
    swc1	$f18,52($a3)
    # Line 227
    lwc1	$f17,56($a2)
    madd.s	$f17,$f4,$f17,$f11
    swc1	$f17,56($a3)
    # Line 228
    lwc1	$f16,60($a2)
    madd.s	$f16,$f7,$f16,$f5
    # Line 224
    addiu	$a1,$a1,4
    # Line 228
    addiu	$a3,$a3,64
    addiu	$a2,$a2,64
    # Line 224
    bne	$a5,$a1,.L0d9b9cc0
    # Line 228
    swc1	$f16,-4($a3)
.L0d9b9d90:
    # Line 230
    jr	$ra
    nop
.end __glSpanPostColorMatrixScaleBiasRGBA

