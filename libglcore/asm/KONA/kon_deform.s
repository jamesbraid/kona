# Source: ../KONA/kon_deform.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_deform.c
# Total Functions: 14

.text

# Function: deformMapProlog
# Declared: Line 37 (Source lines: 41-66)
# Address: 0x0d988330 - 0x0d988424 (Size: 244 bytes, Frame: 208)
.ent deformMapProlog
deformMapProlog:
    # Line 41
    addiu	$sp,$sp,-80
    # Line 45
    li	$at,0x8194
    # Line 63
    lwc1	$f1,96($sp)
    # Line 45
    beq	$a1,$at,.L0d988368
    sd	$ra,0($sp)
    li	$v0,0x8195
    beq	$a1,$v0,.L0d988368
    # Line 47
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 48
    li	$v0,1
    # Line 66
    jr	$ra
    addiu	$sp,$sp,80
.L0d988368:
    # Line 51
    slti	$v1,$a4,3
    lw	$a4,124($sp)
    # Line 66
    move	$v0,$zero
    # Line 51
    bnez	$v1,.L0d988408
    ld	$ra,0($sp)
    lw	$a2,84($sp)
    slti	$a2,$a2,3
    bnez	$a2,.L0d98840c
    # Line 54
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 51
    lw	$a3,116($sp)
    slti	$a3,$a3,3
    bnez	$a3,.L0d98840c
    # Line 54
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 51
    blez	$a5,.L0d98840c
    # Line 54
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 51
    lw	$a3,92($sp)
    blez	$a3,.L0d98840c
    # Line 54
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 51
    blez	$a4,.L0d98840c
    # Line 54
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 51
    mult	$a5,$a3
    mflo	$a7
    nop
    nop
    mult	$a4,$a7
    mflo	$a6
    slti	$a6,$a6,9
    beqz	$a6,.L0d98840c
    # Line 54
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 58
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    # Line 59
    swc1	$f14,16384($zero)
    # Line 60
    swc1	$f15,16384($zero)
    # Line 61
    swc1	$f18,16384($zero)
    # Line 62
    swc1	$f19,16384($zero)
    # Line 64
    lwc1	$f0,104($sp)
    # Line 63
    swc1	$f1,16384($zero)
    # Line 66
    addiu	$sp,$sp,80
    jr	$ra
    # Line 64
    swc1	$f0,16384($zero)
.L0d988408:
    # Line 54
    # lw $t9, -28616($gp) # &__glSetError
.L0d98840c:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 55
    li	$v0,1
    # Line 66
    jr	$ra
    addiu	$sp,$sp,80
.end deformMapProlog

# Function: __glkonim_DeformationMap3fSGIX
# Declared: Line 70 (Source lines: 75-98)
# Address: 0x0d988430 - 0x0d988578 (Size: 328 bytes, Frame: 144)
.globl __glkonim_DeformationMap3fSGIX
.ent __glkonim_DeformationMap3fSGIX
__glkonim_DeformationMap3fSGIX:
    # Line 75
    move	$a5,$a7
    move	$t0,$a4
    addiu	$sp,$sp,-144
    # Line 78
    li	$a1,2
    # Line 75
    lui	$at,0x11
    mov.s	$f19,$f18
    move	$a6,$a0
    sd	$ra,72($sp)
    addiu	$at,$at,-29784
    mov.s	$f15,$f14
    sd	$gp,64($sp)
    # Line 78
    bne	$a4,$a1,.L0d988480
    # Line 75
    addu	$gp,$t9,$at
    # Line 78
    lw	$t1,148($sp)
    bne	$t1,$a1,.L0d988484
    # Line 97
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 78
    lw	$t2,180($sp)
    sd	$a7,48($sp)
    beq	$t2,$a1,.L0d98849c
    sd	$a3,56($sp)
.L0d988480:
    # Line 97
    # lw $t9, -28616($gp) # &__glSetError
