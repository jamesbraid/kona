# Source: ../KONA/kon_pixel_transform.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_pixel_transform.c
# Total Functions: 8

.text

# Function: __glkonim_PixelTransformSGI
# Declared: Line 44 (Source lines: 45-57)
# Address: 0x0d98cdb0 - 0x0d98ce18 (Size: 104 bytes, Frame: 16)
.globl __glkonim_PixelTransformSGI
.ent __glkonim_PixelTransformSGI
__glkonim_PixelTransformSGI:
    # Line 48
    li	$v0,0x81c5
    # Line 45
    lui	$at,0x10
    addiu	$sp,$sp,-16
    addiu	$at,$at,16936
    sd	$gp,0($sp)
    # Line 48
    beq	$a0,$v0,.L0d98cdec
    # Line 45
    addu	$gp,$t9,$at
    # Line 48
    li	$v0,0x81c6
    beq	$a0,$v0,.L0d98cdec
    # Line 54
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d98ce0c
    ld	$ra,8($sp)
.L0d98cdec:
    # Line 56
    li	$a1,309
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    # Line 51
    lw	$v1,4112($zero)
    # Line 57
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 51
    sw	$a0,1380($v1)
.L0d98ce0c:
    # Line 57
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_PixelTransformSGI

# Function: __glkonim_PixelTransformParameterfSGI
# Declared: Line 65 (Source lines: 70-89)
# Address: 0x0d98ce20 - 0x0d98ced0 (Size: 176 bytes, Frame: 48)
.globl __glkonim_PixelTransformParameterfSGI
.ent __glkonim_PixelTransformParameterfSGI
__glkonim_PixelTransformParameterfSGI:
    # Line 70
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 79
    li	$a6,0x8013
    # Line 70
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x10
    # Line 73
    li	$a5,0x81c6
    sd	$ra,8($sp)
    # Line 70
    addiu	$v1,$v1,16824
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d98cebc
    addu	$gp,$t9,$v1
    # Line 73
    li	$a2,0x8010
    beq	$a0,$a2,.L0d98ce90
    li	$a3,0x8011
    beq	$a0,$a3,.L0d98ce90
    li	$a4,0x8012
    beq	$a0,$a4,.L0d98ce90
    nop
    beq	$a0,$a5,.L0d98ceac
    # Line 88
    nop	# was lw $t9, -31052($gp) # &__glkonim_PixelTransformParameterfvSGI
    # Line 74
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d98ce84:
    # Line 89
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d98ce90:
    # Line 79
    beq	$a1,$a6,.L0d98cea8
    # Line 80
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98ce84
    ld	$ra,8($sp)
.L0d98cea8:
    # Line 88
    # lw $t9, -31052($gp) # &__glkonim_PixelTransformParameterfvSGI
.L0d98ceac:
    bal __glkonim_PixelTransformParameterfvSGI
    addiu	$a2,$sp,32
    b	.L0d98ce84
    ld	$ra,8($sp)
.L0d98cebc:
    # Line 71
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98ce84
    ld	$ra,8($sp)
.end __glkonim_PixelTransformParameterfSGI

# Function: __glkonim_PixelTransformParameterfvSGI
# Declared: Line 91 (Source lines: 96-158)
# Address: 0x0d98ced0 - 0x0d98d0fc (Size: 556 bytes, Frame: 16)
.globl __glkonim_PixelTransformParameterfvSGI
.ent __glkonim_PixelTransformParameterfvSGI
__glkonim_PixelTransformParameterfvSGI:
    # Line 115
    li	$t0,0x81c9
    # Line 96
    addiu	$sp,$sp,-16
    # Line 99
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 96
    lui	$v1,0x10
    # Line 125
    li	$t2,0x8013
    sd	$ra,8($sp)
    # Line 96
    addiu	$v1,$v1,16648
    sd	$gp,0($sp)
    # Line 99
    beq	$at,$v0,.L0d98d088
    # Line 96
    addu	$gp,$t9,$v1
    # Line 101
    li	$a3,0x8010
    # Line 120
    li	$t9,248
    # Line 101
    beq	$a0,$a3,.L0d98cf70
    # Line 115
    li	$t1,0x81ca
    # Line 101
    li	$a5,0x8011
    beq	$a0,$a5,.L0d98cfc8
    li	$a6,0x8012
    beq	$a0,$a6,.L0d98d028
    # Line 111
    addiu	$a5,$a4,936
    # Line 101
    li	$a7,0x81c6
    beq	$a0,$a7,.L0d98cf44
    nop
    # Line 102
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98cf64
    ld	$ra,8($sp)
