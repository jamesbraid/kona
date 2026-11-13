# Source: ../KONA/kon_point_parameters.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_point_parameters.c
# Total Functions: 4

.text

# Function: __glkonim_PointParameterfSGIS
# Declared: Line 38 (Source lines: 39-62)
# Address: 0x0d9646d0 - 0x0d9647b8 (Size: 232 bytes, Frame: 16)
.globl __glkonim_PointParameterfSGIS
.ent __glkonim_PointParameterfSGIS
__glkonim_PointParameterfSGIS:
    # Line 40
    li	$v0,0x8127
    # Line 39
    lui	$at,0x13
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14072
    sd	$gp,0($sp)
    # Line 40
    beq	$a0,$v0,.L0d96474c
    # Line 39
    addu	$gp,$t9,$at
    # Line 40
    li	$v0,0x8126
    beq	$a0,$v0,.L0d96471c
    # Line 58
    mtc1	$zero,$f0
    # Line 40
    li	$v1,0x8128
    beq	$a0,$v1,.L0d964718
    # Line 42
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d964740
    ld	$ra,8($sp)
.L0d964718:
    # Line 58
    mtc1	$zero,$f0
.L0d96471c:
    c.lt.s	$f13,$f0
    bc1t	.L0d964788
    # Line 62
    li	$a1,423
    sw	$a1,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    # Line 54
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d964740:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96474c:
    # Line 46
    mtc1	$zero,$f1
    c.le.s $f13,$f1
    # Line 53
    lwc1	$f2,_lit_41b00000
    li	$a2,423
    # Line 46
    bc1t .L0d9647a0
    # Line 53
    ldc1	$f3,_lit8_4036000000000000
    cvt.d.s	$f4,$f13
    sw	$a2,16384($zero)
    c.lt.d $f3,$f4
    sw	$a0,16384($zero)
    # Line 54
    ld	$gp,0($sp)
    # Line 53
    movf.s	$f2,$f13,$fcc2
    # Line 54
    addiu	$sp,$sp,16
    jr	$ra
    # Line 53
    swc1	$f2,16384($zero)
.L0d964788:
    # Line 59
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d964740
    ld	$ra,8($sp)
.L0d9647a0:
    # Line 47
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d964740
    ld	$ra,8($sp)
.end __glkonim_PointParameterfSGIS

# Function: __glkonim_PointParameterfvSGIS
# Declared: Line 67 (Source lines: 68-99)
# Address: 0x0d9647c0 - 0x0d9648e0 (Size: 288 bytes, Frame: 16)
.globl __glkonim_PointParameterfvSGIS
.ent __glkonim_PointParameterfvSGIS
__glkonim_PointParameterfvSGIS:
    # Line 71
    li	$v0,0x8127
    # Line 68
    lui	$at,0x13
    addiu	$sp,$sp,-16
    addiu	$at,$at,-14312
    sd	$gp,0($sp)
    # Line 71
    beq	$a0,$v0,.L0d964870
    # Line 68
    addu	$gp,$t9,$at
    # Line 71
    li	$v0,0x8126
    beq	$a0,$v0,.L0d964818
    li	$v1,0x8128
    beq	$a0,$v1,.L0d964818
    li	$a2,0x8129
    # Line 99
    li	$a4,424
    # Line 71
    beq	$a0,$a2,.L0d964844
    # Line 73
    nop	# was lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d96480c:
    # Line 87
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d964818:
    # Line 91
    mtc1	$zero,$f0
    lwc1	$f4,0($a1)
    c.lt.s	$f4,$f0
    bc1t	.L0d9648b0
    # Line 95
    li	$a3,423
    sw	$a3,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f4,16384($zero)
    # Line 87
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d964844:
    ld	$gp,0($sp)
    # Line 99
    sw	$a4,16384($zero)
    sw	$a0,16384($zero)
    lwc1	$f1,8($a1)
    lwc1	$f3,0($a1)
    lwc1	$f2,4($a1)
    swc1	$f3,16384($zero)
    swc1	$f2,16384($zero)
    # Line 87
    addiu	$sp,$sp,16
    jr	$ra
    # Line 99
    swc1	$f1,16384($zero)
.L0d964870:
    # Line 77
    mtc1	$zero,$f5
    lwc1	$f4,0($a1)
    c.le.s $f4,$f5
    # Line 82
    lwc1	$f6,_lit_41b00000
    # Line 85
    li	$a5,423
    # Line 77
    bc1t .L0d9648c8
    # Line 82
    ldc1	$f7,_lit8_4036000000000000
    cvt.d.s	$f8,$f4
    # Line 85
    sw	$a5,16384($zero)
    # Line 82
    c.lt.d $f7,$f8
    # Line 85
    sw	$a0,16384($zero)
    # Line 87
    ld	$gp,0($sp)
    # Line 82
    movf.s	$f6,$f4,$fcc2
    # Line 87
    addiu	$sp,$sp,16
    jr	$ra
    # Line 85
    swc1	$f6,16384($zero)
