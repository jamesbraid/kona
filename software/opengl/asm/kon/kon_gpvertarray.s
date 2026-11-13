# Source: kon_gpvertarray.c
# Category: kon
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c kon_gpvertarray.c
# Total Functions: 12

.text

# Function: __glkonlSendPackedVertexV3F
# Declared: Line 60 (Source lines: 62-76)
# Address: 0x0da74d80 - 0x0da74f58 (Size: 472 bytes, Frame: 192)
.globl __glkonlSendPackedVertexV3F
.ent __glkonlSendPackedVertexV3F
__glkonlSendPackedVertexV3F:
    # Line 62
    addiu	$sp,$sp,-64
    sd	$s2,0($sp)
    # Line 63
    lw	$s2,4112($zero)
    # Line 64
    lw	$v0,5100($s2)
    mult	$v0,$a1
    # Line 62
    sd	$s4,8($sp)
    lui	$at,0x2
    sd	$s0,16($sp)
    move	$s4,$a2
    addiu	$at,$at,-15784
    # Line 64
    lw	$s0,5088($s2)
    sd	$gp,24($sp)
    # Line 62
    addu	$gp,$t9,$at
    # Line 64
    mflo	$t8
    blez	$a2,.L0da74e4c
    addu	$s0,$s0,$t8
    andi	$v1,$a2,0x1
    sd	$ra,40($sp)
    sd	$s3,32($sp)
    li	$s3,427
    sd	$s1,48($sp)
    move	$s1,$zero
    beqz	$v1,.L0da74e34
    lw	$a1,4136($zero)
    # Line 68
    slti	$a0,$a1,4
    bnez	$a0,.L0da74f3c
    move	$a3,$a1
.L0da74dec:
    lw	$a5,4144($zero)
    # Line 69
    sw	$s3,0($a5)
    # Line 70
    lwc1	$f2,0($s0)
    swc1	$f2,4($a5)
    # Line 71
    lwc1	$f1,4($s0)
    swc1	$f1,8($a5)
    # Line 72
    lwc1	$f0,8($s0)
    swc1	$f0,12($a5)
    # Line 73
    addiu	$a5,$a5,16
    sw	$a5,4144($zero)
    lw	$a4,4148($zero)
    addiu	$a1,$a3,-4
    sw	$a1,4136($zero)
    addiu	$a4,$a4,4
    sw	$a4,4148($zero)
    # Line 74
    lw	$a2,5100($s2)
    # Line 67
    addiu	$s1,$s1,1
    # Line 74
    addu	$s0,$a2,$s0
.L0da74e34:
    sra	$a6,$s4,0x1
    bnez	$a6,.L0da74f50
    # Line 68
    slti	$ra,$a1,4
.L0da74e40:
    ld	$s3,32($sp)
    ld	$ra,40($sp)
    ld	$s1,48($sp)
.L0da74e4c:
    ld	$s2,0($sp)
    ld	$s4,8($sp)
    ld	$s0,16($sp)
    # Line 76
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
    nop
    nop
    nop
.L0da74e70:
    # Line 68
    lw	$t2,4144($zero)
    # Line 69
    sw	$s3,0($t2)
    # Line 70
    lwc1	$f5,0($s0)
    swc1	$f5,4($t2)
    # Line 71
    lwc1	$f4,4($s0)
    swc1	$f4,8($t2)
    # Line 72
    lwc1	$f3,8($s0)
    swc1	$f3,12($t2)
    # Line 73
    addiu	$t2,$t2,16
    sw	$t2,4144($zero)
    lw	$t1,4148($zero)
    addiu	$a3,$a3,-4
    sw	$a3,4136($zero)
    addiu	$t1,$t1,4
    sw	$t1,4148($zero)
    # Line 68
    slti	$t0,$a3,4
    # Line 74
    lw	$a7,5100($s2)
    # Line 68
    bnez	$t0,.L0da74f28
    # Line 74
    addu	$s0,$a7,$s0
.L0da74ebc:
    # Line 68
    lw	$t9,4144($zero)
    # Line 69
    sw	$s3,0($t9)
    # Line 70
    lwc1	$f8,0($s0)
    swc1	$f8,4($t9)
    # Line 71
    lwc1	$f7,4($s0)
    swc1	$f7,8($t9)
    # Line 72
    lwc1	$f6,8($s0)
    swc1	$f6,12($t9)
    # Line 73
    addiu	$t9,$t9,16
    sw	$t9,4144($zero)
    lw	$t8,4148($zero)
    addiu	$a1,$a3,-4
    sw	$a1,4136($zero)
    addiu	$t8,$t8,4
    sw	$t8,4148($zero)
    # Line 67
    addiu	$s1,$s1,2
    # Line 74
    lw	$t3,5100($s2)
    # Line 68
    slti	$ra,$a1,4
    # Line 67
    beq	$s4,$s1,.L0da74e40
    # Line 74
    addu	$s0,$t3,$s0
.L0da74f0c:
    # Line 68
    beqz	$ra,.L0da74e70
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da74e70
    move	$a3,$v0
.L0da74f28:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da74ebc
    move	$a3,$v0
.L0da74f3c:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da74dec
    move	$a3,$v0
.L0da74f50:
    b	.L0da74f0c
    nop
.end __glkonlSendPackedVertexV3F

# Function: __glkonlSendPackedVertexV3F_C4UB
# Declared: Line 81 (Source lines: 83-101)
# Address: 0x0da74f60 - 0x0da75188 (Size: 552 bytes, Frame: 192)
.globl __glkonlSendPackedVertexV3F_C4UB
.ent __glkonlSendPackedVertexV3F_C4UB
__glkonlSendPackedVertexV3F_C4UB:
    # Line 83
    addiu	$sp,$sp,-64
    sd	$s3,0($sp)
    # Line 84
    lw	$s3,4112($zero)
    # Line 85
    lw	$v1,5100($s3)
    mult	$v1,$a1
    # Line 87
    lw	$v0,5152($s3)
    sd	$gp,32($sp)
    # Line 85
    mflo	$t8
    nop
    nop
    # Line 87
    mult	$v0,$a1
    # Line 83
    sd	$s5,8($sp)
    sd	$s0,24($sp)
    lui	$at,0x2
    sd	$s1,16($sp)
    andi	$a0,$a2,0x1
    addiu	$at,$at,-16264
    # Line 85
    lw	$s1,5088($s3)
    # Line 83
    move	$s5,$a2
    addu	$gp,$t9,$at
    # Line 87
    lw	$s0,5140($s3)
    # Line 85
    addu	$s1,$s1,$t8
    # Line 87
    mflo	$t8
    blez	$a2,.L0da7505c
    addu	$s0,$s0,$t8
    sd	$ra,48($sp)
    sd	$s4,56($sp)
    li	$s4,428
    sd	$s2,40($sp)
    move	$s2,$zero
    beqz	$a0,.L0da75044
    lw	$a1,4136($zero)
    # Line 91
    slti	$a2,$a1,5
    bnez	$a2,.L0da7516c
    move	$a3,$a1
.L0da74fec:
    lw	$a7,4144($zero)
    # Line 92
    sw	$s4,0($a7)
    # Line 93
    lwc1	$f2,0($s1)
    swc1	$f2,4($a7)
    # Line 94
    lwc1	$f1,4($s1)
    swc1	$f1,8($a7)
    # Line 95
    lwc1	$f0,8($s1)
    swc1	$f0,12($a7)
    # Line 96
    lw	$t0,0($s0)
    sw	$t0,16($a7)
    # Line 97
    addiu	$a7,$a7,20
    sw	$a7,4144($zero)
    lw	$a6,4148($zero)
    addiu	$a1,$a3,-5
    sw	$a1,4136($zero)
    addiu	$a6,$a6,5
    sw	$a6,4148($zero)
    # Line 98
    lw	$a4,5100($s3)
    # Line 99
    lw	$a5,5152($s3)
    # Line 90
    addiu	$s2,$s2,1
    # Line 99
    addu	$s0,$a5,$s0
    # Line 98
    addu	$s1,$a4,$s1
.L0da75044:
    sra	$t1,$s5,0x1
    bnez	$t1,.L0da75180
    # Line 91
    slti	$a5,$a1,5
.L0da75050:
    ld	$s2,40($sp)
    ld	$ra,48($sp)
    ld	$s4,56($sp)
.L0da7505c:
    ld	$s3,0($sp)
    ld	$s5,8($sp)
    ld	$s1,16($sp)
    ld	$s0,24($sp)
    # Line 101
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
    nop
    nop
.L0da75080:
    # Line 91
    lw	$ra,4144($zero)
    # Line 92
    sw	$s4,0($ra)
    # Line 93
    lwc1	$f5,0($s1)
    swc1	$f5,4($ra)
    # Line 94
    lwc1	$f4,4($s1)
    swc1	$f4,8($ra)
    # Line 95
    lwc1	$f3,8($s1)
    swc1	$f3,12($ra)
    # Line 96
    lw	$at,0($s0)
    sw	$at,16($ra)
    # Line 97
    addiu	$ra,$ra,20
    sw	$ra,4144($zero)
    lw	$t9,4148($zero)
    addiu	$a3,$a3,-5
    sw	$a3,4136($zero)
    addiu	$t9,$t9,5
    sw	$t9,4148($zero)
    # Line 99
    lw	$t8,5152($s3)
    # Line 91
    slti	$t3,$a3,5
    # Line 98
    lw	$t2,5100($s3)
    # Line 99
    addu	$s0,$t8,$s0
    # Line 91
    bnez	$t3,.L0da75158
    # Line 98
    addu	$s1,$t2,$s1
.L0da750dc:
    # Line 91
    lw	$a2,4144($zero)
    # Line 92
    sw	$s4,0($a2)
    # Line 93
    lwc1	$f8,0($s1)
    swc1	$f8,4($a2)
    # Line 94
    lwc1	$f7,4($s1)
    swc1	$f7,8($a2)
    # Line 95
    lwc1	$f6,8($s1)
    swc1	$f6,12($a2)
    # Line 96
    lw	$a4,0($s0)
    sw	$a4,16($a2)
    # Line 97
    addiu	$a2,$a2,20
    sw	$a2,4144($zero)
    lw	$a0,4148($zero)
    addiu	$a1,$a3,-5
    sw	$a1,4136($zero)
    addiu	$a0,$a0,5
    sw	$a0,4148($zero)
    # Line 99
    lw	$v1,5152($s3)
    # Line 90
    addiu	$s2,$s2,2
    # Line 98
    lw	$v0,5100($s3)
    # Line 91
    slti	$a5,$a1,5
    # Line 99
    addu	$s0,$v1,$s0
    # Line 90
    beq	$s5,$s2,.L0da75050
    # Line 98
    addu	$s1,$v0,$s1
