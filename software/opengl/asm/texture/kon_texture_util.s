# Source: ../KONA/texture/kon_texture_util.c
# Category: texture
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/texture/kon_texture_util.c
# Total Functions: 25

.text

# Function: allocHashBlock
# Declared: Line 13 (Source lines: 14-23)
# Address: 0x0d978100 - 0x0d978164 (Size: 100 bytes, Frame: 16)
.globl allocHashBlock
.ent allocHashBlock
allocHashBlock:
    # Line 14
    addiu	$sp,$sp,-16
    # Line 15
    lw	$a0,4112($zero)
    # Line 14
    lui	$at,0x12
    sd	$gp,8($sp)
    addiu	$at,$at,-28968
    addu	$gp,$t9,$at
    # Line 16
    lw	$t9,0($a0)
    # Line 14
    sd	$ra,0($sp)
    # Line 16
    jalr	$t9
    li	$a1,0x8004
    ld	$ra,0($sp)
    # Line 19
    li	$a3,0x8000
    sw	$zero,0($v0)
    move	$a2,$v0
    addu	$a3,$v0,$a3
    nop
.L0d978140:
    # Line 21
    sw	$zero,32($a2)
    sw	$zero,24($a2)
    # Line 20
    addiu	$a2,$a2,32
    # Line 21
    sw	$zero,-16($a2)
    # Line 20
    bne	$a2,$a3,.L0d978140
    # Line 21
    sw	$zero,-24($a2)
    # Line 23
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end allocHashBlock

# Function: wrapHashCacheLRU
# Declared: Line 30 (Source lines: 32-38)
# Address: 0x0d978170 - 0x0d9781e4 (Size: 116 bytes, Frame: 0)
.ent wrapHashCacheLRU
wrapHashCacheLRU:
    # Line 32
    lui	$a3,0xe000
    li	$a5,4096
    move	$a4,$zero
    b	.L0d978198
    addiu	$a2,$a0,8
    nop
    nop
    nop
.L0d978190:
    # Line 35
    beq	$a4,$a5,.L0d9781dc
    addiu	$a2,$a2,24
.L0d978198:
    # Line 36
    lw	$at,8($a2)
    lw	$v0,4($a2)
    # Line 35
    addiu	$a4,$a4,2
    # Line 36
    beqz	$at,.L0d9781b4
    addu	$v0,$v0,$a3
    bltz	$v0,.L0d9781d4
    sw	$v0,4($a2)
.L0d9781b4:
    lw	$v1,20($a2)
    lw	$a0,16($a2)
    beqz	$v1,.L0d978190
    addu	$a0,$a0,$a3
    bgez	$a0,.L0d978190
    sw	$a0,16($a2)
    # Line 37
    b	.L0d978190
    sw	$zero,16($a2)
.L0d9781d4:
    b	.L0d9781b4
    sw	$zero,4($a2)
.L0d9781dc:
    # Line 38
    jr	$ra
    nop
.end wrapHashCacheLRU

# Function: insertHashBlock
# Declared: Line 44 (Source lines: 45-73)
# Address: 0x0d9781f0 - 0x0d9782f8 (Size: 264 bytes, Frame: 48)
.ent insertHashBlock
insertHashBlock:
    # Line 53
    lw	$at,0($a0)
    # Line 45
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    move	$s0,$a1
    # Line 53
    move	$a7,$at
    # Line 45
    sd	$s1,16($sp)
    # Line 53
    beqz	$at,.L0d978278
    move	$s1,$at
    li	$t1,8
    li	$t0,6
    andi	$t2,$a1,0x3f
    andi	$a1,$a1,0xfff
    nop
    nop
    nop
    # Line 55
    srav	$v0,$s0,$t0
.L0d978230:
    move	$a5,$a1
    sll	$v0,$v0,0x6
    move	$a6,$zero
    or	$v0,$t2,$v0
.L0d978240:
    # Line 58
    sll	$v1,$a5,0x3
    addu	$v1,$a7,$v1
    lw	$v1,8($v1)
    beqz	$v1,.L0d978260
    # Line 57
    addiu	$a6,$a6,1
    subu	$a5,$a5,$v0
    bne	$a6,$t1,.L0d978240
    andi	$a5,$a5,0xfff
.L0d978260:
    # Line 53
    addiu	$t0,$t0,1
    move	$s1,$a7
    lw	$a7,0($a7)
    bnez	$a7,.L0d978230
    # Line 55
    srav	$v0,$s0,$t0
    # Line 53
    sw	$a5,0($sp)
.L0d978278:
    bnez	$a7,.L0d9782ac
    sd	$a0,8($sp)
    # Line 63
    # lw $t9, -31588($gp) # &allocHashBlock
    sd	$ra,32($sp)
    bal allocHashBlock
    sd	$a2,40($sp)
    ld	$a1,40($sp)
    ld	$ra,32($sp)
    bnez	$s1,.L0d9782d0
    move	$a7,$v0
    # Line 65
    ld	$a6,8($sp)
    b	.L0d9782d4
    sw	$v0,0($a6)
.L0d9782ac:
    # Line 68
    lw	$t0,0($sp)
    # Line 71
    sll	$t0,$t0,0x3
    # Line 73
    ld	$s1,16($sp)
    # Line 71
    addu	$a7,$a7,$t0
    # Line 72
    sw	$a2,4($a7)
    # Line 71
    sw	$s0,8($a7)
    # Line 73
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9782d0:
    # Line 67
    sw	$v0,0($s1)
.L0d9782d4:
    # Line 68
    andi	$t1,$s0,0xfff
    # Line 71
    sll	$t1,$t1,0x3
    # Line 73
    ld	$s1,16($sp)
    # Line 71
    addu	$t1,$a7,$t1
    # Line 72
    sw	$a1,4($t1)
    # Line 71
    sw	$s0,8($t1)
    # Line 73
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end insertHashBlock

# Function: __glKonHashFindTexFast
# Declared: Line 80 (Source lines: 87-96)
# Address: 0x0d978300 - 0x0d97837c (Size: 124 bytes, Frame: 0)
.globl __glKonHashFindTexFast
.ent __glKonHashFindTexFast
__glKonHashFindTexFast:
    # Line 87
    andi	$a3,$a1,0xfff
    sll	$a4,$a3,0x2
    subu	$a4,$a4,$a3
    sll	$a4,$a4,0x2
    addu	$a4,$a0,$a4
    lw	$at,16($a4)
    beq	$at,$a1,.L0d978374
    # Line 88
    lw	$v0,8($a4)
    andi	$a5,$a1,0x3f
    srl	$a6,$a1,0xc
    li	$a7,4
    sll	$a6,$a6,0x6
    move	$a4,$zero
    or	$a5,$a5,$a6
    # Line 92
    subu	$a3,$a3,$a5
.L0d97833c:
    andi	$a3,$a3,0xfff
    sll	$a6,$a3,0x2
    subu	$a6,$a6,$a3
    sll	$a6,$a6,0x2
    addu	$a6,$a0,$a6
    lw	$t0,16($a6)
    beq	$t0,$a1,.L0d97836c
    # Line 91
    addiu	$a4,$a4,1
    bne	$a4,$a7,.L0d97833c
    # Line 92
    subu	$a3,$a3,$a5
    # Line 96
    jr	$ra
    move	$v0,$zero
.L0d97836c:
    jr	$ra
    # Line 93
    lw	$v0,8($a6)
.L0d978374:
    # Line 96
    jr	$ra
    nop
.end __glKonHashFindTexFast

# Function: __glKonHashFindTexSlow
# Declared: Line 104 (Source lines: 105-164)
# Address: 0x0d978380 - 0x0d9785d0 (Size: 592 bytes, Frame: 192)
.globl __glKonHashFindTexSlow
.ent __glKonHashFindTexSlow
__glKonHashFindTexSlow:
    # Line 116
    andi	$t1,$a1,0xfff
    sll	$a2,$t1,0x2
    subu	$a2,$a2,$t1
    sll	$a2,$a2,0x2
    addu	$a2,$a0,$a2
    # Line 113
    lui	$a7,0x4000
    # Line 105
    addiu	$sp,$sp,-64
    # Line 116
    lw	$v1,16($a2)
    # Line 105
    sd	$s0,8($sp)
    move	$s0,$a0
    lui	$at,0x12
    # Line 116
    move	$v0,$t1
    # Line 105
    addiu	$at,$at,-29608
    sd	$gp,16($sp)
    # Line 116
    beq	$v1,$a1,.L0d97853c
    # Line 105
    addu	$gp,$t9,$at
    # Line 120
    li	$t2,4
    move	$a0,$zero
    move	$a5,$a7
    srl	$t0,$a1,0xc
    andi	$t3,$a1,0x3f
    sll	$t0,$t0,0x6
    move	$a2,$zero
    sd	$s1,40($sp)
    or	$t0,$t3,$t0
