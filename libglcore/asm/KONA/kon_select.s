# Source: ../KONA/kon_select.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_select.c
# Total Functions: 9

.text

# Function: StartSelectFeed
# Declared: Line 15 (Source lines: 15-33)
# Address: 0x0d95cb30 - 0x0d95cb9c (Size: 108 bytes, Frame: 32)
.ent StartSelectFeed
StartSelectFeed:
    # Line 15
    addiu	$sp,$sp,-32
    # Line 16
    lw	$at,4112($zero)
    # Line 27
    sw	$zero,16($sp)
    # Line 26
    sw	$zero,12($sp)
    # Line 25
    sll	$v0,$a1,0x2
    sw	$v0,4($sp)
    # Line 29
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 25
    sw	$v0,8($sp)
    # Line 29
    li	$a1,10002
    addiu	$a2,$sp,0
    # Line 24
    sw	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 29
    bal __glKon_ioctl
    move	$a0,$at
    beqz	$v0,.L0d95cb90
    # Line 33
    ld	$ra,24($sp)
    # Line 30
    # lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    jal	perror
    addiu	$a0,$a0,320
    # Line 33
    ld	$ra,24($sp)
    # Line 31
    li	$v0,-1
    # Line 33
    jr	$ra
    addiu	$sp,$sp,32
.L0d95cb90:
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,32
.end StartSelectFeed

# Function: FinishSelectFeed
# Declared: Line 37 (Source lines: 37-50)
# Address: 0x0d95cba0 - 0x0d95cc00 (Size: 96 bytes, Frame: 32)
.ent FinishSelectFeed
FinishSelectFeed:
    # Line 37
    addiu	$sp,$sp,-32
    # Line 41
    # lw $t9, -31952($gp) # &__glKon_ioctl
    # Line 37
    sd	$a0,8($sp)
    # Line 41
    li	$a1,10003
    sd	$ra,16($sp)
    addiu	$a2,$sp,0
    bal __glKon_ioctl
    lw	$a0,4112($zero)
    beqz	$v0,.L0d95cbe4
    # Line 42
    nop	# was lw $t9, -18584($gp) # &perror
    la	$a0,.rodata
    jal	perror
    addiu	$a0,$a0,344
    # Line 50
    ld	$ra,16($sp)
    # Line 43
    li	$v0,-1
    # Line 50
    jr	$ra
    addiu	$sp,$sp,32
.L0d95cbe4:
    # Line 49
    ld	$a2,8($sp)
    # Line 50
    ld	$ra,16($sp)
    # Line 49
    lw	$a1,4($sp)
    sw	$a1,0($a2)
    # Line 50
    lw	$v0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end FinishSelectFeed

# Function: __glkon_SuspendSelectfeed
# Declared: Line 54 (Source lines: 54-78)
# Address: 0x0d95cc00 - 0x0d95cd18 (Size: 280 bytes, Frame: 32)
.globl __glkon_SuspendSelectfeed
.ent __glkon_SuspendSelectfeed
__glkon_SuspendSelectfeed:
    # Line 54
    addiu	$sp,$sp,-32
    sd	$s0,16($sp)
    # Line 55
    lw	$s0,4112($zero)
    lw	$a1,3204($s0)
    li	$v0,7169
    # Line 54
    lui	$at,0x13
    addiu	$at,$at,17368
    sd	$gp,8($sp)
    # Line 55
    beq	$a1,$v0,.L0d95cc78
    # Line 54
    addu	$gp,$t9,$at
    # Line 65
    li	$v0,7170
    beq	$a1,$v0,.L0d95ccc8
    nop
    # Line 72
    lw	$v1,31608($s0)
    bnez	$v1,.L0d95cc50
    # Line 76
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 78
    ld	$gp,8($sp)