.L0da7513c:
    # Line 91
    beqz	$a5,.L0da75080
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75080
    move	$a3,$v0
.L0da75158:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da750dc
    move	$a3,$v0
.L0da7516c:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da74fec
    move	$a3,$v0
.L0da75180:
    b	.L0da7513c
    nop
.end __glkonlSendPackedVertexV3F_C4UB

# Function: __glkonlSendPackedVertexV3F_N3S
# Declared: Line 106 (Source lines: 108-126)
# Address: 0x0da75190 - 0x0da753f8 (Size: 616 bytes, Frame: 208)
.globl __glkonlSendPackedVertexV3F_N3S
.ent __glkonlSendPackedVertexV3F_N3S
__glkonlSendPackedVertexV3F_N3S:
    # Line 108
    addiu	$sp,$sp,-80
    sd	$s3,0($sp)
    # Line 109
    lw	$s3,4112($zero)
    # Line 110
    lw	$v1,5100($s3)
    mult	$v1,$a1
    # Line 112
    lw	$v0,5124($s3)
    sd	$gp,32($sp)
    # Line 110
    mflo	$t8
    nop
    nop
    # Line 112
    mult	$v0,$a1
    # Line 108
    sd	$s6,8($sp)
    sd	$s1,16($sp)
    lui	$at,0x2
    sd	$s0,24($sp)
    andi	$a0,$a2,0x1
    addiu	$at,$at,-16824
    # Line 110
    lw	$s0,5088($s3)
    # Line 108
    move	$s6,$a2
    addu	$gp,$t9,$at
    # Line 112
    lw	$s1,5116($s3)
    # Line 110
    addu	$s0,$s0,$t8
    # Line 112
    mflo	$t8
    blez	$a2,.L0da752a8
    addu	$s1,$s1,$t8
    sd	$ra,48($sp)
    sd	$s4,56($sp)
    sd	$s5,64($sp)
    li	$s5,-2
    li	$s4,429
    sd	$s2,40($sp)
    move	$s2,$zero
    beqz	$a0,.L0da7528c
    lw	$a1,4136($zero)
    # Line 116
    slti	$a2,$a1,5
    bnez	$a2,.L0da753dc
    move	$a3,$a1
.L0da75224:
    lw	$a7,4144($zero)
    # Line 117
    sw	$s4,0($a7)
    # Line 118
    lwc1	$f2,0($s0)
    swc1	$f2,4($a7)
    # Line 119
    lwc1	$f1,4($s0)
    swc1	$f1,8($a7)
    # Line 120
    lwc1	$f0,8($s0)
    swc1	$f0,12($a7)
    # Line 121
    lw	$t0,0($s1)
    lw	$t1,4($s1)
    srl	$t1,$t1,0x1f
    and	$t0,$t0,$s5
    or	$t0,$t0,$t1
    sw	$t0,16($a7)
    # Line 122
    addiu	$a7,$a7,20
    sw	$a7,4144($zero)
    lw	$a6,4148($zero)
    addiu	$a1,$a3,-5
    sw	$a1,4136($zero)
    addiu	$a6,$a6,5
    sw	$a6,4148($zero)
    # Line 123
    lw	$a4,5100($s3)
    # Line 124
    lw	$a5,5124($s3)
    # Line 115
    addiu	$s2,$s2,1
    # Line 124
    addu	$s1,$a5,$s1
    # Line 123
    addu	$s0,$a4,$s0
.L0da7528c:
    sra	$t1,$s6,0x1
    bnez	$t1,.L0da753f0
    # Line 116
    slti	$a5,$a1,5
.L0da75298:
    ld	$s2,40($sp)
    ld	$ra,48($sp)
    ld	$s4,56($sp)
    ld	$s5,64($sp)
.L0da752a8:
    ld	$s3,0($sp)
    ld	$s6,8($sp)
    ld	$s1,16($sp)
    ld	$s0,24($sp)
    # Line 126
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
    nop
    nop
    nop
.L0da752d0:
    # Line 116
    lw	$ra,4144($zero)
    # Line 117
    sw	$s4,0($ra)
    # Line 118
    lwc1	$f5,0($s0)
    swc1	$f5,4($ra)
    # Line 119
    lwc1	$f4,4($s0)
    swc1	$f4,8($ra)
    # Line 120
    lwc1	$f3,8($s0)
    swc1	$f3,12($ra)
    # Line 121
    lw	$at,0($s1)
    lw	$v0,4($s1)
    srl	$v0,$v0,0x1f
    and	$at,$at,$s5
    or	$at,$at,$v0
    sw	$at,16($ra)
    # Line 122
    addiu	$ra,$ra,20
    sw	$ra,4144($zero)
    lw	$t9,4148($zero)
    addiu	$a3,$a3,-5
    sw	$a3,4136($zero)
    addiu	$t9,$t9,5
    sw	$t9,4148($zero)
    # Line 124
    lw	$t8,5124($s3)
    # Line 116
    slti	$t3,$a3,5
    # Line 123
    lw	$t2,5100($s3)
    # Line 124
    addu	$s1,$t8,$s1
    # Line 116
    bnez	$t3,.L0da753c8
    # Line 123
    addu	$s0,$t2,$s0
.L0da7533c:
    # Line 116
    lw	$a2,4144($zero)
    # Line 117
    sw	$s4,0($a2)
    # Line 118
    lwc1	$f8,0($s0)
    swc1	$f8,4($a2)
    # Line 119
    lwc1	$f7,4($s0)
    swc1	$f7,8($a2)
    # Line 120
    lwc1	$f6,8($s0)
    swc1	$f6,12($a2)
    # Line 121
    lw	$a4,0($s1)
    lw	$a5,4($s1)
    srl	$a5,$a5,0x1f
    and	$a4,$a4,$s5
    or	$a4,$a4,$a5
    sw	$a4,16($a2)
    # Line 122
    addiu	$a2,$a2,20
    sw	$a2,4144($zero)
    lw	$a0,4148($zero)
    addiu	$a1,$a3,-5
    sw	$a1,4136($zero)
    addiu	$a0,$a0,5
    sw	$a0,4148($zero)
    # Line 124
    lw	$v1,5124($s3)
    # Line 115
    addiu	$s2,$s2,2
    # Line 123
    lw	$v0,5100($s3)
    # Line 116
    slti	$a5,$a1,5
    # Line 124
    addu	$s1,$v1,$s1
    # Line 115
    beq	$s6,$s2,.L0da75298
    # Line 123
    addu	$s0,$v0,$s0
.L0da753ac:
    # Line 116
    beqz	$a5,.L0da752d0
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da752d0
    move	$a3,$v0
.L0da753c8:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da7533c
    move	$a3,$v0
.L0da753dc:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75224
    move	$a3,$v0
.L0da753f0:
    b	.L0da753ac
    nop
.end __glkonlSendPackedVertexV3F_N3S

# Function: __glkonlSendPackedVertexV3F_C4UB_N3S
# Declared: Line 131 (Source lines: 133-155)
# Address: 0x0da75400 - 0x0da756bc (Size: 700 bytes, Frame: 208)
.globl __glkonlSendPackedVertexV3F_C4UB_N3S
.ent __glkonlSendPackedVertexV3F_C4UB_N3S
__glkonlSendPackedVertexV3F_C4UB_N3S:
    # Line 133
    addiu	$sp,$sp,-80
    sd	$s4,8($sp)
    # Line 134
    lw	$s4,4112($zero)
    # Line 135
    lw	$a0,5100($s4)
    mult	$a0,$a1
    # Line 137
    lw	$v1,5152($s4)
    # Line 133
    sd	$s1,32($sp)
    # Line 135
    mflo	$s1
    nop
    nop
    # Line 137
    mult	$v1,$a1
    # Line 139
    lw	$v0,5124($s4)
    sd	$gp,40($sp)
    # Line 133
    sd	$s7,16($sp)
    # Line 137
    mflo	$t8
    nop
    nop
    # Line 139
    mult	$v0,$a1
    # Line 133
    sd	$s2,0($sp)
    sd	$s0,24($sp)
    lui	$at,0x2
    # Line 135
    lw	$s0,5088($s4)
    # Line 133
    move	$s7,$a2
    addiu	$at,$at,-17448
    # Line 137
    lw	$s2,5140($s4)
    # Line 133
    addu	$gp,$t9,$at
    # Line 135
    addu	$s0,$s0,$s1
    # Line 139
    lw	$s1,5116($s4)
    # Line 137
    addu	$s2,$s2,$t8
    # Line 139
    mflo	$t8
    blez	$a2,.L0da75548
    addu	$s1,$s1,$t8
    andi	$a1,$a2,0x1
    sd	$ra,72($sp)
    sd	$s5,64($sp)
    sd	$s6,56($sp)
    li	$s6,-2
    li	$s5,430
    sd	$s3,48($sp)
    move	$s3,$zero
    beqz	$a1,.L0da7552c
    lw	$a1,4136($zero)
    # Line 143
    slti	$a2,$a1,6
    bnez	$a2,.L0da756a0
    move	$a3,$a1
.L0da754b4:
    lw	$t0,4144($zero)
    # Line 144
    sw	$s5,0($t0)
    # Line 145
    lwc1	$f2,0($s0)
    swc1	$f2,4($t0)
    # Line 146
    lwc1	$f1,4($s0)
    swc1	$f1,8($t0)
    # Line 147
    lwc1	$f0,8($s0)
    swc1	$f0,12($t0)
    # Line 148
    lw	$t2,0($s2)
    sw	$t2,16($t0)
    # Line 149
    lw	$t1,0($s1)
    lw	$t2,4($s1)
    srl	$t2,$t2,0x1f
    and	$t1,$t1,$s6
    or	$t1,$t1,$t2
    sw	$t1,20($t0)
    # Line 150
    addiu	$t0,$t0,24
    sw	$t0,4144($zero)
    lw	$a7,4148($zero)
    addiu	$a1,$a3,-6
    sw	$a1,4136($zero)
    addiu	$a7,$a7,6
    sw	$a7,4148($zero)
    # Line 151
    lw	$a4,5100($s4)
    # Line 153
    lw	$a6,5124($s4)
    # Line 152
    lw	$a5,5152($s4)
    # Line 142
    addiu	$s3,$s3,1
    # Line 153
    addu	$s1,$a6,$s1
    # Line 152
    addu	$s2,$a5,$s2
    # Line 151
    addu	$s0,$a4,$s0
