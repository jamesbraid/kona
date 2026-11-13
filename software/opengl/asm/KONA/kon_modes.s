# Source: ../KONA/kon_modes.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_modes.c
# Total Functions: 26

.text

# Function: __glkonim_Begin
# Declared: Line 22 (Source lines: 23-30)
# Address: 0x0d94dbb0 - 0x0d94dbe4 (Size: 52 bytes, Frame: 0)
.globl __glkonim_Begin
.ent __glkonim_Begin
__glkonim_Begin:
    # Line 23
    sltiu	$at,$a0,10
    # Line 25
    li	$v0,1
    # Line 29
    li	$a1,228
    # Line 23
    beqz	$at,.L0d94dbd4
    # Line 26
    addiu	$v1,$a0,87
    sw	$v1,16384($zero)
    sw	$zero,16384($zero)
    # Line 30
    jr	$ra
    # Line 25
    sw	$v0,4120($zero)
.L0d94dbd4:
    # Line 29
    sw	$a1,16384($zero)
    li	$a0,1280
    # Line 30
    jr	$ra
    # Line 29
    sw	$a0,16384($zero)
.end __glkonim_Begin

# Function: __glkonim_End
# Declared: Line 33 (Source lines: 34-36)
# Address: 0x0d94dbf0 - 0x0d94dc04 (Size: 20 bytes, Frame: 0)
.globl __glkonim_End
.ent __glkonim_End
__glkonim_End:
    # Line 35
    sw	$zero,4120($zero)
    # Line 34
    li	$at,113
    sw	$at,16384($zero)
    # Line 36
    jr	$ra
    # Line 34
    sw	$zero,16384($zero)
.end __glkonim_End

# Function: __glkonim_Finish
# Declared: Line 39 (Source lines: 39-58)
# Address: 0x0d94dc10 - 0x0d94dc6c (Size: 92 bytes, Frame: 16)
.globl __glkonim_Finish
.ent __glkonim_Finish
__glkonim_Finish:
    # Line 39
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$a1,1
    lui	$v0,0x14
    sd	$ra,8($sp)
    addiu	$v0,$v0,13256
    sd	$gp,0($sp)
    beq	$at,$a1,.L0d94dc58
    addu	$gp,$t9,$v0
    # Line 57
    # lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 56
    li	$v1,198
    sw	$v1,16384($zero)
    # Line 57
    jal	__glkona_wait_rdata
    # Line 56
    sw	$a1,16384($zero)
    ld	$ra,8($sp)
.L0d94dc4c:
    # Line 58
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94dc58:
    # Line 42
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d94dc4c
    ld	$ra,8($sp)
.end __glkonim_Finish

# Function: __glkonim_Flush
# Declared: Line 61 (Source lines: 62-71)
# Address: 0x0d94dc70 - 0x0d94dc88 (Size: 24 bytes, Frame: 0)
.globl __glkonim_Flush
.ent __glkonim_Flush
__glkonim_Flush:
    # Line 62
    li	$v0,199
    sw	$v0,16384($zero)
    sw	$zero,16384($zero)
    lui	$at,0x1
    # Line 71
    jr	$ra
    # Line 62
    lw	$at,256($at)
.end __glkonim_Flush

# Function: __glkonim_AlphaFunc
# Declared: Line 74 (Source lines: 74-80)
# Address: 0x0d94dc90 - 0x0d94dce0 (Size: 80 bytes, Frame: 0)
.globl __glkonim_AlphaFunc
.ent __glkonim_AlphaFunc
__glkonim_AlphaFunc:
    # Line 74
    mtc1	$zero,$f0
    c.lt.s	$f13,$f0
    # Line 79
    li	$v1,202
    # Line 74
    lui	$v0,0x14
    mtc1	$zero,$f1
    addiu	$v0,$v0,13128
    # Line 79
    li	$a1,202
    # Line 74
    bc1f	.L0d94dcc4
    addu	$at,$t9,$v0
    # Line 79
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 80
    jr	$ra
    # Line 79
    swc1	$f1,16384($zero)
.L0d94dcc4:
    # Line 78
    lwc1	$f2,_lit_3f800000
    c.lt.s $f2,$f13
    # Line 79
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    # Line 78
    movt.s	$f13,$f2,$fcc1
    # Line 80
    jr	$ra
    # Line 79
    swc1	$f13,16384($zero)
.end __glkonim_AlphaFunc

# Function: __glkonlc_AlphaFunc
# Declared: Line 83 (Source lines: 83-91)
# Address: 0x0d94dce0 - 0x0d94dd90 (Size: 176 bytes, Frame: 32)
.globl __glkonlc_AlphaFunc
.ent __glkonlc_AlphaFunc
__glkonlc_AlphaFunc:
    # Line 83
    mtc1	$zero,$f0
    addiu	$sp,$sp,-32
    c.lt.s	$f13,$f0
    sdc1	$f20,0($sp)
    lui	$at,0x14
    mov.s	$f20,$f13
    sd	$s8,8($sp)
    addiu	$at,$at,13048
    move	$s8,$a0
    sd	$gp,16($sp)
    bc1f	.L0d94dd18
    addu	$gp,$t9,$at
    b	.L0d94dd24
    mtc1	$zero,$f20
.L0d94dd18:
    # Line 85
    lwc1	$f1,_lit_3f800000
    c.lt.s $f1,$f13
    movt.s	$f20,$f1,$fcc1
.L0d94dd24:
    # Line 86
    lw	$a3,4136($zero)
    slti	$v0,$a3,3
    bnez	$v0,.L0d94dd78
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
.L0d94dd34:
    lw	$a1,4144($zero)
    # Line 91
    ld	$gp,16($sp)
    # Line 87
    li	$a2,202
    sw	$a2,0($a1)
    # Line 88
    sw	$s8,4($a1)
    # Line 89
    swc1	$f20,8($a1)
    # Line 90
    addiu	$a1,$a1,12
    sw	$a1,4144($zero)
    addiu	$a0,$a3,-3
    sw	$a0,4136($zero)
    # Line 91
    ld	$s8,8($sp)
    # Line 90
    lw	$v1,4148($zero)
    # Line 91
    ldc1	$f20,0($sp)
    addiu	$sp,$sp,32
    # Line 90
    addiu	$v1,$v1,3
    # Line 91
    jr	$ra
    # Line 90
    sw	$v1,4148($zero)
.L0d94dd78:
    sd	$ra,24($sp)
    # Line 86
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    b	.L0d94dd34
    move	$a3,$v0
.end __glkonlc_AlphaFunc

# Function: __glkonim_SampleMaskSGIS
# Declared: Line 94 (Source lines: 94-99)
# Address: 0x0d94dd90 - 0x0d94dde0 (Size: 80 bytes, Frame: 0)
.globl __glkonim_SampleMaskSGIS
.ent __glkonim_SampleMaskSGIS
__glkonim_SampleMaskSGIS:
    # Line 94
    mtc1	$zero,$f0
    c.lt.s	$f12,$f0
    mtc1	$zero,$f1
    lui	$v0,0x14
    # Line 98
    li	$v1,280
    # Line 94
    addiu	$v0,$v0,12872
    # Line 98
    li	$a0,280
    # Line 94
    bc1f	.L0d94ddc4
    addu	$at,$t9,$v0
    # Line 98
    sw	$v1,16384($zero)
    swc1	$f1,16384($zero)
    # Line 99
    jr	$ra
    # Line 98
    sw	$a1,16384($zero)
.L0d94ddc4:
    # Line 97
    lwc1	$f2,_lit_3f800000
    c.lt.s $f2,$f12
    # Line 98
    sw	$a0,16384($zero)
    # Line 97
    movt.s	$f12,$f2,$fcc1
    # Line 98
    swc1	$f12,16384($zero)
    # Line 99
    jr	$ra
    # Line 98
    sw	$a1,16384($zero)
.end __glkonim_SampleMaskSGIS

# Function: __glkonlc_SampleMaskSGIS
# Declared: Line 102 (Source lines: 102-110)
# Address: 0x0d94dde0 - 0x0d94de90 (Size: 176 bytes, Frame: 32)
.globl __glkonlc_SampleMaskSGIS
.ent __glkonlc_SampleMaskSGIS
__glkonlc_SampleMaskSGIS:
    # Line 102
    mtc1	$zero,$f0
    addiu	$sp,$sp,-32
    c.lt.s	$f12,$f0
    sd	$s8,8($sp)
    lui	$at,0x14
    move	$s8,$a1
    sdc1	$f20,0($sp)
    addiu	$at,$at,12792
    mov.s	$f20,$f12
    sd	$gp,16($sp)
    bc1f	.L0d94de18
    addu	$gp,$t9,$at
    b	.L0d94de24
    mtc1	$zero,$f20
.L0d94de18:
    # Line 104
    lwc1	$f1,_lit_3f800000
    c.lt.s $f1,$f12
    movt.s	$f20,$f1,$fcc1
.L0d94de24:
    # Line 105
    lw	$a3,4136($zero)
    slti	$v0,$a3,3
    bnez	$v0,.L0d94de78
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
.L0d94de34:
    lw	$a1,4144($zero)
    # Line 110
    ld	$gp,16($sp)
    # Line 106
    li	$a2,280
    sw	$a2,0($a1)
    # Line 107
    swc1	$f20,4($a1)
    # Line 108
    sw	$s8,8($a1)
    # Line 109
    addiu	$a1,$a1,12
    sw	$a1,4144($zero)
    addiu	$a0,$a3,-3
    sw	$a0,4136($zero)
    # Line 110
    ld	$s8,8($sp)
    # Line 109
    lw	$v1,4148($zero)
    # Line 110
    ldc1	$f20,0($sp)
    addiu	$sp,$sp,32
    # Line 109
    addiu	$v1,$v1,3
    # Line 110
    jr	$ra
    # Line 109
    sw	$v1,4148($zero)
.L0d94de78:
    sd	$ra,24($sp)
    # Line 105
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,24($sp)
    b	.L0d94de34
    move	$a3,$v0
.end __glkonlc_SampleMaskSGIS

# Function: __glKonInitializeEnables
# Declared: Line 128 (Source lines: 128-140)
# Address: 0x0d94de90 - 0x0d94df38 (Size: 168 bytes, Frame: 16)
.globl __glKonInitializeEnables
.ent __glKonInitializeEnables
__glKonInitializeEnables:
    # Line 128
    addiu	$sp,$sp,-16
    lui	$a6,0x14
    sd	$ra,8($sp)
    addiu	$a6,$a6,12616
    sd	$gp,0($sp)
    addu	$gp,$t9,$a6
    la	$a1,.rodata
    la	$a5,sub_0da90000
    addiu	$a1,$a1,9672
    ld	$ra,8($sp)
    addiu	$a5,$a5,-10288
    addiu	$a2,$a1,744
.L0d94dec0:
    # Line 131
    lhu	$a3,2($a1)
    sra	$a7,$a3,0x7
    andi	$a6,$a3,0xff
    addu	$a7,$a6,$a7
    sll	$a7,$a7,0x2
    addu	$a7,$a5,$a7
    lhu	$a7,0($a7)
    bnez	$a7,.L0d94df08
    # Line 133
    sll	$t0,$a6,0x2
    # Line 134
    lhu	$t1,0($a1)
    # Line 130
    addiu	$a1,$a1,4
    # Line 133
    addu	$t0,$a5,$t0
    # Line 134
    sh	$t1,2($t0)
    # Line 130
    bne	$a1,$a2,.L0d94dec0
    # Line 133
    sh	$a3,0($t0)
    # Line 140
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94df08:
    # Line 138
    la	$a1,.rodata
    # lw $t9, -18560($gp) # &fprintf
    la	$a0,__iob
    sll	$a2,$a6,0x2
    addu	$a2,$a5,$a2
    addiu	$a1,$a1,-6736
    lhu	$a2,0($a2)
    jal	fprintf
    addiu	$a0,$a0,32
    # Line 139
    # lw $t9, -18604($gp) # &exit
    jal	exit
    li	$a0,1
