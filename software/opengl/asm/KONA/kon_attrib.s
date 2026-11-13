# Source: ../KONA/kon_attrib.c
# Category: KONA
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../KONA/kon_attrib.c
# Total Functions: 11

.text

# Function: __glkonim_ClearColor
# Declared: Line 25 (Source lines: 25-41)
# Address: 0x0d95d6a0 - 0x0d95d764 (Size: 196 bytes, Frame: 16)
.globl __glkonim_ClearColor
.ent __glkonim_ClearColor
__glkonim_ClearColor:
    # Line 26
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 25
    lui	$at,0x13
    # Line 26
    lw	$a1,4112($zero)
    # Line 25
    addiu	$sp,$sp,-16
    addiu	$at,$at,14648
    sd	$gp,0($sp)
    # Line 26
    beq	$v0,$v1,.L0d95d74c
    # Line 25
    addu	$gp,$t9,$at
    # Line 28
    lwc1	$f5,3544($a1)
    mtc1	$zero,$f2
    # Line 35
    mov.s	$f0,$f5
    # Line 33
    mov.s	$f1,$f5
    # Line 31
    mov.s	$f3,$f5
    # Line 28
    c.lt.s $f12,$f2
    # Line 29
    mov.s	$f4,$f5
    # Line 30
    c.lt.s $f13,$f2
    # Line 32
    c.lt.s $f14,$f2
    # Line 28
    movt.s	$f12,$f2,$fcc5
    # Line 34
    c.lt.s $f15,$f2
    # Line 30
    movt.s	$f13,$f2,$fcc6
    # Line 32
    movt.s	$f14,$f2,$fcc7
    # Line 28
    c.lt.s $f5,$f12
    # Line 41
    ld	$gp,0($sp)
    # Line 34
    movf.s	$f2,$f15,$fcc4
    # Line 30
    c.lt.s $f5,$f13
    # Line 37
    li	$v0,29
    sw	$v0,16384($zero)
    # Line 32
    c.lt.s $f5,$f14
    movf.s	$f4,$f12,$fcc3
    # Line 34
    c.lt.s	$f5,$f2
    movf.s	$f3,$f13,$fcc2
    # Line 37
    swc1	$f4,16384($zero)
    movf.s	$f1,$f14,$fcc1
    # Line 38
    swc1	$f3,16384($zero)
    movf.s	$f0,$f2,$fcc0
    # Line 39
    swc1	$f1,16384($zero)
    # Line 41
    addiu	$sp,$sp,16
    jr	$ra
    # Line 40
    swc1	$f0,16384($zero)
.L0d95d740:
    # Line 41
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95d74c:
    # Line 26
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95d740
    ld	$ra,8($sp)
.end __glkonim_ClearColor

# Function: __glkonim_ClearAccum
# Declared: Line 48 (Source lines: 48-64)
# Address: 0x0d95d770 - 0x0d95d82c (Size: 188 bytes, Frame: 16)
.globl __glkonim_ClearAccum
.ent __glkonim_ClearAccum
__glkonim_ClearAccum:
    # Line 48
    lw	$v0,4120($zero)
    li	$v1,1
    lui	$at,0x13
    addiu	$sp,$sp,-16
    addiu	$at,$at,14440
    sd	$gp,0($sp)
    beq	$v0,$v1,.L0d95d814
    addu	$gp,$t9,$at
    # Line 60
    lwc1	$f2,_lit_bf800000
    # Line 62
    c.lt.s $f14,$f2
    # Line 61
    c.lt.s $f13,$f2
    # Line 60
    c.lt.s $f12,$f2
    # Line 62
    movt.s	$f14,$f2,$fcc7
    # Line 63
    c.lt.s $f15,$f2
    # Line 61
    movt.s	$f13,$f2,$fcc6
    # Line 60
    lwc1	$f0,_lit_3f800000
    movt.s	$f12,$f2,$fcc5
    # Line 63
    movf.s	$f2,$f15,$fcc4
    # Line 62
    mov.s	$f1,$f14
    # Line 60
    mov.s	$f4,$f12
    c.lt.s $f0,$f12
    # Line 64
    ld	$gp,0($sp)
    # Line 61
    mov.s	$f3,$f13
    c.lt.s $f0,$f13
    # Line 60
    li	$v0,27
    sw	$v0,16384($zero)
    # Line 62
    c.lt.s $f0,$f14
    # Line 60
    movt.s	$f4,$f0,$fcc3
    # Line 63
    c.lt.s	$f0,$f2
    # Line 61
    movt.s	$f3,$f0,$fcc2
    # Line 60
    swc1	$f4,16384($zero)
    # Line 62
    movt.s	$f1,$f0,$fcc1
    # Line 61
    swc1	$f3,16384($zero)
    # Line 63
    movf.s	$f0,$f2,$fcc0
    # Line 62
    swc1	$f1,16384($zero)
    # Line 64
    addiu	$sp,$sp,16
    jr	$ra
    # Line 63
    swc1	$f0,16384($zero)
.L0d95d808:
    # Line 64
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95d814:
    # Line 49
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95d808
    ld	$ra,8($sp)
.end __glkonim_ClearAccum

# Function: __glkonim_ClearDepth
# Declared: Line 71 (Source lines: 71-78)
# Address: 0x0d95d830 - 0x0d95d8ac (Size: 124 bytes, Frame: 16)
.globl __glkonim_ClearDepth
.ent __glkonim_ClearDepth
__glkonim_ClearDepth:
    # Line 72
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 71
    lui	$at,0x13
    # Line 72
    lw	$a1,4112($zero)
    # Line 71
    addiu	$sp,$sp,-16
    addiu	$at,$at,14248
    sd	$gp,0($sp)
    # Line 72
    beq	$v0,$v1,.L0d95d894
    # Line 71
    addu	$gp,$t9,$at
    # Line 74
    dmtc1	$zero,$f1
    lwc1	$f0,3544($a1)
    c.lt.d $f12,$f1
    cvt.d.s	$f0,$f0
    movf.d	$f1,$f12,$fcc1
    c.lt.d	$f0,$f1
    # Line 77
    li	$v0,31
    sw	$v0,16384($zero)
    # Line 78
    ld	$gp,0($sp)
    movf.d	$f0,$f1,$fcc0
    addiu	$sp,$sp,16
    jr	$ra
    # Line 77
    sdc1	$f0,16384($zero)
.L0d95d888:
    # Line 78
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95d894:
    # Line 72
    # lw $t9, -28616($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0d95d888
    ld	$ra,8($sp)
.end __glkonim_ClearDepth

# Function: __glkonim_PushAttrib
# Declared: Line 81 (Source lines: 81-485)
# Address: 0x0d95d8b0 - 0x0d95e600 (Size: 3408 bytes, Frame: 208)
.globl __glkonim_PushAttrib
.ent __glkonim_PushAttrib
__glkonim_PushAttrib:
    # Line 81
    addiu	$sp,$sp,-80
    sd	$s3,24($sp)
    # Line 87
    lw	$s3,4112($zero)
    sd	$s5,48($sp)
    sd	$ra,64($sp)
    sd	$s0,56($sp)
    lw	$at,4120($zero)
    # Line 81
    sd	$s4,32($sp)
    # Line 87
    li	$v0,1
    # Line 81
    lui	$v1,0x13
    move	$s4,$a0
    sd	$s1,16($sp)
    addiu	$v1,$v1,14120
    sd	$gp,40($sp)
    # Line 87
    beq	$at,$v0,.L0d95e5ec
    # Line 81
    addu	$gp,$t9,$v1
    # Line 89
    lui	$s0,0x1
    addu	$s5,$s0,$s3
    lw	$a0,-24284($s5)
    bnez	$a0,.L0d95d92c
    # Line 101
    nop	# was lw $t9, -32124($gp) # &__glkona_wait_rdata
    # Line 92
    # lw $t9, -32464($gp) # &__glkon_mem_alloc
    move	$a0,$zero
    move	$a1,$zero
    move	$a2,$zero
    lw	$a3,3776($s3)
    move	$a4,$zero
    jal	__glkon_mem_alloc
    sll	$a3,$a3,0xb
    bltz	$v0,.L0d95e5b0
    # Line 101
    nop	# was lw $t9, -32124($gp) # &__glkona_wait_rdata
.L0d95d92c:
    # Line 100
    li	$a4,201
    sw	$a4,16384($zero)
    sw	$s4,16384($zero)
    # Line 101
    bal __glkona_wait_rdata
    sd	$s2,0($sp)
    # Line 104
    lw	$a1,3776($s3)
    lw	$t8,12728($s3)
    lw	$a0,12732($s3)
    sll	$t9,$a1,0x2
    addu	$t8,$t8,$t9
    # Line 102
    lw	$s2,31588($s3)
    # Line 104
    sltu	$t8,$a0,$t8
    beqz	$t8,.L0d95e544
    # Line 102
    addiu	$s2,$s2,4
    # Line 104
    lw	$ra,-24284($s5)
    beqz	$ra,.L0d95e56c
    sd	$a0,8($sp)
    # Line 108
    lw	$a0,-24280($s5)
.L0d95d974:
    lw	$at,0($a0)
    beqz	$at,.L0d95e58c
.L0d95d97c:
    # Line 114
    addiu	$v1,$a0,4
    sw	$v1,-24280($s5)
    lw	$s0,0($a0)
    # Line 115
    ld	$v0,8($sp)
    # Line 114
    sw	$zero,0($s0)
    # Line 115
    lw	$v0,0($v0)
    lui	$a2,0x1
    beqz	$v0,.L0d95e5c4
    move	$s1,$v0
.L0d95d9a0:
    # Line 120
    sw	$s4,0($s1)
    # Line 121
    ld	$a6,8($sp)
    # Line 123
    ld	$a5,1792($s3)
    # Line 121
    addiu	$a6,$a6,4
    sw	$a6,12732($s3)
    # Line 123
    sd	$a5,1616($s1)
    ld	$a4,1800($s3)
    sd	$a4,1624($s1)
    ld	$a3,1808($s3)
    andi	$a1,$s4,0x1
    sd	$a3,1632($s1)
    lw	$a0,1816($s3)
    beqz	$a1,.L0d95dacc
    sw	$a0,1640($s1)
    # Line 130
    lwc1	$f1,0($s2)
    swc1	$f1,16($s1)
    # Line 131
    lwc1	$f0,4($s2)
    swc1	$f0,20($s1)
    # Line 132
    lwc1	$f31,8($s2)
    swc1	$f31,24($s1)
    # Line 133
    lwc1	$f29,12($s2)
    swc1	$f29,28($s1)
    # Line 134
    lwc1	$f27,16($s2)
    swc1	$f27,44($s1)
    # Line 135
    lwc1	$f25,20($s2)
    swc1	$f25,32($s1)
    # Line 136
    lwc1	$f23,24($s2)
    swc1	$f23,36($s1)
    # Line 137
    lwc1	$f21,28($s2)
    swc1	$f21,40($s1)
    # Line 138
    lwc1	$f19,32($s2)
    swc1	$f19,48($s1)
    # Line 139
    lwc1	$f18,36($s2)
    swc1	$f18,52($s1)
    # Line 140
    lwc1	$f17,40($s2)
    swc1	$f17,56($s1)
    # Line 141
    lwc1	$f16,44($s2)
    swc1	$f16,60($s1)
    # Line 142
    lwc1	$f15,48($s2)
    trunc.w.s	$f15,$f15
    mfc1	$t0,$f15
    sb	$t0,277($s1)
    # Line 144
    lwc1	$f14,52($s2)
    swc1	$f14,208($s1)
    # Line 145
    lwc1	$f13,56($s2)
    swc1	$f13,212($s1)
    # Line 146
    lwc1	$f12,60($s2)
    swc1	$f12,216($s1)
    # Line 147
    lwc1	$f11,64($s2)
    swc1	$f11,220($s1)
    # Line 148
    lwc1	$f10,68($s2)
    swc1	$f10,224($s1)
    # Line 149
    lwc1	$f9,72($s2)
    swc1	$f9,112($s1)
    # Line 150
    lwc1	$f8,76($s2)
    swc1	$f8,116($s1)
    # Line 151
    lwc1	$f7,80($s2)
    swc1	$f7,120($s1)
    # Line 152
    lwc1	$f6,84($s2)
    swc1	$f6,124($s1)
    # Line 153
    lwc1	$f5,88($s2)
    swc1	$f5,192($s1)
    # Line 154
    lwc1	$f4,92($s2)
    swc1	$f4,196($s1)
    # Line 155
    lwc1	$f3,96($s2)
    swc1	$f3,200($s1)
    # Line 156
    lwc1	$f2,100($s2)
    swc1	$f2,204($s1)
    # Line 157
    lwc1	$f1,104($s2)
    trunc.l.s	$f1,$f1
    dmfc1	$a7,$f1
    sw	$a7,68($s1)
    # Line 158
    lwc1	$f0,108($s2)
    # Line 159
    addiu	$s2,$s2,112
    # Line 158
    swc1	$f0,168($s1)
.L0d95dacc:
    # Line 159
    andi	$t1,$s4,0x2000
    beqz	$t1,.L0d95db38
    # Line 172
    lui	$s5,0x2
    # Line 164
    lw	$a0,1792($s3)
    sw	$a0,1616($s1)
    lw	$a1,31632($s3)
    andi	$t2,$a1,0x2
    beqz	$t2,.L0d95db00
    # Line 166
    andi	$t3,$a1,0x4
    or	$a0,$a2,$a0
    sw	$a0,1616($s1)
    lw	$a1,31632($s3)
    andi	$t3,$a1,0x4
.L0d95db00:
    beqz	$t3,.L0d95db14
    lui	$s5,0x2
    # Line 168
    or	$a0,$s5,$a0
    sw	$a0,1616($s1)
    lw	$a1,31632($s3)
.L0d95db14:
    andi	$t8,$a1,0x8
    beqz	$t8,.L0d95db28
    # Line 170
    lui	$t9,0x4000
    or	$t9,$a0,$t9
    sw	$t9,1616($s1)
.L0d95db28:
    # Line 171
    lw	$at,1808($s3)
    sw	$at,1632($s1)
    # Line 172
    lw	$ra,1812($s3)
    sw	$ra,1636($s1)
.L0d95db38:
    and	$v0,$a2,$s4
    beqz	$v0,.L0d95dbc4
    # Line 179
    andi	$t1,$s4,0x80
    addiu	$a7,$s3,1936
    addiu	$a4,$s1,1760
    li	$a5,0x8
    # Line 175
    li	$a0,12
    move	$a1,$zero
    addiu	$a2,$s1,1756
    addiu	$a6,$s3,1932
.L0d95db60:
    addu	$a3,$a1,$a6
    addu	$t0,$a1,$a2
    lw	$a3,0($a3)
    addiu	$a0,$a0,-2
    addu	$v1,$a1,$a7
    sw	$a3,0($t0)
    addu	$a3,$a1,$a4
    lw	$v1,0($v1)
    addu	$a1,$a1,$a5
    bgtz	$a0,.L0d95db60
    sw	$v1,0($a3)
    # Line 176
    lw	$t0,1808($s3)
    sw	$t0,1632($s1)
    # Line 177
    lw	$a7,1812($s3)
    # Line 178
    lui	$a6,0x80
    lw	$a4,1616($s1)
    # Line 177
    sw	$a7,1636($s1)
    # Line 178
    nor	$a5,$a6,$zero
    and	$a4,$a4,$a5
    sw	$a4,1616($s1)
    # Line 179
    lw	$a5,1792($s3)
    and	$a5,$a5,$a6
    or	$a4,$a4,$a5
    sw	$a4,1616($s1)
    andi	$t1,$s4,0x80
.L0d95dbc4:
    beqz	$t1,.L0d95dcd4
    # Line 210
    andi	$v1,$s4,0x40
    # Line 184
    lw	$t8,0($s2)
    sw	$t8,1412($s1)
    # Line 185
    lwc1	$f13,4($s2)
    swc1	$f13,1432($s1)
    # Line 186
    lwc1	$f12,8($s2)
    swc1	$f12,1436($s1)
    # Line 187
    lwc1	$f11,12($s2)
    swc1	$f11,1440($s1)
    # Line 188
    lwc1	$f10,16($s2)
    swc1	$f10,1416($s1)
    # Line 189
    lwc1	$f9,20($s2)
    swc1	$f9,1420($s1)
    # Line 190
    lwc1	$f8,24($s2)
    swc1	$f8,1424($s1)
    # Line 191
    lwc1	$f7,28($s2)
    swc1	$f7,1428($s1)
    # Line 192
    lwc1	$f6,32($s2)
    swc1	$f6,1448($s1)
    # Line 193
    lwc1	$f5,36($s2)
    swc1	$f5,4104($s0)
    # Line 194
    lwc1	$f4,40($s2)
    swc1	$f4,4108($s0)
    # Line 195
    lwc1	$f3,44($s2)
    swc1	$f3,4112($s0)
    # Line 196
    lwc1	$f2,48($s2)
    swc1	$f2,4116($s0)
    # Line 199
    lw	$t3,52($s2)
    sw	$t3,4($s0)
    # Line 202
    addu	$t3,$t3,$t3
    # Line 200
    lw	$a0,56($s2)
    addiu	$t2,$s2,60
    # Line 202
    addiu	$s2,$s2,68
    blez	$t3,.L0d95dcc4
    movz	$s2,$t2,$a0
    move	$a5,$s2
    move	$a4,$s0
    move	$a2,$zero
.L0d95dc60:
    # Line 205
    lwc1	$f14,0($a5)
    swc1	$f14,8($a4)
    # Line 204
    lw	$t9,4($s0)
    addiu	$a2,$a2,1
    addu	$t9,$t9,$t9
    slt	$t9,$a2,$t9
    beqz	$t9,.L0d95dcc4
    nop
    # Line 205
    lwc1	$f15,4($a5)
    swc1	$f15,12($a4)
    # Line 204
    lw	$ra,4($s0)
    addiu	$a2,$a2,1
    addu	$ra,$ra,$ra
    slt	$ra,$a2,$ra
    beqz	$ra,.L0d95dcc4
    nop
    # Line 205
    lwc1	$f16,8($a5)
    swc1	$f16,16($a4)
    # Line 204
    lw	$at,4($s0)
    addiu	$a2,$a2,1
    addu	$at,$at,$at
    slt	$at,$a2,$at
    addiu	$a5,$a5,12
    bnez	$at,.L0d95dc60
    addiu	$a4,$a4,12
.L0d95dcc4:
    # Line 207
    addiu	$s2,$s2,256
    # Line 210
    addiu	$v0,$s2,8
    movz	$s2,$v0,$a0
    andi	$v1,$s4,0x40
.L0d95dcd4:
    beqz	$v1,.L0d95df3c
    # Line 266
    and	$v0,$s5,$s4
    # Line 216
    lwc1	$f4,0($s2)
    swc1	$f4,1248($s1)
    # Line 217
    lwc1	$f3,4($s2)
    swc1	$f3,1252($s1)
    # Line 218
    lwc1	$f2,8($s2)
    swc1	$f2,1256($s1)
    # Line 219
    lwc1	$f1,12($s2)
    swc1	$f1,1260($s1)
    # Line 220
    lwc1	$f0,16($s2)
    swc1	$f0,1264($s1)
    # Line 221
    lwc1	$f31,20($s2)
    swc1	$f31,1268($s1)
    # Line 222
    lwc1	$f29,24($s2)
    swc1	$f29,1272($s1)
    # Line 223
    lwc1	$f27,28($s2)
    swc1	$f27,1276($s1)
    # Line 224
    lwc1	$f25,32($s2)
    swc1	$f25,1280($s1)
    # Line 225
    lwc1	$f23,36($s2)
    swc1	$f23,1284($s1)
    # Line 226
    lwc1	$f21,40($s2)
    swc1	$f21,1288($s1)
    # Line 227
    lwc1	$f19,44($s2)
    swc1	$f19,1292($s1)
    # Line 228
    lwc1	$f18,48($s2)
    swc1	$f18,1296($s1)
    # Line 229
    lwc1	$f17,52($s2)
    swc1	$f17,1300($s1)
    # Line 230
    lwc1	$f16,56($s2)
    swc1	$f16,1304($s1)
    # Line 231
    lwc1	$f15,60($s2)
    swc1	$f15,1308($s1)
    # Line 232
    lwc1	$f14,64($s2)
    swc1	$f14,1312($s1)
    # Line 233
    lwc1	$f13,80($s2)
    swc1	$f13,1316($s1)
    # Line 234
    lwc1	$f12,84($s2)
    swc1	$f12,1320($s1)
    # Line 235
    lwc1	$f11,88($s2)
    swc1	$f11,1324($s1)
    # Line 238
    lwc1	$f10,96($s2)
    swc1	$f10,1328($s1)
    # Line 239
    lwc1	$f9,100($s2)
    swc1	$f9,1332($s1)
    # Line 240
    lwc1	$f8,104($s2)
    swc1	$f8,1336($s1)
    # Line 241
    lwc1	$f7,108($s2)
    swc1	$f7,1340($s1)
    # Line 242
    lwc1	$f6,112($s2)
    swc1	$f6,1344($s1)
    # Line 243
    lwc1	$f5,116($s2)
    swc1	$f5,1348($s1)
    # Line 244
    lwc1	$f4,120($s2)
    swc1	$f4,1352($s1)
    # Line 245
    lwc1	$f3,124($s2)
    swc1	$f3,1356($s1)
    # Line 246
    lwc1	$f2,128($s2)
    swc1	$f2,1360($s1)
    # Line 247
    lwc1	$f1,132($s2)
    swc1	$f1,1364($s1)
    # Line 248
    lwc1	$f0,136($s2)
    swc1	$f0,1368($s1)
    # Line 249
    lwc1	$f31,140($s2)
    swc1	$f31,1372($s1)
    # Line 250
    lwc1	$f29,144($s2)
    swc1	$f29,1376($s1)
    # Line 251
    lwc1	$f27,148($s2)
    swc1	$f27,1380($s1)
    # Line 252
    lwc1	$f25,152($s2)
    swc1	$f25,1384($s1)
    # Line 253
    lwc1	$f23,156($s2)
    swc1	$f23,1388($s1)
    # Line 254
    lwc1	$f21,160($s2)
    swc1	$f21,1392($s1)
    # Line 255
    lwc1	$f19,176($s2)
    swc1	$f19,1396($s1)
    # Line 256
    lwc1	$f18,180($s2)
    swc1	$f18,1400($s1)
    # Line 257
    lwc1	$f17,184($s2)
    swc1	$f17,1404($s1)
    # Line 264
    lw	$a2,3588($s3)
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    lw	$t9,0($s3)
    sll	$a1,$a1,0x2
    move	$a0,$s3
    addu	$a1,$a1,$a2
    # Line 258
    addiu	$s2,$s2,192
    # Line 264
    sll	$a1,$a1,0x2
    subu	$a1,$a1,$a2
    jal	__glkona_wait_rdata
    sll	$a1,$a1,0x2
    sw	$v0,1408($s1)
    lw	$a2,3588($s3)
    blez	$a2,.L0d95df38
    move	$a1,$zero
    move	$a0,$zero
.L0d95de60:
    # Line 267
    lw	$at,1408($s1)
    lwc1	$f16,0($s2)
    addu	$at,$at,$a1
    swc1	$f16,48($at)
    # Line 268
    lw	$ra,1408($s1)
    lwc1	$f15,4($s2)
    addu	$ra,$ra,$a1
    swc1	$f15,52($ra)
    # Line 269
    lw	$t9,1408($s1)
    lwc1	$f14,8($s2)
    addu	$t9,$t9,$a1
    swc1	$f14,56($t9)
    # Line 270
    lw	$t8,1408($s1)
    lwc1	$f13,12($s2)
    addu	$t8,$t8,$a1
    swc1	$f13,60($t8)
    # Line 271
    lw	$t3,1408($s1)
    lwc1	$f12,16($s2)
    addu	$t3,$t3,$a1
    swc1	$f12,64($t3)
    # Line 272
    lw	$t2,1408($s1)
    lwc1	$f11,20($s2)
    addu	$t2,$t2,$a1
    swc1	$f11,68($t2)
    # Line 273
    lw	$t1,1408($s1)
    lwc1	$f10,24($s2)
    addu	$t1,$t1,$a1
    swc1	$f10,72($t1)
    # Line 274
    lw	$t0,1408($s1)
    lwc1	$f9,28($s2)
    addu	$t0,$t0,$a1
    swc1	$f9,76($t0)
    # Line 275
    lw	$a7,1408($s1)
    lwc1	$f8,32($s2)
    addu	$a7,$a7,$a1
    swc1	$f8,80($a7)
    # Line 276
    lw	$a6,1408($s1)
    lwc1	$f7,36($s2)
    addu	$a6,$a6,$a1
    swc1	$f7,84($a6)
    # Line 277
    lw	$a5,1408($s1)
    lwc1	$f6,40($s2)
    addu	$a5,$a5,$a1
    swc1	$f6,88($a5)
    # Line 278
    lw	$a4,1408($s1)
    lwc1	$f5,44($s2)
    addu	$a4,$a4,$a1
    swc1	$f5,92($a4)
    # Line 266
    lw	$a3,3588($s3)
    addiu	$a0,$a0,1
    slt	$a3,$a0,$a3
    # Line 279
    addiu	$s2,$s2,48
    # Line 266
    bnez	$a3,.L0d95de60
    addiu	$a1,$a1,116
.L0d95df38:
    and	$v0,$s5,$s4
.L0d95df3c:
    beqz	$v0,.L0d95df50
    # Line 286
    andi	$a0,$s4,0x20
    lw	$v1,1980($s3)
    sw	$v1,1804($s1)
    andi	$a0,$s4,0x20
.L0d95df50:
    beqz	$a0,.L0d95e078
    # Line 303
    andi	$t3,$s4,0x8
    addiu	$a7,$s3,648
    addiu	$a6,$s1,472
    li	$a0,0x10
    # Line 290
    addiu	$a4,$s1,464
    addiu	$a5,$s3,640
    ld	$a3,640($s3)
    li	$a2,8
    li	$a1,0xe
    sd	$a3,464($s1)
    nop
.L0d95df80:
    addu	$t0,$a2,$a5
    addu	$t1,$a2,$a4
    ld	$t0,0($t0)
    addiu	$a1,$a1,-2
    addu	$a3,$a2,$a7
    sd	$t0,0($t1)
    addu	$t0,$a2,$a6
    ld	$a3,0($a3)
    addu	$a2,$a2,$a0
    bgtz	$a1,.L0d95df80
    sd	$a3,0($t0)
    # Line 292
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    # Line 290
    addu	$t2,$a2,$a5
    addu	$t3,$a2,$a4
    lw	$t2,0($t2)
    sw	$t2,0($t3)
    # Line 292
    addiu	$a1,$s1,1060
    # Line 291
    lw	$t1,1380($s3)
    # Line 292
    li	$a0,3074
    bal __glkonim_GetIntegerv
    # Line 291
    sw	$t1,1204($s1)
    # Line 295
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s1,2404
    li	$a1,0x80d6
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d0
    # Line 296
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s1,2564
    li	$a1,0x80d6
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d1
    # Line 297
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s1,2724
    li	$a1,0x80d6
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d2
    # Line 298
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s1,2884
    li	$a1,0x80d6
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80bc
    # Line 300
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s1,2420
    li	$a1,0x80d7
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d0
    # Line 301
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s1,2580
    li	$a1,0x80d7
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d1
    # Line 302
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s1,2740
    li	$a1,0x80d7
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d2
    # Line 303
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s1,2900
    li	$a1,0x80d7
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80bc
    andi	$t3,$s4,0x8
.L0d95e078:
    ld	$s5,48($sp)
    beqz	$t3,.L0d95e098
    ld	$s0,56($sp)
    # Line 309
    lwc1	$f18,4($s2)
    swc1	$f18,324($s1)
    # Line 310
    lwc1	$f17,12($s2)
    # Line 311
    addiu	$s2,$s2,16
    # Line 310
    swc1	$f17,328($s1)
.L0d95e098:
    # Line 311
    andi	$t8,$s4,0x10
    beqz	$t8,.L0d95e0d4
    # Line 316
    dsll32	$at,$s4,0xd
    # Line 311
    addiu	$a4,$s1,128
    move	$a2,$s1
    move	$a1,$s2
.L0d95e0b0:
    # Line 316
    addiu	$a2,$a2,8
    # Line 317
    lw	$ra,0($a1)
    sw	$ra,328($a2)
    lw	$t9,4($a1)
    addiu	$a1,$a1,8
    # Line 316
    bne	$a2,$a4,.L0d95e0b0
    # Line 317
    sw	$t9,332($a2)
    move	$s2,$a1
    # Line 316
    dsll32	$at,$s4,0xd