.L0da7552c:
    sra	$t3,$s7,0x1
    bnez	$t3,.L0da756b4
    # Line 143
    slti	$t1,$a1,6
.L0da75538:
    ld	$s3,48($sp)
    ld	$s6,56($sp)
    ld	$s5,64($sp)
    ld	$ra,72($sp)
.L0da75548:
    ld	$s2,0($sp)
    ld	$s4,8($sp)
    ld	$s7,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 155
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
    nop
    nop
.L0da75570:
    # Line 143
    lw	$at,4144($zero)
    # Line 144
    sw	$s5,0($at)
    # Line 145
    lwc1	$f5,0($s0)
    swc1	$f5,4($at)
    # Line 146
    lwc1	$f4,4($s0)
    swc1	$f4,8($at)
    # Line 147
    lwc1	$f3,8($s0)
    swc1	$f3,12($at)
    # Line 148
    lw	$v1,0($s2)
    sw	$v1,16($at)
    # Line 149
    lw	$v0,0($s1)
    lw	$v1,4($s1)
    srl	$v1,$v1,0x1f
    and	$v0,$v0,$s6
    or	$v0,$v0,$v1
    sw	$v0,20($at)
    # Line 150
    addiu	$at,$at,24
    sw	$at,4144($zero)
    lw	$ra,4148($zero)
    addiu	$t9,$a3,-6
    sw	$t9,4136($zero)
    addiu	$ra,$ra,6
    sw	$ra,4148($zero)
    # Line 152
    lw	$ra,5152($s4)
    # Line 153
    lw	$at,5124($s4)
    # Line 143
    move	$a3,$t9
    slti	$t9,$t9,6
    # Line 151
    lw	$t8,5100($s4)
    # Line 153
    addu	$s1,$at,$s1
    # Line 152
    addu	$s2,$ra,$s2
    # Line 143
    bnez	$t9,.L0da7568c
    # Line 151
    addu	$s0,$t8,$s0
.L0da755f0:
    # Line 143
    lw	$a6,4144($zero)
    # Line 144
    sw	$s5,0($a6)
    # Line 145
    lwc1	$f8,0($s0)
    swc1	$f8,4($a6)
    # Line 146
    lwc1	$f7,4($s0)
    swc1	$f7,8($a6)
    # Line 147
    lwc1	$f6,8($s0)
    swc1	$f6,12($a6)
    # Line 148
    lw	$t0,0($s2)
    sw	$t0,16($a6)
    # Line 149
    lw	$a7,0($s1)
    lw	$t0,4($s1)
    srl	$t0,$t0,0x1f
    and	$a7,$a7,$s6
    or	$a7,$a7,$t0
    sw	$a7,20($a6)
    # Line 150
    addiu	$a6,$a6,24
    sw	$a6,4144($zero)
    lw	$a5,4148($zero)
    addiu	$a1,$a3,-6
    sw	$a1,4136($zero)
    addiu	$a5,$a5,6
    sw	$a5,4148($zero)
    # Line 152
    lw	$a2,5152($s4)
    # Line 153
    lw	$a4,5124($s4)
    # Line 143
    slti	$t1,$a1,6
    # Line 142
    addiu	$s3,$s3,2
    # Line 151
    lw	$a0,5100($s4)
    # Line 153
    addu	$s1,$a4,$s1
    # Line 152
    addu	$s2,$a2,$s2
    # Line 142
    beq	$s7,$s3,.L0da75538
    # Line 151
    addu	$s0,$a0,$s0
.L0da75670:
    # Line 143
    beqz	$t1,.L0da75570
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75570
    move	$a3,$v0
.L0da7568c:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da755f0
    move	$a3,$v0
.L0da756a0:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da754b4
    move	$a3,$v0
.L0da756b4:
    b	.L0da75670
    nop
.end __glkonlSendPackedVertexV3F_C4UB_N3S

# Function: __glkonlSendPackedVertexV3F_T2F
# Declared: Line 160 (Source lines: 162-181)
# Address: 0x0da756c0 - 0x0da758f8 (Size: 568 bytes, Frame: 192)
.globl __glkonlSendPackedVertexV3F_T2F
.ent __glkonlSendPackedVertexV3F_T2F
__glkonlSendPackedVertexV3F_T2F:
    # Line 162
    addiu	$sp,$sp,-64
    sd	$s3,0($sp)
    # Line 163
    lw	$s3,4112($zero)
    # Line 164
    lw	$v1,5100($s3)
    mult	$v1,$a1
    # Line 166
    lw	$v0,5204($s3)
    sd	$gp,32($sp)
    # Line 164
    mflo	$t8
    nop
    nop
    # Line 166
    mult	$v0,$a1
    # Line 162
    sd	$s5,8($sp)
    sd	$s0,24($sp)
    lui	$at,0x2
    sd	$s1,16($sp)
    andi	$a0,$a2,0x1
    addiu	$at,$at,-18152
    # Line 164
    lw	$s1,5088($s3)
    # Line 162
    move	$s5,$a2
    addu	$gp,$t9,$at
    # Line 166
    lw	$s0,5192($s3)
    # Line 164
    addu	$s1,$s1,$t8
    # Line 166
    mflo	$t8
    blez	$a2,.L0da757c4
    addu	$s0,$s0,$t8
    sd	$ra,48($sp)
    sd	$s4,56($sp)
    li	$s4,431
    sd	$s2,40($sp)
    move	$s2,$zero
    beqz	$a0,.L0da757ac
    lw	$a1,4136($zero)
    # Line 170
    slti	$a2,$a1,6
    bnez	$a2,.L0da758dc
    move	$a3,$a1
.L0da7574c:
    lw	$a7,4144($zero)
    # Line 171
    sw	$s4,0($a7)
    # Line 172
    lwc1	$f4,0($s1)
    swc1	$f4,4($a7)
    # Line 173
    lwc1	$f3,4($s1)
    swc1	$f3,8($a7)
    # Line 174
    lwc1	$f2,8($s1)
    swc1	$f2,12($a7)
    # Line 175
    lwc1	$f1,0($s0)
    swc1	$f1,16($a7)
    # Line 176
    lwc1	$f0,4($s0)
    swc1	$f0,20($a7)
    # Line 177
    addiu	$a7,$a7,24
    sw	$a7,4144($zero)
    lw	$a6,4148($zero)
    addiu	$a1,$a3,-6
    sw	$a1,4136($zero)
    addiu	$a6,$a6,6
    sw	$a6,4148($zero)
    # Line 178
    lw	$a4,5100($s3)
    # Line 179
    lw	$a5,5204($s3)
    # Line 169
    addiu	$s2,$s2,1
    # Line 179
    addu	$s0,$a5,$s0
    # Line 178
    addu	$s1,$a4,$s1
.L0da757ac:
    sra	$t0,$s5,0x1
    bnez	$t0,.L0da758f0
    # Line 170
    slti	$a0,$a1,6
.L0da757b8:
    ld	$s2,40($sp)
    ld	$ra,48($sp)
    ld	$s4,56($sp)
.L0da757c4:
    ld	$s3,0($sp)
    ld	$s5,8($sp)
    ld	$s1,16($sp)
    ld	$s0,24($sp)
    # Line 181
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da757e0:
    # Line 170
    lw	$t9,4144($zero)
    # Line 171
    sw	$s4,0($t9)
    # Line 172
    lwc1	$f9,0($s1)
    swc1	$f9,4($t9)
    # Line 173
    lwc1	$f8,4($s1)
    swc1	$f8,8($t9)
    # Line 174
    lwc1	$f7,8($s1)
    swc1	$f7,12($t9)
    # Line 175
    lwc1	$f6,0($s0)
    swc1	$f6,16($t9)
    # Line 176
    lwc1	$f5,4($s0)
    swc1	$f5,20($t9)
    # Line 177
    addiu	$t9,$t9,24
    sw	$t9,4144($zero)
    lw	$t8,4148($zero)
    addiu	$a3,$a3,-6
    sw	$a3,4136($zero)
    addiu	$t8,$t8,6
    sw	$t8,4148($zero)
    # Line 179
    lw	$t3,5204($s3)
    # Line 170
    slti	$t2,$a3,6
    # Line 178
    lw	$t1,5100($s3)
    # Line 179
    addu	$s0,$t3,$s0
    # Line 170
    bnez	$t2,.L0da758c8
    # Line 178
    addu	$s1,$t1,$s1
.L0da75844:
    # Line 170
    lw	$v1,4144($zero)
    # Line 171
    sw	$s4,0($v1)
    # Line 172
    lwc1	$f14,0($s1)
    swc1	$f14,4($v1)
    # Line 173
    lwc1	$f13,4($s1)
    swc1	$f13,8($v1)
    # Line 174
    lwc1	$f12,8($s1)
    swc1	$f12,12($v1)
    # Line 175
    lwc1	$f11,0($s0)
    swc1	$f11,16($v1)
    # Line 176
    lwc1	$f10,4($s0)
    swc1	$f10,20($v1)
    # Line 177
    addiu	$v1,$v1,24
    sw	$v1,4144($zero)
    lw	$v0,4148($zero)
    addiu	$a1,$a3,-6
    sw	$a1,4136($zero)
    addiu	$v0,$v0,6
    sw	$v0,4148($zero)
    # Line 179
    lw	$at,5204($s3)
    # Line 169
    addiu	$s2,$s2,2
    # Line 178
    lw	$ra,5100($s3)
    # Line 170
    slti	$a0,$a1,6
    # Line 179
    addu	$s0,$at,$s0
    # Line 169
    beq	$s5,$s2,.L0da757b8
    # Line 178
    addu	$s1,$ra,$s1
.L0da758ac:
    # Line 170
    beqz	$a0,.L0da757e0
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da757e0
    move	$a3,$v0
.L0da758c8:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75844
    move	$a3,$v0
.L0da758dc:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da7574c
    move	$a3,$v0
.L0da758f0:
    b	.L0da758ac
    nop
.end __glkonlSendPackedVertexV3F_T2F