.L0d988484:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,72($sp)
.L0d988490:
    # Line 98
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d98849c:
    # Line 79
    move	$a5,$a4
    ld	$a4,56($sp)
    lw	$v0,172($sp)
    sw	$t1,12($sp)
    ld	$ra,48($sp)
    sw	$ra,4($sp)
    lwc1	$f1,152($sp)
    # lw $t9, -32728($gp) # &sub_0d990000
    swc1	$f1,16($sp)
    lwc1	$f0,160($sp)
    sw	$t2,44($sp)
    addiu	$t9,$t9,-31952
    mov.s	$f18,$f17
    move	$a1,$a0
    sw	$v0,36($sp)
    mov.s	$f14,$f13
    li	$a0,448
    bal __glkonim_IglooInterfaceSGIX
    swc1	$f0,24($sp)
    bnez	$v0,.L0d988490
    ld	$ra,72($sp)
    # Line 83
    ld	$t2,56($sp)
    ld	$t0,48($sp)
    lw	$t1,172($sp)
    sll	$t2,$t2,0x2
    li	$a1,2
    sll	$t0,$t0,0x2
    lw	$a5,188($sp)
    move	$a6,$zero
    sll	$t1,$t1,0x2
    # Line 86
    move	$a3,$zero
.L0d988518:
    # Line 85
    addiu	$a6,$a6,1
    # Line 86
    move	$a0,$a5
    # Line 85
    addu	$a5,$t2,$a5
.L0d988524:
    # Line 92
    lwc1	$f5,8($a0)
    # Line 90
    lwc1	$f7,0($a0)
    # Line 91
    lwc1	$f6,4($a0)
    # Line 90
    swc1	$f7,16384($zero)
    # Line 91
    swc1	$f6,16384($zero)
    # Line 92
    swc1	$f5,16384($zero)
    # Line 89
    addu	$t3,$t1,$a0
    # Line 92
    lwc1	$f2,8($t3)
    # Line 90
    lwc1	$f4,0($t3)
    # Line 91
    lwc1	$f3,4($t3)
    # Line 90
    swc1	$f4,16384($zero)
    # Line 91
    swc1	$f3,16384($zero)
    # Line 87
    addiu	$a3,$a3,1
    addu	$a0,$t0,$a0
    # Line 92
    swc1	$f2,16384($zero)
    # Line 87
    bne	$a3,$a1,.L0d988524
    nop
    # Line 85
    bne	$a6,$a1,.L0d988518
    # Line 86
    move	$a3,$zero
    b	.L0d988490
    ld	$ra,72($sp)
.end __glkonim_DeformationMap3fSGIX

# Function: __glkonim_DeformationMap3dSGIX
# Declared: Line 101 (Source lines: 106-129)
# Address: 0x0d988580 - 0x0d9886d4 (Size: 340 bytes, Frame: 144)
.globl __glkonim_DeformationMap3dSGIX
.ent __glkonim_DeformationMap3dSGIX
__glkonim_DeformationMap3dSGIX:
    # Line 106
    move	$a5,$a7
    move	$t0,$a4
    addiu	$sp,$sp,-144
    # Line 109
    li	$a1,2
    # Line 106
    lui	$at,0x11
    mov.d	$f5,$f18
    move	$a6,$a0
    sd	$ra,72($sp)
    addiu	$at,$at,-30120
    mov.d	$f4,$f14
    sd	$gp,64($sp)
    # Line 109
    bne	$a4,$a1,.L0d9885d0
    # Line 106
    addu	$gp,$t9,$at
    # Line 109
    lw	$t1,148($sp)
    bne	$t1,$a1,.L0d9885d4
    # Line 128
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 109
    lw	$t2,180($sp)
    sd	$a7,48($sp)
    beq	$t2,$a1,.L0d9885ec
    sd	$a3,56($sp)
.L0d9885d0:
    # Line 128
    # lw $t9, -28616($gp) # &__glSetError
.L0d9885d4:
    jal	__glSetError
    li	$a0,1281
.L0d9885dc:
    ld	$ra,72($sp)