.end __glKonInitializeEnables

# Function: __glkonim_xEnable
# Declared: Line 142 (Source lines: 143-173)
# Address: 0x0d94df40 - 0x0d94e078 (Size: 312 bytes, Frame: 16)
.globl __glkonim_xEnable
.ent __glkonim_xEnable
__glkonim_xEnable:
    # Line 148
    li	$t8,173
    # Line 146
    li	$v0,0xffff
    # Line 143
    lui	$at,0x14
    # Line 146
    sltu	$v0,$a0,$v0
    # Line 145
    lw	$a3,4112($zero)
    # Line 143
    addiu	$sp,$sp,-16
    addiu	$at,$at,12440
    sd	$gp,0($sp)
    # Line 146
    beqz	$v0,.L0d94dfd8
    # Line 143
    addu	$gp,$t9,$at
    # Line 146
    andi	$a4,$a0,0xff
    la	$a2,sub_0da90000
    srl	$a5,$a0,0x7
    addu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addiu	$a2,$a2,-10288
    addu	$a2,$a2,$a4
    lhu	$v1,0($a2)
    bne	$v1,$a0,.L0d94dfd8
    # Line 147
    li	$a7,36
    lhu	$a0,2($a2)
    # Line 148
    li	$a6,174
    # Line 147
    sw	$a7,16384($zero)
    # Line 148
    beq	$a0,$a6,.L0d94e008
    # Line 147
    sw	$a0,16384($zero)
    # Line 148
    li	$t0,175
    beq	$a0,$t0,.L0d94e020
    li	$t1,176
    beq	$a0,$t1,.L0d94e038
    li	$t2,177
    beq	$a0,$t2,.L0d94e050
    li	$t3,178
    beq	$a0,$t3,.L0d94e068
    nop
    beq	$a0,$t8,.L0d94dff0
.L0d94dfcc:
    # Line 173
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94dfd8:
    # Line 172
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d94dfcc
    ld	$ra,8($sp)
.L0d94dff0:
    # Line 165
    lw	$t9,5416($a3)
    # Line 173
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 165
    ori	$t9,$t9,0x20
    # Line 173
    jr	$ra
    # Line 165
    sw	$t9,5416($a3)
.L0d94e008:
    # Line 150
    lw	$at,5416($a3)
    # Line 173
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 150
    ori	$at,$at,0x1
    # Line 173
    jr	$ra
    # Line 150
    sw	$at,5416($a3)
.L0d94e020:
    # Line 153
    lw	$v0,5416($a3)
    # Line 173
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 153
    ori	$v0,$v0,0x2
    # Line 173
    jr	$ra
    # Line 153
    sw	$v0,5416($a3)
.L0d94e038:
    # Line 156
    lw	$v1,5416($a3)
    # Line 173
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 156
    ori	$v1,$v1,0x8
    # Line 173
    jr	$ra
    # Line 156
    sw	$v1,5416($a3)
.L0d94e050:
    # Line 159
    lw	$a0,5416($a3)
    # Line 173
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 159
    ori	$a0,$a0,0x4
    # Line 173
    jr	$ra
    # Line 159
    sw	$a0,5416($a3)
.L0d94e068:
    # Line 162
    lw	$a1,5416($a3)
    ori	$a1,$a1,0x10
    # Line 163
    b	.L0d94dfcc
    # Line 162
    sw	$a1,5416($a3)
.end __glkonim_xEnable

# Function: __glkonim_Enable
# Declared: Line 176 (Source lines: 177-285)
# Address: 0x0d94e080 - 0x0d94e5b0 (Size: 1328 bytes, Frame: 32)
.globl __glkonim_Enable
.ent __glkonim_Enable
__glkonim_Enable:
    # Line 177
    addiu	$sp,$sp,-32
    # Line 178
    lw	$v0,4120($zero)
    lw	$a2,4112($zero)
    li	$a3,1
    # Line 177
    lui	$at,0x14
    sd	$s0,0($sp)
    move	$s0,$a0
    addiu	$at,$at,12120
    sd	$gp,8($sp)
    # Line 178
    beq	$v0,$a3,.L0d94e350
    # Line 177
    addu	$gp,$t9,$at
    # Line 185
    sltiu	$v0,$a0,3472
    bnez	$v0,.L0d94e0c0
    sltiu	$v1,$a0,3513
    bnez	$v1,.L0d94e280
    # Line 186
    nop	# was lw $t9, -31500($gp) # &__glKonEvalEnable
.L0d94e0c0:
    # Line 196
    li	$a0,0x8012
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0d94e110
    sltu	$a3,$a0,$s0
    bnez	$a3,.L0d94e13c
    li	$a0,0x8076
    # Line 233
    lw	$a4,1792($a2)
    lui	$a5,0x800
    or	$a4,$a4,$a5
    sw	$a4,1792($a2)
.L0d94e0e8:
    # Line 285
    ld	$gp,8($sp)
.L0d94e0ec:
    # Line 284
    li	$a6,36
    sw	$a6,16384($zero)
    sw	$s0,16384($zero)
    # Line 285
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94e104:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94e110:
    # Line 196
    sltiu	$a0,$s0,3171
    bnez	$a0,.L0d94e18c
    sltiu	$a1,$s0,3168
    sltiu	$a7,$s0,3172
    beqz	$a7,.L0d94e218
    sltiu	$a0,$s0,3553
    # Line 217
    lw	$t0,1792($a2)
    lui	$t1,0x20
    or	$t0,$t0,$t1
    # Line 218
    b	.L0d94e0e8
    # Line 217
    sw	$t0,1792($a2)
.L0d94e13c:
    # Line 196
    sltu	$t2,$s0,$a0
    bnez	$t2,.L0d94e1b4
    sltu	$t3,$a0,$s0
    beqz	$t3,.L0d94e480
    li	$a0,0x8079
    sltu	$t8,$s0,$a0
    bnez	$t8,.L0d94e3b8
    sltu	$t9,$a0,$s0
    beqz	$t9,.L0d94e578
    li	$a0,0x81c7
    sltu	$at,$s0,$a0
    bnez	$at,.L0d94e560
    li	$t3,0x8094
    sltu	$v0,$a0,$s0
    bnez	$v0,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 278
    lw	$v1,1796($a2)
    ori	$v1,$v1,0x100
    # Line 279
    b	.L0d94e0e8
    # Line 278
    sw	$v1,1796($a2)
.L0d94e18c:
    # Line 196
    bnez	$a1,.L0d94e258
    sltiu	$a3,$s0,2977
    sltiu	$a3,$s0,3169
    beqz	$a3,.L0d94e32c
    sltiu	$v1,$s0,3170
    # Line 208
    lw	$a4,1792($a2)
    lui	$a5,0x4
    or	$a4,$a4,$a5
    # Line 209
    b	.L0d94e0e8
    # Line 208
    sw	$a4,1792($a2)
.L0d94e1b4:
    # Line 196
    li	$a0,0x806f
    sltu	$a6,$s0,$a0
    bnez	$a6,.L0d94e2f0
    sltu	$a7,$a0,$s0
    beqz	$a7,.L0d94e2d4
    li	$t9,0x8074
    li	$a0,0x8075
    sltu	$t0,$s0,$a0
    bnez	$t0,.L0d94e4c4
    sltu	$t1,$a0,$s0
    bnez	$t1,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 246
    lw	$t8,5416($a2)
    # Line 245
    lw	$t9,5404($a2)
    # Line 247
    lui	$t3,0x1
    # Line 246
    ori	$t8,$t8,0x1
    sw	$t8,5416($a2)
    # Line 247
    addu	$t3,$a2,$t3
    # Line 245
    ori	$t9,$t9,0xf00
    sw	$t9,5404($a2)
    # Line 247
    lw	$t2,-30008($t3)
    ld	$s0,0($sp)
    ori	$t2,$t2,0x1
    b	.L0d94e104
    sw	$t2,-30008($t3)
.L0d94e218:
    # Line 196
    bnez	$a0,.L0d94e2c8
    sltiu	$t3,$s0,3552
    sltiu	$at,$s0,3554
    bnez	$at,.L0d94e2d8
    # Line 204
    nop	# was lw $t9, -31740($gp) # &__glkon_EnableTexture
    # Line 196
    li	$a0,0x8011
    sltu	$v0,$s0,$a0
    bnez	$v0,.L0d94e500
    sltu	$v1,$a0,$s0
    bnez	$v1,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 230
    lw	$a0,1792($a2)
    lui	$a1,0x400
    or	$a0,$a0,$a1
    # Line 231
    b	.L0d94e0e8
    # Line 230
    sw	$a0,1792($a2)
.L0d94e258:
    # Line 196
    bnez	$a3,.L0d94e370
    li	$a4,2896
    sltiu	$a4,$s0,2978
    beqz	$a4,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 224
    lw	$a5,1792($a2)
    lui	$a6,0x40
    or	$a5,$a5,$a6
    # Line 225
    b	.L0d94e0e8
    # Line 224
    sw	$a5,1792($a2)
.L0d94e280:
    sd	$ra,16($sp)
    # Line 186
    jal	__glkon_EnableTexture
    sd	$a2,24($sp)
    sltiu	$a7,$s0,3504
    beqz	$a7,.L0d94e388
    ld	$a0,24($sp)
    # Line 285
    ld	$gp,8($sp)
    ld	$ra,16($sp)
    # Line 189
    addiu	$t2,$s0,-3472
    li	$t1,1
    lw	$t0,1808($a0)
    sllv	$t1,$t1,$t2
    # Line 285
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    # Line 189
    andi	$t1,$t1,0xffff
    or	$t0,$t0,$t1
    # Line 285
    jr	$ra
    # Line 189
    sw	$t0,1808($a0)
.L0d94e2c8:
    # Line 196
    bnez	$t3,.L0d94e434
    li	$a3,3456
    beqz	$a0,.L0d94e0e8
.L0d94e2d4:
    # Line 204
    nop	# was lw $t9, -31740($gp) # &__glkon_EnableTexture
.L0d94e2d8:
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glkon_EnableTexture
    li	$a1,1
    b	.L0d94e0e8
    ld	$ra,16($sp)
.L0d94e2f0:
    # Line 196
    li	$a0,0x802e
    sltu	$t8,$s0,$a0
    bnez	$t8,.L0d94e40c
    li	$v1,0x8024
    sltu	$t9,$a0,$s0
    bnez	$t9,.L0d94e0e8
    # Line 242
    nop	# was lw $t9, -31184($gp) # &ValidateHistogramSink
    # Line 241
    lw	$at,1792($a2)
    sd	$ra,16($sp)
    lui	$v0,0x2000
    or	$at,$at,$v0
    # Line 242
    jal	ValidateHistogramSink
    # Line 241
    sw	$at,1792($a2)
    b	.L0d94e0e8
    ld	$ra,16($sp)
.L0d94e32c:
    # Line 196
    bnez	$v1,.L0d94e464
    li	$a6,3169
    beqz	$a0,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 214
    lw	$a0,1792($a2)
    lui	$a1,0x10
    or	$a0,$a0,$a1
    # Line 215
    b	.L0d94e0e8
    # Line 214
    sw	$a0,1792($a2)
