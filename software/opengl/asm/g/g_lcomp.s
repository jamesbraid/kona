# Source: g_lcomp.c
# Category: g
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=16384 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -DNEW_LISTS -DDLPULL -D__GL_USEASMCODE -DKONA -DIP27 -DR10000 -I. -I../include -I../KONA -I../../../include/KONA/gl -I../KONA.IP27 -I../KONA/texture -I../../../include/KONA -I../../../KONA/include -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c g_lcomp.c
# Total Functions: 318

.text

# Function: __gllc_ListBase
# Declared: Line 38 (Source lines: 39-50)
# Address: 0x0da3a730 - 0x0da3a7a4 (Size: 116 bytes, Frame: 32)
.globl __gllc_ListBase
.ent __gllc_ListBase
__gllc_ListBase:
    # Line 39
    lui	$v0,0x5
    # Line 42
    lw	$at,4112($zero)
    # Line 39
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,26792
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 44
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 42
    sd	$at,8($sp)
    # Line 44
    li	$a1,4
    # Line 39
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 44
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3a77c
    # Line 49
    la	$a2,__glle_ListBase
    ld	$ra,16($sp)
.L0da3a770:
    # Line 50
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3a77c:
    # Line 49
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 46
    li	$v1,2
    sh	$v1,12($v0)
    # Line 48
    ld	$a3,0($sp)
    # Line 49
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 48
    sw	$a3,16($v0)
    b	.L0da3a770
    ld	$ra,16($sp)
.end __gllc_ListBase

# Function: __gllc_Color3b
# Declared: Line 55 (Source lines: 56-70)
# Address: 0x0da3a7b0 - 0x0da3a84c (Size: 156 bytes, Frame: 48)
.globl __gllc_Color3b
.ent __gllc_Color3b
__gllc_Color3b:
    # Line 59
    lw	$at,4112($zero)
    # Line 56
    addiu	$sp,$sp,-48
    # Line 59
    sd	$at,24($sp)
    # Line 56
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,26664
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 61
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 56
    sd	$a1,8($sp)
    # Line 61
    li	$a1,4
    # Line 56
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 61
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3a800
    ld	$ra,32($sp)
.L0da3a7f4:
    # Line 70
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3a800:
    # Line 69
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 65
    ld	$a2,0($sp)
    # Line 66
    ld	$a1,8($sp)
    # Line 67
    ld	$a0,16($sp)
    sb	$a0,18($v0)
    # Line 66
    sb	$a1,17($v0)
    # Line 63
    li	$a3,5
    sh	$a3,12($v0)
    # Line 68
    ld	$a3,24($sp)
    # Line 65
    sb	$a2,16($v0)
    # Line 68
    lw	$v1,4996($a3)
    # Line 69
    la	$a2,__glle_Color3bv
    move	$a1,$v0
    move	$a0,$a3
    # Line 68
    ori	$v1,$v1,0x4
    # Line 69
    jal	__glDlistAppendOp
    # Line 68
    sw	$v1,4996($a3)
    b	.L0da3a7f4
    ld	$ra,32($sp)
.end __gllc_Color3b

# Function: __gllc_Color3bv
# Declared: Line 73 (Source lines: 74-88)
# Address: 0x0da3a850 - 0x0da3a8e8 (Size: 152 bytes, Frame: 32)
.globl __gllc_Color3bv
.ent __gllc_Color3bv
__gllc_Color3bv:
    # Line 74
    lui	$v0,0x5
    # Line 77
    lw	$at,4112($zero)
    # Line 74
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,26504
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 79
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 77
    sd	$at,8($sp)
    # Line 79
    li	$a1,4
    # Line 74
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 79
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3a89c
    # Line 87
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3a890:
    # Line 88
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3a89c:
    # Line 81
    li	$a3,5
    sh	$a3,12($v0)
    # Line 83
    ld	$a0,0($sp)
    # Line 86
    ld	$a3,8($sp)
    # Line 83
    lb	$a2,0($a0)
    sb	$a2,16($v0)
    # Line 84
    lb	$a1,1($a0)
    sb	$a1,17($v0)
    # Line 85
    lb	$a0,2($a0)
    sb	$a0,18($v0)
    # Line 86
    lw	$v1,4996($a3)
    # Line 87
    la	$a2,__glle_Color3bv
    move	$a1,$v0
    move	$a0,$a3
    # Line 86
    ori	$v1,$v1,0x4
    # Line 87
    jal	__glDlistAppendOp
    # Line 86
    sw	$v1,4996($a3)
    b	.L0da3a890
    ld	$ra,16($sp)
.end __gllc_Color3bv

# Function: __gllc_Color3d
# Declared: Line 91 (Source lines: 92-107)
# Address: 0x0da3a8f0 - 0x0da3a990 (Size: 160 bytes, Frame: 48)
.globl __gllc_Color3d
.ent __gllc_Color3d
__gllc_Color3d:
    # Line 95
    lw	$a0,4112($zero)
    # Line 92
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 95
    sd	$a0,24($sp)
    # Line 92
    addiu	$at,$at,26344
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 97
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 92
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 97
    li	$a1,24
    jal	__glDlistAllocOp2
    # Line 92
    sdc1	$f12,0($sp)
    # Line 97
    bnez	$v0,.L0da3a93c
    ld	$ra,32($sp)
.L0da3a930:
    # Line 107
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3a93c:
    # Line 100
    li	$a4,1
    sb	$a4,14($v0)
    # Line 99
    li	$a5,6
    sh	$a5,12($v0)
    # Line 106
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 105
    ld	$v1,24($sp)
    # Line 102
    ldc1	$f2,0($sp)
    # Line 104
    ldc1	$f0,16($sp)
    # Line 103
    ldc1	$f1,8($sp)
    # Line 104
    sdc1	$f0,32($v0)
    # Line 103
    sdc1	$f1,24($v0)
    # Line 102
    sdc1	$f2,16($v0)
    # Line 105
    lw	$a3,4996($v1)
    # Line 106
    la	$a2,__glle_Color3dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 105
    ori	$v0,$a3,0x4
    # Line 106
    jal	__glDlistAppendOp
    # Line 105
    sw	$v0,4996($v1)
    b	.L0da3a930
    ld	$ra,32($sp)
.end __gllc_Color3d

# Function: __gllc_Color3dv
# Declared: Line 110 (Source lines: 111-126)
# Address: 0x0da3a990 - 0x0da3aa30 (Size: 160 bytes, Frame: 32)
.globl __gllc_Color3dv
.ent __gllc_Color3dv
__gllc_Color3dv:
    # Line 111
    lui	$v0,0x5
    # Line 114
    lw	$at,4112($zero)
    # Line 111
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,26184
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 116
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 114
    sd	$at,8($sp)
    # Line 116
    li	$a1,24
    # Line 111
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 116
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3a9dc
    # Line 119
    li	$a1,1
    ld	$ra,16($sp)
.L0da3a9d0:
    # Line 126
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3a9dc:
    # Line 119
    sb	$a1,14($v0)
    # Line 121
    ld	$a0,0($sp)
    # Line 118
    li	$a2,6
    sh	$a2,12($v0)
    # Line 121
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 122
    ldc1	$f1,8($a0)
    # Line 125
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 122
    sdc1	$f1,24($v0)
    # Line 123
    ldc1	$f0,16($a0)
    # Line 124
    ld	$a3,8($sp)
    # Line 123
    sdc1	$f0,32($v0)
    # Line 124
    lw	$v1,4996($a3)
    # Line 125
    la	$a2,__glle_Color3dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 124
    ori	$v1,$v1,0x4
    # Line 125
    jal	__glDlistAppendOp
    # Line 124
    sw	$v1,4996($a3)
    b	.L0da3a9d0
    ld	$ra,16($sp)
.end __gllc_Color3dv

# Function: __gllc_Color3f
# Declared: Line 129 (Source lines: 130-144)
# Address: 0x0da3aa30 - 0x0da3aac8 (Size: 152 bytes, Frame: 48)
.globl __gllc_Color3f
.ent __gllc_Color3f
__gllc_Color3f:
    # Line 133
    lw	$a0,4112($zero)
    # Line 130
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 133
    sd	$a0,24($sp)
    # Line 130
    addiu	$at,$at,26024
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 135
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 130
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 135
    li	$a1,12
    jal	__glDlistAllocOp2
    # Line 130
    sdc1	$f12,0($sp)
    # Line 135
    bnez	$v0,.L0da3aa7c
    ld	$ra,32($sp)
.L0da3aa70:
    # Line 144
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3aa7c:
    # Line 137
    li	$a4,7
    sh	$a4,12($v0)
    # Line 143
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 142
    ld	$v1,24($sp)
    # Line 139
    ldc1	$f2,0($sp)
    # Line 141
    ldc1	$f0,16($sp)
    # Line 140
    ldc1	$f1,8($sp)
    # Line 141
    swc1	$f0,24($v0)
    # Line 140
    swc1	$f1,20($v0)
    # Line 139
    swc1	$f2,16($v0)
    # Line 142
    lw	$a3,4996($v1)
    # Line 143
    la	$a2,__glle_Color3fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 142
    ori	$v0,$a3,0x4
    # Line 143
    jal	__glDlistAppendOp
    # Line 142
    sw	$v0,4996($v1)
    b	.L0da3aa70
    ld	$ra,32($sp)
.end __gllc_Color3f

# Function: __gllc_Color3fv
# Declared: Line 147 (Source lines: 148-162)
# Address: 0x0da3aad0 - 0x0da3ab68 (Size: 152 bytes, Frame: 32)
.globl __gllc_Color3fv
.ent __gllc_Color3fv
__gllc_Color3fv:
    # Line 148
    lui	$v0,0x5
    # Line 151
    lw	$at,4112($zero)
    # Line 148
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,25864
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 153
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 151
    sd	$at,8($sp)
    # Line 153
    li	$a1,12
    # Line 148
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 153
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ab1c
    # Line 157
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0da3ab10:
    # Line 162
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ab1c:
    # Line 155
    li	$a1,7
    sh	$a1,12($v0)
    # Line 157
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 158
    lwc1	$f1,4($a0)
    # Line 161
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 158
    swc1	$f1,20($v0)
    # Line 159
    lwc1	$f0,8($a0)
    # Line 160
    ld	$a3,8($sp)
    # Line 159
    swc1	$f0,24($v0)
    # Line 160
    lw	$v1,4996($a3)
    # Line 161
    la	$a2,__glle_Color3fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 160
    ori	$v1,$v1,0x4
    # Line 161
    jal	__glDlistAppendOp
    # Line 160
    sw	$v1,4996($a3)
    b	.L0da3ab10
    ld	$ra,16($sp)
.end __gllc_Color3fv

# Function: __gllc_Color3i
# Declared: Line 165 (Source lines: 166-180)
# Address: 0x0da3ab70 - 0x0da3ac0c (Size: 156 bytes, Frame: 48)
.globl __gllc_Color3i
.ent __gllc_Color3i
__gllc_Color3i:
    # Line 169
    lw	$at,4112($zero)
    # Line 166
    addiu	$sp,$sp,-48
    # Line 169
    sd	$at,24($sp)
    # Line 166
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,25704
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 171
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 166
    sd	$a1,8($sp)
    # Line 171
    li	$a1,12
    # Line 166
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 171
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3abc0
    ld	$ra,32($sp)
.L0da3abb4:
    # Line 180
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3abc0:
    # Line 179
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 175
    ld	$a2,0($sp)
    # Line 176
    ld	$a1,8($sp)
    # Line 177
    ld	$a0,16($sp)
    sw	$a0,24($v0)
    # Line 176
    sw	$a1,20($v0)
    # Line 173
    li	$a3,8
    sh	$a3,12($v0)
    # Line 178
    ld	$a3,24($sp)
    # Line 175
    sw	$a2,16($v0)
    # Line 178
    lw	$v1,4996($a3)
    # Line 179
    la	$a2,__glle_Color3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 178
    ori	$v1,$v1,0x4
    # Line 179
    jal	__glDlistAppendOp
    # Line 178
    sw	$v1,4996($a3)
    b	.L0da3abb4
    ld	$ra,32($sp)
.end __gllc_Color3i

# Function: __gllc_Color3iv
# Declared: Line 183 (Source lines: 184-198)
# Address: 0x0da3ac10 - 0x0da3aca8 (Size: 152 bytes, Frame: 32)
.globl __gllc_Color3iv
.ent __gllc_Color3iv
__gllc_Color3iv:
    # Line 184
    lui	$v0,0x5
    # Line 187
    lw	$at,4112($zero)
    # Line 184
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,25544
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 189
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 187
    sd	$at,8($sp)
    # Line 189
    li	$a1,12
    # Line 184
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 189
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ac5c
    # Line 197
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3ac50:
    # Line 198
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ac5c:
    # Line 191
    li	$a3,8
    sh	$a3,12($v0)
    # Line 193
    ld	$a0,0($sp)
    # Line 196
    ld	$a3,8($sp)
    # Line 193
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 194
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 195
    lw	$a0,8($a0)
    sw	$a0,24($v0)
    # Line 196
    lw	$v1,4996($a3)
    # Line 197
    la	$a2,__glle_Color3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 196
    ori	$v1,$v1,0x4
    # Line 197
    jal	__glDlistAppendOp
    # Line 196
    sw	$v1,4996($a3)
    b	.L0da3ac50
    ld	$ra,16($sp)
.end __gllc_Color3iv

# Function: __gllc_Color3s
# Declared: Line 201 (Source lines: 202-216)
# Address: 0x0da3acb0 - 0x0da3ad4c (Size: 156 bytes, Frame: 48)
.globl __gllc_Color3s
.ent __gllc_Color3s
__gllc_Color3s:
    # Line 205
    lw	$at,4112($zero)
    # Line 202
    addiu	$sp,$sp,-48
    # Line 205
    sd	$at,24($sp)
    # Line 202
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,25384
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 207
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 202
    sd	$a1,8($sp)
    # Line 207
    li	$a1,8
    # Line 202
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 207
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ad00
    ld	$ra,32($sp)
.L0da3acf4:
    # Line 216
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3ad00:
    # Line 215
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 211
    ld	$a2,0($sp)
    # Line 212
    ld	$a1,8($sp)
    # Line 213
    ld	$a0,16($sp)
    sh	$a0,20($v0)
    # Line 212
    sh	$a1,18($v0)
    # Line 209
    li	$a3,9
    sh	$a3,12($v0)
    # Line 214
    ld	$a3,24($sp)
    # Line 211
    sh	$a2,16($v0)
    # Line 214
    lw	$v1,4996($a3)
    # Line 215
    la	$a2,__glle_Color3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 214
    ori	$v1,$v1,0x4
    # Line 215
    jal	__glDlistAppendOp
    # Line 214
    sw	$v1,4996($a3)
    b	.L0da3acf4
    ld	$ra,32($sp)
.end __gllc_Color3s

# Function: __gllc_Color3sv
# Declared: Line 219 (Source lines: 220-234)
# Address: 0x0da3ad50 - 0x0da3ade8 (Size: 152 bytes, Frame: 32)
.globl __gllc_Color3sv
.ent __gllc_Color3sv
__gllc_Color3sv:
    # Line 220
    lui	$v0,0x5
    # Line 223
    lw	$at,4112($zero)
    # Line 220
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,25224
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 225
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 223
    sd	$at,8($sp)
    # Line 225
    li	$a1,8
    # Line 220
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 225
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ad9c
    # Line 233
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3ad90:
    # Line 234
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ad9c:
    # Line 227
    li	$a3,9
    sh	$a3,12($v0)
    # Line 229
    ld	$a0,0($sp)
    # Line 232
    ld	$a3,8($sp)
    # Line 229
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 230
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 231
    lh	$a0,4($a0)
    sh	$a0,20($v0)
    # Line 232
    lw	$v1,4996($a3)
    # Line 233
    la	$a2,__glle_Color3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 232
    ori	$v1,$v1,0x4
    # Line 233
    jal	__glDlistAppendOp
    # Line 232
    sw	$v1,4996($a3)
    b	.L0da3ad90
    ld	$ra,16($sp)
.end __gllc_Color3sv

# Function: __gllc_Color3ub
# Declared: Line 237 (Source lines: 238-252)
# Address: 0x0da3adf0 - 0x0da3ae8c (Size: 156 bytes, Frame: 48)
.globl __gllc_Color3ub
.ent __gllc_Color3ub
__gllc_Color3ub:
    # Line 241
    lw	$at,4112($zero)
    # Line 238
    addiu	$sp,$sp,-48
    # Line 241
    sd	$at,24($sp)
    # Line 238
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,25064
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 243
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 238
    sd	$a1,8($sp)
    # Line 243
    li	$a1,4
    # Line 238
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 243
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ae40
    ld	$ra,32($sp)
.L0da3ae34:
    # Line 252
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3ae40:
    # Line 251
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 247
    ld	$a2,0($sp)
    # Line 248
    ld	$a1,8($sp)
    # Line 249
    ld	$a0,16($sp)
    sb	$a0,18($v0)
    # Line 248
    sb	$a1,17($v0)
    # Line 245
    li	$a3,10
    sh	$a3,12($v0)
    # Line 250
    ld	$a3,24($sp)
    # Line 247
    sb	$a2,16($v0)
    # Line 250
    lw	$v1,4996($a3)
    # Line 251
    la	$a2,__glle_Color3ubv
    move	$a1,$v0
    move	$a0,$a3
    # Line 250
    ori	$v1,$v1,0x4
    # Line 251
    jal	__glDlistAppendOp
    # Line 250
    sw	$v1,4996($a3)
    b	.L0da3ae34
    ld	$ra,32($sp)
.end __gllc_Color3ub

# Function: __gllc_Color3ubv
# Declared: Line 255 (Source lines: 256-270)
# Address: 0x0da3ae90 - 0x0da3af28 (Size: 152 bytes, Frame: 32)
.globl __gllc_Color3ubv
.ent __gllc_Color3ubv
__gllc_Color3ubv:
    # Line 256
    lui	$v0,0x5
    # Line 259
    lw	$at,4112($zero)
    # Line 256
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,24904
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 261
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 259
    sd	$at,8($sp)
    # Line 261
    li	$a1,4
    # Line 256
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 261
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3aedc
    # Line 269
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3aed0:
    # Line 270
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3aedc:
    # Line 263
    li	$a3,10
    sh	$a3,12($v0)
    # Line 265
    ld	$a0,0($sp)
    # Line 268
    ld	$a3,8($sp)
    # Line 265
    lbu	$a2,0($a0)
    sb	$a2,16($v0)
    # Line 266
    lbu	$a1,1($a0)
    sb	$a1,17($v0)
    # Line 267
    lbu	$a0,2($a0)
    sb	$a0,18($v0)
    # Line 268
    lw	$v1,4996($a3)
    # Line 269
    la	$a2,__glle_Color3ubv
    move	$a1,$v0
    move	$a0,$a3
    # Line 268
    ori	$v1,$v1,0x4
    # Line 269
    jal	__glDlistAppendOp
    # Line 268
    sw	$v1,4996($a3)
    b	.L0da3aed0
    ld	$ra,16($sp)
.end __gllc_Color3ubv

# Function: __gllc_Color3ui
# Declared: Line 273 (Source lines: 274-288)
# Address: 0x0da3af30 - 0x0da3afcc (Size: 156 bytes, Frame: 48)
.globl __gllc_Color3ui
.ent __gllc_Color3ui
__gllc_Color3ui:
    # Line 277
    lw	$at,4112($zero)
    # Line 274
    addiu	$sp,$sp,-48
    # Line 277
    sd	$at,24($sp)
    # Line 274
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,24744
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 279
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 274
    sd	$a1,8($sp)
    # Line 279
    li	$a1,12
    # Line 274
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 279
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3af80
    ld	$ra,32($sp)
.L0da3af74:
    # Line 288
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3af80:
    # Line 287
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 283
    ld	$a2,0($sp)
    # Line 284
    ld	$a1,8($sp)
    # Line 285
    ld	$a0,16($sp)
    sw	$a0,24($v0)
    # Line 284
    sw	$a1,20($v0)
    # Line 281
    li	$a3,11
    sh	$a3,12($v0)
    # Line 286
    ld	$a3,24($sp)
    # Line 283
    sw	$a2,16($v0)
    # Line 286
    lw	$v1,4996($a3)
    # Line 287
    la	$a2,__glle_Color3uiv
    move	$a1,$v0
    move	$a0,$a3
    # Line 286
    ori	$v1,$v1,0x4
    # Line 287
    jal	__glDlistAppendOp
    # Line 286
    sw	$v1,4996($a3)
    b	.L0da3af74
    ld	$ra,32($sp)
.end __gllc_Color3ui

# Function: __gllc_Color3uiv
# Declared: Line 291 (Source lines: 292-306)
# Address: 0x0da3afd0 - 0x0da3b068 (Size: 152 bytes, Frame: 32)
.globl __gllc_Color3uiv
.ent __gllc_Color3uiv
__gllc_Color3uiv:
    # Line 292
    lui	$v0,0x5
    # Line 295
    lw	$at,4112($zero)
    # Line 292
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,24584
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 297
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 295
    sd	$at,8($sp)
    # Line 297
    li	$a1,12
    # Line 292
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 297
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b01c
    # Line 305
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3b010:
    # Line 306
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b01c:
    # Line 299
    li	$a3,11
    sh	$a3,12($v0)
    # Line 301
    ld	$a0,0($sp)
    # Line 304
    ld	$a3,8($sp)
    # Line 301
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 302
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 303
    lw	$a0,8($a0)
    sw	$a0,24($v0)
    # Line 304
    lw	$v1,4996($a3)
    # Line 305
    la	$a2,__glle_Color3uiv
    move	$a1,$v0
    move	$a0,$a3
    # Line 304
    ori	$v1,$v1,0x4
    # Line 305
    jal	__glDlistAppendOp
    # Line 304
    sw	$v1,4996($a3)
    b	.L0da3b010
    ld	$ra,16($sp)
.end __gllc_Color3uiv

# Function: __gllc_Color3us
# Declared: Line 309 (Source lines: 310-324)
# Address: 0x0da3b070 - 0x0da3b10c (Size: 156 bytes, Frame: 48)
.globl __gllc_Color3us
.ent __gllc_Color3us
__gllc_Color3us:
    # Line 313
    lw	$at,4112($zero)
    # Line 310
    addiu	$sp,$sp,-48
    # Line 313
    sd	$at,24($sp)
    # Line 310
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,24424
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 315
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 310
    sd	$a1,8($sp)
    # Line 315
    li	$a1,8
    # Line 310
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 315
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b0c0
    ld	$ra,32($sp)
.L0da3b0b4:
    # Line 324
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3b0c0:
    # Line 323
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 319
    ld	$a2,0($sp)
    # Line 320
    ld	$a1,8($sp)
    # Line 321
    ld	$a0,16($sp)
    sh	$a0,20($v0)
    # Line 320
    sh	$a1,18($v0)
    # Line 317
    li	$a3,12
    sh	$a3,12($v0)
    # Line 322
    ld	$a3,24($sp)
    # Line 319
    sh	$a2,16($v0)
    # Line 322
    lw	$v1,4996($a3)
    # Line 323
    la	$a2,__glle_Color3usv
    move	$a1,$v0
    move	$a0,$a3
    # Line 322
    ori	$v1,$v1,0x4
    # Line 323
    jal	__glDlistAppendOp
    # Line 322
    sw	$v1,4996($a3)
    b	.L0da3b0b4
    ld	$ra,32($sp)
.end __gllc_Color3us

# Function: __gllc_Color3usv
# Declared: Line 327 (Source lines: 328-342)
# Address: 0x0da3b110 - 0x0da3b1a8 (Size: 152 bytes, Frame: 32)
.globl __gllc_Color3usv
.ent __gllc_Color3usv
__gllc_Color3usv:
    # Line 328
    lui	$v0,0x5
    # Line 331
    lw	$at,4112($zero)
    # Line 328
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,24264
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 333
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 331
    sd	$at,8($sp)
    # Line 333
    li	$a1,8
    # Line 328
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 333
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b15c
    # Line 341
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3b150:
    # Line 342
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b15c:
    # Line 335
    li	$a3,12
    sh	$a3,12($v0)
    # Line 337
    ld	$a0,0($sp)
    # Line 340
    ld	$a3,8($sp)
    # Line 337
    lhu	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 338
    lhu	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 339
    lhu	$a0,4($a0)
    sh	$a0,20($v0)
    # Line 340
    lw	$v1,4996($a3)
    # Line 341
    la	$a2,__glle_Color3usv
    move	$a1,$v0
    move	$a0,$a3
    # Line 340
    ori	$v1,$v1,0x4
    # Line 341
    jal	__glDlistAppendOp
    # Line 340
    sw	$v1,4996($a3)
    b	.L0da3b150
    ld	$ra,16($sp)
.end __gllc_Color3usv

# Function: __gllc_Color4b
# Declared: Line 345 (Source lines: 346-361)
# Address: 0x0da3b1b0 - 0x0da3b258 (Size: 168 bytes, Frame: 192)
.globl __gllc_Color4b
.ent __gllc_Color4b
__gllc_Color4b:
    # Line 346
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 349
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 346
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,24104
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 351
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 346
    sd	$a1,8($sp)
    # Line 351
    li	$a1,4
    # Line 346
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 351
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b204
    ld	$ra,40($sp)
.L0da3b1f8:
    # Line 361
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3b204:
    # Line 353
    li	$a4,13
    sh	$a4,12($v0)
    # Line 360
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 356
    ld	$a2,8($sp)
    # Line 357
    ld	$a1,24($sp)
    # Line 358
    ld	$a0,32($sp)
    sb	$a0,19($v0)
    # Line 357
    sb	$a1,18($v0)
    # Line 355
    ld	$a3,0($sp)
    sb	$a3,16($v0)
    # Line 359
    ld	$a3,16($sp)
    # Line 356
    sb	$a2,17($v0)
    # Line 359
    lw	$v1,4996($a3)
    # Line 360
    la	$a2,__glle_Color4bv
    move	$a1,$v0
    move	$a0,$a3
    # Line 359
    ori	$v1,$v1,0x4
    # Line 360
    jal	__glDlistAppendOp
    # Line 359
    sw	$v1,4996($a3)
    b	.L0da3b1f8
    ld	$ra,40($sp)
.end __gllc_Color4b

# Function: __gllc_Color4bv
# Declared: Line 364 (Source lines: 365-380)
# Address: 0x0da3b260 - 0x0da3b300 (Size: 160 bytes, Frame: 32)
.globl __gllc_Color4bv
.ent __gllc_Color4bv
__gllc_Color4bv:
    # Line 365
    lui	$v0,0x5
    # Line 368
    lw	$at,4112($zero)
    # Line 365
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,23928
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 370
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 368
    sd	$at,8($sp)
    # Line 370
    li	$a1,4
    # Line 365
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 370
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b2ac
    # Line 379
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3b2a0:
    # Line 380
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b2ac:
    # Line 374
    ld	$a0,0($sp)
    # Line 372
    li	$a4,13
    sh	$a4,12($v0)
    # Line 374
    lb	$a3,0($a0)
    sb	$a3,16($v0)
    # Line 378
    ld	$a3,8($sp)
    # Line 375
    lb	$a2,1($a0)
    sb	$a2,17($v0)
    # Line 376
    lb	$a1,2($a0)
    sb	$a1,18($v0)
    # Line 377
    lb	$a0,3($a0)
    sb	$a0,19($v0)
    # Line 378
    lw	$v1,4996($a3)
    # Line 379
    la	$a2,__glle_Color4bv
    move	$a1,$v0
    move	$a0,$a3
    # Line 378
    ori	$v1,$v1,0x4
    # Line 379
    jal	__glDlistAppendOp
    # Line 378
    sw	$v1,4996($a3)
    b	.L0da3b2a0
    ld	$ra,16($sp)
.end __gllc_Color4bv

# Function: __gllc_Color4d
# Declared: Line 383 (Source lines: 384-400)
# Address: 0x0da3b300 - 0x0da3b3ac (Size: 172 bytes, Frame: 192)
.globl __gllc_Color4d
.ent __gllc_Color4d
__gllc_Color4d:
    # Line 387
    lw	$a0,4112($zero)
    # Line 384
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 387
    sd	$a0,32($sp)
    # Line 384
    addiu	$at,$at,23768
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 389
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 384
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 389
    li	$a1,32
    jal	__glDlistAllocOp2
    # Line 384
    sdc1	$f12,0($sp)
    # Line 389
    bnez	$v0,.L0da3b350
    ld	$ra,40($sp)
.L0da3b344:
    # Line 400
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3b350:
    # Line 392
    li	$a4,1
    sb	$a4,14($v0)
    # Line 391
    li	$a5,14
    sh	$a5,12($v0)
    # Line 399
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 398
    ld	$v1,32($sp)
    # Line 394
    ldc1	$f3,0($sp)
    # Line 395
    ldc1	$f2,8($sp)
    # Line 397
    ldc1	$f0,24($sp)
    # Line 396
    ldc1	$f1,16($sp)
    # Line 397
    sdc1	$f0,40($v0)
    # Line 396
    sdc1	$f1,32($v0)
    # Line 395
    sdc1	$f2,24($v0)
    # Line 394
    sdc1	$f3,16($v0)
    # Line 398
    lw	$a3,4996($v1)
    # Line 399
    la	$a2,__glle_Color4dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 398
    ori	$v0,$a3,0x4
    # Line 399
    jal	__glDlistAppendOp
    # Line 398
    sw	$v0,4996($v1)
    b	.L0da3b344
    ld	$ra,40($sp)
.end __gllc_Color4d

# Function: __gllc_Color4dv
# Declared: Line 403 (Source lines: 404-420)
# Address: 0x0da3b3b0 - 0x0da3b458 (Size: 168 bytes, Frame: 32)
.globl __gllc_Color4dv
.ent __gllc_Color4dv
__gllc_Color4dv:
    # Line 404
    lui	$v0,0x5
    # Line 407
    lw	$at,4112($zero)
    # Line 404
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,23592
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 409
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 407
    sd	$at,8($sp)
    # Line 409
    li	$a1,32
    # Line 404
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 409
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b3fc
    # Line 412
    li	$a1,1
    ld	$ra,16($sp)
.L0da3b3f0:
    # Line 420
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b3fc:
    # Line 412
    sb	$a1,14($v0)
    # Line 414
    ld	$a0,0($sp)
    # Line 411
    li	$a2,14
    sh	$a2,12($v0)
    # Line 414
    ldc1	$f3,0($a0)
    sdc1	$f3,16($v0)
    # Line 415
    ldc1	$f2,8($a0)
    sdc1	$f2,24($v0)
    # Line 416
    ldc1	$f1,16($a0)
    # Line 419
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 416
    sdc1	$f1,32($v0)
    # Line 417
    ldc1	$f0,24($a0)
    # Line 418
    ld	$a3,8($sp)
    # Line 417
    sdc1	$f0,40($v0)
    # Line 418
    lw	$v1,4996($a3)
    # Line 419
    la	$a2,__glle_Color4dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 418
    ori	$v1,$v1,0x4
    # Line 419
    jal	__glDlistAppendOp
    # Line 418
    sw	$v1,4996($a3)
    b	.L0da3b3f0
    ld	$ra,16($sp)
.end __gllc_Color4dv

# Function: __gllc_Color4f
# Declared: Line 423 (Source lines: 424-439)
# Address: 0x0da3b460 - 0x0da3b504 (Size: 164 bytes, Frame: 192)
.globl __gllc_Color4f
.ent __gllc_Color4f
__gllc_Color4f:
    # Line 427
    lw	$a0,4112($zero)
    # Line 424
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 427
    sd	$a0,32($sp)
    # Line 424
    addiu	$at,$at,23416
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 429
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 424
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 429
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 424
    sdc1	$f12,0($sp)
    # Line 429
    bnez	$v0,.L0da3b4b0
    ld	$ra,40($sp)
.L0da3b4a4:
    # Line 439
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3b4b0:
    # Line 431
    li	$a4,15
    sh	$a4,12($v0)
    # Line 438
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 437
    ld	$v1,32($sp)
    # Line 433
    ldc1	$f3,0($sp)
    # Line 434
    ldc1	$f2,8($sp)
    # Line 436
    ldc1	$f0,24($sp)
    # Line 435
    ldc1	$f1,16($sp)
    # Line 436
    swc1	$f0,28($v0)
    # Line 435
    swc1	$f1,24($v0)
    # Line 434
    swc1	$f2,20($v0)
    # Line 433
    swc1	$f3,16($v0)
    # Line 437
    lw	$a3,4996($v1)
    # Line 438
    la	$a2,__glle_Color4fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 437
    ori	$v0,$a3,0x4
    # Line 438
    jal	__glDlistAppendOp
    # Line 437
    sw	$v0,4996($v1)
    b	.L0da3b4a4
    ld	$ra,40($sp)
.end __gllc_Color4f

# Function: __gllc_Color4fv
# Declared: Line 442 (Source lines: 443-458)
# Address: 0x0da3b510 - 0x0da3b5b0 (Size: 160 bytes, Frame: 32)
.globl __gllc_Color4fv
.ent __gllc_Color4fv
__gllc_Color4fv:
    # Line 443
    lui	$v0,0x5
    # Line 446
    lw	$at,4112($zero)
    # Line 443
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,23240
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 448
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 446
    sd	$at,8($sp)
    # Line 448
    li	$a1,16
    # Line 443
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 448
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b55c
    # Line 452
    ld	$a0,0($sp)
    ld	$ra,16($sp)
.L0da3b550:
    # Line 458
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b55c:
    # Line 450
    li	$a1,15
    sh	$a1,12($v0)
    # Line 452
    lwc1	$f3,0($a0)
    swc1	$f3,16($v0)
    # Line 453
    lwc1	$f2,4($a0)
    swc1	$f2,20($v0)
    # Line 454
    lwc1	$f1,8($a0)
    # Line 457
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 454
    swc1	$f1,24($v0)
    # Line 455
    lwc1	$f0,12($a0)
    # Line 456
    ld	$a3,8($sp)
    # Line 455
    swc1	$f0,28($v0)
    # Line 456
    lw	$v1,4996($a3)
    # Line 457
    la	$a2,__glle_Color4fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 456
    ori	$v1,$v1,0x4
    # Line 457
    jal	__glDlistAppendOp
    # Line 456
    sw	$v1,4996($a3)
    b	.L0da3b550
    ld	$ra,16($sp)
.end __gllc_Color4fv

# Function: __gllc_Color4i
# Declared: Line 461 (Source lines: 462-477)
# Address: 0x0da3b5b0 - 0x0da3b658 (Size: 168 bytes, Frame: 192)
.globl __gllc_Color4i
.ent __gllc_Color4i
__gllc_Color4i:
    # Line 462
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 465
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 462
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,23080
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 467
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 462
    sd	$a1,8($sp)
    # Line 467
    li	$a1,16
    # Line 462
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 467
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b604
    ld	$ra,40($sp)
.L0da3b5f8:
    # Line 477
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3b604:
    # Line 469
    li	$a4,16
    sh	$a4,12($v0)
    # Line 476
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 472
    ld	$a2,8($sp)
    # Line 473
    ld	$a1,24($sp)
    # Line 474
    ld	$a0,32($sp)
    sw	$a0,28($v0)
    # Line 473
    sw	$a1,24($v0)
    # Line 471
    ld	$a3,0($sp)
    sw	$a3,16($v0)
    # Line 475
    ld	$a3,16($sp)
    # Line 472
    sw	$a2,20($v0)
    # Line 475
    lw	$v1,4996($a3)
    # Line 476
    la	$a2,__glle_Color4iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 475
    ori	$v1,$v1,0x4
    # Line 476
    jal	__glDlistAppendOp
    # Line 475
    sw	$v1,4996($a3)
    b	.L0da3b5f8
    ld	$ra,40($sp)
.end __gllc_Color4i

# Function: __gllc_Color4iv
# Declared: Line 480 (Source lines: 481-496)
# Address: 0x0da3b660 - 0x0da3b700 (Size: 160 bytes, Frame: 32)
.globl __gllc_Color4iv
.ent __gllc_Color4iv
__gllc_Color4iv:
    # Line 481
    lui	$v0,0x5
    # Line 484
    lw	$at,4112($zero)
    # Line 481
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,22904
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 486
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 484
    sd	$at,8($sp)
    # Line 486
    li	$a1,16
    # Line 481
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 486
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b6ac
    # Line 495
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3b6a0:
    # Line 496
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b6ac:
    # Line 490
    ld	$a0,0($sp)
    # Line 488
    li	$a4,16
    sh	$a4,12($v0)
    # Line 490
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 494
    ld	$a3,8($sp)
    # Line 491
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 492
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 493
    lw	$a0,12($a0)
    sw	$a0,28($v0)
    # Line 494
    lw	$v1,4996($a3)
    # Line 495
    la	$a2,__glle_Color4iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 494
    ori	$v1,$v1,0x4
    # Line 495
    jal	__glDlistAppendOp
    # Line 494
    sw	$v1,4996($a3)
    b	.L0da3b6a0
    ld	$ra,16($sp)
.end __gllc_Color4iv

# Function: __gllc_Color4s
# Declared: Line 499 (Source lines: 500-515)
# Address: 0x0da3b700 - 0x0da3b7a8 (Size: 168 bytes, Frame: 192)
.globl __gllc_Color4s
.ent __gllc_Color4s
__gllc_Color4s:
    # Line 500
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 503
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 500
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,22744
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 505
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 500
    sd	$a1,8($sp)
    # Line 505
    li	$a1,8
    # Line 500
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 505
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b754
    ld	$ra,40($sp)
.L0da3b748:
    # Line 515
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3b754:
    # Line 507
    li	$a4,17
    sh	$a4,12($v0)
    # Line 514
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 510
    ld	$a2,8($sp)
    # Line 511
    ld	$a1,24($sp)
    # Line 512
    ld	$a0,32($sp)
    sh	$a0,22($v0)
    # Line 511
    sh	$a1,20($v0)
    # Line 509
    ld	$a3,0($sp)
    sh	$a3,16($v0)
    # Line 513
    ld	$a3,16($sp)
    # Line 510
    sh	$a2,18($v0)
    # Line 513
    lw	$v1,4996($a3)
    # Line 514
    la	$a2,__glle_Color4sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 513
    ori	$v1,$v1,0x4
    # Line 514
    jal	__glDlistAppendOp
    # Line 513
    sw	$v1,4996($a3)
    b	.L0da3b748
    ld	$ra,40($sp)
.end __gllc_Color4s

# Function: __gllc_Color4sv
# Declared: Line 518 (Source lines: 519-534)
# Address: 0x0da3b7b0 - 0x0da3b850 (Size: 160 bytes, Frame: 32)
.globl __gllc_Color4sv
.ent __gllc_Color4sv
__gllc_Color4sv:
    # Line 519
    lui	$v0,0x5
    # Line 522
    lw	$at,4112($zero)
    # Line 519
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,22568
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 524
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 522
    sd	$at,8($sp)
    # Line 524
    li	$a1,8
    # Line 519
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 524
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b7fc
    # Line 533
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3b7f0:
    # Line 534
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b7fc:
    # Line 528
    ld	$a0,0($sp)
    # Line 526
    li	$a4,17
    sh	$a4,12($v0)
    # Line 528
    lh	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 532
    ld	$a3,8($sp)
    # Line 529
    lh	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 530
    lh	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 531
    lh	$a0,6($a0)
    sh	$a0,22($v0)
    # Line 532
    lw	$v1,4996($a3)
    # Line 533
    la	$a2,__glle_Color4sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 532
    ori	$v1,$v1,0x4
    # Line 533
    jal	__glDlistAppendOp
    # Line 532
    sw	$v1,4996($a3)
    b	.L0da3b7f0
    ld	$ra,16($sp)
.end __gllc_Color4sv

# Function: __gllc_Color4ub
# Declared: Line 537 (Source lines: 538-553)
# Address: 0x0da3b850 - 0x0da3b8f8 (Size: 168 bytes, Frame: 192)
.globl __gllc_Color4ub
.ent __gllc_Color4ub
__gllc_Color4ub:
    # Line 538
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 541
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 538
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,22408
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 543
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 538
    sd	$a1,8($sp)
    # Line 543
    li	$a1,4
    # Line 538
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 543
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b8a4
    ld	$ra,40($sp)
.L0da3b898:
    # Line 553
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3b8a4:
    # Line 545
    li	$a4,18
    sh	$a4,12($v0)
    # Line 552
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 548
    ld	$a2,8($sp)
    # Line 549
    ld	$a1,24($sp)
    # Line 550
    ld	$a0,32($sp)
    sb	$a0,19($v0)
    # Line 549
    sb	$a1,18($v0)
    # Line 547
    ld	$a3,0($sp)
    sb	$a3,16($v0)
    # Line 551
    ld	$a3,16($sp)
    # Line 548
    sb	$a2,17($v0)
    # Line 551
    lw	$v1,4996($a3)
    # Line 552
    la	$a2,__glle_Color4ubv
    move	$a1,$v0
    move	$a0,$a3
    # Line 551
    ori	$v1,$v1,0x4
    # Line 552
    jal	__glDlistAppendOp
    # Line 551
    sw	$v1,4996($a3)
    b	.L0da3b898
    ld	$ra,40($sp)
.end __gllc_Color4ub

# Function: __gllc_Color4ubv
# Declared: Line 556 (Source lines: 557-572)
# Address: 0x0da3b900 - 0x0da3b9a0 (Size: 160 bytes, Frame: 32)
.globl __gllc_Color4ubv
.ent __gllc_Color4ubv
__gllc_Color4ubv:
    # Line 557
    lui	$v0,0x5
    # Line 560
    lw	$at,4112($zero)
    # Line 557
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,22232
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 562
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 560
    sd	$at,8($sp)
    # Line 562
    li	$a1,4
    # Line 557
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 562
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b94c
    # Line 571
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3b940:
    # Line 572
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b94c:
    # Line 566
    ld	$a0,0($sp)
    # Line 564
    li	$a4,18
    sh	$a4,12($v0)
    # Line 566
    lbu	$a3,0($a0)
    sb	$a3,16($v0)
    # Line 570
    ld	$a3,8($sp)
    # Line 567
    lbu	$a2,1($a0)
    sb	$a2,17($v0)
    # Line 568
    lbu	$a1,2($a0)
    sb	$a1,18($v0)
    # Line 569
    lbu	$a0,3($a0)
    sb	$a0,19($v0)
    # Line 570
    lw	$v1,4996($a3)
    # Line 571
    la	$a2,__glle_Color4ubv
    move	$a1,$v0
    move	$a0,$a3
    # Line 570
    ori	$v1,$v1,0x4
    # Line 571
    jal	__glDlistAppendOp
    # Line 570
    sw	$v1,4996($a3)
    b	.L0da3b940
    ld	$ra,16($sp)
.end __gllc_Color4ubv

# Function: __gllc_Color4ui
# Declared: Line 575 (Source lines: 576-591)
# Address: 0x0da3b9a0 - 0x0da3ba48 (Size: 168 bytes, Frame: 192)
.globl __gllc_Color4ui
.ent __gllc_Color4ui
__gllc_Color4ui:
    # Line 576
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 579
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 576
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,22072
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 581
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 576
    sd	$a1,8($sp)
    # Line 581
    li	$a1,16
    # Line 576
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 581
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3b9f4
    ld	$ra,40($sp)
.L0da3b9e8:
    # Line 591
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3b9f4:
    # Line 583
    li	$a4,19
    sh	$a4,12($v0)
    # Line 590
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 586
    ld	$a2,8($sp)
    # Line 587
    ld	$a1,24($sp)
    # Line 588
    ld	$a0,32($sp)
    sw	$a0,28($v0)
    # Line 587
    sw	$a1,24($v0)
    # Line 585
    ld	$a3,0($sp)
    sw	$a3,16($v0)
    # Line 589
    ld	$a3,16($sp)
    # Line 586
    sw	$a2,20($v0)
    # Line 589
    lw	$v1,4996($a3)
    # Line 590
    la	$a2,__glle_Color4uiv
    move	$a1,$v0
    move	$a0,$a3
    # Line 589
    ori	$v1,$v1,0x4
    # Line 590
    jal	__glDlistAppendOp
    # Line 589
    sw	$v1,4996($a3)
    b	.L0da3b9e8
    ld	$ra,40($sp)
.end __gllc_Color4ui

# Function: __gllc_Color4uiv
# Declared: Line 594 (Source lines: 595-610)
# Address: 0x0da3ba50 - 0x0da3baf0 (Size: 160 bytes, Frame: 32)
.globl __gllc_Color4uiv
.ent __gllc_Color4uiv
__gllc_Color4uiv:
    # Line 595
    lui	$v0,0x5
    # Line 598
    lw	$at,4112($zero)
    # Line 595
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,21896
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 600
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 598
    sd	$at,8($sp)
    # Line 600
    li	$a1,16
    # Line 595
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 600
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ba9c
    # Line 609
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3ba90:
    # Line 610
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ba9c:
    # Line 604
    ld	$a0,0($sp)
    # Line 602
    li	$a4,19
    sh	$a4,12($v0)
    # Line 604
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 608
    ld	$a3,8($sp)
    # Line 605
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 606
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 607
    lw	$a0,12($a0)
    sw	$a0,28($v0)
    # Line 608
    lw	$v1,4996($a3)
    # Line 609
    la	$a2,__glle_Color4uiv
    move	$a1,$v0
    move	$a0,$a3
    # Line 608
    ori	$v1,$v1,0x4
    # Line 609
    jal	__glDlistAppendOp
    # Line 608
    sw	$v1,4996($a3)
    b	.L0da3ba90
    ld	$ra,16($sp)
.end __gllc_Color4uiv

# Function: __gllc_Color4us
# Declared: Line 613 (Source lines: 614-629)
# Address: 0x0da3baf0 - 0x0da3bb98 (Size: 168 bytes, Frame: 192)
.globl __gllc_Color4us
.ent __gllc_Color4us
__gllc_Color4us:
    # Line 614
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 617
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 614
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,21736
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 619
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 614
    sd	$a1,8($sp)
    # Line 619
    li	$a1,8
    # Line 614
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 619
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3bb44
    ld	$ra,40($sp)
.L0da3bb38:
    # Line 629
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3bb44:
    # Line 621
    li	$a4,20
    sh	$a4,12($v0)
    # Line 628
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 624
    ld	$a2,8($sp)
    # Line 625
    ld	$a1,24($sp)
    # Line 626
    ld	$a0,32($sp)
    sh	$a0,22($v0)
    # Line 625
    sh	$a1,20($v0)
    # Line 623
    ld	$a3,0($sp)
    sh	$a3,16($v0)
    # Line 627
    ld	$a3,16($sp)
    # Line 624
    sh	$a2,18($v0)
    # Line 627
    lw	$v1,4996($a3)
    # Line 628
    la	$a2,__glle_Color4usv
    move	$a1,$v0
    move	$a0,$a3
    # Line 627
    ori	$v1,$v1,0x4
    # Line 628
    jal	__glDlistAppendOp
    # Line 627
    sw	$v1,4996($a3)
    b	.L0da3bb38
    ld	$ra,40($sp)
.end __gllc_Color4us

# Function: __gllc_Color4usv
# Declared: Line 632 (Source lines: 633-648)
# Address: 0x0da3bba0 - 0x0da3bc40 (Size: 160 bytes, Frame: 32)
.globl __gllc_Color4usv
.ent __gllc_Color4usv
__gllc_Color4usv:
    # Line 633
    lui	$v0,0x5
    # Line 636
    lw	$at,4112($zero)
    # Line 633
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,21560
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 638
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 636
    sd	$at,8($sp)
    # Line 638
    li	$a1,8
    # Line 633
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 638
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3bbec
    # Line 647
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da3bbe0:
    # Line 648
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3bbec:
    # Line 642
    ld	$a0,0($sp)
    # Line 640
    li	$a4,20
    sh	$a4,12($v0)
    # Line 642
    lhu	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 646
    ld	$a3,8($sp)
    # Line 643
    lhu	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 644
    lhu	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 645
    lhu	$a0,6($a0)
    sh	$a0,22($v0)
    # Line 646
    lw	$v1,4996($a3)
    # Line 647
    la	$a2,__glle_Color4usv
    move	$a1,$v0
    move	$a0,$a3
    # Line 646
    ori	$v1,$v1,0x4
    # Line 647
    jal	__glDlistAppendOp
    # Line 646
    sw	$v1,4996($a3)
    b	.L0da3bbe0
    ld	$ra,16($sp)
.end __gllc_Color4usv

# Function: __gllc_EdgeFlag
# Declared: Line 651 (Source lines: 652-663)
# Address: 0x0da3bc40 - 0x0da3bcb4 (Size: 116 bytes, Frame: 32)
.globl __gllc_EdgeFlag
.ent __gllc_EdgeFlag
__gllc_EdgeFlag:
    # Line 652
    lui	$v0,0x5
    # Line 655
    lw	$at,4112($zero)
    # Line 652
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,21400
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 657
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 655
    sd	$at,8($sp)
    # Line 657
    li	$a1,4
    # Line 652
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 657
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3bc88
    ld	$ra,16($sp)
.L0da3bc7c:
    # Line 663
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3bc88:
    # Line 662
    la	$a2,__glle_EdgeFlagv
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 659
    li	$v1,21
    sh	$v1,12($v0)
    # Line 661
    ld	$a3,0($sp)
    # Line 662
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 661
    sb	$a3,16($v0)
    b	.L0da3bc7c
    ld	$ra,16($sp)
.end __gllc_EdgeFlag

# Function: __gllc_EdgeFlagv
# Declared: Line 666 (Source lines: 667-678)
# Address: 0x0da3bcc0 - 0x0da3bd38 (Size: 120 bytes, Frame: 32)
.globl __gllc_EdgeFlagv
.ent __gllc_EdgeFlagv
__gllc_EdgeFlagv:
    # Line 667
    lui	$v0,0x5
    # Line 670
    lw	$at,4112($zero)
    # Line 667
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,21272
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 672
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 670
    sd	$at,8($sp)
    # Line 672
    li	$a1,4
    # Line 667
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 672
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3bd0c
    # Line 677
    la	$a2,__glle_EdgeFlagv
    ld	$ra,16($sp)
.L0da3bd00:
    # Line 678
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3bd0c:
    # Line 674
    li	$a0,21
    sh	$a0,12($v0)
    # Line 677
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 676
    ld	$v1,0($sp)
    # Line 677
    ld	$a0,8($sp)
    # Line 676
    lbu	$v1,0($v1)
    # Line 677
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 676
    sb	$v1,16($v0)
    b	.L0da3bd00
    ld	$ra,16($sp)
.end __gllc_EdgeFlagv

# Function: __gllc_End
# Declared: Line 681 (Source lines: 682-690)
# Address: 0x0da3bd40 - 0x0da3bda4 (Size: 100 bytes, Frame: 32)
.globl __gllc_End
.ent __gllc_End
__gllc_End:
    # Line 682
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,21144
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 686
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 684
    lw	$a0,4112($zero)
    # Line 682
    sd	$ra,8($sp)
    # Line 686
    move	$a1,$zero
    jal	__glDlistAllocOp2
    # Line 684
    sd	$a0,0($sp)
    # Line 686
    bnez	$v0,.L0da3bd80
    ld	$ra,8($sp)
.L0da3bd74:
    # Line 690
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3bd80:
    # Line 689
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    la	$a2,__glle_End
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 688
    li	$v1,22
    # Line 689
    jal	__glDlistAppendOp
    # Line 688
    sh	$v1,12($v0)
    b	.L0da3bd74
    ld	$ra,8($sp)
.end __gllc_End

# Function: __gllc_Indexd
# Declared: Line 693 (Source lines: 694-707)
# Address: 0x0da3bdb0 - 0x0da3be38 (Size: 136 bytes, Frame: 32)
.globl __gllc_Indexd
.ent __gllc_Indexd
__gllc_Indexd:
    # Line 694
    lui	$at,0x5
    # Line 697
    lw	$a0,4112($zero)
    # Line 694
    addiu	$sp,$sp,-32
    addiu	$at,$at,21032
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 699
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 697
    sd	$a0,8($sp)
    # Line 694
    sd	$ra,16($sp)
    # Line 699
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 694
    sdc1	$f12,0($sp)
    # Line 699
    bnez	$v0,.L0da3bdf8
    # Line 702
    li	$a4,1
    ld	$ra,16($sp)
.L0da3bdec:
    # Line 707
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3bdf8:
    # Line 702
    sb	$a4,14($v0)
    # Line 701
    li	$a5,23
    sh	$a5,12($v0)
    # Line 706
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 704
    ldc1	$f0,0($sp)
    # Line 705
    ld	$v1,8($sp)
    # Line 704
    sdc1	$f0,16($v0)
    # Line 705
    lw	$a3,4996($v1)
    # Line 706
    la	$a2,__glle_Indexdv
    move	$a1,$v0
    move	$a0,$v1
    # Line 705
    ori	$v0,$a3,0x10
    # Line 706
    jal	__glDlistAppendOp
    # Line 705
    sw	$v0,4996($v1)
    b	.L0da3bdec
    ld	$ra,16($sp)
.end __gllc_Indexd

# Function: __gllc_Indexdv
# Declared: Line 710 (Source lines: 711-724)
# Address: 0x0da3be40 - 0x0da3bed0 (Size: 144 bytes, Frame: 32)
.globl __gllc_Indexdv
.ent __gllc_Indexdv
__gllc_Indexdv:
    # Line 711
    lui	$v0,0x5
    # Line 714
    lw	$at,4112($zero)
    # Line 711
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,20888
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 716
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 714
    sd	$at,8($sp)
    # Line 716
    li	$a1,8
    # Line 711
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 716
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3be88
    ld	$ra,16($sp)
.L0da3be7c:
    # Line 724
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3be88:
    # Line 723
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 719
    li	$a1,1
    sb	$a1,14($v0)
    # Line 721
    ld	$a0,0($sp)
    # Line 718
    li	$a2,23
    sh	$a2,12($v0)
    # Line 721
    ldc1	$f0,0($a0)
    # Line 722
    ld	$a3,8($sp)
    # Line 721
    sdc1	$f0,16($v0)
    # Line 722
    lw	$v1,4996($a3)
    # Line 723
    la	$a2,__glle_Indexdv
    move	$a1,$v0
    move	$a0,$a3
    # Line 722
    ori	$v1,$v1,0x10
    # Line 723
    jal	__glDlistAppendOp
    # Line 722
    sw	$v1,4996($a3)
    b	.L0da3be7c
    ld	$ra,16($sp)
.end __gllc_Indexdv

# Function: __gllc_Indexf
# Declared: Line 727 (Source lines: 728-740)
# Address: 0x0da3bed0 - 0x0da3bf50 (Size: 128 bytes, Frame: 32)
.globl __gllc_Indexf
.ent __gllc_Indexf
__gllc_Indexf:
    # Line 728
    lui	$at,0x5
    # Line 731
    lw	$a0,4112($zero)
    # Line 728
    addiu	$sp,$sp,-32
    addiu	$at,$at,20744
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 733
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 731
    sd	$a0,8($sp)
    # Line 728
    sd	$ra,16($sp)
    # Line 733
    li	$a1,4
    jal	__glDlistAllocOp2
    # Line 728
    sdc1	$f12,0($sp)
    # Line 733
    bnez	$v0,.L0da3bf18
    # Line 735
    li	$a4,24
    ld	$ra,16($sp)
.L0da3bf0c:
    # Line 740
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3bf18:
    # Line 735
    sh	$a4,12($v0)
    # Line 739
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 737
    ldc1	$f0,0($sp)
    # Line 738
    ld	$v1,8($sp)
    # Line 737
    swc1	$f0,16($v0)
    # Line 738
    lw	$a3,4996($v1)
    # Line 739
    la	$a2,__glle_Indexfv
    move	$a1,$v0
    move	$a0,$v1
    # Line 738
    ori	$v0,$a3,0x10
    # Line 739
    jal	__glDlistAppendOp
    # Line 738
    sw	$v0,4996($v1)
    b	.L0da3bf0c
    ld	$ra,16($sp)
.end __gllc_Indexf

# Function: __gllc_Indexfv
# Declared: Line 743 (Source lines: 744-756)
# Address: 0x0da3bf50 - 0x0da3bfd8 (Size: 136 bytes, Frame: 32)
.globl __gllc_Indexfv
.ent __gllc_Indexfv
__gllc_Indexfv:
    # Line 744
    lui	$v0,0x5
    # Line 747
    lw	$at,4112($zero)
    # Line 744
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,20616
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 749
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 747
    sd	$at,8($sp)
    # Line 749
    li	$a1,4
    # Line 744
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 749
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3bf98
    ld	$ra,16($sp)
.L0da3bf8c:
    # Line 756
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3bf98:
    # Line 755
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 753
    ld	$a0,0($sp)
    # Line 751
    li	$a1,24
    sh	$a1,12($v0)
    # Line 753
    lwc1	$f0,0($a0)
    # Line 754
    ld	$a3,8($sp)
    # Line 753
    swc1	$f0,16($v0)
    # Line 754
    lw	$v1,4996($a3)
    # Line 755
    la	$a2,__glle_Indexfv
    move	$a1,$v0
    move	$a0,$a3
    # Line 754
    ori	$v1,$v1,0x10
    # Line 755
    jal	__glDlistAppendOp
    # Line 754
    sw	$v1,4996($a3)
    b	.L0da3bf8c
    ld	$ra,16($sp)
.end __gllc_Indexfv

# Function: __gllc_Indexi
# Declared: Line 759 (Source lines: 760-772)
# Address: 0x0da3bfe0 - 0x0da3c064 (Size: 132 bytes, Frame: 32)
.globl __gllc_Indexi
.ent __gllc_Indexi
__gllc_Indexi:
    # Line 760
    lui	$v0,0x5
    # Line 763
    lw	$at,4112($zero)
    # Line 760
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,20472
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 765
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 763
    sd	$at,8($sp)
    # Line 765
    li	$a1,4
    # Line 760
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 765
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c02c
    # Line 767
    li	$a1,25
    ld	$ra,16($sp)
.L0da3c020:
    # Line 772
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c02c:
    # Line 767
    sh	$a1,12($v0)
    # Line 771
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 769
    ld	$a0,0($sp)
    # Line 770
    ld	$a3,8($sp)
    # Line 769
    sw	$a0,16($v0)
    # Line 770
    lw	$v1,4996($a3)
    # Line 771
    la	$a2,__glle_Indexiv
    move	$a1,$v0
    move	$a0,$a3
    # Line 770
    ori	$v1,$v1,0x10
    # Line 771
    jal	__glDlistAppendOp
    # Line 770
    sw	$v1,4996($a3)
    b	.L0da3c020
    ld	$ra,16($sp)
.end __gllc_Indexi

# Function: __gllc_Indexiv
# Declared: Line 775 (Source lines: 776-788)
# Address: 0x0da3c070 - 0x0da3c0f8 (Size: 136 bytes, Frame: 32)
.globl __gllc_Indexiv
.ent __gllc_Indexiv
__gllc_Indexiv:
    # Line 776
    lui	$v0,0x5
    # Line 779
    lw	$at,4112($zero)
    # Line 776
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,20328
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 781
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 779
    sd	$at,8($sp)
    # Line 781
    li	$a1,4
    # Line 776
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 781
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c0b8
    ld	$ra,16($sp)
.L0da3c0ac:
    # Line 788
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c0b8:
    # Line 787
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 783
    li	$a1,25
    sh	$a1,12($v0)
    # Line 785
    ld	$a0,0($sp)
    # Line 786
    ld	$a3,8($sp)
    # Line 785
    lw	$a0,0($a0)
    sw	$a0,16($v0)
    # Line 786
    lw	$v1,4996($a3)
    # Line 787
    la	$a2,__glle_Indexiv
    move	$a1,$v0
    move	$a0,$a3
    # Line 786
    ori	$v1,$v1,0x10
    # Line 787
    jal	__glDlistAppendOp
    # Line 786
    sw	$v1,4996($a3)
    b	.L0da3c0ac
    ld	$ra,16($sp)
.end __gllc_Indexiv

# Function: __gllc_Indexs
# Declared: Line 791 (Source lines: 792-804)
# Address: 0x0da3c100 - 0x0da3c184 (Size: 132 bytes, Frame: 32)
.globl __gllc_Indexs
.ent __gllc_Indexs
__gllc_Indexs:
    # Line 792
    lui	$v0,0x5
    # Line 795
    lw	$at,4112($zero)
    # Line 792
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,20184
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 797
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 795
    sd	$at,8($sp)
    # Line 797
    li	$a1,4
    # Line 792
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 797
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c14c
    # Line 799
    li	$a1,26
    ld	$ra,16($sp)
.L0da3c140:
    # Line 804
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c14c:
    # Line 799
    sh	$a1,12($v0)
    # Line 803
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 801
    ld	$a0,0($sp)
    # Line 802
    ld	$a3,8($sp)
    # Line 801
    sh	$a0,16($v0)
    # Line 802
    lw	$v1,4996($a3)
    # Line 803
    la	$a2,__glle_Indexsv
    move	$a1,$v0
    move	$a0,$a3
    # Line 802
    ori	$v1,$v1,0x10
    # Line 803
    jal	__glDlistAppendOp
    # Line 802
    sw	$v1,4996($a3)
    b	.L0da3c140
    ld	$ra,16($sp)
.end __gllc_Indexs

# Function: __gllc_Indexsv
# Declared: Line 807 (Source lines: 808-820)
# Address: 0x0da3c190 - 0x0da3c218 (Size: 136 bytes, Frame: 32)
.globl __gllc_Indexsv
.ent __gllc_Indexsv
__gllc_Indexsv:
    # Line 808
    lui	$v0,0x5
    # Line 811
    lw	$at,4112($zero)
    # Line 808
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,20040
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 813
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 811
    sd	$at,8($sp)
    # Line 813
    li	$a1,4
    # Line 808
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 813
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c1d8
    ld	$ra,16($sp)
.L0da3c1cc:
    # Line 820
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c1d8:
    # Line 819
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 815
    li	$a1,26
    sh	$a1,12($v0)
    # Line 817
    ld	$a0,0($sp)
    # Line 818
    ld	$a3,8($sp)
    # Line 817
    lh	$a0,0($a0)
    sh	$a0,16($v0)
    # Line 818
    lw	$v1,4996($a3)
    # Line 819
    la	$a2,__glle_Indexsv
    move	$a1,$v0
    move	$a0,$a3
    # Line 818
    ori	$v1,$v1,0x10
    # Line 819
    jal	__glDlistAppendOp
    # Line 818
    sw	$v1,4996($a3)
    b	.L0da3c1cc
    ld	$ra,16($sp)
.end __gllc_Indexsv

# Function: __gllc_Normal3b
# Declared: Line 823 (Source lines: 824-838)
# Address: 0x0da3c220 - 0x0da3c2bc (Size: 156 bytes, Frame: 48)
.globl __gllc_Normal3b
.ent __gllc_Normal3b
__gllc_Normal3b:
    # Line 827
    lw	$at,4112($zero)
    # Line 824
    addiu	$sp,$sp,-48
    # Line 827
    sd	$at,24($sp)
    # Line 824
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,19896
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 829
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 824
    sd	$a1,8($sp)
    # Line 829
    li	$a1,4
    # Line 824
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 829
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c274
    # Line 837
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,32($sp)
.L0da3c268:
    # Line 838
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3c274:
    # Line 833
    ld	$a2,0($sp)
    # Line 834
    ld	$a1,8($sp)
    # Line 835
    ld	$a0,16($sp)
    sb	$a0,18($v0)
    # Line 834
    sb	$a1,17($v0)
    # Line 831
    li	$a3,27
    sh	$a3,12($v0)
    # Line 836
    ld	$a3,24($sp)
    # Line 833
    sb	$a2,16($v0)
    # Line 836
    lw	$v1,4996($a3)
    # Line 837
    la	$a2,__glle_Normal3bv
    move	$a1,$v0
    move	$a0,$a3
    # Line 836
    ori	$v1,$v1,0x2
    # Line 837
    jal	__glDlistAppendOp
    # Line 836
    sw	$v1,4996($a3)
    b	.L0da3c268
    ld	$ra,32($sp)
.end __gllc_Normal3b

# Function: __gllc_Normal3bv
# Declared: Line 841 (Source lines: 842-856)
# Address: 0x0da3c2c0 - 0x0da3c358 (Size: 152 bytes, Frame: 32)
.globl __gllc_Normal3bv
.ent __gllc_Normal3bv
__gllc_Normal3bv:
    # Line 842
    lui	$v0,0x5
    # Line 845
    lw	$at,4112($zero)
    # Line 842
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,19736
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 847
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 845
    sd	$at,8($sp)
    # Line 847
    li	$a1,4
    # Line 842
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 847
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c308
    ld	$ra,16($sp)
.L0da3c2fc:
    # Line 856
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c308:
    # Line 855
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 849
    li	$a3,27
    sh	$a3,12($v0)
    # Line 851
    ld	$a0,0($sp)
    # Line 854
    ld	$a3,8($sp)
    # Line 851
    lb	$a2,0($a0)
    sb	$a2,16($v0)
    # Line 852
    lb	$a1,1($a0)
    sb	$a1,17($v0)
    # Line 853
    lb	$a0,2($a0)
    sb	$a0,18($v0)
    # Line 854
    lw	$v1,4996($a3)
    # Line 855
    la	$a2,__glle_Normal3bv
    move	$a1,$v0
    move	$a0,$a3
    # Line 854
    ori	$v1,$v1,0x2
    # Line 855
    jal	__glDlistAppendOp
    # Line 854
    sw	$v1,4996($a3)
    b	.L0da3c2fc
    ld	$ra,16($sp)
.end __gllc_Normal3bv

# Function: __gllc_Normal3d
# Declared: Line 859 (Source lines: 860-875)
# Address: 0x0da3c360 - 0x0da3c400 (Size: 160 bytes, Frame: 48)
.globl __gllc_Normal3d
.ent __gllc_Normal3d
__gllc_Normal3d:
    # Line 863
    lw	$a0,4112($zero)
    # Line 860
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 863
    sd	$a0,24($sp)
    # Line 860
    addiu	$at,$at,19576
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 865
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 860
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 865
    li	$a1,24
    jal	__glDlistAllocOp2
    # Line 860
    sdc1	$f12,0($sp)
    # Line 865
    bnez	$v0,.L0da3c3b0
    # Line 868
    li	$a4,1
    ld	$ra,32($sp)
.L0da3c3a4:
    # Line 875
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3c3b0:
    # Line 868
    sb	$a4,14($v0)
    # Line 867
    li	$a5,28
    sh	$a5,12($v0)
    # Line 874
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 873
    ld	$v1,24($sp)
    # Line 870
    ldc1	$f2,0($sp)
    # Line 872
    ldc1	$f0,16($sp)
    # Line 871
    ldc1	$f1,8($sp)
    # Line 872
    sdc1	$f0,32($v0)
    # Line 871
    sdc1	$f1,24($v0)
    # Line 870
    sdc1	$f2,16($v0)
    # Line 873
    lw	$a3,4996($v1)
    # Line 874
    la	$a2,__glle_Normal3dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 873
    ori	$v0,$a3,0x2
    # Line 874
    jal	__glDlistAppendOp
    # Line 873
    sw	$v0,4996($v1)
    b	.L0da3c3a4
    ld	$ra,32($sp)
.end __gllc_Normal3d

# Function: __gllc_Normal3dv
# Declared: Line 878 (Source lines: 879-894)
# Address: 0x0da3c400 - 0x0da3c4a0 (Size: 160 bytes, Frame: 32)
.globl __gllc_Normal3dv
.ent __gllc_Normal3dv
__gllc_Normal3dv:
    # Line 879
    lui	$v0,0x5
    # Line 882
    lw	$at,4112($zero)
    # Line 879
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,19416
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 884
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 882
    sd	$at,8($sp)
    # Line 884
    li	$a1,24
    # Line 879
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 884
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c448
    ld	$ra,16($sp)
.L0da3c43c:
    # Line 894
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c448:
    # Line 887
    li	$a1,1
    sb	$a1,14($v0)
    # Line 889
    ld	$a0,0($sp)
    # Line 886
    li	$a2,28
    sh	$a2,12($v0)
    # Line 889
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 890
    ldc1	$f1,8($a0)
    # Line 893
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 890
    sdc1	$f1,24($v0)
    # Line 891
    ldc1	$f0,16($a0)
    # Line 892
    ld	$a3,8($sp)
    # Line 891
    sdc1	$f0,32($v0)
    # Line 892
    lw	$v1,4996($a3)
    # Line 893
    la	$a2,__glle_Normal3dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 892
    ori	$v1,$v1,0x2
    # Line 893
    jal	__glDlistAppendOp
    # Line 892
    sw	$v1,4996($a3)
    b	.L0da3c43c
    ld	$ra,16($sp)
.end __gllc_Normal3dv

# Function: __gllc_Normal3f
# Declared: Line 897 (Source lines: 898-912)
# Address: 0x0da3c4a0 - 0x0da3c538 (Size: 152 bytes, Frame: 48)
.globl __gllc_Normal3f
.ent __gllc_Normal3f
__gllc_Normal3f:
    # Line 901
    lw	$a0,4112($zero)
    # Line 898
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 901
    sd	$a0,24($sp)
    # Line 898
    addiu	$at,$at,19256
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 903
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 898
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 903
    li	$a1,12
    jal	__glDlistAllocOp2
    # Line 898
    sdc1	$f12,0($sp)
    # Line 903
    bnez	$v0,.L0da3c4f0
    # Line 905
    li	$a4,29
    ld	$ra,32($sp)
.L0da3c4e4:
    # Line 912
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3c4f0:
    # Line 905
    sh	$a4,12($v0)
    # Line 911
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 910
    ld	$v1,24($sp)
    # Line 907
    ldc1	$f2,0($sp)
    # Line 909
    ldc1	$f0,16($sp)
    # Line 908
    ldc1	$f1,8($sp)
    # Line 909
    swc1	$f0,24($v0)
    # Line 908
    swc1	$f1,20($v0)
    # Line 907
    swc1	$f2,16($v0)
    # Line 910
    lw	$a3,4996($v1)
    # Line 911
    la	$a2,__glle_Normal3fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 910
    ori	$v0,$a3,0x2
    # Line 911
    jal	__glDlistAppendOp
    # Line 910
    sw	$v0,4996($v1)
    b	.L0da3c4e4
    ld	$ra,32($sp)
.end __gllc_Normal3f

# Function: __gllc_Normal3fv
# Declared: Line 915 (Source lines: 916-930)
# Address: 0x0da3c540 - 0x0da3c5d8 (Size: 152 bytes, Frame: 32)
.globl __gllc_Normal3fv
.ent __gllc_Normal3fv
__gllc_Normal3fv:
    # Line 916
    lui	$v0,0x5
    # Line 919
    lw	$at,4112($zero)
    # Line 916
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,19096
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 921
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 919
    sd	$at,8($sp)
    # Line 921
    li	$a1,12
    # Line 916
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 921
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c588
    ld	$ra,16($sp)
.L0da3c57c:
    # Line 930
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c588:
    # Line 925
    ld	$a0,0($sp)
    # Line 923
    li	$a1,29
    sh	$a1,12($v0)
    # Line 925
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 926
    lwc1	$f1,4($a0)
    # Line 929
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 926
    swc1	$f1,20($v0)
    # Line 927
    lwc1	$f0,8($a0)
    # Line 928
    ld	$a3,8($sp)
    # Line 927
    swc1	$f0,24($v0)
    # Line 928
    lw	$v1,4996($a3)
    # Line 929
    la	$a2,__glle_Normal3fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 928
    ori	$v1,$v1,0x2
    # Line 929
    jal	__glDlistAppendOp
    # Line 928
    sw	$v1,4996($a3)
    b	.L0da3c57c
    ld	$ra,16($sp)
.end __gllc_Normal3fv

# Function: __gllc_Normal3i
# Declared: Line 933 (Source lines: 934-948)
# Address: 0x0da3c5e0 - 0x0da3c67c (Size: 156 bytes, Frame: 48)
.globl __gllc_Normal3i
.ent __gllc_Normal3i
__gllc_Normal3i:
    # Line 937
    lw	$at,4112($zero)
    # Line 934
    addiu	$sp,$sp,-48
    # Line 937
    sd	$at,24($sp)
    # Line 934
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,18936
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 939
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 934
    sd	$a1,8($sp)
    # Line 939
    li	$a1,12
    # Line 934
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 939
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c634
    # Line 947
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,32($sp)
.L0da3c628:
    # Line 948
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3c634:
    # Line 943
    ld	$a2,0($sp)
    # Line 944
    ld	$a1,8($sp)
    # Line 945
    ld	$a0,16($sp)
    sw	$a0,24($v0)
    # Line 944
    sw	$a1,20($v0)
    # Line 941
    li	$a3,30
    sh	$a3,12($v0)
    # Line 946
    ld	$a3,24($sp)
    # Line 943
    sw	$a2,16($v0)
    # Line 946
    lw	$v1,4996($a3)
    # Line 947
    la	$a2,__glle_Normal3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 946
    ori	$v1,$v1,0x2
    # Line 947
    jal	__glDlistAppendOp
    # Line 946
    sw	$v1,4996($a3)
    b	.L0da3c628
    ld	$ra,32($sp)
.end __gllc_Normal3i

# Function: __gllc_Normal3iv
# Declared: Line 951 (Source lines: 952-966)
# Address: 0x0da3c680 - 0x0da3c718 (Size: 152 bytes, Frame: 32)
.globl __gllc_Normal3iv
.ent __gllc_Normal3iv
__gllc_Normal3iv:
    # Line 952
    lui	$v0,0x5
    # Line 955
    lw	$at,4112($zero)
    # Line 952
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,18776
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 957
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 955
    sd	$at,8($sp)
    # Line 957
    li	$a1,12
    # Line 952
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 957
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c6c8
    ld	$ra,16($sp)
.L0da3c6bc:
    # Line 966
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c6c8:
    # Line 965
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 959
    li	$a3,30
    sh	$a3,12($v0)
    # Line 961
    ld	$a0,0($sp)
    # Line 964
    ld	$a3,8($sp)
    # Line 961
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 962
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 963
    lw	$a0,8($a0)
    sw	$a0,24($v0)
    # Line 964
    lw	$v1,4996($a3)
    # Line 965
    la	$a2,__glle_Normal3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 964
    ori	$v1,$v1,0x2
    # Line 965
    jal	__glDlistAppendOp
    # Line 964
    sw	$v1,4996($a3)
    b	.L0da3c6bc
    ld	$ra,16($sp)
.end __gllc_Normal3iv

# Function: __gllc_Normal3s
# Declared: Line 969 (Source lines: 970-984)
# Address: 0x0da3c720 - 0x0da3c7bc (Size: 156 bytes, Frame: 48)
.globl __gllc_Normal3s
.ent __gllc_Normal3s
__gllc_Normal3s:
    # Line 973
    lw	$at,4112($zero)
    # Line 970
    addiu	$sp,$sp,-48
    # Line 973
    sd	$at,24($sp)
    # Line 970
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,18616
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 975
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 970
    sd	$a1,8($sp)
    # Line 975
    li	$a1,8
    # Line 970
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 975
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c774
    # Line 983
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,32($sp)
.L0da3c768:
    # Line 984
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3c774:
    # Line 979
    ld	$a2,0($sp)
    # Line 980
    ld	$a1,8($sp)
    # Line 981
    ld	$a0,16($sp)
    sh	$a0,20($v0)
    # Line 980
    sh	$a1,18($v0)
    # Line 977
    li	$a3,31
    sh	$a3,12($v0)
    # Line 982
    ld	$a3,24($sp)
    # Line 979
    sh	$a2,16($v0)
    # Line 982
    lw	$v1,4996($a3)
    # Line 983
    la	$a2,__glle_Normal3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 982
    ori	$v1,$v1,0x2
    # Line 983
    jal	__glDlistAppendOp
    # Line 982
    sw	$v1,4996($a3)
    b	.L0da3c768
    ld	$ra,32($sp)
.end __gllc_Normal3s

# Function: __gllc_Normal3sv
# Declared: Line 987 (Source lines: 988-1002)
# Address: 0x0da3c7c0 - 0x0da3c858 (Size: 152 bytes, Frame: 32)
.globl __gllc_Normal3sv
.ent __gllc_Normal3sv
__gllc_Normal3sv:
    # Line 988
    lui	$v0,0x5
    # Line 991
    lw	$at,4112($zero)
    # Line 988
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,18456
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 993
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 991
    sd	$at,8($sp)
    # Line 993
    li	$a1,8
    # Line 988
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 993
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c808
    ld	$ra,16($sp)
.L0da3c7fc:
    # Line 1002
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c808:
    # Line 1001
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 995
    li	$a3,31
    sh	$a3,12($v0)
    # Line 997
    ld	$a0,0($sp)
    # Line 1000
    ld	$a3,8($sp)
    # Line 997
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 998
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 999
    lh	$a0,4($a0)
    sh	$a0,20($v0)
    # Line 1000
    lw	$v1,4996($a3)
    # Line 1001
    la	$a2,__glle_Normal3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1000
    ori	$v1,$v1,0x2
    # Line 1001
    jal	__glDlistAppendOp
    # Line 1000
    sw	$v1,4996($a3)
    b	.L0da3c7fc
    ld	$ra,16($sp)
.end __gllc_Normal3sv

# Function: __gllc_RasterPos2d
# Declared: Line 1005 (Source lines: 1006-1020)
# Address: 0x0da3c860 - 0x0da3c8f4 (Size: 148 bytes, Frame: 48)
.globl __gllc_RasterPos2d
.ent __gllc_RasterPos2d
__gllc_RasterPos2d:
    # Line 1009
    lw	$a0,4112($zero)
    # Line 1006
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 1009
    sd	$a0,16($sp)
    # Line 1006
    addiu	$at,$at,18296
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1011
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1006
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 1011
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 1006
    sdc1	$f12,0($sp)
    # Line 1011
    bnez	$v0,.L0da3c8ac
    # Line 1014
    li	$a4,1
    ld	$ra,24($sp)
.L0da3c8a0:
    # Line 1020
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3c8ac:
    # Line 1014
    sb	$a4,14($v0)
    # Line 1013
    li	$a5,32
    sh	$a5,12($v0)
    # Line 1019
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1018
    ld	$v1,16($sp)
    # Line 1017
    ldc1	$f0,8($sp)
    # Line 1016
    ldc1	$f1,0($sp)
    # Line 1017
    sdc1	$f0,24($v0)
    # Line 1016
    sdc1	$f1,16($v0)
    # Line 1018
    lw	$a3,4996($v1)
    # Line 1019
    la	$a2,__glle_RasterPos2dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1018
    ori	$v0,$a3,0x20
    # Line 1019
    jal	__glDlistAppendOp
    # Line 1018
    sw	$v0,4996($v1)
    b	.L0da3c8a0
    ld	$ra,24($sp)
.end __gllc_RasterPos2d

# Function: __gllc_RasterPos2dv
# Declared: Line 1023 (Source lines: 1024-1038)
# Address: 0x0da3c900 - 0x0da3c998 (Size: 152 bytes, Frame: 32)
.globl __gllc_RasterPos2dv
.ent __gllc_RasterPos2dv
__gllc_RasterPos2dv:
    # Line 1024
    lui	$v0,0x5
    # Line 1027
    lw	$at,4112($zero)
    # Line 1024
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,18136
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1029
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1027
    sd	$at,8($sp)
    # Line 1029
    li	$a1,16
    # Line 1024
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1029
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3c948
    ld	$ra,16($sp)
.L0da3c93c:
    # Line 1038
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3c948:
    # Line 1032
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1034
    ld	$a0,0($sp)
    # Line 1031
    li	$a2,32
    sh	$a2,12($v0)
    # Line 1034
    ldc1	$f1,0($a0)
    # Line 1037
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1034
    sdc1	$f1,16($v0)
    # Line 1035
    ldc1	$f0,8($a0)
    # Line 1036
    ld	$a3,8($sp)
    # Line 1035
    sdc1	$f0,24($v0)
    # Line 1036
    lw	$v1,4996($a3)
    # Line 1037
    la	$a2,__glle_RasterPos2dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1036
    ori	$v1,$v1,0x20
    # Line 1037
    jal	__glDlistAppendOp
    # Line 1036
    sw	$v1,4996($a3)
    b	.L0da3c93c
    ld	$ra,16($sp)
.end __gllc_RasterPos2dv

# Function: __gllc_RasterPos2f
# Declared: Line 1041 (Source lines: 1042-1055)
# Address: 0x0da3c9a0 - 0x0da3ca2c (Size: 140 bytes, Frame: 48)
.globl __gllc_RasterPos2f
.ent __gllc_RasterPos2f
__gllc_RasterPos2f:
    # Line 1045
    lw	$a0,4112($zero)
    # Line 1042
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 1045
    sd	$a0,16($sp)
    # Line 1042
    addiu	$at,$at,17976
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1047
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1042
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 1047
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 1042
    sdc1	$f12,0($sp)
    # Line 1047
    bnez	$v0,.L0da3c9ec
    # Line 1049
    li	$a4,33
    ld	$ra,24($sp)
.L0da3c9e0:
    # Line 1055
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3c9ec:
    # Line 1049
    sh	$a4,12($v0)
    # Line 1054
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1053
    ld	$v1,16($sp)
    # Line 1052
    ldc1	$f0,8($sp)
    # Line 1051
    ldc1	$f1,0($sp)
    # Line 1052
    swc1	$f0,20($v0)
    # Line 1051
    swc1	$f1,16($v0)
    # Line 1053
    lw	$a3,4996($v1)
    # Line 1054
    la	$a2,__glle_RasterPos2fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1053
    ori	$v0,$a3,0x20
    # Line 1054
    jal	__glDlistAppendOp
    # Line 1053
    sw	$v0,4996($v1)
    b	.L0da3c9e0
    ld	$ra,24($sp)
.end __gllc_RasterPos2f

# Function: __gllc_RasterPos2fv
# Declared: Line 1058 (Source lines: 1059-1072)
# Address: 0x0da3ca30 - 0x0da3cac0 (Size: 144 bytes, Frame: 32)
.globl __gllc_RasterPos2fv
.ent __gllc_RasterPos2fv
__gllc_RasterPos2fv:
    # Line 1059
    lui	$v0,0x5
    # Line 1062
    lw	$at,4112($zero)
    # Line 1059
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,17832
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1064
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1062
    sd	$at,8($sp)
    # Line 1064
    li	$a1,8
    # Line 1059
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1064
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ca78
    ld	$ra,16($sp)
.L0da3ca6c:
    # Line 1072
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ca78:
    # Line 1068
    ld	$a0,0($sp)
    # Line 1066
    li	$a1,33
    sh	$a1,12($v0)
    # Line 1068
    lwc1	$f1,0($a0)
    # Line 1071
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1068
    swc1	$f1,16($v0)
    # Line 1069
    lwc1	$f0,4($a0)
    # Line 1070
    ld	$a3,8($sp)
    # Line 1069
    swc1	$f0,20($v0)
    # Line 1070
    lw	$v1,4996($a3)
    # Line 1071
    la	$a2,__glle_RasterPos2fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1070
    ori	$v1,$v1,0x20
    # Line 1071
    jal	__glDlistAppendOp
    # Line 1070
    sw	$v1,4996($a3)
    b	.L0da3ca6c
    ld	$ra,16($sp)
.end __gllc_RasterPos2fv

# Function: __gllc_RasterPos2i
# Declared: Line 1075 (Source lines: 1076-1089)
# Address: 0x0da3cac0 - 0x0da3cb50 (Size: 144 bytes, Frame: 48)
.globl __gllc_RasterPos2i
.ent __gllc_RasterPos2i
__gllc_RasterPos2i:
    # Line 1079
    lw	$at,4112($zero)
    # Line 1076
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 1079
    sd	$at,16($sp)
    # Line 1076
    addiu	$v0,$v0,17688
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1081
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1076
    sd	$a1,8($sp)
    # Line 1081
    li	$a1,8
    # Line 1076
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 1081
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3cb10
    # Line 1083
    li	$a2,34
    ld	$ra,24($sp)
.L0da3cb04:
    # Line 1089
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3cb10:
    # Line 1083
    sh	$a2,12($v0)
    # Line 1088
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1085
    ld	$a1,0($sp)
    # Line 1086
    ld	$a0,8($sp)
    sw	$a0,20($v0)
    # Line 1087
    ld	$a3,16($sp)
    # Line 1085
    sw	$a1,16($v0)
    # Line 1087
    lw	$v1,4996($a3)
    # Line 1088
    la	$a2,__glle_RasterPos2iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1087
    ori	$v1,$v1,0x20
    # Line 1088
    jal	__glDlistAppendOp
    # Line 1087
    sw	$v1,4996($a3)
    b	.L0da3cb04
    ld	$ra,24($sp)
.end __gllc_RasterPos2i

# Function: __gllc_RasterPos2iv
# Declared: Line 1092 (Source lines: 1093-1106)
# Address: 0x0da3cb50 - 0x0da3cbe0 (Size: 144 bytes, Frame: 32)
.globl __gllc_RasterPos2iv
.ent __gllc_RasterPos2iv
__gllc_RasterPos2iv:
    # Line 1093
    lui	$v0,0x5
    # Line 1096
    lw	$at,4112($zero)
    # Line 1093
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,17544
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1098
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1096
    sd	$at,8($sp)
    # Line 1098
    li	$a1,8
    # Line 1093
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1098
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3cb98
    ld	$ra,16($sp)
.L0da3cb8c:
    # Line 1106
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3cb98:
    # Line 1105
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1104
    ld	$a3,8($sp)
    # Line 1102
    ld	$a0,0($sp)
    # Line 1100
    li	$a2,34
    sh	$a2,12($v0)
    # Line 1102
    lw	$a1,0($a0)
    sw	$a1,16($v0)
    # Line 1103
    lw	$a0,4($a0)
    sw	$a0,20($v0)
    # Line 1104
    lw	$v1,4996($a3)
    # Line 1105
    la	$a2,__glle_RasterPos2iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1104
    ori	$v1,$v1,0x20
    # Line 1105
    jal	__glDlistAppendOp
    # Line 1104
    sw	$v1,4996($a3)
    b	.L0da3cb8c
    ld	$ra,16($sp)
.end __gllc_RasterPos2iv

# Function: __gllc_RasterPos2s
# Declared: Line 1109 (Source lines: 1110-1123)
# Address: 0x0da3cbe0 - 0x0da3cc70 (Size: 144 bytes, Frame: 48)
.globl __gllc_RasterPos2s
.ent __gllc_RasterPos2s
__gllc_RasterPos2s:
    # Line 1113
    lw	$at,4112($zero)
    # Line 1110
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 1113
    sd	$at,16($sp)
    # Line 1110
    addiu	$v0,$v0,17400
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1115
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1110
    sd	$a1,8($sp)
    # Line 1115
    li	$a1,4
    # Line 1110
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 1115
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3cc30
    # Line 1117
    li	$a2,35
    ld	$ra,24($sp)
.L0da3cc24:
    # Line 1123
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3cc30:
    # Line 1117
    sh	$a2,12($v0)
    # Line 1122
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1119
    ld	$a1,0($sp)
    # Line 1120
    ld	$a0,8($sp)
    sh	$a0,18($v0)
    # Line 1121
    ld	$a3,16($sp)
    # Line 1119
    sh	$a1,16($v0)
    # Line 1121
    lw	$v1,4996($a3)
    # Line 1122
    la	$a2,__glle_RasterPos2sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1121
    ori	$v1,$v1,0x20
    # Line 1122
    jal	__glDlistAppendOp
    # Line 1121
    sw	$v1,4996($a3)
    b	.L0da3cc24
    ld	$ra,24($sp)
.end __gllc_RasterPos2s

# Function: __gllc_RasterPos2sv
# Declared: Line 1126 (Source lines: 1127-1140)
# Address: 0x0da3cc70 - 0x0da3cd00 (Size: 144 bytes, Frame: 32)
.globl __gllc_RasterPos2sv
.ent __gllc_RasterPos2sv
__gllc_RasterPos2sv:
    # Line 1127
    lui	$v0,0x5
    # Line 1130
    lw	$at,4112($zero)
    # Line 1127
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,17256
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1132
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1130
    sd	$at,8($sp)
    # Line 1132
    li	$a1,4
    # Line 1127
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1132
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ccb8
    ld	$ra,16($sp)
.L0da3ccac:
    # Line 1140
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ccb8:
    # Line 1139
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1138
    ld	$a3,8($sp)
    # Line 1136
    ld	$a0,0($sp)
    # Line 1134
    li	$a2,35
    sh	$a2,12($v0)
    # Line 1136
    lh	$a1,0($a0)
    sh	$a1,16($v0)
    # Line 1137
    lh	$a0,2($a0)
    sh	$a0,18($v0)
    # Line 1138
    lw	$v1,4996($a3)
    # Line 1139
    la	$a2,__glle_RasterPos2sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1138
    ori	$v1,$v1,0x20
    # Line 1139
    jal	__glDlistAppendOp
    # Line 1138
    sw	$v1,4996($a3)
    b	.L0da3ccac
    ld	$ra,16($sp)
.end __gllc_RasterPos2sv

# Function: __gllc_RasterPos3d
# Declared: Line 1143 (Source lines: 1144-1159)
# Address: 0x0da3cd00 - 0x0da3cda0 (Size: 160 bytes, Frame: 48)
.globl __gllc_RasterPos3d
.ent __gllc_RasterPos3d
__gllc_RasterPos3d:
    # Line 1147
    lw	$a0,4112($zero)
    # Line 1144
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 1147
    sd	$a0,24($sp)
    # Line 1144
    addiu	$at,$at,17112
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1149
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1144
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 1149
    li	$a1,24
    jal	__glDlistAllocOp2
    # Line 1144
    sdc1	$f12,0($sp)
    # Line 1149
    bnez	$v0,.L0da3cd50
    # Line 1152
    li	$a4,1
    ld	$ra,32($sp)
.L0da3cd44:
    # Line 1159
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3cd50:
    # Line 1152
    sb	$a4,14($v0)
    # Line 1151
    li	$a5,36
    sh	$a5,12($v0)
    # Line 1158
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1157
    ld	$v1,24($sp)
    # Line 1154
    ldc1	$f2,0($sp)
    # Line 1156
    ldc1	$f0,16($sp)
    # Line 1155
    ldc1	$f1,8($sp)
    # Line 1156
    sdc1	$f0,32($v0)
    # Line 1155
    sdc1	$f1,24($v0)
    # Line 1154
    sdc1	$f2,16($v0)
    # Line 1157
    lw	$a3,4996($v1)
    # Line 1158
    la	$a2,__glle_RasterPos3dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1157
    ori	$v0,$a3,0x20
    # Line 1158
    jal	__glDlistAppendOp
    # Line 1157
    sw	$v0,4996($v1)
    b	.L0da3cd44
    ld	$ra,32($sp)
.end __gllc_RasterPos3d

# Function: __gllc_RasterPos3dv
# Declared: Line 1162 (Source lines: 1163-1178)
# Address: 0x0da3cda0 - 0x0da3ce40 (Size: 160 bytes, Frame: 32)
.globl __gllc_RasterPos3dv
.ent __gllc_RasterPos3dv
__gllc_RasterPos3dv:
    # Line 1163
    lui	$v0,0x5
    # Line 1166
    lw	$at,4112($zero)
    # Line 1163
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,16952
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1168
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1166
    sd	$at,8($sp)
    # Line 1168
    li	$a1,24
    # Line 1163
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1168
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3cde8
    ld	$ra,16($sp)
.L0da3cddc:
    # Line 1178
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3cde8:
    # Line 1171
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1173
    ld	$a0,0($sp)
    # Line 1170
    li	$a2,36
    sh	$a2,12($v0)
    # Line 1173
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 1174
    ldc1	$f1,8($a0)
    # Line 1177
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1174
    sdc1	$f1,24($v0)
    # Line 1175
    ldc1	$f0,16($a0)
    # Line 1176
    ld	$a3,8($sp)
    # Line 1175
    sdc1	$f0,32($v0)
    # Line 1176
    lw	$v1,4996($a3)
    # Line 1177
    la	$a2,__glle_RasterPos3dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1176
    ori	$v1,$v1,0x20
    # Line 1177
    jal	__glDlistAppendOp
    # Line 1176
    sw	$v1,4996($a3)
    b	.L0da3cddc
    ld	$ra,16($sp)
.end __gllc_RasterPos3dv

# Function: __gllc_RasterPos3f
# Declared: Line 1181 (Source lines: 1182-1196)
# Address: 0x0da3ce40 - 0x0da3ced8 (Size: 152 bytes, Frame: 48)
.globl __gllc_RasterPos3f
.ent __gllc_RasterPos3f
__gllc_RasterPos3f:
    # Line 1185
    lw	$a0,4112($zero)
    # Line 1182
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 1185
    sd	$a0,24($sp)
    # Line 1182
    addiu	$at,$at,16792
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1187
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1182
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 1187
    li	$a1,12
    jal	__glDlistAllocOp2
    # Line 1182
    sdc1	$f12,0($sp)
    # Line 1187
    bnez	$v0,.L0da3ce90
    # Line 1189
    li	$a4,37
    ld	$ra,32($sp)
.L0da3ce84:
    # Line 1196
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3ce90:
    # Line 1189
    sh	$a4,12($v0)
    # Line 1195
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1194
    ld	$v1,24($sp)
    # Line 1191
    ldc1	$f2,0($sp)
    # Line 1193
    ldc1	$f0,16($sp)
    # Line 1192
    ldc1	$f1,8($sp)
    # Line 1193
    swc1	$f0,24($v0)
    # Line 1192
    swc1	$f1,20($v0)
    # Line 1191
    swc1	$f2,16($v0)
    # Line 1194
    lw	$a3,4996($v1)
    # Line 1195
    la	$a2,__glle_RasterPos3fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1194
    ori	$v0,$a3,0x20
    # Line 1195
    jal	__glDlistAppendOp
    # Line 1194
    sw	$v0,4996($v1)
    b	.L0da3ce84
    ld	$ra,32($sp)
.end __gllc_RasterPos3f

# Function: __gllc_RasterPos3fv
# Declared: Line 1199 (Source lines: 1200-1214)
# Address: 0x0da3cee0 - 0x0da3cf78 (Size: 152 bytes, Frame: 32)
.globl __gllc_RasterPos3fv
.ent __gllc_RasterPos3fv
__gllc_RasterPos3fv:
    # Line 1200
    lui	$v0,0x5
    # Line 1203
    lw	$at,4112($zero)
    # Line 1200
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,16632
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1205
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1203
    sd	$at,8($sp)
    # Line 1205
    li	$a1,12
    # Line 1200
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1205
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3cf28
    ld	$ra,16($sp)
.L0da3cf1c:
    # Line 1214
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3cf28:
    # Line 1209
    ld	$a0,0($sp)
    # Line 1207
    li	$a1,37
    sh	$a1,12($v0)
    # Line 1209
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 1210
    lwc1	$f1,4($a0)
    # Line 1213
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1210
    swc1	$f1,20($v0)
    # Line 1211
    lwc1	$f0,8($a0)
    # Line 1212
    ld	$a3,8($sp)
    # Line 1211
    swc1	$f0,24($v0)
    # Line 1212
    lw	$v1,4996($a3)
    # Line 1213
    la	$a2,__glle_RasterPos3fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1212
    ori	$v1,$v1,0x20
    # Line 1213
    jal	__glDlistAppendOp
    # Line 1212
    sw	$v1,4996($a3)
    b	.L0da3cf1c
    ld	$ra,16($sp)
.end __gllc_RasterPos3fv

# Function: __gllc_RasterPos3i
# Declared: Line 1217 (Source lines: 1218-1232)
# Address: 0x0da3cf80 - 0x0da3d01c (Size: 156 bytes, Frame: 48)
.globl __gllc_RasterPos3i
.ent __gllc_RasterPos3i
__gllc_RasterPos3i:
    # Line 1221
    lw	$at,4112($zero)
    # Line 1218
    addiu	$sp,$sp,-48
    # Line 1221
    sd	$at,24($sp)
    # Line 1218
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,16472
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 1223
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1218
    sd	$a1,8($sp)
    # Line 1223
    li	$a1,12
    # Line 1218
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 1223
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3cfd4
    # Line 1231
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,32($sp)
.L0da3cfc8:
    # Line 1232
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3cfd4:
    # Line 1227
    ld	$a2,0($sp)
    # Line 1228
    ld	$a1,8($sp)
    # Line 1229
    ld	$a0,16($sp)
    sw	$a0,24($v0)
    # Line 1228
    sw	$a1,20($v0)
    # Line 1225
    li	$a3,38
    sh	$a3,12($v0)
    # Line 1230
    ld	$a3,24($sp)
    # Line 1227
    sw	$a2,16($v0)
    # Line 1230
    lw	$v1,4996($a3)
    # Line 1231
    la	$a2,__glle_RasterPos3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1230
    ori	$v1,$v1,0x20
    # Line 1231
    jal	__glDlistAppendOp
    # Line 1230
    sw	$v1,4996($a3)
    b	.L0da3cfc8
    ld	$ra,32($sp)
.end __gllc_RasterPos3i

# Function: __gllc_RasterPos3iv
# Declared: Line 1235 (Source lines: 1236-1250)
# Address: 0x0da3d020 - 0x0da3d0b8 (Size: 152 bytes, Frame: 32)
.globl __gllc_RasterPos3iv
.ent __gllc_RasterPos3iv
__gllc_RasterPos3iv:
    # Line 1236
    lui	$v0,0x5
    # Line 1239
    lw	$at,4112($zero)
    # Line 1236
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,16312
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1241
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1239
    sd	$at,8($sp)
    # Line 1241
    li	$a1,12
    # Line 1236
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1241
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d068
    ld	$ra,16($sp)
.L0da3d05c:
    # Line 1250
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3d068:
    # Line 1249
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1243
    li	$a3,38
    sh	$a3,12($v0)
    # Line 1245
    ld	$a0,0($sp)
    # Line 1248
    ld	$a3,8($sp)
    # Line 1245
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 1246
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 1247
    lw	$a0,8($a0)
    sw	$a0,24($v0)
    # Line 1248
    lw	$v1,4996($a3)
    # Line 1249
    la	$a2,__glle_RasterPos3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1248
    ori	$v1,$v1,0x20
    # Line 1249
    jal	__glDlistAppendOp
    # Line 1248
    sw	$v1,4996($a3)
    b	.L0da3d05c
    ld	$ra,16($sp)
.end __gllc_RasterPos3iv

# Function: __gllc_RasterPos3s
# Declared: Line 1253 (Source lines: 1254-1268)
# Address: 0x0da3d0c0 - 0x0da3d15c (Size: 156 bytes, Frame: 48)
.globl __gllc_RasterPos3s
.ent __gllc_RasterPos3s
__gllc_RasterPos3s:
    # Line 1257
    lw	$at,4112($zero)
    # Line 1254
    addiu	$sp,$sp,-48
    # Line 1257
    sd	$at,24($sp)
    # Line 1254
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,16152
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 1259
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1254
    sd	$a1,8($sp)
    # Line 1259
    li	$a1,8
    # Line 1254
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 1259
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d114
    # Line 1267
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,32($sp)
.L0da3d108:
    # Line 1268
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3d114:
    # Line 1263
    ld	$a2,0($sp)
    # Line 1264
    ld	$a1,8($sp)
    # Line 1265
    ld	$a0,16($sp)
    sh	$a0,20($v0)
    # Line 1264
    sh	$a1,18($v0)
    # Line 1261
    li	$a3,39
    sh	$a3,12($v0)
    # Line 1266
    ld	$a3,24($sp)
    # Line 1263
    sh	$a2,16($v0)
    # Line 1266
    lw	$v1,4996($a3)
    # Line 1267
    la	$a2,__glle_RasterPos3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1266
    ori	$v1,$v1,0x20
    # Line 1267
    jal	__glDlistAppendOp
    # Line 1266
    sw	$v1,4996($a3)
    b	.L0da3d108
    ld	$ra,32($sp)
.end __gllc_RasterPos3s

# Function: __gllc_RasterPos3sv
# Declared: Line 1271 (Source lines: 1272-1286)
# Address: 0x0da3d160 - 0x0da3d1f8 (Size: 152 bytes, Frame: 32)
.globl __gllc_RasterPos3sv
.ent __gllc_RasterPos3sv
__gllc_RasterPos3sv:
    # Line 1272
    lui	$v0,0x5
    # Line 1275
    lw	$at,4112($zero)
    # Line 1272
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,15992
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1277
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1275
    sd	$at,8($sp)
    # Line 1277
    li	$a1,8
    # Line 1272
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1277
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d1a8
    ld	$ra,16($sp)
.L0da3d19c:
    # Line 1286
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3d1a8:
    # Line 1285
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1279
    li	$a3,39
    sh	$a3,12($v0)
    # Line 1281
    ld	$a0,0($sp)
    # Line 1284
    ld	$a3,8($sp)
    # Line 1281
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 1282
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 1283
    lh	$a0,4($a0)
    sh	$a0,20($v0)
    # Line 1284
    lw	$v1,4996($a3)
    # Line 1285
    la	$a2,__glle_RasterPos3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1284
    ori	$v1,$v1,0x20
    # Line 1285
    jal	__glDlistAppendOp
    # Line 1284
    sw	$v1,4996($a3)
    b	.L0da3d19c
    ld	$ra,16($sp)
.end __gllc_RasterPos3sv

# Function: __gllc_RasterPos4d
# Declared: Line 1289 (Source lines: 1290-1306)
# Address: 0x0da3d200 - 0x0da3d2ac (Size: 172 bytes, Frame: 192)
.globl __gllc_RasterPos4d
.ent __gllc_RasterPos4d
__gllc_RasterPos4d:
    # Line 1293
    lw	$a0,4112($zero)
    # Line 1290
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 1293
    sd	$a0,32($sp)
    # Line 1290
    addiu	$at,$at,15832
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 1295
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1290
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 1295
    li	$a1,32
    jal	__glDlistAllocOp2
    # Line 1290
    sdc1	$f12,0($sp)
    # Line 1295
    bnez	$v0,.L0da3d254
    # Line 1298
    li	$a4,1
    ld	$ra,40($sp)
.L0da3d248:
    # Line 1306
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3d254:
    # Line 1298
    sb	$a4,14($v0)
    # Line 1297
    li	$a5,40
    sh	$a5,12($v0)
    # Line 1305
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1304
    ld	$v1,32($sp)
    # Line 1300
    ldc1	$f3,0($sp)
    # Line 1301
    ldc1	$f2,8($sp)
    # Line 1303
    ldc1	$f0,24($sp)
    # Line 1302
    ldc1	$f1,16($sp)
    # Line 1303
    sdc1	$f0,40($v0)
    # Line 1302
    sdc1	$f1,32($v0)
    # Line 1301
    sdc1	$f2,24($v0)
    # Line 1300
    sdc1	$f3,16($v0)
    # Line 1304
    lw	$a3,4996($v1)
    # Line 1305
    la	$a2,__glle_RasterPos4dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1304
    ori	$v0,$a3,0x20
    # Line 1305
    jal	__glDlistAppendOp
    # Line 1304
    sw	$v0,4996($v1)
    b	.L0da3d248
    ld	$ra,40($sp)
.end __gllc_RasterPos4d

# Function: __gllc_RasterPos4dv
# Declared: Line 1309 (Source lines: 1310-1326)
# Address: 0x0da3d2b0 - 0x0da3d358 (Size: 168 bytes, Frame: 32)
.globl __gllc_RasterPos4dv
.ent __gllc_RasterPos4dv
__gllc_RasterPos4dv:
    # Line 1310
    lui	$v0,0x5
    # Line 1313
    lw	$at,4112($zero)
    # Line 1310
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,15656
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1315
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1313
    sd	$at,8($sp)
    # Line 1315
    li	$a1,32
    # Line 1310
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1315
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d2f8
    ld	$ra,16($sp)
.L0da3d2ec:
    # Line 1326
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3d2f8:
    # Line 1318
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1320
    ld	$a0,0($sp)
    # Line 1317
    li	$a2,40
    sh	$a2,12($v0)
    # Line 1320
    ldc1	$f3,0($a0)
    sdc1	$f3,16($v0)
    # Line 1321
    ldc1	$f2,8($a0)
    sdc1	$f2,24($v0)
    # Line 1322
    ldc1	$f1,16($a0)
    # Line 1325
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1322
    sdc1	$f1,32($v0)
    # Line 1323
    ldc1	$f0,24($a0)
    # Line 1324
    ld	$a3,8($sp)
    # Line 1323
    sdc1	$f0,40($v0)
    # Line 1324
    lw	$v1,4996($a3)
    # Line 1325
    la	$a2,__glle_RasterPos4dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1324
    ori	$v1,$v1,0x20
    # Line 1325
    jal	__glDlistAppendOp
    # Line 1324
    sw	$v1,4996($a3)
    b	.L0da3d2ec
    ld	$ra,16($sp)
.end __gllc_RasterPos4dv

# Function: __gllc_RasterPos4f
# Declared: Line 1329 (Source lines: 1330-1345)
# Address: 0x0da3d360 - 0x0da3d404 (Size: 164 bytes, Frame: 192)
.globl __gllc_RasterPos4f
.ent __gllc_RasterPos4f
__gllc_RasterPos4f:
    # Line 1333
    lw	$a0,4112($zero)
    # Line 1330
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 1333
    sd	$a0,32($sp)
    # Line 1330
    addiu	$at,$at,15480
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 1335
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1330
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 1335
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 1330
    sdc1	$f12,0($sp)
    # Line 1335
    bnez	$v0,.L0da3d3b4
    # Line 1337
    li	$a4,41
    ld	$ra,40($sp)
.L0da3d3a8:
    # Line 1345
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3d3b4:
    # Line 1337
    sh	$a4,12($v0)
    # Line 1344
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1343
    ld	$v1,32($sp)
    # Line 1339
    ldc1	$f3,0($sp)
    # Line 1340
    ldc1	$f2,8($sp)
    # Line 1342
    ldc1	$f0,24($sp)
    # Line 1341
    ldc1	$f1,16($sp)
    # Line 1342
    swc1	$f0,28($v0)
    # Line 1341
    swc1	$f1,24($v0)
    # Line 1340
    swc1	$f2,20($v0)
    # Line 1339
    swc1	$f3,16($v0)
    # Line 1343
    lw	$a3,4996($v1)
    # Line 1344
    la	$a2,__glle_RasterPos4fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1343
    ori	$v0,$a3,0x20
    # Line 1344
    jal	__glDlistAppendOp
    # Line 1343
    sw	$v0,4996($v1)
    b	.L0da3d3a8
    ld	$ra,40($sp)
.end __gllc_RasterPos4f

# Function: __gllc_RasterPos4fv
# Declared: Line 1348 (Source lines: 1349-1364)
# Address: 0x0da3d410 - 0x0da3d4b0 (Size: 160 bytes, Frame: 32)
.globl __gllc_RasterPos4fv
.ent __gllc_RasterPos4fv
__gllc_RasterPos4fv:
    # Line 1349
    lui	$v0,0x5
    # Line 1352
    lw	$at,4112($zero)
    # Line 1349
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,15304
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1354
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1352
    sd	$at,8($sp)
    # Line 1354
    li	$a1,16
    # Line 1349
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1354
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d458
    ld	$ra,16($sp)
.L0da3d44c:
    # Line 1364
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3d458:
    # Line 1358
    ld	$a0,0($sp)
    # Line 1356
    li	$a1,41
    sh	$a1,12($v0)
    # Line 1358
    lwc1	$f3,0($a0)
    swc1	$f3,16($v0)
    # Line 1359
    lwc1	$f2,4($a0)
    swc1	$f2,20($v0)
    # Line 1360
    lwc1	$f1,8($a0)
    # Line 1363
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1360
    swc1	$f1,24($v0)
    # Line 1361
    lwc1	$f0,12($a0)
    # Line 1362
    ld	$a3,8($sp)
    # Line 1361
    swc1	$f0,28($v0)
    # Line 1362
    lw	$v1,4996($a3)
    # Line 1363
    la	$a2,__glle_RasterPos4fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1362
    ori	$v1,$v1,0x20
    # Line 1363
    jal	__glDlistAppendOp
    # Line 1362
    sw	$v1,4996($a3)
    b	.L0da3d44c
    ld	$ra,16($sp)
.end __gllc_RasterPos4fv

# Function: __gllc_RasterPos4i
# Declared: Line 1367 (Source lines: 1368-1383)
# Address: 0x0da3d4b0 - 0x0da3d558 (Size: 168 bytes, Frame: 192)
.globl __gllc_RasterPos4i
.ent __gllc_RasterPos4i
__gllc_RasterPos4i:
    # Line 1368
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 1371
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 1368
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,15144
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 1373
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1368
    sd	$a1,8($sp)
    # Line 1373
    li	$a1,16
    # Line 1368
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 1373
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d508
    # Line 1375
    li	$a4,42
    ld	$ra,40($sp)
.L0da3d4fc:
    # Line 1383
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3d508:
    # Line 1375
    sh	$a4,12($v0)
    # Line 1382
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1378
    ld	$a2,8($sp)
    # Line 1379
    ld	$a1,24($sp)
    # Line 1380
    ld	$a0,32($sp)
    sw	$a0,28($v0)
    # Line 1379
    sw	$a1,24($v0)
    # Line 1377
    ld	$a3,0($sp)
    sw	$a3,16($v0)
    # Line 1381
    ld	$a3,16($sp)
    # Line 1378
    sw	$a2,20($v0)
    # Line 1381
    lw	$v1,4996($a3)
    # Line 1382
    la	$a2,__glle_RasterPos4iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1381
    ori	$v1,$v1,0x20
    # Line 1382
    jal	__glDlistAppendOp
    # Line 1381
    sw	$v1,4996($a3)
    b	.L0da3d4fc
    ld	$ra,40($sp)
.end __gllc_RasterPos4i

# Function: __gllc_RasterPos4iv
# Declared: Line 1386 (Source lines: 1387-1402)
# Address: 0x0da3d560 - 0x0da3d600 (Size: 160 bytes, Frame: 32)
.globl __gllc_RasterPos4iv
.ent __gllc_RasterPos4iv
__gllc_RasterPos4iv:
    # Line 1387
    lui	$v0,0x5
    # Line 1390
    lw	$at,4112($zero)
    # Line 1387
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,14968
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1392
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1390
    sd	$at,8($sp)
    # Line 1392
    li	$a1,16
    # Line 1387
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1392
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d5a8
    ld	$ra,16($sp)
.L0da3d59c:
    # Line 1402
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3d5a8:
    # Line 1401
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1396
    ld	$a0,0($sp)
    # Line 1394
    li	$a4,42
    sh	$a4,12($v0)
    # Line 1396
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 1400
    ld	$a3,8($sp)
    # Line 1397
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 1398
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 1399
    lw	$a0,12($a0)
    sw	$a0,28($v0)
    # Line 1400
    lw	$v1,4996($a3)
    # Line 1401
    la	$a2,__glle_RasterPos4iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1400
    ori	$v1,$v1,0x20
    # Line 1401
    jal	__glDlistAppendOp
    # Line 1400
    sw	$v1,4996($a3)
    b	.L0da3d59c
    ld	$ra,16($sp)
.end __gllc_RasterPos4iv

# Function: __gllc_RasterPos4s
# Declared: Line 1405 (Source lines: 1406-1421)
# Address: 0x0da3d600 - 0x0da3d6a8 (Size: 168 bytes, Frame: 192)
.globl __gllc_RasterPos4s
.ent __gllc_RasterPos4s
__gllc_RasterPos4s:
    # Line 1406
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 1409
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 1406
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,14808
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 1411
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1406
    sd	$a1,8($sp)
    # Line 1411
    li	$a1,8
    # Line 1406
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 1411
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d658
    # Line 1413
    li	$a4,43
    ld	$ra,40($sp)
.L0da3d64c:
    # Line 1421
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3d658:
    # Line 1413
    sh	$a4,12($v0)
    # Line 1420
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1416
    ld	$a2,8($sp)
    # Line 1417
    ld	$a1,24($sp)
    # Line 1418
    ld	$a0,32($sp)
    sh	$a0,22($v0)
    # Line 1417
    sh	$a1,20($v0)
    # Line 1415
    ld	$a3,0($sp)
    sh	$a3,16($v0)
    # Line 1419
    ld	$a3,16($sp)
    # Line 1416
    sh	$a2,18($v0)
    # Line 1419
    lw	$v1,4996($a3)
    # Line 1420
    la	$a2,__glle_RasterPos4sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1419
    ori	$v1,$v1,0x20
    # Line 1420
    jal	__glDlistAppendOp
    # Line 1419
    sw	$v1,4996($a3)
    b	.L0da3d64c
    ld	$ra,40($sp)
.end __gllc_RasterPos4s

# Function: __gllc_RasterPos4sv
# Declared: Line 1424 (Source lines: 1425-1440)
# Address: 0x0da3d6b0 - 0x0da3d750 (Size: 160 bytes, Frame: 32)
.globl __gllc_RasterPos4sv
.ent __gllc_RasterPos4sv
__gllc_RasterPos4sv:
    # Line 1425
    lui	$v0,0x5
    # Line 1428
    lw	$at,4112($zero)
    # Line 1425
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,14632
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1430
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1428
    sd	$at,8($sp)
    # Line 1430
    li	$a1,8
    # Line 1425
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1430
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d6f8
    ld	$ra,16($sp)
.L0da3d6ec:
    # Line 1440
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3d6f8:
    # Line 1439
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1434
    ld	$a0,0($sp)
    # Line 1432
    li	$a4,43
    sh	$a4,12($v0)
    # Line 1434
    lh	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 1438
    ld	$a3,8($sp)
    # Line 1435
    lh	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 1436
    lh	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 1437
    lh	$a0,6($a0)
    sh	$a0,22($v0)
    # Line 1438
    lw	$v1,4996($a3)
    # Line 1439
    la	$a2,__glle_RasterPos4sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1438
    ori	$v1,$v1,0x20
    # Line 1439
    jal	__glDlistAppendOp
    # Line 1438
    sw	$v1,4996($a3)
    b	.L0da3d6ec
    ld	$ra,16($sp)
.end __gllc_RasterPos4sv

# Function: __gllc_Rectd
# Declared: Line 1443 (Source lines: 1444-1460)
# Address: 0x0da3d750 - 0x0da3d7fc (Size: 172 bytes, Frame: 192)
.globl __gllc_Rectd
.ent __gllc_Rectd
__gllc_Rectd:
    # Line 1447
    lw	$a0,4112($zero)
    # Line 1444
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 1447
    sd	$a0,32($sp)
    # Line 1444
    addiu	$at,$at,14472
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 1449
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1444
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 1449
    li	$a1,32
    jal	__glDlistAllocOp2
    # Line 1444
    sdc1	$f12,0($sp)
    # Line 1449
    bnez	$v0,.L0da3d7a4
    # Line 1452
    li	$a4,1
    ld	$ra,40($sp)
.L0da3d798:
    # Line 1460
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3d7a4:
    # Line 1452
    sb	$a4,14($v0)
    # Line 1451
    li	$a5,44
    sh	$a5,12($v0)
    # Line 1459
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1458
    ld	$v1,32($sp)
    # Line 1454
    ldc1	$f3,0($sp)
    # Line 1455
    ldc1	$f2,8($sp)
    # Line 1457
    ldc1	$f0,24($sp)
    # Line 1456
    ldc1	$f1,16($sp)
    # Line 1457
    sdc1	$f0,40($v0)
    # Line 1456
    sdc1	$f1,32($v0)
    # Line 1455
    sdc1	$f2,24($v0)
    # Line 1454
    sdc1	$f3,16($v0)
    # Line 1458
    lw	$a3,4996($v1)
    # Line 1459
    la	$a2,__glle_Rectdv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1458
    ori	$v0,$a3,0x40
    # Line 1459
    jal	__glDlistAppendOp
    # Line 1458
    sw	$v0,4996($v1)
    b	.L0da3d798
    ld	$ra,40($sp)
.end __gllc_Rectd

# Function: __gllc_Rectdv
# Declared: Line 1463 (Source lines: 1464-1480)
# Address: 0x0da3d800 - 0x0da3d8b0 (Size: 176 bytes, Frame: 48)
.globl __gllc_Rectdv
.ent __gllc_Rectdv
__gllc_Rectdv:
    # Line 1467
    lw	$at,4112($zero)
    # Line 1464
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 1467
    sd	$at,16($sp)
    # Line 1464
    addiu	$v0,$v0,14296
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1469
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1464
    sd	$a1,8($sp)
    # Line 1469
    li	$a1,32
    # Line 1464
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 1469
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d84c
    ld	$ra,24($sp)
.L0da3d840:
    # Line 1480
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3d84c:
    # Line 1472
    li	$a2,1
    sb	$a2,14($v0)
    # Line 1474
    ld	$a1,0($sp)
    # Line 1471
    li	$a3,44
    sh	$a3,12($v0)
    # Line 1474
    ldc1	$f3,0($a1)
    sdc1	$f3,16($v0)
    # Line 1475
    ldc1	$f2,8($a1)
    # Line 1476
    ld	$a0,8($sp)
    # Line 1475
    sdc1	$f2,24($v0)
    # Line 1476
    ldc1	$f1,0($a0)
    # Line 1479
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1476
    sdc1	$f1,32($v0)
    # Line 1477
    ldc1	$f0,8($a0)
    # Line 1478
    ld	$a3,16($sp)
    # Line 1477
    sdc1	$f0,40($v0)
    # Line 1478
    lw	$v1,4996($a3)
    # Line 1479
    la	$a2,__glle_Rectdv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1478
    ori	$v1,$v1,0x40
    # Line 1479
    jal	__glDlistAppendOp
    # Line 1478
    sw	$v1,4996($a3)
    b	.L0da3d840
    ld	$ra,24($sp)
.end __gllc_Rectdv

# Function: __gllc_Rectf
# Declared: Line 1483 (Source lines: 1484-1499)
# Address: 0x0da3d8b0 - 0x0da3d954 (Size: 164 bytes, Frame: 192)
.globl __gllc_Rectf
.ent __gllc_Rectf
__gllc_Rectf:
    # Line 1487
    lw	$a0,4112($zero)
    # Line 1484
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 1487
    sd	$a0,32($sp)
    # Line 1484
    addiu	$at,$at,14120
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 1489
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1484
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 1489
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 1484
    sdc1	$f12,0($sp)
    # Line 1489
    bnez	$v0,.L0da3d904
    # Line 1491
    li	$a4,45
    ld	$ra,40($sp)
.L0da3d8f8:
    # Line 1499
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3d904:
    # Line 1491
    sh	$a4,12($v0)
    # Line 1498
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1497
    ld	$v1,32($sp)
    # Line 1493
    ldc1	$f3,0($sp)
    # Line 1494
    ldc1	$f2,8($sp)
    # Line 1496
    ldc1	$f0,24($sp)
    # Line 1495
    ldc1	$f1,16($sp)
    # Line 1496
    swc1	$f0,28($v0)
    # Line 1495
    swc1	$f1,24($v0)
    # Line 1494
    swc1	$f2,20($v0)
    # Line 1493
    swc1	$f3,16($v0)
    # Line 1497
    lw	$a3,4996($v1)
    # Line 1498
    la	$a2,__glle_Rectfv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1497
    ori	$v0,$a3,0x40
    # Line 1498
    jal	__glDlistAppendOp
    # Line 1497
    sw	$v0,4996($v1)
    b	.L0da3d8f8
    ld	$ra,40($sp)
.end __gllc_Rectf

# Function: __gllc_Rectfv
# Declared: Line 1502 (Source lines: 1503-1518)
# Address: 0x0da3d960 - 0x0da3da08 (Size: 168 bytes, Frame: 48)
.globl __gllc_Rectfv
.ent __gllc_Rectfv
__gllc_Rectfv:
    # Line 1506
    lw	$at,4112($zero)
    # Line 1503
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 1506
    sd	$at,16($sp)
    # Line 1503
    addiu	$v0,$v0,13944
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1508
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1503
    sd	$a1,8($sp)
    # Line 1508
    li	$a1,16
    # Line 1503
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 1508
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3d9ac
    ld	$ra,24($sp)
.L0da3d9a0:
    # Line 1518
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3d9ac:
    # Line 1512
    ld	$a1,0($sp)
    # Line 1510
    li	$a2,45
    sh	$a2,12($v0)
    # Line 1512
    lwc1	$f3,0($a1)
    swc1	$f3,16($v0)
    # Line 1513
    lwc1	$f2,4($a1)
    # Line 1514
    ld	$a0,8($sp)
    # Line 1513
    swc1	$f2,20($v0)
    # Line 1514
    lwc1	$f1,0($a0)
    # Line 1517
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1514
    swc1	$f1,24($v0)
    # Line 1515
    lwc1	$f0,4($a0)
    # Line 1516
    ld	$a3,16($sp)
    # Line 1515
    swc1	$f0,28($v0)
    # Line 1516
    lw	$v1,4996($a3)
    # Line 1517
    la	$a2,__glle_Rectfv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1516
    ori	$v1,$v1,0x40
    # Line 1517
    jal	__glDlistAppendOp
    # Line 1516
    sw	$v1,4996($a3)
    b	.L0da3d9a0
    ld	$ra,24($sp)
.end __gllc_Rectfv

# Function: __gllc_Recti
# Declared: Line 1521 (Source lines: 1522-1537)
# Address: 0x0da3da10 - 0x0da3dab8 (Size: 168 bytes, Frame: 192)
.globl __gllc_Recti
.ent __gllc_Recti
__gllc_Recti:
    # Line 1522
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 1525
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 1522
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,13768
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 1527
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1522
    sd	$a1,8($sp)
    # Line 1527
    li	$a1,16
    # Line 1522
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 1527
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3da68
    # Line 1529
    li	$a4,46
    ld	$ra,40($sp)
.L0da3da5c:
    # Line 1537
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3da68:
    # Line 1529
    sh	$a4,12($v0)
    # Line 1536
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1532
    ld	$a2,8($sp)
    # Line 1533
    ld	$a1,24($sp)
    # Line 1534
    ld	$a0,32($sp)
    sw	$a0,28($v0)
    # Line 1533
    sw	$a1,24($v0)
    # Line 1531
    ld	$a3,0($sp)
    sw	$a3,16($v0)
    # Line 1535
    ld	$a3,16($sp)
    # Line 1532
    sw	$a2,20($v0)
    # Line 1535
    lw	$v1,4996($a3)
    # Line 1536
    la	$a2,__glle_Rectiv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1535
    ori	$v1,$v1,0x40
    # Line 1536
    jal	__glDlistAppendOp
    # Line 1535
    sw	$v1,4996($a3)
    b	.L0da3da5c
    ld	$ra,40($sp)
.end __gllc_Recti

# Function: __gllc_Rectiv
# Declared: Line 1540 (Source lines: 1541-1556)
# Address: 0x0da3dac0 - 0x0da3db68 (Size: 168 bytes, Frame: 48)
.globl __gllc_Rectiv
.ent __gllc_Rectiv
__gllc_Rectiv:
    # Line 1544
    lw	$at,4112($zero)
    # Line 1541
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 1544
    sd	$at,16($sp)
    # Line 1541
    addiu	$v0,$v0,13592
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1546
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1541
    sd	$a1,8($sp)
    # Line 1546
    li	$a1,16
    # Line 1541
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 1546
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3db0c
    ld	$ra,24($sp)
.L0da3db00:
    # Line 1556
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3db0c:
    # Line 1555
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1552
    ld	$a0,8($sp)
    # Line 1550
    ld	$a2,0($sp)
    # Line 1548
    li	$a4,46
    sh	$a4,12($v0)
    # Line 1550
    lw	$a3,0($a2)
    sw	$a3,16($v0)
    # Line 1554
    ld	$a3,16($sp)
    # Line 1551
    lw	$a2,4($a2)
    sw	$a2,20($v0)
    # Line 1552
    lw	$a1,0($a0)
    sw	$a1,24($v0)
    # Line 1553
    lw	$a0,4($a0)
    sw	$a0,28($v0)
    # Line 1554
    lw	$v1,4996($a3)
    # Line 1555
    la	$a2,__glle_Rectiv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1554
    ori	$v1,$v1,0x40
    # Line 1555
    jal	__glDlistAppendOp
    # Line 1554
    sw	$v1,4996($a3)
    b	.L0da3db00
    ld	$ra,24($sp)
.end __gllc_Rectiv

# Function: __gllc_Rects
# Declared: Line 1559 (Source lines: 1560-1575)
# Address: 0x0da3db70 - 0x0da3dc18 (Size: 168 bytes, Frame: 192)
.globl __gllc_Rects
.ent __gllc_Rects
__gllc_Rects:
    # Line 1560
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 1563
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 1560
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,13416
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 1565
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1560
    sd	$a1,8($sp)
    # Line 1565
    li	$a1,8
    # Line 1560
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 1565
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3dbc8
    # Line 1567
    li	$a4,47
    ld	$ra,40($sp)
.L0da3dbbc:
    # Line 1575
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3dbc8:
    # Line 1567
    sh	$a4,12($v0)
    # Line 1574
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1570
    ld	$a2,8($sp)
    # Line 1571
    ld	$a1,24($sp)
    # Line 1572
    ld	$a0,32($sp)
    sh	$a0,22($v0)
    # Line 1571
    sh	$a1,20($v0)
    # Line 1569
    ld	$a3,0($sp)
    sh	$a3,16($v0)
    # Line 1573
    ld	$a3,16($sp)
    # Line 1570
    sh	$a2,18($v0)
    # Line 1573
    lw	$v1,4996($a3)
    # Line 1574
    la	$a2,__glle_Rectsv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1573
    ori	$v1,$v1,0x40
    # Line 1574
    jal	__glDlistAppendOp
    # Line 1573
    sw	$v1,4996($a3)
    b	.L0da3dbbc
    ld	$ra,40($sp)
.end __gllc_Rects

# Function: __gllc_Rectsv
# Declared: Line 1578 (Source lines: 1579-1594)
# Address: 0x0da3dc20 - 0x0da3dcc8 (Size: 168 bytes, Frame: 48)
.globl __gllc_Rectsv
.ent __gllc_Rectsv
__gllc_Rectsv:
    # Line 1582
    lw	$at,4112($zero)
    # Line 1579
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 1582
    sd	$at,16($sp)
    # Line 1579
    addiu	$v0,$v0,13240
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1584
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1579
    sd	$a1,8($sp)
    # Line 1584
    li	$a1,8
    # Line 1579
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 1584
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3dc6c
    ld	$ra,24($sp)
.L0da3dc60:
    # Line 1594
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3dc6c:
    # Line 1593
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1590
    ld	$a0,8($sp)
    # Line 1588
    ld	$a2,0($sp)
    # Line 1586
    li	$a4,47
    sh	$a4,12($v0)
    # Line 1588
    lh	$a3,0($a2)
    sh	$a3,16($v0)
    # Line 1592
    ld	$a3,16($sp)
    # Line 1589
    lh	$a2,2($a2)
    sh	$a2,18($v0)
    # Line 1590
    lh	$a1,0($a0)
    sh	$a1,20($v0)
    # Line 1591
    lh	$a0,2($a0)
    sh	$a0,22($v0)
    # Line 1592
    lw	$v1,4996($a3)
    # Line 1593
    la	$a2,__glle_Rectsv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1592
    ori	$v1,$v1,0x40
    # Line 1593
    jal	__glDlistAppendOp
    # Line 1592
    sw	$v1,4996($a3)
    b	.L0da3dc60
    ld	$ra,24($sp)
.end __gllc_Rectsv

# Function: __gllc_TexCoord1d
# Declared: Line 1597 (Source lines: 1598-1611)
# Address: 0x0da3dcd0 - 0x0da3dd58 (Size: 136 bytes, Frame: 32)
.globl __gllc_TexCoord1d
.ent __gllc_TexCoord1d
__gllc_TexCoord1d:
    # Line 1598
    lui	$at,0x5
    # Line 1601
    lw	$a0,4112($zero)
    # Line 1598
    addiu	$sp,$sp,-32
    addiu	$at,$at,13064
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1603
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1601
    sd	$a0,8($sp)
    # Line 1598
    sd	$ra,16($sp)
    # Line 1603
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 1598
    sdc1	$f12,0($sp)
    # Line 1603
    bnez	$v0,.L0da3dd18
    # Line 1606
    li	$a4,1
    ld	$ra,16($sp)
.L0da3dd0c:
    # Line 1611
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3dd18:
    # Line 1606
    sb	$a4,14($v0)
    # Line 1605
    li	$a5,48
    sh	$a5,12($v0)
    # Line 1610
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1608
    ldc1	$f0,0($sp)
    # Line 1609
    ld	$v1,8($sp)
    # Line 1608
    sdc1	$f0,16($v0)
    # Line 1609
    lw	$a3,4996($v1)
    # Line 1610
    la	$a2,__glle_TexCoord1dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1609
    ori	$v0,$a3,0x8
    # Line 1610
    jal	__glDlistAppendOp
    # Line 1609
    sw	$v0,4996($v1)
    b	.L0da3dd0c
    ld	$ra,16($sp)
.end __gllc_TexCoord1d

# Function: __gllc_TexCoord1dv
# Declared: Line 1614 (Source lines: 1615-1628)
# Address: 0x0da3dd60 - 0x0da3ddf0 (Size: 144 bytes, Frame: 32)
.globl __gllc_TexCoord1dv
.ent __gllc_TexCoord1dv
__gllc_TexCoord1dv:
    # Line 1615
    lui	$v0,0x5
    # Line 1618
    lw	$at,4112($zero)
    # Line 1615
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,12920
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1620
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1618
    sd	$at,8($sp)
    # Line 1620
    li	$a1,8
    # Line 1615
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1620
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3dda8
    ld	$ra,16($sp)
.L0da3dd9c:
    # Line 1628
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3dda8:
    # Line 1627
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1623
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1625
    ld	$a0,0($sp)
    # Line 1622
    li	$a2,48
    sh	$a2,12($v0)
    # Line 1625
    ldc1	$f0,0($a0)
    # Line 1626
    ld	$a3,8($sp)
    # Line 1625
    sdc1	$f0,16($v0)
    # Line 1626
    lw	$v1,4996($a3)
    # Line 1627
    la	$a2,__glle_TexCoord1dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1626
    ori	$v1,$v1,0x8
    # Line 1627
    jal	__glDlistAppendOp
    # Line 1626
    sw	$v1,4996($a3)
    b	.L0da3dd9c
    ld	$ra,16($sp)
.end __gllc_TexCoord1dv

# Function: __gllc_TexCoord1f
# Declared: Line 1631 (Source lines: 1632-1644)
# Address: 0x0da3ddf0 - 0x0da3de70 (Size: 128 bytes, Frame: 32)
.globl __gllc_TexCoord1f
.ent __gllc_TexCoord1f
__gllc_TexCoord1f:
    # Line 1632
    lui	$at,0x5
    # Line 1635
    lw	$a0,4112($zero)
    # Line 1632
    addiu	$sp,$sp,-32
    addiu	$at,$at,12776
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 1637
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1635
    sd	$a0,8($sp)
    # Line 1632
    sd	$ra,16($sp)
    # Line 1637
    li	$a1,4
    jal	__glDlistAllocOp2
    # Line 1632
    sdc1	$f12,0($sp)
    # Line 1637
    bnez	$v0,.L0da3de38
    # Line 1639
    li	$a4,49
    ld	$ra,16($sp)
.L0da3de2c:
    # Line 1644
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3de38:
    # Line 1639
    sh	$a4,12($v0)
    # Line 1643
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1641
    ldc1	$f0,0($sp)
    # Line 1642
    ld	$v1,8($sp)
    # Line 1641
    swc1	$f0,16($v0)
    # Line 1642
    lw	$a3,4996($v1)
    # Line 1643
    la	$a2,__glle_TexCoord1fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1642
    ori	$v0,$a3,0x8
    # Line 1643
    jal	__glDlistAppendOp
    # Line 1642
    sw	$v0,4996($v1)
    b	.L0da3de2c
    ld	$ra,16($sp)
.end __gllc_TexCoord1f

# Function: __gllc_TexCoord1fv
# Declared: Line 1647 (Source lines: 1648-1660)
# Address: 0x0da3de70 - 0x0da3def8 (Size: 136 bytes, Frame: 32)
.globl __gllc_TexCoord1fv
.ent __gllc_TexCoord1fv
__gllc_TexCoord1fv:
    # Line 1648
    lui	$v0,0x5
    # Line 1651
    lw	$at,4112($zero)
    # Line 1648
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,12648
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1653
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1651
    sd	$at,8($sp)
    # Line 1653
    li	$a1,4
    # Line 1648
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1653
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3deb8
    ld	$ra,16($sp)
.L0da3deac:
    # Line 1660
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3deb8:
    # Line 1659
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1657
    ld	$a0,0($sp)
    # Line 1655
    li	$a1,49
    sh	$a1,12($v0)
    # Line 1657
    lwc1	$f0,0($a0)
    # Line 1658
    ld	$a3,8($sp)
    # Line 1657
    swc1	$f0,16($v0)
    # Line 1658
    lw	$v1,4996($a3)
    # Line 1659
    la	$a2,__glle_TexCoord1fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1658
    ori	$v1,$v1,0x8
    # Line 1659
    jal	__glDlistAppendOp
    # Line 1658
    sw	$v1,4996($a3)
    b	.L0da3deac
    ld	$ra,16($sp)
.end __gllc_TexCoord1fv

# Function: __gllc_TexCoord1i
# Declared: Line 1663 (Source lines: 1664-1676)
# Address: 0x0da3df00 - 0x0da3df84 (Size: 132 bytes, Frame: 32)
.globl __gllc_TexCoord1i
.ent __gllc_TexCoord1i
__gllc_TexCoord1i:
    # Line 1664
    lui	$v0,0x5
    # Line 1667
    lw	$at,4112($zero)
    # Line 1664
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,12504
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1669
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1667
    sd	$at,8($sp)
    # Line 1669
    li	$a1,4
    # Line 1664
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1669
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3df4c
    # Line 1671
    li	$a1,50
    ld	$ra,16($sp)
.L0da3df40:
    # Line 1676
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3df4c:
    # Line 1671
    sh	$a1,12($v0)
    # Line 1675
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1673
    ld	$a0,0($sp)
    # Line 1674
    ld	$a3,8($sp)
    # Line 1673
    sw	$a0,16($v0)
    # Line 1674
    lw	$v1,4996($a3)
    # Line 1675
    la	$a2,__glle_TexCoord1iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1674
    ori	$v1,$v1,0x8
    # Line 1675
    jal	__glDlistAppendOp
    # Line 1674
    sw	$v1,4996($a3)
    b	.L0da3df40
    ld	$ra,16($sp)
.end __gllc_TexCoord1i

# Function: __gllc_TexCoord1iv
# Declared: Line 1679 (Source lines: 1680-1692)
# Address: 0x0da3df90 - 0x0da3e018 (Size: 136 bytes, Frame: 32)
.globl __gllc_TexCoord1iv
.ent __gllc_TexCoord1iv
__gllc_TexCoord1iv:
    # Line 1680
    lui	$v0,0x5
    # Line 1683
    lw	$at,4112($zero)
    # Line 1680
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,12360
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1685
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1683
    sd	$at,8($sp)
    # Line 1685
    li	$a1,4
    # Line 1680
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1685
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3dfd8
    ld	$ra,16($sp)
.L0da3dfcc:
    # Line 1692
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3dfd8:
    # Line 1691
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1687
    li	$a1,50
    sh	$a1,12($v0)
    # Line 1689
    ld	$a0,0($sp)
    # Line 1690
    ld	$a3,8($sp)
    # Line 1689
    lw	$a0,0($a0)
    sw	$a0,16($v0)
    # Line 1690
    lw	$v1,4996($a3)
    # Line 1691
    la	$a2,__glle_TexCoord1iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1690
    ori	$v1,$v1,0x8
    # Line 1691
    jal	__glDlistAppendOp
    # Line 1690
    sw	$v1,4996($a3)
    b	.L0da3dfcc
    ld	$ra,16($sp)
.end __gllc_TexCoord1iv

# Function: __gllc_TexCoord1s
# Declared: Line 1695 (Source lines: 1696-1708)
# Address: 0x0da3e020 - 0x0da3e0a4 (Size: 132 bytes, Frame: 32)
.globl __gllc_TexCoord1s
.ent __gllc_TexCoord1s
__gllc_TexCoord1s:
    # Line 1696
    lui	$v0,0x5
    # Line 1699
    lw	$at,4112($zero)
    # Line 1696
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,12216
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1701
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1699
    sd	$at,8($sp)
    # Line 1701
    li	$a1,4
    # Line 1696
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1701
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e06c
    # Line 1703
    li	$a1,51
    ld	$ra,16($sp)
.L0da3e060:
    # Line 1708
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3e06c:
    # Line 1703
    sh	$a1,12($v0)
    # Line 1707
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1705
    ld	$a0,0($sp)
    # Line 1706
    ld	$a3,8($sp)
    # Line 1705
    sh	$a0,16($v0)
    # Line 1706
    lw	$v1,4996($a3)
    # Line 1707
    la	$a2,__glle_TexCoord1sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1706
    ori	$v1,$v1,0x8
    # Line 1707
    jal	__glDlistAppendOp
    # Line 1706
    sw	$v1,4996($a3)
    b	.L0da3e060
    ld	$ra,16($sp)
.end __gllc_TexCoord1s

# Function: __gllc_TexCoord1sv
# Declared: Line 1711 (Source lines: 1712-1724)
# Address: 0x0da3e0b0 - 0x0da3e138 (Size: 136 bytes, Frame: 32)
.globl __gllc_TexCoord1sv
.ent __gllc_TexCoord1sv
__gllc_TexCoord1sv:
    # Line 1712
    lui	$v0,0x5
    # Line 1715
    lw	$at,4112($zero)
    # Line 1712
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,12072
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1717
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1715
    sd	$at,8($sp)
    # Line 1717
    li	$a1,4
    # Line 1712
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1717
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e0f8
    ld	$ra,16($sp)
.L0da3e0ec:
    # Line 1724
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3e0f8:
    # Line 1723
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1719
    li	$a1,51
    sh	$a1,12($v0)
    # Line 1721
    ld	$a0,0($sp)
    # Line 1722
    ld	$a3,8($sp)
    # Line 1721
    lh	$a0,0($a0)
    sh	$a0,16($v0)
    # Line 1722
    lw	$v1,4996($a3)
    # Line 1723
    la	$a2,__glle_TexCoord1sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1722
    ori	$v1,$v1,0x8
    # Line 1723
    jal	__glDlistAppendOp
    # Line 1722
    sw	$v1,4996($a3)
    b	.L0da3e0ec
    ld	$ra,16($sp)
.end __gllc_TexCoord1sv

# Function: __gllc_TexCoord2d
# Declared: Line 1727 (Source lines: 1728-1742)
# Address: 0x0da3e140 - 0x0da3e1d4 (Size: 148 bytes, Frame: 48)
.globl __gllc_TexCoord2d
.ent __gllc_TexCoord2d
__gllc_TexCoord2d:
    # Line 1731
    lw	$a0,4112($zero)
    # Line 1728
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 1731
    sd	$a0,16($sp)
    # Line 1728
    addiu	$at,$at,11928
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1733
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1728
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 1733
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 1728
    sdc1	$f12,0($sp)
    # Line 1733
    bnez	$v0,.L0da3e18c
    # Line 1736
    li	$a4,1
    ld	$ra,24($sp)
.L0da3e180:
    # Line 1742
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3e18c:
    # Line 1736
    sb	$a4,14($v0)
    # Line 1735
    li	$a5,52
    sh	$a5,12($v0)
    # Line 1741
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1740
    ld	$v1,16($sp)
    # Line 1739
    ldc1	$f0,8($sp)
    # Line 1738
    ldc1	$f1,0($sp)
    # Line 1739
    sdc1	$f0,24($v0)
    # Line 1738
    sdc1	$f1,16($v0)
    # Line 1740
    lw	$a3,4996($v1)
    # Line 1741
    la	$a2,__glle_TexCoord2dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1740
    ori	$v0,$a3,0x8
    # Line 1741
    jal	__glDlistAppendOp
    # Line 1740
    sw	$v0,4996($v1)
    b	.L0da3e180
    ld	$ra,24($sp)
.end __gllc_TexCoord2d

# Function: __gllc_TexCoord2dv
# Declared: Line 1745 (Source lines: 1746-1760)
# Address: 0x0da3e1e0 - 0x0da3e278 (Size: 152 bytes, Frame: 32)
.globl __gllc_TexCoord2dv
.ent __gllc_TexCoord2dv
__gllc_TexCoord2dv:
    # Line 1746
    lui	$v0,0x5
    # Line 1749
    lw	$at,4112($zero)
    # Line 1746
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,11768
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1751
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1749
    sd	$at,8($sp)
    # Line 1751
    li	$a1,16
    # Line 1746
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1751
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e228
    ld	$ra,16($sp)
.L0da3e21c:
    # Line 1760
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3e228:
    # Line 1754
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1756
    ld	$a0,0($sp)
    # Line 1753
    li	$a2,52
    sh	$a2,12($v0)
    # Line 1756
    ldc1	$f1,0($a0)
    # Line 1759
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1756
    sdc1	$f1,16($v0)
    # Line 1757
    ldc1	$f0,8($a0)
    # Line 1758
    ld	$a3,8($sp)
    # Line 1757
    sdc1	$f0,24($v0)
    # Line 1758
    lw	$v1,4996($a3)
    # Line 1759
    la	$a2,__glle_TexCoord2dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1758
    ori	$v1,$v1,0x8
    # Line 1759
    jal	__glDlistAppendOp
    # Line 1758
    sw	$v1,4996($a3)
    b	.L0da3e21c
    ld	$ra,16($sp)
.end __gllc_TexCoord2dv

# Function: __gllc_TexCoord2f
# Declared: Line 1763 (Source lines: 1764-1777)
# Address: 0x0da3e280 - 0x0da3e30c (Size: 140 bytes, Frame: 48)
.globl __gllc_TexCoord2f
.ent __gllc_TexCoord2f
__gllc_TexCoord2f:
    # Line 1767
    lw	$a0,4112($zero)
    # Line 1764
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 1767
    sd	$a0,16($sp)
    # Line 1764
    addiu	$at,$at,11608
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 1769
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1764
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 1769
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 1764
    sdc1	$f12,0($sp)
    # Line 1769
    bnez	$v0,.L0da3e2cc
    # Line 1771
    li	$a4,53
    ld	$ra,24($sp)
.L0da3e2c0:
    # Line 1777
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3e2cc:
    # Line 1771
    sh	$a4,12($v0)
    # Line 1776
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1775
    ld	$v1,16($sp)
    # Line 1774
    ldc1	$f0,8($sp)
    # Line 1773
    ldc1	$f1,0($sp)
    # Line 1774
    swc1	$f0,20($v0)
    # Line 1773
    swc1	$f1,16($v0)
    # Line 1775
    lw	$a3,4996($v1)
    # Line 1776
    la	$a2,__glle_TexCoord2fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1775
    ori	$v0,$a3,0x8
    # Line 1776
    jal	__glDlistAppendOp
    # Line 1775
    sw	$v0,4996($v1)
    b	.L0da3e2c0
    ld	$ra,24($sp)
.end __gllc_TexCoord2f

# Function: __gllc_TexCoord2fv
# Declared: Line 1780 (Source lines: 1781-1794)
# Address: 0x0da3e310 - 0x0da3e3a0 (Size: 144 bytes, Frame: 32)
.globl __gllc_TexCoord2fv
.ent __gllc_TexCoord2fv
__gllc_TexCoord2fv:
    # Line 1781
    lui	$v0,0x5
    # Line 1784
    lw	$at,4112($zero)
    # Line 1781
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,11464
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1786
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1784
    sd	$at,8($sp)
    # Line 1786
    li	$a1,8
    # Line 1781
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1786
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e358
    ld	$ra,16($sp)
.L0da3e34c:
    # Line 1794
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3e358:
    # Line 1790
    ld	$a0,0($sp)
    # Line 1788
    li	$a1,53
    sh	$a1,12($v0)
    # Line 1790
    lwc1	$f1,0($a0)
    # Line 1793
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1790
    swc1	$f1,16($v0)
    # Line 1791
    lwc1	$f0,4($a0)
    # Line 1792
    ld	$a3,8($sp)
    # Line 1791
    swc1	$f0,20($v0)
    # Line 1792
    lw	$v1,4996($a3)
    # Line 1793
    la	$a2,__glle_TexCoord2fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1792
    ori	$v1,$v1,0x8
    # Line 1793
    jal	__glDlistAppendOp
    # Line 1792
    sw	$v1,4996($a3)
    b	.L0da3e34c
    ld	$ra,16($sp)
.end __gllc_TexCoord2fv

# Function: __gllc_TexCoord2i
# Declared: Line 1797 (Source lines: 1798-1811)
# Address: 0x0da3e3a0 - 0x0da3e430 (Size: 144 bytes, Frame: 48)
.globl __gllc_TexCoord2i
.ent __gllc_TexCoord2i
__gllc_TexCoord2i:
    # Line 1801
    lw	$at,4112($zero)
    # Line 1798
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 1801
    sd	$at,16($sp)
    # Line 1798
    addiu	$v0,$v0,11320
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1803
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1798
    sd	$a1,8($sp)
    # Line 1803
    li	$a1,8
    # Line 1798
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 1803
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e3f0
    # Line 1805
    li	$a2,54
    ld	$ra,24($sp)
.L0da3e3e4:
    # Line 1811
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3e3f0:
    # Line 1805
    sh	$a2,12($v0)
    # Line 1810
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1807
    ld	$a1,0($sp)
    # Line 1808
    ld	$a0,8($sp)
    sw	$a0,20($v0)
    # Line 1809
    ld	$a3,16($sp)
    # Line 1807
    sw	$a1,16($v0)
    # Line 1809
    lw	$v1,4996($a3)
    # Line 1810
    la	$a2,__glle_TexCoord2iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1809
    ori	$v1,$v1,0x8
    # Line 1810
    jal	__glDlistAppendOp
    # Line 1809
    sw	$v1,4996($a3)
    b	.L0da3e3e4
    ld	$ra,24($sp)
.end __gllc_TexCoord2i

# Function: __gllc_TexCoord2iv
# Declared: Line 1814 (Source lines: 1815-1828)
# Address: 0x0da3e430 - 0x0da3e4c0 (Size: 144 bytes, Frame: 32)
.globl __gllc_TexCoord2iv
.ent __gllc_TexCoord2iv
__gllc_TexCoord2iv:
    # Line 1815
    lui	$v0,0x5
    # Line 1818
    lw	$at,4112($zero)
    # Line 1815
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,11176
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1820
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1818
    sd	$at,8($sp)
    # Line 1820
    li	$a1,8
    # Line 1815
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1820
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e478
    ld	$ra,16($sp)
.L0da3e46c:
    # Line 1828
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3e478:
    # Line 1827
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1826
    ld	$a3,8($sp)
    # Line 1824
    ld	$a0,0($sp)
    # Line 1822
    li	$a2,54
    sh	$a2,12($v0)
    # Line 1824
    lw	$a1,0($a0)
    sw	$a1,16($v0)
    # Line 1825
    lw	$a0,4($a0)
    sw	$a0,20($v0)
    # Line 1826
    lw	$v1,4996($a3)
    # Line 1827
    la	$a2,__glle_TexCoord2iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1826
    ori	$v1,$v1,0x8
    # Line 1827
    jal	__glDlistAppendOp
    # Line 1826
    sw	$v1,4996($a3)
    b	.L0da3e46c
    ld	$ra,16($sp)
.end __gllc_TexCoord2iv

# Function: __gllc_TexCoord2s
# Declared: Line 1831 (Source lines: 1832-1845)
# Address: 0x0da3e4c0 - 0x0da3e550 (Size: 144 bytes, Frame: 48)
.globl __gllc_TexCoord2s
.ent __gllc_TexCoord2s
__gllc_TexCoord2s:
    # Line 1835
    lw	$at,4112($zero)
    # Line 1832
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 1835
    sd	$at,16($sp)
    # Line 1832
    addiu	$v0,$v0,11032
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 1837
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1832
    sd	$a1,8($sp)
    # Line 1837
    li	$a1,4
    # Line 1832
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 1837
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e510
    # Line 1839
    li	$a2,55
    ld	$ra,24($sp)
.L0da3e504:
    # Line 1845
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3e510:
    # Line 1839
    sh	$a2,12($v0)
    # Line 1844
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1841
    ld	$a1,0($sp)
    # Line 1842
    ld	$a0,8($sp)
    sh	$a0,18($v0)
    # Line 1843
    ld	$a3,16($sp)
    # Line 1841
    sh	$a1,16($v0)
    # Line 1843
    lw	$v1,4996($a3)
    # Line 1844
    la	$a2,__glle_TexCoord2sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1843
    ori	$v1,$v1,0x8
    # Line 1844
    jal	__glDlistAppendOp
    # Line 1843
    sw	$v1,4996($a3)
    b	.L0da3e504
    ld	$ra,24($sp)
.end __gllc_TexCoord2s

# Function: __gllc_TexCoord2sv
# Declared: Line 1848 (Source lines: 1849-1862)
# Address: 0x0da3e550 - 0x0da3e5e0 (Size: 144 bytes, Frame: 32)
.globl __gllc_TexCoord2sv
.ent __gllc_TexCoord2sv
__gllc_TexCoord2sv:
    # Line 1849
    lui	$v0,0x5
    # Line 1852
    lw	$at,4112($zero)
    # Line 1849
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,10888
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1854
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1852
    sd	$at,8($sp)
    # Line 1854
    li	$a1,4
    # Line 1849
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1854
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e598
    ld	$ra,16($sp)
.L0da3e58c:
    # Line 1862
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3e598:
    # Line 1861
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1860
    ld	$a3,8($sp)
    # Line 1858
    ld	$a0,0($sp)
    # Line 1856
    li	$a2,55
    sh	$a2,12($v0)
    # Line 1858
    lh	$a1,0($a0)
    sh	$a1,16($v0)
    # Line 1859
    lh	$a0,2($a0)
    sh	$a0,18($v0)
    # Line 1860
    lw	$v1,4996($a3)
    # Line 1861
    la	$a2,__glle_TexCoord2sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1860
    ori	$v1,$v1,0x8
    # Line 1861
    jal	__glDlistAppendOp
    # Line 1860
    sw	$v1,4996($a3)
    b	.L0da3e58c
    ld	$ra,16($sp)
.end __gllc_TexCoord2sv

# Function: __gllc_TexCoord3d
# Declared: Line 1865 (Source lines: 1866-1881)
# Address: 0x0da3e5e0 - 0x0da3e680 (Size: 160 bytes, Frame: 48)
.globl __gllc_TexCoord3d
.ent __gllc_TexCoord3d
__gllc_TexCoord3d:
    # Line 1869
    lw	$a0,4112($zero)
    # Line 1866
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 1869
    sd	$a0,24($sp)
    # Line 1866
    addiu	$at,$at,10744
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1871
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1866
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 1871
    li	$a1,24
    jal	__glDlistAllocOp2
    # Line 1866
    sdc1	$f12,0($sp)
    # Line 1871
    bnez	$v0,.L0da3e630
    # Line 1874
    li	$a4,1
    ld	$ra,32($sp)
.L0da3e624:
    # Line 1881
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3e630:
    # Line 1874
    sb	$a4,14($v0)
    # Line 1873
    li	$a5,56
    sh	$a5,12($v0)
    # Line 1880
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1879
    ld	$v1,24($sp)
    # Line 1876
    ldc1	$f2,0($sp)
    # Line 1878
    ldc1	$f0,16($sp)
    # Line 1877
    ldc1	$f1,8($sp)
    # Line 1878
    sdc1	$f0,32($v0)
    # Line 1877
    sdc1	$f1,24($v0)
    # Line 1876
    sdc1	$f2,16($v0)
    # Line 1879
    lw	$a3,4996($v1)
    # Line 1880
    la	$a2,__glle_TexCoord3dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1879
    ori	$v0,$a3,0x8
    # Line 1880
    jal	__glDlistAppendOp
    # Line 1879
    sw	$v0,4996($v1)
    b	.L0da3e624
    ld	$ra,32($sp)
.end __gllc_TexCoord3d

# Function: __gllc_TexCoord3dv
# Declared: Line 1884 (Source lines: 1885-1900)
# Address: 0x0da3e680 - 0x0da3e720 (Size: 160 bytes, Frame: 32)
.globl __gllc_TexCoord3dv
.ent __gllc_TexCoord3dv
__gllc_TexCoord3dv:
    # Line 1885
    lui	$v0,0x5
    # Line 1888
    lw	$at,4112($zero)
    # Line 1885
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,10584
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1890
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1888
    sd	$at,8($sp)
    # Line 1890
    li	$a1,24
    # Line 1885
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1890
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e6c8
    ld	$ra,16($sp)
.L0da3e6bc:
    # Line 1900
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3e6c8:
    # Line 1893
    li	$a1,1
    sb	$a1,14($v0)
    # Line 1895
    ld	$a0,0($sp)
    # Line 1892
    li	$a2,56
    sh	$a2,12($v0)
    # Line 1895
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 1896
    ldc1	$f1,8($a0)
    # Line 1899
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1896
    sdc1	$f1,24($v0)
    # Line 1897
    ldc1	$f0,16($a0)
    # Line 1898
    ld	$a3,8($sp)
    # Line 1897
    sdc1	$f0,32($v0)
    # Line 1898
    lw	$v1,4996($a3)
    # Line 1899
    la	$a2,__glle_TexCoord3dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1898
    ori	$v1,$v1,0x8
    # Line 1899
    jal	__glDlistAppendOp
    # Line 1898
    sw	$v1,4996($a3)
    b	.L0da3e6bc
    ld	$ra,16($sp)
.end __gllc_TexCoord3dv

# Function: __gllc_TexCoord3f
# Declared: Line 1903 (Source lines: 1904-1918)
# Address: 0x0da3e720 - 0x0da3e7b8 (Size: 152 bytes, Frame: 48)
.globl __gllc_TexCoord3f
.ent __gllc_TexCoord3f
__gllc_TexCoord3f:
    # Line 1907
    lw	$a0,4112($zero)
    # Line 1904
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 1907
    sd	$a0,24($sp)
    # Line 1904
    addiu	$at,$at,10424
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 1909
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1904
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 1909
    li	$a1,12
    jal	__glDlistAllocOp2
    # Line 1904
    sdc1	$f12,0($sp)
    # Line 1909
    bnez	$v0,.L0da3e770
    # Line 1911
    li	$a4,57
    ld	$ra,32($sp)
.L0da3e764:
    # Line 1918
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3e770:
    # Line 1911
    sh	$a4,12($v0)
    # Line 1917
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1916
    ld	$v1,24($sp)
    # Line 1913
    ldc1	$f2,0($sp)
    # Line 1915
    ldc1	$f0,16($sp)
    # Line 1914
    ldc1	$f1,8($sp)
    # Line 1915
    swc1	$f0,24($v0)
    # Line 1914
    swc1	$f1,20($v0)
    # Line 1913
    swc1	$f2,16($v0)
    # Line 1916
    lw	$a3,4996($v1)
    # Line 1917
    la	$a2,__glle_TexCoord3fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 1916
    ori	$v0,$a3,0x8
    # Line 1917
    jal	__glDlistAppendOp
    # Line 1916
    sw	$v0,4996($v1)
    b	.L0da3e764
    ld	$ra,32($sp)
.end __gllc_TexCoord3f

# Function: __gllc_TexCoord3fv
# Declared: Line 1921 (Source lines: 1922-1936)
# Address: 0x0da3e7c0 - 0x0da3e858 (Size: 152 bytes, Frame: 32)
.globl __gllc_TexCoord3fv
.ent __gllc_TexCoord3fv
__gllc_TexCoord3fv:
    # Line 1922
    lui	$v0,0x5
    # Line 1925
    lw	$at,4112($zero)
    # Line 1922
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,10264
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1927
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1925
    sd	$at,8($sp)
    # Line 1927
    li	$a1,12
    # Line 1922
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1927
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e808
    ld	$ra,16($sp)
.L0da3e7fc:
    # Line 1936
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3e808:
    # Line 1931
    ld	$a0,0($sp)
    # Line 1929
    li	$a1,57
    sh	$a1,12($v0)
    # Line 1931
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 1932
    lwc1	$f1,4($a0)
    # Line 1935
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1932
    swc1	$f1,20($v0)
    # Line 1933
    lwc1	$f0,8($a0)
    # Line 1934
    ld	$a3,8($sp)
    # Line 1933
    swc1	$f0,24($v0)
    # Line 1934
    lw	$v1,4996($a3)
    # Line 1935
    la	$a2,__glle_TexCoord3fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1934
    ori	$v1,$v1,0x8
    # Line 1935
    jal	__glDlistAppendOp
    # Line 1934
    sw	$v1,4996($a3)
    b	.L0da3e7fc
    ld	$ra,16($sp)
.end __gllc_TexCoord3fv

# Function: __gllc_TexCoord3i
# Declared: Line 1939 (Source lines: 1940-1954)
# Address: 0x0da3e860 - 0x0da3e8fc (Size: 156 bytes, Frame: 48)
.globl __gllc_TexCoord3i
.ent __gllc_TexCoord3i
__gllc_TexCoord3i:
    # Line 1943
    lw	$at,4112($zero)
    # Line 1940
    addiu	$sp,$sp,-48
    # Line 1943
    sd	$at,24($sp)
    # Line 1940
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,10104
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 1945
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1940
    sd	$a1,8($sp)
    # Line 1945
    li	$a1,12
    # Line 1940
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 1945
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e8b4
    # Line 1953
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,32($sp)
.L0da3e8a8:
    # Line 1954
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3e8b4:
    # Line 1949
    ld	$a2,0($sp)
    # Line 1950
    ld	$a1,8($sp)
    # Line 1951
    ld	$a0,16($sp)
    sw	$a0,24($v0)
    # Line 1950
    sw	$a1,20($v0)
    # Line 1947
    li	$a3,58
    sh	$a3,12($v0)
    # Line 1952
    ld	$a3,24($sp)
    # Line 1949
    sw	$a2,16($v0)
    # Line 1952
    lw	$v1,4996($a3)
    # Line 1953
    la	$a2,__glle_TexCoord3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1952
    ori	$v1,$v1,0x8
    # Line 1953
    jal	__glDlistAppendOp
    # Line 1952
    sw	$v1,4996($a3)
    b	.L0da3e8a8
    ld	$ra,32($sp)
.end __gllc_TexCoord3i

# Function: __gllc_TexCoord3iv
# Declared: Line 1957 (Source lines: 1958-1972)
# Address: 0x0da3e900 - 0x0da3e998 (Size: 152 bytes, Frame: 32)
.globl __gllc_TexCoord3iv
.ent __gllc_TexCoord3iv
__gllc_TexCoord3iv:
    # Line 1958
    lui	$v0,0x5
    # Line 1961
    lw	$at,4112($zero)
    # Line 1958
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,9944
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1963
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1961
    sd	$at,8($sp)
    # Line 1963
    li	$a1,12
    # Line 1958
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1963
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e948
    ld	$ra,16($sp)
.L0da3e93c:
    # Line 1972
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3e948:
    # Line 1971
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 1965
    li	$a3,58
    sh	$a3,12($v0)
    # Line 1967
    ld	$a0,0($sp)
    # Line 1970
    ld	$a3,8($sp)
    # Line 1967
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 1968
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 1969
    lw	$a0,8($a0)
    sw	$a0,24($v0)
    # Line 1970
    lw	$v1,4996($a3)
    # Line 1971
    la	$a2,__glle_TexCoord3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1970
    ori	$v1,$v1,0x8
    # Line 1971
    jal	__glDlistAppendOp
    # Line 1970
    sw	$v1,4996($a3)
    b	.L0da3e93c
    ld	$ra,16($sp)
.end __gllc_TexCoord3iv

# Function: __gllc_TexCoord3s
# Declared: Line 1975 (Source lines: 1976-1990)
# Address: 0x0da3e9a0 - 0x0da3ea3c (Size: 156 bytes, Frame: 48)
.globl __gllc_TexCoord3s
.ent __gllc_TexCoord3s
__gllc_TexCoord3s:
    # Line 1979
    lw	$at,4112($zero)
    # Line 1976
    addiu	$sp,$sp,-48
    # Line 1979
    sd	$at,24($sp)
    # Line 1976
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,9784
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 1981
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1976
    sd	$a1,8($sp)
    # Line 1981
    li	$a1,8
    # Line 1976
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 1981
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3e9f4
    # Line 1989
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,32($sp)
.L0da3e9e8:
    # Line 1990
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3e9f4:
    # Line 1985
    ld	$a2,0($sp)
    # Line 1986
    ld	$a1,8($sp)
    # Line 1987
    ld	$a0,16($sp)
    sh	$a0,20($v0)
    # Line 1986
    sh	$a1,18($v0)
    # Line 1983
    li	$a3,59
    sh	$a3,12($v0)
    # Line 1988
    ld	$a3,24($sp)
    # Line 1985
    sh	$a2,16($v0)
    # Line 1988
    lw	$v1,4996($a3)
    # Line 1989
    la	$a2,__glle_TexCoord3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 1988
    ori	$v1,$v1,0x8
    # Line 1989
    jal	__glDlistAppendOp
    # Line 1988
    sw	$v1,4996($a3)
    b	.L0da3e9e8
    ld	$ra,32($sp)
.end __gllc_TexCoord3s

# Function: __gllc_TexCoord3sv
# Declared: Line 1993 (Source lines: 1994-2008)
# Address: 0x0da3ea40 - 0x0da3ead8 (Size: 152 bytes, Frame: 32)
.globl __gllc_TexCoord3sv
.ent __gllc_TexCoord3sv
__gllc_TexCoord3sv:
    # Line 1994
    lui	$v0,0x5
    # Line 1997
    lw	$at,4112($zero)
    # Line 1994
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,9624
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 1999
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 1997
    sd	$at,8($sp)
    # Line 1999
    li	$a1,8
    # Line 1994
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 1999
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ea88
    ld	$ra,16($sp)
.L0da3ea7c:
    # Line 2008
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ea88:
    # Line 2007
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2001
    li	$a3,59
    sh	$a3,12($v0)
    # Line 2003
    ld	$a0,0($sp)
    # Line 2006
    ld	$a3,8($sp)
    # Line 2003
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 2004
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 2005
    lh	$a0,4($a0)
    sh	$a0,20($v0)
    # Line 2006
    lw	$v1,4996($a3)
    # Line 2007
    la	$a2,__glle_TexCoord3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2006
    ori	$v1,$v1,0x8
    # Line 2007
    jal	__glDlistAppendOp
    # Line 2006
    sw	$v1,4996($a3)
    b	.L0da3ea7c
    ld	$ra,16($sp)
.end __gllc_TexCoord3sv

# Function: __gllc_TexCoord4d
# Declared: Line 2011 (Source lines: 2012-2028)
# Address: 0x0da3eae0 - 0x0da3eb8c (Size: 172 bytes, Frame: 192)
.globl __gllc_TexCoord4d
.ent __gllc_TexCoord4d
__gllc_TexCoord4d:
    # Line 2015
    lw	$a0,4112($zero)
    # Line 2012
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 2015
    sd	$a0,32($sp)
    # Line 2012
    addiu	$at,$at,9464
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 2017
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2012
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 2017
    li	$a1,32
    jal	__glDlistAllocOp2
    # Line 2012
    sdc1	$f12,0($sp)
    # Line 2017
    bnez	$v0,.L0da3eb34
    # Line 2020
    li	$a4,1
    ld	$ra,40($sp)
.L0da3eb28:
    # Line 2028
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3eb34:
    # Line 2020
    sb	$a4,14($v0)
    # Line 2019
    li	$a5,60
    sh	$a5,12($v0)
    # Line 2027
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2026
    ld	$v1,32($sp)
    # Line 2022
    ldc1	$f3,0($sp)
    # Line 2023
    ldc1	$f2,8($sp)
    # Line 2025
    ldc1	$f0,24($sp)
    # Line 2024
    ldc1	$f1,16($sp)
    # Line 2025
    sdc1	$f0,40($v0)
    # Line 2024
    sdc1	$f1,32($v0)
    # Line 2023
    sdc1	$f2,24($v0)
    # Line 2022
    sdc1	$f3,16($v0)
    # Line 2026
    lw	$a3,4996($v1)
    # Line 2027
    la	$a2,__glle_TexCoord4dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 2026
    ori	$v0,$a3,0x8
    # Line 2027
    jal	__glDlistAppendOp
    # Line 2026
    sw	$v0,4996($v1)
    b	.L0da3eb28
    ld	$ra,40($sp)
.end __gllc_TexCoord4d

# Function: __gllc_TexCoord4dv
# Declared: Line 2031 (Source lines: 2032-2048)
# Address: 0x0da3eb90 - 0x0da3ec38 (Size: 168 bytes, Frame: 32)
.globl __gllc_TexCoord4dv
.ent __gllc_TexCoord4dv
__gllc_TexCoord4dv:
    # Line 2032
    lui	$v0,0x5
    # Line 2035
    lw	$at,4112($zero)
    # Line 2032
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,9288
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2037
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2035
    sd	$at,8($sp)
    # Line 2037
    li	$a1,32
    # Line 2032
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2037
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ebd8
    ld	$ra,16($sp)
.L0da3ebcc:
    # Line 2048
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ebd8:
    # Line 2040
    li	$a1,1
    sb	$a1,14($v0)
    # Line 2042
    ld	$a0,0($sp)
    # Line 2039
    li	$a2,60
    sh	$a2,12($v0)
    # Line 2042
    ldc1	$f3,0($a0)
    sdc1	$f3,16($v0)
    # Line 2043
    ldc1	$f2,8($a0)
    sdc1	$f2,24($v0)
    # Line 2044
    ldc1	$f1,16($a0)
    # Line 2047
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2044
    sdc1	$f1,32($v0)
    # Line 2045
    ldc1	$f0,24($a0)
    # Line 2046
    ld	$a3,8($sp)
    # Line 2045
    sdc1	$f0,40($v0)
    # Line 2046
    lw	$v1,4996($a3)
    # Line 2047
    la	$a2,__glle_TexCoord4dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2046
    ori	$v1,$v1,0x8
    # Line 2047
    jal	__glDlistAppendOp
    # Line 2046
    sw	$v1,4996($a3)
    b	.L0da3ebcc
    ld	$ra,16($sp)
.end __gllc_TexCoord4dv

# Function: __gllc_TexCoord4f
# Declared: Line 2051 (Source lines: 2052-2067)
# Address: 0x0da3ec40 - 0x0da3ece4 (Size: 164 bytes, Frame: 192)
.globl __gllc_TexCoord4f
.ent __gllc_TexCoord4f
__gllc_TexCoord4f:
    # Line 2055
    lw	$a0,4112($zero)
    # Line 2052
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 2055
    sd	$a0,32($sp)
    # Line 2052
    addiu	$at,$at,9112
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 2057
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2052
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 2057
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 2052
    sdc1	$f12,0($sp)
    # Line 2057
    bnez	$v0,.L0da3ec94
    # Line 2059
    li	$a4,61
    ld	$ra,40($sp)
.L0da3ec88:
    # Line 2067
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3ec94:
    # Line 2059
    sh	$a4,12($v0)
    # Line 2066
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2065
    ld	$v1,32($sp)
    # Line 2061
    ldc1	$f3,0($sp)
    # Line 2062
    ldc1	$f2,8($sp)
    # Line 2064
    ldc1	$f0,24($sp)
    # Line 2063
    ldc1	$f1,16($sp)
    # Line 2064
    swc1	$f0,28($v0)
    # Line 2063
    swc1	$f1,24($v0)
    # Line 2062
    swc1	$f2,20($v0)
    # Line 2061
    swc1	$f3,16($v0)
    # Line 2065
    lw	$a3,4996($v1)
    # Line 2066
    la	$a2,__glle_TexCoord4fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 2065
    ori	$v0,$a3,0x8
    # Line 2066
    jal	__glDlistAppendOp
    # Line 2065
    sw	$v0,4996($v1)
    b	.L0da3ec88
    ld	$ra,40($sp)
.end __gllc_TexCoord4f

# Function: __gllc_TexCoord4fv
# Declared: Line 2070 (Source lines: 2071-2086)
# Address: 0x0da3ecf0 - 0x0da3ed90 (Size: 160 bytes, Frame: 32)
.globl __gllc_TexCoord4fv
.ent __gllc_TexCoord4fv
__gllc_TexCoord4fv:
    # Line 2071
    lui	$v0,0x5
    # Line 2074
    lw	$at,4112($zero)
    # Line 2071
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,8936
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2076
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2074
    sd	$at,8($sp)
    # Line 2076
    li	$a1,16
    # Line 2071
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2076
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ed38
    ld	$ra,16($sp)
.L0da3ed2c:
    # Line 2086
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ed38:
    # Line 2080
    ld	$a0,0($sp)
    # Line 2078
    li	$a1,61
    sh	$a1,12($v0)
    # Line 2080
    lwc1	$f3,0($a0)
    swc1	$f3,16($v0)
    # Line 2081
    lwc1	$f2,4($a0)
    swc1	$f2,20($v0)
    # Line 2082
    lwc1	$f1,8($a0)
    # Line 2085
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2082
    swc1	$f1,24($v0)
    # Line 2083
    lwc1	$f0,12($a0)
    # Line 2084
    ld	$a3,8($sp)
    # Line 2083
    swc1	$f0,28($v0)
    # Line 2084
    lw	$v1,4996($a3)
    # Line 2085
    la	$a2,__glle_TexCoord4fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2084
    ori	$v1,$v1,0x8
    # Line 2085
    jal	__glDlistAppendOp
    # Line 2084
    sw	$v1,4996($a3)
    b	.L0da3ed2c
    ld	$ra,16($sp)
.end __gllc_TexCoord4fv

# Function: __gllc_TexCoord4i
# Declared: Line 2089 (Source lines: 2090-2105)
# Address: 0x0da3ed90 - 0x0da3ee38 (Size: 168 bytes, Frame: 192)
.globl __gllc_TexCoord4i
.ent __gllc_TexCoord4i
__gllc_TexCoord4i:
    # Line 2090
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 2093
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 2090
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,8776
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 2095
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2090
    sd	$a1,8($sp)
    # Line 2095
    li	$a1,16
    # Line 2090
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 2095
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ede8
    # Line 2097
    li	$a4,62
    ld	$ra,40($sp)
.L0da3eddc:
    # Line 2105
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3ede8:
    # Line 2097
    sh	$a4,12($v0)
    # Line 2104
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2100
    ld	$a2,8($sp)
    # Line 2101
    ld	$a1,24($sp)
    # Line 2102
    ld	$a0,32($sp)
    sw	$a0,28($v0)
    # Line 2101
    sw	$a1,24($v0)
    # Line 2099
    ld	$a3,0($sp)
    sw	$a3,16($v0)
    # Line 2103
    ld	$a3,16($sp)
    # Line 2100
    sw	$a2,20($v0)
    # Line 2103
    lw	$v1,4996($a3)
    # Line 2104
    la	$a2,__glle_TexCoord4iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2103
    ori	$v1,$v1,0x8
    # Line 2104
    jal	__glDlistAppendOp
    # Line 2103
    sw	$v1,4996($a3)
    b	.L0da3eddc
    ld	$ra,40($sp)
.end __gllc_TexCoord4i

# Function: __gllc_TexCoord4iv
# Declared: Line 2108 (Source lines: 2109-2124)
# Address: 0x0da3ee40 - 0x0da3eee0 (Size: 160 bytes, Frame: 32)
.globl __gllc_TexCoord4iv
.ent __gllc_TexCoord4iv
__gllc_TexCoord4iv:
    # Line 2109
    lui	$v0,0x5
    # Line 2112
    lw	$at,4112($zero)
    # Line 2109
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,8600
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2114
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2112
    sd	$at,8($sp)
    # Line 2114
    li	$a1,16
    # Line 2109
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2114
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ee88
    ld	$ra,16($sp)
.L0da3ee7c:
    # Line 2124
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3ee88:
    # Line 2123
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2118
    ld	$a0,0($sp)
    # Line 2116
    li	$a4,62
    sh	$a4,12($v0)
    # Line 2118
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 2122
    ld	$a3,8($sp)
    # Line 2119
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 2120
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 2121
    lw	$a0,12($a0)
    sw	$a0,28($v0)
    # Line 2122
    lw	$v1,4996($a3)
    # Line 2123
    la	$a2,__glle_TexCoord4iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2122
    ori	$v1,$v1,0x8
    # Line 2123
    jal	__glDlistAppendOp
    # Line 2122
    sw	$v1,4996($a3)
    b	.L0da3ee7c
    ld	$ra,16($sp)
.end __gllc_TexCoord4iv

# Function: __gllc_TexCoord4s
# Declared: Line 2127 (Source lines: 2128-2143)
# Address: 0x0da3eee0 - 0x0da3ef88 (Size: 168 bytes, Frame: 192)
.globl __gllc_TexCoord4s
.ent __gllc_TexCoord4s
__gllc_TexCoord4s:
    # Line 2128
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 2131
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 2128
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,8440
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 2133
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2128
    sd	$a1,8($sp)
    # Line 2133
    li	$a1,8
    # Line 2128
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 2133
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ef38
    # Line 2135
    li	$a4,63
    ld	$ra,40($sp)
.L0da3ef2c:
    # Line 2143
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3ef38:
    # Line 2135
    sh	$a4,12($v0)
    # Line 2142
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2138
    ld	$a2,8($sp)
    # Line 2139
    ld	$a1,24($sp)
    # Line 2140
    ld	$a0,32($sp)
    sh	$a0,22($v0)
    # Line 2139
    sh	$a1,20($v0)
    # Line 2137
    ld	$a3,0($sp)
    sh	$a3,16($v0)
    # Line 2141
    ld	$a3,16($sp)
    # Line 2138
    sh	$a2,18($v0)
    # Line 2141
    lw	$v1,4996($a3)
    # Line 2142
    la	$a2,__glle_TexCoord4sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2141
    ori	$v1,$v1,0x8
    # Line 2142
    jal	__glDlistAppendOp
    # Line 2141
    sw	$v1,4996($a3)
    b	.L0da3ef2c
    ld	$ra,40($sp)
.end __gllc_TexCoord4s

# Function: __gllc_TexCoord4sv
# Declared: Line 2146 (Source lines: 2147-2162)
# Address: 0x0da3ef90 - 0x0da3f030 (Size: 160 bytes, Frame: 32)
.globl __gllc_TexCoord4sv
.ent __gllc_TexCoord4sv
__gllc_TexCoord4sv:
    # Line 2147
    lui	$v0,0x5
    # Line 2150
    lw	$at,4112($zero)
    # Line 2147
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,8264
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2152
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2150
    sd	$at,8($sp)
    # Line 2152
    li	$a1,8
    # Line 2147
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2152
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3efd8
    ld	$ra,16($sp)
.L0da3efcc:
    # Line 2162
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3efd8:
    # Line 2161
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2156
    ld	$a0,0($sp)
    # Line 2154
    li	$a4,63
    sh	$a4,12($v0)
    # Line 2156
    lh	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 2160
    ld	$a3,8($sp)
    # Line 2157
    lh	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 2158
    lh	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 2159
    lh	$a0,6($a0)
    sh	$a0,22($v0)
    # Line 2160
    lw	$v1,4996($a3)
    # Line 2161
    la	$a2,__glle_TexCoord4sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2160
    ori	$v1,$v1,0x8
    # Line 2161
    jal	__glDlistAppendOp
    # Line 2160
    sw	$v1,4996($a3)
    b	.L0da3efcc
    ld	$ra,16($sp)
.end __gllc_TexCoord4sv

# Function: __gllc_Vertex2d
# Declared: Line 2165 (Source lines: 2166-2180)
# Address: 0x0da3f030 - 0x0da3f0c4 (Size: 148 bytes, Frame: 48)
.globl __gllc_Vertex2d
.ent __gllc_Vertex2d
__gllc_Vertex2d:
    # Line 2169
    lw	$a0,4112($zero)
    # Line 2166
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 2169
    sd	$a0,16($sp)
    # Line 2166
    addiu	$at,$at,8104
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 2171
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2166
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 2171
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 2166
    sdc1	$f12,0($sp)
    # Line 2171
    bnez	$v0,.L0da3f07c
    # Line 2174
    li	$a4,1
    ld	$ra,24($sp)
.L0da3f070:
    # Line 2180
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3f07c:
    # Line 2174
    sb	$a4,14($v0)
    # Line 2173
    li	$a5,64
    sh	$a5,12($v0)
    # Line 2179
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2178
    ld	$v1,16($sp)
    # Line 2177
    ldc1	$f0,8($sp)
    # Line 2176
    ldc1	$f1,0($sp)
    # Line 2177
    sdc1	$f0,24($v0)
    # Line 2176
    sdc1	$f1,16($v0)
    # Line 2178
    lw	$a3,4996($v1)
    # Line 2179
    la	$a2,__glle_Vertex2dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 2178
    ori	$v0,$a3,0x1
    # Line 2179
    jal	__glDlistAppendOp
    # Line 2178
    sw	$v0,4996($v1)
    b	.L0da3f070
    ld	$ra,24($sp)
.end __gllc_Vertex2d

# Function: __gllc_Vertex2dv
# Declared: Line 2183 (Source lines: 2184-2198)
# Address: 0x0da3f0d0 - 0x0da3f168 (Size: 152 bytes, Frame: 32)
.globl __gllc_Vertex2dv
.ent __gllc_Vertex2dv
__gllc_Vertex2dv:
    # Line 2184
    lui	$v0,0x5
    # Line 2187
    lw	$at,4112($zero)
    # Line 2184
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,7944
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2189
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2187
    sd	$at,8($sp)
    # Line 2189
    li	$a1,16
    # Line 2184
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2189
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f118
    ld	$ra,16($sp)
.L0da3f10c:
    # Line 2198
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3f118:
    # Line 2192
    li	$a1,1
    sb	$a1,14($v0)
    # Line 2194
    ld	$a0,0($sp)
    # Line 2191
    li	$a2,64
    sh	$a2,12($v0)
    # Line 2194
    ldc1	$f1,0($a0)
    # Line 2197
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2194
    sdc1	$f1,16($v0)
    # Line 2195
    ldc1	$f0,8($a0)
    # Line 2196
    ld	$a3,8($sp)
    # Line 2195
    sdc1	$f0,24($v0)
    # Line 2196
    lw	$v1,4996($a3)
    # Line 2197
    la	$a2,__glle_Vertex2dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2196
    ori	$v1,$v1,0x1
    # Line 2197
    jal	__glDlistAppendOp
    # Line 2196
    sw	$v1,4996($a3)
    b	.L0da3f10c
    ld	$ra,16($sp)
.end __gllc_Vertex2dv

# Function: __gllc_Vertex2f
# Declared: Line 2201 (Source lines: 2202-2215)
# Address: 0x0da3f170 - 0x0da3f1fc (Size: 140 bytes, Frame: 48)
.globl __gllc_Vertex2f
.ent __gllc_Vertex2f
__gllc_Vertex2f:
    # Line 2205
    lw	$a0,4112($zero)
    # Line 2202
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 2205
    sd	$a0,16($sp)
    # Line 2202
    addiu	$at,$at,7784
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 2207
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2202
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 2207
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 2202
    sdc1	$f12,0($sp)
    # Line 2207
    bnez	$v0,.L0da3f1bc
    # Line 2209
    li	$a4,65
    ld	$ra,24($sp)
.L0da3f1b0:
    # Line 2215
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3f1bc:
    # Line 2209
    sh	$a4,12($v0)
    # Line 2214
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2213
    ld	$v1,16($sp)
    # Line 2212
    ldc1	$f0,8($sp)
    # Line 2211
    ldc1	$f1,0($sp)
    # Line 2212
    swc1	$f0,20($v0)
    # Line 2211
    swc1	$f1,16($v0)
    # Line 2213
    lw	$a3,4996($v1)
    # Line 2214
    la	$a2,__glle_Vertex2fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 2213
    ori	$v0,$a3,0x1
    # Line 2214
    jal	__glDlistAppendOp
    # Line 2213
    sw	$v0,4996($v1)
    b	.L0da3f1b0
    ld	$ra,24($sp)
.end __gllc_Vertex2f

# Function: __gllc_Vertex2fv
# Declared: Line 2218 (Source lines: 2219-2232)
# Address: 0x0da3f200 - 0x0da3f290 (Size: 144 bytes, Frame: 32)
.globl __gllc_Vertex2fv
.ent __gllc_Vertex2fv
__gllc_Vertex2fv:
    # Line 2219
    lui	$v0,0x5
    # Line 2222
    lw	$at,4112($zero)
    # Line 2219
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,7640
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2224
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2222
    sd	$at,8($sp)
    # Line 2224
    li	$a1,8
    # Line 2219
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2224
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f248
    ld	$ra,16($sp)
.L0da3f23c:
    # Line 2232
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3f248:
    # Line 2228
    ld	$a0,0($sp)
    # Line 2226
    li	$a1,65
    sh	$a1,12($v0)
    # Line 2228
    lwc1	$f1,0($a0)
    # Line 2231
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2228
    swc1	$f1,16($v0)
    # Line 2229
    lwc1	$f0,4($a0)
    # Line 2230
    ld	$a3,8($sp)
    # Line 2229
    swc1	$f0,20($v0)
    # Line 2230
    lw	$v1,4996($a3)
    # Line 2231
    la	$a2,__glle_Vertex2fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2230
    ori	$v1,$v1,0x1
    # Line 2231
    jal	__glDlistAppendOp
    # Line 2230
    sw	$v1,4996($a3)
    b	.L0da3f23c
    ld	$ra,16($sp)
.end __gllc_Vertex2fv

# Function: __gllc_Vertex2i
# Declared: Line 2235 (Source lines: 2236-2249)
# Address: 0x0da3f290 - 0x0da3f320 (Size: 144 bytes, Frame: 48)
.globl __gllc_Vertex2i
.ent __gllc_Vertex2i
__gllc_Vertex2i:
    # Line 2239
    lw	$at,4112($zero)
    # Line 2236
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 2239
    sd	$at,16($sp)
    # Line 2236
    addiu	$v0,$v0,7496
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2241
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2236
    sd	$a1,8($sp)
    # Line 2241
    li	$a1,8
    # Line 2236
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 2241
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f2e0
    # Line 2243
    li	$a2,66
    ld	$ra,24($sp)
.L0da3f2d4:
    # Line 2249
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3f2e0:
    # Line 2243
    sh	$a2,12($v0)
    # Line 2248
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2245
    ld	$a1,0($sp)
    # Line 2246
    ld	$a0,8($sp)
    sw	$a0,20($v0)
    # Line 2247
    ld	$a3,16($sp)
    # Line 2245
    sw	$a1,16($v0)
    # Line 2247
    lw	$v1,4996($a3)
    # Line 2248
    la	$a2,__glle_Vertex2iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2247
    ori	$v1,$v1,0x1
    # Line 2248
    jal	__glDlistAppendOp
    # Line 2247
    sw	$v1,4996($a3)
    b	.L0da3f2d4
    ld	$ra,24($sp)
.end __gllc_Vertex2i

# Function: __gllc_Vertex2iv
# Declared: Line 2252 (Source lines: 2253-2266)
# Address: 0x0da3f320 - 0x0da3f3b0 (Size: 144 bytes, Frame: 32)
.globl __gllc_Vertex2iv
.ent __gllc_Vertex2iv
__gllc_Vertex2iv:
    # Line 2253
    lui	$v0,0x5
    # Line 2256
    lw	$at,4112($zero)
    # Line 2253
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,7352
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2258
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2256
    sd	$at,8($sp)
    # Line 2258
    li	$a1,8
    # Line 2253
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2258
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f368
    ld	$ra,16($sp)
.L0da3f35c:
    # Line 2266
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3f368:
    # Line 2265
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2264
    ld	$a3,8($sp)
    # Line 2262
    ld	$a0,0($sp)
    # Line 2260
    li	$a2,66
    sh	$a2,12($v0)
    # Line 2262
    lw	$a1,0($a0)
    sw	$a1,16($v0)
    # Line 2263
    lw	$a0,4($a0)
    sw	$a0,20($v0)
    # Line 2264
    lw	$v1,4996($a3)
    # Line 2265
    la	$a2,__glle_Vertex2iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2264
    ori	$v1,$v1,0x1
    # Line 2265
    jal	__glDlistAppendOp
    # Line 2264
    sw	$v1,4996($a3)
    b	.L0da3f35c
    ld	$ra,16($sp)
.end __gllc_Vertex2iv

# Function: __gllc_Vertex2s
# Declared: Line 2269 (Source lines: 2270-2283)
# Address: 0x0da3f3b0 - 0x0da3f440 (Size: 144 bytes, Frame: 48)
.globl __gllc_Vertex2s
.ent __gllc_Vertex2s
__gllc_Vertex2s:
    # Line 2273
    lw	$at,4112($zero)
    # Line 2270
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 2273
    sd	$at,16($sp)
    # Line 2270
    addiu	$v0,$v0,7208
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2275
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2270
    sd	$a1,8($sp)
    # Line 2275
    li	$a1,4
    # Line 2270
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 2275
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f400
    # Line 2277
    li	$a2,67
    ld	$ra,24($sp)
.L0da3f3f4:
    # Line 2283
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3f400:
    # Line 2277
    sh	$a2,12($v0)
    # Line 2282
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2279
    ld	$a1,0($sp)
    # Line 2280
    ld	$a0,8($sp)
    sh	$a0,18($v0)
    # Line 2281
    ld	$a3,16($sp)
    # Line 2279
    sh	$a1,16($v0)
    # Line 2281
    lw	$v1,4996($a3)
    # Line 2282
    la	$a2,__glle_Vertex2sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2281
    ori	$v1,$v1,0x1
    # Line 2282
    jal	__glDlistAppendOp
    # Line 2281
    sw	$v1,4996($a3)
    b	.L0da3f3f4
    ld	$ra,24($sp)
.end __gllc_Vertex2s

# Function: __gllc_Vertex2sv
# Declared: Line 2286 (Source lines: 2287-2300)
# Address: 0x0da3f440 - 0x0da3f4d0 (Size: 144 bytes, Frame: 32)
.globl __gllc_Vertex2sv
.ent __gllc_Vertex2sv
__gllc_Vertex2sv:
    # Line 2287
    lui	$v0,0x5
    # Line 2290
    lw	$at,4112($zero)
    # Line 2287
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,7064
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2292
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2290
    sd	$at,8($sp)
    # Line 2292
    li	$a1,4
    # Line 2287
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2292
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f488
    ld	$ra,16($sp)
.L0da3f47c:
    # Line 2300
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3f488:
    # Line 2299
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2298
    ld	$a3,8($sp)
    # Line 2296
    ld	$a0,0($sp)
    # Line 2294
    li	$a2,67
    sh	$a2,12($v0)
    # Line 2296
    lh	$a1,0($a0)
    sh	$a1,16($v0)
    # Line 2297
    lh	$a0,2($a0)
    sh	$a0,18($v0)
    # Line 2298
    lw	$v1,4996($a3)
    # Line 2299
    la	$a2,__glle_Vertex2sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2298
    ori	$v1,$v1,0x1
    # Line 2299
    jal	__glDlistAppendOp
    # Line 2298
    sw	$v1,4996($a3)
    b	.L0da3f47c
    ld	$ra,16($sp)
.end __gllc_Vertex2sv

# Function: __gllc_Vertex3d
# Declared: Line 2303 (Source lines: 2304-2319)
# Address: 0x0da3f4d0 - 0x0da3f570 (Size: 160 bytes, Frame: 48)
.globl __gllc_Vertex3d
.ent __gllc_Vertex3d
__gllc_Vertex3d:
    # Line 2307
    lw	$a0,4112($zero)
    # Line 2304
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 2307
    sd	$a0,24($sp)
    # Line 2304
    addiu	$at,$at,6920
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2309
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2304
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 2309
    li	$a1,24
    jal	__glDlistAllocOp2
    # Line 2304
    sdc1	$f12,0($sp)
    # Line 2309
    bnez	$v0,.L0da3f520
    # Line 2312
    li	$a4,1
    ld	$ra,32($sp)
.L0da3f514:
    # Line 2319
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3f520:
    # Line 2312
    sb	$a4,14($v0)
    # Line 2311
    li	$a5,68
    sh	$a5,12($v0)
    # Line 2318
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2317
    ld	$v1,24($sp)
    # Line 2314
    ldc1	$f2,0($sp)
    # Line 2316
    ldc1	$f0,16($sp)
    # Line 2315
    ldc1	$f1,8($sp)
    # Line 2316
    sdc1	$f0,32($v0)
    # Line 2315
    sdc1	$f1,24($v0)
    # Line 2314
    sdc1	$f2,16($v0)
    # Line 2317
    lw	$a3,4996($v1)
    # Line 2318
    la	$a2,__glle_Vertex3dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 2317
    ori	$v0,$a3,0x1
    # Line 2318
    jal	__glDlistAppendOp
    # Line 2317
    sw	$v0,4996($v1)
    b	.L0da3f514
    ld	$ra,32($sp)
.end __gllc_Vertex3d

# Function: __gllc_Vertex3dv
# Declared: Line 2322 (Source lines: 2323-2338)
# Address: 0x0da3f570 - 0x0da3f610 (Size: 160 bytes, Frame: 32)
.globl __gllc_Vertex3dv
.ent __gllc_Vertex3dv
__gllc_Vertex3dv:
    # Line 2323
    lui	$v0,0x5
    # Line 2326
    lw	$at,4112($zero)
    # Line 2323
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,6760
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2328
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2326
    sd	$at,8($sp)
    # Line 2328
    li	$a1,24
    # Line 2323
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2328
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f5b8
    ld	$ra,16($sp)
.L0da3f5ac:
    # Line 2338
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3f5b8:
    # Line 2331
    li	$a1,1
    sb	$a1,14($v0)
    # Line 2333
    ld	$a0,0($sp)
    # Line 2330
    li	$a2,68
    sh	$a2,12($v0)
    # Line 2333
    ldc1	$f2,0($a0)
    sdc1	$f2,16($v0)
    # Line 2334
    ldc1	$f1,8($a0)
    # Line 2337
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2334
    sdc1	$f1,24($v0)
    # Line 2335
    ldc1	$f0,16($a0)
    # Line 2336
    ld	$a3,8($sp)
    # Line 2335
    sdc1	$f0,32($v0)
    # Line 2336
    lw	$v1,4996($a3)
    # Line 2337
    la	$a2,__glle_Vertex3dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2336
    ori	$v1,$v1,0x1
    # Line 2337
    jal	__glDlistAppendOp
    # Line 2336
    sw	$v1,4996($a3)
    b	.L0da3f5ac
    ld	$ra,16($sp)
.end __gllc_Vertex3dv

# Function: __gllc_Vertex3f
# Declared: Line 2341 (Source lines: 2342-2356)
# Address: 0x0da3f610 - 0x0da3f6a8 (Size: 152 bytes, Frame: 48)
.globl __gllc_Vertex3f
.ent __gllc_Vertex3f
__gllc_Vertex3f:
    # Line 2345
    lw	$a0,4112($zero)
    # Line 2342
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 2345
    sd	$a0,24($sp)
    # Line 2342
    addiu	$at,$at,6600
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2347
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2342
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 2347
    li	$a1,12
    jal	__glDlistAllocOp2
    # Line 2342
    sdc1	$f12,0($sp)
    # Line 2347
    bnez	$v0,.L0da3f660
    # Line 2349
    li	$a4,69
    ld	$ra,32($sp)
.L0da3f654:
    # Line 2356
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3f660:
    # Line 2349
    sh	$a4,12($v0)
    # Line 2355
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2354
    ld	$v1,24($sp)
    # Line 2351
    ldc1	$f2,0($sp)
    # Line 2353
    ldc1	$f0,16($sp)
    # Line 2352
    ldc1	$f1,8($sp)
    # Line 2353
    swc1	$f0,24($v0)
    # Line 2352
    swc1	$f1,20($v0)
    # Line 2351
    swc1	$f2,16($v0)
    # Line 2354
    lw	$a3,4996($v1)
    # Line 2355
    la	$a2,__glle_Vertex3fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 2354
    ori	$v0,$a3,0x1
    # Line 2355
    jal	__glDlistAppendOp
    # Line 2354
    sw	$v0,4996($v1)
    b	.L0da3f654
    ld	$ra,32($sp)
.end __gllc_Vertex3f

# Function: __gllc_Vertex3fv
# Declared: Line 2359 (Source lines: 2360-2374)
# Address: 0x0da3f6b0 - 0x0da3f748 (Size: 152 bytes, Frame: 32)
.globl __gllc_Vertex3fv
.ent __gllc_Vertex3fv
__gllc_Vertex3fv:
    # Line 2360
    lui	$v0,0x5
    # Line 2363
    lw	$at,4112($zero)
    # Line 2360
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,6440
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2365
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2363
    sd	$at,8($sp)
    # Line 2365
    li	$a1,12
    # Line 2360
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2365
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f6f8
    ld	$ra,16($sp)
.L0da3f6ec:
    # Line 2374
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3f6f8:
    # Line 2369
    ld	$a0,0($sp)
    # Line 2367
    li	$a1,69
    sh	$a1,12($v0)
    # Line 2369
    lwc1	$f2,0($a0)
    swc1	$f2,16($v0)
    # Line 2370
    lwc1	$f1,4($a0)
    # Line 2373
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2370
    swc1	$f1,20($v0)
    # Line 2371
    lwc1	$f0,8($a0)
    # Line 2372
    ld	$a3,8($sp)
    # Line 2371
    swc1	$f0,24($v0)
    # Line 2372
    lw	$v1,4996($a3)
    # Line 2373
    la	$a2,__glle_Vertex3fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2372
    ori	$v1,$v1,0x1
    # Line 2373
    jal	__glDlistAppendOp
    # Line 2372
    sw	$v1,4996($a3)
    b	.L0da3f6ec
    ld	$ra,16($sp)
.end __gllc_Vertex3fv

# Function: __gllc_Vertex3i
# Declared: Line 2377 (Source lines: 2378-2392)
# Address: 0x0da3f750 - 0x0da3f7ec (Size: 156 bytes, Frame: 48)
.globl __gllc_Vertex3i
.ent __gllc_Vertex3i
__gllc_Vertex3i:
    # Line 2381
    lw	$at,4112($zero)
    # Line 2378
    addiu	$sp,$sp,-48
    # Line 2381
    sd	$at,24($sp)
    # Line 2378
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,6280
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 2383
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2378
    sd	$a1,8($sp)
    # Line 2383
    li	$a1,12
    # Line 2378
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 2383
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f7a4
    # Line 2391
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,32($sp)
.L0da3f798:
    # Line 2392
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3f7a4:
    # Line 2387
    ld	$a2,0($sp)
    # Line 2388
    ld	$a1,8($sp)
    # Line 2389
    ld	$a0,16($sp)
    sw	$a0,24($v0)
    # Line 2388
    sw	$a1,20($v0)
    # Line 2385
    li	$a3,70
    sh	$a3,12($v0)
    # Line 2390
    ld	$a3,24($sp)
    # Line 2387
    sw	$a2,16($v0)
    # Line 2390
    lw	$v1,4996($a3)
    # Line 2391
    la	$a2,__glle_Vertex3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2390
    ori	$v1,$v1,0x1
    # Line 2391
    jal	__glDlistAppendOp
    # Line 2390
    sw	$v1,4996($a3)
    b	.L0da3f798
    ld	$ra,32($sp)
.end __gllc_Vertex3i

# Function: __gllc_Vertex3iv
# Declared: Line 2395 (Source lines: 2396-2410)
# Address: 0x0da3f7f0 - 0x0da3f888 (Size: 152 bytes, Frame: 32)
.globl __gllc_Vertex3iv
.ent __gllc_Vertex3iv
__gllc_Vertex3iv:
    # Line 2396
    lui	$v0,0x5
    # Line 2399
    lw	$at,4112($zero)
    # Line 2396
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,6120
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2401
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2399
    sd	$at,8($sp)
    # Line 2401
    li	$a1,12
    # Line 2396
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2401
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f838
    ld	$ra,16($sp)
.L0da3f82c:
    # Line 2410
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3f838:
    # Line 2409
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2403
    li	$a3,70
    sh	$a3,12($v0)
    # Line 2405
    ld	$a0,0($sp)
    # Line 2408
    ld	$a3,8($sp)
    # Line 2405
    lw	$a2,0($a0)
    sw	$a2,16($v0)
    # Line 2406
    lw	$a1,4($a0)
    sw	$a1,20($v0)
    # Line 2407
    lw	$a0,8($a0)
    sw	$a0,24($v0)
    # Line 2408
    lw	$v1,4996($a3)
    # Line 2409
    la	$a2,__glle_Vertex3iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2408
    ori	$v1,$v1,0x1
    # Line 2409
    jal	__glDlistAppendOp
    # Line 2408
    sw	$v1,4996($a3)
    b	.L0da3f82c
    ld	$ra,16($sp)
.end __gllc_Vertex3iv

# Function: __gllc_Vertex3s
# Declared: Line 2413 (Source lines: 2414-2428)
# Address: 0x0da3f890 - 0x0da3f92c (Size: 156 bytes, Frame: 48)
.globl __gllc_Vertex3s
.ent __gllc_Vertex3s
__gllc_Vertex3s:
    # Line 2417
    lw	$at,4112($zero)
    # Line 2414
    addiu	$sp,$sp,-48
    # Line 2417
    sd	$at,24($sp)
    # Line 2414
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,5960
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 2419
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2414
    sd	$a1,8($sp)
    # Line 2419
    li	$a1,8
    # Line 2414
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 2419
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f8e4
    # Line 2427
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,32($sp)
.L0da3f8d8:
    # Line 2428
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3f8e4:
    # Line 2423
    ld	$a2,0($sp)
    # Line 2424
    ld	$a1,8($sp)
    # Line 2425
    ld	$a0,16($sp)
    sh	$a0,20($v0)
    # Line 2424
    sh	$a1,18($v0)
    # Line 2421
    li	$a3,71
    sh	$a3,12($v0)
    # Line 2426
    ld	$a3,24($sp)
    # Line 2423
    sh	$a2,16($v0)
    # Line 2426
    lw	$v1,4996($a3)
    # Line 2427
    la	$a2,__glle_Vertex3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2426
    ori	$v1,$v1,0x1
    # Line 2427
    jal	__glDlistAppendOp
    # Line 2426
    sw	$v1,4996($a3)
    b	.L0da3f8d8
    ld	$ra,32($sp)
.end __gllc_Vertex3s

# Function: __gllc_Vertex3sv
# Declared: Line 2431 (Source lines: 2432-2446)
# Address: 0x0da3f930 - 0x0da3f9c8 (Size: 152 bytes, Frame: 32)
.globl __gllc_Vertex3sv
.ent __gllc_Vertex3sv
__gllc_Vertex3sv:
    # Line 2432
    lui	$v0,0x5
    # Line 2435
    lw	$at,4112($zero)
    # Line 2432
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,5800
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2437
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2435
    sd	$at,8($sp)
    # Line 2437
    li	$a1,8
    # Line 2432
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2437
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3f978
    ld	$ra,16($sp)
.L0da3f96c:
    # Line 2446
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3f978:
    # Line 2445
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2439
    li	$a3,71
    sh	$a3,12($v0)
    # Line 2441
    ld	$a0,0($sp)
    # Line 2444
    ld	$a3,8($sp)
    # Line 2441
    lh	$a2,0($a0)
    sh	$a2,16($v0)
    # Line 2442
    lh	$a1,2($a0)
    sh	$a1,18($v0)
    # Line 2443
    lh	$a0,4($a0)
    sh	$a0,20($v0)
    # Line 2444
    lw	$v1,4996($a3)
    # Line 2445
    la	$a2,__glle_Vertex3sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2444
    ori	$v1,$v1,0x1
    # Line 2445
    jal	__glDlistAppendOp
    # Line 2444
    sw	$v1,4996($a3)
    b	.L0da3f96c
    ld	$ra,16($sp)
.end __gllc_Vertex3sv

# Function: __gllc_Vertex4d
# Declared: Line 2449 (Source lines: 2450-2466)
# Address: 0x0da3f9d0 - 0x0da3fa7c (Size: 172 bytes, Frame: 192)
.globl __gllc_Vertex4d
.ent __gllc_Vertex4d
__gllc_Vertex4d:
    # Line 2453
    lw	$a0,4112($zero)
    # Line 2450
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 2453
    sd	$a0,32($sp)
    # Line 2450
    addiu	$at,$at,5640
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 2455
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2450
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 2455
    li	$a1,32
    jal	__glDlistAllocOp2
    # Line 2450
    sdc1	$f12,0($sp)
    # Line 2455
    bnez	$v0,.L0da3fa24
    # Line 2458
    li	$a4,1
    ld	$ra,40($sp)
.L0da3fa18:
    # Line 2466
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3fa24:
    # Line 2458
    sb	$a4,14($v0)
    # Line 2457
    li	$a5,72
    sh	$a5,12($v0)
    # Line 2465
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2464
    ld	$v1,32($sp)
    # Line 2460
    ldc1	$f3,0($sp)
    # Line 2461
    ldc1	$f2,8($sp)
    # Line 2463
    ldc1	$f0,24($sp)
    # Line 2462
    ldc1	$f1,16($sp)
    # Line 2463
    sdc1	$f0,40($v0)
    # Line 2462
    sdc1	$f1,32($v0)
    # Line 2461
    sdc1	$f2,24($v0)
    # Line 2460
    sdc1	$f3,16($v0)
    # Line 2464
    lw	$a3,4996($v1)
    # Line 2465
    la	$a2,__glle_Vertex4dv
    move	$a1,$v0
    move	$a0,$v1
    # Line 2464
    ori	$v0,$a3,0x1
    # Line 2465
    jal	__glDlistAppendOp
    # Line 2464
    sw	$v0,4996($v1)
    b	.L0da3fa18
    ld	$ra,40($sp)
.end __gllc_Vertex4d

# Function: __gllc_Vertex4dv
# Declared: Line 2469 (Source lines: 2470-2486)
# Address: 0x0da3fa80 - 0x0da3fb28 (Size: 168 bytes, Frame: 32)
.globl __gllc_Vertex4dv
.ent __gllc_Vertex4dv
__gllc_Vertex4dv:
    # Line 2470
    lui	$v0,0x5
    # Line 2473
    lw	$at,4112($zero)
    # Line 2470
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,5464
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2475
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2473
    sd	$at,8($sp)
    # Line 2475
    li	$a1,32
    # Line 2470
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2475
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3fac8
    ld	$ra,16($sp)
.L0da3fabc:
    # Line 2486
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3fac8:
    # Line 2478
    li	$a1,1
    sb	$a1,14($v0)
    # Line 2480
    ld	$a0,0($sp)
    # Line 2477
    li	$a2,72
    sh	$a2,12($v0)
    # Line 2480
    ldc1	$f3,0($a0)
    sdc1	$f3,16($v0)
    # Line 2481
    ldc1	$f2,8($a0)
    sdc1	$f2,24($v0)
    # Line 2482
    ldc1	$f1,16($a0)
    # Line 2485
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2482
    sdc1	$f1,32($v0)
    # Line 2483
    ldc1	$f0,24($a0)
    # Line 2484
    ld	$a3,8($sp)
    # Line 2483
    sdc1	$f0,40($v0)
    # Line 2484
    lw	$v1,4996($a3)
    # Line 2485
    la	$a2,__glle_Vertex4dv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2484
    ori	$v1,$v1,0x1
    # Line 2485
    jal	__glDlistAppendOp
    # Line 2484
    sw	$v1,4996($a3)
    b	.L0da3fabc
    ld	$ra,16($sp)
.end __gllc_Vertex4dv

# Function: __gllc_Vertex4f
# Declared: Line 2489 (Source lines: 2490-2505)
# Address: 0x0da3fb30 - 0x0da3fbd4 (Size: 164 bytes, Frame: 192)
.globl __gllc_Vertex4f
.ent __gllc_Vertex4f
__gllc_Vertex4f:
    # Line 2493
    lw	$a0,4112($zero)
    # Line 2490
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 2493
    sd	$a0,32($sp)
    # Line 2490
    addiu	$at,$at,5288
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 2495
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2490
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 2495
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 2490
    sdc1	$f12,0($sp)
    # Line 2495
    bnez	$v0,.L0da3fb84
    # Line 2497
    li	$a4,73
    ld	$ra,40($sp)
.L0da3fb78:
    # Line 2505
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3fb84:
    # Line 2497
    sh	$a4,12($v0)
    # Line 2504
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2503
    ld	$v1,32($sp)
    # Line 2499
    ldc1	$f3,0($sp)
    # Line 2500
    ldc1	$f2,8($sp)
    # Line 2502
    ldc1	$f0,24($sp)
    # Line 2501
    ldc1	$f1,16($sp)
    # Line 2502
    swc1	$f0,28($v0)
    # Line 2501
    swc1	$f1,24($v0)
    # Line 2500
    swc1	$f2,20($v0)
    # Line 2499
    swc1	$f3,16($v0)
    # Line 2503
    lw	$a3,4996($v1)
    # Line 2504
    la	$a2,__glle_Vertex4fv
    move	$a1,$v0
    move	$a0,$v1
    # Line 2503
    ori	$v0,$a3,0x1
    # Line 2504
    jal	__glDlistAppendOp
    # Line 2503
    sw	$v0,4996($v1)
    b	.L0da3fb78
    ld	$ra,40($sp)
.end __gllc_Vertex4f

# Function: __gllc_Vertex4fv
# Declared: Line 2508 (Source lines: 2509-2524)
# Address: 0x0da3fbe0 - 0x0da3fc80 (Size: 160 bytes, Frame: 32)
.globl __gllc_Vertex4fv
.ent __gllc_Vertex4fv
__gllc_Vertex4fv:
    # Line 2509
    lui	$v0,0x5
    # Line 2512
    lw	$at,4112($zero)
    # Line 2509
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,5112
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2514
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2512
    sd	$at,8($sp)
    # Line 2514
    li	$a1,16
    # Line 2509
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2514
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3fc28
    ld	$ra,16($sp)
.L0da3fc1c:
    # Line 2524
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3fc28:
    # Line 2518
    ld	$a0,0($sp)
    # Line 2516
    li	$a1,73
    sh	$a1,12($v0)
    # Line 2518
    lwc1	$f3,0($a0)
    swc1	$f3,16($v0)
    # Line 2519
    lwc1	$f2,4($a0)
    swc1	$f2,20($v0)
    # Line 2520
    lwc1	$f1,8($a0)
    # Line 2523
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2520
    swc1	$f1,24($v0)
    # Line 2521
    lwc1	$f0,12($a0)
    # Line 2522
    ld	$a3,8($sp)
    # Line 2521
    swc1	$f0,28($v0)
    # Line 2522
    lw	$v1,4996($a3)
    # Line 2523
    la	$a2,__glle_Vertex4fv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2522
    ori	$v1,$v1,0x1
    # Line 2523
    jal	__glDlistAppendOp
    # Line 2522
    sw	$v1,4996($a3)
    b	.L0da3fc1c
    ld	$ra,16($sp)
.end __gllc_Vertex4fv

# Function: __gllc_Vertex4i
# Declared: Line 2527 (Source lines: 2528-2543)
# Address: 0x0da3fc80 - 0x0da3fd28 (Size: 168 bytes, Frame: 192)
.globl __gllc_Vertex4i
.ent __gllc_Vertex4i
__gllc_Vertex4i:
    # Line 2528
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 2531
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 2528
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,4952
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 2533
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2528
    sd	$a1,8($sp)
    # Line 2533
    li	$a1,16
    # Line 2528
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 2533
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3fcd8
    # Line 2535
    li	$a4,74
    ld	$ra,40($sp)
.L0da3fccc:
    # Line 2543
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3fcd8:
    # Line 2535
    sh	$a4,12($v0)
    # Line 2542
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2538
    ld	$a2,8($sp)
    # Line 2539
    ld	$a1,24($sp)
    # Line 2540
    ld	$a0,32($sp)
    sw	$a0,28($v0)
    # Line 2539
    sw	$a1,24($v0)
    # Line 2537
    ld	$a3,0($sp)
    sw	$a3,16($v0)
    # Line 2541
    ld	$a3,16($sp)
    # Line 2538
    sw	$a2,20($v0)
    # Line 2541
    lw	$v1,4996($a3)
    # Line 2542
    la	$a2,__glle_Vertex4iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2541
    ori	$v1,$v1,0x1
    # Line 2542
    jal	__glDlistAppendOp
    # Line 2541
    sw	$v1,4996($a3)
    b	.L0da3fccc
    ld	$ra,40($sp)
.end __gllc_Vertex4i

# Function: __gllc_Vertex4iv
# Declared: Line 2546 (Source lines: 2547-2562)
# Address: 0x0da3fd30 - 0x0da3fdd0 (Size: 160 bytes, Frame: 32)
.globl __gllc_Vertex4iv
.ent __gllc_Vertex4iv
__gllc_Vertex4iv:
    # Line 2547
    lui	$v0,0x5
    # Line 2550
    lw	$at,4112($zero)
    # Line 2547
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,4776
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2552
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2550
    sd	$at,8($sp)
    # Line 2552
    li	$a1,16
    # Line 2547
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2552
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3fd78
    ld	$ra,16($sp)
.L0da3fd6c:
    # Line 2562
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3fd78:
    # Line 2561
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2556
    ld	$a0,0($sp)
    # Line 2554
    li	$a4,74
    sh	$a4,12($v0)
    # Line 2556
    lw	$a3,0($a0)
    sw	$a3,16($v0)
    # Line 2560
    ld	$a3,8($sp)
    # Line 2557
    lw	$a2,4($a0)
    sw	$a2,20($v0)
    # Line 2558
    lw	$a1,8($a0)
    sw	$a1,24($v0)
    # Line 2559
    lw	$a0,12($a0)
    sw	$a0,28($v0)
    # Line 2560
    lw	$v1,4996($a3)
    # Line 2561
    la	$a2,__glle_Vertex4iv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2560
    ori	$v1,$v1,0x1
    # Line 2561
    jal	__glDlistAppendOp
    # Line 2560
    sw	$v1,4996($a3)
    b	.L0da3fd6c
    ld	$ra,16($sp)
.end __gllc_Vertex4iv

# Function: __gllc_Vertex4s
# Declared: Line 2565 (Source lines: 2566-2581)
# Address: 0x0da3fdd0 - 0x0da3fe78 (Size: 168 bytes, Frame: 192)
.globl __gllc_Vertex4s
.ent __gllc_Vertex4s
__gllc_Vertex4s:
    # Line 2566
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 2569
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 2566
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,4616
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 2571
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2566
    sd	$a1,8($sp)
    # Line 2571
    li	$a1,8
    # Line 2566
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 2571
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3fe28
    # Line 2573
    li	$a4,75
    ld	$ra,40($sp)
.L0da3fe1c:
    # Line 2581
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da3fe28:
    # Line 2573
    sh	$a4,12($v0)
    # Line 2580
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2576
    ld	$a2,8($sp)
    # Line 2577
    ld	$a1,24($sp)
    # Line 2578
    ld	$a0,32($sp)
    sh	$a0,22($v0)
    # Line 2577
    sh	$a1,20($v0)
    # Line 2575
    ld	$a3,0($sp)
    sh	$a3,16($v0)
    # Line 2579
    ld	$a3,16($sp)
    # Line 2576
    sh	$a2,18($v0)
    # Line 2579
    lw	$v1,4996($a3)
    # Line 2580
    la	$a2,__glle_Vertex4sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2579
    ori	$v1,$v1,0x1
    # Line 2580
    jal	__glDlistAppendOp
    # Line 2579
    sw	$v1,4996($a3)
    b	.L0da3fe1c
    ld	$ra,40($sp)
.end __gllc_Vertex4s

# Function: __gllc_Vertex4sv
# Declared: Line 2584 (Source lines: 2585-2600)
# Address: 0x0da3fe80 - 0x0da3ff20 (Size: 160 bytes, Frame: 32)
.globl __gllc_Vertex4sv
.ent __gllc_Vertex4sv
__gllc_Vertex4sv:
    # Line 2585
    lui	$v0,0x5
    # Line 2588
    lw	$at,4112($zero)
    # Line 2585
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,4440
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2590
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2588
    sd	$at,8($sp)
    # Line 2590
    li	$a1,8
    # Line 2585
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2590
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3fec8
    ld	$ra,16($sp)
.L0da3febc:
    # Line 2600
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3fec8:
    # Line 2599
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2594
    ld	$a0,0($sp)
    # Line 2592
    li	$a4,75
    sh	$a4,12($v0)
    # Line 2594
    lh	$a3,0($a0)
    sh	$a3,16($v0)
    # Line 2598
    ld	$a3,8($sp)
    # Line 2595
    lh	$a2,2($a0)
    sh	$a2,18($v0)
    # Line 2596
    lh	$a1,4($a0)
    sh	$a1,20($v0)
    # Line 2597
    lh	$a0,6($a0)
    sh	$a0,22($v0)
    # Line 2598
    lw	$v1,4996($a3)
    # Line 2599
    la	$a2,__glle_Vertex4sv
    move	$a1,$v0
    move	$a0,$a3
    # Line 2598
    ori	$v1,$v1,0x1
    # Line 2599
    jal	__glDlistAppendOp
    # Line 2598
    sw	$v1,4996($a3)
    b	.L0da3febc
    ld	$ra,16($sp)
.end __gllc_Vertex4sv

# Function: __gllc_ClipPlane
# Declared: Line 2603 (Source lines: 2604-2620)
# Address: 0x0da3ff20 - 0x0da3ffc4 (Size: 164 bytes, Frame: 48)
.globl __gllc_ClipPlane
.ent __gllc_ClipPlane
__gllc_ClipPlane:
    # Line 2607
    lw	$at,4112($zero)
    # Line 2604
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 2607
    sd	$at,16($sp)
    # Line 2604
    addiu	$v0,$v0,4280
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2609
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2604
    sd	$a1,8($sp)
    # Line 2609
    li	$a1,40
    # Line 2604
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 2609
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da3ff70
    # Line 2612
    li	$a1,1
    ld	$ra,24($sp)
.L0da3ff64:
    # Line 2620
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3ff70:
    # Line 2612
    sb	$a1,14($v0)
    # Line 2611
    li	$a2,76
    sh	$a2,12($v0)
    # Line 2614
    ld	$a0,0($sp)
    # Line 2615
    ld	$v1,8($sp)
    # Line 2614
    sw	$a0,48($v0)
    # Line 2615
    ldc1	$f3,0($v1)
    sdc1	$f3,16($v0)
    # Line 2616
    ldc1	$f2,8($v1)
    # Line 2619
    la	$a2,__glle_ClipPlane
    # Line 2616
    sdc1	$f2,24($v0)
    # Line 2617
    ldc1	$f1,16($v1)
    # Line 2619
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2617
    sdc1	$f1,32($v0)
    # Line 2618
    ldc1	$f0,24($v1)
    # Line 2619
    ld	$a0,16($sp)
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 2618
    sdc1	$f0,40($v0)
    b	.L0da3ff64
    ld	$ra,24($sp)
.end __gllc_ClipPlane

# Function: __gllc_ColorMaterial
# Declared: Line 2623 (Source lines: 2624-2636)
# Address: 0x0da3ffd0 - 0x0da40050 (Size: 128 bytes, Frame: 48)
.globl __gllc_ColorMaterial
.ent __gllc_ColorMaterial
__gllc_ColorMaterial:
    # Line 2627
    lw	$at,4112($zero)
    # Line 2624
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 2627
    sd	$at,16($sp)
    # Line 2624
    addiu	$v0,$v0,4104
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2629
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2624
    sd	$a1,8($sp)
    # Line 2629
    li	$a1,8
    # Line 2624
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 2629
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4001c
    ld	$ra,24($sp)
.L0da40010:
    # Line 2636
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4001c:
    # Line 2635
    la	$a2,__glle_ColorMaterial
    ld	$a0,16($sp)
    # Line 2631
    li	$v1,77
    sh	$v1,12($v0)
    # Line 2633
    ld	$a3,0($sp)
    # Line 2635
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2634
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 2635
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 2633
    sw	$a3,16($v0)
    b	.L0da40010
    ld	$ra,24($sp)
.end __gllc_ColorMaterial

# Function: __gllc_CullFace
# Declared: Line 2639 (Source lines: 2640-2651)
# Address: 0x0da40050 - 0x0da400c4 (Size: 116 bytes, Frame: 32)
.globl __gllc_CullFace
.ent __gllc_CullFace
__gllc_CullFace:
    # Line 2640
    lui	$v0,0x5
    # Line 2643
    lw	$at,4112($zero)
    # Line 2640
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,3976
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2645
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2643
    sd	$at,8($sp)
    # Line 2645
    li	$a1,4
    # Line 2640
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2645
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4009c
    # Line 2650
    la	$a2,__glle_CullFace
    ld	$ra,16($sp)
.L0da40090:
    # Line 2651
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4009c:
    # Line 2650
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2647
    li	$v1,78
    sh	$v1,12($v0)
    # Line 2649
    ld	$a3,0($sp)
    # Line 2650
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 2649
    sw	$a3,16($v0)
    b	.L0da40090
    ld	$ra,16($sp)
.end __gllc_CullFace

# Function: __gllc_Fogf
# Declared: Line 2654 (Source lines: 2655-2667)
# Address: 0x0da400d0 - 0x0da40150 (Size: 128 bytes, Frame: 48)
.globl __gllc_Fogf
.ent __gllc_Fogf
__gllc_Fogf:
    # Line 2658
    lw	$at,4112($zero)
    # Line 2655
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 2658
    sd	$at,16($sp)
    # Line 2655
    addiu	$v0,$v0,3848
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2660
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2655
    sdc1	$f13,0($sp)
    # Line 2660
    li	$a1,8
    # Line 2655
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 2660
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4011c
    ld	$ra,24($sp)
.L0da40110:
    # Line 2667
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4011c:
    # Line 2666
    la	$a2,__glle_Fogf
    ld	$a0,16($sp)
    # Line 2662
    li	$v1,79
    sh	$v1,12($v0)
    # Line 2664
    ld	$a3,8($sp)
    # Line 2666
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2665
    ldc1	$f0,0($sp)
    # Line 2664
    sw	$a3,16($v0)
    # Line 2666
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 2665
    swc1	$f0,20($v0)
    b	.L0da40110
    ld	$ra,24($sp)
.end __gllc_Fogf

# Function: __gllc_Fogfv
# Declared: Line 2670 (Source lines: 2671-2692)
# Address: 0x0da40150 - 0x0da40214 (Size: 196 bytes, Frame: 192)
.globl __gllc_Fogfv
.ent __gllc_Fogfv
__gllc_Fogfv:
    # Line 2671
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,3720
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2678
    # lw $t9, -26936($gp) # &__glFogfv_size
    # Line 2676
    lw	$s0,4112($zero)
    # Line 2671
    sd	$ra,32($sp)
    # Line 2678
    jal	__glFogfv_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da40200
    # Line 2684
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da401bc
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da401a8:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 2692
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da401bc:
    # Line 2689
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2688
    ld	$a5,0($sp)
    # Line 2689
    move	$a2,$s1
    # Line 2686
    li	$a3,80
    # Line 2688
    sw	$a5,16($a4)
    # Line 2689
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 2686
    sh	$a3,12($a4)
    # Line 2691
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_Fogfv
    b	.L0da401a8
    ld	$ra,32($sp)
.L0da40200:
    # Line 2680
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da401a8
    ld	$ra,32($sp)
.end __gllc_Fogfv

# Function: __gllc_Fogi
# Declared: Line 2695 (Source lines: 2696-2708)
# Address: 0x0da40220 - 0x0da402a0 (Size: 128 bytes, Frame: 48)
.globl __gllc_Fogi
.ent __gllc_Fogi
__gllc_Fogi:
    # Line 2699
    lw	$at,4112($zero)
    # Line 2696
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 2699
    sd	$at,16($sp)
    # Line 2696
    addiu	$v0,$v0,3512
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2701
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2696
    sd	$a1,8($sp)
    # Line 2701
    li	$a1,8
    # Line 2696
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 2701
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da40270
    # Line 2707
    la	$a2,__glle_Fogi
    ld	$ra,24($sp)
.L0da40264:
    # Line 2708
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da40270:
    # Line 2707
    ld	$a0,16($sp)
    # Line 2703
    li	$v1,81
    sh	$v1,12($v0)
    # Line 2705
    ld	$a3,0($sp)
    # Line 2707
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2706
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 2707
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 2705
    sw	$a3,16($v0)
    b	.L0da40264
    ld	$ra,24($sp)
.end __gllc_Fogi

# Function: __gllc_Fogiv
# Declared: Line 2711 (Source lines: 2712-2733)
# Address: 0x0da402a0 - 0x0da40364 (Size: 196 bytes, Frame: 192)
.globl __gllc_Fogiv
.ent __gllc_Fogiv
__gllc_Fogiv:
    # Line 2712
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,3384
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2719
    # lw $t9, -26940($gp) # &__glFogiv_size
    # Line 2717
    lw	$s0,4112($zero)
    # Line 2712
    sd	$ra,32($sp)
    # Line 2719
    jal	__glFogiv_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da40354
    # Line 2721
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 2725
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da40310
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da402fc:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 2733
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da40310:
    # Line 2730
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2729
    ld	$a5,0($sp)
    # Line 2730
    move	$a2,$s1
    # Line 2727
    li	$a3,82
    # Line 2729
    sw	$a5,16($a4)
    # Line 2730
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 2727
    sh	$a3,12($a4)
    # Line 2732
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_Fogiv
    b	.L0da402fc
    ld	$ra,32($sp)
.L0da40354:
    # Line 2721
    jalr	$t9
    move	$a0,$s0
    b	.L0da402fc
    ld	$ra,32($sp)
.end __gllc_Fogiv

# Function: __gllc_FrontFace
# Declared: Line 2736 (Source lines: 2737-2748)
# Address: 0x0da40370 - 0x0da403e4 (Size: 116 bytes, Frame: 32)
.globl __gllc_FrontFace
.ent __gllc_FrontFace
__gllc_FrontFace:
    # Line 2737
    lui	$v0,0x5
    # Line 2740
    lw	$at,4112($zero)
    # Line 2737
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,3176
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2742
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2740
    sd	$at,8($sp)
    # Line 2742
    li	$a1,4
    # Line 2737
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 2742
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da403bc
    # Line 2747
    la	$a2,__glle_FrontFace
    ld	$ra,16($sp)
.L0da403b0:
    # Line 2748
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da403bc:
    # Line 2747
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2744
    li	$v1,83
    sh	$v1,12($v0)
    # Line 2746
    ld	$a3,0($sp)
    # Line 2747
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 2746
    sw	$a3,16($v0)
    b	.L0da403b0
    ld	$ra,16($sp)
.end __gllc_FrontFace

# Function: __gllc_Hint
# Declared: Line 2751 (Source lines: 2752-2764)
# Address: 0x0da403f0 - 0x0da40470 (Size: 128 bytes, Frame: 48)
.globl __gllc_Hint
.ent __gllc_Hint
__gllc_Hint:
    # Line 2755
    lw	$at,4112($zero)
    # Line 2752
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 2755
    sd	$at,16($sp)
    # Line 2752
    addiu	$v0,$v0,3048
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2757
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2752
    sd	$a1,8($sp)
    # Line 2757
    li	$a1,8
    # Line 2752
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 2757
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4043c
    ld	$ra,24($sp)
.L0da40430:
    # Line 2764
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4043c:
    # Line 2763
    la	$a2,__glle_Hint
    ld	$a0,16($sp)
    # Line 2759
    li	$v1,84
    sh	$v1,12($v0)
    # Line 2761
    ld	$a3,0($sp)
    # Line 2763
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2762
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 2763
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 2761
    sw	$a3,16($v0)
    b	.L0da40430
    ld	$ra,24($sp)
.end __gllc_Hint

# Function: __gllc_Lightf
# Declared: Line 2767 (Source lines: 2768-2776)
# Address: 0x0da40470 - 0x0da404e8 (Size: 120 bytes, Frame: 208)
.globl __gllc_Lightf
.ent __gllc_Lightf
__gllc_Lightf:
    # Line 2768
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,2920
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 2771
    # lw $t9, -26932($gp) # &__glLightfv_size
    # Line 2768
    swc1	$f14,64($sp)
    # Line 2769
    lw	$v0,4112($zero)
    # Line 2771
    move	$a0,$a1
    jal	__glLightfv_size
    # Line 2769
    sd	$v0,16($sp)
    # Line 2771
    li	$a0,1
    beq	$v0,$a0,.L0da404d0
    # Line 2775
    nop	# was lw $t9, -24824($gp) # &__gllc_Lightfv
    # Line 2772
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da404c4:
    # Line 2776
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da404d0:
    # Line 2775
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_Lightfv
    addiu	$a2,$sp,64
    b	.L0da404c4
    ld	$ra,24($sp)
.end __gllc_Lightf

# Function: __gllc_Lightfv
# Declared: Line 2779 (Source lines: 2780-2802)
# Address: 0x0da404f0 - 0x0da405c4 (Size: 212 bytes, Frame: 192)
.globl __gllc_Lightfv
.ent __gllc_Lightfv
__gllc_Lightfv:
    # Line 2780
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 2785
    lw	$s0,4112($zero)
    # Line 2780
    addiu	$v0,$v0,2792
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 2787
    # lw $t9, -26932($gp) # &__glLightfv_size
    # Line 2780
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 2787
    move	$a0,$a1
    jal	__glLightfv_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da405b0
    # Line 2793
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da40564
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da40550:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 2802
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da40564:
    # Line 2799
    ld	$a1,16($sp)
    # Line 2797
    ld	$a5,0($sp)
    # Line 2798
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 2799
    # lw $t9, -18508($gp) # &memcpy
    # Line 2798
    sw	$a6,20($a4)
    # Line 2799
    move	$a2,$s1
    # Line 2795
    li	$a3,86
    # Line 2797
    sw	$a5,16($a4)
    # Line 2799
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 2795
    sh	$a3,12($a4)
    # Line 2801
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_Lightfv
    b	.L0da40550
    ld	$ra,40($sp)
.L0da405b0:
    # Line 2789
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da40550
    ld	$ra,40($sp)
.end __gllc_Lightfv

# Function: __gllc_Lighti
# Declared: Line 2805 (Source lines: 2806-2814)
# Address: 0x0da405d0 - 0x0da40648 (Size: 120 bytes, Frame: 208)
.globl __gllc_Lighti
.ent __gllc_Lighti
__gllc_Lighti:
    # Line 2806
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,2568
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 2809
    # lw $t9, -26928($gp) # &__glLightiv_size
    # Line 2806
    sw	$a2,68($sp)
    # Line 2807
    lw	$v0,4112($zero)
    # Line 2809
    move	$a0,$a1
    jal	__glLightiv_size
    # Line 2807
    sd	$v0,16($sp)
    # Line 2809
    li	$a0,1
    beq	$v0,$a0,.L0da4062c
    # Line 2810
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da40620:
    # Line 2814
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da4062c:
    # Line 2813
    # lw $t9, -24816($gp) # &__gllc_Lightiv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_Lightiv
    addiu	$a2,$sp,68
    b	.L0da40620
    ld	$ra,24($sp)
.end __gllc_Lighti

# Function: __gllc_Lightiv
# Declared: Line 2817 (Source lines: 2818-2840)
# Address: 0x0da40650 - 0x0da40724 (Size: 212 bytes, Frame: 192)
.globl __gllc_Lightiv
.ent __gllc_Lightiv
__gllc_Lightiv:
    # Line 2818
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 2823
    lw	$s0,4112($zero)
    # Line 2818
    addiu	$v0,$v0,2440
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 2825
    # lw $t9, -26928($gp) # &__glLightiv_size
    # Line 2818
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 2825
    move	$a0,$a1
    jal	__glLightiv_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da40710
    # Line 2831
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da406c4
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da406b0:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 2840
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da406c4:
    # Line 2837
    ld	$a1,16($sp)
    # Line 2835
    ld	$a5,0($sp)
    # Line 2836
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 2837
    # lw $t9, -18508($gp) # &memcpy
    # Line 2836
    sw	$a6,20($a4)
    # Line 2837
    move	$a2,$s1
    # Line 2833
    li	$a3,88
    # Line 2835
    sw	$a5,16($a4)
    # Line 2837
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 2833
    sh	$a3,12($a4)
    # Line 2839
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_Lightiv
    b	.L0da406b0
    ld	$ra,40($sp)
.L0da40710:
    # Line 2827
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da406b0
    ld	$ra,40($sp)
.end __gllc_Lightiv

# Function: __gllc_LightModelf
# Declared: Line 2843 (Source lines: 2844-2852)
# Address: 0x0da40730 - 0x0da4079c (Size: 108 bytes, Frame: 48)
.globl __gllc_LightModelf
.ent __gllc_LightModelf
__gllc_LightModelf:
    # Line 2844
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    lui	$v0,0x5
    sd	$ra,16($sp)
    addiu	$v0,$v0,2216
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2847
    # lw $t9, -26924($gp) # &__glLightModelfv_size
    # Line 2844
    swc1	$f13,40($sp)
    # Line 2845
    lw	$at,4112($zero)
    # Line 2847
    jal	__glLightModelfv_size
    # Line 2845
    sd	$at,8($sp)
    # Line 2847
    li	$v1,1
    beq	$v0,$v1,.L0da40788
    # Line 2851
    nop	# was lw $t9, -24808($gp) # &__gllc_LightModelfv
    # Line 2848
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,8($sp)
    ld	$ra,16($sp)
.L0da4077c:
    # Line 2852
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da40788:
    # Line 2851
    ld	$a0,0($sp)
    bal __gllc_LightModelfv
    addiu	$a1,$sp,40
    b	.L0da4077c
    ld	$ra,16($sp)
.end __gllc_LightModelf

# Function: __gllc_LightModelfv
# Declared: Line 2855 (Source lines: 2856-2877)
# Address: 0x0da407a0 - 0x0da40864 (Size: 196 bytes, Frame: 192)
.globl __gllc_LightModelfv
.ent __gllc_LightModelfv
__gllc_LightModelfv:
    # Line 2856
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,2104
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2863
    # lw $t9, -26924($gp) # &__glLightModelfv_size
    # Line 2861
    lw	$s0,4112($zero)
    # Line 2856
    sd	$ra,32($sp)
    # Line 2863
    jal	__glLightModelfv_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da40854
    # Line 2865
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 2869
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da40810
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da407fc:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 2877
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da40810:
    # Line 2874
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2873
    ld	$a5,0($sp)
    # Line 2874
    move	$a2,$s1
    # Line 2871
    li	$a3,90
    # Line 2873
    sw	$a5,16($a4)
    # Line 2874
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 2871
    sh	$a3,12($a4)
    # Line 2876
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_LightModelfv
    b	.L0da407fc
    ld	$ra,32($sp)
.L0da40854:
    # Line 2865
    jalr	$t9
    move	$a0,$s0
    b	.L0da407fc
    ld	$ra,32($sp)
.end __gllc_LightModelfv

# Function: __gllc_LightModeli
# Declared: Line 2880 (Source lines: 2881-2889)
# Address: 0x0da40870 - 0x0da408dc (Size: 108 bytes, Frame: 48)
.globl __gllc_LightModeli
.ent __gllc_LightModeli
__gllc_LightModeli:
    # Line 2881
    addiu	$sp,$sp,-48
    sd	$a0,0($sp)
    lui	$v0,0x5
    sd	$ra,16($sp)
    addiu	$v0,$v0,1896
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 2884
    # lw $t9, -26920($gp) # &__glLightModeliv_size
    # Line 2881
    sw	$a1,44($sp)
    # Line 2882
    lw	$at,4112($zero)
    # Line 2884
    jal	__glLightModeliv_size
    # Line 2882
    sd	$at,8($sp)
    # Line 2884
    li	$v1,1
    beq	$v0,$v1,.L0da408c4
    # Line 2885
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,8($sp)
    ld	$ra,16($sp)
.L0da408b8:
    # Line 2889
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da408c4:
    # Line 2888
    # lw $t9, -24800($gp) # &__gllc_LightModeliv
    ld	$a0,0($sp)
    bal __gllc_LightModeliv
    addiu	$a1,$sp,44
    b	.L0da408b8
    ld	$ra,16($sp)
.end __gllc_LightModeli

# Function: __gllc_LightModeliv
# Declared: Line 2892 (Source lines: 2893-2914)
# Address: 0x0da408e0 - 0x0da409a4 (Size: 196 bytes, Frame: 192)
.globl __gllc_LightModeliv
.ent __gllc_LightModeliv
__gllc_LightModeliv:
    # Line 2893
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,1784
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 2900
    # lw $t9, -26920($gp) # &__glLightModeliv_size
    # Line 2898
    lw	$s0,4112($zero)
    # Line 2893
    sd	$ra,32($sp)
    # Line 2900
    jal	__glLightModeliv_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da40990
    # Line 2906
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da4094c
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da40938:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 2914
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da4094c:
    # Line 2911
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 2910
    ld	$a5,0($sp)
    # Line 2911
    move	$a2,$s1
    # Line 2908
    li	$a3,92
    # Line 2910
    sw	$a5,16($a4)
    # Line 2911
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 2908
    sh	$a3,12($a4)
    # Line 2913
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_LightModeliv
    b	.L0da40938
    ld	$ra,32($sp)
.L0da40990:
    # Line 2902
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da40938
    ld	$ra,32($sp)
.end __gllc_LightModeliv

# Function: __gllc_LineStipple
# Declared: Line 2917 (Source lines: 2918-2930)
# Address: 0x0da409b0 - 0x0da40a30 (Size: 128 bytes, Frame: 48)
.globl __gllc_LineStipple
.ent __gllc_LineStipple
__gllc_LineStipple:
    # Line 2921
    lw	$at,4112($zero)
    # Line 2918
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 2921
    sd	$at,16($sp)
    # Line 2918
    addiu	$v0,$v0,1576
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 2923
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2918
    sd	$a1,8($sp)
    # Line 2923
    li	$a1,8
    # Line 2918
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 2923
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da409fc
    ld	$ra,24($sp)
.L0da409f0:
    # Line 2930
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da409fc:
    # Line 2929
    la	$a2,__glle_LineStipple
    ld	$a0,16($sp)
    # Line 2925
    li	$v1,93
    sh	$v1,12($v0)
    # Line 2927
    ld	$a3,0($sp)
    # Line 2929
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2928
    ld	$a4,8($sp)
    sh	$a4,20($v0)
    # Line 2929
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 2927
    sw	$a3,16($v0)
    b	.L0da409f0
    ld	$ra,24($sp)
.end __gllc_LineStipple

# Function: __gllc_LineWidth
# Declared: Line 2933 (Source lines: 2934-2945)
# Address: 0x0da40a30 - 0x0da40aa0 (Size: 112 bytes, Frame: 32)
.globl __gllc_LineWidth
.ent __gllc_LineWidth
__gllc_LineWidth:
    # Line 2934
    lui	$at,0x5
    # Line 2937
    lw	$a0,4112($zero)
    # Line 2934
    addiu	$sp,$sp,-32
    addiu	$at,$at,1448
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 2939
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 2937
    sd	$a0,8($sp)
    # Line 2934
    sd	$ra,16($sp)
    # Line 2939
    li	$a1,4
    jal	__glDlistAllocOp2
    # Line 2934
    sdc1	$f12,0($sp)
    # Line 2939
    bnez	$v0,.L0da40a78
    # Line 2944
    la	$a2,__glle_LineWidth
    ld	$ra,16($sp)
.L0da40a6c:
    # Line 2945
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da40a78:
    # Line 2944
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2943
    ldc1	$f0,0($sp)
    # Line 2941
    li	$v1,94
    sh	$v1,12($v0)
    # Line 2944
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 2943
    swc1	$f0,16($v0)
    b	.L0da40a6c
    ld	$ra,16($sp)
.end __gllc_LineWidth

# Function: __gllc_Materialf
# Declared: Line 2948 (Source lines: 2949-2957)
# Address: 0x0da40aa0 - 0x0da40b18 (Size: 120 bytes, Frame: 208)
.globl __gllc_Materialf
.ent __gllc_Materialf
__gllc_Materialf:
    # Line 2949
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,1336
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 2952
    # lw $t9, -26916($gp) # &__glMaterialfv_size
    # Line 2949
    swc1	$f14,64($sp)
    # Line 2950
    lw	$v0,4112($zero)
    # Line 2952
    move	$a0,$a1
    jal	__glMaterialfv_size
    # Line 2950
    sd	$v0,16($sp)
    # Line 2952
    li	$a0,1
    beq	$v0,$a0,.L0da40afc
    # Line 2953
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da40af0:
    # Line 2957
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da40afc:
    # Line 2956
    # lw $t9, -24784($gp) # &__gllc_Materialfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_Materialfv
    addiu	$a2,$sp,64
    b	.L0da40af0
    ld	$ra,24($sp)
.end __gllc_Materialf

# Function: __gllc_Materialfv
# Declared: Line 2960 (Source lines: 2961-2990)
# Address: 0x0da40b20 - 0x0da40c20 (Size: 256 bytes, Frame: 192)
.globl __gllc_Materialfv
.ent __gllc_Materialfv
__gllc_Materialfv:
    # Line 2969
    lwc1	$f14,0($a2)
    # Line 2961
    addiu	$sp,$sp,-64
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    lui	$v0,0x5
    sd	$a0,16($sp)
    addiu	$v0,$v0,1208
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 2969
    # lw $t9, -29200($gp) # &__glErrorCheckMaterial
    # Line 2961
    sd	$s0,40($sp)
    sd	$ra,48($sp)
    # Line 2969
    jal	__glErrorCheckMaterial
    # Line 2967
    lw	$s0,4112($zero)
    # Line 2969
    beqz	$v0,.L0da40b84
    # Line 2974
    nop	# was lw $t9, -26916($gp) # &__glMaterialfv_size
    # Line 2971
    # lw $t9, -30824($gp) # &__gllc_Error
    move	$a0,$s0
    jal	__gllc_Error
    move	$a1,$v0
.L0da40b70:
    ld	$ra,48($sp)
.L0da40b74:
    ld	$s0,40($sp)
    # Line 2990
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da40b84:
    # Line 2974
    jalr	$t9
    ld	$a0,32($sp)
    sll	$v1,$v0,0x2
    bltz	$v1,.L0da40c0c
    sd	$v1,0($sp)
    # Line 2980
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    ld	$a1,0($sp)
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,8
    beqz	$v0,.L0da40b70
    sd	$v0,8($sp)
    # Line 2986
    ld	$a2,0($sp)
    ld	$a1,24($sp)
    # Line 2984
    ld	$a5,16($sp)
    # Line 2985
    ld	$a6,32($sp)
    ld	$a4,8($sp)
    # Line 2986
    # lw $t9, -18508($gp) # &memcpy
    # Line 2985
    sw	$a6,20($a4)
    # Line 2982
    li	$a3,96
    # Line 2984
    sw	$a5,16($a4)
    # Line 2986
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 2982
    sh	$a3,12($a4)
    # Line 2989
    la	$a2,__glle_Materialfv
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 2988
    lw	$a7,4996($s0)
    # Line 2989
    ld	$a1,8($sp)
    move	$a0,$s0
    # Line 2988
    ori	$a7,$a7,0x100
    # Line 2989
    jal	__glDlistAppendOp
    # Line 2988
    sw	$a7,4996($s0)
    b	.L0da40b74
    ld	$ra,48($sp)
.L0da40c0c:
    # Line 2976
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da40b74
    ld	$ra,48($sp)
.end __gllc_Materialfv

# Function: __gllc_Materiali
# Declared: Line 2993 (Source lines: 2994-3002)
# Address: 0x0da40c20 - 0x0da40c98 (Size: 120 bytes, Frame: 208)
.globl __gllc_Materiali
.ent __gllc_Materiali
__gllc_Materiali:
    # Line 2994
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,952
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 2997
    # lw $t9, -26912($gp) # &__glMaterialiv_size
    # Line 2994
    sw	$a2,68($sp)
    # Line 2995
    lw	$v0,4112($zero)
    # Line 2997
    move	$a0,$a1
    jal	__glMaterialiv_size
    # Line 2995
    sd	$v0,16($sp)
    # Line 2997
    li	$a0,1
    beq	$v0,$a0,.L0da40c80
    # Line 3001
    nop	# was lw $t9, -24776($gp) # &__gllc_Materialiv
    # Line 2998
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da40c74:
    # Line 3002
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da40c80:
    # Line 3001
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_Materialiv
    addiu	$a2,$sp,68
    b	.L0da40c74
    ld	$ra,24($sp)
.end __gllc_Materiali

# Function: __gllc_Materialiv
# Declared: Line 3005 (Source lines: 3006-3035)
# Address: 0x0da40ca0 - 0x0da40da8 (Size: 264 bytes, Frame: 192)
.globl __gllc_Materialiv
.ent __gllc_Materialiv
__gllc_Materialiv:
    # Line 3006
    addiu	$sp,$sp,-64
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,16($sp)
    lui	$v0,0x5
    # Line 3014
    lw	$at,0($a2)
    # Line 3006
    addiu	$v0,$v0,824
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 3014
    mtc1	$at,$f14
    # lw $t9, -29200($gp) # &__glErrorCheckMaterial
    # Line 3006
    sd	$s0,40($sp)
    # Line 3012
    lw	$s0,4112($zero)
    # Line 3006
    sd	$ra,48($sp)
    # Line 3014
    jal	__glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0da40d08
    # Line 3016
    nop	# was lw $t9, -30824($gp) # &__gllc_Error
    move	$a0,$s0
    jal	__gllc_Error
    move	$a1,$v0
.L0da40cf4:
    ld	$ra,48($sp)
.L0da40cf8:
    ld	$s0,40($sp)
    # Line 3035
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da40d08:
    # Line 3019
    # lw $t9, -26912($gp) # &__glMaterialiv_size
    jal	__glMaterialiv_size
    ld	$a0,32($sp)
    sll	$v1,$v0,0x2
    bltz	$v1,.L0da40d94
    sd	$v1,0($sp)
    # Line 3025
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    ld	$a1,0($sp)
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,8
    beqz	$v0,.L0da40cf4
    sd	$v0,8($sp)
    # Line 3031
    ld	$a2,0($sp)
    ld	$a1,24($sp)
    # Line 3029
    ld	$a5,16($sp)
    # Line 3030
    ld	$a6,32($sp)
    ld	$a4,8($sp)
    # Line 3031
    # lw $t9, -18508($gp) # &memcpy
    # Line 3030
    sw	$a6,20($a4)
    # Line 3027
    li	$a3,98
    # Line 3029
    sw	$a5,16($a4)
    # Line 3031
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 3027
    sh	$a3,12($a4)
    # Line 3034
    la	$a2,__glle_Materialiv
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3033
    lw	$a7,4996($s0)
    # Line 3034
    ld	$a1,8($sp)
    move	$a0,$s0
    # Line 3033
    ori	$a7,$a7,0x100
    # Line 3034
    jal	__glDlistAppendOp
    # Line 3033
    sw	$a7,4996($s0)
    b	.L0da40cf8
    ld	$ra,48($sp)
.L0da40d94:
    # Line 3021
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da40cf8
    ld	$ra,48($sp)
.end __gllc_Materialiv

# Function: __gllc_PointSize
# Declared: Line 3038 (Source lines: 3039-3050)
# Address: 0x0da40db0 - 0x0da40e20 (Size: 112 bytes, Frame: 32)
.globl __gllc_PointSize
.ent __gllc_PointSize
__gllc_PointSize:
    # Line 3039
    lui	$at,0x5
    # Line 3042
    lw	$a0,4112($zero)
    # Line 3039
    addiu	$sp,$sp,-32
    addiu	$at,$at,552
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3044
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3042
    sd	$a0,8($sp)
    # Line 3039
    sd	$ra,16($sp)
    # Line 3044
    li	$a1,4
    jal	__glDlistAllocOp2
    # Line 3039
    sdc1	$f12,0($sp)
    # Line 3044
    bnez	$v0,.L0da40df4
    ld	$ra,16($sp)
.L0da40de8:
    # Line 3050
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da40df4:
    # Line 3049
    la	$a2,__glle_PointSize
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3048
    ldc1	$f0,0($sp)
    # Line 3046
    li	$v1,99
    sh	$v1,12($v0)
    # Line 3049
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3048
    swc1	$f0,16($v0)
    b	.L0da40de8
    ld	$ra,16($sp)
.end __gllc_PointSize

# Function: __gllc_PolygonMode
# Declared: Line 3053 (Source lines: 3054-3066)
# Address: 0x0da40e20 - 0x0da40ea0 (Size: 128 bytes, Frame: 48)
.globl __gllc_PolygonMode
.ent __gllc_PolygonMode
__gllc_PolygonMode:
    # Line 3057
    lw	$at,4112($zero)
    # Line 3054
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 3057
    sd	$at,16($sp)
    # Line 3054
    addiu	$v0,$v0,440
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 3059
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3054
    sd	$a1,8($sp)
    # Line 3059
    li	$a1,8
    # Line 3054
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 3059
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da40e6c
    ld	$ra,24($sp)
.L0da40e60:
    # Line 3066
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da40e6c:
    # Line 3065
    la	$a2,__glle_PolygonMode
    ld	$a0,16($sp)
    # Line 3061
    li	$v1,100
    sh	$v1,12($v0)
    # Line 3063
    ld	$a3,0($sp)
    # Line 3065
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3064
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 3065
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3063
    sw	$a3,16($v0)
    b	.L0da40e60
    ld	$ra,24($sp)
.end __gllc_PolygonMode

# Function: __gllc_Scissor
# Declared: Line 3070 (Source lines: 3071-3085)
# Address: 0x0da40ea0 - 0x0da40f38 (Size: 152 bytes, Frame: 192)
.globl __gllc_Scissor
.ent __gllc_Scissor
__gllc_Scissor:
    # Line 3071
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 3074
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 3071
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,312
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3076
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3071
    sd	$a1,8($sp)
    # Line 3076
    li	$a1,16
    # Line 3071
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 3076
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da40ef8
    # Line 3084
    la	$a2,__glle_Scissor
    ld	$ra,40($sp)
.L0da40eec:
    # Line 3085
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da40ef8:
    # Line 3084
    ld	$a0,16($sp)
    # Line 3078
    li	$v1,102
    sh	$v1,12($v0)
    # Line 3080
    ld	$a3,0($sp)
    # Line 3081
    ld	$a4,8($sp)
    # Line 3082
    ld	$a5,24($sp)
    # Line 3083
    ld	$a6,32($sp)
    sw	$a6,28($v0)
    # Line 3084
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3082
    sw	$a5,24($v0)
    # Line 3081
    sw	$a4,20($v0)
    # Line 3084
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3080
    sw	$a3,16($v0)
    b	.L0da40eec
    ld	$ra,40($sp)
.end __gllc_Scissor

# Function: __gllc_ShadeModel
# Declared: Line 3088 (Source lines: 3089-3100)
# Address: 0x0da40f40 - 0x0da40fb4 (Size: 116 bytes, Frame: 32)
.globl __gllc_ShadeModel
.ent __gllc_ShadeModel
__gllc_ShadeModel:
    # Line 3089
    lui	$v0,0x5
    # Line 3092
    lw	$at,4112($zero)
    # Line 3089
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,152
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3094
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3092
    sd	$at,8($sp)
    # Line 3094
    li	$a1,4
    # Line 3089
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3094
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da40f8c
    # Line 3099
    la	$a2,__glle_ShadeModel
    ld	$ra,16($sp)
.L0da40f80:
    # Line 3100
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da40f8c:
    # Line 3099
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3096
    li	$v1,103
    sh	$v1,12($v0)
    # Line 3098
    ld	$a3,0($sp)
    # Line 3099
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3098
    sw	$a3,16($v0)
    b	.L0da40f80
    ld	$ra,16($sp)
.end __gllc_ShadeModel

# Function: __gllc_TexParameterf
# Declared: Line 3103 (Source lines: 3104-3112)
# Address: 0x0da40fc0 - 0x0da41038 (Size: 120 bytes, Frame: 208)
.globl __gllc_TexParameterf
.ent __gllc_TexParameterf
__gllc_TexParameterf:
    # Line 3104
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,24
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3107
    # lw $t9, -26560($gp) # &__glTexParameterfv_size
    # Line 3104
    swc1	$f14,64($sp)
    # Line 3105
    lw	$v0,4112($zero)
    # Line 3107
    move	$a0,$a1
    jal	__glTexParameterfv_size
    # Line 3105
    sd	$v0,16($sp)
    # Line 3107
    li	$a0,1
    beq	$v0,$a0,.L0da4101c
    # Line 3108
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da41010:
    # Line 3112
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da4101c:
    # Line 3111
    # lw $t9, -24752($gp) # &__gllc_TexParameterfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexParameterfv
    addiu	$a2,$sp,64
    b	.L0da41010
    ld	$ra,24($sp)
.end __gllc_TexParameterf

# Function: __gllc_TexParameterfv
# Declared: Line 3115 (Source lines: 3116-3138)
# Address: 0x0da41040 - 0x0da41114 (Size: 212 bytes, Frame: 192)
.globl __gllc_TexParameterfv
.ent __gllc_TexParameterfv
__gllc_TexParameterfv:
    # Line 3116
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 3121
    lw	$s0,4112($zero)
    # Line 3116
    addiu	$v0,$v0,-104
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3123
    # lw $t9, -26560($gp) # &__glTexParameterfv_size
    # Line 3116
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 3123
    move	$a0,$a1
    jal	__glTexParameterfv_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da41104
    # Line 3125
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 3129
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da410b8
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da410a4:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 3138
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da410b8:
    # Line 3135
    ld	$a1,16($sp)
    # Line 3133
    ld	$a5,0($sp)
    # Line 3134
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 3135
    # lw $t9, -18508($gp) # &memcpy
    # Line 3134
    sw	$a6,20($a4)
    # Line 3135
    move	$a2,$s1
    # Line 3131
    li	$a3,105
    # Line 3133
    sw	$a5,16($a4)
    # Line 3135
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 3131
    sh	$a3,12($a4)
    # Line 3137
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexParameterfv
    b	.L0da410a4
    ld	$ra,40($sp)
.L0da41104:
    # Line 3125
    jalr	$t9
    move	$a0,$s0
    b	.L0da410a4
    ld	$ra,40($sp)
.end __gllc_TexParameterfv

# Function: __gllc_TexParameteri
# Declared: Line 3141 (Source lines: 3142-3150)
# Address: 0x0da41120 - 0x0da41198 (Size: 120 bytes, Frame: 208)
.globl __gllc_TexParameteri
.ent __gllc_TexParameteri
__gllc_TexParameteri:
    # Line 3142
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,-328
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3145
    # lw $t9, -26556($gp) # &__glTexParameteriv_size
    # Line 3142
    sw	$a2,68($sp)
    # Line 3143
    lw	$v0,4112($zero)
    # Line 3145
    move	$a0,$a1
    jal	__glTexParameteriv_size
    # Line 3143
    sd	$v0,16($sp)
    # Line 3145
    li	$a0,1
    beq	$v0,$a0,.L0da41180
    # Line 3149
    nop	# was lw $t9, -24744($gp) # &__gllc_TexParameteriv
    # Line 3146
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da41174:
    # Line 3150
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da41180:
    # Line 3149
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexParameteriv
    addiu	$a2,$sp,68
    b	.L0da41174
    ld	$ra,24($sp)
.end __gllc_TexParameteri

# Function: __gllc_TexParameteriv
# Declared: Line 3153 (Source lines: 3154-3176)
# Address: 0x0da411a0 - 0x0da41274 (Size: 212 bytes, Frame: 192)
.globl __gllc_TexParameteriv
.ent __gllc_TexParameteriv
__gllc_TexParameteriv:
    # Line 3154
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 3159
    lw	$s0,4112($zero)
    # Line 3154
    addiu	$v0,$v0,-456
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3161
    # lw $t9, -26556($gp) # &__glTexParameteriv_size
    # Line 3154
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 3161
    move	$a0,$a1
    jal	__glTexParameteriv_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da41264
    # Line 3163
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 3167
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da41218
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da41204:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 3176
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da41218:
    # Line 3173
    ld	$a1,16($sp)
    # Line 3171
    ld	$a5,0($sp)
    # Line 3172
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 3173
    # lw $t9, -18508($gp) # &memcpy
    # Line 3172
    sw	$a6,20($a4)
    # Line 3173
    move	$a2,$s1
    # Line 3169
    li	$a3,107
    # Line 3171
    sw	$a5,16($a4)
    # Line 3173
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 3169
    sh	$a3,12($a4)
    # Line 3175
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexParameteriv
    b	.L0da41204
    ld	$ra,40($sp)
.L0da41264:
    # Line 3163
    jalr	$t9
    move	$a0,$s0
    b	.L0da41204
    ld	$ra,40($sp)
.end __gllc_TexParameteriv

# Function: __gllc_TexEnvf
# Declared: Line 3181 (Source lines: 3182-3190)
# Address: 0x0da41280 - 0x0da412f8 (Size: 120 bytes, Frame: 208)
.globl __gllc_TexEnvf
.ent __gllc_TexEnvf
__gllc_TexEnvf:
    # Line 3182
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,-680
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3185
    # lw $t9, -26536($gp) # &__glTexEnvfv_size
    # Line 3182
    swc1	$f14,64($sp)
    # Line 3183
    lw	$v0,4112($zero)
    # Line 3185
    move	$a0,$a1
    jal	__glTexEnvfv_size
    # Line 3183
    sd	$v0,16($sp)
    # Line 3185
    li	$a0,1
    beq	$v0,$a0,.L0da412dc
    # Line 3186
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da412d0:
    # Line 3190
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da412dc:
    # Line 3189
    # lw $t9, -24736($gp) # &__gllc_TexEnvfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexEnvfv
    addiu	$a2,$sp,64
    b	.L0da412d0
    ld	$ra,24($sp)
.end __gllc_TexEnvf

# Function: __gllc_TexEnvfv
# Declared: Line 3193 (Source lines: 3194-3216)
# Address: 0x0da41300 - 0x0da413d4 (Size: 212 bytes, Frame: 192)
.globl __gllc_TexEnvfv
.ent __gllc_TexEnvfv
__gllc_TexEnvfv:
    # Line 3194
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 3199
    lw	$s0,4112($zero)
    # Line 3194
    addiu	$v0,$v0,-808
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3201
    # lw $t9, -26536($gp) # &__glTexEnvfv_size
    # Line 3194
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 3201
    move	$a0,$a1
    jal	__glTexEnvfv_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da413c0
    # Line 3207
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da41374
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da41360:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 3216
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da41374:
    # Line 3213
    ld	$a1,16($sp)
    # Line 3211
    ld	$a5,0($sp)
    # Line 3212
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 3213
    # lw $t9, -18508($gp) # &memcpy
    # Line 3212
    sw	$a6,20($a4)
    # Line 3213
    move	$a2,$s1
    # Line 3209
    li	$a3,111
    # Line 3211
    sw	$a5,16($a4)
    # Line 3213
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 3209
    sh	$a3,12($a4)
    # Line 3215
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexEnvfv
    b	.L0da41360
    ld	$ra,40($sp)
.L0da413c0:
    # Line 3203
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da41360
    ld	$ra,40($sp)
.end __gllc_TexEnvfv

# Function: __gllc_TexEnvi
# Declared: Line 3219 (Source lines: 3220-3228)
# Address: 0x0da413e0 - 0x0da41458 (Size: 120 bytes, Frame: 208)
.globl __gllc_TexEnvi
.ent __gllc_TexEnvi
__gllc_TexEnvi:
    # Line 3220
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,-1032
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3223
    # lw $t9, -26532($gp) # &__glTexEnviv_size
    # Line 3220
    sw	$a2,68($sp)
    # Line 3221
    lw	$v0,4112($zero)
    # Line 3223
    move	$a0,$a1
    jal	__glTexEnviv_size
    # Line 3221
    sd	$v0,16($sp)
    # Line 3223
    li	$a0,1
    beq	$v0,$a0,.L0da41440
    # Line 3227
    nop	# was lw $t9, -24728($gp) # &__gllc_TexEnviv
    # Line 3224
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da41434:
    # Line 3228
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da41440:
    # Line 3227
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexEnviv
    addiu	$a2,$sp,68
    b	.L0da41434
    ld	$ra,24($sp)
.end __gllc_TexEnvi

# Function: __gllc_TexEnviv
# Declared: Line 3231 (Source lines: 3232-3254)
# Address: 0x0da41460 - 0x0da41534 (Size: 212 bytes, Frame: 192)
.globl __gllc_TexEnviv
.ent __gllc_TexEnviv
__gllc_TexEnviv:
    # Line 3232
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 3237
    lw	$s0,4112($zero)
    # Line 3232
    addiu	$v0,$v0,-1160
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3239
    # lw $t9, -26532($gp) # &__glTexEnviv_size
    # Line 3232
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 3239
    move	$a0,$a1
    jal	__glTexEnviv_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da41524
    # Line 3241
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 3245
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da414d8
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da414c4:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 3254
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da414d8:
    # Line 3251
    ld	$a1,16($sp)
    # Line 3249
    ld	$a5,0($sp)
    # Line 3250
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 3251
    # lw $t9, -18508($gp) # &memcpy
    # Line 3250
    sw	$a6,20($a4)
    # Line 3251
    move	$a2,$s1
    # Line 3247
    li	$a3,113
    # Line 3249
    sw	$a5,16($a4)
    # Line 3251
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 3247
    sh	$a3,12($a4)
    # Line 3253
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexEnviv
    b	.L0da414c4
    ld	$ra,40($sp)
.L0da41524:
    # Line 3241
    jalr	$t9
    move	$a0,$s0
    b	.L0da414c4
    ld	$ra,40($sp)
.end __gllc_TexEnviv

# Function: __gllc_TexGend
# Declared: Line 3257 (Source lines: 3258-3266)
# Address: 0x0da41540 - 0x0da415b8 (Size: 120 bytes, Frame: 208)
.globl __gllc_TexGend
.ent __gllc_TexGend
__gllc_TexGend:
    # Line 3258
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,-1384
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3261
    # lw $t9, -26588($gp) # &__glTexGendv_size
    # Line 3258
    sdc1	$f14,64($sp)
    # Line 3259
    lw	$v0,4112($zero)
    # Line 3261
    move	$a0,$a1
    jal	__glTexGendv_size
    # Line 3259
    sd	$v0,16($sp)
    # Line 3261
    li	$a0,1
    beq	$v0,$a0,.L0da4159c
    # Line 3262
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da41590:
    # Line 3266
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da4159c:
    # Line 3265
    # lw $t9, -24720($gp) # &__gllc_TexGendv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexGendv
    addiu	$a2,$sp,64
    b	.L0da41590
    ld	$ra,24($sp)
.end __gllc_TexGend

# Function: __gllc_TexGendv
# Declared: Line 3269 (Source lines: 3270-3293)
# Address: 0x0da415c0 - 0x0da4169c (Size: 220 bytes, Frame: 192)
.globl __gllc_TexGendv
.ent __gllc_TexGendv
__gllc_TexGendv:
    # Line 3270
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 3275
    lw	$s0,4112($zero)
    # Line 3270
    addiu	$v0,$v0,-1512
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3277
    # lw $t9, -26588($gp) # &__glTexGendv_size
    # Line 3270
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 3277
    move	$a0,$a1
    jal	__glTexGendv_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x3
    bltz	$s1,.L0da41688
    # Line 3283
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da41634
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da41620:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 3293
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da41634:
    # Line 3290
    ld	$a1,16($sp)
    # Line 3288
    ld	$a6,0($sp)
    # Line 3289
    ld	$a4,24($sp)
    ld	$a7,8($sp)
    sw	$a7,20($a4)
    # Line 3290
    # lw $t9, -18508($gp) # &memcpy
    move	$a2,$s1
    # Line 3288
    sw	$a6,16($a4)
    # Line 3285
    li	$a3,115
    # Line 3286
    li	$a5,1
    sb	$a5,14($a4)
    # Line 3290
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 3285
    sh	$a3,12($a4)
    # Line 3292
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexGendv
    b	.L0da41620
    ld	$ra,40($sp)
.L0da41688:
    # Line 3279
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da41620
    ld	$ra,40($sp)
.end __gllc_TexGendv

# Function: __gllc_TexGenf
# Declared: Line 3296 (Source lines: 3297-3305)
# Address: 0x0da416a0 - 0x0da41718 (Size: 120 bytes, Frame: 208)
.globl __gllc_TexGenf
.ent __gllc_TexGenf
__gllc_TexGenf:
    # Line 3297
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,-1736
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3300
    # lw $t9, -26584($gp) # &__glTexGenfv_size
    # Line 3297
    swc1	$f14,64($sp)
    # Line 3298
    lw	$v0,4112($zero)
    # Line 3300
    move	$a0,$a1
    jal	__glTexGenfv_size
    # Line 3298
    sd	$v0,16($sp)
    # Line 3300
    li	$a0,1
    beq	$v0,$a0,.L0da416fc
    # Line 3301
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da416f0:
    # Line 3305
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da416fc:
    # Line 3304
    # lw $t9, -24712($gp) # &__gllc_TexGenfv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexGenfv
    addiu	$a2,$sp,64
    b	.L0da416f0
    ld	$ra,24($sp)
.end __gllc_TexGenf

# Function: __gllc_TexGenfv
# Declared: Line 3308 (Source lines: 3309-3331)
# Address: 0x0da41720 - 0x0da417f4 (Size: 212 bytes, Frame: 192)
.globl __gllc_TexGenfv
.ent __gllc_TexGenfv
__gllc_TexGenfv:
    # Line 3309
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 3314
    lw	$s0,4112($zero)
    # Line 3309
    addiu	$v0,$v0,-1864
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3316
    # lw $t9, -26584($gp) # &__glTexGenfv_size
    # Line 3309
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 3316
    move	$a0,$a1
    jal	__glTexGenfv_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da417e0
    # Line 3322
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da41794
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da41780:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 3331
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da41794:
    # Line 3328
    ld	$a1,16($sp)
    # Line 3326
    ld	$a5,0($sp)
    # Line 3327
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 3328
    # lw $t9, -18508($gp) # &memcpy
    # Line 3327
    sw	$a6,20($a4)
    # Line 3328
    move	$a2,$s1
    # Line 3324
    li	$a3,117
    # Line 3326
    sw	$a5,16($a4)
    # Line 3328
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 3324
    sh	$a3,12($a4)
    # Line 3330
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexGenfv
    b	.L0da41780
    ld	$ra,40($sp)
.L0da417e0:
    # Line 3318
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da41780
    ld	$ra,40($sp)
.end __gllc_TexGenfv

# Function: __gllc_TexGeni
# Declared: Line 3334 (Source lines: 3335-3343)
# Address: 0x0da41800 - 0x0da41878 (Size: 120 bytes, Frame: 208)
.globl __gllc_TexGeni
.ent __gllc_TexGeni
__gllc_TexGeni:
    # Line 3335
    addiu	$sp,$sp,-80
    sd	$a1,8($sp)
    sd	$ra,24($sp)
    lui	$v1,0x5
    sd	$a0,0($sp)
    addiu	$v1,$v1,-2088
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 3338
    # lw $t9, -26580($gp) # &__glTexGeniv_size
    # Line 3335
    sw	$a2,68($sp)
    # Line 3336
    lw	$v0,4112($zero)
    # Line 3338
    move	$a0,$a1
    jal	__glTexGeniv_size
    # Line 3336
    sd	$v0,16($sp)
    # Line 3338
    li	$a0,1
    beq	$v0,$a0,.L0da4185c
    # Line 3339
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,16($sp)
    ld	$ra,24($sp)
.L0da41850:
    # Line 3343
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da4185c:
    # Line 3342
    # lw $t9, -24704($gp) # &__gllc_TexGeniv
    ld	$a0,0($sp)
    ld	$a1,8($sp)
    bal __gllc_TexGeniv
    addiu	$a2,$sp,68
    b	.L0da41850
    ld	$ra,24($sp)
.end __gllc_TexGeni

# Function: __gllc_TexGeniv
# Declared: Line 3346 (Source lines: 3347-3369)
# Address: 0x0da41880 - 0x0da41954 (Size: 212 bytes, Frame: 192)
.globl __gllc_TexGeniv
.ent __gllc_TexGeniv
__gllc_TexGeniv:
    # Line 3347
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 3352
    lw	$s0,4112($zero)
    # Line 3347
    addiu	$v0,$v0,-2216
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3354
    # lw $t9, -26580($gp) # &__glTexGeniv_size
    # Line 3347
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 3354
    move	$a0,$a1
    jal	__glTexGeniv_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da41940
    # Line 3360
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da418f4
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da418e0:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 3369
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da418f4:
    # Line 3366
    ld	$a1,16($sp)
    # Line 3364
    ld	$a5,0($sp)
    # Line 3365
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 3366
    # lw $t9, -18508($gp) # &memcpy
    # Line 3365
    sw	$a6,20($a4)
    # Line 3366
    move	$a2,$s1
    # Line 3362
    li	$a3,119
    # Line 3364
    sw	$a5,16($a4)
    # Line 3366
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 3362
    sh	$a3,12($a4)
    # Line 3368
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexGeniv
    b	.L0da418e0
    ld	$ra,40($sp)
.L0da41940:
    # Line 3356
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da418e0
    ld	$ra,40($sp)
.end __gllc_TexGeniv

# Function: __gllc_InitNames
# Declared: Line 3375 (Source lines: 3376-3384)
# Address: 0x0da41960 - 0x0da419c4 (Size: 100 bytes, Frame: 32)
.globl __gllc_InitNames
.ent __gllc_InitNames
__gllc_InitNames:
    # Line 3376
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,-2440
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3380
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3378
    lw	$a0,4112($zero)
    # Line 3376
    sd	$ra,8($sp)
    # Line 3380
    move	$a1,$zero
    jal	__glDlistAllocOp2
    # Line 3378
    sd	$a0,0($sp)
    # Line 3380
    bnez	$v0,.L0da419a4
    # Line 3383
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,8($sp)
.L0da41998:
    # Line 3384
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da419a4:
    # Line 3383
    la	$a2,__glle_InitNames
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 3382
    li	$v1,120
    # Line 3383
    jal	__glDlistAppendOp
    # Line 3382
    sh	$v1,12($v0)
    b	.L0da41998
    ld	$ra,8($sp)
.end __gllc_InitNames

# Function: __gllc_LoadName
# Declared: Line 3387 (Source lines: 3388-3399)
# Address: 0x0da419d0 - 0x0da41a44 (Size: 116 bytes, Frame: 32)
.globl __gllc_LoadName
.ent __gllc_LoadName
__gllc_LoadName:
    # Line 3388
    lui	$v0,0x5
    # Line 3391
    lw	$at,4112($zero)
    # Line 3388
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-2552
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3393
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3391
    sd	$at,8($sp)
    # Line 3393
    li	$a1,4
    # Line 3388
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3393
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da41a18
    ld	$ra,16($sp)
.L0da41a0c:
    # Line 3399
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41a18:
    # Line 3398
    la	$a2,__glle_LoadName
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3395
    li	$v1,121
    sh	$v1,12($v0)
    # Line 3397
    ld	$a3,0($sp)
    # Line 3398
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3397
    sw	$a3,16($v0)
    b	.L0da41a0c
    ld	$ra,16($sp)
.end __gllc_LoadName

# Function: __gllc_PassThrough
# Declared: Line 3402 (Source lines: 3403-3414)
# Address: 0x0da41a50 - 0x0da41ac0 (Size: 112 bytes, Frame: 32)
.globl __gllc_PassThrough
.ent __gllc_PassThrough
__gllc_PassThrough:
    # Line 3403
    lui	$at,0x5
    # Line 3406
    lw	$a0,4112($zero)
    # Line 3403
    addiu	$sp,$sp,-32
    addiu	$at,$at,-2680
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3408
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3406
    sd	$a0,8($sp)
    # Line 3403
    sd	$ra,16($sp)
    # Line 3408
    li	$a1,4
    jal	__glDlistAllocOp2
    # Line 3403
    sdc1	$f12,0($sp)
    # Line 3408
    bnez	$v0,.L0da41a98
    # Line 3413
    la	$a2,__glle_PassThrough
    ld	$ra,16($sp)
.L0da41a8c:
    # Line 3414
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41a98:
    # Line 3413
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3412
    ldc1	$f0,0($sp)
    # Line 3410
    li	$v1,122
    sh	$v1,12($v0)
    # Line 3413
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3412
    swc1	$f0,16($v0)
    b	.L0da41a8c
    ld	$ra,16($sp)
.end __gllc_PassThrough

# Function: __gllc_PopName
# Declared: Line 3417 (Source lines: 3418-3426)
# Address: 0x0da41ac0 - 0x0da41b24 (Size: 100 bytes, Frame: 32)
.globl __gllc_PopName
.ent __gllc_PopName
__gllc_PopName:
    # Line 3418
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,-2792
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3422
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3420
    lw	$a0,4112($zero)
    # Line 3418
    sd	$ra,8($sp)
    # Line 3422
    move	$a1,$zero
    jal	__glDlistAllocOp2
    # Line 3420
    sd	$a0,0($sp)
    # Line 3422
    bnez	$v0,.L0da41b00
    ld	$ra,8($sp)
.L0da41af4:
    # Line 3426
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41b00:
    # Line 3425
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    la	$a2,__glle_PopName
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 3424
    li	$v1,123
    # Line 3425
    jal	__glDlistAppendOp
    # Line 3424
    sh	$v1,12($v0)
    b	.L0da41af4
    ld	$ra,8($sp)
.end __gllc_PopName

# Function: __gllc_PushName
# Declared: Line 3429 (Source lines: 3430-3441)
# Address: 0x0da41b30 - 0x0da41ba4 (Size: 116 bytes, Frame: 32)
.globl __gllc_PushName
.ent __gllc_PushName
__gllc_PushName:
    # Line 3430
    lui	$v0,0x5
    # Line 3433
    lw	$at,4112($zero)
    # Line 3430
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-2904
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3435
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3433
    sd	$at,8($sp)
    # Line 3435
    li	$a1,4
    # Line 3430
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3435
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da41b7c
    # Line 3440
    la	$a2,__glle_PushName
    ld	$ra,16($sp)
.L0da41b70:
    # Line 3441
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41b7c:
    # Line 3440
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3437
    li	$v1,124
    sh	$v1,12($v0)
    # Line 3439
    ld	$a3,0($sp)
    # Line 3440
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3439
    sw	$a3,16($v0)
    b	.L0da41b70
    ld	$ra,16($sp)
.end __gllc_PushName

# Function: __gllc_DrawBuffer
# Declared: Line 3444 (Source lines: 3445-3456)
# Address: 0x0da41bb0 - 0x0da41c24 (Size: 116 bytes, Frame: 32)
.globl __gllc_DrawBuffer
.ent __gllc_DrawBuffer
__gllc_DrawBuffer:
    # Line 3445
    lui	$v0,0x5
    # Line 3448
    lw	$at,4112($zero)
    # Line 3445
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-3032
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3450
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3448
    sd	$at,8($sp)
    # Line 3450
    li	$a1,4
    # Line 3445
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3450
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da41bf8
    ld	$ra,16($sp)
.L0da41bec:
    # Line 3456
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41bf8:
    # Line 3455
    la	$a2,__glle_DrawBuffer
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3452
    li	$v1,125
    sh	$v1,12($v0)
    # Line 3454
    ld	$a3,0($sp)
    # Line 3455
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3454
    sw	$a3,16($v0)
    b	.L0da41bec
    ld	$ra,16($sp)
.end __gllc_DrawBuffer

# Function: __gllc_Clear
# Declared: Line 3459 (Source lines: 3460-3471)
# Address: 0x0da41c30 - 0x0da41ca4 (Size: 116 bytes, Frame: 32)
.globl __gllc_Clear
.ent __gllc_Clear
__gllc_Clear:
    # Line 3460
    lui	$v0,0x5
    # Line 3463
    lw	$at,4112($zero)
    # Line 3460
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-3160
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3465
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3463
    sd	$at,8($sp)
    # Line 3465
    li	$a1,4
    # Line 3460
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3465
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da41c7c
    # Line 3470
    la	$a2,__glle_Clear
    ld	$ra,16($sp)
.L0da41c70:
    # Line 3471
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41c7c:
    # Line 3470
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3467
    li	$v1,126
    sh	$v1,12($v0)
    # Line 3469
    ld	$a3,0($sp)
    # Line 3470
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3469
    sw	$a3,16($v0)
    b	.L0da41c70
    ld	$ra,16($sp)
.end __gllc_Clear

# Function: __gllc_ClearAccum
# Declared: Line 3474 (Source lines: 3475-3489)
# Address: 0x0da41cb0 - 0x0da41d44 (Size: 148 bytes, Frame: 192)
.globl __gllc_ClearAccum
.ent __gllc_ClearAccum
__gllc_ClearAccum:
    # Line 3478
    lw	$a0,4112($zero)
    # Line 3475
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 3478
    sd	$a0,32($sp)
    # Line 3475
    addiu	$at,$at,-3288
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 3480
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3475
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 3480
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 3475
    sdc1	$f12,0($sp)
    # Line 3480
    bnez	$v0,.L0da41d00
    ld	$ra,40($sp)
.L0da41cf4:
    # Line 3489
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da41d00:
    # Line 3488
    la	$a2,__glle_ClearAccum
    ld	$a0,32($sp)
    # Line 3482
    li	$v1,127
    sh	$v1,12($v0)
    # Line 3484
    ldc1	$f0,0($sp)
    # Line 3485
    ldc1	$f1,8($sp)
    # Line 3487
    ldc1	$f3,24($sp)
    # Line 3486
    ldc1	$f2,16($sp)
    # Line 3487
    swc1	$f3,28($v0)
    # Line 3488
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3486
    swc1	$f2,24($v0)
    # Line 3485
    swc1	$f1,20($v0)
    # Line 3488
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3484
    swc1	$f0,16($v0)
    b	.L0da41cf4
    ld	$ra,40($sp)
.end __gllc_ClearAccum

# Function: __gllc_ClearIndex
# Declared: Line 3492 (Source lines: 3493-3504)
# Address: 0x0da41d50 - 0x0da41dc0 (Size: 112 bytes, Frame: 32)
.globl __gllc_ClearIndex
.ent __gllc_ClearIndex
__gllc_ClearIndex:
    # Line 3493
    lui	$at,0x5
    # Line 3496
    lw	$a0,4112($zero)
    # Line 3493
    addiu	$sp,$sp,-32
    addiu	$at,$at,-3448
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3498
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3496
    sd	$a0,8($sp)
    # Line 3493
    sd	$ra,16($sp)
    # Line 3498
    li	$a1,4
    jal	__glDlistAllocOp2
    # Line 3493
    sdc1	$f12,0($sp)
    # Line 3498
    bnez	$v0,.L0da41d98
    # Line 3503
    la	$a2,__glle_ClearIndex
    ld	$ra,16($sp)
.L0da41d8c:
    # Line 3504
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41d98:
    # Line 3503
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3502
    ldc1	$f0,0($sp)
    # Line 3500
    li	$v1,128
    sh	$v1,12($v0)
    # Line 3503
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3502
    swc1	$f0,16($v0)
    b	.L0da41d8c
    ld	$ra,16($sp)
.end __gllc_ClearIndex

# Function: __gllc_ClearColor
# Declared: Line 3507 (Source lines: 3508-3522)
# Address: 0x0da41dc0 - 0x0da41e54 (Size: 148 bytes, Frame: 192)
.globl __gllc_ClearColor
.ent __gllc_ClearColor
__gllc_ClearColor:
    # Line 3511
    lw	$a0,4112($zero)
    # Line 3508
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 3511
    sd	$a0,32($sp)
    # Line 3508
    addiu	$at,$at,-3560
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 3513
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3508
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 3513
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 3508
    sdc1	$f12,0($sp)
    # Line 3513
    bnez	$v0,.L0da41e10
    ld	$ra,40($sp)
.L0da41e04:
    # Line 3522
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da41e10:
    # Line 3521
    la	$a2,__glle_ClearColor
    ld	$a0,32($sp)
    # Line 3515
    li	$v1,129
    sh	$v1,12($v0)
    # Line 3517
    ldc1	$f0,0($sp)
    # Line 3518
    ldc1	$f1,8($sp)
    # Line 3520
    ldc1	$f3,24($sp)
    # Line 3519
    ldc1	$f2,16($sp)
    # Line 3520
    swc1	$f3,28($v0)
    # Line 3521
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3519
    swc1	$f2,24($v0)
    # Line 3518
    swc1	$f1,20($v0)
    # Line 3521
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3517
    swc1	$f0,16($v0)
    b	.L0da41e04
    ld	$ra,40($sp)
.end __gllc_ClearColor

# Function: __gllc_ClearStencil
# Declared: Line 3525 (Source lines: 3526-3537)
# Address: 0x0da41e60 - 0x0da41ed4 (Size: 116 bytes, Frame: 32)
.globl __gllc_ClearStencil
.ent __gllc_ClearStencil
__gllc_ClearStencil:
    # Line 3526
    lui	$v0,0x5
    # Line 3529
    lw	$at,4112($zero)
    # Line 3526
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-3720
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3531
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3529
    sd	$at,8($sp)
    # Line 3531
    li	$a1,4
    # Line 3526
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3531
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da41eac
    # Line 3536
    la	$a2,__glle_ClearStencil
    ld	$ra,16($sp)
.L0da41ea0:
    # Line 3537
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41eac:
    # Line 3536
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3533
    li	$v1,130
    sh	$v1,12($v0)
    # Line 3535
    ld	$a3,0($sp)
    # Line 3536
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3535
    sw	$a3,16($v0)
    b	.L0da41ea0
    ld	$ra,16($sp)
.end __gllc_ClearStencil

# Function: __gllc_ClearDepth
# Declared: Line 3540 (Source lines: 3541-3553)
# Address: 0x0da41ee0 - 0x0da41f58 (Size: 120 bytes, Frame: 32)
.globl __gllc_ClearDepth
.ent __gllc_ClearDepth
__gllc_ClearDepth:
    # Line 3541
    lui	$at,0x5
    # Line 3544
    lw	$a0,4112($zero)
    # Line 3541
    addiu	$sp,$sp,-32
    addiu	$at,$at,-3848
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3546
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3544
    sd	$a0,8($sp)
    # Line 3541
    sd	$ra,16($sp)
    # Line 3546
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 3541
    sdc1	$f12,0($sp)
    # Line 3546
    bnez	$v0,.L0da41f24
    ld	$ra,16($sp)
.L0da41f18:
    # Line 3553
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41f24:
    # Line 3552
    la	$a2,__glle_ClearDepth
    ld	$a0,8($sp)
    # Line 3549
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3552
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3551
    ldc1	$f0,0($sp)
    # Line 3548
    li	$v1,131
    sh	$v1,12($v0)
    # Line 3552
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3551
    sdc1	$f0,16($v0)
    b	.L0da41f18
    ld	$ra,16($sp)
.end __gllc_ClearDepth

# Function: __gllc_StencilMask
# Declared: Line 3556 (Source lines: 3557-3568)
# Address: 0x0da41f60 - 0x0da41fd4 (Size: 116 bytes, Frame: 32)
.globl __gllc_StencilMask
.ent __gllc_StencilMask
__gllc_StencilMask:
    # Line 3557
    lui	$v0,0x5
    # Line 3560
    lw	$at,4112($zero)
    # Line 3557
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-3976
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3562
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3560
    sd	$at,8($sp)
    # Line 3562
    li	$a1,4
    # Line 3557
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3562
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da41fac
    # Line 3567
    la	$a2,__glle_StencilMask
    ld	$ra,16($sp)
.L0da41fa0:
    # Line 3568
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da41fac:
    # Line 3567
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3564
    li	$v1,132
    sh	$v1,12($v0)
    # Line 3566
    ld	$a3,0($sp)
    # Line 3567
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3566
    sw	$a3,16($v0)
    b	.L0da41fa0
    ld	$ra,16($sp)
.end __gllc_StencilMask

# Function: __gllc_ColorMask
# Declared: Line 3571 (Source lines: 3572-3586)
# Address: 0x0da41fe0 - 0x0da42078 (Size: 152 bytes, Frame: 192)
.globl __gllc_ColorMask
.ent __gllc_ColorMask
__gllc_ColorMask:
    # Line 3572
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 3575
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 3572
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,-4104
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 3577
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3572
    sd	$a1,8($sp)
    # Line 3577
    li	$a1,4
    # Line 3572
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 3577
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42034
    ld	$ra,40($sp)
.L0da42028:
    # Line 3586
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da42034:
    # Line 3585
    la	$a2,__glle_ColorMask
    ld	$a0,16($sp)
    # Line 3579
    li	$v1,133
    sh	$v1,12($v0)
    # Line 3581
    ld	$a3,0($sp)
    # Line 3582
    ld	$a4,8($sp)
    # Line 3583
    ld	$a5,24($sp)
    # Line 3584
    ld	$a6,32($sp)
    sb	$a6,19($v0)
    # Line 3585
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3583
    sb	$a5,18($v0)
    # Line 3582
    sb	$a4,17($v0)
    # Line 3585
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3581
    sb	$a3,16($v0)
    b	.L0da42028
    ld	$ra,40($sp)
.end __gllc_ColorMask

# Function: __gllc_DepthMask
# Declared: Line 3589 (Source lines: 3590-3601)
# Address: 0x0da42080 - 0x0da420f4 (Size: 116 bytes, Frame: 32)
.globl __gllc_DepthMask
.ent __gllc_DepthMask
__gllc_DepthMask:
    # Line 3590
    lui	$v0,0x5
    # Line 3593
    lw	$at,4112($zero)
    # Line 3590
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-4264
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3595
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3593
    sd	$at,8($sp)
    # Line 3595
    li	$a1,4
    # Line 3590
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3595
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da420cc
    # Line 3600
    la	$a2,__glle_DepthMask
    ld	$ra,16($sp)
.L0da420c0:
    # Line 3601
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da420cc:
    # Line 3600
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3597
    li	$v1,134
    sh	$v1,12($v0)
    # Line 3599
    ld	$a3,0($sp)
    # Line 3600
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3599
    sb	$a3,16($v0)
    b	.L0da420c0
    ld	$ra,16($sp)
.end __gllc_DepthMask

# Function: __gllc_IndexMask
# Declared: Line 3604 (Source lines: 3605-3616)
# Address: 0x0da42100 - 0x0da42174 (Size: 116 bytes, Frame: 32)
.globl __gllc_IndexMask
.ent __gllc_IndexMask
__gllc_IndexMask:
    # Line 3605
    lui	$v0,0x5
    # Line 3608
    lw	$at,4112($zero)
    # Line 3605
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-4392
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3610
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3608
    sd	$at,8($sp)
    # Line 3610
    li	$a1,4
    # Line 3605
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3610
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42148
    ld	$ra,16($sp)
.L0da4213c:
    # Line 3616
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da42148:
    # Line 3615
    la	$a2,__glle_IndexMask
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3612
    li	$v1,135
    sh	$v1,12($v0)
    # Line 3614
    ld	$a3,0($sp)
    # Line 3615
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3614
    sw	$a3,16($v0)
    b	.L0da4213c
    ld	$ra,16($sp)
.end __gllc_IndexMask

# Function: __gllc_Accum
# Declared: Line 3619 (Source lines: 3620-3632)
# Address: 0x0da42180 - 0x0da42200 (Size: 128 bytes, Frame: 48)
.globl __gllc_Accum
.ent __gllc_Accum
__gllc_Accum:
    # Line 3623
    lw	$at,4112($zero)
    # Line 3620
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 3623
    sd	$at,16($sp)
    # Line 3620
    addiu	$v0,$v0,-4520
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 3625
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3620
    sdc1	$f13,0($sp)
    # Line 3625
    li	$a1,8
    # Line 3620
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 3625
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da421d0
    # Line 3631
    la	$a2,__glle_Accum
    ld	$ra,24($sp)
.L0da421c4:
    # Line 3632
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da421d0:
    # Line 3631
    ld	$a0,16($sp)
    # Line 3627
    li	$v1,136
    sh	$v1,12($v0)
    # Line 3629
    ld	$a3,8($sp)
    # Line 3631
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3630
    ldc1	$f0,0($sp)
    # Line 3629
    sw	$a3,16($v0)
    # Line 3631
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3630
    swc1	$f0,20($v0)
    b	.L0da421c4
    ld	$ra,24($sp)
.end __gllc_Accum

# Function: __gllc_PopAttrib
# Declared: Line 3639 (Source lines: 3640-3648)
# Address: 0x0da42200 - 0x0da42264 (Size: 100 bytes, Frame: 32)
.globl __gllc_PopAttrib
.ent __gllc_PopAttrib
__gllc_PopAttrib:
    # Line 3640
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,-4648
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 3644
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3642
    lw	$a0,4112($zero)
    # Line 3640
    sd	$ra,8($sp)
    # Line 3644
    move	$a1,$zero
    jal	__glDlistAllocOp2
    # Line 3642
    sd	$a0,0($sp)
    # Line 3644
    bnez	$v0,.L0da42240
    ld	$ra,8($sp)
.L0da42234:
    # Line 3648
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da42240:
    # Line 3647
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    la	$a2,__glle_PopAttrib
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 3646
    li	$v1,139
    # Line 3647
    jal	__glDlistAppendOp
    # Line 3646
    sh	$v1,12($v0)
    b	.L0da42234
    ld	$ra,8($sp)
.end __gllc_PopAttrib

# Function: __gllc_PushAttrib
# Declared: Line 3651 (Source lines: 3652-3663)
# Address: 0x0da42270 - 0x0da422e4 (Size: 116 bytes, Frame: 32)
.globl __gllc_PushAttrib
.ent __gllc_PushAttrib
__gllc_PushAttrib:
    # Line 3652
    lui	$v0,0x5
    # Line 3655
    lw	$at,4112($zero)
    # Line 3652
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-4760
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3657
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3655
    sd	$at,8($sp)
    # Line 3657
    li	$a1,4
    # Line 3652
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3657
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da422bc
    # Line 3662
    la	$a2,__glle_PushAttrib
    ld	$ra,16($sp)
.L0da422b0:
    # Line 3663
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da422bc:
    # Line 3662
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3659
    li	$v1,140
    sh	$v1,12($v0)
    # Line 3661
    ld	$a3,0($sp)
    # Line 3662
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3661
    sw	$a3,16($v0)
    b	.L0da422b0
    ld	$ra,16($sp)
.end __gllc_PushAttrib

# Function: __gllc_MapGrid1d
# Declared: Line 3670 (Source lines: 3671-3685)
# Address: 0x0da422f0 - 0x0da42384 (Size: 148 bytes, Frame: 48)
.globl __gllc_MapGrid1d
.ent __gllc_MapGrid1d
__gllc_MapGrid1d:
    # Line 3674
    lw	$at,4112($zero)
    # Line 3671
    addiu	$sp,$sp,-48
    # Line 3674
    sd	$at,24($sp)
    # Line 3671
    lui	$v0,0x5
    sdc1	$f14,8($sp)
    addiu	$v0,$v0,-4888
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 3676
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3671
    sdc1	$f13,0($sp)
    # Line 3676
    li	$a1,24
    # Line 3671
    sd	$a0,16($sp)
    sd	$ra,32($sp)
    # Line 3676
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42340
    ld	$ra,32($sp)
.L0da42334:
    # Line 3685
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da42340:
    # Line 3684
    la	$a2,__glle_MapGrid1d
    ld	$a0,24($sp)
    # Line 3679
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3678
    li	$v1,145
    sh	$v1,12($v0)
    # Line 3681
    ld	$a4,16($sp)
    sw	$a4,32($v0)
    # Line 3683
    ldc1	$f1,8($sp)
    # Line 3684
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3682
    ldc1	$f0,0($sp)
    # Line 3683
    sdc1	$f1,24($v0)
    # Line 3684
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3682
    sdc1	$f0,16($v0)
    b	.L0da42334
    ld	$ra,32($sp)
.end __gllc_MapGrid1d

# Function: __gllc_MapGrid1f
# Declared: Line 3688 (Source lines: 3689-3702)
# Address: 0x0da42390 - 0x0da4241c (Size: 140 bytes, Frame: 48)
.globl __gllc_MapGrid1f
.ent __gllc_MapGrid1f
__gllc_MapGrid1f:
    # Line 3692
    lw	$at,4112($zero)
    # Line 3689
    addiu	$sp,$sp,-48
    # Line 3692
    sd	$at,24($sp)
    # Line 3689
    lui	$v0,0x5
    sdc1	$f14,8($sp)
    addiu	$v0,$v0,-5048
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 3694
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3689
    sdc1	$f13,0($sp)
    # Line 3694
    li	$a1,12
    # Line 3689
    sd	$a0,16($sp)
    sd	$ra,32($sp)
    # Line 3694
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da423e4
    # Line 3701
    la	$a2,__glle_MapGrid1f
    ld	$ra,32($sp)
.L0da423d8:
    # Line 3702
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da423e4:
    # Line 3701
    ld	$a0,24($sp)
    # Line 3696
    li	$v1,146
    sh	$v1,12($v0)
    # Line 3698
    ld	$a3,16($sp)
    sw	$a3,16($v0)
    # Line 3700
    ldc1	$f1,8($sp)
    # Line 3701
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3699
    ldc1	$f0,0($sp)
    # Line 3700
    swc1	$f1,24($v0)
    # Line 3701
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3699
    swc1	$f0,20($v0)
    b	.L0da423d8
    ld	$ra,32($sp)
.end __gllc_MapGrid1f

# Function: __gllc_MapGrid2d
# Declared: Line 3705 (Source lines: 3706-3723)
# Address: 0x0da42420 - 0x0da424d8 (Size: 184 bytes, Frame: 208)
.globl __gllc_MapGrid2d
.ent __gllc_MapGrid2d
__gllc_MapGrid2d:
    # Line 3706
    addiu	$sp,$sp,-80
    sdc1	$f17,24($sp)
    sdc1	$f16,16($sp)
    # Line 3709
    lw	$at,4112($zero)
    sd	$at,48($sp)
    # Line 3706
    sd	$a3,40($sp)
    lui	$v0,0x5
    sdc1	$f14,8($sp)
    addiu	$v0,$v0,-5192
    sd	$gp,64($sp)
    addu	$gp,$t9,$v0
    # Line 3711
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3706
    sdc1	$f13,0($sp)
    # Line 3711
    li	$a1,40
    # Line 3706
    sd	$a0,32($sp)
    sd	$ra,56($sp)
    # Line 3711
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4247c
    ld	$ra,56($sp)
.L0da42470:
    # Line 3723
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da4247c:
    # Line 3722
    la	$a2,__glle_MapGrid2d
    ld	$a0,48($sp)
    # Line 3714
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3713
    li	$v1,147
    sh	$v1,12($v0)
    # Line 3716
    ld	$a4,32($sp)
    # Line 3719
    ld	$a5,40($sp)
    sw	$a5,52($v0)
    # Line 3716
    sw	$a4,48($v0)
    # Line 3717
    ldc1	$f0,0($sp)
    # Line 3718
    ldc1	$f1,8($sp)
    # Line 3721
    ldc1	$f3,24($sp)
    # Line 3720
    ldc1	$f2,16($sp)
    # Line 3721
    sdc1	$f3,40($v0)
    # Line 3722
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3720
    sdc1	$f2,32($v0)
    # Line 3718
    sdc1	$f1,24($v0)
    # Line 3722
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3717
    sdc1	$f0,16($v0)
    b	.L0da42470
    ld	$ra,56($sp)
.end __gllc_MapGrid2d

# Function: __gllc_MapGrid2f
# Declared: Line 3726 (Source lines: 3727-3743)
# Address: 0x0da424e0 - 0x0da42590 (Size: 176 bytes, Frame: 208)
.globl __gllc_MapGrid2f
.ent __gllc_MapGrid2f
__gllc_MapGrid2f:
    # Line 3727
    addiu	$sp,$sp,-80
    sdc1	$f17,24($sp)
    sdc1	$f16,16($sp)
    # Line 3730
    lw	$at,4112($zero)
    sd	$at,48($sp)
    # Line 3727
    sd	$a3,40($sp)
    lui	$v0,0x5
    sdc1	$f14,8($sp)
    addiu	$v0,$v0,-5384
    sd	$gp,64($sp)
    addu	$gp,$t9,$v0
    # Line 3732
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3727
    sdc1	$f13,0($sp)
    # Line 3732
    li	$a1,24
    # Line 3727
    sd	$a0,32($sp)
    sd	$ra,56($sp)
    # Line 3732
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42540
    # Line 3742
    la	$a2,__glle_MapGrid2f
    ld	$ra,56($sp)
.L0da42534:
    # Line 3743
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da42540:
    # Line 3742
    ld	$a0,48($sp)
    # Line 3734
    li	$v1,148
    sh	$v1,12($v0)
    # Line 3736
    ld	$a3,32($sp)
    # Line 3739
    ld	$a4,40($sp)
    sw	$a4,28($v0)
    # Line 3736
    sw	$a3,16($v0)
    # Line 3737
    ldc1	$f0,0($sp)
    # Line 3738
    ldc1	$f1,8($sp)
    # Line 3741
    ldc1	$f3,24($sp)
    # Line 3740
    ldc1	$f2,16($sp)
    # Line 3741
    swc1	$f3,36($v0)
    # Line 3742
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3740
    swc1	$f2,32($v0)
    # Line 3738
    swc1	$f1,24($v0)
    # Line 3742
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3737
    swc1	$f0,20($v0)
    b	.L0da42534
    ld	$ra,56($sp)
.end __gllc_MapGrid2f

# Function: __gllc_EvalCoord1d
# Declared: Line 3746 (Source lines: 3747-3759)
# Address: 0x0da42590 - 0x0da42608 (Size: 120 bytes, Frame: 32)
.globl __gllc_EvalCoord1d
.ent __gllc_EvalCoord1d
__gllc_EvalCoord1d:
    # Line 3747
    lui	$at,0x5
    # Line 3750
    lw	$a0,4112($zero)
    # Line 3747
    addiu	$sp,$sp,-32
    addiu	$at,$at,-5560
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3752
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3750
    sd	$a0,8($sp)
    # Line 3747
    sd	$ra,16($sp)
    # Line 3752
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 3747
    sdc1	$f12,0($sp)
    # Line 3752
    bnez	$v0,.L0da425d4
    ld	$ra,16($sp)
.L0da425c8:
    # Line 3759
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da425d4:
    # Line 3758
    la	$a2,__glle_EvalCoord1dv
    ld	$a0,8($sp)
    # Line 3755
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3758
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3757
    ldc1	$f0,0($sp)
    # Line 3754
    li	$v1,149
    sh	$v1,12($v0)
    # Line 3758
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3757
    sdc1	$f0,16($v0)
    b	.L0da425c8
    ld	$ra,16($sp)
.end __gllc_EvalCoord1d

# Function: __gllc_EvalCoord1dv
# Declared: Line 3762 (Source lines: 3763-3775)
# Address: 0x0da42610 - 0x0da42690 (Size: 128 bytes, Frame: 32)
.globl __gllc_EvalCoord1dv
.ent __gllc_EvalCoord1dv
__gllc_EvalCoord1dv:
    # Line 3763
    lui	$v0,0x5
    # Line 3766
    lw	$at,4112($zero)
    # Line 3763
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-5688
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3768
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3766
    sd	$at,8($sp)
    # Line 3768
    li	$a1,8
    # Line 3763
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3768
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4265c
    # Line 3774
    la	$a2,__glle_EvalCoord1dv
    ld	$ra,16($sp)
.L0da42650:
    # Line 3775
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4265c:
    # Line 3771
    li	$a0,1
    sb	$a0,14($v0)
    # Line 3770
    li	$a1,149
    sh	$a1,12($v0)
    # Line 3773
    ld	$v1,0($sp)
    # Line 3774
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3773
    ldc1	$f0,0($v1)
    # Line 3774
    ld	$a0,8($sp)
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3773
    sdc1	$f0,16($v0)
    b	.L0da42650
    ld	$ra,16($sp)
.end __gllc_EvalCoord1dv

# Function: __gllc_EvalCoord1f
# Declared: Line 3778 (Source lines: 3779-3790)
# Address: 0x0da42690 - 0x0da42700 (Size: 112 bytes, Frame: 32)
.globl __gllc_EvalCoord1f
.ent __gllc_EvalCoord1f
__gllc_EvalCoord1f:
    # Line 3779
    lui	$at,0x5
    # Line 3782
    lw	$a0,4112($zero)
    # Line 3779
    addiu	$sp,$sp,-32
    addiu	$at,$at,-5816
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 3784
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3782
    sd	$a0,8($sp)
    # Line 3779
    sd	$ra,16($sp)
    # Line 3784
    li	$a1,4
    jal	__glDlistAllocOp2
    # Line 3779
    sdc1	$f12,0($sp)
    # Line 3784
    bnez	$v0,.L0da426d4
    ld	$ra,16($sp)
.L0da426c8:
    # Line 3790
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da426d4:
    # Line 3789
    la	$a2,__glle_EvalCoord1fv
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3788
    ldc1	$f0,0($sp)
    # Line 3786
    li	$v1,150
    sh	$v1,12($v0)
    # Line 3789
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3788
    swc1	$f0,16($v0)
    b	.L0da426c8
    ld	$ra,16($sp)
.end __gllc_EvalCoord1f

# Function: __gllc_EvalCoord1fv
# Declared: Line 3793 (Source lines: 3794-3805)
# Address: 0x0da42700 - 0x0da42778 (Size: 120 bytes, Frame: 32)
.globl __gllc_EvalCoord1fv
.ent __gllc_EvalCoord1fv
__gllc_EvalCoord1fv:
    # Line 3794
    lui	$v0,0x5
    # Line 3797
    lw	$at,4112($zero)
    # Line 3794
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-5928
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3799
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3797
    sd	$at,8($sp)
    # Line 3799
    li	$a1,4
    # Line 3794
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3799
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4274c
    # Line 3804
    la	$a2,__glle_EvalCoord1fv
    ld	$ra,16($sp)
.L0da42740:
    # Line 3805
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4274c:
    # Line 3801
    li	$a0,150
    sh	$a0,12($v0)
    # Line 3803
    ld	$v1,0($sp)
    # Line 3804
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3803
    lwc1	$f0,0($v1)
    # Line 3804
    ld	$a0,8($sp)
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3803
    swc1	$f0,16($v0)
    b	.L0da42740
    ld	$ra,16($sp)
.end __gllc_EvalCoord1fv

# Function: __gllc_EvalCoord2d
# Declared: Line 3808 (Source lines: 3809-3822)
# Address: 0x0da42780 - 0x0da42804 (Size: 132 bytes, Frame: 48)
.globl __gllc_EvalCoord2d
.ent __gllc_EvalCoord2d
__gllc_EvalCoord2d:
    # Line 3812
    lw	$a0,4112($zero)
    # Line 3809
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 3812
    sd	$a0,16($sp)
    # Line 3809
    addiu	$at,$at,-6056
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3814
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3809
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 3814
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 3809
    sdc1	$f12,0($sp)
    # Line 3814
    bnez	$v0,.L0da427c8
    ld	$ra,24($sp)
.L0da427bc:
    # Line 3822
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da427c8:
    # Line 3821
    la	$a2,__glle_EvalCoord2dv
    ld	$a0,16($sp)
    # Line 3817
    li	$a3,1
    sb	$a3,14($v0)
    # Line 3816
    li	$v1,151
    sh	$v1,12($v0)
    # Line 3820
    ldc1	$f1,8($sp)
    # Line 3821
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3819
    ldc1	$f0,0($sp)
    # Line 3820
    sdc1	$f1,24($v0)
    # Line 3821
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3819
    sdc1	$f0,16($v0)
    b	.L0da427bc
    ld	$ra,24($sp)
.end __gllc_EvalCoord2d

# Function: __gllc_EvalCoord2dv
# Declared: Line 3825 (Source lines: 3826-3839)
# Address: 0x0da42810 - 0x0da42898 (Size: 136 bytes, Frame: 32)
.globl __gllc_EvalCoord2dv
.ent __gllc_EvalCoord2dv
__gllc_EvalCoord2dv:
    # Line 3826
    lui	$v0,0x5
    # Line 3829
    lw	$at,4112($zero)
    # Line 3826
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-6200
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3831
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3829
    sd	$at,8($sp)
    # Line 3831
    li	$a1,16
    # Line 3826
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3831
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4285c
    # Line 3838
    la	$a2,__glle_EvalCoord2dv
    ld	$ra,16($sp)
.L0da42850:
    # Line 3839
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4285c:
    # Line 3834
    li	$a0,1
    sb	$a0,14($v0)
    # Line 3836
    ld	$v1,0($sp)
    # Line 3833
    li	$a1,151
    sh	$a1,12($v0)
    # Line 3836
    ldc1	$f1,0($v1)
    # Line 3838
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3836
    sdc1	$f1,16($v0)
    # Line 3837
    ldc1	$f0,8($v1)
    # Line 3838
    ld	$a0,8($sp)
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3837
    sdc1	$f0,24($v0)
    b	.L0da42850
    ld	$ra,16($sp)
.end __gllc_EvalCoord2dv

# Function: __gllc_EvalCoord2f
# Declared: Line 3842 (Source lines: 3843-3855)
# Address: 0x0da428a0 - 0x0da4291c (Size: 124 bytes, Frame: 48)
.globl __gllc_EvalCoord2f
.ent __gllc_EvalCoord2f
__gllc_EvalCoord2f:
    # Line 3846
    lw	$a0,4112($zero)
    # Line 3843
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 3846
    sd	$a0,16($sp)
    # Line 3843
    addiu	$at,$at,-6344
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 3848
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3843
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 3848
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 3843
    sdc1	$f12,0($sp)
    # Line 3848
    bnez	$v0,.L0da428e8
    ld	$ra,24($sp)
.L0da428dc:
    # Line 3855
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da428e8:
    # Line 3854
    la	$a2,__glle_EvalCoord2fv
    ld	$a0,16($sp)
    # Line 3850
    li	$v1,152
    sh	$v1,12($v0)
    # Line 3853
    ldc1	$f1,8($sp)
    # Line 3854
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3852
    ldc1	$f0,0($sp)
    # Line 3853
    swc1	$f1,20($v0)
    # Line 3854
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3852
    swc1	$f0,16($v0)
    b	.L0da428dc
    ld	$ra,24($sp)
.end __gllc_EvalCoord2f

# Function: __gllc_EvalCoord2fv
# Declared: Line 3858 (Source lines: 3859-3871)
# Address: 0x0da42920 - 0x0da429a0 (Size: 128 bytes, Frame: 32)
.globl __gllc_EvalCoord2fv
.ent __gllc_EvalCoord2fv
__gllc_EvalCoord2fv:
    # Line 3859
    lui	$v0,0x5
    # Line 3862
    lw	$at,4112($zero)
    # Line 3859
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-6472
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3864
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3862
    sd	$at,8($sp)
    # Line 3864
    li	$a1,8
    # Line 3859
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3864
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4296c
    # Line 3870
    la	$a2,__glle_EvalCoord2fv
    ld	$ra,16($sp)
.L0da42960:
    # Line 3871
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4296c:
    # Line 3868
    ld	$v1,0($sp)
    # Line 3866
    li	$a0,152
    sh	$a0,12($v0)
    # Line 3868
    lwc1	$f1,0($v1)
    # Line 3870
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3868
    swc1	$f1,16($v0)
    # Line 3869
    lwc1	$f0,4($v1)
    # Line 3870
    ld	$a0,8($sp)
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3869
    swc1	$f0,20($v0)
    b	.L0da42960
    ld	$ra,16($sp)
.end __gllc_EvalCoord2fv

# Function: __gllc_EvalMesh1
# Declared: Line 3874 (Source lines: 3875-3888)
# Address: 0x0da429a0 - 0x0da42a2c (Size: 140 bytes, Frame: 48)
.globl __gllc_EvalMesh1
.ent __gllc_EvalMesh1
__gllc_EvalMesh1:
    # Line 3878
    lw	$at,4112($zero)
    # Line 3875
    addiu	$sp,$sp,-48
    # Line 3878
    sd	$at,24($sp)
    # Line 3875
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,-6600
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 3880
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3875
    sd	$a1,8($sp)
    # Line 3880
    li	$a1,12
    # Line 3875
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 3880
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da429f0
    ld	$ra,32($sp)
.L0da429e4:
    # Line 3888
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da429f0:
    # Line 3887
    la	$a2,__glle_EvalMesh1
    ld	$a0,24($sp)
    # Line 3882
    li	$v1,153
    sh	$v1,12($v0)
    # Line 3884
    ld	$a3,0($sp)
    # Line 3885
    ld	$a4,8($sp)
    # Line 3886
    ld	$a5,16($sp)
    # Line 3887
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3886
    sw	$a5,24($v0)
    # Line 3885
    sw	$a4,20($v0)
    # Line 3887
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3884
    sw	$a3,16($v0)
    b	.L0da429e4
    ld	$ra,32($sp)
.end __gllc_EvalMesh1

# Function: __gllc_EvalPoint1
# Declared: Line 3891 (Source lines: 3892-3903)
# Address: 0x0da42a30 - 0x0da42aa4 (Size: 116 bytes, Frame: 32)
.globl __gllc_EvalPoint1
.ent __gllc_EvalPoint1
__gllc_EvalPoint1:
    # Line 3892
    lui	$v0,0x5
    # Line 3895
    lw	$at,4112($zero)
    # Line 3892
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-6744
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3897
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3895
    sd	$at,8($sp)
    # Line 3897
    li	$a1,4
    # Line 3892
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3897
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42a7c
    # Line 3902
    la	$a2,__glle_EvalPoint1
    ld	$ra,16($sp)
.L0da42a70:
    # Line 3903
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da42a7c:
    # Line 3902
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3899
    li	$v1,154
    sh	$v1,12($v0)
    # Line 3901
    ld	$a3,0($sp)
    # Line 3902
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3901
    sw	$a3,16($v0)
    b	.L0da42a70
    ld	$ra,16($sp)
.end __gllc_EvalPoint1

# Function: __gllc_EvalMesh2
# Declared: Line 3906 (Source lines: 3907-3922)
# Address: 0x0da42ab0 - 0x0da42b54 (Size: 164 bytes, Frame: 192)
.globl __gllc_EvalMesh2
.ent __gllc_EvalMesh2
__gllc_EvalMesh2:
    # Line 3907
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    # Line 3910
    lw	$at,4112($zero)
    sd	$at,8($sp)
    # Line 3907
    lui	$v0,0x5
    sd	$a2,32($sp)
    addiu	$v0,$v0,-6872
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 3912
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3907
    sd	$a1,16($sp)
    # Line 3912
    li	$a1,20
    # Line 3907
    sd	$a0,0($sp)
    sd	$ra,48($sp)
    # Line 3912
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42b08
    ld	$ra,48($sp)
.L0da42afc:
    # Line 3922
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da42b08:
    # Line 3921
    la	$a2,__glle_EvalMesh2
    ld	$a0,8($sp)
    # Line 3914
    li	$v1,155
    sh	$v1,12($v0)
    # Line 3916
    ld	$a3,0($sp)
    # Line 3917
    ld	$a4,16($sp)
    # Line 3918
    ld	$a5,32($sp)
    # Line 3919
    ld	$a6,40($sp)
    # Line 3920
    ld	$a7,24($sp)
    sw	$a7,32($v0)
    # Line 3919
    sw	$a6,28($v0)
    # Line 3921
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3918
    sw	$a5,24($v0)
    # Line 3917
    sw	$a4,20($v0)
    # Line 3921
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3916
    sw	$a3,16($v0)
    b	.L0da42afc
    ld	$ra,48($sp)
.end __gllc_EvalMesh2

# Function: __gllc_EvalPoint2
# Declared: Line 3925 (Source lines: 3926-3938)
# Address: 0x0da42b60 - 0x0da42be0 (Size: 128 bytes, Frame: 48)
.globl __gllc_EvalPoint2
.ent __gllc_EvalPoint2
__gllc_EvalPoint2:
    # Line 3929
    lw	$at,4112($zero)
    # Line 3926
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 3929
    sd	$at,16($sp)
    # Line 3926
    addiu	$v0,$v0,-7048
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 3931
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3926
    sd	$a1,8($sp)
    # Line 3931
    li	$a1,8
    # Line 3926
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 3931
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42bb0
    # Line 3937
    la	$a2,__glle_EvalPoint2
    ld	$ra,24($sp)
.L0da42ba4:
    # Line 3938
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da42bb0:
    # Line 3937
    ld	$a0,16($sp)
    # Line 3933
    li	$v1,156
    sh	$v1,12($v0)
    # Line 3935
    ld	$a3,0($sp)
    # Line 3937
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3936
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 3937
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3935
    sw	$a3,16($v0)
    b	.L0da42ba4
    ld	$ra,24($sp)
.end __gllc_EvalPoint2

# Function: __gllc_AlphaFunc
# Declared: Line 3941 (Source lines: 3942-3954)
# Address: 0x0da42be0 - 0x0da42c60 (Size: 128 bytes, Frame: 48)
.globl __gllc_AlphaFunc
.ent __gllc_AlphaFunc
__gllc_AlphaFunc:
    # Line 3945
    lw	$at,4112($zero)
    # Line 3942
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 3945
    sd	$at,16($sp)
    # Line 3942
    addiu	$v0,$v0,-7176
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 3947
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3942
    sdc1	$f13,0($sp)
    # Line 3947
    li	$a1,8
    # Line 3942
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 3947
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42c2c
    ld	$ra,24($sp)
.L0da42c20:
    # Line 3954
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da42c2c:
    # Line 3953
    la	$a2,__glle_AlphaFunc
    ld	$a0,16($sp)
    # Line 3949
    li	$v1,157
    sh	$v1,12($v0)
    # Line 3951
    ld	$a3,8($sp)
    # Line 3953
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3952
    ldc1	$f0,0($sp)
    # Line 3951
    sw	$a3,16($v0)
    # Line 3953
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3952
    swc1	$f0,20($v0)
    b	.L0da42c20
    ld	$ra,24($sp)
.end __gllc_AlphaFunc

# Function: __gllc_BlendFunc
# Declared: Line 3957 (Source lines: 3958-3970)
# Address: 0x0da42c60 - 0x0da42ce0 (Size: 128 bytes, Frame: 48)
.globl __gllc_BlendFunc
.ent __gllc_BlendFunc
__gllc_BlendFunc:
    # Line 3961
    lw	$at,4112($zero)
    # Line 3958
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 3961
    sd	$at,16($sp)
    # Line 3958
    addiu	$v0,$v0,-7304
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 3963
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3958
    sd	$a1,8($sp)
    # Line 3963
    li	$a1,8
    # Line 3958
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 3963
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42cb0
    # Line 3969
    la	$a2,__glle_BlendFunc
    ld	$ra,24($sp)
.L0da42ca4:
    # Line 3970
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da42cb0:
    # Line 3969
    ld	$a0,16($sp)
    # Line 3965
    li	$v1,158
    sh	$v1,12($v0)
    # Line 3967
    ld	$a3,0($sp)
    # Line 3969
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3968
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 3969
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3967
    sw	$a3,16($v0)
    b	.L0da42ca4
    ld	$ra,24($sp)
.end __gllc_BlendFunc

# Function: __gllc_LogicOp
# Declared: Line 3973 (Source lines: 3974-3985)
# Address: 0x0da42ce0 - 0x0da42d54 (Size: 116 bytes, Frame: 32)
.globl __gllc_LogicOp
.ent __gllc_LogicOp
__gllc_LogicOp:
    # Line 3974
    lui	$v0,0x5
    # Line 3977
    lw	$at,4112($zero)
    # Line 3974
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-7432
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 3979
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3977
    sd	$at,8($sp)
    # Line 3979
    li	$a1,4
    # Line 3974
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 3979
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42d28
    ld	$ra,16($sp)
.L0da42d1c:
    # Line 3985
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da42d28:
    # Line 3984
    la	$a2,__glle_LogicOp
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 3981
    li	$v1,159
    sh	$v1,12($v0)
    # Line 3983
    ld	$a3,0($sp)
    # Line 3984
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3983
    sw	$a3,16($v0)
    b	.L0da42d1c
    ld	$ra,16($sp)
.end __gllc_LogicOp

# Function: __gllc_StencilFunc
# Declared: Line 3988 (Source lines: 3989-4002)
# Address: 0x0da42d60 - 0x0da42dec (Size: 140 bytes, Frame: 48)
.globl __gllc_StencilFunc
.ent __gllc_StencilFunc
__gllc_StencilFunc:
    # Line 3992
    lw	$at,4112($zero)
    # Line 3989
    addiu	$sp,$sp,-48
    # Line 3992
    sd	$at,24($sp)
    # Line 3989
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,-7560
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 3994
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 3989
    sd	$a1,8($sp)
    # Line 3994
    li	$a1,12
    # Line 3989
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 3994
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42db4
    # Line 4001
    la	$a2,__glle_StencilFunc
    ld	$ra,32($sp)
.L0da42da8:
    # Line 4002
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da42db4:
    # Line 4001
    ld	$a0,24($sp)
    # Line 3996
    li	$v1,160
    sh	$v1,12($v0)
    # Line 3998
    ld	$a3,0($sp)
    # Line 3999
    ld	$a4,8($sp)
    # Line 4000
    ld	$a5,16($sp)
    # Line 4001
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4000
    sw	$a5,24($v0)
    # Line 3999
    sw	$a4,20($v0)
    # Line 4001
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 3998
    sw	$a3,16($v0)
    b	.L0da42da8
    ld	$ra,32($sp)
.end __gllc_StencilFunc

# Function: __gllc_StencilOp
# Declared: Line 4005 (Source lines: 4006-4019)
# Address: 0x0da42df0 - 0x0da42e7c (Size: 140 bytes, Frame: 48)
.globl __gllc_StencilOp
.ent __gllc_StencilOp
__gllc_StencilOp:
    # Line 4009
    lw	$at,4112($zero)
    # Line 4006
    addiu	$sp,$sp,-48
    # Line 4009
    sd	$at,24($sp)
    # Line 4006
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,-7704
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 4011
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4006
    sd	$a1,8($sp)
    # Line 4011
    li	$a1,12
    # Line 4006
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 4011
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42e40
    ld	$ra,32($sp)
.L0da42e34:
    # Line 4019
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da42e40:
    # Line 4018
    la	$a2,__glle_StencilOp
    ld	$a0,24($sp)
    # Line 4013
    li	$v1,161
    sh	$v1,12($v0)
    # Line 4015
    ld	$a3,0($sp)
    # Line 4016
    ld	$a4,8($sp)
    # Line 4017
    ld	$a5,16($sp)
    # Line 4018
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4017
    sw	$a5,24($v0)
    # Line 4016
    sw	$a4,20($v0)
    # Line 4018
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4015
    sw	$a3,16($v0)
    b	.L0da42e34
    ld	$ra,32($sp)
.end __gllc_StencilOp

# Function: __gllc_DepthFunc
# Declared: Line 4022 (Source lines: 4023-4034)
# Address: 0x0da42e80 - 0x0da42ef4 (Size: 116 bytes, Frame: 32)
.globl __gllc_DepthFunc
.ent __gllc_DepthFunc
__gllc_DepthFunc:
    # Line 4023
    lui	$v0,0x5
    # Line 4026
    lw	$at,4112($zero)
    # Line 4023
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-7848
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 4028
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4026
    sd	$at,8($sp)
    # Line 4028
    li	$a1,4
    # Line 4023
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 4028
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42ecc
    # Line 4033
    la	$a2,__glle_DepthFunc
    ld	$ra,16($sp)
.L0da42ec0:
    # Line 4034
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da42ecc:
    # Line 4033
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4030
    li	$v1,162
    sh	$v1,12($v0)
    # Line 4032
    ld	$a3,0($sp)
    # Line 4033
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4032
    sw	$a3,16($v0)
    b	.L0da42ec0
    ld	$ra,16($sp)
.end __gllc_DepthFunc

# Function: __gllc_PixelZoom
# Declared: Line 4037 (Source lines: 4038-4050)
# Address: 0x0da42f00 - 0x0da42f7c (Size: 124 bytes, Frame: 48)
.globl __gllc_PixelZoom
.ent __gllc_PixelZoom
__gllc_PixelZoom:
    # Line 4041
    lw	$a0,4112($zero)
    # Line 4038
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 4041
    sd	$a0,16($sp)
    # Line 4038
    addiu	$at,$at,-7976
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 4043
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4038
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 4043
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 4038
    sdc1	$f12,0($sp)
    # Line 4043
    bnez	$v0,.L0da42f48
    ld	$ra,24($sp)
.L0da42f3c:
    # Line 4050
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da42f48:
    # Line 4049
    la	$a2,__glle_PixelZoom
    ld	$a0,16($sp)
    # Line 4045
    li	$v1,163
    sh	$v1,12($v0)
    # Line 4048
    ldc1	$f1,8($sp)
    # Line 4049
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4047
    ldc1	$f0,0($sp)
    # Line 4048
    swc1	$f1,20($v0)
    # Line 4049
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4047
    swc1	$f0,16($v0)
    b	.L0da42f3c
    ld	$ra,24($sp)
.end __gllc_PixelZoom

# Function: __gllc_PixelTransferf
# Declared: Line 4053 (Source lines: 4054-4066)
# Address: 0x0da42f80 - 0x0da43000 (Size: 128 bytes, Frame: 48)
.globl __gllc_PixelTransferf
.ent __gllc_PixelTransferf
__gllc_PixelTransferf:
    # Line 4057
    lw	$at,4112($zero)
    # Line 4054
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 4057
    sd	$at,16($sp)
    # Line 4054
    addiu	$v0,$v0,-8104
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 4059
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4054
    sdc1	$f13,0($sp)
    # Line 4059
    li	$a1,8
    # Line 4054
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 4059
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da42fd0
    # Line 4065
    la	$a2,__glle_PixelTransferf
    ld	$ra,24($sp)
.L0da42fc4:
    # Line 4066
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da42fd0:
    # Line 4065
    ld	$a0,16($sp)
    # Line 4061
    li	$v1,164
    sh	$v1,12($v0)
    # Line 4063
    ld	$a3,8($sp)
    # Line 4065
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4064
    ldc1	$f0,0($sp)
    # Line 4063
    sw	$a3,16($v0)
    # Line 4065
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4064
    swc1	$f0,20($v0)
    b	.L0da42fc4
    ld	$ra,24($sp)
.end __gllc_PixelTransferf

# Function: __gllc_PixelTransferi
# Declared: Line 4069 (Source lines: 4070-4082)
# Address: 0x0da43000 - 0x0da43080 (Size: 128 bytes, Frame: 48)
.globl __gllc_PixelTransferi
.ent __gllc_PixelTransferi
__gllc_PixelTransferi:
    # Line 4073
    lw	$at,4112($zero)
    # Line 4070
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 4073
    sd	$at,16($sp)
    # Line 4070
    addiu	$v0,$v0,-8232
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 4075
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4070
    sd	$a1,8($sp)
    # Line 4075
    li	$a1,8
    # Line 4070
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 4075
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4304c
    ld	$ra,24($sp)
.L0da43040:
    # Line 4082
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4304c:
    # Line 4081
    la	$a2,__glle_PixelTransferi
    ld	$a0,16($sp)
    # Line 4077
    li	$v1,165
    sh	$v1,12($v0)
    # Line 4079
    ld	$a3,0($sp)
    # Line 4081
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4080
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 4081
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4079
    sw	$a3,16($v0)
    b	.L0da43040
    ld	$ra,24($sp)
.end __gllc_PixelTransferi

# Function: __gllc_PixelMapfv
# Declared: Line 4087 (Source lines: 4088-4110)
# Address: 0x0da43080 - 0x0da43148 (Size: 200 bytes, Frame: 192)
.globl __gllc_PixelMapfv
.ent __gllc_PixelMapfv
__gllc_PixelMapfv:
    # Line 4088
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    sd	$s0,40($sp)
    # Line 4093
    lw	$s0,4112($zero)
    # Line 4088
    lui	$at,0x5
    sd	$s1,32($sp)
    # Line 4093
    sll	$s1,$a1,0x2
    sd	$ra,56($sp)
    # Line 4088
    addiu	$at,$at,-8360
    sd	$gp,48($sp)
    # Line 4093
    bltz	$s1,.L0da43134
    # Line 4088
    addu	$gp,$t9,$at
    # Line 4101
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da430e8
    sd	$v0,24($sp)
    ld	$ra,56($sp)
.L0da430d4:
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 4110
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da430e8:
    # Line 4107
    ld	$a1,16($sp)
    # Line 4105
    ld	$a5,0($sp)
    # Line 4106
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 4107
    # lw $t9, -18508($gp) # &memcpy
    # Line 4106
    sw	$a6,20($a4)
    # Line 4107
    move	$a2,$s1
    # Line 4103
    li	$a3,166
    # Line 4105
    sw	$a5,16($a4)
    # Line 4107
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 4103
    sh	$a3,12($a4)
    # Line 4109
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelMapfv
    b	.L0da430d4
    ld	$ra,56($sp)
.L0da43134:
    # Line 4097
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0da430d4
    ld	$ra,56($sp)
.end __gllc_PixelMapfv

# Function: __gllc_PixelMapuiv
# Declared: Line 4113 (Source lines: 4114-4136)
# Address: 0x0da43150 - 0x0da43218 (Size: 200 bytes, Frame: 192)
.globl __gllc_PixelMapuiv
.ent __gllc_PixelMapuiv
__gllc_PixelMapuiv:
    # Line 4114
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    sd	$s0,40($sp)
    # Line 4119
    lw	$s0,4112($zero)
    # Line 4114
    lui	$at,0x5
    sd	$s1,32($sp)
    # Line 4119
    sll	$s1,$a1,0x2
    sd	$ra,56($sp)
    # Line 4114
    addiu	$at,$at,-8568
    sd	$gp,48($sp)
    # Line 4119
    bltz	$s1,.L0da43204
    # Line 4114
    addu	$gp,$t9,$at
    # Line 4127
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da431b8
    sd	$v0,24($sp)
    ld	$ra,56($sp)
.L0da431a4:
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 4136
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da431b8:
    # Line 4133
    ld	$a1,16($sp)
    # Line 4131
    ld	$a5,0($sp)
    # Line 4132
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 4133
    # lw $t9, -18508($gp) # &memcpy
    # Line 4132
    sw	$a6,20($a4)
    # Line 4133
    move	$a2,$s1
    # Line 4129
    li	$a3,167
    # Line 4131
    sw	$a5,16($a4)
    # Line 4133
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 4129
    sh	$a3,12($a4)
    # Line 4135
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelMapuiv
    b	.L0da431a4
    ld	$ra,56($sp)
.L0da43204:
    # Line 4123
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0da431a4
    ld	$ra,56($sp)
.end __gllc_PixelMapuiv

# Function: __gllc_PixelMapusv
# Declared: Line 4139 (Source lines: 4140-4162)
# Address: 0x0da43220 - 0x0da432f4 (Size: 212 bytes, Frame: 192)
.globl __gllc_PixelMapusv
.ent __gllc_PixelMapusv
__gllc_PixelMapusv:
    # Line 4140
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    sd	$s1,32($sp)
    # Line 4145
    addu	$s1,$a1,$a1
    # Line 4140
    sd	$s0,40($sp)
    # Line 4145
    li	$t8,-4
    addiu	$s1,$s1,3
    lw	$s0,4112($zero)
    # Line 4140
    lui	$at,0x5
    # Line 4145
    and	$s1,$s1,$t8
    sd	$ra,56($sp)
    # Line 4140
    addiu	$at,$at,-8776
    sd	$gp,48($sp)
    # Line 4145
    bltz	$s1,.L0da432e0
    # Line 4140
    addu	$gp,$t9,$at
    # Line 4153
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da43294
    sd	$v0,24($sp)
    ld	$ra,56($sp)
.L0da43280:
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 4162
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da43294:
    # Line 4159
    ld	$a1,16($sp)
    # Line 4158
    ld	$a0,8($sp)
    # Line 4157
    ld	$v1,0($sp)
    # Line 4158
    ld	$v0,24($sp)
    # Line 4159
    # lw $t9, -18508($gp) # &memcpy
    # Line 4157
    sw	$v1,16($v0)
    # Line 4159
    move	$a2,$s1
    # Line 4155
    li	$at,168
    # Line 4158
    sw	$a0,20($v0)
    # Line 4159
    addiu	$a0,$v0,24
    jal	memcpy
    # Line 4155
    sh	$at,12($v0)
    # Line 4161
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelMapusv
    b	.L0da43280
    ld	$ra,56($sp)
.L0da432e0:
    # Line 4149
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0da43280
    ld	$ra,56($sp)
.end __gllc_PixelMapusv

# Function: __gllc_ReadBuffer
# Declared: Line 4165 (Source lines: 4166-4177)
# Address: 0x0da43300 - 0x0da43374 (Size: 116 bytes, Frame: 32)
.globl __gllc_ReadBuffer
.ent __gllc_ReadBuffer
__gllc_ReadBuffer:
    # Line 4166
    lui	$v0,0x5
    # Line 4169
    lw	$at,4112($zero)
    # Line 4166
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-9000
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 4171
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4169
    sd	$at,8($sp)
    # Line 4171
    li	$a1,4
    # Line 4166
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 4171
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4334c
    # Line 4176
    la	$a2,__glle_ReadBuffer
    ld	$ra,16($sp)
.L0da43340:
    # Line 4177
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4334c:
    # Line 4176
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4173
    li	$v1,169
    sh	$v1,12($v0)
    # Line 4175
    ld	$a3,0($sp)
    # Line 4176
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4175
    sw	$a3,16($v0)
    b	.L0da43340
    ld	$ra,16($sp)
.end __gllc_ReadBuffer

# Function: __gllc_CopyPixels
# Declared: Line 4180 (Source lines: 4181-4196)
# Address: 0x0da43380 - 0x0da43424 (Size: 164 bytes, Frame: 192)
.globl __gllc_CopyPixels
.ent __gllc_CopyPixels
__gllc_CopyPixels:
    # Line 4181
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    # Line 4184
    lw	$at,4112($zero)
    sd	$at,8($sp)
    # Line 4181
    lui	$v0,0x5
    sd	$a2,32($sp)
    addiu	$v0,$v0,-9128
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 4186
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4181
    sd	$a1,16($sp)
    # Line 4186
    li	$a1,20
    # Line 4181
    sd	$a0,0($sp)
    sd	$ra,48($sp)
    # Line 4186
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da433d8
    ld	$ra,48($sp)
.L0da433cc:
    # Line 4196
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da433d8:
    # Line 4195
    la	$a2,__glle_CopyPixels
    ld	$a0,8($sp)
    # Line 4188
    li	$v1,170
    sh	$v1,12($v0)
    # Line 4190
    ld	$a3,0($sp)
    # Line 4191
    ld	$a4,16($sp)
    # Line 4192
    ld	$a5,32($sp)
    # Line 4193
    ld	$a6,40($sp)
    # Line 4194
    ld	$a7,24($sp)
    sw	$a7,32($v0)
    # Line 4193
    sw	$a6,28($v0)
    # Line 4195
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4192
    sw	$a5,24($v0)
    # Line 4191
    sw	$a4,20($v0)
    # Line 4195
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4190
    sw	$a3,16($v0)
    b	.L0da433cc
    ld	$ra,48($sp)
.end __gllc_CopyPixels

# Function: __gllc_DepthRange
# Declared: Line 4231 (Source lines: 4232-4245)
# Address: 0x0da43430 - 0x0da434b4 (Size: 132 bytes, Frame: 48)
.globl __gllc_DepthRange
.ent __gllc_DepthRange
__gllc_DepthRange:
    # Line 4235
    lw	$a0,4112($zero)
    # Line 4232
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 4235
    sd	$a0,16($sp)
    # Line 4232
    addiu	$at,$at,-9304
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 4237
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4232
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 4237
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 4232
    sdc1	$f12,0($sp)
    # Line 4237
    bnez	$v0,.L0da4347c
    # Line 4244
    la	$a2,__glle_DepthRange
    ld	$ra,24($sp)
.L0da43470:
    # Line 4245
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4347c:
    # Line 4244
    ld	$a0,16($sp)
    # Line 4240
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4239
    li	$v1,172
    sh	$v1,12($v0)
    # Line 4243
    ldc1	$f1,8($sp)
    # Line 4244
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4242
    ldc1	$f0,0($sp)
    # Line 4243
    sdc1	$f1,24($v0)
    # Line 4244
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4242
    sdc1	$f0,16($v0)
    b	.L0da43470
    ld	$ra,24($sp)
.end __gllc_DepthRange

# Function: __gllc_Frustum
# Declared: Line 4248 (Source lines: 4249-4266)
# Address: 0x0da434c0 - 0x0da43574 (Size: 180 bytes, Frame: 208)
.globl __gllc_Frustum
.ent __gllc_Frustum
__gllc_Frustum:
    # Line 4252
    lw	$a0,4112($zero)
    # Line 4249
    addiu	$sp,$sp,-80
    sdc1	$f17,40($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,32($sp)
    sdc1	$f14,24($sp)
    lui	$at,0x5
    # Line 4252
    sd	$a0,48($sp)
    # Line 4249
    addiu	$at,$at,-9448
    sd	$gp,64($sp)
    addu	$gp,$t9,$at
    # Line 4254
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4249
    sdc1	$f13,8($sp)
    sd	$ra,56($sp)
    # Line 4254
    li	$a1,48
    jal	__glDlistAllocOp2
    # Line 4249
    sdc1	$f12,0($sp)
    # Line 4254
    bnez	$v0,.L0da43518
    ld	$ra,56($sp)
.L0da4350c:
    # Line 4266
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da43518:
    # Line 4265
    la	$a2,__glle_Frustum
    ld	$a0,48($sp)
    # Line 4257
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4256
    li	$v1,173
    sh	$v1,12($v0)
    # Line 4259
    ldc1	$f0,0($sp)
    # Line 4260
    ldc1	$f1,8($sp)
    # Line 4261
    ldc1	$f2,24($sp)
    # Line 4262
    ldc1	$f3,32($sp)
    # Line 4264
    ldc1	$f5,40($sp)
    # Line 4263
    ldc1	$f4,16($sp)
    # Line 4264
    sdc1	$f5,56($v0)
    # Line 4263
    sdc1	$f4,48($v0)
    # Line 4262
    sdc1	$f3,40($v0)
    # Line 4265
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4261
    sdc1	$f2,32($v0)
    # Line 4260
    sdc1	$f1,24($v0)
    # Line 4265
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4259
    sdc1	$f0,16($v0)
    b	.L0da4350c
    ld	$ra,56($sp)
.end __gllc_Frustum

# Function: __gllc_LoadIdentity
# Declared: Line 4269 (Source lines: 4270-4278)
# Address: 0x0da43580 - 0x0da435e4 (Size: 100 bytes, Frame: 32)
.globl __gllc_LoadIdentity
.ent __gllc_LoadIdentity
__gllc_LoadIdentity:
    # Line 4270
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,-9640
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 4274
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4272
    lw	$a0,4112($zero)
    # Line 4270
    sd	$ra,8($sp)
    # Line 4274
    move	$a1,$zero
    jal	__glDlistAllocOp2
    # Line 4272
    sd	$a0,0($sp)
    # Line 4274
    bnez	$v0,.L0da435c4
    # Line 4277
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,8($sp)
.L0da435b8:
    # Line 4278
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da435c4:
    # Line 4277
    la	$a2,__glle_LoadIdentity
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 4276
    li	$v1,174
    # Line 4277
    jal	__glDlistAppendOp
    # Line 4276
    sh	$v1,12($v0)
    b	.L0da435b8
    ld	$ra,8($sp)
.end __gllc_LoadIdentity

# Function: __gllc_LoadMatrixf
# Declared: Line 4281 (Source lines: 4282-4293)
# Address: 0x0da435f0 - 0x0da43678 (Size: 136 bytes, Frame: 48)
.globl __gllc_LoadMatrixf
.ent __gllc_LoadMatrixf
__gllc_LoadMatrixf:
    # Line 4282
    lui	$v0,0x5
    # Line 4285
    lw	$at,4112($zero)
    # Line 4282
    addiu	$sp,$sp,-48
    addiu	$v0,$v0,-9752
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 4287
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4285
    sd	$at,8($sp)
    # Line 4287
    li	$a1,64
    # Line 4282
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 4287
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4363c
    sd	$v0,16($sp)
    ld	$ra,24($sp)
.L0da43630:
    # Line 4293
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4363c:
    # Line 4291
    # lw $t9, -18508($gp) # &memcpy
    ld	$a4,16($sp)
    li	$a2,64
    ld	$a1,0($sp)
    # Line 4289
    li	$a3,175
    # Line 4291
    addiu	$a0,$a4,16
    jal	memcpy
    # Line 4289
    sh	$a3,12($a4)
    # Line 4292
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_LoadMatrixf
    b	.L0da43630
    ld	$ra,24($sp)
.end __gllc_LoadMatrixf

# Function: __gllc_LoadMatrixd
# Declared: Line 4296 (Source lines: 4297-4309)
# Address: 0x0da43680 - 0x0da43710 (Size: 144 bytes, Frame: 48)
.globl __gllc_LoadMatrixd
.ent __gllc_LoadMatrixd
__gllc_LoadMatrixd:
    # Line 4297
    lui	$v0,0x5
    # Line 4300
    lw	$at,4112($zero)
    # Line 4297
    addiu	$sp,$sp,-48
    addiu	$v0,$v0,-9896
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 4302
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4300
    sd	$at,8($sp)
    # Line 4302
    li	$a1,128
    # Line 4297
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 4302
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da436cc
    sd	$v0,16($sp)
    ld	$ra,24($sp)
.L0da436c0:
    # Line 4309
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da436cc:
    # Line 4307
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    li	$a2,128
    ld	$a1,0($sp)
    # Line 4304
    li	$a3,176
    # Line 4305
    li	$a5,1
    sb	$a5,14($a4)
    # Line 4307
    addiu	$a0,$a4,16
    jal	memcpy
    # Line 4304
    sh	$a3,12($a4)
    # Line 4308
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_LoadMatrixd
    b	.L0da436c0
    ld	$ra,24($sp)
.end __gllc_LoadMatrixd

# Function: __gllc_MatrixMode
# Declared: Line 4312 (Source lines: 4313-4324)
# Address: 0x0da43710 - 0x0da43784 (Size: 116 bytes, Frame: 32)
.globl __gllc_MatrixMode
.ent __gllc_MatrixMode
__gllc_MatrixMode:
    # Line 4313
    lui	$v0,0x5
    # Line 4316
    lw	$at,4112($zero)
    # Line 4313
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-10040
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 4318
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4316
    sd	$at,8($sp)
    # Line 4318
    li	$a1,4
    # Line 4313
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 4318
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da43758
    ld	$ra,16($sp)
.L0da4374c:
    # Line 4324
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da43758:
    # Line 4323
    la	$a2,__glle_MatrixMode
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4320
    li	$v1,177
    sh	$v1,12($v0)
    # Line 4322
    ld	$a3,0($sp)
    # Line 4323
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4322
    sw	$a3,16($v0)
    b	.L0da4374c
    ld	$ra,16($sp)
.end __gllc_MatrixMode

# Function: __gllc_MultMatrixf
# Declared: Line 4327 (Source lines: 4328-4339)
# Address: 0x0da43790 - 0x0da43818 (Size: 136 bytes, Frame: 48)
.globl __gllc_MultMatrixf
.ent __gllc_MultMatrixf
__gllc_MultMatrixf:
    # Line 4328
    lui	$v0,0x5
    # Line 4331
    lw	$at,4112($zero)
    # Line 4328
    addiu	$sp,$sp,-48
    addiu	$v0,$v0,-10168
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 4333
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4331
    sd	$at,8($sp)
    # Line 4333
    li	$a1,64
    # Line 4328
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 4333
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da437dc
    sd	$v0,16($sp)
    ld	$ra,24($sp)
.L0da437d0:
    # Line 4339
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da437dc:
    # Line 4337
    # lw $t9, -18508($gp) # &memcpy
    ld	$a4,16($sp)
    li	$a2,64
    ld	$a1,0($sp)
    # Line 4335
    li	$a3,178
    # Line 4337
    addiu	$a0,$a4,16
    jal	memcpy
    # Line 4335
    sh	$a3,12($a4)
    # Line 4338
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_MultMatrixf
    b	.L0da437d0
    ld	$ra,24($sp)
.end __gllc_MultMatrixf

# Function: __gllc_MultMatrixd
# Declared: Line 4342 (Source lines: 4343-4355)
# Address: 0x0da43820 - 0x0da438b0 (Size: 144 bytes, Frame: 48)
.globl __gllc_MultMatrixd
.ent __gllc_MultMatrixd
__gllc_MultMatrixd:
    # Line 4343
    lui	$v0,0x5
    # Line 4346
    lw	$at,4112($zero)
    # Line 4343
    addiu	$sp,$sp,-48
    addiu	$v0,$v0,-10312
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 4348
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4346
    sd	$at,8($sp)
    # Line 4348
    li	$a1,128
    # Line 4343
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 4348
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4386c
    sd	$v0,16($sp)
    ld	$ra,24($sp)
.L0da43860:
    # Line 4355
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4386c:
    # Line 4353
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    li	$a2,128
    ld	$a1,0($sp)
    # Line 4350
    li	$a3,179
    # Line 4351
    li	$a5,1
    sb	$a5,14($a4)
    # Line 4353
    addiu	$a0,$a4,16
    jal	memcpy
    # Line 4350
    sh	$a3,12($a4)
    # Line 4354
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a0,8($sp)
    ld	$a1,16($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_MultMatrixd
    b	.L0da43860
    ld	$ra,24($sp)
.end __gllc_MultMatrixd

# Function: __gllc_Ortho
# Declared: Line 4358 (Source lines: 4359-4376)
# Address: 0x0da438b0 - 0x0da43964 (Size: 180 bytes, Frame: 208)
.globl __gllc_Ortho
.ent __gllc_Ortho
__gllc_Ortho:
    # Line 4362
    lw	$a0,4112($zero)
    # Line 4359
    addiu	$sp,$sp,-80
    sdc1	$f17,40($sp)
    sdc1	$f16,16($sp)
    sdc1	$f15,32($sp)
    sdc1	$f14,24($sp)
    lui	$at,0x5
    # Line 4362
    sd	$a0,48($sp)
    # Line 4359
    addiu	$at,$at,-10456
    sd	$gp,64($sp)
    addu	$gp,$t9,$at
    # Line 4364
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4359
    sdc1	$f13,8($sp)
    sd	$ra,56($sp)
    # Line 4364
    li	$a1,48
    jal	__glDlistAllocOp2
    # Line 4359
    sdc1	$f12,0($sp)
    # Line 4364
    bnez	$v0,.L0da4390c
    # Line 4375
    la	$a2,__glle_Ortho
    ld	$ra,56($sp)
.L0da43900:
    # Line 4376
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da4390c:
    # Line 4375
    ld	$a0,48($sp)
    # Line 4367
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4366
    li	$v1,180
    sh	$v1,12($v0)
    # Line 4369
    ldc1	$f0,0($sp)
    # Line 4370
    ldc1	$f1,8($sp)
    # Line 4371
    ldc1	$f2,24($sp)
    # Line 4372
    ldc1	$f3,32($sp)
    # Line 4374
    ldc1	$f5,40($sp)
    # Line 4373
    ldc1	$f4,16($sp)
    # Line 4374
    sdc1	$f5,56($v0)
    # Line 4373
    sdc1	$f4,48($v0)
    # Line 4372
    sdc1	$f3,40($v0)
    # Line 4375
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4371
    sdc1	$f2,32($v0)
    # Line 4370
    sdc1	$f1,24($v0)
    # Line 4375
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4369
    sdc1	$f0,16($v0)
    b	.L0da43900
    ld	$ra,56($sp)
.end __gllc_Ortho

# Function: __gllc_PopMatrix
# Declared: Line 4379 (Source lines: 4380-4388)
# Address: 0x0da43970 - 0x0da439d4 (Size: 100 bytes, Frame: 32)
.globl __gllc_PopMatrix
.ent __gllc_PopMatrix
__gllc_PopMatrix:
    # Line 4380
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10648
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 4384
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4382
    lw	$a0,4112($zero)
    # Line 4380
    sd	$ra,8($sp)
    # Line 4384
    move	$a1,$zero
    jal	__glDlistAllocOp2
    # Line 4382
    sd	$a0,0($sp)
    # Line 4384
    bnez	$v0,.L0da439b0
    ld	$ra,8($sp)
.L0da439a4:
    # Line 4388
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da439b0:
    # Line 4387
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    la	$a2,__glle_PopMatrix
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 4386
    li	$v1,181
    # Line 4387
    jal	__glDlistAppendOp
    # Line 4386
    sh	$v1,12($v0)
    b	.L0da439a4
    ld	$ra,8($sp)
.end __gllc_PopMatrix

# Function: __gllc_PushMatrix
# Declared: Line 4391 (Source lines: 4392-4400)
# Address: 0x0da439e0 - 0x0da43a44 (Size: 100 bytes, Frame: 32)
.globl __gllc_PushMatrix
.ent __gllc_PushMatrix
__gllc_PushMatrix:
    # Line 4392
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10760
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 4396
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4394
    lw	$a0,4112($zero)
    # Line 4392
    sd	$ra,8($sp)
    # Line 4396
    move	$a1,$zero
    jal	__glDlistAllocOp2
    # Line 4394
    sd	$a0,0($sp)
    # Line 4396
    bnez	$v0,.L0da43a24
    # Line 4399
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,8($sp)
.L0da43a18:
    # Line 4400
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da43a24:
    # Line 4399
    la	$a2,__glle_PushMatrix
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 4398
    li	$v1,182
    # Line 4399
    jal	__glDlistAppendOp
    # Line 4398
    sh	$v1,12($v0)
    b	.L0da43a18
    ld	$ra,8($sp)
.end __gllc_PushMatrix

# Function: __gllc_Rotated
# Declared: Line 4403 (Source lines: 4404-4419)
# Address: 0x0da43a50 - 0x0da43aec (Size: 156 bytes, Frame: 192)
.globl __gllc_Rotated
.ent __gllc_Rotated
__gllc_Rotated:
    # Line 4407
    lw	$a0,4112($zero)
    # Line 4404
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 4407
    sd	$a0,32($sp)
    # Line 4404
    addiu	$at,$at,-10872
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 4409
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4404
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 4409
    li	$a1,32
    jal	__glDlistAllocOp2
    # Line 4404
    sdc1	$f12,0($sp)
    # Line 4409
    bnez	$v0,.L0da43aa0
    ld	$ra,40($sp)
.L0da43a94:
    # Line 4419
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da43aa0:
    # Line 4418
    la	$a2,__glle_Rotated
    ld	$a0,32($sp)
    # Line 4412
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4411
    li	$v1,183
    sh	$v1,12($v0)
    # Line 4414
    ldc1	$f0,0($sp)
    # Line 4415
    ldc1	$f1,8($sp)
    # Line 4417
    ldc1	$f3,24($sp)
    # Line 4416
    ldc1	$f2,16($sp)
    # Line 4417
    sdc1	$f3,40($v0)
    # Line 4418
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4416
    sdc1	$f2,32($v0)
    # Line 4415
    sdc1	$f1,24($v0)
    # Line 4418
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4414
    sdc1	$f0,16($v0)
    b	.L0da43a94
    ld	$ra,40($sp)
.end __gllc_Rotated

# Function: __gllc_Rotatef
# Declared: Line 4422 (Source lines: 4423-4437)
# Address: 0x0da43af0 - 0x0da43b84 (Size: 148 bytes, Frame: 192)
.globl __gllc_Rotatef
.ent __gllc_Rotatef
__gllc_Rotatef:
    # Line 4426
    lw	$a0,4112($zero)
    # Line 4423
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 4426
    sd	$a0,32($sp)
    # Line 4423
    addiu	$at,$at,-11032
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 4428
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4423
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 4428
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 4423
    sdc1	$f12,0($sp)
    # Line 4428
    bnez	$v0,.L0da43b44
    # Line 4436
    la	$a2,__glle_Rotatef
    ld	$ra,40($sp)
.L0da43b38:
    # Line 4437
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da43b44:
    # Line 4436
    ld	$a0,32($sp)
    # Line 4430
    li	$v1,184
    sh	$v1,12($v0)
    # Line 4432
    ldc1	$f0,0($sp)
    # Line 4433
    ldc1	$f1,8($sp)
    # Line 4435
    ldc1	$f3,24($sp)
    # Line 4434
    ldc1	$f2,16($sp)
    # Line 4435
    swc1	$f3,28($v0)
    # Line 4436
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4434
    swc1	$f2,24($v0)
    # Line 4433
    swc1	$f1,20($v0)
    # Line 4436
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4432
    swc1	$f0,16($v0)
    b	.L0da43b38
    ld	$ra,40($sp)
.end __gllc_Rotatef

# Function: __gllc_Scaled
# Declared: Line 4440 (Source lines: 4441-4455)
# Address: 0x0da43b90 - 0x0da43c20 (Size: 144 bytes, Frame: 48)
.globl __gllc_Scaled
.ent __gllc_Scaled
__gllc_Scaled:
    # Line 4444
    lw	$a0,4112($zero)
    # Line 4441
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 4444
    sd	$a0,24($sp)
    # Line 4441
    addiu	$at,$at,-11192
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 4446
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4441
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 4446
    li	$a1,24
    jal	__glDlistAllocOp2
    # Line 4441
    sdc1	$f12,0($sp)
    # Line 4446
    bnez	$v0,.L0da43bdc
    ld	$ra,32($sp)
.L0da43bd0:
    # Line 4455
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da43bdc:
    # Line 4454
    la	$a2,__glle_Scaled
    ld	$a0,24($sp)
    # Line 4449
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4448
    li	$v1,185
    sh	$v1,12($v0)
    # Line 4451
    ldc1	$f0,0($sp)
    # Line 4452
    ldc1	$f1,8($sp)
    # Line 4453
    ldc1	$f2,16($sp)
    # Line 4454
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4453
    sdc1	$f2,32($v0)
    # Line 4452
    sdc1	$f1,24($v0)
    # Line 4454
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4451
    sdc1	$f0,16($v0)
    b	.L0da43bd0
    ld	$ra,32($sp)
.end __gllc_Scaled

# Function: __gllc_Scalef
# Declared: Line 4458 (Source lines: 4459-4472)
# Address: 0x0da43c20 - 0x0da43ca8 (Size: 136 bytes, Frame: 48)
.globl __gllc_Scalef
.ent __gllc_Scalef
__gllc_Scalef:
    # Line 4462
    lw	$a0,4112($zero)
    # Line 4459
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 4462
    sd	$a0,24($sp)
    # Line 4459
    addiu	$at,$at,-11336
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 4464
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4459
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 4464
    li	$a1,12
    jal	__glDlistAllocOp2
    # Line 4459
    sdc1	$f12,0($sp)
    # Line 4464
    bnez	$v0,.L0da43c70
    # Line 4471
    la	$a2,__glle_Scalef
    ld	$ra,32($sp)
.L0da43c64:
    # Line 4472
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da43c70:
    # Line 4471
    ld	$a0,24($sp)
    # Line 4466
    li	$v1,186
    sh	$v1,12($v0)
    # Line 4468
    ldc1	$f0,0($sp)
    # Line 4469
    ldc1	$f1,8($sp)
    # Line 4470
    ldc1	$f2,16($sp)
    # Line 4471
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4470
    swc1	$f2,24($v0)
    # Line 4469
    swc1	$f1,20($v0)
    # Line 4471
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4468
    swc1	$f0,16($v0)
    b	.L0da43c64
    ld	$ra,32($sp)
.end __gllc_Scalef

# Function: __gllc_Translated
# Declared: Line 4475 (Source lines: 4476-4490)
# Address: 0x0da43cb0 - 0x0da43d40 (Size: 144 bytes, Frame: 48)
.globl __gllc_Translated
.ent __gllc_Translated
__gllc_Translated:
    # Line 4479
    lw	$a0,4112($zero)
    # Line 4476
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 4479
    sd	$a0,24($sp)
    # Line 4476
    addiu	$at,$at,-11480
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 4481
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4476
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 4481
    li	$a1,24
    jal	__glDlistAllocOp2
    # Line 4476
    sdc1	$f12,0($sp)
    # Line 4481
    bnez	$v0,.L0da43cfc
    ld	$ra,32($sp)
.L0da43cf0:
    # Line 4490
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da43cfc:
    # Line 4489
    la	$a2,__glle_Translated
    ld	$a0,24($sp)
    # Line 4484
    li	$a3,1
    sb	$a3,14($v0)
    # Line 4483
    li	$v1,187
    sh	$v1,12($v0)
    # Line 4486
    ldc1	$f0,0($sp)
    # Line 4487
    ldc1	$f1,8($sp)
    # Line 4488
    ldc1	$f2,16($sp)
    # Line 4489
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4488
    sdc1	$f2,32($v0)
    # Line 4487
    sdc1	$f1,24($v0)
    # Line 4489
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4486
    sdc1	$f0,16($v0)
    b	.L0da43cf0
    ld	$ra,32($sp)
.end __gllc_Translated

# Function: __gllc_Translatef
# Declared: Line 4493 (Source lines: 4494-4507)
# Address: 0x0da43d40 - 0x0da43dc8 (Size: 136 bytes, Frame: 48)
.globl __gllc_Translatef
.ent __gllc_Translatef
__gllc_Translatef:
    # Line 4497
    lw	$a0,4112($zero)
    # Line 4494
    addiu	$sp,$sp,-48
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 4497
    sd	$a0,24($sp)
    # Line 4494
    addiu	$at,$at,-11624
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 4499
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4494
    sdc1	$f13,8($sp)
    sd	$ra,32($sp)
    # Line 4499
    li	$a1,12
    jal	__glDlistAllocOp2
    # Line 4494
    sdc1	$f12,0($sp)
    # Line 4499
    bnez	$v0,.L0da43d90
    # Line 4506
    la	$a2,__glle_Translatef
    ld	$ra,32($sp)
.L0da43d84:
    # Line 4507
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da43d90:
    # Line 4506
    ld	$a0,24($sp)
    # Line 4501
    li	$v1,188
    sh	$v1,12($v0)
    # Line 4503
    ldc1	$f0,0($sp)
    # Line 4504
    ldc1	$f1,8($sp)
    # Line 4505
    ldc1	$f2,16($sp)
    # Line 4506
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4505
    swc1	$f2,24($v0)
    # Line 4504
    swc1	$f1,20($v0)
    # Line 4506
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4503
    swc1	$f0,16($v0)
    b	.L0da43d84
    ld	$ra,32($sp)
.end __gllc_Translatef

# Function: __gllc_Viewport
# Declared: Line 4510 (Source lines: 4511-4525)
# Address: 0x0da43dd0 - 0x0da43e68 (Size: 152 bytes, Frame: 192)
.globl __gllc_Viewport
.ent __gllc_Viewport
__gllc_Viewport:
    # Line 4511
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 4514
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 4511
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,-11768
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 4516
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4511
    sd	$a1,8($sp)
    # Line 4516
    li	$a1,16
    # Line 4511
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 4516
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da43e24
    ld	$ra,40($sp)
.L0da43e18:
    # Line 4525
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da43e24:
    # Line 4524
    la	$a2,__glle_Viewport
    ld	$a0,16($sp)
    # Line 4518
    li	$v1,189
    sh	$v1,12($v0)
    # Line 4520
    ld	$a3,0($sp)
    # Line 4521
    ld	$a4,8($sp)
    # Line 4522
    ld	$a5,24($sp)
    # Line 4523
    ld	$a6,32($sp)
    sw	$a6,28($v0)
    # Line 4524
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4522
    sw	$a5,24($v0)
    # Line 4521
    sw	$a4,20($v0)
    # Line 4524
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4520
    sw	$a3,16($v0)
    b	.L0da43e18
    ld	$ra,40($sp)
.end __gllc_Viewport

# Function: __gllc_BlendColorEXT
# Declared: Line 4528 (Source lines: 4529-4543)
# Address: 0x0da43e70 - 0x0da43f04 (Size: 148 bytes, Frame: 192)
.globl __gllc_BlendColorEXT
.ent __gllc_BlendColorEXT
__gllc_BlendColorEXT:
    # Line 4532
    lw	$a0,4112($zero)
    # Line 4529
    addiu	$sp,$sp,-64
    sdc1	$f15,24($sp)
    sdc1	$f14,16($sp)
    lui	$at,0x5
    # Line 4532
    sd	$a0,32($sp)
    # Line 4529
    addiu	$at,$at,-11928
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 4534
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4529
    sdc1	$f13,8($sp)
    sd	$ra,40($sp)
    # Line 4534
    li	$a1,16
    jal	__glDlistAllocOp2
    # Line 4529
    sdc1	$f12,0($sp)
    # Line 4534
    bnez	$v0,.L0da43ec4
    # Line 4542
    la	$a2,__glle_BlendColorEXT
    ld	$ra,40($sp)
.L0da43eb8:
    # Line 4543
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da43ec4:
    # Line 4542
    ld	$a0,32($sp)
    # Line 4536
    li	$v1,190
    sh	$v1,12($v0)
    # Line 4538
    ldc1	$f0,0($sp)
    # Line 4539
    ldc1	$f1,8($sp)
    # Line 4541
    ldc1	$f3,24($sp)
    # Line 4540
    ldc1	$f2,16($sp)
    # Line 4541
    swc1	$f3,28($v0)
    # Line 4542
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4540
    swc1	$f2,24($v0)
    # Line 4539
    swc1	$f1,20($v0)
    # Line 4542
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4538
    swc1	$f0,16($v0)
    b	.L0da43eb8
    ld	$ra,40($sp)
.end __gllc_BlendColorEXT

# Function: __gllc_BlendEquationEXT
# Declared: Line 4546 (Source lines: 4547-4558)
# Address: 0x0da43f10 - 0x0da43f84 (Size: 116 bytes, Frame: 32)
.globl __gllc_BlendEquationEXT
.ent __gllc_BlendEquationEXT
__gllc_BlendEquationEXT:
    # Line 4547
    lui	$v0,0x5
    # Line 4550
    lw	$at,4112($zero)
    # Line 4547
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-12088
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 4552
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4550
    sd	$at,8($sp)
    # Line 4552
    li	$a1,4
    # Line 4547
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 4552
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da43f58
    ld	$ra,16($sp)
.L0da43f4c:
    # Line 4558
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da43f58:
    # Line 4557
    la	$a2,__glle_BlendEquationEXT
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4554
    li	$v1,191
    sh	$v1,12($v0)
    # Line 4556
    ld	$a3,0($sp)
    # Line 4557
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4556
    sw	$a3,16($v0)
    b	.L0da43f4c
    ld	$ra,16($sp)
.end __gllc_BlendEquationEXT

# Function: __gllc_PolygonOffsetEXT
# Declared: Line 4561 (Source lines: 4562-4574)
# Address: 0x0da43f90 - 0x0da4400c (Size: 124 bytes, Frame: 48)
.globl __gllc_PolygonOffsetEXT
.ent __gllc_PolygonOffsetEXT
__gllc_PolygonOffsetEXT:
    # Line 4565
    lw	$a0,4112($zero)
    # Line 4562
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 4565
    sd	$a0,16($sp)
    # Line 4562
    addiu	$at,$at,-12216
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 4567
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4562
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 4567
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 4562
    sdc1	$f12,0($sp)
    # Line 4567
    bnez	$v0,.L0da43fdc
    # Line 4573
    la	$a2,__glle_PolygonOffsetEXT
    ld	$ra,24($sp)
.L0da43fd0:
    # Line 4574
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da43fdc:
    # Line 4573
    ld	$a0,16($sp)
    # Line 4569
    li	$v1,192
    sh	$v1,12($v0)
    # Line 4572
    ldc1	$f1,8($sp)
    # Line 4573
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4571
    ldc1	$f0,0($sp)
    # Line 4572
    swc1	$f1,20($v0)
    # Line 4573
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4571
    swc1	$f0,16($v0)
    b	.L0da43fd0
    ld	$ra,24($sp)
.end __gllc_PolygonOffsetEXT

# Function: __gllc_ConvolutionParameterfEXT
# Declared: Line 4581 (Source lines: 4582-4595)
# Address: 0x0da44010 - 0x0da4409c (Size: 140 bytes, Frame: 48)
.globl __gllc_ConvolutionParameterfEXT
.ent __gllc_ConvolutionParameterfEXT
__gllc_ConvolutionParameterfEXT:
    # Line 4585
    lw	$at,4112($zero)
    # Line 4582
    addiu	$sp,$sp,-48
    # Line 4585
    sd	$at,24($sp)
    # Line 4582
    lui	$v0,0x5
    sdc1	$f14,0($sp)
    addiu	$v0,$v0,-12344
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 4587
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4582
    sd	$a1,16($sp)
    # Line 4587
    li	$a1,12
    # Line 4582
    sd	$a0,8($sp)
    sd	$ra,32($sp)
    # Line 4587
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44060
    ld	$ra,32($sp)
.L0da44054:
    # Line 4595
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da44060:
    # Line 4594
    la	$a2,__glle_ConvolutionParameterfEXT
    ld	$a0,24($sp)
    # Line 4589
    li	$v1,197
    sh	$v1,12($v0)
    # Line 4591
    ld	$a3,8($sp)
    # Line 4592
    ld	$a4,16($sp)
    sw	$a4,20($v0)
    # Line 4594
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4593
    ldc1	$f0,0($sp)
    # Line 4591
    sw	$a3,16($v0)
    # Line 4594
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4593
    swc1	$f0,24($v0)
    b	.L0da44054
    ld	$ra,32($sp)
.end __gllc_ConvolutionParameterfEXT

# Function: __gllc_ConvolutionParameterfvEXT
# Declared: Line 4598 (Source lines: 4599-4621)
# Address: 0x0da440a0 - 0x0da44174 (Size: 212 bytes, Frame: 192)
.globl __gllc_ConvolutionParameterfvEXT
.ent __gllc_ConvolutionParameterfvEXT
__gllc_ConvolutionParameterfvEXT:
    # Line 4599
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 4604
    lw	$s0,4112($zero)
    # Line 4599
    addiu	$v0,$v0,-12488
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 4606
    # lw $t9, -28520($gp) # &__glConvolutionParameterfvEXT_size
    # Line 4599
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 4606
    move	$a0,$a1
    jal	__glConvolutionParameterfvEXT_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da44160
    # Line 4612
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da44114
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da44100:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 4621
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da44114:
    # Line 4618
    ld	$a1,16($sp)
    # Line 4616
    ld	$a5,0($sp)
    # Line 4617
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 4618
    # lw $t9, -18508($gp) # &memcpy
    # Line 4617
    sw	$a6,20($a4)
    # Line 4618
    move	$a2,$s1
    # Line 4614
    li	$a3,198
    # Line 4616
    sw	$a5,16($a4)
    # Line 4618
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 4614
    sh	$a3,12($a4)
    # Line 4620
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_ConvolutionParameterfvEXT
    b	.L0da44100
    ld	$ra,40($sp)
.L0da44160:
    # Line 4608
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da44100
    ld	$ra,40($sp)
.end __gllc_ConvolutionParameterfvEXT

# Function: __gllc_ConvolutionParameteriEXT
# Declared: Line 4624 (Source lines: 4625-4638)
# Address: 0x0da44180 - 0x0da4420c (Size: 140 bytes, Frame: 48)
.globl __gllc_ConvolutionParameteriEXT
.ent __gllc_ConvolutionParameteriEXT
__gllc_ConvolutionParameteriEXT:
    # Line 4628
    lw	$at,4112($zero)
    # Line 4625
    addiu	$sp,$sp,-48
    # Line 4628
    sd	$at,24($sp)
    # Line 4625
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,-12712
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 4630
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4625
    sd	$a1,8($sp)
    # Line 4630
    li	$a1,12
    # Line 4625
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 4630
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da441d0
    ld	$ra,32($sp)
.L0da441c4:
    # Line 4638
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da441d0:
    # Line 4637
    la	$a2,__glle_ConvolutionParameteriEXT
    ld	$a0,24($sp)
    # Line 4632
    li	$v1,199
    sh	$v1,12($v0)
    # Line 4634
    ld	$a3,0($sp)
    # Line 4635
    ld	$a4,8($sp)
    # Line 4636
    ld	$a5,16($sp)
    # Line 4637
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4636
    sw	$a5,24($v0)
    # Line 4635
    sw	$a4,20($v0)
    # Line 4637
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4634
    sw	$a3,16($v0)
    b	.L0da441c4
    ld	$ra,32($sp)
.end __gllc_ConvolutionParameteriEXT

# Function: __gllc_ConvolutionParameterivEXT
# Declared: Line 4641 (Source lines: 4642-4664)
# Address: 0x0da44210 - 0x0da442e4 (Size: 212 bytes, Frame: 192)
.globl __gllc_ConvolutionParameterivEXT
.ent __gllc_ConvolutionParameterivEXT
__gllc_ConvolutionParameterivEXT:
    # Line 4642
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 4647
    lw	$s0,4112($zero)
    # Line 4642
    addiu	$v0,$v0,-12856
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 4649
    # lw $t9, -28516($gp) # &__glConvolutionParameterivEXT_size
    # Line 4642
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 4649
    move	$a0,$a1
    jal	__glConvolutionParameterivEXT_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da442d0
    # Line 4655
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da44284
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da44270:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 4664
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da44284:
    # Line 4661
    ld	$a1,16($sp)
    # Line 4659
    ld	$a5,0($sp)
    # Line 4660
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 4661
    # lw $t9, -18508($gp) # &memcpy
    # Line 4660
    sw	$a6,20($a4)
    # Line 4661
    move	$a2,$s1
    # Line 4657
    li	$a3,200
    # Line 4659
    sw	$a5,16($a4)
    # Line 4661
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 4657
    sh	$a3,12($a4)
    # Line 4663
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_ConvolutionParameterivEXT
    b	.L0da44270
    ld	$ra,40($sp)
.L0da442d0:
    # Line 4651
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da44270
    ld	$ra,40($sp)
.end __gllc_ConvolutionParameterivEXT

# Function: __gllc_CopyConvolutionFilter1DEXT
# Declared: Line 4667 (Source lines: 4668-4683)
# Address: 0x0da442f0 - 0x0da44394 (Size: 164 bytes, Frame: 192)
.globl __gllc_CopyConvolutionFilter1DEXT
.ent __gllc_CopyConvolutionFilter1DEXT
__gllc_CopyConvolutionFilter1DEXT:
    # Line 4668
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    # Line 4671
    lw	$at,4112($zero)
    sd	$at,8($sp)
    # Line 4668
    lui	$v0,0x5
    sd	$a2,32($sp)
    addiu	$v0,$v0,-13080
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 4673
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4668
    sd	$a1,16($sp)
    # Line 4673
    li	$a1,20
    # Line 4668
    sd	$a0,0($sp)
    sd	$ra,48($sp)
    # Line 4673
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4434c
    # Line 4682
    la	$a2,__glle_CopyConvolutionFilter1DEXT
    ld	$ra,48($sp)
.L0da44340:
    # Line 4683
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da4434c:
    # Line 4682
    ld	$a0,8($sp)
    # Line 4675
    li	$v1,201
    sh	$v1,12($v0)
    # Line 4677
    ld	$a3,0($sp)
    # Line 4678
    ld	$a4,16($sp)
    # Line 4679
    ld	$a5,32($sp)
    # Line 4680
    ld	$a6,40($sp)
    # Line 4681
    ld	$a7,24($sp)
    sw	$a7,32($v0)
    # Line 4680
    sw	$a6,28($v0)
    # Line 4682
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4679
    sw	$a5,24($v0)
    # Line 4678
    sw	$a4,20($v0)
    # Line 4682
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4677
    sw	$a3,16($v0)
    b	.L0da44340
    ld	$ra,48($sp)
.end __gllc_CopyConvolutionFilter1DEXT

# Function: __gllc_CopyConvolutionFilter2DEXT
# Declared: Line 4686 (Source lines: 4687-4703)
# Address: 0x0da443a0 - 0x0da44450 (Size: 176 bytes, Frame: 208)
.globl __gllc_CopyConvolutionFilter2DEXT
.ent __gllc_CopyConvolutionFilter2DEXT
__gllc_CopyConvolutionFilter2DEXT:
    # Line 4687
    addiu	$sp,$sp,-80
    sd	$a5,8($sp)
    sd	$a4,32($sp)
    sd	$a3,48($sp)
    # Line 4690
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 4687
    lui	$v0,0x5
    sd	$a2,40($sp)
    addiu	$v0,$v0,-13256
    sd	$gp,64($sp)
    addu	$gp,$t9,$v0
    # Line 4692
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4687
    sd	$a1,24($sp)
    # Line 4692
    li	$a1,24
    # Line 4687
    sd	$a0,0($sp)
    sd	$ra,56($sp)
    # Line 4692
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44400
    # Line 4702
    la	$a2,__glle_CopyConvolutionFilter2DEXT
    ld	$ra,56($sp)
.L0da443f4:
    # Line 4703
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da44400:
    # Line 4702
    ld	$a0,16($sp)
    # Line 4694
    li	$v1,202
    sh	$v1,12($v0)
    # Line 4696
    ld	$a3,0($sp)
    # Line 4697
    ld	$a4,24($sp)
    # Line 4698
    ld	$a5,40($sp)
    # Line 4699
    ld	$a6,48($sp)
    # Line 4700
    ld	$a7,32($sp)
    # Line 4701
    ld	$t0,8($sp)
    sw	$t0,36($v0)
    # Line 4700
    sw	$a7,32($v0)
    # Line 4699
    sw	$a6,28($v0)
    # Line 4702
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4698
    sw	$a5,24($v0)
    # Line 4697
    sw	$a4,20($v0)
    # Line 4702
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4696
    sw	$a3,16($v0)
    b	.L0da443f4
    ld	$ra,56($sp)
.end __gllc_CopyConvolutionFilter2DEXT

# Function: __gllc_HistogramEXT
# Declared: Line 4717 (Source lines: 4718-4736)
# Address: 0x0da44450 - 0x0da44510 (Size: 192 bytes, Frame: 192)
.globl __gllc_HistogramEXT
.ent __gllc_HistogramEXT
__gllc_HistogramEXT:
    # Line 4718
    addiu	$sp,$sp,-64
    sd	$s0,32($sp)
    # Line 4721
    lw	$s0,4112($zero)
    li	$at,0x8025
    # Line 4718
    lui	$v1,0x5
    move	$v0,$a3
    sd	$ra,48($sp)
    addiu	$v1,$v1,-13432
    sd	$gp,40($sp)
    # Line 4721
    beq	$a0,$at,.L0da444f8
    # Line 4718
    addu	$gp,$t9,$v1
    sd	$a2,8($sp)
    # Line 4727
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    sd	$a3,0($sp)
    sd	$a0,24($sp)
    move	$a0,$s0
    sd	$a1,16($sp)
    jal	__glDlistAllocOp2
    li	$a1,16
    bnez	$v0,.L0da444b4
    ld	$ra,48($sp)
.L0da444a4:
    ld	$s0,32($sp)
    # Line 4736
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da444b4:
    # Line 4735
    la	$a2,__glle_HistogramEXT
    # Line 4729
    li	$a3,204
    sh	$a3,12($v0)
    # Line 4731
    ld	$a4,24($sp)
    # Line 4732
    ld	$a5,16($sp)
    # Line 4733
    ld	$a6,8($sp)
    # Line 4734
    ld	$a7,0($sp)
    sb	$a7,28($v0)
    # Line 4735
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4733
    sw	$a6,24($v0)
    # Line 4735
    move	$a1,$v0
    # Line 4732
    sw	$a5,20($v0)
    # Line 4735
    move	$a0,$s0
    jal	__glDlistAppendOp
    # Line 4731
    sw	$a4,16($v0)
    b	.L0da444a4
    ld	$ra,48($sp)
.L0da444f8:
    # Line 4724
    lw	$t9,6132($s0)
    lw	$t9,768($t9)
    jalr	$t9
    nop
    b	.L0da444a4
    ld	$ra,48($sp)
.end __gllc_HistogramEXT

# Function: __gllc_MinmaxEXT
# Declared: Line 4739 (Source lines: 4740-4753)
# Address: 0x0da44510 - 0x0da4459c (Size: 140 bytes, Frame: 48)
.globl __gllc_MinmaxEXT
.ent __gllc_MinmaxEXT
__gllc_MinmaxEXT:
    # Line 4743
    lw	$at,4112($zero)
    # Line 4740
    addiu	$sp,$sp,-48
    # Line 4743
    sd	$at,24($sp)
    # Line 4740
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,-13624
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 4745
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4740
    sd	$a1,8($sp)
    # Line 4745
    li	$a1,12
    # Line 4740
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 4745
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44560
    ld	$ra,32($sp)
.L0da44554:
    # Line 4753
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da44560:
    # Line 4752
    la	$a2,__glle_MinmaxEXT
    ld	$a0,24($sp)
    # Line 4747
    li	$v1,205
    sh	$v1,12($v0)
    # Line 4749
    ld	$a3,0($sp)
    # Line 4750
    ld	$a4,8($sp)
    # Line 4751
    ld	$a5,16($sp)
    # Line 4752
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4751
    sb	$a5,24($v0)
    # Line 4750
    sw	$a4,20($v0)
    # Line 4752
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4749
    sw	$a3,16($v0)
    b	.L0da44554
    ld	$ra,32($sp)
.end __gllc_MinmaxEXT

# Function: __gllc_ResetHistogramEXT
# Declared: Line 4756 (Source lines: 4757-4768)
# Address: 0x0da445a0 - 0x0da44614 (Size: 116 bytes, Frame: 32)
.globl __gllc_ResetHistogramEXT
.ent __gllc_ResetHistogramEXT
__gllc_ResetHistogramEXT:
    # Line 4757
    lui	$v0,0x5
    # Line 4760
    lw	$at,4112($zero)
    # Line 4757
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-13768
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 4762
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4760
    sd	$at,8($sp)
    # Line 4762
    li	$a1,4
    # Line 4757
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 4762
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da445e8
    ld	$ra,16($sp)
.L0da445dc:
    # Line 4768
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da445e8:
    # Line 4767
    la	$a2,__glle_ResetHistogramEXT
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4764
    li	$v1,206
    sh	$v1,12($v0)
    # Line 4766
    ld	$a3,0($sp)
    # Line 4767
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4766
    sw	$a3,16($v0)
    b	.L0da445dc
    ld	$ra,16($sp)
.end __gllc_ResetHistogramEXT

# Function: __gllc_ResetMinmaxEXT
# Declared: Line 4771 (Source lines: 4772-4783)
# Address: 0x0da44620 - 0x0da44694 (Size: 116 bytes, Frame: 32)
.globl __gllc_ResetMinmaxEXT
.ent __gllc_ResetMinmaxEXT
__gllc_ResetMinmaxEXT:
    # Line 4772
    lui	$v0,0x5
    # Line 4775
    lw	$at,4112($zero)
    # Line 4772
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-13896
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 4777
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4775
    sd	$at,8($sp)
    # Line 4777
    li	$a1,4
    # Line 4772
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 4777
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44668
    ld	$ra,16($sp)
.L0da4465c:
    # Line 4783
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da44668:
    # Line 4782
    la	$a2,__glle_ResetMinmaxEXT
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4779
    li	$v1,207
    sh	$v1,12($v0)
    # Line 4781
    ld	$a3,0($sp)
    # Line 4782
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4781
    sw	$a3,16($v0)
    b	.L0da4465c
    ld	$ra,16($sp)
.end __gllc_ResetMinmaxEXT

# Function: __gllc_BindTextureEXT
# Declared: Line 4798 (Source lines: 4799-4811)
# Address: 0x0da446a0 - 0x0da44720 (Size: 128 bytes, Frame: 48)
.globl __gllc_BindTextureEXT
.ent __gllc_BindTextureEXT
__gllc_BindTextureEXT:
    # Line 4802
    lw	$at,4112($zero)
    # Line 4799
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 4802
    sd	$at,16($sp)
    # Line 4799
    addiu	$v0,$v0,-14024
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 4804
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4799
    sd	$a1,8($sp)
    # Line 4804
    li	$a1,8
    # Line 4799
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 4804
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da446f0
    # Line 4810
    la	$a2,__glle_BindTextureEXT
    ld	$ra,24($sp)
.L0da446e4:
    # Line 4811
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da446f0:
    # Line 4810
    ld	$a0,16($sp)
    # Line 4806
    li	$v1,212
    sh	$v1,12($v0)
    # Line 4808
    ld	$a3,0($sp)
    # Line 4810
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4809
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 4810
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4808
    sw	$a3,16($v0)
    b	.L0da446e4
    ld	$ra,24($sp)
.end __gllc_BindTextureEXT

# Function: __gllc_PrioritizeTexturesEXT
# Declared: Line 4817 (Source lines: 4818-4847)
# Address: 0x0da44720 - 0x0da44800 (Size: 224 bytes, Frame: 192)
.globl __gllc_PrioritizeTexturesEXT
.ent __gllc_PrioritizeTexturesEXT
__gllc_PrioritizeTexturesEXT:
    # Line 4818
    addiu	$sp,$sp,-64
    sd	$a2,8($sp)
    sd	$a1,16($sp)
    sd	$a0,0($sp)
    sd	$s1,32($sp)
    # Line 4824
    lw	$s1,4112($zero)
    # Line 4818
    lui	$at,0x5
    sd	$s0,40($sp)
    # Line 4824
    sll	$s0,$a0,0x2
    sd	$ra,56($sp)
    # Line 4818
    addiu	$at,$at,-14152
    sd	$gp,48($sp)
    # Line 4824
    bltz	$s0,.L0da447ec
    # Line 4818
    addu	$gp,$t9,$at
    # Line 4837
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s1
    addu	$a1,$s0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,4
    bnez	$v0,.L0da4478c
    sd	$v0,24($sp)
    ld	$ra,56($sp)
.L0da44778:
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 4847
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da4478c:
    # Line 4842
    ld	$a1,16($sp)
    ld	$a4,24($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 4841
    ld	$a5,0($sp)
    # Line 4842
    move	$a2,$s0
    # Line 4839
    li	$a3,213
    # Line 4841
    sw	$a5,16($a4)
    # Line 4842
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 4839
    sh	$a3,12($a4)
    # Line 4844
    # lw $t9, -18508($gp) # &memcpy
    ld	$a0,24($sp)
    move	$a2,$s0
    addu	$a0,$s0,$a0
    ld	$a1,8($sp)
    jal	memcpy
    addiu	$a0,$a0,20
    # Line 4846
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s1
    jal	__glDlistAppendOp
    la	$a2,__glle_PrioritizeTexturesEXT
    b	.L0da44778
    ld	$ra,56($sp)
.L0da447ec:
    # Line 4828
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s1
    b	.L0da44778
    ld	$ra,56($sp)
.end __gllc_PrioritizeTexturesEXT

# Function: __gllc_CopyTexImage1DEXT
# Declared: Line 4850 (Source lines: 4851-4868)
# Address: 0x0da44800 - 0x0da448bc (Size: 188 bytes, Frame: 208)
.globl __gllc_CopyTexImage1DEXT
.ent __gllc_CopyTexImage1DEXT
__gllc_CopyTexImage1DEXT:
    # Line 4851
    addiu	$sp,$sp,-80
    sd	$a6,16($sp)
    sd	$a5,8($sp)
    sd	$a4,40($sp)
    sd	$a3,56($sp)
    # Line 4854
    lw	$at,4112($zero)
    sd	$at,24($sp)
    # Line 4851
    lui	$v0,0x5
    sd	$a2,48($sp)
    addiu	$v0,$v0,-14376
    sd	$gp,72($sp)
    addu	$gp,$t9,$v0
    # Line 4856
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4851
    sd	$a1,32($sp)
    # Line 4856
    li	$a1,28
    # Line 4851
    sd	$a0,0($sp)
    sd	$ra,64($sp)
    # Line 4856
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44864
    # Line 4867
    la	$a2,__glle_CopyTexImage1DEXT
    ld	$ra,64($sp)
.L0da44858:
    # Line 4868
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da44864:
    # Line 4867
    ld	$a0,24($sp)
    # Line 4858
    li	$v1,214
    sh	$v1,12($v0)
    # Line 4860
    ld	$a3,0($sp)
    # Line 4861
    ld	$a4,32($sp)
    # Line 4862
    ld	$a5,48($sp)
    # Line 4863
    ld	$a6,56($sp)
    # Line 4864
    ld	$a7,40($sp)
    # Line 4865
    ld	$t0,8($sp)
    # Line 4866
    ld	$t1,16($sp)
    sw	$t1,40($v0)
    # Line 4865
    sw	$t0,36($v0)
    # Line 4864
    sw	$a7,32($v0)
    # Line 4863
    sw	$a6,28($v0)
    # Line 4867
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4862
    sw	$a5,24($v0)
    # Line 4861
    sw	$a4,20($v0)
    # Line 4867
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4860
    sw	$a3,16($v0)
    b	.L0da44858
    ld	$ra,64($sp)
.end __gllc_CopyTexImage1DEXT

# Function: __gllc_CopyTexImage2DEXT
# Declared: Line 4871 (Source lines: 4872-4890)
# Address: 0x0da448c0 - 0x0da44988 (Size: 200 bytes, Frame: 224)
.globl __gllc_CopyTexImage2DEXT
.ent __gllc_CopyTexImage2DEXT
__gllc_CopyTexImage2DEXT:
    # Line 4872
    addiu	$sp,$sp,-96
    sd	$a7,24($sp)
    sd	$a6,16($sp)
    sd	$a5,8($sp)
    sd	$a4,48($sp)
    sd	$a3,64($sp)
    # Line 4875
    lw	$at,4112($zero)
    sd	$at,32($sp)
    # Line 4872
    lui	$v0,0x5
    sd	$a2,56($sp)
    addiu	$v0,$v0,-14568
    sd	$gp,80($sp)
    addu	$gp,$t9,$v0
    # Line 4877
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4872
    sd	$a1,40($sp)
    # Line 4877
    li	$a1,32
    # Line 4872
    sd	$a0,0($sp)
    sd	$ra,72($sp)
    # Line 4877
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44924
    ld	$ra,72($sp)
.L0da44918:
    # Line 4890
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da44924:
    # Line 4889
    la	$a2,__glle_CopyTexImage2DEXT
    ld	$a0,32($sp)
    # Line 4879
    li	$v1,215
    sh	$v1,12($v0)
    # Line 4881
    ld	$a3,0($sp)
    # Line 4882
    ld	$a4,40($sp)
    # Line 4883
    ld	$a5,56($sp)
    # Line 4884
    ld	$a6,64($sp)
    # Line 4885
    ld	$a7,48($sp)
    # Line 4886
    ld	$t0,8($sp)
    # Line 4887
    ld	$t1,16($sp)
    # Line 4888
    ld	$t2,24($sp)
    sw	$t2,44($v0)
    # Line 4887
    sw	$t1,40($v0)
    # Line 4886
    sw	$t0,36($v0)
    # Line 4885
    sw	$a7,32($v0)
    # Line 4884
    sw	$a6,28($v0)
    # Line 4889
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4883
    sw	$a5,24($v0)
    # Line 4882
    sw	$a4,20($v0)
    # Line 4889
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4881
    sw	$a3,16($v0)
    b	.L0da44918
    ld	$ra,72($sp)
.end __gllc_CopyTexImage2DEXT

# Function: __gllc_CopyTexSubImage1DEXT
# Declared: Line 4893 (Source lines: 4894-4910)
# Address: 0x0da44990 - 0x0da44a40 (Size: 176 bytes, Frame: 208)
.globl __gllc_CopyTexSubImage1DEXT
.ent __gllc_CopyTexSubImage1DEXT
__gllc_CopyTexSubImage1DEXT:
    # Line 4894
    addiu	$sp,$sp,-80
    sd	$a5,8($sp)
    sd	$a4,32($sp)
    sd	$a3,48($sp)
    # Line 4897
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 4894
    lui	$v0,0x5
    sd	$a2,40($sp)
    addiu	$v0,$v0,-14776
    sd	$gp,64($sp)
    addu	$gp,$t9,$v0
    # Line 4899
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4894
    sd	$a1,24($sp)
    # Line 4899
    li	$a1,24
    # Line 4894
    sd	$a0,0($sp)
    sd	$ra,56($sp)
    # Line 4899
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da449ec
    ld	$ra,56($sp)
.L0da449e0:
    # Line 4910
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da449ec:
    # Line 4909
    la	$a2,__glle_CopyTexSubImage1DEXT
    ld	$a0,16($sp)
    # Line 4901
    li	$v1,216
    sh	$v1,12($v0)
    # Line 4903
    ld	$a3,0($sp)
    # Line 4904
    ld	$a4,24($sp)
    # Line 4905
    ld	$a5,40($sp)
    # Line 4906
    ld	$a6,48($sp)
    # Line 4907
    ld	$a7,32($sp)
    # Line 4908
    ld	$t0,8($sp)
    sw	$t0,36($v0)
    # Line 4907
    sw	$a7,32($v0)
    # Line 4906
    sw	$a6,28($v0)
    # Line 4909
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4905
    sw	$a5,24($v0)
    # Line 4904
    sw	$a4,20($v0)
    # Line 4909
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4903
    sw	$a3,16($v0)
    b	.L0da449e0
    ld	$ra,56($sp)
.end __gllc_CopyTexSubImage1DEXT

# Function: __gllc_CopyTexSubImage2DEXT
# Declared: Line 4913 (Source lines: 4914-4932)
# Address: 0x0da44a40 - 0x0da44b08 (Size: 200 bytes, Frame: 224)
.globl __gllc_CopyTexSubImage2DEXT
.ent __gllc_CopyTexSubImage2DEXT
__gllc_CopyTexSubImage2DEXT:
    # Line 4914
    addiu	$sp,$sp,-96
    sd	$a7,24($sp)
    sd	$a6,16($sp)
    sd	$a5,8($sp)
    sd	$a4,48($sp)
    sd	$a3,64($sp)
    # Line 4917
    lw	$at,4112($zero)
    sd	$at,32($sp)
    # Line 4914
    lui	$v0,0x5
    sd	$a2,56($sp)
    addiu	$v0,$v0,-14952
    sd	$gp,80($sp)
    addu	$gp,$t9,$v0
    # Line 4919
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4914
    sd	$a1,40($sp)
    # Line 4919
    li	$a1,32
    # Line 4914
    sd	$a0,0($sp)
    sd	$ra,72($sp)
    # Line 4919
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44aa8
    # Line 4931
    la	$a2,__glle_CopyTexSubImage2DEXT
    ld	$ra,72($sp)
.L0da44a9c:
    # Line 4932
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da44aa8:
    # Line 4931
    ld	$a0,32($sp)
    # Line 4921
    li	$v1,217
    sh	$v1,12($v0)
    # Line 4923
    ld	$a3,0($sp)
    # Line 4924
    ld	$a4,40($sp)
    # Line 4925
    ld	$a5,56($sp)
    # Line 4926
    ld	$a6,64($sp)
    # Line 4927
    ld	$a7,48($sp)
    # Line 4928
    ld	$t0,8($sp)
    # Line 4929
    ld	$t1,16($sp)
    # Line 4930
    ld	$t2,24($sp)
    sw	$t2,44($v0)
    # Line 4929
    sw	$t1,40($v0)
    # Line 4928
    sw	$t0,36($v0)
    # Line 4927
    sw	$a7,32($v0)
    # Line 4926
    sw	$a6,28($v0)
    # Line 4931
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4925
    sw	$a5,24($v0)
    # Line 4924
    sw	$a4,20($v0)
    # Line 4931
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4923
    sw	$a3,16($v0)
    b	.L0da44a9c
    ld	$ra,72($sp)
.end __gllc_CopyTexSubImage2DEXT

# Function: __gllc_CopyTexSubImage3DEXT
# Declared: Line 4935 (Source lines: 4936-4955)
# Address: 0x0da44b10 - 0x0da44be0 (Size: 208 bytes, Frame: 160)
.globl __gllc_CopyTexSubImage3DEXT
.ent __gllc_CopyTexSubImage3DEXT
__gllc_CopyTexSubImage3DEXT:
    # Line 4936
    addiu	$sp,$sp,-160
    sd	$a7,24($sp)
    sd	$a6,16($sp)
    sd	$a5,8($sp)
    sd	$a4,48($sp)
    sd	$a3,64($sp)
    # Line 4939
    lw	$at,4112($zero)
    sd	$at,32($sp)
    # Line 4936
    lui	$v0,0x5
    sd	$a2,56($sp)
    addiu	$v0,$v0,-15160
    sd	$gp,80($sp)
    addu	$gp,$t9,$v0
    # Line 4941
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4936
    sd	$a1,40($sp)
    # Line 4941
    li	$a1,36
    # Line 4936
    sd	$a0,0($sp)
    sd	$ra,72($sp)
    # Line 4941
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44b78
    # Line 4954
    la	$a2,__glle_CopyTexSubImage3DEXT
    ld	$ra,72($sp)
.L0da44b6c:
    # Line 4955
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da44b78:
    # Line 4943
    li	$a0,218
    sh	$a0,12($v0)
    # Line 4954
    ld	$a0,32($sp)
    # Line 4953
    lw	$v1,164($sp)
    # Line 4945
    ld	$a1,0($sp)
    # Line 4946
    ld	$a3,40($sp)
    # Line 4947
    ld	$a4,56($sp)
    # Line 4948
    ld	$a5,64($sp)
    # Line 4949
    ld	$a6,48($sp)
    # Line 4950
    ld	$a7,8($sp)
    # Line 4951
    ld	$t0,16($sp)
    # Line 4952
    ld	$t1,24($sp)
    sw	$t1,44($v0)
    # Line 4951
    sw	$t0,40($v0)
    # Line 4950
    sw	$a7,36($v0)
    # Line 4949
    sw	$a6,32($v0)
    # Line 4948
    sw	$a5,28($v0)
    # Line 4947
    sw	$a4,24($v0)
    # Line 4954
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4946
    sw	$a3,20($v0)
    # Line 4945
    sw	$a1,16($v0)
    # Line 4954
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4953
    sw	$v1,48($v0)
    b	.L0da44b6c
    ld	$ra,72($sp)
.end __gllc_CopyTexSubImage3DEXT

# Function: __gllc_PolygonOffset
# Declared: Line 4968 (Source lines: 4969-4981)
# Address: 0x0da44be0 - 0x0da44c5c (Size: 124 bytes, Frame: 48)
.globl __gllc_PolygonOffset
.ent __gllc_PolygonOffset
__gllc_PolygonOffset:
    # Line 4972
    lw	$a0,4112($zero)
    # Line 4969
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 4972
    sd	$a0,16($sp)
    # Line 4969
    addiu	$at,$at,-15368
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 4974
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4969
    sdc1	$f13,8($sp)
    sd	$ra,24($sp)
    # Line 4974
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 4969
    sdc1	$f12,0($sp)
    # Line 4974
    bnez	$v0,.L0da44c28
    ld	$ra,24($sp)
.L0da44c1c:
    # Line 4981
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da44c28:
    # Line 4980
    la	$a2,__glle_PolygonOffset
    ld	$a0,16($sp)
    # Line 4976
    li	$v1,220
    sh	$v1,12($v0)
    # Line 4979
    ldc1	$f1,8($sp)
    # Line 4980
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4978
    ldc1	$f0,0($sp)
    # Line 4979
    swc1	$f1,20($v0)
    # Line 4980
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 4978
    swc1	$f0,16($v0)
    b	.L0da44c1c
    ld	$ra,24($sp)
.end __gllc_PolygonOffset

# Function: __gllc_Indexub
# Declared: Line 4984 (Source lines: 4985-4997)
# Address: 0x0da44c60 - 0x0da44ce4 (Size: 132 bytes, Frame: 32)
.globl __gllc_Indexub
.ent __gllc_Indexub
__gllc_Indexub:
    # Line 4985
    lui	$v0,0x5
    # Line 4988
    lw	$at,4112($zero)
    # Line 4985
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-15496
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 4990
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 4988
    sd	$at,8($sp)
    # Line 4990
    li	$a1,4
    # Line 4985
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 4990
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44ca8
    ld	$ra,16($sp)
.L0da44c9c:
    # Line 4997
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da44ca8:
    # Line 4992
    li	$a1,221
    sh	$a1,12($v0)
    # Line 4996
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 4994
    ld	$a0,0($sp)
    # Line 4995
    ld	$a3,8($sp)
    # Line 4994
    sb	$a0,16($v0)
    # Line 4995
    lw	$v1,4996($a3)
    # Line 4996
    la	$a2,__glle_Indexubv
    move	$a1,$v0
    move	$a0,$a3
    # Line 4995
    ori	$v1,$v1,0x10
    # Line 4996
    jal	__glDlistAppendOp
    # Line 4995
    sw	$v1,4996($a3)
    b	.L0da44c9c
    ld	$ra,16($sp)
.end __gllc_Indexub

# Function: __gllc_Indexubv
# Declared: Line 5000 (Source lines: 5001-5013)
# Address: 0x0da44cf0 - 0x0da44d78 (Size: 136 bytes, Frame: 32)
.globl __gllc_Indexubv
.ent __gllc_Indexubv
__gllc_Indexubv:
    # Line 5001
    lui	$v0,0x5
    # Line 5004
    lw	$at,4112($zero)
    # Line 5001
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-15640
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5006
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5004
    sd	$at,8($sp)
    # Line 5006
    li	$a1,4
    # Line 5001
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5006
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44d3c
    # Line 5012
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,16($sp)
.L0da44d30:
    # Line 5013
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da44d3c:
    # Line 5008
    li	$a1,221
    sh	$a1,12($v0)
    # Line 5010
    ld	$a0,0($sp)
    # Line 5011
    ld	$a3,8($sp)
    # Line 5010
    lbu	$a0,0($a0)
    sb	$a0,16($v0)
    # Line 5011
    lw	$v1,4996($a3)
    # Line 5012
    la	$a2,__glle_Indexubv
    move	$a1,$v0
    move	$a0,$a3
    # Line 5011
    ori	$v1,$v1,0x10
    # Line 5012
    jal	__glDlistAppendOp
    # Line 5011
    sw	$v1,4996($a3)
    b	.L0da44d30
    ld	$ra,16($sp)
.end __gllc_Indexubv

# Function: __gllc_SampleMaskSGIS
# Declared: Line 5018 (Source lines: 5019-5031)
# Address: 0x0da44d80 - 0x0da44dfc (Size: 124 bytes, Frame: 48)
.globl __gllc_SampleMaskSGIS
.ent __gllc_SampleMaskSGIS
__gllc_SampleMaskSGIS:
    # Line 5022
    lw	$a0,4112($zero)
    # Line 5019
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 5022
    sd	$a0,16($sp)
    # Line 5019
    addiu	$at,$at,-15784
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 5024
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5019
    sd	$ra,24($sp)
    sd	$a1,8($sp)
    # Line 5024
    li	$a1,8
    jal	__glDlistAllocOp2
    # Line 5019
    sdc1	$f12,0($sp)
    # Line 5024
    bnez	$v0,.L0da44dcc
    # Line 5030
    la	$a2,__glle_SampleMaskSGIS
    ld	$ra,24($sp)
.L0da44dc0:
    # Line 5031
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da44dcc:
    # Line 5026
    li	$v1,222
    sh	$v1,12($v0)
    # Line 5029
    ld	$a0,8($sp)
    sb	$a0,20($v0)
    # Line 5030
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5028
    ldc1	$f0,0($sp)
    # Line 5030
    ld	$a0,16($sp)
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5028
    swc1	$f0,16($v0)
    b	.L0da44dc0
    ld	$ra,24($sp)
.end __gllc_SampleMaskSGIS

# Function: __gllc_SamplePatternSGIS
# Declared: Line 5034 (Source lines: 5035-5046)
# Address: 0x0da44e00 - 0x0da44e74 (Size: 116 bytes, Frame: 32)
.globl __gllc_SamplePatternSGIS
.ent __gllc_SamplePatternSGIS
__gllc_SamplePatternSGIS:
    # Line 5035
    lui	$v0,0x5
    # Line 5038
    lw	$at,4112($zero)
    # Line 5035
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-15912
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5040
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5038
    sd	$at,8($sp)
    # Line 5040
    li	$a1,4
    # Line 5035
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5040
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da44e48
    ld	$ra,16($sp)
.L0da44e3c:
    # Line 5046
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da44e48:
    # Line 5045
    la	$a2,__glle_SamplePatternSGIS
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5042
    li	$v1,223
    sh	$v1,12($v0)
    # Line 5044
    ld	$a3,0($sp)
    # Line 5045
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5044
    sw	$a3,16($v0)
    b	.L0da44e3c
    ld	$ra,16($sp)
.end __gllc_SamplePatternSGIS

# Function: __gllc_TagSampleBufferSGIX
# Declared: Line 5049 (Source lines: 5050-5058)
# Address: 0x0da44e80 - 0x0da44ee4 (Size: 100 bytes, Frame: 32)
.globl __gllc_TagSampleBufferSGIX
.ent __gllc_TagSampleBufferSGIX
__gllc_TagSampleBufferSGIX:
    # Line 5050
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,-16040
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 5054
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5052
    lw	$a0,4112($zero)
    # Line 5050
    sd	$ra,8($sp)
    # Line 5054
    move	$a1,$zero
    jal	__glDlistAllocOp2
    # Line 5052
    sd	$a0,0($sp)
    # Line 5054
    bnez	$v0,.L0da44ec0
    ld	$ra,8($sp)
.L0da44eb4:
    # Line 5058
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da44ec0:
    # Line 5057
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    la	$a2,__glle_TagSampleBufferSGIX
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 5056
    li	$v1,224
    # Line 5057
    jal	__glDlistAppendOp
    # Line 5056
    sh	$v1,12($v0)
    b	.L0da44eb4
    ld	$ra,8($sp)
.end __gllc_TagSampleBufferSGIX

# Function: __gllc_DetailTexFuncSGIS
# Declared: Line 5061 (Source lines: 5062-5084)
# Address: 0x0da44ef0 - 0x0da44fb8 (Size: 200 bytes, Frame: 192)
.globl __gllc_DetailTexFuncSGIS
.ent __gllc_DetailTexFuncSGIS
__gllc_DetailTexFuncSGIS:
    # Line 5062
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    sd	$s0,40($sp)
    # Line 5067
    lw	$s0,4112($zero)
    # Line 5062
    lui	$at,0x5
    sd	$s1,32($sp)
    # Line 5067
    sll	$s1,$a1,0x3
    sd	$ra,56($sp)
    # Line 5062
    addiu	$at,$at,-16152
    sd	$gp,48($sp)
    # Line 5067
    bltz	$s1,.L0da44fa4
    # Line 5062
    addu	$gp,$t9,$at
    # Line 5075
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da44f58
    sd	$v0,24($sp)
    ld	$ra,56($sp)
.L0da44f44:
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 5084
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da44f58:
    # Line 5081
    ld	$a1,16($sp)
    # Line 5079
    ld	$a5,0($sp)
    # Line 5080
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 5081
    # lw $t9, -18508($gp) # &memcpy
    # Line 5080
    sw	$a6,20($a4)
    # Line 5081
    move	$a2,$s1
    # Line 5077
    li	$a3,225
    # Line 5079
    sw	$a5,16($a4)
    # Line 5081
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 5077
    sh	$a3,12($a4)
    # Line 5083
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_DetailTexFuncSGIS
    b	.L0da44f44
    ld	$ra,56($sp)
.L0da44fa4:
    # Line 5071
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0da44f44
    ld	$ra,56($sp)
.end __gllc_DetailTexFuncSGIS

# Function: __gllc_SharpenTexFuncSGIS
# Declared: Line 5088 (Source lines: 5089-5111)
# Address: 0x0da44fc0 - 0x0da45088 (Size: 200 bytes, Frame: 192)
.globl __gllc_SharpenTexFuncSGIS
.ent __gllc_SharpenTexFuncSGIS
__gllc_SharpenTexFuncSGIS:
    # Line 5089
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    sd	$s0,40($sp)
    # Line 5094
    lw	$s0,4112($zero)
    # Line 5089
    lui	$at,0x5
    sd	$s1,32($sp)
    # Line 5094
    sll	$s1,$a1,0x3
    sd	$ra,56($sp)
    # Line 5089
    addiu	$at,$at,-16360
    sd	$gp,48($sp)
    # Line 5094
    bltz	$s1,.L0da45074
    # Line 5089
    addu	$gp,$t9,$at
    # Line 5102
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da45028
    sd	$v0,24($sp)
    ld	$ra,56($sp)
.L0da45014:
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 5111
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da45028:
    # Line 5108
    ld	$a1,16($sp)
    # Line 5106
    ld	$a5,0($sp)
    # Line 5107
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 5108
    # lw $t9, -18508($gp) # &memcpy
    # Line 5107
    sw	$a6,20($a4)
    # Line 5108
    move	$a2,$s1
    # Line 5104
    li	$a3,226
    # Line 5106
    sw	$a5,16($a4)
    # Line 5108
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 5104
    sh	$a3,12($a4)
    # Line 5110
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_SharpenTexFuncSGIS
    b	.L0da45014
    ld	$ra,56($sp)
.L0da45074:
    # Line 5098
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0da45014
    ld	$ra,56($sp)
.end __gllc_SharpenTexFuncSGIS

# Function: __gllc_ColorTableParameterfvSGI
# Declared: Line 5116 (Source lines: 5117-5139)
# Address: 0x0da45090 - 0x0da45164 (Size: 212 bytes, Frame: 192)
.globl __gllc_ColorTableParameterfvSGI
.ent __gllc_ColorTableParameterfvSGI
__gllc_ColorTableParameterfvSGI:
    # Line 5117
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 5122
    lw	$s0,4112($zero)
    # Line 5117
    addiu	$v0,$v0,-16568
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 5124
    # lw $t9, -26908($gp) # &__glColorTableParameterfvSGI_size
    # Line 5117
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 5124
    move	$a0,$a1
    jal	__glColorTableParameterfvSGI_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da45154
    # Line 5126
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 5130
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da45108
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da450f4:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 5139
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da45108:
    # Line 5136
    ld	$a1,16($sp)
    # Line 5134
    ld	$a5,0($sp)
    # Line 5135
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 5136
    # lw $t9, -18508($gp) # &memcpy
    # Line 5135
    sw	$a6,20($a4)
    # Line 5136
    move	$a2,$s1
    # Line 5132
    li	$a3,228
    # Line 5134
    sw	$a5,16($a4)
    # Line 5136
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 5132
    sh	$a3,12($a4)
    # Line 5138
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_ColorTableParameterfvSGI
    b	.L0da450f4
    ld	$ra,40($sp)
.L0da45154:
    # Line 5126
    jalr	$t9
    move	$a0,$s0
    b	.L0da450f4
    ld	$ra,40($sp)
.end __gllc_ColorTableParameterfvSGI

# Function: __gllc_ColorTableParameterivSGI
# Declared: Line 5142 (Source lines: 5143-5165)
# Address: 0x0da45170 - 0x0da45244 (Size: 212 bytes, Frame: 192)
.globl __gllc_ColorTableParameterivSGI
.ent __gllc_ColorTableParameterivSGI
__gllc_ColorTableParameterivSGI:
    # Line 5143
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 5148
    lw	$s0,4112($zero)
    # Line 5143
    addiu	$v0,$v0,-16792
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 5150
    # lw $t9, -26904($gp) # &__glColorTableParameterivSGI_size
    # Line 5143
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 5150
    move	$a0,$a1
    jal	__glColorTableParameterivSGI_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da45234
    # Line 5152
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 5156
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da451e8
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da451d4:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 5165
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da451e8:
    # Line 5162
    ld	$a1,16($sp)
    # Line 5160
    ld	$a5,0($sp)
    # Line 5161
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 5162
    # lw $t9, -18508($gp) # &memcpy
    # Line 5161
    sw	$a6,20($a4)
    # Line 5162
    move	$a2,$s1
    # Line 5158
    li	$a3,229
    # Line 5160
    sw	$a5,16($a4)
    # Line 5162
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 5158
    sh	$a3,12($a4)
    # Line 5164
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_ColorTableParameterivSGI
    b	.L0da451d4
    ld	$ra,40($sp)
.L0da45234:
    # Line 5152
    jalr	$t9
    move	$a0,$s0
    b	.L0da451d4
    ld	$ra,40($sp)
.end __gllc_ColorTableParameterivSGI

# Function: __gllc_CopyColorTableSGI
# Declared: Line 5168 (Source lines: 5169-5184)
# Address: 0x0da45250 - 0x0da452f4 (Size: 164 bytes, Frame: 192)
.globl __gllc_CopyColorTableSGI
.ent __gllc_CopyColorTableSGI
__gllc_CopyColorTableSGI:
    # Line 5169
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    # Line 5172
    lw	$at,4112($zero)
    sd	$at,8($sp)
    # Line 5169
    lui	$v0,0x5
    sd	$a2,32($sp)
    addiu	$v0,$v0,-17016
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 5174
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5169
    sd	$a1,16($sp)
    # Line 5174
    li	$a1,20
    # Line 5169
    sd	$a0,0($sp)
    sd	$ra,48($sp)
    # Line 5174
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da452a8
    ld	$ra,48($sp)
.L0da4529c:
    # Line 5184
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da452a8:
    # Line 5183
    la	$a2,__glle_CopyColorTableSGI
    ld	$a0,8($sp)
    # Line 5176
    li	$v1,230
    sh	$v1,12($v0)
    # Line 5178
    ld	$a3,0($sp)
    # Line 5179
    ld	$a4,16($sp)
    # Line 5180
    ld	$a5,32($sp)
    # Line 5181
    ld	$a6,40($sp)
    # Line 5182
    ld	$a7,24($sp)
    sw	$a7,32($v0)
    # Line 5181
    sw	$a6,28($v0)
    # Line 5183
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5180
    sw	$a5,24($v0)
    # Line 5179
    sw	$a4,20($v0)
    # Line 5183
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5178
    sw	$a3,16($v0)
    b	.L0da4529c
    ld	$ra,48($sp)
.end __gllc_CopyColorTableSGI

# Function: __gllc_PixelTexGenSGIX
# Declared: Line 5192 (Source lines: 5193-5204)
# Address: 0x0da45300 - 0x0da45374 (Size: 116 bytes, Frame: 32)
.globl __gllc_PixelTexGenSGIX
.ent __gllc_PixelTexGenSGIX
__gllc_PixelTexGenSGIX:
    # Line 5193
    lui	$v0,0x5
    # Line 5196
    lw	$at,4112($zero)
    # Line 5193
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-17192
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5198
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5196
    sd	$at,8($sp)
    # Line 5198
    li	$a1,4
    # Line 5193
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5198
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4534c
    # Line 5203
    la	$a2,__glle_PixelTexGenSGIX
    ld	$ra,16($sp)
.L0da45340:
    # Line 5204
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4534c:
    # Line 5203
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5200
    li	$v1,233
    sh	$v1,12($v0)
    # Line 5202
    ld	$a3,0($sp)
    # Line 5203
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5202
    sw	$a3,16($v0)
    b	.L0da45340
    ld	$ra,16($sp)
.end __gllc_PixelTexGenSGIX

# Function: __gllc_SpriteParameterfSGIX
# Declared: Line 5207 (Source lines: 5208-5220)
# Address: 0x0da45380 - 0x0da45400 (Size: 128 bytes, Frame: 48)
.globl __gllc_SpriteParameterfSGIX
.ent __gllc_SpriteParameterfSGIX
__gllc_SpriteParameterfSGIX:
    # Line 5211
    lw	$at,4112($zero)
    # Line 5208
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 5211
    sd	$at,16($sp)
    # Line 5208
    addiu	$v0,$v0,-17320
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 5213
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5208
    sdc1	$f13,0($sp)
    # Line 5213
    li	$a1,8
    # Line 5208
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 5213
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da453cc
    ld	$ra,24($sp)
.L0da453c0:
    # Line 5220
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da453cc:
    # Line 5219
    la	$a2,__glle_SpriteParameterfSGIX
    ld	$a0,16($sp)
    # Line 5215
    li	$v1,234
    sh	$v1,12($v0)
    # Line 5217
    ld	$a3,8($sp)
    # Line 5219
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5218
    ldc1	$f0,0($sp)
    # Line 5217
    sw	$a3,16($v0)
    # Line 5219
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5218
    swc1	$f0,20($v0)
    b	.L0da453c0
    ld	$ra,24($sp)
.end __gllc_SpriteParameterfSGIX

# Function: __gllc_SpriteParameterfvSGIX
# Declared: Line 5223 (Source lines: 5224-5245)
# Address: 0x0da45400 - 0x0da454c4 (Size: 196 bytes, Frame: 192)
.globl __gllc_SpriteParameterfvSGIX
.ent __gllc_SpriteParameterfvSGIX
__gllc_SpriteParameterfvSGIX:
    # Line 5224
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,-17448
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 5231
    # lw $t9, -26900($gp) # &__glSpriteParameterfvSGIX_size
    # Line 5229
    lw	$s0,4112($zero)
    # Line 5224
    sd	$ra,32($sp)
    # Line 5231
    jal	__glSpriteParameterfvSGIX_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da454b0
    # Line 5237
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da4546c
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da45458:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 5245
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da4546c:
    # Line 5242
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 5241
    ld	$a5,0($sp)
    # Line 5242
    move	$a2,$s1
    # Line 5239
    li	$a3,235
    # Line 5241
    sw	$a5,16($a4)
    # Line 5242
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 5239
    sh	$a3,12($a4)
    # Line 5244
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_SpriteParameterfvSGIX
    b	.L0da45458
    ld	$ra,32($sp)
.L0da454b0:
    # Line 5233
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da45458
    ld	$ra,32($sp)
.end __gllc_SpriteParameterfvSGIX

# Function: __gllc_SpriteParameteriSGIX
# Declared: Line 5248 (Source lines: 5249-5261)
# Address: 0x0da454d0 - 0x0da45550 (Size: 128 bytes, Frame: 48)
.globl __gllc_SpriteParameteriSGIX
.ent __gllc_SpriteParameteriSGIX
__gllc_SpriteParameteriSGIX:
    # Line 5252
    lw	$at,4112($zero)
    # Line 5249
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 5252
    sd	$at,16($sp)
    # Line 5249
    addiu	$v0,$v0,-17656
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 5254
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5249
    sd	$a1,8($sp)
    # Line 5254
    li	$a1,8
    # Line 5249
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 5254
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45520
    # Line 5260
    la	$a2,__glle_SpriteParameteriSGIX
    ld	$ra,24($sp)
.L0da45514:
    # Line 5261
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da45520:
    # Line 5260
    ld	$a0,16($sp)
    # Line 5256
    li	$v1,236
    sh	$v1,12($v0)
    # Line 5258
    ld	$a3,0($sp)
    # Line 5260
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5259
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 5260
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5258
    sw	$a3,16($v0)
    b	.L0da45514
    ld	$ra,24($sp)
.end __gllc_SpriteParameteriSGIX

# Function: __gllc_SpriteParameterivSGIX
# Declared: Line 5264 (Source lines: 5265-5286)
# Address: 0x0da45550 - 0x0da45614 (Size: 196 bytes, Frame: 192)
.globl __gllc_SpriteParameterivSGIX
.ent __gllc_SpriteParameterivSGIX
__gllc_SpriteParameterivSGIX:
    # Line 5265
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,-17784
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 5272
    # lw $t9, -26896($gp) # &__glSpriteParameterivSGIX_size
    # Line 5270
    lw	$s0,4112($zero)
    # Line 5265
    sd	$ra,32($sp)
    # Line 5272
    jal	__glSpriteParameterivSGIX_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da45604
    # Line 5274
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 5278
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da455c0
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da455ac:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 5286
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da455c0:
    # Line 5283
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 5282
    ld	$a5,0($sp)
    # Line 5283
    move	$a2,$s1
    # Line 5280
    li	$a3,237
    # Line 5282
    sw	$a5,16($a4)
    # Line 5283
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 5280
    sh	$a3,12($a4)
    # Line 5285
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_SpriteParameterivSGIX
    b	.L0da455ac
    ld	$ra,32($sp)
.L0da45604:
    # Line 5274
    jalr	$t9
    move	$a0,$s0
    b	.L0da455ac
    ld	$ra,32($sp)
.end __gllc_SpriteParameterivSGIX

# Function: __gllc_TexFilterFuncSGIS
# Declared: Line 5290 (Source lines: 5291-5314)
# Address: 0x0da45620 - 0x0da456f4 (Size: 212 bytes, Frame: 208)
.globl __gllc_TexFilterFuncSGIS
.ent __gllc_TexFilterFuncSGIS
__gllc_TexFilterFuncSGIS:
    # Line 5291
    addiu	$sp,$sp,-80
    sd	$a3,8($sp)
    sd	$a2,24($sp)
    sd	$a1,16($sp)
    sd	$a0,0($sp)
    sd	$s0,48($sp)
    # Line 5296
    lw	$s0,4112($zero)
    # Line 5291
    lui	$at,0x5
    sd	$s1,40($sp)
    # Line 5296
    sll	$s1,$a2,0x2
    sd	$ra,64($sp)
    # Line 5291
    addiu	$at,$at,-17992
    sd	$gp,56($sp)
    # Line 5296
    bltz	$s1,.L0da456e0
    # Line 5291
    addu	$gp,$t9,$at
    # Line 5304
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,12
    bnez	$v0,.L0da4568c
    sd	$v0,32($sp)
    ld	$ra,64($sp)
.L0da45678:
    ld	$s1,40($sp)
    ld	$s0,48($sp)
    # Line 5314
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da4568c:
    # Line 5311
    ld	$a1,8($sp)
    # Line 5308
    ld	$a5,0($sp)
    # Line 5309
    ld	$a6,16($sp)
    # Line 5310
    ld	$a4,32($sp)
    ld	$a7,24($sp)
    sw	$a7,24($a4)
    # Line 5311
    # lw $t9, -18508($gp) # &memcpy
    # Line 5309
    sw	$a6,20($a4)
    # Line 5311
    move	$a2,$s1
    # Line 5306
    li	$a3,238
    # Line 5308
    sw	$a5,16($a4)
    # Line 5311
    addiu	$a0,$a4,28
    jal	memcpy
    # Line 5306
    sh	$a3,12($a4)
    # Line 5313
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,32($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexFilterFuncSGIS
    b	.L0da45678
    ld	$ra,64($sp)
.L0da456e0:
    # Line 5300
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0da45678
    ld	$ra,64($sp)
.end __gllc_TexFilterFuncSGIS

# Function: __gllc_PointParameterfSGIS
# Declared: Line 5317 (Source lines: 5318-5330)
# Address: 0x0da45700 - 0x0da45780 (Size: 128 bytes, Frame: 48)
.globl __gllc_PointParameterfSGIS
.ent __gllc_PointParameterfSGIS
__gllc_PointParameterfSGIS:
    # Line 5321
    lw	$at,4112($zero)
    # Line 5318
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 5321
    sd	$at,16($sp)
    # Line 5318
    addiu	$v0,$v0,-18216
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 5323
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5318
    sdc1	$f13,0($sp)
    # Line 5323
    li	$a1,8
    # Line 5318
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 5323
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45750
    # Line 5329
    la	$a2,__glle_PointParameterfSGIS
    ld	$ra,24($sp)
.L0da45744:
    # Line 5330
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da45750:
    # Line 5329
    ld	$a0,16($sp)
    # Line 5325
    li	$v1,239
    sh	$v1,12($v0)
    # Line 5327
    ld	$a3,8($sp)
    # Line 5329
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5328
    ldc1	$f0,0($sp)
    # Line 5327
    sw	$a3,16($v0)
    # Line 5329
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5328
    swc1	$f0,20($v0)
    b	.L0da45744
    ld	$ra,24($sp)
.end __gllc_PointParameterfSGIS

# Function: __gllc_PointParameterfvSGIS
# Declared: Line 5333 (Source lines: 5334-5355)
# Address: 0x0da45780 - 0x0da45844 (Size: 196 bytes, Frame: 192)
.globl __gllc_PointParameterfvSGIS
.ent __gllc_PointParameterfvSGIS
__gllc_PointParameterfvSGIS:
    # Line 5334
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,-18344
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 5341
    # lw $t9, -26892($gp) # &__glPointParameterfvSGIS_size
    # Line 5339
    lw	$s0,4112($zero)
    # Line 5334
    sd	$ra,32($sp)
    # Line 5341
    jal	__glPointParameterfvSGIS_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da45834
    # Line 5343
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 5347
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da457f0
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da457dc:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 5355
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da457f0:
    # Line 5352
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 5351
    ld	$a5,0($sp)
    # Line 5352
    move	$a2,$s1
    # Line 5349
    li	$a3,240
    # Line 5351
    sw	$a5,16($a4)
    # Line 5352
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 5349
    sh	$a3,12($a4)
    # Line 5354
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_PointParameterfvSGIS
    b	.L0da457dc
    ld	$ra,32($sp)
.L0da45834:
    # Line 5343
    jalr	$t9
    move	$a0,$s0
    b	.L0da457dc
    ld	$ra,32($sp)
.end __gllc_PointParameterfvSGIS

# Function: __gllc_FogFuncSGIS
# Declared: Line 5358 (Source lines: 5359-5380)
# Address: 0x0da45850 - 0x0da4590c (Size: 188 bytes, Frame: 192)
.globl __gllc_FogFuncSGIS
.ent __gllc_FogFuncSGIS
__gllc_FogFuncSGIS:
    # Line 5359
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    sd	$s0,24($sp)
    # Line 5364
    lw	$s0,4112($zero)
    # Line 5359
    lui	$at,0x5
    sd	$s1,32($sp)
    # Line 5364
    sll	$s1,$a0,0x3
    sd	$ra,48($sp)
    # Line 5359
    addiu	$at,$at,-18552
    sd	$gp,40($sp)
    # Line 5364
    bltz	$s1,.L0da458f8
    # Line 5359
    addu	$gp,$t9,$at
    # Line 5372
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da458b4
    sd	$v0,16($sp)
    ld	$ra,48($sp)
.L0da458a0:
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 5380
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da458b4:
    # Line 5377
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 5376
    ld	$a5,0($sp)
    # Line 5377
    move	$a2,$s1
    # Line 5374
    li	$a3,241
    # Line 5376
    sw	$a5,16($a4)
    # Line 5377
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 5374
    sh	$a3,12($a4)
    # Line 5379
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_FogFuncSGIS
    b	.L0da458a0
    ld	$ra,48($sp)
.L0da458f8:
    # Line 5368
    # lw $t9, -30844($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0da458a0
    ld	$ra,48($sp)
.end __gllc_FogFuncSGIS

# Function: __gllc_ReadInstrumentsSGIX
# Declared: Line 5386 (Source lines: 5387-5398)
# Address: 0x0da45910 - 0x0da45984 (Size: 116 bytes, Frame: 32)
.globl __gllc_ReadInstrumentsSGIX
.ent __gllc_ReadInstrumentsSGIX
__gllc_ReadInstrumentsSGIX:
    # Line 5387
    lui	$v0,0x5
    # Line 5390
    lw	$at,4112($zero)
    # Line 5387
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-18744
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5392
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5390
    sd	$at,8($sp)
    # Line 5392
    li	$a1,4
    # Line 5387
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5392
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45958
    ld	$ra,16($sp)
.L0da4594c:
    # Line 5398
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da45958:
    # Line 5397
    la	$a2,__glle_ReadInstrumentsSGIX
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5394
    li	$v1,242
    sh	$v1,12($v0)
    # Line 5396
    ld	$a3,0($sp)
    # Line 5397
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5396
    sw	$a3,16($v0)
    b	.L0da4594c
    ld	$ra,16($sp)
.end __gllc_ReadInstrumentsSGIX

# Function: __gllc_StartInstrumentsSGIX
# Declared: Line 5401 (Source lines: 5402-5410)
# Address: 0x0da45990 - 0x0da459f4 (Size: 100 bytes, Frame: 32)
.globl __gllc_StartInstrumentsSGIX
.ent __gllc_StartInstrumentsSGIX
__gllc_StartInstrumentsSGIX:
    # Line 5402
    lui	$at,0x5
    addiu	$sp,$sp,-32
    addiu	$at,$at,-18872
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 5406
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5404
    lw	$a0,4112($zero)
    # Line 5402
    sd	$ra,8($sp)
    # Line 5406
    move	$a1,$zero
    jal	__glDlistAllocOp2
    # Line 5404
    sd	$a0,0($sp)
    # Line 5406
    bnez	$v0,.L0da459d4
    # Line 5409
    nop	# was lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$ra,8($sp)
.L0da459c8:
    # Line 5410
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da459d4:
    # Line 5409
    la	$a2,__glle_StartInstrumentsSGIX
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 5408
    li	$v1,243
    # Line 5409
    jal	__glDlistAppendOp
    # Line 5408
    sh	$v1,12($v0)
    b	.L0da459c8
    ld	$ra,8($sp)
.end __gllc_StartInstrumentsSGIX

# Function: __gllc_StopInstrumentsSGIX
# Declared: Line 5413 (Source lines: 5414-5425)
# Address: 0x0da45a00 - 0x0da45a74 (Size: 116 bytes, Frame: 32)
.globl __gllc_StopInstrumentsSGIX
.ent __gllc_StopInstrumentsSGIX
__gllc_StopInstrumentsSGIX:
    # Line 5414
    lui	$v0,0x5
    # Line 5417
    lw	$at,4112($zero)
    # Line 5414
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-18984
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5419
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5417
    sd	$at,8($sp)
    # Line 5419
    li	$a1,4
    # Line 5414
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5419
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45a4c
    # Line 5424
    la	$a2,__glle_StopInstrumentsSGIX
    ld	$ra,16($sp)
.L0da45a40:
    # Line 5425
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da45a4c:
    # Line 5424
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5421
    li	$v1,244
    sh	$v1,12($v0)
    # Line 5423
    ld	$a3,0($sp)
    # Line 5424
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5423
    sw	$a3,16($v0)
    b	.L0da45a40
    ld	$ra,16($sp)
.end __gllc_StopInstrumentsSGIX

# Function: __gllc_ReferencePlaneSGIX
# Declared: Line 5429 (Source lines: 5430-5445)
# Address: 0x0da45a80 - 0x0da45b18 (Size: 152 bytes, Frame: 32)
.globl __gllc_ReferencePlaneSGIX
.ent __gllc_ReferencePlaneSGIX
__gllc_ReferencePlaneSGIX:
    # Line 5430
    lui	$v0,0x5
    # Line 5433
    lw	$at,4112($zero)
    # Line 5430
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-19112
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5435
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5433
    sd	$at,8($sp)
    # Line 5435
    li	$a1,32
    # Line 5430
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5435
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45acc
    # Line 5438
    li	$a0,1
    ld	$ra,16($sp)
.L0da45ac0:
    # Line 5445
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da45acc:
    # Line 5438
    sb	$a0,14($v0)
    # Line 5440
    ld	$v1,0($sp)
    # Line 5437
    li	$a1,245
    sh	$a1,12($v0)
    # Line 5440
    ldc1	$f3,0($v1)
    sdc1	$f3,16($v0)
    # Line 5441
    ldc1	$f2,8($v1)
    # Line 5444
    la	$a2,__glle_ReferencePlaneSGIX
    # Line 5441
    sdc1	$f2,24($v0)
    # Line 5442
    ldc1	$f1,16($v1)
    # Line 5444
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5442
    sdc1	$f1,32($v0)
    # Line 5443
    ldc1	$f0,24($v1)
    # Line 5444
    ld	$a0,8($sp)
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5443
    sdc1	$f0,40($v0)
    b	.L0da45ac0
    ld	$ra,16($sp)
.end __gllc_ReferencePlaneSGIX

# Function: __gllc_FrameZoomSGIX
# Declared: Line 5448 (Source lines: 5449-5460)
# Address: 0x0da45b20 - 0x0da45b94 (Size: 116 bytes, Frame: 32)
.globl __gllc_FrameZoomSGIX
.ent __gllc_FrameZoomSGIX
__gllc_FrameZoomSGIX:
    # Line 5449
    lui	$v0,0x5
    # Line 5452
    lw	$at,4112($zero)
    # Line 5449
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-19272
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5454
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5452
    sd	$at,8($sp)
    # Line 5454
    li	$a1,4
    # Line 5449
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5454
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45b68
    ld	$ra,16($sp)
.L0da45b5c:
    # Line 5460
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da45b68:
    # Line 5459
    la	$a2,__glle_FrameZoomSGIX
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5456
    li	$v1,246
    sh	$v1,12($v0)
    # Line 5458
    ld	$a3,0($sp)
    # Line 5459
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5458
    sw	$a3,16($v0)
    b	.L0da45b5c
    ld	$ra,16($sp)
.end __gllc_FrameZoomSGIX

# Function: __gllc_DeformSGIX
# Declared: Line 5466 (Source lines: 5467-5478)
# Address: 0x0da45ba0 - 0x0da45c14 (Size: 116 bytes, Frame: 32)
.globl __gllc_DeformSGIX
.ent __gllc_DeformSGIX
__gllc_DeformSGIX:
    # Line 5467
    lui	$v0,0x5
    # Line 5470
    lw	$at,4112($zero)
    # Line 5467
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-19400
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5472
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5470
    sd	$at,8($sp)
    # Line 5472
    li	$a1,4
    # Line 5467
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5472
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45bec
    # Line 5477
    la	$a2,__glle_DeformSGIX
    ld	$ra,16($sp)
.L0da45be0:
    # Line 5478
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da45bec:
    # Line 5477
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5474
    li	$v1,249
    sh	$v1,12($v0)
    # Line 5476
    ld	$a3,0($sp)
    # Line 5477
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5476
    sw	$a3,16($v0)
    b	.L0da45be0
    ld	$ra,16($sp)
.end __gllc_DeformSGIX

# Function: __gllc_LoadIdentityDeformationMapSGIX
# Declared: Line 5481 (Source lines: 5482-5493)
# Address: 0x0da45c20 - 0x0da45c94 (Size: 116 bytes, Frame: 32)
.globl __gllc_LoadIdentityDeformationMapSGIX
.ent __gllc_LoadIdentityDeformationMapSGIX
__gllc_LoadIdentityDeformationMapSGIX:
    # Line 5482
    lui	$v0,0x5
    # Line 5485
    lw	$at,4112($zero)
    # Line 5482
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-19528
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5487
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5485
    sd	$at,8($sp)
    # Line 5487
    li	$a1,4
    # Line 5482
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5487
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45c6c
    # Line 5492
    la	$a2,__glle_LoadIdentityDeformationMapSGIX
    ld	$ra,16($sp)
.L0da45c60:
    # Line 5493
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da45c6c:
    # Line 5492
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5489
    li	$v1,250
    sh	$v1,12($v0)
    # Line 5491
    ld	$a3,0($sp)
    # Line 5492
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5491
    sw	$a3,16($v0)
    b	.L0da45c60
    ld	$ra,16($sp)
.end __gllc_LoadIdentityDeformationMapSGIX

# Function: __gllc_CopyColorSubTable
# Declared: Line 5503 (Source lines: 5504-5519)
# Address: 0x0da45ca0 - 0x0da45d44 (Size: 164 bytes, Frame: 192)
.globl __gllc_CopyColorSubTable
.ent __gllc_CopyColorSubTable
__gllc_CopyColorSubTable:
    # Line 5504
    addiu	$sp,$sp,-64
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    # Line 5507
    lw	$at,4112($zero)
    sd	$at,8($sp)
    # Line 5504
    lui	$v0,0x5
    sd	$a2,32($sp)
    addiu	$v0,$v0,-19656
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 5509
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5504
    sd	$a1,16($sp)
    # Line 5509
    li	$a1,20
    # Line 5504
    sd	$a0,0($sp)
    sd	$ra,48($sp)
    # Line 5509
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45cfc
    # Line 5518
    la	$a2,__glle_CopyColorSubTable
    ld	$ra,48($sp)
.L0da45cf0:
    # Line 5519
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da45cfc:
    # Line 5518
    ld	$a0,8($sp)
    # Line 5511
    li	$v1,252
    sh	$v1,12($v0)
    # Line 5513
    ld	$a3,0($sp)
    # Line 5514
    ld	$a4,16($sp)
    # Line 5515
    ld	$a5,32($sp)
    # Line 5516
    ld	$a6,40($sp)
    # Line 5517
    ld	$a7,24($sp)
    sw	$a7,32($v0)
    # Line 5516
    sw	$a6,28($v0)
    # Line 5518
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5515
    sw	$a5,24($v0)
    # Line 5514
    sw	$a4,20($v0)
    # Line 5518
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5513
    sw	$a3,16($v0)
    b	.L0da45cf0
    ld	$ra,48($sp)
.end __gllc_CopyColorSubTable

# Function: __gllc_PixelTexGenParameteriSGIS
# Declared: Line 5524 (Source lines: 5525-5537)
# Address: 0x0da45d50 - 0x0da45dd0 (Size: 128 bytes, Frame: 48)
.globl __gllc_PixelTexGenParameteriSGIS
.ent __gllc_PixelTexGenParameteriSGIS
__gllc_PixelTexGenParameteriSGIS:
    # Line 5528
    lw	$at,4112($zero)
    # Line 5525
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 5528
    sd	$at,16($sp)
    # Line 5525
    addiu	$v0,$v0,-19832
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 5530
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5525
    sd	$a1,8($sp)
    # Line 5530
    li	$a1,8
    # Line 5525
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 5530
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45d9c
    ld	$ra,24($sp)
.L0da45d90:
    # Line 5537
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da45d9c:
    # Line 5536
    la	$a2,__glle_PixelTexGenParameteriSGIS
    ld	$a0,16($sp)
    # Line 5532
    li	$v1,254
    sh	$v1,12($v0)
    # Line 5534
    ld	$a3,0($sp)
    # Line 5536
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5535
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 5536
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5534
    sw	$a3,16($v0)
    b	.L0da45d90
    ld	$ra,24($sp)
.end __gllc_PixelTexGenParameteriSGIS

# Function: __gllc_PixelTexGenParameterivSGIS
# Declared: Line 5540 (Source lines: 5541-5562)
# Address: 0x0da45dd0 - 0x0da45e94 (Size: 196 bytes, Frame: 192)
.globl __gllc_PixelTexGenParameterivSGIS
.ent __gllc_PixelTexGenParameterivSGIS
__gllc_PixelTexGenParameterivSGIS:
    # Line 5541
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,-19960
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 5548
    # lw $t9, -26884($gp) # &__glPixelTexGenParameterivSGIS_size
    # Line 5546
    lw	$s0,4112($zero)
    # Line 5541
    sd	$ra,32($sp)
    # Line 5548
    jal	__glPixelTexGenParameterivSGIS_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da45e80
    # Line 5554
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da45e3c
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da45e28:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 5562
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da45e3c:
    # Line 5559
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 5558
    ld	$a5,0($sp)
    # Line 5559
    move	$a2,$s1
    # Line 5556
    li	$a3,255
    # Line 5558
    sw	$a5,16($a4)
    # Line 5559
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 5556
    sh	$a3,12($a4)
    # Line 5561
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelTexGenParameterivSGIS
    b	.L0da45e28
    ld	$ra,32($sp)
.L0da45e80:
    # Line 5550
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da45e28
    ld	$ra,32($sp)
.end __gllc_PixelTexGenParameterivSGIS

# Function: __gllc_PixelTexGenParameterfSGIS
# Declared: Line 5565 (Source lines: 5566-5578)
# Address: 0x0da45ea0 - 0x0da45f20 (Size: 128 bytes, Frame: 48)
.globl __gllc_PixelTexGenParameterfSGIS
.ent __gllc_PixelTexGenParameterfSGIS
__gllc_PixelTexGenParameterfSGIS:
    # Line 5569
    lw	$at,4112($zero)
    # Line 5566
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 5569
    sd	$at,16($sp)
    # Line 5566
    addiu	$v0,$v0,-20168
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 5571
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5566
    sdc1	$f13,0($sp)
    # Line 5571
    li	$a1,8
    # Line 5566
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 5571
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da45eec
    ld	$ra,24($sp)
.L0da45ee0:
    # Line 5578
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da45eec:
    # Line 5577
    la	$a2,__glle_PixelTexGenParameterfSGIS
    ld	$a0,16($sp)
    # Line 5573
    li	$v1,256
    sh	$v1,12($v0)
    # Line 5575
    ld	$a3,8($sp)
    # Line 5577
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5576
    ldc1	$f0,0($sp)
    # Line 5575
    sw	$a3,16($v0)
    # Line 5577
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5576
    swc1	$f0,20($v0)
    b	.L0da45ee0
    ld	$ra,24($sp)
.end __gllc_PixelTexGenParameterfSGIS

# Function: __gllc_PixelTexGenParameterfvSGIS
# Declared: Line 5581 (Source lines: 5582-5603)
# Address: 0x0da45f20 - 0x0da45fe4 (Size: 196 bytes, Frame: 192)
.globl __gllc_PixelTexGenParameterfvSGIS
.ent __gllc_PixelTexGenParameterfvSGIS
__gllc_PixelTexGenParameterfvSGIS:
    # Line 5582
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,-20296
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 5589
    # lw $t9, -26880($gp) # &__glPixelTexGenParameterfvSGIS_size
    # Line 5587
    lw	$s0,4112($zero)
    # Line 5582
    sd	$ra,32($sp)
    # Line 5589
    jal	__glPixelTexGenParameterfvSGIS_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da45fd0
    # Line 5595
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da45f8c
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da45f78:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 5603
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da45f8c:
    # Line 5600
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 5599
    ld	$a5,0($sp)
    # Line 5600
    move	$a2,$s1
    # Line 5597
    li	$a3,257
    # Line 5599
    sw	$a5,16($a4)
    # Line 5600
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 5597
    sh	$a3,12($a4)
    # Line 5602
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_PixelTexGenParameterfvSGIS
    b	.L0da45f78
    ld	$ra,32($sp)
.L0da45fd0:
    # Line 5591
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da45f78
    ld	$ra,32($sp)
.end __gllc_PixelTexGenParameterfvSGIS

# Function: __gllc_AsyncMarkerSGIX
# Declared: Line 5608 (Source lines: 5609-5620)
# Address: 0x0da45ff0 - 0x0da46064 (Size: 116 bytes, Frame: 32)
.globl __gllc_AsyncMarkerSGIX
.ent __gllc_AsyncMarkerSGIX
__gllc_AsyncMarkerSGIX:
    # Line 5609
    lui	$v0,0x5
    # Line 5612
    lw	$at,4112($zero)
    # Line 5609
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-20504
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 5614
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5612
    sd	$at,8($sp)
    # Line 5614
    li	$a1,4
    # Line 5609
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 5614
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4603c
    # Line 5619
    la	$a2,__glle_AsyncMarkerSGIX
    ld	$ra,16($sp)
.L0da46030:
    # Line 5620
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da4603c:
    # Line 5619
    ld	$a0,8($sp)
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5616
    li	$v1,258
    sh	$v1,12($v0)
    # Line 5618
    ld	$a3,0($sp)
    # Line 5619
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5618
    sw	$a3,16($v0)
    b	.L0da46030
    ld	$ra,16($sp)
.end __gllc_AsyncMarkerSGIX

# Function: __gllc_FragmentColorMaterialSGIX
# Declared: Line 5628 (Source lines: 5629-5641)
# Address: 0x0da46070 - 0x0da460f0 (Size: 128 bytes, Frame: 48)
.globl __gllc_FragmentColorMaterialSGIX
.ent __gllc_FragmentColorMaterialSGIX
__gllc_FragmentColorMaterialSGIX:
    # Line 5632
    lw	$at,4112($zero)
    # Line 5629
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 5632
    sd	$at,16($sp)
    # Line 5629
    addiu	$v0,$v0,-20632
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 5634
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5629
    sd	$a1,8($sp)
    # Line 5634
    li	$a1,8
    # Line 5629
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 5634
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da460bc
    ld	$ra,24($sp)
.L0da460b0:
    # Line 5641
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da460bc:
    # Line 5640
    la	$a2,__glle_FragmentColorMaterialSGIX
    ld	$a0,16($sp)
    # Line 5636
    li	$v1,259
    sh	$v1,12($v0)
    # Line 5638
    ld	$a3,0($sp)
    # Line 5640
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5639
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 5640
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5638
    sw	$a3,16($v0)
    b	.L0da460b0
    ld	$ra,24($sp)
.end __gllc_FragmentColorMaterialSGIX

# Function: __gllc_FragmentLightfSGIX
# Declared: Line 5644 (Source lines: 5645-5658)
# Address: 0x0da460f0 - 0x0da4617c (Size: 140 bytes, Frame: 48)
.globl __gllc_FragmentLightfSGIX
.ent __gllc_FragmentLightfSGIX
__gllc_FragmentLightfSGIX:
    # Line 5648
    lw	$at,4112($zero)
    # Line 5645
    addiu	$sp,$sp,-48
    # Line 5648
    sd	$at,24($sp)
    # Line 5645
    lui	$v0,0x5
    sdc1	$f14,0($sp)
    addiu	$v0,$v0,-20760
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 5650
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5645
    sd	$a1,16($sp)
    # Line 5650
    li	$a1,12
    # Line 5645
    sd	$a0,8($sp)
    sd	$ra,32($sp)
    # Line 5650
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da46144
    # Line 5657
    la	$a2,__glle_FragmentLightfSGIX
    ld	$ra,32($sp)
.L0da46138:
    # Line 5658
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da46144:
    # Line 5657
    ld	$a0,24($sp)
    # Line 5652
    li	$v1,260
    sh	$v1,12($v0)
    # Line 5654
    ld	$a3,8($sp)
    # Line 5655
    ld	$a4,16($sp)
    sw	$a4,20($v0)
    # Line 5657
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5656
    ldc1	$f0,0($sp)
    # Line 5654
    sw	$a3,16($v0)
    # Line 5657
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5656
    swc1	$f0,24($v0)
    b	.L0da46138
    ld	$ra,32($sp)
.end __gllc_FragmentLightfSGIX

# Function: __gllc_FragmentLightfvSGIX
# Declared: Line 5661 (Source lines: 5662-5684)
# Address: 0x0da46180 - 0x0da46254 (Size: 212 bytes, Frame: 192)
.globl __gllc_FragmentLightfvSGIX
.ent __gllc_FragmentLightfvSGIX
__gllc_FragmentLightfvSGIX:
    # Line 5662
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 5667
    lw	$s0,4112($zero)
    # Line 5662
    addiu	$v0,$v0,-20904
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 5669
    # lw $t9, -26868($gp) # &__glFragmentLightfvSGIX_size
    # Line 5662
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 5669
    move	$a0,$a1
    jal	__glFragmentLightfvSGIX_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da46244
    # Line 5671
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 5675
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da461f8
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da461e4:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 5684
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da461f8:
    # Line 5681
    ld	$a1,16($sp)
    # Line 5679
    ld	$a5,0($sp)
    # Line 5680
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 5681
    # lw $t9, -18508($gp) # &memcpy
    # Line 5680
    sw	$a6,20($a4)
    # Line 5681
    move	$a2,$s1
    # Line 5677
    li	$a3,261
    # Line 5679
    sw	$a5,16($a4)
    # Line 5681
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 5677
    sh	$a3,12($a4)
    # Line 5683
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_FragmentLightfvSGIX
    b	.L0da461e4
    ld	$ra,40($sp)
.L0da46244:
    # Line 5671
    jalr	$t9
    move	$a0,$s0
    b	.L0da461e4
    ld	$ra,40($sp)
.end __gllc_FragmentLightfvSGIX

# Function: __gllc_FragmentLightiSGIX
# Declared: Line 5687 (Source lines: 5688-5701)
# Address: 0x0da46260 - 0x0da462ec (Size: 140 bytes, Frame: 48)
.globl __gllc_FragmentLightiSGIX
.ent __gllc_FragmentLightiSGIX
__gllc_FragmentLightiSGIX:
    # Line 5691
    lw	$at,4112($zero)
    # Line 5688
    addiu	$sp,$sp,-48
    # Line 5691
    sd	$at,24($sp)
    # Line 5688
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,-21128
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 5693
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5688
    sd	$a1,8($sp)
    # Line 5693
    li	$a1,12
    # Line 5688
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 5693
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da462b4
    # Line 5700
    la	$a2,__glle_FragmentLightiSGIX
    ld	$ra,32($sp)
.L0da462a8:
    # Line 5701
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da462b4:
    # Line 5700
    ld	$a0,24($sp)
    # Line 5695
    li	$v1,262
    sh	$v1,12($v0)
    # Line 5697
    ld	$a3,0($sp)
    # Line 5698
    ld	$a4,8($sp)
    # Line 5699
    ld	$a5,16($sp)
    # Line 5700
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5699
    sw	$a5,24($v0)
    # Line 5698
    sw	$a4,20($v0)
    # Line 5700
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5697
    sw	$a3,16($v0)
    b	.L0da462a8
    ld	$ra,32($sp)
.end __gllc_FragmentLightiSGIX

# Function: __gllc_FragmentLightivSGIX
# Declared: Line 5704 (Source lines: 5705-5727)
# Address: 0x0da462f0 - 0x0da463c4 (Size: 212 bytes, Frame: 192)
.globl __gllc_FragmentLightivSGIX
.ent __gllc_FragmentLightivSGIX
__gllc_FragmentLightivSGIX:
    # Line 5705
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$a1,8($sp)
    sd	$s0,32($sp)
    lui	$v0,0x5
    # Line 5710
    lw	$s0,4112($zero)
    # Line 5705
    addiu	$v0,$v0,-21272
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 5712
    # lw $t9, -26864($gp) # &__glFragmentLightivSGIX_size
    # Line 5705
    sd	$ra,40($sp)
    sd	$a0,0($sp)
    # Line 5712
    move	$a0,$a1
    jal	__glFragmentLightivSGIX_size
    sd	$s1,56($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da463b4
    # Line 5714
    nop	# was lw $t9, -30840($gp) # &__gllc_InvalidEnum
    # Line 5718
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,8
    bnez	$v0,.L0da46368
    sd	$v0,24($sp)
    ld	$ra,40($sp)
.L0da46354:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 5727
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da46368:
    # Line 5724
    ld	$a1,16($sp)
    # Line 5722
    ld	$a5,0($sp)
    # Line 5723
    ld	$a6,8($sp)
    ld	$a4,24($sp)
    # Line 5724
    # lw $t9, -18508($gp) # &memcpy
    # Line 5723
    sw	$a6,20($a4)
    # Line 5724
    move	$a2,$s1
    # Line 5720
    li	$a3,263
    # Line 5722
    sw	$a5,16($a4)
    # Line 5724
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 5720
    sh	$a3,12($a4)
    # Line 5726
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,24($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_FragmentLightivSGIX
    b	.L0da46354
    ld	$ra,40($sp)
.L0da463b4:
    # Line 5714
    jalr	$t9
    move	$a0,$s0
    b	.L0da46354
    ld	$ra,40($sp)
.end __gllc_FragmentLightivSGIX

# Function: __gllc_FragmentLightModelfSGIX
# Declared: Line 5730 (Source lines: 5731-5743)
# Address: 0x0da463d0 - 0x0da46450 (Size: 128 bytes, Frame: 48)
.globl __gllc_FragmentLightModelfSGIX
.ent __gllc_FragmentLightModelfSGIX
__gllc_FragmentLightModelfSGIX:
    # Line 5734
    lw	$at,4112($zero)
    # Line 5731
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 5734
    sd	$at,16($sp)
    # Line 5731
    addiu	$v0,$v0,-21496
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 5736
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5731
    sdc1	$f13,0($sp)
    # Line 5736
    li	$a1,8
    # Line 5731
    sd	$a0,8($sp)
    sd	$ra,24($sp)
    # Line 5736
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4641c
    ld	$ra,24($sp)
.L0da46410:
    # Line 5743
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4641c:
    # Line 5742
    la	$a2,__glle_FragmentLightModelfSGIX
    ld	$a0,16($sp)
    # Line 5738
    li	$v1,264
    sh	$v1,12($v0)
    # Line 5740
    ld	$a3,8($sp)
    # Line 5742
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5741
    ldc1	$f0,0($sp)
    # Line 5740
    sw	$a3,16($v0)
    # Line 5742
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5741
    swc1	$f0,20($v0)
    b	.L0da46410
    ld	$ra,24($sp)
.end __gllc_FragmentLightModelfSGIX

# Function: __gllc_FragmentLightModelfvSGIX
# Declared: Line 5746 (Source lines: 5747-5768)
# Address: 0x0da46450 - 0x0da46514 (Size: 196 bytes, Frame: 192)
.globl __gllc_FragmentLightModelfvSGIX
.ent __gllc_FragmentLightModelfvSGIX
__gllc_FragmentLightModelfvSGIX:
    # Line 5747
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,-21624
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 5754
    # lw $t9, -26860($gp) # &__glFragmentLightModelfvSGIX_size
    # Line 5752
    lw	$s0,4112($zero)
    # Line 5747
    sd	$ra,32($sp)
    # Line 5754
    jal	__glFragmentLightModelfvSGIX_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da46500
    # Line 5760
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da464bc
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da464a8:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 5768
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da464bc:
    # Line 5765
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 5764
    ld	$a5,0($sp)
    # Line 5765
    move	$a2,$s1
    # Line 5762
    li	$a3,265
    # Line 5764
    sw	$a5,16($a4)
    # Line 5765
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 5762
    sh	$a3,12($a4)
    # Line 5767
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_FragmentLightModelfvSGIX
    b	.L0da464a8
    ld	$ra,32($sp)
.L0da46500:
    # Line 5756
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da464a8
    ld	$ra,32($sp)
.end __gllc_FragmentLightModelfvSGIX

# Function: __gllc_FragmentLightModeliSGIX
# Declared: Line 5771 (Source lines: 5772-5784)
# Address: 0x0da46520 - 0x0da465a0 (Size: 128 bytes, Frame: 48)
.globl __gllc_FragmentLightModeliSGIX
.ent __gllc_FragmentLightModeliSGIX
__gllc_FragmentLightModeliSGIX:
    # Line 5775
    lw	$at,4112($zero)
    # Line 5772
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 5775
    sd	$at,16($sp)
    # Line 5772
    addiu	$v0,$v0,-21832
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 5777
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5772
    sd	$a1,8($sp)
    # Line 5777
    li	$a1,8
    # Line 5772
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 5777
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da4656c
    ld	$ra,24($sp)
.L0da46560:
    # Line 5784
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da4656c:
    # Line 5783
    la	$a2,__glle_FragmentLightModeliSGIX
    ld	$a0,16($sp)
    # Line 5779
    li	$v1,266
    sh	$v1,12($v0)
    # Line 5781
    ld	$a3,0($sp)
    # Line 5783
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5782
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 5783
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5781
    sw	$a3,16($v0)
    b	.L0da46560
    ld	$ra,24($sp)
.end __gllc_FragmentLightModeliSGIX

# Function: __gllc_FragmentLightModelivSGIX
# Declared: Line 5787 (Source lines: 5788-5809)
# Address: 0x0da465a0 - 0x0da46664 (Size: 196 bytes, Frame: 192)
.globl __gllc_FragmentLightModelivSGIX
.ent __gllc_FragmentLightModelivSGIX
__gllc_FragmentLightModelivSGIX:
    # Line 5788
    addiu	$sp,$sp,-64
    sd	$a1,8($sp)
    sd	$a0,0($sp)
    lui	$at,0x5
    sd	$s0,24($sp)
    addiu	$at,$at,-21960
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 5795
    # lw $t9, -26856($gp) # &__glFragmentLightModelivSGIX_size
    # Line 5793
    lw	$s0,4112($zero)
    # Line 5788
    sd	$ra,32($sp)
    # Line 5795
    jal	__glFragmentLightModelivSGIX_size
    sd	$s1,48($sp)
    sll	$s1,$v0,0x2
    bltz	$s1,.L0da46650
    # Line 5801
    nop	# was lw $t9, -30904($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$s1,4
    bnez	$v0,.L0da4660c
    sd	$v0,16($sp)
    ld	$ra,32($sp)
.L0da465f8:
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    # Line 5809
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da4660c:
    # Line 5806
    ld	$a1,8($sp)
    ld	$a4,16($sp)
    # lw $t9, -18508($gp) # &memcpy
    # Line 5805
    ld	$a5,0($sp)
    # Line 5806
    move	$a2,$s1
    # Line 5803
    li	$a3,267
    # Line 5805
    sw	$a5,16($a4)
    # Line 5806
    addiu	$a0,$a4,20
    jal	memcpy
    # Line 5803
    sh	$a3,12($a4)
    # Line 5808
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_FragmentLightModelivSGIX
    b	.L0da465f8
    ld	$ra,32($sp)
.L0da46650:
    # Line 5797
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da465f8
    ld	$ra,32($sp)
.end __gllc_FragmentLightModelivSGIX

# Function: __gllc_FragmentMaterialfSGIX
# Declared: Line 5812 (Source lines: 5813-5826)
# Address: 0x0da46670 - 0x0da466fc (Size: 140 bytes, Frame: 48)
.globl __gllc_FragmentMaterialfSGIX
.ent __gllc_FragmentMaterialfSGIX
__gllc_FragmentMaterialfSGIX:
    # Line 5816
    lw	$at,4112($zero)
    # Line 5813
    addiu	$sp,$sp,-48
    # Line 5816
    sd	$at,24($sp)
    # Line 5813
    lui	$v0,0x5
    sdc1	$f14,0($sp)
    addiu	$v0,$v0,-22168
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 5818
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5813
    sd	$a1,16($sp)
    # Line 5818
    li	$a1,12
    # Line 5813
    sd	$a0,8($sp)
    sd	$ra,32($sp)
    # Line 5818
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da466c4
    # Line 5825
    la	$a2,__glle_FragmentMaterialfSGIX
    ld	$ra,32($sp)
.L0da466b8:
    # Line 5826
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da466c4:
    # Line 5825
    ld	$a0,24($sp)
    # Line 5820
    li	$v1,268
    sh	$v1,12($v0)
    # Line 5822
    ld	$a3,8($sp)
    # Line 5823
    ld	$a4,16($sp)
    sw	$a4,20($v0)
    # Line 5825
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5824
    ldc1	$f0,0($sp)
    # Line 5822
    sw	$a3,16($v0)
    # Line 5825
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5824
    swc1	$f0,24($v0)
    b	.L0da466b8
    ld	$ra,32($sp)
.end __gllc_FragmentMaterialfSGIX

# Function: __gllc_FragmentMaterialfvSGIX
# Declared: Line 5829 (Source lines: 5830-5858)
# Address: 0x0da46700 - 0x0da467f4 (Size: 244 bytes, Frame: 192)
.globl __gllc_FragmentMaterialfvSGIX
.ent __gllc_FragmentMaterialfvSGIX
__gllc_FragmentMaterialfvSGIX:
    # Line 5838
    lwc1	$f14,0($a2)
    # Line 5830
    addiu	$sp,$sp,-64
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    lui	$v0,0x5
    sd	$a0,16($sp)
    addiu	$v0,$v0,-22312
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 5838
    # lw $t9, -29200($gp) # &__glErrorCheckMaterial
    # Line 5830
    sd	$s0,40($sp)
    sd	$ra,48($sp)
    # Line 5838
    jal	__glErrorCheckMaterial
    # Line 5836
    lw	$s0,4112($zero)
    # Line 5838
    beqz	$v0,.L0da46760
    # Line 5840
    nop	# was lw $t9, -30824($gp) # &__gllc_Error
    move	$a0,$s0
    jal	__gllc_Error
    move	$a1,$v0
.L0da4674c:
    ld	$ra,48($sp)
.L0da46750:
    ld	$s0,40($sp)
    # Line 5858
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da46760:
    # Line 5843
    # lw $t9, -26876($gp) # &__glFragmentMaterialfvSGIX_size
    jal	__glFragmentMaterialfvSGIX_size
    ld	$a0,32($sp)
    sll	$v1,$v0,0x2
    bltz	$v1,.L0da467e0
    sd	$v1,0($sp)
    # Line 5849
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    ld	$a1,0($sp)
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,8
    beqz	$v0,.L0da4674c
    sd	$v0,8($sp)
    # Line 5855
    ld	$a2,0($sp)
    ld	$a1,24($sp)
    # Line 5853
    ld	$a5,16($sp)
    # Line 5854
    ld	$a6,32($sp)
    ld	$a4,8($sp)
    # Line 5855
    # lw $t9, -18508($gp) # &memcpy
    # Line 5854
    sw	$a6,20($a4)
    # Line 5851
    li	$a3,269
    # Line 5853
    sw	$a5,16($a4)
    # Line 5855
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 5851
    sh	$a3,12($a4)
    # Line 5857
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,8($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_FragmentMaterialfvSGIX
    b	.L0da46750
    ld	$ra,48($sp)
.L0da467e0:
    # Line 5845
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da46750
    ld	$ra,48($sp)
.end __gllc_FragmentMaterialfvSGIX

# Function: __gllc_FragmentMaterialiSGIX
# Declared: Line 5861 (Source lines: 5862-5875)
# Address: 0x0da46800 - 0x0da4688c (Size: 140 bytes, Frame: 48)
.globl __gllc_FragmentMaterialiSGIX
.ent __gllc_FragmentMaterialiSGIX
__gllc_FragmentMaterialiSGIX:
    # Line 5865
    lw	$at,4112($zero)
    # Line 5862
    addiu	$sp,$sp,-48
    # Line 5865
    sd	$at,24($sp)
    # Line 5862
    lui	$v0,0x5
    sd	$a2,16($sp)
    addiu	$v0,$v0,-22568
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 5867
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5862
    sd	$a1,8($sp)
    # Line 5867
    li	$a1,12
    # Line 5862
    sd	$a0,0($sp)
    sd	$ra,32($sp)
    # Line 5867
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da46854
    # Line 5874
    la	$a2,__glle_FragmentMaterialiSGIX
    ld	$ra,32($sp)
.L0da46848:
    # Line 5875
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da46854:
    # Line 5874
    ld	$a0,24($sp)
    # Line 5869
    li	$v1,270
    sh	$v1,12($v0)
    # Line 5871
    ld	$a3,0($sp)
    # Line 5872
    ld	$a4,8($sp)
    # Line 5873
    ld	$a5,16($sp)
    # Line 5874
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5873
    sw	$a5,24($v0)
    # Line 5872
    sw	$a4,20($v0)
    # Line 5874
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5871
    sw	$a3,16($v0)
    b	.L0da46848
    ld	$ra,32($sp)
.end __gllc_FragmentMaterialiSGIX

# Function: __gllc_FragmentMaterialivSGIX
# Declared: Line 5878 (Source lines: 5879-5907)
# Address: 0x0da46890 - 0x0da4698c (Size: 252 bytes, Frame: 192)
.globl __gllc_FragmentMaterialivSGIX
.ent __gllc_FragmentMaterialivSGIX
__gllc_FragmentMaterialivSGIX:
    # Line 5879
    addiu	$sp,$sp,-64
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    sd	$a0,16($sp)
    lui	$v0,0x5
    # Line 5887
    lw	$at,0($a2)
    # Line 5879
    addiu	$v0,$v0,-22712
    sd	$gp,56($sp)
    addu	$gp,$t9,$v0
    # Line 5887
    mtc1	$at,$f14
    # lw $t9, -29200($gp) # &__glErrorCheckMaterial
    # Line 5879
    sd	$s0,40($sp)
    # Line 5885
    lw	$s0,4112($zero)
    # Line 5879
    sd	$ra,48($sp)
    # Line 5887
    jal	__glErrorCheckMaterial
    cvt.s.w	$f14,$f14
    beqz	$v0,.L0da468f8
    # Line 5889
    nop	# was lw $t9, -30824($gp) # &__gllc_Error
    move	$a0,$s0
    jal	__gllc_Error
    move	$a1,$v0
.L0da468e4:
    ld	$ra,48($sp)
.L0da468e8:
    ld	$s0,40($sp)
    # Line 5907
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da468f8:
    # Line 5892
    # lw $t9, -26872($gp) # &__glFragmentMaterialivSGIX_size
    jal	__glFragmentMaterialivSGIX_size
    ld	$a0,32($sp)
    sll	$v1,$v0,0x2
    bltz	$v1,.L0da46978
    sd	$v1,0($sp)
    # Line 5898
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    ld	$a1,0($sp)
    move	$a0,$s0
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,8
    beqz	$v0,.L0da468e4
    sd	$v0,8($sp)
    # Line 5904
    ld	$a2,0($sp)
    ld	$a1,24($sp)
    # Line 5902
    ld	$a5,16($sp)
    # Line 5903
    ld	$a6,32($sp)
    ld	$a4,8($sp)
    # Line 5904
    # lw $t9, -18508($gp) # &memcpy
    # Line 5903
    sw	$a6,20($a4)
    # Line 5900
    li	$a3,271
    # Line 5902
    sw	$a5,16($a4)
    # Line 5904
    addiu	$a0,$a4,24
    jal	memcpy
    # Line 5900
    sh	$a3,12($a4)
    # Line 5906
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    ld	$a1,8($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_FragmentMaterialivSGIX
    b	.L0da468e8
    ld	$ra,48($sp)
.L0da46978:
    # Line 5894
    # lw $t9, -30840($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0da468e8
    ld	$ra,48($sp)
.end __gllc_FragmentMaterialivSGIX

# Function: __gllc_LightEnviSGIX
# Declared: Line 5914 (Source lines: 5915-5927)
# Address: 0x0da46990 - 0x0da46a10 (Size: 128 bytes, Frame: 48)
.globl __gllc_LightEnviSGIX
.ent __gllc_LightEnviSGIX
__gllc_LightEnviSGIX:
    # Line 5918
    lw	$at,4112($zero)
    # Line 5915
    addiu	$sp,$sp,-48
    lui	$v0,0x5
    # Line 5918
    sd	$at,16($sp)
    # Line 5915
    addiu	$v0,$v0,-22968
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 5920
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5915
    sd	$a1,8($sp)
    # Line 5920
    li	$a1,8
    # Line 5915
    sd	$a0,0($sp)
    sd	$ra,24($sp)
    # Line 5920
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da469dc
    ld	$ra,24($sp)
.L0da469d0:
    # Line 5927
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da469dc:
    # Line 5926
    la	$a2,__glle_LightEnviSGIX
    ld	$a0,16($sp)
    # Line 5922
    li	$v1,272
    sh	$v1,12($v0)
    # Line 5924
    ld	$a3,0($sp)
    # Line 5926
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5925
    ld	$a4,8($sp)
    sw	$a4,20($v0)
    # Line 5926
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5924
    sw	$a3,16($v0)
    b	.L0da469d0
    ld	$ra,24($sp)
.end __gllc_LightEnviSGIX

# Function: __gllc_TextureColorMaskSGIS
# Declared: Line 5930 (Source lines: 5931-5945)
# Address: 0x0da46a10 - 0x0da46aa8 (Size: 152 bytes, Frame: 192)
.globl __gllc_TextureColorMaskSGIS
.ent __gllc_TextureColorMaskSGIS
__gllc_TextureColorMaskSGIS:
    # Line 5931
    addiu	$sp,$sp,-64
    sd	$a3,32($sp)
    # Line 5934
    lw	$at,4112($zero)
    sd	$at,16($sp)
    # Line 5931
    lui	$v0,0x5
    sd	$a2,24($sp)
    addiu	$v0,$v0,-23096
    sd	$gp,48($sp)
    addu	$gp,$t9,$v0
    # Line 5936
    # lw $t9, -30904($gp) # &__glDlistAllocOp2
    # Line 5931
    sd	$a1,8($sp)
    # Line 5936
    li	$a1,4
    # Line 5931
    sd	$a0,0($sp)
    sd	$ra,40($sp)
    # Line 5936
    jal	__glDlistAllocOp2
    move	$a0,$at
    bnez	$v0,.L0da46a68
    # Line 5944
    la	$a2,__glle_TextureColorMaskSGIS
    ld	$ra,40($sp)
.L0da46a5c:
    # Line 5945
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da46a68:
    # Line 5944
    ld	$a0,16($sp)
    # Line 5938
    li	$v1,273
    sh	$v1,12($v0)
    # Line 5940
    ld	$a3,0($sp)
    # Line 5941
    ld	$a4,8($sp)
    # Line 5942
    ld	$a5,24($sp)
    # Line 5943
    ld	$a6,32($sp)
    sb	$a6,19($v0)
    # Line 5944
    # lw $t9, -30896($gp) # &__glDlistAppendOp
    # Line 5942
    sb	$a5,18($v0)
    # Line 5941
    sb	$a4,17($v0)
    # Line 5944
    move	$a1,$v0
    jal	__glDlistAppendOp
    # Line 5940
    sb	$a3,16($v0)
    b	.L0da46a5c
    ld	$ra,40($sp)
.end __gllc_TextureColorMaskSGIS

