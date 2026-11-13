# Source: ../soft/so_dlist.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_dlist.c
# Total Functions: 9

.text

# Function: __glGenericFreeDlist
# Declared: Line 41 (Source lines: 42-64)
# Address: 0x0d9d13b0 - 0x0d9d1470 (Size: 192 bytes, Frame: 192)
.globl __glGenericFreeDlist
.ent __glGenericFreeDlist
__glGenericFreeDlist:
    # Line 42
    addiu	$sp,$sp,-64
    sd	$s3,40($sp)
    sd	$s4,24($sp)
    sd	$s1,8($sp)
    # Line 46
    lw	$s1,16($a1)
    # Line 42
    move	$s4,$a1
    sd	$s2,16($sp)
    lui	$at,0xc
    move	$s2,$a0
    sd	$ra,48($sp)
    addiu	$at,$at,-984
    sd	$gp,32($sp)
    # Line 46
    beqz	$s1,.L0d9d13f8
    # Line 42
    addu	$gp,$t9,$at
    # Line 49
    lw	$t9,5024($s2)
    jalr	$t9
    lw	$a1,12($a1)
    # Line 50
    addiu	$s1,$s1,-1
.L0d9d13f8:
    beqz	$s1,.L0d9d1408
    move	$a0,$s1
    # Line 54
    addiu	$v0,$s4,20
    sw	$v0,0($sp)
.L0d9d1408:
    # Line 58
    li	$s3,-1
    addiu	$s1,$a0,-1
    beq	$s3,$s1,.L0d9d1440
    nop
    sd	$s0,56($sp)
    lw	$s0,0($sp)
.L0d9d1420:
    # Line 59
    lw	$t9,0($s0)
    move	$a0,$s2
    jalr	$t9
    lw	$a1,4($s0)
    # Line 58
    addiu	$s1,$s1,-1
    bne	$s3,$s1,.L0d9d1420
    # Line 60
    addiu	$s0,$s0,8
    ld	$s0,56($sp)
.L0d9d1440:
    # Line 63
    lw	$t9,5024($s2)
    ld	$s3,40($sp)
    move	$a0,$s2
    ld	$s1,8($sp)
    jalr	$t9
    move	$a1,$s4
    ld	$ra,48($sp)
    ld	$s2,16($sp)
    ld	$s4,24($sp)
    # Line 64
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glGenericFreeDlist

# Function: __glGenericExecuteDlist
# Declared: Line 71 (Source lines: 72-74)
# Address: 0x0d9d1470 - 0x0d9d14a4 (Size: 52 bytes, Frame: 16)
.globl __glGenericExecuteDlist
.ent __glGenericExecuteDlist
__glGenericExecuteDlist:
    # Line 72
    lui	$at,0xc
    addiu	$sp,$sp,-16
    addiu	$at,$at,-1176
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 73
    # lw $t9, -19528($gp) # &__glDoInterpret
    # Line 72
    sd	$ra,0($sp)
    # Line 73
    jal	__glDoInterpret
    lw	$a0,12($a1)
    ld	$ra,0($sp)
    # Line 74
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glGenericExecuteDlist

# Function: __glGenericAllocDlist
# Declared: Line 81 (Source lines: 82-108)
# Address: 0x0d9d14b0 - 0x0d9d1580 (Size: 208 bytes, Frame: 48)
.globl __glGenericAllocDlist
.ent __glGenericAllocDlist
__glGenericAllocDlist:
    # Line 82
    addiu	$sp,$sp,-48
    sd	$a0,8($sp)
    sd	$a2,16($sp)
    lui	$v1,0xc
    sd	$gp,40($sp)
    addiu	$v1,$v1,-1240
    addu	$gp,$t9,$v1
    # Line 94
    lw	$t9,5016($a0)
    # Line 82
    move	$v0,$a2
    sd	$ra,24($sp)
    # Line 94
    sll	$at,$a2,0x3
    # Line 82
    sd	$s0,32($sp)
    move	$s0,$a1
    # Line 94
    addiu	$a1,$at,20
    jalr	$t9
    sd	$s1,0($sp)
    # Line 99
    la	$a2,__glGenericExecuteDlist
    # Line 94
    beqz	$v0,.L0d9d1564
    move	$s1,$v0
    # Line 97
    la	$a0,__glGenericFreeDlist
    # Line 96
    li	$a1,1
    sw	$a1,0($v0)
    # Line 97
    beqz	$s0,.L0d9d1558
    sw	$a0,4($v0)
    # Line 99
    sw	$a2,8($v0)
