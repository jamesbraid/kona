# Source: ../KONA/kon_convolve.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_convolve.c
# Total Functions: 20

.text

# Function: __glKonInitConvolutionState
# Declared: Line 36 (Source lines: 37-100)
# Address: 0x0d9571d0 - 0x0d9572e8 (Size: 280 bytes, Frame: 0)
.globl __glKonInitConvolutionState
.ent __glKonInitConvolutionState
__glKonInitConvolutionState:
    # Line 90
    addiu	$a7,$a0,852
    sw	$a7,764($a0)
    # Line 54
    li	$a5,7
    # Line 88
    sw	$a5,1012($a0)
    # Line 87
    sw	$a5,1008($a0)
    # Line 86
    sw	$zero,1004($a0)
    # Line 85
    sw	$zero,1000($a0)
    # Line 43
    li	$a3,4
    # Line 76
    sw	$a3,948($a0)
    # Line 42
    li	$a2,6408
    # Line 75
    sw	$a2,944($a0)
    # Line 41
    li	$a1,0x8016
    # Line 74
    sw	$a1,940($a0)
    # Line 73
    li	$a6,0x8012
    sw	$a6,936($a0)
    # Line 71
    sw	$a5,928($a0)
    # Line 70
    sw	$a5,924($a0)
    # Line 69
    sw	$zero,920($a0)
    # Line 68
    sw	$zero,916($a0)
    # Line 60
    sw	$a3,864($a0)
    # Line 59
    sw	$a2,860($a0)
    # Line 58
    sw	$a1,856($a0)
    # Line 40
    li	$v1,0x8010
    # Line 57
    sw	$v1,852($a0)
    # Line 53
    li	$a4,1
    # Line 55
    sw	$a4,844($a0)
    # Line 54
    sw	$a5,840($a0)
    # Line 53
    sw	$a4,836($a0)
    # Line 52
    sw	$zero,832($a0)
    # Line 43
    sw	$a3,780($a0)
    # Line 42
    sw	$a2,776($a0)
    # Line 41
    sw	$a1,772($a0)
    # Line 48
    mtc1	$zero,$f1
    # Line 40
    sw	$v1,768($a0)
    # Line 96
    swc1	$f1,696($a0)
    swc1	$f1,700($a0)
    swc1	$f1,704($a0)
    swc1	$f1,708($a0)
    # Line 81
    swc1	$f1,968($a0)
    swc1	$f1,972($a0)
    swc1	$f1,976($a0)
    swc1	$f1,980($a0)
    # Line 65
    swc1	$f1,884($a0)
    swc1	$f1,888($a0)
    swc1	$f1,896($a0)
    # Line 48
    swc1	$f1,800($a0)
    # Line 37
    lui	$v0,0x14
    # Line 48
    swc1	$f1,804($a0)
    # Line 37
    addiu	$v0,$v0,-25080
    # Line 48
    swc1	$f1,808($a0)
    # Line 37
    addu	$at,$t9,$v0
    # Line 44
    lwc1	$f0,_lit_3f800000
    # Line 48
    swc1	$f1,812($a0)
    # Line 92
    swc1	$f0,680($a0)
    swc1	$f0,684($a0)
    swc1	$f0,688($a0)
    swc1	$f0,692($a0)
    # Line 77
    swc1	$f0,952($a0)
    swc1	$f0,956($a0)
    swc1	$f0,960($a0)
    swc1	$f0,964($a0)
    # Line 61
    swc1	$f0,868($a0)
    swc1	$f0,872($a0)
    swc1	$f0,876($a0)
    swc1	$f0,880($a0)
    # Line 44
    swc1	$f0,784($a0)
    swc1	$f0,788($a0)
    swc1	$f0,792($a0)
    # Line 100
    jr	$ra
    # Line 44
    swc1	$f0,796($a0)
.end __glKonInitConvolutionState

# Function: InvalidGetFormat
# Declared: Line 107 (Source lines: 108-115)
# Address: 0x0d9572f0 - 0x0d95733c (Size: 76 bytes, Frame: 16)
.ent InvalidGetFormat
InvalidGetFormat:
    # Line 109
    sltiu	$at,$a0,6403
    sltiu	$v0,$a0,6411
    bnez	$at,.L0d957308
    # Line 108
    addiu	$sp,$sp,-16
    # Line 109
    bnez	$v0,.L0d957318
    # Line 111
    move	$v0,$zero
.L0d957308:
    # Line 109
    li	$v1,0x8000
    bne	$a0,$v1,.L0d957320
    # Line 114
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 111
    move	$v0,$zero
.L0d957318:
    # Line 115
    jr	$ra
    addiu	$sp,$sp,16
.L0d957320:
    sd	$ra,0($sp)
    # Line 114
    jal	__glSetError
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 115
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.end InvalidGetFormat

# Function: InvalidGetType
# Declared: Line 123 (Source lines: 124-139)
# Address: 0x0d957340 - 0x0d9573a8 (Size: 104 bytes, Frame: 16)
.ent InvalidGetType
InvalidGetType:
    # Line 128
    sltiu	$at,$a0,5120
    sltiu	$v0,$a0,5127
    bnez	$at,.L0d957358
    # Line 124
    addiu	$sp,$sp,-16
    # Line 128
    bnez	$v0,.L0d9573a0
    # Line 129
    move	$v0,$zero
.L0d957358:
    # Line 132
    li	$v1,0x8032
    sltu	$v1,$a0,$v1
    bnez	$v1,.L0d957380
    # Line 134
    move	$v0,$zero
    # Line 132
    li	$a1,0x8036
    sltu	$a1,$a1,$a0
    bnez	$a1,.L0d957384
    # Line 138
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 139
    jr	$ra
    addiu	$sp,$sp,16
.L0d957380:
    # Line 138
    # lw $t9, -28616($gp) # &__glSetError
