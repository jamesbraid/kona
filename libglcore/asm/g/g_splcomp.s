# Source: g_splcomp.c
# Category: g
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_splcomp.c
# Total Functions: 318

.text

# Function: __glsplc_ListBase
# Declared: Line 50 (Source lines: 51-57)
# Address: 0x0da4b580 - 0x0da4b5d4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_ListBase
.ent __glsplc_ListBase
__glsplc_ListBase:
    # Line 51
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,23128
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 54
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,2
    # Line 51
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 54
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4b5c8
    ld	$ra,0($sp)
    # Line 57
    ld	$gp,16($sp)
    # Line 56
    ld	$v1,8($sp)
    # Line 57
    addiu	$sp,$sp,32
    jr	$ra
    # Line 56
    sw	$v1,0($v0)
.L0da4b5c8:
    # Line 57
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ListBase

# Function: __glsplc_Color3b
# Declared: Line 62 (Source lines: 63-71)
# Address: 0x0da4b5e0 - 0x0da4b64c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3b
.ent __glsplc_Color3b
__glsplc_Color3b:
    # Line 63
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,23032
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 66
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 63
    sd	$a1,16($sp)
    # Line 66
    li	$a1,5
    # Line 63
    sd	$a0,8($sp)
    # Line 66
    li	$a0,4
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4b640
    ld	$ra,0($sp)
    # Line 71
    ld	$gp,32($sp)
    # Line 68
    ld	$v1,8($sp)
    # Line 69
    ld	$a0,16($sp)
    # Line 70
    ld	$a1,24($sp)
    sb	$a1,2($v0)
    # Line 69
    sb	$a0,1($v0)
    # Line 71
    addiu	$sp,$sp,48
    jr	$ra
    # Line 68
    sb	$v1,0($v0)
.L0da4b640:
    # Line 71
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color3b

# Function: __glsplc_Color3bv
# Declared: Line 74 (Source lines: 75-83)
# Address: 0x0da4b650 - 0x0da4b6b8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Color3bv
.ent __glsplc_Color3bv
__glsplc_Color3bv:
    # Line 75
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,22920
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 78
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,5
    # Line 75
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 78
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4b6ac
    ld	$ra,0($sp)
    # Line 80
    ld	$v1,8($sp)
    # Line 83
    ld	$gp,16($sp)
    # Line 80
    lb	$a1,0($v1)
    sb	$a1,0($v0)
    # Line 81
    lb	$a0,1($v1)
    sb	$a0,1($v0)
    # Line 82
    lb	$v1,2($v1)
    # Line 83
    addiu	$sp,$sp,32
    jr	$ra
    # Line 82
    sb	$v1,2($v0)
.L0da4b6ac:
    # Line 83
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color3bv

# Function: __glsplc_Color3d
# Declared: Line 86 (Source lines: 87-95)
# Address: 0x0da4b6c0 - 0x0da4b72c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3d
.ent __glsplc_Color3d
__glsplc_Color3d:
    # Line 87
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,22808
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 90
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 87
    sdc1	$f13,8($sp)
    # Line 90
    li	$a1,6
    # Line 87
    sd	$ra,24($sp)
    # Line 90
    li	$a0,24
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4b720
    ld	$ra,24($sp)
    # Line 95
    ld	$gp,32($sp)
    # Line 92
    ldc1	$f0,0($sp)
    # Line 93
    ldc1	$f1,8($sp)
    # Line 94
    ldc1	$f2,16($sp)
    # Line 93
    sdc1	$f1,8($v0)
    # Line 94
    sdc1	$f2,16($v0)
    # Line 95
    addiu	$sp,$sp,48
    jr	$ra
    # Line 92
    sdc1	$f0,0($v0)
.L0da4b720:
    # Line 95
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color3d

# Function: __glsplc_Color3dv
# Declared: Line 98 (Source lines: 99-107)
# Address: 0x0da4b730 - 0x0da4b798 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Color3dv
.ent __glsplc_Color3dv
__glsplc_Color3dv:
    # Line 99
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,22696
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 102
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,6
    # Line 99
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 102
    jal	__glSPDlalloc2
    li	$a0,24
    beqz	$v0,.L0da4b78c
    ld	$ra,0($sp)
    # Line 104
    ld	$v1,8($sp)
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 105
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    # Line 106
    ldc1	$f0,16($v1)
    # Line 107
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 106
    sdc1	$f0,16($v0)
.L0da4b78c:
    # Line 107
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color3dv

# Function: __glsplc_Color3f
# Declared: Line 110 (Source lines: 111-119)
# Address: 0x0da4b7a0 - 0x0da4b80c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3f
.ent __glsplc_Color3f
__glsplc_Color3f:
    # Line 111
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,22584
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 114
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 111
    sdc1	$f13,8($sp)
    # Line 114
    li	$a1,7
    # Line 111
    sd	$ra,24($sp)
    # Line 114
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4b800
    ld	$ra,24($sp)
    # Line 119
    ld	$gp,32($sp)
    # Line 116
    ldc1	$f0,0($sp)
    # Line 117
    ldc1	$f1,8($sp)
    # Line 118
    ldc1	$f2,16($sp)
    # Line 117
    swc1	$f1,4($v0)
    # Line 118
    swc1	$f2,8($v0)
    # Line 119
    addiu	$sp,$sp,48
    jr	$ra
    # Line 116
    swc1	$f0,0($v0)
.L0da4b800:
    # Line 119
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color3f

# Function: __glsplc_Color3fv
# Declared: Line 122 (Source lines: 123-131)
# Address: 0x0da4b810 - 0x0da4b878 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Color3fv
.ent __glsplc_Color3fv
__glsplc_Color3fv:
    # Line 123
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,22472
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 126
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,7
    # Line 123
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 126
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4b86c
    ld	$ra,0($sp)
    # Line 128
    ld	$v1,8($sp)
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 129
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    # Line 130
    lwc1	$f0,8($v1)
    # Line 131
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 130
    swc1	$f0,8($v0)
.L0da4b86c:
    # Line 131
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color3fv

# Function: __glsplc_Color3i
# Declared: Line 134 (Source lines: 135-143)
# Address: 0x0da4b880 - 0x0da4b8ec (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3i
.ent __glsplc_Color3i
__glsplc_Color3i:
    # Line 135
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,22360
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 138
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 135
    sd	$a1,16($sp)
    # Line 138
    li	$a1,8
    # Line 135
    sd	$a0,8($sp)
    # Line 138
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4b8e0
    ld	$ra,0($sp)
    # Line 143
    ld	$gp,32($sp)
    # Line 140
    ld	$v1,8($sp)
    # Line 141
    ld	$a0,16($sp)
    # Line 142
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 141
    sw	$a0,4($v0)
    # Line 143
    addiu	$sp,$sp,48
    jr	$ra
    # Line 140
    sw	$v1,0($v0)
.L0da4b8e0:
    # Line 143
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color3i

# Function: __glsplc_Color3iv
# Declared: Line 146 (Source lines: 147-155)
# Address: 0x0da4b8f0 - 0x0da4b958 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Color3iv
.ent __glsplc_Color3iv
__glsplc_Color3iv:
    # Line 147
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,22248
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 150
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,8
    # Line 147
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 150
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4b94c
    ld	$ra,0($sp)
    # Line 152
    ld	$v1,8($sp)
    # Line 155
    ld	$gp,16($sp)
    # Line 152
    lw	$a1,0($v1)
    sw	$a1,0($v0)
    # Line 153
    lw	$a0,4($v1)
    sw	$a0,4($v0)
    # Line 154
    lw	$v1,8($v1)
    # Line 155
    addiu	$sp,$sp,32
    jr	$ra
    # Line 154
    sw	$v1,8($v0)
.L0da4b94c:
    # Line 155
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color3iv

# Function: __glsplc_Color3s
# Declared: Line 158 (Source lines: 159-167)
# Address: 0x0da4b960 - 0x0da4b9cc (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3s
.ent __glsplc_Color3s
__glsplc_Color3s:
    # Line 159
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,22136
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 162
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 159
    sd	$a1,16($sp)
    # Line 162
    li	$a1,9
    # Line 159
    sd	$a0,8($sp)
    # Line 162
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4b9c0
    ld	$ra,0($sp)
    # Line 167
    ld	$gp,32($sp)
    # Line 164
    ld	$v1,8($sp)
    # Line 165
    ld	$a0,16($sp)
    # Line 166
    ld	$a1,24($sp)
    sh	$a1,4($v0)
    # Line 165
    sh	$a0,2($v0)
    # Line 167
    addiu	$sp,$sp,48
    jr	$ra
    # Line 164
    sh	$v1,0($v0)
.L0da4b9c0:
    # Line 167
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color3s

# Function: __glsplc_Color3sv
# Declared: Line 170 (Source lines: 171-179)
# Address: 0x0da4b9d0 - 0x0da4ba38 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Color3sv
.ent __glsplc_Color3sv
__glsplc_Color3sv:
    # Line 171
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,22024
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 174
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,9
    # Line 171
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 174
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4ba2c
    ld	$ra,0($sp)
    # Line 176
    ld	$v1,8($sp)
    # Line 179
    ld	$gp,16($sp)
    # Line 176
    lh	$a1,0($v1)
    sh	$a1,0($v0)
    # Line 177
    lh	$a0,2($v1)
    sh	$a0,2($v0)
    # Line 178
    lh	$v1,4($v1)
    # Line 179
    addiu	$sp,$sp,32
    jr	$ra
    # Line 178
    sh	$v1,4($v0)
.L0da4ba2c:
    # Line 179
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color3sv

# Function: __glsplc_Color3ub
# Declared: Line 182 (Source lines: 183-191)
# Address: 0x0da4ba40 - 0x0da4baac (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3ub
.ent __glsplc_Color3ub
__glsplc_Color3ub:
    # Line 183
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,21912
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 186
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 183
    sd	$a1,16($sp)
    # Line 186
    li	$a1,10
    # Line 183
    sd	$a0,8($sp)
    # Line 186
    li	$a0,4
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4baa0
    ld	$ra,0($sp)
    # Line 191
    ld	$gp,32($sp)
    # Line 188
    ld	$v1,8($sp)
    # Line 189
    ld	$a0,16($sp)
    # Line 190
    ld	$a1,24($sp)
    sb	$a1,2($v0)
    # Line 189
    sb	$a0,1($v0)
    # Line 191
    addiu	$sp,$sp,48
    jr	$ra
    # Line 188
    sb	$v1,0($v0)
.L0da4baa0:
    # Line 191
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color3ub

# Function: __glsplc_Color3ubv
# Declared: Line 194 (Source lines: 195-203)
# Address: 0x0da4bab0 - 0x0da4bb18 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Color3ubv
.ent __glsplc_Color3ubv
__glsplc_Color3ubv:
    # Line 195
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,21800
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 198
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,10
    # Line 195
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 198
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4bb0c
    ld	$ra,0($sp)
    # Line 200
    ld	$v1,8($sp)
    # Line 203
    ld	$gp,16($sp)
    # Line 200
    lbu	$a1,0($v1)
    sb	$a1,0($v0)
    # Line 201
    lbu	$a0,1($v1)
    sb	$a0,1($v0)
    # Line 202
    lbu	$v1,2($v1)
    # Line 203
    addiu	$sp,$sp,32
    jr	$ra
    # Line 202
    sb	$v1,2($v0)
.L0da4bb0c:
    # Line 203
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color3ubv

# Function: __glsplc_Color3ui
# Declared: Line 206 (Source lines: 207-215)
# Address: 0x0da4bb20 - 0x0da4bb8c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3ui
.ent __glsplc_Color3ui
__glsplc_Color3ui:
    # Line 207
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,21688
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 210
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 207
    sd	$a1,16($sp)
    # Line 210
    li	$a1,11
    # Line 207
    sd	$a0,8($sp)
    # Line 210
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4bb80
    ld	$ra,0($sp)
    # Line 215
    ld	$gp,32($sp)
    # Line 212
    ld	$v1,8($sp)
    # Line 213
    ld	$a0,16($sp)
    # Line 214
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 213
    sw	$a0,4($v0)
    # Line 215
    addiu	$sp,$sp,48
    jr	$ra
    # Line 212
    sw	$v1,0($v0)
.L0da4bb80:
    # Line 215
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color3ui

# Function: __glsplc_Color3uiv
# Declared: Line 218 (Source lines: 219-227)
# Address: 0x0da4bb90 - 0x0da4bbf8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Color3uiv
.ent __glsplc_Color3uiv
__glsplc_Color3uiv:
    # Line 219
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,21576
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 222
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,11
    # Line 219
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 222
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4bbec
    ld	$ra,0($sp)
    # Line 224
    ld	$v1,8($sp)
    # Line 227
    ld	$gp,16($sp)
    # Line 224
    lw	$a1,0($v1)
    sw	$a1,0($v0)
    # Line 225
    lw	$a0,4($v1)
    sw	$a0,4($v0)
    # Line 226
    lw	$v1,8($v1)
    # Line 227
    addiu	$sp,$sp,32
    jr	$ra
    # Line 226
    sw	$v1,8($v0)
.L0da4bbec:
    # Line 227
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color3uiv

# Function: __glsplc_Color3us
# Declared: Line 230 (Source lines: 231-239)
# Address: 0x0da4bc00 - 0x0da4bc6c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Color3us
.ent __glsplc_Color3us
__glsplc_Color3us:
    # Line 231
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,21464
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 234
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 231
    sd	$a1,16($sp)
    # Line 234
    li	$a1,12
    # Line 231
    sd	$a0,8($sp)
    # Line 234
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4bc60
    ld	$ra,0($sp)
    # Line 239
    ld	$gp,32($sp)
    # Line 236
    ld	$v1,8($sp)
    # Line 237
    ld	$a0,16($sp)
    # Line 238
    ld	$a1,24($sp)
    sh	$a1,4($v0)
    # Line 237
    sh	$a0,2($v0)
    # Line 239
    addiu	$sp,$sp,48
    jr	$ra
    # Line 236
    sh	$v1,0($v0)
.L0da4bc60:
    # Line 239
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color3us

# Function: __glsplc_Color3usv
# Declared: Line 242 (Source lines: 243-251)
# Address: 0x0da4bc70 - 0x0da4bcd8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Color3usv
.ent __glsplc_Color3usv
__glsplc_Color3usv:
    # Line 243
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,21352
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 246
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,12
    # Line 243
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 246
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4bccc
    ld	$ra,0($sp)
    # Line 248
    ld	$v1,8($sp)
    # Line 251
    ld	$gp,16($sp)
    # Line 248
    lhu	$a1,0($v1)
    sh	$a1,0($v0)
    # Line 249
    lhu	$a0,2($v1)
    sh	$a0,2($v0)
    # Line 250
    lhu	$v1,4($v1)
    # Line 251
    addiu	$sp,$sp,32
    jr	$ra
    # Line 250
    sh	$v1,4($v0)
.L0da4bccc:
    # Line 251
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color3usv

# Function: __glsplc_Color4b
# Declared: Line 254 (Source lines: 255-264)
# Address: 0x0da4bce0 - 0x0da4bd58 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Color4b
.ent __glsplc_Color4b
__glsplc_Color4b:
    # Line 255
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,21240
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 258
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 255
    sd	$a1,16($sp)
    # Line 258
    li	$a1,13
    # Line 255
    sd	$a0,8($sp)
    # Line 258
    li	$a0,4
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4bd4c
    ld	$ra,0($sp)
    # Line 264
    ld	$gp,40($sp)
    # Line 260
    ld	$v1,8($sp)
    # Line 261
    ld	$a0,16($sp)
    # Line 262
    ld	$a1,24($sp)
    # Line 263
    ld	$a2,32($sp)
    sb	$a2,3($v0)
    # Line 262
    sb	$a1,2($v0)
    # Line 261
    sb	$a0,1($v0)
    # Line 264
    addiu	$sp,$sp,48
    jr	$ra
    # Line 260
    sb	$v1,0($v0)
.L0da4bd4c:
    # Line 264
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color4b

# Function: __glsplc_Color4bv
# Declared: Line 267 (Source lines: 268-277)
# Address: 0x0da4bd60 - 0x0da4bdd0 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Color4bv
.ent __glsplc_Color4bv
__glsplc_Color4bv:
    # Line 268
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,21112
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 271
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,13
    # Line 268
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 271
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4bdc4
    ld	$ra,0($sp)
    # Line 273
    ld	$v1,8($sp)
    # Line 277
    ld	$gp,16($sp)
    # Line 273
    lb	$a2,0($v1)
    sb	$a2,0($v0)
    # Line 274
    lb	$a1,1($v1)
    sb	$a1,1($v0)
    # Line 275
    lb	$a0,2($v1)
    sb	$a0,2($v0)
    # Line 276
    lb	$v1,3($v1)
    # Line 277
    addiu	$sp,$sp,32
    jr	$ra
    # Line 276
    sb	$v1,3($v0)
.L0da4bdc4:
    # Line 277
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color4bv

# Function: __glsplc_Color4d
# Declared: Line 280 (Source lines: 281-290)
# Address: 0x0da4bdd0 - 0x0da4be48 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Color4d
.ent __glsplc_Color4d
__glsplc_Color4d:
    # Line 281
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,21000
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 284
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 281
    sdc1	$f13,8($sp)
    # Line 284
    li	$a1,14
    # Line 281
    sd	$ra,32($sp)
    # Line 284
    li	$a0,32
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4be3c
    ld	$ra,32($sp)
    # Line 290
    ld	$gp,40($sp)
    # Line 286
    ldc1	$f0,0($sp)
    # Line 287
    ldc1	$f1,8($sp)
    # Line 289
    ldc1	$f3,24($sp)
    # Line 288
    ldc1	$f2,16($sp)
    # Line 289
    sdc1	$f3,24($v0)
    # Line 288
    sdc1	$f2,16($v0)
    # Line 287
    sdc1	$f1,8($v0)
    # Line 290
    addiu	$sp,$sp,48
    jr	$ra
    # Line 286
    sdc1	$f0,0($v0)
.L0da4be3c:
    # Line 290
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color4d

# Function: __glsplc_Color4dv
# Declared: Line 293 (Source lines: 294-303)
# Address: 0x0da4be50 - 0x0da4bec0 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Color4dv
.ent __glsplc_Color4dv
__glsplc_Color4dv:
    # Line 294
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,20872
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 297
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,14
    # Line 294
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 297
    jal	__glSPDlalloc2
    li	$a0,32
    beqz	$v0,.L0da4beb4
    ld	$ra,0($sp)
    # Line 299
    ld	$v1,8($sp)
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 300
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 301
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    # Line 302
    ldc1	$f0,24($v1)
    # Line 303
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 302
    sdc1	$f0,24($v0)
.L0da4beb4:
    # Line 303
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color4dv

# Function: __glsplc_Color4f
# Declared: Line 306 (Source lines: 307-316)
# Address: 0x0da4bec0 - 0x0da4bf38 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Color4f
.ent __glsplc_Color4f
__glsplc_Color4f:
    # Line 307
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,20760
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 310
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 307
    sdc1	$f13,8($sp)
    # Line 310
    li	$a1,15
    # Line 307
    sd	$ra,32($sp)
    # Line 310
    li	$a0,16
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4bf2c
    ld	$ra,32($sp)
    # Line 316
    ld	$gp,40($sp)
    # Line 312
    ldc1	$f0,0($sp)
    # Line 313
    ldc1	$f1,8($sp)
    # Line 315
    ldc1	$f3,24($sp)
    # Line 314
    ldc1	$f2,16($sp)
    # Line 315
    swc1	$f3,12($v0)
    # Line 314
    swc1	$f2,8($v0)
    # Line 313
    swc1	$f1,4($v0)
    # Line 316
    addiu	$sp,$sp,48
    jr	$ra
    # Line 312
    swc1	$f0,0($v0)
.L0da4bf2c:
    # Line 316
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color4f

# Function: __glsplc_Color4fv
# Declared: Line 319 (Source lines: 320-329)
# Address: 0x0da4bf40 - 0x0da4bfb0 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Color4fv
.ent __glsplc_Color4fv
__glsplc_Color4fv:
    # Line 320
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,20632
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 323
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,15
    # Line 320
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 323
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4bfa4
    ld	$ra,0($sp)
    # Line 325
    ld	$v1,8($sp)
    lwc1	$f3,0($v1)
    swc1	$f3,0($v0)
    # Line 326
    lwc1	$f2,4($v1)
    swc1	$f2,4($v0)
    # Line 327
    lwc1	$f1,8($v1)
    swc1	$f1,8($v0)
    # Line 328
    lwc1	$f0,12($v1)
    # Line 329
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 328
    swc1	$f0,12($v0)
.L0da4bfa4:
    # Line 329
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color4fv

# Function: __glsplc_Color4i
# Declared: Line 332 (Source lines: 333-342)
# Address: 0x0da4bfb0 - 0x0da4c028 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Color4i
.ent __glsplc_Color4i
__glsplc_Color4i:
    # Line 333
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,20520
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 336
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 333
    sd	$a1,16($sp)
    # Line 336
    li	$a1,16
    # Line 333
    sd	$a0,8($sp)
    # Line 336
    li	$a0,16
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4c01c
    ld	$ra,0($sp)
    # Line 342
    ld	$gp,40($sp)
    # Line 338
    ld	$v1,8($sp)
    # Line 339
    ld	$a0,16($sp)
    # Line 340
    ld	$a1,24($sp)
    # Line 341
    ld	$a2,32($sp)
    sw	$a2,12($v0)
    # Line 340
    sw	$a1,8($v0)
    # Line 339
    sw	$a0,4($v0)
    # Line 342
    addiu	$sp,$sp,48
    jr	$ra
    # Line 338
    sw	$v1,0($v0)
.L0da4c01c:
    # Line 342
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color4i

# Function: __glsplc_Color4iv
# Declared: Line 345 (Source lines: 346-355)
# Address: 0x0da4c030 - 0x0da4c0a0 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Color4iv
.ent __glsplc_Color4iv
__glsplc_Color4iv:
    # Line 346
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,20392
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 349
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,16
    # Line 346
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 349
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4c094
    ld	$ra,0($sp)
    # Line 351
    ld	$v1,8($sp)
    # Line 355
    ld	$gp,16($sp)
    # Line 351
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 352
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    # Line 353
    lw	$a0,8($v1)
    sw	$a0,8($v0)
    # Line 354
    lw	$v1,12($v1)
    # Line 355
    addiu	$sp,$sp,32
    jr	$ra
    # Line 354
    sw	$v1,12($v0)
.L0da4c094:
    # Line 355
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color4iv

# Function: __glsplc_Color4s
# Declared: Line 358 (Source lines: 359-368)
# Address: 0x0da4c0a0 - 0x0da4c118 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Color4s
.ent __glsplc_Color4s
__glsplc_Color4s:
    # Line 359
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,20280
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 362
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 359
    sd	$a1,16($sp)
    # Line 362
    li	$a1,17
    # Line 359
    sd	$a0,8($sp)
    # Line 362
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4c10c
    ld	$ra,0($sp)
    # Line 368
    ld	$gp,40($sp)
    # Line 364
    ld	$v1,8($sp)
    # Line 365
    ld	$a0,16($sp)
    # Line 366
    ld	$a1,24($sp)
    # Line 367
    ld	$a2,32($sp)
    sh	$a2,6($v0)
    # Line 366
    sh	$a1,4($v0)
    # Line 365
    sh	$a0,2($v0)
    # Line 368
    addiu	$sp,$sp,48
    jr	$ra
    # Line 364
    sh	$v1,0($v0)
.L0da4c10c:
    # Line 368
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color4s

# Function: __glsplc_Color4sv
# Declared: Line 371 (Source lines: 372-381)
# Address: 0x0da4c120 - 0x0da4c190 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Color4sv
.ent __glsplc_Color4sv
__glsplc_Color4sv:
    # Line 372
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,20152
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 375
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,17
    # Line 372
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 375
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4c184
    ld	$ra,0($sp)
    # Line 377
    ld	$v1,8($sp)
    # Line 381
    ld	$gp,16($sp)
    # Line 377
    lh	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 378
    lh	$a1,2($v1)
    sh	$a1,2($v0)
    # Line 379
    lh	$a0,4($v1)
    sh	$a0,4($v0)
    # Line 380
    lh	$v1,6($v1)
    # Line 381
    addiu	$sp,$sp,32
    jr	$ra
    # Line 380
    sh	$v1,6($v0)
.L0da4c184:
    # Line 381
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color4sv

# Function: __glsplc_Color4ub
# Declared: Line 384 (Source lines: 385-394)
# Address: 0x0da4c190 - 0x0da4c208 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Color4ub
.ent __glsplc_Color4ub
__glsplc_Color4ub:
    # Line 385
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,20040
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 388
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 385
    sd	$a1,16($sp)
    # Line 388
    li	$a1,18
    # Line 385
    sd	$a0,8($sp)
    # Line 388
    li	$a0,4
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4c1fc
    ld	$ra,0($sp)
    # Line 394
    ld	$gp,40($sp)
    # Line 390
    ld	$v1,8($sp)
    # Line 391
    ld	$a0,16($sp)
    # Line 392
    ld	$a1,24($sp)
    # Line 393
    ld	$a2,32($sp)
    sb	$a2,3($v0)
    # Line 392
    sb	$a1,2($v0)
    # Line 391
    sb	$a0,1($v0)
    # Line 394
    addiu	$sp,$sp,48
    jr	$ra
    # Line 390
    sb	$v1,0($v0)
.L0da4c1fc:
    # Line 394
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color4ub

# Function: __glsplc_Color4ubv
# Declared: Line 397 (Source lines: 398-407)
# Address: 0x0da4c210 - 0x0da4c280 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Color4ubv
.ent __glsplc_Color4ubv
__glsplc_Color4ubv:
    # Line 398
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,19912
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 401
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,18
    # Line 398
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 401
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4c274
    ld	$ra,0($sp)
    # Line 403
    ld	$v1,8($sp)
    # Line 407
    ld	$gp,16($sp)
    # Line 403
    lbu	$a2,0($v1)
    sb	$a2,0($v0)
    # Line 404
    lbu	$a1,1($v1)
    sb	$a1,1($v0)
    # Line 405
    lbu	$a0,2($v1)
    sb	$a0,2($v0)
    # Line 406
    lbu	$v1,3($v1)
    # Line 407
    addiu	$sp,$sp,32
    jr	$ra
    # Line 406
    sb	$v1,3($v0)
.L0da4c274:
    # Line 407
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color4ubv

# Function: __glsplc_Color4ui
# Declared: Line 410 (Source lines: 411-420)
# Address: 0x0da4c280 - 0x0da4c2f8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Color4ui
.ent __glsplc_Color4ui
__glsplc_Color4ui:
    # Line 411
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,19800
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 414
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 411
    sd	$a1,16($sp)
    # Line 414
    li	$a1,19
    # Line 411
    sd	$a0,8($sp)
    # Line 414
    li	$a0,16
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4c2ec
    ld	$ra,0($sp)
    # Line 420
    ld	$gp,40($sp)
    # Line 416
    ld	$v1,8($sp)
    # Line 417
    ld	$a0,16($sp)
    # Line 418
    ld	$a1,24($sp)
    # Line 419
    ld	$a2,32($sp)
    sw	$a2,12($v0)
    # Line 418
    sw	$a1,8($v0)
    # Line 417
    sw	$a0,4($v0)
    # Line 420
    addiu	$sp,$sp,48
    jr	$ra
    # Line 416
    sw	$v1,0($v0)
.L0da4c2ec:
    # Line 420
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color4ui

# Function: __glsplc_Color4uiv
# Declared: Line 423 (Source lines: 424-433)
# Address: 0x0da4c300 - 0x0da4c370 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Color4uiv
.ent __glsplc_Color4uiv
__glsplc_Color4uiv:
    # Line 424
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,19672
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 427
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,19
    # Line 424
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 427
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4c364
    ld	$ra,0($sp)
    # Line 429
    ld	$v1,8($sp)
    # Line 433
    ld	$gp,16($sp)
    # Line 429
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 430
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    # Line 431
    lw	$a0,8($v1)
    sw	$a0,8($v0)
    # Line 432
    lw	$v1,12($v1)
    # Line 433
    addiu	$sp,$sp,32
    jr	$ra
    # Line 432
    sw	$v1,12($v0)
.L0da4c364:
    # Line 433
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color4uiv

# Function: __glsplc_Color4us
# Declared: Line 436 (Source lines: 437-446)
# Address: 0x0da4c370 - 0x0da4c3e8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Color4us
.ent __glsplc_Color4us
__glsplc_Color4us:
    # Line 437
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,19560
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 440
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 437
    sd	$a1,16($sp)
    # Line 440
    li	$a1,20
    # Line 437
    sd	$a0,8($sp)
    # Line 440
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4c3dc
    ld	$ra,0($sp)
    # Line 446
    ld	$gp,40($sp)
    # Line 442
    ld	$v1,8($sp)
    # Line 443
    ld	$a0,16($sp)
    # Line 444
    ld	$a1,24($sp)
    # Line 445
    ld	$a2,32($sp)
    sh	$a2,6($v0)
    # Line 444
    sh	$a1,4($v0)
    # Line 443
    sh	$a0,2($v0)
    # Line 446
    addiu	$sp,$sp,48
    jr	$ra
    # Line 442
    sh	$v1,0($v0)
.L0da4c3dc:
    # Line 446
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Color4us

# Function: __glsplc_Color4usv
# Declared: Line 449 (Source lines: 450-459)
# Address: 0x0da4c3f0 - 0x0da4c460 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Color4usv
.ent __glsplc_Color4usv
__glsplc_Color4usv:
    # Line 450
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,19432
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 453
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,20
    # Line 450
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 453
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4c454
    ld	$ra,0($sp)
    # Line 455
    ld	$v1,8($sp)
    # Line 459
    ld	$gp,16($sp)
    # Line 455
    lhu	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 456
    lhu	$a1,2($v1)
    sh	$a1,2($v0)
    # Line 457
    lhu	$a0,4($v1)
    sh	$a0,4($v0)
    # Line 458
    lhu	$v1,6($v1)
    # Line 459
    addiu	$sp,$sp,32
    jr	$ra
    # Line 458
    sh	$v1,6($v0)
.L0da4c454:
    # Line 459
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Color4usv

# Function: __glsplc_EdgeFlag
# Declared: Line 462 (Source lines: 463-469)
# Address: 0x0da4c460 - 0x0da4c4b4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_EdgeFlag
.ent __glsplc_EdgeFlag
__glsplc_EdgeFlag:
    # Line 463
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,19320
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 466
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,21
    # Line 463
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 466
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4c4a8
    ld	$ra,0($sp)
    # Line 469
    ld	$gp,16($sp)
    # Line 468
    ld	$v1,8($sp)
    # Line 469
    addiu	$sp,$sp,32
    jr	$ra
    # Line 468
    sb	$v1,0($v0)
.L0da4c4a8:
    # Line 469
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EdgeFlag

# Function: __glsplc_EdgeFlagv
# Declared: Line 472 (Source lines: 473-479)
# Address: 0x0da4c4c0 - 0x0da4c518 (Size: 88 bytes, Frame: 32)
.globl __glsplc_EdgeFlagv
.ent __glsplc_EdgeFlagv
__glsplc_EdgeFlagv:
    # Line 473
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,19224
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 476
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,21
    # Line 473
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 476
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4c50c
    ld	$ra,0($sp)
    # Line 478
    ld	$v1,8($sp)
    # Line 479
    ld	$gp,16($sp)
    # Line 478
    lbu	$v1,0($v1)
    # Line 479
    addiu	$sp,$sp,32
    jr	$ra
    # Line 478
    sb	$v1,0($v0)
.L0da4c50c:
    # Line 479
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EdgeFlagv

# Function: __glsplc_End
# Declared: Line 482 (Source lines: 483-488)
# Address: 0x0da4c520 - 0x0da4c558 (Size: 56 bytes, Frame: 16)
.globl __glsplc_End
.ent __glsplc_End
__glsplc_End:
    # Line 483
    lui	$at,0x4
    addiu	$sp,$sp,-16
    addiu	$at,$at,19128
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 486
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,22
    # Line 483
    sd	$ra,0($sp)
    # Line 486
    jal	__glSPDlalloc
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 488
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_End

# Function: __glsplc_Indexd
# Declared: Line 491 (Source lines: 492-498)
# Address: 0x0da4c560 - 0x0da4c5b4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_Indexd
.ent __glsplc_Indexd
__glsplc_Indexd:
    # Line 492
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,19064
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 495
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,23
    # Line 492
    sd	$ra,8($sp)
    # Line 495
    li	$a0,8
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4c5a8
    ld	$ra,8($sp)
    # Line 497
    ldc1	$f0,0($sp)
    # Line 498
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 497
    sdc1	$f0,0($v0)
.L0da4c5a8:
    # Line 498
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexd

# Function: __glsplc_Indexdv
# Declared: Line 501 (Source lines: 502-508)
# Address: 0x0da4c5c0 - 0x0da4c618 (Size: 88 bytes, Frame: 32)
.globl __glsplc_Indexdv
.ent __glsplc_Indexdv
__glsplc_Indexdv:
    # Line 502
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,18968
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 505
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,23
    # Line 502
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 505
    jal	__glSPDlalloc2
    li	$a0,8
    beqz	$v0,.L0da4c60c
    ld	$ra,0($sp)
    # Line 507
    ld	$v1,8($sp)
    ldc1	$f0,0($v1)
    # Line 508
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 507
    sdc1	$f0,0($v0)
.L0da4c60c:
    # Line 508
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexdv

# Function: __glsplc_Indexf
# Declared: Line 511 (Source lines: 512-518)
# Address: 0x0da4c620 - 0x0da4c674 (Size: 84 bytes, Frame: 32)
.globl __glsplc_Indexf
.ent __glsplc_Indexf
__glsplc_Indexf:
    # Line 512
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,18872
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 515
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,24
    # Line 512
    sd	$ra,8($sp)
    # Line 515
    li	$a0,4
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4c668
    ld	$ra,8($sp)
    # Line 517
    ldc1	$f0,0($sp)
    # Line 518
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 517
    swc1	$f0,0($v0)
.L0da4c668:
    # Line 518
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexf

# Function: __glsplc_Indexfv
# Declared: Line 521 (Source lines: 522-528)
# Address: 0x0da4c680 - 0x0da4c6d8 (Size: 88 bytes, Frame: 32)
.globl __glsplc_Indexfv
.ent __glsplc_Indexfv
__glsplc_Indexfv:
    # Line 522
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,18776
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 525
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,24
    # Line 522
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 525
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4c6cc
    ld	$ra,0($sp)
    # Line 527
    ld	$v1,8($sp)
    lwc1	$f0,0($v1)
    # Line 528
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 527
    swc1	$f0,0($v0)
.L0da4c6cc:
    # Line 528
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexfv

# Function: __glsplc_Indexi
# Declared: Line 531 (Source lines: 532-538)
# Address: 0x0da4c6e0 - 0x0da4c734 (Size: 84 bytes, Frame: 32)
.globl __glsplc_Indexi
.ent __glsplc_Indexi
__glsplc_Indexi:
    # Line 532
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,18680
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 535
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,25
    # Line 532
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 535
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4c728
    ld	$ra,0($sp)
    # Line 538
    ld	$gp,16($sp)
    # Line 537
    ld	$v1,8($sp)
    # Line 538
    addiu	$sp,$sp,32
    jr	$ra
    # Line 537
    sw	$v1,0($v0)
.L0da4c728:
    # Line 538
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexi

# Function: __glsplc_Indexiv
# Declared: Line 541 (Source lines: 542-548)
# Address: 0x0da4c740 - 0x0da4c798 (Size: 88 bytes, Frame: 32)
.globl __glsplc_Indexiv
.ent __glsplc_Indexiv
__glsplc_Indexiv:
    # Line 542
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,18584
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 545
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,25
    # Line 542
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 545
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4c78c
    ld	$ra,0($sp)
    # Line 547
    ld	$v1,8($sp)
    # Line 548
    ld	$gp,16($sp)
    # Line 547
    lw	$v1,0($v1)
    # Line 548
    addiu	$sp,$sp,32
    jr	$ra
    # Line 547
    sw	$v1,0($v0)
.L0da4c78c:
    # Line 548
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexiv

# Function: __glsplc_Indexs
# Declared: Line 551 (Source lines: 552-558)
# Address: 0x0da4c7a0 - 0x0da4c7f4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_Indexs
.ent __glsplc_Indexs
__glsplc_Indexs:
    # Line 552
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,18488
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 555
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,26
    # Line 552
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 555
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4c7e8
    ld	$ra,0($sp)
    # Line 558
    ld	$gp,16($sp)
    # Line 557
    ld	$v1,8($sp)
    # Line 558
    addiu	$sp,$sp,32
    jr	$ra
    # Line 557
    sh	$v1,0($v0)
.L0da4c7e8:
    # Line 558
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexs

# Function: __glsplc_Indexsv
# Declared: Line 561 (Source lines: 562-568)
# Address: 0x0da4c800 - 0x0da4c858 (Size: 88 bytes, Frame: 32)
.globl __glsplc_Indexsv
.ent __glsplc_Indexsv
__glsplc_Indexsv:
    # Line 562
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,18392
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 565
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,26
    # Line 562
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 565
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4c84c
    ld	$ra,0($sp)
    # Line 567
    ld	$v1,8($sp)
    # Line 568
    ld	$gp,16($sp)
    # Line 567
    lh	$v1,0($v1)
    # Line 568
    addiu	$sp,$sp,32
    jr	$ra
    # Line 567
    sh	$v1,0($v0)
.L0da4c84c:
    # Line 568
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexsv

# Function: __glsplc_Normal3b
# Declared: Line 571 (Source lines: 572-580)
# Address: 0x0da4c860 - 0x0da4c8cc (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3b
.ent __glsplc_Normal3b
__glsplc_Normal3b:
    # Line 572
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,18296
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 575
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 572
    sd	$a1,16($sp)
    # Line 575
    li	$a1,27
    # Line 572
    sd	$a0,8($sp)
    # Line 575
    li	$a0,4
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4c8c0
    ld	$ra,0($sp)
    # Line 580
    ld	$gp,32($sp)
    # Line 577
    ld	$v1,8($sp)
    # Line 578
    ld	$a0,16($sp)
    # Line 579
    ld	$a1,24($sp)
    sb	$a1,2($v0)
    # Line 578
    sb	$a0,1($v0)
    # Line 580
    addiu	$sp,$sp,48
    jr	$ra
    # Line 577
    sb	$v1,0($v0)