.L0d94e350:
    # Line 182
    li	$a3,228
    sw	$a3,16384($zero)
    li	$a2,1282
    sw	$a2,16384($zero)
    # Line 285
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94e370:
    # Line 196
    bne	$s0,$a4,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 221
    lw	$a5,1792($a2)
    ori	$a5,$a5,0x40
    b	.L0d94e0e8
    sw	$a5,1792($a2)
.L0d94e388:
    # Line 285
    ld	$gp,8($sp)
    ld	$ra,16($sp)
    # Line 192
    addiu	$t0,$s0,-3504
    li	$a7,1
    lw	$a6,1812($a0)
    sllv	$a7,$a7,$t0
    # Line 285
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    # Line 192
    andi	$a7,$a7,0xffff
    or	$a6,$a6,$a7
    # Line 285
    jr	$ra
    # Line 192
    sw	$a6,1812($a0)
.L0d94e3b8:
    # Line 196
    li	$a0,0x8078
    sltu	$t1,$s0,$a0
    li	$a5,0x8077
    bnez	$t1,.L0d94e520
    sltu	$t2,$a0,$s0
    bnez	$t2,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 261
    lw	$t9,5416($a2)
    # Line 260
    lui	$v0,0x7f0
    lw	$at,5404($a2)
    # Line 262
    lui	$t8,0x1
    # Line 261
    ori	$t9,$t9,0x4
    sw	$t9,5416($a2)
    # Line 262
    addu	$t8,$a2,$t8
    # Line 260
    or	$at,$at,$v0
    sw	$at,5404($a2)
    # Line 262
    lw	$t3,-30008($t8)
    ld	$s0,0($sp)
    ori	$t3,$t3,0x4
    b	.L0d94e104
    sw	$t3,-30008($t8)
.L0d94e40c:
    # Line 196
    bne	$s0,$v1,.L0d94e0e8
    # Line 238
    nop	# was lw $t9, -31184($gp) # &ValidateHistogramSink
    # Line 237
    lw	$a0,1792($a2)
    sd	$ra,16($sp)
    lui	$a1,0x1000
    or	$a0,$a0,$a1
    # Line 238
    jal	ValidateHistogramSink
    # Line 237
    sw	$a0,1792($a2)
    b	.L0d94e0e8
    ld	$ra,16($sp)
.L0d94e434:
    # Line 196
    bne	$s0,$a3,.L0d94e0e8
    # Line 199
    nop	# was lw $t9, -31500($gp) # &__glKonEvalEnable
    # Line 198
    lw	$a4,1792($a2)
    # Line 199
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 198
    lui	$a5,0x80
    or	$a4,$a4,$a5
    # Line 199
    jal	__glKonEvalEnable
    # Line 198
    sw	$a4,1792($a2)
    ld	$s0,0($sp)
    b	.L0d94e104
    ld	$ra,16($sp)
.L0d94e464:
    # Line 196
    bne	$s0,$a6,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 211
    lw	$a7,1792($a2)
    lui	$t0,0x8
    or	$a7,$a7,$t0
    # Line 212
    b	.L0d94e0e8
    # Line 211
    sw	$a7,1792($a2)
.L0d94e480:
    # Line 285
    ld	$gp,8($sp)
    # Line 251
    lw	$t3,5416($a2)
    # Line 250
    lw	$s0,5404($a2)
    # Line 252
    lui	$t2,0x1
    # Line 250
    lui	$t8,0xf
    ori	$t8,$t8,0xf000
    # Line 251
    ori	$t3,$t3,0x2
    sw	$t3,5416($a2)
    # Line 252
    addu	$t2,$a2,$t2
    # Line 250
    or	$s0,$s0,$t8
    sw	$s0,5404($a2)
    # Line 252
    lw	$t1,-30008($t2)
    # Line 285
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    # Line 252
    ori	$t1,$t1,0x2
    # Line 285
    jr	$ra
    # Line 252
    sw	$t1,-30008($t2)
.L0d94e4c4:
    # Line 196
    bne	$s0,$t9,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 271
    lw	$v1,5416($a2)
    # Line 270
    lw	$a0,5404($a2)
    # Line 272
    lui	$v0,0x1
    # Line 271
    ori	$v1,$v1,0x20
    sw	$v1,5416($a2)
    # Line 272
    addu	$v0,$a2,$v0
    # Line 270
    ori	$a0,$a0,0xff
    sw	$a0,5404($a2)
    # Line 272
    lw	$at,-30008($v0)
    ld	$s0,0($sp)
    ori	$at,$at,0x20
    b	.L0d94e104
    sw	$at,-30008($v0)
.L0d94e500:
    # Line 196
    li	$a1,0x8010
    bne	$s0,$a1,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 227
    lw	$a3,1792($a2)
    lui	$a4,0x200
    or	$a3,$a3,$a4
    # Line 228
    b	.L0d94e0e8
    # Line 227
    sw	$a3,1792($a2)
.L0d94e520:
    # Line 196
    bne	$s0,$a5,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 256
    lw	$t0,5416($a2)
    # Line 255
    lui	$t2,0xf000
    lw	$t1,5404($a2)
    # Line 257
    lui	$a7,0x1
    # Line 256
    ori	$t0,$t0,0x8
    sw	$t0,5416($a2)
    # Line 257
    addu	$a7,$a2,$a7
    # Line 255
    or	$t1,$t1,$t2
    sw	$t1,5404($a2)
    # Line 257
    lw	$a6,-30008($a7)
    ld	$s0,0($sp)
    ori	$a6,$a6,0x8
    b	.L0d94e104
    sw	$a6,-30008($a7)
.L0d94e560:
    # Line 196
    bne	$s0,$t3,.L0d94e0ec
    # Line 285
    ld	$gp,8($sp)
    # Line 275
    lw	$t8,1796($a2)
    ori	$t8,$t8,0x20
    # Line 276
    b	.L0d94e0e8
    # Line 275
    sw	$t8,1796($a2)
.L0d94e578:
    # Line 266
    lw	$v0,5416($a2)
    # Line 265
    lui	$a0,0x800
    lw	$v1,5404($a2)
    # Line 267
    lui	$at,0x1
    # Line 266
    ori	$v0,$v0,0x10
    sw	$v0,5416($a2)
    # Line 267
    addu	$at,$a2,$at
    # Line 265
    or	$v1,$v1,$a0
    sw	$v1,5404($a2)
    # Line 267
    lw	$t9,-30008($at)
    ld	$s0,0($sp)
    ori	$t9,$t9,0x10
    b	.L0d94e104
    sw	$t9,-30008($at)
.end __glkonim_Enable

# Function: __glkonim_Disable
# Declared: Line 288 (Source lines: 289-448)
# Address: 0x0d94e5b0 - 0x0d94eb94 (Size: 1508 bytes, Frame: 32)
.globl __glkonim_Disable
.ent __glkonim_Disable
__glkonim_Disable:
    # Line 289
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 291
    lw	$v0,4120($zero)
    li	$a4,1
    # Line 290
    lw	$a2,4112($zero)
    # Line 289
    lui	$at,0x14
    move	$s0,$a0
    sd	$gp,8($sp)
    addiu	$at,$at,10792
    # Line 291
    lw	$a3,5416($a2)
    beq	$v0,$a4,.L0d94e8ec
    # Line 289
    addu	$gp,$t9,$at
    # Line 299
    sltiu	$v0,$a0,3472
    bnez	$v0,.L0d94e5f4
    sltiu	$v1,$a0,3513
    bnez	$v1,.L0d94e7bc
    # Line 300
    nop	# was lw $t9, -31496($gp) # &__glKonEvalDisable
.L0d94e5f4:
    # Line 310
    li	$a0,0x8012
    sltu	$a1,$s0,$a0
    bnez	$a1,.L0d94e644
    sltu	$a4,$a0,$s0
    bnez	$a4,.L0d94e670
    # Line 347
    lui	$a6,0x800
    lw	$a5,1792($a2)
    nor	$a6,$a6,$zero
    and	$a5,$a5,$a6
    sw	$a5,1792($a2)
.L0d94e61c:
    # Line 448
    ld	$gp,8($sp)
.L0d94e620:
    # Line 447
    li	$a7,37
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    # Line 448
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94e638:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94e644:
    # Line 310
    sltiu	$a0,$s0,3171
    bnez	$a0,.L0d94e6cc
    sltiu	$t0,$s0,3172
    beqz	$t0,.L0d94e75c
    sltiu	$a0,$s0,3553
    # Line 331
    lui	$t2,0x20
    lw	$t1,1792($a2)
    nor	$t2,$t2,$zero
    and	$t1,$t1,$t2
    # Line 332
    b	.L0d94e61c
    # Line 331
    sw	$t1,1792($a2)
.L0d94e670:
    # Line 310
    li	$a0,0x8076
    sltu	$t3,$s0,$a0
    bnez	$t3,.L0d94e6f8
    sltu	$t8,$a0,$s0
    bnez	$t8,.L0d94e834
    # Line 387
    lui	$a0,0x1
    li	$at,-3
    # Line 386
    lui	$v0,0xf
    # Line 387
    and	$at,$a3,$at
    # Line 386
    ori	$v0,$v0,0xf000
    lw	$t9,5404($a2)
    # Line 387
    addu	$a0,$a2,$a0
    sw	$at,5416($a2)
    # Line 386
    nor	$v0,$v0,$zero
    and	$t9,$t9,$v0
    # Line 387
    beq	$at,$a3,.L0d94ea30
    # Line 386
    sw	$t9,5404($a2)
    # Line 392
    li	$v0,-1
    sw	$v0,-30008($a0)
    # Line 448
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94e6cc:
    # Line 310
    sltiu	$v1,$s0,3168
    bnez	$v1,.L0d94e794
    sltiu	$a1,$s0,3169
    beqz	$a1,.L0d94e8c8
    sltiu	$a3,$s0,3170
    # Line 322
    lui	$a4,0x4
    lw	$a3,1792($a2)
    nor	$a4,$a4,$zero
    and	$a3,$a3,$a4
    # Line 323
    b	.L0d94e61c
    # Line 322
    sw	$a3,1792($a2)
.L0d94e6f8:
    # Line 310
    li	$a0,0x806f
    sltu	$a5,$s0,$a0
    bnez	$a5,.L0d94e888
    sltu	$a6,$a0,$s0
    beqz	$a6,.L0d94e818
    li	$a0,0x8075
    sltu	$a7,$s0,$a0
    bnez	$a7,.L0d94ea4c
    sltu	$t0,$a0,$s0
    bnez	$t0,.L0d94e620
    # Line 448
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    # Line 374
    li	$t2,-2
    lui	$a0,0x1
    # Line 373
    lw	$t1,5404($a2)
    # Line 374
    and	$t2,$a3,$t2
    # Line 373
    li	$t3,-3841
    # Line 374
    addu	$a0,$a2,$a0
    sw	$t2,5416($a2)
    # Line 373
    and	$t1,$t1,$t3
    # Line 374
    beq	$t2,$a3,.L0d94eb44
    # Line 373
    sw	$t1,5404($a2)
    # Line 379
    li	$t3,-1
    b	.L0d94e638
    sw	$t3,-30008($a0)
.L0d94e75c:
    # Line 310
    bnez	$a0,.L0d94e808
    sltiu	$t8,$s0,3554
    bnez	$t8,.L0d94e818
    li	$a0,0x8011
    sltu	$t9,$s0,$a0
    bnez	$t9,.L0d94ea90
    sltu	$at,$a0,$s0
    bnez	$at,.L0d94e61c
    # Line 344
    lui	$v1,0x400
    lw	$v0,1792($a2)
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 345
    b	.L0d94e61c
    # Line 344
    sw	$v0,1792($a2)