.L0d9783e4:
    # Line 125
    subu	$a6,$v0,$t0
    andi	$a6,$a6,0xfff
    sll	$s1,$a6,0x2
    subu	$s1,$s1,$a6
    sll	$s1,$s1,0x2
    addu	$s1,$s0,$s1
    lw	$t8,16($s1)
    # Line 124
    addiu	$a2,$a2,1
    # Line 125
    move	$v0,$a6
    beq	$t8,$a1,.L0d978488
    # Line 129
    lw	$t9,12($s1)
    slt	$t8,$t9,$a5
    movn	$a5,$t9,$t8
    # Line 124
    bne	$a2,$t2,.L0d9783e4
    movn	$a0,$a6,$t8
    # Line 139
    lw	$a5,0($s0)
    beqz	$a5,.L0d978480
    li	$t0,8
    li	$t2,6
    # Line 141
    srlv	$a6,$a1,$t2
    # Line 139
    addiu	$t2,$t2,1
    # Line 141
    sll	$a6,$a6,0x6
.L0d97843c:
    move	$v0,$t1
    move	$a2,$zero
    or	$a6,$t3,$a6
    sll	$s1,$v0,0x3
.L0d97844c:
    addu	$s1,$a5,$s1
    lw	$t8,8($s1)
    # Line 143
    addiu	$a2,$a2,1
    subu	$v0,$v0,$a6
    # Line 141
    beq	$t8,$a1,.L0d9784bc
    # Line 143
    andi	$v0,$v0,0xfff
    bne	$a2,$t0,.L0d97844c
    # Line 141
    sll	$s1,$v0,0x3
    # Line 139
    lw	$a5,0($a5)
    # Line 141
    srlv	$a6,$a1,$t2
    # Line 139
    addiu	$t2,$t2,1
    bnez	$a5,.L0d97843c
    # Line 141
    sll	$a6,$a6,0x6
.L0d978480:
    b	.L0d9784a8
    # Line 164
    move	$v0,$zero
.L0d978488:
    # Line 126
    lw	$a0,4($s0)
    addiu	$a1,$a0,1
    sw	$a1,4($s0)
    sw	$a0,12($s1)
    lw	$v1,4($s0)
    beq	$v1,$a7,.L0d97856c
    # Line 128
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
.L0d9784a4:
    # Line 129
    lw	$v0,8($s1)
.L0d9784a8:
    ld	$s0,8($sp)
    ld	$s1,40($sp)
    # Line 164
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9784bc:
    # Line 145
    sll	$a5,$a0,0x2
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    # Line 148
    lw	$a6,4($s0)
    # Line 145
    addu	$a5,$s0,$a5
    # Line 146
    lw	$v0,16($a5)
    # Line 145
    lw	$a2,8($a5)
    # Line 148
    addiu	$t0,$a6,1
    sw	$t0,4($s0)
    # Line 149
    sw	$a1,16($a5)
    # Line 148
    sw	$a6,12($a5)
    # Line 150
    lw	$a4,4($s1)
    sw	$a4,8($a5)
    lw	$a3,4($s0)
    beq	$a3,$a7,.L0d978584
    # Line 145
    sd	$a5,0($sp)
.L0d9784fc:
    # Line 154
    bltz	$v0,.L0d978520
    sw	$zero,8($s1)
    # Line 157
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-32272
    move	$a0,$s0
    sd	$ra,56($sp)
    bal allocHashBlock
    move	$a1,$v0
    ld	$ra,56($sp)
.L0d978520:
    ld	$s1,40($sp)
    # Line 164
    ld	$gp,16($sp)
    # Line 159
    ld	$v0,0($sp)
    # Line 164
    ld	$s0,8($sp)
    # Line 159
    lw	$v0,8($v0)
    # Line 164
    jr	$ra
    addiu	$sp,$sp,64
.L0d97853c:
    # Line 117
    lw	$a0,4($a0)
    addiu	$a1,$a0,1
    sw	$a1,4($s0)
    sw	$a0,12($a2)
    lw	$v1,4($s0)
    beq	$v1,$a7,.L0d9785b0
    # Line 119
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
.L0d978558:
    # Line 120
    lw	$v0,8($a2)
    # Line 164
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d97856c:
    # Line 128
    addiu	$t9,$t9,-32400
    sd	$ra,56($sp)
    bal allocHashBlock
    move	$a0,$s0
    b	.L0d9784a4
    ld	$ra,56($sp)
.L0d978584:
    # Line 153
    # lw $t9, -32732($gp) # &sub_0d980000
    sd	$a2,24($sp)
    addiu	$t9,$t9,-32400
    sd	$v0,32($sp)
    sd	$ra,56($sp)
    bal allocHashBlock
    move	$a0,$s0
    ld	$ra,56($sp)
    ld	$v0,32($sp)
    b	.L0d9784fc
    ld	$a2,24($sp)
.L0d9785b0:
    # Line 119
    addiu	$t9,$t9,-32400
    sd	$a2,48($sp)
    sd	$ra,56($sp)
    bal allocHashBlock
    move	$a0,$s0
    ld	$ra,56($sp)
    b	.L0d978558
    ld	$a2,48($sp)
.end __glKonHashFindTexSlow

# Function: __glKonHashDeleteTexFast
# Declared: Line 172 (Source lines: 180-193)
# Address: 0x0d9785d0 - 0x0d978650 (Size: 128 bytes, Frame: 0)
.globl __glKonHashDeleteTexFast
.ent __glKonHashDeleteTexFast
__glKonHashDeleteTexFast:
    # Line 180
    andi	$a3,$a1,0xfff
    sll	$a4,$a3,0x2
    subu	$a4,$a4,$a3
    sll	$a4,$a4,0x2
    addu	$a4,$a0,$a4
    lw	$at,16($a4)
    beq	$at,$a1,.L0d978648
    # Line 182
    lw	$v0,8($a4)
    andi	$a5,$a1,0x3f
    srl	$a6,$a1,0xc
    li	$a7,4
    sll	$a6,$a6,0x6
    move	$a4,$zero
    or	$a5,$a5,$a6
    # Line 187
    subu	$a3,$a3,$a5
.L0d97860c:
    andi	$a3,$a3,0xfff
    sll	$a6,$a3,0x2
    subu	$a6,$a6,$a3
    sll	$a6,$a6,0x2
    addu	$a6,$a0,$a6
    lw	$t0,16($a6)
    beq	$t0,$a1,.L0d97863c
    # Line 186
    addiu	$a4,$a4,1
    bne	$a4,$a7,.L0d97860c
    # Line 187
    subu	$a3,$a3,$a5
    # Line 193
    jr	$ra
    move	$v0,$zero
.L0d97863c:
    # Line 189
    lw	$v0,8($a6)
    # Line 193
    jr	$ra
    # Line 188
    sw	$zero,16($a6)
.L0d978648:
    # Line 193
    jr	$ra
    # Line 181
    sw	$zero,16($a4)
.end __glKonHashDeleteTexFast

# Function: __glKonHashDeleteTexSlow
# Declared: Line 201 (Source lines: 211-236)
# Address: 0x0d978650 - 0x0d978740 (Size: 240 bytes, Frame: 0)
.globl __glKonHashDeleteTexSlow
.ent __glKonHashDeleteTexSlow
__glKonHashDeleteTexSlow:
    # Line 211
    andi	$t0,$a1,0xfff
    sll	$a4,$t0,0x2
    subu	$a4,$a4,$t0
    sll	$a4,$a4,0x2
    addu	$a4,$a0,$a4
    lw	$at,16($a4)
    beq	$at,$a1,.L0d978734
    move	$a3,$t0
    # Line 213
    li	$a7,4
    srl	$a5,$a1,0xc
    andi	$t2,$a1,0x3f
    sll	$a5,$a5,0x6
    move	$a4,$zero
    or	$a5,$t2,$a5
    # Line 218
    subu	$a3,$a3,$a5