.L0d95cc44:
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95cc50:
    # Line 76
    addiu	$t9,$t9,-13408
    sd	$ra,24($sp)
    bal __glKonlSendPackedVertex
    addiu	$a0,$sp,0
    ld	$ra,24($sp)
    # Line 78
    ld	$gp,8($sp)
    # Line 76
    sw	$v0,31624($s0)
    # Line 78
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95cc78:
    # Line 55
    lbu	$at,4868($s0)
    bnezl	$at,.L0d95cc44
    # Line 78
    ld	$gp,8($sp)
    # Line 63
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-13408
    sd	$ra,24($sp)
    bal __glKonlSendPackedVertex
    addiu	$a0,$sp,0
    # Line 64
    lw	$v1,31596($s0)
    ld	$ra,24($sp)
    addu	$v1,$v1,$v0
    # Line 65
    lbu	$v0,4868($s0)
    # Line 64
    sw	$v1,31596($s0)
    # Line 65
    lw	$at,0($sp)
    # Line 78
    ld	$gp,8($sp)
    # Line 65
    or	$at,$at,$v0
    sb	$at,4868($s0)
    # Line 78
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95ccc8:
    # Line 65
    lbu	$a0,4900($s0)
    bnezl	$a0,.L0d95cc44
    # Line 78
    ld	$gp,8($sp)
    # Line 70
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-13408
    sd	$ra,24($sp)
    bal __glKonlSendPackedVertex
    addiu	$a0,$sp,0
    # Line 71
    lw	$v1,31604($s0)
    ld	$ra,24($sp)
    addu	$v1,$v1,$v0
    # Line 72
    lbu	$v0,4900($s0)
    # Line 71
    sw	$v1,31604($s0)
    # Line 72
    lw	$at,0($sp)
    # Line 78
    ld	$gp,8($sp)
    # Line 72
    or	$at,$at,$v0
    sb	$at,4900($s0)
    # Line 78
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkon_SuspendSelectfeed

# Function: __glkon_ResumeSelectfeed
# Declared: Line 81 (Source lines: 81-98)
# Address: 0x0d95cd20 - 0x0d95ce18 (Size: 248 bytes, Frame: 16)
.globl __glkon_ResumeSelectfeed
.ent __glkon_ResumeSelectfeed
__glkon_ResumeSelectfeed:
    # Line 82
    lw	$a3,4112($zero)
    lw	$a1,3204($a3)
    li	$v0,7169
    # Line 81
    lui	$at,0x13
    addiu	$sp,$sp,-16
    addiu	$at,$at,17080
    sd	$gp,0($sp)
    # Line 82
    beq	$a1,$v0,.L0d95cd90
    # Line 81
    addu	$gp,$t9,$at
    # Line 88
    li	$v0,7170
    beq	$a1,$v0,.L0d95cdcc
    nop
    # Line 92
    lw	$a4,31608($a3)
    beqz	$a4,.L0d95cd84
    nop
    # Line 95
    lw	$a0,31624($a3)
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$a1,31628($a3)
    addiu	$t9,$t9,-13520
    subu	$a1,$a1,$a0
    sll	$a0,$a0,0x2
    sd	$ra,8($sp)
    bal __glKonlSendPackedVertex
    addu	$a0,$a4,$a0
    ld	$ra,8($sp)
.L0d95cd84:
    # Line 98
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95cd90:
    # Line 82
    lbu	$at,4868($a3)
    bnez	$at,.L0d95cd84
    nop
    # Line 88
    lw	$a2,31596($a3)
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$a1,4880($a3)
    lw	$a0,31592($a3)
    addiu	$t9,$t9,-13520
    subu	$a1,$a1,$a2
    sll	$a2,$a2,0x2
    sd	$ra,8($sp)
    bal __glKonlSendPackedVertex
    addu	$a0,$a0,$a2
    b	.L0d95cd84
    ld	$ra,8($sp)
.L0d95cdcc:
    lbu	$at,4900($a3)
    bnez	$at,.L0d95cd84
    nop
    sd	$ra,8($sp)
    # Line 92
    lw	$at,4912($a3)
    lw	$ra,31568($a3)
    addiu	$at,$at,256
    mult	$ra,$at
    lw	$a2,31604($a3)
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$a0,31600($a3)
    addiu	$t9,$t9,-13520
    sll	$a1,$a2,0x2
    addu	$a0,$a0,$a1
    mflo	$a1
    bal __glKonlSendPackedVertex
    subu	$a1,$a1,$a2
    b	.L0d95cd84
    ld	$ra,8($sp)
.end __glkon_ResumeSelectfeed

# Function: __glkonim_SelectBuffer
# Declared: Line 101 (Source lines: 101-130)
# Address: 0x0d95ce20 - 0x0d95cf28 (Size: 264 bytes, Frame: 48)
.globl __glkonim_SelectBuffer
.ent __glkonim_SelectBuffer
__glkonim_SelectBuffer:
    # Line 101
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 102
    lw	$s0,4112($zero)
    # Line 101
    move	$a3,$a1
    # Line 113
    li	$a1,7170
    # Line 102
    lw	$at,4120($zero)
    # Line 101
    sd	$s1,16($sp)
    # Line 102
    li	$v0,1
    # Line 101
    lui	$v1,0x13
    move	$s1,$a0
    sd	$ra,32($sp)
    addiu	$v1,$v1,16824
    sd	$gp,24($sp)
    # Line 102
    beq	$at,$v0,.L0d95cedc
    # Line 101
    addu	$gp,$t9,$v1
    # Line 108
    bltz	$a0,.L0d95cef8
    # Line 112
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 113
    lw	$a0,3204($s0)
    beq	$a0,$a1,.L0d95cf10
    # Line 117
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 118
    lw	$a1,31600($s0)
    beqz	$a1,.L0d95ce88
    sd	$a3,0($sp)
    # Line 122
    lw	$t9,12($s0)
    jal	__glSetError
    move	$a0,$s0
.L0d95ce88:
    # Line 126
    lw	$a2,31568($s0)
    addiu	$a3,$s1,256
    mult	$a2,$a3
    lw	$t9,0($s0)
    move	$a0,$s0
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 130
    ld	$gp,24($sp)
    # Line 128
    sw	$s1,4912($s0)
    # Line 130
    ld	$s1,16($sp)
    # Line 126
    sw	$v0,31600($s0)
    ld	$ra,32($sp)
    # Line 128
    ld	$a4,0($sp)
    sw	$a4,4904($s0)
    # Line 130
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95ced0:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95cedc:
    # Line 107
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95ced0
    ld	$ra,32($sp)
.L0d95cef8:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 112
    jalr	$t9
    li	$a0,1281
    b	.L0d95ced0
    ld	$ra,32($sp)
.L0d95cf10:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 117
    jalr	$t9
    li	$a0,1282
    b	.L0d95ced0
    ld	$ra,32($sp)
.end __glkonim_SelectBuffer

# Function: __glkonim_FeedbackBuffer
# Declared: Line 133 (Source lines: 133-163)
# Address: 0x0d95cf30 - 0x0d95d004 (Size: 212 bytes, Frame: 16)
.globl __glkonim_FeedbackBuffer
.ent __glkonim_FeedbackBuffer
__glkonim_FeedbackBuffer:
    # Line 159
    li	$t0,23
    # Line 133
    addiu	$sp,$sp,-16
    # Line 134
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 133
    lui	$v1,0x13
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,16552
    sd	$gp,0($sp)
    # Line 134
    beq	$at,$v0,.L0d95cfe0
    # Line 133
    addu	$gp,$t9,$v1
    # Line 142
    sltiu	$a3,$a1,1536
    bnez	$a3,.L0d95cfbc
    sltiu	$a5,$a1,1541
    beqz	$a5,.L0d95cfc0
    # Line 143
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 144
    bltz	$a0,.L0d95cff4
    # Line 148
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 149
    li	$a7,7169
    lw	$a6,3204($a4)
    beq	$a6,$a7,.L0d95cfd0
    # Line 153
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 162
    sw	$a1,4884($a4)
    # Line 160
    sw	$a2,4872($a4)
    sw	$a0,4880($a4)
    # Line 159
    sw	$t0,16384($zero)
    sw	$a1,16384($zero)
    # Line 157
    sw	$a2,31592($a4)
    # Line 163
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95cfb0:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95cfbc:
    # Line 143
    # lw $t9, -28616($gp) # &__glSetError
.L0d95cfc0:
    jal	__glSetError
    li	$a0,1280
    b	.L0d95cfb0
    ld	$ra,8($sp)
.L0d95cfd0:
    # Line 153
    jalr	$t9
    li	$a0,1282
    b	.L0d95cfb0
    ld	$ra,8($sp)
.L0d95cfe0:
    # Line 138
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95cfb0
    ld	$ra,8($sp)
.L0d95cff4:
    # Line 148
    jalr	$t9
    li	$a0,1281
    b	.L0d95cfb0
    ld	$ra,8($sp)
.end __glkonim_FeedbackBuffer

