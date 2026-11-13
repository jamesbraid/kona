# Source: ../soft/so_linedraw.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_linedraw.c
# Total Functions: 6

.text

# Function: __glInitLineData
# Declared: Line 33 (Source lines: 34-226)
# Address: 0x0d9e5720 - 0x0d9e5bcc (Size: 1196 bytes, Frame: 0)
.globl __glInitLineData
.ent __glInitLineData
__glInitLineData:
    # Line 49
    sw	$zero,29912($a0)
    # Line 47
    sw	$a2,30008($a0)
    # Line 46
    sw	$a1,30004($a0)
    # Line 48
    lw	$v1,476($a0)
    sw	$v1,30000($a0)
    # Line 52
    lwc1	$f6,132($a1)
    # Line 54
    lwc1	$f10,132($a2)
    # Line 51
    lwc1	$f5,128($a1)
    # Line 53
    lwc1	$f8,128($a2)
    # Line 58
    addiu	$v1,$v1,-1
    mtc1	$v1,$f12
    mtc1	$zero,$f11
    sub.s	$f7,$f10,$f6
    sub.s	$f9,$f8,$f5
    cvt.s.w	$f12,$f12
    lwc1	$f4,3540($a0)
    c.lt.s	$f11,$f9
    # Line 34
    lui	$v0,0xb
    # Line 58
    c.lt.s $f11,$f7
    li	$a5,1
    # Line 34
    addiu	$v0,$v0,-18248
    addu	$at,$t9,$v0
    # Line 58
    movf	$a5,$zero,$fcc1
    bc1f	.L0d9e5860
    mul.s	$f12,$f12,$f4
    beqz	$a5,.L0d9e5aac
    li	$a6,1
    c.lt.s $f7,$f9
    bc1f .L0d9e5aa4
    nop
    # Line 70
    sw	$a6,29944($a0)
.L0d9e579c:
    # Line 80
    trunc.w.s	$f16,$f6
    cvt.s.w	$f16,$f16
    sub.s	$f16,$f6,$f16
    # Line 77
    trunc.w.s	$f13,$f5
    # Line 80
    sub.s	$f16,$f16,$f4
    # Line 78
    trunc.w.s	$f14,$f8
    # Line 77
    mfc1	$a5,$f13
    # Line 80
    c.lt.s $f16,$f11
    # Line 74
    sw	$a6,29932($a0)
    # Line 75
    div.s	$f13,$f7,$f9
    # Line 73
    sw	$a6,29936($a0)
    # Line 78
    mfc1	$a4,$f14
    # Line 72
    sw	$zero,29940($a0)
    # Line 77
    move	$a3,$a5
    # Line 80
    bc1f .L0d9e57e0
    mov.s	$f14,$f16
    # Line 81
    neg.s	$f14,$f16
.L0d9e57e0:
    trunc.w.s	$f17,$f5
    # Line 86
    trunc.w.s	$f16,$f10
    # Line 81
    cvt.s.w	$f17,$f17
    # Line 86
    cvt.s.w	$f16,$f16
    # Line 81
    sub.s	$f17,$f5,$f17
    # Line 86
    sub.s	$f16,$f10,$f16
    # Line 81
    add.s	$f17,$f14,$f17
    # Line 86
    sub.s	$f16,$f16,$f4
    # Line 81
    sub.s	$f17,$f17,$f4
    # Line 86
    c.lt.s $f16,$f11
    # Line 81
    c.lt.s $f4,$f17
    # Line 84
    addiu	$a1,$a5,1
    # Line 86
    mov.s	$f7,$f16
    bc1f .L0d9e5820
    movt	$a3,$a1,$fcc4
    # Line 87
    neg.s	$f7,$f16
.L0d9e5820:
    trunc.w.s	$f14,$f8
    cvt.s.w	$f14,$f14
    # Line 92
    mtc1	$a3,$f11
    # Line 87
    sub.s	$f14,$f8,$f14
    add.s	$f14,$f7,$f14
    # Line 92
    cvt.s.w	$f11,$f11
    # Line 87
    sub.s	$f14,$f14,$f4
    c.lt.s $f4,$f14
    # Line 92
    add.s	$f11,$f11,$f4
    # Line 90
    addiu	$a2,$a4,1
    # Line 94
    swc1	$f9,29920($a0)
    movf	$a2,$a4,$fcc6
    # Line 92
    sub.s	$f11,$f11,$f5
    # Line 95
    subu	$a2,$a2,$a3
    b	.L0d9e5940
    sw	$a2,29912($a0)
.L0d9e5860:
    # Line 151
    beqz	$a5,.L0d9e5ac4
    nop
    sub.s	$f15,$f5,$f8
    c.lt.s $f7,$f15
    li	$a6,1
    bc1f .L0d9e598c
    li	$a7,-1
    # Line 183
    sw	$a6,29944($a0)
.L0d9e5880:
    # Line 193
    trunc.w.s	$f16,$f6
    cvt.s.w	$f16,$f16
    # Line 190
    trunc.w.s	$f17,$f5
    # Line 191
    trunc.w.s	$f18,$f8
    # Line 193
    sub.s	$f16,$f6,$f16
    # Line 191
    mfc1	$a4,$f18
    # Line 194
    trunc.w.s	$f18,$f5
    # Line 193
    sub.s	$f16,$f16,$f4
    # Line 194
    cvt.s.w	$f18,$f18
    # Line 185
    sw	$zero,29940($a0)
    # Line 190
    mfc1	$a5,$f17
    # Line 193
    c.lt.s	$f16,$f11
    # Line 187
    sw	$a7,29932($a0)
    # Line 188
    div.s	$f13,$f7,$f15
    # Line 186
    sw	$a7,29936($a0)
    # Line 190
    move	$a3,$a5
    # Line 197
    addiu	$a6,$a5,-1
    # Line 203
    addiu	$a7,$a4,-1
    # Line 194
    sub.s	$f18,$f5,$f18
    # Line 193
    bc1f	.L0d9e58d8
    mov.s	$f14,$f16
    # Line 194
    neg.s	$f14,$f16
.L0d9e58d8:
    # Line 199
    trunc.w.s	$f16,$f10
    cvt.s.w	$f16,$f16
    # Line 194
    add.s	$f17,$f4,$f14
    sub.s	$f17,$f17,$f18
    # Line 199
    sub.s	$f16,$f10,$f16
    # Line 194
    c.lt.s $f4,$f17
    # Line 199
    sub.s	$f16,$f16,$f4
    movt	$a3,$a6,$fcc1
    c.lt.s $f16,$f11
    # Line 205
    mtc1	$a3,$f11
    # Line 199
    mov.s	$f7,$f16
    bc1f .L0d9e5910
    # Line 205
    cvt.s.w	$f11,$f11
    # Line 200
    neg.s	$f7,$f16
.L0d9e5910:
    # Line 205
    add.s	$f11,$f11,$f4
    # Line 200
    trunc.w.s	$f16,$f8
    cvt.s.w	$f16,$f16
    add.s	$f14,$f4,$f7
    sub.s	$f16,$f8,$f16
    sub.s	$f14,$f14,$f16
    c.lt.s $f4,$f14
    # Line 207
    swc1	$f15,29920($a0)
    movf	$a7,$a4,$fcc3
    # Line 205
    sub.s	$f11,$f5,$f11
    # Line 208
    subu	$a7,$a3,$a7
    sw	$a7,29912($a0)
.L0d9e5940:
    # Line 104
    madd.s	$f17,$f6,$f11,$f13
    sub.s	$f17,$f17,$f12
    trunc.w.s	$f18,$f17
    # Line 106
    cvt.s.w	$f23,$f18
    # Line 105
    cvt.d.s	$f19,$f13
    ldc1	$f21,_lit8_41e0000000000000
    # Line 106
    sub.s	$f17,$f17,$f23
    # Line 100
    swc1	$f11,29916($a0)
    # Line 105
    mul.d	$f19,$f19,$f21
    # Line 106
    cvt.d.s	$f17,$f17
    # Line 99
    sw	$a3,29924($a0)
    # Line 98
    sw	$zero,29908($a0)
    # Line 105
    trunc.w.d	$f19,$f19
    # Line 106
    mul.d	$f17,$f17,$f21
    # Line 105
    swc1	$f19,29952($a0)
    # Line 104
    swc1	$f18,29928($a0)
    # Line 106
    trunc.w.d	$f17,$f17
    # Line 226
    jr	$ra
    # Line 106
    swc1	$f17,29948($a0)
.L0d9e598c:
    # Line 212
    sw	$a7,29936($a0)