.L0d9d1514:
    # Line 103
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,5016($t9)
    jalr	$t9
    move	$a1,$s0
    # Line 105
    ld	$at,16($sp)
    # Line 108
    ld	$gp,40($sp)
    # Line 105
    addiu	$ra,$at,1
    movz	$ra,$at,$s0
    # Line 107
    sw	$ra,16($s1)
    # Line 108
    ld	$ra,24($sp)
    # Line 103
    sw	$v0,12($s1)
    # Line 108
    move	$v0,$s1
    ld	$s0,32($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d1558:
    # Line 101
    la	$v0,__glEmptyExecuteDlist
    b	.L0d9d1514
    sw	$v0,8($s1)
.L0d9d1564:
    # Line 108
    ld	$ra,24($sp)
    ld	$gp,40($sp)
    # Line 95
    move	$v0,$zero
    # Line 108
    ld	$s0,32($sp)
    ld	$s1,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glGenericAllocDlist

# Function: __glle_Nop
# Declared: Line 116 (Source lines: 117-118)
# Address: 0x0d9d1580 - 0x0d9d1588 (Size: 8 bytes, Frame: 0)
.globl __glle_Nop
.ent __glle_Nop
__glle_Nop:
    # Line 118
    jr	$ra
    # Line 117
    move	$v0,$a0
.end __glle_Nop

# Function: __glGenericDlistCompiler
# Declared: Line 125 (Source lines: 126-258)
# Address: 0x0d9d1590 - 0x0d9d1924 (Size: 916 bytes, Frame: 192)
.globl __glGenericDlistCompiler
.ent __glGenericDlistCompiler
__glGenericDlistCompiler:
    # Line 126
    addiu	$sp,$sp,-64
    lui	$at,0xc
    # Line 144
    lw	$a5,12($a1)
    # Line 126
    sd	$s1,8($sp)
    addiu	$at,$at,-1464
    move	$s1,$a0
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    sd	$s0,16($sp)
    # Line 144
    beqz	$a5,.L0d9d18d4
    move	$s0,$a5
    move	$a2,$zero
    move	$t0,$zero
    li	$t9,4
.L0d9d15c8:
    # Line 145
    lbu	$v0,14($s0)
    # Line 151
    addiu	$a0,$t0,4
    # Line 145
    beqz	$v0,.L0d9d15e0
    andi	$v1,$t0,0x7
    xor	$v1,$t9,$v1
    movn	$t0,$a0,$v1
.L0d9d15e0:
    # Line 153
    lw	$v1,4($s0)
    lw	$v0,8($s0)
    # Line 144
    lw	$s0,0($s0)
    # Line 154
    addiu	$a0,$a2,1
    # Line 153
    addu	$v0,$v0,$t0
    movn	$a2,$a0,$v1
    # Line 151
    addiu	$a6,$v0,8
    # Line 144
    beqz	$s0,.L0d9d1638
    # Line 153
    addiu	$t0,$v0,4
    # Line 145
    lbu	$a3,14($s0)
    # Line 154
    addiu	$t3,$a2,1
    # Line 145
    andi	$a4,$t0,0x7
    beqz	$a3,.L0d9d161c
    xor	$a4,$t9,$a4
    movn	$t0,$a6,$a4
.L0d9d161c:
    # Line 153
    lw	$t2,4($s0)
    lw	$t1,8($s0)
    # Line 144
    lw	$s0,0($s0)
    movn	$a2,$t3,$t2
    # Line 153
    addu	$t0,$t1,$t0
    # Line 144
    bnez	$s0,.L0d9d15c8
    # Line 153
    addiu	$t0,$t0,4
.L0d9d1638:
    sd	$a1,0($sp)
    # Line 159
    move	$s0,$a5
    beqz	$a5,.L0d9d18b8
    sd	$ra,32($sp)
    # Line 162
    # lw $t9, -28480($gp) # &__glGenericAllocDlist
    move	$a0,$s1
    bal __glGenericAllocDlist
    addiu	$a1,$t0,4
    move	$a0,$v0
    # Line 170
    beqz	$v0,.L0d9d18e0
    addiu	$t8,$v0,20
    # Line 186
    la	$ra,__glle_Nop
    li	$t9,4
    sd	$s2,48($sp)
    li	$a6,-1
    lui	$s2,0xffff
    lw	$t1,12($v0)
    move	$t0,$zero
    b	.L0d9d182c
    sd	$v0,40($sp)
.L0d9d1688:
    # Line 201
    lw	$a2,4956($s1)
    addu	$a2,$a2,$a5
    lw	$a2,0($a2)
.L0d9d1694:
    # Line 209
    sw	$a2,0($t1)
    lw	$a5,4($s0)
    # Line 228
    addiu	$a2,$s0,16
    # Line 209
    beqz	$a5,.L0d9d16b4
    addiu	$a1,$t1,4
    # Line 214
    addiu	$t8,$t8,8
    # Line 213
    sw	$a1,-4($t8)
    # Line 212
    sw	$a5,-8($t8)
.L0d9d16b4:
    # Line 226
    lw	$a5,8($s0)
    srl	$a5,$a5,0x2
    # Line 230
    sra	$t3,$a5,0x2
    addiu	$a3,$t3,-1
    andi	$t2,$t3,0x3
    bltz	$a3,.L0d9d17b0
    move	$a7,$a3
    beqz	$t2,.L0d9d170c
    sra	$a3,$t3,0x2
.L0d9d16d8:
    # Line 232
    lw	$v0,4($a2)
    # Line 233
    lw	$v1,8($a2)
    # Line 234
    lw	$a0,12($a2)
    # Line 240
    addiu	$a1,$a1,16
    # Line 235
    lw	$at,0($a2)
    # Line 238
    sw	$a0,-4($a1)
    # Line 237
    sw	$v1,-8($a1)
    addiu	$t2,$t2,-1
    # Line 230
    addiu	$a7,$a7,-1
    # Line 236
    sw	$v0,-12($a1)
    # Line 239
    addiu	$a2,$a2,16
    bnez	$t2,.L0d9d16d8
    # Line 235
    sw	$at,-16($a1)
.L0d9d170c:
    beqz	$a3,.L0d9d17b0
    nop
    nop
    nop
    nop
.L0d9d1720:
    # Line 232
    lw	$a0,4($a2)
    # Line 233
    lw	$v1,8($a2)
    # Line 234
    lw	$v0,12($a2)
    # Line 235
    lw	$a3,0($a2)
    sw	$a3,0($a1)
    # Line 236
    sw	$a0,4($a1)
    # Line 237
    sw	$v1,8($a1)
    # Line 238
    sw	$v0,12($a1)
    # Line 232
    lw	$t3,20($a2)
    # Line 233
    lw	$t2,24($a2)
    # Line 234
    lw	$a4,28($a2)
    # Line 235
    lw	$at,16($a2)
    sw	$at,16($a1)
    # Line 236
    sw	$t3,20($a1)
    # Line 237
    sw	$t2,24($a1)
    # Line 238
    sw	$a4,28($a1)
    # Line 232
    lw	$a0,36($a2)
    # Line 233
    lw	$v1,40($a2)
    # Line 234
    lw	$v0,44($a2)
    # Line 235
    lw	$a3,32($a2)
    sw	$a3,32($a1)
    # Line 236
    sw	$a0,36($a1)
    # Line 237
    sw	$v1,40($a1)
    # Line 238
    sw	$v0,44($a1)
    # Line 232
    lw	$t2,52($a2)
    # Line 233
    lw	$t3,56($a2)
    # Line 234
    lw	$at,60($a2)
    # Line 240
    addiu	$a1,$a1,64
    # Line 235
    lw	$a4,48($a2)
    # Line 238
    sw	$at,-4($a1)
    # Line 230
    addiu	$a7,$a7,-4
    # Line 237
    sw	$t3,-8($a1)
    # Line 236
    sw	$t2,-12($a1)
    # Line 239
    addiu	$a2,$a2,64
    # Line 230
    bne	$a7,$a6,.L0d9d1720
    # Line 235
    sw	$a4,-16($a1)
.L0d9d17b0:
    # Line 243
    andi	$a7,$a5,0x3
    addiu	$a5,$a7,-1
    sra	$t3,$a7,0x1
    bltz	$a5,.L0d9d1810
    andi	$a4,$a7,0x1
    beqz	$a4,.L0d9d17e0
    nop
    # Line 244
    addiu	$a1,$a1,4
    lw	$t2,0($a2)
    # Line 243
    addiu	$a5,$a7,-2
    # Line 244
    addiu	$a2,$a2,4
    sw	$t2,-4($a1)
.L0d9d17e0:
    beqz	$t3,.L0d9d1810
    nop
    nop
    nop
.L0d9d17f0:
    lw	$v0,0($a2)
    # Line 243
    addiu	$a5,$a5,-2
    # Line 244
    sw	$v0,0($a1)
    addiu	$a1,$a1,8
    lw	$at,4($a2)
    addiu	$a2,$a2,8
    # Line 243
    bne	$a5,$a6,.L0d9d17f0
    # Line 244
    sw	$at,-4($a1)
.L0d9d1810:
    # Line 248
    lw	$a0,8($s0)
    # Line 187
    lw	$s0,0($s0)
    # Line 250
    addu	$t0,$a0,$t0
    # Line 248
    addu	$a0,$a0,$t1
    # Line 250
    addiu	$t0,$t0,4
    # Line 187
    beqz	$s0,.L0d9d188c
    # Line 248
    addiu	$t1,$a0,4
.L0d9d182c:
    # Line 192
    lbu	$t2,14($s0)
    andi	$t3,$t0,0x7
    beqz	$t2,.L0d9d1850
    # Line 190
    lh	$a1,12($s0)
    # Line 192
    beq	$t9,$t3,.L0d9d1854
    # Line 197
    slti	$at,$a1,1000
    # Line 196
    addiu	$t1,$t1,4
    # Line 197
    addiu	$t0,$t0,4
    # Line 195
    sw	$ra,-4($t1)
.L0d9d1850:
    # Line 197
    slti	$at,$a1,1000
.L0d9d1854:
    # Line 201
    slti	$v0,$a1,10000
    # Line 197
    bnez	$at,.L0d9d1688
    sll	$a5,$a1,0x2
    # Line 201
    beqz	$v0,.L0d9d1878
    nop
    # Line 203
    lw	$a2,4960($s1)
    addu	$a2,$a2,$a5
    b	.L0d9d1694
    lw	$a2,-4000($a2)
.L0d9d1878:
    # Line 206
    lw	$a2,4964($s1)
    addu	$a2,$a2,$a5
    addu	$a2,$s2,$a2
    b	.L0d9d1694
    lw	$a2,25536($a2)
.L0d9d188c:
    ld	$s2,48($sp)
    # Line 253
    la	$a3,__glle_Sentinel
    sw	$a3,4($a0)
    ld	$a0,40($sp)
.L0d9d189c:
    ld	$ra,32($sp)
    # Line 258
    ld	$gp,24($sp)
    move	$v0,$a0
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d18b8:
    # Line 255
    # lw $t9, -28480($gp) # &__glGenericAllocDlist
    move	$a0,$s1
    move	$a1,$zero
    bal __glGenericAllocDlist
    move	$a2,$zero
    b	.L0d9d189c
    move	$a0,$v0
.L0d9d18d4:
    # Line 144
    move	$a2,$zero
    b	.L0d9d1638
    move	$t0,$zero
.L0d9d18e0:
    # Line 177
    lw	$t9,12696($s1)
    jal	__glGenericAllocDlist
    lw	$a0,5012($s1)
    # Line 178
    ld	$a4,0($sp)
    # Line 181
    # lw $t9, -28616($gp) # &__glSetError
    # Line 179
    sw	$zero,16($a4)
    # Line 178
    sw	$zero,12($a4)
    # Line 181
    li	$a0,1285
    bal __glSetError
    # Line 180
    sw	$zero,4988($s1)
    ld	$ra,32($sp)
    # Line 258
    ld	$gp,24($sp)
    # Line 182
    move	$v0,$zero
    # Line 258
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glGenericDlistCompiler

# Function: __glNopFreeDlist
# Declared: Line 271 (Source lines: 272-282)
# Address: 0x0d9d1930 - 0x0d9d1964 (Size: 52 bytes, Frame: 16)
.globl __glNopFreeDlist
.ent __glNopFreeDlist
__glNopFreeDlist:
    # Line 272
    lui	$at,0xc
    addiu	$sp,$sp,-16
    addiu	$at,$at,-2392
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 281
    # lw $t9, -18580($gp) # &free
    # Line 272
    sd	$ra,0($sp)
    # Line 281
    jal	free
    # Line 272
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 282
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glNopFreeDlist

# Function: __glNopExecuteDlist
# Declared: Line 286 (Source lines: 296-296)
# Address: 0x0d9d1970 - 0x0d9d1978 (Size: 8 bytes, Frame: 0)
.globl __glNopExecuteDlist
.ent __glNopExecuteDlist
__glNopExecuteDlist:
    # Line 296
    jr	$ra
    nop
.end __glNopExecuteDlist

# Function: __glNopAllocDlist
# Declared: Line 299 (Source lines: 300-315)
# Address: 0x0d9d1980 - 0x0d9d19f0 (Size: 112 bytes, Frame: 16)
.globl __glNopAllocDlist
.ent __glNopAllocDlist
__glNopAllocDlist:
    # Line 300
    addiu	$sp,$sp,-16
    lui	$at,0xc
    sd	$gp,0($sp)
    addiu	$at,$at,-2472
    addu	$gp,$t9,$at
    # Line 309
    lw	$t9,5016($a0)
    # Line 300
    sd	$ra,8($sp)
    # Line 309
    jalr	$t9
    addiu	$a1,$a1,16
    # Line 315
    ld	$ra,8($sp)
    # Line 309
    bnez	$v0,.L0d9d19c0
    move	$a2,$v0
    # Line 310
    move	$v0,$zero
    # Line 315
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d19c0:
    # Line 314
    sw	$zero,12($v0)
    # Line 311
    li	$a0,1
    sw	$a0,0($v0)
    # Line 313
    la	$v1,__glNopExecuteDlist
    sw	$v1,8($v0)
    # Line 315
    ld	$ra,8($sp)
    # Line 312
    la	$v0,__glNopFreeDlist
    # Line 315
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 312
    sw	$v0,4($a2)
    # Line 315
    jr	$ra
    move	$v0,$a2
.end __glNopAllocDlist

# Function: __glNopDlistCompiler
# Declared: Line 320 (Source lines: 321-339)
# Address: 0x0d9d19f0 - 0x0d9d1a6c (Size: 124 bytes, Frame: 48)
.globl __glNopDlistCompiler
.ent __glNopDlistCompiler
__glNopDlistCompiler:
    # Line 321
    lui	$at,0xc
    addiu	$sp,$sp,-48
    addiu	$at,$at,-2584
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 327
    # lw $t9, -28460($gp) # &__glNopAllocDlist
    # Line 321
    sd	$ra,16($sp)
    sd	$a1,0($sp)
    # Line 327
    move	$a1,$zero
    bal __glNopAllocDlist
    # Line 321
    sd	$a0,8($sp)
    # Line 327
    beqz	$v0,.L0d9d1a34
    # Line 333
    ld	$a0,8($sp)
.L0d9d1a24:
    ld	$ra,16($sp)
    # Line 339
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d1a34:
    # Line 333
    lw	$t9,12696($a0)
    sd	$v0,32($sp)
    jal	__glNopAllocDlist
    lw	$a0,5012($a0)
    # Line 337
    ld	$a1,8($sp)
    # Line 334
    ld	$a2,0($sp)
    # Line 337
    # lw $t9, -28616($gp) # &__glSetError
    # Line 335
    sw	$zero,16($a2)
    # Line 334
    sw	$zero,12($a2)
    # Line 337
    li	$a0,1285
    bal __glSetError
    # Line 336
    sw	$zero,4988($a1)
    b	.L0d9d1a24
    ld	$v0,32($sp)
.end __glNopDlistCompiler