.L0d97868c:
    andi	$a3,$a3,0xfff
    sll	$a6,$a3,0x2
    subu	$a6,$a6,$a3
    sll	$a6,$a6,0x2
    addu	$a6,$a0,$a6
    lw	$t1,16($a6)
    beq	$t1,$a1,.L0d97871c
    # Line 217
    addiu	$a4,$a4,1
    bne	$a4,$a7,.L0d97868c
    # Line 218
    subu	$a3,$a3,$a5
    # Line 224
    lw	$a5,0($a0)
    beqz	$a5,.L0d978714
    li	$a7,8
    li	$t1,6
    # Line 226
    srlv	$a6,$a1,$t1
    # Line 224
    addiu	$t1,$t1,1
    # Line 226
    sll	$a6,$a6,0x6
.L0d9786d0:
    move	$a3,$t0
    move	$a4,$zero
    or	$a6,$t2,$a6
    sll	$a0,$a3,0x3
.L0d9786e0:
    addu	$a0,$a5,$a0
    lw	$t3,8($a0)
    # Line 228
    addiu	$a4,$a4,1
    subu	$a3,$a3,$a6
    # Line 226
    beq	$t3,$a1,.L0d978728
    # Line 228
    andi	$a3,$a3,0xfff
    bne	$a4,$a7,.L0d9786e0
    # Line 226
    sll	$a0,$a3,0x3
    # Line 224
    lw	$a5,0($a5)
    # Line 226
    srlv	$a6,$a1,$t1
    # Line 224
    addiu	$t1,$t1,1
    bnez	$a5,.L0d9786d0
    # Line 226
    sll	$a6,$a6,0x6
.L0d978714:
    # Line 236
    jr	$ra
    move	$v0,$zero
.L0d97871c:
    # Line 220
    lw	$v0,8($a6)
    # Line 236
    jr	$ra
    # Line 219
    sw	$zero,16($a6)
.L0d978728:
    # Line 231
    lw	$v0,4($a0)
    # Line 236
    jr	$ra
    # Line 230
    sw	$zero,8($a0)
.L0d978734:
    # Line 213
    lw	$v0,8($a4)
    # Line 236
    jr	$ra
    # Line 212
    sw	$zero,16($a4)
.end __glKonHashDeleteTexSlow

# Function: __glKonHashInsertTexSlow
# Declared: Line 244 (Source lines: 245-270)
# Address: 0x0d978740 - 0x0d97881c (Size: 220 bytes, Frame: 16)
.globl __glKonHashInsertTexSlow
.ent __glKonHashInsertTexSlow
__glKonHashInsertTexSlow:
    # Line 252
    andi	$a4,$a1,0xfff
    sll	$a5,$a4,0x2
    subu	$a5,$a5,$a4
    sll	$a5,$a5,0x2
    addu	$a5,$a0,$a5
    lw	$at,16($a5)
    # Line 245
    addiu	$sp,$sp,-16
    lui	$v0,0x12
    sd	$ra,8($sp)
    addiu	$v0,$v0,-30568
    sd	$gp,0($sp)
    # Line 252
    beqz	$at,.L0d9787fc
    # Line 245
    addu	$gp,$t9,$v0
    # Line 256
    li	$t0,4
    srl	$a7,$a1,0xc
    andi	$a6,$a1,0x3f
    sll	$a7,$a7,0x6
    move	$a5,$zero
    ld	$ra,8($sp)
    or	$a6,$a6,$a7
    # Line 261
    subu	$a4,$a4,$a6
.L0d978794:
    andi	$a4,$a4,0xfff
    sll	$a7,$a4,0x2
    subu	$a7,$a7,$a4
    sll	$a7,$a7,0x2
    addu	$a7,$a0,$a7
    lw	$t1,16($a7)
    beqz	$t1,.L0d9787d4
    # Line 260
    addiu	$a5,$a5,1
    bne	$a5,$t0,.L0d978794
    # Line 261
    subu	$a4,$a4,$a6
    # Line 269
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-32272
    bal allocHashBlock
    nop
    b	.L0d9787f0
    ld	$ra,8($sp)
.L0d9787d4:
    # Line 262
    lw	$at,4($a0)
    # Line 264
    sw	$a2,8($a7)
    # Line 263
    sw	$a1,16($a7)
    # Line 270
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 262
    sw	$at,12($a7)
.L0d9787f0:
    # Line 270
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9787fc:
    # Line 253
    lw	$v0,4($a0)
    # Line 255
    sw	$a2,8($a5)
    # Line 254
    sw	$a1,16($a5)
    move	$ra,$ra
    # Line 270
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 253
    sw	$v0,12($a5)
.end __glKonHashInsertTexSlow

# Function: __glKonHashInsertTexFast
# Declared: Line 277 (Source lines: 278-307)
# Address: 0x0d978820 - 0x0d97891c (Size: 252 bytes, Frame: 32)
.globl __glKonHashInsertTexFast
.ent __glKonHashInsertTexFast
__glKonHashInsertTexFast:
    # Line 285
    andi	$a4,$a1,0xfff
    sll	$a5,$a4,0x2
    subu	$a5,$a5,$a4
    sll	$a5,$a5,0x2
    addu	$a5,$a0,$a5
    # Line 278
    addiu	$sp,$sp,-32
    # Line 285
    lw	$at,16($a5)
    # Line 288
    li	$a7,4
    # Line 278
    sd	$s0,8($sp)
    lui	$v0,0x12
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-30792
    sd	$gp,0($sp)
    # Line 285
    beqz	$at,.L0d978900
    # Line 278
    addu	$gp,$t9,$v0
    # Line 288
    andi	$a0,$a1,0x3f
    srl	$a3,$a1,0xc
    sll	$a3,$a3,0x6
    move	$a5,$zero
    ld	$ra,16($sp)
    or	$a0,$a0,$a3
    # Line 293
    subu	$a4,$a4,$a0
.L0d97887c:
    andi	$a4,$a4,0xfff
    sll	$a6,$a4,0x2
    subu	$a6,$a6,$a4
    sll	$a6,$a6,0x2
    addu	$a6,$s0,$a6
    lw	$t0,16($a6)
    beqz	$t0,.L0d9788e8
    # Line 292
    addiu	$a5,$a5,1
    bne	$a5,$a7,.L0d97887c
    # Line 293
    subu	$a4,$a4,$a0
    # Line 303
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-32272
    bal allocHashBlock
    move	$a0,$s0
    # Line 306
    la	$a0,__glKonHashInsertTexSlow
    # Line 305
    la	$v1,__glKonHashDeleteTexSlow
    # Line 304
    la	$at,__glKonHashFindTexSlow
    # Line 307
    ld	$gp,0($sp)
    # Line 304
    lui	$v0,0x1
    addu	$v0,$s0,$v0
    # Line 307
    ld	$s0,8($sp)
    ld	$ra,16($sp)
    # Line 306
    sw	$a0,-16368($v0)
    # Line 305
    sw	$v1,-16372($v0)
    # Line 307
    addiu	$sp,$sp,32
    jr	$ra
    # Line 304
    sw	$at,-16376($v0)
.L0d9788e8:
    # Line 295
    sw	$a2,8($a6)
    # Line 294
    sw	$a1,16($a6)
    # Line 307
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d978900:
    # Line 287
    sw	$a2,8($a5)
    # Line 286
    sw	$a1,16($a5)
    move	$ra,$ra
    # Line 307
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glKonHashInsertTexFast

# Function: __glKonInitTextureHash
# Declared: Line 313 (Source lines: 314-318)
# Address: 0x0d978920 - 0x0d978950 (Size: 48 bytes, Frame: 0)
.globl __glKonInitTextureHash
.ent __glKonInitTextureHash
__glKonInitTextureHash:
    # Line 314
    lui	$a1,0x12
    addiu	$a1,$a1,-31048
    addu	$at,$t9,$a1
    # Line 315
    lui	$v1,0x1
    la	$v0,__glKonHashInsertTexFast
    addu	$v1,$a0,$v1
    # Line 316
    la	$a0,__glKonHashDeleteTexFast
    # Line 317
    la	$a1,__glKonHashFindTexFast
    sw	$a1,-16376($v1)
    # Line 316
    sw	$a0,-16372($v1)
    # Line 318
    jr	$ra
    # Line 315
    sw	$v0,-16368($v1)
