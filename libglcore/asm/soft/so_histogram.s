# Source: ../soft/so_histogram.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_histogram.c
# Total Functions: 20

.text

# Function: __glProcessHistogramArguments
# Declared: Line 37 (Source lines: 47-147)
# Address: 0x0d9df850 - 0x0d9dfc8c (Size: 1084 bytes, Frame: 0)
.globl __glProcessHistogramArguments
.ent __glProcessHistogramArguments
__glProcessHistogramArguments:
    # Line 47
    li	$a5,0x8045
    sltu	$at,$a1,$a5
    bnez	$at,.L0d9df8c4
    sltu	$v0,$a5,$a1
    beqz	$v0,.L0d9df978
    li	$a5,0x8053
    sltu	$v1,$a1,$a5
    bnez	$v1,.L0d9df9f4
    sltu	$a4,$a5,$a1
    beqz	$a4,.L0d9dfa4c
    # Line 98
    li	$t1,32
    # Line 47
    li	$a5,0x8058
    sltu	$a6,$a1,$a5
    bnez	$a6,.L0d9dfb38
    sltu	$a7,$a5,$a1
    beqz	$a7,.L0d9df9cc
    # Line 115
    li	$t8,32
    # Line 47
    li	$a5,0x805a
    sltu	$t0,$a1,$a5
    bnez	$t0,.L0d9dfc6c
    li	$v0,0x8059
    sltu	$t1,$a5,$a1
    beqz	$t1,.L0d9df9cc
    # Line 115
    li	$t8,32
    # Line 47
    li	$t2,0x805b
    bne	$a1,$t2,.L0d9dfb10
    nop
    b	.L0d9df9cc
    # Line 115
    li	$t8,32
.L0d9df8c4:
    # Line 47
    li	$a5,0x803c
    sltu	$t3,$a1,$a5
    bnez	$t3,.L0d9df964
    sltiu	$a4,$a1,6410
    sltu	$t8,$a5,$a1
    bnez	$t8,.L0d9dfa74
    li	$a5,0x8041
    li	$a5,6406
.L0d9df8e4:
    # Line 53
    sw	$zero,0($a2)
.L0d9df8e8:
    # Line 54
    sw	$zero,4($a2)
    # Line 55
    sw	$zero,8($a2)
    # Line 56
    li	$at,32
    sw	$at,12($a2)
    # Line 57
    sw	$zero,16($a2)
    # Line 58
    li	$t9,1
    sw	$t9,20($a2)
    # Line 59
    sw	$a5,0($a3)
.L0d9df908:
    # Line 125
    bltz	$a0,.L0d9df9a4
    nop
.L0d9df910:
    # Line 128
    lw	$v0,20($a2)
    li	$a1,0x8000
    sll	$v0,$v0,0x2
    divu	$zero,$a1,$v0
    mflo	$v1
    sltu	$v1,$v1,$a0
    bnez	$v1,.L0d9df9ac
    teq	$v0,$zero,0x7
    # Line 136
    beqz	$a0,.L0d9df95c
    nop
.L0d9df938:
    # Line 142
    andi	$v1,$a0,0x1
    beqz	$v1,.L0d9df954
    sra	$a1,$a0,0x1
    beqz	$a1,.L0d9df954
    nop
    # Line 124
    jr	$ra
    # Line 143
    li	$v0,1281
.L0d9df954:
    # Line 141
    bnez	$a1,.L0d9df938
    move	$a0,$a1
.L0d9df95c:
    # Line 124
    jr	$ra
    # Line 147
    move	$v0,$zero
.L0d9df964:
    # Line 47
    bnez	$a4,.L0d9df9b4
    sltiu	$a5,$a1,6408
    sltiu	$a5,$a1,6411
    beqz	$a5,.L0d9dfadc
    li	$a5,0x8000
.L0d9df978:
    # Line 81
    sw	$zero,0($a2)
.L0d9df97c:
    # Line 82
    sw	$zero,4($a2)
    # Line 83
    sw	$zero,8($a2)
    # Line 84
    li	$t0,32
    sw	$t0,12($a2)
    # Line 85
    sw	$t0,16($a2)
    # Line 86
    li	$a7,2
    sw	$a7,20($a2)
    # Line 87
    li	$a6,6410
    # Line 125
    bgez	$a0,.L0d9df910
    # Line 87
    sw	$a6,0($a3)
.L0d9df9a4:
    # Line 124
    jr	$ra
    # Line 128
    li	$v0,1281
.L0d9df9ac:
    # Line 124
    jr	$ra
    # Line 136
    li	$v0,0x8031
.L0d9df9b4:
    # Line 47
    bnez	$a5,.L0d9dfa3c
    sltiu	$a6,$a1,6407
    sltiu	$t1,$a1,6409
    beqz	$t1,.L0d9dfb08
    li	$a5,6409
    # Line 115
    li	$t8,32
.L0d9df9cc:
    sw	$t8,0($a2)
    # Line 116
    sw	$t8,4($a2)
    # Line 117
    sw	$t8,8($a2)
    # Line 118
    sw	$t8,12($a2)
    # Line 119
    sw	$zero,16($a2)
    # Line 120
    li	$t3,4
    sw	$t3,20($a2)
    # Line 121
    li	$t2,6408
    # Line 122
    b	.L0d9df908
    # Line 121
    sw	$t2,0($a3)
.L0d9df9f4:
    # Line 47
    li	$a5,0x804f
    sltu	$t9,$a1,$a5
    bnez	$t9,.L0d9dfab4
    sltu	$at,$a5,$a1
    beqz	$at,.L0d9dfa4c
    # Line 98
    li	$t1,32
    # Line 47
    li	$a5,0x8051
    sltu	$v0,$a1,$a5
    bnez	$v0,.L0d9dfc1c
    li	$t2,0x8050
    sltu	$v1,$a5,$a1
    beqz	$v1,.L0d9dfa4c
    # Line 98
    li	$t1,32
    # Line 47
    li	$a4,0x8052
    bne	$a1,$a4,.L0d9dfb10
    nop
    b	.L0d9dfa4c
    # Line 98
    li	$t1,32
.L0d9dfa3c:
    # Line 47
    bnez	$a6,.L0d9dfbe4
    nop
    beqz	$a5,.L0d9dfb10
    # Line 98
    li	$t1,32
.L0d9dfa4c:
    sw	$t1,0($a2)
    # Line 99
    sw	$t1,4($a2)
    # Line 100
    sw	$t1,8($a2)
    # Line 101
    sw	$zero,12($a2)
    # Line 102
    sw	$zero,16($a2)
    # Line 103
    li	$t0,3
    sw	$t0,20($a2)
    # Line 104
    li	$a7,6407
    # Line 105
    b	.L0d9df908
    # Line 104
    sw	$a7,0($a3)
.L0d9dfa74:
    # Line 47
    sltu	$t2,$a1,$a5
    bnez	$t2,.L0d9dfb18
    sltu	$t3,$a5,$a1
    bnez	$t3,.L0d9dfb98
    li	$a5,0x8043
    li	$a5,6409
.L0d9dfa8c:
    # Line 66
    sw	$zero,0($a2)
    # Line 67
    sw	$zero,4($a2)
    # Line 68
    sw	$zero,8($a2)
    # Line 69
    sw	$zero,12($a2)
    # Line 70
    li	$t9,32
    sw	$t9,16($a2)
    # Line 71
    li	$t8,1
    sw	$t8,20($a2)
    # Line 73
    b	.L0d9df908
    # Line 72
    sw	$a5,0($a3)
.L0d9dfab4:
    # Line 47
    li	$a5,0x8048
    sltu	$at,$a1,$a5
    bnez	$at,.L0d9dfb64
    sltu	$v0,$a5,$a1
    beqz	$v0,.L0d9df978
    li	$v1,0x804e
    bne	$a1,$v1,.L0d9dfb10
    nop
    b	.L0d9dfa4c
    # Line 98
    li	$t1,32
.L0d9dfadc:
    # Line 47
    sltu	$a4,$a1,$a5
    bnez	$a4,.L0d9dfb88
    li	$v0,10768
    sltu	$a6,$a5,$a1
    beqz	$a6,.L0d9df9cc
    # Line 115
    li	$t8,32
    # Line 47
    li	$a7,0x803b
    bne	$a1,$a7,.L0d9dfb10
    nop
    b	.L0d9df8e4
    li	$a5,6406
.L0d9dfb08:
    beq	$a5,$a1,.L0d9dfa8c
    nop
.L0d9dfb10:
    # Line 124
    jr	$ra
    li	$v0,1280
.L0d9dfb18:
    # Line 47
    li	$a5,0x803f
    sltu	$t0,$a1,$a5
    bnez	$t0,.L0d9dfbc0
    sltu	$t1,$a5,$a1
    bnez	$t1,.L0d9dfc4c
    li	$t9,0x8040
    b	.L0d9dfa8c
    li	$a5,6409
.L0d9dfb38:
    li	$a5,0x8056
    sltu	$t2,$a1,$a5
    bnez	$t2,.L0d9dfbf8
    sltu	$t3,$a5,$a1
    beqz	$t3,.L0d9df9cc
    # Line 115
    li	$t8,32
    # Line 47
    li	$t8,0x8057
    bne	$a1,$t8,.L0d9dfb10
    nop
    b	.L0d9df9cc
    # Line 115
    li	$t8,32
.L0d9dfb64:
    # Line 47
    li	$a5,0x8047
    sltu	$t9,$a1,$a5
    bnez	$t9,.L0d9dfc2c
    li	$t3,0x8046
    sltu	$at,$a5,$a1
    beqz	$at,.L0d9df978
    nop
    b	.L0d9dfb10
    nop
.L0d9dfb88:
    bne	$a1,$v0,.L0d9dfb10
    nop
    b	.L0d9dfa4c
    # Line 98
    li	$t1,32
.L0d9dfb98:
    # Line 47
    sltu	$v1,$a1,$a5
    bnez	$v1,.L0d9dfc3c
    li	$t8,0x8042
    sltu	$a4,$a5,$a1
    beqz	$a4,.L0d9df978
    li	$a5,0x8044
    bne	$a1,$a5,.L0d9dfb10
    nop
    b	.L0d9df97c
    # Line 81
    sw	$zero,0($a2)
.L0d9dfbc0:
    # Line 47
    li	$a5,0x803e
    sltu	$a6,$a1,$a5
    bnez	$a6,.L0d9dfc5c
    li	$at,0x803d
    sltu	$a7,$a5,$a1
    bnez	$a7,.L0d9dfb10
    nop
    b	.L0d9df8e4
    li	$a5,6406