# Function: ResolveFeedback
# Declared: Line 166 (Source lines: 166-219)
# Address: 0x0d95d010 - 0x0d95d218 (Size: 520 bytes, Frame: 208)
.ent ResolveFeedback
ResolveFeedback:
    # Line 166
    addiu	$sp,$sp,-80
    sd	$s2,56($sp)
    sd	$ra,64($sp)
    sd	$s0,40($sp)
    # Line 174
    lw	$a1,4112($zero)
    # Line 166
    sd	$s1,48($sp)
    # Line 184
    lw	$s1,31592($a1)
    # Line 176
    sb	$zero,6($sp)
    sb	$zero,5($sp)
    # Line 175
    li	$a0,8
    sb	$a0,4($sp)
    li	$a4,2
    sb	$a4,0($sp)
    li	$a2,7
    sb	$a2,3($sp)
    li	$a3,3
    sb	$a3,1($sp)
    sb	$a3,2($sp)
    # Line 177
    lbu	$a3,3220($a1)
    li	$a4,1
    li	$a0,4
    # Line 185
    lbu	$at,4868($a1)
    # Line 177
    movz	$a0,$a4,$a3
    # Line 180
    sb	$a0,9($sp)
    # Line 181
    lw	$v1,4884($a1)
    # Line 182
    addiu	$a2,$sp,5
    # Line 179
    sb	$a0,8($sp)
    # Line 178
    sb	$a0,7($sp)
    # Line 182
    addu	$v0,$v1,$sp
    addu	$v1,$v1,$a2
    lbu	$v1,-1536($v1)
    lbu	$v0,-1536($v0)
    # Line 185
    sw	$at,12($sp)
    # Line 182
    addu	$v0,$v0,$v1
    # Line 186
    beqz	$at,.L0d95d1cc
    sd	$v0,32($sp)
    # Line 187
    move	$s0,$zero
.L0d95d0a4:
    # Line 190
    lw	$a6,31580($a1)
    # Line 188
    lw	$a5,31596($a1)
    # Line 190
    andi	$a6,$a6,0x8
    lw	$a2,4880($a1)
    beqz	$a6,.L0d95d0e0
    # Line 188
    addu	$s0,$a5,$s0
.L0d95d0bc:
    # Line 217
    lw	$a7,12($sp)
.L0d95d0c0:
    ld	$ra,64($sp)
    ld	$s2,56($sp)
    # Line 218
    li	$v0,-1
    # Line 219
    ld	$s1,48($sp)
    movz	$v0,$s0,$a7
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d95d0e0:
    # Line 190
    blez	$s0,.L0d95d0bc
    ld	$t0,32($sp)
    move	$s2,$zero
    sd	$a2,16($sp)
    addu	$t0,$t0,$t0
    b	.L0d95d208
    sd	$t0,24($sp)
.L0d95d0fc:
    # Line 202
    li	$a1,1
.L0d95d100:
    # Line 207
    sll	$t8,$a1,0x2
    # Line 208
    addu	$s2,$a1,$s2
    # Line 207
    addu	$s1,$s1,$t8
    # Line 208
    addiu	$s2,$s2,1
    # Line 207
    addiu	$s1,$s1,4
    # Line 190
    la	$a1,.rodata
.L0d95d118:
    # Line 217
    slt	$t9,$s2,$s0
    beqz	$t9,.L0d95d178
    # Line 190
    addiu	$a1,$a1,376
    lwc1	$f0,0($s1)
.L0d95d128:
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    addiu	$a2,$a2,-1792
    sltiu	$a3,$a2,8
    sll	$a2,$a2,0x2
    beqz	$a3,.L0d95d150
    addu	$a1,$a1,$a2
    lw	$a3,0($a1)
    jr	$a3
    # Line 200
    ld	$a1,32($sp)
.L0d95d150:
    # Line 204
    ld	$a2,16($sp)
    # lw $t9, -18528($gp) # &bcopy
    move	$a1,$s1
    subu	$a2,$a2,$s2
    addiu	$a0,$s1,4
    sll	$a2,$a2,0x2
    jal	bcopy
    addiu	$a2,$a2,-4
    b	.L0d95d118
    # Line 190
    la	$a1,.rodata
.L0d95d178:
    b	.L0d95d0c0
    # Line 217
    lw	$a7,12($sp)
.L0d95d180:
    # Line 195
    b	.L0d95d100
    ld	$a1,32($sp)
.L0d95d188:
    # Line 197
    b	.L0d95d100
    ld	$a1,24($sp)
.L0d95d190:
    # Line 201
    b	.L0d95d100
    ld	$a1,32($sp)