.L0d9648b0:
    # Line 92
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d96480c
    ld	$ra,8($sp)
.L0d9648c8:
    # Line 78
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d96480c
    ld	$ra,8($sp)
.end __glkonim_PointParameterfvSGIS

# Function: __glkonlc_PointParameterfSGIS
# Declared: Line 105 (Source lines: 106-138)
# Address: 0x0d9648e0 - 0x0d964a64 (Size: 388 bytes, Frame: 32)
.globl __glkonlc_PointParameterfSGIS
.ent __glkonlc_PointParameterfSGIS
__glkonlc_PointParameterfSGIS:
    # Line 113
    mtc1	$zero,$f1
    # Line 106
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 107
    li	$at,0x8127
    # Line 106
    lui	$v0,0x13
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,-14600
    mov.s	$f4,$f13
    sd	$gp,8($sp)
    # Line 107
    beq	$a0,$at,.L0d9649bc
    # Line 106
    addu	$gp,$t9,$v0
    # Line 107
    li	$v1,0x8126
    beq	$a0,$v1,.L0d964938
    li	$a0,0x8128
    beq	$s0,$a0,.L0d96493c
    # Line 130
    mtc1	$zero,$f0
    # Line 109
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    ld	$s0,0($sp)
    b	.L0d9649b0
    ld	$ra,24($sp)
.L0d964938:
    # Line 130
    mtc1	$zero,$f0
.L0d96493c:
    c.lt.s	$f4,$f0
    bc1t	.L0d964a44
    # Line 131
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 134
    lw	$a0,4136($zero)
    slti	$a1,$a0,3
    beqz	$a1,.L0d96496c
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f4,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    move	$a0,$v0
.L0d96496c:
    lw	$a4,4144($zero)
    # Line 126
    ld	$gp,8($sp)
    # Line 135
    li	$a5,423
    sw	$a5,0($a4)
    # Line 136
    sw	$s0,4($a4)
    # Line 137
    swc1	$f4,8($a4)
    # Line 138
    addiu	$a4,$a4,12
    sw	$a4,4144($zero)
    addiu	$a3,$a0,-3
    sw	$a3,4136($zero)
    ld	$ra,24($sp)
    lw	$a2,4148($zero)
    # Line 126
    ld	$s0,0($sp)
    addiu	$sp,$sp,32
    # Line 138
    addiu	$a2,$a2,3
    # Line 126
    jr	$ra
    # Line 138
    sw	$a2,4148($zero)
.L0d9649b0:
    # Line 126
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9649bc:
    # Line 113
    c.le.s $f13,$f1
    bc1t .L0d964a54
    # Line 114
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 121
    lw	$a0,4136($zero)
    slti	$a6,$a0,3
    beqz	$a6,.L0d9649ec
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f13,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ldc1	$f4,16($sp)
    move	$a0,$v0
.L0d9649ec:
    lw	$t1,4144($zero)
    # Line 124
    lwc1	$f2,_lit_41b00000
    ldc1	$f3,_lit8_4036000000000000
    # Line 126
    ld	$gp,8($sp)
    # Line 124
    cvt.d.s	$f5,$f4
    # Line 123
    sw	$s0,4($t1)
    # Line 126
    ld	$s0,0($sp)
    # Line 124
    c.lt.d $f3,$f5
    ld	$ra,24($sp)
    # Line 122
    li	$t2,423
    sw	$t2,0($t1)
    # Line 124
    movf.s	$f2,$f4,$fcc2
    swc1	$f2,8($t1)
    # Line 125
    addiu	$t1,$t1,12
    sw	$t1,4144($zero)
    lw	$a7,4148($zero)
    addiu	$t0,$a0,-3
    sw	$t0,4136($zero)
    # Line 126
    addiu	$sp,$sp,32
    # Line 125
    addiu	$a7,$a7,3
    # Line 126
    jr	$ra
    # Line 125
    sw	$a7,4148($zero)
.L0d964a44:
    # Line 131
    jalr	$t9
    ld	$s0,0($sp)
    b	.L0d9649b0
    ld	$ra,24($sp)
.L0d964a54:
    # Line 114
    jalr	$t9
    ld	$s0,0($sp)
    b	.L0d9649b0
    ld	$ra,24($sp)
.end __glkonlc_PointParameterfSGIS

# Function: __glkonlc_PointParameterfvSGIS
# Declared: Line 144 (Source lines: 145-190)
# Address: 0x0d964a70 - 0x0d964c88 (Size: 536 bytes, Frame: 48)
.globl __glkonlc_PointParameterfvSGIS
.ent __glkonlc_PointParameterfvSGIS
__glkonlc_PointParameterfvSGIS:
    # Line 145
    addiu	$sp,$sp,-48
    # Line 148
    li	$v0,0x8127
    # Line 145
    lui	$at,0x13
    sd	$s0,0($sp)
    move	$s0,$a0
    addiu	$at,$at,-15000
    sd	$gp,8($sp)
    # Line 148
    beq	$a0,$v0,.L0d964bd8
    # Line 145
    addu	$gp,$t9,$at
    # Line 148
    li	$v0,0x8126
    beq	$a0,$v0,.L0d964b54
    li	$v1,0x8128
    beq	$a0,$v1,.L0d964b54
    li	$a0,0x8129
    beq	$s0,$a0,.L0d964ac4
    # Line 150
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    sd	$ra,32($sp)
    jal	__glsplc_InvalidEnum
    nop
    b	.L0d964b44
    ld	$ra,32($sp)
