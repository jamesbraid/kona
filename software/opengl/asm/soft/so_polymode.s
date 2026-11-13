# Source: ../soft/so_polymode.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polymode.c
# Total Functions: 2

.text

# Function: __glRenderTriangle
# Declared: Line 26 (Source lines: 28-198)
# Address: 0x0d9fd7b0 - 0x0d9fdc28 (Size: 1144 bytes, Frame: 240)
.globl __glRenderTriangle
.ent __glRenderTriangle
__glRenderTriangle:
    # Line 28
    addiu	$sp,$sp,-112
    sd	$s1,56($sp)
    sd	$s3,64($sp)
    sd	$s2,88($sp)
    sd	$s0,80($sp)
    lw	$a4,132($a2)
    move	$s0,$a0
    move	$s2,$a3
    lw	$a7,132($a1)
    move	$s3,$a2
    move	$s1,$a1
    lw	$a6,132($a3)
    lui	$at,0x9
    slt	$v0,$a7,$a4
    addiu	$at,$at,14376
    slt	$a4,$a4,$a6
    sd	$gp,72($sp)
    beqz	$v0,.L0d9fd818
    addu	$gp,$t9,$at
    beqz	$a4,.L0d9fdad4
    sd	$ra,104($sp)
    sd	$a2,32($sp)
    sd	$a1,48($sp)
    sd	$a3,40($sp)
    b	.L0d9fd860
    move	$a0,$zero
.L0d9fd818:
    sd	$a2,32($sp)
    sd	$a1,48($sp)
    sd	$a3,40($sp)
    # Line 51
    beqz	$a4,.L0d9fd854
    sd	$ra,104($sp)
    # Line 57
    li	$a0,1
    # Line 51
    slt	$a5,$a7,$a6
    # Line 57
    ld	$t0,48($sp)
    movz	$a0,$zero,$a5
    ld	$t1,40($sp)
    movz	$s2,$t0,$a5
    ld	$s1,32($sp)
    move	$s3,$t0
    b	.L0d9fd860
    movz	$s3,$t1,$a5
.L0d9fd854:
    # Line 63
    ld	$s1,40($sp)
    ld	$s2,48($sp)
    # Line 64
    li	$a0,1
.L0d9fd860:
    # Line 69
    lwc1	$f4,128($s1)
    # Line 72
    lwc1	$f7,132($s3)
    # Line 69
    lwc1	$f9,128($s2)
    # Line 71
    lwc1	$f6,132($s2)
    # Line 70
    lwc1	$f8,128($s3)
    # Line 69
    sub.s	$f4,$f4,$f9
    # Line 71
    lwc1	$f5,132($s1)
    # Line 72
    sub.s	$f7,$f7,$f6
    # Line 70
    sub.s	$f8,$f8,$f9
    # Line 71
    sub.s	$f5,$f5,$f6
    # Line 73
    mul.s	$f6,$f4,$f7
    nmsub.s	$f6,$f6,$f8,$f5
    swc1	$f6,0($sp)
    # Line 89
    lw	$a7,0($sp)
    sra	$a6,$a7,0x1f
    sltiu	$a6,$a6,1
    xor	$a4,$a6,$a0
    addu	$a4,$s0,$a4
    lbu	$a4,30572($a4)
    lbu	$t2,30577($s0)
    beq	$a4,$t2,.L0d9fdab4
    nop
    # Line 100
    swc1	$f7,30248($s0)
    # Line 99
    swc1	$f5,30244($s0)
    # Line 105
    lw	$t0,30492($s0)
    # Line 98
    swc1	$f8,30240($s0)
    # Line 97
    swc1	$f4,30236($s0)
    # Line 105
    andi	$t1,$t0,0x400
    # Line 96
    swc1	$f6,30232($s0)
    # Line 105
    beqz	$t1,.L0d9fdb00
    sd	$a6,8($sp)
    sd	$a4,16($sp)
    # Line 108
    sll	$a6,$a4,0x2
    sd	$s4,96($sp)
    addu	$a6,$s0,$a6
    # Line 107
    move	$a7,$a4
    # Line 108
    lw	$a6,28136($a6)