# Function: __glkonlSendPackedVertexV3F_C4UB_T2F
# Declared: Line 186 (Source lines: 188-211)
# Address: 0x0da75900 - 0x0da75b9c (Size: 668 bytes, Frame: 208)
.globl __glkonlSendPackedVertexV3F_C4UB_T2F
.ent __glkonlSendPackedVertexV3F_C4UB_T2F
__glkonlSendPackedVertexV3F_C4UB_T2F:
    # Line 188
    addiu	$sp,$sp,-80
    sd	$s4,16($sp)
    # Line 189
    lw	$s4,4112($zero)
    # Line 190
    lw	$a3,5100($s4)
    mult	$a3,$a1
    # Line 192
    lw	$a0,5152($s4)
    # Line 190
    mflo	$at
    nop
    nop
    # Line 192
    mult	$a0,$a1
    sd	$gp,40($sp)
    # Line 194
    lw	$v1,5204($s4)
    # Line 188
    sd	$s6,8($sp)
    sd	$s0,32($sp)
    # Line 192
    mflo	$t8
    nop
    nop
    # Line 194
    mult	$v1,$a1
    # Line 188
    sd	$s2,0($sp)
    sd	$s1,24($sp)
    lui	$v0,0x2
    # Line 190
    lw	$s2,5088($s4)
    # Line 188
    move	$s6,$a2
    addiu	$v0,$v0,-18728
    # Line 192
    lw	$s1,5140($s4)
    # Line 188
    addu	$gp,$t9,$v0
    # Line 194
    lw	$s0,5192($s4)
    # Line 190
    addu	$s2,$s2,$at
    # Line 192
    addu	$s1,$s1,$t8
    # Line 194
    mflo	$t8
    blez	$a2,.L0da75a34
    addu	$s0,$s0,$t8
    andi	$a4,$a2,0x1
    sd	$ra,56($sp)
    sd	$s5,64($sp)
    li	$s5,432
    sd	$s3,48($sp)
    move	$s3,$zero
    beqz	$a4,.L0da75a1c
    lw	$a1,4136($zero)
    # Line 198
    slti	$a5,$a1,7
    bnez	$a5,.L0da75b80
    move	$a3,$a1
.L0da759ac:
    lw	$t2,4144($zero)
    # Line 199
    sw	$s5,0($t2)
    # Line 200
    lwc1	$f4,0($s2)
    swc1	$f4,4($t2)
    # Line 201
    lwc1	$f3,4($s2)
    swc1	$f3,8($t2)
    # Line 202
    lwc1	$f2,8($s2)
    swc1	$f2,12($t2)
    # Line 203
    lw	$t3,0($s1)
    sw	$t3,16($t2)
    # Line 204
    lwc1	$f1,0($s0)
    swc1	$f1,20($t2)
    # Line 205
    lwc1	$f0,4($s0)
    swc1	$f0,24($t2)
    # Line 206
    addiu	$t2,$t2,28
    sw	$t2,4144($zero)
    lw	$t1,4148($zero)
    addiu	$a1,$a3,-7
    sw	$a1,4136($zero)
    addiu	$t1,$t1,7
    sw	$t1,4148($zero)
    # Line 207
    lw	$a6,5100($s4)
    # Line 209
    lw	$t0,5204($s4)
    # Line 208
    lw	$a7,5152($s4)
    # Line 197
    addiu	$s3,$s3,1
    # Line 209
    addu	$s0,$t0,$s0
    # Line 208
    addu	$s1,$a7,$s1
    # Line 207
    addu	$s2,$a6,$s2
.L0da75a1c:
    sra	$t8,$s6,0x1
    bnez	$t8,.L0da75b94
    # Line 198
    slti	$t0,$a1,7
.L0da75a28:
    ld	$s3,48($sp)
    ld	$ra,56($sp)
    ld	$s5,64($sp)
.L0da75a34:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s1,24($sp)
    ld	$s0,32($sp)
    # Line 211
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
    nop
    nop
    nop
.L0da75a60:
    # Line 198
    lw	$v0,4144($zero)
    # Line 199
    sw	$s5,0($v0)
    # Line 200
    lwc1	$f9,0($s2)
    swc1	$f9,4($v0)
    # Line 201
    lwc1	$f8,4($s2)
    swc1	$f8,8($v0)
    # Line 202
    lwc1	$f7,8($s2)
    swc1	$f7,12($v0)
    # Line 203
    lw	$v1,0($s1)
    sw	$v1,16($v0)
    # Line 204
    lwc1	$f6,0($s0)
    swc1	$f6,20($v0)
    # Line 205
    lwc1	$f5,4($s0)
    swc1	$f5,24($v0)
    # Line 206
    addiu	$v0,$v0,28
    sw	$v0,4144($zero)
    lw	$at,4148($zero)
    addiu	$ra,$a3,-7
    sw	$ra,4136($zero)
    addiu	$at,$at,7
    sw	$at,4148($zero)
    # Line 208
    lw	$at,5152($s4)
    # Line 209
    lw	$v0,5204($s4)
    # Line 198
    move	$a3,$ra
    slti	$ra,$ra,7
    # Line 207
    lw	$t9,5100($s4)
    # Line 209
    addu	$s0,$v0,$s0
    # Line 208
    addu	$s1,$at,$s1
    # Line 198
    bnez	$ra,.L0da75b6c
    # Line 207
    addu	$s2,$t9,$s2
.L0da75ad8:
    # Line 198
    lw	$a6,4144($zero)
    # Line 199
    sw	$s5,0($a6)
    # Line 200
    lwc1	$f14,0($s2)
    swc1	$f14,4($a6)
    # Line 201
    lwc1	$f13,4($s2)
    swc1	$f13,8($a6)
    # Line 202
    lwc1	$f12,8($s2)
    swc1	$f12,12($a6)
    # Line 203
    lw	$a7,0($s1)
    sw	$a7,16($a6)
    # Line 204
    lwc1	$f11,0($s0)
    swc1	$f11,20($a6)
    # Line 205
    lwc1	$f10,4($s0)
    swc1	$f10,24($a6)
    # Line 206
    addiu	$a6,$a6,28
    sw	$a6,4144($zero)
    lw	$a5,4148($zero)
    addiu	$a1,$a3,-7
    sw	$a1,4136($zero)
    addiu	$a5,$a5,7
    sw	$a5,4148($zero)
    # Line 208
    lw	$a2,5152($s4)
    # Line 209
    lw	$a4,5204($s4)
    # Line 198
    slti	$t0,$a1,7
    # Line 197
    addiu	$s3,$s3,2
    # Line 207
    lw	$a0,5100($s4)
    # Line 209
    addu	$s0,$a4,$s0
    # Line 208
    addu	$s1,$a2,$s1
    # Line 197
    beq	$s6,$s3,.L0da75a28
    # Line 207
    addu	$s2,$a0,$s2
.L0da75b50:
    # Line 198
    beqz	$t0,.L0da75a60
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75a60
    move	$a3,$v0
.L0da75b6c:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75ad8
    move	$a3,$v0
.L0da75b80:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da759ac
    move	$a3,$v0
.L0da75b94:
    b	.L0da75b50
    nop
.end __glkonlSendPackedVertexV3F_C4UB_T2F

# Function: __glkonlSendPackedVertexV3F_N3S_T2F
# Declared: Line 216 (Source lines: 218-241)
# Address: 0x0da75ba0 - 0x0da75e6c (Size: 716 bytes, Frame: 208)
.globl __glkonlSendPackedVertexV3F_N3S_T2F
.ent __glkonlSendPackedVertexV3F_N3S_T2F
__glkonlSendPackedVertexV3F_N3S_T2F:
    # Line 218
    addiu	$sp,$sp,-80
    sd	$s4,8($sp)
    # Line 219
    lw	$s4,4112($zero)
    # Line 220
    lw	$a0,5100($s4)
    mult	$a0,$a1
    # Line 222
    lw	$v1,5124($s4)
    # Line 218
    sd	$s1,32($sp)
    # Line 220
    mflo	$s1
    nop
    nop
    # Line 222
    mult	$v1,$a1
    # Line 224
    lw	$v0,5204($s4)
    sd	$gp,40($sp)
    # Line 218
    sd	$s7,16($sp)
    # Line 222
    mflo	$t8
    nop
    nop
    # Line 224
    mult	$v0,$a1
    # Line 218
    sd	$s2,0($sp)
    sd	$s0,24($sp)
    lui	$at,0x2
    # Line 220
    lw	$s0,5088($s4)
    # Line 218
    move	$s7,$a2
    addiu	$at,$at,-19400
    # Line 222
    lw	$s2,5116($s4)
    # Line 218
    addu	$gp,$t9,$at
    # Line 220
    addu	$s0,$s0,$s1
    # Line 224
    lw	$s1,5192($s4)
    # Line 222
    addu	$s2,$s2,$t8
    # Line 224
    mflo	$t8
    blez	$a2,.L0da75cf0
    addu	$s1,$s1,$t8
    andi	$a1,$a2,0x1
    sd	$ra,72($sp)
    sd	$s5,64($sp)
    sd	$s6,56($sp)
    li	$s6,-2
    li	$s5,433
    sd	$s3,48($sp)
    move	$s3,$zero
    beqz	$a1,.L0da75cd4
    lw	$a1,4136($zero)
    # Line 228
    slti	$a2,$a1,7
    bnez	$a2,.L0da75e50
    move	$a3,$a1
.L0da75c54:
    lw	$t0,4144($zero)
    # Line 229
    sw	$s5,0($t0)
    # Line 230
    lwc1	$f4,0($s0)
    swc1	$f4,4($t0)
    # Line 231
    lwc1	$f3,4($s0)
    swc1	$f3,8($t0)
    # Line 232
    lwc1	$f2,8($s0)
    swc1	$f2,12($t0)
    # Line 233
    lw	$t1,0($s2)
    lw	$t2,4($s2)
    srl	$t2,$t2,0x1f
    and	$t1,$t1,$s6
    or	$t1,$t1,$t2
    sw	$t1,16($t0)
    # Line 234
    lwc1	$f1,0($s1)
    swc1	$f1,20($t0)
    # Line 235
    lwc1	$f0,4($s1)
    swc1	$f0,24($t0)
    # Line 236
    addiu	$t0,$t0,28
    sw	$t0,4144($zero)
    lw	$a7,4148($zero)
    addiu	$a1,$a3,-7
    sw	$a1,4136($zero)
    addiu	$a7,$a7,7
    sw	$a7,4148($zero)
    # Line 237
    lw	$a4,5100($s4)
    # Line 239
    lw	$a6,5204($s4)
    # Line 238
    lw	$a5,5124($s4)
    # Line 227
    addiu	$s3,$s3,1
    # Line 239
    addu	$s1,$a6,$s1
    # Line 238
    addu	$s2,$a5,$s2
    # Line 237
    addu	$s0,$a4,$s0