.L0d964ac4:
    # Line 184
    lw	$a0,4136($zero)
    slti	$a2,$a0,5
    beqz	$a2,.L0d964af0
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    move	$a0,$v0
.L0d964af0:
    lw	$a5,4144($zero)
    # Line 186
    sw	$s0,4($a5)
    # Line 185
    li	$a6,424
    sw	$a6,0($a5)
    # Line 187
    lwc1	$f2,0($a1)
    swc1	$f2,8($a5)
    # Line 188
    lwc1	$f1,4($a1)
    # Line 168
    ld	$gp,8($sp)
    # Line 188
    swc1	$f1,12($a5)
    # Line 189
    lwc1	$f0,8($a1)
    # Line 168
    ld	$s0,0($sp)
    # Line 189
    swc1	$f0,16($a5)
    # Line 190
    addiu	$a5,$a5,20
    sw	$a5,4144($zero)
    lw	$a3,4148($zero)
    addiu	$a4,$a0,-5
    sw	$a4,4136($zero)
    # Line 168
    addiu	$sp,$sp,48
    # Line 190
    addiu	$a3,$a3,5
    # Line 168
    jr	$ra
    # Line 190
    sw	$a3,4148($zero)
.L0d964b44:
    ld	$s0,0($sp)
    # Line 168
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d964b54:
    # Line 172
    mtc1	$zero,$f4
    lwc1	$f3,0($a1)
    c.lt.s	$f3,$f4
    bc1t	.L0d964c5c
    # Line 173
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 176
    lw	$a0,4136($zero)
    slti	$a7,$a0,3
    beqz	$a7,.L0d964b94
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ld	$a1,24($sp)
    move	$a0,$v0
.L0d964b94:
    lw	$t2,4144($zero)
    # Line 168
    ld	$gp,8($sp)
    # Line 178
    sw	$s0,4($t2)
    # Line 177
    li	$t3,423
    sw	$t3,0($t2)
    # Line 179
    lwc1	$f5,0($a1)
    # Line 168
    ld	$s0,0($sp)
    # Line 179
    swc1	$f5,8($t2)
    # Line 180
    addiu	$t2,$t2,12
    sw	$t2,4144($zero)
    lw	$t0,4148($zero)
    addiu	$t1,$a0,-3
    sw	$t1,4136($zero)
    # Line 168
    addiu	$sp,$sp,48
    # Line 180
    addiu	$t0,$t0,3
    # Line 168
    jr	$ra
    # Line 180
    sw	$t0,4148($zero)
.L0d964bd8:
    # Line 154
    mtc1	$zero,$f6
    lwc1	$f4,0($a1)
    c.le.s $f4,$f6
    # Line 159
    lwc1	$f5,_lit_41b00000
    # Line 154
    bc1t .L0d964c70
    # Line 159
    ldc1	$f7,_lit8_4036000000000000
    # Line 161
    lw	$a0,4136($zero)
    # Line 159
    cvt.d.s	$f8,$f4
    c.lt.d $f7,$f8
    # Line 161
    slti	$t8,$a0,3
    beqz	$t8,.L0d964c28
    # Line 159
    movf.s	$f5,$f4,$fcc2
    # Line 161
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sdc1	$f5,16($sp)
    sd	$ra,32($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$ra,32($sp)
    ldc1	$f5,16($sp)
    move	$a0,$v0
.L0d964c28:
    lw	$v0,4144($zero)
    # Line 162
    li	$v1,423
    sw	$v1,0($v0)
    # Line 163
    sw	$s0,4($v0)
    # Line 165
    swc1	$f5,8($v0)
    # Line 167
    addiu	$v0,$v0,12
    sw	$v0,4144($zero)
    lw	$t9,4148($zero)
    addiu	$at,$a0,-3
    sw	$at,4136($zero)
    addiu	$t9,$t9,3
    b	.L0d964b44
    sw	$t9,4148($zero)
.L0d964c5c:
    sd	$ra,32($sp)
    # Line 173
    jalr	$t9
    nop
    b	.L0d964b44
    ld	$ra,32($sp)
.L0d964c70:
    # Line 155
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    sd	$ra,32($sp)
    jal	__glsplc_InvalidValue
    nop
    b	.L0d964b44
    ld	$ra,32($sp)
.end __glkonlc_PointParameterfvSGIS

.rdata
_lit8_4036000000000000:
    .word 0x40360000, 0x00000000
_lit_41b00000:
    .word 0x41b00000