.L0d9885e0:
    # Line 129
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9885ec:
    # Line 110
    lw	$v0,172($sp)
    sw	$t1,12($sp)
    ld	$ra,48($sp)
    sw	$ra,4($sp)
    ldc1	$f1,152($sp)
    # lw $t9, -32728($gp) # &sub_0d990000
    cvt.s.d	$f1,$f1
    swc1	$f1,16($sp)
    cvt.s.d	$f19,$f18
    ldc1	$f0,160($sp)
    cvt.s.d	$f18,$f17
    move	$a5,$a4
    ld	$a4,56($sp)
    cvt.s.d	$f15,$f14
    addiu	$t9,$t9,-31952
    sw	$t2,44($sp)
    move	$a1,$a0
    sw	$v0,36($sp)
    cvt.s.d	$f0,$f0
    cvt.s.d	$f14,$f13
    li	$a0,449
    bal __glkonim_IglooInterfaceSGIX
    swc1	$f0,24($sp)
    bnez	$v0,.L0d9885dc
    # Line 114
    ld	$t2,56($sp)
    ld	$t0,48($sp)
    lw	$t1,172($sp)
    sll	$t2,$t2,0x3
    li	$a1,2
    sll	$t0,$t0,0x3
    lw	$a5,188($sp)
    move	$a6,$zero
    sll	$t1,$t1,0x3
    # Line 117
    move	$a3,$zero
.L0d988674:
    # Line 116
    addiu	$a6,$a6,1
    # Line 117
    move	$a0,$a5
    # Line 116
    addu	$a5,$t2,$a5
.L0d988680:
    # Line 123
    ldc1	$f5,16($a0)
    # Line 121
    ldc1	$f7,0($a0)
    # Line 122
    ldc1	$f6,8($a0)
    # Line 121
    sdc1	$f7,16384($zero)
    # Line 122
    sdc1	$f6,16384($zero)
    # Line 123
    sdc1	$f5,16384($zero)
    # Line 120
    addu	$t3,$t1,$a0
    # Line 123
    ldc1	$f2,16($t3)
    # Line 121
    ldc1	$f4,0($t3)
    # Line 122
    ldc1	$f3,8($t3)
    # Line 121
    sdc1	$f4,16384($zero)
    # Line 122
    sdc1	$f3,16384($zero)
    # Line 118
    addiu	$a3,$a3,1
    addu	$a0,$t0,$a0
    # Line 123
    sdc1	$f2,16384($zero)
    # Line 118
    bne	$a3,$a1,.L0d988680
    nop
    # Line 116
    bne	$a6,$a1,.L0d988674
    # Line 117
    move	$a3,$zero
    b	.L0d9885e0
    ld	$ra,72($sp)
.end __glkonim_DeformationMap3dSGIX

# Function: lcDeformationMap3
# Declared: Line 132 (Source lines: 141-176)
# Address: 0x0d9886e0 - 0x0d98889c (Size: 444 bytes, Frame: 208)
.ent lcDeformationMap3
lcDeformationMap3:
    # Line 141
    addiu	$sp,$sp,-208
    sd	$a0,104($sp)
    sdc1	$f13,56($sp)
    sdc1	$f14,72($sp)
    sd	$a3,112($sp)
    sd	$a4,120($sp)
    sdc1	$f17,64($sp)
    sdc1	$f18,48($sp)
    sd	$a7,96($sp)
    sd	$ra,128($sp)
    # Line 142
    lw	$at,212($sp)
    lw	$v0,236($sp)
    lw	$v1,244($sp)
    lwc1	$f0,216($sp)
    lwc1	$f1,224($sp)
    sw	$v1,36($sp)
    sw	$v0,28($sp)
    # lw $t9, -28500($gp) # &__glCheckMap3Params
    sw	$at,4($sp)
    swc1	$f1,16($sp)
    jal	__glCheckMap3Params
    swc1	$f0,8($sp)
    # Line 152
    lw	$a3,212($sp)
    # Line 142
    li	$a0,1281
    # Line 152
    ld	$a2,120($sp)
    # Line 142
    li	$a1,1280
    beq	$v0,$a0,.L0d988858
    # Line 152
    lw	$a4,244($sp)
    # Line 142
    beq	$v0,$a1,.L0d988868
    # Line 148
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 152
    li	$v0,2
    bne	$a2,$v0,.L0d988834
    # Line 175
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 152
    bne	$a3,$v0,.L0d988834
    # Line 175
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 152
    bne	$a4,$v0,.L0d988834
    # Line 175
    nop	# was lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 154
    lw	$t2,4136($zero)
    slti	$a5,$t2,32
    bnez	$a5,.L0d988848
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
.L0d988784:
    # Line 162
    lw	$a6,252($sp)
    sd	$t2,80($sp)
    # Line 156
    ld	$t8,104($sp)
    # Line 154
    lw	$t3,4144($zero)
    sd	$t3,88($sp)
    # Line 157
    ldc1	$f2,56($sp)
    # Line 158
    ldc1	$f3,72($sp)
    # Line 159
    ldc1	$f4,64($sp)
    # Line 162
    lwc1	$f7,224($sp)
    # Line 160
    ldc1	$f5,48($sp)
    # Line 162
    swc1	$f7,28($t3)
    # Line 161
    lwc1	$f6,216($sp)
    # Line 160
    swc1	$f5,20($t3)
    # Line 159
    swc1	$f4,16($t3)
    # Line 158
    swc1	$f3,12($t3)
    # Line 157
    swc1	$f2,8($t3)
    # Line 162
    lbu	$t0,263($sp)
    # Line 156
    sw	$t8,4($t3)
    # Line 155
    li	$t1,448
    sw	$t1,0($t3)
    # Line 162
    addiu	$a7,$t3,32
    beqz	$t0,.L0d988874
    # Line 161
    swc1	$f6,24($t3)
    # Line 164
    ld	$a0,120($sp)
    ld	$a1,112($sp)
    lw	$a2,212($sp)
    # lw $t9, -28508($gp) # &__glFillDeformationMap3f
    ld	$a3,96($sp)
    lw	$a4,244($sp)
    jal	__glFillDeformationMap3f
    lw	$a5,236($sp)
    # Line 173
    lw	$t9,4148($zero)