.L0d957384:
    sd	$ra,0($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 139
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.L0d9573a0:
    jr	$ra
    addiu	$sp,$sp,16
.end InvalidGetType

# Function: __glChkConvFilterArgs
# Declared: Line 143 (Source lines: 145-234)
# Address: 0x0d9573b0 - 0x0d957530 (Size: 384 bytes, Frame: 16)
.ent __glChkConvFilterArgs
__glChkConvFilterArgs:
    # Line 145
    addiu	$sp,$sp,-16
    # Line 159
    li	$a7,6408
    # Line 154
    bltz	$a1,.L0d957514
    sd	$ra,0($sp)
    bltz	$a2,.L0d957518
    # Line 155
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 159
    li	$at,6406
    beq	$a3,$at,.L0d957484
    li	$v0,6409
    beq	$a3,$v0,.L0d9574a4
    # Line 164
    li	$at,3
    # Line 159
    li	$v1,6410
    beq	$a3,$v1,.L0d9574f4
    # Line 176
    li	$t0,2
    # Line 159
    li	$a5,0x8049
    beq	$a3,$a5,.L0d957500
    li	$a6,6407
    beq	$a3,$a6,.L0d95750c
    # Line 173
    li	$a6,1
    # Line 159
    beq	$a3,$a7,.L0d95741c
    # Line 179
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 180
    move	$v0,$zero
    # Line 192
    jr	$ra
    addiu	$sp,$sp,16
.L0d95741c:
    # Line 176
    sw	$t0,0($a4)
.L0d957420:
    # Line 183
    li	$t1,0x8010
    # Line 216
    slti	$t9,$a2,8
    # Line 183
    beq	$a0,$t1,.L0d95748c
    # Line 188
    slti	$ra,$a1,8
    # Line 183
    li	$t2,0x8011
    # Line 199
    slti	$v1,$a2,8
    # Line 183
    beq	$a0,$t2,.L0d9574ac
    # Line 199
    slti	$v0,$a1,8
    # Line 183
    li	$t3,0x8012
    beq	$a0,$t3,.L0d957468
    # Line 216
    slti	$t8,$a1,8
    # Line 230
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 231
    move	$v0,$zero
    # Line 192
    jr	$ra
    addiu	$sp,$sp,16
.L0d957468:
    # Line 216
    beqz	$t8,.L0d9574d8
    nop
    beqz	$t9,.L0d9574d8
.L0d957474:
    # Line 234
    li	$v0,1
.L0d957478:
    ld	$ra,0($sp)
    # Line 192
    jr	$ra
    addiu	$sp,$sp,16
.L0d957484:
    b	.L0d957420
    # Line 161
    sw	$zero,0($a4)
.L0d95748c:
    # Line 188
    bnez	$ra,.L0d957474
    # Line 191
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d957478
    # Line 192
    move	$v0,$zero
.L0d9574a4:
    # Line 165
    b	.L0d957420
    # Line 164
    sw	$at,0($a4)
.L0d9574ac:
    # Line 199
    beqz	$v0,.L0d9574c0
    # Line 208
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 199
    bnez	$v1,.L0d957478
    # Line 234
    li	$v0,1
    # Line 208
    # lw $t9, -28616($gp) # &__glSetError
.L0d9574c0:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 209
    move	$v0,$zero
    # Line 192
    jr	$ra
    addiu	$sp,$sp,16
.L0d9574d8:
    # Line 225
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 226
    move	$v0,$zero
    # Line 192
    jr	$ra
    addiu	$sp,$sp,16
.L0d9574f4:
    # Line 167
    li	$a3,4
    # Line 168
    b	.L0d957420
    # Line 167
    sw	$a3,0($a4)
.L0d957500:
    # Line 170
    li	$a5,5
    # Line 171
    b	.L0d957420
    # Line 170
    sw	$a5,0($a4)
.L0d95750c:
    # Line 174
    b	.L0d957420
    # Line 173
    sw	$a6,0($a4)
.L0d957514:
    # Line 155
    # lw $t9, -28616($gp) # &__glSetError
.L0d957518:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 156
    move	$v0,$zero
    # Line 192
    jr	$ra
    addiu	$sp,$sp,16
.end __glChkConvFilterArgs

# Function: __glkonim_ConvolutionFilter1DEXT
# Declared: Line 238 (Source lines: 241-279)
# Address: 0x0d957530 - 0x0d9576d4 (Size: 420 bytes, Frame: 144)
.globl __glkonim_ConvolutionFilter1DEXT
.ent __glkonim_ConvolutionFilter1DEXT
__glkonim_ConvolutionFilter1DEXT:
    # Line 241
    addiu	$sp,$sp,-272
    # Line 242
    lw	$at,4120($zero)
    lw	$a7,4112($zero)
    li	$t0,1
    # Line 241
    lui	$v0,0x14
    # Line 246
    li	$v1,0x8010
    sd	$ra,256($sp)
    # Line 241
    addiu	$v0,$v0,-25944
    sd	$gp,248($sp)
    # Line 242
    beq	$at,$t0,.L0d9576c0
    # Line 241
    addu	$gp,$t9,$v0
    sd	$a7,224($sp)
    sd	$a3,216($sp)
    sd	$a4,208($sp)
    sd	$a5,200($sp)
    sd	$a1,240($sp)
    # Line 246
    beq	$a0,$v1,.L0d957594
    sd	$a2,232($sp)
    # Line 249
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d957584:
    ld	$ra,256($sp)
.L0d957588:
    # Line 279
    ld	$gp,248($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d957594:
    # Line 253
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,29616
    ld	$a1,232($sp)
    move	$a2,$t0
    ld	$a3,240($sp)
    bal __glKonInitConvolutionState
    addiu	$a4,$sp,0
    beqz	$v0,.L0d957588
    ld	$ra,256($sp)
    # Line 262
    li	$v0,1
    sw	$v0,32($sp)
    # Line 258
    sw	$v0,12($sp)
    # Line 264
    ld	$at,232($sp)
    # Line 260
    ld	$a0,208($sp)
    # Line 259
    ld	$v1,216($sp)
    # Line 261
    ld	$a1,200($sp)
    sw	$a1,28($sp)
    # Line 264
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 259
    sw	$v1,20($sp)
    # Line 260
    sw	$a0,24($sp)
    # Line 264
    addiu	$a0,$sp,8
    bal __glKonParseInput
    # Line 257
    sw	$at,8($sp)
    # Line 264
    bnez	$v0,.L0d957588
    ld	$ra,256($sp)
    # Line 265
    # lw $t9, -32320($gp) # &__glKonParseErrorDraw
    bal __glKonParseErrorDraw
    addiu	$a0,$sp,8
    bnez	$v0,.L0d957584
    # Line 266
    nop	# was lw $t9, -32308($gp) # &__glKonParseHostImage
    bal __glKonParseHostImage
    addiu	$a0,$sp,8
    # Line 272
    li	$t0,273
    sw	$t0,16384($zero)
    li	$a7,16
    sw	$a7,16384($zero)
    lui	$t8,0x4000
    sw	$t8,16384($zero)
    # Line 273
    li	$t3,239
    sw	$t3,16384($zero)
    ld	$a5,200($sp)
    # Line 269
    ld	$ra,240($sp)
    ld	$t9,224($sp)
    # Line 270
    ld	$a4,232($sp)
    sw	$a4,832($t9)
    # Line 269
    sw	$ra,776($t9)
    # Line 273
    lw	$a2,192($sp)
    lw	$a3,188($sp)
    lw	$a6,156($sp)
    lw	$t1,152($sp)
    lw	$t2,0($sp)
    sw	$t2,16384($zero)
    sw	$a4,16384($zero)
    sw	$t1,16384($zero)
    sw	$a6,16384($zero)
    andi	$a5,$a5,0x3
    sw	$a5,16384($zero)
    sw	$a3,16384($zero)
    beqz	$a4,.L0d9576a4
    sw	$a2,16384($zero)
    # Line 277
    # lw $t9, -32300($gp) # &__glKonSendData
    move	$a3,$zero
    li	$a2,1
    move	$a1,$a4
    bal __glKonSendData
    addiu	$a0,$sp,8
    li	$a7,16
    li	$t0,273
.L0d9576a4:
    # Line 278
    sw	$t0,16384($zero)
    ld	$ra,256($sp)
    sw	$a7,16384($zero)
    sw	$zero,16384($zero)
    # Line 279
    ld	$gp,248($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d9576c0:
    # Line 246
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d957588
    ld	$ra,256($sp)
.end __glkonim_ConvolutionFilter1DEXT

# Function: __glkonim_ConvolutionFilter2DEXT
# Declared: Line 282 (Source lines: 286-325)
# Address: 0x0d9576e0 - 0x0d95789c (Size: 444 bytes, Frame: 144)
.globl __glkonim_ConvolutionFilter2DEXT
.ent __glkonim_ConvolutionFilter2DEXT
__glkonim_ConvolutionFilter2DEXT:
    # Line 286
    addiu	$sp,$sp,-272
    # Line 287
    lw	$at,4120($zero)
    lw	$t0,4112($zero)
    li	$t1,1
    # Line 286
    lui	$v0,0x14
    # Line 291
    li	$v1,0x8011
    sd	$ra,264($sp)
    # Line 286
    addiu	$v0,$v0,-26376
    sd	$gp,256($sp)
    # Line 287
    beq	$at,$t1,.L0d957888
    # Line 286
    addu	$gp,$t9,$v0
    sd	$t0,224($sp)
    sd	$a4,216($sp)
    sd	$a5,208($sp)
    sd	$a6,200($sp)
    sd	$a1,232($sp)
    sd	$a2,240($sp)
    # Line 291
    beq	$a0,$v1,.L0d957748
    sd	$a3,248($sp)
    # Line 294
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,264($sp)
.L0d95773c:
    # Line 325
    ld	$gp,256($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d957748:
    # Line 298
    # lw $t9, -32744($gp) # &sub_0d950000
    ld	$a1,240($sp)
    addiu	$t9,$t9,29616
    ld	$a2,248($sp)
    ld	$a3,232($sp)
    bal __glKonInitConvolutionState
    addiu	$a4,$sp,0
    beqz	$v0,.L0d95773c
    ld	$ra,264($sp)
    # Line 307
    li	$a2,1
    sw	$a2,32($sp)
    # Line 309
    ld	$at,240($sp)
    # Line 305
    ld	$a0,208($sp)
    # Line 303
    ld	$v0,248($sp)
    # Line 304
    ld	$v1,216($sp)
    # Line 306
    ld	$a1,200($sp)
    sw	$a1,28($sp)
    # Line 304
    sw	$v1,20($sp)
    # Line 309
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 303
    sw	$v0,12($sp)
    # Line 305
    sw	$a0,24($sp)
    # Line 309
    addiu	$a0,$sp,8
    bal __glKonParseInput
    # Line 302
    sw	$at,8($sp)
    # Line 309
    bnez	$v0,.L0d95773c
    ld	$ra,264($sp)
    # Line 310
    # lw $t9, -32320($gp) # &__glKonParseErrorDraw
    bal __glKonParseErrorDraw
    addiu	$a0,$sp,8
    bnez	$v0,.L0d95773c
    ld	$ra,264($sp)
    # Line 311
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    bal __glKonParseHostImage
    addiu	$a0,$sp,8
    # Line 318
    li	$t1,273
    sw	$t1,16384($zero)
    li	$t0,16
    sw	$t0,16384($zero)
    lui	$t9,0x4000
    sw	$t9,16384($zero)
    # Line 319
    li	$t8,240
    sw	$t8,16384($zero)
    ld	$a6,200($sp)
    # Line 314
    ld	$at,232($sp)
    # Line 316
    ld	$a2,248($sp)
    # Line 314
    ld	$ra,224($sp)
    # Line 315
    ld	$a4,240($sp)
    # Line 316
    sw	$a2,920($ra)
    # Line 315
    sw	$a4,916($ra)
    # Line 314
    sw	$at,860($ra)
    # Line 319
    lw	$a3,192($sp)
    lw	$a5,188($sp)
    lw	$a7,156($sp)
    lw	$t2,152($sp)
    lw	$t3,0($sp)
    sw	$t3,16384($zero)
    sw	$a4,16384($zero)
    sw	$a2,16384($zero)
    sw	$t2,16384($zero)
    sw	$a7,16384($zero)
    andi	$a6,$a6,0x3
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    # Line 322
    beqz	$a4,.L0d95786c
    # Line 319
    sw	$a3,16384($zero)
    # Line 322
    beqz	$a2,.L0d95786c
    # Line 323
    nop	# was lw $t9, -32300($gp) # &__glKonSendData
    move	$a3,$zero
    move	$a1,$a4
    bal __glKonSendData
    addiu	$a0,$sp,8
    li	$t0,16
    li	$t1,273
.L0d95786c:
    # Line 324
    sw	$t1,16384($zero)
    ld	$ra,264($sp)
    sw	$t0,16384($zero)
    sw	$zero,16384($zero)
    # Line 325
    ld	$gp,256($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d957888:
    # Line 291
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95773c
    ld	$ra,264($sp)
.end __glkonim_ConvolutionFilter2DEXT

# Function: __glkonim_SeparableFilter2DEXT
# Declared: Line 328 (Source lines: 332-385)
# Address: 0x0d9578a0 - 0x0d957aec (Size: 588 bytes, Frame: 160)
.globl __glkonim_SeparableFilter2DEXT
.ent __glkonim_SeparableFilter2DEXT
__glkonim_SeparableFilter2DEXT:
    # Line 332
    addiu	$sp,$sp,-288
    # Line 333
    lw	$at,4120($zero)
    lw	$t1,4112($zero)
    li	$t2,1
    # Line 332
    lui	$v0,0x14
    # Line 337
    li	$v1,0x8012
    sd	$ra,272($sp)
    # Line 332
    addiu	$v0,$v0,-26824
    sd	$gp,264($sp)
    # Line 333
    beq	$at,$t2,.L0d957ad8
    # Line 332
    addu	$gp,$t9,$v0
    sd	$a7,232($sp)
    sd	$t1,224($sp)
    sd	$a4,216($sp)
    sd	$a5,208($sp)
    sd	$a6,200($sp)
    sd	$a1,248($sp)
    sd	$a3,240($sp)
    # Line 337
    beq	$a0,$v1,.L0d95790c
    sd	$a2,256($sp)
    # Line 340
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9578fc:
    ld	$ra,272($sp)
.L0d957900:
    # Line 385
    ld	$gp,264($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d95790c:
    # Line 344
    # lw $t9, -32744($gp) # &sub_0d950000
    ld	$a1,256($sp)
    addiu	$t9,$t9,29616
    ld	$a2,240($sp)
    ld	$a3,248($sp)
    bal __glKonInitConvolutionState
    addiu	$a4,$sp,0
    beqz	$v0,.L0d957900
    ld	$ra,272($sp)
    # Line 353
    li	$v0,1
    sw	$v0,32($sp)
    # Line 349
    sw	$v0,12($sp)
    # Line 355
    ld	$at,256($sp)
    # Line 351
    ld	$a0,208($sp)
    # Line 350
    ld	$v1,216($sp)
    # Line 352
    ld	$a1,200($sp)
    sw	$a1,28($sp)
    # Line 355
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 350
    sw	$v1,20($sp)
    # Line 351
    sw	$a0,24($sp)
    # Line 355
    addiu	$a0,$sp,8
    bal __glKonParseInput
    # Line 348
    sw	$at,8($sp)
    # Line 355
    bnez	$v0,.L0d957900
    ld	$ra,272($sp)
    # Line 356
    # lw $t9, -32320($gp) # &__glKonParseErrorDraw
    bal __glKonParseErrorDraw
    addiu	$a0,$sp,8
    bnez	$v0,.L0d9578fc
    # Line 357
    nop	# was lw $t9, -32308($gp) # &__glKonParseHostImage
    bal __glKonParseHostImage
    addiu	$a0,$sp,8
    # Line 368
    li	$ra,273
    sw	$ra,16384($zero)
    li	$t9,16
    sw	$t9,16384($zero)
    lui	$t8,0x4000
    sw	$t8,16384($zero)
    # Line 369
    li	$t3,245
    sw	$t3,16384($zero)
    ld	$a6,200($sp)
    # Line 360
    ld	$v0,248($sp)
    # Line 362
    ld	$t1,240($sp)
    # Line 360
    ld	$at,224($sp)
    # Line 361
    ld	$a3,256($sp)
    # Line 362
    sw	$t1,1004($at)
    # Line 361
    sw	$a3,1000($at)
    # Line 360
    sw	$v0,944($at)
    # Line 369
    lw	$a2,192($sp)
    lw	$a4,188($sp)
    lw	$a7,156($sp)
    lw	$t0,152($sp)
    lw	$t2,0($sp)
    sw	$t2,16384($zero)
    sw	$a3,16384($zero)
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    sw	$a7,16384($zero)
    andi	$a6,$a6,0x3
    sw	$a6,16384($zero)
    li	$a5,1
    sw	$a5,16384($zero)
    sw	$a4,16384($zero)
    beqz	$a3,.L0d957a28
    sw	$a2,16384($zero)
    # Line 374
    # lw $t9, -32300($gp) # &__glKonSendData
    move	$a3,$zero
    move	$a2,$a5
    ld	$a1,256($sp)
    bal __glKonSendData
    addiu	$a0,$sp,8
.L0d957a28:
    # Line 377
    ld	$v1,240($sp)
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    # Line 376
    ld	$a0,232($sp)
    sw	$a0,28($sp)
    # Line 377
    addiu	$a0,$sp,8
    bal __glKonParseHostImage
    # Line 375
    sw	$v1,8($sp)
    # Line 378
    li	$t2,245
    sw	$t2,16384($zero)
    lw	$a1,192($sp)
    lw	$a3,188($sp)
    lw	$a6,156($sp)
    lw	$a7,152($sp)
    ld	$t0,256($sp)
    lw	$t1,0($sp)
    sw	$t1,16384($zero)
    sw	$t0,16384($zero)
    ld	$a2,240($sp)
    sw	$a2,16384($zero)
    sw	$a7,16384($zero)
    ld	$a5,232($sp)
    sw	$a6,16384($zero)
    andi	$a5,$a5,0x3
    sw	$a5,16384($zero)
    li	$a4,2
    sw	$a4,16384($zero)
    sw	$a3,16384($zero)
    beqz	$a2,.L0d957ab4
    sw	$a1,16384($zero)
    # Line 383
    # lw $t9, -32300($gp) # &__glKonSendData
    move	$a3,$zero
    li	$a2,1
    ld	$a1,240($sp)
    bal __glKonSendData
    addiu	$a0,$sp,8
.L0d957ab4:
    # Line 384
    li	$t8,273
    sw	$t8,16384($zero)
    ld	$ra,272($sp)
    li	$t3,16
    sw	$t3,16384($zero)
    sw	$zero,16384($zero)
    # Line 385
    ld	$gp,264($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d957ad8:
    # Line 337
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d957900
    ld	$ra,272($sp)
.end __glkonim_SeparableFilter2DEXT

# Function: __glkonim_CopyConvolutionFilter1DEXT
# Declared: Line 388 (Source lines: 390-419)
# Address: 0x0d957af0 - 0x0d957bf8 (Size: 264 bytes, Frame: 192)
.globl __glkonim_CopyConvolutionFilter1DEXT
.ent __glkonim_CopyConvolutionFilter1DEXT
__glkonim_CopyConvolutionFilter1DEXT:
    # Line 390
    addiu	$sp,$sp,-64
    # Line 391
    lw	$at,4120($zero)
    lw	$a6,4112($zero)
    li	$v0,1
    # Line 390
    lui	$v1,0x14
    # Line 394
    li	$a5,0x8010
    sd	$ra,56($sp)
    # Line 390
    addiu	$v1,$v1,-27416
    sd	$gp,40($sp)
    # Line 391
    beq	$at,$v0,.L0d957be4
    # Line 390
    addu	$gp,$t9,$v1
    sd	$a2,16($sp)
    sd	$a3,8($sp)
    sd	$a6,48($sp)
    sd	$a4,32($sp)
    # Line 394
    beq	$a0,$a5,.L0d957b50
    sd	$a1,24($sp)
    # Line 397
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d957b40:
    ld	$ra,56($sp)
.L0d957b44:
    # Line 419
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d957b50:
    # Line 402
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,29616
    ld	$a1,32($sp)
    addiu	$a4,$sp,0
    ld	$a3,24($sp)
    bal __glKonInitConvolutionState
    li	$a2,1
    # Line 416
    li	$at,16
    # Line 402
    beqz	$v0,.L0d957b40
    ld	$a0,48($sp)
    # Line 403
    lbu	$ra,3220($a0)
    beqz	$ra,.L0d957b40
    # Line 416
    li	$v0,273
    # Line 419
    ld	$gp,40($sp)
    # Line 416
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    lui	$a4,0x4000
    sw	$a4,16384($zero)
    # Line 417
    li	$a3,242
    sw	$a3,16384($zero)
    ld	$a1,16($sp)
    # Line 414
    ld	$v1,32($sp)
    # Line 413
    ld	$a5,24($sp)
    sw	$a5,776($a0)
    # Line 414
    sw	$v1,832($a0)
    # Line 417
    ld	$a0,8($sp)
    lw	$a2,0($sp)
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    sw	$v1,16384($zero)
    ld	$ra,56($sp)
    # Line 418
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    # Line 419
    addiu	$sp,$sp,64
    jr	$ra
    # Line 418
    sw	$zero,16384($zero)
.L0d957be4:
    # Line 394
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d957b44
    ld	$ra,56($sp)
.end __glkonim_CopyConvolutionFilter1DEXT

# Function: __glkonim_CopyConvolutionFilter2DEXT
# Declared: Line 422 (Source lines: 425-456)
# Address: 0x0d957c00 - 0x0d957d38 (Size: 312 bytes, Frame: 208)
.globl __glkonim_CopyConvolutionFilter2DEXT
.ent __glkonim_CopyConvolutionFilter2DEXT
__glkonim_CopyConvolutionFilter2DEXT:
    # Line 425
    addiu	$sp,$sp,-80
    sd	$a5,48($sp)
    sd	$a4,40($sp)
    sd	$a3,16($sp)
    sd	$a2,8($sp)
    sd	$a1,32($sp)
    sd	$ra,72($sp)
    sd	$gp,64($sp)
    # Line 426
    lw	$at,4120($zero)
    li	$v0,1
    # Line 425
    lui	$v1,0x14
    sd	$s0,56($sp)
    addiu	$v1,$v1,-27688
    move	$s0,$a0
    # Line 426
    lw	$a0,4112($zero)
    sd	$a0,24($sp)
    beq	$at,$v0,.L0d957d24
    # Line 425
    addu	$gp,$t9,$v1
    # Line 432
    # lw $t9, -32744($gp) # &sub_0d950000
    ld	$a1,40($sp)
    addiu	$t9,$t9,29616
    move	$a0,$s0
    ld	$a2,48($sp)
    ld	$a3,32($sp)
    bal __glKonInitConvolutionState
    addiu	$a4,$sp,0
    # Line 433
    li	$ra,0x8011
    # Line 432
    beqz	$v0,.L0d957d10
    # Line 437
    ld	$at,24($sp)
    # Line 433
    beq	$s0,$ra,.L0d957c90
    # Line 453
    li	$v0,16
    # Line 436
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d957d14
    ld	$ra,72($sp)
.L0d957c90:
    # Line 437
    lbu	$at,3220($at)
    # Line 456
    ld	$s0,56($sp)
    ld	$ra,72($sp)
    # Line 437
    beqz	$at,.L0d957d10
    # Line 456
    ld	$gp,64($sp)
    # Line 453
    li	$v1,273
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    lui	$a6,0x4000
    sw	$a6,16384($zero)
    # Line 454
    li	$a5,243
    sw	$a5,16384($zero)
    ld	$a2,16($sp)
    ld	$a3,8($sp)
    # Line 449
    ld	$t0,32($sp)
    # Line 450
    ld	$a1,40($sp)
    # Line 449
    ld	$a7,24($sp)
    # Line 451
    ld	$a0,48($sp)
    sw	$a0,920($a7)
    # Line 450
    sw	$a1,916($a7)
    # Line 449
    sw	$t0,860($a7)
    # Line 454
    lw	$a4,0($sp)
    sw	$a4,16384($zero)
    sw	$a3,16384($zero)
    sw	$a2,16384($zero)
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    # Line 455
    sw	$v1,16384($zero)
    sw	$v0,16384($zero)
    # Line 456
    addiu	$sp,$sp,80
    jr	$ra
    # Line 455
    sw	$zero,16384($zero)
.L0d957d10:
    ld	$ra,72($sp)
.L0d957d14:
    ld	$s0,56($sp)
    # Line 456
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d957d24:
    # Line 429
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d957d14
    ld	$ra,72($sp)
.end __glkonim_CopyConvolutionFilter2DEXT

# Function: __glkonim_GetConvolutionFilterEXT
# Declared: Line 459 (Source lines: 461-527)
# Address: 0x0d957d40 - 0x0d957f90 (Size: 592 bytes, Frame: 144)
.globl __glkonim_GetConvolutionFilterEXT
.ent __glkonim_GetConvolutionFilterEXT
__glkonim_GetConvolutionFilterEXT:
    # Line 461
    addiu	$sp,$sp,-272
    sd	$a3,216($sp)
    sd	$a2,224($sp)
    sd	$ra,264($sp)
    sd	$gp,256($sp)
    sd	$s0,248($sp)
    # Line 467
    lw	$at,4120($zero)
    li	$v0,1
    # Line 461
    lui	$v1,0x14
    sd	$a1,240($sp)
    addiu	$v1,$v1,-28008
    move	$s0,$a0
    # Line 462
    lw	$a1,4112($zero)
    # Line 467
    li	$a0,0x8ad0
    # Line 462
    sd	$a1,232($sp)
    # Line 461
    addu	$gp,$t9,$v1
    # Line 467
    addu	$a0,$a1,$a0
    beq	$at,$v0,.L0d957f7c
    sd	$a0,208($sp)
    # Line 472
    # lw $t9, -32744($gp) # &sub_0d950000
    move	$a0,$s0
    move	$a1,$zero
    addiu	$t9,$t9,29616
    move	$a2,$zero
    addiu	$a4,$sp,0
    bal __glKonInitConvolutionState
    li	$a3,6408
    beqz	$v0,.L0d957df8
    # Line 475
    li	$ra,0x8010
    # Line 480
    ld	$v0,232($sp)
    # Line 475
    beq	$s0,$ra,.L0d957e0c
    # Line 480
    addiu	$v0,$v0,852
    # Line 475
    li	$at,0x8011
    beq	$s0,$at,.L0d957ddc
    # Line 483
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d957dfc
    ld	$ra,264($sp)
.L0d957ddc:
    sd	$v0,200($sp)
.L0d957de0:
    # Line 487
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,29424
    bal __glKonInitConvolutionState
    ld	$a0,240($sp)
    beqz	$v0,.L0d957e1c
    # Line 491
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
.L0d957df8:
    ld	$ra,264($sp)
.L0d957dfc:
    ld	$s0,248($sp)
    # Line 527
    ld	$gp,256($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d957e0c:
    # Line 477
    ld	$ra,232($sp)
    addiu	$ra,$ra,768
    b	.L0d957de0
    sd	$ra,200($sp)
.L0d957e1c:
    # Line 491
    addiu	$t9,$t9,29504
    bal __glKonInitConvolutionState
    ld	$a0,224($sp)
    bnez	$v0,.L0d957df8
    # Line 495
    ld	$a5,200($sp)
    lw	$a5,64($a5)
    beqz	$a5,.L0d957df8
    ld	$a6,200($sp)
    lw	$a6,68($a6)
    beqz	$a6,.L0d957df8
    # Line 502
    ld	$t0,240($sp)
    # Line 503
    ld	$t1,224($sp)
    # Line 504
    ld	$t2,216($sp)
    # Line 501
    ld	$a7,200($sp)
    # Line 500
    sw	$a5,8($sp)
    # Line 501
    lw	$a7,68($a7)
    # Line 505
    li	$t3,32
    sw	$t3,32($sp)
    # Line 504
    sw	$t2,28($sp)
    # Line 507
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 503
    sw	$t1,24($sp)
    # Line 502
    sw	$t0,20($sp)
    # Line 507
    addiu	$a0,$sp,8
    bal __glKonParseInput
    # Line 501
    sw	$a7,12($sp)
    # Line 507
    bnez	$v0,.L0d957dfc
    ld	$ra,264($sp)
    # Line 510
    # lw $t9, -32316($gp) # &__glKonParseErrorRead
    bal __glKonParseErrorRead
    addiu	$a0,$sp,8
    bnez	$v0,.L0d957dfc
    ld	$ra,264($sp)
    # Line 514
    # lw $t9, -31972($gp) # &__glkon_SuspendSelectfeed
    # Line 513
    li	$t2,273
    sw	$t2,16384($zero)
    li	$t1,16
    sw	$t1,16384($zero)
    lui	$t0,0x4000
    # Line 514
    bal __glkon_SuspendSelectfeed
    # Line 513
    sw	$t0,16384($zero)
    # Line 515
    lw	$t3,156($sp)
    lw	$t8,152($sp)
    li	$t9,244
    sw	$t9,16384($zero)
    # Line 516
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    # Line 515
    sw	$s0,16384($zero)
    sw	$t8,16384($zero)
    # Line 516
    addiu	$a0,$sp,8
    bal __glKonParseHostImage
    # Line 515
    sw	$t3,16384($zero)
    # Line 518
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    bal __glkona_wait_rdata
    nop
    # Line 519
    # lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
    bal __glkon_ResumeSelectfeed
    li	$s0,16
    # Line 521
    ld	$a4,208($sp)
    lw	$a4,412($a4)
    lw	$a6,176($sp)
    lw	$a7,8($a4)
    multu	$a6,$a7
    lw	$a2,180($sp)
    lw	$a5,8($sp)
    mflo	$a6
    nop
    nop
    mult	$a5,$a2
    lw	$a4,12($a4)
    mflo	$a3
    nop
    nop
    multu	$a2,$a4
    ld	$a1,232($sp)
    # lw $t9, -32252($gp) # &__glkonHostCopy
    lw	$a1,31588($a1)
    lw	$a5,12($sp)
    # Line 520
    li	$a2,273
    sw	$a2,16384($zero)
    # Line 521
    addiu	$a0,$sp,8
    ld	$a2,216($sp)
    addiu	$a1,$a1,8
    # Line 520
    sw	$s0,16384($zero)
    # Line 521
    mflo	$a4
    # Line 520
    sw	$zero,16384($zero)
    # Line 521
    bal __glkonHostCopy
    addu	$a2,$a2,$a6
    b	.L0d957dfc
    ld	$ra,264($sp)
.L0d957f7c:
    # Line 469
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d957dfc
    ld	$ra,264($sp)
.end __glkonim_GetConvolutionFilterEXT

# Function: __glkonim_GetSeparableFilterEXT
# Declared: Line 542 (Source lines: 544-619)
# Address: 0x0d957f90 - 0x0d958264 (Size: 724 bytes, Frame: 144)
.globl __glkonim_GetSeparableFilterEXT
.ent __glkonim_GetSeparableFilterEXT
__glkonim_GetSeparableFilterEXT:
    # Line 544
    addiu	$sp,$sp,-272
    sd	$a4,200($sp)
    sd	$a3,216($sp)
    sd	$a2,232($sp)
    sd	$ra,264($sp)
    sd	$gp,256($sp)
    sd	$s0,248($sp)
    # Line 551
    lw	$at,4120($zero)
    li	$v0,1
    # Line 544
    lui	$v1,0x14
    sd	$a1,240($sp)
    addiu	$v1,$v1,-28600
    move	$s0,$a0
    # Line 545
    lw	$a1,4112($zero)
    # Line 551
    li	$a0,0x8ad0
    # Line 545
    sd	$a1,224($sp)
    # Line 544
    addu	$gp,$t9,$v1
    # Line 551
    addu	$a0,$a1,$a0
    beq	$at,$v0,.L0d958250
    sd	$a0,208($sp)
    # Line 556
    # lw $t9, -32744($gp) # &sub_0d950000
    move	$a0,$s0
    move	$a1,$zero
    addiu	$t9,$t9,29616
    move	$a2,$zero
    addiu	$a4,$sp,0
    bal __glKonInitConvolutionState
    li	$a3,6408
    beqz	$v0,.L0d95801c
    # Line 557
    li	$ra,0x8012
    beq	$s0,$ra,.L0d958030
    # Line 564
    nop	# was lw $t9, -32744($gp) # &sub_0d950000
    # Line 560
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d95801c:
    ld	$ra,264($sp)
.L0d958020:
    ld	$s0,248($sp)
    # Line 619
    ld	$gp,256($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d958030:
    # Line 564
    addiu	$t9,$t9,29424
    bal __glKonInitConvolutionState
    ld	$a0,240($sp)
    bnez	$v0,.L0d958020
    ld	$ra,264($sp)
    # Line 568
    # lw $t9, -32744($gp) # &sub_0d950000
    addiu	$t9,$t9,29504
    bal __glKonInitConvolutionState
    ld	$a0,232($sp)
    bnez	$v0,.L0d958020
    ld	$ra,264($sp)
    # Line 575
    ld	$a6,224($sp)
    lw	$a6,1000($a6)
    beqz	$a6,.L0d95801c
    ld	$a7,224($sp)
    lw	$a7,1004($a7)
    beqz	$a7,.L0d95801c
    # Line 585
    li	$t8,32
    sw	$t8,32($sp)
    # Line 581
    li	$t0,1
    sw	$t0,12($sp)
    # Line 580
    sw	$a6,8($sp)
    # Line 582
    ld	$t1,240($sp)
    # Line 583
    ld	$t2,232($sp)
    # Line 584
    ld	$t3,216($sp)
    # Line 587
    # lw $t9, -32312($gp) # &__glKonParseInput
    # Line 584
    sw	$t3,28($sp)
    # Line 583
    sw	$t2,24($sp)
    # Line 587
    addiu	$a0,$sp,8
    bal __glKonParseInput
    # Line 582
    sw	$t1,20($sp)
    # Line 587
    bnez	$v0,.L0d95801c
    # Line 590
    nop	# was lw $t9, -32316($gp) # &__glKonParseErrorRead
    bal __glKonParseErrorRead
    addiu	$a0,$sp,8
    bnez	$v0,.L0d95801c
    # Line 594
    nop	# was lw $t9, -31972($gp) # &__glkon_SuspendSelectfeed
    # Line 593
    li	$v1,273
    sw	$v1,16384($zero)
    li	$v0,16
    sw	$v0,16384($zero)
    lui	$at,0x4000
    # Line 594
    bal __glkon_SuspendSelectfeed
    # Line 593
    sw	$at,16384($zero)
    # Line 595
    lw	$a1,156($sp)
    lw	$a2,152($sp)
    li	$a3,247
    sw	$a3,16384($zero)
    # Line 596
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    # Line 595
    sw	$s0,16384($zero)
    sw	$a2,16384($zero)
    # Line 596
    addiu	$a0,$sp,8
    bal __glKonParseHostImage
    # Line 595
    sw	$a1,16384($zero)
    # Line 598
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    bal __glkona_wait_rdata
    nop
    # Line 599
    # lw $t9, -31968($gp) # &__glkon_ResumeSelectfeed
    bal __glkon_ResumeSelectfeed
    li	$s0,16
    # Line 601
    ld	$a4,208($sp)
    lw	$a4,412($a4)
    lw	$a6,176($sp)
    lw	$a7,8($a4)
    multu	$a6,$a7
    lw	$a2,180($sp)
    lw	$a5,8($sp)
    mflo	$a6
    nop
    nop
    mult	$a5,$a2
    lw	$a4,12($a4)
    mflo	$a3
    nop
    nop
    multu	$a2,$a4
    ld	$a1,224($sp)
    # lw $t9, -32252($gp) # &__glkonHostCopy
    lw	$a1,31588($a1)
    lw	$a5,12($sp)
    # Line 600
    li	$a2,273
    sw	$a2,16384($zero)
    # Line 601
    addiu	$a0,$sp,8
    ld	$a2,216($sp)
    addiu	$a1,$a1,8
    # Line 600
    sw	$s0,16384($zero)
    # Line 601
    mflo	$a4
    # Line 600
    sw	$zero,16384($zero)
    # Line 601
    bal __glkonHostCopy
    addu	$a2,$a2,$a6
    ld	$s0,224($sp)
    lw	$ra,1000($s0)
    lw	$t8,1004($s0)
    # Line 607
    # lw $t9, -32620($gp) # &.rodata
    # Line 601
    slt	$at,$t8,$ra
    movz	$ra,$t8,$at
    # Line 607
    addiu	$t9,$t9,10992
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$ra,180($sp)
    lw	$t9,0($t9)
    mult	$t9,$ra
    lw	$s0,31588($s0)
    # Line 612
    # lw $t9, -32308($gp) # &__glKonParseHostImage
    # Line 607
    mflo	$ra
    # Line 612
    addiu	$a0,$sp,8
    # Line 607
    addu	$s0,$s0,$ra
    # Line 611
    sw	$t8,8($sp)
    # Line 612
    bal __glKonParseHostImage
    # Line 607
    addiu	$s0,$s0,8
    # Line 613
    ld	$t0,208($sp)
    lw	$t0,412($t0)
    lw	$t2,176($sp)
    lw	$t3,8($t0)
    multu	$t2,$t3
    lw	$a7,180($sp)
    lw	$t1,8($sp)
    mflo	$a6
    nop
    nop
    mult	$t1,$a7
    lw	$t0,12($t0)
    mflo	$a3
    nop
    nop
    multu	$a7,$t0
    # lw $t9, -32252($gp) # &__glkonHostCopy
    move	$a1,$s0
    ld	$a2,200($sp)
    addiu	$a0,$sp,8
    mflo	$a4
    lw	$a5,12($sp)
    bal __glkonHostCopy
    addu	$a2,$a2,$a6
    b	.L0d958020
    ld	$ra,264($sp)
.L0d958250:
    # Line 553
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d958020
    ld	$ra,264($sp)
.end __glkonim_GetSeparableFilterEXT

# Function: __glkonim_ConvolutionParameteriEXT
# Declared: Line 628 (Source lines: 629-631)
# Address: 0x0d958270 - 0x0d9582a4 (Size: 52 bytes, Frame: 16)
.globl __glkonim_ConvolutionParameteriEXT
.ent __glkonim_ConvolutionParameteriEXT
__glkonim_ConvolutionParameteriEXT:
    # Line 629
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-29336
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 630
    # lw $t9, -31048($gp) # &__glkonim_PixelTransformParameteriSGI
    # Line 629
    sd	$ra,0($sp)
    # Line 630
    jal	__glkonim_PixelTransformParameteriSGI
    nop
    ld	$ra,0($sp)
    # Line 631
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_ConvolutionParameteriEXT

# Function: __glkonim_ConvolutionParameterivEXT
# Declared: Line 634 (Source lines: 635-637)
# Address: 0x0d9582b0 - 0x0d9582e4 (Size: 52 bytes, Frame: 16)
.globl __glkonim_ConvolutionParameterivEXT
.ent __glkonim_ConvolutionParameterivEXT
__glkonim_ConvolutionParameterivEXT:
    # Line 635
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-29400
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 636
    # lw $t9, -31044($gp) # &__glkonim_PixelTransformParameterivSGI
    # Line 635
    sd	$ra,0($sp)
    # Line 636
    jal	__glkonim_PixelTransformParameterivSGI
    nop
    ld	$ra,0($sp)
    # Line 637
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_ConvolutionParameterivEXT

# Function: __glkonim_ConvolutionParameterfEXT
# Declared: Line 640 (Source lines: 641-643)
# Address: 0x0d9582f0 - 0x0d958324 (Size: 52 bytes, Frame: 16)
.globl __glkonim_ConvolutionParameterfEXT
.ent __glkonim_ConvolutionParameterfEXT
__glkonim_ConvolutionParameterfEXT:
    # Line 641
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-29464
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 642
    # lw $t9, -31056($gp) # &__glkonim_PixelTransformParameterfSGI
    # Line 641
    sd	$ra,0($sp)
    # Line 642
    jal	__glkonim_PixelTransformParameterfSGI
    nop
    ld	$ra,0($sp)
    # Line 643
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_ConvolutionParameterfEXT

# Function: __glkonim_ConvolutionParameterfvEXT
# Declared: Line 646 (Source lines: 647-649)
# Address: 0x0d958330 - 0x0d958364 (Size: 52 bytes, Frame: 16)
.globl __glkonim_ConvolutionParameterfvEXT
.ent __glkonim_ConvolutionParameterfvEXT
__glkonim_ConvolutionParameterfvEXT:
    # Line 647
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-29528
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 648
    # lw $t9, -31052($gp) # &__glkonim_PixelTransformParameterfvSGI
    # Line 647
    sd	$ra,0($sp)
    # Line 648
    jal	__glkonim_PixelTransformParameterfvSGI
    nop
    ld	$ra,0($sp)
    # Line 649
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_ConvolutionParameterfvEXT

# Function: __glkonim_GetConvolutionParameterivEXT
# Declared: Line 659 (Source lines: 660-662)
# Address: 0x0d958370 - 0x0d9583a4 (Size: 52 bytes, Frame: 16)
.globl __glkonim_GetConvolutionParameterivEXT
.ent __glkonim_GetConvolutionParameterivEXT
__glkonim_GetConvolutionParameterivEXT:
    # Line 660
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-29592
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 661
    # lw $t9, -31036($gp) # &__glkonim_GetPixelTransformParameterivSGI
    # Line 660
    sd	$ra,0($sp)
    # Line 661
    jal	__glkonim_GetPixelTransformParameterivSGI
    nop
    ld	$ra,0($sp)
    # Line 662
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_GetConvolutionParameterivEXT

# Function: __glkonim_GetConvolutionParameterfvEXT
# Declared: Line 665 (Source lines: 666-668)
# Address: 0x0d9583b0 - 0x0d9583e4 (Size: 52 bytes, Frame: 16)
.globl __glkonim_GetConvolutionParameterfvEXT
.ent __glkonim_GetConvolutionParameterfvEXT
__glkonim_GetConvolutionParameterfvEXT:
    # Line 666
    lui	$at,0x14
    addiu	$sp,$sp,-16
    addiu	$at,$at,-29656
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 667
    # lw $t9, -31040($gp) # &__glkonim_GetPixelTransformParameterfvSGI
    # Line 666
    sd	$ra,0($sp)
    # Line 667
    jal	__glkonim_GetPixelTransformParameterfvSGI
    nop
    ld	$ra,0($sp)
    # Line 668
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_GetConvolutionParameterfvEXT

# Function: __glkonle_ConvolutionFilter1DEXT
# Declared: Line 678 (Source lines: 679-705)
# Address: 0x0d9583f0 - 0x0d9584d0 (Size: 224 bytes, Frame: 128)
.globl __glkonle_ConvolutionFilter1DEXT
.ent __glkonle_ConvolutionFilter1DEXT
__glkonle_ConvolutionFilter1DEXT:
    # Line 682
    lw	$a3,4112($zero)
    # Line 679
    addiu	$sp,$sp,-128
    # Line 687
    lw	$a2,4120($zero)
    li	$v0,2
    # Line 679
    sd	$s0,104($sp)
    lui	$at,0x14
    move	$s0,$a0
    sd	$ra,112($sp)
    addiu	$at,$at,-29720
    sd	$gp,96($sp)
    # Line 687
    beqz	$a2,.L0d95846c
    # Line 679
    addu	$gp,$t9,$at
    # Line 687
    beq	$a2,$v0,.L0d95845c
    # Line 693
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 694
    lw	$v0,20($s0)
    ld	$ra,112($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    # Line 705
    ld	$gp,96($sp)
    # Line 694
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    # Line 705
    ld	$s0,104($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 694
    addiu	$v0,$v0,24
.L0d95845c:
    # Line 690
    lw	$t9,11840($a3)
    jalr	$t9
    move	$a0,$a3
    # Line 691
    sw	$zero,4120($zero)
.L0d95846c:
    # Line 699
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    bal __glKonSetPixelLEModes
    addiu	$a0,$sp,0
    # Line 700
    lw	$a4,16($s0)
    # lw $t9, -32188($gp) # &__glkonim_ConvolutionFilter1DEXT
    lw	$a3,12($s0)
    addiu	$a5,$s0,24
    lw	$a2,8($s0)
    lw	$a1,4($s0)
    bal __glkonim_ConvolutionFilter1DEXT
    li	$a0,0x8010
    # Line 704
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    bal __glKonUnsetLEModes
    addiu	$a0,$sp,0
    # Line 705
    lw	$v0,20($s0)
    ld	$ra,112($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,96($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,104($sp)
    addiu	$sp,$sp,128
    jr	$ra
    addiu	$v0,$v0,24
.end __glkonle_ConvolutionFilter1DEXT

# Function: __glkonle_ConvolutionFilter2DEXT
# Declared: Line 709 (Source lines: 710-739)
# Address: 0x0d9584d0 - 0x0d9585b4 (Size: 228 bytes, Frame: 128)
.globl __glkonle_ConvolutionFilter2DEXT
.ent __glkonle_ConvolutionFilter2DEXT
__glkonle_ConvolutionFilter2DEXT:
    # Line 713
    lw	$a3,4112($zero)
    # Line 710
    addiu	$sp,$sp,-128
    # Line 719
    lw	$a2,4120($zero)
    li	$v0,2
    # Line 710
    sd	$s0,104($sp)
    lui	$at,0x14
    move	$s0,$a0
    sd	$ra,112($sp)
    addiu	$at,$at,-29944
    sd	$gp,96($sp)
    # Line 719
    beqz	$a2,.L0d95854c
    # Line 710
    addu	$gp,$t9,$at
    # Line 719
    beq	$a2,$v0,.L0d95853c
    # Line 725
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 726
    lw	$v0,24($s0)
    ld	$ra,112($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    # Line 739
    ld	$gp,96($sp)
    # Line 726
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    # Line 739
    ld	$s0,104($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 726
    addiu	$v0,$v0,28
.L0d95853c:
    # Line 722
    lw	$t9,11840($a3)
    jalr	$t9
    move	$a0,$a3
    # Line 723
    sw	$zero,4120($zero)
.L0d95854c:
    # Line 731
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    bal __glKonSetPixelLEModes
    addiu	$a0,$sp,0
    # Line 732
    lw	$a5,20($s0)
    lw	$a4,16($s0)
    # lw $t9, -32184($gp) # &__glkonim_ConvolutionFilter2DEXT
    lw	$a3,12($s0)
    addiu	$a6,$s0,28
    lw	$a2,8($s0)
    lw	$a1,4($s0)
    bal __glkonim_ConvolutionFilter2DEXT
    li	$a0,0x8011
    # Line 737
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    bal __glKonUnsetLEModes
    addiu	$a0,$sp,0
    # Line 739
    lw	$v0,24($s0)
    ld	$ra,112($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,96($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,104($sp)
    addiu	$sp,$sp,128
    jr	$ra
    addiu	$v0,$v0,28
.end __glkonle_ConvolutionFilter2DEXT

# Function: __glkonle_SeparableFilter2DEXT
# Declared: Line 756 (Source lines: 757-787)
# Address: 0x0d9585c0 - 0x0d9586c0 (Size: 256 bytes, Frame: 128)
.globl __glkonle_SeparableFilter2DEXT
.ent __glkonle_SeparableFilter2DEXT
__glkonle_SeparableFilter2DEXT:
    # Line 760
    lw	$a3,4112($zero)
    # Line 757
    addiu	$sp,$sp,-128
    # Line 765
    lw	$a2,4120($zero)
    li	$v0,2
    # Line 757
    sd	$s0,104($sp)
    lui	$at,0x14
    move	$s0,$a0
    sd	$ra,112($sp)
    addiu	$at,$at,-30184
    sd	$gp,96($sp)
    # Line 765
    beqz	$a2,.L0d958644
    # Line 757
    addu	$gp,$t9,$at
    # Line 765
    beq	$a2,$v0,.L0d958634
    # Line 771
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 772
    lw	$v1,28($s0)
    lw	$v0,24($s0)
    addu	$v0,$v0,$v1
    ld	$ra,112($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    # Line 787
    ld	$gp,96($sp)
    # Line 772
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    # Line 787
    ld	$s0,104($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 772
    addiu	$v0,$v0,32
.L0d958634:
    # Line 768
    lw	$t9,11840($a3)
    jalr	$t9
    move	$a0,$a3
    # Line 769
    sw	$zero,4120($zero)
.L0d958644:
    # Line 778
    # lw $t9, -32284($gp) # &__glKonSetPixelLEModes
    bal __glKonSetPixelLEModes
    addiu	$a0,$sp,0
    # Line 779
    lw	$a5,20($s0)
    lw	$a4,16($s0)
    # lw $t9, -32180($gp) # &__glkonim_SeparableFilter2DEXT
    lw	$a7,24($s0)
    addiu	$a6,$s0,32
    lw	$a3,12($s0)
    lw	$a2,8($s0)
    li	$a0,0x8012
    sll	$a7,$a7,0x5
    lw	$a1,4($s0)
    bal __glkonim_SeparableFilter2DEXT
    addu	$a7,$s0,$a7
    # Line 785
    # lw $t9, -32280($gp) # &__glKonUnsetLEModes
    bal __glKonUnsetLEModes
    addiu	$a0,$sp,0
    # Line 787
    lw	$v1,28($s0)
    lw	$v0,24($s0)
    addu	$v0,$v0,$v1
    ld	$ra,112($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,96($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,104($sp)
    addiu	$sp,$sp,128
    jr	$ra
    addiu	$v0,$v0,32
.end __glkonle_SeparableFilter2DEXT

.rdata
_lit_3f800000:
    .word 0x3f800000