.L0d9dfbe4:
    li	$a5,6406
    bne	$a5,$a1,.L0d9dfb10
    nop
    b	.L0d9df8e8
    # Line 53
    sw	$zero,0($a2)
.L0d9dfbf8:
    # Line 47
    li	$a5,0x8055
    sltu	$t0,$a1,$a5
    bnez	$t0,.L0d9dfc7c
    li	$v1,0x8054
    sltu	$t1,$a5,$a1
    beqz	$t1,.L0d9df9cc
    # Line 115
    li	$t8,32
    b	.L0d9dfb10
    nop
.L0d9dfc1c:
    # Line 47
    bne	$a1,$t2,.L0d9dfb10
    nop
    b	.L0d9dfa4c
    # Line 98
    li	$t1,32
.L0d9dfc2c:
    # Line 47
    bne	$a1,$t3,.L0d9dfb10
    nop
    b	.L0d9df97c
    # Line 81
    sw	$zero,0($a2)
.L0d9dfc3c:
    # Line 47
    bne	$a1,$t8,.L0d9dfb10
    nop
    b	.L0d9dfa8c
    li	$a5,6409
.L0d9dfc4c:
    bne	$a1,$t9,.L0d9dfb10
    nop
    b	.L0d9dfa8c
    li	$a5,6409
.L0d9dfc5c:
    bne	$a1,$at,.L0d9dfb10
    nop
    b	.L0d9df8e4
    li	$a5,6406
.L0d9dfc6c:
    bne	$a1,$v0,.L0d9dfb10
    nop
    b	.L0d9df9cc
    # Line 115
    li	$t8,32
.L0d9dfc7c:
    # Line 47
    bne	$a1,$v1,.L0d9dfb10
    nop
    b	.L0d9dfa4c
    # Line 98
    li	$t1,32
.end __glProcessHistogramArguments

# Function: __glInitHistogramStore
# Declared: Line 151 (Source lines: 154-187)
# Address: 0x0d9dfc90 - 0x0d9dfd54 (Size: 196 bytes, Frame: 0)
.globl __glInitHistogramStore
.ent __glInitHistogramStore
__glInitHistogramStore:
    # Line 158
    li	$a3,1
    sw	$a3,124($a1)
    # Line 157
    sw	$zero,120($a1)
    # Line 156
    sw	$zero,132($a1)
    # Line 155
    sw	$zero,128($a1)
    # Line 154
    li	$v1,4
    sw	$v1,148($a1)
    # Line 161
    li	$v0,6409
    # Line 159
    lw	$at,168($a1)
    # Line 161
    li	$a0,6410
    beq	$a2,$v0,.L0d9dfd10
    # Line 159
    sw	$at,140($a1)
    # Line 161
    beq	$a2,$a0,.L0d9dfd24
    # Line 168
    li	$t0,5126
    # Line 161
    li	$a3,6407
    beq	$a3,$a2,.L0d9dfd30
    # Line 172
    li	$t1,5126
    # Line 161
    li	$a3,6408
    beq	$a3,$a2,.L0d9dfd3c
    # Line 176
    li	$t2,5126
    # Line 161
    li	$a3,6406
    beq	$a3,$a2,.L0d9dfd48
    # Line 180
    li	$t3,5126
    # Line 161
    li	$a3,0x8049
    beq	$a2,$a3,.L0d9dfd00
    # Line 184
    li	$a5,5126
    # Line 187
    jr	$ra
    nop
.L0d9dfd00:
    # Line 184
    sw	$a5,84($a1)
    # Line 183
    li	$a4,6403
    # Line 187
    jr	$ra
    # Line 183
    sw	$a4,80($a1)
.L0d9dfd10:
    # Line 164
    li	$a7,5126
    sw	$a7,84($a1)
    # Line 163
    li	$a6,6403
    # Line 187
    jr	$ra
    # Line 163
    sw	$a6,80($a1)
.L0d9dfd24:
    # Line 168
    sw	$t0,84($a1)
    # Line 187
    jr	$ra
    # Line 167
    sw	$a3,80($a1)
.L0d9dfd30:
    # Line 172
    sw	$t1,84($a1)
    # Line 187
    jr	$ra
    # Line 171
    sw	$a3,80($a1)
.L0d9dfd3c:
    # Line 176
    sw	$t2,84($a1)
    # Line 187
    jr	$ra
    # Line 175
    sw	$a3,80($a1)
.L0d9dfd48:
    # Line 180
    sw	$t3,84($a1)
    # Line 187
    jr	$ra
    # Line 179
    sw	$a3,80($a1)
.end __glInitHistogramStore

# Function: __glInitHistogramUnpack
# Declared: Line 194 (Source lines: 198-208)
# Address: 0x0d9dfd60 - 0x0d9dfde8 (Size: 136 bytes, Frame: 224)
.globl __glInitHistogramUnpack
.ent __glInitHistogramUnpack
__glInitHistogramUnpack:
    # Line 198
    addiu	$sp,$sp,-96
    sd	$a1,24($sp)
    sd	$ra,0($sp)
    # Line 199
    mtc1	$zero,$f1
    # Line 198
    sd	$s8,8($sp)
    # Line 199
    swc1	$f1,196($a1)
    # Line 200
    lwc1	$f0,3544($a0)
    # Line 205
    sw	$a6,8($a1)
    # Line 204
    sw	$a5,4($a1)
    # Line 203
    sw	$a4,0($a1)
    # Line 202
    sw	$a3,172($a1)
    # Line 198
    lui	$v0,0xb
    # Line 201
    sw	$a2,180($a1)
    # Line 198
    addiu	$v0,$v0,4728
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 206
    # lw $t9, -28096($gp) # &__glInitHistogramStore
    # Line 201
    sw	$a2,184($a1)
    # Line 198
    move	$s8,$a0
    # Line 201
    sw	$a2,168($a1)
    # Line 206
    nop
    # Line 198
    move	$a2,$a7
    # Line 206
    bal __glInitHistogramStore
    # Line 200
    swc1	$f0,160($a1)
    # Line 207
    # lw $t9, -30256($gp) # &__glLoadUnpackModes
    ld	$a1,24($sp)
    move	$a0,$s8
    jal	__glLoadUnpackModes
    lbu	$a2,103($sp)
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 208
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glInitHistogramUnpack

# Function: __glim_ResetHistogramEXT
# Declared: Line 216 (Source lines: 217-232)
# Address: 0x0d9dfdf0 - 0x0d9dfe90 (Size: 160 bytes, Frame: 32)
.globl __glim_ResetHistogramEXT
.ent __glim_ResetHistogramEXT
__glim_ResetHistogramEXT:
    # Line 217
    addiu	$sp,$sp,-32
    # Line 219
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 217
    lui	$v1,0xb
    # Line 219
    li	$a1,0x8024
    sd	$ra,16($sp)
    # Line 217
    addiu	$v1,$v1,4584
    sd	$gp,8($sp)
    # Line 219
    beq	$at,$v0,.L0d9dfe7c
    # Line 217
    addu	$gp,$t9,$v1
    # Line 219
    beq	$a0,$a1,.L0d9dfe40
    sd	$a2,0($sp)
    # Line 222
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0d9dfe34:
    # Line 232
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9dfe40:
    # Line 228
    # lw $t9, -29952($gp) # &__glElementsPerGroup
    ld	$a0,0($sp)
    jal	__glElementsPerGroup
    lw	$a0,1276($a0)
    ld	$a0,0($sp)
    lw	$a1,1248($a0)
    mult	$a1,$v0
    # lw $t9, -18456($gp) # &memset
    move	$a1,$zero
    lw	$a0,1244($a0)
    mflo	$a2
    jal	memset
    sll	$a2,$a2,0x2
    b	.L0d9dfe34
    ld	$ra,16($sp)
.L0d9dfe7c:
    # Line 219
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dfe34
    ld	$ra,16($sp)
.end __glim_ResetHistogramEXT

# Function: __glim_HistogramEXT
# Declared: Line 238 (Source lines: 240-302)
# Address: 0x0d9dfe90 - 0x0d9e0060 (Size: 464 bytes, Frame: 224)
.globl __glim_HistogramEXT
.ent __glim_HistogramEXT
__glim_HistogramEXT:
    # Line 245
    lw	$a6,4112($zero)
    # Line 240
    addiu	$sp,$sp,-96
    # Line 245
    lw	$at,4120($zero)
    # Line 240
    sd	$s0,64($sp)
    # Line 245
    li	$v0,1
    # Line 240
    lui	$v1,0xb
    move	$s0,$a0
    sd	$ra,80($sp)
    addiu	$v1,$v1,4424
    sd	$gp,72($sp)
    # Line 245
    beq	$at,$v0,.L0d9e004c
    # Line 240
    addu	$gp,$t9,$v1
    sd	$a3,56($sp)
    sd	$a6,48($sp)
    # Line 247
    li	$a0,0x8024
    sd	$a2,40($sp)
    li	$v0,0x8025
    beq	$s0,$a0,.L0d9dff04
    sd	$a1,32($sp)
    beq	$v0,$s0,.L0d9dff08
    # Line 256
    nop	# was lw $t9, -28100($gp) # &__glProcessHistogramArguments
    # Line 252
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,80($sp)
.L0d9dfef4:
    ld	$s0,64($sp)
    # Line 302
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9dff04:
    # Line 256
    # lw $t9, -28100($gp) # &__glProcessHistogramArguments
.L0d9dff08:
    ld	$a0,32($sp)
    addiu	$a3,$sp,24
    ld	$a1,40($sp)
    bal __glProcessHistogramArguments
    addiu	$a2,$sp,0
    ld	$ra,80($sp)
    beqz	$v0,.L0d9dff80
    li	$a6,0x8025
    # Line 259
    bne	$a6,$s0,.L0d9dff70
    # Line 272
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 269
    ld	$a2,48($sp)
    # Line 259
    li	$a1,0x8031
    bne	$v0,$a1,.L0d9dff6c
    # Line 302
    ld	$s0,64($sp)
    # Line 269
    sw	$zero,1320($a2)
    # Line 268
    sw	$zero,1316($a2)
    # Line 267
    sw	$zero,1312($a2)
    # Line 266
    sw	$zero,1308($a2)
    # Line 265
    sw	$zero,1304($a2)
    # Line 264
    sw	$zero,1300($a2)
    # Line 263
    sw	$zero,1296($a2)
    # Line 302
    ld	$gp,72($sp)
    addiu	$sp,$sp,96
    jr	$ra
    # Line 262
    sw	$zero,1292($a2)
