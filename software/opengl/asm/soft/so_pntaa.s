# Source: ../soft/so_pntaa.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pntaa.c
# Total Functions: 4

.text

# Function: __glBuildAntiAliasIndex
# Declared: Line 30 (Source lines: 32-36)
# Address: 0x0d9f6ee0 - 0x0d9f6f20 (Size: 64 bytes, Frame: 0)
.globl __glBuildAntiAliasIndex
.ent __glBuildAntiAliasIndex
__glBuildAntiAliasIndex:
    # Line 32
    lui	$a1,0xa
    addiu	$a1,$a1,-24328
    addu	$at,$t9,$a1
    # Line 36
    lwc1	$f2,_lit_41700000
    lwc1	$f1,_lit_3f000000
    madd.s	$f1,$f1,$f2,$f13
    trunc.w.s	$f2,$f12
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f2
    li	$a0,-16
    mfc1	$v0,$f1
    and	$v1,$v1,$a0
    or	$v0,$v0,$v1
    mtc1	$v0,$f0
    jr	$ra
    cvt.s.w	$f0,$f0
.end __glBuildAntiAliasIndex

# Function: Coverage
# Declared: Line 77 (Source lines: 91-120)
# Address: 0x0d9f6f20 - 0x0d9f7070 (Size: 336 bytes, Frame: 0)
.ent Coverage
Coverage:
    # Line 91
    lwc1	$f6,_lit_bec00000
    lwc1	$f15,_lit_3e800000
    add.s	$f10,$f13,$f6
    add.s	$f8,$f10,$f15
    add.s	$f11,$f8,$f15
    mul.s	$f10,$f10,$f10
    mul.s	$f8,$f8,$f8
    add.s	$f9,$f11,$f15
    mul.s	$f11,$f11,$f11
    lwc1	$f7,_lit_3d800000
    mtc1	$zero,$f0
    add.s	$f6,$f12,$f6
    mul.s	$f9,$f9,$f9
    nmsub.s	$f5,$f14,$f6,$f6
    c.le.s	$f10,$f5
    # Line 107
    c.le.s $f11,$f5
    # Line 91
    bc1f	.L0d9f6f6c
    # Line 111
    c.le.s $f9,$f5
    # Line 103
    add.s	$f0,$f0,$f7
.L0d9f6f6c:
    c.le.s $f8,$f5
    bc1f .L0d9f6f7c
    nop
    # Line 107
    add.s	$f0,$f0,$f7
.L0d9f6f7c:
    bc1f .L0d9f6f88
    nop
    # Line 111
    add.s	$f0,$f0,$f7
.L0d9f6f88:
    bc1f .L0d9f6f94
    nop
    # Line 115
    add.s	$f0,$f0,$f7
.L0d9f6f94:
    # Line 118
    add.s	$f6,$f6,$f15
    # Line 91
    nmsub.s	$f5,$f14,$f6,$f6
    c.le.s $f10,$f5
    bc1f .L0d9f6fac
    nop
    # Line 103
    add.s	$f0,$f0,$f7
.L0d9f6fac:
    c.le.s $f8,$f5
    bc1f .L0d9f6fbc
    nop
    # Line 107
    add.s	$f0,$f0,$f7
.L0d9f6fbc:
    c.le.s $f11,$f5
    bc1f .L0d9f6fcc
    nop
    # Line 111
    add.s	$f0,$f0,$f7
.L0d9f6fcc:
    c.le.s $f9,$f5
    bc1f .L0d9f6fdc
    nop
    # Line 115
    add.s	$f0,$f0,$f7
.L0d9f6fdc:
    # Line 118
    add.s	$f6,$f6,$f15
    # Line 91
    nmsub.s	$f5,$f14,$f6,$f6
    c.le.s	$f10,$f5
    # Line 118
    add.s	$f6,$f6,$f15
    # Line 91
    bc1f	.L0d9f6ff8
    # Line 111
    c.le.s $f9,$f5
    # Line 103
    add.s	$f0,$f0,$f7
