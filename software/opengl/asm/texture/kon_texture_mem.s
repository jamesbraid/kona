# Source: ../KONA/texture/kon_texture_mem.c
# Category: texture
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/texture/kon_texture_mem.c
# Total Functions: 21

.text

# Function: globalAlloc
# Declared: Line 36 (Source lines: 37-58)
# Address: 0x0d975a80 - 0x0d975b4c (Size: 204 bytes, Frame: 32)
.ent globalAlloc
globalAlloc:
    # Line 37
    lw	$at,0($a0)
    addiu	$sp,$sp,-32
    andi	$at,$at,0x2
    sd	$s3,0($sp)
    move	$s3,$a0
    beqz	$at,.L0d975b0c
    sd	$ra,24($sp)
    # Line 42
    li	$a0,0xc2b8
    addu	$a0,$a0,$s3
    lw	$a0,0($a0)
    # Line 43
    # lw $t9, -32436($gp) # &__glkon_texture_mem_realloc
    # Line 42
    addu	$a0,$a0,$a1
    sll	$a0,$a0,0x6
    # Line 43
    jal	__glkon_texture_mem_realloc
    # Line 42
    sd	$a0,16($sp)
    sd	$v0,8($sp)
.L0d975ac0:
    # Line 48
    lw	$a1,-16500($gp)
    li	$a2,-1
    beq	$a1,$a2,.L0d975b34
    # Line 54
    nop	# was lw $t9, -18588($gp) # &getenv
.L0d975ad0:
    beqz	$a1,.L0d975afc
    ld	$ra,24($sp)
    # Line 56
    la	$a1,.rodata
    ld	$a2,16($sp)
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    sra	$a2,$a2,0x1
    addiu	$a1,$a1,-4640
    jal	fprintf
    addiu	$a0,$a0,32
    ld	$ra,24($sp)
.L0d975afc:
    ld	$s3,0($sp)
    # Line 58
    ld	$v0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d975b0c:
    # Line 47
    # lw $t9, -32440($gp) # &__glkon_texture_mem_alloc
    # Line 46
    sll	$a3,$a1,0x6
    sd	$a3,16($sp)
    # Line 47
    jal	__glkon_texture_mem_alloc
    move	$a0,$a3
    # Line 48
    lw	$a4,0($s3)
    # Line 47
    sd	$v0,8($sp)
    # Line 48
    ori	$a4,$a4,0x2
    b	.L0d975ac0
    sw	$a4,0($s3)
.L0d975b34:
    # Line 54
    la	$a0,.rodata
    jalr	$t9
    addiu	$a0,$a0,-4664
    move	$a1,$v0
    b	.L0d975ad0
    sw	$v0,-16500($gp)
.end globalAlloc

# Function: whichBucket
# Declared: Line 65 (Source lines: 66-91)
# Address: 0x0d975b50 - 0x0d975bec (Size: 156 bytes, Frame: 0)
.ent whichBucket
whichBucket:
    # Line 66
    sra	$at,$a0,0x10
    # Line 67
    li	$a3,30
    # Line 66
    beqz	$at,.L0d975bd0
    # Line 67
    li	$v1,22
    sra	$v0,$a0,0x17
    movz	$a3,$v1,$v0
.L0d975b68:
    beqz	$a0,.L0d975be4
    # Line 70
    srav	$a1,$a0,$a3
    bnez	$a1,.L0d975b9c
    # Line 87
    addiu	$t0,$a3,-1
.L0d975b78:
    # Line 72
    addiu	$a3,$a3,-1
    srav	$a2,$a0,$a3
    bnez	$a2,.L0d975b98
    nop
    addiu	$a3,$a3,-1
    srav	$a4,$a0,$a3
    beqz	$a4,.L0d975b78
    nop
.L0d975b98:
    # Line 87
    addiu	$t0,$a3,-1
.L0d975b9c:
    addiu	$t1,$a3,-5
    srav	$t0,$a0,$t0
    sll	$t1,$t1,0x1
    andi	$t0,$t0,0x1
    addu	$t0,$t0,$t1
    # Line 91
    slti	$a7,$t0,30
    li	$a6,29
    xori	$a7,$a7,0x1
    # Line 82
    move	$v0,$zero
    # Line 91
    movz	$a6,$t0,$a7
    # Line 72
    slti	$a5,$a3,5
    # Line 91
    jr	$ra
    movz	$v0,$a6,$a5
.L0d975bd0:
    # Line 67
    li	$t2,7
    sra	$t1,$a0,0x8
    li	$a3,15
    b	.L0d975b68
    movz	$a3,$t2,$t1
.L0d975be4:
    # Line 91
    jr	$ra
    # Line 70
    move	$v0,$zero
.end whichBucket

# Function: findFreeBank
# Declared: Line 98 (Source lines: 99-114)
# Address: 0x0d975bf0 - 0x0d975d24 (Size: 308 bytes, Frame: 48)
.globl findFreeBank
.ent findFreeBank
findFreeBank:
    # Line 99
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    lui	$s8,0x12
    addiu	$s8,$s8,-19480
    sd	$gp,8($sp)
    addu	$gp,$t9,$s8
    # Line 100
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 99
    sd	$s0,32($sp)
    move	$s0,$a2
    # Line 100
    addiu	$t9,$t9,23376
    # Line 99
    sd	$s7,16($sp)
    move	$s7,$a0
    # Line 100
    move	$a0,$a2
    # Line 99
    sd	$ra,24($sp)
    # Line 100
    bal __glkonle_TexSubImage3DEXT
    # Line 99
    move	$s8,$a1
    # Line 103
    sll	$a2,$s8,0x2
    subu	$a2,$a2,$s8
    sll	$a2,$a2,0x6
    sll	$a4,$v0,0x2
    addu	$a2,$s7,$a2
    lui	$a5,0x1
    addu	$a4,$a2,$a4
    # Line 114
    ld	$ra,24($sp)
    # Line 103
    addu	$a4,$a5,$a4
    lw	$a4,-16052($a4)
    # Line 114
    ld	$gp,8($sp)
    # Line 105
    li	$a7,1
    lui	$a6,0x4000
    # Line 114
    ld	$s8,0($sp)
    # Line 105
    sllv	$a7,$a7,$v0
    subu	$a6,$a6,$a7
    # Line 103
    beqz	$a4,.L0d975c94
    # Line 114
    ld	$s7,16($sp)
.L0d975c78:
    # Line 103
    lw	$a3,16($a4)
    slt	$a3,$a3,$s0
    beqz	$a3,.L0d975cf4
    nop
    # Line 105
    lw	$a4,24($a4)
    bnez	$a4,.L0d975c78
    nop
.L0d975c94:
    addu	$a4,$a5,$a2
    lw	$a4,-15932($a4)
    and	$a4,$a4,$a6
    beqz	$a4,.L0d975d04
    # Line 114
    ld	$gp,8($sp)
    # Line 112
    addiu	$a1,$v0,1
    # Line 114
    ld	$ra,24($sp)
    # Line 112
    sll	$a1,$a1,0x2
    # Line 114
    ld	$s0,32($sp)
    # Line 112
    addu	$a1,$a2,$a1
    # Line 114
    ld	$s7,16($sp)
    # Line 112
    addu	$a1,$a5,$a1
.L0d975cc4:
    lw	$a2,-16052($a1)
    bnez	$a2,.L0d975ce8
    # Line 114
    move	$v0,$a2
    # Line 112
    lw	$a2,-16048($a1)
    bnez	$a2,.L0d975ce4
    addiu	$a1,$a1,4
    b	.L0d975cc4
    addiu	$a1,$a1,4
.L0d975ce4:
    # Line 114
    move	$v0,$a2