.L0d9dff6c:
    # Line 272
    # lw $t9, -28616($gp) # &__glSetError
.L0d9dff70:
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9dfef4
    ld	$ra,80($sp)
.L0d9dff80:
    # Line 273
    bne	$a6,$s0,.L0d9dff94
    # Line 281
    ld	$a1,48($sp)
    # Line 277
    ld	$s0,48($sp)
    b	.L0d9dfff8
    addiu	$s0,$s0,1288
.L0d9dff94:
    # Line 282
    ld	$a3,32($sp)
    # Line 281
    lw	$a5,24($sp)
    # Line 282
    addiu	$a4,$a3,-1
    sw	$a4,1284($a1)
    # Line 281
    sw	$a5,1276($a1)
    # Line 284
    lw	$a2,20($sp)
    mult	$a2,$a3
    lw	$t9,8($a1)
    move	$a0,$a1
    # Line 279
    addiu	$s0,$a1,1244
    # Line 284
    lw	$a1,1244($a1)
    mflo	$a2
    jalr	$t9
    sll	$a2,$a2,0x2
    ld	$a5,48($sp)
    # Line 290
    ld	$a4,32($sp)
    # Line 284
    sw	$v0,1244($a5)
    # Line 290
    lw	$a3,20($sp)
    mult	$a3,$a4
    # lw $t9, -18456($gp) # &memset
    # Line 284
    move	$a0,$v0
    # Line 290
    move	$a1,$zero
    mflo	$a2
    jal	memset
    sll	$a2,$a2,0x2
.L0d9dfff8:
    # Line 302
    ld	$gp,72($sp)
    ld	$ra,80($sp)
    # Line 293
    ld	$t9,32($sp)
    # Line 294
    ld	$t8,40($sp)
    # Line 295
    ld	$t3,56($sp)
    sb	$t3,36($s0)
    # Line 294
    sw	$t8,28($s0)
    # Line 293
    sw	$t9,4($s0)
    # Line 297
    lw	$t2,0($sp)
    sw	$t2,8($s0)
    # Line 298
    lw	$t1,4($sp)
    sw	$t1,12($s0)
    # Line 299
    lw	$t0,8($sp)
    sw	$t0,16($s0)
    # Line 300
    lw	$a7,12($sp)
    sw	$a7,20($s0)
    # Line 301
    lw	$a6,16($sp)
    sw	$a6,24($s0)
    # Line 302
    ld	$s0,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9e004c:
    # Line 245
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9dfef4
    ld	$ra,80($sp)
.end __glim_HistogramEXT

# Function: __glCheckGetArguments
# Declared: Line 305 (Source lines: 306-368)
# Address: 0x0d9e0060 - 0x0d9e0388 (Size: 808 bytes, Frame: 16)
.globl __glCheckGetArguments
.ent __glCheckGetArguments
__glCheckGetArguments:
    # Line 307
    sltiu	$v0,$a0,6408
    # Line 306
    lui	$at,0xb
    addiu	$sp,$sp,-16
    addiu	$at,$at,3960
    sd	$gp,0($sp)
    # Line 307
    bnez	$v0,.L0d9e00bc
    # Line 306
    addu	$gp,$t9,$at
    # Line 307
    sltiu	$v0,$a0,6409
    bnez	$v0,.L0d9e00fc
    li	$v0,0x8000
    sltu	$v1,$a0,$v0
    bnez	$v1,.L0d9e0240
    sltu	$a2,$v0,$a0
    beqz	$a2,.L0d9e00fc
    li	$v0,0x80e1
    sltu	$a3,$a0,$v0
    li	$t8,0x80e0
    bnez	$a3,.L0d9e0330
    sltu	$a4,$v0,$a0
    beqz	$a4,.L0d9e0100
    # Line 325
    li	$v0,0x8034
    b	.L0d9e021c
    sd	$ra,8($sp)
.L0d9e00bc:
    # Line 307
    sltiu	$v0,$a0,6405
    bnez	$v0,.L0d9e00e8
    sltiu	$a5,$a0,6406
    bnez	$a5,.L0d9e00fc
    sltiu	$a6,$a0,6407
    bnez	$a6,.L0d9e02fc
    sltiu	$a7,$a0,6408
    bnez	$a7,.L0d9e0100
    # Line 325
    li	$v0,0x8034
    b	.L0d9e021c
    sd	$ra,8($sp)
.L0d9e00e8:
    # Line 307
    sltiu	$t0,$a0,6404
    bnez	$t0,.L0d9e0218
    li	$t9,6403
    beqz	$v0,.L0d9e0220
    # Line 321
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e00fc:
    # Line 325
    li	$v0,0x8034
.L0d9e0100:
    sltu	$t1,$a1,$v0
    bnez	$t1,.L0d9e0150
    sltu	$t2,$v0,$a1
    beqz	$t2,.L0d9e01dc
    li	$v0,0x8364
    sltu	$t3,$a1,$v0
    bnez	$t3,.L0d9e0260
    sltu	$t8,$v0,$a1
    beqz	$t8,.L0d9e017c
    # Line 338
    li	$a5,6407
    # Line 325
    li	$v0,0x8367
    sltu	$t9,$a1,$v0
    bnez	$t9,.L0d9e0340
    sltu	$at,$v0,$a1
    beqz	$at,.L0d9e01dc
    li	$v0,0x8368
    beq	$a1,$v0,.L0d9e01e0
    # Line 354
    li	$t2,6408
    b	.L0d9e02a8
    sd	$ra,8($sp)
.L0d9e0150:
    # Line 325
    sltiu	$v1,$a1,5124
    bnez	$v1,.L0d9e019c
    sltiu	$a2,$a1,5125
    bnez	$a2,.L0d9e01b8
    li	$v0,0x8032
    sltu	$a3,$a1,$v0
    bnez	$a3,.L0d9e02cc
    sltu	$a4,$v0,$a1
    bnez	$a4,.L0d9e0310
    li	$t2,0x8033
.L0d9e0178:
    # Line 338
    li	$a5,6407
.L0d9e017c:
    beq	$a0,$a5,.L0d9e01b8
    # Line 342
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 343
    b	.L0d9e01bc
    li	$v0,1
.L0d9e019c:
    # Line 325
    sltiu	$v0,$a1,5122
    bnez	$v0,.L0d9e0288
    sltiu	$a6,$a1,5123
    bnez	$a6,.L0d9e01b8
    li	$a7,5123
    bne	$a1,$a7,.L0d9e02ac
    # Line 365
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e01b8:
    # Line 368
    move	$v0,$zero
.L0d9e01bc:
    # Line 322
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e01c8:
    # Line 325
    li	$v0,0x8036
    sltu	$t0,$a1,$v0
    bnez	$t0,.L0d9e0360
    sltu	$t1,$v0,$a1
    bnez	$t1,.L0d9e02a8
.L0d9e01dc:
    # Line 354
    li	$t2,6408
.L0d9e01e0:
    beq	$a0,$t2,.L0d9e01b8
    li	$t3,0x8000
    beq	$a0,$t3,.L0d9e01b8
    li	$t8,0x80e1
    beq	$a0,$t8,.L0d9e01b8
    # Line 360
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 361
    li	$v0,1
    # Line 322
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0218:
    # Line 307
    beq	$a0,$t9,.L0d9e00fc
.L0d9e021c:
    # Line 321
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0220:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 322
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0240:
    # Line 307
    sltiu	$at,$a0,6410
    bnez	$at,.L0d9e02ec
    li	$t0,6409
    sltiu	$v0,$a0,6411
    bnez	$v0,.L0d9e0100
    # Line 325
    li	$v0,0x8034
    b	.L0d9e021c
    sd	$ra,8($sp)
.L0d9e0260:
    li	$v0,0x8362
    sltu	$v1,$a1,$v0
    bnez	$v1,.L0d9e01c8
    sltu	$a2,$v0,$a1
    beqz	$a2,.L0d9e0178
    li	$a3,0x8363
    beq	$a1,$a3,.L0d9e017c
    # Line 338
    li	$a5,6407
    b	.L0d9e02a8
    sd	$ra,8($sp)
.L0d9e0288:
    # Line 325
    sltiu	$a4,$a1,5121
    bnez	$a4,.L0d9e02a4
    li	$a5,5120
    bnez	$v0,.L0d9e01bc
    # Line 368
    move	$v0,$zero
    b	.L0d9e02a8
    sd	$ra,8($sp)
.L0d9e02a4:
    # Line 325
    beq	$a1,$a5,.L0d9e01b8
.L0d9e02a8:
    # Line 365
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e02ac:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 366
    li	$v0,1
    # Line 322
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e02cc:
    # Line 325
    sltiu	$a6,$a1,5126
    bnez	$a6,.L0d9e0320
    li	$t3,5125
    sltiu	$a7,$a1,5127
    bnez	$a7,.L0d9e01bc
    # Line 368
    move	$v0,$zero
    b	.L0d9e02a8
    sd	$ra,8($sp)
.L0d9e02ec:
    # Line 307
    beq	$a0,$t0,.L0d9e0100
    # Line 325
    li	$v0,0x8034
    b	.L0d9e021c
    sd	$ra,8($sp)
.L0d9e02fc:
    # Line 307
    li	$t1,6406
    beq	$a0,$t1,.L0d9e0100
    # Line 325
    li	$v0,0x8034
    b	.L0d9e021c
    sd	$ra,8($sp)
.L0d9e0310:
    beq	$a1,$t2,.L0d9e01e0
    # Line 354
    li	$t2,6408
    b	.L0d9e02a8
    sd	$ra,8($sp)
.L0d9e0320:
    # Line 325
    beq	$a1,$t3,.L0d9e01bc
    # Line 368
    move	$v0,$zero
    b	.L0d9e02a8
    sd	$ra,8($sp)
.L0d9e0330:
    # Line 307
    beq	$a0,$t8,.L0d9e0100
    # Line 325
    li	$v0,0x8034
    b	.L0d9e021c
    sd	$ra,8($sp)
.L0d9e0340:
    li	$v0,0x8366
    sltu	$t9,$a1,$v0
    bnez	$t9,.L0d9e0374
    sltu	$at,$v0,$a1
    beqz	$at,.L0d9e01e0
    # Line 354
    li	$t2,6408
    b	.L0d9e02a8
    sd	$ra,8($sp)