.L0da75cd4:
    sra	$t2,$s7,0x1
    bnez	$t2,.L0da75e64
    # Line 228
    slti	$a6,$a1,7
.L0da75ce0:
    ld	$s3,48($sp)
    ld	$s6,56($sp)
    ld	$s5,64($sp)
    ld	$ra,72($sp)
.L0da75cf0:
    ld	$s2,0($sp)
    ld	$s4,8($sp)
    ld	$s7,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 241
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da75d10:
    # Line 228
    lw	$ra,4144($zero)
    # Line 229
    sw	$s5,0($ra)
    # Line 230
    lwc1	$f9,0($s0)
    swc1	$f9,4($ra)
    # Line 231
    lwc1	$f8,4($s0)
    swc1	$f8,8($ra)
    # Line 232
    lwc1	$f7,8($s0)
    swc1	$f7,12($ra)
    # Line 233
    lw	$at,0($s2)
    lw	$v0,4($s2)
    srl	$v0,$v0,0x1f
    and	$at,$at,$s6
    or	$at,$at,$v0
    sw	$at,16($ra)
    # Line 234
    lwc1	$f6,0($s1)
    swc1	$f6,20($ra)
    # Line 235
    lwc1	$f5,4($s1)
    swc1	$f5,24($ra)
    # Line 236
    addiu	$ra,$ra,28
    sw	$ra,4144($zero)
    lw	$t9,4148($zero)
    addiu	$t8,$a3,-7
    sw	$t8,4136($zero)
    addiu	$t9,$t9,7
    sw	$t9,4148($zero)
    # Line 238
    lw	$t9,5124($s4)
    # Line 239
    lw	$ra,5204($s4)
    # Line 228
    move	$a3,$t8
    slti	$t8,$t8,7
    # Line 237
    lw	$t3,5100($s4)
    # Line 239
    addu	$s1,$ra,$s1
    # Line 238
    addu	$s2,$t9,$s2
    # Line 228
    bnez	$t8,.L0da75e3c
    # Line 237
    addu	$s0,$t3,$s0
.L0da75d98:
    # Line 228
    lw	$a4,4144($zero)
    # Line 229
    sw	$s5,0($a4)
    # Line 230
    lwc1	$f14,0($s0)
    swc1	$f14,4($a4)
    # Line 231
    lwc1	$f13,4($s0)
    swc1	$f13,8($a4)
    # Line 232
    lwc1	$f12,8($s0)
    swc1	$f12,12($a4)
    # Line 233
    lw	$a5,0($s2)
    lw	$a6,4($s2)
    srl	$a6,$a6,0x1f
    and	$a5,$a5,$s6
    or	$a5,$a5,$a6
    sw	$a5,16($a4)
    # Line 234
    lwc1	$f11,0($s1)
    swc1	$f11,20($a4)
    # Line 235
    lwc1	$f10,4($s1)
    swc1	$f10,24($a4)
    # Line 236
    addiu	$a4,$a4,28
    sw	$a4,4144($zero)
    lw	$a2,4148($zero)
    addiu	$a1,$a3,-7
    sw	$a1,4136($zero)
    addiu	$a2,$a2,7
    sw	$a2,4148($zero)
    # Line 238
    lw	$v1,5124($s4)
    # Line 239
    lw	$a0,5204($s4)
    # Line 227
    addiu	$s3,$s3,2
    # Line 228
    slti	$a6,$a1,7
    # Line 237
    lw	$v0,5100($s4)
    # Line 239
    addu	$s1,$a0,$s1
    # Line 238
    addu	$s2,$v1,$s2
    # Line 227
    beq	$s7,$s3,.L0da75ce0
    # Line 237
    addu	$s0,$v0,$s0
.L0da75e20:
    # Line 228
    beqz	$a6,.L0da75d10
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75d10
    move	$a3,$v0
.L0da75e3c:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75d98
    move	$a3,$v0
.L0da75e50:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75c54
    move	$a3,$v0
.L0da75e64:
    b	.L0da75e20
    nop
.end __glkonlSendPackedVertexV3F_N3S_T2F

# Function: __glkonlSendPackedVertexV3F_C4UB_N3S_T2F
# Declared: Line 246 (Source lines: 248-275)
# Address: 0x0da75e70 - 0x0da7619c (Size: 812 bytes, Frame: 224)
.globl __glkonlSendPackedVertexV3F_C4UB_N3S_T2F
.ent __glkonlSendPackedVertexV3F_C4UB_N3S_T2F
__glkonlSendPackedVertexV3F_C4UB_N3S_T2F:
    # Line 248
    addiu	$sp,$sp,-96
    sd	$s5,32($sp)
    # Line 249
    lw	$s5,4112($zero)
    # Line 250
    lw	$at,5100($s5)
    mult	$at,$a1
    # Line 248
    sd	$s8,40($sp)
    # Line 252
    lw	$s8,5152($s5)
    # Line 248
    sd	$s1,24($sp)
    # Line 250
    mflo	$s1
    nop
    nop
    # Line 252
    mult	$s8,$a1
    # Line 254
    lw	$t8,5124($s5)
    # Line 252
    mflo	$at
    nop
    nop
    # Line 254
    mult	$t8,$a1
    # Line 248
    sd	$s3,8($sp)
    # Line 256
    lw	$s3,5204($s5)
    # Line 248
    sd	$s2,0($sp)
    lui	$s2,0x2
    sd	$gp,48($sp)
    # Line 254
    mflo	$t8
    nop
    nop
    # Line 256
    mult	$s3,$a1
    # Line 248
    sd	$s0,16($sp)
    addiu	$s2,$s2,-20120
    addu	$gp,$t9,$s2
    # Line 254
    lw	$s2,5116($s5)
    # Line 250
    lw	$s0,5088($s5)
    andi	$v0,$a2,0x1
    # Line 248
    move	$s8,$a2
    # Line 252
    lw	$s3,5140($s5)
    # Line 250
    addu	$s0,$s0,$s1
    # Line 256
    lw	$s1,5192($s5)
    # Line 254
    addu	$s2,$s2,$t8
    # Line 252
    addu	$s3,$s3,$at
    # Line 256
    mflo	$t8
    blez	$a2,.L0da75ff0
    addu	$s1,$s1,$t8
    sd	$ra,80($sp)
    sd	$s6,56($sp)
    sd	$s7,72($sp)
    li	$s7,-2
    li	$s6,434
    sd	$s4,64($sp)
    move	$s4,$zero
    beqz	$v0,.L0da75fd4
    lw	$a1,4136($zero)
    # Line 260
    slti	$v1,$a1,8
    bnez	$v1,.L0da76180
    move	$a3,$a1
.L0da75f44:
    lw	$a7,4144($zero)
    # Line 261
    sw	$s6,0($a7)
    # Line 262
    lwc1	$f4,0($s0)
    swc1	$f4,4($a7)
    # Line 263
    lwc1	$f3,4($s0)
    swc1	$f3,8($a7)
    # Line 264
    lwc1	$f2,8($s0)
    swc1	$f2,12($a7)
    # Line 265
    lw	$t1,0($s3)
    sw	$t1,16($a7)
    # Line 266
    lw	$t0,0($s2)
    lw	$t1,4($s2)
    srl	$t1,$t1,0x1f
    and	$t0,$t0,$s7
    or	$t0,$t0,$t1
    sw	$t0,20($a7)
    # Line 267
    lwc1	$f1,0($s1)
    swc1	$f1,24($a7)
    # Line 268
    lwc1	$f0,4($s1)
    swc1	$f0,28($a7)
    # Line 269
    addiu	$a7,$a7,32
    sw	$a7,4144($zero)
    lw	$a6,4148($zero)
    addiu	$a1,$a3,-8
    sw	$a1,4136($zero)
    addiu	$a6,$a6,8
    sw	$a6,4148($zero)
    # Line 270
    lw	$a0,5100($s5)
    # Line 272
    lw	$a4,5124($s5)
    # Line 273
    lw	$a5,5204($s5)
    # Line 259
    addiu	$s4,$s4,1
    # Line 271
    lw	$a2,5152($s5)
    # Line 273
    addu	$s1,$a5,$s1
    # Line 272
    addu	$s2,$a4,$s2
    # Line 271
    addu	$s3,$a2,$s3
    # Line 270
    addu	$s0,$a0,$s0
.L0da75fd4:
    sra	$t2,$s8,0x1
    bnez	$t2,.L0da76194
    # Line 260
    slti	$t1,$a1,8
.L0da75fe0:
    ld	$s6,56($sp)
    ld	$s4,64($sp)
    ld	$s7,72($sp)
    ld	$ra,80($sp)
.L0da75ff0:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s5,32($sp)
    ld	$s8,40($sp)
    # Line 275
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
    nop
    nop
    nop
.L0da76020:
    # Line 260
    lw	$ra,4144($zero)
    # Line 261
    sw	$s6,0($ra)
    # Line 262
    lwc1	$f9,0($s0)
    swc1	$f9,4($ra)
    # Line 263
    lwc1	$f8,4($s0)
    swc1	$f8,8($ra)
    # Line 264
    lwc1	$f7,8($s0)
    swc1	$f7,12($ra)
    # Line 265
    lw	$v0,0($s3)
    sw	$v0,16($ra)
    # Line 266
    lw	$at,0($s2)
    lw	$v0,4($s2)
    srl	$v0,$v0,0x1f
    and	$at,$at,$s7
    or	$at,$at,$v0
    sw	$at,20($ra)
    # Line 267
    lwc1	$f6,0($s1)
    swc1	$f6,24($ra)
    # Line 268
    lwc1	$f5,4($s1)
    swc1	$f5,28($ra)
    # Line 269
    addiu	$ra,$ra,32
    sw	$ra,4144($zero)
    lw	$t9,4148($zero)
    addiu	$t8,$a3,-8
    sw	$t8,4136($zero)
    addiu	$t9,$t9,8
    sw	$t9,4148($zero)
    # Line 271
    lw	$t9,5152($s5)
    # Line 273
    lw	$at,5204($s5)
    # Line 260
    move	$a3,$t8
    # Line 272
    lw	$ra,5124($s5)
    # Line 260
    slti	$t8,$t8,8
    # Line 270
    lw	$t3,5100($s5)
    # Line 273
    addu	$s1,$at,$s1
    # Line 272
    addu	$s2,$ra,$s2
    # Line 271
    addu	$s3,$t9,$s3
    # Line 260
    bnez	$t8,.L0da7616c
    # Line 270
    addu	$s0,$t3,$s0