.L0d94e794:
    # Line 310
    sltiu	$a0,$s0,2977
    bnez	$a0,.L0d94e90c
    sltiu	$a1,$s0,2978
    beqz	$a1,.L0d94e61c
    # Line 338
    lui	$a4,0x40
    lw	$a3,1792($a2)
    nor	$a4,$a4,$zero
    and	$a3,$a3,$a4
    # Line 339
    b	.L0d94e61c
    # Line 338
    sw	$a3,1792($a2)
.L0d94e7bc:
    sd	$ra,16($sp)
    # Line 300
    jal	__glKonEvalDisable
    sd	$a2,24($sp)
    sltiu	$a5,$s0,3504
    beqz	$a5,.L0d94e92c
    ld	$a0,24($sp)
    # Line 448
    ld	$gp,8($sp)
    # Line 303
    addiu	$t0,$s0,-3472
    li	$a7,1
    ld	$ra,16($sp)
    sllv	$a7,$a7,$t0
    lw	$a6,1808($a0)
    nor	$a7,$a7,$zero
    # Line 448
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    # Line 303
    andi	$a7,$a7,0xffff
    and	$a6,$a6,$a7
    # Line 448
    jr	$ra
    # Line 303
    sw	$a6,1808($a0)
.L0d94e808:
    # Line 310
    sltiu	$t1,$s0,3552
    bnez	$t1,.L0d94e9e0
    li	$a6,3456
    beqz	$a0,.L0d94e61c
.L0d94e818:
    # Line 318
    nop	# was lw $t9, -31740($gp) # &__glkon_EnableTexture
    move	$a0,$s0
    sd	$ra,16($sp)
    jal	__glkon_EnableTexture
    move	$a1,$zero
    b	.L0d94e61c
    ld	$ra,16($sp)
.L0d94e834:
    # Line 310
    li	$a0,0x8079
    sltu	$t2,$s0,$a0
    bnez	$t2,.L0d94e960
    sltu	$t3,$a0,$s0
    bnez	$t3,.L0d94eab4
    li	$a0,0x81c7
    ld	$s0,0($sp)
    # Line 426
    lui	$a0,0x1
    li	$t9,-17
    # Line 425
    lw	$t8,5404($a2)
    lui	$at,0x800
    # Line 426
    and	$t9,$a3,$t9
    addu	$a0,$a2,$a0
    sw	$t9,5416($a2)
    # Line 425
    nor	$at,$at,$zero
    and	$t8,$t8,$at
    # Line 426
    beq	$t9,$a3,.L0d94eb54
    # Line 425
    sw	$t8,5404($a2)
    # Line 431
    li	$at,-1
    b	.L0d94e638
    sw	$at,-30008($a0)
.L0d94e888:
    # Line 310
    li	$a0,0x802e
    sltu	$v0,$s0,$a0
    bnez	$v0,.L0d94e9b4
    li	$a3,0x8024
    sltu	$v1,$a0,$s0
    bnez	$v1,.L0d94e61c
    # Line 356
    nop	# was lw $t9, -31184($gp) # &ValidateHistogramSink
    # Line 355
    lw	$a0,1792($a2)
    lui	$a1,0x2000
    sd	$ra,16($sp)
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    # Line 356
    jal	ValidateHistogramSink
    # Line 355
    sw	$a0,1792($a2)
    b	.L0d94e61c
    ld	$ra,16($sp)
.L0d94e8c8:
    # Line 310
    bnez	$a3,.L0d94ea14
    li	$t1,3169
    beqz	$a0,.L0d94e61c
    # Line 328
    lui	$a5,0x10
    lw	$a4,1792($a2)
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    # Line 329
    b	.L0d94e61c
    # Line 328
    sw	$a4,1792($a2)
.L0d94e8ec:
    # Line 296
    li	$a7,228
    sw	$a7,16384($zero)
    li	$a6,1282
    sw	$a6,16384($zero)
    # Line 448
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94e90c:
    # Line 310
    li	$t0,2896
    bne	$s0,$t0,.L0d94e620
    # Line 448
    ld	$gp,8($sp)
    # Line 335
    lw	$t1,1792($a2)
    li	$t2,-65
    and	$t1,$t1,$t2
    b	.L0d94e61c
    sw	$t1,1792($a2)
.L0d94e92c:
    # Line 306
    addiu	$t8,$s0,-3504
    li	$s0,1
    lw	$t3,1812($a0)
    sllv	$s0,$s0,$t8
    ld	$ra,16($sp)
    nor	$s0,$s0,$zero
    # Line 448
    ld	$gp,8($sp)
    # Line 306
    andi	$s0,$s0,0xffff
    and	$t3,$t3,$s0
    sw	$t3,1812($a0)
    # Line 448
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94e960:
    # Line 310
    li	$a0,0x8078
    sltu	$t9,$s0,$a0
    bnez	$t9,.L0d94eae0
    sltu	$at,$a0,$s0
    bnez	$at,.L0d94e620
    # Line 448
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    # Line 413
    lui	$a0,0x1
    li	$v1,-5
    # Line 412
    lw	$v0,5404($a2)
    lui	$a1,0x7f0
    # Line 413
    and	$v1,$a3,$v1
    addu	$a0,$a2,$a0
    sw	$v1,5416($a2)
    # Line 412
    nor	$a1,$a1,$zero
    and	$v0,$v0,$a1
    # Line 413
    beq	$v1,$a3,.L0d94eb64
    # Line 412
    sw	$v0,5404($a2)
    # Line 418
    li	$a1,-1
    b	.L0d94e638
    sw	$a1,-30008($a0)
.L0d94e9b4:
    # Line 310
    bne	$s0,$a3,.L0d94e61c
    # Line 352
    nop	# was lw $t9, -31184($gp) # &ValidateHistogramSink
    # Line 351
    lw	$a4,1792($a2)
    lui	$a5,0x1000
    sd	$ra,16($sp)
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    # Line 352
    jal	ValidateHistogramSink
    # Line 351
    sw	$a4,1792($a2)
    b	.L0d94e61c
    ld	$ra,16($sp)
.L0d94e9e0:
    # Line 310
    bne	$s0,$a6,.L0d94e61c
    # Line 313
    nop	# was lw $t9, -31496($gp) # &__glKonEvalDisable
    # Line 312
    lw	$a7,1792($a2)
    lui	$t0,0x80
    # Line 313
    move	$a0,$s0
    sd	$ra,16($sp)
    # Line 312
    nor	$t0,$t0,$zero
    and	$a7,$a7,$t0
    # Line 313
    jal	__glKonEvalDisable
    # Line 312
    sw	$a7,1792($a2)
    ld	$s0,0($sp)
    b	.L0d94e638
    ld	$ra,16($sp)
.L0d94ea14:
    # Line 310
    bne	$s0,$t1,.L0d94e61c
    # Line 325
    lui	$t3,0x8
    lw	$t2,1792($a2)
    nor	$t3,$t3,$zero
    and	$t2,$t2,$t3
    # Line 326
    b	.L0d94e61c
    # Line 325
    sw	$t2,1792($a2)
.L0d94ea30:
    # Line 395
    lw	$s0,-30008($a0)
    # Line 448
    ld	$gp,8($sp)
    # Line 395
    ori	$s0,$s0,0x2
    sw	$s0,-30008($a0)
    # Line 448
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94ea4c:
    # Line 310
    li	$t8,0x8074
    bne	$s0,$t8,.L0d94e620
    # Line 448
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    # Line 361
    li	$at,-33
    lui	$a0,0x1
    # Line 360
    lw	$t9,5404($a2)
    # Line 361
    and	$at,$a3,$at
    # Line 360
    li	$v0,-256
    # Line 361
    addu	$a0,$a2,$a0
    sw	$at,5416($a2)
    # Line 360
    and	$t9,$t9,$v0
    # Line 361
    beq	$at,$a3,.L0d94eb74
    # Line 360
    sw	$t9,5404($a2)
    # Line 366
    li	$v0,-1
    b	.L0d94e638
    sw	$v0,-30008($a0)
.L0d94ea90:
    # Line 310
    li	$v1,0x8010
    bne	$s0,$v1,.L0d94e620
    # Line 448
    ld	$gp,8($sp)
    # Line 341
    lui	$a1,0x200
    lw	$a0,1792($a2)
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    # Line 342
    b	.L0d94e61c
    # Line 341
    sw	$a0,1792($a2)
.L0d94eab4:
    # Line 310
    sltu	$a3,$s0,$a0
    bnez	$a3,.L0d94eb28
    li	$t3,0x8094
    sltu	$a4,$a0,$s0
    bnez	$a4,.L0d94e620
    # Line 448
    ld	$gp,8($sp)
    # Line 441
    lw	$a5,1796($a2)
    li	$a6,-257
    and	$a5,$a5,$a6
    # Line 442
    b	.L0d94e61c
    # Line 441
    sw	$a5,1796($a2)
.L0d94eae0:
    # Line 310
    li	$a7,0x8077
    bne	$s0,$a7,.L0d94e620
    # Line 448
    ld	$gp,8($sp)
    ld	$s0,0($sp)
    # Line 400
    lui	$a0,0x1
    li	$t1,-9
    # Line 399
    lw	$t0,5404($a2)
    lui	$t2,0xfff
    # Line 400
    and	$t1,$a3,$t1
    addu	$a0,$a2,$a0
    sw	$t1,5416($a2)
    # Line 399
    ori	$t2,$t2,0xffff
    and	$t0,$t0,$t2
    # Line 400
    beq	$t1,$a3,.L0d94eb84
    # Line 399
    sw	$t0,5404($a2)
    # Line 405
    li	$t2,-1
    b	.L0d94e638
    sw	$t2,-30008($a0)
.L0d94eb28:
    # Line 310
    bne	$s0,$t3,.L0d94e620
    # Line 448
    ld	$gp,8($sp)
    # Line 438
    lw	$t8,1796($a2)
    li	$t9,-33
    and	$t8,$t8,$t9
    # Line 439
    b	.L0d94e61c
    # Line 438
    sw	$t8,1796($a2)
.L0d94eb44:
    # Line 382
    lw	$at,-30008($a0)
    ori	$at,$at,0x1
    b	.L0d94e638
    sw	$at,-30008($a0)
.L0d94eb54:
    # Line 434
    lw	$v0,-30008($a0)
    ori	$v0,$v0,0x10
    b	.L0d94e638
    sw	$v0,-30008($a0)
.L0d94eb64:
    # Line 421
    lw	$v1,-30008($a0)
    ori	$v1,$v1,0x4
    b	.L0d94e638
    sw	$v1,-30008($a0)
.L0d94eb74:
    # Line 369
    lw	$a1,-30008($a0)
    ori	$a1,$a1,0x20
    b	.L0d94e638
    sw	$a1,-30008($a0)
.L0d94eb84:
    # Line 408
    lw	$a2,-30008($a0)
    ori	$a2,$a2,0x8
    b	.L0d94e638
    sw	$a2,-30008($a0)
.end __glkonim_Disable