.L0da4c8c0:
    # Line 580
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Normal3b

# Function: __glsplc_Normal3bv
# Declared: Line 583 (Source lines: 584-592)
# Address: 0x0da4c8d0 - 0x0da4c938 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Normal3bv
.ent __glsplc_Normal3bv
__glsplc_Normal3bv:
    # Line 584
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,18184
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 587
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,27
    # Line 584
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 587
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4c92c
    ld	$ra,0($sp)
    # Line 589
    ld	$v1,8($sp)
    # Line 592
    ld	$gp,16($sp)
    # Line 589
    lb	$a1,0($v1)
    sb	$a1,0($v0)
    # Line 590
    lb	$a0,1($v1)
    sb	$a0,1($v0)
    # Line 591
    lb	$v1,2($v1)
    # Line 592
    addiu	$sp,$sp,32
    jr	$ra
    # Line 591
    sb	$v1,2($v0)
.L0da4c92c:
    # Line 592
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Normal3bv

# Function: __glsplc_Normal3d
# Declared: Line 595 (Source lines: 596-604)
# Address: 0x0da4c940 - 0x0da4c9ac (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3d
.ent __glsplc_Normal3d
__glsplc_Normal3d:
    # Line 596
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,18072
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 599
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 596
    sdc1	$f13,8($sp)
    # Line 599
    li	$a1,28
    # Line 596
    sd	$ra,24($sp)
    # Line 599
    li	$a0,24
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4c9a0
    ld	$ra,24($sp)
    # Line 604
    ld	$gp,32($sp)
    # Line 601
    ldc1	$f0,0($sp)
    # Line 602
    ldc1	$f1,8($sp)
    # Line 603
    ldc1	$f2,16($sp)
    # Line 602
    sdc1	$f1,8($v0)
    # Line 603
    sdc1	$f2,16($v0)
    # Line 604
    addiu	$sp,$sp,48
    jr	$ra
    # Line 601
    sdc1	$f0,0($v0)
.L0da4c9a0:
    # Line 604
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Normal3d

# Function: __glsplc_Normal3dv
# Declared: Line 607 (Source lines: 608-616)
# Address: 0x0da4c9b0 - 0x0da4ca18 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Normal3dv
.ent __glsplc_Normal3dv
__glsplc_Normal3dv:
    # Line 608
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,17960
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 611
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,28
    # Line 608
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 611
    jal	__glSPDlalloc2
    li	$a0,24
    beqz	$v0,.L0da4ca0c
    ld	$ra,0($sp)
    # Line 613
    ld	$v1,8($sp)
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 614
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    # Line 615
    ldc1	$f0,16($v1)
    # Line 616
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 615
    sdc1	$f0,16($v0)
.L0da4ca0c:
    # Line 616
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Normal3dv

# Function: __glsplc_Normal3f
# Declared: Line 619 (Source lines: 620-628)
# Address: 0x0da4ca20 - 0x0da4ca8c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3f
.ent __glsplc_Normal3f
__glsplc_Normal3f:
    # Line 620
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,17848
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 623
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 620
    sdc1	$f13,8($sp)
    # Line 623
    li	$a1,29
    # Line 620
    sd	$ra,24($sp)
    # Line 623
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4ca80
    ld	$ra,24($sp)
    # Line 628
    ld	$gp,32($sp)
    # Line 625
    ldc1	$f0,0($sp)
    # Line 626
    ldc1	$f1,8($sp)
    # Line 627
    ldc1	$f2,16($sp)
    # Line 626
    swc1	$f1,4($v0)
    # Line 627
    swc1	$f2,8($v0)
    # Line 628
    addiu	$sp,$sp,48
    jr	$ra
    # Line 625
    swc1	$f0,0($v0)
.L0da4ca80:
    # Line 628
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Normal3f

# Function: __glsplc_Normal3fv
# Declared: Line 631 (Source lines: 632-640)
# Address: 0x0da4ca90 - 0x0da4caf8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Normal3fv
.ent __glsplc_Normal3fv
__glsplc_Normal3fv:
    # Line 632
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,17736
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 635
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,29
    # Line 632
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 635
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4caec
    ld	$ra,0($sp)
    # Line 637
    ld	$v1,8($sp)
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 638
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    # Line 639
    lwc1	$f0,8($v1)
    # Line 640
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 639
    swc1	$f0,8($v0)
.L0da4caec:
    # Line 640
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Normal3fv

# Function: __glsplc_Normal3i
# Declared: Line 643 (Source lines: 644-652)
# Address: 0x0da4cb00 - 0x0da4cb6c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3i
.ent __glsplc_Normal3i
__glsplc_Normal3i:
    # Line 644
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,17624
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 647
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 644
    sd	$a1,16($sp)
    # Line 647
    li	$a1,30
    # Line 644
    sd	$a0,8($sp)
    # Line 647
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4cb60
    ld	$ra,0($sp)
    # Line 652
    ld	$gp,32($sp)
    # Line 649
    ld	$v1,8($sp)
    # Line 650
    ld	$a0,16($sp)
    # Line 651
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 650
    sw	$a0,4($v0)
    # Line 652
    addiu	$sp,$sp,48
    jr	$ra
    # Line 649
    sw	$v1,0($v0)
.L0da4cb60:
    # Line 652
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Normal3i

# Function: __glsplc_Normal3iv
# Declared: Line 655 (Source lines: 656-664)
# Address: 0x0da4cb70 - 0x0da4cbd8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Normal3iv
.ent __glsplc_Normal3iv
__glsplc_Normal3iv:
    # Line 656
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,17512
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 659
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,30
    # Line 656
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 659
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4cbcc
    ld	$ra,0($sp)
    # Line 661
    ld	$v1,8($sp)
    # Line 664
    ld	$gp,16($sp)
    # Line 661
    lw	$a1,0($v1)
    sw	$a1,0($v0)
    # Line 662
    lw	$a0,4($v1)
    sw	$a0,4($v0)
    # Line 663
    lw	$v1,8($v1)
    # Line 664
    addiu	$sp,$sp,32
    jr	$ra
    # Line 663
    sw	$v1,8($v0)
.L0da4cbcc:
    # Line 664
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Normal3iv

# Function: __glsplc_Normal3s
# Declared: Line 667 (Source lines: 668-676)
# Address: 0x0da4cbe0 - 0x0da4cc4c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Normal3s
.ent __glsplc_Normal3s
__glsplc_Normal3s:
    # Line 668
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,17400
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 671
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 668
    sd	$a1,16($sp)
    # Line 671
    li	$a1,31
    # Line 668
    sd	$a0,8($sp)
    # Line 671
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4cc40
    ld	$ra,0($sp)
    # Line 676
    ld	$gp,32($sp)
    # Line 673
    ld	$v1,8($sp)
    # Line 674
    ld	$a0,16($sp)
    # Line 675
    ld	$a1,24($sp)
    sh	$a1,4($v0)
    # Line 674
    sh	$a0,2($v0)
    # Line 676
    addiu	$sp,$sp,48
    jr	$ra
    # Line 673
    sh	$v1,0($v0)
.L0da4cc40:
    # Line 676
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Normal3s

# Function: __glsplc_Normal3sv
# Declared: Line 679 (Source lines: 680-688)
# Address: 0x0da4cc50 - 0x0da4ccb8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Normal3sv
.ent __glsplc_Normal3sv
__glsplc_Normal3sv:
    # Line 680
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,17288
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 683
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,31
    # Line 680
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 683
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4ccac
    ld	$ra,0($sp)
    # Line 685
    ld	$v1,8($sp)
    # Line 688
    ld	$gp,16($sp)
    # Line 685
    lh	$a1,0($v1)
    sh	$a1,0($v0)
    # Line 686
    lh	$a0,2($v1)
    sh	$a0,2($v0)
    # Line 687
    lh	$v1,4($v1)
    # Line 688
    addiu	$sp,$sp,32
    jr	$ra
    # Line 687
    sh	$v1,4($v0)
.L0da4ccac:
    # Line 688
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Normal3sv

# Function: __glsplc_RasterPos2d
# Declared: Line 691 (Source lines: 692-699)
# Address: 0x0da4ccc0 - 0x0da4cd20 (Size: 96 bytes, Frame: 32)
.globl __glsplc_RasterPos2d
.ent __glsplc_RasterPos2d
__glsplc_RasterPos2d:
    # Line 692
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,17176
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 695
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 692
    sdc1	$f13,8($sp)
    # Line 695
    li	$a1,32
    # Line 692
    sd	$ra,16($sp)
    # Line 695
    li	$a0,16
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4cd14
    ld	$ra,16($sp)
    # Line 699
    ld	$gp,24($sp)
    # Line 697
    ldc1	$f0,0($sp)
    # Line 698
    ldc1	$f1,8($sp)
    # Line 697
    sdc1	$f0,0($v0)
    # Line 699
    addiu	$sp,$sp,32
    jr	$ra
    # Line 698
    sdc1	$f1,8($v0)
.L0da4cd14:
    # Line 699
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos2d

# Function: __glsplc_RasterPos2dv
# Declared: Line 702 (Source lines: 703-710)
# Address: 0x0da4cd20 - 0x0da4cd80 (Size: 96 bytes, Frame: 32)
.globl __glsplc_RasterPos2dv
.ent __glsplc_RasterPos2dv
__glsplc_RasterPos2dv:
    # Line 703
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,17080
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 706
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,32
    # Line 703
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 706
    jal	__glSPDlalloc2
    li	$a0,16
    beqz	$v0,.L0da4cd74
    ld	$ra,0($sp)
    # Line 708
    ld	$v1,8($sp)
    ldc1	$f1,0($v1)
    sdc1	$f1,0($v0)
    # Line 709
    ldc1	$f0,8($v1)
    # Line 710
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 709
    sdc1	$f0,8($v0)
.L0da4cd74:
    # Line 710
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos2dv

# Function: __glsplc_RasterPos2f
# Declared: Line 713 (Source lines: 714-721)
# Address: 0x0da4cd80 - 0x0da4cde0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_RasterPos2f
.ent __glsplc_RasterPos2f
__glsplc_RasterPos2f:
    # Line 714
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,16984
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 717
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 714
    sdc1	$f13,8($sp)
    # Line 717
    li	$a1,33
    # Line 714
    sd	$ra,16($sp)
    # Line 717
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4cdd4
    ld	$ra,16($sp)
    # Line 721
    ld	$gp,24($sp)
    # Line 719
    ldc1	$f0,0($sp)
    # Line 720
    ldc1	$f1,8($sp)
    # Line 719
    swc1	$f0,0($v0)
    # Line 721
    addiu	$sp,$sp,32
    jr	$ra
    # Line 720
    swc1	$f1,4($v0)
.L0da4cdd4:
    # Line 721
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos2f

# Function: __glsplc_RasterPos2fv
# Declared: Line 724 (Source lines: 725-732)
# Address: 0x0da4cde0 - 0x0da4ce40 (Size: 96 bytes, Frame: 32)
.globl __glsplc_RasterPos2fv
.ent __glsplc_RasterPos2fv
__glsplc_RasterPos2fv:
    # Line 725
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,16888
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 728
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,33
    # Line 725
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 728
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4ce34
    ld	$ra,0($sp)
    # Line 730
    ld	$v1,8($sp)
    lwc1	$f1,0($v1)
    swc1	$f1,0($v0)
    # Line 731
    lwc1	$f0,4($v1)
    # Line 732
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 731
    swc1	$f0,4($v0)
.L0da4ce34:
    # Line 732
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos2fv

# Function: __glsplc_RasterPos2i
# Declared: Line 735 (Source lines: 736-743)
# Address: 0x0da4ce40 - 0x0da4cea0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_RasterPos2i
.ent __glsplc_RasterPos2i
__glsplc_RasterPos2i:
    # Line 736
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,16792
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 739
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 736
    sd	$a1,16($sp)
    # Line 739
    li	$a1,34
    # Line 736
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 739
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4ce94
    ld	$ra,0($sp)
    # Line 743
    ld	$gp,24($sp)
    # Line 741
    ld	$v1,8($sp)
    # Line 742
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 743
    addiu	$sp,$sp,32
    jr	$ra
    # Line 741
    sw	$v1,0($v0)
.L0da4ce94:
    # Line 743
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos2i

# Function: __glsplc_RasterPos2iv
# Declared: Line 746 (Source lines: 747-754)
# Address: 0x0da4cea0 - 0x0da4cf00 (Size: 96 bytes, Frame: 32)
.globl __glsplc_RasterPos2iv
.ent __glsplc_RasterPos2iv
__glsplc_RasterPos2iv:
    # Line 747
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,16696
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 750
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,34
    # Line 747
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 750
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4cef4
    ld	$ra,0($sp)
    # Line 752
    ld	$v1,8($sp)
    # Line 754
    ld	$gp,16($sp)
    # Line 752
    lw	$a0,0($v1)
    sw	$a0,0($v0)
    # Line 753
    lw	$v1,4($v1)
    # Line 754
    addiu	$sp,$sp,32
    jr	$ra
    # Line 753
    sw	$v1,4($v0)
.L0da4cef4:
    # Line 754
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos2iv

# Function: __glsplc_RasterPos2s
# Declared: Line 757 (Source lines: 758-765)
# Address: 0x0da4cf00 - 0x0da4cf60 (Size: 96 bytes, Frame: 32)
.globl __glsplc_RasterPos2s
.ent __glsplc_RasterPos2s
__glsplc_RasterPos2s:
    # Line 758
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,16600
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 761
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 758
    sd	$a1,16($sp)
    # Line 761
    li	$a1,35
    # Line 758
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 761
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4cf54
    ld	$ra,0($sp)
    # Line 765
    ld	$gp,24($sp)
    # Line 763
    ld	$v1,8($sp)
    # Line 764
    ld	$a0,16($sp)
    sh	$a0,2($v0)
    # Line 765
    addiu	$sp,$sp,32
    jr	$ra
    # Line 763
    sh	$v1,0($v0)
.L0da4cf54:
    # Line 765
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos2s

# Function: __glsplc_RasterPos2sv
# Declared: Line 768 (Source lines: 769-776)
# Address: 0x0da4cf60 - 0x0da4cfc0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_RasterPos2sv
.ent __glsplc_RasterPos2sv
__glsplc_RasterPos2sv:
    # Line 769
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,16504
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 772
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,35
    # Line 769
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 772
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4cfb4
    ld	$ra,0($sp)
    # Line 774
    ld	$v1,8($sp)
    # Line 776
    ld	$gp,16($sp)
    # Line 774
    lh	$a0,0($v1)
    sh	$a0,0($v0)
    # Line 775
    lh	$v1,2($v1)
    # Line 776
    addiu	$sp,$sp,32
    jr	$ra
    # Line 775
    sh	$v1,2($v0)
.L0da4cfb4:
    # Line 776
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos2sv

# Function: __glsplc_RasterPos3d
# Declared: Line 779 (Source lines: 780-788)
# Address: 0x0da4cfc0 - 0x0da4d02c (Size: 108 bytes, Frame: 48)
.globl __glsplc_RasterPos3d
.ent __glsplc_RasterPos3d
__glsplc_RasterPos3d:
    # Line 780
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,16408
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 783
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 780
    sdc1	$f13,8($sp)
    # Line 783
    li	$a1,36
    # Line 780
    sd	$ra,24($sp)
    # Line 783
    li	$a0,24
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4d020
    ld	$ra,24($sp)
    # Line 788
    ld	$gp,32($sp)
    # Line 785
    ldc1	$f0,0($sp)
    # Line 786
    ldc1	$f1,8($sp)
    # Line 787
    ldc1	$f2,16($sp)
    # Line 786
    sdc1	$f1,8($v0)
    # Line 787
    sdc1	$f2,16($v0)
    # Line 788
    addiu	$sp,$sp,48
    jr	$ra
    # Line 785
    sdc1	$f0,0($v0)
.L0da4d020:
    # Line 788
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_RasterPos3d

# Function: __glsplc_RasterPos3dv
# Declared: Line 791 (Source lines: 792-800)
# Address: 0x0da4d030 - 0x0da4d098 (Size: 104 bytes, Frame: 32)
.globl __glsplc_RasterPos3dv
.ent __glsplc_RasterPos3dv
__glsplc_RasterPos3dv:
    # Line 792
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,16296
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 795
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,36
    # Line 792
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 795
    jal	__glSPDlalloc2
    li	$a0,24
    beqz	$v0,.L0da4d08c
    ld	$ra,0($sp)
    # Line 797
    ld	$v1,8($sp)
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 798
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    # Line 799
    ldc1	$f0,16($v1)
    # Line 800
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 799
    sdc1	$f0,16($v0)
.L0da4d08c:
    # Line 800
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos3dv

# Function: __glsplc_RasterPos3f
# Declared: Line 803 (Source lines: 804-812)
# Address: 0x0da4d0a0 - 0x0da4d10c (Size: 108 bytes, Frame: 48)
.globl __glsplc_RasterPos3f
.ent __glsplc_RasterPos3f
__glsplc_RasterPos3f:
    # Line 804
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,16184
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 807
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 804
    sdc1	$f13,8($sp)
    # Line 807
    li	$a1,37
    # Line 804
    sd	$ra,24($sp)
    # Line 807
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4d100
    ld	$ra,24($sp)
    # Line 812
    ld	$gp,32($sp)
    # Line 809
    ldc1	$f0,0($sp)
    # Line 810
    ldc1	$f1,8($sp)
    # Line 811
    ldc1	$f2,16($sp)
    # Line 810
    swc1	$f1,4($v0)
    # Line 811
    swc1	$f2,8($v0)
    # Line 812
    addiu	$sp,$sp,48
    jr	$ra
    # Line 809
    swc1	$f0,0($v0)
.L0da4d100:
    # Line 812
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_RasterPos3f

# Function: __glsplc_RasterPos3fv
# Declared: Line 815 (Source lines: 816-824)
# Address: 0x0da4d110 - 0x0da4d178 (Size: 104 bytes, Frame: 32)
.globl __glsplc_RasterPos3fv
.ent __glsplc_RasterPos3fv
__glsplc_RasterPos3fv:
    # Line 816
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,16072
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 819
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,37
    # Line 816
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 819
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4d16c
    ld	$ra,0($sp)
    # Line 821
    ld	$v1,8($sp)
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 822
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    # Line 823
    lwc1	$f0,8($v1)
    # Line 824
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 823
    swc1	$f0,8($v0)
.L0da4d16c:
    # Line 824
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos3fv

# Function: __glsplc_RasterPos3i
# Declared: Line 827 (Source lines: 828-836)
# Address: 0x0da4d180 - 0x0da4d1ec (Size: 108 bytes, Frame: 48)
.globl __glsplc_RasterPos3i
.ent __glsplc_RasterPos3i
__glsplc_RasterPos3i:
    # Line 828
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,15960
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 831
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 828
    sd	$a1,16($sp)
    # Line 831
    li	$a1,38
    # Line 828
    sd	$a0,8($sp)
    # Line 831
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4d1e0
    ld	$ra,0($sp)
    # Line 836
    ld	$gp,32($sp)
    # Line 833
    ld	$v1,8($sp)
    # Line 834
    ld	$a0,16($sp)
    # Line 835
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 834
    sw	$a0,4($v0)
    # Line 836
    addiu	$sp,$sp,48
    jr	$ra
    # Line 833
    sw	$v1,0($v0)
.L0da4d1e0:
    # Line 836
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_RasterPos3i

# Function: __glsplc_RasterPos3iv
# Declared: Line 839 (Source lines: 840-848)
# Address: 0x0da4d1f0 - 0x0da4d258 (Size: 104 bytes, Frame: 32)
.globl __glsplc_RasterPos3iv
.ent __glsplc_RasterPos3iv
__glsplc_RasterPos3iv:
    # Line 840
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,15848
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 843
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,38
    # Line 840
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 843
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4d24c
    ld	$ra,0($sp)
    # Line 845
    ld	$v1,8($sp)
    # Line 848
    ld	$gp,16($sp)
    # Line 845
    lw	$a1,0($v1)
    sw	$a1,0($v0)
    # Line 846
    lw	$a0,4($v1)
    sw	$a0,4($v0)
    # Line 847
    lw	$v1,8($v1)
    # Line 848
    addiu	$sp,$sp,32
    jr	$ra
    # Line 847
    sw	$v1,8($v0)
.L0da4d24c:
    # Line 848
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos3iv

# Function: __glsplc_RasterPos3s
# Declared: Line 851 (Source lines: 852-860)
# Address: 0x0da4d260 - 0x0da4d2cc (Size: 108 bytes, Frame: 48)
.globl __glsplc_RasterPos3s
.ent __glsplc_RasterPos3s
__glsplc_RasterPos3s:
    # Line 852
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,15736
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 855
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 852
    sd	$a1,16($sp)
    # Line 855
    li	$a1,39
    # Line 852
    sd	$a0,8($sp)
    # Line 855
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4d2c0
    ld	$ra,0($sp)
    # Line 860
    ld	$gp,32($sp)
    # Line 857
    ld	$v1,8($sp)
    # Line 858
    ld	$a0,16($sp)
    # Line 859
    ld	$a1,24($sp)
    sh	$a1,4($v0)
    # Line 858
    sh	$a0,2($v0)
    # Line 860
    addiu	$sp,$sp,48
    jr	$ra
    # Line 857
    sh	$v1,0($v0)
.L0da4d2c0:
    # Line 860
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_RasterPos3s

# Function: __glsplc_RasterPos3sv
# Declared: Line 863 (Source lines: 864-872)
# Address: 0x0da4d2d0 - 0x0da4d338 (Size: 104 bytes, Frame: 32)
.globl __glsplc_RasterPos3sv
.ent __glsplc_RasterPos3sv
__glsplc_RasterPos3sv:
    # Line 864
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,15624
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 867
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,39
    # Line 864
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 867
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4d32c
    ld	$ra,0($sp)
    # Line 869
    ld	$v1,8($sp)
    # Line 872
    ld	$gp,16($sp)
    # Line 869
    lh	$a1,0($v1)
    sh	$a1,0($v0)
    # Line 870
    lh	$a0,2($v1)
    sh	$a0,2($v0)
    # Line 871
    lh	$v1,4($v1)
    # Line 872
    addiu	$sp,$sp,32
    jr	$ra
    # Line 871
    sh	$v1,4($v0)
.L0da4d32c:
    # Line 872
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos3sv

# Function: __glsplc_RasterPos4d
# Declared: Line 875 (Source lines: 876-885)
# Address: 0x0da4d340 - 0x0da4d3b8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_RasterPos4d
.ent __glsplc_RasterPos4d
__glsplc_RasterPos4d:
    # Line 876
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,15512
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 879
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 876
    sdc1	$f13,8($sp)
    # Line 879
    li	$a1,40
    # Line 876
    sd	$ra,32($sp)
    # Line 879
    li	$a0,32
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4d3ac
    ld	$ra,32($sp)
    # Line 885
    ld	$gp,40($sp)
    # Line 881
    ldc1	$f0,0($sp)
    # Line 882
    ldc1	$f1,8($sp)
    # Line 884
    ldc1	$f3,24($sp)
    # Line 883
    ldc1	$f2,16($sp)
    # Line 884
    sdc1	$f3,24($v0)
    # Line 883
    sdc1	$f2,16($v0)
    # Line 882
    sdc1	$f1,8($v0)
    # Line 885
    addiu	$sp,$sp,48
    jr	$ra
    # Line 881
    sdc1	$f0,0($v0)
.L0da4d3ac:
    # Line 885
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_RasterPos4d

# Function: __glsplc_RasterPos4dv
# Declared: Line 888 (Source lines: 889-898)
# Address: 0x0da4d3c0 - 0x0da4d430 (Size: 112 bytes, Frame: 32)
.globl __glsplc_RasterPos4dv
.ent __glsplc_RasterPos4dv
__glsplc_RasterPos4dv:
    # Line 889
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,15384
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 892
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,40
    # Line 889
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 892
    jal	__glSPDlalloc2
    li	$a0,32
    beqz	$v0,.L0da4d424
    ld	$ra,0($sp)
    # Line 894
    ld	$v1,8($sp)
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 895
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 896
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    # Line 897
    ldc1	$f0,24($v1)
    # Line 898
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 897
    sdc1	$f0,24($v0)
.L0da4d424:
    # Line 898
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos4dv

# Function: __glsplc_RasterPos4f
# Declared: Line 901 (Source lines: 902-911)
# Address: 0x0da4d430 - 0x0da4d4a8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_RasterPos4f
.ent __glsplc_RasterPos4f
__glsplc_RasterPos4f:
    # Line 902
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,15272
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 905
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 902
    sdc1	$f13,8($sp)
    # Line 905
    li	$a1,41
    # Line 902
    sd	$ra,32($sp)
    # Line 905
    li	$a0,16
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4d49c
    ld	$ra,32($sp)
    # Line 911
    ld	$gp,40($sp)
    # Line 907
    ldc1	$f0,0($sp)
    # Line 908
    ldc1	$f1,8($sp)
    # Line 910
    ldc1	$f3,24($sp)
    # Line 909
    ldc1	$f2,16($sp)
    # Line 910
    swc1	$f3,12($v0)
    # Line 909
    swc1	$f2,8($v0)
    # Line 908
    swc1	$f1,4($v0)
    # Line 911
    addiu	$sp,$sp,48
    jr	$ra
    # Line 907
    swc1	$f0,0($v0)
.L0da4d49c:
    # Line 911
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_RasterPos4f

# Function: __glsplc_RasterPos4fv
# Declared: Line 914 (Source lines: 915-924)
# Address: 0x0da4d4b0 - 0x0da4d520 (Size: 112 bytes, Frame: 32)
.globl __glsplc_RasterPos4fv
.ent __glsplc_RasterPos4fv
__glsplc_RasterPos4fv:
    # Line 915
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,15144
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 918
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,41
    # Line 915
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 918
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4d514
    ld	$ra,0($sp)
    # Line 920
    ld	$v1,8($sp)
    lwc1	$f3,0($v1)
    swc1	$f3,0($v0)
    # Line 921
    lwc1	$f2,4($v1)
    swc1	$f2,4($v0)
    # Line 922
    lwc1	$f1,8($v1)
    swc1	$f1,8($v0)
    # Line 923
    lwc1	$f0,12($v1)
    # Line 924
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 923
    swc1	$f0,12($v0)
.L0da4d514:
    # Line 924
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos4fv

# Function: __glsplc_RasterPos4i
# Declared: Line 927 (Source lines: 928-937)
# Address: 0x0da4d520 - 0x0da4d598 (Size: 120 bytes, Frame: 48)
.globl __glsplc_RasterPos4i
.ent __glsplc_RasterPos4i
__glsplc_RasterPos4i:
    # Line 928
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,15032
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 931
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 928
    sd	$a1,16($sp)
    # Line 931
    li	$a1,42
    # Line 928
    sd	$a0,8($sp)
    # Line 931
    li	$a0,16
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4d58c
    ld	$ra,0($sp)
    # Line 937
    ld	$gp,40($sp)
    # Line 933
    ld	$v1,8($sp)
    # Line 934
    ld	$a0,16($sp)
    # Line 935
    ld	$a1,24($sp)
    # Line 936
    ld	$a2,32($sp)
    sw	$a2,12($v0)
    # Line 935
    sw	$a1,8($v0)
    # Line 934
    sw	$a0,4($v0)
    # Line 937
    addiu	$sp,$sp,48
    jr	$ra
    # Line 933
    sw	$v1,0($v0)
.L0da4d58c:
    # Line 937
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_RasterPos4i

# Function: __glsplc_RasterPos4iv
# Declared: Line 940 (Source lines: 941-950)
# Address: 0x0da4d5a0 - 0x0da4d610 (Size: 112 bytes, Frame: 32)
.globl __glsplc_RasterPos4iv
.ent __glsplc_RasterPos4iv
__glsplc_RasterPos4iv:
    # Line 941
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,14904
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 944
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,42
    # Line 941
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 944
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4d604
    ld	$ra,0($sp)
    # Line 946
    ld	$v1,8($sp)
    # Line 950
    ld	$gp,16($sp)
    # Line 946
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 947
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    # Line 948
    lw	$a0,8($v1)
    sw	$a0,8($v0)
    # Line 949
    lw	$v1,12($v1)
    # Line 950
    addiu	$sp,$sp,32
    jr	$ra
    # Line 949
    sw	$v1,12($v0)
.L0da4d604:
    # Line 950
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos4iv

# Function: __glsplc_RasterPos4s
# Declared: Line 953 (Source lines: 954-963)
# Address: 0x0da4d610 - 0x0da4d688 (Size: 120 bytes, Frame: 48)
.globl __glsplc_RasterPos4s
.ent __glsplc_RasterPos4s
__glsplc_RasterPos4s:
    # Line 954
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,14792
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 957
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 954
    sd	$a1,16($sp)
    # Line 957
    li	$a1,43
    # Line 954
    sd	$a0,8($sp)
    # Line 957
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4d67c
    ld	$ra,0($sp)
    # Line 963
    ld	$gp,40($sp)
    # Line 959
    ld	$v1,8($sp)
    # Line 960
    ld	$a0,16($sp)
    # Line 961
    ld	$a1,24($sp)
    # Line 962
    ld	$a2,32($sp)
    sh	$a2,6($v0)
    # Line 961
    sh	$a1,4($v0)
    # Line 960
    sh	$a0,2($v0)
    # Line 963
    addiu	$sp,$sp,48
    jr	$ra
    # Line 959
    sh	$v1,0($v0)
.L0da4d67c:
    # Line 963
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_RasterPos4s

# Function: __glsplc_RasterPos4sv
# Declared: Line 966 (Source lines: 967-976)
# Address: 0x0da4d690 - 0x0da4d700 (Size: 112 bytes, Frame: 32)
.globl __glsplc_RasterPos4sv
.ent __glsplc_RasterPos4sv
__glsplc_RasterPos4sv:
    # Line 967
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,14664
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 970
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,43
    # Line 967
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 970
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4d6f4
    ld	$ra,0($sp)
    # Line 972
    ld	$v1,8($sp)
    # Line 976
    ld	$gp,16($sp)
    # Line 972
    lh	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 973
    lh	$a1,2($v1)
    sh	$a1,2($v0)
    # Line 974
    lh	$a0,4($v1)
    sh	$a0,4($v0)
    # Line 975
    lh	$v1,6($v1)
    # Line 976
    addiu	$sp,$sp,32
    jr	$ra
    # Line 975
    sh	$v1,6($v0)
.L0da4d6f4:
    # Line 976
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_RasterPos4sv

# Function: __glsplc_Rectd
# Declared: Line 979 (Source lines: 980-989)
# Address: 0x0da4d700 - 0x0da4d778 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Rectd
.ent __glsplc_Rectd
__glsplc_Rectd:
    # Line 980
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,14552
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 983
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 980
    sdc1	$f13,8($sp)
    # Line 983
    li	$a1,44
    # Line 980
    sd	$ra,32($sp)
    # Line 983
    li	$a0,32
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4d76c
    ld	$ra,32($sp)
    # Line 989
    ld	$gp,40($sp)
    # Line 985
    ldc1	$f0,0($sp)
    # Line 986
    ldc1	$f1,8($sp)
    # Line 988
    ldc1	$f3,24($sp)
    # Line 987
    ldc1	$f2,16($sp)
    # Line 988
    sdc1	$f3,24($v0)
    # Line 987
    sdc1	$f2,16($v0)
    # Line 986
    sdc1	$f1,8($v0)
    # Line 989
    addiu	$sp,$sp,48
    jr	$ra
    # Line 985
    sdc1	$f0,0($v0)
.L0da4d76c:
    # Line 989
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Rectd

# Function: __glsplc_Rectdv
# Declared: Line 992 (Source lines: 993-1002)
# Address: 0x0da4d780 - 0x0da4d7f8 (Size: 120 bytes, Frame: 32)
.globl __glsplc_Rectdv
.ent __glsplc_Rectdv
__glsplc_Rectdv:
    # Line 993
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,14424
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 996
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 993
    sd	$a1,16($sp)
    # Line 996
    li	$a1,44
    # Line 993
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 996
    jal	__glSPDlalloc2
    li	$a0,32
    beqz	$v0,.L0da4d7ec
    ld	$ra,0($sp)
    # Line 998
    ld	$a0,8($sp)
    ldc1	$f3,0($a0)
    sdc1	$f3,0($v0)
    # Line 999
    ldc1	$f2,8($a0)
    # Line 1000
    ld	$v1,16($sp)
    # Line 999
    sdc1	$f2,8($v0)
    # Line 1000
    ldc1	$f1,0($v1)
    sdc1	$f1,16($v0)
    # Line 1001
    ldc1	$f0,8($v1)
    # Line 1002
    ld	$gp,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1001
    sdc1	$f0,24($v0)
.L0da4d7ec:
    # Line 1002
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Rectdv

# Function: __glsplc_Rectf
# Declared: Line 1005 (Source lines: 1006-1015)
# Address: 0x0da4d800 - 0x0da4d878 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Rectf
.ent __glsplc_Rectf
__glsplc_Rectf:
    # Line 1006
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,14296
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1009
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1006
    sdc1	$f13,8($sp)
    # Line 1009
    li	$a1,45
    # Line 1006
    sd	$ra,32($sp)
    # Line 1009
    li	$a0,16
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4d86c
    ld	$ra,32($sp)
    # Line 1015
    ld	$gp,40($sp)
    # Line 1011
    ldc1	$f0,0($sp)
    # Line 1012
    ldc1	$f1,8($sp)
    # Line 1014
    ldc1	$f3,24($sp)
    # Line 1013
    ldc1	$f2,16($sp)
    # Line 1014
    swc1	$f3,12($v0)
    # Line 1013
    swc1	$f2,8($v0)
    # Line 1012
    swc1	$f1,4($v0)
    # Line 1015
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1011
    swc1	$f0,0($v0)
.L0da4d86c:
    # Line 1015
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Rectf

# Function: __glsplc_Rectfv
# Declared: Line 1018 (Source lines: 1019-1028)
# Address: 0x0da4d880 - 0x0da4d8f8 (Size: 120 bytes, Frame: 32)
.globl __glsplc_Rectfv
.ent __glsplc_Rectfv
__glsplc_Rectfv:
    # Line 1019
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,14168
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1022
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1019
    sd	$a1,16($sp)
    # Line 1022
    li	$a1,45
    # Line 1019
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1022
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4d8ec
    ld	$ra,0($sp)
    # Line 1024
    ld	$a0,8($sp)
    lwc1	$f3,0($a0)
    swc1	$f3,0($v0)
    # Line 1025
    lwc1	$f2,4($a0)
    # Line 1026
    ld	$v1,16($sp)
    # Line 1025
    swc1	$f2,4($v0)
    # Line 1026
    lwc1	$f1,0($v1)
    swc1	$f1,8($v0)
    # Line 1027
    lwc1	$f0,4($v1)
    # Line 1028
    ld	$gp,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1027
    swc1	$f0,12($v0)
.L0da4d8ec:
    # Line 1028
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Rectfv

# Function: __glsplc_Recti
# Declared: Line 1031 (Source lines: 1032-1041)
# Address: 0x0da4d900 - 0x0da4d978 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Recti
.ent __glsplc_Recti
__glsplc_Recti:
    # Line 1032
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,14040
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1035
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1032
    sd	$a1,16($sp)
    # Line 1035
    li	$a1,46
    # Line 1032
    sd	$a0,8($sp)
    # Line 1035
    li	$a0,16
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4d96c
    ld	$ra,0($sp)
    # Line 1041
    ld	$gp,40($sp)
    # Line 1037
    ld	$v1,8($sp)
    # Line 1038
    ld	$a0,16($sp)
    # Line 1039
    ld	$a1,24($sp)
    # Line 1040
    ld	$a2,32($sp)
    sw	$a2,12($v0)
    # Line 1039
    sw	$a1,8($v0)
    # Line 1038
    sw	$a0,4($v0)
    # Line 1041
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1037
    sw	$v1,0($v0)
.L0da4d96c:
    # Line 1041
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Recti

# Function: __glsplc_Rectiv
# Declared: Line 1044 (Source lines: 1045-1054)
# Address: 0x0da4d980 - 0x0da4d9f8 (Size: 120 bytes, Frame: 32)
.globl __glsplc_Rectiv
.ent __glsplc_Rectiv
__glsplc_Rectiv:
    # Line 1045
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,13912
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1048
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1045
    sd	$a1,16($sp)
    # Line 1048
    li	$a1,46
    # Line 1045
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1048
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4d9ec
    ld	$ra,0($sp)
    # Line 1054
    ld	$gp,24($sp)
    # Line 1050
    ld	$a1,8($sp)
    # Line 1052
    ld	$v1,16($sp)
    # Line 1050
    lw	$a2,0($a1)
    sw	$a2,0($v0)
    # Line 1051
    lw	$a1,4($a1)
    sw	$a1,4($v0)
    # Line 1052
    lw	$a0,0($v1)
    sw	$a0,8($v0)
    # Line 1053
    lw	$v1,4($v1)
    # Line 1054
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1053
    sw	$v1,12($v0)
.L0da4d9ec:
    # Line 1054
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Rectiv

# Function: __glsplc_Rects
# Declared: Line 1057 (Source lines: 1058-1067)
# Address: 0x0da4da00 - 0x0da4da78 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Rects
.ent __glsplc_Rects
__glsplc_Rects:
    # Line 1058
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,13784
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1061
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1058
    sd	$a1,16($sp)
    # Line 1061
    li	$a1,47
    # Line 1058
    sd	$a0,8($sp)
    # Line 1061
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4da6c
    ld	$ra,0($sp)
    # Line 1067
    ld	$gp,40($sp)
    # Line 1063
    ld	$v1,8($sp)
    # Line 1064
    ld	$a0,16($sp)
    # Line 1065
    ld	$a1,24($sp)
    # Line 1066
    ld	$a2,32($sp)
    sh	$a2,6($v0)
    # Line 1065
    sh	$a1,4($v0)
    # Line 1064
    sh	$a0,2($v0)
    # Line 1067
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1063
    sh	$v1,0($v0)
.L0da4da6c:
    # Line 1067
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Rects