.end __glKonInitTextureHash

# Function: __glKonFreeTextures
# Declared: Line 325 (Source lines: 326-343)
# Address: 0x0d978950 - 0x0d978a30 (Size: 224 bytes, Frame: 192)
.globl __glKonFreeTextures
.ent __glKonFreeTextures
__glKonFreeTextures:
    # Line 326
    addiu	$sp,$sp,-64
    sd	$s3,40($sp)
    sd	$s4,8($sp)
    sd	$s1,24($sp)
    move	$s1,$a0
    move	$s4,$a1
    sd	$s0,16($sp)
    move	$s0,$a1
    sd	$ra,48($sp)
    lui	$at,0x12
    addiu	$at,$at,-31096
    sd	$s2,0($sp)
    li	$s2,0xc000
    sd	$gp,32($sp)
    addu	$s2,$a1,$s2
    addu	$gp,$t9,$at
    nop
    nop
    nop
    lw	$t8,16($s0)
.L0d9789a0:
    beqz	$t8,.L0d9789b4
    # Line 333
    nop	# was lw $t9, -31836($gp) # &__glKonFreeTextureObj
    move	$a0,$s1
    jal	__glKonFreeTextureObj
    lw	$a1,8($s0)
.L0d9789b4:
    # Line 331
    addiu	$s0,$s0,12
    bnel	$s0,$s2,.L0d9789a0
    # Line 326
    lw	$t8,16($s0)
    # Line 338
    lw	$s3,0($s4)
    beqz	$s3,.L0d978a0c
    li	$s4,0x8000
    move	$s0,$s3
.L0d9789d0:
    addu	$s2,$s4,$s3
    nop
    nop
    lw	$t9,8($s0)
.L0d9789e0:
    beqz	$t9,.L0d9789f4
    # Line 341
    nop	# was lw $t9, -31836($gp) # &__glKonFreeTextureObj
    move	$a0,$s1
    jal	__glKonFreeTextureObj
    lw	$a1,4($s0)
.L0d9789f4:
    # Line 339
    addiu	$s0,$s0,8
    bnel	$s0,$s2,.L0d9789e0
    # Line 338
    lw	$t9,8($s0)
    lw	$s3,0($s3)
    bnez	$s3,.L0d9789d0
    move	$s0,$s3