.L0da760b8:
    # Line 260
    lw	$a6,4144($zero)
    # Line 261
    sw	$s6,0($a6)
    # Line 262
    lwc1	$f14,0($s0)
    swc1	$f14,4($a6)
    # Line 263
    lwc1	$f13,4($s0)
    swc1	$f13,8($a6)
    # Line 264
    lwc1	$f12,8($s0)
    swc1	$f12,12($a6)
    # Line 265
    lw	$t0,0($s3)
    sw	$t0,16($a6)
    # Line 266
    lw	$a7,0($s2)
    lw	$t0,4($s2)
    srl	$t0,$t0,0x1f
    and	$a7,$a7,$s7
    or	$a7,$a7,$t0
    sw	$a7,20($a6)
    # Line 267
    lwc1	$f11,0($s1)
    swc1	$f11,24($a6)
    # Line 268
    lwc1	$f10,4($s1)
    swc1	$f10,28($a6)
    # Line 269
    addiu	$a6,$a6,32
    sw	$a6,4144($zero)
    lw	$a5,4148($zero)
    addiu	$a1,$a3,-8
    sw	$a1,4136($zero)
    addiu	$a5,$a5,8
    sw	$a5,4148($zero)
    # Line 271
    lw	$a0,5152($s5)
    # Line 273
    lw	$a4,5204($s5)
    # Line 260
    slti	$t1,$a1,8
    # Line 272
    lw	$a2,5124($s5)
    # Line 259
    addiu	$s4,$s4,2
    # Line 270
    lw	$v1,5100($s5)
    # Line 273
    addu	$s1,$a4,$s1
    # Line 272
    addu	$s2,$a2,$s2
    # Line 271
    addu	$s3,$a0,$s3
    # Line 259
    beq	$s8,$s4,.L0da75fe0
    # Line 270
    addu	$s0,$v1,$s0
.L0da76150:
    # Line 260
    beqz	$t1,.L0da76020
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da76020
    move	$a3,$v0
.L0da7616c:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da760b8
    move	$a3,$v0
.L0da76180:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da75f44
    move	$a3,$v0
.L0da76194:
    b	.L0da76150
    nop
.end __glkonlSendPackedVertexV3F_C4UB_N3S_T2F

# Function: __glkonlSendPackedVertexV3F_T2S
# Declared: Line 280 (Source lines: 282-300)
# Address: 0x0da761a0 - 0x0da763c8 (Size: 552 bytes, Frame: 192)
.globl __glkonlSendPackedVertexV3F_T2S
.ent __glkonlSendPackedVertexV3F_T2S
__glkonlSendPackedVertexV3F_T2S:
    # Line 282
    addiu	$sp,$sp,-64
    sd	$s3,0($sp)
    # Line 283
    lw	$s3,4112($zero)
    # Line 284
    lw	$v1,5100($s3)
    mult	$v1,$a1
    # Line 286
    lw	$v0,5204($s3)
    sd	$gp,32($sp)
    # Line 284
    mflo	$t8
    nop
    nop
    # Line 286
    mult	$v0,$a1
    # Line 282
    sd	$s5,8($sp)
    sd	$s0,24($sp)
    lui	$at,0x2
    sd	$s1,16($sp)
    andi	$a0,$a2,0x1
    addiu	$at,$at,-20936
    # Line 284
    lw	$s1,5088($s3)
    # Line 282
    move	$s5,$a2
    addu	$gp,$t9,$at
    # Line 286
    lw	$s0,5192($s3)
    # Line 284
    addu	$s1,$s1,$t8
    # Line 286
    mflo	$t8
    blez	$a2,.L0da7629c
    addu	$s0,$s0,$t8
    sd	$ra,48($sp)
    sd	$s4,56($sp)
    li	$s4,435
    sd	$s2,40($sp)
    move	$s2,$zero
    beqz	$a0,.L0da76284
    lw	$a1,4136($zero)
    # Line 290
    slti	$a2,$a1,5
    bnez	$a2,.L0da763ac
    move	$a3,$a1
.L0da7622c:
    lw	$a7,4144($zero)
    # Line 291
    sw	$s4,0($a7)
    # Line 292
    lwc1	$f2,0($s1)
    swc1	$f2,4($a7)
    # Line 293
    lwc1	$f1,4($s1)
    swc1	$f1,8($a7)
    # Line 294
    lwc1	$f0,8($s1)
    swc1	$f0,12($a7)
    # Line 295
    lw	$t0,0($s0)
    sw	$t0,16($a7)
    # Line 296
    addiu	$a7,$a7,20
    sw	$a7,4144($zero)
    lw	$a6,4148($zero)
    addiu	$a1,$a3,-5
    sw	$a1,4136($zero)
    addiu	$a6,$a6,5
    sw	$a6,4148($zero)
    # Line 297
    lw	$a4,5100($s3)
    # Line 298
    lw	$a5,5204($s3)
    # Line 289
    addiu	$s2,$s2,1
    # Line 298
    addu	$s0,$a5,$s0
    # Line 297
    addu	$s1,$a4,$s1
.L0da76284:
    sra	$t1,$s5,0x1
    bnez	$t1,.L0da763c0
    # Line 290
    slti	$a5,$a1,5
.L0da76290:
    ld	$s2,40($sp)
    ld	$ra,48($sp)
    ld	$s4,56($sp)
.L0da7629c:
    ld	$s3,0($sp)
    ld	$s5,8($sp)
    ld	$s1,16($sp)
    ld	$s0,24($sp)
    # Line 300
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
    nop
    nop
.L0da762c0:
    # Line 290
    lw	$ra,4144($zero)
    # Line 291
    sw	$s4,0($ra)
    # Line 292
    lwc1	$f5,0($s1)
    swc1	$f5,4($ra)
    # Line 293
    lwc1	$f4,4($s1)
    swc1	$f4,8($ra)
    # Line 294
    lwc1	$f3,8($s1)
    swc1	$f3,12($ra)
    # Line 295
    lw	$at,0($s0)
    sw	$at,16($ra)
    # Line 296
    addiu	$ra,$ra,20
    sw	$ra,4144($zero)
    lw	$t9,4148($zero)
    addiu	$a3,$a3,-5
    sw	$a3,4136($zero)
    addiu	$t9,$t9,5
    sw	$t9,4148($zero)
    # Line 298
    lw	$t8,5204($s3)
    # Line 290
    slti	$t3,$a3,5
    # Line 297
    lw	$t2,5100($s3)
    # Line 298
    addu	$s0,$t8,$s0
    # Line 290
    bnez	$t3,.L0da76398
    # Line 297
    addu	$s1,$t2,$s1
.L0da7631c:
    # Line 290
    lw	$a2,4144($zero)
    # Line 291
    sw	$s4,0($a2)
    # Line 292
    lwc1	$f8,0($s1)
    swc1	$f8,4($a2)
    # Line 293
    lwc1	$f7,4($s1)
    swc1	$f7,8($a2)
    # Line 294
    lwc1	$f6,8($s1)
    swc1	$f6,12($a2)
    # Line 295
    lw	$a4,0($s0)
    sw	$a4,16($a2)
    # Line 296
    addiu	$a2,$a2,20
    sw	$a2,4144($zero)
    lw	$a0,4148($zero)
    addiu	$a1,$a3,-5
    sw	$a1,4136($zero)
    addiu	$a0,$a0,5
    sw	$a0,4148($zero)
    # Line 298
    lw	$v1,5204($s3)
    # Line 289
    addiu	$s2,$s2,2
    # Line 297
    lw	$v0,5100($s3)
    # Line 290
    slti	$a5,$a1,5
    # Line 298
    addu	$s0,$v1,$s0
    # Line 289
    beq	$s5,$s2,.L0da76290
    # Line 297
    addu	$s1,$v0,$s1
.L0da7637c:
    # Line 290
    beqz	$a5,.L0da762c0
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da762c0
    move	$a3,$v0
.L0da76398:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da7631c
    move	$a3,$v0
.L0da763ac:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da7622c
    move	$a3,$v0
.L0da763c0:
    b	.L0da7637c
    nop
.end __glkonlSendPackedVertexV3F_T2S

# Function: __glkonlSendPackedVertexV3F_C4UB_T2S
# Declared: Line 305 (Source lines: 307-329)
# Address: 0x0da763d0 - 0x0da7664c (Size: 636 bytes, Frame: 208)
.globl __glkonlSendPackedVertexV3F_C4UB_T2S
.ent __glkonlSendPackedVertexV3F_C4UB_T2S
__glkonlSendPackedVertexV3F_C4UB_T2S:
    # Line 307
    addiu	$sp,$sp,-80
    sd	$s4,16($sp)
    # Line 308
    lw	$s4,4112($zero)
    # Line 309
    lw	$a3,5100($s4)
    mult	$a3,$a1
    # Line 311
    lw	$a0,5152($s4)
    # Line 309
    mflo	$at
    nop
    nop
    # Line 311
    mult	$a0,$a1
    sd	$gp,40($sp)
    # Line 313
    lw	$v1,5204($s4)
    # Line 307
    sd	$s6,8($sp)
    sd	$s0,32($sp)
    # Line 311
    mflo	$t8
    nop
    nop
    # Line 313
    mult	$v1,$a1
    # Line 307
    sd	$s2,0($sp)
    sd	$s1,24($sp)
    lui	$v0,0x2
    # Line 309
    lw	$s2,5088($s4)
    # Line 307
    move	$s6,$a2
    addiu	$v0,$v0,-21496
    # Line 311
    lw	$s1,5140($s4)
    # Line 307
    addu	$gp,$t9,$v0
    # Line 313
    lw	$s0,5192($s4)
    # Line 309
    addu	$s2,$s2,$at
    # Line 311
    addu	$s1,$s1,$t8
    # Line 313
    mflo	$t8
    blez	$a2,.L0da764fc
    addu	$s0,$s0,$t8
    andi	$a4,$a2,0x1
    sd	$ra,56($sp)
    sd	$s5,64($sp)
    li	$s5,436
    sd	$s3,48($sp)
    move	$s3,$zero
    beqz	$a4,.L0da764e4
    lw	$a1,4136($zero)
    # Line 317
    slti	$a5,$a1,6
    bnez	$a5,.L0da76630
    move	$a3,$a1