.L0d975ce8:
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d975cf4:
    # Line 107
    move	$v0,$a4
    # Line 114
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d975d04:
    ld	$gp,8($sp)
    ld	$ra,24($sp)
    ld	$s0,32($sp)
    # Line 110
    move	$v0,$zero
    # Line 114
    ld	$s7,16($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end findFreeBank

# Function: deleteFreeBank
# Declared: Line 124 (Source lines: 125-150)
# Address: 0x0d975d30 - 0x0d975e6c (Size: 316 bytes, Frame: 208)
.ent deleteFreeBank
deleteFreeBank:
    # Line 125
    addiu	$sp,$sp,-80
    sd	$a1,64($sp)
    sd	$a0,48($sp)
    # Line 130
    lw	$a0,16($a2)
    # Line 125
    sd	$s1,16($sp)
    # Line 127
    lw	$s1,24($a2)
    # Line 125
    sd	$s2,8($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 126
    lw	$s2,20($a2)
    sd	$ra,0($sp)
    # Line 125
    addiu	$t9,$t9,23376
    sd	$s0,24($sp)
    move	$s0,$a2
    # Line 130
    bal __glkonle_TexSubImage3DEXT
    sd	$s3,32($sp)
    move	$s3,$v0
    ld	$a1,64($sp)
    # Line 134
    sll	$a6,$s3,0x2
    ld	$a4,48($sp)
    lui	$a5,0x1
    sll	$a2,$a1,0x2
    # Line 132
    sw	$s1,24($s2)
    beqz	$s1,.L0d975d94
    # Line 134
    subu	$a2,$a2,$a1
    sw	$s2,20($s1)
.L0d975d94:
    sll	$a2,$a2,0x6
    addu	$a2,$a4,$a2
    addu	$a6,$a2,$a6
    addu	$a6,$a5,$a6
    lw	$ra,-16052($a6)
    bne	$ra,$s0,.L0d975de4
    # Line 137
    addu	$a1,$a5,$a2
    beqz	$s1,.L0d975e48
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    sd	$a6,40($sp)
    addiu	$t9,$t9,23376
    sd	$a2,56($sp)
    bal __glkonle_TexSubImage3DEXT
    lw	$a0,16($s1)
    ld	$a2,56($sp)
    lui	$a5,0x1
    bne	$v0,$s3,.L0d975e48
    ld	$a6,40($sp)
    addu	$a1,$a5,$a2
    # Line 138
    sw	$s1,-16052($a6)
.L0d975de4:
    # Line 137
    lw	$ra,-15928($a1)
    # Line 150
    ld	$s1,16($sp)
    # Line 149
    lw	$v1,-15924($a1)
    # Line 137
    bne	$ra,$s0,.L0d975e20
    ld	$s3,32($sp)
    # Line 147
    sw	$s2,-15928($a1)
    # Line 149
    lw	$v0,16($s0)
    # Line 150
    ld	$s0,24($sp)
    ld	$ra,0($sp)
    # Line 149
    lw	$at,-15924($a1)
    # Line 150
    ld	$s2,8($sp)
    addiu	$sp,$sp,80
    # Line 149
    subu	$at,$at,$v0
    # Line 150
    jr	$ra
    # Line 149
    sw	$at,-15924($a1)
.L0d975e20:
    ld	$s3,32($sp)
    ld	$s2,8($sp)
    ld	$s1,16($sp)
    ld	$ra,0($sp)
    lw	$a0,16($s0)
    # Line 150
    ld	$s0,24($sp)
    addiu	$sp,$sp,80
    # Line 149
    subu	$v1,$v1,$a0
    # Line 150
    jr	$ra
    # Line 149
    sw	$v1,-15924($a1)
.L0d975e48:
    # Line 141
    sw	$zero,-16052($a6)
    # Line 142
    li	$a4,1
    addu	$a1,$a5,$a2
    lw	$a3,-15932($a1)
    sllv	$a4,$a4,$s3
    nor	$a4,$a4,$zero
    and	$a3,$a3,$a4
    b	.L0d975de4
    sw	$a3,-15932($a1)
.end deleteFreeBank

# Function: sizeNoGreaterPriorityInterval
# Declared: Line 158 (Source lines: 159-170)
# Address: 0x0d975e70 - 0x0d975f24 (Size: 180 bytes, Frame: 0)
.globl sizeNoGreaterPriorityInterval
.ent sizeNoGreaterPriorityInterval
sizeNoGreaterPriorityInterval:
    # Line 159
    move	$a7,$a0
    # Line 164
    beq	$a0,$a2,.L0d975ec0
    # Line 161
    lw	$a6,4($a0)
    # Line 164
    move	$v0,$zero
    lw	$at,8($a0)
    slt	$at,$a1,$at
    bnez	$at,.L0d975ec4
    nop
    move	$v0,$zero
.L0d975e94:
    lw	$v1,16($a7)
    lw	$a5,0($a7)
    addu	$v0,$v1,$v0
    beq	$a5,$a2,.L0d975ec4
    move	$a7,$a5
    lw	$a0,8($a5)
    slt	$a0,$a1,$a0
    beqz	$a0,.L0d975e94
    nop
    b	.L0d975ec4
    nop
.L0d975ec0:
    move	$v0,$zero
.L0d975ec4:
    # Line 167
    beq	$a2,$a6,.L0d975f1c
    nop
    lw	$a3,8($a6)
    slt	$a3,$a1,$a3
    bnez	$a3,.L0d975f1c
    nop
.L0d975edc:
    lw	$a5,4($a6)
    lw	$a4,16($a6)
    beq	$a5,$a2,.L0d975f1c
    addu	$v0,$a4,$v0
    lw	$a7,8($a5)
    lw	$t0,16($a5)
    lw	$a5,4($a5)
    slt	$a7,$a1,$a7
    bnez	$a7,.L0d975f1c
    move	$a6,$a5
    beq	$a5,$a2,.L0d975f1c
    addu	$v0,$t0,$v0
    lw	$t1,8($a5)
    slt	$t1,$a1,$t1
    beqz	$t1,.L0d975edc
    nop
.L0d975f1c:
    # Line 170
    jr	$ra
    nop
.end sizeNoGreaterPriorityInterval

# Function: insertFreeBank
# Declared: Line 177 (Source lines: 178-235)
# Address: 0x0d975f30 - 0x0d9761a0 (Size: 624 bytes, Frame: 192)
.ent insertFreeBank
insertFreeBank:
    # Line 178
    addiu	$sp,$sp,-64
    sd	$a1,32($sp)
    sd	$a0,24($sp)
    # Line 179
    lw	$a0,16($a2)
    # lw $t9, -32736($gp) # &sub_0d970000
    sd	$ra,48($sp)
    # Line 178
    sd	$s2,40($sp)
    # Line 179
    addiu	$t9,$t9,23376
    # Line 178
    move	$s2,$a2
    sd	$s0,56($sp)
    move	$s0,$a3
    # Line 179
    bal __glkonle_TexSubImage3DEXT
    sd	$s3,16($sp)
    # Line 182
    ld	$a7,32($sp)
    sll	$a6,$a7,0x2
    subu	$a6,$a6,$a7
    ld	$a7,24($sp)
    sll	$a6,$a6,0x6
    sll	$a3,$v0,0x2
    addu	$a6,$a6,$a7
    lui	$a7,0x1
    addu	$a3,$a3,$a6
    addu	$a3,$a7,$a3
    lw	$a2,-16052($a3)
    sd	$s4,0($sp)
    sd	$s1,8($sp)
    beqz	$a2,.L0d9760e8
    addu	$s3,$a7,$a6
    # Line 201
    lw	$a1,16($s2)
    lw	$t0,16($a2)
    slt	$t0,$t0,$a1
    # Line 212
    move	$v0,$a2
    # Line 201
    beqz	$t0,.L0d9760e0
    # Line 209
    lw	$a0,20($a2)
    # Line 203
    lw	$v0,24($a2)
    beqz	$v0,.L0d97600c
    # Line 206
    move	$a0,$a2
    b	.L0d975fe0
    # Line 204
    lw	$t2,16($v0)
.L0d975fcc:
    # Line 203
    lw	$t1,24($v0)
    move	$a2,$v0
    beqz	$t1,.L0d976008
    move	$v0,$t1
    # Line 204
    lw	$t2,16($v0)
.L0d975fe0:
    slt	$t2,$t2,$a1
    beqz	$t2,.L0d976008
    # Line 203
    lw	$a0,24($v0)
    move	$a2,$v0
    beqz	$a0,.L0d976008
    move	$v0,$a0
    # Line 204
    lw	$t3,16($a0)
    slt	$t3,$t3,$a1
    bnez	$t3,.L0d975fcc
    nop
.L0d976008:
    # Line 206
    move	$a0,$a2
.L0d97600c:
    # Line 215
    sw	$s2,24($a0)
.L0d976010:
    # Line 218
    sw	$v0,24($s2)
    beqz	$v0,.L0d976020
    # Line 217
    sw	$a0,20($s2)
    # Line 220
    sw	$s2,20($v0)
.L0d976020:
    lw	$t8,-15928($s3)
    bne	$t8,$a0,.L0d976030
    nop
    # Line 223
    sw	$s2,-15928($s3)
.L0d976030:
    # Line 225
    lw	$at,16($s2)
    lw	$ra,-16056($s3)
    lw	$t9,-15924($s3)
    addu	$t9,$t9,$at
    bnez	$ra,.L0d9760c0
    sw	$t9,-15924($s3)
    bltz	$s0,.L0d9760c0
    li	$s4,-1
    sll	$s1,$s0,0x2
    addu	$s1,$a6,$s1
    addu	$s1,$a7,$s1
    # Line 229
    # lw $t9, -31620($gp) # &sizeNoGreaterPriorityInterval
.L0d976060:
    move	$a0,$s2
    move	$a1,$s0
    bal sizeNoGreaterPriorityInterval
    lw	$a2,-15920($s3)
    lw	$t8,-16068($s1)
    slt	$t8,$v0,$t8
    # Line 228
    addiu	$s1,$s1,-4
    # Line 229
    beqz	$t8,.L0d976094
    # Line 228
    addiu	$s0,$s0,-1
    bne	$s0,$s4,.L0d976060
    # Line 229
    nop	# was lw $t9, -31620($gp) # &sizeNoGreaterPriorityInterval
    b	.L0d9760c4
    ld	$s2,40($sp)
.L0d976094:
    # Line 235
    ld	$s0,56($sp)
    ld	$s1,8($sp)
    ld	$s2,40($sp)
    ld	$ra,48($sp)
    # Line 231
    li	$t9,1
    sw	$t9,-16056($s3)
    # Line 235
    ld	$s3,16($sp)
    ld	$s4,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
    nop
.L0d9760c0:
    ld	$s2,40($sp)
.L0d9760c4:
    ld	$s3,16($sp)
    ld	$ra,48($sp)
    ld	$s4,0($sp)
    ld	$s0,56($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9760e0:
    b	.L0d97600c
    # Line 211
    sw	$s2,-16052($a3)
.L0d9760e8:
    # Line 187
    sw	$s2,-16052($a3)
    # Line 188
    lw	$at,-15932($s3)
    li	$v1,1
    sllv	$v1,$v1,$v0
    or	$at,$at,$v1
    sw	$at,-15932($s3)
    # Line 194
    lw	$ra,-16056($a3)
    bnez	$ra,.L0d97615c
    addiu	$a0,$v0,-1
    sll	$v0,$a0,0x2
    addu	$v0,$a6,$v0
    addu	$v0,$a7,$v0
.L0d976118:
    lw	$a2,-16056($v0)
    bnez	$a2,.L0d976154
    nop
    lw	$a2,-16060($v0)
    bnez	$a2,.L0d976154
    nop
    lw	$a2,-16064($v0)
    bnez	$a2,.L0d976154
    nop
    lw	$a2,-16068($v0)
    bnez	$a2,.L0d976154
    nop
    lw	$a2,-16072($v0)
    beqz	$a2,.L0d976118
    addiu	$v0,$v0,-20
.L0d976154:
    b	.L0d976170
    # Line 198
    lw	$v0,24($a2)
.L0d97615c:
    # Line 194
    sll	$a2,$a0,0x2
    addu	$a2,$a6,$a2
    addu	$a2,$a7,$a2
    lw	$a2,-16052($a2)
    # Line 198
    lw	$v0,24($a2)
.L0d976170:
    beqz	$v0,.L0d97600c
    # Line 197
    move	$a0,$a2
    # Line 198
    lw	$a1,16($s2)
.L0d97617c:
    # Line 199
    lw	$a3,16($v0)
    slt	$a3,$a3,$a1
    beqz	$a3,.L0d97600c
    # Line 198
    lw	$a4,24($v0)
    move	$a0,$v0
    bnez	$a4,.L0d97617c
    move	$v0,$a4
    b	.L0d976010
    # Line 215
    sw	$s2,24($a0)
.end insertFreeBank

# Function: inInterval
# Declared: Line 241 (Source lines: 242-250)
# Address: 0x0d9761a0 - 0x0d9761dc (Size: 60 bytes, Frame: 0)
.globl inInterval
.ent inInterval
inInterval:
    # Line 243
    blez	$a1,.L0d9761cc
    # Line 242
    move	$a4,$a0
    # Line 243
    move	$a3,$zero
    nop
.L0d9761b0:
    beq	$a2,$a4,.L0d9761d4
    nop
    # Line 246
    lw	$v0,16($a4)
    addu	$a3,$v0,$a3
    slt	$at,$a3,$a1
    bnez	$at,.L0d9761b0
    lw	$a4,4($a4)
.L0d9761cc:
    # Line 250
    jr	$ra
    move	$v0,$zero
.L0d9761d4:
    jr	$ra
    # Line 248
    li	$v0,1
.end inInterval

# Function: maxSizeNoGreaterPriorityInterval
# Declared: Line 254 (Source lines: 261-275)
# Address: 0x0d9761e0 - 0x0d976290 (Size: 176 bytes, Frame: 0)
.ent maxSizeNoGreaterPriorityInterval
maxSizeNoGreaterPriorityInterval:
    # Line 261
    sll	$a7,$a1,0x2
    subu	$a7,$a7,$a1
    sll	$a7,$a7,0x6
    li	$a6,0xc1d0
    addu	$a7,$a0,$a7
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    lw	$a4,4($a6)
    move	$a3,$zero
    move	$a5,$zero
    beq	$a6,$a4,.L0d976280
    move	$v0,$zero
    b	.L0d976288
    # Line 263
    slt	$t2,$a5,$a3
.L0d976218:
    # Line 269
    addu	$a3,$t0,$a3
.L0d97621c:
    # Line 261
    beq	$a6,$a4,.L0d976270
    # Line 263
    slt	$t2,$a5,$a3
    # Line 261
    lw	$t1,8($a4)
.L0d976228:
    slt	$t1,$a2,$t1
    beqz	$t1,.L0d976240
    # Line 269
    lw	$t3,16($a4)
    # Line 263
    movn	$a5,$a3,$t2
    b	.L0d976244
    move	$a3,$zero
.L0d976240:
    # Line 269
    addu	$a3,$t3,$a3
.L0d976244:
    # Line 261
    lw	$a4,4($a4)
    beq	$a6,$a4,.L0d976270
    # Line 263
    slt	$t9,$a5,$a3
    # Line 261
    lw	$t8,8($a4)
    slt	$t8,$a2,$t8
    # Line 269
    lw	$t0,16($a4)
    # Line 261
    beqz	$t8,.L0d976218
    lw	$a4,4($a4)
    # Line 263
    movn	$a5,$a3,$t9
    b	.L0d97621c
    move	$a3,$zero
.L0d976270:
    # Line 275
    move	$v0,$a5
    slt	$at,$a5,$a3
    jr	$ra
    movn	$v0,$a3,$at
.L0d976280:
    jr	$ra
    nop
.L0d976288:
    b	.L0d976228
    # Line 261
    lw	$t1,8($a4)
.end maxSizeNoGreaterPriorityInterval

# Function: validateMaxIntervalBank
# Declared: Line 282 (Source lines: 283-320)
# Address: 0x0d976290 - 0x0d9764c0 (Size: 560 bytes, Frame: 48)
.ent validateMaxIntervalBank
validateMaxIntervalBank:
    # Line 285
    sll	$t1,$a1,0x2
    # Line 283
    addiu	$sp,$sp,-48
    # Line 285
    subu	$t1,$t1,$a1
    addiu	$t0,$sp,44
    sll	$t1,$t1,0x6
    lui	$a7,0x1
    addu	$t1,$a0,$t1
    addiu	$a3,$sp,32
    addu	$a7,$t1,$a7
    addiu	$a5,$sp,16
    addiu	$a6,$sp,0
    lw	$a4,-15920($a7)
    # Line 293
    sw	$zero,8($a3)
    sw	$zero,4($a3)
    sw	$zero,32($sp)
    sw	$zero,8($a5)
    sw	$zero,4($a5)
    sw	$zero,16($sp)
    # Line 292
    sw	$a4,-16072($a7)
    sw	$a4,8($sp)
    sw	$a4,-16076($a7)
    sw	$a4,4($sp)
    sw	$a4,-16080($a7)
    move	$t2,$a4
    sw	$a4,0($sp)
    # Line 296
    lw	$a4,4($a4)
    beq	$t2,$a4,.L0d976420
    lw	$a2,32($sp)
    b	.L0d9764b8
    move	$a1,$zero
.L0d976308:
    # Line 308
    addu	$t3,$t3,$a2
    sw	$t3,0($a3)
.L0d976310:
    # Line 296
    lw	$a4,4($a4)
    lw	$t8,-15920($a7)
    beq	$t8,$a4,.L0d97641c
    move	$a1,$zero
    lw	$t9,8($a4)
.L0d976324:
    # Line 308
    lw	$a0,16($a4)
    # Line 296
    addiu	$a3,$sp,32
    addiu	$a5,$sp,16
    lw	$at,16($sp)
    addiu	$a6,$sp,0
    slt	$t9,$zero,$t9
    lw	$a2,32($sp)
    beqz	$t9,.L0d976370
    # Line 297
    addiu	$a1,$a1,1
    # Line 296
    slt	$at,$at,$a2
    beqz	$at,.L0d976360
    nop
    # Line 300
    sw	$a2,16($sp)
    # Line 301
    lw	$v0,0($sp)
    sw	$v0,-16080($a7)
.L0d976360:
    # Line 304
    sw	$zero,0($a3)
    # Line 305
    lw	$v1,4($a4)
    b	.L0d976378
    sw	$v1,0($a6)
.L0d976370:
    # Line 308
    addu	$a0,$a0,$a2
    sw	$a0,32($sp)
.L0d976378:
    # Line 297
    addiu	$a3,$a3,4
    beq	$a3,$t0,.L0d976310
    nop
    # Line 296
    lw	$a2,8($a4)
    slt	$a2,$a1,$a2
    # Line 308
    lw	$t8,16($a4)
    # Line 297
    addiu	$a1,$a1,1
    # Line 296
    beqz	$a2,.L0d9763c8
    lw	$a2,0($a3)
    lw	$t1,4($a5)
    slt	$t1,$t1,$a2
    beqz	$t1,.L0d9763b8
    nop
    # Line 300
    sw	$a2,4($a5)
    # Line 301
    lw	$t2,4($a6)
    sw	$t2,-16076($a7)
.L0d9763b8:
    # Line 304
    sw	$zero,0($a3)
    # Line 305
    lw	$t3,4($a4)
    b	.L0d9763d0
    sw	$t3,4($a6)
.L0d9763c8:
    # Line 308
    addu	$t8,$t8,$a2
    sw	$t8,0($a3)
.L0d9763d0:
    # Line 297
    addiu	$a3,$a3,4
    beq	$a3,$t0,.L0d976310
    nop
    # Line 296
    lw	$t9,8($a4)
    slt	$t9,$a1,$t9
    # Line 308
    lw	$t3,16($a4)
    # Line 296
    beqz	$t9,.L0d976308
    lw	$a2,0($a3)
    lw	$at,8($a5)
    slt	$at,$at,$a2
    beqz	$at,.L0d97640c
    nop
    # Line 300
    sw	$a2,8($a5)
    # Line 301
    lw	$v0,8($a6)
    sw	$v0,-16072($a7)
.L0d97640c:
    # Line 304
    sw	$zero,0($a3)
    # Line 305
    lw	$v1,4($a4)
    b	.L0d976310
    sw	$v1,8($a6)
.L0d97641c:
    # Line 296
    lw	$a2,32($sp)
.L0d976420:
    addiu	$a5,$sp,16
    lw	$a1,16($sp)
    addiu	$a6,$sp,0
    addiu	$a3,$sp,32
    # Line 311
    addiu	$a3,$a3,4
    # Line 296
    slt	$a0,$a1,$a2
    beqz	$a0,.L0d976450
    nop
    # Line 313
    sw	$a2,16($sp)
    # Line 314
    lw	$a4,0($sp)
    # Line 313
    move	$a1,$a2
    # Line 314
    sw	$a4,-16080($a7)
.L0d976450:
    # Line 311
    beq	$a3,$t0,.L0d9764ac
    # Line 316
    sw	$a1,-16068($a7)
    # Line 296
    lw	$a2,0($a3)
    lw	$a1,4($a5)
    slt	$t1,$a1,$a2
    beqz	$t1,.L0d97647c
    # Line 311
    addiu	$a3,$a3,4
    # Line 313
    sw	$a2,4($a5)
    # Line 314
    lw	$t2,4($a6)
    # Line 313
    move	$a1,$a2
    # Line 314
    sw	$t2,-16076($a7)
.L0d97647c:
    # Line 311
    beq	$a3,$t0,.L0d9764ac
    # Line 316
    sw	$a1,-16064($a7)
    # Line 296
    lw	$a2,0($a3)
    lw	$a1,8($a5)
    slt	$t3,$a1,$a2
    beqz	$t3,.L0d9764a8
    nop
    # Line 313
    sw	$a2,8($a5)
    # Line 314
    lw	$t8,8($a6)
    # Line 313
    move	$a1,$a2
    # Line 314
    sw	$t8,-16072($a7)
.L0d9764a8:
    # Line 316
    sw	$a1,-16060($a7)
.L0d9764ac:
    # Line 319
    sw	$zero,-16056($a7)
    # Line 320
    jr	$ra
    addiu	$sp,$sp,48
.L0d9764b8:
    b	.L0d976324
    # Line 296
    lw	$t9,8($a4)
.end validateMaxIntervalBank

# Function: validateBank
# Declared: Line 323 (Source lines: 324-355)
# Address: 0x0d9764c0 - 0x0d976650 (Size: 400 bytes, Frame: 48)
.ent validateBank
validateBank:
    # Line 324
    addiu	$sp,$sp,-48
    sd	$s3,8($sp)
    sll	$s3,$a1,0x2
    subu	$s3,$s3,$a1
    sll	$s3,$s3,0x6
    lui	$t8,0x1
    addu	$s3,$a0,$s3
    addu	$s3,$s3,$t8
    lw	$at,-16056($s3)
    sd	$s2,0($sp)
    move	$s2,$a0
    sd	$s1,16($sp)
    move	$s1,$a1
    beqz	$at,.L0d97650c
    sd	$ra,24($sp)
    # Line 326
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,25232
    bal inInterval
    nop
.L0d97650c:
    # Line 330
    # lw $t9, -32736($gp) # &sub_0d970000
    sd	$s4,32($sp)
    lw	$a0,-15928($s3)
    addiu	$t9,$t9,23376
    sd	$s0,40($sp)
    bal __glkonle_TexSubImage3DEXT
    lw	$a0,16($a0)
    li	$at,1
    lw	$a2,-15932($s3)
    sllv	$at,$at,$v0
    sll	$ra,$a2,0x1
    slt	$ra,$ra,$at
    bnez	$ra,.L0d976600
    # Line 344
    la	$a0,.rodata
    la	$s4,sub_0d970000
.L0d976548:
    move	$s0,$zero
    addiu	$s4,$s4,25056
    # Line 349
    move	$t9,$s4
    move	$a0,$s2
    move	$a1,$s1
    bal inInterval
    move	$a2,$zero
    lw	$t8,-16068($s3)
    bne	$t8,$v0,.L0d9765e4
    # Line 348
    li	$t9,3
.L0d976570:
    addiu	$s0,$s0,1
    beq	$s0,$t9,.L0d9765c4
    # Line 349
    move	$t9,$s4
    move	$a0,$s2
    move	$a1,$s1
    bal inInterval
    move	$a2,$s0
    lw	$ra,-16064($s3)
    bne	$ra,$v0,.L0d976620
    # Line 351
    nop	# was lw $t9, -18556($gp) # &printf
    # Line 348
    li	$at,3
.L0d97659c:
    addiu	$s0,$s0,1
    beq	$s0,$at,.L0d9765c4
    # Line 349
    move	$t9,$s4
    move	$a0,$s2
    move	$a1,$s1
    bal inInterval
    move	$a2,$s0
    lw	$v1,-16060($s3)
    bne	$v1,$v0,.L0d976638
    # Line 351
    nop	# was lw $t9, -18556($gp) # &printf
.L0d9765c4:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$ra,24($sp)
    ld	$s4,32($sp)
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    # Line 355
    jr	$ra
    addiu	$sp,$sp,48
.L0d9765e4:
    # Line 351
    # lw $t9, -18556($gp) # &printf
    la	$a0,.rodata
    move	$a1,$s1
    jal	printf
    addiu	$a0,$a0,-4544
    b	.L0d976570
    # Line 348
    li	$t9,3
.L0d976600:
    # Line 344
    # lw $t9, -18556($gp) # &printf
    lw	$a3,-15928($s3)
    move	$a1,$s1
    lw	$a3,16($a3)
    jal	printf
    addiu	$a0,$a0,-4600
    b	.L0d976548
    la	$s4,sub_0d970000
.L0d976620:
    # Line 351
    la	$a0,.rodata
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$a0,-4544
    b	.L0d97659c
    # Line 348
    li	$at,3
.L0d976638:
    # Line 351
    la	$a0,.rodata
    move	$a1,$s1
    jalr	$t9
    addiu	$a0,$a0,-4544
    b	.L0d9765c4
    nop
.end validateBank

# Function: stealNoGreaterPriorityBank
# Declared: Line 387 (Source lines: 388-503)
# Address: 0x0d976650 - 0x0d976c38 (Size: 1512 bytes, Frame: 192)
.globl stealNoGreaterPriorityBank
.ent stealNoGreaterPriorityBank
stealNoGreaterPriorityBank:
    # Line 395
    lw	$v0,4112($zero)
    # Line 388
    addiu	$sp,$sp,-192
    sd	$ra,136($sp)
    sd	$s4,160($sp)
    sd	$s3,152($sp)
    sd	$s8,72($sp)
    # Line 389
    sll	$s8,$a1,0x2
    sd	$gp,80($sp)
    subu	$s8,$s8,$a1
    # Line 388
    sd	$s5,56($sp)
    # Line 389
    sll	$s8,$s8,0x6
    # Line 388
    sd	$s1,48($sp)
    # Line 389
    lui	$a6,0x1
    addu	$s8,$a0,$s8
    sd	$s8,32($sp)
    addu	$s8,$a6,$s8
    # Line 403
    lw	$at,-15928($s8)
    # Line 388
    move	$s1,$a3
    sd	$s2,88($sp)
    move	$s2,$a2
    move	$s5,$a1
    # Line 403
    lw	$at,16($at)
    # Line 388
    sd	$s0,64($sp)
    lui	$a7,0x12
    # Line 403
    addu	$a6,$a6,$a0
    # Line 388
    addiu	$a7,$a7,-22136
    # Line 403
    lw	$a6,-15692($a6)
    slt	$at,$at,$a3
    # Line 388
    move	$s0,$a0
    addu	$gp,$t9,$a7
    # Line 389
    sd	$s8,40($sp)
    lw	$s8,-15920($s8)
    # Line 403
    beqz	$at,.L0d976948
    addiu	$a6,$a6,1
    # Line 409
    lw	$t9,0($v0)
    sd	$v0,24($sp)
    move	$a0,$v0
    sd	$s7,144($sp)
    li	$a1,512
    jalr	$t9
    sd	$a6,128($sp)
    # Line 411
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,25792
    # Line 409
    move	$s7,$v0
    # Line 411
    move	$a0,$s0
    bal inInterval
    move	$a1,$s5
    blez	$s2,.L0d976ba0
    ld	$t8,128($sp)
    ld	$a4,32($sp)
    sll	$a5,$s2,0x2
    lui	$a3,0x1
    addu	$a4,$a4,$a5
    ld	$v0,40($sp)
    move	$s0,$zero
    addu	$a3,$a3,$a4
.L0d976730:
    # Line 414
    lw	$a6,-16068($v0)
    slt	$a6,$a6,$s1
    beqz	$a6,.L0d976748
    # Line 413
    addiu	$v0,$v0,4
    bne	$v0,$a3,.L0d976730
    addiu	$s0,$s0,1
.L0d976748:
    # Line 417
    lw	$a7,4($s8)
    move	$s3,$a7
    beq	$a7,$s8,.L0d9768e0
    move	$s4,$a7
    li	$t3,64
    li	$t1,63
    sd	$s5,16($sp)
    li	$s5,-1
    sd	$s6,120($sp)
    move	$s6,$zero
    li	$v0,1
    move	$s2,$zero
    li	$t0,-1
    sd	$t0,96($sp)
    b	.L0d9767a4
    lui	$a1,0x4000
.L0d976788:
    # Line 426
    li	$s5,-1
    move	$s6,$zero
    li	$v0,1
    move	$s2,$zero
    # Line 420
    move	$s4,$a6
.L0d97679c:
    # Line 417
    beq	$s8,$a6,.L0d9768f0
    move	$s3,$a6
.L0d9767a4:
    lw	$a3,8($s3)
    slt	$t2,$s0,$a3
    bnez	$t2,.L0d976788
    # Line 420
    lw	$a6,4($s3)
    # Line 426
    bne	$a3,$s0,.L0d9767e8
    nop
    # Line 434
    lw	$a0,20($s3)
    # Line 440
    beqz	$v0,.L0d976b28
    # Line 434
    lw	$a0,288($a0)
.L0d9767c8:
    # Line 444
    addiu	$s5,$s5,1
.L0d9767cc:
    # Line 447
    beqz	$v0,.L0d976980
    # Line 444
    and	$s5,$t1,$s5
    # Line 466
    sll	$t9,$s5,0x3
.L0d9767d8:
    addu	$t9,$s7,$t9
    # Line 467
    sw	$a0,4($t9)
    move	$v0,$zero
    # Line 466
    sw	$s3,0($t9)
.L0d9767e8:
    # Line 472
    lw	$at,16($s3)
    addu	$s2,$at,$s2
    # Line 475
    slt	$ra,$s2,$s1
    bnez	$ra,.L0d9768d4
    # Line 479
    sll	$t2,$s5,0x3
    addu	$t2,$s7,$t2
    lw	$a3,4($s4)
    lw	$a7,16($s4)
    lw	$v1,16($a3)
    subu	$s2,$s2,$a7
    subu	$v1,$s2,$v1
    slt	$v1,$v1,$s1
    # Line 481
    sll	$t0,$s6,0x3
    # Line 479
    bnez	$v1,.L0d976880
    # Line 481
    addu	$t0,$s7,$t0
.L0d976824:
    # Line 479
    sll	$t0,$s6,0x3
    addu	$t0,$s7,$t0
    lw	$a6,0($t0)
.L0d976830:
    bne	$a6,$s4,.L0d976854
    nop
    # Line 480
    addiu	$s6,$s6,1
    and	$s6,$t1,$s6
    sll	$v1,$s6,0x3
    xor	$v0,$t0,$t2
    addu	$t0,$s7,$v1
    sltiu	$v0,$v0,1
    lw	$a6,0($t0)
.L0d976854:
    # Line 481
    lw	$a7,16($a3)
    # Line 480
    move	$s4,$a3
    # Line 481
    lw	$a3,4($a3)
    lw	$t9,16($a3)
    subu	$s2,$s2,$a7
    subu	$t9,$s2,$t9
    slt	$t9,$t9,$s1
    beqz	$t9,.L0d976830
    nop
    b	.L0d976888
    # Line 484
    lw	$t2,4($t0)
.L0d976880:
    # Line 481
    lw	$a6,0($t0)
    # Line 484
    lw	$t2,4($t0)
.L0d976888:
    slt	$t9,$t2,$a1
    bnez	$t9,.L0d9768a4
    nop
    bne	$t2,$a1,.L0d9768b0
    slt	$ra,$t8,$s2
    beqz	$ra,.L0d9768b0
    nop
.L0d9768a4:
    # Line 487
    move	$a1,$t2
    # Line 488
    addu	$t8,$a7,$s2
    sd	$s4,96($sp)
.L0d9768b0:
    # Line 489
    bne	$a6,$s4,.L0d9768cc
    # Line 493
    move	$s4,$a3
.L0d9768b8:
    xor	$v0,$s6,$s5
    addiu	$v1,$s6,1
    and	$s6,$t1,$v1
    sltiu	$v0,$v0,1
.L0d9768c8:
    move	$s4,$a3
.L0d9768cc:
    b	.L0d97679c
    lw	$a6,4($s3)
.L0d9768d4:
    lw	$a6,4($s3)
    b	.L0d97679c
    nop
.L0d9768e0:
    # Line 417
    li	$a0,-1
    sd	$a0,96($sp)
    sd	$s6,120($sp)
    sd	$s5,16($sp)
.L0d9768f0:
    # Line 496
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jal	sub_0d970000
    move	$a1,$s7
    ld	$at,96($sp)
    li	$ra,-1
    beq	$ra,$at,.L0d976ba8
    ld	$s4,160($sp)
    ld	$s3,152($sp)
    ld	$s7,144($sp)
    ld	$s6,120($sp)
    # Line 503
    ld	$v0,96($sp)
    ld	$gp,80($sp)
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,136($sp)
    ld	$s2,88($sp)
    ld	$s5,56($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d976948:
    # Line 407
    # lw $t9, -31624($gp) # &findFreeBank
    move	$s3,$s3
    move	$s4,$s4
    bal findFreeBank
    move	$a2,$a3
    # Line 503
    ld	$gp,80($sp)
    ld	$s0,64($sp)
    ld	$s1,48($sp)
    ld	$ra,136($sp)
    ld	$s2,88($sp)
    ld	$s5,56($sp)
    ld	$s8,72($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d976980:
    # Line 447
    bne	$s6,$s5,.L0d9767d8
    # Line 466
    sll	$t9,$s5,0x3
    sd	$t3,168($sp)
    sd	$a0,112($sp)
    # Line 449
    ld	$a0,24($sp)
    ld	$s5,168($sp)
    lw	$t9,0($a0)
    sd	$a1,176($sp)
    sll	$a1,$s5,0x4
    sd	$t8,128($sp)
    sll	$v1,$s5,0x1
    jal	findFreeBank
    sd	$v1,0($sp)
    sll	$a7,$s5,0x3
    slt	$a0,$s6,$s5
    subu	$t0,$s5,$s6
    sll	$a6,$s6,0x3
    beqz	$a0,.L0d976bdc
    move	$a3,$v0
    addu	$a7,$s7,$a7
    addu	$a6,$s7,$a6
    nop
    nop
    nop
.L0d9769e0:
    # Line 453
    lw	$t2,0($a6)
    addiu	$a6,$a6,8
    sw	$t2,0($a3)
    addiu	$a3,$a3,8
    lw	$t1,-4($a6)
    bne	$a6,$a7,.L0d9769e0
    sw	$t1,-4($a3)
    move	$s5,$t0
    blez	$s6,.L0d976be4
.L0d976a04:
    andi	$t3,$s6,0x1
    move	$a6,$s7
    sll	$t0,$s5,0x3
    move	$t2,$s6
    sll	$t1,$s6,0x3
    addu	$t1,$s7,$t1
    sra	$ra,$t2,0x1
    sd	$t0,8($sp)
    beqz	$t3,.L0d976a50
    addu	$a3,$t0,$v0
    # Line 456
    addiu	$t8,$t0,8
    sd	$t8,8($sp)
    lw	$t9,0($s7)
    sw	$t9,0($a3)
    addiu	$a3,$a3,8
    lw	$t3,4($s7)
    addiu	$s5,$s5,1
    addiu	$a6,$s7,8
    sw	$t3,-4($a3)
.L0d976a50:
    move	$t0,$s5
    beqz	$ra,.L0d976a9c
    ld	$a7,8($sp)
    nop
.L0d976a60:
    lw	$a1,0($a6)
    sw	$a1,0($a3)
    lw	$a0,4($a6)
    sw	$a0,4($a3)
    lw	$v1,8($a6)
    addiu	$a6,$a6,16
    sw	$v1,8($a3)
    addiu	$a3,$a3,16
    addiu	$a7,$a7,16
    lw	$at,-4($a6)
    addiu	$t0,$t0,2
    bne	$a6,$t1,.L0d976a60
    sw	$at,-4($a3)
    move	$s5,$t0
    sd	$a7,8($sp)
.L0d976a9c:
    # Line 458
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    ld	$s6,112($sp)
    move	$a1,$s7
    jalr	$t9
    sd	$v0,104($sp)
    # Line 459
    ld	$v0,104($sp)
    # Line 466
    ld	$t2,8($sp)
    addu	$t2,$t2,$v0
    # Line 467
    sw	$s6,4($t2)
    # Line 466
    sw	$s3,0($t2)
    # Line 472
    lw	$a6,16($s3)
    # Line 460
    ld	$t1,0($sp)
    # Line 459
    move	$s7,$v0
    # Line 472
    addu	$a6,$a6,$s2
    # Line 460
    move	$t3,$t1
    # Line 475
    slt	$ra,$a6,$s1
    ld	$a1,176($sp)
    # Line 461
    addiu	$t1,$t1,-1
    # Line 493
    move	$s6,$zero
    ld	$t8,128($sp)
    # Line 475
    bnez	$ra,.L0d976bd0
    # Line 472
    move	$s2,$a6
    # Line 479
    lw	$a3,4($s4)
    lw	$s2,16($s4)
    lw	$t9,16($a3)
    subu	$s2,$a6,$s2
    subu	$t9,$s2,$t9
    slt	$t9,$t9,$s1
    bnez	$t9,.L0d976bf0
    nop
    move	$v0,$zero
    b	.L0d976824
    move	$s6,$zero
.L0d976b28:
    # Line 440
    sll	$t9,$s5,0x3
    addu	$t9,$s7,$t9
    lw	$t9,4($t9)
    slt	$t9,$t9,$a0
    beqz	$t9,.L0d9767c8
    nop
.L0d976b40:
    # Line 441
    xor	$v0,$s6,$s5
    sltiu	$v0,$v0,1
    # Line 442
    addiu	$s5,$s5,-1
    bnez	$v0,.L0d976b98
    and	$s5,$t1,$s5
    sll	$v1,$s5,0x3
    addu	$v1,$s7,$v1
    lw	$v1,4($v1)
    slt	$v1,$v1,$a0
    beqz	$v1,.L0d976b98
    nop
    # Line 441
    xor	$v0,$s6,$s5
    sltiu	$v0,$v0,1
    # Line 442
    addiu	$s5,$s5,-1
    bnez	$v0,.L0d976b98
    and	$s5,$t1,$s5
    sll	$v1,$s5,0x3
    addu	$v1,$s7,$v1
    lw	$v1,4($v1)
    slt	$v1,$v1,$a0
    bnez	$v1,.L0d976b40
    nop
.L0d976b98:
    b	.L0d9767cc
    # Line 444
    addiu	$s5,$s5,1
.L0d976ba0:
    b	.L0d976748
    # Line 413
    move	$s0,$zero
.L0d976ba8:
    # Line 498
    # lw $t9, -18556($gp) # &printf
    la	$a0,.rodata
    move	$a3,$s0
    move	$a1,$s1
    ld	$a2,16($sp)
    jal	printf
    addiu	$a0,$a0,-4504
    # Line 500
    # lw $t9, -18604($gp) # &exit
    jal	exit
    li	$a0,1
.L0d976bd0:
    # Line 493
    move	$v0,$zero
    b	.L0d97679c
    lw	$a6,4($s3)
.L0d976bdc:
    # Line 453
    bgtz	$s6,.L0d976a04
    move	$s5,$zero
.L0d976be4:
    # Line 456
    sll	$a1,$s5,0x3
    b	.L0d976a9c
    sd	$a1,8($sp)
.L0d976bf0:
    # Line 484
    lw	$a7,4($v0)
    slt	$a2,$a7,$a1
    bnez	$a2,.L0d976c10
    nop
    bne	$a7,$a1,.L0d976c1c
    slt	$a4,$t8,$s2
    beqz	$a4,.L0d976c1c
    nop
.L0d976c10:
    # Line 487
    move	$a1,$a7
    # Line 488
    move	$t8,$a6
    sd	$s4,96($sp)
.L0d976c1c:
    # Line 489
    lw	$a6,0($v0)
    bne	$a6,$s4,.L0d976c30
    # Line 493
    move	$v0,$zero
    # Line 489
    b	.L0d9768b8
    move	$s6,$zero
.L0d976c30:
    b	.L0d9768c8
    # Line 493
    move	$s6,$zero
.end stealNoGreaterPriorityBank

# Function: getMemNode
# Declared: Line 511 (Source lines: 512-535)
# Address: 0x0d976c40 - 0x0d976d54 (Size: 276 bytes, Frame: 32)
.ent getMemNode
getMemNode:
    # Line 512
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$s0,0x1
    addu	$s0,$a0,$s0
    lw	$v0,-15664($s0)
    beqz	$v0,.L0d976c70
    nop
    # Line 533
    lw	$t8,4($v0)
    sw	$t8,-15664($s0)
    # Line 535
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d976c70:
    # Line 519
    lw	$a2,-15668($s0)
    # Line 516
    lw	$a0,4112($zero)
    # Line 519
    addiu	$a2,$a2,1
    sw	$a2,-15668($s0)
    # Line 520
    lw	$t9,8($a0)
    lw	$a1,-15672($s0)
    sd	$ra,16($sp)
    # Line 516
    sd	$a0,0($sp)
    # Line 520
    jalr	$t9
    sll	$a2,$a2,0x2
    # Line 523
    ld	$a0,0($sp)
    # Line 520
    sw	$v0,-15672($s0)
    # Line 523
    lw	$t9,0($a0)
    jalr	$t9
    li	$a1,7168
    lw	$t0,-15668($s0)
    move	$a6,$v0
    lw	$a7,-15672($s0)
    li	$a5,7
    ld	$ra,16($sp)
    sll	$t0,$t0,0x2
    addiu	$a4,$v0,7168
    sw	$v0,-15664($s0)
    addu	$a7,$a7,$t0
    addiu	$a0,$v0,28
    move	$a3,$v0
    sw	$v0,-4($a7)
.L0d976cdc:
    addiu	$a5,$a5,-1
    # Line 528
    sw	$a0,4($a3)
    # Line 527
    addiu	$a0,$a0,28
    bnez	$a5,.L0d976cdc
    addiu	$a3,$a3,28
.L0d976cf0:
    addiu	$a3,$a3,224
    addiu	$v0,$a0,196
    # Line 528
    sw	$v0,-24($a3)
    # Line 527
    addiu	$at,$a0,168
    # Line 528
    sw	$at,-52($a3)
    # Line 527
    addiu	$t9,$a0,140
    # Line 528
    sw	$t9,-80($a3)
    # Line 527
    addiu	$t8,$a0,112
    # Line 528
    sw	$t8,-108($a3)
    # Line 527
    addiu	$t3,$a0,84
    # Line 528
    sw	$t3,-136($a3)
    # Line 527
    addiu	$t2,$a0,56
    addiu	$t1,$a0,28
    # Line 528
    sw	$a0,-220($a3)
    # Line 527
    addiu	$a0,$a0,224
    # Line 528
    sw	$t2,-164($a3)
    # Line 527
    bne	$a0,$a4,.L0d976cf0
    # Line 528
    sw	$t1,-192($a3)
    # Line 529
    sw	$zero,7144($a6)
    lw	$v0,-15664($s0)
    # Line 533
    lw	$v1,4($v0)
    sw	$v1,-15664($s0)
    # Line 535
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end getMemNode

# Function: putMemNode
# Declared: Line 540 (Source lines: 542-544)
# Address: 0x0d976d60 - 0x0d976d78 (Size: 24 bytes, Frame: 0)
.ent putMemNode
putMemNode:
    # Line 542
    lui	$at,0x1
    addu	$at,$a0,$at
    lw	$v0,-15664($at)
    sw	$v0,4($a1)
    # Line 544
    jr	$ra
    # Line 543
    sw	$a1,-15664($at)
.end putMemNode

# Function: releaseMemBank
# Declared: Line 550 (Source lines: 551-608)
# Address: 0x0d976d80 - 0x0d976ed4 (Size: 340 bytes, Frame: 224)
.ent releaseMemBank
releaseMemBank:
    # Line 559
    lw	$a3,16($a2)
    # Line 551
    addiu	$sp,$sp,-96
    sd	$s4,16($sp)
    # Line 559
    lw	$s4,4($a2)
    # Line 551
    sd	$s5,40($sp)
    # Line 556
    lw	$s5,8($a2)
    # Line 551
    sd	$s3,64($sp)
    sd	$s7,32($sp)
    sd	$s2,72($sp)
    # Line 558
    lw	$at,0($a2)
    sd	$at,24($sp)
    # Line 559
    lw	$at,8($at)
    # Line 551
    sd	$s1,48($sp)
    # Line 559
    li	$a5,-1
    # Line 551
    move	$s1,$a0
    move	$s2,$a1
    sd	$s0,56($sp)
    move	$s0,$a2
    # Line 559
    beq	$at,$a5,.L0d976e38
    sd	$ra,80($sp)
    # Line 582
    lw	$s7,12($a2)
    # Line 583
    la	$a6,sub_0d970000
    move	$s3,$a3
    addiu	$a6,$a6,23856
.L0d976de0:
    lw	$a7,8($s4)
    beq	$a7,$a5,.L0d976e8c
    # Line 594
    move	$a0,$s1
.L0d976dec:
    ld	$s4,16($sp)
    ld	$ra,80($sp)
    # Line 606
    sw	$a5,8($s0)
    # Line 605
    sw	$s3,16($s0)
    # Line 604
    sw	$s7,12($s0)
    # Line 607
    move	$a2,$s0
    # Line 608
    ld	$s0,56($sp)
    # Line 607
    move	$a0,$s1
    # Line 608
    ld	$s1,48($sp)
    # Line 607
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a1,$s2
    # Line 608
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    # Line 607
    addiu	$t9,$t9,24368
    move	$a3,$s5
    # Line 608
    ld	$s5,40($sp)
    ld	$s7,32($sp)
    bgezl	$zero,sizeNoGreaterPriorityInterval
    addiu	$sp,$sp,96
.L0d976e38:
    # Line 570
    ld	$a2,24($sp)
    # Line 569
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 573
    lw	$s7,0($a2)
    # Line 570
    lw	$s3,16($a2)
    # Line 569
    addiu	$t9,$t9,23856
    # Line 573
    sd	$s7,8($sp)
    # Line 569
    lw	$s7,12($a2)
    # Line 575
    bal findFreeBank
    # Line 570
    addu	$s3,$s3,$a3
    # Line 576
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,28000
    move	$a0,$s1
    bal stealNoGreaterPriorityBank
    ld	$a1,24($sp)
    # Line 578
    ld	$ra,8($sp)
    la	$a6,sub_0d970000
    li	$a5,-1
    sw	$s0,4($ra)
    addiu	$a6,$a6,23856
    # Line 579
    b	.L0d976de0
    sw	$ra,0($s0)
.L0d976e8c:
    # Line 589
    lw	$a7,16($s4)
    # Line 594
    move	$t9,$a6
    move	$a1,$s2
    move	$a2,$s4
    # Line 592
    lw	$t0,4($s4)
    sd	$t0,0($sp)
    # Line 594
    bal findFreeBank
    # Line 589
    addu	$s3,$a7,$s3
    # Line 595
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,28000
    move	$a0,$s1
    bal stealNoGreaterPriorityBank
    move	$a1,$s4
    # Line 597
    ld	$ra,0($sp)
    sw	$ra,4($s0)
    li	$a5,-1
    b	.L0d976dec
    # Line 598
    sw	$s0,0($ra)
.end releaseMemBank

# Function: addFreeBank
# Declared: Line 614 (Source lines: 615-643)
# Address: 0x0d976ee0 - 0x0d976fe8 (Size: 264 bytes, Frame: 192)
.ent addFreeBank
addFreeBank:
    # Line 617
    sll	$t8,$a1,0x2
    subu	$t8,$t8,$a1
    # Line 615
    addiu	$sp,$sp,-64
    # Line 617
    sll	$t8,$t8,0x6
    # Line 615
    sd	$s3,8($sp)
    # Line 617
    lui	$s3,0x1
    addu	$t8,$a0,$t8
    addu	$s3,$s3,$t8
    sd	$s3,0($sp)
    lw	$s3,-15920($s3)
    # Line 615
    sd	$s5,32($sp)
    # Line 617
    lw	$s3,0($s3)
    # Line 615
    sd	$s0,16($sp)
    # Line 617
    lw	$at,8($s3)
    # Line 615
    move	$s0,$a0
    sd	$s2,24($sp)
    # Line 617
    li	$v0,-1
    # Line 615
    move	$s2,$a1
    move	$s5,$a2
    sd	$ra,48($sp)
    sd	$s1,40($sp)
    # Line 617
    beq	$at,$v0,.L0d976fc8
    move	$s1,$s3
    # Line 630
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,27712
    bal stealNoGreaterPriorityBank
    nop
    sw	$v0,4($s3)
    # Line 632
    ld	$at,0($sp)
    # Line 631
    sw	$s3,0($v0)
    # Line 632
    lw	$v1,-15920($at)
    sw	$v1,4($v0)
    # Line 633
    lw	$at,-15920($at)
    # Line 636
    lui	$ra,0x1
    # Line 633
    sw	$v0,0($at)
    # Line 636
    addu	$ra,$ra,$s0
    # Line 635
    li	$at,-1
    sw	$at,8($v0)
    # Line 636
    lw	$ra,-15688($ra)
    # Line 637
    sw	$s5,16($v0)
    # Line 630
    move	$s1,$v0
    # Line 636
    sw	$ra,12($v0)
.L0d976f88:
    # Line 641
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a0,$s0
    addiu	$t9,$t9,24368
    ld	$s3,8($sp)
    move	$a1,$s2
    move	$a2,$s1
    ld	$s5,32($sp)
    bal sizeNoGreaterPriorityInterval
    li	$a3,2
    ld	$ra,48($sp)
    ld	$s0,16($sp)
    ld	$s2,24($sp)
    # Line 643
    move	$v0,$s1
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d976fc8:
    # Line 624
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,23856
    bal findFreeBank
    move	$a2,$s3
    # Line 625
    lw	$ra,16($s3)
    addu	$ra,$ra,$s5
    b	.L0d976f88
    sw	$ra,16($s3)
.end addFreeBank

# Function: getFreeBank
# Declared: Line 650 (Source lines: 652-741)
# Address: 0x0d976ff0 - 0x0d9773d4 (Size: 996 bytes, Frame: 160)
.ent getFreeBank
getFreeBank:
    # Line 655
    lw	$v1,0($a2)
    # Line 652
    addiu	$sp,$sp,-160
    sd	$a1,96($sp)
    sd	$a2,48($sp)
    sd	$a4,56($sp)
    sd	$v1,16($sp)
    sd	$s1,104($sp)
    sd	$ra,112($sp)
    # Line 658
    sll	$v0,$a1,0x2
    sd	$s4,120($sp)
    subu	$v0,$v0,$a1
    sd	$s0,0($sp)
    sll	$v0,$v0,0x6
    sd	$s6,128($sp)
    lui	$a7,0x1
    addu	$v0,$a0,$v0
    # Line 652
    sd	$s2,40($sp)
    # Line 658
    addu	$v0,$a7,$v0
    lw	$at,-16056($v0)
    # Line 652
    sd	$s3,32($sp)
    move	$s3,$a0
    move	$s2,$a2
    sd	$s7,24($sp)
    move	$s7,$a3
    # Line 658
    beqz	$at,.L0d977298
    sd	$s8,136($sp)
.L0d977058:
    # Line 670
    blez	$s7,.L0d977334
    move	$s1,$zero
    addu	$ra,$a7,$s3
    sd	$ra,64($sp)
    sd	$s5,144($sp)
    ld	$t8,96($sp)
    li	$s4,-1
    la	$s6,sub_0d970000
    sll	$t9,$t8,0x2
    sd	$t9,88($sp)
    sltiu	$t8,$t8,1
    lui	$s8,0x10
    sd	$t8,80($sp)
    sll	$t8,$t8,0x2
    addiu	$s6,$s6,28000
    b	.L0d977144
    sd	$t8,72($sp)
.L0d97709c:
    # Line 679
    beqz	$v0,.L0d9770a8
    sw	$v0,296($a7)
.L0d9770a4:
    sw	$a7,292($v0)
.L0d9770a8:
    lw	$at,32($s0)
.L0d9770ac:
    lui	$v0,0xffef
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    sw	$at,32($s0)
    # Line 680
    ld	$a4,88($sp)
.L0d9770c0:
    # Line 681
    # lw $t9, -31668($gp) # &__glKonFreeAllocedTexObjBank
    ld	$a3,96($sp)
    # Line 680
    addu	$a4,$a4,$s0
    sw	$zero,264($a4)
    # Line 681
    lw	$a2,284($s0)
    move	$a1,$s0
    move	$a0,$s3
    xor	$a2,$a2,$a3
    bal __glKonFreeAllocedTexObjBank
    sltu	$a2,$zero,$a2
    beqz	$v0,.L0d977110
    # Line 683
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    ld	$s2,72($sp)
    addiu	$t9,$t9,28032
    ld	$a1,80($sp)
    addu	$s2,$s2,$s0
    move	$a0,$s3
    bal stealNoGreaterPriorityBank
    lw	$a2,264($s2)
    # Line 684
    sw	$zero,264($s2)
.L0d977110:
    lw	$t9,8($s5)
.L0d977114:
    # Line 691
    lw	$ra,16($s5)
    # Line 684
    slt	$t8,$s4,$t9
    movn	$s4,$t9,$t8
    # Line 694
    move	$t9,$s6
    move	$a0,$s3
    # Line 691
    addu	$s1,$ra,$s1
    # Line 693
    lw	$s2,4($s5)
    # Line 694
    bal stealNoGreaterPriorityBank
    move	$a1,$s5
    slt	$at,$s1,$s7
    beqz	$at,.L0d977188
    ld	$s5,144($sp)
.L0d977144:
    # Line 670
    lw	$v0,8($s2)
    li	$v1,-1
    # Line 679
    ld	$a1,64($sp)
    # Line 677
    lw	$s0,20($s2)
    # Line 670
    beq	$v0,$v1,.L0d977278
    move	$s5,$s2
    # Line 677
    lw	$a0,32($s0)
    and	$a0,$a0,$s8
    beqz	$a0,.L0d9770c0
    # Line 680
    ld	$a4,88($sp)
    # Line 679
    lw	$a7,292($s0)
    bnez	$a7,.L0d97709c
    lw	$v0,296($s0)
    bnez	$v0,.L0d9770a4
    sw	$v0,-15696($a1)
    b	.L0d9770ac
    lw	$at,32($s0)
.L0d977188:
    # Line 694
    la	$s6,sub_0d970000
    addiu	$s6,$s6,27712
    # Line 698
    move	$t9,$s6
    bal stealNoGreaterPriorityBank
    move	$a0,$s3
    # Line 705
    ld	$t8,48($sp)
    # Line 701
    ld	$at,16($sp)
    # Line 704
    ld	$t9,56($sp)
    # Line 701
    sw	$v0,4($at)
    # Line 703
    sw	$at,0($v0)
    # Line 704
    lw	$ra,8($t9)
    sw	$ra,8($v0)
    # Line 705
    lw	$t8,12($t8)
    # Line 710
    subu	$s1,$s1,$s7
    # Line 707
    sw	$t9,20($v0)
    # Line 698
    move	$s0,$v0
    # Line 706
    sw	$s7,16($v0)
    # Line 710
    li	$v1,-1
    blez	$s1,.L0d97734c
    # Line 705
    sw	$t8,12($v0)
    # Line 710
    lw	$v0,8($s2)
    beq	$v0,$v1,.L0d9772dc
    # Line 714
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    # Line 720
    move	$t9,$s6
    bal stealNoGreaterPriorityBank
    move	$a0,$s3
    # Line 731
    ld	$a1,96($sp)
    # Line 722
    sw	$v0,4($s0)
    # Line 726
    li	$at,-1
    sw	$at,8($v0)
    # Line 725
    sw	$s2,4($v0)
    # Line 724
    sw	$s0,0($v0)
    # Line 731
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 727
    lw	$ra,12($s0)
    # Line 720
    move	$a2,$v0
    # Line 728
    sw	$s1,16($v0)
    # Line 731
    addiu	$t9,$t9,24368
    move	$a3,$s4
    # Line 727
    addu	$ra,$ra,$s7
    sw	$ra,12($v0)
    # Line 731
    move	$a0,$s3
    bal sizeNoGreaterPriorityInterval
    # Line 729
    sw	$v0,0($s2)
    ld	$s1,104($sp)
.L0d977238:
    ld	$s4,120($sp)
    ld	$s6,128($sp)
    ld	$s8,136($sp)
    # Line 741
    ld	$s2,40($sp)
    ld	$s3,32($sp)
    ld	$s7,24($sp)
    # Line 739
    ld	$a0,56($sp)
    ld	$v1,88($sp)
    lw	$v0,12($s0)
    ld	$ra,112($sp)
    addu	$v1,$v1,$a0
    sw	$v0,276($v1)
    # Line 740
    sw	$s0,264($v1)
    # Line 741
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d977278:
    # Line 675
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,23856
    move	$a0,$s3
    ld	$a1,96($sp)
    bal findFreeBank
    move	$a2,$s2
    b	.L0d977114
    # Line 684
    lw	$t9,8($s5)
.L0d977298:
    # Line 658
    ld	$ra,56($sp)
    lw	$ra,8($ra)
    move	$s1,$zero
    blez	$ra,.L0d977058
    move	$s0,$v0
    sd	$v0,8($sp)
.L0d9772b0:
    # Line 664
    # lw $t9, -31616($gp) # &inInterval
    ld	$a0,48($sp)
    move	$a1,$s7
    bal inInterval
    lw	$a2,-16080($s0)
    beqz	$v0,.L0d977398
    lui	$a7,0x1
.L0d9772cc:
    # Line 668
    ld	$v0,8($sp)
    # Line 667
    li	$at,1
    # Line 668
    b	.L0d977058
    # Line 667
    sw	$at,-16056($v0)
.L0d9772dc:
    # Line 712
    sw	$s2,4($s0)
    # Line 714
    addiu	$t9,$t9,23856
    # Line 713
    sw	$s0,0($s2)
    # Line 714
    move	$a0,$s3
    ld	$a1,96($sp)
    bal findFreeBank
    move	$a2,$s2
    # Line 717
    ld	$a1,96($sp)
    # lw $t9, -32736($gp) # &sub_0d970000
    move	$a3,$s4
    # Line 716
    lw	$v0,16($s2)
    # Line 717
    move	$a2,$s2
    # Line 715
    lw	$at,12($s0)
    # Line 717
    addiu	$t9,$t9,24368
    move	$a0,$s3
    # Line 716
    addu	$v0,$v0,$s1
    sw	$v0,16($s2)
    # Line 715
    addu	$at,$at,$s7
    # Line 717
    bal sizeNoGreaterPriorityInterval
    # Line 715
    sw	$at,12($s2)
    b	.L0d977238
    ld	$s1,104($sp)
.L0d977334:
    # Line 694
    ld	$ra,96($sp)
    li	$s4,-1
    sll	$ra,$ra,0x2
    move	$s1,$zero
    b	.L0d977188
    sd	$ra,88($sp)
.L0d97734c:
    ld	$s8,136($sp)
    ld	$s6,128($sp)
    ld	$s4,120($sp)
    ld	$s1,104($sp)
    # Line 735
    sw	$s2,4($v0)
    # Line 736
    sw	$v0,0($s2)
    # Line 741
    ld	$s2,40($sp)
    ld	$s3,32($sp)
    ld	$s7,24($sp)
    # Line 739
    ld	$v1,56($sp)
    ld	$v0,88($sp)
    lw	$at,12($s0)
    ld	$ra,112($sp)
    addu	$v0,$v0,$v1
    sw	$at,276($v0)
    # Line 740
    sw	$s0,264($v0)
    # Line 741
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d977398:
    # Line 664
    # lw $t9, -31616($gp) # &inInterval
    lw	$a1,-16068($s0)
    ld	$a2,48($sp)
    bal inInterval
    lw	$a0,-16080($s0)
    bnez	$v0,.L0d9772cc
    lui	$a7,0x1
    # Line 663
    ld	$a0,56($sp)
    lw	$a0,8($a0)
    addiu	$s1,$s1,1
    slt	$a0,$s1,$a0
    bnez	$a0,.L0d9772b0
    addiu	$s0,$s0,4
    b	.L0d977058
    nop
.end getFreeBank

# Function: __glKonTexAlloc
# Declared: Line 806 (Source lines: 807-1091)
# Address: 0x0d9773e0 - 0x0d977cdc (Size: 2300 bytes, Frame: 160)
.globl __glKonTexAlloc
.ent __glKonTexAlloc
__glKonTexAlloc:
    # Line 807
    addiu	$sp,$sp,-160
    sd	$ra,112($sp)
    lui	$ra,0x12
    addiu	$ra,$ra,-25608
    sd	$gp,120($sp)
    addu	$gp,$t9,$ra
    # lw $t9, -32736($gp) # &sub_0d970000
    sd	$s5,128($sp)
    addiu	$t9,$t9,25792
    move	$s5,$a0
    sd	$s3,104($sp)
    move	$s3,$a1
    sd	$a2,96($sp)
    # Line 820
    bal inInterval
    move	$a1,$zero
    # Line 821
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,25792
    move	$a0,$s5
    sd	$s6,80($sp)
    li	$a1,1
    bal inInterval
    sd	$s2,88($sp)
    sd	$s7,32($sp)
    ld	$s2,96($sp)
    sd	$s1,48($sp)
    sd	$s4,56($sp)
    andi	$s2,$s2,0x2
    sd	$s0,72($sp)
    lui	$a4,0x1
    sd	$s8,64($sp)
    beqz	$s2,.L0d97781c
    addu	$s6,$a4,$s5
    # Line 831
    lw	$s0,284($s3)
    lw	$t8,264($s3)
    sltiu	$a1,$s0,1
    addiu	$a0,$sp,0
    sll	$a3,$a1,0x2
    beqz	$t8,.L0d977618
    addu	$v0,$a3,$sp
    # Line 834
    sll	$ra,$s0,0x2
    addu	$t9,$ra,$s3
    lw	$t9,0($t9)
    addu	$ra,$ra,$sp
    # Line 833
    sw	$zero,0($v0)
    # Line 834
    sw	$t9,0($ra)
.L0d977494:
    # Line 856
    lw	$ra,-15928($s6)
    lw	$ra,16($ra)
    lw	$s1,0($v0)
    slt	$ra,$ra,$s1
    bnez	$ra,.L0d9774d4
    # Line 863
    move	$s7,$zero
    # Line 856
    sll	$s4,$s0,0x2
    lw	$at,-15736($s6)
    addu	$s4,$a0,$s4
    lw	$s4,0($s4)
    lw	$at,16($at)
    slt	$at,$at,$s4
    beqz	$at,.L0d977934
    # Line 863
    move	$s7,$zero
    b	.L0d9774d8
    move	$s8,$zero
.L0d9774d4:
    move	$s8,$zero
.L0d9774d8:
    # Line 869
    beqz	$s2,.L0d977774
    nop
.L0d9774e0:
    # Line 906
    beqz	$s8,.L0d97763c
    nop
    beqz	$s7,.L0d97763c
    sll	$s4,$s0,0x2
    sltiu	$s1,$s0,1
    sd	$s0,144($sp)
    addu	$s4,$s4,$a0
    sll	$s1,$s1,0x2
    lw	$s4,0($s4)
    addu	$s1,$s1,$a0
    lw	$s1,0($s1)
.L0d97750c:
    # Line 1066
    sw	$zero,292($s3)
.L0d977510:
    # Line 1067
    lw	$t8,-15696($s6)
    sw	$t8,296($s3)
    lw	$v0,-15696($s6)
    beqz	$v0,.L0d977528
    ld	$s0,144($sp)
    # Line 1069
    sw	$s3,292($v0)
.L0d977528:
    # Line 1073
    beqz	$s8,.L0d977740
    # Line 1070
    sw	$s3,-15696($s6)
    # Line 1073
    beqz	$s7,.L0d977740
    nop
    beqz	$s1,.L0d977768
    move	$s2,$zero
.L0d977540:
    # Line 1077
    la	$s6,sub_0d970000
    # Line 1078
    move	$a0,$s5
    # Line 1077
    addiu	$s6,$s6,28656
    # Line 1078
    move	$a1,$zero
    move	$t9,$s6
    move	$a2,$s8
    move	$a3,$s1
    bal stealNoGreaterPriorityBank
    move	$a4,$s3
.L0d977564:
    beqz	$s4,.L0d9775ac
    nop
    beqz	$s2,.L0d977594
    # Line 1084
    move	$a0,$s5
    # Line 1083
    # lw $t9, -31612($gp) # &stealNoGreaterPriorityBank
    move	$a0,$s5
    move	$a3,$s4
    lw	$a2,8($sp)
    bal stealNoGreaterPriorityBank
    li	$a1,1
    move	$s7,$v0
    # Line 1084
    move	$a0,$s5
.L0d977594:
    li	$a1,1
    move	$t9,$s6
    move	$a2,$s7
    move	$a3,$s4
    bal stealNoGreaterPriorityBank
    move	$a4,$s3
.L0d9775ac:
    ld	$s2,88($sp)
    ld	$s6,80($sp)
    ld	$s8,64($sp)
    ld	$s4,56($sp)
    ld	$s1,48($sp)
    ld	$s7,32($sp)
    # Line 1060
    ld	$gp,120($sp)
    # Line 1088
    sw	$s0,284($s3)
    # Line 1060
    ld	$s0,72($sp)
    # Line 1087
    lw	$t8,32($s3)
    # Line 1060
    ld	$ra,112($sp)
    ld	$s5,128($sp)
    # Line 1087
    lui	$t9,0x10
    # Line 1091
    move	$v0,$zero
    # Line 1087
    or	$t8,$t8,$t9
    sw	$t8,32($s3)
    # Line 1060
    ld	$s3,104($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9775f8:
    ld	$s1,48($sp)
    ld	$s4,56($sp)
    ld	$ra,112($sp)
    ld	$gp,120($sp)
    ld	$s3,104($sp)
    ld	$s5,128($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d977618:
    # Line 834
    lw	$ra,268($s3)
    beqz	$ra,.L0d977494
    # Line 837
    addu	$v1,$a3,$s3
    # Line 838
    sll	$at,$s0,0x2
    # Line 837
    lw	$v1,0($v1)
    # Line 838
    addu	$at,$sp,$at
    # Line 837
    sw	$v1,0($v0)
    b	.L0d977494
    # Line 838
    sw	$zero,0($at)
.L0d97763c:
    # Line 915
    lw	$a1,8($s3)
    beqz	$a1,.L0d977ac4
    # Line 923
    sltiu	$a7,$s0,1
.L0d977648:
    sll	$v0,$a7,0x2
    lw	$a1,-16068($s6)
    addu	$v0,$v0,$a0
    lw	$v0,0($v0)
    sll	$s4,$s0,0x2
    slt	$a2,$a1,$v0
    move	$a4,$a7
    addu	$s4,$s4,$a0
    lw	$s4,0($s4)
    bnez	$a2,.L0d977684
    move	$s1,$v0
    lw	$v1,-15876($s6)
    slt	$v1,$v1,$s4
    beqz	$v1,.L0d97750c
    sd	$s0,144($sp)
.L0d977684:
    # Line 929
    beqz	$s2,.L0d977af0
    slt	$t9,$a1,$s4
.L0d97768c:
    # Line 934
    lw	$t1,-15920($s6)
    lw	$t1,0($t1)
    lw	$a3,-15728($s6)
    lw	$a1,8($t1)
    lw	$a3,0($a3)
    li	$t2,-1
    beq	$a1,$t2,.L0d977b24
    lw	$a1,8($a3)
    # Line 939
    beq	$a1,$t2,.L0d977c10
    move	$t0,$zero
    # Line 940
    move	$a1,$zero
.L0d9776b8:
    subu	$t8,$s4,$a1
    slt	$t3,$t8,$v0
    # Line 941
    move	$a3,$v0
    beqz	$s2,.L0d977b90
    movz	$a3,$t8,$t3
.L0d9776cc:
    # Line 950
    lw	$v0,-15692($s6)
    lw	$v1,-15688($s6)
    subu	$v0,$v0,$v1
    andi	$t9,$v0,0x3ff
    beqz	$t9,.L0d977860
    # Line 965
    li	$ra,-1024
    ld	$s2,88($sp)
    ld	$s6,80($sp)
    ld	$s8,64($sp)
    ld	$s4,56($sp)
    ld	$s1,48($sp)
    # Line 963
    la	$a0,__iob
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    sd	$v0,40($sp)
    ld	$s7,32($sp)
    li	$a3,1024
    addiu	$a1,$a1,-4448
    ld	$a2,40($sp)
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 1060
    ld	$gp,120($sp)
    ld	$ra,112($sp)
    ld	$s0,72($sp)
    # Line 965
    li	$v0,-1
    # Line 1060
    ld	$s3,104($sp)
    ld	$s5,128($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d977740:
    # Line 1073
    beqz	$s1,.L0d977768
    li	$s2,1
    # Line 1077
    # lw $t9, -31612($gp) # &stealNoGreaterPriorityBank
    move	$a0,$s5
    move	$a1,$zero
    move	$a3,$s1
    bal stealNoGreaterPriorityBank
    lw	$a2,8($sp)
    b	.L0d977540
    move	$s8,$v0
.L0d977768:
    la	$s6,sub_0d970000
    b	.L0d977564
    addiu	$s6,$s6,28656
.L0d977774:
    # Line 869
    lw	$t8,-15928($s6)
    sll	$s4,$s0,0x2
    lw	$t8,16($t8)
    addu	$s4,$a0,$s4
    lw	$s4,0($s4)
    slt	$t8,$t8,$s4
    bnez	$t8,.L0d9774e0
    nop
    lw	$t9,-15736($s6)
    lw	$t9,16($t9)
    slt	$t9,$t9,$s1
    bnez	$t9,.L0d9774e0
    sd	$a1,16($sp)
    # Line 873
    # lw $t9, -31624($gp) # &findFreeBank
    move	$a0,$s5
    move	$a1,$zero
    bal findFreeBank
    move	$a2,$s4
    # Line 874
    # lw $t9, -31624($gp) # &findFreeBank
    move	$a0,$s5
    move	$a2,$s1
    # Line 873
    sd	$v0,136($sp)
    # Line 874
    bal findFreeBank
    li	$a1,1
    # Line 881
    ld	$a1,136($sp)
    lw	$ra,16($a1)
    bne	$ra,$s4,.L0d977c18
    addiu	$a0,$sp,0
    lw	$at,16($v0)
    bne	$at,$s1,.L0d977c18
    # Line 886
    ld	$s1,16($sp)
    sd	$s1,144($sp)
    # Line 891
    sll	$s4,$s1,0x2
    sltiu	$s1,$s1,1
    addu	$s4,$s4,$sp
    sll	$s1,$s1,0x2
    # Line 888
    move	$s8,$a1
    # Line 891
    lw	$s4,0($s4)
    addu	$s1,$s1,$sp
    # Line 889
    move	$s7,$v0
    # Line 891
    b	.L0d97750c
    lw	$s1,0($s1)
.L0d97781c:
    # Line 843
    lw	$a2,4($s3)
    # Line 842
    lw	$v1,0($s3)
    # Line 844
    lw	$t8,-15732($s6)
    lw	$s0,-15924($s6)
    slt	$s0,$s0,$t8
    slt	$t8,$v1,$a2
    xori	$t8,$t8,0x1
    xori	$s0,$s0,0x1
    xor	$s0,$s0,$t8
    sltiu	$s0,$s0,1
    sltiu	$a1,$s0,1
    # Line 838
    addiu	$a0,$sp,0
    # Line 843
    sw	$a2,4($sp)
    # Line 844
    sll	$v0,$a1,0x2
    # Line 842
    sw	$v1,0($sp)
    b	.L0d977494
    # Line 844
    addu	$v0,$sp,$v0
.L0d977860:
    # Line 965
    addiu	$t9,$a3,1023
    and	$t9,$t9,$ra
    sd	$t9,24($sp)
    slt	$t9,$v0,$t9
    beqz	$t9,.L0d977ba8
    # Line 969
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    sd	$v0,40($sp)
    # Line 985
    beqz	$v0,.L0d9778dc
    sd	$a4,16($sp)
    # Line 987
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,23168
    move	$a0,$s5
    bal __glkonle_TexSubImage3DEXT
    ld	$a1,40($sp)
    bltz	$v0,.L0d977c38
    # Line 992
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,28384
    move	$a0,$s5
    move	$a1,$zero
    bal stealNoGreaterPriorityBank
    ld	$a2,40($sp)
    # Line 993
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,28384
    move	$a0,$s5
    li	$a1,1
    bal stealNoGreaterPriorityBank
    ld	$a2,40($sp)
    # Line 994
    ld	$at,40($sp)
    lw	$ra,-15688($s6)
    addu	$ra,$ra,$at
    sw	$ra,-15688($s6)
.L0d9778dc:
    # Line 1007
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,25792
    move	$a0,$s5
    bal inInterval
    move	$a1,$zero
    # Line 1008
    # lw $t9, -32736($gp) # &sub_0d970000
    addiu	$t9,$t9,25792
    move	$a0,$s5
    bal inInterval
    li	$a1,1
    ld	$ra,96($sp)
    andi	$ra,$ra,0x1
    beqz	$ra,.L0d977a80
    # Line 1014
    li	$v0,3
    sd	$s0,144($sp)
.L0d977918:
    move	$s0,$zero
    move	$a1,$s6
    sll	$a2,$v0,0x2
    lui	$a0,0x1
    addu	$a2,$s5,$a2
    b	.L0d9779b4
    addu	$a0,$a0,$a2
.L0d977934:
    # Line 859
    # lw $t9, -31624($gp) # &findFreeBank
    move	$a0,$s5
    sd	$a1,16($sp)
    move	$a1,$zero
    bal findFreeBank
    move	$a2,$s1
    # Line 860
    # lw $t9, -31624($gp) # &findFreeBank
    # Line 859
    move	$s8,$v0
    # Line 860
    move	$a0,$s5
    move	$a2,$s4
    bal findFreeBank
    li	$a1,1
    # Line 863
    lw	$a3,16($s8)
    addiu	$a0,$sp,0
    bne	$a3,$s1,.L0d977988
    # Line 860
    move	$s7,$v0
    # Line 863
    lw	$a4,16($v0)
    bne	$a4,$s4,.L0d97798c
    move	$v0,$zero
    b	.L0d97798c
    li	$v0,1
.L0d977988:
    move	$v0,$zero
.L0d97798c:
    bnez	$v0,.L0d97750c
    sd	$s0,144($sp)
    b	.L0d9774d8
    ld	$a1,16($sp)
    nop
.L0d9779a0:
    # Line 1037
    beqz	$s2,.L0d977a0c
    slt	$a2,$a3,$s4
.L0d9779a8:
    # Line 1021
    addiu	$a1,$a1,4
.L0d9779ac:
    beq	$a1,$a0,.L0d977a8c
    addiu	$s0,$s0,1
.L0d9779b4:
    # Line 1022
    lw	$a3,-16068($a1)
    slt	$a5,$a3,$s1
    bnez	$a5,.L0d9779a0
    nop
    lw	$a6,-15876($a1)
    slt	$a6,$a6,$s4
    bnez	$a6,.L0d9779a0
    nop
    lw	$a0,-16496($gp)
    li	$a7,-1
    beq	$a7,$a0,.L0d977ca4
    sw	$s0,8($sp)
.L0d9779e4:
    # Line 1029
    beqz	$a0,.L0d97750c
    # Line 1031
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    move	$a2,$s0
    addiu	$a1,$a1,-4328
    jal	fprintf
    addiu	$a0,$a0,32
    b	.L0d977510
    # Line 1066
    sw	$zero,292($s3)
.L0d977a0c:
    # Line 1037
    bnez	$a2,.L0d9779a8
    nop
    lw	$a3,-15876($a1)
    slt	$a3,$a3,$s1
    bnez	$a3,.L0d9779ac
    # Line 1021
    addiu	$a1,$a1,4
    # Line 1037
    lw	$a0,-16492($gp)
    li	$a4,-1
    beq	$a4,$a0,.L0d977cc0
    sw	$s0,8($sp)
.L0d977a34:
    # Line 1045
    beqz	$a0,.L0d977a5c
    # Line 1049
    ld	$s1,16($sp)
    # Line 1047
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    move	$a2,$s0
    addiu	$a1,$a1,-4328
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 1049
    ld	$s1,16($sp)
.L0d977a5c:
    sd	$s1,144($sp)
    sll	$s4,$s1,0x2
    sltiu	$s1,$s1,1
    addu	$s4,$s4,$sp
    sll	$s1,$s1,0x2
    lw	$s4,0($s4)
    addu	$s1,$s1,$sp
    b	.L0d97750c
    lw	$s1,0($s1)
.L0d977a80:
    # Line 1014
    lw	$v0,8($s3)
    bgtz	$v0,.L0d977918
    sd	$s0,144($sp)
.L0d977a8c:
    # Line 1060
    ld	$gp,120($sp)
    ld	$s0,72($sp)
    ld	$s1,48($sp)
    ld	$s2,88($sp)
    ld	$s3,104($sp)
    ld	$s4,56($sp)
    ld	$s5,128($sp)
    ld	$ra,112($sp)
    ld	$s6,80($sp)
    li	$v0,-1
    ld	$s7,32($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d977ac4:
    # Line 915
    ld	$t8,96($sp)
    andi	$t8,$t8,0x1
    bnez	$t8,.L0d977648
    # Line 923
    sltiu	$a7,$s0,1
    ld	$s7,32($sp)
    ld	$s0,72($sp)
    ld	$s8,64($sp)
    ld	$s6,80($sp)
    ld	$s2,88($sp)
    # Line 916
    b	.L0d9775f8
    li	$v0,-1
.L0d977af0:
    # Line 929
    bnez	$t9,.L0d97768c
    nop
    lw	$ra,-15876($s6)
    slt	$ra,$ra,$v0
    bnez	$ra,.L0d97768c
    nop
    # Line 934
    sltiu	$s1,$a7,1
    sll	$s1,$s1,0x2
    # Line 933
    sd	$a7,144($sp)
    # Line 934
    addu	$s1,$a0,$s1
    move	$s4,$v0
    b	.L0d97750c
    lw	$s1,0($s1)
.L0d977b24:
    # Line 939
    beq	$a1,$t2,.L0d977c6c
    lw	$t0,16($t1)
    # Line 940
    move	$a1,$zero
.L0d977b30:
    subu	$a3,$v0,$t0
    subu	$t9,$s4,$a1
    slt	$t8,$t9,$a3
    # Line 941
    bnez	$s2,.L0d9776cc
    movz	$a3,$t9,$t8
    subu	$t1,$v0,$a1
    subu	$t3,$s4,$t0
    slt	$ra,$t1,$t3
    bnez	$ra,.L0d977ba0
    nop
.L0d977b58:
    # Line 950
    slt	$at,$t1,$a3
    beqz	$at,.L0d9776cc
    nop
    # Line 949
    sltiu	$a4,$a7,1
    sll	$s1,$a4,0x2
    addu	$s1,$a0,$s1
    lw	$s1,0($s1)
    move	$s0,$a7
    move	$s4,$v0
    subu	$a3,$v0,$t0
    subu	$a2,$s1,$a1
    slt	$v1,$a2,$a3
    b	.L0d9776cc
    movz	$a3,$a2,$v1
.L0d977b90:
    # Line 941
    subu	$t1,$v0,$a1
    slt	$t8,$t1,$s4
    beqz	$t8,.L0d977b58
    move	$t3,$s4
.L0d977ba0:
    # Line 950
    b	.L0d977b58
    move	$t1,$t3
.L0d977ba8:
    # Line 969
    addiu	$t9,$t9,23168
    move	$a0,$s5
    bal __glkonle_TexSubImage3DEXT
    ld	$a1,24($sp)
    bltz	$v0,.L0d977c74
    ld	$s7,32($sp)
    # Line 974
    la	$s2,sub_0d970000
    addiu	$s2,$s2,28384
    move	$t9,$s2
    move	$a0,$s5
    move	$a1,$zero
    bal stealNoGreaterPriorityBank
    ld	$a2,24($sp)
    # Line 975
    move	$t9,$s2
    # Line 974
    move	$s8,$v0
    # Line 975
    move	$a0,$s5
    li	$a1,1
    bal stealNoGreaterPriorityBank
    ld	$a2,24($sp)
    # Line 976
    ld	$t9,24($sp)
    lw	$t8,-15688($s6)
    # Line 975
    move	$s7,$v0
    sd	$s0,144($sp)
    # Line 976
    addu	$t8,$t8,$t9
    # Line 978
    b	.L0d97750c
    # Line 976
    sw	$t8,-15688($s6)
.L0d977c10:
    # Line 940
    b	.L0d9776b8
    lw	$a1,16($a3)
.L0d977c18:
    # Line 894
    beqz	$s8,.L0d977c28
    nop
    bnez	$s7,.L0d9774e0
    nop
.L0d977c28:
    # Line 897
    move	$s8,$a1
    # Line 895
    ld	$s0,16($sp)
    b	.L0d9774e0
    # Line 898
    move	$s7,$v0
.L0d977c38:
    ld	$s7,32($sp)
    ld	$s0,72($sp)
    ld	$s8,64($sp)
    # Line 988
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    ld	$s6,80($sp)
    addiu	$a1,$a1,-4384
    ld	$s2,88($sp)
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 989
    b	.L0d9775f8
    li	$v0,-1
.L0d977c6c:
    # Line 940
    b	.L0d977b30
    lw	$a1,16($a3)
.L0d977c74:
    ld	$s0,72($sp)
    ld	$s8,64($sp)
    # Line 981
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    ld	$s6,80($sp)
    addiu	$a1,$a1,-4384
    ld	$s2,88($sp)
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 982
    b	.L0d9775f8
    li	$v0,-1
.L0d977ca4:
    # Line 1029
    # lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,-4664
    move	$a0,$v0
    b	.L0d9779e4
    sw	$v0,-16496($gp)
.L0d977cc0:
    # Line 1045
    # lw $t9, -18588($gp) # &getenv
    la	$a0,.rodata
    jal	getenv
    addiu	$a0,$a0,-4664
    move	$a0,$v0
    b	.L0d977a34
    sw	$v0,-16492($gp)
.end __glKonTexAlloc

# Function: __glKonTexFree
# Declared: Line 1111 (Source lines: 1112-1126)
# Address: 0x0d977ce0 - 0x0d977dc4 (Size: 228 bytes, Frame: 32)
.globl __glKonTexFree
.ent __glKonTexFree
__glKonTexFree:
    # Line 1112
    lw	$at,32($a1)
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    lui	$v0,0x12
    dsll32	$at,$at,0xb
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$v0,$v0,-27912
    sd	$gp,16($sp)
    bgez	$at,.L0d977d50
    addu	$gp,$t9,$v0
    # Line 1113
    lw	$a2,292($a1)
    li	$v0,0xc2b0
    lw	$a1,296($a1)
    beqz	$a2,.L0d977d30
    addu	$v0,$v0,$a0
    bnez	$a1,.L0d977d38
    sw	$a1,296($a2)
    b	.L0d977d40
    lw	$v1,32($s0)
.L0d977d30:
    beqz	$a1,.L0d977d3c
    sw	$a1,0($v0)
.L0d977d38:
    sw	$a2,292($a1)
.L0d977d3c:
    lw	$v1,32($s0)
.L0d977d40:
    lui	$a1,0xffef
    ori	$a1,$a1,0xffff
    and	$v1,$v1,$a1
    sw	$v1,32($s0)
.L0d977d50:
    lw	$a2,264($s0)
    beqz	$a2,.L0d977d78
    # Line 1117
    nop	# was lw $t9, -32736($gp) # &sub_0d970000
    sd	$a0,0($sp)
    addiu	$t9,$t9,28032
    move	$a1,$zero
    bal stealNoGreaterPriorityBank
    ld	$a0,0($sp)
    ld	$a0,0($sp)
    # Line 1118
    sw	$zero,264($s0)
.L0d977d78:
    lw	$a2,268($s0)
    # lw $t9, -32736($gp) # &sub_0d970000
    # Line 1126
    move	$v0,$zero
    ld	$ra,24($sp)
    # Line 1118
    beqz	$a2,.L0d977db4
    addiu	$t9,$t9,28032
    # Line 1122
    bal stealNoGreaterPriorityBank
    li	$a1,1
    ld	$ra,24($sp)
    # Line 1126
    ld	$gp,16($sp)
    move	$v0,$zero
    # Line 1123
    sw	$zero,268($s0)
    # Line 1126
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d977db4:
    ld	$s0,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glKonTexFree

# Function: __glKonTexUpdatePriority
# Declared: Line 1134 (Source lines: 1135-1181)
# Address: 0x0d977dd0 - 0x0d977fb8 (Size: 488 bytes, Frame: 208)
.globl __glKonTexUpdatePriority
.ent __glKonTexUpdatePriority
__glKonTexUpdatePriority:
    # Line 1135
    addiu	$sp,$sp,-80
    sd	$s5,32($sp)
    sd	$s4,16($sp)
    move	$s4,$a2
    move	$s5,$a1
    # Line 1136
    lw	$a4,8($a1)
    # Line 1135
    lui	$at,0x12
    sd	$s2,24($sp)
    # Line 1136
    li	$s2,0xc130
    # Line 1135
    addiu	$at,$at,-28152
    # Line 1136
    addu	$s2,$a0,$s2
    sd	$gp,40($sp)
    beq	$a4,$a2,.L0d977edc
    # Line 1135
    addu	$gp,$t9,$at
    # Line 1141
    slt	$t8,$a4,$a2
    sd	$s0,72($sp)
    beqz	$t8,.L0d977e68
    sd	$s3,64($sp)
    addiu	$t8,$a1,8
    sd	$t8,8($sp)
    sd	$s1,56($sp)
    sll	$s3,$a2,0x2
    move	$s0,$a1
    sd	$ra,48($sp)
    addu	$s3,$s3,$s2
.L0d977e34:
    # Line 1145
    lw	$a1,264($s0)
    beqz	$a1,.L0d977e50
    # Line 1144
    ld	$ra,8($sp)
    # Line 1148
    sw	$s4,8($a1)
    # Line 1150
    lw	$t9,24($s2)
    beqz	$t9,.L0d977ef4
.L0d977e4c:
    # Line 1144
    ld	$ra,8($sp)
.L0d977e50:
    addiu	$s0,$s0,4
    addiu	$s3,$s3,192
    bne	$s0,$ra,.L0d977e34
    addiu	$s2,$s2,192
    b	.L0d977eb4
    ld	$s0,72($sp)
.L0d977e68:
    addiu	$t8,$a1,8
    sd	$t8,8($sp)
    sd	$s1,56($sp)
    sll	$s3,$a2,0x2
    move	$s0,$a1
    sd	$ra,48($sp)
    addu	$s3,$s3,$s2
.L0d977e84:
    # Line 1163
    lw	$a1,264($s0)
    beqz	$a1,.L0d977ea0
    # Line 1162
    ld	$ra,8($sp)
    # Line 1166
    sw	$s4,8($a1)
    # Line 1168
    lw	$t9,24($s2)
    beqz	$t9,.L0d977f48
.L0d977e9c:
    # Line 1162
    ld	$ra,8($sp)
.L0d977ea0:
    addiu	$s0,$s0,4
    addiu	$s3,$s3,192
    bne	$s0,$ra,.L0d977e84
    addiu	$s2,$s2,192
    ld	$s0,72($sp)
.L0d977eb4:
    ld	$s3,64($sp)
    ld	$s1,56($sp)
    # Line 1181
    ld	$gp,40($sp)
    ld	$s2,24($sp)
    ld	$ra,48($sp)
    # Line 1180
    sw	$s4,8($s5)
    # Line 1181
    ld	$s4,16($sp)
    ld	$s5,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d977edc:
    ld	$s4,16($sp)
    ld	$s2,24($sp)
    ld	$s5,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d977ef4:
    # Line 1153
    lw	$at,8($s5)
    sd	$at,0($sp)
    slt	$at,$at,$s4
    beqz	$at,.L0d977e4c
    ld	$s1,0($sp)
    sll	$s1,$s1,0x2
    addu	$s1,$s2,$s1
    nop
    nop
    nop
    # Line 1154
    # lw $t9, -31616($gp) # &inInterval
.L0d977f20:
    lw	$a2,264($s0)
    lw	$a1,12($s1)
    bal inInterval
    lw	$a0,0($s1)
    bnez	$v0,.L0d977fac
    # Line 1153
    addiu	$s1,$s1,4
    bne	$s1,$s3,.L0d977f20
    # Line 1154
    nop	# was lw $t9, -31616($gp) # &inInterval
    b	.L0d977e50
    # Line 1144
    ld	$ra,8($sp)
.L0d977f48:
    # Line 1171
    lw	$t8,8($s5)
    slt	$t8,$s4,$t8
    move	$s1,$s3
    beqz	$t8,.L0d977e9c
    sd	$s4,0($sp)
    b	.L0d977f78
    # Line 1172
    nop	# was lw $t9, -31620($gp) # &sizeNoGreaterPriorityInterval
.L0d977f64:
    # Line 1171
    lw	$at,8($s5)
    sd	$ra,0($sp)
    slt	$ra,$ra,$at
    beqz	$ra,.L0d977e9c
    # Line 1172
    nop	# was lw $t9, -31620($gp) # &sizeNoGreaterPriorityInterval
.L0d977f78:
    lw	$a2,160($s2)
    ld	$a1,0($sp)
    bal sizeNoGreaterPriorityInterval
    lw	$a0,264($s0)
    lw	$v1,12($s1)
    # Line 1171
    ld	$ra,0($sp)
    # Line 1172
    slt	$v0,$v1,$v0
    # Line 1171
    addiu	$s1,$s1,4
    # Line 1172
    beqz	$v0,.L0d977f64
    # Line 1171
    addiu	$ra,$ra,1
    # Line 1175
    li	$a0,1
    b	.L0d977e9c
    # Line 1174
    sw	$a0,24($s2)
.L0d977fac:
    # Line 1157
    li	$a1,1
    b	.L0d977e4c
    # Line 1156
    sw	$a1,24($s2)
.end __glKonTexUpdatePriority

# Function: __glKonInitTextureMemory
# Declared: Line 1185 (Source lines: 1192-1214)
# Address: 0x0d977fc0 - 0x0d978048 (Size: 136 bytes, Frame: 0)
.globl __glKonInitTextureMemory
.ent __glKonInitTextureMemory
__glKonInitTextureMemory:
    # Line 1192
    li	$a5,-2
    lui	$a3,0x1
    li	$a4,0xc1d4
    addu	$a3,$a3,$a0
    li	$a6,1
    addu	$a4,$a0,$a4
    sw	$a1,-15692($a3)
    # Line 1212
    sw	$zero,-15700($a3)
    # Line 1211
    sw	$zero,-15704($a3)
    # Line 1210
    sw	$zero,-15712($a3)
    sw	$zero,-15708($a3)
    # Line 1209
    sw	$a5,-15716($a3)
    # Line 1195
    addiu	$a7,$a4,192
    # Line 1207
    sw	$a7,-15880($a3)
    sw	$a7,-15860($a3)
    sw	$a7,-15736($a3)
    sw	$a7,-15720($a3)
    sw	$a7,-15724($a3)
    # Line 1206
    sw	$a7,-15728($a3)
    # Line 1205
    sw	$a6,-15740($a3)
    # Line 1212
    sw	$zero,-15892($a3)
    # Line 1211
    sw	$zero,-15896($a3)
    # Line 1210
    sw	$zero,-15904($a3)
    sw	$zero,-15900($a3)
    # Line 1209
    sw	$a5,-15908($a3)
    # Line 1207
    sw	$a4,-16072($a3)
    sw	$a4,-16052($a3)
    sw	$a4,-15928($a3)
    sw	$a4,-15912($a3)
    sw	$a4,-15916($a3)
    # Line 1206
    sw	$a4,-15920($a3)
    # Line 1205
    sw	$a6,-15932($a3)
    # Line 1214
    jr	$ra
    nop
.end __glKonInitTextureMemory

# Function: __glKonFreeTextureMemory
# Declared: Line 1220 (Source lines: 1221-1227)
# Address: 0x0d978050 - 0x0d9780fc (Size: 172 bytes, Frame: 48)
.globl __glKonFreeTextureMemory
.ent __glKonFreeTextureMemory
__glKonFreeTextureMemory:
    # Line 1221
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    lui	$s1,0x1
    addu	$s1,$a1,$s1
    lw	$at,-15668($s1)
    sd	$s3,0($sp)
    lui	$v0,0x12
    move	$s3,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,-28792
    sd	$gp,16($sp)
    blez	$at,.L0d9780d4
    addu	$gp,$t9,$v0
    sd	$s0,40($sp)
    move	$s0,$zero
    sd	$s2,32($sp)
    move	$s2,$zero
    nop
    nop
    nop
.L0d9780a0:
    # Line 1225
    lw	$t9,12($s3)
    lw	$a1,-15672($s1)
    addu	$a1,$a1,$s0
    move	$a0,$s3
    jalr	$t9
    lw	$a1,0($a1)
    # Line 1224
    lw	$a2,-15668($s1)
    addiu	$s2,$s2,1
    slt	$a2,$s2,$a2
    bnez	$a2,.L0d9780a0
    addiu	$s0,$s0,4
    ld	$s2,32($sp)
    ld	$s0,40($sp)
.L0d9780d4:
    # Line 1226
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,-15672($s1)
    ld	$ra,24($sp)
    ld	$s3,0($sp)
    ld	$s1,8($sp)
    # Line 1227
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonFreeTextureMemory

