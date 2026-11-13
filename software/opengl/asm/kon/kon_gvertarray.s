# Source: kon_gvertarray.c
# Category: kon
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c kon_gvertarray.c
# Total Functions: 33

.text

# Function: __glkonDrawArraysV
# Declared: Line 15 (Source lines: 15-32)
# Address: 0x0da70f60 - 0x0da71070 (Size: 272 bytes, Frame: 192)
.ent __glkonDrawArraysV
__glkonDrawArraysV:
    # Line 15
    addiu	$sp,$sp,-64
    sd	$s3,8($sp)
    # Line 16
    lw	$s3,4112($zero)
    # Line 18
    lw	$at,5100($s3)
    sd	$s1,56($sp)
    # Line 15
    sd	$s5,32($sp)
    # Line 18
    mult	$at,$a1
    # Line 15
    sd	$s4,16($sp)
    move	$s4,$a3
    sd	$gp,40($sp)
    move	$s5,$a2
    lui	$t8,0x2
    sd	$s0,24($sp)
    # Line 22
    move	$s1,$zero
    # Line 15
    addiu	$t8,$t8,120
    sd	$s2,0($sp)
    # Line 19
    li	$s2,0x8ab0
    # Line 15
    addu	$gp,$t9,$t8
    # Line 18
    lw	$s0,5088($s3)
    sd	$ra,48($sp)
    # Line 19
    addu	$s2,$s2,$s3
    # Line 18
    mflo	$t8
    # Line 19
    lw	$s2,0($s2)
    beqz	$a2,.L0da70ffc
    # Line 18
    addu	$s0,$s0,$t8
    # Line 22
    li	$v0,419
    subu	$v0,$v0,$a2
    blez	$a2,.L0da70ffc
    sw	$v0,16384($zero)
    nop
    nop
    nop
.L0da70fe0:
    # Line 25
    move	$t9,$s2
    jalr	$t9
    move	$a0,$s0
    lw	$v1,5100($s3)
    # Line 24
    addiu	$s1,$s1,1
    bne	$s5,$s1,.L0da70fe0
    # Line 25
    addu	$s0,$v1,$s0
.L0da70ffc:
    # Line 28
    move	$s1,$zero
    # Line 24
    beqz	$s4,.L0da7104c
    ld	$s5,32($sp)
    # Line 28
    lui	$a0,0xdead
    li	$a1,386
    sw	$a1,16384($zero)
    sw	$s4,16384($zero)
    ori	$a0,$a0,0xbeef
    sw	$a0,16384($zero)
    blez	$s4,.L0da7104c
    sw	$a0,16384($zero)
    nop
    nop
.L0da71030:
    # Line 30
    move	$t9,$s2
    jalr	$t9
    move	$a0,$s0
    lw	$a2,5100($s3)
    # Line 29
    addiu	$s1,$s1,1
    bne	$s4,$s1,.L0da71030
    # Line 30
    addu	$s0,$a2,$s0
.L0da7104c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,56($sp)
    # Line 32
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glkonDrawArraysV

# Function: __glkonDrawArraysNV
# Declared: Line 34 (Source lines: 34-55)
# Address: 0x0da71070 - 0x0da711cc (Size: 348 bytes, Frame: 208)
.ent __glkonDrawArraysNV
__glkonDrawArraysNV:
    # Line 34
    addiu	$sp,$sp,-80
    sd	$s3,0($sp)
    # Line 35
    lw	$s3,4112($zero)
    # Line 34
    sd	$s7,48($sp)
    # Line 37
    lw	$s7,5124($s3)
    mult	$s7,$a1
    sd	$ra,72($sp)
    sd	$gp,56($sp)
    # Line 34
    sd	$s6,8($sp)
    # Line 39
    lw	$s6,5100($s3)
    sd	$s2,64($sp)
    # Line 34
    sd	$s1,32($sp)
    # Line 37
    mflo	$t8
    nop
    nop
    # Line 39
    mult	$s6,$a1
    # Line 34
    sd	$s5,40($sp)
    # Line 43
    move	$s2,$zero
    # Line 34
    lui	$s5,0x2
    sd	$s4,16($sp)
    # Line 38
    lui	$s4,0x1
    # Line 34
    addiu	$s5,$s5,-152
    sd	$s0,24($sp)
    addu	$gp,$t9,$s5
    # Line 38
    addu	$s4,$s3,$s4
    # Line 37
    lw	$s0,5116($s3)
    # Line 39
    lw	$s1,5088($s3)
    # Line 34
    move	$s7,$a2
    move	$s6,$a3
    # Line 40
    lw	$s5,-30032($s4)
    # Line 37
    addu	$s0,$s0,$t8
    # Line 39
    mflo	$t8
    # Line 38
    lw	$s4,-30028($s4)
    # Line 40
    beqz	$a2,.L0da71140
    # Line 39
    addu	$s1,$s1,$t8
    # Line 43
    addu	$t9,$a2,$a2
    li	$t8,419
    subu	$t8,$t8,$t9
    blez	$a2,.L0da71140
    sw	$t8,16384($zero)
.L0da71110:
    # Line 46
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$ra,5124($s3)
    # Line 47
    move	$t9,$s5
    # Line 46
    addu	$s0,$ra,$s0
    # Line 47
    jalr	$t9
    move	$a0,$s1
    lw	$at,5100($s3)
    # Line 45
    addiu	$s2,$s2,1
    bne	$s7,$s2,.L0da71110
    # Line 47
    addu	$s1,$at,$s1
.L0da71140:
    # Line 50
    move	$s2,$zero
    # Line 45
    beqz	$s6,.L0da711a0
    ld	$s7,48($sp)
    # Line 50
    lui	$v0,0xdead
    li	$v1,386
    sw	$v1,16384($zero)
    sw	$s6,16384($zero)
    ori	$v0,$v0,0xbeef
    sw	$v0,16384($zero)
    blez	$s6,.L0da711a0
    sw	$v0,16384($zero)
    nop
.L0da71170:
    # Line 52
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$a0,5124($s3)
    # Line 53
    move	$t9,$s5
    # Line 52
    addu	$s0,$a0,$s0
    # Line 53
    jalr	$t9
    move	$a0,$s1
    lw	$a1,5100($s3)
    # Line 51
    addiu	$s2,$s2,1
    bne	$s6,$s2,.L0da71170
    # Line 53
    addu	$s1,$a1,$s1