.L0d9f6ff8:
    c.le.s $f8,$f5
    bc1f .L0d9f7008
    nop
    # Line 107
    add.s	$f0,$f0,$f7
.L0d9f7008:
    c.le.s $f11,$f5
    bc1f .L0d9f7018
    # Line 91
    nmsub.s	$f5,$f14,$f6,$f6
    # Line 111
    add.s	$f0,$f0,$f7
.L0d9f7018:
    bc1f .L0d9f7024
    nop
    # Line 115
    add.s	$f0,$f0,$f7
.L0d9f7024:
    # Line 91
    c.le.s $f10,$f5
    bc1f .L0d9f7034
    nop
    # Line 103
    add.s	$f0,$f0,$f7
.L0d9f7034:
    c.le.s $f8,$f5
    bc1f .L0d9f7044
    nop
    # Line 107
    add.s	$f0,$f0,$f7
.L0d9f7044:
    c.le.s $f11,$f5
    bc1f .L0d9f7054
    nop
    # Line 111
    add.s	$f0,$f0,$f7
.L0d9f7054:
    c.le.s $f9,$f5
    bc1f .L0d9f7068
    nop
    # Line 120
    jr	$ra
    # Line 115
    add.s	$f0,$f0,$f7
.L0d9f7068:
    # Line 120
    jr	$ra
    nop
.end Coverage

# Function: __glRenderAntiAliasedRGBPoint
# Declared: Line 123 (Source lines: 124-206)
# Address: 0x0d9f7070 - 0x0d9f72fc (Size: 652 bytes, Frame: 208)
.globl __glRenderAntiAliasedRGBPoint
.ent __glRenderAntiAliasedRGBPoint
__glRenderAntiAliasedRGBPoint:
    # Line 143
    lwc1	$f0,132($a1)
    # Line 140
    lwc1	$f21,3540($a0)
    # Line 124
    addiu	$sp,$sp,-208
    # Line 162
    lwc1	$f23,136($a1)
    # Line 124
    sdc1	$f26,72($sp)
    # Line 142
    lwc1	$f26,128($a1)
    # Line 124
    sdc1	$f20,64($sp)
    # Line 162
    trunc.l.s	$f23,$f23
    # Line 140
    lwc1	$f20,460($a0)
    # Line 124
    sd	$s1,112($sp)
    # Line 162
    dmfc1	$a3,$f23
    # Line 129
    lw	$s1,30492($a0)
    # Line 162
    sll	$a3,$a3,0x0
    sw	$a3,8($sp)
    lbu	$at,30576($a0)
    # Line 124
    sd	$s0,104($sp)
    move	$s0,$a1
    lui	$v0,0xa
    sd	$s3,96($sp)
    move	$s3,$a0
    addiu	$v0,$v0,-24728
    sd	$gp,120($sp)
    addu	$gp,$t9,$v0
    # Line 162
    beqz	$at,.L0d9f70ec
    # Line 140
    mul.s	$f20,$f20,$f21
    # Line 164
    lwc1	$f25,30544($a0)
    trunc.l.s	$f25,$f25
    dmfc1	$a4,$f25
    sll	$a4,$a4,0x0
    addu	$a4,$a4,$a3
    sw	$a4,8($sp)
.L0d9f70ec:
    # Line 167
    lw	$a6,8($s0)
    lwc1	$f1,0($a6)
    swc1	$f1,12($sp)
    lwc1	$f31,4($a6)
    swc1	$f31,16($sp)
    lwc1	$f29,8($a6)
    sdc1	$f0,56($sp)
    swc1	$f29,20($sp)
    andi	$a5,$s1,0x8
    lwc1	$f27,12($a6)
    sd	$ra,160($sp)
    beqz	$a5,.L0d9f7154
    swc1	$f27,24($sp)
    # Line 169
    lwc1	$f18,60($s0)
    lwc1	$f17,3544($s3)
    div.s	$f18,$f17,$f18
    # Line 170
    lwc1	$f14,48($s0)
    lwc1	$f16,56($s0)
    lwc1	$f15,52($s0)
    lw	$t9,12580($s3)
    mul.s	$f16,$f16,$f18
    addiu	$a1,$sp,12
    mul.s	$f15,$f15,$f18
    move	$a0,$s3
    jalr	$t9
    mul.s	$f14,$f14,$f18
.L0d9f7154:
    sdc1	$f22,128($sp)
    sdc1	$f24,136($sp)
    sdc1	$f30,144($sp)
    andi	$a7,$s1,0x1000
    sd	$s4,168($sp)
    beqz	$a7,.L0d9f7184
    sd	$s5,176($sp)
    # Line 175
    lw	$t9,12584($s3)
    move	$a0,$s3
    lwc1	$f14,104($s0)
    jalr	$t9
    addiu	$a1,$sp,0
.L0d9f7184:
    # Line 188
    sub.s	$f21,$f26,$f20
    # Line 191
    ldc1	$f23,56($sp)
    # Line 188
    trunc.w.s	$f21,$f21
    # Line 191
    add.s	$f24,$f20,$f23
    # Line 189
    sub.s	$f25,$f23,$f20
    # Line 188
    cvt.s.w	$f19,$f21
    # Line 189
    trunc.w.s	$f25,$f25
    # Line 191
    trunc.w.s	$f24,$f24
    # Line 188
    lwc1	$f27,3540($s3)
    # Line 189
    cvt.s.w	$f22,$f25
    mfc1	$a0,$f25
    sdc1	$f26,152($sp)
    # Line 191
    mfc1	$s4,$f24
    # Line 187
    lwc1	$f30,24($sp)
    # Line 188
    add.s	$f19,$f19,$f27
    # Line 186
    lwc1	$f24,3544($s3)
    # Line 191
    subu	$s4,$s4,$a0
    # Line 189
    add.s	$f22,$f22,$f27
    # Line 190
    swc1	$f25,4($sp)
    # Line 188
    sub.s	$f19,$f19,$f26
    mfc1	$s5,$f21
    sdc1	$f19,80($sp)
    # Line 191
    bltz	$s4,.L0d9f72c4
    # Line 189
    sub.s	$f22,$f22,$f23
    # Line 191
    ldc1	$f26,152($sp)
    add.s	$f26,$f20,$f26
    sdc1	$f28,200($sp)
    trunc.w.s	$f26,$f26
    la	$s1,sub_0d9f0000
    sd	$s6,192($sp)
    mfc1	$s6,$f26
    mtc1	$zero,$f28
    sd	$s2,184($sp)
    li	$s2,-1
    addiu	$s1,$s1,28448
    subu	$s6,$s6,$s5
    mul.s	$f26,$f20,$f20
    addiu	$t8,$s6,1
    b	.L0d9f7248
    sd	$t8,88($sp)
    nop
    nop
    nop
.L0d9f7230:
    # Line 194
    lw	$a0,4($sp)
.L0d9f7234:
    # Line 191
    addiu	$s4,$s4,-1
    # Line 204
    addiu	$a0,$a0,1
    sw	$a0,4($sp)
    # Line 191
    beq	$s4,$s2,.L0d9f72b8
    # Line 203
    add.s	$f22,$f24,$f22
.L0d9f7248:
    # Line 192
    ldc1	$f20,80($sp)
    # Line 193
    sw	$s5,0($sp)
    # Line 194
    bltz	$s6,.L0d9f7234
    move	$s0,$s6
    b	.L0d9f727c
    # Line 195
    mov.s	$f12,$f20
.L0d9f7260:
    # Line 194
    addiu	$s0,$s0,-1
.L0d9f7264:
    # Line 201
    lw	$t8,0($sp)
    # Line 200
    add.s	$f20,$f24,$f20
    # Line 201
    addiu	$t8,$t8,1
    # Line 194
    beq	$s0,$s2,.L0d9f7230
    # Line 201
    sw	$t8,0($sp)
    # Line 195
    mov.s	$f12,$f20
.L0d9f727c:
    move	$t9,$s1
    mov.s	$f13,$f22
    bal __glBuildAntiAliasIndex
    mov.s	$f14,$f26
    c.lt.s	$f28,$f0
    bc1f	.L0d9f7260
    nop
    # Line 197
    mul.s	$f27,$f0,$f30
    swc1	$f27,24($sp)
    # Line 198
    lw	$t9,12664($s3)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11816($s3)
    b	.L0d9f7264
    # Line 194
    addiu	$s0,$s0,-1
.L0d9f72b8:
    ld	$s2,184($sp)
    ld	$s6,192($sp)
    ldc1	$f28,200($sp)
.L0d9f72c4:
    ld	$s3,96($sp)
    ld	$s4,168($sp)
    ld	$s0,104($sp)
    ld	$s1,112($sp)
    ld	$s5,176($sp)
    ldc1	$f20,64($sp)
    ldc1	$f26,72($sp)
    ldc1	$f22,128($sp)
    ld	$ra,160($sp)
    ldc1	$f24,136($sp)
    ldc1	$f30,144($sp)
    # Line 206
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glRenderAntiAliasedRGBPoint

# Function: __glRenderAntiAliasedCIPoint
# Declared: Line 208 (Source lines: 209-284)
# Address: 0x0d9f7300 - 0x0d9f7534 (Size: 564 bytes, Frame: 208)
.globl __glRenderAntiAliasedCIPoint
.ent __glRenderAntiAliasedCIPoint
__glRenderAntiAliasedCIPoint:
    # Line 209
    addiu	$sp,$sp,-208
    sdc1	$f30,120($sp)
    sd	$ra,136($sp)
    # Line 246
    lwc1	$f23,136($a1)
    # Line 226
    lwc1	$f0,128($a1)
    # Line 224
    lwc1	$f21,3540($a0)
    # Line 209
    sdc1	$f28,64($sp)
    # Line 246
    trunc.l.s	$f23,$f23
    # Line 227
    lwc1	$f28,132($a1)
    # Line 209
    sdc1	$f20,56($sp)
    # Line 246
    dmfc1	$a4,$f23
    # Line 224
    lwc1	$f20,460($a0)
    # Line 246
    sll	$a4,$a4,0x0
    sw	$a4,8($sp)
    lbu	$at,30576($a0)
    # Line 209
    move	$a3,$a1
    sd	$s3,88($sp)
    lui	$v0,0xa
    move	$s3,$a0
    sd	$s0,152($sp)
    addiu	$v0,$v0,-25384
    sd	$gp,96($sp)
    addu	$gp,$t9,$v0
    # Line 246
    beqz	$at,.L0d9f737c
    # Line 224
    mul.s	$f20,$f20,$f21
    # Line 248
    lwc1	$f25,30544($a0)
    trunc.l.s	$f25,$f25
    dmfc1	$a5,$f25
    sll	$a5,$a5,0x0
    addu	$a5,$a5,$a4
    sw	$a5,8($sp)
.L0d9f737c:
    # Line 251
    lw	$a7,8($a3)
    lwc1	$f30,0($a7)
    swc1	$f30,12($sp)
    lw	$a6,30492($s3)
    sdc1	$f22,104($sp)
    sdc1	$f24,112($sp)
    andi	$a6,$a6,0x1000
    sd	$s4,144($sp)
    beqz	$a6,.L0d9f73c4
    sd	$s5,160($sp)
    # Line 253
    lw	$t9,12584($s3)
    sdc1	$f0,128($sp)
    move	$a0,$s3
    lwc1	$f14,104($a3)
    jalr	$t9
    addiu	$a1,$sp,0
    ldc1	$f0,128($sp)
    lwc1	$f30,12($sp)