.L0d978a0c:
    ld	$s2,0($sp)
    ld	$s3,40($sp)
    ld	$s4,8($sp)
    ld	$ra,48($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    # Line 343
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glKonFreeTextures

# Function: __glKonFreeTextureHash
# Declared: Line 348 (Source lines: 349-358)
# Address: 0x0d978a30 - 0x0d978a90 (Size: 96 bytes, Frame: 32)
.globl __glKonFreeTextureHash
.ent __glKonFreeTextureHash
__glKonFreeTextureHash:
    # Line 349
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 350
    lw	$s0,0($a1)
    # Line 349
    lui	$at,0x12
    sd	$s1,8($sp)
    move	$s1,$a0
    addiu	$at,$at,-31320
    sd	$gp,16($sp)
    # Line 350
    beqz	$s0,.L0d978a7c
    # Line 349
    addu	$gp,$t9,$at
    sd	$ra,24($sp)
    nop
.L0d978a60:
    # Line 356
    lw	$t9,12($s1)
    move	$a0,$s1
    # Line 354
    move	$a1,$s0
    # Line 356
    jalr	$t9
    # Line 355
    lw	$s0,0($s0)
    # Line 356
    bnez	$s0,.L0d978a60
    ld	$ra,24($sp)
.L0d978a7c:
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 358
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glKonFreeTextureHash

# Function: ARMTexCacheUnused2Used
# Declared: Line 365 (Source lines: 367-381)
# Address: 0x0d978a90 - 0x0d978acc (Size: 60 bytes, Frame: 0)
.ent ARMTexCacheUnused2Used
ARMTexCacheUnused2Used:
    # Line 367
    lw	$v0,4($a0)
    # Line 369
    lw	$a3,12($v0)
    sw	$a3,4($a0)
    # Line 370
    sw	$a1,0($v0)
    # Line 376
    lw	$a2,0($a0)
    lw	$a2,8($a2)
    sw	$v0,12($a2)
    # Line 377
    lw	$a1,0($a0)
    lw	$a1,8($a1)
    sw	$a1,8($v0)
    # Line 378
    lw	$v1,0($a0)
    sw	$v1,12($v0)
    # Line 379
    lw	$at,0($a0)
    # Line 381
    jr	$ra
    # Line 379
    sw	$v0,8($at)
.end ARMTexCacheUnused2Used

# Function: __glKonUpdateARMTexCacheLRU
# Declared: Line 388 (Source lines: 391-399)
# Address: 0x0d978ad0 - 0x0d978b14 (Size: 68 bytes, Frame: 0)
.globl __glKonUpdateARMTexCacheLRU
.ent __glKonUpdateARMTexCacheLRU
__glKonUpdateARMTexCacheLRU:
    # Line 391
    lw	$a6,8($a1)
    lw	$a5,12($a1)
    sw	$a5,12($a6)
    # Line 392
    lw	$a4,12($a1)
    lw	$a3,8($a1)
    sw	$a3,8($a4)
    # Line 395
    lw	$a2,0($a0)
    lw	$a2,8($a2)
    sw	$a1,12($a2)
    # Line 396
    lw	$v1,0($a0)
    lw	$v1,8($v1)
    sw	$v1,8($a1)
    # Line 397
    lw	$v0,0($a0)
    sw	$v0,12($a1)
    # Line 398
    lw	$at,0($a0)
    # Line 399
    jr	$ra
    # Line 398
    sw	$a1,8($at)
.end __glKonUpdateARMTexCacheLRU

# Function: __glKonInsertARMTexCacheSlow
# Declared: Line 405 (Source lines: 406-417)
# Address: 0x0d978b20 - 0x0d978bc0 (Size: 160 bytes, Frame: 48)
.globl __glKonInsertARMTexCacheSlow
.ent __glKonInsertARMTexCacheSlow
__glKonInsertARMTexCacheSlow:
    # Line 406
    addiu	$sp,$sp,-48
    sd	$s3,16($sp)
    lw	$at,4($a0)
    move	$s3,$a1
    sd	$s0,24($sp)
    lui	$v0,0x12
    move	$s0,$a0
    sd	$ra,32($sp)
    addiu	$v0,$v0,-31560
    sd	$gp,8($sp)
    beqz	$at,.L0d978b78
    addu	$gp,$t9,$v0
    # Line 410
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-30064
    bal __glKonFreeTextureHash
    nop
    ld	$ra,32($sp)
    # Line 417
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d978b78:
    # Line 412
    lw	$a0,0($a0)
    # Line 413
    lw	$t9,32($s0)
    # Line 412
    lw	$a0,12($a0)
    sd	$a0,0($sp)
    # Line 413
    jal	sub_0d980000
    lw	$a0,0($a0)
    # Line 414
    # lw $t9, -31548($gp) # &__glKonUpdateARMTexCacheLRU
    move	$a0,$s0
    bal __glKonUpdateARMTexCacheLRU
    ld	$a1,0($sp)
    # Line 417
    ld	$gp,8($sp)
    # Line 415
    ld	$v0,0($sp)
    ld	$ra,32($sp)
    # Line 417
    ld	$s0,24($sp)
    # Line 415
    sw	$s3,0($v0)
    # Line 417
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonInsertARMTexCacheSlow

# Function: __glKonInsertARMTexCacheFast
# Declared: Line 424 (Source lines: 425-450)
# Address: 0x0d978bc0 - 0x0d978d68 (Size: 424 bytes, Frame: 48)
.globl __glKonInsertARMTexCacheFast
.ent __glKonInsertARMTexCacheFast
__glKonInsertARMTexCacheFast:
    # Line 425
    addiu	$sp,$sp,-48
    # Line 426
    lw	$a4,4($a0)
    # Line 425
    sd	$s0,16($sp)
    lui	$at,0x12
    move	$s0,$a0
    sd	$ra,32($sp)
    addiu	$at,$at,-31720
    sd	$gp,24($sp)
    # Line 426
    bnez	$a4,.L0d978c00
    # Line 425
    addu	$gp,$t9,$at
    # Line 426
    lw	$a5,8($a0)
    lw	$v0,12($a0)
    slt	$v0,$a5,$v0
    bnez	$v0,.L0d978c24
    nop
.L0d978bfc:
    # Line 442
    beqz	$a4,.L0d978d38
.L0d978c00:
    # Line 446
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-30064
    bal __glKonFreeTextureHash
    move	$a0,$s0
    ld	$ra,32($sp)
    # Line 450
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d978c24:
    # Line 428
    lw	$a3,16($a0)
    mtc1	$a5,$f0
    mtc1	$a3,$f1
    cvt.d.w	$f0,$f0
    cvt.d.w	$f1,$f1
    div.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    # Line 430
    lw	$a0,4112($zero)
    sd	$a1,40($sp)
    # Line 428
    mfc1	$a2,$f0
    # Line 432
    lw	$t9,8($a0)
    lw	$a1,52($s0)
    # Line 428
    teq	$a3,$zero,0x7
    addiu	$a2,$a2,1
    # Line 430
    sd	$a0,0($sp)
    # Line 432
    sll	$a2,$a2,0x2
    jal	sub_0d980000
    sd	$a2,8($sp)
    # Line 435
    ld	$a0,0($sp)
    # Line 432
    sw	$v0,52($s0)
    # Line 435
    lw	$t9,0($a0)
    lw	$a1,16($s0)
    jalr	$t9
    sll	$a1,$a1,0x4
    ld	$a3,8($sp)
    lw	$a2,52($s0)
    sw	$v0,4($s0)
    addu	$a2,$a2,$a3
    sw	$v0,-4($a2)
    # Line 438
    lw	$a6,16($s0)
    li	$a0,-1
    ld	$a1,40($sp)
    andi	$a4,$a6,0x1
    sra	$t1,$a6,0x1
    lw	$a2,4($s0)
    beqz	$a6,.L0d978d2c
    addiu	$a5,$a6,-1
    beqz	$a4,.L0d978ce0
    addiu	$a4,$a2,16
    # Line 439
    sw	$a4,12($a2)
    # Line 440
    lw	$a7,8($s0)
    # Line 438
    addiu	$a5,$a6,-2
    # Line 440
    addiu	$t0,$a7,1
    sw	$t0,8($s0)
    sw	$a7,4($a2)
    move	$a2,$a4
    # Line 438
    addiu	$a4,$a4,16
.L0d978ce0:
    beqz	$t1,.L0d978d2c
    nop
    nop
    nop
.L0d978cf0:
    # Line 439
    sw	$a4,12($a2)
    # Line 440
    lw	$t9,8($s0)
    addiu	$ra,$t9,1
    sw	$ra,8($s0)
    sw	$t9,4($a2)
    # Line 438
    addiu	$t8,$a4,16
    # Line 439
    sw	$t8,28($a2)
    # Line 440
    lw	$t2,8($s0)
    # Line 438
    addiu	$a5,$a5,-2
    addiu	$a2,$a2,32
    # Line 440
    addiu	$t3,$t2,1
    sw	$t3,8($s0)
    # Line 438
    addiu	$a4,$a4,32
    bne	$a5,$a0,.L0d978cf0
    # Line 440
    sw	$t2,-12($a2)
.L0d978d2c:
    # Line 442
    sw	$zero,-4($a2)
    b	.L0d978bfc
    lw	$a4,4($s0)
.L0d978d38:
    # Line 448
    la	$at,__glKonInsertARMTexCacheSlow
    # Line 450
    # lw $t9, -31544($gp) # &__glKonInsertARMTexCacheSlow
    # Line 449
    la	$v0,__glKonUpdateARMTexCacheLRU
    sw	$v0,28($s0)
    # Line 450
    move	$a0,$s0
    bal __glKonInsertARMTexCacheSlow
    # Line 448
    sw	$at,20($s0)
    ld	$ra,32($sp)
    # Line 450
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonInsertARMTexCacheFast

# Function: __glKonDeleteARMTexCache
# Declared: Line 457 (Source lines: 460-465)
# Address: 0x0d978d70 - 0x0d978d98 (Size: 40 bytes, Frame: 0)
.globl __glKonDeleteARMTexCache
.ent __glKonDeleteARMTexCache
__glKonDeleteARMTexCache:
    # Line 460
    lw	$a3,8($a1)
    lw	$a2,12($a1)
    sw	$a2,12($a3)
    # Line 461
    lw	$v1,12($a1)
    lw	$v0,8($a1)
    sw	$v0,8($v1)
    # Line 463
    lw	$at,4($a0)
    sw	$at,12($a1)
    # Line 465
    jr	$ra
    # Line 464
    sw	$a1,4($a0)
.end __glKonDeleteARMTexCache

# Function: __glKonInitARMTexCache
# Declared: Line 471 (Source lines: 473-485)
# Address: 0x0d978da0 - 0x0d978df0 (Size: 80 bytes, Frame: 0)
.globl __glKonInitARMTexCache
.ent __glKonInitARMTexCache
__glKonInitARMTexCache:
    # Line 477
    sw	$zero,8($a0)
    sw	$zero,52($a0)
    # Line 476
    sw	$zero,4($a0)
    # Line 484
    sw	$a3,32($a0)
    # Line 474
    addiu	$a3,$a0,36
    # Line 475
    sw	$a3,48($a0)
    sw	$a3,44($a0)
    # Line 480
    sw	$a2,16($a0)
    # Line 473
    lui	$a2,0x12
    # Line 474
    sw	$a3,0($a0)
    # Line 473
    addiu	$a2,$a2,-32200
    # Line 479
    sw	$a1,12($a0)
    # Line 473
    addu	$at,$t9,$a2
    # Line 481
    la	$v0,__glKonInsertARMTexCacheFast
    # Line 482
    la	$v1,__glKonDeleteARMTexCache
    # Line 483
    la	$a1,__glNop
    sw	$a1,28($a0)
    # Line 482
    sw	$v1,24($a0)
    # Line 485
    jr	$ra
    # Line 481
    sw	$v0,20($a0)
.end __glKonInitARMTexCache

# Function: __glKonInvalidateARMTexCache
# Declared: Line 492 (Source lines: 493-506)
# Address: 0x0d978df0 - 0x0d978e84 (Size: 148 bytes, Frame: 32)
.globl __glKonInvalidateARMTexCache
.ent __glKonInvalidateARMTexCache
__glKonInvalidateARMTexCache:
    # Line 493
    addiu	$sp,$sp,-32
    # Line 494
    lw	$v0,0($a1)
    # Line 493
    sd	$s0,8($sp)
    # Line 494
    lw	$s0,12($v0)
    # Line 493
    lui	$at,0x12
    sd	$s1,16($sp)
    move	$s1,$a1
    addiu	$at,$at,-32280
    sd	$gp,24($sp)
    # Line 494
    beq	$v0,$s0,.L0d978e70
    # Line 493
    addu	$gp,$t9,$at
    sd	$ra,0($sp)
.L0d978e20:
    # Line 502
    lw	$t9,32($s1)
    jalr	$t9
    lw	$a0,0($s0)
    # Line 501
    lw	$s0,12($s0)
    lw	$v0,0($s1)
    bne	$v0,$s0,.L0d978e20
    nop
    # Line 506
    ld	$gp,24($sp)
    # Line 503
    lw	$a0,4($s1)
    lw	$a1,8($s0)
    # Line 506
    ld	$ra,0($sp)
    # Line 503
    sw	$a0,12($a1)
    # Line 504
    lw	$v1,12($s0)
    sw	$v1,4($s1)
    # Line 505
    sw	$s0,12($s0)
    sw	$s0,8($s0)
    # Line 506
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d978e70:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glKonInvalidateARMTexCache

# Function: __glKonFreeARMTexCache
# Declared: Line 512 (Source lines: 513-521)
# Address: 0x0d978e90 - 0x0d978f58 (Size: 200 bytes, Frame: 48)
.globl __glKonFreeARMTexCache
.ent __glKonFreeARMTexCache
__glKonFreeARMTexCache:
    # Line 514
    lw	$at,16($a1)
    lw	$v1,8($a1)
    mtc1	$at,$f1
    mtc1	$v1,$f0
    cvt.d.w	$f1,$f1
    cvt.d.w	$f0,$f0
    div.d	$f0,$f0,$f1
    # Line 513
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    # Line 514
    trunc.w.d	$f0,$f0
    sd	$s0,40($sp)
    # Line 513
    sd	$s1,8($sp)
    # Line 514
    mfc1	$a3,$f0
    # Line 513
    move	$s1,$a1
    sd	$s2,0($sp)
    lui	$v0,0x12
    move	$s2,$a0
    sd	$s3,24($sp)
    addiu	$v0,$v0,-32440
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 514
    blez	$a3,.L0d978f20
    teq	$at,$zero,0x7
    sll	$s3,$a3,0x2
    move	$s0,$zero
    nop
    nop
    # Line 518
    lw	$t9,12($s2)
.L0d978f00:
    lw	$a1,52($s1)
    addu	$a1,$a1,$s0
    move	$a0,$s2
    jalr	$t9
    lw	$a1,0($a1)
    # Line 517
    addiu	$s0,$s0,4
    bnel	$s0,$s3,.L0d978f00
    # Line 518
    lw	$t9,12($s2)
.L0d978f20:
    # Line 517
    lw	$a1,52($s1)
    beqz	$a1,.L0d978f3c
    ld	$s3,24($sp)
    # Line 520
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    ld	$s3,24($sp)
.L0d978f3c:
    ld	$s2,0($sp)
    ld	$ra,32($sp)
    ld	$s0,40($sp)
    ld	$s1,8($sp)
    # Line 521
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonFreeARMTexCache

# Function: __glKonTexChecksum
# Declared: Line 527 (Source lines: 532-538)
# Address: 0x0d978f60 - 0x0d979020 (Size: 192 bytes, Frame: 0)
.globl __glKonTexChecksum
.ent __glKonTexChecksum
__glKonTexChecksum:
    # Line 532
    li	$a5,-1
    addiu	$a3,$a0,-1
    beq	$a3,$a5,.L0d979018
    # Line 538
    xor	$v0,$zero,$zero
    # Line 532
    move	$a4,$zero
    andi	$at,$a0,0x1
    sra	$a7,$a0,0x1
    move	$a6,$zero
    beqz	$at,.L0d978f98
    andi	$v0,$a3,0x1
    beqz	$v0,.L0d979008
    addiu	$a3,$a3,-1
    # Line 534
    addiu	$a1,$a1,4
    lw	$a4,-4($a1)
.L0d978f98:
    bnez	$a7,.L0d978fc4
    # Line 532
    andi	$t1,$a3,0x1
.L0d978fa0:
    # Line 538
    jr	$ra
    xor	$v0,$a6,$a4
    nop
    nop
.L0d978fb0:
    # Line 534
    addiu	$a1,$a1,4
    lw	$t0,-4($a1)
    addu	$a4,$t0,$a4
.L0d978fbc:
    # Line 532
    beq	$a3,$a5,.L0d978fa0
    andi	$t1,$a3,0x1
.L0d978fc4:
    addiu	$a3,$a3,-1
    andi	$t3,$a3,0x1
    beqz	$t1,.L0d978ff8
    addiu	$a3,$a3,-1
    # Line 534
    addiu	$a1,$a1,4
    lw	$t2,-4($a1)
    addu	$a4,$t2,$a4
.L0d978fe0:
    # Line 532
    bnez	$t3,.L0d978fb0
    nop
    # Line 536
    addiu	$a1,$a1,4
    lw	$t8,-4($a1)
    b	.L0d978fbc
    xor	$a6,$t8,$a6
.L0d978ff8:
    addiu	$a1,$a1,4
    lw	$t9,-4($a1)
    b	.L0d978fe0
    xor	$a6,$t9,$a6
.L0d979008:
    addiu	$a1,$a1,4
    nop
    b	.L0d978f98
    lw	$a6,-4($a1)
.L0d979018:
    # Line 538
    jr	$ra
    nop
.end __glKonTexChecksum

# Function: __glKonTexQuickSortPairs
# Declared: Line 550 (Source lines: 551-581)
# Address: 0x0d979020 - 0x0d9791d0 (Size: 432 bytes, Frame: 48)
.globl __glKonTexQuickSortPairs
.ent __glKonTexQuickSortPairs
__glKonTexQuickSortPairs:
.L0d979020:
    # Line 551
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 553
    move	$a4,$a1
    # Line 551
    move	$s1,$a0
    sd	$s2,0($sp)
    move	$s2,$a2
    sd	$s0,8($sp)
    # Line 554
    move	$s0,$a2
    # Line 552
    li	$v1,-2
    addu	$v0,$a2,$a1
    # Line 554
    slt	$at,$a1,$a2
    # Line 552
    and	$v0,$v0,$v1
    sd	$ra,32($sp)
    # Line 551
    lui	$v1,0x11
    # Line 552
    sll	$v0,$v0,0x2
    sd	$gp,24($sp)
    # Line 551
    addiu	$v1,$v1,32696
    # Line 552
    addu	$v0,$a0,$v0
    # Line 551
    addu	$gp,$t9,$v1
    # Line 554
    beqz	$at,.L0d9791a8
    # Line 552
    lwc1	$f4,0($v0)
    # Line 559
    sll	$a5,$a1,0x3
    sll	$a6,$a2,0x3
    addu	$a6,$a6,$a0
    addu	$a5,$a5,$a0
    b	.L0d9791c4
    move	$a0,$zero
.L0d97908c:
    # Line 565
    beqz	$a7,.L0d9790d4
    nop
    addiu	$s0,$s0,-1
.L0d979098:
    sll	$a6,$s0,0x3
    addu	$a6,$s1,$a6
    lwc1	$f5,0($a6)
    c.le.s	$f4,$f5
    bc1f	.L0d9790d4
    slt	$a7,$a4,$s0
    beqz	$a7,.L0d9790d4
    nop
    addiu	$s0,$s0,-1
    sll	$a6,$s0,0x3
    addu	$a6,$s1,$a6
    lwc1	$f5,0($a6)
    c.le.s $f4,$f5
    bc1t .L0d97908c
    slt	$a7,$a4,$s0
.L0d9790d4:
    # Line 568
    beq	$a4,$s0,.L0d979180
    nop
    # Line 572
    swc1	$f5,0($a5)
    swc1	$f6,0($a6)
    # Line 573
    lwc1	$f0,4($a5)
    lwc1	$f1,4($a6)
    swc1	$f1,4($a5)
    li	$a0,1
    # Line 562
    slt	$a7,$a4,$s0
    # Line 573
    swc1	$f0,4($a6)
    # Line 562
    lwc1	$f6,0($a5)
.L0d979100:
    # Line 565
    lwc1	$f5,0($a6)
    # Line 562
    c.lt.s $f6,$f4
    bc1f .L0d979168
    # Line 565
    c.le.s $f4,$f5
    # Line 562
    beqz	$a7,.L0d979168
    nop
    b	.L0d97912c
    addiu	$a4,$a4,1
.L0d979120:
    beqz	$t0,.L0d979168
    nop
    addiu	$a4,$a4,1
.L0d97912c:
    sll	$a5,$a4,0x3
    addu	$a5,$s1,$a5
    lwc1	$f6,0($a5)
    c.lt.s $f6,$f4
    bc1f .L0d979168
    slt	$a7,$a4,$s0
    beqz	$a7,.L0d979168
    nop
    addiu	$a4,$a4,1
    sll	$a5,$a4,0x3
    addu	$a5,$s1,$a5
    lwc1	$f6,0($a5)
    c.lt.s $f6,$f4
    bc1t .L0d979120
    slt	$t0,$a4,$s0
.L0d979168:
    # Line 565
    bc1f .L0d9790d4
    slt	$a7,$a4,$s0
    beqz	$a7,.L0d9790d4
    nop
    b	.L0d979098
    addiu	$s0,$s0,-1
.L0d979180:
    # Line 576
    beqz	$a0,.L0d9791a8
    # Line 579
    nop	# was lw $t9, -31516($gp) # &__glKonTexQuickSortPairs
    move	$a0,$s1
    bal .L0d979020
    addiu	$a2,$a4,-1
    # Line 580
    # lw $t9, -31516($gp) # &__glKonTexQuickSortPairs
    move	$a0,$s1
    move	$a2,$s2
    bal .L0d979020
    addiu	$a1,$s0,1
.L0d9791a8:
    ld	$s2,0($sp)
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 581
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9791c4:
    # Line 562
    slt	$a7,$a4,$s0
    b	.L0d979100
    lwc1	$f6,0($a5)
.end __glKonTexQuickSortPairs

# Function: __glKonTexGetCubicSpline
# Declared: Line 587 (Source lines: 588-610)
# Address: 0x0d9791d0 - 0x0d979504 (Size: 820 bytes, Frame: 32)
.globl __glKonTexGetCubicSpline
.ent __glKonTexGetCubicSpline
__glKonTexGetCubicSpline:
    # Line 595
    sll	$v1,$a4,0x2
    # Line 588
    addiu	$sp,$sp,-32
    # Line 596
    addiu	$t3,$a0,4
    # Line 595
    addu	$a0,$v1,$a3
    sd	$a0,8($sp)
    addu	$v1,$v1,$a2
    sd	$v1,0($sp)
    mtc1	$zero,$f0
    # Line 588
    sd	$s0,16($sp)
    # Line 596
    addiu	$t0,$a3,4
    addiu	$t1,$a2,4
    # Line 595
    swc1	$f0,-4($a0)
    # Line 596
    addiu	$t8,$a1,4
    # Line 588
    lui	$v0,0x11
    # Line 595
    swc1	$f0,0($a3)
    # Line 588
    addiu	$v0,$v0,32264
    sd	$ra,24($sp)
    # Line 596
    addiu	$ra,$a4,-2
    addiu	$s0,$a4,-3
    # Line 588
    addu	$at,$t9,$v0
    # Line 595
    swc1	$f0,-4($v1)
    swc1	$f0,0($a2)
    # Line 596
    move	$t2,$s0
    blez	$ra,.L0d9794f4
    mov.s	$f1,$f0
    lwc1	$f7,_lit_3f800000
    lwc1	$f10,_lit_40000000
    andi	$a1,$ra,0x1
    lwc1	$f9,_lit_bf800000
    li	$a7,-1
    beqz	$a1,.L0d9792ec
    lwc1	$f8,_lit_40c00000
    # Line 598
    lwc1	$f6,-4($t3)
    lwc1	$f5,4($t3)
    lwc1	$f4,0($t3)
    sub.s	$f5,$f5,$f6
    sub.s	$f4,$f4,$f6
    div.s	$f4,$f4,$f5
    # Line 600
    madd.s	$f1,$f10,$f1,$f4
    div.s	$f1,$f7,$f1
    # Line 601
    add.s	$f3,$f4,$f9
    mul.s	$f3,$f1,$f3
    swc1	$f3,4($a2)
    # Line 602
    lwc1	$f3,0($t8)
    lwc1	$f5,0($t3)
    lwc1	$f6,4($t3)
    lwc1	$f2,4($t8)
    sub.s	$f6,$f6,$f5
    sub.s	$f2,$f2,$f3
    div.s	$f2,$f2,$f6
    lwc1	$f11,-4($t8)
    lwc1	$f6,-4($t3)
    sub.s	$f3,$f3,$f11
    sub.s	$f5,$f5,$f6
    div.s	$f3,$f3,$f5
    sub.s	$f2,$f2,$f3
    swc1	$f2,0($t0)
    # Line 604
    lwc1	$f5,-4($t3)
    lwc1	$f3,4($t3)
    mul.s	$f2,$f2,$f8
    sub.s	$f3,$f3,$f5
    div.s	$f2,$f2,$f3
    lwc1	$f3,-4($t0)
    nmsub.s	$f2,$f2,$f3,$f4
    # Line 596
    addiu	$t2,$s0,-1
    # Line 597
    addiu	$t0,$t0,4
    addiu	$t1,$t1,4
    # Line 604
    mul.s	$f1,$f1,$f2
    # Line 597
    addiu	$t8,$t8,4
    addiu	$t3,$t3,4
    # Line 604
    swc1	$f1,-4($t0)
.L0d9792ec:
    move	$a3,$t3
    move	$a5,$t0
    sra	$a2,$ra,0x1
    ld	$t0,8($sp)
    sra	$t3,$ra,0x2
    move	$a6,$t1
    # Line 607
    ld	$t1,0($sp)
    beqz	$a2,.L0d979450
    move	$a4,$t2
    move	$a2,$t8
    nop
    nop
    nop
.L0d979320:
    # Line 598
    lwc1	$f18,-4($a3)
    lwc1	$f16,0($a3)
    lwc1	$f17,4($a3)
    sub.s	$f16,$f16,$f18
    sub.s	$f17,$f17,$f18
    div.s	$f16,$f16,$f17
    # Line 600
    lwc1	$f13,-4($a6)
    madd.s	$f13,$f10,$f13,$f16
    div.s	$f13,$f7,$f13
    # Line 601
    add.s	$f15,$f16,$f9
    mul.s	$f15,$f13,$f15
    swc1	$f15,0($a6)
    # Line 602
    lwc1	$f17,0($a3)
    lwc1	$f15,0($a2)
    lwc1	$f14,4($a2)
    lwc1	$f18,4($a3)
    sub.s	$f14,$f14,$f15
    sub.s	$f18,$f18,$f17
    div.s	$f14,$f14,$f18
    lwc1	$f19,-4($a2)
    lwc1	$f18,-4($a3)
    sub.s	$f15,$f15,$f19
    sub.s	$f17,$f17,$f18
    div.s	$f15,$f15,$f17
    sub.s	$f14,$f14,$f15
    swc1	$f14,0($a5)
    # Line 604
    lwc1	$f15,4($a3)
    lwc1	$f17,-4($a3)
    mul.s	$f14,$f14,$f8
    sub.s	$f15,$f15,$f17
    div.s	$f14,$f14,$f15
    lwc1	$f15,-4($a5)
    nmsub.s	$f14,$f14,$f15,$f16
    mul.s	$f13,$f13,$f14
    swc1	$f13,0($a5)
    # Line 598
    lwc1	$f14,0($a3)
    lwc1	$f12,4($a3)
    lwc1	$f13,8($a3)
    sub.s	$f12,$f12,$f14
    sub.s	$f13,$f13,$f14
    div.s	$f12,$f12,$f13
    # Line 600
    lwc1	$f5,0($a6)
    madd.s	$f5,$f10,$f5,$f12
    div.s	$f5,$f7,$f5
    # Line 601
    add.s	$f11,$f12,$f9
    mul.s	$f11,$f5,$f11
    swc1	$f11,4($a6)
    # Line 602
    lwc1	$f13,4($a3)
    lwc1	$f11,4($a2)
    lwc1	$f6,8($a2)
    lwc1	$f14,8($a3)
    sub.s	$f6,$f6,$f11
    sub.s	$f14,$f14,$f13
    div.s	$f6,$f6,$f14
    lwc1	$f15,0($a2)
    lwc1	$f14,0($a3)
    sub.s	$f11,$f11,$f15
    sub.s	$f13,$f13,$f14
    div.s	$f11,$f11,$f13
    sub.s	$f6,$f6,$f11
    swc1	$f6,4($a5)
    # Line 604
    lwc1	$f11,8($a3)
    lwc1	$f13,0($a3)
    mul.s	$f6,$f6,$f8
    sub.s	$f11,$f11,$f13
    div.s	$f6,$f6,$f11
    lwc1	$f11,0($a5)
    nmsub.s	$f6,$f6,$f11,$f12
    # Line 597
    addiu	$a5,$a5,8
    # Line 596
    addiu	$a4,$a4,-2
    # Line 597
    addiu	$a6,$a6,8
    addiu	$a2,$a2,8
    # Line 604
    mul.s	$f5,$f5,$f6
    # Line 597
    addiu	$a3,$a3,8
    # Line 596
    bne	$a4,$a7,.L0d979320
    # Line 604
    swc1	$f5,-4($a5)
.L0d979450:
    andi	$a2,$ra,0x3
    # Line 607
    addiu	$t0,$t0,-8
    addiu	$t1,$t1,-8
    beqz	$a2,.L0d97948c
    move	$t2,$s0
.L0d979464:
    # Line 609
    lwc1	$f19,4($t1)
    lwc1	$f18,0($t1)
    lwc1	$f17,0($t0)
    madd.s	$f17,$f17,$f18,$f19
    addiu	$a2,$a2,-1
    # Line 608
    addiu	$t2,$t2,-1
    addiu	$t1,$t1,-4
    addiu	$t0,$t0,-4
    bnez	$a2,.L0d979464
    # Line 609
    swc1	$f17,4($t1)
.L0d97948c:
    move	$a6,$t1
    move	$a5,$t0
    beqz	$t3,.L0d9794f4
    move	$a4,$t2
    nop
.L0d9794a0:
    lwc1	$f2,4($a6)
    lwc1	$f1,0($a6)
    lwc1	$f0,0($a5)
    madd.s	$f0,$f0,$f1,$f2
    lwc1	$f31,-4($a6)
    swc1	$f0,0($a6)
    lwc1	$f29,-4($a5)
    madd.s	$f29,$f29,$f31,$f0
    lwc1	$f27,-8($a6)
    swc1	$f29,-4($a6)
    lwc1	$f25,-8($a5)
    madd.s	$f25,$f25,$f27,$f29
    lwc1	$f23,-12($a6)
    swc1	$f25,-8($a6)
    lwc1	$f21,-12($a5)
    madd.s	$f21,$f21,$f23,$f25
    # Line 608
    addiu	$a4,$a4,-4
    addiu	$a6,$a6,-16
    addiu	$a5,$a5,-16
    bne	$a4,$a7,.L0d9794a0
    # Line 609
    swc1	$f21,4($a6)
.L0d9794f4:
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    # Line 610
    jr	$ra
    addiu	$sp,$sp,32
.end __glKonTexGetCubicSpline

# Function: __glKonTexEvaluateCubicSpline
# Declared: Line 616 (Source lines: 618-647)
# Address: 0x0d979510 - 0x0d9796c4 (Size: 436 bytes, Frame: 0)
.globl __glKonTexEvaluateCubicSpline
.ent __glKonTexEvaluateCubicSpline
__glKonTexEvaluateCubicSpline:
    # Line 618
    lui	$v0,0x11
    addiu	$v0,$v0,31432
    # Line 621
    blez	$a2,.L0d97958c
    # Line 618
    addu	$at,$t9,$v0
    # Line 621
    lwc1	$f0,0($a0)
    lwc1	$f1,0($a3)
    c.lt.s	$f0,$f1
    bc1f	.L0d97958c
    nop
.L0d979534:
    lwc1	$f2,0($a4)
    addiu	$a2,$a2,-1
    addiu	$a1,$a1,4
    addiu	$a0,$a0,4
    blez	$a2,.L0d97958c
    swc1	$f2,-4($a1)
    lwc1	$f4,0($a3)
    lwc1	$f3,0($a0)
    c.lt.s $f3,$f4
    bc1f .L0d97958c
    nop
    lwc1	$f5,0($a4)
    addiu	$a2,$a2,-1
    addiu	$a1,$a1,4
    addiu	$a0,$a0,4
    blez	$a2,.L0d97958c
    swc1	$f5,-4($a1)
    lwc1	$f7,0($a3)
    lwc1	$f6,0($a0)
    c.lt.s $f6,$f7
    bc1t .L0d979534
    nop
.L0d97958c:
    # Line 624
    blez	$a2,.L0d9796bc
    addiu	$a6,$a6,-1
    lwc1	$f12,_lit_bf800000
    lwc1	$f13,_lit_40c00000
    b	.L0d979644
    lwc1	$f11,_lit_3f800000
.L0d9795a4:
    # Line 625
    lwc1	$f4,0($a3)
    # Line 630
    lwc1	$f6,-4($a3)
.L0d9795ac:
    # Line 633
    blez	$a2,.L0d979638
    # Line 630
    sub.s	$f6,$f4,$f6
    # Line 633
    lwc1	$f5,0($a0)
    c.lt.s $f5,$f4
    bc1f .L0d979638
    nop
    div.s	$f9,$f11,$f6
    mul.s	$f10,$f6,$f6
    div.s	$f10,$f10,$f13
.L0d9795d0:
    # Line 634
    sub.s	$f17,$f4,$f5
    # Line 636
    nmsub.s	$f18,$f11,$f9,$f17
    # Line 634
    mul.s	$f17,$f9,$f17
    # Line 636
    madd.s	$f16,$f12,$f18,$f18
    madd.s	$f21,$f12,$f17,$f17
    lwc1	$f15,0($a5)
    lwc1	$f19,-4($a5)
    mul.s	$f16,$f18,$f16
    lwc1	$f14,0($a4)
    mul.s	$f21,$f17,$f21
    mul.s	$f15,$f15,$f16
    lwc1	$f16,-4($a4)
    madd.s	$f15,$f15,$f19,$f21
    mul.s	$f14,$f14,$f18
    madd.s	$f14,$f14,$f16,$f17
    madd.s	$f14,$f14,$f10,$f15
    # Line 633
    addiu	$a2,$a2,-1
    # Line 636
    addiu	$a1,$a1,4
    # Line 633
    addiu	$a0,$a0,4
    blez	$a2,.L0d979638
    # Line 636
    swc1	$f14,-4($a1)
    # Line 633
    lwc1	$f4,0($a3)
    lwc1	$f5,0($a0)
    c.lt.s $f5,$f4
    bc1t .L0d9795d0
    nop
.L0d979638:
    beqz	$a6,.L0d979674
    nop
    # Line 644
    blez	$a2,.L0d9796bc
.L0d979644:
    # Line 626
    addiu	$a6,$a6,-1
    addiu	$a5,$a5,4
    addiu	$a4,$a4,4
    # Line 625
    blez	$a6,.L0d9795a4
    # Line 626
    addiu	$a3,$a3,4
    # Line 625
    lwc1	$f18,0($a0)
    lwc1	$f4,0($a3)
    c.le.s $f4,$f18
    bc1t .L0d979644
    nop
    b	.L0d9795ac
    # Line 630
    lwc1	$f6,-4($a3)
.L0d979674:
    # Line 633
    blez	$a2,.L0d9796bc
    andi	$v1,$a2,0x1
    beqz	$v1,.L0d979694
    move	$a0,$a2
    # Line 643
    lwc1	$f19,0($a4)
    addiu	$a1,$a1,4
    # Line 642
    addiu	$a2,$a2,-1
    # Line 643
    swc1	$f19,-4($a1)
.L0d979694:
    sra	$a3,$a0,0x1
    beqz	$a3,.L0d9796bc
    nop
.L0d9796a0:
    lwc1	$f23,0($a4)
    swc1	$f23,0($a1)
    # Line 642
    addiu	$a2,$a2,-2
    # Line 643
    lwc1	$f21,0($a4)
    addiu	$a1,$a1,8
    # Line 642
    bnez	$a2,.L0d9796a0
    # Line 643
    swc1	$f21,-4($a1)
.L0d9796bc:
    # Line 647
    jr	$ra
    nop
.end __glKonTexEvaluateCubicSpline

# Function: __glKonTexExp2NegX64
# Declared: Line 653 (Source lines: 654-659)
# Address: 0x0d9796d0 - 0x0d97974c (Size: 124 bytes, Frame: 0)
.globl __glKonTexExp2NegX64
.ent __glKonTexExp2NegX64
__glKonTexExp2NegX64:
    # Line 654
    trunc.w.s	$f0,$f12
    mfc1	$a2,$f0
    # Line 657
    mtc1	$zero,$f5
    # Line 654
    lui	$v0,0x11
    # Line 659
    mtc1	$a2,$f2
    # Line 654
    addiu	$v0,$v0,30984
    slti	$v1,$a2,-6
    addu	$at,$t9,$v0
    # Line 657
    sll	$a0,$a2,0x1e
    subu	$a0,$a0,$a2
    # Line 654
    bnez	$v1,.L0d979714
    # Line 659
    cvt.s.w	$f2,$f2
    # Line 657
    sll	$a0,$a0,0x2
    la	$v1,.rodata
    addiu	$v1,$v1,22600
    addu	$v1,$v1,$a0
    lwc1	$f5,0($v1)
.L0d979714:
    # Line 659
    lwc1	$f3,_lit_42b00000
    sub.s	$f2,$f2,$f12
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    la	$a1,__glKonExp2From0ToM1
    trunc.w.s	$f1,$f5
    sll	$a2,$a2,0x2
    cvt.s.w	$f1,$f1
    addu	$a1,$a1,$a2
    lwc1	$f2,0($a1)
    lwc1	$f0,_lit_3f000000
    jr	$ra
    madd.s	$f0,$f0,$f1,$f2
.end __glKonTexExp2NegX64

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_40c00000:
    .word 0x40c00000
_lit_42b00000:
    .word 0x42b00000
_lit_bf800000:
    .word 0xbf800000