.L0da7647c:
    lw	$t2,4144($zero)
    # Line 318
    sw	$s5,0($t2)
    # Line 319
    lwc1	$f2,0($s2)
    swc1	$f2,4($t2)
    # Line 320
    lwc1	$f1,4($s2)
    swc1	$f1,8($t2)
    # Line 321
    lwc1	$f0,8($s2)
    swc1	$f0,12($t2)
    # Line 322
    lw	$t8,0($s1)
    sw	$t8,16($t2)
    # Line 323
    lw	$t3,0($s0)
    sw	$t3,20($t2)
    # Line 324
    addiu	$t2,$t2,24
    sw	$t2,4144($zero)
    lw	$t1,4148($zero)
    addiu	$a1,$a3,-6
    sw	$a1,4136($zero)
    addiu	$t1,$t1,6
    sw	$t1,4148($zero)
    # Line 325
    lw	$a6,5100($s4)
    # Line 327
    lw	$t0,5204($s4)
    # Line 326
    lw	$a7,5152($s4)
    # Line 316
    addiu	$s3,$s3,1
    # Line 327
    addu	$s0,$t0,$s0
    # Line 326
    addu	$s1,$a7,$s1
    # Line 325
    addu	$s2,$a6,$s2
.L0da764e4:
    sra	$t9,$s6,0x1
    bnez	$t9,.L0da76644
    # Line 317
    slti	$t2,$a1,6
.L0da764f0:
    ld	$s3,48($sp)
    ld	$ra,56($sp)
    ld	$s5,64($sp)
.L0da764fc:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s1,24($sp)
    ld	$s0,32($sp)
    # Line 329
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
    nop
.L0da76520:
    # Line 317
    lw	$v1,4144($zero)
    # Line 318
    sw	$s5,0($v1)
    # Line 319
    lwc1	$f5,0($s2)
    swc1	$f5,4($v1)
    # Line 320
    lwc1	$f4,4($s2)
    swc1	$f4,8($v1)
    # Line 321
    lwc1	$f3,8($s2)
    swc1	$f3,12($v1)
    # Line 322
    lw	$a1,0($s1)
    sw	$a1,16($v1)
    # Line 323
    lw	$a0,0($s0)
    sw	$a0,20($v1)
    # Line 324
    addiu	$v1,$v1,24
    sw	$v1,4144($zero)
    lw	$v0,4148($zero)
    addiu	$at,$a3,-6
    sw	$at,4136($zero)
    addiu	$v0,$v0,6
    sw	$v0,4148($zero)
    # Line 326
    lw	$v0,5152($s4)
    # Line 327
    lw	$v1,5204($s4)
    # Line 317
    move	$a3,$at
    slti	$at,$at,6
    # Line 325
    lw	$ra,5100($s4)
    # Line 327
    addu	$s0,$v1,$s0
    # Line 326
    addu	$s1,$v0,$s1
    # Line 317
    bnez	$at,.L0da7661c
    # Line 325
    addu	$s2,$ra,$s2
.L0da76590:
    # Line 317
    lw	$a7,4144($zero)
    # Line 318
    sw	$s5,0($a7)
    # Line 319
    lwc1	$f8,0($s2)
    swc1	$f8,4($a7)
    # Line 320
    lwc1	$f7,4($s2)
    swc1	$f7,8($a7)
    # Line 321
    lwc1	$f6,8($s2)
    swc1	$f6,12($a7)
    # Line 322
    lw	$t1,0($s1)
    sw	$t1,16($a7)
    # Line 323
    lw	$t0,0($s0)
    sw	$t0,20($a7)
    # Line 324
    addiu	$a7,$a7,24
    sw	$a7,4144($zero)
    lw	$a6,4148($zero)
    addiu	$a1,$a3,-6
    sw	$a1,4136($zero)
    addiu	$a6,$a6,6
    sw	$a6,4148($zero)
    # Line 326
    lw	$a4,5152($s4)
    # Line 327
    lw	$a5,5204($s4)
    # Line 317
    slti	$t2,$a1,6
    # Line 316
    addiu	$s3,$s3,2
    # Line 325
    lw	$a2,5100($s4)
    # Line 327
    addu	$s0,$a5,$s0
    # Line 326
    addu	$s1,$a4,$s1
    # Line 316
    beq	$s6,$s3,.L0da764f0
    # Line 325
    addu	$s2,$a2,$s2
.L0da76600:
    # Line 317
    beqz	$t2,.L0da76520
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da76520
    move	$a3,$v0
.L0da7661c:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da76590
    move	$a3,$v0
.L0da76630:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da7647c
    move	$a3,$v0
.L0da76644:
    b	.L0da76600
    nop
.end __glkonlSendPackedVertexV3F_C4UB_T2S

# Function: __glkonlSendPackedVertexV3F_N3S_T2S
# Declared: Line 334 (Source lines: 336-358)
# Address: 0x0da76650 - 0x0da7690c (Size: 700 bytes, Frame: 208)
.globl __glkonlSendPackedVertexV3F_N3S_T2S
.ent __glkonlSendPackedVertexV3F_N3S_T2S
__glkonlSendPackedVertexV3F_N3S_T2S:
    # Line 336
    addiu	$sp,$sp,-80
    sd	$s4,8($sp)
    # Line 337
    lw	$s4,4112($zero)
    # Line 338
    lw	$a0,5100($s4)
    mult	$a0,$a1
    # Line 340
    lw	$v1,5124($s4)
    # Line 336
    sd	$s1,32($sp)
    # Line 338
    mflo	$s1
    nop
    nop
    # Line 340
    mult	$v1,$a1
    # Line 342
    lw	$v0,5204($s4)
    sd	$gp,40($sp)
    # Line 336
    sd	$s7,16($sp)
    # Line 340
    mflo	$t8
    nop
    nop
    # Line 342
    mult	$v0,$a1
    # Line 336
    sd	$s2,0($sp)
    sd	$s0,24($sp)
    lui	$at,0x2
    # Line 338
    lw	$s0,5088($s4)
    # Line 336
    move	$s7,$a2
    addiu	$at,$at,-22136
    # Line 340
    lw	$s2,5116($s4)
    # Line 336
    addu	$gp,$t9,$at
    # Line 338
    addu	$s0,$s0,$s1
    # Line 342
    lw	$s1,5192($s4)
    # Line 340
    addu	$s2,$s2,$t8
    # Line 342
    mflo	$t8
    blez	$a2,.L0da76798
    addu	$s1,$s1,$t8
    andi	$a1,$a2,0x1
    sd	$ra,72($sp)
    sd	$s5,64($sp)
    sd	$s6,56($sp)
    li	$s6,-2
    li	$s5,437
    sd	$s3,48($sp)
    move	$s3,$zero
    beqz	$a1,.L0da7677c
    lw	$a1,4136($zero)
    # Line 346
    slti	$a2,$a1,6
    bnez	$a2,.L0da768f0
    move	$a3,$a1
.L0da76704:
    lw	$t0,4144($zero)
    # Line 347
    sw	$s5,0($t0)
    # Line 348
    lwc1	$f2,0($s0)
    swc1	$f2,4($t0)
    # Line 349
    lwc1	$f1,4($s0)
    swc1	$f1,8($t0)
    # Line 350
    lwc1	$f0,8($s0)
    swc1	$f0,12($t0)
    # Line 351
    lw	$t2,0($s2)
    lw	$t3,4($s2)
    srl	$t3,$t3,0x1f
    and	$t2,$t2,$s6
    or	$t2,$t2,$t3
    sw	$t2,16($t0)
    # Line 352
    lw	$t1,0($s1)
    sw	$t1,20($t0)
    # Line 353
    addiu	$t0,$t0,24
    sw	$t0,4144($zero)
    lw	$a7,4148($zero)
    addiu	$a1,$a3,-6
    sw	$a1,4136($zero)
    addiu	$a7,$a7,6
    sw	$a7,4148($zero)
    # Line 354
    lw	$a4,5100($s4)
    # Line 356
    lw	$a6,5204($s4)
    # Line 355
    lw	$a5,5124($s4)
    # Line 345
    addiu	$s3,$s3,1
    # Line 356
    addu	$s1,$a6,$s1
    # Line 355
    addu	$s2,$a5,$s2
    # Line 354
    addu	$s0,$a4,$s0
.L0da7677c:
    sra	$t3,$s7,0x1
    bnez	$t3,.L0da76904
    # Line 346
    slti	$t1,$a1,6
.L0da76788:
    ld	$s3,48($sp)
    ld	$s6,56($sp)
    ld	$s5,64($sp)
    ld	$ra,72($sp)
.L0da76798:
    ld	$s2,0($sp)
    ld	$s4,8($sp)
    ld	$s7,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 358
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
    nop
    nop
.L0da767c0:
    # Line 346
    lw	$at,4144($zero)
    # Line 347
    sw	$s5,0($at)
    # Line 348
    lwc1	$f5,0($s0)
    swc1	$f5,4($at)
    # Line 349
    lwc1	$f4,4($s0)
    swc1	$f4,8($at)
    # Line 350
    lwc1	$f3,8($s0)
    swc1	$f3,12($at)
    # Line 351
    lw	$v1,0($s2)
    lw	$a0,4($s2)
    srl	$a0,$a0,0x1f
    and	$v1,$v1,$s6
    or	$v1,$v1,$a0
    sw	$v1,16($at)
    # Line 352
    lw	$v0,0($s1)
    sw	$v0,20($at)
    # Line 353
    addiu	$at,$at,24
    sw	$at,4144($zero)
    lw	$ra,4148($zero)
    addiu	$t9,$a3,-6
    sw	$t9,4136($zero)
    addiu	$ra,$ra,6
    sw	$ra,4148($zero)
    # Line 355
    lw	$ra,5124($s4)
    # Line 356
    lw	$at,5204($s4)
    # Line 346
    move	$a3,$t9
    slti	$t9,$t9,6
    # Line 354
    lw	$t8,5100($s4)
    # Line 356
    addu	$s1,$at,$s1
    # Line 355
    addu	$s2,$ra,$s2
    # Line 346
    bnez	$t9,.L0da768dc
    # Line 354
    addu	$s0,$t8,$s0