.L0d9fd8f4:
    # Line 117
    lw	$s4,28132($s0)
    # Line 118
    dsll32	$t1,$t0,0xe
    sll	$a0,$a7,0x4
    lw	$t2,28128($s0)
    bgez	$t1,.L0d9fdb14
    sd	$t2,24($sp)
    # Line 121
    addu	$t9,$a0,$s1
    # Line 122
    addu	$t8,$a0,$s3
    # Line 121
    addiu	$t9,$t9,144
    sw	$t9,8($s1)
    # Line 123
    addu	$t3,$a0,$s2
    # Line 122
    addiu	$t8,$t8,144
    sw	$t8,8($s3)
    # Line 124
    or	$s4,$a6,$s4
    # Line 123
    addiu	$t3,$t3,144
    sw	$t3,8($s2)
.L0d9fd934:
    # Line 140
    lw	$ra,0($s1)
.L0d9fd938:
    nor	$ra,$ra,$zero
    and	$ra,$s4,$ra
    beqz	$ra,.L0d9fd95c
    nop
    # Line 145
    lw	$t9,12($s1)
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s4
.L0d9fd95c:
    lw	$at,0($s3)
    nor	$at,$at,$zero
    and	$at,$s4,$at
    beqz	$at,.L0d9fd984
    nop
    # Line 146
    lw	$t9,12($s3)
    move	$a0,$s0
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s4
.L0d9fd984:
    lw	$v0,0($s2)
    nor	$v0,$v0,$zero
    and	$v0,$s4,$v0
    beqz	$v0,.L0d9fd9b0
    # Line 150
    ld	$a0,16($sp)
    # Line 147
    lw	$t9,12($s2)
    move	$a0,$s0
    move	$a1,$s2
    jalr	$t9
    move	$a2,$s4
    # Line 150
    ld	$a0,16($sp)
.L0d9fd9b0:
    addu	$a0,$a0,$s0
    lbu	$a0,30574($a0)
    li	$v1,2
    # Line 155
    lw	$ra,0($sp)
    # Line 150
    beq	$a0,$v1,.L0d9fdb6c
    # Line 155
    sll	$ra,$ra,0x1
    # Line 150
    beqz	$a0,.L0d9fdb98
    li	$a1,1
    bne	$a0,$a1,.L0d9fda70
    ld	$s4,96($sp)
    # Line 173
    lw	$a2,1796($s0)
    andi	$a2,$a2,0x400
    beqz	$a2,.L0d9fda04
    # Line 175
    ld	$a3,48($sp)
    # lw $t9, -27348($gp) # &__glPolygonOffsetForLineAndPoint
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s3
    bal __glPolygonOffsetForLineAndPoint
    move	$a3,$s2
    ld	$a3,48($sp)
.L0d9fda04:
    lbu	$a3,184($a3)
    beqz	$a3,.L0d9fda28
    # Line 182
    ld	$a4,32($sp)
    lw	$t9,12536($s0)
    ld	$a1,48($sp)
    move	$a0,$s0
    jal	__glPolygonOffsetForLineAndPoint
    ld	$a2,32($sp)
    ld	$a4,32($sp)