.L0d9f73c4:
    # Line 269
    add.s	$f24,$f20,$f28
    trunc.w.s	$f24,$f24
    # Line 266
    sub.s	$f29,$f0,$f20
    # Line 267
    sub.s	$f23,$f28,$f20
    # Line 266
    trunc.w.s	$f29,$f29
    # Line 267
    trunc.w.s	$f23,$f23
    # Line 266
    cvt.s.w	$f27,$f29
    lwc1	$f31,3540($s3)
    # Line 267
    cvt.s.w	$f22,$f23
    mfc1	$a0,$f23
    # Line 269
    mfc1	$s4,$f24
    # Line 266
    add.s	$f27,$f27,$f31
    # Line 264
    lwc1	$f24,3544($s3)
    # Line 269
    subu	$s4,$s4,$a0
    # Line 267
    add.s	$f22,$f22,$f31
    # Line 268
    swc1	$f23,4($sp)
    # Line 266
    sub.s	$f27,$f27,$f0
    mfc1	$s5,$f29
    # Line 267
    sub.s	$f22,$f22,$f28
    # Line 269
    bltz	$s4,.L0d9f7500
    # Line 266
    sdc1	$f27,72($sp)
    # Line 269
    add.s	$f25,$f20,$f0
    sd	$s1,184($sp)
    trunc.w.s	$f25,$f25
    la	$s1,sub_0d9f0000
    sd	$s6,168($sp)
    mfc1	$s6,$f25
    mtc1	$zero,$f28
    sd	$s2,176($sp)
    li	$s2,-1
    sdc1	$f26,192($sp)
    addiu	$s1,$s1,28448
    subu	$s6,$s6,$s5
    mul.s	$f26,$f20,$f20
    addiu	$t8,$s6,1
    b	.L0d9f7478
    sd	$t8,80($sp)
    nop
    nop
.L0d9f7460:
    # Line 272
    lw	$a0,4($sp)
.L0d9f7464:
    # Line 269
    addiu	$s4,$s4,-1
    # Line 282
    addiu	$a0,$a0,1
    sw	$a0,4($sp)
    # Line 269
    beq	$s4,$s2,.L0d9f74f0
    # Line 281
    add.s	$f22,$f24,$f22
.L0d9f7478:
    # Line 270
    ldc1	$f20,72($sp)
    # Line 271
    sw	$s5,0($sp)
    # Line 272
    bltz	$s6,.L0d9f7464
    move	$s0,$s6
    b	.L0d9f74ac
    # Line 273
    mov.s	$f12,$f20
.L0d9f7490:
    # Line 272
    addiu	$s0,$s0,-1
.L0d9f7494:
    # Line 279
    lw	$t8,0($sp)
    # Line 278
    add.s	$f20,$f24,$f20
    # Line 279
    addiu	$t8,$t8,1
    # Line 272
    beq	$s0,$s2,.L0d9f7460
    # Line 279
    sw	$t8,0($sp)
    # Line 273
    mov.s	$f12,$f20
.L0d9f74ac:
    move	$t9,$s1
    mov.s	$f13,$f22
    bal __glBuildAntiAliasIndex
    mov.s	$f14,$f26
    c.lt.s	$f28,$f0
    bc1f	.L0d9f7490
    # Line 275
    nop	# was lw $t9, -27412($gp) # &__glBuildAntiAliasIndex
    mov.s	$f12,$f30
    bal __glBuildAntiAliasIndex
    mov.s	$f13,$f0
    swc1	$f0,12($sp)
    # Line 276
    lw	$t9,12664($s3)
    addiu	$a1,$sp,0
    jal	__glBuildAntiAliasIndex
    lw	$a0,11816($s3)
    b	.L0d9f7494
    # Line 272
    addiu	$s0,$s0,-1
.L0d9f74f0:
    ld	$s6,168($sp)
    ld	$s2,176($sp)
    ld	$s1,184($sp)
    ldc1	$f26,192($sp)
.L0d9f7500:
    ld	$s3,88($sp)
    ld	$s4,144($sp)
    ld	$s0,152($sp)
    ld	$s5,160($sp)
    ldc1	$f20,56($sp)
    ldc1	$f22,104($sp)
    ldc1	$f24,112($sp)
    ld	$ra,136($sp)
    ldc1	$f28,64($sp)
    ldc1	$f30,120($sp)
    # Line 284
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glRenderAntiAliasedCIPoint

.rdata
_lit_3d800000:
    .word 0x3d800000
_lit_3e800000:
    .word 0x3e800000
_lit_3f000000:
    .word 0x3f000000
_lit_41700000:
    .word 0x41700000
_lit_bec00000:
    .word 0xbec00000