.L0da711a0:
    ld	$s2,64($sp)
    ld	$s3,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$ra,72($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 55
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glkonDrawArraysNV

# Function: __glkonDrawArraysCV
# Declared: Line 57 (Source lines: 57-78)
# Address: 0x0da711d0 - 0x0da7132c (Size: 348 bytes, Frame: 208)
.ent __glkonDrawArraysCV
__glkonDrawArraysCV:
    # Line 57
    addiu	$sp,$sp,-80
    sd	$s3,0($sp)
    # Line 58
    lw	$s3,4112($zero)
    # Line 57
    sd	$s7,48($sp)
    # Line 60
    lw	$s7,5152($s3)
    mult	$s7,$a1
    sd	$ra,72($sp)
    sd	$gp,56($sp)
    # Line 57
    sd	$s6,8($sp)
    # Line 62
    lw	$s6,5100($s3)
    sd	$s2,64($sp)
    # Line 57
    sd	$s1,32($sp)
    # Line 60
    mflo	$t8
    nop
    nop
    # Line 62
    mult	$s6,$a1
    # Line 57
    sd	$s5,40($sp)
    # Line 66
    move	$s2,$zero
    # Line 57
    lui	$s5,0x2
    sd	$s4,16($sp)
    # Line 61
    lui	$s4,0x1
    # Line 57
    addiu	$s5,$s5,-504
    sd	$s0,24($sp)
    addu	$gp,$t9,$s5
    # Line 61
    addu	$s4,$s3,$s4
    # Line 60
    lw	$s0,5140($s3)
    # Line 62
    lw	$s1,5088($s3)
    # Line 57
    move	$s7,$a2
    move	$s6,$a3
    # Line 63
    lw	$s5,-30032($s4)
    # Line 60
    addu	$s0,$s0,$t8
    # Line 62
    mflo	$t8
    # Line 61
    lw	$s4,-30024($s4)
    # Line 63
    beqz	$a2,.L0da712a0
    # Line 62
    addu	$s1,$s1,$t8
    # Line 66
    addu	$t9,$a2,$a2
    li	$t8,419
    subu	$t8,$t8,$t9
    blez	$a2,.L0da712a0
    sw	$t8,16384($zero)
.L0da71270:
    # Line 69
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$ra,5152($s3)
    # Line 70
    move	$t9,$s5
    # Line 69
    addu	$s0,$ra,$s0
    # Line 70
    jalr	$t9
    move	$a0,$s1
    lw	$at,5100($s3)
    # Line 68
    addiu	$s2,$s2,1
    bne	$s7,$s2,.L0da71270
    # Line 70
    addu	$s1,$at,$s1
.L0da712a0:
    # Line 73
    move	$s2,$zero
    # Line 68
    beqz	$s6,.L0da71300
    ld	$s7,48($sp)
    # Line 73
    lui	$v0,0xdead
    li	$v1,386
    sw	$v1,16384($zero)
    sw	$s6,16384($zero)
    ori	$v0,$v0,0xbeef
    sw	$v0,16384($zero)
    blez	$s6,.L0da71300
    sw	$v0,16384($zero)
    nop
.L0da712d0:
    # Line 75
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$a0,5152($s3)
    # Line 76
    move	$t9,$s5
    # Line 75
    addu	$s0,$a0,$s0
    # Line 76
    jalr	$t9
    move	$a0,$s1
    lw	$a1,5100($s3)
    # Line 74
    addiu	$s2,$s2,1
    bne	$s6,$s2,.L0da712d0
    # Line 76
    addu	$s1,$a1,$s1
.L0da71300:
    ld	$s2,64($sp)
    ld	$s3,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$ra,72($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 78
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glkonDrawArraysCV

# Function: __glkonDrawArraysNCV
# Declared: Line 80 (Source lines: 80-105)
# Address: 0x0da71330 - 0x0da714e8 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysNCV
__glkonDrawArraysNCV:
    # Line 80
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 81
    lw	$s1,4112($zero)
    # Line 83
    lw	$t8,5124($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 80
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 85
    lw	$s7,5152($s1)
    sd	$s4,88($sp)
    # Line 80
    sd	$s2,0($sp)
    # Line 83
    mflo	$s2
    nop
    nop
    # Line 85
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 80
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 87
    lw	$s6,5100($s1)
    # Line 80
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 85
    mflo	$t8
    nop
    nop
    # Line 87
    mult	$s6,$a1
    # Line 80
    sd	$s0,24($sp)
    # Line 84
    lui	$s5,0x1
    # Line 85
    lw	$s3,5140($s1)
    # Line 80
    lui	$s7,0x2
    # Line 84
    addu	$s5,$s1,$s5
    # Line 83
    lw	$s0,5116($s1)
    # Line 80
    addiu	$s7,$s7,-856
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 86
    lw	$s7,-30024($s5)
    # Line 91
    move	$s4,$zero
    # Line 83
    addu	$s0,$s0,$s2
    # Line 87
    lw	$s2,5088($s1)
    # Line 88
    lw	$s6,-30032($s5)
    # Line 85
    addu	$s3,$s3,$t8
    # Line 87
    mflo	$t8
    # Line 84
    lw	$s5,-30028($s5)
    # Line 88
    beqz	$a2,.L0da71448
    # Line 87
    addu	$s2,$s2,$t8
    # Line 91
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da71448
    sw	$t9,16384($zero)
    nop
.L0da71400:
    # Line 94
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5124($s1)
    # Line 95
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 94
    addu	$s0,$v0,$s0
    # Line 95
    lw	$v1,5152($s1)
    # Line 96
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 95
    addu	$s3,$v1,$s3
    # Line 93
    ld	$a1,72($sp)
    # Line 96
    lw	$a0,5100($s1)
    # Line 93
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da71400
    # Line 96
    addu	$s2,$a0,$s2
.L0da71448:
    # Line 93
    beqz	$s8,.L0da714b4
    # Line 99
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da714b4
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da71470:
    # Line 101
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5124($s1)
    # Line 102
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 101
    addu	$s0,$a4,$s0
    # Line 102
    lw	$a5,5152($s1)
    # Line 103
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 102
    addu	$s3,$a5,$s3
    # Line 103
    lw	$a6,5100($s1)
    # Line 100
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da71470
    # Line 103
    addu	$s2,$a6,$s2
.L0da714b4:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 105
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysNCV

# Function: __glkonDrawArraysTV
# Declared: Line 107 (Source lines: 107-128)
# Address: 0x0da714f0 - 0x0da7164c (Size: 348 bytes, Frame: 208)
.ent __glkonDrawArraysTV
__glkonDrawArraysTV:
    # Line 107
    addiu	$sp,$sp,-80
    sd	$s3,0($sp)
    # Line 108
    lw	$s3,4112($zero)
    # Line 107
    sd	$s7,48($sp)
    # Line 110
    lw	$s7,5204($s3)
    mult	$s7,$a1
    sd	$ra,72($sp)
    sd	$gp,56($sp)
    # Line 107
    sd	$s6,8($sp)
    # Line 112
    lw	$s6,5100($s3)
    sd	$s2,64($sp)
    # Line 107
    sd	$s1,32($sp)
    # Line 110
    mflo	$t8
    nop
    nop
    # Line 112
    mult	$s6,$a1
    # Line 107
    sd	$s5,40($sp)
    # Line 116
    move	$s2,$zero
    # Line 107
    lui	$s5,0x2
    sd	$s4,16($sp)
    # Line 111
    lui	$s4,0x1
    # Line 107
    addiu	$s5,$s5,-1304
    sd	$s0,24($sp)
    addu	$gp,$t9,$s5
    # Line 111
    addu	$s4,$s3,$s4
    # Line 110
    lw	$s0,5192($s3)
    # Line 112
    lw	$s1,5088($s3)
    # Line 107
    move	$s7,$a2
    move	$s6,$a3
    # Line 113
    lw	$s5,-30032($s4)
    # Line 110
    addu	$s0,$s0,$t8
    # Line 112
    mflo	$t8
    # Line 111
    lw	$s4,-30016($s4)
    # Line 113
    beqz	$a2,.L0da715c0
    # Line 112
    addu	$s1,$s1,$t8
    # Line 116
    addu	$t9,$a2,$a2
    li	$t8,419
    subu	$t8,$t8,$t9
    blez	$a2,.L0da715c0
    sw	$t8,16384($zero)
.L0da71590:
    # Line 119
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$ra,5204($s3)
    # Line 120
    move	$t9,$s5
    # Line 119
    addu	$s0,$ra,$s0
    # Line 120
    jalr	$t9
    move	$a0,$s1
    lw	$at,5100($s3)
    # Line 118
    addiu	$s2,$s2,1
    bne	$s7,$s2,.L0da71590
    # Line 120
    addu	$s1,$at,$s1
.L0da715c0:
    # Line 123
    move	$s2,$zero
    # Line 118
    beqz	$s6,.L0da71620
    ld	$s7,48($sp)
    # Line 123
    lui	$v0,0xdead
    li	$v1,386
    sw	$v1,16384($zero)
    sw	$s6,16384($zero)
    ori	$v0,$v0,0xbeef
    sw	$v0,16384($zero)
    blez	$s6,.L0da71620
    sw	$v0,16384($zero)
    nop
.L0da715f0:
    # Line 125
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$a0,5204($s3)
    # Line 126
    move	$t9,$s5
    # Line 125
    addu	$s0,$a0,$s0
    # Line 126
    jalr	$t9
    move	$a0,$s1
    lw	$a1,5100($s3)
    # Line 124
    addiu	$s2,$s2,1
    bne	$s6,$s2,.L0da715f0
    # Line 126
    addu	$s1,$a1,$s1
.L0da71620:
    ld	$s2,64($sp)
    ld	$s3,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$ra,72($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 128
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glkonDrawArraysTV

# Function: __glkonDrawArraysNTV
# Declared: Line 130 (Source lines: 130-155)
# Address: 0x0da71650 - 0x0da71808 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysNTV
__glkonDrawArraysNTV:
    # Line 130
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 131
    lw	$s1,4112($zero)
    # Line 133
    lw	$t8,5124($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 130
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 135
    lw	$s7,5204($s1)
    sd	$s4,88($sp)
    # Line 130
    sd	$s2,0($sp)
    # Line 133
    mflo	$s2
    nop
    nop
    # Line 135
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 130
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 137
    lw	$s6,5100($s1)
    # Line 130
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 135
    mflo	$t8
    nop
    nop
    # Line 137
    mult	$s6,$a1
    # Line 130
    sd	$s0,24($sp)
    # Line 134
    lui	$s5,0x1
    # Line 135
    lw	$s3,5192($s1)
    # Line 130
    lui	$s7,0x2
    # Line 134
    addu	$s5,$s1,$s5
    # Line 133
    lw	$s0,5116($s1)
    # Line 130
    addiu	$s7,$s7,-1656
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 136
    lw	$s7,-30016($s5)
    # Line 141
    move	$s4,$zero
    # Line 133
    addu	$s0,$s0,$s2
    # Line 137
    lw	$s2,5088($s1)
    # Line 138
    lw	$s6,-30032($s5)
    # Line 135
    addu	$s3,$s3,$t8
    # Line 137
    mflo	$t8
    # Line 134
    lw	$s5,-30028($s5)
    # Line 138
    beqz	$a2,.L0da71768
    # Line 137
    addu	$s2,$s2,$t8
    # Line 141
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da71768
    sw	$t9,16384($zero)
    nop
.L0da71720:
    # Line 144
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5124($s1)
    # Line 145
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 144
    addu	$s0,$v0,$s0
    # Line 145
    lw	$v1,5204($s1)
    # Line 146
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 145
    addu	$s3,$v1,$s3
    # Line 143
    ld	$a1,72($sp)
    # Line 146
    lw	$a0,5100($s1)
    # Line 143
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da71720
    # Line 146
    addu	$s2,$a0,$s2
.L0da71768:
    # Line 143
    beqz	$s8,.L0da717d4
    # Line 149
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da717d4
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da71790:
    # Line 151
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5124($s1)
    # Line 152
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 151
    addu	$s0,$a4,$s0
    # Line 152
    lw	$a5,5204($s1)
    # Line 153
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 152
    addu	$s3,$a5,$s3
    # Line 153
    lw	$a6,5100($s1)
    # Line 150
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da71790
    # Line 153
    addu	$s2,$a6,$s2
.L0da717d4:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 155
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysNTV

# Function: __glkonDrawArraysCTV
# Declared: Line 157 (Source lines: 157-182)
# Address: 0x0da71810 - 0x0da719c8 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysCTV
__glkonDrawArraysCTV:
    # Line 157
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 158
    lw	$s1,4112($zero)
    # Line 160
    lw	$t8,5152($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 157
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 162
    lw	$s7,5204($s1)
    sd	$s4,88($sp)
    # Line 157
    sd	$s2,0($sp)
    # Line 160
    mflo	$s2
    nop
    nop
    # Line 162
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 157
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 164
    lw	$s6,5100($s1)
    # Line 157
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 162
    mflo	$t8
    nop
    nop
    # Line 164
    mult	$s6,$a1
    # Line 157
    sd	$s0,24($sp)
    # Line 161
    lui	$s5,0x1
    # Line 162
    lw	$s3,5192($s1)
    # Line 157
    lui	$s7,0x2
    # Line 161
    addu	$s5,$s1,$s5
    # Line 160
    lw	$s0,5140($s1)
    # Line 157
    addiu	$s7,$s7,-2104
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 163
    lw	$s7,-30016($s5)
    # Line 168
    move	$s4,$zero
    # Line 160
    addu	$s0,$s0,$s2
    # Line 164
    lw	$s2,5088($s1)
    # Line 165
    lw	$s6,-30032($s5)
    # Line 162
    addu	$s3,$s3,$t8
    # Line 164
    mflo	$t8
    # Line 161
    lw	$s5,-30024($s5)
    # Line 165
    beqz	$a2,.L0da71928
    # Line 164
    addu	$s2,$s2,$t8
    # Line 168
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da71928
    sw	$t9,16384($zero)
    nop
.L0da718e0:
    # Line 171
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5152($s1)
    # Line 172
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 171
    addu	$s0,$v0,$s0
    # Line 172
    lw	$v1,5204($s1)
    # Line 173
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 172
    addu	$s3,$v1,$s3
    # Line 170
    ld	$a1,72($sp)
    # Line 173
    lw	$a0,5100($s1)
    # Line 170
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da718e0
    # Line 173
    addu	$s2,$a0,$s2
.L0da71928:
    # Line 170
    beqz	$s8,.L0da71994
    # Line 176
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da71994
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da71950:
    # Line 178
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5152($s1)
    # Line 179
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 178
    addu	$s0,$a4,$s0
    # Line 179
    lw	$a5,5204($s1)
    # Line 180
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 179
    addu	$s3,$a5,$s3
    # Line 180
    lw	$a6,5100($s1)
    # Line 177
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da71950
    # Line 180
    addu	$s2,$a6,$s2
.L0da71994:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 182
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysCTV

# Function: __glkonDrawArraysNCTV
# Declared: Line 184 (Source lines: 184-213)
# Address: 0x0da719d0 - 0x0da71be0 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysNCTV
__glkonDrawArraysNCTV:
    # Line 184
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 185
    lw	$s0,4112($zero)
    # Line 184
    sd	$s8,56($sp)
    # Line 187
    lw	$s8,5124($s0)
    mult	$s8,$a1
    # Line 184
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 189
    lw	$t8,5152($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 187
    mflo	$at
    nop
    nop
    # Line 189
    mult	$t8,$a1
    # Line 184
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 191
    lw	$s7,5204($s0)
    # Line 184
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 189
    mflo	$s3
    nop
    nop
    # Line 191
    mult	$s7,$a1
    # Line 184
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 188
    lui	$s6,0x1
    # Line 187
    lw	$s2,5116($s0)
    # Line 184
    addiu	$v0,$v0,-2552
    # Line 188
    addu	$s6,$s0,$s6
    # Line 193
    lw	$v1,5100($s0)
    # Line 184
    addu	$gp,$t9,$v0
    # Line 190
    lw	$t9,-30024($s6)
    sd	$t9,88($sp)
    # Line 191
    mflo	$t8
    nop
    nop
    # Line 193
    mult	$v1,$a1
    # Line 192
    lw	$s8,-30016($s6)
    # Line 191
    lw	$s4,5192($s0)
    # Line 189
    lw	$s1,5140($s0)
    # Line 187
    addu	$s2,$s2,$at
    # Line 197
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 189
    addu	$s1,$s1,$s3
    # Line 193
    lw	$s3,5088($s0)
    # Line 194
    lw	$s7,-30032($s6)
    # Line 191
    addu	$s4,$s4,$t8
    # Line 193
    mflo	$t8
    # Line 188
    lw	$s6,-30028($s6)
    # Line 194
    beqz	$a2,.L0da71b1c
    # Line 193
    addu	$s3,$s3,$t8
    # Line 197
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da71b1c
    sw	$ra,16384($zero)
    nop
.L0da71ac0:
    # Line 200
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 201
    ld	$t9,88($sp)
    # Line 200
    lw	$v1,5124($s0)
    # Line 201
    move	$a0,$s1
    jalr	$t9
    # Line 200
    addu	$s2,$v1,$s2
    # Line 201
    lw	$a0,5152($s0)
    # Line 202
    move	$t9,$s8
    # Line 201
    addu	$s1,$a0,$s1
    # Line 202
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5204($s0)
    # Line 203
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 202
    addu	$s4,$a1,$s4
    # Line 199
    ld	$a3,72($sp)
    # Line 203
    lw	$a2,5100($s0)
    # Line 199
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da71ac0
    # Line 203
    addu	$s3,$a2,$s3
.L0da71b1c:
    # Line 199
    ld	$a4,80($sp)
    # Line 206
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 199
    beqz	$a4,.L0da71bac
    # Line 206
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da71bac
    sw	$a5,16384($zero)
    nop
.L0da71b50:
    # Line 208
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 209
    ld	$t9,88($sp)
    # Line 208
    lw	$a7,5124($s0)
    # Line 209
    move	$a0,$s1
    jalr	$t9
    # Line 208
    addu	$s2,$a7,$s2
    # Line 209
    lw	$t0,5152($s0)
    # Line 210
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 209
    addu	$s1,$t0,$s1
    # Line 210
    lw	$t1,5204($s0)
    # Line 211
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 210
    addu	$s4,$t1,$s4
    # Line 207
    ld	$t3,80($sp)
    # Line 211
    lw	$t2,5100($s0)
    # Line 207
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da71b50
    # Line 211
    addu	$s3,$t2,$s3
.L0da71bac:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 213
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysNCTV

# Function: __glkonDrawArraysIV
# Declared: Line 215 (Source lines: 215-236)
# Address: 0x0da71be0 - 0x0da71d3c (Size: 348 bytes, Frame: 208)
.ent __glkonDrawArraysIV
__glkonDrawArraysIV:
    # Line 215
    addiu	$sp,$sp,-80
    sd	$s3,0($sp)
    # Line 216
    lw	$s3,4112($zero)
    # Line 215
    sd	$s7,48($sp)
    # Line 218
    lw	$s7,5176($s3)
    mult	$s7,$a1
    sd	$ra,72($sp)
    sd	$gp,56($sp)
    # Line 215
    sd	$s6,8($sp)
    # Line 220
    lw	$s6,5100($s3)
    sd	$s2,64($sp)
    # Line 215
    sd	$s1,32($sp)
    # Line 218
    mflo	$t8
    nop
    nop
    # Line 220
    mult	$s6,$a1
    # Line 215
    sd	$s5,40($sp)
    # Line 224
    move	$s2,$zero
    # Line 215
    lui	$s5,0x2
    sd	$s4,16($sp)
    # Line 219
    lui	$s4,0x1
    # Line 215
    addiu	$s5,$s5,-3080
    sd	$s0,24($sp)
    addu	$gp,$t9,$s5
    # Line 219
    addu	$s4,$s3,$s4
    # Line 218
    lw	$s0,5168($s3)
    # Line 220
    lw	$s1,5088($s3)
    # Line 215
    move	$s7,$a2
    move	$s6,$a3
    # Line 221
    lw	$s5,-30032($s4)
    # Line 218
    addu	$s0,$s0,$t8
    # Line 220
    mflo	$t8
    # Line 219
    lw	$s4,-30020($s4)
    # Line 221
    beqz	$a2,.L0da71cb0
    # Line 220
    addu	$s1,$s1,$t8
    # Line 224
    addu	$t9,$a2,$a2
    li	$t8,419
    subu	$t8,$t8,$t9
    blez	$a2,.L0da71cb0
    sw	$t8,16384($zero)
.L0da71c80:
    # Line 227
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$ra,5176($s3)
    # Line 228
    move	$t9,$s5
    # Line 227
    addu	$s0,$ra,$s0
    # Line 228
    jalr	$t9
    move	$a0,$s1
    lw	$at,5100($s3)
    # Line 226
    addiu	$s2,$s2,1
    bne	$s7,$s2,.L0da71c80
    # Line 228
    addu	$s1,$at,$s1
.L0da71cb0:
    # Line 231
    move	$s2,$zero
    # Line 226
    beqz	$s6,.L0da71d10
    ld	$s7,48($sp)
    # Line 231
    lui	$v0,0xdead
    li	$v1,386
    sw	$v1,16384($zero)
    sw	$s6,16384($zero)
    ori	$v0,$v0,0xbeef
    sw	$v0,16384($zero)
    blez	$s6,.L0da71d10
    sw	$v0,16384($zero)
    nop
.L0da71ce0:
    # Line 233
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$a0,5176($s3)
    # Line 234
    move	$t9,$s5
    # Line 233
    addu	$s0,$a0,$s0
    # Line 234
    jalr	$t9
    move	$a0,$s1
    lw	$a1,5100($s3)
    # Line 232
    addiu	$s2,$s2,1
    bne	$s6,$s2,.L0da71ce0
    # Line 234
    addu	$s1,$a1,$s1
.L0da71d10:
    ld	$s2,64($sp)
    ld	$s3,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$ra,72($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 236
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glkonDrawArraysIV

# Function: __glkonDrawArraysNIV
# Declared: Line 238 (Source lines: 238-263)
# Address: 0x0da71d40 - 0x0da71ef8 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysNIV
__glkonDrawArraysNIV:
    # Line 238
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 239
    lw	$s1,4112($zero)
    # Line 241
    lw	$t8,5124($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 238
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 243
    lw	$s7,5176($s1)
    sd	$s4,88($sp)
    # Line 238
    sd	$s2,0($sp)
    # Line 241
    mflo	$s2
    nop
    nop
    # Line 243
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 238
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 245
    lw	$s6,5100($s1)
    # Line 238
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 243
    mflo	$t8
    nop
    nop
    # Line 245
    mult	$s6,$a1
    # Line 238
    sd	$s0,24($sp)
    # Line 242
    lui	$s5,0x1
    # Line 243
    lw	$s3,5168($s1)
    # Line 238
    lui	$s7,0x2
    # Line 242
    addu	$s5,$s1,$s5
    # Line 241
    lw	$s0,5116($s1)
    # Line 238
    addiu	$s7,$s7,-3432
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 244
    lw	$s7,-30020($s5)
    # Line 249
    move	$s4,$zero
    # Line 241
    addu	$s0,$s0,$s2
    # Line 245
    lw	$s2,5088($s1)
    # Line 246
    lw	$s6,-30032($s5)
    # Line 243
    addu	$s3,$s3,$t8
    # Line 245
    mflo	$t8
    # Line 242
    lw	$s5,-30028($s5)
    # Line 246
    beqz	$a2,.L0da71e58
    # Line 245
    addu	$s2,$s2,$t8
    # Line 249
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da71e58
    sw	$t9,16384($zero)
    nop
.L0da71e10:
    # Line 252
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5124($s1)
    # Line 253
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 252
    addu	$s0,$v0,$s0
    # Line 253
    lw	$v1,5176($s1)
    # Line 254
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 253
    addu	$s3,$v1,$s3
    # Line 251
    ld	$a1,72($sp)
    # Line 254
    lw	$a0,5100($s1)
    # Line 251
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da71e10
    # Line 254
    addu	$s2,$a0,$s2
.L0da71e58:
    # Line 251
    beqz	$s8,.L0da71ec4
    # Line 257
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da71ec4
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da71e80:
    # Line 259
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5124($s1)
    # Line 260
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 259
    addu	$s0,$a4,$s0
    # Line 260
    lw	$a5,5176($s1)
    # Line 261
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 260
    addu	$s3,$a5,$s3
    # Line 261
    lw	$a6,5100($s1)
    # Line 258
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da71e80
    # Line 261
    addu	$s2,$a6,$s2
.L0da71ec4:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 263
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysNIV

# Function: __glkonDrawArraysCIV
# Declared: Line 265 (Source lines: 265-290)
# Address: 0x0da71f00 - 0x0da720b8 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysCIV
__glkonDrawArraysCIV:
    # Line 265
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 266
    lw	$s1,4112($zero)
    # Line 268
    lw	$t8,5152($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 265
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 270
    lw	$s7,5176($s1)
    sd	$s4,88($sp)
    # Line 265
    sd	$s2,0($sp)
    # Line 268
    mflo	$s2
    nop
    nop
    # Line 270
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 265
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 272
    lw	$s6,5100($s1)
    # Line 265
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 270
    mflo	$t8
    nop
    nop
    # Line 272
    mult	$s6,$a1
    # Line 265
    sd	$s0,24($sp)
    # Line 269
    lui	$s5,0x1
    # Line 270
    lw	$s3,5168($s1)
    # Line 265
    lui	$s7,0x2
    # Line 269
    addu	$s5,$s1,$s5
    # Line 268
    lw	$s0,5140($s1)
    # Line 265
    addiu	$s7,$s7,-3880
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 271
    lw	$s7,-30020($s5)
    # Line 276
    move	$s4,$zero
    # Line 268
    addu	$s0,$s0,$s2
    # Line 272
    lw	$s2,5088($s1)
    # Line 273
    lw	$s6,-30032($s5)
    # Line 270
    addu	$s3,$s3,$t8
    # Line 272
    mflo	$t8
    # Line 269
    lw	$s5,-30024($s5)
    # Line 273
    beqz	$a2,.L0da72018
    # Line 272
    addu	$s2,$s2,$t8
    # Line 276
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da72018
    sw	$t9,16384($zero)
    nop
.L0da71fd0:
    # Line 279
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5152($s1)
    # Line 280
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 279
    addu	$s0,$v0,$s0
    # Line 280
    lw	$v1,5176($s1)
    # Line 281
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 280
    addu	$s3,$v1,$s3
    # Line 278
    ld	$a1,72($sp)
    # Line 281
    lw	$a0,5100($s1)
    # Line 278
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da71fd0
    # Line 281
    addu	$s2,$a0,$s2
.L0da72018:
    # Line 278
    beqz	$s8,.L0da72084
    # Line 284
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da72084
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da72040:
    # Line 286
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5152($s1)
    # Line 287
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 286
    addu	$s0,$a4,$s0
    # Line 287
    lw	$a5,5176($s1)
    # Line 288
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 287
    addu	$s3,$a5,$s3
    # Line 288
    lw	$a6,5100($s1)
    # Line 285
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da72040
    # Line 288
    addu	$s2,$a6,$s2
.L0da72084:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 290
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysCIV

# Function: __glkonDrawArraysNCIV
# Declared: Line 292 (Source lines: 292-321)
# Address: 0x0da720c0 - 0x0da722d0 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysNCIV
__glkonDrawArraysNCIV:
    # Line 292
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 293
    lw	$s0,4112($zero)
    # Line 292
    sd	$s8,56($sp)
    # Line 295
    lw	$s8,5124($s0)
    mult	$s8,$a1
    # Line 292
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 297
    lw	$t8,5152($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 295
    mflo	$at
    nop
    nop
    # Line 297
    mult	$t8,$a1
    # Line 292
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 299
    lw	$s7,5176($s0)
    # Line 292
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 297
    mflo	$s3
    nop
    nop
    # Line 299
    mult	$s7,$a1
    # Line 292
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 296
    lui	$s6,0x1
    # Line 295
    lw	$s2,5116($s0)
    # Line 292
    addiu	$v0,$v0,-4328
    # Line 296
    addu	$s6,$s0,$s6
    # Line 301
    lw	$v1,5100($s0)
    # Line 292
    addu	$gp,$t9,$v0
    # Line 298
    lw	$t9,-30024($s6)
    sd	$t9,88($sp)
    # Line 299
    mflo	$t8
    nop
    nop
    # Line 301
    mult	$v1,$a1
    # Line 300
    lw	$s8,-30020($s6)
    # Line 299
    lw	$s4,5168($s0)
    # Line 297
    lw	$s1,5140($s0)
    # Line 295
    addu	$s2,$s2,$at
    # Line 305
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 297
    addu	$s1,$s1,$s3
    # Line 301
    lw	$s3,5088($s0)
    # Line 302
    lw	$s7,-30032($s6)
    # Line 299
    addu	$s4,$s4,$t8
    # Line 301
    mflo	$t8
    # Line 296
    lw	$s6,-30028($s6)
    # Line 302
    beqz	$a2,.L0da7220c
    # Line 301
    addu	$s3,$s3,$t8
    # Line 305
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da7220c
    sw	$ra,16384($zero)
    nop
.L0da721b0:
    # Line 308
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 309
    ld	$t9,88($sp)
    # Line 308
    lw	$v1,5124($s0)
    # Line 309
    move	$a0,$s1
    jalr	$t9
    # Line 308
    addu	$s2,$v1,$s2
    # Line 309
    lw	$a0,5152($s0)
    # Line 310
    move	$t9,$s8
    # Line 309
    addu	$s1,$a0,$s1
    # Line 310
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5176($s0)
    # Line 311
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 310
    addu	$s4,$a1,$s4
    # Line 307
    ld	$a3,72($sp)
    # Line 311
    lw	$a2,5100($s0)
    # Line 307
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da721b0
    # Line 311
    addu	$s3,$a2,$s3
.L0da7220c:
    # Line 307
    ld	$a4,80($sp)
    # Line 314
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 307
    beqz	$a4,.L0da7229c
    # Line 314
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da7229c
    sw	$a5,16384($zero)
    nop
.L0da72240:
    # Line 316
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 317
    ld	$t9,88($sp)
    # Line 316
    lw	$a7,5124($s0)
    # Line 317
    move	$a0,$s1
    jalr	$t9
    # Line 316
    addu	$s2,$a7,$s2
    # Line 317
    lw	$t0,5152($s0)
    # Line 318
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 317
    addu	$s1,$t0,$s1
    # Line 318
    lw	$t1,5176($s0)
    # Line 319
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 318
    addu	$s4,$t1,$s4
    # Line 315
    ld	$t3,80($sp)
    # Line 319
    lw	$t2,5100($s0)
    # Line 315
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da72240
    # Line 319
    addu	$s3,$t2,$s3
.L0da7229c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 321
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysNCIV

# Function: __glkonDrawArraysTIV
# Declared: Line 323 (Source lines: 323-348)
# Address: 0x0da722d0 - 0x0da72488 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysTIV
__glkonDrawArraysTIV:
    # Line 323
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 324
    lw	$s1,4112($zero)
    # Line 326
    lw	$t8,5204($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 323
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 328
    lw	$s7,5176($s1)
    sd	$s4,88($sp)
    # Line 323
    sd	$s2,0($sp)
    # Line 326
    mflo	$s2
    nop
    nop
    # Line 328
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 323
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 330
    lw	$s6,5100($s1)
    # Line 323
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 328
    mflo	$t8
    nop
    nop
    # Line 330
    mult	$s6,$a1
    # Line 323
    sd	$s0,24($sp)
    # Line 327
    lui	$s5,0x1
    # Line 328
    lw	$s3,5168($s1)
    # Line 323
    lui	$s7,0x2
    # Line 327
    addu	$s5,$s1,$s5
    # Line 326
    lw	$s0,5192($s1)
    # Line 323
    addiu	$s7,$s7,-4856
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 329
    lw	$s7,-30020($s5)
    # Line 334
    move	$s4,$zero
    # Line 326
    addu	$s0,$s0,$s2
    # Line 330
    lw	$s2,5088($s1)
    # Line 331
    lw	$s6,-30032($s5)
    # Line 328
    addu	$s3,$s3,$t8
    # Line 330
    mflo	$t8
    # Line 327
    lw	$s5,-30016($s5)
    # Line 331
    beqz	$a2,.L0da723e8
    # Line 330
    addu	$s2,$s2,$t8
    # Line 334
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da723e8
    sw	$t9,16384($zero)
    nop
.L0da723a0:
    # Line 337
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5204($s1)
    # Line 338
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 337
    addu	$s0,$v0,$s0
    # Line 338
    lw	$v1,5176($s1)
    # Line 339
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 338
    addu	$s3,$v1,$s3
    # Line 336
    ld	$a1,72($sp)
    # Line 339
    lw	$a0,5100($s1)
    # Line 336
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da723a0
    # Line 339
    addu	$s2,$a0,$s2
.L0da723e8:
    # Line 336
    beqz	$s8,.L0da72454
    # Line 342
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da72454
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da72410:
    # Line 344
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5204($s1)
    # Line 345
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 344
    addu	$s0,$a4,$s0
    # Line 345
    lw	$a5,5176($s1)
    # Line 346
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 345
    addu	$s3,$a5,$s3
    # Line 346
    lw	$a6,5100($s1)
    # Line 343
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da72410
    # Line 346
    addu	$s2,$a6,$s2
.L0da72454:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 348
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysTIV

# Function: __glkonDrawArraysNTIV
# Declared: Line 350 (Source lines: 350-379)
# Address: 0x0da72490 - 0x0da726a0 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysNTIV
__glkonDrawArraysNTIV:
    # Line 350
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 351
    lw	$s0,4112($zero)
    # Line 350
    sd	$s8,56($sp)
    # Line 353
    lw	$s8,5124($s0)
    mult	$s8,$a1
    # Line 350
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 355
    lw	$t8,5204($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 353
    mflo	$at
    nop
    nop
    # Line 355
    mult	$t8,$a1
    # Line 350
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 357
    lw	$s7,5176($s0)
    # Line 350
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 355
    mflo	$s3
    nop
    nop
    # Line 357
    mult	$s7,$a1
    # Line 350
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 354
    lui	$s6,0x1
    # Line 353
    lw	$s2,5116($s0)
    # Line 350
    addiu	$v0,$v0,-5304
    # Line 354
    addu	$s6,$s0,$s6
    # Line 359
    lw	$v1,5100($s0)
    # Line 350
    addu	$gp,$t9,$v0
    # Line 356
    lw	$t9,-30016($s6)
    sd	$t9,88($sp)
    # Line 357
    mflo	$t8
    nop
    nop
    # Line 359
    mult	$v1,$a1
    # Line 358
    lw	$s8,-30020($s6)
    # Line 357
    lw	$s4,5168($s0)
    # Line 355
    lw	$s1,5192($s0)
    # Line 353
    addu	$s2,$s2,$at
    # Line 363
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 355
    addu	$s1,$s1,$s3
    # Line 359
    lw	$s3,5088($s0)
    # Line 360
    lw	$s7,-30032($s6)
    # Line 357
    addu	$s4,$s4,$t8
    # Line 359
    mflo	$t8
    # Line 354
    lw	$s6,-30028($s6)
    # Line 360
    beqz	$a2,.L0da725dc
    # Line 359
    addu	$s3,$s3,$t8
    # Line 363
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da725dc
    sw	$ra,16384($zero)
    nop
.L0da72580:
    # Line 366
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 367
    ld	$t9,88($sp)
    # Line 366
    lw	$v1,5124($s0)
    # Line 367
    move	$a0,$s1
    jalr	$t9
    # Line 366
    addu	$s2,$v1,$s2
    # Line 367
    lw	$a0,5204($s0)
    # Line 368
    move	$t9,$s8
    # Line 367
    addu	$s1,$a0,$s1
    # Line 368
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5176($s0)
    # Line 369
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 368
    addu	$s4,$a1,$s4
    # Line 365
    ld	$a3,72($sp)
    # Line 369
    lw	$a2,5100($s0)
    # Line 365
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da72580
    # Line 369
    addu	$s3,$a2,$s3
.L0da725dc:
    # Line 365
    ld	$a4,80($sp)
    # Line 372
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 365
    beqz	$a4,.L0da7266c
    # Line 372
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da7266c
    sw	$a5,16384($zero)
    nop
.L0da72610:
    # Line 374
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 375
    ld	$t9,88($sp)
    # Line 374
    lw	$a7,5124($s0)
    # Line 375
    move	$a0,$s1
    jalr	$t9
    # Line 374
    addu	$s2,$a7,$s2
    # Line 375
    lw	$t0,5204($s0)
    # Line 376
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 375
    addu	$s1,$t0,$s1
    # Line 376
    lw	$t1,5176($s0)
    # Line 377
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 376
    addu	$s4,$t1,$s4
    # Line 373
    ld	$t3,80($sp)
    # Line 377
    lw	$t2,5100($s0)
    # Line 373
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da72610
    # Line 377
    addu	$s3,$t2,$s3
.L0da7266c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 379
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysNTIV

# Function: __glkonDrawArraysCTIV
# Declared: Line 381 (Source lines: 381-410)
# Address: 0x0da726a0 - 0x0da728b0 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysCTIV
__glkonDrawArraysCTIV:
    # Line 381
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 382
    lw	$s0,4112($zero)
    # Line 381
    sd	$s8,56($sp)
    # Line 384
    lw	$s8,5152($s0)
    mult	$s8,$a1
    # Line 381
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 386
    lw	$t8,5204($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 384
    mflo	$at
    nop
    nop
    # Line 386
    mult	$t8,$a1
    # Line 381
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 388
    lw	$s7,5176($s0)
    # Line 381
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 386
    mflo	$s3
    nop
    nop
    # Line 388
    mult	$s7,$a1
    # Line 381
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 385
    lui	$s6,0x1
    # Line 384
    lw	$s2,5140($s0)
    # Line 381
    addiu	$v0,$v0,-5832
    # Line 385
    addu	$s6,$s0,$s6
    # Line 390
    lw	$v1,5100($s0)
    # Line 381
    addu	$gp,$t9,$v0
    # Line 387
    lw	$t9,-30016($s6)
    sd	$t9,88($sp)
    # Line 388
    mflo	$t8
    nop
    nop
    # Line 390
    mult	$v1,$a1
    # Line 389
    lw	$s8,-30020($s6)
    # Line 388
    lw	$s4,5168($s0)
    # Line 386
    lw	$s1,5192($s0)
    # Line 384
    addu	$s2,$s2,$at
    # Line 394
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 386
    addu	$s1,$s1,$s3
    # Line 390
    lw	$s3,5088($s0)
    # Line 391
    lw	$s7,-30032($s6)
    # Line 388
    addu	$s4,$s4,$t8
    # Line 390
    mflo	$t8
    # Line 385
    lw	$s6,-30024($s6)
    # Line 391
    beqz	$a2,.L0da727ec
    # Line 390
    addu	$s3,$s3,$t8
    # Line 394
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da727ec
    sw	$ra,16384($zero)
    nop
.L0da72790:
    # Line 397
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 398
    ld	$t9,88($sp)
    # Line 397
    lw	$v1,5152($s0)
    # Line 398
    move	$a0,$s1
    jalr	$t9
    # Line 397
    addu	$s2,$v1,$s2
    # Line 398
    lw	$a0,5204($s0)
    # Line 399
    move	$t9,$s8
    # Line 398
    addu	$s1,$a0,$s1
    # Line 399
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5176($s0)
    # Line 400
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 399
    addu	$s4,$a1,$s4
    # Line 396
    ld	$a3,72($sp)
    # Line 400
    lw	$a2,5100($s0)
    # Line 396
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da72790
    # Line 400
    addu	$s3,$a2,$s3
.L0da727ec:
    # Line 396
    ld	$a4,80($sp)
    # Line 403
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 396
    beqz	$a4,.L0da7287c
    # Line 403
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da7287c
    sw	$a5,16384($zero)
    nop
.L0da72820:
    # Line 405
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 406
    ld	$t9,88($sp)
    # Line 405
    lw	$a7,5152($s0)
    # Line 406
    move	$a0,$s1
    jalr	$t9
    # Line 405
    addu	$s2,$a7,$s2
    # Line 406
    lw	$t0,5204($s0)
    # Line 407
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 406
    addu	$s1,$t0,$s1
    # Line 407
    lw	$t1,5176($s0)
    # Line 408
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 407
    addu	$s4,$t1,$s4
    # Line 404
    ld	$t3,80($sp)
    # Line 408
    lw	$t2,5100($s0)
    # Line 404
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da72820
    # Line 408
    addu	$s3,$t2,$s3
.L0da7287c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 410
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysCTIV

# Function: __glkonDrawArraysNCTIV
# Declared: Line 412 (Source lines: 412-445)
# Address: 0x0da728b0 - 0x0da72b14 (Size: 612 bytes, Frame: 128)
.ent __glkonDrawArraysNCTIV
__glkonDrawArraysNCTIV:
    # Line 412
    addiu	$sp,$sp,-128
    sd	$s0,24($sp)
    # Line 413
    lw	$s0,4112($zero)
    # Line 415
    lw	$v0,5124($s0)
    mult	$v0,$a1
    # Line 412
    sd	$a3,80($sp)
    sd	$ra,120($sp)
    # Line 417
    lw	$at,5152($s0)
    sd	$s6,112($sp)
    # Line 412
    sd	$s4,16($sp)
    # Line 415
    mflo	$s4
    nop
    nop
    # Line 417
    mult	$at,$a1
    sd	$gp,64($sp)
    # Line 412
    sd	$a2,72($sp)
    sd	$s8,56($sp)
    # Line 419
    lw	$s8,5204($s0)
    # Line 412
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 417
    mflo	$s3
    nop
    nop
    # Line 419
    mult	$s8,$a1
    # Line 412
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 416
    lui	$s7,0x1
    # Line 419
    lw	$s5,5192($s0)
    # Line 416
    addu	$s7,$s0,$s7
    # Line 421
    lw	$t8,5176($s0)
    # Line 420
    lw	$a4,-30016($s7)
    # Line 422
    lw	$a5,-30020($s7)
    # Line 419
    mflo	$at
    nop
    nop
    # Line 421
    mult	$t8,$a1
    # Line 422
    sd	$a5,104($sp)
    # Line 420
    sd	$a4,96($sp)
    # Line 412
    sd	$s2,0($sp)
    lui	$v0,0x2
    # Line 423
    lw	$a0,5100($s0)
    # Line 417
    lw	$s1,5140($s0)
    # Line 412
    addiu	$v0,$v0,-6360
    # Line 415
    lw	$s2,5116($s0)
    # Line 421
    mflo	$t8
    nop
    nop
    # Line 423
    mult	$a0,$a1
    # Line 412
    addu	$gp,$t9,$v0
    # Line 418
    lw	$t9,-30024($s7)
    sd	$t9,88($sp)
    # Line 415
    addu	$s2,$s2,$s4
    # Line 421
    lw	$s4,5168($s0)
    # Line 427
    move	$s6,$zero
    # Line 424
    lw	$s8,-30032($s7)
    # Line 417
    addu	$s1,$s1,$s3
    # Line 423
    lw	$s3,5088($s0)
    # Line 419
    addu	$s5,$s5,$at
    # Line 416
    lw	$s7,-30028($s7)
    # Line 421
    addu	$s4,$s4,$t8
    # Line 423
    mflo	$t8
    # Line 427
    ld	$a0,72($sp)
    # Line 424
    beqz	$a2,.L0da72a40
    # Line 423
    addu	$s3,$s3,$t8
    # Line 427
    li	$v1,417
    sll	$a1,$a0,0x2
    addu	$a1,$a1,$a0
    subu	$v1,$v1,$a1
    blez	$a0,.L0da72a40
    sw	$v1,16384($zero)
    nop
    nop
.L0da729d0:
    # Line 430
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 431
    ld	$t9,88($sp)
    # Line 430
    lw	$a2,5124($s0)
    # Line 431
    move	$a0,$s1
    jalr	$t9
    # Line 430
    addu	$s2,$a2,$s2
    # Line 432
    ld	$t9,96($sp)
    # Line 431
    lw	$a3,5152($s0)
    # Line 432
    move	$a0,$s5
    jalr	$t9
    # Line 431
    addu	$s1,$a3,$s1
    # Line 433
    ld	$t9,104($sp)
    # Line 432
    lw	$a4,5204($s0)
    # Line 433
    move	$a0,$s4
    jalr	$t9
    # Line 432
    addu	$s5,$a4,$s5
    # Line 433
    lw	$a5,5176($s0)
    # Line 434
    move	$t9,$s8
    move	$a0,$s3
    jalr	$t9
    # Line 433
    addu	$s4,$a5,$s4
    # Line 429
    ld	$a7,72($sp)
    # Line 434
    lw	$a6,5100($s0)
    # Line 429
    addiu	$s6,$s6,1
    bne	$a7,$s6,.L0da729d0
    # Line 434
    addu	$s3,$a6,$s3
.L0da72a40:
    # Line 429
    ld	$t0,80($sp)
    # Line 437
    li	$t2,386
    move	$s6,$zero
    lui	$t1,0xdead
    # Line 429
    beqz	$t0,.L0da72ae0
    # Line 437
    ori	$t1,$t1,0xbeef
    sw	$t2,16384($zero)
    ld	$t2,80($sp)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    blez	$t2,.L0da72ae0
    sw	$t1,16384($zero)
.L0da72a70:
    # Line 439
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 440
    ld	$t9,88($sp)
    # Line 439
    lw	$t3,5124($s0)
    # Line 440
    move	$a0,$s1
    jalr	$t9
    # Line 439
    addu	$s2,$t3,$s2
    # Line 441
    ld	$t9,96($sp)
    # Line 440
    lw	$t8,5152($s0)
    # Line 441
    move	$a0,$s5
    jalr	$t9
    # Line 440
    addu	$s1,$t8,$s1
    # Line 441
    lw	$t9,5204($s0)
    addu	$s5,$t9,$s5
    # Line 442
    ld	$t9,104($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5176($s0)
    # Line 443
    move	$t9,$s8
    # Line 442
    addu	$s4,$ra,$s4
    # Line 443
    jalr	$t9
    move	$a0,$s3
    # Line 438
    ld	$v0,80($sp)
    # Line 443
    lw	$at,5100($s0)
    # Line 438
    addiu	$s6,$s6,1
    bne	$v0,$s6,.L0da72a70
    # Line 443
    addu	$s3,$at,$s3
.L0da72ae0:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,112($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,120($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 445
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glkonDrawArraysNCTIV

# Function: __glkonDrawArraysEV
# Declared: Line 447 (Source lines: 447-468)
# Address: 0x0da72b20 - 0x0da72c7c (Size: 348 bytes, Frame: 208)
.ent __glkonDrawArraysEV
__glkonDrawArraysEV:
    # Line 447
    addiu	$sp,$sp,-80
    sd	$s3,0($sp)
    # Line 448
    lw	$s3,4112($zero)
    # Line 447
    sd	$s7,48($sp)
    # Line 450
    lw	$s7,5224($s3)
    mult	$s7,$a1
    sd	$ra,72($sp)
    sd	$gp,56($sp)
    # Line 447
    sd	$s6,8($sp)
    # Line 452
    lw	$s6,5100($s3)
    sd	$s2,64($sp)
    # Line 447
    sd	$s1,32($sp)
    # Line 450
    mflo	$t8
    nop
    nop
    # Line 452
    mult	$s6,$a1
    # Line 447
    sd	$s5,40($sp)
    # Line 456
    move	$s2,$zero
    # Line 447
    lui	$s5,0x2
    sd	$s4,16($sp)
    # Line 451
    lui	$s4,0x1
    # Line 447
    addiu	$s5,$s5,-6984
    sd	$s0,24($sp)
    addu	$gp,$t9,$s5
    # Line 451
    addu	$s4,$s3,$s4
    # Line 450
    lw	$s0,5220($s3)
    # Line 452
    lw	$s1,5088($s3)
    # Line 447
    move	$s7,$a2
    move	$s6,$a3
    # Line 453
    lw	$s5,-30032($s4)
    # Line 450
    addu	$s0,$s0,$t8
    # Line 452
    mflo	$t8
    # Line 451
    lw	$s4,-30012($s4)
    # Line 453
    beqz	$a2,.L0da72bf0
    # Line 452
    addu	$s1,$s1,$t8
    # Line 456
    addu	$t9,$a2,$a2
    li	$t8,419
    subu	$t8,$t8,$t9
    blez	$a2,.L0da72bf0
    sw	$t8,16384($zero)
.L0da72bc0:
    # Line 459
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$ra,5224($s3)
    # Line 460
    move	$t9,$s5
    # Line 459
    addu	$s0,$ra,$s0
    # Line 460
    jalr	$t9
    move	$a0,$s1
    lw	$at,5100($s3)
    # Line 458
    addiu	$s2,$s2,1
    bne	$s7,$s2,.L0da72bc0
    # Line 460
    addu	$s1,$at,$s1
.L0da72bf0:
    # Line 463
    move	$s2,$zero
    # Line 458
    beqz	$s6,.L0da72c50
    ld	$s7,48($sp)
    # Line 463
    lui	$v0,0xdead
    li	$v1,386
    sw	$v1,16384($zero)
    sw	$s6,16384($zero)
    ori	$v0,$v0,0xbeef
    sw	$v0,16384($zero)
    blez	$s6,.L0da72c50
    sw	$v0,16384($zero)
    nop
.L0da72c20:
    # Line 465
    move	$t9,$s4
    jalr	$t9
    move	$a0,$s0
    lw	$a0,5224($s3)
    # Line 466
    move	$t9,$s5
    # Line 465
    addu	$s0,$a0,$s0
    # Line 466
    jalr	$t9
    move	$a0,$s1
    lw	$a1,5100($s3)
    # Line 464
    addiu	$s2,$s2,1
    bne	$s6,$s2,.L0da72c20
    # Line 466
    addu	$s1,$a1,$s1
.L0da72c50:
    ld	$s2,64($sp)
    ld	$s3,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$ra,72($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 468
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glkonDrawArraysEV

# Function: __glkonDrawArraysNEV
# Declared: Line 470 (Source lines: 470-495)
# Address: 0x0da72c80 - 0x0da72e38 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysNEV
__glkonDrawArraysNEV:
    # Line 470
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 471
    lw	$s1,4112($zero)
    # Line 473
    lw	$t8,5124($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 470
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 475
    lw	$s7,5224($s1)
    sd	$s4,88($sp)
    # Line 470
    sd	$s2,0($sp)
    # Line 473
    mflo	$s2
    nop
    nop
    # Line 475
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 470
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 477
    lw	$s6,5100($s1)
    # Line 470
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 475
    mflo	$t8
    nop
    nop
    # Line 477
    mult	$s6,$a1
    # Line 470
    sd	$s0,24($sp)
    # Line 474
    lui	$s5,0x1
    # Line 475
    lw	$s3,5220($s1)
    # Line 470
    lui	$s7,0x2
    # Line 474
    addu	$s5,$s1,$s5
    # Line 473
    lw	$s0,5116($s1)
    # Line 470
    addiu	$s7,$s7,-7336
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 476
    lw	$s7,-30012($s5)
    # Line 481
    move	$s4,$zero
    # Line 473
    addu	$s0,$s0,$s2
    # Line 477
    lw	$s2,5088($s1)
    # Line 478
    lw	$s6,-30032($s5)
    # Line 475
    addu	$s3,$s3,$t8
    # Line 477
    mflo	$t8
    # Line 474
    lw	$s5,-30028($s5)
    # Line 478
    beqz	$a2,.L0da72d98
    # Line 477
    addu	$s2,$s2,$t8
    # Line 481
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da72d98
    sw	$t9,16384($zero)
    nop
.L0da72d50:
    # Line 484
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5124($s1)
    # Line 485
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 484
    addu	$s0,$v0,$s0
    # Line 485
    lw	$v1,5224($s1)
    # Line 486
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 485
    addu	$s3,$v1,$s3
    # Line 483
    ld	$a1,72($sp)
    # Line 486
    lw	$a0,5100($s1)
    # Line 483
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da72d50
    # Line 486
    addu	$s2,$a0,$s2
.L0da72d98:
    # Line 483
    beqz	$s8,.L0da72e04
    # Line 489
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da72e04
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da72dc0:
    # Line 491
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5124($s1)
    # Line 492
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 491
    addu	$s0,$a4,$s0
    # Line 492
    lw	$a5,5224($s1)
    # Line 493
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 492
    addu	$s3,$a5,$s3
    # Line 493
    lw	$a6,5100($s1)
    # Line 490
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da72dc0
    # Line 493
    addu	$s2,$a6,$s2
.L0da72e04:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 495
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysNEV

# Function: __glkonDrawArraysCEV
# Declared: Line 497 (Source lines: 497-522)
# Address: 0x0da72e40 - 0x0da72ff8 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysCEV
__glkonDrawArraysCEV:
    # Line 497
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 498
    lw	$s1,4112($zero)
    # Line 500
    lw	$t8,5152($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 497
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 502
    lw	$s7,5224($s1)
    sd	$s4,88($sp)
    # Line 497
    sd	$s2,0($sp)
    # Line 500
    mflo	$s2
    nop
    nop
    # Line 502
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 497
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 504
    lw	$s6,5100($s1)
    # Line 497
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 502
    mflo	$t8
    nop
    nop
    # Line 504
    mult	$s6,$a1
    # Line 497
    sd	$s0,24($sp)
    # Line 501
    lui	$s5,0x1
    # Line 502
    lw	$s3,5220($s1)
    # Line 497
    lui	$s7,0x2
    # Line 501
    addu	$s5,$s1,$s5
    # Line 500
    lw	$s0,5140($s1)
    # Line 497
    addiu	$s7,$s7,-7784
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 503
    lw	$s7,-30012($s5)
    # Line 508
    move	$s4,$zero
    # Line 500
    addu	$s0,$s0,$s2
    # Line 504
    lw	$s2,5088($s1)
    # Line 505
    lw	$s6,-30032($s5)
    # Line 502
    addu	$s3,$s3,$t8
    # Line 504
    mflo	$t8
    # Line 501
    lw	$s5,-30024($s5)
    # Line 505
    beqz	$a2,.L0da72f58
    # Line 504
    addu	$s2,$s2,$t8
    # Line 508
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da72f58
    sw	$t9,16384($zero)
    nop
.L0da72f10:
    # Line 511
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5152($s1)
    # Line 512
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 511
    addu	$s0,$v0,$s0
    # Line 512
    lw	$v1,5224($s1)
    # Line 513
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 512
    addu	$s3,$v1,$s3
    # Line 510
    ld	$a1,72($sp)
    # Line 513
    lw	$a0,5100($s1)
    # Line 510
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da72f10
    # Line 513
    addu	$s2,$a0,$s2
.L0da72f58:
    # Line 510
    beqz	$s8,.L0da72fc4
    # Line 516
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da72fc4
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da72f80:
    # Line 518
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5152($s1)
    # Line 519
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 518
    addu	$s0,$a4,$s0
    # Line 519
    lw	$a5,5224($s1)
    # Line 520
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 519
    addu	$s3,$a5,$s3
    # Line 520
    lw	$a6,5100($s1)
    # Line 517
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da72f80
    # Line 520
    addu	$s2,$a6,$s2
.L0da72fc4:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 522
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysCEV

# Function: __glkonDrawArraysNCEV
# Declared: Line 524 (Source lines: 524-553)
# Address: 0x0da73000 - 0x0da73210 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysNCEV
__glkonDrawArraysNCEV:
    # Line 524
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 525
    lw	$s0,4112($zero)
    # Line 524
    sd	$s8,56($sp)
    # Line 527
    lw	$s8,5124($s0)
    mult	$s8,$a1
    # Line 524
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 529
    lw	$t8,5152($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 527
    mflo	$at
    nop
    nop
    # Line 529
    mult	$t8,$a1
    # Line 524
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 531
    lw	$s7,5224($s0)
    # Line 524
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 529
    mflo	$s3
    nop
    nop
    # Line 531
    mult	$s7,$a1
    # Line 524
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 528
    lui	$s6,0x1
    # Line 527
    lw	$s2,5116($s0)
    # Line 524
    addiu	$v0,$v0,-8232
    # Line 528
    addu	$s6,$s0,$s6
    # Line 533
    lw	$v1,5100($s0)
    # Line 524
    addu	$gp,$t9,$v0
    # Line 530
    lw	$t9,-30024($s6)
    sd	$t9,88($sp)
    # Line 531
    mflo	$t8
    nop
    nop
    # Line 533
    mult	$v1,$a1
    # Line 532
    lw	$s8,-30012($s6)
    # Line 531
    lw	$s4,5220($s0)
    # Line 529
    lw	$s1,5140($s0)
    # Line 527
    addu	$s2,$s2,$at
    # Line 537
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 529
    addu	$s1,$s1,$s3
    # Line 533
    lw	$s3,5088($s0)
    # Line 534
    lw	$s7,-30032($s6)
    # Line 531
    addu	$s4,$s4,$t8
    # Line 533
    mflo	$t8
    # Line 528
    lw	$s6,-30028($s6)
    # Line 534
    beqz	$a2,.L0da7314c
    # Line 533
    addu	$s3,$s3,$t8
    # Line 537
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da7314c
    sw	$ra,16384($zero)
    nop
.L0da730f0:
    # Line 540
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 541
    ld	$t9,88($sp)
    # Line 540
    lw	$v1,5124($s0)
    # Line 541
    move	$a0,$s1
    jalr	$t9
    # Line 540
    addu	$s2,$v1,$s2
    # Line 541
    lw	$a0,5152($s0)
    # Line 542
    move	$t9,$s8
    # Line 541
    addu	$s1,$a0,$s1
    # Line 542
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5224($s0)
    # Line 543
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 542
    addu	$s4,$a1,$s4
    # Line 539
    ld	$a3,72($sp)
    # Line 543
    lw	$a2,5100($s0)
    # Line 539
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da730f0
    # Line 543
    addu	$s3,$a2,$s3
.L0da7314c:
    # Line 539
    ld	$a4,80($sp)
    # Line 546
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 539
    beqz	$a4,.L0da731dc
    # Line 546
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da731dc
    sw	$a5,16384($zero)
    nop
.L0da73180:
    # Line 548
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 549
    ld	$t9,88($sp)
    # Line 548
    lw	$a7,5124($s0)
    # Line 549
    move	$a0,$s1
    jalr	$t9
    # Line 548
    addu	$s2,$a7,$s2
    # Line 549
    lw	$t0,5152($s0)
    # Line 550
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 549
    addu	$s1,$t0,$s1
    # Line 550
    lw	$t1,5224($s0)
    # Line 551
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 550
    addu	$s4,$t1,$s4
    # Line 547
    ld	$t3,80($sp)
    # Line 551
    lw	$t2,5100($s0)
    # Line 547
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da73180
    # Line 551
    addu	$s3,$t2,$s3
.L0da731dc:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 553
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysNCEV

# Function: __glkonDrawArraysTEV
# Declared: Line 555 (Source lines: 555-580)
# Address: 0x0da73210 - 0x0da733c8 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysTEV
__glkonDrawArraysTEV:
    # Line 555
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 556
    lw	$s1,4112($zero)
    # Line 558
    lw	$t8,5204($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 555
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 560
    lw	$s7,5224($s1)
    sd	$s4,88($sp)
    # Line 555
    sd	$s2,0($sp)
    # Line 558
    mflo	$s2
    nop
    nop
    # Line 560
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 555
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 562
    lw	$s6,5100($s1)
    # Line 555
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 560
    mflo	$t8
    nop
    nop
    # Line 562
    mult	$s6,$a1
    # Line 555
    sd	$s0,24($sp)
    # Line 559
    lui	$s5,0x1
    # Line 560
    lw	$s3,5220($s1)
    # Line 555
    lui	$s7,0x2
    # Line 559
    addu	$s5,$s1,$s5
    # Line 558
    lw	$s0,5192($s1)
    # Line 555
    addiu	$s7,$s7,-8760
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 561
    lw	$s7,-30012($s5)
    # Line 566
    move	$s4,$zero
    # Line 558
    addu	$s0,$s0,$s2
    # Line 562
    lw	$s2,5088($s1)
    # Line 563
    lw	$s6,-30032($s5)
    # Line 560
    addu	$s3,$s3,$t8
    # Line 562
    mflo	$t8
    # Line 559
    lw	$s5,-30016($s5)
    # Line 563
    beqz	$a2,.L0da73328
    # Line 562
    addu	$s2,$s2,$t8
    # Line 566
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da73328
    sw	$t9,16384($zero)
    nop
.L0da732e0:
    # Line 569
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5204($s1)
    # Line 570
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 569
    addu	$s0,$v0,$s0
    # Line 570
    lw	$v1,5224($s1)
    # Line 571
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 570
    addu	$s3,$v1,$s3
    # Line 568
    ld	$a1,72($sp)
    # Line 571
    lw	$a0,5100($s1)
    # Line 568
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da732e0
    # Line 571
    addu	$s2,$a0,$s2
.L0da73328:
    # Line 568
    beqz	$s8,.L0da73394
    # Line 574
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da73394
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da73350:
    # Line 576
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5204($s1)
    # Line 577
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 576
    addu	$s0,$a4,$s0
    # Line 577
    lw	$a5,5224($s1)
    # Line 578
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 577
    addu	$s3,$a5,$s3
    # Line 578
    lw	$a6,5100($s1)
    # Line 575
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da73350
    # Line 578
    addu	$s2,$a6,$s2
.L0da73394:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 580
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysTEV

# Function: __glkonDrawArraysNTEV
# Declared: Line 582 (Source lines: 582-611)
# Address: 0x0da733d0 - 0x0da735e0 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysNTEV
__glkonDrawArraysNTEV:
    # Line 582
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 583
    lw	$s0,4112($zero)
    # Line 582
    sd	$s8,56($sp)
    # Line 585
    lw	$s8,5124($s0)
    mult	$s8,$a1
    # Line 582
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 587
    lw	$t8,5204($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 585
    mflo	$at
    nop
    nop
    # Line 587
    mult	$t8,$a1
    # Line 582
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 589
    lw	$s7,5224($s0)
    # Line 582
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 587
    mflo	$s3
    nop
    nop
    # Line 589
    mult	$s7,$a1
    # Line 582
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 586
    lui	$s6,0x1
    # Line 585
    lw	$s2,5116($s0)
    # Line 582
    addiu	$v0,$v0,-9208
    # Line 586
    addu	$s6,$s0,$s6
    # Line 591
    lw	$v1,5100($s0)
    # Line 582
    addu	$gp,$t9,$v0
    # Line 588
    lw	$t9,-30016($s6)
    sd	$t9,88($sp)
    # Line 589
    mflo	$t8
    nop
    nop
    # Line 591
    mult	$v1,$a1
    # Line 590
    lw	$s8,-30012($s6)
    # Line 589
    lw	$s4,5220($s0)
    # Line 587
    lw	$s1,5192($s0)
    # Line 585
    addu	$s2,$s2,$at
    # Line 595
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 587
    addu	$s1,$s1,$s3
    # Line 591
    lw	$s3,5088($s0)
    # Line 592
    lw	$s7,-30032($s6)
    # Line 589
    addu	$s4,$s4,$t8
    # Line 591
    mflo	$t8
    # Line 586
    lw	$s6,-30028($s6)
    # Line 592
    beqz	$a2,.L0da7351c
    # Line 591
    addu	$s3,$s3,$t8
    # Line 595
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da7351c
    sw	$ra,16384($zero)
    nop
.L0da734c0:
    # Line 598
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 599
    ld	$t9,88($sp)
    # Line 598
    lw	$v1,5124($s0)
    # Line 599
    move	$a0,$s1
    jalr	$t9
    # Line 598
    addu	$s2,$v1,$s2
    # Line 599
    lw	$a0,5204($s0)
    # Line 600
    move	$t9,$s8
    # Line 599
    addu	$s1,$a0,$s1
    # Line 600
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5224($s0)
    # Line 601
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 600
    addu	$s4,$a1,$s4
    # Line 597
    ld	$a3,72($sp)
    # Line 601
    lw	$a2,5100($s0)
    # Line 597
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da734c0
    # Line 601
    addu	$s3,$a2,$s3
.L0da7351c:
    # Line 597
    ld	$a4,80($sp)
    # Line 604
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 597
    beqz	$a4,.L0da735ac
    # Line 604
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da735ac
    sw	$a5,16384($zero)
    nop
.L0da73550:
    # Line 606
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 607
    ld	$t9,88($sp)
    # Line 606
    lw	$a7,5124($s0)
    # Line 607
    move	$a0,$s1
    jalr	$t9
    # Line 606
    addu	$s2,$a7,$s2
    # Line 607
    lw	$t0,5204($s0)
    # Line 608
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 607
    addu	$s1,$t0,$s1
    # Line 608
    lw	$t1,5224($s0)
    # Line 609
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 608
    addu	$s4,$t1,$s4
    # Line 605
    ld	$t3,80($sp)
    # Line 609
    lw	$t2,5100($s0)
    # Line 605
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da73550
    # Line 609
    addu	$s3,$t2,$s3
.L0da735ac:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 611
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysNTEV

# Function: __glkonDrawArraysCTEV
# Declared: Line 613 (Source lines: 613-642)
# Address: 0x0da735e0 - 0x0da737f0 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysCTEV
__glkonDrawArraysCTEV:
    # Line 613
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 614
    lw	$s0,4112($zero)
    # Line 613
    sd	$s8,56($sp)
    # Line 616
    lw	$s8,5152($s0)
    mult	$s8,$a1
    # Line 613
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 618
    lw	$t8,5204($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 616
    mflo	$at
    nop
    nop
    # Line 618
    mult	$t8,$a1
    # Line 613
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 620
    lw	$s7,5224($s0)
    # Line 613
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 618
    mflo	$s3
    nop
    nop
    # Line 620
    mult	$s7,$a1
    # Line 613
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 617
    lui	$s6,0x1
    # Line 616
    lw	$s2,5140($s0)
    # Line 613
    addiu	$v0,$v0,-9736
    # Line 617
    addu	$s6,$s0,$s6
    # Line 622
    lw	$v1,5100($s0)
    # Line 613
    addu	$gp,$t9,$v0
    # Line 619
    lw	$t9,-30016($s6)
    sd	$t9,88($sp)
    # Line 620
    mflo	$t8
    nop
    nop
    # Line 622
    mult	$v1,$a1
    # Line 621
    lw	$s8,-30012($s6)
    # Line 620
    lw	$s4,5220($s0)
    # Line 618
    lw	$s1,5192($s0)
    # Line 616
    addu	$s2,$s2,$at
    # Line 626
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 618
    addu	$s1,$s1,$s3
    # Line 622
    lw	$s3,5088($s0)
    # Line 623
    lw	$s7,-30032($s6)
    # Line 620
    addu	$s4,$s4,$t8
    # Line 622
    mflo	$t8
    # Line 617
    lw	$s6,-30024($s6)
    # Line 623
    beqz	$a2,.L0da7372c
    # Line 622
    addu	$s3,$s3,$t8
    # Line 626
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da7372c
    sw	$ra,16384($zero)
    nop
.L0da736d0:
    # Line 629
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 630
    ld	$t9,88($sp)
    # Line 629
    lw	$v1,5152($s0)
    # Line 630
    move	$a0,$s1
    jalr	$t9
    # Line 629
    addu	$s2,$v1,$s2
    # Line 630
    lw	$a0,5204($s0)
    # Line 631
    move	$t9,$s8
    # Line 630
    addu	$s1,$a0,$s1
    # Line 631
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5224($s0)
    # Line 632
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 631
    addu	$s4,$a1,$s4
    # Line 628
    ld	$a3,72($sp)
    # Line 632
    lw	$a2,5100($s0)
    # Line 628
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da736d0
    # Line 632
    addu	$s3,$a2,$s3
.L0da7372c:
    # Line 628
    ld	$a4,80($sp)
    # Line 635
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 628
    beqz	$a4,.L0da737bc
    # Line 635
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da737bc
    sw	$a5,16384($zero)
    nop
.L0da73760:
    # Line 637
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 638
    ld	$t9,88($sp)
    # Line 637
    lw	$a7,5152($s0)
    # Line 638
    move	$a0,$s1
    jalr	$t9
    # Line 637
    addu	$s2,$a7,$s2
    # Line 638
    lw	$t0,5204($s0)
    # Line 639
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 638
    addu	$s1,$t0,$s1
    # Line 639
    lw	$t1,5224($s0)
    # Line 640
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 639
    addu	$s4,$t1,$s4
    # Line 636
    ld	$t3,80($sp)
    # Line 640
    lw	$t2,5100($s0)
    # Line 636
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da73760
    # Line 640
    addu	$s3,$t2,$s3
.L0da737bc:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 642
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysCTEV

# Function: __glkonDrawArraysNCTEV
# Declared: Line 644 (Source lines: 644-677)
# Address: 0x0da737f0 - 0x0da73a54 (Size: 612 bytes, Frame: 128)
.ent __glkonDrawArraysNCTEV
__glkonDrawArraysNCTEV:
    # Line 644
    addiu	$sp,$sp,-128
    sd	$s0,24($sp)
    # Line 645
    lw	$s0,4112($zero)
    # Line 647
    lw	$v0,5124($s0)
    mult	$v0,$a1
    # Line 644
    sd	$a3,80($sp)
    sd	$ra,120($sp)
    # Line 649
    lw	$at,5152($s0)
    sd	$s6,112($sp)
    # Line 644
    sd	$s4,16($sp)
    # Line 647
    mflo	$s4
    nop
    nop
    # Line 649
    mult	$at,$a1
    sd	$gp,64($sp)
    # Line 644
    sd	$a2,72($sp)
    sd	$s8,56($sp)
    # Line 651
    lw	$s8,5204($s0)
    # Line 644
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 649
    mflo	$s3
    nop
    nop
    # Line 651
    mult	$s8,$a1
    # Line 644
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 648
    lui	$s7,0x1
    # Line 651
    lw	$s5,5192($s0)
    # Line 648
    addu	$s7,$s0,$s7
    # Line 653
    lw	$t8,5224($s0)
    # Line 652
    lw	$a4,-30016($s7)
    # Line 654
    lw	$a5,-30012($s7)
    # Line 651
    mflo	$at
    nop
    nop
    # Line 653
    mult	$t8,$a1
    # Line 654
    sd	$a5,104($sp)
    # Line 652
    sd	$a4,96($sp)
    # Line 644
    sd	$s2,0($sp)
    lui	$v0,0x2
    # Line 655
    lw	$a0,5100($s0)
    # Line 649
    lw	$s1,5140($s0)
    # Line 644
    addiu	$v0,$v0,-10264
    # Line 647
    lw	$s2,5116($s0)
    # Line 653
    mflo	$t8
    nop
    nop
    # Line 655
    mult	$a0,$a1
    # Line 644
    addu	$gp,$t9,$v0
    # Line 650
    lw	$t9,-30024($s7)
    sd	$t9,88($sp)
    # Line 647
    addu	$s2,$s2,$s4
    # Line 653
    lw	$s4,5220($s0)
    # Line 659
    move	$s6,$zero
    # Line 656
    lw	$s8,-30032($s7)
    # Line 649
    addu	$s1,$s1,$s3
    # Line 655
    lw	$s3,5088($s0)
    # Line 651
    addu	$s5,$s5,$at
    # Line 648
    lw	$s7,-30028($s7)
    # Line 653
    addu	$s4,$s4,$t8
    # Line 655
    mflo	$t8
    # Line 659
    ld	$a0,72($sp)
    # Line 656
    beqz	$a2,.L0da73980
    # Line 655
    addu	$s3,$s3,$t8
    # Line 659
    li	$v1,417
    sll	$a1,$a0,0x2
    addu	$a1,$a1,$a0
    subu	$v1,$v1,$a1
    blez	$a0,.L0da73980
    sw	$v1,16384($zero)
    nop
    nop
.L0da73910:
    # Line 662
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 663
    ld	$t9,88($sp)
    # Line 662
    lw	$a2,5124($s0)
    # Line 663
    move	$a0,$s1
    jalr	$t9
    # Line 662
    addu	$s2,$a2,$s2
    # Line 664
    ld	$t9,96($sp)
    # Line 663
    lw	$a3,5152($s0)
    # Line 664
    move	$a0,$s5
    jalr	$t9
    # Line 663
    addu	$s1,$a3,$s1
    # Line 665
    ld	$t9,104($sp)
    # Line 664
    lw	$a4,5204($s0)
    # Line 665
    move	$a0,$s4
    jalr	$t9
    # Line 664
    addu	$s5,$a4,$s5
    # Line 665
    lw	$a5,5224($s0)
    # Line 666
    move	$t9,$s8
    move	$a0,$s3
    jalr	$t9
    # Line 665
    addu	$s4,$a5,$s4
    # Line 661
    ld	$a7,72($sp)
    # Line 666
    lw	$a6,5100($s0)
    # Line 661
    addiu	$s6,$s6,1
    bne	$a7,$s6,.L0da73910
    # Line 666
    addu	$s3,$a6,$s3
.L0da73980:
    # Line 661
    ld	$t0,80($sp)
    # Line 669
    li	$t2,386
    move	$s6,$zero
    lui	$t1,0xdead
    # Line 661
    beqz	$t0,.L0da73a20
    # Line 669
    ori	$t1,$t1,0xbeef
    sw	$t2,16384($zero)
    ld	$t2,80($sp)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    blez	$t2,.L0da73a20
    sw	$t1,16384($zero)
.L0da739b0:
    # Line 671
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 672
    ld	$t9,88($sp)
    # Line 671
    lw	$t3,5124($s0)
    # Line 672
    move	$a0,$s1
    jalr	$t9
    # Line 671
    addu	$s2,$t3,$s2
    # Line 673
    ld	$t9,96($sp)
    # Line 672
    lw	$t8,5152($s0)
    # Line 673
    move	$a0,$s5
    jalr	$t9
    # Line 672
    addu	$s1,$t8,$s1
    # Line 673
    lw	$t9,5204($s0)
    addu	$s5,$t9,$s5
    # Line 674
    ld	$t9,104($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5224($s0)
    # Line 675
    move	$t9,$s8
    # Line 674
    addu	$s4,$ra,$s4
    # Line 675
    jalr	$t9
    move	$a0,$s3
    # Line 670
    ld	$v0,80($sp)
    # Line 675
    lw	$at,5100($s0)
    # Line 670
    addiu	$s6,$s6,1
    bne	$v0,$s6,.L0da739b0
    # Line 675
    addu	$s3,$at,$s3
.L0da73a20:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,112($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,120($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 677
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glkonDrawArraysNCTEV

# Function: __glkonDrawArraysIEV
# Declared: Line 679 (Source lines: 679-704)
# Address: 0x0da73a60 - 0x0da73c18 (Size: 440 bytes, Frame: 224)
.ent __glkonDrawArraysIEV
__glkonDrawArraysIEV:
    # Line 679
    addiu	$sp,$sp,-96
    sd	$s1,32($sp)
    # Line 680
    lw	$s1,4112($zero)
    # Line 682
    lw	$t8,5176($s1)
    mult	$t8,$a1
    sd	$ra,80($sp)
    # Line 679
    sd	$a2,72($sp)
    sd	$s7,48($sp)
    # Line 684
    lw	$s7,5224($s1)
    sd	$s4,88($sp)
    # Line 679
    sd	$s2,0($sp)
    # Line 682
    mflo	$s2
    nop
    nop
    # Line 684
    mult	$s7,$a1
    sd	$gp,64($sp)
    # Line 679
    sd	$s8,56($sp)
    sd	$s6,16($sp)
    # Line 686
    lw	$s6,5100($s1)
    # Line 679
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 684
    mflo	$t8
    nop
    nop
    # Line 686
    mult	$s6,$a1
    # Line 679
    sd	$s0,24($sp)
    # Line 683
    lui	$s5,0x1
    # Line 684
    lw	$s3,5220($s1)
    # Line 679
    lui	$s7,0x2
    # Line 683
    addu	$s5,$s1,$s5
    # Line 682
    lw	$s0,5168($s1)
    # Line 679
    addiu	$s7,$s7,-10888
    move	$s8,$a3
    addu	$gp,$t9,$s7
    # Line 685
    lw	$s7,-30012($s5)
    # Line 690
    move	$s4,$zero
    # Line 682
    addu	$s0,$s0,$s2
    # Line 686
    lw	$s2,5088($s1)
    # Line 687
    lw	$s6,-30032($s5)
    # Line 684
    addu	$s3,$s3,$t8
    # Line 686
    mflo	$t8
    # Line 683
    lw	$s5,-30020($s5)
    # Line 687
    beqz	$a2,.L0da73b78
    # Line 686
    addu	$s2,$s2,$t8
    # Line 690
    li	$t9,417
    ld	$ra,72($sp)
    sll	$at,$ra,0x2
    subu	$at,$at,$ra
    subu	$t9,$t9,$at
    blez	$ra,.L0da73b78
    sw	$t9,16384($zero)
    nop
.L0da73b30:
    # Line 693
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$v0,5176($s1)
    # Line 694
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 693
    addu	$s0,$v0,$s0
    # Line 694
    lw	$v1,5224($s1)
    # Line 695
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 694
    addu	$s3,$v1,$s3
    # Line 692
    ld	$a1,72($sp)
    # Line 695
    lw	$a0,5100($s1)
    # Line 692
    addiu	$s4,$s4,1
    bne	$a1,$s4,.L0da73b30
    # Line 695
    addu	$s2,$a0,$s2
.L0da73b78:
    # Line 692
    beqz	$s8,.L0da73be4
    # Line 698
    li	$a3,386
    lui	$a2,0xdead
    sw	$a3,16384($zero)
    sw	$s8,16384($zero)
    ori	$a2,$a2,0xbeef
    sw	$a2,16384($zero)
    blez	$s8,.L0da73be4
    sw	$a2,16384($zero)
    move	$s4,$zero
.L0da73ba0:
    # Line 700
    move	$t9,$s5
    jalr	$t9
    move	$a0,$s0
    lw	$a4,5176($s1)
    # Line 701
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 700
    addu	$s0,$a4,$s0
    # Line 701
    lw	$a5,5224($s1)
    # Line 702
    move	$t9,$s6
    move	$a0,$s2
    jalr	$t9
    # Line 701
    addu	$s3,$a5,$s3
    # Line 702
    lw	$a6,5100($s1)
    # Line 699
    addiu	$s4,$s4,1
    bne	$s8,$s4,.L0da73ba0
    # Line 702
    addu	$s2,$a6,$s2
.L0da73be4:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,88($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,80($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 704
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glkonDrawArraysIEV

# Function: __glkonDrawArraysNIEV
# Declared: Line 706 (Source lines: 706-735)
# Address: 0x0da73c20 - 0x0da73e30 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysNIEV
__glkonDrawArraysNIEV:
    # Line 706
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 707
    lw	$s0,4112($zero)
    # Line 706
    sd	$s8,56($sp)
    # Line 709
    lw	$s8,5124($s0)
    mult	$s8,$a1
    # Line 706
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 711
    lw	$t8,5176($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 709
    mflo	$at
    nop
    nop
    # Line 711
    mult	$t8,$a1
    # Line 706
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 713
    lw	$s7,5224($s0)
    # Line 706
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 711
    mflo	$s3
    nop
    nop
    # Line 713
    mult	$s7,$a1
    # Line 706
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 710
    lui	$s6,0x1
    # Line 709
    lw	$s2,5116($s0)
    # Line 706
    addiu	$v0,$v0,-11336
    # Line 710
    addu	$s6,$s0,$s6
    # Line 715
    lw	$v1,5100($s0)
    # Line 706
    addu	$gp,$t9,$v0
    # Line 712
    lw	$t9,-30020($s6)
    sd	$t9,88($sp)
    # Line 713
    mflo	$t8
    nop
    nop
    # Line 715
    mult	$v1,$a1
    # Line 714
    lw	$s8,-30012($s6)
    # Line 713
    lw	$s4,5220($s0)
    # Line 711
    lw	$s1,5168($s0)
    # Line 709
    addu	$s2,$s2,$at
    # Line 719
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 711
    addu	$s1,$s1,$s3
    # Line 715
    lw	$s3,5088($s0)
    # Line 716
    lw	$s7,-30032($s6)
    # Line 713
    addu	$s4,$s4,$t8
    # Line 715
    mflo	$t8
    # Line 710
    lw	$s6,-30028($s6)
    # Line 716
    beqz	$a2,.L0da73d6c
    # Line 715
    addu	$s3,$s3,$t8
    # Line 719
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da73d6c
    sw	$ra,16384($zero)
    nop
.L0da73d10:
    # Line 722
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 723
    ld	$t9,88($sp)
    # Line 722
    lw	$v1,5124($s0)
    # Line 723
    move	$a0,$s1
    jalr	$t9
    # Line 722
    addu	$s2,$v1,$s2
    # Line 723
    lw	$a0,5176($s0)
    # Line 724
    move	$t9,$s8
    # Line 723
    addu	$s1,$a0,$s1
    # Line 724
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5224($s0)
    # Line 725
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 724
    addu	$s4,$a1,$s4
    # Line 721
    ld	$a3,72($sp)
    # Line 725
    lw	$a2,5100($s0)
    # Line 721
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da73d10
    # Line 725
    addu	$s3,$a2,$s3
.L0da73d6c:
    # Line 721
    ld	$a4,80($sp)
    # Line 728
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 721
    beqz	$a4,.L0da73dfc
    # Line 728
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da73dfc
    sw	$a5,16384($zero)
    nop
.L0da73da0:
    # Line 730
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 731
    ld	$t9,88($sp)
    # Line 730
    lw	$a7,5124($s0)
    # Line 731
    move	$a0,$s1
    jalr	$t9
    # Line 730
    addu	$s2,$a7,$s2
    # Line 731
    lw	$t0,5176($s0)
    # Line 732
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 731
    addu	$s1,$t0,$s1
    # Line 732
    lw	$t1,5224($s0)
    # Line 733
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 732
    addu	$s4,$t1,$s4
    # Line 729
    ld	$t3,80($sp)
    # Line 733
    lw	$t2,5100($s0)
    # Line 729
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da73da0
    # Line 733
    addu	$s3,$t2,$s3
.L0da73dfc:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 735
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysNIEV

# Function: __glkonDrawArraysCIEV
# Declared: Line 737 (Source lines: 737-766)
# Address: 0x0da73e30 - 0x0da74040 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysCIEV
__glkonDrawArraysCIEV:
    # Line 737
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 738
    lw	$s0,4112($zero)
    # Line 737
    sd	$s8,56($sp)
    # Line 740
    lw	$s8,5152($s0)
    mult	$s8,$a1
    # Line 737
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 742
    lw	$t8,5176($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 740
    mflo	$at
    nop
    nop
    # Line 742
    mult	$t8,$a1
    # Line 737
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 744
    lw	$s7,5224($s0)
    # Line 737
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 742
    mflo	$s3
    nop
    nop
    # Line 744
    mult	$s7,$a1
    # Line 737
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 741
    lui	$s6,0x1
    # Line 740
    lw	$s2,5140($s0)
    # Line 737
    addiu	$v0,$v0,-11864
    # Line 741
    addu	$s6,$s0,$s6
    # Line 746
    lw	$v1,5100($s0)
    # Line 737
    addu	$gp,$t9,$v0
    # Line 743
    lw	$t9,-30020($s6)
    sd	$t9,88($sp)
    # Line 744
    mflo	$t8
    nop
    nop
    # Line 746
    mult	$v1,$a1
    # Line 745
    lw	$s8,-30012($s6)
    # Line 744
    lw	$s4,5220($s0)
    # Line 742
    lw	$s1,5168($s0)
    # Line 740
    addu	$s2,$s2,$at
    # Line 750
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 742
    addu	$s1,$s1,$s3
    # Line 746
    lw	$s3,5088($s0)
    # Line 747
    lw	$s7,-30032($s6)
    # Line 744
    addu	$s4,$s4,$t8
    # Line 746
    mflo	$t8
    # Line 741
    lw	$s6,-30024($s6)
    # Line 747
    beqz	$a2,.L0da73f7c
    # Line 746
    addu	$s3,$s3,$t8
    # Line 750
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da73f7c
    sw	$ra,16384($zero)
    nop
.L0da73f20:
    # Line 753
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 754
    ld	$t9,88($sp)
    # Line 753
    lw	$v1,5152($s0)
    # Line 754
    move	$a0,$s1
    jalr	$t9
    # Line 753
    addu	$s2,$v1,$s2
    # Line 754
    lw	$a0,5176($s0)
    # Line 755
    move	$t9,$s8
    # Line 754
    addu	$s1,$a0,$s1
    # Line 755
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5224($s0)
    # Line 756
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 755
    addu	$s4,$a1,$s4
    # Line 752
    ld	$a3,72($sp)
    # Line 756
    lw	$a2,5100($s0)
    # Line 752
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da73f20
    # Line 756
    addu	$s3,$a2,$s3
.L0da73f7c:
    # Line 752
    ld	$a4,80($sp)
    # Line 759
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 752
    beqz	$a4,.L0da7400c
    # Line 759
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da7400c
    sw	$a5,16384($zero)
    nop
.L0da73fb0:
    # Line 761
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 762
    ld	$t9,88($sp)
    # Line 761
    lw	$a7,5152($s0)
    # Line 762
    move	$a0,$s1
    jalr	$t9
    # Line 761
    addu	$s2,$a7,$s2
    # Line 762
    lw	$t0,5176($s0)
    # Line 763
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 762
    addu	$s1,$t0,$s1
    # Line 763
    lw	$t1,5224($s0)
    # Line 764
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 763
    addu	$s4,$t1,$s4
    # Line 760
    ld	$t3,80($sp)
    # Line 764
    lw	$t2,5100($s0)
    # Line 760
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da73fb0
    # Line 764
    addu	$s3,$t2,$s3
.L0da7400c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 766
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysCIEV

# Function: __glkonDrawArraysNCIEV
# Declared: Line 768 (Source lines: 768-801)
# Address: 0x0da74040 - 0x0da742a4 (Size: 612 bytes, Frame: 128)
.ent __glkonDrawArraysNCIEV
__glkonDrawArraysNCIEV:
    # Line 768
    addiu	$sp,$sp,-128
    sd	$s0,24($sp)
    # Line 769
    lw	$s0,4112($zero)
    # Line 771
    lw	$v0,5124($s0)
    mult	$v0,$a1
    # Line 768
    sd	$a3,80($sp)
    sd	$ra,120($sp)
    # Line 773
    lw	$at,5152($s0)
    sd	$s6,112($sp)
    # Line 768
    sd	$s4,16($sp)
    # Line 771
    mflo	$s4
    nop
    nop
    # Line 773
    mult	$at,$a1
    sd	$gp,64($sp)
    # Line 768
    sd	$a2,72($sp)
    sd	$s8,56($sp)
    # Line 775
    lw	$s8,5176($s0)
    # Line 768
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 773
    mflo	$s3
    nop
    nop
    # Line 775
    mult	$s8,$a1
    # Line 768
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 772
    lui	$s7,0x1
    # Line 775
    lw	$s5,5168($s0)
    # Line 772
    addu	$s7,$s0,$s7
    # Line 777
    lw	$t8,5224($s0)
    # Line 776
    lw	$a4,-30020($s7)
    # Line 778
    lw	$a5,-30012($s7)
    # Line 775
    mflo	$at
    nop
    nop
    # Line 777
    mult	$t8,$a1
    # Line 778
    sd	$a5,104($sp)
    # Line 776
    sd	$a4,96($sp)
    # Line 768
    sd	$s2,0($sp)
    lui	$v0,0x2
    # Line 779
    lw	$a0,5100($s0)
    # Line 773
    lw	$s1,5140($s0)
    # Line 768
    addiu	$v0,$v0,-12392
    # Line 771
    lw	$s2,5116($s0)
    # Line 777
    mflo	$t8
    nop
    nop
    # Line 779
    mult	$a0,$a1
    # Line 768
    addu	$gp,$t9,$v0
    # Line 774
    lw	$t9,-30024($s7)
    sd	$t9,88($sp)
    # Line 771
    addu	$s2,$s2,$s4
    # Line 777
    lw	$s4,5220($s0)
    # Line 783
    move	$s6,$zero
    # Line 780
    lw	$s8,-30032($s7)
    # Line 773
    addu	$s1,$s1,$s3
    # Line 779
    lw	$s3,5088($s0)
    # Line 775
    addu	$s5,$s5,$at
    # Line 772
    lw	$s7,-30028($s7)
    # Line 777
    addu	$s4,$s4,$t8
    # Line 779
    mflo	$t8
    # Line 783
    ld	$a0,72($sp)
    # Line 780
    beqz	$a2,.L0da741d0
    # Line 779
    addu	$s3,$s3,$t8
    # Line 783
    li	$v1,417
    sll	$a1,$a0,0x2
    addu	$a1,$a1,$a0
    subu	$v1,$v1,$a1
    blez	$a0,.L0da741d0
    sw	$v1,16384($zero)
    nop
    nop
.L0da74160:
    # Line 786
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 787
    ld	$t9,88($sp)
    # Line 786
    lw	$a2,5124($s0)
    # Line 787
    move	$a0,$s1
    jalr	$t9
    # Line 786
    addu	$s2,$a2,$s2
    # Line 788
    ld	$t9,96($sp)
    # Line 787
    lw	$a3,5152($s0)
    # Line 788
    move	$a0,$s5
    jalr	$t9
    # Line 787
    addu	$s1,$a3,$s1
    # Line 789
    ld	$t9,104($sp)
    # Line 788
    lw	$a4,5176($s0)
    # Line 789
    move	$a0,$s4
    jalr	$t9
    # Line 788
    addu	$s5,$a4,$s5
    # Line 789
    lw	$a5,5224($s0)
    # Line 790
    move	$t9,$s8
    move	$a0,$s3
    jalr	$t9
    # Line 789
    addu	$s4,$a5,$s4
    # Line 785
    ld	$a7,72($sp)
    # Line 790
    lw	$a6,5100($s0)
    # Line 785
    addiu	$s6,$s6,1
    bne	$a7,$s6,.L0da74160
    # Line 790
    addu	$s3,$a6,$s3
.L0da741d0:
    # Line 785
    ld	$t0,80($sp)
    # Line 793
    li	$t2,386
    move	$s6,$zero
    lui	$t1,0xdead
    # Line 785
    beqz	$t0,.L0da74270
    # Line 793
    ori	$t1,$t1,0xbeef
    sw	$t2,16384($zero)
    ld	$t2,80($sp)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    blez	$t2,.L0da74270
    sw	$t1,16384($zero)
.L0da74200:
    # Line 795
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 796
    ld	$t9,88($sp)
    # Line 795
    lw	$t3,5124($s0)
    # Line 796
    move	$a0,$s1
    jalr	$t9
    # Line 795
    addu	$s2,$t3,$s2
    # Line 797
    ld	$t9,96($sp)
    # Line 796
    lw	$t8,5152($s0)
    # Line 797
    move	$a0,$s5
    jalr	$t9
    # Line 796
    addu	$s1,$t8,$s1
    # Line 797
    lw	$t9,5176($s0)
    addu	$s5,$t9,$s5
    # Line 798
    ld	$t9,104($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5224($s0)
    # Line 799
    move	$t9,$s8
    # Line 798
    addu	$s4,$ra,$s4
    # Line 799
    jalr	$t9
    move	$a0,$s3
    # Line 794
    ld	$v0,80($sp)
    # Line 799
    lw	$at,5100($s0)
    # Line 794
    addiu	$s6,$s6,1
    bne	$v0,$s6,.L0da74200
    # Line 799
    addu	$s3,$at,$s3
.L0da74270:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,112($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,120($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 801
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glkonDrawArraysNCIEV

# Function: __glkonDrawArraysTIEV
# Declared: Line 803 (Source lines: 803-832)
# Address: 0x0da742b0 - 0x0da744c0 (Size: 528 bytes, Frame: 240)
.ent __glkonDrawArraysTIEV
__glkonDrawArraysTIEV:
    # Line 803
    addiu	$sp,$sp,-112
    sd	$s0,32($sp)
    # Line 804
    lw	$s0,4112($zero)
    # Line 803
    sd	$s8,56($sp)
    # Line 806
    lw	$s8,5204($s0)
    mult	$s8,$a1
    # Line 803
    sd	$a3,80($sp)
    sd	$ra,96($sp)
    # Line 808
    lw	$t8,5176($s0)
    sd	$s5,104($sp)
    sd	$gp,64($sp)
    # Line 806
    mflo	$at
    nop
    nop
    # Line 808
    mult	$t8,$a1
    # Line 803
    sd	$a2,72($sp)
    sd	$s2,0($sp)
    sd	$s7,48($sp)
    # Line 810
    lw	$s7,5224($s0)
    # Line 803
    sd	$s4,24($sp)
    sd	$s3,8($sp)
    # Line 808
    mflo	$s3
    nop
    nop
    # Line 810
    mult	$s7,$a1
    # Line 803
    sd	$s6,16($sp)
    sd	$s1,40($sp)
    lui	$v0,0x2
    # Line 807
    lui	$s6,0x1
    # Line 806
    lw	$s2,5192($s0)
    # Line 803
    addiu	$v0,$v0,-13016
    # Line 807
    addu	$s6,$s0,$s6
    # Line 812
    lw	$v1,5100($s0)
    # Line 803
    addu	$gp,$t9,$v0
    # Line 809
    lw	$t9,-30020($s6)
    sd	$t9,88($sp)
    # Line 810
    mflo	$t8
    nop
    nop
    # Line 812
    mult	$v1,$a1
    # Line 811
    lw	$s8,-30012($s6)
    # Line 810
    lw	$s4,5220($s0)
    # Line 808
    lw	$s1,5168($s0)
    # Line 806
    addu	$s2,$s2,$at
    # Line 816
    ld	$at,72($sp)
    move	$s5,$zero
    # Line 808
    addu	$s1,$s1,$s3
    # Line 812
    lw	$s3,5088($s0)
    # Line 813
    lw	$s7,-30032($s6)
    # Line 810
    addu	$s4,$s4,$t8
    # Line 812
    mflo	$t8
    # Line 807
    lw	$s6,-30016($s6)
    # Line 813
    beqz	$a2,.L0da743fc
    # Line 812
    addu	$s3,$s3,$t8
    # Line 816
    li	$ra,419
    sll	$v0,$at,0x2
    subu	$ra,$ra,$v0
    blez	$at,.L0da743fc
    sw	$ra,16384($zero)
    nop
.L0da743a0:
    # Line 819
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 820
    ld	$t9,88($sp)
    # Line 819
    lw	$v1,5204($s0)
    # Line 820
    move	$a0,$s1
    jalr	$t9
    # Line 819
    addu	$s2,$v1,$s2
    # Line 820
    lw	$a0,5176($s0)
    # Line 821
    move	$t9,$s8
    # Line 820
    addu	$s1,$a0,$s1
    # Line 821
    jalr	$t9
    move	$a0,$s4
    lw	$a1,5224($s0)
    # Line 822
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 821
    addu	$s4,$a1,$s4
    # Line 818
    ld	$a3,72($sp)
    # Line 822
    lw	$a2,5100($s0)
    # Line 818
    addiu	$s5,$s5,1
    bne	$a3,$s5,.L0da743a0
    # Line 822
    addu	$s3,$a2,$s3
.L0da743fc:
    # Line 818
    ld	$a4,80($sp)
    # Line 825
    li	$a6,386
    move	$s5,$zero
    lui	$a5,0xdead
    # Line 818
    beqz	$a4,.L0da7448c
    # Line 825
    ori	$a5,$a5,0xbeef
    sw	$a6,16384($zero)
    ld	$a6,80($sp)
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    blez	$a6,.L0da7448c
    sw	$a5,16384($zero)
    nop
.L0da74430:
    # Line 827
    move	$t9,$s6
    jalr	$t9
    move	$a0,$s2
    # Line 828
    ld	$t9,88($sp)
    # Line 827
    lw	$a7,5204($s0)
    # Line 828
    move	$a0,$s1
    jalr	$t9
    # Line 827
    addu	$s2,$a7,$s2
    # Line 828
    lw	$t0,5176($s0)
    # Line 829
    move	$t9,$s8
    move	$a0,$s4
    jalr	$t9
    # Line 828
    addu	$s1,$t0,$s1
    # Line 829
    lw	$t1,5224($s0)
    # Line 830
    move	$t9,$s7
    move	$a0,$s3
    jalr	$t9
    # Line 829
    addu	$s4,$t1,$s4
    # Line 826
    ld	$t3,80($sp)
    # Line 830
    lw	$t2,5100($s0)
    # Line 826
    addiu	$s5,$s5,1
    bne	$t3,$s5,.L0da74430
    # Line 830
    addu	$s3,$t2,$s3
.L0da7448c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,104($sp)
    ld	$ra,96($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 832
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glkonDrawArraysTIEV

# Function: __glkonDrawArraysNTIEV
# Declared: Line 834 (Source lines: 834-867)
# Address: 0x0da744c0 - 0x0da74724 (Size: 612 bytes, Frame: 128)
.ent __glkonDrawArraysNTIEV
__glkonDrawArraysNTIEV:
    # Line 834
    addiu	$sp,$sp,-128
    sd	$s0,24($sp)
    # Line 835
    lw	$s0,4112($zero)
    # Line 837
    lw	$v0,5124($s0)
    mult	$v0,$a1
    # Line 834
    sd	$a3,80($sp)
    sd	$ra,120($sp)
    # Line 839
    lw	$at,5204($s0)
    sd	$s6,112($sp)
    # Line 834
    sd	$s4,16($sp)
    # Line 837
    mflo	$s4
    nop
    nop
    # Line 839
    mult	$at,$a1
    sd	$gp,64($sp)
    # Line 834
    sd	$a2,72($sp)
    sd	$s8,56($sp)
    # Line 841
    lw	$s8,5176($s0)
    # Line 834
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 839
    mflo	$s3
    nop
    nop
    # Line 841
    mult	$s8,$a1
    # Line 834
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 838
    lui	$s7,0x1
    # Line 841
    lw	$s5,5168($s0)
    # Line 838
    addu	$s7,$s0,$s7
    # Line 843
    lw	$t8,5224($s0)
    # Line 842
    lw	$a4,-30020($s7)
    # Line 844
    lw	$a5,-30012($s7)
    # Line 841
    mflo	$at
    nop
    nop
    # Line 843
    mult	$t8,$a1
    # Line 844
    sd	$a5,104($sp)
    # Line 842
    sd	$a4,96($sp)
    # Line 834
    sd	$s2,0($sp)
    lui	$v0,0x2
    # Line 845
    lw	$a0,5100($s0)
    # Line 839
    lw	$s1,5192($s0)
    # Line 834
    addiu	$v0,$v0,-13544
    # Line 837
    lw	$s2,5116($s0)
    # Line 843
    mflo	$t8
    nop
    nop
    # Line 845
    mult	$a0,$a1
    # Line 834
    addu	$gp,$t9,$v0
    # Line 840
    lw	$t9,-30016($s7)
    sd	$t9,88($sp)
    # Line 837
    addu	$s2,$s2,$s4
    # Line 843
    lw	$s4,5220($s0)
    # Line 849
    move	$s6,$zero
    # Line 846
    lw	$s8,-30032($s7)
    # Line 839
    addu	$s1,$s1,$s3
    # Line 845
    lw	$s3,5088($s0)
    # Line 841
    addu	$s5,$s5,$at
    # Line 838
    lw	$s7,-30028($s7)
    # Line 843
    addu	$s4,$s4,$t8
    # Line 845
    mflo	$t8
    # Line 849
    ld	$a0,72($sp)
    # Line 846
    beqz	$a2,.L0da74650
    # Line 845
    addu	$s3,$s3,$t8
    # Line 849
    li	$v1,417
    sll	$a1,$a0,0x2
    addu	$a1,$a1,$a0
    subu	$v1,$v1,$a1
    blez	$a0,.L0da74650
    sw	$v1,16384($zero)
    nop
    nop
.L0da745e0:
    # Line 852
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 853
    ld	$t9,88($sp)
    # Line 852
    lw	$a2,5124($s0)
    # Line 853
    move	$a0,$s1
    jalr	$t9
    # Line 852
    addu	$s2,$a2,$s2
    # Line 854
    ld	$t9,96($sp)
    # Line 853
    lw	$a3,5204($s0)
    # Line 854
    move	$a0,$s5
    jalr	$t9
    # Line 853
    addu	$s1,$a3,$s1
    # Line 855
    ld	$t9,104($sp)
    # Line 854
    lw	$a4,5176($s0)
    # Line 855
    move	$a0,$s4
    jalr	$t9
    # Line 854
    addu	$s5,$a4,$s5
    # Line 855
    lw	$a5,5224($s0)
    # Line 856
    move	$t9,$s8
    move	$a0,$s3
    jalr	$t9
    # Line 855
    addu	$s4,$a5,$s4
    # Line 851
    ld	$a7,72($sp)
    # Line 856
    lw	$a6,5100($s0)
    # Line 851
    addiu	$s6,$s6,1
    bne	$a7,$s6,.L0da745e0
    # Line 856
    addu	$s3,$a6,$s3
.L0da74650:
    # Line 851
    ld	$t0,80($sp)
    # Line 859
    li	$t2,386
    move	$s6,$zero
    lui	$t1,0xdead
    # Line 851
    beqz	$t0,.L0da746f0
    # Line 859
    ori	$t1,$t1,0xbeef
    sw	$t2,16384($zero)
    ld	$t2,80($sp)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    blez	$t2,.L0da746f0
    sw	$t1,16384($zero)
.L0da74680:
    # Line 861
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 862
    ld	$t9,88($sp)
    # Line 861
    lw	$t3,5124($s0)
    # Line 862
    move	$a0,$s1
    jalr	$t9
    # Line 861
    addu	$s2,$t3,$s2
    # Line 863
    ld	$t9,96($sp)
    # Line 862
    lw	$t8,5204($s0)
    # Line 863
    move	$a0,$s5
    jalr	$t9
    # Line 862
    addu	$s1,$t8,$s1
    # Line 863
    lw	$t9,5176($s0)
    addu	$s5,$t9,$s5
    # Line 864
    ld	$t9,104($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5224($s0)
    # Line 865
    move	$t9,$s8
    # Line 864
    addu	$s4,$ra,$s4
    # Line 865
    jalr	$t9
    move	$a0,$s3
    # Line 860
    ld	$v0,80($sp)
    # Line 865
    lw	$at,5100($s0)
    # Line 860
    addiu	$s6,$s6,1
    bne	$v0,$s6,.L0da74680
    # Line 865
    addu	$s3,$at,$s3
.L0da746f0:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,112($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,120($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 867
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glkonDrawArraysNTIEV

# Function: __glkonDrawArraysCTIEV
# Declared: Line 869 (Source lines: 869-902)
# Address: 0x0da74730 - 0x0da74994 (Size: 612 bytes, Frame: 128)
.ent __glkonDrawArraysCTIEV
__glkonDrawArraysCTIEV:
    # Line 869
    addiu	$sp,$sp,-128
    sd	$s0,24($sp)
    # Line 870
    lw	$s0,4112($zero)
    # Line 872
    lw	$v0,5152($s0)
    mult	$v0,$a1
    # Line 869
    sd	$a3,80($sp)
    sd	$ra,120($sp)
    # Line 874
    lw	$at,5204($s0)
    sd	$s6,112($sp)
    # Line 869
    sd	$s4,16($sp)
    # Line 872
    mflo	$s4
    nop
    nop
    # Line 874
    mult	$at,$a1
    sd	$gp,64($sp)
    # Line 869
    sd	$a2,72($sp)
    sd	$s8,56($sp)
    # Line 876
    lw	$s8,5176($s0)
    # Line 869
    sd	$s5,40($sp)
    sd	$s3,8($sp)
    # Line 874
    mflo	$s3
    nop
    nop
    # Line 876
    mult	$s8,$a1
    # Line 869
    sd	$s7,48($sp)
    sd	$s1,32($sp)
    # Line 873
    lui	$s7,0x1
    # Line 876
    lw	$s5,5168($s0)
    # Line 873
    addu	$s7,$s0,$s7
    # Line 878
    lw	$t8,5224($s0)
    # Line 877
    lw	$a4,-30020($s7)
    # Line 879
    lw	$a5,-30012($s7)
    # Line 876
    mflo	$at
    nop
    nop
    # Line 878
    mult	$t8,$a1
    # Line 879
    sd	$a5,104($sp)
    # Line 877
    sd	$a4,96($sp)
    # Line 869
    sd	$s2,0($sp)
    lui	$v0,0x2
    # Line 880
    lw	$a0,5100($s0)
    # Line 874
    lw	$s1,5192($s0)
    # Line 869
    addiu	$v0,$v0,-14168
    # Line 872
    lw	$s2,5140($s0)
    # Line 878
    mflo	$t8
    nop
    nop
    # Line 880
    mult	$a0,$a1
    # Line 869
    addu	$gp,$t9,$v0
    # Line 875
    lw	$t9,-30016($s7)
    sd	$t9,88($sp)
    # Line 872
    addu	$s2,$s2,$s4
    # Line 878
    lw	$s4,5220($s0)
    # Line 884
    move	$s6,$zero
    # Line 881
    lw	$s8,-30032($s7)
    # Line 874
    addu	$s1,$s1,$s3
    # Line 880
    lw	$s3,5088($s0)
    # Line 876
    addu	$s5,$s5,$at
    # Line 873
    lw	$s7,-30024($s7)
    # Line 878
    addu	$s4,$s4,$t8
    # Line 880
    mflo	$t8
    # Line 884
    ld	$a0,72($sp)
    # Line 881
    beqz	$a2,.L0da748c0
    # Line 880
    addu	$s3,$s3,$t8
    # Line 884
    li	$v1,417
    sll	$a1,$a0,0x2
    addu	$a1,$a1,$a0
    subu	$v1,$v1,$a1
    blez	$a0,.L0da748c0
    sw	$v1,16384($zero)
    nop
    nop
.L0da74850:
    # Line 887
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 888
    ld	$t9,88($sp)
    # Line 887
    lw	$a2,5152($s0)
    # Line 888
    move	$a0,$s1
    jalr	$t9
    # Line 887
    addu	$s2,$a2,$s2
    # Line 889
    ld	$t9,96($sp)
    # Line 888
    lw	$a3,5204($s0)
    # Line 889
    move	$a0,$s5
    jalr	$t9
    # Line 888
    addu	$s1,$a3,$s1
    # Line 890
    ld	$t9,104($sp)
    # Line 889
    lw	$a4,5176($s0)
    # Line 890
    move	$a0,$s4
    jalr	$t9
    # Line 889
    addu	$s5,$a4,$s5
    # Line 890
    lw	$a5,5224($s0)
    # Line 891
    move	$t9,$s8
    move	$a0,$s3
    jalr	$t9
    # Line 890
    addu	$s4,$a5,$s4
    # Line 886
    ld	$a7,72($sp)
    # Line 891
    lw	$a6,5100($s0)
    # Line 886
    addiu	$s6,$s6,1
    bne	$a7,$s6,.L0da74850
    # Line 891
    addu	$s3,$a6,$s3
.L0da748c0:
    # Line 886
    ld	$t0,80($sp)
    # Line 894
    li	$t2,386
    move	$s6,$zero
    lui	$t1,0xdead
    # Line 886
    beqz	$t0,.L0da74960
    # Line 894
    ori	$t1,$t1,0xbeef
    sw	$t2,16384($zero)
    ld	$t2,80($sp)
    sw	$t2,16384($zero)
    sw	$t1,16384($zero)
    blez	$t2,.L0da74960
    sw	$t1,16384($zero)
.L0da748f0:
    # Line 896
    move	$t9,$s7
    jalr	$t9
    move	$a0,$s2
    # Line 897
    ld	$t9,88($sp)
    # Line 896
    lw	$t3,5152($s0)
    # Line 897
    move	$a0,$s1
    jalr	$t9
    # Line 896
    addu	$s2,$t3,$s2
    # Line 898
    ld	$t9,96($sp)
    # Line 897
    lw	$t8,5204($s0)
    # Line 898
    move	$a0,$s5
    jalr	$t9
    # Line 897
    addu	$s1,$t8,$s1
    # Line 898
    lw	$t9,5176($s0)
    addu	$s5,$t9,$s5
    # Line 899
    ld	$t9,104($sp)
    jalr	$t9
    move	$a0,$s4
    lw	$ra,5224($s0)
    # Line 900
    move	$t9,$s8
    # Line 899
    addu	$s4,$ra,$s4
    # Line 900
    jalr	$t9
    move	$a0,$s3
    # Line 895
    ld	$v0,80($sp)
    # Line 900
    lw	$at,5100($s0)
    # Line 895
    addiu	$s6,$s6,1
    bne	$v0,$s6,.L0da748f0
    # Line 900
    addu	$s3,$at,$s3
.L0da74960:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,112($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,120($sp)
    ld	$s7,48($sp)
    ld	$s8,56($sp)
    # Line 902
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.end __glkonDrawArraysCTIEV

# Function: __glkonDrawArraysNCTIEV
# Declared: Line 904 (Source lines: 904-941)
# Address: 0x0da749a0 - 0x0da74c68 (Size: 712 bytes, Frame: 144)
.ent __glkonDrawArraysNCTIEV
__glkonDrawArraysNCTIEV:
    # Line 904
    addiu	$sp,$sp,-144
    sd	$s0,32($sp)
    # Line 905
    lw	$s0,4112($zero)
    # Line 907
    lw	$a4,5124($s0)
    mult	$a4,$a1
    # Line 904
    sd	$a3,80($sp)
    # Line 909
    lw	$a0,5152($s0)
    sd	$ra,128($sp)
    # Line 904
    sd	$s3,8($sp)
    # Line 907
    mflo	$s3
    nop
    nop
    # Line 909
    mult	$a0,$a1
    sd	$s7,136($sp)
    # Line 904
    sd	$s8,56($sp)
    sd	$a2,72($sp)
    # Line 911
    lw	$v1,5204($s0)
    # Line 904
    sd	$s4,24($sp)
    # Line 908
    lui	$at,0x1
    sd	$gp,64($sp)
    # Line 909
    mflo	$a0
    nop
    nop
    # Line 911
    mult	$v1,$a1
    # Line 904
    sd	$s1,40($sp)
    # Line 908
    addu	$at,$s0,$at
    # Line 918
    lw	$s8,-30032($at)
    # Line 904
    sd	$s5,48($sp)
    lui	$s5,0x2
    addiu	$s5,$s5,-14792
    # Line 913
    lw	$v0,5176($s0)
    # Line 917
    lw	$s1,5088($s0)
    # Line 904
    addu	$gp,$t9,$s5
    # Line 913
    lw	$s5,5168($s0)
    # Line 911
    mflo	$v1
    nop
    nop
    # Line 913
    mult	$v0,$a1
    # Line 911
    lw	$s4,5192($s0)
    # Line 916
    lw	$a5,-30012($at)
    sd	$a5,112($sp)
    # Line 915
    lw	$a6,5224($s0)
    # Line 904
    sd	$s2,0($sp)
    # Line 910
    lw	$t9,-30024($at)
    # Line 913
    mflo	$v0
    nop
    nop
    # Line 915
    mult	$a6,$a1
    # Line 910
    sd	$t9,88($sp)
    # Line 908
    lw	$t9,-30028($at)
    # Line 904
    sd	$s6,16($sp)
    # Line 917
    lw	$s6,5100($s0)
    # Line 912
    lw	$t8,-30016($at)
    sd	$t8,120($sp)
    # Line 915
    mflo	$t8
    nop
    nop
    # Line 917
    mult	$s6,$a1
    # Line 907
    lw	$s2,5116($s0)
    # Line 914
    lw	$a4,-30020($at)
    # Line 907
    addu	$s2,$s2,$s3
    # Line 915
    lw	$s3,5220($s0)
    # Line 921
    move	$s7,$zero
    # Line 911
    addu	$s4,$s4,$v1
    # Line 909
    lw	$s6,5140($s0)
    # Line 914
    sd	$a4,104($sp)
    # Line 913
    addu	$s5,$s5,$v0
    # Line 915
    addu	$s3,$s3,$t8
    # Line 908
    sd	$t9,96($sp)
    # Line 909
    addu	$s6,$s6,$a0
    # Line 917
    mflo	$t8
    # Line 921
    ld	$a6,72($sp)
    # Line 918
    beqz	$a2,.L0da74b74
    # Line 917
    addu	$s1,$s1,$t8
    # Line 921
    li	$a5,417
    sll	$a7,$a6,0x2
    subu	$a7,$a7,$a6
    sll	$a7,$a7,0x1
    subu	$a5,$a5,$a7
    blez	$a6,.L0da74b74
    sw	$a5,16384($zero)
    nop
    nop
    nop
.L0da74af0:
    # Line 924
    ld	$t9,96($sp)
    jalr	$t9
    move	$a0,$s2
    # Line 925
    ld	$t9,88($sp)
    # Line 924
    lw	$t0,5124($s0)
    # Line 925
    move	$a0,$s6
    jalr	$t9
    # Line 924
    addu	$s2,$t0,$s2
    # Line 926
    ld	$t9,120($sp)
    # Line 925
    lw	$t1,5152($s0)
    # Line 926
    move	$a0,$s4
    jalr	$t9
    # Line 925
    addu	$s6,$t1,$s6
    # Line 927
    ld	$t9,104($sp)
    # Line 926
    lw	$t2,5204($s0)
    # Line 927
    move	$a0,$s5
    jalr	$t9
    # Line 926
    addu	$s4,$t2,$s4
    # Line 928
    ld	$t9,112($sp)
    # Line 927
    lw	$t3,5176($s0)
    # Line 928
    move	$a0,$s3
    jalr	$t9
    # Line 927
    addu	$s5,$t3,$s5
    # Line 928
    lw	$t8,5224($s0)
    # Line 929
    move	$t9,$s8
    move	$a0,$s1
    jalr	$t9
    # Line 928
    addu	$s3,$t8,$s3
    # Line 923
    ld	$ra,72($sp)
    # Line 929
    lw	$t9,5100($s0)
    # Line 923
    addiu	$s7,$s7,1
    bne	$ra,$s7,.L0da74af0
    # Line 929
    addu	$s1,$t9,$s1
.L0da74b74:
    # Line 923
    ld	$at,80($sp)
    # Line 932
    li	$v1,386
    move	$s7,$zero
    lui	$v0,0xdead
    # Line 923
    beqz	$at,.L0da74c34
    # Line 932
    ori	$v0,$v0,0xbeef
    sw	$v1,16384($zero)
    ld	$v1,80($sp)
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    blez	$v1,.L0da74c34
    sw	$v0,16384($zero)
    nop
    nop
    nop
.L0da74bb0:
    # Line 934
    ld	$t9,96($sp)
    jalr	$t9
    move	$a0,$s2
    lw	$a0,5124($s0)
    # Line 935
    ld	$t9,88($sp)
    # Line 934
    addu	$s2,$a0,$s2
    # Line 935
    jalr	$t9
    move	$a0,$s6
    # Line 936
    ld	$t9,120($sp)
    # Line 935
    lw	$a1,5152($s0)
    # Line 936
    move	$a0,$s4
    jalr	$t9
    # Line 935
    addu	$s6,$a1,$s6
    # Line 937
    ld	$t9,104($sp)
    # Line 936
    lw	$a2,5204($s0)
    # Line 937
    move	$a0,$s5
    jalr	$t9
    # Line 936
    addu	$s4,$a2,$s4
    # Line 938
    ld	$t9,112($sp)
    # Line 937
    lw	$a3,5176($s0)
    # Line 938
    move	$a0,$s3
    jalr	$t9
    # Line 937
    addu	$s5,$a3,$s5
    # Line 938
    lw	$a4,5224($s0)
    # Line 939
    move	$t9,$s8
    move	$a0,$s1
    jalr	$t9
    # Line 938
    addu	$s3,$a4,$s3
    # Line 933
    ld	$a6,80($sp)
    # Line 939
    lw	$a5,5100($s0)
    # Line 933
    addiu	$s7,$s7,1
    bne	$a6,$s7,.L0da74bb0
    # Line 939
    addu	$s1,$a5,$s1
.L0da74c34:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,48($sp)
    ld	$ra,128($sp)
    ld	$s7,136($sp)
    ld	$s8,56($sp)
    # Line 941
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glkonDrawArraysNCTIEV

# Function: __glkonDrawArraysN
# Declared: Line 943 (Source lines: 943-960)
# Address: 0x0da74c70 - 0x0da74d80 (Size: 272 bytes, Frame: 192)
.ent __glkonDrawArraysN
__glkonDrawArraysN:
    # Line 943
    addiu	$sp,$sp,-64
    sd	$s3,8($sp)
    # Line 944
    lw	$s3,4112($zero)
    # Line 946
    lw	$at,5124($s3)
    sd	$s1,56($sp)
    # Line 943
    sd	$s5,32($sp)
    # Line 946
    mult	$at,$a1
    # Line 943
    sd	$s4,16($sp)
    move	$s4,$a3
    sd	$gp,40($sp)
    move	$s5,$a2
    lui	$t8,0x2
    sd	$s0,24($sp)
    # Line 950
    move	$s1,$zero
    # Line 943
    addiu	$t8,$t8,-15512
    sd	$s2,0($sp)
    # Line 947
    li	$s2,0x8ab4
    # Line 943
    addu	$gp,$t9,$t8
    # Line 946
    lw	$s0,5116($s3)
    sd	$ra,48($sp)
    # Line 947
    addu	$s2,$s2,$s3
    # Line 946
    mflo	$t8
    # Line 947
    lw	$s2,0($s2)
    beqz	$a2,.L0da74d0c
    # Line 946
    addu	$s0,$s0,$t8
    # Line 950
    li	$v0,419
    subu	$v0,$v0,$a2
    blez	$a2,.L0da74d0c
    sw	$v0,16384($zero)
    nop
    nop
    nop
.L0da74cf0:
    # Line 953
    move	$t9,$s2
    jalr	$t9
    move	$a0,$s0
    lw	$v1,5124($s3)
    # Line 952
    addiu	$s1,$s1,1
    bne	$s5,$s1,.L0da74cf0
    # Line 953
    addu	$s0,$v1,$s0
.L0da74d0c:
    # Line 956
    move	$s1,$zero
    # Line 952
    beqz	$s4,.L0da74d5c
    ld	$s5,32($sp)
    # Line 956
    lui	$a0,0xdead
    li	$a1,386
    sw	$a1,16384($zero)
    sw	$s4,16384($zero)
    ori	$a0,$a0,0xbeef
    sw	$a0,16384($zero)
    blez	$s4,.L0da74d5c
    sw	$a0,16384($zero)
    nop
    nop
.L0da74d40:
    # Line 958
    move	$t9,$s2
    jalr	$t9
    move	$a0,$s0
    lw	$a2,5124($s3)
    # Line 957
    addiu	$s1,$s1,1
    bne	$s4,$s1,.L0da74d40
    # Line 958
    addu	$s0,$a2,$s0
.L0da74d5c:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$ra,48($sp)
    ld	$s0,24($sp)
    ld	$s1,56($sp)
    # Line 960
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glkonDrawArraysN