.L0d95d198:
    # Line 199
    b	.L0d95d100
    ld	$a1,32($sp)
.L0d95d1a0:
    # Line 198
    ld	$a3,32($sp)
    mtc1	$a3,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,4($s1)
    lwc1	$f1,_lit_3f800000
    madd.s	$f1,$f1,$f2,$f3
    trunc.w.s	$f1,$f1
    b	.L0d95d100
    mfc1	$a1,$f1
.L0d95d1c4:
    # Line 196
    b	.L0d95d100
    ld	$a1,24($sp)
.L0d95d1cc:
    # Line 186
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-13408
    sd	$a1,72($sp)
    bal __glKonlSendPackedVertex
    addiu	$a0,$sp,12
    ld	$a1,72($sp)
    bgez	$v0,.L0d95d0a4
    move	$s0,$v0
    ld	$ra,64($sp)
    ld	$s2,56($sp)
    # Line 187
    move	$v0,$zero
    # Line 219
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d95d208:
    # Line 190
    la	$a1,.rodata
    addiu	$a1,$a1,376
    b	.L0d95d128
    lwc1	$f0,0($s1)
.end ResolveFeedback

# Function: ResolveSelect
# Declared: Line 223 (Source lines: 223-300)
# Address: 0x0d95d220 - 0x0d95d458 (Size: 568 bytes, Frame: 48)
.ent ResolveSelect
ResolveSelect:
    # Line 223
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    sd	$s1,16($sp)
    sd	$s3,32($sp)
    # Line 224
    lw	$s3,4112($zero)
    # Line 223
    sd	$s2,24($sp)
    # Line 233
    lw	$s2,4912($s3)
    # Line 236
    lbu	$at,4900($s3)
    # Line 229
    lw	$s1,4904($s3)
    # Line 228
    lw	$s0,31600($s3)
    # Line 237
    beqz	$at,.L0d95d41c
    # Line 236
    sw	$at,0($sp)
    # Line 238
    lw	$a5,4($sp)
.L0d95d254:
    # Line 237
    blez	$a5,.L0d95d3fc
    move	$t2,$zero
    li	$a4,-1
    lui	$t9,0x2bad
    b	.L0d95d398
    ori	$t9,$t9,0x2d00
.L0d95d26c:
    # Line 259
    lw	$a1,0($s0)
    # Line 260
    subu	$a5,$a5,$a1
    addiu	$a5,$a5,-4
    bltz	$a5,.L0d95d414
    # Line 259
    sw	$a1,0($s1)
    # Line 260
    subu	$s2,$s2,$a1
    addiu	$s2,$s2,-3
    bltz	$s2,.L0d95d414
    # Line 267
    addiu	$s0,$s0,12
    # Line 270
    addiu	$t8,$a1,-1
    # Line 267
    lw	$t0,-4($s0)
    # Line 264
    addiu	$t3,$s1,4
    # Line 268
    addiu	$s1,$s1,12
    # Line 266
    lw	$a7,-8($s0)
    # Line 270
    beq	$t8,$a4,.L0d95d308
    move	$a2,$t8
    andi	$at,$a1,0x1
    beqz	$at,.L0d95d2d0
    sra	$v1,$a1,0x1
    addiu	$s1,$s1,4
    lw	$v0,0($s0)
    addiu	$a2,$a1,-2
    addiu	$s0,$s0,4
    sw	$v0,-4($s1)
    sra	$v1,$a1,0x1
.L0d95d2d0:
    beqz	$v1,.L0d95d308
    move	$a3,$s1
    move	$a1,$s0
    nop
.L0d95d2e0:
    lw	$a6,0($a1)
    addiu	$a2,$a2,-2
    sw	$a6,0($a3)
    addiu	$a3,$a3,8
    lw	$a0,4($a1)
    addiu	$a1,$a1,8
    bne	$a2,$a4,.L0d95d2e0
    sw	$a0,-4($a3)
    move	$s0,$a1
    move	$s1,$a3
.L0d95d308:
    # Line 272
    lw	$t8,0($s0)
    bne	$t8,$t1,.L0d95d38c
    addiu	$t2,$t2,1
