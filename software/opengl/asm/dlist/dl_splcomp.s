# Source: ../dlist/dl_splcomp.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_splcomp.c
# Total Functions: 33

.text

# Function: __glsplc_InvalidValue
# Declared: Line 46 (Source lines: 46-49)
# Address: 0x0d990de0 - 0x0d990e18 (Size: 56 bytes, Frame: 16)
.globl __glsplc_InvalidValue
.ent __glsplc_InvalidValue
__glsplc_InvalidValue:
    # Line 46
    addiu	$sp,$sp,-16
    # Line 48
    lw	$at,4112($zero)
    # Line 46
    lui	$v0,0x10
    sd	$gp,8($sp)
    addiu	$v0,$v0,504
    addu	$gp,$t9,$v0
    # Line 48
    lw	$t9,5040($at)
    # Line 46
    sd	$ra,0($sp)
    # Line 48
    jalr	$t9
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 49
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_InvalidValue

# Function: __glsplc_InvalidEnum
# Declared: Line 52 (Source lines: 52-55)
# Address: 0x0d990e20 - 0x0d990e58 (Size: 56 bytes, Frame: 16)
.globl __glsplc_InvalidEnum
.ent __glsplc_InvalidEnum
__glsplc_InvalidEnum:
    # Line 52
    addiu	$sp,$sp,-16
    # Line 54
    lw	$at,4112($zero)
    # Line 52
    lui	$v0,0x10
    sd	$gp,8($sp)
    addiu	$v0,$v0,440
    addu	$gp,$t9,$v0
    # Line 54
    lw	$t9,5040($at)
    # Line 52
    sd	$ra,0($sp)
    # Line 54
    jalr	$t9
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 55
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_InvalidEnum

# Function: __glsplc_InvalidOperation
# Declared: Line 58 (Source lines: 58-61)
# Address: 0x0d990e60 - 0x0d990e98 (Size: 56 bytes, Frame: 16)
.globl __glsplc_InvalidOperation
.ent __glsplc_InvalidOperation
__glsplc_InvalidOperation:
    # Line 58
    addiu	$sp,$sp,-16
    # Line 60
    lw	$at,4112($zero)
    # Line 58
    lui	$v0,0x10
    sd	$gp,8($sp)
    addiu	$v0,$v0,376
    addu	$gp,$t9,$v0
    # Line 60
    lw	$t9,5040($at)
    # Line 58
    sd	$ra,0($sp)
    # Line 60
    jalr	$t9
    li	$a0,1282
    ld	$ra,0($sp)
    # Line 61
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_InvalidOperation

# Function: __glsplc_Error
# Declared: Line 64 (Source lines: 64-67)
# Address: 0x0d990ea0 - 0x0d990ed8 (Size: 56 bytes, Frame: 16)
.globl __glsplc_Error
.ent __glsplc_Error
__glsplc_Error:
    # Line 64
    addiu	$sp,$sp,-16
    # Line 66
    lw	$at,4112($zero)
    # Line 64
    lui	$v0,0x10
    sd	$gp,8($sp)
    addiu	$v0,$v0,312
    addu	$gp,$t9,$v0
    # Line 66
    lw	$t9,5040($at)
    # Line 64
    sd	$ra,0($sp)
    # Line 66
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 67
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_Error

# Function: __glsplc_UnimplementedExtension
# Declared: Line 70 (Source lines: 70-73)
# Address: 0x0d990ee0 - 0x0d990f18 (Size: 56 bytes, Frame: 16)
.globl __glsplc_UnimplementedExtension
.ent __glsplc_UnimplementedExtension
__glsplc_UnimplementedExtension:
    # Line 70
    addiu	$sp,$sp,-16
    # Line 72
    lw	$at,4112($zero)
    # Line 70
    lui	$v0,0x10
    sd	$gp,8($sp)
    addiu	$v0,$v0,248
    addu	$gp,$t9,$v0
    # Line 72
    lw	$t9,5040($at)
    # Line 70
    sd	$ra,0($sp)
    # Line 72
    jalr	$t9
    li	$a0,1282
    ld	$ra,0($sp)
    # Line 73
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_UnimplementedExtension

# Function: __glsplc_CallList
# Declared: Line 85 (Source lines: 86-97)
# Address: 0x0d990f20 - 0x0d990f8c (Size: 108 bytes, Frame: 32)
.globl __glsplc_CallList
.ent __glsplc_CallList
__glsplc_CallList:
    # Line 86
    addiu	$sp,$sp,-32
    sd	$a0,0($sp)
    lui	$v0,0x10
    sd	$ra,16($sp)
    addiu	$v0,$v0,184
    sd	$gp,8($sp)
    beqz	$a0,.L0d990f78
    addu	$gp,$t9,$v0
    # Line 94
    # lw $t9, -32516($gp) # &__glSPDlalloc
    move	$a1,$zero
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0d990f6c
    ld	$ra,16($sp)
    # Line 97
    ld	$gp,8($sp)
    # Line 96
    ld	$v1,0($sp)
    # Line 97
    addiu	$sp,$sp,32
    jr	$ra
    # Line 96
    sw	$v1,0($v0)
.L0d990f6c:
    # Line 97
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d990f78:
    # Line 90
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    b	.L0d990f6c
    ld	$ra,16($sp)
.end __glsplc_CallList

# Function: __glsplc_CallLists
# Declared: Line 99 (Source lines: 100-121)
# Address: 0x0d990f90 - 0x0d99108c (Size: 252 bytes, Frame: 48)
.globl __glsplc_CallLists
.ent __glsplc_CallLists
__glsplc_CallLists:
    # Line 100
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    move	$v0,$a2
    sd	$s0,24($sp)
    move	$s0,$a1
    sd	$s1,16($sp)
    lui	$at,0x10
    move	$s1,$a0
    sd	$s2,40($sp)
    addiu	$at,$at,72
    sd	$gp,8($sp)
    bltz	$a0,.L0d991078
    addu	$gp,$t9,$at
    # Line 109
    sltiu	$v1,$a1,5120
    sltiu	$a0,$a1,5130
    la	$a1,__GLdlsize_tab
    bnez	$v1,.L0d991008
    addu	$a1,$s0,$a1
    beqz	$a0,.L0d99100c
    negu	$s2,$s1
    lbu	$a1,-5120($a1)
    mult	$a1,$s1
    mflo	$s2
    bgez	$s2,.L0d991018
    sd	$a2,0($sp)
    # Line 111
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d990ff8:
    bal __glsplc_InvalidEnum
    nop
    b	.L0d991040
    ld	$s2,40($sp)
.L0d991008:
    # Line 109
    negu	$s2,$s1
.L0d99100c:
    bltz	$s2,.L0d990ff8
    # Line 111
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    sd	$v0,0($sp)
.L0d991018:
    # Line 115
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a2,-4
    addiu	$a0,$s2,3
    li	$a1,1
    and	$a0,$a0,$a2
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    bnez	$v0,.L0d991058
    # Line 119
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$s2,40($sp)
.L0d991040:
    ld	$ra,32($sp)
    # Line 121
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d991058:
    # Line 119
    ld	$a1,0($sp)
    move	$a2,$s2
    # Line 118
    sw	$s0,4($v0)
    # Line 119
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 117
    sw	$s1,0($v0)
    b	.L0d991040
    ld	$s2,40($sp)
.L0d991078:
    # Line 106
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    b	.L0d991040
    ld	$s2,40($sp)
.end __glsplc_CallLists

# Function: __glsplc_Bitmap
# Declared: Line 127 (Source lines: 131-159)
# Address: 0x0d991090 - 0x0d9911ac (Size: 284 bytes, Frame: 224)
.globl __glsplc_Bitmap
.ent __glsplc_Bitmap
__glsplc_Bitmap:
    # Line 135
    lw	$v0,4112($zero)
    # Line 131
    addiu	$sp,$sp,-96
    move	$a2,$a6
    mov.s	$f4,$f17
    sd	$s0,56($sp)
    mov.s	$f5,$f16
    move	$s0,$a1
    sd	$s1,64($sp)
    lui	$at,0x10
    mov.s	$f6,$f15
    move	$s1,$a0
    sd	$ra,80($sp)
    addiu	$at,$at,-184
    mov.s	$f7,$f14
    sd	$gp,72($sp)
    # Line 137
    bltz	$a0,.L0d991198
    # Line 131
    addu	$gp,$t9,$at
    sdc1	$f14,24($sp)
    sdc1	$f15,16($sp)
    sdc1	$f16,8($sp)
    sdc1	$f17,0($sp)
    sd	$a6,48($sp)
    # Line 137
    bltz	$a1,.L0d991198
    sd	$v0,40($sp)
    # Line 145
    addiu	$a1,$a0,7
    sra	$a1,$a1,0x3
    mult	$s0,$a1
    # lw $t9, -32516($gp) # &__glSPDlalloc
    mflo	$a0
    li	$a2,-4
    addiu	$a0,$a0,3
    li	$a1,4
    and	$a0,$a0,$a2
    sd	$a0,32($sp)
    jal	__glSPDlalloc
    addiu	$a0,$a0,32
    bnez	$v0,.L0d99113c
    ld	$ra,80($sp)
.L0d991128:
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    # Line 159
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d99113c:
    # Line 157
    ld	$a5,48($sp)
    # Line 149
    sw	$s0,4($v0)
    # Line 157
    ld	$a0,40($sp)
    # Line 148
    sw	$s1,0($v0)
    # Line 154
    ld	$a2,32($sp)
    sw	$a2,24($v0)
    # Line 150
    ldc1	$f0,24($sp)
    # Line 151
    ldc1	$f1,16($sp)
    # Line 153
    ldc1	$f3,0($sp)
    # Line 152
    ldc1	$f2,8($sp)
    # Line 153
    swc1	$f3,20($v0)
    # Line 157
    # lw $t9, -28012($gp) # &__glFillImage
    addiu	$a6,$v0,32
    li	$a4,6656
    # Line 152
    swc1	$f2,16($v0)
    # Line 157
    li	$a3,6400
    move	$a1,$s1
    # Line 151
    swc1	$f1,12($v0)
    # Line 157
    move	$a2,$s0
    jal	__glFillImage
    # Line 150
    swc1	$f0,8($v0)
    b	.L0d991128
    ld	$ra,80($sp)
.L0d991198:
    # Line 138
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    b	.L0d991128
    ld	$ra,80($sp)
.end __glsplc_Bitmap

# Function: __glsplc_PolygonStipple
# Declared: Line 161 (Source lines: 162-173)
# Address: 0x0d9911b0 - 0x0d99123c (Size: 140 bytes, Frame: 32)
.globl __glsplc_PolygonStipple
.ent __glsplc_PolygonStipple
__glsplc_PolygonStipple:
    # Line 162
    lui	$v0,0x10
    # Line 164
    lw	$at,4112($zero)
    # Line 162
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-472
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 167
    # lw $t9, -28024($gp) # &__glImageSize
    li	$a3,6656
    # Line 162
    sd	$ra,16($sp)
    # Line 167
    li	$a2,6400
    li	$a1,32
    # Line 162
    sd	$a0,0($sp)
    # Line 167
    li	$a0,32
    jal	__glImageSize
    sd	$at,8($sp)
    # lw $t9, -32516($gp) # &__glSPDlalloc
    move	$a0,$v0
    jal	__glSPDlalloc
    li	$a1,101
    bnez	$v0,.L0d991214
    # Line 172
    nop	# was lw $t9, -28012($gp) # &__glFillImage
    ld	$ra,16($sp)
.L0d991208:
    # Line 173
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d991214:
    # Line 172
    move	$a6,$v0
    li	$a4,6656
    ld	$a0,8($sp)
    li	$a3,6400
    li	$a2,32
    ld	$a5,0($sp)
    jal	__glFillImage
    li	$a1,32
    b	.L0d991208
    ld	$ra,16($sp)
.end __glsplc_PolygonStipple

# Function: __glsplc_Map1f
# Declared: Line 183 (Source lines: 187-218)
# Address: 0x0d991240 - 0x0d99136c (Size: 300 bytes, Frame: 208)
.globl __glsplc_Map1f
.ent __glsplc_Map1f
__glsplc_Map1f:
    # Line 192
    lw	$at,4112($zero)
    # Line 187
    addiu	$sp,$sp,-80
    sd	$a5,24($sp)
    sdc1	$f14,8($sp)
    sd	$a0,16($sp)
    # Line 192
    sd	$at,32($sp)
    # Line 187
    sdc1	$f13,0($sp)
    lui	$v0,0x10
    sd	$ra,48($sp)
    addiu	$v0,$v0,-616
    sd	$gp,64($sp)
    addu	$gp,$t9,$v0
    # Line 194
    # lw $t9, -28456($gp) # &__glEvalComputeK
    # Line 187
    sd	$s0,40($sp)
    move	$s0,$a4
    sd	$s2,56($sp)
    move	$s2,$a3
    # Line 194
    jal	__glEvalComputeK
    sd	$s1,72($sp)
    # Line 200
    ldc1	$f1,8($sp)
    # Line 194
    bltz	$v0,.L0d991358
    move	$s1,$v0
    # Line 200
    ld	$v1,32($sp)
    lw	$v1,3768($v1)
    slt	$v1,$v1,$s0
    bnez	$v1,.L0d991330
    slt	$a0,$s2,$v0
    bnez	$a0,.L0d991334
    # Line 202
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 200
    blez	$s0,.L0d991330
    ldc1	$f0,0($sp)
    c.eq.s	$f0,$f1
    bc1t	.L0d991330
    # Line 206
    nop	# was lw $t9, -28356($gp) # &__glMap1_size
    move	$a0,$v0
    jal	__glMap1_size
    move	$a1,$s0
    # Line 209
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,142
    sll	$a0,$v0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,16
    beqz	$v0,.L0d99133c
    nop
    # Line 215
    sw	$s0,12($v0)
    # Line 217
    ld	$a3,24($sp)
    ld	$a5,16($sp)
    # Line 212
    sw	$a5,0($v0)
    # Line 214
    ldc1	$f3,8($sp)
    # Line 217
    # lw $t9, -28364($gp) # &__glFillMap1f
    addiu	$a4,$v0,16
    # Line 213
    ldc1	$f2,0($sp)
    # Line 217
    move	$a2,$s2
    move	$a1,$s0
    # Line 214
    swc1	$f3,8($v0)
    # Line 217
    move	$a0,$s1
    jal	__glFillMap1f
    # Line 213
    swc1	$f2,4($v0)
    b	.L0d991340
    ld	$s1,72($sp)
.L0d991330:
    # Line 202
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d991334:
    bal __glsplc_InvalidValue
    nop
.L0d99133c:
    ld	$s1,72($sp)
.L0d991340:
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s2,56($sp)
    # Line 218
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d991358:
    # Line 196
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    b	.L0d991340
    ld	$s1,72($sp)
.end __glsplc_Map1f