# Function: __glkonim_EnableClientState
# Declared: Line 451 (Source lines: 451-489)
# Address: 0x0d94eba0 - 0x0d94ed84 (Size: 484 bytes, Frame: 16)
.globl __glkonim_EnableClientState
.ent __glkonim_EnableClientState
__glkonim_EnableClientState:
    # Line 452
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 451
    lui	$at,0x14
    # Line 452
    lw	$a2,4112($zero)
    # Line 451
    addiu	$sp,$sp,-16
    addiu	$at,$at,9272
    sd	$gp,0($sp)
    # Line 452
    beq	$v0,$v1,.L0d94ec4c
    # Line 451
    addu	$gp,$t9,$at
    # Line 457
    li	$v0,0x8075
    beq	$a0,$v0,.L0d94ec60
    li	$v1,0x8076
    beq	$a0,$v1,.L0d94ec98
    li	$a1,0x8077
    beq	$a0,$a1,.L0d94ecd8
    li	$a3,0x8078
    beq	$a0,$a3,.L0d94ed14
    li	$a4,0x8079
    beq	$a0,$a4,.L0d94ed50
    li	$a5,0x8074
    # Line 486
    lui	$a7,0x1
    # Line 457
    beq	$a0,$a5,.L0d94ec1c
    # Line 486
    addu	$a7,$a2,$a7
    # Line 489
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d94ec10:
    # Line 462
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94ec1c:
    # Line 484
    lw	$t1,5404($a2)
    # Line 485
    lw	$t0,5416($a2)
    # Line 484
    ori	$t1,$t1,0xff
    sw	$t1,5404($a2)
    # Line 485
    ori	$t0,$t0,0x20
    sw	$t0,5416($a2)
    # Line 486
    lw	$a6,-30008($a7)
    # Line 462
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 486
    ori	$a6,$a6,0x20
    # Line 462
    jr	$ra
    # Line 486
    sw	$a6,-30008($a7)
.L0d94ec4c:
    # Line 454
    li	$t3,228
    sw	$t3,16384($zero)
    li	$t2,1282
    b	.L0d94ec10
    sw	$t2,16384($zero)
.L0d94ec60:
    # Line 460
    lw	$at,5416($a2)
    # Line 459
    lw	$v0,5404($a2)
    # Line 461
    lui	$t9,0x1
    # Line 460
    ori	$at,$at,0x1
    sw	$at,5416($a2)
    # Line 461
    addu	$t9,$a2,$t9
    # Line 459
    ori	$v0,$v0,0xf00
    sw	$v0,5404($a2)
    # Line 461
    lw	$t8,-30008($t9)
    # Line 462
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 461
    ori	$t8,$t8,0x1
    # Line 462
    jr	$ra
    # Line 461
    sw	$t8,-30008($t9)
.L0d94ec98:
    # Line 465
    lw	$a1,5416($a2)
    # Line 464
    lw	$a3,5404($a2)
    # Line 466
    lui	$a0,0x1
    # Line 464
    lui	$a4,0xf
    ori	$a4,$a4,0xf000
    # Line 465
    ori	$a1,$a1,0x2
    sw	$a1,5416($a2)
    # Line 466
    addu	$a0,$a2,$a0
    # Line 464
    or	$a3,$a3,$a4
    sw	$a3,5404($a2)
    # Line 466
    lw	$v1,-30008($a0)
    # Line 462
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 466
    ori	$v1,$v1,0x2
    # Line 462
    jr	$ra
    # Line 466
    sw	$v1,-30008($a0)
.L0d94ecd8:
    # Line 470
    lw	$a7,5416($a2)
    # Line 469
    lui	$t1,0xf000
    lw	$t0,5404($a2)
    # Line 471
    lui	$a6,0x1
    # Line 470
    ori	$a7,$a7,0x8
    sw	$a7,5416($a2)
    # Line 471
    addu	$a6,$a2,$a6
    # Line 469
    or	$t0,$t0,$t1
    sw	$t0,5404($a2)
    # Line 471
    lw	$a5,-30008($a6)
    # Line 462
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 471
    ori	$a5,$a5,0x8
    # Line 462
    jr	$ra
    # Line 471
    sw	$a5,-30008($a6)
.L0d94ed14:
    # Line 475
    lw	$t8,5416($a2)
    # Line 474
    lui	$at,0x7f0
    lw	$t9,5404($a2)
    # Line 476
    lui	$t3,0x1
    # Line 475
    ori	$t8,$t8,0x4
    sw	$t8,5416($a2)
    # Line 476
    addu	$t3,$a2,$t3
    # Line 474
    or	$t9,$t9,$at
    sw	$t9,5404($a2)
    # Line 476
    lw	$t2,-30008($t3)
    # Line 462
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 476
    ori	$t2,$t2,0x4
    # Line 462
    jr	$ra
    # Line 476
    sw	$t2,-30008($t3)
.L0d94ed50:
    # Line 480
    lw	$a0,5416($a2)
    # Line 479
    lui	$a3,0x800
    lw	$a1,5404($a2)
    # Line 481
    lui	$v1,0x1
    # Line 480
    ori	$a0,$a0,0x10
    sw	$a0,5416($a2)
    # Line 481
    addu	$v1,$a2,$v1
    # Line 479
    or	$a1,$a1,$a3
    sw	$a1,5404($a2)
    # Line 481
    lw	$v0,-30008($v1)
    ori	$v0,$v0,0x10
    b	.L0d94ec10
    sw	$v0,-30008($v1)
.end __glkonim_EnableClientState

# Function: __glkonim_DisableClientState
# Declared: Line 495 (Source lines: 495-583)
# Address: 0x0d94ed90 - 0x0d94eff8 (Size: 616 bytes, Frame: 16)
.globl __glkonim_DisableClientState
.ent __glkonim_DisableClientState
__glkonim_DisableClientState:
    # Line 503
    li	$a6,0x8074
    # Line 495
    addiu	$sp,$sp,-16
    # Line 497
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 496
    lw	$a2,4112($zero)
    # Line 495
    lui	$at,0x14
    # Line 503
    li	$a5,0x8079
    sd	$gp,0($sp)
    # Line 495
    addiu	$at,$at,8776
    # Line 497
    lw	$a3,5416($a2)
    beq	$v0,$v1,.L0d94ef9c
    # Line 495
    addu	$gp,$t9,$at
    # Line 503
    li	$v0,0x8075
    beq	$a0,$v0,.L0d94ee64
    li	$v1,0x8076
    beq	$a0,$v1,.L0d94eea0
    # Line 570
    li	$t1,-256
    # Line 503
    li	$a1,0x8077
    # Line 571
    li	$t0,-33
    # Line 503
    beq	$a0,$a1,.L0d94eedc
    # Line 571
    and	$t0,$a3,$t0
    # Line 503
    li	$a4,0x8078
    beq	$a0,$a4,.L0d94ef14
    nop
    beq	$a0,$a5,.L0d94ef4c
    nop
    beq	$a0,$a6,.L0d94ee1c
    # Line 583
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d94ee10:
    # Line 516
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94ee1c:
    # Line 570
    lw	$a7,5404($a2)
    # Line 516
    ld	$gp,0($sp)
    # Line 571
    lui	$a0,0x1
    sw	$t0,5416($a2)
    addu	$a0,$a2,$a0
    # Line 570
    and	$a7,$a7,$t1
    # Line 576
    li	$t1,-1
    # Line 571
    beq	$t0,$a3,.L0d94ee50
    # Line 570
    sw	$a7,5404($a2)
    # Line 576
    sw	$t1,-30008($a0)
    # Line 516
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94ee50:
    # Line 579
    lw	$t2,-30008($a0)
    # Line 516
    addiu	$sp,$sp,16
    # Line 579
    ori	$t2,$t2,0x20
    # Line 516
    jr	$ra
    # Line 579
    sw	$t2,-30008($a0)
.L0d94ee64:
    # Line 505
    li	$t9,-3841
    lw	$t3,5404($a2)
    # Line 506
    li	$t8,-2
    # Line 516
    ld	$gp,0($sp)
    # Line 506
    lui	$a0,0x1
    and	$t8,$a3,$t8
    addu	$a0,$a2,$a0
    sw	$t8,5416($a2)
    # Line 505
    and	$t3,$t3,$t9
    # Line 511
    li	$t9,-1
    # Line 506
    beq	$t8,$a3,.L0d94ef84
    # Line 505
    sw	$t3,5404($a2)
    # Line 511
    sw	$t9,-30008($a0)
    # Line 516
    jr	$ra
    addiu	$sp,$sp,16
.L0d94eea0:
    # Line 519
    lui	$a0,0x1
    # Line 518
    lui	$v1,0xf
    lw	$at,5404($a2)
    # Line 519
    li	$v0,-3
    # Line 518
    ori	$v1,$v1,0xf000
    # Line 519
    and	$v0,$a3,$v0
    # Line 518
    nor	$v1,$v1,$zero
    # Line 519
    addu	$a0,$a2,$a0
    sw	$v0,5416($a2)
    # Line 518
    and	$at,$at,$v1
    # Line 524
    li	$v1,-1
    # Line 519
    beq	$v0,$a3,.L0d94efb8
    # Line 518
    sw	$at,5404($a2)
    # Line 524
    b	.L0d94ee10
    sw	$v1,-30008($a0)
.L0d94eedc:
    # Line 532
    lui	$a0,0x1
    li	$a4,-9
    # Line 531
    lw	$a1,5404($a2)
    lui	$a5,0xfff
    # Line 532
    and	$a4,$a3,$a4
    addu	$a0,$a2,$a0
    sw	$a4,5416($a2)
    # Line 531
    ori	$a5,$a5,0xffff
    and	$a1,$a1,$a5
    # Line 532
    beq	$a4,$a3,.L0d94efc8
    # Line 531
    sw	$a1,5404($a2)
    # Line 537
    li	$a5,-1
    b	.L0d94ee10
    sw	$a5,-30008($a0)
.L0d94ef14:
    # Line 545
    lui	$a0,0x1
    li	$a7,-5
    # Line 544
    lw	$a6,5404($a2)
    lui	$t0,0x7f0
    # Line 545
    and	$a7,$a3,$a7
    addu	$a0,$a2,$a0
    sw	$a7,5416($a2)
    # Line 544
    nor	$t0,$t0,$zero
    and	$a6,$a6,$t0
    # Line 545
    beq	$a7,$a3,.L0d94efd8
    # Line 544
    sw	$a6,5404($a2)
    # Line 550
    li	$t0,-1
    b	.L0d94ee10
    sw	$t0,-30008($a0)
.L0d94ef4c:
    # Line 558
    lui	$a0,0x1
    li	$t2,-17
    # Line 557
    lw	$t1,5404($a2)
    lui	$t3,0x800
    # Line 558
    and	$t2,$a3,$t2
    addu	$a0,$a2,$a0
    sw	$t2,5416($a2)
    # Line 557
    nor	$t3,$t3,$zero
    and	$t1,$t1,$t3
    # Line 558
    beq	$t2,$a3,.L0d94efe8
    # Line 557
    sw	$t1,5404($a2)
    # Line 563
    li	$t3,-1
    b	.L0d94ee10
    sw	$t3,-30008($a0)
.L0d94ef84:
    # Line 514
    lw	$t8,-30008($a0)
    # Line 516
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 514
    ori	$t8,$t8,0x1
    # Line 516
    jr	$ra
    # Line 514
    sw	$t8,-30008($a0)
.L0d94ef9c:
    # Line 500
    li	$at,228
    sw	$at,16384($zero)
    li	$t9,1282
    sw	$t9,16384($zero)
    # Line 516
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94efb8:
    # Line 527
    lw	$v0,-30008($a0)
    ori	$v0,$v0,0x2
    b	.L0d94ee10
    sw	$v0,-30008($a0)
.L0d94efc8:
    # Line 540
    lw	$v1,-30008($a0)
    ori	$v1,$v1,0x8
    b	.L0d94ee10
    sw	$v1,-30008($a0)
.L0d94efd8:
    # Line 553
    lw	$a1,-30008($a0)
    ori	$a1,$a1,0x4
    b	.L0d94ee10
    sw	$a1,-30008($a0)
.L0d94efe8:
    # Line 566
    lw	$a2,-30008($a0)
    ori	$a2,$a2,0x10
    b	.L0d94ee10
    sw	$a2,-30008($a0)
.end __glkonim_DisableClientState