.L0da76840:
    # Line 346
    lw	$a6,4144($zero)
    # Line 347
    sw	$s5,0($a6)
    # Line 348
    lwc1	$f8,0($s0)
    swc1	$f8,4($a6)
    # Line 349
    lwc1	$f7,4($s0)
    swc1	$f7,8($a6)
    # Line 350
    lwc1	$f6,8($s0)
    swc1	$f6,12($a6)
    # Line 351
    lw	$t0,0($s2)
    lw	$t1,4($s2)
    srl	$t1,$t1,0x1f
    and	$t0,$t0,$s6
    or	$t0,$t0,$t1
    sw	$t0,16($a6)
    # Line 352
    lw	$a7,0($s1)
    sw	$a7,20($a6)
    # Line 353
    addiu	$a6,$a6,24
    sw	$a6,4144($zero)
    lw	$a5,4148($zero)
    addiu	$a1,$a3,-6
    sw	$a1,4136($zero)
    addiu	$a5,$a5,6
    sw	$a5,4148($zero)
    # Line 355
    lw	$a2,5124($s4)
    # Line 356
    lw	$a4,5204($s4)
    # Line 345
    addiu	$s3,$s3,2
    # Line 346
    slti	$t1,$a1,6
    # Line 354
    lw	$a0,5100($s4)
    # Line 356
    addu	$s1,$a4,$s1
    # Line 355
    addu	$s2,$a2,$s2
    # Line 345
    beq	$s7,$s3,.L0da76788
    # Line 354
    addu	$s0,$a0,$s0
.L0da768c0:
    # Line 346
    beqz	$t1,.L0da767c0
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da767c0
    move	$a3,$v0
.L0da768dc:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da76840
    move	$a3,$v0
.L0da768f0:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da76704
    move	$a3,$v0
.L0da76904:
    b	.L0da768c0
    nop
.end __glkonlSendPackedVertexV3F_N3S_T2S

# Function: __glkonlSendPackedVertexV3F_C4UB_N3S_T2S
# Declared: Line 363 (Source lines: 365-391)
# Address: 0x0da76910 - 0x0da76c1c (Size: 780 bytes, Frame: 224)
.globl __glkonlSendPackedVertexV3F_C4UB_N3S_T2S
.ent __glkonlSendPackedVertexV3F_C4UB_N3S_T2S
__glkonlSendPackedVertexV3F_C4UB_N3S_T2S:
    # Line 365
    addiu	$sp,$sp,-96
    sd	$s5,32($sp)
    # Line 366
    lw	$s5,4112($zero)
    # Line 367
    lw	$at,5100($s5)
    mult	$at,$a1
    # Line 365
    sd	$s8,40($sp)
    # Line 369
    lw	$s8,5152($s5)
    # Line 365
    sd	$s1,24($sp)
    # Line 367
    mflo	$s1
    nop
    nop
    # Line 369
    mult	$s8,$a1
    # Line 371
    lw	$t8,5124($s5)
    # Line 369
    mflo	$at
    nop
    nop
    # Line 371
    mult	$t8,$a1
    # Line 365
    sd	$s3,8($sp)
    # Line 373
    lw	$s3,5204($s5)
    # Line 365
    sd	$s2,0($sp)
    lui	$s2,0x2
    sd	$gp,48($sp)
    # Line 371
    mflo	$t8
    nop
    nop
    # Line 373
    mult	$s3,$a1
    # Line 365
    sd	$s0,16($sp)
    addiu	$s2,$s2,-22840
    addu	$gp,$t9,$s2
    # Line 371
    lw	$s2,5116($s5)
    # Line 367
    lw	$s0,5088($s5)
    andi	$v0,$a2,0x1
    # Line 365
    move	$s8,$a2
    # Line 369
    lw	$s3,5140($s5)
    # Line 367
    addu	$s0,$s0,$s1
    # Line 373
    lw	$s1,5192($s5)
    # Line 371
    addu	$s2,$s2,$t8
    # Line 369
    addu	$s3,$s3,$at
    # Line 373
    mflo	$t8
    blez	$a2,.L0da76a88
    addu	$s1,$s1,$t8
    sd	$ra,80($sp)
    sd	$s6,56($sp)
    sd	$s7,72($sp)
    li	$s7,-2
    li	$s6,438
    sd	$s4,64($sp)
    move	$s4,$zero
    beqz	$v0,.L0da76a6c
    lw	$a1,4136($zero)
    # Line 377
    slti	$v1,$a1,7
    bnez	$v1,.L0da76c00
    move	$a3,$a1
.L0da769e4:
    lw	$a7,4144($zero)
    # Line 378
    sw	$s6,0($a7)
    # Line 379
    lwc1	$f2,0($s0)
    swc1	$f2,4($a7)
    # Line 380
    lwc1	$f1,4($s0)
    swc1	$f1,8($a7)
    # Line 381
    lwc1	$f0,8($s0)
    swc1	$f0,12($a7)
    # Line 382
    lw	$t2,0($s3)
    sw	$t2,16($a7)
    # Line 383
    lw	$t1,0($s2)
    lw	$t2,4($s2)
    srl	$t2,$t2,0x1f
    and	$t1,$t1,$s7
    or	$t1,$t1,$t2
    sw	$t1,20($a7)
    # Line 384
    lw	$t0,0($s1)
    sw	$t0,24($a7)
    # Line 385
    addiu	$a7,$a7,28
    sw	$a7,4144($zero)
    lw	$a6,4148($zero)
    addiu	$a1,$a3,-7
    sw	$a1,4136($zero)
    addiu	$a6,$a6,7
    sw	$a6,4148($zero)
    # Line 386
    lw	$a0,5100($s5)
    # Line 388
    lw	$a4,5124($s5)
    # Line 389
    lw	$a5,5204($s5)
    # Line 376
    addiu	$s4,$s4,1
    # Line 387
    lw	$a2,5152($s5)
    # Line 389
    addu	$s1,$a5,$s1
    # Line 388
    addu	$s2,$a4,$s2
    # Line 387
    addu	$s3,$a2,$s3
    # Line 386
    addu	$s0,$a0,$s0
.L0da76a6c:
    sra	$t3,$s8,0x1
    bnez	$t3,.L0da76c14
    # Line 377
    slti	$t8,$a1,7
.L0da76a78:
    ld	$s6,56($sp)
    ld	$s4,64($sp)
    ld	$s7,72($sp)
    ld	$ra,80($sp)
.L0da76a88:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s5,32($sp)
    ld	$s8,40($sp)
    # Line 391
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
    nop
.L0da76ab0:
    # Line 377
    lw	$at,4144($zero)
    # Line 378
    sw	$s6,0($at)
    # Line 379
    lwc1	$f5,0($s0)
    swc1	$f5,4($at)
    # Line 380
    lwc1	$f4,4($s0)
    swc1	$f4,8($at)
    # Line 381
    lwc1	$f3,8($s0)
    swc1	$f3,12($at)
    # Line 382
    lw	$a0,0($s3)
    sw	$a0,16($at)
    # Line 383
    lw	$v1,0($s2)
    lw	$a0,4($s2)
    srl	$a0,$a0,0x1f
    and	$v1,$v1,$s7
    or	$v1,$v1,$a0
    sw	$v1,20($at)
    # Line 384
    lw	$v0,0($s1)
    sw	$v0,24($at)
    # Line 385
    addiu	$at,$at,28
    sw	$at,4144($zero)
    lw	$ra,4148($zero)
    addiu	$t9,$a3,-7
    sw	$t9,4136($zero)
    addiu	$ra,$ra,7
    sw	$ra,4148($zero)
    # Line 387
    lw	$ra,5152($s5)
    # Line 389
    lw	$v0,5204($s5)
    # Line 377
    move	$a3,$t9
    # Line 388
    lw	$at,5124($s5)
    # Line 377
    slti	$t9,$t9,7
    # Line 386
    lw	$t8,5100($s5)
    # Line 389
    addu	$s1,$v0,$s1
    # Line 388
    addu	$s2,$at,$s2
    # Line 387
    addu	$s3,$ra,$s3
    # Line 377
    bnez	$t9,.L0da76bec
    # Line 386
    addu	$s0,$t8,$s0
.L0da76b40:
    # Line 377
    lw	$t0,4144($zero)
    # Line 378
    sw	$s6,0($t0)
    # Line 379
    lwc1	$f8,0($s0)
    swc1	$f8,4($t0)
    # Line 380
    lwc1	$f7,4($s0)
    swc1	$f7,8($t0)
    # Line 381
    lwc1	$f6,8($s0)
    swc1	$f6,12($t0)
    # Line 382
    lw	$t3,0($s3)
    sw	$t3,16($t0)
    # Line 383
    lw	$t2,0($s2)
    lw	$t3,4($s2)
    srl	$t3,$t3,0x1f
    and	$t2,$t2,$s7
    or	$t2,$t2,$t3
    sw	$t2,20($t0)
    # Line 384
    lw	$t1,0($s1)
    sw	$t1,24($t0)
    # Line 385
    addiu	$t0,$t0,28
    sw	$t0,4144($zero)
    lw	$a7,4148($zero)
    addiu	$a1,$a3,-7
    sw	$a1,4136($zero)
    addiu	$a7,$a7,7
    sw	$a7,4148($zero)
    # Line 387
    lw	$a4,5152($s5)
    # Line 389
    lw	$a6,5204($s5)
    # Line 377
    slti	$t8,$a1,7
    # Line 388
    lw	$a5,5124($s5)
    # Line 376
    addiu	$s4,$s4,2
    # Line 386
    lw	$a2,5100($s5)
    # Line 389
    addu	$s1,$a6,$s1
    # Line 388
    addu	$s2,$a5,$s2
    # Line 387
    addu	$s3,$a4,$s3
    # Line 376
    beq	$s8,$s4,.L0da76a78
    # Line 386
    addu	$s0,$a2,$s0
.L0da76bd0:
    # Line 377
    beqz	$t8,.L0da76ab0
    move	$a3,$a1
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da76ab0
    move	$a3,$v0
.L0da76bec:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da76b40
    move	$a3,$v0
.L0da76c00:
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    jal	__glSPDlistSpace
    move	$a0,$zero
    b	.L0da769e4
    move	$a3,$v0
.L0da76c14:
    b	.L0da76bd0
    nop
.end __glkonlSendPackedVertexV3F_C4UB_N3S_T2S

