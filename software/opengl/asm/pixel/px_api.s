# Source: ../pixel/px_api.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_api.c
# Total Functions: 18

.text

# Function: __glInitDefaultPixelMap
# Declared: Line 26 (Source lines: 27-63)
# Address: 0x0d994850 - 0x0d994964 (Size: 276 bytes, Frame: 32)
.globl __glInitDefaultPixelMap
.ent __glInitDefaultPixelMap
__glInitDefaultPixelMap:
    # Line 27
    lui	$a5,0x10
    addiu	$sp,$sp,-32
    addiu	$a5,$a5,-14456
    sd	$gp,16($sp)
    addu	$gp,$t9,$a5
    move	$v0,$a1
    addiu	$a5,$a1,-3184
    la	$a4,.rodata
    sd	$s0,8($sp)
    move	$s0,$a0
    sltiu	$at,$a5,10
    sll	$a5,$a5,0x2
    addiu	$a4,$a4,1668
    sd	$ra,24($sp)
    beqz	$at,.L0d994950
    addu	$a4,$a4,$a5
    lw	$a6,0($a4)
    jr	$a6
    sd	$a1,0($sp)
.L0d99489c:
    # Line 38
    lw	$t9,0($s0)
    jalr	$t9
    li	$a1,4
    ld	$a1,0($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    ld	$ra,24($sp)
    sll	$a0,$a0,0x2
    # Line 63
    ld	$gp,16($sp)
    # Line 38
    lui	$a1,0xffff
    addu	$a0,$s0,$a0
    # Line 63
    ld	$s0,8($sp)
    # Line 38
    addu	$a0,$a0,$a1
    # Line 43
    li	$a2,1
    # Line 38
    beqz	$v0,.L0d994940
    sw	$v0,28360($a0)
    # Line 42
    sw	$zero,0($v0)
    # Line 43
    sw	$a2,28352($a0)
    # Line 63
    jr	$ra
    addiu	$sp,$sp,32
.L0d9948ec:
    # Line 53
    lw	$t9,0($s0)
    jalr	$t9
    li	$a1,4
    ld	$a1,0($sp)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    ld	$ra,24($sp)
    sll	$a0,$a0,0x2
    # Line 63
    ld	$gp,16($sp)
    # Line 53
    lui	$a1,0xffff
    addu	$a0,$s0,$a0
    # Line 57
    mtc1	$zero,$f0
    # Line 63
    ld	$s0,8($sp)
    # Line 53
    addu	$a0,$a0,$a1
    # Line 58
    li	$a2,1
    # Line 53
    beqz	$v0,.L0d994940
    sw	$v0,28360($a0)
    # Line 57
    swc1	$f0,0($v0)
    # Line 63
    addiu	$sp,$sp,32
    jr	$ra
    # Line 58
    sw	$a2,28352($a0)
.L0d994940:
    ld	$s0,8($sp)
    # Line 63
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d994950:
    # Line 62
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d994940
    ld	$ra,24($sp)
.end __glInitDefaultPixelMap

# Function: __glPixelSetColorScales
# Declared: Line 67 (Source lines: 68-112)
# Address: 0x0d994970 - 0x0d994b20 (Size: 432 bytes, Frame: 32)
.globl __glPixelSetColorScales
.ent __glPixelSetColorScales
__glPixelSetColorScales:
    # Line 68
    lw	$v0,30604($a0)
    addiu	$sp,$sp,-32
    lui	$at,0x10
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,-14744
    sd	$gp,0($sp)
    beqz	$v0,.L0d994ab4
    addu	$gp,$t9,$at
.L0d994994:
    # Line 94
    lwc1	$f8,_lit_437f0000
    # Line 97
    lwc1	$f6,30848($s0)
    div.s	$f6,$f6,$f8
    # Line 96
    lwc1	$f5,30816($s0)
    div.s	$f5,$f5,$f8
    # Line 95
    lwc1	$f7,30812($s0)
    div.s	$f7,$f7,$f8
    # Line 94
    lwc1	$f4,30808($s0)
    # Line 98
    li	$a4,256
    lw	$a0,30792($s0)
    move	$a2,$zero
    move	$a3,$zero
    # Line 112
    ld	$gp,0($sp)
    # Line 94
    div.s	$f4,$f4,$f8
    nop
.L0d9949d0:
    # Line 100
    mtc1	$a2,$f14
    cvt.s.w	$f14,$f14
    lw	$at,30604($s0)
    mul.s	$f17,$f14,$f4
    addu	$at,$at,$a3
    swc1	$f17,0($at)
    # Line 101
    lw	$t9,30608($s0)
    mul.s	$f16,$f14,$f7
    addu	$t9,$t9,$a3
    swc1	$f16,0($t9)
    # Line 102
    lw	$t8,30612($s0)
    mul.s	$f15,$f14,$f5
    addu	$t8,$t8,$a3
    swc1	$f15,0($t8)
    # Line 104
    and	$t3,$a0,$a2
    # Line 103
    lw	$t2,30616($s0)
    # Line 104
    mtc1	$t3,$f13
    # Line 99
    addiu	$a5,$a2,1
    # Line 103
    mul.s	$f14,$f14,$f6
    addu	$t2,$t2,$a3
    # Line 100
    mtc1	$a5,$f9
    # Line 103
    swc1	$f14,0($t2)
    # Line 104
    cvt.s.w	$f13,$f13
    lw	$t1,30620($s0)
    # Line 100
    cvt.s.w	$f9,$f9
    # Line 104
    addu	$t1,$t1,$a3
    swc1	$f13,0($t1)
    # Line 100
    lw	$t0,30604($s0)
    # Line 99
    addiu	$v1,$a3,4
    # Line 100
    mul.s	$f12,$f9,$f4
    addu	$t0,$t0,$v1
    swc1	$f12,0($t0)
    # Line 101
    lw	$a7,30608($s0)
    mul.s	$f11,$f9,$f7
    addu	$a7,$a7,$v1
    swc1	$f11,0($a7)
    # Line 102
    lw	$a6,30612($s0)
    mul.s	$f10,$f9,$f5
    addu	$a6,$a6,$v1
    swc1	$f10,0($a6)
    # Line 104
    and	$a5,$a0,$a5
    # Line 103
    lw	$a1,30616($s0)
    # Line 104
    mtc1	$a5,$f8
    # Line 103
    mul.s	$f9,$f9,$f6
    addu	$a1,$a1,$v1
    swc1	$f9,0($a1)
    # Line 104
    cvt.s.w	$f8,$f8
    lw	$v0,30620($s0)
    # Line 99
    addiu	$a2,$a2,2
    # Line 104
    addu	$v0,$v0,$v1
    # Line 99
    addiu	$a3,$a3,8
    bne	$a2,$a4,.L0d9949d0
    # Line 104
    swc1	$f8,0($v0)
    # Line 111
    sb	$zero,30644($s0)
    # Line 112
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d994ab4:
    # Line 82
    lw	$t9,0($s0)
    sd	$ra,16($sp)
    jalr	$t9
    li	$a1,1024
    # Line 84
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 82
    sw	$v0,30604($s0)
    # Line 86
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 84
    sw	$v0,30608($s0)
    # Line 88
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 86
    sw	$v0,30612($s0)
    # Line 90
    lw	$t9,0($s0)
    li	$a1,1024
    move	$a0,$s0
    jalr	$t9
    # Line 88
    sw	$v0,30616($s0)
    ld	$ra,16($sp)
    b	.L0d994994
    # Line 90
    sw	$v0,30620($s0)
.end __glPixelSetColorScales

# Function: __glFreePixelState
# Declared: Line 116 (Source lines: 117-163)
# Address: 0x0d994b20 - 0x0d994e44 (Size: 804 bytes, Frame: 48)
.globl __glFreePixelState
.ent __glFreePixelState
__glFreePixelState:
    # Line 117
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    move	$s1,$a0
    lui	$at,0x10
    li	$t8,0x9540
    addu	$t8,$a0,$t8
    sd	$s0,8($sp)
    lui	$s0,0xffff
    addiu	$at,$at,-15176
    sd	$s2,0($sp)
    li	$s2,0x95b8
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    addu	$s2,$a0,$s2
    addu	$s2,$s0,$s2
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994b7c
    sd	$ra,32($sp)
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    nop
    # Line 131
    sw	$zero,28360($s0)
.L0d994b7c:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d994ce4
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994ba4
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d994ba4:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d994ce4
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994bcc
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d994bcc:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d994ce4
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994bf4
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d994bf4:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d994ce4
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994c1c
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d994c1c:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d994ce4
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994c44
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d994c44:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d994ce4
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994c6c
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d994c6c:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d994ce4
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994c94
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d994c94:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d994ce4
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994cbc
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d994cbc:
    # Line 127
    addiu	$s0,$s0,12
    beq	$s0,$s2,.L0d994ce4
    nop
    # Line 117
    lw	$a1,28360($s0)
    beqz	$a1,.L0d994ce4
    nop
    # Line 130
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 131
    sw	$zero,28360($s0)
.L0d994ce4:
    # Line 134
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30604($s1)
    # Line 135
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30608($s1)
    # Line 136
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30612($s1)
    # Line 137
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30616($s1)
    # Line 138
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30620($s1)
    lw	$a1,30648($s1)
    beqz	$a1,.L0d994d7c
    nop
    # Line 140
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 141
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30652($s1)
    # Line 142
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30656($s1)
    # Line 143
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30660($s1)
.L0d994d7c:
    lw	$a1,30676($s1)
    ld	$s2,0($sp)
    beqz	$a1,.L0d994dc8
    ld	$s0,8($sp)
    # Line 146
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 147
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30680($s1)
    # Line 148
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30684($s1)
    # Line 149
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,30688($s1)
.L0d994dc8:
    lw	$a1,30668($s1)
    beqz	$a1,.L0d994de0
    nop
    # Line 152
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
.L0d994de0:
    # Line 155
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,848($s1)
    # Line 156
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,932($s1)
    # Line 157
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1016($s1)
    # Line 159
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1020($s1)
    # Line 161
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1244($s1)
    ld	$ra,32($sp)
    ld	$s1,16($sp)
    # Line 163
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glFreePixelState

# Function: __glInitPixelState
# Declared: Line 170 (Source lines: 171-334)
# Address: 0x0d994e50 - 0x0d9951f4 (Size: 932 bytes, Frame: 48)
.globl __glInitPixelState
.ent __glInitPixelState
__glInitPixelState:
    # Line 171
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$gp,24($sp)
    sd	$s1,16($sp)
    sd	$s0,8($sp)
    # Line 179
    lwc1	$f0,3544($a0)
    # Line 171
    sd	$s2,0($sp)
    # Line 196
    swc1	$f0,748($a0)
    # Line 195
    swc1	$f0,744($a0)
    # Line 193
    swc1	$f0,724($a0)
    # Line 192
    swc1	$f0,720($a0)
    # Line 191
    swc1	$f0,716($a0)
    # Line 190
    swc1	$f0,712($a0)
    # Line 188
    swc1	$f0,692($a0)
    # Line 187
    swc1	$f0,688($a0)
    # Line 186
    swc1	$f0,684($a0)
    # Line 185
    swc1	$f0,680($a0)
    # Line 183
    swc1	$f0,656($a0)
    # Line 182
    swc1	$f0,652($a0)
    # Line 196
    li	$s2,3194
    # Line 171
    lui	$at,0x10
    # Line 181
    swc1	$f0,648($a0)
    # Line 196
    li	$s0,3184
    # Line 171
    addiu	$at,$at,-15992
    # Line 180
    swc1	$f0,644($a0)
    # Line 171
    move	$s1,$a0
    # Line 179
    swc1	$f0,640($a0)
    # Line 171
    addu	$gp,$t9,$at
    # Line 202
    # lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d994fb8
    sdc1	$f30,32($sp)
    # Line 202
    # lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d994fbc
    # Line 215
    li	$a2,0x842e
    # Line 202
    # lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d994fbc
    # Line 215
    li	$a2,0x842e
    # Line 202
    # lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d994fbc
    # Line 215
    li	$a2,0x842e
    # Line 202
    # lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d994fbc
    # Line 215
    li	$a2,0x842e
    # Line 202
    # lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d994fb8
    # Line 202
    nop	# was lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d994fb8
    # Line 202
    nop	# was lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d994fb8
    # Line 202
    nop	# was lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
    # Line 201
    addiu	$s0,$s0,1
    beq	$s2,$s0,.L0d994fb8
    # Line 202
    nop	# was lw $t9, -30636($gp) # &__glInitDefaultPixelMap
    move	$a0,$s1
    bal __glInitDefaultPixelMap
    move	$a1,$s0
.L0d994fb8:
    # Line 215
    li	$a2,0x842e
.L0d994fbc:
    sw	$a2,1228($s1)
    # Line 211
    li	$a0,0x85a2
    # Line 214
    sw	$a0,1224($s1)
    # Line 212
    li	$a1,0x8430
    sw	$a1,1184($s1)
    # Line 215
    lbu	$v1,3222($s1)
    # Line 211
    sw	$a0,1180($s1)
    # Line 208
    li	$v0,4
    # Line 209
    sw	$v0,1204($s1)
    # Line 220
    li	$a3,1029
    # Line 215
    beqz	$v1,.L0d9951e4
    # Line 208
    sw	$v0,1160($s1)
    # Line 220
    sw	$a3,1236($s1)
.L0d994ff0:
    # Line 244
    li	$a4,1
    sw	$a4,836($s1)
    # Line 231
    li	$s2,6408
    sw	$s2,776($s1)
    # Line 230
    li	$s0,0x8016
    sw	$s0,772($s1)
    # Line 229
    li	$a2,0x8010
    sw	$a2,768($s1)
    # Line 224
    sw	$a3,1240($s1)
    # Line 245
    lw	$a1,3624($s1)
    sw	$a1,840($s1)
    # Line 236
    mtc1	$zero,$f30
    # Line 232
    lwc1	$f1,3544($s1)
    # Line 243
    swc1	$f30,828($s1)
    # Line 242
    swc1	$f30,824($s1)
    # Line 241
    swc1	$f30,820($s1)
    # Line 240
    swc1	$f30,816($s1)
    # Line 239
    swc1	$f30,812($s1)
    # Line 238
    swc1	$f30,808($s1)
    # Line 237
    swc1	$f30,804($s1)
    # Line 236
    swc1	$f30,800($s1)
    # Line 235
    swc1	$f1,796($s1)
    # Line 246
    lw	$t9,0($s1)
    # Line 234
    swc1	$f1,792($s1)
    # Line 246
    sll	$a1,$a1,0x4
    # Line 233
    swc1	$f1,788($s1)
    # Line 246
    move	$a0,$s1
    jal	__glInitDefaultPixelMap
    # Line 232
    swc1	$f1,784($s1)
    # Line 266
    swc1	$f30,912($s1)
    # Line 265
    swc1	$f30,908($s1)
    # Line 264
    swc1	$f30,904($s1)
    # Line 263
    swc1	$f30,900($s1)
    # Line 262
    swc1	$f30,896($s1)
    # Line 261
    swc1	$f30,892($s1)
    # Line 260
    swc1	$f30,888($s1)
    # Line 259
    swc1	$f30,884($s1)
    # Line 254
    sw	$s2,860($s1)
    # Line 253
    sw	$s0,856($s1)
    # Line 252
    li	$a4,0x8011
    sw	$a4,852($s1)
    # Line 246
    sw	$v0,848($s1)
    # Line 267
    lw	$a2,3628($s1)
    # Line 268
    lw	$a3,3632($s1)
    sw	$a3,928($s1)
    # Line 255
    lwc1	$f2,3544($s1)
    # Line 269
    mult	$a2,$a3
    # Line 267
    sw	$a2,924($s1)
    # Line 258
    swc1	$f2,880($s1)
    # Line 269
    lw	$t9,0($s1)
    # Line 257
    swc1	$f2,876($s1)
    # Line 269
    move	$a0,$s1
    # Line 256
    swc1	$f2,872($s1)
    # Line 255
    swc1	$f2,868($s1)
    # Line 269
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x4
    # Line 290
    swc1	$f30,996($s1)
    # Line 289
    swc1	$f30,992($s1)
    # Line 288
    swc1	$f30,988($s1)
    # Line 287
    swc1	$f30,984($s1)
    # Line 286
    swc1	$f30,980($s1)
    # Line 285
    swc1	$f30,976($s1)
    # Line 284
    swc1	$f30,972($s1)
    # Line 283
    swc1	$f30,968($s1)
    # Line 278
    sw	$s2,944($s1)
    # Line 277
    sw	$s0,940($s1)
    # Line 276
    li	$a3,0x8012
    sw	$a3,936($s1)
    # Line 269
    sw	$v0,932($s1)
    # Line 292
    lw	$a2,3640($s1)
    sw	$a2,1012($s1)
    # Line 279
    lwc1	$f3,3544($s1)
    # Line 291
    lw	$a1,3636($s1)
    sw	$a1,1008($s1)
    # Line 282
    swc1	$f3,964($s1)
    # Line 293
    lw	$t9,0($s1)
    # Line 281
    swc1	$f3,960($s1)
    # Line 293
    move	$a0,$s1
    # Line 280
    swc1	$f3,956($s1)
    # Line 279
    swc1	$f3,952($s1)
    # Line 293
    addu	$a1,$a1,$a2
    jalr	$t9
    sll	$a1,$a1,0x4
    ld	$s0,8($sp)
    # Line 302
    lw	$t9,0($s1)
    ldc1	$f30,32($sp)
    lw	$a1,1012($s1)
    move	$a0,$s1
    # Line 293
    sw	$v0,1016($s1)
    # Line 302
    jalr	$t9
    sll	$a1,$a1,0xf
    la	$a2,__glDummyFilter
    # Line 312
    lwc1	$f7,3544($s1)
    # Line 302
    sw	$v0,1020($s1)
    # Line 312
    swc1	$f7,16($a2)
    # Line 313
    lwc1	$f6,3544($s1)
    swc1	$f6,20($a2)
    # Line 314
    lwc1	$f5,3544($s1)
    swc1	$f5,24($a2)
    # Line 315
    lwc1	$f4,3544($s1)
    # Line 326
    # lw $t9, -28056($gp) # &__glResetMinmax
    # Line 315
    swc1	$f4,28($a2)
    # Line 325
    li	$a3,1
    sb	$a3,1364($s1)
    # Line 324
    sw	$s2,1372($s1)
    # Line 323
    sw	$s2,1368($s1)
    # Line 322
    sw	$s2,1316($s1)
    # Line 321
    sw	$s2,1276($s1)
    # Line 320
    sw	$s2,1272($s1)
    # Line 326
    move	$a0,$s1
    jal	__glResetMinmax
    # Line 317
    sw	$a2,764($s1)
    # Line 333
    # lw $t9, -30632($gp) # &__glPixelSetColorScales
    ld	$s2,0($sp)
    move	$a0,$s1
    # Line 329
    sb	$zero,30701($s1)
    # Line 328
    li	$a4,0x8421
    # Line 333
    bal __glPixelSetColorScales
    # Line 328
    sw	$a4,30692($s1)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    # Line 334
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9951e4:
    # Line 222
    li	$a5,1028
    sw	$a5,1236($s1)
    b	.L0d994ff0
    li	$a3,1028
.end __glInitPixelState

# Function: __glim_PixelStoref
# Declared: Line 341 (Source lines: 342-379)
# Address: 0x0d995200 - 0x0d995418 (Size: 536 bytes, Frame: 16)
.globl __glim_PixelStoref
.ent __glim_PixelStoref
__glim_PixelStoref:
    # Line 342
    addiu	$sp,$sp,-16
    # Line 343
    sltiu	$at,$a0,3331
    # Line 342
    lui	$v0,0x10
    sd	$ra,8($sp)
    addiu	$v0,$v0,-16936
    sd	$gp,0($sp)
    # Line 343
    bnez	$at,.L0d995270
    # Line 342
    addu	$gp,$t9,$v0
    # Line 343
    sltiu	$v1,$a0,3332
    bnez	$v1,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    # Line 343
    li	$a2,0x806d
    sltu	$a1,$a0,$a2
    bnez	$a1,.L0d995354
    sltu	$a3,$a2,$a0
    li	$a2,0x8131
    sltu	$a5,$a2,$a0
    beqz	$a3,.L0d9952cc
    sltu	$a4,$a0,$a2
    bnez	$a4,.L0d9953e8
    li	$a4,0x806e
    beqz	$a5,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    # Line 343
    li	$a6,0x8133
    beq	$a0,$a6,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    b	.L0d995390
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.L0d995270:
    # Line 343
    sltiu	$a7,$a0,3316
    bnez	$a7,.L0d9952b4
    sltiu	$t0,$a0,3317
    bnez	$t0,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    # Line 343
    li	$a6,3317
    sltiu	$a2,$a0,3329
    sltiu	$t1,$a0,3330
    li	$t2,3330
    bnez	$a2,.L0d9953d0
    sltiu	$a3,$a0,3328
    bnez	$t1,.L0d995338
    # Line 369
    mtc1	$zero,$f3
    # Line 343
    beq	$a0,$t2,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    b	.L0d995390
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.L0d9952b4:
    # Line 343
    sltiu	$a2,$a0,3314
    bnez	$a2,.L0d995320
    sltiu	$t3,$a0,3315
    bnez	$t3,.L0d9952cc
    li	$t8,3315
    bne	$a0,$t8,.L0d99538c
.L0d9952cc:
    # Line 359
    mtc1	$zero,$f0
.L0d9952d0:
    c.lt.s	$f13,$f0
    bc1f	.L0d9952fc
    # Line 362
    lwc1	$f2,_lit_3f000000
    # Line 360
    lwc1	$f1,_lit_bf000000
    add.s	$f1,$f13,$f1
    # lw $t9, -30616($gp) # &__glim_PixelStorei
    trunc.w.s	$f1,$f1
    bal __glim_PixelStorei
    mfc1	$a1,$f1
    b	.L0d995314
    ld	$ra,8($sp)
.L0d9952fc:
    # Line 362
    add.s	$f2,$f13,$f2
    # lw $t9, -30616($gp) # &__glim_PixelStorei
    trunc.w.s	$f2,$f2
    bal __glim_PixelStorei
    mfc1	$a1,$f2
    ld	$ra,8($sp)
.L0d995314:
    # Line 379
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d995320:
    # Line 343
    sltiu	$t9,$a0,3313
    bnez	$t9,.L0d995388
    li	$v1,3312
    beqz	$a2,.L0d995390
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.L0d995334:
    # Line 369
    mtc1	$zero,$f3
.L0d995338:
    c.eq.s $f13,$f3
    bc1f .L0d9953a4
    # Line 370
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
    bal __glim_PixelStorei
    move	$a1,$zero
    b	.L0d995314
    ld	$ra,8($sp)
.L0d995354:
    # Line 343
    li	$a2,0x806b
    li	$a5,3332
    sltu	$ra,$a0,$a2
    li	$v0,0x806c
    sltiu	$a1,$a0,3333
    bnez	$ra,.L0d9953b8
    sltu	$at,$a2,$a0
    beqz	$at,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    # Line 343
    beq	$a0,$v0,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    b	.L0d995390
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.L0d995388:
    # Line 343
    beq	$a0,$v1,.L0d995334
.L0d99538c:
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.L0d995390:
    trunc.w.s	$f4,$f13
    bal __glim_PixelStorei
    mfc1	$a1,$f4
    b	.L0d995314
    ld	$ra,8($sp)
.L0d9953a4:
    # Line 372
    # lw $t9, -30616($gp) # &__glim_PixelStorei
    bal __glim_PixelStorei
    li	$a1,1
    b	.L0d995314
    ld	$ra,8($sp)
.L0d9953b8:
    # Line 343
    bnez	$a1,.L0d9953f8
    sltiu	$a2,$a0,3334
    bnez	$a2,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    b	.L0d995390
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.L0d9953d0:
    # Line 343
    bnez	$a3,.L0d995408
    nop
    bnez	$a2,.L0d995338
    # Line 369
    mtc1	$zero,$f3
    b	.L0d995390
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.L0d9953e8:
    # Line 343
    beq	$a0,$a4,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    b	.L0d995390
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.L0d9953f8:
    # Line 343
    beq	$a0,$a5,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    b	.L0d995390
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.L0d995408:
    # Line 343
    beq	$a0,$a6,.L0d9952d0
    # Line 359
    mtc1	$zero,$f0
    b	.L0d995390
    # Line 376
    nop	# was lw $t9, -30616($gp) # &__glim_PixelStorei
.end __glim_PixelStoref

# Function: __glim_PixelStorei
# Declared: Line 381 (Source lines: 382-573)
# Address: 0x0d995420 - 0x0d9959b0 (Size: 1424 bytes, Frame: 16)
.globl __glim_PixelStorei
.ent __glim_PixelStorei
__glim_PixelStorei:
    # Line 382
    addiu	$sp,$sp,-16
    # Line 384
    lw	$at,4120($zero)
    lw	$a3,4112($zero)
    li	$a5,1
    # Line 382
    lui	$v0,0x10
    sd	$ra,8($sp)
    addiu	$v0,$v0,-17480
    sd	$gp,0($sp)
    # Line 384
    beq	$at,$a5,.L0d995770
    # Line 382
    addu	$gp,$t9,$v0
    # Line 388
    li	$a4,0x806b
    sltu	$v1,$a0,$a4
    bnez	$v1,.L0d995498
    sltu	$a2,$a4,$a0
    bnez	$a2,.L0d9954c0
    li	$a4,0x8132
    bltz	$a1,.L0d9958a0
    # Line 423
    li	$a0,2
    # Line 422
    sw	$a1,1164($a3)
.L0d99546c:
    # Line 573
    sw	$a0,4120($zero)
    ld	$ra,8($sp)
    lw	$a4,11812($a3)
    # Line 571
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 573
    ori	$a4,$a4,0x10
    # Line 571
    jr	$ra
    # Line 573
    sw	$a4,11812($a3)
.L0d99548c:
    # Line 571
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d995498:
    # Line 388
    sltiu	$a6,$a0,3328
    bnez	$a6,.L0d9954e4
    sltiu	$t3,$a0,3315
    sltiu	$a7,$a0,3329
    beqz	$a7,.L0d995508
    sltiu	$a4,$a0,3331
    # Line 450
    li	$a0,2
    # Line 449
    sltu	$t0,$zero,$a1
    # Line 450
    b	.L0d99546c
    # Line 449
    sb	$t0,1144($a3)
.L0d9954c0:
    # Line 388
    sltu	$t1,$a0,$a4
    bnez	$t1,.L0d995528
    sltu	$t2,$a4,$a0
    bnez	$t2,.L0d99559c
    li	$a4,0x842d
    bltz	$a1,.L0d9958cc
    # Line 505
    li	$a0,2
    b	.L0d99546c
    # Line 504
    sw	$a1,1216($a3)
.L0d9954e4:
    # Line 388
    bnez	$t3,.L0d995554
    sltiu	$v0,$a0,3313
    sltiu	$t8,$a0,3316
    beqz	$t8,.L0d995600
    sltiu	$t8,$a0,3317
    bltz	$a1,.L0d9958e0
    # Line 519
    li	$a0,2
    b	.L0d99546c
    # Line 518
    sw	$a1,1196($a3)
.L0d995508:
    # Line 388
    bnez	$a4,.L0d995578
    sltiu	$t9,$a0,3332
    beqz	$t9,.L0d995684
    sltiu	$a4,$a0,3333
    bltz	$a1,.L0d9958f4
    # Line 430
    li	$a0,2
    b	.L0d99546c
    # Line 429
    sw	$a1,1152($a3)
.L0d995528:
    # Line 388
    li	$a4,0x806e
    sltu	$ra,$a0,$a4
    bnez	$ra,.L0d9955d4
    sltu	$at,$a4,$a0
    bnez	$at,.L0d995718
    li	$a4,0x8131
    bltz	$a1,.L0d995908
    # Line 487
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 491
    li	$a0,2
    b	.L0d99546c
    # Line 490
    sw	$a1,1212($a3)
.L0d995554:
    # Line 388
    bnez	$v0,.L0d995644
    li	$v0,3312
    sltiu	$v1,$a0,3314
    beqz	$v1,.L0d99566c
    li	$a2,3314
    # Line 542
    li	$a0,2
    # Line 541
    sltu	$a2,$zero,$a1
    # Line 542
    b	.L0d99546c
    # Line 541
    sb	$a2,1189($a3)
.L0d995578:
    # Line 388
    sltiu	$a5,$a0,3330
    bnez	$a5,.L0d9956c8
    li	$t1,3329
    beqz	$a4,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d995918
    # Line 409
    li	$a0,2
    b	.L0d99546c
    # Line 408
    sw	$a1,1148($a3)
.L0d99559c:
    # Line 388
    sltu	$a6,$a0,$a4
    bnez	$a6,.L0d9956e0
    sltu	$a7,$a4,$a0
    bnez	$a7,.L0d9957a4
    # Line 558
    li	$t0,0x842e
    beq	$a1,$t0,.L0d995838
    # Line 561
    li	$a0,2
    # Line 558
    li	$t1,0x842f
    beq	$a1,$t1,.L0d995834
    # Line 564
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d9955d4:
    # Line 388
    li	$a4,0x806d
    sltu	$t2,$a0,$a4
    bnez	$t2,.L0d995740
    li	$v0,0x806c
    sltu	$t3,$a4,$a0
    bnez	$t3,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d99592c
    # Line 512
    li	$a0,2
    b	.L0d99546c
    # Line 511
    sw	$a1,1208($a3)
.L0d995600:
    # Line 388
    bnez	$t8,.L0d995758
    li	$v1,3316
    sltiu	$t9,$a0,3318
    beqz	$t9,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 528
    beq	$a1,$a5,.L0d995784
    li	$a0,2
    beq	$a1,$a0,.L0d995784
    li	$ra,4
    beq	$a1,$ra,.L0d995784
    li	$at,8
    beq	$a1,$at,.L0d995784
    # Line 533
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d995644:
    # Line 388
    bne	$a0,$v0,.L0d995658
    # Line 538
    li	$a0,2
    sltu	$v1,$zero,$a1
    b	.L0d99546c
    sb	$v1,1188($a3)
.L0d995658:
    # Line 570
    # lw $t9, -28616($gp) # &__glSetError
.L0d99565c:
    jal	__glSetError
    li	$a0,1280
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d99566c:
    # Line 388
    bne	$a0,$a2,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d995940
    # Line 498
    li	$a0,2
    b	.L0d99546c
    # Line 497
    sw	$a1,1192($a3)
.L0d995684:
    # Line 388
    bnez	$a4,.L0d99578c
    li	$a2,3332
    sltiu	$a6,$a0,3334
    beqz	$a6,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 439
    beq	$a1,$a5,.L0d99582c
    li	$a0,2
    beq	$a1,$a0,.L0d99582c
    li	$a7,4
    beq	$a1,$a7,.L0d99582c
    li	$t0,8
    beq	$a1,$t0,.L0d99582c
    # Line 444
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d9956c8:
    # Line 388
    bne	$a0,$t1,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 453
    li	$a0,2
    # Line 452
    sltu	$t2,$zero,$a1
    # Line 453
    b	.L0d99546c
    # Line 452
    sb	$t2,1145($a3)
.L0d9956e0:
    # Line 388
    li	$a4,0x842c
    sltu	$t3,$a0,$a4
    bnez	$t3,.L0d9957f0
    li	$t2,0x8133
    sltu	$t8,$a4,$a0
    bnez	$t8,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 469
    li	$t9,0x8430
    beq	$a1,$t9,.L0d995840
    # Line 474
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d995718:
    # Line 388
    sltu	$ra,$a0,$a4
    bnez	$ra,.L0d99580c
    sltu	$at,$a4,$a0
    bnez	$at,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d99597c
    # Line 391
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 395
    li	$a0,2
    b	.L0d99546c
    # Line 394
    sw	$a1,1176($a3)
.L0d995740:
    # Line 388
    bne	$a0,$v0,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d995954
    # Line 402
    li	$a0,2
    b	.L0d99546c
    # Line 401
    sw	$a1,1168($a3)
.L0d995758:
    # Line 388
    bne	$a0,$v1,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d995968
    # Line 526
    li	$a0,2
    b	.L0d99546c
    # Line 525
    sw	$a1,1200($a3)
.L0d995770:
    # Line 384
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d995784:
    # Line 530
    b	.L0d99546c
    sw	$a1,1204($a3)
.L0d99578c:
    # Line 388
    bne	$a0,$a2,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d99598c
    # Line 437
    li	$a0,2
    b	.L0d99546c
    # Line 436
    sw	$a1,1156($a3)
.L0d9957a4:
    # Line 388
    li	$a4,0x85a1
    sltu	$a5,$a0,$a4
    bnez	$a5,.L0d99585c
    sltu	$a6,$a4,$a0
    bnez	$a6,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 545
    li	$a7,0x85a2
    beq	$a1,$a7,.L0d9958b8
    # Line 549
    li	$a0,2
    # Line 545
    li	$t0,0x85a3
    beq	$a1,$t0,.L0d9958b8
    # Line 549
    li	$a0,2
    # Line 545
    li	$t1,0x85a4
    beq	$a1,$t1,.L0d9958b4
    # Line 552
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d9957f0:
    # Line 388
    bne	$a0,$t2,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 478
    bltz	$a1,.L0d99584c
    # Line 480
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d995800:
    # Line 484
    li	$a0,2
    b	.L0d99546c
    # Line 483
    sw	$a1,1220($a3)
.L0d99580c:
    # Line 388
    li	$t3,0x8130
    bne	$a0,$t3,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 388
    bltz	$a1,.L0d9959a0
    # Line 412
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 416
    li	$a0,2
    b	.L0d99546c
    # Line 415
    sw	$a1,1172($a3)
.L0d99582c:
    # Line 441
    b	.L0d99546c
    sw	$a1,1160($a3)
.L0d995834:
    # Line 561
    li	$a0,2
.L0d995838:
    b	.L0d99546c
    sw	$a1,1228($a3)
.L0d995840:
    # Line 478
    bgez	$a1,.L0d995800
    # Line 471
    sw	$a1,1184($a3)
    # Line 480
    # lw $t9, -28616($gp) # &__glSetError
.L0d99584c:
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d99585c:
    # Line 388
    li	$t8,0x85a0
    bne	$a0,$t8,.L0d99565c
    # Line 570
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 456
    li	$t9,0x85a2
    beq	$a1,$t9,.L0d9958c4
    # Line 460
    li	$a0,2
    # Line 456
    li	$ra,0x85a3
    beq	$a1,$ra,.L0d9958c4
    # Line 460
    li	$a0,2
    # Line 456
    li	$at,0x85a4
    beq	$a1,$at,.L0d9958c4
    # Line 460
    li	$a0,2
    # Line 463
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d9958a0:
    # Line 419
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d9958b4:
    # Line 549
    li	$a0,2
.L0d9958b8:
    b	.L0d99546c
    sw	$a1,1224($a3)
    # Line 460
    li	$a0,2
.L0d9958c4:
    b	.L0d99546c
    sw	$a1,1180($a3)
.L0d9958cc:
    # Line 501
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d9958e0:
    # Line 515
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d9958f4:
    # Line 426
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d995908:
    # Line 487
    jalr	$t9
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d995918:
    # Line 405
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d99592c:
    # Line 508
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d995940:
    # Line 494
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d995954:
    # Line 398
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d995968:
    # Line 522
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d99597c:
    # Line 391
    jalr	$t9
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d99598c:
    # Line 433
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.L0d9959a0:
    # Line 412
    jalr	$t9
    li	$a0,1281
    b	.L0d99548c
    ld	$ra,8($sp)
.end __glim_PixelStorei

# Function: __glim_PixelZoom
# Declared: Line 579 (Source lines: 580-604)
# Address: 0x0d9959b0 - 0x0d995a94 (Size: 228 bytes, Frame: 16)
.globl __glim_PixelZoom
.ent __glim_PixelZoom
__glim_PixelZoom:
    # Line 583
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 580
    lui	$at,0x10
    # Line 583
    lw	$a1,4112($zero)
    # Line 580
    addiu	$sp,$sp,-16
    addiu	$at,$at,-18904
    sd	$gp,0($sp)
    # Line 583
    beq	$v0,$v1,.L0d995a7c
    # Line 580
    addu	$gp,$t9,$at
    # Line 585
    mtc1	$zero,$f7
    lwc1	$f4,3676($a1)
    c.lt.s	$f7,$f12
    lwc1	$f5,3540($a1)
    # Line 603
    li	$v1,2
    # Line 591
    c.lt.s $f7,$f13
    # Line 585
    bc1f	.L0d995a04
    div.s	$f6,$f12,$f4
    # Line 589
    add.s	$f0,$f5,$f6
    trunc.w.s	$f0,$f0
    b	.L0d995a10
    mfc1	$a2,$f0
.L0d995a04:
    # Line 591
    sub.s	$f1,$f6,$f5
    trunc.w.s	$f1,$f1
    mfc1	$a2,$f1
.L0d995a10:
    bc1f .L0d995a28
    div.s	$f6,$f13,$f4
    # Line 594
    add.s	$f2,$f5,$f6
    trunc.w.s	$f2,$f2
    b	.L0d995a34
    mfc1	$a3,$f2
.L0d995a28:
    # Line 596
    sub.s	$f3,$f6,$f5
    trunc.w.s	$f3,$f3
    mfc1	$a3,$f3
.L0d995a34:
    # Line 601
    mtc1	$a2,$f6
    # Line 599
    mtc1	$a3,$f5
    # Line 601
    cvt.s.w	$f6,$f6
    # Line 599
    cvt.s.w	$f5,$f5
    # Line 601
    mul.s	$f6,$f6,$f4
    # Line 599
    mul.s	$f4,$f5,$f4
    # Line 601
    swc1	$f6,744($a1)
    # Line 602
    swc1	$f4,748($a1)
    # Line 603
    sw	$v1,4120($zero)
    lw	$v0,11812($a1)
    # Line 604
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 603
    ori	$v0,$v0,0x10
    # Line 604
    jr	$ra
    # Line 603
    sw	$v0,11812($a1)
.L0d995a70:
    # Line 604
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d995a7c:
    # Line 583
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d995a70
    ld	$ra,8($sp)
.end __glim_PixelZoom

# Function: __glim_PixelTransferf
# Declared: Line 609 (Source lines: 610-721)
# Address: 0x0d995aa0 - 0x0d995e40 (Size: 928 bytes, Frame: 16)
.globl __glim_PixelTransferf
.ent __glim_PixelTransferf
__glim_PixelTransferf:
    # Line 612
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 610
    lui	$at,0x10
    # Line 612
    lw	$a2,4112($zero)
    # Line 610
    addiu	$sp,$sp,-16
    addiu	$at,$at,-19144
    sd	$gp,0($sp)
    # Line 612
    beq	$v0,$v1,.L0d995d54
    # Line 610
    addu	$gp,$t9,$at
    # Line 616
    li	$a3,0x801d
    sltu	$v0,$a0,$a3
    bnez	$v0,.L0d995b0c
    sltu	$v1,$a3,$a0
    bnez	$v1,.L0d995b28
    li	$a3,0x80b5
    # Line 651
    swc1	$f13,684($a2)
.L0d995ae0:
    # Line 721
    li	$a1,2
    sw	$a1,4120($zero)
    lw	$a0,11812($a2)
    # Line 719
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 721
    ori	$a0,$a0,0x10
    # Line 719
    jr	$ra
    # Line 721
    sw	$a0,11812($a2)
.L0d995b00:
    # Line 719
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d995b0c:
    # Line 616
    sltiu	$a3,$a0,3353
    bnez	$a3,.L0d995b44
    sltiu	$a4,$a0,3354
    beqz	$a4,.L0d995b74
    sltiu	$t1,$a0,3357
    # Line 637
    b	.L0d995ae0
    # Line 636
    swc1	$f13,664($a2)
.L0d995b28:
    # Line 616
    sltu	$a5,$a0,$a3
    bnez	$a5,.L0d995b90
    sltu	$a6,$a3,$a0
    bnez	$a6,.L0d995bdc
    li	$a3,0x80b9
    # Line 676
    b	.L0d995ae0
    # Line 675
    swc1	$f13,716($a2)
.L0d995b44:
    # Line 616
    sltiu	$a7,$a0,3347
    bnez	$a7,.L0d995bb0
    sltiu	$t0,$a0,3348
    beqz	$t0,.L0d995c34
    mtc1	$zero,$f0
    c.lt.s	$f0,$f13
    bc1f	.L0d995d34
    lwc1	$f4,3540($a2)
    # Line 706
    add.s	$f1,$f4,$f13
    trunc.w.s	$f1,$f1
    b	.L0d995ae0
    swc1	$f1,756($a2)
.L0d995b74:
    # Line 616
    bnez	$t1,.L0d995c1c
    sltiu	$a6,$a0,3355
    sltiu	$t2,$a0,3358
    beqz	$t2,.L0d995cbc
    sltiu	$v1,$a0,3359
    # Line 643
    b	.L0d995ae0
    # Line 642
    swc1	$f13,672($a2)
.L0d995b90:
    # Line 616
    li	$a3,0x8021
    sltu	$t3,$a0,$a3
    bnez	$t3,.L0d995bf8
    sltu	$t8,$a3,$a0
    bnez	$t8,.L0d995c9c
    li	$a3,0x8023
    # Line 664
    b	.L0d995ae0
    # Line 663
    swc1	$f13,700($a2)
.L0d995bb0:
    # Line 616
    sltiu	$t9,$a0,3345
    bnez	$t9,.L0d995c54
    sltiu	$at,$a0,3346
    beqz	$at,.L0d995cd4
    li	$a3,3346
    # Line 715
    mtc1	$zero,$f2
    c.eq.s $f13,$f2
    li	$v0,1
    movt	$v0,$zero,$fcc1
    # Line 716
    b	.L0d995ae0
    # Line 715
    sb	$v0,761($a2)
.L0d995bdc:
    # Line 616
    sltu	$v1,$a0,$a3
    bnez	$v1,.L0d995c78
    sltu	$a1,$a3,$a0
    bnez	$a1,.L0d995d6c
    li	$a3,0x80bb
    # Line 688
    b	.L0d995ae0
    # Line 687
    swc1	$f13,732($a2)
.L0d995bf8:
    # Line 616
    li	$a3,0x801f
    sltu	$a4,$a0,$a3
    bnez	$a4,.L0d995d10
    li	$a4,0x801e
    sltu	$a5,$a3,$a0
    bnez	$a5,.L0d995da8
    li	$t3,0x8020
    # Line 658
    b	.L0d995ae0
    # Line 657
    swc1	$f13,692($a2)
.L0d995c1c:
    # Line 616
    bnez	$a6,.L0d995d20
    sltiu	$a7,$a0,3356
    beqz	$a7,.L0d995dcc
    li	$t9,3356
    # Line 640
    b	.L0d995ae0
    # Line 639
    swc1	$f13,668($a2)
.L0d995c34:
    # Line 616
    sltiu	$t0,$a0,3349
    bnez	$t0,.L0d995d44
    li	$a6,3348
    sltiu	$t1,$a0,3350
    beqz	$t1,.L0d995ddc
    li	$at,3352
    # Line 634
    b	.L0d995ae0
    # Line 633
    swc1	$f13,660($a2)
.L0d995c54:
    # Line 616
    li	$t2,3344
    bne	$a0,$t2,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 712
    mtc1	$zero,$f3
    c.eq.s $f13,$f3
    li	$t3,1
    movt	$t3,$zero,$fcc2
    b	.L0d995ae0
    sb	$t3,760($a2)
.L0d995c78:
    # Line 616
    li	$a3,0x80b7
    sltu	$t8,$a0,$a3
    bnez	$t8,.L0d995d88
    li	$t1,0x80b6
    sltu	$t9,$a3,$a0
    bnez	$t9,.L0d995e10
    li	$v1,0x80b8
    # Line 682
    b	.L0d995ae0
    # Line 681
    swc1	$f13,724($a2)
.L0d995c9c:
    # Line 616
    sltu	$at,$a0,$a3
    bnez	$at,.L0d995d98
    li	$t2,0x8022
    sltu	$v0,$a3,$a0
    bnez	$v0,.L0d995e20
    li	$a1,0x80b4
    # Line 670
    b	.L0d995ae0
    # Line 669
    swc1	$f13,708($a2)
.L0d995cbc:
    # Line 616
    bnez	$v1,.L0d995db8
    sltiu	$a1,$a0,3360
    beqz	$a1,.L0d995e30
    li	$a3,0x801c
    # Line 646
    b	.L0d995ae0
    # Line 645
    swc1	$f13,676($a2)
.L0d995cd4:
    # Line 616
    bne	$a0,$a3,.L0d995cf8
    mtc1	$zero,$f4
    c.lt.s $f4,$f13
    bc1f .L0d995dec
    lwc1	$f4,3540($a2)
    # Line 698
    add.s	$f5,$f4,$f13
    trunc.w.s	$f5,$f5
    b	.L0d995ae0
    swc1	$f5,752($a2)
.L0d995cf8:
    # Line 718
    # lw $t9, -28616($gp) # &__glSetError
.L0d995cfc:
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0d995b00
    ld	$ra,8($sp)
.L0d995d10:
    # Line 616
    bne	$a0,$a4,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 655
    b	.L0d995ae0
    # Line 654
    swc1	$f13,688($a2)
.L0d995d20:
    # Line 616
    li	$a5,3354
    bne	$a0,$a5,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 625
    b	.L0d995ae0
    # Line 624
    swc1	$f13,648($a2)
.L0d995d34:
    # Line 708
    sub.s	$f6,$f13,$f4
    trunc.w.s	$f6,$f6
    b	.L0d995ae0
    swc1	$f6,756($a2)
.L0d995d44:
    # Line 616
    bne	$a0,$a6,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 619
    b	.L0d995ae0
    # Line 618
    swc1	$f13,640($a2)
.L0d995d54:
    # Line 612
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d995b00
    ld	$ra,8($sp)
.L0d995d6c:
    # Line 616
    sltu	$a7,$a0,$a3
    bnez	$a7,.L0d995dfc
    sltu	$t0,$a3,$a0
    bnez	$t0,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 694
    b	.L0d995ae0
    # Line 693
    swc1	$f13,740($a2)
.L0d995d88:
    # Line 616
    bne	$a0,$t1,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 679
    b	.L0d995ae0
    # Line 678
    swc1	$f13,720($a2)
.L0d995d98:
    # Line 616
    bne	$a0,$t2,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 667
    b	.L0d995ae0
    # Line 666
    swc1	$f13,704($a2)
.L0d995da8:
    # Line 616
    bne	$a0,$t3,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 661
    b	.L0d995ae0
    # Line 660
    swc1	$f13,696($a2)
.L0d995db8:
    # Line 616
    li	$t8,3358
    bne	$a0,$t8,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 631
    b	.L0d995ae0
    # Line 630
    swc1	$f13,656($a2)
.L0d995dcc:
    # Line 616
    bne	$a0,$t9,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 628
    b	.L0d995ae0
    # Line 627
    swc1	$f13,652($a2)
.L0d995ddc:
    # Line 616
    bne	$a0,$at,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 622
    b	.L0d995ae0
    # Line 621
    swc1	$f13,644($a2)
.L0d995dec:
    # Line 700
    sub.s	$f7,$f13,$f4
    trunc.w.s	$f7,$f7
    b	.L0d995ae0
    swc1	$f7,752($a2)
.L0d995dfc:
    # Line 616
    li	$v0,0x80ba
    bne	$a0,$v0,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 691
    b	.L0d995ae0
    # Line 690
    swc1	$f13,736($a2)
.L0d995e10:
    # Line 616
    bne	$a0,$v1,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 685
    b	.L0d995ae0
    # Line 684
    swc1	$f13,728($a2)
.L0d995e20:
    # Line 616
    bne	$a0,$a1,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 673
    b	.L0d995ae0
    # Line 672
    swc1	$f13,712($a2)
.L0d995e30:
    # Line 616
    bne	$a0,$a3,.L0d995cfc
    # Line 718
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 649
    b	.L0d995ae0
    # Line 648
    swc1	$f13,680($a2)
.end __glim_PixelTransferf

# Function: __glim_PixelTransferi
# Declared: Line 724 (Source lines: 725-727)
# Address: 0x0d995e40 - 0x0d995e78 (Size: 56 bytes, Frame: 16)
.globl __glim_PixelTransferi
.ent __glim_PixelTransferi
__glim_PixelTransferi:
    # Line 725
    lui	$at,0x10
    addiu	$sp,$sp,-16
    addiu	$at,$at,-20072
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 726
    mtc1	$a1,$f13
    # lw $t9, -30608($gp) # &__glim_PixelTransferf
    # Line 725
    sd	$ra,0($sp)
    # Line 726
    bal __glim_PixelTransferf
    cvt.s.w	$f13,$f13
    ld	$ra,0($sp)
    # Line 727
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_PixelTransferi

# Function: __glim_PixelMapfv
# Declared: Line 734 (Source lines: 736-826)
# Address: 0x0d995e80 - 0x0d996260 (Size: 992 bytes, Frame: 192)
.globl __glim_PixelMapfv
.ent __glim_PixelMapfv
__glim_PixelMapfv:
    # Line 736
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    # Line 741
    lw	$s1,4112($zero)
    sd	$ra,56($sp)
    lw	$at,4120($zero)
    # Line 736
    sd	$s2,32($sp)
    # Line 741
    li	$v0,1
    # Line 736
    lui	$v1,0x10
    move	$s2,$a1
    sd	$s0,8($sp)
    addiu	$v1,$v1,-20136
    sd	$gp,48($sp)
    # Line 741
    beq	$at,$v0,.L0d99624c
    # Line 736
    addu	$gp,$t9,$v1
    # Line 746
    blez	$a1,.L0d9961ec
    # Line 751
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 746
    lw	$a1,3772($s1)
    slt	$a1,$a1,$s2
    bnez	$a1,.L0d9961ec
    # Line 751
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 752
    la	$a1,.rodata
    addiu	$a3,$a0,-3184
    sltiu	$a4,$a3,10
    addiu	$a1,$a1,1708
    sll	$a3,$a3,0x2
    beqz	$a4,.L0d99621c
    addu	$a1,$a1,$a3
    lw	$a3,0($a1)
    jr	$a3
    # Line 792
    addiu	$a6,$s2,-1
.L0d995ef8:
    # Line 758
    addiu	$a4,$s2,-1
    and	$a5,$a4,$s2
    beqz	$a5,.L0d996098
    # Line 763
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d996014
    ld	$ra,56($sp)
.L0d995f18:
    # Line 792
    and	$a6,$s2,$a6
    beqz	$a6,.L0d995f3c
    # Line 800
    sll	$s0,$a0,0x2
    # Line 797
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d996014
    ld	$ra,56($sp)
.L0d995f38:
    # Line 800
    sll	$s0,$a0,0x2
.L0d995f3c:
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    lui	$t8,0xffff
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    beqz	$a1,.L0d995f6c
    sd	$a2,16($sp)
    # Line 805
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 806
    sw	$zero,28360($s0)
.L0d995f6c:
    # Line 809
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,24($sp)
    beqz	$v0,.L0d9961fc
    sw	$v0,28360($s0)
    # Line 816
    ld	$a4,24($sp)
    addiu	$t8,$s2,-1
    # Line 815
    sw	$s2,28352($s0)
    # Line 816
    bltz	$t8,.L0d995ff4
    addiu	$a4,$a4,-4
    ld	$a5,16($sp)
    andi	$a7,$s2,0x1
    mtc1	$zero,$f5
    addiu	$a6,$a5,-4
    beqz	$a7,.L0d995fe8
    addu	$a5,$a4,$a5
    # Line 817
    lwc1	$f4,0($a5)
    c.lt.s	$f4,$f5
    # Line 820
    lw	$t0,28360($s0)
    # Line 816
    addiu	$a5,$a5,-4
    # Line 817
    bc1f	.L0d995fd4
    # Line 820
    addu	$t0,$t0,$a4
    # Line 817
    b	.L0d995fe0
    mtc1	$zero,$f4
.L0d995fd4:
    lwc1	$f0,3544($s1)
    c.lt.s $f0,$f4
    movt.s	$f4,$f0,$fcc1
.L0d995fe0:
    # Line 816
    addiu	$a4,$a4,-4
    # Line 820
    swc1	$f4,0($t0)
.L0d995fe8:
    sra	$t1,$s2,0x1
    bnezl	$t1,.L0d996050
    # Line 817
    lwc1	$f4,0($a5)
.L0d995ff4:
    ld	$s0,8($sp)
    # Line 826
    ld	$gp,48($sp)
    ld	$ra,56($sp)
    # Line 822
    sb	$zero,30644($s1)
    # Line 826
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d996014:
    ld	$s0,8($sp)
.L0d996018:
    ld	$gp,48($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
    nop
.L0d996030:
    # Line 817
    lwc1	$f1,3544($s1)
    c.lt.s $f1,$f4
    movt.s	$f4,$f1,$fcc2
.L0d99603c:
    # Line 820
    addu	$t2,$t2,$a4
    # Line 816
    addiu	$a4,$a4,-4
    beq	$a5,$a6,.L0d995ff4
    # Line 820
    swc1	$f4,0($t2)
    # Line 817
    lwc1	$f4,0($a5)
.L0d996050:
    c.lt.s $f4,$f5
    # Line 820
    lw	$t3,28360($s0)
    addu	$t3,$t3,$a4
    # Line 817
    bc1f .L0d99606c
    # Line 816
    addiu	$a4,$a4,-4
    # Line 817
    b	.L0d996078
    mtc1	$zero,$f4
.L0d99606c:
    lwc1	$f2,3544($s1)
    c.lt.s $f2,$f4
    movt.s	$f4,$f2,$fcc4
.L0d996078:
    # Line 820
    swc1	$f4,0($t3)
    # Line 817
    lwc1	$f4,-4($a5)
    c.lt.s $f4,$f5
    # Line 816
    addiu	$a5,$a5,-8
    # Line 817
    bc1f .L0d996030
    # Line 820
    lw	$t2,28360($s0)
    # Line 817
    b	.L0d99603c
    mtc1	$zero,$f4
.L0d996098:
    # Line 764
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    lui	$t8,0xffff
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    sd	$a4,0($sp)
    beqz	$a1,.L0d9960d0
    sd	$a2,16($sp)
    # Line 767
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 768
    sw	$zero,28360($s0)
.L0d9960d0:
    # Line 770
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,24($sp)
    ld	$ra,56($sp)
    # Line 777
    mtc1	$zero,$f5
    andi	$a7,$s2,0x1
    # Line 770
    beqz	$v0,.L0d996230
    sw	$v0,28360($s0)
    # Line 777
    ld	$a4,24($sp)
    ld	$t8,0($sp)
    # Line 776
    sw	$s2,28352($s0)
    # Line 778
    lw	$a0,28360($s0)
    # Line 777
    bltz	$t8,.L0d996014
    addiu	$a4,$a4,-4
    sra	$a1,$s2,0x1
    ld	$a5,16($sp)
    # Line 778
    addu	$a0,$a4,$a0
    # Line 777
    addiu	$a6,$a5,-4
    beqz	$a7,.L0d99615c
    addu	$a5,$a4,$a5
    # Line 778
    lwc1	$f4,0($a5)
    c.lt.s $f5,$f4
    # Line 777
    addiu	$a5,$a5,-4
    addiu	$a4,$a4,-4
    # Line 778
    bc1f .L0d996150
    lwc1	$f6,3540($s1)
    # Line 780
    add.s	$f3,$f6,$f4
    trunc.w.s	$f3,$f3
    b	.L0d99615c
    swc1	$f3,0($a0)
.L0d996150:
    # Line 783
    sub.s	$f7,$f4,$f6
    trunc.w.s	$f7,$f7
    swc1	$f7,0($a0)
.L0d99615c:
    bnezl	$a1,.L0d996188
    # Line 778
    lwc1	$f4,0($a5)
.L0d996164:
    b	.L0d996018
    ld	$s0,8($sp)
    nop
.L0d996170:
    # Line 783
    sub.s	$f8,$f4,$f6
    trunc.w.s	$f8,$f8
    swc1	$f8,0($a0)
.L0d99617c:
    # Line 777
    beq	$a5,$a6,.L0d996164
    addiu	$a4,$a4,-4
    # Line 778
    lwc1	$f4,0($a5)
.L0d996188:
    c.lt.s $f5,$f4
    lw	$a0,28360($s0)
    lwc1	$f6,3540($s1)
    bc1f .L0d9961ac
    addu	$a0,$a4,$a0
    # Line 780
    add.s	$f9,$f6,$f4
    trunc.w.s	$f9,$f9
    b	.L0d9961b8
    swc1	$f9,0($a0)
.L0d9961ac:
    # Line 783
    sub.s	$f10,$f4,$f6
    trunc.w.s	$f10,$f10
    swc1	$f10,0($a0)
.L0d9961b8:
    # Line 778
    lwc1	$f4,-4($a5)
    c.lt.s	$f5,$f4
    lw	$a0,28360($s0)
    # Line 777
    addiu	$a4,$a4,-4
    # Line 778
    lwc1	$f6,3540($s1)
    # Line 777
    addiu	$a5,$a5,-8
    # Line 778
    bc1f	.L0d996170
    addu	$a0,$a4,$a0
    # Line 780
    add.s	$f11,$f6,$f4
    trunc.w.s	$f11,$f11
    b	.L0d99617c
    swc1	$f11,0($a0)
    # Line 751
    # lw $t9, -28616($gp) # &__glSetError
.L0d9961ec:
    jal	__glSetError
    li	$a0,1281
    b	.L0d996014
    ld	$ra,56($sp)
.L0d9961fc:
    # Line 826
    ld	$gp,48($sp)
    # Line 812
    sw	$zero,28352($s0)
    ld	$ra,56($sp)
    # Line 826
    ld	$s0,8($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d99621c:
    # Line 825
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d996014
    ld	$ra,56($sp)
.L0d996230:
    # Line 826
    ld	$gp,48($sp)
    # Line 773
    sw	$zero,28352($s0)
    # Line 826
    ld	$s0,8($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d99624c:
    # Line 741
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d996014
    ld	$ra,56($sp)
.end __glim_PixelMapfv

# Function: __glim_PixelMapuiv
# Declared: Line 830 (Source lines: 832-911)
# Address: 0x0d996260 - 0x0d99662c (Size: 972 bytes, Frame: 192)
.globl __glim_PixelMapuiv
.ent __glim_PixelMapuiv
__glim_PixelMapuiv:
    # Line 832
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    # Line 836
    lw	$s1,4112($zero)
    sd	$ra,56($sp)
    lw	$at,4120($zero)
    # Line 832
    sd	$s2,32($sp)
    # Line 836
    li	$v0,1
    # Line 832
    lui	$v1,0x10
    move	$s2,$a1
    sd	$s0,24($sp)
    addiu	$v1,$v1,-21128
    sd	$gp,48($sp)
    # Line 836
    beq	$at,$v0,.L0d996618
    # Line 832
    addu	$gp,$t9,$v1
    # Line 841
    blez	$a1,.L0d9965bc
    # Line 846
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 841
    lw	$a1,3772($s1)
    slt	$a1,$a1,$s2
    bnez	$a1,.L0d9965bc
    # Line 846
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 847
    la	$a1,.rodata
    addiu	$a3,$a0,-3184
    sltiu	$a4,$a3,10
    addiu	$a1,$a1,1748
    sll	$a3,$a3,0x2
    beqz	$a4,.L0d9965e8
    addu	$a1,$a1,$a3
    lw	$a3,0($a1)
    jr	$a3
    # Line 880
    addiu	$a1,$s2,-1
.L0d9962d8:
    # Line 853
    addiu	$a4,$s2,-1
    and	$a5,$a4,$s2
    # Line 859
    lui	$t8,0xffff
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    # Line 853
    beqz	$a5,.L0d9964d8
    # Line 859
    sll	$s0,$s0,0x2
    # Line 858
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9964a4
    ld	$ra,56($sp)
.L0d996308:
    # Line 888
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    lui	$t8,0xffff
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    beqz	$a1,.L0d99633c
    sd	$a2,8($sp)
    # Line 893
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 894
    sw	$zero,28360($s0)
.L0d99633c:
    # Line 896
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,16($sp)
    ld	$ra,56($sp)
    beqz	$v0,.L0d9965cc
    sw	$v0,28360($s0)
    # Line 903
    ld	$a5,16($sp)
    addiu	$t8,$s2,-1
    addiu	$a5,$a5,-4
    # Line 902
    sw	$s2,28352($s0)
    # Line 903
    bltz	$t8,.L0d996488
    move	$a1,$a5
    ld	$a2,8($sp)
    andi	$a0,$s2,0x3
    addiu	$a4,$a2,-4
    beqz	$a0,.L0d9963c0
    addu	$a2,$a5,$a2
.L0d996388:
    # Line 904
    lw	$a5,0($a2)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f0
    cvt.s.l	$f0,$f0
    lwc1	$f1,3568($s1)
    lw	$a3,28360($s0)
    addiu	$a0,$a0,-1
    # Line 903
    addiu	$a2,$a2,-4
    # Line 904
    mul.s	$f0,$f0,$f1
    addu	$a3,$a3,$a1
    # Line 903
    addiu	$a1,$a1,-4
    bnez	$a0,.L0d996388
    # Line 904
    swc1	$f0,0($a3)
.L0d9963c0:
    sra	$a6,$s2,0x2
    beqz	$a6,.L0d996488
    nop
    nop
.L0d9963d0:
    lw	$a0,0($a2)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f4
    cvt.s.l	$f4,$f4
    lwc1	$f5,3568($s1)
    lw	$v1,28360($s0)
    mul.s	$f4,$f4,$f5
    addu	$v1,$v1,$a1
    swc1	$f4,0($v1)
    lw	$v0,-4($a2)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f3
    cvt.s.l	$f3,$f3
    lwc1	$f4,3568($s1)
    lw	$t9,28360($s0)
    # Line 903
    addiu	$at,$a1,-4
    # Line 904
    mul.s	$f3,$f3,$f4
    addu	$t9,$t9,$at
    swc1	$f3,0($t9)
    lw	$t8,-8($a2)
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f2
    cvt.s.l	$f2,$f2
    lwc1	$f3,3568($s1)
    lw	$t2,28360($s0)
    # Line 903
    addiu	$t3,$a1,-8
    # Line 904
    mul.s	$f2,$f2,$f3
    addu	$t2,$t2,$t3
    swc1	$f2,0($t2)
    lw	$t1,-12($a2)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f1
    cvt.s.l	$f1,$f1
    lwc1	$f2,3568($s1)
    lw	$a7,28360($s0)
    # Line 903
    addiu	$a2,$a2,-16
    addiu	$t0,$a1,-12
    # Line 904
    mul.s	$f1,$f1,$f2
    addu	$a7,$a7,$t0
    # Line 903
    addiu	$a1,$a1,-16
    bne	$a2,$a4,.L0d9963d0
    # Line 904
    swc1	$f1,0($a7)
.L0d996488:
    ld	$s0,24($sp)
    # Line 911
    ld	$gp,48($sp)
    # Line 907
    sb	$zero,30644($s1)
    # Line 911
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9964a4:
    ld	$s0,24($sp)
.L0d9964a8:
    ld	$gp,48($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9964bc:
    # Line 880
    and	$a1,$s2,$a1
    beqz	$a1,.L0d996308
    # Line 885
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d9964a4
    ld	$ra,56($sp)
.L0d9964d8:
    # Line 859
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    sd	$a4,0($sp)
    beqz	$a1,.L0d996500
    sd	$a2,8($sp)
    # Line 862
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 863
    sw	$zero,28360($s0)
.L0d996500:
    # Line 865
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,16($sp)
    ld	$ra,56($sp)
    andi	$a3,$s2,0x1
    beqz	$v0,.L0d9965fc
    sw	$v0,28360($s0)
    # Line 872
    ld	$a5,16($sp)
    ld	$t8,0($sp)
    addiu	$a5,$a5,-4
    # Line 871
    sw	$s2,28352($s0)
    # Line 872
    bltz	$t8,.L0d9964a4
    move	$a1,$a5
    ld	$a2,8($sp)
    sra	$t0,$s2,0x1
    addiu	$a4,$a2,-4
    beqz	$a3,.L0d99656c
    addu	$a2,$a5,$a2
    # Line 873
    lw	$a7,28360($s0)
    # Line 872
    ld	$a1,16($sp)
    # Line 873
    lw	$a6,0($a2)
    addu	$a7,$a7,$a5
    # Line 872
    addiu	$a2,$a2,-4
    addiu	$a1,$a1,-8
    # Line 873
    sw	$a6,0($a7)
.L0d99656c:
    beqz	$t0,.L0d9965b0
    nop
    nop
    nop
    nop
.L0d996580:
    lw	$t9,28360($s0)
    addu	$t9,$t9,$a1
    lw	$t8,0($a2)
    sw	$t8,0($t9)
    lw	$t2,28360($s0)
    # Line 872
    addiu	$a2,$a2,-8
    addiu	$t3,$a1,-4
    # Line 873
    addu	$t2,$t2,$t3
    lw	$t1,4($a2)
    # Line 872
    addiu	$a1,$a1,-8
    bne	$a2,$a4,.L0d996580
    # Line 873
    sw	$t1,0($t2)
.L0d9965b0:
    b	.L0d9964a8
    ld	$s0,24($sp)
    # Line 846
    # lw $t9, -28616($gp) # &__glSetError
.L0d9965bc:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9964a4
    ld	$ra,56($sp)
.L0d9965cc:
    # Line 911
    ld	$gp,48($sp)
    # Line 899
    sw	$zero,28352($s0)
    # Line 911
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9965e8:
    # Line 910
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9964a4
    ld	$ra,56($sp)
.L0d9965fc:
    # Line 911
    ld	$gp,48($sp)
    # Line 868
    sw	$zero,28352($s0)
    # Line 911
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d996618:
    # Line 836
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9964a4
    ld	$ra,56($sp)
.end __glim_PixelMapuiv

# Function: __glim_PixelMapusv
# Declared: Line 915 (Source lines: 917-996)
# Address: 0x0d996630 - 0x0d9969c8 (Size: 920 bytes, Frame: 192)
.globl __glim_PixelMapusv
.ent __glim_PixelMapusv
__glim_PixelMapusv:
    # Line 917
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    # Line 921
    lw	$s1,4112($zero)
    sd	$ra,56($sp)
    lw	$at,4120($zero)
    # Line 917
    sd	$s2,32($sp)
    # Line 921
    li	$v0,1
    # Line 917
    lui	$v1,0x10
    move	$s2,$a1
    sd	$s0,24($sp)
    addiu	$v1,$v1,-22104
    sd	$gp,48($sp)
    # Line 921
    beq	$at,$v0,.L0d9969b4
    # Line 917
    addu	$gp,$t9,$v1
    # Line 926
    blez	$a1,.L0d99696c
    # Line 931
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 926
    lw	$a1,3772($s1)
    slt	$a1,$a1,$s2
    bnez	$a1,.L0d99696c
    # Line 931
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 932
    la	$a1,.rodata
    addiu	$a3,$a0,-3184
    sltiu	$a4,$a3,10
    addiu	$a1,$a1,1788
    sll	$a3,$a3,0x2
    beqz	$a4,.L0d996998
    addu	$a1,$a1,$a3
    lw	$a3,0($a1)
    jr	$a3
    # Line 965
    addiu	$a5,$s2,-1
.L0d9966a8:
    # Line 938
    addiu	$a4,$s2,-1
    and	$a5,$a4,$s2
    # Line 944
    lui	$t8,0xffff
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    # Line 938
    beqz	$a5,.L0d99688c
    # Line 944
    sll	$s0,$s0,0x2
    # Line 943
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d996854
    ld	$ra,56($sp)
.L0d9966d8:
    # Line 973
    sll	$s0,$a0,0x2
.L0d9966dc:
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x2
    lui	$t8,0xffff
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    beqz	$a1,.L0d99670c
    sd	$a2,16($sp)
    # Line 978
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 979
    sw	$zero,28360($s0)
.L0d99670c:
    # Line 981
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,0($sp)
    ld	$ra,56($sp)
    beqz	$v0,.L0d99697c
    sw	$v0,28360($s0)
    # Line 988
    ld	$a1,0($sp)
    addiu	$a5,$s2,-1
    # Line 987
    sw	$s2,28352($s0)
    # Line 988
    bltz	$a5,.L0d996838
    addiu	$a1,$a1,-4
    ld	$a2,16($sp)
    andi	$a4,$s2,0x3
    li	$a0,-4
    addu	$a3,$a5,$a5
    beqz	$a4,.L0d996788
    addu	$a2,$a2,$a3
.L0d996758:
    # Line 989
    lhu	$a6,0($a2)
    mtc1	$a6,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3560($s1)
    lw	$a5,28360($s0)
    addiu	$a4,$a4,-1
    # Line 988
    addiu	$a2,$a2,-2
    # Line 989
    mul.s	$f0,$f0,$f1
    addu	$a5,$a5,$a1
    # Line 988
    addiu	$a1,$a1,-4
    bnez	$a4,.L0d996758
    # Line 989
    swc1	$f0,0($a5)
.L0d996788:
    sra	$a7,$s2,0x2
    beqz	$a7,.L0d996838
    nop
    nop
    nop
    nop
.L0d9967a0:
    lhu	$a4,0($a2)
    mtc1	$a4,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3560($s1)
    lw	$a3,28360($s0)
    mul.s	$f4,$f4,$f5
    addu	$a3,$a3,$a1
    swc1	$f4,0($a3)
    lhu	$v1,-2($a2)
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,3560($s1)
    lw	$at,28360($s0)
    # Line 988
    addiu	$v0,$a1,-4
    # Line 989
    mul.s	$f3,$f3,$f4
    addu	$at,$at,$v0
    swc1	$f3,0($at)
    lhu	$t9,-4($a2)
    mtc1	$t9,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,3560($s1)
    lw	$t3,28360($s0)
    # Line 988
    addiu	$t8,$a1,-8
    # Line 989
    mul.s	$f2,$f2,$f3
    addu	$t3,$t3,$t8
    swc1	$f2,0($t3)
    lhu	$t2,-6($a2)
    mtc1	$t2,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3560($s1)
    lw	$t0,28360($s0)
    # Line 988
    addiu	$t1,$a1,-12
    addiu	$a1,$a1,-16
    # Line 989
    mul.s	$f1,$f1,$f2
    addu	$t0,$t0,$t1
    # Line 988
    addiu	$a2,$a2,-8
    bne	$a0,$a1,.L0d9967a0
    # Line 989
    swc1	$f1,0($t0)
.L0d996838:
    ld	$s0,24($sp)
    # Line 996
    ld	$gp,48($sp)
    # Line 992
    sb	$zero,30644($s1)
    # Line 996
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d996854:
    ld	$s0,24($sp)
.L0d996858:
    ld	$gp,48($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d99686c:
    # Line 965
    and	$a5,$s2,$a5
    beqz	$a5,.L0d9966dc
    # Line 973
    sll	$s0,$a0,0x2
    # Line 970
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d996854
    ld	$ra,56($sp)
.L0d99688c:
    # Line 944
    addu	$s0,$s1,$s0
    addu	$s0,$s0,$t8
    lw	$a1,28360($s0)
    sd	$a4,8($sp)
    beqz	$a1,.L0d9968b4
    sd	$a2,16($sp)
    # Line 947
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 948
    sw	$zero,28360($s0)
.L0d9968b4:
    # Line 950
    lw	$t9,0($s1)
    sll	$a1,$s2,0x2
    move	$a0,$s1
    jalr	$t9
    sd	$a1,0($sp)
    ld	$ra,56($sp)
    andi	$a4,$s2,0x1
    # Line 957
    li	$a0,-4
    # Line 950
    beqz	$v0,.L0d9969ac
    sw	$v0,28360($s0)
    # Line 957
    ld	$a1,0($sp)
    ld	$t8,8($sp)
    # Line 956
    sw	$s2,28352($s0)
    # Line 957
    bltz	$t8,.L0d996854
    addiu	$a1,$a1,-4
    ld	$a3,8($sp)
    ld	$a2,16($sp)
    sra	$a6,$s2,0x1
    addu	$a3,$a3,$a3
    beqz	$a4,.L0d996924
    addu	$a2,$a2,$a3
    # Line 958
    lw	$a5,28360($s0)
    addu	$a5,$a5,$a1
    # Line 957
    ld	$a1,0($sp)
    # Line 958
    lhu	$a4,0($a2)
    # Line 957
    addiu	$a2,$a2,-2
    # Line 958
    sw	$a4,0($a5)
    # Line 957
    addiu	$a1,$a1,-8
.L0d996924:
    beqz	$a6,.L0d996960
    nop
    nop
.L0d996930:
    # Line 958
    lw	$t3,28360($s0)
    addu	$t3,$t3,$a1
    lhu	$t2,0($a2)
    sw	$t2,0($t3)
    lw	$t0,28360($s0)
    # Line 957
    addiu	$t1,$a1,-4
    addiu	$a1,$a1,-8
    # Line 958
    addu	$t0,$t0,$t1
    lhu	$a7,-2($a2)
    # Line 957
    addiu	$a2,$a2,-4
    bne	$a0,$a1,.L0d996930
    # Line 958
    sw	$a7,0($t0)
.L0d996960:
    b	.L0d996858
    ld	$s0,24($sp)
    # Line 931
    # lw $t9, -28616($gp) # &__glSetError
.L0d99696c:
    jal	__glSetError
    li	$a0,1281
    b	.L0d996854
    ld	$ra,56($sp)
.L0d99697c:
    # Line 996
    ld	$gp,48($sp)
    # Line 984
    sw	$zero,28352($s0)
    # Line 996
    ld	$s0,24($sp)
    ld	$s1,40($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d996998:
    # Line 995
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d996854
    ld	$ra,56($sp)
.L0d9969ac:
    # Line 953
    b	.L0d996854
    sw	$zero,28352($s0)
.L0d9969b4:
    # Line 921
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d996854
    ld	$ra,56($sp)
.end __glim_PixelMapusv

# Function: __glim_ReadBuffer
# Declared: Line 1003 (Source lines: 1004-1043)
# Address: 0x0d9969d0 - 0x0d996ae8 (Size: 280 bytes, Frame: 16)
.globl __glim_ReadBuffer
.ent __glim_ReadBuffer
__glim_ReadBuffer:
    # Line 1043
    li	$t0,2
    # Line 1004
    addiu	$sp,$sp,-16
    # Line 1006
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 1004
    lui	$v1,0x10
    # Line 1020
    li	$a6,1029
    sd	$ra,8($sp)
    # Line 1004
    addiu	$v1,$v1,-23032
    sd	$gp,0($sp)
    # Line 1006
    beq	$at,$v0,.L0d996ac4
    # Line 1004
    addu	$gp,$t9,$v1
    # Line 1008
    addiu	$a4,$a0,-1024
    la	$a3,.rodata
    sltiu	$a5,$a4,13
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,1828
    beqz	$a5,.L0d996a2c
    addu	$a3,$a3,$a4
    # Line 1012
    li	$t1,1028
    # Line 1008
    lw	$a4,0($a3)
    jr	$a4
    # Line 1036
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996a2c:
    # Line 1039
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d996a74
    ld	$ra,8($sp)
.L0d996a40:
    # Line 1016
    lbu	$a5,3222($a2)
    beqz	$a5,.L0d996ad8
    # Line 1017
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1020
    sw	$a6,1236($a2)
.L0d996a50:
    # Line 1042
    sw	$a0,1240($a2)
    # Line 1043
    sw	$t0,4120($zero)
    ld	$ra,8($sp)
    lw	$a7,11812($a2)
    # Line 1040
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 1043
    ori	$a7,$a7,0x10
    # Line 1040
    jr	$ra
    # Line 1043
    sw	$a7,11812($a2)
.L0d996a74:
    # Line 1040
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d996a80:
    # Line 1013
    b	.L0d996a50
    # Line 1012
    sw	$t1,1236($a2)
.L0d996a88:
    # Line 1026
    lw	$t3,3296($a2)
    addiu	$t2,$a0,-1033
    slt	$t2,$t2,$t3
    beqz	$t2,.L0d996ab4
    # Line 1028
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1032
    b	.L0d996a50
    # Line 1031
    sw	$a0,1236($a2)
.L0d996aa4:
    # Line 1036
    jal	__glSetError
    li	$a0,1282
    b	.L0d996a74
    ld	$ra,8($sp)
.L0d996ab4:
    # Line 1028
    jalr	$t9
    li	$a0,1282
    b	.L0d996a74
    ld	$ra,8($sp)
.L0d996ac4:
    # Line 1006
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d996a74
    ld	$ra,8($sp)
.L0d996ad8:
    # Line 1017
    jalr	$t9
    li	$a0,1282
    b	.L0d996a74
    ld	$ra,8($sp)
.end __glim_ReadBuffer

# Function: __glCheckDrawPixelArgs
# Declared: Line 1046 (Source lines: 1048-1156)
# Address: 0x0d996af0 - 0x0d996fa8 (Size: 1208 bytes, Frame: 32)
.globl __glCheckDrawPixelArgs
.ent __glCheckDrawPixelArgs
__glCheckDrawPixelArgs:
    # Line 1048
    addiu	$sp,$sp,-32
    lui	$at,0x10
    sd	$ra,16($sp)
    addiu	$at,$at,-23320
    sd	$gp,8($sp)
    # Line 1051
    bltz	$a1,.L0d996ee8
    # Line 1048
    addu	$gp,$t9,$at
    # Line 1051
    bltz	$a2,.L0d996eec
    # Line 1052
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1055
    sltiu	$v0,$a3,6407
    bnez	$v0,.L0d996b64
    sltiu	$t0,$a3,6403
    sltiu	$v1,$a3,6408
    bnez	$v1,.L0d996ba8
    li	$v0,0x8000
    sltu	$a2,$a3,$v0
    bnez	$a2,.L0d996dfc
    sltiu	$t9,$a3,6409
    sltu	$a5,$v0,$a3
    beqz	$a5,.L0d996ba8
    li	$v0,0x80e1
    sltu	$a6,$a3,$v0
    bnez	$a6,.L0d996f00
    li	$t2,0x80e0
    sltu	$a7,$v0,$a3
    beqz	$a7,.L0d996ba8
    nop
    b	.L0d996d1c
    # Line 1084
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996b64:
    # Line 1055
    bnez	$t0,.L0d996c80
    sltiu	$ra,$a3,6401
    sltiu	$t1,$a3,6404
    bnez	$t1,.L0d996ba8
    sltiu	$t2,$a3,6405
    bnez	$t2,.L0d996d14
    li	$t3,6404
    sltiu	$t3,$a3,6406
    bnez	$t3,.L0d996ba8
    li	$t8,6406
    beq	$a3,$t8,.L0d996ba8
    nop
    b	.L0d996d1c
    # Line 1084
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996b9c:
    # Line 1055
    li	$t9,6408
    bne	$a3,$t9,.L0d996d1c
    # Line 1084
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996ba8:
    # Line 1075
    lbu	$ra,3221($a0)
    beqz	$ra,.L0d996bdc
    # Line 1088
    li	$v0,0x8034
    # Line 1077
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1078
    move	$v0,$zero
    # Line 1085
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d996bd4:
    # Line 1055
    bne	$a3,$at,.L0d996d18
    # Line 1088
    li	$v0,0x8034
.L0d996bdc:
    sltu	$v1,$a4,$v0
    beqz	$v1,.L0d996ccc
    sltiu	$a2,$a4,5125
    bnez	$a2,.L0d996dcc
    sltiu	$a5,$a4,5126
    bnez	$a5,.L0d996c40
    li	$v0,0x8032
    sltu	$a6,$a4,$v0
    beqz	$a6,.L0d996d9c
    sltiu	$a7,$a4,6656
    bnez	$a7,.L0d996f68
    sltiu	$t0,$a4,6657
    beqz	$t0,.L0d996e8c
    # Line 1091
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1092
    b	.L0d996c74
    move	$v0,$zero
.L0d996c28:
    # Line 1088
    sltiu	$t1,$a4,5121
    bnez	$t1,.L0d996e88
    li	$t0,5120
    sltiu	$t2,$a4,5122
    beqz	$t2,.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996c40:
    # Line 1138
    lw	$v0,1224($a0)
    li	$t3,0x85a2
    beq	$v0,$t3,.L0d996c60
    li	$t8,0x85a3
    beq	$v0,$t8,.L0d996e48
    li	$t9,0x85a4
    beq	$v0,$t9,.L0d996e48
    sd	$a1,0($sp)
.L0d996c60:
    ld	$ra,16($sp)
.L0d996c64:
    # Line 1156
    li	$v0,1
    # Line 1085
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d996c74:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d996c80:
    # Line 1055
    bnez	$ra,.L0d996cb8
    li	$v1,6400
    sltiu	$at,$a3,6402
    beqz	$at,.L0d996bd4
    li	$at,6402
    lbu	$v0,3226($a0)
    bnez	$v0,.L0d996cc4
    # Line 1088
    li	$v0,0x8034
    # Line 1058
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1059
    b	.L0d996c74
    move	$v0,$zero
.L0d996cb8:
    # Line 1055
    bne	$a3,$v1,.L0d996d1c
    # Line 1084
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1088
    li	$v0,0x8034
.L0d996cc4:
    sltu	$a2,$a4,$v0
    bnez	$a2,.L0d996d80
.L0d996ccc:
    sltu	$a5,$v0,$a4
    beqz	$a5,.L0d996d50
    li	$v0,0x8364
    sltu	$a6,$a4,$v0
    bnez	$a6,.L0d996e1c
    sltu	$a7,$v0,$a4
    beqz	$a7,.L0d996da8
    # Line 1107
    li	$a7,6407
    # Line 1088
    li	$v0,0x8367
    sltu	$t0,$a4,$v0
    bnez	$t0,.L0d996f10
    sltu	$t1,$v0,$a4
    beqz	$t1,.L0d996d50
    li	$t2,0x8368
    beq	$a4,$t2,.L0d996d54
    # Line 1124
    li	$ra,6408
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996d14:
    # Line 1055
    beq	$a3,$t3,.L0d996ba8
.L0d996d18:
    # Line 1084
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996d1c:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1085
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d996d38:
    # Line 1088
    li	$v0,0x8036
    sltu	$t8,$a4,$v0
    bnez	$t8,.L0d996f34
    li	$t9,0x8035
    sltu	$t9,$v0,$a4
    bnez	$t9,.L0d996e8c
.L0d996d50:
    # Line 1124
    li	$ra,6408
.L0d996d54:
    beq	$a3,$ra,.L0d996c40
    li	$at,0x8000
    beq	$a3,$at,.L0d996c40
    li	$v0,0x80e1
    beq	$a3,$v0,.L0d996c40
    # Line 1130
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1131
    b	.L0d996c74
    move	$v0,$zero
.L0d996d80:
    # Line 1088
    sltiu	$v1,$a4,5125
    bnez	$v1,.L0d996dcc
    sltiu	$a2,$a4,5126
    bnez	$a2,.L0d996c40
    li	$v0,0x8032
    sltu	$a5,$a4,$v0
    bnez	$a5,.L0d996f8c
.L0d996d9c:
    sltu	$a6,$v0,$a4
    bnez	$a6,.L0d996f54
    # Line 1107
    li	$a7,6407
.L0d996da8:
    beq	$a3,$a7,.L0d996c40
    li	$t0,0x80e0
    beq	$a3,$t0,.L0d996c40
    # Line 1112
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1113
    b	.L0d996c74
    move	$v0,$zero
.L0d996dcc:
    # Line 1088
    sltiu	$t1,$a4,5122
    bnez	$t1,.L0d996c28
    sltiu	$t2,$a4,5123
    bnez	$t2,.L0d996c40
    sltiu	$t3,$a4,5124
    bnez	$t3,.L0d996f44
    li	$ra,5123
    sltiu	$t8,$a4,5125
    bnez	$t8,.L0d996c40
    nop
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996dfc:
    # Line 1055
    bnez	$t9,.L0d996b9c
    sltiu	$ra,$a3,6410
    bnez	$ra,.L0d996ba8
    li	$at,6410
    beq	$a3,$at,.L0d996ba8
    nop
    b	.L0d996d1c
    # Line 1084
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996e1c:
    # Line 1088
    li	$v0,0x8362
    sltu	$v1,$a4,$v0
    bnez	$v1,.L0d996d38
    sltu	$a2,$v0,$a4
    beqz	$a2,.L0d996da8
    # Line 1107
    li	$a7,6407
    # Line 1088
    li	$a5,0x8363
    beq	$a4,$a5,.L0d996da8
    # Line 1107
    li	$a7,6407
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996e48:
    # Line 1143
    # lw $t9, -29948($gp) # &__glSpecElementsPerGroup
    move	$a0,$a3
    sd	$a1,0($sp)
    jal	__glSpecElementsPerGroup
    move	$a1,$a4
    li	$a6,3
    beq	$v0,$a6,.L0d996eb0
    # Line 1146
    ld	$t1,0($sp)
    # Line 1143
    li	$a7,4
    beq	$v0,$a7,.L0d996eac
    # Line 1152
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1153
    b	.L0d996c74
    move	$v0,$zero
.L0d996e88:
    # Line 1088
    beq	$a4,$t0,.L0d996c40
.L0d996e8c:
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996e90:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1136
    move	$v0,$zero
    # Line 1085
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d996eac:
    # Line 1146
    ld	$t1,0($sp)
.L0d996eb0:
    sra	$t2,$t1,0x1f
    xor	$t1,$t1,$t2
    subu	$t1,$t1,$t2
    andi	$t1,$t1,0x1
    xor	$t1,$t1,$t2
    subu	$t1,$t1,$t2
    beqz	$t1,.L0d996c64
    ld	$ra,16($sp)
    # Line 1147
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1148
    b	.L0d996c74
    move	$v0,$zero
.L0d996ee8:
    # Line 1052
    # lw $t9, -28616($gp) # &__glSetError
.L0d996eec:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,16($sp)
    # Line 1053
    b	.L0d996c74
    move	$v0,$zero
.L0d996f00:
    # Line 1055
    beq	$a3,$t2,.L0d996ba8
    nop
    b	.L0d996d1c
    # Line 1084
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996f10:
    # Line 1088
    li	$v0,0x8366
    sltu	$t3,$a4,$v0
    bnez	$t3,.L0d996f7c
    li	$v1,0x8365
    sltu	$t8,$v0,$a4
    beqz	$t8,.L0d996d54
    # Line 1124
    li	$ra,6408
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996f34:
    # Line 1088
    beq	$a4,$t9,.L0d996d54
    # Line 1124
    li	$ra,6408
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996f44:
    # Line 1088
    beq	$a4,$ra,.L0d996c40
    nop
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996f54:
    # Line 1088
    li	$at,0x8033
    beq	$a4,$at,.L0d996d54
    # Line 1124
    li	$ra,6408
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996f68:
    # Line 1088
    li	$v0,5126
    beq	$a4,$v0,.L0d996c40
    nop
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996f7c:
    # Line 1088
    beq	$a4,$v1,.L0d996d54
    # Line 1124
    li	$ra,6408
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d996f8c:
    # Line 1088
    sltiu	$a2,$a4,6656
    bnez	$a2,.L0d996f68
    sltiu	$a5,$a4,6657
    bnez	$a5,.L0d996c40
    nop
    b	.L0d996e90
    # Line 1135
    nop	# was lw $t9, -28616($gp) # &__glSetError
.end __glCheckDrawPixelArgs

# Function: __glCheckReadPixelArgs
# Declared: Line 1159 (Source lines: 1161-1270)
# Address: 0x0d996fb0 - 0x0d997464 (Size: 1204 bytes, Frame: 32)
.globl __glCheckReadPixelArgs
.ent __glCheckReadPixelArgs
__glCheckReadPixelArgs:
    # Line 1161
    addiu	$sp,$sp,-32
    lui	$at,0x10
    move	$v0,$a1
    sd	$ra,16($sp)
    addiu	$at,$at,-24536
    sd	$gp,8($sp)
    # Line 1162
    bltz	$a1,.L0d9973a8
    # Line 1161
    addu	$gp,$t9,$at
    # Line 1162
    bltz	$a2,.L0d9973a8
    # Line 1166
    sltiu	$v1,$a3,6407
    bnez	$v1,.L0d997028
    sd	$a1,0($sp)
    sltiu	$a1,$a3,6408
    bnez	$a1,.L0d997084
    # Line 1202
    li	$v0,0x8034
    # Line 1166
    li	$v0,0x8000
    sltu	$a2,$a3,$v0
    bnez	$a2,.L0d9971f0
    sltiu	$t3,$a3,6409
    sltu	$a5,$v0,$a3
    beqz	$a5,.L0d997080
    li	$v0,0x80e1
    sltu	$a6,$a3,$v0
    bnez	$a6,.L0d9973c0
    li	$ra,0x80e0
    sltu	$a7,$v0,$a3
    beqz	$a7,.L0d997084
    # Line 1202
    li	$v0,0x8034
    b	.L0d997254
    # Line 1199
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997028:
    # Line 1166
    sltiu	$t0,$a3,6403
    bnez	$t0,.L0d997068
    sltiu	$t9,$a3,6401
    sltiu	$t1,$a3,6404
    bnez	$t1,.L0d997084
    # Line 1202
    li	$v0,0x8034
    # Line 1166
    sltiu	$t2,$a3,6405
    bnez	$t2,.L0d997330
    sltiu	$t3,$a3,6406
    bnez	$t3,.L0d997084
    # Line 1202
    li	$v0,0x8034
    # Line 1166
    li	$t8,6406
    beq	$a3,$t8,.L0d997084
    # Line 1202
    li	$v0,0x8034
    b	.L0d997254
    # Line 1199
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997068:
    # Line 1166
    bnez	$t9,.L0d997214
    sltiu	$ra,$a3,6402
    beqz	$ra,.L0d997344
    li	$t0,6402
    lbu	$at,3226($a0)
    beqz	$at,.L0d99744c
.L0d997080:
    # Line 1202
    li	$v0,0x8034
.L0d997084:
    sltu	$v1,$a4,$v0
    bnez	$v1,.L0d9970d0
    sltu	$a1,$v0,$a4
    beqz	$a1,.L0d997140
    li	$v0,0x8364
    sltu	$a2,$a4,$v0
    bnez	$a2,.L0d997270
    sltu	$a5,$v0,$a4
    beqz	$a5,.L0d997100
    li	$v0,0x8367
    sltu	$a6,$a4,$v0
    bnez	$a6,.L0d9973d0
    sltu	$a7,$v0,$a4
    beqz	$a7,.L0d997140
    li	$t0,0x8368
    beq	$a4,$t0,.L0d997144
    # Line 1238
    li	$v0,6408
    b	.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9970d0:
    # Line 1202
    sltiu	$v0,$a4,5125
    bnez	$v0,.L0d9971c8
    sltiu	$a2,$a4,5122
    sltiu	$t1,$a4,5126
    bnez	$t1,.L0d997184
    li	$v0,0x8032
    sltu	$t2,$a4,$v0
    bnez	$t2,.L0d997370
    sltiu	$t2,$a4,6656
    sltu	$t3,$v0,$a4
    bnez	$t3,.L0d997404
    li	$a2,0x8033
.L0d997100:
    # Line 1221
    li	$t8,6407
.L0d997104:
    beq	$a3,$t8,.L0d997184
    li	$t9,0x80e0
    beq	$a3,$t9,.L0d997184
    # Line 1226
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1227
    b	.L0d9971bc
    move	$v0,$zero
.L0d997128:
    # Line 1202
    li	$v0,0x8036
    sltu	$ra,$a4,$v0
    bnez	$ra,.L0d9973f0
    sltu	$at,$v0,$a4
    bnez	$at,.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997140:
    # Line 1238
    li	$v0,6408
.L0d997144:
    beq	$a3,$v0,.L0d997184
    li	$v1,0x8000
    beq	$a3,$v1,.L0d997184
    li	$a1,0x80e1
    beq	$a3,$a1,.L0d997184
    # Line 1244
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1245
    b	.L0d9971bc
    move	$v0,$zero
.L0d997170:
    # Line 1202
    sltiu	$a5,$a4,5121
    bnez	$a5,.L0d9972d4
    li	$a5,5120
    beqz	$a2,.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997184:
    # Line 1252
    lw	$v0,1180($a0)
    li	$a6,0x85a2
    beq	$v0,$a6,.L0d9971a8
    li	$a7,0x85a3
    beq	$v0,$a7,.L0d9972a0
    # Line 1257
    nop	# was lw $t9, -29948($gp) # &__glSpecElementsPerGroup
    # Line 1252
    li	$t0,0x85a4
    beq	$v0,$t0,.L0d9972a0
    # Line 1257
    nop	# was lw $t9, -29948($gp) # &__glSpecElementsPerGroup
.L0d9971a8:
    ld	$ra,16($sp)
    # Line 1270
    li	$v0,1
    # Line 1200
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9971bc:
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9971c8:
    # Line 1202
    bnez	$a2,.L0d997170
    sltiu	$t1,$a4,5123
    bnez	$t1,.L0d997184
    sltiu	$t2,$a4,5124
    bnez	$t2,.L0d997428
    li	$a6,5123
    bnez	$v0,.L0d997184
    nop
    b	.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9971f0:
    # Line 1166
    bnez	$t3,.L0d997244
    sltiu	$t8,$a3,6410
    bnez	$t8,.L0d997084
    # Line 1202
    li	$v0,0x8034
    # Line 1166
    li	$t9,6410
    beq	$a3,$t9,.L0d997084
    # Line 1202
    li	$v0,0x8034
    b	.L0d997254
    # Line 1199
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997214:
    # Line 1166
    li	$ra,6400
    bne	$a3,$ra,.L0d997254
    # Line 1199
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1166
    lbu	$at,3220($a0)
    beqz	$at,.L0d997084
    # Line 1202
    li	$v0,0x8034
    # Line 1176
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1177
    b	.L0d9971bc
    move	$v0,$zero
.L0d997244:
    # Line 1166
    li	$v0,6408
    beq	$a3,$v0,.L0d997084
    # Line 1202
    li	$v0,0x8034
    # Line 1199
    # lw $t9, -28616($gp) # &__glSetError
.L0d997254:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1200
    move	$v0,$zero
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d997270:
    # Line 1202
    li	$v0,0x8362
    sltu	$v1,$a4,$v0
    bnez	$v1,.L0d997128
    sltu	$a1,$v0,$a4
    beqz	$a1,.L0d997104
    # Line 1221
    li	$t8,6407
    # Line 1202
    li	$a2,0x8363
    beq	$a4,$a2,.L0d997104
    # Line 1221
    li	$t8,6407
    b	.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1257
    # lw $t9, -29948($gp) # &__glSpecElementsPerGroup
.L0d9972a0:
    move	$a0,$a3
    jal	__glSpecElementsPerGroup
    move	$a1,$a4
    li	$a3,3
    beq	$v0,$a3,.L0d9972f8
    li	$a4,4
    beq	$v0,$a4,.L0d9972f8
    # Line 1266
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1267
    b	.L0d9971bc
    move	$v0,$zero
.L0d9972d4:
    # Line 1202
    beq	$a4,$a5,.L0d997184
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9972dc:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    # Line 1250
    move	$v0,$zero
    # Line 1200
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9972f8:
    # Line 1260
    ld	$a6,0($sp)
    sra	$a7,$a6,0x1f
    xor	$a6,$a6,$a7
    subu	$a6,$a6,$a7
    andi	$a6,$a6,0x1
    xor	$a6,$a6,$a7
    subu	$a6,$a6,$a7
    beqz	$a6,.L0d9971a8
    # Line 1261
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1262
    b	.L0d9971bc
    move	$v0,$zero
.L0d997330:
    # Line 1166
    li	$a7,6404
    beq	$a3,$a7,.L0d997084
    # Line 1202
    li	$v0,0x8034
    b	.L0d997254
    # Line 1199
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997344:
    # Line 1166
    bne	$a3,$t0,.L0d997254
    # Line 1199
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1166
    lbu	$t1,3225($a0)
    bnez	$t1,.L0d997084
    # Line 1202
    li	$v0,0x8034
    # Line 1182
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1183
    b	.L0d9971bc
    move	$v0,$zero
.L0d997370:
    # Line 1202
    bnez	$t2,.L0d997414
    # Line 1204
    li	$t8,6401
    # Line 1202
    sltiu	$t3,$a4,6657
    beqz	$t3,.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1204
    beq	$a3,$t8,.L0d997184
    li	$t9,6400
    beq	$a3,$t9,.L0d997184
    # Line 1205
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1206
    b	.L0d9971bc
    move	$v0,$zero
.L0d9973a8:
    # Line 1163
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,16($sp)
    # Line 1164
    b	.L0d9971bc
    move	$v0,$zero
.L0d9973c0:
    # Line 1166
    beq	$a3,$ra,.L0d997084
    # Line 1202
    li	$v0,0x8034
    b	.L0d997254
    # Line 1199
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9973d0:
    # Line 1202
    li	$v0,0x8366
    sltu	$at,$a4,$v0
    bnez	$at,.L0d997438
    sltu	$v1,$v0,$a4
    beqz	$v1,.L0d997144
    # Line 1238
    li	$v0,6408
    b	.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9973f0:
    # Line 1202
    li	$a1,0x8035
    beq	$a4,$a1,.L0d997144
    # Line 1238
    li	$v0,6408
    b	.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997404:
    # Line 1202
    beq	$a4,$a2,.L0d997144
    # Line 1238
    li	$v0,6408
    b	.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997414:
    # Line 1202
    li	$a5,5126
    beq	$a4,$a5,.L0d997184
    nop
    b	.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997428:
    # Line 1202
    beq	$a4,$a6,.L0d997184
    nop
    b	.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997438:
    # Line 1202
    li	$a7,0x8365
    beq	$a4,$a7,.L0d997144
    # Line 1238
    li	$v0,6408
    b	.L0d9972dc
    # Line 1249
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d99744c:
    # Line 1169
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    # Line 1170
    b	.L0d9971bc
    move	$v0,$zero
.end __glCheckReadPixelArgs

# Function: __glim_DrawPixels
# Declared: Line 1273 (Source lines: 1275-1305)
# Address: 0x0d997470 - 0x0d997588 (Size: 280 bytes, Frame: 192)
.globl __glim_DrawPixels
.ent __glim_DrawPixels
__glim_DrawPixels:
    # Line 1276
    lw	$a5,4112($zero)
    # Line 1275
    addiu	$sp,$sp,-64
    sd	$a4,8($sp)
    sd	$a3,40($sp)
    sd	$a2,32($sp)
    sd	$a1,24($sp)
    # Line 1279
    lw	$a7,4120($zero)
    # Line 1275
    sd	$a0,16($sp)
    lui	$at,0x10
    # Line 1279
    li	$v0,2
    sd	$ra,56($sp)
    # Line 1275
    addiu	$at,$at,-25752
    sd	$gp,48($sp)
    # Line 1279
    beqz	$a7,.L0d997500
    # Line 1275
    addu	$gp,$t9,$at
    # Line 1279
    beq	$a7,$v0,.L0d9974cc
    # Line 1287
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9974bc:
    ld	$ra,56($sp)
.L0d9974c0:
    # Line 1305
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9974cc:
    # Line 1282
    lw	$t9,11840($a5)
    jalr	$t9
    move	$a0,$a5
    # Line 1284
    ld	$a4,8($sp)
    ld	$a3,40($sp)
    ld	$a2,32($sp)
    # lw $t9, -17404($gp) # &glDrawPixels
    ld	$a1,24($sp)
    ld	$a0,16($sp)
    jal	glDrawPixels
    # Line 1283
    sw	$zero,4120($zero)
    b	.L0d9974c0
    ld	$ra,56($sp)
.L0d997500:
    # Line 1292
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    # lw $t9, -30584($gp) # &__glCheckDrawPixelArgs
    sd	$a5,0($sp)
    ld	$a4,40($sp)
    bal __glCheckDrawPixelArgs
    ld	$a0,0($sp)
    # Line 1299
    li	$a1,7168
    # Line 1292
    beqz	$v0,.L0d9974bc
    ld	$t0,0($sp)
    lbu	$v1,452($t0)
    beqz	$v1,.L0d9974bc
    # Line 1294
    li	$a0,7169
    lw	$a7,3204($t0)
    beq	$a7,$a0,.L0d997574
    # Line 1298
    nop	# was lw $t9, -28288($gp) # &__glFeedbackDrawPixels
    # Line 1299
    bne	$a7,$a1,.L0d9974bc
    # Line 1304
    ld	$a1,16($sp)
    ld	$a2,24($sp)
    lw	$t9,12616($t0)
    ld	$a3,32($sp)
    move	$a0,$t0
    ld	$a4,40($sp)
    ld	$a5,8($sp)
    jal	__glFeedbackDrawPixels
    move	$a6,$zero
    b	.L0d9974c0
    ld	$ra,56($sp)
.L0d997574:
    # Line 1298
    move	$a0,$t0
    jalr	$t9
    addiu	$a1,$t0,240
    b	.L0d9974c0
    ld	$ra,56($sp)
.end __glim_DrawPixels

# Function: __glim_ReadPixels
# Declared: Line 1307 (Source lines: 1309-1329)
# Address: 0x0d997590 - 0x0d997688 (Size: 248 bytes, Frame: 208)
.globl __glim_ReadPixels
.ent __glim_ReadPixels
__glim_ReadPixels:
    # Line 1310
    lw	$a7,4112($zero)
    # Line 1309
    addiu	$sp,$sp,-80
    sd	$a6,16($sp)
    sd	$a5,40($sp)
    sd	$a4,32($sp)
    sd	$a3,48($sp)
    sd	$a2,56($sp)
    sd	$a1,24($sp)
    # Line 1313
    lw	$t1,4120($zero)
    # Line 1309
    sd	$a0,8($sp)
    lui	$at,0x10
    sd	$ra,72($sp)
    addiu	$at,$at,-26040
    sd	$gp,64($sp)
    # Line 1313
    beqz	$t1,.L0d997630
    # Line 1309
    addu	$gp,$t9,$at
    # Line 1313
    li	$v0,2
    beq	$t1,$v0,.L0d9975f4
    # Line 1321
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9975e4:
    ld	$ra,72($sp)
.L0d9975e8:
    # Line 1329
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9975f4:
    # Line 1316
    lw	$t9,11840($a7)
    jalr	$t9
    move	$a0,$a7
    # Line 1318
    ld	$a6,16($sp)
    ld	$a5,40($sp)
    ld	$a4,32($sp)
    ld	$a3,48($sp)
    ld	$a2,56($sp)
    # lw $t9, -17408($gp) # &glReadPixels
    ld	$a1,24($sp)
    ld	$a0,8($sp)
    jal	glReadPixels
    # Line 1317
    sw	$zero,4120($zero)
    b	.L0d9975e8
    ld	$ra,72($sp)
.L0d997630:
    # Line 1326
    ld	$a1,56($sp)
    ld	$a2,48($sp)
    ld	$a3,32($sp)
    # lw $t9, -30580($gp) # &__glCheckReadPixelArgs
    sd	$a7,0($sp)
    ld	$a4,40($sp)
    bal __glCheckReadPixelArgs
    ld	$a0,0($sp)
    beqz	$v0,.L0d9975e4
    # Line 1328
    ld	$a1,8($sp)
    ld	$a2,24($sp)
    ld	$a3,56($sp)
    ld	$t9,0($sp)
    ld	$a4,48($sp)
    move	$a0,$t9
    lw	$t9,12624($t9)
    ld	$a5,32($sp)
    ld	$a6,40($sp)
    jal	__glCheckReadPixelArgs
    ld	$a7,16($sp)
    b	.L0d9975e8
    ld	$ra,72($sp)
.end __glim_ReadPixels

# Function: __glim_CopyPixels
# Declared: Line 1331 (Source lines: 1333-1394)
# Address: 0x0d997690 - 0x0d997838 (Size: 424 bytes, Frame: 192)
.globl __glim_CopyPixels
.ent __glim_CopyPixels
__glim_CopyPixels:
    # Line 1333
    move	$t1,$a3
    move	$t0,$a2
    move	$t2,$a1
    # Line 1338
    lw	$a5,4120($zero)
    # Line 1333
    move	$t3,$a0
    lui	$at,0x10
    # Line 1335
    lw	$a7,4112($zero)
    # Line 1333
    addiu	$sp,$sp,-64
    addiu	$at,$at,-26296
    sd	$gp,40($sp)
    # Line 1338
    beqz	$a5,.L0d9976fc
    # Line 1333
    addu	$gp,$t9,$at
    sd	$a0,32($sp)
    sd	$a1,24($sp)
    sd	$a3,16($sp)
    sd	$a2,8($sp)
    # Line 1338
    li	$v0,2
    sd	$a4,0($sp)
    beq	$a5,$v0,.L0d997744
    sd	$ra,48($sp)
    # Line 1346
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9976ec:
    ld	$ra,48($sp)
.L0d9976f0:
    # Line 1394
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9976fc:
    # Line 1388
    li	$a6,7168
    # Line 1351
    bltz	$a2,.L0d9977f0
    sd	$ra,48($sp)
    bltz	$a3,.L0d9977f4
    # Line 1352
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1355
    li	$v1,6146
    beq	$a4,$v1,.L0d9977c8
    # Line 1361
    li	$a5,6401
    # Line 1355
    li	$a0,6144
    beq	$a4,$a0,.L0d9977dc
    # Line 1376
    li	$a5,6402
    # Line 1355
    li	$a1,6145
    beq	$a4,$a1,.L0d997778
    # Line 1378
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9976f0
    ld	$ra,48($sp)
.L0d997744:
    # Line 1341
    lw	$t9,11840($a7)
    jalr	$t9
    move	$a0,$a7
    # Line 1343
    ld	$a4,0($sp)
    ld	$a3,16($sp)
    ld	$a2,8($sp)
    # lw $t9, -17412($gp) # &glCopyPixels
    ld	$a1,24($sp)
    ld	$a0,32($sp)
    jal	glCopyPixels
    # Line 1342
    sw	$zero,4120($zero)
    b	.L0d9976f0
    ld	$ra,48($sp)
.L0d997778:
    # Line 1371
    lbu	$a2,3225($a7)
    beqz	$a2,.L0d997818
    # Line 1372
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d997784:
    # Line 1380
    lbu	$a3,452($a7)
.L0d997788:
    beqz	$a3,.L0d9976ec
    # Line 1383
    li	$a4,7169
    lw	$a0,3204($a7)
    beq	$a0,$a4,.L0d997804
    # Line 1387
    nop	# was lw $t9, -28292($gp) # &__glFeedbackCopyPixels
    # Line 1388
    bne	$a0,$a6,.L0d9976f0
    ld	$ra,48($sp)
    # Line 1393
    lw	$t9,12620($a7)
    move	$a0,$a7
    move	$a1,$t3
    move	$a2,$t2
    move	$a3,$t0
    jal	__glFeedbackCopyPixels
    move	$a4,$t1
    b	.L0d9976f0
    ld	$ra,48($sp)
.L0d9977c8:
    # Line 1357
    lbu	$t8,3226($a7)
    beqz	$t8,.L0d997828
    # Line 1358
    nop	# was lw $t9, -28616($gp) # &__glSetError
    b	.L0d997788
    # Line 1380
    lbu	$a3,452($a7)
.L0d9977dc:
    # Line 1364
    li	$ra,6400
    lbu	$t9,3220($a7)
    li	$a5,6408
    # Line 1369
    b	.L0d997784
    # Line 1364
    movz	$a5,$ra,$t9
.L0d9977f0:
    # Line 1352
    # lw $t9, -28616($gp) # &__glSetError
.L0d9977f4:
    jal	__glSetError
    li	$a0,1281
    b	.L0d9976f0
    ld	$ra,48($sp)
.L0d997804:
    # Line 1387
    move	$a0,$a7
    jalr	$t9
    addiu	$a1,$a7,240
    b	.L0d9976f0
    ld	$ra,48($sp)
.L0d997818:
    # Line 1372
    jalr	$t9
    li	$a0,1282
    b	.L0d9976f0
    ld	$ra,48($sp)
.L0d997828:
    # Line 1358
    jalr	$t9
    li	$a0,1282
    b	.L0d9976f0
    ld	$ra,48($sp)
.end __glim_CopyPixels

.late_rodata
jtbl_0da80684:
    .word .L0d99489c
    .word .L0d99489c
    .word .L0d9948ec
    .word .L0d9948ec
    .word .L0d9948ec
    .word .L0d9948ec
    .word .L0d9948ec
    .word .L0d9948ec
    .word .L0d9948ec
    .word .L0d9948ec
jtbl_0da806ac:
    .word .L0d995ef8
    .word .L0d995ef8
    .word .L0d995f18
    .word .L0d995f18
    .word .L0d995f18
    .word .L0d995f18
    .word .L0d995f38
    .word .L0d995f38
    .word .L0d995f38
    .word .L0d995f38
jtbl_0da806d4:
    .word .L0d9962d8
    .word .L0d9962d8
    .word .L0d9964bc
    .word .L0d9964bc
    .word .L0d9964bc
    .word .L0d9964bc
    .word .L0d996308
    .word .L0d996308
    .word .L0d996308
    .word .L0d996308
jtbl_0da806fc:
    .word .L0d9966a8
    .word .L0d9966a8
    .word .L0d99686c
    .word .L0d99686c
    .word .L0d99686c
    .word .L0d99686c
    .word .L0d9966d8
    .word .L0d9966d8
    .word .L0d9966d8
    .word .L0d9966d8
jtbl_0da80724:
    .word .L0d996a80
    .word .L0d996aa4
    .word .L0d996a40
    .word .L0d996aa4
    .word .L0d996a80
    .word .L0d996a40
    .word .L0d996a80
    .word .L0d996aa4
    .word .L0d996a2c
    .word .L0d996a88
    .word .L0d996a88
    .word .L0d996a88
    .word .L0d996a88

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_437f0000:
    .word 0x437f0000
_lit_bf000000:
    .word 0xbf000000