.L0d95d314:
    # Line 276
    lw	$a6,4($s0)
    # Line 277
    subu	$a5,$a5,$a6
    addiu	$a5,$a5,-4
    bltz	$a5,.L0d95d3dc
    # Line 278
    li	$a2,1
    # Line 282
    lw	$at,8($s0)
    # Line 290
    addiu	$a2,$a6,-1
    # Line 283
    lw	$v1,12($s0)
    # Line 285
    sltu	$t8,$at,$a7
    # Line 283
    addiu	$s0,$s0,16
    # Line 285
    movn	$a7,$at,$t8
    # Line 287
    sltu	$v0,$t0,$v1
    # Line 290
    beq	$a2,$a4,.L0d95d380
    # Line 287
    movn	$t0,$v1,$v0
    sra	$a0,$a6,0x3
    andi	$a1,$a6,0x7
    beqz	$a1,.L0d95d368
.L0d95d358:
    addiu	$a1,$a1,-1
    # Line 290
    addiu	$a2,$a2,-1
    bnez	$a1,.L0d95d358
    addiu	$s0,$s0,4
.L0d95d368:
    beqz	$a0,.L0d95d380
    move	$a1,$s0
.L0d95d370:
    addiu	$a2,$a2,-8
    bne	$a2,$a4,.L0d95d370
    addiu	$a1,$a1,32
    move	$s0,$a1
.L0d95d380:
    lw	$a1,0($s0)
    beq	$a1,$t1,.L0d95d314
    nop
.L0d95d38c:
    # Line 295
    sw	$t0,4($t3)
    blez	$a5,.L0d95d404
    # Line 294
    sw	$a7,0($t3)
.L0d95d398:
    # Line 242
    slti	$a2,$a5,2
    bnez	$a2,.L0d95d40c
    nop
    blez	$s2,.L0d95d40c
    nop
    # Line 253
    lw	$a3,31580($s3)
    andi	$a3,$a3,0x8
    # Line 247
    lw	$t1,0($s0)
    # Line 253
    bnez	$a3,.L0d95d26c
    # Line 247
    addiu	$s0,$s0,4
    # Line 253
    beqz	$t1,.L0d95d3d0
    nop
    bne	$t9,$t1,.L0d95d26c
    nop
.L0d95d3d0:
    # Line 256
    lw	$t1,0($s0)
    b	.L0d95d26c
    addiu	$s0,$s0,4
.L0d95d3dc:
    # Line 300
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    addiu	$sp,$sp,48
    move	$v0,$t2
    jr	$ra
    movn	$v0,$a4,$a2
.L0d95d3fc:
    # Line 295
    move	$t2,$zero
    li	$a4,-1
.L0d95d404:
    b	.L0d95d3dc
    lw	$a2,0($sp)
.L0d95d40c:
    # Line 244
    b	.L0d95d3dc
    # Line 243
    li	$a2,1
.L0d95d414:
    # Line 262
    b	.L0d95d3dc
    # Line 261
    li	$a2,1