.L0d95e0d4:
    bgez	$at,.L0d95e4d0
    # Line 459
    andi	$a1,$s4,0x1000
    # Line 326
    lw	$t9,0($s3)
    move	$a0,$s3
    jalr	$t9
    li	$a1,36
    sw	$v0,2308($s1)
    # Line 329
    lw	$a0,0($s2)
    sw	$a0,0($v0)
    # Line 331
    lw	$v1,2308($s1)
    lwc1	$f8,4($s2)
    swc1	$f8,4($v1)
    lwc1	$f7,8($s2)
    swc1	$f7,8($v1)
    lwc1	$f6,12($s2)
    swc1	$f6,12($v1)
    lwc1	$f5,16($s2)
    swc1	$f5,16($v1)
    # Line 334
    lw	$v0,2308($s1)
    lwc1	$f4,20($s2)
    swc1	$f4,20($v0)
    lwc1	$f3,24($s2)
    swc1	$f3,24($v0)
    lwc1	$f2,28($s2)
    swc1	$f2,28($v0)
    lwc1	$f1,32($s2)
    swc1	$f1,32($v0)
    # Line 337
    lwc1	$f0,36($s2)
    swc1	$f0,1812($s1)
    lwc1	$f31,40($s2)
    swc1	$f31,1816($s1)
    lwc1	$f29,44($s2)
    swc1	$f29,1820($s1)
    lwc1	$f27,48($s2)
    swc1	$f27,1824($s1)
    # Line 339
    lwc1	$f25,52($s2)
    swc1	$f25,1936($s1)
    lwc1	$f23,56($s2)
    swc1	$f23,1940($s1)
    lwc1	$f21,60($s2)
    swc1	$f21,1944($s1)
    lwc1	$f19,64($s2)
    swc1	$f19,1948($s1)
    # Line 341
    lwc1	$f18,68($s2)
    swc1	$f18,2060($s1)
    lwc1	$f17,72($s2)
    swc1	$f17,2064($s1)
    lwc1	$f16,76($s2)
    swc1	$f16,2068($s1)
    lwc1	$f15,80($s2)
    swc1	$f15,2072($s1)
    # Line 343
    lwc1	$f14,84($s2)
    swc1	$f14,2184($s1)
    lwc1	$f13,88($s2)
    swc1	$f13,2188($s1)
    lwc1	$f12,92($s2)
    swc1	$f12,2192($s1)
    lwc1	$f11,96($s2)
    swc1	$f11,2196($s1)
    # Line 346
    lwc1	$f10,100($s2)
    swc1	$f10,1828($s1)
    lwc1	$f9,104($s2)
    swc1	$f9,1832($s1)
    lwc1	$f8,108($s2)
    swc1	$f8,1836($s1)
    lwc1	$f7,112($s2)
    swc1	$f7,1840($s1)
    # Line 348
    lwc1	$f6,116($s2)
    swc1	$f6,1952($s1)
    lwc1	$f5,120($s2)
    swc1	$f5,1956($s1)
    lwc1	$f4,124($s2)
    swc1	$f4,1960($s1)
    lwc1	$f3,128($s2)
    swc1	$f3,1964($s1)
    # Line 350
    lwc1	$f2,132($s2)
    swc1	$f2,2076($s1)
    lwc1	$f1,136($s2)
    swc1	$f1,2080($s1)
    lwc1	$f0,140($s2)
    swc1	$f0,2084($s1)
    lwc1	$f31,144($s2)
    swc1	$f31,2088($s1)
    # Line 352
    lwc1	$f29,148($s2)
    swc1	$f29,2200($s1)
    lwc1	$f27,152($s2)
    swc1	$f27,2204($s1)
    lwc1	$f25,156($s2)
    swc1	$f25,2208($s1)
    lwc1	$f23,160($s2)
    swc1	$f23,2212($s1)
    # Line 356
    lwc1	$f21,164($s2)
    swc1	$f21,1844($s1)
    # Line 357
    lwc1	$f19,168($s2)
    swc1	$f19,1848($s1)
    # Line 358
    lwc1	$f18,172($s2)
    swc1	$f18,1852($s1)
    # Line 359
    lwc1	$f17,176($s2)
    swc1	$f17,1856($s1)
    # Line 361
    lwc1	$f16,180($s2)
    swc1	$f16,1968($s1)
    # Line 362
    lwc1	$f15,184($s2)
    swc1	$f15,1972($s1)
    # Line 363
    lwc1	$f14,188($s2)
    swc1	$f14,1976($s1)
    # Line 364
    lwc1	$f13,192($s2)
    swc1	$f13,1980($s1)
    # Line 366
    lwc1	$f12,196($s2)
    swc1	$f12,2092($s1)
    # Line 367
    lwc1	$f11,200($s2)
    swc1	$f11,2096($s1)
    # Line 368
    lwc1	$f10,204($s2)
    swc1	$f10,2100($s1)
    # Line 369
    lwc1	$f9,208($s2)
    swc1	$f9,2104($s1)
    # Line 371
    lwc1	$f8,212($s2)
    swc1	$f8,2216($s1)
    # Line 372
    lwc1	$f7,216($s2)
    swc1	$f7,2220($s1)
    # Line 373
    lwc1	$f6,220($s2)
    swc1	$f6,2224($s1)
    # Line 374
    lwc1	$f5,224($s2)
    swc1	$f5,2228($s1)
    # Line 378
    lwc1	$f4,228($s2)
    swc1	$f4,1860($s1)
    # Line 379
    lwc1	$f3,232($s2)
    swc1	$f3,1864($s1)
    # Line 380
    lwc1	$f2,236($s2)
    swc1	$f2,1868($s1)
    # Line 381
    lwc1	$f1,240($s2)
    swc1	$f1,1872($s1)
    # Line 383
    lwc1	$f0,244($s2)
    swc1	$f0,1984($s1)
    # Line 384
    lwc1	$f31,248($s2)
    swc1	$f31,1988($s1)
    # Line 385
    lwc1	$f29,252($s2)
    swc1	$f29,1992($s1)
    # Line 386
    lwc1	$f27,256($s2)
    swc1	$f27,1996($s1)
    # Line 388
    lwc1	$f25,260($s2)
    swc1	$f25,2108($s1)
    # Line 389
    lwc1	$f23,264($s2)
    swc1	$f23,2112($s1)
    # Line 390
    lwc1	$f21,268($s2)
    swc1	$f21,2116($s1)
    # Line 391
    lwc1	$f19,272($s2)
    swc1	$f19,2120($s1)
    # Line 393
    lwc1	$f18,276($s2)
    swc1	$f18,2232($s1)
    # Line 394
    lwc1	$f17,280($s2)
    swc1	$f17,2236($s1)
    # Line 395
    lwc1	$f16,284($s2)
    swc1	$f16,2240($s1)
    # Line 396
    lwc1	$f15,288($s2)
    swc1	$f15,2244($s1)
    # Line 400
    lwc1	$f14,292($s2)
    swc1	$f14,1876($s1)
    # Line 401
    lwc1	$f13,308($s2)
    swc1	$f13,1880($s1)
    # Line 402
    lwc1	$f12,324($s2)
    swc1	$f12,1884($s1)
    # Line 403
    lwc1	$f11,340($s2)
    swc1	$f11,1892($s1)
    # Line 404
    lwc1	$f10,356($s2)
    swc1	$f10,1896($s1)
    # Line 405
    lwc1	$f9,372($s2)
    swc1	$f9,1900($s1)
    # Line 407
    lwc1	$f8,296($s2)
    swc1	$f8,2000($s1)
    # Line 408
    lwc1	$f7,312($s2)
    swc1	$f7,2004($s1)
    # Line 409
    lwc1	$f6,328($s2)
    swc1	$f6,2008($s1)
    # Line 410
    lwc1	$f5,344($s2)
    swc1	$f5,2016($s1)
    # Line 411
    lwc1	$f4,360($s2)
    swc1	$f4,2020($s1)
    # Line 412
    lwc1	$f3,376($s2)
    swc1	$f3,2024($s1)
    # Line 414
    lwc1	$f2,300($s2)
    swc1	$f2,2124($s1)
    # Line 415
    lwc1	$f1,316($s2)
    swc1	$f1,2128($s1)
    # Line 416
    lwc1	$f0,332($s2)
    swc1	$f0,2132($s1)
    # Line 417
    lwc1	$f31,348($s2)
    swc1	$f31,2140($s1)
    # Line 418
    lwc1	$f29,364($s2)
    swc1	$f29,2144($s1)
    # Line 419
    lwc1	$f27,380($s2)
    swc1	$f27,2148($s1)
    # Line 421
    lwc1	$f25,304($s2)
    swc1	$f25,2248($s1)
    # Line 422
    lwc1	$f23,320($s2)
    swc1	$f23,2252($s1)
    # Line 423
    lwc1	$f21,336($s2)
    swc1	$f21,2256($s1)
    # Line 424
    lwc1	$f19,352($s2)
    swc1	$f19,2264($s1)
    # Line 425
    lwc1	$f18,368($s2)
    swc1	$f18,2268($s1)
    # Line 426
    lwc1	$f17,384($s2)
    swc1	$f17,2272($s1)
    # Line 430
    lwc1	$f16,388($s2)
    swc1	$f16,1904($s1)
    # Line 431
    lwc1	$f15,404($s2)
    swc1	$f15,1908($s1)
    # Line 432
    lwc1	$f14,420($s2)
    swc1	$f14,1912($s1)
    # Line 433
    lwc1	$f13,436($s2)
    swc1	$f13,1920($s1)
    # Line 434
    lwc1	$f12,452($s2)
    swc1	$f12,1924($s1)
    # Line 435
    lwc1	$f11,468($s2)
    swc1	$f11,1928($s1)
    # Line 437
    lwc1	$f10,392($s2)
    swc1	$f10,2028($s1)
    # Line 438
    lwc1	$f9,408($s2)
    swc1	$f9,2032($s1)
    # Line 439
    lwc1	$f8,424($s2)
    swc1	$f8,2036($s1)
    # Line 440
    lwc1	$f7,440($s2)
    swc1	$f7,2044($s1)
    # Line 441
    lwc1	$f6,456($s2)
    swc1	$f6,2048($s1)
    # Line 442
    lwc1	$f5,472($s2)
    swc1	$f5,2052($s1)
    # Line 444
    lwc1	$f4,396($s2)
    swc1	$f4,2152($s1)
    # Line 445
    lwc1	$f3,412($s2)
    swc1	$f3,2156($s1)
    # Line 446
    lwc1	$f2,428($s2)
    swc1	$f2,2160($s1)
    # Line 447
    lwc1	$f1,444($s2)
    swc1	$f1,2168($s1)
    # Line 448
    lwc1	$f0,460($s2)
    swc1	$f0,2172($s1)
    # Line 449
    lwc1	$f31,476($s2)
    swc1	$f31,2176($s1)
    # Line 451
    lwc1	$f29,400($s2)
    swc1	$f29,2276($s1)
    # Line 452
    lwc1	$f27,416($s2)
    swc1	$f27,2280($s1)
    # Line 453
    lwc1	$f25,432($s2)
    swc1	$f25,2284($s1)
    # Line 454
    lwc1	$f23,448($s2)
    swc1	$f23,2292($s1)
    # Line 455
    lwc1	$f21,464($s2)
    # Line 459
    # lw $t9, -31660($gp) # &__glKonPushTextureAttrib
    # Line 455
    swc1	$f21,2296($s1)
    # Line 456
    lwc1	$f19,480($s2)
    # Line 457
    addiu	$s2,$s2,484
    # Line 459
    jal	__glKonPushTextureAttrib
    # Line 456
    swc1	$f19,2300($s1)
    # Line 459
    andi	$a1,$s4,0x1000