# Function: __glkonim_TexGendv
# Declared: Line 592 (Source lines: 593-620)
# Address: 0x0d94f000 - 0x0d94f110 (Size: 272 bytes, Frame: 0)
.globl __glkonim_TexGendv
.ent __glkonim_TexGendv
__glkonim_TexGendv:
    # Line 593
    li	$v0,20
    sw	$v0,16384($zero)
    # Line 594
    li	$at,9473
    # Line 613
    mtc1	$zero,$f0
    # Line 593
    sw	$a0,16384($zero)
    # Line 603
    li	$a5,0x81f6
    # Line 594
    beq	$a1,$at,.L0d94f074
    # Line 593
    sw	$a1,16384($zero)
    # Line 594
    li	$v1,9474
    beq	$a1,$v1,.L0d94f074
    li	$a0,0x81f5
    beq	$a1,$a0,.L0d94f074
    li	$a3,0x81f4
    beq	$a1,$a3,.L0d94f074
    # Line 603
    li	$a4,0x81f7
    beq	$a1,$a4,.L0d94f0b8
    nop
    beq	$a1,$a5,.L0d94f0b8
    nop
    # Line 612
    ldc1	$f1,0($a2)
    trunc.w.d	$f1,$f1
    swc1	$f1,16384($zero)
    # Line 613
    swc1	$f0,16384($zero)
    # Line 614
    swc1	$f0,16384($zero)
    # Line 615
    swc1	$f0,16384($zero)
    # Line 616
    swc1	$f0,16384($zero)
    # Line 617
    swc1	$f0,16384($zero)
    # Line 620
    jr	$ra
    # Line 618
    swc1	$f0,16384($zero)
.L0d94f074:
    # Line 596
    ldc1	$f6,0($a2)
    # Line 597
    ldc1	$f5,8($a2)
    # Line 598
    ldc1	$f4,16($a2)
    # Line 599
    ldc1	$f3,24($a2)
    # Line 596
    cvt.s.d	$f6,$f6
    # Line 597
    cvt.s.d	$f5,$f5
    # Line 596
    swc1	$f6,16384($zero)
    # Line 598
    cvt.s.d	$f4,$f4
    # Line 597
    swc1	$f5,16384($zero)
    # Line 600
    mtc1	$zero,$f2
    # Line 599
    cvt.s.d	$f3,$f3
    # Line 598
    swc1	$f4,16384($zero)
    # Line 599
    swc1	$f3,16384($zero)
    # Line 600
    swc1	$f2,16384($zero)
    # Line 601
    swc1	$f2,16384($zero)
    # Line 620
    jr	$ra
    # Line 602
    swc1	$f2,16384($zero)
.L0d94f0b8:
    # Line 610
    ldc1	$f7,48($a2)
    # Line 609
    ldc1	$f8,40($a2)
    # Line 608
    ldc1	$f9,32($a2)
    # Line 604
    ldc1	$f13,0($a2)
    # Line 605
    ldc1	$f12,8($a2)
    # Line 606
    ldc1	$f11,16($a2)
    # Line 607
    ldc1	$f10,24($a2)
    # Line 604
    cvt.s.d	$f13,$f13
    # Line 605
    cvt.s.d	$f12,$f12
    # Line 604
    swc1	$f13,16384($zero)
    # Line 606
    cvt.s.d	$f11,$f11
    # Line 605
    swc1	$f12,16384($zero)
    # Line 607
    cvt.s.d	$f10,$f10
    # Line 606
    swc1	$f11,16384($zero)
    # Line 608
    cvt.s.d	$f9,$f9
    # Line 607
    swc1	$f10,16384($zero)
    # Line 609
    cvt.s.d	$f8,$f8
    # Line 608
    swc1	$f9,16384($zero)
    # Line 610
    cvt.s.d	$f7,$f7
    # Line 609
    swc1	$f8,16384($zero)
    # Line 620
    jr	$ra
    # Line 610
    swc1	$f7,16384($zero)
.end __glkonim_TexGendv

# Function: __glkonim_TexGenfv
# Declared: Line 623 (Source lines: 624-651)
# Address: 0x0d94f110 - 0x0d94f1f0 (Size: 224 bytes, Frame: 0)
.globl __glkonim_TexGenfv
.ent __glkonim_TexGenfv
__glkonim_TexGenfv:
    # Line 624
    li	$v0,20
    sw	$v0,16384($zero)
    # Line 625
    li	$at,9473
    # Line 634
    li	$a5,0x81f6
    # Line 624
    sw	$a0,16384($zero)
    # Line 634
    li	$a4,0x81f7
    # Line 625
    beq	$a1,$at,.L0d94f184
    # Line 624
    sw	$a1,16384($zero)
    # Line 625
    li	$v1,9474
    beq	$a1,$v1,.L0d94f184
    li	$a0,0x81f5
    beq	$a1,$a0,.L0d94f184
    li	$a3,0x81f4
    beq	$a1,$a3,.L0d94f184
    nop
    # Line 634
    beq	$a1,$a4,.L0d94f1b4
    nop
    beq	$a1,$a5,.L0d94f1b4
    nop
    # Line 643
    lwc1	$f0,0($a2)
    trunc.w.s	$f0,$f0
    swc1	$f0,16384($zero)
    # Line 644
    sw	$zero,16384($zero)
    # Line 645
    sw	$zero,16384($zero)
    # Line 646
    sw	$zero,16384($zero)
    # Line 647
    sw	$zero,16384($zero)
    # Line 648
    sw	$zero,16384($zero)
    # Line 651
    jr	$ra
    # Line 649
    sw	$zero,16384($zero)
.L0d94f184:
    # Line 630
    lwc1	$f1,12($a2)
    # Line 629
    lwc1	$f2,8($a2)
    # Line 627
    lwc1	$f4,0($a2)
    # Line 628
    lwc1	$f3,4($a2)
    # Line 627
    swc1	$f4,16384($zero)
    # Line 628
    swc1	$f3,16384($zero)
    # Line 629
    swc1	$f2,16384($zero)
    # Line 630
    swc1	$f1,16384($zero)
    # Line 631
    sw	$zero,16384($zero)
    # Line 632
    sw	$zero,16384($zero)
    # Line 651
    jr	$ra
    # Line 633
    sw	$zero,16384($zero)
.L0d94f1b4:
    # Line 641
    lwc1	$f5,24($a2)
    # Line 640
    lwc1	$f6,20($a2)
    # Line 639
    lwc1	$f7,16($a2)
    # Line 638
    lwc1	$f8,12($a2)
    # Line 637
    lwc1	$f9,8($a2)
    # Line 635
    lwc1	$f11,0($a2)
    # Line 636
    lwc1	$f10,4($a2)
    # Line 635
    swc1	$f11,16384($zero)
    # Line 636
    swc1	$f10,16384($zero)
    # Line 637
    swc1	$f9,16384($zero)
    # Line 638
    swc1	$f8,16384($zero)
    # Line 639
    swc1	$f7,16384($zero)
    # Line 640
    swc1	$f6,16384($zero)
    # Line 651
    jr	$ra
    # Line 641
    swc1	$f5,16384($zero)
.end __glkonim_TexGenfv

# Function: __glkonim_TexGeniv
# Declared: Line 654 (Source lines: 655-682)
# Address: 0x0d94f1f0 - 0x0d94f324 (Size: 308 bytes, Frame: 0)
.globl __glkonim_TexGeniv
.ent __glkonim_TexGeniv
__glkonim_TexGeniv:
    # Line 655
    li	$v0,20
    sw	$v0,16384($zero)
    # Line 656
    li	$at,9473
    # Line 665
    li	$a5,0x81f6
    # Line 655
    sw	$a0,16384($zero)
    # Line 665
    li	$a4,0x81f7
    # Line 656
    beq	$a1,$at,.L0d94f260
    # Line 655
    sw	$a1,16384($zero)
    # Line 656
    li	$v1,9474
    beq	$a1,$v1,.L0d94f260
    li	$a0,0x81f5
    beq	$a1,$a0,.L0d94f260
    li	$a3,0x81f4
    beq	$a1,$a3,.L0d94f260
    nop
    # Line 665
    beq	$a1,$a4,.L0d94f2b0
    nop
    beq	$a1,$a5,.L0d94f2b0
    nop
    # Line 674
    lw	$a6,0($a2)
    sw	$a6,16384($zero)
    # Line 675
    sw	$zero,16384($zero)
    # Line 676
    sw	$zero,16384($zero)
    # Line 677
    sw	$zero,16384($zero)
    # Line 678
    sw	$zero,16384($zero)
    # Line 679
    sw	$zero,16384($zero)
    # Line 682
    jr	$ra
    # Line 680
    sw	$zero,16384($zero)
.L0d94f260:
    # Line 658
    lw	$t2,0($a2)
    # Line 659
    lw	$t1,4($a2)
    # Line 660
    lw	$t0,8($a2)
    # Line 658
    mtc1	$t2,$f3
    # Line 661
    lw	$a7,12($a2)
    # Line 659
    mtc1	$t1,$f2
    # Line 660
    mtc1	$t0,$f1
    # Line 661
    mtc1	$a7,$f0
    # Line 658
    cvt.s.w	$f3,$f3
    # Line 659
    cvt.s.w	$f2,$f2
    # Line 660
    cvt.s.w	$f1,$f1
    # Line 661
    cvt.s.w	$f0,$f0
    # Line 658
    swc1	$f3,16384($zero)
    # Line 659
    swc1	$f2,16384($zero)
    # Line 660
    swc1	$f1,16384($zero)
    # Line 661
    swc1	$f0,16384($zero)
    # Line 662
    sw	$zero,16384($zero)
    # Line 663
    sw	$zero,16384($zero)
    # Line 682
    jr	$ra
    # Line 664
    sw	$zero,16384($zero)
.L0d94f2b0:
    # Line 666
    lw	$a0,0($a2)
    # Line 667
    lw	$v1,4($a2)
    # Line 668
    lw	$v0,8($a2)
    # Line 666
    mtc1	$a0,$f10
    # Line 669
    lw	$at,12($a2)
    # Line 667
    mtc1	$v1,$f9
    # Line 670
    lw	$t9,16($a2)
    # Line 668
    mtc1	$v0,$f8
    # Line 671
    lw	$t8,20($a2)
    # Line 669
    mtc1	$at,$f7
    # Line 666
    cvt.s.w	$f10,$f10
    # Line 672
    lw	$t3,24($a2)
    # Line 670
    mtc1	$t9,$f6
    # Line 667
    cvt.s.w	$f9,$f9
    # Line 671
    mtc1	$t8,$f5
    # Line 668
    cvt.s.w	$f8,$f8
    # Line 672
    mtc1	$t3,$f4
    # Line 669
    cvt.s.w	$f7,$f7
    # Line 666
    swc1	$f10,16384($zero)
    # Line 670
    cvt.s.w	$f6,$f6
    # Line 667
    swc1	$f9,16384($zero)
    # Line 671
    cvt.s.w	$f5,$f5
    # Line 668
    swc1	$f8,16384($zero)
    # Line 672
    cvt.s.w	$f4,$f4
    # Line 669
    swc1	$f7,16384($zero)
    # Line 670
    swc1	$f6,16384($zero)
    # Line 671
    swc1	$f5,16384($zero)
    # Line 682
    jr	$ra
    # Line 672
    swc1	$f4,16384($zero)
.end __glkonim_TexGeniv

