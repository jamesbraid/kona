# Source: ../soft/so_vertarray.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_vertarray.c
# Total Functions: 35

.text

# Function: __glInitVertexArrayState
# Declared: Line 31 (Source lines: 32-62)
# Address: 0x0da32cf0 - 0x0da32d78 (Size: 136 bytes, Frame: 0)
.globl __glInitVertexArrayState
.ent __glInitVertexArrayState
__glInitVertexArrayState:
    # Line 58
    li	$a4,1
    sw	$a4,5420($a0)
    # Line 57
    sw	$zero,5412($a0)
    # Line 56
    sw	$zero,5408($a0)
    # Line 55
    sw	$zero,5404($a0)
    # Line 38
    li	$a3,5126
    # Line 53
    sw	$a3,5380($a0)
    # Line 51
    sw	$a3,5356($a0)
    # Line 48
    sw	$a3,5200($a0)
    # Line 37
    li	$a2,4
    # Line 47
    sw	$a2,5196($a0)
    # Line 45
    sw	$a3,5172($a0)
    # Line 43
    sw	$a3,5148($a0)
    # Line 42
    sw	$a2,5144($a0)
    # Line 40
    sw	$a3,5120($a0)
    # Line 38
    sw	$a3,5096($a0)
    # Line 37
    sw	$a2,5092($a0)
    # Line 60
    lui	$a1,0x7fff
    # Line 32
    lui	$v1,0x6
    # Line 60
    ori	$a1,$a1,0xffff
    # Line 61
    sw	$a1,5428($a0)
    # Line 32
    addiu	$v1,$v1,-7448
    # Line 60
    sw	$a1,5424($a0)
    # Line 32
    addu	$at,$t9,$v1
    la	$v0,__glNop
    # Line 52
    sw	$v0,5396($a0)
    # Line 50
    sw	$v0,5372($a0)
    # Line 49
    sw	$v0,5236($a0)
    # Line 46
    sw	$v0,5216($a0)
    # Line 44
    sw	$v0,5188($a0)
    # Line 41
    sw	$v0,5164($a0)
    # Line 39
    sw	$v0,5136($a0)
    # Line 62
    jr	$ra
    # Line 36
    sw	$v0,5112($a0)
.end __glInitVertexArrayState