.L0d98cf44:
    # Line 115
    beq	$a1,$t0,.L0d98cfa4
    ld	$ra,8($sp)
    beq	$a1,$t1,.L0d98cfa4
    nop
    # Line 116
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d98cf64:
    # Line 158
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d98cf70:
    # Line 105
    addiu	$a5,$a4,768
.L0d98cf74:
    # Line 125
    li	$t8,0x8015
.L0d98cf78:
    li	$t3,0x8014
    beq	$a1,$t2,.L0d98d030
    # Line 153
    li	$a3,249
    # Line 125
    beq	$a1,$t3,.L0d98d09c
    ld	$ra,8($sp)
    beq	$a1,$t8,.L0d98cfd0
    # Line 126
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98cf64
    ld	$ra,8($sp)
.L0d98cfa4:
    # Line 120
    sw	$t9,16384($zero)
    lwc1	$f0,0($a2)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    # Line 158
    ld	$gp,0($sp)
    # Line 120
    trunc.w.s	$f0,$f0
    # Line 158
    addiu	$sp,$sp,16
    jr	$ra
    # Line 120
    swc1	$f0,16384($zero)
.L0d98cfc8:
    # Line 109
    b	.L0d98cf74
    # Line 108
    addiu	$a5,$a4,852
.L0d98cfd0:
    # Line 149
    lwc1	$f4,0($a2)
    # Line 158
    ld	$gp,0($sp)
    # Line 149
    swc1	$f4,32($a5)
    # Line 150
    lwc1	$f3,4($a2)
    # Line 153
    sw	$a3,16384($zero)
    # Line 150
    swc1	$f3,36($a5)
    # Line 151
    lwc1	$f2,8($a2)
    # Line 153
    sw	$a0,16384($zero)
    # Line 151
    swc1	$f2,40($a5)
    # Line 152
    lwc1	$f1,12($a2)
    # Line 153
    sw	$a1,16384($zero)
    # Line 152
    swc1	$f1,44($a5)
    # Line 153
    lw	$at,12($a2)
    lw	$v0,8($a2)
    lw	$v1,4($a2)
    lw	$a2,0($a2)
    sw	$a2,16384($zero)
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    # Line 158
    addiu	$sp,$sp,16
    jr	$ra
    # Line 153
    sw	$at,16384($zero)
.L0d98d028:
    # Line 112
    b	.L0d98cf78
    # Line 125
    li	$t8,0x8015
.L0d98d030:
    # Line 129
    lwc1	$f5,0($a2)
    trunc.w.s	$f5,$f5
    mfc1	$a6,$f5
    li	$a4,0x8016
    ld	$ra,8($sp)
    beq	$a4,$a6,.L0d98d060
    # Line 136
    li	$a7,248
    # Line 130
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98cf64
    ld	$ra,8($sp)
.L0d98d060:
    # Line 136
    sw	$a7,16384($zero)
    # Line 133
    sw	$a4,4($a5)
    # Line 136
    lwc1	$f6,0($a2)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    # Line 158
    ld	$gp,0($sp)
    # Line 136
    trunc.w.s	$f6,$f6
    # Line 158
    addiu	$sp,$sp,16
    jr	$ra
    # Line 136
    swc1	$f6,16384($zero)
.L0d98d088:
    # Line 99
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98cf64
    ld	$ra,8($sp)
.L0d98d09c:
    # Line 158
    ld	$gp,0($sp)
    # Line 140
    lwc1	$f10,0($a2)
    # Line 144
    li	$t8,249
    sw	$t8,16384($zero)
    # Line 140
    swc1	$f10,16($a5)
    # Line 141
    lwc1	$f9,4($a2)
    # Line 144
    sw	$a0,16384($zero)
    # Line 141
    swc1	$f9,20($a5)
    # Line 142
    lwc1	$f8,8($a2)
    # Line 144
    sw	$a1,16384($zero)
    # Line 142
    swc1	$f8,24($a5)
    # Line 143
    lwc1	$f7,12($a2)
    ld	$ra,8($sp)
    swc1	$f7,28($a5)
    # Line 144
    lw	$t0,12($a2)
    lw	$t1,8($a2)
    lw	$t2,4($a2)
    lw	$t3,0($a2)
    sw	$t3,16384($zero)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    # Line 158
    addiu	$sp,$sp,16
    jr	$ra
    # Line 144
    sw	$t0,16384($zero)
.end __glkonim_PixelTransformParameterfvSGI

# Function: __glkonim_PixelTransformParameteriSGI
# Declared: Line 160 (Source lines: 165-167)
# Address: 0x0d98d100 - 0x0d98d138 (Size: 56 bytes, Frame: 16)
.globl __glkonim_PixelTransformParameteriSGI
.ent __glkonim_PixelTransformParameteriSGI
__glkonim_PixelTransformParameteriSGI:
    # Line 165
    lui	$at,0x10
    addiu	$sp,$sp,-16
    addiu	$at,$at,16088
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 166
    mtc1	$a2,$f14
    # lw $t9, -31056($gp) # &__glkonim_PixelTransformParameterfSGI
    # Line 165
    sd	$ra,0($sp)
    # Line 166
    bal __glkonim_PixelTransformParameterfSGI
    cvt.s.w	$f14,$f14
    ld	$ra,0($sp)
    # Line 167
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_PixelTransformParameteriSGI

# Function: __glkonim_PixelTransformParameterivSGI
# Declared: Line 169 (Source lines: 174-186)
# Address: 0x0d98d140 - 0x0d98d27c (Size: 316 bytes, Frame: 192)
.globl __glkonim_PixelTransformParameterivSGI
.ent __glkonim_PixelTransformParameterivSGI
__glkonim_PixelTransformParameterivSGI:
    # Line 174
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a0,24($sp)
    lw	$at,4120($zero)
    sd	$s0,32($sp)
    li	$v0,1
    lui	$v1,0x10
    move	$s0,$a1
    sd	$ra,48($sp)
    addiu	$v1,$v1,16024
    sd	$gp,40($sp)
    beq	$at,$v0,.L0d98d254
    addu	$gp,$t9,$v1
    # Line 180
    # lw $t9, -26888($gp) # &__glPixelTransformParameterfvSGI_size
    jal	__glPixelTransformParameterfvSGI_size
    move	$a0,$a1
    # Line 184
    ld	$a7,16($sp)
    # Line 180
    bltz	$v0,.L0d98d268
    move	$a1,$v0
    # Line 184
    blez	$v0,.L0d98d22c
    sll	$a5,$a1,0x2
    sra	$t1,$a1,0x2
    andi	$a6,$a1,0x3
    move	$a2,$a7
    addiu	$v0,$sp,0
    beqz	$a6,.L0d98d1cc
    addu	$a5,$a5,$a7
.L0d98d1ac:
    lw	$t0,0($a2)
    mtc1	$t0,$f0
    cvt.s.w	$f0,$f0
    addiu	$a6,$a6,-1
    addiu	$v0,$v0,4
    addiu	$a2,$a2,4
    bnez	$a6,.L0d98d1ac
    swc1	$f0,-4($v0)