# Function: __glsplc_Rectsv
# Declared: Line 1070 (Source lines: 1071-1080)
# Address: 0x0da4da80 - 0x0da4daf8 (Size: 120 bytes, Frame: 32)
.globl __glsplc_Rectsv
.ent __glsplc_Rectsv
__glsplc_Rectsv:
    # Line 1071
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,13656
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1074
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1071
    sd	$a1,16($sp)
    # Line 1074
    li	$a1,47
    # Line 1071
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1074
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4daec
    ld	$ra,0($sp)
    # Line 1080
    ld	$gp,24($sp)
    # Line 1076
    ld	$a1,8($sp)
    # Line 1078
    ld	$v1,16($sp)
    # Line 1076
    lh	$a2,0($a1)
    sh	$a2,0($v0)
    # Line 1077
    lh	$a1,2($a1)
    sh	$a1,2($v0)
    # Line 1078
    lh	$a0,0($v1)
    sh	$a0,4($v0)
    # Line 1079
    lh	$v1,2($v1)
    # Line 1080
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1079
    sh	$v1,6($v0)
.L0da4daec:
    # Line 1080
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Rectsv

# Function: __glsplc_TexCoord1d
# Declared: Line 1083 (Source lines: 1084-1090)
# Address: 0x0da4db00 - 0x0da4db54 (Size: 84 bytes, Frame: 32)
.globl __glsplc_TexCoord1d
.ent __glsplc_TexCoord1d
__glsplc_TexCoord1d:
    # Line 1084
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,13528
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1087
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,48
    # Line 1084
    sd	$ra,8($sp)
    # Line 1087
    li	$a0,8
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4db48
    ld	$ra,8($sp)
    # Line 1089
    ldc1	$f0,0($sp)
    # Line 1090
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1089
    sdc1	$f0,0($v0)
.L0da4db48:
    # Line 1090
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord1d

# Function: __glsplc_TexCoord1dv
# Declared: Line 1093 (Source lines: 1094-1100)
# Address: 0x0da4db60 - 0x0da4dbb8 (Size: 88 bytes, Frame: 32)
.globl __glsplc_TexCoord1dv
.ent __glsplc_TexCoord1dv
__glsplc_TexCoord1dv:
    # Line 1094
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,13432
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1097
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,48
    # Line 1094
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1097
    jal	__glSPDlalloc2
    li	$a0,8
    beqz	$v0,.L0da4dbac
    ld	$ra,0($sp)
    # Line 1099
    ld	$v1,8($sp)
    ldc1	$f0,0($v1)
    # Line 1100
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1099
    sdc1	$f0,0($v0)
.L0da4dbac:
    # Line 1100
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord1dv

# Function: __glsplc_TexCoord1f
# Declared: Line 1103 (Source lines: 1104-1110)
# Address: 0x0da4dbc0 - 0x0da4dc14 (Size: 84 bytes, Frame: 32)
.globl __glsplc_TexCoord1f
.ent __glsplc_TexCoord1f
__glsplc_TexCoord1f:
    # Line 1104
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,13336
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1107
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,49
    # Line 1104
    sd	$ra,8($sp)
    # Line 1107
    li	$a0,4
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4dc08
    ld	$ra,8($sp)
    # Line 1109
    ldc1	$f0,0($sp)
    # Line 1110
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1109
    swc1	$f0,0($v0)
.L0da4dc08:
    # Line 1110
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord1f

# Function: __glsplc_TexCoord1fv
# Declared: Line 1113 (Source lines: 1114-1120)
# Address: 0x0da4dc20 - 0x0da4dc78 (Size: 88 bytes, Frame: 32)
.globl __glsplc_TexCoord1fv
.ent __glsplc_TexCoord1fv
__glsplc_TexCoord1fv:
    # Line 1114
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,13240
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1117
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,49
    # Line 1114
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1117
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4dc6c
    ld	$ra,0($sp)
    # Line 1119
    ld	$v1,8($sp)
    lwc1	$f0,0($v1)
    # Line 1120
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1119
    swc1	$f0,0($v0)
.L0da4dc6c:
    # Line 1120
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord1fv

# Function: __glsplc_TexCoord1i
# Declared: Line 1123 (Source lines: 1124-1130)
# Address: 0x0da4dc80 - 0x0da4dcd4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_TexCoord1i
.ent __glsplc_TexCoord1i
__glsplc_TexCoord1i:
    # Line 1124
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,13144
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1127
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,50
    # Line 1124
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1127
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4dcc8
    ld	$ra,0($sp)
    # Line 1130
    ld	$gp,16($sp)
    # Line 1129
    ld	$v1,8($sp)
    # Line 1130
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1129
    sw	$v1,0($v0)
.L0da4dcc8:
    # Line 1130
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord1i

# Function: __glsplc_TexCoord1iv
# Declared: Line 1133 (Source lines: 1134-1140)
# Address: 0x0da4dce0 - 0x0da4dd38 (Size: 88 bytes, Frame: 32)
.globl __glsplc_TexCoord1iv
.ent __glsplc_TexCoord1iv
__glsplc_TexCoord1iv:
    # Line 1134
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,13048
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1137
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,50
    # Line 1134
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1137
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4dd2c
    ld	$ra,0($sp)
    # Line 1139
    ld	$v1,8($sp)
    # Line 1140
    ld	$gp,16($sp)
    # Line 1139
    lw	$v1,0($v1)
    # Line 1140
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1139
    sw	$v1,0($v0)
.L0da4dd2c:
    # Line 1140
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord1iv

# Function: __glsplc_TexCoord1s
# Declared: Line 1143 (Source lines: 1144-1150)
# Address: 0x0da4dd40 - 0x0da4dd94 (Size: 84 bytes, Frame: 32)
.globl __glsplc_TexCoord1s
.ent __glsplc_TexCoord1s
__glsplc_TexCoord1s:
    # Line 1144
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12952
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1147
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,51
    # Line 1144
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1147
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4dd88
    ld	$ra,0($sp)
    # Line 1150
    ld	$gp,16($sp)
    # Line 1149
    ld	$v1,8($sp)
    # Line 1150
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1149
    sh	$v1,0($v0)
.L0da4dd88:
    # Line 1150
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord1s

# Function: __glsplc_TexCoord1sv
# Declared: Line 1153 (Source lines: 1154-1160)
# Address: 0x0da4dda0 - 0x0da4ddf8 (Size: 88 bytes, Frame: 32)
.globl __glsplc_TexCoord1sv
.ent __glsplc_TexCoord1sv
__glsplc_TexCoord1sv:
    # Line 1154
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12856
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1157
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,51
    # Line 1154
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1157
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4ddec
    ld	$ra,0($sp)
    # Line 1159
    ld	$v1,8($sp)
    # Line 1160
    ld	$gp,16($sp)
    # Line 1159
    lh	$v1,0($v1)
    # Line 1160
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1159
    sh	$v1,0($v0)
.L0da4ddec:
    # Line 1160
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord1sv

# Function: __glsplc_TexCoord2d
# Declared: Line 1163 (Source lines: 1164-1171)
# Address: 0x0da4de00 - 0x0da4de60 (Size: 96 bytes, Frame: 32)
.globl __glsplc_TexCoord2d
.ent __glsplc_TexCoord2d
__glsplc_TexCoord2d:
    # Line 1164
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12760
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1167
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 1164
    sdc1	$f13,8($sp)
    # Line 1167
    li	$a1,52
    # Line 1164
    sd	$ra,16($sp)
    # Line 1167
    li	$a0,16
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4de54
    ld	$ra,16($sp)
    # Line 1171
    ld	$gp,24($sp)
    # Line 1169
    ldc1	$f0,0($sp)
    # Line 1170
    ldc1	$f1,8($sp)
    # Line 1169
    sdc1	$f0,0($v0)
    # Line 1171
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1170
    sdc1	$f1,8($v0)
.L0da4de54:
    # Line 1171
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord2d

# Function: __glsplc_TexCoord2dv
# Declared: Line 1174 (Source lines: 1175-1182)
# Address: 0x0da4de60 - 0x0da4dec0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_TexCoord2dv
.ent __glsplc_TexCoord2dv
__glsplc_TexCoord2dv:
    # Line 1175
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12664
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1178
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,52
    # Line 1175
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1178
    jal	__glSPDlalloc2
    li	$a0,16
    beqz	$v0,.L0da4deb4
    ld	$ra,0($sp)
    # Line 1180
    ld	$v1,8($sp)
    ldc1	$f1,0($v1)
    sdc1	$f1,0($v0)
    # Line 1181
    ldc1	$f0,8($v1)
    # Line 1182
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1181
    sdc1	$f0,8($v0)
.L0da4deb4:
    # Line 1182
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord2dv

# Function: __glsplc_TexCoord2f
# Declared: Line 1185 (Source lines: 1186-1193)
# Address: 0x0da4dec0 - 0x0da4df20 (Size: 96 bytes, Frame: 32)
.globl __glsplc_TexCoord2f
.ent __glsplc_TexCoord2f
__glsplc_TexCoord2f:
    # Line 1186
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12568
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1189
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1186
    sdc1	$f13,8($sp)
    # Line 1189
    li	$a1,53
    # Line 1186
    sd	$ra,16($sp)
    # Line 1189
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4df14
    ld	$ra,16($sp)
    # Line 1193
    ld	$gp,24($sp)
    # Line 1191
    ldc1	$f0,0($sp)
    # Line 1192
    ldc1	$f1,8($sp)
    # Line 1191
    swc1	$f0,0($v0)
    # Line 1193
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1192
    swc1	$f1,4($v0)
.L0da4df14:
    # Line 1193
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord2f

# Function: __glsplc_TexCoord2fv
# Declared: Line 1196 (Source lines: 1197-1204)
# Address: 0x0da4df20 - 0x0da4df80 (Size: 96 bytes, Frame: 32)
.globl __glsplc_TexCoord2fv
.ent __glsplc_TexCoord2fv
__glsplc_TexCoord2fv:
    # Line 1197
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12472
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1200
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,53
    # Line 1197
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1200
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4df74
    ld	$ra,0($sp)
    # Line 1202
    ld	$v1,8($sp)
    lwc1	$f1,0($v1)
    swc1	$f1,0($v0)
    # Line 1203
    lwc1	$f0,4($v1)
    # Line 1204
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1203
    swc1	$f0,4($v0)
.L0da4df74:
    # Line 1204
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord2fv

# Function: __glsplc_TexCoord2i
# Declared: Line 1207 (Source lines: 1208-1215)
# Address: 0x0da4df80 - 0x0da4dfe0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_TexCoord2i
.ent __glsplc_TexCoord2i
__glsplc_TexCoord2i:
    # Line 1208
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12376
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1211
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1208
    sd	$a1,16($sp)
    # Line 1211
    li	$a1,54
    # Line 1208
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1211
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4dfd4
    ld	$ra,0($sp)
    # Line 1215
    ld	$gp,24($sp)
    # Line 1213
    ld	$v1,8($sp)
    # Line 1214
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 1215
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1213
    sw	$v1,0($v0)
.L0da4dfd4:
    # Line 1215
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord2i

# Function: __glsplc_TexCoord2iv
# Declared: Line 1218 (Source lines: 1219-1226)
# Address: 0x0da4dfe0 - 0x0da4e040 (Size: 96 bytes, Frame: 32)
.globl __glsplc_TexCoord2iv
.ent __glsplc_TexCoord2iv
__glsplc_TexCoord2iv:
    # Line 1219
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12280
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1222
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,54
    # Line 1219
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1222
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4e034
    ld	$ra,0($sp)
    # Line 1224
    ld	$v1,8($sp)
    # Line 1226
    ld	$gp,16($sp)
    # Line 1224
    lw	$a0,0($v1)
    sw	$a0,0($v0)
    # Line 1225
    lw	$v1,4($v1)
    # Line 1226
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1225
    sw	$v1,4($v0)
.L0da4e034:
    # Line 1226
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord2iv

# Function: __glsplc_TexCoord2s
# Declared: Line 1229 (Source lines: 1230-1237)
# Address: 0x0da4e040 - 0x0da4e0a0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_TexCoord2s
.ent __glsplc_TexCoord2s
__glsplc_TexCoord2s:
    # Line 1230
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12184
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1233
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1230
    sd	$a1,16($sp)
    # Line 1233
    li	$a1,55
    # Line 1230
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1233
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4e094
    ld	$ra,0($sp)
    # Line 1237
    ld	$gp,24($sp)
    # Line 1235
    ld	$v1,8($sp)
    # Line 1236
    ld	$a0,16($sp)
    sh	$a0,2($v0)
    # Line 1237
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1235
    sh	$v1,0($v0)
.L0da4e094:
    # Line 1237
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord2s

# Function: __glsplc_TexCoord2sv
# Declared: Line 1240 (Source lines: 1241-1248)
# Address: 0x0da4e0a0 - 0x0da4e100 (Size: 96 bytes, Frame: 32)
.globl __glsplc_TexCoord2sv
.ent __glsplc_TexCoord2sv
__glsplc_TexCoord2sv:
    # Line 1241
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,12088
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1244
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,55
    # Line 1241
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1244
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4e0f4
    ld	$ra,0($sp)
    # Line 1246
    ld	$v1,8($sp)
    # Line 1248
    ld	$gp,16($sp)
    # Line 1246
    lh	$a0,0($v1)
    sh	$a0,0($v0)
    # Line 1247
    lh	$v1,2($v1)
    # Line 1248
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1247
    sh	$v1,2($v0)
.L0da4e0f4:
    # Line 1248
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord2sv

# Function: __glsplc_TexCoord3d
# Declared: Line 1251 (Source lines: 1252-1260)
# Address: 0x0da4e100 - 0x0da4e16c (Size: 108 bytes, Frame: 48)
.globl __glsplc_TexCoord3d
.ent __glsplc_TexCoord3d
__glsplc_TexCoord3d:
    # Line 1252
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,11992
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1255
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 1252
    sdc1	$f13,8($sp)
    # Line 1255
    li	$a1,56
    # Line 1252
    sd	$ra,24($sp)
    # Line 1255
    li	$a0,24
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4e160
    ld	$ra,24($sp)
    # Line 1260
    ld	$gp,32($sp)
    # Line 1257
    ldc1	$f0,0($sp)
    # Line 1258
    ldc1	$f1,8($sp)
    # Line 1259
    ldc1	$f2,16($sp)
    # Line 1258
    sdc1	$f1,8($v0)
    # Line 1259
    sdc1	$f2,16($v0)
    # Line 1260
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1257
    sdc1	$f0,0($v0)
.L0da4e160:
    # Line 1260
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_TexCoord3d

# Function: __glsplc_TexCoord3dv
# Declared: Line 1263 (Source lines: 1264-1272)
# Address: 0x0da4e170 - 0x0da4e1d8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_TexCoord3dv
.ent __glsplc_TexCoord3dv
__glsplc_TexCoord3dv:
    # Line 1264
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,11880
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1267
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,56
    # Line 1264
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1267
    jal	__glSPDlalloc2
    li	$a0,24
    beqz	$v0,.L0da4e1cc
    ld	$ra,0($sp)
    # Line 1269
    ld	$v1,8($sp)
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 1270
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    # Line 1271
    ldc1	$f0,16($v1)
    # Line 1272
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1271
    sdc1	$f0,16($v0)
.L0da4e1cc:
    # Line 1272
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord3dv

# Function: __glsplc_TexCoord3f
# Declared: Line 1275 (Source lines: 1276-1284)
# Address: 0x0da4e1e0 - 0x0da4e24c (Size: 108 bytes, Frame: 48)
.globl __glsplc_TexCoord3f
.ent __glsplc_TexCoord3f
__glsplc_TexCoord3f:
    # Line 1276
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,11768
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1279
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1276
    sdc1	$f13,8($sp)
    # Line 1279
    li	$a1,57
    # Line 1276
    sd	$ra,24($sp)
    # Line 1279
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4e240
    ld	$ra,24($sp)
    # Line 1284
    ld	$gp,32($sp)
    # Line 1281
    ldc1	$f0,0($sp)
    # Line 1282
    ldc1	$f1,8($sp)
    # Line 1283
    ldc1	$f2,16($sp)
    # Line 1282
    swc1	$f1,4($v0)
    # Line 1283
    swc1	$f2,8($v0)
    # Line 1284
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1281
    swc1	$f0,0($v0)
.L0da4e240:
    # Line 1284
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_TexCoord3f

# Function: __glsplc_TexCoord3fv
# Declared: Line 1287 (Source lines: 1288-1296)
# Address: 0x0da4e250 - 0x0da4e2b8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_TexCoord3fv
.ent __glsplc_TexCoord3fv
__glsplc_TexCoord3fv:
    # Line 1288
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,11656
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1291
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,57
    # Line 1288
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1291
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4e2ac
    ld	$ra,0($sp)
    # Line 1293
    ld	$v1,8($sp)
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 1294
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    # Line 1295
    lwc1	$f0,8($v1)
    # Line 1296
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1295
    swc1	$f0,8($v0)
.L0da4e2ac:
    # Line 1296
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord3fv

# Function: __glsplc_TexCoord3i
# Declared: Line 1299 (Source lines: 1300-1308)
# Address: 0x0da4e2c0 - 0x0da4e32c (Size: 108 bytes, Frame: 48)
.globl __glsplc_TexCoord3i
.ent __glsplc_TexCoord3i
__glsplc_TexCoord3i:
    # Line 1300
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,11544
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1303
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1300
    sd	$a1,16($sp)
    # Line 1303
    li	$a1,58
    # Line 1300
    sd	$a0,8($sp)
    # Line 1303
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4e320
    ld	$ra,0($sp)
    # Line 1308
    ld	$gp,32($sp)
    # Line 1305
    ld	$v1,8($sp)
    # Line 1306
    ld	$a0,16($sp)
    # Line 1307
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 1306
    sw	$a0,4($v0)
    # Line 1308
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1305
    sw	$v1,0($v0)
.L0da4e320:
    # Line 1308
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_TexCoord3i

# Function: __glsplc_TexCoord3iv
# Declared: Line 1311 (Source lines: 1312-1320)
# Address: 0x0da4e330 - 0x0da4e398 (Size: 104 bytes, Frame: 32)
.globl __glsplc_TexCoord3iv
.ent __glsplc_TexCoord3iv
__glsplc_TexCoord3iv:
    # Line 1312
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,11432
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1315
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,58
    # Line 1312
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1315
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4e38c
    ld	$ra,0($sp)
    # Line 1317
    ld	$v1,8($sp)
    # Line 1320
    ld	$gp,16($sp)
    # Line 1317
    lw	$a1,0($v1)
    sw	$a1,0($v0)
    # Line 1318
    lw	$a0,4($v1)
    sw	$a0,4($v0)
    # Line 1319
    lw	$v1,8($v1)
    # Line 1320
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1319
    sw	$v1,8($v0)
.L0da4e38c:
    # Line 1320
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord3iv

# Function: __glsplc_TexCoord3s
# Declared: Line 1323 (Source lines: 1324-1332)
# Address: 0x0da4e3a0 - 0x0da4e40c (Size: 108 bytes, Frame: 48)
.globl __glsplc_TexCoord3s
.ent __glsplc_TexCoord3s
__glsplc_TexCoord3s:
    # Line 1324
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,11320
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1327
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1324
    sd	$a1,16($sp)
    # Line 1327
    li	$a1,59
    # Line 1324
    sd	$a0,8($sp)
    # Line 1327
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4e400
    ld	$ra,0($sp)
    # Line 1332
    ld	$gp,32($sp)
    # Line 1329
    ld	$v1,8($sp)
    # Line 1330
    ld	$a0,16($sp)
    # Line 1331
    ld	$a1,24($sp)
    sh	$a1,4($v0)
    # Line 1330
    sh	$a0,2($v0)
    # Line 1332
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1329
    sh	$v1,0($v0)
.L0da4e400:
    # Line 1332
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_TexCoord3s

# Function: __glsplc_TexCoord3sv
# Declared: Line 1335 (Source lines: 1336-1344)
# Address: 0x0da4e410 - 0x0da4e478 (Size: 104 bytes, Frame: 32)
.globl __glsplc_TexCoord3sv
.ent __glsplc_TexCoord3sv
__glsplc_TexCoord3sv:
    # Line 1336
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,11208
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1339
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,59
    # Line 1336
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1339
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4e46c
    ld	$ra,0($sp)
    # Line 1341
    ld	$v1,8($sp)
    # Line 1344
    ld	$gp,16($sp)
    # Line 1341
    lh	$a1,0($v1)
    sh	$a1,0($v0)
    # Line 1342
    lh	$a0,2($v1)
    sh	$a0,2($v0)
    # Line 1343
    lh	$v1,4($v1)
    # Line 1344
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1343
    sh	$v1,4($v0)
.L0da4e46c:
    # Line 1344
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord3sv

# Function: __glsplc_TexCoord4d
# Declared: Line 1347 (Source lines: 1348-1357)
# Address: 0x0da4e480 - 0x0da4e4f8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_TexCoord4d
.ent __glsplc_TexCoord4d
__glsplc_TexCoord4d:
    # Line 1348
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,11096
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1351
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 1348
    sdc1	$f13,8($sp)
    # Line 1351
    li	$a1,60
    # Line 1348
    sd	$ra,32($sp)
    # Line 1351
    li	$a0,32
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4e4ec
    ld	$ra,32($sp)
    # Line 1357
    ld	$gp,40($sp)
    # Line 1353
    ldc1	$f0,0($sp)
    # Line 1354
    ldc1	$f1,8($sp)
    # Line 1356
    ldc1	$f3,24($sp)
    # Line 1355
    ldc1	$f2,16($sp)
    # Line 1356
    sdc1	$f3,24($v0)
    # Line 1355
    sdc1	$f2,16($v0)
    # Line 1354
    sdc1	$f1,8($v0)
    # Line 1357
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1353
    sdc1	$f0,0($v0)
.L0da4e4ec:
    # Line 1357
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_TexCoord4d

# Function: __glsplc_TexCoord4dv
# Declared: Line 1360 (Source lines: 1361-1370)
# Address: 0x0da4e500 - 0x0da4e570 (Size: 112 bytes, Frame: 32)
.globl __glsplc_TexCoord4dv
.ent __glsplc_TexCoord4dv
__glsplc_TexCoord4dv:
    # Line 1361
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,10968
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1364
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,60
    # Line 1361
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1364
    jal	__glSPDlalloc2
    li	$a0,32
    beqz	$v0,.L0da4e564
    ld	$ra,0($sp)
    # Line 1366
    ld	$v1,8($sp)
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 1367
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 1368
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    # Line 1369
    ldc1	$f0,24($v1)
    # Line 1370
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1369
    sdc1	$f0,24($v0)
.L0da4e564:
    # Line 1370
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord4dv

# Function: __glsplc_TexCoord4f
# Declared: Line 1373 (Source lines: 1374-1383)
# Address: 0x0da4e570 - 0x0da4e5e8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_TexCoord4f
.ent __glsplc_TexCoord4f
__glsplc_TexCoord4f:
    # Line 1374
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,10856
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1377
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1374
    sdc1	$f13,8($sp)
    # Line 1377
    li	$a1,61
    # Line 1374
    sd	$ra,32($sp)
    # Line 1377
    li	$a0,16
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4e5dc
    ld	$ra,32($sp)
    # Line 1383
    ld	$gp,40($sp)
    # Line 1379
    ldc1	$f0,0($sp)
    # Line 1380
    ldc1	$f1,8($sp)
    # Line 1382
    ldc1	$f3,24($sp)
    # Line 1381
    ldc1	$f2,16($sp)
    # Line 1382
    swc1	$f3,12($v0)
    # Line 1381
    swc1	$f2,8($v0)
    # Line 1380
    swc1	$f1,4($v0)
    # Line 1383
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1379
    swc1	$f0,0($v0)
.L0da4e5dc:
    # Line 1383
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_TexCoord4f

# Function: __glsplc_TexCoord4fv
# Declared: Line 1386 (Source lines: 1387-1396)
# Address: 0x0da4e5f0 - 0x0da4e660 (Size: 112 bytes, Frame: 32)
.globl __glsplc_TexCoord4fv
.ent __glsplc_TexCoord4fv
__glsplc_TexCoord4fv:
    # Line 1387
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,10728
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1390
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,61
    # Line 1387
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1390
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4e654
    ld	$ra,0($sp)
    # Line 1392
    ld	$v1,8($sp)
    lwc1	$f3,0($v1)
    swc1	$f3,0($v0)
    # Line 1393
    lwc1	$f2,4($v1)
    swc1	$f2,4($v0)
    # Line 1394
    lwc1	$f1,8($v1)
    swc1	$f1,8($v0)
    # Line 1395
    lwc1	$f0,12($v1)
    # Line 1396
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1395
    swc1	$f0,12($v0)
.L0da4e654:
    # Line 1396
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord4fv

# Function: __glsplc_TexCoord4i
# Declared: Line 1399 (Source lines: 1400-1409)
# Address: 0x0da4e660 - 0x0da4e6d8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_TexCoord4i
.ent __glsplc_TexCoord4i
__glsplc_TexCoord4i:
    # Line 1400
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,10616
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1403
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1400
    sd	$a1,16($sp)
    # Line 1403
    li	$a1,62
    # Line 1400
    sd	$a0,8($sp)
    # Line 1403
    li	$a0,16
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4e6cc
    ld	$ra,0($sp)
    # Line 1409
    ld	$gp,40($sp)
    # Line 1405
    ld	$v1,8($sp)
    # Line 1406
    ld	$a0,16($sp)
    # Line 1407
    ld	$a1,24($sp)
    # Line 1408
    ld	$a2,32($sp)
    sw	$a2,12($v0)
    # Line 1407
    sw	$a1,8($v0)
    # Line 1406
    sw	$a0,4($v0)
    # Line 1409
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1405
    sw	$v1,0($v0)
.L0da4e6cc:
    # Line 1409
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_TexCoord4i

# Function: __glsplc_TexCoord4iv
# Declared: Line 1412 (Source lines: 1413-1422)
# Address: 0x0da4e6e0 - 0x0da4e750 (Size: 112 bytes, Frame: 32)
.globl __glsplc_TexCoord4iv
.ent __glsplc_TexCoord4iv
__glsplc_TexCoord4iv:
    # Line 1413
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,10488
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1416
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,62
    # Line 1413
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1416
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4e744
    ld	$ra,0($sp)
    # Line 1418
    ld	$v1,8($sp)
    # Line 1422
    ld	$gp,16($sp)
    # Line 1418
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 1419
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    # Line 1420
    lw	$a0,8($v1)
    sw	$a0,8($v0)
    # Line 1421
    lw	$v1,12($v1)
    # Line 1422
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1421
    sw	$v1,12($v0)
.L0da4e744:
    # Line 1422
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord4iv

# Function: __glsplc_TexCoord4s
# Declared: Line 1425 (Source lines: 1426-1435)
# Address: 0x0da4e750 - 0x0da4e7c8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_TexCoord4s
.ent __glsplc_TexCoord4s
__glsplc_TexCoord4s:
    # Line 1426
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,10376
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1429
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1426
    sd	$a1,16($sp)
    # Line 1429
    li	$a1,63
    # Line 1426
    sd	$a0,8($sp)
    # Line 1429
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4e7bc
    ld	$ra,0($sp)
    # Line 1435
    ld	$gp,40($sp)
    # Line 1431
    ld	$v1,8($sp)
    # Line 1432
    ld	$a0,16($sp)
    # Line 1433
    ld	$a1,24($sp)
    # Line 1434
    ld	$a2,32($sp)
    sh	$a2,6($v0)
    # Line 1433
    sh	$a1,4($v0)
    # Line 1432
    sh	$a0,2($v0)
    # Line 1435
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1431
    sh	$v1,0($v0)
.L0da4e7bc:
    # Line 1435
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_TexCoord4s

# Function: __glsplc_TexCoord4sv
# Declared: Line 1438 (Source lines: 1439-1448)
# Address: 0x0da4e7d0 - 0x0da4e840 (Size: 112 bytes, Frame: 32)
.globl __glsplc_TexCoord4sv
.ent __glsplc_TexCoord4sv
__glsplc_TexCoord4sv:
    # Line 1439
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,10248
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1442
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,63
    # Line 1439
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1442
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4e834
    ld	$ra,0($sp)
    # Line 1444
    ld	$v1,8($sp)
    # Line 1448
    ld	$gp,16($sp)
    # Line 1444
    lh	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 1445
    lh	$a1,2($v1)
    sh	$a1,2($v0)
    # Line 1446
    lh	$a0,4($v1)
    sh	$a0,4($v0)
    # Line 1447
    lh	$v1,6($v1)
    # Line 1448
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1447
    sh	$v1,6($v0)
.L0da4e834:
    # Line 1448
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_TexCoord4sv

# Function: __glsplc_Vertex2d
# Declared: Line 1451 (Source lines: 1452-1459)
# Address: 0x0da4e840 - 0x0da4e8a0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Vertex2d
.ent __glsplc_Vertex2d
__glsplc_Vertex2d:
    # Line 1452
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,10136
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1455
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 1452
    sdc1	$f13,8($sp)
    # Line 1455
    li	$a1,64
    # Line 1452
    sd	$ra,16($sp)
    # Line 1455
    li	$a0,16
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4e894
    ld	$ra,16($sp)
    # Line 1459
    ld	$gp,24($sp)
    # Line 1457
    ldc1	$f0,0($sp)
    # Line 1458
    ldc1	$f1,8($sp)
    # Line 1457
    sdc1	$f0,0($v0)
    # Line 1459
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1458
    sdc1	$f1,8($v0)
.L0da4e894:
    # Line 1459
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex2d

# Function: __glsplc_Vertex2dv
# Declared: Line 1462 (Source lines: 1463-1470)
# Address: 0x0da4e8a0 - 0x0da4e900 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Vertex2dv
.ent __glsplc_Vertex2dv
__glsplc_Vertex2dv:
    # Line 1463
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,10040
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1466
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,64
    # Line 1463
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1466
    jal	__glSPDlalloc2
    li	$a0,16
    beqz	$v0,.L0da4e8f4
    ld	$ra,0($sp)
    # Line 1468
    ld	$v1,8($sp)
    ldc1	$f1,0($v1)
    sdc1	$f1,0($v0)
    # Line 1469
    ldc1	$f0,8($v1)
    # Line 1470
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1469
    sdc1	$f0,8($v0)
.L0da4e8f4:
    # Line 1470
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex2dv

# Function: __glsplc_Vertex2f
# Declared: Line 1473 (Source lines: 1474-1481)
# Address: 0x0da4e900 - 0x0da4e960 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Vertex2f
.ent __glsplc_Vertex2f
__glsplc_Vertex2f:
    # Line 1474
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,9944
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1477
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1474
    sdc1	$f13,8($sp)
    # Line 1477
    li	$a1,65
    # Line 1474
    sd	$ra,16($sp)
    # Line 1477
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4e954
    ld	$ra,16($sp)
    # Line 1481
    ld	$gp,24($sp)
    # Line 1479
    ldc1	$f0,0($sp)
    # Line 1480
    ldc1	$f1,8($sp)
    # Line 1479
    swc1	$f0,0($v0)
    # Line 1481
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1480
    swc1	$f1,4($v0)
.L0da4e954:
    # Line 1481
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex2f

# Function: __glsplc_Vertex2fv
# Declared: Line 1484 (Source lines: 1485-1492)
# Address: 0x0da4e960 - 0x0da4e9c0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Vertex2fv
.ent __glsplc_Vertex2fv
__glsplc_Vertex2fv:
    # Line 1485
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,9848
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1488
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,65
    # Line 1485
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1488
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4e9b4
    ld	$ra,0($sp)
    # Line 1490
    ld	$v1,8($sp)
    lwc1	$f1,0($v1)
    swc1	$f1,0($v0)
    # Line 1491
    lwc1	$f0,4($v1)
    # Line 1492
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1491
    swc1	$f0,4($v0)
.L0da4e9b4:
    # Line 1492
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex2fv

# Function: __glsplc_Vertex2i
# Declared: Line 1495 (Source lines: 1496-1503)
# Address: 0x0da4e9c0 - 0x0da4ea20 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Vertex2i
.ent __glsplc_Vertex2i
__glsplc_Vertex2i:
    # Line 1496
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,9752
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1499
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1496
    sd	$a1,16($sp)
    # Line 1499
    li	$a1,66
    # Line 1496
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1499
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4ea14
    ld	$ra,0($sp)
    # Line 1503
    ld	$gp,24($sp)
    # Line 1501
    ld	$v1,8($sp)
    # Line 1502
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 1503
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1501
    sw	$v1,0($v0)
.L0da4ea14:
    # Line 1503
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex2i

# Function: __glsplc_Vertex2iv
# Declared: Line 1506 (Source lines: 1507-1514)
# Address: 0x0da4ea20 - 0x0da4ea80 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Vertex2iv
.ent __glsplc_Vertex2iv
__glsplc_Vertex2iv:
    # Line 1507
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,9656
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1510
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,66
    # Line 1507
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1510
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4ea74
    ld	$ra,0($sp)
    # Line 1512
    ld	$v1,8($sp)
    # Line 1514
    ld	$gp,16($sp)
    # Line 1512
    lw	$a0,0($v1)
    sw	$a0,0($v0)
    # Line 1513
    lw	$v1,4($v1)
    # Line 1514
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1513
    sw	$v1,4($v0)
.L0da4ea74:
    # Line 1514
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex2iv

# Function: __glsplc_Vertex2s
# Declared: Line 1517 (Source lines: 1518-1525)
# Address: 0x0da4ea80 - 0x0da4eae0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Vertex2s
.ent __glsplc_Vertex2s
__glsplc_Vertex2s:
    # Line 1518
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,9560
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1521
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1518
    sd	$a1,16($sp)
    # Line 1521
    li	$a1,67
    # Line 1518
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1521
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4ead4
    ld	$ra,0($sp)
    # Line 1525
    ld	$gp,24($sp)
    # Line 1523
    ld	$v1,8($sp)
    # Line 1524
    ld	$a0,16($sp)
    sh	$a0,2($v0)
    # Line 1525
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1523
    sh	$v1,0($v0)
.L0da4ead4:
    # Line 1525
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex2s

# Function: __glsplc_Vertex2sv
# Declared: Line 1528 (Source lines: 1529-1536)
# Address: 0x0da4eae0 - 0x0da4eb40 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Vertex2sv
.ent __glsplc_Vertex2sv
__glsplc_Vertex2sv:
    # Line 1529
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,9464
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1532
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,67
    # Line 1529
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1532
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4eb34
    ld	$ra,0($sp)
    # Line 1534
    ld	$v1,8($sp)
    # Line 1536
    ld	$gp,16($sp)
    # Line 1534
    lh	$a0,0($v1)
    sh	$a0,0($v0)
    # Line 1535
    lh	$v1,2($v1)
    # Line 1536
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1535
    sh	$v1,2($v0)
.L0da4eb34:
    # Line 1536
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex2sv

# Function: __glsplc_Vertex3d
# Declared: Line 1539 (Source lines: 1540-1548)
# Address: 0x0da4eb40 - 0x0da4ebac (Size: 108 bytes, Frame: 48)
.globl __glsplc_Vertex3d
.ent __glsplc_Vertex3d
__glsplc_Vertex3d:
    # Line 1540
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,9368
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1543
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 1540
    sdc1	$f13,8($sp)
    # Line 1543
    li	$a1,68
    # Line 1540
    sd	$ra,24($sp)
    # Line 1543
    li	$a0,24
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4eba0
    ld	$ra,24($sp)
    # Line 1548
    ld	$gp,32($sp)
    # Line 1545
    ldc1	$f0,0($sp)
    # Line 1546
    ldc1	$f1,8($sp)
    # Line 1547
    ldc1	$f2,16($sp)
    # Line 1546
    sdc1	$f1,8($v0)
    # Line 1547
    sdc1	$f2,16($v0)
    # Line 1548
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1545
    sdc1	$f0,0($v0)
.L0da4eba0:
    # Line 1548
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Vertex3d

# Function: __glsplc_Vertex3dv
# Declared: Line 1551 (Source lines: 1552-1560)
# Address: 0x0da4ebb0 - 0x0da4ec18 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Vertex3dv
.ent __glsplc_Vertex3dv
__glsplc_Vertex3dv:
    # Line 1552
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,9256
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1555
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,68
    # Line 1552
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1555
    jal	__glSPDlalloc2
    li	$a0,24
    beqz	$v0,.L0da4ec0c
    ld	$ra,0($sp)
    # Line 1557
    ld	$v1,8($sp)
    ldc1	$f2,0($v1)
    sdc1	$f2,0($v0)
    # Line 1558
    ldc1	$f1,8($v1)
    sdc1	$f1,8($v0)
    # Line 1559
    ldc1	$f0,16($v1)
    # Line 1560
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1559
    sdc1	$f0,16($v0)
.L0da4ec0c:
    # Line 1560
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex3dv

# Function: __glsplc_Vertex3f
# Declared: Line 1563 (Source lines: 1564-1572)
# Address: 0x0da4ec20 - 0x0da4ec8c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Vertex3f
.ent __glsplc_Vertex3f
__glsplc_Vertex3f:
    # Line 1564
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,9144
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1567
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1564
    sdc1	$f13,8($sp)
    # Line 1567
    li	$a1,69
    # Line 1564
    sd	$ra,24($sp)
    # Line 1567
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4ec80
    ld	$ra,24($sp)
    # Line 1572
    ld	$gp,32($sp)
    # Line 1569
    ldc1	$f0,0($sp)
    # Line 1570
    ldc1	$f1,8($sp)
    # Line 1571
    ldc1	$f2,16($sp)
    # Line 1570
    swc1	$f1,4($v0)
    # Line 1571
    swc1	$f2,8($v0)
    # Line 1572
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1569
    swc1	$f0,0($v0)
.L0da4ec80:
    # Line 1572
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Vertex3f

# Function: __glsplc_Vertex3fv
# Declared: Line 1575 (Source lines: 1576-1584)
# Address: 0x0da4ec90 - 0x0da4ecf8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Vertex3fv
.ent __glsplc_Vertex3fv
__glsplc_Vertex3fv:
    # Line 1576
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,9032
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1579
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,69
    # Line 1576
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1579
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4ecec
    ld	$ra,0($sp)
    # Line 1581
    ld	$v1,8($sp)
    lwc1	$f2,0($v1)
    swc1	$f2,0($v0)
    # Line 1582
    lwc1	$f1,4($v1)
    swc1	$f1,4($v0)
    # Line 1583
    lwc1	$f0,8($v1)
    # Line 1584
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1583
    swc1	$f0,8($v0)
