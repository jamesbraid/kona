# Source: ../soft/so_polyspan.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polyspan.c
# Total Functions: 32

.text

# Function: __glProcessSpan
# Declared: Line 27 (Source lines: 28-49)
# Address: 0x0d9fdc40 - 0x0d9fdd24 (Size: 228 bytes, Frame: 192)
.globl __glProcessSpan
.ent __glProcessSpan
__glProcessSpan:
    # Line 33
    sb	$zero,30532($a0)
    # Line 28
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sd	$s3,48($sp)
    sd	$s2,0($sp)
    sd	$s4,8($sp)
    # Line 31
    lw	$s4,12284($a0)
    # Line 28
    move	$s2,$a0
    sd	$s0,32($sp)
    lui	$at,0x9
    # Line 33
    move	$s0,$a0
    sd	$s1,24($sp)
    # Line 28
    addiu	$at,$at,13208
    sd	$gp,16($sp)
    # Line 33
    blez	$s4,.L0d9fdcf4
    # Line 28
    addu	$gp,$t9,$at
    # Line 33
    sll	$s3,$s4,0x2
    move	$s1,$zero
    addu	$s3,$s3,$a0
    nop
.L0d9fdc90:
    # Line 35
    lw	$t9,12160($s0)
    jalr	$t9
    move	$a0,$s2
    bnez	$v0,.L0d9fdd1c
    # Line 34
    addiu	$s0,$s0,4
    addiu	$a0,$s1,1
    bne	$s0,$s3,.L0d9fdc90
    move	$s1,$a0
.L0d9fdcb0:
    # Line 41
    beq	$a0,$s4,.L0d9fdcf4
    nop
    lbu	$t8,30532($s2)
    bnez	$t8,.L0d9fdcf4
    slt	$t9,$a0,$s4
    sll	$s0,$a0,0x2
    beqz	$t9,.L0d9fdcf4
    addu	$s0,$s2,$s0
    b	.L0d9fdce4
    # Line 43
    lw	$t9,12220($s0)
.L0d9fdcd8:
    # Line 42
    beq	$s0,$s3,.L0d9fdcf4
    nop
    # Line 43
    lw	$t9,12220($s0)
.L0d9fdce4:
    jalr	$t9
    move	$a0,$s2
    beqz	$v0,.L0d9fdcd8
    # Line 42
    addiu	$s0,$s0,4
.L0d9fdcf4:
    ld	$s2,0($sp)
    ld	$s3,48($sp)
    ld	$s4,8($sp)
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    # Line 49
    move	$v0,$zero
    ld	$s1,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9fdd1c:
    # Line 37
    b	.L0d9fdcb0
    # Line 36
    addiu	$a0,$s1,1
.end __glProcessSpan

# Function: __glProcessReplicateSpan
# Declared: Line 58 (Source lines: 59-155)
# Address: 0x0d9fdd30 - 0x0d9fe608 (Size: 2264 bytes, Frame: 0)
.globl __glProcessReplicateSpan
.ent __glProcessReplicateSpan
__glProcessReplicateSpan:
    # Line 59
    li	$at,0x8080
    # Line 68
    sb	$zero,30532($a0)
    # Line 59
    subu	$sp,$sp,$at
    move	$v0,$s8
    sd	$v0,40($sp)
    sd	$s7,48($sp)
    # Line 66
    lw	$s7,12284($a0)
    # Line 59
    sd	$s5,64($sp)
    # Line 64
    lw	$s5,30304($a0)
    sd	$s4,24($sp)
    sd	$s0,32($sp)
    sd	$ra,16($sp)
    sd	$s3,88($sp)
    # Line 59
    sd	$s6,56($sp)
    # Line 65
    lw	$s6,12280($a0)
    # Line 59
    sd	$s1,80($sp)
    addu	$s8,$sp,$at
    lui	$at,0x9
    move	$s1,$a0
    sd	$s2,96($sp)
    addiu	$at,$at,12968
    sd	$gp,72($sp)
    # Line 68
    blez	$s6,.L0d9fddd0
    # Line 59
    addu	$gp,$t9,$at
    # Line 68
    move	$s3,$zero
    move	$s0,$a0
    sll	$s4,$s6,0x2
    move	$s2,$zero
    addu	$s4,$s4,$a0
    nop
    nop
    nop
.L0d9fddb0:
    # Line 70
    lw	$t9,12160($s0)
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0d9fe098
    # Line 69
    addiu	$s0,$s0,4
    addiu	$s3,$s3,4
    bne	$s0,$s4,.L0d9fddb0
    addiu	$s2,$s2,1
.L0d9fddd0:
    # Line 76
    lbu	$t8,3220($s1)
    beqz	$t8,.L0d9fe3cc
    lw	$a2,30520($s1)
    blez	$s5,.L0d9fded4
    # Line 79
    lui	$s3,0xffff
    andi	$a3,$s5,0x3
    # Line 76
    lui	$a0,0xffff
    move	$s2,$zero
    addu	$a0,$a0,$s8
    beqz	$a3,.L0d9fde30
    addiu	$a0,$a0,32752
.L0d9fddfc:
    # Line 80
    lwc1	$f3,0($a2)
    swc1	$f3,0($a0)
    lwc1	$f2,4($a2)
    swc1	$f2,4($a0)
    lwc1	$f1,8($a2)
    swc1	$f1,8($a0)
    addiu	$a3,$a3,-1
    lwc1	$f0,12($a2)
    # Line 79
    addiu	$s2,$s2,1
    # Line 80
    addiu	$a0,$a0,16
    addiu	$a2,$a2,16
    bnez	$a3,.L0d9fddfc
    swc1	$f0,-4($a0)
.L0d9fde30:
    sra	$a1,$s5,0x2
    beqz	$a1,.L0d9fded0
    nop
    nop
.L0d9fde40:
    lwc1	$f19,0($a2)
    swc1	$f19,0($a0)
    lwc1	$f18,4($a2)
    swc1	$f18,4($a0)
    lwc1	$f17,8($a2)
    swc1	$f17,8($a0)
    lwc1	$f16,12($a2)
    swc1	$f16,12($a0)
    lwc1	$f15,16($a2)
    swc1	$f15,16($a0)
    lwc1	$f14,20($a2)
    swc1	$f14,20($a0)
    lwc1	$f13,24($a2)
    swc1	$f13,24($a0)
    lwc1	$f12,28($a2)
    swc1	$f12,28($a0)
    lwc1	$f11,32($a2)
    swc1	$f11,32($a0)
    lwc1	$f10,36($a2)
    swc1	$f10,36($a0)
    lwc1	$f9,40($a2)
    swc1	$f9,40($a0)
    lwc1	$f8,44($a2)
    swc1	$f8,44($a0)
    lwc1	$f7,48($a2)
    swc1	$f7,48($a0)
    lwc1	$f6,52($a2)
    swc1	$f6,52($a0)
    lwc1	$f5,56($a2)
    swc1	$f5,56($a0)
    # Line 79
    addiu	$s2,$s2,4
    # Line 80
    lwc1	$f4,60($a2)
    addiu	$a0,$a0,64
    addiu	$a2,$a2,64
    # Line 79
    bne	$s5,$s2,.L0d9fde40
    # Line 80
    swc1	$f4,-4($a0)
.L0d9fded0:
    # Line 79
    lui	$s3,0xffff
.L0d9fded4:
    addu	$s3,$s3,$s8
    addiu	$s3,$s3,32752
.L0d9fdedc:
    # Line 89
    slt	$t9,$s6,$s7
    sd	$t9,8($sp)
    addiu	$t8,$s1,30720
    beqz	$t9,.L0d9fdf24
    sw	$t8,30536($s1)
    sll	$s2,$s7,0x2
    sll	$s0,$s6,0x2
    addu	$s2,$s2,$s1
    addu	$s0,$s0,$s1
    nop
    nop
    nop
    # Line 91
    lw	$t9,12160($s0)
.L0d9fdf10:
    jalr	$t9
    move	$a0,$s1
    # Line 90
    addiu	$s0,$s0,4
    bnel	$s0,$s2,.L0d9fdf10
    # Line 91
    lw	$t9,12160($s0)
.L0d9fdf24:
    # Line 94
    lbu	$t8,3220($s1)
    beqz	$t8,.L0d9fe460
    lw	$a0,30520($s1)
    blez	$s5,.L0d9fe024
    # Line 106
    ld	$at,8($sp)
    andi	$a3,$s5,0x3
    # Line 94
    move	$a2,$s3
    beqz	$a3,.L0d9fdf7c
    move	$s2,$zero
.L0d9fdf48:
    # Line 97
    lwc1	$f27,0($a2)
    swc1	$f27,0($a0)
    lwc1	$f25,4($a2)
    swc1	$f25,4($a0)
    lwc1	$f23,8($a2)
    swc1	$f23,8($a0)
    addiu	$a3,$a3,-1
    lwc1	$f21,12($a2)
    # Line 96
    addiu	$s2,$s2,1
    # Line 97
    addiu	$a0,$a0,16
    addiu	$a2,$a2,16
    bnez	$a3,.L0d9fdf48
    swc1	$f21,-4($a0)
.L0d9fdf7c:
    sra	$t9,$s5,0x2
    beqz	$t9,.L0d9fe020
    nop
    nop
    nop
.L0d9fdf90:
    lwc1	$f13,0($a2)
    swc1	$f13,0($a0)
    lwc1	$f12,4($a2)
    swc1	$f12,4($a0)
    lwc1	$f11,8($a2)
    swc1	$f11,8($a0)
    lwc1	$f10,12($a2)
    swc1	$f10,12($a0)
    lwc1	$f9,16($a2)
    swc1	$f9,16($a0)
    lwc1	$f8,20($a2)
    swc1	$f8,20($a0)
    lwc1	$f7,24($a2)
    swc1	$f7,24($a0)
    lwc1	$f6,28($a2)
    swc1	$f6,28($a0)
    lwc1	$f5,32($a2)
    swc1	$f5,32($a0)
    lwc1	$f4,36($a2)
    swc1	$f4,36($a0)
    lwc1	$f3,40($a2)
    swc1	$f3,40($a0)
    lwc1	$f2,44($a2)
    swc1	$f2,44($a0)
    lwc1	$f1,48($a2)
    swc1	$f1,48($a0)
    lwc1	$f0,52($a2)
    swc1	$f0,52($a0)
    lwc1	$f31,56($a2)
    swc1	$f31,56($a0)
    # Line 96
    addiu	$s2,$s2,4
    # Line 97
    lwc1	$f29,60($a2)
    addiu	$a0,$a0,64
    addiu	$a2,$a2,64
    # Line 96
    bne	$s5,$s2,.L0d9fdf90
    # Line 97
    swc1	$f29,-4($a0)
.L0d9fe020:
    # Line 106
    ld	$at,8($sp)
.L0d9fe024:
    ld	$s4,24($sp)
    ld	$s3,88($sp)
    addiu	$ra,$s1,30940
    beqz	$at,.L0d9fe064
    sw	$ra,30536($s1)
    sll	$s2,$s7,0x2
    sll	$s0,$s6,0x2
    addu	$s2,$s2,$s1
    addu	$s0,$s0,$s1
    nop
    # Line 108
    lw	$t9,12160($s0)
.L0d9fe050:
    jalr	$t9
    move	$a0,$s1
    # Line 107
    addiu	$s0,$s0,4
    bnel	$s0,$s2,.L0d9fe050
    # Line 108
    lw	$t9,12160($s0)