# Function: __glsplc_Map1d
# Declared: Line 220 (Source lines: 224-255)
# Address: 0x0d991370 - 0x0d9914b0 (Size: 320 bytes, Frame: 208)
.globl __glsplc_Map1d
.ent __glsplc_Map1d
__glsplc_Map1d:
    # Line 229
    lw	$at,4112($zero)
    # Line 224
    addiu	$sp,$sp,-80
    sd	$a5,24($sp)
    sdc1	$f14,8($sp)
    sd	$a0,16($sp)
    # Line 229
    sd	$at,32($sp)
    # Line 224
    sdc1	$f13,0($sp)
    lui	$v0,0x10
    sd	$ra,48($sp)
    addiu	$v0,$v0,-920
    sd	$gp,64($sp)
    addu	$gp,$t9,$v0
    # Line 231
    # lw $t9, -28456($gp) # &__glEvalComputeK
    # Line 224
    sd	$s0,40($sp)
    move	$s0,$a4
    sd	$s2,56($sp)
    move	$s2,$a3
    # Line 231
    jal	__glEvalComputeK
    sd	$s1,72($sp)
    # Line 237
    ldc1	$f1,8($sp)
    # Line 231
    bltz	$v0,.L0d99149c
    move	$s1,$v0
    # Line 237
    ld	$v1,32($sp)
    lw	$v1,3768($v1)
    slt	$v1,$v1,$s0
    bnez	$v1,.L0d991478
    # Line 239
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 237
    slt	$a0,$s2,$v0
    bnez	$a0,.L0d991478
    # Line 239
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 237
    blez	$s0,.L0d991478
    # Line 239
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 237
    ldc1	$f0,0($sp)
    c.eq.d	$f0,$f1
    bc1t	.L0d991478
    # Line 239
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 243
    # lw $t9, -28356($gp) # &__glMap1_size
    move	$a0,$v0
    jal	__glMap1_size
    move	$a1,$s0
    # Line 246
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,141
    sll	$a0,$v0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,16
    beqz	$v0,.L0d991480
    nop
    # Line 252
    sw	$s0,12($v0)
    # Line 254
    ld	$a3,24($sp)
    # Line 249
    ld	$a1,16($sp)
    # Line 251
    ldc1	$f3,8($sp)
    # Line 250
    ldc1	$f2,0($sp)
    # Line 254
    # lw $t9, -28360($gp) # &__glFillMap1d
    addiu	$a4,$v0,16
    # Line 249
    sw	$a1,0($v0)
    # Line 251
    cvt.s.d	$f3,$f3
    # Line 254
    move	$a2,$s2
    move	$a0,$s1
    # Line 250
    cvt.s.d	$f2,$f2
    # Line 251
    swc1	$f3,8($v0)
    # Line 254
    move	$a1,$s0
    jal	__glFillMap1d
    # Line 250
    swc1	$f2,4($v0)
    b	.L0d991484
    ld	$s1,72($sp)
    # Line 239
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d991478:
    bal __glsplc_InvalidValue
    nop
.L0d991480:
    ld	$s1,72($sp)
.L0d991484:
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s2,56($sp)
    # Line 255
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d99149c:
    # Line 233
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    b	.L0d991484
    ld	$s1,72($sp)
.end __glsplc_Map1d

# Function: __glsplc_Map2f
# Declared: Line 269 (Source lines: 275-312)
# Address: 0x0d9914b0 - 0x0d991634 (Size: 388 bytes, Frame: 160)
.globl __glsplc_Map2f
.ent __glsplc_Map2f
__glsplc_Map2f:
    # Line 280
    lw	$at,4112($zero)
    # Line 275
    addiu	$sp,$sp,-160
    sdc1	$f18,8($sp)
    sd	$a7,56($sp)
    sdc1	$f17,0($sp)
    sd	$a3,40($sp)
    sdc1	$f14,16($sp)
    sd	$a0,32($sp)
    # Line 280
    sd	$at,48($sp)
    # Line 275
    lui	$v0,0x10
    sdc1	$f13,24($sp)
    addiu	$v0,$v0,-1240
    sd	$gp,64($sp)
    addu	$gp,$t9,$v0
    # Line 282
    # lw $t9, -28456($gp) # &__glEvalComputeK
    # Line 275
    sd	$ra,72($sp)
    sd	$s1,80($sp)
    move	$s1,$a4
    # Line 282
    jal	__glEvalComputeK
    sd	$s0,88($sp)
    # Line 288
    ldc1	$f3,8($sp)
    # Line 282
    bltz	$v0,.L0d991620
    move	$s0,$v0
    # Line 288
    ld	$a0,48($sp)
    lw	$v0,164($sp)
    lw	$a0,3768($a0)
    slt	$v1,$a0,$v0
    bnez	$v1,.L0d9915fc
    slt	$a3,$a0,$s1
    ld	$a1,56($sp)
    slt	$a1,$a1,$s0
    bnez	$a1,.L0d991600
    # Line 292
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 288
    blez	$v0,.L0d9915fc
    ldc1	$f0,24($sp)
    ldc1	$f1,16($sp)
    c.eq.s	$f0,$f1
    bc1t	.L0d9915fc
    ld	$a2,40($sp)
    slt	$a2,$a2,$s0
    bnez	$a2,.L0d991600
    # Line 292
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 288
    bnez	$a3,.L0d991600
    # Line 292
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 288
    blez	$s1,.L0d9915fc
    ldc1	$f2,0($sp)
    c.eq.s $f2,$f3
    bc1t .L0d991600
    # Line 292
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 296
    # lw $t9, -28344($gp) # &__glMap2_size
    move	$a0,$s0
    move	$a1,$s1
    jal	__glMap2_size
    move	$a2,$v0
    # Line 299
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,144
    sll	$a0,$v0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,28
    beqz	$v0,.L0d991608
    # Line 311
    lw	$a5,172($sp)
    # Line 308
    lw	$a2,164($sp)
    # Line 305
    sw	$s1,12($v0)
    # Line 311
    ld	$a4,56($sp)
    ld	$a3,40($sp)
    ld	$a7,32($sp)
    # Line 308
    sw	$a2,24($v0)
    # Line 302
    sw	$a7,0($v0)
    # Line 303
    ldc1	$f4,24($sp)
    # Line 304
    ldc1	$f5,16($sp)
    # Line 307
    ldc1	$f7,8($sp)
    # Line 306
    ldc1	$f6,0($sp)
    # Line 307
    swc1	$f7,20($v0)
    # Line 311
    # lw $t9, -28352($gp) # &__glFillMap2f
    # Line 306
    swc1	$f6,16($v0)
    # Line 311
    addiu	$a6,$v0,28
    move	$a1,$s1
    # Line 304
    swc1	$f5,8($v0)
    # Line 311
    move	$a0,$s0
    jal	__glFillMap2f
    # Line 303
    swc1	$f4,4($v0)
    b	.L0d99160c
    # Line 312
    ld	$ra,72($sp)
.L0d9915fc:
    # Line 292
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d991600:
    bal __glsplc_InvalidValue
    nop
.L0d991608:
    # Line 312
    ld	$ra,72($sp)