.L0d9e5990:
    # Line 118
    trunc.w.s	$f15,$f5
    cvt.s.w	$f15,$f15
    sub.s	$f15,$f5,$f15
    # Line 116
    trunc.w.s	$f19,$f10
    # Line 118
    sub.s	$f15,$f15,$f4
    # Line 115
    trunc.w.s	$f18,$f6
    # Line 113
    div.s	$f13,$f9,$f7
    # Line 118
    c.lt.s $f15,$f11
    # Line 112
    sw	$a6,29940($a0)
    # Line 115
    mfc1	$a5,$f18
    # Line 111
    sw	$a6,29944($a0)
    # Line 116
    mfc1	$a4,$f19
    # Line 110
    sw	$zero,29932($a0)
    # Line 115
    move	$a3,$a5
    # Line 118
    bc1f .L0d9e59d4
    mov.s	$f14,$f15
    # Line 119
    neg.s	$f14,$f15
.L0d9e59d4:
    trunc.w.s	$f16,$f6
    # Line 124
    trunc.w.s	$f15,$f8
    # Line 119
    cvt.s.w	$f16,$f16
    # Line 124
    cvt.s.w	$f15,$f15
    # Line 119
    sub.s	$f16,$f6,$f16
    # Line 124
    sub.s	$f15,$f8,$f15
    # Line 119
    add.s	$f16,$f14,$f16
    # Line 124
    sub.s	$f15,$f15,$f4
    # Line 119
    sub.s	$f16,$f16,$f4
    # Line 124
    c.lt.s $f15,$f11
    # Line 119
    c.lt.s $f4,$f16
    # Line 122
    addiu	$t0,$a5,1
    # Line 124
    mov.s	$f9,$f15
    bc1f .L0d9e5a14
    movt	$a3,$t0,$fcc5
    # Line 125
    neg.s	$f9,$f15
.L0d9e5a14:
    trunc.w.s	$f14,$f10
    cvt.s.w	$f14,$f14
    # Line 130
    mtc1	$a3,$f11
    # Line 125
    sub.s	$f14,$f10,$f14
    add.s	$f14,$f9,$f14
    # Line 130
    cvt.s.w	$f11,$f11
    # Line 125
    sub.s	$f14,$f14,$f4
    c.lt.s $f4,$f14
    # Line 130
    add.s	$f11,$f11,$f4
    # Line 128
    addiu	$t1,$a4,1
    # Line 132
    swc1	$f7,29920($a0)
    movf	$t1,$a4,$fcc7
    # Line 130
    sub.s	$f11,$f11,$f6
    # Line 133
    subu	$t1,$t1,$a3
    sw	$t1,29912($a0)
.L0d9e5a50:
    # Line 142
    madd.s	$f15,$f5,$f11,$f13
    sub.s	$f15,$f15,$f12
    trunc.w.s	$f16,$f15
    # Line 144
    cvt.s.w	$f19,$f16
    # Line 143
    cvt.d.s	$f17,$f13
    ldc1	$f18,_lit8_41e0000000000000
    # Line 144
    sub.s	$f15,$f15,$f19
    # Line 138
    swc1	$f11,29916($a0)
    # Line 143
    mul.d	$f17,$f17,$f18
    # Line 144
    cvt.d.s	$f15,$f15
    # Line 137
    sw	$a3,29928($a0)
    # Line 136
    sw	$a6,29908($a0)
    # Line 143
    trunc.w.d	$f17,$f17
    # Line 144
    mul.d	$f15,$f15,$f18
    # Line 143
    swc1	$f17,29952($a0)
    # Line 142
    swc1	$f16,29924($a0)
    # Line 144
    trunc.w.d	$f15,$f15
    # Line 226
    jr	$ra
    # Line 144
    swc1	$f15,29948($a0)
.L0d9e5a9c:
    # Line 226
    jr	$ra
    nop
.L0d9e5aa4:
    # Line 108
    b	.L0d9e5990
    sw	$a6,29936($a0)
.L0d9e5aac:
    sub.s	$f16,$f6,$f10
    c.lt.s	$f16,$f9
    bc1f	.L0d9e5bc4
    li	$a7,-1
    b	.L0d9e579c
    # Line 148
    sw	$a7,29944($a0)
.L0d9e5ac4:
    # Line 133
    c.lt.s $f9,$f7
    # Line 221
    li	$a6,1
    # Line 133
    bc1f .L0d9e5ae0
    # Line 217
    li	$a7,-1
    sub.s	$f15,$f5,$f8
    b	.L0d9e5880
    sw	$a7,29944($a0)
.L0d9e5ae0:
    # Line 220
    c.eq.s $f9,$f7
    bc1f .L0d9e5af8
    # Line 221
    li	$a7,-1
    # Line 220
    c.eq.s $f7,$f11
    bc1t .L0d9e5a9c
    nop
.L0d9e5af8:
    # Line 221
    sub.s	$f16,$f6,$f10
    sw	$a7,29936($a0)
.L0d9e5b00:
    # Line 161
    trunc.w.s	$f15,$f5
    cvt.s.w	$f15,$f15
    # Line 158
    trunc.w.s	$f17,$f6
    # Line 159
    trunc.w.s	$f18,$f10
    # Line 161
    sub.s	$f15,$f5,$f15
    # Line 159
    mfc1	$a4,$f18
    # Line 162
    trunc.w.s	$f18,$f6
    # Line 161
    sub.s	$f15,$f15,$f4
    # Line 162
    cvt.s.w	$f18,$f18
    # Line 155
    sw	$a7,29940($a0)
    # Line 158
    mfc1	$a5,$f17
    # Line 161
    c.lt.s $f15,$f11
    # Line 154
    sw	$a7,29944($a0)
    # Line 156
    div.s	$f13,$f9,$f16
    # Line 153
    sw	$zero,29932($a0)
    # Line 158
    move	$a3,$a5
    # Line 165
    addiu	$t2,$a5,-1
    # Line 171
    addiu	$t3,$a4,-1
    # Line 162
    sub.s	$f18,$f6,$f18
    # Line 161
    bc1f .L0d9e5b58
    mov.s	$f14,$f15
    # Line 162
    neg.s	$f14,$f15
.L0d9e5b58:
    # Line 167
    trunc.w.s	$f15,$f8
    cvt.s.w	$f15,$f15
    # Line 162
    add.s	$f17,$f4,$f14
    sub.s	$f17,$f17,$f18
    # Line 167
    sub.s	$f15,$f8,$f15
    # Line 162
    c.lt.s $f4,$f17
    # Line 167
    sub.s	$f15,$f15,$f4
    movt	$a3,$t2,$fcc5
    c.lt.s $f15,$f11
    # Line 173
    mtc1	$a3,$f11
    # Line 167
    mov.s	$f9,$f15
    bc1f .L0d9e5b90
    # Line 173
    cvt.s.w	$f11,$f11
    # Line 168
    neg.s	$f9,$f15
.L0d9e5b90:
    # Line 173
    add.s	$f11,$f11,$f4
    # Line 168
    trunc.w.s	$f15,$f10
    cvt.s.w	$f15,$f15
    add.s	$f14,$f4,$f9
    sub.s	$f15,$f10,$f15
    sub.s	$f14,$f14,$f15
    c.lt.s $f4,$f14
    # Line 175
    swc1	$f16,29920($a0)
    movf	$t3,$a4,$fcc7
    # Line 173
    sub.s	$f11,$f6,$f11
    # Line 176
    subu	$t3,$a3,$t3
    b	.L0d9e5a50
    sw	$t3,29912($a0)
.L0d9e5bc4:
    # Line 151
    b	.L0d9e5b00
    sw	$a6,29936($a0)
.end __glInitLineData

# Function: __glRenderAliasLine
# Declared: Line 228 (Source lines: 229-377)
# Address: 0x0d9e5bd0 - 0x0d9e5f68 (Size: 920 bytes, Frame: 240)
.globl __glRenderAliasLine
.ent __glRenderAliasLine
__glRenderAliasLine:
    # Line 229
    addiu	$sp,$sp,-112
    sd	$s1,64($sp)
    sd	$ra,48($sp)
    lui	$at,0xb
    sd	$s2,40($sp)
    addiu	$at,$at,-19448
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 236
    # lw $t9, -27912($gp) # &__glInitLineData
    # Line 229
    sd	$s3,32($sp)
    move	$s3,$a2
    move	$s2,$a1
    sd	$s0,56($sp)
    # Line 236
    nop
    # Line 229
    move	$s0,$a0
    # Line 236
    bal __glInitLineData
    # Line 234
    lw	$s1,30492($a0)
    # Line 236
    lw	$v0,29912($s0)
    # Line 244
    lwc1	$f21,29920($s0)
    sdc1	$f22,88($sp)
    # Line 266
    li	$a7,4354
    # Line 244
    andi	$v1,$s1,0x4000
    # Line 236
    beqz	$v0,.L0d9e5f2c
    sdc1	$f20,96($sp)
    # Line 244
    lwc1	$f20,3544($s0)
    # Line 239
    lwc1	$f22,29916($s0)
    # Line 258
    andi	$a3,$s1,0x8000
    # Line 244
    beqz	$v1,.L0d9e5c9c
    div.s	$f20,$f20,$f21
    # Line 251
    lwc1	$f23,136($s2)
    lwc1	$f0,136($s3)
    sub.s	$f0,$f0,$f23
    mul.s	$f0,$f20,$f0
    # Line 253
    madd.s	$f23,$f23,$f22,$f0
    # Line 257
    trunc.w.s	$f2,$f0
    # Line 253
    trunc.l.s	$f23,$f23
    # Line 257
    mfc1	$a2,$f2
    # Line 253
    lbu	$a1,30576($s0)
    dmfc1	$a0,$f23
    # Line 258
    sll	$a2,$a2,0x5
    # Line 253
    sll	$a0,$a0,0x0
    beqz	$a1,.L0d9e5c94
    sw	$a0,30260($s0)
    # Line 255
    lwc1	$f1,30544($s0)
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f1
    sll	$a1,$a1,0x0
    addu	$a1,$a1,$a0
    sw	$a1,30260($s0)
.L0d9e5c94:
    # Line 257
    swc1	$f2,30380($s0)
    # Line 258
    sw	$a2,30384($s0)
.L0d9e5c9c:
    beqz	$a3,.L0d9e5cb0
    # Line 266
    andi	$a5,$s1,0x1000
    # Line 258
    lbu	$a4,29904($s0)
    beqz	$a4,.L0d9e5f54
.L0d9e5cac:
    # Line 266
    andi	$a5,$s1,0x1000
.L0d9e5cb0:
    beqz	$a5,.L0d9e5d30
    # Line 287
    andi	$t0,$s1,0x8
    # Line 266
    lw	$a6,1912($s0)
    bne	$a6,$a7,.L0d9e5ce4
    nop
    # Line 278
    lwc1	$f5,104($s2)
    swc1	$f5,29996($s0)
    # Line 279
    lwc1	$f7,104($s2)
    lwc1	$f6,104($s3)
    sub.s	$f6,$f6,$f7
    mul.s	$f6,$f20,$f6
    b	.L0d9e5d24
    swc1	$f6,30488($s0)
.L0d9e5ce4:
    # Line 282
    lw	$t9,12592($s0)
    move	$a0,$s0
    jal	__glInitLineData
    move	$a1,$s2
    # Line 283
    lw	$t9,12592($s0)
    # Line 282
    sdc1	$f0,0($sp)
    # Line 283
    move	$a0,$s0
    # Line 282
    sdc1	$f0,80($sp)
    # Line 283
    jalr	$t9
    move	$a1,$s3
    # Line 285
    ldc1	$f9,0($sp)
    sub.s	$f6,$f0,$f9
    ldc1	$f5,80($sp)
    # Line 284
    swc1	$f9,29996($s0)
    # Line 285
    mul.s	$f6,$f20,$f6
    swc1	$f6,30488($s0)
.L0d9e5d24:
    # Line 287
    madd.s	$f7,$f5,$f22,$f6
    swc1	$f7,30300($s0)
    andi	$t0,$s1,0x8
.L0d9e5d30:
    beqz	$t0,.L0d9e5e88
    # Line 336
    andi	$t1,$s1,0x2
    # Line 305
    lwc1	$f0,52($s3)
    lwc1	$f25,52($s2)
    # Line 296
    lwc1	$f18,140($s2)
    # Line 297
    lwc1	$f29,140($s3)
    # Line 306
    lwc1	$f23,56($s2)
    # Line 305
    mul.s	$f25,$f25,$f18
    # Line 304
    lwc1	$f27,48($s2)
    # Line 305
    msub.s	$f25,$f25,$f0,$f29
    # Line 304
    lwc1	$f31,48($s3)
    # Line 306
    mul.s	$f23,$f23,$f18
    # Line 303
    lwc1	$f21,60($s3)
    # Line 302
    lwc1	$f16,60($s2)
    # Line 304
    mul.s	$f27,$f27,$f18
    msub.s	$f27,$f27,$f31,$f29
    # Line 306
    lwc1	$f31,56($s3)
    # Line 303
    mul.s	$f21,$f21,$f29
    sdc1	$f21,24($sp)
    # Line 310
    nmsub.s	$f21,$f21,$f16,$f18
    # Line 306
    msub.s	$f23,$f23,$f31,$f29
    # Line 305
    mul.s	$f25,$f20,$f25
    # Line 304
    mul.s	$f27,$f20,$f27
    # Line 308
    swc1	$f25,30440($s0)
    # Line 307
    swc1	$f27,30436($s0)
    # Line 310
    mul.s	$f21,$f20,$f21
    swc1	$f21,30448($s0)
    # Line 306
    mul.s	$f23,$f20,$f23
    # Line 309
    swc1	$f23,30444($s0)
    # Line 311
    lwc1	$f29,48($s2)
    mul.s	$f27,$f22,$f27
    madd.s	$f27,$f27,$f29,$f18
    swc1	$f27,30280($s0)
    # Line 312
    lwc1	$f27,52($s2)
    mul.s	$f25,$f22,$f25
    madd.s	$f25,$f25,$f27,$f18
    swc1	$f25,30284($s0)
    # Line 313
    lwc1	$f25,56($s2)
    mul.s	$f23,$f22,$f23
    madd.s	$f23,$f23,$f25,$f18
    swc1	$f23,30288($s0)
    # Line 314
    lwc1	$f23,60($s2)
    mul.s	$f21,$f21,$f22
    madd.s	$f21,$f21,$f23,$f18
    # Line 316
    lwc1	$f17,3544($s0)
    # Line 314
    swc1	$f21,30292($s0)
    # Line 316
    lwc1	$f19,60($s2)
    div.s	$f17,$f17,$f19
    # Line 317
    lw	$t9,12572($s0)
    lwc1	$f15,56($s2)
    lwc1	$f14,52($s2)
    # Line 302
    mul.s	$f16,$f16,$f18
    # Line 317
    lwc1	$f13,48($s2)
    mul.s	$f15,$f15,$f17
    mul.s	$f14,$f14,$f17
    move	$a0,$s0
    # Line 302
    sdc1	$f16,8($sp)
    # Line 317
    jalr	$t9
    mul.s	$f13,$f13,$f17
    ldc1	$f19,8($sp)
    mul.s	$f19,$f0,$f19
    # Line 323
    swc1	$f19,180($s2)
    # Line 325
    lwc1	$f18,60($s3)
    lwc1	$f17,3544($s0)
    div.s	$f17,$f17,$f18
    # Line 326
    lwc1	$f13,48($s3)
    lwc1	$f15,56($s3)
    lwc1	$f14,52($s3)
    lw	$t9,12572($s0)
    mul.s	$f15,$f15,$f17
    ldc1	$f16,24($sp)
    mul.s	$f14,$f14,$f17
    move	$a0,$s0
    # Line 317
    sdc1	$f19,16($sp)
    # Line 326
    jalr	$t9
    mul.s	$f13,$f13,$f17
    # Line 335
    ldc1	$f25,24($sp)
    ldc1	$f21,16($sp)
    msub.s	$f23,$f21,$f0,$f25
    mul.s	$f23,$f20,$f23
    # Line 336
    madd.s	$f21,$f21,$f22,$f23
    # Line 332
    mul.s	$f25,$f0,$f25
    swc1	$f25,180($s3)
    # Line 335
    swc1	$f23,30452($s0)
    # Line 336
    swc1	$f21,30296($s0)
    andi	$t1,$s1,0x2
.L0d9e5e88:
    # Line 362
    andi	$t3,$s1,0x1
    # Line 336
    beqz	$t1,.L0d9e5ef4
    lw	$a0,8($s3)
    # Line 340
    lw	$a1,8($s2)
    # Line 347
    lwc1	$f0,0($a0)
    lwc1	$f1,0($a1)
    lbu	$t2,3220($s0)
    sub.s	$f0,$f0,$f1
    # Line 351
    lwc1	$f4,12($a0)
    # Line 352
    lwc1	$f5,4($a1)
    # Line 347
    beqz	$t2,.L0d9e5eec
    mul.s	$f0,$f20,$f0
    # Line 350
    lwc1	$f6,8($a1)
    # Line 351
    lwc1	$f7,12($a1)
    # Line 350
    lwc1	$f3,8($a0)
    # Line 352
    lwc1	$f2,4($a0)
    # Line 351
    sub.s	$f4,$f4,$f7
    # Line 350
    sub.s	$f3,$f3,$f6
    # Line 352
    sub.s	$f2,$f2,$f5
    # Line 351
    mul.s	$f4,$f20,$f4
    # Line 350
    mul.s	$f3,$f20,$f3
    # Line 354
    swc1	$f4,30352($s0)
    # Line 352
    mul.s	$f2,$f20,$f2
    # Line 353
    swc1	$f3,30348($s0)
    # Line 352
    swc1	$f2,30344($s0)
