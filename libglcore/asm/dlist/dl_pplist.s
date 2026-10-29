# Source: ../dlist/dl_pplist.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_pplist.c
# Total Functions: 9

.text

# Function: __glSPExecuteDlist
# Declared: Line 36 (Source lines: 36-41)
# Address: 0x0d993bf0 - 0x0d993c24 (Size: 52 bytes, Frame: 16)
.globl __glSPExecuteDlist
.ent __glSPExecuteDlist
__glSPExecuteDlist:
    # Line 36
    lui	$at,0x10
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11288
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 40
    # lw $t9, -19520($gp) # &__glSPInterpret
    # Line 36
    sd	$ra,0($sp)
    # Line 40
    jal	__glSPInterpret
    lw	$a0,16($a1)
    ld	$ra,0($sp)
    # Line 41
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glSPExecuteDlist

# Function: __glSPDlistAddFree
# Declared: Line 61 (Source lines: 61-71)
# Address: 0x0d993c30 - 0x0d993cc4 (Size: 148 bytes, Frame: 192)
.globl __glSPDlistAddFree
.ent __glSPDlistAddFree
__glSPDlistAddFree:
    # Line 61
    addiu	$sp,$sp,-64
    sd	$a0,8($sp)
    move	$v0,$a0
    sd	$a1,16($sp)
    # Line 65
    lw	$a1,5068($v0)
    # Line 61
    sd	$a2,32($sp)
    # Line 64
    lw	$at,5072($a0)
    # Line 61
    lui	$v1,0x10
    sd	$gp,48($sp)
    addiu	$v1,$v1,-11352
    addu	$gp,$t9,$v1
    # Line 65
    lw	$t9,5020($a0)
    # Line 61
    sd	$ra,0($sp)
    # Line 64
    sd	$at,40($sp)
    # Line 65
    sll	$at,$at,0x3
    sd	$at,24($sp)
    jalr	$t9
    addiu	$a2,$at,8
    beqz	$v0,.L0d993cb8
    ld	$ra,0($sp)
    # Line 71
    ld	$gp,48($sp)
    # Line 68
    ld	$a2,32($sp)
    # Line 67
    ld	$a4,16($sp)
    ld	$a3,24($sp)
    # Line 70
    ld	$a0,8($sp)
    ld	$a1,40($sp)
    # Line 67
    addu	$a3,$v0,$a3
    sw	$a4,0($a3)
    # Line 68
    sw	$a2,4($a3)
    # Line 70
    addiu	$a1,$a1,1
    sw	$a1,5072($a0)
    # Line 71
    addiu	$sp,$sp,64
    jr	$ra
    # Line 69
    sw	$v0,5068($a0)
.L0d993cb8:
    # Line 71
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSPDlistAddFree

# Function: __glSPFreeDlist
# Declared: Line 74 (Source lines: 74-94)
# Address: 0x0d993cd0 - 0x0d993dc0 (Size: 240 bytes, Frame: 192)
.globl __glSPFreeDlist
.ent __glSPFreeDlist
__glSPFreeDlist:
    # Line 74
    addiu	$sp,$sp,-64
    sd	$s0,0($sp)
    # Line 77
    lw	$s0,40($a1)
    sd	$s3,40($sp)
    # Line 74
    sd	$s4,24($sp)
    sd	$s1,8($sp)
    # Line 76
    lw	$s1,36($a1)
    # Line 74
    move	$s4,$a1
    sd	$s2,16($sp)
    lui	$at,0x10
    move	$s2,$a0
    sd	$ra,48($sp)
    addiu	$at,$at,-11512
    sd	$gp,32($sp)
    # Line 77
    beqz	$s1,.L0d993d24
    # Line 74
    addu	$gp,$t9,$at
    # Line 80
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,16608
    bal __glsplc_AddIlist
    lw	$a1,12($a1)
    # Line 81
    addiu	$s1,$s1,-1
.L0d993d24:
    # Line 86
    addiu	$s1,$s1,-1
    li	$s3,-1
    beq	$s3,$s1,.L0d993d5c
    nop
    nop
    nop
    nop
.L0d993d40:
    # Line 87
    lw	$t9,0($s0)
    move	$a0,$s2
    jal	sub_0d990000
    lw	$a1,4($s0)
    # Line 86
    addiu	$s1,$s1,-1
    bne	$s3,$s1,.L0d993d40
    # Line 88
    addiu	$s0,$s0,8
.L0d993d5c:
    ld	$s3,40($sp)
    # Line 90
    lw	$t9,5024($s2)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    move	$a0,$s2
    jalr	$t9
    lw	$a1,40($s4)
    # Line 91
    lw	$t9,5024($s2)
    move	$a0,$s2
    jalr	$t9
    lw	$a1,16($s4)
    # Line 92
    lw	$t9,5024($s2)
    move	$a0,$s2
    jalr	$t9
    lw	$a1,20($s4)
    # Line 93
    lw	$t9,5024($s2)
    move	$a0,$s2
    jalr	$t9
    move	$a1,$s4
    ld	$ra,48($sp)
    ld	$s2,16($sp)
    ld	$s4,24($sp)
    # Line 94
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSPFreeDlist

# Function: __glSPDlistCompiler
# Declared: Line 96 (Source lines: 96-146)
# Address: 0x0d993dc0 - 0x0d993efc (Size: 316 bytes, Frame: 192)
.globl __glSPDlistCompiler
.ent __glSPDlistCompiler
__glSPDlistCompiler:
    # Line 96
    addiu	$sp,$sp,-64
    sd	$s2,24($sp)
    # Line 99
    lw	$s2,5072($a0)
    sd	$s0,0($sp)
    # Line 96
    sd	$a1,16($sp)
    sd	$s1,32($sp)
    lui	$v0,0x10
    sd	$gp,48($sp)
    addiu	$v0,$v0,-11752
    addu	$gp,$t9,$v0
    # Line 101
    lw	$t9,5016($a0)
    # Line 98
    lw	$at,4140($zero)
    # Line 96
    move	$s1,$a0
    # Line 101
    li	$a1,72
    # Line 96
    sd	$ra,40($sp)
    # Line 98
    sltu	$at,$zero,$at
    # Line 101
    jalr	$t9
    sd	$at,8($sp)
    # Line 122
    ld	$a6,16($sp)
    # Line 101
    beqz	$v0,.L0d993edc
    move	$s0,$v0
    # Line 103
    li	$a2,1
    sw	$a2,0($v0)
    # Line 104
    lw	$a1,4968($s1)
    # Line 106
    ld	$a0,8($sp)
    # Line 104
    sw	$a1,4($v0)
    # Line 106
    lw	$v1,5076($s1)
    beqz	$a0,.L0d993e64
    sw	$v1,32($v0)
    # Line 109
    # lw $t9, -32508($gp) # &__glsplc_AddSentinel
    jal	__glsplc_AddSentinel
    nop
    # Line 122
    ld	$a3,16($sp)
    # Line 111
    lw	$a5,4976($s1)
    sw	$a5,8($s0)
    # Line 120
    lw	$a4,5076($s1)
    sw	$a4,32($s0)
    # Line 122
    lw	$a3,12($a3)
    # Line 124
    addiu	$s2,$s2,1
    b	.L0d993e7c
    # Line 122
    sw	$a3,12($s0)
.L0d993e64:
    # Line 116
    la	$t0,__glEmptyExecuteDlist
    sw	$t0,8($v0)
    # Line 120
    lw	$a7,5076($s1)
    sw	$a7,32($v0)
    # Line 122
    lw	$a6,12($a6)
    sw	$a6,12($v0)
.L0d993e7c:
    # Line 140
    lwc1	$f0,_lit_3f800000
    # Line 127
    sw	$s2,36($s0)
    # Line 128
    lw	$t3,5068($s1)
    sw	$t3,40($s0)
    # Line 133
    lw	$t2,5080($s1)
    sw	$t2,16($s0)
    # Line 135
    lw	$t1,5084($s1)
    # Line 140
    swc1	$f0,44($s0)
    # Line 136
    sw	$zero,20($s0)
    # Line 135
    sw	$t1,24($s0)
    sw	$t1,28($s0)
    # Line 140
    lw	$t9,5036($s1)
    beqz	$t9,.L0d993ebc
    # Line 144
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s0
.L0d993ebc:
    # Line 146
    ld	$gp,48($sp)
    ld	$ra,40($sp)
    move	$v0,$s0
    ld	$s0,0($sp)
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d993edc:
    ld	$gp,48($sp)
    ld	$ra,40($sp)
    ld	$s0,0($sp)
    # Line 102
    move	$v0,$zero
    # Line 146
    ld	$s1,32($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSPDlistCompiler

# Function: __glSPDlistSpace
# Declared: Line 155 (Source lines: 155-221)
# Address: 0x0d993f00 - 0x0d994050 (Size: 336 bytes, Frame: 48)
.globl __glSPDlistSpace
.ent __glSPDlistSpace
__glSPDlistSpace:
    # Line 155
    addiu	$sp,$sp,-48
    # Line 174
    li	$v1,256
    # Line 155
    sd	$s1,16($sp)
    sd	$s0,24($sp)
    # Line 158
    sltiu	$v0,$a0,2
    # Line 155
    lui	$at,0x10
    move	$s0,$a0
    # Line 158
    lw	$s1,4112($zero)
    # Line 155
    addiu	$at,$at,-12072
    sd	$gp,8($sp)
    # Line 158
    bnez	$v0,.L0d993f40
    # Line 155
    addu	$gp,$t9,$at
    # Line 167
    addiu	$v0,$a0,2
    sw	$v0,0($sp)
    b	.L0d993f48
    sd	$ra,32($sp)
.L0d993f40:
    # Line 174
    sw	$v1,0($sp)
    sd	$ra,32($sp)
.L0d993f48:
    # Line 180
    lw	$t9,5028($s1)
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$sp,0
    beqz	$v0,.L0d99402c
    # Line 183
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 187
    lw	$a0,4140($zero)
    # Line 188
    beqz	$a0,.L0d993fb4
    sw	$v0,4140($zero)
    # Line 193
    beqz	$s0,.L0d993ff8
    # Line 191
    sw	$v0,0($a0)
.L0d993f74:
    # Line 209
    lw	$a0,4140($zero)
.L0d993f78:
    sw	$zero,0($a0)
    # Line 211
    bnez	$s0,.L0d993fc8
    sw	$zero,4148($zero)
.L0d993f84:
    # Line 221
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    # Line 219
    lw	$v1,4140($zero)
    ld	$ra,32($sp)
    addiu	$v1,$v1,12
    sw	$v1,4144($zero)
    # Line 221
    lw	$v0,0($sp)
    ld	$s1,16($sp)
    addiu	$sp,$sp,48
    addiu	$v0,$v0,-4
    jr	$ra
    sw	$v0,4136($zero)
.L0d993fb4:
    # Line 204
    sw	$v0,5004($s1)
    # Line 209
    lw	$a0,4140($zero)
    sw	$zero,0($a0)
    # Line 211
    beqz	$s0,.L0d993f84
    sw	$zero,4148($zero)
.L0d993fc8:
    # Line 221
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    # Line 214
    lw	$v1,4140($zero)
    ld	$ra,32($sp)
    addiu	$v1,$v1,8
    sw	$v1,4144($zero)
    # Line 215
    lw	$v0,0($sp)
    # Line 221
    ld	$s1,16($sp)
    addiu	$sp,$sp,48
    # Line 215
    addiu	$v0,$v0,-2
    # Line 221
    jr	$ra
    # Line 215
    sw	$v0,4136($zero)
.L0d993ff8:
    # Line 193
    lw	$v0,4148($zero)
    beqz	$v0,.L0d993f74
    nop
    # Line 196
    lw	$a1,4144($zero)
    sll	$a2,$v0,0x2
    # Line 200
    # lw $t9, -30644($gp) # &__glsplc_AddIlist
    # Line 196
    subu	$a1,$a1,$a2
    # Line 198
    sw	$v0,-4($a1)
    # Line 196
    addiu	$a1,$a1,-4
    # Line 200
    bal __glsplc_AddIlist
    lw	$a0,5048($s1)
    b	.L0d993f78
    # Line 209
    lw	$a0,4140($zero)
.L0d99402c:
    # Line 183
    jal	__glsplc_AddIlist
    li	$a0,1285
    ld	$ra,32($sp)
    # Line 221
    ld	$gp,8($sp)
    # Line 184
    move	$v0,$zero
    # Line 221
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glSPDlistSpace

# Function: __glsplc_AddIlist
# Declared: Line 226 (Source lines: 226-236)
# Address: 0x0d994050 - 0x0d9940dc (Size: 140 bytes, Frame: 192)
.globl __glsplc_AddIlist
.ent __glsplc_AddIlist
__glsplc_AddIlist:
    # Line 226
    addiu	$sp,$sp,-64
    # Line 229
    lw	$a3,4112($zero)
    sd	$a3,40($sp)
    # Line 226
    sd	$ra,0($sp)
    sd	$a1,48($sp)
    sd	$s8,8($sp)
    lui	$a4,0x10
    sd	$gp,16($sp)
    addiu	$a4,$a4,-12408
    addu	$gp,$t9,$a4
    # Line 231
    lw	$t9,8($a3)
    lw	$a2,5084($a3)
    # Line 226
    move	$s8,$a0
    # Line 231
    lw	$a1,5080($a3)
    move	$a0,$a3
    sd	$a2,32($sp)
    sll	$a2,$a2,0x3
    sd	$a2,24($sp)
    jalr	$t9
    addiu	$a2,$a2,8
    # Line 236
    ld	$gp,16($sp)
    # Line 233
    ld	$a7,48($sp)
    # Line 235
    ld	$a5,40($sp)
    # Line 232
    ld	$t0,24($sp)
    # Line 235
    ld	$a6,32($sp)
    ld	$ra,0($sp)
    # Line 232
    addu	$t0,$v0,$t0
    # Line 233
    sw	$a7,4($t0)
    # Line 232
    sw	$s8,0($t0)
    # Line 235
    addiu	$a6,$a6,1
    sw	$a6,5084($a5)
    # Line 234
    sw	$v0,5080($a5)
    # Line 236
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_AddIlist

# Function: __glSPDlistFreeSegments
# Declared: Line 239 (Source lines: 239-251)
# Address: 0x0d9940e0 - 0x0d99412c (Size: 76 bytes, Frame: 32)
.ent __glSPDlistFreeSegments
__glSPDlistFreeSegments:
    # Line 239
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    sd	$s1,16($sp)
    move	$s1,$a0
    sd	$s0,0($sp)
    nop
    nop
    nop
.L0d994100:
    # Line 245
    lw	$t9,5032($s1)
    move	$a0,$s1
    jalr	$t9
    # Line 243
    lw	$s0,0($a1)
    # Line 249
    bnez	$s0,.L0d994100
    move	$a1,$s0
    # Line 251
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSPDlistFreeSegments

# Function: __glSPCreatePlist
# Declared: Line 263 (Source lines: 263-280)
# Address: 0x0d994130 - 0x0d9941d4 (Size: 164 bytes, Frame: 32)
.globl __glSPCreatePlist
.ent __glSPCreatePlist
__glSPCreatePlist:
    # Line 263
    addiu	$sp,$sp,-32
    sd	$s7,8($sp)
    # Line 269
    lw	$at,24($a1)
    # Line 263
    lui	$v0,0x10
    sd	$gp,16($sp)
    addiu	$v0,$v0,-12632
    addu	$gp,$t9,$v0
    # Line 269
    lw	$t9,0($a0)
    # Line 263
    sd	$s0,24($sp)
    move	$s0,$a1
    # Line 267
    lw	$s7,16($a1)
    # Line 269
    sll	$at,$at,0x3
    # Line 263
    sd	$ra,0($sp)
    # Line 269
    jalr	$t9
    addiu	$a1,$at,-8
    ld	$ra,0($sp)
    move	$a2,$s7
    ld	$s7,8($sp)
    move	$a4,$v0
    move	$a3,$zero
    # Line 280
    ld	$gp,16($sp)
    nop
    nop
    nop
.L0d994190:
    # Line 276
    lw	$a1,4($a2)
    lw	$a1,0($a1)
    sw	$a1,4($a4)
    # Line 277
    lw	$a0,4($a2)
    addiu	$a0,$a0,4
    sw	$a0,0($a4)
    # Line 278
    lw	$v1,24($s0)
    addiu	$a3,$a3,1
    addiu	$v1,$v1,-1
    slt	$v1,$a3,$v1
    addiu	$a2,$a2,8
    bnez	$v1,.L0d994190
    addiu	$a4,$a4,8
    # Line 279
    sw	$v0,20($s0)
    # Line 280
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glSPCreatePlist

# Function: __glSPValidateDlist
# Declared: Line 287 (Source lines: 287-294)
# Address: 0x0d9941e0 - 0x0d994214 (Size: 52 bytes, Frame: 16)
.globl __glSPValidateDlist
.ent __glSPValidateDlist
__glSPValidateDlist:
    # Line 287
    lui	$v0,0x10
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,-12808
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # lw $t9, -30660($gp) # &__glSPExecuteDlist
    sd	$ra,0($sp)
    # Line 293
    jal	__glSPExecuteDlist
    # Line 292
    sw	$t9,8($a1)
    ld	$ra,0($sp)
    # Line 294
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glSPValidateDlist

.rdata
_lit_3f800000:
    .word 0x3f800000