.L0d9e0360:
    # Line 325
    li	$v0,0x8035
    beq	$a1,$v0,.L0d9e01e0
    # Line 354
    li	$t2,6408
    b	.L0d9e02a8
    sd	$ra,8($sp)
.L0d9e0374:
    # Line 325
    li	$v1,0x8365
    beq	$a1,$v1,.L0d9e01e0
    # Line 354
    li	$t2,6408
    b	.L0d9e02a8
    sd	$ra,8($sp)
.end __glCheckGetArguments

# Function: __glSetValue
# Declared: Line 376 (Source lines: 380-392)
# Address: 0x0d9e0390 - 0x0d9e03c4 (Size: 52 bytes, Frame: 0)
.globl __glSetValue
.ent __glSetValue
__glSetValue:
    # Line 380
    li	$at,5125
    beq	$a2,$at,.L0d9e03b4
    li	$v0,5126
    beq	$a2,$v0,.L0d9e03ac
    nop
    # Line 392
    jr	$ra
    nop
.L0d9e03ac:
    jr	$ra
    # Line 387
    swc1	$f13,0($a0)
.L0d9e03b4:
    # Line 383
    trunc.l.s	$f0,$f13
    dmfc1	$v1,$f0
    # Line 392
    jr	$ra
    # Line 383
    sw	$v1,0($a0)
.end __glSetValue

# Function: __glResetArray
# Declared: Line 428 (Source lines: 431-569)
# Address: 0x0d9e03d0 - 0x0d9e079c (Size: 972 bytes, Frame: 240)
.globl __glResetArray
.ent __glResetArray
__glResetArray:
    # Line 431
    addiu	$sp,$sp,-112
    sd	$s7,96($sp)
    sd	$s5,88($sp)
    sd	$s1,80($sp)
    sd	$s0,72($sp)
    sd	$s4,64($sp)
    sd	$ra,56($sp)
    sd	$s2,48($sp)
    sd	$s8,32($sp)
    move	$s8,$a5
    sd	$s3,40($sp)
    sd	$s6,16($sp)
    # Line 453
    li	$at,5125
    # Line 431
    lui	$v0,0xb
    move	$s6,$a4
    sdc1	$f20,8($sp)
    addiu	$v0,$v0,3080
    mov.s	$f20,$f18
    sd	$gp,24($sp)
    # Line 453
    beq	$a5,$at,.L0d9e067c
    # Line 431
    addu	$gp,$t9,$v0
    # Line 453
    li	$v1,5126
    beq	$a5,$v1,.L0d9e06fc
.L0d9e042c:
    # Line 465
    li	$a5,6409
    beq	$a5,$a0,.L0d9e0688
    li	$a4,6406
    beq	$a0,$a4,.L0d9e0708
    li	$a6,6410
    beq	$a0,$a6,.L0d9e0718
    li	$a7,6407
    beq	$a0,$a7,.L0d9e0728
    li	$t0,6408
    beq	$a0,$t0,.L0d9e0738
    move	$a0,$zero
.L0d9e0458:
    # Line 491
    sltiu	$a4,$a1,6408
    bnez	$a4,.L0d9e062c
    sltiu	$t1,$a1,6409
    bnez	$t1,.L0d9e04a4
    # Line 512
    andi	$ra,$a0,0x3f
    # Line 491
    li	$a4,0x8000
    sltu	$t2,$a1,$a4
    bnez	$t2,.L0d9e0694
    sltiu	$t2,$a1,6410
    sltu	$t3,$a4,$a1
    li	$a4,0x80e1
    sltu	$t9,$a4,$a1
    beqz	$t3,.L0d9e04a0
    sltu	$t8,$a1,$a4
    bnez	$t8,.L0d9e0770
    li	$t3,0x80e0
    bnez	$t9,.L0d9e05f8
    ld	$s7,96($sp)
.L0d9e04a0:
    # Line 512
    andi	$ra,$a0,0x3f
.L0d9e04a4:
    beqz	$ra,.L0d9e05f8
    ld	$s7,96($sp)
    # Line 518
    li	$a1,63
.L0d9e04b0:
    # Line 539
    lw	$t9,4($sp)
.L0d9e04b4:
    lw	$a4,0($sp)
    mult	$t9,$a4
    mflo	$s7
    nop
    nop
    mult	$s7,$a3
    # Line 540
    slt	$t8,$a3,$s6
    move	$s4,$a3
    # Line 539
    mflo	$s0
    # Line 540
    beqz	$t8,.L0d9e05f4
    # Line 539
    addu	$s0,$a2,$s0
    # Line 540
    addu	$s1,$a4,$s0
    and	$s5,$a1,$a0
    addu	$s2,$a4,$a4
    sll	$s3,$a4,0x2
    addu	$s2,$s2,$s0
    subu	$s3,$s3,$a4
    b	.L0d9e0780
    addu	$s3,$s3,$s0
.L0d9e0500:
    # Line 555
    move	$a0,$s3
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s8
.L0d9e0510:
    # Line 557
    # lw $t9, -28080($gp) # &__glSetValue
    move	$a0,$s2
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s8
.L0d9e0524:
    # Line 559
    # lw $t9, -28080($gp) # &__glSetValue
    move	$a0,$s1
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s8
.L0d9e0538:
    # Line 562
    # lw $t9, -28080($gp) # &__glSetValue
    move	$a0,$s0
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s8
.L0d9e054c:
    # Line 567
    addu	$s1,$s7,$s1
.L0d9e0550:
    addu	$s2,$s7,$s2
    addu	$s3,$s7,$s3
    # Line 540
    sltiu	$a2,$s5,40
    la	$a0,.rodata
    # Line 567
    addu	$s0,$s7,$s0
    # Line 540
    addiu	$s4,$s4,1
    sll	$a1,$s5,0x2
    addiu	$a0,$a0,3944
    beq	$s6,$s4,.L0d9e05f4
    addu	$a0,$a0,$a1
.L0d9e0578:
    beqz	$a2,.L0d9e054c
    nop
    lw	$a1,0($a0)
    jr	$a1
    # Line 555
    nop	# was lw $t9, -28080($gp) # &__glSetValue
.L0d9e058c:
    # Line 550
    # lw $t9, -28080($gp) # &__glSetValue
    move	$a0,$s0
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s8
.L0d9e05a0:
    # Line 552
    # lw $t9, -28080($gp) # &__glSetValue
    move	$a0,$s3
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s8
    b	.L0d9e0550
    # Line 567
    addu	$s1,$s7,$s1
.L0d9e05bc:
    # Line 544
    # lw $t9, -28080($gp) # &__glSetValue
    move	$a0,$s1
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s8
    b	.L0d9e0550
    # Line 567
    addu	$s1,$s7,$s1
.L0d9e05d8:
    # Line 547
    # lw $t9, -28080($gp) # &__glSetValue
    move	$a0,$s2
    mov.s	$f13,$f20
    bal __glSetValue
    move	$a2,$s8
    b	.L0d9e0550
    # Line 567
    addu	$s1,$s7,$s1
.L0d9e05f4:
    ld	$s7,96($sp)