# Function: __glkonlc_TexGendv
# Declared: Line 685 (Source lines: 685-717)
# Address: 0x0d94f330 - 0x0d94f4f0 (Size: 448 bytes, Frame: 48)
.globl __glkonlc_TexGendv
.ent __glkonlc_TexGendv
__glkonlc_TexGendv:
    # Line 686
    lw	$a5,4136($zero)
    # Line 685
    addiu	$sp,$sp,-48
    lui	$at,0x14
    # Line 686
    slti	$v0,$a5,10
    # Line 685
    sd	$s0,0($sp)
    move	$s0,$a1
    addiu	$at,$at,7336
    sd	$gp,8($sp)
    # Line 686
    bnez	$v0,.L0d94f424
    # Line 685
    addu	$gp,$t9,$at
.L0d94f358:
    # Line 716
    addiu	$t1,$a5,-10
    # Line 699
    li	$a7,0x81f6
    # Line 686
    lw	$a1,4144($zero)
    # Line 699
    li	$a6,0x81f7
    # Line 717
    ld	$gp,8($sp)
    # Line 690
    li	$a4,0x81f4
    li	$a3,0x81f5
    li	$v1,9473
    # Line 689
    sw	$s0,8($a1)
    # Line 687
    li	$v0,20
    # Line 716
    addiu	$t2,$a1,40
    # Line 688
    sw	$a0,4($a1)
    # Line 690
    li	$a0,9474
    beq	$s0,$v1,.L0d94f450
    # Line 687
    sw	$v0,0($a1)
    # Line 690
    beq	$s0,$a0,.L0d94f450
    nop
    beq	$s0,$a3,.L0d94f450
    nop
    beq	$s0,$a4,.L0d94f450
    nop
    # Line 699
    beq	$s0,$a6,.L0d94f494
    nop
    beq	$s0,$a7,.L0d94f494
    # Line 717
    ld	$s0,0($sp)
    # Line 708
    ldc1	$f0,0($a2)
    # Line 714
    sw	$zero,36($a1)
    # Line 713
    sw	$zero,32($a1)
    # Line 712
    sw	$zero,28($a1)
    # Line 711
    sw	$zero,24($a1)
    # Line 710
    sw	$zero,20($a1)
    # Line 709
    sw	$zero,16($a1)
    # Line 708
    trunc.w.d	$f0,$f0
    swc1	$f0,12($a1)
    # Line 716
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    sw	$t1,4136($zero)
    # Line 717
    addiu	$sp,$sp,48
    # Line 716
    addiu	$t0,$t0,10
    # Line 717
    jr	$ra
    # Line 716
    sw	$t0,4148($zero)
.L0d94f3fc:
    addiu	$t9,$a1,40
    sw	$t9,4144($zero)
    addiu	$t8,$a5,-10
    sw	$t8,4136($zero)
    lw	$t3,4148($zero)
    # Line 717
    ld	$gp,8($sp)
    addiu	$sp,$sp,48
    # Line 716
    addiu	$t3,$t3,10
    # Line 717
    jr	$ra
    # Line 716
    sw	$t3,4148($zero)
.L0d94f424:
    # Line 686
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$a0,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a2,24($sp)
    ld	$a0,16($sp)
    b	.L0d94f358
    move	$a5,$v0