.L0d9e5eec:
    # Line 356
    swc1	$f0,30340($s0)
    # Line 357
    lw	$a0,8($s2)
.L0d9e5ef4:
    # Line 369
    lwc1	$f8,4($a0)
    # Line 367
    lwc1	$f9,8($a0)
    # Line 362
    beqz	$t3,.L0d9e5f14
    lwc1	$f0,0($a0)
    # Line 368
    lwc1	$f10,12($a0)
    # Line 369
    swc1	$f8,30268($s0)
    # Line 370
    swc1	$f9,30272($s0)
    # Line 371
    swc1	$f10,30276($s0)
.L0d9e5f14:
    # Line 376
    lw	$t9,12436($s0)
    # Line 373
    swc1	$f0,30264($s0)
    # Line 375
    lw	$t8,29912($s0)
    # Line 376
    move	$a0,$s0
    jalr	$t9
    # Line 375
    sw	$t8,30304($s0)
.L0d9e5f2c:
    ld	$s3,32($sp)
    ld	$s2,40($sp)
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    ld	$ra,48($sp)
    ldc1	$f20,96($sp)
    ldc1	$f22,88($sp)
    # Line 377
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9e5f54:
    # Line 266
    li	$t9,1
    sb	$t9,29904($s0)
    # Line 265
    sw	$zero,29900($s0)
    # Line 266
    b	.L0d9e5cac
    # Line 264
    sw	$zero,29896($s0)
.end __glRenderAliasLine

# Function: __glRenderFlatFogLine
# Declared: Line 379 (Source lines: 380-395)
# Address: 0x0d9e5f70 - 0x0d9e602c (Size: 188 bytes, Frame: 224)
.globl __glRenderFlatFogLine
.ent __glRenderFlatFogLine
__glRenderFlatFogLine:
    # Line 380
    addiu	$sp,$sp,-96
    sd	$s8,48($sp)
    sd	$s0,72($sp)
    move	$s0,$a2
    # Line 384
    lw	$a2,8($a2)
    # Line 380
    sd	$ra,32($sp)
    lui	$at,0xb
    sd	$gp,56($sp)
    addiu	$at,$at,-20376
    addu	$gp,$t9,$at
    # Line 384
    lw	$t9,12588($a0)
    # Line 380
    sd	$s1,40($sp)
    move	$s1,$a0
    sd	$s2,80($sp)
    move	$s2,$a1
    # Line 384
    nop
    addiu	$a1,$sp,0
    jalr	$t9
    lwc1	$f15,176($s2)
    # Line 385
    lw	$t9,12588($s1)
    move	$a0,$s1
    lwc1	$f15,176($s0)
    lw	$a2,8($s0)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 387
    lw	$v1,8($s0)
    # Line 386
    lw	$s8,8($s2)
    # Line 388
    sw	$sp,8($s2)
    # Line 389
    addiu	$v0,$sp,16
    sw	$v0,8($s0)
    # Line 391
    lw	$t9,12532($s1)
    move	$a2,$s0
    move	$a1,$s2
    move	$a0,$s1
    jalr	$t9
    # Line 387
    sd	$v1,64($sp)
    ld	$s1,40($sp)
    # Line 395
    ld	$gp,56($sp)
    # Line 393
    sw	$s8,8($s2)
    # Line 395
    ld	$s2,80($sp)
    ld	$s8,48($sp)
    ld	$ra,32($sp)
    # Line 394
    ld	$a0,64($sp)
    sw	$a0,8($s0)
    # Line 395
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glRenderFlatFogLine

# Function: __glInitAALineData
# Declared: Line 408 (Source lines: 409-575)
# Address: 0x0d9e6030 - 0x0d9e651c (Size: 1260 bytes, Frame: 240)
.globl __glInitAALineData
.ent __glInitAALineData
__glInitAALineData:
    # Line 424
    sw	$a2,30008($a0)
    # Line 423
    sw	$a1,30004($a0)
    # Line 429
    lwc1	$f11,132($a2)
    # Line 428
    lwc1	$f9,128($a2)
    # Line 409
    addiu	$sp,$sp,-112
    sdc1	$f24,40($sp)
    # Line 426
    lwc1	$f24,128($a1)
    # Line 409
    sdc1	$f26,56($sp)
    # Line 427
    lwc1	$f26,132($a1)
    # Line 409
    sdc1	$f22,32($sp)
    # Line 433
    sub.s	$f22,$f9,$f24
    # Line 409
    sdc1	$f20,48($sp)
    # Line 433
    sub.s	$f20,$f11,$f26
    mul.s	$f8,$f22,$f22
    madd.s	$f8,$f8,$f20,$f20
    sqrt.s	$f8,$f8
    lwc1	$f6,3544($a0)
    div.s	$f6,$f6,$f8
    sd	$gp,88($sp)
    # Line 438
    mtc1	$zero,$f12
    # Line 409
    sd	$s0,80($sp)
    # Line 434
    swc1	$f8,30012($a0)
    # Line 435
    mul.s	$f4,$f22,$f6
    # Line 409
    lui	$at,0xb
    # Line 438
    c.lt.s	$f12,$f22
    swc1	$f4,30028($a0)
    # Line 436
    mul.s	$f5,$f20,$f6
    # Line 438
    li	$a4,1
    # Line 409
    addiu	$at,$at,-20568
    # Line 438
    c.lt.s $f12,$f20
    # Line 436
    swc1	$f5,30020($a0)
    # Line 409
    move	$s0,$a0
    addu	$gp,$t9,$at
    # Line 435
    swc1	$f4,30016($a0)
    # Line 437
    neg.s	$f10,$f5
    # Line 438
    movf	$a4,$zero,$fcc1
    madd.s	$f7,$f4,$f20,$f6
    bc1f	.L0d9e617c
    # Line 437
    swc1	$f10,30024($a0)
    # Line 438
    li	$a0,1
    beqz	$a4,.L0d9e63e4
    nmsub.s	$f9,$f4,$f20,$f6
    # Line 443
    c.lt.s $f20,$f22
    swc1	$f9,30044($s0)
    bc1f .L0d9e63d4
    # Line 442
    swc1	$f7,30036($s0)
    # Line 445
    sw	$a0,29944($s0)
    sdc1	$f8,24($sp)
    sd	$ra,96($sp)
.L0d9e60f4:
    # Line 452
    div.s	$f13,$f20,$f22
    # Line 456
    swc1	$f22,29920($s0)
    # Line 450
    swc1	$f4,30032($s0)
    # Line 454
    trunc.w.s	$f11,$f24
    # Line 449
    sw	$a0,29932($s0)
    # Line 451
    swc1	$f10,30040($s0)
    # Line 454
    cvt.s.w	$f9,$f11
    lwc1	$f10,3540($s0)
    # Line 448
    sw	$a0,29936($s0)
    # Line 447
    sw	$zero,29940($s0)
    # Line 454
    sdc1	$f10,8($sp)
    add.s	$f9,$f9,$f10
    # Line 457
    # lw $t9, -18476($gp) # &ceilf
    # Line 454
    mfc1	$v0,$f11
    sd	$v0,64($sp)
    sub.s	$f9,$f9,$f24
    sdc1	$f9,16($sp)
    # Line 457
    mov.s	$f12,$f22
    jal	ceilf
    # Line 452
    sdc1	$f13,0($sp)
    # Line 459
    ldc1	$f13,24($sp)
    # Line 457
    lwc1	$f11,_lit_3f800000
    # Line 459
    lwc1	$f12,472($s0)
    # lw $t9, -18476($gp) # &ceilf
    # Line 457
    add.s	$f11,$f0,$f11
    # Line 459
    mul.s	$f12,$f12,$f13
    # Line 457
    trunc.w.s	$f11,$f11
    # Line 459
    div.s	$f12,$f12,$f22
    jal	ceilf
    # Line 457
    swc1	$f11,29912($s0)
    ld	$ra,96($sp)
    ld	$a0,64($sp)
    # Line 459
    b	.L0d9e6234
    mov.s	$f5,$f0