.L0d9e05f8:
    ld	$s5,88($sp)
    ld	$s1,80($sp)
    ld	$s0,72($sp)
    ld	$s4,64($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    # Line 569
    ld	$gp,24($sp)
    ld	$ra,56($sp)
    ld	$s6,16($sp)
    ld	$s8,32($sp)
    ldc1	$f20,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9e062c:
    # Line 491
    sltiu	$a5,$a1,6405
    bnez	$a5,.L0d9e0658
    sltiu	$a7,$a1,6404
    sltiu	$a5,$a1,6406
    beqz	$a5,.L0d9e06b8
    sltiu	$t9,$a1,6407
    andi	$a6,$a0,0x4
    beqz	$a6,.L0d9e05f4
    # Line 518
    li	$a1,4
    b	.L0d9e04b4
    # Line 539
    lw	$t9,4($sp)
.L0d9e0658:
    # Line 491
    bnez	$a7,.L0d9e06dc
    andi	$t0,$a0,0x2
    beqz	$a5,.L0d9e05f8
    ld	$s7,96($sp)
    beqz	$t0,.L0d9e05f8
    ld	$s7,96($sp)
    # Line 518
    li	$a1,2
    b	.L0d9e04b4
    # Line 539
    lw	$t9,4($sp)
.L0d9e067c:
    # Line 455
    li	$t1,4
    b	.L0d9e042c
    sw	$t1,0($sp)
.L0d9e0688:
    # Line 468
    li	$a0,1
    b	.L0d9e0458
    sw	$a0,4($sp)
.L0d9e0694:
    # Line 491
    sltiu	$t3,$a1,6411
    bnez	$t2,.L0d9e0748
    andi	$t8,$a0,0x39
    beqz	$t3,.L0d9e05f4
    # Line 518
    li	$a1,57
    # Line 491
    beqz	$t8,.L0d9e05f8
    ld	$s7,96($sp)
    # Line 518
    b	.L0d9e04b4
    # Line 539
    lw	$t9,4($sp)
.L0d9e06b8:
    # Line 491
    andi	$t2,$a0,0x38
    bnez	$t9,.L0d9e0758
    li	$t1,6406
    beqz	$a4,.L0d9e05f4
    # Line 507
    andi	$ra,$a0,0x7
.L0d9e06cc:
    beqz	$ra,.L0d9e05f4
    # Line 518
    li	$a1,7
    b	.L0d9e04b4
    # Line 539
    lw	$t9,4($sp)
.L0d9e06dc:
    # Line 491
    li	$at,6403
    bne	$a1,$at,.L0d9e05f8
    ld	$s7,96($sp)
    # Line 494
    andi	$v0,$a0,0x1
.L0d9e06ec:
    beqz	$v0,.L0d9e05f4
    # Line 518
    li	$a1,1
    b	.L0d9e04b4
    # Line 539
    lw	$t9,4($sp)
.L0d9e06fc:
    # Line 458
    li	$v1,4
    # Line 459
    b	.L0d9e042c
    # Line 458
    sw	$v1,0($sp)
.L0d9e0708:
    # Line 473
    li	$a0,8
    # Line 472
    li	$a4,1
    # Line 473
    b	.L0d9e0458
    # Line 472
    sw	$a4,4($sp)
.L0d9e0718:
    # Line 477
    li	$a0,17
    # Line 476
    li	$a6,2
    # Line 477
    b	.L0d9e0458
    # Line 476
    sw	$a6,4($sp)
.L0d9e0728:
    # Line 481
    li	$a0,7
    # Line 480
    li	$a7,3
    # Line 481
    b	.L0d9e0458
    # Line 480
    sw	$a7,4($sp)
.L0d9e0738:
    # Line 485
    li	$a0,39
    # Line 484
    li	$t0,4
    # Line 485
    b	.L0d9e0458
    # Line 484
    sw	$t0,4($sp)
.L0d9e0748:
    # Line 491
    bne	$a5,$a1,.L0d9e05f8
    ld	$s7,96($sp)
    b	.L0d9e06ec
    # Line 494
    andi	$v0,$a0,0x1
.L0d9e0758:
    # Line 491
    bne	$a1,$t1,.L0d9e05f8
    ld	$s7,96($sp)
    beqz	$t2,.L0d9e05f8
    ld	$s7,96($sp)
    # Line 518
    b	.L0d9e04b0
    li	$a1,56
.L0d9e0770:
    # Line 491
    bne	$a1,$t3,.L0d9e05f8
    ld	$s7,96($sp)
    b	.L0d9e06cc
    # Line 507
    andi	$ra,$a0,0x7
.L0d9e0780:
    # Line 540
    la	$a0,.rodata
    sll	$a1,$s5,0x2
    addiu	$a0,$a0,3944
    sltiu	$a2,$s5,40
    addu	$a0,$a0,$a1
    b	.L0d9e0578
    nop
.end __glResetArray

# Function: __glim_GetHistogramEXT
# Declared: Line 574 (Source lines: 576-672)
# Address: 0x0d9e07a0 - 0x0d9e0be8 (Size: 1096 bytes, Frame: 192)
.globl __glim_GetHistogramEXT
.ent __glim_GetHistogramEXT
__glim_GetHistogramEXT:
    # Line 576
    addiu	$sp,$sp,-576
    sd	$a4,504($sp)
    sd	$a1,512($sp)
    sd	$s1,544($sp)
    # Line 579
    lw	$s1,4112($zero)
    # Line 576
    sd	$s2,520($sp)
    # Line 579
    lw	$a5,4120($zero)
    # Line 576
    move	$s2,$a3
    sd	$s0,536($sp)
    lui	$at,0xb
    move	$s0,$a2
    sd	$ra,552($sp)
    addiu	$at,$at,2104
    sd	$gp,528($sp)
    # Line 579
    beqz	$a5,.L0d9e0828
    # Line 576
    addu	$gp,$t9,$at
    # Line 579
    li	$v0,2
    beq	$a5,$v0,.L0d9e0814
    sd	$a0,560($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9e07f8:
    # Line 602
    ld	$gp,528($sp)
.L0d9e07fc:
    ld	$ra,552($sp)
    ld	$s0,536($sp)
    ld	$s1,544($sp)
    ld	$s2,520($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d9e0814:
    # Line 579
    lw	$t9,11840($s1)
    jalr	$t9
    move	$a0,$s1
    ld	$a0,560($sp)
    sw	$zero,4120($zero)
.L0d9e0828:
    li	$v1,0x8024
    beq	$a0,$v1,.L0d9e0844
    # Line 583
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9e07fc
    # Line 602
    ld	$gp,528($sp)
.L0d9e0844:
    # Line 587
    sltiu	$a0,$s0,6408
    bnez	$a0,.L0d9e0894
    sltiu	$a2,$s0,6405
    sltiu	$a0,$s0,6409
    bnez	$a0,.L0d9e08d0
    # Line 605
    li	$a0,0x8034
    # Line 587
    li	$a0,0x8000
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0d9e0ad0
    sltu	$a2,$a0,$s0
    beqz	$a2,.L0d9e08d0
    # Line 605
    li	$a0,0x8034
    # Line 587
    li	$a0,0x80e1
    sltu	$a3,$s0,$a0
    bnez	$a3,.L0d9e0b6c
    sltu	$a4,$a0,$s0
    beqz	$a4,.L0d9e08d0
    # Line 605
    li	$a0,0x8034
    b	.L0d9e0ac0
    # Line 601
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0894:
    # Line 587
    bnez	$a2,.L0d9e08c0
    sltiu	$a7,$s0,6404
    sltiu	$a5,$s0,6406
    bnez	$a5,.L0d9e08cc
    sltiu	$a6,$s0,6407
    bnez	$a6,.L0d9e0b40
    li	$a5,6406
    bnez	$a0,.L0d9e08d0
    # Line 605
    li	$a0,0x8034
    b	.L0d9e0ac0
    # Line 601
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e08c0:
    # Line 587
    bnez	$a7,.L0d9e0ab4
    li	$ra,6403
    beqz	$a2,.L0d9e0abc
.L0d9e08cc:
    # Line 605
    li	$a0,0x8034
.L0d9e08d0:
    sltu	$t0,$s2,$a0
    bnez	$t0,.L0d9e091c
    sltu	$t1,$a0,$s2
    beqz	$t1,.L0d9e097c
    li	$a0,0x8364
    sltu	$t2,$s2,$a0
    bnez	$t2,.L0d9e0af0
    sltu	$t3,$a0,$s2
    beqz	$t3,.L0d9e0944
    li	$a0,0x8367
    sltu	$t8,$s2,$a0
    bnez	$t8,.L0d9e0b80
    sltu	$t9,$a0,$s2
    beqz	$t9,.L0d9e097c
    li	$ra,0x8368
    beq	$s2,$ra,.L0d9e0980
    # Line 634
    li	$a5,6408
    b	.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e091c:
    # Line 605
    sltiu	$at,$s2,5124
    bnez	$at,.L0d9e0a90
    sltiu	$v0,$s2,5125
    bnez	$v0,.L0d9e09bc
    li	$a0,0x8032
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0d9e0b50
    sltu	$a1,$a0,$s2
    bnez	$a1,.L0d9e0bb4
    li	$t8,0x8033
.L0d9e0944:
    # Line 618
    li	$a2,6407
.L0d9e0948:
    beq	$s0,$a2,.L0d9e09bc
    # Line 622
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e07fc
    # Line 602
    ld	$gp,528($sp)
.L0d9e0960:
    # Line 605
    li	$a0,0x8036
    sltu	$a3,$s2,$a0
    bnez	$a3,.L0d9e0ba4
    li	$t3,0x8035
    sltu	$a4,$a0,$s2
    bnez	$a4,.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e097c:
    # Line 634
    li	$a5,6408
.L0d9e0980:
    beq	$s0,$a5,.L0d9e09bc
    li	$a6,0x8000
    beq	$s0,$a6,.L0d9e09bc
    li	$a7,0x80e1
    beq	$s0,$a7,.L0d9e09bc
    # Line 640
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e07fc
    # Line 602
    ld	$gp,528($sp)
.L0d9e09a8:
    # Line 605
    sltiu	$t0,$s2,5121
    bnez	$t0,.L0d9e0b18
    li	$a3,5120
    beqz	$a0,.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e09bc:
    # Line 647
    lw	$a5,1244($s1)
    beqz	$a5,.L0d9e07f8
    # Line 655
    nop	# was lw $t9, -30108($gp) # &__glInitMemGet
    move	$a0,$s1
    lw	$a4,1276($s1)
    li	$a3,1
    lw	$a2,1248($s1)
    jal	__glInitMemGet
    addiu	$a1,$sp,0
    # Line 656
    move	$a0,$s1
    # lw $t9, -30100($gp) # &__glInitMemPack
    move	$a6,$s2
    move	$a5,$s0
    ld	$a7,504($sp)
    move	$a4,$zero
    li	$a3,1
    lw	$a2,1248($s1)
    jal	__glInitMemPack
    addiu	$a1,$sp,0
    # Line 659
    # lw $t9, -29940($gp) # &__glInitUnpacker
    addiu	$a1,$sp,0
    move	$a0,$s1
    # Line 657
    li	$t1,5125
    # Line 659
    jal	__glInitUnpacker
    # Line 657
    sw	$t1,4($sp)
    # Line 660
    # lw $t9, -30488($gp) # &__glInitPacker
    move	$a0,$s1
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 663
    li	$t2,1
    # Line 666
    sb	$t2,430($sp)
    # Line 665
    sb	$t2,429($sp)
    # Line 669
    # lw $t9, -30124($gp) # &__glGenericPickCopyImage
    # Line 664
    sb	$zero,428($sp)
    # Line 669
    move	$a2,$zero
    addiu	$a1,$sp,0
    # Line 663
    sb	$t2,424($sp)
    # Line 669
    move	$a0,$s1
    jal	__glGenericPickCopyImage
    # Line 662
    sb	$zero,425($sp)
    # Line 669
    ld	$t3,512($sp)
    beqz	$t3,.L0d9e07f8
    # Line 672
    nop	# was lw $t9, -28076($gp) # &__glResetArray
    mtc1	$zero,$f18
    lw	$a4,1248($s1)
    li	$a5,5125
    move	$a3,$zero
    lw	$a2,1244($s1)
    move	$a1,$s0
    bal __glResetArray
    lw	$a0,1276($s1)
    b	.L0d9e07fc
    # Line 602
    ld	$gp,528($sp)
.L0d9e0a90:
    # Line 605
    sltiu	$a0,$s2,5122
    bnez	$a0,.L0d9e09a8
    sltiu	$t8,$s2,5123
    bnez	$t8,.L0d9e09bc
    li	$t9,5123
    beq	$s2,$t9,.L0d9e09bc
    nop
    b	.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0ab4:
    # Line 587
    beq	$s0,$ra,.L0d9e08d0
    # Line 605
    li	$a0,0x8034
.L0d9e0abc:
    # Line 601
    # lw $t9, -28616($gp) # &__glSetError
.L0d9e0ac0:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9e07fc
    # Line 602
    ld	$gp,528($sp)
.L0d9e0ad0:
    # Line 587
    sltiu	$at,$s0,6410
    bnez	$at,.L0d9e0b30
    li	$a4,6409
    sltiu	$v0,$s0,6411
    bnez	$v0,.L0d9e08d0
    # Line 605
    li	$a0,0x8034
    b	.L0d9e0ac0
    # Line 601
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0af0:
    # Line 605
    li	$a0,0x8362
    sltu	$v1,$s2,$a0
    bnez	$v1,.L0d9e0960
    sltu	$a1,$a0,$s2
    beqz	$a1,.L0d9e0944
    li	$a2,0x8363
    beq	$s2,$a2,.L0d9e0948
    # Line 618
    li	$a2,6407
    b	.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0b18:
    # Line 605
    beq	$s2,$a3,.L0d9e09bc
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0b20:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9e07fc
    # Line 602
    ld	$gp,528($sp)
.L0d9e0b30:
    # Line 587
    beq	$s0,$a4,.L0d9e08d0
    # Line 605
    li	$a0,0x8034
    b	.L0d9e0ac0
    # Line 601
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0b40:
    # Line 587
    beq	$s0,$a5,.L0d9e08d0
    # Line 605
    li	$a0,0x8034
    b	.L0d9e0ac0
    # Line 601
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0b50:
    # Line 605
    sltiu	$a6,$s2,5126
    bnez	$a6,.L0d9e0bc4
    sltiu	$a7,$s2,5127
    bnez	$a7,.L0d9e09bc
    nop
    b	.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0b6c:
    # Line 587
    li	$t0,0x80e0
    beq	$s0,$t0,.L0d9e08d0
    # Line 605
    li	$a0,0x8034
    b	.L0d9e0ac0
    # Line 601
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0b80:
    # Line 605
    li	$a0,0x8366
    sltu	$t1,$s2,$a0
    bnez	$t1,.L0d9e0bd8
    li	$ra,0x8365
    sltu	$t2,$a0,$s2
    beqz	$t2,.L0d9e0980
    # Line 634
    li	$a5,6408
    b	.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0ba4:
    # Line 605
    beq	$s2,$t3,.L0d9e0980
    # Line 634
    li	$a5,6408
    b	.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0bb4:
    # Line 605
    beq	$s2,$t8,.L0d9e0980
    # Line 634
    li	$a5,6408
    b	.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0bc4:
    # Line 605
    li	$t9,5125
    beq	$s2,$t9,.L0d9e09bc
    nop
    b	.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0bd8:
    # Line 605
    beq	$s2,$ra,.L0d9e0980
    # Line 634
    li	$a5,6408
    b	.L0d9e0b20
    # Line 645
    nop	# was lw $t9, -28616($gp) # &__glSetError
.end __glim_GetHistogramEXT

# Function: __glGetHistogramParameters
# Declared: Line 677 (Source lines: 679-736)
# Address: 0x0d9e0bf0 - 0x0d9e0d98 (Size: 424 bytes, Frame: 48)
.globl __glGetHistogramParameters
.ent __glGetHistogramParameters
__glGetHistogramParameters:
    # Line 682
    lw	$a5,4112($zero)
    # Line 679
    addiu	$sp,$sp,-48
    # Line 682
    lw	$at,4120($zero)
    # Line 679
    sd	$s0,24($sp)
    # Line 682
    li	$v0,1
    # Line 679
    lui	$v1,0xb
    move	$s0,$a3
    sd	$ra,40($sp)
    addiu	$v1,$v1,1000
    sd	$gp,32($sp)
    # Line 682
    beq	$at,$v0,.L0d9e0d84
    # Line 679
    addu	$gp,$t9,$v1
    # Line 686
    addiu	$a7,$a5,1244
    # Line 684
    li	$a3,0x8024
    sd	$a2,8($sp)
    beq	$a0,$a3,.L0d9e0cb8
    sd	$a1,16($sp)
    li	$a4,0x8025
    beq	$a0,$a4,.L0d9e0c80
    # Line 689
    addiu	$a4,$a5,1288
    # Line 692
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9e0c4c:
    # Line 694
    ld	$a1,16($sp)
    lui	$a2,0xffff
    ori	$a2,$a2,0x7fda
    la	$a0,.rodata
    addu	$a1,$a1,$a2
    sltiu	$a2,$a1,8
    addiu	$a0,$a0,4104
    sll	$a1,$a1,0x2
    beqz	$a2,.L0d9e0c88
    addu	$a0,$a0,$a1
    lw	$a3,0($a0)
    jr	$a3
    # Line 701
    lw	$v1,0($sp)
.L0d9e0c80:
    # Line 690
    b	.L0d9e0c4c
    # Line 689
    sw	$a4,0($sp)
.L0d9e0c88:
    # Line 722
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9e0c94:
    # Line 726
    li	$a5,5124
    beq	$s0,$a5,.L0d9e0d64
    li	$a6,5126
    beq	$s0,$a6,.L0d9e0cc0
    ld	$ra,40($sp)
.L0d9e0ca8:
    ld	$s0,24($sp)
    # Line 736
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9e0cb8:
    b	.L0d9e0c4c
    # Line 686
    sw	$a7,0($sp)
.L0d9e0cc0:
    # Line 731
    lw	$t1,4($sp)
    mtc1	$t1,$f0
    # Line 736
    ld	$gp,32($sp)
    ld	$ra,40($sp)
    # Line 731
    cvt.s.w	$f0,$f0
    ld	$t0,8($sp)
    # Line 736
    ld	$s0,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 731
    swc1	$f0,0($t0)
.L0d9e0ce8:
    # Line 698
    lw	$t2,0($sp)
    lw	$t2,4($t2)
    # Line 699
    b	.L0d9e0c94
    # Line 698
    sw	$t2,4($sp)
.L0d9e0cf8:
    # Line 719
    lw	$t3,0($sp)
    lbu	$t3,36($t3)
    # Line 720
    b	.L0d9e0c94
    # Line 719
    sw	$t3,4($sp)
.L0d9e0d08:
    # Line 716
    lw	$t8,0($sp)
    lw	$t8,24($t8)
    # Line 717
    b	.L0d9e0c94
    # Line 716
    sw	$t8,4($sp)
.L0d9e0d18:
    # Line 713
    lw	$t9,0($sp)
    lw	$t9,20($t9)
    # Line 714
    b	.L0d9e0c94
    # Line 713
    sw	$t9,4($sp)
.L0d9e0d28:
    # Line 710
    lw	$ra,0($sp)
    lw	$ra,16($ra)
    # Line 711
    b	.L0d9e0c94
    # Line 710
    sw	$ra,4($sp)
.L0d9e0d38:
    # Line 707
    lw	$at,0($sp)
    lw	$at,12($at)
    # Line 708
    b	.L0d9e0c94
    # Line 707
    sw	$at,4($sp)
.L0d9e0d48:
    # Line 704
    lw	$v0,0($sp)
    lw	$v0,8($v0)
    # Line 705
    b	.L0d9e0c94
    # Line 704
    sw	$v0,4($sp)
.L0d9e0d58:
    # Line 701
    lw	$v1,28($v1)
    # Line 702
    b	.L0d9e0c94
    # Line 701
    sw	$v1,4($sp)
.L0d9e0d64:
    # Line 736
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ld	$ra,40($sp)
    # Line 728
    ld	$a1,8($sp)
    lw	$a0,4($sp)
    # Line 736
    addiu	$sp,$sp,48
    jr	$ra
    # Line 728
    sw	$a0,0($a1)
.L0d9e0d84:
    # Line 682
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e0ca8
    ld	$ra,40($sp)
.end __glGetHistogramParameters

# Function: __glim_GetHistogramParameterivEXT
# Declared: Line 738 (Source lines: 740-742)
# Address: 0x0d9e0da0 - 0x0d9e0dd4 (Size: 52 bytes, Frame: 16)
.globl __glim_GetHistogramParameterivEXT
.ent __glim_GetHistogramParameterivEXT
__glim_GetHistogramParameterivEXT:
    # Line 740
    lui	$at,0xb
    addiu	$sp,$sp,-16
    addiu	$at,$at,568
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 741
    # lw $t9, -28068($gp) # &__glGetHistogramParameters
    # Line 740
    sd	$ra,0($sp)
    # Line 741
    bal __glGetHistogramParameters
    li	$a3,5124
    ld	$ra,0($sp)
    # Line 742
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetHistogramParameterivEXT

# Function: __glim_GetHistogramParameterfvEXT
# Declared: Line 744 (Source lines: 746-748)
# Address: 0x0d9e0de0 - 0x0d9e0e14 (Size: 52 bytes, Frame: 16)
.globl __glim_GetHistogramParameterfvEXT
.ent __glim_GetHistogramParameterfvEXT
__glim_GetHistogramParameterfvEXT:
    # Line 746
    lui	$at,0xb
    addiu	$sp,$sp,-16
    addiu	$at,$at,504
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 747
    # lw $t9, -28068($gp) # &__glGetHistogramParameters
    # Line 746
    sd	$ra,0($sp)
    # Line 747
    bal __glGetHistogramParameters
    li	$a3,5126
    ld	$ra,0($sp)
    # Line 748
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetHistogramParameterfvEXT

# Function: __glProcessMinmaxArguments
# Declared: Line 750 (Source lines: 751-804)
# Address: 0x0d9e0e20 - 0x0d9e1150 (Size: 816 bytes, Frame: 16)
.globl __glProcessMinmaxArguments
.ent __glProcessMinmaxArguments
__glProcessMinmaxArguments:
    # Line 752
    li	$v0,0x802e
    # Line 751
    lui	$at,0xb
    addiu	$sp,$sp,-16
    addiu	$at,$at,440
    sd	$gp,0($sp)
    # Line 752
    beq	$a0,$v0,.L0d9e0e60
    # Line 751
    addu	$gp,$t9,$at
    # Line 756
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 757
    li	$v0,1
    # Line 802
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0e60:
    # Line 760
    li	$a2,0x8046
    sltu	$v0,$a1,$a2
    bnez	$v0,.L0d9e0ef8
    sltu	$v1,$a2,$a1
    beqz	$v1,.L0d9e0ee8
    li	$a2,0x8054
    sltu	$a0,$a1,$a2
    bnez	$a0,.L0d9e0f88
    sltu	$a3,$a2,$a1
    beqz	$a3,.L0d9e0ee8
    li	$a2,0x8058
    sltu	$a4,$a1,$a2
    bnez	$a4,.L0d9e1044
    sltu	$a5,$a2,$a1
    beqz	$a5,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    # Line 760
    li	$a2,0x805a
    sltu	$a6,$a1,$a2
    bnez	$a6,.L0d9e1118
    sltu	$a7,$a2,$a1
    beqz	$a7,.L0d9e0ee8
    li	$t0,0x805b
    beq	$a1,$t0,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e0ec8:
    # Line 760
    sltiu	$a2,$a1,6408
    bnez	$a2,.L0d9e1070
    sltiu	$t1,$a1,6409
    bnez	$t1,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    # Line 760
    li	$t2,6409
    bne	$a1,$t2,.L0d9e0fd4
    # Line 801
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0ee8:
    # Line 804
    move	$v0,$zero
.L0d9e0eec:
    # Line 802
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0ef8:
    # Line 760
    li	$a2,0x803d
    sltu	$t3,$a1,$a2
    bnez	$t3,.L0d9e0f50
    sltu	$t8,$a2,$a1
    beqz	$t8,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    # Line 760
    li	$a2,0x8042
    sltu	$t9,$a1,$a2
    bnez	$t9,.L0d9e101c
    sltu	$at,$a2,$a1
    beqz	$at,.L0d9e0ee8
    li	$a2,0x8044
    sltu	$v0,$a1,$a2
    bnez	$v0,.L0d9e10f4
    sltu	$v1,$a2,$a1
    beqz	$v1,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    # Line 760
    li	$a0,0x8045
    beq	$a1,$a0,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e0f50:
    # Line 760
    sltiu	$a2,$a1,6410
    bnez	$a2,.L0d9e0ec8
    sltiu	$a3,$a1,6411
    bnez	$a3,.L0d9e0ee8
    li	$a2,0x803b
    sltu	$a4,$a1,$a2
    bnez	$a4,.L0d9e0fc8
    sltu	$a5,$a2,$a1
    beqz	$a5,.L0d9e0ee8
    li	$a6,0x803c
    beq	$a1,$a6,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e0f88:
    # Line 760
    li	$a2,0x8050
    sltu	$a7,$a1,$a2
    bnez	$a7,.L0d9e0ff4
    sltu	$t0,$a2,$a1
    beqz	$t0,.L0d9e0ee8
    li	$a2,0x8052
    sltu	$t1,$a1,$a2
    bnez	$t1,.L0d9e10e4
    li	$t8,0x8051
    sltu	$t2,$a2,$a1
    beqz	$t2,.L0d9e0ee8
    li	$t3,0x8053
    beq	$a1,$t3,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e0fc8:
    # Line 760
    li	$t8,0x8000
    beq	$a1,$t8,.L0d9e0ee8
.L0d9e0fd0:
    # Line 801
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9e0fd4:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 802
    li	$v0,1
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e0ff4:
    # Line 760
    li	$a2,0x804e
    sltu	$t9,$a1,$a2
    bnez	$t9,.L0d9e108c
    sltu	$at,$a2,$a1
    beqz	$at,.L0d9e0ee8
    li	$v0,0x804f
    beq	$a1,$v0,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e101c:
    # Line 760
    li	$a2,0x8040
    sltu	$v1,$a1,$a2
    bnez	$v1,.L0d9e10b0
    sltu	$a0,$a2,$a1
    beqz	$a0,.L0d9e0ee8
    li	$a2,0x8041
    beq	$a1,$a2,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e1044:
    # Line 760
    li	$a2,0x8056
    sltu	$a3,$a1,$a2
    bnez	$a3,.L0d9e10d0
    sltu	$a4,$a2,$a1
    beqz	$a4,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    # Line 760
    li	$a5,0x8057
    beq	$a1,$a5,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e1070:
    # Line 760
    sltiu	$a6,$a1,6407
    bnez	$a6,.L0d9e1108
    li	$at,6406
    bnez	$a2,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e108c:
    # Line 760
    li	$a2,0x8048
    sltu	$a7,$a1,$a2
    bnez	$a7,.L0d9e112c
    li	$v1,0x8047
    sltu	$t0,$a2,$a1
    beqz	$t0,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e10b0:
    # Line 760
    li	$a2,0x803f
    sltu	$t1,$a1,$a2
    bnez	$t1,.L0d9e113c
    sltu	$t2,$a2,$a1
    beqz	$t2,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e10d0:
    # Line 760
    li	$t3,0x8055
    beq	$a1,$t3,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e10e4:
    # Line 760
    beq	$a1,$t8,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e10f4:
    # Line 760
    li	$t9,0x8043
    beq	$a1,$t9,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e1108:
    # Line 760
    bne	$a1,$at,.L0d9e0fd4
    # Line 801
    nop	# was lw $t9, -28616($gp) # &__glSetError
    b	.L0d9e0eec
    # Line 804
    move	$v0,$zero
.L0d9e1118:
    # Line 760
    li	$v0,0x8059
    beq	$a1,$v0,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e112c:
    # Line 760
    beq	$a1,$v1,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.L0d9e113c:
    # Line 760
    li	$a0,0x803e
    beq	$a1,$a0,.L0d9e0eec
    # Line 804
    move	$v0,$zero
    b	.L0d9e0fd0
    sd	$ra,8($sp)
.end __glProcessMinmaxArguments

# Function: __glResetMinmax
# Declared: Line 809 (Source lines: 810-848)
# Address: 0x0d9e1150 - 0x0d9e129c (Size: 332 bytes, Frame: 16)
.globl __glResetMinmax
.ent __glResetMinmax
__glResetMinmax:
    # Line 810
    addiu	$sp,$sp,-16
    # Line 816
    li	$a2,6408
    lw	$a3,1372($a0)
    li	$v1,6406
    # Line 810
    lui	$v0,0xb
    move	$a7,$a0
    addiu	$v0,$v0,-376
    # Line 816
    beq	$a3,$v1,.L0d9e1270
    # Line 810
    addu	$at,$t9,$v0
    # Line 816
    li	$v1,6409
    beq	$a3,$v1,.L0d9e1270
    # Line 823
    li	$a4,2
    # Line 816
    li	$a0,6410
    beq	$a3,$a0,.L0d9e127c
    # Line 828
    li	$a6,6
    # Line 816
    li	$a1,6407
    beq	$a3,$a1,.L0d9e1284
    # Line 831
    li	$a4,4
    # Line 816
    beq	$a3,$a2,.L0d9e128c
    # Line 840
    lw	$a6,4($sp)
    # Line 816
    lw	$a4,0($sp)
    blez	$a4,.L0d9e1294
    nop
    lw	$a6,4($sp)
.L0d9e11b0:
    sll	$a3,$a4,0x2
    lwc1	$f4,_lit_7f7fffff
    move	$a0,$a7
    addu	$a3,$a3,$a7
.L0d9e11c0:
    # Line 840
    addiu	$a0,$a0,4
    # Line 841
    swc1	$f4,1328($a0)
    # Line 840
    beq	$a0,$a3,.L0d9e11fc
    addiu	$a0,$a0,4
    # Line 841
    swc1	$f4,1328($a0)
    # Line 840
    beq	$a0,$a3,.L0d9e11fc
    addiu	$a0,$a0,4
    # Line 841
    swc1	$f4,1328($a0)
    # Line 840
    beq	$a0,$a3,.L0d9e11fc
    addiu	$a0,$a0,4
    # Line 841
    swc1	$f4,1328($a0)
    # Line 840
    beq	$a0,$a3,.L0d9e11fc
    addiu	$a0,$a0,4
    bne	$a0,$a3,.L0d9e11c0
    # Line 841
    swc1	$f4,1328($a0)
.L0d9e11fc:
    # Line 840
    sll	$a0,$a4,0x2
.L0d9e1200:
    slt	$a5,$a4,$a6
    sll	$a3,$a6,0x2
    addu	$a0,$a0,$a7
    lwc1	$f4,_lit_ff7fffff
    beqz	$a5,.L0d9e1268
    addu	$a3,$a3,$a7
    subu	$a5,$a6,$a4
    move	$t0,$a5
    andi	$a5,$a5,0x3
    beqz	$a5,.L0d9e1240
    sra	$a6,$t0,0x2
.L0d9e122c:
    addiu	$a5,$a5,-1
    # Line 845
    addiu	$a0,$a0,4
    bnez	$a5,.L0d9e122c
    # Line 846
    swc1	$f4,1328($a0)
    sra	$a6,$t0,0x2
.L0d9e1240:
    beqz	$a6,.L0d9e1268
    nop
    nop
    nop
.L0d9e1250:
    swc1	$f4,1344($a0)
    swc1	$f4,1340($a0)
    # Line 845
    addiu	$a0,$a0,16
    # Line 846
    swc1	$f4,1320($a0)
    # Line 845
    bne	$a0,$a3,.L0d9e1250
    # Line 846
    swc1	$f4,1316($a0)
.L0d9e1268:
    # Line 848
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e1270:
    # Line 820
    li	$a6,2
    # Line 819
    b	.L0d9e11b0
    li	$a4,1
.L0d9e127c:
    # Line 823
    b	.L0d9e11b0
    # Line 824
    li	$a6,4
.L0d9e1284:
    # Line 827
    b	.L0d9e11b0
    li	$a4,3
.L0d9e128c:
    # Line 831
    b	.L0d9e11b0
    # Line 832
    li	$a6,8
.L0d9e1294:
    b	.L0d9e1200
    # Line 840
    sll	$a0,$a4,0x2
.end __glResetMinmax

# Function: __glim_MinmaxEXT
# Declared: Line 854 (Source lines: 855-883)
# Address: 0x0d9e12a0 - 0x0d9e1378 (Size: 216 bytes, Frame: 208)
.globl __glim_MinmaxEXT
.ent __glim_MinmaxEXT
__glim_MinmaxEXT:
    # Line 855
    move	$v0,$a1
    addiu	$sp,$sp,-80
    # Line 860
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$a6,1
    # Line 855
    lui	$v1,0xb
    # Line 860
    li	$a1,0x802e
    sd	$ra,64($sp)
    # Line 855
    addiu	$v1,$v1,-712
    sd	$gp,56($sp)
    # Line 860
    beq	$at,$a6,.L0d9e1364
    # Line 855
    addu	$gp,$t9,$v1
    sd	$a2,40($sp)
    sd	$a5,32($sp)
    # Line 860
    beq	$a0,$a1,.L0d9e12fc
    sd	$v0,48($sp)
    # Line 863
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,64($sp)
.L0d9e12f0:
    # Line 883
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9e12fc:
    # Line 867
    # lw $t9, -28100($gp) # &__glProcessHistogramArguments
    addiu	$a3,$sp,24
    addiu	$a2,$sp,0
    ld	$a1,48($sp)
    bal __glProcessHistogramArguments
    li	$a0,2
    beqz	$v0,.L0d9e132c
    # Line 870
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    move	$a0,$v0
    b	.L0d9e12f0
    ld	$ra,64($sp)
.L0d9e132c:
    # Line 879
    ld	$a4,40($sp)
    # Line 877
    ld	$a6,48($sp)
    ld	$a3,32($sp)
    # Line 882
    # lw $t9, -28056($gp) # &__glResetMinmax
    # Line 877
    sw	$a6,1368($a3)
    # Line 878
    lw	$a2,24($sp)
    # Line 880
    li	$a5,1
    sb	$a5,1364($a3)
    # Line 879
    sb	$a4,1376($a3)
    # Line 882
    move	$a0,$a3
    bal __glResetMinmax
    # Line 878
    sw	$a2,1372($a3)
    b	.L0d9e12f0
    ld	$ra,64($sp)
.L0d9e1364:
    # Line 860
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e12f0
    ld	$ra,64($sp)
.end __glim_MinmaxEXT

# Function: __glim_ResetMinmaxEXT
# Declared: Line 885 (Source lines: 886-894)
# Address: 0x0d9e1380 - 0x0d9e13f0 (Size: 112 bytes, Frame: 16)
.globl __glim_ResetMinmaxEXT
.ent __glim_ResetMinmaxEXT
__glim_ResetMinmaxEXT:
    # Line 886
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0xb
    sd	$ra,8($sp)
    addiu	$v1,$v1,-936
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9e13dc
    addu	$gp,$t9,$v1
    # Line 887
    li	$a1,0x802e
    beq	$a0,$a1,.L0d9e13cc
    # Line 893
    nop	# was lw $t9, -28056($gp) # &__glResetMinmax
    # Line 890
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9e13c0:
    # Line 894
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e13cc:
    # Line 893
    bal __glResetMinmax
    lw	$a0,4112($zero)
    b	.L0d9e13c0
    ld	$ra,8($sp)
.L0d9e13dc:
    # Line 887
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e13c0
    ld	$ra,8($sp)
.end __glim_ResetMinmaxEXT

# Function: __glim_GetMinmaxEXT
# Declared: Line 896 (Source lines: 898-944)
# Address: 0x0d9e13f0 - 0x0d9e15ac (Size: 444 bytes, Frame: 192)
.globl __glim_GetMinmaxEXT
.ent __glim_GetMinmaxEXT
__glim_GetMinmaxEXT:
    # Line 901
    lw	$v0,4112($zero)
    # Line 898
    addiu	$sp,$sp,-576
    sd	$a4,512($sp)
    sd	$a3,528($sp)
    sd	$a2,536($sp)
    sd	$a1,520($sp)
    # Line 901
    lw	$t1,4120($zero)
    # Line 898
    move	$a5,$a0
    sd	$ra,568($sp)
    lui	$at,0xb
    # Line 901
    sd	$v0,544($sp)
    li	$v0,2
    # Line 898
    addiu	$at,$at,-1048
    sd	$gp,552($sp)
    # Line 901
    beqz	$t1,.L0d9e1470
    # Line 898
    addu	$gp,$t9,$at
    # Line 901
    beq	$t1,$v0,.L0d9e1454
    sd	$a0,560($sp)
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9e1444:
    ld	$ra,568($sp)
.L0d9e1448:
    # Line 944
    ld	$gp,552($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d9e1454:
    # Line 901
    ld	$t9,544($sp)
    move	$a0,$t9
    lw	$t9,11840($t9)
    jalr	$t9
    nop
    ld	$a5,560($sp)
    sw	$zero,4120($zero)
.L0d9e1470:
    li	$ra,0x802e
    beq	$a5,$ra,.L0d9e148c
    # Line 905
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9e1448
    ld	$ra,568($sp)
.L0d9e148c:
    # Line 909
    # lw $t9, -28084($gp) # &__glCheckGetArguments
    ld	$a0,536($sp)
    bal __glCheckGetArguments
    ld	$a1,528($sp)
    bnez	$v0,.L0d9e1444
    # Line 912
    ld	$at,544($sp)
    lbu	$at,1364($at)
    beqz	$at,.L0d9e1444
    # Line 918
    ld	$a4,544($sp)
    # lw $t9, -30108($gp) # &__glInitMemGet
    li	$a3,1
    li	$a2,2
    addiu	$a1,$sp,0
    addiu	$a5,$a4,1332
    sd	$a5,504($sp)
    move	$a0,$a4
    jal	__glInitMemGet
    lw	$a4,1372($a4)
    # Line 919
    ld	$a0,544($sp)
    # lw $t9, -30100($gp) # &__glInitMemPack
    ld	$a7,512($sp)
    move	$a4,$zero
    ld	$a6,528($sp)
    li	$a3,1
    li	$a2,2
    ld	$a5,536($sp)
    jal	__glInitMemPack
    addiu	$a1,$sp,0
    # Line 922
    # lw $t9, -29940($gp) # &__glInitUnpacker
    addiu	$a1,$sp,0
    ld	$a0,544($sp)
    # Line 920
    li	$a5,5126
    # Line 922
    jal	__glInitUnpacker
    # Line 920
    sw	$a5,4($sp)
    # Line 923
    # lw $t9, -30488($gp) # &__glInitPacker
    ld	$a0,544($sp)
    jal	__glInitPacker
    addiu	$a1,$sp,0
    # Line 926
    li	$a6,1
    # Line 928
    sb	$a6,430($sp)
    # Line 927
    sb	$zero,428($sp)
    # Line 931
    # lw $t9, -30124($gp) # &__glGenericPickCopyImage
    # Line 926
    sb	$a6,424($sp)
    # Line 931
    move	$a2,$zero
    ld	$a0,544($sp)
    addiu	$a1,$sp,0
    jal	__glGenericPickCopyImage
    # Line 925
    sb	$zero,425($sp)
    # Line 931
    ld	$a7,520($sp)
    beqz	$a7,.L0d9e1444
    # Line 935
    lwc1	$f18,_lit_7f7fffff
    ld	$a2,504($sp)
    # lw $t9, -28076($gp) # &__glResetArray
    ld	$a0,544($sp)
    li	$a5,5126
    li	$a4,1
    ld	$a1,536($sp)
    move	$a3,$zero
    bal __glResetArray
    lw	$a0,1372($a0)
    # Line 939
    lwc1	$f18,_lit_ff7fffff
    ld	$a2,504($sp)
    # lw $t9, -28076($gp) # &__glResetArray
    ld	$a0,544($sp)
    li	$a5,5126
    li	$a4,2
    ld	$a1,536($sp)
    li	$a3,1
    bal __glResetArray
    lw	$a0,1372($a0)
    b	.L0d9e1448
    ld	$ra,568($sp)
.end __glim_GetMinmaxEXT

# Function: __glGetMinmaxParameters
# Declared: Line 946 (Source lines: 948-985)
# Address: 0x0d9e15b0 - 0x0d9e1684 (Size: 212 bytes, Frame: 16)
.globl __glGetMinmaxParameters
.ent __glGetMinmaxParameters
__glGetMinmaxParameters:
    # Line 974
    li	$t1,5126
    # Line 948
    addiu	$sp,$sp,-16
    # Line 951
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 948
    lui	$v1,0xb
    # Line 974
    li	$t0,5124
    sd	$ra,8($sp)
    # Line 948
    addiu	$v1,$v1,-1496
    sd	$gp,0($sp)
    # Line 951
    beq	$at,$v0,.L0d9e1670
    # Line 948
    addu	$gp,$t9,$v1
    # Line 953
    li	$a4,0x802e
    beq	$a0,$a4,.L0d9e1608
    # Line 962
    li	$a6,0x802f
    # Line 958
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9e15fc:
    # Line 985
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e1608:
    # Line 962
    beq	$a1,$a6,.L0d9e1658
    li	$a7,0x8030
    beq	$a1,$a7,.L0d9e1628
    # Line 970
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9e15fc
    ld	$ra,8($sp)
.L0d9e1628:
    # Line 967
    lbu	$a0,1376($a5)
.L0d9e162c:
    # Line 974
    beq	$a3,$t0,.L0d9e1660
    ld	$ra,8($sp)
    bne	$a3,$t1,.L0d9e15fc
    ld	$ra,8($sp)
    # Line 979
    mtc1	$a0,$f0
    ld	$ra,8($sp)
    cvt.s.w	$f0,$f0
    # Line 985
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 979
    swc1	$f0,0($a2)
.L0d9e1658:
    b	.L0d9e162c
    # Line 964
    lw	$a0,1368($a5)
.L0d9e1660:
    # Line 976
    sw	$a0,0($a2)
    # Line 985
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9e1670:
    # Line 951
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9e15fc
    ld	$ra,8($sp)
.end __glGetMinmaxParameters

# Function: __glim_GetMinmaxParameterivEXT
# Declared: Line 988 (Source lines: 990-992)
# Address: 0x0d9e1690 - 0x0d9e16c4 (Size: 52 bytes, Frame: 16)
.globl __glim_GetMinmaxParameterivEXT
.ent __glim_GetMinmaxParameterivEXT
__glim_GetMinmaxParameterivEXT:
    # Line 990
    lui	$at,0xb
    addiu	$sp,$sp,-16
    addiu	$at,$at,-1720
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 991
    # lw $t9, -28040($gp) # &__glGetMinmaxParameters
    # Line 990
    sd	$ra,0($sp)
    # Line 991
    bal __glGetMinmaxParameters
    li	$a3,5124
    ld	$ra,0($sp)
    # Line 992
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetMinmaxParameterivEXT

# Function: __glim_GetMinmaxParameterfvEXT
# Declared: Line 994 (Source lines: 996-998)
# Address: 0x0d9e16d0 - 0x0d9e1704 (Size: 52 bytes, Frame: 16)
.globl __glim_GetMinmaxParameterfvEXT
.ent __glim_GetMinmaxParameterfvEXT
__glim_GetMinmaxParameterfvEXT:
    # Line 996
    lui	$at,0xb
    addiu	$sp,$sp,-16
    addiu	$at,$at,-1784
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 997
    # lw $t9, -28040($gp) # &__glGetMinmaxParameters
    # Line 996
    sd	$ra,0($sp)
    # Line 997
    bal __glGetMinmaxParameters
    li	$a3,5126
    ld	$ra,0($sp)
    # Line 998
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetMinmaxParameterfvEXT

.late_rodata
jtbl_0da80f68:
    .word .L0d9e054c
    .word .L0d9e0538
    .word .L0d9e05bc
    .word .L0d9e054c
    .word .L0d9e05d8
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e0510
    .word .L0d9e0538
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e05bc
    .word .L0d9e0524
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e05a0
    .word .L0d9e058c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e054c
    .word .L0d9e0500
jtbl_0da81008:
    .word .L0d9e0ce8
    .word .L0d9e0d58
    .word .L0d9e0d48
    .word .L0d9e0d38
    .word .L0d9e0d28
    .word .L0d9e0d18
    .word .L0d9e0d08
    .word .L0d9e0cf8

.rdata
_lit_7f7fffff:
    .word 0x7f7fffff
_lit_ff7fffff:
    .word 0xff7fffff