.L0d9fe064:
    ld	$s0,32($sp)
    ld	$s2,96($sp)
    # Line 110
    ld	$gp,72($sp)
    ld	$s1,80($sp)
    ld	$s5,64($sp)
    ld	$s6,56($sp)
    ld	$ra,16($sp)
    ld	$t8,40($sp)
    move	$v0,$zero
    ld	$s7,48($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t8
.L0d9fe098:
    # Line 71
    lbu	$t9,30532($s1)
    addiu	$a2,$s3,4
    beqz	$t9,.L0d9fe0e4
    addiu	$a0,$s2,1
    ld	$s0,32($sp)
    ld	$s4,24($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    # Line 110
    ld	$gp,72($sp)
    ld	$s1,80($sp)
    ld	$s5,64($sp)
    ld	$s6,56($sp)
    ld	$ra,16($sp)
    ld	$at,40($sp)
    # Line 113
    move	$v0,$zero
    # Line 110
    ld	$s7,48($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
.L0d9fe0e4:
    # Line 113
    slt	$v0,$a0,$s6
    beqz	$v0,.L0d9fe11c
    ld	$s3,88($sp)
    addu	$s0,$a2,$s1
    nop
    nop
    # Line 116
    lw	$t9,12220($s0)
.L0d9fe100:
    jalr	$t9
    move	$a0,$s1
    bnez	$v0,.L0d9fe4d8
    ld	$s2,96($sp)
    # Line 115
    addiu	$s0,$s0,4
    bnel	$s0,$s4,.L0d9fe100
    # Line 116
    lw	$t9,12220($s0)
.L0d9fe11c:
    # Line 134
    move	$s0,$s4
    # Line 121
    lbu	$v1,3220($s1)
    andi	$a3,$s5,0x3
    lui	$a0,0xffff
    move	$s2,$zero
    addu	$a0,$a0,$s8
    lw	$a2,30520($s1)
    beqz	$v1,.L0d9fe50c
    addiu	$a0,$a0,32752
    blez	$s5,.L0d9fe220
    nop
    beqz	$a3,.L0d9fe188
    sra	$a1,$s5,0x2
.L0d9fe150:
    # Line 125
    lwc1	$f17,0($a2)
    swc1	$f17,0($a0)
    lwc1	$f16,4($a2)
    swc1	$f16,4($a0)
    lwc1	$f15,8($a2)
    swc1	$f15,8($a0)
    addiu	$a3,$a3,-1
    lwc1	$f14,12($a2)
    # Line 124
    addiu	$s2,$s2,1
    # Line 125
    addiu	$a0,$a0,16
    addiu	$a2,$a2,16
    bnez	$a3,.L0d9fe150
    swc1	$f14,-4($a0)
    sra	$a1,$s5,0x2
.L0d9fe188:
    beqz	$a1,.L0d9fe220
    nop
.L0d9fe190:
    lwc1	$f7,0($a2)
    swc1	$f7,0($a0)
    lwc1	$f6,4($a2)
    swc1	$f6,4($a0)
    lwc1	$f5,8($a2)
    swc1	$f5,8($a0)
    lwc1	$f4,12($a2)
    swc1	$f4,12($a0)
    lwc1	$f3,16($a2)
    swc1	$f3,16($a0)
    lwc1	$f2,20($a2)
    swc1	$f2,20($a0)
    lwc1	$f1,24($a2)
    swc1	$f1,24($a0)
    lwc1	$f0,28($a2)
    swc1	$f0,28($a0)
    lwc1	$f31,32($a2)
    swc1	$f31,32($a0)
    lwc1	$f29,36($a2)
    swc1	$f29,36($a0)
    lwc1	$f27,40($a2)
    swc1	$f27,40($a0)
    lwc1	$f25,44($a2)
    swc1	$f25,44($a0)
    lwc1	$f23,48($a2)
    swc1	$f23,48($a0)
    lwc1	$f21,52($a2)
    swc1	$f21,52($a0)
    lwc1	$f19,56($a2)
    swc1	$f19,56($a0)
    # Line 124
    addiu	$s2,$s2,4
    # Line 125
    lwc1	$f18,60($a2)
    addiu	$a0,$a0,64
    addiu	$a2,$a2,64
    # Line 124
    bne	$s5,$s2,.L0d9fe190
    # Line 125
    swc1	$f18,-4($a0)
.L0d9fe220:
    # Line 134
    slt	$a3,$s6,$s7
.L0d9fe224:
    sd	$a3,8($sp)
    addiu	$a2,$s1,30720
    sll	$s2,$s7,0x2
    sw	$a2,30536($s1)
    beqz	$a3,.L0d9fe254
    addu	$s2,$s2,$s1
    # Line 136
    lw	$t9,12220($s0)
.L0d9fe240:
    jalr	$t9
    move	$a0,$s1
    # Line 135
    addiu	$s0,$s0,4
    bnel	$s0,$s2,.L0d9fe240
    # Line 136
    lw	$t9,12220($s0)
.L0d9fe254:
    # Line 139
    lbu	$t8,3220($s1)
    andi	$a3,$s5,0x3
    lui	$a2,0xffff
    move	$s2,$zero
    addu	$a2,$a2,$s8
    lw	$a0,30520($s1)
    beqz	$t8,.L0d9fe588
    addiu	$a2,$a2,32752
    blez	$s5,.L0d9fe364
    # Line 151
    ld	$a5,8($sp)
    beqz	$a3,.L0d9fe2b8
    nop
.L0d9fe284:
    # Line 142
    lwc1	$f11,0($a2)
    swc1	$f11,0($a0)
    lwc1	$f10,4($a2)
    swc1	$f10,4($a0)
    lwc1	$f9,8($a2)
    swc1	$f9,8($a0)
    addiu	$a3,$a3,-1
    lwc1	$f8,12($a2)
    # Line 141
    addiu	$s2,$s2,1
    # Line 142
    addiu	$a0,$a0,16
    addiu	$a2,$a2,16
    bnez	$a3,.L0d9fe284
    swc1	$f8,-4($a0)
.L0d9fe2b8:
    sra	$a3,$s5,0x2
    beqz	$a3,.L0d9fe360
    nop
    nop
    nop
    nop
.L0d9fe2d0:
    lwc1	$f1,0($a2)
    swc1	$f1,0($a0)
    lwc1	$f0,4($a2)
    swc1	$f0,4($a0)
    lwc1	$f31,8($a2)
    swc1	$f31,8($a0)
    lwc1	$f29,12($a2)
    swc1	$f29,12($a0)
    lwc1	$f27,16($a2)
    swc1	$f27,16($a0)
    lwc1	$f25,20($a2)
    swc1	$f25,20($a0)
    lwc1	$f23,24($a2)
    swc1	$f23,24($a0)
    lwc1	$f21,28($a2)
    swc1	$f21,28($a0)
    lwc1	$f19,32($a2)
    swc1	$f19,32($a0)
    lwc1	$f18,36($a2)
    swc1	$f18,36($a0)
    lwc1	$f17,40($a2)
    swc1	$f17,40($a0)
    lwc1	$f16,44($a2)
    swc1	$f16,44($a0)
    lwc1	$f15,48($a2)
    swc1	$f15,48($a0)
    lwc1	$f14,52($a2)
    swc1	$f14,52($a0)
    lwc1	$f13,56($a2)
    swc1	$f13,56($a0)
    # Line 141
    addiu	$s2,$s2,4
    # Line 142
    lwc1	$f12,60($a2)
    addiu	$a0,$a0,64
    addiu	$a2,$a2,64
    # Line 141
    bne	$s5,$s2,.L0d9fe2d0
    # Line 142
    swc1	$f12,-4($a0)
.L0d9fe360:
    # Line 151
    ld	$a5,8($sp)
.L0d9fe364:
    addiu	$a4,$s1,30940
    beqz	$a5,.L0d9fe394
    sw	$a4,30536($s1)
    sll	$s2,$s7,0x2
    move	$s0,$s4
    addu	$s2,$s2,$s1
    # Line 153
    lw	$t9,12220($s0)
.L0d9fe380:
    jalr	$t9
    move	$a0,$s1
    # Line 152
    addiu	$s0,$s0,4
    bnel	$s0,$s2,.L0d9fe380
    # Line 153
    lw	$t9,12220($s0)
.L0d9fe394:
    ld	$s0,32($sp)
    ld	$s2,96($sp)
    ld	$s4,24($sp)
    # Line 110
    ld	$gp,72($sp)
    ld	$s1,80($sp)
    ld	$s5,64($sp)
    ld	$s6,56($sp)
    ld	$ra,16($sp)
    ld	$t8,40($sp)
    # Line 155
    move	$v0,$zero
    # Line 110
    ld	$s7,48($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t8
.L0d9fe3cc:
    # Line 79
    blez	$s5,.L0d9fe454
    # Line 83
    lui	$s3,0xffff
    andi	$a3,$s5,0x3
    # Line 79
    lui	$a0,0xffff
    move	$s2,$zero
    addu	$a0,$a0,$s8
    beqz	$a3,.L0d9fe408
    addiu	$a0,$a0,32752
.L0d9fe3ec:
    addiu	$a3,$a3,-1
    # Line 84
    lwc1	$f2,0($a2)
    # Line 83
    addiu	$s2,$s2,1
    # Line 86
    addiu	$a0,$a0,16
    # Line 85
    addiu	$a2,$a2,16
    bnez	$a3,.L0d9fe3ec
    # Line 84
    swc1	$f2,-16($a0)
.L0d9fe408:
    sra	$a1,$s5,0x2
    beqz	$a1,.L0d9fe450
    nop
    nop
    nop
    nop
.L0d9fe420:
    lwc1	$f6,0($a2)
    swc1	$f6,0($a0)
    lwc1	$f5,16($a2)
    swc1	$f5,16($a0)
    lwc1	$f4,32($a2)
    swc1	$f4,32($a0)
    # Line 83
    addiu	$s2,$s2,4
    # Line 84
    lwc1	$f3,48($a2)
    # Line 86
    addiu	$a0,$a0,64
    # Line 85
    addiu	$a2,$a2,64
    # Line 83
    bne	$s5,$s2,.L0d9fe420
    # Line 84
    swc1	$f3,-16($a0)
.L0d9fe450:
    # Line 83
    lui	$s3,0xffff
.L0d9fe454:
    addu	$s3,$s3,$s8
    b	.L0d9fdedc
    addiu	$s3,$s3,32752
.L0d9fe460:
    # Line 96
    blez	$s5,.L0d9fe024
    # Line 106
    ld	$at,8($sp)
    andi	$a3,$s5,0x3
    # Line 96
    move	$a2,$s3
    beqz	$a3,.L0d9fe494
    move	$s2,$zero
.L0d9fe478:
    addiu	$a3,$a3,-1
    # Line 101
    lwc1	$f7,0($a2)
    # Line 100
    addiu	$s2,$s2,1
    # Line 103
    addiu	$a0,$a0,16
    # Line 102
    addiu	$a2,$a2,16
    bnez	$a3,.L0d9fe478
    # Line 101
    swc1	$f7,-16($a0)
.L0d9fe494:
    sra	$t8,$s5,0x2
    beqz	$t8,.L0d9fe4d0
    nop
.L0d9fe4a0:
    lwc1	$f11,0($a2)
    swc1	$f11,0($a0)
    lwc1	$f10,16($a2)
    swc1	$f10,16($a0)
    lwc1	$f9,32($a2)
    swc1	$f9,32($a0)
    # Line 100
    addiu	$s2,$s2,4
    # Line 101
    lwc1	$f8,48($a2)
    # Line 103
    addiu	$a0,$a0,64
    # Line 102
    addiu	$a2,$a2,64
    # Line 100
    bne	$s5,$s2,.L0d9fe4a0
    # Line 101
    swc1	$f8,-16($a0)
.L0d9fe4d0:
    b	.L0d9fe024
    # Line 106
    ld	$at,8($sp)
.L0d9fe4d8:
    # Line 110
    ld	$gp,72($sp)
    ld	$s0,32($sp)
    ld	$s1,80($sp)
    ld	$s4,24($sp)
    ld	$s5,64($sp)
    ld	$s6,56($sp)
    ld	$ra,16($sp)
    ld	$t9,40($sp)
    # Line 117
    move	$v0,$zero
    # Line 110
    ld	$s7,48($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t9
.L0d9fe50c:
    # Line 124
    blez	$s5,.L0d9fe580
    andi	$a3,$s5,0x3
    lui	$a0,0xffff
    move	$s2,$zero
    addu	$a0,$a0,$s8
    beqz	$a3,.L0d9fe544
    addiu	$a0,$a0,32752
.L0d9fe528:
    addiu	$a3,$a3,-1
    # Line 129
    lwc1	$f12,0($a2)
    # Line 128
    addiu	$s2,$s2,1
    # Line 131
    addiu	$a0,$a0,16
    # Line 130
    addiu	$a2,$a2,16
    bnez	$a3,.L0d9fe528
    # Line 129
    swc1	$f12,-16($a0)
.L0d9fe544:
    sra	$a1,$s5,0x2
    beqz	$a1,.L0d9fe580
    nop
.L0d9fe550:
    lwc1	$f16,0($a2)
    swc1	$f16,0($a0)
    lwc1	$f15,16($a2)
    swc1	$f15,16($a0)
    lwc1	$f14,32($a2)
    swc1	$f14,32($a0)
    # Line 128
    addiu	$s2,$s2,4
    # Line 129
    lwc1	$f13,48($a2)
    # Line 131
    addiu	$a0,$a0,64
    # Line 130
    addiu	$a2,$a2,64
    # Line 128
    bne	$s5,$s2,.L0d9fe550
    # Line 129
    swc1	$f13,-16($a0)
.L0d9fe580:
    b	.L0d9fe224
    # Line 134
    slt	$a3,$s6,$s7
.L0d9fe588:
    # Line 141
    blez	$s5,.L0d9fe364
    # Line 151
    ld	$a5,8($sp)
    andi	$a3,$s5,0x3
    # Line 141
    lui	$a2,0xffff
    move	$s2,$zero
    addu	$a2,$a2,$s8
    beqz	$a3,.L0d9fe5c4
    addiu	$a2,$a2,32752
.L0d9fe5a8:
    addiu	$a3,$a3,-1
    # Line 146
    lwc1	$f17,0($a2)
    # Line 145
    addiu	$s2,$s2,1
    # Line 148
    addiu	$a0,$a0,16
    # Line 147
    addiu	$a2,$a2,16
    bnez	$a3,.L0d9fe5a8
    # Line 146
    swc1	$f17,-16($a0)
.L0d9fe5c4:
    sra	$a3,$s5,0x2
    beqz	$a3,.L0d9fe600
    nop
.L0d9fe5d0:
    lwc1	$f23,0($a2)
    swc1	$f23,0($a0)
    lwc1	$f21,16($a2)
    swc1	$f21,16($a0)
    lwc1	$f19,32($a2)
    swc1	$f19,32($a0)
    # Line 145
    addiu	$s2,$s2,4
    # Line 146
    lwc1	$f18,48($a2)
    # Line 148
    addiu	$a0,$a0,64
    # Line 147
    addiu	$a2,$a2,64
    # Line 145
    bne	$s5,$s2,.L0d9fe5d0
    # Line 146
    swc1	$f18,-16($a0)
.L0d9fe600:
    b	.L0d9fe364
    # Line 151
    ld	$a5,8($sp)
.end __glProcessReplicateSpan

# Function: __glClipSpan
# Declared: Line 165 (Source lines: 172-254)
# Address: 0x0d9fe610 - 0x0d9fe794 (Size: 388 bytes, Frame: 0)
.globl __glClipSpan
.ent __glClipSpan
__glClipSpan:
    # Line 176
    lw	$a5,29756($a0)
    # Line 174
    lw	$a4,30252($a0)
    # Line 172
    lw	$t9,30304($a0)
    # Line 179
    slt	$a6,$a4,$a5
    # Line 177
    lw	$a3,29764($a0)
    # Line 179
    bnez	$a6,.L0d9fe634
    addu	$a2,$t9,$a4
    slt	$at,$a3,$a2
    beqz	$at,.L0d9fe770
.L0d9fe634:
    # Line 183
    slt	$v0,$a5,$a2
    beqz	$v0,.L0d9fe780
    slt	$v1,$a4,$a3
    beqz	$v1,.L0d9fe784
    # Line 185
    li	$v0,1
    # Line 186
    slt	$a1,$a3,$a2
    # Line 193
    subu	$a7,$a3,$a4
    beqz	$a6,.L0d9fe78c
    movn	$t9,$a7,$a1
    # Line 219
    subu	$a2,$a5,$a4
    # Line 221
    lw	$t8,30528($a0)
    # Line 222
    beqz	$t9,.L0d9fe768
    move	$t3,$t9
    li	$t2,-1
    li	$t0,32
.L0d9fe670:
    # Line 225
    li	$t1,32
    move	$a7,$t3
    slt	$t1,$t1,$t3
    movn	$a7,$t0,$t1
    # Line 232
    addiu	$a4,$a7,-1
    li	$a3,-1
    bltz	$a4,.L0d9fe75c
    # Line 228
    subu	$t3,$t3,$a7
    # Line 232
    lui	$a5,0x8000
    andi	$a6,$a7,0x3
    sra	$a1,$a7,0x2
    beqz	$a6,.L0d9fe6cc
    li	$a3,-1
.L0d9fe6a4:
    # Line 235
    nor	$v0,$a5,$zero
    # Line 238
    srl	$a5,$a5,0x1
    # Line 234
    addiu	$v1,$a2,-1
    addiu	$a6,$a6,-1
    slti	$at,$a2,1
    # Line 232
    addiu	$a4,$a4,-1
    movz	$a2,$v1,$at
    # Line 235
    and	$v0,$a3,$v0
    bnez	$a6,.L0d9fe6a4
    movz	$a3,$v0,$at
.L0d9fe6cc:
    beqz	$a1,.L0d9fe75c
    nop
    nop
    nop
    nop
.L0d9fe6e0:
    # Line 238
    srl	$t0,$a5,0x3
    srl	$at,$a5,0x2
    srl	$a1,$a5,0x1
    # Line 235
    nor	$a7,$a5,$zero
    # Line 238
    srl	$a5,$a5,0x4
    # Line 234
    addiu	$v0,$a2,-1
    slti	$a6,$a2,1
    # Line 232
    addiu	$a4,$a4,-4
    movn	$v0,$a2,$a6
    # Line 234
    addiu	$t1,$v0,-1
    slti	$v1,$v0,1
    # Line 235
    nor	$at,$at,$zero
    movz	$v0,$t1,$v1
    # Line 234
    addiu	$a2,$v0,-1
    slti	$t1,$v0,1
    movz	$v0,$a2,$t1
    # Line 235
    and	$a7,$a3,$a7
    nor	$a1,$a1,$zero
    movn	$a7,$a3,$a6
    # Line 234
    addiu	$a2,$v0,-1
    # Line 235
    and	$a1,$a7,$a1
    slti	$a6,$v0,1
    movz	$a7,$a1,$v1
    movn	$a2,$v0,$a6
    and	$at,$a7,$at
    nor	$a3,$t0,$zero
    movz	$a7,$at,$t1
    and	$a3,$a7,$a3
    # Line 232
    bne	$a4,$t2,.L0d9fe6e0
    movn	$a3,$a7,$a6
    li	$t0,32
.L0d9fe75c:
    # Line 244
    sw	$a3,0($t8)
    bnez	$t3,.L0d9fe670
    addiu	$t8,$t8,4
.L0d9fe768:
    b	.L0d9fe774
    li	$a3,1
.L0d9fe770:
    move	$a3,$zero
.L0d9fe774:
    # Line 252
    sw	$t9,30304($a0)
    # Line 254
    jr	$ra
    move	$v0,$a3
.L0d9fe780:
    # Line 185
    li	$v0,1
.L0d9fe784:
    # Line 254
    jr	$ra
    # Line 185
    sb	$v0,30532($a0)
.L0d9fe78c:
    b	.L0d9fe774
    # Line 244
    move	$a3,$zero
.end __glClipSpan

# Function: __glStippleSpan
# Declared: Line 260 (Source lines: 261-298)
# Address: 0x0d9fe7a0 - 0x0d9fe890 (Size: 240 bytes, Frame: 0)
.globl __glStippleSpan
.ent __glStippleSpan
__glStippleSpan:
    # Line 268
    lbu	$at,4848($a0)
    lw	$a5,30256($a0)
    # Line 261
    move	$a4,$a0
    # Line 268
    beqz	$at,.L0d9fe874
    lw	$a2,30304($a0)
    # Line 271
    lw	$a6,3664($a0)
    lw	$a3,3704($a0)
    subu	$a6,$a5,$a6
    subu	$a3,$a3,$a6
    addiu	$a3,$a3,-1
    andi	$a3,$a3,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a0,$a3
    lw	$a3,30064($a3)
.L0d9fe7d8:
    # Line 286
    li	$v0,1
    # Line 278
    lw	$a7,30252($a4)
    # Line 280
    li	$a6,32
    # Line 278
    andi	$a7,$a7,0x1f
    # Line 280
    sllv	$a5,$a3,$a7
    subu	$a6,$a6,$a7
    srlv	$a3,$a3,$a6
    or	$a3,$a3,$a5
    # Line 292
    addiu	$a7,$a2,31
    # Line 280
    beqz	$a3,.L0d9fe888
    # Line 292
    addiu	$a5,$a2,62
    slt	$a6,$a7,$zero
    blez	$a2,.L0d9fe86c
    lw	$a0,30528($a4)
    movz	$a5,$a7,$a6
    sra	$a5,$a5,0x5
    andi	$a4,$a5,0x7
    beqz	$a4,.L0d9fe838
    sra	$t0,$a5,0x3
.L0d9fe824:
    addiu	$a4,$a4,-1
    # Line 295
    addiu	$a2,$a2,-32
    # Line 294
    sw	$a3,0($a0)
    bnez	$a4,.L0d9fe824
    addiu	$a0,$a0,4
.L0d9fe838:
    beqz	$t0,.L0d9fe86c
    nop
.L0d9fe840:
    sw	$a3,0($a0)
    sw	$a3,4($a0)
    sw	$a3,8($a0)
    sw	$a3,12($a0)
    sw	$a3,16($a0)
    sw	$a3,20($a0)
    # Line 295
    addiu	$a2,$a2,-256
    # Line 294
    sw	$a3,24($a0)
    sw	$a3,28($a0)
    # Line 295
    bgtz	$a2,.L0d9fe840
    # Line 294
    addiu	$a0,$a0,32
.L0d9fe86c:
    # Line 298
    jr	$ra
    li	$v0,1
.L0d9fe874:
    # Line 275
    andi	$a3,$a5,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a0,$a3
    b	.L0d9fe7d8
    lw	$a3,30064($a3)
.L0d9fe888:
    # Line 298
    jr	$ra
    # Line 286
    sb	$v0,30532($a4)
.end __glStippleSpan

# Function: __glStippleStippledSpan
# Declared: Line 304 (Source lines: 305-342)
# Address: 0x0d9fe890 - 0x0d9fe9a0 (Size: 272 bytes, Frame: 0)
.globl __glStippleStippledSpan
.ent __glStippleStippledSpan
__glStippleStippledSpan:
    # Line 312
    lbu	$at,4848($a0)
    lw	$a5,30256($a0)
    # Line 305
    move	$a4,$a0
    # Line 312
    beqz	$at,.L0d9fe984
    lw	$a2,30304($a0)
    # Line 315
    lw	$a6,3664($a0)
    lw	$a3,3704($a0)
    subu	$a6,$a5,$a6
    subu	$a3,$a3,$a6
    addiu	$a3,$a3,-1
    andi	$a3,$a3,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a0,$a3
    lw	$a3,30064($a3)
.L0d9fe8c8:
    # Line 330
    li	$v0,1
    # Line 322
    lw	$a7,30252($a4)
    # Line 324
    li	$a6,32
    # Line 322
    andi	$a7,$a7,0x1f
    # Line 324
    sllv	$a5,$a3,$a7
    subu	$a6,$a6,$a7
    srlv	$a3,$a3,$a6
    or	$a3,$a3,$a5
    # Line 336
    addiu	$a7,$a2,31
    # Line 324
    beqz	$a3,.L0d9fe998
    # Line 336
    addiu	$a5,$a2,62
    slt	$a6,$a7,$zero
    blez	$a2,.L0d9fe97c
    lw	$a0,30528($a4)
    movz	$a5,$a7,$a6
    sra	$a5,$a5,0x5
    andi	$a4,$a5,0x3
    beqz	$a4,.L0d9fe930
    sra	$t1,$a5,0x2
.L0d9fe914:
    addiu	$a4,$a4,-1
    # Line 338
    lw	$t0,0($a0)
    # Line 339
    addiu	$a2,$a2,-32
    # Line 338
    addiu	$a0,$a0,4
    and	$t0,$t0,$a3
    bnez	$a4,.L0d9fe914
    sw	$t0,-4($a0)
.L0d9fe930:
    beqz	$t1,.L0d9fe97c
    nop
    nop
    nop
.L0d9fe940:
    addiu	$a0,$a0,16
    lw	$t2,-4($a0)
    lw	$t9,-16($a0)
    lw	$t3,-8($a0)
    lw	$t8,-12($a0)
    and	$t3,$t3,$a3
    sw	$t3,-8($a0)
    # Line 339
    addiu	$a2,$a2,-128
    # Line 338
    and	$t8,$t8,$a3
    sw	$t8,-12($a0)
    and	$t9,$t9,$a3
    sw	$t9,-16($a0)
    and	$t2,$t2,$a3
    # Line 339
    bgtz	$a2,.L0d9fe940
    # Line 338
    sw	$t2,-4($a0)
.L0d9fe97c:
    # Line 342
    jr	$ra
    move	$v0,$zero
.L0d9fe984:
    # Line 319
    andi	$a3,$a5,0x1f
    sll	$a3,$a3,0x2
    addu	$a3,$a0,$a3
    b	.L0d9fe8c8
    lw	$a3,30064($a3)
.L0d9fe998:
    # Line 342
    jr	$ra
    # Line 330
    sb	$v0,30532($a4)
.end __glStippleStippledSpan

# Function: __glAlphaTestSpan
# Declared: Line 352 (Source lines: 353-406)
# Address: 0x0d9fe9a0 - 0x0d9febfc (Size: 604 bytes, Frame: 48)
.globl __glAlphaTestSpan
.ent __glAlphaTestSpan
__glAlphaTestSpan:
    # Line 364
    lw	$a2,30520($a0)
    # Line 353
    addiu	$sp,$sp,-48
    sd	$s2,8($sp)
    # Line 366
    lw	$s2,30528($a0)
    sd	$ra,16($sp)
    # Line 363
    lw	$ra,30804($a0)
    # Line 353
    sd	$s1,0($sp)
    # Line 361
    lw	$s1,30304($a0)
    # Line 365
    lw	$t9,3716($a0)
    sd	$s3,32($sp)
    sd	$s0,24($sp)
    # Line 366
    beqz	$s1,.L0d9febdc
    # Line 365
    addiu	$t9,$t9,-1
    # Line 366
    move	$a4,$zero
    li	$s0,-1
    li	$s3,32
.L0d9fe9e0:
    # Line 370
    li	$at,32
    move	$t0,$s1
    slt	$at,$at,$s1
    movn	$t0,$s3,$at
    # Line 377
    addiu	$a5,$t0,-1
    li	$a3,-1
    bltz	$a5,.L0d9febb8
    # Line 373
    subu	$s1,$s1,$t0
    # Line 377
    lui	$a6,0x8000
    andi	$a7,$t0,0x3
    li	$a3,-1
    beqz	$a7,.L0d9fea64
    lwc1	$f4,3720($a0)
.L0d9fea14:
    # Line 378
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    # Line 380
    slti	$a1,$v0,0
    movn	$v0,$zero,$a1
    slt	$v1,$t9,$v0
    movn	$v0,$t9,$v1
    # Line 377
    addiu	$a5,$a5,-1
    # Line 380
    addu	$v0,$ra,$v0
    # Line 383
    nor	$v1,$a6,$zero
    # Line 388
    srl	$a6,$a6,0x1
    # Line 380
    lbu	$v0,0($v0)
    addiu	$a7,$a7,-1
    # Line 384
    addiu	$a1,$a4,1
    # Line 386
    addiu	$a2,$a2,16
    movz	$a4,$a1,$v0
    # Line 383
    and	$v1,$a3,$v1
    bnez	$a7,.L0d9fea14
    movz	$a3,$v1,$v0
.L0d9fea64:
    sra	$a7,$t0,0x2
    beqz	$a7,.L0d9feb7c
    nop
.L0d9fea70:
    # Line 378
    lwc1	$f5,12($a2)
    lwc1	$f3,28($a2)
    mul.s	$f5,$f5,$f4
    trunc.w.s	$f5,$f5
    mul.s	$f3,$f3,$f4
    # Line 386
    addiu	$a2,$a2,64
    # Line 388
    srl	$v0,$a6,0x1
    # Line 378
    mfc1	$v1,$f5
    # Line 388
    srl	$t3,$a6,0x2
    # Line 383
    nor	$v0,$v0,$zero
    # Line 378
    lwc1	$f2,-20($a2)
    trunc.w.s	$f3,$f3
    # Line 383
    nor	$t1,$a6,$zero
    # Line 380
    slti	$a7,$v1,0
    # Line 383
    and	$t1,$a3,$t1
    # Line 378
    mfc1	$at,$f3
    # Line 380
    movn	$v1,$zero,$a7
    # Line 388
    srl	$a7,$a6,0x3
    # Line 378
    lwc1	$f1,-4($a2)
    mul.s	$f2,$f2,$f4
    # Line 380
    slt	$a1,$t9,$v1
    slti	$t0,$at,0
    movn	$v1,$t9,$a1
    # Line 378
    trunc.w.s	$f2,$f2
    # Line 380
    movn	$at,$zero,$t0
    addu	$v1,$ra,$v1
    # Line 388
    srl	$a6,$a6,0x4
    # Line 378
    mul.s	$f1,$f1,$f4
    # Line 380
    slt	$a1,$t9,$at
    lbu	$v1,0($v1)
    # Line 384
    addiu	$t8,$a4,1
    # Line 378
    mfc1	$t2,$f2
    # Line 380
    movn	$at,$t9,$a1
    movn	$t1,$a3,$v1
    addu	$at,$ra,$at
    # Line 378
    trunc.w.s	$f1,$f1
    # Line 380
    lbu	$at,0($at)
    movn	$t8,$a4,$v1
    slti	$a4,$t2,0
    # Line 383
    and	$v0,$t1,$v0
    # Line 380
    movn	$t2,$zero,$a4
    # Line 378
    mfc1	$t0,$f1
    movz	$t1,$v0,$at
    # Line 380
    slt	$a1,$t9,$t2
    movn	$t2,$t9,$a1
    # Line 384
    addiu	$a1,$t8,1
    movz	$t8,$a1,$at
    # Line 380
    slti	$a1,$t0,0
    # Line 377
    addiu	$a5,$a5,-4
    # Line 380
    movn	$t0,$zero,$a1
    addu	$t2,$ra,$t2
    slt	$a1,$t9,$t0
    # Line 383
    nor	$t3,$t3,$zero
    # Line 380
    lbu	$t2,0($t2)
    movn	$t0,$t9,$a1
    # Line 384
    addiu	$a4,$t8,1
    # Line 380
    addu	$t0,$ra,$t0
    # Line 383
    and	$t3,$t1,$t3
    movz	$t8,$a4,$t2
    # Line 380
    lbu	$t0,0($t0)
    movz	$t1,$t3,$t2
    # Line 384
    addiu	$a4,$t8,1
    # Line 383
    nor	$a3,$a7,$zero
    movn	$a4,$t8,$t0
    and	$a3,$t1,$a3
    # Line 377
    bne	$a5,$s0,.L0d9fea70
    movn	$a3,$t1,$t0
.L0d9feb7c:
    # Line 393
    sw	$a3,0($s2)
.L0d9feb80:
    bnez	$s1,.L0d9fe9e0
    addiu	$s2,$s2,4
    beqz	$a4,.L0d9febe0
    ld	$s0,24($sp)
    # Line 398
    lw	$t0,30304($a0)
    ld	$s3,32($sp)
    beq	$t0,$a4,.L0d9febc0
    ld	$s0,24($sp)
    # Line 406
    ld	$ra,16($sp)
    # Line 402
    li	$v0,1
    # Line 406
    ld	$s1,0($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9febb8:
    b	.L0d9feb80
    # Line 393
    sw	$a3,0($s2)
.L0d9febc0:
    # Line 406
    ld	$ra,16($sp)
    # Line 405
    li	$v0,1
    sb	$v0,30532($a0)
    # Line 406
    ld	$s1,0($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9febdc:
    ld	$s0,24($sp)
.L0d9febe0:
    ld	$ra,16($sp)
    ld	$s3,32($sp)
    # Line 398
    move	$v0,$zero
    # Line 406
    ld	$s1,0($sp)
    ld	$s2,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glAlphaTestSpan

# Function: __glAlphaTestStippledSpan
# Declared: Line 413 (Source lines: 414-464)
# Address: 0x0d9fec00 - 0x0d9fedf4 (Size: 500 bytes, Frame: 16)
.globl __glAlphaTestStippledSpan
.ent __glAlphaTestStippledSpan
__glAlphaTestStippledSpan:
    # Line 426
    lw	$a3,30520($a0)
    # Line 427
    lw	$t0,3716($a0)
    # Line 422
    lw	$at,30304($a0)
    # Line 425
    lw	$t1,30804($a0)
    # Line 423
    lw	$t8,30528($a0)
    # Line 414
    addiu	$sp,$sp,-16
    # Line 427
    addiu	$t0,$t0,-1
    sd	$ra,0($sp)
    beqz	$at,.L0d9fedc4
    # Line 422
    move	$t3,$at
    # Line 427
    move	$a4,$zero
    li	$t2,-1
    b	.L0d9fede8
    li	$ra,32
.L0d9fec38:
    # Line 441
    lwc1	$f1,3720($a0)
    lwc1	$f0,12($a3)
    mul.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    mfc1	$at,$f0
    # Line 443
    slti	$v0,$at,0
    movn	$at,$zero,$v0
    slt	$v0,$t0,$at
    movn	$at,$t0,$v0
    addu	$at,$t1,$at
    lbu	$at,0($at)
    # Line 446
    nor	$v0,$a2,$zero
    and	$v0,$a5,$v0
    movz	$a4,$v1,$at
    movz	$a5,$v0,$at
.L0d9fec74:
    # Line 452
    srl	$a2,$a2,0x1
    # Line 450
    addiu	$a3,$a3,16
.L0d9fec7c:
    sra	$v0,$t9,0x1
    # Line 447
    addiu	$at,$a4,1
    bnez	$v0,.L0d9fede0
    # Line 439
    and	$v1,$a6,$a2
.L0d9fec8c:
    # Line 457
    and	$v1,$a6,$a5
.L0d9fec90:
    sw	$v1,0($t8)
    # Line 447
    addiu	$v1,$a4,1
    # Line 457
    beqz	$t3,.L0d9feda8
    addiu	$t8,$t8,4
    # Line 431
    li	$a1,32
.L0d9feca4:
    move	$t9,$t3
    slt	$a1,$a1,$t3
    movn	$t9,$ra,$a1
    # Line 439
    addiu	$a7,$t9,-1
    li	$a5,-1
    andi	$a2,$t9,0x1
    # Line 436
    lw	$a6,0($t8)
    # Line 439
    bltz	$a7,.L0d9fedd4
    # Line 434
    subu	$t3,$t3,$t9
    # Line 439
    li	$a5,-1
    beqz	$a2,.L0d9fec7c
    lui	$a2,0x8000
    and	$at,$a6,$a2
    bnez	$at,.L0d9fec38
    addiu	$a7,$a7,-1
    b	.L0d9fec74
    # Line 449
    addiu	$a4,$a4,1
    nop
    nop
.L0d9fecf0:
    # Line 441
    lwc1	$f3,3720($a0)
    lwc1	$f2,12($a3)
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$v0,$f2
    # Line 443
    slti	$v1,$v0,0
    movn	$v0,$zero,$v1
    slt	$v1,$t0,$v0
    movn	$v0,$t0,$v1
    addu	$v0,$t1,$v0
    lbu	$v0,0($v0)
    # Line 446
    nor	$v1,$a2,$zero
    and	$v1,$a5,$v1
    movz	$a4,$a1,$v0
    movz	$a5,$v1,$v0
.L0d9fed2c:
    # Line 447
    addiu	$at,$a4,1
    # Line 450
    addiu	$a3,$a3,16
    # Line 452
    srl	$a2,$a2,0x1
    # Line 439
    beq	$a7,$t2,.L0d9fec8c
    and	$v1,$a6,$a2
.L0d9fed40:
    beqz	$v1,.L0d9feda0
    addiu	$a7,$a7,-2
    # Line 441
    lwc1	$f5,3720($a0)
    lwc1	$f4,12($a3)
    mul.s	$f4,$f4,$f5
    trunc.w.s	$f4,$f4
    mfc1	$a1,$f4
    # Line 443
    slti	$t9,$a1,0
    movn	$a1,$zero,$t9
    slt	$t9,$t0,$a1
    movn	$a1,$t0,$t9
    addu	$a1,$t1,$a1
    lbu	$a1,0($a1)
    # Line 446
    nor	$t9,$a2,$zero
    and	$t9,$a5,$t9
    movz	$a4,$at,$a1
    movz	$a5,$t9,$a1
.L0d9fed84:
    # Line 452
    srl	$a2,$a2,0x1
    # Line 439
    and	$t9,$a6,$a2
    # Line 447
    addiu	$a1,$a4,1
    # Line 439
    bnez	$t9,.L0d9fecf0
    # Line 450
    addiu	$a3,$a3,16
    b	.L0d9fed2c
    # Line 449
    addiu	$a4,$a4,1
.L0d9feda0:
    b	.L0d9fed84
    addiu	$a4,$a4,1
.L0d9feda8:
    # Line 457
    lw	$ra,30304($a0)
    beq	$ra,$a4,.L0d9fedc8
    ld	$ra,0($sp)
    ld	$ra,0($sp)
    # Line 462
    move	$v0,$zero
    # Line 464
    jr	$ra
    addiu	$sp,$sp,16
.L0d9fedc4:
    ld	$ra,0($sp)
.L0d9fedc8:
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.L0d9fedd4:
    b	.L0d9fec90
    # Line 457
    and	$v1,$a6,$a5
    nop
.L0d9fede0:
    b	.L0d9fed40
    nop
.L0d9fede8:
    # Line 447
    addiu	$v1,$a4,1
    b	.L0d9feca4
    # Line 431
    li	$a1,32
.end __glAlphaTestStippledSpan

# Function: __glStencilTestStippledSpan
# Declared: Line 533 (Source lines: 534-583)
# Address: 0x0d9fee00 - 0x0d9fefd0 (Size: 464 bytes, Frame: 32)
.globl __glStencilTestStippledSpan
.ent __glStencilTestStippledSpan
__glStencilTestStippledSpan:
    # Line 547
    lh	$a7,1672($a0)
    # Line 546
    lw	$t8,31240($a0)
    # Line 545
    lw	$t0,31236($a0)
    # Line 544
    lw	$a2,30508($a0)
    # Line 534
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    # Line 541
    lw	$at,30304($a0)
    # Line 542
    lw	$ra,30528($a0)
    sd	$s1,16($sp)
    sd	$s0,8($sp)
    # Line 547
    beqz	$at,.L0d9fefb0
    # Line 541
    move	$t9,$at
    # Line 547
    move	$t1,$zero
    li	$t2,-1
    b	.L0d9fee74
    li	$s1,32
.L0d9fee40:
    # Line 568
    addiu	$t1,$t1,1
    nop
    nop
    nop
.L0d9fee50:
    # Line 571
    srl	$a3,$a3,0x1
    # Line 569
    addiu	$a2,$a2,1
.L0d9fee58:
    sra	$v0,$s0,0x1
    bnez	$v0,.L0d9fef10
    # Line 559
    and	$v1,$a4,$a3
.L0d9fee64:
    # Line 576
    and	$v1,$a4,$t3
.L0d9fee68:
    sw	$v1,0($ra)
    beqz	$t9,.L0d9fef90
    addiu	$ra,$ra,4
.L0d9fee74:
    # Line 551
    li	$a1,32
    move	$a6,$t9
    slt	$a1,$a1,$t9
    movn	$a6,$s1,$a1
    # Line 559
    li	$t3,-1
    addiu	$a5,$a6,-1
    andi	$a3,$a6,0x1
    move	$s0,$a6
    # Line 556
    lw	$a4,0($ra)
    # Line 559
    bltz	$a5,.L0d9fefc8
    # Line 554
    subu	$t9,$t9,$a6
    # Line 559
    li	$t3,-1
    beqz	$a3,.L0d9fee58
    lui	$a3,0x8000
    and	$a6,$a4,$a3
    beqz	$a6,.L0d9fee40
    addiu	$a5,$a5,-1
    # Line 561
    lbu	$a6,0($a2)
    and	$at,$a6,$a7
    addu	$at,$t0,$at
    lbu	$at,0($at)
    bnez	$at,.L0d9fee50
    # Line 565
    addu	$v0,$a6,$t8
    # Line 566
    addiu	$t1,$t1,1
    # Line 564
    nor	$v1,$a3,$zero
    # Line 565
    lbu	$v0,0($v0)
    # Line 564
    and	$t3,$t3,$v1
    b	.L0d9fee50
    # Line 565
    sb	$v0,0($a2)
    nop
    nop
.L0d9feef0:
    # Line 568
    addiu	$t1,$t1,1
    nop
    nop
    nop
.L0d9fef00:
    # Line 571
    srl	$a3,$a3,0x1
    # Line 559
    beq	$a5,$t2,.L0d9fee64
    # Line 569
    addiu	$a2,$a2,1
    # Line 559
    and	$v1,$a4,$a3
.L0d9fef10:
    beqz	$v1,.L0d9fef70
    addiu	$a5,$a5,-2
    # Line 561
    lbu	$a6,0($a2)
    and	$a1,$a6,$a7
    addu	$a1,$t0,$a1
    lbu	$a1,0($a1)
    beqz	$a1,.L0d9fef78
    # Line 565
    addu	$v1,$a6,$t8
.L0d9fef30:
    # Line 571
    srl	$a3,$a3,0x1
    # Line 559
    and	$a6,$a4,$a3
    beqz	$a6,.L0d9feef0
    # Line 569
    addiu	$a2,$a2,1
    # Line 561
    lbu	$a6,0($a2)
    and	$at,$a6,$a7
    addu	$at,$t0,$at
    lbu	$at,0($at)
    bnez	$at,.L0d9fef00
    # Line 565
    addu	$v0,$a6,$t8
    # Line 566
    addiu	$t1,$t1,1
    # Line 564
    nor	$v1,$a3,$zero
    # Line 565
    lbu	$v0,0($v0)
    # Line 564
    and	$t3,$t3,$v1
    b	.L0d9fef00
    # Line 565
    sb	$v0,0($a2)
.L0d9fef70:
    b	.L0d9fef30
    # Line 568
    addiu	$t1,$t1,1
.L0d9fef78:
    # Line 566
    addiu	$t1,$t1,1
    # Line 564
    nor	$a1,$a3,$zero
    # Line 565
    lbu	$v1,0($v1)
    # Line 564
    and	$t3,$t3,$a1
    b	.L0d9fef30
    # Line 565
    sb	$v1,0($a2)
.L0d9fef90:
    # Line 576
    lw	$a1,30304($a0)
    beq	$a1,$t1,.L0d9fefb0
    # Line 583
    ld	$ra,0($sp)
    # Line 581
    move	$v0,$zero
    ld	$s1,16($sp)
    ld	$s0,8($sp)
    # Line 583
    jr	$ra
    addiu	$sp,$sp,32
.L0d9fefb0:
    ld	$ra,0($sp)
    li	$v0,1
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9fefc8:
    b	.L0d9fee68
    # Line 576
    and	$v1,$a4,$t3
.end __glStencilTestStippledSpan

# Function: __glDepthTestOffsetSpan
# Declared: Line 589 (Source lines: 590-816)
# Address: 0x0d9fefd0 - 0x0d9ff59c (Size: 1484 bytes, Frame: 144)
.globl __glDepthTestOffsetSpan
.ent __glDepthTestOffsetSpan
__glDepthTestOffsetSpan:
    # Line 634
    lwc1	$f5,30560($a0)
    # Line 632
    lwc1	$f6,30540($a0)
    # Line 618
    lw	$a2,30304($a0)
    # Line 623
    lw	$a6,12080($a0)
    # Line 624
    lw	$v0,31372($a0)
    # Line 625
    lw	$v1,31364($a0)
    # Line 590
    addiu	$sp,$sp,-272
    # Line 627
    lw	$a1,30528($a0)
    sd	$a1,136($sp)
    # Line 625
    sd	$v1,112($sp)
    # Line 624
    sd	$v0,120($sp)
    # Line 590
    sd	$s0,72($sp)
    # Line 633
    lwc1	$f4,30556($a0)
    # Line 634
    mtc1	$zero,$f0
    # Line 622
    lw	$s0,30496($a0)
    # Line 620
    sw	$zero,8($sp)
    # Line 619
    sw	$zero,4($sp)
    # Line 634
    c.lt.s	$f0,$f4
    # Line 623
    sw	$a6,16($sp)
    # Line 590
    lui	$at,0x9
    # Line 618
    sw	$a2,0($sp)
    # Line 590
    addiu	$at,$at,8200
    move	$a3,$a0
    sd	$gp,80($sp)
    # Line 634
    bc1f	.L0d9ff0d8
    # Line 590
    addu	$gp,$t9,$at
    # Line 634
    c.lt.s $f4,$f5
    bc1f .L0d9ff418
    nop
    # Line 643
    mtc1	$a2,$f5
    cvt.s.w	$f5,$f5
    lw	$t0,30384($a0)
    # Line 642
    ld	$a7,120($sp)
    # Line 641
    trunc.l.s	$f1,$f6
    # Line 642
    lw	$a5,30380($a0)
    # Line 643
    c.lt.s $f4,$f5
    sw	$t0,40($sp)
    # Line 642
    srav	$a5,$a5,$a7
    sw	$a5,32($sp)
    # Line 641
    dmfc1	$a4,$f1
    # Line 643
    bc1f .L0d9ff4e4
    # Line 641
    sw	$a4,24($sp)
    # Line 645
    sub.s	$f6,$f5,$f4
    trunc.w.s	$f6,$f6
    swc1	$f6,4($sp)
    # Line 647
    lw	$a0,1632($a0)
    li	$t1,513
    # Line 645
    mfc1	$t2,$f6
    # Line 647
    lw	$a5,30552($a3)
    # Line 646
    subu	$a2,$a2,$t2
    # Line 647
    beq	$a0,$t1,.L0d9ff568
    # Line 646
    sw	$a2,0($sp)
    # Line 647
    li	$t3,516
.L0d9ff0a4:
    beq	$a0,$t3,.L0d9ff558
    nop
.L0d9ff0ac:
    # Line 653
    sw	$a6,20($sp)
.L0d9ff0b0:
    # Line 655
    sra	$a6,$a2,0x1f
    xor	$a4,$a2,$a6
    subu	$a4,$a4,$a6
    # Line 657
    sw	$zero,44($sp)
    # Line 655
    andi	$a4,$a4,0x1f
    # Line 656
    sw	$zero,36($sp)
    # Line 655
    xor	$a4,$a4,$a6
    # Line 654
    sw	$a5,28($sp)
    # Line 657
    b	.L0d9ff104
    # Line 655
    subu	$a4,$a4,$a6
.L0d9ff0d8:
    # Line 688
    lw	$a0,1632($a0)
    li	$a5,513
    beq	$a0,$a5,.L0d9ff4f4
    lw	$a5,30552($a3)
    li	$a6,516
.L0d9ff0ec:
    beq	$a0,$a6,.L0d9ff50c
    nop
.L0d9ff0f4:
    # Line 695
    sw	$zero,40($sp)
    # Line 694
    sw	$zero,32($sp)
    # Line 693
    sw	$a5,24($sp)
    # Line 695
    move	$a4,$zero
.L0d9ff104:
    beqz	$a2,.L0d9ff51c
    sd	$s5,200($sp)
    sd	$a4,176($sp)
    addiu	$a2,$sp,16
    sd	$a2,56($sp)
    addiu	$a6,$sp,40
    sd	$a6,192($sp)
    addiu	$t1,$sp,24
    sd	$t1,104($sp)
    sd	$s2,264($sp)
    lw	$s2,52($sp)
    sd	$sp,96($sp)
    sd	$s3,256($sp)
    lw	$s3,48($sp)
    sd	$s8,224($sp)
    sd	$s7,208($sp)
    lw	$a7,0($sp)
    move	$s7,$zero
    addiu	$s8,$sp,32
    sd	$a3,168($sp)
    move	$s5,$zero
    li	$a5,32
    sd	$a7,144($sp)
    subu	$a5,$a5,$a4
    beqz	$a7,.L0d9ff284
    sd	$a5,184($sp)
.L0d9ff16c:
    sd	$s1,216($sp)
    sd	$ra,232($sp)
    sd	$s4,240($sp)
    sd	$s6,248($sp)
    ld	$t2,104($sp)
    ld	$t3,192($sp)
    lw	$t2,0($t2)
    lw	$t3,0($t3)
    sd	$t3,64($sp)
    sd	$t2,128($sp)
.L0d9ff194:
    # Line 715
    ld	$ra,120($sp)
    ld	$t9,128($sp)
    # Line 707
    li	$v0,32
    ld	$t8,144($sp)
    li	$at,32
    # Line 715
    srlv	$t9,$t9,$ra
    ld	$s1,112($sp)
    # Line 707
    move	$a2,$t8
    slt	$at,$at,$t8
    # Line 718
    ld	$s6,56($sp)
    # Line 707
    movn	$a2,$v0,$at
    # Line 715
    addu	$s1,$s1,$t9
    # Line 718
    ld	$t9,96($sp)
    addiu	$s4,$a2,-1
    # Line 717
    lui	$s3,0x8000
    # Line 710
    subu	$t8,$t8,$a2
    sd	$t8,144($sp)
    # Line 716
    li	$s2,-1
    # Line 718
    bltz	$s4,.L0d9ff238
    # Line 710
    sw	$t8,0($t9)
    # Line 718
    lw	$s6,0($s6)
    nop
    nop
.L0d9ff1f0:
    # Line 731
    move	$t9,$s6
    move	$a0,$s1
    lw	$a1,0($s0)
    jalr	$t9
    move	$a2,$s0
    # Line 732
    nor	$t9,$s3,$zero
    # Line 741
    srl	$s3,$s3,0x1
    # Line 733
    addiu	$ra,$s5,1
    movz	$s5,$ra,$v0
    # Line 718
    li	$a0,-1
    # Line 738
    addu	$t8,$s7,$s8
    # Line 718
    addiu	$s4,$s4,-1
    # Line 732
    and	$t9,$s2,$t9
    # Line 738
    lw	$t8,0($t8)
    # Line 739
    addiu	$s0,$s0,4
    movz	$s2,$t9,$v0
    # Line 718
    bne	$s4,$a0,.L0d9ff1f0
    # Line 738
    addu	$s1,$t8,$s1
.L0d9ff238:
    # Line 746
    ld	$v0,136($sp)
    # Line 750
    ld	$a2,64($sp)
    ld	$v1,128($sp)
    ld	$a1,104($sp)
    addu	$v1,$v1,$a2
    sd	$v1,128($sp)
    ld	$at,144($sp)
    sw	$v1,0($a1)
    # Line 746
    sw	$s2,0($v0)
    addiu	$v0,$v0,4
    # Line 750
    bnez	$at,.L0d9ff194
    sd	$v0,136($sp)
    ld	$a2,56($sp)
    ld	$s6,248($sp)
    ld	$s4,240($sp)
    ld	$ra,232($sp)
    ld	$s1,216($sp)
    ld	$a5,184($sp)
    ld	$a6,192($sp)
.L0d9ff284:
    ld	$a3,176($sp)
    ld	$a4,168($sp)
    # Line 752
    addiu	$a7,$a6,4
    sd	$a7,192($sp)
    addiu	$t0,$a2,4
    sd	$t0,56($sp)
    addiu	$s7,$s7,4
    sd	$s7,88($sp)
    ld	$t9,96($sp)
    sd	$a5,184($sp)
    ld	$t8,104($sp)
    addiu	$t1,$t9,4
    # Line 753
    lw	$t3,0($t1)
    # Line 752
    sd	$t1,96($sp)
    addiu	$t2,$t8,4
    sd	$t2,104($sp)
    # Line 753
    beqz	$t3,.L0d9ff3e4
    sd	$t3,144($sp)
    ld	$a2,184($sp)
    sd	$t2,152($sp)
    beqz	$a3,.L0d9ff3d8
    sd	$a7,160($sp)
    ld	$a5,160($sp)
    sd	$s1,216($sp)
    # Line 768
    ld	$s1,112($sp)
    sd	$s4,240($sp)
    # Line 754
    ld	$t9,144($sp)
    # Line 767
    ld	$a6,152($sp)
    ld	$at,120($sp)
    # Line 758
    move	$a4,$t9
    # Line 754
    slt	$v0,$t9,$a2
    # Line 767
    lw	$t8,0($a6)
    movz	$a4,$a2,$v0
    sd	$t8,128($sp)
    # Line 768
    addiu	$s4,$a4,-1
    # Line 759
    subu	$t9,$t9,$a4
    sd	$t9,144($sp)
    # Line 767
    srlv	$t8,$t8,$at
    # Line 759
    sw	$t9,0($t1)
    # Line 768
    bltz	$s4,.L0d9ff394
    # Line 767
    addu	$s1,$s1,$t8
    sd	$s6,248($sp)
    # Line 768
    lw	$s6,0($t0)
    sd	$ra,232($sp)
.L0d9ff334:
    # Line 781
    move	$t9,$s6
    move	$a0,$s1
    lw	$a1,0($s0)
    jalr	$t9
    move	$a2,$s0
    # Line 782
    nor	$a0,$s3,$zero
    # Line 791
    srl	$s3,$s3,0x1
    # Line 788
    ld	$v1,88($sp)
    # Line 783
    addiu	$a1,$s5,1
    # Line 768
    addiu	$s4,$s4,-1
    # Line 782
    and	$a0,$s2,$a0
    # Line 788
    addu	$v1,$v1,$s8
    movz	$s2,$a0,$v0
    # Line 768
    li	$a0,-1
    # Line 788
    lw	$v1,0($v1)
    # Line 789
    addiu	$s0,$s0,4
    movz	$s5,$a1,$v0
    # Line 768
    bne	$s4,$a0,.L0d9ff334
    # Line 788
    addu	$s1,$v1,$s1
    ld	$s6,248($sp)
    ld	$ra,232($sp)
    ld	$a2,184($sp)
    ld	$a5,160($sp)
    ld	$a6,152($sp)
.L0d9ff394:
    # Line 802
    mtc1	$a2,$f8
    lw	$t2,0($a5)
    ldc1	$f9,_lit8_3fa0000000000000
    mtc1	$t2,$f7
    cvt.d.w	$f8,$f8
    mul.d	$f8,$f8,$f9
    cvt.d.w	$f7,$f7
    mul.d	$f7,$f7,$f8
    ld	$s4,240($sp)
    ld	$s1,216($sp)
    trunc.w.d	$f7,$f7
    # Line 796
    ld	$t1,136($sp)
    # Line 802
    ld	$a7,128($sp)
    mfc1	$t0,$f7
    # Line 796
    sw	$s2,-4($t1)
    # Line 802
    addu	$a7,$a7,$t0
    sw	$a7,0($a6)
.L0d9ff3d8:
    ld	$t3,144($sp)
    bnez	$t3,.L0d9ff16c
    ld	$a4,168($sp)
.L0d9ff3e4:
    ld	$s2,264($sp)
    ld	$s3,256($sp)
    ld	$s8,224($sp)
    beqz	$s5,.L0d9ff51c
    ld	$s7,208($sp)
    # Line 808
    lw	$t8,30304($a4)
    beq	$t8,$s5,.L0d9ff580
    ld	$s5,200($sp)
    # Line 812
    li	$v0,1
    # Line 816
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d9ff418:
    # Line 662
    sw	$zero,40($sp)
    # Line 663
    lw	$a0,1632($a0)
    # Line 661
    sw	$zero,32($sp)
    # Line 663
    li	$t9,513
    # Line 660
    lw	$a4,30548($a3)
    # Line 663
    beq	$a0,$t9,.L0d9ff534
    # Line 660
    sw	$a4,24($sp)
.L0d9ff434:
    # Line 663
    li	$at,516
    beq	$a0,$at,.L0d9ff548
    nop
.L0d9ff440:
    # Line 667
    sub.s	$f7,$f4,$f5
    ldc1	$f8,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f8
    trunc.w.d	$f7,$f7
    mfc1	$a0,$f7
    slt	$v0,$a0,$a2
    beqz	$v0,.L0d9ff4ec
    # Line 671
    move	$t9,$a0
    addiu	$t3,$a0,31
    slt	$t8,$a0,$zero
    movz	$t3,$t9,$t8
    # Line 670
    swc1	$f7,0($sp)
    # Line 671
    sra	$t3,$t3,0x5
    # Line 673
    lw	$a1,30380($a3)
    # Line 671
    sll	$a4,$t3,0x5
    subu	$a4,$a0,$a4
    # Line 673
    mult	$a4,$a1
    lw	$a7,30384($a3)
    mflo	$t1
    nop
    nop
    mult	$a7,$t3
    mflo	$t2
    addu	$t1,$t1,$t2
    mtc1	$t1,$f8
    cvt.d.s	$f9,$f6
    cvt.d.w	$f8,$f8
    # Line 672
    sw	$a6,20($sp)
    # Line 673
    add.d	$f8,$f8,$f9
    # Line 669
    subu	$t0,$a2,$a0
    sw	$t0,4($sp)
    # Line 683
    ld	$a5,120($sp)
    # Line 673
    trunc.l.d	$f8,$f8
    # Line 684
    sw	$a7,44($sp)
    # Line 683
    srav	$a1,$a1,$a5
    sw	$a1,36($sp)
    # Line 673
    dmfc1	$v1,$f8
    # Line 670
    move	$a2,$a0
    # Line 684
    b	.L0d9ff104
    # Line 673
    sw	$v1,28($sp)
.L0d9ff4e4:
    b	.L0d9ff104
    # Line 657
    move	$a4,$zero
.L0d9ff4ec:
    b	.L0d9ff104
    # Line 684
    move	$a4,$zero
.L0d9ff4f4:
    # Line 688
    beqz	$a5,.L0d9ff0ec
    li	$a6,516
    # Line 692
    la	$at,__glCDTPixel
.L0d9ff500:
    lw	$at,0($at)
    b	.L0d9ff0f4
    sw	$at,16($sp)
.L0d9ff50c:
    # Line 688
    bnez	$a5,.L0d9ff0f4
    nop
    b	.L0d9ff500
    # Line 692
    la	$at,__glCDTPixel
.L0d9ff51c:
    ld	$s5,200($sp)
    # Line 808
    move	$v0,$zero
    # Line 816
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d9ff534:
    # Line 663
    beqz	$a4,.L0d9ff434
    # Line 667
    la	$v0,__glCDTPixel
.L0d9ff53c:
    lw	$v0,0($v0)
    b	.L0d9ff440
    sw	$v0,16($sp)
.L0d9ff548:
    # Line 663
    bnez	$a4,.L0d9ff440
    nop
    b	.L0d9ff53c
    # Line 667
    la	$v0,__glCDTPixel
.L0d9ff558:
    # Line 647
    bnez	$a5,.L0d9ff0ac
    nop
    b	.L0d9ff574
    # Line 651
    la	$v1,__glCDTPixel
.L0d9ff568:
    # Line 647
    beqz	$a5,.L0d9ff0a4
    li	$t3,516
    # Line 651
    la	$v1,__glCDTPixel
.L0d9ff574:
    lw	$v1,0($v1)
    b	.L0d9ff0b0
    sw	$v1,20($sp)
.L0d9ff580:
    # Line 815
    li	$v0,1
    sb	$v0,30532($a4)
    ld	$s5,200($sp)
    # Line 816
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glDepthTestOffsetSpan

# Function: __glDepthTestStippledOffsetSpan
# Declared: Line 822 (Source lines: 823-1047)
# Address: 0x0d9ff5a0 - 0x0d9ffbb0 (Size: 1552 bytes, Frame: 160)
.globl __glDepthTestStippledOffsetSpan
.ent __glDepthTestStippledOffsetSpan
__glDepthTestStippledOffsetSpan:
    # Line 867
    lwc1	$f5,30560($a0)
    # Line 865
    lwc1	$f6,30540($a0)
    # Line 856
    lw	$a7,12080($a0)
    # Line 857
    lw	$v0,31372($a0)
    # Line 858
    lw	$v1,31364($a0)
    # Line 823
    addiu	$sp,$sp,-288
    # Line 860
    lw	$a1,30528($a0)
    sd	$a1,152($sp)
    # Line 858
    sd	$v1,120($sp)
    # Line 857
    sd	$v0,128($sp)
    # Line 823
    sd	$s2,96($sp)
    # Line 855
    lw	$s2,30496($a0)
    # Line 866
    lwc1	$f4,30556($a0)
    # Line 867
    mtc1	$zero,$f0
    # Line 853
    sw	$zero,8($sp)
    # Line 852
    sw	$zero,4($sp)
    # Line 856
    sw	$a7,16($sp)
    # Line 867
    c.lt.s	$f0,$f4
    # Line 823
    lui	$at,0x9
    # Line 851
    lw	$a4,30304($a0)
    # Line 823
    move	$a3,$a0
    # Line 851
    sw	$a4,0($sp)
    # Line 823
    addiu	$at,$at,6712
    sd	$gp,80($sp)
    # Line 851
    move	$a2,$a4
    # Line 867
    bc1f	.L0d9ff6ac
    # Line 823
    addu	$gp,$t9,$at
    # Line 867
    c.lt.s $f4,$f5
    bc1f .L0d9ff778
    sd	$s4,216($sp)
    # Line 875
    mtc1	$a4,$f5
    cvt.s.w	$f5,$f5
    lw	$t1,30384($a0)
    # Line 874
    ld	$t0,128($sp)
    # Line 873
    trunc.l.s	$f1,$f6
    # Line 874
    lw	$a6,30380($a0)
    # Line 875
    c.lt.s $f4,$f5
    sw	$t1,40($sp)
    # Line 874
    srav	$a6,$a6,$t0
    sw	$a6,32($sp)
    # Line 873
    dmfc1	$a5,$f1
    # Line 875
    bc1f .L0d9ff864
    # Line 873
    sw	$a5,24($sp)
    # Line 877
    sub.s	$f6,$f5,$f4
    trunc.w.s	$f6,$f6
    swc1	$f6,4($sp)
    # Line 879
    lw	$a0,1632($a0)
    li	$t2,513
    # Line 877
    mfc1	$a2,$f6
    # Line 879
    lw	$a6,30552($a3)
    # Line 878
    subu	$a2,$a4,$a2
    # Line 879
    beq	$a0,$t2,.L0d9ffa1c
    # Line 878
    sw	$a2,0($sp)
.L0d9ff674:
    # Line 879
    li	$a5,516
    beq	$a0,$a5,.L0d9ffa0c
    nop
.L0d9ff680:
    # Line 885
    sw	$a7,20($sp)
.L0d9ff684:
    # Line 887
    sra	$a7,$a2,0x1f
    xor	$a5,$a2,$a7
    subu	$a5,$a5,$a7
    # Line 889
    sw	$zero,44($sp)
    # Line 887
    andi	$a5,$a5,0x1f
    # Line 888
    sw	$zero,36($sp)
    # Line 887
    xor	$a5,$a5,$a7
    # Line 886
    sw	$a6,28($sp)
    # Line 889
    b	.L0d9ff6dc
    # Line 887
    subu	$a5,$a5,$a7
.L0d9ff6ac:
    # Line 920
    lw	$a0,1632($a0)
    li	$a7,513
    lw	$a6,30552($a3)
    beq	$a0,$a7,.L0d9ff9bc
    sd	$s4,216($sp)
    li	$t0,516
.L0d9ff6c4:
    beq	$a0,$t0,.L0d9ff9d4
    nop
.L0d9ff6cc:
    # Line 927
    sw	$zero,40($sp)
    # Line 926
    sw	$zero,32($sp)
    # Line 925
    sw	$a6,24($sp)
    # Line 927
    move	$a5,$zero
.L0d9ff6dc:
    beqz	$a2,.L0d9ff844
    nop
    sd	$a5,200($sp)
    addiu	$a2,$sp,16
    sd	$a2,160($sp)
    sd	$s6,272($sp)
    lw	$s6,56($sp)
    addiu	$a6,$sp,40
    sd	$a6,208($sp)
    addiu	$t0,$sp,24
    sd	$t0,104($sp)
    sd	$s5,240($sp)
    lw	$s5,52($sp)
    sd	$sp,112($sp)
    sd	$s0,256($sp)
    lw	$s0,48($sp)
    sd	$s8,224($sp)
    sd	$s7,248($sp)
    move	$s7,$zero
    lw	$t1,0($sp)
    addiu	$s8,$sp,32
    li	$a0,-1
    sd	$a3,184($sp)
    move	$s4,$zero
    li	$a4,32
    sd	$t1,144($sp)
    subu	$a4,$a4,$a5
    beqz	$t1,.L0d9ff88c
    sd	$a4,192($sp)
.L0d9ff750:
    sd	$s1,232($sp)
    sd	$ra,264($sp)
    sd	$s3,280($sp)
    ld	$t1,104($sp)
    ld	$t2,208($sp)
    lw	$t1,0($t1)
    lw	$t2,0($t2)
    sd	$t2,72($sp)
    b	.L0d9ffac0
    sd	$t1,136($sp)
.L0d9ff778:
    # Line 894
    sw	$zero,40($sp)
    # Line 895
    lw	$a0,1632($a0)
    # Line 893
    sw	$zero,32($sp)
    # Line 895
    li	$t3,513
    # Line 892
    lw	$a5,30548($a3)
    # Line 895
    beq	$a0,$t3,.L0d9ff9e4
    # Line 892
    sw	$a5,24($sp)
    # Line 895
    li	$t8,516
.L0d9ff798:
    beq	$a0,$t8,.L0d9ff9fc
    nop
.L0d9ff7a0:
    # Line 899
    sub.s	$f7,$f4,$f5
    ldc1	$f8,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f8
    trunc.w.d	$f7,$f7
    mfc1	$a0,$f7
    slt	$t9,$a0,$a4
    beqz	$t9,.L0d9ff86c
    # Line 903
    move	$t3,$a0
    addiu	$t1,$a0,31
    slt	$t2,$a0,$zero
    movz	$t1,$t3,$t2
    # Line 902
    swc1	$f7,0($sp)
    # Line 903
    sra	$t1,$t1,0x5
    # Line 905
    lw	$v0,30380($a3)
    # Line 903
    sll	$a5,$t1,0x5
    subu	$a5,$a0,$a5
    # Line 905
    mult	$a5,$v0
    lw	$a1,30384($a3)
    mflo	$a6
    nop
    nop
    mult	$a1,$t1
    mflo	$t0
    addu	$a6,$a6,$t0
    mtc1	$a6,$f8
    cvt.d.s	$f9,$f6
    cvt.d.w	$f8,$f8
    # Line 904
    sw	$a7,20($sp)
    # Line 905
    add.d	$f8,$f8,$f9
    # Line 901
    subu	$a2,$a4,$a0
    sw	$a2,4($sp)
    # Line 915
    ld	$v1,128($sp)
    # Line 905
    trunc.l.d	$f8,$f8
    # Line 916
    sw	$a1,44($sp)
    # Line 915
    srav	$v0,$v0,$v1
    sw	$v0,36($sp)
    # Line 905
    dmfc1	$at,$f8
    # Line 902
    move	$a2,$a0
    # Line 916
    b	.L0d9ff6dc
    # Line 905
    sw	$at,28($sp)
.L0d9ff844:
    # Line 1045
    beqz	$a4,.L0d9ff9a8
    ld	$s4,216($sp)
.L0d9ff84c:
    ld	$s4,216($sp)
    move	$v0,$zero
    # Line 1047
    ld	$gp,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d9ff864:
    b	.L0d9ff6dc
    # Line 889
    move	$a5,$zero
.L0d9ff86c:
    b	.L0d9ff6dc
    # Line 916
    move	$a5,$zero
.L0d9ff874:
    ld	$a2,160($sp)
    ld	$s3,280($sp)
    ld	$ra,264($sp)
    ld	$s1,232($sp)
    ld	$a4,192($sp)
    ld	$a6,208($sp)
.L0d9ff88c:
    ld	$a3,200($sp)
    ld	$a5,184($sp)
    # Line 985
    addiu	$t0,$a6,4
    sd	$t0,208($sp)
    addiu	$a7,$a2,4
    sd	$a7,160($sp)
    addiu	$s7,$s7,4
    sd	$s7,88($sp)
    ld	$at,112($sp)
    sd	$a4,192($sp)
    ld	$t9,104($sp)
    addiu	$t1,$at,4
    # Line 986
    lw	$t8,0($t1)
    # Line 985
    sd	$t1,112($sp)
    addiu	$t2,$t9,4
    sd	$t2,104($sp)
    # Line 986
    beqz	$t8,.L0d9ff988
    sd	$t8,144($sp)
    ld	$a2,192($sp)
    sd	$t2,168($sp)
    sd	$t0,176($sp)
    beqz	$a3,.L0d9ff97c
    sd	$a7,64($sp)
    ld	$a4,176($sp)
    sd	$s1,232($sp)
    # Line 1002
    ld	$s1,120($sp)
    sd	$s3,280($sp)
    # Line 987
    ld	$t9,144($sp)
    # Line 994
    ld	$a6,168($sp)
    ld	$at,128($sp)
    # Line 991
    move	$a5,$t9
    # Line 987
    slt	$v0,$t9,$a2
    # Line 994
    lw	$t8,0($a6)
    movz	$a5,$a2,$v0
    sd	$t8,136($sp)
    # Line 1002
    addiu	$s3,$a5,-1
    # Line 992
    subu	$t9,$t9,$a5
    sd	$t9,144($sp)
    # Line 994
    srlv	$t8,$t8,$at
    # Line 992
    sw	$t9,0($t1)
    # Line 1002
    bgez	$s3,.L0d9ffb20
    # Line 994
    addu	$s1,$s1,$t8
.L0d9ff934:
    # Line 1038
    mtc1	$a2,$f10
    lw	$t0,0($a4)
    ldc1	$f11,_lit8_3fa0000000000000
    mtc1	$t0,$f9
    cvt.d.w	$f10,$f10
    mul.d	$f10,$f10,$f11
    cvt.d.w	$f9,$f9
    mul.d	$f9,$f9,$f10
    ld	$s3,280($sp)
    ld	$s1,232($sp)
    trunc.w.d	$f9,$f9
    # Line 1032
    ld	$a7,152($sp)
    # Line 1038
    ld	$v1,136($sp)
    mfc1	$a1,$f9
    # Line 1032
    and	$a3,$s5,$s6
    sw	$a3,-4($a7)
    # Line 1038
    addu	$v1,$v1,$a1
    sw	$v1,0($a6)
.L0d9ff97c:
    ld	$t1,144($sp)
    bnez	$t1,.L0d9ff750
    ld	$a5,184($sp)
.L0d9ff988:
    ld	$s6,272($sp)
    ld	$s0,256($sp)
    lw	$t2,30304($a5)
    ld	$s7,248($sp)
    ld	$s5,240($sp)
    bne	$t2,$s4,.L0d9ff84c
    ld	$s8,224($sp)
    ld	$s4,216($sp)
.L0d9ff9a8:
    # Line 1047
    li	$v0,1
    ld	$gp,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d9ff9bc:
    # Line 920
    beqz	$a6,.L0d9ff6c4
    li	$t0,516
    # Line 924
    la	$t3,__glCDTPixel
.L0d9ff9c8:
    lw	$t3,0($t3)
    b	.L0d9ff6cc
    sw	$t3,16($sp)
.L0d9ff9d4:
    # Line 920
    bnez	$a6,.L0d9ff6cc
    nop
    b	.L0d9ff9c8
    # Line 924
    la	$t3,__glCDTPixel
.L0d9ff9e4:
    # Line 895
    beqz	$a5,.L0d9ff798
    li	$t8,516
    # Line 899
    la	$t8,__glCDTPixel
.L0d9ff9f0:
    lw	$t8,0($t8)
    b	.L0d9ff7a0
    sw	$t8,16($sp)
.L0d9ff9fc:
    # Line 895
    bnez	$a5,.L0d9ff7a0
    nop
    b	.L0d9ff9f0
    # Line 899
    la	$t8,__glCDTPixel
.L0d9ffa0c:
    # Line 879
    bnez	$a6,.L0d9ff680
    nop
    b	.L0d9ffa24
    # Line 883
    nop	# was lw $t9, -18680($gp) # &__glCDTPixel
.L0d9ffa1c:
    # Line 879
    beqz	$a6,.L0d9ff674
    # Line 883
    nop	# was lw $t9, -18680($gp) # &__glCDTPixel
.L0d9ffa24:
    lw	$t9,0($t9)
    b	.L0d9ff684
    sw	$t9,20($sp)
.L0d9ffa30:
    # Line 963
    lw	$t9,0($t9)
    move	$a0,$s1
    move	$a2,$s2
    jal	__glCDTPixel
    lw	$a1,0($s2)
    # Line 965
    addiu	$at,$s4,1
    # Line 964
    nor	$ra,$s0,$zero
    movz	$s4,$at,$v0
    and	$ra,$s5,$ra
    li	$a0,-1
    movz	$s5,$ra,$v0
.L0d9ffa5c:
    # Line 971
    addu	$v0,$s7,$s8
    # Line 974
    srl	$s0,$s0,0x1
    # Line 949
    addiu	$s3,$s3,-1
    # Line 971
    lw	$v0,0($v0)
    # Line 972
    addiu	$s2,$s2,4
    # Line 949
    and	$v1,$s0,$s6
    beq	$s3,$a0,.L0d9ffa8c
    # Line 971
    addu	$s1,$v0,$s1
.L0d9ffa7c:
    # Line 949
    bnez	$v1,.L0d9ffa30
    # Line 963
    ld	$t9,160($sp)
    b	.L0d9ffa5c
    # Line 967
    addiu	$s4,$s4,1
.L0d9ffa8c:
    # Line 979
    ld	$a2,152($sp)
    # Line 980
    ld	$a6,72($sp)
    ld	$a4,136($sp)
    ld	$a5,104($sp)
    addu	$a4,$a4,$a6
    sd	$a4,136($sp)
    ld	$a1,144($sp)
    sw	$a4,0($a5)
    # Line 979
    and	$a3,$s5,$s6
    sw	$a3,0($a2)
    addiu	$a2,$a2,4
    # Line 980
    beqz	$a1,.L0d9ff874
    sd	$a2,152($sp)
.L0d9ffac0:
    # Line 949
    ld	$t0,112($sp)
    # Line 945
    ld	$t9,128($sp)
    # Line 947
    li	$s5,-1
    # Line 937
    ld	$a7,144($sp)
    # Line 945
    ld	$t8,136($sp)
    # Line 937
    li	$at,32
    li	$ra,32
    # Line 946
    ld	$s6,152($sp)
    # Line 937
    move	$a2,$a7
    slt	$ra,$ra,$a7
    # Line 948
    lui	$s0,0x8000
    # Line 945
    ld	$s1,120($sp)
    # Line 937
    movn	$a2,$at,$ra
    # Line 945
    srlv	$t8,$t8,$t9
    # Line 946
    lw	$s6,0($s6)
    # Line 949
    addiu	$s3,$a2,-1
    # Line 945
    addu	$s1,$s1,$t8
    # Line 940
    subu	$a7,$a7,$a2
    sd	$a7,144($sp)
    # Line 949
    and	$v1,$s0,$s6
    bgez	$s3,.L0d9ffb9c
    # Line 940
    sw	$a7,0($t0)
    b	.L0d9ffa8c
    nop
.L0d9ffb20:
    b	.L0d9ffba4
    sd	$ra,264($sp)
.L0d9ffb28:
    # Line 1016
    lw	$t9,0($t9)
    move	$a0,$s1
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    # Line 1018
    addiu	$at,$s4,1
    # Line 1017
    nor	$ra,$s0,$zero
    movz	$s4,$at,$v0
    and	$ra,$s5,$ra
    li	$a0,-1
    movz	$s5,$ra,$v0
.L0d9ffb54:
    # Line 1024
    ld	$v0,88($sp)
    addu	$v0,$v0,$s8
    # Line 1027
    srl	$s0,$s0,0x1
    # Line 1002
    addiu	$s3,$s3,-1
    # Line 1024
    lw	$v0,0($v0)
    # Line 1025
    addiu	$s2,$s2,4
    # Line 1002
    and	$v1,$s0,$s6
    beq	$s3,$a0,.L0d9ffb88
    # Line 1024
    addu	$s1,$v0,$s1
.L0d9ffb78:
    # Line 1002
    bnez	$v1,.L0d9ffb28
    # Line 1016
    ld	$t9,64($sp)
    b	.L0d9ffb54
    # Line 1020
    addiu	$s4,$s4,1
.L0d9ffb88:
    ld	$ra,264($sp)
    ld	$a2,192($sp)
    ld	$a4,176($sp)
    b	.L0d9ff934
    ld	$a6,168($sp)
.L0d9ffb9c:
    b	.L0d9ffa7c
    nop
.L0d9ffba4:
    # Line 1002
    and	$v1,$s0,$s6
    b	.L0d9ffb78
    nop
.end __glDepthTestStippledOffsetSpan

# Function: __glDepthTestStencilOffsetSpan
# Declared: Line 1324 (Source lines: 1325-1561)
# Address: 0x0d9ffbb0 - 0x0da00220 (Size: 1648 bytes, Frame: 176)
.globl __glDepthTestStencilOffsetSpan
.ent __glDepthTestStencilOffsetSpan
__glDepthTestStencilOffsetSpan:
    # Line 1372
    lwc1	$f5,30560($a0)
    # Line 1370
    lwc1	$f6,30540($a0)
    # Line 1362
    lw	$a6,12080($a0)
    # Line 1360
    lw	$v0,31244($a0)
    # Line 1363
    lw	$v1,31372($a0)
    # Line 1364
    lw	$a1,31364($a0)
    # Line 1325
    addiu	$sp,$sp,-304
    # Line 1364
    sd	$a1,128($sp)
    # Line 1363
    sd	$v1,136($sp)
    # Line 1325
    sd	$s7,64($sp)
    # Line 1361
    lw	$s7,31248($a0)
    # Line 1360
    sd	$v0,168($sp)
    # Line 1325
    sd	$s0,80($sp)
    # Line 1359
    lw	$s0,30508($a0)
    # Line 1325
    sd	$s1,72($sp)
    # Line 1358
    lw	$s1,30496($a0)
    # Line 1356
    sw	$zero,8($sp)
    # Line 1355
    sw	$zero,4($sp)
    # Line 1371
    lwc1	$f4,30556($a0)
    # Line 1372
    mtc1	$zero,$f0
    # Line 1362
    sw	$a6,16($sp)
    sd	$gp,104($sp)
    # Line 1366
    lw	$a2,30528($a0)
    # Line 1372
    c.lt.s	$f0,$f4
    # Line 1325
    lui	$at,0x9
    # Line 1366
    sd	$a2,152($sp)
    # Line 1325
    addiu	$at,$at,5160
    # Line 1354
    lw	$a2,30304($a0)
    # Line 1325
    move	$a3,$a0
    # Line 1354
    sw	$a2,0($sp)
    # Line 1372
    bc1f	.L0d9ffcd0
    # Line 1325
    addu	$gp,$t9,$at
    # Line 1372
    c.lt.s $f4,$f5
    bc1f .L0d9ffd90
    nop
    # Line 1380
    mtc1	$a2,$f5
    cvt.s.w	$f5,$f5
    lw	$t0,30384($a0)
    # Line 1379
    ld	$a7,136($sp)
    # Line 1378
    trunc.l.s	$f1,$f6
    # Line 1379
    lw	$a5,30380($a0)
    # Line 1380
    c.lt.s $f4,$f5
    sw	$t0,40($sp)
    # Line 1379
    srav	$a5,$a5,$a7
    sw	$a5,32($sp)
    # Line 1378
    dmfc1	$a4,$f1
    # Line 1380
    bc1f .L0d9ffe5c
    # Line 1378
    sw	$a4,24($sp)
    # Line 1382
    sub.s	$f6,$f5,$f4
    trunc.w.s	$f6,$f6
    swc1	$f6,4($sp)
    # Line 1384
    lw	$a0,1632($a0)
    li	$t1,513
    # Line 1382
    mfc1	$t2,$f6
    # Line 1384
    lw	$a5,30552($a3)
    # Line 1383
    subu	$a2,$a2,$t2
    # Line 1384
    beq	$a0,$t1,.L0d9fffb8
    # Line 1383
    sw	$a2,0($sp)
    # Line 1384
    li	$t3,516
.L0d9ffc9c:
    beq	$a0,$t3,.L0d9fffa8
    nop
.L0d9ffca4:
    # Line 1390
    sw	$a6,20($sp)
.L0d9ffca8:
    # Line 1392
    sra	$a6,$a2,0x1f
    xor	$a4,$a2,$a6
    subu	$a4,$a4,$a6
    # Line 1394
    sw	$zero,44($sp)
    # Line 1392
    andi	$a4,$a4,0x1f
    # Line 1393
    sw	$zero,36($sp)
    # Line 1392
    xor	$a4,$a4,$a6
    # Line 1391
    sw	$a5,28($sp)
    # Line 1394
    b	.L0d9ffcfc
    # Line 1392
    subu	$a4,$a4,$a6
.L0d9ffcd0:
    # Line 1425
    lw	$a0,1632($a0)
    li	$a5,513
    beq	$a0,$a5,.L0d9ffe6c
    lw	$a5,30552($a3)
    li	$a6,516
.L0d9ffce4:
    beq	$a0,$a6,.L0d9ffe84
    nop
.L0d9ffcec:
    # Line 1432
    sw	$zero,40($sp)
    # Line 1431
    sw	$zero,32($sp)
    # Line 1430
    sw	$a5,24($sp)
    # Line 1432
    move	$a4,$zero
.L0d9ffcfc:
    beqz	$a2,.L0d9ffe94
    nop
    sd	$a4,216($sp)
    sd	$zero,176($sp)
    addiu	$a2,$sp,16
    sd	$a2,56($sp)
    addiu	$a5,$sp,40
    sd	$a5,232($sp)
    addiu	$t2,$sp,24
    sd	$t2,112($sp)
    sd	$sp,120($sp)
    sd	$s3,280($sp)
    lw	$s3,48($sp)
    sd	$a3,208($sp)
    sd	$s8,256($sp)
    sd	$s6,272($sp)
    lw	$t1,52($sp)
    lw	$a7,0($sp)
    move	$s6,$zero
    sd	$a7,160($sp)
    li	$s8,-1
    li	$a6,32
    sd	$t1,184($sp)
    subu	$a6,$a6,$a4
    beqz	$a7,.L0d9ffecc
    sd	$a6,224($sp)
.L0d9ffd64:
    sd	$s5,240($sp)
    sd	$ra,248($sp)
    sd	$s4,264($sp)
    sd	$s2,288($sp)
    ld	$t3,112($sp)
    ld	$t8,232($sp)
    lw	$t3,0($t3)
    lw	$t8,0($t8)
    sd	$t8,88($sp)
    b	.L0da00080
    sd	$t3,144($sp)
.L0d9ffd90:
    # Line 1399
    sw	$zero,40($sp)
    # Line 1400
    lw	$a0,1632($a0)
    # Line 1398
    sw	$zero,32($sp)
    # Line 1400
    li	$t9,513
    # Line 1397
    lw	$a4,30548($a3)
    # Line 1400
    beq	$a0,$t9,.L0d9fff80
    # Line 1397
    sw	$a4,24($sp)
    # Line 1400
    li	$at,516
.L0d9ffdb0:
    beq	$a0,$at,.L0d9fff98
    nop
.L0d9ffdb8:
    # Line 1404
    sub.s	$f7,$f4,$f5
    ldc1	$f8,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f8
    trunc.w.d	$f7,$f7
    mfc1	$a0,$f7
    slt	$v0,$a0,$a2
    beqz	$v0,.L0d9ffe64
    # Line 1408
    move	$t9,$a0
    addiu	$t3,$a0,31
    slt	$t8,$a0,$zero
    movz	$t3,$t9,$t8
    # Line 1407
    swc1	$f7,0($sp)
    # Line 1408
    sra	$t3,$t3,0x5
    # Line 1410
    lw	$a1,30380($a3)
    # Line 1408
    sll	$a4,$t3,0x5
    subu	$a4,$a0,$a4
    # Line 1410
    mult	$a4,$a1
    lw	$a7,30384($a3)
    mflo	$t1
    nop
    nop
    mult	$a7,$t3
    mflo	$t2
    addu	$t1,$t1,$t2
    mtc1	$t1,$f8
    cvt.d.s	$f9,$f6
    cvt.d.w	$f8,$f8
    # Line 1409
    sw	$a6,20($sp)
    # Line 1410
    add.d	$f8,$f8,$f9
    # Line 1406
    subu	$t0,$a2,$a0
    sw	$t0,4($sp)
    # Line 1420
    ld	$a5,136($sp)
    # Line 1410
    trunc.l.d	$f8,$f8
    # Line 1421
    sw	$a7,44($sp)
    # Line 1420
    srav	$a1,$a1,$a5
    sw	$a1,36($sp)
    # Line 1410
    dmfc1	$v1,$f8
    # Line 1407
    move	$a2,$a0
    # Line 1421
    b	.L0d9ffcfc
    # Line 1410
    sw	$v1,28($sp)
.L0d9ffe5c:
    b	.L0d9ffcfc
    # Line 1394
    move	$a4,$zero
.L0d9ffe64:
    b	.L0d9ffcfc
    # Line 1421
    move	$a4,$zero
.L0d9ffe6c:
    # Line 1425
    beqz	$a5,.L0d9ffce4
    li	$a6,516
    # Line 1429
    la	$at,__glCDTPixel
.L0d9ffe78:
    lw	$at,0($at)
    b	.L0d9ffcec
    sw	$at,16($sp)
.L0d9ffe84:
    # Line 1425
    bnez	$a5,.L0d9ffcec
    nop
    b	.L0d9ffe78
    # Line 1429
    la	$at,__glCDTPixel
.L0d9ffe94:
    # Line 1561
    ld	$gp,104($sp)
    ld	$s0,80($sp)
    # Line 1552
    move	$v0,$zero
    # Line 1561
    ld	$s1,72($sp)
    ld	$s7,64($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0d9ffeb0:
    ld	$a2,56($sp)
    ld	$s2,288($sp)
    ld	$s4,264($sp)
    ld	$ra,248($sp)
    ld	$s5,240($sp)
    ld	$a5,232($sp)
    ld	$a6,224($sp)
.L0d9ffecc:
    ld	$a3,216($sp)
    ld	$a4,208($sp)
    # Line 1491
    addiu	$a7,$a5,4
    sd	$a7,232($sp)
    addiu	$t0,$a2,4
    sd	$t0,56($sp)
    addiu	$s6,$s6,4
    sd	$s6,96($sp)
    ld	$a1,120($sp)
    sd	$a6,224($sp)
    ld	$v1,112($sp)
    addiu	$t1,$a1,4
    # Line 1492
    lw	$v0,0($t1)
    # Line 1491
    sd	$t1,120($sp)
    addiu	$t2,$v1,4
    sd	$t2,112($sp)
    # Line 1492
    beqz	$v0,.L0da001c4
    sd	$v0,160($sp)
    ld	$a2,224($sp)
    sd	$t2,192($sp)
    beqz	$a3,.L0da001b8
    sd	$a7,200($sp)
    ld	$a5,200($sp)
    sd	$s2,288($sp)
    # Line 1508
    ld	$s2,128($sp)
    sd	$s4,264($sp)
    # Line 1493
    ld	$t9,160($sp)
    # Line 1506
    ld	$a6,192($sp)
    ld	$at,136($sp)
    # Line 1497
    move	$a4,$t9
    # Line 1493
    slt	$v0,$t9,$a2
    # Line 1506
    lw	$t8,0($a6)
    movz	$a4,$a2,$v0
    sd	$t8,144($sp)
    # Line 1508
    addiu	$s4,$a4,-1
    # Line 1498
    subu	$t9,$t9,$a4
    sd	$t9,160($sp)
    # Line 1506
    srlv	$t8,$t8,$at
    # Line 1498
    sw	$t9,0($t1)
    # Line 1508
    bltz	$s4,.L0da00170
    # Line 1506
    addu	$s2,$s2,$t8
    sd	$s5,240($sp)
    # Line 1508
    lw	$s5,0($t0)
    b	.L0da000fc
    sd	$ra,248($sp)
.L0d9fff80:
    # Line 1400
    beqz	$a4,.L0d9ffdb0
    li	$at,516
    # Line 1404
    la	$v1,__glCDTPixel
.L0d9fff8c:
    lw	$v1,0($v1)
    b	.L0d9ffdb8
    sw	$v1,16($sp)
.L0d9fff98:
    # Line 1400
    bnez	$a4,.L0d9ffdb8
    nop
    b	.L0d9fff8c
    # Line 1404
    la	$v1,__glCDTPixel
.L0d9fffa8:
    # Line 1384
    bnez	$a5,.L0d9ffca4
    nop
    b	.L0d9fffc4
    # Line 1388
    la	$a0,__glCDTPixel
.L0d9fffb8:
    # Line 1384
    beqz	$a5,.L0d9ffc9c
    li	$t3,516
    # Line 1388
    la	$a0,__glCDTPixel
.L0d9fffc4:
    lw	$a0,0($a0)
    b	.L0d9ffca8
    sw	$a0,20($sp)
.L0d9fffd0:
    # Line 1467
    addu	$a1,$a2,$s7
    lbu	$a1,0($a1)
    sb	$a1,0($s0)
.L0d9fffdc:
    # Line 1477
    addiu	$s1,$s1,4
    # Line 1476
    addu	$a2,$s6,$a0
    # Line 1453
    addiu	$s4,$s4,-1
    # Line 1476
    lw	$a2,0($a2)
    # Line 1480
    srl	$s3,$s3,0x1
    # Line 1478
    addiu	$s0,$s0,1
    # Line 1453
    beq	$s4,$s8,.L0da0004c
    # Line 1476
    addu	$s2,$a2,$s2
.L0d9ffffc:
    # Line 1466
    move	$t9,$s5
    move	$a0,$s2
    lw	$a1,0($s1)
    jalr	$t9
    move	$a2,$s1
    addiu	$a0,$sp,32
    bnez	$v0,.L0d9fffd0
    lbu	$a2,0($s0)
    # Line 1471
    ld	$a4,176($sp)
    # Line 1469
    ld	$a3,168($sp)
    # Line 1471
    addiu	$a4,$a4,1
    sd	$a4,176($sp)
    # Line 1470
    ld	$a4,184($sp)
    # Line 1469
    addu	$a3,$a2,$a3
    # Line 1470
    nor	$a5,$s3,$zero
    # Line 1469
    lbu	$a3,0($a3)
    # Line 1470
    and	$a4,$a4,$a5
    sd	$a4,184($sp)
    b	.L0d9fffdc
    # Line 1469
    sb	$a3,0($s0)
.L0da0004c:
    # Line 1485
    ld	$a6,184($sp)
    ld	$a5,152($sp)
    # Line 1489
    ld	$t1,88($sp)
    ld	$a7,144($sp)
    ld	$t0,112($sp)
    addu	$a7,$a7,$t1
    sd	$a7,144($sp)
    ld	$a4,160($sp)
    sw	$a7,0($t0)
    # Line 1485
    sw	$a6,0($a5)
    addiu	$a5,$a5,4
    # Line 1489
    beqz	$a4,.L0d9ffeb0
    sd	$a5,152($sp)
.L0da00080:
    # Line 1450
    ld	$t9,136($sp)
    ld	$t8,144($sp)
    srlv	$t8,$t8,$t9
    # Line 1442
    ld	$t2,160($sp)
    ld	$s5,56($sp)
    li	$at,32
    li	$ra,32
    # Line 1453
    ld	$t3,120($sp)
    # Line 1442
    move	$a2,$t2
    slt	$ra,$ra,$t2
    # Line 1450
    ld	$s2,128($sp)
    # Line 1442
    movn	$a2,$at,$ra
    # Line 1451
    li	$t9,-1
    sd	$t9,184($sp)
    # Line 1453
    addiu	$s4,$a2,-1
    # Line 1452
    lui	$s3,0x8000
    # Line 1445
    subu	$t2,$t2,$a2
    sd	$t2,160($sp)
    # Line 1450
    addu	$s2,$s2,$t8
    # Line 1453
    bltz	$s4,.L0da0004c
    # Line 1445
    sw	$t2,0($t3)
    b	.L0d9ffffc
    # Line 1453
    lw	$s5,0($s5)
.L0da000dc:
    # Line 1522
    addu	$t8,$a2,$s7
    lbu	$t8,0($t8)
    sb	$t8,0($s0)
.L0da000e8:
    # Line 1531
    lw	$t9,0($t9)
    # Line 1535
    srl	$s3,$s3,0x1
    # Line 1533
    addiu	$s0,$s0,1
    # Line 1508
    beq	$s4,$s8,.L0da0015c
    # Line 1531
    addu	$s2,$t9,$s2
.L0da000fc:
    # Line 1521
    move	$t9,$s5
    move	$a0,$s2
    lw	$a1,0($s1)
    jalr	$t9
    move	$a2,$s1
    # Line 1508
    addiu	$s4,$s4,-1
    # Line 1531
    ld	$t9,96($sp)
    # Line 1532
    addiu	$s1,$s1,4
    # Line 1531
    addiu	$a0,$sp,32
    # Line 1521
    lbu	$a2,0($s0)
    bnez	$v0,.L0da000dc
    # Line 1531
    addu	$t9,$t9,$a0
    # Line 1526
    ld	$at,176($sp)
    # Line 1524
    ld	$ra,168($sp)
    # Line 1526
    addiu	$at,$at,1
    sd	$at,176($sp)
    # Line 1525
    ld	$at,184($sp)
    # Line 1524
    addu	$ra,$a2,$ra
    # Line 1525
    nor	$v0,$s3,$zero
    # Line 1524
    lbu	$ra,0($ra)
    # Line 1525
    and	$at,$at,$v0
    sd	$at,184($sp)
    b	.L0da000e8
    # Line 1524
    sb	$ra,0($s0)
.L0da0015c:
    ld	$ra,248($sp)
    ld	$s5,240($sp)
    ld	$a2,224($sp)
    ld	$a5,200($sp)
    ld	$a6,192($sp)
.L0da00170:
    # Line 1546
    mtc1	$a2,$f10
    lw	$a7,0($a5)
    ldc1	$f11,_lit8_3fa0000000000000
    mtc1	$a7,$f9
    cvt.d.w	$f10,$f10
    mul.d	$f10,$f10,$f11
    cvt.d.w	$f9,$f9
    ld	$s2,288($sp)
    mul.d	$f9,$f9,$f10
    ld	$s4,264($sp)
    # Line 1540
    ld	$v1,184($sp)
    # Line 1546
    trunc.w.d	$f9,$f9
    # Line 1540
    ld	$a1,152($sp)
    # Line 1546
    ld	$at,144($sp)
    mfc1	$v0,$f9
    # Line 1540
    sw	$v1,-4($a1)
    # Line 1546
    addu	$at,$at,$v0
    sw	$at,0($a6)
.L0da001b8:
    ld	$t0,160($sp)
    bnez	$t0,.L0d9ffd64
    ld	$a4,208($sp)
.L0da001c4:
    ld	$t1,176($sp)
    ld	$s3,280($sp)
    ld	$s6,272($sp)
    beqz	$t1,.L0d9ffe94
    ld	$s8,256($sp)
    # Line 1552
    ld	$t3,176($sp)
    lw	$t2,30304($a4)
    beq	$t2,$t3,.L0da00204
    # Line 1560
    li	$v0,1
    # Line 1561
    ld	$gp,104($sp)
    ld	$s0,80($sp)
    # Line 1556
    li	$v0,1
    # Line 1561
    ld	$s1,72($sp)
    ld	$s7,64($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0da00204:
    # Line 1560
    sb	$v0,30532($a4)
    # Line 1561
    ld	$gp,104($sp)
    ld	$s0,80($sp)
    ld	$s1,72($sp)
    ld	$s7,64($sp)
    jr	$ra
    addiu	$sp,$sp,304
.end __glDepthTestStencilOffsetSpan

# Function: __glDepthTestStencilStippledOffsetSpan
# Declared: Line 1564 (Source lines: 1565-1801)
# Address: 0x0da00220 - 0x0da008bc (Size: 1692 bytes, Frame: 192)
.globl __glDepthTestStencilStippledOffsetSpan
.ent __glDepthTestStencilStippledOffsetSpan
__glDepthTestStencilStippledOffsetSpan:
    # Line 1613
    lwc1	$f5,30560($a0)
    # Line 1611
    lwc1	$f6,30540($a0)
    # Line 1604
    lw	$a2,31364($a0)
    # Line 1606
    lw	$a3,30528($a0)
    # Line 1602
    lw	$a7,12080($a0)
    # Line 1600
    lw	$v0,31244($a0)
    # Line 1601
    lw	$v1,31248($a0)
    # Line 1565
    addiu	$sp,$sp,-320
    # Line 1603
    lw	$a1,31372($a0)
    sd	$a1,136($sp)
    # Line 1601
    sd	$v1,184($sp)
    # Line 1600
    sd	$v0,168($sp)
    # Line 1565
    sd	$s0,80($sp)
    # Line 1599
    lw	$s0,30508($a0)
    # Line 1565
    sd	$s2,104($sp)
    # Line 1598
    lw	$s2,30496($a0)
    # Line 1596
    sw	$zero,8($sp)
    # Line 1595
    sw	$zero,4($sp)
    # Line 1612
    lwc1	$f4,30556($a0)
    # Line 1613
    mtc1	$zero,$f0
    # Line 1602
    sw	$a7,16($sp)
    # Line 1594
    lw	$a4,30304($a0)
    sw	$a4,0($sp)
    # Line 1613
    c.lt.s	$f0,$f4
    # Line 1606
    sd	$a3,160($sp)
    # Line 1565
    lui	$at,0x9
    move	$a3,$a0
    sd	$gp,96($sp)
    addiu	$at,$at,3512
    # Line 1604
    sd	$a2,128($sp)
    # Line 1594
    move	$a2,$a4
    # Line 1613
    bc1f	.L0da00344
    # Line 1565
    addu	$gp,$t9,$at
    # Line 1613
    c.lt.s $f4,$f5
    bc1f .L0da00410
    sd	$s6,248($sp)
    # Line 1621
    mtc1	$a4,$f5
    cvt.s.w	$f5,$f5
    lw	$t1,30384($a0)
    # Line 1620
    ld	$t0,136($sp)
    # Line 1619
    trunc.l.s	$f1,$f6
    # Line 1620
    lw	$a6,30380($a0)
    # Line 1621
    c.lt.s $f4,$f5
    sw	$t1,40($sp)
    # Line 1620
    srav	$a6,$a6,$t0
    sw	$a6,32($sp)
    # Line 1619
    dmfc1	$a5,$f1
    # Line 1621
    bc1f .L0da00500
    # Line 1619
    sw	$a5,24($sp)
    # Line 1623
    sub.s	$f6,$f5,$f4
    trunc.w.s	$f6,$f6
    swc1	$f6,4($sp)
    # Line 1625
    lw	$a0,1632($a0)
    li	$t2,513
    # Line 1623
    mfc1	$a2,$f6
    # Line 1625
    lw	$a6,30552($a3)
    # Line 1624
    subu	$a2,$a4,$a2
    # Line 1625
    beq	$a0,$t2,.L0da006d0
    # Line 1624
    sw	$a2,0($sp)
.L0da0030c:
    # Line 1625
    li	$a5,516
    beq	$a0,$a5,.L0da006c0
    nop
.L0da00318:
    # Line 1631
    sw	$a7,20($sp)
.L0da0031c:
    # Line 1633
    sra	$a7,$a2,0x1f
    xor	$a5,$a2,$a7
    subu	$a5,$a5,$a7
    # Line 1635
    sw	$zero,44($sp)
    # Line 1633
    andi	$a5,$a5,0x1f
    # Line 1634
    sw	$zero,36($sp)
    # Line 1633
    xor	$a5,$a5,$a7
    # Line 1632
    sw	$a6,28($sp)
    # Line 1635
    b	.L0da00374
    # Line 1633
    subu	$a5,$a5,$a7
.L0da00344:
    # Line 1666
    lw	$a0,1632($a0)
    li	$a7,513
    lw	$a6,30552($a3)
    beq	$a0,$a7,.L0da00510
    sd	$s6,248($sp)
    li	$t0,516
.L0da0035c:
    beq	$a0,$t0,.L0da00528
    nop
.L0da00364:
    # Line 1673
    sw	$zero,40($sp)
    # Line 1672
    sw	$zero,32($sp)
    # Line 1671
    sw	$a6,24($sp)
    # Line 1673
    move	$a5,$zero
.L0da00374:
    beqz	$a2,.L0da004dc
    nop
    sd	$a5,232($sp)
    addiu	$a2,$sp,16
    sd	$a2,192($sp)
    sd	$s5,272($sp)
    lw	$s5,56($sp)
    addiu	$a4,$sp,40
    sd	$a4,240($sp)
    addiu	$t2,$sp,24
    sd	$t2,112($sp)
    sd	$sp,120($sp)
    sd	$s1,264($sp)
    lw	$s1,48($sp)
    sd	$a3,216($sp)
    sd	$s8,280($sp)
    sd	$s7,256($sp)
    lw	$t0,52($sp)
    move	$s7,$zero
    lw	$t1,0($sp)
    addiu	$s8,$sp,32
    li	$a0,-1
    sd	$t1,152($sp)
    move	$s6,$zero
    li	$a6,32
    sd	$t0,176($sp)
    subu	$a6,$a6,$a5
    beqz	$t1,.L0da00550
    sd	$a6,224($sp)
.L0da003e8:
    sd	$ra,288($sp)
    sd	$s4,296($sp)
    sd	$s3,304($sp)
    ld	$t3,112($sp)
    ld	$t8,240($sp)
    lw	$t3,0($t3)
    lw	$t8,0($t8)
    sd	$t8,72($sp)
    b	.L0da007b4
    sd	$t3,144($sp)
.L0da00410:
    # Line 1640
    sw	$zero,40($sp)
    # Line 1641
    lw	$a0,1632($a0)
    # Line 1639
    sw	$zero,32($sp)
    # Line 1641
    li	$t9,513
    # Line 1638
    lw	$a5,30548($a3)
    # Line 1641
    beq	$a0,$t9,.L0da00600
    # Line 1638
    sw	$a5,24($sp)
.L0da0042c:
    # Line 1641
    li	$at,516
    beq	$a0,$at,.L0da00614
    nop
.L0da00438:
    # Line 1645
    sub.s	$f7,$f4,$f5
    ldc1	$f8,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f8
    trunc.w.d	$f7,$f7
    mfc1	$a0,$f7
    slt	$v0,$a0,$a4
    beqz	$v0,.L0da00508
    # Line 1649
    move	$at,$a0
    addiu	$t8,$a0,31
    slt	$t9,$a0,$zero
    movz	$t8,$at,$t9
    # Line 1648
    swc1	$f7,0($sp)
    # Line 1649
    sra	$t8,$t8,0x5
    # Line 1651
    lw	$a1,30380($a3)
    # Line 1649
    sll	$a5,$t8,0x5
    subu	$a5,$a0,$a5
    # Line 1651
    mult	$a5,$a1
    lw	$t0,30384($a3)
    mflo	$t2
    nop
    nop
    mult	$t0,$t8
    mflo	$t3
    addu	$t2,$t2,$t3
    mtc1	$t2,$f8
    cvt.d.s	$f9,$f6
    cvt.d.w	$f8,$f8
    # Line 1650
    sw	$a7,20($sp)
    # Line 1651
    add.d	$f8,$f8,$f9
    # Line 1647
    subu	$t1,$a4,$a0
    sw	$t1,4($sp)
    # Line 1661
    ld	$a6,136($sp)
    # Line 1651
    trunc.l.d	$f8,$f8
    # Line 1662
    sw	$t0,44($sp)
    # Line 1661
    srav	$a1,$a1,$a6
    sw	$a1,36($sp)
    # Line 1651
    dmfc1	$v1,$f8
    # Line 1648
    move	$a2,$a0
    # Line 1662
    b	.L0da00374
    # Line 1651
    sw	$v1,28($sp)
.L0da004dc:
    # Line 1798
    beqz	$a4,.L0da006a8
    ld	$s6,248($sp)
.L0da004e4:
    ld	$s6,248($sp)
    # Line 1801
    ld	$gp,96($sp)
    # Line 1798
    move	$v0,$zero
    # Line 1801
    ld	$s0,80($sp)
    ld	$s2,104($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0da00500:
    b	.L0da00374
    # Line 1635
    move	$a5,$zero
.L0da00508:
    b	.L0da00374
    # Line 1662
    move	$a5,$zero
.L0da00510:
    # Line 1666
    beqz	$a6,.L0da0035c
    li	$t0,516
    # Line 1670
    la	$v0,__glCDTPixel
.L0da0051c:
    lw	$v0,0($v0)
    b	.L0da00364
    sw	$v0,16($sp)
.L0da00528:
    # Line 1666
    bnez	$a6,.L0da00364
    nop
    b	.L0da0051c
    # Line 1670
    la	$v0,__glCDTPixel
.L0da00538:
    ld	$a2,192($sp)
    ld	$s3,304($sp)
    ld	$s4,296($sp)
    ld	$ra,288($sp)
    ld	$a4,240($sp)
    ld	$a6,224($sp)
.L0da00550:
    ld	$a3,232($sp)
    ld	$a5,216($sp)
    # Line 1735
    addiu	$t0,$a4,4
    sd	$t0,240($sp)
    addiu	$s7,$s7,4
    sd	$s7,88($sp)
    sd	$a6,224($sp)
    ld	$a7,120($sp)
    ld	$a1,112($sp)
    addiu	$t1,$a7,4
    sd	$t1,120($sp)
    # Line 1736
    lw	$v1,0($t1)
    # Line 1735
    addiu	$t2,$a1,4
    sd	$t2,112($sp)
    addiu	$a7,$a2,4
    sd	$a7,192($sp)
    # Line 1736
    beqz	$v1,.L0da0068c
    sd	$v1,152($sp)
    ld	$a2,224($sp)
    sd	$t2,200($sp)
    sd	$t0,208($sp)
    beqz	$a3,.L0da00680
    sd	$a7,64($sp)
    ld	$a4,208($sp)
    sd	$s3,304($sp)
    # Line 1751
    ld	$s3,128($sp)
    sd	$s4,296($sp)
    # Line 1737
    ld	$t9,152($sp)
    # Line 1750
    ld	$a6,200($sp)
    ld	$at,136($sp)
    # Line 1741
    move	$a5,$t9
    # Line 1737
    slt	$v0,$t9,$a2
    # Line 1750
    lw	$t8,0($a6)
    movz	$a5,$a2,$v0
    sd	$t8,144($sp)
    # Line 1751
    addiu	$s4,$a5,-1
    # Line 1742
    subu	$t9,$t9,$a5
    sd	$t9,152($sp)
    # Line 1750
    srlv	$t8,$t8,$at
    # Line 1742
    sw	$t9,0($t1)
    # Line 1751
    bltz	$s4,.L0da00634
    # Line 1750
    addu	$s3,$s3,$t8
    b	.L0da008b0
    sd	$ra,288($sp)
.L0da00600:
    # Line 1641
    beqz	$a5,.L0da0042c
    # Line 1645
    la	$v1,__glCDTPixel
.L0da00608:
    lw	$v1,0($v1)
    b	.L0da00438
    sw	$v1,16($sp)
.L0da00614:
    # Line 1641
    bnez	$a5,.L0da00438
    nop
    b	.L0da00608
    # Line 1645
    la	$v1,__glCDTPixel
.L0da00624:
    ld	$ra,288($sp)
    ld	$a2,224($sp)
    ld	$a4,208($sp)
    ld	$a6,200($sp)
.L0da00634:
    # Line 1791
    mtc1	$a2,$f10
    lw	$t0,0($a4)
    ldc1	$f11,_lit8_3fa0000000000000
    mtc1	$t0,$f9
    cvt.d.w	$f10,$f10
    mul.d	$f10,$f10,$f11
    cvt.d.w	$f9,$f9
    ld	$s3,304($sp)
    mul.d	$f9,$f9,$f10
    ld	$s4,296($sp)
    # Line 1785
    ld	$a7,176($sp)
    # Line 1791
    trunc.w.d	$f9,$f9
    # Line 1785
    ld	$t0,160($sp)
    # Line 1791
    ld	$a1,144($sp)
    mfc1	$a3,$f9
    # Line 1785
    and	$a7,$a7,$s5
    sw	$a7,-4($t0)
    # Line 1791
    addu	$a1,$a1,$a3
    sw	$a1,0($a6)
.L0da00680:
    ld	$t1,152($sp)
    bnez	$t1,.L0da003e8
    ld	$a5,216($sp)
.L0da0068c:
    ld	$s8,280($sp)
    lw	$t2,30304($a5)
    ld	$s5,272($sp)
    ld	$s1,264($sp)
    bne	$t2,$s6,.L0da004e4
    ld	$s7,256($sp)
    ld	$s6,248($sp)
.L0da006a8:
    # Line 1801
    ld	$gp,96($sp)
    li	$v0,1
    ld	$s0,80($sp)
    ld	$s2,104($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0da006c0:
    # Line 1625
    bnez	$a6,.L0da00318
    nop
    b	.L0da006d8
    # Line 1629
    la	$t3,__glCDTPixel
.L0da006d0:
    # Line 1625
    beqz	$a6,.L0da0030c
    # Line 1629
    la	$t3,__glCDTPixel
.L0da006d8:
    lw	$t3,0($t3)
    b	.L0da0031c
    sw	$t3,20($sp)
    nop
    nop
    nop
.L0da006f0:
    # Line 1709
    lw	$t9,0($t9)
    move	$a0,$s3
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    li	$a0,-1
    beqz	$v0,.L0da00754
    lbu	$a2,0($s0)
    # Line 1710
    ld	$ra,184($sp)
    addu	$ra,$a2,$ra
    lbu	$ra,0($ra)
    sb	$ra,0($s0)
.L0da00720:
    # Line 1722
    addiu	$s0,$s0,1
    # Line 1720
    addu	$at,$s7,$s8
    # Line 1724
    srl	$s1,$s1,0x1
    # Line 1695
    addiu	$s4,$s4,-1
    # Line 1720
    lw	$at,0($at)
    # Line 1721
    addiu	$s2,$s2,4
    # Line 1695
    and	$v0,$s1,$s5
    beq	$s4,$a0,.L0da0077c
    # Line 1720
    addu	$s3,$at,$s3
.L0da00744:
    # Line 1695
    bnez	$v0,.L0da006f0
    # Line 1709
    ld	$t9,192($sp)
    b	.L0da00720
    # Line 1716
    addiu	$s6,$s6,1
.L0da00754:
    # Line 1713
    ld	$a1,176($sp)
    # Line 1712
    ld	$v1,168($sp)
    # Line 1713
    nor	$a3,$s1,$zero
    and	$a1,$a1,$a3
    sd	$a1,176($sp)
    # Line 1712
    addu	$v1,$a2,$v1
    lbu	$v1,0($v1)
    # Line 1714
    addiu	$s6,$s6,1
    b	.L0da00720
    # Line 1712
    sb	$v1,0($s0)
.L0da0077c:
    # Line 1729
    ld	$a2,160($sp)
    ld	$a3,176($sp)
    # Line 1733
    ld	$a6,72($sp)
    ld	$a4,144($sp)
    ld	$a5,112($sp)
    addu	$a4,$a4,$a6
    sd	$a4,144($sp)
    ld	$a1,152($sp)
    sw	$a4,0($a5)
    # Line 1729
    and	$a3,$a3,$s5
    sw	$a3,0($a2)
    addiu	$a2,$a2,4
    # Line 1733
    beqz	$a1,.L0da00538
    sd	$a2,160($sp)
.L0da007b4:
    # Line 1691
    ld	$t9,136($sp)
    ld	$t8,144($sp)
    # Line 1695
    ld	$t0,120($sp)
    # Line 1691
    srlv	$t8,$t8,$t9
    # Line 1683
    ld	$a7,152($sp)
    # Line 1691
    ld	$s3,128($sp)
    # Line 1683
    li	$at,32
    li	$ra,32
    # Line 1692
    ld	$s5,160($sp)
    # Line 1683
    move	$a2,$a7
    slt	$ra,$ra,$a7
    # Line 1693
    li	$t9,-1
    sd	$t9,176($sp)
    # Line 1683
    movn	$a2,$at,$ra
    # Line 1694
    lui	$s1,0x8000
    # Line 1692
    lw	$s5,0($s5)
    # Line 1695
    addiu	$s4,$a2,-1
    # Line 1691
    addu	$s3,$s3,$t8
    # Line 1686
    subu	$a7,$a7,$a2
    sd	$a7,152($sp)
    # Line 1695
    and	$v0,$s1,$s5
    bgez	$s4,.L0da008a8
    # Line 1686
    sw	$a7,0($t0)
    b	.L0da0077c
    nop
.L0da00818:
    # Line 1765
    lw	$t9,0($t9)
    move	$a0,$s3
    move	$a2,$s2
    jalr	$t9
    lw	$a1,0($s2)
    li	$a0,-1
    beqz	$v0,.L0da00880
    lbu	$a2,0($s0)
    # Line 1766
    ld	$ra,184($sp)
    addu	$ra,$a2,$ra
    lbu	$ra,0($ra)
    sb	$ra,0($s0)
.L0da00848:
    # Line 1776
    ld	$at,88($sp)
    # Line 1778
    addiu	$s0,$s0,1
    # Line 1776
    addu	$at,$at,$s8
    # Line 1780
    srl	$s1,$s1,0x1
    # Line 1751
    addiu	$s4,$s4,-1
    # Line 1776
    lw	$at,0($at)
    # Line 1777
    addiu	$s2,$s2,4
    # Line 1751
    and	$v0,$s1,$s5
    beq	$s4,$a0,.L0da00624
    # Line 1776
    addu	$s3,$at,$s3
.L0da00870:
    # Line 1751
    bnez	$v0,.L0da00818
    # Line 1765
    ld	$t9,64($sp)
    b	.L0da00848
    # Line 1772
    addiu	$s6,$s6,1
.L0da00880:
    # Line 1769
    ld	$a1,176($sp)
    # Line 1768
    ld	$v1,168($sp)
    # Line 1769
    nor	$a3,$s1,$zero
    and	$a1,$a1,$a3
    sd	$a1,176($sp)
    # Line 1768
    addu	$v1,$a2,$v1
    lbu	$v1,0($v1)
    # Line 1770
    addiu	$s6,$s6,1
    b	.L0da00848
    # Line 1768
    sb	$v1,0($s0)
.L0da008a8:
    b	.L0da00744
    nop
.L0da008b0:
    # Line 1751
    and	$v0,$s1,$s5
    b	.L0da00870
    nop
.end __glDepthTestStencilStippledOffsetSpan

# Function: __glDepthPassSpan
# Declared: Line 1808 (Source lines: 1814-1824)
# Address: 0x0da008c0 - 0x0da00944 (Size: 132 bytes, Frame: 0)
.globl __glDepthPassSpan
.ent __glDepthPassSpan
__glDepthPassSpan:
    # Line 1814
    lw	$a6,30304($a0)
    # Line 1817
    lw	$a3,31248($a0)
    # Line 1819
    addiu	$at,$a6,-1
    # Line 1816
    lw	$a5,30508($a0)
    andi	$v0,$a6,0x1
    sra	$a0,$a6,0x1
    # Line 1819
    bltz	$at,.L0da0093c
    move	$a2,$at
    li	$a4,-1
    beqz	$v0,.L0da00904
    nop
    # Line 1820
    lbu	$v1,0($a5)
    addu	$v1,$v1,$a3
    # Line 1821
    addiu	$a5,$a5,1
    # Line 1820
    lbu	$v1,0($v1)
    # Line 1819
    addiu	$a2,$a6,-2
    # Line 1820
    sb	$v1,-1($a5)
.L0da00904:
    beqz	$a0,.L0da0093c
    move	$a1,$a5
    nop
.L0da00910:
    lbu	$a6,0($a1)
    lbu	$a5,1($a1)
    addu	$a6,$a6,$a3
    lbu	$a6,0($a6)
    # Line 1819
    addiu	$a2,$a2,-2
    # Line 1820
    addu	$a5,$a5,$a3
    sb	$a6,0($a1)
    # Line 1821
    addiu	$a1,$a1,2
    # Line 1820
    lbu	$a5,0($a5)
    # Line 1819
    bne	$a2,$a4,.L0da00910
    # Line 1820
    sb	$a5,-1($a1)
.L0da0093c:
    # Line 1824
    jr	$ra
    move	$v0,$zero
.end __glDepthPassSpan

# Function: __glDepthPassStippledSpan
# Declared: Line 1830 (Source lines: 1837-1865)
# Address: 0x0da00950 - 0x0da00a30 (Size: 224 bytes, Frame: 0)
.globl __glDepthPassStippledSpan
.ent __glDepthPassStippledSpan
__glDepthPassStippledSpan:
    # Line 1837
    lw	$a7,30304($a0)
    # Line 1841
    lw	$a5,31248($a0)
    # Line 1840
    lw	$a2,30508($a0)
    # Line 1841
    beqz	$a7,.L0da00a28
    # Line 1838
    lw	$t0,30528($a0)
    # Line 1841
    li	$a6,-1
    b	.L0da009dc
    li	$t2,32
.L0da00970:
    # Line 1853
    lbu	$at,0($a2)
    addu	$at,$at,$a5
    lbu	$at,0($at)
    sb	$at,0($a2)
.L0da00980:
    # Line 1855
    addiu	$a2,$a2,1
.L0da00984:
    # Line 1851
    and	$v1,$a4,$a1
    beqz	$v0,.L0da009d8
    # Line 1857
    srl	$a1,$a1,0x1
.L0da00990:
    # Line 1851
    beqz	$v1,.L0da009a8
    addiu	$a3,$a3,-2
    # Line 1853
    lbu	$a0,0($a2)
    addu	$a0,$a0,$a5
    lbu	$a0,0($a0)
    sb	$a0,0($a2)
.L0da009a8:
    # Line 1851
    and	$t1,$a4,$a1
    # Line 1857
    srl	$a1,$a1,0x1
    # Line 1851
    beqz	$t1,.L0da009c8
    # Line 1855
    addiu	$a2,$a2,1
    # Line 1853
    lbu	$t3,0($a2)
    addu	$t3,$t3,$a5
    lbu	$t3,0($t3)
    sb	$t3,0($a2)
.L0da009c8:
    # Line 1851
    and	$v1,$a4,$a1
    # Line 1857
    srl	$a1,$a1,0x1
    # Line 1851
    bne	$a3,$a6,.L0da00990
    # Line 1855
    addiu	$a2,$a2,1
.L0da009d8:
    # Line 1851
    beqz	$a7,.L0da00a28
.L0da009dc:
    lui	$a1,0x8000
    # Line 1844
    li	$t8,32
    move	$t1,$a7
    slt	$t8,$t8,$a7
    movn	$t1,$t2,$t8
    # Line 1851
    addiu	$a3,$t1,-1
    # Line 1849
    addiu	$t0,$t0,4
    andi	$t9,$t1,0x1
    lw	$a4,-4($t0)
    # Line 1851
    bltz	$a3,.L0da009d8
    # Line 1847
    subu	$a7,$a7,$t1
    beqz	$t9,.L0da00984
    sra	$v0,$t1,0x1
    # Line 1851
    and	$at,$a4,$a1
    # Line 1857
    srl	$a1,$a1,0x1
    # Line 1851
    bnez	$at,.L0da00970
    addiu	$a3,$a3,-1
    b	.L0da00980
    nop
.L0da00a28:
    # Line 1865
    jr	$ra
    move	$v0,$zero
.end __glDepthPassStippledSpan

# Function: __glShadeCISpan
# Declared: Line 1870 (Source lines: 1878-1887)
# Address: 0x0da00a30 - 0x0da00ad4 (Size: 164 bytes, Frame: 0)
.globl __glShadeCISpan
.ent __glShadeCISpan
__glShadeCISpan:
    # Line 1881
    lw	$a5,30304($a0)
    # Line 1880
    lw	$a4,30520($a0)
    # Line 1881
    addiu	$a2,$a5,-1
    # Line 1879
    lwc1	$f5,30340($a0)
    # Line 1881
    li	$a3,-1
    # Line 1878
    lwc1	$f4,30264($a0)
    # Line 1881
    bltz	$a2,.L0da00acc
    andi	$a1,$a5,0x7
    beqz	$a1,.L0da00a70
    sra	$at,$a5,0x3
.L0da00a58:
    addiu	$a1,$a1,-1
    # Line 1884
    addiu	$a4,$a4,16
    # Line 1881
    addiu	$a2,$a2,-1
    # Line 1882
    swc1	$f4,-16($a4)
    bnez	$a1,.L0da00a58
    # Line 1883
    add.s	$f4,$f4,$f5
.L0da00a70:
    beqz	$at,.L0da00acc
    move	$a1,$a4
    nop
    nop
.L0da00a80:
    add.s	$f7,$f4,$f5
    add.s	$f6,$f7,$f5
    add.s	$f3,$f6,$f5
    # Line 1884
    addiu	$a1,$a1,128
    # Line 1883
    add.s	$f2,$f3,$f5
    # Line 1882
    swc1	$f7,-112($a1)
    swc1	$f6,-96($a1)
    # Line 1883
    add.s	$f1,$f2,$f5
    # Line 1882
    swc1	$f3,-80($a1)
    swc1	$f2,-64($a1)
    # Line 1883
    add.s	$f0,$f1,$f5
    # Line 1882
    swc1	$f1,-48($a1)
    # Line 1881
    addiu	$a2,$a2,-8
    # Line 1882
    swc1	$f0,-32($a1)
    # Line 1883
    add.s	$f0,$f0,$f5
    # Line 1882
    swc1	$f0,-16($a1)
    swc1	$f4,-128($a1)
    # Line 1881
    bne	$a2,$a3,.L0da00a80
    # Line 1883
    add.s	$f4,$f0,$f5
.L0da00acc:
    # Line 1887
    jr	$ra
    move	$v0,$zero
.end __glShadeCISpan

# Function: __glShadeRGBASpan
# Declared: Line 1890 (Source lines: 1899-1920)
# Address: 0x0da00ae0 - 0x0da00ba4 (Size: 196 bytes, Frame: 0)
.globl __glShadeRGBASpan
.ent __glShadeRGBASpan
__glShadeRGBASpan:
    # Line 1907
    lw	$a2,30520($a0)
    # Line 1906
    lwc1	$f8,30352($a0)
    # Line 1905
    lwc1	$f9,30348($a0)
    # Line 1904
    lwc1	$f11,30344($a0)
    # Line 1903
    lwc1	$f10,30340($a0)
    # Line 1908
    lw	$a5,30304($a0)
    # Line 1902
    lwc1	$f4,30276($a0)
    # Line 1901
    lwc1	$f6,30272($a0)
    # Line 1908
    addiu	$a4,$a5,-1
    # Line 1900
    lwc1	$f5,30268($a0)
    # Line 1908
    bltz	$a4,.L0da00b9c
    # Line 1899
    lwc1	$f7,30264($a0)
    # Line 1908
    li	$a3,-1
    andi	$at,$a5,0x1
    beqz	$at,.L0da00b48
    sra	$v0,$a5,0x1
    # Line 1917
    addiu	$a2,$a2,16
    # Line 1912
    swc1	$f4,-4($a2)
    # Line 1916
    add.s	$f4,$f4,$f8
    # Line 1911
    swc1	$f6,-8($a2)
    # Line 1915
    add.s	$f6,$f6,$f9
    # Line 1910
    swc1	$f5,-12($a2)
    # Line 1914
    add.s	$f5,$f5,$f11
    # Line 1908
    addiu	$a4,$a5,-2
    # Line 1909
    swc1	$f7,-16($a2)
    # Line 1913
    add.s	$f7,$f7,$f10
.L0da00b48:
    beqz	$v0,.L0da00b9c
    move	$a1,$a4
.L0da00b50:
    # Line 1917
    addiu	$a2,$a2,32
    # Line 1916
    add.s	$f3,$f4,$f8
    # Line 1912
    swc1	$f3,-4($a2)
    # Line 1915
    add.s	$f2,$f6,$f9
    # Line 1911
    swc1	$f2,-8($a2)
    # Line 1914
    add.s	$f1,$f5,$f11
    # Line 1910
    swc1	$f1,-12($a2)
    # Line 1913
    add.s	$f0,$f7,$f10
    # Line 1909
    swc1	$f0,-16($a2)
    # Line 1912
    swc1	$f4,-20($a2)
    # Line 1916
    add.s	$f4,$f3,$f8
    # Line 1908
    addiu	$a1,$a1,-2
    # Line 1911
    swc1	$f6,-24($a2)
    # Line 1915
    add.s	$f6,$f2,$f9
    # Line 1910
    swc1	$f5,-28($a2)
    # Line 1914
    add.s	$f5,$f1,$f11
    # Line 1909
    swc1	$f7,-32($a2)
    # Line 1908
    bne	$a1,$a3,.L0da00b50
    # Line 1913
    add.s	$f7,$f0,$f10
.L0da00b9c:
    # Line 1920
    jr	$ra
    move	$v0,$zero
.end __glShadeRGBASpan

# Function: __glFlatCISpan
# Declared: Line 1923 (Source lines: 1931-1938)
# Address: 0x0da00bb0 - 0x0da00c14 (Size: 100 bytes, Frame: 0)
.globl __glFlatCISpan
.ent __glFlatCISpan
__glFlatCISpan:
    # Line 1933
    lw	$a5,30304($a0)
    addiu	$a2,$a5,-1
    # Line 1932
    lw	$a4,30520($a0)
    # Line 1933
    bltz	$a2,.L0da00c0c
    # Line 1931
    lwc1	$f4,30264($a0)
    andi	$a1,$a5,0x3
    sra	$at,$a5,0x2
    beqz	$a1,.L0da00be8
    # Line 1933
    li	$a3,-1
.L0da00bd4:
    addiu	$a1,$a1,-1
    # Line 1935
    addiu	$a4,$a4,16
    # Line 1933
    addiu	$a2,$a2,-1
    bnez	$a1,.L0da00bd4
    # Line 1934
    swc1	$f4,-16($a4)
.L0da00be8:
    beqz	$at,.L0da00c0c
    move	$a1,$a4
.L0da00bf0:
    # Line 1935
    addiu	$a1,$a1,64
    # Line 1934
    swc1	$f4,-16($a1)
    swc1	$f4,-32($a1)
    # Line 1933
    addiu	$a2,$a2,-4
    # Line 1934
    swc1	$f4,-48($a1)
    # Line 1933
    bne	$a2,$a3,.L0da00bf0
    # Line 1934
    swc1	$f4,-64($a1)
.L0da00c0c:
    # Line 1938
    jr	$ra
    move	$v0,$zero
.end __glFlatCISpan

# Function: __glFlatRGBASpan
# Declared: Line 1941 (Source lines: 1949-1962)
# Address: 0x0da00c20 - 0x0da00c74 (Size: 84 bytes, Frame: 0)
.globl __glFlatRGBASpan
.ent __glFlatRGBASpan
__glFlatRGBASpan:
    # Line 1953
    lw	$a3,30520($a0)
    # Line 1954
    lw	$a4,30304($a0)
    # Line 1952
    lwc1	$f6,30276($a0)
    # Line 1951
    lwc1	$f7,30272($a0)
    # Line 1954
    addiu	$a2,$a4,-1
    # Line 1950
    lwc1	$f4,30268($a0)
    # Line 1954
    bltz	$a2,.L0da00c6c
    # Line 1949
    lwc1	$f5,30264($a0)
    # Line 1954
    li	$a1,-1
    nop
    nop
    nop
.L0da00c50:
    # Line 1959
    addiu	$a3,$a3,16
    # Line 1958
    swc1	$f6,-4($a3)
    # Line 1957
    swc1	$f7,-8($a3)
    # Line 1954
    addiu	$a2,$a2,-1
    # Line 1956
    swc1	$f4,-12($a3)
    # Line 1954
    bne	$a2,$a1,.L0da00c50
    # Line 1955
    swc1	$f5,-16($a3)
.L0da00c6c:
    # Line 1962
    jr	$ra
    move	$v0,$zero
.end __glFlatRGBASpan

# Function: __glTextureSpan
# Declared: Line 1967 (Source lines: 1968-1999)
# Address: 0x0da00c80 - 0x0da00d84 (Size: 260 bytes, Frame: 224)
.globl __glTextureSpan
.ent __glTextureSpan
__glTextureSpan:
    # Line 1968
    addiu	$sp,$sp,-96
    sdc1	$f28,32($sp)
    # Line 1982
    lwc1	$f28,30296($a0)
    # Line 1968
    sdc1	$f20,0($sp)
    # Line 1981
    lwc1	$f20,30292($a0)
    # Line 1968
    sdc1	$f22,16($sp)
    # Line 1980
    lwc1	$f22,30288($a0)
    # Line 1968
    sdc1	$f24,24($sp)
    # Line 1979
    lwc1	$f24,30284($a0)
    # Line 1968
    sdc1	$f26,8($sp)
    # Line 1978
    lwc1	$f26,30280($a0)
    # Line 1968
    sd	$s0,48($sp)
    # Line 1984
    lw	$a1,30304($a0)
    # Line 1968
    sd	$s1,56($sp)
    lui	$at,0x9
    sd	$s2,40($sp)
    # Line 1984
    addiu	$s2,$a1,-1
    # Line 1968
    move	$s1,$a0
    # Line 1976
    lw	$s0,30520($a0)
    # Line 1968
    addiu	$at,$at,856
    sd	$gp,64($sp)
    # Line 1984
    bltz	$s2,.L0da00d54
    # Line 1968
    addu	$gp,$t9,$at
    sd	$ra,80($sp)
    sd	$s3,72($sp)
    # Line 1984
    li	$s3,-1
    nop
    nop
.L0da00cf0:
    # Line 1985
    lwc1	$f14,3544($s1)
    div.s	$f14,$f14,$f20
    # Line 1990
    lw	$t9,12580($s1)
    mul.s	$f17,$f28,$f14
    mul.s	$f16,$f22,$f14
    move	$a1,$s0
    mul.s	$f15,$f24,$f14
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f26,$f14
    # Line 1995
    lwc1	$f19,30452($s1)
    # Line 1994
    lwc1	$f18,30448($s1)
    # Line 1993
    lwc1	$f17,30444($s1)
    # Line 1992
    lwc1	$f16,30440($s1)
    # Line 1995
    add.s	$f28,$f19,$f28
    # Line 1991
    lwc1	$f15,30436($s1)
    # Line 1994
    add.s	$f20,$f18,$f20
    # Line 1984
    addiu	$s2,$s2,-1
    # Line 1993
    add.s	$f22,$f17,$f22
    # Line 1992
    add.s	$f24,$f16,$f24
    # Line 1996
    addiu	$s0,$s0,16
    # Line 1984
    bne	$s2,$s3,.L0da00cf0
    # Line 1991
    add.s	$f26,$f15,$f26
    ld	$s3,72($sp)
    ld	$ra,80($sp)
.L0da00d54:
    ld	$s2,40($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ldc1	$f20,0($sp)
    ldc1	$f26,8($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,24($sp)
    # Line 1999
    move	$v0,$zero
    ldc1	$f28,32($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glTextureSpan

# Function: __glTextureStippledSpan
# Declared: Line 2002 (Source lines: 2003-2053)
# Address: 0x0da00d90 - 0x0da00f10 (Size: 384 bytes, Frame: 128)
.globl __glTextureStippledSpan
.ent __glTextureStippledSpan
__glTextureStippledSpan:
    # Line 2003
    addiu	$sp,$sp,-128
    sdc1	$f28,0($sp)
    # Line 2019
    lwc1	$f28,30296($a0)
    # Line 2003
    sdc1	$f20,32($sp)
    # Line 2018
    lwc1	$f20,30292($a0)
    # Line 2003
    sdc1	$f22,16($sp)
    # Line 2017
    lwc1	$f22,30288($a0)
    # Line 2003
    sdc1	$f24,8($sp)
    # Line 2016
    lwc1	$f24,30284($a0)
    # Line 2003
    sdc1	$f26,24($sp)
    # Line 2015
    lwc1	$f26,30280($a0)
    # Line 2003
    sd	$s7,48($sp)
    # Line 2013
    lw	$s7,30528($a0)
    # Line 2003
    sd	$s1,56($sp)
    sd	$s6,64($sp)
    # Line 2011
    lw	$s6,30304($a0)
    # Line 2003
    sd	$s3,72($sp)
    lui	$at,0x9
    move	$s3,$a0
    # Line 2012
    lw	$s1,30520($a0)
    # Line 2003
    addiu	$at,$at,584
    sd	$gp,40($sp)
    # Line 2019
    beqz	$s6,.L0da00edc
    # Line 2003
    addu	$gp,$t9,$at
    sd	$s0,104($sp)
    sd	$s4,96($sp)
    sd	$ra,88($sp)
    sd	$s2,80($sp)
    sd	$s5,112($sp)
    # Line 2019
    li	$s5,-1
    sd	$s8,120($sp)
    li	$s8,32
    nop
    nop
    nop
    # Line 2028
    addiu	$s7,$s7,4
.L0da00e20:
    # Line 2023
    li	$v0,32
    move	$a0,$s6
    slt	$v0,$v0,$s6
    movn	$a0,$s8,$v0
    # Line 2030
    addiu	$s4,$a0,-1
    # Line 2028
    lw	$s2,-4($s7)
    # Line 2030
    bltz	$s4,.L0da00ebc
    # Line 2026
    subu	$s6,$s6,$a0
    # Line 2030
    lui	$s0,0x8000
    and	$v1,$s2,$s0
    nop
    nop
.L0da00e50:
    beqz	$v1,.L0da00e80
    nop
    # Line 2032
    lwc1	$f14,3544($s3)
    div.s	$f14,$f14,$f20
    # Line 2037
    lw	$t9,12580($s3)
    mul.s	$f17,$f28,$f14
    mul.s	$f16,$f22,$f14
    move	$a1,$s1
    mul.s	$f15,$f24,$f14
    move	$a0,$s3
    jalr	$t9
    mul.s	$f14,$f26,$f14
.L0da00e80:
    # Line 2043
    lwc1	$f19,30452($s3)
    # Line 2042
    lwc1	$f18,30448($s3)
    # Line 2041
    lwc1	$f17,30444($s3)
    # Line 2040
    lwc1	$f16,30440($s3)
    # Line 2043
    add.s	$f28,$f19,$f28
    # Line 2039
    lwc1	$f15,30436($s3)
    # Line 2042
    add.s	$f20,$f18,$f20
    # Line 2030
    addiu	$s4,$s4,-1
    # Line 2041
    add.s	$f22,$f17,$f22
    # Line 2044
    addiu	$s1,$s1,16
    # Line 2046
    srl	$s0,$s0,0x1
    # Line 2040
    add.s	$f24,$f16,$f24
    # Line 2030
    and	$v1,$s2,$s0
    bne	$s4,$s5,.L0da00e50
    # Line 2039
    add.s	$f26,$f15,$f26
.L0da00ebc:
    # Line 2030
    bnez	$s6,.L0da00e20
    # Line 2028
    addiu	$s7,$s7,4
    ld	$s2,80($sp)
    ld	$ra,88($sp)
    ld	$s4,96($sp)
    ld	$s0,104($sp)
    ld	$s5,112($sp)
    ld	$s8,120($sp)
.L0da00edc:
    # Line 2053
    ld	$gp,40($sp)
    ld	$s1,56($sp)
    ld	$s3,72($sp)
    ld	$s6,64($sp)
    ld	$s7,48($sp)
    ldc1	$f20,32($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,8($sp)
    move	$v0,$zero
    ldc1	$f26,24($sp)
    ldc1	$f28,0($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glTextureStippledSpan

# Function: __glDitherCISpan
# Declared: Line 2061 (Source lines: 2062-2084)
# Address: 0x0da00f10 - 0x0da010e4 (Size: 468 bytes, Frame: 0)
.globl __glDitherCISpan
.ent __glDitherCISpan
__glDitherCISpan:
    # Line 2073
    lw	$t1,30304($a0)
    # Line 2071
    li	$a6,1
    # Line 2062
    lui	$t2,0x9
    # Line 2071
    lw	$a7,3252($a0)
    # Line 2070
    lw	$t0,30256($a0)
    # Line 2062
    addiu	$t2,$t2,200
    # Line 2073
    addiu	$a5,$t1,-1
    # Line 2072
    lw	$a4,30520($a0)
    # Line 2062
    addu	$at,$t9,$t2
    # Line 2071
    sllv	$a6,$a6,$a7
    # Line 2069
    lw	$a3,30252($a0)
    # Line 2073
    bltz	$a5,.L0da010dc
    # Line 2071
    addiu	$a6,$a6,-1
    andi	$a7,$t1,0x3
    # Line 2073
    lwc1	$f4,_lit_41800000
    li	$t2,-1
    la	$t8,__glDitherTable
    andi	$t3,$t0,0x3
    beqz	$a7,.L0da00fb4
    sll	$t3,$t3,0x2
.L0da00f60:
    # Line 2076
    lwc1	$f2,0($a4)
    lwc1	$f1,3540($a0)
    madd.s	$f1,$f1,$f2,$f4
    andi	$t9,$a3,0x3
    trunc.w.s	$f1,$f1
    addu	$t9,$t3,$t9
    addu	$t9,$t8,$t9
    mfc1	$v0,$f1
    lb	$t9,0($t9)
    addu	$t9,$t9,$v0
    sra	$t9,$t9,0x4
    # Line 2079
    slt	$v0,$a6,$t9
    movn	$t9,$a6,$v0
    mtc1	$t9,$f0
    cvt.s.w	$f0,$f0
    addiu	$a7,$a7,-1
    # Line 2073
    addiu	$a5,$a5,-1
    # Line 2080
    addiu	$a4,$a4,16
    # Line 2081
    addiu	$a3,$a3,1
    bnez	$a7,.L0da00f60
    # Line 2079
    swc1	$f0,-16($a4)
.L0da00fb4:
    sra	$v0,$t1,0x2
    addu	$t1,$t3,$t8
    move	$t0,$t1
    beqz	$v0,.L0da010dc
    move	$a7,$t1
    nop
    nop
.L0da00fd0:
    # Line 2076
    lwc1	$f15,0($a4)
    lwc1	$f14,3540($a0)
    madd.s	$f14,$f14,$f15,$f4
    andi	$t3,$a3,0x3
    trunc.w.s	$f14,$f14
    addu	$t3,$t1,$t3
    lb	$t3,0($t3)
    mfc1	$t8,$f14
    addu	$t3,$t3,$t8
    sra	$t3,$t3,0x4
    # Line 2079
    slt	$t8,$a6,$t3
    movn	$t3,$a6,$t8
    mtc1	$t3,$f13
    cvt.s.w	$f13,$f13
    # Line 2076
    lwc1	$f12,16($a4)
    # Line 2079
    swc1	$f13,0($a4)
    # Line 2076
    lwc1	$f11,3540($a0)
    madd.s	$f11,$f11,$f12,$f4
    # Line 2081
    addiu	$a2,$a3,1
    # Line 2076
    andi	$a2,$a2,0x3
    trunc.w.s	$f11,$f11
    addu	$a2,$t0,$a2
    lb	$a2,0($a2)
    mfc1	$t3,$f11
    addu	$a2,$a2,$t3
    sra	$a2,$a2,0x4
    # Line 2079
    slt	$t3,$a6,$a2
    movn	$a2,$a6,$t3
    mtc1	$a2,$f10
    cvt.s.w	$f10,$f10
    # Line 2076
    lwc1	$f9,32($a4)
    # Line 2079
    swc1	$f10,16($a4)
    # Line 2076
    lwc1	$f8,3540($a0)
    madd.s	$f8,$f8,$f9,$f4
    # Line 2081
    addiu	$a1,$a3,2
    # Line 2076
    andi	$a1,$a1,0x3
    trunc.w.s	$f8,$f8
    addu	$a1,$a7,$a1
    lb	$a1,0($a1)
    mfc1	$a2,$f8
    addu	$a1,$a1,$a2
    sra	$a1,$a1,0x4
    # Line 2079
    slt	$a2,$a6,$a1
    movn	$a1,$a6,$a2
    mtc1	$a1,$f7
    cvt.s.w	$f7,$f7
    # Line 2076
    lwc1	$f6,48($a4)
    # Line 2079
    swc1	$f7,32($a4)
    # Line 2076
    lwc1	$f5,3540($a0)
    madd.s	$f5,$f5,$f6,$f4
    # Line 2081
    addiu	$v1,$a3,3
    # Line 2076
    andi	$v1,$v1,0x3
    trunc.w.s	$f5,$f5
    addu	$v1,$t1,$v1
    lb	$v1,0($v1)
    mfc1	$a1,$f5
    addu	$v1,$v1,$a1
    sra	$v1,$v1,0x4
    # Line 2079
    slt	$a1,$a6,$v1
    movn	$v1,$a6,$a1
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    # Line 2073
    addiu	$a5,$a5,-4
    # Line 2080
    addiu	$a4,$a4,64
    # Line 2081
    addiu	$a3,$a3,4
    # Line 2073
    bne	$a5,$t2,.L0da00fd0
    # Line 2079
    swc1	$f3,-16($a4)
.L0da010dc:
    # Line 2084
    jr	$ra
    move	$v0,$zero
.end __glDitherCISpan

# Function: __glDitherCIStippledSpan
# Declared: Line 2090 (Source lines: 2091-2132)
# Address: 0x0da010f0 - 0x0da012dc (Size: 492 bytes, Frame: 32)
.globl __glDitherCIStippledSpan
.ent __glDitherCIStippledSpan
__glDitherCIStippledSpan:
    # Line 2103
    lw	$a4,30520($a0)
    # Line 2101
    lw	$a5,30256($a0)
    # Line 2100
    lw	$a3,30252($a0)
    # Line 2091
    addiu	$sp,$sp,-32
    sd	$ra,24($sp)
    # Line 2098
    lw	$ra,30528($a0)
    # Line 2097
    lw	$t8,30304($a0)
    # Line 2091
    lui	$t2,0x9
    # Line 2102
    lw	$t1,3252($a0)
    sd	$s0,16($sp)
    li	$t0,1
    # Line 2091
    addiu	$t2,$t2,-280
    sd	$s1,8($sp)
    addu	$at,$t9,$t2
    # Line 2102
    sllv	$t0,$t0,$t1
    sd	$s2,0($sp)
    # Line 2103
    beqz	$t8,.L0da012c0
    # Line 2102
    addiu	$t0,$t0,-1
    # Line 2103
    la	$t2,__glDitherTable
    li	$t3,-1
    li	$s2,32
    lwc1	$f4,_lit_41800000
    andi	$t1,$a5,0x3
    b	.L0da0125c
    sll	$t1,$t1,0x2
.L0da01154:
    # Line 2117
    lwc1	$f2,0($a4)
    lwc1	$f1,3540($a0)
    madd.s	$f1,$f1,$f2,$f4
    trunc.w.s	$f1,$f1
    lb	$v0,0($v0)
    mfc1	$v1,$f1
    addu	$v0,$v0,$v1
    sra	$v0,$v0,0x4
    # Line 2120
    slt	$v1,$t0,$v0
    movn	$v0,$t0,$v1
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a4)
.L0da01188:
    # Line 2122
    addiu	$a4,$a4,16
    sra	$v1,$s0,0x1
.L0da01190:
    # Line 2117
    andi	$a2,$a3,0x3
    beqz	$v1,.L0da01250
    # Line 2113
    and	$a1,$a7,$a5
    nop
.L0da011a0:
    # Line 2117
    addu	$a2,$t1,$a2
    # Line 2113
    beqz	$a1,.L0da011e0
    # Line 2117
    addu	$a2,$t2,$a2
    lwc1	$f6,0($a4)
    lwc1	$f5,3540($a0)
    madd.s	$f5,$f5,$f6,$f4
    trunc.w.s	$f5,$f5
    lb	$a2,0($a2)
    mfc1	$v0,$f5
    addu	$a2,$a2,$v0
    sra	$a2,$a2,0x4
    # Line 2120
    slt	$v0,$t0,$a2
    movn	$a2,$t0,$v0
    mtc1	$a2,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a4)
.L0da011e0:
    # Line 2123
    addiu	$a3,$a3,1
    # Line 2125
    srl	$a5,$a5,0x1
    # Line 2113
    and	$v0,$a7,$a5
    # Line 2122
    addiu	$a4,$a4,16
    # Line 2117
    andi	$v1,$a3,0x3
    # Line 2113
    beqz	$v0,.L0da01234
    # Line 2117
    addu	$v1,$t1,$v1
    addu	$v1,$t2,$v1
    lwc1	$f9,0($a4)
    lwc1	$f8,3540($a0)
    madd.s	$f8,$f8,$f9,$f4
    trunc.w.s	$f8,$f8
    lb	$v1,0($v1)
    mfc1	$a1,$f8
    addu	$v1,$v1,$a1
    sra	$v1,$v1,0x4
    # Line 2120
    slt	$a1,$t0,$v1
    movn	$v1,$t0,$a1
    mtc1	$v1,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,0($a4)
.L0da01234:
    # Line 2122
    addiu	$a4,$a4,16
    # Line 2123
    addiu	$a3,$a3,1
    # Line 2113
    addiu	$a6,$a6,-2
    # Line 2125
    srl	$a5,$a5,0x1
    # Line 2117
    andi	$a2,$a3,0x3
    # Line 2113
    bne	$a6,$t3,.L0da011a0
    and	$a1,$a7,$a5
.L0da01250:
    addu	$a3,$s1,$t9
    addiu	$a3,$a3,1
.L0da01258:
    beqz	$t8,.L0da012c0
.L0da0125c:
    # Line 2111
    addiu	$ra,$ra,4
    # Line 2106
    li	$a5,32
    move	$s0,$t8
    slt	$a5,$a5,$t8
    # Line 2113
    move	$s1,$a3
    # Line 2106
    movn	$s0,$s2,$a5
    # Line 2113
    lui	$a5,0x8000
    addiu	$t9,$s0,-1
    # Line 2109
    subu	$t8,$t8,$s0
    andi	$v0,$s0,0x1
    # Line 2111
    lw	$a7,-4($ra)
    # Line 2113
    bltz	$t9,.L0da01258
    move	$a6,$t9
    beqz	$v0,.L0da01190
    sra	$v1,$s0,0x1
    addiu	$a6,$a6,-1
    and	$v1,$a7,$a5
    # Line 2125
    srl	$a5,$a5,0x1
    # Line 2117
    andi	$v0,$a3,0x3
    # Line 2123
    addiu	$a3,$a3,1
    # Line 2117
    addu	$v0,$t1,$v0
    # Line 2113
    bnez	$v1,.L0da01154
    # Line 2117
    addu	$v0,$t2,$v0
    b	.L0da01188
    nop
.L0da012c0:
    # Line 2132
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    move	$v0,$zero
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDitherCIStippledSpan

# Function: __glDitherRGBASpan
# Declared: Line 2139 (Source lines: 2140-2186)
# Address: 0x0da012e0 - 0x0da0142c (Size: 332 bytes, Frame: 16)
.globl __glDitherRGBASpan
.ent __glDitherRGBASpan
__glDitherRGBASpan:
    # Line 2154
    lw	$a5,30520($a0)
    # Line 2153
    lw	$t1,30852($a0)
    # Line 2152
    lw	$a7,30828($a0)
    # Line 2151
    lw	$t0,30824($a0)
    # Line 2150
    lw	$a6,30820($a0)
    # Line 2155
    lw	$a3,30304($a0)
    # Line 2148
    lw	$a4,30252($a0)
    # Line 2140
    addiu	$sp,$sp,-16
    lui	$v0,0x9
    # Line 2155
    sd	$a3,0($sp)
    addiu	$a3,$a3,-1
    # Line 2149
    lw	$v1,30256($a0)
    # Line 2140
    addiu	$v0,$v0,-776
    # Line 2149
    sd	$v1,8($sp)
    # Line 2155
    bltz	$a3,.L0da01420
    # Line 2140
    addu	$at,$t9,$v0
    # Line 2155
    li	$t8,-1
    ld	$t2,8($sp)
    la	$t3,__glDitherTable
    andi	$t2,$t2,0x3
    lwc1	$f4,_lit_41800000
    sll	$t2,$t2,0x2
    nop
    nop
.L0da01340:
    # Line 2162
    lwc1	$f12,0($a5)
    lwc1	$f11,3540($a0)
    madd.s	$f11,$f11,$f12,$f4
    # Line 2161
    andi	$t9,$a4,0x3
    # Line 2162
    trunc.w.s	$f11,$f11
    # Line 2161
    addu	$t9,$t2,$t9
    addu	$t9,$t3,$t9
    # Line 2162
    mfc1	$a2,$f11
    # Line 2161
    lb	$t9,0($t9)
    # Line 2162
    addu	$a2,$t9,$a2
    sra	$a2,$a2,0x4
    # Line 2165
    slt	$v0,$a6,$a2
    movn	$a2,$a6,$v0
    mtc1	$a2,$f10
    cvt.s.w	$f10,$f10
    # Line 2167
    lwc1	$f9,4($a5)
    # Line 2165
    swc1	$f10,0($a5)
    # Line 2167
    lwc1	$f8,3540($a0)
    madd.s	$f8,$f8,$f9,$f4
    trunc.w.s	$f8,$f8
    mfc1	$a1,$f8
    addu	$a1,$t9,$a1
    sra	$a1,$a1,0x4
    # Line 2170
    slt	$a2,$t0,$a1
    movn	$a1,$t0,$a2
    mtc1	$a1,$f7
    cvt.s.w	$f7,$f7
    # Line 2172
    lwc1	$f6,8($a5)
    # Line 2170
    swc1	$f7,4($a5)
    # Line 2172
    lwc1	$f5,3540($a0)
    madd.s	$f5,$f5,$f6,$f4
    trunc.w.s	$f5,$f5
    mfc1	$v1,$f5
    addu	$v1,$t9,$v1
    sra	$v1,$v1,0x4
    # Line 2175
    slt	$a1,$a7,$v1
    movn	$v1,$a7,$a1
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    # Line 2177
    lwc1	$f2,12($a5)
    # Line 2175
    swc1	$f3,8($a5)
    # Line 2177
    lwc1	$f1,3540($a0)
    madd.s	$f1,$f1,$f2,$f4
    trunc.w.s	$f1,$f1
    mfc1	$v0,$f1
    addu	$t9,$t9,$v0
    sra	$t9,$t9,0x4
    # Line 2180
    slt	$v0,$t1,$t9
    movn	$t9,$t1,$v0
    mtc1	$t9,$f0
    cvt.s.w	$f0,$f0
    # Line 2155
    addiu	$a3,$a3,-1
    # Line 2182
    addiu	$a5,$a5,16
    # Line 2183
    addiu	$a4,$a4,1
    # Line 2155
    bne	$a3,$t8,.L0da01340
    # Line 2180
    swc1	$f0,-4($a5)
.L0da01420:
    # Line 2186
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,16
.end __glDitherRGBASpan

# Function: __glDitherRGBAStippledSpan
# Declared: Line 2193 (Source lines: 2194-2258)
# Address: 0x0da01430 - 0x0da01604 (Size: 468 bytes, Frame: 192)
.globl __glDitherRGBAStippledSpan
.ent __glDitherRGBAStippledSpan
__glDitherRGBAStippledSpan:
    # Line 2210
    lw	$a5,30520($a0)
    # Line 2209
    lw	$t3,30852($a0)
    # Line 2208
    lw	$t1,30828($a0)
    # Line 2207
    lw	$t2,30824($a0)
    # Line 2206
    lw	$t0,30820($a0)
    # Line 2205
    lw	$a3,30256($a0)
    # Line 2194
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    # Line 2201
    lw	$s0,30304($a0)
    # Line 2204
    lw	$a4,30252($a0)
    # Line 2194
    lui	$v0,0x9
    sd	$s1,8($sp)
    addiu	$v0,$v0,-1112
    # Line 2202
    lw	$s1,30528($a0)
    # Line 2210
    beqz	$s0,.L0da015f0
    # Line 2194
    addu	$at,$t9,$v0
    sd	$s2,48($sp)
    sd	$s3,40($sp)
    sd	$s4,32($sp)
    sd	$ra,24($sp)
    # Line 2210
    la	$ra,__glDitherTable
    li	$t9,-1
    lwc1	$f4,_lit_41800000
    andi	$t8,$a3,0x3
    sd	$s5,16($sp)
    li	$s5,32
    sll	$t8,$t8,0x2
    # Line 2220
    lui	$a3,0x8000
.L0da014a0:
    # Line 2213
    li	$v0,32
    move	$s4,$s0
    slt	$v0,$v0,$s0
    movn	$s4,$s5,$v0
    # Line 2218
    addiu	$s1,$s1,4
    # Line 2220
    addiu	$s2,$s4,-1
    move	$s3,$a4
    # Line 2216
    subu	$s0,$s0,$s4
    # Line 2218
    lw	$a7,-4($s1)
    # Line 2220
    bltz	$s2,.L0da015d4
    move	$a6,$s2
    # Line 2227
    andi	$a1,$a4,0x3
    # Line 2220
    and	$v1,$a7,$a3
    nop
    nop
    nop
.L0da014e0:
    # Line 2227
    addu	$a1,$t8,$a1
    # Line 2220
    beqz	$v1,.L0da015b0
    # Line 2227
    addu	$a1,$ra,$a1
    # Line 2228
    lwc1	$f12,0($a5)
    lwc1	$f11,3540($a0)
    madd.s	$f11,$f11,$f12,$f4
    trunc.w.s	$f11,$f11
    # Line 2227
    lb	$a1,0($a1)
    # Line 2228
    mfc1	$a2,$f11
    addu	$a2,$a1,$a2
    sra	$a2,$a2,0x4
    # Line 2231
    slt	$v0,$t0,$a2
    movn	$a2,$t0,$v0
    mtc1	$a2,$f10
    cvt.s.w	$f10,$f10
    # Line 2233
    lwc1	$f9,4($a5)
    # Line 2231
    swc1	$f10,0($a5)
    # Line 2233
    lwc1	$f8,3540($a0)
    madd.s	$f8,$f8,$f9,$f4
    trunc.w.s	$f8,$f8
    mfc1	$v1,$f8
    addu	$v1,$a1,$v1
    sra	$v1,$v1,0x4
    # Line 2236
    slt	$a2,$t2,$v1
    movn	$v1,$t2,$a2
    mtc1	$v1,$f7
    cvt.s.w	$f7,$f7
    # Line 2238
    lwc1	$f6,8($a5)
    # Line 2236
    swc1	$f7,4($a5)
    # Line 2238
    lwc1	$f5,3540($a0)
    madd.s	$f5,$f5,$f6,$f4
    trunc.w.s	$f5,$f5
    mfc1	$v0,$f5
    addu	$v0,$a1,$v0
    sra	$v0,$v0,0x4
    # Line 2241
    slt	$v1,$t1,$v0
    movn	$v0,$t1,$v1
    mtc1	$v0,$f3
    cvt.s.w	$f3,$f3
    # Line 2243
    lwc1	$f2,12($a5)
    # Line 2241
    swc1	$f3,8($a5)
    # Line 2243
    lwc1	$f1,3540($a0)
    madd.s	$f1,$f1,$f2,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
    addu	$a1,$a1,$a2
    sra	$a1,$a1,0x4
    # Line 2246
    slt	$a2,$t3,$a1
    movn	$a1,$t3,$a2
    mtc1	$a1,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a5)
.L0da015b0:
    # Line 2251
    srl	$a3,$a3,0x1
    # Line 2248
    addiu	$a5,$a5,16
    # Line 2220
    addiu	$a6,$a6,-1
    and	$v1,$a7,$a3
    # Line 2249
    addiu	$a4,$a4,1
    # Line 2220
    bne	$a6,$t9,.L0da014e0
    # Line 2227
    andi	$a1,$a4,0x3
    # Line 2220
    addu	$a4,$s3,$s2
    addiu	$a4,$a4,1
.L0da015d4:
    bnez	$s0,.L0da014a0
    lui	$a3,0x8000
    ld	$s5,16($sp)
    ld	$ra,24($sp)
    ld	$s4,32($sp)
    ld	$s3,40($sp)
    ld	$s2,48($sp)
.L0da015f0:
    # Line 2258
    move	$v0,$zero
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glDitherRGBAStippledSpan

# Function: __glRoundCISpan
# Declared: Line 2264 (Source lines: 2272-2282)
# Address: 0x0da01610 - 0x0da01734 (Size: 292 bytes, Frame: 0)
.globl __glRoundCISpan
.ent __glRoundCISpan
__glRoundCISpan:
    # Line 2274
    lw	$a7,30304($a0)
    # Line 2272
    lw	$a5,3252($a0)
    li	$a4,1
    # Line 2274
    addiu	$a2,$a7,-1
    # Line 2272
    sllv	$a4,$a4,$a5
    # Line 2273
    lw	$a3,30520($a0)
    # Line 2274
    bltz	$a2,.L0da0172c
    # Line 2272
    addiu	$a4,$a4,-1
    andi	$a6,$a7,0x3
    sra	$t2,$a7,0x2
    beqz	$a6,.L0da01678
    # Line 2274
    li	$a5,-1
.L0da01640:
    # Line 2275
    lwc1	$f1,0($a3)
    lwc1	$f2,3540($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$t0,$f1
    # Line 2277
    slt	$t1,$a4,$t0
    movn	$t0,$a4,$t1
    mtc1	$t0,$f0
    cvt.s.w	$f0,$f0
    addiu	$a6,$a6,-1
    # Line 2278
    addiu	$a3,$a3,16
    # Line 2274
    addiu	$a2,$a2,-1
    bnez	$a6,.L0da01640
    # Line 2277
    swc1	$f0,-16($a3)
.L0da01678:
    beqz	$t2,.L0da0172c
    nop
.L0da01680:
    # Line 2275
    lwc1	$f14,3540($a0)
    lwc1	$f13,0($a3)
    add.s	$f13,$f13,$f14
    trunc.w.s	$f13,$f13
    mfc1	$at,$f13
    # Line 2277
    slt	$v0,$a4,$at
    movn	$at,$a4,$v0
    mtc1	$at,$f12
    cvt.s.w	$f12,$f12
    # Line 2275
    lwc1	$f10,16($a3)
    # Line 2277
    swc1	$f12,0($a3)
    # Line 2275
    lwc1	$f11,3540($a0)
    add.s	$f10,$f10,$f11
    trunc.w.s	$f10,$f10
    mfc1	$t9,$f10
    # Line 2277
    slt	$at,$a4,$t9
    movn	$t9,$a4,$at
    mtc1	$t9,$f9
    cvt.s.w	$f9,$f9
    # Line 2275
    lwc1	$f7,32($a3)
    # Line 2277
    swc1	$f9,16($a3)
    # Line 2275
    lwc1	$f8,3540($a0)
    add.s	$f7,$f7,$f8
    trunc.w.s	$f7,$f7
    mfc1	$t8,$f7
    # Line 2277
    slt	$t9,$a4,$t8
    movn	$t8,$a4,$t9
    mtc1	$t8,$f6
    cvt.s.w	$f6,$f6
    # Line 2275
    lwc1	$f4,48($a3)
    # Line 2277
    swc1	$f6,32($a3)
    # Line 2275
    lwc1	$f5,3540($a0)
    add.s	$f4,$f4,$f5
    trunc.w.s	$f4,$f4
    mfc1	$t3,$f4
    # Line 2277
    slt	$t8,$a4,$t3
    movn	$t3,$a4,$t8
    mtc1	$t3,$f3
    cvt.s.w	$f3,$f3
    # Line 2274
    addiu	$a2,$a2,-4
    # Line 2278
    addiu	$a3,$a3,64
    # Line 2274
    bne	$a2,$a5,.L0da01680
    # Line 2277
    swc1	$f3,-16($a3)
.L0da0172c:
    # Line 2282
    jr	$ra
    move	$v0,$zero
.end __glRoundCISpan

# Function: __glRoundCIStippledSpan
# Declared: Line 2288 (Source lines: 2295-2325)
# Address: 0x0da01740 - 0x0da01880 (Size: 320 bytes, Frame: 0)
.globl __glRoundCIStippledSpan
.ent __glRoundCIStippledSpan
__glRoundCIStippledSpan:
    # Line 2295
    lw	$t0,30304($a0)
    # Line 2298
    lw	$a7,3252($a0)
    li	$a6,1
    # Line 2299
    lw	$a2,30520($a0)
    # Line 2298
    sllv	$a6,$a6,$a7
    # Line 2296
    lw	$t1,30528($a0)
    # Line 2299
    beqz	$t0,.L0da01878
    # Line 2298
    addiu	$a6,$a6,-1
    # Line 2299
    li	$a7,-1
    b	.L0da0182c
    li	$t3,32
.L0da0176c:
    # Line 2311
    lwc1	$f2,3540($a0)
    lwc1	$f1,0($a2)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$t8,$f1
    # Line 2313
    slt	$t9,$a6,$t8
    movn	$t8,$a6,$t9
    mtc1	$t8,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a2)
.L0da01794:
    # Line 2315
    addiu	$a2,$a2,16
    sra	$t9,$t2,0x1
.L0da0179c:
    # Line 2309
    and	$at,$a5,$a3
    beqz	$t9,.L0da01828
    # Line 2318
    srl	$a3,$a3,0x1
    nop
    nop
.L0da017b0:
    # Line 2309
    beqz	$at,.L0da017e0
    addiu	$a4,$a4,-2
    # Line 2311
    lwc1	$f5,3540($a0)
    lwc1	$f4,0($a2)
    add.s	$f4,$f4,$f5
    trunc.w.s	$f4,$f4
    mfc1	$v0,$f4
    # Line 2313
    slt	$v1,$a6,$v0
    movn	$v0,$a6,$v1
    mtc1	$v0,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,0($a2)
.L0da017e0:
    # Line 2309
    and	$v1,$a5,$a3
    # Line 2318
    srl	$a3,$a3,0x1
    # Line 2309
    beqz	$v1,.L0da01818
    # Line 2315
    addiu	$a2,$a2,16
    # Line 2311
    lwc1	$f8,3540($a0)
    lwc1	$f7,0($a2)
    add.s	$f7,$f7,$f8
    trunc.w.s	$f7,$f7
    mfc1	$a1,$f7
    # Line 2313
    slt	$t2,$a6,$a1
    movn	$a1,$a6,$t2
    mtc1	$a1,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,0($a2)
.L0da01818:
    # Line 2309
    and	$at,$a5,$a3
    # Line 2318
    srl	$a3,$a3,0x1
    # Line 2309
    bne	$a4,$a7,.L0da017b0
    # Line 2315
    addiu	$a2,$a2,16
.L0da01828:
    # Line 2309
    beqz	$t0,.L0da01878
.L0da0182c:
    # Line 2307
    addiu	$t1,$t1,4
    # Line 2302
    li	$a3,32
    move	$t2,$t0
    slt	$a3,$a3,$t0
    movn	$t2,$t3,$a3
    # Line 2309
    addiu	$a4,$t2,-1
    lui	$a3,0x8000
    andi	$t8,$t2,0x1
    # Line 2307
    lw	$a5,-4($t1)
    # Line 2309
    bltz	$a4,.L0da01828
    # Line 2305
    subu	$t0,$t0,$t2
    beqz	$t8,.L0da0179c
    sra	$t9,$t2,0x1
    # Line 2309
    and	$t9,$a5,$a3
    # Line 2318
    srl	$a3,$a3,0x1
    # Line 2309
    bnez	$t9,.L0da0176c
    addiu	$a4,$a4,-1
    b	.L0da01794
    nop
.L0da01878:
    # Line 2325
    jr	$ra
    move	$v0,$zero
.end __glRoundCIStippledSpan

# Function: __glRoundRGBASpan
# Declared: Line 2332 (Source lines: 2342-2364)
# Address: 0x0da01880 - 0x0da01964 (Size: 228 bytes, Frame: 0)
.globl __glRoundRGBASpan
.ent __glRoundRGBASpan
__glRoundRGBASpan:
    # Line 2346
    lw	$a2,30520($a0)
    # Line 2347
    lw	$t1,30304($a0)
    # Line 2345
    lw	$a6,30852($a0)
    # Line 2344
    lw	$a5,30828($a0)
    # Line 2347
    addiu	$a3,$t1,-1
    # Line 2343
    lw	$a4,30824($a0)
    # Line 2347
    bltz	$a3,.L0da0195c
    # Line 2342
    lw	$a7,30820($a0)
    # Line 2347
    li	$t0,-1
    nop
    nop
    nop
.L0da018b0:
    # Line 2348
    lwc1	$f10,0($a2)
    lwc1	$f11,3540($a0)
    add.s	$f10,$f10,$f11
    trunc.w.s	$f10,$f10
    mfc1	$t3,$f10
    # Line 2350
    slt	$t8,$a7,$t3
    movn	$t3,$a7,$t8
    mtc1	$t3,$f9
    cvt.s.w	$f9,$f9
    # Line 2351
    lwc1	$f7,4($a2)
    # Line 2350
    swc1	$f9,0($a2)
    # Line 2351
    lwc1	$f8,3540($a0)
    add.s	$f7,$f7,$f8
    trunc.w.s	$f7,$f7
    mfc1	$t1,$f7
    # Line 2353
    slt	$t2,$a4,$t1
    movn	$t1,$a4,$t2
    mtc1	$t1,$f6
    cvt.s.w	$f6,$f6
    # Line 2354
    lwc1	$f4,8($a2)
    # Line 2353
    swc1	$f6,4($a2)
    # Line 2354
    lwc1	$f5,3540($a0)
    add.s	$f4,$f4,$f5
    trunc.w.s	$f4,$f4
    mfc1	$v1,$f4
    # Line 2356
    slt	$a1,$a5,$v1
    movn	$v1,$a5,$a1
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    # Line 2357
    lwc1	$f1,12($a2)
    # Line 2356
    swc1	$f3,8($a2)
    # Line 2357
    lwc1	$f2,3540($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$at,$f1
    # Line 2359
    slt	$v0,$a6,$at
    movn	$at,$a6,$v0
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    # Line 2347
    addiu	$a3,$a3,-1
    # Line 2360
    addiu	$a2,$a2,16
    # Line 2347
    bne	$a3,$t0,.L0da018b0
    # Line 2359
    swc1	$f0,-4($a2)
.L0da0195c:
    # Line 2364
    jr	$ra
    move	$v0,$zero
.end __glRoundRGBASpan

# Function: __glRoundRGBAStippledSpan
# Declared: Line 2371 (Source lines: 2372-2422)
# Address: 0x0da01970 - 0x0da01ab0 (Size: 320 bytes, Frame: 16)
.globl __glRoundRGBAStippledSpan
.ent __glRoundRGBAStippledSpan
__glRoundRGBAStippledSpan:
    # Line 2387
    lw	$a3,30520($a0)
    # Line 2386
    lw	$a6,30852($a0)
    # Line 2385
    lw	$a7,30828($a0)
    # Line 2379
    lw	$t3,30304($a0)
    # Line 2384
    lw	$t0,30824($a0)
    # Line 2383
    lw	$t1,30820($a0)
    # Line 2372
    addiu	$sp,$sp,-16
    # Line 2387
    beqz	$t3,.L0da01aa4
    # Line 2380
    lw	$t8,30528($a0)
    # Line 2387
    li	$t2,-1
    sd	$ra,0($sp)
    li	$ra,32
    nop
    nop
    nop
    # Line 2395
    addiu	$t8,$t8,4
.L0da019b0:
    # Line 2390
    li	$at,32
    move	$t9,$t3
    slt	$at,$at,$t3
    movn	$t9,$ra,$at
    # Line 2397
    addiu	$a4,$t9,-1
    # Line 2395
    lw	$a5,-4($t8)
    # Line 2397
    bltz	$a4,.L0da01a98
    # Line 2393
    subu	$t3,$t3,$t9
    # Line 2397
    lui	$a2,0x8000
    and	$v0,$a5,$a2
    nop
    nop
.L0da019e0:
    addiu	$a4,$a4,-1
    beqz	$v0,.L0da01a8c
    # Line 2415
    srl	$a2,$a2,0x1
    # Line 2399
    lwc1	$f11,3540($a0)
    lwc1	$f10,0($a3)
    add.s	$f10,$f10,$f11
    trunc.w.s	$f10,$f10
    mfc1	$at,$f10
    # Line 2401
    slt	$v0,$t1,$at
    movn	$at,$t1,$v0
    mtc1	$at,$f9
    cvt.s.w	$f9,$f9
    # Line 2402
    lwc1	$f7,4($a3)
    # Line 2401
    swc1	$f9,0($a3)
    # Line 2402
    lwc1	$f8,3540($a0)
    add.s	$f7,$f7,$f8
    trunc.w.s	$f7,$f7
    mfc1	$t9,$f7
    # Line 2404
    slt	$at,$t0,$t9
    movn	$t9,$t0,$at
    mtc1	$t9,$f6
    cvt.s.w	$f6,$f6
    # Line 2405
    lwc1	$f4,8($a3)
    # Line 2404
    swc1	$f6,4($a3)
    # Line 2405
    lwc1	$f5,3540($a0)
    add.s	$f4,$f4,$f5
    trunc.w.s	$f4,$f4
    mfc1	$a1,$f4
    # Line 2407
    slt	$t9,$a7,$a1
    movn	$a1,$a7,$t9
    mtc1	$a1,$f3
    cvt.s.w	$f3,$f3
    # Line 2408
    lwc1	$f1,12($a3)
    # Line 2407
    swc1	$f3,8($a3)
    # Line 2408
    lwc1	$f2,3540($a0)
    add.s	$f1,$f1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    # Line 2410
    slt	$a1,$a6,$v1
    movn	$v1,$a6,$a1
    mtc1	$v1,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,12($a3)
.L0da01a8c:
    # Line 2397
    and	$v0,$a5,$a2
    bne	$a4,$t2,.L0da019e0
    # Line 2412
    addiu	$a3,$a3,16
.L0da01a98:
    # Line 2397
    bnez	$t3,.L0da019b0
    # Line 2395
    addiu	$t8,$t8,4
    ld	$ra,0($sp)
.L0da01aa4:
    # Line 2422
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,16
.end __glRoundRGBAStippledSpan

# Function: __glLogicOpSpan
# Declared: Line 2427 (Source lines: 2428-2465)
# Address: 0x0da01ab0 - 0x0da01bd4 (Size: 292 bytes, Frame: 0)
.globl __glLogicOpSpan
.ent __glLogicOpSpan
__glLogicOpSpan:
    # Line 2438
    lw	$a5,30304($a0)
    # Line 2428
    lui	$v0,0x9
    # Line 2438
    addiu	$a6,$a5,-1
    # Line 2436
    lw	$a4,30524($a0)
    # Line 2428
    addiu	$v0,$v0,-2776
    # Line 2435
    lw	$a3,30520($a0)
    # Line 2438
    bltz	$a6,.L0da01bc4
    # Line 2428
    addu	$at,$t9,$v0
    # Line 2438
    li	$t1,-1
    b	.L0da01bcc
    # Line 2440
    la	$a7,.rodata
.L0da01adc:
    # Line 2450
    nor	$a5,$t0,$a5
.L0da01ae0:
    # Line 2459
    mtc1	$a5,$f0
    cvt.s.w	$f0,$f0
    # Line 2440
    la	$a7,.rodata
    # Line 2438
    beq	$a6,$t1,.L0da01bc4
    # Line 2459
    swc1	$f0,-16($a3)
    # Line 2440
    addiu	$a7,$a7,4212
.L0da01af8:
    # Line 2439
    lwc1	$f1,0($a3)
    # Line 2440
    lwc1	$f2,0($a4)
    lw	$t2,1856($a0)
    # Line 2438
    addiu	$a6,$a6,-1
    # Line 2440
    addiu	$t2,$t2,-5376
    trunc.w.s	$f2,$f2
    # Line 2460
    addiu	$a3,$a3,16
    # Line 2439
    trunc.w.s	$f1,$f1
    # Line 2440
    sltiu	$v1,$t2,16
    # Line 2461
    addiu	$a4,$a4,16
    # Line 2440
    sll	$t2,$t2,0x2
    mfc1	$t0,$f2
    addu	$a7,$a7,$t2
    beqz	$v1,.L0da01ae0
    # Line 2439
    mfc1	$a5,$f1
    # Line 2440
    lw	$t3,0($a7)
    jr	$t3
    # Line 2444
    nor	$a7,$t0,$zero
.L0da01b40:
    # Line 2442
    b	.L0da01ae0
    move	$a5,$zero
.L0da01b48:
    # Line 2457
    b	.L0da01ae0
    li	$a5,-1
.L0da01b50:
    # Line 2456
    and	$a5,$t0,$a5
    b	.L0da01ae0
    nor	$a5,$a5,$zero
.L0da01b5c:
    # Line 2455
    nor	$a5,$a5,$zero
    b	.L0da01ae0
    or	$a5,$t0,$a5
.L0da01b68:
    # Line 2454
    b	.L0da01ae0
    nor	$a5,$a5,$zero
.L0da01b70:
    # Line 2453
    nor	$a7,$t0,$zero
    b	.L0da01ae0
    or	$a5,$a5,$a7
.L0da01b7c:
    # Line 2452
    b	.L0da01ae0
    nor	$a5,$t0,$zero
.L0da01b84:
    # Line 2451
    xor	$a5,$t0,$a5
    b	.L0da01ae0
    nor	$a5,$a5,$zero
.L0da01b90:
    # Line 2449
    b	.L0da01ae0
    or	$a5,$t0,$a5
.L0da01b98:
    # Line 2448
    b	.L0da01ae0
    xor	$a5,$t0,$a5
.L0da01ba0:
    # Line 2447
    b	.L0da01ae0
    move	$a5,$t0
.L0da01ba8:
    # Line 2446
    nor	$a5,$a5,$zero
    b	.L0da01ae0
    and	$a5,$t0,$a5
.L0da01bb4:
    # Line 2444
    b	.L0da01ae0
    and	$a5,$a5,$a7
.L0da01bbc:
    b	.L0da01ae0
    # Line 2443
    and	$a5,$t0,$a5
.L0da01bc4:
    # Line 2465
    jr	$ra
    move	$v0,$zero
.L0da01bcc:
    b	.L0da01af8
    # Line 2440
    addiu	$a7,$a7,4212
.end __glLogicOpSpan

# Function: __glLogicOpStippledSpan
# Declared: Line 2468 (Source lines: 2469-2525)
# Address: 0x0da01be0 - 0x0da01d68 (Size: 392 bytes, Frame: 16)
.globl __glLogicOpStippledSpan
.ent __glLogicOpStippledSpan
__glLogicOpStippledSpan:
    # Line 2479
    lw	$a5,30524($a0)
    # Line 2475
    lw	$t8,30304($a0)
    # Line 2478
    lw	$a3,30520($a0)
    # Line 2469
    addiu	$sp,$sp,-16
    lui	$v0,0x9
    sd	$ra,0($sp)
    addiu	$v0,$v0,-3080
    # Line 2476
    lw	$ra,30528($a0)
    # Line 2479
    beqz	$t8,.L0da01d50
    # Line 2469
    addu	$at,$t9,$v0
    # Line 2479
    li	$t3,-1
    b	.L0da01c24
    li	$t9,32
    nop
    nop
    nop
.L0da01c20:
    # Line 2490
    beqz	$t8,.L0da01d50
.L0da01c24:
    # Line 2493
    la	$t0,.rodata
    # Line 2483
    li	$v1,32
    move	$a6,$t8
    slt	$v1,$v1,$t8
    movn	$a6,$t9,$v1
    # Line 2490
    addiu	$a7,$a6,-1
    lui	$a4,0x8000
    # Line 2488
    addiu	$ra,$ra,4
    lw	$t2,-4($ra)
    # Line 2490
    bltz	$a7,.L0da01c20
    # Line 2486
    subu	$t8,$t8,$a6
    b	.L0da01d60
    # Line 2490
    and	$a1,$t2,$a4
.L0da01c58:
    # Line 2502
    or	$a6,$t1,$a6
    nop
.L0da01c60:
    # Line 2512
    mtc1	$a6,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,0($a3)
.L0da01c6c:
    # Line 2515
    addiu	$a5,$a5,16
    # Line 2490
    and	$a1,$t2,$a4
    # Line 2493
    la	$t0,.rodata
    # Line 2490
    beq	$a7,$t3,.L0da01c20
    # Line 2514
    addiu	$a3,$a3,16
    # Line 2493
    addiu	$t0,$t0,4276
.L0da01c84:
    # Line 2518
    srl	$a4,$a4,0x1
    # Line 2490
    beqz	$a1,.L0da01c6c
    addiu	$a7,$a7,-1
    # Line 2492
    lwc1	$f1,0($a3)
    # Line 2493
    lwc1	$f2,0($a5)
    lw	$v0,1856($a0)
    addiu	$v0,$v0,-5376
    trunc.w.s	$f2,$f2
    # Line 2492
    trunc.w.s	$f1,$f1
    # Line 2493
    sltiu	$a2,$v0,16
    sll	$v0,$v0,0x2
    mfc1	$t1,$f2
    addu	$t0,$t0,$v0
    beqz	$a2,.L0da01c60
    # Line 2492
    mfc1	$a6,$f1
    # Line 2493
    lw	$v1,0($t0)
    jr	$v1
    # Line 2506
    nor	$t0,$t1,$zero
.L0da01ccc:
    # Line 2495
    b	.L0da01c60
    move	$a6,$zero
.L0da01cd4:
    # Line 2510
    b	.L0da01c60
    li	$a6,-1
.L0da01cdc:
    # Line 2509
    and	$a6,$t1,$a6
    b	.L0da01c60
    nor	$a6,$a6,$zero
.L0da01ce8:
    # Line 2508
    nor	$a6,$a6,$zero
    b	.L0da01c60
    or	$a6,$t1,$a6
.L0da01cf4:
    # Line 2507
    b	.L0da01c60
    nor	$a6,$a6,$zero
.L0da01cfc:
    # Line 2506
    b	.L0da01c60
    or	$a6,$a6,$t0
.L0da01d04:
    # Line 2505
    b	.L0da01c60
    nor	$a6,$t1,$zero
.L0da01d0c:
    # Line 2504
    xor	$a6,$t1,$a6
    b	.L0da01c60
    nor	$a6,$a6,$zero
.L0da01d18:
    # Line 2503
    b	.L0da01c60
    nor	$a6,$t1,$a6
.L0da01d20:
    # Line 2501
    b	.L0da01c60
    xor	$a6,$t1,$a6
.L0da01d28:
    # Line 2500
    b	.L0da01c60
    move	$a6,$t1
.L0da01d30:
    # Line 2499
    nor	$a6,$a6,$zero
    b	.L0da01c60
    and	$a6,$t1,$a6
.L0da01d3c:
    # Line 2497
    nor	$t0,$t1,$zero
    b	.L0da01c60
    and	$a6,$a6,$t0
.L0da01d48:
    b	.L0da01c60
    # Line 2496
    and	$a6,$t1,$a6
.L0da01d50:
    # Line 2525
    ld	$ra,0($sp)
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,16
.L0da01d60:
    b	.L0da01c84
    # Line 2493
    addiu	$t0,$t0,4276
.end __glLogicOpStippledSpan

# Function: __glMaskRGBASpan
# Declared: Line 2530 (Source lines: 2539-2553)
# Address: 0x0da01d70 - 0x0da01ec0 (Size: 336 bytes, Frame: 0)
.globl __glMaskRGBASpan
.ent __glMaskRGBASpan
__glMaskRGBASpan:
    # Line 2544
    lw	$t0,30524($a0)
    # Line 2543
    lw	$a2,30520($a0)
    # Line 2545
    lw	$t1,30304($a0)
    # Line 2542
    lbu	$a5,1887($a0)
    # Line 2541
    lbu	$a7,1886($a0)
    # Line 2545
    addiu	$a3,$t1,-1
    # Line 2540
    lbu	$a4,1885($a0)
    # Line 2545
    bltz	$a3,.L0da01de8
    # Line 2539
    lbu	$a6,1884($a0)
    # Line 2545
    li	$a1,-1
    andi	$at,$t1,0x1
    beqz	$at,.L0da01de0
    sra	$v0,$t1,0x1
    beqz	$a6,.L0da01ea0
    nop
    # Line 2546
    lwc1	$f4,0($a2)
.L0da01db0:
    beqz	$a4,.L0da01ea8
    swc1	$f4,0($a2)
    # Line 2547
    lwc1	$f4,4($a2)
.L0da01dbc:
    # Line 2545
    addiu	$a3,$a3,-1
    # Line 2547
    beqz	$a7,.L0da01eb0
    swc1	$f4,4($a2)
    # Line 2548
    lwc1	$f4,8($a2)
.L0da01dcc:
    beqz	$a5,.L0da01eb8
    swc1	$f4,8($a2)
    # Line 2549
    lwc1	$f4,12($a2)
.L0da01dd8:
    # Line 2550
    addiu	$a2,$a2,16
    # Line 2549
    swc1	$f4,-4($a2)
.L0da01de0:
    bnez	$v0,.L0da01e0c
    nop
.L0da01de8:
    # Line 2553
    jr	$ra
    move	$v0,$zero
.L0da01df0:
    # Line 2548
    lwc1	$f4,24($a2)
.L0da01df4:
    beqz	$a5,.L0da01e98
    swc1	$f4,24($a2)
    # Line 2549
    lwc1	$f4,28($a2)
.L0da01e00:
    # Line 2550
    addiu	$a2,$a2,32
    # Line 2545
    beq	$a3,$a1,.L0da01de8
    # Line 2549
    swc1	$f4,-4($a2)
.L0da01e0c:
    # Line 2545
    beqz	$a6,.L0da01e68
    nop
    # Line 2546
    lwc1	$f4,0($a2)
.L0da01e18:
    beqz	$a4,.L0da01e70
    swc1	$f4,0($a2)
    # Line 2547
    lwc1	$f4,4($a2)
.L0da01e24:
    beqz	$a7,.L0da01e78
    swc1	$f4,4($a2)
    # Line 2548
    lwc1	$f4,8($a2)
.L0da01e30:
    beqz	$a5,.L0da01e80
    swc1	$f4,8($a2)
    # Line 2549
    lwc1	$f4,12($a2)
.L0da01e3c:
    # Line 2545
    beqz	$a6,.L0da01e88
    # Line 2549
    swc1	$f4,12($a2)
    # Line 2546
    lwc1	$f4,16($a2)
.L0da01e48:
    # Line 2545
    addiu	$a3,$a3,-2
    # Line 2546
    beqz	$a4,.L0da01e90
    swc1	$f4,16($a2)
    # Line 2547
    lwc1	$f4,20($a2)
.L0da01e58:
    bnez	$a7,.L0da01df0
    swc1	$f4,20($a2)
    b	.L0da01df4
    # Line 2548
    lwc1	$f4,8($t0)
.L0da01e68:
    b	.L0da01e18
    # Line 2546
    lwc1	$f4,0($t0)
.L0da01e70:
    b	.L0da01e24
    # Line 2547
    lwc1	$f4,4($t0)
.L0da01e78:
    b	.L0da01e30
    # Line 2548
    lwc1	$f4,8($t0)
.L0da01e80:
    b	.L0da01e3c
    # Line 2549
    lwc1	$f4,12($t0)
.L0da01e88:
    b	.L0da01e48
    # Line 2546
    lwc1	$f4,0($t0)
.L0da01e90:
    b	.L0da01e58
    # Line 2547
    lwc1	$f4,4($t0)
.L0da01e98:
    b	.L0da01e00
    # Line 2549
    lwc1	$f4,12($t0)
.L0da01ea0:
    b	.L0da01db0
    # Line 2546
    lwc1	$f4,0($t0)
.L0da01ea8:
    b	.L0da01dbc
    # Line 2547
    lwc1	$f4,4($t0)
.L0da01eb0:
    b	.L0da01dcc
    # Line 2548
    lwc1	$f4,8($t0)
.L0da01eb8:
    b	.L0da01dd8
    # Line 2549
    lwc1	$f4,12($t0)
.end __glMaskRGBASpan

# Function: __glMaskCISpan
# Declared: Line 2556 (Source lines: 2564-2575)
# Address: 0x0da01ec0 - 0x0da02064 (Size: 420 bytes, Frame: 0)
.globl __glMaskCISpan
.ent __glMaskCISpan
__glMaskCISpan:
    # Line 2568
    lw	$t0,30304($a0)
    # Line 2564
    lw	$a4,1880($a0)
    # Line 2565
    lw	$a5,30792($a0)
    # Line 2568
    addiu	$a7,$t0,-1
    # Line 2567
    lw	$a3,30524($a0)
    # Line 2565
    nor	$a6,$a4,$zero
    # Line 2566
    lw	$a2,30520($a0)
    # Line 2568
    bltz	$a7,.L0da0205c
    # Line 2565
    and	$a5,$a5,$a6
    andi	$a1,$t0,0x3
    beqz	$a1,.L0da01f40
    # Line 2568
    li	$a6,-1
.L0da01ef0:
    # Line 2571
    lwc1	$f2,0($a2)
    lwc1	$f1,0($a3)
    trunc.l.s	$f2,$f2
    trunc.l.s	$f1,$f1
    dmfc1	$t1,$f2
    dmfc1	$t2,$f1
    sll	$t1,$t1,0x0
    sll	$t2,$t2,0x0
    and	$t1,$t1,$a4
    and	$t2,$t2,$a5
    or	$t1,$t1,$t2
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f0
    cvt.s.l	$f0,$f0
    addiu	$a1,$a1,-1
    # Line 2572
    addiu	$a2,$a2,16
    # Line 2568
    addiu	$a7,$a7,-1
    bnez	$a1,.L0da01ef0
    # Line 2571
    swc1	$f0,-16($a2)
.L0da01f40:
    sra	$t2,$t0,0x2
    beqz	$t2,.L0da0205c
    move	$a1,$a7
    nop
.L0da01f50:
    lwc1	$f14,0($a2)
    lwc1	$f13,0($a3)
    trunc.l.s	$f14,$f14
    trunc.l.s	$f13,$f13
    dmfc1	$at,$f14
    dmfc1	$v0,$f13
    sll	$at,$at,0x0
    sll	$v0,$v0,0x0
    and	$at,$at,$a4
    and	$v0,$v0,$a5
    or	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f12
    cvt.s.l	$f12,$f12
    lwc1	$f11,16($a2)
    swc1	$f12,0($a2)
    lwc1	$f10,0($a3)
    trunc.l.s	$f11,$f11
    trunc.l.s	$f10,$f10
    dmfc1	$t9,$f11
    dmfc1	$at,$f10
    sll	$t9,$t9,0x0
    sll	$at,$at,0x0
    and	$t9,$t9,$a4
    and	$at,$at,$a5
    or	$t9,$t9,$at
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f9
    cvt.s.l	$f9,$f9
    lwc1	$f8,32($a2)
    swc1	$f9,16($a2)
    lwc1	$f7,0($a3)
    trunc.l.s	$f8,$f8
    trunc.l.s	$f7,$f7
    dmfc1	$t8,$f8
    dmfc1	$t9,$f7
    sll	$t8,$t8,0x0
    sll	$t9,$t9,0x0
    and	$t8,$t8,$a4
    and	$t9,$t9,$a5
    or	$t8,$t8,$t9
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f6
    cvt.s.l	$f6,$f6
    lwc1	$f5,48($a2)
    swc1	$f6,32($a2)
    lwc1	$f4,0($a3)
    trunc.l.s	$f5,$f5
    trunc.l.s	$f4,$f4
    dmfc1	$t3,$f5
    dmfc1	$t8,$f4
    sll	$t3,$t3,0x0
    sll	$t8,$t8,0x0
    and	$t3,$t3,$a4
    and	$t8,$t8,$a5
    or	$t3,$t3,$t8
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f3
    cvt.s.l	$f3,$f3
    # Line 2568
    addiu	$a1,$a1,-4
    # Line 2572
    addiu	$a2,$a2,64
    # Line 2568
    bne	$a1,$a6,.L0da01f50
    # Line 2571
    swc1	$f3,-16($a2)
.L0da0205c:
    # Line 2575
    jr	$ra
    move	$v0,$zero
.end __glMaskCISpan

.late_rodata
jtbl_0da81074:
    .word .L0da01b40
    .word .L0da01bbc
    .word .L0da01bb4
    .word .L0da01ae0
    .word .L0da01ba8
    .word .L0da01ba0
    .word .L0da01b98
    .word .L0da01b90
    .word .L0da01adc
    .word .L0da01b84
    .word .L0da01b7c
    .word .L0da01b70
    .word .L0da01b68
    .word .L0da01b5c
    .word .L0da01b50
    .word .L0da01b48
jtbl_0da810b4:
    .word .L0da01ccc
    .word .L0da01d48
    .word .L0da01d3c
    .word .L0da01c60
    .word .L0da01d30
    .word .L0da01d28
    .word .L0da01d20
    .word .L0da01c58
    .word .L0da01d18
    .word .L0da01d0c
    .word .L0da01d04
    .word .L0da01cfc
    .word .L0da01cf4
    .word .L0da01ce8
    .word .L0da01cdc
    .word .L0da01cd4

.rdata
_lit8_3fa0000000000000:
    .word 0x3fa00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_41800000:
    .word 0x41800000