.L0d9fda28:
    lbu	$a4,184($a4)
    beqz	$a4,.L0d9fda4c
    # Line 185
    ld	$a5,40($sp)
    lw	$t9,12536($s0)
    ld	$a1,32($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a2,40($sp)
    ld	$a5,40($sp)
.L0d9fda4c:
    lbu	$a5,184($a5)
    beqz	$a5,.L0d9fda70
    ld	$s4,96($sp)
    # Line 188
    lw	$t9,12536($s0)
    ld	$a1,40($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a2,48($sp)
    ld	$s4,96($sp)
.L0d9fda70:
    # Line 198
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    # Line 194
    addiu	$t2,$s1,144
    sw	$t2,8($s1)
    # Line 198
    ld	$s1,56($sp)
    # Line 195
    addiu	$t1,$s3,144
    sw	$t1,8($s3)
    # Line 196
    addiu	$t0,$s2,144
    sw	$t0,8($s2)
    # Line 198
    ld	$s2,88($sp)
    ld	$ra,104($sp)
    # Line 197
    ld	$a7,24($sp)
    # Line 198
    ld	$s3,64($sp)
    addiu	$sp,$sp,112
    # Line 197
    addiu	$a6,$a7,144
    # Line 198
    jr	$ra
    # Line 197
    sw	$a6,8($a7)
.L0d9fdab4:
    # Line 198
    ld	$gp,72($sp)
    ld	$s0,80($sp)
    ld	$ra,104($sp)
    ld	$s1,56($sp)
    ld	$s2,88($sp)
    ld	$s3,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9fdad4:
    # Line 28
    slt	$t3,$a7,$a6
    sd	$a3,40($sp)
    # Line 48
    move	$s3,$a3
    movz	$s1,$a3,$t3
    sd	$a1,48($sp)
    move	$s2,$a2
    movz	$s3,$a1,$t3
    sd	$a2,32($sp)
    li	$a0,1
    b	.L0d9fd860
    movz	$a0,$zero,$t3
.L0d9fdb00:
    sd	$a4,16($sp)
    # Line 111
    lw	$a6,28136($s0)
    move	$a7,$zero
    b	.L0d9fd8f4
    sd	$s4,96($sp)
.L0d9fdb14:
    # Line 133
    ld	$t8,24($sp)
    addu	$at,$a0,$t8
    addiu	$at,$at,144
    sw	$at,8($t8)
    # Line 134
    sw	$at,8($s1)
    # Line 135
    lw	$ra,8($t8)
    sw	$ra,8($s3)
    # Line 136
    lw	$t9,8($t8)
    sw	$t9,8($s2)
    lw	$t8,0($t8)
    nor	$t8,$t8,$zero
    and	$t8,$a6,$t8
    andi	$t8,$t8,0x1b
    beqz	$t8,.L0d9fd934
    # Line 140
    ld	$t9,24($sp)
    move	$a1,$t9
    lw	$t9,12($t9)
    move	$a0,$s0
    jalr	$t9
    andi	$a2,$a6,0x1b
    b	.L0d9fd938
    lw	$ra,0($s1)
.L0d9fdb6c:
    # Line 155
    beqz	$ra,.L0d9fda70
    ld	$s4,96($sp)
    # Line 156
    lw	$t9,12136($s0)
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s3
    move	$a3,$s2
    jalr	$t9
    ld	$a4,8($sp)
    b	.L0d9fda70
    ld	$s4,96($sp)
.L0d9fdb98:
    # Line 160
    lw	$at,1796($s0)
    andi	$at,$at,0x200
    beqz	$at,.L0d9fdbc4
    # Line 162
    ld	$v0,48($sp)
    # lw $t9, -27348($gp) # &__glPolygonOffsetForLineAndPoint
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s3
    bal __glPolygonOffsetForLineAndPoint
    move	$a3,$s2
    ld	$v0,48($sp)
.L0d9fdbc4:
    lbu	$v0,184($v0)
    beqz	$v0,.L0d9fdbe4
    # Line 168
    ld	$v1,32($sp)
    lw	$t9,12560($s0)
    move	$a0,$s0
    jal	__glPolygonOffsetForLineAndPoint
    ld	$a1,48($sp)
    ld	$v1,32($sp)
.L0d9fdbe4:
    lbu	$v1,184($v1)
    beqz	$v1,.L0d9fdc04
    # Line 169
    ld	$a0,40($sp)
    lw	$t9,12560($s0)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,32($sp)
    ld	$a0,40($sp)
.L0d9fdc04:
    lbu	$a0,184($a0)
    beqz	$a0,.L0d9fda70
    ld	$s4,96($sp)
    # Line 170
    lw	$t9,12560($s0)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,40($sp)
    b	.L0d9fda70
    ld	$s4,96($sp)
.end __glRenderTriangle

# Function: __glDontRenderTriangle
# Declared: Line 770 (Source lines: 773-773)
# Address: 0x0d9fdc30 - 0x0d9fdc38 (Size: 8 bytes, Frame: 0)
.globl __glDontRenderTriangle
.ent __glDontRenderTriangle
__glDontRenderTriangle:
    # Line 773
    jr	$ra
    nop
.end __glDontRenderTriangle