.L0d94f450:
    # Line 692
    ldc1	$f4,0($a2)
    cvt.s.d	$f4,$f4
    swc1	$f4,12($a1)
    # Line 693
    ldc1	$f3,8($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,16($a1)
    # Line 694
    ldc1	$f2,16($a2)
    ld	$s0,0($sp)
    cvt.s.d	$f2,$f2
    swc1	$f2,20($a1)
    # Line 695
    ldc1	$f1,24($a2)
    # Line 698
    sw	$zero,36($a1)
    # Line 697
    sw	$zero,32($a1)
    # Line 696
    sw	$zero,28($a1)
    # Line 695
    cvt.s.d	$f1,$f1
    # Line 698
    b	.L0d94f3fc
    # Line 695
    swc1	$f1,24($a1)
.L0d94f494:
    # Line 700
    ldc1	$f11,0($a2)
    cvt.s.d	$f11,$f11
    swc1	$f11,12($a1)
    # Line 701
    ldc1	$f10,8($a2)
    cvt.s.d	$f10,$f10
    swc1	$f10,16($a1)
    # Line 702
    ldc1	$f9,16($a2)
    cvt.s.d	$f9,$f9
    swc1	$f9,20($a1)
    # Line 703
    ldc1	$f8,24($a2)
    cvt.s.d	$f8,$f8
    swc1	$f8,24($a1)
    # Line 704
    ldc1	$f7,32($a2)
    cvt.s.d	$f7,$f7
    swc1	$f7,28($a1)
    # Line 705
    ldc1	$f6,40($a2)
    cvt.s.d	$f6,$f6
    swc1	$f6,32($a1)
    # Line 706
    ldc1	$f5,48($a2)
    ld	$s0,0($sp)
    cvt.s.d	$f5,$f5
    b	.L0d94f3fc
    swc1	$f5,36($a1)
.end __glkonlc_TexGendv

# Function: __glkonlc_TexGenfv
# Declared: Line 720 (Source lines: 720-752)
# Address: 0x0d94f4f0 - 0x0d94f684 (Size: 404 bytes, Frame: 48)
.globl __glkonlc_TexGenfv
.ent __glkonlc_TexGenfv
__glkonlc_TexGenfv:
    # Line 721
    lw	$a5,4136($zero)
    # Line 720
    addiu	$sp,$sp,-48
    lui	$at,0x14
    # Line 721
    slti	$v0,$a5,10
    # Line 720
    sd	$s0,0($sp)
    move	$s0,$a1
    addiu	$at,$at,6888
    sd	$gp,8($sp)
    # Line 721
    bnez	$v0,.L0d94f5e4
    # Line 720
    addu	$gp,$t9,$at
.L0d94f518:
    # Line 751
    addiu	$t1,$a5,-10
    # Line 734
    li	$a7,0x81f6
    # Line 721
    lw	$a1,4144($zero)
    # Line 734
    li	$a6,0x81f7
    # Line 752
    ld	$gp,8($sp)
    # Line 725
    li	$a4,0x81f4
    li	$a3,0x81f5
    li	$v1,9473
    # Line 724
    sw	$s0,8($a1)
    # Line 722
    li	$v0,20
    # Line 751
    addiu	$t2,$a1,40
    # Line 723
    sw	$a0,4($a1)
    # Line 725
    li	$a0,9474
    beq	$s0,$v1,.L0d94f610
    # Line 722
    sw	$v0,0($a1)
    # Line 725
    beq	$s0,$a0,.L0d94f610
    nop
    beq	$s0,$a3,.L0d94f610
    nop
    beq	$s0,$a4,.L0d94f610
    nop
    # Line 734
    beq	$s0,$a6,.L0d94f644
    nop
    beq	$s0,$a7,.L0d94f644
    # Line 752
    ld	$s0,0($sp)
    # Line 743
    lwc1	$f0,0($a2)
    # Line 749
    sw	$zero,36($a1)
    # Line 748
    sw	$zero,32($a1)
    # Line 747
    sw	$zero,28($a1)
    # Line 746
    sw	$zero,24($a1)
    # Line 745
    sw	$zero,20($a1)
    # Line 744
    sw	$zero,16($a1)
    # Line 743
    trunc.w.s	$f0,$f0
    swc1	$f0,12($a1)
    # Line 751
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    sw	$t1,4136($zero)
    # Line 752
    addiu	$sp,$sp,48
    # Line 751
    addiu	$t0,$t0,10
    # Line 752
    jr	$ra
    # Line 751
    sw	$t0,4148($zero)
.L0d94f5bc:
    addiu	$t9,$a1,40
    sw	$t9,4144($zero)
    addiu	$t8,$a5,-10
    sw	$t8,4136($zero)
    lw	$t3,4148($zero)
    # Line 752
    ld	$gp,8($sp)
    addiu	$sp,$sp,48
    # Line 751
    addiu	$t3,$t3,10
    # Line 752
    jr	$ra
    # Line 751
    sw	$t3,4148($zero)
.L0d94f5e4:
    # Line 721
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$a0,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a2,24($sp)
    ld	$a0,16($sp)
    b	.L0d94f518
    move	$a5,$v0
.L0d94f610:
    # Line 727
    lwc1	$f4,0($a2)
    swc1	$f4,12($a1)
    # Line 728
    lwc1	$f3,4($a2)
    swc1	$f3,16($a1)
    # Line 729
    lwc1	$f2,8($a2)
    ld	$s0,0($sp)
    swc1	$f2,20($a1)
    # Line 730
    lwc1	$f1,12($a2)
    # Line 733
    sw	$zero,36($a1)
    # Line 732
    sw	$zero,32($a1)
    # Line 731
    sw	$zero,28($a1)
    # Line 733
    b	.L0d94f5bc
    # Line 730
    swc1	$f1,24($a1)
.L0d94f644:
    # Line 735
    lwc1	$f11,0($a2)
    swc1	$f11,12($a1)
    # Line 736
    lwc1	$f10,4($a2)
    swc1	$f10,16($a1)
    # Line 737
    lwc1	$f9,8($a2)
    swc1	$f9,20($a1)
    # Line 738
    lwc1	$f8,12($a2)
    swc1	$f8,24($a1)
    # Line 739
    lwc1	$f7,16($a2)
    swc1	$f7,28($a1)
    # Line 740
    lwc1	$f6,20($a2)
    swc1	$f6,32($a1)
    # Line 741
    lwc1	$f5,24($a2)
    ld	$s0,0($sp)
    b	.L0d94f5bc
    swc1	$f5,36($a1)
.end __glkonlc_TexGenfv

# Function: __glkonlc_TexGeniv
# Declared: Line 755 (Source lines: 755-787)
# Address: 0x0d94f690 - 0x0d94f878 (Size: 488 bytes, Frame: 48)
.globl __glkonlc_TexGeniv
.ent __glkonlc_TexGeniv
__glkonlc_TexGeniv:
    # Line 756
    lw	$a5,4136($zero)
    # Line 755
    addiu	$sp,$sp,-48
    lui	$at,0x14
    # Line 756
    slti	$v0,$a5,10
    # Line 755
    sd	$s0,0($sp)
    move	$s0,$a1
    addiu	$at,$at,6472
    sd	$gp,8($sp)
    # Line 756
    bnez	$v0,.L0d94f780
    # Line 755
    addu	$gp,$t9,$at
.L0d94f6b8:
    # Line 786
    addiu	$t1,$a5,-10
    # Line 769
    li	$a7,0x81f6
    # Line 756
    lw	$a1,4144($zero)
    # Line 769
    li	$a6,0x81f7
    # Line 787
    ld	$gp,8($sp)
    # Line 760
    li	$a4,0x81f4
    li	$a3,0x81f5
    li	$v1,9473
    # Line 759
    sw	$s0,8($a1)
    # Line 757
    li	$v0,20
    # Line 786
    addiu	$t2,$a1,40
    # Line 758
    sw	$a0,4($a1)
    # Line 760
    li	$a0,9474
    beq	$s0,$v1,.L0d94f7ac
    # Line 757
    sw	$v0,0($a1)
    # Line 760
    beq	$s0,$a0,.L0d94f7ac
    nop
    beq	$s0,$a3,.L0d94f7ac
    nop
    beq	$s0,$a4,.L0d94f7ac
    nop
    # Line 769
    beq	$s0,$a6,.L0d94f800
    nop
    beq	$s0,$a7,.L0d94f800
    # Line 787
    ld	$s0,0($sp)
    # Line 778
    lw	$t3,0($a2)
    # Line 784
    sw	$zero,36($a1)
    # Line 783
    sw	$zero,32($a1)
    # Line 782
    sw	$zero,28($a1)
    # Line 781
    sw	$zero,24($a1)
    # Line 780
    sw	$zero,20($a1)
    # Line 779
    sw	$zero,16($a1)
    # Line 778
    sw	$t3,12($a1)
    # Line 786
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    sw	$t1,4136($zero)
    # Line 787
    addiu	$sp,$sp,48
    # Line 786
    addiu	$t0,$t0,10
    # Line 787
    jr	$ra
    # Line 786
    sw	$t0,4148($zero)
.L0d94f758:
    addiu	$at,$a1,40
    sw	$at,4144($zero)
    addiu	$t9,$a5,-10
    sw	$t9,4136($zero)
    lw	$t8,4148($zero)
    # Line 787
    ld	$gp,8($sp)
    addiu	$sp,$sp,48
    # Line 786
    addiu	$t8,$t8,10
    # Line 787
    jr	$ra
    # Line 786
    sw	$t8,4148($zero)
.L0d94f780:
    # Line 756
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a2,24($sp)
    sd	$a0,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a2,24($sp)
    ld	$a0,16($sp)
    b	.L0d94f6b8
    move	$a5,$v0
.L0d94f7ac:
    # Line 762
    lw	$a3,0($a2)
    mtc1	$a3,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,12($a1)
    # Line 763
    lw	$a0,4($a2)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,16($a1)
    # Line 764
    lw	$v1,8($a2)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,20($a1)
    # Line 765
    lw	$v0,12($a2)
    mtc1	$v0,$f0
    ld	$s0,0($sp)
    # Line 768
    sw	$zero,36($a1)
    # Line 765
    cvt.s.w	$f0,$f0
    # Line 767
    sw	$zero,32($a1)
    # Line 766
    sw	$zero,28($a1)
    # Line 768
    b	.L0d94f758
    # Line 765
    swc1	$f0,24($a1)
.L0d94f800:
    # Line 770
    lw	$t3,0($a2)
    mtc1	$t3,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,12($a1)
    # Line 771
    lw	$t2,4($a2)
    mtc1	$t2,$f9
    cvt.s.w	$f9,$f9
    swc1	$f9,16($a1)
    # Line 772
    lw	$t1,8($a2)
    mtc1	$t1,$f8
    cvt.s.w	$f8,$f8
    swc1	$f8,20($a1)
    # Line 773
    lw	$t0,12($a2)
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,24($a1)
    # Line 774
    lw	$a7,16($a2)
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,28($a1)
    # Line 775
    lw	$a6,20($a2)
    mtc1	$a6,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,32($a1)
    # Line 776
    lw	$a4,24($a2)
    mtc1	$a4,$f4
    cvt.s.w	$f4,$f4
    ld	$s0,0($sp)
    b	.L0d94f758
    swc1	$f4,36($a1)
.end __glkonlc_TexGeniv

# Function: __glkonim_Clear
# Declared: Line 790 (Source lines: 800-801)
# Address: 0x0d94f880 - 0x0d94f890 (Size: 16 bytes, Frame: 0)
.globl __glkonim_Clear
.ent __glkonim_Clear
__glkonim_Clear:
    # Line 800
    li	$at,26
    sw	$at,16384($zero)
    # Line 801
    jr	$ra
    # Line 800
    sw	$a0,16384($zero)
.end __glkonim_Clear

# Function: __glkonlc_Clear
# Declared: Line 804 (Source lines: 804-809)
# Address: 0x0d94f890 - 0x0d94f944 (Size: 180 bytes, Frame: 32)
.globl __glkonlc_Clear
.ent __glkonlc_Clear
__glkonlc_Clear:
    # Line 804
    addiu	$sp,$sp,-32
    # Line 805
    lw	$a2,4136($zero)
    # Line 806
    li	$a1,26
    # Line 804
    sd	$s8,0($sp)
    move	$s8,$a0
    lui	$at,0x14
    # Line 805
    slti	$v0,$a2,2
    # Line 804
    addiu	$at,$at,5960
    # Line 808
    addiu	$v1,$a2,-2
    sd	$gp,8($sp)
    # Line 805
    bnez	$v0,.L0d94f8f4
    # Line 804
    addu	$gp,$t9,$at
    # Line 805
    lw	$a0,4144($zero)
    # Line 809
    ld	$gp,8($sp)
    # Line 806
    sw	$a1,0($a0)
    # Line 807
    sw	$s8,4($a0)
    # Line 808
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    sw	$v1,4136($zero)
    lw	$v0,4148($zero)
    # Line 809
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 808
    addiu	$v0,$v0,2
    # Line 809
    jr	$ra
    # Line 808
    sw	$v0,4148($zero)
.L0d94f8f4:
    # Line 805
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    lw	$a4,4144($zero)
    # Line 809
    ld	$gp,8($sp)
    # Line 806
    li	$a5,26
    sw	$a5,0($a4)
    # Line 807
    sw	$s8,4($a4)
    # Line 808
    addiu	$a4,$a4,8
    sw	$a4,4144($zero)
    addiu	$a3,$v0,-2
    sw	$a3,4136($zero)
    ld	$ra,16($sp)
    lw	$a2,4148($zero)
    # Line 809
    ld	$s8,0($sp)
    addiu	$sp,$sp,32
    # Line 808
    addiu	$a2,$a2,2
    # Line 809
    jr	$ra
    # Line 808
    sw	$a2,4148($zero)
.end __glkonlc_Clear

# Function: __glkonim_LineWidth
# Declared: Line 812 (Source lines: 812-820)
# Address: 0x0d94f950 - 0x0d94f99c (Size: 76 bytes, Frame: 0)
.globl __glkonim_LineWidth
.ent __glkonim_LineWidth
__glkonim_LineWidth:
    # Line 812
    mtc1	$zero,$f0
    c.le.s	$f12,$f0
    # Line 815
    li	$a0,228
    # Line 812
    lui	$v0,0x14
    # Line 815
    li	$v1,1281
    # Line 812
    addiu	$v0,$v0,5768
    # Line 819
    li	$a1,189
    # Line 812
    bc1f	.L0d94f980
    addu	$at,$t9,$v0
    # Line 815
    sw	$a0,16384($zero)
    # Line 820
    jr	$ra
    # Line 815
    sw	$v1,16384($zero)
.L0d94f980:
    # Line 819
    lwc1	$f1,_lit_42000000
    c.lt.s $f1,$f12
    sw	$a1,16384($zero)
    swc1	$f12,16384($zero)
    movf.s	$f1,$f12,$fcc1
    # Line 820
    jr	$ra
    # Line 819
    swc1	$f1,16384($zero)
.end __glkonim_LineWidth

# Function: __glkonim_PointSize
# Declared: Line 823 (Source lines: 823-831)
# Address: 0x0d94f9a0 - 0x0d94f9ec (Size: 76 bytes, Frame: 0)
.globl __glkonim_PointSize
.ent __glkonim_PointSize
__glkonim_PointSize:
    # Line 823
    mtc1	$zero,$f0
    c.le.s	$f12,$f0
    # Line 826
    li	$a0,228
    # Line 823
    lui	$v0,0x14
    # Line 826
    li	$v1,1281
    # Line 823
    addiu	$v0,$v0,5688
    # Line 830
    li	$a1,190
    # Line 823
    bc1f	.L0d94f9d0
    addu	$at,$t9,$v0
    # Line 826
    sw	$a0,16384($zero)
    # Line 831
    jr	$ra
    # Line 826
    sw	$v1,16384($zero)
.L0d94f9d0:
    # Line 830
    lwc1	$f1,_lit_41b00000
    c.lt.s $f1,$f12
    sw	$a1,16384($zero)
    swc1	$f12,16384($zero)
    movf.s	$f1,$f12,$fcc1
    # Line 831
    jr	$ra
    # Line 830
    swc1	$f1,16384($zero)
.end __glkonim_PointSize

# Function: __glkonlc_LineWidth
# Declared: Line 834 (Source lines: 834-846)
# Address: 0x0d94f9f0 - 0x0d94faa8 (Size: 184 bytes, Frame: 32)
.globl __glkonlc_LineWidth
.ent __glkonlc_LineWidth
__glkonlc_LineWidth:
    # Line 834
    mtc1	$zero,$f0
    c.le.s	$f12,$f0
    addiu	$sp,$sp,-32
    lui	$at,0x14
    sd	$ra,16($sp)
    addiu	$at,$at,5608
    mov.s	$f4,$f12
    sd	$gp,0($sp)
    bc1t	.L0d94fa94
    addu	$gp,$t9,$at
    # Line 841
    lw	$a2,4136($zero)
    slti	$v0,$a2,3
    beqz	$v0,.L0d94fa3c
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f12,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,8($sp)
    move	$a2,$v0
.L0d94fa3c:
    # Line 844
    lwc1	$f1,_lit_42000000
    # Line 846
    ld	$gp,0($sp)
    # Line 841
    lw	$a1,4144($zero)
    ld	$ra,16($sp)
    # Line 844
    c.lt.s $f1,$f4
    # Line 842
    li	$a3,189
    sw	$a3,0($a1)
    # Line 843
    swc1	$f4,4($a1)
    # Line 844
    movf.s	$f1,$f4,$fcc1
    swc1	$f1,8($a1)
    # Line 845
    addiu	$a1,$a1,12
    sw	$a1,4144($zero)
    lw	$v1,4148($zero)
    addiu	$a0,$a2,-3
    sw	$a0,4136($zero)
    # Line 846
    addiu	$sp,$sp,32
    # Line 845
    addiu	$v1,$v1,3
    # Line 846
    jr	$ra
    # Line 845
    sw	$v1,4148($zero)
.L0d94fa88:
    # Line 846
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94fa94:
    # Line 837
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0d94fa88
    ld	$ra,16($sp)
.end __glkonlc_LineWidth

# Function: __glkonlc_PointSize
# Declared: Line 849 (Source lines: 849-861)
# Address: 0x0d94fab0 - 0x0d94fb68 (Size: 184 bytes, Frame: 32)
.globl __glkonlc_PointSize
.ent __glkonlc_PointSize
__glkonlc_PointSize:
    # Line 849
    mtc1	$zero,$f0
    c.le.s	$f12,$f0
    addiu	$sp,$sp,-32
    lui	$at,0x14
    sd	$ra,16($sp)
    addiu	$at,$at,5416
    mov.s	$f4,$f12
    sd	$gp,0($sp)
    bc1t	.L0d94fb54
    addu	$gp,$t9,$at
    # Line 856
    lw	$a2,4136($zero)
    slti	$v0,$a2,3
    beqz	$v0,.L0d94fafc
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f12,8($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,8($sp)
    move	$a2,$v0
.L0d94fafc:
    # Line 859
    lwc1	$f1,_lit_41b00000
    # Line 861
    ld	$gp,0($sp)
    # Line 856
    lw	$a1,4144($zero)
    ld	$ra,16($sp)
    # Line 859
    c.lt.s $f1,$f4
    # Line 857
    li	$a3,190
    sw	$a3,0($a1)
    # Line 858
    swc1	$f4,4($a1)
    # Line 859
    movf.s	$f1,$f4,$fcc1
    swc1	$f1,8($a1)
    # Line 860
    addiu	$a1,$a1,12
    sw	$a1,4144($zero)
    lw	$v1,4148($zero)
    addiu	$a0,$a2,-3
    sw	$a0,4136($zero)
    # Line 861
    addiu	$sp,$sp,32
    # Line 860
    addiu	$v1,$v1,3
    # Line 861
    jr	$ra
    # Line 860
    sw	$v1,4148($zero)
.L0d94fb48:
    # Line 861
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94fb54:
    # Line 852
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0d94fb48
    ld	$ra,16($sp)
.end __glkonlc_PointSize

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_41b00000:
    .word 0x41b00000
_lit_42000000:
    .word 0x42000000