# Function: __glim_ArrayElementEXT
# Declared: Line 64 (Source lines: 65-112)
# Address: 0x0da32d80 - 0x0da32fe4 (Size: 612 bytes, Frame: 192)
.globl __glim_ArrayElementEXT
.ent __glim_ArrayElementEXT
__glim_ArrayElementEXT:
    # Line 65
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$gp,40($sp)
    sd	$s1,24($sp)
    sd	$s0,16($sp)
    # Line 66
    lw	$s0,4112($zero)
    # Line 65
    sd	$s2,32($sp)
    # Line 67
    lw	$s2,5416($s0)
    # Line 65
    sd	$s3,0($sp)
    lui	$v0,0x6
    # Line 68
    lw	$s3,5408($s0)
    # Line 69
    andi	$at,$s2,0x1
    # Line 65
    move	$s1,$a0
    addiu	$v0,$v0,-7592
    # Line 69
    lw	$v1,5412($s0)
    # Line 65
    addu	$gp,$t9,$v0
    # Line 69
    beqz	$at,.L0da32de4
    sd	$v1,8($sp)
    # Line 72
    lw	$a2,5124($s0)
    mult	$a2,$a0
    lw	$t9,5136($s0)
    lw	$a0,5116($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da32de4:
    andi	$a3,$s2,0x2
    beqz	$a3,.L0da32e0c
    nop
    # Line 75
    lw	$a2,5152($s0)
    mult	$a2,$s1
    lw	$t9,5164($s0)
    lw	$a0,5140($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da32e0c:
    lw	$a3,3612($s0)
    li	$a4,1
    beq	$a3,$a4,.L0da32fb4
    # Line 80
    andi	$a5,$s3,0x1
    beqz	$a5,.L0da32e48
    # Line 85
    andi	$a4,$s3,0x2
    lw	$a3,5252($s0)
    mult	$a3,$s1
    lw	$t9,5264($s0)
    lw	$a1,5240($s0)
    li	$a0,0x83c7
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s3,0x2
.L0da32e48:
    beqz	$a4,.L0da32e74
    # Line 88
    andi	$a4,$s3,0x4
    lw	$a3,5280($s0)
    mult	$a3,$s1
    lw	$t9,5292($s0)
    lw	$a1,5268($s0)
    li	$a0,0x83c8
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s3,0x4
.L0da32e74:
    beqz	$a4,.L0da32ea0
    # Line 91
    andi	$a4,$s3,0x8
    lw	$a3,5308($s0)
    mult	$a3,$s1
    lw	$t9,5320($s0)
    lw	$a1,5296($s0)
    li	$a0,0x83c9
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s3,0x8
.L0da32ea0:
    beqz	$a4,.L0da32ecc
    # Line 94
    andi	$a4,$s2,0x8
    lw	$a3,5336($s0)
    mult	$a3,$s1
    lw	$t9,5348($s0)
    lw	$a1,5324($s0)
    li	$a0,0x83ca
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s2,0x8
.L0da32ecc:
    beqz	$a4,.L0da32ef4
    # Line 98
    andi	$a3,$s2,0x10
    lw	$a2,5176($s0)
    mult	$a2,$s1
    lw	$t9,5188($s0)
    lw	$a0,5168($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    andi	$a3,$s2,0x10
.L0da32ef4:
    beqz	$a3,.L0da32f18
    ld	$s3,0($sp)
    # Line 101
    lw	$a2,5224($s0)
    mult	$a2,$s1
    lw	$t9,5236($s0)
    lw	$a0,5220($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da32f18:
    ld	$a3,8($sp)
    andi	$a3,$a3,0x1
    beqz	$a3,.L0da32f48
    # Line 104
    ld	$a3,8($sp)
    lw	$a2,5360($s0)
    mult	$a2,$s1
    lw	$t9,5372($s0)
    lw	$a0,5352($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    ld	$a3,8($sp)
.L0da32f48:
    andi	$a3,$a3,0x2
    beqz	$a3,.L0da32f74
    # Line 107
    andi	$a3,$s2,0x20
    lw	$a2,5384($s0)
    mult	$a2,$s1
    lw	$t9,5396($s0)
    lw	$a0,5376($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    andi	$a3,$s2,0x20
.L0da32f74:
    beqz	$a3,.L0da32f98
    nop
    # Line 110
    lw	$a2,5100($s0)
    mult	$a2,$s1
    lw	$t9,5112($s0)
    lw	$a0,5088($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da32f98:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 112
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da32fb4:
    # Line 75
    andi	$a3,$s2,0x4
    beqz	$a3,.L0da32ecc
    # Line 94
    andi	$a4,$s2,0x8
    # Line 80
    lw	$a2,5204($s0)
    mult	$a2,$s1
    lw	$t9,5216($s0)
    lw	$a0,5192($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    b	.L0da32ecc
    # Line 94
    andi	$a4,$s2,0x8
.end __glim_ArrayElementEXT

# Function: __glim_DrawArraysEXT
# Declared: Line 114 (Source lines: 117-142)
# Address: 0x0da32ff0 - 0x0da33138 (Size: 328 bytes, Frame: 48)
.globl __glim_DrawArraysEXT
.ent __glim_DrawArraysEXT
__glim_DrawArraysEXT:
    # Line 117
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 119
    lw	$s1,4112($zero)
    # Line 117
    sd	$s3,0($sp)
    # Line 124
    sltiu	$v1,$a0,10
    # Line 117
    move	$s3,$a2
    # Line 119
    lw	$at,4120($zero)
    # Line 117
    sd	$s0,8($sp)
    # Line 119
    li	$a4,1
    # Line 117
    lui	$v0,0x6
    move	$s0,$a1
    sd	$ra,40($sp)
    addiu	$v0,$v0,-8216
    sd	$gp,24($sp)
    # Line 119
    beq	$at,$a4,.L0da33124
    # Line 117
    addu	$gp,$t9,$v0
    # Line 122
    bltz	$a1,.L0da330ec
    # Line 123
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 122
    bltz	$a2,.L0da330ec
    # Line 123
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 124
    beqz	$v1,.L0da330d8
    # Line 128
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 132
    lw	$a1,3612($s1)
    bne	$a1,$a4,.L0da33060
    nop
    lw	$a2,5412($s1)
    beqz	$a2,.L0da330fc
    nop
.L0da33060:
    # Line 137
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jal	__glSetError
    sd	$s2,32($sp)
    # Line 138
    addu	$s2,$s0,$s3
    slt	$ra,$s0,$s2
    beqz	$ra,.L0da330a8
    nop
    nop
    nop
    nop
    # Line 139
    lw	$t9,6132($s1)
.L0da33090:
    lw	$t9,792($t9)
    jalr	$t9
    move	$a0,$s0
    # Line 138
    addiu	$s0,$s0,1
    bnel	$s2,$s0,.L0da33090
    # Line 139
    lw	$t9,6132($s1)
.L0da330a8:
    # Line 140
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    jalr	$t9
    nop
.L0da330b8:
    ld	$s3,0($sp)
    ld	$s2,32($sp)
    ld	$ra,40($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 142
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da330d8:
    # Line 128
    jalr	$t9
    li	$a0,1280
    b	.L0da330b8
    sd	$s2,32($sp)
    # Line 123
    # lw $t9, -28616($gp) # &__glSetError
.L0da330ec:
    jal	__glSetError
    li	$a0,1281
    b	.L0da330b8
    sd	$s2,32($sp)
.L0da330fc:
    # Line 134
    lw	$ra,5416($s1)
    lw	$t9,12716($s1)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s3
    b	.L0da330b8
    sd	$s2,32($sp)
.L0da33124:
    # Line 119
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da330b8
    sd	$s2,32($sp)
.end __glim_DrawArraysEXT

# Function: glMultiTexCoord1svSGIS
# Declared: Line 281 (Source lines: 281-283)
# Address: 0x0da33140 - 0x0da33174 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1svSGIS
glMultiTexCoord1svSGIS:
    # Line 281
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8552
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 282
    # lw $t9, -18028($gp) # &glTexCoord1sv
    # Line 281
    sd	$ra,0($sp)
    # Line 282
    jal	glTexCoord1sv
    # Line 281
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 283
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1svSGIS

# Function: glMultiTexCoord2svSGIS
# Declared: Line 285 (Source lines: 285-287)
# Address: 0x0da33180 - 0x0da331b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2svSGIS
glMultiTexCoord2svSGIS:
    # Line 285
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8616
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 286
    # lw $t9, -17996($gp) # &glTexCoord2sv
    # Line 285
    sd	$ra,0($sp)
    # Line 286
    jal	glTexCoord2sv
    # Line 285
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 287
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2svSGIS

# Function: glMultiTexCoord3svSGIS
# Declared: Line 289 (Source lines: 289-291)
# Address: 0x0da331c0 - 0x0da331f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3svSGIS
glMultiTexCoord3svSGIS:
    # Line 289
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8680
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 290
    # lw $t9, -17964($gp) # &glTexCoord3sv
    # Line 289
    sd	$ra,0($sp)
    # Line 290
    jal	glTexCoord3sv
    # Line 289
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 291
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3svSGIS

# Function: glMultiTexCoord4svSGIS
# Declared: Line 293 (Source lines: 293-295)
# Address: 0x0da33200 - 0x0da33234 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4svSGIS
glMultiTexCoord4svSGIS:
    # Line 293
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8744
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 294
    # lw $t9, -17932($gp) # &glTexCoord4sv
    # Line 293
    sd	$ra,0($sp)
    # Line 294
    jal	glTexCoord4sv
    # Line 293
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 295
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4svSGIS

# Function: glMultiTexCoord1ivSGIS
# Declared: Line 297 (Source lines: 297-299)
# Address: 0x0da33240 - 0x0da33274 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1ivSGIS
glMultiTexCoord1ivSGIS:
    # Line 297
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8808
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 298
    # lw $t9, -18036($gp) # &glTexCoord1iv
    # Line 297
    sd	$ra,0($sp)
    # Line 298
    jal	glTexCoord1iv
    # Line 297
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 299
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1ivSGIS

# Function: glMultiTexCoord2ivSGIS
# Declared: Line 301 (Source lines: 301-303)
# Address: 0x0da33280 - 0x0da332b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2ivSGIS
glMultiTexCoord2ivSGIS:
    # Line 301
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8872
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 302
    # lw $t9, -18004($gp) # &glTexCoord2iv
    # Line 301
    sd	$ra,0($sp)
    # Line 302
    jal	glTexCoord2iv
    # Line 301
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 303
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2ivSGIS

# Function: glMultiTexCoord3ivSGIS
# Declared: Line 305 (Source lines: 305-307)
# Address: 0x0da332c0 - 0x0da332f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3ivSGIS
glMultiTexCoord3ivSGIS:
    # Line 305
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8936
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 306
    # lw $t9, -17972($gp) # &glTexCoord3iv
    # Line 305
    sd	$ra,0($sp)
    # Line 306
    jal	glTexCoord3iv
    # Line 305
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 307
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3ivSGIS

# Function: glMultiTexCoord4ivSGIS
# Declared: Line 309 (Source lines: 309-311)
# Address: 0x0da33300 - 0x0da33334 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4ivSGIS
glMultiTexCoord4ivSGIS:
    # Line 309
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9000
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 310
    # lw $t9, -17940($gp) # &glTexCoord4iv
    # Line 309
    sd	$ra,0($sp)
    # Line 310
    jal	glTexCoord4iv
    # Line 309
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 311
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4ivSGIS

# Function: glMultiTexCoord1fvSGIS
# Declared: Line 313 (Source lines: 313-315)
# Address: 0x0da33340 - 0x0da33374 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1fvSGIS
glMultiTexCoord1fvSGIS:
    # Line 313
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9064
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 314
    # lw $t9, -18044($gp) # &glTexCoord1fv
    # Line 313
    sd	$ra,0($sp)
    # Line 314
    jal	glTexCoord1fv
    # Line 313
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 315
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1fvSGIS

# Function: glMultiTexCoord2fvSGIS
# Declared: Line 317 (Source lines: 317-319)
# Address: 0x0da33380 - 0x0da333b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2fvSGIS
glMultiTexCoord2fvSGIS:
    # Line 317
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9128
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 318
    # lw $t9, -18012($gp) # &glTexCoord2fv
    # Line 317
    sd	$ra,0($sp)
    # Line 318
    jal	glTexCoord2fv
    # Line 317
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 319
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2fvSGIS

# Function: glMultiTexCoord3fvSGIS
# Declared: Line 321 (Source lines: 321-323)
# Address: 0x0da333c0 - 0x0da333f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3fvSGIS
glMultiTexCoord3fvSGIS:
    # Line 321
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9192
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 322
    # lw $t9, -17980($gp) # &glTexCoord3fv
    # Line 321
    sd	$ra,0($sp)
    # Line 322
    jal	glTexCoord3fv
    # Line 321
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 323
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3fvSGIS

# Function: glMultiTexCoord4fvSGIS
# Declared: Line 325 (Source lines: 325-327)
# Address: 0x0da33400 - 0x0da33434 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4fvSGIS
glMultiTexCoord4fvSGIS:
    # Line 325
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9256
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 326
    # lw $t9, -17948($gp) # &glTexCoord4fv
    # Line 325
    sd	$ra,0($sp)
    # Line 326
    jal	glTexCoord4fv
    # Line 325
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 327
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4fvSGIS

# Function: glMultiTexCoord1dvSGIS
# Declared: Line 329 (Source lines: 329-331)
# Address: 0x0da33440 - 0x0da33474 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1dvSGIS
glMultiTexCoord1dvSGIS:
    # Line 329
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9320
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 330
    # lw $t9, -18052($gp) # &glTexCoord1dv
    # Line 329
    sd	$ra,0($sp)
    # Line 330
    jal	glTexCoord1dv
    # Line 329
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 331
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1dvSGIS

# Function: glMultiTexCoord2dvSGIS
# Declared: Line 333 (Source lines: 333-335)
# Address: 0x0da33480 - 0x0da334b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2dvSGIS
glMultiTexCoord2dvSGIS:
    # Line 333
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9384
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 334
    # lw $t9, -18020($gp) # &glTexCoord2dv
    # Line 333
    sd	$ra,0($sp)
    # Line 334
    jal	glTexCoord2dv
    # Line 333
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 335
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2dvSGIS

# Function: glMultiTexCoord3dvSGIS
# Declared: Line 337 (Source lines: 337-339)
# Address: 0x0da334c0 - 0x0da334f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3dvSGIS
glMultiTexCoord3dvSGIS:
    # Line 337
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9448
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 338
    # lw $t9, -17988($gp) # &glTexCoord3dv
    # Line 337
    sd	$ra,0($sp)
    # Line 338
    jal	glTexCoord3dv
    # Line 337
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 339
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3dvSGIS

# Function: glMultiTexCoord4dvSGIS
# Declared: Line 341 (Source lines: 341-343)
# Address: 0x0da33500 - 0x0da33534 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4dvSGIS
glMultiTexCoord4dvSGIS:
    # Line 341
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,-9512
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 342
    # lw $t9, -17956($gp) # &glTexCoord4dv
    # Line 341
    sd	$ra,0($sp)
    # Line 342
    jal	glTexCoord4dv
    # Line 341
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 343
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4dvSGIS

# Function: __glim_VertexPointerEXT
# Declared: Line 431 (Source lines: 436-469)
# Address: 0x0da33540 - 0x0da33698 (Size: 344 bytes, Frame: 16)
.globl __glim_VertexPointerEXT
.ent __glim_VertexPointerEXT
__glim_VertexPointerEXT:
    # Line 437
    lw	$a6,4112($zero)
    # Line 436
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-9576
    sd	$gp,0($sp)
    # Line 439
    bltz	$a2,.L0da33624
    # Line 436
    addu	$gp,$t9,$at
    # Line 439
    bltz	$a3,.L0da33624
    slti	$v0,$a0,2
    bnez	$v0,.L0da33624
    slti	$v1,$a0,5
    beqz	$v1,.L0da33624
    # Line 444
    sltiu	$a5,$a1,5120
    bnez	$a5,.L0da33644
    # Line 446
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 444
    sltiu	$a7,$a1,5131
    beqz	$a7,.L0da33640
    # Line 450
    lw	$t3,-16488($gp)
    sll	$t0,$a1,0x2
    sll	$t2,$a0,0x2
    addu	$t0,$t0,$a1
    lui	$t1,0xfffe
    sll	$t8,$t0,0x2
    addu	$t2,$t1,$t2
    addu	$t3,$t3,$t8
    # Line 461
    la	$a7,.rodata
    # Line 450
    addu	$t2,$t2,$t3
    lw	$t2,28672($t2)
    # Line 461
    addiu	$a7,$a7,25288
    # Line 465
    li	$t3,-256
    # Line 450
    beqz	$t2,.L0da3367c
    sw	$t2,5112($a6)
    ld	$ra,8($sp)
    # Line 460
    sw	$a1,5096($a6)
    # Line 459
    sw	$a0,5092($a6)
    # Line 460
    beqz	$a2,.L0da3365c
    # Line 458
    sw	$a4,5088($a6)
    # Line 461
    move	$a4,$a2
.L0da335dc:
    # Line 464
    sw	$a3,5108($a6)
    # Line 463
    sw	$a2,5104($a6)
    # Line 465
    sll	$t1,$a1,0x2
    lw	$t2,5400($a6)
    addu	$t1,$a7,$t1
    lw	$t1,-18912($t1)
    # Line 461
    sw	$a4,5100($a6)
    # Line 465
    sll	$t0,$a0,0x4
    and	$t2,$t2,$t3
    # Line 469
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 465
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    # Line 469
    jr	$ra
    # Line 465
    sw	$t0,5400($a6)
.L0da33618:
    # Line 469
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da33624:
    # Line 441
    # lw $t9, -28616($gp) # &__glSetError
    # Line 440
    la	$t2,__glNop
    # Line 441
    li	$a0,1281
    jal	__glSetError
    # Line 440
    sw	$t2,5112($a6)
    b	.L0da33618
    ld	$ra,8($sp)
.L0da33640:
    # Line 446
    # lw $t9, -28616($gp) # &__glSetError
.L0da33644:
    # Line 445
    la	$t3,__glNop
    # Line 446
    li	$a0,1280
    jal	__glSetError
    # Line 445
    sw	$t3,5112($a6)
    b	.L0da33618
    ld	$ra,8($sp)
.L0da3365c:
    # Line 461
    la	$a7,.rodata
    addu	$a4,$a0,$t0
    sll	$a4,$a4,0x2
    addiu	$a7,$a7,25288
    addu	$a4,$a7,$a4
    addu	$a4,$t1,$a4
    b	.L0da335dc
    lw	$a4,28672($a4)
.L0da3367c:
    # Line 453
    # lw $t9, -28616($gp) # &__glSetError
    # Line 452
    la	$t0,__glNop
    # Line 453
    li	$a0,1280
    jal	__glSetError
    # Line 452
    sw	$t0,5112($a6)
    b	.L0da33618
    ld	$ra,8($sp)
.end __glim_VertexPointerEXT

# Function: __glim_NormalPointerEXT
# Declared: Line 471 (Source lines: 475-507)
# Address: 0x0da336a0 - 0x0da337cc (Size: 300 bytes, Frame: 16)
.globl __glim_NormalPointerEXT
.ent __glim_NormalPointerEXT
__glim_NormalPointerEXT:
    # Line 476
    lw	$a5,4112($zero)
    # Line 475
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-9928
    sd	$gp,0($sp)
    # Line 478
    bltz	$a1,.L0da33794
    # Line 475
    addu	$gp,$t9,$at
    # Line 478
    bltz	$a2,.L0da33794
    # Line 489
    lw	$a4,-16484($gp)
    # Line 483
    sltiu	$v0,$a0,5120
    bnez	$v0,.L0da33760
    sltiu	$v1,$a0,5131
    beqz	$v1,.L0da33760
    # Line 489
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$t0,0xfffe
    addu	$a4,$a4,$a7
    addu	$a4,$t0,$a4
    lw	$a4,28684($a4)
    beqz	$a4,.L0da337b0
    sw	$a4,5136($a5)
    # Line 503
    li	$t1,-3841
    ld	$ra,8($sp)
    # Line 498
    sw	$a0,5120($a5)
    beqz	$a1,.L0da3377c
    # Line 497
    sw	$a3,5116($a5)
    # Line 499
    la	$a6,.rodata
    move	$a3,$a1
    addiu	$a6,$a6,25288
.L0da3371c:
    # Line 502
    sw	$a2,5132($a5)
    # Line 501
    sw	$a1,5128($a5)
    # Line 503
    sll	$a7,$a0,0x2
    lw	$t0,5400($a5)
    addu	$a7,$a6,$a7
    lw	$a7,-18912($a7)
    # Line 507
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 499
    sw	$a3,5124($a5)
    # Line 503
    and	$t0,$t0,$t1
    sll	$a7,$a7,0x8
    or	$a7,$a7,$t0
    # Line 507
    jr	$ra
    # Line 503
    sw	$a7,5400($a5)
.L0da33754:
    # Line 507
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da33760:
    # Line 485
    # lw $t9, -28616($gp) # &__glSetError
    # Line 484
    la	$t0,__glNop
    # Line 485
    li	$a0,1280
    jal	__glSetError
    # Line 484
    sw	$t0,5136($a5)
    b	.L0da33754
    ld	$ra,8($sp)
.L0da3377c:
    # Line 499
    la	$a6,.rodata
    addiu	$a6,$a6,25288
    addu	$a3,$a7,$a6
    addu	$a3,$t0,$a3
    b	.L0da3371c
    lw	$a3,28684($a3)
.L0da33794:
    # Line 480
    # lw $t9, -28616($gp) # &__glSetError
    # Line 479
    la	$a7,__glNop
    # Line 480
    li	$a0,1281
    jal	__glSetError
    # Line 479
    sw	$a7,5136($a5)
    b	.L0da33754
    ld	$ra,8($sp)
.L0da337b0:
    # Line 492
    # lw $t9, -28616($gp) # &__glSetError
    # Line 491
    la	$t0,__glNop
    # Line 492
    li	$a0,1280
    jal	__glSetError
    # Line 491
    sw	$t0,5136($a5)
    b	.L0da33754
    ld	$ra,8($sp)
.end __glim_NormalPointerEXT

# Function: __glim_ColorPointerEXT
# Declared: Line 509 (Source lines: 514-547)
# Address: 0x0da337d0 - 0x0da33940 (Size: 368 bytes, Frame: 16)
.globl __glim_ColorPointerEXT
.ent __glim_ColorPointerEXT
__glim_ColorPointerEXT:
    # Line 515
    lw	$a6,4112($zero)
    # Line 514
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-10232
    sd	$gp,0($sp)
    # Line 517
    bltz	$a2,.L0da338cc
    # Line 514
    addu	$gp,$t9,$at
    # Line 517
    bltz	$a3,.L0da338d0
    # Line 519
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 517
    slti	$v0,$a0,3
    bnez	$v0,.L0da338d0
    # Line 519
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 517
    slti	$v1,$a0,5
    beqz	$v1,.L0da338d0
    # Line 519
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 522
    sltiu	$a5,$a1,5120
    bnez	$a5,.L0da338ec
    # Line 524
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 522
    sltiu	$a7,$a1,5131
    beqz	$a7,.L0da338e8
    # Line 528
    lw	$t3,-16480($gp)
    sll	$t0,$a1,0x2
    sll	$t2,$a0,0x2
    addu	$t0,$t0,$a1
    lui	$t1,0xfffe
    sll	$t8,$t0,0x2
    addu	$t2,$t1,$t2
    addu	$t3,$t3,$t8
    # Line 539
    la	$a7,.rodata
    # Line 528
    addu	$t2,$t2,$t3
    lw	$t2,28672($t2)
    # Line 539
    addiu	$a7,$a7,25288
    # Line 543
    lui	$t3,0xf
    ori	$t3,$t3,0xf000
    # Line 528
    beqz	$t2,.L0da33924
    sw	$t2,5164($a6)
    ld	$ra,8($sp)
    # Line 538
    sw	$a1,5148($a6)
    # Line 537
    sw	$a0,5144($a6)
    # Line 538
    beqz	$a2,.L0da33904
    # Line 536
    sw	$a4,5140($a6)
    # Line 539
    move	$a4,$a2
.L0da3387c:
    # Line 542
    sw	$a3,5160($a6)
    # Line 543
    sll	$t1,$a1,0x2
    lw	$t2,5400($a6)
    addu	$t1,$a7,$t1
    lw	$t1,-18912($t1)
    # Line 541
    sw	$a2,5156($a6)
    # Line 543
    sll	$t0,$a0,0x10
    nor	$t3,$t3,$zero
    # Line 539
    sw	$a4,5152($a6)
    # Line 543
    and	$t2,$t2,$t3
    sll	$t1,$t1,0xc
    # Line 547
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 543
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    # Line 547
    jr	$ra
    # Line 543
    sw	$t0,5400($a6)
.L0da338c0:
    # Line 547
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da338cc:
    # Line 519
    # lw $t9, -28616($gp) # &__glSetError
.L0da338d0:
    # Line 518
    la	$t2,__glNop
    # Line 519
    li	$a0,1281
    jal	__glSetError
    # Line 518
    sw	$t2,5164($a6)
    b	.L0da338c0
    ld	$ra,8($sp)
.L0da338e8:
    # Line 524
    # lw $t9, -28616($gp) # &__glSetError
.L0da338ec:
    # Line 523
    la	$t3,__glNop
    # Line 524
    li	$a0,1280
    jal	__glSetError
    # Line 523
    sw	$t3,5164($a6)
    b	.L0da338c0
    ld	$ra,8($sp)
.L0da33904:
    # Line 539
    la	$a7,.rodata
    addu	$a4,$a0,$t0
    sll	$a4,$a4,0x2
    addiu	$a7,$a7,25288
    addu	$a4,$a7,$a4
    addu	$a4,$t1,$a4
    b	.L0da3387c
    lw	$a4,28672($a4)
.L0da33924:
    # Line 531
    # lw $t9, -28616($gp) # &__glSetError
    # Line 530
    la	$t0,__glNop
    # Line 531
    li	$a0,1280
    jal	__glSetError
    # Line 530
    sw	$t0,5164($a6)
    b	.L0da338c0
    ld	$ra,8($sp)
.end __glim_ColorPointerEXT

# Function: __glim_TexCoordPointerEXT
# Declared: Line 549 (Source lines: 554-600)
# Address: 0x0da33940 - 0x0da33b34 (Size: 500 bytes, Frame: 16)
.globl __glim_TexCoordPointerEXT
.ent __glim_TexCoordPointerEXT
__glim_TexCoordPointerEXT:
    # Line 557
    lw	$a6,4112($zero)
    # Line 554
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-10600
    sd	$gp,0($sp)
    # Line 559
    bltz	$a2,.L0da33abc
    # Line 554
    addu	$gp,$t9,$at
    # Line 559
    bltz	$a3,.L0da33ac0
    # Line 561
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 559
    blez	$a0,.L0da33ac0
    # Line 561
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 559
    slti	$v0,$a0,5
    beqz	$v0,.L0da33ac0
    # Line 561
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 564
    sltiu	$v1,$a1,5120
    bnez	$v1,.L0da33aa4
    # Line 566
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 564
    sltiu	$a5,$a1,5131
    beqz	$a5,.L0da33aa4
    # Line 566
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 570
    lw	$t0,-16472($gp)
    sll	$t9,$a1,0x2
    sll	$t8,$a0,0x2
    addu	$t9,$t9,$a1
    lui	$ra,0xfffe
    sll	$t3,$t9,0x2
    addu	$a7,$ra,$t8
    addu	$t0,$t0,$t3
    addu	$a7,$a7,$t0
    lw	$a7,28672($a7)
    beqz	$a7,.L0da33af8
    nop
    # Line 576
    lw	$t1,28268($a6)
    lui	$t2,0xffff
    ori	$t2,$t2,0x7c39
    addu	$t1,$t1,$t2
    # Line 577
    sll	$t0,$t1,0x3
    subu	$t0,$t0,$t1
    sll	$t0,$t0,0x2
    addu	$t0,$a6,$t0
    # Line 579
    sw	$a1,5248($t0)
    # Line 578
    sw	$a0,5244($t0)
    # Line 580
    move	$t2,$a2
    # Line 579
    beqz	$a2,.L0da33ad8
    # Line 577
    sw	$a4,5240($t0)
.L0da339f8:
    # Line 584
    sw	$a7,5264($t0)
    # Line 583
    sw	$a3,5260($t0)
    # Line 582
    sw	$a2,5256($t0)
    # Line 584
    beqz	$t1,.L0da33a1c
    # Line 580
    sw	$t2,5252($t0)
    ld	$ra,8($sp)
.L0da33a10:
    # Line 600
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da33a1c:
    # Line 589
    sw	$a1,5200($a6)
    # Line 594
    lui	$at,0xfffe
    # Line 595
    lui	$v0,0x7f0
    la	$v1,.rodata
    # Line 588
    sw	$a0,5196($a6)
    # Line 595
    nor	$v0,$v0,$zero
    # Line 594
    addu	$at,$at,$t8
    # Line 587
    sw	$a4,5192($a6)
    # Line 589
    beqz	$a2,.L0da33b0c
    # Line 595
    addiu	$v1,$v1,25288
    # Line 590
    move	$a4,$a2
.L0da33a48:
    sw	$a4,5204($a6)
    # Line 592
    sw	$a2,5208($a6)
    # Line 593
    sw	$a3,5212($a6)
    # Line 595
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    # Line 594
    lw	$a1,-16476($gp)
    # Line 600
    ld	$gp,0($sp)
    # Line 595
    lw	$t9,5400($a6)
    lw	$v1,-18912($v1)
    # Line 594
    addu	$a1,$a1,$t3
    ld	$ra,8($sp)
    # Line 595
    sll	$t3,$a0,0x18
    # Line 594
    addu	$at,$at,$a1
    # Line 595
    and	$t9,$t9,$v0
    sll	$t8,$v1,0x14
    # Line 594
    lw	$at,28672($at)
    # Line 600
    addiu	$sp,$sp,16
    # Line 595
    or	$t8,$t8,$t9
    # Line 594
    sw	$at,5216($a6)
    # Line 595
    or	$t3,$t3,$t8
    # Line 600
    jr	$ra
    # Line 595
    sw	$t3,5400($a6)
    # Line 566
    # lw $t9, -28616($gp) # &__glSetError
.L0da33aa4:
    # Line 565
    la	$a1,__glNop
    # Line 566
    li	$a0,1280
    jal	__glSetError
    # Line 565
    sw	$a1,5216($a6)
    b	.L0da33a10
    ld	$ra,8($sp)
.L0da33abc:
    # Line 561
    # lw $t9, -28616($gp) # &__glSetError
.L0da33ac0:
    # Line 560
    la	$a2,__glNop
    # Line 561
    li	$a0,1281
    jal	__glSetError
    # Line 560
    sw	$a2,5216($a6)
    b	.L0da33a10
    ld	$ra,8($sp)
.L0da33ad8:
    # Line 580
    la	$t2,.rodata
    addu	$at,$a0,$t9
    sll	$at,$at,0x2
    addiu	$t2,$t2,25288
    addu	$t2,$t2,$at
    addu	$t2,$ra,$t2
    b	.L0da339f8
    lw	$t2,28672($t2)
.L0da33af8:
    # Line 572
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0da33a10
    ld	$ra,8($sp)
.L0da33b0c:
    # Line 590
    sll	$a5,$a1,0x2
    la	$a4,.rodata
    addu	$a5,$a5,$a1
    addu	$a5,$a0,$a5
    addiu	$a4,$a4,25288
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    addu	$a4,$ra,$a4
    b	.L0da33a48
    lw	$a4,28672($a4)
.end __glim_TexCoordPointerEXT

# Function: __glim_EdgeFlagPointerEXT
# Declared: Line 603 (Source lines: 606-623)
# Address: 0x0da33b40 - 0x0da33bd0 (Size: 144 bytes, Frame: 16)
.globl __glim_EdgeFlagPointerEXT
.ent __glim_EdgeFlagPointerEXT
__glim_EdgeFlagPointerEXT:
    # Line 607
    lw	$a4,4112($zero)
    # Line 606
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-11112
    sd	$gp,0($sp)
    # Line 609
    bltz	$a0,.L0da33bb4
    # Line 606
    addu	$gp,$t9,$at
    # Line 609
    bltz	$a1,.L0da33bb8
    # Line 611
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 617
    sw	$a0,5228($a4)
    # Line 615
    sw	$a2,5220($a4)
    # Line 622
    la	$a2,glEdgeFlagv
    # Line 623
    ld	$gp,0($sp)
    # Line 618
    sw	$a1,5232($a4)
    # Line 616
    li	$v0,1
    movn	$v0,$a0,$a0
    sw	$v0,5224($a4)
    move	$ra,$ra
    # Line 619
    lw	$v1,5400($a4)
    # Line 623
    addiu	$sp,$sp,16
    # Line 619
    lui	$a1,0x800
    # Line 622
    sw	$a2,5236($a4)
    # Line 619
    or	$v1,$v1,$a1
    # Line 623
    jr	$ra
    # Line 619
    sw	$v1,5400($a4)
.L0da33ba8:
    # Line 623
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da33bb4:
    # Line 611
    # lw $t9, -28616($gp) # &__glSetError
.L0da33bb8:
    # Line 610
    la	$a3,__glNop
    # Line 611
    li	$a0,1281
    jal	__glSetError
    # Line 610
    sw	$a3,5236($a4)
    b	.L0da33ba8
    ld	$ra,8($sp)
.end __glim_EdgeFlagPointerEXT

# Function: __glim_IndexPointerEXT
# Declared: Line 625 (Source lines: 629-660)
# Address: 0x0da33bd0 - 0x0da33d08 (Size: 312 bytes, Frame: 16)
.globl __glim_IndexPointerEXT
.ent __glim_IndexPointerEXT
__glim_IndexPointerEXT:
    # Line 630
    lw	$a5,4112($zero)
    # Line 629
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$ra,8($sp)
    addiu	$at,$at,-11256
    sd	$gp,0($sp)
    # Line 632
    bltz	$a1,.L0da33cd0
    # Line 629
    addu	$gp,$t9,$at
    # Line 632
    bltz	$a2,.L0da33cd0
    # Line 643
    lw	$a4,-16468($gp)
    # Line 637
    sltiu	$v0,$a0,5120
    bnez	$v0,.L0da33ca0
    # Line 639
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 637
    sltiu	$v1,$a0,5131
    beqz	$v1,.L0da33ca0
    # Line 639
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 643
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$t0,0xfffe
    addu	$a4,$a4,$a7
    addu	$a4,$t0,$a4
    lw	$a4,28676($a4)
    beqz	$a4,.L0da33cec
    sw	$a4,5188($a5)
    # Line 657
    lui	$t1,0xfff
    ld	$ra,8($sp)
    # Line 652
    sw	$a0,5172($a5)
    # Line 651
    sw	$a3,5168($a5)
    # Line 652
    beqz	$a1,.L0da33cb8
    # Line 657
    ori	$t1,$t1,0xffff
    # Line 653
    la	$a6,.rodata
    move	$a3,$a1
    addiu	$a6,$a6,25288
.L0da33c58:
    # Line 656
    sw	$a2,5184($a5)
    # Line 655
    sw	$a1,5180($a5)
    # Line 657
    sll	$a7,$a0,0x2
    lw	$t0,5400($a5)
    addu	$a7,$a6,$a7
    lw	$a7,-18912($a7)
    # Line 660
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 653
    sw	$a3,5176($a5)
    # Line 657
    and	$t0,$t0,$t1
    sll	$a7,$a7,0x1c
    or	$a7,$a7,$t0
    # Line 660
    jr	$ra
    # Line 657
    sw	$a7,5400($a5)
.L0da33c90:
    # Line 660
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 639
    # lw $t9, -28616($gp) # &__glSetError
.L0da33ca0:
    # Line 638
    la	$t0,__glNop
    # Line 639
    li	$a0,1280
    jal	__glSetError
    # Line 638
    sw	$t0,5188($a5)
    b	.L0da33c90
    ld	$ra,8($sp)
.L0da33cb8:
    # Line 653
    la	$a6,.rodata
    addiu	$a6,$a6,25288
    addu	$a3,$a7,$a6
    addu	$a3,$t0,$a3
    b	.L0da33c58
    lw	$a3,28676($a3)
.L0da33cd0:
    # Line 634
    # lw $t9, -28616($gp) # &__glSetError
    # Line 633
    la	$a7,__glNop
    # Line 634
    li	$a0,1281
    jal	__glSetError
    # Line 633
    sw	$a7,5188($a5)
    b	.L0da33c90
    ld	$ra,8($sp)
.L0da33cec:
    # Line 646
    # lw $t9, -28616($gp) # &__glSetError
    # Line 645
    la	$t0,__glNop
    # Line 646
    li	$a0,1280
    jal	__glSetError
    # Line 645
    sw	$t0,5188($a5)
    b	.L0da33c90
    ld	$ra,8($sp)
.end __glim_IndexPointerEXT

# Function: __glim_ColorPointer
# Declared: Line 733 (Source lines: 733-739)
# Address: 0x0da33d10 - 0x0da33d68 (Size: 88 bytes, Frame: 16)
.globl __glim_ColorPointer
.ent __glim_ColorPointer
__glim_ColorPointer:
    # Line 733
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v1,$v1,-11576
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da33d54
    addu	$gp,$t9,$v1
    # Line 738
    # lw $t9, -25740($gp) # &__glim_ColorPointerEXT
    bal __glim_ColorPointerEXT
    move	$a3,$zero
    ld	$ra,8($sp)
.L0da33d48:
    # Line 739
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da33d54:
    # Line 735
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da33d48
    ld	$ra,8($sp)
.end __glim_ColorPointer

# Function: __glim_DrawElements
# Declared: Line 742 (Source lines: 742-773)
# Address: 0x0da33d70 - 0x0da33f10 (Size: 416 bytes, Frame: 48)
.globl __glim_DrawElements
.ent __glim_DrawElements
__glim_DrawElements:
    # Line 742
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    move	$s1,$a2
    lw	$at,4120($zero)
    sd	$s2,8($sp)
    li	$v0,1
    lui	$v1,0x6
    move	$s2,$a1
    sd	$ra,32($sp)
    addiu	$v1,$v1,-11672
    sd	$gp,24($sp)
    beq	$at,$v0,.L0da33eec
    addu	$gp,$t9,$v1
    # Line 743
    bltz	$a1,.L0da33f00
    # Line 747
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 750
    sltiu	$a1,$a0,10
    beqz	$a1,.L0da33dd0
    li	$a1,5121
    beq	$a1,$a2,.L0da33df4
    sd	$a3,0($sp)
    li	$a2,5123
    beq	$s1,$a2,.L0da33df4
    li	$a3,5125
    beq	$s1,$a3,.L0da33df4
.L0da33dd0:
    # Line 753
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0da33de0:
    ld	$s2,8($sp)
    ld	$s1,16($sp)
    # Line 773
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da33df4:
    # Line 756
    lw	$t9,4204($zero)
    jalr	$t9
    nop
    # Line 757
    li	$a4,5121
    li	$a5,5123
    beq	$a4,$s1,.L0da33e6c
    li	$a6,5125
    beq	$s1,$a5,.L0da33eac
    nop
    bne	$s1,$a6,.L0da33e58
    nop
    # Line 768
    blez	$s2,.L0da33e58
    sll	$s1,$s2,0x2
    ld	$t8,0($sp)
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    # Line 769
    lw	$t9,4968($zero)
.L0da33e40:
    jalr	$t9
    lw	$a0,0($s0)
    # Line 768
    addiu	$s0,$s0,4
    bnel	$s0,$s1,.L0da33e40
    # Line 769
    lw	$t9,4968($zero)
    ld	$s0,40($sp)
.L0da33e58:
    # Line 772
    lw	$t9,4220($zero)
    jalr	$t9
    nop
    b	.L0da33de0
    ld	$ra,32($sp)
.L0da33e6c:
    # Line 760
    blez	$s2,.L0da33e58
    ld	$s1,0($sp)
    sd	$s0,40($sp)
    move	$s0,$s1
    addu	$s1,$s2,$s1
    nop
    nop
    nop
    # Line 761
    lw	$t9,4968($zero)
.L0da33e90:
    jalr	$t9
    lbu	$a0,0($s0)
    # Line 760
    addiu	$s0,$s0,1
    bnel	$s0,$s1,.L0da33e90
    # Line 761
    lw	$t9,4968($zero)
    b	.L0da33e58
    ld	$s0,40($sp)
.L0da33eac:
    # Line 764
    blez	$s2,.L0da33e58
    addu	$s1,$s2,$s2
    ld	$t8,0($sp)
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    nop
    # Line 765
    lw	$t9,4968($zero)
.L0da33ed0:
    jalr	$t9
    lhu	$a0,0($s0)
    # Line 764
    addiu	$s0,$s0,2
    bnel	$s0,$s1,.L0da33ed0
    # Line 765
    lw	$t9,4968($zero)
    b	.L0da33e58
    ld	$s0,40($sp)
.L0da33eec:
    # Line 743
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da33de0
    ld	$ra,32($sp)
.L0da33f00:
    # Line 747
    jalr	$t9
    li	$a0,1281
    b	.L0da33de0
    ld	$ra,32($sp)
.end __glim_DrawElements

# Function: __glim_DrawRangeElements
# Declared: Line 776 (Source lines: 777-785)
# Address: 0x0da33f10 - 0x0da33f6c (Size: 92 bytes, Frame: 16)
.globl __glim_DrawRangeElements
.ent __glim_DrawRangeElements
__glim_DrawRangeElements:
    # Line 777
    addiu	$sp,$sp,-16
    sltu	$at,$a2,$a1
    lui	$v0,0x6
    move	$a7,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,-12088
    sd	$gp,0($sp)
    beqz	$at,.L0da33f48
    addu	$gp,$t9,$v0
    # Line 780
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0da33f5c
    nop
.L0da33f48:
    # Line 784
    # lw $t9, -25720($gp) # &__glim_DrawElements
    move	$a2,$a4
    move	$a1,$a3
    bal __glim_DrawElements
    move	$a3,$a5
.L0da33f5c:
    ld	$ra,8($sp)
    # Line 785
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_DrawRangeElements

# Function: __glim_EdgeFlagPointer
# Declared: Line 788 (Source lines: 788-794)
# Address: 0x0da33f70 - 0x0da33fc8 (Size: 88 bytes, Frame: 16)
.globl __glim_EdgeFlagPointer
.ent __glim_EdgeFlagPointer
__glim_EdgeFlagPointer:
    # Line 788
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a2,$a1
    sd	$ra,8($sp)
    addiu	$v1,$v1,-12184
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da33fb4
    addu	$gp,$t9,$v1
    # Line 793
    # lw $t9, -25732($gp) # &__glim_EdgeFlagPointerEXT
    bal __glim_EdgeFlagPointerEXT
    move	$a1,$zero
    ld	$ra,8($sp)
.L0da33fa8:
    # Line 794
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da33fb4:
    # Line 790
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da33fa8
    ld	$ra,8($sp)
.end __glim_EdgeFlagPointer

# Function: __glim_IndexPointer
# Declared: Line 797 (Source lines: 797-803)
# Address: 0x0da33fd0 - 0x0da34028 (Size: 88 bytes, Frame: 16)
.globl __glim_IndexPointer
.ent __glim_IndexPointer
__glim_IndexPointer:
    # Line 797
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a3,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,-12280
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da34014
    addu	$gp,$t9,$v1
    # Line 802
    # lw $t9, -25728($gp) # &__glim_IndexPointerEXT
    bal __glim_IndexPointerEXT
    move	$a2,$zero
    ld	$ra,8($sp)
.L0da34008:
    # Line 803
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34014:
    # Line 799
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34008
    ld	$ra,8($sp)
.end __glim_IndexPointer

# Function: __glim_InterleavedArrays
# Declared: Line 806 (Source lines: 806-913)
# Address: 0x0da34030 - 0x0da342f0 (Size: 704 bytes, Frame: 208)
.globl __glim_InterleavedArrays
.ent __glim_InterleavedArrays
__glim_InterleavedArrays:
    # Line 806
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    # Line 844
    lw	$s1,4112($zero)
    sd	$s5,64($sp)
    sd	$s0,56($sp)
    sd	$ra,48($sp)
    # Line 806
    sd	$s4,24($sp)
    move	$s4,$a2
    # Line 844
    lw	$at,4120($zero)
    # Line 806
    sd	$s3,32($sp)
    # Line 844
    li	$v0,1
    # Line 806
    lui	$v1,0x6
    move	$s3,$a1
    sd	$s2,40($sp)
    addiu	$v1,$v1,-12376
    sd	$gp,8($sp)
    # Line 844
    beq	$at,$v0,.L0da342cc
    # Line 806
    addu	$gp,$t9,$v1
    # Line 844
    bltz	$a1,.L0da342e0
    # Line 847
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 850
    sltiu	$a1,$a0,10784
    bnez	$a1,.L0da34254
    # Line 851
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 850
    sltiu	$a2,$a0,10798
    beqz	$a2,.L0da34254
    # Line 851
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 852
    la	$s2,.rodata
    sll	$t8,$a0,0x3
    addu	$t8,$t8,$a0
    sll	$t8,$t8,0x2
    addiu	$s2,$s2,26904
    addu	$s2,$s2,$t8
    lui	$t8,0x6
    beqz	$s3,.L0da34264
    subu	$s2,$s2,$t8
.L0da340bc:
    # Line 859
    lw	$t9,6132($s1)
    lw	$t9,876($t9)
    jal	__glSetError
    li	$a0,0x8079
    # Line 860
    lw	$t9,6132($s1)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8077
    lbu	$ra,4992($s2)
    beqz	$ra,.L0da3426c
    # Line 873
    move	$s0,$zero
    # Line 863
    lw	$s5,5420($s1)
    # Line 864
    lw	$v0,5012($s2)
    addiu	$v1,$s5,-1
    mult	$v0,$v1
    move	$s0,$zero
    mflo	$at
    blez	$s5,.L0da34150
    sd	$at,0($sp)
    nop
    # Line 869
    lw	$t9,6132($s1)
.L0da34110:
    lw	$t9,888($t9)
    jalr	$t9
    li	$a0,0x8078
    # Line 870
    lw	$ra,5012($s2)
    mult	$ra,$s0
    lw	$t9,6132($s1)
    lw	$t9,904($t9)
    move	$a2,$s3
    li	$a1,5126
    mflo	$a3
    lw	$a0,4996($s2)
    jalr	$t9
    addu	$a3,$s4,$a3
    # Line 865
    addiu	$s0,$s0,1
    bnel	$s5,$s0,.L0da34110
    # Line 869
    lw	$t9,6132($s1)
.L0da34150:
    # Line 873
    lw	$at,3612($s1)
    slt	$at,$s5,$at
    beqz	$at,.L0da34184
    move	$s0,$s5
.L0da34160:
    # Line 877
    lw	$t9,6132($s1)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8078
    # Line 873
    lw	$ra,3612($s1)
    addiu	$s0,$s0,1
    slt	$ra,$s0,$ra
    bnez	$ra,.L0da34160
    nop
.L0da34184:
    # Line 881
    lbu	$at,4993($s2)
    ld	$s0,0($sp)
    lw	$a1,6132($s1)
    beqz	$at,.L0da342a4
    addu	$s0,$s0,$s4
    # Line 893
    lw	$t9,888($a1)
    jalr	$t9
    li	$a0,0x8076
    # Line 894
    lw	$t9,6132($s1)
    lw	$t9,872($t9)
    lw	$a3,5012($s2)
    move	$a2,$s3
    lw	$a1,5008($s2)
    lw	$a0,5000($s2)
    jalr	$t9
    addu	$a3,$a3,$s0
    # Line 897
    lbu	$ra,4994($s2)
.L0da341c8:
    beqz	$ra,.L0da342b8
    lw	$a1,6132($s1)
    # Line 900
    lw	$t9,888($a1)
    jalr	$t9
    li	$a0,0x8075
    # Line 901
    lw	$t9,6132($s1)
    lw	$t9,900($t9)
    lw	$a2,5016($s2)
    move	$a1,$s3
    li	$a0,5126
    jalr	$t9
    addu	$a2,$a2,$s0
    # Line 910
    lw	$t9,6132($s1)
.L0da341fc:
    lw	$t9,888($t9)
    jalr	$t9
    li	$a0,0x8074
    # Line 911
    lw	$t9,6132($s1)
    lw	$t9,908($t9)
    lw	$a3,5020($s2)
    move	$a2,$s3
    li	$a1,5126
    lw	$a0,5004($s2)
    jalr	$t9
    addu	$a3,$a3,$s0
    ld	$s5,64($sp)
.L0da3422c:
    ld	$s0,56($sp)
    ld	$s2,40($sp)
    # Line 913
    ld	$gp,8($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s3,32($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
    # Line 851
    # lw $t9, -28616($gp) # &__glSetError
.L0da34254:
    jal	__glSetError
    li	$a0,1280
    b	.L0da3422c
    ld	$s5,64($sp)
.L0da34264:
    # Line 855
    b	.L0da340bc
    lw	$s3,5024($s2)
.L0da3426c:
    # Line 873
    lw	$ra,3612($s1)
    blez	$ra,.L0da3429c
    nop
.L0da34278:
    # Line 885
    lw	$t9,6132($s1)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8078
    # Line 881
    lw	$ra,3612($s1)
    addiu	$s0,$s0,1
    slt	$ra,$s0,$ra
    bnez	$ra,.L0da34278
    nop
.L0da3429c:
    b	.L0da34184
    sd	$zero,0($sp)
.L0da342a4:
    # Line 897
    lw	$t9,876($a1)
    jalr	$t9
    li	$a0,0x8076
    b	.L0da341c8
    lbu	$ra,4994($s2)
.L0da342b8:
    # Line 904
    lw	$t9,876($a1)
    jalr	$t9
    li	$a0,0x8075
    b	.L0da341fc
    # Line 910
    lw	$t9,6132($s1)
.L0da342cc:
    # Line 844
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da3422c
    ld	$s5,64($sp)
.L0da342e0:
    # Line 847
    jalr	$t9
    li	$a0,1281
    b	.L0da3422c
    ld	$s5,64($sp)
.end __glim_InterleavedArrays

# Function: __glim_NormalPointer
# Declared: Line 916 (Source lines: 916-922)
# Address: 0x0da342f0 - 0x0da34348 (Size: 88 bytes, Frame: 16)
.globl __glim_NormalPointer
.ent __glim_NormalPointer
__glim_NormalPointer:
    # Line 916
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a3,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,-13080
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da34334
    addu	$gp,$t9,$v1
    # Line 921
    # lw $t9, -25744($gp) # &__glim_NormalPointerEXT
    bal __glim_NormalPointerEXT
    move	$a2,$zero
    ld	$ra,8($sp)
.L0da34328:
    # Line 922
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34334:
    # Line 918
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34328
    ld	$ra,8($sp)
.end __glim_NormalPointer

# Function: __glim_TexCoordPointer
# Declared: Line 925 (Source lines: 925-931)
# Address: 0x0da34350 - 0x0da343a8 (Size: 88 bytes, Frame: 16)
.globl __glim_TexCoordPointer
.ent __glim_TexCoordPointer
__glim_TexCoordPointer:
    # Line 925
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v1,$v1,-13176
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da34394
    addu	$gp,$t9,$v1
    # Line 930
    # lw $t9, -25736($gp) # &__glim_TexCoordPointerEXT
    bal __glim_TexCoordPointerEXT
    move	$a3,$zero
    ld	$ra,8($sp)
.L0da34388:
    # Line 931
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34394:
    # Line 927
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34388
    ld	$ra,8($sp)
.end __glim_TexCoordPointer

# Function: __glim_VertexPointer
# Declared: Line 934 (Source lines: 934-940)
# Address: 0x0da343b0 - 0x0da34408 (Size: 88 bytes, Frame: 16)
.globl __glim_VertexPointer
.ent __glim_VertexPointer
__glim_VertexPointer:
    # Line 934
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x6
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v1,$v1,-13272
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da343f4
    addu	$gp,$t9,$v1
    # Line 939
    # lw $t9, -25748($gp) # &__glim_VertexPointerEXT
    bal __glim_VertexPointerEXT
    move	$a3,$zero
    ld	$ra,8($sp)
.L0da343e8:
    # Line 940
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da343f4:
    # Line 936
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da343e8
    ld	$ra,8($sp)
.end __glim_VertexPointer

# Function: __glim_InterleavedTextureCoordSetsSGIS
# Declared: Line 947 (Source lines: 948-957)
# Address: 0x0da34410 - 0x0da34498 (Size: 136 bytes, Frame: 16)
.globl __glim_InterleavedTextureCoordSetsSGIS
.ent __glim_InterleavedTextureCoordSetsSGIS
__glim_InterleavedTextureCoordSetsSGIS:
    # Line 948
    addiu	$sp,$sp,-16
    # Line 949
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 948
    lui	$v1,0x6
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-13368
    sd	$gp,0($sp)
    # Line 949
    beq	$at,$v0,.L0da34484
    # Line 948
    addu	$gp,$t9,$v1
    # Line 951
    blez	$a0,.L0da34474
    # Line 952
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 951
    lw	$a1,3612($a2)
    slt	$a1,$a1,$a0
    bnez	$a1,.L0da34474
    # Line 952
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 956
    sw	$a0,5420($a2)
    # Line 957
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34464:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 952
    # lw $t9, -28616($gp) # &__glSetError
.L0da34474:
    jal	__glSetError
    li	$a0,1281
    b	.L0da34464
    ld	$ra,8($sp)
.L0da34484:
    # Line 949
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34464
    ld	$ra,8($sp)
.end __glim_InterleavedTextureCoordSetsSGIS