.L0d95d41c:
    # Line 237
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,-13408
    sd	$ra,40($sp)
    bal __glKonlSendPackedVertex
    addiu	$a0,$sp,0
    ld	$ra,40($sp)
    bgez	$v0,.L0d95d254
    move	$a5,$v0
    # Line 300
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 238
    move	$v0,$zero
    # Line 300
    ld	$s2,24($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end ResolveSelect

# Function: __glkonim_RenderMode
# Declared: Line 304 (Source lines: 304-351)
# Address: 0x0d95d460 - 0x0d95d65c (Size: 508 bytes, Frame: 48)
.globl __glkonim_RenderMode
.ent __glkonim_RenderMode
__glkonim_RenderMode:
    # Line 306
    lw	$v0,4112($zero)
    # Line 304
    addiu	$sp,$sp,-48
    # Line 306
    lw	$at,4120($zero)
    sd	$ra,32($sp)
    li	$v1,1
    # Line 304
    lui	$a1,0x13
    sd	$s0,16($sp)
    move	$s0,$a0
    addiu	$a0,$a1,15224
    sd	$gp,24($sp)
    # Line 306
    beq	$at,$v1,.L0d95d644
    # Line 304
    addu	$gp,$t9,$a0
    # Line 308
    sltiu	$a2,$s0,7168
    bnez	$a2,.L0d95d530
    # Line 309
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 308
    sltiu	$a3,$s0,7171
    beqz	$a3,.L0d95d52c
    # Line 312
    li	$a0,7169
    beq	$a0,$s0,.L0d95d570
    sd	$v0,8($sp)
    li	$a3,7170
.L0d95d4b4:
    beq	$a3,$s0,.L0d95d550
    ld	$a1,8($sp)
.L0d95d4bc:
    # Line 321
    ld	$v0,8($sp)
    lw	$v0,3204($v0)
    li	$a4,7168
    # Line 318
    li	$a5,25
    sw	$a5,16384($zero)
    # Line 321
    beq	$a4,$v0,.L0d95d588
    # Line 318
    sw	$s0,16384($zero)
    # Line 321
    beq	$a0,$v0,.L0d95d604
    # Line 325
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    # Line 321
    beq	$a3,$v0,.L0d95d624
    # Line 327
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
.L0d95d4e8:
    # Line 331
    beq	$a4,$s0,.L0d95d500
    # Line 351
    lw	$v0,0($sp)
    # Line 331
    beq	$a0,$s0,.L0d95d5d4
    # Line 337
    ld	$v0,8($sp)
    # Line 331
    beq	$a3,$s0,.L0d95d590
    # Line 351
    lw	$v0,0($sp)
.L0d95d500:
    # Line 350
    ld	$v1,8($sp)
    ld	$ra,32($sp)
    # Line 351
    ld	$gp,24($sp)
    # Line 350
    sw	$s0,3204($v1)
    # Line 351
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95d51c:
    ld	$ra,32($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95d52c:
    # Line 309
    # lw $t9, -28616($gp) # &__glSetError
.L0d95d530:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
    # Line 310
    move	$v0,$zero
    # Line 351
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d95d550:
    # Line 312
    lw	$a1,4904($a1)
    bnez	$a1,.L0d95d4bc
    # Line 314
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d95d55c:
    ld	$s0,16($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 315
    b	.L0d95d51c
    move	$v0,$zero
.L0d95d570:
    # Line 312
    ld	$a2,8($sp)
    lw	$a2,4872($a2)
    bnez	$a2,.L0d95d4b4
    li	$a3,7170
    b	.L0d95d55c
    # Line 314
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d95d588:
    b	.L0d95d4e8
    # Line 323
    sw	$zero,0($sp)
.L0d95d590:
    # Line 344
    ld	$a3,8($sp)
    lw	$at,4912($a3)
    lw	$ra,31568($a3)
    addiu	$at,$at,256
    mult	$ra,$at
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$a0,31600($a3)
    addiu	$t9,$t9,-13520
    # Line 343
    sb	$zero,4900($a3)
    # Line 344
    mflo	$a1
    bal __glKonlSendPackedVertex
    # Line 342
    sw	$zero,31604($a3)
    # Line 344
    bgez	$v0,.L0d95d500
    # Line 351
    lw	$v0,0($sp)
    ld	$s0,16($sp)
    # Line 346
    b	.L0d95d51c
    move	$v0,$zero
.L0d95d5d4:
    # Line 337
    # lw $t9, -32740($gp) # &sub_0d960000
    lw	$a1,4880($v0)
    lw	$a0,31592($v0)
    addiu	$t9,$t9,-13520
    # Line 336
    sb	$zero,4868($v0)
    # Line 337
    bal __glKonlSendPackedVertex
    # Line 335
    sw	$zero,31596($v0)
    # Line 337
    bgez	$v0,.L0d95d500
    # Line 351
    lw	$v0,0($sp)
    ld	$s0,16($sp)
    # Line 339
    b	.L0d95d51c
    move	$v0,$zero
.L0d95d604:
    # Line 325
    addiu	$t9,$t9,-12272
    bal __glkonim_FeedbackBuffer
    nop
    li	$a0,7169
    li	$a3,7170
    li	$a4,7168
    b	.L0d95d4e8
    sw	$v0,0($sp)
.L0d95d624:
    # Line 327
    addiu	$t9,$t9,-11744
    bal __glkonim_FeedbackBuffer
    nop
    li	$a0,7169
    li	$a3,7170
    li	$a4,7168
    b	.L0d95d4e8
    sw	$v0,0($sp)
.L0d95d644:
    # Line 306
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,16($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95d51c
    move	$v0,$zero
.end __glkonim_RenderMode

.late_rodata
jtbl_0da80178:
    .word .L0d95d0fc
    .word .L0d95d180
    .word .L0d95d1c4
    .word .L0d95d1a0
    .word .L0d95d198
    .word .L0d95d100
    .word .L0d95d190
    .word .L0d95d188

.rdata
_lit_3f800000:
    .word 0x3f800000