.L0d9e617c:
    # Line 537
    li	$v1,1
    # Line 512
    beqz	$a4,.L0d9e6410
    nmsub.s	$f13,$f5,$f22,$f6
    # Line 535
    sub.s	$f12,$f24,$f9
    c.lt.s $f20,$f12
    swc1	$f7,30044($a0)
    li	$a2,-1
    bc1f .L0d9e62b8
    # Line 534
    swc1	$f13,30036($a0)
    # Line 537
    sw	$v1,29944($a0)
    sdc1	$f8,24($sp)
    sd	$ra,96($sp)
.L0d9e61ac:
    # Line 548
    swc1	$f12,29920($s0)
    # Line 544
    div.s	$f16,$f20,$f12
    # Line 543
    swc1	$f5,30040($s0)
    # Line 546
    trunc.w.s	$f14,$f24
    # Line 541
    sw	$a2,29932($s0)
    # Line 540
    sw	$a2,29936($s0)
    # Line 546
    cvt.s.w	$f13,$f14
    lwc1	$f15,3540($s0)
    # Line 539
    sw	$zero,29940($s0)
    # Line 549
    # lw $t9, -18476($gp) # &ceilf
    # Line 546
    sdc1	$f15,8($sp)
    mfc1	$a0,$f14
    add.s	$f13,$f13,$f15
    sd	$a0,64($sp)
    # Line 542
    neg.s	$f15,$f4
    swc1	$f15,30032($s0)
    # Line 546
    sub.s	$f13,$f24,$f13
    sdc1	$f13,16($sp)
    # Line 549
    jal	ceilf
    # Line 544
    sdc1	$f16,0($sp)
    # Line 551
    ldc1	$f14,24($sp)
    lwc1	$f12,472($s0)
    # Line 549
    trunc.w.s	$f13,$f0
    # Line 551
    mul.s	$f12,$f12,$f14
    # lw $t9, -18476($gp) # &ceilf
    # Line 549
    mfc1	$a1,$f13
    # Line 551
    neg.s	$f12,$f12
    # Line 549
    addiu	$a1,$a1,1
    sw	$a1,29912($s0)
    # Line 551
    jal	ceilf
    div.s	$f12,$f12,$f22
    ld	$ra,96($sp)
    ld	$a0,64($sp)
    mov.s	$f5,$f0
.L0d9e6234:
    # Line 471
    ldc1	$f17,0($sp)
    ldc1	$f20,16($sp)
    ldc1	$f16,8($sp)
    madd.s	$f15,$f26,$f20,$f17
    nmsub.s	$f15,$f15,$f16,$f5
    trunc.w.s	$f16,$f15
    # Line 472
    ldc1	$f18,_lit8_41e0000000000000
    # Line 575
    ld	$gp,88($sp)
    # Line 473
    cvt.s.w	$f21,$f16
    # Line 575
    ldc1	$f22,32($sp)
    ldc1	$f24,40($sp)
    # Line 462
    trunc.w.s	$f19,$f5
    # Line 466
    sw	$a0,29924($s0)
    # Line 472
    cvt.d.s	$f17,$f17
    # Line 465
    sw	$zero,29908($s0)
    # Line 473
    sub.s	$f15,$f15,$f21
    # Line 467
    swc1	$f20,29916($s0)
    # Line 462
    mfc1	$a2,$f19
    # Line 575
    ldc1	$f20,48($sp)
    # Line 472
    mul.d	$f17,$f17,$f18
    # Line 473
    cvt.d.s	$f15,$f15
    # Line 575
    ldc1	$f26,56($sp)
    # Line 462
    addiu	$a2,$a2,1
    sw	$a2,30000($s0)
    # Line 472
    trunc.w.d	$f17,$f17
    # Line 473
    mul.d	$f15,$f15,$f18
    # Line 472
    swc1	$f17,29952($s0)
    # Line 471
    swc1	$f16,29928($s0)
    # Line 473
    trunc.w.d	$f15,$f15
    swc1	$f15,29948($s0)
    # Line 575
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9e62b8:
    # Line 556
    sw	$a2,29936($a0)
    sdc1	$f8,24($sp)
    sd	$ra,96($sp)
.L0d9e62c4:
    # Line 484
    trunc.w.s	$f18,$f26
    cvt.s.w	$f17,$f18
    lwc1	$f19,3540($s0)
    sdc1	$f19,8($sp)
    add.s	$f17,$f17,$f19
    # Line 482
    div.s	$f19,$f22,$f20
    # Line 486
    swc1	$f20,29920($s0)
    # Line 481
    swc1	$f4,30040($s0)
    # Line 480
    swc1	$f5,30032($s0)
    # Line 479
    li	$a4,1
    sw	$a4,29940($s0)
    # Line 478
    sw	$a4,29944($s0)
    # Line 477
    sw	$zero,29932($s0)
    # Line 487
    # lw $t9, -18476($gp) # &ceilf
    # Line 484
    mfc1	$a3,$f18
    sd	$a3,72($sp)
    sub.s	$f17,$f17,$f26
    sdc1	$f17,16($sp)
    # Line 487
    mov.s	$f12,$f20
    jal	ceilf
    # Line 482
    sdc1	$f19,0($sp)
    # Line 489
    ldc1	$f13,24($sp)
    # Line 487
    trunc.w.s	$f14,$f0
    # Line 489
    lwc1	$f12,472($s0)
    # lw $t9, -18476($gp) # &ceilf
    # Line 487
    mfc1	$a5,$f14
    # Line 489
    mul.s	$f12,$f12,$f13
    # Line 487
    addiu	$a5,$a5,1
    sw	$a5,29912($s0)
    # Line 489
    jal	ceilf
    div.s	$f12,$f12,$f20
    mov.s	$f5,$f0
.L0d9e6344:
    # Line 501
    ldc1	$f17,0($sp)
    ldc1	$f20,16($sp)
    ldc1	$f16,8($sp)
    madd.s	$f15,$f24,$f20,$f17
    nmsub.s	$f15,$f15,$f16,$f5
    # Line 502
    ldc1	$f18,_lit8_41e0000000000000
    # Line 575
    ld	$gp,88($sp)
    # Line 501
    trunc.w.s	$f16,$f15
    # Line 575
    ldc1	$f22,32($sp)
    ldc1	$f26,56($sp)
    # Line 503
    cvt.s.w	$f21,$f16
    # Line 495
    li	$a7,1
    sw	$a7,29908($s0)
    # Line 496
    ld	$t0,72($sp)
    # Line 492
    trunc.w.s	$f19,$f5
    # Line 496
    sw	$t0,29928($s0)
    # Line 502
    cvt.d.s	$f17,$f17
    # Line 497
    swc1	$f20,29916($s0)
    # Line 503
    sub.s	$f15,$f15,$f21
    ld	$ra,96($sp)
    # Line 492
    mfc1	$a6,$f19
    # Line 575
    ldc1	$f20,48($sp)
    # Line 502
    mul.d	$f17,$f17,$f18
    # Line 503
    cvt.d.s	$f15,$f15
    # Line 575
    ldc1	$f24,40($sp)
    # Line 492
    addiu	$a6,$a6,1
    sw	$a6,30000($s0)
    # Line 502
    trunc.w.d	$f17,$f17
    # Line 503
    mul.d	$f15,$f15,$f18
    # Line 502
    swc1	$f17,29952($s0)
    # Line 501
    swc1	$f16,29924($s0)
    # Line 503
    trunc.w.d	$f15,$f15
    swc1	$f15,29948($s0)
    # Line 575
    ld	$s0,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9e63d4:
    # Line 475
    sw	$a0,29936($s0)
    sdc1	$f8,24($sp)
    b	.L0d9e62c4
    sd	$ra,96($sp)
.L0d9e63e4:
    # Line 507
    sub.s	$f12,$f26,$f11
    c.lt.s $f12,$f22
    # Line 506
    swc1	$f9,30036($s0)
    # Line 507
    neg.s	$f17,$f7
    li	$a2,-1
    bc1f .L0d9e64e8
    swc1	$f17,30044($s0)
    # Line 509
    sw	$a2,29944($s0)
    sdc1	$f8,24($sp)
    b	.L0d9e60f4
    sd	$ra,96($sp)
.L0d9e6410:
    # Line 561
    c.lt.s $f22,$f20
    swc1	$f13,30044($a0)
    # Line 560
    neg.s	$f18,$f7
    # Line 563
    li	$a2,-1
    # Line 561
    bc1f .L0d9e643c
    # Line 560
    swc1	$f18,30036($a0)
    # Line 563
    sw	$a2,29944($a0)
    sdc1	$f8,24($sp)
    sub.s	$f12,$f24,$f9
    b	.L0d9e61ac
    sd	$ra,96($sp)