.L0da4ecec:
    # Line 1584
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex3fv

# Function: __glsplc_Vertex3i
# Declared: Line 1587 (Source lines: 1588-1596)
# Address: 0x0da4ed00 - 0x0da4ed6c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Vertex3i
.ent __glsplc_Vertex3i
__glsplc_Vertex3i:
    # Line 1588
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,8920
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1591
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1588
    sd	$a1,16($sp)
    # Line 1591
    li	$a1,70
    # Line 1588
    sd	$a0,8($sp)
    # Line 1591
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4ed60
    ld	$ra,0($sp)
    # Line 1596
    ld	$gp,32($sp)
    # Line 1593
    ld	$v1,8($sp)
    # Line 1594
    ld	$a0,16($sp)
    # Line 1595
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 1594
    sw	$a0,4($v0)
    # Line 1596
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1593
    sw	$v1,0($v0)
.L0da4ed60:
    # Line 1596
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Vertex3i

# Function: __glsplc_Vertex3iv
# Declared: Line 1599 (Source lines: 1600-1608)
# Address: 0x0da4ed70 - 0x0da4edd8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Vertex3iv
.ent __glsplc_Vertex3iv
__glsplc_Vertex3iv:
    # Line 1600
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,8808
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1603
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,70
    # Line 1600
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1603
    jal	__glSPDlalloc
    li	$a0,12
    beqz	$v0,.L0da4edcc
    ld	$ra,0($sp)
    # Line 1605
    ld	$v1,8($sp)
    # Line 1608
    ld	$gp,16($sp)
    # Line 1605
    lw	$a1,0($v1)
    sw	$a1,0($v0)
    # Line 1606
    lw	$a0,4($v1)
    sw	$a0,4($v0)
    # Line 1607
    lw	$v1,8($v1)
    # Line 1608
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1607
    sw	$v1,8($v0)
.L0da4edcc:
    # Line 1608
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex3iv

# Function: __glsplc_Vertex3s
# Declared: Line 1611 (Source lines: 1612-1620)
# Address: 0x0da4ede0 - 0x0da4ee4c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Vertex3s
.ent __glsplc_Vertex3s
__glsplc_Vertex3s:
    # Line 1612
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,8696
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1615
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1612
    sd	$a1,16($sp)
    # Line 1615
    li	$a1,71
    # Line 1612
    sd	$a0,8($sp)
    # Line 1615
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4ee40
    ld	$ra,0($sp)
    # Line 1620
    ld	$gp,32($sp)
    # Line 1617
    ld	$v1,8($sp)
    # Line 1618
    ld	$a0,16($sp)
    # Line 1619
    ld	$a1,24($sp)
    sh	$a1,4($v0)
    # Line 1618
    sh	$a0,2($v0)
    # Line 1620
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1617
    sh	$v1,0($v0)
.L0da4ee40:
    # Line 1620
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Vertex3s

# Function: __glsplc_Vertex3sv
# Declared: Line 1623 (Source lines: 1624-1632)
# Address: 0x0da4ee50 - 0x0da4eeb8 (Size: 104 bytes, Frame: 32)
.globl __glsplc_Vertex3sv
.ent __glsplc_Vertex3sv
__glsplc_Vertex3sv:
    # Line 1624
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,8584
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1627
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,71
    # Line 1624
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1627
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4eeac
    ld	$ra,0($sp)
    # Line 1629
    ld	$v1,8($sp)
    # Line 1632
    ld	$gp,16($sp)
    # Line 1629
    lh	$a1,0($v1)
    sh	$a1,0($v0)
    # Line 1630
    lh	$a0,2($v1)
    sh	$a0,2($v0)
    # Line 1631
    lh	$v1,4($v1)
    # Line 1632
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1631
    sh	$v1,4($v0)
.L0da4eeac:
    # Line 1632
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex3sv

# Function: __glsplc_Vertex4d
# Declared: Line 1635 (Source lines: 1636-1645)
# Address: 0x0da4eec0 - 0x0da4ef38 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Vertex4d
.ent __glsplc_Vertex4d
__glsplc_Vertex4d:
    # Line 1636
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,8472
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1639
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 1636
    sdc1	$f13,8($sp)
    # Line 1639
    li	$a1,72
    # Line 1636
    sd	$ra,32($sp)
    # Line 1639
    li	$a0,32
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4ef2c
    ld	$ra,32($sp)
    # Line 1645
    ld	$gp,40($sp)
    # Line 1641
    ldc1	$f0,0($sp)
    # Line 1642
    ldc1	$f1,8($sp)
    # Line 1644
    ldc1	$f3,24($sp)
    # Line 1643
    ldc1	$f2,16($sp)
    # Line 1644
    sdc1	$f3,24($v0)
    # Line 1643
    sdc1	$f2,16($v0)
    # Line 1642
    sdc1	$f1,8($v0)
    # Line 1645
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1641
    sdc1	$f0,0($v0)
.L0da4ef2c:
    # Line 1645
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Vertex4d

# Function: __glsplc_Vertex4dv
# Declared: Line 1648 (Source lines: 1649-1658)
# Address: 0x0da4ef40 - 0x0da4efb0 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Vertex4dv
.ent __glsplc_Vertex4dv
__glsplc_Vertex4dv:
    # Line 1649
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,8344
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1652
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,72
    # Line 1649
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1652
    jal	__glSPDlalloc2
    li	$a0,32
    beqz	$v0,.L0da4efa4
    ld	$ra,0($sp)
    # Line 1654
    ld	$v1,8($sp)
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 1655
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 1656
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    # Line 1657
    ldc1	$f0,24($v1)
    # Line 1658
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1657
    sdc1	$f0,24($v0)
.L0da4efa4:
    # Line 1658
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex4dv

# Function: __glsplc_Vertex4f
# Declared: Line 1661 (Source lines: 1662-1671)
# Address: 0x0da4efb0 - 0x0da4f028 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Vertex4f
.ent __glsplc_Vertex4f
__glsplc_Vertex4f:
    # Line 1662
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,8232
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1665
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1662
    sdc1	$f13,8($sp)
    # Line 1665
    li	$a1,73
    # Line 1662
    sd	$ra,32($sp)
    # Line 1665
    li	$a0,16
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4f01c
    ld	$ra,32($sp)
    # Line 1671
    ld	$gp,40($sp)
    # Line 1667
    ldc1	$f0,0($sp)
    # Line 1668
    ldc1	$f1,8($sp)
    # Line 1670
    ldc1	$f3,24($sp)
    # Line 1669
    ldc1	$f2,16($sp)
    # Line 1670
    swc1	$f3,12($v0)
    # Line 1669
    swc1	$f2,8($v0)
    # Line 1668
    swc1	$f1,4($v0)
    # Line 1671
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1667
    swc1	$f0,0($v0)
.L0da4f01c:
    # Line 1671
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Vertex4f

# Function: __glsplc_Vertex4fv
# Declared: Line 1674 (Source lines: 1675-1684)
# Address: 0x0da4f030 - 0x0da4f0a0 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Vertex4fv
.ent __glsplc_Vertex4fv
__glsplc_Vertex4fv:
    # Line 1675
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,8104
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1678
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,73
    # Line 1675
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1678
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4f094
    ld	$ra,0($sp)
    # Line 1680
    ld	$v1,8($sp)
    lwc1	$f3,0($v1)
    swc1	$f3,0($v0)
    # Line 1681
    lwc1	$f2,4($v1)
    swc1	$f2,4($v0)
    # Line 1682
    lwc1	$f1,8($v1)
    swc1	$f1,8($v0)
    # Line 1683
    lwc1	$f0,12($v1)
    # Line 1684
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1683
    swc1	$f0,12($v0)
.L0da4f094:
    # Line 1684
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex4fv

# Function: __glsplc_Vertex4i
# Declared: Line 1687 (Source lines: 1688-1697)
# Address: 0x0da4f0a0 - 0x0da4f118 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Vertex4i
.ent __glsplc_Vertex4i
__glsplc_Vertex4i:
    # Line 1688
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,7992
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1691
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1688
    sd	$a1,16($sp)
    # Line 1691
    li	$a1,74
    # Line 1688
    sd	$a0,8($sp)
    # Line 1691
    li	$a0,16
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4f10c
    ld	$ra,0($sp)
    # Line 1697
    ld	$gp,40($sp)
    # Line 1693
    ld	$v1,8($sp)
    # Line 1694
    ld	$a0,16($sp)
    # Line 1695
    ld	$a1,24($sp)
    # Line 1696
    ld	$a2,32($sp)
    sw	$a2,12($v0)
    # Line 1695
    sw	$a1,8($v0)
    # Line 1694
    sw	$a0,4($v0)
    # Line 1697
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1693
    sw	$v1,0($v0)
.L0da4f10c:
    # Line 1697
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Vertex4i

# Function: __glsplc_Vertex4iv
# Declared: Line 1700 (Source lines: 1701-1710)
# Address: 0x0da4f120 - 0x0da4f190 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Vertex4iv
.ent __glsplc_Vertex4iv
__glsplc_Vertex4iv:
    # Line 1701
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,7864
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1704
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,74
    # Line 1701
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1704
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da4f184
    ld	$ra,0($sp)
    # Line 1706
    ld	$v1,8($sp)
    # Line 1710
    ld	$gp,16($sp)
    # Line 1706
    lw	$a2,0($v1)
    sw	$a2,0($v0)
    # Line 1707
    lw	$a1,4($v1)
    sw	$a1,4($v0)
    # Line 1708
    lw	$a0,8($v1)
    sw	$a0,8($v0)
    # Line 1709
    lw	$v1,12($v1)
    # Line 1710
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1709
    sw	$v1,12($v0)
.L0da4f184:
    # Line 1710
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex4iv

# Function: __glsplc_Vertex4s
# Declared: Line 1713 (Source lines: 1714-1723)
# Address: 0x0da4f190 - 0x0da4f208 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Vertex4s
.ent __glsplc_Vertex4s
__glsplc_Vertex4s:
    # Line 1714
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,7752
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1717
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1714
    sd	$a1,16($sp)
    # Line 1717
    li	$a1,75
    # Line 1714
    sd	$a0,8($sp)
    # Line 1717
    li	$a0,8
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4f1fc
    ld	$ra,0($sp)
    # Line 1723
    ld	$gp,40($sp)
    # Line 1719
    ld	$v1,8($sp)
    # Line 1720
    ld	$a0,16($sp)
    # Line 1721
    ld	$a1,24($sp)
    # Line 1722
    ld	$a2,32($sp)
    sh	$a2,6($v0)
    # Line 1721
    sh	$a1,4($v0)
    # Line 1720
    sh	$a0,2($v0)
    # Line 1723
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1719
    sh	$v1,0($v0)
.L0da4f1fc:
    # Line 1723
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Vertex4s

# Function: __glsplc_Vertex4sv
# Declared: Line 1726 (Source lines: 1727-1736)
# Address: 0x0da4f210 - 0x0da4f280 (Size: 112 bytes, Frame: 32)
.globl __glsplc_Vertex4sv
.ent __glsplc_Vertex4sv
__glsplc_Vertex4sv:
    # Line 1727
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,7624
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1730
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,75
    # Line 1727
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1730
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4f274
    ld	$ra,0($sp)
    # Line 1732
    ld	$v1,8($sp)
    # Line 1736
    ld	$gp,16($sp)
    # Line 1732
    lh	$a2,0($v1)
    sh	$a2,0($v0)
    # Line 1733
    lh	$a1,2($v1)
    sh	$a1,2($v0)
    # Line 1734
    lh	$a0,4($v1)
    sh	$a0,4($v0)
    # Line 1735
    lh	$v1,6($v1)
    # Line 1736
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1735
    sh	$v1,6($v0)
.L0da4f274:
    # Line 1736
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Vertex4sv