.L0d95e4d0:
    beqz	$a1,.L0d95e544
    nop
    # Line 468
    lw	$s4,3600($s3)
    # Line 471
    lw	$t9,0($s3)
    # Line 468
    addu	$s4,$s4,$s4
    sll	$s4,$s4,0x4
    # Line 471
    move	$a0,$s3
    # Line 468
    addiu	$s4,$s4,52
    # Line 471
    jalr	$t9
    move	$a1,$s4
    # Line 473
    # lw $t9, -18508($gp) # &memcpy
    # Line 471
    move	$a0,$v0
    # Line 473
    move	$a2,$s4
    move	$a1,$s2
    jal	memcpy
    # Line 471
    sw	$v0,1572($s1)
    # Line 485
    ld	$gp,40($sp)
    ld	$s3,24($sp)
    # Line 479
    srl	$t8,$s4,0x2
    # Line 485
    ld	$s4,32($sp)
    # Line 479
    sll	$t8,$t8,0x2
    addu	$t8,$s2,$t8
    # Line 485
    ld	$s2,0($sp)
    ld	$ra,64($sp)
    # Line 479
    lw	$t8,4($t8)
    sw	$t8,1612($s1)
    # Line 485
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d95e544:
    ld	$s2,0($sp)
    ld	$s3,24($sp)
    ld	$s4,32($sp)
    ld	$s0,56($sp)
    ld	$ra,64($sp)
    ld	$s1,16($sp)
    ld	$s5,48($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d95e56c:
    # Line 107
    lw	$t9,4($s3)
    move	$a0,$s3
    jalr	$t9
    li	$a2,4
    # Line 108
    sw	$v0,-24280($s5)
    # Line 107
    move	$a0,$v0
    # Line 108
    b	.L0d95d974
    # Line 107
    sw	$v0,-24284($s5)
.L0d95e58c:
    # Line 111
    lw	$t9,4($s3)
    move	$a0,$s3
    li	$a2,4188
    jalr	$t9
    li	$a1,1
    lw	$t9,-24280($s5)
    sw	$v0,0($t9)
    b	.L0d95d97c
    lw	$a0,-24280($s5)
.L0d95e5b0:
    # Line 93
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d95e544
    sd	$s2,0($sp)
.L0d95e5c4:
    # Line 116
    lw	$t9,4($s3)
    move	$a0,$s3
    li	$a2,3024
    jalr	$t9
    li	$a1,1
    ld	$ra,8($sp)
    lui	$a2,0x1
    move	$s1,$v0
    b	.L0d95d9a0
    # Line 118
    sw	$v0,0($ra)
.L0d95e5ec:
    # Line 87
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95e544
    sd	$s2,0($sp)
.end __glkonim_PushAttrib

# Function: __glkonim_PopAttrib
# Declared: Line 488 (Source lines: 488-830)
# Address: 0x0d95e600 - 0x0d95f5f0 (Size: 4080 bytes, Frame: 192)
.globl __glkonim_PopAttrib
.ent __glkonim_PopAttrib
__glkonim_PopAttrib:
    # Line 488
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 494
    lw	$s1,4112($zero)
    lw	$at,4120($zero)
    sd	$s0,32($sp)
    li	$v0,1
    # Line 488
    lui	$v1,0x13
    sd	$ra,40($sp)
    addiu	$v1,$v1,10712
    sd	$gp,24($sp)
    # Line 494
    beq	$at,$v0,.L0d95f494
    # Line 488
    addu	$gp,$t9,$v1
    # Line 502
    lw	$a0,12732($s1)
    lw	$a1,12728($s1)
    sltu	$a2,$a1,$a0
    beqz	$a2,.L0d95e71c
    # Line 533
    li	$t0,200
    # Line 505
    lw	$s0,-4($a0)
    lw	$a3,0($s0)
    andi	$a3,$a3,0x40
    beqz	$a3,.L0d95e71c
    # Line 533
    li	$t0,200
    # Line 513
    lw	$a4,3588($s1)
    sll	$a5,$a4,0x2
    subu	$a5,$a5,$a4
    sll	$a5,$a5,0x2
    li	$a6,281
    sw	$a6,16384($zero)
    blez	$a4,.L0d95f28c
    sw	$a5,16384($zero)
    lw	$a1,1408($s0)
    move	$a0,$zero
    move	$a3,$a1
    nop
    nop
    nop
.L0d95e690:
    # Line 526
    lwc1	$f0,92($a3)
    # Line 525
    lwc1	$f1,88($a3)
    # Line 524
    lwc1	$f2,84($a3)
    # Line 523
    lwc1	$f3,80($a3)
    # Line 522
    lwc1	$f4,76($a3)
    # Line 521
    lwc1	$f5,72($a3)
    # Line 520
    lwc1	$f6,68($a3)
    # Line 519
    lwc1	$f7,64($a3)
    # Line 518
    lwc1	$f8,60($a3)
    # Line 517
    lwc1	$f9,56($a3)
    # Line 515
    lwc1	$f11,48($a3)
    # Line 516
    lwc1	$f10,52($a3)
    # Line 515
    swc1	$f11,16384($zero)
    # Line 516
    swc1	$f10,16384($zero)
    # Line 517
    swc1	$f9,16384($zero)
    # Line 518
    swc1	$f8,16384($zero)
    # Line 519
    swc1	$f7,16384($zero)
    # Line 520
    swc1	$f6,16384($zero)
    # Line 521
    swc1	$f5,16384($zero)
    # Line 522
    swc1	$f4,16384($zero)
    # Line 523
    swc1	$f3,16384($zero)
    # Line 514
    addiu	$a0,$a0,1
    # Line 524
    swc1	$f2,16384($zero)
    # Line 514
    slt	$a6,$a0,$a4
    # Line 525
    swc1	$f1,16384($zero)
    # Line 514
    addiu	$a3,$a3,116
    bnez	$a6,.L0d95e690
    # Line 526
    swc1	$f0,16384($zero)
.L0d95e700:
    # Line 528
    lw	$t9,12($s1)
    jalr	$t9
    move	$a0,$s1
    # Line 529
    sw	$zero,1408($s0)
    lw	$a1,12728($s1)
    lw	$a0,12732($s1)
    # Line 533
    li	$t0,200
.L0d95e71c:
    sw	$t0,16384($zero)
    # Line 534
    sltu	$a7,$a1,$a0
    # Line 533
    sw	$zero,16384($zero)
    # Line 534
    beqz	$a7,.L0d95f134
    sd	$s2,48($sp)
    # Line 537
    lui	$a1,0x1
    addu	$s2,$a1,$s1
    lw	$t3,-24280($s2)
    addiu	$s0,$t3,-4
    sw	$s0,-24280($s2)
    lw	$t3,-4($t3)
    sw	$zero,0($t3)
    # Line 539
    lw	$s0,-4($a0)
    # Line 541
    lw	$s2,0($s0)
    # Line 542
    andi	$t2,$s2,0x1
    # Line 537
    sd	$t3,8($sp)
    # Line 542
    addiu	$t1,$a0,-4
    beqz	$t2,.L0d95e7b8
    sw	$t1,12732($s1)
    # Line 548
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    addiu	$a0,$s0,16
    # Line 549
    # lw $t9, -18248($gp) # &glIndexf
    jal	glIndexf
    lwc1	$f12,44($s0)
    # Line 550
    # lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    addiu	$a0,$s0,32
    # Line 555
    # lw $t9, -17948($gp) # &glTexCoord4fv
    jal	glTexCoord4fv
    addiu	$a0,$s0,48
    # Line 556
    # lw $t9, -18268($gp) # &glEdgeFlag
    jal	glEdgeFlag
    lbu	$a0,277($s0)
    # Line 557
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,14320
    bal __glkonResolveContext
    addiu	$a0,$s0,64
    lui	$a1,0x1
.L0d95e7b8:
    andi	$ra,$s2,0x2000
    and	$at,$a1,$s2
    beqz	$ra,.L0d95f150
    sd	$at,0($sp)
    # Line 570
    lw	$a2,1616($s0)
    # Line 572
    # lw $t9, -31740($gp) # &__glkon_EnableTexture
    # Line 570
    sw	$a2,1792($s1)
    # Line 572
    li	$a0,3552
    lui	$a1,0x1
    # Line 571
    lw	$v0,1620($s0)
    # Line 572
    and	$a1,$a1,$a2
    jal	__glkon_EnableTexture
    # Line 571
    sw	$v0,1796($s1)
    # Line 573
    # lw $t9, -31740($gp) # &__glkon_EnableTexture
    lw	$a2,1792($s1)
    li	$a0,3553
    lui	$a1,0x2
    jal	__glkon_EnableTexture
    and	$a1,$a1,$a2
    # Line 574
    # lw $t9, -31740($gp) # &__glkon_EnableTexture
    lw	$a1,1792($s1)
    li	$a0,0x806f
    lui	$a2,0x4000
    jal	__glkon_EnableTexture
    and	$a1,$a1,$a2
    # Line 575
    # lw $t9, -31184($gp) # &ValidateHistogramSink
    jal	ValidateHistogramSink
    nop
    ld	$a3,0($sp)
    beqz	$a3,.L0d95f294
    addiu	$a7,$s0,1760
.L0d95e834:
    addiu	$a5,$s1,1936
    li	$a6,0x8
    # Line 602
    li	$a0,12
    move	$a1,$zero
    addiu	$a3,$s1,1932
    addiu	$a4,$s0,1756
    nop
.L0d95e850:
    addu	$t1,$a1,$a4
    addu	$t2,$a1,$a3
    lw	$t1,0($t1)
    addiu	$a0,$a0,-2
    addu	$t0,$a1,$a7
    sw	$t1,0($t2)
    addu	$t1,$a1,$a5
    lw	$t0,0($t0)
    addu	$a1,$a1,$a6
    bgtz	$a0,.L0d95e850
    sw	$t0,0($t1)
    # Line 603
    lui	$at,0x80
    lw	$t9,1792($s1)
    nor	$ra,$at,$zero
    and	$t9,$t9,$ra
    sw	$t9,1792($s1)
    # Line 604
    lw	$ra,1616($s0)
    and	$ra,$ra,$at
    or	$t9,$t9,$ra
    sw	$t9,1792($s1)
    # Line 605
    lw	$t8,1632($s0)
    sw	$t8,1808($s1)
    # Line 606
    lw	$t3,1636($s0)
    sw	$t3,1812($s1)
    lw	$t2,1632($s0)
    andi	$t2,$t2,0x1
    beqz	$t2,.L0d95f164
    # Line 607
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3472
.L0d95e8cc:
    lw	$at,1632($s0)
    andi	$at,$at,0x2
    beqz	$at,.L0d95f174
    # Line 608
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3473
.L0d95e8e8:
    lw	$v0,1632($s0)
    andi	$v0,$v0,0x4
    beqz	$v0,.L0d95f184
    # Line 609
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3474
.L0d95e904:
    lw	$v1,1632($s0)
    andi	$v1,$v1,0x8
    beqz	$v1,.L0d95f194
    # Line 610
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3475
.L0d95e920:
    lw	$a0,1632($s0)
    andi	$a0,$a0,0x10
    beqz	$a0,.L0d95f1a4
    # Line 611
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3476
.L0d95e93c:
    lw	$a1,1632($s0)
    andi	$a1,$a1,0x20
    beqz	$a1,.L0d95f1b4
    # Line 612
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3477
.L0d95e958:
    lw	$a2,1632($s0)
    andi	$a2,$a2,0x40
    beqz	$a2,.L0d95f1c4
    # Line 613
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3478
.L0d95e974:
    lw	$a3,1632($s0)
    andi	$a3,$a3,0x80
    beqz	$a3,.L0d95f1d4
    # Line 614
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3479
.L0d95e990:
    lw	$a4,1632($s0)
    andi	$a4,$a4,0x100
    beqz	$a4,.L0d95f1e4
    # Line 615
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3480
.L0d95e9ac:
    lw	$a5,1636($s0)
    andi	$a5,$a5,0x1
    beqz	$a5,.L0d95f1f4
    # Line 617
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3504
.L0d95e9c8:
    lw	$a6,1636($s0)
    andi	$a6,$a6,0x2
    beqz	$a6,.L0d95f204
    # Line 618
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3505
.L0d95e9e4:
    lw	$a7,1636($s0)
    andi	$a7,$a7,0x4
    beqz	$a7,.L0d95f214
    # Line 619
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3506
.L0d95ea00:
    lw	$t0,1636($s0)
    andi	$t0,$t0,0x8
    beqz	$t0,.L0d95f224
    # Line 620
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3507
.L0d95ea1c:
    lw	$t1,1636($s0)
    andi	$t1,$t1,0x10
    beqz	$t1,.L0d95f234
    # Line 621
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3508
.L0d95ea38:
    lw	$t2,1636($s0)
    andi	$t2,$t2,0x20
    beqz	$t2,.L0d95f244
    # Line 622
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3509
.L0d95ea54:
    lw	$t3,1636($s0)
    andi	$t3,$t3,0x40
    beqz	$t3,.L0d95f254
    # Line 623
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3510
.L0d95ea70:
    lw	$t8,1636($s0)
    andi	$t8,$t8,0x80
    beqz	$t8,.L0d95f264
    # Line 624
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3511
.L0d95ea8c:
    lw	$t9,1636($s0)
    andi	$t9,$t9,0x100
    beqz	$t9,.L0d95f274
    # Line 625
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3512
.L0d95eaa8:
    # Line 626
    # lw $t9, -31340($gp) # &__glKonUpdateEvalAttributes
    jal	__glKonUpdateEvalAttributes
    move	$a0,$s1
    andi	$ra,$s2,0x80
.L0d95eab8:
    beqz	$ra,.L0d95eb4c
    # Line 636
    andi	$a1,$s2,0x40
    # Line 629
    # lw $t9, -17820($gp) # &glFogf
    lwc1	$f13,1432($s0)
    jal	glFogf
    li	$a0,2914
    # Line 630
    # lw $t9, -17820($gp) # &glFogf
    lwc1	$f13,1436($s0)
    jal	glFogf
    li	$a0,2915
    # Line 631
    # lw $t9, -17820($gp) # &glFogf
    lwc1	$f13,1440($s0)
    jal	glFogf
    li	$a0,2916
    # Line 632
    # lw $t9, -17812($gp) # &glFogi
    lw	$a1,1412($s0)
    jal	glFogi
    li	$a0,2917
    # Line 633
    # lw $t9, -17816($gp) # &glFogfv
    addiu	$a1,$s0,1416
    jal	glFogfv
    li	$a0,2918
    # Line 634
    # lw $t9, -17820($gp) # &glFogf
    lwc1	$f13,1448($s0)
    jal	glFogf
    li	$a0,2913
    # Line 635
    # lw $t9, -17816($gp) # &glFogfv
    ld	$a1,8($sp)
    li	$a0,0x8199
    jal	glFogfv
    addiu	$a1,$a1,4104
    # Line 636
    # lw $t9, -16844($gp) # &glFogFuncSGIS
    ld	$a0,8($sp)
    addiu	$a1,$a0,8
    jal	glFogFuncSGIS
    lw	$a0,4($a0)
    andi	$a1,$s2,0x40
.L0d95eb4c:
    beqz	$a1,.L0d95ec48
    # Line 653
    lui	$a2,0x2
    # Line 641
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1248
    li	$a1,4608
    jal	glMaterialfv
    li	$a0,1028
    # Line 642
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1264
    li	$a1,4609
    jal	glMaterialfv
    li	$a0,1028
    # Line 643
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1280
    li	$a1,4610
    jal	glMaterialfv
    li	$a0,1028
    # Line 644
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1296
    li	$a1,5632
    jal	glMaterialfv
    li	$a0,1028
    # Line 645
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1312
    li	$a1,5633
    jal	glMaterialfv
    li	$a0,1028
    # Line 646
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1316
    li	$a1,5635
    jal	glMaterialfv
    li	$a0,1028
    # Line 648
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1328
    li	$a1,4608
    jal	glMaterialfv
    li	$a0,1029
    # Line 649
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1344
    li	$a1,4609
    jal	glMaterialfv
    li	$a0,1029
    # Line 650
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1360
    li	$a1,4610
    jal	glMaterialfv
    li	$a0,1029
    # Line 651
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1376
    li	$a1,5632
    jal	glMaterialfv
    li	$a0,1029
    # Line 652
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1392
    li	$a1,5633
    jal	glMaterialfv
    li	$a0,1029
    # Line 653
    # lw $t9, -17752($gp) # &glMaterialfv
    addiu	$a2,$s0,1396
    li	$a1,5635
    jal	glMaterialfv
    li	$a0,1029
    lui	$a2,0x2
.L0d95ec48:
    and	$a2,$a2,$s2
    beqz	$a2,.L0d95ec60
    # Line 659
    andi	$a4,$s2,0x20
    lw	$a3,1804($s0)
    sw	$a3,1980($s1)
    andi	$a4,$s2,0x20
.L0d95ec60:
    beqz	$a4,.L0d95ec7c
    # Line 662
    andi	$ra,$s2,0x8
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,14480
    bal __glkonResolveContext
    move	$a0,$s0
    andi	$ra,$s2,0x8
.L0d95ec7c:
    beqz	$ra,.L0d95ec98
    # Line 667
    andi	$at,$s2,0x10
    # lw $t9, -17200($gp) # &glPolygonOffsetEXT
    lwc1	$f13,328($s0)
    jal	glPolygonOffsetEXT
    lwc1	$f12,324($s0)
    andi	$at,$s2,0x10
.L0d95ec98:
    beqz	$at,.L0d95ecfc
    # Line 672
    dsll32	$a0,$s2,0xd
    addiu	$a4,$s0,344
    addiu	$a0,$s1,520
    li	$a7,0x10
    # Line 671
    li	$a1,16
    move	$a3,$zero
    addiu	$a5,$s1,512
    addiu	$a6,$s0,336
    nop
.L0d95ecc0:
    addu	$v1,$a3,$a6
    addu	$a2,$a3,$a5
    ld	$v1,0($v1)
    addiu	$a1,$a1,-2
    addu	$v0,$a3,$a4
    sd	$v1,0($a2)
    addu	$v1,$a3,$a0
    ld	$v0,0($v0)
    addu	$a3,$a3,$a7
    bgtz	$a1,.L0d95ecc0
    sd	$v0,0($v1)
    # Line 672
    # lw $t9, -32228($gp) # &__glkonConvertPolygonStipple
    jal	__glkonConvertPolygonStipple
    move	$a0,$s1
    dsll32	$a0,$s2,0xd
.L0d95ecfc:
    bgez	$a0,.L0d95f0f4
    # Line 811
    andi	$a4,$s2,0x1000
    # Line 680
    # lw $t9, -17684($gp) # &glTexEnviv
    li	$a1,8704
    lw	$a2,2308($s0)
    jal	glTexEnviv
    li	$a0,8960
    # Line 682
    # lw $t9, -17692($gp) # &glTexEnvfv
    lw	$a2,2308($s0)
    li	$a1,8705
    li	$a0,8960
    jal	glTexEnvfv
    addiu	$a2,$a2,4
    # Line 684
    # lw $t9, -17692($gp) # &glTexEnvfv
    lw	$a2,2308($s0)
    li	$a1,0x80be
    li	$a0,8960
    jal	glTexEnvfv
    addiu	$a2,$a2,20
    # Line 686
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,2308($s0)
    # Line 687
    sw	$zero,2308($s0)
    # Line 809
    lwc1	$f12,2300($s0)
    # Line 808
    lwc1	$f13,2176($s0)
    # Line 807
    lwc1	$f14,2052($s0)
    # Line 806
    lwc1	$f15,1928($s0)
    # Line 805
    lwc1	$f16,2296($s0)
    # Line 804
    lwc1	$f17,2172($s0)
    # Line 803
    lwc1	$f18,2048($s0)
    # Line 802
    lwc1	$f19,1924($s0)
    # Line 801
    lwc1	$f21,2292($s0)
    # Line 800
    lwc1	$f23,2168($s0)
    # Line 799
    lwc1	$f25,2044($s0)
    # Line 798
    lwc1	$f27,1920($s0)
    # Line 797
    lwc1	$f29,2284($s0)
    # Line 796
    lwc1	$f31,2160($s0)
    # Line 795
    lwc1	$f0,2036($s0)
    # Line 794
    lwc1	$f1,1912($s0)
    # Line 793
    lwc1	$f2,2280($s0)
    # Line 792
    lwc1	$f3,2156($s0)
    # Line 791
    lwc1	$f4,2032($s0)
    # Line 790
    lwc1	$f5,1908($s0)
    # Line 789
    lwc1	$f6,2276($s0)
    # Line 788
    lwc1	$f7,2152($s0)
    # Line 811
    # lw $t9, -31656($gp) # &__glKonPopTextureAttrib
    # Line 696
    lwc1	$f10,1824($s0)
    # Line 695
    lwc1	$f11,1820($s0)
    # Line 692
    li	$a3,470
    sw	$a3,16384($zero)
    sw	$zero,16384($zero)
    # Line 693
    lwc1	$f9,1812($s0)
    # Line 694
    lwc1	$f8,1816($s0)
    # Line 693
    swc1	$f9,16384($zero)
    # Line 694
    swc1	$f8,16384($zero)
    # Line 695
    swc1	$f11,16384($zero)
    # Line 696
    swc1	$f10,16384($zero)
    # Line 700
    lwc1	$f10,1948($s0)
    # Line 699
    lwc1	$f11,1944($s0)
    # Line 697
    lwc1	$f9,1936($s0)
    # Line 698
    lwc1	$f8,1940($s0)
    # Line 697
    swc1	$f9,16384($zero)
    # Line 698
    swc1	$f8,16384($zero)
    # Line 699
    swc1	$f11,16384($zero)
    # Line 700
    swc1	$f10,16384($zero)
    # Line 704
    lwc1	$f10,2072($s0)
    # Line 703
    lwc1	$f11,2068($s0)
    # Line 701
    lwc1	$f9,2060($s0)
    # Line 702
    lwc1	$f8,2064($s0)
    # Line 701
    swc1	$f9,16384($zero)
    # Line 702
    swc1	$f8,16384($zero)
    # Line 703
    swc1	$f11,16384($zero)
    # Line 704
    swc1	$f10,16384($zero)
    # Line 708
    lwc1	$f10,2196($s0)
    # Line 707
    lwc1	$f11,2192($s0)
    # Line 705
    lwc1	$f9,2184($s0)
    # Line 706
    lwc1	$f8,2188($s0)
    # Line 705
    swc1	$f9,16384($zero)
    # Line 706
    swc1	$f8,16384($zero)
    # Line 707
    swc1	$f11,16384($zero)
    # Line 708
    swc1	$f10,16384($zero)
    # Line 713
    lwc1	$f10,1840($s0)
    # Line 712
    lwc1	$f11,1836($s0)
    # Line 710
    lwc1	$f9,1828($s0)
    # Line 711
    lwc1	$f8,1832($s0)
    # Line 710
    swc1	$f9,16384($zero)
    # Line 711
    swc1	$f8,16384($zero)
    # Line 712
    swc1	$f11,16384($zero)
    # Line 713
    swc1	$f10,16384($zero)
    # Line 717
    lwc1	$f10,1964($s0)
    # Line 716
    lwc1	$f11,1960($s0)
    # Line 714
    lwc1	$f9,1952($s0)
    # Line 715
    lwc1	$f8,1956($s0)
    # Line 714
    swc1	$f9,16384($zero)
    # Line 715
    swc1	$f8,16384($zero)
    # Line 716
    swc1	$f11,16384($zero)
    # Line 717
    swc1	$f10,16384($zero)
    # Line 721
    lwc1	$f10,2088($s0)
    # Line 720
    lwc1	$f11,2084($s0)
    # Line 718
    lwc1	$f9,2076($s0)
    # Line 719
    lwc1	$f8,2080($s0)
    # Line 718
    swc1	$f9,16384($zero)
    # Line 719
    swc1	$f8,16384($zero)
    # Line 720
    swc1	$f11,16384($zero)
    # Line 721
    swc1	$f10,16384($zero)
    # Line 725
    lwc1	$f10,2212($s0)
    # Line 724
    lwc1	$f11,2208($s0)
    # Line 722
    lwc1	$f9,2200($s0)
    # Line 723
    lwc1	$f8,2204($s0)
    # Line 722
    swc1	$f9,16384($zero)
    # Line 723
    swc1	$f8,16384($zero)
    # Line 724
    swc1	$f11,16384($zero)
    # Line 725
    swc1	$f10,16384($zero)
    # Line 730
    lwc1	$f10,1856($s0)
    # Line 729
    lwc1	$f11,1852($s0)
    # Line 727
    lwc1	$f9,1844($s0)
    # Line 728
    lwc1	$f8,1848($s0)
    # Line 727
    swc1	$f9,16384($zero)
    # Line 728
    swc1	$f8,16384($zero)
    # Line 729
    swc1	$f11,16384($zero)
    # Line 730
    swc1	$f10,16384($zero)
    # Line 734
    lwc1	$f10,1980($s0)
    # Line 733
    lwc1	$f11,1976($s0)
    # Line 731
    lwc1	$f9,1968($s0)
    # Line 732
    lwc1	$f8,1972($s0)
    # Line 731
    swc1	$f9,16384($zero)
    # Line 732
    swc1	$f8,16384($zero)
    # Line 733
    swc1	$f11,16384($zero)
    # Line 734
    swc1	$f10,16384($zero)
    # Line 738
    lwc1	$f10,2104($s0)
    # Line 737
    lwc1	$f11,2100($s0)
    # Line 735
    lwc1	$f9,2092($s0)
    # Line 736
    lwc1	$f8,2096($s0)
    # Line 735
    swc1	$f9,16384($zero)
    # Line 736
    swc1	$f8,16384($zero)
    # Line 737
    swc1	$f11,16384($zero)
    # Line 738
    swc1	$f10,16384($zero)
    # Line 742
    lwc1	$f10,2228($s0)
    # Line 741
    lwc1	$f11,2224($s0)
    # Line 739
    lwc1	$f9,2216($s0)
    # Line 740
    lwc1	$f8,2220($s0)
    # Line 739
    swc1	$f9,16384($zero)
    # Line 740
    swc1	$f8,16384($zero)
    # Line 741
    swc1	$f11,16384($zero)
    # Line 742
    swc1	$f10,16384($zero)
    # Line 747
    lwc1	$f10,1872($s0)
    # Line 746
    lwc1	$f11,1868($s0)
    # Line 744
    lwc1	$f9,1860($s0)
    # Line 745
    lwc1	$f8,1864($s0)
    # Line 744
    swc1	$f9,16384($zero)
    # Line 745
    swc1	$f8,16384($zero)
    # Line 746
    swc1	$f11,16384($zero)
    # Line 747
    swc1	$f10,16384($zero)
    # Line 751
    lwc1	$f10,1996($s0)
    # Line 750
    lwc1	$f11,1992($s0)
    # Line 748
    lwc1	$f9,1984($s0)
    # Line 749
    lwc1	$f8,1988($s0)
    # Line 748
    swc1	$f9,16384($zero)
    # Line 749
    swc1	$f8,16384($zero)
    # Line 750
    swc1	$f11,16384($zero)
    # Line 751
    swc1	$f10,16384($zero)
    # Line 755
    lwc1	$f10,2120($s0)
    # Line 754
    lwc1	$f11,2116($s0)
    # Line 752
    lwc1	$f9,2108($s0)
    # Line 753
    lwc1	$f8,2112($s0)
    # Line 752
    swc1	$f9,16384($zero)
    # Line 753
    swc1	$f8,16384($zero)
    # Line 754
    swc1	$f11,16384($zero)
    # Line 755
    swc1	$f10,16384($zero)
    # Line 759
    lwc1	$f10,2244($s0)
    # Line 758
    lwc1	$f11,2240($s0)
    # Line 756
    lwc1	$f9,2232($s0)
    # Line 757
    lwc1	$f8,2236($s0)
    # Line 756
    swc1	$f9,16384($zero)
    # Line 757
    swc1	$f8,16384($zero)
    # Line 758
    swc1	$f11,16384($zero)
    # Line 759
    swc1	$f10,16384($zero)
    # Line 764
    lwc1	$f10,2248($s0)
    # Line 763
    lwc1	$f11,2124($s0)
    # Line 761
    lwc1	$f9,1876($s0)
    # Line 762
    lwc1	$f8,2000($s0)
    # Line 761
    swc1	$f9,16384($zero)
    # Line 762
    swc1	$f8,16384($zero)
    # Line 763
    swc1	$f11,16384($zero)
    # Line 764
    swc1	$f10,16384($zero)
    # Line 768
    lwc1	$f10,2252($s0)
    # Line 767
    lwc1	$f11,2128($s0)
    # Line 765
    lwc1	$f9,1880($s0)
    # Line 766
    lwc1	$f8,2004($s0)
    # Line 765
    swc1	$f9,16384($zero)
    # Line 766
    swc1	$f8,16384($zero)
    # Line 767
    swc1	$f11,16384($zero)
    # Line 768
    swc1	$f10,16384($zero)
    # Line 772
    lwc1	$f10,2256($s0)
    # Line 771
    lwc1	$f11,2132($s0)
    # Line 769
    lwc1	$f9,1884($s0)
    # Line 770
    lwc1	$f8,2008($s0)
    # Line 769
    swc1	$f9,16384($zero)
    # Line 770
    swc1	$f8,16384($zero)
    # Line 771
    swc1	$f11,16384($zero)
    # Line 772
    swc1	$f10,16384($zero)
    # Line 776
    lwc1	$f10,2264($s0)
    # Line 775
    lwc1	$f11,2140($s0)
    # Line 773
    lwc1	$f9,1892($s0)
    # Line 774
    lwc1	$f8,2016($s0)
    # Line 773
    swc1	$f9,16384($zero)
    # Line 774
    swc1	$f8,16384($zero)
    # Line 775
    swc1	$f11,16384($zero)
    # Line 776
    swc1	$f10,16384($zero)
    # Line 780
    lwc1	$f10,2268($s0)
    # Line 779
    lwc1	$f11,2144($s0)
    # Line 777
    lwc1	$f9,1896($s0)
    # Line 778
    lwc1	$f8,2020($s0)
    # Line 777
    swc1	$f9,16384($zero)
    # Line 778
    swc1	$f8,16384($zero)
    # Line 779
    swc1	$f11,16384($zero)
    # Line 780
    swc1	$f10,16384($zero)
    # Line 784
    lwc1	$f10,2272($s0)
    # Line 783
    lwc1	$f11,2148($s0)
    # Line 781
    lwc1	$f9,1900($s0)
    # Line 782
    lwc1	$f8,2024($s0)
    # Line 781
    swc1	$f9,16384($zero)
    # Line 782
    swc1	$f8,16384($zero)
    # Line 783
    swc1	$f11,16384($zero)
    # Line 784
    swc1	$f10,16384($zero)
    # Line 786
    lwc1	$f9,1904($s0)
    # Line 787
    lwc1	$f8,2028($s0)
    # Line 786
    swc1	$f9,16384($zero)
    # Line 787
    swc1	$f8,16384($zero)
    # Line 788
    swc1	$f7,16384($zero)
    # Line 789
    swc1	$f6,16384($zero)
    # Line 790
    swc1	$f5,16384($zero)
    # Line 791
    swc1	$f4,16384($zero)
    # Line 792
    swc1	$f3,16384($zero)
    # Line 793
    swc1	$f2,16384($zero)
    # Line 794
    swc1	$f1,16384($zero)
    # Line 795
    swc1	$f0,16384($zero)
    # Line 796
    swc1	$f31,16384($zero)
    # Line 797
    swc1	$f29,16384($zero)
    # Line 798
    swc1	$f27,16384($zero)
    # Line 799
    swc1	$f25,16384($zero)
    # Line 800
    swc1	$f23,16384($zero)
    # Line 801
    swc1	$f21,16384($zero)
    # Line 802
    swc1	$f19,16384($zero)
    # Line 803
    swc1	$f18,16384($zero)
    # Line 804
    swc1	$f17,16384($zero)
    # Line 805
    swc1	$f16,16384($zero)
    # Line 806
    swc1	$f15,16384($zero)
    # Line 807
    swc1	$f14,16384($zero)
    # Line 808
    swc1	$f13,16384($zero)
    # Line 811
    jal	__glKonPopTextureAttrib
    # Line 809
    swc1	$f12,16384($zero)
    # Line 811
    andi	$a4,$s2,0x1000
.L0d95f0f4:
    beqz	$a4,.L0d95f134
    # Line 821
    nop	# was lw $t9, -19580($gp) # &__glkon_datavn
    # Line 814
    lw	$a0,1572($s0)
    # Line 820
    li	$a5,458
    sw	$a5,16384($zero)
    # Line 821
    li	$a1,61
    jal	__glkon_datavn
    # Line 820
    sw	$zero,16384($zero)
    # Line 822
    lw	$t9,12($s1)
    move	$a0,$s1
    jalr	$t9
    lw	$a1,1572($s0)
    # Line 824
    # lw $t9, -16792($gp) # &glDeformSGIX
    lw	$a0,1612($s0)
    jal	glDeformSGIX
    # Line 823
    sw	$zero,1572($s0)
.L0d95f134:
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,16($sp)
    ld	$s2,48($sp)
    # Line 830
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95f150:
    # Line 598
    ld	$a6,0($sp)
    beqz	$a6,.L0d95f284
    nop
    b	.L0d95e834
    addiu	$a7,$s0,1760
.L0d95f164:
    # Line 607
    jalr	$t9
    li	$a0,3472
    b	.L0d95e8cc
    nop
.L0d95f174:
    # Line 608
    jalr	$t9
    li	$a0,3473
    b	.L0d95e8e8
    nop
.L0d95f184:
    # Line 609
    jalr	$t9
    li	$a0,3474
    b	.L0d95e904
    nop
.L0d95f194:
    # Line 610
    jalr	$t9
    li	$a0,3475
    b	.L0d95e920
    nop
.L0d95f1a4:
    # Line 611
    jalr	$t9
    li	$a0,3476
    b	.L0d95e93c
    nop
.L0d95f1b4:
    # Line 612
    jalr	$t9
    li	$a0,3477
    b	.L0d95e958
    nop
.L0d95f1c4:
    # Line 613
    jalr	$t9
    li	$a0,3478
    b	.L0d95e974
    nop
.L0d95f1d4:
    # Line 614
    jalr	$t9
    li	$a0,3479
    b	.L0d95e990
    nop
.L0d95f1e4:
    # Line 615
    jalr	$t9
    li	$a0,3480
    b	.L0d95e9ac
    nop
.L0d95f1f4:
    # Line 617
    jalr	$t9
    li	$a0,3504
    b	.L0d95e9c8
    nop
.L0d95f204:
    # Line 618
    jalr	$t9
    li	$a0,3505
    b	.L0d95e9e4
    nop
.L0d95f214:
    # Line 619
    jalr	$t9
    li	$a0,3506
    b	.L0d95ea00
    nop
.L0d95f224:
    # Line 620
    jalr	$t9
    li	$a0,3507
    b	.L0d95ea1c
    nop
.L0d95f234:
    # Line 621
    jalr	$t9
    li	$a0,3508
    b	.L0d95ea38
    nop
.L0d95f244:
    # Line 622
    jalr	$t9
    li	$a0,3509
    b	.L0d95ea54
    nop
.L0d95f254:
    # Line 623
    jalr	$t9
    li	$a0,3510
    b	.L0d95ea70
    nop
.L0d95f264:
    # Line 624
    jalr	$t9
    li	$a0,3511
    b	.L0d95ea8c
    nop
.L0d95f274:
    # Line 625
    jalr	$t9
    li	$a0,3512
    b	.L0d95eaa8
    nop
.L0d95f284:
    b	.L0d95eab8
    # Line 626
    andi	$ra,$s2,0x80
.L0d95f28c:
    b	.L0d95e700
    # Line 514
    lw	$a1,1408($s0)
.L0d95f294:
    # Line 577
    lw	$t1,1632($s0)
    sw	$t1,1808($s1)
    # Line 578
    lw	$t0,1636($s0)
    sw	$t0,1812($s1)
    lw	$a7,1632($s0)
    andi	$a7,$a7,0x1
    beqz	$a7,.L0d95f4a8
    # Line 579
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3472
    lw	$t2,1632($s0)
.L0d95f2c0:
    andi	$t2,$t2,0x2
    beqz	$t2,.L0d95f4bc
    # Line 580
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3473
    lw	$t3,1632($s0)
.L0d95f2dc:
    andi	$t3,$t3,0x4
    beqz	$t3,.L0d95f4cc
    # Line 581
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3474
    lw	$t8,1632($s0)
.L0d95f2f8:
    andi	$t8,$t8,0x8
    beqz	$t8,.L0d95f4dc
    # Line 582
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3475
    lw	$t9,1632($s0)
.L0d95f310:
    andi	$t9,$t9,0x10
    beqz	$t9,.L0d95f4f0
    # Line 583
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3476
    lw	$ra,1632($s0)
.L0d95f328:
    andi	$ra,$ra,0x20
    beqz	$ra,.L0d95f504
    # Line 584
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3477
    lw	$at,1632($s0)
.L0d95f340:
    andi	$at,$at,0x40
    beqz	$at,.L0d95f518
    # Line 585
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3478
    lw	$v0,1632($s0)
.L0d95f35c:
    andi	$v0,$v0,0x80
    beqz	$v0,.L0d95f528
    # Line 586
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3479
    lw	$v1,1632($s0)
.L0d95f374:
    andi	$v1,$v1,0x100
    beqz	$v1,.L0d95f53c
    # Line 587
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3480
    lw	$a0,1636($s0)
.L0d95f38c:
    andi	$a0,$a0,0x1
    beqz	$a0,.L0d95f550
    # Line 589
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3504
    lw	$a1,1636($s0)
.L0d95f3a4:
    andi	$a1,$a1,0x2
    beqz	$a1,.L0d95f564
    # Line 590
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3505
    lw	$a2,1636($s0)
.L0d95f3bc:
    andi	$a2,$a2,0x4
    beqz	$a2,.L0d95f578
    # Line 591
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3506
    lw	$a3,1636($s0)
.L0d95f3d4:
    andi	$a3,$a3,0x8
    beqz	$a3,.L0d95f58c
    # Line 592
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3507
    lw	$a4,1636($s0)
.L0d95f3f0:
    andi	$a4,$a4,0x10
    beqz	$a4,.L0d95f59c
    # Line 593
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3508
    lw	$a5,1636($s0)
.L0d95f40c:
    andi	$a5,$a5,0x20
    beqz	$a5,.L0d95f5ac
    # Line 594
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3509
    lw	$a6,1636($s0)
.L0d95f428:
    andi	$a6,$a6,0x40
    beqz	$a6,.L0d95f5bc
    # Line 595
    nop	# was lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3510
    lw	$a7,1636($s0)
.L0d95f440:
    andi	$a7,$a7,0x80
    beqz	$a7,.L0d95f5d0
    # Line 596
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3511
    lw	$t0,1636($s0)
.L0d95f45c:
    andi	$t0,$t0,0x100
    beqz	$t0,.L0d95f5e0
    # Line 597
    nop	# was lw $t9, -32388($gp) # &__glkonim_Disable
    # lw $t9, -32392($gp) # &__glkonim_Enable
    jal	__glkonim_Enable
    li	$a0,3512
    # Line 598
    # lw $t9, -31340($gp) # &__glKonUpdateEvalAttributes
.L0d95f478:
    jal	__glKonUpdateEvalAttributes
    move	$a0,$s1
    ld	$t1,0($sp)
    bnez	$t1,.L0d95e834
    addiu	$a7,$s0,1760
    b	.L0d95eab8
    # Line 626
    andi	$ra,$s2,0x80
.L0d95f494:
    # Line 494
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95f134
    sd	$s2,48($sp)
.L0d95f4a8:
    # Line 579
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3472
    b	.L0d95f2c0
    lw	$t2,1632($s0)
.L0d95f4bc:
    # Line 580
    jalr	$t9
    li	$a0,3473
    b	.L0d95f2dc
    lw	$t3,1632($s0)
.L0d95f4cc:
    # Line 581
    jalr	$t9
    li	$a0,3474
    b	.L0d95f2f8
    lw	$t8,1632($s0)
.L0d95f4dc:
    # Line 582
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3475
    b	.L0d95f310
    lw	$t9,1632($s0)
.L0d95f4f0:
    # Line 583
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3476
    b	.L0d95f328
    lw	$ra,1632($s0)
.L0d95f504:
    # Line 584
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3477
    b	.L0d95f340
    lw	$at,1632($s0)
.L0d95f518:
    # Line 585
    jalr	$t9
    li	$a0,3478
    b	.L0d95f35c
    lw	$v0,1632($s0)
.L0d95f528:
    # Line 586
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3479
    b	.L0d95f374
    lw	$v1,1632($s0)
.L0d95f53c:
    # Line 587
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3480
    b	.L0d95f38c
    lw	$a0,1636($s0)
.L0d95f550:
    # Line 589
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3504
    b	.L0d95f3a4
    lw	$a1,1636($s0)
.L0d95f564:
    # Line 590
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3505
    b	.L0d95f3bc
    lw	$a2,1636($s0)
.L0d95f578:
    # Line 591
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3506
    b	.L0d95f3d4
    lw	$a3,1636($s0)
.L0d95f58c:
    # Line 592
    jalr	$t9
    li	$a0,3507
    b	.L0d95f3f0
    lw	$a4,1636($s0)
.L0d95f59c:
    # Line 593
    jalr	$t9
    li	$a0,3508
    b	.L0d95f40c
    lw	$a5,1636($s0)
.L0d95f5ac:
    # Line 594
    jalr	$t9
    li	$a0,3509
    b	.L0d95f428
    lw	$a6,1636($s0)
.L0d95f5bc:
    # Line 595
    # lw $t9, -32388($gp) # &__glkonim_Disable
    jal	__glkonim_Disable
    li	$a0,3510
    b	.L0d95f440
    lw	$a7,1636($s0)
.L0d95f5d0:
    # Line 596
    jalr	$t9
    li	$a0,3511
    b	.L0d95f45c
    lw	$t0,1636($s0)
.L0d95f5e0:
    # Line 597
    jalr	$t9
    li	$a0,3512
    b	.L0d95f478
    # Line 598
    nop	# was lw $t9, -31340($gp) # &__glKonUpdateEvalAttributes
.end __glkonim_PopAttrib

# Function: __glkonim_PushClientAttrib
# Declared: Line 833 (Source lines: 833-856)
# Address: 0x0d95f5f0 - 0x0d95f8a4 (Size: 692 bytes, Frame: 192)
.globl __glkonim_PushClientAttrib
.ent __glkonim_PushClientAttrib
__glkonim_PushClientAttrib:
    # Line 833
    addiu	$sp,$sp,-64
    sd	$s0,8($sp)
    # Line 836
    lw	$s0,4112($zero)
    sd	$s4,24($sp)
    sd	$ra,32($sp)
    sd	$s1,40($sp)
    lw	$at,4120($zero)
    # Line 833
    sd	$s2,0($sp)
    # Line 836
    li	$v0,1
    # Line 833
    lui	$v1,0x13
    move	$s2,$a0
    sd	$s3,48($sp)
    addiu	$v1,$v1,6632
    sd	$gp,16($sp)
    # Line 836
    beq	$at,$v0,.L0d95f890
    # Line 833
    addu	$gp,$t9,$v1
    # Line 838
    lw	$a1,3780($s0)
    lw	$a0,12736($s0)
    lw	$s1,12740($s0)
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    sltu	$a0,$s1,$a0
    beqz	$a0,.L0d95f860
    # Line 855
    nop	# was lw $t9, -28616($gp) # &__glSetError
    # Line 840
    lw	$a2,0($s1)
    beqz	$a2,.L0d95f870
    move	$a6,$a2
.L0d95f65c:
    # Line 846
    andi	$a4,$s2,0x1
    # Line 848
    addiu	$a2,$a6,4
    addiu	$a0,$s0,1144
    # Line 845
    sw	$s2,0($a6)
    # Line 846
    addiu	$a3,$s1,4
    beqz	$a4,.L0d95f730
    sw	$a3,12740($s0)
    # Line 848
    lw	$v0,1144($s0)
    sw	$v0,4($a6)
    lw	$at,1148($s0)
    sw	$at,8($a6)
    lw	$ra,1152($s0)
    sw	$ra,12($a6)
    lw	$t9,1156($s0)
    sw	$t9,16($a6)
    lw	$t8,1160($s0)
    sw	$t8,20($a6)
    lw	$t3,1164($s0)
    sw	$t3,24($a6)
    lw	$t2,1168($s0)
    sw	$t2,28($a6)
    lw	$t1,1172($s0)
    sw	$t1,32($a6)
    lw	$t0,1176($s0)
    sw	$t0,36($a6)
    lw	$a7,1180($s0)
    sw	$a7,40($a6)
    lw	$a5,1184($s0)
    sw	$a5,44($a6)
    # Line 849
    addiu	$a0,$s0,1188
    addiu	$a2,$a6,48
    lw	$ra,1188($s0)
    sw	$ra,48($a6)
    lw	$t9,1192($s0)
    sw	$t9,52($a6)
    lw	$t8,1196($s0)
    sw	$t8,56($a6)
    lw	$t3,1200($s0)
    sw	$t3,60($a6)
    lw	$t2,1204($s0)
    sw	$t2,64($a6)
    lw	$t1,1208($s0)
    sw	$t1,68($a6)
    lw	$t0,1212($s0)
    sw	$t0,72($a6)
    lw	$a7,1216($s0)
    sw	$a7,76($a6)
    lw	$a5,1220($s0)
    sw	$a5,80($a6)
    lw	$a1,1224($s0)
    sw	$a1,84($a6)
    lw	$v1,1228($s0)
    sw	$v1,88($a6)
.L0d95f730:
    # Line 852
    li	$a0,86
    # Line 849
    andi	$at,$s2,0x2
    # Line 852
    move	$a2,$zero
    addiu	$a4,$a6,92
    # Line 849
    beqz	$at,.L0d95f83c
    li	$a5,6
    # Line 852
    addiu	$a3,$s0,5088
    addiu	$t0,$a4,28
.L0d95f750:
    addiu	$a5,$a5,-1
    addu	$v0,$a2,$a3
    addiu	$a0,$a0,-1
    addu	$v1,$a2,$a4
    lw	$v0,0($v0)
    addiu	$a2,$a2,4
    bnez	$a5,.L0d95f750
    sw	$v0,0($v1)
    addiu	$s0,$a3,16
    addiu	$t9,$a4,16
    addiu	$t8,$a3,24
    addiu	$t3,$a4,24
    addiu	$t2,$a4,20
    addiu	$s2,$a3,20
    addiu	$a7,$a3,12
    addiu	$s1,$a3,8
    addiu	$ra,$a4,8
    addiu	$s3,$a4,4
    addiu	$s4,$a3,4
    li	$a6,0x20
    addiu	$t1,$a3,28
    addiu	$a5,$a4,12
    nop
    nop
.L0d95f7b0:
    addu	$v0,$a2,$a3
    addu	$v1,$a2,$a4
    lw	$v0,0($v0)
    addu	$at,$a2,$s4
    sw	$v0,0($v1)
    addu	$v0,$a2,$s3
    lw	$at,0($at)
    addu	$a1,$a2,$s1
    sw	$at,0($v0)
    addu	$at,$a2,$ra
    lw	$a1,0($a1)
    addu	$v1,$a2,$a7
    sw	$a1,0($at)
    addu	$a1,$a2,$a5
    lw	$v1,0($v1)
    addu	$v0,$a2,$s0
    sw	$v1,0($a1)
    addu	$v1,$a2,$t9
    lw	$v0,0($v0)
    addu	$at,$a2,$s2
    sw	$v0,0($v1)
    addu	$v0,$a2,$t2
    lw	$at,0($at)
    addu	$a1,$a2,$t8
    sw	$at,0($v0)
    addu	$at,$a2,$t3
    lw	$a1,0($a1)
    addiu	$a0,$a0,-8
    addu	$v1,$a2,$t1
    sw	$a1,0($at)
    addu	$a1,$a2,$t0
    lw	$v1,0($v1)
    addu	$a2,$a2,$a6
    bgtz	$a0,.L0d95f7b0
    sw	$v1,0($a1)
.L0d95f83c:
    ld	$s0,8($sp)
.L0d95f840:
    ld	$s3,48($sp)
    ld	$s4,24($sp)
    ld	$ra,32($sp)
    ld	$s2,0($sp)
    ld	$s1,40($sp)
    # Line 856
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95f860:
    # Line 855
    jal	__glSetError
    li	$a0,1283
    b	.L0d95f840
    ld	$s0,8($sp)
.L0d95f870:
    # Line 841
    lw	$t9,4($s0)
    move	$a0,$s0
    li	$a2,436
    jalr	$t9
    li	$a1,1
    move	$a6,$v0
    b	.L0d95f65c
    # Line 843
    sw	$v0,0($s1)
.L0d95f890:
    # Line 836
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95f840
    ld	$s0,8($sp)
.end __glkonim_PushClientAttrib

# Function: __glkonim_PopClientAttrib
# Declared: Line 861 (Source lines: 861-895)
# Address: 0x0d95f8b0 - 0x0d95fb5c (Size: 684 bytes, Frame: 192)
.globl __glkonim_PopClientAttrib
.ent __glkonim_PopClientAttrib
__glkonim_PopClientAttrib:
    # Line 865
    lw	$a6,4112($zero)
    # Line 861
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    sd	$s0,32($sp)
    sd	$s3,40($sp)
    sd	$ra,24($sp)
    # Line 865
    lw	$at,4120($zero)
    sd	$s2,48($sp)
    li	$v0,1
    # Line 861
    lui	$v1,0x13
    li	$a5,6
    sd	$s4,56($sp)
    addiu	$v1,$v1,5928
    sd	$gp,8($sp)
    # Line 865
    beq	$at,$v0,.L0d95fb48
    # Line 861
    addu	$gp,$t9,$v1
    # Line 867
    lw	$a1,12740($a6)
    lw	$a0,12736($a6)
    sltu	$a0,$a0,$a1
    beqz	$a0,.L0d95fb34
    # Line 872
    addiu	$a3,$a1,-4
    sd	$s5,0($sp)
    # Line 870
    lw	$s5,-4($a1)
    # Line 871
    lw	$a2,0($s5)
    # Line 872
    andi	$a4,$a2,0x1
    # Line 895
    ld	$gp,8($sp)
    # Line 874
    addiu	$a1,$s5,4
    # Line 872
    beqz	$a4,.L0d95f9e0
    sw	$a3,12740($a6)
    # Line 874
    addiu	$a3,$a6,1144
    lw	$v1,4($s5)
    sw	$v1,1144($a6)
    lw	$v0,8($s5)
    sw	$v0,1148($a6)
    lw	$at,12($s5)
    sw	$at,1152($a6)
    lw	$ra,16($s5)
    sw	$ra,1156($a6)
    lw	$t9,20($s5)
    sw	$t9,1160($a6)
    lw	$t8,24($s5)
    sw	$t8,1164($a6)
    lw	$t3,28($s5)
    sw	$t3,1168($a6)
    lw	$t2,32($s5)
    sw	$t2,1172($a6)
    lw	$t1,36($s5)
    sw	$t1,1176($a6)
    lw	$t0,40($s5)
    sw	$t0,1180($a6)
    lw	$a7,44($s5)
    sw	$a7,1184($a6)
    # Line 875
    addiu	$a3,$s5,48
    addiu	$a1,$a6,1188
    lw	$v0,48($s5)
    sw	$v0,1188($a6)
    lw	$at,52($s5)
    sw	$at,1192($a6)
    lw	$ra,56($s5)
    sw	$ra,1196($a6)
    lw	$t9,60($s5)
    sw	$t9,1200($a6)
    lw	$t8,64($s5)
    sw	$t8,1204($a6)
    lw	$t3,68($s5)
    sw	$t3,1208($a6)
    lw	$t2,72($s5)
    sw	$t2,1212($a6)
    lw	$t1,76($s5)
    sw	$t1,1216($a6)
    lw	$t0,80($s5)
    sw	$t0,1220($a6)
    lw	$a7,84($s5)
    sw	$a7,1224($a6)
    lw	$a0,88($s5)
    sw	$a0,1228($a6)
.L0d95f9e0:
    andi	$v1,$a2,0x2
    # Line 878
    move	$a2,$zero
    addiu	$a4,$s5,92
    addiu	$a3,$a6,5088
    # Line 875
    beqz	$v1,.L0d95faec
    # Line 878
    li	$a1,86
    nop
    nop
.L0d95fa00:
    addiu	$a5,$a5,-1
    addu	$a0,$a2,$a4
    addiu	$a1,$a1,-1
    addu	$a6,$a2,$a3
    lw	$a0,0($a0)
    addiu	$a2,$a2,4
    bnez	$a5,.L0d95fa00
    sw	$a0,0($a6)
    addiu	$s2,$a4,16
    addiu	$t9,$a3,16
    addiu	$t8,$a4,24
    addiu	$t3,$a3,24
    addiu	$s0,$a3,20
    addiu	$s3,$a4,20
    addiu	$a7,$a4,12
    addiu	$ra,$a4,8
    addiu	$s1,$a3,8
    addiu	$t2,$a3,4
    addiu	$s4,$a4,4
    addiu	$t0,$a3,28
    addiu	$t1,$a4,28
    li	$a6,0x20
    addiu	$a5,$a3,12
    nop
.L0d95fa60:
    addu	$a0,$a2,$a4
    addu	$at,$a2,$a3
    lw	$a0,0($a0)
    addu	$v1,$a2,$s4
    sw	$a0,0($at)
    addu	$a0,$a2,$t2
    lw	$v1,0($v1)
    addu	$v0,$a2,$ra
    sw	$v1,0($a0)
    addu	$v1,$a2,$s1
    lw	$v0,0($v0)
    addu	$at,$a2,$a7
    sw	$v0,0($v1)
    addu	$v0,$a2,$a5
    lw	$at,0($at)
    addu	$a0,$a2,$s2
    sw	$at,0($v0)
    addu	$at,$a2,$t9
    lw	$a0,0($a0)
    addu	$v1,$a2,$s3
    sw	$a0,0($at)
    addu	$a0,$a2,$s0
    lw	$v1,0($v1)
    addu	$v0,$a2,$t8
    sw	$v1,0($a0)
    addu	$v1,$a2,$t3
    lw	$v0,0($v0)
    addiu	$a1,$a1,-8
    addu	$at,$a2,$t1
    sw	$v0,0($v1)
    addu	$v0,$a2,$t0
    lw	$at,0($at)
    addu	$a2,$a2,$a6
    bgtz	$a1,.L0d95fa60
    sw	$at,0($v0)
.L0d95faec:
    ld	$s4,56($sp)
    ld	$s2,48($sp)
    ld	$s3,40($sp)
    ld	$s0,32($sp)
    ld	$ra,24($sp)
    ld	$s1,16($sp)
    # Line 886
    sw	$zero,0($s5)
    # Line 895
    ld	$s5,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95fb14:
    ld	$s1,16($sp)
    ld	$s0,32($sp)
    ld	$s3,40($sp)
    ld	$s2,48($sp)
    ld	$s4,56($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d95fb34:
    # Line 894
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1284
    b	.L0d95fb14
    ld	$ra,24($sp)
.L0d95fb48:
    # Line 865
    # lw $t9, -28616($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d95fb14
    ld	$ra,24($sp)
.end __glkonim_PopClientAttrib

# Function: __glkonCopyContext
# Declared: Line 900 (Source lines: 900-1417)
# Address: 0x0d95fb60 - 0x0d96163c (Size: 6876 bytes, Frame: 144)
.globl __glkonCopyContext
.ent __glkonCopyContext
__glkonCopyContext:
    # Line 900
    addiu	$sp,$sp,-272
    sd	$s6,192($sp)
    move	$s6,$a2
    lw	$v0,4112($zero)
    sd	$s7,184($sp)
    move	$s7,$a1
    lui	$at,0x13
    sd	$s5,168($sp)
    move	$s5,$a0
    addiu	$at,$at,5240
    sd	$gp,176($sp)
    beq	$v0,$a1,.L0d95fbb0
    addu	$gp,$t9,$at
    # Line 1417
    ld	$gp,176($sp)
    ld	$s5,168($sp)
    # Line 914
    li	$v0,1
    # Line 1417
    ld	$s6,192($sp)
    ld	$s7,184($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d95fbb0:
    # Line 914
    andi	$v0,$a2,0x200
    beqz	$v0,.L0d95fbcc
    sd	$ra,240($sp)
    # Line 920
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$a0,1648
    bal __glkonim_GetFloatv
    li	$a0,2944
.L0d95fbcc:
    sd	$s1,256($sp)
    andi	$v1,$s6,0x4000
    sd	$s0,248($sp)
    beqz	$v1,.L0d95fd00
    sd	$s2,208($sp)
    # Line 924
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1820
    bal __glkonim_GetIntegerv
    li	$a0,3009
    # Line 925
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1824
    bal __glkonim_GetFloatv
    li	$a0,3010
    # Line 926
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1828
    bal __glkonim_GetIntegerv
    li	$a0,3041
    # Line 927
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1832
    bal __glkonim_GetIntegerv
    li	$a0,3040
    # Line 928
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1856
    bal __glkonim_GetIntegerv
    li	$a0,3056
    # Line 930
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1888
    bal __glkonim_GetIntegerv
    li	$a0,3073
    # Line 931
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1880
    bal __glkonim_GetIntegerv
    li	$a0,3105
    # Line 932
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,1884
    bal __glkonim_GetBooleanv
    li	$a0,3107
    # Line 933
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1860
    bal __glkonim_GetFloatv
    li	$a0,3106
    # Line 934
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1876
    bal __glkonim_GetFloatv
    li	$a0,3104
    # Line 935
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1840
    bal __glkonim_GetFloatv
    li	$a0,0x8005
    # Line 939
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 938
    lw	$a1,1792($s5)
    # Line 939
    li	$a0,3042
    # Line 938
    li	$a2,-16
    and	$a1,$a1,$a2
    # Line 939
    bal __glkonim_IsEnabled
    # Line 938
    sw	$a1,1792($s5)
    # Line 939
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s1,$v0
    bal __glkonim_IsEnabled
    li	$a0,3008
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,3024
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s2,$v0
    bal __glkonim_IsEnabled
    li	$a0,3057
    sll	$a5,$s2,0x3
    addu	$a4,$s1,$s1
    sll	$a6,$v0,0x2
    or	$a4,$s0,$a4
    or	$a5,$a5,$a6
    lw	$a3,1792($s5)
    or	$a4,$a4,$a5
    or	$a3,$a3,$a4
    sw	$a3,1792($s5)
.L0d95fd00:
    andi	$a5,$s6,0x1
    beqz	$a5,.L0d95fdb8
    # Line 947
    nop	# was lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,432
    bal __glkonim_GetFloatv
    li	$a0,2816
    # Line 948
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,448
    bal __glkonim_GetFloatv
    li	$a0,2817
    # Line 949
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,224
    bal __glkonim_GetFloatv
    li	$a0,2819
    # Line 950
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,208
    bal __glkonim_GetFloatv
    li	$a0,2818
    # Line 951
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,384
    bal __glkonim_GetFloatv
    li	$a0,2820
    # Line 952
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,400
    bal __glkonim_GetFloatv
    li	$a0,2821
    # Line 953
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,288
    bal __glkonim_GetFloatv
    li	$a0,2822
    # Line 954
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,368
    bal __glkonim_GetFloatv
    li	$a0,2823
    # Line 955
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,344
    bal __glkonim_GetFloatv
    li	$a0,2825
    # Line 956
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,244
    bal __glkonim_GetFloatv
    li	$a0,2824
    # Line 957
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,453
    bal __glkonim_GetBooleanv
    li	$a0,2883
.L0d95fdb8:
    sd	$s4,232($sp)
    andi	$a6,$s6,0x100
    sd	$s8,224($sp)
    beqz	$a6,.L0d95fe28
    sd	$s3,216($sp)
    # Line 961
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1632
    bal __glkonim_GetIntegerv
    li	$a0,2932
    # Line 962
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,1636
    bal __glkonim_GetBooleanv
    li	$a0,2930
    # Line 963
    # lw $t9, -32096($gp) # &__glkonim_GetDoublev
    addiu	$a1,$s5,1640
    bal __glkonim_GetDoublev
    li	$a0,2931
    # Line 965
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 964
    lw	$a7,1792($s5)
    # Line 965
    li	$a0,2929
    # Line 964
    li	$t0,-17
    and	$a7,$a7,$t0
    # Line 965
    bal __glkonim_IsEnabled
    # Line 964
    sw	$a7,1792($s5)
    # Line 965
    lw	$t1,1792($s5)
    sll	$t2,$v0,0x4
    or	$t1,$t1,$t2
    sw	$t1,1792($s5)
.L0d95fe28:
    andi	$t3,$s6,0x2000
    beqz	$t3,.L0d960354
    # Line 970
    nop	# was lw $t9, -32080($gp) # &__glkonim_IsEnabled
    bal __glkonim_IsEnabled
    li	$a0,3042
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s1,$v0
    bal __glkonim_IsEnabled
    li	$a0,3008
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,3057
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s2,$v0
    bal __glkonim_IsEnabled
    li	$a0,3024
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s4,$v0
    bal __glkonim_IsEnabled
    li	$a0,2929
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s3,$v0
    bal __glkonim_IsEnabled
    li	$a0,2912
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,200($sp)
    bal __glkonim_IsEnabled
    li	$a0,2896
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s8,$v0
    bal __glkonim_IsEnabled
    li	$a0,2852
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,160($sp)
    bal __glkonim_IsEnabled
    li	$a0,2848
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,8($sp)
    bal __glkonim_IsEnabled
    li	$a0,2832
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,16($sp)
    bal __glkonim_IsEnabled
    li	$a0,2881
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,88($sp)
    bal __glkonim_IsEnabled
    li	$a0,2884
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,96($sp)
    bal __glkonim_IsEnabled
    li	$a0,2882
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,104($sp)
    bal __glkonim_IsEnabled
    li	$a0,3089
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,112($sp)
    bal __glkonim_IsEnabled
    li	$a0,2960
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,120($sp)
    bal __glkonim_IsEnabled
    li	$a0,3552
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,128($sp)
    bal __glkonim_IsEnabled
    li	$a0,3553
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,136($sp)
    bal __glkonim_IsEnabled
    li	$a0,3168
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,144($sp)
    bal __glkonim_IsEnabled
    li	$a0,3169
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,152($sp)
    bal __glkonim_IsEnabled
    li	$a0,3170
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,24($sp)
    bal __glkonim_IsEnabled
    li	$a0,3171
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,32($sp)
    bal __glkonim_IsEnabled
    li	$a0,2977
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,40($sp)
    bal __glkonim_IsEnabled
    li	$a0,0x8010
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,48($sp)
    bal __glkonim_IsEnabled
    li	$a0,0x8011
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,56($sp)
    bal __glkonim_IsEnabled
    li	$a0,0x8012
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,64($sp)
    bal __glkonim_IsEnabled
    li	$a0,0x8024
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,72($sp)
    bal __glkonim_IsEnabled
    li	$a0,0x802e
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,80($sp)
    bal __glkonim_IsEnabled
    li	$a0,0x80bc
    sll	$ra,$s4,0x3
    addu	$t8,$s1,$s1
    sll	$t9,$s2,0x2
    ld	$at,200($sp)
    or	$t9,$t9,$ra
    sll	$ra,$s3,0x4
    or	$t8,$s0,$t8
    sll	$at,$at,0x5
    or	$t8,$t8,$t9
    or	$ra,$ra,$at
    or	$t8,$t8,$ra
    ld	$ra,160($sp)
    sll	$t9,$s8,0x6
    ld	$at,16($sp)
    sll	$ra,$ra,0x8
    or	$t9,$t9,$ra
    ld	$ra,8($sp)
    sll	$at,$at,0xa
    sll	$ra,$ra,0x9
    or	$t8,$t8,$t9
    ld	$t9,88($sp)
    or	$ra,$ra,$at
    or	$t8,$t8,$ra
    ld	$ra,96($sp)
    sll	$t9,$t9,0xb
    ld	$at,112($sp)
    sll	$ra,$ra,0xc
    or	$t9,$t9,$ra
    ld	$ra,104($sp)
    sll	$at,$at,0xe
    sll	$ra,$ra,0xd
    or	$t8,$t8,$t9
    ld	$t9,120($sp)
    or	$ra,$ra,$at
    or	$t8,$t8,$ra
    ld	$ra,128($sp)
    sll	$t9,$t9,0xf
    ld	$at,144($sp)
    sll	$ra,$ra,0x10
    or	$t9,$t9,$ra
    ld	$ra,136($sp)
    sll	$at,$at,0x12
    sll	$ra,$ra,0x11
    or	$t8,$t8,$t9
    ld	$t9,152($sp)
    or	$ra,$ra,$at
    or	$t8,$t8,$ra
    ld	$ra,24($sp)
    ld	$a0,72($sp)
    sll	$t9,$t9,0x13
    ld	$at,40($sp)
    sll	$ra,$ra,0x14
    sll	$a0,$a0,0x1c
    or	$t9,$t9,$ra
    ld	$ra,32($sp)
    sll	$at,$at,0x16
    ld	$v1,64($sp)
    sll	$ra,$ra,0x15
    or	$t8,$t8,$t9
    ld	$t9,48($sp)
    or	$ra,$ra,$at
    sll	$v1,$v1,0x1b
    or	$t8,$t8,$ra
    ld	$ra,56($sp)
    sll	$t9,$t9,0x19
    sll	$ra,$ra,0x1a
    negu	$at,$v0
    or	$t9,$t9,$ra
    ld	$ra,80($sp)
    sll	$at,$at,0x1f
    or	$t8,$t8,$t9
    # Line 999
    # lw $t9, -31184($gp) # &ValidateHistogramSink
    # Line 970
    or	$v0,$v1,$a0
    sll	$ra,$ra,0x1d
    or	$t8,$t8,$v0
    or	$ra,$ra,$at
    or	$t8,$t8,$ra
    # Line 999
    jal	ValidateHistogramSink
    # Line 970
    sw	$t8,1792($s5)
    # Line 1000
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    bal __glkonim_IsEnabled
    li	$a0,16385
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s1,$v0
    bal __glkonim_IsEnabled
    li	$a0,16384
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,16386
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s2,$v0
    bal __glkonim_IsEnabled
    li	$a0,16387
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s4,$v0
    bal __glkonim_IsEnabled
    li	$a0,16388
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s3,$v0
    bal __glkonim_IsEnabled
    li	$a0,16389
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,200($sp)
    bal __glkonim_IsEnabled
    li	$a0,16390
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s8,$v0
    bal __glkonim_IsEnabled
    li	$a0,16391
    sll	$v0,$v0,0x7
    sll	$a2,$s4,0x3
    # Line 1009
    li	$a0,12289
    # Line 1000
    sll	$v1,$s2,0x2
    addu	$at,$s1,$s1
    or	$v1,$v1,$a2
    ld	$a2,200($sp)
    sll	$a1,$s3,0x4
    or	$at,$s0,$at
    # Line 1009
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1000
    or	$at,$at,$v1
    sll	$a2,$a2,0x5
    sll	$v1,$s8,0x6
    or	$a1,$a1,$a2
    or	$v0,$v1,$v0
    or	$at,$at,$a1
    or	$at,$at,$v0
    # Line 1009
    bal __glkonim_IsEnabled
    # Line 1000
    sw	$at,1800($s5)
    # Line 1009
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s1,$v0
    bal __glkonim_IsEnabled
    li	$a0,12288
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,12290
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s2,$v0
    bal __glkonim_IsEnabled
    li	$a0,12291
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s4,$v0
    bal __glkonim_IsEnabled
    li	$a0,12292
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s3,$v0
    bal __glkonim_IsEnabled
    li	$a0,12293
    # Line 1016
    li	$a0,0x80d1
    # Line 1009
    sll	$a3,$s2,0x2
    addu	$a2,$s1,$s1
    sll	$a4,$s4,0x3
    # Line 1016
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1009
    or	$a2,$s0,$a2
    sll	$v1,$s3,0x4
    or	$a3,$a3,$a4
    sll	$a1,$v0,0x5
    or	$v0,$a2,$a3
    or	$v1,$v1,$a1
    or	$v0,$v0,$v1
    # Line 1016
    bal __glkonim_IsEnabled
    # Line 1009
    sw	$v0,1804($s5)
    # Line 1016
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s1,$v0
    bal __glkonim_IsEnabled
    li	$a0,0x80d0
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,0x80d2
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s2,$v0
    bal __glkonim_IsEnabled
    li	$a0,0x8148
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s4,$v0
    bal __glkonim_IsEnabled
    li	$a0,0x8198
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s3,$v0
    bal __glkonim_IsEnabled
    li	$a0,0x8094
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,200($sp)
    bal __glkonim_IsEnabled
    li	$a0,0x817d
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s8,$v0
    bal __glkonim_IsEnabled
    li	$a0,0x8183
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,160($sp)
    bal __glkonim_IsEnabled
    li	$a0,0x81c7
    sll	$t1,$s8,0x6
    sll	$t0,$s2,0x2
    sll	$a7,$s3,0x4
    addu	$a5,$s1,$s1
    sll	$a6,$s4,0x3
    or	$a5,$s0,$a5
    or	$a6,$a6,$a7
    or	$a5,$a5,$t0
    ld	$t0,200($sp)
    sll	$a7,$v0,0x8
    or	$a5,$a5,$a6
    ld	$a6,160($sp)
    sll	$t0,$t0,0x5
    or	$t0,$t0,$t1
    sll	$a6,$a6,0x7
    or	$a6,$a6,$a7
    or	$a5,$a5,$t0
    or	$a5,$a5,$a6
    sw	$a5,1796($s5)
    # Line 1027
    lw	$a4,1808($s7)
    sw	$a4,1808($s5)
    # Line 1028
    lw	$a3,1812($s7)
    sw	$a3,1812($s5)
.L0d960354:
    dsll32	$a6,$s6,0xf
    bgez	$a6,.L0d9603ec
    addiu	$a6,$s7,1936
    addiu	$a2,$s5,1936
    li	$a5,0x8
    # Line 1032
    li	$v0,12
    move	$a0,$zero
    addiu	$a7,$s5,1932
    addiu	$a1,$s7,1932
    nop
    nop
.L0d960380:
    addu	$t1,$a0,$a1
    addu	$t2,$a0,$a7
    lw	$t1,0($t1)
    addiu	$v0,$v0,-2
    addu	$t0,$a0,$a6
    sw	$t1,0($t2)
    addu	$t1,$a0,$a2
    lw	$t0,0($t0)
    addu	$a0,$a0,$a5
    bgtz	$v0,.L0d960380
    sw	$t0,0($t1)
    # Line 1034
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1033
    lui	$t3,0x80
    lw	$t2,1792($s5)
    # Line 1034
    li	$a0,3456
    # Line 1033
    nor	$t3,$t3,$zero
    and	$t2,$t2,$t3
    # Line 1034
    bal __glkonim_IsEnabled
    # Line 1033
    sw	$t2,1792($s5)
    # Line 1034
    lw	$ra,1792($s5)
    sll	$at,$v0,0x17
    or	$ra,$ra,$at
    sw	$ra,1792($s5)
    # Line 1036
    lw	$t9,1808($s7)
    sw	$t9,1808($s5)
    # Line 1037
    lw	$t8,1812($s7)
    sw	$t8,1812($s5)
.L0d9603ec:
    andi	$v0,$s6,0x80
    beqz	$v0,.L0d9604f0
    # Line 1055
    andi	$a6,$s6,0x8000
    # Line 1041
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1592
    bal __glkonim_GetFloatv
    li	$a0,2918
    # Line 1042
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1624
    bal __glkonim_GetFloatv
    li	$a0,2913
    # Line 1043
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1608
    bal __glkonim_GetFloatv
    li	$a0,2914
    # Line 1044
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1612
    bal __glkonim_GetFloatv
    li	$a0,2915
    # Line 1045
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1616
    bal __glkonim_GetFloatv
    li	$a0,2916
    # Line 1046
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1588
    bal __glkonim_GetIntegerv
    li	$a0,2917
    # Line 1048
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1047
    lw	$v1,1792($s5)
    # Line 1048
    li	$a0,2912
    # Line 1047
    li	$a1,-33
    and	$v1,$v1,$a1
    # Line 1048
    bal __glkonim_IsEnabled
    # Line 1047
    sw	$v1,1792($s5)
    # Line 1051
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    li	$a0,0x812b
    li	$a1,0x90b0
    # Line 1048
    lw	$a2,1792($s5)
    # Line 1051
    addu	$a1,$s5,$a1
    # Line 1048
    sll	$a3,$v0,0x5
    or	$a2,$a2,$a3
    # Line 1051
    bal __glkonim_GetIntegerv
    # Line 1048
    sw	$a2,1792($s5)
    # Line 1052
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    li	$a0,0x812a
    li	$a1,0x90b4
    bal __glkonim_GetFloatv
    addu	$a1,$s5,$a1
    # Line 1053
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    li	$a0,0x8199
    li	$a1,0xa0b4
    bal __glkonim_GetFloatv
    addu	$a1,$s5,$a1
    # Line 1055
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1054
    lw	$a2,1796($s5)
    # Line 1055
    li	$a0,0x8198
    # Line 1054
    li	$a3,-17
    and	$a2,$a2,$a3
    # Line 1055
    bal __glkonim_IsEnabled
    # Line 1054
    sw	$a2,1796($s5)
    # Line 1055
    lw	$a4,1796($s5)
    sll	$a5,$v0,0x4
    or	$a4,$a4,$a5
    sw	$a4,1796($s5)
    andi	$a6,$s6,0x8000
.L0d9604f0:
    beqz	$a6,.L0d960544
    # Line 1061
    nop	# was lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1896
    bal __glkonim_GetIntegerv
    li	$a0,3152
    # Line 1062
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1900
    bal __glkonim_GetIntegerv
    li	$a0,3153
    # Line 1063
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1904
    bal __glkonim_GetIntegerv
    li	$a0,3154
    # Line 1064
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1908
    bal __glkonim_GetIntegerv
    li	$a0,3155
    # Line 1065
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1912
    bal __glkonim_GetIntegerv
    li	$a0,3156
.L0d960544:
    andi	$a7,$s6,0x40
    beqz	$a7,.L0d960ad8
    # Line 1071
    nop	# was lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1392
    li	$a0,2900
    bal __glkonim_GetIntegerv
    # Line 1069
    lw	$s0,1584($s5)
    # Line 1073
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1384
    bal __glkonim_GetIntegerv
    li	$a0,2901
    # Line 1075
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1388
    bal __glkonim_GetIntegerv
    li	$a0,2902
    # Line 1077
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1396
    bal __glkonim_GetFloatv
    li	$a0,2899
    # Line 1079
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,1412
    bal __glkonim_GetBooleanv
    li	$a0,2897
    # Line 1081
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,1413
    bal __glkonim_GetBooleanv
    li	$a0,2898
    # Line 1083
    # lw $t9, -32120($gp) # &__glkon_get_special
    move	$a1,$zero
    bal __glkon_get_special
    li	$a0,267
    # Line 1086
    lwc1	$f13,-4($v0)
    swc1	$f13,1424($s5)
    # Line 1087
    lwc1	$f12,0($v0)
    swc1	$f12,1428($s5)
    # Line 1088
    lwc1	$f11,4($v0)
    swc1	$f11,1432($s5)
    # Line 1089
    lwc1	$f10,8($v0)
    swc1	$f10,1436($s5)
    # Line 1090
    lwc1	$f9,12($v0)
    swc1	$f9,1440($s5)
    # Line 1091
    lwc1	$f8,16($v0)
    swc1	$f8,1444($s5)
    # Line 1092
    lwc1	$f7,20($v0)
    swc1	$f7,1448($s5)
    # Line 1093
    lwc1	$f6,24($v0)
    swc1	$f6,1452($s5)
    # Line 1094
    lwc1	$f5,28($v0)
    swc1	$f5,1456($s5)
    # Line 1095
    lwc1	$f4,32($v0)
    swc1	$f4,1460($s5)
    # Line 1096
    lwc1	$f3,36($v0)
    swc1	$f3,1464($s5)
    # Line 1097
    lwc1	$f2,40($v0)
    swc1	$f2,1468($s5)
    # Line 1098
    lwc1	$f1,44($v0)
    swc1	$f1,1472($s5)
    # Line 1099
    lwc1	$f0,48($v0)
    swc1	$f0,1476($s5)
    # Line 1100
    lwc1	$f31,52($v0)
    swc1	$f31,1480($s5)
    # Line 1101
    lwc1	$f29,56($v0)
    swc1	$f29,1484($s5)
    # Line 1102
    lwc1	$f27,60($v0)
    swc1	$f27,1488($s5)
    # Line 1103
    lwc1	$f25,76($v0)
    swc1	$f25,1492($s5)
    # Line 1104
    lwc1	$f23,80($v0)
    swc1	$f23,1496($s5)
    # Line 1105
    lwc1	$f21,84($v0)
    swc1	$f21,1500($s5)
    # Line 1108
    lwc1	$f19,92($v0)
    swc1	$f19,1504($s5)
    # Line 1109
    lwc1	$f18,96($v0)
    swc1	$f18,1508($s5)
    # Line 1110
    lwc1	$f17,100($v0)
    swc1	$f17,1512($s5)
    # Line 1111
    lwc1	$f16,104($v0)
    swc1	$f16,1516($s5)
    # Line 1112
    lwc1	$f15,108($v0)
    swc1	$f15,1520($s5)
    # Line 1113
    lwc1	$f14,112($v0)
    swc1	$f14,1524($s5)
    # Line 1114
    lwc1	$f13,116($v0)
    swc1	$f13,1528($s5)
    # Line 1115
    lwc1	$f12,120($v0)
    swc1	$f12,1532($s5)
    # Line 1116
    lwc1	$f11,124($v0)
    swc1	$f11,1536($s5)
    # Line 1117
    lwc1	$f10,128($v0)
    swc1	$f10,1540($s5)
    # Line 1118
    lwc1	$f9,132($v0)
    swc1	$f9,1544($s5)
    # Line 1119
    lwc1	$f8,136($v0)
    swc1	$f8,1548($s5)
    # Line 1120
    lwc1	$f7,140($v0)
    swc1	$f7,1552($s5)
    # Line 1121
    lwc1	$f6,144($v0)
    swc1	$f6,1556($s5)
    # Line 1122
    lwc1	$f5,148($v0)
    swc1	$f5,1560($s5)
    # Line 1123
    lwc1	$f4,152($v0)
    swc1	$f4,1564($s5)
    # Line 1124
    lwc1	$f3,156($v0)
    swc1	$f3,1568($s5)
    # Line 1125
    lwc1	$f2,172($v0)
    swc1	$f2,1572($s5)
    # Line 1126
    lwc1	$f1,176($v0)
    swc1	$f1,1576($s5)
    # Line 1127
    lwc1	$f0,180($v0)
    swc1	$f0,1580($s5)
    # Line 1129
    sw	$zero,0($sp)
    lw	$t0,3588($s5)
    move	$a5,$zero
    blez	$t0,.L0d9609d8
    # Line 1128
    addiu	$s1,$v0,188
    nop
    nop
    # Line 1130
    sll	$ra,$a5,0x3
.L0d960720:
    subu	$ra,$ra,$a5
    sll	$ra,$ra,0x2
    addu	$ra,$ra,$a5
    lwc1	$f31,0($s1)
    sll	$ra,$ra,0x2
    addu	$ra,$s0,$ra
    swc1	$f31,48($ra)
    # Line 1131
    lw	$ra,0($sp)
    sll	$t9,$ra,0x3
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    addu	$t9,$t9,$ra
    lwc1	$f29,4($s1)
    sll	$t9,$t9,0x2
    addu	$t9,$s0,$t9
    swc1	$f29,52($t9)
    # Line 1132
    lw	$t9,0($sp)
    sll	$t8,$t9,0x3
    subu	$t8,$t8,$t9
    sll	$t8,$t8,0x2
    addu	$t8,$t8,$t9
    lwc1	$f27,8($s1)
    sll	$t8,$t8,0x2
    addu	$t8,$s0,$t8
    swc1	$f27,56($t8)
    # Line 1133
    lw	$t8,0($sp)
    sll	$t3,$t8,0x3
    subu	$t3,$t3,$t8
    sll	$t3,$t3,0x2
    addu	$t3,$t3,$t8
    lwc1	$f25,12($s1)
    sll	$t3,$t3,0x2
    addu	$t3,$s0,$t3
    swc1	$f25,60($t3)
    # Line 1134
    lw	$t3,0($sp)
    sll	$t2,$t3,0x3
    subu	$t2,$t2,$t3
    sll	$t2,$t2,0x2
    addu	$t2,$t2,$t3
    lwc1	$f23,16($s1)
    sll	$t2,$t2,0x2
    addu	$t2,$s0,$t2
    swc1	$f23,64($t2)
    # Line 1135
    lw	$t2,0($sp)
    sll	$t1,$t2,0x3
    subu	$t1,$t1,$t2
    sll	$t1,$t1,0x2
    addu	$t1,$t1,$t2
    lwc1	$f21,20($s1)
    sll	$t1,$t1,0x2
    addu	$t1,$s0,$t1
    swc1	$f21,68($t1)
    # Line 1136
    lw	$t1,0($sp)
    sll	$t0,$t1,0x3
    subu	$t0,$t0,$t1
    sll	$t0,$t0,0x2
    addu	$t0,$t0,$t1
    lwc1	$f19,24($s1)
    sll	$t0,$t0,0x2
    addu	$t0,$s0,$t0
    swc1	$f19,72($t0)
    # Line 1137
    lw	$t0,0($sp)
    sll	$a7,$t0,0x3
    subu	$a7,$a7,$t0
    sll	$a7,$a7,0x2
    addu	$a7,$a7,$t0
    lwc1	$f18,28($s1)
    sll	$a7,$a7,0x2
    addu	$a7,$s0,$a7
    swc1	$f18,76($a7)
    # Line 1138
    lw	$a7,0($sp)
    sll	$a6,$a7,0x3
    subu	$a6,$a6,$a7
    sll	$a6,$a6,0x2
    addu	$a6,$a6,$a7
    lwc1	$f17,32($s1)
    sll	$a6,$a6,0x2
    addu	$a6,$s0,$a6
    swc1	$f17,80($a6)
    # Line 1139
    lw	$a6,0($sp)
    sll	$a5,$a6,0x3
    subu	$a5,$a5,$a6
    sll	$a5,$a5,0x2
    addu	$a5,$a5,$a6
    lwc1	$f16,36($s1)
    sll	$a5,$a5,0x2
    addu	$a5,$s0,$a5
    swc1	$f16,84($a5)
    # Line 1140
    lw	$a5,0($sp)
    sll	$a4,$a5,0x3
    subu	$a4,$a4,$a5
    sll	$a4,$a4,0x2
    addu	$a4,$a4,$a5
    lwc1	$f15,40($s1)
    sll	$a4,$a4,0x2
    addu	$a4,$s0,$a4
    swc1	$f15,88($a4)
    # Line 1141
    lw	$a4,0($sp)
    sll	$a3,$a4,0x3
    subu	$a3,$a3,$a4
    sll	$a3,$a3,0x2
    addu	$a3,$a3,$a4
    lwc1	$f14,44($s1)
    sll	$a3,$a3,0x2
    addu	$a3,$s0,$a3
    swc1	$f14,92($a3)
    # Line 1143
    lw	$a0,0($sp)
    sll	$a2,$a0,0x3
    subu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    li	$a1,4613
    # lw $t9, -32072($gp) # &__glkonim_GetLightfv
    addu	$a2,$a2,$a0
    # Line 1142
    addiu	$s1,$s1,48
    # Line 1143
    sll	$a2,$a2,0x2
    addiu	$a0,$a0,16384
    addu	$a2,$s0,$a2
    bal __glkonim_GetLightfv
    addiu	$a2,$a2,96
    # Line 1145
    lw	$a0,0($sp)
    sll	$a2,$a0,0x3
    subu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    # lw $t9, -32072($gp) # &__glkonim_GetLightfv
    addu	$a2,$a2,$a0
    li	$a1,4614
    sll	$a2,$a2,0x2
    addiu	$a0,$a0,16384
    addu	$a2,$s0,$a2
    bal __glkonim_GetLightfv
    addiu	$a2,$a2,100
    # Line 1147
    lw	$a0,0($sp)
    sll	$a2,$a0,0x3
    subu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    # lw $t9, -32072($gp) # &__glkonim_GetLightfv
    addu	$a2,$a2,$a0
    li	$a1,4615
    sll	$a2,$a2,0x2
    addiu	$a0,$a0,16384
    addu	$a2,$s0,$a2
    bal __glkonim_GetLightfv
    addiu	$a2,$a2,104
    # Line 1149
    lw	$a0,0($sp)
    sll	$a2,$a0,0x3
    subu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    # lw $t9, -32072($gp) # &__glkonim_GetLightfv
    addu	$a2,$a2,$a0
    li	$a1,4616
    sll	$a2,$a2,0x2
    addiu	$a0,$a0,16384
    addu	$a2,$s0,$a2
    bal __glkonim_GetLightfv
    addiu	$a2,$a2,108
    # Line 1151
    lw	$a0,0($sp)
    sll	$a2,$a0,0x3
    subu	$a2,$a2,$a0
    sll	$a2,$a2,0x2
    # lw $t9, -32072($gp) # &__glkonim_GetLightfv
    addu	$a2,$a2,$a0
    li	$a1,4617
    sll	$a2,$a2,0x2
    addiu	$a0,$a0,16384
    addu	$a2,$s0,$a2
    bal __glkonim_GetLightfv
    addiu	$a2,$a2,112
    # Line 1129
    lw	$a5,0($sp)
    addiu	$a5,$a5,1
    sw	$a5,0($sp)
    lw	$a3,3588($s5)
    slt	$a3,$a5,$a3
    bnez	$a3,.L0d960720
    # Line 1130
    sll	$ra,$a5,0x3
.L0d9609d8:
    # Line 1155
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1154
    lw	$a6,1792($s5)
    # Line 1155
    li	$a0,2896
    # Line 1154
    li	$a7,-193
    and	$a6,$a6,$a7
    # Line 1155
    bal __glkonim_IsEnabled
    # Line 1154
    sw	$a6,1792($s5)
    # Line 1155
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,2903
    sll	$t1,$s0,0x6
    # Line 1158
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1155
    sll	$t2,$v0,0x7
    lw	$t0,1792($s5)
    # Line 1158
    li	$a0,16385
    # Line 1155
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    # Line 1158
    bal __glkonim_IsEnabled
    # Line 1155
    sw	$t0,1792($s5)
    # Line 1158
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s1,$v0
    bal __glkonim_IsEnabled
    li	$a0,16384
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,16386
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s2,$v0
    bal __glkonim_IsEnabled
    li	$a0,16387
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s4,$v0
    bal __glkonim_IsEnabled
    li	$a0,16388
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s3,$v0
    bal __glkonim_IsEnabled
    li	$a0,16389
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    sd	$v0,200($sp)
    bal __glkonim_IsEnabled
    li	$a0,16390
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s8,$v0
    bal __glkonim_IsEnabled
    li	$a0,16391
    sll	$ra,$s3,0x4
    sll	$t9,$s4,0x3
    sll	$t8,$s2,0x2
    addu	$t3,$s1,$s1
    or	$t8,$t8,$t9
    ld	$at,200($sp)
    sll	$t9,$v0,0x7
    or	$t3,$s0,$t3
    or	$t3,$t3,$t8
    sll	$at,$at,0x5
    sll	$t8,$s8,0x6
    or	$ra,$ra,$at
    or	$t8,$t8,$t9
    or	$t3,$t3,$ra
    or	$t3,$t3,$t8
    sw	$t3,1800($s5)
.L0d960ad8:
    andi	$t8,$s6,0x4
    beqz	$t8,.L0d960b68
    # Line 1172
    nop	# was lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,468
    li	$a0,2849
    bal __glkonim_GetFloatv
    # Line 1170
    sw	$zero,0($sp)
    # Line 1173
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,0
    bal __glkonim_GetIntegerv
    li	$a0,2853
    # Line 1175
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,0
    # Line 1174
    lw	$at,0($sp)
    # Line 1175
    li	$a0,2854
    bal __glkonim_GetIntegerv
    # Line 1174
    sh	$at,480($s5)
    # Line 1176
    lw	$a1,0($sp)
    # Line 1178
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1177
    lw	$v0,1792($s5)
    # Line 1178
    li	$a0,2852
    # Line 1176
    sh	$a1,482($s5)
    # Line 1177
    li	$v1,-769
    and	$v0,$v0,$v1
    # Line 1178
    bal __glkonim_IsEnabled
    # Line 1177
    sw	$v0,1792($s5)
    # Line 1178
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,2848
    sll	$a3,$s0,0x8
    sll	$a4,$v0,0x9
    lw	$a2,1792($s5)
    or	$a3,$a3,$a4
    or	$a2,$a2,$a3
    sw	$a2,1792($s5)
.L0d960b68:
    dsll32	$a5,$s6,0xe
    bgez	$a5,.L0d960b80
    # Line 1184
    andi	$a7,$s6,0x20
    lw	$a6,1980($s7)
    sw	$a6,1980($s5)
    andi	$a7,$s6,0x20
.L0d960b80:
    beqz	$a7,.L0d960e38
    # Line 1225
    andi	$t9,$s6,0x2
    addiu	$a6,$s7,648
    addiu	$a7,$s5,648
    li	$t0,0x10
    # Line 1189
    addiu	$a5,$s5,640
    addiu	$a2,$s7,640
    ld	$t1,640($s7)
    li	$v0,8
    li	$a0,0xe
    sd	$t1,640($s5)
    nop
.L0d960bb0:
    addu	$a1,$v0,$a2
    addu	$a3,$v0,$a5
    ld	$a1,0($a1)
    addiu	$a0,$a0,-2
    addu	$v1,$v0,$a6
    sd	$a1,0($a3)
    addu	$a1,$v0,$a7
    ld	$v1,0($v1)
    addu	$v0,$v0,$t0
    bgtz	$a0,.L0d960bb0
    sd	$v1,0($a1)
    # Line 1191
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    # Line 1189
    addu	$a3,$v0,$a2
    addu	$a4,$v0,$a5
    lw	$a3,0($a3)
    sw	$a3,0($a4)
    # Line 1191
    addiu	$a1,$s5,1236
    # Line 1190
    lw	$a2,1380($s7)
    # Line 1191
    li	$a0,3074
    bal __glkonim_GetIntegerv
    # Line 1190
    sw	$a2,1380($s5)
    # Line 1193
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1192
    lui	$a5,0x200
    lw	$a4,1792($s5)
    # Line 1193
    li	$a0,0x8010
    # Line 1192
    nor	$a5,$a5,$zero
    and	$a4,$a4,$a5
    # Line 1193
    bal __glkonim_IsEnabled
    # Line 1192
    sw	$a4,1792($s5)
    # Line 1195
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    li	$a0,0x8011
    # Line 1193
    lw	$a6,1792($s5)
    sll	$t0,$v0,0x19
    # Line 1194
    lui	$a7,0x400
    # Line 1193
    or	$a6,$a6,$t0
    # Line 1194
    nor	$a7,$a7,$zero
    and	$a6,$a6,$a7
    # Line 1195
    bal __glkonim_IsEnabled
    # Line 1194
    sw	$a6,1792($s5)
    # Line 1197
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    li	$a0,0x8012
    # Line 1195
    lw	$t1,1792($s5)
    sll	$t3,$v0,0x1a
    # Line 1196
    lui	$t2,0x800
    # Line 1195
    or	$t1,$t1,$t3
    # Line 1196
    nor	$t2,$t2,$zero
    and	$t1,$t1,$t2
    # Line 1197
    bal __glkonim_IsEnabled
    # Line 1196
    sw	$t1,1792($s5)
    # Line 1199
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    li	$a0,0x8024
    # Line 1197
    lw	$t8,1792($s5)
    sll	$at,$v0,0x1b
    # Line 1198
    lui	$ra,0x1000
    # Line 1197
    or	$t8,$t8,$at
    # Line 1198
    nor	$ra,$ra,$zero
    and	$t8,$t8,$ra
    # Line 1199
    bal __glkonim_IsEnabled
    # Line 1198
    sw	$t8,1792($s5)
    # Line 1201
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    li	$a0,0x802e
    # Line 1199
    lw	$a1,1792($s5)
    sll	$v0,$v0,0x1c
    # Line 1200
    lui	$v1,0x2000
    # Line 1199
    or	$v0,$a1,$v0
    # Line 1200
    nor	$v1,$v1,$zero
    and	$v0,$v0,$v1
    # Line 1201
    bal __glkonim_IsEnabled
    # Line 1200
    sw	$v0,1792($s5)
    # Line 1202
    lw	$a2,1796($s5)
    # Line 1203
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    li	$a0,0x80d0
    # Line 1202
    li	$a3,-2
    # Line 1201
    lw	$v1,1792($s5)
    # Line 1202
    and	$a2,$a2,$a3
    sw	$a2,1796($s5)
    # Line 1201
    sll	$a1,$v0,0x1d
    or	$v1,$v1,$a1
    # Line 1203
    bal __glkonim_IsEnabled
    # Line 1201
    sw	$v1,1792($s5)
    # Line 1205
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1203
    lw	$a4,1796($s5)
    # Line 1205
    li	$a0,0x80d1
    # Line 1203
    or	$a4,$a4,$v0
    # Line 1204
    li	$a5,-3
    and	$a4,$a4,$a5
    # Line 1205
    bal __glkonim_IsEnabled
    # Line 1204
    sw	$a4,1796($s5)
    # Line 1207
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1205
    lw	$a5,1796($s5)
    # Line 1207
    li	$a0,0x80d2
    # Line 1205
    addu	$a6,$v0,$v0
    or	$a5,$a5,$a6
    # Line 1206
    li	$a6,-5
    and	$a5,$a5,$a6
    # Line 1207
    bal __glkonim_IsEnabled
    # Line 1206
    sw	$a5,1796($s5)
    # Line 1209
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1207
    lw	$a7,1796($s5)
    # Line 1209
    li	$a0,0x8094
    # Line 1207
    sll	$t0,$v0,0x2
    or	$a7,$a7,$t0
    # Line 1208
    li	$t0,-33
    and	$a7,$a7,$t0
    # Line 1209
    bal __glkonim_IsEnabled
    # Line 1208
    sw	$a7,1796($s5)
    # Line 1211
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1209
    lw	$t1,1796($s5)
    # Line 1211
    li	$a0,0x81c7
    # Line 1209
    sll	$t2,$v0,0x5
    or	$t1,$t1,$t2
    # Line 1210
    li	$t2,-257
    and	$t1,$t1,$t2
    # Line 1211
    bal __glkonim_IsEnabled
    # Line 1210
    sw	$t1,1796($s5)
    # Line 1214
    # lw $t9, -31184($gp) # &ValidateHistogramSink
    # Line 1211
    lw	$t3,1796($s5)
    sll	$t8,$v0,0x8
    or	$t3,$t3,$t8
    # Line 1214
    jal	ValidateHistogramSink
    # Line 1211
    sw	$t3,1796($s5)
    # Line 1217
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s5,2580
    li	$a1,0x80d6
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d0
    # Line 1218
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s5,2740
    li	$a1,0x80d6
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d1
    # Line 1219
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s5,2900
    li	$a1,0x80d6
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d2
    # Line 1220
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s5,3060
    li	$a1,0x80d6
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80bc
    # Line 1222
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s5,2596
    li	$a1,0x80d7
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d0
    # Line 1223
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s5,2756
    li	$a1,0x80d7
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d1
    # Line 1224
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s5,2916
    li	$a1,0x80d7
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80d2
    # Line 1225
    # lw $t9, -31280($gp) # &__glkonim_GetColorTableParameterfvSGI
    addiu	$a2,$s5,3076
    li	$a1,0x80d7
    jal	__glkonim_GetColorTableParameterfvSGI
    li	$a0,0x80bc
    andi	$t9,$s6,0x2
.L0d960e38:
    beqz	$t9,.L0d960e7c
    ld	$s8,224($sp)
    # Line 1230
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,456
    bal __glkonim_GetFloatv
    li	$a0,2833
    # Line 1232
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1231
    lw	$at,1792($s5)
    # Line 1232
    li	$a0,2832
    # Line 1231
    li	$v0,-1025
    and	$at,$at,$v0
    # Line 1232
    bal __glkonim_IsEnabled
    # Line 1231
    sw	$at,1792($s5)
    # Line 1232
    lw	$v1,1792($s5)
    sll	$a0,$v0,0xa
    or	$v1,$v1,$a0
    sw	$v1,1792($s5)
.L0d960e7c:
    andi	$a1,$s6,0x8
    beqz	$a1,.L0d960f10
    # Line 1237
    nop	# was lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,492
    bal __glkonim_GetIntegerv
    li	$a0,2885
    # Line 1238
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,496
    bal __glkonim_GetIntegerv
    li	$a0,2886
    # Line 1239
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,484
    bal __glkonim_GetIntegerv
    li	$a0,2880
    # Line 1240
    ld	$a3,-15776($gp)
    # Line 1241
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1240
    lw	$a2,1792($s5)
    # Line 1241
    li	$a0,2881
    # Line 1240
    and	$a2,$a2,$a3
    # Line 1241
    bal __glkonim_IsEnabled
    # Line 1240
    sw	$a2,1792($s5)
    # Line 1241
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,2884
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s1,$v0
    bal __glkonim_IsEnabled
    li	$a0,2882
    sll	$a5,$s0,0xb
    sll	$a6,$s1,0xc
    or	$a5,$a5,$a6
    sll	$a6,$v0,0xd
    lw	$a4,1792($s5)
    or	$a5,$a5,$a6
    or	$a4,$a4,$a5
    sw	$a4,1792($s5)
.L0d960f10:
    andi	$a7,$s6,0x10
    beqz	$a7,.L0d960f24
    # Line 1249
    nop	# was lw $t9, -32224($gp) # &__glkonim_GetPolygonStipple
    jal	__glkonim_GetPolygonStipple
    addiu	$a0,$s5,512
.L0d960f24:
    dsll32	$t0,$s6,0xc
    bgez	$t0,.L0d960f68
    # Line 1253
    nop	# was lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,2524
    bal __glkonim_GetIntegerv
    li	$a0,3088
    # Line 1255
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1254
    lw	$t1,1792($s5)
    # Line 1255
    li	$a0,3089
    # Line 1254
    li	$t2,-16385
    and	$t1,$t1,$t2
    # Line 1255
    bal __glkonim_IsEnabled
    # Line 1254
    sw	$t1,1792($s5)
    # Line 1255
    lw	$t3,1792($s5)
    sll	$t8,$v0,0xe
    or	$t3,$t3,$t8
    sw	$t3,1792($s5)
.L0d960f68:
    andi	$t9,$s6,0x400
    beqz	$t9,.L0d96104c
    # Line 1277
    dsll32	$a6,$s6,0xd
    # Line 1262
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1664
    li	$a0,2962
    bal __glkonim_GetIntegerv
    # Line 1260
    sw	$zero,0($sp)
    # Line 1263
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,0
    bal __glkonim_GetIntegerv
    li	$a0,2963
    # Line 1265
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,0
    # Line 1264
    lw	$at,0($sp)
    # Line 1265
    li	$a0,2967
    bal __glkonim_GetIntegerv
    # Line 1264
    sh	$at,1672($s5)
    # Line 1267
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1676
    # Line 1266
    lw	$v0,0($sp)
    # Line 1267
    li	$a0,2964
    bal __glkonim_GetIntegerv
    # Line 1266
    sh	$v0,1670($s5)
    # Line 1268
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1680
    bal __glkonim_GetIntegerv
    li	$a0,2965
    # Line 1270
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1684
    bal __glkonim_GetIntegerv
    li	$a0,2966
    # Line 1272
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,0
    bal __glkonim_GetIntegerv
    li	$a0,2968
    # Line 1274
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$sp,0
    # Line 1273
    lw	$v1,0($sp)
    # Line 1274
    li	$a0,2961
    bal __glkonim_GetIntegerv
    # Line 1273
    sh	$v1,1674($s5)
    # Line 1275
    lw	$a3,0($sp)
    # Line 1277
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1276
    lw	$a1,1792($s5)
    li	$a2,0x8000
    # Line 1277
    li	$a0,2960
    # Line 1275
    sh	$a3,1668($s5)
    # Line 1276
    nor	$a2,$a2,$zero
    and	$a1,$a1,$a2
    # Line 1277
    bal __glkonim_IsEnabled
    # Line 1276
    sw	$a1,1792($s5)
    # Line 1277
    lw	$a4,1792($s5)
    sll	$a5,$v0,0xf
    or	$a4,$a4,$a5
    sw	$a4,1792($s5)
    dsll32	$a6,$s6,0xd
.L0d96104c:
    bgez	$a6,.L0d961358
    # Line 1329
    andi	$t3,$s6,0x1000
    # Line 1284
    # lw $t9, -32120($gp) # &__glkon_get_special
    move	$a1,$zero
    li	$a0,308
    # Line 1282
    lw	$s0,2480($s5)
    # Line 1284
    jal	__glkon_get_special
    # Line 1281
    addiu	$s1,$s5,1984
    # Line 1288
    lw	$t2,2484($s5)
    lw	$t1,-4($v0)
    sw	$t1,0($t2)
    # Line 1290
    lw	$t0,2484($s5)
    lwc1	$f13,0($v0)
    swc1	$f13,4($t0)
    lwc1	$f12,4($v0)
    swc1	$f12,8($t0)
    lwc1	$f11,8($v0)
    swc1	$f11,12($t0)
    lwc1	$f10,12($v0)
    swc1	$f10,16($t0)
    # Line 1293
    lw	$a7,2484($s5)
    lwc1	$f9,16($v0)
    swc1	$f9,20($a7)
    lwc1	$f8,20($v0)
    swc1	$f8,24($a7)
    lwc1	$f7,24($v0)
    swc1	$f7,28($a7)
    lwc1	$f6,28($v0)
    swc1	$f6,32($a7)
    # Line 1296
    lwc1	$f5,32($v0)
    swc1	$f5,1988($s5)
    lwc1	$f4,36($v0)
    swc1	$f4,1992($s5)
    lwc1	$f3,40($v0)
    swc1	$f3,1996($s5)
    lwc1	$f2,44($v0)
    swc1	$f2,2000($s5)
    # Line 1298
    lwc1	$f1,48($v0)
    swc1	$f1,2112($s5)
    lwc1	$f0,52($v0)
    swc1	$f0,2116($s5)
    lwc1	$f31,56($v0)
    swc1	$f31,2120($s5)
    lwc1	$f29,60($v0)
    swc1	$f29,2124($s5)
    # Line 1300
    lwc1	$f27,64($v0)
    swc1	$f27,2236($s5)
    lwc1	$f25,68($v0)
    swc1	$f25,2240($s5)
    lwc1	$f23,72($v0)
    swc1	$f23,2244($s5)
    lwc1	$f21,76($v0)
    swc1	$f21,2248($s5)
    # Line 1302
    lwc1	$f19,80($v0)
    swc1	$f19,2360($s5)
    lwc1	$f18,84($v0)
    swc1	$f18,2364($s5)
    lwc1	$f17,88($v0)
    swc1	$f17,2368($s5)
    lwc1	$f16,92($v0)
    swc1	$f16,2372($s5)
    # Line 1305
    lwc1	$f15,96($v0)
    swc1	$f15,2004($s5)
    lwc1	$f14,100($v0)
    swc1	$f14,2008($s5)
    lwc1	$f13,104($v0)
    swc1	$f13,2012($s5)
    lwc1	$f12,108($v0)
    swc1	$f12,2016($s5)
    # Line 1307
    lwc1	$f11,112($v0)
    swc1	$f11,2128($s5)
    lwc1	$f10,116($v0)
    swc1	$f10,2132($s5)
    lwc1	$f9,120($v0)
    swc1	$f9,2136($s5)
    lwc1	$f8,124($v0)
    swc1	$f8,2140($s5)
    # Line 1309
    lwc1	$f7,128($v0)
    swc1	$f7,2252($s5)
    lwc1	$f6,132($v0)
    swc1	$f6,2256($s5)
    lwc1	$f5,136($v0)
    swc1	$f5,2260($s5)
    lwc1	$f4,140($v0)
    swc1	$f4,2264($s5)
    # Line 1311
    lwc1	$f3,144($v0)
    swc1	$f3,2376($s5)
    lwc1	$f2,148($v0)
    swc1	$f2,2380($s5)
    lwc1	$f1,152($v0)
    swc1	$f1,2384($s5)
    lwc1	$f0,156($v0)
    swc1	$f0,2388($s5)
    # Line 1313
    li	$a5,8192
    sw	$a5,0($sp)
    nop
    nop
.L0d9611d0:
    # Line 1314
    # lw $t9, -32048($gp) # &__glkonim_GetTexGeniv
    move	$a0,$a5
    move	$a2,$s1
    bal __glkonim_GetTexGeniv
    li	$a1,9472
    # Line 1313
    lw	$a5,0($sp)
    slti	$t3,$a5,8195
    addiu	$s1,$s1,124
    addiu	$a5,$a5,1
    bnez	$t3,.L0d9611d0
    sw	$a5,0($sp)
    # Line 1316
    addiu	$s4,$s0,152
    addiu	$s3,$s0,4
    addiu	$s2,$s0,16
    addiu	$s1,$s0,12
    li	$a5,3552
    sw	$a5,0($sp)
    nop
    nop
    nop
.L0d961220:
    # Line 1317
    # lw $t9, -31688($gp) # &__glkonim_GetTexParameteriv
    move	$a0,$a5
    move	$a2,$s1
    jal	__glkonim_GetTexParameteriv
    li	$a1,10241
    # Line 1319
    # lw $t9, -31688($gp) # &__glkonim_GetTexParameteriv
    move	$a2,$s2
    li	$a1,10240
    jal	__glkonim_GetTexParameteriv
    lw	$a0,0($sp)
    # Line 1321
    # lw $t9, -31688($gp) # &__glkonim_GetTexParameteriv
    move	$a2,$s0
    li	$a1,10242
    jal	__glkonim_GetTexParameteriv
    lw	$a0,0($sp)
    # Line 1323
    # lw $t9, -31688($gp) # &__glkonim_GetTexParameteriv
    move	$a2,$s3
    li	$a1,10243
    jal	__glkonim_GetTexParameteriv
    lw	$a0,0($sp)
    # Line 1325
    # lw $t9, -31684($gp) # &__glkonim_GetTexParameterfv
    move	$a2,$s4
    li	$a1,4100
    jal	__glkonim_GetTexParameterfv
    lw	$a0,0($sp)
    # Line 1316
    lw	$a5,0($sp)
    addiu	$s1,$s1,224
    addiu	$s2,$s2,224
    addiu	$s3,$s3,224
    slti	$a6,$a5,3553
    addiu	$s4,$s4,224
    addiu	$s0,$s0,224
    addiu	$a5,$a5,1
    bnez	$a6,.L0d961220
    sw	$a5,0($sp)
    # Line 1329
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1328
    lw	$a6,1792($s5)
    lui	$a7,0x3fc0
    # Line 1329
    li	$a0,3552
    # Line 1328
    ori	$a7,$a7,0xffff
    and	$a6,$a6,$a7
    # Line 1329
    bal __glkonim_IsEnabled
    # Line 1328
    sw	$a6,1792($s5)
    # Line 1329
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,3553
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s1,$v0
    bal __glkonim_IsEnabled
    li	$a0,3168
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s2,$v0
    bal __glkonim_IsEnabled
    li	$a0,3169
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s4,$v0
    bal __glkonim_IsEnabled
    li	$a0,3170
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s3,$v0
    bal __glkonim_IsEnabled
    li	$a0,3171
    sll	$t3,$v0,0x15
    sll	$t2,$s1,0x11
    sll	$t9,$s4,0x13
    sll	$t8,$s2,0x12
    sll	$t1,$s0,0x10
    or	$t8,$t8,$t9
    or	$t1,$t1,$t2
    sll	$t2,$s3,0x14
    lw	$t0,1792($s5)
    or	$t2,$t2,$t3
    or	$t1,$t1,$t8
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    sw	$t0,1792($s5)
    andi	$t3,$s6,0x1000
.L0d961358:
    beqz	$t3,.L0d961544
    # Line 1384
    andi	$t8,$s6,0x800
    # Line 1349
    lw	$t9,12($s5)
    # Line 1346
    lw	$s0,3600($s5)
    # Line 1349
    move	$a0,$s5
    lw	$a1,1748($s5)
    # Line 1346
    addu	$s0,$s0,$s0
    # Line 1349
    jal	__glkonim_IsEnabled
    # Line 1346
    sll	$s0,$s0,0x4
    # Line 1353
    lw	$t9,0($s5)
    move	$a0,$s5
    jalr	$t9
    move	$a1,$s0
    # Line 1355
    # lw $t9, -32120($gp) # &__glkon_get_special
    move	$a1,$zero
    li	$a0,459
    jal	__glkon_get_special
    # Line 1353
    sw	$v0,1748($s5)
    # Line 1357
    # lw $t9, -18508($gp) # &memcpy
    move	$a2,$s0
    addiu	$a1,$v0,-4
    jal	memcpy
    lw	$a0,1748($s5)
    # Line 1358
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1744
    jal	__glkonim_GetIntegerv
    li	$a0,2976
    # Line 1360
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1359
    lui	$ra,0x40
    lw	$t8,1792($s5)
    # Line 1360
    li	$a0,2977
    # Line 1359
    nor	$ra,$ra,$zero
    and	$t8,$t8,$ra
    # Line 1360
    bal __glkonim_IsEnabled
    # Line 1359
    sw	$t8,1792($s5)
    # Line 1363
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    li	$a0,0x80bc
    # Line 1360
    lw	$at,1792($s5)
    sll	$v1,$v0,0x16
    # Line 1362
    lui	$v0,0x7fff
    # Line 1360
    or	$at,$at,$v1
    # Line 1362
    ori	$v0,$v0,0xffff
    and	$at,$at,$v0
    # Line 1363
    bal __glkonim_IsEnabled
    # Line 1362
    sw	$at,1792($s5)
    # Line 1364
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1363
    negu	$a2,$v0
    lw	$a1,1792($s5)
    # Line 1364
    li	$a0,12289
    # Line 1363
    sll	$a2,$a2,0x1f
    or	$a1,$a1,$a2
    # Line 1364
    bal __glkonim_IsEnabled
    # Line 1363
    sw	$a1,1792($s5)
    # Line 1364
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s1,$v0
    bal __glkonim_IsEnabled
    li	$a0,12288
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s0,$v0
    bal __glkonim_IsEnabled
    li	$a0,12290
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s2,$v0
    bal __glkonim_IsEnabled
    li	$a0,12291
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s4,$v0
    bal __glkonim_IsEnabled
    li	$a0,12292
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    move	$s3,$v0
    bal __glkonim_IsEnabled
    li	$a0,12293
    # Line 1372
    addiu	$a1,$s5,1752
    li	$a0,0x8149
    # Line 1364
    sll	$a6,$s2,0x2
    addu	$a3,$s1,$s1
    sll	$a7,$s4,0x3
    # Line 1372
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    # Line 1364
    or	$a3,$s0,$a3
    sll	$a4,$s3,0x4
    or	$a6,$a6,$a7
    sll	$a5,$v0,0x5
    or	$a3,$a3,$a6
    or	$a4,$a4,$a5
    or	$a3,$a3,$a4
    # Line 1372
    jal	__glkonim_GetIntegerv
    # Line 1364
    sw	$a3,1804($s5)
    # Line 1373
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1756
    jal	__glkonim_GetFloatv
    li	$a0,0x814a
    # Line 1374
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,1772
    jal	__glkonim_GetFloatv
    li	$a0,0x814b
    # Line 1377
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1376
    lw	$a4,1796($s5)
    # Line 1377
    li	$a0,0x8148
    # Line 1376
    li	$a5,-9
    and	$a4,$a4,$a5
    # Line 1377
    bal __glkonim_IsEnabled
    # Line 1376
    sw	$a4,1796($s5)
    # Line 1380
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1788
    # Line 1377
    lw	$a6,1796($s5)
    # Line 1380
    li	$a0,0x8196
    # Line 1377
    sll	$a7,$v0,0x3
    or	$a6,$a6,$a7
    # Line 1380
    jal	__glkonim_GetIntegerv
    # Line 1377
    sw	$a6,1796($s5)
    # Line 1384
    # lw $t9, -32080($gp) # &__glkonim_IsEnabled
    # Line 1383
    lw	$t0,1796($s5)
    # Line 1384
    li	$a0,0x817d
    # Line 1383
    li	$t1,-65
    and	$t0,$t0,$t1
    # Line 1384
    bal __glkonim_IsEnabled
    # Line 1383
    sw	$t0,1796($s5)
    # Line 1384
    lw	$t2,1796($s5)
    sll	$t3,$v0,0x6
    or	$t2,$t2,$t3
    sw	$t2,1796($s5)
    andi	$t8,$s6,0x800
.L0d961544:
    beqz	$t8,.L0d961568
    # Line 1388
    nop	# was lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,1688
    jal	__glkonim_GetIntegerv
    li	$a0,2978
    # Line 1389
    # lw $t9, -32096($gp) # &__glkonim_GetDoublev
    addiu	$a1,$s5,1704
    jal	__glkonim_GetDoublev
    li	$a0,2928
.L0d961568:
    ld	$s1,256($sp)
    ld	$s0,248($sp)
    ld	$s4,232($sp)
    dsll32	$t9,$s6,0x2
    ld	$s3,216($sp)
    bgez	$t9,.L0d9615b4
    ld	$s2,208($sp)
    # Line 1393
    # lw $t9, -32088($gp) # &__glkonim_GetIntegerv
    addiu	$a1,$s5,3184
    jal	__glkonim_GetIntegerv
    li	$a0,0x80ac
    # Line 1395
    # lw $t9, -32092($gp) # &__glkonim_GetFloatv
    addiu	$a1,$s5,3188
    jal	__glkonim_GetFloatv
    li	$a0,0x80aa
    # Line 1397
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,3192
    jal	__glkonim_GetBooleanv
    li	$a0,0x80ab
.L0d9615b4:
    lui	$ra,0x2000
    ori	$ra,$ra,0x2000
    and	$ra,$s6,$ra
    beqz	$ra,.L0d961604
    # Line 1401
    nop	# was lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,3180
    jal	__glkonim_GetBooleanv
    li	$a0,0x809d
    # Line 1403
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,3193
    jal	__glkonim_GetBooleanv
    li	$a0,0x80a0
    # Line 1405
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,3194
    jal	__glkonim_GetBooleanv
    li	$a0,0x809f
    # Line 1407
    # lw $t9, -32100($gp) # &__glkonim_GetBooleanv
    addiu	$a1,$s5,3195
    jal	__glkonim_GetBooleanv
    li	$a0,0x809e
.L0d961604:
    # Line 1417
    ld	$gp,176($sp)
    ld	$s7,184($sp)
    # Line 1414
    lw	$at,31580($s5)
    # Line 1415
    lw	$v0,31584($s5)
    # Line 1414
    ori	$at,$at,0x1
    sw	$at,31580($s5)
    ld	$ra,240($sp)
    # Line 1415
    or	$v0,$v0,$s6
    sw	$v0,31584($s5)
    # Line 1417
    li	$v0,1
    ld	$s5,168($sp)
    ld	$s6,192($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glkonCopyContext

# Function: __glkonResolveContext
# Declared: Line 1421 (Source lines: 1421-1841)
# Address: 0x0d961640 - 0x0d9637e8 (Size: 8616 bytes, Frame: 224)
.globl __glkonResolveContext
.ent __glkonResolveContext
__glkonResolveContext:
    # Line 1421
    addiu	$sp,$sp,-96
    sd	$s0,0($sp)
    # Line 1422
    lw	$s0,4112($zero)
    # Line 1421
    sd	$s6,16($sp)
    # Line 1425
    lw	$s6,31584($s0)
    # Line 1421
    lui	$v0,0x13
    # Line 1425
    andi	$at,$s6,0x200
    sd	$ra,48($sp)
    # Line 1421
    addiu	$v0,$v0,-1640
    sd	$gp,8($sp)
    # Line 1425
    beqz	$at,.L0d961688
    # Line 1421
    addu	$gp,$t9,$v0
    # Line 1436
    lwc1	$f15,1660($s0)
    # lw $t9, -17616($gp) # &glClearAccum
    lwc1	$f14,1656($s0)
    lwc1	$f13,1652($s0)
    jal	glClearAccum
    lwc1	$f12,1648($s0)
.L0d961688:
    sd	$s5,80($sp)
    sd	$s1,72($sp)
    sd	$s7,64($sp)
    sd	$s4,56($sp)
    andi	$v1,$s6,0x4000
    sd	$s3,40($sp)
    beqz	$v1,.L0d9617ac
    sd	$s2,32($sp)
    # Line 1441
    # lw $t9, -17472($gp) # &glAlphaFunc
    lwc1	$f13,1824($s0)
    jal	glAlphaFunc
    lw	$a0,1820($s0)
    # Line 1443
    # lw $t9, -17468($gp) # &glBlendFunc
    lw	$a1,1832($s0)
    jal	glBlendFunc
    lw	$a0,1828($s0)
    # Line 1444
    # lw $t9, -17464($gp) # &glLogicOp
    jal	glLogicOp
    lw	$a0,1856($s0)
    # Line 1445
    lwc1	$f15,1872($s0)
    # lw $t9, -17608($gp) # &glClearColor
    lwc1	$f14,1868($s0)
    lwc1	$f13,1864($s0)
    jal	glClearColor
    lwc1	$f12,1860($s0)
    # Line 1447
    # lw $t9, -17612($gp) # &glClearIndex
    jal	glClearIndex
    lwc1	$f12,1876($s0)
    # Line 1448
    # lw $t9, -17584($gp) # &glIndexMask
    jal	glIndexMask
    lw	$a0,1880($s0)
    # Line 1449
    lbu	$a3,1887($s0)
    # lw $t9, -17592($gp) # &glColorMask
    lbu	$a2,1886($s0)
    lbu	$a1,1885($s0)
    jal	glColorMask
    lbu	$a0,1884($s0)
    # Line 1451
    lwc1	$f15,1852($s0)
    # lw $t9, -17208($gp) # &glBlendColorEXT
    lwc1	$f14,1848($s0)
    lwc1	$f13,1844($s0)
    jal	glBlendColorEXT
    lwc1	$f12,1840($s0)
    # Line 1455
    # lw $t9, -17624($gp) # &glDrawBuffer
    jal	glDrawBuffer
    lw	$a0,1888($s0)
    lw	$a0,1792($s0)
    andi	$a0,$a0,0x1
    beqz	$a0,.L0d963454
    # Line 1457
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3008
    lw	$a1,1792($s0)
.L0d961760:
    andi	$a1,$a1,0x2
    beqz	$a1,.L0d963464
    # Line 1458
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3042
    lw	$a2,1792($s0)
.L0d96177c:
    andi	$a2,$a2,0x8
    beqz	$a2,.L0d963474
    # Line 1459
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3024
    lw	$a3,1792($s0)
.L0d961798:
    andi	$a3,$a3,0x4
    beqz	$a3,.L0d963484
    # Line 1460
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3057
.L0d9617ac:
    andi	$a4,$s6,0x1
.L0d9617b0:
    beqz	$a4,.L0d961808
    # Line 1473
    andi	$ra,$s6,0x100
    # Line 1464
    # lw $t9, -18312($gp) # &glColor4fv
    jal	glColor4fv
    addiu	$a0,$s0,432
    # Line 1465
    # lw $t9, -18248($gp) # &glIndexf
    jal	glIndexf
    lwc1	$f12,448($s0)
    # Line 1470
    # lw $t9, -17948($gp) # &glTexCoord4fv
    jal	glTexCoord4fv
    addiu	$a0,$s0,224
    # Line 1471
    # lw $t9, -18204($gp) # &glNormal3fv
    jal	glNormal3fv
    addiu	$a0,$s0,208
    # Line 1472
    # lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,14320
    bal __glkonResolveContext
    addiu	$a0,$s0,240
    # Line 1473
    # lw $t9, -18268($gp) # &glEdgeFlag
    jal	glEdgeFlag
    lbu	$a0,453($s0)
    andi	$ra,$s6,0x100
.L0d961808:
    beqz	$ra,.L0d961854
    # Line 1480
    dsll32	$v0,$s6,0xf
    # Line 1477
    # lw $t9, -17452($gp) # &glDepthFunc
    jal	glDepthFunc
    lw	$a0,1632($s0)
    # Line 1478
    # lw $t9, -17588($gp) # &glDepthMask
    jal	glDepthMask
    lbu	$a0,1636($s0)
    # Line 1479
    # lw $t9, -17600($gp) # &glClearDepth
    jal	glClearDepth
    ldc1	$f12,1640($s0)
    lw	$at,1792($s0)
    andi	$at,$at,0x10
    beqz	$at,.L0d963498
    # Line 1480
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2929
    dsll32	$v0,$s6,0xf
.L0d961854:
    bgez	$v0,.L0d961a98
    # Line 1504
    andi	$a0,$s6,0x80
    # Line 1484
    # lw $t9, -17532($gp) # &glMapGrid1f
    lwc1	$f14,1936($s0)
    lwc1	$f13,1932($s0)
    jal	glMapGrid1f
    lw	$a0,1944($s0)
    # Line 1485
    lwc1	$f17,1968($s0)
    lwc1	$f16,1964($s0)
    lw	$a3,1976($s0)
    # lw $t9, -17524($gp) # &glMapGrid2f
    lwc1	$f14,1952($s0)
    lwc1	$f13,1948($s0)
    jal	glMapGrid2f
    lw	$a0,1960($s0)
    lw	$v1,1792($s0)
    dsll32	$v1,$v1,0x8
    bgez	$v1,.L0d9634a8
    # Line 1486
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3456
    lw	$a0,1808($s0)
.L0d9618b0:
    andi	$a0,$a0,0x80
    beqz	$a0,.L0d9634b8
    # Line 1487
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3479
    lw	$a1,1808($s0)
.L0d9618c8:
    andi	$a1,$a1,0x100
    beqz	$a1,.L0d9634cc
    # Line 1488
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3480
    lw	$a2,1808($s0)
.L0d9618e4:
    andi	$a2,$a2,0x1
    beqz	$a2,.L0d9634dc
    # Line 1489
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3472
    lw	$a3,1808($s0)
.L0d9618fc:
    andi	$a3,$a3,0x2
    beqz	$a3,.L0d9634f0
    # Line 1490
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3473
    lw	$a4,1808($s0)
.L0d961918:
    andi	$a4,$a4,0x4
    beqz	$a4,.L0d963500
    # Line 1491
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3474
    lw	$a5,1808($s0)
.L0d961934:
    andi	$a5,$a5,0x8
    beqz	$a5,.L0d963510
    # Line 1492
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3475
    lw	$a6,1808($s0)
.L0d961950:
    andi	$a6,$a6,0x10
    beqz	$a6,.L0d963520
    # Line 1493
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3476
    lw	$a7,1808($s0)
.L0d96196c:
    andi	$a7,$a7,0x20
    beqz	$a7,.L0d963530
    # Line 1494
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3477
    lw	$t0,1808($s0)
.L0d961988:
    andi	$t0,$t0,0x40
    beqz	$t0,.L0d963540
    # Line 1495
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3478
    lw	$t1,1812($s0)
.L0d9619a4:
    andi	$t1,$t1,0x80
    beqz	$t1,.L0d963550
    # Line 1496
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3511
    lw	$t2,1812($s0)
.L0d9619c0:
    andi	$t2,$t2,0x100
    beqz	$t2,.L0d963560
    # Line 1497
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3512
    lw	$t3,1812($s0)
.L0d9619dc:
    andi	$t3,$t3,0x1
    beqz	$t3,.L0d963570
    # Line 1498
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3504
    lw	$t8,1812($s0)
.L0d9619f4:
    andi	$t8,$t8,0x2
    beqz	$t8,.L0d963584
    # Line 1499
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3505
    lw	$t9,1812($s0)
.L0d961a10:
    andi	$t9,$t9,0x4
    beqz	$t9,.L0d963594
    # Line 1500
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3506
    lw	$ra,1812($s0)
.L0d961a28:
    andi	$ra,$ra,0x8
    beqz	$ra,.L0d9635a8
    # Line 1501
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3507
    lw	$at,1812($s0)
.L0d961a44:
    andi	$at,$at,0x10
    beqz	$at,.L0d9635b8
    # Line 1502
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3508
    lw	$v0,1812($s0)
.L0d961a60:
    andi	$v0,$v0,0x20
    beqz	$v0,.L0d9635c8
    # Line 1503
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3509
    lw	$v1,1812($s0)
.L0d961a7c:
    andi	$v1,$v1,0x40
    beqz	$v1,.L0d9635d8
    # Line 1504
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3510
    andi	$a0,$s6,0x80
.L0d961a98:
    beqz	$a0,.L0d961b68
    # Line 1518
    andi	$a3,$s6,0x8000
    # Line 1508
    # lw $t9, -17816($gp) # &glFogfv
    addiu	$a1,$s0,1592
    jal	glFogfv
    li	$a0,2918
    # Line 1509
    # lw $t9, -17820($gp) # &glFogf
    lwc1	$f13,1624($s0)
    jal	glFogf
    li	$a0,2913
    # Line 1510
    # lw $t9, -17820($gp) # &glFogf
    lwc1	$f13,1608($s0)
    jal	glFogf
    li	$a0,2914
    # Line 1511
    # lw $t9, -17820($gp) # &glFogf
    lwc1	$f13,1612($s0)
    jal	glFogf
    li	$a0,2915
    # Line 1512
    # lw $t9, -17820($gp) # &glFogf
    lwc1	$f13,1616($s0)
    jal	glFogf
    li	$a0,2916
    # Line 1513
    # lw $t9, -17812($gp) # &glFogi
    lw	$a1,1588($s0)
    jal	glFogi
    li	$a0,2917
    lw	$a1,1792($s0)
    andi	$a1,$a1,0x20
    beqz	$a1,.L0d9635e8
    # Line 1514
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2912
    # Line 1516
    # lw $t9, -16844($gp) # &glFogFuncSGIS
.L0d961b20:
    lui	$a0,0x1
    li	$a1,0x90b4
    addu	$a0,$a0,$s0
    addu	$a1,$s0,$a1
    jal	glFogFuncSGIS
    lw	$a0,-28496($a0)
    # Line 1517
    # lw $t9, -17816($gp) # &glFogfv
    li	$a0,0x8199
    li	$a1,0xa0b4
    jal	glFogfv
    addu	$a1,$s0,$a1
    lw	$a2,1796($s0)
    andi	$a2,$a2,0x10
    beqz	$a2,.L0d9635f8
    # Line 1518
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8198
    andi	$a3,$s6,0x8000
.L0d961b68:
    beqz	$a3,.L0d961bc4
    # Line 1526
    andi	$a4,$s6,0x40
    # Line 1522
    # lw $t9, -17800($gp) # &glHint
    lw	$a1,1896($s0)
    jal	glHint
    li	$a0,3152
    # Line 1523
    # lw $t9, -17800($gp) # &glHint
    lw	$a1,1900($s0)
    jal	glHint
    li	$a0,3153
    # Line 1524
    # lw $t9, -17800($gp) # &glHint
    lw	$a1,1904($s0)
    jal	glHint
    li	$a0,3154
    # Line 1525
    # lw $t9, -17800($gp) # &glHint
    lw	$a1,1908($s0)
    jal	glHint
    li	$a0,3155
    # Line 1526
    # lw $t9, -17800($gp) # &glHint
    lw	$a1,1912($s0)
    jal	glHint
    li	$a0,3156
    andi	$a4,$s6,0x40
.L0d961bc4:
    beqz	$a4,.L0d961fbc
    # Line 1535
    nop	# was lw $t9, -17724($gp) # &glShadeModel
    lw	$a0,1392($s0)
    # Line 1531
    lw	$s2,1584($s0)
    # Line 1535
    jal	glShadeModel
    # Line 1530
    addiu	$s1,$s0,1424
    # Line 1536
    # lw $t9, -17828($gp) # &glColorMaterial
    lw	$a1,1388($s0)
    lw	$a0,1384($s0)
    jal	glColorMaterial
    sd	$s2,24($sp)
    li	$s3,1028
    addiu	$s2,$s1,68
    addiu	$s4,$s1,48
    addiu	$s5,$s1,32
    addiu	$s7,$s1,16
    # Line 1539
    # lw $t9, -17752($gp) # &glMaterialfv
    move	$a0,$s3
    move	$a2,$s1
    jal	glMaterialfv
    li	$a1,4608
    # Line 1540
    # lw $t9, -17752($gp) # &glMaterialfv
    move	$a0,$s3
    move	$a2,$s7
    jal	glMaterialfv
    li	$a1,4609
    # Line 1541
    # lw $t9, -17752($gp) # &glMaterialfv
    move	$a0,$s3
    move	$a2,$s5
    jal	glMaterialfv
    li	$a1,4610
    # Line 1542
    # lw $t9, -17752($gp) # &glMaterialfv
    move	$a0,$s3
    move	$a2,$s4
    jal	glMaterialfv
    li	$a1,5632
    # Line 1543
    # lw $t9, -17756($gp) # &glMaterialf
    move	$a0,$s3
    lwc1	$f14,64($s1)
    jal	glMaterialf
    li	$a1,5633
    # Line 1544
    # lw $t9, -17752($gp) # &glMaterialfv
    move	$a0,$s3
    move	$a2,$s2
    jal	glMaterialfv
    li	$a1,5635
    # Line 1539
    li	$a1,4608
    # Line 1538
    addiu	$s7,$s7,80
    addiu	$s5,$s5,80
    addiu	$s4,$s4,80
    # Line 1539
    # lw $t9, -17752($gp) # &glMaterialfv
    # Line 1538
    addiu	$s2,$s2,80
    addiu	$s1,$s1,80
    # Line 1539
    move	$a2,$s1
    # Line 1538
    addiu	$s3,$s3,1
    # Line 1539
    jal	glMaterialfv
    move	$a0,$s3
    # Line 1540
    # lw $t9, -17752($gp) # &glMaterialfv
    move	$a0,$s3
    move	$a2,$s7
    jal	glMaterialfv
    li	$a1,4609
    # Line 1541
    # lw $t9, -17752($gp) # &glMaterialfv
    move	$a0,$s3
    move	$a2,$s5
    jal	glMaterialfv
    li	$a1,4610
    # Line 1542
    # lw $t9, -17752($gp) # &glMaterialfv
    move	$a0,$s3
    move	$a2,$s4
    jal	glMaterialfv
    li	$a1,5632
    # Line 1543
    # lw $t9, -17756($gp) # &glMaterialf
    move	$a0,$s3
    lwc1	$f14,64($s1)
    jal	glMaterialf
    li	$a1,5633
    # Line 1544
    # lw $t9, -17752($gp) # &glMaterialfv
    move	$a0,$s3
    move	$a2,$s2
    jal	glMaterialfv
    li	$a1,5635
    ld	$a2,24($sp)
    # Line 1547
    lw	$a0,3588($s0)
    sll	$a5,$a0,0x2
    subu	$a5,$a5,$a0
    sll	$a5,$a5,0x2
    li	$a6,281
    sw	$a6,16384($zero)
    blez	$a0,.L0d961e90
    sw	$a5,16384($zero)
    move	$s1,$a2
    move	$s3,$zero
    nop
    nop
.L0d961d40:
    # Line 1560
    lwc1	$f0,92($s1)
    # Line 1559
    lwc1	$f1,88($s1)
    # Line 1558
    lwc1	$f2,84($s1)
    # Line 1557
    lwc1	$f3,80($s1)
    # Line 1556
    lwc1	$f4,76($s1)
    # Line 1555
    lwc1	$f5,72($s1)
    # Line 1554
    lwc1	$f6,68($s1)
    # Line 1553
    lwc1	$f7,64($s1)
    # Line 1552
    lwc1	$f8,60($s1)
    # Line 1551
    lwc1	$f9,56($s1)
    # Line 1549
    lwc1	$f11,48($s1)
    # Line 1550
    lwc1	$f10,52($s1)
    # Line 1549
    swc1	$f11,16384($zero)
    # Line 1550
    swc1	$f10,16384($zero)
    # Line 1551
    swc1	$f9,16384($zero)
    # Line 1552
    swc1	$f8,16384($zero)
    # Line 1553
    swc1	$f7,16384($zero)
    # Line 1554
    swc1	$f6,16384($zero)
    # Line 1555
    swc1	$f5,16384($zero)
    # Line 1556
    swc1	$f4,16384($zero)
    # Line 1557
    swc1	$f3,16384($zero)
    # Line 1548
    addiu	$s3,$s3,1
    # Line 1558
    swc1	$f2,16384($zero)
    # Line 1548
    slt	$a6,$s3,$a0
    # Line 1559
    swc1	$f1,16384($zero)
    # Line 1548
    addiu	$s1,$s1,116
    bnez	$a6,.L0d961d40
    # Line 1560
    swc1	$f0,16384($zero)
    # Line 1548
    blez	$a0,.L0d961e90
    addiu	$s4,$a2,32
    addiu	$s5,$a2,16
    move	$s1,$a2
    li	$s2,16384
    move	$s3,$zero
    nop
    nop
.L0d961dd0:
    # Line 1563
    # lw $t9, -17792($gp) # &glLightfv
    move	$a0,$s2
    move	$a2,$s1
    jal	glLightfv
    li	$a1,4608
    # Line 1564
    # lw $t9, -17792($gp) # &glLightfv
    move	$a0,$s2
    move	$a2,$s5
    jal	glLightfv
    li	$a1,4609
    # Line 1565
    # lw $t9, -17792($gp) # &glLightfv
    move	$a0,$s2
    move	$a2,$s4
    jal	glLightfv
    li	$a1,4610
    # Line 1567
    # lw $t9, -17796($gp) # &glLightf
    move	$a0,$s2
    lwc1	$f14,96($s1)
    jal	glLightf
    li	$a1,4613
    # Line 1569
    # lw $t9, -17796($gp) # &glLightf
    move	$a0,$s2
    lwc1	$f14,100($s1)
    jal	glLightf
    li	$a1,4614
    # Line 1571
    # lw $t9, -17796($gp) # &glLightf
    move	$a0,$s2
    lwc1	$f14,104($s1)
    jal	glLightf
    li	$a1,4615
    # Line 1573
    # lw $t9, -17796($gp) # &glLightf
    move	$a0,$s2
    lwc1	$f14,108($s1)
    jal	glLightf
    li	$a1,4616
    # Line 1575
    # lw $t9, -17796($gp) # &glLightf
    move	$a0,$s2
    lwc1	$f14,112($s1)
    jal	glLightf
    li	$a1,4617
    # Line 1562
    lw	$a7,3588($s0)
    addiu	$s3,$s3,1
    addiu	$s2,$s2,1
    slt	$a7,$s3,$a7
    addiu	$s5,$s5,116
    addiu	$s4,$s4,116
    bnez	$a7,.L0d961dd0
    addiu	$s1,$s1,116
.L0d961e90:
    # Line 1578
    # lw $t9, -17776($gp) # &glLightModelfv
    addiu	$a1,$s0,1396
    jal	glLightModelfv
    li	$a0,2899
    # Line 1580
    # lw $t9, -17772($gp) # &glLightModeli
    lbu	$a1,1412($s0)
    jal	glLightModeli
    li	$a0,2897
    # Line 1581
    # lw $t9, -17772($gp) # &glLightModeli
    lbu	$a1,1413($s0)
    jal	glLightModeli
    li	$a0,2898
    lw	$t0,1792($s0)
    andi	$t0,$t0,0x40
    beqz	$t0,.L0d96360c
    # Line 1583
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2896
    lw	$t1,1792($s0)
.L0d961edc:
    andi	$t1,$t1,0x80
    beqz	$t1,.L0d963620
    # Line 1584
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2903
    lw	$t2,1800($s0)
.L0d961ef4:
    andi	$t2,$t2,0x1
    beqz	$t2,.L0d963634
    # Line 1585
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16384
    lw	$t3,1800($s0)
.L0d961f0c:
    andi	$t3,$t3,0x2
    beqz	$t3,.L0d963648
    # Line 1586
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16385
    lw	$t8,1800($s0)
.L0d961f24:
    andi	$t8,$t8,0x4
    beqz	$t8,.L0d96365c
    # Line 1587
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16386
    lw	$t9,1800($s0)
.L0d961f3c:
    andi	$t9,$t9,0x8
    beqz	$t9,.L0d963670
    # Line 1588
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16387
    lw	$ra,1800($s0)
.L0d961f58:
    andi	$ra,$ra,0x10
    beqz	$ra,.L0d963680
    # Line 1589
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16388
    lw	$at,1800($s0)
.L0d961f70:
    andi	$at,$at,0x20
    beqz	$at,.L0d963694
    # Line 1590
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16389
    lw	$v0,1800($s0)
.L0d961f88:
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d9636a8
    # Line 1591
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16390
    lw	$v1,1800($s0)
.L0d961fa4:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0d9636b8
    # Line 1592
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16391
.L0d961fbc:
    andi	$a0,$s6,0x4
.L0d961fc0:
    beqz	$a0,.L0d962014
    # Line 1596
    nop	# was lw $t9, -17760($gp) # &glLineWidth
    jal	glLineWidth
    lwc1	$f12,468($s0)
    # Line 1597
    # lw $t9, -17764($gp) # &glLineStipple
    lhu	$a1,480($s0)
    jal	glLineStipple
    lh	$a0,482($s0)
    lw	$a1,1792($s0)
    andi	$a1,$a1,0x100
    beqz	$a1,.L0d9636c8
    # Line 1598
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2852
    lw	$a2,1792($s0)
.L0d962000:
    andi	$a2,$a2,0x200
    beqz	$a2,.L0d9636d8
    # Line 1599
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2848
.L0d962014:
    dsll32	$a3,$s6,0xe
.L0d962018:
    bgez	$a3,.L0d962028
    # Line 1603
    nop	# was lw $t9, -18408($gp) # &glListBase
    jal	glListBase
    lw	$a0,1980($s0)
.L0d962028:
    andi	$a4,$s6,0x20
    beqz	$a4,.L0d962040
    # Line 1607
    nop	# was lw $t9, -32740($gp) # &sub_0d960000
    addiu	$t9,$t9,14480
    bal __glkonResolveContext
    addiu	$a0,$s0,176
.L0d962040:
    andi	$ra,$s6,0x2
    beqz	$ra,.L0d96206c
    # Line 1611
    nop	# was lw $t9, -17740($gp) # &glPointSize
    jal	glPointSize
    lwc1	$f12,456($s0)
    lw	$at,1792($s0)
    andi	$at,$at,0x400
    beqz	$at,.L0d9636ec
    # Line 1612
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2832
.L0d96206c:
    andi	$v0,$s6,0x8
.L0d962070:
    beqz	$v0,.L0d9620f0
    # Line 1621
    andi	$a2,$s6,0x10
    # Line 1616
    # lw $t9, -17824($gp) # &glCullFace
    jal	glCullFace
    lw	$a0,492($s0)
    # Line 1617
    # lw $t9, -17804($gp) # &glFrontFace
    jal	glFrontFace
    lw	$a0,496($s0)
    # Line 1618
    # lw $t9, -17736($gp) # &glPolygonMode
    lw	$a1,488($s0)
    jal	glPolygonMode
    lw	$a0,484($s0)
    lw	$v1,1792($s0)
    andi	$v1,$v1,0x800
    beqz	$v1,.L0d963700
    # Line 1619
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2881
    lw	$a0,1792($s0)
.L0d9620bc:
    andi	$a0,$a0,0x1000
    beqz	$a0,.L0d963714
    # Line 1620
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2884
    lw	$a1,1792($s0)
.L0d9620d8:
    andi	$a1,$a1,0x2000
    beqz	$a1,.L0d963724
    # Line 1621
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2882
    andi	$a2,$s6,0x10
.L0d9620f0:
    beqz	$a2,.L0d962100
    # Line 1625
    nop	# was lw $t9, -17732($gp) # &glPolygonStipple
    jal	glPolygonStipple
    addiu	$a0,$s0,512
.L0d962100:
    dsll32	$a3,$s6,0xc
    bgez	$a3,.L0d962144
    # Line 1630
    andi	$a5,$s6,0x400
    # Line 1629
    lw	$a3,2536($s0)
    # lw $t9, -17728($gp) # &glScissor
    lw	$a2,2532($s0)
    lw	$a1,2528($s0)
    jal	glScissor
    lw	$a0,2524($s0)
    lw	$a4,1792($s0)
    andi	$a4,$a4,0x4000
    beqz	$a4,.L0d963738
    # Line 1630
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3089
    andi	$a5,$s6,0x400
.L0d962144:
    beqz	$a5,.L0d9621ac
    # Line 1638
    dsll32	$a7,$s6,0xd
    # Line 1634
    # lw $t9, -17460($gp) # &glStencilFunc
    lh	$a2,1672($s0)
    lh	$a1,1670($s0)
    jal	glStencilFunc
    lw	$a0,1664($s0)
    # Line 1635
    # lw $t9, -17456($gp) # &glStencilOp
    lw	$a2,1684($s0)
    lw	$a1,1680($s0)
    jal	glStencilOp
    lw	$a0,1676($s0)
    # Line 1636
    # lw $t9, -17596($gp) # &glStencilMask
    jal	glStencilMask
    lh	$a0,1674($s0)
    # Line 1637
    # lw $t9, -17604($gp) # &glClearStencil
    jal	glClearStencil
    lh	$a0,1668($s0)
    lw	$a6,1792($s0)
    andi	$a6,$a6,0x8000
    beqz	$a6,.L0d963748
    # Line 1638
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2960
    dsll32	$a7,$s6,0xd
.L0d9621ac:
    bgez	$a7,.L0d962548
    # Line 1714
    andi	$ra,$s6,0x1000
    # Line 1643
    lw	$s3,2480($s0)
    # Line 1684
    lwc1	$f12,2388($s0)
    # Line 1683
    lwc1	$f13,2384($s0)
    # Line 1682
    lwc1	$f14,2380($s0)
    # Line 1681
    lwc1	$f15,2376($s0)
    # Line 1680
    lwc1	$f16,2264($s0)
    # Line 1679
    lwc1	$f17,2260($s0)
    # Line 1678
    lwc1	$f18,2256($s0)
    # Line 1677
    lwc1	$f19,2252($s0)
    # Line 1676
    lwc1	$f21,2140($s0)
    # Line 1675
    lwc1	$f23,2136($s0)
    # Line 1674
    lwc1	$f25,2132($s0)
    # Line 1673
    lwc1	$f27,2128($s0)
    # Line 1672
    lwc1	$f29,2016($s0)
    # Line 1671
    lwc1	$f31,2012($s0)
    # Line 1670
    lwc1	$f0,2008($s0)
    # Line 1669
    lwc1	$f1,2004($s0)
    # Line 1667
    lwc1	$f2,2372($s0)
    # Line 1666
    lwc1	$f3,2368($s0)
    # Line 1665
    lwc1	$f4,2364($s0)
    # Line 1664
    lwc1	$f5,2360($s0)
    # Line 1663
    lwc1	$f6,2248($s0)
    # Line 1662
    lwc1	$f7,2244($s0)
    # Line 1655
    lwc1	$f10,2000($s0)
    # Line 1654
    lwc1	$f11,1996($s0)
    # Line 1651
    li	$t0,470
    sw	$t0,16384($zero)
    sw	$zero,16384($zero)
    # Line 1652
    lwc1	$f9,1988($s0)
    # Line 1653
    lwc1	$f8,1992($s0)
    # Line 1652
    swc1	$f9,16384($zero)
    # Line 1653
    swc1	$f8,16384($zero)
    # Line 1654
    swc1	$f11,16384($zero)
    # Line 1655
    swc1	$f10,16384($zero)
    # Line 1659
    lwc1	$f10,2124($s0)
    # Line 1658
    lwc1	$f11,2120($s0)
    # Line 1656
    lwc1	$f9,2112($s0)
    # Line 1657
    lwc1	$f8,2116($s0)
    # Line 1656
    swc1	$f9,16384($zero)
    # Line 1657
    swc1	$f8,16384($zero)
    # Line 1658
    swc1	$f11,16384($zero)
    # Line 1659
    swc1	$f10,16384($zero)
    # Line 1660
    lwc1	$f9,2236($s0)
    # Line 1661
    lwc1	$f8,2240($s0)
    # Line 1660
    swc1	$f9,16384($zero)
    # Line 1661
    swc1	$f8,16384($zero)
    # Line 1662
    swc1	$f7,16384($zero)
    # Line 1663
    swc1	$f6,16384($zero)
    # Line 1664
    swc1	$f5,16384($zero)
    # Line 1665
    swc1	$f4,16384($zero)
    # Line 1666
    swc1	$f3,16384($zero)
    # Line 1667
    swc1	$f2,16384($zero)
    # Line 1669
    swc1	$f1,16384($zero)
    # Line 1670
    swc1	$f0,16384($zero)
    # Line 1671
    swc1	$f31,16384($zero)
    # Line 1672
    swc1	$f29,16384($zero)
    # Line 1673
    swc1	$f27,16384($zero)
    # Line 1674
    swc1	$f25,16384($zero)
    # Line 1675
    swc1	$f23,16384($zero)
    # Line 1676
    swc1	$f21,16384($zero)
    # Line 1677
    swc1	$f19,16384($zero)
    # Line 1678
    swc1	$f18,16384($zero)
    # Line 1679
    swc1	$f17,16384($zero)
    # Line 1680
    swc1	$f16,16384($zero)
    # Line 1681
    swc1	$f15,16384($zero)
    # Line 1682
    swc1	$f14,16384($zero)
    # Line 1683
    swc1	$f13,16384($zero)
    # Line 1642
    addiu	$s2,$s0,1984
    # Line 1684
    li	$s1,8192
    swc1	$f12,16384($zero)
    # Line 1687
    # lw $t9, -17660($gp) # &glTexGeniv
    move	$a0,$s1
    move	$a2,$s2
    jal	glTexGeniv
    li	$a1,9472
    # lw $t9, -17660($gp) # &glTexGeniv
    li	$a1,9472
    # Line 1686
    addiu	$s2,$s2,124
    # Line 1687
    move	$a2,$s2
    # Line 1686
    addiu	$s1,$s1,1
    # Line 1687
    jal	glTexGeniv
    move	$a0,$s1
    # lw $t9, -17660($gp) # &glTexGeniv
    li	$a1,9472
    # Line 1686
    addiu	$s2,$s2,124
    # Line 1687
    move	$a2,$s2
    # Line 1686
    addiu	$s1,$s1,1
    # Line 1687
    jal	glTexGeniv
    move	$a0,$s1
    # lw $t9, -17660($gp) # &glTexGeniv
    li	$a1,9472
    # Line 1686
    addiu	$s2,$s2,124
    # Line 1687
    move	$a2,$s2
    # Line 1686
    addiu	$s1,$s1,1
    # Line 1687
    jal	glTexGeniv
    move	$a0,$s1
    # Line 1686
    li	$s1,3552
    addiu	$s4,$s3,152
    addiu	$s2,$s3,4
    addiu	$s5,$s3,16
    addiu	$s7,$s3,12
    # Line 1690
    # lw $t9, -17708($gp) # &glTexParameteriv
    move	$a0,$s1
    move	$a2,$s7
    jal	glTexParameteriv
    li	$a1,10241
    # Line 1692
    # lw $t9, -17708($gp) # &glTexParameteriv
    move	$a0,$s1
    move	$a2,$s5
    jal	glTexParameteriv
    li	$a1,10240
    # Line 1694
    # lw $t9, -17708($gp) # &glTexParameteriv
    move	$a0,$s1
    move	$a2,$s3
    jal	glTexParameteriv
    li	$a1,10242
    # Line 1696
    # lw $t9, -17708($gp) # &glTexParameteriv
    move	$a0,$s1
    move	$a2,$s2
    jal	glTexParameteriv
    li	$a1,10243
    # Line 1698
    # lw $t9, -17716($gp) # &glTexParameterfv
    move	$a0,$s1
    move	$a2,$s4
    jal	glTexParameterfv
    li	$a1,4100
    # Line 1690
    li	$a1,10241
    # Line 1689
    addiu	$s5,$s5,224
    addiu	$s2,$s2,224
    addiu	$s4,$s4,224
    # Line 1690
    # lw $t9, -17708($gp) # &glTexParameteriv
    # Line 1689
    addiu	$s3,$s3,224
    addiu	$s7,$s7,224
    # Line 1690
    move	$a2,$s7
    # Line 1689
    addiu	$s1,$s1,1
    # Line 1690
    jal	glTexParameteriv
    move	$a0,$s1
    # Line 1692
    # lw $t9, -17708($gp) # &glTexParameteriv
    move	$a0,$s1
    move	$a2,$s5
    jal	glTexParameteriv
    li	$a1,10240
    # Line 1694
    # lw $t9, -17708($gp) # &glTexParameteriv
    move	$a0,$s1
    move	$a2,$s3
    jal	glTexParameteriv
    li	$a1,10242
    # Line 1696
    # lw $t9, -17708($gp) # &glTexParameteriv
    move	$a0,$s1
    move	$a2,$s2
    jal	glTexParameteriv
    li	$a1,10243
    # Line 1698
    # lw $t9, -17716($gp) # &glTexParameterfv
    move	$a0,$s1
    move	$a2,$s4
    jal	glTexParameterfv
    li	$a1,4100
    # Line 1701
    # lw $t9, -17684($gp) # &glTexEnviv
    li	$a1,8704
    lw	$a2,2484($s0)
    jal	glTexEnviv
    li	$a0,8960
    # Line 1703
    # lw $t9, -17692($gp) # &glTexEnvfv
    lw	$a2,2484($s0)
    li	$a1,8705
    li	$a0,8960
    jal	glTexEnvfv
    addiu	$a2,$a2,4
    # Line 1705
    # lw $t9, -17692($gp) # &glTexEnvfv
    lui	$s1,0x1
    lw	$a2,2484($s0)
    li	$a1,0x80be
    li	$a0,8960
    jal	glTexEnvfv
    addiu	$a2,$a2,20
    lw	$a3,1792($s0)
    and	$a3,$s1,$a3
    beqz	$a3,.L0d9633e4
    # Line 1708
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3552
    lw	$a5,1792($s0)
.L0d962490:
    lui	$a4,0x2
    and	$a4,$a4,$a5
    beqz	$a4,.L0d9633f4
    # Line 1709
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3553
    lw	$a7,1792($s0)
.L0d9624b0:
    lui	$a6,0x4
    and	$a6,$a6,$a7
    beqz	$a6,.L0d963404
    # Line 1710
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3168
    lw	$t1,1792($s0)
.L0d9624d0:
    lui	$t0,0x8
    and	$t0,$t0,$t1
    beqz	$t0,.L0d963414
    # Line 1711
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3169
    lw	$t2,1792($s0)
.L0d9624f0:
    dsll32	$t2,$t2,0xb
    bgez	$t2,.L0d963424
    # Line 1712
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3170
    lw	$t3,1792($s0)
.L0d96250c:
    dsll32	$t3,$t3,0xa
    bgez	$t3,.L0d963434
    # Line 1713
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3171
    lw	$t8,1792($s0)
.L0d962528:
    lui	$t9,0x8000
    and	$t8,$t8,$t9
    beqz	$t8,.L0d963444
    # Line 1714
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x80bc
    andi	$ra,$s6,0x1000
.L0d962548:
    beqz	$ra,.L0d9626a8
    # Line 1744
    andi	$a7,$s6,0x800
    # Line 1725
    # lw $t9, -19580($gp) # &__glkon_datavn
    # Line 1718
    lw	$a0,1748($s0)
    # Line 1724
    li	$at,458
    sw	$at,16384($zero)
    # Line 1725
    li	$a1,61
    jal	__glkon_datavn
    # Line 1724
    sw	$zero,16384($zero)
    # Line 1725
    lw	$v0,1796($s0)
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d963758
    # Line 1727
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x817d
.L0d962588:
    lw	$v1,1792($s0)
    dsll32	$v1,$v1,0x9
    bgez	$v1,.L0d963768
    # Line 1729
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2977
.L0d9625a4:
    lw	$a0,1804($s0)
    andi	$a0,$a0,0x1
    beqz	$a0,.L0d963778
    # Line 1730
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12288
.L0d9625c0:
    lw	$a1,1804($s0)
    andi	$a1,$a1,0x2
    beqz	$a1,.L0d963788
    # Line 1731
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12289
.L0d9625dc:
    lw	$a2,1804($s0)
    andi	$a2,$a2,0x4
    beqz	$a2,.L0d963798
    # Line 1732
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12290
.L0d9625f8:
    lw	$a3,1804($s0)
    andi	$a3,$a3,0x8
    beqz	$a3,.L0d9637a8
    # Line 1733
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12291
.L0d962614:
    lw	$a4,1804($s0)
    andi	$a4,$a4,0x10
    beqz	$a4,.L0d9637b8
    # Line 1734
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12292
.L0d962630:
    lw	$a5,1804($s0)
    andi	$a5,$a5,0x20
    beqz	$a5,.L0d9637c8
    # Line 1735
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12293
.L0d96264c:
    # Line 1737
    # lw $t9, -16868($gp) # &glSpriteParameteriSGIX
    lw	$a1,1752($s0)
    jal	glSpriteParameteriSGIX
    li	$a0,0x8149
    # Line 1738
    # lw $t9, -16872($gp) # &glSpriteParameterfvSGIX
    addiu	$a1,$s0,1756
    jal	glSpriteParameterfvSGIX
    li	$a0,0x814a
    # Line 1740
    # lw $t9, -16872($gp) # &glSpriteParameterfvSGIX
    addiu	$a1,$s0,1772
    jal	glSpriteParameterfvSGIX
    li	$a0,0x814b
    lw	$a6,1796($s0)
    andi	$a6,$a6,0x8
    beqz	$a6,.L0d9637d8
    # Line 1742
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8148
.L0d962698:
    # Line 1744
    # lw $t9, -16792($gp) # &glDeformSGIX
    jal	glDeformSGIX
    lw	$a0,1788($s0)
    andi	$a7,$s6,0x800
.L0d9626a8:
    beqz	$a7,.L0d9626dc
    # Line 1750
    dsll32	$t0,$s6,0x2
    # Line 1749
    lw	$a3,1700($s0)
    # lw $t9, -17212($gp) # &glViewport
    lw	$a2,1696($s0)
    lw	$a1,1692($s0)
    jal	glViewport
    lw	$a0,1688($s0)
    # Line 1750
    # lw $t9, -17280($gp) # &glDepthRange
    ldc1	$f13,1712($s0)
    jal	glDepthRange
    ldc1	$f12,1704($s0)
    dsll32	$t0,$s6,0x2
.L0d9626dc:
    bgez	$t0,.L0d962700
    lui	$s1,0x2000
    # Line 1754
    # lw $t9, -16940($gp) # &glSamplePatternSGIS
    jal	glSamplePatternSGIS
    lw	$a0,3184($s0)
    # Line 1755
    # lw $t9, -16944($gp) # &glSampleMaskSGIS
    lbu	$a1,3192($s0)
    jal	glSampleMaskSGIS
    lwc1	$f12,3188($s0)
.L0d962700:
    lui	$t1,0x2000
    ori	$t1,$t1,0x2000
    and	$t1,$s6,$t1
    beqz	$t1,.L0d962778
    # Line 1765
    andi	$ra,$s6,0x2000
    # Line 1755
    lbu	$t2,3193($s0)
    beqz	$t2,.L0d9633a4
    # Line 1759
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x80a0
    lbu	$t3,3194($s0)
.L0d962730:
    beqz	$t3,.L0d9633b4
    # Line 1761
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x809f
    lbu	$t8,3195($s0)
.L0d962748:
    beqz	$t8,.L0d9633c4
    # Line 1763
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x809e
    lbu	$t9,3180($s0)
.L0d962760:
    beqz	$t9,.L0d9633d4
    # Line 1765
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x809d
    andi	$ra,$s6,0x2000
.L0d962778:
    beqz	$ra,.L0d962f24
    ld	$s5,80($sp)
    lw	$at,1792($s0)
    andi	$at,$at,0x1
    beqz	$at,.L0d962f54
    # Line 1769
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3008
    lw	$v0,1792($s0)
.L0d9627a0:
    andi	$v0,$v0,0x2
    beqz	$v0,.L0d962f64
    # Line 1770
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3042
    lw	$v1,1792($s0)
.L0d9627bc:
    andi	$v1,$v1,0x4
    beqz	$v1,.L0d962f74
    # Line 1771
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3057
    lw	$a0,1792($s0)
.L0d9627d8:
    andi	$a0,$a0,0x8
    beqz	$a0,.L0d962f84
    # Line 1772
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3024
    lw	$a1,1792($s0)
.L0d9627f4:
    andi	$a1,$a1,0x10
    beqz	$a1,.L0d962f94
    # Line 1773
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2929
    lw	$a2,1792($s0)
.L0d962810:
    andi	$a2,$a2,0x20
    beqz	$a2,.L0d962fa4
    # Line 1774
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2912
    lw	$a3,1792($s0)
.L0d96282c:
    andi	$a3,$a3,0x40
    beqz	$a3,.L0d962fb4
    # Line 1775
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2896
    lw	$a4,1792($s0)
.L0d962848:
    andi	$a4,$a4,0x100
    beqz	$a4,.L0d962fc4
    # Line 1776
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2852
    lw	$a5,1792($s0)
.L0d962864:
    andi	$a5,$a5,0x200
    beqz	$a5,.L0d962fd4
    # Line 1777
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2848
    lw	$a6,1792($s0)
.L0d962880:
    andi	$a6,$a6,0x400
    beqz	$a6,.L0d962fe4
    # Line 1778
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2832
    lw	$a7,1792($s0)
.L0d96289c:
    andi	$a7,$a7,0x800
    beqz	$a7,.L0d962ff4
    # Line 1779
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2881
    lw	$t0,1792($s0)
.L0d9628b8:
    andi	$t0,$t0,0x1000
    beqz	$t0,.L0d963004
    # Line 1780
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2884
    lw	$t1,1792($s0)
.L0d9628d4:
    andi	$t1,$t1,0x2000
    beqz	$t1,.L0d963014
    # Line 1781
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2882
    lw	$t2,1792($s0)
.L0d9628f0:
    andi	$t2,$t2,0x4000
    beqz	$t2,.L0d963024
    # Line 1782
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3089
    lw	$t3,1792($s0)
.L0d96290c:
    andi	$t3,$t3,0x8000
    beqz	$t3,.L0d963034
    # Line 1783
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2960
    lw	$t9,1792($s0)
.L0d962928:
    lui	$t8,0x1
    and	$t8,$t8,$t9
    beqz	$t8,.L0d963044
    # Line 1784
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3552
    lw	$at,1792($s0)
.L0d962948:
    lui	$ra,0x2
    and	$ra,$ra,$at
    beqz	$ra,.L0d963054
    # Line 1785
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3553
    lw	$v1,1792($s0)
.L0d962968:
    lui	$v0,0x4
    and	$v0,$v0,$v1
    beqz	$v0,.L0d963064
    # Line 1786
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3168
    lw	$a1,1792($s0)
.L0d962988:
    lui	$a0,0x8
    and	$a0,$a0,$a1
    beqz	$a0,.L0d963074
    # Line 1787
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3169
    lw	$a2,1792($s0)
.L0d9629a8:
    dsll32	$a2,$a2,0xb
    bgez	$a2,.L0d963084
    # Line 1788
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3170
    lw	$a3,1792($s0)
.L0d9629c4:
    dsll32	$a3,$a3,0xa
    bgez	$a3,.L0d963094
    # Line 1789
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3171
    lw	$a4,1792($s0)
.L0d9629e0:
    dsll32	$a4,$a4,0x9
    bgez	$a4,.L0d9630a4
    # Line 1790
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,2977
    lw	$a5,1792($s0)
.L0d9629fc:
    dsll32	$a5,$a5,0x6
    bgez	$a5,.L0d9630b4
    # Line 1791
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8010
    lw	$a6,1792($s0)
.L0d962a18:
    dsll32	$a6,$a6,0x5
    bgez	$a6,.L0d9630c4
    # Line 1792
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8011
    lw	$a7,1792($s0)
.L0d962a34:
    dsll32	$a7,$a7,0x4
    bgez	$a7,.L0d9630d4
    # Line 1793
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8012
    lw	$t0,1792($s0)
.L0d962a50:
    dsll32	$t0,$t0,0x3
    bgez	$t0,.L0d9630e4
    # Line 1794
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8024
    lw	$t1,1792($s0)
.L0d962a6c:
    and	$t1,$s1,$t1
    beqz	$t1,.L0d9630f4
    # Line 1795
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x802e
    lw	$t2,1792($s0)
.L0d962a88:
    lui	$t3,0x8000
    and	$t2,$t2,$t3
    beqz	$t2,.L0d963104
    # Line 1796
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x80bc
    lw	$t8,1800($s0)
.L0d962aa8:
    andi	$t8,$t8,0x1
    beqz	$t8,.L0d963114
    # Line 1797
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16384
    lw	$t9,1800($s0)
.L0d962ac4:
    andi	$t9,$t9,0x2
    beqz	$t9,.L0d963124
    # Line 1798
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16385
    lw	$ra,1800($s0)
.L0d962ae0:
    andi	$ra,$ra,0x4
    beqz	$ra,.L0d963134
    # Line 1799
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16386
    lw	$at,1800($s0)
.L0d962afc:
    andi	$at,$at,0x8
    beqz	$at,.L0d963144
    # Line 1800
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16387
    lw	$v0,1800($s0)
.L0d962b18:
    andi	$v0,$v0,0x10
    beqz	$v0,.L0d963154
    # Line 1801
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16388
    lw	$v1,1800($s0)
.L0d962b34:
    andi	$v1,$v1,0x20
    beqz	$v1,.L0d963164
    # Line 1802
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16389
    lw	$a0,1800($s0)
.L0d962b50:
    andi	$a0,$a0,0x40
    beqz	$a0,.L0d963174
    # Line 1803
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16390
    lw	$a1,1800($s0)
.L0d962b6c:
    andi	$a1,$a1,0x80
    beqz	$a1,.L0d963184
    # Line 1804
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,16391
    lw	$a2,1804($s0)
.L0d962b88:
    andi	$a2,$a2,0x1
    beqz	$a2,.L0d963194
    # Line 1805
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12288
    lw	$a3,1804($s0)
.L0d962ba4:
    andi	$a3,$a3,0x2
    beqz	$a3,.L0d9631a4
    # Line 1806
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12289
    lw	$a4,1804($s0)
.L0d962bc0:
    andi	$a4,$a4,0x4
    beqz	$a4,.L0d9631b4
    # Line 1807
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12290
    lw	$a5,1804($s0)
.L0d962bdc:
    andi	$a5,$a5,0x8
    beqz	$a5,.L0d9631c4
    # Line 1808
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12291
    lw	$a6,1804($s0)
.L0d962bf8:
    andi	$a6,$a6,0x10
    beqz	$a6,.L0d9631d4
    # Line 1809
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12292
    lw	$a7,1804($s0)
.L0d962c14:
    andi	$a7,$a7,0x20
    beqz	$a7,.L0d9631e4
    # Line 1810
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,12293
    lw	$t0,1796($s0)
.L0d962c30:
    andi	$t0,$t0,0x1
    beqz	$t0,.L0d9631f4
    # Line 1811
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x80d0
    lw	$t1,1796($s0)
.L0d962c4c:
    andi	$t1,$t1,0x2
    beqz	$t1,.L0d963204
    # Line 1812
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x80d1
    lw	$t2,1796($s0)
.L0d962c68:
    andi	$t2,$t2,0x4
    beqz	$t2,.L0d963214
    # Line 1813
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x80d2
    lw	$t3,1796($s0)
.L0d962c84:
    andi	$t3,$t3,0x8
    beqz	$t3,.L0d963224
    # Line 1814
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8148
    lw	$t8,1796($s0)
.L0d962ca0:
    andi	$t8,$t8,0x10
    beqz	$t8,.L0d963234
    # Line 1815
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8198
    lw	$t9,1796($s0)
.L0d962cbc:
    andi	$t9,$t9,0x20
    beqz	$t9,.L0d963244
    # Line 1816
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8094
    lw	$ra,1796($s0)
.L0d962cd8:
    andi	$ra,$ra,0x40
    beqz	$ra,.L0d963254
    # Line 1817
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x817d
    lw	$at,1796($s0)
.L0d962cf4:
    andi	$at,$at,0x80
    beqz	$at,.L0d963264
    # Line 1818
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8183
    lw	$v0,1796($s0)
.L0d962d10:
    andi	$v0,$v0,0x100
    beqz	$v0,.L0d963274
    # Line 1819
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x81c7
    lw	$v1,1808($s0)
.L0d962d2c:
    andi	$v1,$v1,0x80
    beqz	$v1,.L0d963284
    # Line 1820
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3479
    lw	$a0,1808($s0)
.L0d962d48:
    andi	$a0,$a0,0x100
    beqz	$a0,.L0d963294
    # Line 1821
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3480
    lw	$a1,1808($s0)
.L0d962d64:
    andi	$a1,$a1,0x1
    beqz	$a1,.L0d9632a4
    # Line 1822
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3472
    lw	$a2,1808($s0)
.L0d962d80:
    andi	$a2,$a2,0x2
    beqz	$a2,.L0d9632b4
    # Line 1823
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3473
    lw	$a3,1808($s0)
.L0d962d9c:
    andi	$a3,$a3,0x4
    beqz	$a3,.L0d9632c4
    # Line 1824
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3474
    lw	$a4,1808($s0)
.L0d962db8:
    andi	$a4,$a4,0x8
    beqz	$a4,.L0d9632d4
    # Line 1825
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3475
    lw	$a5,1808($s0)
.L0d962dd4:
    andi	$a5,$a5,0x10
    beqz	$a5,.L0d9632e4
    # Line 1826
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3476
    lw	$a6,1808($s0)
.L0d962df0:
    andi	$a6,$a6,0x20
    beqz	$a6,.L0d9632f4
    # Line 1827
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3477
    lw	$a7,1808($s0)
.L0d962e0c:
    andi	$a7,$a7,0x40
    beqz	$a7,.L0d963304
    # Line 1828
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3478
    lw	$t0,1812($s0)
.L0d962e28:
    andi	$t0,$t0,0x80
    beqz	$t0,.L0d963314
    # Line 1829
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3511
    lw	$t1,1812($s0)
.L0d962e44:
    andi	$t1,$t1,0x100
    beqz	$t1,.L0d963324
    # Line 1830
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3512
    lw	$t2,1812($s0)
.L0d962e60:
    andi	$t2,$t2,0x1
    beqz	$t2,.L0d963334
    # Line 1831
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3504
    lw	$t3,1812($s0)
.L0d962e7c:
    andi	$t3,$t3,0x2
    beqz	$t3,.L0d963344
    # Line 1832
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3505
    lw	$t8,1812($s0)
.L0d962e98:
    andi	$t8,$t8,0x4
    beqz	$t8,.L0d963354
    # Line 1833
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3506
    lw	$t9,1812($s0)
.L0d962eb4:
    andi	$t9,$t9,0x8
    beqz	$t9,.L0d963364
    # Line 1834
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3507
    lw	$ra,1812($s0)
.L0d962ed0:
    andi	$ra,$ra,0x10
    beqz	$ra,.L0d963374
    # Line 1835
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3508
    lw	$at,1812($s0)
.L0d962eec:
    andi	$at,$at,0x20
    beqz	$at,.L0d963384
    # Line 1836
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3509
    lw	$v0,1812($s0)
.L0d962f08:
    andi	$v0,$v0,0x40
    beqz	$v0,.L0d963394
    # Line 1837
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,3510
    ld	$s5,80($sp)
.L0d962f24:
    ld	$s1,72($sp)
    ld	$s7,64($sp)
    ld	$s4,56($sp)
    ld	$s3,40($sp)
    ld	$s2,32($sp)
    # Line 1841
    ld	$gp,8($sp)
    ld	$ra,48($sp)
    # Line 1840
    sw	$zero,31584($s0)
    # Line 1841
    ld	$s0,0($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d962f54:
    # Line 1769
    jalr	$t9
    li	$a0,3008
    b	.L0d9627a0
    lw	$v0,1792($s0)
.L0d962f64:
    # Line 1770
    jalr	$t9
    li	$a0,3042
    b	.L0d9627bc
    lw	$v1,1792($s0)
.L0d962f74:
    # Line 1771
    jalr	$t9
    li	$a0,3057
    b	.L0d9627d8
    lw	$a0,1792($s0)
.L0d962f84:
    # Line 1772
    jalr	$t9
    li	$a0,3024
    b	.L0d9627f4
    lw	$a1,1792($s0)
.L0d962f94:
    # Line 1773
    jalr	$t9
    li	$a0,2929
    b	.L0d962810
    lw	$a2,1792($s0)
.L0d962fa4:
    # Line 1774
    jalr	$t9
    li	$a0,2912
    b	.L0d96282c
    lw	$a3,1792($s0)
.L0d962fb4:
    # Line 1775
    jalr	$t9
    li	$a0,2896
    b	.L0d962848
    lw	$a4,1792($s0)
.L0d962fc4:
    # Line 1776
    jalr	$t9
    li	$a0,2852
    b	.L0d962864
    lw	$a5,1792($s0)
.L0d962fd4:
    # Line 1777
    jalr	$t9
    li	$a0,2848
    b	.L0d962880
    lw	$a6,1792($s0)
.L0d962fe4:
    # Line 1778
    jalr	$t9
    li	$a0,2832
    b	.L0d96289c
    lw	$a7,1792($s0)
.L0d962ff4:
    # Line 1779
    jalr	$t9
    li	$a0,2881
    b	.L0d9628b8
    lw	$t0,1792($s0)
.L0d963004:
    # Line 1780
    jalr	$t9
    li	$a0,2884
    b	.L0d9628d4
    lw	$t1,1792($s0)
.L0d963014:
    # Line 1781
    jalr	$t9
    li	$a0,2882
    b	.L0d9628f0
    lw	$t2,1792($s0)
.L0d963024:
    # Line 1782
    jalr	$t9
    li	$a0,3089
    b	.L0d96290c
    lw	$t3,1792($s0)
.L0d963034:
    # Line 1783
    jalr	$t9
    li	$a0,2960
    b	.L0d962928
    lw	$t9,1792($s0)
.L0d963044:
    # Line 1784
    jalr	$t9
    li	$a0,3552
    b	.L0d962948
    lw	$at,1792($s0)
.L0d963054:
    # Line 1785
    jalr	$t9
    li	$a0,3553
    b	.L0d962968
    lw	$v1,1792($s0)
.L0d963064:
    # Line 1786
    jalr	$t9
    li	$a0,3168
    b	.L0d962988
    lw	$a1,1792($s0)
.L0d963074:
    # Line 1787
    jalr	$t9
    li	$a0,3169
    b	.L0d9629a8
    lw	$a2,1792($s0)
.L0d963084:
    # Line 1788
    jalr	$t9
    li	$a0,3170
    b	.L0d9629c4
    lw	$a3,1792($s0)
.L0d963094:
    # Line 1789
    jalr	$t9
    li	$a0,3171
    b	.L0d9629e0
    lw	$a4,1792($s0)
.L0d9630a4:
    # Line 1790
    jalr	$t9
    li	$a0,2977
    b	.L0d9629fc
    lw	$a5,1792($s0)
.L0d9630b4:
    # Line 1791
    jalr	$t9
    li	$a0,0x8010
    b	.L0d962a18
    lw	$a6,1792($s0)
.L0d9630c4:
    # Line 1792
    jalr	$t9
    li	$a0,0x8011
    b	.L0d962a34
    lw	$a7,1792($s0)
.L0d9630d4:
    # Line 1793
    jalr	$t9
    li	$a0,0x8012
    b	.L0d962a50
    lw	$t0,1792($s0)
.L0d9630e4:
    # Line 1794
    jalr	$t9
    li	$a0,0x8024
    b	.L0d962a6c
    lw	$t1,1792($s0)
.L0d9630f4:
    # Line 1795
    jalr	$t9
    li	$a0,0x802e
    b	.L0d962a88
    lw	$t2,1792($s0)
.L0d963104:
    # Line 1796
    jalr	$t9
    li	$a0,0x80bc
    b	.L0d962aa8
    lw	$t8,1800($s0)
.L0d963114:
    # Line 1797
    jalr	$t9
    li	$a0,16384
    b	.L0d962ac4
    lw	$t9,1800($s0)
.L0d963124:
    # Line 1798
    jalr	$t9
    li	$a0,16385
    b	.L0d962ae0
    lw	$ra,1800($s0)
.L0d963134:
    # Line 1799
    jalr	$t9
    li	$a0,16386
    b	.L0d962afc
    lw	$at,1800($s0)
.L0d963144:
    # Line 1800
    jalr	$t9
    li	$a0,16387
    b	.L0d962b18
    lw	$v0,1800($s0)
.L0d963154:
    # Line 1801
    jalr	$t9
    li	$a0,16388
    b	.L0d962b34
    lw	$v1,1800($s0)
.L0d963164:
    # Line 1802
    jalr	$t9
    li	$a0,16389
    b	.L0d962b50
    lw	$a0,1800($s0)
.L0d963174:
    # Line 1803
    jalr	$t9
    li	$a0,16390
    b	.L0d962b6c
    lw	$a1,1800($s0)
.L0d963184:
    # Line 1804
    jalr	$t9
    li	$a0,16391
    b	.L0d962b88
    lw	$a2,1804($s0)
.L0d963194:
    # Line 1805
    jalr	$t9
    li	$a0,12288
    b	.L0d962ba4
    lw	$a3,1804($s0)
.L0d9631a4:
    # Line 1806
    jalr	$t9
    li	$a0,12289
    b	.L0d962bc0
    lw	$a4,1804($s0)
.L0d9631b4:
    # Line 1807
    jalr	$t9
    li	$a0,12290
    b	.L0d962bdc
    lw	$a5,1804($s0)
.L0d9631c4:
    # Line 1808
    jalr	$t9
    li	$a0,12291
    b	.L0d962bf8
    lw	$a6,1804($s0)
.L0d9631d4:
    # Line 1809
    jalr	$t9
    li	$a0,12292
    b	.L0d962c14
    lw	$a7,1804($s0)
.L0d9631e4:
    # Line 1810
    jalr	$t9
    li	$a0,12293
    b	.L0d962c30
    lw	$t0,1796($s0)
.L0d9631f4:
    # Line 1811
    jalr	$t9
    li	$a0,0x80d0
    b	.L0d962c4c
    lw	$t1,1796($s0)
.L0d963204:
    # Line 1812
    jalr	$t9
    li	$a0,0x80d1
    b	.L0d962c68
    lw	$t2,1796($s0)
.L0d963214:
    # Line 1813
    jalr	$t9
    li	$a0,0x80d2
    b	.L0d962c84
    lw	$t3,1796($s0)
.L0d963224:
    # Line 1814
    jalr	$t9
    li	$a0,0x8148
    b	.L0d962ca0
    lw	$t8,1796($s0)
.L0d963234:
    # Line 1815
    jalr	$t9
    li	$a0,0x8198
    b	.L0d962cbc
    lw	$t9,1796($s0)
.L0d963244:
    # Line 1816
    jalr	$t9
    li	$a0,0x8094
    b	.L0d962cd8
    lw	$ra,1796($s0)
.L0d963254:
    # Line 1817
    jalr	$t9
    li	$a0,0x817d
    b	.L0d962cf4
    lw	$at,1796($s0)
.L0d963264:
    # Line 1818
    jalr	$t9
    li	$a0,0x8183
    b	.L0d962d10
    lw	$v0,1796($s0)
.L0d963274:
    # Line 1819
    jalr	$t9
    li	$a0,0x81c7
    b	.L0d962d2c
    lw	$v1,1808($s0)
.L0d963284:
    # Line 1820
    jalr	$t9
    li	$a0,3479
    b	.L0d962d48
    lw	$a0,1808($s0)
.L0d963294:
    # Line 1821
    jalr	$t9
    li	$a0,3480
    b	.L0d962d64
    lw	$a1,1808($s0)
.L0d9632a4:
    # Line 1822
    jalr	$t9
    li	$a0,3472
    b	.L0d962d80
    lw	$a2,1808($s0)
.L0d9632b4:
    # Line 1823
    jalr	$t9
    li	$a0,3473
    b	.L0d962d9c
    lw	$a3,1808($s0)
.L0d9632c4:
    # Line 1824
    jalr	$t9
    li	$a0,3474
    b	.L0d962db8
    lw	$a4,1808($s0)
.L0d9632d4:
    # Line 1825
    jalr	$t9
    li	$a0,3475
    b	.L0d962dd4
    lw	$a5,1808($s0)
.L0d9632e4:
    # Line 1826
    jalr	$t9
    li	$a0,3476
    b	.L0d962df0
    lw	$a6,1808($s0)
.L0d9632f4:
    # Line 1827
    jalr	$t9
    li	$a0,3477
    b	.L0d962e0c
    lw	$a7,1808($s0)
.L0d963304:
    # Line 1828
    jalr	$t9
    li	$a0,3478
    b	.L0d962e28
    lw	$t0,1812($s0)
.L0d963314:
    # Line 1829
    jalr	$t9
    li	$a0,3511
    b	.L0d962e44
    lw	$t1,1812($s0)
.L0d963324:
    # Line 1830
    jalr	$t9
    li	$a0,3512
    b	.L0d962e60
    lw	$t2,1812($s0)
.L0d963334:
    # Line 1831
    jalr	$t9
    li	$a0,3504
    b	.L0d962e7c
    lw	$t3,1812($s0)
.L0d963344:
    # Line 1832
    jalr	$t9
    li	$a0,3505
    b	.L0d962e98
    lw	$t8,1812($s0)
.L0d963354:
    # Line 1833
    jalr	$t9
    li	$a0,3506
    b	.L0d962eb4
    lw	$t9,1812($s0)
.L0d963364:
    # Line 1834
    jalr	$t9
    li	$a0,3507
    b	.L0d962ed0
    lw	$ra,1812($s0)
.L0d963374:
    # Line 1835
    jalr	$t9
    li	$a0,3508
    b	.L0d962eec
    lw	$at,1812($s0)
.L0d963384:
    # Line 1836
    jalr	$t9
    li	$a0,3509
    b	.L0d962f08
    lw	$v0,1812($s0)
.L0d963394:
    # Line 1837
    jalr	$t9
    li	$a0,3510
    b	.L0d962f24
    ld	$s5,80($sp)
.L0d9633a4:
    # Line 1759
    jalr	$t9
    li	$a0,0x80a0
    b	.L0d962730
    lbu	$t3,3194($s0)
.L0d9633b4:
    # Line 1761
    jalr	$t9
    li	$a0,0x809f
    b	.L0d962748
    lbu	$t8,3195($s0)
.L0d9633c4:
    # Line 1763
    jalr	$t9
    li	$a0,0x809e
    b	.L0d962760
    lbu	$t9,3180($s0)
.L0d9633d4:
    # Line 1765
    jalr	$t9
    li	$a0,0x809d
    b	.L0d962778
    andi	$ra,$s6,0x2000
.L0d9633e4:
    # Line 1708
    jalr	$t9
    li	$a0,3552
    b	.L0d962490
    lw	$a5,1792($s0)
.L0d9633f4:
    # Line 1709
    jalr	$t9
    li	$a0,3553
    b	.L0d9624b0
    lw	$a7,1792($s0)
.L0d963404:
    # Line 1710
    jalr	$t9
    li	$a0,3168
    b	.L0d9624d0
    lw	$t1,1792($s0)
.L0d963414:
    # Line 1711
    jalr	$t9
    li	$a0,3169
    b	.L0d9624f0
    lw	$t2,1792($s0)
.L0d963424:
    # Line 1712
    jalr	$t9
    li	$a0,3170
    b	.L0d96250c
    lw	$t3,1792($s0)
.L0d963434:
    # Line 1713
    jalr	$t9
    li	$a0,3171
    b	.L0d962528
    lw	$t8,1792($s0)
.L0d963444:
    # Line 1714
    jalr	$t9
    li	$a0,0x80bc
    b	.L0d962548
    andi	$ra,$s6,0x1000
.L0d963454:
    # Line 1457
    jalr	$t9
    li	$a0,3008
    b	.L0d961760
    lw	$a1,1792($s0)
.L0d963464:
    # Line 1458
    jalr	$t9
    li	$a0,3042
    b	.L0d96177c
    lw	$a2,1792($s0)
.L0d963474:
    # Line 1459
    jalr	$t9
    li	$a0,3024
    b	.L0d961798
    lw	$a3,1792($s0)
.L0d963484:
    # Line 1460
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,3057
    b	.L0d9617b0
    andi	$a4,$s6,0x1
.L0d963498:
    # Line 1480
    jalr	$t9
    li	$a0,2929
    b	.L0d961854
    dsll32	$v0,$s6,0xf
.L0d9634a8:
    # Line 1486
    jalr	$t9
    li	$a0,3456
    b	.L0d9618b0
    lw	$a0,1808($s0)
.L0d9634b8:
    # Line 1487
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,3479
    b	.L0d9618c8
    lw	$a1,1808($s0)
.L0d9634cc:
    # Line 1488
    jalr	$t9
    li	$a0,3480
    b	.L0d9618e4
    lw	$a2,1808($s0)
.L0d9634dc:
    # Line 1489
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,3472
    b	.L0d9618fc
    lw	$a3,1808($s0)
.L0d9634f0:
    # Line 1490
    jalr	$t9
    li	$a0,3473
    b	.L0d961918
    lw	$a4,1808($s0)
.L0d963500:
    # Line 1491
    jalr	$t9
    li	$a0,3474
    b	.L0d961934
    lw	$a5,1808($s0)
.L0d963510:
    # Line 1492
    jalr	$t9
    li	$a0,3475
    b	.L0d961950
    lw	$a6,1808($s0)
.L0d963520:
    # Line 1493
    jalr	$t9
    li	$a0,3476
    b	.L0d96196c
    lw	$a7,1808($s0)
.L0d963530:
    # Line 1494
    jalr	$t9
    li	$a0,3477
    b	.L0d961988
    lw	$t0,1808($s0)
.L0d963540:
    # Line 1495
    jalr	$t9
    li	$a0,3478
    b	.L0d9619a4
    lw	$t1,1812($s0)
.L0d963550:
    # Line 1496
    jalr	$t9
    li	$a0,3511
    b	.L0d9619c0
    lw	$t2,1812($s0)
.L0d963560:
    # Line 1497
    jalr	$t9
    li	$a0,3512
    b	.L0d9619dc
    lw	$t3,1812($s0)
.L0d963570:
    # Line 1498
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,3504
    b	.L0d9619f4
    lw	$t8,1812($s0)
.L0d963584:
    # Line 1499
    jalr	$t9
    li	$a0,3505
    b	.L0d961a10
    lw	$t9,1812($s0)
.L0d963594:
    # Line 1500
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,3506
    b	.L0d961a28
    lw	$ra,1812($s0)
.L0d9635a8:
    # Line 1501
    jalr	$t9
    li	$a0,3507
    b	.L0d961a44
    lw	$at,1812($s0)
.L0d9635b8:
    # Line 1502
    jalr	$t9
    li	$a0,3508
    b	.L0d961a60
    lw	$v0,1812($s0)
.L0d9635c8:
    # Line 1503
    jalr	$t9
    li	$a0,3509
    b	.L0d961a7c
    lw	$v1,1812($s0)
.L0d9635d8:
    # Line 1504
    jalr	$t9
    li	$a0,3510
    b	.L0d961a98
    andi	$a0,$s6,0x80
.L0d9635e8:
    # Line 1514
    jalr	$t9
    li	$a0,2912
    b	.L0d961b20
    # Line 1516
    nop	# was lw $t9, -16844($gp) # &glFogFuncSGIS
.L0d9635f8:
    # Line 1518
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,0x8198
    b	.L0d961b68
    andi	$a3,$s6,0x8000
.L0d96360c:
    # Line 1583
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,2896
    b	.L0d961edc
    lw	$t1,1792($s0)
.L0d963620:
    # Line 1584
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,2903
    b	.L0d961ef4
    lw	$t2,1800($s0)
.L0d963634:
    # Line 1585
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,16384
    b	.L0d961f0c
    lw	$t3,1800($s0)
.L0d963648:
    # Line 1586
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,16385
    b	.L0d961f24
    lw	$t8,1800($s0)
.L0d96365c:
    # Line 1587
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,16386
    b	.L0d961f3c
    lw	$t9,1800($s0)
.L0d963670:
    # Line 1588
    jalr	$t9
    li	$a0,16387
    b	.L0d961f58
    lw	$ra,1800($s0)
.L0d963680:
    # Line 1589
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,16388
    b	.L0d961f70
    lw	$at,1800($s0)
.L0d963694:
    # Line 1590
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,16389
    b	.L0d961f88
    lw	$v0,1800($s0)
.L0d9636a8:
    # Line 1591
    jalr	$t9
    li	$a0,16390
    b	.L0d961fa4
    lw	$v1,1800($s0)
.L0d9636b8:
    # Line 1592
    jalr	$t9
    li	$a0,16391
    b	.L0d961fc0
    andi	$a0,$s6,0x4
.L0d9636c8:
    # Line 1598
    jalr	$t9
    li	$a0,2852
    b	.L0d962000
    lw	$a2,1792($s0)
.L0d9636d8:
    # Line 1599
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,2848
    b	.L0d962018
    dsll32	$a3,$s6,0xe
.L0d9636ec:
    # Line 1612
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,2832
    b	.L0d962070
    andi	$v0,$s6,0x8
.L0d963700:
    # Line 1619
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,2881
    b	.L0d9620bc
    lw	$a0,1792($s0)
.L0d963714:
    # Line 1620
    jalr	$t9
    li	$a0,2884
    b	.L0d9620d8
    lw	$a1,1792($s0)
.L0d963724:
    # Line 1621
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,2882
    b	.L0d9620f0
    andi	$a2,$s6,0x10
.L0d963738:
    # Line 1630
    jalr	$t9
    li	$a0,3089
    b	.L0d962144
    andi	$a5,$s6,0x400
.L0d963748:
    # Line 1638
    jalr	$t9
    li	$a0,2960
    b	.L0d9621ac
    dsll32	$a7,$s6,0xd
.L0d963758:
    # Line 1727
    jalr	$t9
    li	$a0,0x817d
    b	.L0d962588
    nop
.L0d963768:
    # Line 1729
    jalr	$t9
    li	$a0,2977
    b	.L0d9625a4
    nop
.L0d963778:
    # Line 1730
    jalr	$t9
    li	$a0,12288
    b	.L0d9625c0
    nop
.L0d963788:
    # Line 1731
    jalr	$t9
    li	$a0,12289
    b	.L0d9625dc
    nop
.L0d963798:
    # Line 1732
    jalr	$t9
    li	$a0,12290
    b	.L0d9625f8
    nop
.L0d9637a8:
    # Line 1733
    jalr	$t9
    li	$a0,12291
    b	.L0d962614
    nop
.L0d9637b8:
    # Line 1734
    jalr	$t9
    li	$a0,12292
    b	.L0d962630
    nop
.L0d9637c8:
    # Line 1735
    jalr	$t9
    li	$a0,12293
    b	.L0d96264c
    nop
.L0d9637d8:
    # Line 1742
    jalr	$t9
    li	$a0,0x8148
    b	.L0d962698
    nop
.end __glkonResolveContext

# Function: setCurrentRaster
# Declared: Line 1844 (Source lines: 1847-1862)
# Address: 0x0d9637f0 - 0x0d963884 (Size: 148 bytes, Frame: 0)
.ent setCurrentRaster
setCurrentRaster:
    # Line 1847
    li	$v0,270
    sw	$v0,16384($zero)
    # Line 1860
    lwc1	$f1,104($a0)
    # Line 1859
    lwc1	$f2,140($a0)
    # Line 1858
    lwc1	$f3,136($a0)
    # Line 1857
    lwc1	$f4,132($a0)
    # Line 1856
    lwc1	$f5,128($a0)
    # Line 1855
    lwc1	$f6,60($a0)
    # Line 1854
    lwc1	$f7,56($a0)
    # Line 1853
    lwc1	$f8,52($a0)
    # Line 1852
    lwc1	$f9,48($a0)
    # Line 1851
    lwc1	$f10,160($a0)
    # Line 1850
    lwc1	$f11,156($a0)
    # Line 1849
    lwc1	$f12,152($a0)
    # Line 1847
    lwc1	$f14,144($a0)
    # Line 1848
    lwc1	$f13,148($a0)
    # Line 1847
    swc1	$f14,16384($zero)
    # Line 1848
    swc1	$f13,16384($zero)
    # Line 1849
    swc1	$f12,16384($zero)
    # Line 1850
    swc1	$f11,16384($zero)
    # Line 1851
    swc1	$f10,16384($zero)
    # Line 1861
    lw	$at,4($a0)
    # Line 1852
    swc1	$f9,16384($zero)
    # Line 1853
    swc1	$f8,16384($zero)
    # Line 1861
    dsll32	$at,$at,0x0
    # Line 1854
    swc1	$f7,16384($zero)
    # Line 1861
    dsrl32	$at,$at,0x0
    # Line 1855
    swc1	$f6,16384($zero)
    # Line 1861
    dmtc1	$at,$f0
    # Line 1856
    swc1	$f5,16384($zero)
    # Line 1857
    swc1	$f4,16384($zero)
    # Line 1858
    swc1	$f3,16384($zero)
    # Line 1861
    cvt.s.l	$f0,$f0
    # Line 1859
    swc1	$f2,16384($zero)
    # Line 1860
    swc1	$f1,16384($zero)
    # Line 1862
    jr	$ra
    # Line 1861
    swc1	$f0,16384($zero)
.end setCurrentRaster

# Function: ResolvePixelContext
# Declared: Line 1865 (Source lines: 1866-1923)
# Address: 0x0d963890 - 0x0d963d24 (Size: 1172 bytes, Frame: 16)
.ent ResolvePixelContext
ResolvePixelContext:
    # Line 1869
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,464($a0)
    # Line 1866
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    move	$s0,$a0
    sd	$ra,8($sp)
    # Line 1869
    jal	glPixelTransferf
    li	$a0,3348
    # Line 1870
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,468($s0)
    jal	glPixelTransferf
    li	$a0,3352
    # Line 1871
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,472($s0)
    jal	glPixelTransferf
    li	$a0,3354
    # Line 1872
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,476($s0)
    jal	glPixelTransferf
    li	$a0,3356
    # Line 1873
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,480($s0)
    jal	glPixelTransferf
    li	$a0,3358
    # Line 1874
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,484($s0)
    jal	glPixelTransferf
    li	$a0,3349
    # Line 1875
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,488($s0)
    jal	glPixelTransferf
    li	$a0,3353
    # Line 1876
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,492($s0)
    jal	glPixelTransferf
    li	$a0,3355
    # Line 1877
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,496($s0)
    jal	glPixelTransferf
    li	$a0,3357
    # Line 1878
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,500($s0)
    jal	glPixelTransferf
    li	$a0,3359
    # Line 1879
    lw	$at,576($s0)
    # lw $t9, -17444($gp) # &glPixelTransferf
    mtc1	$at,$f13
    li	$a0,3346
    jal	glPixelTransferf
    cvt.s.w	$f13,$f13
    # Line 1880
    lw	$v0,580($s0)
    # lw $t9, -17444($gp) # &glPixelTransferf
    mtc1	$v0,$f13
    li	$a0,3347
    jal	glPixelTransferf
    cvt.s.w	$f13,$f13
    # Line 1881
    lbu	$v1,584($s0)
    # lw $t9, -17444($gp) # &glPixelTransferf
    mtc1	$v1,$f13
    li	$a0,3344
    jal	glPixelTransferf
    cvt.s.w	$f13,$f13
    # Line 1882
    lbu	$a0,585($s0)
    # lw $t9, -17444($gp) # &glPixelTransferf
    mtc1	$a0,$f13
    li	$a0,3345
    jal	glPixelTransferf
    cvt.s.w	$f13,$f13
    # Line 1883
    # lw $t9, -17416($gp) # &glReadBuffer
    jal	glReadBuffer
    lw	$a0,1060($s0)
    # Line 1884
    # lw $t9, -17448($gp) # &glPixelZoom
    lwc1	$f13,572($s0)
    jal	glPixelZoom
    lwc1	$f12,568($s0)
    # Line 1885
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,504($s0)
    jal	glPixelTransferf
    li	$a0,0x801c
    # Line 1886
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,508($s0)
    jal	glPixelTransferf
    li	$a0,0x801d
    # Line 1887
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,512($s0)
    jal	glPixelTransferf
    li	$a0,0x801e
    # Line 1888
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,516($s0)
    jal	glPixelTransferf
    li	$a0,0x801f
    # Line 1889
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,520($s0)
    jal	glPixelTransferf
    li	$a0,0x8020
    # Line 1890
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,524($s0)
    jal	glPixelTransferf
    li	$a0,0x8021
    # Line 1891
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,528($s0)
    jal	glPixelTransferf
    li	$a0,0x8022
    # Line 1892
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,532($s0)
    jal	glPixelTransferf
    li	$a0,0x8023
    # Line 1894
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,536($s0)
    jal	glPixelTransferf
    li	$a0,0x80b4
    # Line 1895
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,540($s0)
    jal	glPixelTransferf
    li	$a0,0x80b5
    # Line 1896
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,544($s0)
    jal	glPixelTransferf
    li	$a0,0x80b6
    # Line 1897
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,548($s0)
    jal	glPixelTransferf
    li	$a0,0x80b7
    # Line 1898
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,552($s0)
    jal	glPixelTransferf
    li	$a0,0x80b8
    # Line 1899
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,556($s0)
    jal	glPixelTransferf
    li	$a0,0x80b9
    # Line 1900
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,560($s0)
    jal	glPixelTransferf
    li	$a0,0x80ba
    # Line 1901
    # lw $t9, -17444($gp) # &glPixelTransferf
    lwc1	$f13,564($s0)
    jal	glPixelTransferf
    li	$a0,0x80bb
    # Line 1903
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    addiu	$a2,$s0,2404
    li	$a1,0x80d6
    jal	glColorTableParameterfvSGI
    li	$a0,0x80d0
    # Line 1904
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    addiu	$a2,$s0,2564
    li	$a1,0x80d6
    jal	glColorTableParameterfvSGI
    li	$a0,0x80d1
    # Line 1905
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    addiu	$a2,$s0,2724
    li	$a1,0x80d6
    jal	glColorTableParameterfvSGI
    li	$a0,0x80d2
    # Line 1906
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    addiu	$a2,$s0,2884
    li	$a1,0x80d6
    jal	glColorTableParameterfvSGI
    li	$a0,0x80bc
    # Line 1908
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    addiu	$a2,$s0,2420
    li	$a1,0x80d7
    jal	glColorTableParameterfvSGI
    li	$a0,0x80d0
    # Line 1909
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    addiu	$a2,$s0,2580
    li	$a1,0x80d7
    jal	glColorTableParameterfvSGI
    li	$a0,0x80d1
    # Line 1910
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    addiu	$a2,$s0,2740
    li	$a1,0x80d7
    jal	glColorTableParameterfvSGI
    li	$a0,0x80d2
    # Line 1911
    # lw $t9, -16912($gp) # &glColorTableParameterfvSGI
    addiu	$a2,$s0,2900
    li	$a1,0x80d7
    jal	glColorTableParameterfvSGI
    li	$a0,0x80bc
    lw	$a1,1616($s0)
    dsll32	$a1,$a1,0x6
    bgez	$a1,.L0d963c78
    # Line 1913
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8010
    lw	$a2,1616($s0)
.L0d963b78:
    dsll32	$a2,$a2,0x5
    bgez	$a2,.L0d963c8c
    # Line 1914
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8011
    lw	$a3,1616($s0)
.L0d963b94:
    dsll32	$a3,$a3,0x4
    bgez	$a3,.L0d963c9c
    # Line 1915
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8012
    lw	$a4,1616($s0)
.L0d963bb0:
    dsll32	$a4,$a4,0x3
    bgez	$a4,.L0d963cac
    # Line 1916
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8024
    lw	$a5,1616($s0)
.L0d963bc8:
    dsll32	$a5,$a5,0x2
    bgez	$a5,.L0d963cc0
    # Line 1917
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x802e
    lw	$a6,1620($s0)
.L0d963be4:
    andi	$a6,$a6,0x1
    beqz	$a6,.L0d963cd0
    # Line 1918
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x80d0
    lw	$a7,1620($s0)
.L0d963c00:
    andi	$a7,$a7,0x2
    beqz	$a7,.L0d963ce0
    # Line 1919
    nop	# was lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x80d1
    lw	$t0,1620($s0)
.L0d963c18:
    andi	$t0,$t0,0x4
    beqz	$t0,.L0d963cf4
    # Line 1920
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x80d2
    lw	$t1,1620($s0)
.L0d963c34:
    andi	$t1,$t1,0x20
    beqz	$t1,.L0d963d04
    # Line 1921
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x8094
    lw	$t2,1620($s0)
.L0d963c50:
    andi	$t2,$t2,0x100
    beqz	$t2,.L0d963d14
    # Line 1922
    nop	# was lw $t9, -17576($gp) # &glDisable
    # lw $t9, -17572($gp) # &glEnable
    jal	glEnable
    li	$a0,0x81c7
    ld	$ra,8($sp)
.L0d963c6c:
    ld	$s0,0($sp)
    # Line 1923
    jr	$ra
    addiu	$sp,$sp,16
.L0d963c78:
    # Line 1913
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,0x8010
    b	.L0d963b78
    lw	$a2,1616($s0)
.L0d963c8c:
    # Line 1914
    jalr	$t9
    li	$a0,0x8011
    b	.L0d963b94
    lw	$a3,1616($s0)
.L0d963c9c:
    # Line 1915
    jalr	$t9
    li	$a0,0x8012
    b	.L0d963bb0
    lw	$a4,1616($s0)
.L0d963cac:
    # Line 1916
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,0x8024
    b	.L0d963bc8
    lw	$a5,1616($s0)
.L0d963cc0:
    # Line 1917
    jalr	$t9
    li	$a0,0x802e
    b	.L0d963be4
    lw	$a6,1620($s0)
.L0d963cd0:
    # Line 1918
    jalr	$t9
    li	$a0,0x80d0
    b	.L0d963c00
    lw	$a7,1620($s0)
.L0d963ce0:
    # Line 1919
    # lw $t9, -17576($gp) # &glDisable
    jal	glDisable
    li	$a0,0x80d1
    b	.L0d963c18
    lw	$t0,1620($s0)
.L0d963cf4:
    # Line 1920
    jalr	$t9
    li	$a0,0x80d2
    b	.L0d963c34
    lw	$t1,1620($s0)
.L0d963d04:
    # Line 1921
    jalr	$t9
    li	$a0,0x8094
    b	.L0d963c50
    lw	$t2,1620($s0)
.L0d963d14:
    # Line 1922
    jalr	$t9
    li	$a0,0x81c7
    b	.L0d963c6c
    ld	$ra,8($sp)
.end ResolvePixelContext

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