.L0d988804:
    ld	$ra,80($sp)
    ld	$at,88($sp)
    addiu	$ra,$ra,-32
    sw	$ra,4136($zero)
    # Line 176
    ld	$ra,128($sp)
    # Line 173
    addiu	$at,$at,128
    sw	$at,4144($zero)
    addiu	$t9,$t9,32
    sw	$t9,4148($zero)
    # Line 176
    jr	$ra
    addiu	$sp,$sp,208
    # Line 175
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
.L0d988834:
    jal	__glsplc_InvalidValue
    nop
    # Line 176
    ld	$ra,128($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d988848:
    # Line 154
    jalr	$t9
    move	$a0,$zero
    b	.L0d988784
    move	$t2,$v0
.L0d988858:
    # Line 145
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    # Line 146
    ld	$ra,128($sp)
    jr	$t9
    addiu	$sp,$sp,208
.L0d988868:
    # Line 149
    ld	$ra,128($sp)
    jr	$t9
    addiu	$sp,$sp,208
.L0d988874:
    # Line 169
    ld	$a0,120($sp)
    ld	$a1,112($sp)
    lw	$a2,212($sp)
    # lw $t9, -28504($gp) # &__glFillDeformationMap3d
    ld	$a3,96($sp)
    lw	$a4,244($sp)
    jal	__glFillDeformationMap3d
    lw	$a5,236($sp)
    b	.L0d988804
    # Line 173
    lw	$t9,4148($zero)
.end lcDeformationMap3

# Function: __glkonlc_DeformationMap3fSGIX
# Declared: Line 179 (Source lines: 187-190)
# Address: 0x0d9888a0 - 0x0d98890c (Size: 108 bytes, Frame: 144)
.globl __glkonlc_DeformationMap3fSGIX
.ent __glkonlc_DeformationMap3fSGIX
__glkonlc_DeformationMap3fSGIX:
    # Line 187
    addiu	$sp,$sp,-144
    sd	$ra,64($sp)
    # Line 188
    lw	$v1,148($sp)
    sw	$v1,4($sp)
    lwc1	$f1,152($sp)
    sd	$gp,72($sp)
    # Line 187
    lui	$v0,0x11
    addiu	$v0,$v0,-30920
    # Line 188
    swc1	$f1,8($sp)
    # Line 187
    addu	$gp,$t9,$v0
    # Line 188
    lwc1	$f0,160($sp)
    # lw $t9, -32728($gp) # &sub_0d990000
    swc1	$f0,16($sp)
    lw	$at,172($sp)
    sw	$at,28($sp)
    lw	$ra,180($sp)
    sw	$ra,36($sp)
    addiu	$t9,$t9,-31008
    lw	$at,188($sp)
    li	$v0,1
    sw	$v0,52($sp)
    bal __glkonim_DeformationMap3dSGIX
    sw	$at,44($sp)
    ld	$ra,64($sp)
    # Line 190
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glkonlc_DeformationMap3fSGIX

# Function: __glkonlc_DeformationMap3dSGIX
# Declared: Line 193 (Source lines: 201-204)
# Address: 0x0d988910 - 0x0d988990 (Size: 128 bytes, Frame: 144)
.globl __glkonlc_DeformationMap3dSGIX
.ent __glkonlc_DeformationMap3dSGIX
__glkonlc_DeformationMap3dSGIX:
    # Line 201
    addiu	$sp,$sp,-144
    # Line 202
    lw	$v1,148($sp)
    sw	$v1,4($sp)
    ldc1	$f1,152($sp)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    # Line 201
    lui	$v0,0x11
    # Line 202
    ldc1	$f0,160($sp)
    # Line 201
    sd	$ra,64($sp)
    addiu	$v0,$v0,-31032
    sd	$gp,72($sp)
    addu	$gp,$t9,$v0
    # Line 202
    # lw $t9, -32728($gp) # &sub_0d990000
    cvt.s.d	$f0,$f0
    swc1	$f0,16($sp)
    lw	$at,172($sp)
    sw	$at,28($sp)
    lw	$ra,180($sp)
    cvt.s.d	$f18,$f18
    sw	$ra,36($sp)
    cvt.s.d	$f17,$f17
    addiu	$t9,$t9,-31008
    lw	$at,188($sp)
    cvt.s.d	$f14,$f14
    sw	$zero,52($sp)
    cvt.s.d	$f13,$f13
    bal __glkonim_DeformationMap3dSGIX
    sw	$at,44($sp)
    ld	$ra,64($sp)
    # Line 204
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glkonlc_DeformationMap3dSGIX

# Function: __glkonim_DeformSGIX
# Declared: Line 207 (Source lines: 208-215)
# Address: 0x0d988990 - 0x0d9889ec (Size: 92 bytes, Frame: 16)
.globl __glkonim_DeformSGIX
.ent __glkonim_DeformSGIX
__glkonim_DeformSGIX:
    # Line 214
    li	$v1,447
    # Line 208
    li	$v0,-4
    lui	$at,0x11
    and	$v0,$a0,$v0
    addiu	$sp,$sp,-16
    addiu	$at,$at,-31160
    sd	$gp,0($sp)
    beqz	$v0,.L0d9889cc
    addu	$gp,$t9,$at
    # Line 211
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1281
    b	.L0d9889e0
    ld	$ra,8($sp)
.L0d9889cc:
    # Line 214
    sw	$v1,16384($zero)
    sw	$a0,16384($zero)
    # Line 215
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9889e0:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_DeformSGIX

# Function: __glkonlc_DeformSGIX
# Declared: Line 218 (Source lines: 219-229)
# Address: 0x0d9889f0 - 0x0d988a94 (Size: 164 bytes, Frame: 32)
.globl __glkonlc_DeformSGIX
.ent __glkonlc_DeformSGIX
__glkonlc_DeformSGIX:
    # Line 219
    addiu	$sp,$sp,-32
    li	$at,-4
    lui	$v0,0x11
    and	$at,$a0,$at
    sd	$ra,8($sp)
    addiu	$v0,$v0,-31256
    sd	$gp,0($sp)
    beqz	$at,.L0d988a28
    addu	$gp,$t9,$v0
    # Line 222
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0d988a88
    ld	$ra,8($sp)
.L0d988a28:
    # Line 225
    lw	$a3,4136($zero)
    slti	$v0,$a3,2
    beqz	$v0,.L0d988a4c
    nop	# was lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$a0,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    ld	$a0,16($sp)
    move	$a3,$v0
.L0d988a4c:
    lw	$a1,4144($zero)
    # Line 229
    ld	$gp,0($sp)
    # Line 226
    li	$a2,447
    sw	$a2,0($a1)
    # Line 227
    sw	$a0,4($a1)
    # Line 228
    addiu	$a1,$a1,8
    sw	$a1,4144($zero)
    ld	$ra,8($sp)
    lw	$v1,4148($zero)
    addiu	$a0,$a3,-2
    sw	$a0,4136($zero)
    # Line 229
    addiu	$sp,$sp,32
    # Line 228
    addiu	$v1,$v1,2
    # Line 229
    jr	$ra
    # Line 228
    sw	$v1,4148($zero)
.L0d988a88:
    # Line 229
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glkonlc_DeformSGIX

# Function: __glkonim_LoadIdentityDeformationMapSGIX
# Declared: Line 232 (Source lines: 237-238)
# Address: 0x0d988aa0 - 0x0d988ab4 (Size: 20 bytes, Frame: 0)
.globl __glkonim_LoadIdentityDeformationMapSGIX
.ent __glkonim_LoadIdentityDeformationMapSGIX
__glkonim_LoadIdentityDeformationMapSGIX:
    # Line 237
    li	$v0,451
    sw	$v0,16384($zero)
    andi	$at,$a0,0x3
    # Line 238
    jr	$ra
    # Line 237
    sw	$at,16384($zero)
.end __glkonim_LoadIdentityDeformationMapSGIX

# Function: __glkonlc_LoadIdentityDeformationMapSGIX
# Declared: Line 241 (Source lines: 242-249)
# Address: 0x0d988ac0 - 0x0d988b7c (Size: 188 bytes, Frame: 32)
.globl __glkonlc_LoadIdentityDeformationMapSGIX
.ent __glkonlc_LoadIdentityDeformationMapSGIX
__glkonlc_LoadIdentityDeformationMapSGIX:
    # Line 246
    li	$a3,451
    # Line 245
    lw	$a2,4136($zero)
    # Line 242
    lui	$at,0x11
    addiu	$sp,$sp,-32
    sd	$s8,0($sp)
    move	$s8,$a0
    # Line 245
    slti	$v0,$a2,2
    # Line 242
    addiu	$at,$at,-31464
    # Line 247
    andi	$a1,$s8,0x3
    sd	$gp,8($sp)
    # Line 245
    bnez	$v0,.L0d988b28
    # Line 242
    addu	$gp,$t9,$at
    # Line 249
    ld	$gp,8($sp)
    # Line 245
    lw	$a0,4144($zero)
    # Line 249
    ld	$s8,0($sp)
    # Line 246
    sw	$a3,0($a0)
    # Line 247
    sw	$a1,4($a0)
    # Line 248
    addiu	$a0,$a0,8
    sw	$a0,4144($zero)
    lw	$v0,4148($zero)
    addiu	$v1,$a2,-2
    sw	$v1,4136($zero)
    # Line 249
    addiu	$sp,$sp,32
    # Line 248
    addiu	$v0,$v0,2
    # Line 249
    jr	$ra
    # Line 248
    sw	$v0,4148($zero)
.L0d988b28:
    # Line 245
    # lw $t9, -30648($gp) # &__glSPDlistSpace
    sd	$ra,16($sp)
    jal	__glSPDlistSpace
    move	$a0,$zero
    # Line 249
    ld	$gp,8($sp)
    # Line 245
    lw	$a6,4144($zero)
    # Line 247
    andi	$a7,$s8,0x3
    # Line 249
    ld	$s8,0($sp)
    # Line 246
    li	$t0,451
    sw	$t0,0($a6)
    # Line 247
    sw	$a7,4($a6)
    # Line 248
    addiu	$a6,$a6,8
    sw	$a6,4144($zero)
    ld	$ra,16($sp)
    lw	$a4,4148($zero)
    addiu	$a5,$v0,-2
    sw	$a5,4136($zero)
    # Line 249
    addiu	$sp,$sp,32
    # Line 248
    addiu	$a4,$a4,2
    # Line 249
    jr	$ra
    # Line 248
    sw	$a4,4148($zero)
.end __glkonlc_LoadIdentityDeformationMapSGIX

# Function: getDeformationf
# Declared: Line 252 (Source lines: 252-277)
# Address: 0x0d988b80 - 0x0d988c9c (Size: 284 bytes, Frame: 32)
.ent getDeformationf
getDeformationf:
    # Line 252
    addiu	$sp,$sp,-32
    # Line 256
    # lw $t9, -32120($gp) # &__glkon_get_special
    # Line 252
    sd	$a2,8($sp)
    sd	$s0,0($sp)
    move	$s0,$a1
    # Line 256
    move	$a1,$a0
    sd	$ra,16($sp)
    jal	__glkon_get_special
    li	$a0,454
    # Line 260
    lwc1	$f5,4($v0)
    # Line 259
    lwc1	$f6,0($v0)
    # Line 258
    lwc1	$f4,-4($v0)
    # Line 260
    trunc.w.s	$f5,$f5
    # Line 259
    trunc.w.s	$f6,$f6
    # Line 261
    li	$v1,2560
    # Line 258
    trunc.w.s	$f4,$f4
    # Line 260
    mfc1	$a5,$f5
    # Line 265
    ld	$ra,16($sp)
    # Line 261
    li	$a1,2561
    # Line 259
    mfc1	$a6,$f6
    # Line 273
    ld	$a2,8($sp)
    # Line 261
    li	$a0,2562
    beq	$s0,$v1,.L0d988c34
    # Line 258
    mfc1	$a7,$f4
    # Line 261
    beq	$s0,$a0,.L0d988c7c
    # Line 267
    nop	# was lw $t9, -18528($gp) # &bcopy
    # Line 261
    beq	$s0,$a1,.L0d988c10
    # Line 274
    li	$v0,3
    # Line 276
    # lw $t9, -28616($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 277
    move	$v0,$zero
.L0d988c08:
    # Line 265
    jr	$ra
    addiu	$sp,$sp,32
.L0d988c10:
    # Line 273
    cvt.s.w	$f8,$f5
    # Line 272
    cvt.s.w	$f7,$f6
    # Line 265
    ld	$s0,0($sp)
    # Line 271
    cvt.s.w	$f6,$f4
    # Line 273
    swc1	$f8,8($a2)
    # Line 272
    swc1	$f7,4($a2)
    # Line 265
    addiu	$sp,$sp,32
    jr	$ra
    # Line 271
    swc1	$f6,0($a2)
.L0d988c34:
    # Line 263
    mult	$a7,$a5
    mflo	$t9
    nop
    nop
    mult	$a6,$t9
    # lw $t9, -18528($gp) # &bcopy
    mflo	$t8
    addiu	$a0,$v0,32
    sll	$s0,$t8,0x2
    ld	$a1,8($sp)
    subu	$s0,$s0,$t8
    jal	bcopy
    sll	$a2,$s0,0x2
    # Line 265
    ld	$ra,16($sp)
    move	$v0,$s0
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d988c7c:
    ld	$s0,0($sp)
    # Line 267
    li	$a2,24
    ld	$a1,8($sp)
    jalr	$t9
    addiu	$a0,$v0,8
    ld	$ra,16($sp)
    # Line 269
    b	.L0d988c08
    li	$v0,6
.end getDeformationf

# Function: __glkon_GetDeformationf
# Declared: Line 282 (Source lines: 282-284)
# Address: 0x0d988ca0 - 0x0d988cd8 (Size: 56 bytes, Frame: 16)
.globl __glkon_GetDeformationf
.ent __glkon_GetDeformationf
__glkon_GetDeformationf:
    # Line 282
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,-31944
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 283
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-29824
    bal __glkonlc_LoadIdentityDeformationMapSGIX
    nop
    ld	$ra,0($sp)
    # Line 284
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkon_GetDeformationf

# Function: __glkon_GetDeformationd
# Declared: Line 287 (Source lines: 287-294)
# Address: 0x0d988ce0 - 0x0d988dac (Size: 204 bytes, Frame: 128)
.globl __glkon_GetDeformationd
.ent __glkon_GetDeformationd
__glkon_GetDeformationd:
    # Line 287
    addiu	$sp,$sp,-128
    sd	$ra,104($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,-32008
    sd	$gp,112($sp)
    addu	$gp,$t9,$ra
    # Line 292
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-29824
    # Line 287
    sd	$s0,96($sp)
    move	$s0,$a2
    # Line 292
    bal __glkonlc_LoadIdentityDeformationMapSGIX
    addiu	$a2,$sp,0
    ld	$ra,104($sp)
    # Line 294
    ld	$gp,112($sp)
    # Line 292
    beqz	$v0,.L0d988da0
    move	$a4,$v0
    andi	$a2,$v0,0x3
    sra	$at,$v0,0x2
    beqz	$a2,.L0d988d50
    addiu	$a3,$sp,0
.L0d988d30:
    # Line 293
    lwc1	$f0,0($a3)
    addiu	$a2,$a2,-1
    # Line 292
    addiu	$a4,$a4,-1
    # Line 293
    addiu	$s0,$s0,8
    cvt.d.s	$f0,$f0
    addiu	$a3,$a3,4
    bnez	$a2,.L0d988d30
    sdc1	$f0,-8($s0)
.L0d988d50:
    move	$a2,$s0
    beqz	$at,.L0d988da0
    move	$v0,$a4
    nop
.L0d988d60:
    lwc1	$f4,0($a3)
    cvt.d.s	$f4,$f4
    sdc1	$f4,0($a2)
    lwc1	$f3,4($a3)
    cvt.d.s	$f3,$f3
    sdc1	$f3,8($a2)
    lwc1	$f2,8($a3)
    cvt.d.s	$f2,$f2
    sdc1	$f2,16($a2)
    lwc1	$f1,12($a3)
    # Line 292
    addiu	$v0,$v0,-4
    # Line 293
    addiu	$a2,$a2,32
    cvt.d.s	$f1,$f1
    addiu	$a3,$a3,16
    # Line 292
    bnez	$v0,.L0d988d60
    # Line 293
    sdc1	$f1,-8($a2)
.L0d988da0:
    ld	$s0,96($sp)
    # Line 294
    jr	$ra
    addiu	$sp,$sp,128
.end __glkon_GetDeformationd

# Function: __glkon_GetDeformationi
# Declared: Line 298 (Source lines: 298-305)
# Address: 0x0d988db0 - 0x0d988e7c (Size: 204 bytes, Frame: 128)
.globl __glkon_GetDeformationi
.ent __glkon_GetDeformationi
__glkon_GetDeformationi:
    # Line 298
    addiu	$sp,$sp,-128
    sd	$ra,104($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,-32216
    sd	$gp,112($sp)
    addu	$gp,$t9,$ra
    # Line 303
    # lw $t9, -32728($gp) # &sub_0d990000
    addiu	$t9,$t9,-29824
    # Line 298
    sd	$s0,96($sp)
    move	$s0,$a2
    # Line 303
    bal __glkonlc_LoadIdentityDeformationMapSGIX
    addiu	$a2,$sp,0
    ld	$ra,104($sp)
    # Line 305
    ld	$gp,112($sp)
    # Line 303
    beqz	$v0,.L0d988e70
    move	$a4,$v0
    andi	$a2,$v0,0x3
    sra	$at,$v0,0x2
    beqz	$a2,.L0d988e20
    addiu	$a3,$sp,0
.L0d988e00:
    # Line 304
    lwc1	$f0,0($a3)
    addiu	$a2,$a2,-1
    # Line 303
    addiu	$a4,$a4,-1
    # Line 304
    addiu	$s0,$s0,4
    trunc.w.s	$f0,$f0
    addiu	$a3,$a3,4
    bnez	$a2,.L0d988e00
    swc1	$f0,-4($s0)
.L0d988e20:
    move	$a2,$s0
    beqz	$at,.L0d988e70
    move	$v0,$a4
    nop
.L0d988e30:
    lwc1	$f4,0($a3)
    trunc.w.s	$f4,$f4
    swc1	$f4,0($a2)
    lwc1	$f3,4($a3)
    trunc.w.s	$f3,$f3
    swc1	$f3,4($a2)
    lwc1	$f2,8($a3)
    trunc.w.s	$f2,$f2
    swc1	$f2,8($a2)
    lwc1	$f1,12($a3)
    # Line 303
    addiu	$v0,$v0,-4
    # Line 304
    addiu	$a2,$a2,16
    trunc.w.s	$f1,$f1
    addiu	$a3,$a3,16
    # Line 303
    bnez	$v0,.L0d988e30
    # Line 304
    swc1	$f1,-4($a2)
.L0d988e70:
    ld	$s0,96($sp)
    # Line 305
    jr	$ra
    addiu	$sp,$sp,128
.end __glkon_GetDeformationi