# Function: __glsplc_ClipPlane
# Declared: Line 1739 (Source lines: 1740-1750)
# Address: 0x0da4f280 - 0x0da4f2fc (Size: 124 bytes, Frame: 32)
.globl __glsplc_ClipPlane
.ent __glsplc_ClipPlane
__glsplc_ClipPlane:
    # Line 1740
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,7512
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1743
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 1740
    sd	$a1,16($sp)
    # Line 1743
    li	$a1,76
    # Line 1740
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1743
    jal	__glSPDlalloc2
    li	$a0,40
    beqz	$v0,.L0da4f2f0
    ld	$ra,0($sp)
    # Line 1745
    ld	$a0,8($sp)
    # Line 1746
    ld	$v1,16($sp)
    # Line 1745
    sw	$a0,32($v0)
    # Line 1746
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 1747
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 1748
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    # Line 1749
    ldc1	$f0,24($v1)
    # Line 1750
    ld	$gp,24($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1749
    sdc1	$f0,24($v0)
.L0da4f2f0:
    # Line 1750
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ClipPlane

# Function: __glsplc_ColorMaterial
# Declared: Line 1753 (Source lines: 1754-1761)
# Address: 0x0da4f300 - 0x0da4f360 (Size: 96 bytes, Frame: 32)
.globl __glsplc_ColorMaterial
.ent __glsplc_ColorMaterial
__glsplc_ColorMaterial:
    # Line 1754
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,7384
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1757
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1754
    sd	$a1,16($sp)
    # Line 1757
    li	$a1,77
    # Line 1754
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1757
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4f354
    ld	$ra,0($sp)
    # Line 1761
    ld	$gp,24($sp)
    # Line 1759
    ld	$v1,8($sp)
    # Line 1760
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 1761
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1759
    sw	$v1,0($v0)
.L0da4f354:
    # Line 1761
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ColorMaterial

# Function: __glsplc_CullFace
# Declared: Line 1764 (Source lines: 1765-1771)
# Address: 0x0da4f360 - 0x0da4f3b4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_CullFace
.ent __glsplc_CullFace
__glsplc_CullFace:
    # Line 1765
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,7288
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1768
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,78
    # Line 1765
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1768
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4f3a8
    ld	$ra,0($sp)
    # Line 1771
    ld	$gp,16($sp)
    # Line 1770
    ld	$v1,8($sp)
    # Line 1771
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1770
    sw	$v1,0($v0)
.L0da4f3a8:
    # Line 1771
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_CullFace

# Function: __glsplc_Fogf
# Declared: Line 1774 (Source lines: 1775-1782)
# Address: 0x0da4f3c0 - 0x0da4f420 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Fogf
.ent __glsplc_Fogf
__glsplc_Fogf:
    # Line 1775
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,7192
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1778
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1775
    sd	$ra,8($sp)
    # Line 1778
    li	$a1,79
    # Line 1775
    sd	$a0,16($sp)
    # Line 1778
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da4f414
    ld	$ra,8($sp)
    # Line 1782
    ld	$gp,24($sp)
    # Line 1780
    ld	$v1,16($sp)
    # Line 1781
    ldc1	$f0,0($sp)
    # Line 1780
    sw	$v1,0($v0)
    # Line 1782
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1781
    swc1	$f0,4($v0)
.L0da4f414:
    # Line 1782
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Fogf

# Function: __glsplc_Fogfv
# Declared: Line 1785 (Source lines: 1786-1802)
# Address: 0x0da4f420 - 0x0da4f4b4 (Size: 148 bytes, Frame: 48)
.globl __glsplc_Fogfv
.ent __glsplc_Fogfv
__glsplc_Fogfv:
    # Line 1786
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,7096
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1791
    # lw $t9, -26936($gp) # &__glFogfv_size
    # Line 1786
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1791
    jal	__glFogfv_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da4f4a0
    # Line 1797
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,80
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da4f480
    # Line 1800
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,16($sp)
.L0da4f470:
    ld	$s0,32($sp)
    # Line 1802
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4f480:
    # Line 1800
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 1799
    sw	$v1,0($v0)
    b	.L0da4f470
    ld	$ra,16($sp)
.L0da4f4a0:
    # Line 1793
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da4f470
    ld	$ra,16($sp)
.end __glsplc_Fogfv

# Function: __glsplc_Fogi
# Declared: Line 1805 (Source lines: 1806-1813)
# Address: 0x0da4f4c0 - 0x0da4f520 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Fogi
.ent __glsplc_Fogi
__glsplc_Fogi:
    # Line 1806
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,6936
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1809
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1806
    sd	$a1,16($sp)
    # Line 1809
    li	$a1,81
    # Line 1806
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1809
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4f514
    ld	$ra,0($sp)
    # Line 1813
    ld	$gp,24($sp)
    # Line 1811
    ld	$v1,8($sp)
    # Line 1812
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 1813
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1811
    sw	$v1,0($v0)
.L0da4f514:
    # Line 1813
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Fogi

# Function: __glsplc_Fogiv
# Declared: Line 1816 (Source lines: 1817-1833)
# Address: 0x0da4f520 - 0x0da4f5b4 (Size: 148 bytes, Frame: 48)
.globl __glsplc_Fogiv
.ent __glsplc_Fogiv
__glsplc_Fogiv:
    # Line 1817
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,6840
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1822
    # lw $t9, -26940($gp) # &__glFogiv_size
    # Line 1817
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1822
    jal	__glFogiv_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da4f5a4
    # Line 1824
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1828
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,82
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da4f580
    ld	$ra,16($sp)
.L0da4f570:
    ld	$s0,32($sp)
    # Line 1833
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4f580:
    # Line 1831
    # lw $t9, -18508($gp) # &memcpy
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 1830
    sw	$v1,0($v0)
    b	.L0da4f570
    ld	$ra,16($sp)
.L0da4f5a4:
    # Line 1824
    jalr	$t9
    nop
    b	.L0da4f570
    ld	$ra,16($sp)
.end __glsplc_Fogiv

# Function: __glsplc_FrontFace
# Declared: Line 1836 (Source lines: 1837-1843)
# Address: 0x0da4f5c0 - 0x0da4f614 (Size: 84 bytes, Frame: 32)
.globl __glsplc_FrontFace
.ent __glsplc_FrontFace
__glsplc_FrontFace:
    # Line 1837
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,6680
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1840
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,83
    # Line 1837
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1840
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4f608
    ld	$ra,0($sp)
    # Line 1843
    ld	$gp,16($sp)
    # Line 1842
    ld	$v1,8($sp)
    # Line 1843
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1842
    sw	$v1,0($v0)
.L0da4f608:
    # Line 1843
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_FrontFace

# Function: __glsplc_Hint
# Declared: Line 1846 (Source lines: 1847-1854)
# Address: 0x0da4f620 - 0x0da4f680 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Hint
.ent __glsplc_Hint
__glsplc_Hint:
    # Line 1847
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,6584
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1850
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1847
    sd	$a1,16($sp)
    # Line 1850
    li	$a1,84
    # Line 1847
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1850
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4f674
    ld	$ra,0($sp)
    # Line 1854
    ld	$gp,24($sp)
    # Line 1852
    ld	$v1,8($sp)
    # Line 1853
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 1854
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1852
    sw	$v1,0($v0)
.L0da4f674:
    # Line 1854
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Hint

# Function: __glsplc_Lightf
# Declared: Line 1857 (Source lines: 1858-1864)
# Address: 0x0da4f680 - 0x0da4f6f0 (Size: 112 bytes, Frame: 192)
.globl __glsplc_Lightf
.ent __glsplc_Lightf
__glsplc_Lightf:
    # Line 1858
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,6488
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1859
    # lw $t9, -26932($gp) # &__glLightfv_size
    # Line 1858
    swc1	$f14,48($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1859
    jal	__glLightfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da4f6d8
    # Line 1863
    nop	# was lw $t9, -23404($gp) # &__glsplc_Lightfv
    # Line 1860
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da4f6cc:
    # Line 1864
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da4f6d8:
    # Line 1863
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_Lightfv
    addiu	$a2,$sp,48
    b	.L0da4f6cc
    ld	$ra,16($sp)
.end __glsplc_Lightf

# Function: __glsplc_Lightfv
# Declared: Line 1867 (Source lines: 1868-1885)
# Address: 0x0da4f6f0 - 0x0da4f794 (Size: 164 bytes, Frame: 48)
.globl __glsplc_Lightfv
.ent __glsplc_Lightfv
__glsplc_Lightfv:
    # Line 1868
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,6376
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1873
    # lw $t9, -26932($gp) # &__glLightfv_size
    # Line 1868
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 1873
    move	$a0,$a1
    jal	__glLightfv_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da4f784
    # Line 1875
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1879
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,86
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da4f75c
    # Line 1883
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da4f74c:
    ld	$s0,40($sp)
    # Line 1885
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4f75c:
    # Line 1883
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 1882
    ld	$a0,8($sp)
    # Line 1883
    move	$a2,$s0
    # Line 1882
    sw	$a0,4($v0)
    # Line 1883
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 1881
    sw	$v1,0($v0)
    b	.L0da4f74c
    ld	$ra,24($sp)
.L0da4f784:
    # Line 1875
    jalr	$t9
    nop
    b	.L0da4f74c
    ld	$ra,24($sp)
.end __glsplc_Lightfv

# Function: __glsplc_Lighti
# Declared: Line 1888 (Source lines: 1889-1895)
# Address: 0x0da4f7a0 - 0x0da4f810 (Size: 112 bytes, Frame: 192)
.globl __glsplc_Lighti
.ent __glsplc_Lighti
__glsplc_Lighti:
    # Line 1889
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,6200
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1890
    # lw $t9, -26928($gp) # &__glLightiv_size
    # Line 1889
    sw	$a2,52($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1890
    jal	__glLightiv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da4f7f4
    # Line 1891
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da4f7e8:
    # Line 1895
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da4f7f4:
    # Line 1894
    # lw $t9, -23400($gp) # &__glsplc_Lightiv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_Lightiv
    addiu	$a2,$sp,52
    b	.L0da4f7e8
    ld	$ra,16($sp)
.end __glsplc_Lighti

# Function: __glsplc_Lightiv
# Declared: Line 1898 (Source lines: 1899-1916)
# Address: 0x0da4f810 - 0x0da4f8b4 (Size: 164 bytes, Frame: 48)
.globl __glsplc_Lightiv
.ent __glsplc_Lightiv
__glsplc_Lightiv:
    # Line 1899
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,6088
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1904
    # lw $t9, -26928($gp) # &__glLightiv_size
    # Line 1899
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 1904
    move	$a0,$a1
    jal	__glLightiv_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da4f8a0
    # Line 1910
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,88
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da4f878
    # Line 1914
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da4f868:
    ld	$s0,40($sp)
    # Line 1916
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4f878:
    # Line 1914
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 1913
    ld	$a0,8($sp)
    # Line 1914
    move	$a2,$s0
    # Line 1913
    sw	$a0,4($v0)
    # Line 1914
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 1912
    sw	$v1,0($v0)
    b	.L0da4f868
    ld	$ra,24($sp)
.L0da4f8a0:
    # Line 1906
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da4f868
    ld	$ra,24($sp)
.end __glsplc_Lightiv

# Function: __glsplc_LightModelf
# Declared: Line 1919 (Source lines: 1920-1926)
# Address: 0x0da4f8c0 - 0x0da4f924 (Size: 100 bytes, Frame: 48)
.globl __glsplc_LightModelf
.ent __glsplc_LightModelf
__glsplc_LightModelf:
    # Line 1920
    lui	$at,0x4
    addiu	$sp,$sp,-48
    addiu	$at,$at,5912
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1921
    # lw $t9, -26924($gp) # &__glLightModelfv_size
    # Line 1920
    sd	$a0,0($sp)
    sd	$ra,8($sp)
    # Line 1921
    jal	__glLightModelfv_size
    # Line 1920
    swc1	$f13,40($sp)
    # Line 1921
    li	$v1,1
    beq	$v0,$v1,.L0da4f910
    # Line 1925
    nop	# was lw $t9, -23396($gp) # &__glsplc_LightModelfv
    # Line 1922
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,8($sp)
.L0da4f904:
    # Line 1926
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4f910:
    # Line 1925
    ld	$a0,0($sp)
    bal __glsplc_LightModelfv
    addiu	$a1,$sp,40
    b	.L0da4f904
    ld	$ra,8($sp)
.end __glsplc_LightModelf

# Function: __glsplc_LightModelfv
# Declared: Line 1929 (Source lines: 1930-1946)
# Address: 0x0da4f930 - 0x0da4f9c4 (Size: 148 bytes, Frame: 48)
.globl __glsplc_LightModelfv
.ent __glsplc_LightModelfv
__glsplc_LightModelfv:
    # Line 1930
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,5800
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1935
    # lw $t9, -26924($gp) # &__glLightModelfv_size
    # Line 1930
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1935
    jal	__glLightModelfv_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da4f9b0
    # Line 1941
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,90
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da4f990
    # Line 1944
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,16($sp)
.L0da4f980:
    ld	$s0,32($sp)
    # Line 1946
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4f990:
    # Line 1944
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 1943
    sw	$v1,0($v0)
    b	.L0da4f980
    ld	$ra,16($sp)
.L0da4f9b0:
    # Line 1937
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da4f980
    ld	$ra,16($sp)
.end __glsplc_LightModelfv

# Function: __glsplc_LightModeli
# Declared: Line 1949 (Source lines: 1950-1956)
# Address: 0x0da4f9d0 - 0x0da4fa34 (Size: 100 bytes, Frame: 48)
.globl __glsplc_LightModeli
.ent __glsplc_LightModeli
__glsplc_LightModeli:
    # Line 1950
    lui	$at,0x4
    addiu	$sp,$sp,-48
    addiu	$at,$at,5640
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1951
    # lw $t9, -26920($gp) # &__glLightModeliv_size
    # Line 1950
    sd	$a0,0($sp)
    sd	$ra,8($sp)
    # Line 1951
    jal	__glLightModeliv_size
    # Line 1950
    sw	$a1,44($sp)
    # Line 1951
    li	$v1,1
    beq	$v0,$v1,.L0da4fa20
    # Line 1955
    nop	# was lw $t9, -23392($gp) # &__glsplc_LightModeliv
    # Line 1952
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,8($sp)
.L0da4fa14:
    # Line 1956
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4fa20:
    # Line 1955
    ld	$a0,0($sp)
    bal __glsplc_LightModeliv
    addiu	$a1,$sp,44
    b	.L0da4fa14
    ld	$ra,8($sp)
.end __glsplc_LightModeli

# Function: __glsplc_LightModeliv
# Declared: Line 1959 (Source lines: 1960-1976)
# Address: 0x0da4fa40 - 0x0da4fad4 (Size: 148 bytes, Frame: 48)
.globl __glsplc_LightModeliv
.ent __glsplc_LightModeliv
__glsplc_LightModeliv:
    # Line 1960
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,5528
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1965
    # lw $t9, -26920($gp) # &__glLightModeliv_size
    # Line 1960
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1965
    jal	__glLightModeliv_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da4fac4
    # Line 1967
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 1971
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,92
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da4faa0
    ld	$ra,16($sp)
.L0da4fa90:
    ld	$s0,32($sp)
    # Line 1976
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4faa0:
    # Line 1974
    # lw $t9, -18508($gp) # &memcpy
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 1973
    sw	$v1,0($v0)
    b	.L0da4fa90
    ld	$ra,16($sp)
.L0da4fac4:
    # Line 1967
    jalr	$t9
    nop
    b	.L0da4fa90
    ld	$ra,16($sp)
.end __glsplc_LightModeliv

# Function: __glsplc_LineStipple
# Declared: Line 1979 (Source lines: 1980-1987)
# Address: 0x0da4fae0 - 0x0da4fb40 (Size: 96 bytes, Frame: 32)
.globl __glsplc_LineStipple
.ent __glsplc_LineStipple
__glsplc_LineStipple:
    # Line 1980
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,5368
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1983
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 1980
    sd	$a1,16($sp)
    # Line 1983
    li	$a1,93
    # Line 1980
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 1983
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4fb34
    ld	$ra,0($sp)
    # Line 1987
    ld	$gp,24($sp)
    # Line 1985
    ld	$v1,8($sp)
    # Line 1986
    ld	$a0,16($sp)
    sh	$a0,4($v0)
    # Line 1987
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1985
    sw	$v1,0($v0)
.L0da4fb34:
    # Line 1987
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_LineStipple

# Function: __glsplc_LineWidth
# Declared: Line 1990 (Source lines: 1991-1997)
# Address: 0x0da4fb40 - 0x0da4fb94 (Size: 84 bytes, Frame: 32)
.globl __glsplc_LineWidth
.ent __glsplc_LineWidth
__glsplc_LineWidth:
    # Line 1991
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,5272
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1994
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,94
    # Line 1991
    sd	$ra,8($sp)
    # Line 1994
    li	$a0,4
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4fb88
    ld	$ra,8($sp)
    # Line 1996
    ldc1	$f0,0($sp)
    # Line 1997
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1996
    swc1	$f0,0($v0)
.L0da4fb88:
    # Line 1997
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_LineWidth

# Function: __glsplc_Materialf
# Declared: Line 2000 (Source lines: 2001-2007)
# Address: 0x0da4fba0 - 0x0da4fc10 (Size: 112 bytes, Frame: 192)
.globl __glsplc_Materialf
.ent __glsplc_Materialf
__glsplc_Materialf:
    # Line 2001
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,5176
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2002
    # lw $t9, -26916($gp) # &__glMaterialfv_size
    # Line 2001
    swc1	$f14,48($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2002
    jal	__glMaterialfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da4fbf4
    # Line 2003
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da4fbe8:
    # Line 2007
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da4fbf4:
    # Line 2006
    # lw $t9, -23388($gp) # &__glsplc_Materialfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_Materialfv
    addiu	$a2,$sp,48
    b	.L0da4fbe8
    ld	$ra,16($sp)
.end __glsplc_Materialf

# Function: __glsplc_Materialfv
# Declared: Line 2010 (Source lines: 2011-2034)
# Address: 0x0da4fc10 - 0x0da4fcd4 (Size: 196 bytes, Frame: 48)
.globl __glsplc_Materialfv
.ent __glsplc_Materialfv
__glsplc_Materialfv:
    # Line 2017
    lwc1	$f14,0($a2)
    # Line 2011
    addiu	$sp,$sp,-48
    lui	$v0,0x4
    sd	$a2,16($sp)
    addiu	$v0,$v0,5064
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 2017
    # lw $t9, -29200($gp) # &__glErrorCheckMaterial
    # Line 2011
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    # Line 2017
    jal	__glErrorCheckMaterial
    # Line 2011
    sd	$a0,8($sp)
    # Line 2017
    beqz	$v0,.L0da4fc64
    # Line 2022
    nop	# was lw $t9, -26916($gp) # &__glMaterialfv_size
    # Line 2019
    # lw $t9, -30744($gp) # &__glsplc_Error
    jal	__glsplc_Error
    move	$a0,$v0
    ld	$ra,32($sp)
.L0da4fc58:
    # Line 2034
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4fc64:
    # Line 2022
    jalr	$t9
    ld	$a0,24($sp)
    sll	$v1,$v0,0x2
    bltz	$v1,.L0da4fcc0
    sd	$v1,0($sp)
    # Line 2028
    # lw $t9, -32516($gp) # &__glSPDlalloc
    ld	$a0,0($sp)
    li	$a1,96
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    beqz	$v0,.L0da4fc58
    ld	$ra,32($sp)
    # Line 2032
    ld	$a2,0($sp)
    ld	$a1,16($sp)
    ld	$a3,8($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2031
    ld	$a4,24($sp)
    sw	$a4,4($v0)
    # Line 2032
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2030
    sw	$a3,0($v0)
    b	.L0da4fc58
    ld	$ra,32($sp)
.L0da4fcc0:
    # Line 2024
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da4fc58
    ld	$ra,32($sp)
.end __glsplc_Materialfv

# Function: __glsplc_Materiali
# Declared: Line 2037 (Source lines: 2038-2044)
# Address: 0x0da4fce0 - 0x0da4fd50 (Size: 112 bytes, Frame: 192)
.globl __glsplc_Materiali
.ent __glsplc_Materiali
__glsplc_Materiali:
    # Line 2038
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,4856
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2039
    # lw $t9, -26912($gp) # &__glMaterialiv_size
    # Line 2038
    sw	$a2,52($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2039
    jal	__glMaterialiv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da4fd38
    # Line 2043
    nop	# was lw $t9, -23384($gp) # &__glsplc_Materialiv
    # Line 2040
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da4fd2c:
    # Line 2044
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da4fd38:
    # Line 2043
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_Materialiv
    addiu	$a2,$sp,52
    b	.L0da4fd2c
    ld	$ra,16($sp)
.end __glsplc_Materiali

# Function: __glsplc_Materialiv
# Declared: Line 2047 (Source lines: 2048-2071)
# Address: 0x0da4fd50 - 0x0da4fe1c (Size: 204 bytes, Frame: 48)
.globl __glsplc_Materialiv
.ent __glsplc_Materialiv
__glsplc_Materialiv:
    # Line 2048
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    # Line 2054
    lw	$at,0($a2)
    # Line 2048
    addiu	$v0,$v0,4744
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 2054
    mtc1	$at,$f14
    # lw $t9, -29200($gp) # &__glErrorCheckMaterial
    # Line 2048
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    sd	$ra,32($sp)
    # Line 2054
    jal	__glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0da4fda8
    # Line 2056
    nop	# was lw $t9, -30744($gp) # &__glsplc_Error
    jal	__glsplc_Error
    move	$a0,$v0
    ld	$ra,32($sp)
.L0da4fd9c:
    # Line 2071
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4fda8:
    # Line 2059
    # lw $t9, -26912($gp) # &__glMaterialiv_size
    jal	__glMaterialiv_size
    ld	$a0,24($sp)
    sll	$v1,$v0,0x2
    bltz	$v1,.L0da4fe08
    sd	$v1,0($sp)
    # Line 2065
    # lw $t9, -32516($gp) # &__glSPDlalloc
    ld	$a0,0($sp)
    li	$a1,98
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    beqz	$v0,.L0da4fd9c
    ld	$ra,32($sp)
    # Line 2069
    ld	$a2,0($sp)
    ld	$a1,16($sp)
    ld	$a3,8($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2068
    ld	$a4,24($sp)
    sw	$a4,4($v0)
    # Line 2069
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2067
    sw	$a3,0($v0)
    b	.L0da4fd9c
    ld	$ra,32($sp)
.L0da4fe08:
    # Line 2061
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da4fd9c
    ld	$ra,32($sp)
.end __glsplc_Materialiv

# Function: __glsplc_PointSize
# Declared: Line 2074 (Source lines: 2075-2081)
# Address: 0x0da4fe20 - 0x0da4fe74 (Size: 84 bytes, Frame: 32)
.globl __glsplc_PointSize
.ent __glsplc_PointSize
__glsplc_PointSize:
    # Line 2075
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,4536
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2078
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,99
    # Line 2075
    sd	$ra,8($sp)
    # Line 2078
    li	$a0,4
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da4fe68
    ld	$ra,8($sp)
    # Line 2080
    ldc1	$f0,0($sp)
    # Line 2081
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2080
    swc1	$f0,0($v0)
.L0da4fe68:
    # Line 2081
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PointSize

# Function: __glsplc_PolygonMode
# Declared: Line 2084 (Source lines: 2085-2092)
# Address: 0x0da4fe80 - 0x0da4fee0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_PolygonMode
.ent __glsplc_PolygonMode
__glsplc_PolygonMode:
    # Line 2085
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,4440
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2088
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2085
    sd	$a1,16($sp)
    # Line 2088
    li	$a1,100
    # Line 2085
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2088
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da4fed4
    ld	$ra,0($sp)
    # Line 2092
    ld	$gp,24($sp)
    # Line 2090
    ld	$v1,8($sp)
    # Line 2091
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 2092
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2090
    sw	$v1,0($v0)
.L0da4fed4:
    # Line 2092
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PolygonMode

# Function: __glsplc_Scissor
# Declared: Line 2096 (Source lines: 2097-2106)
# Address: 0x0da4fee0 - 0x0da4ff58 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Scissor
.ent __glsplc_Scissor
__glsplc_Scissor:
    # Line 2097
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,4344
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2100
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2097
    sd	$a1,16($sp)
    # Line 2100
    li	$a1,102
    # Line 2097
    sd	$a0,8($sp)
    # Line 2100
    li	$a0,16
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da4ff4c
    ld	$ra,0($sp)
    # Line 2106
    ld	$gp,40($sp)
    # Line 2102
    ld	$v1,8($sp)
    # Line 2103
    ld	$a0,16($sp)
    # Line 2104
    ld	$a1,24($sp)
    # Line 2105
    ld	$a2,32($sp)
    sw	$a2,12($v0)
    # Line 2104
    sw	$a1,8($v0)
    # Line 2103
    sw	$a0,4($v0)
    # Line 2106
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2102
    sw	$v1,0($v0)
.L0da4ff4c:
    # Line 2106
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Scissor

# Function: __glsplc_ShadeModel
# Declared: Line 2109 (Source lines: 2110-2116)
# Address: 0x0da4ff60 - 0x0da4ffb4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_ShadeModel
.ent __glsplc_ShadeModel
__glsplc_ShadeModel:
    # Line 2110
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,4216
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2113
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,103
    # Line 2110
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2113
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da4ffa8
    ld	$ra,0($sp)
    # Line 2116
    ld	$gp,16($sp)
    # Line 2115
    ld	$v1,8($sp)
    # Line 2116
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2115
    sw	$v1,0($v0)
.L0da4ffa8:
    # Line 2116
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ShadeModel

# Function: __glsplc_TexParameterf
# Declared: Line 2119 (Source lines: 2120-2126)
# Address: 0x0da4ffc0 - 0x0da50030 (Size: 112 bytes, Frame: 192)
.globl __glsplc_TexParameterf
.ent __glsplc_TexParameterf
__glsplc_TexParameterf:
    # Line 2120
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,4120
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2121
    # lw $t9, -26560($gp) # &__glTexParameterfv_size
    # Line 2120
    swc1	$f14,48($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2121
    jal	__glTexParameterfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da50014
    # Line 2122
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da50008:
    # Line 2126
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da50014:
    # Line 2125
    # lw $t9, -23376($gp) # &__glsplc_TexParameterfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexParameterfv
    addiu	$a2,$sp,48
    b	.L0da50008
    ld	$ra,16($sp)
.end __glsplc_TexParameterf

# Function: __glsplc_TexParameterfv
# Declared: Line 2129 (Source lines: 2130-2147)
# Address: 0x0da50030 - 0x0da500d4 (Size: 164 bytes, Frame: 48)
.globl __glsplc_TexParameterfv
.ent __glsplc_TexParameterfv
__glsplc_TexParameterfv:
    # Line 2130
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,4008
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2135
    # lw $t9, -26560($gp) # &__glTexParameterfv_size
    # Line 2130
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 2135
    move	$a0,$a1
    jal	__glTexParameterfv_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da500c0
    # Line 2141
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,105
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da50098
    # Line 2145
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da50088:
    ld	$s0,40($sp)
    # Line 2147
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50098:
    # Line 2145
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2144
    ld	$a0,8($sp)
    # Line 2145
    move	$a2,$s0
    # Line 2144
    sw	$a0,4($v0)
    # Line 2145
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2143
    sw	$v1,0($v0)
    b	.L0da50088
    ld	$ra,24($sp)
.L0da500c0:
    # Line 2137
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da50088
    ld	$ra,24($sp)
.end __glsplc_TexParameterfv

# Function: __glsplc_TexParameteri
# Declared: Line 2150 (Source lines: 2151-2157)
# Address: 0x0da500e0 - 0x0da50150 (Size: 112 bytes, Frame: 192)
.globl __glsplc_TexParameteri
.ent __glsplc_TexParameteri
__glsplc_TexParameteri:
    # Line 2151
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,3832
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2152
    # lw $t9, -26556($gp) # &__glTexParameteriv_size
    # Line 2151
    sw	$a2,52($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2152
    jal	__glTexParameteriv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da50138
    # Line 2156
    nop	# was lw $t9, -23368($gp) # &__glsplc_TexParameteriv
    # Line 2153
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da5012c:
    # Line 2157
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da50138:
    # Line 2156
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexParameteriv
    addiu	$a2,$sp,52
    b	.L0da5012c
    ld	$ra,16($sp)
.end __glsplc_TexParameteri

# Function: __glsplc_TexParameteriv
# Declared: Line 2160 (Source lines: 2161-2178)
# Address: 0x0da50150 - 0x0da501f4 (Size: 164 bytes, Frame: 48)
.globl __glsplc_TexParameteriv
.ent __glsplc_TexParameteriv
__glsplc_TexParameteriv:
    # Line 2161
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,3720
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2166
    # lw $t9, -26556($gp) # &__glTexParameteriv_size
    # Line 2161
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 2166
    move	$a0,$a1
    jal	__glTexParameteriv_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da501e4
    # Line 2168
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 2172
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,107
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da501bc
    # Line 2176
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da501ac:
    ld	$s0,40($sp)
    # Line 2178
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da501bc:
    # Line 2176
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2175
    ld	$a0,8($sp)
    # Line 2176
    move	$a2,$s0
    # Line 2175
    sw	$a0,4($v0)
    # Line 2176
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2174
    sw	$v1,0($v0)
    b	.L0da501ac
    ld	$ra,24($sp)
.L0da501e4:
    # Line 2168
    jalr	$t9
    nop
    b	.L0da501ac
    ld	$ra,24($sp)
.end __glsplc_TexParameteriv

# Function: __glsplc_TexEnvf
# Declared: Line 2183 (Source lines: 2184-2190)
# Address: 0x0da50200 - 0x0da50270 (Size: 112 bytes, Frame: 192)
.globl __glsplc_TexEnvf
.ent __glsplc_TexEnvf
__glsplc_TexEnvf:
    # Line 2184
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,3544
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2185
    # lw $t9, -26536($gp) # &__glTexEnvfv_size
    # Line 2184
    swc1	$f14,48($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2185
    jal	__glTexEnvfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da50258
    # Line 2189
    nop	# was lw $t9, -23364($gp) # &__glsplc_TexEnvfv
    # Line 2186
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da5024c:
    # Line 2190
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da50258:
    # Line 2189
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexEnvfv
    addiu	$a2,$sp,48
    b	.L0da5024c
    ld	$ra,16($sp)
.end __glsplc_TexEnvf

# Function: __glsplc_TexEnvfv
# Declared: Line 2193 (Source lines: 2194-2211)
# Address: 0x0da50270 - 0x0da50314 (Size: 164 bytes, Frame: 48)
.globl __glsplc_TexEnvfv
.ent __glsplc_TexEnvfv
__glsplc_TexEnvfv:
    # Line 2194
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,3432
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2199
    # lw $t9, -26536($gp) # &__glTexEnvfv_size
    # Line 2194
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 2199
    move	$a0,$a1
    jal	__glTexEnvfv_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da50304
    # Line 2201
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 2205
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,111
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da502dc
    # Line 2209
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da502cc:
    ld	$s0,40($sp)
    # Line 2211
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da502dc:
    # Line 2209
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2208
    ld	$a0,8($sp)
    # Line 2209
    move	$a2,$s0
    # Line 2208
    sw	$a0,4($v0)
    # Line 2209
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2207
    sw	$v1,0($v0)
    b	.L0da502cc
    ld	$ra,24($sp)
.L0da50304:
    # Line 2201
    jalr	$t9
    nop
    b	.L0da502cc
    ld	$ra,24($sp)
.end __glsplc_TexEnvfv

# Function: __glsplc_TexEnvi
# Declared: Line 2214 (Source lines: 2215-2221)
# Address: 0x0da50320 - 0x0da50390 (Size: 112 bytes, Frame: 192)
.globl __glsplc_TexEnvi
.ent __glsplc_TexEnvi
__glsplc_TexEnvi:
    # Line 2215
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,3256
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2216
    # lw $t9, -26532($gp) # &__glTexEnviv_size
    # Line 2215
    sw	$a2,52($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2216
    jal	__glTexEnviv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da50374
    # Line 2217
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da50368:
    # Line 2221
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da50374:
    # Line 2220
    # lw $t9, -23360($gp) # &__glsplc_TexEnviv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexEnviv
    addiu	$a2,$sp,52
    b	.L0da50368
    ld	$ra,16($sp)
.end __glsplc_TexEnvi

# Function: __glsplc_TexEnviv
# Declared: Line 2224 (Source lines: 2225-2242)
# Address: 0x0da50390 - 0x0da50434 (Size: 164 bytes, Frame: 48)
.globl __glsplc_TexEnviv
.ent __glsplc_TexEnviv
__glsplc_TexEnviv:
    # Line 2225
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,3144
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2230
    # lw $t9, -26532($gp) # &__glTexEnviv_size
    # Line 2225
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 2230
    move	$a0,$a1
    jal	__glTexEnviv_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da50420
    # Line 2236
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,113
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da503f4
    ld	$ra,24($sp)
.L0da503e4:
    ld	$s0,40($sp)
    # Line 2242
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da503f4:
    # Line 2240
    ld	$a1,16($sp)
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2239
    ld	$a0,8($sp)
    # Line 2240
    move	$a2,$s0
    # Line 2239
    sw	$a0,4($v0)
    # Line 2240
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2238
    sw	$v1,0($v0)
    b	.L0da503e4
    ld	$ra,24($sp)
.L0da50420:
    # Line 2232
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da503e4
    ld	$ra,24($sp)
.end __glsplc_TexEnviv

# Function: __glsplc_TexGend
# Declared: Line 2245 (Source lines: 2246-2252)
# Address: 0x0da50440 - 0x0da504b0 (Size: 112 bytes, Frame: 192)
.globl __glsplc_TexGend
.ent __glsplc_TexGend
__glsplc_TexGend:
    # Line 2246
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,2968
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2247
    # lw $t9, -26588($gp) # &__glTexGendv_size
    # Line 2246
    sdc1	$f14,48($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2247
    jal	__glTexGendv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da50494
    # Line 2248
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da50488:
    # Line 2252
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da50494:
    # Line 2251
    # lw $t9, -23356($gp) # &__glsplc_TexGendv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexGendv
    addiu	$a2,$sp,48
    b	.L0da50488
    ld	$ra,16($sp)
.end __glsplc_TexGend

# Function: __glsplc_TexGendv
# Declared: Line 2255 (Source lines: 2256-2273)
# Address: 0x0da504b0 - 0x0da50554 (Size: 164 bytes, Frame: 48)
.globl __glsplc_TexGendv
.ent __glsplc_TexGendv
__glsplc_TexGendv:
    # Line 2256
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,2856
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2261
    # lw $t9, -26588($gp) # &__glTexGendv_size
    # Line 2256
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 2261
    move	$a0,$a1
    jal	__glTexGendv_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x3
    bltz	$s0,.L0da50540
    # Line 2267
    nop	# was lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,115
    jal	__glSPDlalloc2
    addiu	$a0,$s0,8
    bnez	$v0,.L0da50514
    ld	$ra,24($sp)
.L0da50504:
    ld	$s0,40($sp)
    # Line 2273
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50514:
    # Line 2271
    ld	$a1,16($sp)
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2270
    ld	$a0,8($sp)
    # Line 2271
    move	$a2,$s0
    # Line 2270
    sw	$a0,4($v0)
    # Line 2271
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2269
    sw	$v1,0($v0)
    b	.L0da50504
    ld	$ra,24($sp)
.L0da50540:
    # Line 2263
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da50504
    ld	$ra,24($sp)
.end __glsplc_TexGendv

# Function: __glsplc_TexGenf
# Declared: Line 2276 (Source lines: 2277-2283)
# Address: 0x0da50560 - 0x0da505d0 (Size: 112 bytes, Frame: 192)
.globl __glsplc_TexGenf
.ent __glsplc_TexGenf
__glsplc_TexGenf:
    # Line 2277
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,2680
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2278
    # lw $t9, -26584($gp) # &__glTexGenfv_size
    # Line 2277
    swc1	$f14,48($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2278
    jal	__glTexGenfv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da505b8
    # Line 2282
    nop	# was lw $t9, -23352($gp) # &__glsplc_TexGenfv
    # Line 2279
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da505ac:
    # Line 2283
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da505b8:
    # Line 2282
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexGenfv
    addiu	$a2,$sp,48
    b	.L0da505ac
    ld	$ra,16($sp)
.end __glsplc_TexGenf

# Function: __glsplc_TexGenfv
# Declared: Line 2286 (Source lines: 2287-2304)
# Address: 0x0da505d0 - 0x0da50674 (Size: 164 bytes, Frame: 48)
.globl __glsplc_TexGenfv
.ent __glsplc_TexGenfv
__glsplc_TexGenfv:
    # Line 2287
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,2568
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2292
    # lw $t9, -26584($gp) # &__glTexGenfv_size
    # Line 2287
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 2292
    move	$a0,$a1
    jal	__glTexGenfv_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da50660
    # Line 2298
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,117
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da50634
    ld	$ra,24($sp)
.L0da50624:
    ld	$s0,40($sp)
    # Line 2304
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50634:
    # Line 2302
    ld	$a1,16($sp)
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2301
    ld	$a0,8($sp)
    # Line 2302
    move	$a2,$s0
    # Line 2301
    sw	$a0,4($v0)
    # Line 2302
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2300
    sw	$v1,0($v0)
    b	.L0da50624
    ld	$ra,24($sp)
.L0da50660:
    # Line 2294
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da50624
    ld	$ra,24($sp)
.end __glsplc_TexGenfv

# Function: __glsplc_TexGeni
# Declared: Line 2307 (Source lines: 2308-2314)
# Address: 0x0da50680 - 0x0da506f0 (Size: 112 bytes, Frame: 192)
.globl __glsplc_TexGeni
.ent __glsplc_TexGeni
__glsplc_TexGeni:
    # Line 2308
    addiu	$sp,$sp,-64
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,2392
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2309
    # lw $t9, -26580($gp) # &__glTexGeniv_size
    # Line 2308
    sw	$a2,52($sp)
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2309
    jal	__glTexGeniv_size
    move	$a0,$a1
    li	$v1,1
    beq	$v0,$v1,.L0da506d4
    # Line 2310
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    ld	$ra,16($sp)
.L0da506c8:
    # Line 2314
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da506d4:
    # Line 2313
    # lw $t9, -23348($gp) # &__glsplc_TexGeniv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __glsplc_TexGeniv
    addiu	$a2,$sp,52
    b	.L0da506c8
    ld	$ra,16($sp)
.end __glsplc_TexGeni

# Function: __glsplc_TexGeniv
# Declared: Line 2317 (Source lines: 2318-2335)
# Address: 0x0da506f0 - 0x0da50794 (Size: 164 bytes, Frame: 48)
.globl __glsplc_TexGeniv
.ent __glsplc_TexGeniv
__glsplc_TexGeniv:
    # Line 2318
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,2280
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2323
    # lw $t9, -26580($gp) # &__glTexGeniv_size
    # Line 2318
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 2323
    move	$a0,$a1
    jal	__glTexGeniv_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da50780
    # Line 2329
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,119
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da50758
    # Line 2333
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da50748:
    ld	$s0,40($sp)
    # Line 2335
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da50758:
    # Line 2333
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2332
    ld	$a0,8($sp)
    # Line 2333
    move	$a2,$s0
    # Line 2332
    sw	$a0,4($v0)
    # Line 2333
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2331
    sw	$v1,0($v0)
    b	.L0da50748
    ld	$ra,24($sp)
.L0da50780:
    # Line 2325
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da50748
    ld	$ra,24($sp)
.end __glsplc_TexGeniv

# Function: __glsplc_InitNames
# Declared: Line 2341 (Source lines: 2342-2347)
# Address: 0x0da507a0 - 0x0da507d8 (Size: 56 bytes, Frame: 16)
.globl __glsplc_InitNames
.ent __glsplc_InitNames
__glsplc_InitNames:
    # Line 2342
    lui	$at,0x4
    addiu	$sp,$sp,-16
    addiu	$at,$at,2104
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 2345
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,120
    # Line 2342
    sd	$ra,0($sp)
    # Line 2345
    jal	__glSPDlalloc
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 2347
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_InitNames

# Function: __glsplc_LoadName
# Declared: Line 2350 (Source lines: 2351-2357)
# Address: 0x0da507e0 - 0x0da50834 (Size: 84 bytes, Frame: 32)
.globl __glsplc_LoadName
.ent __glsplc_LoadName
__glsplc_LoadName:
    # Line 2351
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,2040
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2354
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,121
    # Line 2351
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2354
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da50828
    ld	$ra,0($sp)
    # Line 2357
    ld	$gp,16($sp)
    # Line 2356
    ld	$v1,8($sp)
    # Line 2357
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2356
    sw	$v1,0($v0)
.L0da50828:
    # Line 2357
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_LoadName

# Function: __glsplc_PassThrough
# Declared: Line 2360 (Source lines: 2361-2367)
# Address: 0x0da50840 - 0x0da50894 (Size: 84 bytes, Frame: 32)
.globl __glsplc_PassThrough
.ent __glsplc_PassThrough
__glsplc_PassThrough:
    # Line 2361
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,1944
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2364
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,122
    # Line 2361
    sd	$ra,8($sp)
    # Line 2364
    li	$a0,4
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da50888
    ld	$ra,8($sp)
    # Line 2366
    ldc1	$f0,0($sp)
    # Line 2367
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2366
    swc1	$f0,0($v0)
.L0da50888:
    # Line 2367
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PassThrough

# Function: __glsplc_PopName
# Declared: Line 2370 (Source lines: 2371-2376)
# Address: 0x0da508a0 - 0x0da508d8 (Size: 56 bytes, Frame: 16)
.globl __glsplc_PopName
.ent __glsplc_PopName
__glsplc_PopName:
    # Line 2371
    lui	$at,0x4
    addiu	$sp,$sp,-16
    addiu	$at,$at,1848
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 2374
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,123
    # Line 2371
    sd	$ra,0($sp)
    # Line 2374
    jal	__glSPDlalloc
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 2376
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_PopName

# Function: __glsplc_PushName
# Declared: Line 2379 (Source lines: 2380-2386)
# Address: 0x0da508e0 - 0x0da50934 (Size: 84 bytes, Frame: 32)
.globl __glsplc_PushName
.ent __glsplc_PushName
__glsplc_PushName:
    # Line 2380
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,1784
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2383
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,124
    # Line 2380
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2383
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da50928
    ld	$ra,0($sp)
    # Line 2386
    ld	$gp,16($sp)
    # Line 2385
    ld	$v1,8($sp)
    # Line 2386
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2385
    sw	$v1,0($v0)
.L0da50928:
    # Line 2386
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PushName

# Function: __glsplc_DrawBuffer
# Declared: Line 2389 (Source lines: 2390-2396)
# Address: 0x0da50940 - 0x0da50994 (Size: 84 bytes, Frame: 32)
.globl __glsplc_DrawBuffer
.ent __glsplc_DrawBuffer
__glsplc_DrawBuffer:
    # Line 2390
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,1688
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2393
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,125
    # Line 2390
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2393
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da50988
    ld	$ra,0($sp)
    # Line 2396
    ld	$gp,16($sp)
    # Line 2395
    ld	$v1,8($sp)
    # Line 2396
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2395
    sw	$v1,0($v0)
.L0da50988:
    # Line 2396
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_DrawBuffer

# Function: __glsplc_Clear
# Declared: Line 2399 (Source lines: 2400-2406)
# Address: 0x0da509a0 - 0x0da509f4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_Clear
.ent __glsplc_Clear
__glsplc_Clear:
    # Line 2400
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,1592
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2403
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,126
    # Line 2400
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2403
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da509e8
    ld	$ra,0($sp)
    # Line 2406
    ld	$gp,16($sp)
    # Line 2405
    ld	$v1,8($sp)
    # Line 2406
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2405
    sw	$v1,0($v0)
.L0da509e8:
    # Line 2406
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Clear

# Function: __glsplc_ClearAccum
# Declared: Line 2409 (Source lines: 2410-2419)
# Address: 0x0da50a00 - 0x0da50a78 (Size: 120 bytes, Frame: 48)
.globl __glsplc_ClearAccum
.ent __glsplc_ClearAccum
__glsplc_ClearAccum:
    # Line 2410
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,1496
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2413
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2410
    sdc1	$f13,8($sp)
    # Line 2413
    li	$a1,127
    # Line 2410
    sd	$ra,32($sp)
    # Line 2413
    li	$a0,16
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da50a6c
    ld	$ra,32($sp)
    # Line 2419
    ld	$gp,40($sp)
    # Line 2415
    ldc1	$f0,0($sp)
    # Line 2416
    ldc1	$f1,8($sp)
    # Line 2418
    ldc1	$f3,24($sp)
    # Line 2417
    ldc1	$f2,16($sp)
    # Line 2418
    swc1	$f3,12($v0)
    # Line 2417
    swc1	$f2,8($v0)
    # Line 2416
    swc1	$f1,4($v0)
    # Line 2419
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2415
    swc1	$f0,0($v0)
.L0da50a6c:
    # Line 2419
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_ClearAccum

# Function: __glsplc_ClearIndex
# Declared: Line 2422 (Source lines: 2423-2429)
# Address: 0x0da50a80 - 0x0da50ad4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_ClearIndex
.ent __glsplc_ClearIndex
__glsplc_ClearIndex:
    # Line 2423
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,1368
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2426
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,128
    # Line 2423
    sd	$ra,8($sp)
    # Line 2426
    li	$a0,4
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da50ac8
    ld	$ra,8($sp)
    # Line 2428
    ldc1	$f0,0($sp)
    # Line 2429
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2428
    swc1	$f0,0($v0)
.L0da50ac8:
    # Line 2429
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ClearIndex

# Function: __glsplc_ClearColor
# Declared: Line 2432 (Source lines: 2433-2442)
# Address: 0x0da50ae0 - 0x0da50b58 (Size: 120 bytes, Frame: 48)
.globl __glsplc_ClearColor
.ent __glsplc_ClearColor
__glsplc_ClearColor:
    # Line 2433
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,1272
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2436
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2433
    sdc1	$f13,8($sp)
    # Line 2436
    li	$a1,129
    # Line 2433
    sd	$ra,32($sp)
    # Line 2436
    li	$a0,16
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da50b4c
    ld	$ra,32($sp)
    # Line 2442
    ld	$gp,40($sp)
    # Line 2438
    ldc1	$f0,0($sp)
    # Line 2439
    ldc1	$f1,8($sp)
    # Line 2441
    ldc1	$f3,24($sp)
    # Line 2440
    ldc1	$f2,16($sp)
    # Line 2441
    swc1	$f3,12($v0)
    # Line 2440
    swc1	$f2,8($v0)
    # Line 2439
    swc1	$f1,4($v0)
    # Line 2442
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2438
    swc1	$f0,0($v0)
.L0da50b4c:
    # Line 2442
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_ClearColor

# Function: __glsplc_ClearStencil
# Declared: Line 2445 (Source lines: 2446-2452)
# Address: 0x0da50b60 - 0x0da50bb4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_ClearStencil
.ent __glsplc_ClearStencil
__glsplc_ClearStencil:
    # Line 2446
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,1144
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2449
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,130
    # Line 2446
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2449
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da50ba8
    ld	$ra,0($sp)
    # Line 2452
    ld	$gp,16($sp)
    # Line 2451
    ld	$v1,8($sp)
    # Line 2452
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2451
    sw	$v1,0($v0)
.L0da50ba8:
    # Line 2452
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ClearStencil

# Function: __glsplc_ClearDepth
# Declared: Line 2455 (Source lines: 2456-2462)
# Address: 0x0da50bc0 - 0x0da50c14 (Size: 84 bytes, Frame: 32)
.globl __glsplc_ClearDepth
.ent __glsplc_ClearDepth
__glsplc_ClearDepth:
    # Line 2456
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,1048
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2459
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,131
    # Line 2456
    sd	$ra,8($sp)
    # Line 2459
    li	$a0,8
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da50c08
    ld	$ra,8($sp)
    # Line 2461
    ldc1	$f0,0($sp)
    # Line 2462
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2461
    sdc1	$f0,0($v0)
.L0da50c08:
    # Line 2462
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ClearDepth

# Function: __glsplc_StencilMask
# Declared: Line 2465 (Source lines: 2466-2472)
# Address: 0x0da50c20 - 0x0da50c74 (Size: 84 bytes, Frame: 32)
.globl __glsplc_StencilMask
.ent __glsplc_StencilMask
__glsplc_StencilMask:
    # Line 2466
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,952
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2469
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,132
    # Line 2466
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2469
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da50c68
    ld	$ra,0($sp)
    # Line 2472
    ld	$gp,16($sp)
    # Line 2471
    ld	$v1,8($sp)
    # Line 2472
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2471
    sw	$v1,0($v0)
.L0da50c68:
    # Line 2472
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_StencilMask

# Function: __glsplc_ColorMask
# Declared: Line 2475 (Source lines: 2476-2485)
# Address: 0x0da50c80 - 0x0da50cf8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_ColorMask
.ent __glsplc_ColorMask
__glsplc_ColorMask:
    # Line 2476
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,856
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2479
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2476
    sd	$a1,16($sp)
    # Line 2479
    li	$a1,133
    # Line 2476
    sd	$a0,8($sp)
    # Line 2479
    li	$a0,4
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da50cec
    ld	$ra,0($sp)
    # Line 2485
    ld	$gp,40($sp)
    # Line 2481
    ld	$v1,8($sp)
    # Line 2482
    ld	$a0,16($sp)
    # Line 2483
    ld	$a1,24($sp)
    # Line 2484
    ld	$a2,32($sp)
    sb	$a2,3($v0)
    # Line 2483
    sb	$a1,2($v0)
    # Line 2482
    sb	$a0,1($v0)
    # Line 2485
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2481
    sb	$v1,0($v0)
.L0da50cec:
    # Line 2485
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_ColorMask

# Function: __glsplc_DepthMask
# Declared: Line 2488 (Source lines: 2489-2495)
# Address: 0x0da50d00 - 0x0da50d54 (Size: 84 bytes, Frame: 32)
.globl __glsplc_DepthMask
.ent __glsplc_DepthMask
__glsplc_DepthMask:
    # Line 2489
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,728
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2492
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,134
    # Line 2489
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2492
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da50d48
    ld	$ra,0($sp)
    # Line 2495
    ld	$gp,16($sp)
    # Line 2494
    ld	$v1,8($sp)
    # Line 2495
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2494
    sb	$v1,0($v0)
.L0da50d48:
    # Line 2495
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_DepthMask

# Function: __glsplc_IndexMask
# Declared: Line 2498 (Source lines: 2499-2505)
# Address: 0x0da50d60 - 0x0da50db4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_IndexMask
.ent __glsplc_IndexMask
__glsplc_IndexMask:
    # Line 2499
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,632
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2502
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,135
    # Line 2499
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2502
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da50da8
    ld	$ra,0($sp)
    # Line 2505
    ld	$gp,16($sp)
    # Line 2504
    ld	$v1,8($sp)
    # Line 2505
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2504
    sw	$v1,0($v0)
.L0da50da8:
    # Line 2505
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_IndexMask

# Function: __glsplc_Accum
# Declared: Line 2508 (Source lines: 2509-2516)
# Address: 0x0da50dc0 - 0x0da50e20 (Size: 96 bytes, Frame: 32)
.globl __glsplc_Accum
.ent __glsplc_Accum
__glsplc_Accum:
    # Line 2509
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,536
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2512
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2509
    sd	$ra,8($sp)
    # Line 2512
    li	$a1,136
    # Line 2509
    sd	$a0,16($sp)
    # Line 2512
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da50e14
    ld	$ra,8($sp)
    # Line 2516
    ld	$gp,24($sp)
    # Line 2514
    ld	$v1,16($sp)
    # Line 2515
    ldc1	$f0,0($sp)
    # Line 2514
    sw	$v1,0($v0)
    # Line 2516
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2515
    swc1	$f0,4($v0)
.L0da50e14:
    # Line 2516
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Accum

# Function: __glsplc_PopAttrib
# Declared: Line 2523 (Source lines: 2524-2529)
# Address: 0x0da50e20 - 0x0da50e58 (Size: 56 bytes, Frame: 16)
.globl __glsplc_PopAttrib
.ent __glsplc_PopAttrib
__glsplc_PopAttrib:
    # Line 2524
    lui	$at,0x4
    addiu	$sp,$sp,-16
    addiu	$at,$at,440
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 2527
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,139
    # Line 2524
    sd	$ra,0($sp)
    # Line 2527
    jal	__glSPDlalloc
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 2529
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_PopAttrib

# Function: __glsplc_PushAttrib
# Declared: Line 2532 (Source lines: 2533-2539)
# Address: 0x0da50e60 - 0x0da50eb4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_PushAttrib
.ent __glsplc_PushAttrib
__glsplc_PushAttrib:
    # Line 2533
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,376
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2536
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,140
    # Line 2533
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2536
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da50ea8
    ld	$ra,0($sp)
    # Line 2539
    ld	$gp,16($sp)
    # Line 2538
    ld	$v1,8($sp)
    # Line 2539
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2538
    sw	$v1,0($v0)
.L0da50ea8:
    # Line 2539
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PushAttrib

# Function: __glsplc_MapGrid1d
# Declared: Line 2546 (Source lines: 2547-2555)
# Address: 0x0da50ec0 - 0x0da50f2c (Size: 108 bytes, Frame: 48)
.globl __glsplc_MapGrid1d
.ent __glsplc_MapGrid1d
__glsplc_MapGrid1d:
    # Line 2547
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,8($sp)
    addiu	$at,$at,280
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 2550
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 2547
    sd	$ra,16($sp)
    # Line 2550
    li	$a1,145
    # Line 2547
    sd	$a0,24($sp)
    # Line 2550
    li	$a0,24
    jal	__glSPDlalloc2
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da50f20
    ld	$ra,16($sp)
    # Line 2555
    ld	$gp,32($sp)
    # Line 2552
    ld	$v1,24($sp)
    sw	$v1,16($v0)
    # Line 2553
    ldc1	$f0,0($sp)
    # Line 2554
    ldc1	$f1,8($sp)
    # Line 2553
    sdc1	$f0,0($v0)
    # Line 2555
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2554
    sdc1	$f1,8($v0)
.L0da50f20:
    # Line 2555
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_MapGrid1d

# Function: __glsplc_MapGrid1f
# Declared: Line 2558 (Source lines: 2559-2567)
# Address: 0x0da50f30 - 0x0da50f9c (Size: 108 bytes, Frame: 48)
.globl __glsplc_MapGrid1f
.ent __glsplc_MapGrid1f
__glsplc_MapGrid1f:
    # Line 2559
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,8($sp)
    addiu	$at,$at,168
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 2562
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2559
    sd	$ra,16($sp)
    # Line 2562
    li	$a1,146
    # Line 2559
    sd	$a0,24($sp)
    # Line 2562
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da50f90
    ld	$ra,16($sp)
    # Line 2567
    ld	$gp,32($sp)
    # Line 2564
    ld	$v1,24($sp)
    sw	$v1,0($v0)
    # Line 2565
    ldc1	$f0,0($sp)
    # Line 2566
    ldc1	$f1,8($sp)
    # Line 2565
    swc1	$f0,4($v0)
    # Line 2567
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2566
    swc1	$f1,8($v0)
.L0da50f90:
    # Line 2567
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_MapGrid1f

# Function: __glsplc_MapGrid2d
# Declared: Line 2570 (Source lines: 2571-2582)
# Address: 0x0da50fa0 - 0x0da51030 (Size: 144 bytes, Frame: 192)
.globl __glsplc_MapGrid2d
.ent __glsplc_MapGrid2d
__glsplc_MapGrid2d:
    # Line 2571
    addiu	$sp,$sp,-64
    sdc1	$f17,24($sp)
    sdc1	$f16,16($sp)
    sdc1	$f14,8($sp)
    lui	$at,0x4
    sd	$a3,48($sp)
    addiu	$at,$at,56
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 2574
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 2571
    sd	$ra,32($sp)
    # Line 2574
    li	$a1,147
    # Line 2571
    sd	$a0,40($sp)
    # Line 2574
    li	$a0,40
    jal	__glSPDlalloc2
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da51024
    ld	$ra,32($sp)
    # Line 2582
    ld	$gp,56($sp)
    # Line 2576
    ld	$v1,40($sp)
    # Line 2579
    ld	$a0,48($sp)
    sw	$a0,36($v0)
    # Line 2576
    sw	$v1,32($v0)
    # Line 2577
    ldc1	$f0,0($sp)
    # Line 2578
    ldc1	$f1,8($sp)
    # Line 2581
    ldc1	$f3,24($sp)
    # Line 2580
    ldc1	$f2,16($sp)
    # Line 2581
    sdc1	$f3,24($v0)
    # Line 2580
    sdc1	$f2,16($v0)
    # Line 2578
    sdc1	$f1,8($v0)
    # Line 2582
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2577
    sdc1	$f0,0($v0)
.L0da51024:
    # Line 2582
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_MapGrid2d

# Function: __glsplc_MapGrid2f
# Declared: Line 2585 (Source lines: 2586-2597)
# Address: 0x0da51030 - 0x0da510c0 (Size: 144 bytes, Frame: 192)
.globl __glsplc_MapGrid2f
.ent __glsplc_MapGrid2f
__glsplc_MapGrid2f:
    # Line 2586
    addiu	$sp,$sp,-64
    sdc1	$f17,24($sp)
    sdc1	$f16,16($sp)
    sdc1	$f14,8($sp)
    lui	$at,0x4
    sd	$a3,48($sp)
    addiu	$at,$at,-88
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 2589
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2586
    sd	$ra,32($sp)
    # Line 2589
    li	$a1,148
    # Line 2586
    sd	$a0,40($sp)
    # Line 2589
    li	$a0,24
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da510b4
    ld	$ra,32($sp)
    # Line 2597
    ld	$gp,56($sp)
    # Line 2591
    ld	$v1,40($sp)
    # Line 2594
    ld	$a0,48($sp)
    sw	$a0,12($v0)
    # Line 2591
    sw	$v1,0($v0)
    # Line 2592
    ldc1	$f0,0($sp)
    # Line 2593
    ldc1	$f1,8($sp)
    # Line 2596
    ldc1	$f3,24($sp)
    # Line 2595
    ldc1	$f2,16($sp)
    # Line 2596
    swc1	$f3,20($v0)
    # Line 2595
    swc1	$f2,16($v0)
    # Line 2593
    swc1	$f1,8($v0)
    # Line 2597
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2592
    swc1	$f0,4($v0)
.L0da510b4:
    # Line 2597
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_MapGrid2f

# Function: __glsplc_EvalCoord1d
# Declared: Line 2600 (Source lines: 2601-2607)
# Address: 0x0da510c0 - 0x0da51114 (Size: 84 bytes, Frame: 32)
.globl __glsplc_EvalCoord1d
.ent __glsplc_EvalCoord1d
__glsplc_EvalCoord1d:
    # Line 2601
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-232
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2604
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,149
    # Line 2601
    sd	$ra,8($sp)
    # Line 2604
    li	$a0,8
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da51108
    ld	$ra,8($sp)
    # Line 2606
    ldc1	$f0,0($sp)
    # Line 2607
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2606
    sdc1	$f0,0($v0)
.L0da51108:
    # Line 2607
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalCoord1d

# Function: __glsplc_EvalCoord1dv
# Declared: Line 2610 (Source lines: 2611-2617)
# Address: 0x0da51120 - 0x0da51178 (Size: 88 bytes, Frame: 32)
.globl __glsplc_EvalCoord1dv
.ent __glsplc_EvalCoord1dv
__glsplc_EvalCoord1dv:
    # Line 2611
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-328
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2614
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,149
    # Line 2611
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2614
    jal	__glSPDlalloc2
    li	$a0,8
    beqz	$v0,.L0da5116c
    ld	$ra,0($sp)
    # Line 2616
    ld	$v1,8($sp)
    ldc1	$f0,0($v1)
    # Line 2617
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2616
    sdc1	$f0,0($v0)
.L0da5116c:
    # Line 2617
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalCoord1dv

# Function: __glsplc_EvalCoord1f
# Declared: Line 2620 (Source lines: 2621-2627)
# Address: 0x0da51180 - 0x0da511d4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_EvalCoord1f
.ent __glsplc_EvalCoord1f
__glsplc_EvalCoord1f:
    # Line 2621
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-424
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2624
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,150
    # Line 2621
    sd	$ra,8($sp)
    # Line 2624
    li	$a0,4
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da511c8
    ld	$ra,8($sp)
    # Line 2626
    ldc1	$f0,0($sp)
    # Line 2627
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2626
    swc1	$f0,0($v0)
.L0da511c8:
    # Line 2627
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalCoord1f

# Function: __glsplc_EvalCoord1fv
# Declared: Line 2630 (Source lines: 2631-2637)
# Address: 0x0da511e0 - 0x0da51238 (Size: 88 bytes, Frame: 32)
.globl __glsplc_EvalCoord1fv
.ent __glsplc_EvalCoord1fv
__glsplc_EvalCoord1fv:
    # Line 2631
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-520
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2634
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,150
    # Line 2631
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2634
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da5122c
    ld	$ra,0($sp)
    # Line 2636
    ld	$v1,8($sp)
    lwc1	$f0,0($v1)
    # Line 2637
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2636
    swc1	$f0,0($v0)
.L0da5122c:
    # Line 2637
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalCoord1fv

# Function: __glsplc_EvalCoord2d
# Declared: Line 2640 (Source lines: 2641-2648)
# Address: 0x0da51240 - 0x0da512a0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_EvalCoord2d
.ent __glsplc_EvalCoord2d
__glsplc_EvalCoord2d:
    # Line 2641
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-616
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2644
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 2641
    sdc1	$f13,8($sp)
    # Line 2644
    li	$a1,151
    # Line 2641
    sd	$ra,16($sp)
    # Line 2644
    li	$a0,16
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da51294
    ld	$ra,16($sp)
    # Line 2648
    ld	$gp,24($sp)
    # Line 2646
    ldc1	$f0,0($sp)
    # Line 2647
    ldc1	$f1,8($sp)
    # Line 2646
    sdc1	$f0,0($v0)
    # Line 2648
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2647
    sdc1	$f1,8($v0)
.L0da51294:
    # Line 2648
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalCoord2d

# Function: __glsplc_EvalCoord2dv
# Declared: Line 2651 (Source lines: 2652-2659)
# Address: 0x0da512a0 - 0x0da51300 (Size: 96 bytes, Frame: 32)
.globl __glsplc_EvalCoord2dv
.ent __glsplc_EvalCoord2dv
__glsplc_EvalCoord2dv:
    # Line 2652
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-712
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2655
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,151
    # Line 2652
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2655
    jal	__glSPDlalloc2
    li	$a0,16
    beqz	$v0,.L0da512f4
    ld	$ra,0($sp)
    # Line 2657
    ld	$v1,8($sp)
    ldc1	$f1,0($v1)
    sdc1	$f1,0($v0)
    # Line 2658
    ldc1	$f0,8($v1)
    # Line 2659
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2658
    sdc1	$f0,8($v0)
.L0da512f4:
    # Line 2659
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalCoord2dv

# Function: __glsplc_EvalCoord2f
# Declared: Line 2662 (Source lines: 2663-2670)
# Address: 0x0da51300 - 0x0da51360 (Size: 96 bytes, Frame: 32)
.globl __glsplc_EvalCoord2f
.ent __glsplc_EvalCoord2f
__glsplc_EvalCoord2f:
    # Line 2663
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-808
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2666
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2663
    sdc1	$f13,8($sp)
    # Line 2666
    li	$a1,152
    # Line 2663
    sd	$ra,16($sp)
    # Line 2666
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da51354
    ld	$ra,16($sp)
    # Line 2670
    ld	$gp,24($sp)
    # Line 2668
    ldc1	$f0,0($sp)
    # Line 2669
    ldc1	$f1,8($sp)
    # Line 2668
    swc1	$f0,0($v0)
    # Line 2670
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2669
    swc1	$f1,4($v0)
.L0da51354:
    # Line 2670
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalCoord2f

# Function: __glsplc_EvalCoord2fv
# Declared: Line 2673 (Source lines: 2674-2681)
# Address: 0x0da51360 - 0x0da513c0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_EvalCoord2fv
.ent __glsplc_EvalCoord2fv
__glsplc_EvalCoord2fv:
    # Line 2674
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-904
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2677
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,152
    # Line 2674
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2677
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da513b4
    ld	$ra,0($sp)
    # Line 2679
    ld	$v1,8($sp)
    lwc1	$f1,0($v1)
    swc1	$f1,0($v0)
    # Line 2680
    lwc1	$f0,4($v1)
    # Line 2681
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2680
    swc1	$f0,4($v0)
.L0da513b4:
    # Line 2681
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalCoord2fv

# Function: __glsplc_EvalMesh1
# Declared: Line 2684 (Source lines: 2685-2693)
# Address: 0x0da513c0 - 0x0da5142c (Size: 108 bytes, Frame: 48)
.globl __glsplc_EvalMesh1
.ent __glsplc_EvalMesh1
__glsplc_EvalMesh1:
    # Line 2685
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-1000
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 2688
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2685
    sd	$a1,16($sp)
    # Line 2688
    li	$a1,153
    # Line 2685
    sd	$a0,8($sp)
    # Line 2688
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da51420
    ld	$ra,0($sp)
    # Line 2693
    ld	$gp,32($sp)
    # Line 2690
    ld	$v1,8($sp)
    # Line 2691
    ld	$a0,16($sp)
    # Line 2692
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 2691
    sw	$a0,4($v0)
    # Line 2693
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2690
    sw	$v1,0($v0)
.L0da51420:
    # Line 2693
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_EvalMesh1

# Function: __glsplc_EvalPoint1
# Declared: Line 2696 (Source lines: 2697-2703)
# Address: 0x0da51430 - 0x0da51484 (Size: 84 bytes, Frame: 32)
.globl __glsplc_EvalPoint1
.ent __glsplc_EvalPoint1
__glsplc_EvalPoint1:
    # Line 2697
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-1112
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2700
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,154
    # Line 2697
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2700
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da51478
    ld	$ra,0($sp)
    # Line 2703
    ld	$gp,16($sp)
    # Line 2702
    ld	$v1,8($sp)
    # Line 2703
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2702
    sw	$v1,0($v0)
.L0da51478:
    # Line 2703
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalPoint1

# Function: __glsplc_EvalMesh2
# Declared: Line 2706 (Source lines: 2707-2717)
# Address: 0x0da51490 - 0x0da51514 (Size: 132 bytes, Frame: 192)
.globl __glsplc_EvalMesh2
.ent __glsplc_EvalMesh2
__glsplc_EvalMesh2:
    # Line 2707
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-1208
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 2710
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2707
    sd	$a1,16($sp)
    # Line 2710
    li	$a1,155
    # Line 2707
    sd	$a0,8($sp)
    # Line 2710
    li	$a0,20
    jal	__glSPDlalloc
    sd	$a2,32($sp)
    beqz	$v0,.L0da51508
    ld	$ra,0($sp)
    # Line 2717
    ld	$gp,48($sp)
    # Line 2712
    ld	$v1,8($sp)
    # Line 2713
    ld	$a0,16($sp)
    # Line 2714
    ld	$a1,32($sp)
    # Line 2715
    ld	$a2,40($sp)
    # Line 2716
    ld	$a3,24($sp)
    sw	$a3,16($v0)
    # Line 2715
    sw	$a2,12($v0)
    # Line 2714
    sw	$a1,8($v0)
    # Line 2713
    sw	$a0,4($v0)
    # Line 2717
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2712
    sw	$v1,0($v0)
.L0da51508:
    # Line 2717
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_EvalMesh2

# Function: __glsplc_EvalPoint2
# Declared: Line 2720 (Source lines: 2721-2728)
# Address: 0x0da51520 - 0x0da51580 (Size: 96 bytes, Frame: 32)
.globl __glsplc_EvalPoint2
.ent __glsplc_EvalPoint2
__glsplc_EvalPoint2:
    # Line 2721
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-1352
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2724
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2721
    sd	$a1,16($sp)
    # Line 2724
    li	$a1,156
    # Line 2721
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2724
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da51574
    ld	$ra,0($sp)
    # Line 2728
    ld	$gp,24($sp)
    # Line 2726
    ld	$v1,8($sp)
    # Line 2727
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 2728
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2726
    sw	$v1,0($v0)
.L0da51574:
    # Line 2728
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_EvalPoint2

# Function: __glsplc_AlphaFunc
# Declared: Line 2731 (Source lines: 2732-2739)
# Address: 0x0da51580 - 0x0da515e0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_AlphaFunc
.ent __glsplc_AlphaFunc
__glsplc_AlphaFunc:
    # Line 2732
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-1448
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2735
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2732
    sd	$ra,8($sp)
    # Line 2735
    li	$a1,157
    # Line 2732
    sd	$a0,16($sp)
    # Line 2735
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da515d4
    ld	$ra,8($sp)
    # Line 2739
    ld	$gp,24($sp)
    # Line 2737
    ld	$v1,16($sp)
    # Line 2738
    ldc1	$f0,0($sp)
    # Line 2737
    sw	$v1,0($v0)
    # Line 2739
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2738
    swc1	$f0,4($v0)
.L0da515d4:
    # Line 2739
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_AlphaFunc

# Function: __glsplc_BlendFunc
# Declared: Line 2742 (Source lines: 2743-2750)
# Address: 0x0da515e0 - 0x0da51640 (Size: 96 bytes, Frame: 32)
.globl __glsplc_BlendFunc
.ent __glsplc_BlendFunc
__glsplc_BlendFunc:
    # Line 2743
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-1544
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2746
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2743
    sd	$a1,16($sp)
    # Line 2746
    li	$a1,158
    # Line 2743
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2746
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da51634
    ld	$ra,0($sp)
    # Line 2750
    ld	$gp,24($sp)
    # Line 2748
    ld	$v1,8($sp)
    # Line 2749
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 2750
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2748
    sw	$v1,0($v0)
.L0da51634:
    # Line 2750
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_BlendFunc

# Function: __glsplc_LogicOp
# Declared: Line 2753 (Source lines: 2754-2760)
# Address: 0x0da51640 - 0x0da51694 (Size: 84 bytes, Frame: 32)
.globl __glsplc_LogicOp
.ent __glsplc_LogicOp
__glsplc_LogicOp:
    # Line 2754
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-1640
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2757
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,159
    # Line 2754
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2757
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da51688
    ld	$ra,0($sp)
    # Line 2760
    ld	$gp,16($sp)
    # Line 2759
    ld	$v1,8($sp)
    # Line 2760
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2759
    sw	$v1,0($v0)
.L0da51688:
    # Line 2760
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_LogicOp

# Function: __glsplc_StencilFunc
# Declared: Line 2763 (Source lines: 2764-2772)
# Address: 0x0da516a0 - 0x0da5170c (Size: 108 bytes, Frame: 48)
.globl __glsplc_StencilFunc
.ent __glsplc_StencilFunc
__glsplc_StencilFunc:
    # Line 2764
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-1736
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 2767
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2764
    sd	$a1,16($sp)
    # Line 2767
    li	$a1,160
    # Line 2764
    sd	$a0,8($sp)
    # Line 2767
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da51700
    ld	$ra,0($sp)
    # Line 2772
    ld	$gp,32($sp)
    # Line 2769
    ld	$v1,8($sp)
    # Line 2770
    ld	$a0,16($sp)
    # Line 2771
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 2770
    sw	$a0,4($v0)
    # Line 2772
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2769
    sw	$v1,0($v0)
.L0da51700:
    # Line 2772
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_StencilFunc

# Function: __glsplc_StencilOp
# Declared: Line 2775 (Source lines: 2776-2784)
# Address: 0x0da51710 - 0x0da5177c (Size: 108 bytes, Frame: 48)
.globl __glsplc_StencilOp
.ent __glsplc_StencilOp
__glsplc_StencilOp:
    # Line 2776
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-1848
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 2779
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2776
    sd	$a1,16($sp)
    # Line 2779
    li	$a1,161
    # Line 2776
    sd	$a0,8($sp)
    # Line 2779
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da51770
    ld	$ra,0($sp)
    # Line 2784
    ld	$gp,32($sp)
    # Line 2781
    ld	$v1,8($sp)
    # Line 2782
    ld	$a0,16($sp)
    # Line 2783
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 2782
    sw	$a0,4($v0)
    # Line 2784
    addiu	$sp,$sp,48
    jr	$ra
    # Line 2781
    sw	$v1,0($v0)
.L0da51770:
    # Line 2784
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_StencilOp

# Function: __glsplc_DepthFunc
# Declared: Line 2787 (Source lines: 2788-2794)
# Address: 0x0da51780 - 0x0da517d4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_DepthFunc
.ent __glsplc_DepthFunc
__glsplc_DepthFunc:
    # Line 2788
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-1960
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2791
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,162
    # Line 2788
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2791
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da517c8
    ld	$ra,0($sp)
    # Line 2794
    ld	$gp,16($sp)
    # Line 2793
    ld	$v1,8($sp)
    # Line 2794
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2793
    sw	$v1,0($v0)
.L0da517c8:
    # Line 2794
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_DepthFunc

# Function: __glsplc_PixelZoom
# Declared: Line 2797 (Source lines: 2798-2805)
# Address: 0x0da517e0 - 0x0da51840 (Size: 96 bytes, Frame: 32)
.globl __glsplc_PixelZoom
.ent __glsplc_PixelZoom
__glsplc_PixelZoom:
    # Line 2798
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-2056
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2801
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2798
    sdc1	$f13,8($sp)
    # Line 2801
    li	$a1,163
    # Line 2798
    sd	$ra,16($sp)
    # Line 2801
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da51834
    ld	$ra,16($sp)
    # Line 2805
    ld	$gp,24($sp)
    # Line 2803
    ldc1	$f0,0($sp)
    # Line 2804
    ldc1	$f1,8($sp)
    # Line 2803
    swc1	$f0,0($v0)
    # Line 2805
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2804
    swc1	$f1,4($v0)
.L0da51834:
    # Line 2805
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PixelZoom

# Function: __glsplc_PixelTransferf
# Declared: Line 2808 (Source lines: 2809-2816)
# Address: 0x0da51840 - 0x0da518a0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_PixelTransferf
.ent __glsplc_PixelTransferf
__glsplc_PixelTransferf:
    # Line 2809
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-2152
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2812
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2809
    sd	$ra,8($sp)
    # Line 2812
    li	$a1,164
    # Line 2809
    sd	$a0,16($sp)
    # Line 2812
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da51894
    ld	$ra,8($sp)
    # Line 2816
    ld	$gp,24($sp)
    # Line 2814
    ld	$v1,16($sp)
    # Line 2815
    ldc1	$f0,0($sp)
    # Line 2814
    sw	$v1,0($v0)
    # Line 2816
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2815
    swc1	$f0,4($v0)
.L0da51894:
    # Line 2816
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PixelTransferf

# Function: __glsplc_PixelTransferi
# Declared: Line 2819 (Source lines: 2820-2827)
# Address: 0x0da518a0 - 0x0da51900 (Size: 96 bytes, Frame: 32)
.globl __glsplc_PixelTransferi
.ent __glsplc_PixelTransferi
__glsplc_PixelTransferi:
    # Line 2820
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-2248
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2823
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2820
    sd	$a1,16($sp)
    # Line 2823
    li	$a1,165
    # Line 2820
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2823
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da518f4
    ld	$ra,0($sp)
    # Line 2827
    ld	$gp,24($sp)
    # Line 2825
    ld	$v1,8($sp)
    # Line 2826
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 2827
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2825
    sw	$v1,0($v0)
.L0da518f4:
    # Line 2827
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PixelTransferi

# Function: __glsplc_PixelMapfv
# Declared: Line 2832 (Source lines: 2833-2850)
# Address: 0x0da51900 - 0x0da51998 (Size: 152 bytes, Frame: 48)
.globl __glsplc_PixelMapfv
.ent __glsplc_PixelMapfv
__glsplc_PixelMapfv:
    # Line 2833
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x4
    sd	$s0,24($sp)
    sll	$s0,$a1,0x2
    sd	$ra,40($sp)
    addiu	$at,$at,-2344
    sd	$gp,32($sp)
    bltz	$s0,.L0da51984
    addu	$gp,$t9,$at
    # Line 2844
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,166
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da5195c
    # Line 2848
    ld	$a1,16($sp)
    ld	$ra,40($sp)
.L0da5194c:
    ld	$s0,24($sp)
    # Line 2850
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5195c:
    # Line 2848
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2847
    ld	$a0,8($sp)
    # Line 2848
    move	$a2,$s0
    # Line 2847
    sw	$a0,4($v0)
    # Line 2848
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2846
    sw	$v1,0($v0)
    b	.L0da5194c
    ld	$ra,40($sp)
.L0da51984:
    # Line 2840
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0da5194c
    ld	$ra,40($sp)
.end __glsplc_PixelMapfv

# Function: __glsplc_PixelMapuiv
# Declared: Line 2853 (Source lines: 2854-2871)
# Address: 0x0da519a0 - 0x0da51a38 (Size: 152 bytes, Frame: 48)
.globl __glsplc_PixelMapuiv
.ent __glsplc_PixelMapuiv
__glsplc_PixelMapuiv:
    # Line 2854
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x4
    sd	$s0,24($sp)
    sll	$s0,$a1,0x2
    sd	$ra,40($sp)
    addiu	$at,$at,-2504
    sd	$gp,32($sp)
    bltz	$s0,.L0da51a24
    addu	$gp,$t9,$at
    # Line 2865
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,167
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da519f8
    ld	$ra,40($sp)
.L0da519e8:
    ld	$s0,24($sp)
    # Line 2871
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da519f8:
    # Line 2869
    ld	$a1,16($sp)
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2868
    ld	$a0,8($sp)
    # Line 2869
    move	$a2,$s0
    # Line 2868
    sw	$a0,4($v0)
    # Line 2869
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2867
    sw	$v1,0($v0)
    b	.L0da519e8
    ld	$ra,40($sp)
.L0da51a24:
    # Line 2861
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0da519e8
    ld	$ra,40($sp)
.end __glsplc_PixelMapuiv

# Function: __glsplc_PixelMapusv
# Declared: Line 2874 (Source lines: 2875-2892)
# Address: 0x0da51a40 - 0x0da51ae4 (Size: 164 bytes, Frame: 48)
.globl __glsplc_PixelMapusv
.ent __glsplc_PixelMapusv
__glsplc_PixelMapusv:
    # Line 2875
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    sd	$s0,24($sp)
    addu	$s0,$a1,$a1
    sd	$a1,8($sp)
    li	$t8,-4
    addiu	$s0,$s0,3
    sd	$a0,0($sp)
    lui	$at,0x4
    and	$s0,$s0,$t8
    sd	$ra,40($sp)
    addiu	$at,$at,-2664
    sd	$gp,32($sp)
    bltz	$s0,.L0da51ad0
    addu	$gp,$t9,$at
    # Line 2886
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,168
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da51aa8
    # Line 2890
    ld	$a1,16($sp)
    ld	$ra,40($sp)
.L0da51a98:
    ld	$s0,24($sp)
    # Line 2892
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da51aa8:
    # Line 2890
    ld	$at,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2889
    ld	$v1,8($sp)
    # Line 2890
    move	$a2,$s0
    # Line 2889
    sw	$v1,4($v0)
    # Line 2890
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 2888
    sw	$at,0($v0)
    b	.L0da51a98
    ld	$ra,40($sp)
.L0da51ad0:
    # Line 2882
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0da51a98
    ld	$ra,40($sp)
.end __glsplc_PixelMapusv

# Function: __glsplc_ReadBuffer
# Declared: Line 2895 (Source lines: 2896-2902)
# Address: 0x0da51af0 - 0x0da51b44 (Size: 84 bytes, Frame: 32)
.globl __glsplc_ReadBuffer
.ent __glsplc_ReadBuffer
__glsplc_ReadBuffer:
    # Line 2896
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-2840
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2899
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,169
    # Line 2896
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 2899
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da51b38
    ld	$ra,0($sp)
    # Line 2902
    ld	$gp,16($sp)
    # Line 2901
    ld	$v1,8($sp)
    # Line 2902
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2901
    sw	$v1,0($v0)
.L0da51b38:
    # Line 2902
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ReadBuffer

# Function: __glsplc_CopyPixels
# Declared: Line 2905 (Source lines: 2906-2916)
# Address: 0x0da51b50 - 0x0da51bd4 (Size: 132 bytes, Frame: 192)
.globl __glsplc_CopyPixels
.ent __glsplc_CopyPixels
__glsplc_CopyPixels:
    # Line 2906
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-2936
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 2909
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 2906
    sd	$a1,16($sp)
    # Line 2909
    li	$a1,170
    # Line 2906
    sd	$a0,8($sp)
    # Line 2909
    li	$a0,20
    jal	__glSPDlalloc
    sd	$a2,32($sp)
    beqz	$v0,.L0da51bc8
    ld	$ra,0($sp)
    # Line 2916
    ld	$gp,48($sp)
    # Line 2911
    ld	$v1,8($sp)
    # Line 2912
    ld	$a0,16($sp)
    # Line 2913
    ld	$a1,32($sp)
    # Line 2914
    ld	$a2,40($sp)
    # Line 2915
    ld	$a3,24($sp)
    sw	$a3,16($v0)
    # Line 2914
    sw	$a2,12($v0)
    # Line 2913
    sw	$a1,8($v0)
    # Line 2912
    sw	$a0,4($v0)
    # Line 2916
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2911
    sw	$v1,0($v0)
.L0da51bc8:
    # Line 2916
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_CopyPixels

# Function: __glsplc_DepthRange
# Declared: Line 2951 (Source lines: 2952-2959)
# Address: 0x0da51be0 - 0x0da51c40 (Size: 96 bytes, Frame: 32)
.globl __glsplc_DepthRange
.ent __glsplc_DepthRange
__glsplc_DepthRange:
    # Line 2952
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-3080
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2955
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 2952
    sdc1	$f13,8($sp)
    # Line 2955
    li	$a1,172
    # Line 2952
    sd	$ra,16($sp)
    # Line 2955
    li	$a0,16
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da51c34
    ld	$ra,16($sp)
    # Line 2959
    ld	$gp,24($sp)
    # Line 2957
    ldc1	$f0,0($sp)
    # Line 2958
    ldc1	$f1,8($sp)
    # Line 2957
    sdc1	$f0,0($v0)
    # Line 2959
    addiu	$sp,$sp,32
    jr	$ra
    # Line 2958
    sdc1	$f1,8($v0)
.L0da51c34:
    # Line 2959
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_DepthRange

# Function: __glsplc_Frustum
# Declared: Line 2962 (Source lines: 2963-2974)
# Address: 0x0da51c40 - 0x0da51cd0 (Size: 144 bytes, Frame: 192)
.globl __glsplc_Frustum
.ent __glsplc_Frustum
__glsplc_Frustum:
    # Line 2963
    addiu	$sp,$sp,-64
    sdc1	$f17,40($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,32($sp)
    lui	$at,0x4
    sdc1	$f14,24($sp)
    addiu	$at,$at,-3176
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 2966
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 2963
    sdc1	$f13,8($sp)
    # Line 2966
    li	$a1,173
    # Line 2963
    sd	$ra,48($sp)
    # Line 2966
    li	$a0,48
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da51cc4
    ld	$ra,48($sp)
    # Line 2974
    ld	$gp,56($sp)
    # Line 2968
    ldc1	$f0,0($sp)
    # Line 2969
    ldc1	$f1,8($sp)
    # Line 2970
    ldc1	$f2,24($sp)
    # Line 2971
    ldc1	$f3,32($sp)
    # Line 2973
    ldc1	$f5,40($sp)
    # Line 2972
    ldc1	$f4,16($sp)
    # Line 2973
    sdc1	$f5,40($v0)
    # Line 2972
    sdc1	$f4,32($v0)
    # Line 2971
    sdc1	$f3,24($v0)
    # Line 2970
    sdc1	$f2,16($v0)
    # Line 2969
    sdc1	$f1,8($v0)
    # Line 2974
    addiu	$sp,$sp,64
    jr	$ra
    # Line 2968
    sdc1	$f0,0($v0)
.L0da51cc4:
    # Line 2974
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_Frustum

# Function: __glsplc_LoadIdentity
# Declared: Line 2977 (Source lines: 2978-2983)
# Address: 0x0da51cd0 - 0x0da51d08 (Size: 56 bytes, Frame: 16)
.globl __glsplc_LoadIdentity
.ent __glsplc_LoadIdentity
__glsplc_LoadIdentity:
    # Line 2978
    lui	$at,0x4
    addiu	$sp,$sp,-16
    addiu	$at,$at,-3320
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 2981
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,174
    # Line 2978
    sd	$ra,0($sp)
    # Line 2981
    jal	__glSPDlalloc
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 2983
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_LoadIdentity

# Function: __glsplc_LoadMatrixf
# Declared: Line 2986 (Source lines: 2987-2993)
# Address: 0x0da51d10 - 0x0da51d6c (Size: 92 bytes, Frame: 32)
.globl __glsplc_LoadMatrixf
.ent __glsplc_LoadMatrixf
__glsplc_LoadMatrixf:
    # Line 2987
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-3384
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 2990
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,175
    # Line 2987
    sd	$a0,0($sp)
    sd	$ra,8($sp)
    # Line 2990
    jal	__glSPDlalloc
    li	$a0,64
    bnez	$v0,.L0da51d54
    # Line 2992
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,8($sp)
.L0da51d48:
    # Line 2993
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51d54:
    # Line 2992
    move	$a0,$v0
    ld	$a1,0($sp)
    jal	memcpy
    li	$a2,64
    b	.L0da51d48
    ld	$ra,8($sp)
.end __glsplc_LoadMatrixf

# Function: __glsplc_LoadMatrixd
# Declared: Line 2996 (Source lines: 2997-3003)
# Address: 0x0da51d70 - 0x0da51dcc (Size: 92 bytes, Frame: 32)
.globl __glsplc_LoadMatrixd
.ent __glsplc_LoadMatrixd
__glsplc_LoadMatrixd:
    # Line 2997
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-3480
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3000
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,176
    # Line 2997
    sd	$a0,0($sp)
    sd	$ra,8($sp)
    # Line 3000
    jal	__glSPDlalloc2
    li	$a0,128
    bnez	$v0,.L0da51db4
    # Line 3002
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,8($sp)
.L0da51da8:
    # Line 3003
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51db4:
    # Line 3002
    move	$a0,$v0
    ld	$a1,0($sp)
    jal	memcpy
    li	$a2,128
    b	.L0da51da8
    ld	$ra,8($sp)
.end __glsplc_LoadMatrixd

# Function: __glsplc_MatrixMode
# Declared: Line 3006 (Source lines: 3007-3013)
# Address: 0x0da51dd0 - 0x0da51e24 (Size: 84 bytes, Frame: 32)
.globl __glsplc_MatrixMode
.ent __glsplc_MatrixMode
__glsplc_MatrixMode:
    # Line 3007
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-3576
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3010
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,177
    # Line 3007
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3010
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da51e18
    ld	$ra,0($sp)
    # Line 3013
    ld	$gp,16($sp)
    # Line 3012
    ld	$v1,8($sp)
    # Line 3013
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3012
    sw	$v1,0($v0)
.L0da51e18:
    # Line 3013
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_MatrixMode

# Function: __glsplc_MultMatrixf
# Declared: Line 3016 (Source lines: 3017-3023)
# Address: 0x0da51e30 - 0x0da51e8c (Size: 92 bytes, Frame: 32)
.globl __glsplc_MultMatrixf
.ent __glsplc_MultMatrixf
__glsplc_MultMatrixf:
    # Line 3017
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-3672
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3020
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,178
    # Line 3017
    sd	$a0,0($sp)
    sd	$ra,8($sp)
    # Line 3020
    jal	__glSPDlalloc
    li	$a0,64
    bnez	$v0,.L0da51e74
    # Line 3022
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,8($sp)
.L0da51e68:
    # Line 3023
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51e74:
    # Line 3022
    move	$a0,$v0
    ld	$a1,0($sp)
    jal	memcpy
    li	$a2,64
    b	.L0da51e68
    ld	$ra,8($sp)
.end __glsplc_MultMatrixf

# Function: __glsplc_MultMatrixd
# Declared: Line 3026 (Source lines: 3027-3033)
# Address: 0x0da51e90 - 0x0da51eec (Size: 92 bytes, Frame: 32)
.globl __glsplc_MultMatrixd
.ent __glsplc_MultMatrixd
__glsplc_MultMatrixd:
    # Line 3027
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-3768
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3030
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,179
    # Line 3027
    sd	$a0,0($sp)
    sd	$ra,8($sp)
    # Line 3030
    jal	__glSPDlalloc2
    li	$a0,128
    bnez	$v0,.L0da51ed0
    ld	$ra,8($sp)
.L0da51ec4:
    # Line 3033
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da51ed0:
    # Line 3032
    # lw $t9, -18508($gp) # &memcpy
    move	$a0,$v0
    ld	$a1,0($sp)
    jal	memcpy
    li	$a2,128
    b	.L0da51ec4
    ld	$ra,8($sp)
.end __glsplc_MultMatrixd

# Function: __glsplc_Ortho
# Declared: Line 3036 (Source lines: 3037-3048)
# Address: 0x0da51ef0 - 0x0da51f80 (Size: 144 bytes, Frame: 192)
.globl __glsplc_Ortho
.ent __glsplc_Ortho
__glsplc_Ortho:
    # Line 3037
    addiu	$sp,$sp,-64
    sdc1	$f17,40($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,32($sp)
    lui	$at,0x4
    sdc1	$f14,24($sp)
    addiu	$at,$at,-3864
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 3040
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 3037
    sdc1	$f13,8($sp)
    # Line 3040
    li	$a1,180
    # Line 3037
    sd	$ra,48($sp)
    # Line 3040
    li	$a0,48
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da51f74
    ld	$ra,48($sp)
    # Line 3048
    ld	$gp,56($sp)
    # Line 3042
    ldc1	$f0,0($sp)
    # Line 3043
    ldc1	$f1,8($sp)
    # Line 3044
    ldc1	$f2,24($sp)
    # Line 3045
    ldc1	$f3,32($sp)
    # Line 3047
    ldc1	$f5,40($sp)
    # Line 3046
    ldc1	$f4,16($sp)
    # Line 3047
    sdc1	$f5,40($v0)
    # Line 3046
    sdc1	$f4,32($v0)
    # Line 3045
    sdc1	$f3,24($v0)
    # Line 3044
    sdc1	$f2,16($v0)
    # Line 3043
    sdc1	$f1,8($v0)
    # Line 3048
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3042
    sdc1	$f0,0($v0)
.L0da51f74:
    # Line 3048
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_Ortho

# Function: __glsplc_PopMatrix
# Declared: Line 3051 (Source lines: 3052-3057)
# Address: 0x0da51f80 - 0x0da51fb8 (Size: 56 bytes, Frame: 16)
.globl __glsplc_PopMatrix
.ent __glsplc_PopMatrix
__glsplc_PopMatrix:
    # Line 3052
    lui	$at,0x4
    addiu	$sp,$sp,-16
    addiu	$at,$at,-4008
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 3055
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,181
    # Line 3052
    sd	$ra,0($sp)
    # Line 3055
    jal	__glSPDlalloc
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 3057
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_PopMatrix

# Function: __glsplc_PushMatrix
# Declared: Line 3060 (Source lines: 3061-3066)
# Address: 0x0da51fc0 - 0x0da51ff8 (Size: 56 bytes, Frame: 16)
.globl __glsplc_PushMatrix
.ent __glsplc_PushMatrix
__glsplc_PushMatrix:
    # Line 3061
    lui	$at,0x4
    addiu	$sp,$sp,-16
    addiu	$at,$at,-4072
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 3064
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,182
    # Line 3061
    sd	$ra,0($sp)
    # Line 3064
    jal	__glSPDlalloc
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 3066
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_PushMatrix

# Function: __glsplc_Rotated
# Declared: Line 3069 (Source lines: 3070-3079)
# Address: 0x0da52000 - 0x0da52078 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Rotated
.ent __glsplc_Rotated
__glsplc_Rotated:
    # Line 3070
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,-4136
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 3073
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 3070
    sdc1	$f13,8($sp)
    # Line 3073
    li	$a1,183
    # Line 3070
    sd	$ra,32($sp)
    # Line 3073
    li	$a0,32
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da5206c
    ld	$ra,32($sp)
    # Line 3079
    ld	$gp,40($sp)
    # Line 3075
    ldc1	$f0,0($sp)
    # Line 3076
    ldc1	$f1,8($sp)
    # Line 3078
    ldc1	$f3,24($sp)
    # Line 3077
    ldc1	$f2,16($sp)
    # Line 3078
    sdc1	$f3,24($v0)
    # Line 3077
    sdc1	$f2,16($v0)
    # Line 3076
    sdc1	$f1,8($v0)
    # Line 3079
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3075
    sdc1	$f0,0($v0)
.L0da5206c:
    # Line 3079
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Rotated

# Function: __glsplc_Rotatef
# Declared: Line 3082 (Source lines: 3083-3092)
# Address: 0x0da52080 - 0x0da520f8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Rotatef
.ent __glsplc_Rotatef
__glsplc_Rotatef:
    # Line 3083
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,-4264
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 3086
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3083
    sdc1	$f13,8($sp)
    # Line 3086
    li	$a1,184
    # Line 3083
    sd	$ra,32($sp)
    # Line 3086
    li	$a0,16
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da520ec
    ld	$ra,32($sp)
    # Line 3092
    ld	$gp,40($sp)
    # Line 3088
    ldc1	$f0,0($sp)
    # Line 3089
    ldc1	$f1,8($sp)
    # Line 3091
    ldc1	$f3,24($sp)
    # Line 3090
    ldc1	$f2,16($sp)
    # Line 3091
    swc1	$f3,12($v0)
    # Line 3090
    swc1	$f2,8($v0)
    # Line 3089
    swc1	$f1,4($v0)
    # Line 3092
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3088
    swc1	$f0,0($v0)
.L0da520ec:
    # Line 3092
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Rotatef

# Function: __glsplc_Scaled
# Declared: Line 3095 (Source lines: 3096-3104)
# Address: 0x0da52100 - 0x0da5216c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Scaled
.ent __glsplc_Scaled
__glsplc_Scaled:
    # Line 3096
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,-4392
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3099
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 3096
    sdc1	$f13,8($sp)
    # Line 3099
    li	$a1,185
    # Line 3096
    sd	$ra,24($sp)
    # Line 3099
    li	$a0,24
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da52160
    ld	$ra,24($sp)
    # Line 3104
    ld	$gp,32($sp)
    # Line 3101
    ldc1	$f0,0($sp)
    # Line 3102
    ldc1	$f1,8($sp)
    # Line 3103
    ldc1	$f2,16($sp)
    # Line 3102
    sdc1	$f1,8($v0)
    # Line 3103
    sdc1	$f2,16($v0)
    # Line 3104
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3101
    sdc1	$f0,0($v0)
.L0da52160:
    # Line 3104
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Scaled

# Function: __glsplc_Scalef
# Declared: Line 3107 (Source lines: 3108-3116)
# Address: 0x0da52170 - 0x0da521dc (Size: 108 bytes, Frame: 48)
.globl __glsplc_Scalef
.ent __glsplc_Scalef
__glsplc_Scalef:
    # Line 3108
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,-4504
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3111
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3108
    sdc1	$f13,8($sp)
    # Line 3111
    li	$a1,186
    # Line 3108
    sd	$ra,24($sp)
    # Line 3111
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da521d0
    ld	$ra,24($sp)
    # Line 3116
    ld	$gp,32($sp)
    # Line 3113
    ldc1	$f0,0($sp)
    # Line 3114
    ldc1	$f1,8($sp)
    # Line 3115
    ldc1	$f2,16($sp)
    # Line 3114
    swc1	$f1,4($v0)
    # Line 3115
    swc1	$f2,8($v0)
    # Line 3116
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3113
    swc1	$f0,0($v0)
.L0da521d0:
    # Line 3116
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Scalef

# Function: __glsplc_Translated
# Declared: Line 3119 (Source lines: 3120-3128)
# Address: 0x0da521e0 - 0x0da5224c (Size: 108 bytes, Frame: 48)
.globl __glsplc_Translated
.ent __glsplc_Translated
__glsplc_Translated:
    # Line 3120
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,-4616
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3123
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    # Line 3120
    sdc1	$f13,8($sp)
    # Line 3123
    li	$a1,187
    # Line 3120
    sd	$ra,24($sp)
    # Line 3123
    li	$a0,24
    jal	__glSPDlalloc2
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da52240
    ld	$ra,24($sp)
    # Line 3128
    ld	$gp,32($sp)
    # Line 3125
    ldc1	$f0,0($sp)
    # Line 3126
    ldc1	$f1,8($sp)
    # Line 3127
    ldc1	$f2,16($sp)
    # Line 3126
    sdc1	$f1,8($v0)
    # Line 3127
    sdc1	$f2,16($v0)
    # Line 3128
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3125
    sdc1	$f0,0($v0)
.L0da52240:
    # Line 3128
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Translated

# Function: __glsplc_Translatef
# Declared: Line 3131 (Source lines: 3132-3140)
# Address: 0x0da52250 - 0x0da522bc (Size: 108 bytes, Frame: 48)
.globl __glsplc_Translatef
.ent __glsplc_Translatef
__glsplc_Translatef:
    # Line 3132
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,-4728
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3135
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3132
    sdc1	$f13,8($sp)
    # Line 3135
    li	$a1,188
    # Line 3132
    sd	$ra,24($sp)
    # Line 3135
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da522b0
    ld	$ra,24($sp)
    # Line 3140
    ld	$gp,32($sp)
    # Line 3137
    ldc1	$f0,0($sp)
    # Line 3138
    ldc1	$f1,8($sp)
    # Line 3139
    ldc1	$f2,16($sp)
    # Line 3138
    swc1	$f1,4($v0)
    # Line 3139
    swc1	$f2,8($v0)
    # Line 3140
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3137
    swc1	$f0,0($v0)
.L0da522b0:
    # Line 3140
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Translatef

# Function: __glsplc_Viewport
# Declared: Line 3143 (Source lines: 3144-3153)
# Address: 0x0da522c0 - 0x0da52338 (Size: 120 bytes, Frame: 48)
.globl __glsplc_Viewport
.ent __glsplc_Viewport
__glsplc_Viewport:
    # Line 3144
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-4840
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 3147
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3144
    sd	$a1,16($sp)
    # Line 3147
    li	$a1,189
    # Line 3144
    sd	$a0,8($sp)
    # Line 3147
    li	$a0,16
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da5232c
    ld	$ra,0($sp)
    # Line 3153
    ld	$gp,40($sp)
    # Line 3149
    ld	$v1,8($sp)
    # Line 3150
    ld	$a0,16($sp)
    # Line 3151
    ld	$a1,24($sp)
    # Line 3152
    ld	$a2,32($sp)
    sw	$a2,12($v0)
    # Line 3151
    sw	$a1,8($v0)
    # Line 3150
    sw	$a0,4($v0)
    # Line 3153
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3149
    sw	$v1,0($v0)
.L0da5232c:
    # Line 3153
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_Viewport

# Function: __glsplc_BlendColorEXT
# Declared: Line 3156 (Source lines: 3157-3166)
# Address: 0x0da52340 - 0x0da523b8 (Size: 120 bytes, Frame: 48)
.globl __glsplc_BlendColorEXT
.ent __glsplc_BlendColorEXT
__glsplc_BlendColorEXT:
    # Line 3157
    addiu	$sp,$sp,-48
    sdc1	$f15,24($sp)
    lui	$at,0x4
    sdc1	$f14,16($sp)
    addiu	$at,$at,-4968
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 3160
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3157
    sdc1	$f13,8($sp)
    # Line 3160
    li	$a1,190
    # Line 3157
    sd	$ra,32($sp)
    # Line 3160
    li	$a0,16
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da523ac
    ld	$ra,32($sp)
    # Line 3166
    ld	$gp,40($sp)
    # Line 3162
    ldc1	$f0,0($sp)
    # Line 3163
    ldc1	$f1,8($sp)
    # Line 3165
    ldc1	$f3,24($sp)
    # Line 3164
    ldc1	$f2,16($sp)
    # Line 3165
    swc1	$f3,12($v0)
    # Line 3164
    swc1	$f2,8($v0)
    # Line 3163
    swc1	$f1,4($v0)
    # Line 3166
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3162
    swc1	$f0,0($v0)
.L0da523ac:
    # Line 3166
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_BlendColorEXT

# Function: __glsplc_BlendEquationEXT
# Declared: Line 3169 (Source lines: 3170-3176)
# Address: 0x0da523c0 - 0x0da52414 (Size: 84 bytes, Frame: 32)
.globl __glsplc_BlendEquationEXT
.ent __glsplc_BlendEquationEXT
__glsplc_BlendEquationEXT:
    # Line 3170
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-5096
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3173
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,191
    # Line 3170
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3173
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da52408
    ld	$ra,0($sp)
    # Line 3176
    ld	$gp,16($sp)
    # Line 3175
    ld	$v1,8($sp)
    # Line 3176
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3175
    sw	$v1,0($v0)
.L0da52408:
    # Line 3176
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_BlendEquationEXT

# Function: __glsplc_PolygonOffsetEXT
# Declared: Line 3179 (Source lines: 3180-3187)
# Address: 0x0da52420 - 0x0da52480 (Size: 96 bytes, Frame: 32)
.globl __glsplc_PolygonOffsetEXT
.ent __glsplc_PolygonOffsetEXT
__glsplc_PolygonOffsetEXT:
    # Line 3180
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-5192
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3183
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3180
    sdc1	$f13,8($sp)
    # Line 3183
    li	$a1,192
    # Line 3180
    sd	$ra,16($sp)
    # Line 3183
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da52474
    ld	$ra,16($sp)
    # Line 3187
    ld	$gp,24($sp)
    # Line 3185
    ldc1	$f0,0($sp)
    # Line 3186
    ldc1	$f1,8($sp)
    # Line 3185
    swc1	$f0,0($v0)
    # Line 3187
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3186
    swc1	$f1,4($v0)
.L0da52474:
    # Line 3187
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PolygonOffsetEXT

# Function: __glsplc_ConvolutionParameterfEXT
# Declared: Line 3194 (Source lines: 3195-3203)
# Address: 0x0da52480 - 0x0da524ec (Size: 108 bytes, Frame: 48)
.globl __glsplc_ConvolutionParameterfEXT
.ent __glsplc_ConvolutionParameterfEXT
__glsplc_ConvolutionParameterfEXT:
    # Line 3195
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,8($sp)
    addiu	$at,$at,-5288
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3198
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3195
    sd	$a1,24($sp)
    # Line 3198
    li	$a1,197
    # Line 3195
    sd	$a0,16($sp)
    # Line 3198
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f14,0($sp)
    beqz	$v0,.L0da524e0
    ld	$ra,8($sp)
    # Line 3203
    ld	$gp,32($sp)
    # Line 3200
    ld	$v1,16($sp)
    # Line 3201
    ld	$a0,24($sp)
    sw	$a0,4($v0)
    # Line 3202
    ldc1	$f0,0($sp)
    # Line 3200
    sw	$v1,0($v0)
    # Line 3203
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3202
    swc1	$f0,8($v0)
.L0da524e0:
    # Line 3203
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_ConvolutionParameterfEXT

# Function: __glsplc_ConvolutionParameterfvEXT
# Declared: Line 3206 (Source lines: 3207-3224)
# Address: 0x0da524f0 - 0x0da52594 (Size: 164 bytes, Frame: 48)
.globl __glsplc_ConvolutionParameterfvEXT
.ent __glsplc_ConvolutionParameterfvEXT
__glsplc_ConvolutionParameterfvEXT:
    # Line 3207
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,-5400
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 3212
    # lw $t9, -28520($gp) # &__glConvolutionParameterfvEXT_size
    # Line 3207
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 3212
    move	$a0,$a1
    jal	__glConvolutionParameterfvEXT_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da52580
    # Line 3218
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,198
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da52554
    ld	$ra,24($sp)
.L0da52544:
    ld	$s0,40($sp)
    # Line 3224
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da52554:
    # Line 3222
    ld	$a1,16($sp)
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 3221
    ld	$a0,8($sp)
    # Line 3222
    move	$a2,$s0
    # Line 3221
    sw	$a0,4($v0)
    # Line 3222
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 3220
    sw	$v1,0($v0)
    b	.L0da52544
    ld	$ra,24($sp)
.L0da52580:
    # Line 3214
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da52544
    ld	$ra,24($sp)
.end __glsplc_ConvolutionParameterfvEXT

# Function: __glsplc_ConvolutionParameteriEXT
# Declared: Line 3227 (Source lines: 3228-3236)
# Address: 0x0da525a0 - 0x0da5260c (Size: 108 bytes, Frame: 48)
.globl __glsplc_ConvolutionParameteriEXT
.ent __glsplc_ConvolutionParameteriEXT
__glsplc_ConvolutionParameteriEXT:
    # Line 3228
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-5576
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3231
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3228
    sd	$a1,16($sp)
    # Line 3231
    li	$a1,199
    # Line 3228
    sd	$a0,8($sp)
    # Line 3231
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da52600
    ld	$ra,0($sp)
    # Line 3236
    ld	$gp,32($sp)
    # Line 3233
    ld	$v1,8($sp)
    # Line 3234
    ld	$a0,16($sp)
    # Line 3235
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 3234
    sw	$a0,4($v0)
    # Line 3236
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3233
    sw	$v1,0($v0)
.L0da52600:
    # Line 3236
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_ConvolutionParameteriEXT

# Function: __glsplc_ConvolutionParameterivEXT
# Declared: Line 3239 (Source lines: 3240-3257)
# Address: 0x0da52610 - 0x0da526b4 (Size: 164 bytes, Frame: 48)
.globl __glsplc_ConvolutionParameterivEXT
.ent __glsplc_ConvolutionParameterivEXT
__glsplc_ConvolutionParameterivEXT:
    # Line 3240
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,-5688
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 3245
    # lw $t9, -28516($gp) # &__glConvolutionParameterivEXT_size
    # Line 3240
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 3245
    move	$a0,$a1
    jal	__glConvolutionParameterivEXT_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da526a0
    # Line 3251
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,200
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da52678
    # Line 3255
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da52668:
    ld	$s0,40($sp)
    # Line 3257
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da52678:
    # Line 3255
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 3254
    ld	$a0,8($sp)
    # Line 3255
    move	$a2,$s0
    # Line 3254
    sw	$a0,4($v0)
    # Line 3255
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 3253
    sw	$v1,0($v0)
    b	.L0da52668
    ld	$ra,24($sp)
.L0da526a0:
    # Line 3247
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da52668
    ld	$ra,24($sp)
.end __glsplc_ConvolutionParameterivEXT

# Function: __glsplc_CopyConvolutionFilter1DEXT
# Declared: Line 3260 (Source lines: 3261-3271)
# Address: 0x0da526c0 - 0x0da52744 (Size: 132 bytes, Frame: 192)
.globl __glsplc_CopyConvolutionFilter1DEXT
.ent __glsplc_CopyConvolutionFilter1DEXT
__glsplc_CopyConvolutionFilter1DEXT:
    # Line 3261
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-5864
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 3264
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3261
    sd	$a1,16($sp)
    # Line 3264
    li	$a1,201
    # Line 3261
    sd	$a0,8($sp)
    # Line 3264
    li	$a0,20
    jal	__glSPDlalloc
    sd	$a2,32($sp)
    beqz	$v0,.L0da52738
    ld	$ra,0($sp)
    # Line 3271
    ld	$gp,48($sp)
    # Line 3266
    ld	$v1,8($sp)
    # Line 3267
    ld	$a0,16($sp)
    # Line 3268
    ld	$a1,32($sp)
    # Line 3269
    ld	$a2,40($sp)
    # Line 3270
    ld	$a3,24($sp)
    sw	$a3,16($v0)
    # Line 3269
    sw	$a2,12($v0)
    # Line 3268
    sw	$a1,8($v0)
    # Line 3267
    sw	$a0,4($v0)
    # Line 3271
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3266
    sw	$v1,0($v0)
.L0da52738:
    # Line 3271
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_CopyConvolutionFilter1DEXT

# Function: __glsplc_CopyConvolutionFilter2DEXT
# Declared: Line 3274 (Source lines: 3275-3286)
# Address: 0x0da52750 - 0x0da527e0 (Size: 144 bytes, Frame: 192)
.globl __glsplc_CopyConvolutionFilter2DEXT
.ent __glsplc_CopyConvolutionFilter2DEXT
__glsplc_CopyConvolutionFilter2DEXT:
    # Line 3275
    addiu	$sp,$sp,-64
    sd	$a5,16($sp)
    sd	$a4,32($sp)
    sd	$a3,48($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-6008
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 3278
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3275
    sd	$a1,24($sp)
    # Line 3278
    li	$a1,202
    # Line 3275
    sd	$a0,8($sp)
    # Line 3278
    li	$a0,24
    jal	__glSPDlalloc
    sd	$a2,40($sp)
    beqz	$v0,.L0da527d4
    ld	$ra,0($sp)
    # Line 3286
    ld	$gp,56($sp)
    # Line 3280
    ld	$v1,8($sp)
    # Line 3281
    ld	$a0,24($sp)
    # Line 3282
    ld	$a1,40($sp)
    # Line 3283
    ld	$a2,48($sp)
    # Line 3284
    ld	$a3,32($sp)
    # Line 3285
    ld	$a4,16($sp)
    sw	$a4,20($v0)
    # Line 3284
    sw	$a3,16($v0)
    # Line 3283
    sw	$a2,12($v0)
    # Line 3282
    sw	$a1,8($v0)
    # Line 3281
    sw	$a0,4($v0)
    # Line 3286
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3280
    sw	$v1,0($v0)
.L0da527d4:
    # Line 3286
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_CopyConvolutionFilter2DEXT

# Function: __glsplc_HistogramEXT
# Declared: Line 3300 (Source lines: 3301-3315)
# Address: 0x0da527e0 - 0x0da52880 (Size: 160 bytes, Frame: 48)
.globl __glsplc_HistogramEXT
.ent __glsplc_HistogramEXT
__glsplc_HistogramEXT:
    # Line 3301
    addiu	$sp,$sp,-48
    li	$at,0x8025
    lui	$v1,0x4
    move	$v0,$a3
    sd	$ra,40($sp)
    addiu	$v1,$v1,-6152
    sd	$gp,32($sp)
    beq	$a0,$at,.L0da52864
    addu	$gp,$t9,$v1
    sd	$a2,8($sp)
    # Line 3309
    # lw $t9, -32516($gp) # &__glSPDlalloc
    sd	$a3,0($sp)
    sd	$a1,16($sp)
    li	$a1,204
    sd	$a0,24($sp)
    jal	__glSPDlalloc
    li	$a0,16
    beqz	$v0,.L0da52858
    ld	$ra,40($sp)
    # Line 3315
    ld	$gp,32($sp)
    # Line 3311
    ld	$a0,24($sp)
    # Line 3312
    ld	$a1,16($sp)
    # Line 3313
    ld	$a2,8($sp)
    # Line 3314
    ld	$a3,0($sp)
    sb	$a3,12($v0)
    # Line 3313
    sw	$a2,8($v0)
    # Line 3312
    sw	$a1,4($v0)
    # Line 3315
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3311
    sw	$a0,0($v0)
.L0da52858:
    # Line 3315
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da52864:
    # Line 3306
    lw	$t9,4112($zero)
    lw	$t9,6132($t9)
    lw	$t9,768($t9)
    jalr	$t9
    nop
    b	.L0da52858
    ld	$ra,40($sp)
.end __glsplc_HistogramEXT

# Function: __glsplc_MinmaxEXT
# Declared: Line 3318 (Source lines: 3319-3327)
# Address: 0x0da52880 - 0x0da528ec (Size: 108 bytes, Frame: 48)
.globl __glsplc_MinmaxEXT
.ent __glsplc_MinmaxEXT
__glsplc_MinmaxEXT:
    # Line 3319
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-6312
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3322
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3319
    sd	$a1,16($sp)
    # Line 3322
    li	$a1,205
    # Line 3319
    sd	$a0,8($sp)
    # Line 3322
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da528e0
    ld	$ra,0($sp)
    # Line 3327
    ld	$gp,32($sp)
    # Line 3324
    ld	$v1,8($sp)
    # Line 3325
    ld	$a0,16($sp)
    # Line 3326
    ld	$a1,24($sp)
    sb	$a1,8($v0)
    # Line 3325
    sw	$a0,4($v0)
    # Line 3327
    addiu	$sp,$sp,48
    jr	$ra
    # Line 3324
    sw	$v1,0($v0)
.L0da528e0:
    # Line 3327
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_MinmaxEXT

# Function: __glsplc_ResetHistogramEXT
# Declared: Line 3330 (Source lines: 3331-3337)
# Address: 0x0da528f0 - 0x0da52944 (Size: 84 bytes, Frame: 32)
.globl __glsplc_ResetHistogramEXT
.ent __glsplc_ResetHistogramEXT
__glsplc_ResetHistogramEXT:
    # Line 3331
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-6424
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3334
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,206
    # Line 3331
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3334
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da52938
    ld	$ra,0($sp)
    # Line 3337
    ld	$gp,16($sp)
    # Line 3336
    ld	$v1,8($sp)
    # Line 3337
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3336
    sw	$v1,0($v0)
.L0da52938:
    # Line 3337
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ResetHistogramEXT

# Function: __glsplc_ResetMinmaxEXT
# Declared: Line 3340 (Source lines: 3341-3347)
# Address: 0x0da52950 - 0x0da529a4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_ResetMinmaxEXT
.ent __glsplc_ResetMinmaxEXT
__glsplc_ResetMinmaxEXT:
    # Line 3341
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-6520
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3344
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,207
    # Line 3341
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3344
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da52998
    ld	$ra,0($sp)
    # Line 3347
    ld	$gp,16($sp)
    # Line 3346
    ld	$v1,8($sp)
    # Line 3347
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3346
    sw	$v1,0($v0)
.L0da52998:
    # Line 3347
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ResetMinmaxEXT

# Function: __glsplc_BindTextureEXT
# Declared: Line 3362 (Source lines: 3363-3370)
# Address: 0x0da529b0 - 0x0da52a10 (Size: 96 bytes, Frame: 32)
.globl __glsplc_BindTextureEXT
.ent __glsplc_BindTextureEXT
__glsplc_BindTextureEXT:
    # Line 3363
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-6616
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3366
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3363
    sd	$a1,16($sp)
    # Line 3366
    li	$a1,212
    # Line 3363
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3366
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da52a04
    ld	$ra,0($sp)
    # Line 3370
    ld	$gp,24($sp)
    # Line 3368
    ld	$v1,8($sp)
    # Line 3369
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 3370
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3368
    sw	$v1,0($v0)
.L0da52a04:
    # Line 3370
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_BindTextureEXT

# Function: __glsplc_PrioritizeTexturesEXT
# Declared: Line 3376 (Source lines: 3377-3393)
# Address: 0x0da52a10 - 0x0da52ab0 (Size: 160 bytes, Frame: 192)
.globl __glsplc_PrioritizeTexturesEXT
.ent __glsplc_PrioritizeTexturesEXT
__glsplc_PrioritizeTexturesEXT:
    # Line 3377
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a0,0($sp)
    addiu	$v0,$v0,-6712
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3386
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3377
    sd	$a1,8($sp)
    # Line 3386
    sll	$at,$a0,0x2
    li	$a1,213
    sd	$at,24($sp)
    addu	$at,$at,$at
    # Line 3377
    sd	$ra,40($sp)
    # Line 3386
    jal	__glSPDlalloc
    addiu	$a0,$at,4
    bnez	$v0,.L0da52a68
    sd	$v0,32($sp)
    ld	$ra,40($sp)
.L0da52a5c:
    # Line 3393
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da52a68:
    # Line 3389
    ld	$a2,24($sp)
    ld	$a1,8($sp)
    # lw $t9, -18508($gp) # &memcpy
    ld	$a4,32($sp)
    ld	$a3,0($sp)
    addiu	$a0,$a4,4
    jal	memcpy
    # Line 3388
    sw	$a3,0($a4)
    # Line 3391
    # lw $t9, -18508($gp) # &memcpy
    ld	$a3,32($sp)
    ld	$a0,24($sp)
    move	$a2,$a0
    addu	$a0,$a0,$a3
    ld	$a1,16($sp)
    jal	memcpy
    addiu	$a0,$a0,4
    b	.L0da52a5c
    ld	$ra,40($sp)
.end __glsplc_PrioritizeTexturesEXT

# Function: __glsplc_CopyTexImage1DEXT
# Declared: Line 3396 (Source lines: 3397-3409)
# Address: 0x0da52ab0 - 0x0da52b4c (Size: 156 bytes, Frame: 208)
.globl __glsplc_CopyTexImage1DEXT
.ent __glsplc_CopyTexImage1DEXT
__glsplc_CopyTexImage1DEXT:
    # Line 3397
    addiu	$sp,$sp,-80
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a4,40($sp)
    sd	$a3,56($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-6872
    sd	$gp,64($sp)
    addu	$gp,$t9,$at
    # Line 3400
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3397
    sd	$a1,32($sp)
    # Line 3400
    li	$a1,214
    # Line 3397
    sd	$a0,8($sp)
    # Line 3400
    li	$a0,28
    jal	__glSPDlalloc
    sd	$a2,48($sp)
    beqz	$v0,.L0da52b40
    ld	$ra,0($sp)
    # Line 3409
    ld	$gp,64($sp)
    # Line 3402
    ld	$v1,8($sp)
    # Line 3403
    ld	$a0,32($sp)
    # Line 3404
    ld	$a1,48($sp)
    # Line 3405
    ld	$a2,56($sp)
    # Line 3406
    ld	$a3,40($sp)
    # Line 3407
    ld	$a4,16($sp)
    # Line 3408
    ld	$a5,24($sp)
    sw	$a5,24($v0)
    # Line 3407
    sw	$a4,20($v0)
    # Line 3406
    sw	$a3,16($v0)
    # Line 3405
    sw	$a2,12($v0)
    # Line 3404
    sw	$a1,8($v0)
    # Line 3403
    sw	$a0,4($v0)
    # Line 3409
    addiu	$sp,$sp,80
    jr	$ra
    # Line 3402
    sw	$v1,0($v0)
.L0da52b40:
    # Line 3409
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_CopyTexImage1DEXT

# Function: __glsplc_CopyTexImage2DEXT
# Declared: Line 3412 (Source lines: 3413-3426)
# Address: 0x0da52b50 - 0x0da52bf8 (Size: 168 bytes, Frame: 208)
.globl __glsplc_CopyTexImage2DEXT
.ent __glsplc_CopyTexImage2DEXT
__glsplc_CopyTexImage2DEXT:
    # Line 3413
    addiu	$sp,$sp,-80
    sd	$a7,32($sp)
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a4,48($sp)
    sd	$a3,64($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-7032
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 3416
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3413
    sd	$a1,40($sp)
    # Line 3416
    li	$a1,215
    # Line 3413
    sd	$a0,8($sp)
    # Line 3416
    li	$a0,32
    jal	__glSPDlalloc
    sd	$a2,56($sp)
    beqz	$v0,.L0da52bec
    ld	$ra,0($sp)
    # Line 3426
    ld	$gp,72($sp)
    # Line 3418
    ld	$v1,8($sp)
    # Line 3419
    ld	$a0,40($sp)
    # Line 3420
    ld	$a1,56($sp)
    # Line 3421
    ld	$a2,64($sp)
    # Line 3422
    ld	$a3,48($sp)
    # Line 3423
    ld	$a4,16($sp)
    # Line 3424
    ld	$a5,24($sp)
    # Line 3425
    ld	$a6,32($sp)
    sw	$a6,28($v0)
    # Line 3424
    sw	$a5,24($v0)
    # Line 3423
    sw	$a4,20($v0)
    # Line 3422
    sw	$a3,16($v0)
    # Line 3421
    sw	$a2,12($v0)
    # Line 3420
    sw	$a1,8($v0)
    # Line 3419
    sw	$a0,4($v0)
    # Line 3426
    addiu	$sp,$sp,80
    jr	$ra
    # Line 3418
    sw	$v1,0($v0)
.L0da52bec:
    # Line 3426
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_CopyTexImage2DEXT

# Function: __glsplc_CopyTexSubImage1DEXT
# Declared: Line 3429 (Source lines: 3430-3441)
# Address: 0x0da52c00 - 0x0da52c90 (Size: 144 bytes, Frame: 192)
.globl __glsplc_CopyTexSubImage1DEXT
.ent __glsplc_CopyTexSubImage1DEXT
__glsplc_CopyTexSubImage1DEXT:
    # Line 3430
    addiu	$sp,$sp,-64
    sd	$a5,16($sp)
    sd	$a4,32($sp)
    sd	$a3,48($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-7208
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 3433
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3430
    sd	$a1,24($sp)
    # Line 3433
    li	$a1,216
    # Line 3430
    sd	$a0,8($sp)
    # Line 3433
    li	$a0,24
    jal	__glSPDlalloc
    sd	$a2,40($sp)
    beqz	$v0,.L0da52c84
    ld	$ra,0($sp)
    # Line 3441
    ld	$gp,56($sp)
    # Line 3435
    ld	$v1,8($sp)
    # Line 3436
    ld	$a0,24($sp)
    # Line 3437
    ld	$a1,40($sp)
    # Line 3438
    ld	$a2,48($sp)
    # Line 3439
    ld	$a3,32($sp)
    # Line 3440
    ld	$a4,16($sp)
    sw	$a4,20($v0)
    # Line 3439
    sw	$a3,16($v0)
    # Line 3438
    sw	$a2,12($v0)
    # Line 3437
    sw	$a1,8($v0)
    # Line 3436
    sw	$a0,4($v0)
    # Line 3441
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3435
    sw	$v1,0($v0)
.L0da52c84:
    # Line 3441
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_CopyTexSubImage1DEXT

# Function: __glsplc_CopyTexSubImage2DEXT
# Declared: Line 3444 (Source lines: 3445-3458)
# Address: 0x0da52c90 - 0x0da52d38 (Size: 168 bytes, Frame: 208)
.globl __glsplc_CopyTexSubImage2DEXT
.ent __glsplc_CopyTexSubImage2DEXT
__glsplc_CopyTexSubImage2DEXT:
    # Line 3445
    addiu	$sp,$sp,-80
    sd	$a7,32($sp)
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a4,48($sp)
    sd	$a3,64($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-7352
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 3448
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3445
    sd	$a1,40($sp)
    # Line 3448
    li	$a1,217
    # Line 3445
    sd	$a0,8($sp)
    # Line 3448
    li	$a0,32
    jal	__glSPDlalloc
    sd	$a2,56($sp)
    beqz	$v0,.L0da52d2c
    ld	$ra,0($sp)
    # Line 3458
    ld	$gp,72($sp)
    # Line 3450
    ld	$v1,8($sp)
    # Line 3451
    ld	$a0,40($sp)
    # Line 3452
    ld	$a1,56($sp)
    # Line 3453
    ld	$a2,64($sp)
    # Line 3454
    ld	$a3,48($sp)
    # Line 3455
    ld	$a4,16($sp)
    # Line 3456
    ld	$a5,24($sp)
    # Line 3457
    ld	$a6,32($sp)
    sw	$a6,28($v0)
    # Line 3456
    sw	$a5,24($v0)
    # Line 3455
    sw	$a4,20($v0)
    # Line 3454
    sw	$a3,16($v0)
    # Line 3453
    sw	$a2,12($v0)
    # Line 3452
    sw	$a1,8($v0)
    # Line 3451
    sw	$a0,4($v0)
    # Line 3458
    addiu	$sp,$sp,80
    jr	$ra
    # Line 3450
    sw	$v1,0($v0)
.L0da52d2c:
    # Line 3458
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glsplc_CopyTexSubImage2DEXT

# Function: __glsplc_CopyTexSubImage3DEXT
# Declared: Line 3461 (Source lines: 3462-3476)
# Address: 0x0da52d40 - 0x0da52df0 (Size: 176 bytes, Frame: 144)
.globl __glsplc_CopyTexSubImage3DEXT
.ent __glsplc_CopyTexSubImage3DEXT
__glsplc_CopyTexSubImage3DEXT:
    # Line 3462
    addiu	$sp,$sp,-144
    sd	$a7,32($sp)
    sd	$a6,24($sp)
    sd	$a5,16($sp)
    sd	$a4,48($sp)
    sd	$a3,64($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-7528
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 3465
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3462
    sd	$a1,40($sp)
    # Line 3465
    li	$a1,218
    # Line 3462
    sd	$a0,8($sp)
    # Line 3465
    li	$a0,36
    jal	__glSPDlalloc
    sd	$a2,56($sp)
    beqz	$v0,.L0da52de4
    ld	$ra,0($sp)
    # Line 3476
    ld	$gp,72($sp)
    # Line 3475
    lw	$v1,148($sp)
    # Line 3467
    ld	$a0,8($sp)
    # Line 3468
    ld	$a1,40($sp)
    # Line 3469
    ld	$a2,56($sp)
    # Line 3470
    ld	$a3,64($sp)
    # Line 3471
    ld	$a4,48($sp)
    # Line 3472
    ld	$a5,16($sp)
    # Line 3473
    ld	$a6,24($sp)
    # Line 3474
    ld	$a7,32($sp)
    sw	$a7,28($v0)
    # Line 3473
    sw	$a6,24($v0)
    # Line 3472
    sw	$a5,20($v0)
    # Line 3471
    sw	$a4,16($v0)
    # Line 3470
    sw	$a3,12($v0)
    # Line 3469
    sw	$a2,8($v0)
    # Line 3468
    sw	$a1,4($v0)
    # Line 3467
    sw	$a0,0($v0)
    # Line 3476
    addiu	$sp,$sp,144
    jr	$ra
    # Line 3475
    sw	$v1,32($v0)
.L0da52de4:
    # Line 3476
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end __glsplc_CopyTexSubImage3DEXT

# Function: __glsplc_PolygonOffset
# Declared: Line 3489 (Source lines: 3490-3497)
# Address: 0x0da52df0 - 0x0da52e50 (Size: 96 bytes, Frame: 32)
.globl __glsplc_PolygonOffset
.ent __glsplc_PolygonOffset
__glsplc_PolygonOffset:
    # Line 3490
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-7704
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3493
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3490
    sdc1	$f13,8($sp)
    # Line 3493
    li	$a1,220
    # Line 3490
    sd	$ra,16($sp)
    # Line 3493
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da52e44
    ld	$ra,16($sp)
    # Line 3497
    ld	$gp,24($sp)
    # Line 3495
    ldc1	$f0,0($sp)
    # Line 3496
    ldc1	$f1,8($sp)
    # Line 3495
    swc1	$f0,0($v0)
    # Line 3497
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3496
    swc1	$f1,4($v0)
.L0da52e44:
    # Line 3497
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PolygonOffset

# Function: __glsplc_Indexub
# Declared: Line 3500 (Source lines: 3501-3507)
# Address: 0x0da52e50 - 0x0da52ea4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_Indexub
.ent __glsplc_Indexub
__glsplc_Indexub:
    # Line 3501
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-7800
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3504
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,221
    # Line 3501
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3504
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da52e98
    ld	$ra,0($sp)
    # Line 3507
    ld	$gp,16($sp)
    # Line 3506
    ld	$v1,8($sp)
    # Line 3507
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3506
    sb	$v1,0($v0)
.L0da52e98:
    # Line 3507
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexub

# Function: __glsplc_Indexubv
# Declared: Line 3510 (Source lines: 3511-3517)
# Address: 0x0da52eb0 - 0x0da52f08 (Size: 88 bytes, Frame: 32)
.globl __glsplc_Indexubv
.ent __glsplc_Indexubv
__glsplc_Indexubv:
    # Line 3511
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-7896
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3514
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,221
    # Line 3511
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3514
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da52efc
    ld	$ra,0($sp)
    # Line 3516
    ld	$v1,8($sp)
    # Line 3517
    ld	$gp,16($sp)
    # Line 3516
    lbu	$v1,0($v1)
    # Line 3517
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3516
    sb	$v1,0($v0)
.L0da52efc:
    # Line 3517
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_Indexubv

# Function: __glsplc_SampleMaskSGIS
# Declared: Line 3522 (Source lines: 3523-3530)
# Address: 0x0da52f10 - 0x0da52f70 (Size: 96 bytes, Frame: 32)
.globl __glsplc_SampleMaskSGIS
.ent __glsplc_SampleMaskSGIS
__glsplc_SampleMaskSGIS:
    # Line 3523
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-7992
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3526
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3523
    sd	$ra,8($sp)
    # Line 3526
    li	$a0,8
    # Line 3523
    sd	$a1,16($sp)
    # Line 3526
    li	$a1,222
    jal	__glSPDlalloc
    sdc1	$f12,0($sp)
    beqz	$v0,.L0da52f64
    ld	$ra,8($sp)
    # Line 3530
    ld	$gp,24($sp)
    # Line 3529
    ld	$v1,16($sp)
    # Line 3528
    ldc1	$f0,0($sp)
    # Line 3529
    sb	$v1,4($v0)
    # Line 3530
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3528
    swc1	$f0,0($v0)
.L0da52f64:
    # Line 3530
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_SampleMaskSGIS

# Function: __glsplc_SamplePatternSGIS
# Declared: Line 3533 (Source lines: 3534-3540)
# Address: 0x0da52f70 - 0x0da52fc4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_SamplePatternSGIS
.ent __glsplc_SamplePatternSGIS
__glsplc_SamplePatternSGIS:
    # Line 3534
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-8088
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3537
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,223
    # Line 3534
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3537
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da52fb8
    ld	$ra,0($sp)
    # Line 3540
    ld	$gp,16($sp)
    # Line 3539
    ld	$v1,8($sp)
    # Line 3540
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3539
    sw	$v1,0($v0)
.L0da52fb8:
    # Line 3540
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_SamplePatternSGIS

# Function: __glsplc_TagSampleBufferSGIX
# Declared: Line 3543 (Source lines: 3544-3549)
# Address: 0x0da52fd0 - 0x0da53008 (Size: 56 bytes, Frame: 16)
.globl __glsplc_TagSampleBufferSGIX
.ent __glsplc_TagSampleBufferSGIX
__glsplc_TagSampleBufferSGIX:
    # Line 3544
    lui	$at,0x4
    addiu	$sp,$sp,-16
    addiu	$at,$at,-8184
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 3547
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,224
    # Line 3544
    sd	$ra,0($sp)
    # Line 3547
    jal	__glSPDlalloc
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 3549
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_TagSampleBufferSGIX

# Function: __glsplc_DetailTexFuncSGIS
# Declared: Line 3552 (Source lines: 3553-3570)
# Address: 0x0da53010 - 0x0da530a8 (Size: 152 bytes, Frame: 48)
.globl __glsplc_DetailTexFuncSGIS
.ent __glsplc_DetailTexFuncSGIS
__glsplc_DetailTexFuncSGIS:
    # Line 3553
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x4
    sd	$s0,24($sp)
    sll	$s0,$a1,0x3
    sd	$ra,40($sp)
    addiu	$at,$at,-8248
    sd	$gp,32($sp)
    bltz	$s0,.L0da53094
    addu	$gp,$t9,$at
    # Line 3564
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,225
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da53068
    ld	$ra,40($sp)
.L0da53058:
    ld	$s0,24($sp)
    # Line 3570
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53068:
    # Line 3568
    ld	$a1,16($sp)
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 3567
    ld	$a0,8($sp)
    # Line 3568
    move	$a2,$s0
    # Line 3567
    sw	$a0,4($v0)
    # Line 3568
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 3566
    sw	$v1,0($v0)
    b	.L0da53058
    ld	$ra,40($sp)
.L0da53094:
    # Line 3560
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0da53058
    ld	$ra,40($sp)
.end __glsplc_DetailTexFuncSGIS

# Function: __glsplc_SharpenTexFuncSGIS
# Declared: Line 3574 (Source lines: 3575-3592)
# Address: 0x0da530b0 - 0x0da53148 (Size: 152 bytes, Frame: 48)
.globl __glsplc_SharpenTexFuncSGIS
.ent __glsplc_SharpenTexFuncSGIS
__glsplc_SharpenTexFuncSGIS:
    # Line 3575
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x4
    sd	$s0,24($sp)
    sll	$s0,$a1,0x3
    sd	$ra,40($sp)
    addiu	$at,$at,-8408
    sd	$gp,32($sp)
    bltz	$s0,.L0da53134
    addu	$gp,$t9,$at
    # Line 3586
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,226
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da5310c
    # Line 3590
    ld	$a1,16($sp)
    ld	$ra,40($sp)
.L0da530fc:
    ld	$s0,24($sp)
    # Line 3592
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da5310c:
    # Line 3590
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 3589
    ld	$a0,8($sp)
    # Line 3590
    move	$a2,$s0
    # Line 3589
    sw	$a0,4($v0)
    # Line 3590
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 3588
    sw	$v1,0($v0)
    b	.L0da530fc
    ld	$ra,40($sp)
.L0da53134:
    # Line 3582
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0da530fc
    ld	$ra,40($sp)
.end __glsplc_SharpenTexFuncSGIS

# Function: __glsplc_ColorTableParameterfvSGI
# Declared: Line 3597 (Source lines: 3598-3615)
# Address: 0x0da53150 - 0x0da531f4 (Size: 164 bytes, Frame: 48)
.globl __glsplc_ColorTableParameterfvSGI
.ent __glsplc_ColorTableParameterfvSGI
__glsplc_ColorTableParameterfvSGI:
    # Line 3598
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,-8568
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 3603
    # lw $t9, -26908($gp) # &__glColorTableParameterfvSGI_size
    # Line 3598
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 3603
    move	$a0,$a1
    jal	__glColorTableParameterfvSGI_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da531e0
    # Line 3609
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,228
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da531b8
    # Line 3613
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da531a8:
    ld	$s0,40($sp)
    # Line 3615
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da531b8:
    # Line 3613
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 3612
    ld	$a0,8($sp)
    # Line 3613
    move	$a2,$s0
    # Line 3612
    sw	$a0,4($v0)
    # Line 3613
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 3611
    sw	$v1,0($v0)
    b	.L0da531a8
    ld	$ra,24($sp)
.L0da531e0:
    # Line 3605
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da531a8
    ld	$ra,24($sp)
.end __glsplc_ColorTableParameterfvSGI

# Function: __glsplc_ColorTableParameterivSGI
# Declared: Line 3618 (Source lines: 3619-3636)
# Address: 0x0da53200 - 0x0da532a4 (Size: 164 bytes, Frame: 48)
.globl __glsplc_ColorTableParameterivSGI
.ent __glsplc_ColorTableParameterivSGI
__glsplc_ColorTableParameterivSGI:
    # Line 3619
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,-8744
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 3624
    # lw $t9, -26904($gp) # &__glColorTableParameterivSGI_size
    # Line 3619
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 3624
    move	$a0,$a1
    jal	__glColorTableParameterivSGI_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da53290
    # Line 3630
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,229
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da53268
    # Line 3634
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da53258:
    ld	$s0,40($sp)
    # Line 3636
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53268:
    # Line 3634
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 3633
    ld	$a0,8($sp)
    # Line 3634
    move	$a2,$s0
    # Line 3633
    sw	$a0,4($v0)
    # Line 3634
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 3632
    sw	$v1,0($v0)
    b	.L0da53258
    ld	$ra,24($sp)
.L0da53290:
    # Line 3626
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da53258
    ld	$ra,24($sp)
.end __glsplc_ColorTableParameterivSGI

# Function: __glsplc_CopyColorTableSGI
# Declared: Line 3639 (Source lines: 3640-3650)
# Address: 0x0da532b0 - 0x0da53334 (Size: 132 bytes, Frame: 192)
.globl __glsplc_CopyColorTableSGI
.ent __glsplc_CopyColorTableSGI
__glsplc_CopyColorTableSGI:
    # Line 3640
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-8920
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 3643
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3640
    sd	$a1,16($sp)
    # Line 3643
    li	$a1,230
    # Line 3640
    sd	$a0,8($sp)
    # Line 3643
    li	$a0,20
    jal	__glSPDlalloc
    sd	$a2,32($sp)
    beqz	$v0,.L0da53328
    ld	$ra,0($sp)
    # Line 3650
    ld	$gp,48($sp)
    # Line 3645
    ld	$v1,8($sp)
    # Line 3646
    ld	$a0,16($sp)
    # Line 3647
    ld	$a1,32($sp)
    # Line 3648
    ld	$a2,40($sp)
    # Line 3649
    ld	$a3,24($sp)
    sw	$a3,16($v0)
    # Line 3648
    sw	$a2,12($v0)
    # Line 3647
    sw	$a1,8($v0)
    # Line 3646
    sw	$a0,4($v0)
    # Line 3650
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3645
    sw	$v1,0($v0)
.L0da53328:
    # Line 3650
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_CopyColorTableSGI

# Function: __glsplc_PixelTexGenSGIX
# Declared: Line 3658 (Source lines: 3659-3665)
# Address: 0x0da53340 - 0x0da53394 (Size: 84 bytes, Frame: 32)
.globl __glsplc_PixelTexGenSGIX
.ent __glsplc_PixelTexGenSGIX
__glsplc_PixelTexGenSGIX:
    # Line 3659
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-9064
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3662
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,233
    # Line 3659
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3662
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da53388
    ld	$ra,0($sp)
    # Line 3665
    ld	$gp,16($sp)
    # Line 3664
    ld	$v1,8($sp)
    # Line 3665
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3664
    sw	$v1,0($v0)
.L0da53388:
    # Line 3665
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PixelTexGenSGIX

# Function: __glsplc_SpriteParameterfSGIX
# Declared: Line 3668 (Source lines: 3669-3676)
# Address: 0x0da533a0 - 0x0da53400 (Size: 96 bytes, Frame: 32)
.globl __glsplc_SpriteParameterfSGIX
.ent __glsplc_SpriteParameterfSGIX
__glsplc_SpriteParameterfSGIX:
    # Line 3669
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-9160
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3672
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3669
    sd	$ra,8($sp)
    # Line 3672
    li	$a1,234
    # Line 3669
    sd	$a0,16($sp)
    # Line 3672
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da533f4
    ld	$ra,8($sp)
    # Line 3676
    ld	$gp,24($sp)
    # Line 3674
    ld	$v1,16($sp)
    # Line 3675
    ldc1	$f0,0($sp)
    # Line 3674
    sw	$v1,0($v0)
    # Line 3676
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3675
    swc1	$f0,4($v0)
.L0da533f4:
    # Line 3676
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_SpriteParameterfSGIX

# Function: __glsplc_SpriteParameterfvSGIX
# Declared: Line 3679 (Source lines: 3680-3696)
# Address: 0x0da53400 - 0x0da53494 (Size: 148 bytes, Frame: 48)
.globl __glsplc_SpriteParameterfvSGIX
.ent __glsplc_SpriteParameterfvSGIX
__glsplc_SpriteParameterfvSGIX:
    # Line 3680
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,-9256
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3685
    # lw $t9, -26900($gp) # &__glSpriteParameterfvSGIX_size
    # Line 3680
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3685
    jal	__glSpriteParameterfvSGIX_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da53484
    # Line 3687
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 3691
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,235
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da53464
    # Line 3694
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,16($sp)
.L0da53454:
    ld	$s0,32($sp)
    # Line 3696
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53464:
    # Line 3694
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3693
    sw	$v1,0($v0)
    b	.L0da53454
    ld	$ra,16($sp)
.L0da53484:
    # Line 3687
    jalr	$t9
    nop
    b	.L0da53454
    ld	$ra,16($sp)
.end __glsplc_SpriteParameterfvSGIX

# Function: __glsplc_SpriteParameteriSGIX
# Declared: Line 3699 (Source lines: 3700-3707)
# Address: 0x0da534a0 - 0x0da53500 (Size: 96 bytes, Frame: 32)
.globl __glsplc_SpriteParameteriSGIX
.ent __glsplc_SpriteParameteriSGIX
__glsplc_SpriteParameteriSGIX:
    # Line 3700
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-9416
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3703
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3700
    sd	$a1,16($sp)
    # Line 3703
    li	$a1,236
    # Line 3700
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3703
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da534f4
    ld	$ra,0($sp)
    # Line 3707
    ld	$gp,24($sp)
    # Line 3705
    ld	$v1,8($sp)
    # Line 3706
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 3707
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3705
    sw	$v1,0($v0)
.L0da534f4:
    # Line 3707
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_SpriteParameteriSGIX

# Function: __glsplc_SpriteParameterivSGIX
# Declared: Line 3710 (Source lines: 3711-3727)
# Address: 0x0da53500 - 0x0da53594 (Size: 148 bytes, Frame: 48)
.globl __glsplc_SpriteParameterivSGIX
.ent __glsplc_SpriteParameterivSGIX
__glsplc_SpriteParameterivSGIX:
    # Line 3711
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,-9512
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3716
    # lw $t9, -26896($gp) # &__glSpriteParameterivSGIX_size
    # Line 3711
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3716
    jal	__glSpriteParameterivSGIX_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da53584
    # Line 3718
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 3722
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,237
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da53564
    # Line 3725
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,16($sp)
.L0da53554:
    ld	$s0,32($sp)
    # Line 3727
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53564:
    # Line 3725
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3724
    sw	$v1,0($v0)
    b	.L0da53554
    ld	$ra,16($sp)
.L0da53584:
    # Line 3718
    jalr	$t9
    nop
    b	.L0da53554
    ld	$ra,16($sp)
.end __glsplc_SpriteParameterivSGIX

# Function: __glsplc_TexFilterFuncSGIS
# Declared: Line 3731 (Source lines: 3732-3750)
# Address: 0x0da535a0 - 0x0da53644 (Size: 164 bytes, Frame: 192)
.globl __glsplc_TexFilterFuncSGIS
.ent __glsplc_TexFilterFuncSGIS
__glsplc_TexFilterFuncSGIS:
    # Line 3732
    addiu	$sp,$sp,-64
    sd	$a3,24($sp)
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x4
    sd	$s0,32($sp)
    sll	$s0,$a2,0x2
    sd	$ra,48($sp)
    addiu	$at,$at,-9672
    sd	$gp,40($sp)
    bltz	$s0,.L0da53630
    addu	$gp,$t9,$at
    # Line 3743
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,238
    jal	__glSPDlalloc
    addiu	$a0,$s0,12
    bnez	$v0,.L0da535fc
    ld	$ra,48($sp)
.L0da535ec:
    ld	$s0,32($sp)
    # Line 3750
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da535fc:
    # Line 3748
    ld	$v1,0($sp)
    # Line 3746
    ld	$a0,8($sp)
    # Line 3747
    ld	$a1,16($sp)
    sw	$a1,8($v0)
    # Line 3748
    # lw $t9, -18508($gp) # &memcpy
    ld	$a1,24($sp)
    move	$a2,$s0
    # Line 3746
    sw	$a0,4($v0)
    # Line 3748
    addiu	$a0,$v0,12
    jal	memcpy
    # Line 3745
    sw	$v1,0($v0)
    b	.L0da535ec
    ld	$ra,48($sp)
.L0da53630:
    # Line 3739
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0da535ec
    ld	$ra,48($sp)
.end __glsplc_TexFilterFuncSGIS

# Function: __glsplc_PointParameterfSGIS
# Declared: Line 3753 (Source lines: 3754-3761)
# Address: 0x0da53650 - 0x0da536b0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_PointParameterfSGIS
.ent __glsplc_PointParameterfSGIS
__glsplc_PointParameterfSGIS:
    # Line 3754
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-9848
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3757
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3754
    sd	$ra,8($sp)
    # Line 3757
    li	$a1,239
    # Line 3754
    sd	$a0,16($sp)
    # Line 3757
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da536a4
    ld	$ra,8($sp)
    # Line 3761
    ld	$gp,24($sp)
    # Line 3759
    ld	$v1,16($sp)
    # Line 3760
    ldc1	$f0,0($sp)
    # Line 3759
    sw	$v1,0($v0)
    # Line 3761
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3760
    swc1	$f0,4($v0)
.L0da536a4:
    # Line 3761
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PointParameterfSGIS

# Function: __glsplc_PointParameterfvSGIS
# Declared: Line 3764 (Source lines: 3765-3781)
# Address: 0x0da536b0 - 0x0da53744 (Size: 148 bytes, Frame: 48)
.globl __glsplc_PointParameterfvSGIS
.ent __glsplc_PointParameterfvSGIS
__glsplc_PointParameterfvSGIS:
    # Line 3765
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,-9944
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3770
    # lw $t9, -26892($gp) # &__glPointParameterfvSGIS_size
    # Line 3765
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3770
    jal	__glPointParameterfvSGIS_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da53734
    # Line 3772
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 3776
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,240
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da53714
    # Line 3779
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,16($sp)
.L0da53704:
    ld	$s0,32($sp)
    # Line 3781
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53714:
    # Line 3779
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3778
    sw	$v1,0($v0)
    b	.L0da53704
    ld	$ra,16($sp)
.L0da53734:
    # Line 3772
    jalr	$t9
    nop
    b	.L0da53704
    ld	$ra,16($sp)
.end __glsplc_PointParameterfvSGIS

# Function: __glsplc_FogFuncSGIS
# Declared: Line 3784 (Source lines: 3785-3801)
# Address: 0x0da53750 - 0x0da537dc (Size: 140 bytes, Frame: 48)
.globl __glsplc_FogFuncSGIS
.ent __glsplc_FogFuncSGIS
__glsplc_FogFuncSGIS:
    # Line 3785
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x4
    sd	$s0,16($sp)
    sll	$s0,$a0,0x3
    sd	$ra,32($sp)
    addiu	$at,$at,-10104
    sd	$gp,24($sp)
    bltz	$s0,.L0da537c8
    addu	$gp,$t9,$at
    # Line 3796
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,241
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da537a8
    # Line 3799
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,32($sp)
.L0da53798:
    ld	$s0,16($sp)
    # Line 3801
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da537a8:
    # Line 3799
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3798
    sw	$v1,0($v0)
    b	.L0da53798
    ld	$ra,32($sp)
.L0da537c8:
    # Line 3792
    # lw $t9, -30756($gp) # &__glsplc_InvalidValue
    jal	__glsplc_InvalidValue
    nop
    b	.L0da53798
    ld	$ra,32($sp)
.end __glsplc_FogFuncSGIS

# Function: __glsplc_ReadInstrumentsSGIX
# Declared: Line 3807 (Source lines: 3808-3814)
# Address: 0x0da537e0 - 0x0da53834 (Size: 84 bytes, Frame: 32)
.globl __glsplc_ReadInstrumentsSGIX
.ent __glsplc_ReadInstrumentsSGIX
__glsplc_ReadInstrumentsSGIX:
    # Line 3808
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10248
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3811
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,242
    # Line 3808
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3811
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da53828
    ld	$ra,0($sp)
    # Line 3814
    ld	$gp,16($sp)
    # Line 3813
    ld	$v1,8($sp)
    # Line 3814
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3813
    sw	$v1,0($v0)
.L0da53828:
    # Line 3814
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ReadInstrumentsSGIX

# Function: __glsplc_StartInstrumentsSGIX
# Declared: Line 3817 (Source lines: 3818-3823)
# Address: 0x0da53840 - 0x0da53878 (Size: 56 bytes, Frame: 16)
.globl __glsplc_StartInstrumentsSGIX
.ent __glsplc_StartInstrumentsSGIX
__glsplc_StartInstrumentsSGIX:
    # Line 3818
    lui	$at,0x4
    addiu	$sp,$sp,-16
    addiu	$at,$at,-10344
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 3821
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,243
    # Line 3818
    sd	$ra,0($sp)
    # Line 3821
    jal	__glSPDlalloc
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 3823
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glsplc_StartInstrumentsSGIX

# Function: __glsplc_StopInstrumentsSGIX
# Declared: Line 3826 (Source lines: 3827-3833)
# Address: 0x0da53880 - 0x0da538d4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_StopInstrumentsSGIX
.ent __glsplc_StopInstrumentsSGIX
__glsplc_StopInstrumentsSGIX:
    # Line 3827
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10408
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3830
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,244
    # Line 3827
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3830
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da538c8
    ld	$ra,0($sp)
    # Line 3833
    ld	$gp,16($sp)
    # Line 3832
    ld	$v1,8($sp)
    # Line 3833
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3832
    sw	$v1,0($v0)
.L0da538c8:
    # Line 3833
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_StopInstrumentsSGIX

# Function: __glsplc_ReferencePlaneSGIX
# Declared: Line 3837 (Source lines: 3838-3847)
# Address: 0x0da538e0 - 0x0da53950 (Size: 112 bytes, Frame: 32)
.globl __glsplc_ReferencePlaneSGIX
.ent __glsplc_ReferencePlaneSGIX
__glsplc_ReferencePlaneSGIX:
    # Line 3838
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10504
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3841
    # lw $t9, -32512($gp) # &__glSPDlalloc2
    li	$a1,245
    # Line 3838
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3841
    jal	__glSPDlalloc2
    li	$a0,32
    beqz	$v0,.L0da53944
    ld	$ra,0($sp)
    # Line 3843
    ld	$v1,8($sp)
    ldc1	$f3,0($v1)
    sdc1	$f3,0($v0)
    # Line 3844
    ldc1	$f2,8($v1)
    sdc1	$f2,8($v0)
    # Line 3845
    ldc1	$f1,16($v1)
    sdc1	$f1,16($v0)
    # Line 3846
    ldc1	$f0,24($v1)
    # Line 3847
    ld	$gp,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3846
    sdc1	$f0,24($v0)
.L0da53944:
    # Line 3847
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_ReferencePlaneSGIX

# Function: __glsplc_FrameZoomSGIX
# Declared: Line 3850 (Source lines: 3851-3857)
# Address: 0x0da53950 - 0x0da539a4 (Size: 84 bytes, Frame: 32)
.globl __glsplc_FrameZoomSGIX
.ent __glsplc_FrameZoomSGIX
__glsplc_FrameZoomSGIX:
    # Line 3851
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10616
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3854
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,246
    # Line 3851
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3854
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da53998
    ld	$ra,0($sp)
    # Line 3857
    ld	$gp,16($sp)
    # Line 3856
    ld	$v1,8($sp)
    # Line 3857
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3856
    sw	$v1,0($v0)
.L0da53998:
    # Line 3857
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_FrameZoomSGIX

# Function: __glsplc_DeformSGIX
# Declared: Line 3863 (Source lines: 3864-3870)
# Address: 0x0da539b0 - 0x0da53a04 (Size: 84 bytes, Frame: 32)
.globl __glsplc_DeformSGIX
.ent __glsplc_DeformSGIX
__glsplc_DeformSGIX:
    # Line 3864
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10712
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3867
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,249
    # Line 3864
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3867
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da539f8
    ld	$ra,0($sp)
    # Line 3870
    ld	$gp,16($sp)
    # Line 3869
    ld	$v1,8($sp)
    # Line 3870
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3869
    sw	$v1,0($v0)
.L0da539f8:
    # Line 3870
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_DeformSGIX

# Function: __glsplc_LoadIdentityDeformationMapSGIX
# Declared: Line 3873 (Source lines: 3874-3880)
# Address: 0x0da53a10 - 0x0da53a64 (Size: 84 bytes, Frame: 32)
.globl __glsplc_LoadIdentityDeformationMapSGIX
.ent __glsplc_LoadIdentityDeformationMapSGIX
__glsplc_LoadIdentityDeformationMapSGIX:
    # Line 3874
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10808
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3877
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,250
    # Line 3874
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3877
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da53a58
    ld	$ra,0($sp)
    # Line 3880
    ld	$gp,16($sp)
    # Line 3879
    ld	$v1,8($sp)
    # Line 3880
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3879
    sw	$v1,0($v0)
.L0da53a58:
    # Line 3880
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_LoadIdentityDeformationMapSGIX

# Function: __glsplc_CopyColorSubTable
# Declared: Line 3890 (Source lines: 3891-3901)
# Address: 0x0da53a70 - 0x0da53af4 (Size: 132 bytes, Frame: 192)
.globl __glsplc_CopyColorSubTable
.ent __glsplc_CopyColorSubTable
__glsplc_CopyColorSubTable:
    # Line 3891
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-10904
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 3894
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3891
    sd	$a1,16($sp)
    # Line 3894
    li	$a1,252
    # Line 3891
    sd	$a0,8($sp)
    # Line 3894
    li	$a0,20
    jal	__glSPDlalloc
    sd	$a2,32($sp)
    beqz	$v0,.L0da53ae8
    ld	$ra,0($sp)
    # Line 3901
    ld	$gp,48($sp)
    # Line 3896
    ld	$v1,8($sp)
    # Line 3897
    ld	$a0,16($sp)
    # Line 3898
    ld	$a1,32($sp)
    # Line 3899
    ld	$a2,40($sp)
    # Line 3900
    ld	$a3,24($sp)
    sw	$a3,16($v0)
    # Line 3899
    sw	$a2,12($v0)
    # Line 3898
    sw	$a1,8($v0)
    # Line 3897
    sw	$a0,4($v0)
    # Line 3901
    addiu	$sp,$sp,64
    jr	$ra
    # Line 3896
    sw	$v1,0($v0)
.L0da53ae8:
    # Line 3901
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glsplc_CopyColorSubTable

# Function: __glsplc_PixelTexGenParameteriSGIS
# Declared: Line 3906 (Source lines: 3907-3914)
# Address: 0x0da53b00 - 0x0da53b60 (Size: 96 bytes, Frame: 32)
.globl __glsplc_PixelTexGenParameteriSGIS
.ent __glsplc_PixelTexGenParameteriSGIS
__glsplc_PixelTexGenParameteriSGIS:
    # Line 3907
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-11048
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3910
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3907
    sd	$a1,16($sp)
    # Line 3910
    li	$a1,254
    # Line 3907
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3910
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da53b54
    ld	$ra,0($sp)
    # Line 3914
    ld	$gp,24($sp)
    # Line 3912
    ld	$v1,8($sp)
    # Line 3913
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 3914
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3912
    sw	$v1,0($v0)
.L0da53b54:
    # Line 3914
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PixelTexGenParameteriSGIS

# Function: __glsplc_PixelTexGenParameterivSGIS
# Declared: Line 3917 (Source lines: 3918-3934)
# Address: 0x0da53b60 - 0x0da53bf4 (Size: 148 bytes, Frame: 48)
.globl __glsplc_PixelTexGenParameterivSGIS
.ent __glsplc_PixelTexGenParameterivSGIS
__glsplc_PixelTexGenParameterivSGIS:
    # Line 3918
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,-11144
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3923
    # lw $t9, -26884($gp) # &__glPixelTexGenParameterivSGIS_size
    # Line 3918
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3923
    jal	__glPixelTexGenParameterivSGIS_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da53be4
    # Line 3925
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 3929
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,255
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da53bc4
    # Line 3932
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,16($sp)
.L0da53bb4:
    ld	$s0,32($sp)
    # Line 3934
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53bc4:
    # Line 3932
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3931
    sw	$v1,0($v0)
    b	.L0da53bb4
    ld	$ra,16($sp)
.L0da53be4:
    # Line 3925
    jalr	$t9
    nop
    b	.L0da53bb4
    ld	$ra,16($sp)
.end __glsplc_PixelTexGenParameterivSGIS

# Function: __glsplc_PixelTexGenParameterfSGIS
# Declared: Line 3937 (Source lines: 3938-3945)
# Address: 0x0da53c00 - 0x0da53c60 (Size: 96 bytes, Frame: 32)
.globl __glsplc_PixelTexGenParameterfSGIS
.ent __glsplc_PixelTexGenParameterfSGIS
__glsplc_PixelTexGenParameterfSGIS:
    # Line 3938
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-11304
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3941
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3938
    sd	$ra,8($sp)
    # Line 3941
    li	$a1,256
    # Line 3938
    sd	$a0,16($sp)
    # Line 3941
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da53c54
    ld	$ra,8($sp)
    # Line 3945
    ld	$gp,24($sp)
    # Line 3943
    ld	$v1,16($sp)
    # Line 3944
    ldc1	$f0,0($sp)
    # Line 3943
    sw	$v1,0($v0)
    # Line 3945
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3944
    swc1	$f0,4($v0)
.L0da53c54:
    # Line 3945
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_PixelTexGenParameterfSGIS

# Function: __glsplc_PixelTexGenParameterfvSGIS
# Declared: Line 3948 (Source lines: 3949-3965)
# Address: 0x0da53c60 - 0x0da53cf4 (Size: 148 bytes, Frame: 48)
.globl __glsplc_PixelTexGenParameterfvSGIS
.ent __glsplc_PixelTexGenParameterfvSGIS
__glsplc_PixelTexGenParameterfvSGIS:
    # Line 3949
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,-11400
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3954
    # lw $t9, -26880($gp) # &__glPixelTexGenParameterfvSGIS_size
    # Line 3949
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3954
    jal	__glPixelTexGenParameterfvSGIS_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da53ce0
    # Line 3960
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,257
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da53cbc
    ld	$ra,16($sp)
.L0da53cac:
    ld	$s0,32($sp)
    # Line 3965
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53cbc:
    # Line 3963
    # lw $t9, -18508($gp) # &memcpy
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 3962
    sw	$v1,0($v0)
    b	.L0da53cac
    ld	$ra,16($sp)
.L0da53ce0:
    # Line 3956
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da53cac
    ld	$ra,16($sp)
.end __glsplc_PixelTexGenParameterfvSGIS

# Function: __glsplc_AsyncMarkerSGIX
# Declared: Line 3970 (Source lines: 3971-3977)
# Address: 0x0da53d00 - 0x0da53d54 (Size: 84 bytes, Frame: 32)
.globl __glsplc_AsyncMarkerSGIX
.ent __glsplc_AsyncMarkerSGIX
__glsplc_AsyncMarkerSGIX:
    # Line 3971
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-11560
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3974
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,258
    # Line 3971
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3974
    jal	__glSPDlalloc
    li	$a0,4
    beqz	$v0,.L0da53d48
    ld	$ra,0($sp)
    # Line 3977
    ld	$gp,16($sp)
    # Line 3976
    ld	$v1,8($sp)
    # Line 3977
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3976
    sw	$v1,0($v0)
.L0da53d48:
    # Line 3977
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_AsyncMarkerSGIX

# Function: __glsplc_FragmentColorMaterialSGIX
# Declared: Line 3985 (Source lines: 3986-3993)
# Address: 0x0da53d60 - 0x0da53dc0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_FragmentColorMaterialSGIX
.ent __glsplc_FragmentColorMaterialSGIX
__glsplc_FragmentColorMaterialSGIX:
    # Line 3986
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-11656
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3989
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3986
    sd	$a1,16($sp)
    # Line 3989
    li	$a1,259
    # Line 3986
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 3989
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da53db4
    ld	$ra,0($sp)
    # Line 3993
    ld	$gp,24($sp)
    # Line 3991
    ld	$v1,8($sp)
    # Line 3992
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 3993
    addiu	$sp,$sp,32
    jr	$ra
    # Line 3991
    sw	$v1,0($v0)
.L0da53db4:
    # Line 3993
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_FragmentColorMaterialSGIX

# Function: __glsplc_FragmentLightfSGIX
# Declared: Line 3996 (Source lines: 3997-4005)
# Address: 0x0da53dc0 - 0x0da53e2c (Size: 108 bytes, Frame: 48)
.globl __glsplc_FragmentLightfSGIX
.ent __glsplc_FragmentLightfSGIX
__glsplc_FragmentLightfSGIX:
    # Line 3997
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,8($sp)
    addiu	$at,$at,-11752
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 4000
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 3997
    sd	$a1,24($sp)
    # Line 4000
    li	$a1,260
    # Line 3997
    sd	$a0,16($sp)
    # Line 4000
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f14,0($sp)
    beqz	$v0,.L0da53e20
    ld	$ra,8($sp)
    # Line 4005
    ld	$gp,32($sp)
    # Line 4002
    ld	$v1,16($sp)
    # Line 4003
    ld	$a0,24($sp)
    sw	$a0,4($v0)
    # Line 4004
    ldc1	$f0,0($sp)
    # Line 4002
    sw	$v1,0($v0)
    # Line 4005
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4004
    swc1	$f0,8($v0)
.L0da53e20:
    # Line 4005
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_FragmentLightfSGIX

# Function: __glsplc_FragmentLightfvSGIX
# Declared: Line 4008 (Source lines: 4009-4026)
# Address: 0x0da53e30 - 0x0da53ed4 (Size: 164 bytes, Frame: 48)
.globl __glsplc_FragmentLightfvSGIX
.ent __glsplc_FragmentLightfvSGIX
__glsplc_FragmentLightfvSGIX:
    # Line 4009
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,-11864
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 4014
    # lw $t9, -26868($gp) # &__glFragmentLightfvSGIX_size
    # Line 4009
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 4014
    move	$a0,$a1
    jal	__glFragmentLightfvSGIX_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da53ec0
    # Line 4020
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,261
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da53e98
    # Line 4024
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da53e88:
    ld	$s0,40($sp)
    # Line 4026
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53e98:
    # Line 4024
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 4023
    ld	$a0,8($sp)
    # Line 4024
    move	$a2,$s0
    # Line 4023
    sw	$a0,4($v0)
    # Line 4024
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 4022
    sw	$v1,0($v0)
    b	.L0da53e88
    ld	$ra,24($sp)
.L0da53ec0:
    # Line 4016
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da53e88
    ld	$ra,24($sp)
.end __glsplc_FragmentLightfvSGIX

# Function: __glsplc_FragmentLightiSGIX
# Declared: Line 4029 (Source lines: 4030-4038)
# Address: 0x0da53ee0 - 0x0da53f4c (Size: 108 bytes, Frame: 48)
.globl __glsplc_FragmentLightiSGIX
.ent __glsplc_FragmentLightiSGIX
__glsplc_FragmentLightiSGIX:
    # Line 4030
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-12040
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 4033
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 4030
    sd	$a1,16($sp)
    # Line 4033
    li	$a1,262
    # Line 4030
    sd	$a0,8($sp)
    # Line 4033
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da53f40
    ld	$ra,0($sp)
    # Line 4038
    ld	$gp,32($sp)
    # Line 4035
    ld	$v1,8($sp)
    # Line 4036
    ld	$a0,16($sp)
    # Line 4037
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 4036
    sw	$a0,4($v0)
    # Line 4038
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4035
    sw	$v1,0($v0)
.L0da53f40:
    # Line 4038
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_FragmentLightiSGIX

# Function: __glsplc_FragmentLightivSGIX
# Declared: Line 4041 (Source lines: 4042-4059)
# Address: 0x0da53f50 - 0x0da53ff4 (Size: 164 bytes, Frame: 48)
.globl __glsplc_FragmentLightivSGIX
.ent __glsplc_FragmentLightivSGIX
__glsplc_FragmentLightivSGIX:
    # Line 4042
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    sd	$a1,8($sp)
    addiu	$v0,$v0,-12152
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 4047
    # lw $t9, -26864($gp) # &__glFragmentLightivSGIX_size
    # Line 4042
    sd	$ra,24($sp)
    sd	$a0,0($sp)
    # Line 4047
    move	$a0,$a1
    jal	__glFragmentLightivSGIX_size
    sd	$s0,40($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da53fe4
    # Line 4049
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 4053
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,263
    jal	__glSPDlalloc
    addiu	$a0,$s0,8
    bnez	$v0,.L0da53fbc
    # Line 4057
    ld	$a1,16($sp)
    ld	$ra,24($sp)
.L0da53fac:
    ld	$s0,40($sp)
    # Line 4059
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da53fbc:
    # Line 4057
    ld	$v1,0($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 4056
    ld	$a0,8($sp)
    # Line 4057
    move	$a2,$s0
    # Line 4056
    sw	$a0,4($v0)
    # Line 4057
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 4055
    sw	$v1,0($v0)
    b	.L0da53fac
    ld	$ra,24($sp)
.L0da53fe4:
    # Line 4049
    jalr	$t9
    nop
    b	.L0da53fac
    ld	$ra,24($sp)
.end __glsplc_FragmentLightivSGIX

# Function: __glsplc_FragmentLightModelfSGIX
# Declared: Line 4062 (Source lines: 4063-4070)
# Address: 0x0da54000 - 0x0da54060 (Size: 96 bytes, Frame: 32)
.globl __glsplc_FragmentLightModelfSGIX
.ent __glsplc_FragmentLightModelfSGIX
__glsplc_FragmentLightModelfSGIX:
    # Line 4063
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-12328
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 4066
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 4063
    sd	$ra,8($sp)
    # Line 4066
    li	$a1,264
    # Line 4063
    sd	$a0,16($sp)
    # Line 4066
    li	$a0,8
    jal	__glSPDlalloc
    sdc1	$f13,0($sp)
    beqz	$v0,.L0da54054
    ld	$ra,8($sp)
    # Line 4070
    ld	$gp,24($sp)
    # Line 4068
    ld	$v1,16($sp)
    # Line 4069
    ldc1	$f0,0($sp)
    # Line 4068
    sw	$v1,0($v0)
    # Line 4070
    addiu	$sp,$sp,32
    jr	$ra
    # Line 4069
    swc1	$f0,4($v0)
.L0da54054:
    # Line 4070
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_FragmentLightModelfSGIX

# Function: __glsplc_FragmentLightModelfvSGIX
# Declared: Line 4073 (Source lines: 4074-4090)
# Address: 0x0da54060 - 0x0da540f4 (Size: 148 bytes, Frame: 48)
.globl __glsplc_FragmentLightModelfvSGIX
.ent __glsplc_FragmentLightModelfvSGIX
__glsplc_FragmentLightModelfvSGIX:
    # Line 4074
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,-12424
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 4079
    # lw $t9, -26860($gp) # &__glFragmentLightModelfvSGIX_size
    # Line 4074
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 4079
    jal	__glFragmentLightModelfvSGIX_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da540e4
    # Line 4081
    nop	# was lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    # Line 4085
    # lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,265
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da540c0
    ld	$ra,16($sp)
.L0da540b0:
    ld	$s0,32($sp)
    # Line 4090
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da540c0:
    # Line 4088
    # lw $t9, -18508($gp) # &memcpy
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 4087
    sw	$v1,0($v0)
    b	.L0da540b0
    ld	$ra,16($sp)
.L0da540e4:
    # Line 4081
    jalr	$t9
    nop
    b	.L0da540b0
    ld	$ra,16($sp)
.end __glsplc_FragmentLightModelfvSGIX

# Function: __glsplc_FragmentLightModeliSGIX
# Declared: Line 4093 (Source lines: 4094-4101)
# Address: 0x0da54100 - 0x0da54160 (Size: 96 bytes, Frame: 32)
.globl __glsplc_FragmentLightModeliSGIX
.ent __glsplc_FragmentLightModeliSGIX
__glsplc_FragmentLightModeliSGIX:
    # Line 4094
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-12584
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 4097
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 4094
    sd	$a1,16($sp)
    # Line 4097
    li	$a1,266
    # Line 4094
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 4097
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da54154
    ld	$ra,0($sp)
    # Line 4101
    ld	$gp,24($sp)
    # Line 4099
    ld	$v1,8($sp)
    # Line 4100
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 4101
    addiu	$sp,$sp,32
    jr	$ra
    # Line 4099
    sw	$v1,0($v0)
.L0da54154:
    # Line 4101
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_FragmentLightModeliSGIX

# Function: __glsplc_FragmentLightModelivSGIX
# Declared: Line 4104 (Source lines: 4105-4121)
# Address: 0x0da54160 - 0x0da541f4 (Size: 148 bytes, Frame: 48)
.globl __glsplc_FragmentLightModelivSGIX
.ent __glsplc_FragmentLightModelivSGIX
__glsplc_FragmentLightModelivSGIX:
    # Line 4105
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$a1,8($sp)
    addiu	$at,$at,-12680
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 4110
    # lw $t9, -26856($gp) # &__glFragmentLightModelivSGIX_size
    # Line 4105
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 4110
    jal	__glFragmentLightModelivSGIX_size
    sd	$s0,32($sp)
    sll	$s0,$v0,0x2
    bltz	$s0,.L0da541e0
    # Line 4116
    nop	# was lw $t9, -32516($gp) # &__glSPDlalloc
    li	$a1,267
    jal	__glSPDlalloc
    addiu	$a0,$s0,4
    bnez	$v0,.L0da541c0
    # Line 4119
    nop	# was lw $t9, -18508($gp) # &memcpy
    ld	$ra,16($sp)
.L0da541b0:
    ld	$s0,32($sp)
    # Line 4121
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da541c0:
    # Line 4119
    ld	$a1,8($sp)
    move	$a2,$s0
    ld	$v1,0($sp)
    addiu	$a0,$v0,4
    jal	memcpy
    # Line 4118
    sw	$v1,0($v0)
    b	.L0da541b0
    ld	$ra,16($sp)
.L0da541e0:
    # Line 4112
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da541b0
    ld	$ra,16($sp)
.end __glsplc_FragmentLightModelivSGIX

# Function: __glsplc_FragmentMaterialfSGIX
# Declared: Line 4124 (Source lines: 4125-4133)
# Address: 0x0da54200 - 0x0da5426c (Size: 108 bytes, Frame: 48)
.globl __glsplc_FragmentMaterialfSGIX
.ent __glsplc_FragmentMaterialfSGIX
__glsplc_FragmentMaterialfSGIX:
    # Line 4125
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,8($sp)
    addiu	$at,$at,-12840
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 4128
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 4125
    sd	$a1,24($sp)
    # Line 4128
    li	$a1,268
    # Line 4125
    sd	$a0,16($sp)
    # Line 4128
    li	$a0,12
    jal	__glSPDlalloc
    sdc1	$f14,0($sp)
    beqz	$v0,.L0da54260
    ld	$ra,8($sp)
    # Line 4133
    ld	$gp,32($sp)
    # Line 4130
    ld	$v1,16($sp)
    # Line 4131
    ld	$a0,24($sp)
    sw	$a0,4($v0)
    # Line 4132
    ldc1	$f0,0($sp)
    # Line 4130
    sw	$v1,0($v0)
    # Line 4133
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4132
    swc1	$f0,8($v0)
.L0da54260:
    # Line 4133
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_FragmentMaterialfSGIX

# Function: __glsplc_FragmentMaterialfvSGIX
# Declared: Line 4136 (Source lines: 4137-4160)
# Address: 0x0da54270 - 0x0da54330 (Size: 192 bytes, Frame: 48)
.globl __glsplc_FragmentMaterialfvSGIX
.ent __glsplc_FragmentMaterialfvSGIX
__glsplc_FragmentMaterialfvSGIX:
    # Line 4143
    lwc1	$f14,0($a2)
    # Line 4137
    addiu	$sp,$sp,-48
    lui	$v0,0x4
    sd	$a2,16($sp)
    addiu	$v0,$v0,-12952
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 4143
    # lw $t9, -29200($gp) # &__glErrorCheckMaterial
    # Line 4137
    sd	$a1,24($sp)
    sd	$ra,32($sp)
    # Line 4143
    jal	__glErrorCheckMaterial
    # Line 4137
    sd	$a0,8($sp)
    # Line 4143
    beqz	$v0,.L0da542c4
    # Line 4148
    nop	# was lw $t9, -26876($gp) # &__glFragmentMaterialfvSGIX_size
    # Line 4145
    # lw $t9, -30744($gp) # &__glsplc_Error
    jal	__glsplc_Error
    move	$a0,$v0
.L0da542b4:
    ld	$ra,32($sp)
.L0da542b8:
    # Line 4160
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da542c4:
    # Line 4148
    jalr	$t9
    ld	$a0,24($sp)
    sll	$v1,$v0,0x2
    bltz	$v1,.L0da5431c
    sd	$v1,0($sp)
    # Line 4154
    # lw $t9, -32516($gp) # &__glSPDlalloc
    ld	$a0,0($sp)
    li	$a1,269
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    beqz	$v0,.L0da542b4
    # Line 4158
    ld	$a2,0($sp)
    ld	$a1,16($sp)
    ld	$a3,8($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 4157
    ld	$a4,24($sp)
    sw	$a4,4($v0)
    # Line 4158
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 4156
    sw	$a3,0($v0)
    b	.L0da542b8
    ld	$ra,32($sp)
.L0da5431c:
    # Line 4150
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da542b8
    ld	$ra,32($sp)
.end __glsplc_FragmentMaterialfvSGIX

# Function: __glsplc_FragmentMaterialiSGIX
# Declared: Line 4163 (Source lines: 4164-4172)
# Address: 0x0da54330 - 0x0da5439c (Size: 108 bytes, Frame: 48)
.globl __glsplc_FragmentMaterialiSGIX
.ent __glsplc_FragmentMaterialiSGIX
__glsplc_FragmentMaterialiSGIX:
    # Line 4164
    addiu	$sp,$sp,-48
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-13144
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 4167
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 4164
    sd	$a1,16($sp)
    # Line 4167
    li	$a1,270
    # Line 4164
    sd	$a0,8($sp)
    # Line 4167
    li	$a0,12
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da54390
    ld	$ra,0($sp)
    # Line 4172
    ld	$gp,32($sp)
    # Line 4169
    ld	$v1,8($sp)
    # Line 4170
    ld	$a0,16($sp)
    # Line 4171
    ld	$a1,24($sp)
    sw	$a1,8($v0)
    # Line 4170
    sw	$a0,4($v0)
    # Line 4172
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4169
    sw	$v1,0($v0)
.L0da54390:
    # Line 4172
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_FragmentMaterialiSGIX

# Function: __glsplc_FragmentMaterialivSGIX
# Declared: Line 4175 (Source lines: 4176-4199)
# Address: 0x0da543a0 - 0x0da5446c (Size: 204 bytes, Frame: 48)
.globl __glsplc_FragmentMaterialivSGIX
.ent __glsplc_FragmentMaterialivSGIX
__glsplc_FragmentMaterialivSGIX:
    # Line 4176
    addiu	$sp,$sp,-48
    sd	$a2,16($sp)
    lui	$v0,0x4
    # Line 4182
    lw	$at,0($a2)
    # Line 4176
    addiu	$v0,$v0,-13256
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 4182
    mtc1	$at,$f14
    # lw $t9, -29200($gp) # &__glErrorCheckMaterial
    # Line 4176
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    sd	$ra,32($sp)
    # Line 4182
    jal	__glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0da543fc
    # Line 4187
    nop	# was lw $t9, -26872($gp) # &__glFragmentMaterialivSGIX_size
    # Line 4184
    # lw $t9, -30744($gp) # &__glsplc_Error
    jal	__glsplc_Error
    move	$a0,$v0
    ld	$ra,32($sp)
.L0da543f0:
    # Line 4199
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da543fc:
    # Line 4187
    jalr	$t9
    ld	$a0,24($sp)
    sll	$v1,$v0,0x2
    bltz	$v1,.L0da54458
    sd	$v1,0($sp)
    # Line 4193
    # lw $t9, -32516($gp) # &__glSPDlalloc
    ld	$a0,0($sp)
    li	$a1,271
    jal	__glSPDlalloc
    addiu	$a0,$a0,8
    beqz	$v0,.L0da543f0
    ld	$ra,32($sp)
    # Line 4197
    ld	$a2,0($sp)
    ld	$a1,16($sp)
    ld	$a3,8($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 4196
    ld	$a4,24($sp)
    sw	$a4,4($v0)
    # Line 4197
    addiu	$a0,$v0,8
    jal	memcpy
    # Line 4195
    sw	$a3,0($v0)
    b	.L0da543f0
    ld	$ra,32($sp)
.L0da54458:
    # Line 4189
    # lw $t9, -30752($gp) # &__glsplc_InvalidEnum
    jal	__glsplc_InvalidEnum
    nop
    b	.L0da543f0
    ld	$ra,32($sp)
.end __glsplc_FragmentMaterialivSGIX

# Function: __glsplc_LightEnviSGIX
# Declared: Line 4206 (Source lines: 4207-4214)
# Address: 0x0da54470 - 0x0da544d0 (Size: 96 bytes, Frame: 32)
.globl __glsplc_LightEnviSGIX
.ent __glsplc_LightEnviSGIX
__glsplc_LightEnviSGIX:
    # Line 4207
    lui	$at,0x4
    addiu	$sp,$sp,-32
    addiu	$at,$at,-13464
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 4210
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 4207
    sd	$a1,16($sp)
    # Line 4210
    li	$a1,272
    # Line 4207
    sd	$a0,8($sp)
    sd	$ra,0($sp)
    # Line 4210
    jal	__glSPDlalloc
    li	$a0,8
    beqz	$v0,.L0da544c4
    ld	$ra,0($sp)
    # Line 4214
    ld	$gp,24($sp)
    # Line 4212
    ld	$v1,8($sp)
    # Line 4213
    ld	$a0,16($sp)
    sw	$a0,4($v0)
    # Line 4214
    addiu	$sp,$sp,32
    jr	$ra
    # Line 4212
    sw	$v1,0($v0)
.L0da544c4:
    # Line 4214
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glsplc_LightEnviSGIX

# Function: __glsplc_TextureColorMaskSGIS
# Declared: Line 4217 (Source lines: 4218-4227)
# Address: 0x0da544d0 - 0x0da54548 (Size: 120 bytes, Frame: 48)
.globl __glsplc_TextureColorMaskSGIS
.ent __glsplc_TextureColorMaskSGIS
__glsplc_TextureColorMaskSGIS:
    # Line 4218
    addiu	$sp,$sp,-48
    sd	$a3,32($sp)
    lui	$at,0x4
    sd	$ra,0($sp)
    addiu	$at,$at,-13560
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 4221
    # lw $t9, -32516($gp) # &__glSPDlalloc
    # Line 4218
    sd	$a1,16($sp)
    # Line 4221
    li	$a1,273
    # Line 4218
    sd	$a0,8($sp)
    # Line 4221
    li	$a0,4
    jal	__glSPDlalloc
    sd	$a2,24($sp)
    beqz	$v0,.L0da5453c
    ld	$ra,0($sp)
    # Line 4227
    ld	$gp,40($sp)
    # Line 4223
    ld	$v1,8($sp)
    # Line 4224
    ld	$a0,16($sp)
    # Line 4225
    ld	$a1,24($sp)
    # Line 4226
    ld	$a2,32($sp)
    sb	$a2,3($v0)
    # Line 4225
    sb	$a1,2($v0)
    # Line 4224
    sb	$a0,1($v0)
    # Line 4227
    addiu	$sp,$sp,48
    jr	$ra
    # Line 4223
    sb	$v1,0($v0)
.L0da5453c:
    # Line 4227
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glsplc_TextureColorMaskSGIS