.L0d98d1cc:
    beqz	$t1,.L0d98d22c
    nop
    nop
    nop
    nop
.L0d98d1e0:
    lw	$t9,0($a2)
    mtc1	$t9,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,0($v0)
    lw	$t8,4($a2)
    mtc1	$t8,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,4($v0)
    lw	$t3,8($a2)
    mtc1	$t3,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,8($v0)
    lw	$t2,12($a2)
    mtc1	$t2,$f1
    cvt.s.w	$f1,$f1
    addiu	$a2,$a2,16
    addiu	$v0,$v0,16
    bne	$a2,$a5,.L0d98d1e0
    swc1	$f1,-4($v0)
.L0d98d22c:
    # Line 185
    # lw $t9, -31052($gp) # &__glkonim_PixelTransformParameterfvSGI
    move	$a1,$s0
    ld	$a0,24($sp)
    bal __glkonim_PixelTransformParameterfvSGI
    addiu	$a2,$sp,0
    ld	$ra,48($sp)
.L0d98d244:
    ld	$s0,32($sp)
    # Line 186
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d98d254:
    # Line 179
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98d244
    ld	$ra,48($sp)
.L0d98d268:
    # Line 181
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98d244
    ld	$ra,48($sp)
.end __glkonim_PixelTransformParameterivSGI

# Function: GetPixelTransformParameterfvSGI
# Declared: Line 195 (Source lines: 200-271)
# Address: 0x0d98d280 - 0x0d98d504 (Size: 644 bytes, Frame: 16)
.ent GetPixelTransformParameterfvSGI
GetPixelTransformParameterfvSGI:
    # Line 203
    lw	$at,4120($zero)
    li	$v1,1
    # Line 200
    move	$v0,$a0
    # Line 203
    lw	$a6,4112($zero)
    # Line 200
    addiu	$sp,$sp,-16
    move	$a5,$a1
    # Line 203
    beq	$at,$v1,.L0d98d4a8
    sd	$ra,8($sp)
    # Line 208
    li	$a0,0x8010
    # Line 212
    li	$t2,0x801b
    # Line 208
    beq	$v0,$a0,.L0d98d328
    # Line 212
    li	$t1,0x8019
    # Line 208
    li	$a1,0x8011
    beq	$v0,$a1,.L0d98d36c
    li	$a3,0x8012
    beq	$v0,$a3,.L0d98d374
    # Line 222
    addiu	$a1,$a6,936
    # Line 208
    li	$a4,0x81c6
    beq	$v0,$a4,.L0d98d2e8
    # Line 209
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    li	$v0,-1
    # Line 240
    jr	$ra
    addiu	$sp,$sp,16
.L0d98d2e8:
    # Line 225
    li	$a6,0x81c9
    beq	$a5,$a6,.L0d98d4bc
    li	$a7,0x81ca
    beq	$a5,$a7,.L0d98d4c0
    # Line 230
    nop	# was lw $t9, -32116($gp) # &__glkon_get_special2
    # Line 225
    li	$t0,0x81c8
    beq	$a5,$t0,.L0d98d390
    sd	$a2,0($sp)
    # Line 226
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    li	$a0,-1
.L0d98d318:
    ld	$ra,8($sp)
    # Line 240
    move	$v0,$a0
    jr	$ra
    addiu	$sp,$sp,16
.L0d98d328:
    # Line 212
    beq	$a1,$t1,.L0d98d4f4
    # Line 213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 212
    beq	$a1,$t2,.L0d98d4f4
    # Line 213
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 216
    addiu	$a1,$a6,768
.L0d98d33c:
    # Line 237
    lui	$v1,0xffff
.L0d98d340:
    ori	$v1,$v1,0x7fed
    la	$v0,.rodata
    addu	$v1,$a5,$v1
    sltiu	$a0,$v1,9
    addiu	$v0,$v0,1592
    sll	$v1,$v1,0x2
    beqz	$a0,.L0d98d37c
    addu	$v0,$v0,$v1
    lw	$a0,0($v0)
    jr	$a0
    nop
.L0d98d36c:
    # Line 220
    b	.L0d98d33c
    # Line 219
    addiu	$a1,$a6,852
.L0d98d374:
    # Line 223
    b	.L0d98d340
    # Line 237
    lui	$v1,0xffff
.L0d98d37c:
    # Line 240
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98d318
    li	$a0,-1
.L0d98d390:
    # Line 234
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    move	$a0,$a5
    jal	__glkonim_GetFloatv
    ld	$a1,0($sp)
    # Line 235
    b	.L0d98d318
    li	$a0,1
.L0d98d3a8:
    # Line 243
    lw	$a1,8($a1)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f0
    ld	$ra,8($sp)
    cvt.s.l	$f0,$f0
    # Line 244
    li	$v0,1
    # Line 240
    addiu	$sp,$sp,16
    jr	$ra
    # Line 243
    swc1	$f0,0($a2)
.L0d98d3d0:
    # Line 255
    lw	$a3,76($a1)
    mtc1	$a3,$f1
    cvt.s.w	$f1,$f1
    # Line 256
    li	$a0,1
    b	.L0d98d318
    # Line 255
    swc1	$f1,0($a2)
.L0d98d3e8:
    # Line 252
    lw	$a4,72($a1)
    mtc1	$a4,$f2
    cvt.s.w	$f2,$f2
    # Line 253
    li	$a0,1
    b	.L0d98d318
    # Line 252
    swc1	$f2,0($a2)
.L0d98d400:
    # Line 249
    lw	$a5,68($a1)
    mtc1	$a5,$f3
    cvt.s.w	$f3,$f3
    # Line 250
    li	$a0,1
    b	.L0d98d318
    # Line 249
    swc1	$f3,0($a2)
.L0d98d418:
    # Line 246
    lw	$a6,64($a1)
    mtc1	$a6,$f4
    ld	$ra,8($sp)
    cvt.s.w	$f4,$f4
    # Line 247
    li	$v0,1
    # Line 240
    addiu	$sp,$sp,16
    jr	$ra
    # Line 246
    swc1	$f4,0($a2)
.L0d98d438:
    # Line 267
    lwc1	$f8,32($a1)
    swc1	$f8,0($a2)
    # Line 268
    lwc1	$f7,36($a1)
    swc1	$f7,4($a2)
    # Line 269
    lwc1	$f6,40($a1)
    swc1	$f6,8($a2)
    # Line 270
    lwc1	$f5,44($a1)
    # Line 271
    li	$a0,4
    b	.L0d98d318
    # Line 270
    swc1	$f5,12($a2)
.L0d98d460:
    # Line 261
    lwc1	$f12,16($a1)
    swc1	$f12,0($a2)
    # Line 262
    lwc1	$f11,20($a1)
    swc1	$f11,4($a2)
    # Line 263
    lwc1	$f10,24($a1)
    swc1	$f10,8($a2)
    # Line 264
    lwc1	$f9,28($a1)
    # Line 265
    li	$a0,4
    b	.L0d98d318
    # Line 264
    swc1	$f9,12($a2)
.L0d98d488:
    # Line 258
    lw	$a7,4($a1)
    dsll32	$a7,$a7,0x0
    dsrl32	$a7,$a7,0x0
    dmtc1	$a7,$f13
    cvt.s.l	$f13,$f13
    # Line 259
    li	$a0,1
    b	.L0d98d318
    # Line 258
    swc1	$f13,0($a2)
.L0d98d4a8:
    # Line 205
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 206
    b	.L0d98d318
    li	$a0,-1
.L0d98d4bc:
    # Line 230
    # lw $t9, -32116($gp) # &__glkon_get_special2
.L0d98d4c0:
    sd	$a2,0($sp)
    move	$a2,$a5
    move	$a1,$v0
    jal	__glkon_get_special2
    li	$a0,250
    lw	$t1,0($v0)
    mtc1	$t1,$f14
    cvt.s.w	$f14,$f14
    # Line 231
    ld	$t0,0($sp)
    li	$a0,1
    b	.L0d98d318
    # Line 230
    swc1	$f14,0($t0)
    # Line 213
    # lw $t9, -28616($gp) # &__glSetError
.L0d98d4f4:
    jal	__glSetError
    li	$a0,1280
    # Line 214
    b	.L0d98d318
    li	$a0,-1
.end GetPixelTransformParameterfvSGI

# Function: __glkonim_GetPixelTransformParameterfvSGI
# Declared: Line 275 (Source lines: 280-282)
# Address: 0x0d98d510 - 0x0d98d548 (Size: 56 bytes, Frame: 16)
.globl __glkonim_GetPixelTransformParameterfvSGI
.ent __glkonim_GetPixelTransformParameterfvSGI
__glkonim_GetPixelTransformParameterfvSGI:
    # Line 280
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x10
    addiu	$ra,$ra,15048
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 281
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-11648
    bal __glkonim_PixelTransformParameterivSGI
    nop
    ld	$ra,0($sp)
    # Line 282
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_GetPixelTransformParameterfvSGI

# Function: __glkonim_GetPixelTransformParameterivSGI
# Declared: Line 284 (Source lines: 289-295)
# Address: 0x0d98d550 - 0x0d98d618 (Size: 200 bytes, Frame: 48)
.globl __glkonim_GetPixelTransformParameterivSGI
.ent __glkonim_GetPixelTransformParameterivSGI
__glkonim_GetPixelTransformParameterivSGI:
    # Line 289
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    lui	$ra,0x10
    addiu	$ra,$ra,14984
    sd	$gp,32($sp)
    addu	$gp,$t9,$ra
    # Line 293
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-11648
    # Line 289
    sd	$a2,16($sp)
    # Line 293
    bal __glkonim_PixelTransformParameterivSGI
    addiu	$a2,$sp,0
    ld	$ra,24($sp)
    blez	$v0,.L0d98d60c
    move	$a5,$v0
    andi	$a4,$a5,0x3
    addiu	$a2,$sp,0
    sll	$a3,$a5,0x2
    ld	$v0,16($sp)
    beqz	$a4,.L0d98d5bc
    addu	$a3,$a3,$sp
.L0d98d5a0:
    # Line 294
    lwc1	$f0,0($a2)
    addiu	$a4,$a4,-1
    addiu	$v0,$v0,4
    trunc.w.s	$f0,$f0
    addiu	$a2,$a2,4
    bnez	$a4,.L0d98d5a0
    swc1	$f0,-4($v0)
.L0d98d5bc:
    sra	$a4,$a5,0x2
    beqz	$a4,.L0d98d60c
    nop
    nop
    nop
.L0d98d5d0:
    lwc1	$f4,0($a2)
    trunc.w.s	$f4,$f4
    swc1	$f4,0($v0)
    lwc1	$f3,4($a2)
    trunc.w.s	$f3,$f3
    swc1	$f3,4($v0)
    lwc1	$f2,8($a2)
    trunc.w.s	$f2,$f2
    swc1	$f2,8($v0)
    lwc1	$f1,12($a2)
    addiu	$a2,$a2,16
    addiu	$v0,$v0,16
    trunc.w.s	$f1,$f1
    bne	$a2,$a3,.L0d98d5d0
    swc1	$f1,-4($v0)
.L0d98d60c:
    # Line 295
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glkonim_GetPixelTransformParameterivSGI

.late_rodata
jtbl_0da80638:
    .word .L0d98d488
    .word .L0d98d460
    .word .L0d98d438
    .word .L0d98d37c
    .word .L0d98d3a8
    .word .L0d98d418
    .word .L0d98d400
    .word .L0d98d3e8
    .word .L0d98d3d0

