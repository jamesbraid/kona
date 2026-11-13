# Source: ../KONA/kon_eval.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_eval.c
# Total Functions: 54

.text

# Function: __glKonEvalEnable
# Declared: Line 72 (Source lines: 73-153)
# Address: 0x0d979750 - 0x0d979a7c (Size: 812 bytes, Frame: 16)
.globl __glKonEvalEnable
.ent __glKonEvalEnable
__glKonEvalEnable:
    # Line 73
    lui	$a4,0x11
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,30856
    sd	$gp,0($sp)
    addu	$gp,$t9,$a4
    # Line 76
    addiu	$a4,$a0,-3456
    la	$a3,.rodata
    sltiu	$a5,$a4,57
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,696
    lw	$a2,4112($zero)
    beqz	$a5,.L0d9797bc
    addu	$a3,$a3,$a4
    lw	$a5,0($a3)
    jr	$a5
    # Line 124
    sll	$a4,$a0,0x2
.L0d979790:
    # Line 106
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    lui	$a3,0xfffe
    addu	$a4,$a2,$a4
    addu	$a3,$a4,$a3
    lbu	$a6,-13428($a3)
    beqz	$a6,.L0d979a48
    # Line 110
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
.L0d9797bc:
    # Line 153
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9797c8:
    # Line 86
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    lui	$a3,0xfffe
    addu	$a4,$a2,$a4
    addu	$a3,$a4,$a3
    lbu	$a5,-13428($a3)
    bnez	$a5,.L0d9797bc
    nop
    # Line 89
    lw	$a1,-13444($a3)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    # Line 88
    li	$a6,1
    # Line 89
    sll	$a0,$a0,0x2
    li	$a1,0x8c8c
    addu	$a0,$a2,$a0
    # Line 88
    sb	$a6,-13428($a3)
    # Line 89
    lui	$a5,0xfffd
    addu	$a0,$a0,$a1
    ori	$a5,$a5,0xcb7c
    lw	$a6,0($a0)
    addu	$a5,$a4,$a5
    sltu	$a6,$a6,$a5
    beqz	$a6,.L0d9797bc
    # Line 92
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-8192
    sd	$ra,8($sp)
    bal __glKonHostMapData2D
    # Line 91
    sw	$a5,0($a0)
    b	.L0d9797bc
    ld	$ra,8($sp)
.L0d97984c:
    # Line 124
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    lui	$a3,0xfffe
    addu	$a4,$a2,$a4
    addu	$a3,$a4,$a3
    lbu	$at,-14572($a3)
    bnez	$at,.L0d9797bc
    nop
    # Line 127
    lw	$a1,-14588($a3)
    sll	$a0,$a1,0x2
    subu	$a0,$a0,$a1
    # Line 126
    li	$a6,1
    # Line 127
    sll	$a0,$a0,0x2
    li	$a1,0x8e94
    addu	$a0,$a2,$a0
    # Line 126
    sb	$a6,-14572($a3)
    # Line 127
    lui	$a5,0xfffd
    addu	$a0,$a0,$a1
    ori	$a5,$a5,0xc704
    lw	$a6,0($a0)
    addu	$a5,$a4,$a5
    sltu	$a6,$a6,$a5
    beqz	$a6,.L0d9797bc
    # Line 130
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-7312
    sd	$ra,8($sp)
    bal __glKonHostMapData2D
    # Line 129
    sw	$a5,0($a0)
    b	.L0d9797bc
    ld	$ra,8($sp)
.L0d9798cc:
    # Line 144
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    lui	$a3,0xfffe
    addu	$a4,$a2,$a4
    addu	$a3,$a4,$a3
    lbu	$at,-14572($a3)
    bnez	$at,.L0d9797bc
    # Line 146
    lui	$a0,0x1
    li	$a6,1
    sb	$a6,-14572($a3)
    addu	$a0,$a2,$a0
    lbu	$a5,-28500($a0)
    bnez	$a5,.L0d9797bc
    # Line 149
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 148
    lui	$a1,0xfffd
    # Line 149
    addiu	$t9,$t9,-7312
    sd	$ra,8($sp)
    # Line 148
    ori	$a1,$a1,0xc704
    addu	$a1,$a4,$a1
    # Line 149
    bal __glKonHostMapData2D
    # Line 148
    sw	$a1,-29012($a0)
    b	.L0d9797bc
    ld	$ra,8($sp)
.L0d979934:
    # Line 135
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    lui	$a3,0xfffe
    addu	$a4,$a2,$a4
    addu	$a3,$a4,$a3
    lbu	$at,-14572($a3)
    bnez	$at,.L0d9797bc
    # Line 137
    li	$a7,1
    sb	$a7,-14572($a3)
    lbu	$a5,3221($a2)
    xori	$a6,$a0,0xdb1
    sltiu	$a6,$a6,1
    bne	$a5,$a6,.L0d9797bc
    # Line 140
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 139
    lui	$t0,0xfffd
    li	$t1,0x8ea0
    # Line 140
    addiu	$t9,$t9,-7312
    sd	$ra,8($sp)
    # Line 139
    addu	$t1,$t1,$a2
    ori	$t0,$t0,0xc704
    addu	$t0,$a4,$t0
    # Line 140
    bal __glKonHostMapData2D
    # Line 139
    sw	$t0,0($t1)
    b	.L0d9797bc
    ld	$ra,8($sp)
.L0d9799a4:
    # Line 97
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a2,$a4
    lui	$a3,0xfffe
    addu	$a3,$a4,$a3
    lbu	$at,-13428($a3)
    bnez	$at,.L0d9797bc
    # Line 99
    li	$a7,1
    sb	$a7,-13428($a3)
    lbu	$a5,3221($a2)
    xori	$a6,$a0,0xd91
    sltiu	$a6,$a6,1
    bne	$a5,$a6,.L0d9797bc
    # Line 102
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 101
    lui	$t0,0xfffd
    li	$t1,0x8c98
    # Line 102
    addiu	$t9,$t9,-8192
    sd	$ra,8($sp)
    # Line 101
    addu	$t1,$t1,$a2
    ori	$t0,$t0,0xcb7c
    addu	$t0,$a4,$t0
    # Line 102
    bal __glKonHostMapData2D
    # Line 101
    sw	$t0,0($t1)
    b	.L0d9797bc
    ld	$ra,8($sp)
.L0d979a14:
    # Line 113
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lbu	$at,-28500($a0)
    bnez	$at,.L0d9797bc
    # Line 116
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 115
    sw	$zero,-29012($a0)
    # Line 116
    addiu	$t9,$t9,-7312
    sd	$ra,8($sp)
    # Line 114
    li	$a1,1
    # Line 116
    bal __glKonHostMapData2D
    # Line 114
    sb	$a1,-28500($a0)
    b	.L0d9797bc
    ld	$ra,8($sp)
.L0d979a48:
    # Line 108
    li	$v1,1
    # Line 109
    lui	$at,0xfffd
    # Line 108
    sb	$v1,-13428($a3)
    # Line 109
    li	$v0,0x8ca4
    # Line 110
    addiu	$t9,$t9,-8192
    sd	$ra,8($sp)
    # Line 109
    addu	$v0,$v0,$a2
    ori	$at,$at,0xcb7c
    addu	$at,$a4,$at
    # Line 110
    bal __glKonHostMapData2D
    # Line 109
    sw	$at,0($v0)
    b	.L0d9797bc
    ld	$ra,8($sp)
.end __glKonEvalEnable

# Function: __glKonEvalDisable
# Declared: Line 155 (Source lines: 156-272)
# Address: 0x0d979a80 - 0x0d979e68 (Size: 1000 bytes, Frame: 16)
.globl __glKonEvalDisable
.ent __glKonEvalDisable
__glKonEvalDisable:
    # Line 156
    lui	$a4,0x11
    addiu	$sp,$sp,-16
    addiu	$a4,$a4,30040
    sd	$gp,0($sp)
    addu	$gp,$t9,$a4
    # Line 159
    addiu	$a4,$a0,-3456
    la	$a3,.rodata
    sltiu	$a5,$a4,57
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,924
    lw	$a2,4112($zero)
    beqz	$a5,.L0d979ad4
    addu	$a3,$a3,$a4
    lw	$a5,0($a3)
    jr	$a5
    # Line 197
    sll	$a4,$a0,0x2
.L0d979ac0:
    # Line 265
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lbu	$a6,-28500($a0)
    beqz	$a6,.L0d979e4c
    sb	$zero,-28868($a0)
.L0d979ad4:
    # Line 272
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d979ae0:
    # Line 165
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    lui	$a4,0xfffe
    addu	$a3,$a2,$a3
    addu	$a4,$a3,$a4
    lbu	$a1,-13428($a4)
    beqz	$a1,.L0d979ad4
    # Line 168
    lui	$a0,0x1
    sb	$zero,-13428($a4)
    lui	$a6,0xfffd
    addu	$a0,$a2,$a0
    ori	$a6,$a6,0xcb7c
    lw	$a5,-29556($a0)
    addu	$a6,$a3,$a6
    bne	$a5,$a6,.L0d979ad4
    nop
    lbu	$a1,-29128($a0)
    beqz	$a1,.L0d979e34
    # Line 172
    li	$a3,0x8e28
    sd	$ra,8($sp)
    addu	$a3,$a2,$a3
    sw	$a3,-29556($a0)
.L0d979b44:
    # Line 173
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-8192
    bal __glKonHostMapData2D
    nop
    b	.L0d979ad4
    ld	$ra,8($sp)
.L0d979b5c:
    # Line 223
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    lui	$a4,0xfffe
    addu	$a3,$a2,$a3
    addu	$a4,$a3,$a4
    lbu	$at,-14572($a4)
    beqz	$at,.L0d979ad4
    # Line 226
    lui	$a0,0x1
    sb	$zero,-14572($a4)
    lui	$a6,0xfffd
    addu	$a0,$a2,$a0
    ori	$a6,$a6,0xc704
    lw	$a5,-29036($a0)
    addu	$a6,$a3,$a6
    bne	$a5,$a6,.L0d979ad4
    nop
    lbu	$a1,-28608($a0)
    beqz	$a1,.L0d979e40
    # Line 230
    li	$a3,0x9030
    sd	$ra,8($sp)
    addu	$a3,$a2,$a3
    sw	$a3,-29036($a0)
.L0d979bc0:
    # Line 231
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-7312
    bal __glKonHostMapData2D
    nop
    b	.L0d979ad4
    ld	$ra,8($sp)
.L0d979bd8:
    # Line 238
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    lui	$a4,0xfffe
    addu	$a3,$a2,$a3
    addu	$a4,$a3,$a4
    lbu	$at,-14572($a4)
    lui	$a5,0xfffd
    ori	$a5,$a5,0xc704
    beqz	$at,.L0d979ad4
    addu	$a3,$a3,$a5
    # Line 241
    lui	$a0,0x1
    sb	$zero,-14572($a4)
    addu	$a0,$a2,$a0
    lw	$a5,-29000($a0)
    bne	$a5,$a3,.L0d979ad4
    li	$a4,0x8f60
    b	.L0d979dd0
    addu	$a4,$a2,$a4
.L0d979c2c:
    # Line 255
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a2,$a4
    lui	$a5,0xfffe
    addu	$a4,$a4,$a5
    lbu	$a5,-14572($a4)
    beqz	$a5,.L0d979ad4
    nop
    # Line 257
    sb	$zero,-14572($a4)
    lbu	$a5,3221($a2)
    xori	$a6,$a0,0xdb1
    sltiu	$a6,$a6,1
    bne	$a5,$a6,.L0d979ad4
    # Line 260
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 259
    li	$a7,0x8ea0
    # Line 260
    addiu	$t9,$t9,-7312
    sd	$ra,8($sp)
    # Line 259
    addu	$a7,$a7,$a2
    # Line 260
    bal __glKonHostMapData2D
    # Line 259
    sw	$zero,0($a7)
    b	.L0d979ad4
    ld	$ra,8($sp)
.L0d979c90:
    # Line 180
    sll	$a3,$a0,0x2
    subu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a0
    sll	$a3,$a3,0x2
    lui	$a4,0xfffe
    addu	$a3,$a2,$a3
    addu	$a4,$a3,$a4
    lbu	$at,-13428($a4)
    lui	$a5,0xfffd
    ori	$a5,$a5,0xcb7c
    beqz	$at,.L0d979ad4
    addu	$a3,$a3,$a5
    # Line 183
    lui	$a0,0x1
    sb	$zero,-13428($a4)
    addu	$a0,$a2,$a0
    lw	$a5,-29520($a0)
    li	$a4,0x8d58
    bne	$a5,$a3,.L0d979ad4
    addu	$a4,$a2,$a4
    b	.L0d979e08
    nop
.L0d979ce8:
    # Line 206
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lbu	$a5,-29388($a0)
    beqz	$a5,.L0d979ad4
    # Line 210
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 209
    sw	$zero,-29532($a0)
    # Line 210
    addiu	$t9,$t9,-8192
    sd	$ra,8($sp)
    bal __glKonHostMapData2D
    # Line 208
    sb	$zero,-29388($a0)
    b	.L0d979ad4
    ld	$ra,8($sp)
.L0d979d18:
    # Line 197
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a2,$a4
    lui	$a5,0xfffe
    addu	$a4,$a4,$a5
    lbu	$at,-13428($a4)
    beqz	$at,.L0d979ad4
    nop
    # Line 199
    sb	$zero,-13428($a4)
    lbu	$a5,3221($a2)
    xori	$a6,$a0,0xd91
    sltiu	$a6,$a6,1
    bne	$a5,$a6,.L0d979ad4
    # Line 202
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    # Line 201
    li	$a7,0x8c98
    # Line 202
    addiu	$t9,$t9,-8192
    sd	$ra,8($sp)
    # Line 201
    addu	$a7,$a7,$a2
    # Line 202
    bal __glKonHostMapData2D
    # Line 201
    sw	$zero,0($a7)
    b	.L0d979ad4
    ld	$ra,8($sp)
.L0d979d78:
    # Line 213
    lui	$a0,0x1
    addu	$a0,$a2,$a0
    lbu	$at,-28500($a0)
    beqz	$at,.L0d979ad4
    nop
    # Line 214
    lbu	$a1,-28868($a0)
    beqz	$a1,.L0d979da8
    sb	$zero,-28500($a0)
    sd	$ra,8($sp)
    # Line 217
    li	$a3,0x8f2c
    addu	$a3,$a2,$a3
    sw	$a3,-29012($a0)
.L0d979da8:
    # Line 219
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-7312
    sd	$ra,8($sp)
    bal __glKonHostMapData2D
    nop
    b	.L0d979ad4
    ld	$ra,8($sp)
.L0d979dc4:
    # Line 248
    lbu	$at,-36($a3)
    bnez	$at,.L0d979de0
    addiu	$a3,$a3,-52
.L0d979dd0:
    # Line 241
    bne	$a4,$a3,.L0d979dc4
    nop
    # Line 246
    move	$a3,$zero
    sd	$ra,8($sp)
.L0d979de0:
    # Line 250
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-7312
    sd	$ra,8($sp)
    bal __glKonHostMapData2D
    # Line 249
    sw	$a3,-29000($a0)
    b	.L0d979ad4
    ld	$ra,8($sp)
.L0d979dfc:
    # Line 190
    lbu	$at,-36($a3)
    bnez	$at,.L0d979e18
    addiu	$a3,$a3,-52
.L0d979e08:
    # Line 183
    bne	$a4,$a3,.L0d979dfc
    nop
    # Line 188
    move	$a3,$zero
    sd	$ra,8($sp)
.L0d979e18:
    # Line 192
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-8192
    sd	$ra,8($sp)
    bal __glKonHostMapData2D
    # Line 191
    sw	$a3,-29520($a0)
    b	.L0d979ad4
    ld	$ra,8($sp)
.L0d979e34:
    # Line 171
    sw	$zero,-29556($a0)
    b	.L0d979b44
    sd	$ra,8($sp)
.L0d979e40:
    # Line 229
    sw	$zero,-29036($a0)
    b	.L0d979bc0
    sd	$ra,8($sp)
.L0d979e4c:
    # Line 268
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-7312
    sd	$ra,8($sp)
    bal __glKonHostMapData2D
    # Line 267
    sw	$zero,-29012($a0)
    b	.L0d979ad4
    ld	$ra,8($sp)
.end __glKonEvalDisable

# Function: changebasis
# Declared: Line 275 (Source lines: 276-591)
# Address: 0x0d979e70 - 0x0d97b93c (Size: 6860 bytes, Frame: 240)
.ent changebasis
changebasis:
    # Line 276
    addiu	$sp,$sp,-112
    # Line 280
    la	$a5,.rodata
    # Line 276
    move	$a7,$a1
    # Line 280
    sltiu	$t0,$a1,16
    lwc1	$f0,0($a0)
    sll	$a6,$a1,0x2
    addiu	$a5,$a5,1152
    swc1	$f0,0($a2)
    beqz	$t0,.L0d97a190
    addu	$a5,$a5,$a6
    lw	$a6,0($a5)
    jr	$a6
    # Line 285
    sll	$t8,$a3,0x2
.L0d979ea4:
    # Line 409
    sll	$at,$a3,0x2
    # Line 410
    addu	$a6,$at,$a0
    lwc1	$f0,0($a6)
    lwc1	$f13,0($a0)
    # Line 418
    ldc1	$f25,_lit8_406ce00000000000
    ldc1	$f27,_lit8_c04c000000000000
    # Line 410
    cvt.d.s	$f0,$f0
    # Line 415
    ldc1	$f9,_lit8_4053400000000000
    # Line 410
    cvt.d.s	$f13,$f13
    # Line 415
    ldc1	$f29,_lit8_c03c000000000000
    # Line 418
    mul.d	$f25,$f0,$f25
    # Line 410
    ldc1	$f5,_lit8_4026000000000000
    # Line 418
    madd.d	$f25,$f25,$f13,$f27
    # Line 415
    sll	$t8,$a3,0x3
    # Line 409
    subu	$t2,$at,$a3
    # Line 413
    ldc1	$f31,_lit8_4056000000000000
    # Line 415
    mul.d	$f27,$f0,$f9
    addu	$v0,$t8,$a3
    # Line 409
    sll	$v1,$t2,0x2
    # Line 413
    ldc1	$f1,_lit8_4042000000000000
    # Line 415
    madd.d	$f27,$f27,$f13,$f29
    # Line 411
    ldc1	$f4,_lit8_4022000000000000
    # Line 409
    subu	$a1,$v1,$a3
    # Line 411
    addu	$t3,$at,$a3
    # Line 410
    mul.d	$f3,$f0,$f5
    # Line 411
    sll	$a4,$t3,0x3
    # Line 413
    addu	$a5,$a3,$a3
    mul.d	$f31,$f0,$f31
    ldc1	$f16,_lit8_404b800000000000
    # Line 411
    addu	$a4,$a0,$a4
    # Line 413
    sll	$a5,$a5,0x2
    msub.d	$f31,$f31,$f13,$f1
    # Line 409
    sll	$a1,$a1,0x2
    # Line 411
    lwc1	$f14,0($a4)
    msub.d	$f1,$f3,$f13,$f4
    # Line 413
    addu	$a5,$a0,$a5
    # Line 415
    sll	$v0,$v0,0x2
    # Line 409
    addu	$a1,$a0,$a1
    # Line 413
    lwc1	$f8,0($a5)
    # Line 415
    addu	$v0,$a0,$v0
    # Line 409
    lwc1	$f19,0($a1)
    # Line 415
    lwc1	$f29,0($v0)
    # Line 411
    cvt.d.s	$f14,$f14
    # Line 413
    cvt.d.s	$f8,$f8
    # Line 410
    cvt.d.s	$f17,$f19
    # Line 411
    madd.d	$f1,$f1,$f14,$f5
    # Line 415
    nmsub.d	$f27,$f27,$f8,$f16
    cvt.d.s	$f29,$f29
    # Line 421
    ldc1	$f15,_lit8_4041800000000000
    # Line 411
    nmsub.d	$f1,$f1,$f17,$f4
    # Line 418
    ldc1	$f7,_lit8_4074a00000000000
    addu	$v1,$a0,$v1
    # Line 415
    madd.d	$f27,$f27,$f29,$f16
    # Line 418
    lwc1	$f12,0($v1)
    # Line 413
    madd.d	$f31,$f31,$f8,$f16
    # Line 421
    mul.d	$f15,$f13,$f15
    # Line 413
    nmsub.d	$f31,$f31,$f14,$f5
    # Line 418
    ldc1	$f5,_lit8_4064a00000000000
    cvt.d.s	$f12,$f12
    # Line 415
    ldc1	$f4,_lit8_403c000000000000
    # Line 418
    nmsub.d	$f25,$f25,$f8,$f7
    # Line 415
    nmsub.d	$f27,$f27,$f14,$f9
    # Line 413
    ldc1	$f2,_lit8_4020000000000000
    # Line 418
    madd.d	$f25,$f25,$f12,$f5
    ldc1	$f6,_lit8_4050800000000000
    # Line 415
    madd.d	$f27,$f27,$f17,$f4
    # Line 425
    ldc1	$f4,_lit8_406b800000000000
    # Line 418
    nmsub.d	$f25,$f25,$f29,$f16
    # Line 413
    madd.d	$f31,$f31,$f17,$f2
    # Line 418
    ldc1	$f2,_lit8_4035000000000000
    # Line 425
    ldc1	$f11,_lit8_405b800000000000
    # Line 418
    madd.d	$f25,$f25,$f14,$f6
    # Line 425
    ldc1	$f23,_lit8_4081300000000000
    nmsub.d	$f21,$f15,$f0,$f4
    # Line 418
    nmsub.d	$f25,$f25,$f17,$f2
    # Line 429
    ldc1	$f2,_lit8_c02e000000000000
    # Line 425
    sll	$at,$at,0x2
    # Line 429
    mul.d	$f18,$f0,$f11
    # Line 425
    addu	$at,$a0,$at
    ldc1	$f9,_lit8_4084a00000000000
    madd.d	$f21,$f21,$f8,$f23
    # Line 421
    sll	$t9,$a3,0x5
    # Line 429
    madd.d	$f18,$f18,$f13,$f2
    # Line 425
    lwc1	$f2,0($at)
    # Line 421
    addu	$t9,$t9,$a0
    lwc1	$f23,0($t9)
    # Line 425
    nmsub.d	$f21,$f21,$f12,$f9
    cvt.d.s	$f2,$f2
    # Line 421
    cvt.d.s	$f23,$f23
    # Line 425
    madd.d	$f21,$f21,$f2,$f7
    nmsub.d	$f21,$f21,$f23,$f5
    madd.d	$f21,$f21,$f29,$f4
    ldc1	$f6,_lit8_4034000000000000
    nmsub.d	$f21,$f21,$f14,$f11
    # Line 429
    ldc1	$f10,_lit8_407ef00000000000
    nmsub.d	$f18,$f18,$f8,$f7
    subu	$t8,$t8,$a3
    # Line 425
    madd.d	$f21,$f21,$f17,$f6
    # Line 433
    ldc1	$f6,_lit8_c018000000000000
    # Line 429
    sll	$t8,$t8,0x2
    # Line 433
    mul.d	$f16,$f0,$f16
    # Line 429
    addu	$t8,$a0,$t8
    madd.d	$f18,$f18,$f12,$f10
    # Line 433
    madd.d	$f16,$f16,$f13,$f6
    # Line 429
    lwc1	$f6,0($t8)
    nmsub.d	$f18,$f18,$f2,$f7
    cvt.d.s	$f6,$f6
    madd.d	$f18,$f18,$f6,$f7
    nmsub.d	$f18,$f18,$f23,$f10
    # Line 433
    nmsub.d	$f16,$f16,$f8,$f4
    # Line 429
    madd.d	$f18,$f18,$f29,$f7
    # Line 433
    madd.d	$f16,$f16,$f12,$f10
    # Line 429
    ldc1	$f10,_lit8_402e000000000000
    # Line 433
    sll	$t3,$t3,0x2
    # Line 429
    nmsub.d	$f18,$f18,$f14,$f11
    # Line 433
    addu	$t3,$a0,$t3
    # Line 421
    nmsub.d	$f15,$f15,$f0,$f5
    # Line 429
    madd.d	$f18,$f18,$f17,$f10
    # Line 433
    lwc1	$f10,0($t3)
    # Line 421
    ldc1	$f0,_lit8_4071300000000000
    # Line 433
    nmsub.d	$f16,$f16,$f2,$f9
    ldc1	$f9,_lit8_407ce00000000000
    cvt.d.s	$f10,$f10
    # Line 421
    madd.d	$f15,$f15,$f8,$f0
    # Line 410
    ldc1	$f4,_lit8_c024000000000000
    # Line 433
    madd.d	$f16,$f16,$f10,$f9
    # Line 410
    madd.d	$f4,$f3,$f13,$f4
    # Line 438
    sub.d	$f13,$f13,$f3
    # Line 413
    ldc1	$f3,_lit8_404b800000000000
    # Line 433
    nmsub.d	$f16,$f16,$f6,$f7
    # Line 421
    nmsub.d	$f15,$f15,$f12,$f5
    # Line 433
    madd.d	$f16,$f16,$f23,$f7
    # Line 438
    madd.d	$f11,$f13,$f8,$f3
    # Line 433
    ldc1	$f13,_lit8_4046000000000000
    nmsub.d	$f16,$f16,$f29,$f5
    # Line 421
    madd.d	$f15,$f15,$f23,$f5
    # Line 433
    ldc1	$f8,_lit8_4014000000000000
    madd.d	$f16,$f16,$f14,$f13
    # Line 438
    sll	$t2,$t2,0x3
    # Line 418
    mul.d	$f12,$f12,$f5
    # Line 438
    addu	$t2,$a0,$t2
    # Line 433
    nmsub.d	$f16,$f16,$f17,$f8
    # Line 425
    mul.d	$f2,$f2,$f7
    # Line 438
    sub.d	$f11,$f11,$f12
    lwc1	$f8,0($t2)
    # Line 421
    nmsub.d	$f15,$f15,$f29,$f0
    # Line 438
    add.d	$f2,$f2,$f11
    nmsub.d	$f2,$f2,$f10,$f9
    cvt.d.s	$f8,$f8
    # Line 421
    madd.d	$f15,$f15,$f14,$f5
    # Line 438
    madd.d	$f2,$f2,$f8,$f9
    # Line 411
    cvt.s.d	$f1,$f1
    # Line 421
    lwc1	$f0,_lit_420c0000
    # Line 413
    cvt.s.d	$f31,$f31
    # Line 415
    cvt.s.d	$f27,$f27
    # Line 429
    mul.d	$f6,$f6,$f7
    # Line 409
    swc1	$f19,4($sp)
    # Line 418
    cvt.s.d	$f25,$f25
    # Line 421
    mul.s	$f19,$f19,$f0
    mul.d	$f23,$f23,$f5
    # Line 438
    sub.d	$f2,$f2,$f6
    # Line 421
    cvt.d.s	$f19,$f19
    # Line 415
    mul.d	$f29,$f29,$f3
    # Line 438
    add.d	$f23,$f23,$f2
    # Line 421
    sub.d	$f15,$f15,$f19
    # Line 438
    sub.d	$f23,$f23,$f29
    # Line 411
    ldc1	$f29,_lit8_4026000000000000
    swc1	$f1,12($sp)
    # Line 421
    cvt.s.d	$f15,$f15
    # Line 413
    swc1	$f31,16($sp)
    # Line 410
    sub.d	$f4,$f4,$f17
    # Line 415
    swc1	$f27,20($sp)
    # Line 425
    cvt.s.d	$f21,$f21
    # Line 411
    mul.d	$f14,$f14,$f29
    # Line 418
    swc1	$f25,24($sp)
    # Line 410
    cvt.s.d	$f4,$f4
    # Line 421
    swc1	$f15,28($sp)
    # Line 438
    add.d	$f14,$f14,$f23
    # Line 425
    swc1	$f21,32($sp)
    # Line 429
    cvt.s.d	$f18,$f18
    # Line 410
    swc1	$f4,8($sp)
    # Line 438
    sub.d	$f14,$f14,$f17
    # Line 429
    swc1	$f18,36($sp)
    # Line 433
    cvt.s.d	$f16,$f16
    swc1	$f16,40($sp)
    # Line 438
    cvt.s.d	$f14,$f14
    swc1	$f14,44($sp)
.L0d97a190:
    # Line 588
    slti	$t0,$a7,2
    bnez	$t0,.L0d97a200
    addiu	$a0,$sp,4
    sll	$a6,$a7,0x2
    addiu	$t1,$a7,-1
    move	$t0,$t1
    andi	$t1,$t1,0x1
    addu	$a6,$a6,$sp
    sll	$a5,$a3,0x2
    addu	$a1,$a5,$a2
    beqz	$t1,.L0d97a1d0
    sra	$t2,$t0,0x1
    # Line 590
    lwc1	$f1,4($sp)
    # Line 589
    addiu	$a0,$sp,8
    # Line 590
    swc1	$f1,0($a1)
    # Line 589
    addu	$a1,$a1,$a5
.L0d97a1d0:
    beqz	$t2,.L0d97a200
    nop
    nop
    nop
.L0d97a1e0:
    # Line 590
    lwc1	$f3,0($a0)
    lwc1	$f2,4($a0)
    # Line 589
    addiu	$a0,$a0,8
    addu	$t3,$a1,$a5
    # Line 590
    swc1	$f3,0($a1)
    # Line 589
    addu	$a1,$t3,$a5
    bne	$a0,$a6,.L0d97a1e0
    # Line 590
    swc1	$f2,0($t3)
.L0d97a200:
    # Line 591
    jr	$ra
    addiu	$sp,$sp,112
.L0d97a208:
    # Line 538
    ldc1	$f27,_lit8_4050800000000000
    sdc1	$f26,88($sp)
    # Line 535
    sll	$a6,$a3,0x2
    sdc1	$f28,96($sp)
    addu	$v0,$a6,$a0
    # Line 538
    addu	$t1,$a3,$a3
    # Line 535
    lwc1	$f21,0($v0)
    lwc1	$f28,0($a0)
    # Line 538
    sll	$t1,$t1,0x2
    # Line 536
    subu	$a1,$a6,$a3
    # Line 538
    ldc1	$f26,_lit8_4063400000000000
    # Line 536
    sll	$v1,$a1,0x2
    # Line 538
    addu	$t1,$a0,$t1
    lwc1	$f11,0($t1)
    # Line 536
    addu	$at,$v1,$a3
    # Line 535
    cvt.d.s	$f21,$f21
    # Line 538
    ldc1	$f29,_lit8_4056c00000000000
    # Line 535
    cvt.d.s	$f28,$f28
    # Line 536
    sll	$at,$at,0x2
    # Line 535
    ldc1	$f0,_lit8_402c000000000000
    # Line 538
    mul.d	$f26,$f21,$f26
    # Line 536
    addu	$at,$a0,$at
    # Line 538
    msub.d	$f26,$f26,$f28,$f27
    # Line 536
    lwc1	$f13,0($at)
    # Line 538
    cvt.d.s	$f11,$f11
    # Line 536
    ldc1	$f1,_lit8_4028000000000000
    # Line 538
    madd.d	$f26,$f26,$f11,$f29
    sdc1	$f30,104($sp)
    # Line 536
    cvt.d.s	$f13,$f13
    # Line 535
    mul.d	$f9,$f21,$f0
    ldc1	$f31,_lit8_c02a000000000000
    # Line 536
    msub.d	$f30,$f9,$f28,$f1
    # Line 534
    sll	$t9,$a3,0x3
    # Line 538
    nmsub.d	$f26,$f26,$f13,$f0
    # Line 534
    subu	$a4,$t9,$a3
    # Line 536
    madd.d	$f30,$f30,$f13,$f0
    # Line 534
    sll	$t8,$a4,0x3
    # Line 543
    addu	$t0,$a0,$v1
    # Line 535
    madd.d	$f31,$f9,$f28,$f31
    # Line 534
    addu	$t8,$a0,$t8
    # Line 543
    lwc1	$f10,0($t0)
    # Line 580
    msub.d	$f9,$f28,$f21,$f0
    # Line 543
    ldc1	$f3,_lit8_4076c00000000000
    # Line 554
    addu	$v0,$a6,$a3
    # Line 550
    sll	$a6,$a3,0x4
    # Line 535
    lwc1	$f16,0($t8)
    # Line 550
    addu	$a6,$a0,$a6
    # Line 580
    nmsub.d	$f9,$f9,$f11,$f29
    # Line 558
    sll	$a5,$v0,0x2
    # Line 550
    lwc1	$f5,0($a6)
    # Line 543
    cvt.d.s	$f10,$f10
    # Line 550
    ldc1	$f25,_lit8_408f480000000000
    # Line 558
    addu	$a5,$a0,$a5
    lwc1	$f8,0($a5)
    # Line 535
    cvt.d.s	$f16,$f16
    # Line 580
    madd.d	$f7,$f9,$f10,$f3
    sdc1	$f24,80($sp)
    # Line 568
    sll	$a5,$a1,0x3
    # Line 550
    cvt.d.s	$f5,$f5
    # Line 558
    ldc1	$f2,_lit8_409f480000000000
    # Line 580
    sll	$a4,$a4,0x2
    # Line 568
    addu	$a5,$a0,$a5
    # Line 536
    nmsub.d	$f30,$f30,$f16,$f1
    # Line 580
    addu	$a4,$a0,$a4
    # Line 568
    lwc1	$f6,0($a5)
    # Line 558
    cvt.d.s	$f8,$f8
    # Line 580
    nmsub.d	$f7,$f7,$f5,$f25
    lwc1	$f4,0($a4)
    # Line 568
    ldc1	$f1,_lit8_40a7760000000000
    # Line 580
    madd.d	$f0,$f7,$f8,$f2
    # Line 538
    ldc1	$f27,_lit8_4026000000000000
    # Line 568
    cvt.d.s	$f6,$f6
    # Line 580
    ldc1	$f7,_lit8_40aad00000000000
    # Line 543
    ldc1	$f24,_lit8_4083b00000000000
    # Line 580
    cvt.d.s	$f4,$f4
    nmsub.d	$f0,$f0,$f6,$f1
    # Line 538
    madd.d	$f26,$f26,$f16,$f27
    # Line 543
    ldc1	$f27,_lit8_c064a00000000000
    # Line 580
    madd.d	$f0,$f0,$f4,$f7
    # Line 540
    ldc1	$f7,_lit8_4061800000000000
    # Line 543
    mul.d	$f24,$f21,$f24
    # Line 540
    ldc1	$f4,_lit8_c04b800000000000
    sll	$a1,$a1,0x4
    # Line 543
    madd.d	$f24,$f24,$f28,$f27
    sdc1	$f22,72($sp)
    # Line 540
    addu	$a1,$a0,$a1
    mul.d	$f27,$f21,$f7
    lwc1	$f22,0($a1)
    madd.d	$f27,$f27,$f28,$f4
    cvt.d.s	$f22,$f22
    # Line 543
    ldc1	$f4,_lit8_4089980000000000
    # Line 540
    nmsub.d	$f27,$f27,$f11,$f29
    madd.d	$f27,$f27,$f22,$f29
    # Line 543
    nmsub.d	$f24,$f24,$f11,$f4
    # Line 540
    ldc1	$f4,_lit8_404b800000000000
    nmsub.d	$f27,$f27,$f13,$f7
    # Line 543
    madd.d	$f24,$f24,$f10,$f3
    # Line 540
    madd.d	$f27,$f27,$f16,$f4
    # Line 543
    ldc1	$f4,_lit8_405f800000000000
    # Line 546
    ldc1	$f12,_lit8_407f800000000000
    # Line 543
    nmsub.d	$f24,$f24,$f22,$f29
    ldc1	$f29,_lit8_4046800000000000
    # Line 546
    ldc1	$f7,_lit8_405e000000000000
    # Line 543
    madd.d	$f24,$f24,$f13,$f4
    # Line 546
    mul.d	$f23,$f21,$f12
    subu	$v1,$v1,$a3
    # Line 543
    nmsub.d	$f24,$f24,$f16,$f29
    # Line 546
    ldc1	$f29,_lit8_4086c00000000000
    sll	$v1,$v1,0x2
    msub.d	$f23,$f23,$f28,$f7
    # Line 554
    ldc1	$f18,_lit8_c05f800000000000
    # Line 546
    addu	$v1,$a0,$v1
    lwc1	$f19,0($v1)
    madd.d	$f23,$f23,$f11,$f29
    # Line 554
    ldc1	$f9,_lit8_4088800000000000
    mul.d	$f18,$f28,$f18
    ldc1	$f14,_lit8_409ddc0000000000
    # Line 546
    cvt.d.s	$f19,$f19
    nmsub.d	$f23,$f23,$f10,$f3
    sdc1	$f20,64($sp)
    # Line 554
    madd.d	$f20,$f18,$f21,$f9
    # Line 546
    madd.d	$f23,$f23,$f19,$f3
    # Line 554
    ldc1	$f3,_lit8_40a1100000000000
    sll	$v0,$v0,0x3
    nmsub.d	$f20,$f20,$f11,$f14
    addu	$v0,$v0,$a0
    # Line 546
    nmsub.d	$f23,$f23,$f22,$f29
    # Line 554
    lwc1	$f29,0($v0)
    madd.d	$f20,$f20,$f10,$f3
    cvt.d.s	$f29,$f29
    nmsub.d	$f20,$f20,$f5,$f25
    madd.d	$f20,$f20,$f29,$f25
    nmsub.d	$f20,$f20,$f19,$f3
    madd.d	$f20,$f20,$f22,$f14
    nmsub.d	$f20,$f20,$f13,$f9
    madd.d	$f20,$f20,$f16,$f4
    # Line 558
    ldc1	$f4,_lit8_408ea00000000000
    madd.d	$f18,$f18,$f21,$f4
    ldc1	$f4,_lit8_40a8e20000000000
    nmsub.d	$f18,$f18,$f11,$f4
    ldc1	$f4,_lit8_40b5540000000000
    # Line 568
    ldc1	$f15,_lit8_4072600000000000
    # Line 558
    madd.d	$f18,$f18,$f10,$f4
    ldc1	$f4,_lit8_40b38d0000000000
    # Line 568
    ldc1	$f17,_lit8_403c000000000000
    mul.d	$f15,$f21,$f15
    # Line 558
    nmsub.d	$f18,$f18,$f5,$f4
    # Line 568
    msub.d	$f15,$f15,$f28,$f17
    # Line 558
    ldc1	$f17,_lit8_4095540000000000
    madd.d	$f18,$f18,$f8,$f2
    ldc1	$f14,_lit8_409c700000000000
    nmsub.d	$f18,$f18,$f29,$f25
    # Line 568
    madd.d	$f15,$f15,$f11,$f17
    # Line 558
    ldc1	$f9,_lit8_407ea00000000000
    madd.d	$f18,$f18,$f19,$f14
    # Line 546
    madd.d	$f23,$f23,$f13,$f12
    # Line 563
    ldc1	$f4,_lit8_404c000000000000
    # Line 558
    nmsub.d	$f18,$f18,$f22,$f17
    # Line 563
    mul.d	$f17,$f21,$f9
    msub.d	$f17,$f17,$f28,$f4
    ldc1	$f12,_lit8_40ac700000000000
    # Line 546
    nmsub.d	$f23,$f23,$f16,$f7
    # Line 558
    ldc1	$f25,_lit8_4051800000000000
    # Line 563
    madd.d	$f17,$f17,$f11,$f14
    addu	$at,$t9,$a3
    ldc1	$f7,_lit8_40af480000000000
    # Line 558
    madd.d	$f18,$f18,$f13,$f9
    # Line 563
    sll	$at,$at,0x2
    nmsub.d	$f17,$f17,$f10,$f12
    addu	$at,$a0,$at
    # Line 558
    nmsub.d	$f18,$f18,$f16,$f25
    # Line 563
    lwc1	$f25,0($at)
    madd.d	$f17,$f17,$f5,$f7
    cvt.d.s	$f25,$f25
    nmsub.d	$f17,$f17,$f8,$f2
    madd.d	$f17,$f17,$f25,$f2
    nmsub.d	$f17,$f17,$f29,$f7
    madd.d	$f17,$f17,$f19,$f12
    nmsub.d	$f17,$f17,$f22,$f14
    madd.d	$f17,$f17,$f13,$f9
    # Line 568
    ldc1	$f9,_lit8_40b7760000000000
    nmsub.d	$f15,$f15,$f10,$f12
    madd.d	$f15,$f15,$f5,$f9
    nmsub.d	$f15,$f15,$f8,$f9
    madd.d	$f15,$f15,$f6,$f1
    nmsub.d	$f15,$f15,$f25,$f2
    madd.d	$f15,$f15,$f29,$f1
    # Line 554
    mul.d	$f3,$f19,$f3
    # Line 568
    sub.d	$f15,$f15,$f3
    ldc1	$f3,_lit8_408c700000000000
    madd.d	$f15,$f15,$f22,$f3
    # Line 550
    ldc1	$f3,_lit8_4055000000000000
    # Line 563
    nmsub.d	$f17,$f17,$f16,$f4
    # Line 574
    ldc1	$f4,_lit8_c01c000000000000
    mul.d	$f14,$f21,$f3
    madd.d	$f14,$f14,$f28,$f4
    # Line 550
    ldc1	$f4,_lit8_4092600000000000
    ldc1	$f9,_lit8_406a400000000000
    mul.d	$f21,$f21,$f4
    msub.d	$f21,$f21,$f28,$f9
    ldc1	$f28,_lit8_40a3e80000000000
    # Line 574
    ldc1	$f4,_lit8_407c700000000000
    # Line 550
    madd.d	$f21,$f21,$f11,$f28
    nmsub.d	$f21,$f21,$f10,$f28
    # Line 574
    ldc1	$f28,_lit8_4096c00000000000
    nmsub.d	$f14,$f14,$f11,$f4
    madd.d	$f14,$f14,$f10,$f28
    nmsub.d	$f14,$f14,$f5,$f1
    sll	$t9,$t9,0x2
    madd.d	$f14,$f14,$f8,$f7
    addu	$t9,$a0,$t9
    nmsub.d	$f14,$f14,$f6,$f1
    lwc1	$f6,0($t9)
    cvt.d.s	$f6,$f6
    madd.d	$f14,$f14,$f6,$f1
    nmsub.d	$f14,$f14,$f25,$f7
    # Line 568
    ldc1	$f8,_lit8_4035000000000000
    # Line 574
    madd.d	$f14,$f14,$f29,$f1
    # Line 568
    nmsub.d	$f15,$f15,$f13,$f9
    # Line 574
    nmsub.d	$f14,$f14,$f19,$f28
    # Line 568
    madd.d	$f15,$f15,$f16,$f8
    # Line 574
    madd.d	$f14,$f14,$f22,$f4
    # Line 580
    nmsub.d	$f0,$f0,$f6,$f1
    # Line 550
    ldc1	$f1,_lit8_408f480000000000
    # Line 574
    nmsub.d	$f14,$f14,$f13,$f3
    # Line 550
    ldc1	$f28,_lit8_4076c00000000000
    madd.d	$f21,$f21,$f5,$f1
    # Line 535
    sub.d	$f31,$f31,$f16
    # Line 550
    ldc1	$f5,_lit8_4083e80000000000
    # Line 535
    cvt.s.d	$f31,$f31
    # Line 550
    nmsub.d	$f21,$f21,$f19,$f28
    # Line 535
    swc1	$f31,8($sp)
    # Line 536
    cvt.s.d	$f30,$f30
    swc1	$f30,12($sp)
    # Line 550
    madd.d	$f21,$f21,$f22,$f5
    ldc1	$f30,104($sp)
    # Line 538
    cvt.s.d	$f26,$f26
    swc1	$f26,16($sp)
    # Line 540
    ldc1	$f26,_lit8_4056c00000000000
    cvt.s.d	$f27,$f27
    swc1	$f27,20($sp)
    # Line 543
    cvt.s.d	$f24,$f24
    # Line 563
    mul.d	$f25,$f25,$f2
    # Line 543
    swc1	$f24,24($sp)
    # Line 546
    cvt.s.d	$f23,$f23
    # Line 580
    add.d	$f25,$f25,$f0
    # Line 554
    mul.d	$f29,$f29,$f1
    # Line 550
    ldc1	$f5,_lit8_4078800000000000
    ldc1	$f24,80($sp)
    # Line 554
    cvt.s.d	$f20,$f20
    # Line 546
    swc1	$f23,28($sp)
    # Line 580
    sub.d	$f25,$f25,$f29
    # Line 546
    mul.d	$f19,$f19,$f28
    # Line 554
    swc1	$f20,36($sp)
    # Line 558
    cvt.s.d	$f18,$f18
    # Line 550
    nmsub.d	$f21,$f21,$f13,$f5
    ldc1	$f20,64($sp)
    # Line 540
    mul.d	$f22,$f22,$f26
    # Line 580
    add.d	$f19,$f19,$f25
    # Line 558
    swc1	$f18,40($sp)
    # Line 580
    sub.d	$f19,$f19,$f22
    # Line 536
    ldc1	$f22,_lit8_402c000000000000
    # Line 550
    madd.d	$f21,$f21,$f16,$f3
    # Line 563
    cvt.s.d	$f17,$f17
    # Line 574
    ldc1	$f3,_lit8_401c000000000000
    # Line 563
    swc1	$f17,44($sp)
    # Line 568
    cvt.s.d	$f15,$f15
    # Line 534
    lwc1	$f2,0($t8)
    # Line 536
    mul.d	$f13,$f13,$f22
    # Line 568
    swc1	$f15,48($sp)
    # Line 574
    madd.d	$f14,$f14,$f16,$f3
    # Line 534
    swc1	$f2,4($sp)
    # Line 580
    add.d	$f13,$f13,$f19
    ldc1	$f28,96($sp)
    ldc1	$f26,88($sp)
    sub.d	$f13,$f13,$f16
    ldc1	$f22,72($sp)
    # Line 550
    cvt.s.d	$f21,$f21
    # Line 580
    cvt.s.d	$f13,$f13
    # Line 550
    swc1	$f21,32($sp)
    # Line 580
    swc1	$f13,56($sp)
    # Line 574
    cvt.s.d	$f14,$f14
    # Line 586
    b	.L0d97a190
    # Line 574
    swc1	$f14,52($sp)
.L0d97a678:
    # Line 486
    sll	$a5,$a3,0x2
    # Line 515
    ldc1	$f15,_lit8_4068600000000000
    # Line 487
    addu	$t8,$a5,$a0
    # Line 490
    addu	$t9,$a3,$a3
    # Line 487
    lwc1	$f19,0($t8)
    ldc1	$f21,_lit8_402a000000000000
    # Line 490
    sll	$t9,$t9,0x2
    # Line 487
    lwc1	$f3,0($a0)
    # Line 490
    addu	$t9,$a0,$t9
    lwc1	$f27,0($t9)
    # Line 487
    cvt.d.s	$f19,$f19
    # Line 515
    ldc1	$f8,_lit8_4035000000000000
    mul.d	$f6,$f19,$f15
    # Line 490
    ldc1	$f5,_lit8_4053800000000000
    # Line 486
    subu	$a1,$a5,$a3
    # Line 487
    cvt.d.s	$f3,$f3
    # Line 486
    sll	$v1,$a1,0x2
    # Line 490
    cvt.d.s	$f27,$f27
    # Line 487
    mul.d	$f21,$f19,$f21
    # Line 510
    ldc1	$f11,_lit8_4088600000000000
    # Line 515
    msub.d	$f6,$f6,$f3,$f8
    # Line 495
    addu	$t8,$a0,$v1
    lwc1	$f16,0($t8)
    # Line 526
    sub.d	$f0,$f21,$f3
    nmsub.d	$f0,$f0,$f27,$f5
    # Line 520
    ldc1	$f13,_lit8_401c000000000000
    # Line 502
    sll	$t0,$a3,0x4
    addu	$t0,$a0,$t0
    # Line 495
    ldc1	$f29,_lit8_4071e00000000000
    # Line 515
    madd.d	$f6,$f6,$f27,$f11
    # Line 498
    addu	$a5,$a5,$a3
    # Line 502
    lwc1	$f14,0($t0)
    # Line 495
    cvt.d.s	$f16,$f16
    # Line 502
    ldc1	$f12,_lit8_409ad00000000000
    # Line 520
    mul.d	$f5,$f19,$f5
    # Line 510
    sll	$t2,$a5,0x2
    # Line 515
    ldc1	$f10,_lit8_40a0c20000000000
    # Line 510
    addu	$t2,$a0,$t2
    # Line 495
    mul.d	$f29,$f16,$f29
    # Line 520
    msub.d	$f5,$f5,$f3,$f13
    # Line 510
    lwc1	$f31,0($t2)
    # Line 502
    cvt.d.s	$f14,$f14
    # Line 506
    sll	$a6,$a3,0x3
    # Line 515
    nmsub.d	$f6,$f6,$f16,$f12
    # Line 526
    add.d	$f29,$f29,$f0
    # Line 502
    ldc1	$f0,_lit8_4086580000000000
    # Line 520
    sll	$t1,$a1,0x3
    # Line 510
    ldc1	$f1,_lit8_40941c0000000000
    # Line 526
    subu	$t3,$a6,$a3
    # Line 520
    addu	$t1,$a0,$t1
    # Line 515
    madd.d	$f6,$f6,$f14,$f10
    # Line 526
    sll	$t3,$t3,0x2
    # Line 520
    lwc1	$f9,0($t1)
    # Line 510
    cvt.d.s	$f31,$f31
    # Line 502
    mul.d	$f0,$f14,$f0
    # Line 526
    addu	$t3,$a0,$t3
    lwc1	$f25,0($t3)
    sub.d	$f29,$f29,$f0
    madd.d	$f23,$f29,$f31,$f1
    # Line 515
    sll	$t0,$a6,0x2
    # Line 520
    cvt.d.s	$f9,$f9
    # Line 506
    addu	$a6,$a6,$a3
    # Line 515
    addu	$t0,$a0,$t0
    nmsub.d	$f6,$f6,$f31,$f1
    # Line 506
    sll	$a6,$a6,0x2
    # Line 526
    cvt.d.s	$f25,$f25
    # Line 515
    lwc1	$f0,0($t0)
    # Line 526
    nmsub.d	$f23,$f23,$f9,$f12
    # Line 520
    ldc1	$f7,_lit8_4078600000000000
    # Line 506
    addu	$a6,$a0,$a6
    lwc1	$f13,0($a6)
    # Line 526
    madd.d	$f23,$f23,$f25,$f12
    # Line 515
    cvt.d.s	$f0,$f0
    # Line 510
    ldc1	$f25,_lit8_4091e00000000000
    # Line 520
    madd.d	$f5,$f5,$f27,$f7
    # Line 506
    cvt.d.s	$f13,$f13
    # Line 515
    madd.d	$f6,$f6,$f0,$f1
    # Line 498
    sll	$a5,$a5,0x3
    # Line 520
    nmsub.d	$f5,$f5,$f16,$f25
    # Line 492
    subu	$a4,$v1,$a3
    # Line 498
    addu	$a5,$a0,$a5
    # Line 520
    ldc1	$f7,_lit8_40a41c0000000000
    # Line 515
    nmsub.d	$f6,$f6,$f13,$f10
    # Line 498
    lwc1	$f18,0($a5)
    # Line 492
    sll	$a4,$a4,0x2
    # Line 520
    madd.d	$f5,$f5,$f14,$f10
    # Line 492
    addu	$a4,$a0,$a4
    # Line 520
    nmsub.d	$f5,$f5,$f31,$f7
    # Line 492
    lwc1	$f7,0($a4)
    # Line 488
    sll	$a1,$a1,0x4
    # Line 498
    cvt.d.s	$f18,$f18
    # Line 488
    addu	$a1,$a0,$a1
    # Line 486
    addu	$v1,$v1,$a3
    sll	$v1,$v1,0x2
    # Line 515
    madd.d	$f6,$f6,$f18,$f12
    # Line 488
    lwc1	$f10,0($a1)
    # Line 492
    cvt.d.s	$f7,$f7
    # Line 486
    addu	$v1,$a0,$v1
    lwc1	$f29,0($v1)
    # Line 515
    nmsub.d	$f6,$f6,$f7,$f11
    # Line 488
    cvt.d.s	$f10,$f10
    # Line 520
    madd.d	$f5,$f5,$f9,$f12
    # Line 506
    ldc1	$f17,_lit8_4096580000000000
    # Line 487
    cvt.d.s	$f4,$f29
    # Line 515
    madd.d	$f6,$f6,$f10,$f15
    # Line 520
    nmsub.d	$f5,$f5,$f0,$f1
    # Line 515
    nmsub.d	$f6,$f6,$f4,$f8
    # Line 520
    ldc1	$f8,_lit8_408ad00000000000
    madd.d	$f5,$f5,$f13,$f17
    # Line 506
    ldc1	$f15,_lit8_407c700000000000
    # Line 520
    nmsub.d	$f5,$f5,$f18,$f8
    # Line 510
    ldc1	$f8,_lit8_c04c000000000000
    ldc1	$f2,_lit8_4098600000000000
    # Line 506
    mul.d	$f9,$f19,$f15
    # Line 510
    madd.d	$f8,$f9,$f3,$f8
    nmsub.d	$f8,$f8,$f27,$f2
    ldc1	$f2,_lit8_40a6580000000000
    madd.d	$f8,$f8,$f16,$f2
    nmsub.d	$f8,$f8,$f14,$f2
    # Line 520
    ldc1	$f2,_lit8_4073800000000000
    # Line 510
    madd.d	$f8,$f8,$f31,$f1
    # Line 520
    ldc1	$f31,_lit8_4050400000000000
    madd.d	$f5,$f5,$f7,$f2
    nmsub.d	$f5,$f5,$f10,$f31
    # Line 510
    ldc1	$f31,_lit8_4086580000000000
    nmsub.d	$f8,$f8,$f13,$f31
    madd.d	$f8,$f8,$f18,$f25
    nmsub.d	$f8,$f8,$f7,$f11
    ldc1	$f11,_lit8_4070400000000000
    madd.d	$f8,$f8,$f10,$f11
    # Line 506
    ldc1	$f11,_lit8_c051800000000000
    madd.d	$f9,$f9,$f3,$f11
    ldc1	$f11,_lit8_4092480000000000
    nmsub.d	$f9,$f9,$f27,$f11
    madd.d	$f9,$f9,$f16,$f17
    nmsub.d	$f9,$f9,$f14,$f31
    madd.d	$f9,$f9,$f13,$f31
    nmsub.d	$f9,$f9,$f18,$f17
    # Line 510
    ldc1	$f17,_lit8_4041800000000000
    # Line 506
    madd.d	$f9,$f9,$f7,$f11
    # Line 502
    ldc1	$f11,_lit8_4086c00000000000
    # Line 510
    nmsub.d	$f8,$f8,$f4,$f17
    # Line 502
    ldc1	$f17,_lit8_405f800000000000
    mul.d	$f11,$f19,$f11
    msub.d	$f11,$f11,$f3,$f17
    ldc1	$f17,_lit8_4099980000000000
    # Line 520
    ldc1	$f25,_lit8_4018000000000000
    # Line 502
    madd.d	$f11,$f11,$f27,$f17
    nmsub.d	$f11,$f11,$f16,$f12
    # Line 520
    madd.d	$f5,$f5,$f4,$f25
    # Line 502
    ldc1	$f25,_lit8_4071e00000000000
    # Line 506
    ldc1	$f12,_lit8_4051800000000000
    # Line 502
    madd.d	$f11,$f11,$f14,$f31
    # Line 506
    nmsub.d	$f9,$f9,$f10,$f15
    # Line 495
    ldc1	$f15,_lit8_407d400000000000
    # Line 502
    nmsub.d	$f11,$f11,$f18,$f25
    # Line 506
    madd.d	$f9,$f9,$f4,$f12
    # Line 502
    ldc1	$f12,_lit8_4071100000000000
    madd.d	$f11,$f11,$f7,$f15
    nmsub.d	$f11,$f11,$f10,$f12
    ldc1	$f12,_lit8_404c000000000000
    # Line 498
    ldc1	$f17,_lit8_4076c00000000000
    ldc1	$f14,_lit8_4055000000000000
    # Line 502
    madd.d	$f11,$f11,$f4,$f12
    # Line 498
    ldc1	$f2,_lit8_4081100000000000
    mul.d	$f12,$f19,$f17
    msub.d	$f12,$f12,$f3,$f14
    madd.d	$f12,$f12,$f27,$f2
    nmsub.d	$f12,$f12,$f16,$f25
    madd.d	$f12,$f12,$f18,$f25
    nmsub.d	$f12,$f12,$f7,$f2
    # Line 495
    ldc1	$f2,_lit8_c05e000000000000
    mul.d	$f15,$f19,$f15
    madd.d	$f15,$f15,$f3,$f2
    ldc1	$f2,_lit8_4083800000000000
    nmsub.d	$f15,$f15,$f27,$f2
    # Line 498
    madd.d	$f12,$f12,$f10,$f17
    # Line 495
    ldc1	$f17,_lit8_4053800000000000
    madd.d	$f15,$f15,$f16,$f25
    ldc1	$f16,_lit8_405a000000000000
    nmsub.d	$f15,$f15,$f7,$f17
    madd.d	$f15,$f15,$f10,$f16
    ldc1	$f16,_lit8_4042000000000000
    # Line 492
    ldc1	$f2,_lit8_405d400000000000
    # Line 498
    nmsub.d	$f12,$f12,$f4,$f14
    # Line 492
    ldc1	$f14,_lit8_c046800000000000
    # Line 495
    nmsub.d	$f15,$f15,$f4,$f16
    # Line 492
    mul.d	$f16,$f19,$f2
    madd.d	$f16,$f16,$f3,$f14
    # Line 490
    ldc1	$f14,_lit8_4060400000000000
    mul.d	$f19,$f19,$f14
    ldc1	$f14,_lit8_404b800000000000
    # Line 492
    nmsub.d	$f16,$f16,$f27,$f17
    # Line 490
    msub.d	$f19,$f19,$f3,$f14
    # Line 492
    madd.d	$f16,$f16,$f7,$f17
    # Line 490
    madd.d	$f19,$f19,$f27,$f17
    # Line 487
    ldc1	$f27,_lit8_c028000000000000
    # Line 492
    nmsub.d	$f16,$f16,$f10,$f2
    # Line 488
    ldc1	$f2,_lit8_4026000000000000
    # Line 490
    ldc1	$f14,_lit8_402a000000000000
    # Line 487
    madd.d	$f27,$f21,$f3,$f27
    # Line 488
    msub.d	$f21,$f21,$f3,$f2
    madd.d	$f21,$f21,$f10,$f14
    # Line 490
    nmsub.d	$f19,$f19,$f10,$f14
    ldc1	$f3,_lit8_4024000000000000
    # Line 488
    nmsub.d	$f21,$f21,$f4,$f2
    # Line 492
    ldc1	$f2,_lit8_4046800000000000
    # Line 490
    madd.d	$f19,$f19,$f4,$f3
    # Line 492
    madd.d	$f16,$f16,$f4,$f2
    # Line 515
    mul.d	$f0,$f0,$f1
    cvt.s.d	$f6,$f6
    # Line 526
    sub.d	$f23,$f23,$f0
    # Line 520
    cvt.s.d	$f5,$f5
    # Line 506
    mul.d	$f13,$f13,$f31
    # Line 510
    cvt.s.d	$f8,$f8
    # Line 526
    add.d	$f13,$f13,$f23
    # Line 506
    cvt.s.d	$f9,$f9
    # Line 498
    mul.d	$f18,$f18,$f25
    # Line 502
    cvt.s.d	$f11,$f11
    # Line 486
    swc1	$f29,4($sp)
    # Line 526
    sub.d	$f13,$f13,$f18
    # Line 515
    swc1	$f6,44($sp)
    # Line 498
    cvt.s.d	$f12,$f12
    # Line 492
    mul.d	$f7,$f7,$f17
    # Line 520
    swc1	$f5,48($sp)
    # Line 495
    cvt.s.d	$f15,$f15
    # Line 510
    swc1	$f8,40($sp)
    # Line 526
    add.d	$f7,$f7,$f13
    # Line 488
    mul.d	$f10,$f10,$f14
    # Line 506
    swc1	$f9,36($sp)
    # Line 487
    sub.d	$f27,$f27,$f4
    # Line 502
    swc1	$f11,32($sp)
    # Line 526
    sub.d	$f7,$f7,$f10
    # Line 498
    swc1	$f12,28($sp)
    # Line 487
    cvt.s.d	$f27,$f27
    # Line 495
    swc1	$f15,24($sp)
    # Line 526
    add.d	$f4,$f4,$f7
    # Line 487
    swc1	$f27,8($sp)
    # Line 490
    cvt.s.d	$f19,$f19
    # Line 526
    cvt.s.d	$f4,$f4
    # Line 490
    swc1	$f19,16($sp)
    # Line 526
    swc1	$f4,52($sp)
    # Line 488
    cvt.s.d	$f21,$f21
    swc1	$f21,12($sp)
    # Line 492
    cvt.s.d	$f16,$f16
    # Line 532
    b	.L0d97a190
    # Line 492
    swc1	$f16,20($sp)
.L0d97aa54:
    # Line 474
    ldc1	$f4,_lit8_4018000000000000
    ldc1	$f17,_lit8_404e000000000000
    # Line 445
    sll	$a1,$a3,0x2
    # Line 469
    ldc1	$f3,_lit8_c035000000000000
    # Line 446
    addu	$a6,$a1,$a0
    lwc1	$f12,0($a6)
    lwc1	$f25,0($a0)
    # Line 449
    addu	$a5,$a3,$a3
    # Line 457
    ldc1	$f7,_lit8_404c000000000000
    # Line 449
    sll	$a5,$a5,0x2
    # Line 446
    ldc1	$f15,_lit8_4028000000000000
    # Line 449
    addu	$a5,$a0,$a5
    # Line 446
    cvt.d.s	$f12,$f12
    cvt.d.s	$f25,$f25
    # Line 445
    subu	$at,$a1,$a3
    # Line 449
    lwc1	$f16,0($a5)
    # Line 457
    ldc1	$f9,_lit8_406f800000000000
    # Line 474
    mul.d	$f1,$f12,$f17
    # Line 445
    sll	$v1,$at,0x2
    # Line 474
    msub.d	$f1,$f1,$f25,$f4
    # Line 449
    ldc1	$f13,_lit8_4050800000000000
    # Line 454
    addu	$a4,$a0,$v1
    # Line 461
    sll	$t1,$a3,0x4
    # Line 454
    lwc1	$f10,0($a4)
    # Line 449
    cvt.d.s	$f16,$f16
    # Line 446
    mul.d	$f15,$f12,$f15
    # Line 454
    ldc1	$f19,_lit8_406b800000000000
    # Line 461
    addu	$t1,$a0,$t1
    # Line 451
    addu	$a1,$a1,$a3
    # Line 461
    lwc1	$f27,0($t1)
    # Line 479
    sub.d	$f0,$f25,$f15
    madd.d	$f31,$f0,$f16,$f13
    # Line 461
    ldc1	$f11,_lit8_4066800000000000
    # Line 457
    mul.d	$f5,$f12,$f9
    # Line 469
    sll	$t0,$a1,0x2
    # Line 454
    cvt.d.s	$f10,$f10
    # Line 461
    ldc1	$f23,_lit8_407ef00000000000
    # Line 457
    msub.d	$f5,$f5,$f25,$f7
    # Line 469
    addu	$t0,$a0,$t0
    # Line 479
    sll	$a6,$at,0x3
    # Line 469
    lwc1	$f14,0($t0)
    # Line 461
    cvt.d.s	$f27,$f27
    # Line 479
    nmsub.d	$f31,$f31,$f10,$f19
    # Line 469
    ldc1	$f6,_lit8_4088c00000000000
    # Line 479
    addu	$a6,$a0,$a6
    lwc1	$f21,0($a6)
    madd.d	$f18,$f31,$f27,$f23
    # Line 474
    ldc1	$f7,_lit8_4070800000000000
    # Line 469
    mul.d	$f2,$f12,$f11
    cvt.d.s	$f14,$f14
    # Line 479
    ldc1	$f29,_lit8_408ce00000000000
    # Line 469
    madd.d	$f2,$f2,$f25,$f3
    # Line 465
    ldc1	$f8,_lit8_4084a00000000000
    # Line 479
    cvt.d.s	$f21,$f21
    nmsub.d	$f18,$f18,$f14,$f6
    # Line 474
    madd.d	$f1,$f1,$f16,$f7
    # Line 479
    madd.d	$f18,$f18,$f21,$f29
    # Line 469
    ldc1	$f21,_lit8_4094a00000000000
    nmsub.d	$f2,$f2,$f16,$f8
    # Line 461
    ldc1	$f29,_lit8_408ef00000000000
    # Line 474
    nmsub.d	$f1,$f1,$f10,$f8
    # Line 469
    madd.d	$f2,$f2,$f10,$f21
    # Line 457
    sll	$a4,$a3,0x3
    ldc1	$f21,_lit8_4078c00000000000
    # Line 474
    madd.d	$f1,$f1,$f27,$f29
    subu	$a5,$a4,$a3
    # Line 469
    ldc1	$f3,_lit8_4097340000000000
    # Line 474
    sll	$a5,$a5,0x2
    nmsub.d	$f1,$f1,$f14,$f6
    addu	$a5,$a0,$a5
    # Line 457
    madd.d	$f5,$f5,$f16,$f21
    addu	$a4,$a4,$a3
    # Line 469
    nmsub.d	$f2,$f2,$f27,$f3
    # Line 474
    lwc1	$f3,0($a5)
    # Line 457
    sll	$a4,$a4,0x2
    addu	$a4,$a0,$a4
    nmsub.d	$f5,$f5,$f10,$f19
    # Line 469
    madd.d	$f2,$f2,$f14,$f6
    # Line 457
    lwc1	$f14,0($a4)
    # Line 474
    cvt.d.s	$f3,$f3
    # Line 451
    sll	$a1,$a1,0x3
    addu	$a1,$a0,$a1
    # Line 447
    subu	$v1,$v1,$a3
    # Line 479
    nmsub.d	$f18,$f18,$f3,$f6
    # Line 447
    sll	$v1,$v1,0x2
    # Line 457
    cvt.d.s	$f14,$f14
    # Line 474
    madd.d	$f1,$f1,$f3,$f6
    # Line 451
    lwc1	$f3,0($a1)
    # Line 447
    addu	$v1,$a0,$v1
    lwc1	$f6,0($v1)
    # Line 457
    madd.d	$f5,$f5,$f14,$f19
    # Line 451
    cvt.d.s	$f3,$f3
    # Line 465
    sll	$v0,$a3,0x5
    # Line 447
    cvt.d.s	$f6,$f6
    # Line 457
    nmsub.d	$f5,$f5,$f3,$f21
    # Line 465
    addu	$v0,$a0,$v0
    # Line 457
    madd.d	$f5,$f5,$f6,$f9
    # Line 465
    lwc1	$f9,0($v0)
    cvt.d.s	$f9,$f9
    # Line 469
    nmsub.d	$f2,$f2,$f9,$f23
    madd.d	$f2,$f2,$f14,$f8
    # Line 474
    nmsub.d	$f1,$f1,$f9,$f29
    madd.d	$f1,$f1,$f14,$f8
    # Line 445
    sll	$at,$at,0x4
    # Line 457
    mul.d	$f21,$f3,$f21
    # Line 445
    addu	$at,$a0,$at
    # Line 474
    nmsub.d	$f1,$f1,$f3,$f7
    # Line 469
    ldc1	$f7,_lit8_405e000000000000
    sub.d	$f2,$f2,$f21
    # Line 445
    lwc1	$f21,0($at)
    # Line 469
    madd.d	$f2,$f2,$f6,$f7
    ldc1	$f7,_lit8_402e000000000000
    # Line 446
    cvt.d.s	$f0,$f21
    # Line 469
    nmsub.d	$f2,$f2,$f0,$f7
    # Line 461
    ldc1	$f7,_lit8_407a400000000000
    # Line 474
    madd.d	$f1,$f1,$f6,$f17
    # Line 461
    ldc1	$f17,_lit8_4051800000000000
    mul.d	$f7,$f12,$f7
    msub.d	$f7,$f7,$f25,$f17
    # Line 465
    ldc1	$f17,_lit8_406e000000000000
    ldc1	$f31,_lit8_c041800000000000
    # Line 474
    nmsub.d	$f1,$f1,$f0,$f4
    # Line 461
    madd.d	$f7,$f7,$f16,$f29
    ldc1	$f29,_lit8_4091300000000000
    # Line 465
    mul.d	$f4,$f12,$f17
    madd.d	$f4,$f4,$f25,$f31
    # Line 461
    nmsub.d	$f7,$f7,$f10,$f29
    # Line 465
    ldc1	$f29,_lit8_408b800000000000
    nmsub.d	$f4,$f4,$f16,$f8
    madd.d	$f4,$f4,$f10,$f29
    nmsub.d	$f4,$f4,$f27,$f23
    madd.d	$f4,$f4,$f9,$f23
    nmsub.d	$f4,$f4,$f14,$f29
    # Line 461
    madd.d	$f7,$f7,$f27,$f23
    # Line 465
    madd.d	$f4,$f4,$f3,$f8
    # Line 461
    ldc1	$f8,_lit8_4074a00000000000
    nmsub.d	$f7,$f7,$f14,$f19
    madd.d	$f7,$f7,$f3,$f8
    # Line 454
    ldc1	$f8,_lit8_4075000000000000
    ldc1	$f27,_lit8_c055000000000000
    # Line 465
    nmsub.d	$f4,$f4,$f6,$f17
    # Line 461
    nmsub.d	$f7,$f7,$f6,$f11
    ldc1	$f11,_lit8_4041800000000000
    # Line 454
    ldc1	$f17,_lit8_407ce00000000000
    mul.d	$f8,$f12,$f8
    madd.d	$f8,$f8,$f25,$f27
    # Line 465
    madd.d	$f4,$f4,$f0,$f11
    # Line 451
    ldc1	$f27,_lit8_4058000000000000
    # Line 454
    nmsub.d	$f8,$f8,$f16,$f17
    # Line 451
    ldc1	$f17,_lit8_c042000000000000
    # Line 461
    madd.d	$f7,$f7,$f0,$f11
    # Line 451
    mul.d	$f11,$f12,$f27
    madd.d	$f11,$f11,$f25,$f17
    # Line 449
    ldc1	$f17,_lit8_405b000000000000
    # Line 454
    madd.d	$f8,$f8,$f10,$f19
    # Line 451
    nmsub.d	$f11,$f11,$f16,$f13
    # Line 449
    mul.d	$f12,$f12,$f17
    # Line 454
    ldc1	$f10,_lit8_4055000000000000
    # Line 451
    madd.d	$f11,$f11,$f3,$f13
    # Line 446
    ldc1	$f17,_lit8_c026000000000000
    # Line 454
    nmsub.d	$f8,$f8,$f3,$f13
    # Line 451
    nmsub.d	$f11,$f11,$f6,$f27
    # Line 449
    ldc1	$f27,_lit8_4046800000000000
    # Line 454
    madd.d	$f8,$f8,$f6,$f10
    ldc1	$f10,_lit8_403c000000000000
    # Line 446
    madd.d	$f17,$f15,$f25,$f17
    # Line 449
    msub.d	$f12,$f12,$f25,$f27
    # Line 447
    ldc1	$f27,_lit8_4024000000000000
    # Line 454
    nmsub.d	$f8,$f8,$f0,$f10
    # Line 447
    ldc1	$f10,_lit8_4028000000000000
    # Line 449
    madd.d	$f12,$f12,$f16,$f13
    # Line 447
    msub.d	$f15,$f15,$f25,$f27
    # Line 449
    ldc1	$f25,_lit8_4022000000000000
    nmsub.d	$f12,$f12,$f6,$f10
    # Line 447
    madd.d	$f15,$f15,$f6,$f10
    # Line 451
    ldc1	$f16,_lit8_4042000000000000
    # Line 449
    madd.d	$f12,$f12,$f0,$f25
    # Line 447
    nmsub.d	$f15,$f15,$f0,$f27
    # Line 451
    madd.d	$f11,$f11,$f0,$f16
    # Line 465
    mul.d	$f9,$f9,$f23
    # Line 474
    cvt.s.d	$f1,$f1
    # Line 457
    mul.d	$f14,$f14,$f19
    # Line 479
    add.d	$f9,$f9,$f18
    # Line 469
    cvt.s.d	$f2,$f2
    # Line 479
    sub.d	$f9,$f9,$f14
    # Line 465
    cvt.s.d	$f4,$f4
    # Line 451
    mul.d	$f3,$f3,$f13
    # Line 461
    cvt.s.d	$f7,$f7
    # Line 479
    add.d	$f3,$f3,$f9
    # Line 447
    mul.d	$f6,$f6,$f10
    # Line 445
    swc1	$f21,4($sp)
    # Line 454
    cvt.s.d	$f8,$f8
    # Line 469
    swc1	$f2,40($sp)
    # Line 479
    sub.d	$f3,$f3,$f6
    # Line 446
    sub.d	$f17,$f17,$f0
    # Line 457
    lwc1	$f16,_lit_42600000
    # Line 474
    swc1	$f1,44($sp)
    # Line 479
    add.d	$f0,$f0,$f3
    # Line 461
    swc1	$f7,32($sp)
    # Line 446
    cvt.s.d	$f17,$f17
    # Line 465
    swc1	$f4,36($sp)
    # Line 479
    cvt.s.d	$f0,$f0
    # Line 457
    mul.s	$f16,$f21,$f16
    # Line 454
    swc1	$f8,24($sp)
    # Line 451
    cvt.s.d	$f11,$f11
    # Line 446
    swc1	$f17,8($sp)
    # Line 457
    cvt.d.s	$f16,$f16
    # Line 451
    swc1	$f11,20($sp)
    # Line 449
    cvt.s.d	$f12,$f12
    # Line 479
    swc1	$f0,48($sp)
    # Line 457
    sub.d	$f5,$f5,$f16
    # Line 449
    swc1	$f12,16($sp)
    # Line 447
    cvt.s.d	$f15,$f15
    swc1	$f15,12($sp)
    # Line 457
    cvt.s.d	$f5,$f5
    # Line 484
    b	.L0d97a190
    # Line 457
    swc1	$f5,28($sp)
.L0d97adb8:
    # Line 388
    ldc1	$f31,_lit8_c041800000000000
    # Line 379
    sll	$t9,$a3,0x2
    # Line 388
    ldc1	$f29,_lit8_4062c00000000000
    # Line 380
    addu	$a5,$t9,$a0
    lwc1	$f21,0($a5)
    lwc1	$f16,0($a0)
    # Line 381
    ldc1	$f6,_lit8_4020000000000000
    # Line 380
    ldc1	$f3,_lit8_4024000000000000
    # Line 381
    sll	$t3,$a3,0x3
    # Line 383
    addu	$a4,$a3,$a3
    # Line 380
    cvt.d.s	$f21,$f21
    # Line 383
    ldc1	$f2,_lit8_403c000000000000
    # Line 381
    addu	$a1,$t3,$a3
    # Line 380
    cvt.d.s	$f16,$f16
    # Line 383
    sll	$a4,$a4,0x2
    # Line 388
    mul.d	$f29,$f21,$f29
    # Line 383
    ldc1	$f1,_lit8_4051800000000000
    # Line 381
    sll	$a1,$a1,0x2
    # Line 383
    addu	$a4,$a0,$a4
    # Line 388
    madd.d	$f29,$f29,$f16,$f31
    # Line 381
    addu	$a1,$a0,$a1
    # Line 383
    lwc1	$f15,0($a4)
    # Line 381
    lwc1	$f18,0($a1)
    # Line 380
    mul.d	$f13,$f21,$f3
    # Line 383
    ldc1	$f8,_lit8_4046800000000000
    mul.d	$f1,$f21,$f1
    cvt.d.s	$f15,$f15
    msub.d	$f1,$f1,$f16,$f2
    # Line 381
    cvt.d.s	$f18,$f18
    msub.d	$f4,$f13,$f16,$f6
    # Line 388
    subu	$t8,$t9,$a3
    ldc1	$f31,_lit8_406c200000000000
    # Line 383
    madd.d	$f1,$f1,$f15,$f8
    # Line 388
    sll	$at,$t8,0x2
    # Line 385
    ldc1	$f2,_lit8_404e000000000000
    # Line 381
    madd.d	$f4,$f4,$f18,$f3
    # Line 388
    addu	$at,$a0,$at
    # Line 379
    addu	$t2,$t9,$a3
    # Line 383
    nmsub.d	$f1,$f1,$f18,$f3
    # Line 385
    ldc1	$f3,_lit8_c035000000000000
    # Line 388
    lwc1	$f7,0($at)
    # Line 379
    sll	$v1,$t2,0x3
    # Line 388
    nmsub.d	$f29,$f29,$f15,$f31
    ldc1	$f9,_lit8_405e000000000000
    # Line 385
    sll	$v0,$a3,0x5
    # Line 379
    addu	$v1,$a0,$v1
    # Line 385
    mul.d	$f0,$f21,$f2
    addu	$v0,$a0,$v0
    # Line 379
    lwc1	$f27,0($v1)
    # Line 385
    madd.d	$f0,$f0,$f16,$f3
    # Line 388
    cvt.d.s	$f7,$f7
    # Line 385
    lwc1	$f3,0($v0)
    # Line 383
    ldc1	$f5,_lit8_401c000000000000
    # Line 380
    cvt.d.s	$f23,$f27
    # Line 388
    madd.d	$f29,$f29,$f7,$f9
    # Line 385
    nmsub.d	$f0,$f0,$f15,$f8
    cvt.d.s	$f3,$f3
    # Line 383
    madd.d	$f1,$f1,$f23,$f5
    # Line 391
    ldc1	$f5,_lit8_4059000000000000
    # Line 385
    madd.d	$f0,$f0,$f3,$f8
    # Line 381
    nmsub.d	$f4,$f4,$f23,$f6
    # Line 385
    ldc1	$f6,_lit8_4035000000000000
    nmsub.d	$f0,$f0,$f18,$f2
    # Line 388
    ldc1	$f31,_lit8_402e000000000000
    # Line 391
    mul.d	$f19,$f21,$f5
    # Line 385
    madd.d	$f0,$f0,$f23,$f6
    # Line 388
    ldc1	$f6,_lit8_4049000000000000
    nmsub.d	$f29,$f29,$f3,$f8
    # Line 394
    ldc1	$f10,_lit8_4070e00000000000
    msub.d	$f25,$f19,$f16,$f31
    # Line 388
    madd.d	$f29,$f29,$f18,$f6
    # Line 398
    ldc1	$f6,_lit8_4044000000000000
    ldc1	$f11,_lit8_c014000000000000
    # Line 394
    madd.d	$f25,$f25,$f15,$f10
    ldc1	$f10,_lit8_4060e00000000000
    # Line 398
    mul.d	$f21,$f21,$f6
    ldc1	$f17,_lit8_406e000000000000
    # Line 394
    sll	$t9,$t9,0x2
    # Line 398
    madd.d	$f21,$f21,$f16,$f11
    # Line 394
    addu	$t9,$a0,$t9
    # Line 388
    nmsub.d	$f29,$f29,$f23,$f31
    # Line 394
    ldc1	$f31,_lit8_4076800000000000
    lwc1	$f14,0($t9)
    # Line 398
    nmsub.d	$f21,$f21,$f15,$f10
    sll	$t8,$t8,0x3
    # Line 394
    ldc1	$f12,_lit8_406a400000000000
    # Line 391
    subu	$t3,$t3,$a3
    # Line 398
    addu	$t8,$a0,$t8
    # Line 394
    nmsub.d	$f25,$f25,$f7,$f31
    # Line 391
    sll	$t3,$t3,0x2
    # Line 394
    cvt.d.s	$f14,$f14
    # Line 398
    lwc1	$f11,0($t8)
    madd.d	$f21,$f21,$f7,$f17
    # Line 391
    addu	$t3,$a0,$t3
    lwc1	$f31,0($t3)
    # Line 398
    nmsub.d	$f21,$f21,$f14,$f12
    cvt.d.s	$f11,$f11
    # Line 391
    cvt.d.s	$f31,$f31
    # Line 398
    madd.d	$f21,$f21,$f11,$f12
    nmsub.d	$f21,$f21,$f31,$f17
    madd.d	$f21,$f21,$f3,$f10
    # Line 394
    madd.d	$f25,$f25,$f14,$f12
    # Line 398
    nmsub.d	$f21,$f21,$f18,$f6
    ldc1	$f6,_lit8_4014000000000000
    # Line 394
    nmsub.d	$f25,$f25,$f31,$f9
    # Line 398
    madd.d	$f21,$f21,$f23,$f6
    # Line 391
    ldc1	$f6,_lit8_4034000000000000
    # Line 394
    madd.d	$f25,$f25,$f3,$f10
    # Line 391
    ldc1	$f10,_lit8_4066800000000000
    msub.d	$f19,$f19,$f16,$f6
    madd.d	$f19,$f19,$f15,$f10
    # Line 380
    ldc1	$f6,_lit8_c022000000000000
    # Line 391
    nmsub.d	$f19,$f19,$f7,$f9
    # Line 380
    madd.d	$f6,$f13,$f16,$f6
    # Line 383
    mul.d	$f15,$f15,$f8
    # Line 402
    sub.d	$f13,$f13,$f16
    # Line 385
    mul.d	$f2,$f18,$f2
    # Line 402
    sll	$t2,$t2,0x2
    # Line 388
    mul.d	$f7,$f7,$f9
    # Line 402
    sub.d	$f13,$f13,$f15
    addu	$t2,$a0,$t2
    # Line 394
    sub.d	$f25,$f25,$f2
    ldc1	$f2,_lit8_4024000000000000
    # Line 391
    madd.d	$f19,$f19,$f31,$f9
    # Line 402
    add.d	$f7,$f7,$f13
    lwc1	$f13,0($t2)
    nmsub.d	$f7,$f7,$f14,$f12
    ldc1	$f14,_lit8_406f800000000000
    # Line 394
    madd.d	$f25,$f25,$f23,$f2
    # Line 402
    cvt.d.s	$f13,$f13
    # Line 391
    nmsub.d	$f19,$f19,$f3,$f10
    # Line 402
    madd.d	$f7,$f7,$f13,$f14
    # Line 391
    madd.d	$f19,$f19,$f18,$f5
    # Line 402
    nmsub.d	$f7,$f7,$f11,$f12
    # Line 381
    cvt.s.d	$f4,$f4
    # Line 383
    cvt.s.d	$f1,$f1
    # Line 385
    cvt.s.d	$f0,$f0
    # Line 388
    cvt.s.d	$f29,$f29
    # Line 398
    cvt.s.d	$f21,$f21
    # Line 394
    cvt.s.d	$f25,$f25
    # Line 391
    mul.d	$f31,$f31,$f9
    lwc1	$f5,_lit_41a00000
    # Line 380
    sub.d	$f6,$f6,$f23
    # Line 379
    swc1	$f27,4($sp)
    # Line 385
    mul.d	$f3,$f3,$f8
    # Line 402
    add.d	$f31,$f31,$f7
    # Line 381
    swc1	$f4,12($sp)
    # Line 380
    cvt.s.d	$f6,$f6
    # Line 391
    mul.s	$f27,$f27,$f5
    # Line 383
    swc1	$f1,16($sp)
    # Line 381
    mul.d	$f18,$f18,$f2
    # Line 402
    sub.d	$f31,$f31,$f3
    # Line 385
    swc1	$f0,20($sp)
    # Line 391
    cvt.d.s	$f27,$f27
    # Line 388
    swc1	$f29,24($sp)
    # Line 402
    add.d	$f18,$f18,$f31
    # Line 398
    swc1	$f21,36($sp)
    # Line 391
    sub.d	$f19,$f19,$f27
    # Line 394
    swc1	$f25,32($sp)
    # Line 402
    sub.d	$f18,$f18,$f23
    # Line 380
    swc1	$f6,8($sp)
    # Line 391
    cvt.s.d	$f19,$f19
    swc1	$f19,28($sp)
    # Line 402
    cvt.s.d	$f18,$f18
    # Line 407
    b	.L0d97a190
    # Line 402
    swc1	$f18,40($sp)
.L0d97b050:
    # Line 355
    sll	$a6,$a3,0x2
    addu	$v0,$a6,$a0
    lwc1	$f25,0($v0)
    lwc1	$f16,0($a0)
    ldc1	$f4,_lit8_4022000000000000
    ldc1	$f6,_lit8_c020000000000000
    cvt.d.s	$f25,$f25
    # Line 363
    ldc1	$f31,_lit8_4056800000000000
    # Line 356
    sll	$at,$a3,0x5
    # Line 355
    cvt.d.s	$f16,$f16
    # Line 356
    ldc1	$f5,_lit8_401c000000000000
    # Line 354
    sll	$t3,$a3,0x3
    # Line 356
    addu	$at,$a0,$at
    # Line 355
    mul.d	$f15,$f25,$f4
    madd.d	$f6,$f15,$f16,$f6
    # Line 354
    addu	$t9,$t3,$a3
    # Line 356
    lwc1	$f1,0($at)
    # Line 360
    ldc1	$f10,_lit8_4046800000000000
    # Line 354
    sll	$t9,$t9,0x2
    # Line 363
    mul.d	$f31,$f25,$f31
    # Line 358
    ldc1	$f12,_lit8_404b000000000000
    addu	$t8,$a3,$a3
    # Line 354
    addu	$t9,$a0,$t9
    # Line 358
    sll	$t8,$t8,0x2
    # Line 354
    lwc1	$f7,0($t9)
    # Line 356
    cvt.d.s	$f1,$f1
    msub.d	$f3,$f15,$f16,$f5
    # Line 358
    ldc1	$f2,_lit8_4035000000000000
    # Line 360
    mul.d	$f0,$f25,$f10
    # Line 358
    addu	$t8,$a0,$t8
    lwc1	$f17,0($t8)
    # Line 356
    madd.d	$f3,$f3,$f1,$f4
    # Line 358
    ldc1	$f8,_lit8_4042000000000000
    mul.d	$f27,$f25,$f12
    # Line 355
    cvt.d.s	$f23,$f7
    # Line 358
    msub.d	$f2,$f27,$f16,$f2
    cvt.d.s	$f17,$f17
    # Line 356
    nmsub.d	$f3,$f3,$f23,$f5
    # Line 360
    ldc1	$f5,_lit8_c02e000000000000
    # Line 369
    mul.d	$f25,$f25,$f8
    ldc1	$f13,_lit8_4014000000000000
    # Line 358
    madd.d	$f2,$f2,$f17,$f8
    # Line 360
    madd.d	$f0,$f0,$f16,$f5
    # Line 358
    ldc1	$f5,_lit8_4018000000000000
    # Line 360
    subu	$t3,$t3,$a3
    # Line 358
    nmsub.d	$f2,$f2,$f1,$f4
    # Line 369
    msub.d	$f25,$f25,$f16,$f13
    # Line 360
    sll	$t3,$t3,0x2
    # Line 363
    subu	$t1,$a6,$a3
    # Line 360
    addu	$t3,$a0,$t3
    # Line 358
    madd.d	$f2,$f2,$f23,$f5
    # Line 363
    ldc1	$f5,_lit8_c034000000000000
    sll	$t2,$t1,0x2
    # Line 360
    lwc1	$f29,0($t3)
    nmsub.d	$f0,$f0,$f17,$f8
    # Line 366
    ldc1	$f14,_lit8_405b000000000000
    # Line 363
    addu	$t2,$a0,$t2
    madd.d	$f31,$f31,$f16,$f5
    lwc1	$f5,0($t2)
    ldc1	$f11,_lit8_4062000000000000
    # Line 360
    cvt.d.s	$f29,$f29
    # Line 369
    ldc1	$f13,_lit8_4065000000000000
    madd.d	$f25,$f25,$f17,$f14
    # Line 360
    madd.d	$f0,$f0,$f29,$f8
    # Line 363
    cvt.d.s	$f5,$f5
    nmsub.d	$f31,$f31,$f17,$f11
    ldc1	$f11,_lit8_4024000000000000
    # Line 360
    ldc1	$f9,_lit8_402e000000000000
    # Line 369
    nmsub.d	$f25,$f25,$f5,$f13
    # Line 360
    nmsub.d	$f0,$f0,$f1,$f10
    # Line 366
    sll	$t1,$t1,0x3
    msub.d	$f27,$f27,$f16,$f11
    addu	$t1,$a0,$t1
    # Line 363
    ldc1	$f10,_lit8_4055000000000000
    # Line 360
    madd.d	$f0,$f0,$f23,$f9
    # Line 366
    lwc1	$f9,0($t1)
    madd.d	$f27,$f27,$f17,$f14
    # Line 363
    madd.d	$f31,$f31,$f5,$f10
    # Line 366
    cvt.d.s	$f9,$f9
    nmsub.d	$f27,$f27,$f5,$f10
    # Line 363
    nmsub.d	$f31,$f31,$f29,$f8
    # Line 369
    sll	$t0,$a6,0x2
    # Line 366
    madd.d	$f27,$f27,$f9,$f10
    # Line 369
    addu	$t0,$a0,$t0
    # Line 363
    madd.d	$f31,$f31,$f1,$f8
    # Line 366
    nmsub.d	$f27,$f27,$f29,$f14
    # Line 369
    lwc1	$f14,0($t0)
    # Line 366
    madd.d	$f27,$f27,$f1,$f12
    # Line 369
    ldc1	$f12,_lit8_405f800000000000
    # Line 363
    nmsub.d	$f31,$f31,$f23,$f11
    # Line 369
    cvt.d.s	$f14,$f14
    # Line 366
    nmsub.d	$f27,$f27,$f23,$f11
    # Line 369
    madd.d	$f25,$f25,$f14,$f12
    ldc1	$f11,_lit8_4052000000000000
    # Line 373
    addu	$a6,$a6,$a3
    # Line 369
    nmsub.d	$f25,$f25,$f9,$f10
    # Line 373
    sll	$a6,$a6,0x2
    sub.d	$f15,$f15,$f16
    # Line 358
    mul.d	$f17,$f17,$f8
    # Line 373
    addu	$a6,$a0,$a6
    # Line 369
    ldc1	$f16,_lit8_403b000000000000
    madd.d	$f25,$f25,$f29,$f11
    # Line 373
    sub.d	$f15,$f15,$f17
    # Line 363
    mul.d	$f5,$f5,$f10
    # Line 373
    lwc1	$f11,0($a6)
    # Line 369
    ldc1	$f13,_lit8_4010000000000000
    # Line 373
    add.d	$f5,$f5,$f15
    # Line 369
    nmsub.d	$f25,$f25,$f1,$f16
    # Line 373
    nmsub.d	$f5,$f5,$f14,$f12
    cvt.d.s	$f11,$f11
    # Line 369
    madd.d	$f25,$f25,$f23,$f13
    # Line 373
    madd.d	$f5,$f5,$f11,$f12
    nmsub.d	$f5,$f5,$f9,$f10
    # Line 355
    sub.d	$f6,$f6,$f23
    cvt.s.d	$f6,$f6
    # Line 356
    cvt.s.d	$f3,$f3
    # Line 358
    cvt.s.d	$f2,$f2
    # Line 360
    mul.d	$f29,$f29,$f8
    # Line 354
    swc1	$f7,4($sp)
    # Line 360
    cvt.s.d	$f0,$f0
    # Line 355
    swc1	$f6,8($sp)
    # Line 356
    mul.d	$f1,$f1,$f4
    # Line 373
    add.d	$f29,$f29,$f5
    # Line 356
    swc1	$f3,12($sp)
    # Line 363
    cvt.s.d	$f31,$f31
    # Line 358
    swc1	$f2,16($sp)
    # Line 373
    sub.d	$f29,$f29,$f1
    # Line 360
    swc1	$f0,20($sp)
    # Line 366
    cvt.s.d	$f27,$f27
    # Line 363
    swc1	$f31,24($sp)
    # Line 373
    add.d	$f23,$f23,$f29
    # Line 366
    swc1	$f27,28($sp)
    # Line 369
    cvt.s.d	$f25,$f25
    swc1	$f25,32($sp)
    # Line 373
    cvt.s.d	$f23,$f23
    # Line 377
    b	.L0d97a190
    # Line 373
    swc1	$f23,36($sp)
.L0d97b274:
    # Line 334
    sll	$v1,$a3,0x2
    addu	$t2,$v1,$a0
    lwc1	$f29,0($t2)
    lwc1	$f14,0($a0)
    ldc1	$f7,_lit8_4020000000000000
    # Line 335
    ldc1	$f5,_lit8_4018000000000000
    # Line 334
    cvt.d.s	$f29,$f29
    # Line 337
    ldc1	$f2,_lit8_4044000000000000
    # Line 334
    cvt.d.s	$f14,$f14
    mul.d	$f18,$f29,$f7
    # Line 337
    ldc1	$f11,_lit8_402e000000000000
    addu	$a6,$a3,$a3
    # Line 335
    msub.d	$f4,$f18,$f14,$f5
    # Line 339
    ldc1	$f12,_lit8_4040000000000000
    # Line 337
    sll	$a6,$a6,0x2
    # Line 339
    ldc1	$f31,_lit8_c024000000000000
    # Line 337
    mul.d	$f2,$f29,$f2
    addu	$a6,$a0,$a6
    # Line 333
    sll	$t1,$a3,0x3
    # Line 337
    msub.d	$f2,$f2,$f14,$f11
    # Line 339
    subu	$a4,$v1,$a3
    # Line 337
    lwc1	$f8,0($a6)
    # Line 339
    sll	$a5,$a4,0x3
    # Line 337
    ldc1	$f10,_lit8_403c000000000000
    # Line 335
    subu	$t1,$t1,$a3
    # Line 339
    addu	$a5,$a5,$a0
    mul.d	$f31,$f14,$f31
    # Line 335
    sll	$t1,$t1,0x2
    # Line 339
    lwc1	$f0,0($a5)
    # Line 337
    cvt.d.s	$f8,$f8
    # Line 339
    madd.d	$f1,$f31,$f29,$f12
    # Line 335
    addu	$t1,$a0,$t1
    lwc1	$f3,0($t1)
    # Line 339
    nmsub.d	$f1,$f1,$f8,$f10
    # Line 333
    sll	$t0,$a3,0x5
    # Line 339
    cvt.d.s	$f0,$f0
    # Line 333
    addu	$t0,$a0,$t0
    # Line 337
    madd.d	$f2,$f2,$f8,$f10
    # Line 333
    lwc1	$f9,0($t0)
    # Line 335
    cvt.d.s	$f3,$f3
    # Line 339
    madd.d	$f1,$f1,$f0,$f10
    # Line 337
    ldc1	$f11,_lit8_4014000000000000
    nmsub.d	$f2,$f2,$f3,$f7
    # Line 342
    sll	$a4,$a4,0x2
    # Line 334
    cvt.d.s	$f27,$f9
    # Line 339
    nmsub.d	$f1,$f1,$f3,$f12
    # Line 342
    ldc1	$f12,_lit8_4048000000000000
    # Line 335
    madd.d	$f4,$f4,$f3,$f7
    # Line 342
    addu	$a4,$a0,$a4
    lwc1	$f16,0($a4)
    # Line 337
    madd.d	$f2,$f2,$f27,$f11
    # Line 342
    ldc1	$f11,_lit8_4055000000000000
    madd.d	$f31,$f31,$f29,$f12
    # Line 334
    ldc1	$f6,_lit8_c01c000000000000
    # Line 335
    nmsub.d	$f4,$f4,$f27,$f5
    # Line 342
    ldc1	$f12,_lit8_404c000000000000
    ldc1	$f17,_lit8_4038000000000000
    cvt.d.s	$f16,$f16
    nmsub.d	$f31,$f31,$f8,$f11
    # Line 345
    ldc1	$f15,_lit8_4010000000000000
    # Line 334
    madd.d	$f6,$f18,$f14,$f6
    # Line 342
    madd.d	$f31,$f31,$f16,$f12
    # Line 345
    addu	$a1,$v1,$a3
    mul.d	$f29,$f29,$f17
    sll	$a1,$a1,0x2
    msub.d	$f29,$f29,$f14,$f15
    addu	$a1,$a0,$a1
    # Line 342
    nmsub.d	$f31,$f31,$f0,$f10
    # Line 345
    lwc1	$f11,0($a1)
    madd.d	$f29,$f29,$f8,$f12
    # Line 339
    ldc1	$f13,_lit8_4024000000000000
    # Line 342
    madd.d	$f31,$f31,$f3,$f17
    # Line 345
    cvt.d.s	$f11,$f11
    nmsub.d	$f29,$f29,$f16,$f12
    # Line 339
    madd.d	$f1,$f1,$f27,$f13
    # Line 345
    madd.d	$f29,$f29,$f11,$f12
    # Line 348
    sll	$v1,$v1,0x2
    addu	$v1,$a0,$v1
    # Line 345
    nmsub.d	$f29,$f29,$f0,$f12
    # Line 348
    lwc1	$f13,0($v1)
    sub.d	$f14,$f14,$f18
    # Line 337
    mul.d	$f8,$f8,$f10
    # Line 345
    madd.d	$f29,$f29,$f3,$f17
    # Line 348
    add.d	$f8,$f8,$f14
    ldc1	$f14,_lit8_4051800000000000
    cvt.d.s	$f13,$f13
    nmsub.d	$f8,$f8,$f16,$f12
    # Line 345
    nmsub.d	$f29,$f29,$f27,$f15
    # Line 348
    madd.d	$f8,$f8,$f13,$f14
    nmsub.d	$f8,$f8,$f11,$f12
    # Line 334
    sub.d	$f6,$f6,$f27
    cvt.s.d	$f6,$f6
    # Line 335
    cvt.s.d	$f4,$f4
    # Line 337
    cvt.s.d	$f2,$f2
    # Line 339
    mul.d	$f0,$f0,$f10
    # Line 335
    mul.d	$f5,$f27,$f5
    # Line 339
    cvt.s.d	$f1,$f1
    # Line 333
    swc1	$f9,4($sp)
    # Line 335
    mul.d	$f3,$f3,$f7
    # Line 348
    add.d	$f0,$f0,$f8
    # Line 334
    swc1	$f6,8($sp)
    # Line 342
    sub.d	$f31,$f31,$f5
    # Line 335
    swc1	$f4,12($sp)
    # Line 348
    sub.d	$f0,$f0,$f3
    # Line 337
    swc1	$f2,16($sp)
    # Line 342
    cvt.s.d	$f31,$f31
    # Line 339
    swc1	$f1,20($sp)
    # Line 348
    add.d	$f27,$f27,$f0
    # Line 342
    swc1	$f31,24($sp)
    # Line 345
    cvt.s.d	$f29,$f29
    swc1	$f29,28($sp)
    # Line 348
    cvt.s.d	$f27,$f27
    # Line 352
    b	.L0d97a190
    # Line 348
    swc1	$f27,32($sp)
.L0d97b43c:
    # Line 322
    sll	$t3,$a3,0x2
    addu	$a1,$t3,$a0
    lwc1	$f0,0($a1)
    lwc1	$f5,0($a0)
    ldc1	$f8,_lit8_401c000000000000
    ldc1	$f1,_lit8_c018000000000000
    cvt.d.s	$f0,$f0
    # Line 324
    ldc1	$f3,_lit8_403c000000000000
    # Line 322
    cvt.d.s	$f5,$f5
    # Line 324
    addu	$at,$a3,$a3
    ldc1	$f10,_lit8_4035000000000000
    sll	$at,$at,0x2
    # Line 322
    mul.d	$f13,$f0,$f8
    madd.d	$f6,$f13,$f5,$f1
    # Line 324
    addu	$at,$a0,$at
    lwc1	$f11,0($at)
    mul.d	$f3,$f0,$f3
    # Line 325
    mul.d	$f0,$f0,$f10
    madd.d	$f1,$f0,$f5,$f1
    # Line 324
    ldc1	$f12,_lit8_4024000000000000
    # Line 321
    sll	$v0,$a3,0x3
    # Line 323
    subu	$t8,$t3,$a3
    # Line 324
    cvt.d.s	$f11,$f11
    # Line 323
    sll	$v1,$t8,0x3
    # Line 325
    nmsub.d	$f1,$f1,$f11,$f10
    # Line 323
    ldc1	$f9,_lit8_4014000000000000
    # Line 321
    subu	$v0,$v0,$a3
    # Line 323
    addu	$v1,$a0,$v1
    # Line 321
    sll	$v0,$v0,0x2
    # Line 323
    lwc1	$f31,0($v1)
    # Line 324
    msub.d	$f3,$f3,$f5,$f12
    # Line 321
    addu	$v0,$a0,$v0
    # Line 327
    ldc1	$f12,_lit8_c010000000000000
    # Line 321
    lwc1	$f7,0($v0)
    # Line 323
    msub.d	$f4,$f13,$f5,$f9
    cvt.d.s	$f31,$f31
    # Line 327
    madd.d	$f0,$f0,$f5,$f12
    # Line 322
    cvt.d.s	$f2,$f7
    # Line 323
    madd.d	$f4,$f4,$f31,$f8
    # Line 325
    addu	$t9,$t3,$a3
    # Line 324
    madd.d	$f3,$f3,$f11,$f10
    # Line 325
    sll	$t9,$t9,0x2
    # Line 323
    nmsub.d	$f4,$f4,$f2,$f9
    # Line 324
    ldc1	$f14,_lit8_4010000000000000
    # Line 325
    addu	$t9,$a0,$t9
    # Line 324
    nmsub.d	$f3,$f3,$f31,$f8
    # Line 325
    lwc1	$f9,0($t9)
    # Line 327
    sll	$t8,$t8,0x2
    ldc1	$f16,_lit8_4045000000000000
    addu	$t8,$a0,$t8
    # Line 329
    sub.d	$f5,$f5,$f13
    madd.d	$f5,$f5,$f11,$f10
    # Line 325
    cvt.d.s	$f9,$f9
    # Line 324
    madd.d	$f3,$f3,$f2,$f14
    # Line 327
    lwc1	$f14,0($t8)
    ldc1	$f12,_lit8_4041800000000000
    # Line 325
    madd.d	$f1,$f1,$f9,$f10
    ldc1	$f15,_lit8_4018000000000000
    # Line 327
    nmsub.d	$f0,$f0,$f11,$f16
    cvt.d.s	$f14,$f14
    # Line 325
    nmsub.d	$f1,$f1,$f31,$f10
    # Line 329
    sll	$t3,$t3,0x2
    # Line 327
    madd.d	$f0,$f0,$f14,$f12
    # Line 329
    addu	$t3,$a0,$t3
    # Line 325
    madd.d	$f1,$f1,$f2,$f15
    # Line 327
    ldc1	$f15,_lit8_402c000000000000
    # Line 329
    lwc1	$f11,0($t3)
    # Line 327
    nmsub.d	$f0,$f0,$f9,$f10
    ldc1	$f13,_lit8_4008000000000000
    madd.d	$f0,$f0,$f31,$f15
    # Line 329
    cvt.d.s	$f11,$f11
    nmsub.d	$f5,$f5,$f14,$f12
    # Line 327
    nmsub.d	$f0,$f0,$f2,$f13
    # Line 329
    madd.d	$f5,$f5,$f11,$f12
    nmsub.d	$f5,$f5,$f9,$f10
    # Line 322
    sub.d	$f6,$f6,$f2
    cvt.s.d	$f6,$f6
    # Line 323
    cvt.s.d	$f4,$f4
    mul.d	$f31,$f31,$f8
    # Line 321
    swc1	$f7,4($sp)
    # Line 324
    cvt.s.d	$f3,$f3
    # Line 322
    swc1	$f6,8($sp)
    # Line 329
    add.d	$f31,$f31,$f5
    # Line 323
    swc1	$f4,12($sp)
    # Line 325
    cvt.s.d	$f1,$f1
    # Line 324
    swc1	$f3,16($sp)
    # Line 329
    sub.d	$f31,$f31,$f2
    # Line 325
    swc1	$f1,20($sp)
    # Line 327
    cvt.s.d	$f0,$f0
    swc1	$f0,24($sp)
    # Line 329
    cvt.s.d	$f31,$f31
    # Line 331
    b	.L0d97a190
    # Line 329
    swc1	$f31,28($sp)
.L0d97b5b0:
    # Line 311
    sll	$a5,$a3,0x2
    # Line 312
    addu	$t2,$a5,$a0
    lwc1	$f2,0($t2)
    lwc1	$f14,0($a0)
    # Line 314
    ldc1	$f3,_lit8_4032000000000000
    addu	$t1,$a3,$a3
    sll	$t1,$t1,0x2
    # Line 312
    ldc1	$f9,_lit8_4018000000000000
    cvt.d.s	$f2,$f2
    # Line 314
    addu	$t1,$a0,$t1
    # Line 312
    cvt.d.s	$f14,$f14
    # Line 313
    addu	$t0,$a5,$a3
    # Line 314
    lwc1	$f16,0($t1)
    mul.d	$f3,$f2,$f3
    # Line 313
    sll	$t0,$t0,0x2
    # Line 314
    msub.d	$f3,$f3,$f14,$f9
    # Line 313
    ldc1	$f10,_lit8_4010000000000000
    # Line 311
    subu	$a4,$a5,$a3
    # Line 313
    addu	$t0,$a0,$t0
    # Line 311
    sll	$a6,$a4,0x3
    # Line 313
    lwc1	$f8,0($t0)
    # Line 314
    ldc1	$f11,_lit8_402e000000000000
    # Line 311
    addu	$a6,$a0,$a6
    # Line 312
    mul.d	$f1,$f2,$f9
    # Line 314
    cvt.d.s	$f16,$f16
    # Line 311
    lwc1	$f7,0($a6)
    # Line 313
    msub.d	$f5,$f1,$f14,$f10
    cvt.d.s	$f8,$f8
    # Line 314
    madd.d	$f3,$f3,$f16,$f11
    # Line 312
    ldc1	$f6,_lit8_c014000000000000
    cvt.d.s	$f4,$f7
    # Line 313
    madd.d	$f5,$f5,$f8,$f9
    # Line 315
    ldc1	$f15,_lit8_4028000000000000
    # Line 314
    nmsub.d	$f3,$f3,$f8,$f9
    # Line 313
    nmsub.d	$f5,$f5,$f4,$f10
    # Line 315
    ldc1	$f10,_lit8_c008000000000000
    # Line 317
    sll	$a4,$a4,0x2
    # Line 312
    madd.d	$f6,$f1,$f14,$f6
    # Line 314
    ldc1	$f12,_lit8_4008000000000000
    # Line 317
    addu	$a4,$a0,$a4
    # Line 315
    mul.d	$f2,$f2,$f15
    sll	$a5,$a3,0x4
    # Line 317
    lwc1	$f13,0($a4)
    # Line 315
    madd.d	$f2,$f2,$f14,$f10
    addu	$a5,$a0,$a5
    # Line 317
    sub.d	$f1,$f1,$f14
    ldc1	$f14,_lit8_4034000000000000
    nmsub.d	$f1,$f1,$f16,$f11
    # Line 315
    lwc1	$f10,0($a5)
    # Line 317
    cvt.d.s	$f13,$f13
    # Line 314
    madd.d	$f3,$f3,$f4,$f12
    # Line 315
    cvt.d.s	$f10,$f10
    # Line 317
    madd.d	$f1,$f1,$f13,$f14
    # Line 315
    nmsub.d	$f2,$f2,$f16,$f11
    # Line 317
    nmsub.d	$f1,$f1,$f10,$f11
    # Line 315
    madd.d	$f2,$f2,$f10,$f11
    # Line 317
    madd.d	$f1,$f1,$f8,$f9
    # Line 315
    nmsub.d	$f2,$f2,$f8,$f15
    madd.d	$f2,$f2,$f4,$f12
    # Line 312
    sub.d	$f6,$f6,$f4
    cvt.s.d	$f6,$f6
    # Line 311
    swc1	$f7,4($sp)
    # Line 313
    cvt.s.d	$f5,$f5
    # Line 312
    swc1	$f6,8($sp)
    # Line 314
    cvt.s.d	$f3,$f3
    # Line 313
    swc1	$f5,12($sp)
    # Line 317
    sub.d	$f1,$f1,$f4
    # Line 314
    swc1	$f3,16($sp)
    # Line 315
    cvt.s.d	$f2,$f2
    # Line 317
    cvt.s.d	$f1,$f1
    # Line 315
    swc1	$f2,20($sp)
    # Line 319
    b	.L0d97a190
    # Line 317
    swc1	$f1,24($sp)
.L0d97b6d4:
    # Line 305
    sll	$at,$a3,0x4
    addu	$at,$at,$a0
    lwc1	$f10,0($at)
    # Line 303
    sll	$t3,$a3,0x2
    # Line 304
    lwc1	$f6,0($a0)
    addu	$v0,$t3,$a0
    lwc1	$f15,0($v0)
    # Line 305
    ldc1	$f14,_lit8_4008000000000000
    # Line 304
    ldc1	$f11,_lit8_4014000000000000
    cvt.d.s	$f6,$f6
    cvt.d.s	$f15,$f15
    # Line 305
    mul.d	$f9,$f6,$f14
    cvt.d.s	$f10,$f10
    nmsub.d	$f5,$f9,$f15,$f11
    # Line 304
    ldc1	$f8,_lit8_c010000000000000
    # Line 303
    addu	$t9,$t3,$a3
    sll	$t9,$t9,0x2
    # Line 305
    madd.d	$f5,$f5,$f10,$f11
    # Line 306
    ldc1	$f13,_lit8_4024000000000000
    addu	$t8,$a3,$a3
    # Line 303
    addu	$t9,$a0,$t9
    # Line 306
    lwc1	$f12,_lit_41200000
    sll	$t8,$t8,0x2
    # Line 304
    mul.d	$f7,$f15,$f11
    madd.d	$f7,$f7,$f6,$f8
    # Line 303
    lwc1	$f8,0($t9)
    # Line 306
    addu	$t8,$a0,$t8
    # Line 307
    subu	$t3,$t3,$a3
    # Line 306
    lwc1	$f4,0($t8)
    nmsub.d	$f9,$f9,$f15,$f13
    # Line 307
    sll	$t3,$t3,0x2
    addu	$t3,$a0,$t3
    msub.d	$f6,$f6,$f15,$f11
    # Line 304
    cvt.d.s	$f3,$f8
    # Line 306
    mul.s	$f4,$f4,$f12
    # Line 307
    lwc1	$f12,0($t3)
    # Line 305
    nmsub.d	$f5,$f5,$f3,$f14
    # Line 306
    cvt.d.s	$f4,$f4
    # Line 307
    cvt.d.s	$f12,$f12
    sub.d	$f6,$f6,$f4
    madd.d	$f6,$f6,$f12,$f13
    # Line 306
    add.d	$f4,$f4,$f9
    nmsub.d	$f4,$f4,$f10,$f11
    ldc1	$f9,_lit8_4000000000000000
    # Line 307
    nmsub.d	$f6,$f6,$f10,$f11
    # Line 306
    madd.d	$f4,$f4,$f3,$f9
    # Line 304
    sub.d	$f7,$f7,$f3
    cvt.s.d	$f7,$f7
    # Line 303
    swc1	$f8,4($sp)
    # Line 305
    cvt.s.d	$f5,$f5
    # Line 304
    swc1	$f7,8($sp)
    # Line 307
    add.d	$f3,$f3,$f6
    # Line 305
    swc1	$f5,12($sp)
    # Line 306
    cvt.s.d	$f4,$f4
    swc1	$f4,16($sp)
    # Line 307
    cvt.s.d	$f3,$f3
    # Line 309
    b	.L0d97a190
    # Line 307
    swc1	$f3,20($sp)
.L0d97b7bc:
    # Line 297
    sll	$a4,$a3,0x2
    # Line 298
    addu	$a5,$a4,$a0
    lwc1	$f0,0($a5)
    lwc1	$f19,0($a0)
    ldc1	$f25,_lit8_4010000000000000
    ldc1	$f18,_lit8_c008000000000000
    cvt.d.s	$f0,$f0
    # Line 299
    ldc1	$f27,_lit8_4000000000000000
    subu	$a4,$a4,$a3
    # Line 298
    cvt.d.s	$f19,$f19
    # Line 299
    sll	$a4,$a4,0x2
    # Line 300
    addu	$a1,$a3,$a3
    # Line 298
    mul.d	$f17,$f0,$f25
    # Line 299
    addu	$a4,$a0,$a4
    # Line 300
    sll	$a1,$a1,0x2
    # Line 298
    madd.d	$f18,$f17,$f19,$f18
    # Line 297
    sll	$v1,$a3,0x4
    # Line 299
    lwc1	$f23,0($a4)
    # Line 300
    addu	$a1,$a0,$a1
    # Line 299
    msub.d	$f17,$f17,$f19,$f27
    # Line 297
    addu	$v1,$a0,$v1
    # Line 300
    lwc1	$f29,0($a1)
    # Line 297
    lwc1	$f21,0($v1)
    # Line 300
    ldc1	$f31,_lit8_4018000000000000
    # Line 299
    cvt.d.s	$f23,$f23
    # Line 300
    cvt.d.s	$f29,$f29
    nmsub.d	$f19,$f19,$f0,$f25
    # Line 298
    cvt.d.s	$f16,$f21
    # Line 299
    madd.d	$f17,$f17,$f23,$f25
    # Line 300
    madd.d	$f19,$f19,$f29,$f31
    # Line 299
    nmsub.d	$f17,$f17,$f16,$f27
    # Line 300
    nmsub.d	$f19,$f19,$f23,$f25
    # Line 298
    sub.d	$f18,$f18,$f16
    cvt.s.d	$f18,$f18
    # Line 297
    swc1	$f21,4($sp)
    # Line 300
    add.d	$f16,$f16,$f19
    # Line 298
    swc1	$f18,8($sp)
    # Line 299
    cvt.s.d	$f17,$f17
    swc1	$f17,12($sp)
    # Line 300
    cvt.s.d	$f16,$f16
    # Line 301
    b	.L0d97a190
    # Line 300
    swc1	$f16,16($sp)
.L0d97b864:
    # Line 292
    sll	$a6,$a3,0x2
    # Line 293
    addu	$t1,$a6,$a0
    # Line 294
    addu	$t0,$a3,$a3
    # Line 293
    lwc1	$f1,0($t1)
    ldc1	$f4,_lit8_4008000000000000
    # Line 294
    sll	$t0,$t0,0x2
    # Line 293
    lwc1	$f5,0($a0)
    # Line 294
    addu	$t0,$a0,$t0
    lwc1	$f3,0($t0)
    # Line 293
    cvt.d.s	$f1,$f1
    ldc1	$f6,_lit8_4000000000000000
    # Line 292
    subu	$a6,$a6,$a3
    # Line 293
    cvt.d.s	$f5,$f5
    mul.d	$f2,$f1,$f4
    # Line 292
    sll	$a6,$a6,0x2
    # Line 294
    cvt.d.s	$f3,$f3
    nmsub.d	$f1,$f5,$f1,$f4
    # Line 292
    addu	$a6,$a0,$a6
    # Line 293
    nmsub.d	$f2,$f2,$f5,$f6
    # Line 294
    madd.d	$f1,$f1,$f3,$f4
    # Line 292
    lwc1	$f3,0($a6)
    # Line 293
    cvt.d.s	$f4,$f3
    sub.d	$f2,$f2,$f4
    # Line 294
    sub.d	$f1,$f1,$f4
    # Line 292
    swc1	$f3,4($sp)
    # Line 293
    cvt.s.d	$f2,$f2
    swc1	$f2,8($sp)
    # Line 294
    cvt.s.d	$f1,$f1
    # Line 295
    b	.L0d97a190
    # Line 294
    swc1	$f1,12($sp)
.L0d97b8dc:
    # Line 289
    sll	$t3,$a3,0x2
    addu	$t3,$a0,$t3
    lwc1	$f3,0($t3)
    ldc1	$f4,_lit8_4000000000000000
    lwc1	$f2,0($a0)
    # Line 288
    addu	$t2,$a3,$a3
    # Line 289
    cvt.d.s	$f3,$f3
    # Line 288
    sll	$t2,$t2,0x2
    addu	$t2,$a0,$t2
    # Line 289
    cvt.d.s	$f2,$f2
    msub.d	$f2,$f2,$f3,$f4
    # Line 288
    lwc1	$f3,0($t2)
    # Line 289
    cvt.d.s	$f4,$f3
    sub.d	$f2,$f2,$f4
    # Line 288
    swc1	$f3,4($sp)
    # Line 289
    cvt.s.d	$f2,$f2
    # Line 290
    b	.L0d97a190
    # Line 289
    swc1	$f2,8($sp)
.L0d97b924:
    # Line 285
    addu	$t9,$t8,$a0
    lwc1	$f4,0($t9)
    addu	$t8,$t8,$a2
    # Line 591
    addiu	$sp,$sp,112
    jr	$ra
    # Line 285
    swc1	$f4,0($t8)
.end changebasis

# Function: EvalV
# Declared: Line 602 (Source lines: 603-636)
# Address: 0x0d97b940 - 0x0d97bb30 (Size: 496 bytes, Frame: 0)
.ent EvalV
EvalV:
    # Line 603
    lw	$a5,12($a1)
    li	$at,1
    beq	$a5,$at,.L0d97bac0
    lw	$a4,4($a1)
    # Line 614
    lwc1	$f0,36($a1)
    c.eq.s	$f0,$f14
    bc1f	.L0d97b968
    nop
    # Line 617
    b	.L0d97b97c
    ldc1	$f4,_lit8_3ff0000000000000
.L0d97b968:
    lwc1	$f5,32($a1)
    lwc1	$f4,40($a1)
    sub.s	$f5,$f14,$f5
    mul.s	$f4,$f4,$f5
    cvt.d.s	$f4,$f4
.L0d97b97c:
    # Line 620
    blez	$a4,.L0d97bb28
    nop
    cvt.s.d	$f5,$f4
    ldc1	$f6,_lit8_3ff0000000000000
    cvt.d.s	$f7,$f5
    sub.d	$f6,$f6,$f7
    lw	$t1,8($a1)
    move	$t8,$zero
    b	.L0d97b9e0
    cvt.s.d	$f6,$f6
    nop
    nop
    nop
.L0d97b9b0:
    # Line 622
    lw	$a4,4($a1)
    lw	$a5,12($a1)
    # Line 634
    addiu	$a6,$a5,-1
.L0d97b9bc:
    mult	$t1,$a6
    # Line 633
    sll	$a2,$t1,0x2
    # Line 621
    addiu	$t8,$t8,1
    slt	$v1,$t8,$a4
    # Line 634
    mflo	$v0
    # Line 633
    addu	$a3,$a3,$a2
    # Line 634
    sll	$v0,$v0,0x2
    # Line 621
    beqz	$v1,.L0d97bb28
    # Line 634
    addu	$a0,$a0,$v0
.L0d97b9e0:
    # Line 620
    blez	$t1,.L0d97b9bc
    # Line 634
    addiu	$a6,$a5,-1
    # Line 620
    move	$t3,$a3
    b	.L0d97ba90
    move	$t2,$zero
    nop
    nop
    nop
.L0d97ba00:
    # Line 630
    lwc1	$f9,0($a0)
    # Line 625
    slti	$a7,$t0,2
    bnez	$a7,.L0d97ba70
    addiu	$a6,$t0,-1
    mult	$t1,$t0
    mflo	$a5
    nop
    nop
    mult	$t1,$a6
    negu	$a7,$t1
    addu	$a7,$a7,$a7
    sll	$a7,$a7,0x2
    sll	$a5,$a5,0x2
    mflo	$a4
    sll	$a4,$a4,0x2
    addu	$a5,$a5,$a0
    addu	$a4,$a4,$a0
    nop
    nop
    nop
.L0d97ba50:
    # Line 627
    lwc1	$f7,0($a4)
    madd.s	$f7,$f7,$f5,$f4
    # Line 628
    addiu	$a6,$a6,-2
    addu	$a5,$a5,$a7
    lwc1	$f4,0($a5)
    addu	$a4,$a4,$a7
    bgtz	$a6,.L0d97ba50
    madd.s	$f4,$f4,$f6,$f7
.L0d97ba70:
    # Line 630
    mul.s	$f8,$f5,$f4
    madd.s	$f8,$f8,$f9,$f6
    swc1	$f8,0($t3)
    # Line 622
    lw	$t1,8($a1)
    slt	$t0,$t2,$t1
    addiu	$t3,$t3,4
    beqz	$t0,.L0d97b9b0
    # Line 631
    addiu	$a0,$a0,4
.L0d97ba90:
    # Line 623
    lw	$t0,12($a1)
    andi	$t9,$t0,0x1
    # Line 622
    addiu	$t2,$t2,1
    # Line 623
    bnez	$t9,.L0d97ba00
    # Line 625
    mtc1	$zero,$f4
    # Line 624
    addiu	$t0,$t0,-1
    mult	$t1,$t0
    mflo	$at
    sll	$at,$at,0x2
    addu	$at,$a0,$at
    b	.L0d97ba00
    lwc1	$f4,0($at)
.L0d97bac0:
    # Line 603
    blez	$a4,.L0d97bb28
    nop
    lw	$t1,8($a1)
    move	$t8,$zero
.L0d97bad0:
    blez	$t1,.L0d97bb18
    move	$t2,$zero
    nop
    nop
.L0d97bae0:
    # Line 611
    mult	$t1,$t8
    mflo	$v1
    addu	$v1,$t2,$v1
    sll	$v1,$v1,0x2
    addu	$a2,$v1,$a0
    lwc1	$f10,0($a2)
    addu	$v1,$v1,$a3
    swc1	$f10,0($v1)
    # Line 610
    lw	$t1,8($a1)
    addiu	$t2,$t2,1
    slt	$v0,$t2,$t1
    bnez	$v0,.L0d97bae0
    nop
    lw	$a4,4($a1)
.L0d97bb18:
    # Line 609
    addiu	$t8,$t8,1
    slt	$a2,$t8,$a4
    bnez	$a2,.L0d97bad0
    nop
.L0d97bb28:
    # Line 636
    jr	$ra
    nop
.end EvalV

# Function: EvalU
# Declared: Line 647 (Source lines: 648-679)
# Address: 0x0d97bb30 - 0x0d97bcfc (Size: 460 bytes, Frame: 0)
.ent EvalU
EvalU:
    # Line 648
    lw	$a7,8($a1)
    li	$at,1
    beq	$a7,$at,.L0d97bc80
    nop
    # Line 662
    blez	$a4,.L0d97bcdc
    ldc1	$f8,_lit8_3ff0000000000000
    move	$t8,$zero
    lw	$t2,4($a1)
    b	.L0d97bb6c
    addu	$t9,$a3,$a4
    nop
    nop
.L0d97bb60:
    addiu	$a3,$a3,1
    beq	$a3,$t9,.L0d97bcdc
    addiu	$t8,$t8,1
.L0d97bb6c:
    # Line 663
    lw	$v0,12($a2)
    bne	$v0,$a3,.L0d97bb80
    move	$t0,$a0
    # Line 664
    b	.L0d97bb94
    lwc1	$f4,4($a2)
.L0d97bb80:
    mtc1	$a3,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f6,8($a2)
    lwc1	$f4,0($a2)
    madd.s	$f4,$f4,$f5,$f6
.L0d97bb94:
    lwc1	$f6,24($a1)
    c.eq.s	$f6,$f4
    bc1f	.L0d97bbac
    nop
    # Line 665
    b	.L0d97bbc0
    mov.d	$f7,$f8
.L0d97bbac:
    lwc1	$f9,20($a1)
    lwc1	$f7,28($a1)
    sub.s	$f9,$f4,$f9
    mul.s	$f7,$f7,$f9
    cvt.d.s	$f7,$f7
.L0d97bbc0:
    blez	$t2,.L0d97bb60
    nop
    cvt.s.d	$f5,$f7
    cvt.d.s	$f6,$f5
    sub.d	$f6,$f8,$f6
    move	$t3,$zero
    b	.L0d97bcf0
    cvt.s.d	$f6,$f6
.L0d97bbe0:
    # Line 670
    slti	$v1,$t1,2
    addiu	$a7,$t0,4
    bnez	$v1,.L0d97bc1c
    sll	$a4,$t1,0x2
    addu	$a4,$t0,$a4
    nop
    nop
    nop
.L0d97bc00:
    # Line 672
    lwc1	$f7,-4($a4)
    madd.s	$f7,$f7,$f5,$f4
    # Line 673
    addiu	$a4,$a4,-8
    sltu	$a6,$a7,$a4
    lwc1	$f4,0($a4)
    bnez	$a6,.L0d97bc00
    madd.s	$f4,$f4,$f6,$f7
.L0d97bc1c:
    # Line 675
    mul.s	$f9,$f5,$f4
    madd.s	$f9,$f9,$f10,$f6
    mflo	$v0
    addu	$v0,$t3,$v0
    sll	$v0,$v0,0x2
    addu	$v0,$a5,$v0
    swc1	$f9,0($v0)
    # Line 667
    lw	$t2,4($a1)
    addiu	$t3,$t3,1
    # Line 676
    lw	$a7,8($a1)
    # Line 667
    slt	$at,$t3,$t2
    # Line 668
    andi	$v1,$a7,0x1
    # Line 676
    sll	$t1,$a7,0x2
    # Line 667
    beqz	$at,.L0d97bb60
    # Line 676
    addu	$t0,$t0,$t1
    # Line 670
    mtc1	$zero,$f4
.L0d97bc5c:
    # Line 675
    mult	$t2,$t8
    lwc1	$f10,0($t0)
    # Line 668
    bnez	$v1,.L0d97bbe0
    move	$t1,$a7
    # Line 669
    addiu	$t1,$a7,-1
    sll	$a4,$t1,0x2
    addu	$a4,$t0,$a4
    b	.L0d97bbe0
    lwc1	$f4,0($a4)
.L0d97bc80:
    # Line 648
    blez	$a4,.L0d97bcdc
    nop
    lw	$t2,4($a1)
    move	$t8,$zero
.L0d97bc90:
    blez	$t2,.L0d97bcd0
    move	$a2,$a0
    move	$t3,$zero
    nop
.L0d97bca0:
    # Line 656
    mult	$t2,$t8
    mflo	$a7
    addu	$a7,$t3,$a7
    sll	$a7,$a7,0x2
    lwc1	$f11,0($a2)
    addu	$a7,$a5,$a7
    swc1	$f11,0($a7)
    # Line 655
    lw	$t2,4($a1)
    addiu	$t3,$t3,1
    slt	$a6,$t3,$t2
    bnez	$a6,.L0d97bca0
    addiu	$a2,$a2,4
.L0d97bcd0:
    # Line 654
    addiu	$t8,$t8,1
    bne	$a4,$t8,.L0d97bc90
    nop
.L0d97bcdc:
    # Line 679
    jr	$ra
    nop
    nop
    nop
    nop
.L0d97bcf0:
    # Line 668
    andi	$v1,$a7,0x1
    b	.L0d97bc5c
    # Line 670
    mtc1	$zero,$f4
.end EvalU

# Function: EvalVdV
# Declared: Line 691 (Source lines: 692-725)
# Address: 0x0d97bd00 - 0x0d97be94 (Size: 404 bytes, Frame: 16)
.ent EvalVdV
EvalVdV:
    # Line 692
    lwc1	$f0,36($a1)
    c.eq.s	$f0,$f14
    bc1f	.L0d97bd18
    addiu	$sp,$sp,-16
    # Line 697
    b	.L0d97bd2c
    ldc1	$f4,_lit8_3ff0000000000000
.L0d97bd18:
    lwc1	$f5,32($a1)
    lwc1	$f4,40($a1)
    sub.s	$f5,$f14,$f5
    mul.s	$f4,$f4,$f5
    cvt.d.s	$f4,$f4
.L0d97bd2c:
    # Line 700
    lw	$a5,4($a1)
    blez	$a5,.L0d97be88
    sd	$ra,0($sp)
    cvt.s.d	$f7,$f4
    ldc1	$f6,_lit8_3ff0000000000000
    cvt.d.s	$f8,$f7
    sub.d	$f6,$f6,$f8
    lw	$t2,8($a1)
    move	$ra,$zero
    b	.L0d97bd94
    cvt.s.d	$f6,$f6
    nop
    nop
.L0d97bd60:
    # Line 702
    lw	$a5,4($a1)
.L0d97bd64:
    # Line 723
    lw	$a2,12($a1)
    addiu	$a2,$a2,-1
    mult	$t2,$a2
    # Line 721
    sll	$v1,$t2,0x2
    # Line 722
    addu	$a4,$v1,$a4
    # Line 701
    addiu	$ra,$ra,1
    slt	$v0,$ra,$a5
    # Line 723
    mflo	$at
    # Line 721
    addu	$a3,$v1,$a3
    # Line 723
    sll	$at,$at,0x2
    # Line 701
    beqz	$v0,.L0d97be88
    # Line 723
    addu	$a0,$a0,$at
.L0d97bd94:
    # Line 700
    blez	$t2,.L0d97bd64
    move	$t9,$a3
    move	$t8,$a4
    b	.L0d97be58
    move	$t3,$zero
    nop
    nop
.L0d97bdb0:
    # Line 717
    lwc1	$f11,0($a0)
    # Line 708
    slti	$a5,$t1,2
    addiu	$a6,$t1,-1
    negu	$t0,$t2
    mov.s	$f5,$f4
    bnez	$a5,.L0d97be28
    addu	$t0,$t0,$t0
    sll	$t0,$t0,0x2
    mult	$t2,$t1
    mflo	$a5
    nop
    nop
    mult	$t2,$a6
    sll	$a5,$a5,0x2
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a5,$a5,$a0
    addu	$a7,$a7,$a0
    nop
    nop
.L0d97be00:
    # Line 712
    lwc1	$f8,0($a7)
    madd.s	$f8,$f8,$f7,$f4
    # Line 714
    addu	$a5,$a5,$t0
    # Line 713
    msub.s	$f5,$f8,$f6,$f5
    # Line 714
    lwc1	$f4,0($a5)
    addiu	$a6,$a6,-2
    madd.s	$f4,$f4,$f6,$f8
    addu	$a7,$a7,$t0
    # Line 715
    bgtz	$a6,.L0d97be00
    madd.s	$f5,$f4,$f7,$f5
.L0d97be28:
    # Line 717
    mul.s	$f10,$f7,$f4
    madd.s	$f10,$f10,$f11,$f6
    swc1	$f10,0($t9)
    # Line 718
    lwc1	$f9,0($a0)
    sub.s	$f9,$f5,$f9
    swc1	$f9,0($t8)
    # Line 702
    lw	$t2,8($a1)
    slt	$t1,$t3,$t2
    addiu	$t9,$t9,4
    addiu	$t8,$t8,4
    beqz	$t1,.L0d97bd60
    # Line 719
    addiu	$a0,$a0,4
.L0d97be58:
    # Line 703
    lw	$t1,12($a1)
    andi	$at,$t1,0x1
    # Line 702
    addiu	$t3,$t3,1
    # Line 703
    bnez	$at,.L0d97bdb0
    # Line 708
    mtc1	$zero,$f4
    # Line 705
    addiu	$t1,$t1,-1
    mult	$t2,$t1
    mflo	$v0
    sll	$v0,$v0,0x2
    addu	$v0,$a0,$v0
    b	.L0d97bdb0
    lwc1	$f4,0($v0)
.L0d97be88:
    # Line 725
    ld	$ra,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end EvalVdV

# Function: EvalUdU
# Declared: Line 738 (Source lines: 740-793)
# Address: 0x0d97bea0 - 0x0d97c1ac (Size: 780 bytes, Frame: 160)
.ent EvalUdU
EvalUdU:
    # Line 746
    lw	$at,4112($zero)
    # Line 740
    addiu	$sp,$sp,-160
    sd	$a0,144($sp)
    sd	$a1,128($sp)
    sd	$at,136($sp)
    sdc1	$f20,32($sp)
    sd	$s8,88($sp)
    sd	$s1,80($sp)
    sd	$s7,72($sp)
    sd	$ra,64($sp)
    sd	$s4,56($sp)
    sd	$s6,48($sp)
    sd	$s0,104($sp)
    sd	$s3,112($sp)
    move	$s3,$a2
    move	$s0,$a3
    sd	$s5,96($sp)
    move	$s5,$a6
    # Line 746
    blez	$a5,.L0d97c168
    sd	$s2,40($sp)
    move	$s6,$a4
    move	$s4,$zero
    move	$s8,$a6
    move	$s7,$a7
    ldc1	$f20,_lit8_3ff0000000000000
    addu	$v0,$a4,$a5
    b	.L0d97bf84
    sd	$v0,120($sp)
.L0d97bf10:
    ld	$s0,152($sp)
.L0d97bf14:
    # Line 754
    lwc1	$f5,4($sp)
    lwc1	$f6,24($sp)
    lwc1	$f7,20($sp)
    lwc1	$f8,8($sp)
    li	$v1,4
    lwc1	$f9,16($sp)
    beq	$ra,$v1,.L0d97c104
    lwc1	$f4,0($sp)
.L0d97bf34:
    # Line 788
    mul.s	$f1,$f4,$f6
    msub.s	$f1,$f1,$f9,$f8
    # Line 789
    mul.s	$f0,$f9,$f5
    msub.s	$f0,$f0,$f4,$f7
    # Line 787
    mul.s	$f2,$f8,$f7
    msub.s	$f2,$f2,$f6,$f5
    # Line 791
    ld	$t9,136($sp)
    # Line 789
    swc1	$f0,8($s7)
    # Line 788
    swc1	$f1,4($s7)
    # Line 787
    swc1	$f2,0($s7)
    # Line 791
    lw	$t9,11960($t9)
    move	$a1,$s7
    jalr	$t9
    move	$a0,$s7
    # Line 748
    ld	$ra,120($sp)
    addiu	$s6,$s6,1
    addiu	$s7,$s7,12
    addiu	$s8,$s8,16
    beq	$s6,$ra,.L0d97c168
    addiu	$s4,$s4,1
.L0d97bf84:
    # Line 750
    lw	$at,12($s0)
    # Line 749
    ld	$t8,144($sp)
    # Line 750
    bne	$at,$s6,.L0d97bf9c
    ld	$t3,128($sp)
    # Line 751
    b	.L0d97bfb0
    lwc1	$f4,4($s0)
.L0d97bf9c:
    mtc1	$s6,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f6,8($s0)
    lwc1	$f4,0($s0)
    madd.s	$f4,$f4,$f5,$f6
.L0d97bfb0:
    lwc1	$f6,24($s3)
    c.eq.s	$f6,$f4
    bc1f	.L0d97bfc8
    nop
    # Line 752
    b	.L0d97bfdc
    mov.d	$f5,$f20
.L0d97bfc8:
    lwc1	$f6,20($s3)
    lwc1	$f5,28($s3)
    sub.s	$f6,$f4,$f6
    mul.s	$f5,$f5,$f6
    cvt.d.s	$f5,$f5
.L0d97bfdc:
    lw	$ra,4($s3)
    blez	$ra,.L0d97bf14
    nop
    cvt.s.d	$f8,$f5
    cvt.d.s	$f7,$f8
    sub.d	$f7,$f20,$f7
    addiu	$s1,$sp,16
    sd	$s0,152($sp)
    addiu	$s0,$sp,0
    lw	$a5,8($s3)
    move	$s2,$zero
    b	.L0d97c1a0
    cvt.s.d	$f7,$f7
.L0d97c010:
    # Line 763
    sll	$t1,$t9,0x2
    slti	$v0,$t9,2
    addu	$a5,$t1,$t3
    mov.s	$f5,$f4
    bnez	$v0,.L0d97c068
    addu	$t1,$t1,$t8
    nop
    nop
.L0d97c030:
    # Line 766
    lwc1	$f10,-4($t1)
    # Line 768
    lwc1	$f9,-4($a5)
    # Line 766
    madd.s	$f10,$f10,$f8,$f4
    # Line 768
    madd.s	$f9,$f9,$f8,$f6
    # Line 769
    addiu	$t1,$t1,-8
    # Line 767
    msub.s	$f5,$f10,$f7,$f5
    # Line 769
    lwc1	$f4,0($t1)
    # Line 771
    sltu	$t9,$t2,$t1
    lwc1	$f6,-8($a5)
    # Line 769
    madd.s	$f4,$f4,$f7,$f10
    # Line 771
    madd.s	$f6,$f6,$f7,$f9
    # Line 769
    addiu	$a5,$a5,-8
    # Line 771
    bnez	$t9,.L0d97c030
    # Line 770
    madd.s	$f5,$f4,$f8,$f5
.L0d97c068:
    # Line 773
    mul.s	$f14,$f8,$f4
    madd.s	$f14,$f14,$f15,$f7
    mflo	$v1
    addu	$v1,$s2,$v1
    sll	$v1,$v1,0x2
    addu	$v1,$s5,$v1
    swc1	$f14,0($v1)
    # Line 775
    lwc1	$f13,0($t3)
    mul.s	$f11,$f8,$f6
    # Line 776
    lw	$a5,8($s3)
    # Line 774
    lwc1	$f12,0($t8)
    # Line 775
    madd.s	$f11,$f11,$f13,$f7
    # Line 754
    lw	$ra,4($s3)
    addiu	$s1,$s1,4
    addiu	$s2,$s2,1
    # Line 776
    sll	$v0,$a5,0x2
    # Line 754
    slt	$at,$s2,$ra
    # Line 774
    sub.s	$f12,$f5,$f12
    # Line 755
    andi	$a0,$a5,0x1
    # Line 777
    addu	$t3,$v0,$t3
    # Line 774
    swc1	$f12,-4($s0)
    # Line 776
    addu	$t8,$v0,$t8
    # Line 754
    beqz	$at,.L0d97bf10
    # Line 775
    swc1	$f11,-4($s1)
    # Line 763
    mtc1	$zero,$f4
.L0d97c0cc:
    mtc1	$zero,$f6
    addiu	$t2,$t8,4
    # Line 773
    mult	$ra,$s4
    # Line 754
    addiu	$s0,$s0,4
    # Line 773
    lwc1	$f15,0($t8)
    # Line 755
    bnez	$a0,.L0d97c010
    move	$t9,$a5
    # Line 757
    addiu	$t9,$a5,-1
    sll	$a1,$t9,0x2
    # Line 759
    addu	$a2,$a1,$t3
    # Line 757
    addu	$a1,$a1,$t8
    # Line 759
    lwc1	$f6,0($a2)
    b	.L0d97c010
    # Line 757
    lwc1	$f4,0($a1)
.L0d97c104:
    # Line 783
    lwc1	$f23,28($sp)
    # Line 782
    lwc1	$f21,8($s8)
    # Line 780
    lwc1	$f17,12($s8)
    # Line 781
    lwc1	$f19,4($s8)
    # Line 785
    mul.s	$f27,$f21,$f23
    msub.s	$f6,$f27,$f17,$f6
    # Line 780
    lwc1	$f16,0($s8)
    # Line 784
    mul.s	$f25,$f19,$f23
    msub.s	$f7,$f25,$f17,$f7
    # Line 780
    lwc1	$f18,12($sp)
    # Line 783
    mul.s	$f23,$f16,$f23
    msub.s	$f9,$f23,$f17,$f9
    # Line 782
    mul.s	$f21,$f21,$f18
    msub.s	$f8,$f21,$f17,$f8
    # Line 781
    mul.s	$f19,$f19,$f18
    msub.s	$f5,$f19,$f17,$f5
    # Line 780
    mul.s	$f16,$f16,$f18
    # Line 785
    swc1	$f6,24($sp)
    # Line 780
    msub.s	$f4,$f16,$f17,$f4
    # Line 784
    swc1	$f7,20($sp)
    # Line 783
    swc1	$f9,16($sp)
    # Line 782
    swc1	$f8,8($sp)
    # Line 781
    swc1	$f5,4($sp)
    # Line 785
    b	.L0d97bf34
    # Line 780
    swc1	$f4,0($sp)
.L0d97c168:
    # Line 793
    ld	$s0,104($sp)
    ld	$s1,80($sp)
    ld	$s2,40($sp)
    ld	$s3,112($sp)
    ld	$s4,56($sp)
    ld	$s5,96($sp)
    ld	$s6,48($sp)
    ld	$ra,64($sp)
    ld	$s7,72($sp)
    ld	$s8,88($sp)
    ldc1	$f20,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
    nop
.L0d97c1a0:
    # Line 755
    andi	$a0,$a5,0x1
    b	.L0d97c0cc
    # Line 763
    mtc1	$zero,$f4
.end EvalUdU

# Function: EvalRow1D
# Declared: Line 796 (Source lines: 797-852)
# Address: 0x0d97c1b0 - 0x0d97c490 (Size: 736 bytes, Frame: 192)
.ent EvalRow1D
EvalRow1D:
    # Line 797
    addiu	$sp,$sp,-192
    sd	$s2,40($sp)
    sd	$s0,72($sp)
    sd	$ra,56($sp)
    sd	$a1,32($sp)
    sd	$s3,48($sp)
    sd	$a0,24($sp)
    sd	$s4,64($sp)
    # Line 801
    lw	$s4,4112($zero)
    # Line 797
    sd	$a2,80($sp)
    # Line 804
    lui	$t8,0x1
    # Line 797
    # lw $t9, -32732($gp) # &sub_0d980000
    # Line 804
    addu	$s4,$s4,$t8
    # Line 808
    lw	$v1,-29532($s4)
    sd	$v1,136($sp)
    # Line 797
    move	$a4,$a2
    # Line 811
    lw	$a2,-29512($s4)
    sd	$a2,16($sp)
    # Line 797
    move	$v0,$a0
    # Line 817
    lw	$a0,-29548($s4)
    # Line 810
    lw	$s3,-29520($s4)
    # Line 797
    move	$at,$a1
    # Line 809
    lw	$a1,-29524($s4)
    # Line 807
    lw	$ra,-29536($s4)
    # Line 797
    move	$s2,$a3
    # Line 806
    lw	$s0,-29544($s4)
    # Line 817
    move	$a3,$at
    # Line 797
    addiu	$t9,$t9,-17616
    # Line 804
    lw	$s4,-29556($s4)
    # Line 817
    move	$a5,$s2
    move	$a2,$v0
    # Line 809
    sd	$a1,0($sp)
    # Line 807
    sd	$ra,8($sp)
    # Line 817
    bal __glKonEvalDisable
    move	$a1,$s4
    ld	$t9,136($sp)
    bnez	$t9,.L0d97c418
    # Line 819
    ld	$a0,0($sp)
.L0d97c248:
    bnez	$s0,.L0d97c440
    # Line 822
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
.L0d97c250:
    bnez	$s3,.L0d97c468
    # Line 825
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    ld	$ra,80($sp)
.L0d97c25c:
    blez	$ra,.L0d97c3fc
    addiu	$at,$s2,12288
    addiu	$v0,$s2,4096
    sd	$zero,88($sp)
    sd	$s2,128($sp)
    sd	$at,96($sp)
    sd	$at,112($sp)
    sd	$v0,120($sp)
    sd	$at,104($sp)
    sd	$s1,168($sp)
    sd	$s5,160($sp)
    li	$s5,1
    li	$s1,3
    sd	$s8,152($sp)
    addiu	$s8,$s2,8192
    sd	$s7,176($sp)
    move	$s7,$at
    sd	$s6,144($sp)
    b	.L0d97c340
    move	$s6,$v0
    nop
.L0d97c2b0:
    # Line 842
    jal	sub_0d980000
    move	$a0,$s7
.L0d97c2b8:
    ld	$a2,136($sp)
.L0d97c2bc:
    bnez	$a2,.L0d97c398
    # Line 845
    nop	# was lw $t9, -18204($gp) # &glNormal3fv
    lw	$a3,4($s4)
.L0d97c2c8:
    beq	$a3,$s1,.L0d97c3a8
    # Line 848
    nop	# was lw $t9, -17884($gp) # &glVertex3fv
    # Line 850
    # lw $t9, -17852($gp) # &glVertex4fv
    jal	glVertex4fv
    move	$a0,$s2
    # Line 827
    ld	$a6,120($sp)
.L0d97c2e0:
    ld	$a7,104($sp)
    ld	$t0,96($sp)
    ld	$t2,112($sp)
    ld	$t1,128($sp)
    addiu	$t2,$t2,12
    sd	$t2,112($sp)
    ld	$a5,88($sp)
    addiu	$t1,$t1,12
    sd	$t1,128($sp)
    addiu	$a5,$a5,1
    sd	$a5,88($sp)
    addiu	$s7,$s7,16
    addiu	$s6,$s6,16
    ld	$a4,80($sp)
    addiu	$s2,$s2,16
    addiu	$t0,$t0,8
    sd	$t0,96($sp)
    addiu	$s8,$s8,12
    addiu	$a7,$a7,4
    sd	$a7,104($sp)
    addiu	$a6,$a6,4
    beq	$a4,$a5,.L0d97c3e8
    sd	$a6,120($sp)
    nop
.L0d97c340:
    # Line 825
    beqz	$s0,.L0d97c360
    nop
    lw	$t3,4($s0)
    beq	$t3,$s5,.L0d97c3b8
    # Line 830
    nop	# was lw $t9, -18244($gp) # &glIndexfv
    # Line 832
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s6
.L0d97c360:
    beqz	$s3,.L0d97c2b8
    li	$a3,2
    lw	$a2,4($s3)
    beq	$a2,$s5,.L0d97c3c8
    # Line 836
    nop	# was lw $t9, -18044($gp) # &glTexCoord1fv
    beq	$a2,$a3,.L0d97c3d8
    # Line 838
    nop	# was lw $t9, -18012($gp) # &glTexCoord2fv
    bne	$a2,$s1,.L0d97c2b0
    # Line 842
    nop	# was lw $t9, -17948($gp) # &glTexCoord4fv
    # Line 840
    # lw $t9, -17980($gp) # &glTexCoord3fv
    jal	glTexCoord3fv
    ld	$a0,112($sp)
    b	.L0d97c2bc
    # Line 842
    ld	$a2,136($sp)
.L0d97c398:
    # Line 845
    jalr	$t9
    move	$a0,$s8
    b	.L0d97c2c8
    lw	$a3,4($s4)
.L0d97c3a8:
    # Line 848
    jalr	$t9
    ld	$a0,128($sp)
    b	.L0d97c2e0
    # Line 827
    ld	$a6,120($sp)
.L0d97c3b8:
    # Line 830
    jalr	$t9
    ld	$a0,120($sp)
    b	.L0d97c360
    nop
.L0d97c3c8:
    # Line 836
    jalr	$t9
    ld	$a0,104($sp)
    b	.L0d97c2bc
    # Line 842
    ld	$a2,136($sp)
.L0d97c3d8:
    # Line 838
    jalr	$t9
    ld	$a0,96($sp)
    b	.L0d97c2bc
    # Line 842
    ld	$a2,136($sp)
.L0d97c3e8:
    ld	$s6,144($sp)
    ld	$s8,152($sp)
    ld	$s5,160($sp)
    ld	$s1,168($sp)
    ld	$s7,176($sp)
.L0d97c3fc:
    ld	$s2,40($sp)
    ld	$ra,56($sp)
    ld	$s3,48($sp)
    ld	$s4,64($sp)
    ld	$s0,72($sp)
    # Line 852
    jr	$ra
    addiu	$sp,$sp,192
.L0d97c418:
    # Line 819
    # lw $t9, -32732($gp) # &sub_0d980000
    ld	$a1,136($sp)
    ld	$a2,24($sp)
    addiu	$t9,$t9,-17616
    ld	$a3,32($sp)
    ld	$a4,80($sp)
    bal __glKonEvalDisable
    addiu	$a5,$s2,8192
    b	.L0d97c248
    nop
.L0d97c440:
    # Line 822
    ld	$a0,8($sp)
    ld	$a2,24($sp)
    addiu	$t9,$t9,-17616
    move	$a1,$s0
    ld	$a3,32($sp)
    ld	$a4,80($sp)
    bal __glKonEvalDisable
    addiu	$a5,$s2,4096
    b	.L0d97c250
    nop
.L0d97c468:
    # Line 825
    ld	$a0,16($sp)
    ld	$a2,24($sp)
    addiu	$t9,$t9,-17616
    move	$a1,$s3
    ld	$a3,32($sp)
    ld	$a4,80($sp)
    bal __glKonEvalDisable
    addiu	$a5,$s2,12288
    b	.L0d97c25c
    ld	$ra,80($sp)
.end EvalRow1D

# Function: EvalRow2D
# Declared: Line 855 (Source lines: 856-927)
# Address: 0x0d97c490 - 0x0d97c850 (Size: 960 bytes, Frame: 160)
.ent EvalRow2D
EvalRow2D:
    # Line 856
    addiu	$sp,$sp,-672
    sd	$a3,568($sp)
    sd	$s8,656($sp)
    sd	$ra,648($sp)
    sd	$s6,640($sp)
    sd	$s5,536($sp)
    sdc1	$f20,480($sp)
    sd	$s1,512($sp)
    sd	$s0,528($sp)
    sd	$s2,560($sp)
    sd	$s7,520($sp)
    # Line 862
    lw	$s7,4112($zero)
    # Line 856
    sd	$s3,552($sp)
    # Line 866
    lui	$t8,0x1
    # Line 856
    sd	$s4,544($sp)
    # Line 866
    addu	$s7,$s7,$t8
    # Line 872
    lw	$s2,-29000($s7)
    # Line 868
    lw	$s0,-29024($s7)
    # Line 866
    lw	$v0,-29036($s7)
    # Line 870
    lw	$a0,-29012($s7)
    # Line 869
    lw	$v1,-29016($s7)
    # Line 856
    move	$s4,$a1
    # Line 871
    lw	$a1,-29004($s7)
    # Line 856
    move	$s3,$a2
    # Line 873
    lw	$a2,-28992($s7)
    sd	$a2,504($sp)
    # Line 871
    sd	$a1,488($sp)
    # Line 869
    sd	$v1,496($sp)
    # Line 873
    lbu	$at,-28500($s7)
    # Line 870
    sd	$a0,632($sp)
    # Line 856
    move	$s1,$a4
    # Line 867
    lw	$a0,-29028($s7)
    # Line 856
    mov.s	$f20,$f12
    move	$s5,$a5
    # Line 873
    beqz	$at,.L0d97c7c4
    sd	$v0,576($sp)
    # Line 880
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-17152
    addiu	$a4,$sp,240
    ld	$a1,576($sp)
    mov.s	$f14,$f12
    bal __glKonEvalDisable
    addiu	$a3,$sp,0
    # Line 881
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$a7,$s1,8192
    move	$a6,$s1
    move	$a4,$s3
    addiu	$t9,$t9,-16736
    ld	$a5,568($sp)
    move	$a3,$s4
    addiu	$a1,$sp,240
    ld	$a2,576($sp)
    bal __glKonEvalDisable
    addiu	$a0,$sp,0
    la	$s6,sub_0d980000
    la	$s8,sub_0d980000
    addiu	$s8,$s8,-18112
    addiu	$s6,$s6,-17616
.L0d97c578:
    # Line 887
    bnez	$s0,.L0d97c74c
    # Line 891
    move	$t9,$s8
.L0d97c580:
    # Line 892
    bnez	$s2,.L0d97c788
    # Line 895
    move	$t9,$s8
.L0d97c588:
    # Line 896
    beqz	$s5,.L0d97c718
    # Line 901
    ld	$ra,568($sp)
    blez	$ra,.L0d97c71c
    ld	$s8,656($sp)
    addiu	$v0,$s1,4096
    sd	$zero,584($sp)
    sd	$s1,624($sp)
    addiu	$at,$s1,12288
    sd	$at,592($sp)
    addiu	$s3,$s1,8192
    li	$s8,3
    sd	$at,608($sp)
    li	$s4,1
    sd	$v0,616($sp)
    move	$s5,$v0
    sd	$at,600($sp)
    b	.L0d97c680
    move	$s6,$at
.L0d97c5d0:
    # Line 916
    # lw $t9, -17948($gp) # &glTexCoord4fv
    jal	glTexCoord4fv
    move	$a0,$s6
.L0d97c5dc:
    # Line 918
    ld	$a2,632($sp)
.L0d97c5e0:
    bnez	$a2,.L0d97c5f8
    # Line 919
    nop	# was lw $t9, -18204($gp) # &glNormal3fv
    # Line 918
    lbu	$a3,-28500($s7)
    beqz	$a3,.L0d97c604
    # Line 919
    ld	$a4,576($sp)
    # lw $t9, -18204($gp) # &glNormal3fv
.L0d97c5f8:
    jal	glNormal3fv
    move	$a0,$s3
    ld	$a4,576($sp)
.L0d97c604:
    lw	$a4,4($a4)
    beq	$a4,$s8,.L0d97c6d0
    # Line 924
    nop	# was lw $t9, -17852($gp) # &glVertex4fv
    jal	glVertex4fv
    move	$a0,$s1
.L0d97c618:
    # Line 901
    ld	$a7,616($sp)
    ld	$t0,600($sp)
    ld	$t1,592($sp)
    ld	$t3,608($sp)
    ld	$t2,624($sp)
    addiu	$t3,$t3,12
    sd	$t3,608($sp)
    ld	$a6,584($sp)
    addiu	$t2,$t2,12
    sd	$t2,624($sp)
    addiu	$a6,$a6,1
    sd	$a6,584($sp)
    addiu	$s3,$s3,12
    addiu	$s6,$s6,16
    ld	$a5,568($sp)
    addiu	$s5,$s5,16
    addiu	$t1,$t1,8
    sd	$t1,592($sp)
    addiu	$s1,$s1,16
    addiu	$t0,$t0,4
    sd	$t0,600($sp)
    addiu	$a7,$a7,4
    beq	$a5,$a6,.L0d97c718
    sd	$a7,616($sp)
    nop
    nop
.L0d97c680:
    beqz	$s0,.L0d97c69c
    nop
    lw	$t8,4($s0)
    beq	$t8,$s4,.L0d97c6e4
    # Line 906
    nop	# was lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    move	$a0,$s5
.L0d97c69c:
    beqz	$s2,.L0d97c5dc
    li	$a2,2
    lw	$t0,4($s2)
    beq	$t0,$s4,.L0d97c6f8
    # Line 910
    nop	# was lw $t9, -18044($gp) # &glTexCoord1fv
    beq	$t0,$a2,.L0d97c708
    # Line 912
    nop	# was lw $t9, -18012($gp) # &glTexCoord2fv
    bne	$t0,$s8,.L0d97c5d0
    # Line 914
    nop	# was lw $t9, -17980($gp) # &glTexCoord3fv
    jal	glTexCoord3fv
    ld	$a0,608($sp)
    b	.L0d97c5e0
    # Line 918
    ld	$a2,632($sp)
.L0d97c6d0:
    # Line 922
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    ld	$a0,624($sp)
    b	.L0d97c618
    nop
.L0d97c6e4:
    # Line 904
    # lw $t9, -18244($gp) # &glIndexfv
    jal	glIndexfv
    ld	$a0,616($sp)
    b	.L0d97c69c
    nop
.L0d97c6f8:
    # Line 910
    jalr	$t9
    ld	$a0,600($sp)
    b	.L0d97c5e0
    # Line 918
    ld	$a2,632($sp)
.L0d97c708:
    # Line 912
    jalr	$t9
    ld	$a0,592($sp)
    b	.L0d97c5e0
    # Line 918
    ld	$a2,632($sp)
.L0d97c718:
    ld	$s8,656($sp)
.L0d97c71c:
    ld	$s6,640($sp)
    # Line 927
    ld	$s0,528($sp)
    ld	$s1,512($sp)
    ld	$s2,560($sp)
    ld	$s3,552($sp)
    ld	$s4,544($sp)
    ld	$ra,648($sp)
    ld	$s5,536($sp)
    ld	$s7,520($sp)
    ldc1	$f20,480($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0d97c74c:
    # Line 891
    move	$a1,$s0
    ld	$a0,496($sp)
    mov.s	$f14,$f20
    bal __glKonEvalDisable
    addiu	$a3,$sp,0
    # Line 892
    addiu	$a5,$s1,4096
    move	$a3,$s3
    move	$t9,$s6
    move	$a2,$s4
    move	$a1,$s0
    ld	$a4,568($sp)
    bal __glKonEvalDisable
    addiu	$a0,$sp,0
    b	.L0d97c580
    nop
.L0d97c788:
    # Line 895
    move	$a1,$s2
    ld	$a0,504($sp)
    mov.s	$f14,$f20
    bal __glKonEvalDisable
    addiu	$a3,$sp,0
    # Line 896
    addiu	$a5,$s1,12288
    move	$a3,$s3
    move	$t9,$s6
    move	$a2,$s4
    move	$a1,$s2
    ld	$a4,568($sp)
    bal __glKonEvalDisable
    addiu	$a0,$sp,0
    b	.L0d97c588
    nop
.L0d97c7c4:
    # Line 881
    la	$s8,sub_0d980000
    addiu	$s8,$s8,-18112
    # Line 883
    move	$t9,$s8
    addiu	$a3,$sp,0
    ld	$a1,576($sp)
    bal __glKonEvalDisable
    mov.s	$f14,$f12
    # Line 884
    la	$s6,sub_0d980000
    addiu	$s6,$s6,-17616
    addiu	$a0,$sp,0
    move	$t9,$s6
    ld	$a1,576($sp)
    move	$a2,$s4
    move	$a3,$s3
    ld	$a4,568($sp)
    bal __glKonEvalDisable
    move	$a5,$s1
    ld	$t8,632($sp)
    beqz	$t8,.L0d97c578
    # Line 886
    move	$t9,$s8
    ld	$a0,488($sp)
    ld	$a1,632($sp)
    mov.s	$f14,$f20
    bal __glKonEvalDisable
    addiu	$a3,$sp,0
    # Line 887
    addiu	$a5,$s1,8192
    move	$t9,$s6
    ld	$a4,568($sp)
    move	$a3,$s3
    move	$a2,$s4
    ld	$a1,632($sp)
    bal __glKonEvalDisable
    addiu	$a0,$sp,0
    b	.L0d97c578
    nop
.end EvalRow2D

# Function: Eval2Rows
# Declared: Line 930 (Source lines: 931-1002)
# Address: 0x0d97c850 - 0x0d97cbdc (Size: 908 bytes, Frame: 224)
.ent Eval2Rows
Eval2Rows:
    # Line 931
    addiu	$sp,$sp,-224
    sd	$a0,32($sp)
    sd	$s0,8($sp)
    sd	$s3,0($sp)
    # Line 935
    lw	$s3,4112($zero)
    # Line 931
    sd	$s7,24($sp)
    # Line 939
    lui	$s7,0x1
    # Line 931
    sd	$s1,16($sp)
    # Line 939
    addu	$s3,$s3,$s7
    # Line 942
    lw	$s1,-29000($s3)
    # Line 941
    lw	$s7,-29012($s3)
    # Line 940
    lw	$s0,-29024($s3)
    # Line 939
    lw	$at,-29036($s3)
    # Line 942
    addiu	$t9,$a1,12288
    blez	$a0,.L0d97cbc4
    sd	$at,128($sp)
    addiu	$v0,$a2,4096
    sd	$zero,40($sp)
    sd	$a1,112($sp)
    sd	$a2,120($sp)
    addiu	$at,$a2,12288
    sd	$at,56($sp)
    sd	$t9,48($sp)
    sd	$ra,200($sp)
    addiu	$ra,$a1,4096
    sd	$ra,160($sp)
    sd	$t9,144($sp)
    sd	$v0,152($sp)
    sd	$at,136($sp)
    sd	$t9,80($sp)
    addiu	$a0,$a1,8192
    sd	$a0,168($sp)
    sd	$at,88($sp)
    sd	$v0,96($sp)
    sd	$at,72($sp)
    sd	$ra,104($sp)
    sd	$s5,216($sp)
    sd	$s4,208($sp)
    sd	$s2,176($sp)
    li	$s2,1
    li	$s4,3
    sd	$s6,184($sp)
    move	$s6,$a1
    move	$s5,$a2
    sd	$s8,192($sp)
    addiu	$s8,$a2,8192
    b	.L0d97cac0
    sd	$t9,64($sp)
.L0d97c910:
    # Line 968
    jalr	$t9
    ld	$a0,136($sp)
.L0d97c918:
    # Line 970
    bnez	$s7,.L0d97c930
    # Line 971
    nop	# was lw $t9, -18204($gp) # &glNormal3fv
    # Line 970
    lbu	$t8,-28500($s3)
    beqz	$t8,.L0d97c93c
    # Line 971
    ld	$t9,128($sp)
    # lw $t9, -18204($gp) # &glNormal3fv
.L0d97c930:
    jal	glNormal3fv
    move	$a0,$s8
    ld	$t9,128($sp)
.L0d97c93c:
    lw	$t9,4($t9)
    beq	$t9,$s4,.L0d97cb14
    # Line 974
    nop	# was lw $t9, -17884($gp) # &glVertex3fv
    # Line 976
    # lw $t9, -17852($gp) # &glVertex4fv
    jal	glVertex4fv
    move	$a0,$s5
.L0d97c954:
    beqz	$s0,.L0d97c974
    nop
    lw	$ra,4($s0)
    beq	$ra,$s2,.L0d97cb4c
    # Line 980
    nop	# was lw $t9, -18244($gp) # &glIndexfv
    # Line 982
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    ld	$a0,160($sp)
.L0d97c974:
    beqz	$s1,.L0d97c9a8
    nop
    lw	$a4,4($s1)
    # Line 986
    li	$at,2
    # Line 982
    beq	$a4,$s2,.L0d97cb7c
    # Line 986
    nop	# was lw $t9, -18044($gp) # &glTexCoord1fv
    beq	$a4,$at,.L0d97cb9c
    # Line 988
    nop	# was lw $t9, -18012($gp) # &glTexCoord2fv
    beq	$a4,$s4,.L0d97cb5c
    # Line 990
    nop	# was lw $t9, -17980($gp) # &glTexCoord3fv
    # Line 992
    # lw $t9, -17948($gp) # &glTexCoord4fv
    jal	glTexCoord4fv
    ld	$a0,144($sp)
.L0d97c9a8:
    # Line 994
    bnez	$s7,.L0d97c9c0
    # Line 995
    nop	# was lw $t9, -18204($gp) # &glNormal3fv
    # Line 994
    lbu	$v0,-28500($s3)
    beqz	$v0,.L0d97c9cc
    # Line 995
    ld	$v1,128($sp)
    # lw $t9, -18204($gp) # &glNormal3fv
.L0d97c9c0:
    jal	glNormal3fv
    ld	$a0,168($sp)
    ld	$v1,128($sp)
.L0d97c9cc:
    lw	$v1,4($v1)
    beq	$v1,$s4,.L0d97cb24
    # Line 1000
    nop	# was lw $t9, -17852($gp) # &glVertex4fv
    jal	glVertex4fv
    move	$a0,$s6
    # Line 953
    ld	$a2,96($sp)
.L0d97c9e4:
    ld	$a3,72($sp)
    ld	$a4,104($sp)
    ld	$a5,64($sp)
    ld	$a6,56($sp)
    ld	$a7,48($sp)
    ld	$t0,160($sp)
    ld	$t1,144($sp)
    ld	$t2,152($sp)
    ld	$t3,136($sp)
    ld	$t8,112($sp)
    ld	$t9,80($sp)
    ld	$ra,168($sp)
    ld	$v0,88($sp)
    ld	$at,120($sp)
    addiu	$v0,$v0,12
    sd	$v0,88($sp)
    addiu	$at,$at,12
    sd	$at,120($sp)
    addiu	$ra,$ra,12
    sd	$ra,168($sp)
    addiu	$t9,$t9,12
    sd	$t9,80($sp)
    addiu	$t8,$t8,12
    sd	$t8,112($sp)
    addiu	$t3,$t3,16
    sd	$t3,136($sp)
    addiu	$t2,$t2,16
    sd	$t2,152($sp)
    addiu	$t1,$t1,16
    sd	$t1,144($sp)
    addiu	$t0,$t0,16
    sd	$t0,160($sp)
    addiu	$a7,$a7,8
    sd	$a7,48($sp)
    addiu	$a6,$a6,8
    sd	$a6,56($sp)
    ld	$a1,40($sp)
    addiu	$a5,$a5,4
    sd	$a5,64($sp)
    addiu	$a1,$a1,1
    sd	$a1,40($sp)
    addiu	$s8,$s8,12
    ld	$a0,32($sp)
    addiu	$s5,$s5,16
    addiu	$a4,$a4,4
    sd	$a4,104($sp)
    addiu	$s6,$s6,16
    addiu	$a3,$a3,4
    sd	$a3,72($sp)
    addiu	$a2,$a2,4
    beq	$a0,$a1,.L0d97cbac
    sd	$a2,96($sp)
    nop
    nop
    nop
.L0d97cac0:
    # Line 942
    beqz	$s0,.L0d97cadc
    nop
    lw	$v1,4($s0)
    beq	$v1,$s2,.L0d97cb38
    # Line 958
    nop	# was lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    ld	$a0,152($sp)
.L0d97cadc:
    beqz	$s1,.L0d97c918
    li	$a1,2
    lw	$a4,4($s1)
    beq	$a4,$s2,.L0d97cb6c
    # Line 962
    nop	# was lw $t9, -18044($gp) # &glTexCoord1fv
    beq	$a4,$a1,.L0d97cb8c
    # Line 964
    nop	# was lw $t9, -18012($gp) # &glTexCoord2fv
    bne	$a4,$s4,.L0d97c910
    # Line 968
    nop	# was lw $t9, -17948($gp) # &glTexCoord4fv
    # Line 966
    # lw $t9, -17980($gp) # &glTexCoord3fv
    jal	glTexCoord3fv
    ld	$a0,88($sp)
    b	.L0d97c918
    nop
.L0d97cb14:
    # Line 974
    jalr	$t9
    ld	$a0,120($sp)
    b	.L0d97c954
    nop
.L0d97cb24:
    # Line 998
    # lw $t9, -17884($gp) # &glVertex3fv
    jal	glVertex3fv
    ld	$a0,112($sp)
    b	.L0d97c9e4
    # Line 953
    ld	$a2,96($sp)
.L0d97cb38:
    # Line 956
    # lw $t9, -18244($gp) # &glIndexfv
    jal	glIndexfv
    ld	$a0,96($sp)
    b	.L0d97cadc
    nop
.L0d97cb4c:
    # Line 980
    jalr	$t9
    ld	$a0,104($sp)
    b	.L0d97c974
    nop
.L0d97cb5c:
    # Line 990
    jalr	$t9
    ld	$a0,80($sp)
    b	.L0d97c9a8
    nop
.L0d97cb6c:
    # Line 962
    jalr	$t9
    ld	$a0,72($sp)
    b	.L0d97c918
    nop
.L0d97cb7c:
    # Line 986
    jalr	$t9
    ld	$a0,64($sp)
    b	.L0d97c9a8
    nop
.L0d97cb8c:
    # Line 964
    jalr	$t9
    ld	$a0,56($sp)
    b	.L0d97c918
    nop
.L0d97cb9c:
    # Line 988
    jalr	$t9
    ld	$a0,48($sp)
    b	.L0d97c9a8
    nop
.L0d97cbac:
    ld	$s2,176($sp)
    ld	$s6,184($sp)
    ld	$s8,192($sp)
    ld	$ra,200($sp)
    ld	$s4,208($sp)
    ld	$s5,216($sp)
.L0d97cbc4:
    ld	$s3,0($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s7,24($sp)
    # Line 1002
    jr	$ra
    addiu	$sp,$sp,224
.end Eval2Rows

# Function: __glKonEvalCoord1DHost
# Declared: Line 1005 (Source lines: 1006-1012)
# Address: 0x0d97cbe0 - 0x0d97cc2c (Size: 76 bytes, Frame: 160)
.globl __glKonEvalCoord1DHost
.ent __glKonEvalCoord1DHost
__glKonEvalCoord1DHost:
    # Line 1006
    addiu	$sp,$sp,-16416
    sd	$ra,16400($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,17400
    sd	$gp,16408($sp)
    addu	$gp,$t9,$ra
    # Line 1011
    # lw $t9, -32732($gp) # &sub_0d980000
    li	$a2,1
    addiu	$t9,$t9,-15952
    move	$a1,$zero
    addiu	$a3,$sp,16
    # Line 1010
    swc1	$f12,4($sp)
    # Line 1011
    addiu	$a0,$sp,0
    bal __glKonEvalDisable
    # Line 1010
    sw	$zero,12($sp)
    ld	$ra,16400($sp)
    # Line 1012
    ld	$gp,16408($sp)
    jr	$ra
    addiu	$sp,$sp,16416
.end __glKonEvalCoord1DHost

# Function: __glKonEvalMesh1DHost
# Declared: Line 1015 (Source lines: 1016-1049)
# Address: 0x0d97cc30 - 0x0d97ce4c (Size: 540 bytes, Frame: 192)
.globl __glKonEvalMesh1DHost
.ent __glKonEvalMesh1DHost
__glKonEvalMesh1DHost:
    # Line 1016
    addiu	$sp,$sp,-16448
    sd	$s1,16400($sp)
    # Line 1019
    lw	$s1,4112($zero)
    lw	$v0,1944($s1)
    # Line 1016
    sd	$s4,16384($sp)
    move	$s4,$a2
    lui	$at,0x11
    sd	$s0,16392($sp)
    move	$s0,$a1
    addiu	$at,$at,17320
    sd	$gp,16408($sp)
    # Line 1019
    beqz	$v0,.L0d97cd58
    # Line 1016
    addu	$gp,$t9,$at
    # Line 1023
    slt	$v0,$a2,$a1
    bnez	$v0,.L0d97cd58
    # Line 1027
    li	$v1,6912
    beq	$a0,$v1,.L0d97cd70
    nop
    li	$a1,6913
    bne	$a0,$a1,.L0d97cd58
    nop
    sd	$s2,16440($sp)
    # Line 1039
    addiu	$s2,$s0,256
    slt	$a2,$a2,$s2
    sd	$s5,16416($sp)
    addiu	$s5,$s1,1932
    bnez	$a2,.L0d97cd00
    sd	$s3,16432($sp)
    la	$s3,sub_0d980000
    sd	$ra,16424($sp)
    addiu	$s3,$s3,-15952
    nop
.L0d97ccb0:
    # Line 1040
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    # Line 1041
    move	$a0,$s5
    move	$t9,$s3
    move	$a1,$s0
    addiu	$a3,$sp,0
    bal __glKonEvalDisable
    li	$a2,256
    # Line 1042
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1039
    addiu	$s2,$s2,255
    slt	$ra,$s4,$s2
    beqz	$ra,.L0d97ccb0
    addiu	$s0,$s0,255
    b	.L0d97cd14
    # Line 1044
    lw	$t9,6132($s1)
.L0d97cd00:
    # Line 1039
    la	$s3,sub_0d980000
    addiu	$s5,$s1,1932
    sd	$ra,16424($sp)
    addiu	$s3,$s3,-15952
    # Line 1044
    lw	$t9,6132($s1)
.L0d97cd14:
    lw	$t9,28($t9)
    ld	$s2,16440($sp)
    jalr	$t9
    li	$a0,3
    # Line 1045
    move	$a0,$s5
    move	$a1,$s0
    move	$t9,$s3
    addiu	$a3,$sp,0
    subu	$a2,$s4,$s0
    bal __glKonEvalDisable
    addiu	$a2,$a2,1
    # Line 1046
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    ld	$s3,16432($sp)
    jalr	$t9
    ld	$s5,16416($sp)
    ld	$ra,16424($sp)
.L0d97cd58:
    ld	$s4,16384($sp)
    ld	$s0,16392($sp)
    ld	$s1,16400($sp)
    # Line 1049
    ld	$gp,16408($sp)
    jr	$ra
    addiu	$sp,$sp,16448
.L0d97cd70:
    sd	$s2,16440($sp)
    # Line 1029
    addiu	$s2,$a1,256
    slt	$at,$a2,$s2
    sd	$s5,16416($sp)
    addiu	$s5,$s1,1932
    bnez	$at,.L0d97cdf0
    sd	$s3,16432($sp)
    la	$s3,sub_0d980000
    sd	$ra,16424($sp)
    addiu	$s3,$s3,-15952
    nop
    nop
.L0d97cda0:
    # Line 1030
    lw	$t9,6132($s1)
    lw	$t9,28($t9)
    jalr	$t9
    move	$a0,$zero
    # Line 1031
    move	$a0,$s5
    move	$t9,$s3
    move	$a1,$s0
    addiu	$a3,$sp,0
    bal __glKonEvalDisable
    li	$a2,256
    # Line 1032
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1029
    addiu	$s2,$s2,256
    slt	$ra,$s4,$s2
    beqz	$ra,.L0d97cda0
    addiu	$s0,$s0,256
    b	.L0d97ce04
    # Line 1034
    lw	$t9,6132($s1)
.L0d97cdf0:
    # Line 1029
    la	$s3,sub_0d980000
    addiu	$s5,$s1,1932
    sd	$ra,16424($sp)
    addiu	$s3,$s3,-15952
    # Line 1034
    lw	$t9,6132($s1)
.L0d97ce04:
    lw	$t9,28($t9)
    ld	$s2,16440($sp)
    jalr	$t9
    move	$a0,$zero
    # Line 1035
    move	$a0,$s5
    move	$a1,$s0
    move	$t9,$s3
    addiu	$a3,$sp,0
    subu	$a2,$s4,$s0
    bal __glKonEvalDisable
    addiu	$a2,$a2,1
    # Line 1036
    lw	$t9,6132($s1)
    lw	$t9,44($t9)
    ld	$s3,16432($sp)
    jalr	$t9
    ld	$s5,16416($sp)
    b	.L0d97cd58
    ld	$ra,16424($sp)
.end __glKonEvalMesh1DHost

# Function: __glKonEvalCoord2DHost
# Declared: Line 1052 (Source lines: 1053-1059)
# Address: 0x0d97ce50 - 0x0d97cea4 (Size: 84 bytes, Frame: 160)
.globl __glKonEvalCoord2DHost
.ent __glKonEvalCoord2DHost
__glKonEvalCoord2DHost:
    # Line 1053
    addiu	$sp,$sp,-16416
    sd	$ra,16400($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,16776
    sd	$gp,16408($sp)
    addu	$gp,$t9,$ra
    # Line 1058
    # lw $t9, -32732($gp) # &sub_0d980000
    li	$a5,1
    li	$a3,1
    addiu	$t9,$t9,-15216
    move	$a2,$zero
    addiu	$a4,$sp,16
    # Line 1057
    sw	$zero,12($sp)
    # Line 1058
    addiu	$a1,$sp,0
    # Line 1057
    swc1	$f12,4($sp)
    # Line 1058
    bal __glKonEvalDisable
    mov.s	$f12,$f13
    ld	$ra,16400($sp)
    # Line 1059
    ld	$gp,16408($sp)
    jr	$ra
    addiu	$sp,$sp,16416
.end __glKonEvalCoord2DHost

# Function: __glKonEvalMesh2DHost
# Declared: Line 1062 (Source lines: 1063-1155)
# Address: 0x0d97ceb0 - 0x0d97d73c (Size: 2188 bytes, Frame: 0)
.globl __glKonEvalMesh2DHost
.ent __glKonEvalMesh2DHost
__glKonEvalMesh2DHost:
    # Line 1063
    li	$at,0x8100
    subu	$sp,$sp,$at
    move	$v1,$s8
    sd	$v1,48($sp)
    sd	$a3,104($sp)
    sdc1	$f20,144($sp)
    sd	$s7,152($sp)
    sd	$s4,160($sp)
    sd	$ra,168($sp)
    sd	$s3,176($sp)
    sd	$s5,184($sp)
    sd	$s0,40($sp)
    # Line 1069
    lw	$s0,4112($zero)
    sd	$s2,192($sp)
    # Line 1063
    addu	$s8,$sp,$at
    # Line 1074
    lw	$at,1960($s0)
    # Line 1063
    lui	$v0,0x11
    sd	$s6,56($sp)
    addiu	$v0,$v0,16680
    move	$s6,$a1
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1074
    beqz	$at,.L0d97cfa8
    sd	$s1,200($sp)
    lw	$a6,1976($s0)
    beqz	$a6,.L0d97cfa8
    # Line 1075
    slt	$a1,$a2,$a1
    bnez	$a1,.L0d97cfa8
    ld	$a3,104($sp)
    slt	$a3,$a4,$a3
    bnez	$a3,.L0d97cfa8
    # Line 1077
    li	$a5,6912
    sd	$a4,16($sp)
    beq	$a0,$a5,.L0d97d25c
    sd	$a2,32($sp)
    li	$a7,6913
    beq	$a0,$a7,.L0d97d298
    li	$t0,6914
    bne	$a0,$t0,.L0d97cfac
    ld	$s1,200($sp)
    # Line 1129
    ld	$t1,32($sp)
    addiu	$t1,$t1,-256
    sd	$t1,88($sp)
    slt	$t1,$t1,$s6
    bnez	$t1,.L0d97d120
    addiu	$s7,$s0,1948
    la	$s3,sub_0d980000
    ld	$t3,104($sp)
    ld	$t2,16($sp)
    la	$s5,sub_0d980000
    addiu	$t9,$t2,1
    sd	$t9,136($sp)
    subu	$t8,$t2,$t3
    sd	$t8,8($sp)
    addiu	$s5,$s5,-14256
    addiu	$t3,$t3,1
    sd	$t3,72($sp)
    addiu	$s3,$s3,-15216
    slt	$t2,$t2,$t3
    xori	$t2,$t2,0x1
    b	.L0d97d004
    sd	$t2,80($sp)
.L0d97cfa8:
    ld	$s1,200($sp)
.L0d97cfac:
    ld	$s2,192($sp)
    ld	$s5,184($sp)
    ld	$s3,176($sp)
    ld	$s4,160($sp)
    ld	$s7,152($sp)
    ldc1	$f20,144($sp)
    # Line 1155
    ld	$gp,24($sp)
    ld	$s0,40($sp)
    ld	$ra,168($sp)
    ld	$at,48($sp)
    ld	$s6,56($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$at
    nop
    nop
    nop
.L0d97cff0:
    # Line 1129
    ld	$v0,88($sp)
    addiu	$s6,$s6,255
    slt	$v0,$v0,$s6
    bnez	$v0,.L0d97d10c
    lw	$a6,1976($s0)
.L0d97d004:
    ld	$v1,104($sp)
    bne	$a6,$v1,.L0d97d018
    # Line 1130
    ld	$a0,104($sp)
    b	.L0d97d02c
    lwc1	$f12,1968($s0)
.L0d97d018:
    mtc1	$a0,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f14,1972($s0)
    lwc1	$f12,1964($s0)
    madd.s	$f12,$f12,$f13,$f14
.L0d97d02c:
    # Line 1131
    move	$a1,$s7
    move	$a2,$s6
    li	$a3,256
    lui	$s2,0xffff
    move	$t9,$s3
    addu	$s2,$s2,$s8
    move	$a5,$zero
    addiu	$s2,$s2,32720
    bal __glKonEvalDisable
    move	$a4,$s2
    # Line 1133
    ld	$t8,80($sp)
    lui	$s4,0xffff
    addiu	$s2,$s8,-16432
    addu	$s4,$s4,$s8
    ld	$s1,72($sp)
    beqz	$t8,.L0d97cff0
    addiu	$s4,$s4,32720
    b	.L0d97d0ec
    lw	$at,1976($s0)
    nop
    nop
.L0d97d080:
    # Line 1135
    move	$a1,$s7
    move	$a2,$s6
    move	$t9,$s3
    li	$a3,256
    move	$a4,$s2
    bal __glKonEvalDisable
    move	$a5,$zero
    # Line 1136
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,8
    # Line 1137
    move	$t9,$s5
    li	$a0,256
    move	$a1,$s4
    sd	$s4,128($sp)
    bal __glKonEvalDisable
    move	$a2,$s2
    # Line 1138
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1133
    ld	$ra,136($sp)
    addiu	$s1,$s1,1
    # Line 1139
    move	$s4,$s2
    # Line 1133
    beq	$ra,$s1,.L0d97cff0
    # Line 1139
    ld	$s2,128($sp)
    # Line 1133
    lw	$at,1976($s0)
.L0d97d0ec:
    # Line 1134
    mtc1	$s1,$f13
    lwc1	$f14,1972($s0)
    # Line 1133
    beq	$at,$s1,.L0d97d080
    # Line 1134
    lwc1	$f12,1968($s0)
    cvt.s.w	$f13,$f13
    lwc1	$f12,1964($s0)
    b	.L0d97d080
    madd.s	$f12,$f12,$f13,$f14
.L0d97d10c:
    # Line 1129
    ld	$v0,104($sp)
    bne	$a6,$v0,.L0d97d154
    # Line 1142
    ld	$t8,104($sp)
.L0d97d118:
    b	.L0d97d168
    lwc1	$f12,1968($s0)
.L0d97d120:
    # Line 1129
    la	$s3,sub_0d980000
    la	$s5,sub_0d980000
    ld	$v1,104($sp)
    ld	$a0,16($sp)
    addiu	$s5,$s5,-14256
    addiu	$a1,$v1,1
    sd	$a1,72($sp)
    addiu	$s3,$s3,-15216
    slt	$a0,$a0,$a1
    xori	$a0,$a0,0x1
    beq	$a6,$v1,.L0d97d118
    sd	$a0,80($sp)
    # Line 1142
    ld	$t8,104($sp)
.L0d97d154:
    mtc1	$t8,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f14,1972($s0)
    lwc1	$f12,1964($s0)
    madd.s	$f12,$f12,$f13,$f14
.L0d97d168:
    # Line 1143
    move	$a1,$s7
    move	$a2,$s6
    move	$a5,$zero
    ld	$s2,32($sp)
    move	$t9,$s3
    lui	$a4,0xffff
    addu	$a4,$a4,$s8
    subu	$s2,$s2,$s6
    addiu	$a4,$a4,32720
    addiu	$s2,$s2,1
    bal __glKonEvalDisable
    move	$a3,$s2
    # Line 1145
    ld	$t8,80($sp)
    ld	$s1,72($sp)
    beqz	$t8,.L0d97cfa8
    sd	$s2,112($sp)
    ld	$t8,16($sp)
    addiu	$s2,$s8,-16432
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    addiu	$t8,$t8,1
    sd	$t8,136($sp)
    b	.L0d97d238
    addiu	$s4,$s4,32720
    nop
    nop
.L0d97d1d0:
    # Line 1147
    move	$a1,$s7
    move	$t9,$s3
    move	$a2,$s6
    move	$a4,$s2
    ld	$a3,112($sp)
    bal __glKonEvalDisable
    move	$a5,$zero
    # Line 1148
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,8
    # Line 1149
    move	$t9,$s5
    sd	$s4,96($sp)
    move	$a1,$s4
    ld	$a0,112($sp)
    bal __glKonEvalDisable
    move	$a2,$s2
    # Line 1150
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1145
    ld	$ra,136($sp)
    addiu	$s1,$s1,1
    # Line 1151
    move	$s4,$s2
    # Line 1145
    beq	$ra,$s1,.L0d97cfa8
    # Line 1151
    ld	$s2,96($sp)
.L0d97d238:
    # Line 1145
    lw	$at,1976($s0)
    # Line 1146
    mtc1	$s1,$f13
    lwc1	$f14,1972($s0)
    # Line 1145
    beq	$at,$s1,.L0d97d1d0
    # Line 1146
    lwc1	$f12,1968($s0)
    cvt.s.w	$f13,$f13
    lwc1	$f12,1964($s0)
    b	.L0d97d1d0
    madd.s	$f12,$f12,$f13,$f14
.L0d97d25c:
    # Line 1079
    ld	$v0,32($sp)
    addiu	$v0,$v0,-256
    sd	$v0,88($sp)
    slt	$v0,$v0,$s6
    bnez	$v0,.L0d97d718
    addiu	$s7,$s0,1948
    ld	$s5,16($sp)
    lui	$s2,0xffff
    la	$s3,sub_0d980000
    addu	$s2,$s2,$s8
    addiu	$s2,$s2,32720
    addiu	$t9,$s5,1
    sd	$t9,136($sp)
    b	.L0d97d300
    addiu	$s3,$s3,-15216
.L0d97d298:
    # Line 1095
    ld	$ra,32($sp)
    addiu	$ra,$ra,-256
    sd	$ra,88($sp)
    slt	$ra,$ra,$s6
    bnez	$ra,.L0d97d594
    addiu	$s7,$s0,1948
    la	$s3,sub_0d980000
    ld	$v0,104($sp)
    ld	$at,16($sp)
    la	$s5,sub_0d980000
    addiu	$t9,$at,1
    sd	$t9,136($sp)
    subu	$t8,$at,$v0
    sd	$t8,8($sp)
    addiu	$s5,$s5,-14256
    addiu	$v0,$v0,1
    sd	$v0,72($sp)
    addiu	$s3,$s3,-15216
    slt	$at,$at,$v0
    xori	$at,$at,0x1
    b	.L0d97d434
    sd	$at,80($sp)
.L0d97d2f0:
    # Line 1079
    addiu	$s6,$s6,256
    slt	$ra,$ra,$s6
    bnez	$ra,.L0d97d384
    nop
.L0d97d300:
    b	.L0d97d360
    # Line 1080
    ld	$s1,104($sp)
    nop
    nop
.L0d97d310:
    # Line 1082
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    move	$a0,$zero
    # Line 1083
    move	$a1,$s7
    move	$a2,$s6
    move	$t9,$s3
    li	$a5,1
    move	$a4,$s2
    mov.s	$f12,$f20
    bal __glKonEvalDisable
    li	$a3,256
    # Line 1084
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1080
    ld	$ra,136($sp)
    addiu	$s1,$s1,1
    beq	$ra,$s1,.L0d97d2f0
    # Line 1079
    ld	$ra,88($sp)
.L0d97d360:
    # Line 1080
    lw	$at,1976($s0)
    # Line 1081
    mtc1	$s1,$f21
    lwc1	$f23,1972($s0)
    # Line 1080
    beq	$at,$s1,.L0d97d310
    # Line 1081
    lwc1	$f20,1968($s0)
    cvt.s.w	$f21,$f21
    lwc1	$f20,1964($s0)
    b	.L0d97d310
    madd.s	$f20,$f20,$f21,$f23
.L0d97d384:
    # Line 1087
    ld	$s4,32($sp)
    subu	$s4,$s4,$s6
    ld	$s1,104($sp)
    b	.L0d97d3f0
    addiu	$s4,$s4,1
    nop
    nop
.L0d97d3a0:
    # Line 1089
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    move	$a0,$zero
    # Line 1090
    move	$a1,$s7
    move	$a2,$s6
    move	$t9,$s3
    move	$a3,$s4
    move	$a4,$s2
    mov.s	$f12,$f20
    bal __glKonEvalDisable
    li	$a5,1
    # Line 1091
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1087
    ld	$ra,136($sp)
    addiu	$s1,$s1,1
    beq	$ra,$s1,.L0d97d414
    nop
.L0d97d3f0:
    lw	$at,1976($s0)
    # Line 1088
    mtc1	$s1,$f21
    lwc1	$f23,1972($s0)
    # Line 1087
    beq	$at,$s1,.L0d97d3a0
    # Line 1088
    lwc1	$f20,1968($s0)
    cvt.s.w	$f21,$f21
    lwc1	$f20,1964($s0)
    b	.L0d97d3a0
    madd.s	$f20,$f20,$f21,$f23
.L0d97d414:
    b	.L0d97cfac
    ld	$s1,200($sp)
    nop
.L0d97d420:
    # Line 1095
    ld	$v0,88($sp)
    addiu	$s6,$s6,255
    slt	$v0,$v0,$s6
    bnez	$v0,.L0d97d580
    lw	$a6,1976($s0)
.L0d97d434:
    ld	$v1,104($sp)
    bne	$a6,$v1,.L0d97d448
    # Line 1096
    ld	$a0,104($sp)
    b	.L0d97d45c
    lwc1	$f20,1968($s0)
.L0d97d448:
    mtc1	$a0,$f21
    cvt.s.w	$f21,$f21
    lwc1	$f23,1972($s0)
    lwc1	$f20,1964($s0)
    madd.s	$f20,$f20,$f21,$f23
.L0d97d45c:
    # Line 1097
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    # Line 1098
    move	$a1,$s7
    move	$a2,$s6
    li	$a5,1
    lui	$s1,0xffff
    move	$t9,$s3
    addu	$s1,$s1,$s8
    li	$a3,256
    addiu	$s1,$s1,32720
    mov.s	$f12,$f20
    bal __glKonEvalDisable
    move	$a4,$s1
    # Line 1099
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1101
    ld	$ra,80($sp)
    lui	$s4,0xffff
    addiu	$s2,$s8,-16432
    addu	$s4,$s4,$s8
    ld	$s1,72($sp)
    beqz	$ra,.L0d97d420
    addiu	$s4,$s4,32720
    b	.L0d97d560
    lw	$at,1976($s0)
    nop
.L0d97d4d0:
    # Line 1103
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    # Line 1104
    move	$a1,$s7
    move	$a2,$s6
    move	$t9,$s3
    li	$a5,1
    move	$a4,$s2
    mov.s	$f12,$f20
    bal __glKonEvalDisable
    li	$a3,256
    # Line 1105
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1106
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,1
    # Line 1107
    move	$t9,$s5
    li	$a0,255
    move	$a1,$s4
    sd	$s4,120($sp)
    bal __glKonEvalDisable
    move	$a2,$s2
    # Line 1108
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1101
    ld	$ra,136($sp)
    addiu	$s1,$s1,1
    # Line 1109
    move	$s4,$s2
    # Line 1101
    beq	$ra,$s1,.L0d97d420
    # Line 1109
    ld	$s2,120($sp)
    # Line 1101
    lw	$at,1976($s0)
.L0d97d560:
    # Line 1102
    mtc1	$s1,$f21
    lwc1	$f23,1972($s0)
    # Line 1101
    beq	$at,$s1,.L0d97d4d0
    # Line 1102
    lwc1	$f20,1968($s0)
    cvt.s.w	$f21,$f21
    lwc1	$f20,1964($s0)
    b	.L0d97d4d0
    madd.s	$f20,$f20,$f21,$f23
.L0d97d580:
    # Line 1095
    ld	$v0,104($sp)
    bne	$a6,$v0,.L0d97d5c8
    # Line 1112
    ld	$t8,104($sp)
.L0d97d58c:
    b	.L0d97d5dc
    lwc1	$f20,1968($s0)
.L0d97d594:
    # Line 1095
    la	$s3,sub_0d980000
    la	$s5,sub_0d980000
    ld	$v1,104($sp)
    ld	$a0,16($sp)
    addiu	$s5,$s5,-14256
    addiu	$a1,$v1,1
    sd	$a1,72($sp)
    addiu	$s3,$s3,-15216
    slt	$a0,$a0,$a1
    xori	$a0,$a0,0x1
    beq	$a6,$v1,.L0d97d58c
    sd	$a0,80($sp)
    # Line 1112
    ld	$t8,104($sp)
.L0d97d5c8:
    mtc1	$t8,$f21
    cvt.s.w	$f21,$f21
    lwc1	$f23,1972($s0)
    lwc1	$f20,1964($s0)
    madd.s	$f20,$f20,$f21,$f23
.L0d97d5dc:
    # Line 1113
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    # Line 1114
    li	$a5,1
    move	$a2,$s6
    move	$a1,$s7
    ld	$s1,32($sp)
    move	$t9,$s3
    lui	$a4,0xffff
    addu	$a4,$a4,$s8
    subu	$s1,$s1,$s6
    addiu	$a4,$a4,32720
    addiu	$s1,$s1,1
    mov.s	$f12,$f20
    bal __glKonEvalDisable
    move	$a3,$s1
    # Line 1115
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    sd	$s1,112($sp)
    # Line 1117
    ld	$ra,80($sp)
    beqz	$ra,.L0d97cfa8
    ld	$s1,72($sp)
    ld	$t8,16($sp)
    addiu	$s2,$s8,-16432
    lui	$s4,0xffff
    addu	$s4,$s4,$s8
    addiu	$t8,$t8,1
    sd	$t8,136($sp)
    b	.L0d97d6ec
    addiu	$s4,$s4,32720
    nop
.L0d97d660:
    # Line 1119
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,3
    # Line 1120
    move	$a1,$s7
    move	$t9,$s3
    move	$a2,$s6
    move	$a4,$s2
    mov.s	$f12,$f20
    ld	$a3,112($sp)
    bal __glKonEvalDisable
    li	$a5,1
    # Line 1121
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1122
    lw	$t9,6132($s0)
    lw	$t9,28($t9)
    jalr	$t9
    li	$a0,1
    # Line 1123
    move	$t9,$s5
    sd	$s4,64($sp)
    move	$a1,$s4
    ld	$a0,112($sp)
    bal __glKonEvalDisable
    move	$a2,$s2
    # Line 1124
    lw	$t9,6132($s0)
    lw	$t9,44($t9)
    jalr	$t9
    nop
    # Line 1117
    ld	$ra,136($sp)
    addiu	$s1,$s1,1
    # Line 1125
    move	$s4,$s2
    # Line 1117
    beq	$ra,$s1,.L0d97d710
    # Line 1125
    ld	$s2,64($sp)
.L0d97d6ec:
    # Line 1117
    lw	$at,1976($s0)
    # Line 1118
    mtc1	$s1,$f21
    lwc1	$f23,1972($s0)
    # Line 1117
    beq	$at,$s1,.L0d97d660
    # Line 1118
    lwc1	$f20,1968($s0)
    cvt.s.w	$f21,$f21
    lwc1	$f20,1964($s0)
    b	.L0d97d660
    madd.s	$f20,$f20,$f21,$f23
.L0d97d710:
    b	.L0d97cfac
    ld	$s1,200($sp)
.L0d97d718:
    # Line 1079
    ld	$s5,16($sp)
    lui	$s2,0xffff
    la	$s3,sub_0d980000
    addu	$s2,$s2,$s8
    addiu	$s2,$s2,32720
    addiu	$t9,$s5,1
    sd	$t9,136($sp)
    b	.L0d97d384
    addiu	$s3,$s3,-15216
.end __glKonEvalMesh2DHost

# Function: __glKonEvalCoord1DGe11
# Declared: Line 1158 (Source lines: 1160-1161)
# Address: 0x0d97d740 - 0x0d97d758 (Size: 24 bytes, Frame: 0)
.globl __glKonEvalCoord1DGe11
.ent __glKonEvalCoord1DGe11
__glKonEvalCoord1DGe11:
    # Line 1160
    li	$v0,157
    sw	$v0,16384($zero)
    li	$at,1
    sw	$at,16384($zero)
    # Line 1161
    jr	$ra
    # Line 1160
    swc1	$f12,16384($zero)
.end __glKonEvalCoord1DGe11

# Function: __glKonEvalCoord2DGe11
# Declared: Line 1164 (Source lines: 1166-1168)
# Address: 0x0d97d760 - 0x0d97d77c (Size: 28 bytes, Frame: 0)
.globl __glKonEvalCoord2DGe11
.ent __glKonEvalCoord2DGe11
__glKonEvalCoord2DGe11:
    # Line 1166
    li	$v0,161
    sw	$v0,16384($zero)
    li	$at,2
    sw	$at,16384($zero)
    swc1	$f12,16384($zero)
    # Line 1168
    jr	$ra
    # Line 1167
    swc1	$f13,16384($zero)
.end __glKonEvalCoord2DGe11

# Function: __glKonEvalMesh1DGe11
# Declared: Line 1171 (Source lines: 1172-1190)
# Address: 0x0d97d780 - 0x0d97d864 (Size: 228 bytes, Frame: 0)
.globl __glKonEvalMesh1DGe11
.ent __glKonEvalMesh1DGe11
__glKonEvalMesh1DGe11:
    # Line 1172
    slt	$at,$a2,$a1
    # Line 1177
    li	$a6,38
    # Line 1172
    bnez	$at,.L0d97d7ec
    # Line 1177
    li	$a7,6
    addiu	$a4,$a1,6
    li	$v0,6912
    nop
    beq	$a0,$v0,.L0d97d7f4
    slt	$a5,$a2,$a4
    bne	$zero,$a5,.L0d97d84c
    addiu	$a5,$a0,-6912
    nop
.L0d97d7b0:
    # Line 1181
    sw	$a6,16384($zero)
    # Line 1180
    addiu	$a4,$a4,5
    # Line 1181
    sw	$a5,16384($zero)
    # Line 1180
    slt	$v1,$a2,$a4
    # Line 1181
    sw	$a1,16384($zero)
    # Line 1180
    addiu	$a1,$a1,5
    beqz	$v1,.L0d97d7b0
    # Line 1181
    sw	$a7,16384($zero)
.L0d97d7d0:
    # Line 1183
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a1,16384($zero)
    subu	$a0,$a2,$a1
    addiu	$a0,$a0,1
    # Line 1190
    jr	$ra
    # Line 1183
    sw	$a0,16384($zero)
.L0d97d7ec:
    # Line 1190
    jr	$ra
    nop
.L0d97d7f4:
    # Line 1183
    bne	$zero,$a5,.L0d97d858
    li	$a7,6
    li	$a6,38
    addiu	$a5,$a0,-6912
    nop
    nop
    nop
.L0d97d810:
    # Line 1186
    sw	$a6,16384($zero)
    # Line 1185
    addiu	$a4,$a4,6
    # Line 1186
    sw	$a5,16384($zero)
    # Line 1185
    slt	$a3,$a2,$a4
    # Line 1186
    sw	$a1,16384($zero)
    # Line 1185
    addiu	$a1,$a1,6
    beqz	$a3,.L0d97d810
    # Line 1186
    sw	$a7,16384($zero)
.L0d97d830:
    # Line 1188
    sw	$a6,16384($zero)
    sw	$a5,16384($zero)
    sw	$a1,16384($zero)
    subu	$a4,$a2,$a1
    addiu	$a4,$a4,1
    # Line 1190
    jr	$ra
    # Line 1188
    sw	$a4,16384($zero)
.L0d97d84c:
    # Line 1180
    li	$a6,38
    b	.L0d97d7d0
    addiu	$a5,$a0,-6912
.L0d97d858:
    # Line 1185
    li	$a6,38
    b	.L0d97d830
    addiu	$a5,$a0,-6912
.end __glKonEvalMesh1DGe11

# Function: __glKonEvalMesh2DGe11
# Declared: Line 1192 (Source lines: 1193-1244)
# Address: 0x0d97d870 - 0x0d97db68 (Size: 760 bytes, Frame: 32)
.globl __glKonEvalMesh2DGe11
.ent __glKonEvalMesh2DGe11
__glKonEvalMesh2DGe11:
    # Line 1197
    slt	$at,$a2,$a1
    bnez	$at,.L0d97d9c0
    # Line 1193
    addiu	$sp,$sp,-32
    # Line 1197
    slt	$v0,$a4,$a3
    bnez	$v0,.L0d97d9c0
    li	$v1,6912
    sd	$ra,24($sp)
    addiu	$ra,$a2,-6
    nop
    beq	$a0,$v1,.L0d97d9c8
    slt	$a6,$ra,$a1
    # Line 1202
    addiu	$t0,$a4,-50
    slt	$t1,$t0,$a3
    sd	$s0,16($sp)
    bne	$zero,$a6,.L0d97dae8
    xori	$t9,$t1,0x1
    li	$s0,18
    li	$t8,16
    li	$t2,6
    li	$t3,50
    li	$t1,39
    subu	$a5,$a4,$a3
    addiu	$a7,$a0,-6912
    addiu	$a5,$a5,-1
    sd	$a5,8($sp)
    nop
    nop
    nop
.L0d97d8e0:
    # Line 1203
    beqz	$t9,.L0d97d918
    move	$a6,$a3
    nop
    nop
.L0d97d8f0:
    # Line 1204
    sw	$t1,16384($zero)
    sw	$a7,16384($zero)
    sw	$t8,16384($zero)
    sw	$a1,16384($zero)
    sw	$t2,16384($zero)
    sw	$a6,16384($zero)
    # Line 1203
    addiu	$a6,$a6,49
    slt	$at,$t0,$a6
    beqz	$at,.L0d97d8f0
    # Line 1204
    sw	$t3,16384($zero)
.L0d97d918:
    # Line 1208
    sw	$t1,16384($zero)
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    # Line 1202
    addiu	$a1,$a1,5
    # Line 1208
    sw	$t2,16384($zero)
    # Line 1202
    slt	$v1,$ra,$a1
    # Line 1208
    sw	$a6,16384($zero)
    subu	$v0,$a4,$a6
    addiu	$v0,$v0,1
    # Line 1202
    beqz	$v1,.L0d97d8e0
    # Line 1208
    sw	$v0,16384($zero)
    # Line 1212
    beqz	$t9,.L0d97dadc
    move	$a6,$a3
.L0d97d950:
    move	$a6,$a3
    subu	$t2,$a2,$a1
    li	$a0,17
    addiu	$t2,$t2,1
.L0d97d960:
    # Line 1213
    sw	$t1,16384($zero)
    sw	$a7,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    sw	$t2,16384($zero)
    sw	$a6,16384($zero)
    # Line 1212
    addiu	$a6,$a6,49
    slt	$t8,$t0,$a6
    beqz	$t8,.L0d97d960
    # Line 1213
    sw	$t3,16384($zero)
.L0d97d988:
    # Line 1217
    sw	$t1,16384($zero)
    sw	$a7,16384($zero)
    li	$at,19
    sw	$at,16384($zero)
    sw	$a1,16384($zero)
    sw	$t2,16384($zero)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    # Line 1244
    addiu	$sp,$sp,32
    # Line 1217
    sw	$a6,16384($zero)
    subu	$t9,$a4,$a6
    addiu	$t9,$t9,1
    # Line 1244
    jr	$ra
    # Line 1217
    sw	$t9,16384($zero)
.L0d97d9c0:
    # Line 1244
    jr	$ra
    addiu	$sp,$sp,32
.L0d97d9c8:
    # Line 1221
    addiu	$t0,$a4,-50
    slt	$t1,$t0,$a3
    sd	$s0,16($sp)
    bne	$zero,$a6,.L0d97db18
    xori	$t9,$t1,0x1
    li	$t8,16
    li	$t3,50
    li	$s0,19
    li	$t1,39
    subu	$v0,$a4,$a3
    sd	$v0,0($sp)
    li	$t2,6
    addiu	$a7,$a0,-6912
    nop
.L0d97da00:
    # Line 1222
    beqz	$t9,.L0d97da38
    move	$a6,$a3
    nop
    nop
.L0d97da10:
    # Line 1223
    sw	$t1,16384($zero)
    sw	$a7,16384($zero)
    sw	$t8,16384($zero)
    sw	$a1,16384($zero)
    sw	$t2,16384($zero)
    sw	$a6,16384($zero)
    # Line 1222
    addiu	$a6,$a6,50
    slt	$v1,$t0,$a6
    beqz	$v1,.L0d97da10
    # Line 1223
    sw	$t3,16384($zero)
.L0d97da38:
    # Line 1228
    sw	$t1,16384($zero)
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    # Line 1221
    addiu	$a1,$a1,6
    # Line 1228
    sw	$t2,16384($zero)
    # Line 1221
    slt	$a5,$ra,$a1
    # Line 1228
    sw	$a6,16384($zero)
    subu	$a0,$a4,$a6
    addiu	$a0,$a0,1
    # Line 1221
    beqz	$a5,.L0d97da00
    # Line 1228
    sw	$a0,16384($zero)
    # Line 1233
    beqz	$t9,.L0d97db0c
    move	$a6,$a3
.L0d97da70:
    move	$a6,$a3
    subu	$t2,$a2,$a1
    li	$a0,17
    addiu	$t2,$t2,1
.L0d97da80:
    # Line 1234
    sw	$t1,16384($zero)
    sw	$a7,16384($zero)
    sw	$a0,16384($zero)
    sw	$a1,16384($zero)
    sw	$t2,16384($zero)
    sw	$a6,16384($zero)
    # Line 1233
    addiu	$a6,$a6,50
    slt	$t8,$t0,$a6
    beqz	$t8,.L0d97da80
    # Line 1234
    sw	$t3,16384($zero)
.L0d97daa8:
    # Line 1239
    sw	$t1,16384($zero)
    sw	$a7,16384($zero)
    sw	$s0,16384($zero)
    sw	$a1,16384($zero)
    sw	$t2,16384($zero)
    ld	$ra,24($sp)
    # Line 1244
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    # Line 1239
    sw	$a6,16384($zero)
    subu	$t9,$a4,$a6
    addiu	$t9,$t9,1
    # Line 1244
    jr	$ra
    # Line 1239
    sw	$t9,16384($zero)
.L0d97dadc:
    # Line 1212
    subu	$t2,$a2,$a1
    b	.L0d97d988
    addiu	$t2,$t2,1
.L0d97dae8:
    bne	$zero,$t1,.L0d97db3c
    move	$a6,$a3
    li	$t3,50
    li	$t1,39
    addiu	$a7,$a0,-6912
    subu	$t8,$a4,$a3
    addiu	$t8,$t8,-1
    b	.L0d97d950
    sd	$t8,8($sp)
.L0d97db0c:
    # Line 1233
    subu	$t2,$a2,$a1
    b	.L0d97daa8
    addiu	$t2,$t2,1
.L0d97db18:
    bne	$zero,$t1,.L0d97db50
    move	$a6,$a3
    li	$t3,50
    li	$s0,19
    li	$t1,39
    subu	$t8,$a4,$a3
    sd	$t8,0($sp)
    b	.L0d97da70
    addiu	$a7,$a0,-6912
.L0d97db3c:
    # Line 1212
    li	$t1,39
    addiu	$a7,$a0,-6912
    subu	$t2,$a2,$a1
    b	.L0d97d988
    addiu	$t2,$t2,1
.L0d97db50:
    # Line 1233
    li	$s0,19
    li	$t1,39
    addiu	$a7,$a0,-6912
    subu	$t2,$a2,$a1
    b	.L0d97daa8
    addiu	$t2,$t2,1
.end __glKonEvalMesh2DGe11

# Function: __glKonSendMapSpec1D
# Declared: Line 1247 (Source lines: 1248-1264)
# Address: 0x0d97db70 - 0x0d97dbbc (Size: 76 bytes, Frame: 0)
.globl __glKonSendMapSpec1D
.ent __glKonSendMapSpec1D
__glKonSendMapSpec1D:
    # Line 1248
    beqz	$a0,.L0d97db94
    nop
    # Line 1255
    lw	$v0,4($a0)
    # Line 1248
    beqz	$a1,.L0d97dba8
    # Line 1256
    lw	$at,44($a0)
.L0d97db84:
    # Line 1255
    sw	$v0,16384($zero)
    # Line 1256
    sll	$at,$at,0x2
    # Line 1264
    jr	$ra
    # Line 1256
    sw	$at,16384($zero)
.L0d97db94:
    beqz	$a1,.L0d97dbb4
    nop
.L0d97db9c:
    # Line 1261
    sw	$zero,16384($zero)
    # Line 1264
    jr	$ra
    # Line 1262
    sw	$zero,16384($zero)
.L0d97dba8:
    # Line 1253
    lw	$v1,8($a0)
    b	.L0d97db84
    sw	$v1,16384($zero)
.L0d97dbb4:
    # Line 1259
    b	.L0d97db9c
    sw	$zero,16384($zero)
.end __glKonSendMapSpec1D

# Function: __glKonSendMapSpec2D
# Declared: Line 1266 (Source lines: 1267-1281)
# Address: 0x0d97dbc0 - 0x0d97dc04 (Size: 68 bytes, Frame: 0)
.globl __glKonSendMapSpec2D
.ent __glKonSendMapSpec2D
__glKonSendMapSpec2D:
    # Line 1267
    beqz	$a0,.L0d97dbf0
    nop
    # Line 1273
    lw	$v0,4($a0)
    # Line 1272
    lw	$v1,12($a0)
    # Line 1274
    lw	$at,44($a0)
    # Line 1271
    lw	$a0,8($a0)
    sw	$a0,16384($zero)
    # Line 1272
    sw	$v1,16384($zero)
    # Line 1273
    sw	$v0,16384($zero)
    # Line 1274
    sll	$at,$at,0x2
    # Line 1281
    jr	$ra
    # Line 1274
    sw	$at,16384($zero)
.L0d97dbf0:
    # Line 1276
    sw	$zero,16384($zero)
    # Line 1277
    sw	$zero,16384($zero)
    # Line 1278
    sw	$zero,16384($zero)
    # Line 1281
    jr	$ra
    # Line 1279
    sw	$zero,16384($zero)
.end __glKonSendMapSpec2D

# Function: __glKonSendMapData1D
# Declared: Line 1283 (Source lines: 1284-1301)
# Address: 0x0d97dc10 - 0x0d97dcb8 (Size: 168 bytes, Frame: 0)
.globl __glKonSendMapData1D
.ent __glKonSendMapData1D
__glKonSendMapData1D:
    # Line 1284
    beqz	$a0,.L0d97dcb0
    # Line 1290
    li	$v1,42
    sw	$v1,16384($zero)
    lwc1	$f0,28($a0)
    lwc1	$f1,24($a0)
    lwc1	$f2,20($a0)
    # Line 1289
    lw	$a4,44($a0)
    # Line 1290
    lw	$at,0($a0)
    # Line 1289
    addiu	$v0,$a4,5
    # Line 1290
    sw	$v0,16384($zero)
    sll	$at,$at,0x2
    sw	$at,16384($zero)
    swc1	$f2,16384($zero)
    swc1	$f1,16384($zero)
    swc1	$f0,16384($zero)
    blez	$a4,.L0d97dcb0
    sw	$a4,16384($zero)
    lw	$a3,48($a0)
    move	$a2,$zero
.L0d97dc5c:
    # Line 1297
    addiu	$a2,$a2,1
    # Line 1298
    lwc1	$f3,0($a3)
    # Line 1297
    slt	$a0,$a2,$a4
    # Line 1298
    swc1	$f3,16384($zero)
    # Line 1297
    beqz	$a0,.L0d97dcb0
    addiu	$a2,$a2,1
    # Line 1298
    lwc1	$f4,4($a3)
    # Line 1297
    slt	$a1,$a2,$a4
    # Line 1298
    swc1	$f4,16384($zero)
    # Line 1297
    beqz	$a1,.L0d97dcb0
    addiu	$a2,$a2,1
    # Line 1298
    lwc1	$f5,8($a3)
    # Line 1297
    slt	$a5,$a2,$a4
    # Line 1298
    swc1	$f5,16384($zero)
    # Line 1297
    beqz	$a5,.L0d97dcb0
    addiu	$a2,$a2,1
    # Line 1298
    lwc1	$f6,12($a3)
    # Line 1297
    slt	$a6,$a2,$a4
    addiu	$a3,$a3,16
    bnez	$a6,.L0d97dc5c
    # Line 1298
    swc1	$f6,16384($zero)
.L0d97dcb0:
    # Line 1301
    jr	$ra
    nop
.end __glKonSendMapData1D

# Function: __glKonSendMapData2D
# Declared: Line 1303 (Source lines: 1304-1324)
# Address: 0x0d97dcc0 - 0x0d97dd80 (Size: 192 bytes, Frame: 0)
.globl __glKonSendMapData2D
.ent __glKonSendMapData2D
__glKonSendMapData2D:
    # Line 1304
    beqz	$a0,.L0d97dd78
    # Line 1310
    li	$v1,43
    sw	$v1,16384($zero)
    lwc1	$f0,40($a0)
    lwc1	$f1,36($a0)
    lwc1	$f2,32($a0)
    lwc1	$f3,28($a0)
    lwc1	$f4,24($a0)
    lwc1	$f5,20($a0)
    # Line 1309
    lw	$a4,44($a0)
    # Line 1310
    lw	$at,0($a0)
    # Line 1309
    addiu	$v0,$a4,8
    # Line 1310
    sw	$v0,16384($zero)
    sll	$at,$at,0x2
    sw	$at,16384($zero)
    swc1	$f5,16384($zero)
    swc1	$f4,16384($zero)
    swc1	$f3,16384($zero)
    swc1	$f2,16384($zero)
    swc1	$f1,16384($zero)
    swc1	$f0,16384($zero)
    blez	$a4,.L0d97dd78
    sw	$a4,16384($zero)
    lw	$a3,48($a0)
    move	$a2,$zero
.L0d97dd24:
    # Line 1320
    addiu	$a2,$a2,1
    # Line 1321
    lwc1	$f6,0($a3)
    # Line 1320
    slt	$a0,$a2,$a4
    # Line 1321
    swc1	$f6,16384($zero)
    # Line 1320
    beqz	$a0,.L0d97dd78
    addiu	$a2,$a2,1
    # Line 1321
    lwc1	$f7,4($a3)
    # Line 1320
    slt	$a1,$a2,$a4
    # Line 1321
    swc1	$f7,16384($zero)
    # Line 1320
    beqz	$a1,.L0d97dd78
    addiu	$a2,$a2,1
    # Line 1321
    lwc1	$f8,8($a3)
    # Line 1320
    slt	$a5,$a2,$a4
    # Line 1321
    swc1	$f8,16384($zero)
    # Line 1320
    beqz	$a5,.L0d97dd78
    addiu	$a2,$a2,1
    # Line 1321
    lwc1	$f9,12($a3)
    # Line 1320
    slt	$a6,$a2,$a4
    addiu	$a3,$a3,16
    bnez	$a6,.L0d97dd24
    # Line 1321
    swc1	$f9,16384($zero)
.L0d97dd78:
    # Line 1324
    jr	$ra
    nop
.end __glKonSendMapData2D

# Function: __glKonHostMapData1D
# Declared: Line 1326 (Source lines: 1327-1336)
# Address: 0x0d97dd80 - 0x0d97de4c (Size: 204 bytes, Frame: 48)
.globl __glKonHostMapData1D
.ent __glKonHostMapData1D
__glKonHostMapData1D:
    # Line 1332
    lw	$a1,0($a0)
    # Line 1327
    addiu	$sp,$sp,-48
    sd	$s1,8($sp)
    # Line 1332
    sll	$v1,$a1,0x2
    # Line 1327
    move	$s1,$a0
    # Line 1332
    lw	$v0,4112($zero)
    subu	$v1,$v1,$a1
    # Line 1327
    lui	$at,0x11
    # Line 1332
    lw	$t8,4($a0)
    sll	$v1,$v1,0x2
    # Line 1327
    sd	$s3,0($sp)
    # Line 1332
    li	$s3,0x8c94
    addu	$v0,$v0,$v1
    sd	$gp,16($sp)
    # Line 1327
    addiu	$at,$at,12888
    # Line 1332
    addu	$s3,$s3,$v0
    # Line 1327
    addu	$gp,$t9,$at
    # Line 1332
    blez	$t8,.L0d97de38
    lw	$s3,0($s3)
    sd	$s2,24($sp)
    la	$s2,sub_0d980000
    sd	$ra,32($sp)
    sd	$s0,40($sp)
    move	$s0,$zero
    addiu	$s2,$s2,-24976
    nop
    nop
    nop
.L0d97ddf0:
    # Line 1335
    lw	$a1,8($s1)
    mult	$a1,$s0
    mflo	$a4
    lw	$a0,48($s1)
    move	$t9,$s2
    sll	$a4,$a4,0x2
    li	$a3,1
    addu	$a2,$a4,$s3
    bal __glKonEvalDisable
    addu	$a0,$a0,$a4
    # Line 1334
    lw	$a5,4($s1)
    addiu	$s0,$s0,1
    slt	$a5,$s0,$a5
    bnez	$a5,.L0d97ddf0
    nop
    ld	$s2,24($sp)
    ld	$ra,32($sp)
    ld	$s0,40($sp)
.L0d97de38:
    ld	$s3,0($sp)
    ld	$s1,8($sp)
    # Line 1336
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonHostMapData1D

# Function: __glKonHostMapData2D
# Declared: Line 1338 (Source lines: 1339-1362)
# Address: 0x0d97de50 - 0x0d97dff8 (Size: 424 bytes, Frame: 208)
.globl __glKonHostMapData2D
.ent __glKonHostMapData2D
__glKonHostMapData2D:
    # Line 1339
    addiu	$sp,$sp,-80
    sd	$s4,16($sp)
    # Line 1345
    lw	$s4,48($a0)
    sd	$s3,40($sp)
    sd	$ra,48($sp)
    # Line 1339
    sd	$s2,8($sp)
    # Line 1344
    lw	$s2,0($a0)
    sd	$s1,56($sp)
    # Line 1339
    sd	$s0,24($sp)
    # Line 1344
    sll	$s0,$s2,0x2
    lui	$a3,0x1
    # Line 1342
    lw	$a2,4112($zero)
    # Line 1344
    subu	$s0,$s0,$s2
    # Line 1339
    lui	$at,0x11
    # Line 1345
    lw	$a1,4($a0)
    # Line 1344
    sll	$s0,$s0,0x2
    sd	$s5,64($sp)
    # Line 1339
    addiu	$at,$at,12680
    # Line 1344
    addu	$s0,$a2,$s0
    sd	$gp,32($sp)
    # Line 1339
    addu	$gp,$t9,$at
    # Line 1344
    addu	$s0,$a3,$s0
    # Line 1339
    move	$s2,$a0
    # Line 1345
    blez	$a1,.L0d97df50
    # Line 1344
    lw	$s0,-29028($s0)
    # Line 1345
    la	$s3,sub_0d980000
    lw	$a0,12($a0)
    move	$s5,$zero
    sd	$a2,0($sp)
    addiu	$s3,$s3,-24976
    nop
    nop
.L0d97ded0:
    blez	$a0,.L0d97df1c
    move	$s1,$zero
    lw	$a5,8($s2)
    nop
.L0d97dee0:
    # Line 1349
    move	$a0,$s4
    move	$t9,$s3
    move	$a1,$a5
    move	$a2,$s0
    bal __glKonEvalDisable
    li	$a3,1
    # Line 1350
    lw	$a5,8($s2)
    # Line 1348
    lw	$a0,12($s2)
    addiu	$s1,$s1,1
    # Line 1350
    sll	$t8,$a5,0x2
    # Line 1348
    slt	$t9,$s1,$a0
    # Line 1351
    addu	$s0,$t8,$s0
    # Line 1348
    bnez	$t9,.L0d97dee0
    # Line 1350
    addu	$s4,$t8,$s4
    # Line 1348
    lw	$a1,4($s2)
.L0d97df1c:
    # Line 1347
    addiu	$s5,$s5,1
    slt	$ra,$s5,$a1
    bnez	$ra,.L0d97ded0
    nop
    lw	$ra,0($s2)
    sll	$t9,$ra,0x2
    ld	$t8,0($sp)
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    lui	$s0,0x1
    addu	$t8,$t8,$t9
    addu	$s0,$s0,$t8
    lw	$s0,-29028($s0)
.L0d97df50:
    la	$s3,sub_0d980000
    ld	$s4,16($sp)
    # Line 1354
    blez	$a1,.L0d97dfd4
    # Line 1347
    addiu	$s3,$s3,-24976
    # Line 1354
    lw	$a5,8($s2)
    move	$s5,$zero
    nop
    nop
.L0d97df70:
    blez	$a5,.L0d97dfb0
    move	$s1,$zero
    nop
    nop
.L0d97df80:
    # Line 1357
    move	$t9,$s3
    move	$a0,$s0
    move	$a2,$s0
    lw	$a1,12($s2)
    bal __glKonEvalDisable
    move	$a3,$a5
    # Line 1356
    lw	$a5,8($s2)
    addiu	$s1,$s1,1
    slt	$t8,$s1,$a5
    bnez	$t8,.L0d97df80
    # Line 1358
    addiu	$s0,$s0,4
    # Line 1356
    lw	$a1,4($s2)
.L0d97dfb0:
    # Line 1360
    lw	$ra,12($s2)
    addiu	$ra,$ra,-1
    mult	$a5,$ra
    # Line 1355
    addiu	$s5,$s5,1
    slt	$ra,$s5,$a1
    # Line 1360
    mflo	$t9
    sll	$t9,$t9,0x2
    # Line 1355
    bnez	$ra,.L0d97df70
    # Line 1360
    addu	$s0,$s0,$t9
.L0d97dfd4:
    ld	$s2,8($sp)
    ld	$s3,40($sp)
    ld	$s1,56($sp)
    ld	$ra,48($sp)
    ld	$s5,64($sp)
    ld	$s0,24($sp)
    # Line 1362
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glKonHostMapData2D

# Function: __glKonCleanUp1D
# Declared: Line 1365 (Source lines: 1366-1431)
# Address: 0x0d97e000 - 0x0d97e36c (Size: 876 bytes, Frame: 32)
.ent __glKonCleanUp1D
__glKonCleanUp1D:
    # Line 1366
    addiu	$sp,$sp,-32
    sd	$s2,0($sp)
    # Line 1369
    lw	$s2,4112($zero)
    move	$a3,$zero
    # Line 1366
    sd	$s0,8($sp)
    # Line 1369
    lui	$s0,0x1
    move	$a1,$zero
    addu	$s0,$s0,$s2
    # Line 1378
    lw	$a4,-29556($s0)
    sd	$ra,16($sp)
    beqz	$a4,.L0d97e040
    sd	$s1,24($sp)
    # Line 1379
    lw	$t9,8($a4)
    lw	$a1,44($a4)
    slt	$t8,$zero,$t9
    movn	$a3,$t9,$t8
.L0d97e040:
    # Line 1378
    lw	$a4,-29544($s0)
    beqz	$a4,.L0d97e060
    nop
    # Line 1379
    lw	$a5,8($a4)
    lw	$a6,44($a4)
    slt	$a2,$a3,$a5
    addu	$a1,$a6,$a1
    movn	$a3,$a5,$a2
.L0d97e060:
    # Line 1378
    lw	$a4,-29532($s0)
    beqz	$a4,.L0d97e080
    nop
    # Line 1379
    lw	$t0,8($a4)
    lw	$t1,44($a4)
    slt	$a7,$a3,$t0
    addu	$a1,$t1,$a1
    movn	$a3,$t0,$a7
.L0d97e080:
    # Line 1378
    lw	$a4,-29520($s0)
    beqz	$a4,.L0d97e0a0
    nop
    # Line 1379
    lw	$t3,8($a4)
    lw	$t8,44($a4)
    slt	$t2,$a3,$t3
    addu	$a1,$t8,$a1
    movn	$a3,$t3,$t2
.L0d97e0a0:
    # Line 1377
    beqz	$a1,.L0d97e220
    ld	$ra,16($sp)
    # Line 1385
    slti	$t9,$a1,209
    bnez	$t9,.L0d97e234
    slti	$a2,$a3,9
.L0d97e0b4:
    # Line 1386
    li	$a2,1
    sb	$a2,-28520($s0)
    # Line 1387
    la	$ra,__glKonEvalCoord1DHost
    # Line 1388
    la	$at,__glKonEvalMesh1DHost
    # Line 1389
    lw	$v0,-29556($s0)
    # Line 1390
    lw	$v1,-29520($s0)
    # Line 1391
    lw	$a0,-29544($s0)
    # Line 1392
    lw	$a1,-29532($s0)
    sw	$a1,-29528($s0)
    # Line 1391
    sw	$a0,-29540($s0)
    # Line 1390
    sw	$v1,-29516($s0)
    # Line 1389
    sw	$v0,-29552($s0)
    # Line 1388
    sw	$at,-28508($s0)
    # Line 1387
    sw	$ra,-28516($s0)
    # Line 1431
    lw	$a1,-29548($s0)
    beqz	$a1,.L0d97e108
    nop
    # Line 1396
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    # Line 1397
    sw	$zero,-29548($s0)
.L0d97e108:
    # Line 1399
    lw	$s1,-29556($s0)
    beqz	$s1,.L0d97e138
    nop
    # Line 1400
    lw	$t9,0($s2)
    lw	$a1,44($s1)
    move	$a0,$s2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 1401
    # lw $t9, -31444($gp) # &__glKonHostMapData1D
    move	$a0,$s1
    bal __glKonHostMapData1D
    # Line 1400
    sw	$v0,-29548($s0)
.L0d97e138:
    # Line 1431
    lw	$a1,-29536($s0)
    beqz	$a1,.L0d97e154
    nop
    # Line 1396
    lw	$t9,12($s2)
    jal	__glKonHostMapData1D
    move	$a0,$s2
    # Line 1397
    sw	$zero,-29536($s0)
.L0d97e154:
    # Line 1399
    lw	$s1,-29544($s0)
    beqz	$s1,.L0d97e184
    nop
    # Line 1400
    lw	$t9,0($s2)
    lw	$a1,44($s1)
    move	$a0,$s2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 1401
    # lw $t9, -31444($gp) # &__glKonHostMapData1D
    move	$a0,$s1
    bal __glKonHostMapData1D
    # Line 1400
    sw	$v0,-29536($s0)
.L0d97e184:
    # Line 1431
    lw	$a1,-29524($s0)
    beqz	$a1,.L0d97e1a0
    nop
    # Line 1396
    lw	$t9,12($s2)
    jal	__glKonHostMapData1D
    move	$a0,$s2
    # Line 1397
    sw	$zero,-29524($s0)
.L0d97e1a0:
    # Line 1399
    lw	$s1,-29532($s0)
    beqz	$s1,.L0d97e1d0
    nop
    # Line 1400
    lw	$t9,0($s2)
    lw	$a1,44($s1)
    move	$a0,$s2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 1401
    # lw $t9, -31444($gp) # &__glKonHostMapData1D
    move	$a0,$s1
    bal __glKonHostMapData1D
    # Line 1400
    sw	$v0,-29524($s0)
.L0d97e1d0:
    # Line 1431
    lw	$a1,-29512($s0)
    beqz	$a1,.L0d97e1ec
    nop
    # Line 1396
    lw	$t9,12($s2)
    jal	__glKonHostMapData1D
    move	$a0,$s2
    # Line 1397
    sw	$zero,-29512($s0)
.L0d97e1ec:
    # Line 1399
    lw	$s1,-29520($s0)
    beqz	$s1,.L0d97e21c
    nop
    # Line 1400
    lw	$t9,0($s2)
    lw	$a1,44($s1)
    move	$a0,$s2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 1401
    # lw $t9, -31444($gp) # &__glKonHostMapData1D
    move	$a0,$s1
    bal __glKonHostMapData1D
    # Line 1400
    sw	$v0,-29512($s0)
.L0d97e21c:
    ld	$ra,16($sp)
.L0d97e220:
    ld	$s2,0($sp)
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    # Line 1431
    jr	$ra
    addiu	$sp,$sp,32
.L0d97e234:
    # Line 1385
    beqz	$a2,.L0d97e0b4
    # Line 1406
    la	$a3,__glKonEvalCoord1DGe11
    # Line 1405
    sb	$zero,-28520($s0)
    # Line 1406
    sw	$a3,-28516($s0)
    # Line 1411
    lw	$a1,-29548($s0)
    # Line 1408
    lw	$a5,-29556($s0)
    # Line 1409
    lw	$a6,-29520($s0)
    # Line 1410
    lw	$a7,-29544($s0)
    # Line 1411
    lw	$t0,-29532($s0)
    # Line 1407
    la	$a4,__glKonEvalMesh1DGe11
    sw	$a4,-28508($s0)
    # Line 1411
    sw	$t0,-29528($s0)
    # Line 1410
    sw	$a7,-29540($s0)
    # Line 1409
    sw	$a6,-29516($s0)
    # Line 1408
    sw	$a5,-29552($s0)
    # Line 1411
    beqz	$a1,.L0d97e288
    nop
    # Line 1415
    lw	$t9,12($s2)
    jal	__glKonHostMapData1D
    move	$a0,$s2
    # Line 1416
    sw	$zero,-29548($s0)
.L0d97e288:
    # Line 1411
    lw	$a1,-29536($s0)
    beqz	$a1,.L0d97e2a4
    nop
    # Line 1415
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    # Line 1416
    sw	$zero,-29536($s0)
.L0d97e2a4:
    # Line 1411
    lw	$a1,-29524($s0)
    beqz	$a1,.L0d97e2c0
    nop
    # Line 1415
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    # Line 1416
    sw	$zero,-29524($s0)
.L0d97e2c0:
    # Line 1411
    lw	$a1,-29512($s0)
    beqz	$a1,.L0d97e2dc
    nop
    # Line 1415
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    # Line 1416
    sw	$zero,-29512($s0)
.L0d97e2dc:
    # Line 1420
    lw	$a0,-29552($s0)
    move	$a3,$zero
    li	$t1,44
    beqz	$a0,.L0d97e2f4
    sw	$t1,16384($zero)
    lw	$a3,8($a0)
.L0d97e2f4:
    # Line 1421
    # lw $t9, -31460($gp) # &__glKonSendMapSpec1D
    li	$a1,1
    bal __glKonSendMapSpec1D
    # Line 1420
    sw	$a3,16384($zero)
    # Line 1422
    # lw $t9, -31460($gp) # &__glKonSendMapSpec1D
    move	$a1,$zero
    bal __glKonSendMapSpec1D
    lw	$a0,-29516($s0)
    # Line 1423
    # lw $t9, -31460($gp) # &__glKonSendMapSpec1D
    move	$a1,$zero
    bal __glKonSendMapSpec1D
    lw	$a0,-29540($s0)
    # Line 1424
    # lw $t9, -31460($gp) # &__glKonSendMapSpec1D
    move	$a1,$zero
    bal __glKonSendMapSpec1D
    lw	$a0,-29528($s0)
    # Line 1426
    # lw $t9, -31452($gp) # &__glKonSendMapData1D
    bal __glKonSendMapData1D
    lw	$a0,-29552($s0)
    # Line 1427
    # lw $t9, -31452($gp) # &__glKonSendMapData1D
    bal __glKonSendMapData1D
    lw	$a0,-29516($s0)
    # Line 1428
    # lw $t9, -31452($gp) # &__glKonSendMapData1D
    bal __glKonSendMapData1D
    lw	$a0,-29540($s0)
    # Line 1429
    # lw $t9, -31452($gp) # &__glKonSendMapData1D
    bal __glKonSendMapData1D
    lw	$a0,-29528($s0)
    b	.L0d97e220
    ld	$ra,16($sp)
.end __glKonCleanUp1D

# Function: __glKonCleanUp2D
# Declared: Line 1434 (Source lines: 1435-1502)
# Address: 0x0d97e370 - 0x0d97e718 (Size: 936 bytes, Frame: 32)
.ent __glKonCleanUp2D
__glKonCleanUp2D:
    # Line 1435
    addiu	$sp,$sp,-32
    sd	$s2,0($sp)
    # Line 1438
    lw	$s2,4112($zero)
    move	$a4,$zero
    # Line 1435
    sd	$s0,8($sp)
    # Line 1438
    lui	$s0,0x1
    move	$a1,$zero
    addu	$s0,$s0,$s2
    # Line 1447
    lw	$a3,-29036($s0)
    sd	$ra,16($sp)
    beqz	$a3,.L0d97e3bc
    sd	$s1,24($sp)
    # Line 1448
    lw	$t9,8($a3)
    # Line 1449
    lw	$a4,12($a3)
    # Line 1448
    slt	$a2,$zero,$t9
    movz	$t9,$zero,$a2
    # Line 1449
    slt	$t8,$t9,$a4
    # Line 1448
    lw	$a1,44($a3)
    movz	$a4,$t9,$t8
.L0d97e3bc:
    # Line 1447
    lw	$a3,-29024($s0)
    beqz	$a3,.L0d97e3f0
    nop
    # Line 1448
    lw	$a0,8($a3)
    # Line 1449
    lw	$v1,12($a3)
    move	$at,$a0
    # Line 1448
    slt	$a0,$a4,$a0
    lw	$v0,44($a3)
    movz	$at,$a4,$a0
    # Line 1449
    slt	$ra,$at,$v1
    # Line 1450
    move	$a4,$v1
    # Line 1448
    addu	$a1,$v0,$a1
    movz	$a4,$at,$ra
.L0d97e3f0:
    # Line 1447
    lw	$a3,-29012($s0)
    beqz	$a3,.L0d97e424
    nop
    # Line 1448
    lw	$t0,8($a3)
    # Line 1449
    lw	$a7,12($a3)
    move	$a5,$t0
    # Line 1448
    slt	$t0,$a4,$t0
    lw	$a6,44($a3)
    movz	$a5,$a4,$t0
    # Line 1449
    slt	$a2,$a5,$a7
    # Line 1450
    move	$a4,$a7
    # Line 1448
    addu	$a1,$a6,$a1
    movz	$a4,$a5,$a2
.L0d97e424:
    # Line 1447
    lw	$a3,-29000($s0)
    beqz	$a3,.L0d97e458
    nop
    # Line 1448
    lw	$t9,8($a3)
    # Line 1449
    lw	$t8,12($a3)
    move	$t2,$t9
    # Line 1448
    slt	$t9,$a4,$t9
    lw	$t3,44($a3)
    movz	$t2,$a4,$t9
    # Line 1449
    slt	$t1,$t2,$t8
    # Line 1450
    move	$a4,$t8
    # Line 1448
    addu	$a1,$t3,$a1
    movz	$a4,$t2,$t1
.L0d97e458:
    # Line 1446
    beqz	$a1,.L0d97e5d8
    ld	$ra,16($sp)
    # Line 1455
    slti	$ra,$a1,209
    bnez	$ra,.L0d97e5ec
    slti	$a2,$a4,9
    # Line 1456
    li	$a3,1
.L0d97e470:
    sb	$a3,-28520($s0)
    # Line 1457
    la	$at,__glKonEvalCoord2DHost
    # Line 1458
    la	$v0,__glKonEvalMesh2DHost
    # Line 1459
    lw	$v1,-29036($s0)
    # Line 1460
    lw	$a0,-29000($s0)
    # Line 1461
    lw	$a1,-29024($s0)
    # Line 1462
    lw	$a2,-29012($s0)
    sw	$a2,-29008($s0)
    # Line 1461
    sw	$a1,-29020($s0)
    # Line 1460
    sw	$a0,-28996($s0)
    # Line 1459
    sw	$v1,-29032($s0)
    # Line 1458
    sw	$v0,-28504($s0)
    # Line 1457
    sw	$at,-28512($s0)
    # Line 1502
    lw	$a1,-29028($s0)
    beqz	$a1,.L0d97e4c0
    nop
    # Line 1466
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    # Line 1467
    sw	$zero,-29028($s0)
.L0d97e4c0:
    # Line 1469
    lw	$s1,-29036($s0)
    beqz	$s1,.L0d97e4f0
    nop
    # Line 1470
    lw	$t9,0($s2)
    lw	$a1,44($s1)
    move	$a0,$s2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 1471
    # lw $t9, -31440($gp) # &__glKonHostMapData2D
    move	$a0,$s1
    bal __glKonHostMapData2D
    # Line 1470
    sw	$v0,-29028($s0)
.L0d97e4f0:
    # Line 1502
    lw	$a1,-29016($s0)
    beqz	$a1,.L0d97e50c
    nop
    # Line 1466
    lw	$t9,12($s2)
    jal	__glKonHostMapData2D
    move	$a0,$s2
    # Line 1467
    sw	$zero,-29016($s0)
.L0d97e50c:
    # Line 1469
    lw	$s1,-29024($s0)
    beqz	$s1,.L0d97e53c
    nop
    # Line 1470
    lw	$t9,0($s2)
    lw	$a1,44($s1)
    move	$a0,$s2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 1471
    # lw $t9, -31440($gp) # &__glKonHostMapData2D
    move	$a0,$s1
    bal __glKonHostMapData2D
    # Line 1470
    sw	$v0,-29016($s0)
.L0d97e53c:
    # Line 1502
    lw	$a1,-29004($s0)
    beqz	$a1,.L0d97e558
    nop
    # Line 1466
    lw	$t9,12($s2)
    jal	__glKonHostMapData2D
    move	$a0,$s2
    # Line 1467
    sw	$zero,-29004($s0)
.L0d97e558:
    # Line 1469
    lw	$s1,-29012($s0)
    beqz	$s1,.L0d97e588
    nop
    # Line 1470
    lw	$t9,0($s2)
    lw	$a1,44($s1)
    move	$a0,$s2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 1471
    # lw $t9, -31440($gp) # &__glKonHostMapData2D
    move	$a0,$s1
    bal __glKonHostMapData2D
    # Line 1470
    sw	$v0,-29004($s0)
.L0d97e588:
    # Line 1502
    lw	$a1,-28992($s0)
    beqz	$a1,.L0d97e5a4
    nop
    # Line 1466
    lw	$t9,12($s2)
    jal	__glKonHostMapData2D
    move	$a0,$s2
    # Line 1467
    sw	$zero,-28992($s0)
.L0d97e5a4:
    # Line 1469
    lw	$s1,-29000($s0)
    beqz	$s1,.L0d97e5d4
    nop
    # Line 1470
    lw	$t9,0($s2)
    lw	$a1,44($s1)
    move	$a0,$s2
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 1471
    # lw $t9, -31440($gp) # &__glKonHostMapData2D
    move	$a0,$s1
    bal __glKonHostMapData2D
    # Line 1470
    sw	$v0,-28992($s0)
.L0d97e5d4:
    ld	$ra,16($sp)
.L0d97e5d8:
    ld	$s2,0($sp)
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    # Line 1502
    jr	$ra
    addiu	$sp,$sp,32
.L0d97e5ec:
    # Line 1455
    beqz	$a2,.L0d97e470
    # Line 1456
    li	$a3,1
    # Line 1475
    sb	$zero,-28520($s0)
    # Line 1482
    lw	$a1,-29028($s0)
    # Line 1478
    lbu	$a5,-28500($s0)
    # Line 1479
    lw	$a6,-29036($s0)
    # Line 1480
    lw	$a7,-29000($s0)
    # Line 1481
    lw	$t0,-29024($s0)
    # Line 1482
    lw	$t1,-29012($s0)
    # Line 1476
    la	$a3,__glKonEvalCoord2DGe11
    # Line 1477
    la	$a4,__glKonEvalMesh2DGe11
    sw	$a4,-28504($s0)
    # Line 1476
    sw	$a3,-28512($s0)
    # Line 1482
    sw	$t1,-29008($s0)
    # Line 1481
    sw	$t0,-29020($s0)
    # Line 1480
    sw	$a7,-28996($s0)
    # Line 1479
    sw	$a6,-29032($s0)
    # Line 1478
    sb	$a5,-28499($s0)
    # Line 1482
    beqz	$a1,.L0d97e64c
    nop
    # Line 1486
    lw	$t9,12($s2)
    jal	__glKonHostMapData2D
    move	$a0,$s2
    # Line 1487
    sw	$zero,-29028($s0)
.L0d97e64c:
    # Line 1482
    lw	$a1,-29016($s0)
    beqz	$a1,.L0d97e668
    nop
    # Line 1486
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    # Line 1487
    sw	$zero,-29016($s0)
.L0d97e668:
    # Line 1482
    lw	$a1,-29004($s0)
    beqz	$a1,.L0d97e684
    nop
    # Line 1486
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    # Line 1487
    sw	$zero,-29004($s0)
.L0d97e684:
    # Line 1482
    lw	$a1,-28992($s0)
    beqz	$a1,.L0d97e6a0
    nop
    # Line 1486
    lw	$t9,12($s2)
    jalr	$t9
    move	$a0,$s2
    # Line 1487
    sw	$zero,-28992($s0)
.L0d97e6a0:
    # Line 1492
    lw	$a0,-29032($s0)
    # lw $t9, -31456($gp) # &__glKonSendMapSpec2D
    # Line 1491
    li	$t3,45
    sw	$t3,16384($zero)
    lbu	$t2,-28500($s0)
    # Line 1492
    bal __glKonSendMapSpec2D
    # Line 1491
    sw	$t2,16384($zero)
    # Line 1493
    # lw $t9, -31456($gp) # &__glKonSendMapSpec2D
    bal __glKonSendMapSpec2D
    lw	$a0,-28996($s0)
    # Line 1494
    # lw $t9, -31456($gp) # &__glKonSendMapSpec2D
    bal __glKonSendMapSpec2D
    lw	$a0,-29020($s0)
    # Line 1495
    # lw $t9, -31456($gp) # &__glKonSendMapSpec2D
    bal __glKonSendMapSpec2D
    lw	$a0,-29008($s0)
    # Line 1497
    # lw $t9, -31448($gp) # &__glKonSendMapData2D
    bal __glKonSendMapData2D
    lw	$a0,-29032($s0)
    # Line 1498
    # lw $t9, -31448($gp) # &__glKonSendMapData2D
    bal __glKonSendMapData2D
    lw	$a0,-28996($s0)
    # Line 1499
    # lw $t9, -31448($gp) # &__glKonSendMapData2D
    bal __glKonSendMapData2D
    lw	$a0,-29020($s0)
    # Line 1500
    # lw $t9, -31448($gp) # &__glKonSendMapData2D
    bal __glKonSendMapData2D
    lw	$a0,-29008($s0)
    b	.L0d97e5d8
    ld	$ra,16($sp)
.end __glKonCleanUp2D

# Function: __glKonInitEvaluators
# Declared: Line 1504 (Source lines: 1505-1562)
# Address: 0x0d97e720 - 0x0d97ea14 (Size: 756 bytes, Frame: 224)
.globl __glKonInitEvaluators
.ent __glKonInitEvaluators
__glKonInitEvaluators:
    # Line 1505
    addiu	$sp,$sp,-96
    sd	$s0,40($sp)
    sd	$s1,32($sp)
    sd	$s2,88($sp)
    sd	$s3,80($sp)
    sd	$s5,24($sp)
    sd	$s6,72($sp)
    sdc1	$f20,0($sp)
    sdc1	$f22,8($sp)
    sd	$ra,56($sp)
    sd	$s4,48($sp)
    # Line 1511
    lui	$a2,0x1
    # Line 1505
    sd	$s7,16($sp)
    # Line 1511
    addu	$a2,$a2,$a0
    # Line 1505
    lui	$a3,0x11
    # Line 1515
    li	$s7,1
    sb	$s7,-28520($a2)
    # Line 1505
    addiu	$a3,$a3,10424
    sd	$gp,64($sp)
    addu	$gp,$t9,$a3
    # Line 1511
    la	$at,__glKonEvalCoord1DGe11
    # Line 1512
    la	$v0,__glKonEvalMesh1DGe11
    # Line 1513
    la	$v1,__glKonEvalCoord2DGe11
    # Line 1514
    la	$a1,__glKonEvalMesh2DGe11
    sw	$a1,-28504($a2)
    # Line 1513
    sw	$v1,-28512($a2)
    # Line 1512
    sw	$v0,-28508($a2)
    # Line 1505
    move	$s4,$a0
    # Line 1511
    sw	$at,-28516($a2)
    # Line 1525
    sw	$zero,-28992($a2)
    # Line 1524
    sw	$zero,-28996($a2)
    # Line 1523
    sw	$zero,-29000($a2)
    # Line 1522
    sw	$zero,-29512($a2)
    # Line 1521
    sw	$zero,-29516($a2)
    # Line 1520
    sw	$zero,-29520($a2)
    # Line 1525
    sw	$zero,-29004($a2)
    # Line 1524
    sw	$zero,-29008($a2)
    # Line 1523
    sw	$zero,-29012($a2)
    # Line 1522
    sw	$zero,-29524($a2)
    # Line 1521
    sw	$zero,-29528($a2)
    # Line 1520
    sw	$zero,-29532($a2)
    # Line 1525
    sw	$zero,-29016($a2)
    # Line 1524
    sw	$zero,-29020($a2)
    # Line 1523
    sw	$zero,-29024($a2)
    # Line 1522
    sw	$zero,-29536($a2)
    # Line 1521
    sw	$zero,-29540($a2)
    # Line 1520
    sw	$zero,-29544($a2)
    # Line 1525
    sw	$zero,-29028($a2)
    # Line 1524
    sw	$zero,-29032($a2)
    # Line 1523
    sw	$zero,-29036($a2)
    # Line 1522
    sw	$zero,-29548($a2)
    # Line 1521
    sw	$zero,-29552($a2)
    # Line 1520
    sw	$zero,-29556($a2)
    # Line 1519
    la	$s3,.rodata
    mtc1	$zero,$f20
    addiu	$s3,$s3,408
    lui	$s5,0xfffe
    lwc1	$f22,_lit_3f800000
    addiu	$s6,$s3,288
    nop
.L0d97e810:
    # Line 1531
    lw	$s2,0($s3)
    sll	$s1,$s2,0x2
    subu	$s1,$s1,$s2
    sll	$s1,$s1,0x2
    addu	$s1,$s1,$s2
    lw	$a2,8($s3)
    sll	$s1,$s1,0x2
    # Line 1532
    lw	$s2,12($s3)
    # Line 1531
    addu	$s1,$s4,$s1
    # Line 1541
    lw	$t8,4($s3)
    # Line 1531
    addu	$s1,$s5,$s1
    # Line 1540
    sw	$s2,-13400($s1)
    # Line 1539
    swc1	$f22,-13408($s1)
    # Line 1538
    swc1	$f20,-13412($s1)
    # Line 1541
    sll	$s0,$t8,0x2
    # Line 1537
    swc1	$f22,-13420($s1)
    # Line 1541
    subu	$s0,$s0,$t8
    # Line 1536
    swc1	$f20,-13424($s1)
    # Line 1541
    sll	$s0,$s0,0x2
    # Line 1535
    sb	$zero,-13428($s1)
    # Line 1541
    addu	$s0,$s0,$t8
    # Line 1534
    sw	$s7,-13432($s1)
    # Line 1541
    sll	$s0,$s0,0x2
    # Line 1533
    sw	$s7,-13436($s1)
    # Line 1541
    addu	$s0,$s4,$s0
    # Line 1532
    sw	$s2,-13440($s1)
    # Line 1541
    addu	$s0,$s5,$s0
    # Line 1531
    sw	$a2,-13444($s1)
    # Line 1550
    sw	$s2,-14544($s0)
    # Line 1549
    swc1	$f22,-14552($s0)
    # Line 1548
    swc1	$f20,-14556($s0)
    # Line 1547
    swc1	$f22,-14564($s0)
    # Line 1546
    swc1	$f20,-14568($s0)
    # Line 1545
    sb	$zero,-14572($s0)
    # Line 1544
    sw	$s7,-14576($s0)
    # Line 1543
    sw	$s7,-14580($s0)
    # Line 1542
    sw	$s2,-14584($s0)
    # Line 1541
    sw	$a2,-14588($s0)
    # Line 1551
    lw	$t9,0($s4)
    lw	$a1,-13400($s1)
    move	$a0,$s4
    jalr	$t9
    sll	$a1,$a1,0x2
    sw	$v0,-13396($s1)
    # Line 1553
    lw	$t9,0($s4)
    lw	$a1,-14544($s0)
    move	$a0,$s4
    jalr	$t9
    sll	$a1,$a1,0x2
    li	$a0,1
    blez	$s2,.L0d97e9d0
    sw	$v0,-14540($s0)
    slt	$a2,$s2,$a0
    movz	$a0,$s2,$a2
    andi	$a5,$a0,0x3
    move	$a4,$zero
    move	$a3,$zero
    move	$a2,$s3
    beqz	$a5,.L0d97e930
    sra	$t0,$a0,0x2
.L0d97e900:
    # Line 1556
    lw	$a7,-13396($s1)
    lwc1	$f0,16($a2)
    addu	$a7,$a7,$a4
    swc1	$f0,0($a7)
    # Line 1557
    lw	$a6,-14540($s0)
    # Line 1555
    addiu	$a2,$a2,4
    addiu	$a5,$a5,-1
    addiu	$a3,$a3,1
    # Line 1557
    addu	$a6,$a6,$a4
    # Line 1555
    addiu	$a4,$a4,4
    bnez	$a5,.L0d97e900
    # Line 1557
    swc1	$f0,0($a6)
.L0d97e930:
    beqz	$t0,.L0d97e9d0
    nop
    nop
    nop
.L0d97e940:
    # Line 1556
    lw	$a5,-13396($s1)
    lwc1	$f4,16($a2)
    addu	$a5,$a5,$a4
    swc1	$f4,0($a5)
    # Line 1557
    lw	$a1,-14540($s0)
    addu	$a1,$a1,$a4
    swc1	$f4,0($a1)
    # Line 1556
    lw	$a0,-13396($s1)
    lwc1	$f3,20($a2)
    # Line 1555
    addiu	$v1,$a4,4
    # Line 1556
    addu	$a0,$a0,$v1
    swc1	$f3,0($a0)
    # Line 1557
    lw	$v0,-14540($s0)
    addu	$v0,$v0,$v1
    swc1	$f3,0($v0)
    # Line 1556
    lw	$at,-13396($s1)
    lwc1	$f2,24($a2)
    # Line 1555
    addiu	$ra,$a4,8
    # Line 1556
    addu	$at,$at,$ra
    swc1	$f2,0($at)
    # Line 1557
    lw	$t9,-14540($s0)
    addu	$t9,$t9,$ra
    swc1	$f2,0($t9)
    # Line 1556
    lw	$t8,-13396($s1)
    lwc1	$f1,28($a2)
    # Line 1555
    addiu	$t3,$a4,12
    # Line 1556
    addu	$t8,$t8,$t3
    swc1	$f1,0($t8)
    # Line 1555
    addiu	$a3,$a3,4
    # Line 1557
    lw	$t1,-14540($s0)
    # Line 1555
    slt	$t2,$a3,$s2
    addiu	$a2,$a2,16
    # Line 1557
    addu	$t1,$t1,$t3
    # Line 1555
    addiu	$a4,$a4,16
    bnez	$t2,.L0d97e940
    # Line 1557
    swc1	$f1,0($t1)
.L0d97e9d0:
    # Line 1528
    addiu	$s3,$s3,32
    bne	$s3,$s6,.L0d97e810
    nop
    # Line 1562
    ld	$gp,64($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    ld	$s4,48($sp)
    ld	$s5,24($sp)
    ld	$s6,72($sp)
    ld	$ra,56($sp)
    ld	$s7,16($sp)
    ldc1	$f20,0($sp)
    ldc1	$f22,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glKonInitEvaluators

# Function: __glKonFreeEvaluators
# Declared: Line 1564 (Source lines: 1565-1589)
# Address: 0x0d97ea20 - 0x0d97eba8 (Size: 392 bytes, Frame: 48)
.globl __glKonFreeEvaluators
.ent __glKonFreeEvaluators
__glKonFreeEvaluators:
    # Line 1565
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    sd	$s1,8($sp)
    lui	$at,0x11
    move	$s1,$a0
    addiu	$at,$at,9656
    sd	$s2,24($sp)
    addiu	$s2,$a0,468
    sd	$s3,0($sp)
    lui	$s3,0x1
    sd	$s0,16($sp)
    addu	$s2,$s3,$s2
    addu	$s3,$s3,$a0
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    move	$s0,$s3
.L0d97ea60:
    lw	$a1,-29460($s0)
    beqz	$a1,.L0d97ea7c
    nop
    # Line 1571
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1572
    sw	$zero,-29460($s0)
.L0d97ea7c:
    lw	$a1,-28940($s0)
    beqz	$a1,.L0d97ea98
    nop
    # Line 1575
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1576
    sw	$zero,-28940($s0)
.L0d97ea98:
    # Line 1569
    addiu	$s0,$s0,52
    bne	$s0,$s2,.L0d97ea60
    nop
    lw	$a1,-29548($s3)
    move	$s0,$s3
    ld	$s2,24($sp)
    beqz	$a1,.L0d97eac8
    nop
    # Line 1581
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1582
    sw	$zero,-29548($s0)
.L0d97eac8:
    lw	$a1,-29028($s0)
    beqz	$a1,.L0d97eae4
    nop
    # Line 1585
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1586
    sw	$zero,-29028($s0)
.L0d97eae4:
    # Line 1569
    lw	$a1,-29536($s0)
    beqz	$a1,.L0d97eb00
    nop
    # Line 1581
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1582
    sw	$zero,-29536($s0)
.L0d97eb00:
    lw	$a1,-29016($s0)
    beqz	$a1,.L0d97eb1c
    nop
    # Line 1585
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1586
    sw	$zero,-29016($s0)
.L0d97eb1c:
    # Line 1569
    lw	$a1,-29524($s0)
    beqz	$a1,.L0d97eb38
    nop
    # Line 1581
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1582
    sw	$zero,-29524($s0)
.L0d97eb38:
    lw	$a1,-29004($s0)
    beqz	$a1,.L0d97eb54
    nop
    # Line 1585
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1586
    sw	$zero,-29004($s0)
.L0d97eb54:
    # Line 1569
    lw	$a1,-29512($s0)
    beqz	$a1,.L0d97eb70
    nop
    # Line 1581
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1582
    sw	$zero,-29512($s0)
.L0d97eb70:
    lw	$a1,-28992($s0)
    beqz	$a1,.L0d97eb90
    ld	$s3,0($sp)
    # Line 1585
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 1586
    sw	$zero,-28992($s0)
    ld	$s3,0($sp)
.L0d97eb90:
    ld	$ra,40($sp)
    ld	$s1,8($sp)
    ld	$s0,16($sp)
    # Line 1589
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glKonFreeEvaluators

# Function: __glKonSetUpMap1
# Declared: Line 1597 (Source lines: 1599-1635)
# Address: 0x0d97ebb0 - 0x0d97ecf0 (Size: 320 bytes, Frame: 32)
.globl __glKonSetUpMap1
.ent __glKonSetUpMap1
__glKonSetUpMap1:
    # Line 1599
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    # Line 1601
    addiu	$t0,$a0,-3472
    sd	$s0,24($sp)
    # Line 1599
    lui	$a7,0x11
    # Line 1601
    sltiu	$at,$t0,9
    # Line 1599
    move	$v0,$a1
    sd	$gp,8($sp)
    addiu	$a7,$a7,9256
    addu	$gp,$t9,$a7
    # Line 1601
    beqz	$at,.L0d97ecd8
    lw	$a7,4112($zero)
    # Line 1624
    li	$a3,1
    # Line 1620
    c.eq.s	$f14,$f15
    bc1t	.L0d97ecb8
    # Line 1621
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 1620
    blez	$a1,.L0d97ecb4
    slti	$t0,$a1,16
    sll	$a1,$a0,0x2
    beqz	$t0,.L0d97ecb4
    subu	$a1,$a1,$a0
    sll	$a1,$a1,0x2
    addu	$a1,$a1,$a0
    sll	$a1,$a1,0x2
    lui	$s0,0xfffe
    addu	$a1,$a7,$a1
    addu	$s0,$a1,$s0
    lw	$t1,-13440($s0)
    slt	$t1,$a4,$t1
    bnez	$t1,.L0d97ecb4
    # Line 1622
    lw	$a2,-13436($s0)
    beq	$a2,$v0,.L0d97ec3c
    sd	$a1,0($sp)
    # Line 1624
    b	.L0d97ec40
    sw	$a3,0($a5)
.L0d97ec3c:
    # Line 1625
    sw	$zero,0($a5)
.L0d97ec40:
    # Line 1629
    sub.s	$f1,$f15,$f14
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    div.d	$f0,$f0,$f1
    # Line 1631
    lw	$a3,-13440($s0)
    mult	$a3,$v0
    # Line 1628
    swc1	$f15,-13420($s0)
    # Line 1627
    swc1	$f14,-13424($s0)
    # Line 1626
    sw	$v0,-13436($s0)
    # Line 1631
    mflo	$a2
    sw	$a2,-13400($s0)
    # Line 1629
    cvt.s.d	$f0,$f0
    swc1	$f0,-13416($s0)
    # Line 1632
    lw	$t9,8($a7)
    lw	$a1,-13396($s0)
    move	$a0,$a7
    jal	__glSetError
    sll	$a2,$a2,0x2
    # Line 1635
    ld	$a0,0($sp)
    lui	$a1,0xfffd
    ld	$ra,16($sp)
    ori	$a1,$a1,0xcb7c
    # Line 1632
    sw	$v0,-13396($s0)
    # Line 1635
    addu	$a0,$a0,$a1
.L0d97eca0:
    # Line 1618
    move	$v0,$a0
    ld	$s0,24($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97ecb4:
    # Line 1621
    # lw $t9, -28616($gp) # &__glSetError
.L0d97ecb8:
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1281
    ld	$ra,16($sp)
    # Line 1622
    move	$v0,$zero
    # Line 1618
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97ecd8:
    # Line 1617
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
    b	.L0d97eca0
    # Line 1618
    move	$a0,$zero
.end __glKonSetUpMap1

# Function: __glKonSetUpMap2
# Declared: Line 1644 (Source lines: 1647-1691)
# Address: 0x0d97ecf0 - 0x0d97eeb0 (Size: 448 bytes, Frame: 224)
.globl __glKonSetUpMap2
.ent __glKonSetUpMap2
__glKonSetUpMap2:
    # Line 1647
    move	$a5,$a2
    lui	$t1,0x11
    addiu	$sp,$sp,-96
    addiu	$t1,$t1,8936
    sd	$gp,16($sp)
    addu	$gp,$t9,$t1
    # Line 1649
    addiu	$t1,$a0,-3504
    lw	$a6,4112($zero)
    # Line 1668
    sll	$t0,$a0,0x2
    # Line 1649
    sltiu	$at,$t1,9
    # Line 1647
    move	$v0,$a1
    # Line 1668
    slti	$t3,$a2,16
    sd	$ra,24($sp)
    slti	$t2,$a1,16
    # Line 1649
    beqz	$at,.L0d97ee98
    # Line 1668
    lw	$t1,100($sp)
    # Line 1675
    lw	$t9,108($sp)
    # Line 1668
    c.eq.s	$f15,$f16
    bc1t	.L0d97ee68
    nop
    c.eq.s $f17,$f18
    bc1t .L0d97ee68
    nop
    blez	$a1,.L0d97ee68
    nop
    beqz	$t2,.L0d97ee68
    nop
    blez	$a2,.L0d97ee68
    nop
    beqz	$t3,.L0d97ee68
    lui	$a1,0xfffe
    subu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    addu	$t0,$a6,$t0
    addu	$a1,$t0,$a1
    lw	$a2,-14584($a1)
    # Line 1675
    lw	$t2,-14580($a1)
    # Line 1668
    slt	$t8,$a7,$a2
    # Line 1675
    lw	$t3,-14576($a1)
    # Line 1668
    slt	$t1,$t1,$a2
    bnez	$t8,.L0d97ee68
    # Line 1676
    lw	$a2,108($sp)
    # Line 1668
    bnez	$t1,.L0d97ee68
    # Line 1675
    li	$t8,1
    bne	$t2,$v0,.L0d97edb8
    nop
    beq	$t3,$a5,.L0d97ee88
    nop
.L0d97edb8:
    sd	$t0,0($sp)
    sd	$a1,8($sp)
    sw	$t8,0($t9)
.L0d97edc4:
    # Line 1681
    sub.s	$f1,$f16,$f15
    ldc1	$f0,_lit8_3ff0000000000000
    cvt.d.s	$f1,$f1
    div.d	$f1,$f0,$f1
    # Line 1685
    sub.s	$f2,$f18,$f17
    cvt.d.s	$f2,$f2
    div.d	$f0,$f0,$f2
    # Line 1687
    mult	$v0,$a5
    # Line 1677
    ld	$a1,8($sp)
    # Line 1687
    lw	$a2,-14584($a1)
    mflo	$a3
    nop
    # Line 1684
    swc1	$f18,-14552($a1)
    # Line 1687
    mult	$a2,$a3
    # Line 1683
    swc1	$f17,-14556($a1)
    # Line 1680
    swc1	$f16,-14564($a1)
    # Line 1679
    swc1	$f15,-14568($a1)
    # Line 1678
    sw	$a5,-14576($a1)
    # Line 1677
    sw	$v0,-14580($a1)
    # Line 1687
    mflo	$a2
    sw	$a2,-14544($a1)
    # Line 1685
    cvt.s.d	$f0,$f0
    # Line 1681
    cvt.s.d	$f1,$f1
    # Line 1685
    swc1	$f0,-14548($a1)
    # Line 1681
    swc1	$f1,-14560($a1)
    # Line 1688
    lw	$t9,8($a6)
    sll	$a2,$a2,0x2
    move	$a0,$a6
    jalr	$t9
    lw	$a1,-14540($a1)
    # Line 1691
    ld	$a0,0($sp)
    # Line 1688
    ld	$a2,8($sp)
    # Line 1691
    lui	$a1,0xfffd
    ld	$ra,24($sp)
    ori	$a1,$a1,0xc704
    # Line 1688
    sw	$v0,-14540($a2)
    # Line 1691
    addu	$a0,$a0,$a1
.L0d97ee58:
    # Line 1666
    move	$v0,$a0
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d97ee68:
    # Line 1672
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,24($sp)
    # Line 1673
    move	$v0,$zero
    # Line 1666
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d97ee88:
    sd	$t0,0($sp)
    sd	$a1,8($sp)
    b	.L0d97edc4
    # Line 1676
    sw	$zero,0($a2)
.L0d97ee98:
    # Line 1665
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,24($sp)
    b	.L0d97ee58
    # Line 1666
    move	$a0,$zero
.end __glKonSetUpMap2

# Function: __glkonim_Map1d
# Declared: Line 1695 (Source lines: 1697-1727)
# Address: 0x0d97eeb0 - 0x0d97f058 (Size: 424 bytes, Frame: 192)
.globl __glkonim_Map1d
.ent __glkonim_Map1d
__glkonim_Map1d:
    # Line 1697
    addiu	$sp,$sp,-64
    sd	$a5,8($sp)
    sd	$s2,32($sp)
    # Line 1703
    lw	$s2,4112($zero)
    # Line 1697
    sd	$s0,16($sp)
    move	$s0,$a4
    # Line 1703
    lw	$at,4120($zero)
    # Line 1697
    sd	$s1,24($sp)
    # Line 1703
    li	$v0,1
    # Line 1697
    lui	$v1,0x11
    move	$s1,$a3
    sd	$ra,48($sp)
    addiu	$v1,$v1,8488
    mov.d	$f4,$f14
    sd	$gp,40($sp)
    # Line 1703
    beq	$at,$v0,.L0d97f034
    # Line 1697
    addu	$gp,$t9,$v1
    # Line 1706
    # lw $t9, -31428($gp) # &__glKonSetUpMap1
    addiu	$a5,$sp,0
    cvt.s.d	$f15,$f14
    move	$a1,$a4
    move	$a4,$a3
    bal __glKonSetUpMap1
    cvt.s.d	$f14,$f13
    beqz	$v0,.L0d97f018
    nop
    # Line 1708
    lw	$a5,0($v0)
    sll	$a4,$a5,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a4,$s2,$a4
    li	$a5,0x8c8c
    blez	$s0,.L0d97efc8
    addu	$a4,$a4,$a5
    sll	$a0,$s0,0x2
    move	$t2,$zero
    lw	$t1,4($v0)
    sll	$a1,$s1,0x3
    ld	$a5,8($sp)
    move	$t3,$zero
.L0d97ef50:
    blez	$t1,.L0d97efb8
    move	$a7,$zero
    move	$t0,$a5
    move	$a3,$t2
.L0d97ef60:
    # Line 1712
    ldc1	$f0,0($t0)
    lw	$t1,48($v0)
    addu	$t1,$t1,$a3
    cvt.s.d	$f0,$f0
    swc1	$f0,0($t1)
    # Line 1711
    lw	$t1,4($v0)
    addiu	$a7,$a7,1
    slt	$a6,$a7,$t1
    addu	$a3,$a3,$a0
    beqz	$a6,.L0d97efb8
    nop
    # Line 1712
    ldc1	$f1,8($t0)
    lw	$t9,48($v0)
    addu	$t9,$t9,$a3
    cvt.s.d	$f1,$f1
    swc1	$f1,0($t9)
    # Line 1711
    lw	$t1,4($v0)
    addiu	$a7,$a7,1
    slt	$t8,$a7,$t1
    addiu	$t0,$t0,16
    bnez	$t8,.L0d97ef60
    addu	$a3,$a3,$a0
.L0d97efb8:
    # Line 1710
    addiu	$t3,$t3,1
    addu	$a5,$a1,$a5
    bne	$s0,$t3,.L0d97ef50
    addiu	$t2,$t2,4
.L0d97efc8:
    lw	$ra,4($a4)
    bne	$ra,$v0,.L0d97f01c
    ld	$s0,16($sp)
    lw	$at,0($sp)
    beqz	$at,.L0d97eff4
    # Line 1718
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-8192
    bal __glKonHostMapData2D
    nop
    b	.L0d97f01c
    ld	$s0,16($sp)
.L0d97eff4:
    li	$at,0x9098
    addu	$at,$at,$s2
    lbu	$at,0($at)
    li	$ra,1
    beq	$ra,$at,.L0d97f048
    # Line 1721
    nop	# was lw $t9, -31444($gp) # &__glKonHostMapData1D
    # Line 1723
    # lw $t9, -31452($gp) # &__glKonSendMapData1D
    bal __glKonSendMapData1D
    move	$a0,$v0
.L0d97f018:
    ld	$s0,16($sp)
.L0d97f01c:
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 1727
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d97f034:
    # Line 1703
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97f01c
    ld	$s0,16($sp)
.L0d97f048:
    # Line 1721
    bal __glKonHostMapData1D
    move	$a0,$v0
    b	.L0d97f01c
    ld	$s0,16($sp)
.end __glkonim_Map1d

# Function: __glkonim_Map1f
# Declared: Line 1729 (Source lines: 1731-1760)
# Address: 0x0d97f060 - 0x0d97f1fc (Size: 412 bytes, Frame: 192)
.globl __glkonim_Map1f
.ent __glkonim_Map1f
__glkonim_Map1f:
    # Line 1731
    addiu	$sp,$sp,-64
    sd	$a5,8($sp)
    sd	$s2,32($sp)
    # Line 1737
    lw	$s2,4112($zero)
    # Line 1731
    sd	$s0,16($sp)
    move	$s0,$a4
    # Line 1737
    lw	$at,4120($zero)
    # Line 1731
    sd	$s1,24($sp)
    # Line 1737
    li	$v0,1
    # Line 1731
    lui	$v1,0x11
    move	$s1,$a3
    sd	$ra,48($sp)
    addiu	$v1,$v1,8056
    mov.s	$f15,$f14
    sd	$gp,40($sp)
    # Line 1737
    beq	$at,$v0,.L0d97f1d4
    # Line 1731
    addu	$gp,$t9,$v1
    # Line 1740
    # lw $t9, -31428($gp) # &__glKonSetUpMap1
    move	$a1,$a4
    move	$a4,$a3
    mov.s	$f14,$f13
    bal __glKonSetUpMap1
    addiu	$a5,$sp,0
    beqz	$v0,.L0d97f1b8
    nop
    # Line 1742
    lw	$a5,0($v0)
    sll	$a4,$a5,0x2
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a4,$s2,$a4
    li	$a5,0x8c8c
    blez	$s0,.L0d97f170
    addu	$a4,$a4,$a5
    sll	$a0,$s0,0x2
    move	$t2,$zero
    lw	$t1,4($v0)
    sll	$a1,$s1,0x2
    ld	$a5,8($sp)
    move	$t3,$zero
    nop
.L0d97f100:
    blez	$t1,.L0d97f160
    move	$a7,$zero
    move	$t0,$a5
    move	$a3,$t2
.L0d97f110:
    # Line 1746
    lw	$t1,48($v0)
    lwc1	$f0,0($t0)
    addu	$t1,$t1,$a3
    swc1	$f0,0($t1)
    # Line 1745
    lw	$t1,4($v0)
    addiu	$a7,$a7,1
    slt	$a6,$a7,$t1
    addu	$a3,$a3,$a0
    beqz	$a6,.L0d97f160
    nop
    # Line 1746
    lw	$t9,48($v0)
    lwc1	$f1,4($t0)
    addu	$t9,$t9,$a3
    swc1	$f1,0($t9)
    # Line 1745
    lw	$t1,4($v0)
    addiu	$a7,$a7,1
    slt	$t8,$a7,$t1
    addiu	$t0,$t0,8
    bnez	$t8,.L0d97f110
    addu	$a3,$a3,$a0
.L0d97f160:
    # Line 1744
    addiu	$t3,$t3,1
    addu	$a5,$a1,$a5
    bne	$s0,$t3,.L0d97f100
    addiu	$t2,$t2,4
.L0d97f170:
    lw	$ra,4($a4)
    bne	$ra,$v0,.L0d97f1b8
    lw	$at,0($sp)
    beqz	$at,.L0d97f19c
    # Line 1752
    li	$at,0x9098
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-8192
    bal __glKonHostMapData2D
    nop
    b	.L0d97f1bc
    ld	$s0,16($sp)
.L0d97f19c:
    addu	$at,$at,$s2
    lbu	$at,0($at)
    li	$ra,1
    beq	$ra,$at,.L0d97f1e8
    # Line 1757
    nop	# was lw $t9, -31452($gp) # &__glKonSendMapData1D
    bal __glKonSendMapData1D
    move	$a0,$v0
.L0d97f1b8:
    ld	$s0,16($sp)
.L0d97f1bc:
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 1760
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d97f1d4:
    # Line 1737
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97f1bc
    ld	$s0,16($sp)
.L0d97f1e8:
    # Line 1755
    # lw $t9, -31444($gp) # &__glKonHostMapData1D
    bal __glKonHostMapData1D
    move	$a0,$v0
    b	.L0d97f1bc
    ld	$s0,16($sp)
.end __glkonim_Map1f

# Function: __glkonim_Map2d
# Declared: Line 1762 (Source lines: 1765-1798)
# Address: 0x0d97f200 - 0x0d97f424 (Size: 548 bytes, Frame: 160)
.globl __glkonim_Map2d
.ent __glkonim_Map2d
__glkonim_Map2d:
    # Line 1765
    addiu	$sp,$sp,-160
    sd	$s6,24($sp)
    # Line 1771
    lw	$s6,4112($zero)
    sd	$s3,64($sp)
    sd	$ra,72($sp)
    sd	$s2,80($sp)
    # Line 1765
    sd	$s0,40($sp)
    sd	$s4,32($sp)
    move	$s4,$a7
    move	$s0,$a4
    # Line 1771
    lw	$at,4120($zero)
    # Line 1765
    sd	$s5,48($sp)
    # Line 1771
    li	$v0,1
    # Line 1765
    lui	$v1,0x11
    mov.d	$f5,$f18
    move	$s5,$a3
    sd	$s1,88($sp)
    addiu	$v1,$v1,7640
    mov.d	$f4,$f17
    sd	$gp,56($sp)
    # Line 1771
    beq	$at,$v0,.L0d97f400
    # Line 1765
    addu	$gp,$t9,$v1
    # Line 1774
    cvt.s.d	$f18,$f18
    # lw $t9, -31424($gp) # &__glKonSetUpMap2
    move	$a7,$a3
    cvt.s.d	$f17,$f17
    lw	$s3,164($sp)
    cvt.s.d	$f16,$f14
    addiu	$a1,$sp,16
    sw	$a1,12($sp)
    move	$a1,$a4
    sw	$s4,4($sp)
    cvt.s.d	$f15,$f13
    bal __glKonSetUpMap2
    move	$a2,$s3
    beqz	$v0,.L0d97f3d4
    nop
    # Line 1777
    lw	$a3,0($v0)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$s6,$a2
    li	$a3,0x8e94
    blez	$s3,.L0d97f388
    addu	$a2,$a2,$a3
    mult	$s0,$s3
    sll	$s2,$s0,0x2
    sll	$a1,$s5,0x3
    sll	$s1,$s4,0x3
    move	$t9,$zero
    mflo	$a0
    lw	$a4,172($sp)
    move	$ra,$zero
    sll	$a0,$a0,0x2
    nop
    nop
.L0d97f2e0:
    blez	$s0,.L0d97f378
    move	$t2,$a4
    lw	$t1,4($v0)
    move	$t3,$t9
    move	$t8,$zero
    nop
    nop
    nop
.L0d97f300:
    blez	$t1,.L0d97f368
    move	$a3,$zero
    move	$a7,$t3
    move	$t0,$t2
.L0d97f310:
    # Line 1782
    ldc1	$f0,0($t0)
    lw	$a6,48($v0)
    addu	$a6,$a6,$a7
    cvt.s.d	$f0,$f0
    swc1	$f0,0($a6)
    # Line 1781
    lw	$t1,4($v0)
    addiu	$a3,$a3,1
    slt	$a5,$a3,$t1
    addu	$a7,$a7,$a0
    beqz	$a5,.L0d97f368
    nop
    # Line 1782
    ldc1	$f1,8($t0)
    lw	$v1,48($v0)
    addu	$v1,$v1,$a7
    cvt.s.d	$f1,$f1
    swc1	$f1,0($v1)
    # Line 1781
    lw	$t1,4($v0)
    addiu	$a3,$a3,1
    slt	$at,$a3,$t1
    addiu	$t0,$t0,16
    bnez	$at,.L0d97f310
    addu	$a7,$a7,$a0
.L0d97f368:
    # Line 1780
    addiu	$t8,$t8,1
    addu	$t2,$a1,$t2
    bne	$s0,$t8,.L0d97f300
    addiu	$t3,$t3,4
.L0d97f378:
    # Line 1779
    addiu	$ra,$ra,1
    addu	$a4,$s1,$a4
    bne	$ra,$s3,.L0d97f2e0
    addu	$t9,$t9,$s2
.L0d97f388:
    lw	$a0,4($a2)
    bne	$a0,$v0,.L0d97f3d4
    lw	$a1,16($sp)
    beqz	$a1,.L0d97f3b0
    # Line 1790
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-7312
    bal __glKonHostMapData2D
    nop
    b	.L0d97f3d8
    ld	$s6,24($sp)
.L0d97f3b0:
    li	$at,0x9098
    addu	$at,$at,$s6
    lbu	$at,0($at)
    li	$ra,1
    beq	$ra,$at,.L0d97f414
    # Line 1793
    nop	# was lw $t9, -31440($gp) # &__glKonHostMapData2D
    # Line 1795
    # lw $t9, -31448($gp) # &__glKonSendMapData2D
    bal __glKonSendMapData2D
    move	$a0,$v0
.L0d97f3d4:
    ld	$s6,24($sp)
.L0d97f3d8:
    ld	$s3,64($sp)
    ld	$s4,32($sp)
    ld	$s2,80($sp)
    ld	$s0,40($sp)
    ld	$ra,72($sp)
    ld	$s1,88($sp)
    ld	$s5,48($sp)
    # Line 1798
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d97f400:
    # Line 1771
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97f3d8
    ld	$s6,24($sp)
.L0d97f414:
    # Line 1793
    bal __glKonHostMapData2D
    move	$a0,$v0
    b	.L0d97f3d8
    ld	$s6,24($sp)
.end __glkonim_Map2d

# Function: __glkonim_Map2f
# Declared: Line 1801 (Source lines: 1804-1837)
# Address: 0x0d97f430 - 0x0d97f63c (Size: 524 bytes, Frame: 160)
.globl __glkonim_Map2f
.ent __glkonim_Map2f
__glkonim_Map2f:
    # Line 1804
    addiu	$sp,$sp,-160
    sd	$s6,24($sp)
    # Line 1810
    lw	$s6,4112($zero)
    sd	$s3,64($sp)
    sd	$ra,72($sp)
    sd	$s2,80($sp)
    # Line 1804
    sd	$s0,40($sp)
    sd	$s4,32($sp)
    move	$s4,$a7
    move	$s0,$a4
    # Line 1810
    lw	$at,4120($zero)
    # Line 1804
    sd	$s5,48($sp)
    # Line 1810
    li	$v0,1
    # Line 1804
    lui	$v1,0x11
    move	$s5,$a3
    sd	$s1,88($sp)
    addiu	$v1,$v1,7080
    sd	$gp,56($sp)
    # Line 1810
    beq	$at,$v0,.L0d97f618
    # Line 1804
    addu	$gp,$t9,$v1
    # Line 1813
    # lw $t9, -31424($gp) # &__glKonSetUpMap2
    move	$a7,$a3
    lw	$s3,164($sp)
    mov.s	$f16,$f14
    addiu	$a1,$sp,16
    sw	$a1,12($sp)
    move	$a1,$a4
    sw	$s4,4($sp)
    mov.s	$f15,$f13
    bal __glKonSetUpMap2
    move	$a2,$s3
    beqz	$v0,.L0d97f5ec
    nop
    # Line 1816
    lw	$a3,0($v0)
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a2,$s6,$a2
    li	$a3,0x8e94
    blez	$s3,.L0d97f5a0
    addu	$a2,$a2,$a3
    mult	$s0,$s3
    sll	$s2,$s0,0x2
    sll	$a1,$s5,0x2
    sll	$s1,$s4,0x2
    move	$t9,$zero
    mflo	$a0
    lw	$a4,172($sp)
    move	$ra,$zero
    sll	$a0,$a0,0x2
    nop
    nop
.L0d97f500:
    blez	$s0,.L0d97f590
    move	$t2,$a4
    lw	$t1,4($v0)
    move	$t3,$t9
    move	$t8,$zero
    nop
    nop
    nop
.L0d97f520:
    blez	$t1,.L0d97f580
    move	$a3,$zero
    move	$a7,$t3
    move	$t0,$t2
.L0d97f530:
    # Line 1821
    lw	$a6,48($v0)
    lwc1	$f0,0($t0)
    addu	$a6,$a6,$a7
    swc1	$f0,0($a6)
    # Line 1820
    lw	$t1,4($v0)
    addiu	$a3,$a3,1
    slt	$a5,$a3,$t1
    addu	$a7,$a7,$a0
    beqz	$a5,.L0d97f580
    nop
    # Line 1821
    lw	$v1,48($v0)
    lwc1	$f1,4($t0)
    addu	$v1,$v1,$a7
    swc1	$f1,0($v1)
    # Line 1820
    lw	$t1,4($v0)
    addiu	$a3,$a3,1
    slt	$at,$a3,$t1
    addiu	$t0,$t0,8
    bnez	$at,.L0d97f530
    addu	$a7,$a7,$a0
.L0d97f580:
    # Line 1819
    addiu	$t8,$t8,1
    addu	$t2,$a1,$t2
    bne	$s0,$t8,.L0d97f520
    addiu	$t3,$t3,4
.L0d97f590:
    # Line 1818
    addiu	$ra,$ra,1
    addu	$a4,$s1,$a4
    bne	$ra,$s3,.L0d97f500
    addu	$t9,$t9,$s2
.L0d97f5a0:
    lw	$a0,4($a2)
    bne	$a0,$v0,.L0d97f5ec
    lw	$a1,16($sp)
    beqz	$a1,.L0d97f5c8
    # Line 1829
    nop	# was lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-7312
    bal __glKonHostMapData2D
    nop
    b	.L0d97f5f0
    ld	$s6,24($sp)
.L0d97f5c8:
    li	$at,0x9098
    addu	$at,$at,$s6
    lbu	$at,0($at)
    li	$ra,1
    beq	$ra,$at,.L0d97f62c
    # Line 1832
    nop	# was lw $t9, -31440($gp) # &__glKonHostMapData2D
    # Line 1834
    # lw $t9, -31448($gp) # &__glKonSendMapData2D
    bal __glKonSendMapData2D
    move	$a0,$v0
.L0d97f5ec:
    ld	$s6,24($sp)
.L0d97f5f0:
    ld	$s3,64($sp)
    ld	$s4,32($sp)
    ld	$s2,80($sp)
    ld	$s0,40($sp)
    ld	$ra,72($sp)
    ld	$s1,88($sp)
    ld	$s5,48($sp)
    # Line 1837
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d97f618:
    # Line 1810
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97f5f0
    ld	$s6,24($sp)
.L0d97f62c:
    # Line 1832
    bal __glKonHostMapData2D
    move	$a0,$v0
    b	.L0d97f5f0
    ld	$s6,24($sp)
.end __glkonim_Map2f

# Function: __glkonim_EvalCoord1d
# Declared: Line 1839 (Source lines: 1840-1845)
# Address: 0x0d97f640 - 0x0d97f690 (Size: 80 bytes, Frame: 16)
.globl __glkonim_EvalCoord1d
.ent __glkonim_EvalCoord1d
__glkonim_EvalCoord1d:
    # Line 1841
    lw	$a1,4112($zero)
    lui	$a2,0x1
    addu	$a1,$a1,$a2
    lw	$v0,-29556($a1)
    # Line 1840
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,6552
    mov.d	$f4,$f12
    sd	$gp,0($sp)
    # Line 1841
    bnez	$v0,.L0d97f678
    # Line 1840
    addu	$gp,$t9,$at
.L0d97f66c:
    # Line 1845
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f678:
    # Line 1844
    lw	$t9,-28516($a1)
    sd	$ra,8($sp)
    jalr	$t9
    cvt.s.d	$f12,$f12
    b	.L0d97f66c
    ld	$ra,8($sp)
.end __glkonim_EvalCoord1d

# Function: __glkonim_EvalCoord1dv
# Declared: Line 1847 (Source lines: 1848-1853)
# Address: 0x0d97f690 - 0x0d97f6e0 (Size: 80 bytes, Frame: 16)
.globl __glkonim_EvalCoord1dv
.ent __glkonim_EvalCoord1dv
__glkonim_EvalCoord1dv:
    # Line 1849
    lw	$a2,4112($zero)
    lui	$a3,0x1
    addu	$a2,$a2,$a3
    lw	$v0,-29556($a2)
    # Line 1848
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,6472
    sd	$gp,0($sp)
    # Line 1849
    bnez	$v0,.L0d97f6c4
    # Line 1848
    addu	$gp,$t9,$at
.L0d97f6b8:
    # Line 1853
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f6c4:
    # Line 1852
    ldc1	$f12,0($a0)
    lw	$t9,-28516($a2)
    sd	$ra,8($sp)
    jalr	$t9
    cvt.s.d	$f12,$f12
    b	.L0d97f6b8
    ld	$ra,8($sp)
.end __glkonim_EvalCoord1dv

# Function: __glkonim_EvalCoord1f
# Declared: Line 1855 (Source lines: 1856-1861)
# Address: 0x0d97f6e0 - 0x0d97f72c (Size: 76 bytes, Frame: 16)
.globl __glkonim_EvalCoord1f
.ent __glkonim_EvalCoord1f
__glkonim_EvalCoord1f:
    # Line 1857
    lw	$a1,4112($zero)
    lui	$a2,0x1
    addu	$a1,$a1,$a2
    lw	$v0,-29556($a1)
    # Line 1856
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,6392
    sd	$gp,0($sp)
    # Line 1857
    bnez	$v0,.L0d97f714
    # Line 1856
    addu	$gp,$t9,$at
.L0d97f708:
    # Line 1861
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f714:
    # Line 1860
    lw	$t9,-28516($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0d97f708
    ld	$ra,8($sp)
.end __glkonim_EvalCoord1f

# Function: __glkonim_EvalCoord1fv
# Declared: Line 1863 (Source lines: 1864-1869)
# Address: 0x0d97f730 - 0x0d97f77c (Size: 76 bytes, Frame: 16)
.globl __glkonim_EvalCoord1fv
.ent __glkonim_EvalCoord1fv
__glkonim_EvalCoord1fv:
    # Line 1865
    lw	$a2,4112($zero)
    lui	$a3,0x1
    addu	$a2,$a2,$a3
    lw	$v0,-29556($a2)
    # Line 1864
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,6312
    sd	$gp,0($sp)
    # Line 1865
    bnez	$v0,.L0d97f764
    # Line 1864
    addu	$gp,$t9,$at
.L0d97f758:
    # Line 1869
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f764:
    # Line 1868
    lw	$t9,-28516($a2)
    sd	$ra,8($sp)
    jalr	$t9
    lwc1	$f12,0($a0)
    b	.L0d97f758
    ld	$ra,8($sp)
.end __glkonim_EvalCoord1fv

# Function: __glkonim_EvalCoord2d
# Declared: Line 1871 (Source lines: 1872-1877)
# Address: 0x0d97f780 - 0x0d97f7d8 (Size: 88 bytes, Frame: 16)
.globl __glkonim_EvalCoord2d
.ent __glkonim_EvalCoord2d
__glkonim_EvalCoord2d:
    # Line 1873
    lw	$a1,4112($zero)
    lui	$a2,0x1
    addu	$a1,$a1,$a2
    lw	$v0,-29036($a1)
    # Line 1872
    lui	$at,0x11
    mov.d	$f4,$f13
    addiu	$sp,$sp,-16
    addiu	$at,$at,6232
    mov.d	$f5,$f12
    sd	$gp,0($sp)
    # Line 1873
    bnez	$v0,.L0d97f7bc
    # Line 1872
    addu	$gp,$t9,$at
.L0d97f7b0:
    # Line 1877
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f7bc:
    # Line 1876
    lw	$t9,-28512($a1)
    cvt.s.d	$f13,$f13
    sd	$ra,8($sp)
    jalr	$t9
    cvt.s.d	$f12,$f12
    b	.L0d97f7b0
    ld	$ra,8($sp)
.end __glkonim_EvalCoord2d

# Function: __glkonim_EvalCoord2dv
# Declared: Line 1879 (Source lines: 1880-1885)
# Address: 0x0d97f7e0 - 0x0d97f838 (Size: 88 bytes, Frame: 16)
.globl __glkonim_EvalCoord2dv
.ent __glkonim_EvalCoord2dv
__glkonim_EvalCoord2dv:
    # Line 1881
    lw	$a2,4112($zero)
    lui	$a3,0x1
    addu	$a2,$a2,$a3
    lw	$v0,-29036($a2)
    # Line 1880
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,6136
    sd	$gp,0($sp)
    # Line 1881
    bnez	$v0,.L0d97f814
    # Line 1880
    addu	$gp,$t9,$at
.L0d97f808:
    # Line 1885
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f814:
    # Line 1884
    ldc1	$f12,0($a0)
    ldc1	$f13,8($a0)
    lw	$t9,-28512($a2)
    cvt.s.d	$f13,$f13
    sd	$ra,8($sp)
    jalr	$t9
    cvt.s.d	$f12,$f12
    b	.L0d97f808
    ld	$ra,8($sp)
.end __glkonim_EvalCoord2dv

# Function: __glkonim_EvalCoord2f
# Declared: Line 1887 (Source lines: 1888-1893)
# Address: 0x0d97f840 - 0x0d97f88c (Size: 76 bytes, Frame: 16)
.globl __glkonim_EvalCoord2f
.ent __glkonim_EvalCoord2f
__glkonim_EvalCoord2f:
    # Line 1889
    lw	$a1,4112($zero)
    lui	$a2,0x1
    addu	$a1,$a1,$a2
    lw	$v0,-29036($a1)
    # Line 1888
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,6040
    sd	$gp,0($sp)
    # Line 1889
    bnez	$v0,.L0d97f874
    # Line 1888
    addu	$gp,$t9,$at
.L0d97f868:
    # Line 1893
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f874:
    # Line 1892
    lw	$t9,-28512($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0d97f868
    ld	$ra,8($sp)
.end __glkonim_EvalCoord2f

# Function: __glkonim_EvalCoord2fv
# Declared: Line 1895 (Source lines: 1896-1901)
# Address: 0x0d97f890 - 0x0d97f8e0 (Size: 80 bytes, Frame: 16)
.globl __glkonim_EvalCoord2fv
.ent __glkonim_EvalCoord2fv
__glkonim_EvalCoord2fv:
    # Line 1897
    lw	$a2,4112($zero)
    lui	$a3,0x1
    addu	$a2,$a2,$a3
    lw	$v0,-29036($a2)
    # Line 1896
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,5960
    sd	$gp,0($sp)
    # Line 1897
    bnez	$v0,.L0d97f8c4
    # Line 1896
    addu	$gp,$t9,$at
.L0d97f8b8:
    # Line 1901
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f8c4:
    # Line 1900
    lw	$t9,-28512($a2)
    lwc1	$f13,4($a0)
    sd	$ra,8($sp)
    jalr	$t9
    lwc1	$f12,0($a0)
    b	.L0d97f8b8
    ld	$ra,8($sp)
.end __glkonim_EvalCoord2fv

# Function: __glkonim_MapGrid1d
# Declared: Line 1903 (Source lines: 1904-1920)
# Address: 0x0d97f8e0 - 0x0d97f9a8 (Size: 200 bytes, Frame: 16)
.globl __glkonim_MapGrid1d
.ent __glkonim_MapGrid1d
__glkonim_MapGrid1d:
    # Line 1905
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 1904
    lui	$at,0x11
    # Line 1905
    lw	$a2,4112($zero)
    # Line 1904
    addiu	$sp,$sp,-16
    addiu	$at,$at,5880
    sd	$gp,0($sp)
    # Line 1905
    beq	$v0,$v1,.L0d97f990
    # Line 1904
    addu	$gp,$t9,$at
    # Line 1905
    bltz	$a0,.L0d97f974
    # Line 1919
    li	$v0,40
    # Line 1920
    ld	$gp,0($sp)
    # Line 1913
    sw	$a0,1944($a2)
    # Line 1912
    cvt.s.d	$f4,$f14
    # Line 1911
    cvt.s.d	$f5,$f13
    # Line 1912
    swc1	$f4,1936($a2)
    # Line 1913
    blez	$a0,.L0d97f964
    # Line 1911
    swc1	$f5,1932($a2)
    # Line 1915
    mtc1	$a0,$f7
    cvt.s.w	$f7,$f7
    sub.s	$f6,$f4,$f5
    div.s	$f6,$f6,$f7
    swc1	$f6,1940($a2)
.L0d97f93c:
    # Line 1919
    sw	$v0,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f5,16384($zero)
    swc1	$f4,16384($zero)
    swc1	$f6,16384($zero)
    # Line 1920
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f958:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f964:
    # Line 1917
    mtc1	$zero,$f8
    mtc1	$zero,$f6
    b	.L0d97f93c
    swc1	$f8,1940($a2)
.L0d97f974:
    # Line 1908
    li	$a0,228
    sw	$a0,16384($zero)
    li	$v1,1281
    sw	$v1,16384($zero)
    # Line 1920
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97f990:
    # Line 1905
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d97f958
    ld	$ra,8($sp)
.end __glkonim_MapGrid1d

# Function: __glkonim_MapGrid1f
# Declared: Line 1922 (Source lines: 1923-1939)
# Address: 0x0d97f9b0 - 0x0d97fa70 (Size: 192 bytes, Frame: 16)
.globl __glkonim_MapGrid1f
.ent __glkonim_MapGrid1f
__glkonim_MapGrid1f:
    # Line 1924
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 1923
    lui	$at,0x11
    # Line 1924
    lw	$a2,4112($zero)
    # Line 1923
    addiu	$sp,$sp,-16
    addiu	$at,$at,5672
    sd	$gp,0($sp)
    # Line 1924
    beq	$v0,$v1,.L0d97fa58
    # Line 1923
    addu	$gp,$t9,$at
    # Line 1924
    bltz	$a0,.L0d97fa3c
    # Line 1938
    li	$v0,40
    # Line 1939
    ld	$gp,0($sp)
    # Line 1932
    sw	$a0,1944($a2)
    # Line 1931
    swc1	$f14,1936($a2)
    # Line 1932
    blez	$a0,.L0d97fa2c
    # Line 1930
    swc1	$f13,1932($a2)
    # Line 1934
    mtc1	$a0,$f5
    cvt.s.w	$f5,$f5
    sub.s	$f4,$f14,$f13
    div.s	$f4,$f4,$f5
    swc1	$f4,1940($a2)
.L0d97fa04:
    # Line 1938
    sw	$v0,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    swc1	$f14,16384($zero)
    swc1	$f4,16384($zero)
    # Line 1939
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fa20:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fa2c:
    # Line 1936
    mtc1	$zero,$f6
    mtc1	$zero,$f4
    b	.L0d97fa04
    swc1	$f6,1940($a2)
.L0d97fa3c:
    # Line 1927
    li	$a0,228
    sw	$a0,16384($zero)
    li	$v1,1281
    sw	$v1,16384($zero)
    # Line 1939
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fa58:
    # Line 1924
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d97fa20
    ld	$ra,8($sp)
.end __glkonim_MapGrid1f

# Function: __glkonim_MapGrid2d
# Declared: Line 1941 (Source lines: 1943-1968)
# Address: 0x0d97fa70 - 0x0d97fb90 (Size: 288 bytes, Frame: 16)
.globl __glkonim_MapGrid2d
.ent __glkonim_MapGrid2d
__glkonim_MapGrid2d:
    # Line 1944
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 1943
    lui	$at,0x11
    # Line 1944
    lw	$a2,4112($zero)
    # Line 1943
    addiu	$sp,$sp,-16
    addiu	$at,$at,5480
    sd	$gp,0($sp)
    # Line 1944
    beq	$v0,$v1,.L0d97fb78
    # Line 1943
    addu	$gp,$t9,$at
    # Line 1946
    bltz	$a0,.L0d97fb5c
    nop
    bltz	$a3,.L0d97fb5c
    nop
    # Line 1952
    sw	$a0,1960($a2)
    # Line 1958
    cvt.s.d	$f7,$f17
    # Line 1968
    ld	$gp,0($sp)
    # Line 1951
    cvt.s.d	$f6,$f14
    # Line 1950
    cvt.s.d	$f5,$f13
    # Line 1951
    swc1	$f6,1952($a2)
    # Line 1957
    cvt.s.d	$f4,$f16
    # Line 1965
    li	$v0,41
    # Line 1952
    blez	$a0,.L0d97fb3c
    # Line 1950
    swc1	$f5,1948($a2)
    # Line 1954
    mtc1	$a0,$f10
    cvt.s.w	$f10,$f10
    sub.s	$f9,$f6,$f5
    div.s	$f9,$f9,$f10
    swc1	$f9,1956($a2)
.L0d97fae0:
    # Line 1959
    sw	$a3,1976($a2)
    # Line 1961
    mtc1	$a3,$f10
    # Line 1958
    swc1	$f7,1968($a2)
    # Line 1959
    blez	$a3,.L0d97fb4c
    # Line 1957
    swc1	$f4,1964($a2)
    # Line 1961
    cvt.s.w	$f10,$f10
    sub.s	$f8,$f7,$f4
    div.s	$f8,$f8,$f10
    swc1	$f8,1972($a2)
.L0d97fb04:
    # Line 1965
    sw	$v0,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f5,16384($zero)
    swc1	$f6,16384($zero)
    swc1	$f9,16384($zero)
    sw	$a3,16384($zero)
    swc1	$f4,16384($zero)
    swc1	$f7,16384($zero)
    swc1	$f8,16384($zero)
    # Line 1968
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fb30:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fb3c:
    # Line 1956
    mtc1	$zero,$f11
    mtc1	$zero,$f9
    b	.L0d97fae0
    swc1	$f11,1956($a2)
.L0d97fb4c:
    # Line 1963
    mtc1	$zero,$f12
    mtc1	$zero,$f8
    b	.L0d97fb04
    swc1	$f12,1972($a2)
.L0d97fb5c:
    # Line 1947
    li	$a0,228
    sw	$a0,16384($zero)
    li	$v1,1281
    sw	$v1,16384($zero)
    # Line 1968
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fb78:
    # Line 1944
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d97fb30
    ld	$ra,8($sp)
.end __glkonim_MapGrid2d

# Function: __glkonim_MapGrid2f
# Declared: Line 1970 (Source lines: 1972-1997)
# Address: 0x0d97fb90 - 0x0d97fca0 (Size: 272 bytes, Frame: 16)
.globl __glkonim_MapGrid2f
.ent __glkonim_MapGrid2f
__glkonim_MapGrid2f:
    # Line 1973
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 1972
    lui	$at,0x11
    # Line 1973
    lw	$a2,4112($zero)
    # Line 1972
    addiu	$sp,$sp,-16
    addiu	$at,$at,5192
    sd	$gp,0($sp)
    # Line 1973
    beq	$v0,$v1,.L0d97fc88
    # Line 1972
    addu	$gp,$t9,$at
    # Line 1975
    bltz	$a0,.L0d97fc6c
    nop
    bltz	$a3,.L0d97fc6c
    nop
    # Line 1981
    sw	$a0,1960($a2)
    # Line 1980
    swc1	$f14,1952($a2)
    # Line 1997
    ld	$gp,0($sp)
    # Line 1994
    li	$v0,41
    # Line 1981
    blez	$a0,.L0d97fc4c
    # Line 1979
    swc1	$f13,1948($a2)
    # Line 1983
    mtc1	$a0,$f5
    cvt.s.w	$f5,$f5
    sub.s	$f4,$f14,$f13
    div.s	$f4,$f4,$f5
    swc1	$f4,1956($a2)
.L0d97fbf0:
    # Line 1988
    sw	$a3,1976($a2)
    # Line 1987
    swc1	$f17,1968($a2)
    # Line 1988
    blez	$a3,.L0d97fc5c
    # Line 1986
    swc1	$f16,1964($a2)
    # Line 1990
    mtc1	$a3,$f6
    cvt.s.w	$f6,$f6
    sub.s	$f5,$f17,$f16
    div.s	$f5,$f5,$f6
    swc1	$f5,1972($a2)
.L0d97fc14:
    # Line 1994
    sw	$v0,16384($zero)
    sw	$a0,16384($zero)
    swc1	$f13,16384($zero)
    swc1	$f14,16384($zero)
    swc1	$f4,16384($zero)
    sw	$a3,16384($zero)
    swc1	$f16,16384($zero)
    swc1	$f17,16384($zero)
    swc1	$f5,16384($zero)
    # Line 1997
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fc40:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fc4c:
    # Line 1985
    mtc1	$zero,$f7
    mtc1	$zero,$f4
    b	.L0d97fbf0
    swc1	$f7,1956($a2)
.L0d97fc5c:
    # Line 1992
    mtc1	$zero,$f8
    mtc1	$zero,$f5
    b	.L0d97fc14
    swc1	$f8,1972($a2)
.L0d97fc6c:
    # Line 1976
    li	$a0,228
    sw	$a0,16384($zero)
    li	$v1,1281
    sw	$v1,16384($zero)
    # Line 1997
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fc88:
    # Line 1973
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d97fc40
    ld	$ra,8($sp)
.end __glkonim_MapGrid2f

# Function: __glkonim_EvalMesh1
# Declared: Line 1999 (Source lines: 2000-2011)
# Address: 0x0d97fca0 - 0x0d97fd38 (Size: 152 bytes, Frame: 16)
.globl __glkonim_EvalMesh1
.ent __glkonim_EvalMesh1
__glkonim_EvalMesh1:
    # Line 2004
    sltiu	$a5,$a0,6914
    # Line 2000
    addiu	$sp,$sp,-16
    # Line 2002
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 2000
    lui	$v1,0x11
    # Line 2004
    sltiu	$a3,$a0,6912
    sd	$ra,8($sp)
    # Line 2000
    addiu	$v1,$v1,4920
    sd	$gp,0($sp)
    # Line 2002
    beq	$at,$v0,.L0d97fd24
    # Line 2000
    addu	$gp,$t9,$v1
    # Line 2004
    bnez	$a3,.L0d97fd14
    # Line 2005
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 2004
    beqz	$a5,.L0d97fd10
    # Line 2006
    lui	$a5,0x1
    addu	$a5,$a4,$a5
    lw	$a6,-29556($a5)
    bnez	$a6,.L0d97fcfc
    ld	$ra,8($sp)
.L0d97fcf0:
    # Line 2011
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fcfc:
    # Line 2010
    lw	$t9,-28508($a5)
    jal	__glSetError
    nop
    b	.L0d97fcf0
    ld	$ra,8($sp)
.L0d97fd10:
    # Line 2005
    # lw $t9, -28616($gp) # &__glSetError
.L0d97fd14:
    jal	__glSetError
    li	$a0,1280
    b	.L0d97fcf0
    ld	$ra,8($sp)
.L0d97fd24:
    # Line 2002
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97fcf0
    ld	$ra,8($sp)
.end __glkonim_EvalMesh1

# Function: __glkonim_EvalPoint1
# Declared: Line 2013 (Source lines: 2014-2027)
# Address: 0x0d97fd40 - 0x0d97fda8 (Size: 104 bytes, Frame: 16)
.globl __glkonim_EvalPoint1
.ent __glkonim_EvalPoint1
__glkonim_EvalPoint1:
    # Line 2017
    lw	$a2,4112($zero)
    lui	$a3,0x1
    addu	$a3,$a2,$a3
    lw	$at,-29556($a3)
    # Line 2014
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 2024
    mtc1	$a0,$f13
    sd	$ra,8($sp)
    # Line 2014
    addiu	$v0,$v0,4760
    sd	$gp,0($sp)
    # Line 2017
    beqz	$at,.L0d97fd98
    # Line 2014
    addu	$gp,$t9,$v0
    # Line 2021
    lw	$a4,1944($a2)
    # Line 2024
    lwc1	$f14,1940($a2)
    # Line 2021
    beq	$a4,$a0,.L0d97fd8c
    # Line 2023
    lwc1	$f12,1936($a2)
    # Line 2024
    cvt.s.w	$f13,$f13
    lwc1	$f12,1932($a2)
    madd.s	$f12,$f12,$f13,$f14
.L0d97fd8c:
    # Line 2026
    lw	$t9,-28516($a3)
    jalr	$t9
    nop
.L0d97fd98:
    ld	$ra,8($sp)
    # Line 2027
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_EvalPoint1

# Function: __glkonim_EvalMesh2
# Declared: Line 2029 (Source lines: 2031-2042)
# Address: 0x0d97fdb0 - 0x0d97fe4c (Size: 156 bytes, Frame: 16)
.globl __glkonim_EvalMesh2
.ent __glkonim_EvalMesh2
__glkonim_EvalMesh2:
    # Line 2035
    sltiu	$a7,$a0,6915
    # Line 2031
    addiu	$sp,$sp,-16
    # Line 2033
    lw	$at,4120($zero)
    lw	$a6,4112($zero)
    li	$v0,1
    # Line 2031
    lui	$v1,0x11
    # Line 2035
    sltiu	$a5,$a0,6912
    sd	$ra,8($sp)
    # Line 2031
    addiu	$v1,$v1,4648
    sd	$gp,0($sp)
    # Line 2033
    beq	$at,$v0,.L0d97fe38
    # Line 2031
    addu	$gp,$t9,$v1
    # Line 2035
    bnez	$a5,.L0d97fe28
    # Line 2036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 2035
    beqz	$a7,.L0d97fe28
    # Line 2036
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 2037
    lui	$a7,0x1
    addu	$a7,$a6,$a7
    lw	$t0,-29036($a7)
    bnez	$t0,.L0d97fe10
    ld	$ra,8($sp)
.L0d97fe04:
    # Line 2042
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97fe10:
    # Line 2041
    lw	$t9,-28504($a7)
    jal	__glSetError
    nop
    b	.L0d97fe04
    ld	$ra,8($sp)
    # Line 2036
    # lw $t9, -28616($gp) # &__glSetError
.L0d97fe28:
    jal	__glSetError
    li	$a0,1280
    b	.L0d97fe04
    ld	$ra,8($sp)
.L0d97fe38:
    # Line 2033
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97fe04
    ld	$ra,8($sp)
.end __glkonim_EvalMesh2

# Function: __glkonim_EvalPoint2
# Declared: Line 2044 (Source lines: 2045-2060)
# Address: 0x0d97fe50 - 0x0d97fedc (Size: 140 bytes, Frame: 16)
.globl __glkonim_EvalPoint2
.ent __glkonim_EvalPoint2
__glkonim_EvalPoint2:
    # Line 2049
    lw	$a3,4112($zero)
    lui	$a4,0x1
    addu	$a4,$a3,$a4
    lw	$at,-29036($a4)
    # Line 2045
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 2056
    mtc1	$a0,$f13
    sd	$ra,8($sp)
    # Line 2045
    addiu	$v0,$v0,4488
    sd	$gp,0($sp)
    # Line 2049
    beqz	$at,.L0d97fecc
    # Line 2045
    addu	$gp,$t9,$v0
    # Line 2056
    lwc1	$f12,1952($a3)
    # Line 2053
    lw	$a5,1960($a3)
    # Line 2056
    lwc1	$f14,1956($a3)
    lw	$a6,1976($a3)
    # Line 2053
    beq	$a5,$a0,.L0d97fea4
    # Line 2057
    lwc1	$f15,1972($a3)
    # Line 2056
    cvt.s.w	$f13,$f13
    lwc1	$f12,1948($a3)
    madd.s	$f12,$f12,$f13,$f14
.L0d97fea4:
    # Line 2057
    lwc1	$f13,1964($a3)
    # Line 2056
    bne	$a6,$a1,.L0d97feb8
    # Line 2057
    mtc1	$a1,$f14
    b	.L0d97fec0
    lwc1	$f13,1968($a3)
.L0d97feb8:
    cvt.s.w	$f14,$f14
    madd.s	$f13,$f13,$f14,$f15
.L0d97fec0:
    # Line 2059
    lw	$t9,-28512($a4)
    jalr	$t9
    nop
.L0d97fecc:
    ld	$ra,8($sp)
    # Line 2060
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glkonim_EvalPoint2

# Function: __glKonUpdateEvalAttributes
# Declared: Line 2070 (Source lines: 2071-2204)
# Address: 0x0d97fee0 - 0x0d980298 (Size: 952 bytes, Frame: 16)
.globl __glKonUpdateEvalAttributes
.ent __glKonUpdateEvalAttributes
__glKonUpdateEvalAttributes:
    # Line 2071
    lw	$at,1792($a0)
    addiu	$sp,$sp,-16
    lui	$a3,0x1
    lui	$v0,0x11
    dsll32	$at,$at,0x8
    addu	$a2,$a3,$a0
    sd	$ra,8($sp)
    addiu	$v0,$v0,4344
    sd	$gp,0($sp)
    bgez	$at,.L0d980278
    addu	$gp,$t9,$v0
    # Line 2077
    li	$v0,1
    sb	$v0,-28500($a2)
.L0d97ff14:
    # Line 2083
    sb	$zero,-28556($a2)
    # Line 2082
    sb	$zero,-29076($a2)
    # Line 2083
    sb	$zero,-28608($a2)
    # Line 2082
    sb	$zero,-29128($a2)
    # Line 2083
    sb	$zero,-28660($a2)
    # Line 2082
    sb	$zero,-29180($a2)
    # Line 2083
    sb	$zero,-28712($a2)
    # Line 2082
    sb	$zero,-29232($a2)
    # Line 2083
    sb	$zero,-28764($a2)
    # Line 2082
    sb	$zero,-29284($a2)
    # Line 2083
    sb	$zero,-28816($a2)
    # Line 2082
    sb	$zero,-29336($a2)
    # Line 2083
    sb	$zero,-28868($a2)
    # Line 2082
    sb	$zero,-29388($a2)
    # Line 2083
    sb	$zero,-28920($a2)
    # Line 2082
    sb	$zero,-29440($a2)
    # Line 2083
    sb	$zero,-28972($a2)
    # Line 2082
    sb	$zero,-29492($a2)
    # Line 2081
    lw	$a4,1808($a0)
    andi	$v1,$a4,0x80
    beqz	$v1,.L0d97ff80
    # Line 2089
    move	$a3,$zero
    li	$a4,1
    sb	$a4,-29128($a2)
    # Line 2088
    li	$a3,0x8e28
    # Line 2089
    lw	$a4,1808($a0)
    # Line 2088
    addu	$a3,$a0,$a3
.L0d97ff80:
    # Line 2089
    andi	$a5,$a4,0x100
    # Line 2120
    li	$t0,0x8cf0
    # Line 2089
    beqz	$a5,.L0d97ffa0
    # Line 2120
    addu	$t0,$a0,$t0
    # Line 2092
    li	$a3,0x8e5c
    # Line 2093
    li	$a4,1
    sb	$a4,-29076($a2)
    # Line 2092
    addu	$a3,$a0,$a3
.L0d97ffa0:
    # Line 2095
    sw	$a3,-29556($a2)
    lw	$a4,1808($a0)
    andi	$a5,$a4,0x8
    beqz	$a5,.L0d97ffc8
    # Line 2100
    move	$a3,$zero
    li	$a4,1
    sb	$a4,-29336($a2)
    # Line 2099
    li	$a3,0x8d58
    # Line 2100
    lw	$a4,1808($a0)
    # Line 2099
    addu	$a3,$a0,$a3
.L0d97ffc8:
    # Line 2100
    andi	$a5,$a4,0x10
    beqz	$a5,.L0d97ffec
    # Line 2104
    andi	$a5,$a4,0x20
    li	$a4,1
    sb	$a4,-29284($a2)
    # Line 2103
    li	$a3,0x8d8c
    # Line 2104
    lw	$a4,1808($a0)
    # Line 2103
    addu	$a3,$a0,$a3
    # Line 2104
    andi	$a5,$a4,0x20
.L0d97ffec:
    beqz	$a5,.L0d98000c
    # Line 2108
    andi	$a5,$a4,0x40
    li	$a4,1
    sb	$a4,-29336($a2)
    # Line 2107
    li	$a3,0x8d58
    # Line 2108
    lw	$a4,1808($a0)
    # Line 2107
    addu	$a3,$a0,$a3
    # Line 2108
    andi	$a5,$a4,0x40
.L0d98000c:
    beqz	$a5,.L0d980020
    # Line 2112
    li	$a4,1
    # Line 2111
    li	$a3,0x8d8c
    # Line 2112
    sb	$a4,-29284($a2)
    # Line 2111
    addu	$a3,$a0,$a3
.L0d980020:
    # Line 2116
    sw	$zero,-29544($a2)
    # Line 2114
    sw	$a3,-29520($a2)
    # Line 2116
    lw	$a4,1808($a0)
    andi	$a5,$a4,0x2
    beqz	$a5,.L0d980050
    # Line 2119
    li	$a7,1
    sb	$a7,-29440($a2)
    lbu	$a6,3221($a0)
    beqz	$a6,.L0d98004c
    nop
    # Line 2120
    sw	$t0,-29544($a2)
.L0d98004c:
    lw	$a4,1808($a0)
.L0d980050:
    andi	$t1,$a4,0x1
    beqz	$t1,.L0d98006c
    # Line 2125
    li	$t3,1
    sb	$t3,-29492($a2)
    lbu	$t2,3221($a0)
    beqz	$t2,.L0d980280
    # Line 2126
    li	$at,0x8cbc
.L0d98006c:
    # Line 2129
    sw	$zero,-29532($a2)
    # Line 2132
    li	$ra,1
    # Line 2129
    lw	$t8,1808($a0)
    # Line 2169
    li	$a7,1
    # Line 2175
    li	$t3,1
    # Line 2133
    li	$t9,0x8d24
    # Line 2129
    andi	$t8,$t8,0x4
    # Line 2170
    li	$t0,0x8ef8
    # Line 2133
    addu	$t9,$a0,$t9
    # Line 2129
    beqz	$t8,.L0d9800a0
    # Line 2170
    addu	$t0,$a0,$t0
    # Line 2132
    sb	$ra,-29388($a2)
    # Line 2133
    sw	$t9,-29532($a2)
.L0d9800a0:
    lw	$a4,1812($a0)
    andi	$at,$a4,0x80
    beqz	$at,.L0d9800c4
    # Line 2139
    move	$a3,$zero
    li	$a4,1
    sb	$a4,-28608($a2)
    # Line 2138
    li	$a3,0x9030
    # Line 2139
    lw	$a4,1812($a0)
    # Line 2138
    addu	$a3,$a0,$a3
.L0d9800c4:
    # Line 2139
    andi	$a5,$a4,0x100
    beqz	$a5,.L0d9800dc
    # Line 2143
    li	$a4,1
    # Line 2142
    li	$a3,0x9064
    # Line 2143
    sb	$a4,-28556($a2)
    # Line 2142
    addu	$a3,$a0,$a3
.L0d9800dc:
    # Line 2145
    sw	$a3,-29036($a2)
    lw	$a4,1812($a0)
    andi	$a5,$a4,0x8
    beqz	$a5,.L0d980104
    # Line 2150
    move	$a3,$zero
    li	$a4,1
    sb	$a4,-28816($a2)
    # Line 2149
    li	$a3,0x8f60
    # Line 2150
    lw	$a4,1812($a0)
    # Line 2149
    addu	$a3,$a0,$a3
.L0d980104:
    # Line 2150
    andi	$a5,$a4,0x10
    beqz	$a5,.L0d980128
    # Line 2154
    andi	$a5,$a4,0x20
    li	$a4,1
    sb	$a4,-28764($a2)
    # Line 2153
    li	$a3,0x8f94
    # Line 2154
    lw	$a4,1812($a0)
    # Line 2153
    addu	$a3,$a0,$a3
    # Line 2154
    andi	$a5,$a4,0x20
.L0d980128:
    beqz	$a5,.L0d980148
    # Line 2158
    andi	$a5,$a4,0x40
    li	$a4,1
    sb	$a4,-28816($a2)
    # Line 2157
    li	$a3,0x8f60
    # Line 2158
    lw	$a4,1812($a0)
    # Line 2157
    addu	$a3,$a0,$a3
    # Line 2158
    andi	$a5,$a4,0x40
.L0d980148:
    beqz	$a5,.L0d98015c
    # Line 2162
    li	$a4,1
    # Line 2161
    li	$a3,0x8f94
    # Line 2162
    sb	$a4,-28764($a2)
    # Line 2161
    addu	$a3,$a0,$a3
.L0d98015c:
    # Line 2164
    sw	$a3,-29000($a2)
    # Line 2166
    sw	$zero,-29024($a2)
    lw	$a4,1812($a0)
    andi	$a5,$a4,0x2
    beqz	$a5,.L0d980190
    # Line 2170
    andi	$t1,$a4,0x1
    # Line 2169
    sb	$a7,-28920($a2)
    lbu	$a6,3221($a0)
    beqz	$a6,.L0d980188
    nop
    # Line 2170
    sw	$t0,-29024($a2)
.L0d980188:
    lw	$a4,1812($a0)
    andi	$t1,$a4,0x1
.L0d980190:
    beqz	$t1,.L0d9801a8
    nop
    # Line 2175
    sb	$t3,-28972($a2)
    lbu	$t2,3221($a0)
    beqz	$t2,.L0d98028c
    # Line 2176
    li	$v0,0x8ec4
.L0d9801a8:
    # Line 2179
    sw	$zero,-29012($a2)
    lw	$t8,1812($a0)
    andi	$t8,$t8,0x4
    beqz	$t8,.L0d9801cc
    nop
    # Line 2182
    lbu	$ra,-28500($a2)
    li	$t9,1
    beqz	$ra,.L0d980268
    sb	$t9,-28868($a2)
.L0d9801cc:
    # Line 2192
    lwc1	$f0,1972($a0)
    lwc1	$f1,1968($a0)
    lwc1	$f2,1964($a0)
    lw	$ra,1976($a0)
    lwc1	$f3,1956($a0)
    lwc1	$f4,1952($a0)
    lwc1	$f5,1948($a0)
    lw	$at,1960($a0)
    # Line 2186
    lwc1	$f6,1940($a0)
    lwc1	$f7,1936($a0)
    lwc1	$f8,1932($a0)
    lw	$v1,1944($a0)
    li	$a0,40
    sw	$a0,16384($zero)
    sw	$v1,16384($zero)
    swc1	$f8,16384($zero)
    swc1	$f7,16384($zero)
    swc1	$f6,16384($zero)
    # Line 2192
    li	$v0,41
    sw	$v0,16384($zero)
    sw	$at,16384($zero)
    swc1	$f5,16384($zero)
    swc1	$f4,16384($zero)
    swc1	$f3,16384($zero)
    # Line 2202
    # lw $t9, -32732($gp) # &sub_0d980000
    # Line 2192
    sw	$ra,16384($zero)
    swc1	$f2,16384($zero)
    # Line 2202
    addiu	$t9,$t9,-8192
    # Line 2192
    swc1	$f1,16384($zero)
    # Line 2202
    bal __glKonHostMapData2D
    # Line 2192
    swc1	$f0,16384($zero)
    # Line 2203
    # lw $t9, -32732($gp) # &sub_0d980000
    addiu	$t9,$t9,-7312
    bal __glKonHostMapData2D
    nop
    ld	$ra,8($sp)
    # Line 2204
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d980268:
    # Line 2183
    li	$ra,0x8f2c
    addu	$ra,$a0,$ra
    b	.L0d9801cc
    sw	$ra,-29012($a2)
.L0d980278:
    b	.L0d97ff14
    # Line 2079
    sb	$zero,-28500($a2)
.L0d980280:
    # Line 2126
    addu	$at,$a0,$at
    b	.L0d98006c
    sw	$at,-29544($a2)
.L0d98028c:
    # Line 2176
    addu	$v0,$a0,$v0
    b	.L0d9801a8
    sw	$v0,-29024($a2)
.end __glKonUpdateEvalAttributes

# Function: __glkonim_GetMapfv
# Declared: Line 2206 (Source lines: 2207-2295)
# Address: 0x0d9802a0 - 0x0d9807b8 (Size: 1304 bytes, Frame: 16)
.globl __glkonim_GetMapfv
.ent __glkonim_GetMapfv
__glkonim_GetMapfv:
    # Line 2207
    addiu	$sp,$sp,-16
    # Line 2212
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 2207
    lui	$v1,0x11
    sd	$ra,8($sp)
    addiu	$v1,$v1,3384
    sd	$gp,0($sp)
    # Line 2212
    beq	$at,$v0,.L0d980758
    # Line 2207
    addu	$gp,$t9,$v1
    # Line 2219
    sltiu	$a3,$a0,3505
    bnez	$a3,.L0d980328
    sltiu	$a5,$a0,3506
    bnez	$a5,.L0d980370
    # Line 2261
    li	$at,2560
    # Line 2219
    sltiu	$a6,$a0,3510
    bnez	$a6,.L0d980468
    sltiu	$a7,$a0,3511
    bnez	$a7,.L0d980370
    # Line 2261
    li	$at,2560
    # Line 2219
    li	$a5,0x8194
    sltu	$t0,$a0,$a5
    bnez	$t0,.L0d9806bc
    sltiu	$at,$a0,3512
    sltu	$t1,$a5,$a0
    beqz	$t1,.L0d980318
    # Line 2291
    nop	# was lw $t9, -31072($gp) # &__glkon_GetDeformationf
    # Line 2219
    li	$t2,0x8195
    bne	$a0,$t2,.L0d980494
    # Line 2291
    nop	# was lw $t9, -31072($gp) # &__glkon_GetDeformationf
.L0d980318:
    jal	__glkon_GetDeformationf
    nop
    b	.L0d98039c
    ld	$ra,8($sp)
.L0d980328:
    # Line 2219
    sltiu	$a5,$a0,3477
    bnez	$a5,.L0d9803a8
    sltiu	$t3,$a0,3478
    bnez	$t3,.L0d9803e8
    sltiu	$a5,$a0,3480
    bnez	$a5,.L0d9806a0
    sltiu	$t8,$a0,3481
    bnez	$t8,.L0d9803e8
    li	$t9,3504
    beq	$a0,$t9,.L0d980370
    # Line 2261
    li	$at,2560
    b	.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d98035c:
    # Line 2219
    sltiu	$ra,$a0,3507
    bnez	$ra,.L0d9806d8
    li	$v1,3506
    beqz	$a5,.L0d980494
    # Line 2261
    li	$at,2560
.L0d980370:
    beq	$a1,$at,.L0d9804ec
    # Line 2263
    sll	$a7,$a0,0x2
    # Line 2261
    li	$v0,2562
    beq	$a1,$v0,.L0d98070c
    # Line 2275
    sll	$a6,$a0,0x2
    # Line 2261
    li	$v1,2561
    beq	$a1,$v1,.L0d980418
    # Line 2285
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d980398:
    ld	$ra,8($sp)
.L0d98039c:
    # Line 2295
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9803a8:
    # Line 2219
    sltiu	$a6,$a0,3474
    bnez	$a6,.L0d9803d8
    sltiu	$a7,$a0,3473
    sltiu	$a3,$a0,3475
    bnez	$a3,.L0d9803e8
    sltiu	$a6,$a0,3476
    bnez	$a6,.L0d9806f8
    nop
    bnez	$a5,.L0d9803ec
    # Line 2230
    li	$t0,2560
    b	.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9803d8:
    # Line 2219
    bnez	$a7,.L0d980490
    li	$ra,3472
    beqz	$a6,.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9803e8:
    # Line 2230
    li	$t0,2560
.L0d9803ec:
    beq	$a1,$t0,.L0d9805e8
    li	$t1,2562
    beq	$a1,$t1,.L0d98076c
    # Line 2240
    sll	$a7,$a0,0x2
    # Line 2230
    li	$t2,2561
    beq	$a1,$t2,.L0d9804a8
    # Line 2247
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d98039c
    ld	$ra,8($sp)
.L0d980418:
    # Line 2281
    sll	$t3,$a0,0x2
    subu	$t3,$t3,$a0
    sll	$t3,$t3,0x2
    addu	$t3,$t3,$a0
    sll	$t3,$t3,0x2
    lui	$t8,0xfffe
    addu	$t3,$a4,$t3
    addu	$t3,$t3,$t8
    lw	$t8,-14580($t3)
    mtc1	$t8,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,0($a2)
    # Line 2282
    lw	$t3,-14576($t3)
    mtc1	$t3,$f0
    ld	$ra,8($sp)
    cvt.s.w	$f0,$f0
    # Line 2295
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2282
    swc1	$f0,4($a2)
.L0d980468:
    # Line 2219
    sltiu	$a5,$a0,3508
    bnez	$a5,.L0d98035c
    sltiu	$t8,$a0,3509
    bnez	$t8,.L0d980370
    # Line 2261
    li	$at,2560
    # Line 2219
    li	$t9,3509
    beq	$a0,$t9,.L0d980370
    # Line 2261
    li	$at,2560
    b	.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980490:
    # Line 2219
    beq	$a0,$ra,.L0d9803e8
.L0d980494:
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980498:
    jal	__glSetError
    li	$a0,1280
    b	.L0d98039c
    ld	$ra,8($sp)
.L0d9804a8:
    # Line 2244
    sll	$v0,$a0,0x2
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lui	$at,0xfffd
    sll	$v0,$v0,0x2
    ori	$at,$at,0xcb84
    addu	$v0,$a4,$v0
    addu	$at,$at,$v0
    lw	$at,0($at)
    mtc1	$at,$f2
    ld	$ra,8($sp)
    cvt.s.w	$f2,$f2
    # Line 2295
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2244
    swc1	$f2,0($a2)
.L0d9804ec:
    # Line 2263
    subu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a7,$a4,$a7
    lui	$a5,0xfffe
    addu	$a5,$a7,$a5
    lw	$a1,-14576($a5)
    blez	$a1,.L0d98039c
    ld	$ra,8($sp)
    lw	$a0,-14580($a5)
    move	$a6,$zero
.L0d98051c:
    blez	$a0,.L0d9805d0
    nop
    lw	$a1,-14584($a5)
    move	$a4,$zero
    nop
.L0d980530:
    blez	$a1,.L0d9805bc
    nop
    move	$a0,$zero
    nop
.L0d980540:
    # Line 2266
    lw	$at,-14576($a5)
    mult	$at,$a0
    lw	$t9,-14580($a5)
    mflo	$ra
    nop
    addu	$ra,$a6,$ra
    mult	$t9,$ra
    mflo	$t3
    nop
    nop
    mult	$t9,$a6
    mflo	$t8
    nop
    addu	$t8,$a4,$t8
    mult	$a1,$t8
    lw	$t2,-14540($a5)
    addu	$t3,$a4,$t3
    mflo	$t1
    sll	$t3,$t3,0x2
    addu	$t1,$a0,$t1
    addu	$t2,$t2,$t3
    sll	$t1,$t1,0x2
    lwc1	$f3,0($t2)
    addu	$t1,$a2,$t1
    swc1	$f3,0($t1)
    # Line 2265
    lw	$a1,-14584($a5)
    addiu	$a0,$a0,1
    slt	$t0,$a0,$a1
    bnez	$t0,.L0d980540
    nop
    lw	$a0,-14580($a5)
.L0d9805bc:
    # Line 2264
    addiu	$a4,$a4,1
    slt	$v0,$a4,$a0
    bnez	$v0,.L0d980530
    nop
    lw	$a1,-14576($a5)
.L0d9805d0:
    # Line 2263
    addiu	$a6,$a6,1
    slt	$v1,$a6,$a1
    bnez	$v1,.L0d98051c
    nop
    b	.L0d98039c
    ld	$ra,8($sp)
.L0d9805e8:
    # Line 2232
    sll	$a7,$a0,0x2
    subu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$a5,0xfffe
    addu	$a7,$a4,$a7
    addu	$a5,$a7,$a5
    lw	$a1,-13436($a5)
    blez	$a1,.L0d980398
    move	$a6,$a1
    lw	$a1,-13440($a5)
    move	$a4,$zero
.L0d98061c:
    blez	$a1,.L0d980688
    move	$a0,$zero
    nop
    nop
    nop
.L0d980630:
    # Line 2234
    lw	$t8,-13436($a5)
    mult	$t8,$a0
    mflo	$t3
    nop
    nop
    mult	$a1,$a4
    lw	$t2,-13396($a5)
    addu	$t3,$a4,$t3
    mflo	$t1
    sll	$t3,$t3,0x2
    addu	$t1,$a0,$t1
    addu	$t2,$t2,$t3
    sll	$t1,$t1,0x2
    lwc1	$f4,0($t2)
    addu	$t1,$a2,$t1
    swc1	$f4,0($t1)
    # Line 2233
    lw	$a1,-13440($a5)
    addiu	$a0,$a0,1
    slt	$t0,$a0,$a1
    bnez	$t0,.L0d980630
    nop
    lw	$a6,-13436($a5)
.L0d980688:
    # Line 2232
    addiu	$a4,$a4,1
    slt	$t9,$a4,$a6
    bnez	$t9,.L0d98061c
    nop
    b	.L0d98039c
    ld	$ra,8($sp)
.L0d9806a0:
    # Line 2219
    sltiu	$ra,$a0,3479
    bnez	$ra,.L0d9806e8
    li	$a3,3478
    bnez	$a5,.L0d9803ec
    # Line 2230
    li	$t0,2560
    b	.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9806bc:
    # Line 2219
    bnez	$at,.L0d9807a8
    li	$t0,3511
    sltiu	$v0,$a0,3513
    bnez	$v0,.L0d980370
    # Line 2261
    li	$at,2560
    b	.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9806d8:
    # Line 2219
    beq	$a0,$v1,.L0d980370
    # Line 2261
    li	$at,2560
    b	.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9806e8:
    # Line 2219
    beq	$a0,$a3,.L0d9803ec
    # Line 2230
    li	$t0,2560
    b	.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9806f8:
    # Line 2219
    li	$a5,3475
    beq	$a0,$a5,.L0d9803ec
    # Line 2230
    li	$t0,2560
    b	.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d98070c:
    # Line 2275
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    lui	$a7,0xfffe
    addu	$a6,$a4,$a6
    addu	$a6,$a6,$a7
    lwc1	$f8,-14568($a6)
    swc1	$f8,0($a2)
    # Line 2276
    lwc1	$f7,-14564($a6)
    swc1	$f7,4($a2)
    # Line 2277
    lwc1	$f6,-14556($a6)
    ld	$ra,8($sp)
    swc1	$f6,8($a2)
    # Line 2278
    lwc1	$f5,-14552($a6)
    # Line 2295
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2278
    swc1	$f5,12($a2)
.L0d980758:
    # Line 2212
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d98039c
    ld	$ra,8($sp)
.L0d98076c:
    # Line 2240
    subu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$t0,0xfffe
    addu	$a7,$a4,$a7
    addu	$a7,$a7,$t0
    lwc1	$f10,-13424($a7)
    ld	$ra,8($sp)
    swc1	$f10,0($a2)
    # Line 2241
    lwc1	$f9,-13420($a7)
    # Line 2295
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2241
    swc1	$f9,4($a2)
.L0d9807a8:
    # Line 2219
    beq	$a0,$t0,.L0d980370
    # Line 2261
    li	$at,2560
    b	.L0d980498
    # Line 2294
    nop	# was lw $t9, -28616($gp) # &__glSetError
.end __glkonim_GetMapfv

# Function: __glkonim_GetMapdv
# Declared: Line 2299 (Source lines: 2300-2388)
# Address: 0x0d9807c0 - 0x0d980cf8 (Size: 1336 bytes, Frame: 16)
.globl __glkonim_GetMapdv
.ent __glkonim_GetMapdv
__glkonim_GetMapdv:
    # Line 2300
    addiu	$sp,$sp,-16
    # Line 2305
    lw	$at,4120($zero)
    lw	$a4,4112($zero)
    li	$v0,1
    # Line 2300
    lui	$v1,0x11
    sd	$ra,8($sp)
    addiu	$v1,$v1,2072
    sd	$gp,0($sp)
    # Line 2305
    beq	$at,$v0,.L0d980c8c
    # Line 2300
    addu	$gp,$t9,$v1
    # Line 2312
    sltiu	$a3,$a0,3505
    bnez	$a3,.L0d980840
    sltiu	$a5,$a0,3477
    sltiu	$a5,$a0,3506
    bnez	$a5,.L0d980888
    # Line 2354
    li	$at,2560
    # Line 2312
    sltiu	$a6,$a0,3510
    bnez	$a6,.L0d980988
    sltiu	$a7,$a0,3511
    bnez	$a7,.L0d980884
    li	$a5,0x8194
    sltu	$t0,$a0,$a5
    bnez	$t0,.L0d980be0
    sltu	$t1,$a5,$a0
    beqz	$t1,.L0d98082c
    li	$t2,0x8195
    bne	$a0,$t2,.L0d9809b0
.L0d98082c:
    # Line 2384
    nop	# was lw $t9, -31068($gp) # &__glkon_GetDeformationd
    jal	__glkon_GetDeformationd
    nop
    b	.L0d9808b8
    ld	$ra,8($sp)
.L0d980840:
    # Line 2312
    bnez	$a5,.L0d9808c4
    sltiu	$t3,$a0,3478
    bnez	$t3,.L0d980904
    sltiu	$a5,$a0,3480
    bnez	$a5,.L0d980bc4
    sltiu	$t8,$a0,3481
    bnez	$t8,.L0d980904
    li	$t9,3504
    beq	$a0,$t9,.L0d980888
    # Line 2354
    li	$at,2560
    b	.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980870:
    # Line 2312
    sltiu	$ra,$a0,3507
    bnez	$ra,.L0d980bfc
    li	$v1,3506
    beqz	$a5,.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980884:
    # Line 2354
    li	$at,2560
.L0d980888:
    beq	$a1,$at,.L0d980a04
    # Line 2356
    sll	$a7,$a0,0x2
    # Line 2354
    li	$v0,2562
    beq	$a1,$v0,.L0d980c30
    # Line 2368
    sll	$a6,$a0,0x2
    # Line 2354
    li	$v1,2561
    beq	$a1,$v1,.L0d98093c
    # Line 2374
    sll	$t3,$a0,0x2
    # Line 2378
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d9808b4:
    ld	$ra,8($sp)
.L0d9808b8:
    # Line 2388
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9808c4:
    # Line 2312
    sltiu	$a6,$a0,3474
    bnez	$a6,.L0d9808f4
    sltiu	$a7,$a0,3473
    sltiu	$a3,$a0,3475
    bnez	$a3,.L0d980904
    sltiu	$a6,$a0,3476
    bnez	$a6,.L0d980c1c
    nop
    bnez	$a5,.L0d980908
    # Line 2323
    li	$t0,2560
    b	.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9808f4:
    # Line 2312
    bnez	$a7,.L0d9809ac
    li	$ra,3472
    beqz	$a6,.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980904:
    # Line 2323
    li	$t0,2560
.L0d980908:
    beq	$a1,$t0,.L0d980b0c
    # Line 2325
    sll	$a7,$a0,0x2
    # Line 2323
    li	$t1,2562
    beq	$a1,$t1,.L0d980ca0
    # Line 2333
    sll	$a7,$a0,0x2
    # Line 2323
    li	$t2,2561
    beq	$a1,$t2,.L0d9809c4
    # Line 2337
    sll	$v0,$a0,0x2
    # Line 2340
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9808b8
    ld	$ra,8($sp)
.L0d98093c:
    # Line 2374
    subu	$t3,$t3,$a0
    sll	$t3,$t3,0x2
    addu	$t3,$t3,$a0
    sll	$t3,$t3,0x2
    lui	$t8,0xfffe
    addu	$t3,$a4,$t3
    addu	$t3,$t3,$t8
    lw	$t8,-14580($t3)
    mtc1	$t8,$f1
    cvt.d.w	$f1,$f1
    sdc1	$f1,0($a2)
    # Line 2375
    lw	$t3,-14576($t3)
    mtc1	$t3,$f0
    ld	$ra,8($sp)
    # Line 2388
    ld	$gp,0($sp)
    # Line 2375
    cvt.d.w	$f0,$f0
    # Line 2388
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2375
    sdc1	$f0,8($a2)
.L0d980988:
    # Line 2312
    sltiu	$a5,$a0,3508
    bnez	$a5,.L0d980870
    sltiu	$t8,$a0,3509
    bnez	$t8,.L0d980884
    li	$t9,3509
    beq	$a0,$t9,.L0d980888
    # Line 2354
    li	$at,2560
    b	.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9809ac:
    # Line 2312
    beq	$a0,$ra,.L0d980904
.L0d9809b0:
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9809b4:
    jal	__glSetError
    li	$a0,1280
    b	.L0d9808b8
    ld	$ra,8($sp)
.L0d9809c4:
    # Line 2337
    subu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    lui	$at,0xfffd
    sll	$v0,$v0,0x2
    ori	$at,$at,0xcb84
    addu	$v0,$a4,$v0
    addu	$at,$at,$v0
    lw	$at,0($at)
    mtc1	$at,$f2
    ld	$ra,8($sp)
    # Line 2388
    ld	$gp,0($sp)
    # Line 2337
    cvt.d.w	$f2,$f2
    # Line 2388
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2337
    sdc1	$f2,0($a2)
.L0d980a04:
    # Line 2356
    subu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a7,$a4,$a7
    lui	$a5,0xfffe
    addu	$a5,$a7,$a5
    lw	$a1,-14576($a5)
    blez	$a1,.L0d9808b8
    ld	$ra,8($sp)
    lw	$a0,-14580($a5)
    move	$a6,$zero
.L0d980a34:
    blez	$a0,.L0d980af4
    nop
    lw	$a1,-14584($a5)
    move	$a4,$zero
    nop
    nop
    nop
.L0d980a50:
    blez	$a1,.L0d980ae0
    nop
    move	$a0,$zero
    nop
.L0d980a60:
    # Line 2359
    lw	$at,-14576($a5)
    mult	$at,$a0
    lw	$t9,-14580($a5)
    mflo	$ra
    nop
    addu	$ra,$a6,$ra
    mult	$t9,$ra
    mflo	$t3
    nop
    nop
    mult	$t9,$a6
    mflo	$t8
    nop
    addu	$t8,$a4,$t8
    mult	$a1,$t8
    lw	$t2,-14540($a5)
    addu	$t3,$a4,$t3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    mflo	$t1
    lwc1	$f3,0($t2)
    addu	$t1,$a0,$t1
    sll	$t1,$t1,0x3
    cvt.d.s	$f3,$f3
    addu	$t1,$a2,$t1
    sdc1	$f3,0($t1)
    # Line 2358
    lw	$a1,-14584($a5)
    addiu	$a0,$a0,1
    slt	$t0,$a0,$a1
    bnez	$t0,.L0d980a60
    nop
    lw	$a0,-14580($a5)
.L0d980ae0:
    # Line 2357
    addiu	$a4,$a4,1
    slt	$v0,$a4,$a0
    bnez	$v0,.L0d980a50
    nop
    lw	$a1,-14576($a5)
.L0d980af4:
    # Line 2356
    addiu	$a6,$a6,1
    slt	$v1,$a6,$a1
    bnez	$v1,.L0d980a34
    nop
    b	.L0d9808b8
    ld	$ra,8($sp)
.L0d980b0c:
    # Line 2325
    subu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$a5,0xfffe
    addu	$a7,$a4,$a7
    addu	$a5,$a7,$a5
    lw	$a1,-13436($a5)
    blez	$a1,.L0d9808b4
    move	$a6,$a1
    lw	$a1,-13440($a5)
    move	$a4,$zero
.L0d980b3c:
    blez	$a1,.L0d980bac
    move	$a0,$zero
    nop
    nop
    nop
.L0d980b50:
    # Line 2327
    lw	$t8,-13436($a5)
    mult	$t8,$a0
    mflo	$t3
    nop
    nop
    mult	$a1,$a4
    lw	$t2,-13396($a5)
    addu	$t3,$a4,$t3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    mflo	$t1
    lwc1	$f4,0($t2)
    addu	$t1,$a0,$t1
    sll	$t1,$t1,0x3
    cvt.d.s	$f4,$f4
    addu	$t1,$a2,$t1
    sdc1	$f4,0($t1)
    # Line 2326
    lw	$a1,-13440($a5)
    addiu	$a0,$a0,1
    slt	$t0,$a0,$a1
    bnez	$t0,.L0d980b50
    nop
    lw	$a6,-13436($a5)
.L0d980bac:
    # Line 2325
    addiu	$a4,$a4,1
    slt	$t9,$a4,$a6
    bnez	$t9,.L0d980b3c
    nop
    b	.L0d9808b8
    ld	$ra,8($sp)
.L0d980bc4:
    # Line 2312
    sltiu	$ra,$a0,3479
    bnez	$ra,.L0d980c0c
    li	$a3,3478
    bnez	$a5,.L0d980908
    # Line 2323
    li	$t0,2560
    b	.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980be0:
    # Line 2312
    sltiu	$at,$a0,3512
    bnez	$at,.L0d980ce4
    sltiu	$v0,$a0,3513
    bnez	$v0,.L0d980888
    # Line 2354
    li	$at,2560
    b	.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980bfc:
    # Line 2312
    beq	$a0,$v1,.L0d980888
    # Line 2354
    li	$at,2560
    b	.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980c0c:
    # Line 2312
    beq	$a0,$a3,.L0d980908
    # Line 2323
    li	$t0,2560
    b	.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980c1c:
    # Line 2312
    li	$a5,3475
    beq	$a0,$a5,.L0d980908
    # Line 2323
    li	$t0,2560
    b	.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980c30:
    # Line 2368
    subu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a0
    sll	$a6,$a6,0x2
    lui	$a7,0xfffe
    addu	$a6,$a4,$a6
    addu	$a6,$a6,$a7
    lwc1	$f8,-14568($a6)
    cvt.d.s	$f8,$f8
    sdc1	$f8,0($a2)
    # Line 2369
    lwc1	$f7,-14564($a6)
    cvt.d.s	$f7,$f7
    sdc1	$f7,8($a2)
    # Line 2370
    lwc1	$f6,-14556($a6)
    cvt.d.s	$f6,$f6
    sdc1	$f6,16($a2)
    # Line 2371
    lwc1	$f5,-14552($a6)
    ld	$ra,8($sp)
    # Line 2388
    ld	$gp,0($sp)
    # Line 2371
    cvt.d.s	$f5,$f5
    # Line 2388
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2371
    sdc1	$f5,24($a2)
.L0d980c8c:
    # Line 2305
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9808b8
    ld	$ra,8($sp)
.L0d980ca0:
    # Line 2333
    subu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$t0,0xfffe
    addu	$a7,$a4,$a7
    addu	$a7,$a7,$t0
    lwc1	$f10,-13424($a7)
    cvt.d.s	$f10,$f10
    sdc1	$f10,0($a2)
    # Line 2334
    lwc1	$f9,-13420($a7)
    ld	$ra,8($sp)
    # Line 2388
    ld	$gp,0($sp)
    # Line 2334
    cvt.d.s	$f9,$f9
    # Line 2388
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2334
    sdc1	$f9,8($a2)
.L0d980ce4:
    # Line 2312
    li	$t0,3511
    beq	$a0,$t0,.L0d980888
    # Line 2354
    li	$at,2560
    b	.L0d9809b4
    # Line 2387
    nop	# was lw $t9, -28616($gp) # &__glSetError
.end __glkonim_GetMapdv

# Function: __glkonim_GetMapiv
# Declared: Line 2394 (Source lines: 2395-2483)
# Address: 0x0d980d00 - 0x0d981324 (Size: 1572 bytes, Frame: 16)
.globl __glkonim_GetMapiv
.ent __glkonim_GetMapiv
__glkonim_GetMapiv:
    # Line 2395
    addiu	$sp,$sp,-16
    # Line 2399
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 2395
    lui	$v1,0x11
    sd	$ra,8($sp)
    addiu	$v1,$v1,728
    sd	$gp,0($sp)
    # Line 2399
    beq	$at,$v0,.L0d981300
    # Line 2395
    addu	$gp,$t9,$v1
    # Line 2406
    sltiu	$a3,$a0,3505
    bnez	$a3,.L0d980d84
    sltiu	$a4,$a0,3506
    bnez	$a4,.L0d980dd4
    sltiu	$a6,$a0,3510
    bnez	$a6,.L0d980e78
    sltiu	$a4,$a0,3508
    sltiu	$a7,$a0,3511
    bnez	$a7,.L0d980dd4
    li	$a4,0x8194
    sltu	$t0,$a0,$a4
    bnez	$t0,.L0d9812b4
    sltiu	$a6,$a0,3512
    sltu	$t1,$a4,$a0
    beqz	$t1,.L0d980d74
    # Line 2479
    nop	# was lw $t9, -31064($gp) # &__glkon_GetDeformationi
    # Line 2406
    li	$t2,0x8195
    bne	$a0,$t2,.L0d980ea4
    # Line 2479
    nop	# was lw $t9, -31064($gp) # &__glkon_GetDeformationi
.L0d980d74:
    jal	__glkon_GetDeformationi
    nop
    b	.L0d980e00
    ld	$ra,8($sp)
.L0d980d84:
    # Line 2406
    sltiu	$a4,$a0,3477
    bnez	$a4,.L0d980e0c
    sltiu	$a6,$a0,3474
    sltiu	$t3,$a0,3478
    bnez	$t3,.L0d980e48
    # Line 2417
    li	$t0,2560
    # Line 2406
    sltiu	$a4,$a0,3480
    bnez	$a4,.L0d981130
    sltiu	$at,$a0,3479
    sltiu	$t8,$a0,3481
    bnez	$t8,.L0d980e48
    # Line 2417
    li	$t0,2560
    # Line 2406
    li	$t9,3504
    beq	$a0,$t9,.L0d980dd8
    # Line 2448
    li	$at,2560
    b	.L0d980ea8
    # Line 2482
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980dc8:
    # Line 2406
    bnez	$ra,.L0d9812d0
    li	$t0,3506
    beqz	$a4,.L0d980ea4
.L0d980dd4:
    # Line 2448
    li	$at,2560
.L0d980dd8:
    beq	$a1,$at,.L0d980f30
    # Line 2450
    sll	$t0,$a0,0x2
    # Line 2448
    li	$v0,2562
    beq	$a1,$v0,.L0d981148
    li	$v1,2561
    beq	$a1,$v1,.L0d980eb8
    # Line 2473
    nop	# was lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
.L0d980dfc:
    ld	$ra,8($sp)
.L0d980e00:
    # Line 2483
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d980e0c:
    # Line 2406
    bnez	$a6,.L0d980e34
    sltiu	$a3,$a0,3475
    bnez	$a3,.L0d980e44
    sltiu	$a6,$a0,3476
    bnez	$a6,.L0d9812f0
    li	$t2,3475
    bnez	$a4,.L0d980e48
    # Line 2417
    li	$t0,2560
    b	.L0d980ea8
    # Line 2482
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980e34:
    # Line 2406
    sltiu	$a7,$a0,3473
    bnez	$a7,.L0d980e9c
    li	$t9,3472
    beqz	$a6,.L0d980ea4
.L0d980e44:
    # Line 2417
    li	$t0,2560
.L0d980e48:
    beq	$a1,$t0,.L0d981054
    li	$t1,2562
    beq	$a1,$t1,.L0d98122c
    # Line 2427
    sll	$a4,$a0,0x2
    # Line 2417
    li	$t2,2561
    beq	$a1,$t2,.L0d980ef8
    # Line 2431
    sll	$v1,$a0,0x2
    # Line 2434
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d980e00
    ld	$ra,8($sp)
.L0d980e78:
    # Line 2406
    bnez	$a4,.L0d980dc8
    sltiu	$ra,$a0,3507
    sltiu	$t3,$a0,3509
    bnez	$t3,.L0d980dd4
    li	$t8,3509
    beq	$a0,$t8,.L0d980dd8
    # Line 2448
    li	$at,2560
    b	.L0d980ea8
    # Line 2482
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d980e9c:
    # Line 2406
    beq	$a0,$t9,.L0d980e48
    # Line 2417
    li	$t0,2560
.L0d980ea4:
    # Line 2482
    # lw $t9, -28616($gp) # &__glSetError
.L0d980ea8:
    jal	__glSetError
    li	$a0,1280
    b	.L0d980e00
    ld	$ra,8($sp)
.L0d980eb8:
    # Line 2469
    sll	$at,$a0,0x2
    subu	$at,$at,$a0
    sll	$at,$at,0x2
    addu	$at,$at,$a0
    sll	$at,$at,0x2
    # Line 2483
    ld	$gp,0($sp)
    # Line 2469
    lui	$v0,0xfffe
    addu	$at,$a5,$at
    ld	$ra,8($sp)
    addu	$at,$at,$v0
    lw	$v0,-14580($at)
    sw	$v0,0($a2)
    # Line 2470
    lw	$at,-14576($at)
    # Line 2483
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2470
    sw	$at,4($a2)
.L0d980ef8:
    # Line 2431
    subu	$v1,$v1,$a0
    sll	$v1,$v1,0x2
    addu	$v1,$v1,$a0
    lui	$v0,0xfffd
    sll	$v1,$v1,0x2
    ld	$ra,8($sp)
    ori	$v0,$v0,0xcb84
    addu	$v1,$a5,$v1
    # Line 2483
    ld	$gp,0($sp)
    # Line 2431
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    # Line 2483
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2431
    sw	$v0,0($a2)
.L0d980f30:
    # Line 2450
    subu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    addu	$t0,$a5,$t0
    lui	$a4,0xfffe
    addu	$a4,$t0,$a4
    lw	$a1,-14576($a4)
    blez	$a1,.L0d980e00
    ld	$ra,8($sp)
    ldc1	$f7,_lit8_3fe0000000000000
    ldc1	$f8,_lit8_bfe0000000000000
    dmtc1	$zero,$f6
    move	$a7,$zero
    b	.L0d980f84
    lw	$a5,-14580($a4)
.L0d980f70:
    # Line 2451
    lw	$a1,-14576($a4)
.L0d980f74:
    # Line 2450
    addiu	$a7,$a7,1
    slt	$t1,$a7,$a1
    beqz	$t1,.L0d980e00
    ld	$ra,8($sp)
.L0d980f84:
    blez	$a5,.L0d980f74
    nop
    lw	$a6,-14584($a4)
    b	.L0d980fb4
    move	$a1,$zero
    nop
    nop
.L0d980fa0:
    # Line 2452
    lw	$a5,-14580($a4)
.L0d980fa4:
    # Line 2451
    addiu	$a1,$a1,1
    slt	$t2,$a1,$a5
    beqz	$t2,.L0d980f70
    nop
.L0d980fb4:
    # Line 2450
    blez	$a6,.L0d980fa4
    move	$a0,$zero
    b	.L0d981008
    lw	$v1,-14576($a4)
.L0d980fc4:
    # Line 2453
    add.d	$f5,$f4,$f7
.L0d980fc8:
    mflo	$t9
    nop
    addu	$t9,$a1,$t9
    mult	$a6,$t9
    mflo	$t8
    addu	$t8,$a0,$t8
    sll	$t8,$t8,0x2
    trunc.w.d	$f0,$f5
    addu	$t8,$a2,$t8
    swc1	$f0,0($t8)
    # Line 2452
    lw	$a6,-14584($a4)
    addiu	$a0,$a0,1
    slt	$t3,$a0,$a6
    beqz	$t3,.L0d980fa0
    nop
    # Line 2450
    lw	$v1,-14576($a4)
.L0d981008:
    mult	$v1,$a0
    lw	$a5,-14580($a4)
    mflo	$v0
    nop
    addu	$v0,$a7,$v0
    mult	$a5,$v0
    mflo	$at
    lw	$ra,-14540($a4)
    addu	$at,$a1,$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f4,0($ra)
    cvt.d.s	$f4,$f4
    c.lt.d	$f6,$f4
    bc1t	.L0d980fc4
    # Line 2453
    mult	$a5,$a7
    sll	$zero,$zero,0x2
    b	.L0d980fc8
    add.d	$f5,$f4,$f8
.L0d981054:
    # Line 2419
    sll	$t0,$a0,0x2
    subu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$a0
    sll	$t0,$t0,0x2
    lui	$a4,0xfffe
    addu	$t0,$a5,$t0
    addu	$a4,$t0,$a4
    lw	$a1,-13436($a4)
    blez	$a1,.L0d980dfc
    move	$a6,$a1
    ldc1	$f7,_lit8_3fe0000000000000
    ldc1	$f8,_lit8_bfe0000000000000
    dmtc1	$zero,$f6
    move	$a1,$zero
    b	.L0d9810ac
    lw	$a5,-13440($a4)
.L0d981098:
    # Line 2420
    lw	$a6,-13436($a4)
.L0d98109c:
    # Line 2419
    addiu	$a1,$a1,1
    slt	$t1,$a1,$a6
    beqz	$t1,.L0d981128
    nop
.L0d9810ac:
    blez	$a5,.L0d98109c
    nop
    b	.L0d9810ec
    move	$a0,$zero
.L0d9810bc:
    # Line 2421
    add.d	$f4,$f5,$f7
.L0d9810c0:
    mflo	$t3
    addu	$t3,$a0,$t3
    sll	$t3,$t3,0x2
    trunc.w.d	$f5,$f4
    addu	$t3,$a2,$t3
    swc1	$f5,0($t3)
    # Line 2420
    lw	$a5,-13440($a4)
    addiu	$a0,$a0,1
    slt	$t2,$a0,$a5
    beqz	$t2,.L0d981098
    nop
.L0d9810ec:
    # Line 2419
    lw	$ra,-13436($a4)
    mult	$ra,$a0
    mflo	$t9
    lw	$t8,-13396($a4)
    addu	$t9,$a1,$t9
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f5,0($t8)
    cvt.d.s	$f5,$f5
    c.lt.d $f6,$f5
    bc1t .L0d9810bc
    # Line 2421
    mult	$a5,$a1
    sll	$zero,$zero,0x2
    b	.L0d9810c0
    add.d	$f4,$f5,$f8
.L0d981128:
    b	.L0d980e00
    ld	$ra,8($sp)
.L0d981130:
    # Line 2406
    bnez	$at,.L0d9812e0
    li	$t1,3478
    bnez	$a4,.L0d980e48
    # Line 2417
    li	$t0,2560
    b	.L0d980ea8
    # Line 2482
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d981148:
    # Line 2463
    sll	$a4,$a0,0x2
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a5,$a4
    lui	$a6,0xfffe
    addu	$a4,$a4,$a6
    lwc1	$f5,-14568($a4)
    dmtc1	$zero,$f6
    cvt.d.s	$f5,$f5
    c.lt.d $f6,$f5
    bc1f .L0d98118c
    ldc1	$f4,_lit8_bfe0000000000000
    ldc1	$f4,_lit8_3fe0000000000000
    b	.L0d981190
    add.d	$f4,$f5,$f4
.L0d98118c:
    add.d	$f4,$f5,$f4
.L0d981190:
    trunc.w.d	$f7,$f4
    swc1	$f7,0($a2)
    lwc1	$f5,-14564($a4)
    cvt.d.s	$f5,$f5
    c.lt.d $f6,$f5
    bc1f .L0d9811b8
    ld	$ra,8($sp)
    # Line 2464
    ldc1	$f4,_lit8_3fe0000000000000
    b	.L0d9811c0
    add.d	$f4,$f5,$f4
.L0d9811b8:
    ldc1	$f4,_lit8_bfe0000000000000
    add.d	$f4,$f5,$f4
.L0d9811c0:
    trunc.w.d	$f7,$f4
    swc1	$f7,4($a2)
    lwc1	$f5,-14556($a4)
    cvt.d.s	$f5,$f5
    c.lt.d $f6,$f5
    bc1f .L0d9811e8
    # Line 2465
    ldc1	$f4,_lit8_bfe0000000000000
    ldc1	$f4,_lit8_3fe0000000000000
    b	.L0d9811ec
    add.d	$f4,$f5,$f4
.L0d9811e8:
    add.d	$f4,$f5,$f4
.L0d9811ec:
    trunc.w.d	$f7,$f4
    swc1	$f7,8($a2)
    lwc1	$f5,-14552($a4)
    cvt.d.s	$f5,$f5
    c.lt.d $f6,$f5
    bc1f .L0d981214
    # Line 2466
    ldc1	$f4,_lit8_bfe0000000000000
    ldc1	$f4,_lit8_3fe0000000000000
    b	.L0d981218
    add.d	$f4,$f5,$f4
.L0d981214:
    add.d	$f4,$f5,$f4
.L0d981218:
    # Line 2483
    ld	$gp,0($sp)
    # Line 2466
    trunc.w.d	$f5,$f4
    # Line 2483
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2466
    swc1	$f5,12($a2)
.L0d98122c:
    # Line 2427
    subu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a0
    sll	$a4,$a4,0x2
    addu	$a4,$a5,$a4
    lui	$a6,0xfffe
    addu	$a4,$a4,$a6
    lwc1	$f5,-13424($a4)
    dmtc1	$zero,$f6
    cvt.d.s	$f5,$f5
    c.lt.d $f6,$f5
    bc1f .L0d98126c
    ldc1	$f4,_lit8_bfe0000000000000
    ldc1	$f4,_lit8_3fe0000000000000
    b	.L0d981270
    add.d	$f4,$f5,$f4
.L0d98126c:
    add.d	$f4,$f5,$f4
.L0d981270:
    trunc.w.d	$f7,$f4
    swc1	$f7,0($a2)
    lwc1	$f5,-13420($a4)
    cvt.d.s	$f5,$f5
    c.lt.d $f6,$f5
    bc1f .L0d981298
    ld	$ra,8($sp)
    # Line 2428
    ldc1	$f4,_lit8_3fe0000000000000
    b	.L0d9812a0
    add.d	$f4,$f5,$f4
.L0d981298:
    ldc1	$f4,_lit8_bfe0000000000000
    add.d	$f4,$f5,$f4
.L0d9812a0:
    # Line 2483
    ld	$gp,0($sp)
    # Line 2428
    trunc.w.d	$f5,$f4
    # Line 2483
    addiu	$sp,$sp,16
    jr	$ra
    # Line 2428
    swc1	$f5,4($a2)
.L0d9812b4:
    # Line 2406
    bnez	$a6,.L0d981314
    li	$t3,3511
    sltiu	$a7,$a0,3513
    bnez	$a7,.L0d980dd8
    # Line 2448
    li	$at,2560
    b	.L0d980ea8
    # Line 2482
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9812d0:
    # Line 2406
    beq	$a0,$t0,.L0d980dd8
    # Line 2448
    li	$at,2560
    b	.L0d980ea8
    # Line 2482
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9812e0:
    # Line 2406
    beq	$a0,$t1,.L0d980e48
    # Line 2417
    li	$t0,2560
    b	.L0d980ea8
    # Line 2482
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d9812f0:
    # Line 2406
    beq	$a0,$t2,.L0d980e48
    # Line 2417
    li	$t0,2560
    b	.L0d980ea8
    # Line 2482
    nop	# was lw $t9, -28616($gp) # &__glSetError
.L0d981300:
    # Line 2399
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d980e00
    ld	$ra,8($sp)
.L0d981314:
    # Line 2406
    beq	$a0,$t3,.L0d980dd8
    # Line 2448
    li	$at,2560
    b	.L0d980ea8
    # Line 2482
    nop	# was lw $t9, -28616($gp) # &__glSetError
.end __glkonim_GetMapiv

.late_rodata
jtbl_0da802b8:
    .word .L0d979a14
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9799a4
    .word .L0d9799a4
    .word .L0d979790
    .word .L0d9797c8
    .word .L0d9797c8
    .word .L0d9797c8
    .word .L0d9797c8
    .word .L0d9797c8
    .word .L0d9797c8
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d9797bc
    .word .L0d979934
    .word .L0d979934
    .word .L0d9798cc
    .word .L0d97984c
    .word .L0d97984c
    .word .L0d97984c
    .word .L0d97984c
    .word .L0d97984c
    .word .L0d97984c
jtbl_0da8039c:
    .word .L0d979d78
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979d18
    .word .L0d979d18
    .word .L0d979ce8
    .word .L0d979c90
    .word .L0d979c90
    .word .L0d979c90
    .word .L0d979c90
    .word .L0d979ae0
    .word .L0d979ae0
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979ad4
    .word .L0d979c2c
    .word .L0d979c2c
    .word .L0d979ac0
    .word .L0d979bd8
    .word .L0d979bd8
    .word .L0d979bd8
    .word .L0d979bd8
    .word .L0d979b5c
    .word .L0d979b5c
jtbl_0da80480:
    .word .L0d97a190
    .word .L0d97a200
    .word .L0d97b924
    .word .L0d97b8dc
    .word .L0d97b864
    .word .L0d97b7bc
    .word .L0d97b6d4
    .word .L0d97b5b0
    .word .L0d97b43c
    .word .L0d97b274
    .word .L0d97b050
    .word .L0d97adb8
    .word .L0d979ea4
    .word .L0d97aa54
    .word .L0d97a678
    .word .L0d97a208

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4008000000000000:
    .word 0x40080000, 0x00000000
_lit8_4010000000000000:
    .word 0x40100000, 0x00000000
_lit8_4014000000000000:
    .word 0x40140000, 0x00000000
_lit8_4018000000000000:
    .word 0x40180000, 0x00000000
_lit8_401c000000000000:
    .word 0x401c0000, 0x00000000
_lit8_4020000000000000:
    .word 0x40200000, 0x00000000
_lit8_4022000000000000:
    .word 0x40220000, 0x00000000
_lit8_4024000000000000:
    .word 0x40240000, 0x00000000
_lit8_4026000000000000:
    .word 0x40260000, 0x00000000
_lit8_4028000000000000:
    .word 0x40280000, 0x00000000
_lit8_402a000000000000:
    .word 0x402a0000, 0x00000000
_lit8_402c000000000000:
    .word 0x402c0000, 0x00000000
_lit8_402e000000000000:
    .word 0x402e0000, 0x00000000
_lit8_4032000000000000:
    .word 0x40320000, 0x00000000
_lit8_4034000000000000:
    .word 0x40340000, 0x00000000
_lit8_4035000000000000:
    .word 0x40350000, 0x00000000
_lit8_4038000000000000:
    .word 0x40380000, 0x00000000
_lit8_403b000000000000:
    .word 0x403b0000, 0x00000000
_lit8_403c000000000000:
    .word 0x403c0000, 0x00000000
_lit8_4040000000000000:
    .word 0x40400000, 0x00000000
_lit8_4041800000000000:
    .word 0x40418000, 0x00000000
_lit8_4042000000000000:
    .word 0x40420000, 0x00000000
_lit8_4044000000000000:
    .word 0x40440000, 0x00000000
_lit8_4045000000000000:
    .word 0x40450000, 0x00000000
_lit8_4046000000000000:
    .word 0x40460000, 0x00000000
_lit8_4046800000000000:
    .word 0x40468000, 0x00000000
_lit8_4048000000000000:
    .word 0x40480000, 0x00000000
_lit8_4049000000000000:
    .word 0x40490000, 0x00000000
_lit8_404b000000000000:
    .word 0x404b0000, 0x00000000
_lit8_404b800000000000:
    .word 0x404b8000, 0x00000000
_lit8_404c000000000000:
    .word 0x404c0000, 0x00000000
_lit8_404e000000000000:
    .word 0x404e0000, 0x00000000
_lit8_4050400000000000:
    .word 0x40504000, 0x00000000
_lit8_4050800000000000:
    .word 0x40508000, 0x00000000
_lit8_4051800000000000:
    .word 0x40518000, 0x00000000
_lit8_4052000000000000:
    .word 0x40520000, 0x00000000
_lit8_4053400000000000:
    .word 0x40534000, 0x00000000
_lit8_4053800000000000:
    .word 0x40538000, 0x00000000
_lit8_4055000000000000:
    .word 0x40550000, 0x00000000
_lit8_4056000000000000:
    .word 0x40560000, 0x00000000
_lit8_4056800000000000:
    .word 0x40568000, 0x00000000
_lit8_4056c00000000000:
    .word 0x4056c000, 0x00000000
_lit8_4058000000000000:
    .word 0x40580000, 0x00000000
_lit8_4059000000000000:
    .word 0x40590000, 0x00000000
_lit8_405a000000000000:
    .word 0x405a0000, 0x00000000
_lit8_405b000000000000:
    .word 0x405b0000, 0x00000000
_lit8_405b800000000000:
    .word 0x405b8000, 0x00000000
_lit8_405d400000000000:
    .word 0x405d4000, 0x00000000
_lit8_405e000000000000:
    .word 0x405e0000, 0x00000000
_lit8_405f800000000000:
    .word 0x405f8000, 0x00000000
_lit8_4060400000000000:
    .word 0x40604000, 0x00000000
_lit8_4060e00000000000:
    .word 0x4060e000, 0x00000000
_lit8_4061800000000000:
    .word 0x40618000, 0x00000000
_lit8_4062000000000000:
    .word 0x40620000, 0x00000000
_lit8_4062c00000000000:
    .word 0x4062c000, 0x00000000
_lit8_4063400000000000:
    .word 0x40634000, 0x00000000
_lit8_4064a00000000000:
    .word 0x4064a000, 0x00000000
_lit8_4065000000000000:
    .word 0x40650000, 0x00000000
_lit8_4066800000000000:
    .word 0x40668000, 0x00000000
_lit8_4068600000000000:
    .word 0x40686000, 0x00000000
_lit8_406a400000000000:
    .word 0x406a4000, 0x00000000
_lit8_406b800000000000:
    .word 0x406b8000, 0x00000000
_lit8_406c200000000000:
    .word 0x406c2000, 0x00000000
_lit8_406ce00000000000:
    .word 0x406ce000, 0x00000000
_lit8_406e000000000000:
    .word 0x406e0000, 0x00000000
_lit8_406f800000000000:
    .word 0x406f8000, 0x00000000
_lit8_4070400000000000:
    .word 0x40704000, 0x00000000
_lit8_4070800000000000:
    .word 0x40708000, 0x00000000
_lit8_4070e00000000000:
    .word 0x4070e000, 0x00000000
_lit8_4071100000000000:
    .word 0x40711000, 0x00000000
_lit8_4071300000000000:
    .word 0x40713000, 0x00000000
_lit8_4071e00000000000:
    .word 0x4071e000, 0x00000000
_lit8_4072600000000000:
    .word 0x40726000, 0x00000000
_lit8_4073800000000000:
    .word 0x40738000, 0x00000000
_lit8_4074a00000000000:
    .word 0x4074a000, 0x00000000
_lit8_4075000000000000:
    .word 0x40750000, 0x00000000
_lit8_4076800000000000:
    .word 0x40768000, 0x00000000
_lit8_4076c00000000000:
    .word 0x4076c000, 0x00000000
_lit8_4078600000000000:
    .word 0x40786000, 0x00000000
_lit8_4078800000000000:
    .word 0x40788000, 0x00000000
_lit8_4078c00000000000:
    .word 0x4078c000, 0x00000000
_lit8_407a400000000000:
    .word 0x407a4000, 0x00000000
_lit8_407c700000000000:
    .word 0x407c7000, 0x00000000
_lit8_407ce00000000000:
    .word 0x407ce000, 0x00000000
_lit8_407d400000000000:
    .word 0x407d4000, 0x00000000
_lit8_407ea00000000000:
    .word 0x407ea000, 0x00000000
_lit8_407ef00000000000:
    .word 0x407ef000, 0x00000000
_lit8_407f800000000000:
    .word 0x407f8000, 0x00000000
_lit8_4081100000000000:
    .word 0x40811000, 0x00000000
_lit8_4081300000000000:
    .word 0x40813000, 0x00000000
_lit8_4083800000000000:
    .word 0x40838000, 0x00000000
_lit8_4083b00000000000:
    .word 0x4083b000, 0x00000000
_lit8_4083e80000000000:
    .word 0x4083e800, 0x00000000
_lit8_4084a00000000000:
    .word 0x4084a000, 0x00000000
_lit8_4086580000000000:
    .word 0x40865800, 0x00000000
_lit8_4086c00000000000:
    .word 0x4086c000, 0x00000000
_lit8_4088600000000000:
    .word 0x40886000, 0x00000000
_lit8_4088800000000000:
    .word 0x40888000, 0x00000000
_lit8_4088c00000000000:
    .word 0x4088c000, 0x00000000
_lit8_4089980000000000:
    .word 0x40899800, 0x00000000
_lit8_408ad00000000000:
    .word 0x408ad000, 0x00000000
_lit8_408b800000000000:
    .word 0x408b8000, 0x00000000
_lit8_408c700000000000:
    .word 0x408c7000, 0x00000000
_lit8_408ce00000000000:
    .word 0x408ce000, 0x00000000
_lit8_408ea00000000000:
    .word 0x408ea000, 0x00000000
_lit8_408ef00000000000:
    .word 0x408ef000, 0x00000000
_lit8_408f480000000000:
    .word 0x408f4800, 0x00000000
_lit8_4091300000000000:
    .word 0x40913000, 0x00000000
_lit8_4091e00000000000:
    .word 0x4091e000, 0x00000000
_lit8_4092480000000000:
    .word 0x40924800, 0x00000000
_lit8_4092600000000000:
    .word 0x40926000, 0x00000000
_lit8_40941c0000000000:
    .word 0x40941c00, 0x00000000
_lit8_4094a00000000000:
    .word 0x4094a000, 0x00000000
_lit8_4095540000000000:
    .word 0x40955400, 0x00000000
_lit8_4096580000000000:
    .word 0x40965800, 0x00000000
_lit8_4096c00000000000:
    .word 0x4096c000, 0x00000000
_lit8_4097340000000000:
    .word 0x40973400, 0x00000000
_lit8_4098600000000000:
    .word 0x40986000, 0x00000000
_lit8_4099980000000000:
    .word 0x40999800, 0x00000000
_lit8_409ad00000000000:
    .word 0x409ad000, 0x00000000
_lit8_409c700000000000:
    .word 0x409c7000, 0x00000000
_lit8_409ddc0000000000:
    .word 0x409ddc00, 0x00000000
_lit8_409f480000000000:
    .word 0x409f4800, 0x00000000
_lit8_40a0c20000000000:
    .word 0x40a0c200, 0x00000000
_lit8_40a1100000000000:
    .word 0x40a11000, 0x00000000
_lit8_40a3e80000000000:
    .word 0x40a3e800, 0x00000000
_lit8_40a41c0000000000:
    .word 0x40a41c00, 0x00000000
_lit8_40a6580000000000:
    .word 0x40a65800, 0x00000000
_lit8_40a7760000000000:
    .word 0x40a77600, 0x00000000
_lit8_40a8e20000000000:
    .word 0x40a8e200, 0x00000000
_lit8_40aad00000000000:
    .word 0x40aad000, 0x00000000
_lit8_40ac700000000000:
    .word 0x40ac7000, 0x00000000
_lit8_40af480000000000:
    .word 0x40af4800, 0x00000000
_lit8_40b38d0000000000:
    .word 0x40b38d00, 0x00000000
_lit8_40b5540000000000:
    .word 0x40b55400, 0x00000000
_lit8_40b7760000000000:
    .word 0x40b77600, 0x00000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit8_c008000000000000:
    .word 0xc0080000, 0x00000000
_lit8_c010000000000000:
    .word 0xc0100000, 0x00000000
_lit8_c014000000000000:
    .word 0xc0140000, 0x00000000
_lit8_c018000000000000:
    .word 0xc0180000, 0x00000000
_lit8_c01c000000000000:
    .word 0xc01c0000, 0x00000000
_lit8_c020000000000000:
    .word 0xc0200000, 0x00000000
_lit8_c022000000000000:
    .word 0xc0220000, 0x00000000
_lit8_c024000000000000:
    .word 0xc0240000, 0x00000000
_lit8_c026000000000000:
    .word 0xc0260000, 0x00000000
_lit8_c028000000000000:
    .word 0xc0280000, 0x00000000
_lit8_c02a000000000000:
    .word 0xc02a0000, 0x00000000
_lit8_c02e000000000000:
    .word 0xc02e0000, 0x00000000
_lit8_c034000000000000:
    .word 0xc0340000, 0x00000000
_lit8_c035000000000000:
    .word 0xc0350000, 0x00000000
_lit8_c03c000000000000:
    .word 0xc03c0000, 0x00000000
_lit8_c041800000000000:
    .word 0xc0418000, 0x00000000
_lit8_c042000000000000:
    .word 0xc0420000, 0x00000000
_lit8_c046800000000000:
    .word 0xc0468000, 0x00000000
_lit8_c04b800000000000:
    .word 0xc04b8000, 0x00000000
_lit8_c04c000000000000:
    .word 0xc04c0000, 0x00000000
_lit8_c051800000000000:
    .word 0xc0518000, 0x00000000
_lit8_c055000000000000:
    .word 0xc0550000, 0x00000000
_lit8_c05e000000000000:
    .word 0xc05e0000, 0x00000000
_lit8_c05f800000000000:
    .word 0xc05f8000, 0x00000000
_lit8_c064a00000000000:
    .word 0xc064a000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_41200000:
    .word 0x41200000
_lit_41a00000:
    .word 0x41a00000
_lit_420c0000:
    .word 0x420c0000
_lit_42600000:
    .word 0x42600000