.L0d99160c:
    ld	$s0,88($sp)
    ld	$gp,64($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d991620:
    # Line 284
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    b	.L0d99160c
    # Line 312
    ld	$ra,72($sp)
.end __glsplc_Map2f

# Function: __glsplc_Map2d
# Declared: Line 314 (Source lines: 320-357)
# Address: 0x0d991640 - 0x0d9917e0 (Size: 416 bytes, Frame: 160)
.globl __glsplc_Map2d
.ent __glsplc_Map2d
__glsplc_Map2d:
    # Line 325
    lw	$at,4112($zero)
    # Line 320
    addiu	$sp,$sp,-160
    sdc1	$f18,8($sp)
    sd	$a7,56($sp)
    sdc1	$f17,0($sp)
    sd	$a3,40($sp)
    sdc1	$f14,16($sp)
    sd	$a0,32($sp)
    # Line 325
    sd	$at,48($sp)
    # Line 320
    lui	$v0,0x10
    sdc1	$f13,24($sp)
    addiu	$v0,$v0,-1640
    sd	$gp,64($sp)
    addu	$gp,$t9,$v0
    # Line 327
    # lw $t9, -28456($gp) # &__glEvalComputeK
    # Line 320
    sd	$ra,72($sp)
    sd	$s1,80($sp)
    move	$s1,$a4
    # Line 327
    jal	__glEvalComputeK
    sd	$s0,88($sp)
    # Line 333
    ldc1	$f3,8($sp)
    # Line 327
    bltz	$v0,.L0d9917cc
    move	$s0,$v0
    # Line 333
    ld	$a0,48($sp)
    lw	$v0,164($sp)
    lw	$a0,3768($a0)
    slt	$v1,$a0,$v0
    bnez	$v1,.L0d9917a8
    slt	$a3,$a0,$s1
    ld	$a1,56($sp)
    slt	$a1,$a1,$s0
    bnez	$a1,.L0d9917ac
    # Line 337
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 333
    blez	$v0,.L0d9917ac
    # Line 337
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 333
    ldc1	$f0,24($sp)
    ldc1	$f1,16($sp)
    c.eq.d	$f0,$f1
    bc1t	.L0d9917a8
    ld	$a2,40($sp)
    slt	$a2,$a2,$s0
    bnez	$a2,.L0d9917ac
    # Line 337
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 333
    bnez	$a3,.L0d9917ac
    # Line 337
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 333
    blez	$s1,.L0d9917ac
    # Line 337
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 333
    ldc1	$f2,0($sp)
    c.eq.d $f2,$f3
    bc1t .L0d9917ac
    # Line 337
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 341
    # lw $t9, -28344($gp) # &__glMap2_size
    move	$a0,$s0
    move	$a1,$s1
    jal	__glMap2_size
    move	$a2,$v0
    # Line 344
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,143
    sll	$a0,$v0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,28
    beqz	$v0,.L0d9917b8
    # Line 357
    ld	$ra,72($sp)
    # Line 356
    lw	$a5,172($sp)
    # Line 353
    lw	$a2,164($sp)
    # Line 350
    sw	$s1,12($v0)
    # Line 356
    ld	$a4,56($sp)
    ld	$a3,40($sp)
    # Line 347
    ld	$a1,32($sp)
    # Line 353
    sw	$a2,24($v0)
    # Line 347
    sw	$a1,0($v0)
    # Line 356
    # lw $t9, -28348($gp) # &__glFillMap2d
    # Line 352
    ldc1	$f7,8($sp)
    # Line 351
    ldc1	$f6,0($sp)
    # Line 349
    ldc1	$f5,16($sp)
    # Line 348
    ldc1	$f4,24($sp)
    # Line 352
    cvt.s.d	$f7,$f7
    # Line 351
    cvt.s.d	$f6,$f6
    # Line 352
    swc1	$f7,20($v0)
    # Line 349
    cvt.s.d	$f5,$f5
    # Line 351
    swc1	$f6,16($v0)
    # Line 356
    addiu	$a6,$v0,28
    move	$a0,$s0
    # Line 348
    cvt.s.d	$f4,$f4
    # Line 349
    swc1	$f5,8($v0)
    # Line 356
    move	$a1,$s1
    jal	__glFillMap2d
    # Line 348
    swc1	$f4,4($v0)
    b	.L0d9917b8
    # Line 357
    ld	$ra,72($sp)
.L0d9917a8:
    # Line 337
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d9917ac:
    bal __glsplc_InvalidValue
    nop
    # Line 357
    ld	$ra,72($sp)
.L0d9917b8:
    ld	$s0,88($sp)
    ld	$gp,64($sp)
    ld	$s1,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9917cc:
    # Line 329
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    b	.L0d9917b8
    # Line 357
    ld	$ra,72($sp)
.end __glsplc_Map2d

# Function: __glsplc_DeformationMap3fSGIX
# Declared: Line 374 (Source lines: 382-410)
# Address: 0x0d9917e0 - 0x0d99194c (Size: 364 bytes, Frame: 192)
.globl __glsplc_DeformationMap3fSGIX
.ent __glsplc_DeformationMap3fSGIX
__glsplc_DeformationMap3fSGIX:
    # Line 382
    addiu	$sp,$sp,-192
    sdc1	$f18,48($sp)
    sdc1	$f17,64($sp)
    sd	$a7,88($sp)
    sdc1	$f14,72($sp)
    sd	$a3,96($sp)
    sdc1	$f13,56($sp)
    sd	$a0,80($sp)
    sd	$ra,112($sp)
    sd	$s0,104($sp)
    # Line 385
    lw	$at,196($sp)
    lw	$v1,220($sp)
    lw	$a1,228($sp)
    lwc1	$f0,200($sp)
    lwc1	$f1,208($sp)
    sw	$a1,36($sp)
    # Line 382
    lui	$v0,0x10
    # Line 385
    sw	$v1,28($sp)
    # Line 382
    addiu	$v0,$v0,-2056
    sd	$gp,120($sp)
    addu	$gp,$t9,$v0
    # Line 385
    # lw $t9, -28500($gp) # &__glCheckMap3Params
    sw	$at,4($sp)
    swc1	$f1,16($sp)
    # Line 382
    move	$s0,$a4
    # Line 385
    jal	__glCheckMap3Params
    swc1	$f0,8($sp)
    li	$a2,1281
    beq	$v0,$a2,.L0d991938
    li	$a3,1280
    beq	$v0,$a3,.L0d991924
    # Line 394
    lw	$a4,196($sp)
    mult	$s0,$a4
    lw	$a2,228($sp)
    mflo	$a3
    nop
    nop
    mult	$a2,$a3
    mflo	$a1
    # lw $t9, -32516($gp) # &__glSPDlalloc
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    li	$a1,248
    sll	$a0,$a0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,40
    bnez	$v0,.L0d9918b0
    ld	$ra,112($sp)
.L0d9918a0:
    ld	$s0,104($sp)
    # Line 389
    ld	$gp,120($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9918b0:
    # Line 410
    lw	$a6,236($sp)
    ld	$a3,88($sp)
    ld	$a1,96($sp)
    ld	$t0,80($sp)
    # Line 400
    ldc1	$f2,56($sp)
    # Line 401
    ldc1	$f3,72($sp)
    # Line 404
    ldc1	$f5,48($sp)
    # Line 408
    lw	$a4,228($sp)
    sw	$a4,36($v0)
    # Line 407
    lwc1	$f7,208($sp)
    # Line 403
    ldc1	$f4,64($sp)
    # Line 407
    swc1	$f7,32($v0)
    # Line 406
    lwc1	$f6,200($sp)
    # Line 410
    # lw $t9, -28508($gp) # &__glFillDeformationMap3f
    # Line 406
    swc1	$f6,28($v0)
    # Line 405
    lw	$a2,196($sp)
    # Line 402
    sw	$s0,12($v0)
    # Line 403
    swc1	$f4,16($v0)
    # Line 404
    swc1	$f5,20($v0)
    # Line 405
    sw	$a2,24($v0)
    # Line 410
    lw	$a5,220($sp)
    # Line 401
    swc1	$f3,8($v0)
    # Line 410
    addiu	$a7,$v0,40
    # Line 400
    swc1	$f2,4($v0)
    # Line 410
    move	$a0,$s0
    jal	__glFillDeformationMap3f
    # Line 399
    sw	$t0,0($v0)
    b	.L0d9918a0
    ld	$ra,112($sp)
.L0d991924:
    # Line 391
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    b	.L0d9918a0
    ld	$ra,112($sp)
.L0d991938:
    # Line 388
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    b	.L0d9918a0
    ld	$ra,112($sp)
.end __glsplc_DeformationMap3fSGIX

# Function: __glsplc_DeformationMap3dSGIX
# Declared: Line 416 (Source lines: 424-452)
# Address: 0x0d991950 - 0x0d991adc (Size: 396 bytes, Frame: 208)
.globl __glsplc_DeformationMap3dSGIX
.ent __glsplc_DeformationMap3dSGIX
__glsplc_DeformationMap3dSGIX:
    # Line 424
    addiu	$sp,$sp,-208
    # Line 427
    cvt.s.d	$f18,$f18
    # Line 424
    sd	$a7,104($sp)
    # Line 427
    cvt.s.d	$f17,$f17
    sdc1	$f18,80($sp)
    cvt.s.d	$f14,$f14
    sdc1	$f17,72($sp)
    sdc1	$f14,56($sp)
    cvt.s.d	$f13,$f13
    # Line 424
    sd	$a3,112($sp)
    # Line 427
    sdc1	$f13,48($sp)
    # Line 424
    sd	$a0,96($sp)
    sd	$ra,128($sp)
    sd	$s0,120($sp)
    # Line 427
    lw	$v0,212($sp)
    lw	$v1,236($sp)
    lw	$a1,244($sp)
    ldc1	$f1,224($sp)
    ldc1	$f0,216($sp)
    sw	$a1,36($sp)
    sw	$v1,28($sp)
    sw	$v0,4($sp)
    # Line 424
    lui	$at,0x10
    sd	$gp,136($sp)
    # Line 427
    cvt.s.d	$f1,$f1
    # Line 424
    addiu	$at,$at,-2424
    # Line 427
    sdc1	$f1,88($sp)
    # Line 424
    addu	$gp,$t9,$at
    # Line 427
    # lw $t9, -28500($gp) # &__glCheckMap3Params
    cvt.s.d	$f0,$f0
    swc1	$f1,16($sp)
    sdc1	$f0,64($sp)
    # Line 424
    move	$s0,$a4
    # Line 427
    jal	__glCheckMap3Params
    swc1	$f0,8($sp)
    li	$a2,1281
    beq	$v0,$a2,.L0d991ac8
    li	$a3,1280
    beq	$v0,$a3,.L0d991ab4
    # Line 436
    lw	$a4,212($sp)
    mult	$s0,$a4
    lw	$a2,244($sp)
    mflo	$a3
    nop
    nop
    mult	$a2,$a3
    mflo	$a1
    # lw $t9, -32516($gp) # &__glSPDlalloc
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    li	$a1,247
    sll	$a0,$a0,0x2
    jal	__glSPDlalloc
    addiu	$a0,$a0,40
    bnez	$v0,.L0d991a40
    ld	$ra,128($sp)
.L0d991a30:
    ld	$s0,120($sp)
    # Line 431
    ld	$gp,136($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d991a40:
    # Line 452
    lw	$a6,252($sp)
    ld	$a3,104($sp)
    ld	$a1,112($sp)
    ld	$t0,96($sp)
    # Line 442
    ldc1	$f2,48($sp)
    # Line 443
    ldc1	$f3,56($sp)
    # Line 446
    ldc1	$f5,80($sp)
    # Line 445
    ldc1	$f4,72($sp)
    # Line 450
    lw	$a4,244($sp)
    sw	$a4,36($v0)
    # Line 448
    ldc1	$f6,64($sp)
    # Line 449
    ldc1	$f7,88($sp)
    # Line 448
    swc1	$f6,28($v0)
    # Line 449
    swc1	$f7,32($v0)
    # Line 447
    lw	$a2,212($sp)
    # Line 444
    sw	$s0,12($v0)
    # Line 445
    swc1	$f4,16($v0)
    # Line 446
    swc1	$f5,20($v0)
    # Line 452
    # lw $t9, -28504($gp) # &__glFillDeformationMap3d
    # Line 447
    sw	$a2,24($v0)
    # Line 452
    lw	$a5,236($sp)
    # Line 443
    swc1	$f3,8($v0)
    # Line 452
    addiu	$a7,$v0,40
    # Line 442
    swc1	$f2,4($v0)
    # Line 452
    move	$a0,$s0
    jal	__glFillDeformationMap3d
    # Line 441
    sw	$t0,0($v0)
    b	.L0d991a30
    ld	$ra,128($sp)
.L0d991ab4:
    # Line 433
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    b	.L0d991a30
    ld	$ra,128($sp)
.L0d991ac8:
    # Line 430
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    b	.L0d991a30
    ld	$ra,128($sp)
.end __glsplc_DeformationMap3dSGIX

# Function: FormatAndType
# Declared: Line 458 (Source lines: 459-531)
# Address: 0x0d991ae0 - 0x0d991e94 (Size: 948 bytes, Frame: 16)
.ent FormatAndType
FormatAndType:
    # Line 461
    sltiu	$at,$a0,6408
    bnez	$at,.L0d991b30
    # Line 459
    addiu	$sp,$sp,-16
    # Line 461
    sltiu	$v0,$a0,6409
    bnez	$v0,.L0d991b5c
    # Line 482
    li	$a3,0x8034
    # Line 461
    li	$a3,0x8000
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d991d58
    sltu	$a2,$a3,$a0
    beqz	$a2,.L0d991b5c
    # Line 482
    li	$a3,0x8034
    # Line 461
    li	$a3,0x80e1
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d991e08
    sltu	$a5,$a3,$a0
    beqz	$a5,.L0d991b5c
    # Line 482
    li	$a3,0x8034
    b	.L0d991c40
    sd	$ra,0($sp)
.L0d991b30:
    # Line 461
    sltiu	$a6,$a0,6405
    bnez	$a6,.L0d991c20
    sltiu	$a7,$a0,6406
    bnez	$a7,.L0d991b5c
    # Line 482
    li	$a3,0x8034
    # Line 461
    sltiu	$t0,$a0,6407
    bnez	$t0,.L0d991db4
    li	$a4,6406
    beqz	$at,.L0d991c44
    # Line 479
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d991b58:
    # Line 482
    li	$a3,0x8034
.L0d991b5c:
    sltu	$t2,$a1,$a3
    beqz	$t2,.L0d991bdc
    sltu	$a4,$a3,$a1
    sltiu	$t3,$a1,5125
    bnez	$t3,.L0d991cd8
    sltiu	$a4,$a1,5122
    sltiu	$t8,$a1,5126
    bnez	$t8,.L0d991c74
    li	$a3,0x8032
    sltu	$t9,$a1,$a3
    beqz	$t9,.L0d991d28
    sltu	$t3,$a3,$a1
    sltiu	$at,$a1,6656
    bnez	$at,.L0d991df8
    li	$t0,5126
    sltiu	$v0,$a1,6657
    bnez	$v0,.L0d991e50
    sd	$ra,0($sp)
.L0d991ba4:
    # Line 528
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d991ba8:
    sd	$ra,0($sp)
    bal __glsplc_InvalidEnum
    nop
    ld	$ra,0($sp)
    # Line 529
    move	$v0,$zero
    # Line 480
    jr	$ra
    addiu	$sp,$sp,16
.L0d991bc4:
    # Line 461
    bne	$a0,$v1,.L0d991c40
    # Line 482
    li	$a3,0x8034
    sltu	$a2,$a1,$a3
    bnez	$a2,.L0d991d08
    sltiu	$t0,$a1,5125
    sltu	$a4,$a3,$a1
.L0d991bdc:
    beqz	$a4,.L0d991c9c
    li	$a3,0x8364
    sltu	$a5,$a1,$a3
    bnez	$a5,.L0d991d78
    sltu	$a6,$a3,$a1
    beqz	$a6,.L0d991d34
    # Line 501
    li	$t8,6407
    # Line 482
    li	$a3,0x8367
    sltu	$a7,$a1,$a3
    bnez	$a7,.L0d991e1c
    sltu	$t0,$a3,$a1
    beqz	$t0,.L0d991c9c
    li	$t1,0x8368
    beq	$a1,$t1,.L0d991ca0
    # Line 517
    li	$a1,6408
    b	.L0d991ba4
    sd	$ra,0($sp)
.L0d991c20:
    # Line 461
    sltiu	$t2,$a0,6403
    bnez	$t2,.L0d991bc4
    li	$v1,6400
    sltiu	$t3,$a0,6404
    bnez	$t3,.L0d991b5c
    # Line 482
    li	$a3,0x8034
    # Line 461
    li	$t8,6404
    beq	$a0,$t8,.L0d991b58
.L0d991c40:
    # Line 479
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d991c44:
    sd	$ra,0($sp)
    bal __glsplc_InvalidEnum
    nop
    ld	$ra,0($sp)
    # Line 480
    move	$v0,$zero
    jr	$ra
    addiu	$sp,$sp,16
.L0d991c60:
    # Line 482
    bnez	$t9,.L0d991dc4
    li	$a5,5120
    sltiu	$at,$a1,5122
    beqz	$at,.L0d991ba8
    # Line 528
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d991c74:
    # Line 531
    li	$v0,1
.L0d991c78:
    # Line 480
    jr	$ra
    addiu	$sp,$sp,16
.L0d991c80:
    # Line 482
    li	$a3,0x8036
    sltu	$v0,$a1,$a3
    bnez	$v0,.L0d991e40
    li	$t8,0x8035
    sltu	$v1,$a3,$a1
    bnez	$v1,.L0d991ba8
    # Line 528
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d991c9c:
    # Line 517
    li	$a1,6408
.L0d991ca0:
    beq	$a0,$a1,.L0d991c74
    li	$a2,0x8000
    beq	$a0,$a2,.L0d991c74
    li	$a3,0x80e1
    beq	$a0,$a3,.L0d991c74
    # Line 523
    nop	# was lw $t9, -30748($gp) # &__glsplc_InvalidOperation
    sd	$ra,0($sp)
    bal __glsplc_InvalidOperation
    nop
    ld	$ra,0($sp)
    # Line 524
    move	$v0,$zero
    # Line 480
    jr	$ra
    addiu	$sp,$sp,16
.L0d991cd4:
    # Line 482
    sltiu	$a4,$a1,5122
.L0d991cd8:
    bnez	$a4,.L0d991c60
    sltiu	$t9,$a1,5121
    sltiu	$a5,$a1,5123
    bnez	$a5,.L0d991c74
    sltiu	$a6,$a1,5124
    bnez	$a6,.L0d991dd4
    li	$a6,5123
    sltiu	$a7,$a1,5125
    bnez	$a7,.L0d991c78
    # Line 531
    li	$v0,1
    b	.L0d991ba4
    sd	$ra,0($sp)
.L0d991d08:
    # Line 482
    bnez	$t0,.L0d991cd4
    sltiu	$t1,$a1,5126
    bnez	$t1,.L0d991c74
    li	$a3,0x8032
    sltu	$t2,$a1,$a3
    bnez	$t2,.L0d991e7c
    sltiu	$at,$a1,6656
    sltu	$t3,$a3,$a1
.L0d991d28:
    bnez	$t3,.L0d991de4
    li	$a7,0x8033
    # Line 501
    li	$t8,6407
.L0d991d34:
    beq	$a0,$t8,.L0d991c74
    # Line 505
    nop	# was lw $t9, -30748($gp) # &__glsplc_InvalidOperation
    sd	$ra,0($sp)
    bal __glsplc_InvalidOperation
    nop
    ld	$ra,0($sp)
    # Line 506
    move	$v0,$zero
    # Line 480
    jr	$ra
    addiu	$sp,$sp,16
.L0d991d58:
    # Line 461
    sltiu	$t9,$a0,6410
    bnez	$t9,.L0d991da4
    li	$a3,6409
    sltiu	$at,$a0,6411
    bnez	$at,.L0d991b5c
    # Line 482
    li	$a3,0x8034
    b	.L0d991c40
    sd	$ra,0($sp)
.L0d991d78:
    li	$a3,0x8362
    sltu	$v0,$a1,$a3
    bnez	$v0,.L0d991c80
    sltu	$v1,$a3,$a1
    beqz	$v1,.L0d991d34
    # Line 501
    li	$t8,6407
    # Line 482
    li	$a2,0x8363
    beq	$a1,$a2,.L0d991d34
    # Line 501
    li	$t8,6407
    b	.L0d991ba4
    sd	$ra,0($sp)
.L0d991da4:
    # Line 461
    beq	$a0,$a3,.L0d991b5c
    # Line 482
    li	$a3,0x8034
    b	.L0d991c40
    sd	$ra,0($sp)
.L0d991db4:
    # Line 461
    beq	$a0,$a4,.L0d991b5c
    # Line 482
    li	$a3,0x8034
    b	.L0d991c40
    sd	$ra,0($sp)
.L0d991dc4:
    beq	$a1,$a5,.L0d991c78
    # Line 531
    li	$v0,1
    b	.L0d991ba4
    sd	$ra,0($sp)
.L0d991dd4:
    # Line 482
    beq	$a1,$a6,.L0d991c78
    # Line 531
    li	$v0,1
    b	.L0d991ba4
    sd	$ra,0($sp)
.L0d991de4:
    # Line 482
    beq	$a1,$a7,.L0d991ca0
    # Line 517
    li	$a1,6408
    b	.L0d991ba4
    sd	$ra,0($sp)
.L0d991df4:
    # Line 482
    li	$t0,5126
.L0d991df8:
    bne	$a1,$t0,.L0d991ba8
    # Line 528
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    b	.L0d991c78
    # Line 531
    li	$v0,1
.L0d991e08:
    # Line 461
    li	$t1,0x80e0
    beq	$a0,$t1,.L0d991b5c
    # Line 482
    li	$a3,0x8034
    b	.L0d991c40
    sd	$ra,0($sp)
.L0d991e1c:
    li	$a3,0x8366
    sltu	$t2,$a1,$a3
    bnez	$t2,.L0d991e6c
    li	$t9,0x8365
    sltu	$t3,$a3,$a1
    beqz	$t3,.L0d991ca0
    # Line 517
    li	$a1,6408
    b	.L0d991ba4
    sd	$ra,0($sp)
.L0d991e40:
    # Line 482
    beq	$a1,$t8,.L0d991ca0
    # Line 517
    li	$a1,6408
    b	.L0d991ba4
    sd	$ra,0($sp)
.L0d991e50:
    # Line 485
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    ld	$ra,0($sp)
    # Line 486
    move	$v0,$zero
    # Line 480
    jr	$ra
    addiu	$sp,$sp,16
.L0d991e6c:
    # Line 482
    beq	$a1,$t9,.L0d991ca0
    # Line 517
    li	$a1,6408
    b	.L0d991ba4
    sd	$ra,0($sp)
.L0d991e7c:
    # Line 482
    bnez	$at,.L0d991df4
    sltiu	$v0,$a1,6657
    bnez	$v0,.L0d991c78
    # Line 531
    li	$v0,1
    b	.L0d991ba4
    sd	$ra,0($sp)
.end FormatAndType

# Function: __glsplc_DrawPixels
# Declared: Line 534 (Source lines: 536-631)
# Address: 0x0d991ea0 - 0x0d99232c (Size: 1164 bytes, Frame: 192)
.globl __glsplc_DrawPixels
.ent __glsplc_DrawPixels
__glsplc_DrawPixels:
    # Line 540
    lw	$a5,4112($zero)
    # Line 536
    addiu	$sp,$sp,-64
    sd	$s1,48($sp)
    move	$v0,$a0
    move	$s1,$a3
    sd	$s0,40($sp)
    move	$s0,$a2
    sd	$s2,24($sp)
    lui	$at,0x10
    move	$s2,$a1
    sd	$ra,56($sp)
    addiu	$at,$at,-3784
    sd	$gp,32($sp)
    # Line 542
    bltz	$a0,.L0d99225c
    # Line 536
    addu	$gp,$t9,$at
    # Line 542
    bltz	$a1,.L0d992260
    # Line 543
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    sd	$a4,16($sp)
    # Line 547
    sltiu	$v1,$a2,6407
    sd	$a5,8($sp)
    bnez	$v1,.L0d991f40
    sd	$a0,0($sp)
    sltiu	$a0,$a2,6408
    bnez	$a0,.L0d991f84
    # Line 570
    li	$v0,0x8034
    # Line 547
    li	$v0,0x8000
    sltu	$a1,$a2,$v0
    bnez	$a1,.L0d9921ac
    sltiu	$v1,$a2,6409
    sltu	$a2,$v0,$a2
    beqz	$a2,.L0d991f84
    # Line 570
    li	$v0,0x8034
    # Line 547
    li	$v0,0x80e1
    sltu	$a3,$s0,$v0
    bnez	$a3,.L0d9922a8
    sltu	$a4,$v0,$s0
    beqz	$a4,.L0d991f84
    # Line 570
    li	$v0,0x8034
    b	.L0d99206c
    # Line 567
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d991f40:
    # Line 547
    sltiu	$a5,$a2,6403
    bnez	$a5,.L0d992048
    sltiu	$a6,$a2,6404
    bnez	$a6,.L0d991f84
    # Line 570
    li	$v0,0x8034
    # Line 547
    sltiu	$a7,$a2,6405
    bnez	$a7,.L0d992234
    sltiu	$t0,$a2,6406
    bnez	$t0,.L0d991f80
    li	$t1,6406
    beq	$a2,$t1,.L0d991f84
    # Line 570
    li	$v0,0x8034
    b	.L0d99206c
    # Line 567
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d991f78:
    # Line 547
    li	$t2,6408
    bne	$a2,$t2,.L0d992068
.L0d991f80:
    # Line 570
    li	$v0,0x8034
.L0d991f84:
    sltu	$t3,$s1,$v0
    beqz	$t3,.L0d991ffc
    sltu	$a1,$v0,$s1
    sltiu	$t8,$s1,5125
    bnez	$t8,.L0d992178
    sltiu	$t9,$s1,5126
    bnez	$t9,.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    # Line 570
    li	$v0,0x8032
    sltu	$ra,$s1,$v0
    beqz	$ra,.L0d992154
    sltu	$t3,$v0,$s1
    sltiu	$at,$s1,6656
    bnez	$at,.L0d992298
    li	$at,5126
    sltiu	$v0,$s1,6657
    bnez	$v0,.L0d9922ec
    # Line 573
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d991fcc:
    # Line 616
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d991fd0:
    bal __glsplc_InvalidEnum
    nop
    b	.L0d9920c8
    # Line 568
    ld	$gp,32($sp)
.L0d991fe0:
    # Line 547
    li	$v1,6400
    bne	$a2,$v1,.L0d992068
    # Line 570
    li	$v0,0x8034
.L0d991fec:
    sltu	$a0,$s1,$v0
    bnez	$a0,.L0d99212c
    sltiu	$t0,$s1,5125
    sltu	$a1,$v0,$s1
.L0d991ffc:
    beqz	$a1,.L0d9920fc
    # Line 605
    li	$a5,6408
    # Line 570
    li	$v0,0x8364
    sltu	$a2,$s1,$v0
    bnez	$a2,.L0d99220c
    sltu	$a3,$v0,$s1
    beqz	$a3,.L0d992160
    # Line 589
    li	$t8,6407
    # Line 570
    li	$v0,0x8367
    sltu	$a4,$s1,$v0
    bnez	$a4,.L0d9922bc
    sltu	$a5,$v0,$s1
    beqz	$a5,.L0d9920fc
    # Line 605
    li	$a5,6408
    # Line 570
    li	$a6,0x8368
    beq	$s1,$a6,.L0d9920fc
    # Line 605
    li	$a5,6408
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d992048:
    # Line 547
    sltiu	$a7,$a2,6401
    bnez	$a7,.L0d991fe0
    sltiu	$t0,$a2,6402
    bnez	$t0,.L0d991fec
    # Line 570
    li	$v0,0x8034
    # Line 547
    li	$t1,6402
    beq	$a2,$t1,.L0d991f84
    # Line 570
    li	$v0,0x8034
.L0d992068:
    # Line 567
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d99206c:
    bal __glsplc_InvalidEnum
    nop
    b	.L0d9920c8
    # Line 568
    ld	$gp,32($sp)
.L0d99207c:
    # Line 570
    bnez	$t2,.L0d992248
    sltiu	$t3,$s1,5122
    beqz	$t3,.L0d991fcc
.L0d992088:
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
.L0d99208c:
    move	$a1,$s2
    move	$a2,$s0
    ld	$a0,0($sp)
    jal	__glImageSize
    move	$a3,$s1
    # Line 623
    # lw $t9, -32516($gp) # &__glSPDlalloc
    addiu	$a0,$v0,3
    li	$a2,-4
    li	$a1,171
    and	$a0,$a0,$a2
    jal	__glSPDlalloc
    addiu	$a0,$a0,16
    bnez	$v0,.L0d9921cc
    nop
    # Line 568
    ld	$gp,32($sp)
.L0d9920c8:
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,48($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9920e0:
    # Line 570
    li	$v0,0x8036
    sltu	$a3,$s1,$v0
    bnez	$a3,.L0d9922dc
    li	$a1,0x8035
    sltu	$a4,$v0,$s1
    bnez	$a4,.L0d991fcc
    # Line 605
    li	$a5,6408
.L0d9920fc:
    beq	$s0,$a5,.L0d992088
    li	$a6,0x8000
    beq	$s0,$a6,.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    # Line 605
    li	$a7,0x80e1
    beq	$s0,$a7,.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    # Line 611
    # lw $t9, -30748($gp) # &__glsplc_InvalidOperation
    bal __glsplc_InvalidOperation
    nop
    b	.L0d9920c8
    # Line 568
    ld	$gp,32($sp)
.L0d99212c:
    # Line 570
    bnez	$t0,.L0d99217c
    sltiu	$t9,$s1,5122
    sltiu	$t1,$s1,5126
    bnez	$t1,.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    # Line 570
    li	$v0,0x8032
    sltu	$t2,$s1,$v0
    bnez	$t2,.L0d992310
    sltiu	$a3,$s1,6656
    sltu	$t3,$v0,$s1
.L0d992154:
    bnez	$t3,.L0d992284
    li	$ra,0x8033
.L0d99215c:
    # Line 589
    li	$t8,6407
.L0d992160:
    beq	$s0,$t8,.L0d992088
    # Line 593
    nop	# was lw $t9, -30748($gp) # &__glsplc_InvalidOperation
    bal __glsplc_InvalidOperation
    nop
    b	.L0d9920c8
    # Line 568
    ld	$gp,32($sp)
.L0d992178:
    # Line 570
    sltiu	$t9,$s1,5122
.L0d99217c:
    bnez	$t9,.L0d99207c
    sltiu	$t2,$s1,5121
    sltiu	$ra,$s1,5123
    bnez	$ra,.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    # Line 570
    sltiu	$at,$s1,5124
    bnez	$at,.L0d992270
    sltiu	$v0,$s1,5125
    bnez	$v0,.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d9921ac:
    # Line 547
    bnez	$v1,.L0d991f78
    sltiu	$a0,$a2,6410
    bnez	$a0,.L0d991f80
    li	$a1,6410
    beq	$a2,$a1,.L0d991f84
    # Line 570
    li	$v0,0x8034
    b	.L0d99206c
    # Line 567
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d9921cc:
    # Line 629
    sw	$s1,12($v0)
    # Line 631
    ld	$a5,16($sp)
    # Line 628
    sw	$s0,8($v0)
    # Line 627
    sw	$s2,4($v0)
    # Line 631
    # lw $t9, -28012($gp) # &__glFillImage
    addiu	$a6,$v0,16
    move	$a4,$s1
    ld	$a7,0($sp)
    move	$a3,$s0
    move	$a2,$s2
    ld	$a0,8($sp)
    # Line 626
    sw	$a7,0($v0)
    # Line 631
    jal	__glFillImage
    move	$a1,$a7
    b	.L0d9920c8
    # Line 568
    ld	$gp,32($sp)
.L0d99220c:
    # Line 570
    li	$v0,0x8362
    sltu	$t0,$s1,$v0
    bnez	$t0,.L0d9920e0
    sltu	$t1,$v0,$s1
    beqz	$t1,.L0d99215c
    li	$t2,0x8363
    beq	$s1,$t2,.L0d992160
    # Line 589
    li	$t8,6407
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d992234:
    # Line 547
    li	$t3,6404
    beq	$a2,$t3,.L0d991f84
    # Line 570
    li	$v0,0x8034
    b	.L0d99206c
    # Line 567
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d992248:
    # Line 570
    li	$t8,5120
    beq	$s1,$t8,.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d99225c:
    # Line 543
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d992260:
    bal __glsplc_InvalidValue
    nop
    b	.L0d9920c8
    # Line 568
    ld	$gp,32($sp)
.L0d992270:
    # Line 570
    li	$t9,5123
    beq	$s1,$t9,.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d992284:
    # Line 570
    beq	$s1,$ra,.L0d9920fc
    # Line 605
    li	$a5,6408
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 570
    li	$at,5126
.L0d992298:
    bne	$s1,$at,.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    b	.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
.L0d9922a8:
    # Line 547
    li	$v0,0x80e0
    beq	$s0,$v0,.L0d991f84
    # Line 570
    li	$v0,0x8034
    b	.L0d99206c
    # Line 567
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d9922bc:
    # Line 570
    li	$v0,0x8366
    sltu	$v1,$s1,$v0
    bnez	$v1,.L0d9922fc
    sltu	$a0,$v0,$s1
    beqz	$a0,.L0d9920fc
    # Line 605
    li	$a5,6408
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d9922dc:
    # Line 570
    beq	$s1,$a1,.L0d9920fc
    # Line 605
    li	$a5,6408
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d9922ec:
    # Line 573
    bal __glsplc_InvalidEnum
    nop
    b	.L0d9920c8
    # Line 568
    ld	$gp,32($sp)
.L0d9922fc:
    # Line 570
    li	$a2,0x8365
    beq	$s1,$a2,.L0d9920fc
    # Line 605
    li	$a5,6408
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.L0d992310:
    # Line 570
    bnez	$a3,.L0d992298
    li	$at,5126
    sltiu	$a4,$s1,6657
    bnez	$a4,.L0d99208c
    # Line 620
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    b	.L0d991fd0
    # Line 616
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
.end __glsplc_DrawPixels

# Function: __glsplc_TexImage1D
# Declared: Line 635 (Source lines: 639-680)
# Address: 0x0d992330 - 0x0d9924bc (Size: 396 bytes, Frame: 224)
.globl __glsplc_TexImage1D
.ent __glsplc_TexImage1D
__glsplc_TexImage1D:
    # Line 642
    lw	$t2,4112($zero)
    # Line 639
    addiu	$sp,$sp,-96
    sd	$s2,48($sp)
    move	$v0,$a7
    move	$s2,$a6
    sd	$s3,64($sp)
    move	$s3,$a5
    sd	$s0,56($sp)
    move	$s0,$a4
    sd	$s1,72($sp)
    # Line 642
    li	$at,0x8063
    # Line 639
    lui	$v1,0x10
    move	$s1,$a3
    sd	$ra,88($sp)
    addiu	$v1,$v1,-4952
    sd	$gp,80($sp)
    # Line 642
    beq	$a0,$at,.L0d9924a4
    # Line 639
    addu	$gp,$t9,$v1
    # Line 650
    bltz	$a4,.L0d99247c
    slti	$a3,$a4,2
    beqz	$a3,.L0d992480
    # Line 651
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    sd	$t2,40($sp)
    sd	$a0,32($sp)
    sd	$a1,24($sp)
    sd	$a2,16($sp)
    # Line 652
    bltz	$s1,.L0d992490
    sd	$a7,8($sp)
    # Line 659
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    move	$a0,$a5
    bal __glsplc_DeformationMap3dSGIX
    move	$a1,$a6
    beqz	$v0,.L0d992434
    # Line 661
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    move	$a0,$s1
    move	$a3,$s2
    move	$a2,$s3
    jal	__glImageSize
    li	$a1,1
    # Line 664
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 662
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 664
    li	$a1,108
    # Line 662
    and	$a0,$a0,$a2
    sd	$a0,0($sp)
    # Line 664
    jal	__glSPDlalloc
    addiu	$a0,$a0,32
    beqz	$v0,.L0d992434
    # Line 676
    ld	$a3,32($sp)
    # Line 669
    ld	$a6,16($sp)
    # Line 673
    sw	$s2,24($v0)
    # Line 672
    sw	$s3,20($v0)
    # Line 671
    sw	$s0,16($v0)
    # Line 670
    sw	$s1,12($v0)
    # Line 667
    sw	$a3,0($v0)
    # Line 669
    sw	$a6,8($v0)
    # Line 674
    ld	$a4,0($sp)
    # Line 668
    ld	$a5,24($sp)
    # Line 674
    sw	$a4,28($v0)
    # Line 676
    blez	$a4,.L0d992434
    # Line 668
    sw	$a5,4($v0)
    # Line 676
    ld	$a7,8($sp)
    bnez	$a7,.L0d992454
    # Line 677
    nop	# was lw $t9, -28012($gp) # &__glFillImage
.L0d992434:
    ld	$s2,48($sp)
.L0d992438:
    ld	$s0,56($sp)
    ld	$ra,88($sp)
    ld	$s3,64($sp)
    ld	$s1,72($sp)
    # Line 680
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d992454:
    # Line 677
    move	$a1,$s1
    addiu	$a6,$v0,32
    ld	$a0,40($sp)
    move	$a4,$s2
    move	$a3,$s3
    ld	$a5,8($sp)
    jal	__glFillImage
    li	$a2,1
    b	.L0d992438
    ld	$s2,48($sp)
.L0d99247c:
    # Line 651
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d992480:
    bal __glsplc_InvalidValue
    nop
    b	.L0d992438
    ld	$s2,48($sp)
.L0d992490:
    # Line 655
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    b	.L0d992438
    ld	$s2,48($sp)
.L0d9924a4:
    # Line 645
    lw	$t9,6132($t2)
    lw	$t9,176($t9)
    jal	__glsplc_InvalidValue
    nop
    b	.L0d992438
    ld	$s2,48($sp)
.end __glsplc_TexImage1D

# Function: __glsplc_TexImage2D
# Declared: Line 682 (Source lines: 687-729)
# Address: 0x0d9924c0 - 0x0d99265c (Size: 412 bytes, Frame: 176)
.globl __glsplc_TexImage2D
.ent __glsplc_TexImage2D
__glsplc_TexImage2D:
    # Line 690
    lw	$t2,4112($zero)
    # Line 687
    addiu	$sp,$sp,-176
    sd	$s4,72($sp)
    move	$v0,$a2
    sd	$s3,88($sp)
    move	$s3,$a7
    move	$s4,$a6
    sd	$s0,80($sp)
    move	$s0,$a5
    sd	$s2,96($sp)
    move	$s2,$a4
    sd	$s1,56($sp)
    # Line 690
    li	$at,0x8064
    # Line 687
    lui	$v1,0x10
    move	$s1,$a3
    sd	$ra,104($sp)
    addiu	$v1,$v1,-5352
    sd	$gp,64($sp)
    # Line 690
    beq	$a0,$at,.L0d99263c
    # Line 687
    addu	$gp,$t9,$v1
    # Line 698
    bltz	$a5,.L0d992614
    slti	$a2,$a5,2
    beqz	$a2,.L0d992618
    # Line 699
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 702
    bltz	$a3,.L0d99262c
    # Line 703
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    sd	$t2,48($sp)
    sd	$a0,40($sp)
    sd	$a1,32($sp)
    # Line 702
    bltz	$a4,.L0d992628
    sd	$v0,24($sp)
    # Line 707
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    move	$a0,$a6
    bal __glsplc_DeformationMap3dSGIX
    move	$a1,$a7
    beqz	$v0,.L0d9925f0
    # Line 709
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    move	$a0,$s1
    move	$a1,$s2
    move	$a2,$s4
    jal	__glImageSize
    move	$a3,$s3
    # Line 712
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 710
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 712
    li	$a1,109
    # Line 710
    and	$a0,$a0,$a2
    sd	$a0,16($sp)
    # Line 712
    jal	__glSPDlalloc
    addiu	$a0,$a0,36
    beqz	$v0,.L0d9925f0
    # Line 723
    ld	$a4,16($sp)
    # Line 722
    sw	$s3,28($v0)
    # Line 721
    sw	$s4,24($v0)
    # Line 720
    sw	$s0,20($v0)
    # Line 719
    sw	$s2,16($v0)
    # Line 718
    sw	$s1,12($v0)
    # Line 723
    sw	$a4,32($v0)
    # Line 725
    ld	$a3,40($sp)
    # Line 716
    ld	$a5,32($sp)
    # Line 717
    ld	$a6,24($sp)
    sw	$a6,8($v0)
    # Line 716
    sw	$a5,4($v0)
    # Line 725
    blez	$a4,.L0d9925f0
    # Line 715
    sw	$a3,0($v0)
    # Line 725
    lw	$a5,180($sp)
    beqz	$a5,.L0d9925f0
    # Line 726
    nop	# was lw $t9, -28012($gp) # &__glFillImage
    move	$a1,$s1
    move	$a2,$s2
    move	$a3,$s4
    move	$a4,$s3
    ld	$a0,48($sp)
    jal	__glFillImage
    addiu	$a6,$v0,36
.L0d9925f0:
    # Line 729
    ld	$gp,64($sp)
.L0d9925f4:
    ld	$s0,80($sp)
    ld	$s1,56($sp)
    ld	$ra,104($sp)
    ld	$s2,96($sp)
    ld	$s3,88($sp)
    ld	$s4,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d992614:
    # Line 699
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d992618:
    bal __glsplc_InvalidValue
    nop
    b	.L0d9925f4
    # Line 729
    ld	$gp,64($sp)
.L0d992628:
    # Line 703
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d99262c:
    bal __glsplc_InvalidValue
    nop
    b	.L0d9925f4
    # Line 729
    ld	$gp,64($sp)
.L0d99263c:
    # Line 693
    lw	$ra,180($sp)
    sw	$ra,4($sp)
    lw	$t9,6132($t2)
    lw	$t9,180($t9)
    jal	__glsplc_InvalidValue
    nop
    b	.L0d9925f4
    # Line 729
    ld	$gp,64($sp)
.end __glsplc_TexImage2D

# Function: __glsplc_TexSubImage1DEXT
# Declared: Line 731 (Source lines: 734-765)
# Address: 0x0d992660 - 0x0d992794 (Size: 308 bytes, Frame: 224)
.globl __glsplc_TexSubImage1DEXT
.ent __glsplc_TexSubImage1DEXT
__glsplc_TexSubImage1DEXT:
    # Line 737
    lw	$v0,4112($zero)
    # Line 734
    addiu	$sp,$sp,-96
    sd	$a6,40($sp)
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,16($sp)
    # Line 737
    sd	$v0,0($sp)
    # Line 734
    sd	$s1,56($sp)
    move	$s1,$a5
    sd	$s0,48($sp)
    move	$s0,$a4
    sd	$s2,64($sp)
    lui	$at,0x10
    move	$s2,$a3
    sd	$ra,80($sp)
    addiu	$at,$at,-5768
    sd	$gp,72($sp)
    # Line 737
    bltz	$a3,.L0d992780
    # Line 734
    addu	$gp,$t9,$at
    # Line 744
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    move	$a0,$a4
    bal __glsplc_DeformationMap3dSGIX
    move	$a1,$a5
    beqz	$v0,.L0d99273c
    # Line 746
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    move	$a0,$s2
    move	$a3,$s1
    move	$a2,$s0
    jal	__glImageSize
    li	$a1,1
    # Line 749
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 747
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 749
    li	$a1,193
    # Line 747
    and	$a0,$a0,$a2
    sd	$a0,8($sp)
    # Line 749
    jal	__glSPDlalloc
    addiu	$a0,$a0,28
    beqz	$v0,.L0d99273c
    # Line 761
    ld	$a3,16($sp)
    # Line 755
    ld	$a6,24($sp)
    # Line 758
    sw	$s1,20($v0)
    # Line 757
    sw	$s0,16($v0)
    # Line 756
    sw	$s2,12($v0)
    # Line 753
    sw	$a3,0($v0)
    # Line 755
    sw	$a6,8($v0)
    # Line 759
    ld	$a4,8($sp)
    # Line 754
    ld	$a5,32($sp)
    # Line 759
    sw	$a4,24($v0)
    # Line 761
    blez	$a4,.L0d99273c
    # Line 754
    sw	$a5,4($v0)
    # Line 761
    ld	$a7,40($sp)
    bnez	$a7,.L0d992758
    # Line 762
    nop	# was lw $t9, -28012($gp) # &__glFillImage
.L0d99273c:
    ld	$s0,48($sp)
.L0d992740:
    ld	$ra,80($sp)
    ld	$s1,56($sp)
    ld	$s2,64($sp)
    # Line 765
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d992758:
    # Line 762
    move	$a1,$s2
    addiu	$a6,$v0,28
    ld	$a0,0($sp)
    move	$a4,$s1
    move	$a3,$s0
    ld	$a5,40($sp)
    jal	__glFillImage
    li	$a2,1
    b	.L0d992740
    ld	$s0,48($sp)
.L0d992780:
    # Line 740
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    b	.L0d992740
    ld	$s0,48($sp)
.end __glsplc_TexSubImage1DEXT

# Function: __glsplc_TexSubImage2DEXT
# Declared: Line 767 (Source lines: 771-805)
# Address: 0x0d9927a0 - 0x0d9928ec (Size: 332 bytes, Frame: 160)
.globl __glsplc_TexSubImage2DEXT
.ent __glsplc_TexSubImage2DEXT
__glsplc_TexSubImage2DEXT:
    # Line 775
    lw	$t2,4112($zero)
    # Line 771
    addiu	$sp,$sp,-160
    sd	$s1,48($sp)
    move	$v0,$a1
    sd	$s2,56($sp)
    move	$s2,$a7
    move	$s1,$a6
    sd	$s0,72($sp)
    move	$s0,$a5
    sd	$s3,80($sp)
    lui	$at,0x10
    move	$s3,$a4
    sd	$ra,88($sp)
    addiu	$at,$at,-6088
    sd	$gp,64($sp)
    # Line 777
    bltz	$a4,.L0d9928d8
    # Line 771
    addu	$gp,$t9,$at
    sd	$t2,40($sp)
    sd	$a2,32($sp)
    sd	$a3,24($sp)
    sd	$a0,16($sp)
    # Line 777
    bltz	$a5,.L0d9928d8
    sd	$a1,8($sp)
    # Line 782
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    move	$a0,$a6
    bal __glsplc_DeformationMap3dSGIX
    move	$a1,$a7
    beqz	$v0,.L0d9928b8
    # Line 784
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    move	$a0,$s3
    move	$a1,$s0
    move	$a2,$s1
    jal	__glImageSize
    move	$a3,$s2
    # Line 787
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 785
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 787
    li	$a1,194
    # Line 785
    and	$a0,$a0,$a2
    sd	$a0,0($sp)
    # Line 787
    jal	__glSPDlalloc
    addiu	$a0,$a0,36
    beqz	$v0,.L0d9928b8
    nop
    # Line 798
    sw	$s2,28($v0)
    # Line 797
    sw	$s1,24($v0)
    # Line 796
    sw	$s0,20($v0)
    # Line 795
    sw	$s3,16($v0)
    # Line 801
    ld	$a3,16($sp)
    # Line 792
    ld	$a5,8($sp)
    # Line 793
    ld	$a6,32($sp)
    # Line 794
    ld	$a7,24($sp)
    # Line 799
    ld	$a4,0($sp)
    sw	$a4,32($v0)
    # Line 794
    sw	$a7,12($v0)
    # Line 793
    sw	$a6,8($v0)
    # Line 792
    sw	$a5,4($v0)
    # Line 801
    blez	$a4,.L0d9928b8
    # Line 791
    sw	$a3,0($v0)
    # Line 801
    lw	$a5,164($sp)
    beqz	$a5,.L0d9928b8
    # Line 802
    nop	# was lw $t9, -28012($gp) # &__glFillImage
    move	$a1,$s3
    move	$a2,$s0
    move	$a3,$s1
    move	$a4,$s2
    ld	$a0,40($sp)
    jal	__glFillImage
    addiu	$a6,$v0,36
.L0d9928b8:
    # Line 805
    ld	$gp,64($sp)
.L0d9928bc:
    ld	$s0,72($sp)
    ld	$ra,88($sp)
    ld	$s1,48($sp)
    ld	$s2,56($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9928d8:
    # Line 778
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    b	.L0d9928bc
    # Line 805
    ld	$gp,64($sp)
.end __glsplc_TexSubImage2DEXT

# Function: __glsplc_ConvolutionFilter1DEXT
# Declared: Line 807 (Source lines: 810-845)
# Address: 0x0d9928f0 - 0x0d992a30 (Size: 320 bytes, Frame: 208)
.globl __glsplc_ConvolutionFilter1DEXT
.ent __glsplc_ConvolutionFilter1DEXT
__glsplc_ConvolutionFilter1DEXT:
    # Line 813
    lw	$t0,4112($zero)
    # Line 810
    addiu	$sp,$sp,-80
    move	$v0,$a5
    sd	$s2,56($sp)
    move	$s2,$a4
    sd	$s1,48($sp)
    move	$s1,$a3
    sd	$s0,40($sp)
    # Line 813
    li	$at,0x8010
    # Line 810
    lui	$v1,0x10
    move	$s0,$a2
    sd	$ra,72($sp)
    addiu	$v1,$v1,-6424
    sd	$gp,64($sp)
    # Line 813
    beq	$a0,$at,.L0d992958
    # Line 810
    addu	$gp,$t9,$v1
    # Line 816
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
.L0d99293c:
    ld	$s0,40($sp)
.L0d992940:
    ld	$ra,72($sp)
    ld	$s1,48($sp)
    ld	$s2,56($sp)
    # Line 845
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d992958:
    sd	$t0,32($sp)
    sd	$a0,24($sp)
    sd	$a1,16($sp)
    # Line 817
    bltz	$a2,.L0d992a1c
    sd	$a5,8($sp)
    # Line 825
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    move	$a0,$a3
    bal __glsplc_DeformationMap3dSGIX
    move	$a1,$a4
    beqz	$v0,.L0d99293c
    # Line 827
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    move	$a0,$s0
    move	$a3,$s2
    move	$a2,$s1
    jal	__glImageSize
    li	$a1,1
    # Line 830
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 828
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 830
    li	$a1,195
    # Line 828
    and	$a0,$a0,$a2
    sd	$a0,0($sp)
    # Line 830
    jal	__glSPDlalloc
    addiu	$a0,$a0,24
    beqz	$v0,.L0d99293c
    # Line 841
    ld	$a3,24($sp)
    # Line 835
    ld	$a5,16($sp)
    # Line 838
    sw	$s2,16($v0)
    # Line 837
    sw	$s1,12($v0)
    # Line 836
    sw	$s0,8($v0)
    # Line 839
    ld	$a4,0($sp)
    # Line 834
    sw	$a3,0($v0)
    # Line 835
    sw	$a5,4($v0)
    # Line 841
    blez	$a4,.L0d99293c
    # Line 839
    sw	$a4,20($v0)
    # Line 841
    ld	$a6,8($sp)
    beqz	$a6,.L0d99293c
    # Line 842
    nop	# was lw $t9, -28012($gp) # &__glFillImage
    move	$a1,$s0
    addiu	$a6,$v0,24
    ld	$a0,32($sp)
    move	$a4,$s2
    move	$a3,$s1
    ld	$a5,8($sp)
    jal	__glFillImage
    li	$a2,1
    b	.L0d992940
    ld	$s0,40($sp)
.L0d992a1c:
    # Line 821
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    b	.L0d992940
    ld	$s0,40($sp)
.end __glsplc_ConvolutionFilter1DEXT

# Function: __glsplc_ConvolutionFilter2DEXT
# Declared: Line 847 (Source lines: 851-887)
# Address: 0x0d992a30 - 0x0d992b88 (Size: 344 bytes, Frame: 224)
.globl __glsplc_ConvolutionFilter2DEXT
.ent __glsplc_ConvolutionFilter2DEXT
__glsplc_ConvolutionFilter2DEXT:
    # Line 854
    lw	$t1,4112($zero)
    # Line 851
    addiu	$sp,$sp,-96
    sd	$s2,56($sp)
    move	$v0,$a6
    move	$s2,$a5
    sd	$s3,40($sp)
    move	$s3,$a4
    sd	$s1,64($sp)
    move	$s1,$a3
    sd	$s0,48($sp)
    # Line 854
    li	$at,0x8011
    # Line 851
    lui	$v1,0x10
    move	$s0,$a2
    sd	$ra,80($sp)
    addiu	$v1,$v1,-6744
    sd	$gp,72($sp)
    # Line 854
    beq	$a0,$at,.L0d992aa4
    # Line 851
    addu	$gp,$t9,$v1
    # Line 857
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
.L0d992a84:
    ld	$s3,40($sp)
.L0d992a88:
    ld	$s0,48($sp)
    ld	$ra,80($sp)
    ld	$s2,56($sp)
    ld	$s1,64($sp)
    # Line 887
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d992aa4:
    # Line 861
    bltz	$a2,.L0d992b78
    # Line 862
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    sd	$t1,32($sp)
    sd	$a0,24($sp)
    sd	$a1,16($sp)
    # Line 861
    bltz	$a3,.L0d992b74
    sd	$a6,8($sp)
    # Line 866
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    move	$a0,$a4
    bal __glsplc_DeformationMap3dSGIX
    move	$a1,$a5
    beqz	$v0,.L0d992a84
    # Line 868
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s3
    jal	__glImageSize
    move	$a3,$s2
    # Line 871
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 869
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 871
    li	$a1,196
    # Line 869
    and	$a0,$a0,$a2
    sd	$a0,0($sp)
    # Line 871
    jal	__glSPDlalloc
    addiu	$a0,$a0,28
    beqz	$v0,.L0d992a84
    # Line 883
    ld	$a3,24($sp)
    # Line 876
    ld	$a5,16($sp)
    # Line 880
    sw	$s2,20($v0)
    # Line 879
    sw	$s3,16($v0)
    # Line 878
    sw	$s1,12($v0)
    # Line 877
    sw	$s0,8($v0)
    # Line 881
    ld	$a4,0($sp)
    # Line 875
    sw	$a3,0($v0)
    # Line 876
    sw	$a5,4($v0)
    # Line 883
    blez	$a4,.L0d992a84
    # Line 881
    sw	$a4,24($v0)
    # Line 883
    ld	$a6,8($sp)
    beqz	$a6,.L0d992a84
    # Line 884
    nop	# was lw $t9, -28012($gp) # &__glFillImage
    move	$a1,$s0
    move	$a2,$s1
    ld	$a0,32($sp)
    move	$a3,$s3
    move	$a4,$s2
    ld	$a5,8($sp)
    jal	__glFillImage
    addiu	$a6,$v0,28
    b	.L0d992a88
    ld	$s3,40($sp)
.L0d992b74:
    # Line 862
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d992b78:
    bal __glsplc_InvalidValue
    nop
    b	.L0d992a88
    ld	$s3,40($sp)
.end __glsplc_ConvolutionFilter2DEXT

# Function: __glsplc_SeparableFilter2DEXT
# Declared: Line 902 (Source lines: 906-950)
# Address: 0x0d992b90 - 0x0d992d70 (Size: 480 bytes, Frame: 128)
.globl __glsplc_SeparableFilter2DEXT
.ent __glsplc_SeparableFilter2DEXT
__glsplc_SeparableFilter2DEXT:
    # Line 909
    lw	$v1,4112($zero)
    # Line 906
    addiu	$sp,$sp,-128
    sd	$a7,56($sp)
    sd	$a6,48($sp)
    sd	$a1,32($sp)
    sd	$a0,40($sp)
    sd	$s2,80($sp)
    sd	$s1,72($sp)
    move	$s1,$a5
    sd	$s0,88($sp)
    move	$s0,$a4
    move	$s2,$a3
    # Line 909
    sd	$v1,8($sp)
    # Line 906
    sd	$s3,104($sp)
    # Line 909
    li	$at,0x8012
    # Line 906
    lui	$v0,0x10
    move	$s3,$a2
    sd	$ra,112($sp)
    addiu	$v0,$v0,-7096
    sd	$gp,96($sp)
    # Line 909
    beq	$a0,$at,.L0d992bf4
    # Line 906
    addu	$gp,$t9,$v0
    # Line 912
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
.L0d992bf4:
    # Line 915
    bltz	$s3,.L0d992d60
    # Line 916
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 915
    bltz	$s2,.L0d992d60
    # Line 916
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 920
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    move	$a0,$s0
    bal __glsplc_DeformationMap3dSGIX
    move	$a1,$s1
    beqz	$v0,.L0d992cd8
    # Line 922
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    move	$a0,$s3
    move	$a3,$s1
    move	$a2,$s0
    jal	__glImageSize
    li	$a1,1
    # Line 923
    # lw $t9, -28024($gp) # &__glImageSize
    move	$a3,$s1
    move	$a2,$s0
    move	$a1,$s2
    # Line 922
    sd	$v0,24($sp)
    # Line 923
    jal	__glImageSize
    li	$a0,1
    # Line 927
    ld	$a0,24($sp)
    # Line 925
    li	$a3,-4
    # Line 927
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 925
    addiu	$a2,$v0,3
    # Line 927
    addiu	$a0,$a0,3
    # Line 925
    and	$a2,$a2,$a3
    # Line 927
    and	$a0,$a3,$a0
    li	$a1,203
    sd	$a0,16($sp)
    addu	$a0,$a0,$a2
    # Line 925
    sd	$a2,64($sp)
    # Line 927
    jal	__glSPDlalloc
    addiu	$a0,$a0,32
    beqz	$v0,.L0d992cd8
    # Line 940
    ld	$a1,40($sp)
    # Line 938
    ld	$a4,64($sp)
    # Line 936
    sw	$s1,20($v0)
    # Line 935
    sw	$s0,16($v0)
    # Line 934
    sw	$s2,12($v0)
    # Line 933
    sw	$s3,8($v0)
    # Line 931
    sw	$a1,0($v0)
    # Line 938
    sw	$a4,28($v0)
    # Line 937
    ld	$a2,16($sp)
    # Line 932
    ld	$a3,32($sp)
    # Line 937
    sw	$a2,24($v0)
    # Line 940
    blez	$a2,.L0d992cc4
    # Line 932
    sw	$a3,4($v0)
    # Line 940
    ld	$a5,48($sp)
    bnez	$a5,.L0d992d28
.L0d992cc4:
    # Line 945
    ld	$a6,64($sp)
    blez	$a6,.L0d992cd8
    ld	$a7,56($sp)
    bnez	$a7,.L0d992cf8
    # Line 946
    nop	# was lw $t9, -28012($gp) # &__glFillImage
.L0d992cd8:
    # Line 950
    ld	$gp,96($sp)
.L0d992cdc:
    ld	$s0,88($sp)
    ld	$ra,112($sp)
    ld	$s1,72($sp)
    ld	$s2,80($sp)
    ld	$s3,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d992cf8:
    # Line 946
    move	$a4,$s1
    ld	$a6,16($sp)
    move	$a3,$s0
    move	$a2,$s2
    ld	$a0,8($sp)
    li	$a1,1
    addu	$a6,$a6,$v0
    ld	$a5,56($sp)
    jal	__glFillImage
    addiu	$a6,$a6,32
    b	.L0d992cdc
    # Line 950
    ld	$gp,96($sp)
.L0d992d28:
    sd	$v0,0($sp)
    # Line 941
    # lw $t9, -28012($gp) # &__glFillImage
    move	$a1,$s3
    move	$a4,$s1
    ld	$a6,0($sp)
    ld	$a0,8($sp)
    move	$a3,$s0
    li	$a2,1
    ld	$a5,48($sp)
    jal	__glFillImage
    addiu	$a6,$a6,32
    b	.L0d992cc4
    ld	$v0,0($sp)
    # Line 916
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d992d60:
    bal __glsplc_InvalidValue
    nop
    b	.L0d992cdc
    # Line 950
    ld	$gp,96($sp)
.end __glsplc_SeparableFilter2DEXT

# Function: __glsplc_TexImage3DEXT
# Declared: Line 952 (Source lines: 956-1001)
# Address: 0x0d992d70 - 0x0d992f2c (Size: 444 bytes, Frame: 176)
.globl __glsplc_TexImage3DEXT
.ent __glsplc_TexImage3DEXT
__glsplc_TexImage3DEXT:
    # Line 959
    lw	$t2,4112($zero)
    # Line 956
    addiu	$sp,$sp,-176
    sd	$s0,88($sp)
    move	$v0,$a2
    sd	$s4,72($sp)
    move	$s4,$a7
    move	$s0,$a6
    sd	$s3,64($sp)
    move	$s3,$a5
    sd	$s2,96($sp)
    move	$s2,$a4
    sd	$s1,56($sp)
    # Line 959
    li	$at,0x8070
    # Line 956
    lui	$v1,0x10
    move	$s1,$a3
    sd	$ra,104($sp)
    addiu	$v1,$v1,-7576
    sd	$gp,80($sp)
    # Line 959
    beq	$a0,$at,.L0d992f04
    # Line 956
    addu	$gp,$t9,$v1
    # Line 969
    bltz	$a6,.L0d992ee0
    # Line 970
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 969
    slti	$a2,$a6,2
    beqz	$a2,.L0d992ee0
    # Line 970
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 973
    bltz	$a3,.L0d992ef4
    # Line 974
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 973
    bltz	$a4,.L0d992ef4
    # Line 974
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    sd	$t2,48($sp)
    sd	$a0,40($sp)
    sd	$a1,32($sp)
    # Line 973
    bltz	$a5,.L0d992ef0
    sd	$v0,24($sp)
    # Line 978
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    move	$a0,$a7
    bal __glsplc_DeformationMap3dSGIX
    lw	$a1,180($sp)
    beqz	$v0,.L0d992eb8
    # Line 980
    nop	# was lw $t9, -28020($gp) # &__glImageSize3D
    move	$a0,$s1
    move	$a1,$s2
    move	$a2,$s3
    move	$a3,$s4
    jal	__glImageSize3D
    lw	$a4,180($sp)
    # Line 983
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 981
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 983
    li	$a1,208
    # Line 981
    and	$a0,$a0,$a2
    sd	$a0,16($sp)
    # Line 983
    jal	__glSPDlalloc
    addiu	$a0,$a0,40
    beqz	$v0,.L0d992eb8
    lw	$a5,180($sp)
    # Line 994
    sw	$a5,32($v0)
    # Line 993
    sw	$s4,28($v0)
    # Line 992
    sw	$s0,24($v0)
    # Line 991
    sw	$s3,20($v0)
    # Line 990
    sw	$s2,16($v0)
    # Line 989
    sw	$s1,12($v0)
    # Line 997
    ld	$a3,40($sp)
    # Line 987
    ld	$a6,32($sp)
    # Line 988
    ld	$a7,24($sp)
    # Line 995
    ld	$a4,16($sp)
    sw	$a4,36($v0)
    # Line 988
    sw	$a7,8($v0)
    # Line 987
    sw	$a6,4($v0)
    # Line 997
    blez	$a4,.L0d992eb8
    # Line 986
    sw	$a3,0($v0)
    # Line 997
    lw	$a6,188($sp)
    beqz	$a6,.L0d992eb8
    # Line 998
    nop	# was lw $t9, -28016($gp) # &__glFillImage3D
    move	$a1,$s1
    move	$a2,$s2
    move	$a3,$s3
    move	$a4,$s4
    ld	$a0,48($sp)
    jal	__glFillImage3D
    addiu	$a7,$v0,40
.L0d992eb8:
    # Line 1001
    ld	$gp,80($sp)
.L0d992ebc:
    ld	$s0,88($sp)
    ld	$s1,56($sp)
    ld	$ra,104($sp)
    ld	$s2,96($sp)
    ld	$s3,64($sp)
    ld	$s4,72($sp)
    jr	$ra
    addiu	$sp,$sp,176
    # Line 970
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d992ee0:
    bal __glsplc_InvalidValue
    nop
    b	.L0d992ebc
    # Line 1001
    ld	$gp,80($sp)
.L0d992ef0:
    # Line 974
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d992ef4:
    bal __glsplc_InvalidValue
    nop
    b	.L0d992ebc
    # Line 1001
    ld	$gp,80($sp)
.L0d992f04:
    # Line 962
    lw	$at,180($sp)
    sw	$at,4($sp)
    lw	$ra,188($sp)
    sw	$ra,12($sp)
    lw	$t9,6132($t2)
    lw	$t9,784($t9)
    jal	__glsplc_InvalidValue
    nop
    b	.L0d992ebc
    # Line 1001
    ld	$gp,80($sp)
.end __glsplc_TexImage3DEXT

# Function: __glsplc_TexSubImage3DEXT
# Declared: Line 1003 (Source lines: 1007-1041)
# Address: 0x0d992f30 - 0x0d993088 (Size: 344 bytes, Frame: 160)
.globl __glsplc_TexSubImage3DEXT
.ent __glsplc_TexSubImage3DEXT
__glsplc_TexSubImage3DEXT:
    # Line 1010
    lw	$t2,4112($zero)
    # Line 1007
    addiu	$sp,$sp,-160
    sd	$s1,64($sp)
    move	$v0,$a1
    move	$s1,$a7
    sd	$s0,56($sp)
    move	$s0,$a6
    sd	$s2,72($sp)
    lui	$at,0x10
    move	$s2,$a5
    sd	$ra,88($sp)
    addiu	$at,$at,-8024
    sd	$gp,80($sp)
    # Line 1012
    bltz	$a5,.L0d993074
    # Line 1007
    addu	$gp,$t9,$at
    # Line 1012
    bltz	$a6,.L0d993078
    # Line 1013
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    sd	$t2,48($sp)
    sd	$a4,40($sp)
    sd	$a2,32($sp)
    sd	$a3,24($sp)
    sd	$a0,16($sp)
    # Line 1012
    bltz	$a7,.L0d993074
    sd	$a1,8($sp)
    # Line 1017
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    lw	$a1,172($sp)
    bal __glsplc_DeformationMap3dSGIX
    lw	$a0,164($sp)
    beqz	$v0,.L0d993058
    # Line 1019
    nop	# was lw $t9, -28020($gp) # &__glImageSize3D
    move	$a0,$s2
    move	$a1,$s0
    lw	$a3,164($sp)
    move	$a2,$s1
    jal	__glImageSize3D
    lw	$a4,172($sp)
    # Line 1022
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1020
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 1022
    li	$a1,209
    # Line 1020
    and	$a0,$a0,$a2
    sd	$a0,0($sp)
    # Line 1022
    jal	__glSPDlalloc
    addiu	$a0,$a0,44
    lw	$a4,164($sp)
    beqz	$v0,.L0d993058
    lw	$a5,172($sp)
    # Line 1034
    sw	$a5,36($v0)
    # Line 1033
    sw	$a4,32($v0)
    # Line 1032
    sw	$s1,28($v0)
    # Line 1031
    sw	$s0,24($v0)
    # Line 1030
    sw	$s2,20($v0)
    # Line 1035
    ld	$a3,16($sp)
    # Line 1026
    ld	$a7,8($sp)
    # Line 1027
    ld	$t0,32($sp)
    # Line 1028
    ld	$t1,24($sp)
    # Line 1029
    ld	$t2,40($sp)
    # Line 1035
    ld	$a6,0($sp)
    sw	$a6,40($v0)
    # Line 1029
    sw	$t2,16($v0)
    # Line 1028
    sw	$t1,12($v0)
    # Line 1027
    sw	$t0,8($v0)
    # Line 1026
    sw	$a7,4($v0)
    # Line 1035
    blez	$a6,.L0d993058
    # Line 1025
    sw	$a3,0($v0)
    # Line 1038
    # lw $t9, -28016($gp) # &__glFillImage3D
    move	$a1,$s2
    ld	$a0,48($sp)
    move	$a2,$s0
    move	$a3,$s1
    addiu	$a7,$v0,44
    jal	__glFillImage3D
    lw	$a6,180($sp)
.L0d993058:
    ld	$s0,56($sp)
.L0d99305c:
    ld	$ra,88($sp)
    ld	$s1,64($sp)
    ld	$s2,72($sp)
    # Line 1041
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d993074:
    # Line 1013
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d993078:
    bal __glsplc_InvalidValue
    nop
    b	.L0d99305c
    ld	$s0,56($sp)
.end __glsplc_TexSubImage3DEXT

# Function: __glsplc_Disable
# Declared: Line 1043 (Source lines: 1044-1092)
# Address: 0x0d993090 - 0x0d9932fc (Size: 620 bytes, Frame: 32)
.globl __glsplc_Disable
.ent __glsplc_Disable
__glsplc_Disable:
    # Line 1044
    addiu	$sp,$sp,-32
    # Line 1048
    li	$a4,0x8074
    # Line 1044
    sd	$s0,0($sp)
    lui	$v0,0x10
    # Line 1048
    sltu	$at,$a0,$a4
    # Line 1044
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-8376
    sd	$gp,8($sp)
    # Line 1048
    bnez	$at,.L0d993160
    # Line 1044
    addu	$gp,$t9,$v0
    # Line 1069
    lui	$a6,0xffff
    # Line 1048
    li	$a3,0x8079
    sltu	$v1,$a3,$a0
    # Line 1058
    li	$a7,-2
    # Line 1069
    ori	$a6,$a6,0x7c39
    # Line 1048
    bnez	$v1,.L0d993160
    # Line 1051
    li	$a0,0x8078
    sltu	$a2,$a0,$s0
    sltu	$a1,$s0,$a0
    li	$a0,0x8439
    bnez	$a1,.L0d99313c
    # Line 1049
    lw	$v0,4112($zero)
    # Line 1051
    bnez	$a2,.L0d9931a0
    # Line 1070
    li	$a5,1
    # Line 1069
    lw	$a4,28268($v0)
    addu	$a4,$a4,$a6
    # Line 1070
    lw	$a3,5408($v0)
    sllv	$a5,$a5,$a4
    nor	$a5,$a5,$zero
    and	$a3,$a3,$a5
    bnez	$a4,.L0d99318c
    sw	$a3,5408($v0)
    # Line 1073
    lw	$t1,5416($v0)
    li	$t2,-5
    # Line 1072
    lui	$t0,0x7f0
    lw	$a7,5404($v0)
    # Line 1073
    and	$t1,$t1,$t2
    sw	$t1,5416($v0)
    # Line 1072
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    b	.L0d99318c
    sw	$a7,5404($v0)
.L0d99313c:
    # Line 1051
    li	$t9,0x8077
    li	$a0,0x8076
    sltu	$t3,$s0,$a0
    # Line 1057
    li	$a5,-3841
    # Line 1051
    bnez	$t3,.L0d9931d4
    sltu	$t8,$a0,$s0
    beqz	$t8,.L0d993274
    nop
    beq	$s0,$t9,.L0d9932b0
.L0d993160:
    # Line 1089
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
.L0d993164:
    li	$a1,137
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0d99318c
    ld	$ra,16($sp)
    # Line 1092
    ld	$gp,8($sp)
    # Line 1091
    sw	$s0,0($v0)
    # Line 1092
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d99318c:
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9931a0:
    # Line 1051
    li	$v1,0x843a
    sltu	$ra,$s0,$a0
    bnez	$ra,.L0d993218
    sltu	$at,$a0,$s0
    beqz	$at,.L0d9932e8
    nop
    bne	$s0,$v1,.L0d993164
    # Line 1089
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1084
    lw	$a0,5412($v0)
    li	$a1,-3
    and	$a0,$a0,$a1
    b	.L0d99318c
    sw	$a0,5412($v0)
.L0d9931d4:
    # Line 1051
    li	$a0,0x8075
    sltu	$a2,$s0,$a0
    move	$ra,$ra
    bnez	$a2,.L0d993248
    sltu	$a3,$a0,$s0
    bnez	$a3,.L0d993164
    # Line 1089
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1092
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    # Line 1058
    lw	$a6,5416($v0)
    # Line 1057
    lw	$a4,5404($v0)
    # Line 1092
    addiu	$sp,$sp,32
    # Line 1058
    and	$a6,$a6,$a7
    sw	$a6,5416($v0)
    # Line 1057
    and	$a4,$a4,$a5
    # Line 1092
    jr	$ra
    # Line 1057
    sw	$a4,5404($v0)
.L0d993218:
    # Line 1051
    bne	$a3,$s0,.L0d993164
    # Line 1089
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1078
    lw	$t2,5416($v0)
    li	$t3,-17
    # Line 1077
    lui	$t1,0x800
    lw	$t0,5404($v0)
    # Line 1078
    and	$t2,$t2,$t3
    sw	$t2,5416($v0)
    # Line 1077
    nor	$t1,$t1,$zero
    and	$t0,$t0,$t1
    # Line 1078
    b	.L0d99318c
    # Line 1077
    sw	$t0,5404($v0)
.L0d993248:
    # Line 1051
    bne	$a4,$s0,.L0d993164
    # Line 1089
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1054
    lw	$ra,5416($v0)
    li	$at,-33
    # Line 1053
    lw	$t8,5404($v0)
    # Line 1054
    and	$ra,$ra,$at
    sw	$ra,5416($v0)
    # Line 1053
    li	$t9,-256
    and	$t8,$t8,$t9
    # Line 1054
    b	.L0d99318c
    # Line 1053
    sw	$t8,5404($v0)
.L0d993274:
    # Line 1092
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    # Line 1062
    lw	$a1,5416($v0)
    # Line 1061
    lw	$v1,5404($v0)
    # Line 1092
    addiu	$sp,$sp,32
    # Line 1062
    li	$a2,-3
    # Line 1061
    lui	$a0,0xf
    move	$ra,$ra
    ori	$a0,$a0,0xf000
    # Line 1062
    and	$a1,$a1,$a2
    sw	$a1,5416($v0)
    # Line 1061
    nor	$a0,$a0,$zero
    and	$v1,$v1,$a0
    # Line 1092
    jr	$ra
    # Line 1061
    sw	$v1,5404($v0)
.L0d9932b0:
    # Line 1092
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    # Line 1066
    lw	$a3,5416($v0)
    # Line 1065
    lw	$a1,5404($v0)
    # Line 1092
    addiu	$sp,$sp,32
    # Line 1066
    li	$a4,-9
    move	$ra,$ra
    # Line 1065
    lui	$a2,0xfff
    ori	$a2,$a2,0xffff
    # Line 1066
    and	$a3,$a3,$a4
    sw	$a3,5416($v0)
    # Line 1065
    and	$a1,$a1,$a2
    # Line 1092
    jr	$ra
    # Line 1065
    sw	$a1,5404($v0)
.L0d9932e8:
    # Line 1081
    lw	$a5,5412($v0)
    li	$a6,-2
    and	$a5,$a5,$a6
    b	.L0d99318c
    sw	$a5,5412($v0)
.end __glsplc_Disable

# Function: __glsplc_Enable
# Declared: Line 1094 (Source lines: 1095-1142)
# Address: 0x0d993300 - 0x0d99352c (Size: 556 bytes, Frame: 32)
.globl __glsplc_Enable
.ent __glsplc_Enable
__glsplc_Enable:
    # Line 1095
    addiu	$sp,$sp,-32
    # Line 1099
    li	$a4,0x8074
    # Line 1095
    sd	$s0,0($sp)
    lui	$v0,0x10
    # Line 1099
    sltu	$at,$a0,$a4
    # Line 1095
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-9000
    sd	$gp,8($sp)
    # Line 1099
    bnez	$at,.L0d9933b8
    # Line 1095
    addu	$gp,$t9,$v0
    # Line 1102
    li	$t3,0x8077
    # Line 1099
    li	$a3,0x8079
    sltu	$v1,$a3,$a0
    # Line 1102
    li	$a0,0x8078
    # Line 1120
    lui	$a5,0xffff
    # Line 1102
    sltu	$a2,$a0,$s0
    # Line 1099
    bnez	$v1,.L0d9933b8
    # Line 1102
    sltu	$a1,$s0,$a0
    li	$a0,0x8439
    # Line 1100
    lw	$v0,4112($zero)
    # Line 1102
    bnez	$a1,.L0d99339c
    sltu	$t8,$s0,$a0
    bnez	$a2,.L0d9933fc
    # Line 1120
    ori	$a5,$a5,0x7c39
    lw	$a4,28268($v0)
    # Line 1121
    li	$a3,1
    # Line 1120
    addu	$a4,$a4,$a5
    # Line 1121
    sllv	$a3,$a3,$a4
    bnez	$a4,.L0d9933e8
    sw	$a3,5408($v0)
    # Line 1124
    lw	$t0,5416($v0)
    # Line 1123
    lw	$a6,5404($v0)
    # Line 1124
    ori	$t0,$t0,0x4
    sw	$t0,5416($v0)
    # Line 1123
    lui	$a7,0x7f0
    or	$a6,$a6,$a7
    b	.L0d9933e8
    sw	$a6,5404($v0)
.L0d99339c:
    # Line 1102
    li	$a0,0x8076
    sltu	$t1,$s0,$a0
    bnez	$t1,.L0d993428
    sltu	$t2,$a0,$s0
    beqz	$t2,.L0d9934b8
    nop
    beq	$s0,$t3,.L0d9934ec
.L0d9933b8:
    # Line 1139
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
.L0d9933bc:
    li	$a1,138
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0d9933ec
    ld	$ra,16($sp)
    ld	$ra,16($sp)
    # Line 1142
    ld	$gp,8($sp)
    # Line 1141
    sw	$s0,0($v0)
    # Line 1142
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9933e8:
    ld	$ra,16($sp)
.L0d9933ec:
    ld	$s0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9933fc:
    # Line 1102
    li	$ra,0x843a
    bnez	$t8,.L0d99346c
    sltu	$t9,$a0,$s0
    beqz	$t9,.L0d99351c
    nop
    bne	$s0,$ra,.L0d9933bc
    # Line 1139
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1135
    lw	$at,5412($v0)
    ori	$at,$at,0x2
    b	.L0d9933e8
    sw	$at,5412($v0)
.L0d993428:
    # Line 1102
    li	$a0,0x8075
    sltu	$v1,$s0,$a0
    move	$ra,$ra
    bnez	$v1,.L0d993494
    sltu	$a1,$a0,$s0
    bnez	$a1,.L0d9933bc
    # Line 1139
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1142
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    # Line 1109
    lw	$a3,5416($v0)
    # Line 1108
    lw	$a2,5404($v0)
    # Line 1142
    addiu	$sp,$sp,32
    # Line 1109
    ori	$a3,$a3,0x1
    sw	$a3,5416($v0)
    # Line 1108
    ori	$a2,$a2,0xf00
    # Line 1142
    jr	$ra
    # Line 1108
    sw	$a2,5404($v0)
.L0d99346c:
    # Line 1102
    bne	$a3,$s0,.L0d9933bc
    # Line 1139
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1129
    lw	$a6,5416($v0)
    # Line 1128
    lw	$a4,5404($v0)
    # Line 1129
    ori	$a6,$a6,0x10
    sw	$a6,5416($v0)
    # Line 1128
    lui	$a5,0x800
    or	$a4,$a4,$a5
    # Line 1129
    b	.L0d9933e8
    # Line 1128
    sw	$a4,5404($v0)
.L0d993494:
    # Line 1102
    bne	$a4,$s0,.L0d9933bc
    # Line 1139
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1105
    lw	$t0,5416($v0)
    # Line 1104
    lw	$a7,5404($v0)
    # Line 1105
    ori	$t0,$t0,0x20
    sw	$t0,5416($v0)
    # Line 1104
    ori	$a7,$a7,0xff
    # Line 1105
    b	.L0d9933e8
    # Line 1104
    sw	$a7,5404($v0)
.L0d9934b8:
    # Line 1142
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    # Line 1113
    lw	$t3,5416($v0)
    # Line 1112
    lw	$t1,5404($v0)
    # Line 1142
    addiu	$sp,$sp,32
    move	$ra,$ra
    # Line 1112
    lui	$t2,0xf
    ori	$t2,$t2,0xf000
    # Line 1113
    ori	$t3,$t3,0x2
    sw	$t3,5416($v0)
    # Line 1112
    or	$t1,$t1,$t2
    # Line 1142
    jr	$ra
    # Line 1112
    sw	$t1,5404($v0)
.L0d9934ec:
    # Line 1142
    ld	$gp,8($sp)
    # Line 1117
    lw	$t9,5416($v0)
    # Line 1116
    lui	$t8,0xf000
    lw	$s0,5404($v0)
    move	$ra,$ra
    # Line 1117
    ori	$t9,$t9,0x8
    sw	$t9,5416($v0)
    # Line 1116
    or	$s0,$s0,$t8
    sw	$s0,5404($v0)
    # Line 1142
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d99351c:
    # Line 1132
    lw	$ra,5412($v0)
    ori	$ra,$ra,0x1
    b	.L0d9933e8
    sw	$ra,5412($v0)
.end __glsplc_Enable

# Function: __glsplc_ColorTableSGI
# Declared: Line 1145 (Source lines: 1146-1181)
# Address: 0x0d993530 - 0x0d993694 (Size: 356 bytes, Frame: 208)
.globl __glsplc_ColorTableSGI
.ent __glsplc_ColorTableSGI
__glsplc_ColorTableSGI:
    # Line 1146
    move	$v0,$a4
    # Line 1149
    lw	$t0,4112($zero)
    # Line 1146
    addiu	$sp,$sp,-80
    sd	$s0,56($sp)
    move	$s0,$a0
    # Line 1151
    li	$at,0x80d3
    # Line 1146
    lui	$v1,0x10
    sd	$s1,48($sp)
    move	$s1,$a2
    sd	$ra,72($sp)
    addiu	$v1,$v1,-9560
    # Line 1160
    addiu	$a6,$s1,-1
    sd	$gp,64($sp)
    # Line 1151
    beq	$a0,$at,.L0d993674
    # Line 1146
    addu	$gp,$t9,$v1
    # Line 1151
    li	$a0,0x80d4
    beq	$s0,$a0,.L0d993674
    li	$a2,0x80d5
    beq	$s0,$a2,.L0d993674
    li	$a4,0x80bd
    beq	$s0,$a4,.L0d993674
    nop
    # Line 1160
    bltz	$s1,.L0d9935b0
    # Line 1161
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 1160
    and	$a6,$s1,$a6
    sd	$a1,40($sp)
    sd	$a5,32($sp)
    sd	$t0,24($sp)
    sd	$a3,16($sp)
    beqz	$a6,.L0d9935d0
    sd	$v0,8($sp)
    # Line 1161
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d9935b0:
    bal __glsplc_InvalidValue
    nop
.L0d9935b8:
    ld	$ra,72($sp)
.L0d9935bc:
    ld	$s1,48($sp)
    ld	$s0,56($sp)
    # Line 1181
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9935d0:
    # Line 1165
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,6880
    ld	$a0,16($sp)
    bal __glsplc_DeformationMap3dSGIX
    ld	$a1,8($sp)
    beqz	$v0,.L0d9935b8
    # Line 1167
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    move	$a0,$s1
    ld	$a3,8($sp)
    ld	$a2,16($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 1169
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1168
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 1169
    li	$a1,227
    # Line 1168
    and	$a0,$a0,$a2
    sd	$a0,0($sp)
    # Line 1169
    jal	__glSPDlalloc
    addiu	$a0,$a0,24
    beqz	$v0,.L0d9935bc
    ld	$ra,72($sp)
    # Line 1179
    ld	$a5,32($sp)
    # Line 1174
    sw	$s1,8($v0)
    # Line 1179
    ld	$a0,24($sp)
    # Line 1172
    sw	$s0,0($v0)
    # Line 1173
    ld	$a7,40($sp)
    # Line 1175
    ld	$a3,16($sp)
    # Line 1176
    ld	$a4,8($sp)
    # Line 1177
    ld	$t0,0($sp)
    sw	$t0,20($v0)
    # Line 1179
    # lw $t9, -28012($gp) # &__glFillImage
    # Line 1176
    sw	$a4,16($v0)
    # Line 1179
    addiu	$a6,$v0,24
    li	$a2,1
    # Line 1175
    sw	$a3,12($v0)
    # Line 1179
    move	$a1,$s1
    jal	__glFillImage
    # Line 1173
    sw	$a7,4($v0)
    b	.L0d9935bc
    ld	$ra,72($sp)
.L0d993674:
    # Line 1155
    lw	$t9,6132($t0)
    lw	$t9,952($t9)
    move	$a0,$s0
    move	$a2,$s1
    jalr	$t9
    move	$a4,$v0
    b	.L0d9935bc
    ld	$ra,72($sp)
.end __glsplc_ColorTableSGI

# Function: __glsplc_ColorSubTable
# Declared: Line 1184 (Source lines: 1186-1218)
# Address: 0x0d9936a0 - 0x0d993804 (Size: 356 bytes, Frame: 208)
.globl __glsplc_ColorSubTable
.ent __glsplc_ColorSubTable
__glsplc_ColorSubTable:
    # Line 1190
    lw	$at,4112($zero)
    # Line 1186
    addiu	$sp,$sp,-80
    # Line 1190
    sd	$at,24($sp)
    # Line 1186
    sd	$a5,16($sp)
    sd	$s0,48($sp)
    sd	$s2,40($sp)
    lui	$v0,0x10
    move	$s2,$a2
    sd	$s1,72($sp)
    addiu	$v0,$v0,-9928
    move	$s1,$a3
    sd	$gp,64($sp)
    addu	$gp,$t9,$v0
    move	$s0,$a4
    # Line 1192
    move	$a5,$a4
    # lw $t9, -28696($gp) # &__glCheckColorSubTableArgs
    # Line 1186
    sd	$a1,32($sp)
    # Line 1192
    move	$a4,$a3
    move	$a3,$a2
    # Line 1186
    move	$a2,$a1
    move	$a1,$a0
    sd	$a0,8($sp)
    sd	$ra,56($sp)
    # Line 1192
    jal	__glCheckColorSubTableArgs
    move	$a0,$at
    # Line 1194
    li	$v1,1280
    li	$a0,1281
    beq	$v0,$v1,.L0d9937e0
    li	$a1,1282
    beq	$v0,$a0,.L0d9937f4
    # Line 1199
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 1194
    beq	$v0,$a1,.L0d9937cc
    # Line 1206
    nop	# was lw $t9, -28024($gp) # &__glImageSize
    move	$a0,$s2
    move	$a3,$s0
    move	$a2,$s1
    jal	__glImageSize
    li	$a1,1
    # Line 1208
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1207
    li	$a2,-4
    addiu	$a0,$v0,3
    # Line 1208
    li	$a1,251
    # Line 1207
    and	$a0,$a0,$a2
    sd	$a0,0($sp)
    # Line 1208
    jal	__glSPDlalloc
    addiu	$a0,$a0,24
    bnez	$v0,.L0d99377c
    nop
    # Line 1197
    ld	$gp,64($sp)
.L0d993764:
    ld	$ra,56($sp)
    ld	$s0,48($sp)
    ld	$s1,72($sp)
    ld	$s2,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d99377c:
    # Line 1215
    sw	$s0,16($v0)
    # Line 1214
    sw	$s1,12($v0)
    # Line 1218
    ld	$a5,16($sp)
    # Line 1213
    sw	$s2,8($v0)
    # Line 1218
    ld	$a0,24($sp)
    ld	$a7,8($sp)
    # Line 1212
    ld	$t0,32($sp)
    # Line 1216
    ld	$t1,0($sp)
    # Line 1218
    # lw $t9, -28012($gp) # &__glFillImage
    addiu	$a6,$v0,24
    move	$a4,$s0
    # Line 1216
    sw	$t1,20($v0)
    # Line 1218
    move	$a3,$s1
    li	$a2,1
    # Line 1212
    sw	$t0,4($v0)
    # Line 1218
    move	$a1,$s2
    jal	__glFillImage
    # Line 1211
    sw	$a7,0($v0)
    b	.L0d993764
    # Line 1197
    ld	$gp,64($sp)
.L0d9937cc:
    # Line 1202
    # lw $t9, -30748($gp) # &__glsplc_InvalidOperation
    bal __glsplc_InvalidOperation
    nop
    b	.L0d993764
    # Line 1197
    ld	$gp,64($sp)
.L0d9937e0:
    # Line 1196
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    b	.L0d993764
    # Line 1197
    ld	$gp,64($sp)
.L0d9937f4:
    # Line 1199
    bal __glsplc_InvalidValue
    nop
    b	.L0d993764
    # Line 1197
    ld	$gp,64($sp)
.end __glsplc_ColorSubTable

# Function: __glsplc_DrawArraysEXT
# Declared: Line 1223 (Source lines: 1226-1273)
# Address: 0x0d993810 - 0x0d9939fc (Size: 492 bytes, Frame: 240)
.globl __glsplc_DrawArraysEXT
.ent __glsplc_DrawArraysEXT
__glsplc_DrawArraysEXT:
    # Line 1226
    addiu	$sp,$sp,-112
    sd	$s6,40($sp)
    sd	$s3,48($sp)
    sd	$s8,56($sp)
    sd	$ra,64($sp)
    sd	$s4,72($sp)
    sd	$s0,80($sp)
    sd	$s5,88($sp)
    sd	$s7,96($sp)
    sd	$s2,8($sp)
    sd	$s1,16($sp)
    # Line 1228
    sltiu	$at,$a0,10
    # Line 1226
    lui	$v0,0x10
    # Line 1227
    lw	$s1,4112($zero)
    # Line 1226
    move	$s2,$a2
    sd	$gp,24($sp)
    addiu	$v0,$v0,-10296
    addu	$gp,$t9,$v0
    # Line 1228
    beqz	$at,.L0d9939d4
    lw	$a4,5416($s1)
    sd	$a4,0($sp)
    # Line 1238
    bltz	$a2,.L0d9939e8
    sd	$a1,32($sp)
    # Line 1244
    # lw $t9, -18404($gp) # &glBegin
    jal	glBegin
    ld	$s0,32($sp)
    # Line 1245
    addu	$s3,$s2,$s0
    # Line 1246
    slt	$v1,$s0,$s3
    beqz	$v1,.L0d993994
    sd	$s2,104($sp)
    ld	$s2,0($sp)
    andi	$s8,$s2,0x20
    andi	$s4,$s2,0x10
    andi	$s7,$s2,0x8
    andi	$s6,$s2,0x4
    andi	$s5,$s2,0x2
    andi	$s2,$s2,0x1
    nop
    nop
    nop
.L0d9938b0:
    beqz	$s2,.L0d9938d4
    nop
    # Line 1248
    lw	$a2,5124($s1)
    mult	$a2,$s0
    lw	$t9,5136($s1)
    lw	$a0,5116($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d9938d4:
    beqz	$s5,.L0d9938f8
    nop
    # Line 1252
    lw	$a2,5152($s1)
    mult	$a2,$s0
    lw	$t9,5164($s1)
    lw	$a0,5140($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d9938f8:
    beqz	$s6,.L0d99391c
    nop
    # Line 1256
    lw	$a2,5204($s1)
    mult	$a2,$s0
    lw	$t9,5216($s1)
    lw	$a0,5192($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d99391c:
    beqz	$s7,.L0d993940
    nop
    # Line 1260
    lw	$a2,5176($s1)
    mult	$a2,$s0
    lw	$t9,5188($s1)
    lw	$a0,5168($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d993940:
    beqz	$s4,.L0d993964
    nop
    # Line 1264
    lw	$a2,5224($s1)
    mult	$a2,$s0
    lw	$t9,5236($s1)
    lw	$a0,5220($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d993964:
    beqz	$s8,.L0d993988
    nop
    # Line 1268
    lw	$a2,5100($s1)
    mult	$a2,$s0
    lw	$t9,5112($s1)
    lw	$a0,5088($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d993988:
    # Line 1246
    addiu	$s0,$s0,1
    bne	$s3,$s0,.L0d9938b0
    nop
.L0d993994:
    # Line 1272
    # lw $t9, -18260($gp) # &glEnd
    jal	glEnd
    nop
    ld	$s2,8($sp)
.L0d9939a4:
    ld	$s6,40($sp)
    ld	$s3,48($sp)
    ld	$s8,56($sp)
    ld	$s4,72($sp)
    ld	$s0,80($sp)
    ld	$s1,16($sp)
    ld	$ra,64($sp)
    ld	$s5,88($sp)
    ld	$s7,96($sp)
    # Line 1273
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9939d4:
    # Line 1237
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    bal __glsplc_InvalidEnum
    nop
    b	.L0d9939a4
    ld	$s2,8($sp)
.L0d9939e8:
    # Line 1241
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    bal __glsplc_InvalidValue
    nop
    b	.L0d9939a4
    ld	$s2,8($sp)
.end __glsplc_DrawArraysEXT

# Function: __glsplc_DrawElements
# Declared: Line 1275 (Source lines: 1277-1310)
# Address: 0x0d993a00 - 0x0d993b90 (Size: 400 bytes, Frame: 48)
.globl __glsplc_DrawElements
.ent __glsplc_DrawElements
__glsplc_DrawElements:
    # Line 1284
    li	$v1,5123
    # Line 1278
    lw	$a5,4112($zero)
    # Line 1277
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    move	$s1,$a2
    lui	$at,0x10
    sd	$ra,32($sp)
    # Line 1284
    li	$a2,5121
    # Line 1277
    addiu	$at,$at,-10792
    sd	$gp,24($sp)
    # Line 1278
    bltz	$a1,.L0d993b7c
    # Line 1277
    addu	$gp,$t9,$at
    # Line 1284
    sltiu	$v0,$a0,10
    beqz	$v0,.L0d993a58
    # Line 1287
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    sd	$a3,8($sp)
    # Line 1284
    beq	$a2,$s1,.L0d993a74
    sd	$a1,0($sp)
    beq	$s1,$v1,.L0d993a74
    li	$a1,5125
    beq	$s1,$a1,.L0d993a74
    # Line 1287
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
.L0d993a58:
    bal __gllc_InvalidEnum
    move	$a0,$a5
    ld	$ra,32($sp)
.L0d993a64:
    # Line 1310
    ld	$gp,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d993a74:
    # Line 1290
    # lw $t9, -18404($gp) # &glBegin
    jal	glBegin
    nop
    # Line 1291
    li	$a2,5121
    li	$a4,5125
    li	$a3,5123
    beq	$a2,$s1,.L0d993afc
    # Line 1294
    ld	$t8,0($sp)
    # Line 1291
    beq	$s1,$a3,.L0d993b3c
    # Line 1299
    ld	$t9,0($sp)
    # Line 1291
    bne	$s1,$a4,.L0d993aec
    # Line 1309
    nop	# was lw $t9, -18260($gp) # &glEnd
    # Line 1304
    ld	$a5,0($sp)
    ld	$t8,8($sp)
    blez	$a5,.L0d993ae8
    ld	$s1,0($sp)
    sll	$s1,$s1,0x2
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    nop
    # Line 1305
    # lw $t9, -17088($gp) # &glArrayElement
.L0d993ad0:
    jal	glArrayElement
    lw	$a0,0($s0)
    # Line 1304
    addiu	$s0,$s0,4
    bne	$s0,$s1,.L0d993ad0
    # Line 1305
    nop	# was lw $t9, -17088($gp) # &glArrayElement
    ld	$s0,40($sp)
.L0d993ae8:
    # Line 1309
    # lw $t9, -18260($gp) # &glEnd
.L0d993aec:
    jal	glEnd
    nop
    b	.L0d993a64
    ld	$ra,32($sp)
.L0d993afc:
    # Line 1294
    blez	$t8,.L0d993ae8
    ld	$s1,0($sp)
    ld	$t8,8($sp)
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    nop
    # Line 1295
    # lw $t9, -17088($gp) # &glArrayElement
.L0d993b20:
    jal	glArrayElement
    lbu	$a0,0($s0)
    # Line 1294
    addiu	$s0,$s0,1
    bne	$s0,$s1,.L0d993b20
    # Line 1295
    nop	# was lw $t9, -17088($gp) # &glArrayElement
    b	.L0d993ae8
    ld	$s0,40($sp)
.L0d993b3c:
    # Line 1299
    ld	$t8,8($sp)
    blez	$t9,.L0d993ae8
    ld	$s1,0($sp)
    addu	$s1,$s1,$s1
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    # Line 1300
    # lw $t9, -17088($gp) # &glArrayElement
.L0d993b60:
    jal	glArrayElement
    lhu	$a0,0($s0)
    # Line 1299
    addiu	$s0,$s0,2
    bne	$s0,$s1,.L0d993b60
    # Line 1300
    nop	# was lw $t9, -17088($gp) # &glArrayElement
    b	.L0d993ae8
    ld	$s0,40($sp)
.L0d993b7c:
    # Line 1281
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    bal __gllc_InvalidValue
    move	$a0,$a5
    b	.L0d993a64
    ld	$ra,32($sp)
.end __glsplc_DrawElements

# Function: __glsplc_DrawRangeElements
# Declared: Line 1312 (Source lines: 1315-1324)
# Address: 0x0d993b90 - 0x0d993bec (Size: 92 bytes, Frame: 16)
.globl __glsplc_DrawRangeElements
.ent __glsplc_DrawRangeElements
__glsplc_DrawRangeElements:
    # Line 1315
    addiu	$sp,$sp,-16
    sltu	$at,$a2,$a1
    lui	$v0,0x10
    move	$a7,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,-11192
    sd	$gp,0($sp)
    beqz	$at,.L0d993bc8
    addu	$gp,$t9,$v0
    # Line 1319
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    bal __gllc_InvalidValue
    lw	$a0,4112($zero)
    b	.L0d993bdc
    nop
.L0d993bc8:
    # Line 1323
    # lw $t9, -30664($gp) # &__glsplc_DrawElements
    move	$a2,$a4
    move	$a1,$a3
    bal __glsplc_DrawElements
    move	$a3,$a5
.L0d993bdc:
    ld	$ra,8($sp)
    # Line 1324
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_DrawRangeElements