.L0d9e643c:
    # Line 566
    c.eq.s $f22,$f20
    bc1f .L0d9e6454
    # Line 570
    li	$a2,-1
    # Line 566
    c.eq.s $f20,$f12
    bc1t .L0d9e64f8
    nop
.L0d9e6454:
    # Line 570
    sw	$a2,29936($s0)
    sdc1	$f8,24($sp)
    sub.s	$f12,$f26,$f11
    sd	$ra,96($sp)
.L0d9e6464:
    # Line 523
    swc1	$f12,29920($s0)
    # Line 519
    div.s	$f25,$f22,$f12
    # Line 517
    swc1	$f10,30032($s0)
    # Line 521
    trunc.w.s	$f21,$f26
    # Line 516
    sw	$a2,29940($s0)
    # Line 515
    sw	$a2,29944($s0)
    # Line 521
    cvt.s.w	$f19,$f21
    lwc1	$f23,3540($s0)
    # Line 514
    sw	$zero,29932($s0)
    # Line 524
    # lw $t9, -18476($gp) # &ceilf
    # Line 521
    sdc1	$f23,8($sp)
    mfc1	$t1,$f21
    add.s	$f19,$f19,$f23
    sd	$t1,72($sp)
    # Line 518
    neg.s	$f23,$f4
    swc1	$f23,30040($s0)
    # Line 521
    sub.s	$f19,$f26,$f19
    sdc1	$f19,16($sp)
    # Line 524
    jal	ceilf
    # Line 519
    sdc1	$f25,0($sp)
    # Line 526
    ldc1	$f14,24($sp)
    lwc1	$f12,472($s0)
    # Line 524
    trunc.w.s	$f13,$f0
    # Line 526
    mul.s	$f12,$f12,$f14
    # lw $t9, -18476($gp) # &ceilf
    # Line 524
    mfc1	$t2,$f13
    # Line 526
    neg.s	$f12,$f12
    # Line 524
    addiu	$t2,$t2,1
    sw	$t2,29912($s0)
    # Line 526
    jal	ceilf
    div.s	$f12,$f12,$f20
    b	.L0d9e6344
    mov.s	$f5,$f0
.L0d9e64e8:
    # Line 512
    sw	$a0,29936($s0)
    sdc1	$f8,24($sp)
    b	.L0d9e6464
    sd	$ra,96($sp)
.L0d9e64f8:
    # Line 567
    swc1	$f12,29920($a0)
    # Line 575
    ld	$gp,88($sp)
    ld	$s0,80($sp)
    ldc1	$f20,48($sp)
    ldc1	$f22,32($sp)
    ldc1	$f24,40($sp)
    ldc1	$f26,56($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glInitAALineData

# Function: __glRenderAntiAliasLine
# Declared: Line 577 (Source lines: 578-821)
# Address: 0x0d9e6520 - 0x0d9e6c38 (Size: 1816 bytes, Frame: 160)
.globl __glRenderAntiAliasLine
.ent __glRenderAntiAliasLine
__glRenderAntiAliasLine:
    # Line 578
    addiu	$sp,$sp,-160
    sd	$s1,32($sp)
    sd	$ra,16($sp)
    lui	$at,0xb
    sd	$s7,40($sp)
    addiu	$at,$at,-21832
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 592
    # lw $t9, -27900($gp) # &__glInitAALineData
    # Line 578
    sd	$s0,24($sp)
    move	$s0,$a2
    move	$s7,$a1
    sd	$s6,8($sp)
    # Line 592
    nop
    # Line 578
    move	$s6,$a0
    # Line 592
    bal __glInitAALineData
    # Line 590
    lw	$s1,30492($a0)
    sdc1	$f28,112($sp)
    sdc1	$f24,104($sp)
    sdc1	$f22,96($sp)
    sdc1	$f30,88($sp)
    sdc1	$f26,80($sp)
    # Line 592
    mtc1	$zero,$f1
    lwc1	$f0,29920($s6)
    sdc1	$f20,72($sp)
    sd	$s5,152($sp)
    sd	$s4,144($sp)
    c.eq.s	$f0,$f1
    sd	$s8,136($sp)
    sd	$s3,128($sp)
    bc1t	.L0d9e6bd8
    sd	$s2,120($sp)
    # Line 600
    lwc1	$f20,3544($s6)
    andi	$v0,$s1,0x4000
    # Line 595
    lwc1	$f22,29916($s6)
    # Line 600
    beqz	$v0,.L0d9e660c
    div.s	$f20,$f20,$f0
    # Line 605
    lwc1	$f25,136($s0)
    lwc1	$f27,136($s7)
    sub.s	$f25,$f25,$f27
    mul.s	$f25,$f20,$f25
    trunc.w.s	$f25,$f25
    mfc1	$a0,$f25
    # Line 610
    cvt.s.w	$f23,$f25
    # Line 605
    swc1	$f25,30380($s6)
    # Line 607
    sll	$a0,$a0,0x5
    sw	$a0,30384($s6)
    # Line 610
    lwc1	$f21,136($s7)
    madd.s	$f21,$f21,$f23,$f22
    lbu	$v1,30576($s6)
    trunc.w.s	$f21,$f21
    swc1	$f21,30260($s6)
    beqz	$v1,.L0d9e660c
    mfc1	$a0,$f21
    # Line 613
    lwc1	$f29,30544($s6)
    trunc.w.s	$f29,$f29
    mfc1	$a1,$f29
    addu	$a1,$a0,$a1
    sw	$a1,30260($s6)
.L0d9e660c:
    andi	$a2,$s1,0x8000
    beqz	$a2,.L0d9e6620
    sd	$a2,0($sp)
    lbu	$a3,29904($s6)
    beqz	$a3,.L0d9e6c24
.L0d9e6620:
    # Line 621
    andi	$a4,$s1,0x1000
    beqz	$a4,.L0d9e66a0
    # Line 640
    andi	$a7,$s1,0x2
    # Line 621
    lw	$a5,1912($s6)
    li	$a6,4354
    bne	$a5,$a6,.L0d9e665c
    nop
    # Line 630
    lwc1	$f6,104($s7)
    swc1	$f6,29996($s6)
    # Line 631
    lwc1	$f5,104($s0)
    lwc1	$f7,104($s7)
    sub.s	$f5,$f5,$f7
    mul.s	$f5,$f20,$f5
    b	.L0d9e6694
    swc1	$f5,30488($s6)
.L0d9e665c:
    # Line 635
    lw	$t9,12592($s6)
    move	$a0,$s6
    jal	__glInitAALineData
    move	$a1,$s7
    # Line 636
    lw	$t9,12592($s6)
    move	$a0,$s6
    # Line 635
    mov.s	$f24,$f0
    # Line 636
    jalr	$t9
    move	$a1,$s0
    # Line 638
    sub.s	$f5,$f0,$f24
    # Line 637
    swc1	$f24,29996($s6)
    # Line 638
    mul.s	$f5,$f20,$f5
    # Line 637
    mov.s	$f6,$f24
    # Line 638
    swc1	$f5,30488($s6)
.L0d9e6694:
    # Line 640
    madd.s	$f7,$f6,$f22,$f5
    swc1	$f7,30300($s6)
    andi	$a7,$s1,0x2
.L0d9e66a0:
    lbu	$a0,3220($s6)
    beqz	$a7,.L0d9e6708
    lw	$a1,8($s0)
    # Line 645
    lw	$a3,8($s7)
    # Line 651
    lwc1	$f8,0($a1)
    lwc1	$f9,0($a3)
    sub.s	$f8,$f8,$f9
    mul.s	$f8,$f20,$f8
    beqz	$a0,.L0d9e6704
    swc1	$f8,30340($s6)
    # Line 653
    lwc1	$f14,4($a1)
    lwc1	$f15,4($a3)
    sub.s	$f14,$f14,$f15
    mul.s	$f14,$f20,$f14
    swc1	$f14,30344($s6)
    # Line 654
    lwc1	$f12,8($a1)
    lwc1	$f13,8($a3)
    sub.s	$f12,$f12,$f13
    mul.s	$f12,$f20,$f12
    swc1	$f12,30348($s6)
    # Line 655
    lwc1	$f10,12($a1)
    lwc1	$f11,12($a3)
    sub.s	$f10,$f10,$f11
    mul.s	$f10,$f20,$f10
    swc1	$f10,30352($s6)
.L0d9e6704:
    # Line 657
    lw	$a1,8($s7)
.L0d9e6708:
    # Line 662
    lwc1	$f16,0($a1)
    beqz	$a0,.L0d9e672c
    swc1	$f16,30264($s6)
    # Line 664
    lwc1	$f19,4($a1)
    swc1	$f19,30268($s6)
    # Line 665
    lwc1	$f18,8($a1)
    swc1	$f18,30272($s6)
    # Line 666
    lwc1	$f17,12($a1)
    swc1	$f17,30276($s6)
.L0d9e672c:
    lbu	$t0,28272($s6)
    beqz	$t0,.L0d9e6870
    nop
    # Line 675
    lwc1	$f23,140($s7)
    # Line 680
    lwc1	$f19,60($s7)
    # Line 681
    lwc1	$f24,60($s0)
    lwc1	$f25,140($s0)
    # Line 682
    lwc1	$f27,48($s7)
    # Line 680
    mul.s	$f28,$f19,$f23
    # Line 682
    lwc1	$f29,48($s0)
    # Line 681
    mul.s	$f24,$f24,$f25
    # Line 683
    lwc1	$f25,52($s7)
    # Line 682
    mul.s	$f27,$f27,$f28
    # Line 683
    lwc1	$f31,52($s0)
    # Line 682
    msub.s	$f27,$f27,$f29,$f24
    # Line 684
    lwc1	$f21,56($s7)
    # Line 683
    mul.s	$f25,$f25,$f28
    # Line 684
    lwc1	$f29,56($s0)
    # Line 683
    msub.s	$f25,$f25,$f31,$f24
    # Line 684
    mul.s	$f21,$f21,$f28
    msub.s	$f21,$f21,$f29,$f24
    # Line 688
    nmsub.s	$f19,$f24,$f19,$f23
    # Line 682
    mul.s	$f27,$f20,$f27
    # Line 685
    swc1	$f27,30436($s6)
    # Line 683
    mul.s	$f25,$f20,$f25
    # Line 686
    swc1	$f25,30440($s6)
    # Line 684
    mul.s	$f21,$f20,$f21
    # Line 687
    swc1	$f21,30444($s6)
    # Line 688
    mul.s	$f19,$f20,$f19
    swc1	$f19,30448($s6)
    # Line 689
    lwc1	$f29,48($s7)
    mul.s	$f27,$f22,$f27
    madd.s	$f27,$f27,$f29,$f23
    swc1	$f27,30280($s6)
    # Line 690
    lwc1	$f27,52($s7)
    mul.s	$f25,$f22,$f25
    madd.s	$f25,$f25,$f27,$f23
    swc1	$f25,30284($s6)
    # Line 691
    lwc1	$f25,56($s7)
    mul.s	$f21,$f22,$f21
    madd.s	$f21,$f21,$f25,$f23
    swc1	$f21,30288($s6)
    # Line 692
    lwc1	$f21,60($s7)
    mul.s	$f19,$f19,$f22
    madd.s	$f19,$f19,$f21,$f23
    # Line 694
    lwc1	$f17,3544($s6)
    # Line 692
    swc1	$f19,30292($s6)
    # Line 694
    lwc1	$f18,60($s7)
    div.s	$f17,$f17,$f18
    # Line 695
    lw	$t9,12572($s6)
    lwc1	$f15,56($s7)
    lwc1	$f14,52($s7)
    mov.s	$f16,$f28
    lwc1	$f13,48($s7)
    mul.s	$f15,$f15,$f17
    mul.s	$f14,$f14,$f17
    move	$a0,$s6
    jalr	$t9
    mul.s	$f13,$f13,$f17
    mul.s	$f26,$f0,$f28
    # Line 701
    swc1	$f26,180($s7)
    # Line 703
    lwc1	$f17,3544($s6)
    lwc1	$f18,60($s0)
    div.s	$f17,$f17,$f18
    # Line 704
    lw	$t9,12572($s6)
    lwc1	$f15,56($s0)
    lwc1	$f14,52($s0)
    mov.s	$f16,$f24
    lwc1	$f13,48($s0)
    mul.s	$f15,$f15,$f17
    mul.s	$f14,$f14,$f17
    move	$a0,$s6
    jalr	$t9
    mul.s	$f13,$f13,$f17
    # Line 713
    msub.s	$f21,$f26,$f0,$f24
    mul.s	$f21,$f20,$f21
    # Line 714
    madd.s	$f19,$f26,$f22,$f21
    # Line 710
    mul.s	$f23,$f0,$f24
    swc1	$f23,180($s0)
    # Line 713
    swc1	$f21,30452($s6)
    # Line 714
    swc1	$f19,30296($s6)
.L0d9e6870:
    # Line 732
    lwc1	$f30,30044($s6)
    # Line 731
    lwc1	$f26,30040($s6)
    # Line 730
    lwc1	$f28,30036($s6)
    # Line 729
    lwc1	$f24,30032($s6)
    # Line 727
    lw	$s4,29940($s6)
    # Line 726
    lw	$s5,29932($s6)
    # Line 723
    lw	$s2,29928($s6)
    # Line 722
    lw	$s1,29924($s6)
    # Line 720
    lw	$s3,29952($s6)
    # Line 735
    mtc1	$s2,$f25
    # Line 719
    lw	$s0,29948($s6)
    # Line 734
    mtc1	$s1,$f23
    # Line 717
    lw	$a1,30000($s6)
    # Line 724
    lw	$t2,29936($s6)
    # Line 735
    cvt.s.w	$f25,$f25
    # Line 734
    lwc1	$f0,3540($s6)
    cvt.s.w	$f23,$f23
    # Line 736
    lwc1	$f21,30016($s6)
    # Line 735
    lwc1	$f31,132($s7)
    # Line 734
    lwc1	$f29,128($s7)
    # Line 735
    add.s	$f25,$f25,$f0
    # Line 738
    lwc1	$f22,30028($s6)
    # Line 734
    add.s	$f23,$f23,$f0
    # Line 738
    lwc1	$f27,30024($s6)
    # Line 735
    sub.s	$f25,$f25,$f31
    # Line 736
    lwc1	$f20,30020($s6)
    # Line 734
    sub.s	$f23,$f23,$f29
    # Line 738
    ld	$t1,0($sp)
    mul.s	$f22,$f22,$f25
    # Line 725
    lw	$t3,29944($s6)
    # Line 738
    madd.s	$f22,$f22,$f27,$f23
    # Line 725
    sd	$t3,64($sp)
    # Line 736
    mul.s	$f20,$f20,$f25
    # Line 724
    sd	$t2,56($sp)
    # Line 738
    beqz	$t1,.L0d9e693c
    # Line 736
    madd.s	$f20,$f20,$f21,$f23
    # Line 742
    lh	$at,482($s6)
    lw	$ra,29896($s6)
    # Line 747
    mtc1	$at,$f29
    # Line 742
    mult	$ra,$at
    # Line 747
    cvt.s.w	$f29,$f29
    lwc1	$f27,3544($s6)
    # Line 742
    lw	$t8,29900($s6)
    mflo	$t9
    # Line 747
    div.s	$f27,$f27,$f29
    # Line 742
    addu	$t8,$t8,$t9
    mtc1	$t8,$f29
    cvt.s.w	$f29,$f29
    sub.s	$f29,$f29,$f0
    swc1	$f29,30056($s6)
    # Line 747
    swc1	$f27,30060($s6)
.L0d9e693c:
    # Line 751
    addiu	$s8,$a1,-1
    bltz	$s8,.L0d9e6b14
    ld	$a5,0($sp)
    lui	$s7,0x7fff
    b	.L0d9e69b8
    ori	$s7,$s7,0xffff
    nop
    nop
    nop
.L0d9e6960:
    # Line 792
    sw	$s2,29928($s6)
    # Line 791
    sw	$s1,29924($s6)
    # Line 790
    sw	$s3,29952($s6)
    # Line 789
    sw	$s0,29948($s6)
    # Line 788
    swc1	$f22,30052($s6)
    # Line 795
    lw	$t9,12436($s6)
    # Line 787
    swc1	$f20,30048($s6)
    # Line 794
    lw	$t8,29912($s6)
    # Line 795
    move	$a0,$s6
    jalr	$t9
    # Line 794
    sw	$t8,30304($s6)
    # Line 795
    lw	$t9,29908($s6)
    # Line 751
    addiu	$s8,$s8,-1
    # Line 795
    beqz	$t9,.L0d9e6af8
    li	$a0,-1
    # Line 804
    lwc1	$f0,30024($s6)
    # Line 803
    lwc1	$f31,30016($s6)
    # Line 804
    add.s	$f22,$f0,$f22
    # Line 802
    addiu	$s1,$s1,1
    # Line 803
    add.s	$f20,$f31,$f20
.L0d9e69b0:
    # Line 751
    beq	$s8,$a0,.L0d9e6b14
    ld	$a5,0($sp)
.L0d9e69b8:
    lwc1	$f0,3540($s6)
    neg.s	$f0,$f0
    c.lt.s $f0,$f20
    bc1f .L0d9e6a40
    nop
    b	.L0d9e69f4
    # Line 754
    subu	$s0,$s0,$s3
.L0d9e69d4:
    # Line 763
    sub.s	$f22,$f22,$f26
    # Line 765
    subu	$s2,$s2,$s4
    # Line 764
    subu	$s1,$s1,$s5
    # Line 762
    sub.s	$f20,$f20,$f24
.L0d9e69e4:
    # Line 765
    c.lt.s $f0,$f20
    bc1f .L0d9e6a40
    nop
    # Line 754
    subu	$s0,$s0,$s3
.L0d9e69f4:
    bltz	$s0,.L0d9e6ac0
    # Line 760
    ld	$a2,64($sp)
    # Line 763
    sub.s	$f22,$f22,$f26
    # Line 765
    subu	$s2,$s2,$s4
    # Line 764
    subu	$s1,$s1,$s5
    # Line 762
    sub.s	$f20,$f20,$f24
.L0d9e6a0c:
    # Line 765
    c.lt.s $f0,$f20
    bc1f .L0d9e6a40
    nop
    # Line 754
    subu	$s0,$s0,$s3
    bgez	$s0,.L0d9e69d4
    # Line 760
    ld	$at,64($sp)
    # Line 759
    ld	$ra,56($sp)
    # Line 758
    sub.s	$f22,$f22,$f30
    # Line 756
    and	$s0,$s0,$s7
    # Line 760
    subu	$s2,$s2,$at
    # Line 757
    sub.s	$f20,$f20,$f28
    # Line 760
    b	.L0d9e69e4
    # Line 759
    subu	$s1,$s1,$ra
.L0d9e6a40:
    # Line 765
    c.le.s $f20,$f0
    bc1f .L0d9e6960
    nop
    b	.L0d9e6a74
    # Line 771
    addu	$s0,$s0,$s3
.L0d9e6a54:
    # Line 780
    add.s	$f22,$f26,$f22
    # Line 782
    addu	$s2,$s2,$s4
    # Line 781
    addu	$s1,$s1,$s5
    # Line 779
    add.s	$f20,$f24,$f20
.L0d9e6a64:
    # Line 782
    c.le.s $f20,$f0
    bc1f .L0d9e6960
    nop
    # Line 771
    addu	$s0,$s0,$s3
.L0d9e6a74:
    bltz	$s0,.L0d9e6adc
    # Line 777
    ld	$a4,64($sp)
    # Line 780
    add.s	$f22,$f26,$f22
    # Line 782
    addu	$s2,$s2,$s4
    # Line 781
    addu	$s1,$s1,$s5
    # Line 779
    add.s	$f20,$f24,$f20
.L0d9e6a8c:
    # Line 782
    c.le.s $f20,$f0
    bc1f .L0d9e6960
    nop
    # Line 771
    addu	$s0,$s0,$s3
    bgez	$s0,.L0d9e6a54
    # Line 777
    ld	$v1,64($sp)
    # Line 776
    ld	$v0,56($sp)
    # Line 775
    add.s	$f22,$f30,$f22
    # Line 773
    and	$s0,$s0,$s7
    # Line 777
    addu	$s2,$s2,$v1
    # Line 774
    add.s	$f20,$f28,$f20
    # Line 777
    b	.L0d9e6a64
    # Line 776
    addu	$s1,$s1,$v0
.L0d9e6ac0:
    # Line 759
    ld	$a1,56($sp)
    # Line 758
    sub.s	$f22,$f22,$f30
    # Line 756
    and	$s0,$s0,$s7
    # Line 760
    subu	$s2,$s2,$a2
    # Line 757
    sub.s	$f20,$f20,$f28
    # Line 760
    b	.L0d9e6a0c
    # Line 759
    subu	$s1,$s1,$a1
.L0d9e6adc:
    # Line 776
    ld	$a3,56($sp)
    # Line 775
    add.s	$f22,$f30,$f22
    # Line 773
    and	$s0,$s0,$s7
    # Line 777
    addu	$s2,$s2,$a4
    # Line 774
    add.s	$f20,$f28,$f20
    # Line 777
    b	.L0d9e6a8c
    # Line 776
    addu	$s1,$s1,$a3
.L0d9e6af8:
    # Line 800
    lwc1	$f2,30028($s6)
    # Line 799
    lwc1	$f1,30020($s6)
    # Line 800
    add.s	$f22,$f2,$f22
    # Line 798
    addiu	$s2,$s2,1
    # Line 800
    b	.L0d9e69b0
    # Line 799
    add.s	$f20,$f1,$f20
    # Line 751
    ld	$a5,0($sp)
.L0d9e6b14:
    beqz	$a5,.L0d9e6bd8
    ld	$s5,152($sp)
    ld	$s4,144($sp)
    ld	$s8,136($sp)
    ld	$s3,128($sp)
    ld	$s2,120($sp)
    ldc1	$f28,112($sp)
    ldc1	$f24,104($sp)
    ldc1	$f22,96($sp)
    ldc1	$f30,88($sp)
    # Line 814
    # lw $t9, -18476($gp) # &ceilf
    ldc1	$f26,80($sp)
    ldc1	$f20,72($sp)
    jal	ceilf
    lwc1	$f12,30012($s6)
    # Line 818
    trunc.w.s	$f3,$f0
    lh	$t0,482($s6)
    # Line 819
    lw	$a6,29900($s6)
    # Line 818
    mfc1	$a7,$f3
    mtc1	$t0,$f5
    # Line 819
    addu	$a6,$a6,$a7
    mtc1	$a6,$f4
    # Line 818
    cvt.d.w	$f5,$f5
    # Line 819
    cvt.d.w	$f4,$f4
    div.d	$f4,$f4,$f5
    # Line 818
    cvt.d.w	$f3,$f3
    div.d	$f3,$f3,$f5
    # Line 819
    trunc.w.d	$f4,$f4
    mfc1	$t3,$f4
    # Line 821
    ld	$gp,48($sp)
    # Line 819
    mult	$t3,$t0
    # Line 821
    ld	$s0,24($sp)
    # Line 818
    trunc.w.d	$f3,$f3
    # Line 821
    ld	$s1,32($sp)
    # Line 818
    lw	$t1,29896($s6)
    mfc1	$t2,$f3
    # Line 821
    ld	$s7,40($sp)
    ld	$ra,16($sp)
    # Line 819
    teq	$t0,$zero,0x7
    # Line 818
    addu	$t1,$t1,$t2
    andi	$t1,$t1,0xf
    sw	$t1,29896($s6)
    # Line 819
    mflo	$a7
    # Line 818
    teq	$t0,$zero,0x7
    # Line 819
    subu	$a6,$a6,$a7
    sw	$a6,29900($s6)
    # Line 821
    ld	$s6,8($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9e6bd8:
    ld	$s2,120($sp)
    ld	$s6,8($sp)
    ld	$s3,128($sp)
    ld	$s8,136($sp)
    ld	$s4,144($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,152($sp)
    ld	$s7,40($sp)
    ldc1	$f20,72($sp)
    ldc1	$f26,80($sp)
    ldc1	$f30,88($sp)
    ldc1	$f22,96($sp)
    ld	$ra,16($sp)
    ldc1	$f24,104($sp)
    ldc1	$f28,112($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9e6c24:
    # Line 621
    li	$t0,1
    sb	$t0,29904($s6)
    # Line 620
    sw	$zero,29900($s6)
    # Line 621
    b	.L0d9e6620
    # Line 619
    sw	$zero,29896($s6)
.end __glRenderAntiAliasLine

# Function: __glPolygonOffsetLine
# Declared: Line 823 (Source lines: 824-830)
# Address: 0x0d9e6c40 - 0x0d9e6c8c (Size: 76 bytes, Frame: 32)
.globl __glPolygonOffsetLine
.ent __glPolygonOffsetLine
__glPolygonOffsetLine:
    # Line 824
    addiu	$sp,$sp,-32
    lui	$at,0xb
    sd	$gp,16($sp)
    addiu	$at,$at,-23656
    addu	$gp,$t9,$at
    # Line 827
    lw	$t9,12528($a0)
    # Line 825
    li	$v0,1
    sb	$v0,30576($a0)
    # Line 824
    sd	$s8,8($sp)
    # Line 827
    nop
    # Line 824
    sd	$ra,0($sp)
    # Line 827
    jalr	$t9
    # Line 824
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 830
    ld	$gp,16($sp)
    # Line 829
    sb	$zero,30576($s8)
    # Line 830
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPolygonOffsetLine

.rdata
_lit8_41e0000000000000:
    .word 0x41e00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000

